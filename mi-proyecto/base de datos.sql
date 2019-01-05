-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 11-11-2017 a las 16:16:16
-- Versión del servidor: 5.7.19
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ejemplo`
--
CREATE DATABASE IF NOT EXISTS `ejemplo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ejemplo`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigof`
--

DROP TABLE IF EXISTS `codigof`;
CREATE TABLE IF NOT EXISTS `codigof` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `nom_u` varchar(30) NOT NULL,
  `pw` varchar(20) NOT NULL,
  `telefono` varchar(11) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `codigof`
--

INSERT INTO `codigof` (`id`, `nombre`, `apellido`, `nom_u`, `pw`, `telefono`, `correo`, `direccion`) VALUES
(6, 'oscar', 'marrero', 'oscarfmbte', '25217228', '0', 'oscar.1.9datos@hotmail.com', 'santa teresa del tuy'),
(7, 'oscar', 'marrero', 'oscarfmbte', '25217228', '04241529559', 'oscar.1.9datos@hotmail.com', 'santa teresa del tuy');
--
-- Base de datos: `tucarroenlinea`
--
CREATE DATABASE IF NOT EXISTS `tucarroenlinea` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `tucarroenlinea`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `cedula` varchar(8) COLLATE utf8_spanish_ci NOT NULL,
  `username` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `pw` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellido`, `cedula`, `username`, `pw`, `correo`, `telefono`, `direccion`) VALUES
(15, 'maria', 'bracamonte', '14326008', 'mariaybr', '9002041', 'mariaybr11@hotmail.com', '04169002041', 'Cartanal'),
(16, 'oscar', 'marrero', '2955193', 'oscarfmbte!', 'gfsdfsdfsdf', 'oscar.1.9datos@hotmail.com', '04169002041', 'santa teresa del tuy'),
(14, 'oscar', 'marrero', '2955193', 'oscarfmbte', 'oscar2090', 'oscar.1.9datos@hotmail.com', '04241529559', 'santa teresa del tuy'),
(17, 'oscar', 'marrero', '2955193', 'oscarfmbte!!', 'adaddadad', 'oscar.1.9datos@hotmail.com', '04169002041', 'santa teresa del tuy'),
(18, 'oscar', 'marrero', '2955193', 'oscarfmbtessssdf2', 'fsfsdfsfds', 'oscar.1.9datos@hotmail.com', '04241529559', 'santa teresa del tuy'),
(19, 'oscar', 'marrero', '2955193', 'ferminbte', 'sdfsfsfs', 'oscar.1.9datos56@hotmail.com', '121231313', 'santa teresa del tuy');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
