-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-03-2018 a las 03:51:18
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbflyfree`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbadministrador`
--

CREATE TABLE `tbadministrador` (
  `administradorid` int(11) NOT NULL,
  `personaid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbcliente`
--

CREATE TABLE `tbcliente` (
  `clienteid` int(11) NOT NULL,
  `personaid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbdestino`
--

CREATE TABLE `tbdestino` (
  `destinoid` int(11) NOT NULL,
  `destinonombre` varchar(30) NOT NULL,
  `destinoubicacion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbfacturas`
--

CREATE TABLE `tbfacturas` (
  `facturaid` int(11) NOT NULL,
  `reservaid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbpaquetes`
--

CREATE TABLE `tbpaquetes` (
  `paqueteid` int(11) NOT NULL,
  `destinoid` int(11) NOT NULL,
  `servicioid` int(11) NOT NULL,
  `paquetedescripcion` text NOT NULL,
  `paquetecantidadpersonas` int(11) NOT NULL,
  `paquetefecha` date NOT NULL,
  `paquetedias` int(11) NOT NULL,
  `paqueteprecio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbpersona`
--

CREATE TABLE `tbpersona` (
  `personaid` int(11) NOT NULL,
  `personanombre` varchar(30) NOT NULL,
  `personaapellido1` varchar(30) NOT NULL,
  `personaapellido2` varchar(30) NOT NULL,
  `personaemail` text NOT NULL,
  `personatelefono` int(11) NOT NULL,
  `personapassword` text NOT NULL,
  `personagenero` varchar(30) NOT NULL,
  `personapais` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbreservas`
--

CREATE TABLE `tbreservas` (
  `reservaid` int(11) NOT NULL,
  `clienteid` int(11) NOT NULL,
  `paqueteid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbservicios`
--

CREATE TABLE `tbservicios` (
  `servicioid` int(11) NOT NULL,
  `tipoid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbtipos`
--

CREATE TABLE `tbtipos` (
  `tipoid` int(11) NOT NULL,
  `tiponombre` varchar(38) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbadministrador`
--
ALTER TABLE `tbadministrador`
  ADD PRIMARY KEY (`administradorid`),
  ADD KEY `personaid` (`personaid`);

--
-- Indices de la tabla `tbcliente`
--
ALTER TABLE `tbcliente`
  ADD PRIMARY KEY (`clienteid`),
  ADD KEY `personaid` (`personaid`);

--
-- Indices de la tabla `tbdestino`
--
ALTER TABLE `tbdestino`
  ADD PRIMARY KEY (`destinoid`);

--
-- Indices de la tabla `tbfacturas`
--
ALTER TABLE `tbfacturas`
  ADD PRIMARY KEY (`facturaid`),
  ADD KEY `reservaid` (`reservaid`);

--
-- Indices de la tabla `tbpaquetes`
--
ALTER TABLE `tbpaquetes`
  ADD PRIMARY KEY (`paqueteid`),
  ADD KEY `destinoid` (`destinoid`),
  ADD KEY `servicioid` (`servicioid`);

--
-- Indices de la tabla `tbpersona`
--
ALTER TABLE `tbpersona`
  ADD PRIMARY KEY (`personaid`);

--
-- Indices de la tabla `tbreservas`
--
ALTER TABLE `tbreservas`
  ADD PRIMARY KEY (`reservaid`),
  ADD KEY `clienteid` (`clienteid`),
  ADD KEY `paqueteid` (`paqueteid`);

--
-- Indices de la tabla `tbservicios`
--
ALTER TABLE `tbservicios`
  ADD PRIMARY KEY (`servicioid`),
  ADD KEY `tipoid` (`tipoid`);

--
-- Indices de la tabla `tbtipos`
--
ALTER TABLE `tbtipos`
  ADD PRIMARY KEY (`tipoid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbadministrador`
--
ALTER TABLE `tbadministrador`
  MODIFY `administradorid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbcliente`
--
ALTER TABLE `tbcliente`
  MODIFY `clienteid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbdestino`
--
ALTER TABLE `tbdestino`
  MODIFY `destinoid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbfacturas`
--
ALTER TABLE `tbfacturas`
  MODIFY `facturaid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbpaquetes`
--
ALTER TABLE `tbpaquetes`
  MODIFY `paqueteid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbpersona`
--
ALTER TABLE `tbpersona`
  MODIFY `personaid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbreservas`
--
ALTER TABLE `tbreservas`
  MODIFY `reservaid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbservicios`
--
ALTER TABLE `tbservicios`
  MODIFY `servicioid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbtipos`
--
ALTER TABLE `tbtipos`
  MODIFY `tipoid` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
