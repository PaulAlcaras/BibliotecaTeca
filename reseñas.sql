-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-05-2024 a las 03:28:50
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
-- Estructura de tabla para la tabla `reseñas`
--

CREATE TABLE `reseñas` (
  `id_reseña` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `calificacion` varchar(10) DEFAULT NULL,
  `comentario` varchar(200) DEFAULT NULL,
  `id_libro` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reseñas`
--

INSERT INTO `reseñas` (`id_reseña`, `id_usuario`, `calificacion`, `comentario`, `id_libro`) VALUES
(4, 20, '4', 'Me encantó este libro, lo recomiendo ampliamente', 'TplfY0BnQU4C'),
(5, 30, '5', 'Una historia fascinante, no pude dejar de leerlo', 'TplfY0BnQU4C'),
(6, 31, '3', 'Interesante pero algo predecible', 'TplfY0BnQU4C'),
(10, 20, '5', 'ame, recomendado', 'PKqQEAAAQBAJ'),
(11, 20, '5', 'me rei y llore, lo mejor', 'LSzEDwAAQBAJ'),
(14, 20, '5', 'me sorprendio, recomendado', 'mFk2zwEACAAJ'),
(16, 20, '5', 'muy bueno el libro, me lo lei ya 2 veces', 'bFiREAAAQBAJ'),
(17, 20, '4', 'muy buen libro', 'XLVvAAAACAAJ'),
(30, 20, '5', 'HERMSOOOOO', 'PKqQEAAAQBAJ'),
(33, 20, '1', '1', 'iiH5pwAACAAJ'),
(34, 20, '3', 'aburrido', 'jgr2DwAAQBAJ'),
(35, 20, '1', 'muy malo', 'hDFuDwAAQBAJ'),
(36, 20, '1', 'muy malo', 'hDFuDwAAQBAJ'),
(37, 20, '5', 'muy buena', '6yvEDwAAQBAJ'),
(38, 20, '2', 'HORIIBLEEE', '6yvEDwAAQBAJ'),
(39, 20, '5', 'muy bueno', '_uj1EAAAQBAJ'),
(40, 20, '1', '1', 'GFRAbwAACAAJ'),
(41, 20, '4', 'mee', 'GFRAbwAACAAJ'),
(42, 20, '5', 'el mejor libro del mundo', 'LSzEDwAAQBAJ'),
(43, 20, '5', '333', 'LSzEDwAAQBAJ');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reseñas`
--
ALTER TABLE `reseñas`
  ADD PRIMARY KEY (`id_reseña`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `fk_reseñas_id_libro` (`id_libro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reseñas`
--
ALTER TABLE `reseñas`
  MODIFY `id_reseña` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reseñas`
--
ALTER TABLE `reseñas`
  ADD CONSTRAINT `fk_reseñas_id_libro` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`id_libro`),
  ADD CONSTRAINT `reseñas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
