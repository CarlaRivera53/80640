-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 12-12-2022 a las 20:13:24
-- Versión del servidor: 8.0.31
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_sw`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monumentos`
--

CREATE TABLE `monumentos` (
  `id` bigint UNSIGNED NOT NULL,
  `paisMonumento` varchar(30) DEFAULT NULL,
  `nombreMonumento` varchar(100) DEFAULT NULL,
  `anioConstruccion` varchar(4) DEFAULT NULL,
  `anioInaguracion` varchar(4) DEFAULT NULL,
  `altura` int DEFAULT NULL,
  `largo` int DEFAULT NULL,
  `materiales` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `monumentos`
--

INSERT INTO `monumentos` (`id`, `paisMonumento`, `nombreMonumento`, `anioConstruccion`, `anioInaguracion`, `altura`, `largo`, `materiales`) VALUES
(1, 'Mexico', 'Angel de la Independencia', '1900', '1910', 45, 52, 'marmol, bronce y oro'),
(2, 'Italia', 'Coliseo Romano', ' 72-', '80 ', 48, 86, 'son bloques de travertino, hormigón, madera, ladrillo, piedra (toba), mármol y estuco.'),
(3, 'Italia', 'Torre Inclinada de Pisa ', '1173', '1372', 60, 15, 'Marmol Blanco'),
(4, 'Italia', 'Basilica San Marco ', '828', '1094', 98, 76, 'mármoles orientales, esculturas, bronces, dorados, mosaicos, columnas y capiteles. No tiene la iluminación de Santa Sofía, pero destaca por la decoración que cubre la construcción de ladrillo, con már'),
(5, 'Italia', 'La catedral De Monreale', '1267', '1172', 24, 102, 'Barro, gres extrusionado y ladrillo cara vista.'),
(6, 'Italia', 'El Ponte Vecchio', '1335', '1345', 30, 67, 'Piedra'),
(7, 'Italia', 'El Duomo', '1386', '1386', 108, 157, 'ladrillo y mármol de Candoglia'),
(8, 'Italia', 'La Arena', '30 ', '30', 31, 140, 'piedra caliza blanca y rosa de Valpolicella'),
(9, 'Italia', 'La Fontana de Trevi', '537', '1453', 25, 19, 'fue construida en su totalidad en mármol de travertino'),
(10, 'Italia', 'El Castel dell\'Ovo', '1128', 'XVI', 35, 200, 'Ladrillo, Piedra'),
(11, 'Japón ', 'Templo Sensô-ji', '628', '645', 60, 1, 'Piedra, Madera'),
(12, 'Japón ', 'Fushimi Inari Taisha', '711 ', '711 ', 60, 4, 'Bambú, madera'),
(13, 'Japón ', 'Tumba y estatua de Minamoto no Yoritomo', '1199', '1199', 2, 4, 'Piedra'),
(14, 'Japón ', 'Castillo de Odawara', '1418', '1706', 40, 4, 'Piedra, madera, metal, barro'),
(15, 'Japón ', 'Castillo de Osaka y estatua de Toyotomi Hideyoshi', 'XVI', '1583', 8, 4, 'Madera, piedra, yeso'),
(16, 'Japón ', 'Museo Edo Tokyo', '1992', '1993', 20, 60, 'concreto, ladrillos'),
(17, 'Japón ', 'Nikkô Tôshô-gu', '1636', '1617', 5, 40, 'madera, bambu, metal'),
(18, 'Japón ', 'Gassho-zukuri de Ogimachi', '1', '1', 4, 6, 'madera, cuerda, palmas'),
(19, 'Japón ', 'Fuerte Goryôkaku', '1857', '1866', 90, 10, 'Piedra,madera'),
(20, 'Estados Unidos ', 'National Mall ', '1791', '1793', 300, 59, 'Piedra, mármol, metal'),
(21, 'Estados Unidos ', 'Monumento a Washington', '1848', ' 188', 169, 0, 'mármol '),
(22, 'Estados Unidos ', 'Monumento a Lincoln ', '1914', '1922', 9, 40, 'Mármol blanco de Georgia'),
(23, 'Estados Unidos ', 'Monte Rushmore', '1927', '1941', 18, 5, 'Piedra de la montaña '),
(24, 'Estados Unidos ', 'La Casa Blanca ', '1792', '1800', 21, 5, 'concreto, ladrillo'),
(25, 'Estados Unidos ', 'Hollywood ', '1903', '1910', 108, 79, 'Madera, metal'),
(26, 'Estados Unidos ', 'Golden Gate Bridge', '1933', '1937', 227, 2, 'metal,varillas,pernos'),
(27, 'Estados Unidos ', 'Estatua de la Libertad ', '1886', '1924', 93, 4, 'Cobre, Oro, Acero, Fundición de hierro'),
(28, 'Estados Unidos ', 'Bay Bridge', '1933', '1936', 160, 7, 'metal, varillas'),
(29, 'China', 'Muralla China ', '5', '5', 7, 21, 'Piedra'),
(30, 'Turquia', 'Göbekli Tepe', '8200', '8200', 10, 30, 'Piedra'),
(31, 'India', 'Estatua de la Unidad ', '2013', '2018', 182, 20, 'Los materiales para su construcción fueron el acero, hormigón armado de cemento y revestimiento de bronce.'),
(32, 'Mexico', 'Monumento a Los Niños Heroes', '1947', '1952', 50, 25, 'mármol, bronce'),
(33, 'Mexico', 'Monumento a la Revolución', '1910', '1938', 67, 50, 'cantera y cobre patinado'),
(34, 'Francia', 'Arco del Triunfo ', '1806', '1836', 50, 45, 'caliza luteciana'),
(35, 'Mexico', 'Hemiciclo a Benito Juárez', '1910', '1910', 50, 50, 'mármol'),
(36, 'Mexico', 'Estela de Luz', '2010', '2012', 104, 12, 'Acero y placas de cuarzo'),
(37, 'Francia', 'Cathédrale Notre-Dame', ' 116', '1345', 69, 130, '  marmol, piedra, vidrio, ladrillo'),
(38, 'Mexico', 'Monumento a Cuauhtémoc', '1878', '1887', 5, 6, 'Piedra volcánica, cantera, mármol y bronce.'),
(39, 'Francia', 'Grand Palais Éphémère', '2020', '2021', 20, 10, 'Cristal, metal'),
(40, 'Francia', 'Grand Palais', '1897', '1900', 60, 240, '  acristalamiento de su cubierta, su estructura de hierro y acero vista, y el uso del hormigón armado.'),
(41, 'Mexico', 'Monumento a Cristóbal Colón', '1873', '1892', 15, 10, 'Bronce y mármol'),
(42, 'Francia', 'La Torre Eiffel', '1887', '1889', 330, 270, ' Hierro pudelado'),
(43, 'Francia', 'Musée d\'Orsay', '1848', ' 198', 32, 188, 'Vidrio y hierro'),
(44, 'Mexico', 'Monumento a La Raza', '1930', '1940', 50, 50, 'Concreto'),
(45, 'Francia', 'Museo del Louvre', '1793', '1793', 20, 210, 'vidrio, metal, ladrillo'),
(46, 'Mexico', 'Monumento A Los Indios Verdes', '1890', '1891', 4, 2, 'Escultura en bronce'),
(47, 'Francia', 'Opera Nacional de Paris ', ' 166', '  18', 80, 110, 'metal, ladrillo, vidrio'),
(48, 'Francia', 'Sainte-Chapelle', '1242', ' 124', 75, 36, 'Vidrio, piedra, ladrillo'),
(49, 'Peru', 'Arco de Santa Clara', '1835', '1835', 20, 12, 'ormigon'),
(50, 'Peru', 'Cristo del Pacifico', '2010', '2011', 37, 15, 'Se desconoce'),
(51, 'Peru', 'Paseo de las Musas', '1994', '1995', 0, 0, 'Marmol'),
(52, 'Peru', 'Paseo Yortuque', '2014', '2015', 0, 1600, 'Bronce'),
(53, 'Peru', 'Mirador Puma Uta', '2003', '2004', 20, 12, 'piedra y cemento'),
(54, 'Peru', 'Rocas Sagradas', '0', '1902', 3, 7, 'Se desconocen'),
(55, 'Peru', 'Monumento Pachacuteq', '1992', '1993', 11, 3, 'Piedra'),
(56, 'Peru', 'Ovalo Miguel Grau', '1945', '1946', 20, 8, 'material petreo'),
(57, 'Peru', 'Santuario Historico Chacamarca', '1974', '1976', 0, 2500, 'alto andino, pajonal denso, bofedales y cesped de Puna');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `monumentos`
--
ALTER TABLE `monumentos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `monumentos`
--
ALTER TABLE `monumentos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
