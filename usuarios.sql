-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-05-2024 a las 03:28:36
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `datos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `nacimiento` date NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` int(50) NOT NULL,
  `contraseña` varchar(50) NOT NULL,
  `fecha_registro` date NOT NULL DEFAULT curdate(),
  `correo` varchar(300) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `usuario`, `genero`, `nacimiento`, `direccion`, `telefono`, `contraseña`, `fecha_registro`, `correo`, `imagen`) VALUES
(7, 'pau', 'pau', 'mujer', '2002-12-03', 'chile', 123, '123', '2024-04-17', NULL, 'default.png'),
(10, 'paula', 'paula123', 'mujer', '2002-12-03', 'chile', 12345, '781f9d07d8371ed6', '2024-04-17', 'p.alcarasvillavicenc@gmail.com', '★.jpg'),
(11, 'Paula', 'pau123', 'mujer', '0000-00-00', 'san pablo 2076', 45388424, 'pau123', '2024-04-17', NULL, 'default.png'),
(17, 'Paula', 'paula1236', 'mujer', '2002-12-03', 'sanpablo', 45388424, '147', '2024-04-17', NULL, 'default.png'),
(18, 'Paula', 'qqq', 'hombre', '2002-12-03', 'chile', 123, '159', '2024-04-17', NULL, 'default.png'),
(19, 'Paula', 'paula2002', 'mujer', '2002-12-03', 'san pablo 2076', 945388424, '159', '2024-04-17', NULL, 'default.png'),
(20, 'paula', 'honeisunnie', 'mujer', '2002-12-03', 'san pablo 2076', 945388424, '3312', '2024-04-17', 'paula.alcaras@gmail.com', 'gato2.jpg'),
(22, 'Ramon Alcaras', 'ralcaras', 'hombre', '1976-03-27', 'Baquedano', 123455, 'paufer', '2024-04-27', 'ralcaras@hotmail.com', 'default.png'),
(24, 'alicia', 'alicia123', 'mujer', '1986-03-15', 'Valparaiso', 123456, 'monito', '2024-04-27', 'avillavicenc@gmail.com', 'default.png'),
(29, 'Paula', '123', 'hombre', '2000-02-03', 'San Pablo', 945388424, 'monito', '2024-04-29', 'fernanda.alcaras@gmail.com', 'default.png'),
(30, 'eric', 'ericSohn', 'hombre', '2000-12-22', 'corea', 12345, 'eric', '2024-04-29', 'eric.sohn@gmail.com', 'default.png'),
(31, 'sunwoo', 'sunwoo', 'hombre', '2000-04-12', 'corea', 123789, 'sunwoo', '2024-04-29', 'sunwoo.kim@gmail.com', 'default.png'),
(32, 'jennie', 'jennierubyjane', 'mujer', '1996-01-19', 'nueva zelanda', 111111111, 'jenniekim', '2024-05-03', 'jennierubyjane@gmail.com', 'default.png'),
(33, 'haechan', 'haechanchan', 'otro', '2000-02-03', 'corea', 159789, 'nct127', '2024-05-05', 'haechan@gmail.com', 'default.png'),
(34, 'jeno', 'jeno', 'hombre', '2000-02-15', 'corea', 127, 'jeno', '2024-05-05', 'jeno@gmail.com', 'default.png'),
(35, 'lisa', 'lalisa', 'otro', '1996-01-05', 'tailandia', 68434543, 'lisa', '2024-05-05', 'lisa.lalisa@gmail.com', 'default.png'),
(36, 'rose', 'rose', 'mujer', '1996-05-02', 'corea', 4345646, 'rosepark', '2024-05-05', 'rose.park@gmail.com', 'default.png'),
(37, 'jisoo', 'soyaa', 'mujer', '1996-05-03', 'corea', 543836, 'jisoo', '2024-05-05', 'jisoo@gmail.com', 'default.png'),
(38, 'juyeon', 'jujuyeon', 'hombre', '1998-01-15', 'corea', 43446985, 'juyeon', '2024-05-05', 'juyeon@gmail.com', 'default.png'),
(39, 'jae', 'jae', 'hombre', '2000-01-05', 'corea', 58469, 'jae', '2024-05-05', 'jae@gmail.com', NULL),
(40, 'jake', 'jake', 'hombre', '2002-02-01', 'australia', 4673614, 'layla', '2024-05-05', 'jake@gmail.com', NULL),
(41, 'jay', 'jay', 'hombre', '2002-04-15', 'seattle', 44668345, 'jay', '2024-05-05', 'jay@gmail.com', NULL),
(42, 'heesung', 'hee', 'hombre', '2001-02-05', 'coreaa', 556454, 'heesung', '2024-05-05', 'hee@gmail.com', NULL),
(43, 'dwdw', 'sunno', 'hombre', '2003-02-15', 'corea', 5643135, 'sunno', '2024-05-05', 'sunno@gmail.com', NULL),
(44, 'niki', 'niki', 'hombre', '2007-02-05', 'corea', 568458, 'niki', '2024-05-05', 'niki@gmail.com', NULL),
(45, 'julie', 'julie', 'mujer', '2003-03-05', 'corea', 4863543, 'julie', '2024-05-05', 'julie@gmail.com', NULL),
(46, 'sunghoon', 'iceprince', 'hombre', '2002-12-08', 'corea', 154646846, 'sunghoon', '2024-05-05', 'sunghoon@gmail.com', NULL),
(48, 'mark', 'mark', 'hombre', '2000-05-06', 'eeuu', 2147483647, 'mark', '2024-05-05', 'mark@gmail.com', NULL),
(49, 'jhonny', 'jhonny', 'hombre', '1996-03-05', 'chicago', 846464684, 'jhonny', '2024-05-05', 'jhonny@gmail.com', NULL),
(50, '1234', '1234', 'otro', '2000-03-03', 'San Pablo', 945388424, '1234', '2024-05-05', '123@gmail.com', NULL),
(51, '12345', '12345', 'hombre', '2000-03-03', 'San Pablo', 945388424, '123', '2024-05-05', '12345@gmail.com', NULL),
(52, '123456', '123456', 'hombre', '2000-03-03', 'San Pablo', 945388424, '123', '2024-05-05', '123456@gmail.com', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `uk_usuario` (`usuario`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
