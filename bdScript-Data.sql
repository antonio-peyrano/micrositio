-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 07-02-2017 a las 05:28:52
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `micrositio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catColonias`
--

CREATE TABLE `catColonias` (
  `idColonia` int(11) NOT NULL,
  `Colonia` varchar(250) CHARACTER SET utf8 NOT NULL,
  `CodigoPostal` varchar(250) CHARACTER SET utf8 NOT NULL,
  `Ciudad` varchar(250) CHARACTER SET utf8 NOT NULL,
  `Estado` varchar(250) CHARACTER SET utf8 NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `catColonias`
--

INSERT INTO `catColonias` (`idColonia`, `Colonia`, `CodigoPostal`, `Ciudad`, `Estado`, `Status`) VALUES
(1, 'Ciudad Victoria Centro', '87000', 'Victoria', 'Tamaulipas', 0),
(2, 'Los Fresnos', '87000', 'Victoria', 'Tamaulipas', 0),
(3, 'Tránsito', '87010', 'Victoria', 'Tamaulipas', 0),
(4, 'José López Portillo', '87010', 'Victoria', 'Tamaulipas', 0),
(5, 'Enrique Cárdenas González', '87010', 'Victoria', 'Tamaulipas', 0),
(6, 'Emilio Caballero', '87014', 'Victoria', 'Tamaulipas', 0),
(7, 'General Lucio Blanco', '87014', 'Victoria', 'Tamaulipas', 0),
(8, '77 Batallón de Infantería', '87014', 'Victoria', 'Tamaulipas', 0),
(9, 'Luis Donaldo Colosio', '87014', 'Victoria', 'Tamaulipas', 0),
(10, 'El Mirador', '87014', 'Victoria', 'Tamaulipas', 0),
(11, 'Privada San Ignacio', '87015', 'Victoria', 'Tamaulipas', 0),
(12, 'Las Enfermeras', '87015', 'Victoria', 'Tamaulipas', 0),
(13, 'Estrella', '87015', 'Victoria', 'Tamaulipas', 0),
(14, 'Sierra Vista', '87016', 'Victoria', 'Tamaulipas', 0),
(15, 'Vamos Tamaulipas', '87016', 'Victoria', 'Tamaulipas', 0),
(16, 'Cañón de La Peregrina', '87016', 'Victoria', 'Tamaulipas', 0),
(17, 'Valle Esmeralda', '87018', 'Victoria', 'Tamaulipas', 0),
(18, 'Agua Fría I', '87018', 'Victoria', 'Tamaulipas', 0),
(19, 'Praderas de  Victoria', '87018', 'Victoria', 'Tamaulipas', 0),
(20, 'Las Montañas', '87018', 'Victoria', 'Tamaulipas', 0),
(21, 'Colinas de San Roberto', '87018', 'Victoria', 'Tamaulipas', 0),
(22, 'Agua Fría II', '87018', 'Victoria', 'Tamaulipas', 0),
(23, 'Colinas del Valle', '87018', 'Victoria', 'Tamaulipas', 0),
(24, 'Industrial', '87018', 'Victoria', 'Tamaulipas', 0),
(25, 'Lomas de Calamaco', '87018', 'Victoria', 'Tamaulipas', 0),
(26, 'Framboyanes', '87018', 'Victoria', 'Tamaulipas', 0),
(27, 'La Libertad II', '87018', 'Victoria', 'Tamaulipas', 0),
(28, 'Burócratas Municipales II', '87019', 'Victoria', 'Tamaulipas', 0),
(29, 'La Libertad', '87019', 'Victoria', 'Tamaulipas', 0),
(30, 'La Presita', '87019', 'Victoria', 'Tamaulipas', 0),
(31, 'Monte Alto', '87019', 'Victoria', 'Tamaulipas', 0),
(32, 'Rincón del Valle', '87019', 'Victoria', 'Tamaulipas', 0),
(33, 'Villas del Pedregal', '87019', 'Victoria', 'Tamaulipas', 0),
(34, 'Rincón del Valle Elite', '87019', 'Victoria', 'Tamaulipas', 0),
(35, 'Norberto Treviño Zapata', '87020', 'Victoria', 'Tamaulipas', 0),
(36, 'Adolfo López Mateos', '87020', 'Victoria', 'Tamaulipas', 0),
(37, 'Valle Escondido', '87020', 'Victoria', 'Tamaulipas', 0),
(38, 'Valle de Aguayo', '87020', 'Victoria', 'Tamaulipas', 0),
(39, 'Residencial Santa María', '87023', 'Victoria', 'Tamaulipas', 0),
(40, 'Haciendas del Colibrí', '87023', 'Victoria', 'Tamaulipas', 0),
(41, 'Puerta de Hierro', '87023', 'Victoria', 'Tamaulipas', 0),
(42, 'Agropecuario los Olivos', '87023', 'Victoria', 'Tamaulipas', 0),
(43, 'Lilia Zozaya', '87023', 'Victoria', 'Tamaulipas', 0),
(44, 'Lázaro Cárdenas', '87023', 'Victoria', 'Tamaulipas', 0),
(45, 'San Gabriel', '87023', 'Victoria', 'Tamaulipas', 0),
(46, 'Residencial Campestre Janambres', '87023', 'Victoria', 'Tamaulipas', 0),
(47, 'Azteca', '87024', 'Victoria', 'Tamaulipas', 0),
(48, 'Ignacio Zaragoza', '87024', 'Victoria', 'Tamaulipas', 0),
(49, 'Granjas Campestre', '87024', 'Victoria', 'Tamaulipas', 0),
(50, 'Vista Azul', '87024', 'Victoria', 'Tamaulipas', 0),
(51, 'Valle Oriente', '87024', 'Victoria', 'Tamaulipas', 0),
(52, 'ITACE', '87024', 'Victoria', 'Tamaulipas', 0),
(53, 'Teocaltiche', '87024', 'Victoria', 'Tamaulipas', 0),
(54, 'Santa Fe', '87024', 'Victoria', 'Tamaulipas', 0),
(55, 'Privanzas II', '87024', 'Victoria', 'Tamaulipas', 0),
(56, 'San Alberto', '87024', 'Victoria', 'Tamaulipas', 0),
(57, 'Burócratas Municipales', '87024', 'Victoria', 'Tamaulipas', 0),
(58, 'Mariano Matamoros', '87024', 'Victoria', 'Tamaulipas', 0),
(59, 'Bosques del Sur', '87024', 'Victoria', 'Tamaulipas', 0),
(60, 'Nueva Aurora', '87024', 'Victoria', 'Tamaulipas', 0),
(61, 'Revolución Verde', '87024', 'Victoria', 'Tamaulipas', 0),
(62, 'Santa María', '87024', 'Victoria', 'Tamaulipas', 0),
(63, 'Las Alamedas', '87024', 'Victoria', 'Tamaulipas', 0),
(64, 'Pedregal Campestre', '87024', 'Victoria', 'Tamaulipas', 0),
(65, 'Bosque Real', '87024', 'Victoria', 'Tamaulipas', 0),
(66, 'Doctores', '87024', 'Victoria', 'Tamaulipas', 0),
(67, 'Poza Madre', '87024', 'Victoria', 'Tamaulipas', 0),
(68, 'Privada San Miguel', '87024', 'Victoria', 'Tamaulipas', 0),
(69, 'Los Encinos Campestre', '87024', 'Victoria', 'Tamaulipas', 0),
(70, 'Residencial la Misión', '87025', 'Victoria', 'Tamaulipas', 0),
(71, 'Bosques Campestre', '87025', 'Victoria', 'Tamaulipas', 0),
(72, 'Haciendas del Sol', '87025', 'Victoria', 'Tamaulipas', 0),
(73, 'Bugambilias', '87025', 'Victoria', 'Tamaulipas', 0),
(74, 'Las Huertas', '87025', 'Victoria', 'Tamaulipas', 0),
(75, 'La Florida', '87025', 'Victoria', 'Tamaulipas', 0),
(76, 'Magistrados', '87025', 'Victoria', 'Tamaulipas', 0),
(77, 'Adolfo López Mateos (Ampliación)', '87025', 'Victoria', 'Tamaulipas', 0),
(78, 'Del Sol', '87025', 'Victoria', 'Tamaulipas', 0),
(79, 'Del Valle', '87025', 'Victoria', 'Tamaulipas', 0),
(80, 'Vista Verde', '87025', 'Victoria', 'Tamaulipas', 0),
(81, 'Ampliación Campestre', '87025', 'Victoria', 'Tamaulipas', 0),
(82, 'Las Alazanas', '87025', 'Victoria', 'Tamaulipas', 0),
(83, 'Siglo XXI', '87025', 'Victoria', 'Tamaulipas', 0),
(84, 'Privada Bilbao', '87025', 'Victoria', 'Tamaulipas', 0),
(85, 'Ingeniero Agrónomo Carlos Anzures', '87025', 'Victoria', 'Tamaulipas', 0),
(86, 'Residencial Cabañas de Victoria', '87025', 'Victoria', 'Tamaulipas', 0),
(87, 'Montes Altos', '87025', 'Victoria', 'Tamaulipas', 0),
(88, 'Privada Canteras', '87026', 'Victoria', 'Tamaulipas', 0),
(89, 'Magisterial', '87026', 'Victoria', 'Tamaulipas', 0),
(90, 'Las Américas', '87027', 'Victoria', 'Tamaulipas', 0),
(91, 'Petroleros', '87027', 'Victoria', 'Tamaulipas', 0),
(92, 'Arboledas', '87027', 'Victoria', 'Tamaulipas', 0),
(93, 'Villarreal', '87027', 'Victoria', 'Tamaulipas', 0),
(94, 'Monte Alto', '87027', 'Victoria', 'Tamaulipas', 0),
(95, 'Villa Jardín', '87027', 'Victoria', 'Tamaulipas', 0),
(96, 'Privadas de la Salle', '87027', 'Victoria', 'Tamaulipas', 0),
(97, 'San Ángel', '87027', 'Victoria', 'Tamaulipas', 0),
(98, 'INFONAVIT Jardín', '87028', 'Victoria', 'Tamaulipas', 0),
(99, 'Los Cristales', '87028', 'Victoria', 'Tamaulipas', 0),
(100, 'Santa Bárbara', '87028', 'Victoria', 'Tamaulipas', 0),
(101, 'Benito Juárez', '87028', 'Victoria', 'Tamaulipas', 0),
(102, 'Los Laureles', '87028', 'Victoria', 'Tamaulipas', 0),
(103, 'Santa Laura', '87028', 'Victoria', 'Tamaulipas', 0),
(104, 'Club Campestre', '87028', 'Victoria', 'Tamaulipas', 0),
(105, 'Residencial los Naranjos', '87028', 'Victoria', 'Tamaulipas', 0),
(106, 'Camino Real', '87028', 'Victoria', 'Tamaulipas', 0),
(107, 'Royal Country', '87028', 'Victoria', 'Tamaulipas', 0),
(108, 'Misión San Agustín', '87028', 'Victoria', 'Tamaulipas', 0),
(109, 'Villa Campestre', '87028', 'Victoria', 'Tamaulipas', 0),
(110, 'Residencial Campestre', '87029', 'Victoria', 'Tamaulipas', 0),
(111, 'Privanzas I', '87029', 'Victoria', 'Tamaulipas', 0),
(112, 'Las Villas', '87029', 'Victoria', 'Tamaulipas', 0),
(113, 'Miguel Alemán', '87030', 'Victoria', 'Tamaulipas', 0),
(114, 'Nuevo Santander', '87030', 'Victoria', 'Tamaulipas', 0),
(115, 'La Cima', '87030', 'Victoria', 'Tamaulipas', 0),
(116, 'FSTSE', '87030', 'Victoria', 'Tamaulipas', 0),
(117, 'Héroe de Nacozari', '87030', 'Victoria', 'Tamaulipas', 0),
(118, 'Mira Sierra', '87030', 'Victoria', 'Tamaulipas', 0),
(119, 'Colinas Del Mirador', '87030', 'Victoria', 'Tamaulipas', 0),
(120, 'Junta Local de Caminos', '87030', 'Victoria', 'Tamaulipas', 0),
(121, 'Privadas del Nogalar', '87030', 'Victoria', 'Tamaulipas', 0),
(122, 'Banrural', '87030', 'Victoria', 'Tamaulipas', 0),
(123, 'Imperial', '87030', 'Victoria', 'Tamaulipas', 0),
(124, 'Conjunto Habitacional Panorama', '87030', 'Victoria', 'Tamaulipas', 0),
(125, 'INFONAVIT Miguel Alemán', '87030', 'Victoria', 'Tamaulipas', 0),
(126, 'Ampliación Miguel Alemán', '87030', 'Victoria', 'Tamaulipas', 0),
(127, 'Lázaro Cárdenas', '87030', 'Victoria', 'Tamaulipas', 0),
(128, 'Los Ébanos', '87030', 'Victoria', 'Tamaulipas', 0),
(129, 'Villa Alpina', '87030', 'Victoria', 'Tamaulipas', 0),
(130, 'Cumbres', '87030', 'Victoria', 'Tamaulipas', 0),
(131, 'Jardín Norte', '87030', 'Victoria', 'Tamaulipas', 0),
(132, 'Sierra Ventana', '87030', 'Victoria', 'Tamaulipas', 0),
(133, 'Mi Ranchito', '87030', 'Victoria', 'Tamaulipas', 0),
(134, 'La Sierra', '87030', 'Victoria', 'Tamaulipas', 0),
(135, 'La Escondida', '87033', 'Victoria', 'Tamaulipas', 0),
(136, 'Sierra Madre Del Sol', '87037', 'Victoria', 'Tamaulipas', 0),
(137, 'Residencial los Alpes', '87037', 'Victoria', 'Tamaulipas', 0),
(138, 'Sierra Madre', '87037', 'Victoria', 'Tamaulipas', 0),
(139, 'Nuevo Amanecer', '87037', 'Victoria', 'Tamaulipas', 0),
(140, 'Tecnológico', '87037', 'Victoria', 'Tamaulipas', 0),
(141, 'Lomas de Santander', '87037', 'Victoria', 'Tamaulipas', 0),
(142, 'UPYSSET', '87037', 'Victoria', 'Tamaulipas', 0),
(143, 'Colinas Del Parque', '87037', 'Victoria', 'Tamaulipas', 0),
(144, 'Fuego Nuevo', '87037', 'Victoria', 'Tamaulipas', 0),
(145, 'Nuevo Santander', '87039', 'Victoria', 'Tamaulipas', 0),
(146, 'San José', '87040', 'Victoria', 'Tamaulipas', 0),
(147, 'INFONAVIT Aldama', '87040', 'Victoria', 'Tamaulipas', 0),
(148, 'Asunción Gómez', '87040', 'Victoria', 'Tamaulipas', 0),
(149, 'Los Arcos', '87040', 'Victoria', 'Tamaulipas', 0),
(150, 'Viviendas Populares', '87040', 'Victoria', 'Tamaulipas', 0),
(151, 'Del Periodista', '87040', 'Victoria', 'Tamaulipas', 0),
(152, 'Pietrasanta', '87043', 'Victoria', 'Tamaulipas', 0),
(153, 'INFONAVIT Jesús Elías Piña', '87048', 'Victoria', 'Tamaulipas', 0),
(154, 'Pedro José Méndez', '87048', 'Victoria', 'Tamaulipas', 0),
(155, 'FOVISSSTE', '87048', 'Victoria', 'Tamaulipas', 0),
(156, 'Oralia Guerra de Villarreal', '87049', 'Victoria', 'Tamaulipas', 0),
(157, 'Conjunto Habitacional Paseo de las Américas', '87049', 'Victoria', 'Tamaulipas', 0),
(158, 'Santa Martha', '87049', 'Victoria', 'Tamaulipas', 0),
(159, 'Las Misiones', '87049', 'Victoria', 'Tamaulipas', 0),
(160, 'Las Torres', '87049', 'Victoria', 'Tamaulipas', 0),
(161, 'Militar', '87049', 'Victoria', 'Tamaulipas', 0),
(162, 'Naciones Unidas', '87049', 'Victoria', 'Tamaulipas', 0),
(163, 'INFONAVIT Fidel Velázquez Sánchez', '87049', 'Victoria', 'Tamaulipas', 0),
(164, 'Santo Tomás', '87049', 'Victoria', 'Tamaulipas', 0),
(165, 'Hacienda del Bosque', '87049', 'Victoria', 'Tamaulipas', 0),
(166, 'México', '87049', 'Victoria', 'Tamaulipas', 0),
(167, 'San Luisito', '87049', 'Victoria', 'Tamaulipas', 0),
(168, 'SUTSPET', '87049', 'Victoria', 'Tamaulipas', 0),
(169, 'Lázaro Cárdenas', '87049', 'Victoria', 'Tamaulipas', 0),
(170, 'Las Adelitas', '87049', 'Victoria', 'Tamaulipas', 0),
(171, 'Los Ángeles', '87049', 'Victoria', 'Tamaulipas', 0),
(172, 'Los Almendros', '87049', 'Victoria', 'Tamaulipas', 0),
(173, 'Conjunto Habitacional Los Mezquites', '87049', 'Victoria', 'Tamaulipas', 0),
(174, 'Quinta Laura', '87050', 'Victoria', 'Tamaulipas', 0),
(175, 'San Francisco', '87050', 'Victoria', 'Tamaulipas', 0),
(176, 'Morelos', '87050', 'Victoria', 'Tamaulipas', 0),
(177, 'Residencial las Palmas', '87050', 'Victoria', 'Tamaulipas', 0),
(178, 'Sierra Gorda', '87050', 'Victoria', 'Tamaulipas', 0),
(179, 'Conjunto Habitacional Residencial Selectas', '87058', 'Victoria', 'Tamaulipas', 0),
(180, 'Del Norte', '87058', 'Victoria', 'Tamaulipas', 0),
(181, 'Jacarandas', '87058', 'Victoria', 'Tamaulipas', 0),
(182, 'Hogares Modernos', '87059', 'Victoria', 'Tamaulipas', 0),
(183, 'Tamatán', '87060', 'Victoria', 'Tamaulipas', 0),
(184, 'Sector la Huerta', '87060', 'Victoria', 'Tamaulipas', 0),
(185, 'Estudiantil', '87060', 'Victoria', 'Tamaulipas', 0),
(186, 'Luis Echeverría Álvarez', '87060', 'Victoria', 'Tamaulipas', 0),
(187, 'Tomás Yarrington', '87060', 'Victoria', 'Tamaulipas', 0),
(188, 'Rosalinda Guerrero', '87060', 'Victoria', 'Tamaulipas', 0),
(189, 'Zozaya', '87070', 'Victoria', 'Tamaulipas', 0),
(190, 'San Marcos', '87070', 'Victoria', 'Tamaulipas', 0),
(191, '7 de Noviembre', '87070', 'Victoria', 'Tamaulipas', 0),
(192, 'Del Maestro', '87070', 'Victoria', 'Tamaulipas', 0),
(193, 'Jardines de Tamatán', '87070', 'Victoria', 'Tamaulipas', 0),
(194, 'Cofrades', '87070', 'Victoria', 'Tamaulipas', 0),
(195, 'Luis Quintero Guzmán', '87070', 'Victoria', 'Tamaulipas', 0),
(196, 'Camino Real A Tula', '87070', 'Victoria', 'Tamaulipas', 0),
(197, 'Américo Villareal Guerra', '87070', 'Victoria', 'Tamaulipas', 0),
(198, 'Conjunto Habitacional Villas de Guadalupe', '87070', 'Victoria', 'Tamaulipas', 0),
(199, 'Puerta Cofrades', '87070', 'Victoria', 'Tamaulipas', 0),
(200, 'Puerta de Tamatán', '87070', 'Victoria', 'Tamaulipas', 0),
(201, 'La Gloria', '87070', 'Victoria', 'Tamaulipas', 0),
(202, 'Rincón de Tamatán', '87070', 'Victoria', 'Tamaulipas', 0),
(203, 'Puerta Del Sol', '87070', 'Victoria', 'Tamaulipas', 0),
(204, 'Enrique Lara', '87071', 'Victoria', 'Tamaulipas', 0),
(205, 'Simón Torres', '87076', 'Victoria', 'Tamaulipas', 0),
(206, 'La Esperanza', '87076', 'Victoria', 'Tamaulipas', 0),
(207, 'Alberto Carrera Torres', '87076', 'Victoria', 'Tamaulipas', 0),
(208, 'Altavista', '87078', 'Victoria', 'Tamaulipas', 0),
(209, 'América de Juárez', '87078', 'Victoria', 'Tamaulipas', 0),
(210, 'Vista Hermosa', '87078', 'Victoria', 'Tamaulipas', 0),
(211, 'Camino Vecinal la Garra', '87078', 'Victoria', 'Tamaulipas', 0),
(212, 'Álvaro Obregón', '87078', 'Victoria', 'Tamaulipas', 0),
(213, 'Del Maestro Eta', '87078', 'Victoria', 'Tamaulipas', 0),
(214, 'Luis Echeverría Álvarez', '87078', 'Victoria', 'Tamaulipas', 0),
(215, 'Vergel de la Sierra', '87078', 'Victoria', 'Tamaulipas', 0),
(216, 'Cuauhtémoc', '87078', 'Victoria', 'Tamaulipas', 0),
(217, 'El Tamatán', '87078', 'Victoria', 'Tamaulipas', 0),
(218, 'Las Flores', '87078', 'Victoria', 'Tamaulipas', 0),
(219, 'Rincón de la Sierra', '87078', 'Victoria', 'Tamaulipas', 0),
(220, '16 de Septiembre', '87080', 'Victoria', 'Tamaulipas', 0),
(221, 'José de Escandón', '87080', 'Victoria', 'Tamaulipas', 0),
(222, 'Emiliano Zapata', '87080', 'Victoria', 'Tamaulipas', 0),
(223, 'Emilio Portes Gil', '87080', 'Victoria', 'Tamaulipas', 0),
(224, 'Ayuntamiento I Etapa', '87080', 'Victoria', 'Tamaulipas', 0),
(225, 'Independencia', '87080', 'Victoria', 'Tamaulipas', 0),
(226, 'Buenavista', '87080', 'Victoria', 'Tamaulipas', 0),
(227, 'Parque Bicentenario', '87083', 'Victoria', 'Tamaulipas', 0),
(228, 'Residencial los Canarios', '87084', 'Victoria', 'Tamaulipas', 0),
(229, 'Residencial Santa Regina', '87084', 'Victoria', 'Tamaulipas', 0),
(230, 'Los Álamos', '87084', 'Victoria', 'Tamaulipas', 0),
(231, 'La Rioja', '87084', 'Victoria', 'Tamaulipas', 0),
(232, 'Pepenadores', '87085', 'Victoria', 'Tamaulipas', 0),
(233, 'Ayuntamiento II Etapa', '87085', 'Victoria', 'Tamaulipas', 0),
(234, 'Valle Dorado', '87086', 'Victoria', 'Tamaulipas', 0),
(235, 'Ampliación Playas', '87086', 'Victoria', 'Tamaulipas', 0),
(236, 'Liberal', '87086', 'Victoria', 'Tamaulipas', 0),
(237, 'Matías Hinojosa Silva', '87086', 'Victoria', 'Tamaulipas', 0),
(238, 'Vicente Guerrero', '87086', 'Victoria', 'Tamaulipas', 0),
(239, 'Pajaritos', '87086', 'Victoria', 'Tamaulipas', 0),
(240, 'Azteca', '87086', 'Victoria', 'Tamaulipas', 0),
(241, 'Satélite', '87087', 'Victoria', 'Tamaulipas', 0),
(242, 'Sagitario', '87087', 'Victoria', 'Tamaulipas', 0),
(243, 'Nuevas Playas', '87087', 'Victoria', 'Tamaulipas', 0),
(244, 'Alborada', '87089', 'Victoria', 'Tamaulipas', 0),
(245, 'Ampliación Nuevo Amanecer', '87089', 'Victoria', 'Tamaulipas', 0),
(246, 'Magdaleno Aguilar', '87089', 'Victoria', 'Tamaulipas', 0),
(247, 'Valle del Magisterio', '87089', 'Victoria', 'Tamaulipas', 0),
(248, 'Barrio de Pajaritos', '87089', 'Victoria', 'Tamaulipas', 0),
(249, 'Unidad Sindical', '87089', 'Victoria', 'Tamaulipas', 0),
(250, 'La Corregidora', '87089', 'Victoria', 'Tamaulipas', 0),
(251, 'Reforma', '87089', 'Victoria', 'Tamaulipas', 0),
(252, 'Hacienda del Nogal', '87089', 'Victoria', 'Tamaulipas', 0),
(253, 'Nueva Era', '87089', 'Victoria', 'Tamaulipas', 0),
(254, 'Insurgentes', '87089', 'Victoria', 'Tamaulipas', 0),
(255, 'Guadalupe Victoria', '87089', 'Victoria', 'Tamaulipas', 0),
(256, 'La Paz', '87089', 'Victoria', 'Tamaulipas', 0),
(257, 'Manuel Cavazos Lerma', '87089', 'Victoria', 'Tamaulipas', 0),
(258, 'Niños Héroes', '87089', 'Victoria', 'Tamaulipas', 0),
(259, 'Solidaridad Voluntad y Trabajo', '87089', 'Victoria', 'Tamaulipas', 0),
(260, 'Canaco', '87089', 'Victoria', 'Tamaulipas', 0),
(261, 'Obrera', '87090', 'Victoria', 'Tamaulipas', 0),
(262, 'Victoria', '87090', 'Victoria', 'Tamaulipas', 0),
(263, 'Benito Juárez', '87090', 'Victoria', 'Tamaulipas', 0),
(264, 'Tamaulipas', '87090', 'Victoria', 'Tamaulipas', 0),
(265, 'Miguel Hidalgo', '87090', 'Victoria', 'Tamaulipas', 0),
(266, 'Benito Juárez II y III', '87093', 'Victoria', 'Tamaulipas', 0),
(267, 'Comercial 2000', '87099', 'Victoria', 'Tamaulipas', 0),
(268, 'Guadalupe Mainero', '87100', 'Victoria', 'Tamaulipas', 0),
(269, 'Burócratas Estatales', '87110', 'Victoria', 'Tamaulipas', 0),
(270, 'El Palmar', '87120', 'Victoria', 'Tamaulipas', 0),
(271, 'Hacienda Del Santuario', '87120', 'Victoria', 'Tamaulipas', 0),
(272, 'Pedro Sosa', '87120', 'Victoria', 'Tamaulipas', 0),
(273, 'Fraternidad', '87120', 'Victoria', 'Tamaulipas', 0),
(274, 'Balcones del Valle', '87120', 'Victoria', 'Tamaulipas', 0),
(275, 'Las Palomas', '87130', 'Victoria', 'Tamaulipas', 0),
(276, 'Loma Bonita', '87130', 'Victoria', 'Tamaulipas', 0),
(277, 'Loma Linda', '87130', 'Victoria', 'Tamaulipas', 0),
(278, 'Los Prados', '87130', 'Victoria', 'Tamaulipas', 0),
(279, 'Auténticas Playas', '87130', 'Victoria', 'Tamaulipas', 0),
(280, 'Vista Hermosa', '87130', 'Victoria', 'Tamaulipas', 0),
(281, 'Francisco Villa', '87130', 'Victoria', 'Tamaulipas', 0),
(282, 'Paseo de los Olmos', '87130', 'Victoria', 'Tamaulipas', 0),
(283, 'Integración Familiar', '87130', 'Victoria', 'Tamaulipas', 0),
(284, 'Viento Huasteco', '87130', 'Victoria', 'Tamaulipas', 0),
(285, 'Horacio Terán', '87130', 'Victoria', 'Tamaulipas', 0),
(286, 'Loma Real', '87130', 'Victoria', 'Tamaulipas', 0),
(287, 'Paseo de los Olivos', '87130', 'Victoria', 'Tamaulipas', 0),
(288, 'Las Fuentes', '87130', 'Victoria', 'Tamaulipas', 0),
(289, 'Chapultepec', '87130', 'Victoria', 'Tamaulipas', 0),
(290, 'Camino Nuevo', '87133', 'Victoria', 'Tamaulipas', 0),
(291, 'Promotora de Educación Superior de Tamaulipas', '87133', 'Victoria', 'Tamaulipas', 0),
(292, 'El Mezquite', '87133', 'Victoria', 'Tamaulipas', 0),
(293, 'Altavista', '87134', 'Victoria', 'Tamaulipas', 0),
(294, 'Diana Laura', '87134', 'Victoria', 'Tamaulipas', 0),
(295, 'Servidor Público', '87134', 'Victoria', 'Tamaulipas', 0),
(296, 'Primavera', '87134', 'Victoria', 'Tamaulipas', 0),
(297, 'Luisa Montemayor', '87134', 'Victoria', 'Tamaulipas', 0),
(298, 'Riveras del Río', '87134', 'Victoria', 'Tamaulipas', 0),
(299, 'Moderna', '87134', 'Victoria', 'Tamaulipas', 0),
(300, 'Bella Vista', '87134', 'Victoria', 'Tamaulipas', 0),
(301, 'Unidos Avanzamos', '87134', 'Victoria', 'Tamaulipas', 0),
(302, 'Las Huertas del Río', '87134', 'Victoria', 'Tamaulipas', 0),
(303, 'Linda Vista', '87134', 'Victoria', 'Tamaulipas', 0),
(304, 'Gloria Oriente', '87135', 'Victoria', 'Tamaulipas', 0),
(305, 'Lomas Verdes', '87135', 'Victoria', 'Tamaulipas', 0),
(306, 'Bambú', '87135', 'Victoria', 'Tamaulipas', 0),
(307, 'Rincón de las Montañas', '87135', 'Victoria', 'Tamaulipas', 0),
(308, 'Huertas San Javier', '87136', 'Victoria', 'Tamaulipas', 0),
(309, 'Pedro José Méndez II', '87136', 'Victoria', 'Tamaulipas', 0),
(310, 'Noria de los Ángeles', '87136', 'Victoria', 'Tamaulipas', 0),
(311, 'Parque Industrial Nuevo Santander', '87137', 'Victoria', 'Tamaulipas', 0),
(312, 'Loma Dorada', '87137', 'Victoria', 'Tamaulipas', 0),
(313, 'Marte R. Gómez', '87137', 'Victoria', 'Tamaulipas', 0),
(314, 'Parque Científico y Tecnológico de Tamaulipas', '87138', 'Victoria', 'Tamaulipas', 0),
(315, 'Simon Bolívar', '87140', 'Victoria', 'Tamaulipas', 0),
(316, 'Las Palmas', '87140', 'Victoria', 'Tamaulipas', 0),
(317, 'Los Pinos', '87140', 'Victoria', 'Tamaulipas', 0),
(318, 'Evelin', '87140', 'Victoria', 'Tamaulipas', 0),
(319, 'Centro Universitario', '87149', 'Victoria', 'Tamaulipas', 0),
(320, 'Veteranos de la Revolución', '87150', 'Victoria', 'Tamaulipas', 0),
(321, 'Altas Cumbres', '87150', 'Victoria', 'Tamaulipas', 0),
(322, 'Francisco I. Madero', '87150', 'Victoria', 'Tamaulipas', 0),
(323, 'San Marcos', '87150', 'Victoria', 'Tamaulipas', 0),
(324, 'Gutiérrez de Lara', '87160', 'Victoria', 'Tamaulipas', 0),
(325, 'Casas Blancas', '87160', 'Victoria', 'Tamaulipas', 0),
(326, 'Bertha del Avellano', '87160', 'Victoria', 'Tamaulipas', 0),
(327, 'Unidad Modelo', '87160', 'Victoria', 'Tamaulipas', 0),
(328, 'Gutiérrez de Lara', '87160', 'Victoria', 'Tamaulipas', 0),
(329, 'Barrio del Bosque', '87163', 'Victoria', 'Tamaulipas', 0),
(330, 'Amalia G. de Castillo Ledon', '87170', 'Victoria', 'Tamaulipas', 0),
(331, 'Manuel A. Ravize', '87170', 'Victoria', 'Tamaulipas', 0),
(332, 'Poder Popular', '87173', 'Victoria', 'Tamaulipas', 0),
(333, 'SAHOP', '87180', 'Victoria', 'Tamaulipas', 0),
(334, 'Esfuerzo Popular', '87180', 'Victoria', 'Tamaulipas', 0),
(335, 'Pedro Sosa (Ampliación)', '87180', 'Victoria', 'Tamaulipas', 0),
(336, 'Nuevo Tamaulipas', '87180', 'Victoria', 'Tamaulipas', 0),
(337, 'Las Brisas', '87180', 'Victoria', 'Tamaulipas', 0),
(338, '12 de Septiembre', '87180', 'Victoria', 'Tamaulipas', 0),
(339, 'Constituyentes', '87180', 'Victoria', 'Tamaulipas', 0),
(340, 'Ignacio Allende', '87180', 'Victoria', 'Tamaulipas', 0),
(341, 'Loma Alta', '87180', 'Victoria', 'Tamaulipas', 0),
(342, 'Rinconada las Haciendas', '87183', 'Victoria', 'Tamaulipas', 0),
(343, 'Misión del Palmar', '87183', 'Victoria', 'Tamaulipas', 0),
(344, 'Residencial la Quinta', '87183', 'Victoria', 'Tamaulipas', 0),
(345, 'Obrera', '87200', 'Llera', 'Tamaulipas', 0),
(346, 'Enrique Cárdenas González', '87200', 'Llera', 'Tamaulipas', 0),
(347, 'Miradores (Guayalejo)', '87200', 'Llera', 'Tamaulipas', 0),
(348, 'Luis Quintero', '87200', 'Llera', 'Tamaulipas', 0),
(349, 'Morelos', '87200', 'Llera', 'Tamaulipas', 0),
(350, 'Llera de Canales', '87200', 'Llera', 'Tamaulipas', 0),
(351, 'Agustín Castro', '87200', 'Llera', 'Tamaulipas', 0),
(352, 'Estación Lavín', '87202', 'Llera', 'Tamaulipas', 0),
(353, 'José María Morelos (El Viejo)', '87203', 'Llera', 'Tamaulipas', 0),
(354, 'Felipe Carrillo Puerto (Carrillo Puerto)', '87204', 'Llera', 'Tamaulipas', 0),
(355, 'Porvenir del Campesino (La Purísima)', '87205', 'Llera', 'Tamaulipas', 0),
(356, 'San Rafael', '87205', 'Llera', 'Tamaulipas', 0),
(357, 'El Peñón', '87205', 'Llera', 'Tamaulipas', 0),
(358, 'Felipe Ángeles (El Carrizo)', '87206', 'Llera', 'Tamaulipas', 0),
(359, 'Santa Isabel', '87206', 'Llera', 'Tamaulipas', 0),
(360, 'San Miguel del Olivo (El Olivo)', '87206', 'Llera', 'Tamaulipas', 0),
(361, 'San Juan (San Juan del Sur)', '87206', 'Llera', 'Tamaulipas', 0),
(362, 'San Ramón', '87207', 'Llera', 'Tamaulipas', 0),
(363, 'Las Huertas', '87207', 'Llera', 'Tamaulipas', 0),
(364, 'Hermenegildo Galeana', '87207', 'Llera', 'Tamaulipas', 0),
(365, 'El Aquichal (El Pinto)', '87208', 'Llera', 'Tamaulipas', 0),
(366, 'Santa Fe', '87208', 'Llera', 'Tamaulipas', 0),
(367, 'La Libertad', '87208', 'Llera', 'Tamaulipas', 0),
(368, 'Conrado Castillo', '87208', 'Llera', 'Tamaulipas', 0),
(369, 'El Nuevo Encino (El Encino)', '87209', 'Llera', 'Tamaulipas', 0),
(370, 'El Guayabo', '87209', 'Llera', 'Tamaulipas', 0),
(371, 'Rancho Nuevo del Sur', '87209', 'Llera', 'Tamaulipas', 0),
(372, 'San Isidro', '87209', 'Llera', 'Tamaulipas', 0),
(373, 'Ignacio Zaragoza', '87210', 'Llera', 'Tamaulipas', 0),
(374, 'General Pedro José Méndez', '87210', 'Llera', 'Tamaulipas', 0),
(375, 'Las Compuertas', '87210', 'Llera', 'Tamaulipas', 0),
(376, 'Emiliano Zapata', '87211', 'Llera', 'Tamaulipas', 0),
(377, 'Casa del Campesino (La Clementina)', '87212', 'Llera', 'Tamaulipas', 0),
(378, 'La Independencia', '87213', 'Llera', 'Tamaulipas', 0),
(379, 'Nuevo San Luis (San Luisito)', '87213', 'Llera', 'Tamaulipas', 0),
(380, 'José Silva Sánchez', '87214', 'Llera', 'Tamaulipas', 0),
(381, 'Capitán Emilio Carranza (Forlón)', '87215', 'Llera', 'Tamaulipas', 0),
(382, 'Voz Campesina (Providencia)', '87216', 'Llera', 'Tamaulipas', 0),
(383, 'Mariano Escobedo', '87220', 'Llera', 'Tamaulipas', 0),
(384, 'Voz Campesina (Ampliación las Minas)', '87223', 'Llera', 'Tamaulipas', 0),
(385, 'Adolfo Ruiz Cortines', '87224', 'Llera', 'Tamaulipas', 0),
(386, 'Francisco Villa', '87224', 'Llera', 'Tamaulipas', 0),
(387, 'Guanajuato', '87224', 'Llera', 'Tamaulipas', 0),
(388, 'Santa Inés', '87227', 'Llera', 'Tamaulipas', 0),
(389, 'El Cabrito', '87227', 'Llera', 'Tamaulipas', 0),
(390, 'Francisco Castellanos (Castellanos)', '87228', 'Llera', 'Tamaulipas', 0),
(391, 'Adolfo López Mateos', '87229', 'Llera', 'Tamaulipas', 0),
(392, 'Villa de Güémez', '87230', 'Güémez', 'Tamaulipas', 0),
(393, 'Ricardo Flores Magón', '87232', 'Güémez', 'Tamaulipas', 0),
(394, 'La Mesa', '87233', 'Güémez', 'Tamaulipas', 0),
(395, 'Constitución del Diecisiete', '87233', 'Güémez', 'Tamaulipas', 0),
(396, 'San José de las Flores', '87235', 'Güémez', 'Tamaulipas', 0),
(397, 'San Cayetano', '87235', 'Güémez', 'Tamaulipas', 0),
(398, 'La Esperanza', '87235', 'Güémez', 'Tamaulipas', 0),
(399, 'Ciudad Victoria (General Pedro J Méndez)', '87236', 'Güémez', 'Tamaulipas', 0),
(400, 'Subida Alta', '87237', 'Güémez', 'Tamaulipas', 0),
(401, 'La San Juana', '87237', 'Güémez', 'Tamaulipas', 0),
(402, 'Luz del Campesino (Corona)', '87238', 'Güémez', 'Tamaulipas', 0),
(403, 'Acatlán (Plutarco Elías Calles)', '87238', 'Güémez', 'Tamaulipas', 0),
(404, 'Miraflores', '87238', 'Güémez', 'Tamaulipas', 0),
(405, 'La Parrita', '87239', 'Güémez', 'Tamaulipas', 0),
(406, 'La Diana', '87239', 'Güémez', 'Tamaulipas', 0),
(407, 'El Carmen', '87240', 'Güémez', 'Tamaulipas', 0),
(408, 'Graciano Sánchez', '87240', 'Güémez', 'Tamaulipas', 0),
(409, 'Guadalupe Victoria', '87240', 'Güémez', 'Tamaulipas', 0),
(410, 'Santa Rosa', '87244', 'Güémez', 'Tamaulipas', 0),
(411, 'El Olmo', '87245', 'Güémez', 'Tamaulipas', 0),
(412, 'El Alamito', '87245', 'Güémez', 'Tamaulipas', 0),
(413, 'El Roble', '87245', 'Güémez', 'Tamaulipas', 0),
(414, 'El Arco', '87247', 'Güémez', 'Tamaulipas', 0),
(415, 'Santa Gertrudis', '87247', 'Güémez', 'Tamaulipas', 0),
(416, 'El Porvenir', '87248', 'Güémez', 'Tamaulipas', 0),
(417, 'La Presita', '87248', 'Güémez', 'Tamaulipas', 0),
(418, 'Las Crucitas', '87248', 'Güémez', 'Tamaulipas', 0),
(419, 'El Cerrito Nuevo', '87249', 'Güémez', 'Tamaulipas', 0),
(420, 'Plan de Ayala', '87249', 'Güémez', 'Tamaulipas', 0),
(421, 'Villa de Casas Poblado', '87250', 'Casas', 'Tamaulipas', 0),
(422, 'San Francisco', '87253', 'Casas', 'Tamaulipas', 0),
(423, 'González', '87253', 'Casas', 'Tamaulipas', 0),
(424, 'La Maestra', '87255', 'Casas', 'Tamaulipas', 0),
(425, 'Piedras Negras', '87255', 'Casas', 'Tamaulipas', 0),
(426, 'San Antonio el Grande', '87255', 'Casas', 'Tamaulipas', 0),
(427, 'Praxedis Balboa', '87257', 'Casas', 'Tamaulipas', 0),
(428, 'La Guadalupana (Las Adjuntas)', '87257', 'Casas', 'Tamaulipas', 0),
(429, 'El Nogalito', '87257', 'Casas', 'Tamaulipas', 0),
(430, 'Los Ángeles', '87257', 'Casas', 'Tamaulipas', 0),
(431, 'San Francisco (Estación San Francisco)', '87258', 'Casas', 'Tamaulipas', 0),
(432, 'Congregación Caballeros', '87260', 'Victoria', 'Tamaulipas', 0),
(433, 'La Libertad', '87260', 'Victoria', 'Tamaulipas', 0),
(434, 'Alto de Estación Caballeros', '87260', 'Victoria', 'Tamaulipas', 0),
(435, 'La Misión', '87260', 'Victoria', 'Tamaulipas', 0),
(436, 'Estación Carbonero', '87261', 'Victoria', 'Tamaulipas', 0),
(437, 'Las Anacuas (Las Coloradas)', '87262', 'Victoria', 'Tamaulipas', 0),
(438, 'La Peñita', '87262', 'Victoria', 'Tamaulipas', 0),
(439, 'Otilio Montaño', '87262', 'Victoria', 'Tamaulipas', 0),
(440, 'Juan Rincón', '87262', 'Victoria', 'Tamaulipas', 0),
(441, 'El Rucio (María Eugenia Benavides)', '87262', 'Victoria', 'Tamaulipas', 0),
(442, 'La Boca (La Boca de San Pedro)', '87263', 'Victoria', 'Tamaulipas', 0),
(443, 'Nogales', '87263', 'Victoria', 'Tamaulipas', 0),
(444, 'Fuerte de Portes Gil', '87263', 'Victoria', 'Tamaulipas', 0),
(445, 'Mariposas y Mahuiras', '87265', 'Victoria', 'Tamaulipas', 0),
(446, 'Rancho Nuevo', '87265', 'Victoria', 'Tamaulipas', 0),
(447, 'Alianza de Caballeros', '87266', 'Victoria', 'Tamaulipas', 0),
(448, 'El Refugio', '87267', 'Victoria', 'Tamaulipas', 0),
(449, 'Loma Alta (Ejido)', '87270', 'Victoria', 'Tamaulipas', 0),
(450, 'Lomas de Guadalupe', '87270', 'Victoria', 'Tamaulipas', 0),
(451, 'El Olmo (Rancho Nuevo del Castillo)', '87273', 'Victoria', 'Tamaulipas', 0),
(452, 'Santa Rosa', '87273', 'Victoria', 'Tamaulipas', 0),
(453, 'San Juan y el Ranchito', '87273', 'Victoria', 'Tamaulipas', 0),
(454, 'Santa Clara', '87273', 'Victoria', 'Tamaulipas', 0),
(455, 'Manuel Ávila Camacho', '87273', 'Victoria', 'Tamaulipas', 0),
(456, 'Santa Ana', '87274', 'Victoria', 'Tamaulipas', 0),
(457, 'Santa Librada', '87274', 'Victoria', 'Tamaulipas', 0),
(458, 'El Olivo', '87277', 'Victoria', 'Tamaulipas', 0),
(459, 'Dieciocho de Marzo', '87277', 'Victoria', 'Tamaulipas', 0),
(460, 'Veintiuno de Mayo', '87277', 'Victoria', 'Tamaulipas', 0),
(461, 'La Presa', '87278', 'Victoria', 'Tamaulipas', 0),
(462, 'Aquiles Serdán', '87279', 'Victoria', 'Tamaulipas', 0),
(463, 'Tierra Nueva', '87279', 'Victoria', 'Tamaulipas', 0),
(464, 'Joya Verde', '87284', 'Victoria', 'Tamaulipas', 0),
(465, 'Matamoros Centro', '87300', 'Matamoros', 'Tamaulipas', 0),
(466, 'Sección 11', '87310', 'Matamoros', 'Tamaulipas', 0),
(467, 'Constitución Del 17', '87310', 'Matamoros', 'Tamaulipas', 0),
(468, 'Uniones', '87310', 'Matamoros', 'Tamaulipas', 0),
(469, 'Cananea', '87310', 'Matamoros', 'Tamaulipas', 0),
(470, 'Esperanza', '87310', 'Matamoros', 'Tamaulipas', 0),
(471, 'Reforma', '87310', 'Matamoros', 'Tamaulipas', 0),
(472, 'Baltazar Díaz Bazan', '87310', 'Matamoros', 'Tamaulipas', 0),
(473, 'Santa Rosa', '87310', 'Matamoros', 'Tamaulipas', 0),
(474, 'El Caracol', '87313', 'Matamoros', 'Tamaulipas', 0),
(475, 'Libertad y Progreso', '87313', 'Matamoros', 'Tamaulipas', 0),
(476, 'Rinconada de Las Brisas', '87313', 'Matamoros', 'Tamaulipas', 0),
(477, 'Los Arados', '87313', 'Matamoros', 'Tamaulipas', 0),
(478, 'Paseo del Nogalar', '87313', 'Matamoros', 'Tamaulipas', 0),
(479, 'Siglo XXI', '87313', 'Matamoros', 'Tamaulipas', 0),
(480, 'San Pedro', '87313', 'Matamoros', 'Tamaulipas', 0),
(481, 'Brisas del Valle', '87313', 'Matamoros', 'Tamaulipas', 0),
(482, 'Carrera Torres', '87313', 'Matamoros', 'Tamaulipas', 0),
(483, 'Vamos Tamaulipas', '87313', 'Matamoros', 'Tamaulipas', 0),
(484, 'Paseo de Las Brisas', '87313', 'Matamoros', 'Tamaulipas', 0),
(485, 'Jacarandas', '87313', 'Matamoros', 'Tamaulipas', 0),
(486, 'Fidel Velázquez', '87313', 'Matamoros', 'Tamaulipas', 0),
(487, 'Parque Industrial Los Palmares', '87313', 'Matamoros', 'Tamaulipas', 0),
(488, 'San Javier', '87314', 'Matamoros', 'Tamaulipas', 0),
(489, 'Cedritos', '87314', 'Matamoros', 'Tamaulipas', 0),
(490, 'Santa Lucia', '87314', 'Matamoros', 'Tamaulipas', 0),
(491, 'República Norte', '87314', 'Matamoros', 'Tamaulipas', 0),
(492, 'República Sur', '87314', 'Matamoros', 'Tamaulipas', 0),
(493, 'Los Girasoles', '87314', 'Matamoros', 'Tamaulipas', 0),
(494, 'Ignacio Zaragoza', '87314', 'Matamoros', 'Tamaulipas', 0),
(495, 'Las Mitras', '87314', 'Matamoros', 'Tamaulipas', 0),
(496, 'La Paz', '87315', 'Matamoros', 'Tamaulipas', 0),
(497, 'Los Vergeles', '87315', 'Matamoros', 'Tamaulipas', 0),
(498, 'Las Lomas', '87315', 'Matamoros', 'Tamaulipas', 0),
(499, 'Oasis', '87315', 'Matamoros', 'Tamaulipas', 0),
(500, 'Nuevo Amanecer', '87315', 'Matamoros', 'Tamaulipas', 0),
(501, 'Santa Cruz', '87315', 'Matamoros', 'Tamaulipas', 0),
(502, 'Villa Hermosa', '87315', 'Matamoros', 'Tamaulipas', 0),
(503, 'Villa Del Parque', '87315', 'Matamoros', 'Tamaulipas', 0),
(504, 'Residencial Portal de las Garzas', '87315', 'Matamoros', 'Tamaulipas', 0),
(505, 'Francisco Zarco', '87315', 'Matamoros', 'Tamaulipas', 0),
(506, 'Parque Industrial FINSA del Norte', '87316', 'Matamoros', 'Tamaulipas', 0),
(507, 'Zona Industrial', '87316', 'Matamoros', 'Tamaulipas', 0),
(508, 'El Chorizo', '87316', 'Matamoros', 'Tamaulipas', 0),
(509, 'Las Fuentes', '87317', 'Matamoros', 'Tamaulipas', 0),
(510, 'Las Riveras', '87318', 'Matamoros', 'Tamaulipas', 0),
(511, 'Quinta Moros', '87319', 'Matamoros', 'Tamaulipas', 0),
(512, '1° de Mayo', '87320', 'Matamoros', 'Tamaulipas', 0),
(513, 'Estero San Pablo', '87320', 'Matamoros', 'Tamaulipas', 0),
(514, 'Control 3 Norte', '87320', 'Matamoros', 'Tamaulipas', 0),
(515, 'Del Valle', '87320', 'Matamoros', 'Tamaulipas', 0),
(516, 'Ampliación Ejido Las Rusias', '87324', 'Matamoros', 'Tamaulipas', 0),
(517, '3 Ríos', '87324', 'Matamoros', 'Tamaulipas', 0),
(518, 'Lázaro Cárdenas', '87326', 'Matamoros', 'Tamaulipas', 0),
(519, 'Jardín', '87330', 'Matamoros', 'Tamaulipas', 0),
(520, 'Moderna', '87330', 'Matamoros', 'Tamaulipas', 0),
(521, 'Obrera', '87340', 'Matamoros', 'Tamaulipas', 0),
(522, 'Jesús Urquiza', '87340', 'Matamoros', 'Tamaulipas', 0),
(523, 'Villa Universidad', '87340', 'Matamoros', 'Tamaulipas', 0),
(524, 'Control 3 Sur', '87340', 'Matamoros', 'Tamaulipas', 0),
(525, 'Santa Elena', '87340', 'Matamoros', 'Tamaulipas', 0),
(526, 'San José', '87340', 'Matamoros', 'Tamaulipas', 0),
(527, 'Infonavit los Ébanos', '87340', 'Matamoros', 'Tamaulipas', 0),
(528, 'San Rafael', '87340', 'Matamoros', 'Tamaulipas', 0),
(529, 'Emilio Portes Gil', '87340', 'Matamoros', 'Tamaulipas', 0),
(530, 'Jesús Vega Sanchez', '87343', 'Matamoros', 'Tamaulipas', 0),
(531, 'Integración Familiar', '87343', 'Matamoros', 'Tamaulipas', 0),
(532, 'Hacienda las Misiones', '87343', 'Matamoros', 'Tamaulipas', 0),
(533, 'Hacienda Las Bugambilias', '87343', 'Matamoros', 'Tamaulipas', 0),
(534, 'La Huerta', '87343', 'Matamoros', 'Tamaulipas', 0),
(535, 'Cabras Pintas', '87343', 'Matamoros', 'Tamaulipas', 0),
(536, 'La Laguneta', '87343', 'Matamoros', 'Tamaulipas', 0),
(537, 'Del Golfo', '87343', 'Matamoros', 'Tamaulipas', 0),
(538, 'Gremio Unido de Choferes', '87343', 'Matamoros', 'Tamaulipas', 0),
(539, 'Martha Rita Prince Aguilera', '87343', 'Matamoros', 'Tamaulipas', 0),
(540, 'Molino del Rey', '87343', 'Matamoros', 'Tamaulipas', 0),
(541, 'Villa de las Flores', '87344', 'Matamoros', 'Tamaulipas', 0),
(542, 'Esfuerzo Compartido', '87344', 'Matamoros', 'Tamaulipas', 0),
(543, 'Villa Española', '87344', 'Matamoros', 'Tamaulipas', 0),
(544, 'Paseo Del Magisterio', '87344', 'Matamoros', 'Tamaulipas', 0),
(545, 'Puerto Rico', '87344', 'Matamoros', 'Tamaulipas', 0),
(546, 'Santa Anita', '87344', 'Matamoros', 'Tamaulipas', 0),
(547, 'Rincón Colonial', '87344', 'Matamoros', 'Tamaulipas', 0),
(548, 'Hacienda Del Puente', '87344', 'Matamoros', 'Tamaulipas', 0),
(549, 'Acuario 2001', '87344', 'Matamoros', 'Tamaulipas', 0),
(550, 'La Plaza', '87344', 'Matamoros', 'Tamaulipas', 0),
(551, 'Jardines de San Roberto', '87344', 'Matamoros', 'Tamaulipas', 0),
(552, 'Valle de Casa Blanca', '87345', 'Matamoros', 'Tamaulipas', 0),
(553, 'San Ángel Poniente', '87345', 'Matamoros', 'Tamaulipas', 0),
(554, 'Los Encinos', '87345', 'Matamoros', 'Tamaulipas', 0),
(555, 'Guadalupe Mainero', '87345', 'Matamoros', 'Tamaulipas', 0),
(556, 'Casa Blanca', '87345', 'Matamoros', 'Tamaulipas', 0),
(557, 'Valle Real', '87345', 'Matamoros', 'Tamaulipas', 0),
(558, 'Centro Comercial Plaza Sendero', '87345', 'Matamoros', 'Tamaulipas', 0),
(559, 'La Unión', '87345', 'Matamoros', 'Tamaulipas', 0),
(560, 'España', '87345', 'Matamoros', 'Tamaulipas', 0),
(561, 'Quinta Real', '87345', 'Matamoros', 'Tamaulipas', 0),
(562, 'Valle de los Reyes', '87345', 'Matamoros', 'Tamaulipas', 0),
(563, 'Águilas', '87346', 'Matamoros', 'Tamaulipas', 0),
(564, 'Águilas 2001', '87346', 'Matamoros', 'Tamaulipas', 0),
(565, 'Los Palmares', '87347', 'Matamoros', 'Tamaulipas', 0),
(566, 'Los Pueblitos', '87347', 'Matamoros', 'Tamaulipas', 0),
(567, 'Unidos Avanzamos', '87347', 'Matamoros', 'Tamaulipas', 0),
(568, 'Jardines de San Felipe', '87347', 'Matamoros', 'Tamaulipas', 0),
(569, 'Nuevo Milenio', '87347', 'Matamoros', 'Tamaulipas', 0),
(570, 'José López Portillo', '87348', 'Matamoros', 'Tamaulipas', 0),
(571, 'Francisco Villa Norte', '87349', 'Matamoros', 'Tamaulipas', 0),
(572, 'Buenavista', '87350', 'Matamoros', 'Tamaulipas', 0),
(573, 'Industrial', '87350', 'Matamoros', 'Tamaulipas', 0),
(574, 'Lucero', '87350', 'Matamoros', 'Tamaulipas', 0),
(575, 'Hidalgo', '87350', 'Matamoros', 'Tamaulipas', 0),
(576, 'San Francisco', '87350', 'Matamoros', 'Tamaulipas', 0),
(577, 'Las Puertas', '87360', 'Matamoros', 'Tamaulipas', 0),
(578, 'Modelo', '87360', 'Matamoros', 'Tamaulipas', 0),
(579, 'Privanzas del Río', '87360', 'Matamoros', 'Tamaulipas', 0),
(580, 'Lázaro Cárdenas', '87360', 'Matamoros', 'Tamaulipas', 0),
(581, 'Río', '87360', 'Matamoros', 'Tamaulipas', 0),
(582, 'Electricistas', '87360', 'Matamoros', 'Tamaulipas', 0),
(583, 'Delicias', '87360', 'Matamoros', 'Tamaulipas', 0),
(584, 'Unidad Hogar', '87360', 'Matamoros', 'Tamaulipas', 0),
(585, 'Bagdad', '87369', 'Matamoros', 'Tamaulipas', 0),
(586, 'Santa Cruz', '87370', 'Matamoros', 'Tamaulipas', 0),
(587, 'Euzkadi', '87370', 'Matamoros', 'Tamaulipas', 0),
(588, 'Vista Hermosa', '87370', 'Matamoros', 'Tamaulipas', 0),
(589, 'Roberto F. García', '87370', 'Matamoros', 'Tamaulipas', 0),
(590, 'Aurora', '87370', 'Matamoros', 'Tamaulipas', 0),
(591, 'Bancaria', '87370', 'Matamoros', 'Tamaulipas', 0),
(592, 'Paseo Residencial', '87380', 'Matamoros', 'Tamaulipas', 0),
(593, 'Los Sauces', '87380', 'Matamoros', 'Tamaulipas', 0),
(594, 'Valle Alto', '87380', 'Matamoros', 'Tamaulipas', 0),
(595, 'Chapultepec', '87380', 'Matamoros', 'Tamaulipas', 0),
(596, 'Moderno', '87380', 'Matamoros', 'Tamaulipas', 0),
(597, 'Infonavit Paseo Residencial', '87380', 'Matamoros', 'Tamaulipas', 0),
(598, 'Santa Ana', '87380', 'Matamoros', 'Tamaulipas', 0),
(599, 'Mariano Matamoros', '87380', 'Matamoros', 'Tamaulipas', 0),
(600, 'Rincón Colonial', '87380', 'Matamoros', 'Tamaulipas', 0),
(601, 'Valle Dorado', '87382', 'Matamoros', 'Tamaulipas', 0),
(602, 'Residencial la Hacienda', '87382', 'Matamoros', 'Tamaulipas', 0),
(603, 'Valle Del Magisterio', '87382', 'Matamoros', 'Tamaulipas', 0),
(604, 'Bagdad Sur', '87383', 'Matamoros', 'Tamaulipas', 0),
(605, 'Villa Azteca', '87383', 'Matamoros', 'Tamaulipas', 0),
(606, 'Tamaulipas', '87383', 'Matamoros', 'Tamaulipas', 0),
(607, 'Chulavista', '87385', 'Matamoros', 'Tamaulipas', 0),
(608, 'Los Álamos', '87385', 'Matamoros', 'Tamaulipas', 0),
(609, 'Pedro Moreno', '87385', 'Matamoros', 'Tamaulipas', 0),
(610, 'Valle Encantado', '87389', 'Matamoros', 'Tamaulipas', 0),
(611, 'La Encantada', '87389', 'Matamoros', 'Tamaulipas', 0),
(612, 'Las Norias', '87390', 'Matamoros', 'Tamaulipas', 0),
(613, 'La Villa', '87390', 'Matamoros', 'Tamaulipas', 0),
(614, 'Victoria', '87390', 'Matamoros', 'Tamaulipas', 0),
(615, 'Centro Comercial Plaza Fiesta', '87390', 'Matamoros', 'Tamaulipas', 0),
(616, 'Villa Madrid', '87390', 'Matamoros', 'Tamaulipas', 0),
(617, 'Infonavit Buenavista', '87390', 'Matamoros', 'Tamaulipas', 0),
(618, 'Voluntad y Trabajo', '87390', 'Matamoros', 'Tamaulipas', 0),
(619, 'Las Granjas', '87390', 'Matamoros', 'Tamaulipas', 0),
(620, 'Sección 16', '87390', 'Matamoros', 'Tamaulipas', 0),
(621, 'Victoria Sección Fiesta', '87390', 'Matamoros', 'Tamaulipas', 0),
(622, 'La Venadita', '87393', 'Matamoros', 'Tamaulipas', 0),
(623, 'Luz del Valle', '87393', 'Matamoros', 'Tamaulipas', 0),
(624, 'San Charbel', '87393', 'Matamoros', 'Tamaulipas', 0),
(625, 'Sindicato de Trabajadores al Servicio del Municipi', '87394', 'Matamoros', 'Tamaulipas', 0),
(626, 'Francisco Castellanos', '87394', 'Matamoros', 'Tamaulipas', 0),
(627, 'Esperanza y Reforma', '87394', 'Matamoros', 'Tamaulipas', 0),
(628, 'Juan C. Bonilla', '87394', 'Matamoros', 'Tamaulipas', 0),
(629, 'Ricardo Ramos', '87394', 'Matamoros', 'Tamaulipas', 0),
(630, 'José Casanova', '87394', 'Matamoros', 'Tamaulipas', 0),
(631, 'Eva Samano', '87394', 'Matamoros', 'Tamaulipas', 0),
(632, 'Las Bermudas', '87394', 'Matamoros', 'Tamaulipas', 0),
(633, 'Los Olivos', '87394', 'Matamoros', 'Tamaulipas', 0),
(634, 'Los Ángeles', '87394', 'Matamoros', 'Tamaulipas', 0),
(635, 'Periodistas Segunda Sección', '87394', 'Matamoros', 'Tamaulipas', 0),
(636, 'Ebenezer', '87394', 'Matamoros', 'Tamaulipas', 0),
(637, 'El Cambio', '87394', 'Matamoros', 'Tamaulipas', 0),
(638, 'Buena Vista', '87394', 'Matamoros', 'Tamaulipas', 0),
(639, 'La Luz', '87394', 'Matamoros', 'Tamaulipas', 0),
(640, 'Servando Canales', '87394', 'Matamoros', 'Tamaulipas', 0),
(641, 'Privada las Flores', '87394', 'Matamoros', 'Tamaulipas', 0),
(642, 'Santa Martha', '87394', 'Matamoros', 'Tamaulipas', 0),
(643, 'La Estrella', '87394', 'Matamoros', 'Tamaulipas', 0),
(644, 'Ampliación Reforma Sur', '87394', 'Matamoros', 'Tamaulipas', 0),
(645, 'Valle de Anáhuac', '87394', 'Matamoros', 'Tamaulipas', 0),
(646, 'El Roble', '87394', 'Matamoros', 'Tamaulipas', 0),
(647, 'El Alto', '87394', 'Matamoros', 'Tamaulipas', 0),
(648, 'Ocampo', '87394', 'Matamoros', 'Tamaulipas', 0),
(649, 'Del Niño', '87394', 'Matamoros', 'Tamaulipas', 0),
(650, 'Luis Donaldo Colosio', '87394', 'Matamoros', 'Tamaulipas', 0),
(651, 'Libertad', '87394', 'Matamoros', 'Tamaulipas', 0),
(652, 'El Nacimiento', '87394', 'Matamoros', 'Tamaulipas', 0),
(653, 'Francisco Covarrubias', '87395', 'Matamoros', 'Tamaulipas', 0),
(654, 'Rodríguez', '87395', 'Matamoros', 'Tamaulipas', 0),
(655, 'La India', '87395', 'Matamoros', 'Tamaulipas', 0),
(656, 'San Cristóbal', '87395', 'Matamoros', 'Tamaulipas', 0),
(657, 'Luz del Sur', '87395', 'Matamoros', 'Tamaulipas', 0),
(658, 'Villa Coapa', '87395', 'Matamoros', 'Tamaulipas', 0),
(659, 'Los Rosales', '87395', 'Matamoros', 'Tamaulipas', 0),
(660, 'Adolfo López Mateos', '87395', 'Matamoros', 'Tamaulipas', 0),
(661, 'Luz Del Paraíso', '87395', 'Matamoros', 'Tamaulipas', 0),
(662, 'Cabras Pintas', '87395', 'Matamoros', 'Tamaulipas', 0),
(663, 'Buenos Aires', '87395', 'Matamoros', 'Tamaulipas', 0),
(664, 'Rancho Alegre', '87395', 'Matamoros', 'Tamaulipas', 0),
(665, 'Leyes de Colonos', '87395', 'Matamoros', 'Tamaulipas', 0),
(666, 'Los Ébanos', '87395', 'Matamoros', 'Tamaulipas', 0),
(667, 'Ernesto Elizondo', '87395', 'Matamoros', 'Tamaulipas', 0),
(668, 'Francisco Villa Sur', '87395', 'Matamoros', 'Tamaulipas', 0),
(669, 'Aeropuerto', '87395', 'Matamoros', 'Tamaulipas', 0),
(670, 'Lomas Del Real', '87395', 'Matamoros', 'Tamaulipas', 0),
(671, 'Las Flores', '87395', 'Matamoros', 'Tamaulipas', 0),
(672, 'Cuatro Caminos', '87395', 'Matamoros', 'Tamaulipas', 0),
(673, 'Francisco I. Madero', '87395', 'Matamoros', 'Tamaulipas', 0),
(674, 'Ampliación Expofiesta Norte', '87395', 'Matamoros', 'Tamaulipas', 0),
(675, 'Jardines Del Sur', '87395', 'Matamoros', 'Tamaulipas', 0),
(676, 'Hacienda San Miguel', '87395', 'Matamoros', 'Tamaulipas', 0),
(677, 'Matamoros (Servando Canales)', '87395', 'Matamoros', 'Tamaulipas', 0),
(678, 'Praderas de la Rioja', '87395', 'Matamoros', 'Tamaulipas', 0),
(679, 'Los Laureles', '87396', 'Matamoros', 'Tamaulipas', 0),
(680, 'Las Torres', '87396', 'Matamoros', 'Tamaulipas', 0),
(681, 'Insurgentes', '87396', 'Matamoros', 'Tamaulipas', 0),
(682, 'Expofiesta Sur', '87396', 'Matamoros', 'Tamaulipas', 0),
(683, 'Amado Nervo', '87396', 'Matamoros', 'Tamaulipas', 0),
(684, 'Villa Esmeralda', '87396', 'Matamoros', 'Tamaulipas', 0),
(685, 'Expofiesta Norte', '87396', 'Matamoros', 'Tamaulipas', 0),
(686, 'Lucio Blanco', '87397', 'Matamoros', 'Tamaulipas', 0),
(687, 'Azteca', '87398', 'Matamoros', 'Tamaulipas', 0),
(688, 'Expofiesta Oriente', '87398', 'Matamoros', 'Tamaulipas', 0),
(689, 'San Miguel', '87398', 'Matamoros', 'Tamaulipas', 0),
(690, 'Bienestar', '87398', 'Matamoros', 'Tamaulipas', 0),
(691, 'Estancias Residencial', '87398', 'Matamoros', 'Tamaulipas', 0),
(692, 'Emiliano Zapata', '87398', 'Matamoros', 'Tamaulipas', 0),
(693, 'Loma Bonita', '87398', 'Matamoros', 'Tamaulipas', 0),
(694, 'Villa las Torres', '87398', 'Matamoros', 'Tamaulipas', 0),
(695, 'Melchor Ocampo', '87399', 'Matamoros', 'Tamaulipas', 0),
(696, 'CBTIS', '87399', 'Matamoros', 'Tamaulipas', 0),
(697, 'Magisterial', '87399', 'Matamoros', 'Tamaulipas', 0),
(698, 'Central Mercado de Abastos', '87399', 'Matamoros', 'Tamaulipas', 0),
(699, '20 de Noviembre', '87399', 'Matamoros', 'Tamaulipas', 0),
(700, 'Valle Escondido', '87400', 'Matamoros', 'Tamaulipas', 0),
(701, 'Del Carmen', '87400', 'Matamoros', 'Tamaulipas', 0),
(702, 'FOVISSSTE Fraccionamiento', '87400', 'Matamoros', 'Tamaulipas', 0),
(703, 'Villa las Palmas', '87400', 'Matamoros', 'Tamaulipas', 0),
(704, 'Villas del Río', '87400', 'Matamoros', 'Tamaulipas', 0),
(705, 'Alianza', '87410', 'Matamoros', 'Tamaulipas', 0),
(706, 'Villa Del Mar', '87410', 'Matamoros', 'Tamaulipas', 0),
(707, 'Privanzas', '87413', 'Matamoros', 'Tamaulipas', 0),
(708, 'La Rosita', '87413', 'Matamoros', 'Tamaulipas', 0),
(709, 'Los Presidentes', '87413', 'Matamoros', 'Tamaulipas', 0),
(710, 'Residencial Del Valle', '87415', 'Matamoros', 'Tamaulipas', 0),
(711, 'Vivienda Popular', '87420', 'Matamoros', 'Tamaulipas', 0),
(712, 'Las Palmas', '87420', 'Matamoros', 'Tamaulipas', 0),
(713, 'Casa Colorada', '87430', 'Matamoros', 'Tamaulipas', 0),
(714, 'Praxedis Balboa', '87430', 'Matamoros', 'Tamaulipas', 0),
(715, 'Nuevo Renacimiento', '87430', 'Matamoros', 'Tamaulipas', 0),
(716, 'Bertha Avellano', '87438', 'Matamoros', 'Tamaulipas', 0),
(717, 'Progreso', '87440', 'Matamoros', 'Tamaulipas', 0),
(718, 'Campestre del Río II', '87440', 'Matamoros', 'Tamaulipas', 0),
(719, 'Francisco Izaguirre', '87440', 'Matamoros', 'Tamaulipas', 0),
(720, 'Ricardo A. Basso', '87440', 'Matamoros', 'Tamaulipas', 0),
(721, 'Campestre Del Río I', '87440', 'Matamoros', 'Tamaulipas', 0),
(722, 'Los Doctores', '87440', 'Matamoros', 'Tamaulipas', 0),
(723, 'Alfonso Treviño', '87440', 'Matamoros', 'Tamaulipas', 0),
(724, 'Los Fresnos', '87440', 'Matamoros', 'Tamaulipas', 0),
(725, 'La Herradura', '87440', 'Matamoros', 'Tamaulipas', 0),
(726, 'Arboledas del Río', '87440', 'Matamoros', 'Tamaulipas', 0),
(727, 'México Agrario', '87440', 'Matamoros', 'Tamaulipas', 0),
(728, 'La Barranquita', '87444', 'Matamoros', 'Tamaulipas', 0),
(729, 'Las Brisas', '87444', 'Matamoros', 'Tamaulipas', 0),
(730, 'Villas del Lago', '87444', 'Matamoros', 'Tamaulipas', 0),
(731, 'Lucio Blanco', '87444', 'Matamoros', 'Tamaulipas', 0),
(732, 'Brisas', '87444', 'Matamoros', 'Tamaulipas', 0),
(733, 'Privada Residencial Magnolias', '87445', 'Matamoros', 'Tamaulipas', 0),
(734, 'Revolución Verde', '87445', 'Matamoros', 'Tamaulipas', 0),
(735, 'San Juan', '87446', 'Matamoros', 'Tamaulipas', 0),
(736, 'Guillermo Guajardo', '87447', 'Matamoros', 'Tamaulipas', 0),
(737, 'Arboledas', '87448', 'Matamoros', 'Tamaulipas', 0),
(738, 'Los Pinos', '87448', 'Matamoros', 'Tamaulipas', 0),
(739, 'Puertas Verdes', '87449', 'Matamoros', 'Tamaulipas', 0),
(740, 'Las Bugambilias', '87450', 'Matamoros', 'Tamaulipas', 0),
(741, 'Treviño Zapata', '87450', 'Matamoros', 'Tamaulipas', 0),
(742, '20 de Noviembre', '87450', 'Matamoros', 'Tamaulipas', 0),
(743, 'Enrique Cárdenas', '87450', 'Matamoros', 'Tamaulipas', 0),
(744, 'Nogalar Oriente', '87453', 'Matamoros', 'Tamaulipas', 0),
(745, 'Ampliación Abelardo de La Torre', '87453', 'Matamoros', 'Tamaulipas', 0),
(746, '21 de Mayo', '87453', 'Matamoros', 'Tamaulipas', 0),
(747, 'El Saucito', '87453', 'Matamoros', 'Tamaulipas', 0),
(748, 'Manuel Cavazos Lerma', '87453', 'Matamoros', 'Tamaulipas', 0),
(749, 'Comunicadores', '87453', 'Matamoros', 'Tamaulipas', 0),
(750, 'San Miguel', '87453', 'Matamoros', 'Tamaulipas', 0),
(751, 'Melitón Suárez', '87453', 'Matamoros', 'Tamaulipas', 0),
(752, 'Nogalar Poniente', '87453', 'Matamoros', 'Tamaulipas', 0),
(753, 'Minería', '87454', 'Matamoros', 'Tamaulipas', 0),
(754, 'San Luis', '87454', 'Matamoros', 'Tamaulipas', 0),
(755, 'Movimiento 18 de Octubre', '87454', 'Matamoros', 'Tamaulipas', 0),
(756, 'José Tejeda', '87454', 'Matamoros', 'Tamaulipas', 0),
(757, 'Condesa', '87454', 'Matamoros', 'Tamaulipas', 0),
(758, 'Jardines del Recuerdo', '87454', 'Matamoros', 'Tamaulipas', 0),
(759, 'Los Reyes', '87454', 'Matamoros', 'Tamaulipas', 0),
(760, 'Sindicato Carpinteros', '87454', 'Matamoros', 'Tamaulipas', 0),
(761, 'Alborada', '87454', 'Matamoros', 'Tamaulipas', 0),
(762, 'Villa del Jardín', '87454', 'Matamoros', 'Tamaulipas', 0),
(763, 'Sindicato de Albañiles', '87454', 'Matamoros', 'Tamaulipas', 0),
(764, 'Praderas Del Sur', '87454', 'Matamoros', 'Tamaulipas', 0),
(765, 'El Recuerdo', '87454', 'Matamoros', 'Tamaulipas', 0),
(766, 'Santa María', '87454', 'Matamoros', 'Tamaulipas', 0),
(767, 'Agrícola Oriental', '87454', 'Matamoros', 'Tamaulipas', 0),
(768, 'Granjas de La Reforma', '87454', 'Matamoros', 'Tamaulipas', 0),
(769, 'Ampliación los Agaves', '87454', 'Matamoros', 'Tamaulipas', 0),
(770, 'Zafiro', '87454', 'Matamoros', 'Tamaulipas', 0),
(771, 'Lomas Del Sur', '87454', 'Matamoros', 'Tamaulipas', 0),
(772, 'Jardines de Oriente', '87454', 'Matamoros', 'Tamaulipas', 0),
(773, 'La Alegría', '87454', 'Matamoros', 'Tamaulipas', 0),
(774, 'Colonia Unidad', '87454', 'Matamoros', 'Tamaulipas', 0),
(775, 'Electricistas Sur', '87455', 'Matamoros', 'Tamaulipas', 0),
(776, 'Platería', '87455', 'Matamoros', 'Tamaulipas', 0),
(777, 'Nueva Jerusalem', '87455', 'Matamoros', 'Tamaulipas', 0),
(778, 'Jardines de San Juan', '87455', 'Matamoros', 'Tamaulipas', 0),
(779, 'Villa de Cortés', '87455', 'Matamoros', 'Tamaulipas', 0),
(780, 'San Manuel', '87455', 'Matamoros', 'Tamaulipas', 0),
(781, 'Abelardo de La Torre', '87455', 'Matamoros', 'Tamaulipas', 0),
(782, 'La Joya', '87455', 'Matamoros', 'Tamaulipas', 0),
(783, 'Lomas de San Juan', '87455', 'Matamoros', 'Tamaulipas', 0),
(784, 'Salinas de Gortari', '87456', 'Matamoros', 'Tamaulipas', 0),
(785, 'Cecilia Ocelli', '87456', 'Matamoros', 'Tamaulipas', 0),
(786, 'Ampliación Santa Cecilia', '87456', 'Matamoros', 'Tamaulipas', 0),
(787, 'Solidaridad', '87456', 'Matamoros', 'Tamaulipas', 0),
(788, 'División del Norte', '87456', 'Matamoros', 'Tamaulipas', 0),
(789, 'Pirámide', '87456', 'Matamoros', 'Tamaulipas', 0),
(790, 'Vicente Guerrero', '87456', 'Matamoros', 'Tamaulipas', 0),
(791, 'Santa Cecilia', '87456', 'Matamoros', 'Tamaulipas', 0),
(792, 'San Isidro', '87456', 'Matamoros', 'Tamaulipas', 0),
(793, 'San Fernando', '87456', 'Matamoros', 'Tamaulipas', 0),
(794, 'Universitaria', '87457', 'Matamoros', 'Tamaulipas', 0),
(795, 'Niños Héroes', '87457', 'Matamoros', 'Tamaulipas', 0),
(796, 'Pueblo Viejo', '87457', 'Matamoros', 'Tamaulipas', 0),
(797, 'Guadalupe Victoria', '87457', 'Matamoros', 'Tamaulipas', 0),
(798, 'Villa Hermosa', '87457', 'Matamoros', 'Tamaulipas', 0),
(799, 'Tampico', '87457', 'Matamoros', 'Tamaulipas', 0),
(800, 'Periodistas', '87457', 'Matamoros', 'Tamaulipas', 0),
(801, 'Jardines de Satélite', '87458', 'Matamoros', 'Tamaulipas', 0),
(802, 'Satélite', '87458', 'Matamoros', 'Tamaulipas', 0),
(803, 'Infonavit Satélite', '87458', 'Matamoros', 'Tamaulipas', 0),
(804, 'Infonavit Los Ángeles', '87458', 'Matamoros', 'Tamaulipas', 0),
(805, 'Roberto Guerra', '87458', 'Matamoros', 'Tamaulipas', 0);
INSERT INTO `catColonias` (`idColonia`, `Colonia`, `CodigoPostal`, `Ciudad`, `Estado`, `Status`) VALUES
(806, 'Hacienda los Portales', '87458', 'Matamoros', 'Tamaulipas', 0),
(807, 'José María Morelos', '87459', 'Matamoros', 'Tamaulipas', 0),
(808, 'Popular', '87460', 'Matamoros', 'Tamaulipas', 0),
(809, 'Benito Juárez', '87469', 'Matamoros', 'Tamaulipas', 0),
(810, 'Hacienda Del Prado', '87470', 'Matamoros', 'Tamaulipas', 0),
(811, 'Lauro Villar', '87470', 'Matamoros', 'Tamaulipas', 0),
(812, 'Praderas', '87470', 'Matamoros', 'Tamaulipas', 0),
(813, 'JAD', '87470', 'Matamoros', 'Tamaulipas', 0),
(814, 'Hacienda Praderas', '87470', 'Matamoros', 'Tamaulipas', 0),
(815, 'Miguel Hidalgo', '87470', 'Matamoros', 'Tamaulipas', 0),
(816, 'Playa Sol', '87470', 'Matamoros', 'Tamaulipas', 0),
(817, 'Los Nogales', '87470', 'Matamoros', 'Tamaulipas', 0),
(818, 'Rodolfo Sanchez Taboada', '87470', 'Matamoros', 'Tamaulipas', 0),
(819, 'Libre Comercio', '87470', 'Matamoros', 'Tamaulipas', 0),
(820, 'Valle Del Campestre', '87470', 'Matamoros', 'Tamaulipas', 0),
(821, 'Parque Industrial CYLSA', '87470', 'Matamoros', 'Tamaulipas', 0),
(822, 'La Amistad', '87475', 'Matamoros', 'Tamaulipas', 0),
(823, 'Futaam', '87475', 'Matamoros', 'Tamaulipas', 0),
(824, 'Las Palmitas', '87475', 'Matamoros', 'Tamaulipas', 0),
(825, 'Paraíso', '87475', 'Matamoros', 'Tamaulipas', 0),
(826, 'Las Cumbres', '87476', 'Matamoros', 'Tamaulipas', 0),
(827, 'Valle Verde', '87477', 'Matamoros', 'Tamaulipas', 0),
(828, 'Tierra y Libertad', '87477', 'Matamoros', 'Tamaulipas', 0),
(829, 'Independencia', '87477', 'Matamoros', 'Tamaulipas', 0),
(830, '27 de Febrero', '87477', 'Matamoros', 'Tamaulipas', 0),
(831, 'Derechos Humanos', '87477', 'Matamoros', 'Tamaulipas', 0),
(832, 'El Porvenir', '87477', 'Matamoros', 'Tamaulipas', 0),
(833, 'Fuerza y Unidad', '87477', 'Matamoros', 'Tamaulipas', 0),
(834, '14 de Febrero', '87477', 'Matamoros', 'Tamaulipas', 0),
(835, 'Nuevo Paraíso', '87477', 'Matamoros', 'Tamaulipas', 0),
(836, '5 de Marzo', '87477', 'Matamoros', 'Tamaulipas', 0),
(837, 'Del Bosque', '87477', 'Matamoros', 'Tamaulipas', 0),
(838, 'Correcaminos', '87477', 'Matamoros', 'Tamaulipas', 0),
(839, 'Tecnológico', '87490', 'Matamoros', 'Tamaulipas', 0),
(840, 'Las Culturas', '87490', 'Matamoros', 'Tamaulipas', 0),
(841, 'Parque Industrial FINSA Oriente', '87493', 'Matamoros', 'Tamaulipas', 0),
(842, 'Canadá', '87493', 'Matamoros', 'Tamaulipas', 0),
(843, 'Hacienda la Cima III', '87493', 'Matamoros', 'Tamaulipas', 0),
(844, 'Ampliación Ejido Longoreño', '87493', 'Matamoros', 'Tamaulipas', 0),
(845, 'San Jerónimo Residencial', '87493', 'Matamoros', 'Tamaulipas', 0),
(846, 'Profesor Rafael Ramírez', '87494', 'Matamoros', 'Tamaulipas', 0),
(847, 'Ciudad Industrial', '87494', 'Matamoros', 'Tamaulipas', 0),
(848, 'Loma Alta', '87495', 'Matamoros', 'Tamaulipas', 0),
(849, 'Renacimiento', '87495', 'Matamoros', 'Tamaulipas', 0),
(850, 'Valle del Mezquital', '87495', 'Matamoros', 'Tamaulipas', 0),
(851, 'Santa Fe', '87495', 'Matamoros', 'Tamaulipas', 0),
(852, 'Hogares de Matamoros', '87495', 'Matamoros', 'Tamaulipas', 0),
(853, 'Castillos Reales', '87495', 'Matamoros', 'Tamaulipas', 0),
(854, 'Las Palomas', '87495', 'Matamoros', 'Tamaulipas', 0),
(855, 'Cañaveral', '87495', 'Matamoros', 'Tamaulipas', 0),
(856, 'San Ángel Oriente', '87495', 'Matamoros', 'Tamaulipas', 0),
(857, 'Los Cedros', '87496', 'Matamoros', 'Tamaulipas', 0),
(858, 'Fuentes Industriales II', '87496', 'Matamoros', 'Tamaulipas', 0),
(859, 'Fuentes de Bagdad', '87496', 'Matamoros', 'Tamaulipas', 0),
(860, 'Residencial las Gaviotas', '87496', 'Matamoros', 'Tamaulipas', 0),
(861, 'Fuentes Del Valle', '87496', 'Matamoros', 'Tamaulipas', 0),
(862, 'Lic. Marcelino Miranda', '87496', 'Matamoros', 'Tamaulipas', 0),
(863, 'Fuentes Industriales I', '87496', 'Matamoros', 'Tamaulipas', 0),
(864, 'Fundadores', '87496', 'Matamoros', 'Tamaulipas', 0),
(865, 'Hacienda La Cima', '87496', 'Matamoros', 'Tamaulipas', 0),
(866, 'México', '87497', 'Matamoros', 'Tamaulipas', 0),
(867, 'Palo Verde', '87497', 'Matamoros', 'Tamaulipas', 0),
(868, 'Vista Del Sol', '87497', 'Matamoros', 'Tamaulipas', 0),
(869, 'Valle de La Palangana', '87497', 'Matamoros', 'Tamaulipas', 0),
(870, 'Xochimilco', '87497', 'Matamoros', 'Tamaulipas', 0),
(871, 'Las Américas', '87497', 'Matamoros', 'Tamaulipas', 0),
(872, 'Campestre Del Real', '87497', 'Matamoros', 'Tamaulipas', 0),
(873, 'Palmas del Mar', '87497', 'Matamoros', 'Tamaulipas', 0),
(874, 'Campestre del Lago', '87498', 'Matamoros', 'Tamaulipas', 0),
(875, 'Ciudad Industrial', '87499', 'Matamoros', 'Tamaulipas', 0),
(876, 'Valle Hermoso Centro', '87500', 'Valle Hermoso', 'Tamaulipas', 0),
(877, 'Popular', '87503', 'Valle Hermoso', 'Tamaulipas', 0),
(878, 'INFONAVIT Pedregal', '87503', 'Valle Hermoso', 'Tamaulipas', 0),
(879, 'Zapata', '87503', 'Valle Hermoso', 'Tamaulipas', 0),
(880, 'Las Brisas', '87503', 'Valle Hermoso', 'Tamaulipas', 0),
(881, 'San José', '87503', 'Valle Hermoso', 'Tamaulipas', 0),
(882, 'López Mateos', '87503', 'Valle Hermoso', 'Tamaulipas', 0),
(883, 'Obrera', '87503', 'Valle Hermoso', 'Tamaulipas', 0),
(884, 'Las Palmas', '87503', 'Valle Hermoso', 'Tamaulipas', 0),
(885, 'Las Mitras', '87503', 'Valle Hermoso', 'Tamaulipas', 0),
(886, 'El Pedregal', '87503', 'Valle Hermoso', 'Tamaulipas', 0),
(887, 'México', '87503', 'Valle Hermoso', 'Tamaulipas', 0),
(888, 'Norteñita', '87503', 'Valle Hermoso', 'Tamaulipas', 0),
(889, 'Moderna', '87503', 'Valle Hermoso', 'Tamaulipas', 0),
(890, 'José García Cárdenas', '87503', 'Valle Hermoso', 'Tamaulipas', 0),
(891, 'SARH', '87503', 'Valle Hermoso', 'Tamaulipas', 0),
(892, 'Los Pinos', '87504', 'Valle Hermoso', 'Tamaulipas', 0),
(893, 'Poblado Magueyes', '87504', 'Valle Hermoso', 'Tamaulipas', 0),
(894, 'Dalias', '87504', 'Valle Hermoso', 'Tamaulipas', 0),
(895, 'Jardín', '87504', 'Valle Hermoso', 'Tamaulipas', 0),
(896, 'Los Fresnos', '87504', 'Valle Hermoso', 'Tamaulipas', 0),
(897, 'San Luis', '87504', 'Valle Hermoso', 'Tamaulipas', 0),
(898, 'Agricultores', '87504', 'Valle Hermoso', 'Tamaulipas', 0),
(899, 'Juan José Tamez Fuentes', '87504', 'Valle Hermoso', 'Tamaulipas', 0),
(900, 'Juárez', '87504', 'Valle Hermoso', 'Tamaulipas', 0),
(901, 'Jarita', '87504', 'Valle Hermoso', 'Tamaulipas', 0),
(902, 'INFONAVIT Diego Navarro', '87504', 'Valle Hermoso', 'Tamaulipas', 0),
(903, 'Aurora', '87504', 'Valle Hermoso', 'Tamaulipas', 0),
(904, 'Hidalgo', '87504', 'Valle Hermoso', 'Tamaulipas', 0),
(905, 'San Francisco', '87504', 'Valle Hermoso', 'Tamaulipas', 0),
(906, 'Magisterio', '87504', 'Valle Hermoso', 'Tamaulipas', 0),
(907, 'INFONAVIT Magueyes', '87504', 'Valle Hermoso', 'Tamaulipas', 0),
(908, 'Burócrata', '87504', 'Valle Hermoso', 'Tamaulipas', 0),
(909, 'Bernal Mares', '87504', 'Valle Hermoso', 'Tamaulipas', 0),
(910, 'Madero', '87504', 'Valle Hermoso', 'Tamaulipas', 0),
(911, 'Olímpica', '87504', 'Valle Hermoso', 'Tamaulipas', 0),
(912, 'Lucio Monroy', '87504', 'Valle Hermoso', 'Tamaulipas', 0),
(913, 'Torres', '87504', 'Valle Hermoso', 'Tamaulipas', 0),
(914, 'Arboledas del Valle', '87504', 'Valle Hermoso', 'Tamaulipas', 0),
(915, 'Magueyes', '87504', 'Valle Hermoso', 'Tamaulipas', 0),
(916, 'Lázaro Cárdenas', '87504', 'Valle Hermoso', 'Tamaulipas', 0),
(917, 'FOVISSSTE Eduardo Chávez', '87504', 'Valle Hermoso', 'Tamaulipas', 0),
(918, 'Guadalupe', '87504', 'Valle Hermoso', 'Tamaulipas', 0),
(919, 'Soberón', '87504', 'Valle Hermoso', 'Tamaulipas', 0),
(920, 'Sección 22', '87504', 'Valle Hermoso', 'Tamaulipas', 0),
(921, 'Valle Hermoso', '87505', 'Valle Hermoso', 'Tamaulipas', 0),
(922, 'Club de Leones', '87505', 'Valle Hermoso', 'Tamaulipas', 0),
(923, 'Esperanza del Sur', '87505', 'Valle Hermoso', 'Tamaulipas', 0),
(924, 'INFONAVIT Las Yescas', '87505', 'Valle Hermoso', 'Tamaulipas', 0),
(925, 'Las Flores', '87505', 'Valle Hermoso', 'Tamaulipas', 0),
(926, 'Hacienda del Valle', '87505', 'Valle Hermoso', 'Tamaulipas', 0),
(927, 'Las Américas', '87505', 'Valle Hermoso', 'Tamaulipas', 0),
(928, 'Las Arboledas', '87505', 'Valle Hermoso', 'Tamaulipas', 0),
(929, 'Popular Brisas del Valle', '87505', 'Valle Hermoso', 'Tamaulipas', 0),
(930, 'Santa Rosa', '87505', 'Valle Hermoso', 'Tamaulipas', 0),
(931, 'El Roble', '87505', 'Valle Hermoso', 'Tamaulipas', 0),
(932, 'Bellavista', '87505', 'Valle Hermoso', 'Tamaulipas', 0),
(933, 'Buenavista', '87505', 'Valle Hermoso', 'Tamaulipas', 0),
(934, 'Del Maestro', '87505', 'Valle Hermoso', 'Tamaulipas', 0),
(935, 'Palo Alto', '87505', 'Valle Hermoso', 'Tamaulipas', 0),
(936, 'Progreso', '87505', 'Valle Hermoso', 'Tamaulipas', 0),
(937, 'Ambrosio Ruiz', '87505', 'Valle Hermoso', 'Tamaulipas', 0),
(938, 'Lindavista', '87505', 'Valle Hermoso', 'Tamaulipas', 0),
(939, 'Moctezuma', '87505', 'Valle Hermoso', 'Tamaulipas', 0),
(940, 'Los Fresnos', '87505', 'Valle Hermoso', 'Tamaulipas', 0),
(941, 'La Luz', '87506', 'Valle Hermoso', 'Tamaulipas', 0),
(942, 'San Ángel', '87506', 'Valle Hermoso', 'Tamaulipas', 0),
(943, 'Flores Magón', '87506', 'Valle Hermoso', 'Tamaulipas', 0),
(944, 'San Lorenzo', '87506', 'Valle Hermoso', 'Tamaulipas', 0),
(945, 'José Silva Sánchez', '87506', 'Valle Hermoso', 'Tamaulipas', 0),
(946, 'Alianza', '87507', 'Valle Hermoso', 'Tamaulipas', 0),
(947, 'Allende', '87507', 'Valle Hermoso', 'Tamaulipas', 0),
(948, 'Independencia Sur', '87507', 'Valle Hermoso', 'Tamaulipas', 0),
(949, 'Primavera', '87507', 'Valle Hermoso', 'Tamaulipas', 0),
(950, 'Unión', '87507', 'Valle Hermoso', 'Tamaulipas', 0),
(951, 'Vista Hermosa', '87507', 'Valle Hermoso', 'Tamaulipas', 0),
(952, 'Modelo', '87507', 'Valle Hermoso', 'Tamaulipas', 0),
(953, 'Villas de América', '87507', 'Valle Hermoso', 'Tamaulipas', 0),
(954, 'Vicente Guerrero', '87507', 'Valle Hermoso', 'Tamaulipas', 0),
(955, 'Niños Héroes', '87507', 'Valle Hermoso', 'Tamaulipas', 0),
(956, 'Los Conejos', '87507', 'Valle Hermoso', 'Tamaulipas', 0),
(957, 'Jesús Castillo Marroquin', '87507', 'Valle Hermoso', 'Tamaulipas', 0),
(958, 'Arco Iris', '87507', 'Valle Hermoso', 'Tamaulipas', 0),
(959, 'Eduardo Chávez', '87507', 'Valle Hermoso', 'Tamaulipas', 0),
(960, 'Díaz Ordaz', '87507', 'Valle Hermoso', 'Tamaulipas', 0),
(961, 'Escobedo', '87507', 'Valle Hermoso', 'Tamaulipas', 0),
(962, 'Tamaulipas', '87507', 'Valle Hermoso', 'Tamaulipas', 0),
(963, 'Del Valle', '87507', 'Valle Hermoso', 'Tamaulipas', 0),
(964, 'Villa Satélite', '87507', 'Valle Hermoso', 'Tamaulipas', 0),
(965, 'Independencia Norte', '87507', 'Valle Hermoso', 'Tamaulipas', 0),
(966, 'Las Palmas', '87510', 'Valle Hermoso', 'Tamaulipas', 0),
(967, 'Anáhuac', '87510', 'Valle Hermoso', 'Tamaulipas', 0),
(968, 'Empalme', '87511', 'Valle Hermoso', 'Tamaulipas', 0),
(969, 'Ignacio Manuel Altamirano', '87512', 'Valle Hermoso', 'Tamaulipas', 0),
(970, 'Liberación del Campesino', '87513', 'Valle Hermoso', 'Tamaulipas', 0),
(971, 'Ensenada', '87513', 'Valle Hermoso', 'Tamaulipas', 0),
(972, 'La Florida', '87514', 'Valle Hermoso', 'Tamaulipas', 0),
(973, 'El Realito', '87520', 'Valle Hermoso', 'Tamaulipas', 0),
(974, 'Aquiles Serdán', '87520', 'Valle Hermoso', 'Tamaulipas', 0),
(975, 'La Chapeña (Brecha 114 con Kilómetro 99.8)', '87522', 'Valle Hermoso', 'Tamaulipas', 0),
(976, 'Nueva Victoria (Brecha 123 entre Sur 91 y Sur 94)', '87524', 'Valle Hermoso', 'Tamaulipas', 0),
(977, 'Doce de Octubre', '87525', 'Valle Hermoso', 'Tamaulipas', 0),
(978, '18 de Marzo (Brecha 120 entre Sur 96 y Sur 100)', '87530', 'Valle Hermoso', 'Tamaulipas', 0),
(979, 'El Porvenir', '87535', 'Valle Hermoso', 'Tamaulipas', 0),
(980, 'El Longoreño', '87540', 'Matamoros', 'Tamaulipas', 0),
(981, 'El Refugio', '87540', 'Matamoros', 'Tamaulipas', 0),
(982, 'El Tecolote', '87544', 'Matamoros', 'Tamaulipas', 0),
(983, 'Presidente Cárdenas (Villa Cárdenas)', '87550', 'Matamoros', 'Tamaulipas', 0),
(984, 'La Palangana', '87551', 'Matamoros', 'Tamaulipas', 0),
(985, 'La Barranca', '87551', 'Matamoros', 'Tamaulipas', 0),
(986, 'Soliseño', '87551', 'Matamoros', 'Tamaulipas', 0),
(987, 'Ramírez', '87552', 'Matamoros', 'Tamaulipas', 0),
(988, 'El Control', '87552', 'Matamoros', 'Tamaulipas', 0),
(989, 'Obrera', '87552', 'Matamoros', 'Tamaulipas', 0),
(990, 'Revolución', '87553', 'Matamoros', 'Tamaulipas', 0),
(991, 'La Vanguardia', '87553', 'Matamoros', 'Tamaulipas', 0),
(992, 'La Laguna', '87553', 'Matamoros', 'Tamaulipas', 0),
(993, 'El Capote', '87554', 'Matamoros', 'Tamaulipas', 0),
(994, 'La Brigada', '87554', 'Matamoros', 'Tamaulipas', 0),
(995, 'San Luisito', '87554', 'Matamoros', 'Tamaulipas', 0),
(996, 'Villanueva', '87554', 'Matamoros', 'Tamaulipas', 0),
(997, 'La Sierrita', '87555', 'Matamoros', 'Tamaulipas', 0),
(998, 'Timones (Los Ángeles)', '87557', 'Matamoros', 'Tamaulipas', 0),
(999, 'El Ebanito', '87557', 'Matamoros', 'Tamaulipas', 0),
(1000, 'Santa Adelaida', '87557', 'Matamoros', 'Tamaulipas', 0),
(1001, 'Sandoval (Familia Pizaña)', '87557', 'Matamoros', 'Tamaulipas', 0),
(1002, 'El Sabino', '87557', 'Matamoros', 'Tamaulipas', 0),
(1003, 'Santa Irene', '87557', 'Matamoros', 'Tamaulipas', 0),
(1004, 'El Tahuachal', '87557', 'Matamoros', 'Tamaulipas', 0),
(1005, 'El Perote', '87557', 'Matamoros', 'Tamaulipas', 0),
(1006, 'Estación Sandoval', '87557', 'Matamoros', 'Tamaulipas', 0),
(1007, 'Progreso Agrario (Santa Librada)', '87558', 'Matamoros', 'Tamaulipas', 0),
(1008, 'Los Olmos', '87558', 'Matamoros', 'Tamaulipas', 0),
(1009, 'Palo Blanco', '87558', 'Matamoros', 'Tamaulipas', 0),
(1010, 'Río Rico', '87559', 'Matamoros', 'Tamaulipas', 0),
(1011, 'Ignacio Zaragoza', '87560', 'Matamoros', 'Tamaulipas', 0),
(1012, 'La Gloria', '87560', 'Matamoros', 'Tamaulipas', 0),
(1013, 'CEFERESO Número 3', '87560', 'Matamoros', 'Tamaulipas', 0),
(1014, 'Los Ranchitos (Porfirio Méndez)', '87560', 'Matamoros', 'Tamaulipas', 0),
(1015, 'La Venada', '87560', 'Matamoros', 'Tamaulipas', 0),
(1016, 'La Jarita Sur', '87560', 'Matamoros', 'Tamaulipas', 0),
(1017, 'La Tijerita', '87560', 'Matamoros', 'Tamaulipas', 0),
(1018, 'El Galaneño', '87560', 'Matamoros', 'Tamaulipas', 0),
(1019, 'La Jarita Norte', '87560', 'Matamoros', 'Tamaulipas', 0),
(1020, 'La Luz', '87560', 'Matamoros', 'Tamaulipas', 0),
(1021, 'Pacheco', '87563', 'Matamoros', 'Tamaulipas', 0),
(1022, 'Las Blancas', '87565', 'Matamoros', 'Tamaulipas', 0),
(1023, 'Parque Industrial La Ventana', '87569', 'Matamoros', 'Tamaulipas', 0),
(1024, 'Guadalupe', '87569', 'Matamoros', 'Tamaulipas', 0),
(1025, 'La Ventana', '87569', 'Matamoros', 'Tamaulipas', 0),
(1026, 'El Ranchito', '87570', 'Matamoros', 'Tamaulipas', 0),
(1027, 'La Bartolina', '87577', 'Matamoros', 'Tamaulipas', 0),
(1028, 'Quijano', '87580', 'Matamoros', 'Tamaulipas', 0),
(1029, 'El Moquetito', '87580', 'Matamoros', 'Tamaulipas', 0),
(1030, 'La Libertad Número Dos', '87585', 'Matamoros', 'Tamaulipas', 0),
(1031, 'Las Higuerillas', '87587', 'Matamoros', 'Tamaulipas', 0),
(1032, 'La Capilla', '87587', 'Matamoros', 'Tamaulipas', 0),
(1033, 'San Lorenzo', '87589', 'Matamoros', 'Tamaulipas', 0),
(1034, 'San Fernando Centro', '87600', 'San Fernando', 'Tamaulipas', 0),
(1035, 'Las Torres', '87602', 'San Fernando', 'Tamaulipas', 0),
(1036, 'Villa Del Mar', '87602', 'San Fernando', 'Tamaulipas', 0),
(1037, 'Jardín', '87602', 'San Fernando', 'Tamaulipas', 0),
(1038, 'La Valentina', '87602', 'San Fernando', 'Tamaulipas', 0),
(1039, 'Emiliano Zapata', '87602', 'San Fernando', 'Tamaulipas', 0),
(1040, 'Magisterial', '87602', 'San Fernando', 'Tamaulipas', 0),
(1041, 'Caminera', '87602', 'San Fernando', 'Tamaulipas', 0),
(1042, 'Bellavista Norte', '87602', 'San Fernando', 'Tamaulipas', 0),
(1043, 'Independencia', '87602', 'San Fernando', 'Tamaulipas', 0),
(1044, 'Nuevo Amanecer', '87604', 'San Fernando', 'Tamaulipas', 0),
(1045, 'Manuel Cavazos Lerma', '87604', 'San Fernando', 'Tamaulipas', 0),
(1046, 'Américo Villarreal', '87604', 'San Fernando', 'Tamaulipas', 0),
(1047, 'Bellavista Sur', '87604', 'San Fernando', 'Tamaulipas', 0),
(1048, 'Francisco Galván Loperena', '87604', 'San Fernando', 'Tamaulipas', 0),
(1049, 'Obrera', '87604', 'San Fernando', 'Tamaulipas', 0),
(1050, 'Tamaulipas', '87604', 'San Fernando', 'Tamaulipas', 0),
(1051, 'Loma Alta', '87605', 'San Fernando', 'Tamaulipas', 0),
(1052, 'La Rivereña', '87605', 'San Fernando', 'Tamaulipas', 0),
(1053, 'Luis Donaldo Colosio', '87605', 'San Fernando', 'Tamaulipas', 0),
(1054, 'Infonavit', '87605', 'San Fernando', 'Tamaulipas', 0),
(1055, '5 de Mayo', '87605', 'San Fernando', 'Tamaulipas', 0),
(1056, 'Paso Real', '87606', 'San Fernando', 'Tamaulipas', 0),
(1057, 'Los Cisnes', '87606', 'San Fernando', 'Tamaulipas', 0),
(1058, 'Lomas de San Fernando', '87606', 'San Fernando', 'Tamaulipas', 0),
(1059, 'Ladrillera', '87607', 'San Fernando', 'Tamaulipas', 0),
(1060, 'Gabriel de La Garza', '87607', 'San Fernando', 'Tamaulipas', 0),
(1061, 'Las Fuentes', '87607', 'San Fernando', 'Tamaulipas', 0),
(1062, 'Las Malvinas', '87607', 'San Fernando', 'Tamaulipas', 0),
(1063, 'México', '87607', 'San Fernando', 'Tamaulipas', 0),
(1064, 'Santa Teresa', '87610', 'San Fernando', 'Tamaulipas', 0),
(1065, 'Guadalupe Victoria (El Norteño)', '87610', 'San Fernando', 'Tamaulipas', 0),
(1066, 'La Loma', '87610', 'San Fernando', 'Tamaulipas', 0),
(1067, 'San Germán', '87610', 'San Fernando', 'Tamaulipas', 0),
(1068, 'Palos Blancos', '87610', 'San Fernando', 'Tamaulipas', 0),
(1069, 'Las Escobas', '87612', 'San Fernando', 'Tamaulipas', 0),
(1070, 'Miguel Hidalgo II (Las Rosas)', '87613', 'San Fernando', 'Tamaulipas', 0),
(1071, 'Juan Antonio', '87613', 'San Fernando', 'Tamaulipas', 0),
(1072, 'San Francisco', '87616', 'San Fernando', 'Tamaulipas', 0),
(1073, 'La Carreta Uno', '87617', 'San Fernando', 'Tamaulipas', 0),
(1074, 'Plan Del Alazán', '87618', 'San Fernando', 'Tamaulipas', 0),
(1075, 'General Francisco González Villarreal (San Juan)', '87618', 'San Fernando', 'Tamaulipas', 0),
(1076, 'Alfredo V. Bonfil (Luis Echeverría)', '87619', 'San Fernando', 'Tamaulipas', 0),
(1077, 'Los Vergeles', '87619', 'San Fernando', 'Tamaulipas', 0),
(1078, 'San José', '87620', 'San Fernando', 'Tamaulipas', 0),
(1079, 'General Francisco Villa', '87620', 'San Fernando', 'Tamaulipas', 0),
(1080, 'Águila Azteca', '87620', 'San Fernando', 'Tamaulipas', 0),
(1081, 'Las Norias', '87622', 'San Fernando', 'Tamaulipas', 0),
(1082, 'Horacio Terán', '87624', 'San Fernando', 'Tamaulipas', 0),
(1083, 'Laguna de San Juan', '87624', 'San Fernando', 'Tamaulipas', 0),
(1084, 'Laguna Seca', '87624', 'San Fernando', 'Tamaulipas', 0),
(1085, 'Adolfo Ruiz Cortines', '87625', 'San Fernando', 'Tamaulipas', 0),
(1086, 'Miguel Hidalgo Uno', '87626', 'San Fernando', 'Tamaulipas', 0),
(1087, 'Seis de Enero (Miguel Hidalgo Segundo)', '87627', 'San Fernando', 'Tamaulipas', 0),
(1088, 'La Joya', '87628', 'San Fernando', 'Tamaulipas', 0),
(1089, 'Pastores (Escuadrón 201)', '87629', 'San Fernando', 'Tamaulipas', 0),
(1090, 'El Barrancón del Tío Blas (El Barrancón)', '87629', 'San Fernando', 'Tamaulipas', 0),
(1091, 'Palo Solo', '87629', 'San Fernando', 'Tamaulipas', 0),
(1092, 'Carboneras (La Carbonera)', '87630', 'San Fernando', 'Tamaulipas', 0),
(1093, 'Punta de Alambre (Puente de Alambre)', '87636', 'San Fernando', 'Tamaulipas', 0),
(1094, 'Carvajal', '87636', 'San Fernando', 'Tamaulipas', 0),
(1095, 'Cruillas', '87640', 'Cruillas', 'Tamaulipas', 0),
(1096, 'Tres Palos', '87650', 'Cruillas', 'Tamaulipas', 0),
(1097, 'El Barranco', '87655', 'Cruillas', 'Tamaulipas', 0),
(1098, 'San Nicolás', '87660', 'San Nicolás', 'Tamaulipas', 0),
(1099, 'El Palmar', '87666', 'San Nicolás', 'Tamaulipas', 0),
(1100, 'Las Vírgenes (Moctezuma)', '87668', 'San Nicolás', 'Tamaulipas', 0),
(1101, 'Del Rio Solidaridad', '87670', 'Soto la Marina', 'Tamaulipas', 0),
(1102, 'Militar', '87670', 'Soto la Marina', 'Tamaulipas', 0),
(1103, 'Nueva Rosita', '87670', 'Soto la Marina', 'Tamaulipas', 0),
(1104, 'Barrio Blanco', '87670', 'Soto la Marina', 'Tamaulipas', 0),
(1105, 'Juventud Revolucionaria', '87670', 'Soto la Marina', 'Tamaulipas', 0),
(1106, 'Vista Hermosa', '87670', 'Soto la Marina', 'Tamaulipas', 0),
(1107, '20 de Noviembre', '87670', 'Soto la Marina', 'Tamaulipas', 0),
(1108, 'Soto La Marina Centro', '87670', 'Soto la Marina', 'Tamaulipas', 0),
(1109, 'Magisterial', '87670', 'Soto la Marina', 'Tamaulipas', 0),
(1110, '3 de Septiembre', '87670', 'Soto la Marina', 'Tamaulipas', 0),
(1111, 'Melchor Ocampo', '87670', 'Soto la Marina', 'Tamaulipas', 0),
(1112, 'Nueva Rosita', '87670', 'Soto la Marina', 'Tamaulipas', 0),
(1113, 'San José de las Rusias', '87673', 'Soto la Marina', 'Tamaulipas', 0),
(1114, 'La Peñita', '87676', 'Soto la Marina', 'Tamaulipas', 0),
(1115, 'Tres de Abril (Noche Buena)', '87677', 'Soto la Marina', 'Tamaulipas', 0),
(1116, 'Miguel de La Madrid (el Canal)', '87678', 'Soto la Marina', 'Tamaulipas', 0),
(1117, 'Benito Juárez', '87678', 'Soto la Marina', 'Tamaulipas', 0),
(1118, 'La Pesca', '87678', 'Soto la Marina', 'Tamaulipas', 0),
(1119, 'Tampiquito', '87679', 'Soto la Marina', 'Tamaulipas', 0),
(1120, 'Verde Chico', '87680', 'Soto la Marina', 'Tamaulipas', 0),
(1121, 'Magueyes', '87685', 'Soto la Marina', 'Tamaulipas', 0),
(1122, 'La Peña', '87690', 'Soto la Marina', 'Tamaulipas', 0),
(1123, 'Las Pilas', '87690', 'Soto la Marina', 'Tamaulipas', 0),
(1124, 'El Sabinito', '87693', 'Soto la Marina', 'Tamaulipas', 0),
(1125, 'La Zamorina', '87694', 'Soto la Marina', 'Tamaulipas', 0),
(1126, 'La Encarnación', '87695', 'Soto la Marina', 'Tamaulipas', 0),
(1127, 'San Felipe', '87695', 'Soto la Marina', 'Tamaulipas', 0),
(1128, 'Nombre de Dios', '87695', 'Soto la Marina', 'Tamaulipas', 0),
(1129, 'Santa Isabel', '87696', 'Soto la Marina', 'Tamaulipas', 0),
(1130, 'El Esmeril', '87696', 'Soto la Marina', 'Tamaulipas', 0),
(1131, 'Lavaderos', '87697', 'Soto la Marina', 'Tamaulipas', 0),
(1132, 'Alberto Carrera Torres', '87697', 'Soto la Marina', 'Tamaulipas', 0),
(1133, 'Santander Jiménez', '87700', 'Jiménez', 'Tamaulipas', 0),
(1134, 'El Peñón', '87709', 'Jiménez', 'Tamaulipas', 0),
(1135, 'El Encinal', '87709', 'Jiménez', 'Tamaulipas', 0),
(1136, 'La Esperanza (La Polvareda)', '87710', 'Jiménez', 'Tamaulipas', 0),
(1137, 'Tres de Abril (El Tulillo)', '87713', 'Jiménez', 'Tamaulipas', 0),
(1138, 'Allende', '87720', 'Jiménez', 'Tamaulipas', 0),
(1139, 'San Carlos', '87730', 'San Carlos', 'Tamaulipas', 0),
(1140, 'Benito Juárez (La Coma)', '87733', 'San Carlos', 'Tamaulipas', 0),
(1141, 'El Gavilán', '87735', 'San Carlos', 'Tamaulipas', 0),
(1142, 'Boca de Álamos', '87737', 'San Carlos', 'Tamaulipas', 0),
(1143, 'Marmolejo', '87738', 'San Carlos', 'Tamaulipas', 0),
(1144, 'La Unión Morales', '87739', 'San Carlos', 'Tamaulipas', 0),
(1145, 'San Andrés', '87740', 'San Carlos', 'Tamaulipas', 0),
(1146, 'La Gavia', '87740', 'San Carlos', 'Tamaulipas', 0),
(1147, 'Víctor Manuel Bueno', '87743', 'San Carlos', 'Tamaulipas', 0),
(1148, 'Nuevo Praxedis Balboa', '87744', 'San Carlos', 'Tamaulipas', 0),
(1149, 'Nuevo San Antonio', '87746', 'San Carlos', 'Tamaulipas', 0),
(1150, 'La Nueva Unión', '87747', 'San Carlos', 'Tamaulipas', 0),
(1151, 'Los Angelitos (Ángeles)', '87747', 'San Carlos', 'Tamaulipas', 0),
(1152, 'El Barranco Azul', '87747', 'San Carlos', 'Tamaulipas', 0),
(1153, 'El Saucillo', '87748', 'San Carlos', 'Tamaulipas', 0),
(1154, 'Los Quiotes', '87750', 'San Carlos', 'Tamaulipas', 0),
(1155, 'Puerto Rico', '87755', 'San Carlos', 'Tamaulipas', 0),
(1156, 'Profesor Graciano Sánchez', '87755', 'San Carlos', 'Tamaulipas', 0),
(1157, 'Américo Villareal', '87760', 'Abasolo', 'Tamaulipas', 0),
(1158, 'La Amistad', '87760', 'Abasolo', 'Tamaulipas', 0),
(1159, 'Manuel Cavazos Lerma', '87760', 'Abasolo', 'Tamaulipas', 0),
(1160, 'Tomás Yarrington', '87760', 'Abasolo', 'Tamaulipas', 0),
(1161, 'Modelo', '87760', 'Abasolo', 'Tamaulipas', 0),
(1162, 'Integración Familiar', '87760', 'Abasolo', 'Tamaulipas', 0),
(1163, 'Ciudad Abasolo', '87760', 'Abasolo', 'Tamaulipas', 0),
(1164, 'Tacubaya', '87760', 'Abasolo', 'Tamaulipas', 0),
(1165, 'Nuevo Dolores', '87766', 'Abasolo', 'Tamaulipas', 0),
(1166, 'Adolfo López Mateos (Las Cabras)', '87767', 'Abasolo', 'Tamaulipas', 0),
(1167, 'Parras de la Fuente', '87768', 'Abasolo', 'Tamaulipas', 0),
(1168, 'Nicolás Bravo (Palo Alto)', '87768', 'Abasolo', 'Tamaulipas', 0),
(1169, 'Guía del Porvenir', '87769', 'Abasolo', 'Tamaulipas', 0),
(1170, 'Guadalupe Victoria', '87770', 'Abasolo', 'Tamaulipas', 0),
(1171, 'Vicente Guerrero', '87780', 'Padilla', 'Tamaulipas', 0),
(1172, 'Nueva Villa de Padilla', '87780', 'Padilla', 'Tamaulipas', 0),
(1173, 'Cinco de Mayo', '87785', 'Padilla', 'Tamaulipas', 0),
(1174, 'Corpus Christi (Corpus)', '87790', 'Padilla', 'Tamaulipas', 0),
(1175, 'Campoamor', '87790', 'Padilla', 'Tamaulipas', 0),
(1176, 'Santa Juana', '87790', 'Padilla', 'Tamaulipas', 0),
(1177, 'Nuevo San Juan (San Juan)', '87793', 'Padilla', 'Tamaulipas', 0),
(1178, 'Conrado Castillo', '87794', 'Padilla', 'Tamaulipas', 0),
(1179, 'El Tablero', '87795', 'Padilla', 'Tamaulipas', 0),
(1180, 'Marte R. Gómez', '87797', 'Padilla', 'Tamaulipas', 0),
(1181, 'Quince de Febrero', '87797', 'Padilla', 'Tamaulipas', 0),
(1182, 'Mártires de Chinameca (Mártir de Chinameca)', '87798', 'Padilla', 'Tamaulipas', 0),
(1183, 'San Patricio', '87798', 'Padilla', 'Tamaulipas', 0),
(1184, 'Los Brasiles', '87798', 'Padilla', 'Tamaulipas', 0),
(1185, 'La Soledad', '87798', 'Padilla', 'Tamaulipas', 0),
(1186, 'Barretal', '87799', 'Padilla', 'Tamaulipas', 0),
(1187, 'Úrsulo Galván', '87799', 'Padilla', 'Tamaulipas', 0),
(1188, 'Benito Juárez (Monfort)', '87800', 'Hidalgo', 'Tamaulipas', 0),
(1189, 'Hidalgo', '87800', 'Hidalgo', 'Tamaulipas', 0),
(1190, 'Los Ángeles', '87801', 'Hidalgo', 'Tamaulipas', 0),
(1191, 'Purificación (Peñuelas)', '87801', 'Hidalgo', 'Tamaulipas', 0),
(1192, 'El Cerrito', '87803', 'Hidalgo', 'Tamaulipas', 0),
(1193, 'El Pensamiento Libre (El Pensamiento)', '87804', 'Hidalgo', 'Tamaulipas', 0),
(1194, 'El Tomaseño (Ejido)', '87805', 'Hidalgo', 'Tamaulipas', 0),
(1195, 'La Rosalba (Ejido)', '87805', 'Hidalgo', 'Tamaulipas', 0),
(1196, 'San Juana', '87806', 'Hidalgo', 'Tamaulipas', 0),
(1197, 'Cinco de Mayo', '87806', 'Hidalgo', 'Tamaulipas', 0),
(1198, 'Barbosa', '87806', 'Hidalgo', 'Tamaulipas', 0),
(1199, 'General Julián Cerda', '87808', 'Hidalgo', 'Tamaulipas', 0),
(1200, 'Santa Cleotilde', '87808', 'Hidalgo', 'Tamaulipas', 0),
(1201, 'Primero de Mayo', '87808', 'Hidalgo', 'Tamaulipas', 0),
(1202, 'Carrizos (La Hacienda)', '87810', 'Hidalgo', 'Tamaulipas', 0),
(1203, 'Puerto del Aire (Isaías González Vázquez)', '87813', 'Hidalgo', 'Tamaulipas', 0),
(1204, 'Las Tinajas', '87816', 'Hidalgo', 'Tamaulipas', 0),
(1205, 'San Nicolás', '87819', 'Hidalgo', 'Tamaulipas', 0),
(1206, 'El Chorrito (El Chorro)', '87820', 'Hidalgo', 'Tamaulipas', 0),
(1207, 'Ex Hacienda de la Mesa (Hacienda la Mesa)', '87822', 'Hidalgo', 'Tamaulipas', 0),
(1208, 'San Isidro', '87822', 'Hidalgo', 'Tamaulipas', 0),
(1209, 'Guadalupe Victoria', '87823', 'Hidalgo', 'Tamaulipas', 0),
(1210, 'Independencia', '87823', 'Hidalgo', 'Tamaulipas', 0),
(1211, 'La Noria', '87824', 'Hidalgo', 'Tamaulipas', 0),
(1212, 'La Trinidad', '87825', 'Hidalgo', 'Tamaulipas', 0),
(1213, 'La Crucita (La Piragua)', '87825', 'Hidalgo', 'Tamaulipas', 0),
(1214, 'San Matías', '87826', 'Hidalgo', 'Tamaulipas', 0),
(1215, 'San Antonio', '87826', 'Hidalgo', 'Tamaulipas', 0),
(1216, 'Las Margaritas', '87827', 'Hidalgo', 'Tamaulipas', 0),
(1217, 'Marroquín', '87827', 'Hidalgo', 'Tamaulipas', 0),
(1218, 'Buenos Aires', '87827', 'Hidalgo', 'Tamaulipas', 0),
(1219, 'Morquecho', '87829', 'Hidalgo', 'Tamaulipas', 0),
(1220, 'Santa Cruz', '87830', 'Hidalgo', 'Tamaulipas', 0),
(1221, 'El Progreso', '87831', 'Hidalgo', 'Tamaulipas', 0),
(1222, 'Oyama', '87831', 'Hidalgo', 'Tamaulipas', 0),
(1223, 'La Colombina', '87832', 'Hidalgo', 'Tamaulipas', 0),
(1224, 'Palo Alto', '87832', 'Hidalgo', 'Tamaulipas', 0),
(1225, 'José María Morelos y Pavón (Mapaches)', '87832', 'Hidalgo', 'Tamaulipas', 0),
(1226, 'San Francisco', '87834', 'Hidalgo', 'Tamaulipas', 0),
(1227, 'La Garita', '87835', 'Hidalgo', 'Tamaulipas', 0),
(1228, 'Santa Fe', '87835', 'Hidalgo', 'Tamaulipas', 0),
(1229, 'Cruz y Cruz', '87840', 'Hidalgo', 'Tamaulipas', 0),
(1230, 'Cruz y Carmen', '87840', 'Hidalgo', 'Tamaulipas', 0),
(1231, 'La Cruz', '87840', 'Hidalgo', 'Tamaulipas', 0),
(1232, 'Guillermo Zúñiga', '87841', 'Hidalgo', 'Tamaulipas', 0),
(1233, 'El Sauz', '87843', 'Hidalgo', 'Tamaulipas', 0),
(1234, 'Ignacio Allende (Estación Adelaida)', '87844', 'Hidalgo', 'Tamaulipas', 0),
(1235, 'Benito Juárez', '87848', 'Hidalgo', 'Tamaulipas', 0),
(1236, 'Santa Engracia', '87849', 'Hidalgo', 'Tamaulipas', 0),
(1237, 'Guayabas', '87853', 'Hidalgo', 'Tamaulipas', 0),
(1238, 'Conrado Castillo', '87854', 'Hidalgo', 'Tamaulipas', 0),
(1239, 'La Aurora', '87858', 'Hidalgo', 'Tamaulipas', 0),
(1240, 'Villa Mainero', '87860', 'Mainero', 'Tamaulipas', 0),
(1241, 'Américo Villarreal Guerra', '87860', 'Mainero', 'Tamaulipas', 0),
(1242, 'Venustiano Carranza (La Oveja)', '87865', 'Mainero', 'Tamaulipas', 0),
(1243, 'José Delgado', '87865', 'Mainero', 'Tamaulipas', 0),
(1244, 'Emilio Vázquez Gómez (Agua Fría)', '87865', 'Mainero', 'Tamaulipas', 0),
(1245, 'Magueyes', '87870', 'Mainero', 'Tamaulipas', 0),
(1246, 'San Luis Hidalgo', '87873', 'Mainero', 'Tamaulipas', 0),
(1247, 'Las Puentes', '87873', 'Mainero', 'Tamaulipas', 0),
(1248, 'Emiliano Zapata', '87875', 'Mainero', 'Tamaulipas', 0),
(1249, 'Villagran', '87880', 'Villagrán', 'Tamaulipas', 0),
(1250, 'Cuauhtémoc', '87880', 'Villagrán', 'Tamaulipas', 0),
(1251, 'Américo Villarreal Guerra', '87880', 'Villagrán', 'Tamaulipas', 0),
(1252, 'El Breve', '87883', 'Villagrán', 'Tamaulipas', 0),
(1253, 'Jesús González Ortega', '87883', 'Villagrán', 'Tamaulipas', 0),
(1254, 'La Purísima Floreña', '87884', 'Villagrán', 'Tamaulipas', 0),
(1255, 'Candelario Reyes (San Miguel)', '87885', 'Villagrán', 'Tamaulipas', 0),
(1256, 'Miguel Hidalgo', '87885', 'Villagrán', 'Tamaulipas', 0),
(1257, 'General Jesús Carranza (Sabinitos)', '87886', 'Villagrán', 'Tamaulipas', 0),
(1258, 'Brígido Maldonado', '87886', 'Villagrán', 'Tamaulipas', 0),
(1259, 'El Limón', '87887', 'Villagrán', 'Tamaulipas', 0),
(1260, 'Redención del Campesino', '87887', 'Villagrán', 'Tamaulipas', 0),
(1261, 'Álvaro Obregón', '87887', 'Villagrán', 'Tamaulipas', 0),
(1262, 'Benito Juárez (Encinos)', '87889', 'Villagrán', 'Tamaulipas', 0),
(1263, 'Guadalupe Victoria', '87889', 'Villagrán', 'Tamaulipas', 0),
(1264, 'Garza Valdez', '87890', 'Villagrán', 'Tamaulipas', 0),
(1265, 'Marte R. Gómez (Patol)', '87892', 'Villagrán', 'Tamaulipas', 0),
(1266, 'Los Charcos (El Faro)', '87892', 'Villagrán', 'Tamaulipas', 0),
(1267, 'Juan Rincón (El Sabinal)', '87893', 'Villagrán', 'Tamaulipas', 0),
(1268, 'San Lázaro', '87895', 'Villagrán', 'Tamaulipas', 0),
(1269, 'Guadalupe de San Lázaro (Guadalupe)', '87896', 'Villagrán', 'Tamaulipas', 0),
(1270, 'General Lucio Blanco', '87898', 'Villagrán', 'Tamaulipas', 0),
(1271, 'Altavista', '87900', 'Tula', 'Tamaulipas', 0),
(1272, 'Cerro Del Aire', '87900', 'Tula', 'Tamaulipas', 0),
(1273, 'El Mirador', '87900', 'Tula', 'Tamaulipas', 0),
(1274, 'La Mora', '87900', 'Tula', 'Tamaulipas', 0),
(1275, 'Independencia', '87900', 'Tula', 'Tamaulipas', 0),
(1276, 'Las Piedras', '87900', 'Tula', 'Tamaulipas', 0),
(1277, 'El Divisadero', '87900', 'Tula', 'Tamaulipas', 0),
(1278, 'El Jicote', '87900', 'Tula', 'Tamaulipas', 0),
(1279, 'La Pila', '87900', 'Tula', 'Tamaulipas', 0),
(1280, 'La Peñita', '87900', 'Tula', 'Tamaulipas', 0),
(1281, 'La Campana', '87900', 'Tula', 'Tamaulipas', 0),
(1282, 'Tula Centro', '87900', 'Tula', 'Tamaulipas', 0),
(1283, 'Las Trojes', '87900', 'Tula', 'Tamaulipas', 0),
(1284, 'El Cardenal', '87900', 'Tula', 'Tamaulipas', 0),
(1285, 'Cantaranas', '87900', 'Tula', 'Tamaulipas', 0),
(1286, 'Mamaleón (Mamá León)', '87902', 'Tula', 'Tamaulipas', 0),
(1287, 'Santa Ana de Nahola', '87902', 'Tula', 'Tamaulipas', 0),
(1288, 'El Boludo', '87902', 'Tula', 'Tamaulipas', 0),
(1289, 'Emilio Vázquez Gómez', '87903', 'Tula', 'Tamaulipas', 0),
(1290, 'Celso Huerta', '87904', 'Tula', 'Tamaulipas', 0),
(1291, 'Tanque Blanco', '87904', 'Tula', 'Tamaulipas', 0),
(1292, 'Congregación los Charcos', '87904', 'Tula', 'Tamaulipas', 0),
(1293, 'Veinte de Noviembre (El Refugio)', '87904', 'Tula', 'Tamaulipas', 0),
(1294, 'San Juan', '87904', 'Tula', 'Tamaulipas', 0),
(1295, 'Alfonso Terrones Benítez (Presa Ramireña)', '87904', 'Tula', 'Tamaulipas', 0),
(1296, 'Lázaro Cárdenas (Cerro Gordo)', '87905', 'Tula', 'Tamaulipas', 0),
(1297, 'Cinco de Mayo (Cebollitas)', '87906', 'Tula', 'Tamaulipas', 0),
(1298, 'Francisco I. Madero', '87907', 'Tula', 'Tamaulipas', 0),
(1299, 'La Tapona', '87910', 'Tula', 'Tamaulipas', 0),
(1300, 'Salitrillo', '87911', 'Tula', 'Tamaulipas', 0),
(1301, 'San Rafael', '87911', 'Tula', 'Tamaulipas', 0),
(1302, 'Ricardo García (La Presita)', '87912', 'Tula', 'Tamaulipas', 0),
(1303, 'Francisco Villa (El Xichu)', '87913', 'Tula', 'Tamaulipas', 0),
(1304, 'Cerro Mocho', '87913', 'Tula', 'Tamaulipas', 0),
(1305, 'Álvaro Obregón (La Noria)', '87913', 'Tula', 'Tamaulipas', 0),
(1306, 'Pedro Ruiz Molina', '87914', 'Tula', 'Tamaulipas', 0),
(1307, 'El Refugio (La Unión)', '87914', 'Tula', 'Tamaulipas', 0),
(1308, 'Nicolás Medrano (El Abra)', '87915', 'Tula', 'Tamaulipas', 0),
(1309, 'La Presa de Ramos', '87915', 'Tula', 'Tamaulipas', 0),
(1310, 'José María Morelos (Morelos)', '87918', 'Tula', 'Tamaulipas', 0),
(1311, 'San José de las Flores', '87920', 'Tula', 'Tamaulipas', 0),
(1312, 'Juan Sarabia (La Higuera)', '87922', 'Tula', 'Tamaulipas', 0),
(1313, 'Emiliano Zapata (La Viga)', '87923', 'Tula', 'Tamaulipas', 0),
(1314, 'Adolfo López Mateos', '87923', 'Tula', 'Tamaulipas', 0),
(1315, 'Emperadores Aztecas', '87923', 'Tula', 'Tamaulipas', 0),
(1316, 'Magdaleno Cedillo (El Coronel)', '87923', 'Tula', 'Tamaulipas', 0),
(1317, 'Miguel Hidalgo (Colorado)', '87924', 'Tula', 'Tamaulipas', 0),
(1318, 'Gallos Grandes', '87925', 'Tula', 'Tamaulipas', 0),
(1319, 'Las Cruces', '87925', 'Tula', 'Tamaulipas', 0),
(1320, 'Lucio Vázquez (el Charquito)', '87925', 'Tula', 'Tamaulipas', 0),
(1321, 'Gazmones', '87926', 'Tula', 'Tamaulipas', 0),
(1322, 'Alberto Carrera Torres (La Rana)', '87926', 'Tula', 'Tamaulipas', 0),
(1323, 'La Laguna', '87928', 'Tula', 'Tamaulipas', 0),
(1324, 'Janambres', '87930', 'Jaumave', 'Tamaulipas', 0),
(1325, 'Independencia', '87930', 'Jaumave', 'Tamaulipas', 0),
(1326, 'Nuevo Amanecer', '87930', 'Jaumave', 'Tamaulipas', 0),
(1327, 'Luis Donaldo Colosio', '87930', 'Jaumave', 'Tamaulipas', 0),
(1328, 'Praxedis Balboa', '87930', 'Jaumave', 'Tamaulipas', 0),
(1329, 'Jaumave Centro', '87930', 'Jaumave', 'Tamaulipas', 0),
(1330, 'San Juanito', '87932', 'Jaumave', 'Tamaulipas', 0),
(1331, 'Matías García (La Hacienda)', '87932', 'Jaumave', 'Tamaulipas', 0),
(1332, 'Magdaleno Aguilar (Santiaguillo)', '87932', 'Jaumave', 'Tamaulipas', 0),
(1333, 'Gustavo Cáceres', '87932', 'Jaumave', 'Tamaulipas', 0),
(1334, 'El Ingenio (Los Adobes)', '87932', 'Jaumave', 'Tamaulipas', 0),
(1335, 'El Sotol', '87932', 'Jaumave', 'Tamaulipas', 0),
(1336, 'San Juan de Oriente', '87933', 'Jaumave', 'Tamaulipas', 0),
(1337, 'La Independencia (Las Moritas)', '87933', 'Jaumave', 'Tamaulipas', 0),
(1338, 'Conrado Castillo (La Maroma)', '87933', 'Jaumave', 'Tamaulipas', 0),
(1339, 'José María Morelos (El Nopal)', '87933', 'Jaumave', 'Tamaulipas', 0),
(1340, 'Ávila y Urbina (La Meca)', '87935', 'Jaumave', 'Tamaulipas', 0),
(1341, 'San Antonio', '87936', 'Jaumave', 'Tamaulipas', 0),
(1342, 'Francisco Medrano (Las Pilas)', '87936', 'Jaumave', 'Tamaulipas', 0),
(1343, 'El Sauz', '87936', 'Jaumave', 'Tamaulipas', 0),
(1344, 'La Unión', '87937', 'Jaumave', 'Tamaulipas', 0),
(1345, 'Plan de Ayala (Las Calabazas)', '87937', 'Jaumave', 'Tamaulipas', 0),
(1346, 'El Higuerón', '87938', 'Jaumave', 'Tamaulipas', 0),
(1347, 'La Reforma', '87938', 'Jaumave', 'Tamaulipas', 0),
(1348, 'El Carrizo', '87939', 'Jaumave', 'Tamaulipas', 0),
(1349, 'Padrón y Juárez (La Puente)', '87940', 'Jaumave', 'Tamaulipas', 0),
(1350, 'Veinte de Abril (Joya de Salas)', '87943', 'Jaumave', 'Tamaulipas', 0),
(1351, 'San Lorenzo (San Lorencito)', '87945', 'Jaumave', 'Tamaulipas', 0),
(1352, 'Monterredondo', '87946', 'Jaumave', 'Tamaulipas', 0),
(1353, 'San Vicente', '87947', 'Jaumave', 'Tamaulipas', 0),
(1354, 'Cinco de Mayo', '87947', 'Jaumave', 'Tamaulipas', 0),
(1355, 'Rancho Nuevo (Cañitas)', '87949', 'Jaumave', 'Tamaulipas', 0),
(1356, 'Las Moras', '87949', 'Jaumave', 'Tamaulipas', 0),
(1357, 'San Francisco de Zorrilla', '87949', 'Jaumave', 'Tamaulipas', 0),
(1358, 'San José de Salamanca', '87949', 'Jaumave', 'Tamaulipas', 0),
(1359, 'La Peña', '87950', 'Miquihuana', 'Tamaulipas', 0),
(1360, 'Miquihuana', '87950', 'Miquihuana', 'Tamaulipas', 0),
(1361, 'San José del Llano', '87954', 'Miquihuana', 'Tamaulipas', 0),
(1362, 'El Aserradero', '87957', 'Miquihuana', 'Tamaulipas', 0),
(1363, 'Bustamante', '87960', 'Bustamante', 'Tamaulipas', 0),
(1364, 'Felipe Ángeles (El Gavilán)', '87961', 'Bustamante', 'Tamaulipas', 0),
(1365, 'El Aguacate', '87961', 'Bustamante', 'Tamaulipas', 0),
(1366, 'Plutarco Elías Calles (Joya del Maguey)', '87962', 'Bustamante', 'Tamaulipas', 0),
(1367, 'El Caracol (Los Caracoles)', '87962', 'Bustamante', 'Tamaulipas', 0),
(1368, 'Las Antonias', '87962', 'Bustamante', 'Tamaulipas', 0),
(1369, 'El Llano y Anexas (El Llano)', '87963', 'Bustamante', 'Tamaulipas', 0),
(1370, 'La Higuera', '87964', 'Bustamante', 'Tamaulipas', 0),
(1371, 'San Antonio de Padua', '87964', 'Bustamante', 'Tamaulipas', 0),
(1372, 'San José de las Flores', '87965', 'Bustamante', 'Tamaulipas', 0),
(1373, 'Las Albercas', '87965', 'Bustamante', 'Tamaulipas', 0),
(1374, 'La Joya de Herrera', '87967', 'Bustamante', 'Tamaulipas', 0),
(1375, 'Gabino Vázquez (Santa Efigenia)', '87967', 'Bustamante', 'Tamaulipas', 0),
(1376, 'Magdaleno Aguilar (San Vicente)', '87968', 'Bustamante', 'Tamaulipas', 0),
(1377, 'La Verdolaga', '87968', 'Bustamante', 'Tamaulipas', 0),
(1378, 'Calabacillas', '87969', 'Bustamante', 'Tamaulipas', 0),
(1379, 'Palmillas', '87970', 'Palmillas', 'Tamaulipas', 0),
(1380, 'San Vicente', '87972', 'Palmillas', 'Tamaulipas', 0),
(1381, 'El Llano de Azuas', '87973', 'Palmillas', 'Tamaulipas', 0),
(1382, 'La Compuerta', '87974', 'Palmillas', 'Tamaulipas', 0),
(1383, 'Los Arrieros', '87975', 'Palmillas', 'Tamaulipas', 0),
(1384, 'Ciudad Ocampo', '87980', 'Ocampo', 'Tamaulipas', 0),
(1385, 'Ricardo Flores Magón', '87980', 'Ocampo', 'Tamaulipas', 0),
(1386, '6 de Octubre', '87980', 'Ocampo', 'Tamaulipas', 0),
(1387, 'El Pensil', '87982', 'Ocampo', 'Tamaulipas', 0),
(1388, 'Protacio F. Guerra (Corrales)', '87983', 'Ocampo', 'Tamaulipas', 0),
(1389, 'Eligio Treviño (El Bejuco)', '87983', 'Ocampo', 'Tamaulipas', 0),
(1390, 'Praxedis Guerrero (La Laja)', '87983', 'Ocampo', 'Tamaulipas', 0),
(1391, 'Francisco Medrano (La Morita)', '87984', 'Ocampo', 'Tamaulipas', 0),
(1392, 'Pueblo Viejo', '87984', 'Ocampo', 'Tamaulipas', 0),
(1393, 'Las Flores', '87984', 'Ocampo', 'Tamaulipas', 0),
(1394, 'El Tigre', '87985', 'Ocampo', 'Tamaulipas', 0),
(1395, 'Las Canoas', '87985', 'Ocampo', 'Tamaulipas', 0),
(1396, 'San antonio Buena Vista', '87986', 'Ocampo', 'Tamaulipas', 0),
(1397, 'Santa María de Guadalupe (La Colonia)', '87986', 'Ocampo', 'Tamaulipas', 0),
(1398, 'Veinte de Noviembre (Las Pozas)', '87986', 'Ocampo', 'Tamaulipas', 0),
(1399, 'Joya de Manantiales', '87987', 'Ocampo', 'Tamaulipas', 0),
(1400, 'Escondida y Atravesaño (La Escondida)', '87988', 'Ocampo', 'Tamaulipas', 0),
(1401, 'San Lorenzo (Las Bayas)', '87988', 'Ocampo', 'Tamaulipas', 0),
(1402, 'Adolfo López Mateos (Chamal Nuevo)', '87990', 'Ocampo', 'Tamaulipas', 0),
(1403, 'El Chamalito', '87990', 'Ocampo', 'Tamaulipas', 0),
(1404, 'Paso Real de Morelos (La Puente)', '87993', 'Ocampo', 'Tamaulipas', 0),
(1405, 'La Muralla', '87994', 'Ocampo', 'Tamaulipas', 0),
(1406, 'Chamal Viejo', '87995', 'Ocampo', 'Tamaulipas', 0),
(1407, 'Lorenzo Vargas', '87996', 'Ocampo', 'Tamaulipas', 0),
(1408, 'Rancho Nuevo', '87996', 'Ocampo', 'Tamaulipas', 0),
(1409, 'Coahuila', '87997', 'Ocampo', 'Tamaulipas', 0),
(1410, 'Nuevo Laredo Centro', '88000', 'Nuevo Laredo', 'Tamaulipas', 0),
(1411, 'Nuevo Laredo (Quetzalcóatl)', '88009', 'Nuevo Laredo', 'Tamaulipas', 0),
(1412, 'Independencia', '88020', 'Nuevo Laredo', 'Tamaulipas', 0),
(1413, 'Victoria', '88030', 'Nuevo Laredo', 'Tamaulipas', 0),
(1414, 'Ferrocarril', '88040', 'Nuevo Laredo', 'Tamaulipas', 0),
(1415, 'Ojo Caliente', '88040', 'Nuevo Laredo', 'Tamaulipas', 0),
(1416, 'Zaragoza', '88060', 'Nuevo Laredo', 'Tamaulipas', 0),
(1417, 'Viveros', '88070', 'Nuevo Laredo', 'Tamaulipas', 0),
(1418, 'Altavista', '88100', 'Nuevo Laredo', 'Tamaulipas', 0),
(1419, 'CNOP', '88100', 'Nuevo Laredo', 'Tamaulipas', 0),
(1420, 'FOVISSSTE Las Alazanas', '88105', 'Nuevo Laredo', 'Tamaulipas', 0),
(1421, 'Solidaridad', '88105', 'Nuevo Laredo', 'Tamaulipas', 0),
(1422, 'Del Maestro', '88110', 'Nuevo Laredo', 'Tamaulipas', 0),
(1423, 'Buenavista', '88120', 'Nuevo Laredo', 'Tamaulipas', 0),
(1424, 'Maclovio Herrera', '88120', 'Nuevo Laredo', 'Tamaulipas', 0),
(1425, 'El Progreso', '88123', 'Nuevo Laredo', 'Tamaulipas', 0),
(1426, 'Los Arcos', '88123', 'Nuevo Laredo', 'Tamaulipas', 0),
(1427, 'Villas del Progreso', '88123', 'Nuevo Laredo', 'Tamaulipas', 0),
(1428, 'Las Cumbres', '88123', 'Nuevo Laredo', 'Tamaulipas', 0),
(1429, 'Guerreros del Sol', '88123', 'Nuevo Laredo', 'Tamaulipas', 0),
(1430, 'Pavorreales', '88123', 'Nuevo Laredo', 'Tamaulipas', 0),
(1431, 'Endulzadora PEMEX', '88123', 'Nuevo Laredo', 'Tamaulipas', 0),
(1432, 'Villas de San Francisco', '88123', 'Nuevo Laredo', 'Tamaulipas', 0),
(1433, 'Lic. Daniel Hernández Isais', '88124', 'Nuevo Laredo', 'Tamaulipas', 0),
(1434, 'Alianza para la Producción', '88124', 'Nuevo Laredo', 'Tamaulipas', 0),
(1435, 'Sistema Merlín', '88125', 'Nuevo Laredo', 'Tamaulipas', 0),
(1436, 'La Joya', '88125', 'Nuevo Laredo', 'Tamaulipas', 0),
(1437, 'Central de Carga', '88126', 'Nuevo Laredo', 'Tamaulipas', 0),
(1438, 'Santiago M. Beldén', '88126', 'Nuevo Laredo', 'Tamaulipas', 0),
(1439, 'Vicente Mendoza', '88126', 'Nuevo Laredo', 'Tamaulipas', 0),
(1440, 'Colorines', '88127', 'Nuevo Laredo', 'Tamaulipas', 0),
(1441, 'Buenos Aires', '88130', 'Nuevo Laredo', 'Tamaulipas', 0),
(1442, 'Lic. Luis Donaldo Colosio', '88134', 'Nuevo Laredo', 'Tamaulipas', 0),
(1443, '20 de Noviembre', '88134', 'Nuevo Laredo', 'Tamaulipas', 0),
(1444, 'Unidad Nacional', '88135', 'Nuevo Laredo', 'Tamaulipas', 0),
(1445, 'Villas de la Fe', '88135', 'Nuevo Laredo', 'Tamaulipas', 0),
(1446, 'Américo Villarreal Guerra', '88135', 'Nuevo Laredo', 'Tamaulipas', 0),
(1447, 'Nueva Era', '88136', 'Nuevo Laredo', 'Tamaulipas', 0),
(1448, 'Peña Benavides', '88140', 'Nuevo Laredo', 'Tamaulipas', 0),
(1449, 'Cuartel Militar Macario Zamora', '88140', 'Nuevo Laredo', 'Tamaulipas', 0),
(1450, 'Jardín Juvencia', '88140', 'Nuevo Laredo', 'Tamaulipas', 0),
(1451, 'San Andrés', '88144', 'Nuevo Laredo', 'Tamaulipas', 0),
(1452, 'Los Garza', '88144', 'Nuevo Laredo', 'Tamaulipas', 0),
(1453, 'Emiliano Zapata', '88144', 'Nuevo Laredo', 'Tamaulipas', 0),
(1454, 'Las Alazanas', '88144', 'Nuevo Laredo', 'Tamaulipas', 0),
(1455, 'Tamaulipas', '88145', 'Nuevo Laredo', 'Tamaulipas', 0),
(1456, 'Nueva España', '88145', 'Nuevo Laredo', 'Tamaulipas', 0),
(1457, 'Lomas del Rey', '88145', 'Nuevo Laredo', 'Tamaulipas', 0),
(1458, 'Los Virreyes', '88145', 'Nuevo Laredo', 'Tamaulipas', 0),
(1459, 'Claudette', '88146', 'Nuevo Laredo', 'Tamaulipas', 0),
(1460, 'El Caracol', '88146', 'Nuevo Laredo', 'Tamaulipas', 0),
(1461, 'Las Lomas', '88147', 'Nuevo Laredo', 'Tamaulipas', 0),
(1462, 'Ayuntamiento 77', '88147', 'Nuevo Laredo', 'Tamaulipas', 0),
(1463, 'El Remolino', '88150', 'Nuevo Laredo', 'Tamaulipas', 0),
(1464, 'Tinajitas', '88150', 'Nuevo Laredo', 'Tamaulipas', 0),
(1465, 'Roma', '88150', 'Nuevo Laredo', 'Tamaulipas', 0),
(1466, 'Hidalgo', '88160', 'Nuevo Laredo', 'Tamaulipas', 0),
(1467, 'Parque Industrial Longoria', '88170', 'Nuevo Laredo', 'Tamaulipas', 0),
(1468, 'Los Cántaros', '88170', 'Nuevo Laredo', 'Tamaulipas', 0),
(1469, 'Hipódromo', '88170', 'Nuevo Laredo', 'Tamaulipas', 0),
(1470, 'América', '88175', 'Nuevo Laredo', 'Tamaulipas', 0),
(1471, 'Tercer Milenio', '88176', 'Nuevo Laredo', 'Tamaulipas', 0),
(1472, 'El Francés y Buenos Aires', '88176', 'Nuevo Laredo', 'Tamaulipas', 0),
(1473, 'María Luisa', '88176', 'Nuevo Laredo', 'Tamaulipas', 0),
(1474, 'Ampliación Tercer Milenio', '88176', 'Nuevo Laredo', 'Tamaulipas', 0),
(1475, 'Unión Del Recuerdo', '88176', 'Nuevo Laredo', 'Tamaulipas', 0),
(1476, 'El Bayito', '88176', 'Nuevo Laredo', 'Tamaulipas', 0),
(1477, 'Recinto Fiscal', '88176', 'Nuevo Laredo', 'Tamaulipas', 0),
(1478, 'Reservas Territoriales', '88177', 'Nuevo Laredo', 'Tamaulipas', 0),
(1479, 'Los Olivos', '88177', 'Nuevo Laredo', 'Tamaulipas', 0),
(1480, 'Toboganes', '88177', 'Nuevo Laredo', 'Tamaulipas', 0),
(1481, 'Othón Chávez', '88177', 'Nuevo Laredo', 'Tamaulipas', 0),
(1482, 'Los Sánchez', '88177', 'Nuevo Laredo', 'Tamaulipas', 0),
(1483, 'Naciones Unidas', '88177', 'Nuevo Laredo', 'Tamaulipas', 0),
(1484, 'Daniel Covarrubias', '88177', 'Nuevo Laredo', 'Tamaulipas', 0),
(1485, 'Nueva Victoria', '88177', 'Nuevo Laredo', 'Tamaulipas', 0),
(1486, 'Constitucional', '88177', 'Nuevo Laredo', 'Tamaulipas', 0),
(1487, 'Praderas del Mezquital', '88177', 'Nuevo Laredo', 'Tamaulipas', 0),
(1488, 'Voluntad y Trabajo', '88177', 'Nuevo Laredo', 'Tamaulipas', 0),
(1489, 'Arturo Cortés Villada', '88177', 'Nuevo Laredo', 'Tamaulipas', 0),
(1490, 'Los Artistas', '88179', 'Nuevo Laredo', 'Tamaulipas', 0),
(1491, 'Bellavista', '88179', 'Nuevo Laredo', 'Tamaulipas', 0),
(1492, 'Anexo Reforma Urbana', '88179', 'Nuevo Laredo', 'Tamaulipas', 0),
(1493, 'Bertha de Avellano', '88179', 'Nuevo Laredo', 'Tamaulipas', 0),
(1494, 'La Sandía', '88179', 'Nuevo Laredo', 'Tamaulipas', 0),
(1495, 'Reforma Urbana', '88179', 'Nuevo Laredo', 'Tamaulipas', 0),
(1496, 'Lomas del Río', '88179', 'Nuevo Laredo', 'Tamaulipas', 0),
(1497, 'Las Arboledas', '88179', 'Nuevo Laredo', 'Tamaulipas', 0),
(1498, 'Rosita', '88180', 'Nuevo Laredo', 'Tamaulipas', 0),
(1499, 'Las Torres', '88184', 'Nuevo Laredo', 'Tamaulipas', 0),
(1500, 'Parque Industrial 2 Laredos', '88185', 'Nuevo Laredo', 'Tamaulipas', 0),
(1501, 'Parque Industrial Río Grande', '88186', 'Nuevo Laredo', 'Tamaulipas', 0),
(1502, 'La Fe', '88187', 'Nuevo Laredo', 'Tamaulipas', 0),
(1503, 'Mirador', '88190', 'Nuevo Laredo', 'Tamaulipas', 0),
(1504, 'Unión', '88194', 'Nuevo Laredo', 'Tamaulipas', 0),
(1505, 'Anáhuac Sur', '88194', 'Nuevo Laredo', 'Tamaulipas', 0),
(1506, 'La Esperanza', '88195', 'Nuevo Laredo', 'Tamaulipas', 0),
(1507, 'Loma Bonita', '88195', 'Nuevo Laredo', 'Tamaulipas', 0),
(1508, 'Zona de Tolerancia', '88195', 'Nuevo Laredo', 'Tamaulipas', 0),
(1509, 'San Rafael', '88200', 'Nuevo Laredo', 'Tamaulipas', 0),
(1510, 'Juárez', '88209', 'Nuevo Laredo', 'Tamaulipas', 0),
(1511, 'Matamoros', '88210', 'Nuevo Laredo', 'Tamaulipas', 0),
(1512, 'Hacienda J. Longoria', '88210', 'Nuevo Laredo', 'Tamaulipas', 0),
(1513, 'Lomas del Poniente', '88210', 'Nuevo Laredo', 'Tamaulipas', 0),
(1514, 'Palacios', '88220', 'Nuevo Laredo', 'Tamaulipas', 0),
(1515, 'Sistema de Agua y Saneamiento', '88230', 'Nuevo Laredo', 'Tamaulipas', 0),
(1516, 'Junta Federal de Mejoras Materiales', '88230', 'Nuevo Laredo', 'Tamaulipas', 0),
(1517, 'San José', '88230', 'Nuevo Laredo', 'Tamaulipas', 0),
(1518, 'Postal', '88240', 'Nuevo Laredo', 'Tamaulipas', 0),
(1519, 'Riberas del Bravo', '88240', 'Nuevo Laredo', 'Tamaulipas', 0),
(1520, 'Guerrero', '88240', 'Nuevo Laredo', 'Tamaulipas', 0),
(1521, 'Mier y Terán', '88240', 'Nuevo Laredo', 'Tamaulipas', 0),
(1522, 'Morelos', '88250', 'Nuevo Laredo', 'Tamaulipas', 0),
(1523, 'Jesús Garcia', '88250', 'Nuevo Laredo', 'Tamaulipas', 0),
(1524, 'Villas del Sol', '88250', 'Nuevo Laredo', 'Tamaulipas', 0),
(1525, 'González', '88260', 'Nuevo Laredo', 'Tamaulipas', 0),
(1526, 'Anáhuac', '88260', 'Nuevo Laredo', 'Tamaulipas', 0),
(1527, 'Jardín', '88260', 'Nuevo Laredo', 'Tamaulipas', 0),
(1528, 'Los Álamos', '88270', 'Nuevo Laredo', 'Tamaulipas', 0),
(1529, 'SUTERM II', '88270', 'Nuevo Laredo', 'Tamaulipas', 0),
(1530, 'Madero', '88270', 'Nuevo Laredo', 'Tamaulipas', 0),
(1531, 'Las Flores', '88270', 'Nuevo Laredo', 'Tamaulipas', 0),
(1532, 'Casa Linda', '88274', 'Nuevo Laredo', 'Tamaulipas', 0),
(1533, 'Río Bravo', '88274', 'Nuevo Laredo', 'Tamaulipas', 0),
(1534, 'Santa Anita', '88274', 'Nuevo Laredo', 'Tamaulipas', 0),
(1535, 'FOVISSSTE Benito Juárez', '88274', 'Nuevo Laredo', 'Tamaulipas', 0),
(1536, 'Parque Industrial Río Bravo', '88274', 'Nuevo Laredo', 'Tamaulipas', 0),
(1537, 'Vista Hermosa', '88274', 'Nuevo Laredo', 'Tamaulipas', 0),
(1538, 'INFONAVIT Benito Juárez', '88274', 'Nuevo Laredo', 'Tamaulipas', 0),
(1539, 'Balcones del Boulevard', '88274', 'Nuevo Laredo', 'Tamaulipas', 0),
(1540, 'Centro Comercial Reforma', '88275', 'Nuevo Laredo', 'Tamaulipas', 0),
(1541, 'Privanzas Sector Alameda', '88275', 'Nuevo Laredo', 'Tamaulipas', 0),
(1542, 'Parque Industrial FINSA', '88275', 'Nuevo Laredo', 'Tamaulipas', 0),
(1543, 'INFONAVIT Fundadores', '88275', 'Nuevo Laredo', 'Tamaulipas', 0),
(1544, 'Las Alamedas', '88275', 'Nuevo Laredo', 'Tamaulipas', 0),
(1545, 'El Cortijo', '88276', 'Nuevo Laredo', 'Tamaulipas', 0),
(1546, 'El Edén', '88276', 'Nuevo Laredo', 'Tamaulipas', 0),
(1547, 'Valle Real', '88276', 'Nuevo Laredo', 'Tamaulipas', 0),
(1548, 'Gran Boulevard', '88276', 'Nuevo Laredo', 'Tamaulipas', 0),
(1549, 'Bonanza', '88276', 'Nuevo Laredo', 'Tamaulipas', 0),
(1550, 'Eden Country Villas', '88276', 'Nuevo Laredo', 'Tamaulipas', 0),
(1551, 'San Patricio', '88277', 'Nuevo Laredo', 'Tamaulipas', 0),
(1552, 'Parque Módulo Industrial Américas', '88277', 'Nuevo Laredo', 'Tamaulipas', 0),
(1553, 'Concordia', '88277', 'Nuevo Laredo', 'Tamaulipas', 0),
(1554, 'Residencial Longoria', '88277', 'Nuevo Laredo', 'Tamaulipas', 0),
(1555, 'Las Viñas', '88277', 'Nuevo Laredo', 'Tamaulipas', 0),
(1556, 'Colinas del Sur Oriente', '88277', 'Nuevo Laredo', 'Tamaulipas', 0),
(1557, 'Jardines de la Hacienda', '88277', 'Nuevo Laredo', 'Tamaulipas', 0),
(1558, 'Campestre', '88278', 'Nuevo Laredo', 'Tamaulipas', 0),
(1559, 'Club Campestre Ribera del Bravo', '88278', 'Nuevo Laredo', 'Tamaulipas', 0),
(1560, 'México', '88280', 'Nuevo Laredo', 'Tamaulipas', 0),
(1561, 'Burócratas', '88280', 'Nuevo Laredo', 'Tamaulipas', 0),
(1562, 'Ferrocarrilera', '88280', 'Nuevo Laredo', 'Tamaulipas', 0),
(1563, 'El Río', '88280', 'Nuevo Laredo', 'Tamaulipas', 0),
(1564, 'Central 2000', '88280', 'Nuevo Laredo', 'Tamaulipas', 0),
(1565, 'Club de Leones', '88280', 'Nuevo Laredo', 'Tamaulipas', 0),
(1566, 'Vamos Tamaulipas', '88283', 'Nuevo Laredo', 'Tamaulipas', 0),
(1567, 'Villas de San Miguel', '88283', 'Nuevo Laredo', 'Tamaulipas', 0),
(1568, '150 Aniversario', '88283', 'Nuevo Laredo', 'Tamaulipas', 0),
(1569, '1° de Mayo', '88283', 'Nuevo Laredo', 'Tamaulipas', 0),
(1570, 'Francisco Villa 2', '88283', 'Nuevo Laredo', 'Tamaulipas', 0),
(1571, 'Nuevo Milenio', '88284', 'Nuevo Laredo', 'Tamaulipas', 0),
(1572, 'Francisco Villa', '88284', 'Nuevo Laredo', 'Tamaulipas', 0),
(1573, 'Manuel Cavazos Lerma', '88284', 'Nuevo Laredo', 'Tamaulipas', 0),
(1574, 'Los Ángeles', '88285', 'Nuevo Laredo', 'Tamaulipas', 0),
(1575, 'Blanca Navidad', '88285', 'Nuevo Laredo', 'Tamaulipas', 0),
(1576, 'El Campanario', '88285', 'Nuevo Laredo', 'Tamaulipas', 0);
INSERT INTO `catColonias` (`idColonia`, `Colonia`, `CodigoPostal`, `Ciudad`, `Estado`, `Status`) VALUES
(1577, 'Villas del Oradel', '88285', 'Nuevo Laredo', 'Tamaulipas', 0),
(1578, 'Valles de Anáhuac', '88285', 'Nuevo Laredo', 'Tamaulipas', 0),
(1579, 'Lomas del Rosario', '88285', 'Nuevo Laredo', 'Tamaulipas', 0),
(1580, 'Insurgentes', '88285', 'Nuevo Laredo', 'Tamaulipas', 0),
(1581, 'Parque Industrial Oradel', '88285', 'Nuevo Laredo', 'Tamaulipas', 0),
(1582, 'Del Valle', '88285', 'Nuevo Laredo', 'Tamaulipas', 0),
(1583, 'SUTERM I', '88287', 'Nuevo Laredo', 'Tamaulipas', 0),
(1584, 'Electricistas', '88287', 'Nuevo Laredo', 'Tamaulipas', 0),
(1585, 'Viviendas Unidas', '88287', 'Nuevo Laredo', 'Tamaulipas', 0),
(1586, 'Militar', '88289', 'Nuevo Laredo', 'Tamaulipas', 0),
(1587, 'Don Ramón Salcido', '88289', 'Nuevo Laredo', 'Tamaulipas', 0),
(1588, 'Tulipanes', '88290', 'Nuevo Laredo', 'Tamaulipas', 0),
(1589, 'Balcones del Valle', '88290', 'Nuevo Laredo', 'Tamaulipas', 0),
(1590, 'El Nogal', '88290', 'Nuevo Laredo', 'Tamaulipas', 0),
(1591, 'Los Ciruelos', '88290', 'Nuevo Laredo', 'Tamaulipas', 0),
(1592, 'Los Aztecas', '88290', 'Nuevo Laredo', 'Tamaulipas', 0),
(1593, 'Los Encinos', '88290', 'Nuevo Laredo', 'Tamaulipas', 0),
(1594, 'Villa del Lago', '88290', 'Nuevo Laredo', 'Tamaulipas', 0),
(1595, 'Lagos', '88290', 'Nuevo Laredo', 'Tamaulipas', 0),
(1596, 'Los Presidentes', '88290', 'Nuevo Laredo', 'Tamaulipas', 0),
(1597, 'Alfonso Gutiérrez', '88290', 'Nuevo Laredo', 'Tamaulipas', 0),
(1598, 'Santa Martha', '88290', 'Nuevo Laredo', 'Tamaulipas', 0),
(1599, 'Los Fresnos', '88290', 'Nuevo Laredo', 'Tamaulipas', 0),
(1600, 'Hacienda de la Concordia', '88290', 'Nuevo Laredo', 'Tamaulipas', 0),
(1601, 'Los Cerezos', '88290', 'Nuevo Laredo', 'Tamaulipas', 0),
(1602, 'Villas de la Concordia', '88290', 'Nuevo Laredo', 'Tamaulipas', 0),
(1603, 'La Paz', '88290', 'Nuevo Laredo', 'Tamaulipas', 0),
(1604, 'Santa Elena', '88290', 'Nuevo Laredo', 'Tamaulipas', 0),
(1605, 'América 1', '88293', 'Nuevo Laredo', 'Tamaulipas', 0),
(1606, 'El Pedregal Residencial', '88293', 'Nuevo Laredo', 'Tamaulipas', 0),
(1607, 'Saneva', '88293', 'Nuevo Laredo', 'Tamaulipas', 0),
(1608, 'Carlos Benjamín Galván Maytorera', '88293', 'Nuevo Laredo', 'Tamaulipas', 0),
(1609, 'María del Pilar Martínez Muñoz', '88293', 'Nuevo Laredo', 'Tamaulipas', 0),
(1610, 'América 14', '88293', 'Nuevo Laredo', 'Tamaulipas', 0),
(1611, 'El Caporal', '88293', 'Nuevo Laredo', 'Tamaulipas', 0),
(1612, 'Gilberto Montemayor Quintanilla', '88293', 'Nuevo Laredo', 'Tamaulipas', 0),
(1613, 'Manuel Martínez Méndez', '88293', 'Nuevo Laredo', 'Tamaulipas', 0),
(1614, 'Granjas Guzmán', '88293', 'Nuevo Laredo', 'Tamaulipas', 0),
(1615, 'Valles del Paraíso', '88293', 'Nuevo Laredo', 'Tamaulipas', 0),
(1616, 'Granjas Treviño', '88294', 'Nuevo Laredo', 'Tamaulipas', 0),
(1617, 'Campesina', '88294', 'Nuevo Laredo', 'Tamaulipas', 0),
(1618, 'Alijadores', '88294', 'Nuevo Laredo', 'Tamaulipas', 0),
(1619, 'Santa Cecilia', '88294', 'Nuevo Laredo', 'Tamaulipas', 0),
(1620, 'Granjas Económicas 2', '88295', 'Nuevo Laredo', 'Tamaulipas', 0),
(1621, 'Granjas Regina', '88295', 'Nuevo Laredo', 'Tamaulipas', 0),
(1622, 'Valle Elizondo', '88295', 'Nuevo Laredo', 'Tamaulipas', 0),
(1623, 'Vamos Tamaulipas', '88295', 'Nuevo Laredo', 'Tamaulipas', 0),
(1624, 'Palmares', '88295', 'Nuevo Laredo', 'Tamaulipas', 0),
(1625, 'Las Piedritas', '88295', 'Nuevo Laredo', 'Tamaulipas', 0),
(1626, 'Valle Dorado', '88295', 'Nuevo Laredo', 'Tamaulipas', 0),
(1627, 'Enrique Cárdenas González', '88295', 'Nuevo Laredo', 'Tamaulipas', 0),
(1628, 'El Capulín', '88295', 'Nuevo Laredo', 'Tamaulipas', 0),
(1629, 'Granjas Económicas 1', '88295', 'Nuevo Laredo', 'Tamaulipas', 0),
(1630, 'Haciendas de San Agustín', '88295', 'Nuevo Laredo', 'Tamaulipas', 0),
(1631, 'ITAVU', '88295', 'Nuevo Laredo', 'Tamaulipas', 0),
(1632, 'Los Agaves', '88296', 'Nuevo Laredo', 'Tamaulipas', 0),
(1633, 'Misión de San Mauricio', '88296', 'Nuevo Laredo', 'Tamaulipas', 0),
(1634, 'América 2,3,5 y 6', '88296', 'Nuevo Laredo', 'Tamaulipas', 0),
(1635, 'CERESO', '88296', 'Nuevo Laredo', 'Tamaulipas', 0),
(1636, 'Bosques del Sur', '88296', 'Nuevo Laredo', 'Tamaulipas', 0),
(1637, 'Colinas del Sur Poniente', '88296', 'Nuevo Laredo', 'Tamaulipas', 0),
(1638, 'Lomas del Popo', '88296', 'Nuevo Laredo', 'Tamaulipas', 0),
(1639, 'Agrónomos', '88298', 'Nuevo Laredo', 'Tamaulipas', 0),
(1640, 'Candelario Perales', '88298', 'Nuevo Laredo', 'Tamaulipas', 0),
(1641, 'La Concordia', '88298', 'Nuevo Laredo', 'Tamaulipas', 0),
(1642, 'Colinas de San Javier', '88299', 'Nuevo Laredo', 'Tamaulipas', 0),
(1643, 'América 4', '88299', 'Nuevo Laredo', 'Tamaulipas', 0),
(1644, 'Ciudad Miguel Alemán Centro', '88300', 'Miguel Alemán', 'Tamaulipas', 0),
(1645, 'Niños Héroes', '88302', 'Miguel Alemán', 'Tamaulipas', 0),
(1646, 'Gómez', '88302', 'Miguel Alemán', 'Tamaulipas', 0),
(1647, 'Solidaridad', '88302', 'Miguel Alemán', 'Tamaulipas', 0),
(1648, 'Mezquital del Norte', '88302', 'Miguel Alemán', 'Tamaulipas', 0),
(1649, 'Jardín', '88302', 'Miguel Alemán', 'Tamaulipas', 0),
(1650, 'Infonavit Arboleda', '88302', 'Miguel Alemán', 'Tamaulipas', 0),
(1651, 'Plan de Guadalupe', '88302', 'Miguel Alemán', 'Tamaulipas', 0),
(1652, 'Nuevo Santander', '88302', 'Miguel Alemán', 'Tamaulipas', 0),
(1653, 'Del Norte', '88302', 'Miguel Alemán', 'Tamaulipas', 0),
(1654, 'Nuevo Amanecer', '88303', 'Miguel Alemán', 'Tamaulipas', 0),
(1655, 'Independencia', '88303', 'Miguel Alemán', 'Tamaulipas', 0),
(1656, 'Barrera', '88303', 'Miguel Alemán', 'Tamaulipas', 0),
(1657, 'Río Bravo', '88303', 'Miguel Alemán', 'Tamaulipas', 0),
(1658, 'Unidad Revolucionaria', '88303', 'Miguel Alemán', 'Tamaulipas', 0),
(1659, 'Cristóbal Colon', '88303', 'Miguel Alemán', 'Tamaulipas', 0),
(1660, 'Guadalupe', '88304', 'Miguel Alemán', 'Tamaulipas', 0),
(1661, 'Montebello', '88304', 'Miguel Alemán', 'Tamaulipas', 0),
(1662, 'El Mirador', '88304', 'Miguel Alemán', 'Tamaulipas', 0),
(1663, 'Los Presidentes', '88304', 'Miguel Alemán', 'Tamaulipas', 0),
(1664, 'Lindavista', '88305', 'Miguel Alemán', 'Tamaulipas', 0),
(1665, 'Tamaulipas', '88305', 'Miguel Alemán', 'Tamaulipas', 0),
(1666, 'Adolfo López Mateos', '88305', 'Miguel Alemán', 'Tamaulipas', 0),
(1667, 'Arguello', '88305', 'Miguel Alemán', 'Tamaulipas', 0),
(1668, 'Buenos Aires', '88305', 'Miguel Alemán', 'Tamaulipas', 0),
(1669, 'Electricistas', '88306', 'Miguel Alemán', 'Tamaulipas', 0),
(1670, 'INFONAVIT Santa Luisa', '88306', 'Miguel Alemán', 'Tamaulipas', 0),
(1671, 'Mezquital del Río', '88306', 'Miguel Alemán', 'Tamaulipas', 0),
(1672, 'Hercilia', '88306', 'Miguel Alemán', 'Tamaulipas', 0),
(1673, 'Educación', '88306', 'Miguel Alemán', 'Tamaulipas', 0),
(1674, 'INFONAVIT Rinconada', '88306', 'Miguel Alemán', 'Tamaulipas', 0),
(1675, 'Infonavit Industrial', '88306', 'Miguel Alemán', 'Tamaulipas', 0),
(1676, 'Lucha Social', '88307', 'Miguel Alemán', 'Tamaulipas', 0),
(1677, 'Benito Juárez', '88307', 'Miguel Alemán', 'Tamaulipas', 0),
(1678, 'Rodríguez', '88307', 'Miguel Alemán', 'Tamaulipas', 0),
(1679, 'Sabinitos', '88307', 'Miguel Alemán', 'Tamaulipas', 0),
(1680, 'Villa Del Mar', '88307', 'Miguel Alemán', 'Tamaulipas', 0),
(1681, 'Jardines de San Germán', '88307', 'Miguel Alemán', 'Tamaulipas', 0),
(1682, 'Itavu', '88307', 'Miguel Alemán', 'Tamaulipas', 0),
(1683, 'Unidos Avanzamos', '88310', 'Miguel Alemán', 'Tamaulipas', 0),
(1684, 'Los Guerra', '88310', 'Miguel Alemán', 'Tamaulipas', 0),
(1685, 'Los Ángeles', '88321', 'Miguel Alemán', 'Tamaulipas', 0),
(1686, 'Guardados de Arriba', '88321', 'Miguel Alemán', 'Tamaulipas', 0),
(1687, 'Los Guajillos', '88330', 'Miguel Alemán', 'Tamaulipas', 0),
(1688, 'Los Treviño', '88335', 'Miguel Alemán', 'Tamaulipas', 0),
(1689, 'La Ceja', '88336', 'Miguel Alemán', 'Tamaulipas', 0),
(1690, 'Los López', '88338', 'Miguel Alemán', 'Tamaulipas', 0),
(1691, 'Arcabuz', '88340', 'Miguel Alemán', 'Tamaulipas', 0),
(1692, 'San Antonio Reyna', '88346', 'Miguel Alemán', 'Tamaulipas', 0),
(1693, 'El Ranchito (Cerro Azul)', '88349', 'Miguel Alemán', 'Tamaulipas', 0),
(1694, 'La Cruz', '88350', 'Nuevo Laredo', 'Tamaulipas', 0),
(1695, 'Miguel Alemán (El Carrizo)', '88350', 'Nuevo Laredo', 'Tamaulipas', 0),
(1696, 'Nueva Ciudad Guerrero Centro', '88370', 'Guerrero', 'Tamaulipas', 0),
(1697, 'Hidalgo', '88372', 'Guerrero', 'Tamaulipas', 0),
(1698, 'Ruiz Cortínez', '88372', 'Guerrero', 'Tamaulipas', 0),
(1699, 'FOVISSSTE Falcón', '88373', 'Guerrero', 'Tamaulipas', 0),
(1700, 'Pescadores', '88373', 'Guerrero', 'Tamaulipas', 0),
(1701, 'Electricistas', '88374', 'Guerrero', 'Tamaulipas', 0),
(1702, 'Comisión', '88374', 'Guerrero', 'Tamaulipas', 0),
(1703, 'La Chalupa', '88390', 'Mier', 'Tamaulipas', 0),
(1704, 'Ciudad Mier', '88390', 'Mier', 'Tamaulipas', 0),
(1705, 'Villas del Cántaro', '88390', 'Mier', 'Tamaulipas', 0),
(1706, 'El Parián', '88390', 'Mier', 'Tamaulipas', 0),
(1707, 'La Paleta', '88390', 'Mier', 'Tamaulipas', 0),
(1708, 'El Rodeo', '88390', 'Mier', 'Tamaulipas', 0),
(1709, 'Las Torres', '88390', 'Mier', 'Tamaulipas', 0),
(1710, 'Ciudad Gustavo Díaz Ordaz Centro', '88400', 'Gustavo Díaz Ordaz', 'Tamaulipas', 0),
(1711, 'El Cansado', '88402', 'Gustavo Díaz Ordaz', 'Tamaulipas', 0),
(1712, 'El Terrón', '88402', 'Gustavo Díaz Ordaz', 'Tamaulipas', 0),
(1713, 'El Maestro', '88402', 'Gustavo Díaz Ordaz', 'Tamaulipas', 0),
(1714, 'INFONAVIT San Miguel Nuevo', '88402', 'Gustavo Díaz Ordaz', 'Tamaulipas', 0),
(1715, 'Cucharas', '88402', 'Gustavo Díaz Ordaz', 'Tamaulipas', 0),
(1716, 'El Bordo', '88403', 'Gustavo Díaz Ordaz', 'Tamaulipas', 0),
(1717, 'Nuevo Repueblo', '88403', 'Gustavo Díaz Ordaz', 'Tamaulipas', 0),
(1718, 'Prado Sur', '88404', 'Gustavo Díaz Ordaz', 'Tamaulipas', 0),
(1719, 'Industrial', '88405', 'Gustavo Díaz Ordaz', 'Tamaulipas', 0),
(1720, 'Emancipadores', '88405', 'Gustavo Díaz Ordaz', 'Tamaulipas', 0),
(1721, 'Las Fuentes', '88405', 'Gustavo Díaz Ordaz', 'Tamaulipas', 0),
(1722, 'El Agrónomo', '88405', 'Gustavo Díaz Ordaz', 'Tamaulipas', 0),
(1723, 'Fundadores', '88406', 'Gustavo Díaz Ordaz', 'Tamaulipas', 0),
(1724, 'San Vicente Del Potrero', '88407', 'Gustavo Díaz Ordaz', 'Tamaulipas', 0),
(1725, 'SARH', '88407', 'Gustavo Díaz Ordaz', 'Tamaulipas', 0),
(1726, 'Nueva Esperanza', '88407', 'Gustavo Díaz Ordaz', 'Tamaulipas', 0),
(1727, 'El Tepito', '88407', 'Gustavo Díaz Ordaz', 'Tamaulipas', 0),
(1728, 'Emilio Portes Gil', '88408', 'Gustavo Díaz Ordaz', 'Tamaulipas', 0),
(1729, 'El Tinaco', '88408', 'Gustavo Díaz Ordaz', 'Tamaulipas', 0),
(1730, 'Valadeces', '88410', 'Gustavo Díaz Ordaz', 'Tamaulipas', 0),
(1731, 'Los Villarreales', '88410', 'Gustavo Díaz Ordaz', 'Tamaulipas', 0),
(1732, 'Tepehuaje', '88412', 'Gustavo Díaz Ordaz', 'Tamaulipas', 0),
(1733, 'Cinco de Febrero', '88415', 'Gustavo Díaz Ordaz', 'Tamaulipas', 0),
(1734, 'Lucio Blanco', '88420', 'Gustavo Díaz Ordaz', 'Tamaulipas', 0),
(1735, 'San José', '88425', 'Gustavo Díaz Ordaz', 'Tamaulipas', 0),
(1736, 'Ideal Del Campesino', '88430', 'Gustavo Díaz Ordaz', 'Tamaulipas', 0),
(1737, 'Buenavista', '88434', 'Gustavo Díaz Ordaz', 'Tamaulipas', 0),
(1738, 'Venecia', '88439', 'Gustavo Díaz Ordaz', 'Tamaulipas', 0),
(1739, 'Marte R. Gómez', '88439', 'Gustavo Díaz Ordaz', 'Tamaulipas', 0),
(1740, 'Camargo (Estradeño Dos)', '88440', 'Camargo', 'Tamaulipas', 0),
(1741, 'El Gonzaleño', '88440', 'Camargo', 'Tamaulipas', 0),
(1742, 'Ciudad Camargo Centro', '88440', 'Camargo', 'Tamaulipas', 0),
(1743, 'López y Nuevo Cadillo', '88440', 'Camargo', 'Tamaulipas', 0),
(1744, 'Lemus', '88442', 'Camargo', 'Tamaulipas', 0),
(1745, 'Cuauhtémoc', '88442', 'Camargo', 'Tamaulipas', 0),
(1746, 'Industrial Camargo', '88443', 'Camargo', 'Tamaulipas', 0),
(1747, 'Adolfo López Mateos', '88443', 'Camargo', 'Tamaulipas', 0),
(1748, 'El Sauz', '88444', 'Camargo', 'Tamaulipas', 0),
(1749, 'Behula', '88444', 'Camargo', 'Tamaulipas', 0),
(1750, 'La Misión', '88446', 'Camargo', 'Tamaulipas', 0),
(1751, 'El Gonzalito', '88447', 'Camargo', 'Tamaulipas', 0),
(1752, 'Obrera', '88448', 'Camargo', 'Tamaulipas', 0),
(1753, 'Nuevo Cadillo', '88449', 'Camargo', 'Tamaulipas', 0),
(1754, 'Rancherías', '88450', 'Camargo', 'Tamaulipas', 0),
(1755, 'Guardado de Abajo (Guardados de Abajo)', '88455', 'Camargo', 'Tamaulipas', 0),
(1756, 'Los Fresnos', '88456', 'Camargo', 'Tamaulipas', 0),
(1757, 'INFONAVIT Nuevo Camargo', '88459', 'Camargo', 'Tamaulipas', 0),
(1758, 'Los Comales', '88460', 'Camargo', 'Tamaulipas', 0),
(1759, 'Camargo (Estación Camargo)', '88468', 'Camargo', 'Tamaulipas', 0),
(1760, 'Congregación Ochoa', '88469', 'Camargo', 'Tamaulipas', 0),
(1761, 'El Azúcar', '88470', 'Camargo', 'Tamaulipas', 0),
(1762, 'San Francisco', '88470', 'Camargo', 'Tamaulipas', 0),
(1763, 'Los Ángeles', '88473', 'Camargo', 'Tamaulipas', 0),
(1764, 'Puertecitos', '88479', 'Camargo', 'Tamaulipas', 0),
(1765, 'Santa Rosalía', '88480', 'Camargo', 'Tamaulipas', 0),
(1766, 'Santa Gertrudis', '88490', 'Camargo', 'Tamaulipas', 0),
(1767, 'Ciudad Reynosa Centro', '88500', 'Reynosa', 'Tamaulipas', 0),
(1768, 'Reynosa (General Lucio Blanco)', '88509', 'Reynosa', 'Tamaulipas', 0),
(1769, 'Chapultepec (Chaparral)', '88510', 'Reynosa', 'Tamaulipas', 0),
(1770, 'Álvaro Obregón', '88520', 'Reynosa', 'Tamaulipas', 0),
(1771, 'Los Longorias', '88520', 'Reynosa', 'Tamaulipas', 0),
(1772, '10 de Mayo', '88520', 'Reynosa', 'Tamaulipas', 0),
(1773, 'Ramos', '88520', 'Reynosa', 'Tamaulipas', 0),
(1774, 'Carmen Serdán', '88522', 'Reynosa', 'Tamaulipas', 0),
(1775, 'Aquiles Serdán', '88540', 'Reynosa', 'Tamaulipas', 0),
(1776, 'Rancho Grande (Potreritos)', '88543', 'Reynosa', 'Tamaulipas', 0),
(1777, 'Medardo González', '88550', 'Reynosa', 'Tamaulipas', 0),
(1778, 'Prado Sur', '88560', 'Reynosa', 'Tamaulipas', 0),
(1779, 'Del Prado', '88560', 'Reynosa', 'Tamaulipas', 0),
(1780, 'Ferrocarril Zona Centro', '88570', 'Reynosa', 'Tamaulipas', 0),
(1781, 'El Maestro (centro)', '88570', 'Reynosa', 'Tamaulipas', 0),
(1782, 'Fernández Gómez', '88570', 'Reynosa', 'Tamaulipas', 0),
(1783, 'Del Río', '88580', 'Reynosa', 'Tamaulipas', 0),
(1784, 'El Bravo', '88580', 'Reynosa', 'Tamaulipas', 0),
(1785, 'Unidad y Progreso', '88589', 'Reynosa', 'Tamaulipas', 0),
(1786, 'Praderas de Oriente', '88595', 'Reynosa', 'Tamaulipas', 0),
(1787, 'Nuevo Tamaulipas', '88595', 'Reynosa', 'Tamaulipas', 0),
(1788, 'Manuel Tarrega', '88596', 'Reynosa', 'Tamaulipas', 0),
(1789, 'Villas del Prado', '88597', 'Reynosa', 'Tamaulipas', 0),
(1790, 'La Curva', '88597', 'Reynosa', 'Tamaulipas', 0),
(1791, 'Ferrocarril Oriente', '88598', 'Reynosa', 'Tamaulipas', 0),
(1792, 'Industrial', '88599', 'Reynosa', 'Tamaulipas', 0),
(1793, 'Constitución', '88600', 'Reynosa', 'Tamaulipas', 0),
(1794, 'Ferrocarril Poniente', '88600', 'Reynosa', 'Tamaulipas', 0),
(1795, 'Bella Vista', '88600', 'Reynosa', 'Tamaulipas', 0),
(1796, 'Módulo 2000 Rancho Grande', '88600', 'Reynosa', 'Tamaulipas', 0),
(1797, 'Manuel Cavazos Lerma', '88600', 'Reynosa', 'Tamaulipas', 0),
(1798, 'Rancho Grande', '88610', 'Reynosa', 'Tamaulipas', 0),
(1799, 'Jesús Vega Sánchez', '88610', 'Reynosa', 'Tamaulipas', 0),
(1800, 'Los Caracoles', '88610', 'Reynosa', 'Tamaulipas', 0),
(1801, 'La Rosita', '88610', 'Reynosa', 'Tamaulipas', 0),
(1802, 'Los Cavazos', '88614', 'Reynosa', 'Tamaulipas', 0),
(1803, 'Las Haciendas', '88614', 'Reynosa', 'Tamaulipas', 0),
(1804, 'Villas de las Haciendas', '88614', 'Reynosa', 'Tamaulipas', 0),
(1805, 'Parque Industrial Maquilpark', '88614', 'Reynosa', 'Tamaulipas', 0),
(1806, 'Bosques de las Haciendas', '88614', 'Reynosa', 'Tamaulipas', 0),
(1807, 'Montecristo', '88614', 'Reynosa', 'Tamaulipas', 0),
(1808, 'Actrices Mexicanas', '88614', 'Reynosa', 'Tamaulipas', 0),
(1809, 'Arboledas Ribereña', '88615', 'Reynosa', 'Tamaulipas', 0),
(1810, 'Riberas de Rancho Grande', '88615', 'Reynosa', 'Tamaulipas', 0),
(1811, 'Riberas del Bosque', '88615', 'Reynosa', 'Tamaulipas', 0),
(1812, 'Ribereña', '88620', 'Reynosa', 'Tamaulipas', 0),
(1813, 'Country', '88620', 'Reynosa', 'Tamaulipas', 0),
(1814, 'Ayuntamiento', '88620', 'Reynosa', 'Tamaulipas', 0),
(1815, 'Vicente Guerrero', '88620', 'Reynosa', 'Tamaulipas', 0),
(1816, 'Del Valle', '88620', 'Reynosa', 'Tamaulipas', 0),
(1817, 'Los Virreyes', '88620', 'Reynosa', 'Tamaulipas', 0),
(1818, 'Flovigar', '88630', 'Reynosa', 'Tamaulipas', 0),
(1819, 'Anzalduas', '88630', 'Reynosa', 'Tamaulipas', 0),
(1820, 'Rodríguez', '88630', 'Reynosa', 'Tamaulipas', 0),
(1821, 'Altamira', '88630', 'Reynosa', 'Tamaulipas', 0),
(1822, 'Beatty', '88630', 'Reynosa', 'Tamaulipas', 0),
(1823, 'Rodríguez Ampliación', '88631', 'Reynosa', 'Tamaulipas', 0),
(1824, 'Privada las Américas', '88632', 'Reynosa', 'Tamaulipas', 0),
(1825, 'Ladrillera Mexicana', '88632', 'Reynosa', 'Tamaulipas', 0),
(1826, 'El Círculo', '88640', 'Reynosa', 'Tamaulipas', 0),
(1827, 'Reséndez Fierro', '88640', 'Reynosa', 'Tamaulipas', 0),
(1828, 'Refinería', '88640', 'Reynosa', 'Tamaulipas', 0),
(1829, 'Los Naranjos', '88640', 'Reynosa', 'Tamaulipas', 0),
(1830, 'Montecasino', '88640', 'Reynosa', 'Tamaulipas', 0),
(1831, 'INFONAVIT Anzalduas', '88649', 'Reynosa', 'Tamaulipas', 0),
(1832, 'Las Torres', '88650', 'Reynosa', 'Tamaulipas', 0),
(1833, 'El Olmo', '88650', 'Reynosa', 'Tamaulipas', 0),
(1834, 'Santa Cruz', '88650', 'Reynosa', 'Tamaulipas', 0),
(1835, 'Santa Cecilia', '88650', 'Reynosa', 'Tamaulipas', 0),
(1836, 'Hidalgo', '88650', 'Reynosa', 'Tamaulipas', 0),
(1837, 'Morelos', '88650', 'Reynosa', 'Tamaulipas', 0),
(1838, 'Mocambo', '88651', 'Reynosa', 'Tamaulipas', 0),
(1839, 'Josefa Ortiz de Dominguez', '88653', 'Reynosa', 'Tamaulipas', 0),
(1840, 'Los Sauces', '88653', 'Reynosa', 'Tamaulipas', 0),
(1841, 'Adolfo López Mateos', '88654', 'Reynosa', 'Tamaulipas', 0),
(1842, 'Reserva Territorial Campestre', '88655', 'Reynosa', 'Tamaulipas', 0),
(1843, 'Privada las Ceibas', '88655', 'Reynosa', 'Tamaulipas', 0),
(1844, 'Las Arboledas', '88655', 'Reynosa', 'Tamaulipas', 0),
(1845, 'Hacienda las Fuentes', '88655', 'Reynosa', 'Tamaulipas', 0),
(1846, 'Privadas de la Hacienda', '88655', 'Reynosa', 'Tamaulipas', 0),
(1847, 'Las Camelias', '88655', 'Reynosa', 'Tamaulipas', 0),
(1848, 'Los Álamos', '88655', 'Reynosa', 'Tamaulipas', 0),
(1849, 'Leyes de Reforma', '88655', 'Reynosa', 'Tamaulipas', 0),
(1850, 'Campestre ITAVU', '88655', 'Reynosa', 'Tamaulipas', 0),
(1851, 'El Olmito', '88656', 'Reynosa', 'Tamaulipas', 0),
(1852, 'Longoria', '88660', 'Reynosa', 'Tamaulipas', 0),
(1853, 'Las Lomas', '88670', 'Reynosa', 'Tamaulipas', 0),
(1854, 'Jardín', '88670', 'Reynosa', 'Tamaulipas', 0),
(1855, 'Simón Rodríguez', '88670', 'Reynosa', 'Tamaulipas', 0),
(1856, 'La Rosita', '88670', 'Reynosa', 'Tamaulipas', 0),
(1857, 'Cuauhtémoc', '88670', 'Reynosa', 'Tamaulipas', 0),
(1858, 'Loma Alta', '88670', 'Reynosa', 'Tamaulipas', 0),
(1859, 'José de Escandón (Petrolera)', '88680', 'Reynosa', 'Tamaulipas', 0),
(1860, 'Las Delicias', '88680', 'Reynosa', 'Tamaulipas', 0),
(1861, 'Obrera', '88680', 'Reynosa', 'Tamaulipas', 0),
(1862, 'INFONAVIT Paraíso', '88680', 'Reynosa', 'Tamaulipas', 0),
(1863, 'Paraíso', '88680', 'Reynosa', 'Tamaulipas', 0),
(1864, 'Sierra de la Garza', '88680', 'Reynosa', 'Tamaulipas', 0),
(1865, 'Privada los Montejos', '88680', 'Reynosa', 'Tamaulipas', 0),
(1866, 'Juan Escutia', '88680', 'Reynosa', 'Tamaulipas', 0),
(1867, 'Ernesto Zedillo', '88684', 'Reynosa', 'Tamaulipas', 0),
(1868, 'Revolución Verde', '88687', 'Reynosa', 'Tamaulipas', 0),
(1869, 'Ayala', '88689', 'Reynosa', 'Tamaulipas', 0),
(1870, 'Electricistas', '88690', 'Reynosa', 'Tamaulipas', 0),
(1871, 'Los Doctores', '88690', 'Reynosa', 'Tamaulipas', 0),
(1872, 'Longoria San Ricardo', '88690', 'Reynosa', 'Tamaulipas', 0),
(1873, 'Los Leones', '88690', 'Reynosa', 'Tamaulipas', 0),
(1874, 'Narciso Mendoza', '88700', 'Reynosa', 'Tamaulipas', 0),
(1875, 'Rodhe', '88700', 'Reynosa', 'Tamaulipas', 0),
(1876, '5 de Diciembre', '88700', 'Reynosa', 'Tamaulipas', 0),
(1877, 'Loma Linda', '88700', 'Reynosa', 'Tamaulipas', 0),
(1878, 'Módulo 2000 Reynosa', '88700', 'Reynosa', 'Tamaulipas', 0),
(1879, 'Del Parque', '88700', 'Reynosa', 'Tamaulipas', 0),
(1880, 'Las Palmas', '88700', 'Reynosa', 'Tamaulipas', 0),
(1881, 'La Cañada', '88700', 'Reynosa', 'Tamaulipas', 0),
(1882, 'INFONAVIT Arboledas', '88703', 'Reynosa', 'Tamaulipas', 0),
(1883, 'Las Fuentes Sección Lomas', '88703', 'Reynosa', 'Tamaulipas', 0),
(1884, 'Las Fuentes Colonial', '88703', 'Reynosa', 'Tamaulipas', 0),
(1885, 'Enrique Cárdenas González', '88706', 'Reynosa', 'Tamaulipas', 0),
(1886, 'Rincón del Parque I y II', '88707', 'Reynosa', 'Tamaulipas', 0),
(1887, 'Magisterial', '88707', 'Reynosa', 'Tamaulipas', 0),
(1888, 'Bugambilias', '88707', 'Reynosa', 'Tamaulipas', 0),
(1889, 'Del Bosque Sur', '88707', 'Reynosa', 'Tamaulipas', 0),
(1890, 'San Roberto', '88707', 'Reynosa', 'Tamaulipas', 0),
(1891, 'Del Bosque Norte', '88707', 'Reynosa', 'Tamaulipas', 0),
(1892, 'Laredo', '88708', 'Reynosa', 'Tamaulipas', 0),
(1893, 'San Jerónimo', '88709', 'Reynosa', 'Tamaulipas', 0),
(1894, 'Del Sol', '88709', 'Reynosa', 'Tamaulipas', 0),
(1895, 'Valle Dorado', '88709', 'Reynosa', 'Tamaulipas', 0),
(1896, 'Villas de San Lázaro', '88710', 'Reynosa', 'Tamaulipas', 0),
(1897, 'Moderno', '88710', 'Reynosa', 'Tamaulipas', 0),
(1898, 'Santa María', '88710', 'Reynosa', 'Tamaulipas', 0),
(1899, 'Privada las Palmas', '88710', 'Reynosa', 'Tamaulipas', 0),
(1900, 'Parque Industrial Villa Florida', '88710', 'Reynosa', 'Tamaulipas', 0),
(1901, 'Palma Real', '88710', 'Reynosa', 'Tamaulipas', 0),
(1902, 'La Cima', '88710', 'Reynosa', 'Tamaulipas', 0),
(1903, 'Valle del Mezquite', '88710', 'Reynosa', 'Tamaulipas', 0),
(1904, 'Valle Alto', '88710', 'Reynosa', 'Tamaulipas', 0),
(1905, 'Rincón del Valle', '88710', 'Reynosa', 'Tamaulipas', 0),
(1906, 'Vista Hermosa', '88710', 'Reynosa', 'Tamaulipas', 0),
(1907, 'Villa los Nogales', '88710', 'Reynosa', 'Tamaulipas', 0),
(1908, 'Framboyanes', '88710', 'Reynosa', 'Tamaulipas', 0),
(1909, 'Polanco', '88710', 'Reynosa', 'Tamaulipas', 0),
(1910, 'San Antonio', '88710', 'Reynosa', 'Tamaulipas', 0),
(1911, 'Las Quintas', '88710', 'Reynosa', 'Tamaulipas', 0),
(1912, 'Campestre Bugambilias', '88713', 'Reynosa', 'Tamaulipas', 0),
(1913, 'San José de los Garza', '88713', 'Reynosa', 'Tamaulipas', 0),
(1914, 'Nuevo México', '88713', 'Reynosa', 'Tamaulipas', 0),
(1915, 'Villa Florida', '88715', 'Reynosa', 'Tamaulipas', 0),
(1916, 'Los Fresnos Residencial', '88715', 'Reynosa', 'Tamaulipas', 0),
(1917, 'Los Pinos de Loma Real', '88715', 'Reynosa', 'Tamaulipas', 0),
(1918, 'Villas del Roble', '88715', 'Reynosa', 'Tamaulipas', 0),
(1919, 'Colinas de Loma Real', '88715', 'Reynosa', 'Tamaulipas', 0),
(1920, 'Paseo Residencial', '88715', 'Reynosa', 'Tamaulipas', 0),
(1921, 'Sendas Residencial', '88715', 'Reynosa', 'Tamaulipas', 0),
(1922, 'Loma Real', '88715', 'Reynosa', 'Tamaulipas', 0),
(1923, 'Ventura', '88715', 'Reynosa', 'Tamaulipas', 0),
(1924, 'Calpulli o Unidad y Esfuerzo', '88715', 'Reynosa', 'Tamaulipas', 0),
(1925, 'Condado del Norte', '88715', 'Reynosa', 'Tamaulipas', 0),
(1926, 'Los Laureles', '88715', 'Reynosa', 'Tamaulipas', 0),
(1927, 'Villa Florida Jardines', '88715', 'Reynosa', 'Tamaulipas', 0),
(1928, 'Loma Bonita', '88715', 'Reynosa', 'Tamaulipas', 0),
(1929, 'Altavista', '88720', 'Reynosa', 'Tamaulipas', 0),
(1930, 'Los Cavazos', '88720', 'Reynosa', 'Tamaulipas', 0),
(1931, 'Leal Puente', '88720', 'Reynosa', 'Tamaulipas', 0),
(1932, 'Valle Verde', '88720', 'Reynosa', 'Tamaulipas', 0),
(1933, 'Antonio J. Bermúdez', '88727', 'Reynosa', 'Tamaulipas', 0),
(1934, 'Birrueta', '88729', 'Reynosa', 'Tamaulipas', 0),
(1935, 'Granjas Económicas del Norte', '88730', 'Reynosa', 'Tamaulipas', 0),
(1936, 'Lomas del Real de Jarachinas Norte', '88730', 'Reynosa', 'Tamaulipas', 0),
(1937, 'Jardines de Jarachina Sur', '88730', 'Reynosa', 'Tamaulipas', 0),
(1938, 'Lomas del Real de Jarachinas', '88730', 'Reynosa', 'Tamaulipas', 0),
(1939, 'Valle del Pedregal', '88730', 'Reynosa', 'Tamaulipas', 0),
(1940, 'Rosa Linda Guerrero', '88730', 'Reynosa', 'Tamaulipas', 0),
(1941, 'Valle del Vergel', '88730', 'Reynosa', 'Tamaulipas', 0),
(1942, 'Real del Cántaro', '88730', 'Reynosa', 'Tamaulipas', 0),
(1943, 'Colinas del Pedregal', '88730', 'Reynosa', 'Tamaulipas', 0),
(1944, 'San Valentín', '88733', 'Reynosa', 'Tamaulipas', 0),
(1945, 'Puerta Sur', '88734', 'Reynosa', 'Tamaulipas', 0),
(1946, 'Santa Fe', '88735', 'Reynosa', 'Tamaulipas', 0),
(1947, 'Campestre', '88735', 'Reynosa', 'Tamaulipas', 0),
(1948, 'Esfuerzo Nacional', '88735', 'Reynosa', 'Tamaulipas', 0),
(1949, 'San Marcos', '88735', 'Reynosa', 'Tamaulipas', 0),
(1950, 'Integración Familiar Desarrollo Integral ITAVU', '88735', 'Reynosa', 'Tamaulipas', 0),
(1951, 'El Halcón', '88735', 'Reynosa', 'Tamaulipas', 0),
(1952, 'Las Palmas II', '88735', 'Reynosa', 'Tamaulipas', 0),
(1953, 'Hacienda las Bugambilias', '88735', 'Reynosa', 'Tamaulipas', 0),
(1954, 'Privadas Campestre', '88735', 'Reynosa', 'Tamaulipas', 0),
(1955, 'Parque Industrial del Norte', '88736', 'Reynosa', 'Tamaulipas', 0),
(1956, 'Lomas de Sinaí', '88736', 'Reynosa', 'Tamaulipas', 0),
(1957, 'Lomas del Real de Jarachinas Sur', '88736', 'Reynosa', 'Tamaulipas', 0),
(1958, 'Villa Dorada', '88736', 'Reynosa', 'Tamaulipas', 0),
(1959, 'Puerta del Sol', '88736', 'Reynosa', 'Tamaulipas', 0),
(1960, 'Hacienda del Sol', '88736', 'Reynosa', 'Tamaulipas', 0),
(1961, 'Tecnológico de Reynosa', '88736', 'Reynosa', 'Tamaulipas', 0),
(1962, 'Solidaridad', '88736', 'Reynosa', 'Tamaulipas', 0),
(1963, 'Laderas de Monterreal', '88737', 'Reynosa', 'Tamaulipas', 0),
(1964, 'Las Cumbres', '88740', 'Reynosa', 'Tamaulipas', 0),
(1965, 'Aztlán', '88740', 'Reynosa', 'Tamaulipas', 0),
(1966, 'García Rojas', '88740', 'Reynosa', 'Tamaulipas', 0),
(1967, 'Las Fuentes', '88740', 'Reynosa', 'Tamaulipas', 0),
(1968, 'FOVISSSTE Módulo Habitacional', '88740', 'Reynosa', 'Tamaulipas', 0),
(1969, 'Villa las Fuentes', '88740', 'Reynosa', 'Tamaulipas', 0),
(1970, 'INFONAVIT Las Lomas', '88743', 'Reynosa', 'Tamaulipas', 0),
(1971, 'Las Cumbres Prolongación', '88745', 'Reynosa', 'Tamaulipas', 0),
(1972, 'Fuentes del Valle', '88746', 'Reynosa', 'Tamaulipas', 0),
(1973, 'SNTE', '88747', 'Reynosa', 'Tamaulipas', 0),
(1974, 'Los Muros', '88747', 'Reynosa', 'Tamaulipas', 0),
(1975, 'Lomas de Valle Alto', '88747', 'Reynosa', 'Tamaulipas', 0),
(1976, 'Casa Bella', '88747', 'Reynosa', 'Tamaulipas', 0),
(1977, 'Portal San Miguel', '88747', 'Reynosa', 'Tamaulipas', 0),
(1978, 'Valle del Bravo', '88747', 'Reynosa', 'Tamaulipas', 0),
(1979, 'Río Grande', '88747', 'Reynosa', 'Tamaulipas', 0),
(1980, 'Privadas del Norte', '88747', 'Reynosa', 'Tamaulipas', 0),
(1981, 'Cactus II', '88747', 'Reynosa', 'Tamaulipas', 0),
(1982, 'Villas de San José', '88748', 'Reynosa', 'Tamaulipas', 0),
(1983, 'Residencial San José', '88748', 'Reynosa', 'Tamaulipas', 0),
(1984, 'Jardines Coloniales', '88749', 'Reynosa', 'Tamaulipas', 0),
(1985, 'Presa la Laguna', '88750', 'Reynosa', 'Tamaulipas', 0),
(1986, 'Emiliano Zapata', '88750', 'Reynosa', 'Tamaulipas', 0),
(1987, 'Renacimiento II', '88754', 'Reynosa', 'Tamaulipas', 0),
(1988, 'San Pedro', '88754', 'Reynosa', 'Tamaulipas', 0),
(1989, 'Villa Marín', '88754', 'Reynosa', 'Tamaulipas', 0),
(1990, 'Paseo del Prado', '88754', 'Reynosa', 'Tamaulipas', 0),
(1991, 'Roma Burocrática', '88755', 'Reynosa', 'Tamaulipas', 0),
(1992, 'La Amistad', '88756', 'Reynosa', 'Tamaulipas', 0),
(1993, 'Burocrática', '88756', 'Reynosa', 'Tamaulipas', 0),
(1994, 'Parque Mol Industrial', '88756', 'Reynosa', 'Tamaulipas', 0),
(1995, 'Renacimiento', '88756', 'Reynosa', 'Tamaulipas', 0),
(1996, 'Jacinto López I', '88756', 'Reynosa', 'Tamaulipas', 0),
(1997, 'Unidos Podemos', '88757', 'Reynosa', 'Tamaulipas', 0),
(1998, 'López Portillo', '88757', 'Reynosa', 'Tamaulipas', 0),
(1999, 'Jacinto Lopez II', '88757', 'Reynosa', 'Tamaulipas', 0),
(2000, 'Adolfo Ruiz Cortinez', '88757', 'Reynosa', 'Tamaulipas', 0),
(2001, 'Universitaria', '88757', 'Reynosa', 'Tamaulipas', 0),
(2002, 'Nuevo Santander', '88758', 'Reynosa', 'Tamaulipas', 0),
(2003, 'Nuevo México Sectores I II III IV V', '88758', 'Reynosa', 'Tamaulipas', 0),
(2004, 'Santa Fe', '88758', 'Reynosa', 'Tamaulipas', 0),
(2005, 'Presa la Laguna (Ampliación)', '88758', 'Reynosa', 'Tamaulipas', 0),
(2006, 'Revolución Obrera', '88759', 'Reynosa', 'Tamaulipas', 0),
(2007, 'Las Mitras', '88759', 'Reynosa', 'Tamaulipas', 0),
(2008, 'Fundadores', '88759', 'Reynosa', 'Tamaulipas', 0),
(2009, 'Ricardo Flores Magón', '88759', 'Reynosa', 'Tamaulipas', 0),
(2010, 'El Anhelo', '88760', 'Reynosa', 'Tamaulipas', 0),
(2011, 'El Porvenir', '88760', 'Reynosa', 'Tamaulipas', 0),
(2012, 'Lázaro Cárdenas', '88760', 'Reynosa', 'Tamaulipas', 0),
(2013, 'La Escondida', '88760', 'Reynosa', 'Tamaulipas', 0),
(2014, 'La Laguna', '88760', 'Reynosa', 'Tamaulipas', 0),
(2015, 'Azteca', '88760', 'Reynosa', 'Tamaulipas', 0),
(2016, 'Lomas de Villar', '88763', 'Reynosa', 'Tamaulipas', 0),
(2017, 'Villa del Sol', '88764', 'Reynosa', 'Tamaulipas', 0),
(2018, 'Lázaro Cárdenas Oriente', '88769', 'Reynosa', 'Tamaulipas', 0),
(2019, 'La Escondida', '88770', 'Reynosa', 'Tamaulipas', 0),
(2020, 'Del Maestro', '88770', 'Reynosa', 'Tamaulipas', 0),
(2021, 'Voluntad y Trabajo', '88776', 'Reynosa', 'Tamaulipas', 0),
(2022, 'Villas de Imaq', '88776', 'Reynosa', 'Tamaulipas', 0),
(2023, 'Villas Diamante', '88776', 'Reynosa', 'Tamaulipas', 0),
(2024, 'Esperanza', '88777', 'Reynosa', 'Tamaulipas', 0),
(2025, 'La Joya', '88777', 'Reynosa', 'Tamaulipas', 0),
(2026, 'Lucio Blanco', '88777', 'Reynosa', 'Tamaulipas', 0),
(2027, 'Guadalupe Victoria', '88778', 'Reynosa', 'Tamaulipas', 0),
(2028, 'Américo Villarreal Guerra', '88778', 'Reynosa', 'Tamaulipas', 0),
(2029, 'Arcoiris', '88779', 'Reynosa', 'Tamaulipas', 0),
(2030, 'Brisas de Almaguer', '88780', 'Reynosa', 'Tamaulipas', 0),
(2031, 'Almaguer', '88780', 'Reynosa', 'Tamaulipas', 0),
(2032, 'Francisco Villa', '88780', 'Reynosa', 'Tamaulipas', 0),
(2033, 'Villas del Palmar', '88780', 'Reynosa', 'Tamaulipas', 0),
(2034, 'Los Robles', '88780', 'Reynosa', 'Tamaulipas', 0),
(2035, 'Lampasitos', '88780', 'Reynosa', 'Tamaulipas', 0),
(2036, 'Loma Blanca', '88780', 'Reynosa', 'Tamaulipas', 0),
(2037, 'Parque Industrial Center', '88780', 'Reynosa', 'Tamaulipas', 0),
(2038, 'Nuevo Reynosa', '88780', 'Reynosa', 'Tamaulipas', 0),
(2039, 'Reynosa', '88780', 'Reynosa', 'Tamaulipas', 0),
(2040, 'Unidad Obrera Sección II', '88780', 'Reynosa', 'Tamaulipas', 0),
(2041, 'El Mezquite', '88780', 'Reynosa', 'Tamaulipas', 0),
(2042, 'Villas del Parque', '88780', 'Reynosa', 'Tamaulipas', 0),
(2043, 'Parque Industrial El Puente (Manimex)', '88783', 'Reynosa', 'Tamaulipas', 0),
(2044, 'Puente Nuevo', '88783', 'Reynosa', 'Tamaulipas', 0),
(2045, 'El Guerreño', '88783', 'Reynosa', 'Tamaulipas', 0),
(2046, 'Campestre del Lago', '88783', 'Reynosa', 'Tamaulipas', 0),
(2047, 'Margarita Maza de Juárez', '88784', 'Reynosa', 'Tamaulipas', 0),
(2048, '15 de Enero', '88784', 'Reynosa', 'Tamaulipas', 0),
(2049, 'Campo Militar General Pedro Hinojosa', '88785', 'Reynosa', 'Tamaulipas', 0),
(2050, '16 de Septiembre', '88786', 'Reynosa', 'Tamaulipas', 0),
(2051, '1° de Mayo', '88786', 'Reynosa', 'Tamaulipas', 0),
(2052, 'Unidad Obrera', '88786', 'Reynosa', 'Tamaulipas', 0),
(2053, '20 de Noviembre', '88786', 'Reynosa', 'Tamaulipas', 0),
(2054, 'Nuevo Amanecer', '88786', 'Reynosa', 'Tamaulipas', 0),
(2055, 'Francisco Sarabia', '88787', 'Reynosa', 'Tamaulipas', 0),
(2056, 'Parque Industrial Colonial', '88787', 'Reynosa', 'Tamaulipas', 0),
(2057, 'Parque Industrial Sur', '88787', 'Reynosa', 'Tamaulipas', 0),
(2058, 'Villa Real', '88787', 'Reynosa', 'Tamaulipas', 0),
(2059, 'ProLogis Park', '88787', 'Reynosa', 'Tamaulipas', 0),
(2060, 'Riberas del Aeropuerto', '88787', 'Reynosa', 'Tamaulipas', 0),
(2061, 'Industrial Maquiladora', '88787', 'Reynosa', 'Tamaulipas', 0),
(2062, 'Residencial del Valle', '88787', 'Reynosa', 'Tamaulipas', 0),
(2063, 'El Campanario', '88787', 'Reynosa', 'Tamaulipas', 0),
(2064, 'Aeropuerto', '88787', 'Reynosa', 'Tamaulipas', 0),
(2065, 'Bienestar', '88788', 'Reynosa', 'Tamaulipas', 0),
(2066, 'Parque Industrial Reynosa (Sección Norte)', '88788', 'Reynosa', 'Tamaulipas', 0),
(2067, 'Zona de Agentes Aduanales Adscritos', '88788', 'Reynosa', 'Tamaulipas', 0),
(2068, 'Fidel Velázquez', '88789', 'Reynosa', 'Tamaulipas', 0),
(2069, 'Puerto Escondido', '88790', 'Reynosa', 'Tamaulipas', 0),
(2070, 'Marte R. Gómez', '88790', 'Reynosa', 'Tamaulipas', 0),
(2071, 'Arecas', '88790', 'Reynosa', 'Tamaulipas', 0),
(2072, 'Ingeniero Humberto Valdéz Richaud', '88790', 'Reynosa', 'Tamaulipas', 0),
(2073, 'Tamaulipas II y III', '88790', 'Reynosa', 'Tamaulipas', 0),
(2074, 'Benito Juárez', '88790', 'Reynosa', 'Tamaulipas', 0),
(2075, 'El Banco', '88790', 'Reynosa', 'Tamaulipas', 0),
(2076, 'Generación 2000', '88790', 'Reynosa', 'Tamaulipas', 0),
(2077, 'Tamaulipas IV (Nuevo Milenio)', '88790', 'Reynosa', 'Tamaulipas', 0),
(2078, 'Alianza Social', '88790', 'Reynosa', 'Tamaulipas', 0),
(2079, 'Modelo', '88790', 'Reynosa', 'Tamaulipas', 0),
(2080, 'Tamaulipas I', '88793', 'Reynosa', 'Tamaulipas', 0),
(2081, 'Lomas de la Torre', '88793', 'Reynosa', 'Tamaulipas', 0),
(2082, 'Lomas del Pedregal', '88793', 'Reynosa', 'Tamaulipas', 0),
(2083, 'Luis Donaldo Colosio', '88793', 'Reynosa', 'Tamaulipas', 0),
(2084, 'Gómez Lira', '88793', 'Reynosa', 'Tamaulipas', 0),
(2085, 'Ramón Pérez García', '88794', 'Reynosa', 'Tamaulipas', 0),
(2086, 'Las Milpas', '88794', 'Reynosa', 'Tamaulipas', 0),
(2087, 'Ayuntamiento 2000', '88794', 'Reynosa', 'Tamaulipas', 0),
(2088, 'Vamos Tamaulipas', '88795', 'Reynosa', 'Tamaulipas', 0),
(2089, 'Villas de la Joya', '88795', 'Reynosa', 'Tamaulipas', 0),
(2090, 'Las Palmas', '88795', 'Reynosa', 'Tamaulipas', 0),
(2091, 'Riveras del Carmen', '88795', 'Reynosa', 'Tamaulipas', 0),
(2092, 'Satélite', '88795', 'Reynosa', 'Tamaulipas', 0),
(2093, 'Villa Esmeralda', '88795', 'Reynosa', 'Tamaulipas', 0),
(2094, 'Independencia', '88795', 'Reynosa', 'Tamaulipas', 0),
(2095, 'Praderas Elite', '88795', 'Reynosa', 'Tamaulipas', 0),
(2096, 'El Oasis', '88796', 'Reynosa', 'Tamaulipas', 0),
(2097, 'Arboledas de Juárez', '88796', 'Reynosa', 'Tamaulipas', 0),
(2098, 'Parque Industrial American Industries Kimco', '88796', 'Reynosa', 'Tamaulipas', 0),
(2099, 'México', '88796', 'Reynosa', 'Tamaulipas', 0),
(2100, 'Beatriz Anaya', '88796', 'Reynosa', 'Tamaulipas', 0),
(2101, 'Mano con Mano', '88796', 'Reynosa', 'Tamaulipas', 0),
(2102, 'Naranjitos', '88796', 'Reynosa', 'Tamaulipas', 0),
(2103, 'Rincón de las Flores', '88796', 'Reynosa', 'Tamaulipas', 0),
(2104, 'Capitán Carlos Cantú', '88797', 'Reynosa', 'Tamaulipas', 0),
(2105, 'Marte R. Gómez', '88798', 'Reynosa', 'Tamaulipas', 0),
(2106, 'Las Pirámides', '88799', 'Reynosa', 'Tamaulipas', 0),
(2107, 'Balcones de Alcalá', '88799', 'Reynosa', 'Tamaulipas', 0),
(2108, 'Privada las Américas', '88799', 'Reynosa', 'Tamaulipas', 0),
(2109, 'Prados de Alcalá', '88799', 'Reynosa', 'Tamaulipas', 0),
(2110, 'Los Encinos', '88799', 'Reynosa', 'Tamaulipas', 0),
(2111, 'Los Arcos', '88799', 'Reynosa', 'Tamaulipas', 0),
(2112, 'Valle Soleado', '88799', 'Reynosa', 'Tamaulipas', 0),
(2113, 'Parque Industrial Alcalá', '88799', 'Reynosa', 'Tamaulipas', 0),
(2114, 'Pedro J. Méndez', '88799', 'Reynosa', 'Tamaulipas', 0),
(2115, 'Los Almendros', '88799', 'Reynosa', 'Tamaulipas', 0),
(2116, 'Paseo de las Flores', '88799', 'Reynosa', 'Tamaulipas', 0),
(2117, 'Los Olivos', '88799', 'Reynosa', 'Tamaulipas', 0),
(2118, 'El Triunfo', '88800', 'Río Bravo', 'Tamaulipas', 0),
(2119, 'Los Ángeles', '88803', 'Río Bravo', 'Tamaulipas', 0),
(2120, 'Santo Domingo', '88808', 'Río Bravo', 'Tamaulipas', 0),
(2121, 'Seis de Enero', '88808', 'Río Bravo', 'Tamaulipas', 0),
(2122, 'La Reforma', '88809', 'Río Bravo', 'Tamaulipas', 0),
(2123, 'Mágica', '88810', 'Río Bravo', 'Tamaulipas', 0),
(2124, 'Obrera', '88810', 'Río Bravo', 'Tamaulipas', 0),
(2125, 'Nuevo Progreso', '88810', 'Río Bravo', 'Tamaulipas', 0),
(2126, 'Aracely Martínez', '88810', 'Río Bravo', 'Tamaulipas', 0),
(2127, 'Olvido González', '88810', 'Río Bravo', 'Tamaulipas', 0),
(2128, 'Jardín', '88810', 'Río Bravo', 'Tamaulipas', 0),
(2129, 'Las Flores', '88811', 'Río Bravo', 'Tamaulipas', 0),
(2130, 'La Soledad', '88811', 'Río Bravo', 'Tamaulipas', 0),
(2131, 'Estación Canales', '88813', 'Río Bravo', 'Tamaulipas', 0),
(2132, 'Ebanito Nuevo', '88813', 'Río Bravo', 'Tamaulipas', 0),
(2133, 'Buenavista (Charco Azul)', '88815', 'Río Bravo', 'Tamaulipas', 0),
(2134, 'La Posta', '88815', 'Río Bravo', 'Tamaulipas', 0),
(2135, 'El Rosario', '88818', 'Río Bravo', 'Tamaulipas', 0),
(2136, 'San Francisco', '88818', 'Río Bravo', 'Tamaulipas', 0),
(2137, 'San Antonio', '88819', 'Río Bravo', 'Tamaulipas', 0),
(2138, 'Nueva Independencia (La Culeca)', '88820', 'Río Bravo', 'Tamaulipas', 0),
(2139, 'Santa Apolonia', '88820', 'Río Bravo', 'Tamaulipas', 0),
(2140, 'La Patria', '88821', 'Río Bravo', 'Tamaulipas', 0),
(2141, 'Conquista Campesina', '88821', 'Río Bravo', 'Tamaulipas', 0),
(2142, 'Atizapán de Zaragoza', '88825', 'Río Bravo', 'Tamaulipas', 0),
(2143, 'Raúl Muñiz', '88826', 'Río Bravo', 'Tamaulipas', 0),
(2144, 'Cristóbal Colón', '88827', 'Río Bravo', 'Tamaulipas', 0),
(2145, 'General Pedro Ochoa', '88828', 'Río Bravo', 'Tamaulipas', 0),
(2146, 'La Argüelleña', '88830', 'Río Bravo', 'Tamaulipas', 0),
(2147, 'Mario Souza', '88830', 'Río Bravo', 'Tamaulipas', 0),
(2148, 'Progreso Del Campesino', '88836', 'Río Bravo', 'Tamaulipas', 0),
(2149, 'Manuel Parreño', '88837', 'Río Bravo', 'Tamaulipas', 0),
(2150, 'La Zacatecana', '88839', 'Río Bravo', 'Tamaulipas', 0),
(2151, 'Cándido Aguilar', '88840', 'Río Bravo', 'Tamaulipas', 0),
(2152, 'Centenario de La Constitución', '88841', 'Río Bravo', 'Tamaulipas', 0),
(2153, 'Dos de Enero', '88849', 'Río Bravo', 'Tamaulipas', 0),
(2154, 'Diez de Noviembre', '88850', 'Reynosa', 'Tamaulipas', 0),
(2155, 'Santa Ana', '88850', 'Reynosa', 'Tamaulipas', 0),
(2156, 'Nuevo Santana', '88850', 'Reynosa', 'Tamaulipas', 0),
(2157, 'El Guerreño (Brecha 100 y 102 con Kilómetro 23 y 2', '88850', 'Reynosa', 'Tamaulipas', 0),
(2158, 'Los Altos (El Alto)', '88850', 'Reynosa', 'Tamaulipas', 0),
(2159, 'Reynosa Díaz', '88850', 'Reynosa', 'Tamaulipas', 0),
(2160, 'El Porvenir (El Bajío)', '88850', 'Reynosa', 'Tamaulipas', 0),
(2161, 'Rodolfo Martín Rocha (Martín Rocha)', '88850', 'Reynosa', 'Tamaulipas', 0),
(2162, 'Galo Álvarez (Licenciado Galo Álvarez)', '88854', 'Reynosa', 'Tamaulipas', 0),
(2163, 'La Retama', '88855', 'Reynosa', 'Tamaulipas', 0),
(2164, 'Palo Blanco', '88856', 'Reynosa', 'Tamaulipas', 0),
(2165, 'Anzaldúas (Estación Anzaldúas)', '88857', 'Reynosa', 'Tamaulipas', 0),
(2166, 'Estación Argüelles', '88859', 'Reynosa', 'Tamaulipas', 0),
(2167, 'Alfredo V. Bonfil (Periquitos)', '88875', 'Reynosa', 'Tamaulipas', 0),
(2168, 'Francisco I. Madero', '88875', 'Reynosa', 'Tamaulipas', 0),
(2169, 'Villa de Méndez', '88880', 'Méndez', 'Tamaulipas', 0),
(2170, 'La Purísima', '88880', 'Méndez', 'Tamaulipas', 0),
(2171, 'El Lobo (La Escondida)', '88882', 'Méndez', 'Tamaulipas', 0),
(2172, 'Burgos', '88890', 'Burgos', 'Tamaulipas', 0),
(2173, 'Lázaro Cárdenas (Rancho Nuevo)', '88894', 'Burgos', 'Tamaulipas', 0),
(2174, 'El Pedregal', '88895', 'Burgos', 'Tamaulipas', 0),
(2175, 'El Mulato', '88896', 'Burgos', 'Tamaulipas', 0),
(2176, 'Las Margaritas', '88897', 'Burgos', 'Tamaulipas', 0),
(2177, 'Labores de la Paz (Los de Arriba)', '88897', 'Burgos', 'Tamaulipas', 0),
(2178, 'Cándido Aguilar', '88898', 'Burgos', 'Tamaulipas', 0),
(2179, 'Río Bravo Centro', '88900', 'Río Bravo', 'Tamaulipas', 0),
(2180, 'Morelos', '88910', 'Río Bravo', 'Tamaulipas', 0),
(2181, 'Río Bravo 2', '88910', 'Río Bravo', 'Tamaulipas', 0),
(2182, 'San Diego', '88910', 'Río Bravo', 'Tamaulipas', 0),
(2183, 'Hijos de Ejidatarios', '88920', 'Río Bravo', 'Tamaulipas', 0),
(2184, 'Unidos Avanzamos', '88920', 'Río Bravo', 'Tamaulipas', 0),
(2185, 'Paraíso', '88920', 'Río Bravo', 'Tamaulipas', 0),
(2186, 'Francisco I. Madero', '88920', 'Río Bravo', 'Tamaulipas', 0),
(2187, 'Graciano Sanchez', '88920', 'Río Bravo', 'Tamaulipas', 0),
(2188, 'Independencia', '88920', 'Río Bravo', 'Tamaulipas', 0),
(2189, 'Nuevo León', '88920', 'Río Bravo', 'Tamaulipas', 0),
(2190, 'Estanislao García', '88920', 'Río Bravo', 'Tamaulipas', 0),
(2191, 'Fundadores', '88920', 'Río Bravo', 'Tamaulipas', 0),
(2192, 'Lázaro Cárdenas', '88920', 'Río Bravo', 'Tamaulipas', 0),
(2193, 'Celanese', '88920', 'Río Bravo', 'Tamaulipas', 0),
(2194, 'Niños Héroes', '88920', 'Río Bravo', 'Tamaulipas', 0),
(2195, 'Misiones del Puente Anzaldúas', '88920', 'Río Bravo', 'Tamaulipas', 0),
(2196, 'Esperanza', '88920', 'Río Bravo', 'Tamaulipas', 0),
(2197, 'La Sauteña', '88920', 'Río Bravo', 'Tamaulipas', 0),
(2198, 'Paraíso Norte', '88920', 'Río Bravo', 'Tamaulipas', 0),
(2199, 'Las Margaritas', '88923', 'Río Bravo', 'Tamaulipas', 0),
(2200, 'Hacienda las Brisas I, II, III', '88923', 'Río Bravo', 'Tamaulipas', 0),
(2201, 'Praderas del Sol', '88923', 'Río Bravo', 'Tamaulipas', 0),
(2202, 'Las Américas', '88925', 'Río Bravo', 'Tamaulipas', 0),
(2203, 'Riveras Del Bravo', '88925', 'Río Bravo', 'Tamaulipas', 0),
(2204, 'Brisas del Campo', '88925', 'Río Bravo', 'Tamaulipas', 0),
(2205, 'Infonavit del Valle', '88925', 'Río Bravo', 'Tamaulipas', 0),
(2206, 'Popular Villahermosa', '88925', 'Río Bravo', 'Tamaulipas', 0),
(2207, 'Nuevo Amanecer', '88925', 'Río Bravo', 'Tamaulipas', 0),
(2208, 'Solidaridad', '88925', 'Río Bravo', 'Tamaulipas', 0),
(2209, 'Paseo del Valle', '88925', 'Río Bravo', 'Tamaulipas', 0),
(2210, 'Río Bravense', '88925', 'Río Bravo', 'Tamaulipas', 0),
(2211, 'Estero', '88930', 'Río Bravo', 'Tamaulipas', 0),
(2212, 'Ferrocarril 1, 2, 3', '88930', 'Río Bravo', 'Tamaulipas', 0),
(2213, 'Miguel Hidalgo', '88930', 'Río Bravo', 'Tamaulipas', 0),
(2214, 'Ferrocarril Centro', '88930', 'Río Bravo', 'Tamaulipas', 0),
(2215, 'Benito Juárez', '88930', 'Río Bravo', 'Tamaulipas', 0),
(2216, 'Roberto Guerra', '88930', 'Río Bravo', 'Tamaulipas', 0),
(2217, 'Agapito Barrera', '88930', 'Río Bravo', 'Tamaulipas', 0),
(2218, 'Manuel Ramírez', '88930', 'Río Bravo', 'Tamaulipas', 0),
(2219, 'Monterreal', '88930', 'Río Bravo', 'Tamaulipas', 0),
(2220, 'Valle de Leones', '88930', 'Río Bravo', 'Tamaulipas', 0),
(2221, 'Guerrero', '88933', 'Río Bravo', 'Tamaulipas', 0),
(2222, 'Las Lomas', '88933', 'Río Bravo', 'Tamaulipas', 0),
(2223, 'Campestre', '88933', 'Río Bravo', 'Tamaulipas', 0),
(2224, 'Ferrocarril 4', '88933', 'Río Bravo', 'Tamaulipas', 0),
(2225, 'Satélite', '88933', 'Río Bravo', 'Tamaulipas', 0),
(2226, 'Azteca', '88933', 'Río Bravo', 'Tamaulipas', 0),
(2227, 'Vamos Tamaulipas', '88934', 'Río Bravo', 'Tamaulipas', 0),
(2228, 'Del Bosque', '88934', 'Río Bravo', 'Tamaulipas', 0),
(2229, 'Del Carmen', '88935', 'Río Bravo', 'Tamaulipas', 0),
(2230, 'Manuel Cavazos Lerma', '88935', 'Río Bravo', 'Tamaulipas', 0),
(2231, 'Victoria Cardenista', '88935', 'Río Bravo', 'Tamaulipas', 0),
(2232, 'Cumbres', '88936', 'Río Bravo', 'Tamaulipas', 0),
(2233, 'Carlos Salinas', '88936', 'Río Bravo', 'Tamaulipas', 0),
(2234, 'Integración Familiar', '88936', 'Río Bravo', 'Tamaulipas', 0),
(2235, 'Noé Garza Martínez', '88940', 'Río Bravo', 'Tamaulipas', 0),
(2236, '1° de Mayo', '88940', 'Río Bravo', 'Tamaulipas', 0),
(2237, 'Conalep', '88940', 'Río Bravo', 'Tamaulipas', 0),
(2238, 'El Maestro', '88943', 'Río Bravo', 'Tamaulipas', 0),
(2239, 'Hijos de Ejidatarios Primero de Mayo', '88943', 'Río Bravo', 'Tamaulipas', 0),
(2240, 'Emilio Martínez Manaotou', '88943', 'Río Bravo', 'Tamaulipas', 0),
(2241, 'San Gregorio', '88943', 'Río Bravo', 'Tamaulipas', 0),
(2242, 'San Francisco', '88944', 'Río Bravo', 'Tamaulipas', 0),
(2243, 'Loma Linda', '88944', 'Río Bravo', 'Tamaulipas', 0),
(2244, 'Villa de Guadalupe', '88944', 'Río Bravo', 'Tamaulipas', 0),
(2245, 'Octavio Silva', '88945', 'Río Bravo', 'Tamaulipas', 0),
(2246, 'Arnulfo Martínez', '88945', 'Río Bravo', 'Tamaulipas', 0),
(2247, 'Constitución', '88945', 'Río Bravo', 'Tamaulipas', 0),
(2248, 'Juan Baez Guerra', '88945', 'Río Bravo', 'Tamaulipas', 0),
(2249, 'Los Ángeles', '88946', 'Río Bravo', 'Tamaulipas', 0),
(2250, '78 80', '88950', 'Río Bravo', 'Tamaulipas', 0),
(2251, 'Río Bravo 1', '88950', 'Río Bravo', 'Tamaulipas', 0),
(2252, 'Cuauhtémoc', '88950', 'Río Bravo', 'Tamaulipas', 0),
(2253, 'Río Bravo 3', '88959', 'Río Bravo', 'Tamaulipas', 0),
(2254, 'Zona Industrial', '88960', 'Río Bravo', 'Tamaulipas', 0),
(2255, 'Bugambilias', '88970', 'Río Bravo', 'Tamaulipas', 0),
(2256, 'INFONAVIT San Diego', '88970', 'Río Bravo', 'Tamaulipas', 0),
(2257, 'México', '88970', 'Río Bravo', 'Tamaulipas', 0),
(2258, 'Fovissste', '88970', 'Río Bravo', 'Tamaulipas', 0),
(2259, 'Popular', '88980', 'Río Bravo', 'Tamaulipas', 0),
(2260, 'Del Río', '88980', 'Río Bravo', 'Tamaulipas', 0),
(2261, 'Luis Echeverría', '88980', 'Río Bravo', 'Tamaulipas', 0),
(2262, 'Tamaulipas', '88980', 'Río Bravo', 'Tamaulipas', 0),
(2263, 'Los Pinos', '88980', 'Río Bravo', 'Tamaulipas', 0),
(2264, 'Del Valle', '88980', 'Río Bravo', 'Tamaulipas', 0),
(2265, 'Socorro', '88980', 'Río Bravo', 'Tamaulipas', 0),
(2266, 'Valle del Magisterio', '88980', 'Río Bravo', 'Tamaulipas', 0),
(2267, 'Santa Inés', '88980', 'Río Bravo', 'Tamaulipas', 0),
(2268, 'FOVISSSTE Las Torres', '88980', 'Río Bravo', 'Tamaulipas', 0),
(2269, 'Condesa', '88980', 'Río Bravo', 'Tamaulipas', 0),
(2270, 'INFONAVIT Fidel Velázquez', '88990', 'Río Bravo', 'Tamaulipas', 0),
(2271, 'Termoeléctrica', '88990', 'Río Bravo', 'Tamaulipas', 0),
(2272, 'INFONAVIT la Paz', '88990', 'Río Bravo', 'Tamaulipas', 0),
(2273, 'Emilio Portes Gil', '88990', 'Río Bravo', 'Tamaulipas', 0),
(2274, 'Bugambilias', '88993', 'Río Bravo', 'Tamaulipas', 0),
(2275, 'INFONAVIT las Flores', '88993', 'Río Bravo', 'Tamaulipas', 0),
(2276, 'La Paz', '88993', 'Río Bravo', 'Tamaulipas', 0),
(2277, 'México Asentamientos Humanos', '88993', 'Río Bravo', 'Tamaulipas', 0),
(2278, 'INFONAVIT Conquistadores', '88993', 'Río Bravo', 'Tamaulipas', 0),
(2279, 'INFONAVIT La Sauteña', '88993', 'Río Bravo', 'Tamaulipas', 0),
(2280, 'San Nicolás', '88993', 'Río Bravo', 'Tamaulipas', 0),
(2281, 'Los Portales', '88993', 'Río Bravo', 'Tamaulipas', 0),
(2282, 'Campestre del Río', '88994', 'Río Bravo', 'Tamaulipas', 0),
(2283, 'Álamo', '88994', 'Río Bravo', 'Tamaulipas', 0),
(2284, 'Santander', '88994', 'Río Bravo', 'Tamaulipas', 0),
(2285, 'Leonardo Rodríguez Alcaine', '88995', 'Río Bravo', 'Tamaulipas', 0),
(2286, 'Tampico Centro', '89000', 'Tampico', 'Tamaulipas', 0),
(2287, 'Obrera', '89050', 'Tampico', 'Tamaulipas', 0),
(2288, 'Tamaulipas', '89060', 'Tampico', 'Tamaulipas', 0),
(2289, 'Telegrafistas', '89060', 'Tampico', 'Tamaulipas', 0),
(2290, 'Guadalupe Mainero', '89070', 'Tampico', 'Tamaulipas', 0),
(2291, 'Xicotencatl', '89080', 'Tampico', 'Tamaulipas', 0),
(2292, 'Guadalupe Victoria', '89080', 'Tampico', 'Tamaulipas', 0),
(2293, 'Isleta Pérez', '89090', 'Tampico', 'Tamaulipas', 0),
(2294, 'Azucenas', '89090', 'Tampico', 'Tamaulipas', 0),
(2295, 'Parajes de Guadalupe', '89090', 'Tampico', 'Tamaulipas', 0),
(2296, 'Lomas de la Aurora', '89100', 'Tampico', 'Tamaulipas', 0),
(2297, 'Loma Real', '89100', 'Tampico', 'Tamaulipas', 0),
(2298, 'Lomas de Rosales', '89100', 'Tampico', 'Tamaulipas', 0),
(2299, 'Lomas del Naranjal', '89106', 'Tampico', 'Tamaulipas', 0),
(2300, 'Loma Bonita', '89107', 'Tampico', 'Tamaulipas', 0),
(2301, 'Lindavista', '89107', 'Tampico', 'Tamaulipas', 0),
(2302, 'Gustavo Díaz Ordaz', '89108', 'Tampico', 'Tamaulipas', 0),
(2303, 'Hospital Regional', '89108', 'Tampico', 'Tamaulipas', 0),
(2304, 'Universidad Sur', '89109', 'Tampico', 'Tamaulipas', 0),
(2305, 'Los Arcángeles', '89109', 'Tampico', 'Tamaulipas', 0),
(2306, '15 Batallón de Infantería', '89110', 'Tampico', 'Tamaulipas', 0),
(2307, 'FOVISSSTE Vista Hermosa', '89110', 'Tampico', 'Tamaulipas', 0),
(2308, 'Petrolera', '89110', 'Tampico', 'Tamaulipas', 0),
(2309, 'Las Villas', '89110', 'Tampico', 'Tamaulipas', 0),
(2310, 'Militar', '89118', 'Tampico', 'Tamaulipas', 0),
(2311, 'La Florida', '89118', 'Tampico', 'Tamaulipas', 0),
(2312, 'Vista Hermosa', '89119', 'Tampico', 'Tamaulipas', 0),
(2313, 'Minerva', '89120', 'Tampico', 'Tamaulipas', 0),
(2314, 'Guadalupe', '89120', 'Tampico', 'Tamaulipas', 0),
(2315, 'Armora Nicolás', '89120', 'Tampico', 'Tamaulipas', 0),
(2316, 'Arboledas', '89130', 'Tampico', 'Tamaulipas', 0),
(2317, 'Hidalgo', '89130', 'Tampico', 'Tamaulipas', 0),
(2318, 'Hidalgo', '89130', 'Tampico', 'Tamaulipas', 0),
(2319, 'Allende', '89130', 'Tampico', 'Tamaulipas', 0),
(2320, 'Primavera', '89130', 'Tampico', 'Tamaulipas', 0),
(2321, 'Arcim', '89136', 'Tampico', 'Tamaulipas', 0),
(2322, 'Tampico', '89137', 'Tampico', 'Tamaulipas', 0),
(2323, 'Ignacio Romero', '89137', 'Tampico', 'Tamaulipas', 0),
(2324, 'Zapotal', '89138', 'Tampico', 'Tamaulipas', 0),
(2325, 'Universidad', '89138', 'Tampico', 'Tamaulipas', 0),
(2326, 'Colinas de Universidad', '89138', 'Tampico', 'Tamaulipas', 0),
(2327, 'Los Pinos', '89138', 'Tampico', 'Tamaulipas', 0),
(2328, 'San Felipe', '89138', 'Tampico', 'Tamaulipas', 0),
(2329, 'Smith', '89140', 'Tampico', 'Tamaulipas', 0),
(2330, 'Lauro Aguirre', '89140', 'Tampico', 'Tamaulipas', 0),
(2331, 'Reforma', '89140', 'Tampico', 'Tamaulipas', 0),
(2332, 'Vergel', '89150', 'Tampico', 'Tamaulipas', 0),
(2333, 'Otomi', '89150', 'Tampico', 'Tamaulipas', 0),
(2334, 'Primavera', '89150', 'Tampico', 'Tamaulipas', 0),
(2335, 'Juárez', '89150', 'Tampico', 'Tamaulipas', 0),
(2336, 'Bellavista', '89159', 'Tampico', 'Tamaulipas', 0),
(2337, 'Santo Niño', '89160', 'Tampico', 'Tamaulipas', 0),
(2338, 'Tolteca', '89160', 'Tampico', 'Tamaulipas', 0),
(2339, 'Frente Democrático', '89160', 'Tampico', 'Tamaulipas', 0),
(2340, 'Laguna del Carpintero', '89169', 'Tampico', 'Tamaulipas', 0),
(2341, 'Aurora', '89170', 'Tampico', 'Tamaulipas', 0),
(2342, 'Trueba', '89170', 'Tampico', 'Tamaulipas', 0),
(2343, 'Rodríguez', '89170', 'Tampico', 'Tamaulipas', 0),
(2344, 'Martock', '89170', 'Tampico', 'Tamaulipas', 0),
(2345, 'Rosario', '89176', 'Tampico', 'Tamaulipas', 0),
(2346, 'Moctezuma', '89177', 'Tampico', 'Tamaulipas', 0),
(2347, 'Barandillas', '89180', 'Tampico', 'Tamaulipas', 0),
(2348, 'Anáhuac', '89180', 'Tampico', 'Tamaulipas', 0),
(2349, 'Azteca', '89190', 'Tampico', 'Tamaulipas', 0),
(2350, 'Del Pueblo', '89190', 'Tampico', 'Tamaulipas', 0),
(2351, 'Americana', '89190', 'Tampico', 'Tamaulipas', 0),
(2352, 'Volantín', '89199', 'Tampico', 'Tamaulipas', 0),
(2353, 'Monte Alegre', '89210', 'Tampico', 'Tamaulipas', 0),
(2354, 'Sierra Morena', '89210', 'Tampico', 'Tamaulipas', 0),
(2355, 'San Pedro Fernando', '89215', 'Tampico', 'Tamaulipas', 0),
(2356, 'Club Campestre Tampico', '89217', 'Tampico', 'Tamaulipas', 0),
(2357, 'Country Club', '89218', 'Tampico', 'Tamaulipas', 0),
(2358, 'Laguna de la Herradura', '89219', 'Tampico', 'Tamaulipas', 0),
(2359, 'Chairel Sección 33', '89219', 'Tampico', 'Tamaulipas', 0),
(2360, 'Flores', '89220', 'Tampico', 'Tamaulipas', 0),
(2361, 'Fray Andrés de Olmos', '89229', 'Tampico', 'Tamaulipas', 0),
(2362, 'Águila', '89230', 'Tampico', 'Tamaulipas', 0),
(2363, 'Chairel', '89239', 'Tampico', 'Tamaulipas', 0),
(2364, 'Sauce', '89240', 'Tampico', 'Tamaulipas', 0),
(2365, 'Altavista', '89240', 'Tampico', 'Tamaulipas', 0),
(2366, 'Pescadores', '89250', 'Tampico', 'Tamaulipas', 0),
(2367, 'Alijadores', '89250', 'Tampico', 'Tamaulipas', 0),
(2368, 'Exlomas del Country Club', '89250', 'Tampico', 'Tamaulipas', 0);
INSERT INTO `catColonias` (`idColonia`, `Colonia`, `CodigoPostal`, `Ciudad`, `Estado`, `Status`) VALUES
(2369, 'Sembradores de la Amistad', '89250', 'Tampico', 'Tamaulipas', 0),
(2370, 'Peralta', '89258', 'Tampico', 'Tamaulipas', 0),
(2371, 'Nacional', '89260', 'Tampico', 'Tamaulipas', 0),
(2372, 'Jardín', '89260', 'Tampico', 'Tamaulipas', 0),
(2373, 'Campbell', '89260', 'Tampico', 'Tamaulipas', 0),
(2374, 'Ramos', '89268', 'Tampico', 'Tamaulipas', 0),
(2375, 'Aragón', '89270', 'Tampico', 'Tamaulipas', 0),
(2376, 'Melchor Ocampo', '89270', 'Tampico', 'Tamaulipas', 0),
(2377, 'Matamoros', '89270', 'Tampico', 'Tamaulipas', 0),
(2378, 'Cascajal', '89280', 'Tampico', 'Tamaulipas', 0),
(2379, 'Marina Nacional', '89290', 'Tampico', 'Tamaulipas', 0),
(2380, 'Morelos', '89290', 'Tampico', 'Tamaulipas', 0),
(2381, 'Mano Con Mano', '89298', 'Tampico', 'Tamaulipas', 0),
(2382, 'Vicente Guerrero', '89298', 'Tampico', 'Tamaulipas', 0),
(2383, 'Enrique Cárdenas González', '89309', 'Tampico', 'Tamaulipas', 0),
(2384, 'Laguna de la Puerta', '89310', 'Tampico', 'Tamaulipas', 0),
(2385, 'Revolución Verde', '89314', 'Tampico', 'Tamaulipas', 0),
(2386, 'Unidad del Valle', '89314', 'Tampico', 'Tamaulipas', 0),
(2387, 'Emilio Portes Gil', '89316', 'Tampico', 'Tamaulipas', 0),
(2388, 'Esfuerzo Obrero', '89316', 'Tampico', 'Tamaulipas', 0),
(2389, 'Sagitario I y II', '89316', 'Tampico', 'Tamaulipas', 0),
(2390, 'Natividad Garza Leal', '89317', 'Tampico', 'Tamaulipas', 0),
(2391, 'Solidaridad Voluntad y Trabajo', '89317', 'Tampico', 'Tamaulipas', 0),
(2392, 'Nuevo Progreso', '89318', 'Tampico', 'Tamaulipas', 0),
(2393, 'Francisco Javier Mina', '89318', 'Tampico', 'Tamaulipas', 0),
(2394, 'Del Bosque', '89318', 'Tampico', 'Tamaulipas', 0),
(2395, 'Villa Hermosa', '89319', 'Tampico', 'Tamaulipas', 0),
(2396, 'Bugambilias', '89319', 'Tampico', 'Tamaulipas', 0),
(2397, 'Americano', '89320', 'Tampico', 'Tamaulipas', 0),
(2398, 'Puesta del Sol', '89320', 'Tampico', 'Tamaulipas', 0),
(2399, 'Chairel Tancol', '89320', 'Tampico', 'Tamaulipas', 0),
(2400, 'Tancol', '89320', 'Tampico', 'Tamaulipas', 0),
(2401, 'Loma Bonita', '89325', 'Tampico', 'Tamaulipas', 0),
(2402, 'Circuito Andrea', '89325', 'Tampico', 'Tamaulipas', 0),
(2403, 'Arcángeles', '89326', 'Tampico', 'Tamaulipas', 0),
(2404, 'La Paz', '89326', 'Tampico', 'Tamaulipas', 0),
(2405, 'Colinas de Tancol', '89326', 'Tampico', 'Tamaulipas', 0),
(2406, 'Jardines del Valle', '89327', 'Tampico', 'Tamaulipas', 0),
(2407, '2 de Junio', '89327', 'Tampico', 'Tamaulipas', 0),
(2408, 'Nuevo Paraíso', '89327', 'Tampico', 'Tamaulipas', 0),
(2409, 'Residencial Bancario', '89327', 'Tampico', 'Tamaulipas', 0),
(2410, 'Pedro José Méndez', '89328', 'Tampico', 'Tamaulipas', 0),
(2411, 'Petroquímicas', '89328', 'Tampico', 'Tamaulipas', 0),
(2412, 'Las Américas', '89329', 'Tampico', 'Tamaulipas', 0),
(2413, 'Colombia', '89329', 'Tampico', 'Tamaulipas', 0),
(2414, 'Latinoamericano', '89329', 'Tampico', 'Tamaulipas', 0),
(2415, 'Flamboyanes', '89330', 'Tampico', 'Tamaulipas', 0),
(2416, 'Los Almendros', '89330', 'Tampico', 'Tamaulipas', 0),
(2417, 'Universidad Poniente', '89336', 'Tampico', 'Tamaulipas', 0),
(2418, 'Nuevo Aeropuerto', '89337', 'Tampico', 'Tamaulipas', 0),
(2419, 'Choferes', '89337', 'Tampico', 'Tamaulipas', 0),
(2420, 'José López Portillo', '89338', 'Tampico', 'Tamaulipas', 0),
(2421, 'Monza', '89338', 'Tampico', 'Tamaulipas', 0),
(2422, 'Estadio', '89338', 'Tampico', 'Tamaulipas', 0),
(2423, 'Villa Verde', '89338', 'Tampico', 'Tamaulipas', 0),
(2424, 'Las Chacas', '89338', 'Tampico', 'Tamaulipas', 0),
(2425, 'Tampico (General Francisco Javier Mina)', '89339', 'Tampico', 'Tamaulipas', 0),
(2426, 'Ciudad Militar', '89340', 'Tampico', 'Tamaulipas', 0),
(2427, 'Villas Chairel', '89340', 'Tampico', 'Tamaulipas', 0),
(2428, 'Arenal', '89344', 'Tampico', 'Tamaulipas', 0),
(2429, 'Presas del Arenal', '89344', 'Tampico', 'Tamaulipas', 0),
(2430, 'Arboleda', '89345', 'Tampico', 'Tamaulipas', 0),
(2431, 'Tancol 33', '89346', 'Tampico', 'Tamaulipas', 0),
(2432, 'San Antonio', '89347', 'Tampico', 'Tamaulipas', 0),
(2433, 'Conjunto Habitacional Esmeralda', '89348', 'Tampico', 'Tamaulipas', 0),
(2434, 'Los Encinos', '89348', 'Tampico', 'Tamaulipas', 0),
(2435, 'México', '89348', 'Tampico', 'Tamaulipas', 0),
(2436, 'Privado Querétaro', '89348', 'Tampico', 'Tamaulipas', 0),
(2437, 'Pegaso', '89348', 'Tampico', 'Tamaulipas', 0),
(2438, 'Alejandra', '89348', 'Tampico', 'Tamaulipas', 0),
(2439, 'Conjunto Habitacional Tercer Milenium', '89348', 'Tampico', 'Tamaulipas', 0),
(2440, 'Privado Sonora', '89348', 'Tampico', 'Tamaulipas', 0),
(2441, 'El Naranjal', '89349', 'Tampico', 'Tamaulipas', 0),
(2442, 'Los Claustros', '89349', 'Tampico', 'Tamaulipas', 0),
(2443, 'Puertas Coloradas', '89349', 'Tampico', 'Tamaulipas', 0),
(2444, 'Insurgentes', '89349', 'Tampico', 'Tamaulipas', 0),
(2445, 'El Naranjal Prolongación Sur', '89349', 'Tampico', 'Tamaulipas', 0),
(2446, 'Fernanda', '89349', 'Tampico', 'Tamaulipas', 0),
(2447, 'Coyolitos', '89349', 'Tampico', 'Tamaulipas', 0),
(2448, 'Roma', '89350', 'Tampico', 'Tamaulipas', 0),
(2449, 'Magdaleno Aguilar', '89355', 'Tampico', 'Tamaulipas', 0),
(2450, 'Chapultepec', '89356', 'Tampico', 'Tamaulipas', 0),
(2451, 'Carmen Romano de López Portillo', '89356', 'Tampico', 'Tamaulipas', 0),
(2452, 'Génesis', '89356', 'Tampico', 'Tamaulipas', 0),
(2453, 'San Francisco', '89357', 'Tampico', 'Tamaulipas', 0),
(2454, 'Los Portales', '89357', 'Tampico', 'Tamaulipas', 0),
(2455, 'Mirador', '89357', 'Tampico', 'Tamaulipas', 0),
(2456, 'Luis Donaldo Colosio', '89358', 'Tampico', 'Tamaulipas', 0),
(2457, 'Luis Donaldo Colosio', '89358', 'Tampico', 'Tamaulipas', 0),
(2458, 'Valle Escondido', '89358', 'Tampico', 'Tamaulipas', 0),
(2459, 'Gladiolas', '89358', 'Tampico', 'Tamaulipas', 0),
(2460, 'Jardines de Champayán 1', '89358', 'Tampico', 'Tamaulipas', 0),
(2461, 'Las Torres', '89358', 'Tampico', 'Tamaulipas', 0),
(2462, 'Tierra Alta', '89358', 'Tampico', 'Tamaulipas', 0),
(2463, 'Independencia', '89358', 'Tampico', 'Tamaulipas', 0),
(2464, 'Miradores de la Presa', '89358', 'Tampico', 'Tamaulipas', 0),
(2465, 'Niños Héroes', '89359', 'Tampico', 'Tamaulipas', 0),
(2466, 'Lomas del Chairel', '89360', 'Tampico', 'Tamaulipas', 0),
(2467, 'Jesús Elías Piña IV, V y VI', '89364', 'Tampico', 'Tamaulipas', 0),
(2468, 'El Ojital', '89364', 'Tampico', 'Tamaulipas', 0),
(2469, 'Hacienda del Rul', '89364', 'Tampico', 'Tamaulipas', 0),
(2470, 'El Charro', '89364', 'Tampico', 'Tamaulipas', 0),
(2471, 'Loma Alta', '89364', 'Tampico', 'Tamaulipas', 0),
(2472, 'Jesús Elías Piña I, II y III', '89365', 'Tampico', 'Tamaulipas', 0),
(2473, 'Luis Echeverría Álvarez', '89366', 'Tampico', 'Tamaulipas', 0),
(2474, 'Diamante', '89366', 'Tampico', 'Tamaulipas', 0),
(2475, 'Villas Laguna', '89367', 'Tampico', 'Tamaulipas', 0),
(2476, 'Cumbres de Vista Bella', '89367', 'Tampico', 'Tamaulipas', 0),
(2477, 'Ampliación Luis Echeverria', '89367', 'Tampico', 'Tamaulipas', 0),
(2478, 'Unidad Modelo', '89367', 'Tampico', 'Tamaulipas', 0),
(2479, 'Nuevo Amanecer', '89367', 'Tampico', 'Tamaulipas', 0),
(2480, 'Laderas de Vista Bella', '89367', 'Tampico', 'Tamaulipas', 0),
(2481, 'Vista Bella', '89367', 'Tampico', 'Tamaulipas', 0),
(2482, 'Colinas San Gerardo', '89367', 'Tampico', 'Tamaulipas', 0),
(2483, 'Gonzalo García Ramírez', '89368', 'Tampico', 'Tamaulipas', 0),
(2484, 'INFONAVIT Lomas Arenal', '89368', 'Tampico', 'Tamaulipas', 0),
(2485, 'Las Violetas', '89368', 'Tampico', 'Tamaulipas', 0),
(2486, 'San Pedro', '89368', 'Tampico', 'Tamaulipas', 0),
(2487, 'Gema', '89368', 'Tampico', 'Tamaulipas', 0),
(2488, 'FOVISSSTE Chairel', '89368', 'Tampico', 'Tamaulipas', 0),
(2489, 'Colinas del Sol', '89369', 'Tampico', 'Tamaulipas', 0),
(2490, 'Villa San Pedro', '89369', 'Tampico', 'Tamaulipas', 0),
(2491, 'Ciudad Madero Centro', '89400', 'Ciudad Madero', 'Tamaulipas', 0),
(2492, 'Unidad Nacional', '89410', 'Ciudad Madero', 'Tamaulipas', 0),
(2493, 'Villa Verde', '89415', 'Ciudad Madero', 'Tamaulipas', 0),
(2494, 'Asunción Ávalos', '89416', 'Ciudad Madero', 'Tamaulipas', 0),
(2495, 'Jacarandas', '89416', 'Ciudad Madero', 'Tamaulipas', 0),
(2496, 'Estadio', '89417', 'Ciudad Madero', 'Tamaulipas', 0),
(2497, 'Las Américas', '89420', 'Ciudad Madero', 'Tamaulipas', 0),
(2498, 'Monteverde', '89420', 'Ciudad Madero', 'Tamaulipas', 0),
(2499, 'Lázaro Cárdenas', '89430', 'Ciudad Madero', 'Tamaulipas', 0),
(2500, 'Felipe Carrillo Puerto', '89430', 'Ciudad Madero', 'Tamaulipas', 0),
(2501, 'Los Mangos', '89440', 'Ciudad Madero', 'Tamaulipas', 0),
(2502, 'Jardín 20 de Noviembre', '89440', 'Ciudad Madero', 'Tamaulipas', 0),
(2503, '1° de Mayo', '89450', 'Ciudad Madero', 'Tamaulipas', 0),
(2504, 'Loma del Gallo', '89460', 'Ciudad Madero', 'Tamaulipas', 0),
(2505, 'Ricardo Flores Magón', '89460', 'Ciudad Madero', 'Tamaulipas', 0),
(2506, 'Quetzalcóatl', '89464', 'Ciudad Madero', 'Tamaulipas', 0),
(2507, 'Esfuerzo Nacional', '89470', 'Ciudad Madero', 'Tamaulipas', 0),
(2508, 'Frente Democrático', '89470', 'Ciudad Madero', 'Tamaulipas', 0),
(2509, 'Francisco I Madero', '89480', 'Ciudad Madero', 'Tamaulipas', 0),
(2510, 'Las Conchitas', '89480', 'Ciudad Madero', 'Tamaulipas', 0),
(2511, 'Árbol Grande', '89490', 'Ciudad Madero', 'Tamaulipas', 0),
(2512, 'Obrera', '89490', 'Ciudad Madero', 'Tamaulipas', 0),
(2513, 'Las Arboledas', '89496', 'Ciudad Madero', 'Tamaulipas', 0),
(2514, 'Árbol Grande Ex-refinería', '89497', 'Ciudad Madero', 'Tamaulipas', 0),
(2515, 'Candelario Garza', '89500', 'Ciudad Madero', 'Tamaulipas', 0),
(2516, 'Candelario Garza Ampliación', '89505', 'Ciudad Madero', 'Tamaulipas', 0),
(2517, '17 de Enero', '89505', 'Ciudad Madero', 'Tamaulipas', 0),
(2518, 'Miramapolis', '89506', 'Ciudad Madero', 'Tamaulipas', 0),
(2519, 'Lienzo Charro', '89506', 'Ciudad Madero', 'Tamaulipas', 0),
(2520, 'SAHOP', '89506', 'Ciudad Madero', 'Tamaulipas', 0),
(2521, 'Rincón Colonial', '89506', 'Ciudad Madero', 'Tamaulipas', 0),
(2522, 'Puerto Alegre', '89506', 'Ciudad Madero', 'Tamaulipas', 0),
(2523, 'Insurgentes', '89506', 'Ciudad Madero', 'Tamaulipas', 0),
(2524, 'Villas del Mar', '89506', 'Ciudad Madero', 'Tamaulipas', 0),
(2525, 'Tercer Milenio', '89506', 'Ciudad Madero', 'Tamaulipas', 0),
(2526, 'Las Dunas', '89506', 'Ciudad Madero', 'Tamaulipas', 0),
(2527, 'Integración Familiar', '89506', 'Ciudad Madero', 'Tamaulipas', 0),
(2528, 'Joyas de Miramapolis', '89506', 'Ciudad Madero', 'Tamaulipas', 0),
(2529, 'Palmas II', '89510', 'Ciudad Madero', 'Tamaulipas', 0),
(2530, 'Ampliación Unidad Nacional', '89510', 'Ciudad Madero', 'Tamaulipas', 0),
(2531, 'Heriberto Kehoe', '89510', 'Ciudad Madero', 'Tamaulipas', 0),
(2532, 'Ignacio Zaragoza', '89510', 'Ciudad Madero', 'Tamaulipas', 0),
(2533, 'Las Flores', '89510', 'Ciudad Madero', 'Tamaulipas', 0),
(2534, 'Palmas I', '89510', 'Ciudad Madero', 'Tamaulipas', 0),
(2535, 'Lago Azul', '89510', 'Ciudad Madero', 'Tamaulipas', 0),
(2536, 'La Joya', '89512', 'Ciudad Madero', 'Tamaulipas', 0),
(2537, '16 de Septiembre', '89512', 'Ciudad Madero', 'Tamaulipas', 0),
(2538, 'Lucio Blanco Ampliación los Pinos', '89513', 'Ciudad Madero', 'Tamaulipas', 0),
(2539, 'Los Pinos', '89513', 'Ciudad Madero', 'Tamaulipas', 0),
(2540, 'Satélite', '89514', 'Ciudad Madero', 'Tamaulipas', 0),
(2541, 'Residencial la Antigua', '89514', 'Ciudad Madero', 'Tamaulipas', 0),
(2542, 'Residencial del Parque', '89514', 'Ciudad Madero', 'Tamaulipas', 0),
(2543, 'Jesús Luna Luna', '89514', 'Ciudad Madero', 'Tamaulipas', 0),
(2544, 'El Palmar', '89515', 'Ciudad Madero', 'Tamaulipas', 0),
(2545, '18 de Marzo', '89515', 'Ciudad Madero', 'Tamaulipas', 0),
(2546, 'Castores', '89515', 'Ciudad Madero', 'Tamaulipas', 0),
(2547, 'Los Sauces', '89515', 'Ciudad Madero', 'Tamaulipas', 0),
(2548, 'Carlos Jiménez Macías', '89515', 'Ciudad Madero', 'Tamaulipas', 0),
(2549, 'Los Cedros', '89515', 'Ciudad Madero', 'Tamaulipas', 0),
(2550, 'Villas del Mar', '89515', 'Ciudad Madero', 'Tamaulipas', 0),
(2551, 'Los Framboyanes', '89515', 'Ciudad Madero', 'Tamaulipas', 0),
(2552, 'Manuel R Díaz', '89515', 'Ciudad Madero', 'Tamaulipas', 0),
(2553, 'Naval Militar las Chacas', '89515', 'Ciudad Madero', 'Tamaulipas', 0),
(2554, 'Emiliano Zapata', '89517', 'Ciudad Madero', 'Tamaulipas', 0),
(2555, 'Revolución Verde', '89518', 'Ciudad Madero', 'Tamaulipas', 0),
(2556, 'Adriana González Hernández', '89519', 'Ciudad Madero', 'Tamaulipas', 0),
(2557, 'Simón Rivera', '89519', 'Ciudad Madero', 'Tamaulipas', 0),
(2558, '15 de Mayo', '89519', 'Ciudad Madero', 'Tamaulipas', 0),
(2559, 'Los Fresnos', '89519', 'Ciudad Madero', 'Tamaulipas', 0),
(2560, 'Francisco Villa', '89520', 'Ciudad Madero', 'Tamaulipas', 0),
(2561, 'Héroe de Nacozari', '89520', 'Ciudad Madero', 'Tamaulipas', 0),
(2562, 'Adolfo López Mateos', '89520', 'Ciudad Madero', 'Tamaulipas', 0),
(2563, 'Fidel Velázquez', '89520', 'Ciudad Madero', 'Tamaulipas', 0),
(2564, 'Del Bosque', '89530', 'Ciudad Madero', 'Tamaulipas', 0),
(2565, 'Emilio Carranza', '89540', 'Ciudad Madero', 'Tamaulipas', 0),
(2566, 'Hermenegildo Galeana', '89540', 'Ciudad Madero', 'Tamaulipas', 0),
(2567, 'Miramar', '89540', 'Ciudad Madero', 'Tamaulipas', 0),
(2568, 'La Barra', '89540', 'Ciudad Madero', 'Tamaulipas', 0),
(2569, 'ISSSFAM', '89540', 'Ciudad Madero', 'Tamaulipas', 0),
(2570, 'Del Maestro', '89550', 'Ciudad Madero', 'Tamaulipas', 0),
(2571, 'Del Valle', '89550', 'Ciudad Madero', 'Tamaulipas', 0),
(2572, 'Girasoles', '89550', 'Ciudad Madero', 'Tamaulipas', 0),
(2573, 'Benito Juárez Norte', '89550', 'Ciudad Madero', 'Tamaulipas', 0),
(2574, 'Emiliano Zapata Sur', '89550', 'Ciudad Madero', 'Tamaulipas', 0),
(2575, 'Camichines', '89553', 'Ciudad Madero', 'Tamaulipas', 0),
(2576, 'Nueva Cecilia', '89554', 'Ciudad Madero', 'Tamaulipas', 0),
(2577, 'FOVISSSTE Lucio Blanco', '89555', 'Ciudad Madero', 'Tamaulipas', 0),
(2578, 'Los Robles', '89555', 'Ciudad Madero', 'Tamaulipas', 0),
(2579, 'Polvorín', '89555', 'Ciudad Madero', 'Tamaulipas', 0),
(2580, 'Santa Úrsula', '89555', 'Ciudad Madero', 'Tamaulipas', 0),
(2581, 'Las Brisas', '89555', 'Ciudad Madero', 'Tamaulipas', 0),
(2582, 'Delfino Reséndiz', '89556', 'Ciudad Madero', 'Tamaulipas', 0),
(2583, 'Victoria', '89556', 'Ciudad Madero', 'Tamaulipas', 0),
(2584, 'Hipódromo', '89560', 'Ciudad Madero', 'Tamaulipas', 0),
(2585, 'López Portillo', '89560', 'Ciudad Madero', 'Tamaulipas', 0),
(2586, 'El Llano', '89566', 'Ciudad Madero', 'Tamaulipas', 0),
(2587, 'La Loma', '89567', 'Ciudad Madero', 'Tamaulipas', 0),
(2588, 'Hidalgo Oriente', '89570', 'Ciudad Madero', 'Tamaulipas', 0),
(2589, 'Hidalgo Poniente', '89570', 'Ciudad Madero', 'Tamaulipas', 0),
(2590, 'Vicente Guerrero', '89580', 'Ciudad Madero', 'Tamaulipas', 0),
(2591, 'Benito Juárez', '89580', 'Ciudad Madero', 'Tamaulipas', 0),
(2592, 'Ferrocarrilera', '89590', 'Ciudad Madero', 'Tamaulipas', 0),
(2593, 'Talleres', '89590', 'Ciudad Madero', 'Tamaulipas', 0),
(2594, 'Tinaco', '89590', 'Ciudad Madero', 'Tamaulipas', 0),
(2595, 'Altamira Centro', '89600', 'Altamira', 'Tamaulipas', 0),
(2596, 'Alameda', '89602', 'Altamira', 'Tamaulipas', 0),
(2597, 'Altamira', '89602', 'Altamira', 'Tamaulipas', 0),
(2598, 'Enrique Cárdenas González', '89602', 'Altamira', 'Tamaulipas', 0),
(2599, 'Fidel Velázquez', '89602', 'Altamira', 'Tamaulipas', 0),
(2600, 'Felipe Carrillo Puerto', '89602', 'Altamira', 'Tamaulipas', 0),
(2601, 'Nuevo México', '89602', 'Altamira', 'Tamaulipas', 0),
(2602, 'Adolfo López Mateos', '89602', 'Altamira', 'Tamaulipas', 0),
(2603, 'Alejandro Briones', '89602', 'Altamira', 'Tamaulipas', 0),
(2604, 'Cesar Lopez de Lara', '89602', 'Altamira', 'Tamaulipas', 0),
(2605, 'La Joya', '89602', 'Altamira', 'Tamaulipas', 0),
(2606, 'Unidos Avanzamos', '89602', 'Altamira', 'Tamaulipas', 0),
(2607, 'Diana Laura Riojas de Colosio', '89602', 'Altamira', 'Tamaulipas', 0),
(2608, '20 de Noviembre', '89602', 'Altamira', 'Tamaulipas', 0),
(2609, 'Altamira Sector IV', '89602', 'Altamira', 'Tamaulipas', 0),
(2610, 'El Repecho', '89602', 'Altamira', 'Tamaulipas', 0),
(2611, 'Villas del Sol', '89602', 'Altamira', 'Tamaulipas', 0),
(2612, 'Electricistas', '89602', 'Altamira', 'Tamaulipas', 0),
(2613, 'Los Obeliscos', '89602', 'Altamira', 'Tamaulipas', 0),
(2614, 'Santo Domingo', '89602', 'Altamira', 'Tamaulipas', 0),
(2615, 'Las Fuentes', '89602', 'Altamira', 'Tamaulipas', 0),
(2616, 'Los Mangos', '89602', 'Altamira', 'Tamaulipas', 0),
(2617, 'Santa Amalia', '89602', 'Altamira', 'Tamaulipas', 0),
(2618, 'Valle Verde', '89602', 'Altamira', 'Tamaulipas', 0),
(2619, 'Villerias', '89602', 'Altamira', 'Tamaulipas', 0),
(2620, 'Petrolera', '89602', 'Altamira', 'Tamaulipas', 0),
(2621, 'Independencia', '89602', 'Altamira', 'Tamaulipas', 0),
(2622, 'Primavera Norte', '89602', 'Altamira', 'Tamaulipas', 0),
(2623, 'La Unión', '89602', 'Altamira', 'Tamaulipas', 0),
(2624, 'Los Presidentes Sec I, 2, 3, 4, 5 y 6', '89602', 'Altamira', 'Tamaulipas', 0),
(2625, 'Martin A Martinez', '89602', 'Altamira', 'Tamaulipas', 0),
(2626, 'Álamo', '89602', 'Altamira', 'Tamaulipas', 0),
(2627, 'Valles de España', '89602', 'Altamira', 'Tamaulipas', 0),
(2628, 'Emilio Portes Gil', '89602', 'Altamira', 'Tamaulipas', 0),
(2629, 'Guadalupe Victoria', '89602', 'Altamira', 'Tamaulipas', 0),
(2630, 'Las Blancas', '89602', 'Altamira', 'Tamaulipas', 0),
(2631, 'Los Laureles', '89602', 'Altamira', 'Tamaulipas', 0),
(2632, 'Luis Donaldo Colosio', '89602', 'Altamira', 'Tamaulipas', 0),
(2633, 'Las Margaritas', '89602', 'Altamira', 'Tamaulipas', 0),
(2634, 'Tampiquito', '89602', 'Altamira', 'Tamaulipas', 0),
(2635, 'El Nogal', '89602', 'Altamira', 'Tamaulipas', 0),
(2636, 'Educación', '89602', 'Altamira', 'Tamaulipas', 0),
(2637, 'El Pedregal', '89602', 'Altamira', 'Tamaulipas', 0),
(2638, 'Sección 3 Petróleros', '89602', 'Altamira', 'Tamaulipas', 0),
(2639, 'Roger Gómez', '89602', 'Altamira', 'Tamaulipas', 0),
(2640, 'La Florida', '89602', 'Altamira', 'Tamaulipas', 0),
(2641, 'María Antonieta Márquez', '89602', 'Altamira', 'Tamaulipas', 0),
(2642, 'Los Placeres del Campo', '89602', 'Altamira', 'Tamaulipas', 0),
(2643, 'Encinos', '89602', 'Altamira', 'Tamaulipas', 0),
(2644, 'Los Mangos', '89602', 'Altamira', 'Tamaulipas', 0),
(2645, 'León F. Gual', '89602', 'Altamira', 'Tamaulipas', 0),
(2646, 'Revolución Obrera', '89602', 'Altamira', 'Tamaulipas', 0),
(2647, 'Campo Tamaulipas', '89602', 'Altamira', 'Tamaulipas', 0),
(2648, 'Los Pinos', '89602', 'Altamira', 'Tamaulipas', 0),
(2649, 'Lázaro Cárdenas', '89602', 'Altamira', 'Tamaulipas', 0),
(2650, 'Los Olivos', '89603', 'Altamira', 'Tamaulipas', 0),
(2651, 'Las Alamedas', '89603', 'Altamira', 'Tamaulipas', 0),
(2652, 'Francisco I Madero', '89603', 'Altamira', 'Tamaulipas', 0),
(2653, 'Jardines de Arboledas', '89603', 'Altamira', 'Tamaulipas', 0),
(2654, 'Arrecifes', '89603', 'Altamira', 'Tamaulipas', 0),
(2655, 'Unidad Satélite', '89603', 'Altamira', 'Tamaulipas', 0),
(2656, 'Satélite Chapala', '89603', 'Altamira', 'Tamaulipas', 0),
(2657, 'Municipios Libres las Negras', '89603', 'Altamira', 'Tamaulipas', 0),
(2658, 'Las Palmas', '89603', 'Altamira', 'Tamaulipas', 0),
(2659, 'El Edén', '89603', 'Altamira', 'Tamaulipas', 0),
(2660, 'Puerto Industrial de Altamira', '89603', 'Altamira', 'Tamaulipas', 0),
(2661, 'Magdaleno Aguilar', '89603', 'Altamira', 'Tamaulipas', 0),
(2662, 'La Potosina', '89603', 'Altamira', 'Tamaulipas', 0),
(2663, 'Las Haciendas', '89603', 'Altamira', 'Tamaulipas', 0),
(2664, 'Villas Del Sol', '89603', 'Altamira', 'Tamaulipas', 0),
(2665, 'Colinas de Altamira', '89603', 'Altamira', 'Tamaulipas', 0),
(2666, 'La Pedrera', '89603', 'Altamira', 'Tamaulipas', 0),
(2667, 'Corredor Industrial', '89603', 'Altamira', 'Tamaulipas', 0),
(2668, 'Municipios Libres', '89603', 'Altamira', 'Tamaulipas', 0),
(2669, 'Paraíso', '89603', 'Altamira', 'Tamaulipas', 0),
(2670, 'Villa las Rosas', '89603', 'Altamira', 'Tamaulipas', 0),
(2671, 'Las Adelitas', '89603', 'Altamira', 'Tamaulipas', 0),
(2672, 'Emiliano Zapata', '89603', 'Altamira', 'Tamaulipas', 0),
(2673, 'Fundadores', '89603', 'Altamira', 'Tamaulipas', 0),
(2674, 'Real Altamira', '89603', 'Altamira', 'Tamaulipas', 0),
(2675, 'Francisco Villa', '89603', 'Altamira', 'Tamaulipas', 0),
(2676, 'Laguna de La Puerta', '89603', 'Altamira', 'Tamaulipas', 0),
(2677, 'Jose de Escandon', '89603', 'Altamira', 'Tamaulipas', 0),
(2678, 'Venustiano Carranza', '89603', 'Altamira', 'Tamaulipas', 0),
(2679, 'De los Ríos', '89603', 'Altamira', 'Tamaulipas', 0),
(2680, 'San Jacinto', '89603', 'Altamira', 'Tamaulipas', 0),
(2681, 'Paseo Real', '89603', 'Altamira', 'Tamaulipas', 0),
(2682, 'Ejido Ricardo Flores Magón', '89603', 'Altamira', 'Tamaulipas', 0),
(2683, 'Hacienda las Palmas', '89603', 'Altamira', 'Tamaulipas', 0),
(2684, 'Arboledas', '89603', 'Altamira', 'Tamaulipas', 0),
(2685, 'Industrial Guerrero', '89603', 'Altamira', 'Tamaulipas', 0),
(2686, 'Villas de Altamira', '89603', 'Altamira', 'Tamaulipas', 0),
(2687, 'Villas Las Flores', '89603', 'Altamira', 'Tamaulipas', 0),
(2688, 'La Pedrera', '89603', 'Altamira', 'Tamaulipas', 0),
(2689, 'Francisco Medrano', '89603', 'Altamira', 'Tamaulipas', 0),
(2690, 'Los Prados', '89603', 'Altamira', 'Tamaulipas', 0),
(2691, 'Arecas', '89603', 'Altamira', 'Tamaulipas', 0),
(2692, 'Habitacional', '89604', 'Altamira', 'Tamaulipas', 0),
(2693, 'Santa Elena', '89604', 'Altamira', 'Tamaulipas', 0),
(2694, 'Cancún', '89604', 'Altamira', 'Tamaulipas', 0),
(2695, 'Valle Dorado', '89604', 'Altamira', 'Tamaulipas', 0),
(2696, 'El Mundo', '89604', 'Altamira', 'Tamaulipas', 0),
(2697, 'Ampliación El Contadero', '89604', 'Altamira', 'Tamaulipas', 0),
(2698, 'Dunas Doradas', '89604', 'Altamira', 'Tamaulipas', 0),
(2699, 'Benito Juárez', '89604', 'Altamira', 'Tamaulipas', 0),
(2700, 'Jose Maria Morelos', '89604', 'Altamira', 'Tamaulipas', 0),
(2701, 'Nuevo Tampico Sector 2', '89604', 'Altamira', 'Tamaulipas', 0),
(2702, 'Plomeros', '89604', 'Altamira', 'Tamaulipas', 0),
(2703, 'San Arnoldo', '89604', 'Altamira', 'Tamaulipas', 0),
(2704, 'Serapio Venegas', '89604', 'Altamira', 'Tamaulipas', 0),
(2705, 'Gema', '89604', 'Altamira', 'Tamaulipas', 0),
(2706, 'San Ángel', '89604', 'Altamira', 'Tamaulipas', 0),
(2707, 'Albañiles', '89604', 'Altamira', 'Tamaulipas', 0),
(2708, 'Américo Villareal', '89604', 'Altamira', 'Tamaulipas', 0),
(2709, 'Nuevo Madero', '89604', 'Altamira', 'Tamaulipas', 0),
(2710, 'El Contadero', '89604', 'Altamira', 'Tamaulipas', 0),
(2711, 'Santo Tomas', '89604', 'Altamira', 'Tamaulipas', 0),
(2712, 'El Triunfo', '89604', 'Altamira', 'Tamaulipas', 0),
(2713, 'Justo Sierra', '89604', 'Altamira', 'Tamaulipas', 0),
(2714, 'San Antonio', '89604', 'Altamira', 'Tamaulipas', 0),
(2715, 'Guadalupe Cervantes', '89604', 'Altamira', 'Tamaulipas', 0),
(2716, 'Residencia Velamar', '89604', 'Altamira', 'Tamaulipas', 0),
(2717, 'La Esperanza', '89604', 'Altamira', 'Tamaulipas', 0),
(2718, 'Miramar', '89604', 'Altamira', 'Tamaulipas', 0),
(2719, 'Nuevo Tampico', '89604', 'Altamira', 'Tamaulipas', 0),
(2720, 'Los Fresnos', '89604', 'Altamira', 'Tamaulipas', 0),
(2721, 'Primavera', '89604', 'Altamira', 'Tamaulipas', 0),
(2722, 'Bahía', '89604', 'Altamira', 'Tamaulipas', 0),
(2723, 'Jazmín', '89604', 'Altamira', 'Tamaulipas', 0),
(2724, 'Tamaulipas', '89604', 'Altamira', 'Tamaulipas', 0),
(2725, 'Españita', '89605', 'Altamira', 'Tamaulipas', 0),
(2726, 'Punta Laguna', '89605', 'Altamira', 'Tamaulipas', 0),
(2727, 'Ganadera', '89605', 'Altamira', 'Tamaulipas', 0),
(2728, 'Floresta', '89605', 'Altamira', 'Tamaulipas', 0),
(2729, 'Sotavento Altamira', '89605', 'Altamira', 'Tamaulipas', 0),
(2730, 'Agua de Castilla (La Bajada)', '89605', 'Altamira', 'Tamaulipas', 0),
(2731, 'Acapulquito', '89605', 'Altamira', 'Tamaulipas', 0),
(2732, 'Central de Abastos', '89605', 'Altamira', 'Tamaulipas', 0),
(2733, 'Colinas de La Laguna', '89605', 'Altamira', 'Tamaulipas', 0),
(2734, 'Huatulquito', '89605', 'Altamira', 'Tamaulipas', 0),
(2735, 'Huatulco', '89605', 'Altamira', 'Tamaulipas', 0),
(2736, 'Residencial El Náutico', '89605', 'Altamira', 'Tamaulipas', 0),
(2737, 'Loma Bonita', '89605', 'Altamira', 'Tamaulipas', 0),
(2738, 'Paseos de Floresta', '89605', 'Altamira', 'Tamaulipas', 0),
(2739, 'Residencial Lagunas de Miralta', '89605', 'Altamira', 'Tamaulipas', 0),
(2740, 'Vega de Esteros', '89605', 'Altamira', 'Tamaulipas', 0),
(2741, 'Villas Náutico', '89605', 'Altamira', 'Tamaulipas', 0),
(2742, 'Tampico Altamira', '89605', 'Altamira', 'Tamaulipas', 0),
(2743, 'Residencial Real Campestre', '89605', 'Altamira', 'Tamaulipas', 0),
(2744, 'Monte Alto', '89606', 'Altamira', 'Tamaulipas', 0),
(2745, 'Lomas de Valle Verde', '89606', 'Altamira', 'Tamaulipas', 0),
(2746, 'Lomas de Miralta', '89606', 'Altamira', 'Tamaulipas', 0),
(2747, 'Lomas de Rosales', '89606', 'Altamira', 'Tamaulipas', 0),
(2748, 'Las Brisas', '89606', 'Altamira', 'Tamaulipas', 0),
(2749, 'Los Arados', '89606', 'Altamira', 'Tamaulipas', 0),
(2750, 'Valle de las Flores', '89606', 'Altamira', 'Tamaulipas', 0),
(2751, 'Loma Alta', '89606', 'Altamira', 'Tamaulipas', 0),
(2752, 'Eugenio Hernández Flores', '89606', 'Altamira', 'Tamaulipas', 0),
(2753, 'Nuevo Lomas Del Real', '89606', 'Altamira', 'Tamaulipas', 0),
(2754, 'Colinas de Champayán', '89606', 'Altamira', 'Tamaulipas', 0),
(2755, 'Lomas Campestre', '89606', 'Altamira', 'Tamaulipas', 0),
(2756, 'Monte Alto Sipobladur', '89606', 'Altamira', 'Tamaulipas', 0),
(2757, 'Alejandro Briones', '89606', 'Altamira', 'Tamaulipas', 0),
(2758, 'La Morita', '89606', 'Altamira', 'Tamaulipas', 0),
(2759, 'Lomas de Altamira', '89606', 'Altamira', 'Tamaulipas', 0),
(2760, 'Lomas de Monte Alto', '89606', 'Altamira', 'Tamaulipas', 0),
(2761, 'Juan Genaro de la Portilla', '89606', 'Altamira', 'Tamaulipas', 0),
(2762, 'Las Flores', '89606', 'Altamira', 'Tamaulipas', 0),
(2763, 'La Azteca', '89606', 'Altamira', 'Tamaulipas', 0),
(2764, 'Los Encinos', '89606', 'Altamira', 'Tamaulipas', 0),
(2765, 'Los Encinos Residencial', '89606', 'Altamira', 'Tamaulipas', 0),
(2766, 'FOVISSSTE', '89607', 'Altamira', 'Tamaulipas', 0),
(2767, 'Privada Santiago', '89607', 'Altamira', 'Tamaulipas', 0),
(2768, 'Las Marismas', '89607', 'Altamira', 'Tamaulipas', 0),
(2769, 'Revolución Verde', '89607', 'Altamira', 'Tamaulipas', 0),
(2770, 'Tercer Milenium', '89607', 'Altamira', 'Tamaulipas', 0),
(2771, 'La Florida', '89607', 'Altamira', 'Tamaulipas', 0),
(2772, 'Altamira II', '89607', 'Altamira', 'Tamaulipas', 0),
(2773, 'Altamira', '89607', 'Altamira', 'Tamaulipas', 0),
(2774, 'Santa Ana', '89607', 'Altamira', 'Tamaulipas', 0),
(2775, 'Laguna Florida', '89607', 'Altamira', 'Tamaulipas', 0),
(2776, 'Jardines de Altamira', '89607', 'Altamira', 'Tamaulipas', 0),
(2777, 'Los Naranjos', '89607', 'Altamira', 'Tamaulipas', 0),
(2778, 'Los Sábalos', '89607', 'Altamira', 'Tamaulipas', 0),
(2779, 'El Campanario', '89607', 'Altamira', 'Tamaulipas', 0),
(2780, 'Santa Anita', '89607', 'Altamira', 'Tamaulipas', 0),
(2781, 'Villas de Champayan', '89607', 'Altamira', 'Tamaulipas', 0),
(2782, 'Jardines de Champayán', '89607', 'Altamira', 'Tamaulipas', 0),
(2783, 'Pescadores 2', '89607', 'Altamira', 'Tamaulipas', 0),
(2784, 'Puerto Escondido', '89607', 'Altamira', 'Tamaulipas', 0),
(2785, 'Enrique Cárdenas Centro', '89607', 'Altamira', 'Tamaulipas', 0),
(2786, 'Las Grullas', '89607', 'Altamira', 'Tamaulipas', 0),
(2787, 'Pescadores', '89607', 'Altamira', 'Tamaulipas', 0),
(2788, 'Villas de Champayan 2', '89607', 'Altamira', 'Tamaulipas', 0),
(2789, 'Alameda', '89607', 'Altamira', 'Tamaulipas', 0),
(2790, 'INFONAVIT Fidel Velázquez', '89607', 'Altamira', 'Tamaulipas', 0),
(2791, 'Los Almendros', '89607', 'Altamira', 'Tamaulipas', 0),
(2792, 'Ixtapa', '89607', 'Altamira', 'Tamaulipas', 0),
(2793, 'Jardín', '89610', 'Altamira', 'Tamaulipas', 0),
(2794, 'Villa Cuauhtémoc', '89610', 'Altamira', 'Tamaulipas', 0),
(2795, 'Magisterial', '89610', 'Altamira', 'Tamaulipas', 0),
(2796, 'Esperanza', '89610', 'Altamira', 'Tamaulipas', 0),
(2797, 'Santa Gertrudis', '89613', 'Altamira', 'Tamaulipas', 0),
(2798, 'Graneros del Sur (Cuatrocientos Pueblos)', '89614', 'Altamira', 'Tamaulipas', 0),
(2799, 'San Antonio', '89614', 'Altamira', 'Tamaulipas', 0),
(2800, 'José María Luis Mora (Las Margaritas)', '89615', 'Altamira', 'Tamaulipas', 0),
(2801, 'Esteros', '89620', 'Altamira', 'Tamaulipas', 0),
(2802, 'Providencia y Naranjos', '89625', 'Altamira', 'Tamaulipas', 0),
(2803, 'Lomas del Real', '89630', 'Altamira', 'Tamaulipas', 0),
(2804, 'Aquiles Serdán (El Barranco)', '89632', 'Altamira', 'Tamaulipas', 0),
(2805, 'Ampliación el Arenal', '89633', 'Altamira', 'Tamaulipas', 0),
(2806, 'Agua de Castilla', '89635', 'Altamira', 'Tamaulipas', 0),
(2807, 'Nuevo Cereso Regional de Altamira', '89636', 'Altamira', 'Tamaulipas', 0),
(2808, 'Miguel Hidalgo', '89636', 'Altamira', 'Tamaulipas', 0),
(2809, 'Benito Juárez', '89636', 'Altamira', 'Tamaulipas', 0),
(2810, 'Cervantes', '89640', 'Altamira', 'Tamaulipas', 0),
(2811, 'Maclovio Herrera (Miradores)', '89641', 'Altamira', 'Tamaulipas', 0),
(2812, 'Río Tamiahua', '89642', 'Altamira', 'Tamaulipas', 0),
(2813, 'Santa Inés (Kilómetro 40)', '89642', 'Altamira', 'Tamaulipas', 0),
(2814, 'Mata del Abra', '89643', 'Altamira', 'Tamaulipas', 0),
(2815, 'El Fuerte', '89644', 'Altamira', 'Tamaulipas', 0),
(2816, 'Tres de Mayo (Mata Negra)', '89645', 'Altamira', 'Tamaulipas', 0),
(2817, 'La Colonia (Estación Colonias)', '89650', 'Altamira', 'Tamaulipas', 0),
(2818, 'Francisco I. Madero', '89670', 'Aldama', 'Tamaulipas', 0),
(2819, 'Matamoros', '89670', 'Aldama', 'Tamaulipas', 0),
(2820, 'Río Verde', '89670', 'Aldama', 'Tamaulipas', 0),
(2821, 'Mariano Matamoros', '89670', 'Aldama', 'Tamaulipas', 0),
(2822, 'La Azufrosa (El Higuerón)', '89670', 'Aldama', 'Tamaulipas', 0),
(2823, 'Constitución', '89670', 'Aldama', 'Tamaulipas', 0),
(2824, 'Los Pinos', '89670', 'Aldama', 'Tamaulipas', 0),
(2825, 'Del Bosque', '89670', 'Aldama', 'Tamaulipas', 0),
(2826, 'Luis Caballero', '89670', 'Aldama', 'Tamaulipas', 0),
(2827, 'Santa Martha', '89670', 'Aldama', 'Tamaulipas', 0),
(2828, 'Arboledas', '89670', 'Aldama', 'Tamaulipas', 0),
(2829, 'Aldama', '89670', 'Aldama', 'Tamaulipas', 0),
(2830, 'Nuevo Tamaulipas', '89670', 'Aldama', 'Tamaulipas', 0),
(2831, 'Brownsville', '89670', 'Aldama', 'Tamaulipas', 0),
(2832, 'Revolución Verde', '89670', 'Aldama', 'Tamaulipas', 0),
(2833, 'Morón', '89672', 'Aldama', 'Tamaulipas', 0),
(2834, 'Las Flores', '89672', 'Aldama', 'Tamaulipas', 0),
(2835, 'Higinio Tanguma', '89673', 'Aldama', 'Tamaulipas', 0),
(2836, 'El Carrizal (Carrera Torres)', '89673', 'Aldama', 'Tamaulipas', 0),
(2837, 'El Carrizal Segundo', '89673', 'Aldama', 'Tamaulipas', 0),
(2838, 'Revolución', '89674', 'Aldama', 'Tamaulipas', 0),
(2839, 'Rancho de Piedra', '89674', 'Aldama', 'Tamaulipas', 0),
(2840, 'Santa María', '89675', 'Aldama', 'Tamaulipas', 0),
(2841, 'El Real Viejo', '89675', 'Aldama', 'Tamaulipas', 0),
(2842, 'El Pichijumo', '89676', 'Aldama', 'Tamaulipas', 0),
(2843, 'Las Yucas', '89677', 'Aldama', 'Tamaulipas', 0),
(2844, 'La Cabecera', '89677', 'Aldama', 'Tamaulipas', 0),
(2845, 'Nuevo Progreso (La Gaviota)', '89678', 'Aldama', 'Tamaulipas', 0),
(2846, 'El Vidal', '89679', 'Aldama', 'Tamaulipas', 0),
(2847, 'Las Alazanas', '89679', 'Aldama', 'Tamaulipas', 0),
(2848, 'Santa Fe', '89700', 'González', 'Tamaulipas', 0),
(2849, 'Rosillo', '89703', 'González', 'Tamaulipas', 0),
(2850, 'El Progreso', '89704', 'González', 'Tamaulipas', 0),
(2851, 'Guadalupe Victoria', '89705', 'González', 'Tamaulipas', 0),
(2852, 'González', '89706', 'González', 'Tamaulipas', 0),
(2853, 'Nueva Esperanza', '89706', 'González', 'Tamaulipas', 0),
(2854, 'Atizapán de Zaragoza', '89707', 'González', 'Tamaulipas', 0),
(2855, 'Villa González Centro', '89710', 'González', 'Tamaulipas', 0),
(2856, 'Nuevo Amanecer', '89712', 'González', 'Tamaulipas', 0),
(2857, 'Praxedis Balboa', '89712', 'González', 'Tamaulipas', 0),
(2858, 'Jardín', '89712', 'González', 'Tamaulipas', 0),
(2859, 'Dos Amigos', '89713', 'González', 'Tamaulipas', 0),
(2860, 'Sector Oriente', '89713', 'González', 'Tamaulipas', 0),
(2861, 'Industrial', '89715', 'González', 'Tamaulipas', 0),
(2862, 'Integración Familiar', '89715', 'González', 'Tamaulipas', 0),
(2863, 'El Huerto', '89715', 'González', 'Tamaulipas', 0),
(2864, 'César López de Lara', '89716', 'González', 'Tamaulipas', 0),
(2865, 'Magiscatzin', '89720', 'González', 'Tamaulipas', 0),
(2866, 'Aureliano Caballero', '89723', 'González', 'Tamaulipas', 0),
(2867, 'Venustiano Carranza Uno', '89725', 'González', 'Tamaulipas', 0),
(2868, 'San Pedro', '89725', 'González', 'Tamaulipas', 0),
(2869, 'Venustiano Carranza Dos', '89727', 'González', 'Tamaulipas', 0),
(2870, 'Fortín Agrario (Estación Calles)', '89729', 'González', 'Tamaulipas', 0),
(2871, 'Estación Manuel Centro', '89730', 'González', 'Tamaulipas', 0),
(2872, 'Aviación', '89731', 'González', 'Tamaulipas', 0),
(2873, 'Laguna', '89731', 'González', 'Tamaulipas', 0),
(2874, 'Tamaulipas', '89731', 'González', 'Tamaulipas', 0),
(2875, 'Piloto', '89732', 'González', 'Tamaulipas', 0),
(2876, 'Centro Comercial', '89732', 'González', 'Tamaulipas', 0),
(2877, 'Jardín', '89732', 'González', 'Tamaulipas', 0),
(2878, 'Libertad', '89732', 'González', 'Tamaulipas', 0),
(2879, 'Buenos Aires', '89734', 'González', 'Tamaulipas', 0),
(2880, 'Primavera', '89734', 'González', 'Tamaulipas', 0),
(2881, 'San Luisito', '89734', 'González', 'Tamaulipas', 0),
(2882, 'Unidad Deportiva', '89734', 'González', 'Tamaulipas', 0),
(2883, 'Progreso', '89734', 'González', 'Tamaulipas', 0),
(2884, 'La Reforma', '89735', 'González', 'Tamaulipas', 0),
(2885, 'Emiliano Zapata', '89736', 'González', 'Tamaulipas', 0),
(2886, 'Campo Verde', '89740', 'González', 'Tamaulipas', 0),
(2887, 'Graciano Sánchez', '89740', 'González', 'Tamaulipas', 0),
(2888, 'Campo Nuevo', '89744', 'González', 'Tamaulipas', 0),
(2889, 'Adolfo Ruiz Cortines', '89744', 'González', 'Tamaulipas', 0),
(2890, 'López Rayón', '89746', 'González', 'Tamaulipas', 0),
(2891, 'San Antonio Rayón', '89746', 'González', 'Tamaulipas', 0),
(2892, 'El Azúcar', '89750', 'Xicoténcatl', 'Tamaulipas', 0),
(2893, 'Melchor Ocampo', '89750', 'Xicoténcatl', 'Tamaulipas', 0),
(2894, 'Doctor Norberto Treviño Zapata', '89750', 'Xicoténcatl', 'Tamaulipas', 0),
(2895, 'Mártires de Río Blanco (La Reforma)', '89751', 'Xicoténcatl', 'Tamaulipas', 0),
(2896, 'Alianza Agraria', '89752', 'Xicoténcatl', 'Tamaulipas', 0),
(2897, 'Águilas de La Victoria', '89753', 'Xicoténcatl', 'Tamaulipas', 0),
(2898, 'Lucio Blanco', '89753', 'Xicoténcatl', 'Tamaulipas', 0),
(2899, 'Triunfo Del Porvenir', '89753', 'Xicoténcatl', 'Tamaulipas', 0),
(2900, 'Miguel Alemán', '89753', 'Xicoténcatl', 'Tamaulipas', 0),
(2901, 'Xicotencatl Centro', '89755', 'Xicoténcatl', 'Tamaulipas', 0),
(2902, 'Lindavista', '89756', 'Xicoténcatl', 'Tamaulipas', 0),
(2903, 'Progreso', '89757', 'Xicoténcatl', 'Tamaulipas', 0),
(2904, 'Margarita C de S', '89757', 'Xicoténcatl', 'Tamaulipas', 0),
(2905, 'El Tres', '89757', 'Xicoténcatl', 'Tamaulipas', 0),
(2906, 'José María Martínez', '89757', 'Xicoténcatl', 'Tamaulipas', 0),
(2907, 'Oriente', '89757', 'Xicoténcatl', 'Tamaulipas', 0),
(2908, 'Héctor Sáenz Muñoz', '89757', 'Xicoténcatl', 'Tamaulipas', 0),
(2909, 'Ferrocarril', '89758', 'Xicoténcatl', 'Tamaulipas', 0),
(2910, 'Primero de Mayo', '89758', 'Xicoténcatl', 'Tamaulipas', 0),
(2911, 'Cohol', '89758', 'Xicoténcatl', 'Tamaulipas', 0),
(2912, 'Industrial', '89758', 'Xicoténcatl', 'Tamaulipas', 0),
(2913, 'Presidencial', '89758', 'Xicoténcatl', 'Tamaulipas', 0),
(2914, 'Floresta', '89759', 'Xicoténcatl', 'Tamaulipas', 0),
(2915, 'Flores Magón', '89759', 'Xicoténcatl', 'Tamaulipas', 0),
(2916, 'Independencia', '89759', 'Xicoténcatl', 'Tamaulipas', 0),
(2917, 'Doctor Antonio Amaral González', '89759', 'Xicoténcatl', 'Tamaulipas', 0),
(2918, 'Emiliano Zapata', '89759', 'Xicoténcatl', 'Tamaulipas', 0),
(2919, 'Rosendo G Castro', '89759', 'Xicoténcatl', 'Tamaulipas', 0),
(2920, 'Manuel Cavazos Lerma', '89759', 'Xicoténcatl', 'Tamaulipas', 0),
(2921, 'José de Escandón', '89759', 'Xicoténcatl', 'Tamaulipas', 0),
(2922, 'El Azúcar', '89759', 'Xicoténcatl', 'Tamaulipas', 0),
(2923, 'Sector Poniente', '89759', 'Xicoténcatl', 'Tamaulipas', 0),
(2924, 'Beatriz Anaya', '89759', 'Xicoténcatl', 'Tamaulipas', 0),
(2925, 'Verastegui', '89759', 'Xicoténcatl', 'Tamaulipas', 0),
(2926, 'Las Granjas', '89759', 'Xicoténcatl', 'Tamaulipas', 0),
(2927, 'San Manuel', '89760', 'Xicoténcatl', 'Tamaulipas', 0),
(2928, 'Francisco Villa', '89762', 'Xicoténcatl', 'Tamaulipas', 0),
(2929, 'Felipe Ángeles', '89762', 'Xicoténcatl', 'Tamaulipas', 0),
(2930, 'Moctezuma', '89762', 'Xicoténcatl', 'Tamaulipas', 0),
(2931, 'Brownsville', '89763', 'Xicoténcatl', 'Tamaulipas', 0),
(2932, 'Narciso Mendoza Número Dos', '89763', 'Xicoténcatl', 'Tamaulipas', 0),
(2933, 'Francisco Castellanos', '89764', 'Xicoténcatl', 'Tamaulipas', 0),
(2934, 'Vicente Guerrero', '89767', 'Xicoténcatl', 'Tamaulipas', 0),
(2935, 'Praxedis Balboa (La Poza)', '89767', 'Xicoténcatl', 'Tamaulipas', 0),
(2936, 'El Cedral', '89768', 'Xicoténcatl', 'Tamaulipas', 0),
(2937, 'El Conejo', '89774', 'Xicoténcatl', 'Tamaulipas', 0),
(2938, 'La Presa', '89774', 'Xicoténcatl', 'Tamaulipas', 0),
(2939, 'Benito Juárez', '89774', 'Xicoténcatl', 'Tamaulipas', 0),
(2940, 'Manuel Castaños Valiente (El Setenta)', '89774', 'Xicoténcatl', 'Tamaulipas', 0),
(2941, 'El Azteca', '89778', 'Xicoténcatl', 'Tamaulipas', 0),
(2942, 'Héctor M. Sáenz', '89778', 'Xicoténcatl', 'Tamaulipas', 0),
(2943, 'Gómez Farías', '89780', 'Gómez Farías', 'Tamaulipas', 0),
(2944, 'El Nacimiento', '89783', 'Gómez Farías', 'Tamaulipas', 0),
(2945, 'Ojo de Agua (La Morita)', '89784', 'Gómez Farías', 'Tamaulipas', 0),
(2946, 'El Azteca', '89789', 'Gómez Farías', 'Tamaulipas', 0),
(2947, 'Loma Alta de Gómez Farías', '89790', 'Gómez Farías', 'Tamaulipas', 0),
(2948, '5 de Mayo', '89790', 'Gómez Farías', 'Tamaulipas', 0),
(2949, 'La Misión', '89791', 'Gómez Farías', 'Tamaulipas', 0),
(2950, 'Benito Juárez (La Ribera)', '89791', 'Gómez Farías', 'Tamaulipas', 0),
(2951, 'Guadalupe Victoria', '89791', 'Gómez Farías', 'Tamaulipas', 0),
(2952, 'Alfredo V. Bonfil (El Papalote)', '89792', 'Gómez Farías', 'Tamaulipas', 0),
(2953, 'El Riachuelo (Hipólito Sotelo)', '89792', 'Gómez Farías', 'Tamaulipas', 0),
(2954, 'Américo Villarreal', '89792', 'Gómez Farías', 'Tamaulipas', 0),
(2955, 'Héroes de Chapultepec', '89795', 'Gómez Farías', 'Tamaulipas', 0),
(2956, 'Lázaro Cárdenas Dos', '89796', 'Gómez Farías', 'Tamaulipas', 0),
(2957, 'Plan de Ayala (Ejido)', '89796', 'Gómez Farías', 'Tamaulipas', 0),
(2958, 'Narciso Mendoza (La Ardilla)', '89797', 'Gómez Farías', 'Tamaulipas', 0),
(2959, 'Seiscientos Uno (Poblado Seiscientos Uno)', '89797', 'Gómez Farías', 'Tamaulipas', 0),
(2960, 'Agustín Melgar', '89797', 'Gómez Farías', 'Tamaulipas', 0),
(2961, 'El Esfuerzo Número Uno', '89797', 'Gómez Farías', 'Tamaulipas', 0),
(2962, 'Ciudad Mante Centro', '89800', 'El Mante', 'Tamaulipas', 0),
(2963, 'Morelos', '89810', 'El Mante', 'Tamaulipas', 0),
(2964, 'Enrique Cárdenas González', '89810', 'El Mante', 'Tamaulipas', 0),
(2965, 'Aurora', '89815', 'El Mante', 'Tamaulipas', 0),
(2966, 'Del Músico', '89815', 'El Mante', 'Tamaulipas', 0),
(2967, 'Unidad Nacional', '89816', 'El Mante', 'Tamaulipas', 0),
(2968, 'INFONAVIT Arbustos', '89817', 'El Mante', 'Tamaulipas', 0),
(2969, 'Los Pinos', '89817', 'El Mante', 'Tamaulipas', 0),
(2970, 'FOVISSSTE 1', '89817', 'El Mante', 'Tamaulipas', 0),
(2971, 'FOVISSSTE 2', '89817', 'El Mante', 'Tamaulipas', 0),
(2972, 'INFONAVIT el Bernal', '89818', 'El Mante', 'Tamaulipas', 0),
(2973, 'Faja de Oro', '89818', 'El Mante', 'Tamaulipas', 0),
(2974, 'Cerro del Bernal', '89818', 'El Mante', 'Tamaulipas', 0),
(2975, 'Santa Mónica', '89818', 'El Mante', 'Tamaulipas', 0),
(2976, 'Vicente Guerrero', '89819', 'El Mante', 'Tamaulipas', 0),
(2977, 'Miguel Alemán', '89820', 'El Mante', 'Tamaulipas', 0),
(2978, 'Vivah', '89820', 'El Mante', 'Tamaulipas', 0),
(2979, 'Fomento Nacional', '89820', 'El Mante', 'Tamaulipas', 0),
(2980, 'Andalucía', '89827', 'El Mante', 'Tamaulipas', 0),
(2981, 'El Martillo', '89827', 'El Mante', 'Tamaulipas', 0),
(2982, 'Los Ángeles', '89827', 'El Mante', 'Tamaulipas', 0),
(2983, 'Canoas', '89829', 'El Mante', 'Tamaulipas', 0),
(2984, 'Anáhuac 1', '89830', 'El Mante', 'Tamaulipas', 0),
(2985, 'Moderna', '89830', 'El Mante', 'Tamaulipas', 0),
(2986, 'Ignacio de la Llave', '89837', 'El Mante', 'Tamaulipas', 0),
(2987, 'Revolución Verde', '89838', 'El Mante', 'Tamaulipas', 0),
(2988, 'INFONAVIT Jesús Yurem', '89839', 'El Mante', 'Tamaulipas', 0),
(2989, 'Valle del Mante', '89839', 'El Mante', 'Tamaulipas', 0),
(2990, 'Azucarera', '89840', 'El Mante', 'Tamaulipas', 0),
(2991, 'Las Flores', '89840', 'El Mante', 'Tamaulipas', 0),
(2992, 'Río Mante', '89840', 'El Mante', 'Tamaulipas', 0),
(2993, 'Benito Juárez', '89840', 'El Mante', 'Tamaulipas', 0),
(2994, 'Del Bosque', '89840', 'El Mante', 'Tamaulipas', 0),
(2995, 'Jardín', '89840', 'El Mante', 'Tamaulipas', 0),
(2996, 'Victoria', '89843', 'El Mante', 'Tamaulipas', 0),
(2997, 'San Agustín', '89843', 'El Mante', 'Tamaulipas', 0),
(2998, 'Progreso Social', '89843', 'El Mante', 'Tamaulipas', 0),
(2999, 'Zeferino Terán', '89846', 'El Mante', 'Tamaulipas', 0),
(3000, 'Chapultepec', '89846', 'El Mante', 'Tamaulipas', 0),
(3001, 'Nacional Colectiva', '89847', 'El Mante', 'Tamaulipas', 0),
(3002, 'Las Villas', '89847', 'El Mante', 'Tamaulipas', 0),
(3003, 'Valle de Chapultepec', '89848', 'El Mante', 'Tamaulipas', 0),
(3004, 'Tulipanes', '89848', 'El Mante', 'Tamaulipas', 0),
(3005, 'Mariano Matamoros', '89849', 'El Mante', 'Tamaulipas', 0),
(3006, 'Paseo de las Palmas', '89849', 'El Mante', 'Tamaulipas', 0),
(3007, 'INFONAVIT Linares', '89849', 'El Mante', 'Tamaulipas', 0),
(3008, 'Aeropuerto', '89849', 'El Mante', 'Tamaulipas', 0),
(3009, 'Burócrata', '89849', 'El Mante', 'Tamaulipas', 0),
(3010, 'Popular', '89849', 'El Mante', 'Tamaulipas', 0),
(3011, 'Cuauhtémoc', '89849', 'El Mante', 'Tamaulipas', 0),
(3012, 'Vamos Tamaulipas', '89849', 'El Mante', 'Tamaulipas', 0),
(3013, 'Nuevo Amanecer', '89849', 'El Mante', 'Tamaulipas', 0),
(3014, 'Libertad', '89849', 'El Mante', 'Tamaulipas', 0),
(3015, 'Núñez', '89850', 'El Mante', 'Tamaulipas', 0),
(3016, 'Quintanilla', '89850', 'El Mante', 'Tamaulipas', 0),
(3017, 'Anáhuac 2', '89850', 'El Mante', 'Tamaulipas', 0),
(3018, 'Santa Fe', '89853', 'El Mante', 'Tamaulipas', 0),
(3019, 'Tamaulipas', '89858', 'El Mante', 'Tamaulipas', 0),
(3020, 'Niños Héroes', '89858', 'El Mante', 'Tamaulipas', 0),
(3021, 'INFONAVIT Nicolás Bravo', '89860', 'El Mante', 'Tamaulipas', 0),
(3022, 'Nicolás Bravo', '89860', 'El Mante', 'Tamaulipas', 0),
(3023, 'Las Brisas', '89860', 'El Mante', 'Tamaulipas', 0),
(3024, 'Carlos M del Pino', '89865', 'El Mante', 'Tamaulipas', 0),
(3025, 'Esfuerzo Obrero', '89865', 'El Mante', 'Tamaulipas', 0),
(3026, 'Municipio Libre', '89866', 'El Mante', 'Tamaulipas', 0),
(3027, 'Yucatán', '89867', 'El Mante', 'Tamaulipas', 0),
(3028, 'Unión Burocrática', '89868', 'El Mante', 'Tamaulipas', 0),
(3029, 'Mante', '89869', 'El Mante', 'Tamaulipas', 0),
(3030, 'Las Américas', '89869', 'El Mante', 'Tamaulipas', 0),
(3031, 'Luis Donaldo Colosio', '89870', 'El Mante', 'Tamaulipas', 0),
(3032, 'Nicolás Moreno', '89870', 'El Mante', 'Tamaulipas', 0),
(3033, 'Obrera', '89870', 'El Mante', 'Tamaulipas', 0),
(3034, 'Altavista', '89880', 'El Mante', 'Tamaulipas', 0),
(3035, 'Gerardo Ferrara', '89880', 'El Mante', 'Tamaulipas', 0),
(3036, 'Ladrillera', '89880', 'El Mante', 'Tamaulipas', 0),
(3037, 'Plutarco Elías Calles', '89880', 'El Mante', 'Tamaulipas', 0),
(3038, 'Campesina', '89884', 'El Mante', 'Tamaulipas', 0),
(3039, 'Carolina Yucatán Dos', '89884', 'El Mante', 'Tamaulipas', 0),
(3040, 'El Huastequillo', '89885', 'El Mante', 'Tamaulipas', 0),
(3041, 'Country Club', '89885', 'El Mante', 'Tamaulipas', 0),
(3042, 'Obrera 2', '89885', 'El Mante', 'Tamaulipas', 0),
(3043, 'Unidad y Progreso', '89886', 'El Mante', 'Tamaulipas', 0),
(3044, 'Paraíso', '89886', 'El Mante', 'Tamaulipas', 0),
(3045, 'Campesina Dos', '89887', 'El Mante', 'Tamaulipas', 0),
(3046, 'Sección Agronómica', '89887', 'El Mante', 'Tamaulipas', 0),
(3047, 'Independencia', '89888', 'El Mante', 'Tamaulipas', 0),
(3048, 'Tomás Yarrington Ruvalcaba', '89888', 'El Mante', 'Tamaulipas', 0),
(3049, 'Miller', '89889', 'El Mante', 'Tamaulipas', 0),
(3050, 'Santa Clara', '89890', 'El Mante', 'Tamaulipas', 0),
(3051, 'Aquiles Serdán', '89890', 'El Mante', 'Tamaulipas', 0),
(3052, 'Jalisco', '89893', 'El Mante', 'Tamaulipas', 0),
(3053, 'Del Valle', '89895', 'El Mante', 'Tamaulipas', 0),
(3054, 'Moctezuma', '89895', 'El Mante', 'Tamaulipas', 0),
(3055, 'Parque Industrial', '89895', 'El Mante', 'Tamaulipas', 0),
(3056, 'San Francisco', '89896', 'El Mante', 'Tamaulipas', 0),
(3057, 'Miravalle', '89897', 'El Mante', 'Tamaulipas', 0),
(3058, 'José López Portillo', '89897', 'El Mante', 'Tamaulipas', 0),
(3059, '20 de Septiembre', '89898', 'El Mante', 'Tamaulipas', 0),
(3060, 'Plan de Ayutla', '89898', 'El Mante', 'Tamaulipas', 0),
(3061, 'Campestre', '89899', 'El Mante', 'Tamaulipas', 0),
(3062, 'Ayuntamiento', '89899', 'El Mante', 'Tamaulipas', 0),
(3063, 'Las Palmas', '89899', 'El Mante', 'Tamaulipas', 0),
(3064, 'Quintero', '89899', 'El Mante', 'Tamaulipas', 0),
(3065, 'Jesús García Corona', '89899', 'El Mante', 'Tamaulipas', 0),
(3066, 'Cinco de Mayo', '89910', 'El Mante', 'Tamaulipas', 0),
(3067, 'El Limón', '89910', 'El Mante', 'Tamaulipas', 0),
(3068, 'Benito Juárez', '89910', 'El Mante', 'Tamaulipas', 0),
(3069, 'Veinte de Noviembre', '89910', 'El Mante', 'Tamaulipas', 0),
(3070, 'Tanchipa', '89910', 'El Mante', 'Tamaulipas', 0),
(3071, 'Siete de Noviembre', '89912', 'El Mante', 'Tamaulipas', 0),
(3072, 'Francisco Villa', '89912', 'El Mante', 'Tamaulipas', 0),
(3073, 'Las Palmas', '89913', 'El Mante', 'Tamaulipas', 0),
(3074, 'Las Magdalenas', '89913', 'El Mante', 'Tamaulipas', 0),
(3075, 'San Rafael de los Castro', '89914', 'El Mante', 'Tamaulipas', 0),
(3076, 'Plan de Iguala', '89914', 'El Mante', 'Tamaulipas', 0),
(3077, 'Puerto Rico', '89914', 'El Mante', 'Tamaulipas', 0),
(3078, 'Manuel Ávila Camacho', '89917', 'El Mante', 'Tamaulipas', 0),
(3079, 'Mártires de la Reforma', '89918', 'El Mante', 'Tamaulipas', 0),
(3080, 'Ignacio Allende', '89918', 'El Mante', 'Tamaulipas', 0),
(3081, 'Primero de Mayo', '89918', 'El Mante', 'Tamaulipas', 0),
(3082, 'Bellavista', '89918', 'El Mante', 'Tamaulipas', 0),
(3083, 'Francisco I. Madero', '89920', 'El Mante', 'Tamaulipas', 0),
(3084, 'La Mora', '89920', 'El Mante', 'Tamaulipas', 0),
(3085, 'Miguel Hidalgo', '89922', 'El Mante', 'Tamaulipas', 0),
(3086, 'La Esperanza', '89923', 'El Mante', 'Tamaulipas', 0),
(3087, 'Dieciocho de Marzo', '89923', 'El Mante', 'Tamaulipas', 0),
(3088, 'Álvaro Obregón (La Trinidad)', '89925', 'El Mante', 'Tamaulipas', 0),
(3089, 'Úrsulo Galván', '89925', 'El Mante', 'Tamaulipas', 0),
(3090, 'Dieciséis de Septiembre (El Nueve)', '89925', 'El Mante', 'Tamaulipas', 0),
(3091, 'Faja de Oro', '89925', 'El Mante', 'Tamaulipas', 0),
(3092, 'Dieciocho de Febrero', '89925', 'El Mante', 'Tamaulipas', 0),
(3093, 'Plan de Ayala', '89928', 'El Mante', 'Tamaulipas', 0),
(3094, 'José María Morelos', '89929', 'El Mante', 'Tamaulipas', 0),
(3095, 'Emiliano Zapata', '89929', 'El Mante', 'Tamaulipas', 0),
(3096, 'Quintero', '89930', 'El Mante', 'Tamaulipas', 0),
(3097, 'El Abra (Ojo de Agua)', '89939', 'El Mante', 'Tamaulipas', 0),
(3098, 'Felipe Ángeles', '89940', 'El Mante', 'Tamaulipas', 0),
(3099, 'Celaya', '89940', 'El Mante', 'Tamaulipas', 0),
(3100, 'Triunfo Número Dos', '89940', 'El Mante', 'Tamaulipas', 0),
(3101, 'La Nueva Unión', '89940', 'El Mante', 'Tamaulipas', 0),
(3102, 'Las Ánimas', '89940', 'El Mante', 'Tamaulipas', 0),
(3103, 'El Refugio', '89940', 'El Mante', 'Tamaulipas', 0),
(3104, 'General Jesús González Ortega', '89942', 'El Mante', 'Tamaulipas', 0),
(3105, 'El Triunfo Número Uno', '89942', 'El Mante', 'Tamaulipas', 0),
(3106, 'Los Dorados', '89942', 'El Mante', 'Tamaulipas', 0),
(3107, 'Lázaro Cárdenas Dos', '89942', 'El Mante', 'Tamaulipas', 0),
(3108, 'Magdaleno Aguilar', '89943', 'El Mante', 'Tamaulipas', 0),
(3109, 'Tantoán', '89943', 'El Mante', 'Tamaulipas', 0),
(3110, 'La Reforma', '89945', 'El Mante', 'Tamaulipas', 0),
(3111, 'Santa Clara Número Dos', '89945', 'El Mante', 'Tamaulipas', 0),
(3112, 'División del Norte', '89945', 'El Mante', 'Tamaulipas', 0),
(3113, 'El Olímpico', '89945', 'El Mante', 'Tamaulipas', 0),
(3114, 'Los Aztecas', '89950', 'El Mante', 'Tamaulipas', 0),
(3115, 'Tantoyuquita', '89950', 'El Mante', 'Tamaulipas', 0),
(3116, 'Camotero Número Dos', '89953', 'El Mante', 'Tamaulipas', 0),
(3117, 'Tierra y Libertad', '89953', 'El Mante', 'Tamaulipas', 0),
(3118, 'Nueva Apolonia', '89955', 'El Mante', 'Tamaulipas', 0),
(3119, 'Nuevo Tantoán', '89956', 'El Mante', 'Tamaulipas', 0),
(3120, 'Antiguo Morelos', '89960', 'Antiguo Morelos', 'Tamaulipas', 0),
(3121, 'Morelos (La Loma)', '89960', 'Antiguo Morelos', 'Tamaulipas', 0),
(3122, 'San Francisco', '89960', 'Antiguo Morelos', 'Tamaulipas', 0),
(3123, 'Unidad Deportiva', '89960', 'Antiguo Morelos', 'Tamaulipas', 0),
(3124, 'El Salvador', '89963', 'Antiguo Morelos', 'Tamaulipas', 0),
(3125, 'Las Flores', '89963', 'Antiguo Morelos', 'Tamaulipas', 0),
(3126, 'San José', '89963', 'Antiguo Morelos', 'Tamaulipas', 0),
(3127, 'Praxedis Guerrero (El Pachón)', '89965', 'Antiguo Morelos', 'Tamaulipas', 0),
(3128, 'Pueblo Viejo', '89966', 'Antiguo Morelos', 'Tamaulipas', 0),
(3129, 'México Libre', '89967', 'Antiguo Morelos', 'Tamaulipas', 0),
(3130, 'El Sauz', '89968', 'Antiguo Morelos', 'Tamaulipas', 0),
(3131, 'Fortines y Emiliano Zapata (Fortines)', '89969', 'Antiguo Morelos', 'Tamaulipas', 0),
(3132, 'Santa Cruz del Toro', '89970', 'Nuevo Morelos', 'Tamaulipas', 0),
(3133, 'Vivamos Mejor', '89970', 'Nuevo Morelos', 'Tamaulipas', 0),
(3134, 'Nuevo Morelos', '89970', 'Nuevo Morelos', 'Tamaulipas', 0),
(3135, 'Del Sol', '89970', 'Nuevo Morelos', 'Tamaulipas', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catConfiguraciones`
--

CREATE TABLE `catConfiguraciones` (
  `idConfiguracion` int(11) NOT NULL,
  `Optimo` double(8,2) NOT NULL DEFAULT '90.00',
  `Tolerable` double(8,2) NOT NULL DEFAULT '80.00',
  `Periodo` varchar(4) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `catConfiguraciones`
--

INSERT INTO `catConfiguraciones` (`idConfiguracion`, `Optimo`, `Tolerable`, `Periodo`, `Status`) VALUES
(1, 90.00, 80.00, '2016', 0),
(2, 95.00, 80.00, '2015', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catEntidades`
--

CREATE TABLE `catEntidades` (
  `idEntidad` int(11) NOT NULL,
  `idTEntidad` int(11) NOT NULL,
  `Entidad` varchar(250) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `catEntidades`
--

INSERT INTO `catEntidades` (`idEntidad`, `idTEntidad`, `Entidad`, `Status`) VALUES
(1, 1, 'Gerencia Divisional', 0),
(2, 2, 'Direccion Divisional', 0),
(3, 4, 'prueba', 1),
(4, 3, 'Control de Calidad', 0),
(5, 4, 'Supervision Local', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catEstOpe`
--

CREATE TABLE `catEstOpe` (
  `idEstOpe` int(11) NOT NULL,
  `idObjEst` int(11) NOT NULL,
  `idObjOpe` int(11) NOT NULL,
  `Nomenclatura` varchar(250) COLLATE utf8_bin NOT NULL,
  `EstOpe` varchar(250) COLLATE utf8_bin NOT NULL,
  `Periodo` varchar(4) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `catEstOpe`
--

INSERT INTO `catEstOpe` (`idEstOpe`, `idObjEst`, `idObjOpe`, `Nomenclatura`, `EstOpe`, `Periodo`, `Status`) VALUES
(1, 1, 1, '1.1.1', 'AtenciÃ³n a vias de comunicaciÃ³n terrestres prioritarias', '2016', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catIndicadores`
--

CREATE TABLE `catIndicadores` (
  `idIndicador` int(11) NOT NULL,
  `Nomenclatura` varchar(250) COLLATE utf8_bin NOT NULL,
  `Indicador` varchar(250) COLLATE utf8_bin NOT NULL,
  `Percentil` float(4,2) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `catIndicadores`
--

INSERT INTO `catIndicadores` (`idIndicador`, `Nomenclatura`, `Indicador`, `Percentil`, `Status`) VALUES
(1, 'NC', 'No Conformidades', 0.05, 0),
(2, 'MP', 'Mantenimiento Programado', 0.30, 0),
(3, 'CFs', 'Creditos Firmes', 0.20, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catNiveles`
--

CREATE TABLE `catNiveles` (
  `idNivel` int(11) NOT NULL,
  `Nivel` varchar(250) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `catNiveles`
--

INSERT INTO `catNiveles` (`idNivel`, `Nivel`, `Status`) VALUES
(1, 'Administrador', 0),
(2, 'Operador', 0),
(3, 'Lector', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catObjEst`
--

CREATE TABLE `catObjEst` (
  `idObjEst` int(11) NOT NULL,
  `Nomenclatura` varchar(250) COLLATE utf8_bin NOT NULL,
  `ObjEst` varchar(250) COLLATE utf8_bin NOT NULL,
  `Periodo` varchar(4) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `catObjEst`
--

INSERT INTO `catObjEst` (`idObjEst`, `Nomenclatura`, `ObjEst`, `Periodo`, `Status`) VALUES
(1, '1', 'Conectividad terrestre de calidad', '2016', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catObjOpe`
--

CREATE TABLE `catObjOpe` (
  `idObjOpe` int(11) NOT NULL,
  `idObjEst` int(11) NOT NULL,
  `Nomenclatura` varchar(250) COLLATE utf8_bin NOT NULL,
  `ObjOpe` varchar(250) COLLATE utf8_bin NOT NULL,
  `Periodo` varchar(4) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `catObjOpe`
--

INSERT INTO `catObjOpe` (`idObjOpe`, `idObjEst`, `Nomenclatura`, `ObjOpe`, `Periodo`, `Status`) VALUES
(1, 1, '1.1', 'Mejora de caminos', '2016', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catProcesos`
--

CREATE TABLE `catProcesos` (
  `idProceso` int(11) NOT NULL,
  `Proceso` varchar(250) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `catProcesos`
--

INSERT INTO `catProcesos` (`idProceso`, `Proceso`, `Status`) VALUES
(1, 'Auditoria Interna', 0),
(2, 'Contratos Terciarizados', 0),
(3, 'Cartera de Pymes', 0),
(4, 'Mantenimiento a Parque Vehicular', 0),
(5, 'SGC', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catPuestos`
--

CREATE TABLE `catPuestos` (
  `idPuesto` int(11) NOT NULL,
  `Puesto` varchar(250) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `catPuestos`
--

INSERT INTO `catPuestos` (`idPuesto`, `Puesto`, `Status`) VALUES
(1, 'Asistente Ejecutivo', 0),
(2, 'Chofer', 0),
(3, 'Analista', 0),
(4, 'Gerente', 0),
(5, 'Secretaria', 0),
(6, 'Profesionista A', 0),
(7, 'Director', 0),
(8, 'Jefe de Departamento', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catTEntidades`
--

CREATE TABLE `catTEntidades` (
  `idTEntidad` int(11) NOT NULL,
  `TEntidad` varchar(250) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `catTEntidades`
--

INSERT INTO `catTEntidades` (`idTEntidad`, `TEntidad`, `Status`) VALUES
(1, 'Gerencia', 0),
(2, 'Direccion', 0),
(3, 'Departamento', 0),
(4, 'Area', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catUnidades`
--

CREATE TABLE `catUnidades` (
  `idUnidad` int(11) NOT NULL,
  `Nomenclatura` varchar(250) COLLATE utf8_bin NOT NULL,
  `Unidad` varchar(250) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `catUnidades`
--

INSERT INTO `catUnidades` (`idUnidad`, `Nomenclatura`, `Unidad`, `Status`) VALUES
(1, 'Kg', 'Kilogramo', 0),
(2, 'm', 'Metro', 1),
(3, 'Km2', 'Kilometros cuadrados', 0),
(4, 'm', 'Metros', 0),
(5, 'Hr', 'Hora', 0),
(6, 'l', 'Litros', 0),
(7, 'gal', 'Galones', 0),
(8, 'MXN', 'Peso', 0),
(9, 'USD', 'Dolar', 0),
(10, 'Doc', 'Documento', 0),
(11, 'Vnt', 'Venta', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catUsuarios`
--

CREATE TABLE `catUsuarios` (
  `idUsuario` int(11) NOT NULL,
  `idNivel` int(11) NOT NULL,
  `Usuario` varchar(250) COLLATE utf8_bin NOT NULL,
  `Clave` varchar(250) COLLATE utf8_bin NOT NULL,
  `Correo` varchar(250) COLLATE utf8_bin NOT NULL,
  `Pregunta` varchar(250) COLLATE utf8_bin NOT NULL,
  `Respuesta` varchar(250) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `catUsuarios`
--

INSERT INTO `catUsuarios` (`idUsuario`, `idNivel`, `Usuario`, `Clave`, `Correo`, `Pregunta`, `Respuesta`, `Status`) VALUES
(1, 1, 'root', '1OXW3t7Q', 'antonio.peyrano@live.com.mx', 'Su primera mascota', 'El motis', 0),
(2, 2, 'Usuario_1', 'yOLq0+HL3tGg', 'noname@nomail.com', 'Seleccione', '', 0),
(3, 2, 'Usuario_3', 'yOLq0+HL3tGi', 'noname@nomail.com', 'Su comida favorita', 'Pizza', 0),
(4, 3, 'Usuario_4', '49DY29XL0tPT4uE=', 'noname@nomail.com', 'Su pasatiempo favorito', 'Correr', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catVehiculos`
--

CREATE TABLE `catVehiculos` (
  `idVehiculo` int(11) NOT NULL,
  `idEntidad` int(11) NOT NULL,
  `NumEconomico` varchar(50) COLLATE utf8_bin NOT NULL,
  `NumPlaca` varchar(50) COLLATE utf8_bin NOT NULL,
  `Color` varchar(70) COLLATE utf8_bin NOT NULL,
  `Marca` varchar(70) COLLATE utf8_bin NOT NULL,
  `Modelo` varchar(70) COLLATE utf8_bin NOT NULL,
  `TMotor` varchar(70) COLLATE utf8_bin NOT NULL,
  `Periodo` varchar(4) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `catVehiculos`
--

INSERT INTO `catVehiculos` (`idVehiculo`, `idEntidad`, `NumEconomico`, `NumPlaca`, `Color`, `Marca`, `Modelo`, `TMotor`, `Periodo`, `Status`) VALUES
(1, 1, 'PTF5689A', 'XAV-89-77', 'Blanco', 'Chevrolet', 'Chevy', 'Gasolina', '2006', 0),
(2, 5, 'PTF5689B', 'XET-32-WY', 'Azul', 'Dodge', 'Jeep Liberty', 'Gasolina', '2016', 0),
(3, 2, 'PTF5600C', 'UBC-32-XA', 'Rojo', 'Chevrolet', 'Neon', 'Gasolina', '2009', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opActividades`
--

CREATE TABLE `opActividades` (
  `idActividad` int(11) NOT NULL,
  `idPrograma` int(11) NOT NULL,
  `idUnidad` int(11) NOT NULL,
  `Actividad` varchar(250) COLLATE utf8_bin NOT NULL,
  `Monto` double(18,2) NOT NULL DEFAULT '0.00',
  `Periodo` varchar(4) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opActividades`
--

INSERT INTO `opActividades` (`idActividad`, `idPrograma`, `idUnidad`, `Actividad`, `Monto`, `Periodo`, `Status`) VALUES
(1, 1, 10, 'Tramitacion de linea de credito', 20000.00, '2016', 0),
(2, 1, 10, 'Cobro de pagares en firme', 20000.00, '2016', 0),
(3, 1, 10, 'Pagares vencidos', 9000.00, '2016', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opCedulas`
--

CREATE TABLE `opCedulas` (
  `idCedula` int(11) NOT NULL,
  `idEntidad` int(11) NOT NULL,
  `Folio` varchar(50) COLLATE utf8_bin NOT NULL,
  `Fecha` varchar(50) COLLATE utf8_bin NOT NULL,
  `Horizonte` float(4,2) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opCedulas`
--

INSERT INTO `opCedulas` (`idCedula`, `idEntidad`, `Folio`, `Fecha`, `Horizonte`, `Status`) VALUES
(1, 1, 'CEF-15122016-051720-1', '15/12/2016 05:17:20pm', 3.00, 0),
(2, -2, 'CEF-15122016-054454-175', '15/12/2016 05:44:54pm', 2.00, 0),
(3, 2, 'CEF-15122016-054536-221', '15/12/2016 05:45:36pm', 5.00, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opClientes`
--

CREATE TABLE `opClientes` (
  `idCliente` int(11) NOT NULL,
  `idColonia` int(11) NOT NULL,
  `Paterno` varchar(250) COLLATE utf8_bin NOT NULL,
  `Materno` varchar(250) COLLATE utf8_bin NOT NULL,
  `Nombre` varchar(250) COLLATE utf8_bin NOT NULL,
  `Calle` varchar(250) COLLATE utf8_bin NOT NULL,
  `Nint` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `Next` varchar(250) COLLATE utf8_bin NOT NULL,
  `RFC` varchar(250) COLLATE utf8_bin NOT NULL,
  `CURP` varchar(250) COLLATE utf8_bin NOT NULL,
  `TelFijo` varchar(250) COLLATE utf8_bin NOT NULL,
  `TelCel` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opClientes`
--

INSERT INTO `opClientes` (`idCliente`, `idColonia`, `Paterno`, `Materno`, `Nombre`, `Calle`, `Nint`, `Next`, `RFC`, `CURP`, `TelFijo`, `TelCel`, `Status`) VALUES
(1, 3107, 'Saldierna', 'Ortega', 'Ruben', 'Rosalio Bustamante', '', '154', 'PESA480824000', 'PESA480824HTSYNS09', '2152777', '8332907000', 0),
(2, 1, 'Peyrano', 'Luna', 'Jesus Antonio', 'Melchor Ocampo Norte', '6', '121', 'PELJ830819FP1', 'PELJ830819HTSYNS09', '2110721', '8338510726', 1),
(3, 9, 'Ruvalcaba', 'Mazo', 'Genoveva', 'Carrera Torres', '', '333', 'XXA000000', 'XXTF00000000', '1453072', '8315679980', 0),
(4, 1, '', '', '', '', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opEficAct`
--

CREATE TABLE `opEficAct` (
  `idEficAct` int(11) NOT NULL,
  `idActividad` int(11) NOT NULL,
  `Enero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Febrero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Marzo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Abril` float(18,4) NOT NULL DEFAULT '0.0000',
  `Mayo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Junio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Julio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Agosto` float(18,4) NOT NULL DEFAULT '0.0000',
  `Septiembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Octubre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Noviembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Diciembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Periodo` varchar(4) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opEficAct`
--

INSERT INTO `opEficAct` (`idEficAct`, `idActividad`, `Enero`, `Febrero`, `Marzo`, `Abril`, `Mayo`, `Junio`, `Julio`, `Agosto`, `Septiembre`, `Octubre`, `Noviembre`, `Diciembre`, `Periodo`, `Status`) VALUES
(1, 1, 83.3333, 100.0000, 150.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, '2016', 0),
(2, 2, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '2016', 0),
(3, 3, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '2016', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opEficEst`
--

CREATE TABLE `opEficEst` (
  `idEficEst` int(11) NOT NULL,
  `idEstOpe` int(11) NOT NULL,
  `Enero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Febrero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Marzo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Abril` float(18,4) NOT NULL DEFAULT '0.0000',
  `Mayo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Junio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Julio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Agosto` float(18,4) NOT NULL DEFAULT '0.0000',
  `Septiembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Octubre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Noviembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Diciembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Periodo` varchar(4) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opEficEst`
--

INSERT INTO `opEficEst` (`idEficEst`, `idEstOpe`, `Enero`, `Febrero`, `Marzo`, `Abril`, `Mayo`, `Junio`, `Julio`, `Agosto`, `Septiembre`, `Octubre`, `Noviembre`, `Diciembre`, `Periodo`, `Status`) VALUES
(1, 1, 45.2539, 37.4911, 82.8677, 8.4044, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '2016', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opEficGas`
--

CREATE TABLE `opEficGas` (
  `idEficGas` int(11) NOT NULL,
  `idEntidad` int(11) NOT NULL,
  `Enero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Febrero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Marzo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Abril` float(18,4) NOT NULL DEFAULT '0.0000',
  `Mayo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Junio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Julio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Agosto` float(18,4) NOT NULL DEFAULT '0.0000',
  `Septiembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Octubre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Noviembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Diciembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Periodo` varchar(4) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opEficGas`
--

INSERT INTO `opEficGas` (`idEficGas`, `idEntidad`, `Enero`, `Febrero`, `Marzo`, `Abril`, `Mayo`, `Junio`, `Julio`, `Agosto`, `Septiembre`, `Octubre`, `Noviembre`, `Diciembre`, `Periodo`, `Status`) VALUES
(1, 1, 1125.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '2016', 0),
(2, 4, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '2016', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opEficOE`
--

CREATE TABLE `opEficOE` (
  `idEficOE` int(11) NOT NULL,
  `idObjEst` int(11) NOT NULL,
  `Enero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Febrero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Marzo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Abril` float(18,4) NOT NULL DEFAULT '0.0000',
  `Mayo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Junio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Julio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Agosto` float(18,4) NOT NULL DEFAULT '0.0000',
  `Septiembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Octubre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Noviembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Diciembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Periodo` varchar(4) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opEficOE`
--

INSERT INTO `opEficOE` (`idEficOE`, `idObjEst`, `Enero`, `Febrero`, `Marzo`, `Abril`, `Mayo`, `Junio`, `Julio`, `Agosto`, `Septiembre`, `Octubre`, `Noviembre`, `Diciembre`, `Periodo`, `Status`) VALUES
(1, 1, 45.2539, 37.4911, 82.8677, 8.4044, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '2016', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opEficOO`
--

CREATE TABLE `opEficOO` (
  `idEficOO` int(11) NOT NULL,
  `idObjOpe` int(11) NOT NULL,
  `Enero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Febrero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Marzo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Abril` float(18,4) NOT NULL DEFAULT '0.0000',
  `Mayo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Junio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Julio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Agosto` float(18,4) NOT NULL DEFAULT '0.0000',
  `Septiembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Octubre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Noviembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Diciembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Periodo` varchar(4) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opEficOO`
--

INSERT INTO `opEficOO` (`idEficOO`, `idObjOpe`, `Enero`, `Febrero`, `Marzo`, `Abril`, `Mayo`, `Junio`, `Julio`, `Agosto`, `Septiembre`, `Octubre`, `Noviembre`, `Diciembre`, `Periodo`, `Status`) VALUES
(1, 1, 45.2539, 37.4911, 82.8677, 8.4044, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '2016', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opEficPro`
--

CREATE TABLE `opEficPro` (
  `idEficPro` int(11) NOT NULL,
  `idPrograma` int(11) NOT NULL,
  `Enero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Febrero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Marzo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Abril` float(18,4) NOT NULL DEFAULT '0.0000',
  `Mayo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Junio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Julio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Agosto` float(18,4) NOT NULL DEFAULT '0.0000',
  `Septiembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Octubre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Noviembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Diciembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Periodo` varchar(4) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opEficPro`
--

INSERT INTO `opEficPro` (`idEficPro`, `idPrograma`, `Enero`, `Febrero`, `Marzo`, `Abril`, `Mayo`, `Junio`, `Julio`, `Agosto`, `Septiembre`, `Octubre`, `Noviembre`, `Diciembre`, `Periodo`, `Status`) VALUES
(1, 1, 45.2537, 37.4915, 82.8671, 8.4040, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '2016', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opEjecAct`
--

CREATE TABLE `opEjecAct` (
  `idEjecAct` int(11) NOT NULL,
  `idActividad` int(11) NOT NULL,
  `Enero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Febrero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Marzo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Abril` float(18,4) NOT NULL DEFAULT '0.0000',
  `Mayo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Junio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Julio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Agosto` float(18,4) NOT NULL DEFAULT '0.0000',
  `Septiembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Octubre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Noviembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Diciembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Periodo` varchar(4) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opEjecAct`
--

INSERT INTO `opEjecAct` (`idEjecAct`, `idActividad`, `Enero`, `Febrero`, `Marzo`, `Abril`, `Mayo`, `Junio`, `Julio`, `Agosto`, `Septiembre`, `Octubre`, `Noviembre`, `Diciembre`, `Periodo`, `Status`) VALUES
(1, 1, 50.0000, 20.0000, 15.0000, 10.0000, 5.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '2016', 0),
(2, 2, 0.0000, 0.0000, 0.0000, 0.0000, 50.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '2016', 0),
(3, 3, 0.0000, 0.0000, 0.0000, 0.0000, 90.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '2016', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opEjecEst`
--

CREATE TABLE `opEjecEst` (
  `idEjecEst` int(11) NOT NULL,
  `idEstOpe` int(11) NOT NULL,
  `Enero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Febrero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Marzo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Abril` float(18,4) NOT NULL DEFAULT '0.0000',
  `Mayo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Junio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Julio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Agosto` float(18,4) NOT NULL DEFAULT '0.0000',
  `Septiembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Octubre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Noviembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Diciembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Periodo` varchar(4) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opEjecEst`
--

INSERT INTO `opEjecEst` (`idEjecEst`, `idEstOpe`, `Enero`, `Febrero`, `Marzo`, `Abril`, `Mayo`, `Junio`, `Julio`, `Agosto`, `Septiembre`, `Octubre`, `Noviembre`, `Diciembre`, `Periodo`, `Status`) VALUES
(1, 1, 4.3403, 1.7361, 1.3021, 0.8681, 18.0526, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '2016', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opEjecGas`
--

CREATE TABLE `opEjecGas` (
  `idEjecGas` int(11) NOT NULL,
  `idEntidad` int(11) NOT NULL,
  `Enero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Febrero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Marzo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Abril` float(18,4) NOT NULL DEFAULT '0.0000',
  `Mayo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Junio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Julio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Agosto` float(18,4) NOT NULL DEFAULT '0.0000',
  `Septiembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Octubre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Noviembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Diciembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Periodo` varchar(4) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opEjecGas`
--

INSERT INTO `opEjecGas` (`idEjecGas`, `idEntidad`, `Enero`, `Febrero`, `Marzo`, `Abril`, `Mayo`, `Junio`, `Julio`, `Agosto`, `Septiembre`, `Octubre`, `Noviembre`, `Diciembre`, `Periodo`, `Status`) VALUES
(1, 1, 45.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '2016', 0),
(2, 4, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '2016', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opEjecOE`
--

CREATE TABLE `opEjecOE` (
  `idEjecOE` int(11) NOT NULL,
  `idObjEst` int(11) NOT NULL,
  `Enero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Febrero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Marzo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Abril` float(18,4) NOT NULL DEFAULT '0.0000',
  `Mayo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Junio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Julio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Agosto` float(18,4) NOT NULL DEFAULT '0.0000',
  `Septiembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Octubre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Noviembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Diciembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Periodo` varchar(4) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opEjecOE`
--

INSERT INTO `opEjecOE` (`idEjecOE`, `idObjEst`, `Enero`, `Febrero`, `Marzo`, `Abril`, `Mayo`, `Junio`, `Julio`, `Agosto`, `Septiembre`, `Octubre`, `Noviembre`, `Diciembre`, `Periodo`, `Status`) VALUES
(1, 1, 4.3403, 1.7361, 1.3021, 0.8681, 18.0526, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '2016', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opEjecOO`
--

CREATE TABLE `opEjecOO` (
  `idEjecOO` int(11) NOT NULL,
  `idObjOpe` int(11) NOT NULL,
  `Enero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Febrero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Marzo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Abril` float(18,4) NOT NULL DEFAULT '0.0000',
  `Mayo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Junio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Julio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Agosto` float(18,4) NOT NULL DEFAULT '0.0000',
  `Septiembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Octubre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Noviembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Diciembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Periodo` varchar(4) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opEjecOO`
--

INSERT INTO `opEjecOO` (`idEjecOO`, `idObjOpe`, `Enero`, `Febrero`, `Marzo`, `Abril`, `Mayo`, `Junio`, `Julio`, `Agosto`, `Septiembre`, `Octubre`, `Noviembre`, `Diciembre`, `Periodo`, `Status`) VALUES
(1, 1, 4.3403, 1.7361, 1.3021, 0.8681, 18.0526, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '2016', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opEjecPro`
--

CREATE TABLE `opEjecPro` (
  `idEjecPro` int(11) NOT NULL,
  `idPrograma` int(11) NOT NULL,
  `Enero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Febrero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Marzo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Abril` float(18,4) NOT NULL DEFAULT '0.0000',
  `Mayo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Junio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Julio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Agosto` float(18,4) NOT NULL DEFAULT '0.0000',
  `Septiembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Octubre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Noviembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Diciembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Periodo` varchar(4) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opEjecPro`
--

INSERT INTO `opEjecPro` (`idEjecPro`, `idPrograma`, `Enero`, `Febrero`, `Marzo`, `Abril`, `Mayo`, `Junio`, `Julio`, `Agosto`, `Septiembre`, `Octubre`, `Noviembre`, `Diciembre`, `Periodo`, `Status`) VALUES
(1, 1, 4.3403, 1.7361, 1.3021, 0.8681, 18.0526, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '2016', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opEjecuciones`
--

CREATE TABLE `opEjecuciones` (
  `idEjecucion` int(11) NOT NULL,
  `idActividad` int(11) NOT NULL,
  `Cantidad` float(12,4) NOT NULL,
  `Mes` varchar(250) COLLATE utf8_bin NOT NULL,
  `Monto` double(18,2) NOT NULL,
  `Periodo` varchar(4) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opEjecuciones`
--

INSERT INTO `opEjecuciones` (`idEjecucion`, `idActividad`, `Cantidad`, `Mes`, `Monto`, `Periodo`, `Status`) VALUES
(1, 1, 50.0000, '1', 600.00, '2016', 0),
(2, 2, 50.0000, '5', 2000.00, '2016', 0),
(3, 1, 20.0000, '2', 8000.00, '2016', 0),
(4, 1, 15.0000, '3', 4000.00, '2016', 0),
(5, 1, 10.0000, '4', 3000.00, '2017', 0),
(6, 1, 5.0000, '5', 1000.00, '2017', 0),
(7, 3, 90.0000, '5', 1000.00, '2016', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opEmpleados`
--

CREATE TABLE `opEmpleados` (
  `idEmpleado` int(11) NOT NULL,
  `idColonia` int(11) NOT NULL,
  `idEntidad` int(11) NOT NULL,
  `idPuesto` int(11) NOT NULL,
  `Paterno` varchar(250) COLLATE utf8_bin NOT NULL,
  `Materno` varchar(250) COLLATE utf8_bin NOT NULL,
  `Nombre` varchar(250) COLLATE utf8_bin NOT NULL,
  `Calle` varchar(250) COLLATE utf8_bin NOT NULL,
  `Nint` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `Next` varchar(250) COLLATE utf8_bin NOT NULL,
  `RFC` varchar(250) COLLATE utf8_bin NOT NULL,
  `CURP` varchar(250) COLLATE utf8_bin NOT NULL,
  `TelFijo` varchar(250) COLLATE utf8_bin NOT NULL,
  `TelCel` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opEmpleados`
--

INSERT INTO `opEmpleados` (`idEmpleado`, `idColonia`, `idEntidad`, `idPuesto`, `Paterno`, `Materno`, `Nombre`, `Calle`, `Nint`, `Next`, `RFC`, `CURP`, `TelFijo`, `TelCel`, `Status`) VALUES
(1, 1, 2, 3, 'Lorenzana', 'Quevedo', 'Andres', 'Sor Juana Ines Norte', '3E', '111', 'XXAAXX000', 'XXAA', '0000000', '8331567731', 0),
(2, 1, 1, 4, 'Pineda', 'Saucedo', 'Beatriz', 'Sor Juana Ines Norte', '3B', '111', 'XXAAXX000', 'XXAA', '0000000', '0000000', 0),
(3, 1, 2, 6, 'Medina', 'Quevedo', 'Rogelio', 'Sor Juana Ines Norte', '3B', '111', 'XXAAXX000', 'XXAA', '0000000', '0000000', 0),
(4, 1, 1, 1, 'Jimenez', 'Robledo', 'Astrid', 'Sor Juana Ines Norte', '3B', '111', 'XXAAXX000', 'XXAA', '0000000', '0000000', 0),
(5, 1, 1, 4, 'Pineda', 'Saucedo', 'Beatriz', 'Sor Juana Ines Norte', '3B', '111', 'XXAAXX000', 'XXAA', '0000000', '0000000', 0),
(6, 1, 2, 6, 'Rodriguez', 'Acevedo', 'Arturo', 'Pino Suarez Sur', 'A', '123', 'RAAR008999FA1', 'RAAR008999HTSYNS09', '3456789', '8332169077', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opEscalas`
--

CREATE TABLE `opEscalas` (
  `idEscala` int(11) NOT NULL,
  `idCedula` int(11) NOT NULL,
  `Escala` varchar(50) COLLATE utf8_bin NOT NULL,
  `Ponderacion` float(4,2) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opEscalas`
--

INSERT INTO `opEscalas` (`idEscala`, `idCedula`, `Escala`, `Ponderacion`, `Status`) VALUES
(1, 1, 'Excelente', 5.00, 0),
(2, 1, 'Bien', 4.00, 0),
(3, 1, 'Regular', 3.00, 0),
(4, 1, 'Pesimo', 1.00, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opEvaluaciones`
--

CREATE TABLE `opEvaluaciones` (
  `idEvaluacion` int(11) NOT NULL,
  `idCedula` int(11) NOT NULL,
  `idEmpleado` int(11) NOT NULL,
  `Folio` varchar(50) COLLATE utf8_bin NOT NULL,
  `Fecha` varchar(50) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opEvaluaciones`
--

INSERT INTO `opEvaluaciones` (`idEvaluacion`, `idCedula`, `idEmpleado`, `Folio`, `Fecha`, `Status`) VALUES
(1, 1, 4, 'EVF-19122016-125040-53', '19/12/2016 12:50:40am', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opEvidencias`
--

CREATE TABLE `opEvidencias` (
  `idEvidencia` int(11) NOT NULL,
  `idEjecucion` int(11) NOT NULL,
  `RutaURL` varchar(250) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opEvidencias`
--

INSERT INTO `opEvidencias` (`idEvidencia`, `idEjecucion`, `RutaURL`, `Status`) VALUES
(1, 1, 'https://www.dropbox.com/s/1nqa0tswmb0ub0b/Proyecto Phoenix Gubernamental.pdf?dl=0', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opFactores`
--

CREATE TABLE `opFactores` (
  `idFactor` int(11) NOT NULL,
  `idCedula` int(11) NOT NULL,
  `Factor` varchar(250) COLLATE utf8_bin NOT NULL,
  `Tipo` varchar(50) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opFactores`
--

INSERT INTO `opFactores` (`idFactor`, `idCedula`, `Factor`, `Tipo`, `Status`) VALUES
(1, 1, 'El endeudamiento con proveedores', 'Interno', 0),
(2, 1, 'El tipo de cambio peso frente al dolar', 'Externo', 0),
(3, 2, 'Resistencia al cambio', 'Interno', 0),
(4, 2, 'Transparencia en rendicion de cuentas', 'Interno', 0),
(5, 2, 'Abastecimiento de papeleria', 'Interno', 0),
(6, 2, 'Servicios Generales', 'Interno', 0),
(7, 3, 'Disposicion de material corrosivo', 'Interno', 0),
(8, 2, 'Disposicion de material corrosivo', 'Interno', 0),
(9, 2, 'Personal capacitado', 'Interno', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opFichasProcesos`
--

CREATE TABLE `opFichasProcesos` (
  `idFicha` int(11) NOT NULL,
  `idProceso` int(11) NOT NULL,
  `Clave` varchar(250) COLLATE utf8_bin NOT NULL,
  `nEdicion` int(11) NOT NULL DEFAULT '0',
  `FechaCreacion` varchar(50) COLLATE utf8_bin NOT NULL,
  `FechaEdicion` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Actividades` varchar(1500) COLLATE utf8_bin NOT NULL,
  `Responsable` varchar(1500) COLLATE utf8_bin NOT NULL,
  `MisionProceso` varchar(1500) COLLATE utf8_bin NOT NULL,
  `Entrada` varchar(1500) COLLATE utf8_bin NOT NULL,
  `Salida` varchar(1500) COLLATE utf8_bin NOT NULL,
  `relProcesos` varchar(1500) COLLATE utf8_bin NOT NULL,
  `necRecursos` varchar(1500) COLLATE utf8_bin NOT NULL,
  `regArchivos` varchar(1500) COLLATE utf8_bin NOT NULL,
  `docAplicables` varchar(1500) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opFichasProcesos`
--

INSERT INTO `opFichasProcesos` (`idFicha`, `idProceso`, `Clave`, `nEdicion`, `FechaCreacion`, `FechaEdicion`, `Actividades`, `Responsable`, `MisionProceso`, `Entrada`, `Salida`, `relProcesos`, `necRecursos`, `regArchivos`, `docAplicables`, `Status`) VALUES
(1, 1, 'FSMP-2016-1', 1, '19/10/2016 11:49:49pm', '25/11/2016 01:17:40pm', 'Formato de los registros. Conservacion y Archivo.<br>Identificacion de registros. Disposicion de registros.<br>Cumplimento de registros.<br>Almacenamiento y recuperacion.', 'El responsable de la gestion de registros, es el responsable de gestion de la calidad.<br>En cada procedimiento se definen los responsables de cumplimiento de registros.', 'Recoge el modo de identificacion, formato, cumplimiento, acceso, almacenamiento, conservacion y disposicion de los<br>registros del Sistema de Gestion de Calidad.', 'Determinacion de nuevos registros', 'Registros controlados y gestionado.', 'En cada procedimiento se definen los registros correspondientes a cada proceso.', 'Formato para el cumplimiento de registros.', 'Lista de registros en vigor.', 'Procedimiento de gestion de registros.', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opMovGas`
--

CREATE TABLE `opMovGas` (
  `idMovGas` int(11) NOT NULL,
  `idEjecGas` int(11) NOT NULL,
  `Cantidad` float(12,4) NOT NULL,
  `Tiempo` varchar(50) COLLATE utf8_bin NOT NULL,
  `Mes` varchar(250) COLLATE utf8_bin NOT NULL,
  `Monto` double(18,2) NOT NULL,
  `Periodo` varchar(4) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opMovGas`
--

INSERT INTO `opMovGas` (`idMovGas`, `idEjecGas`, `Cantidad`, `Tiempo`, `Mes`, `Monto`, `Periodo`, `Status`) VALUES
(1, 1, 3.0000, '15/07/2016 12:42:33am', '1', 45.00, '2016', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opProgAct`
--

CREATE TABLE `opProgAct` (
  `idProgAct` int(11) NOT NULL,
  `idActividad` int(11) NOT NULL,
  `Enero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Febrero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Marzo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Abril` float(18,4) NOT NULL DEFAULT '0.0000',
  `Mayo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Junio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Julio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Agosto` float(18,4) NOT NULL DEFAULT '0.0000',
  `Septiembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Octubre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Noviembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Diciembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Periodo` varchar(4) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opProgAct`
--

INSERT INTO `opProgAct` (`idProgAct`, `idActividad`, `Enero`, `Febrero`, `Marzo`, `Abril`, `Mayo`, `Junio`, `Julio`, `Agosto`, `Septiembre`, `Octubre`, `Noviembre`, `Diciembre`, `Periodo`, `Status`) VALUES
(1, 1, 60.0000, 20.0000, 10.0000, 10.0000, 5.0000, 30.0000, 10.0000, 10.0000, 50.0000, 90.0000, 0.0000, 89.0000, '2016', 0),
(2, 2, 30.0000, 15.0000, 0.0000, 50.0000, 50.0000, 100.0000, 6.0000, 0.0000, 18.0000, 7.0000, 37.0000, 23.0000, '2016', 0),
(3, 3, 10.0000, 10.0000, 5.0000, 32.0000, 90.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 90.0000, '2016', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opProgEst`
--

CREATE TABLE `opProgEst` (
  `idProgEst` int(11) NOT NULL,
  `idEstOpe` int(11) NOT NULL,
  `Enero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Febrero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Marzo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Abril` float(18,4) NOT NULL DEFAULT '0.0000',
  `Mayo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Junio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Julio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Agosto` float(18,4) NOT NULL DEFAULT '0.0000',
  `Septiembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Octubre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Noviembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Diciembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Periodo` varchar(4) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opProgEst`
--

INSERT INTO `opProgEst` (`idProgEst`, `idEstOpe`, `Enero`, `Febrero`, `Marzo`, `Abril`, `Mayo`, `Junio`, `Julio`, `Agosto`, `Septiembre`, `Octubre`, `Noviembre`, `Diciembre`, `Periodo`, `Status`) VALUES
(1, 1, 9.5910, 4.6307, 1.5713, 10.3291, 18.0526, 12.5248, 1.4633, 0.8681, 6.1260, 8.5069, 3.6706, 22.6657, '2016', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opProgGas`
--

CREATE TABLE `opProgGas` (
  `idProgGas` int(11) NOT NULL,
  `idEntidad` int(11) NOT NULL,
  `Enero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Febrero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Marzo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Abril` float(18,4) NOT NULL DEFAULT '0.0000',
  `Mayo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Junio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Julio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Agosto` float(18,4) NOT NULL DEFAULT '0.0000',
  `Septiembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Octubre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Noviembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Diciembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Periodo` varchar(4) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opProgGas`
--

INSERT INTO `opProgGas` (`idProgGas`, `idEntidad`, `Enero`, `Febrero`, `Marzo`, `Abril`, `Mayo`, `Junio`, `Julio`, `Agosto`, `Septiembre`, `Octubre`, `Noviembre`, `Diciembre`, `Periodo`, `Status`) VALUES
(1, 1, 4.0000, 2.0000, 4.0000, 3.0000, 3.0000, 3.0000, 3.0000, 3.0000, 8.0000, 2.0000, 5.0000, 2.0000, '2016', 0),
(2, 4, 3.0000, 3.0000, 3.0000, 3.0000, 3.0000, 3.0000, 3.0000, 3.0000, 3.0000, 3.0000, 3.0000, 3.0000, '2016', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opProgOE`
--

CREATE TABLE `opProgOE` (
  `idProgOE` int(11) NOT NULL,
  `idObjEst` int(11) NOT NULL,
  `Enero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Febrero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Marzo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Abril` float(18,4) NOT NULL DEFAULT '0.0000',
  `Mayo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Junio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Julio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Agosto` float(18,4) NOT NULL DEFAULT '0.0000',
  `Septiembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Octubre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Noviembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Diciembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Periodo` varchar(4) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opProgOE`
--

INSERT INTO `opProgOE` (`idProgOE`, `idObjEst`, `Enero`, `Febrero`, `Marzo`, `Abril`, `Mayo`, `Junio`, `Julio`, `Agosto`, `Septiembre`, `Octubre`, `Noviembre`, `Diciembre`, `Periodo`, `Status`) VALUES
(1, 1, 9.5910, 4.6307, 1.5713, 10.3291, 18.0526, 12.5248, 1.4633, 0.8681, 6.1260, 8.5069, 3.6706, 22.6657, '2016', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opProgOO`
--

CREATE TABLE `opProgOO` (
  `idProgOO` int(11) NOT NULL,
  `idObjOpe` int(11) NOT NULL,
  `Enero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Febrero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Marzo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Abril` float(18,4) NOT NULL DEFAULT '0.0000',
  `Mayo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Junio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Julio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Agosto` float(18,4) NOT NULL DEFAULT '0.0000',
  `Septiembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Octubre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Noviembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Diciembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Periodo` varchar(4) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opProgOO`
--

INSERT INTO `opProgOO` (`idProgOO`, `idObjOpe`, `Enero`, `Febrero`, `Marzo`, `Abril`, `Mayo`, `Junio`, `Julio`, `Agosto`, `Septiembre`, `Octubre`, `Noviembre`, `Diciembre`, `Periodo`, `Status`) VALUES
(1, 1, 9.5910, 4.6307, 1.5713, 10.3291, 18.0526, 12.5248, 1.4633, 0.8681, 6.1260, 8.5069, 3.6706, 22.6657, '2016', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opProgPro`
--

CREATE TABLE `opProgPro` (
  `idProgPro` int(11) NOT NULL,
  `idPrograma` int(11) NOT NULL,
  `Enero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Febrero` float(18,4) NOT NULL DEFAULT '0.0000',
  `Marzo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Abril` float(18,4) NOT NULL DEFAULT '0.0000',
  `Mayo` float(18,4) NOT NULL DEFAULT '0.0000',
  `Junio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Julio` float(18,4) NOT NULL DEFAULT '0.0000',
  `Agosto` float(18,4) NOT NULL DEFAULT '0.0000',
  `Septiembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Octubre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Noviembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Diciembre` float(18,4) NOT NULL DEFAULT '0.0000',
  `Periodo` varchar(4) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opProgPro`
--

INSERT INTO `opProgPro` (`idProgPro`, `idPrograma`, `Enero`, `Febrero`, `Marzo`, `Abril`, `Mayo`, `Junio`, `Julio`, `Agosto`, `Septiembre`, `Octubre`, `Noviembre`, `Diciembre`, `Periodo`, `Status`) VALUES
(1, 1, 9.5910, 4.6307, 1.5713, 10.3291, 18.0526, 12.5248, 1.4633, 0.8681, 6.1260, 8.5069, 3.6706, 22.6657, '2016', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opProgramas`
--

CREATE TABLE `opProgramas` (
  `idPrograma` int(11) NOT NULL,
  `idEntidad` int(11) NOT NULL,
  `idObjEst` int(11) NOT NULL,
  `idObjOpe` int(11) NOT NULL,
  `idEstOpe` int(11) NOT NULL,
  `idResponsable` int(11) NOT NULL,
  `idSubalterno` int(11) NOT NULL,
  `Nomenclatura` varchar(250) COLLATE utf8_bin NOT NULL,
  `Programa` varchar(250) COLLATE utf8_bin NOT NULL,
  `Monto` double NOT NULL DEFAULT '0',
  `Periodo` varchar(4) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opProgramas`
--

INSERT INTO `opProgramas` (`idPrograma`, `idEntidad`, `idObjEst`, `idObjOpe`, `idEstOpe`, `idResponsable`, `idSubalterno`, `Nomenclatura`, `Programa`, `Monto`, `Periodo`, `Status`) VALUES
(1, 2, 1, 1, 1, 1, 3, '1.1.1.1', 'Gestion de cartera corriente', 50000, '2016', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opResParFoda`
--

CREATE TABLE `opResParFoda` (
  `idResParFoda` int(11) NOT NULL,
  `idEvaluacion` int(11) NOT NULL,
  `idFactor` int(11) NOT NULL,
  `idEscala` int(11) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `opResParFoda`
--

INSERT INTO `opResParFoda` (`idResParFoda`, `idEvaluacion`, `idFactor`, `idEscala`, `Status`) VALUES
(1, 1, 1, 3, 0),
(2, 1, 2, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opUsrTemp`
--

CREATE TABLE `opUsrTemp` (
  `idUsrtmp` int(11) NOT NULL,
  `idNivel` int(11) NOT NULL DEFAULT '3',
  `Usuario` varchar(250) COLLATE utf8_bin NOT NULL,
  `Clave` varchar(250) COLLATE utf8_bin NOT NULL,
  `Correo` varchar(250) COLLATE utf8_bin NOT NULL,
  `Pregunta` varchar(250) COLLATE utf8_bin NOT NULL,
  `Respuesta` varchar(250) COLLATE utf8_bin NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opUsrTemp`
--

INSERT INTO `opUsrTemp` (`idUsrtmp`, `idNivel`, `Usuario`, `Clave`, `Correo`, `Pregunta`, `Respuesta`, `Status`) VALUES
(1, 2, 'Prototipo', '1NHo09vR3A==', 'antonio.peyrano@gmail.com', 'Su comida favorita', 'Pizza', 0),
(2, 2, 'Prototipo 5', '1NHo09vR3A==', 'antonio.peyrano@gmail.com', 'Su comida favorita', 'Tacos', 0),
(3, 3, 'Prototipo 6', 'w+Hq19HD', 'antonio.peyrano@live.com.mx', 'Su primera mascota', 'gandhi', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relEntPro`
--

CREATE TABLE `relEntPro` (
  `idRelEntPro` int(11) NOT NULL,
  `idProceso` int(11) NOT NULL,
  `idEntidad` int(11) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `relEntPro`
--

INSERT INTO `relEntPro` (`idRelEntPro`, `idProceso`, `idEntidad`, `Status`) VALUES
(1, 1, 1, 0),
(2, 1, 2, 0),
(3, 2, 2, 0),
(4, 3, 1, 0),
(5, 3, 2, 0),
(6, 3, 4, 0),
(7, 1, 4, 0),
(8, 5, 4, 0),
(9, 5, 5, 0),
(10, 4, 5, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relEntPuesto`
--

CREATE TABLE `relEntPuesto` (
  `idRelEntPst` int(11) NOT NULL,
  `idPuesto` int(11) NOT NULL,
  `idEntidad` int(11) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `relEntPuesto`
--

INSERT INTO `relEntPuesto` (`idRelEntPst`, `idPuesto`, `idEntidad`, `Status`) VALUES
(1, 1, 1, 0),
(2, 1, 2, 0),
(3, 2, 1, 0),
(4, 3, 2, 0),
(5, 4, 1, 0),
(6, 5, 1, 0),
(7, 5, 2, 0),
(8, 6, 2, 0),
(9, 6, 1, 0),
(10, 2, 2, 0),
(11, 1, 4, 0),
(12, 7, 2, 0),
(13, 8, 4, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relIndFicha`
--

CREATE TABLE `relIndFicha` (
  `idRelIndFicha` int(11) NOT NULL,
  `idIndicador` int(11) NOT NULL,
  `idFicha` int(11) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `relIndFicha`
--

INSERT INTO `relIndFicha` (`idRelIndFicha`, `idIndicador`, `idFicha`, `Status`) VALUES
(1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relIndPro`
--

CREATE TABLE `relIndPro` (
  `idRelIndPro` int(11) NOT NULL,
  `idIndicador` int(11) NOT NULL,
  `idProceso` int(11) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `relIndPro`
--

INSERT INTO `relIndPro` (`idRelIndPro`, `idIndicador`, `idProceso`, `Status`) VALUES
(1, 1, 1, 0),
(2, 1, 2, 0),
(3, 1, 3, 0),
(4, 1, 4, 0),
(5, 1, 5, 0),
(6, 2, 4, 0),
(7, 3, 2, 0),
(8, 3, 3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relProgPro`
--

CREATE TABLE `relProgPro` (
  `idRelProgPro` int(11) NOT NULL,
  `idPrograma` int(11) NOT NULL,
  `idProceso` int(11) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `relProgPro`
--

INSERT INTO `relProgPro` (`idRelProgPro`, `idPrograma`, `idProceso`, `Status`) VALUES
(1, 1, 1, 0),
(2, 1, 3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relUsrEmp`
--

CREATE TABLE `relUsrEmp` (
  `idRelUsrEmp` int(11) NOT NULL,
  `idEmpleado` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `relUsrEmp`
--

INSERT INTO `relUsrEmp` (`idRelUsrEmp`, `idEmpleado`, `idUsuario`, `Status`) VALUES
(1, 1, 2, 0),
(2, 2, 2, 0),
(3, 3, 3, 0),
(4, 4, 1, 0),
(5, 5, 4, 0),
(6, 6, -1, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `catColonias`
--
ALTER TABLE `catColonias`
  ADD PRIMARY KEY (`idColonia`),
  ADD KEY `IdxColonia` (`idColonia`);

--
-- Indices de la tabla `catConfiguraciones`
--
ALTER TABLE `catConfiguraciones`
  ADD PRIMARY KEY (`idConfiguracion`),
  ADD KEY `idxConfiguracion` (`idConfiguracion`);

--
-- Indices de la tabla `catEntidades`
--
ALTER TABLE `catEntidades`
  ADD PRIMARY KEY (`idEntidad`),
  ADD KEY `idxEntidad` (`idEntidad`);

--
-- Indices de la tabla `catEstOpe`
--
ALTER TABLE `catEstOpe`
  ADD PRIMARY KEY (`idEstOpe`),
  ADD KEY `idxEstOpe` (`idEstOpe`);

--
-- Indices de la tabla `catIndicadores`
--
ALTER TABLE `catIndicadores`
  ADD PRIMARY KEY (`idIndicador`),
  ADD KEY `idxIndicador` (`idIndicador`);

--
-- Indices de la tabla `catNiveles`
--
ALTER TABLE `catNiveles`
  ADD PRIMARY KEY (`idNivel`),
  ADD KEY `idxNivel` (`idNivel`);

--
-- Indices de la tabla `catObjEst`
--
ALTER TABLE `catObjEst`
  ADD PRIMARY KEY (`idObjEst`),
  ADD KEY `idxObjEst` (`idObjEst`);

--
-- Indices de la tabla `catObjOpe`
--
ALTER TABLE `catObjOpe`
  ADD PRIMARY KEY (`idObjOpe`),
  ADD KEY `idxObjOpe` (`idObjOpe`);

--
-- Indices de la tabla `catProcesos`
--
ALTER TABLE `catProcesos`
  ADD PRIMARY KEY (`idProceso`),
  ADD KEY `idxProceso` (`idProceso`);

--
-- Indices de la tabla `catPuestos`
--
ALTER TABLE `catPuestos`
  ADD PRIMARY KEY (`idPuesto`),
  ADD KEY `idxPuesto` (`idPuesto`);

--
-- Indices de la tabla `catTEntidades`
--
ALTER TABLE `catTEntidades`
  ADD PRIMARY KEY (`idTEntidad`),
  ADD KEY `idxTEntidad` (`idTEntidad`);

--
-- Indices de la tabla `catUnidades`
--
ALTER TABLE `catUnidades`
  ADD PRIMARY KEY (`idUnidad`),
  ADD KEY `idxUnidades` (`idUnidad`);

--
-- Indices de la tabla `catUsuarios`
--
ALTER TABLE `catUsuarios`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `idxUsuario` (`idUsuario`);

--
-- Indices de la tabla `catVehiculos`
--
ALTER TABLE `catVehiculos`
  ADD PRIMARY KEY (`idVehiculo`),
  ADD KEY `idxVehiculo` (`idVehiculo`);

--
-- Indices de la tabla `opActividades`
--
ALTER TABLE `opActividades`
  ADD PRIMARY KEY (`idActividad`),
  ADD KEY `idxActividad` (`idActividad`);

--
-- Indices de la tabla `opCedulas`
--
ALTER TABLE `opCedulas`
  ADD PRIMARY KEY (`idCedula`),
  ADD KEY `idxCedula` (`idCedula`);

--
-- Indices de la tabla `opClientes`
--
ALTER TABLE `opClientes`
  ADD PRIMARY KEY (`idCliente`),
  ADD KEY `idxCliente` (`idCliente`);

--
-- Indices de la tabla `opEficAct`
--
ALTER TABLE `opEficAct`
  ADD PRIMARY KEY (`idEficAct`),
  ADD KEY `idxEficAct` (`idEficAct`);

--
-- Indices de la tabla `opEficEst`
--
ALTER TABLE `opEficEst`
  ADD PRIMARY KEY (`idEficEst`),
  ADD KEY `idxEficEst` (`idEficEst`);

--
-- Indices de la tabla `opEficGas`
--
ALTER TABLE `opEficGas`
  ADD PRIMARY KEY (`idEficGas`),
  ADD KEY `idxEficGas` (`idEficGas`);

--
-- Indices de la tabla `opEficOE`
--
ALTER TABLE `opEficOE`
  ADD PRIMARY KEY (`idEficOE`),
  ADD KEY `idxEficOE` (`idEficOE`);

--
-- Indices de la tabla `opEficOO`
--
ALTER TABLE `opEficOO`
  ADD PRIMARY KEY (`idEficOO`),
  ADD KEY `idxEficOO` (`idEficOO`);

--
-- Indices de la tabla `opEficPro`
--
ALTER TABLE `opEficPro`
  ADD PRIMARY KEY (`idEficPro`),
  ADD KEY `idxEficPro` (`idEficPro`);

--
-- Indices de la tabla `opEjecAct`
--
ALTER TABLE `opEjecAct`
  ADD PRIMARY KEY (`idEjecAct`),
  ADD KEY `idxEjecAct` (`idEjecAct`);

--
-- Indices de la tabla `opEjecEst`
--
ALTER TABLE `opEjecEst`
  ADD PRIMARY KEY (`idEjecEst`),
  ADD KEY `idxEjecEst` (`idEjecEst`);

--
-- Indices de la tabla `opEjecGas`
--
ALTER TABLE `opEjecGas`
  ADD PRIMARY KEY (`idEjecGas`),
  ADD KEY `idxEjecGas` (`idEjecGas`);

--
-- Indices de la tabla `opEjecOE`
--
ALTER TABLE `opEjecOE`
  ADD PRIMARY KEY (`idEjecOE`),
  ADD KEY `idxEjecOE` (`idEjecOE`);

--
-- Indices de la tabla `opEjecOO`
--
ALTER TABLE `opEjecOO`
  ADD PRIMARY KEY (`idEjecOO`),
  ADD KEY `idxEjecOO` (`idEjecOO`);

--
-- Indices de la tabla `opEjecPro`
--
ALTER TABLE `opEjecPro`
  ADD PRIMARY KEY (`idEjecPro`),
  ADD KEY `idxEjecPro` (`idEjecPro`);

--
-- Indices de la tabla `opEjecuciones`
--
ALTER TABLE `opEjecuciones`
  ADD PRIMARY KEY (`idEjecucion`),
  ADD KEY `idxEjecucion` (`idEjecucion`);

--
-- Indices de la tabla `opEmpleados`
--
ALTER TABLE `opEmpleados`
  ADD PRIMARY KEY (`idEmpleado`),
  ADD KEY `idxEmpleado` (`idEmpleado`);

--
-- Indices de la tabla `opEscalas`
--
ALTER TABLE `opEscalas`
  ADD PRIMARY KEY (`idEscala`),
  ADD KEY `idxEscala` (`idEscala`);

--
-- Indices de la tabla `opEvaluaciones`
--
ALTER TABLE `opEvaluaciones`
  ADD PRIMARY KEY (`idEvaluacion`),
  ADD KEY `idxEvaluacion` (`idEvaluacion`);

--
-- Indices de la tabla `opEvidencias`
--
ALTER TABLE `opEvidencias`
  ADD PRIMARY KEY (`idEvidencia`),
  ADD KEY `idxEvidencia` (`idEvidencia`);

--
-- Indices de la tabla `opFactores`
--
ALTER TABLE `opFactores`
  ADD PRIMARY KEY (`idFactor`),
  ADD KEY `idxFactor` (`idFactor`);

--
-- Indices de la tabla `opFichasProcesos`
--
ALTER TABLE `opFichasProcesos`
  ADD PRIMARY KEY (`idFicha`),
  ADD KEY `idxFichasProcesos` (`idFicha`);

--
-- Indices de la tabla `opMovGas`
--
ALTER TABLE `opMovGas`
  ADD PRIMARY KEY (`idMovGas`),
  ADD KEY `idxMovGas` (`idMovGas`);

--
-- Indices de la tabla `opProgAct`
--
ALTER TABLE `opProgAct`
  ADD PRIMARY KEY (`idProgAct`),
  ADD KEY `idxProgAct` (`idProgAct`);

--
-- Indices de la tabla `opProgEst`
--
ALTER TABLE `opProgEst`
  ADD PRIMARY KEY (`idProgEst`),
  ADD KEY `idxProgEst` (`idProgEst`);

--
-- Indices de la tabla `opProgGas`
--
ALTER TABLE `opProgGas`
  ADD PRIMARY KEY (`idProgGas`),
  ADD KEY `idxProgGas` (`idProgGas`);

--
-- Indices de la tabla `opProgOE`
--
ALTER TABLE `opProgOE`
  ADD PRIMARY KEY (`idProgOE`),
  ADD KEY `idxProgOE` (`idProgOE`);

--
-- Indices de la tabla `opProgOO`
--
ALTER TABLE `opProgOO`
  ADD PRIMARY KEY (`idProgOO`),
  ADD KEY `idxProgOO` (`idProgOO`);

--
-- Indices de la tabla `opProgPro`
--
ALTER TABLE `opProgPro`
  ADD PRIMARY KEY (`idProgPro`),
  ADD KEY `idxProgPro` (`idProgPro`);

--
-- Indices de la tabla `opProgramas`
--
ALTER TABLE `opProgramas`
  ADD PRIMARY KEY (`idPrograma`),
  ADD KEY `idxPrograma` (`idPrograma`);

--
-- Indices de la tabla `opResParFoda`
--
ALTER TABLE `opResParFoda`
  ADD PRIMARY KEY (`idResParFoda`),
  ADD KEY `idxResParFoda` (`idResParFoda`);

--
-- Indices de la tabla `opUsrTemp`
--
ALTER TABLE `opUsrTemp`
  ADD PRIMARY KEY (`idUsrtmp`),
  ADD KEY `idxUrstmp` (`idUsrtmp`);

--
-- Indices de la tabla `relEntPro`
--
ALTER TABLE `relEntPro`
  ADD PRIMARY KEY (`idRelEntPro`),
  ADD KEY `idxRelEntPro` (`idRelEntPro`);

--
-- Indices de la tabla `relEntPuesto`
--
ALTER TABLE `relEntPuesto`
  ADD PRIMARY KEY (`idRelEntPst`),
  ADD KEY `idxRelEntPst` (`idRelEntPst`);

--
-- Indices de la tabla `relIndFicha`
--
ALTER TABLE `relIndFicha`
  ADD PRIMARY KEY (`idRelIndFicha`),
  ADD KEY `idxRelIndFicha` (`idRelIndFicha`);

--
-- Indices de la tabla `relIndPro`
--
ALTER TABLE `relIndPro`
  ADD PRIMARY KEY (`idRelIndPro`),
  ADD KEY `idxRelIndPro` (`idRelIndPro`);

--
-- Indices de la tabla `relProgPro`
--
ALTER TABLE `relProgPro`
  ADD PRIMARY KEY (`idRelProgPro`),
  ADD KEY `idxRelProgPro` (`idRelProgPro`);

--
-- Indices de la tabla `relUsrEmp`
--
ALTER TABLE `relUsrEmp`
  ADD PRIMARY KEY (`idRelUsrEmp`),
  ADD KEY `idxRelUsrEmp` (`idRelUsrEmp`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `catColonias`
--
ALTER TABLE `catColonias`
  MODIFY `idColonia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3136;
--
-- AUTO_INCREMENT de la tabla `catConfiguraciones`
--
ALTER TABLE `catConfiguraciones`
  MODIFY `idConfiguracion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `catEntidades`
--
ALTER TABLE `catEntidades`
  MODIFY `idEntidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `catEstOpe`
--
ALTER TABLE `catEstOpe`
  MODIFY `idEstOpe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `catIndicadores`
--
ALTER TABLE `catIndicadores`
  MODIFY `idIndicador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `catNiveles`
--
ALTER TABLE `catNiveles`
  MODIFY `idNivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `catObjEst`
--
ALTER TABLE `catObjEst`
  MODIFY `idObjEst` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `catObjOpe`
--
ALTER TABLE `catObjOpe`
  MODIFY `idObjOpe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `catProcesos`
--
ALTER TABLE `catProcesos`
  MODIFY `idProceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `catPuestos`
--
ALTER TABLE `catPuestos`
  MODIFY `idPuesto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `catTEntidades`
--
ALTER TABLE `catTEntidades`
  MODIFY `idTEntidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `catUnidades`
--
ALTER TABLE `catUnidades`
  MODIFY `idUnidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `catUsuarios`
--
ALTER TABLE `catUsuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `catVehiculos`
--
ALTER TABLE `catVehiculos`
  MODIFY `idVehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `opActividades`
--
ALTER TABLE `opActividades`
  MODIFY `idActividad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `opCedulas`
--
ALTER TABLE `opCedulas`
  MODIFY `idCedula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `opClientes`
--
ALTER TABLE `opClientes`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `opEficAct`
--
ALTER TABLE `opEficAct`
  MODIFY `idEficAct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `opEficEst`
--
ALTER TABLE `opEficEst`
  MODIFY `idEficEst` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `opEficGas`
--
ALTER TABLE `opEficGas`
  MODIFY `idEficGas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `opEficOE`
--
ALTER TABLE `opEficOE`
  MODIFY `idEficOE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `opEficOO`
--
ALTER TABLE `opEficOO`
  MODIFY `idEficOO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `opEficPro`
--
ALTER TABLE `opEficPro`
  MODIFY `idEficPro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `opEjecAct`
--
ALTER TABLE `opEjecAct`
  MODIFY `idEjecAct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `opEjecEst`
--
ALTER TABLE `opEjecEst`
  MODIFY `idEjecEst` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `opEjecGas`
--
ALTER TABLE `opEjecGas`
  MODIFY `idEjecGas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `opEjecOE`
--
ALTER TABLE `opEjecOE`
  MODIFY `idEjecOE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `opEjecOO`
--
ALTER TABLE `opEjecOO`
  MODIFY `idEjecOO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `opEjecPro`
--
ALTER TABLE `opEjecPro`
  MODIFY `idEjecPro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `opEjecuciones`
--
ALTER TABLE `opEjecuciones`
  MODIFY `idEjecucion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `opEmpleados`
--
ALTER TABLE `opEmpleados`
  MODIFY `idEmpleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `opEscalas`
--
ALTER TABLE `opEscalas`
  MODIFY `idEscala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `opEvaluaciones`
--
ALTER TABLE `opEvaluaciones`
  MODIFY `idEvaluacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `opEvidencias`
--
ALTER TABLE `opEvidencias`
  MODIFY `idEvidencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `opFactores`
--
ALTER TABLE `opFactores`
  MODIFY `idFactor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `opFichasProcesos`
--
ALTER TABLE `opFichasProcesos`
  MODIFY `idFicha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `opMovGas`
--
ALTER TABLE `opMovGas`
  MODIFY `idMovGas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `opProgAct`
--
ALTER TABLE `opProgAct`
  MODIFY `idProgAct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `opProgEst`
--
ALTER TABLE `opProgEst`
  MODIFY `idProgEst` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `opProgGas`
--
ALTER TABLE `opProgGas`
  MODIFY `idProgGas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `opProgOE`
--
ALTER TABLE `opProgOE`
  MODIFY `idProgOE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `opProgOO`
--
ALTER TABLE `opProgOO`
  MODIFY `idProgOO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `opProgPro`
--
ALTER TABLE `opProgPro`
  MODIFY `idProgPro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `opProgramas`
--
ALTER TABLE `opProgramas`
  MODIFY `idPrograma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `opResParFoda`
--
ALTER TABLE `opResParFoda`
  MODIFY `idResParFoda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `opUsrTemp`
--
ALTER TABLE `opUsrTemp`
  MODIFY `idUsrtmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `relEntPro`
--
ALTER TABLE `relEntPro`
  MODIFY `idRelEntPro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `relEntPuesto`
--
ALTER TABLE `relEntPuesto`
  MODIFY `idRelEntPst` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `relIndFicha`
--
ALTER TABLE `relIndFicha`
  MODIFY `idRelIndFicha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `relIndPro`
--
ALTER TABLE `relIndPro`
  MODIFY `idRelIndPro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `relProgPro`
--
ALTER TABLE `relProgPro`
  MODIFY `idRelProgPro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `relUsrEmp`
--
ALTER TABLE `relUsrEmp`
  MODIFY `idRelUsrEmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
