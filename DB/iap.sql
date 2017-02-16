-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-01-2017 a las 17:43:17
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `iap`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` varchar(50) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `precio` double NOT NULL,
  `fecha_publicacion` date NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `autor`, `titulo`, `genero`, `precio`, `fecha_publicacion`, `descripcion`) VALUES
('bk101', 'Gambardella, Matthew', 'XML Developer''s Guide', 'Computer', 42.293455, '2000-10-01', 'An in-depth look at creating applications \n      with XML.'),
('bk102', 'Ralls, Kim', 'Midnight Rain', 'Fantasy', 5.598355, '2000-12-16', 'A former architect battles corporate zombies, \n      an evil sorceress, and her own childhood to become queen \n      of the world.'),
('bk103', 'Corets, Eva', 'Maeve Ascendant', 'Fantasy', 5.598355, '2000-11-17', 'After the collapse of a nanotechnology \n      society in England, the young survivors lay the \n      foundation for a new society.'),
('bk104', 'Corets, Eva', 'Oberon''s Legacy', 'Fantasy', 5.598355, '2001-03-10', 'In post-apocalypse England, the mysterious \n      agent known only as Oberon helps to create a new life \n      for the inhabitants of London. Sequel to Maeve \n      Ascendant.'),
('bk105', 'Corets, Eva', 'The Sundered Grail', 'Fantasy', 5.598355, '2001-09-10', 'The two daughters of Maeve, half-sisters, \n      battle one another for control of England. Sequel to \n      Oberon''s Legacy.'),
('bk106', 'Randall, Cynthia', 'Lover Birds', 'Romance', 4.657455, '2000-09-02', 'When Carla meets Paul at an ornithology \n      conference, tempers fly as feathers get ruffled.'),
('bk107', 'Thurman, Paula', 'Splish Splash', 'Romance', 4.657455, '2000-11-02', 'A deep sea diver finds true love twenty \n      thousand leagues beneath the sea.'),
('bk108', 'Knorr, Stefan', 'Creepy Crawlies', 'Horror', 4.657455, '2000-12-06', 'An anthology of horror stories about roaches,\n      centipedes, scorpions  and other insects.'),
('bk109', 'Kress, Peter', 'Paradox Lost', 'Science Fiction', 6.539255, '2000-11-02', 'After an inadvertant trip through a Heisenberg\n      Uncertainty Device, James Salway discovers the problems \n      of being quantum.'),
('bk110', 'O''Brien, Tim', 'Microsoft .NET: The Programming Bible', 'Computer', 34.766255, '2000-12-09', 'Microsoft''s .NET initiative is explored in \n      detail in this deep programmer''s reference.'),
('bk111', 'O''Brien, Tim', 'MSXML3: A Comprehensive Guide', 'Computer', 34.766255, '2000-12-01', 'The Microsoft MSXML3 parser is covered in \n      detail, with attention to XML DOM interfaces, XSLT processing, \n      SAX and more.'),
('bk112', 'Galos, Mike', 'Visual Studio 7: A Comprehensive Guide', 'Computer', 46.997955, '2001-04-16', 'Microsoft Visual Studio 7 is explored in depth,\n      looking at how Visual Basic, Visual C++, C#, and ASP+ are \n      integrated into a comprehensive development \n      environment.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listas`
--

