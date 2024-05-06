<?php
//Import PHPMailer classes into the global namespace
//These must be at the top of your script, not inside a function
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

//Load Composer's autoloader
require 'PHPMailer/Exception.php';
require 'PHPMailer/PHPMailer.php';
require 'PHPMailer/SMTP.php';

//Create an instance; passing `true` enables exceptions
$mail = new PHPMailer(true);

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['correo'])) {
    try {
        // Conectar a la base de datos
        $conexion = new mysqli("localhost", "root", "", "datos");

        if ($conexion->connect_error) {
            die("Error de conexión: " . $conexion->connect_error);
        }

        // Obtener el correo electrónico enviado por el usuario
        $correo = $_POST['correo'];

        // Verificar si el correo electrónico existe en la base de datos
        $sql = "SELECT contraseña FROM usuarios WHERE correo = ?";
        $stmt = $conexion->prepare($sql);
        $stmt->bind_param("s", $correo);
        $stmt->execute();
        $stmt->bind_result($contraseña_bd);
        $stmt->fetch();

        if ($contraseña_bd) {
            //Server settings
            $mail->isSMTP();                                            //Send using SMTP
            $mail->Host       = 'smtp.gmail.com';                       //Set the SMTP server to send through Gmail
            $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
            $mail->Username   = 'bibliotecateca.stgo@gmail.com';         //Your Gmail address
            $mail->Password   = 'jezt fohm lhng prik';                    //Your Gmail password
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;            //Enable implicit TLS encryption
            $mail->Port       = 465;                                    //TCP port to connect to with SSL; use 587 for TLS
            
            //Recipients
            $correoDestino = $_POST['correo']; // Obtener el correo ingresado por el usuario desde el formulario
            $mail->setFrom('from@example.com', 'BibliotecaTeca');
            $mail->addAddress($correoDestino); // Agregar el correo ingresado por el usuario como destinatario
            
            //Content
            $mail->isHTML(true);                                  //Set email format to HTML
            $mail->Subject = 'Clave Temporal BibliotecaTeca';
            $mail->Body    = 'Ingrese a este link para poder cambiarla: http://localhost/aplicacion/restablecer_contrase%C3%B1a.php <br>
            Si usted no ha solicitado ningun cambio de contraseña, ignore este mensaje.';

            $mail->send();
            $mensaje_enviado = 'Se ha enviado un correo electrónico con su contraseña temporal.';
        } else {
            $mensaje_error = "No se encontró ninguna cuenta asociada a ese correo electrónico.";
        }

        // Cerrar la conexión con la base de datos
        $conexion->close();

    } catch (Exception $e) {
        $mensaje_error = "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
    }
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>BiblioTecaTeca | Inicio sesión</title>
  
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&amp;display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/adminlte.min.css">
</head>
<body class="login-page" style="min-height: 496.781px;">
    <div class="login-box">
        <div class="login-logo">
            <a>Biblio<b>TecaTeca</b></a>
        </div>
        <!-- /.login-logo -->
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
        <div class="card">
            <div class="card-body login-card-body">
                <p class="login-box-msg">Recuperar contraseña</p>
                <form action="login.php" method="post">
                    <div class="input-group mb-3">
                    <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-envelope"></span>
                            </div>
                        </div>
                        <input type="email" class="form-control" placeholder="Correo" name="correo" required>
                    </div>

                    <div class="row">
                        <div class="col-8">
                            <div class="icheck-primary">
                            </div>
                        </div>
                        <div class="col-4">
                            <button type="submit" class="btn btn-primary btn-block">Enviar</button>
                        </div>
                    </div>
                </form>

                <?php if (isset($mensaje_enviado)): ?>
                    <div class="alert alert-success mt-3" role="alert"><?php echo $mensaje_enviado; ?></div>
                <?php endif; ?>
                <?php if (isset($mensaje_error)): ?>
                    <div class="alert alert-danger mt-3" role="alert"><?php echo $mensaje_error; ?></div>
                <?php endif; ?>

                <div class="mb-1">
                  <div class="col-12 text-left mt-3">
                      <a href="login.php" style="font-size: 18px;">Regresar a Iniciar Sesion</a>
                  </div>
              </div>
            </div>
        </div>
        </form>
    </div>

    <!-- jQuery -->
    <script src="plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/adminlte.min.js"></script>
</body>
</html>
