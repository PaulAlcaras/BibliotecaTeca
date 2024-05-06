-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-05-2024 a las 03:37:59
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
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id_libro` varchar(100) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `autor` varchar(100) DEFAULT NULL,
  `genero` varchar(100) DEFAULT NULL,
  `año_publicacion` int(11) DEFAULT NULL,
  `disponibilidad` varchar(10) DEFAULT NULL,
  `ejemplares` varchar(100) DEFAULT NULL,
  `isbn` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id_libro`, `titulo`, `autor`, `genero`, `año_publicacion`, `disponibilidad`, `ejemplares`, `isbn`) VALUES
('6yvEDwAAQBAJ', 'Winter', 'Marissa Meyer', 'Juvenile Fiction', 2015, 'Disponible', '1', 2147483647),
('bFiREAAAQBAJ', 'Antes de diciembre / Before December', 'Joana Marcús', 'Young Adult Fiction', 2022, 'Disponible', '1', 2147483647),
('dkOHEAAAQBAJ', 'Después de diciembre (edición revisada por la autora) (Meses a tu lado 2)', 'Joana Marcús', 'Young Adult Fiction / Romance / Contemporary, Young Adult Fiction / School & Education / College & U', 2022, 'Disponible', '1', 2147483647),
('dONFEAAAQBAJ', 'Antes de diciembre (edición revisada por la autora) (Meses a tu lado 1)', 'Joana Marcús', 'Young Adult Fiction', 2021, 'Disponible', '1', 2147483647),
('ewBGEAAAQBAJ', 'Float', 'Kate Marchant', 'Young Adult Fiction', 2022, 'Disponible', '1', 2147483647),
('FkbMEAAAQBAJ', 'Harry Potter y la piedra filosofal', 'J.K. Rowling', 'Juvenile Fiction', 2023, 'Disponible', '1', 2147483647),
('g8zlzgEACAAJ', 'Karma al instante', 'Marissa Meyer', 'High school students', 2021, 'Disponible', '1', 2147483647),
('Gc2uEAAAQBAJ', 'Romeo and Julie', 'Gary Owen', 'Drama', 2023, 'Disponible', '1', 2147483647),
('GFRAbwAACAAJ', 'Crepúsculo', 'Stephenie Meyer', 'Juvenile Fiction / Love & Romance', 2006, 'Disponible', '1', 2147483647),
('hDFuDwAAQBAJ', 'Kpop Secret', 'UK Jung', 'Art / Popular Culture, Juvenile Nonfiction / Music / Popular, Performing Arts / Dance / Popular, Art', 2018, '1', '1', 2147483647),
('iiH5pwAACAAJ', 'Crepúsculo (Serie Roja)', 'Stephenie Meyer', 'Juvenile Fiction / Love & Romance', 2011, 'Disponible', '1', 2147483647),
('j4vZEAAAQBAJ', 'Las luces de febrero (Meses a tu lado 4)', 'Joana Marcús', 'Young Adult Fiction', 2023, 'Disponible', '1', 2147483647),
('JUDxEAAAQBAJ', 'Orgullo y prejuicio', 'Jane Austen', 'Art', 2024, 'Disponible', '1', 2147483647),
('l849AwAAQBAJ', 'Danza de dragones (Canción de hielo y fuego 5)', 'George R.R. Martin', 'Fiction', 2014, 'Disponible', '1', 2147483647),
('lRxxDgAAQBAJ', 'Orgullo y Prejuicio – Pride and Prejudice', 'Jane Austen', 'Juvenile Fiction', 2017, 'Disponible', '1', 2147483647),
('LsZeDwAAQBAJ', 'Heartless', 'Marissa Meyer', 'Fiction', 2016, 'Disponible', '1', 2147483647),
('lTRVEAAAQBAJ', 'Luna nueva (Saga Crepúsculo 2)', 'Stephenie Meyer', 'Young Adult Fiction / Romance / Paranormal, Young Adult Fiction / Vampires', 2021, '1', '1', 2147483647),
('mFk2zwEACAAJ', 'R y Julie', 'Isaac Marion', 'No especificado', 2015, 'Disponible', '1', 2147483647),
('NDxlDwAAQBAJ', 'Fuego y Sangre (Canción de hielo y fuego 0)', 'George R.R. Martin', 'Fiction', 2018, 'Disponible', '1', 2147483647),
('nmJrEAAAQBAJ', 'Orgullo y prejuicio (Clásicos de Jane Austen)', 'Jane Austen', 'Fiction', 2019, 'Disponible', '1', 2147483647),
('NMYm0AEACAAJ', 'Trilogía Fuego 3. Ciudades de fuego', 'Desconocido', 'No especificado', 0, 'Disponible', '1', 2147483647),
('nuFUzwEACAAJ', 'Trilogía Fuego 1. Ciudades de humo', 'Desconocido', 'No especificado', 0, 'Disponible', '1', 2147483647),
('p7WHEAAAQBAJ', 'Serendipity', 'Marissa Meyer', 'Juvenile Fiction', 2022, 'Disponible', '1', 2147483647),
('PDi9EAAAQBAJ', 'Festín de cuervos (Canción de hielo y fuego 4)', 'George R.R. Martin', 'Fiction', 2023, 'Disponible', '1', 2147483647),
('PKqQEAAAQBAJ', 'Después de diciembre / After December', 'Joana Marcús', 'Young Adult Fiction', 2023, 'Disponible', '1', 2147483647),
('PKTljwEACAAJ', 'Scarlet', 'Marissa Meyer', 'Young Adult Fiction', 2016, 'Disponible', '1', 2147483647),
('PvndDgAAQBAJ', 'Orgullo y prejuicio', 'Jane Austen', 'Juvenile Fiction', 2017, 'Disponible', '1', 2147483647),
('Q7Im0AEACAAJ', 'Trilogía Fuego 1. Ciudades de humo', 'Desconocido', 'No especificado', 0, 'Disponible', '1', 2147483647),
('Qae8BAAAQBAJ', 'Fangirl', 'Rainbow Rowell', 'Young Adult Fiction / Romance / General', 2014, '1', '1', 2147483647),
('sQ4DzgEACAAJ', 'A Través de Tu Ventana', 'Meldry Báez', 'No especificado', 2020, 'Disponible', '1', 2147483647),
('TplfY0BnQU4C', 'Cinder (Las crónicas lunares 1)', 'Marissa Meyer', 'Young Adult Fiction', 2012, 'Disponible', '1', 2147483647),
('uUOBPgXQtvUC', 'Harry Potter y la Orden del Fénix', 'J.K. Rowling', 'Juvenile Fiction', 2015, 'Disponible', '1', 2147483647),
('vjovPQAACAAJ', 'Julie and Ro', 'Ruroanik Publishers', 'No especificado', 1996, 'Disponible', '1', 1889361054),
('XFXtmgEACAAJ', 'Juego de tronos 2', 'George R. R. Martin', 'No especificado', 2012, 'Disponible', '1', 2147483647),
('XLVvAAAACAAJ', 'Harry Potter Y la Piedra Filosofal', 'J. K. Rowling', 'England', 2006, 'Disponible', '1', 2147483647),
('yHWREAAAQBAJ', 'Harry Potter y la piedra filosofal. Edición ilustrada / Harry Potter and the Sorcerer\'s Stone: The I', 'J.K. Rowling', 'Juvenile Fiction', 2015, 'Disponible', '1', 2147483647),
('yizEDwAAQBAJ', 'Archienemigos', 'Marissa Meyer', 'Juvenile Fiction', 2015, 'Disponible', '1', 2147483647),
('YTM6CQAAQBAJ', 'Heartless', 'Marissa Meyer', 'Young Adult Fiction', 2016, 'Disponible', '1', 2147483647),
('yyvEDwAAQBAJ', 'Fairest', 'Marissa Meyer', 'Juvenile Fiction', 2015, 'Disponible', '1', 2147483647),
('zl13g5uRM4EC', 'Harry Potter y la cámara secreta', 'J.K. Rowling', 'Juvenile Fiction', 2015, 'Disponible', '1', 2147483647),
('_uj1EAAAQBAJ', 'Fangirl', 'Rainbow Rowell', 'Fiction / Romance / Contemporary', 2018, 'Disponible', '1', 2147483647);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id_libro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
