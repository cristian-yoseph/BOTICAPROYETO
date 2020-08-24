-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-08-2020 a las 21:19:09
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_botica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `Id_adm` int(11) NOT NULL,
  `nombre_adm` varchar(25) NOT NULL,
  `apellido_adm` varchar(25) NOT NULL,
  `sexo_amd` char(2) NOT NULL,
  `direccion_adm` varchar(50) NOT NULL,
  `tefefono_adm` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administraproducto`
--

CREATE TABLE `administraproducto` (
  `id_adm_pro` int(11) NOT NULL,
  `id_pro` int(11) NOT NULL,
  `id_adm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `Id_cli` int(11) NOT NULL,
  `nombre_cli` varchar(25) NOT NULL,
  `apellido_cli` varchar(25) NOT NULL,
  `sexo_cli` char(2) NOT NULL,
  `direccion_cli` varchar(50) NOT NULL,
  `tefefono_cli` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`Id_cli`, `nombre_cli`, `apellido_cli`, `sexo_cli`, `direccion_cli`, `tefefono_cli`) VALUES
(1, 'juana', 'ReeeeReee', '', '', ''),
(2, 'Prepito', ' roooooooo B', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id_Comp` int(11) NOT NULL,
  `id_pro` int(11) NOT NULL,
  `id_cli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empaquetador`
--

CREATE TABLE `empaquetador` (
  `Id_emp` int(11) NOT NULL,
  `nombre_emp` varchar(25) NOT NULL,
  `apellido_emp` varchar(25) NOT NULL,
  `sexo_emp` char(2) NOT NULL,
  `direccion_emp` varchar(50) NOT NULL,
  `tefefono_emp` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entregador`
--

CREATE TABLE `entregador` (
  `Id_entr` int(11) NOT NULL,
  `nombre_entr` varchar(25) NOT NULL,
  `apellido_ent` varchar(25) NOT NULL,
  `sexo_cli` char(2) NOT NULL,
  `direccion_ent` varchar(50) NOT NULL,
  `tefefono_ent` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `farmaceutico`
--

CREATE TABLE `farmaceutico` (
  `Id_farm` int(11) NOT NULL,
  `nombre_farm` varchar(25) NOT NULL,
  `apellido_farm` varchar(25) NOT NULL,
  `sexo_farm` char(2) NOT NULL,
  `direccion_farm` varchar(50) NOT NULL,
  `tefefono_farm` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `farmaceutico`
--

INSERT INTO `farmaceutico` (`Id_farm`, `nombre_farm`, `apellido_farm`, `sexo_farm`, `direccion_farm`, `tefefono_farm`) VALUES
(1, 'Raul', 'ramoz p', '', '', ''),
(2, 'ramoz p', '', '', '', ''),
(3, 'Raul', 'ramoz p', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nombre`
--

CREATE TABLE `nombre` (
  `identificador` int(11) NOT NULL,
  `usuario` varchar(225) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `produto`
--

CREATE TABLE `produto` (
  `Id_pro` int(11) NOT NULL,
  `nombre_pro` varchar(25) NOT NULL,
  `precio_pro` char(2) NOT NULL,
  `fecha_de_ven_pro` date DEFAULT NULL,
  `Id_entr` int(11) NOT NULL,
  `Id_emp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_vent` int(11) NOT NULL,
  `id_farm` int(11) NOT NULL,
  `id_pro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`Id_adm`);

--
-- Indices de la tabla `administraproducto`
--
ALTER TABLE `administraproducto`
  ADD PRIMARY KEY (`id_adm_pro`),
  ADD KEY `fk_productoss` (`id_pro`),
  ADD KEY `fk_administradorr` (`id_adm`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Id_cli`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id_Comp`),
  ADD KEY `fk_producto` (`id_pro`),
  ADD KEY `fk_cliente` (`id_cli`);

--
-- Indices de la tabla `empaquetador`
--
ALTER TABLE `empaquetador`
  ADD PRIMARY KEY (`Id_emp`);

--
-- Indices de la tabla `entregador`
--
ALTER TABLE `entregador`
  ADD PRIMARY KEY (`Id_entr`);

--
-- Indices de la tabla `farmaceutico`
--
ALTER TABLE `farmaceutico`
  ADD PRIMARY KEY (`Id_farm`);

--
-- Indices de la tabla `nombre`
--
ALTER TABLE `nombre`
  ADD PRIMARY KEY (`identificador`);

--
-- Indices de la tabla `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`Id_pro`),
  ADD KEY `fk_Entregador` (`Id_entr`),
  ADD KEY `fk_Empaquetador` (`Id_emp`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_vent`),
  ADD KEY `fk_farmaceutico` (`id_farm`),
  ADD KEY `fk_productos` (`id_pro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `Id_adm` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `administraproducto`
--
ALTER TABLE `administraproducto`
  MODIFY `id_adm_pro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `Id_cli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `id_Comp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empaquetador`
--
ALTER TABLE `empaquetador`
  MODIFY `Id_emp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `entregador`
--
ALTER TABLE `entregador`
  MODIFY `Id_entr` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `farmaceutico`
--
ALTER TABLE `farmaceutico`
  MODIFY `Id_farm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `nombre`
--
ALTER TABLE `nombre`
  MODIFY `identificador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `produto`
--
ALTER TABLE `produto`
  MODIFY `Id_pro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id_vent` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administraproducto`
--
ALTER TABLE `administraproducto`
  ADD CONSTRAINT `fk_administradorr` FOREIGN KEY (`id_adm`) REFERENCES `administrador` (`Id_adm`),
  ADD CONSTRAINT `fk_productoss` FOREIGN KEY (`id_pro`) REFERENCES `produto` (`Id_pro`);

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `fk_cliente` FOREIGN KEY (`id_cli`) REFERENCES `cliente` (`Id_cli`),
  ADD CONSTRAINT `fk_producto` FOREIGN KEY (`id_pro`) REFERENCES `produto` (`Id_pro`);

--
-- Filtros para la tabla `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `fk_Empaquetador` FOREIGN KEY (`Id_emp`) REFERENCES `empaquetador` (`Id_emp`),
  ADD CONSTRAINT `fk_Entregador` FOREIGN KEY (`Id_entr`) REFERENCES `entregador` (`Id_entr`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `fk_farmaceutico` FOREIGN KEY (`id_farm`) REFERENCES `farmaceutico` (`Id_farm`),
  ADD CONSTRAINT `fk_productos` FOREIGN KEY (`id_pro`) REFERENCES `produto` (`Id_pro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
