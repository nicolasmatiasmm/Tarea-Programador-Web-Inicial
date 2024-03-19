-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 19-03-2024 a las 14:29:48
-- Versión del servidor: 8.2.0
-- Versión de PHP: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vinoteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitulo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuerpo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(1, 'Nuevo Tour 2 de marzo 2024', 'Estamos brindado la posiblidad de anotarte en la nueva cata de vino este fin de semana.', 'Anotate hoy no pierdas la oportunidad', NULL),
(2, 'prueba 2x1', 'Vinos seleccionados\r\nPromocion en Malbec, Cabernet, Syrah\r\nagrego prueba 2x1', 'Compra minima $20.000\r\nsubo precio a mas 10 mil prueba', NULL),
(3, 'Pase gratis', 'Para obtener un paso de tour gratuito dejanos tus datos.\r\n', 'Promocion todo el año 2024.', NULL),
(5, 'NUEVA cosecha 2024', 'Proba nuestra cosecha especial 2024 con descuento exclusivo las primeras 10 compras.', 'promoción hasta 29/03/2024 o hasta agotar stock.', NULL),
(11, 'prueba2 imagen', 'prueba2 imagen', '            prueba2 imagen', 'o2cm6ixzcrsldccbexoj');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_vinos`
--

DROP TABLE IF EXISTS `productos_vinos`;
CREATE TABLE IF NOT EXISTS `productos_vinos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` int NOT NULL,
  `urlimagen` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos_vinos`
--

INSERT INTO `productos_vinos` (`id`, `nombre`, `precio`, `urlimagen`, `deleted`) VALUES
(1, 'RedWine Malbec', 4800, '', 0),
(2, 'RedWine Cabernet', 5900, '', 0),
(3, 'RedWine Syrah', 7800, '', 0),
(4, 'RedWine Blend', 6100, '', 0),
(5, 'RedWine Cabernet Sauvignon', 7900, '', 0),
(6, 'RedWine Gran Reserva', 11000, '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuarios` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuarios`, `password`) VALUES
(1, 'nicolas', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