CREATE TABLE `listas` (
  `grupo` varchar(100) NOT NULL,
  `lista` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `listas`
--

INSERT INTO `listas` (`grupo`, `lista`) VALUES
('Cage The Elephant', 'Lista creada con éxito! Puedes escuchar tu lista en: https://play.spotify.com/user/iap_proyecto/playlist/0dXpid75HjYnpAVzS7KGWo'),
('Frank Carter & The Rattlesnakes', 'Lista creada con éxito! Puedes escuchar tu lista en: https://play.spotify.com/user/iap_proyecto/playlist/0KdBcJbZtfGfx5I8YZEQTE'),
('Parkway Drive', 'Lista creada con éxito! Puedes escuchar tu lista en: https://play.spotify.com/user/iap_proyecto/playlist/3WccwkpLRubTgD8LYzxSKi'),
('Stick To Your Guns', 'Lista creada con éxito! Puedes escuchar tu lista en: https://play.spotify.com/user/iap_proyecto/playlist/3eRFkYEm2G2mtIhoPYIJLI'),
('While She Sleeps', 'Lista creada con éxito! Puedes escuchar tu lista en: https://play.spotify.com/user/iap_proyecto/playlist/5L3LuXInXTXYiOiCuBEmMi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text,
  `latitud` varchar(15) NOT NULL,
  `longitud` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `locations`
--

INSERT INTO `locations` (`id`, `title`, `description`, `latitud`, `longitud`) VALUES
(1, 'Mestalla', 'Camp del Valencia CF', '39.47469', '-0.35929'),
(2, 'UPV', 'Universitat Politecnica de Valencia', '39.4810606', '-0.3482448'),
(3, 'UV - Tarongers', 'Campus Universitat Valencia - Tarongers', '39.4788309', '-0.3432934'),
(26, 'Ajuntament Valencia', 'Ajuntament de Valencia', '39.4696828', '-0.3770182'),
(27, 'Hospital Clinic', 'Avinguda Blasco Ibanyez', '39.4789224', '-0.3618638'),
(28, 'Gulliver', 'Un riu de Xiquets', '39.4619584', '-0.3589439'),
(29, 'La Fe', 'Avinguda Campanar', '39.4838226', '-0.3910784'),
(30, 'Hospital Universitari i Politecnic La Fe', 'Carrer Antonio Ferrandis', '39.4435622', '-0.3759964'),
(31, 'Hospital Clinic', 'Avinguda Blasco Ibanyez', '39.4789224', '-0.3618638'),
(32, 'La Fe', 'Avinguda Campanar', '39.4838226', '-0.3910784'),
(33, 'Hospital Universitari i Politecnic La Fe', 'Carrer dAntonio Ferrandis', '39.4838226', '-0.3910784'),
(34, 'Ajuntament Valencia', 'Ajuntament de Valencia', '39.4696828', '-0.3770182'),
(35, 'Hospital Clinic', 'Avinguda Blasco Ibanyez', '39.4789224', '-0.3618638'),
(36, 'Gulliver', 'Un riu de Xiquets', '39.4619584', '-0.3589439'),
(37, 'La Fe', 'Avinguda Campanar', '39.4838226', '-0.3910784'),
(38, 'Hospital Universitari i Politecnic La Fe', 'Carrer Antonio Ferrandis', '39.4435622', '-0.3759964'),
(39, '?Jardi Botanic', ' "Carrer Quart 80 46008 Valencia SPAIN tel +(34) 963 15 68 00 botanic@uv.es"', ' 39.4759701', ' -0.3865487'),
(40, '\nViveros', ' "SAN PIO V s/n 46010 VALENCIA Telefono: 96.352.54.78 Ext.4304" ', '39.4804005', '-0.3672582'),
(41, '\nParc Capçalera', ' "Av. Pius Baroja s/n Campanar València"', ' 39.4750508', '-0.4086822'),
(42, 'Hospital Clinic', 'Avinguda Blasco Ibanyez', '39.4789224', '-0.3618638'),
(43, 'Ajuntament Valencia', 'Ajuntament de Valencia', '39.4696828', '-0.3770182'),
(44, 'La Fe', 'Avinguda Campanar', '39.4838226', '-0.3910784'),
(45, 'Gulliver', 'Un riu de Xiquets', '39.4619584', '-0.3589439'),
(46, 'Hospital Universitari i Politecnic La Fe', 'Carrer Antonio Ferrandis', '39.4435622', '-0.3759964'),
(47, 'Ajuntament Valencia', 'Ajuntament de Valencia', '39.4696828', '-0.3770182'),
(48, 'Hospital Clinic', 'Avinguda Blasco Ibanyez', '39.4789224', '-0.3618638'),
(49, 'Gulliver', 'Un riu de Xiquets', '39.4619584', '-0.3589439'),
(50, 'La Fe', 'Avinguda Campanar', '39.4838226', '-0.3910784'),
(51, 'Hospital Universitari i Politecnic La Fe', 'Carrer Antonio Ferrandis', '39.4435622', '-0.3759964'),
(52, 'Hospital Clinic', 'Avinguda Blasco Ibanyez', '39.4789224', '-0.3618638'),
(53, 'Ajuntament Valencia', 'Ajuntament de Valencia', '39.4696828', '-0.3770182'),
(54, 'La Fe', 'Avinguda Campanar', '39.4838226', '-0.3910784'),
(55, 'Gulliver', 'Un riu de Xiquets', '39.4619584', '-0.3589439'),
(56, 'Hospital Universitari i Politecnic La Fe', 'Carrer Antonio Ferrandis', '39.4435622', '-0.3759964');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `id` int(11) NOT NULL,
  `texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`id`, `texto`) VALUES
(1, '\r\nMi sastre es rico.\r\nDebajo de la mesa tiene la mano María.\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajos`
--

CREATE TABLE `trabajos` (
  `dni` varchar(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subido` tinyint(1) DEFAULT '0',
  `fecha` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `trabajos`
--

INSERT INTO `trabajos` (`dni`, `nombre`, `apellidos`, `email`, `subido`, `fecha`) VALUES
('12312311', 'Juan', 'Rodrigues', 'jorcabro@etsii.upv.es', 0, NULL),
('12312312', 'Pedro', 'Sanchez', 'jorcabro@etsii.upv.es', 0, NULL),
('test', 'jorge', 'cabrera', 'jorge-1000@hotmail.com', 0, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `trabajos`
--
ALTER TABLE `trabajos`
  ADD PRIMARY KEY (`dni`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
