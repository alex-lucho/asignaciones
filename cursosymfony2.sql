-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-10-2017 a las 15:39:09
-- Versión del servidor: 5.5.54-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `c9`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` enum('ROLE_ADMIN','ROLE_USER') COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `role`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'alexyz', 'alexyz', 'z', 'h3ealh@gmail.com', 'alex', 'ROLE_ADMIN', 1, '2016-11-25 18:13:45', '2016-11-25 18:13:45'),
(2, 'sarah', 'Sarah', 'Mendez', 'sara@yahoo.com', 'sara', 'ROLE_USER', 1, '2016-11-25 18:15:06', '2016-11-25 18:15:06'),
(4, 'john', 'john', 'connor', 'john@yahoo.com', 'john', 'ROLE_USER', 1, '2016-11-25 18:16:11', '2016-11-25 18:16:11'),
(5, 'stan', 'stan', 'stone', 'stan@gmail.com', 'stan', 'ROLE_USER', 1, '2016-11-25 18:16:49', '2016-11-25 18:16:49'),
(6, 'kyle', 'kyle', 'marsh', 'kyle@gmail.com', 'kyle', 'ROLE_USER', 1, '2016-11-25 18:17:18', '2016-11-25 18:17:18'),
(7, 'alex', 'Herberth Alexander', 'L', 'h3ealh@gmail.com', 'c9', 'ROLE_USER', 1, '2016-11-28 03:39:16', '2016-11-28 03:39:16'),
(8, 'DonaldTrump', 'Donald', 'Trump', 'DonaldTrump@msn.us', 'DonaldTrump', 'ROLE_ADMIN', 1, '2016-11-28 03:43:55', '2016-11-28 03:43:55'),
(9, 'Yisus', 'jesus', 'montenegro', 'yisus@yahoo.com', '$2y$12$.GMaEX5Dnf2ffXGChW8n7u4pmIkad0XKLf7ZGmlRA7DSoeFv5EDUm', 'ROLE_USER', 1, '2016-11-28 04:11:04', '2016-11-28 04:11:04'),
(10, 'nuegado', 'sanchez', 'ceren', 'nuegadin@twitter.com', '$2y$12$Fp1pMDUCpiYZwfmEYooHle7Fqt70fDZhKWWzk/ZqNE30.kYDYjeHK', 'ROLE_USER', 1, '2016-11-28 04:16:40', '2016-11-28 04:16:40'),
(13, 'luigi', 'luigi', 'bros', 'luigi@emial.com', '$2y$12$cDzQrmr1G5gvCpyy1XHiNeYUj.yU1plpaNgxRqeEuRXkERB6N/ogC', 'ROLE_USER', 0, '2016-12-04 01:19:22', '2016-12-04 01:19:22'),
(14, 'ochoa', 'carlos', 'ochoa', 'ochoa@gmail.com', '$2y$12$2/ucKSWD8.ipJeO0Bke4puf3wiRMgYBIVgnfbF9KOoo5pB36cwL8O', 'ROLE_USER', 1, '2017-10-23 21:00:19', '2017-10-23 21:00:19');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
