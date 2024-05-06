<?php
session_start();

// Verificar si el usuario está logueado
if (!isset($_SESSION['usuario'])) {
    header("Location: login.php");
    exit();
}

// Datos de conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$database = "datos";

// Recuperar el id_usuario del usuario en sesión
if (isset($_SESSION['usuario'])) {
    $usuario = $_SESSION['usuario'];

    // Conexión a la base de datos
    $conn = new mysqli($servername, $username, $password, $database);

    // Verificar conexión
    if ($conn->connect_error) {
        die("Error de conexión: " . $conn->connect_error);
    }

    // Consulta para obtener el id_usuario del usuario en sesión
    $buscar_usuario_sql = "SELECT id_usuario FROM usuarios WHERE usuario = '$usuario'";
    $result = $conn->query($buscar_usuario_sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $id_usuario = $row['id_usuario'];
    } else {
        // Si no se encuentra el usuario en la base de datos, manejar el error
        die("Error: No se encontró el usuario en la base de datos.");
    }

    // Cerrar conexión
    $conn->close();
} else {
    // Si no hay usuario en sesión, redirigir al login
    header("Location: login.php");
    exit();
}

// Procesar la solicitud de agregar a lista de deseos
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Recuperar los datos del formulario
    $id_libro = $_POST['id_libro'];

    // Conexión a la base de datos
    $conn = new mysqli($servername, $username, $password, $database);

    // Verificar conexión
    if ($conn->connect_error) {
        die("Error de conexión: " . $conn->connect_error);
    }

    // Verificar si el libro ya está en la lista de deseos del usuario
    $verificar_libro_sql = "SELECT id_libro FROM lista_deseos WHERE id_libro = '$id_libro' AND id_usuario = '$id_usuario'";
    $result = $conn->query($verificar_libro_sql);

    if ($result->num_rows > 0) {
        // El libro ya está en la lista de deseos del usuario, mostrar un mensaje
        $_SESSION['mensaje'] = "Este libro ya está en tu lista de deseos.";
        header("Location: detalles_libro.php?id=$id_libro");
        exit();
    } else {
        // El libro no está en la lista de deseos del usuario, insertarlo
        $insertar_lista_sql = "INSERT INTO lista_deseos (id_libro, id_usuario) VALUES ('$id_libro', '$id_usuario')";

        if ($conn->query($insertar_lista_sql) === TRUE) {
            // Redirigir a la página de detalles del libro con un mensaje de éxito
            $_SESSION['mensaje'] = "Libro agregado a la lista de deseos correctamente.";
            header("Location: detalles_libro.php?id=$id_libro");
            exit();
        } else {
            // Si hay un error en la inserción, mostrar un mensaje de error
            echo "Error: " . $insertar_lista_sql . "<br>" . $conn->error;
        }
    }

    // Cerrar conexión
    $conn->close();
} else {
    // Si no es una solicitud POST, redirigir a alguna página o mostrar un mensaje de error
    header("Location: login.php");
    exit();
}
?>
