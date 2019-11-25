-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2019 a las 23:27:52
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `codeigniter`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditor_query`
--

CREATE TABLE `auditor_query` (
  `id_auditor_query` int(11) NOT NULL,
  `class_controller` varchar(500) NOT NULL,
  `method_controller` varchar(500) NOT NULL,
  `class_model` varchar(500) NOT NULL,
  `method_model` varchar(500) NOT NULL,
  `query` text NOT NULL,
  `execution_date` datetime NOT NULL DEFAULT current_timestamp(),
  `user` int(11) NOT NULL,
  `ip` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auditor_query`
--

INSERT INTO `auditor_query` (`id_auditor_query`, `class_controller`, `method_controller`, `class_model`, `method_model`, `query`, `execution_date`, `user`, `ip`) VALUES
(1, 'Usuario', 'crearUsuario', 'Usuario_model', 'Usuario_model::crearUsuario', 'INSERT INTO `usuario` (`login`, `password`) VALUES (\'root\', \'123456789\')', '2019-11-25 23:12:44', 115884, ''),
(2, 'Usuario', 'crearUsuario', 'Usuario_model', 'Usuario_model::crearUsuario', 'INSERT INTO `usuario` (`login`, `password`) VALUES (\'root\', \'123456789\')', '2019-11-25 23:19:51', 115884, '::1'),
(3, 'Usuario', 'crearUsuario', 'Usuario_model', 'Usuario_model::crearUsuario', 'INSERT INTO `usuario` (`login`, `password`) VALUES (\'root\', \'123456789\')', '2019-11-25 23:19:53', 115884, '::1'),
(4, 'Usuario', 'crearUsuario', 'Usuario_model', 'Usuario_model::crearUsuario', 'INSERT INTO `usuario` (`login`, `password`) VALUES (\'root\', \'123456789\')', '2019-11-25 23:19:53', 115884, '::1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `persona_id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`user_id`, `login`, `password`) VALUES
(1, 'henry', '123456'),
(2, 'nexos', '789456'),
(4, 'nexos', '789456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `login`, `password`) VALUES
(1, 'aldo', 'asdas'),
(2, 'hperez', '1234'),
(3, 'henry', '122233445566778899'),
(5, 'henry', '123777777777'),
(7, 'root', '123456789'),
(8, 'root', '123456789'),
(9, 'root', '123456789'),
(10, 'root', '123456789'),
(11, 'root', '123456789'),
(12, 'root', '123456789'),
(13, 'root', '123456789'),
(14, 'root', '123456789'),
(15, 'root', '123456789'),
(16, 'root', '123456789'),
(17, 'root', '123456789'),
(18, 'root', '123456789'),
(19, 'root', '123456789'),
(20, 'root', '123456789'),
(21, 'root', '123456789'),
(22, 'root', '123456789'),
(23, 'root', '123456789'),
(24, 'root', '123456789'),
(25, 'root', '123456789'),
(26, 'root', '123456789'),
(27, 'root', '123456789'),
(28, 'root', '123456789'),
(29, 'root', '123456789'),
(30, 'root', '123456789'),
(31, 'root', '123456789'),
(32, 'root', '123456789'),
(33, 'root', '123456789'),
(34, 'root', '123456789'),
(35, 'root', '123456789'),
(36, 'root', '123456789'),
(37, 'root', '123456789'),
(38, 'root', '123456789'),
(39, 'root', '123456789'),
(40, 'root', '123456789'),
(41, 'root', '123456789'),
(42, 'root', '123456789'),
(43, 'root', '123456789'),
(44, 'root', '123456789'),
(45, 'root', '123456789'),
(46, 'root', '123456789'),
(47, 'root', '123456789'),
(48, 'root', '123456789'),
(49, 'root', '123456789'),
(50, 'root', '123456789'),
(51, 'root', '123456789'),
(52, 'root', '123456789'),
(53, 'root', '123456789'),
(54, 'root', '123456789'),
(55, 'root', '123456789'),
(56, 'root', '123456789'),
(57, 'root', '123456789'),
(58, 'root', '123456789'),
(59, 'root', '123456789'),
(60, 'root', '123456789'),
(61, 'root', '123456789'),
(62, 'root', '123456789'),
(63, 'root', '123456789');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auditor_query`
--
ALTER TABLE `auditor_query`
  ADD PRIMARY KEY (`id_auditor_query`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`persona_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auditor_query`
--
ALTER TABLE `auditor_query`
  MODIFY `id_auditor_query` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `persona_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
