-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-02-2015 a las 09:36:36
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tiendaonline`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
`id` int(100) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  `telefono` int(12) DEFAULT NULL,
  `movil` int(12) DEFAULT NULL,
  `fax` varchar(12) DEFAULT NULL,
  `direccioncalle` varchar(255) DEFAULT NULL,
  `codigo_postal` varchar(255) DEFAULT NULL,
  `poblacion` varchar(255) DEFAULT NULL,
  `pais` varchar(255) DEFAULT NULL,
  `dninif` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellidos`, `email`, `usuario`, `contrasena`, `telefono`, `movil`, `fax`, `direccioncalle`, `codigo_postal`, `poblacion`, `pais`, `dninif`) VALUES
(1, 'jose vicente', 'carratala sanchez', '', 'jocarsa', 'jocarsa', 345348, 344123, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'juan', 'lopez', 'info@info.com', 'juan', 'lopez', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'israel', 'aguirre', 'info@info.com', '', '', 0, 0, '', '', '', '', '', ''),
(5, 'armando', 'lopez', 'neo@las.com', '', '', 0, 0, '', '', '', '', '', ''),
(7, 'asd', 'qweqwe', 'qwe@wiqwe.com', 'dasd', 'asdas', 0, 0, '', '', '', '', '', ''),
(8, 'jaime', 'garcia', '', 'jaime', 'garcia', 0, 0, '', '', '', '', '', ''),
(9, '', '', '', '', '', 0, 0, '', '', '', '', '', ''),
(10, 'c', 'd', 'e', 'a', 'b', 0, 0, '', '', '', '', '', ''),
(11, 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 0, 0, '', '', '', '', '', ''),
(14, 'hj', 'hjjh', 'hj', 'jocarsa2', 'kjsakj', 0, 0, '', '', '', '', '', ''),
(15, 'nuevo', 'nuevo', 'nuevo', 'nuevo', 'nuevo', 0, 0, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenesproductos`
--

CREATE TABLE IF NOT EXISTS `imagenesproductos` (
`id` int(100) NOT NULL,
  `id_producto` int(100) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `imagenesproductos`
--

INSERT INTO `imagenesproductos` (`id`, `id_producto`, `imagen`, `titulo`, `descripcion`) VALUES
(1, 1, 'lampara1a.png', 'titulo 1', 'descripcion 1'),
(2, 1, 'lampara1b.png', 'titulo de la segunda imagen', 'descripcion'),
(3, 2, 'lampara2a.png', 'titulo 2', 'descripcion de lampara 2'),
(4, 2, 'lampara2b.png', 'titulo', 'descripcion'),
(5, 3, 'lampara3a.png', 'titulo 3', 'descripcion de lamapara '),
(6, 3, 'lampara3b.png', 'titulo ', 'descripcion'),
(7, 7, '', '', ''),
(8, 8, 'infantil2.jpg', '', ''),
(9, 9, 'infantil2.jpg', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineaspedido`
--

CREATE TABLE IF NOT EXISTS `lineaspedido` (
`id` int(100) NOT NULL,
  `id_pedido` int(100) DEFAULT NULL,
  `id_producto` int(100) DEFAULT NULL,
  `unidades` int(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `lineaspedido`
--

INSERT INTO `lineaspedido` (`id`, `id_pedido`, `id_producto`, `unidades`) VALUES
(3, 7, 1, 1),
(4, 7, 2, 1),
(5, 7, 3, 1),
(6, 8, 1, 1),
(7, 8, 2, 1),
(8, 8, 3, 1),
(9, 9, 1, 1),
(10, 9, 2, 1),
(11, 9, 3, 1),
(12, 10, 1, 1),
(13, 10, 2, 1),
(14, 10, 3, 1),
(15, 11, 1, 1),
(16, 11, 2, 1),
(17, 11, 3, 1),
(18, 12, 1, 1),
(19, 12, 2, 1),
(20, 12, 3, 1),
(21, 12, 1, 1),
(22, 13, 1, 1),
(23, 13, 2, 1),
(24, 13, 3, 1),
(25, 13, 1, 1),
(26, 14, 1, 1),
(27, 14, 2, 1),
(28, 14, 3, 1),
(29, 14, 1, 1),
(30, 15, 1, 1),
(31, 15, 1, 1),
(32, 16, 1, 1),
(33, 16, 1, 1),
(34, 17, 1, 1),
(35, 17, 2, 1),
(36, 18, 1, 1),
(37, 18, 2, 1),
(38, 19, 1, 1),
(39, 19, 2, 1),
(40, 20, 3, 1),
(41, 20, 3, 1),
(42, 20, 3, 1),
(43, 21, 3, 1),
(44, 21, 3, 1),
(45, 21, 3, 1),
(46, 22, 3, 1),
(47, 22, 3, 1),
(48, 22, 3, 1),
(49, 23, 3, 1),
(50, 23, 3, 1),
(51, 23, 3, 1),
(52, 24, 1, 1),
(53, 25, 1, 1),
(54, 25, 2, 1),
(55, 25, 3, 1),
(56, 26, 2, 1),
(57, 26, 2, 1),
(58, 27, 3, 1),
(59, 27, 3, 1),
(60, 27, 3, 1),
(61, 27, 3, 1),
(62, 27, 3, 1),
(63, 27, 3, 1),
(64, 27, 3, 1),
(65, 27, 3, 1),
(66, 27, 3, 1),
(67, 27, 3, 1),
(68, 28, 1, 1),
(69, 28, 2, 1),
(70, 28, 3, 1),
(71, 28, 3, 1),
(72, 28, 3, 1),
(73, 28, 3, 1),
(74, 29, 2, 1),
(75, 29, 1, 1),
(76, 29, 1, 1),
(77, 29, 2, 1),
(78, 29, 3, 1),
(79, 30, 1, 1),
(80, 30, 1, 1),
(81, 30, 1, 1),
(82, 30, 1, 1),
(83, 30, 1, 1),
(84, 30, 1, 1),
(85, 30, 2, 1),
(86, 30, 2, 1),
(87, 30, 2, 1),
(88, 30, 3, 1),
(89, 31, 1, 1),
(90, 31, 1, 1),
(91, 31, 1, 1),
(92, 31, 1, 1),
(93, 31, 1, 1),
(94, 32, 2, 1),
(95, 32, 1, 1),
(96, 32, 3, 1),
(97, 32, 2, 1),
(98, 32, 1, 1),
(99, 33, 1, 1),
(100, 33, 2, 1),
(101, 33, 3, 1),
(102, 33, 2, 1),
(103, 33, 1, 1),
(104, 34, 1, 1),
(105, 34, 2, 1),
(106, 34, 3, 1),
(107, 34, 2, 1),
(108, 34, 1, 1),
(109, 35, 2, 0),
(110, 36, 2, 0),
(111, 36, 3, 0),
(112, 37, 2, 3),
(113, 37, 3, 1),
(114, 38, 2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE IF NOT EXISTS `pedidos` (
`id` int(100) NOT NULL,
  `id_cliente` int(100) DEFAULT NULL,
  `fecha` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `id_cliente`, `fecha`, `estado`) VALUES
(2, 1, '1424406495', '0'),
(3, 1, '1424406592', '2'),
(4, 2, '1424406689', '2'),
(5, 2, '1424407206', '0'),
(6, 2, '1424407452', '1'),
(7, 1, '1424408453', '1'),
(8, 2, '1424413132', '1'),
(9, 1, '1424413275', '2'),
(10, 1, '1424413357', '0'),
(11, 1, '1424413424', '0'),
(12, 1, '1424413458', '1'),
(13, 1, '1424413483', '0'),
(14, 2, '1424413627', '1'),
(15, 1, '1424413702', '0'),
(16, 1, '1424413719', '0'),
(17, 2, '1424413866', '2'),
(18, 2, '1424414173', '1'),
(19, 2, '1424414393', '0'),
(20, 2, '1424414597', '1'),
(21, 1, '1424414649', '0'),
(22, 1, '1424414821', '0'),
(23, 1, '1424415033', '1'),
(24, 1, '1424415604', '0'),
(25, 1, '1424415646', '1'),
(26, 1, '1424424080', '0'),
(27, 2, '1424424174', '0'),
(28, 3, '1424424238', '0'),
(29, 2, '1424510606', '0'),
(30, 8, '1424925854', '1'),
(31, 11, '1424930438', '0'),
(32, 12, '1424931031', '0'),
(33, 13, '1424931150', '0'),
(34, 14, '1424931438', '0'),
(35, 1, '1424933004', '0'),
(36, 1, '1424933148', '0'),
(37, 1, '1424933360', '0'),
(38, 15, '1424933448', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
`id` int(100) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio` decimal(30,2) DEFAULT NULL,
  `peso` int(255) DEFAULT NULL,
  `longitud` int(255) DEFAULT NULL,
  `anchura` int(255) DEFAULT NULL,
  `altura` int(255) DEFAULT NULL,
  `existencias` int(255) DEFAULT NULL,
  `activado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `peso`, `longitud`, `anchura`, `altura`, `existencias`, `activado`) VALUES
(1, 'lampara icosaedro', 'descripcion de lampara icosaedro', '20.00', 1, 20, 20, 20, 14, 1),
(2, 'lampara cubo', 'esta es la descripcion de lampara cubo', '25.00', 1, 25, 25, 25, 15, 1),
(3, 'lampara estrella', 'descripcion de lampara estrella', '25.00', 1, 20, 20, 20, 6, 1),
(9, 'Lampara Infantil', '', '20.00', 1, 11, 11, 11, 20, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE IF NOT EXISTS `registros` (
  `utc` int(100) NOT NULL,
  `anio` int(4) NOT NULL,
  `mes` int(2) NOT NULL,
  `dias` int(2) NOT NULL,
  `hora` int(2) NOT NULL,
  `minuto` int(2) NOT NULL,
  `segundo` int(2) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `navegador` varchar(255) NOT NULL,
  `pagina` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`utc`, `anio`, `mes`, `dias`, `hora`, `minuto`, `segundo`, `ip`, `navegador`, `pagina`) VALUES
(1424840960, 2015, 2, 25, 6, 9, 20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/'),
(1424925832, 2015, 2, 26, 5, 43, 52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/'),
(1424925847, 2015, 2, 26, 5, 44, 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/confirmar.php'),
(1424925860, 2015, 2, 26, 5, 44, 20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424926123, 2015, 2, 26, 5, 48, 43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/confirmar.php'),
(1424926202, 2015, 2, 26, 5, 50, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/confirmar.php'),
(1424926218, 2015, 2, 26, 5, 50, 18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/confirmar.php'),
(1424926233, 2015, 2, 26, 5, 50, 33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/confirmar.php'),
(1424926236, 2015, 2, 26, 5, 50, 36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/confirmar.php'),
(1424926399, 2015, 2, 26, 5, 53, 19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424926446, 2015, 2, 26, 5, 54, 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424926451, 2015, 2, 26, 5, 54, 11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/confirmar.php'),
(1424926461, 2015, 2, 26, 5, 54, 21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424926530, 2015, 2, 26, 5, 55, 30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/confirmar.php'),
(1424926535, 2015, 2, 26, 5, 55, 35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424926695, 2015, 2, 26, 5, 58, 15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/confirmar.php'),
(1424926700, 2015, 2, 26, 5, 58, 20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424926872, 2015, 2, 26, 6, 1, 12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424926877, 2015, 2, 26, 6, 1, 17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/confirmar.php'),
(1424926891, 2015, 2, 26, 6, 1, 31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424930420, 2015, 2, 26, 7, 0, 20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/confirmar.php'),
(1424930443, 2015, 2, 26, 7, 0, 43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424930947, 2015, 2, 26, 7, 9, 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424930970, 2015, 2, 26, 7, 9, 30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424930986, 2015, 2, 26, 7, 9, 46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/confirmar.php'),
(1424931021, 2015, 2, 26, 7, 10, 21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/confirmar.php'),
(1424931022, 2015, 2, 26, 7, 10, 22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/confirmar.php'),
(1424931036, 2015, 2, 26, 7, 10, 36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424931127, 2015, 2, 26, 7, 12, 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/producto.php?id=1'),
(1424931129, 2015, 2, 26, 7, 12, 9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424931138, 2015, 2, 26, 7, 12, 18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/confirmar.php'),
(1424931155, 2015, 2, 26, 7, 12, 35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424931313, 2015, 2, 26, 7, 15, 13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424931320, 2015, 2, 26, 7, 15, 20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/confirmar.php'),
(1424931329, 2015, 2, 26, 7, 15, 29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/confirmar.php'),
(1424931407, 2015, 2, 26, 7, 16, 47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/confirmar.php'),
(1424931425, 2015, 2, 26, 7, 17, 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/confirmar.php'),
(1424931443, 2015, 2, 26, 7, 17, 23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424931607, 2015, 2, 26, 7, 20, 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424931665, 2015, 2, 26, 7, 21, 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424931777, 2015, 2, 26, 7, 22, 57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424931832, 2015, 2, 26, 7, 23, 52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424931949, 2015, 2, 26, 7, 25, 49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424932208, 2015, 2, 26, 7, 30, 8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424932209, 2015, 2, 26, 7, 30, 9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424932310, 2015, 2, 26, 7, 31, 50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424932321, 2015, 2, 26, 7, 32, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424932333, 2015, 2, 26, 7, 32, 13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424932352, 2015, 2, 26, 7, 32, 32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424932371, 2015, 2, 26, 7, 32, 51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424932373, 2015, 2, 26, 7, 32, 53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424932373, 2015, 2, 26, 7, 32, 53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424932374, 2015, 2, 26, 7, 32, 54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424932374, 2015, 2, 26, 7, 32, 54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424932375, 2015, 2, 26, 7, 32, 55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424932422, 2015, 2, 26, 7, 33, 42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/producto.php?id=2'),
(1424932424, 2015, 2, 26, 7, 33, 44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424932429, 2015, 2, 26, 7, 33, 49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424932548, 2015, 2, 26, 7, 35, 48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424932552, 2015, 2, 26, 7, 35, 52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424932598, 2015, 2, 26, 7, 36, 38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424932646, 2015, 2, 26, 7, 37, 26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424932655, 2015, 2, 26, 7, 37, 35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424932659, 2015, 2, 26, 7, 37, 39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424932706, 2015, 2, 26, 7, 38, 26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/producto.php?id=2'),
(1424932708, 2015, 2, 26, 7, 38, 28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424932796, 2015, 2, 26, 7, 39, 56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424932823, 2015, 2, 26, 7, 40, 23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424932824, 2015, 2, 26, 7, 40, 24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424932825, 2015, 2, 26, 7, 40, 25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424932825, 2015, 2, 26, 7, 40, 25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424932825, 2015, 2, 26, 7, 40, 25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424932984, 2015, 2, 26, 7, 43, 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424932986, 2015, 2, 26, 7, 43, 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424932992, 2015, 2, 26, 7, 43, 12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/confirmar.php'),
(1424933009, 2015, 2, 26, 7, 43, 29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424933123, 2015, 2, 26, 7, 45, 23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424933141, 2015, 2, 26, 7, 45, 41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/confirmar.php'),
(1424933153, 2015, 2, 26, 7, 45, 53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424933253, 2015, 2, 26, 7, 47, 33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424933253, 2015, 2, 26, 7, 47, 33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424933254, 2015, 2, 26, 7, 47, 34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424933254, 2015, 2, 26, 7, 47, 34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424933254, 2015, 2, 26, 7, 47, 34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424933254, 2015, 2, 26, 7, 47, 34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424933275, 2015, 2, 26, 7, 47, 55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424933281, 2015, 2, 26, 7, 48, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424933316, 2015, 2, 26, 7, 48, 36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424933330, 2015, 2, 26, 7, 48, 50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424933344, 2015, 2, 26, 7, 49, 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424933353, 2015, 2, 26, 7, 49, 13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/confirmar.php'),
(1424933365, 2015, 2, 26, 7, 49, 25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424933435, 2015, 2, 26, 7, 50, 35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/confirmar.php'),
(1424933454, 2015, 2, 26, 7, 50, 54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424933838, 2015, 2, 26, 7, 57, 18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424934952, 2015, 2, 26, 8, 15, 52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424935254, 2015, 2, 26, 8, 20, 54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424935739, 2015, 2, 26, 8, 28, 59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424935766, 2015, 2, 26, 8, 29, 26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424935846, 2015, 2, 26, 8, 30, 46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424935857, 2015, 2, 26, 8, 30, 57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/producto.php?id=9'),
(1424935867, 2015, 2, 26, 8, 31, 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424936610, 2015, 2, 26, 8, 43, 30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424936672, 2015, 2, 26, 8, 44, 32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php'),
(1424938799, 2015, 2, 26, 9, 19, 59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '/x/index.php');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `imagenesproductos`
--
ALTER TABLE `imagenesproductos`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lineaspedido`
--
ALTER TABLE `lineaspedido`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `imagenesproductos`
--
ALTER TABLE `imagenesproductos`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `lineaspedido`
--
ALTER TABLE `lineaspedido`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
