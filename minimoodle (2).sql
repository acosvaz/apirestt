-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-12-2019 a las 11:02:08
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
  `nu_modulo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `pregunta`, `imagen`, `audio`, `nu_modulo`) VALUES
(1, 'Juanito fue a comprar una sabrita que costaba $5 pesos y pago con una moneda de $10 pesos.\r\n¿Cuánto dinero le sobra?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m1i1.png', 'assets/m1e1.mp3', 1),
(2, 'Juan va a la tienda de Don Paco y quiere comprar una gorra', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m1i2.png', 'assets/m1e2.mp3', 1),
(3, 'Lulú quiere comprar una muñeca pero solo tiene $18 pesos.​\r\n\r\n¿Cuánto dinero le hace falta si la muñeca cuesta $25 pesos?​', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m1i3.png', 'assets/m1e3.mp3', 1),
(4, 'Pedro tiene $46 pesos, y quiere comprar una pelota que cuesta $55 pesos.​\r\n¿Cuánto dinero le hace falta a Pedro para comprar la pelota?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m1i4.png', 'assets/m1e4.mp3', 1),
(5, 'Luisa fue a la librería y compro los siguientes libros.​\r\n¿Cuánto pago Luisa por los libros?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m1i5.png', 'assets/m1e5.mp3', 1),
(6, 'Carlos fue a una frutería a comprar manzanas, si las manzanas verdes cuestan $3 pesos y las rojas cuestan $2 pesos.​\r\n\r\n¿Cuánto dinero pago Carlos si llevo las siguientes manzanas?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m1i6.png', 'assets/m1e6.mp3', 1),
(7, 'La mamá de Sofia, fue a comprar paletas, si cada Paleta cuesta $4 pesos.​\r\n\r\n¿Cuánto dinero pago la mamá se Sofia si llevo las siguientes paletas ?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago//m1i7.png', 'assets/m1e7.mp3', 1),
(8, 'En una tienda los  globos azules cuestan $2 pesos, los blancos $3 pesos y los rojos $4 pesos. Si compro 2 globos azules 1 blanco y 1 rojo ¿Cuánto dinero pago en total?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m1i8.png', 'assets/m1e8.mp3', 1),
(9, 'Nico fue a comprar 5 canicas a la tienda, y cada una de ellas cuesta $3 pesos. Si paga con 2 moneas de $10  pesos.​\r\n¿Cuánto dinero le sobra? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m1i9.png', 'assets/m1e9.mp3', 1),
(10, 'En una tienda de ropa las camisas cuestan $10 pesos y las faldas cuestan $15 pesos. ​\r\n\r\n¿Cuanto dinero tengo que pagar si compro 2 camisas y 1 falda ?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m1i10.png', 'assets/m1e10.mp3', 1),
(11, '¿Cuántos cangrejos hay en la playa? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m2i1.jpg', 'assets/m2e1.mp3', 2),
(12, '¿Cuántos conejos hay en la imagen? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m2i2.jpg', 'assets/m2e2.mp3', 2),
(13, '¿Cuántas piñas hay sobre la mesa? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m2i3.jpg', 'assets/m2e3.mp3', 2),
(14, '¿Cuántas bananas hay sobre las mesa? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m2i4.jpg', 'assets/m2e4.mp3', 2),
(15, '¿Cuántos balones de basquetbol hay en la cancha? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m2i5.png', 'assets/m2e5.mp3', 2),
(16, '¿Cuántos caramelos hay sobre la mesa? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m2i6.jpg', 'assets/m2e6.mp3', 2),
(17, '¿Cuántos ratones hay en el desierto? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m2i7.jpg', 'assets/m2e7.mp3', 2),
(18, '¿Cuántos jitomates hay en la canasta? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m2i8.jpg', 'assets/m2e8.mp3', 2),
(19, '¿Cuántos globos hay en la feria? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m2i9.jpg', 'assets/m2e9.mp3', 2),
(20, '¿Cuántos globos amarillos hay en la imagen? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m2i10.jpg', 'assets/m2e10.mp3', 2),
(21, 'Identifica y cuenta el número de triángulos que hay en la siguiente figura', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m3i1.png', 'assets/m3e1.mp3', 3),
(22, '¿Cómo se llama la figura geométrica que esta de color azul?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m3i2.png', 'assets/m3e2.mp3', 3),
(23, '¿Cómo se llama la figura geométrica que esta de color verde?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m3i3.png', 'assets/m3e3.mp3', 3),
(24, '¿Cuantos lados tiene el triangulo?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m3i4.png', 'assets/m3e4.mp3', 3),
(25, '¿Cuantos circulos hay en la imagen?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m3i5.png', 'assets/m3e5.mp3', 3),
(26, '?C?mo se llama la figura geom?trica que esta de color rojo?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m3i6.png', 'assets/m3e6.mp3', 3),
(27, '?C?mo se llama la siguiente figura geom?trica?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m3i7.png', 'assets/m3e7.mp3', 3),
(28, 'Martin viajo con su abuelo al norte del pa?s y en el camino observo una serie de monta?as de todos los tama?os, como se muestra en la siguiente imagen. ?Qu? forma geom?trica tienen las monta?as?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m3i8.png', 'assets/m3e8.mp3', 3),
(29, 'Pedro y Juan compraron 3 paletas en la tiendita de la esquina. ?Qu? forma geom?trica tienen las paletas?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m3i9.png', 'assets/m3e9.mp3', 3),
(30, '?C?mo se llama la siguiente forma geom?trica?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m3i10.png', 'assets/m3e10.mp3', 3),
(31, '?Cu?l es el resultado de la suma?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m4i1.png', 'assets/m4e1.mp3', 4),
(32, '?Cu?l es el resultado de la suma?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m4i2.png', 'assets/m4e2.mp3', 4),
(33, '?Cu?l es el resultado de la suma?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m4i3.png', 'assets/m4e3.mp3', 4),
(34, '?Cu?l es el resultado de la suma?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m4i4.png', 'assets/m4e4.mp3', 4),
(35, '?Cu?l es el resultado de la suma?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m4i5.png', 'assets/m4e5.mp3', 4),
(36, '?Cu?l es el resultado de la suma?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m4i6.png', 'assets/m4e6.mp3', 4),
(37, '?Cu?l es el resultado de la suma?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m4i7.png', 'assets/m4e7.mp3', 4),
(38, '?Cu?l es el resultado de la suma?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m4i8.png', 'assets/m4e8.mp3', 4),
(39, '?Cu?l es el resultado de la suma?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m4i9.png', 'assets/m4e9.mp3', 4),
(40, '?Cu?l es el resultado de la suma?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m4i10.png', 'assets/m4e10.mp3', 4),
(41, 'Responde la siguiente resta.? ?Cu?nto es 7 menos 6?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m5i1.png', 'assets/m5e1.mp3', 5),
(42, 'Responde la siguiente resta. ?Cu?nto es 34 menos 7?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m5i2.png', 'assets/m5e2.mp3', 5),
(43, 'Responde la siguiente resta.? ?Cu?nto es 9 menos 6?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m5i3.png', 'assets/m5e3.mp3', 5),
(44, 'Responde la siguiente resta.? ?Cu?nto es 77 menos 4?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m5i4.png', 'assets/m5e4.mp3', 5),
(45, 'Si Juan tiene 8 peras y regala 2 a su amigo.? ?Cu?ntas peras le quedan a Juan ? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m5i5.png', 'assets/m5e5.mp3', 5),
(46, 'Si Pablo tiene 20 manzanas y regala 6 a su amigo.? ?Cu?ntas manzanas le quedan a Pablo? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m5i6.png', 'assets/m5e6.mp3', 5),
(47, 'Si Mar?a tiene 6 pl?tanos y le da 3 a su hermana.? ?Cu?ntos pl?tanos le quedan a Mar?a?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m5i7.png', 'assets/m5e7.mp3', 5),
(48, 'Si Lupe tiene 8 Limones y se come 3.? ?Cu?ntos limones le quedan a Lupe?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m5i8.png', 'assets/m5e8.mp3', 5),
(49, 'Si Pablo tiene 20 manzanas y regala 12 a su mam?.? ?Cu?ntas manzanas le quedan a Pablo? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m5i9.png', 'assets/m5e9.mp3', 5),
(50, 'Si Ale tiene 20 mangos y pierde 1.? ?Cu?ntos mangos le quedan a Ale? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m5i10.png', 'assets/m5e10.mp3', 5),
(51, '?Cu?ntas diferencias hay entre los gatos??', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m6i1.png', 'assets/m6e11.mp3', 6),
(52, '?Cu?ntas diferencias hay en las siguientes im?genes?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m6i2.png', 'assets/m6e12.mp3', 6),
(53, '?Cu?ntas diferencias hay en los siguientes conejos?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m6i3.png', 'assets/m6e13.mp3', 6),
(54, '?Cu?ntas diferencias hay entre las personas?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m6i4.png', 'assets/m6e14.mp3', 6),
(55, '?Cu?ntas diferencias hay entre los siguientes caballos?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m6i5.png', 'assets/m6e15.mp3', 6),
(56, '?Cu?ntas diferencias hay entre los peces? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m6i6.png', 'assets/m6e16.mp3', 6),
(57, '?Cu?ntas diferencias hay entre las ballenas?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m6i7.png', 'assets/m6e17.mp3', 6),
(58, '?Cu?ntas diferencias hay entre los perritos?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m6i8.png', 'assets/m6e18.mp3', 6),
(59, '?Cu?ntas diferencias hay entre los delfines?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m6i9.png', 'assets/m6e19.mp3', 6),
(60, '?Cu?ntas diferencias hay entre las ?guilas?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m6i10.png', 'assets/m6e20.mp3', 6),
(61, 'Juanito y sus amigos se pusieron de acuerdo para ir a jugar al parque, ?llegaron m?s ni?os o ni?as?  ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m7i1.png', 'assets/m7e1.mp3', 7),
(62, '?Qu? tipo de animales hay m?s en la granja de don Jos?? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m7i2.png', 'assets/m7e2.mp3', 7),
(63, 'Do?a Rosa vende frutas en su casa, ?qu? fruta se le est? terminando? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m7i3.png', 'assets/m7e3.mp3', 7),
(64, 'En la cancha est? jugando Luis con balones verdes y azules, ?Qu? color de balones tiene m?s? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m7i4.png', 'assets/m7e4.mp3', 7),
(65, '?Qu? tipo de flores hay m?s en el jard?n? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m7i5.png', 'assets/m7e5.mp3', 7),
(66, '?Hay m?s botones rojos, blancos o negros? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m7i6.png', 'assets/m7e6.mp3', 7),
(67, '?En qu? imagen aparecen menos peces??', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m7i7.png', 'assets/m7e7.mp3', 7),
(68, '?Qu? objeto aparece siete veces en la imagen??', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m7i8.png', 'assets/m7e8.mp3', 7),
(69, '?Qu?? im?genes tienen la misma cantidad de figuras?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m7i9.png', 'assets/m7e9.mp3', 7),
(70, '?Qu? bolsa tiene m?s dulces? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m7i10.png', 'assets/m7e10.mp3', 7),
(71, 'Enumera ordenadamente las siguientes im?genes:', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m8i1.png', 'assets/mod8.mp3', 8),
(72, 'Enumera ordenadamente las siguientes im?genes:', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m8i2.png', 'assets/mod8.mp3', 8),
(73, 'Enumera ordenadamente las siguientes im?genes:', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m8i3.png', 'assets/mod8.mp3', 8),
(74, 'Enumera ordenadamente las siguientes im?genes:', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m8i4.png', 'assets/mod8.mp3', 8),
(75, 'Enumera ordenadamente las siguientes im?genes:', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m8i5.png', 'assets/mod8.mp3', 8),
(76, 'Enumera ordenadamente las siguientes im?genes:', 'http://104.197.200.77/apriest/assets/uploads/images_catalago/m8i6.png', 'assets/mod8.mp3', 8),
(77, 'Enumera ordenadamente las siguientes im?genes:', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m8i7.png', 'assets/mod8.mp3', 8),
(78, 'Enumera ordenadamente las siguientes im?genes:', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m8i8.png', 'assets/mod8.mp3', 8),
(79, 'Enumera ordenadamente las siguientes im?genes:', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m8i9.png', 'assets/mod8.mp3', 8),
(80, 'Enumera ordenadamente las siguientes im?genes:', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m8i10.png', 'assets/mod8.mp3', 8),
(81, '?Qu? libro compro Gabriel si pag?? con un billete de $50.00 y le devolvieron $7.00 de cambio?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m9i1.png', 'assets/m9e1.mp3', 9),
(82, '?Cuantos trompos se pueden comprar con $50.00?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m9i2.png', 'assets/m9e2.mp3', 9),
(83, '?Cu?ntas paletas se puede comprar Luis con $10.00 sin que le sobre cambio?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m9i3.png', 'assets/m9e3.mp3', 9),
(84, '?Qu? pelota compro Johan con $48.00 si le sobraron $9.00?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m9i4.png', 'assets/m9e4.mp3', 9),
(85, '?Cual fue el yoyo que compro Haimer con $30.00?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m9i5.png', 'assets/m9e5.mp3', 9),
(86, '?Qu? juguetes se pueden comprar con $50.00 sin que sobre cambio?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m9i6.png', 'assets/m9e6.mp3', 9),
(87, '?Qu? fruta se puede comprar Diana con $20.00?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m9i7.png', 'assets/m9e7.mp3', 9),
(88, 'Si Miguel tiene $35.00 ?Qu? gorra se puede comprar?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m9i8.png', 'assets/m9e8.mp3', 9),
(89, '?Cu?ntas canicas se pueden comprar con $18.00?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m9i9.png', 'assets/m9e9.mp3', 9),
(90, '?Qu? camisas compro Arturo con $40.00?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m9i10.png', 'assets/m9e10.mp3', 9),
(91, 'Juan tiene 8 pelotas y Pedro tiene 9 ?Qui?n tiene m?s pelotas? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m10i1.png', 'assets/m10e1.mp3', 10),
(92, 'Mario compro dos carritos y?Andr?s?compro?cinco. ?Qui?n?compr??m?s?carritos??', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m10i2.png', 'assets/m10e2.mp3', 10),
(93, 'Daniel tiene 2 chicles y Ana tiene 5 chicles. ?Qui?n tiene m?s chicles?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m10i3.png', 'assets/m10e3.mp3', 10),
(94, 'Jos? mide 1metro de altura y Marcos mide 1.5metros. ?Qui?n es m?s alto? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m10i4.png', 'assets/m10e4.mp3', 10),
(95, 'Cecilia tiene 4 hermanos, Karen tiene solo una hermana y Claudia tiene 5 ?Qui?n tiene m?s hermanos? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m10i5.png', 'assets/m10e5.mp3', 10),
(96, 'Monserrat tiene 12 l?pices de colores y Ester tiene 24 ?Qui?n tiene m?s? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m10i6.png', 'assets/m10e6.mp3', 10),
(97, 'La camisa amarilla tiene 5 botones, mientras la camisa verde tiene 6?Qu? camisa tiene m?s botones? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m10i7.png', 'assets/m10e7.mp3', 10),
(98, 'Pepito le puso 2 balitas a su pistola de juguete y Panchito le puso 3 balitas a la suya ?Qu? ni?o tiene m?s balitas en su pistolita?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m10i8.png', 'assets/m10e8.mp3', 10),
(99, ' Ana tiene 4 barbies, Julia tiene 5 y Karla tiene 8 ?Qu? ni?a tiene m?s barbies? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m10i9.png', 'assets/m10e9.mp3', 10),
(100, 'Carlitos tiene 4 paletas y Merari tiene 6 paletas ?Qui?n tiene m?s paletas? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m10i10.png', 'assets/m10e10.mp3', 10),
(101, '?Qu? objeto tiene mayor longitud?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/ejer1.png', 'assets/m11e1.mp3', 11),
(102, '?Qu? objeto tiene menor longitud?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/ejer2.png', 'assets/m11e2.mp3', 11),
(103, '?Qu? camino es el m?s largo?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/ejer3.png', 'assets/m11e3.mp3', 11),
(104, '?De que color es el l?piz mas corto?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/ejer4.png', 'assets/m11e4.mp3', 11),
(105, '?Qu? escalera es la m?s larga?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/ejer5.png', 'assets/m11e5.mp3', 11),
(106, '?Cu?l es la persona m?s alta?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/ejer6.png', 'assets/m11e6.mp3', 11),
(107, '?Cu?l es el carro m?s corto?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/ejer7.png', 'assets/m11e7.mp3', 11),
(108, 'Qu? objeto mide m?s?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/ejer8.png', 'assets/m11e8.mp3', 11),
(109, '¿Cual es el gusanito mas grande?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/ejer9.png', 'assets/m11e9.mp3', 11),
(110, '?Qu? dulce es el m?s grande?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/ejer10.png', 'assets/m11e10.mp3', 11),
(111, 'Fanny compro tres jugos de diferente tama?o, ?cu?l envase contiene m?s jugo?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/E1.png', 'assets/m12e1.mp3', 12),
(112, 'Compara los siguientes recipientes, ?a cu?l le cabe m?s tierra? ?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/E2.jpg', 'assets/m12e2.mp3', 12),
(113, '?A cu?l de los siguientes vasos le cabe m?s agua??', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/E3.jpg', 'assets/m12e3.mp3', 12),
(114, '?Qu? recipientes contienen la misma cantidad de agua??', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/E4.png', 'assets/m12e4.mp3', 12),
(115, '?Qu? sabor de jugo hay m?s??', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/E5.jpg', 'assets/m12e5.mp3', 12),
(116, '?En cu?l de los siguientes recipientes hay menos arena??', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/E6.png', 'assets/m12e6.mp3', 12),
(117, '?Cu?l vaso tiene menos agua??', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/E7.png', 'assets/m12e7.mp3', 12),
(118, '¿Cuales de los siguientes frascos tienen la misma cantidad de leche??', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/E8.png', 'assets/m12e8.mp3', 12),
(119, 'Elige el numero de la botella que contiene menos aceite. ?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/E9.png', 'assets/m12e9.mp3', 12),
(120, '?Qu? n?mero de frasco contiene menos mermelada??', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/E10.png', 'assets/m12e10.mp3', 12),
(121, 'Cuenta el numero de mu?ecas que hay en la siguiente colecci?n:?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m13i1.png', 'assets/m13e1.mp3', 13),
(122, 'Roberto quiere coleccionar estas monedas. Si solo tiene 6 monedas, ?Cu?ntas monedas le faltan??', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m13i2.jpg', 'assets/m13e2.mp3', 13),
(123, 'Carlos tenia una colecci?n de 4 trompos pero su mam? le regalo 3. ?Cu?ntos trompos tiene ahora??', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m13i3.jpg', 'assets/m13e3.mp3', 13),
(124, 'Juan colecciona caracoles como los que se muestran en la imagen. Si el quiere tener una colecci?n de 18 caracoles, ?Cu?ntos caracoles le faltan? ', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m13i4.jpg', 'assets/m13e4.mp3', 13),
(125, 'El hermanito de Mar?a tenia una colecci?n de 6 carritos de juguete pero su mam? le regalo 4. ?Cu?ntos trompos tiene ahora?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m13i5.jpg', 'assets/m13e5.mp3', 13),
(126, 'El hermanito de Mar?a tenia una colecci?n de 6 carritos de juguete pero su mama le regalo 4. ?Cu?ntos trompos tiene ahora?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m13i6.png', 'assets/m13e6.mp3', 13),
(127, 'Pepe colecciona mariposas como las que se muestran en la imagen. Si quiere coleccionar 20 mariposas. ?Cu?ntas le faltan?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m13i7.png', 'assets/m13e7.mp3', 13),
(128, '¿Cuántas zapatos hay en la siguiente colección?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m13i8.png', 'assets/m13e8.mp3', 13),
(129, 'Panchito colecciona canicas como las que se muestran en la imagen. Si quiere coleccionar 25 canicas. ¿Cuántas le faltan?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m13i9.png', 'assets/m13e9.mp3', 13),
(130, 'Pepe colecciona carros de juguete como los que se muestran en la imagen. Si el quiere tener una colección de 15 carros. ¿Cuántos carros le faltan?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m13i10.png', 'assets/m13e10.mp3', 13),
(131, '¿Qué pesa más?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m14i1.png', 'assets/m14e1.mp3', 14),
(132, '¿Qué pesa más?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m14i2.png', 'assets/m14e2.mp3', 14),
(133, '¿Qué pesa más?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m14i3.png', 'assets/m14e3.mp3', 14),
(134, '¿Qué pesa más?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m14i4.png', 'assets/m14e4.mp3', 14),
(135, '¿Qué pesa más?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m14i5.png', 'assets/m14e5.mp3', 14),
(136, '¿Qué pesa más?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m14i6.png', 'assets/m14e6.mp3', 14),
(137, '¿Qué pesa más?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m14i7.png', 'assets/m14e7.mp3', 14),
(138, '¿Qué pesa más?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m14i8.png', 'assets/m14e8.mp3', 14),
(139, '¿Cuál de los dos animales pesa más?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m14i9.png', 'assets/m14e9.mp3', 14),
(140, '¿Qué pesa más, una ballena o un pez?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/m14i10.png', 'assets/m14e10.mp3', 14),
(141, 'Si la ranita se encuentra en el número 1 de la recta y se mueve 2 saltos hacia adelante y después 3 saltos más. ​¿En que numero de la recta se encontrara la ranita al final ?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/imagen1.png', 'assets/m15e1.mp3', 15),
(142, 'Si el conejito se encuentra en el número 0 de la recta y se mueve 6 saltos hacia adelante y después 2 saltos hacia atrás​. ¿En que numero de la recta se encontrara al final ?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/imagen2.png', 'assets/m15e2.mp3', 15),
(143, 'Si el canguro se encuentra en el número 5 de la recta y se mueve 3 saltos hacia adelante y después 1 salto más . ¿En que numero de la recta se encontrara la al final?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/imagen3.png', 'assets/m15e3.mp3', 15),
(144, 'Si el Grillo se encuentra en el número 2 de la recta y se mueve 3 saltos hacia adelante, 1 salto hacia atrás y 2 saltos mas hacia adelante.  ¿En qué número de la recta se encontrará el grillo al final?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/imagen4.png', 'assets/m15e4.mp3', 15),
(145, 'Si el Gusanito se encuentra en el número 4 de la recta y se mueve 4 lugares hacia adelante, 2 hacia atrás y 3  mas hacia adelante. ¿En qué número de la recta se encontrará el gusanito al final?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/imagen5.png', 'assets/m15e5.mp3', 15),
(146, 'Si el Delfín se encuentra en el número 3 de la recta y se mueve 6 lugares hacia adelante, 4 hacia atrás y 3  más hacia adelante. ​¿En qué número de la recta se encontrará el delfín al final?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/imagen6.png', 'assets/m15e6.mp3', 15),
(147, 'Si el Perrito se encuentra en el número 8 de la recta y se mueve 2 lugares hacia adelante, 3 hacia atrás y 1 mas hacia adelante. ​¿En qué número de la recta se encontrara la perrito al final?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/imagen7.png', 'assets/m15e7.mp3', 15),
(148, 'Si el caballo que está parado se encuentra en el número 1 de la recta y quiere ir a visitar a su amigo que se encuentra en el número 7 ¿Cuántos lugares tiene que moverse para llegar a su amigo?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/imagen8.png', 'assets/m15e8.mp3', 15),
(149, 'Si el gatito se encuentra en el número 4 de la recta y quiere atrapar al ratón que se encuentra en el número 8. ¿Cuántos lugares se tiene que mover el gatito?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/imagen9.png', 'assets/m15e9.mp3', 15),
(150, 'Si pablo se encuentra en el número 2 de la recta, y va a visitar a sus dos amigas, primero a Lulú y después a Mary. ¿Cuántos lugares se tiene que mover pablo en total?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/imagen10.png', 'assets/m15e10.mp3', 15),
(151, 'De las siguientes imágenes, ¿Cuál es el vaso más grande para poder servir mayor cantidad de agua?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/imagenejer1.png', 'assets/m16e1.mp3', 16),
(152, 'De las siguientes imágenes, ¿Cuál de ellas es una portería pequeña?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/imagenejer2.png', 'assets/m16e2.mp3', 16),
(153, 'Adriana fue a la tienda de deportes para comprarle una pelota a su hermano que juega futbol ¿Qué pelota deberá elegir?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/imagenejer3.png', 'assets/m16e3.mp3', 16),
(154, 'Ana fue al mercado por alguna fruta pequeña , ¿Cuál de las siguientes debería llevar?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/imagenejer4.png', 'assets/m16e4.mp3', 16),
(155, 'Los padres de Alejandro y Alex  quieren comprar una nueva cama para ambos ¿Cuál de las siguientes deberían comprar?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/imagenejer5.png', 'assets/m16e5.mp3', 16),
(156, 'Los padres de Alejandra le permitirán tener una mascota solo si es de raza pequeña ¿Cuál de las siguientes podría comprar Alejandra?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/imagenejer6.png', 'assets/m16e6.mp3', 16),
(157, '¿Cuál es la moneda de mayor valor?​', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/imagenejer7.png', 'assets/m16e7.mp3', 16),
(158, '¿Cuál de los siguientes es mas pequeño?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/imagenejer8.png', 'assets/m16e8.mp3', 16),
(159, '¿Cuál de los siguientes animales es más grande?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/imagenejer9.png', 'assets/m16e9.mp3', 16),
(160, '¿Cuál de los siguientes vehículos es más pequeño?', 'http://104.197.200.77/apirest/assets/uploads/images_catalago/imagenejer10.png', 'assets/m16e10.mp3', 16);

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
(6, '$10', 'Error', 2, 0),
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
(60, '1', 'Error', 20, 0),
(61, '2', 'Error', 21, 0),
(62, '5', 'Correcto', 21, 1),
(63, '4', 'Error', 21, 0),
(64, 'Cuadrado', 'Error', 22, 0),
(65, 'C?rculo', 'Error', 22, 0),
(66, 'Tr?angulo', 'Correcto', 22, 1),
(67, 'Cuadrado', 'Correcto', 23, 1),
(68, 'C?rculo', 'Error', 23, 0),
(69, 'Tr?angulo', 'Error', 23, 0),
(70, '1', 'Error', 24, 0),
(71, '2', 'Error', 24, 0),
(72, '3', 'Correcto', 24, 1),
(73, '12', 'Error', 25, 0),
(74, '9', 'Correcto', 25, 1),
(75, '2', 'Error', 25, 0),
(76, 'Cuadrado', 'Error', 26, 0),
(77, 'C?rculo', 'Error', 26, 0),
(78, 'Rombo', 'Correcto', 26, 1),
(79, 'Rect?ngulo', 'Correcto', 27, 1),
(80, 'C?rculo', 'Error', 27, 0),
(81, 'Cuadrado', 'Error', 27, 0),
(82, 'Cuadrado', 'Error', 28, 0),
(83, 'C?rculo', 'Error', 28, 0),
(84, 'Tr?angulo', 'Correcto', 28, 1),
(85, 'Cuadrado', 'Error', 29, 0),
(86, 'C?rculo', 'Correcto', 29, 1),
(87, 'Tr?angulo', 'Error', 29, 0),
(88, 'Cuadrado', 'Error', 30, 0),
(89, 'C?rculo', 'Correcto', 30, 1),
(90, 'Tr?angulo', 'Error', 30, 0),
(91, '6', 'Error', 31, 0),
(92, '7', 'Correcto', 31, 1),
(93, '8', 'Error', 31, 0),
(94, '9', 'Correcto', 32, 1),
(95, '4', 'Error', 32, 0),
(96, '6', 'Error', 32, 0),
(97, '34', 'Error', 33, 0),
(98, '38', 'Error', 33, 0),
(99, '36', 'Correcto', 33, 1),
(100, '12', 'Error', 34, 0),
(101, '18', 'Correcto', 34, 1),
(102, '15', 'Error', 34, 0),
(103, '36', 'Correcto', 35, 1),
(104, '32', 'Error', 35, 0),
(105, '39', 'Error', 35, 0),
(106, '15', 'Error', 36, 0),
(107, '16', 'Error', 36, 0),
(108, '14', 'Correcto', 36, 1),
(109, '26', 'Error', 37, 0),
(110, '24', 'Error', 37, 0),
(111, '27', 'Correcto', 37, 1),
(112, '19', 'Error', 38, 0),
(113, '20', 'Correcto', 38, 1),
(114, '22', 'Error', 38, 0),
(115, '12', 'Error', 39, 0),
(116, '10', 'Correcto', 39, 1),
(117, '8', 'Error', 39, 0),
(118, '23', 'Correcto', 40, 1),
(119, '14', 'Error', 40, 0),
(120, '10', 'Error', 40, 0),
(121, '1', 'Correcto', 41, 1),
(122, '3', 'Error', 41, 0),
(123, '4', 'Error', 41, 0),
(124, '41', 'Error', 42, 0),
(125, '28', 'Error', 42, 0),
(126, '27', 'Correcto', 42, 1),
(127, '4', 'Error', 43, 0),
(128, '3', 'Correcto', 43, 1),
(129, '15', 'Error', 43, 0),
(130, '72', 'Error', 44, 0),
(131, '73', 'Correcto', 44, 1),
(132, '81', 'Error', 44, 0),
(133, '6', 'Correcto', 45, 1),
(134, '7', 'Error', 45, 0),
(135, '10', 'Error', 45, 0),
(136, '26', 'Error', 46, 0),
(137, '15', 'Error', 46, 0),
(138, '14', 'Correcto', 46, 1),
(139, '9', 'Error', 47, 0),
(140, '3', 'Correcto', 47, 1),
(141, '4', 'Error', 47, 0),
(142, '5', 'Correcto', 48, 1),
(143, '11', 'Error', 48, 0),
(144, '6', 'Error', 48, 0),
(145, '20', 'Error', 49, 0),
(146, '15', 'Error', 49, 0),
(147, '8', 'Correcto', 49, 1),
(148, '20', 'Error', 50, 0),
(149, '15', 'Error', 50, 0),
(150, '19', 'Correcto', 50, 1),
(151, '3', 'Correcto', 51, 1),
(152, '2', 'Error', 51, 0),
(153, '5', 'Error', 51, 0),
(154, '3', 'Error', 52, 0),
(155, '4', 'Correcto', 52, 1),
(156, '6', 'Error', 52, 0),
(157, '3', 'Correcto', 53, 1),
(158, '4', 'Error', 53, 0),
(159, '2', 'Error', 53, 0),
(160, '6', 'Error', 54, 0),
(161, '5', 'Error', 54, 0),
(162, '4', 'Correcto', 54, 1),
(163, '8', 'Error', 55, 0),
(164, '5', 'Correcto', 55, 1),
(165, '6', 'Error', 55, 0),
(166, '4', 'Correcto', 56, 1),
(167, '3', 'Error', 56, 0),
(168, '2', 'Error', 56, 0),
(169, '7', 'Error', 57, 0),
(170, '3', 'Error', 57, 0),
(171, '2', 'Correcto', 57, 1),
(172, '5', 'Error', 58, 0),
(173, '3', 'Correcto', 58, 1),
(174, '6', 'Error', 58, 0),
(175, '3', 'Correcto', 59, 1),
(176, '4', 'Error', 59, 0),
(177, '2', 'Error', 59, 0),
(178, '4', 'Correcto', 60, 1),
(179, '5', 'Error', 60, 0),
(180, '3', 'Error', 60, 0),
(182, 'Ninas', 'Correcto', 61, 1),
(183, 'Vacas', 'Correcto', 62, 1),
(184, 'Gallinas', 'Error', 62, 0),
(185, 'Platano', 'Error', 63, 0),
(186, 'Sandia ', 'Correcto', 63, 1),
(187, 'Azules ', 'Correcto', 64, 1),
(188, 'Verdes', 'Error', 64, 0),
(189, 'Anaranjadas', 'Error', 65, 0),
(190, 'Amarillas', 'Correcto', 65, 1),
(191, 'Rojos', 'Correcto', 66, 1),
(192, 'Blancos', 'Error', 66, 0),
(193, 'Negros', 'Error', 66, 0),
(194, 'Azul', 'Error', 67, 0),
(195, 'Amarillo', 'Correcto', 67, 1),
(196, 'Rojo', 'Error', 67, 0),
(197, 'Mochilas', 'Error', 68, 0),
(198, 'Cuadernos', 'Error', 68, 0),
(199, 'Lapices', 'Correcto', 68, 1),
(200, 'Coches', 'Correcto', 69, 1),
(201, 'Taxis', 'Error', 69, 0),
(202, '1', 'Correcto', 70, 1),
(203, '2', 'Error', 70, 0),
(204, '4,2,3,1', 'Correcto', 71, 1),
(205, '1,2,3,4', 'Error', 71, 0),
(206, '2,3,1,2', 'Error', 71, 0),
(207, '1,2,3,4', 'Error', 72, 0),
(208, '1,4,3,2', 'Correcto', 72, 1),
(209, '2,3,4,1', 'Correcto', 73, 1),
(210, '2,1,4,3', 'Error', 73, 0),
(211, '1,2,3,4', 'Error', 73, 0),
(212, '1,3,2', 'Correcto', 74, 1),
(213, '1,2,3', 'Error', 74, 0),
(214, '2,3,1', 'Correcto', 75, 1),
(215, '1,3,2', 'Error', 75, 0),
(216, '4,3,2,1', 'Error', 76, 0),
(217, '1,2,3,4', 'Error', 76, 0),
(218, '1,2,3,4', 'Correcto', 76, 1),
(219, '3,4,1,2', 'Correcto', 77, 1),
(220, '1,2,3,4', 'Error', 77, 0),
(221, '3,4,2,1', 'Error', 78, 0),
(222, '1,2,3,4', 'Correcto', 78, 1),
(223, '1,2,3,4', 'Error', 79, 0),
(224, '4,2,1,3', 'Correcto', 79, 1),
(225, '2,4,3,1', 'Error', 79, 0),
(226, '1,2,3,4', 'Correcto', 80, 1),
(227, '2,3,1,4', 'Error', 80, 0),
(228, '$47', 'Error', 81, 0),
(229, '$43', 'Correcto', 81, 1),
(230, '$41', 'Error', 81, 0),
(231, '10', 'Correcto', 82, 1),
(232, '5', 'Error', 82, 0),
(233, '8', 'Error', 82, 0),
(234, '2', 'Correcto', 83, 1),
(235, '5', 'Error', 83, 0),
(236, '1', 'Error', 83, 0),
(237, '1', 'Correcto', 84, 1),
(238, '2', 'Error', 84, 0),
(239, '3', 'Error', 84, 0),
(240, '1', 'Error', 85, 0),
(241, '2', 'Correcto', 85, 1),
(242, '3', 'Error', 85, 0),
(243, '1,4', 'Correcto', 86, 1),
(244, '2,3', 'Error', 86, 0),
(245, '3,1', 'Error', 86, 0),
(246, 'Sandia ', 'Error', 87, 0),
(247, 'Pl?tano', 'Correcto', 87, 1),
(248, 'Manzana', 'Error', 87, 0),
(249, 'Gorra negra', 'Error', 88, 0),
(250, 'Gorra azul', 'Correcto', 88, 1),
(251, 'Gorra caf', 'Error', 88, 0),
(252, 'Gorra roja', 'Error', 88, 0),
(253, '6', 'Correcto', 89, 1),
(254, '4', 'Error', 89, 0),
(255, '8', 'Error', 89, 0),
(256, '1,3', 'Correcto', 90, 1),
(257, '4,1', 'Error', 90, 0),
(258, '2,3', 'Error', 90, 0),
(259, ' Juan?', 'Error', 91, 0),
(260, 'Pedro?', 'Correcto', 91, 1),
(261, ' Mario?', 'Error', 92, 0),
(262, 'Andres?', 'Correcto', 92, 1),
(263, 'Daniel?', 'Error', 93, 0),
(264, 'Ana?', 'Correcto', 93, 1),
(265, 'Jos', 'Error', 94, 0),
(266, 'Marcos?', 'Correcto', 94, 1),
(267, 'Cecilia?', 'Error', 95, 0),
(268, 'Karen?', 'Error', 95, 0),
(269, 'Claudia?', 'Correcto', 95, 1),
(270, 'Monserrat?', 'Error', 96, 0),
(271, 'Ester?', 'Correcto', 96, 1),
(272, 'Camisa Amarilla?', 'Error', 97, 0),
(273, 'Camisa Verde?', 'Correcto', 97, 1),
(274, 'Pepito?', 'Error', 98, 0),
(275, 'Panchito?', 'Correcto', 98, 1),
(276, 'Ana?', 'Error', 99, 0),
(277, 'Julia?', 'Error', 99, 0),
(278, ' Karla?', 'Correcto', 99, 1),
(279, 'Carlitos?', 'Error', 100, 0),
(280, ' Merari?', 'Correcto', 100, 1),
(281, 'L?piz', 'Error', 101, 0),
(282, 'Cuaderno', 'Correcto', 101, 1),
(283, 'Ambos ', 'Error', 101, 0),
(284, 'Bol?grafo?', 'Correcto', 102, 1),
(285, ' Ambos ', 'Error', 102, 0),
(286, 'Escoba', 'Error', 102, 0),
(287, 'B ', 'Error', 103, 0),
(288, 'A y B?', 'Error', 103, 0),
(289, ' A', 'Correcto', 103, 0),
(290, 'Amarillo?', 'Correcto', 104, 1),
(291, ' Rojo ', 'Error', 104, 0),
(292, ' Verde', 'Error', 104, 0),
(293, 'Ambas ', 'Error', 105, 0),
(294, 'Negra ', 'Correcto', 105, 1),
(295, ' Caf', 'Error', 105, 0),
(296, '?Nino ', 'Error', 106, 0),
(297, 'Ambas ', 'Error', 106, 0),
(298, 'Adulto', 'Correcto', 106, 1),
(299, 'Rojo ', 'Correcto', 107, 1),
(300, 'Ambos ', 'Error', 107, 0),
(301, 'Negro', 'Error', 107, 0),
(302, 'Clip ', 'Error', 108, 0),
(303, 'Cerillo ', 'Correcto', 108, 1),
(304, ' Ambos', 'Error', 108, 0),
(305, 'Amarillo ', 'Correcto', 109, 1),
(306, 'Verde ', 'Error', 109, 0),
(307, ' Verde y Amarillo', 'Error', 109, 0),
(308, 'Ambos ', 'Error', 110, 0),
(309, ' Paleta ', 'Correcto', 110, 1),
(310, 'Caramelo', 'Correcto', 110, 0),
(311, '1', 'Error', 111, 0),
(312, '2', 'Error', 111, 0),
(313, '3', 'Correcto', 111, 1),
(314, '1', 'Error', 112, 0),
(315, '2', 'Error', 112, 0),
(316, '3', 'Correcto', 112, 1),
(317, '1', 'Error', 113, 0),
(318, '2', 'Correcto', 113, 1),
(319, '3', 'Error', 113, 0),
(320, '2, 4 Y 6', 'Correcto', 114, 1),
(321, '1, 5 Y 3', 'Error', 114, 0),
(322, '1, 2 Y 3', 'Error', 114, 0),
(323, 'Uva', 'Correcto', 115, 1),
(324, 'Naranja', 'Error', 115, 0),
(325, '1', 'Error', 116, 0),
(326, '2', 'Error', 116, 0),
(327, '3', 'Correcto', 116, 1),
(328, '1', 'Correcto', 117, 1),
(329, '2', 'Error', 117, 0),
(330, '3', 'Error', 117, 0),
(331, '1 y 2', 'Error', 118, 0),
(332, '2 Y 3', 'Error', 118, 0),
(333, '3 Y 1 ', 'Correcto', 118, 1),
(334, '1', 'Error', 119, 0),
(335, '2', 'Error', 119, 0),
(336, '3', 'Correcto', 119, 1),
(337, '1', 'Error', 120, 0),
(338, '2', 'Error', 120, 0),
(339, '3', 'Correcto', 120, 1),
(340, '12', 'Correcto', 121, 1),
(341, '15', 'Error', 121, 0),
(342, '10', 'Error', 121, 0),
(343, '2', 'Correcto', 122, 1),
(344, '15', 'Error', 122, 0),
(345, '10', 'Error', 122, 0),
(346, '8', 'Error', 123, 0),
(347, '7', 'Correcto', 123, 1),
(348, '10', 'Error', 123, 0),
(349, '11', 'Error', 124, 0),
(350, '6', 'Correcto', 124, 1),
(351, '7', 'Error', 124, 0),
(352, '8', 'Error', 125, 0),
(353, '3', 'Error', 125, 0),
(354, '10', 'Correcto', 125, 1),
(355, '18', 'Error', 126, 0),
(356, '9', 'Error', 126, 0),
(357, '13', 'Correcto', 126, 1),
(358, '17', 'Error', 127, 0),
(359, '19', 'Error', 127, 0),
(360, '14', 'Correcto', 127, 1),
(361, '9', 'Correcto', 128, 1),
(362, '18', 'Error', 128, 0),
(363, '11', 'Error', 128, 0),
(364, '1', 'Error', 129, 0),
(365, '13', 'Correcto', 129, 1),
(366, '11', 'Error', 129, 0),
(367, '8', 'Error', 130, 0),
(368, '9', 'Correcto', 130, 1),
(369, '7', 'Error', 130, 0),
(370, 'Carro  ', 'Error', 131, 0),
(371, ' Ambos ', 'Error', 131, 0),
(372, 'Barco', 'Correcto', 131, 1),
(373, 'Len  ', 'Error', 132, 0),
(374, 'Elefante  ', 'Correcto', 132, 1),
(375, 'Ambos', 'Error', 132, 0),
(376, 'Ambas ', 'Error', 133, 0),
(377, ' Bicicleta ', 'Error', 133, 0),
(378, 'Moto', 'Correcto', 133, 1),
(379, 'Manzanas ', 'Correcto', 134, 1),
(380, 'Ambas ', 'Error', 134, 0),
(381, 'Peras', 'Error', 134, 0),
(382, 'Azcar', 'Error', 135, 0),
(383, ' Ambas', 'Error', 135, 0),
(384, ' Arroz', 'Correcto', 135, 1),
(385, '1', 'Error', 136, 0),
(386, 'Ambos ', 'Error', 136, 0),
(387, '5', 'Correcto', 136, 1),
(388, '2 pollos ', 'Correcto', 137, 1),
(389, ' 1 Pollo ', 'Error', 137, 0),
(390, 'Ambos', 'Error', 137, 0),
(391, 'Ambas ', 'Error', 138, 0),
(392, '2 piernas', 'Error', 138, 0),
(393, ' 6 piernas', 'Correcto', 138, 1),
(394, 'Panda ', 'Correcto', 139, 1),
(395, ' Ambos ', 'Error', 139, 0),
(396, 'Zorro', 'Error', 139, 0),
(397, 'Pez ', 'Error', 140, 0),
(398, ' Ballena ', 'Correcto', 140, 1),
(399, 'Ambos', 'Error', 140, 0),
(400, '5', 'Error', 141, 0),
(401, '6', 'Correcto', 141, 1),
(402, '7', 'Error', 141, 0),
(403, '5', 'Error', 142, 0),
(404, '6', 'Error', 142, 0),
(405, '4', 'Correcto', 142, 1),
(406, '10', 'Error', 143, 0),
(407, '9', 'Correcto', 143, 1),
(408, '8', 'Error', 143, 0),
(409, '5', 'Error', 144, 0),
(410, '7', 'Error', 144, 0),
(411, '6', 'Correcto', 144, 1),
(412, '9', 'Correcto', 145, 1),
(413, '7', 'Error', 145, 0),
(414, '8', 'Error', 145, 0),
(415, '7', 'Error', 146, 0),
(416, '4', 'Error', 146, 0),
(417, '8', 'Correcto', 146, 1),
(418, '8', 'Correcto', 147, 1),
(419, '3', 'Error', 147, 0),
(420, '7', 'Error', 147, 0),
(421, '8', 'Error', 148, 0),
(422, '6', 'Correcto', 148, 1),
(423, '7', 'Error', 148, 0),
(424, '3', 'Error', 149, 0),
(425, '4', 'Correcto', 149, 1),
(426, '5', 'Error', 149, 0),
(427, '2', 'Error', 150, 0),
(428, '5', 'Error', 150, 0),
(429, '7', 'Correcto', 150, 1),
(430, '2', 'Error', 151, 0),
(431, '3', 'Error', 151, 0),
(432, '1', 'Correcto', 151, 1),
(433, '2', 'Error', 152, 0),
(434, '1', 'Correcto', 152, 1),
(435, 'Ninguna', 'Error', 152, 0),
(436, 'Pequeno', 'Error', 153, 0),
(437, 'Grande', 'Error', 153, 0),
(438, 'Mediano', 'Correcto', 153, 1),
(439, 'Sandia', 'Error', 154, 0),
(440, 'Pina', 'Error', 154, 0),
(441, 'Manzanas ', 'Correcto', 154, 1),
(442, '2', 'Correcto', 155, 1),
(443, '1', 'Error', 155, 0),
(444, '3', 'Error', 155, 0),
(445, '2', 'Error', 156, 0),
(446, '1', 'Correcto', 156, 1),
(447, '3', 'Error', 156, 0),
(448, '3', 'Error', 157, 0),
(449, '2', 'Error', 157, 0),
(450, '1', 'Correcto', 157, 1),
(451, '1', 'Error', 158, 0),
(452, 'Ninguno ', 'Error', 158, 0),
(453, '2', 'Correcto', 158, 1),
(454, 'Len  ', 'Error', 159, 0),
(455, 'Cebra', 'Error', 159, 0),
(456, 'Jirafa ', 'Correcto', 159, 1);

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
(27, 1, 46),
(28, 1, 2),
(29, 1, 5),
(30, 1, 6),
(31, 1, 5),
(32, 1, 5),
(33, 1, 2),
(34, 1, 3),
(35, 1, 2),
(36, 1, 6),
(37, 1, 6);

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
(2, 'ALUMNO'),
(3, 'nombre');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=457;

--
-- AUTO_INCREMENT de la tabla `resultados`
--
ALTER TABLE `resultados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
