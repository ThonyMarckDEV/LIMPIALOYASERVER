-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.18.9
-- Tiempo de generación: 03-12-2024 a las 19:32:17
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
-- Base de datos: `limpialoyadb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes`
--

CREATE TABLE `reportes` (
  `idReporte` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `fecha` datetime DEFAULT current_timestamp(),
  `descripcion` text NOT NULL,
  `imagen_url` varchar(255) DEFAULT NULL,
  `latitud` decimal(10,8) NOT NULL,
  `longitud` decimal(11,8) NOT NULL,
  `estado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reportes`
--

INSERT INTO `reportes` (`idReporte`, `idUsuario`, `fecha`, `descripcion`, `imagen_url`, `latitud`, `longitud`, `estado`) VALUES
(22, 1, '2024-10-27 09:43:48', 'aea', 'https://redfish-precise-mentally.ngrok-free.app/PHP/uploads/img_671e519d56e7d6.71866731.jpg', -4.53091970, -81.26471240, 'revisado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `ecoPoints` int(11) NOT NULL,
  `rol` varchar(255) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `perfil` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `username`, `ecoPoints`, `rol`, `nombres`, `apellidos`, `correo`, `password`, `status`, `perfil`) VALUES
(1, 'thonymarck', 0, 'usuario', 'Anthony Marck', 'Mendoza Sanchez', 'thonymarck385213xd@gmail.com', '$2y$10$1qOk3uLFidRpnGpzecFmxe20PWGTD8Jp.3w2zxbWAirKcr8T/yB9a', 'loggedOn', 'https://clear-simply-gazelle.ngrok-free.app/PHP/profiles/img_6703e64b7bba91.59187844.jpg'),
(2, 'admin', 0, 'admin', 'admin', 'admin', '', '$2y$10$ljgPhBbvY2QFFq.nCcZh/e28w78sKcxTfJhgByZLxL2niZEn63qg.', 'loggedOff', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD PRIMARY KEY (`idReporte`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reportes`
--
ALTER TABLE `reportes`
  MODIFY `idReporte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD CONSTRAINT `fk_idUsuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
