-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-12-2019 a las 16:02:20
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `minimoodle`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulos`
--

CREATE TABLE `modulos` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modulos`
--

INSERT INTO `modulos` (`id`, `name`) VALUES
(1, 'La tiendita'),
(2, 'Los objetos'),
(3, 'Figuras Geometricas'),
(4, 'Suma'),
(5, 'Resta'),
(6, 'Las diferencias'),
(7, 'Conteo'),
(8, 'Secuencias'),
(9, '¿Cuanto cuesta?'),
(10, '¿Quien tiene mas?'),
(11, 'Longitudes'),
(12, 'Capacidad'),
(13, 'Coleccion'),
(14, '¿Cual pesa mas?'),
(15, 'La recta'),
(16, 'Grande o pequeño');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `pregunta` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `audio` varchar(255) NOT NULL,
  `nu_modulo` int(11) NOT NULL,
  `status1` tinyint(4) DEFAULT NULL,
  `status2` tinyint(4) DEFAULT NULL,
  `status3` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `pregunta`, `imagen`, `audio`, `nu_modulo`, `status1`, `status2`, `status3`) VALUES
(1, 'Juanito fue a comprar una sabrita que costaba $5 pesos y pago con una moneda de $10 pesos.\r\n¿Cuánto dinero le sobra?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m1i1.png', 'assets/m1e1.mp3', 1, 0, 0, 0),
(2, 'Juan va a la tienda de Don Paco y quiere comprar una gorra', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m1i2', 'assets/m1e2.mp3', 1, 0, 0, 0),
(3, 'Lulú quiere comprar una muñeca pero solo tiene $18 pesos.​\r\n\r\n¿Cuánto dinero le hace falta si la muñeca cuesta $25 pesos?​', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m1i3.png', 'assets/m1e3.png', 1, 0, 0, 0),
(4, 'Pedro tiene $46 pesos, y quiere comprar una pelota que cuesta $55 pesos.​\r\n¿Cuánto dinero le hace falta a Pedro para comprar la pelota?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m1i4.png', 'assets/m1e4.mp3', 1, NULL, NULL, NULL),
(5, 'Luisa fue a la librería y compro los siguientes libros.​\r\n¿Cuánto pago Luisa por los libros?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m1i5', 'assets/m1e5.mp3', 1, NULL, NULL, NULL),
(6, 'Carlos fue a una frutería a comprar manzanas, si las manzanas verdes cuestan $3 pesos y las rojas cuestan $2 pesos.​\r\n\r\n¿Cuánto dinero pago Carlos si llevo las siguientes manzanas?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m1i6.png', 'assets/m1e6.mp3', 1, NULL, NULL, NULL),
(7, 'La mamá de Sofia, fue a comprar paletas, si cada Paleta cuesta $4 pesos.​\r\n\r\n¿Cuánto dinero pago la mamá se Sofia si llevo las siguientes paletas ?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago//m1i7.png', 'assets/m1e7.mp3', 1, NULL, NULL, NULL),
(8, 'En una tienda los  globos azules cuestan $2 pesos, los blancos $3 pesos y los rojos $4 pesos. Si compro 2 globos azules 1 blanco y 1 rojo ¿Cuánto dinero pago en total?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m1i8.png', 'assets/m1e8.mp3', 1, NULL, NULL, NULL),
(9, 'Nico fue a comprar 5 canicas a la tienda, y cada una de ellas cuesta $3 pesos. Si paga con 2 moneas de $10  pesos.​\r\n¿Cuánto dinero le sobra? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m1i9.png', 'assets/m1e9.mp3', 1, NULL, NULL, NULL),
(10, 'En una tienda de ropa las camisas cuestan $10 pesos y las faldas cuestan $15 pesos. ​\r\n\r\n¿Cuanto dinero tengo que pagar si compro 2 camisas y 1 falda ?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m1i10.png', 'assets/m1e10.mp3', 1, NULL, NULL, NULL),
(11, '¿Cuántos cangrejos hay en la playa? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m2i1.jpg', 'assets/m2e1.mp3', 2, NULL, NULL, NULL),
(12, '¿Cuántos conejos hay en la imagen? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m2i2.jpg', 'assets/m2e2.mp3', 2, NULL, NULL, NULL),
(13, '¿Cuántas piñas hay sobre la mesa? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m2i3.jpg', 'assets/m2e3.mp3', 2, NULL, NULL, NULL),
(14, '¿Cuántas bananas hay sobre las mesa? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m2i4.jpg', 'assets/m2e4.mp3', 2, NULL, NULL, NULL),
(15, '¿Cuántos balones de basquetbol hay en la cancha? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m2i5.png', 'assets/m2e5.mp3', 2, NULL, NULL, NULL),
(16, '¿Cuántos caramelos hay sobre la mesa? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m2i6.jpg', 'assets/m2e6.mp3', 2, NULL, NULL, NULL),
(17, '¿Cuántos ratones hay en el desierto? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m2i7.jpg', 'assets/m2e7.mp3', 2, NULL, NULL, NULL),
(18, '¿Cuántos jitomates hay en la canasta? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m2i8.jpg', 'assets/m2e8.mp3', 2, NULL, NULL, NULL),
(19, '¿Cuántos globos hay en la feria? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m2i9.jpg', 'assets/m2e9.mp3', 2, NULL, NULL, NULL),
(20, '¿Cuántos globos amarillos hay en la imagen? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m2i10.jpg', 'assets/m2e10.mp3', 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `id` int(11) NOT NULL,
  `respuesta` varchar(255) NOT NULL,
  `short` varchar(255) NOT NULL,
  `nu_pregunta` int(11) NOT NULL,
  `valor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `respuestas`
--

INSERT INTO `respuestas` (`id`, `respuesta`, `short`, `nu_pregunta`, `valor`) VALUES
(1, '$5', 'Correcto', 1, 1),
(2, '$3', 'Error', 1, 0),
(3, '$10​', 'Error', 1, 0),
(4, '$5', 'Error', 2, 0),
(5, '$4', 'Correcto', 2, 1),
(6, '$10', 'Erorr', 2, 0),
(7, '$5', 'Error', 3, 0),
(8, '$6', 'Error', 3, 0),
(9, '$7', 'Correcto', 3, 1),
(10, '$9', 'Correcto', 4, 1),
(11, '$6', 'Error', 4, 0),
(12, '$4', 'Error', 4, 0),
(13, '$50', 'Error', 5, 0),
(14, '$30', 'Error', 5, 0),
(15, '$42', 'Correcto', 5, 1),
(16, '$14', 'Correcto', 6, 1),
(17, '$12', 'Error', 6, 0),
(18, '$18', 'Error', 6, 0),
(19, '$14', 'Error', 7, 0),
(20, '$20', 'Correcto', 7, 1),
(21, '$15', 'Error', 7, 0),
(22, '$12', 'Error', 8, 0),
(23, '$10', 'Error', 8, 0),
(24, '$11', 'Correcto', 8, 1),
(25, '$5', 'Correcto', 9, 1),
(26, '$15', 'Error', 9, 0),
(27, '$20', 'Error', 9, 0),
(28, '$35', 'Error', 10, 0),
(29, '$25', 'Correcto', 10, 1),
(30, '$30', 'Error', 10, 0),
(31, '6', 'Correcto', 11, 1),
(32, '3', 'Error', 11, 0),
(33, '8', 'Error', 11, 0),
(34, '9', 'Error', 12, 0),
(35, '5', 'Error', 12, 0),
(36, '7', 'Correcto', 12, 1),
(37, '6', 'Error', 13, 0),
(38, '3', 'Error', 13, 0),
(39, '5', 'Correcto', 13, 1),
(40, '6', 'Error', 14, 0),
(41, '7', 'Correcto', 14, 1),
(42, '9', 'Error', 14, 0),
(43, '8', 'Correcto', 15, 1),
(44, '10', 'Error', 15, 0),
(45, '7', 'Error', 15, 0),
(46, '7', 'Correcto', 16, 1),
(47, '9', 'Error', 16, 0),
(48, '4', 'Error', 16, 0),
(49, '9', 'Error', 17, 0),
(50, '10', 'Error', 17, 0),
(51, '7', 'Correcto', 17, 1),
(52, '5', 'Correcto', 18, 1),
(53, '6', 'Error', 18, 0),
(54, '3', 'Error', 18, 0),
(55, '19', 'Error', 19, 0),
(56, '16', 'Correcto', 19, 1),
(57, '18', 'Error', 19, 0),
(58, '4', 'Error', 20, 0),
(59, '2', 'Correcto', 20, 1),
(60, '1', 'Error', 20, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultados`
--

CREATE TABLE `resultados` (
  `id` int(11) NOT NULL,
  `nu_user` int(11) NOT NULL,
  `nu_respuesta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `resultados`
--

INSERT INTO `resultados` (`id`, `nu_user`, `nu_respuesta`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 1),
(4, 1, 3),
(5, 1, 3),
(6, 1, 2),
(7, 1, 3),
(8, 1, 2),
(9, 1, 2),
(10, 1, 2),
(11, 1, 2),
(12, 1, 1),
(13, 1, 3),
(14, 1, 3),
(15, 1, 3),
(16, 1, 2),
(17, 1, 32),
(18, 1, 35),
(19, 1, 38),
(20, 1, 50),
(21, 1, 50),
(22, 1, 31),
(23, 1, 36),
(24, 1, 39),
(25, 1, 41),
(26, 1, 43),
(27, 1, 46);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`) VALUES
(1, 'ADMIN'),
(2, 'ALUMNO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nu_rol` int(11) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `nu_rol`, `username`, `password`) VALUES
(1, 'Nicolas Alejandro Salvador Lozano', 2, 'Nico', '123'),
(2, 'Angel Garcia Guerrero', 2, 'Angel', '123'),
(3, 'Erick Alberto Bautista Vera', 2, 'Erick', '123'),
(4, 'Eliezer del Jesus Casados Ramirez', 1, 'Eliezer', '123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `modulos`
--
ALTER TABLE `modulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nu_modulo` (`nu_modulo`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nu_pregunta` (`nu_pregunta`);

--
-- Indices de la tabla `resultados`
--
ALTER TABLE `resultados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nu_user` (`nu_user`) USING BTREE,
  ADD KEY `nu_respuesta` (`nu_respuesta`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nu_rol` (`nu_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `modulos`
--
ALTER TABLE `modulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `resultados`
--
ALTER TABLE `resultados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD CONSTRAINT `preguntas_ibfk_1` FOREIGN KEY (`nu_modulo`) REFERENCES `modulos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD CONSTRAINT `respuestas_ibfk_1` FOREIGN KEY (`nu_pregunta`) REFERENCES `preguntas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `resultados`
--
ALTER TABLE `resultados`
  ADD CONSTRAINT `resultadis_ibfk_2` FOREIGN KEY (`nu_respuesta`) REFERENCES `respuestas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `resultados_ibfk_1` FOREIGN KEY (`nu_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`nu_rol`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
