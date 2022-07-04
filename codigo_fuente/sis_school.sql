-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-05-2022 a las 01:14:11
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sis_school`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumn`
--

CREATE TABLE `alumn` (
  `id` int(11) NOT NULL,
  `image` varchar(50) COLLATE utf8_bin NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `lastname` varchar(50) COLLATE utf8_bin NOT NULL,
  `address` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(60) COLLATE utf8_bin NOT NULL,
  `phone` varchar(60) COLLATE utf8_bin NOT NULL,
  `c1_fullname` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `c1_address` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `c1_phone` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `c1_note` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `c2_fullname` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `c2_address` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `c2_phone` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `c2_note` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `alumn`
--

INSERT INTO `alumn` (`id`, `image`, `name`, `lastname`, `address`, `email`, `phone`, `c1_fullname`, `c1_address`, `c1_phone`, `c1_note`, `c2_fullname`, `c2_address`, `c2_phone`, `c2_note`, `is_active`, `created_at`, `user_id`) VALUES
(28, '1653777812.jpg', 'ELIZABETH', 'VELÁZQUEZ HIJO', 'JR. SANTINO IBARRA # 46171 PISO 2', 'ccerda@naranjo.com', '987678568', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(29, '', 'MARIANA', 'ALVA NEGRETE', 'CL. JULIA SALCIDO # 2', 'xcarmona@gmail.com', '969406162', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(30, '', 'IVAN', 'VALDÉS VENEGAS', 'URB. CARLA BERNAL # 93', 'ivan97@example.com', '908947392', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(31, '', 'ELIZABETH NATALIA', 'YÁÑEZ CARDONA', 'URB. MICAELA NARVÁEZ # 8 HAB. 130', 'carla83@hotmail.com', '924180387', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(32, '', 'FABIANA', 'BUSTAMANTE VÉLEZ', 'JR. CHRISTOPHER CORRALES # 6638 PISO 07', 'sarchuleta@cedillo.com', '913638791', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(33, '', 'MARIANGEL', 'COLÓN HIJO', 'JR. IGNACIO GAONA # 41 HAB. 805', 'santiago.galarza@alejandro.com', '972688620', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(34, '', 'FRANCISCO', 'GUERRA ORDÓÑEZ', 'JR. ESTEBAN GODÍNEZ # 03 PISO 6', 'avaladez@gmail.com', '950341725', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(35, '', 'REGINA', 'RINCÓN REYNA', 'URB. RAFAELA FARÍAS # 3', 'santino.arce@gmail.com', '936805607', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(36, '', 'JULIÁN JUAN MANUEL', 'LIMÓN LARA', 'CL. ANA HIDALGO # 017 HAB. 529', 'rsoria@diaz.org', '915442563', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(37, '', 'JORGE', 'PERALES BARRA', 'AV. RAFAEL NEGRÓN # 668 PISO 67', 'peralezi@hotmail.com', '930762939', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(38, '', 'SILVANA CAMILA', 'TORO LUNA', 'AV. JOAQUÍN CANTÚ # 51867', 'bernal.valery@vazquez.net', '967168051', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(39, '', 'SANTINO', 'RODRÍGEZ CHÁVEZ', 'JR. JAZMÍN BACA # 9', 'chavez_@hotmail.com', '934656054', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(40, '', 'SAMANTHA REBECA', 'AMADOR RAMÓN', 'CL. SARA SOFÍA GUTIÉRREZ # 2442 PISO 6', 'cr_ramon@yahoo.com', '953265299', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(41, '', 'ALEJANDRO EDUARDO', 'LEÓN VACA', 'CL. MÁXIMO OLIVARES # 6', 'leonvaca@hotmail.com', '928486564', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(42, '', 'HORACIO', 'ARCHULETA ACUÑA', 'CL. ANTHONY BENAVIDES # 1083 DPTO. 355', 'archuleta@hotmail.com', '953269438', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(43, '', 'ISIDORA', 'VAZQUEZ CORDOVA', 'AV. MARIANA ARELLANO # 0029', 'vazquescor@hotmail.com', '907802167', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(44, '', 'JOSÉ MARÍA', 'MORENO DURAN', 'AGRUP. FAMILIAR LOS PORTALES, MZ. B LT. 7', 'morenoduran@hotmail.com', '977136834', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(45, '', 'JOSE CARLOS', 'MENA SANCHEZ', 'AVENIDA LOS SAUCES, 327', 'menasanchez@hotmail.com', '972897950', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(46, '', 'CUAUHTEMOC', 'MORENO FLORES', 'JIRÓN ISÁAC NEWTÓN, 2109', 'morenoflores@hotmail.com', '967724781', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(47, '', 'PEDRO', 'CASTRO SANCHEZ', 'AVENIDA DEL EJÉRCITO, 1020', 'castro-sanchez@hotmail.com', '985655446', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(48, '', 'ANA ELVIA', 'MIJARES RODRIGUEZ', 'CALLE 8, MZ. LT. 10 URB. MONTE AZUL', 'rodriguez_mi@hotmail.com', '972513522', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumn_team`
--

CREATE TABLE `alumn_team` (
  `id` int(11) NOT NULL,
  `alumn_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `alumn_team`
--

INSERT INTO `alumn_team` (`id`, `alumn_id`, `team_id`) VALUES
(20, 28, 1),
(21, 29, 1),
(22, 30, 1),
(23, 31, 1),
(24, 32, 1),
(25, 33, 2),
(26, 34, 2),
(27, 35, 2),
(28, 36, 3),
(29, 37, 3),
(30, 38, 4),
(31, 39, 4),
(32, 40, 4),
(33, 41, 5),
(34, 42, 1),
(35, 43, 1),
(36, 44, 1),
(37, 45, 1),
(38, 46, 1),
(39, 47, 1),
(40, 48, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `assistance`
--

CREATE TABLE `assistance` (
  `id` int(11) NOT NULL,
  `kind_id` int(11) DEFAULT NULL,
  `date_at` date NOT NULL,
  `alumn_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `assistance`
--

INSERT INTO `assistance` (`id`, `kind_id`, `date_at`, `alumn_id`, `team_id`) VALUES
(14, 1, '2022-05-28', 48, 1),
(15, 2, '2022-05-28', 47, 1),
(16, 3, '2022-05-28', 46, 1),
(17, 1, '2022-05-28', 45, 1),
(18, 1, '2022-05-28', 43, 1),
(19, 1, '2022-05-28', 30, 1),
(20, 1, '2022-05-28', 31, 1),
(21, 1, '2022-05-28', 32, 1),
(22, 1, '2022-05-28', 42, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `behavior`
--

CREATE TABLE `behavior` (
  `id` int(11) NOT NULL,
  `kind_id` int(11) DEFAULT NULL,
  `date_at` date NOT NULL,
  `alumn_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `block`
--

CREATE TABLE `block` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `block`
--

INSERT INTO `block` (`id`, `name`, `team_id`) VALUES
(7, 'COMUNICACIÓN', 1),
(8, 'MATEMÁTICA', 1),
(9, 'RELIGIÓN', 1),
(10, 'EDUCACIÓN FÍSICA', 1),
(11, 'DPCC', 1),
(12, 'CIENCIAS SOCIALES', 1),
(13, 'ARTE Y CULTURA', 1),
(14, 'EPT', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calification`
--

CREATE TABLE `calification` (
  `id` int(11) NOT NULL,
  `val` double DEFAULT NULL,
  `alumn_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `idpermiso` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`idpermiso`, `nombre`) VALUES
(1, 'Escritorio'),
(2, 'Grupos'),
(3, 'Acceso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team`
--

CREATE TABLE `team` (
  `idgrupo` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `favorito` tinyint(1) NOT NULL,
  `idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `team`
--

INSERT INTO `team` (`idgrupo`, `nombre`, `favorito`, `idusuario`) VALUES
(1, 'PRIMERO DE SECUNDARIA', 1, 1),
(2, 'SEGUNDO DE SECUNDARIA', 1, 1),
(3, 'TERCERO DE SECUNDARIA', 1, 1),
(4, 'CUARTO DE SECUNDARIA', 1, 1),
(5, 'QUINTO DE SECUNDARIA', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `tipo_documento` varchar(20) NOT NULL,
  `num_documento` varchar(20) NOT NULL,
  `direccion` varchar(70) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cargo` varchar(20) DEFAULT NULL,
  `login` varchar(20) NOT NULL,
  `clave` varchar(64) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `condicion` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `tipo_documento`, `num_documento`, `direccion`, `telefono`, `email`, `cargo`, `login`, `clave`, `imagen`, `condicion`) VALUES
(1, 'Leoncio Prado', 'DNI', '72154871', 'Calle los alpes 210', '547821', 'admin@gmail.com', 'Administrador', 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', '1653775500.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_permiso`
--

CREATE TABLE `usuario_permiso` (
  `idusuario_permiso` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idpermiso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario_permiso`
--

INSERT INTO `usuario_permiso` (`idusuario_permiso`, `idusuario`, `idpermiso`) VALUES
(20, 1, 1),
(21, 1, 2),
(22, 1, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumn`
--
ALTER TABLE `alumn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`) USING BTREE;

--
-- Indices de la tabla `alumn_team`
--
ALTER TABLE `alumn_team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumn_id` (`alumn_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indices de la tabla `assistance`
--
ALTER TABLE `assistance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumn_id` (`alumn_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indices de la tabla `behavior`
--
ALTER TABLE `behavior`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumn_id` (`alumn_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indices de la tabla `block`
--
ALTER TABLE `block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indices de la tabla `calification`
--
ALTER TABLE `calification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumn_id` (`alumn_id`),
  ADD KEY `block_id` (`block_id`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`idpermiso`);

--
-- Indices de la tabla `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`idgrupo`),
  ADD KEY `team_ibfk_1` (`idusuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD UNIQUE KEY `login_UNIQUE` (`login`);

--
-- Indices de la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  ADD PRIMARY KEY (`idusuario_permiso`),
  ADD KEY `fk_u_permiso_usuario_idx` (`idusuario`),
  ADD KEY `fk_usuario_permiso_idx` (`idpermiso`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumn`
--
ALTER TABLE `alumn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `alumn_team`
--
ALTER TABLE `alumn_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `assistance`
--
ALTER TABLE `assistance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `behavior`
--
ALTER TABLE `behavior`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `block`
--
ALTER TABLE `block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `calification`
--
ALTER TABLE `calification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `idpermiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `team`
--
ALTER TABLE `team`
  MODIFY `idgrupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  MODIFY `idusuario_permiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumn`
--
ALTER TABLE `alumn`
  ADD CONSTRAINT `alumn_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `usuario` (`idusuario`);

--
-- Filtros para la tabla `alumn_team`
--
ALTER TABLE `alumn_team`
  ADD CONSTRAINT `alumn_team_ibfk_1` FOREIGN KEY (`alumn_id`) REFERENCES `alumn` (`id`),
  ADD CONSTRAINT `alumn_team_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `team` (`idgrupo`);

--
-- Filtros para la tabla `assistance`
--
ALTER TABLE `assistance`
  ADD CONSTRAINT `assistance_ibfk_1` FOREIGN KEY (`alumn_id`) REFERENCES `alumn` (`id`),
  ADD CONSTRAINT `assistance_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `team` (`idgrupo`);

--
-- Filtros para la tabla `behavior`
--
ALTER TABLE `behavior`
  ADD CONSTRAINT `behavior_ibfk_1` FOREIGN KEY (`alumn_id`) REFERENCES `alumn` (`id`),
  ADD CONSTRAINT `behavior_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `team` (`idgrupo`);

--
-- Filtros para la tabla `block`
--
ALTER TABLE `block`
  ADD CONSTRAINT `block_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `team` (`idgrupo`);

--
-- Filtros para la tabla `calification`
--
ALTER TABLE `calification`
  ADD CONSTRAINT `calification_ibfk_1` FOREIGN KEY (`alumn_id`) REFERENCES `alumn` (`id`),
  ADD CONSTRAINT `calification_ibfk_2` FOREIGN KEY (`block_id`) REFERENCES `block` (`id`);

--
-- Filtros para la tabla `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`);

--
-- Filtros para la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  ADD CONSTRAINT `fk_u_permiso_usuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_permiso` FOREIGN KEY (`idpermiso`) REFERENCES `permiso` (`idpermiso`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
