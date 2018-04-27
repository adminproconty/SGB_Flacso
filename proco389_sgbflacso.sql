-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-04-2018 a las 01:46:00
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proco389_sgbflacso`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categorias` int(11) NOT NULL,
  `nombre_categoria` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categorias`, `nombre_categoria`) VALUES
(1, 'Productos de sal'),
(2, 'Productos de dulce'),
(3, 'Almuerzos'),
(4, 'Desayunos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(255) CHARACTER SET utf8 NOT NULL,
  `documento_cliente` varchar(20) CHARACTER SET utf8 NOT NULL,
  `telefono_cliente` char(30) CHARACTER SET utf8 NOT NULL,
  `email_cliente` varchar(64) CHARACTER SET utf8 NOT NULL,
  `direccion_cliente` varchar(255) CHARACTER SET utf8 NOT NULL,
  `status_cliente` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `codigo` varchar(10) CHARACTER SET utf8 NOT NULL,
  `saldo_cliente` decimal(10,2) NOT NULL,
  `descuento` float NOT NULL,
  `empresa_cliente` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre_cliente`, `documento_cliente`, `telefono_cliente`, `email_cliente`, `direccion_cliente`, `status_cliente`, `date_added`, `codigo`, `saldo_cliente`, `descuento`, `empresa_cliente`) VALUES
(1, 'ABAD PEÃ‘A  ALONSO ANTONIO', '1105054256', '9999999', 'alonso.abad@asur.ec', 'LOJA', 1, '0000-00-00 00:00:00', '1454', '0.00', 0.11, 1),
(2, 'ABASCAL FERRO  ALEXANDRE ANTONIO', '1104701766', '9999999', 'alexandre.abascal@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '151', '0.00', 0.11, 1),
(3, 'ACARO BRAVO  ALISSON GABRIELA', '1723295554', '9999999', 'alisson.acaro@asur.ec', 'QUITO SUR', 1, '0000-00-00 00:00:00', '1398', '0.00', 0.11, 1),
(4, 'ACOSTA ACOSTA  JOSE ANTONIO', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1205', '0.00', 0.11, 1),
(5, 'ACUÃ‘A GUANOLUISA  MARICELA NATALY', '1717351256', '9999999', 'nataly.acuna@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1213', '0.00', 0.11, 1),
(6, 'AGUIRRE CADENA  ALFREDO EDWIN', '1719195909', '9999999', 'alfredo.aguirre@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1325', '0.00', 0.11, 1),
(7, 'ALARCON ORTIZ  ADRIANA CAROLINA', '2300227861', '9999999', 'adriana.alarcon@asur.ec', 'SDOMINGO', 1, '0000-00-00 00:00:00', '1331', '0.00', 0.11, 1),
(8, 'ALBAN FLORES  DARIO JAVIER', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1285', '0.00', 0.11, 1),
(9, 'ALBORNOZ DE MARIN  LINETH FABIOLA', '1758131013', '9999999', 'lineth.albornoz@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1289', '0.00', 0.11, 1),
(10, 'ALBUJA SANCHEZ  JOHANNA ESTEFANIA', '1715617039', '9999999', 'johanna.albuja@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1425', '0.00', 0.11, 1),
(11, 'ALIANZA CHASI  FREDDY GUSTAVO', '1712858032', '9999999', 'freddy.alianza@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '2', '0.00', 0.11, 1),
(12, 'ALMACHE FLORES  LORENA GABRIELA', '1803526993', '9999999', 'lorena.almache@asur.ec', 'AMBATO', 1, '0000-00-00 00:00:00', '863', '0.00', 0.11, 1),
(13, 'ALVARADO RAMIREZ  JANETH KATHERINE', '703748186', '9999999', 'janeth.alvarado@asur.ec', 'MACHALA', 1, '0000-00-00 00:00:00', '5', '0.00', 0.11, 1),
(14, 'ALVAREZ DELGADO  JENNIFER GEMA', '1314679281', '9999999', 'jennifer.alvarez@asur.ec', 'PORTOVIEJO', 1, '0000-00-00 00:00:00', '1407', '0.00', 0.11, 1),
(15, 'ALVEAR HIDALGO  MELY CAROLINA', '603324385', '9999999', 'mely.alvear@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1471', '0.00', 0.11, 1),
(16, 'AMAGUAÃ‘A ILES  MONICA MARIELA', '1721142501', '9999999', 'monica.amaguana@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '425', '0.00', 0.11, 1),
(17, 'ANCHUNDIA BUSTAMANTE  DEIFILIA NATALI', '1720325883', '9999999', 'natali.anchundia@asur.ec', 'SDOMINGO', 1, '0000-00-00 00:00:00', '639', '0.00', 0.11, 1),
(18, 'ANDOCILLA ARTIEDA  JOEL ANDRES', '1718305103', '9999999', 'joelandocilla@hotmail.com', 'QUITO', 1, '0000-00-00 00:00:00', '1442', '0.00', 0.11, 1),
(19, 'ANDRADE BADILLO  ERICK ANDRES', '1721394219', '9999999', 'erick.andrade@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1383', '0.00', 0.11, 1),
(20, 'ANDRADE FLORES  GABRIEL FERNANDO', '1724234370', '9999999', 'gabriel.andrade@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1061', '0.00', 0.11, 1),
(21, 'ANDRADE HENAO  RICARDO XAVIER', '1714335682', '9999999', 'ricardo.andrade@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '288', '0.00', 0.11, 1),
(22, 'ANDRADE MENDOZA  GIOVANNY XAVIER', '1717637225', '9999999', 'giovanny.andrade@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1389', '0.00', 0.11, 1),
(23, 'ANDRADE RECALDE  BETHZABETH IVONNE', '1002838975', '9999999', 'ivonne.andrade@asur.ec', 'IBARRA', 1, '0000-00-00 00:00:00', '862', '0.00', 0.11, 1),
(24, 'ANDRADE RECALDE  PAOLA DEYANIRA', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1260', '0.00', 0.11, 1),
(25, 'ANDRADE TAMAYO  XIMENA GABRIELA', '1723730824', '9999999', 'ximena.andrade@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1014', '0.00', 0.11, 1),
(26, 'ANDRADE VASQUEZ  ANDREA NICOLE', '1712849544', '9999999', 'andrea.andrade@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1191', '0.00', 0.11, 1),
(27, 'ANDRADE WITT  STEFANIA DENISSE', '917200339', '9999999', 'stefania.andrade@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1068', '0.00', 0.11, 1),
(28, 'ANGULO VILLACIS  LENNY CAROL', '1712351590', '9999999', 'lenny.angulo@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '156', '0.00', 0.11, 1),
(29, 'ARANGO PERDOMO  ANDREA PATRICIA', '8170049228', '9999999', 'andrea.arango@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1039', '0.00', 0.11, 1),
(30, 'ARCOS DELGADO  HENRY OSWALDO', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1418', '0.00', 0.11, 1),
(31, 'ARIAS SANTAFE  IVIN EUNICE', '1717712663', '9999999', 'ivin.arias@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '980', '0.00', 0.11, 1),
(32, 'ARMIJOS CRIOLLO  KAREN MARIANELA', '1103493258', '9999999', 'karen.armijos@asur.ec', 'LOJA', 1, '0000-00-00 00:00:00', '497', '0.00', 0.11, 1),
(33, 'ARTEAGA GENDE  MARCIA RAQUEL', '1311508103', '9999999', 'marcia.arteaga@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1037', '0.00', 0.11, 1),
(34, 'AULESTIA CRUZ  ERIKA GERMANIA', '1715679203', '9999999', 'erika.aulestia@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1332', '0.00', 0.11, 1),
(35, 'BARRAGAN ESPINOZA  GRACE ELIZABETH', '1305900431', '9999999', 'grace.barragan@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1371', '0.00', 0.11, 1),
(36, 'BASTIDAS RUALES  JUAN CARLOS', '1003987805', '9999999', 'juan.bastidas@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1436', '0.00', 0.11, 1),
(37, 'BELTRAN OCAMPOS  NELLY MARGOTH', '1712107109', '9999999', 'nelly.beltran@asur.ec', 'SDOMINGO', 1, '0000-00-00 00:00:00', '861', '0.00', 0.11, 1),
(38, 'BENITEZ GAIBOR  ALVARO VLADIMIR', '1804331799', '9999999', 'alvaro.benitez@asur.ec', 'AMBATO', 1, '0000-00-00 00:00:00', '1138', '0.00', 0.11, 1),
(39, 'BERMEO GARAY  JULIO CESAR', '704378801', '9999999', 'julio.bermeo@asur.ec', 'MACHALA', 1, '0000-00-00 00:00:00', '1181', '0.00', 0.11, 1),
(40, 'BERMUDEZ MENDOZA  FATIMA DE LOS ANGELES', '1307137594', '9999999', 'fatima.bermudez@asur.ec', 'PORTOVIEJO', 1, '0000-00-00 00:00:00', '496', '0.00', 0.11, 1),
(41, 'BERRONES CEPEDA  NANCY LUCIA', '603531310', '9999999', 'nancy.berrones@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '840', '0.00', 0.11, 1),
(42, 'BOHORQUEZ PASPUEL  CESAR VICENTE', '1002076014', '9999999', 'cesar.bohorquez@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '620', '0.00', 0.11, 1),
(43, 'BOHORQUEZ ZUÃ‘IGA  CARLA BELEN', '923886477', '9999999', 'carla.bohorquez@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '693', '0.00', 0.11, 1),
(44, 'BOJANIC SORNOZA  MIRKO DANILO', '1308448792', '9999999', 'mirko.bojanic@asur.ec', 'MANTA', 1, '0000-00-00 00:00:00', '1174', '0.00', 0.11, 1),
(45, 'BOLAÃ‘OS VILLAMAR  JOHANNA FERNANDA', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1202', '0.00', 0.11, 1),
(46, 'BONILLA FERNANDEZ  ADRIAN ANDRES', '1717545956', '9999999', 'andres.bonilla@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1080', '0.00', 0.11, 1),
(47, 'BONILLA GUEVARA  SANTIAGO WLADIMIR', '1718048265', '9999999', 'santiago.bonilla@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1397', '0.00', 0.11, 1),
(48, 'BONILLA JARA  WILLIAM FABRICIO', '201424710', '9999999', 'william.bonilla@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '453', '0.00', 0.11, 1),
(49, 'BORJA BORJA  HENRRY PATRICIO', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1261', '0.00', 0.11, 1),
(50, 'BRITO BUELE  TANIA FERNANDA', '104283403', '9999999', 'tania.brito@asur.ec', 'CUENCA', 1, '0000-00-00 00:00:00', '647', '0.00', 0.11, 1),
(51, 'CABEZAS DOMINGUEZ  OSCAR DANIEL', '604243758', '9999999', 'oscar.cabezas@asur.ec', 'RIOBAMBA', 1, '0000-00-00 00:00:00', '1197', '0.00', 0.11, 1),
(52, 'CABRERA GONZALEZ  PAOLA MERCEDES', '1104170723', '9999999', 'paola.cabrera@asur.ec', 'LOJA', 1, '0000-00-00 00:00:00', '1186', '0.00', 0.11, 1),
(53, 'CABRERA MURILLO  VERONICA DIOSELINA', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1263', '0.00', 0.11, 1),
(54, 'CAICEDO RAMIREZ  IVAN EUSTORGIO', '1707620785', '9999999', 'ivcaiced@gmail.com', 'QUITO', 1, '0000-00-00 00:00:00', '520', '0.00', 0.11, 1),
(55, 'CAJAPE HERNANDEZ  DANNY OLAN', '1310487580', '9999999', 'danny.cajape@asur.ec', 'MANTA', 1, '0000-00-00 00:00:00', '478', '0.00', 0.11, 1),
(56, 'CALDERON RODRIGUEZ  ANDREA ESTEFANIA', '1726024233', '9999999', 'andrea.calderon@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1301', '0.00', 0.11, 1),
(57, 'CALDERON SERRANO  PATRICIA ISABEL', '1707282412', '9999999', 'patricia.calderon@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '22', '0.00', 0.11, 1),
(58, 'CAMACHO GARCES  MARCO ALBERTO', '1715361752', '9999999', 'alberto.camacho@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '731', '0.00', 0.11, 1),
(59, 'CAMAÃ‘ERO VILEMA  MAURICIO ANDRES', '603536558', '9999999', 'mauricio.camanero@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1439', '0.00', 0.11, 1),
(60, 'CAMPAÃ‘A DE LA TORRE  DIANA ELIZABETH', '1720870326', '9999999', 'diana.campana@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '379', '0.00', 0.11, 1),
(61, 'CANTOS VERA  MANUEL AUGUSTO', '1307356806', '9999999', 'manuel.cantos@asur.ec', 'PORTOVIEJO', 1, '0000-00-00 00:00:00', '165', '0.00', 0.11, 1),
(62, 'CARPIO ROSALES  KARINA DEL CARMEN', '703577163', '9999999', 'karina.carpio@asur.ec', 'MACHALA', 1, '0000-00-00 00:00:00', '1307', '0.00', 0.11, 1),
(63, 'CARRERA CARRERA  CARLOS ENRIQUE', '1704323524', '9999999', 'carlos.carrera@asur.ec', 'AMBATO', 1, '0000-00-00 00:00:00', '28', '0.00', 0.11, 1),
(64, 'CARVAJAL CASTRO  NATALIA FERNANDA', '1718346370', '9999999', 'natalia.carvajal@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1140', '0.00', 0.11, 1),
(65, 'CASTILLO BARROS  RAMIRO EDUARDO', '1712750692', '9999999', 'ramiro.castillo@asur.ec', 'SDOMINGO', 1, '0000-00-00 00:00:00', '29', '0.00', 0.11, 1),
(66, 'CASTILLO LESCANO  INES FERNANDA ', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1264', '0.00', 0.11, 1),
(67, 'CASTILLO MALTA  HENRY RAFAEL', '1718302290', '9999999', 'henry.castillo@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1426', '0.00', 0.11, 1),
(68, 'CASTILLO PLAZA  ALICIA ELIZABETH', '1717168106', '9999999', 'elizabeth.castillo@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '758', '0.00', 0.11, 1),
(69, 'CASTILLO SHUGULI  TANIA DEL CARMEN', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1265', '0.00', 0.11, 1),
(70, 'CEDEÃ‘O DELGADO  OSCAR REIMAR', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1210', '0.00', 0.11, 1),
(71, 'CEDEÃ‘O GARCIA  LAURA ESTEFANIA', '925653511', '9999999', 'laura.cedeno@asur.ec', 'EL COCA', 1, '0000-00-00 00:00:00', '774', '0.00', 0.11, 1),
(72, 'CEDEÃ‘O MORAN  ALEXANDER JAVIER', '1720500360', '9999999', 'alexander.cedeno@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1131', '0.00', 0.11, 1),
(73, 'CEDILLO KIRBY  KENNY BETSAIDA', '1723427850', '9999999', 'betsaida.cedillo@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '824', '0.00', 0.11, 1),
(74, 'CERVANTES GALLEGOS  HUGO VICENTE', '1712384310', '9999999', 'hugo.cervantes@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1380', '0.00', 0.11, 1),
(75, 'CERVANTES PANCHI  EDWIN ANDRES', '1722592092', '9999999', 'edwin.cervantes@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1470', '0.00', 0.11, 1),
(76, 'CEVALLOS BREILH  RODRIGO NEPTALI FERNANDO', '#N/A', '9999999', 'rodrigo.cavallos@asur.ec', '#N/A', 0, '0000-00-00 00:00:00', '168', '0.00', 0.11, 1),
(77, 'CEVALLOS FERRIN  MELVA ALEXANDRA', '1306115765', '9999999', 'melva.cevallos@asur.ec', 'PORTOVIEJO', 1, '0000-00-00 00:00:00', '36', '0.00', 0.11, 1),
(78, 'CEVALLOS GUEVARA  JUAN FERNANDO', '1708225618', '9999999', 'juan.cevallos@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '37', '0.00', 0.11, 1),
(79, 'CEVALLOS GUEVARA  MARIA JOSE', '1710753342', '9999999', 'rodrigo.cavallos@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '170', '0.00', 0.11, 1),
(80, 'CEVALLOS GUEVARA  MARIA SUSANA', '1708170376', '9999999', 'rodrigo.cavallos@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '169', '0.00', 0.11, 1),
(81, 'CEVALLOS GUEVARA  RODRIGO', '1708225626', '9999999', 'rodri.cevallos@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '38', '0.00', 0.11, 1),
(82, 'CEVALLOS GUTIERREZ  RICARDO DAVID', '1714503123', '9999999', 'ricardo.cevallos@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '39', '0.00', 0.11, 1),
(83, 'CEVALLOS PAZMIÃ‘O  JAIME ALBERTO', '1713824363', '9999999', 'jaime.cevallos@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '733', '0.00', 0.11, 1),
(84, 'CHACON VACA  LUIS ERNESTO', '1003342464', '9999999', 'luis.chacon@asur.ec', 'IBARRA', 1, '0000-00-00 00:00:00', '1317', '0.00', 0.11, 1),
(85, 'CHALACAN CHALACAN  SONIA MARLENE', '1002887402', '9999999', 'sonia.chalacan@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '40', '0.00', 0.11, 1),
(86, 'CHALCO ANDRADE  DIANA ELIZABETH', '1722509823', '9999999', 'diana.chalco@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '959', '0.00', 0.11, 1),
(87, 'CHAMAIDAN APOLO  ELOISA MADELAYNE', '706249521', '9999999', 'eloisa.chamaidan@asur.ec', 'MACHALA', 1, '0000-00-00 00:00:00', '1254', '0.00', 0.11, 1),
(88, 'CHAMBA GOMEZ  HOLGER ROLANDO', '1722193313', '9999999', 'holger.chamba@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '956', '0.00', 0.11, 1),
(89, 'CHAMBA LOAIZA  ISAIAS SEGUNDO', '911190171', '9999999', 'segundo.chamba@asur.ec', 'PORTOVIEJO', 1, '0000-00-00 00:00:00', '41', '0.00', 0.11, 1),
(90, 'CHECA PALOMEQUE  DIEGO FERNANDO', '1716182074', '9999999', 'diego.checa@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '492', '0.00', 0.11, 1),
(91, 'CHILUISA HERNANDEZ  LUIS ANDRES', '1002174967', '9999999', 'luis.chiluisa@asur.ec', 'IBARRA', 1, '0000-00-00 00:00:00', '563', '0.00', 0.11, 1),
(92, 'CHIMBORAZO MARTINEZ  JUAN CARLOS', '1803889854', '9999999', 'juan.chimborazo@asur.ec', 'AMBATO', 1, '0000-00-00 00:00:00', '423', '0.00', 0.11, 1),
(93, 'CHOCHO LLIVICURA  IVAN ARNULFO', '703648550', '9999999', 'ivan.chocho@asur.ec', 'CUENCA', 1, '0000-00-00 00:00:00', '856', '0.00', 0.11, 1),
(94, 'CHORLANGO TAIPE  MARCO ANTONIO', '1711455277', '9999999', 'marco.chorlango@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '46', '0.00', 0.11, 1),
(95, 'CONDE RIVERA  SLENDY PATRICIA', '1600502049', '9999999', 'slendy.conde@asur.ec', 'AMBATO', 1, '0000-00-00 00:00:00', '1015', '0.00', 0.11, 1),
(96, 'CONDOR PINEDA  HECTOR FERNANDO', '1711851244', '9999999', 'fernando.condor@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '742', '0.00', 0.11, 1),
(97, 'CORDERO GONZALEZ  JORGE ALBERTO', '1720750783', '9999999', 'jorge.cordero@asur.ec', 'QUITO SUR', 1, '0000-00-00 00:00:00', '1428', '0.00', 0.11, 1),
(98, 'CORDOVA ARANGUREN  BETZIMAR ALEXANDRA', '1758229387', '9999999', 'betzimar.cordova@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1415', '0.00', 0.11, 1),
(99, 'CORDOVA GUTIERREZ  ANAHI BELEN', '1716640204', '9999999', 'anahi.cordova@asur.ec', 'QUITO SUR', 1, '0000-00-00 00:00:00', '1475', '0.00', 0.11, 1),
(100, 'CORREA BUNCE  LILIAN MERCEDES', '1713469706', '9999999', 'lilian.correa@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1194', '0.00', 0.11, 1),
(101, 'CRIOLLO TUPIZA  JUAN FERNANDO', '1722044839', '9999999', 'soporte@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1206', '0.00', 0.11, 1),
(102, 'CRUZ GAMEZ  RUTH CAROLINA', '1722866033', '9999999', 'carolina.cruz@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1023', '0.00', 0.11, 1),
(103, 'CRUZ GARCIA  PAULINA ALEXANDRA', '1714163605', '9999999', 'paulina.cruz@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '499', '0.00', 0.11, 1),
(104, 'CUBI VELASQUEZ  DARWIN HERNAN', '1718531872', '9999999', 'darwin.cubi@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1390', '0.00', 0.11, 1),
(105, 'CUEVA CEVALLOS   PRICILA ESTEFANY ', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1274', '0.00', 0.11, 1),
(106, 'DAVILA COLLAGUAZO  JENNY VICTORIA', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1256', '0.00', 0.11, 1),
(107, 'DAVILA JIMENEZ  ESTEBAN ROBERTO', '1717646994', '9999999', 'esteban.davila@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '340', '0.00', 0.11, 1),
(108, 'DIAZ ALVAREZ  KAREM MARIBEL', '1714135603', '9999999', 'maribel.diaz@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '281', '0.00', 0.11, 1),
(109, 'DIAZ CIFUENTES  JAZMIN DEL ROCIO', '1722101621', '9999999', 'jazmin.diaz@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1419', '0.00', 0.11, 1),
(110, 'DIAZ ESPINOZA  LUZ PATRICIA', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1211', '0.00', 0.11, 1),
(111, 'DIAZ PERUGACHI  MARIA CECILIA', '1003280466', '9999999', 'maria.diaz@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '525', '0.00', 0.11, 1),
(112, 'DONOSO IZQUIERDO  ELSA EUGENIA DEL ROCIO', '1706537451', '9999999', 'elsa.donoso@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1412', '0.00', 0.11, 1),
(113, 'EGAS ACOSTA  PABLO ANDRES', '1716637234', '9999999', 'pablo.egas@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '873', '0.00', 0.11, 1),
(114, 'ENRIQUEZ HUACA  NILO KLEVER', '401252341', '9999999', 'nilo.enriquez@asur.ec', 'IBARRA', 1, '0000-00-00 00:00:00', '969', '0.00', 0.11, 1),
(115, 'ESCALANTE GOMEZ  YESENIA SORAYA', '1311721334', '9999999', 'yesenea.escalante@asur.ec', 'MANTA', 1, '0000-00-00 00:00:00', '1166', '0.00', 0.11, 1),
(116, 'ESCOLA CHALACAN  BLANCA CELIANA', '1705206223', '9999999', 'blanquis.1959@hotmail.com', 'QUITO', 1, '0000-00-00 00:00:00', '396', '0.00', 0.11, 1),
(117, 'ESPARZA VITERI  VANESSA ESTEFANIA', '1311466666', '9999999', 'vanessitaesparza14@gmail.com', 'QUITO', 1, '0000-00-00 00:00:00', '935', '0.00', 0.11, 1),
(118, 'ESPINOSA ALMEIDA  GABRIELA', '1710683499', '9999999', 'gabriela.espinosa@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1480', '0.00', 0.11, 1),
(119, 'ESPINOSA CARPIO  SUSANA DEL ROCIO', '1715306674', '9999999', 'susana.espinosa@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1048', '0.00', 0.11, 1),
(120, 'ESPINOZA MARQUEZ  ANDREA VERONICA', '703347344', '9999999', 'andrea.espinoza@asur.ec', 'MACHALA', 1, '0000-00-00 00:00:00', '694', '0.00', 0.11, 1),
(121, 'ESTRELLA RODRIGUEZ  EDGAR STALIN', '1722967526', '9999999', 'monicaestrella1966@hotmail.com', 'QUITO', 1, '0000-00-00 00:00:00', '452', '0.00', 0.11, 1),
(122, 'EUGENIO JACOME  MONICA PAULINA', '1802982338', '9999999', 'monica.eugenio@asur.ec', 'AMBATO', 1, '0000-00-00 00:00:00', '1474', '0.00', 0.11, 1),
(123, 'FARFAN PALACIOS  GABRIELA MARIA', '104154851', '9999999', 'gabriela.farfan@asur.ec', 'CUENCA', 1, '0000-00-00 00:00:00', '1388', '0.00', 0.11, 1),
(124, 'GALARZA CHASI  JESSICA GABRIELA', '1718389396', '9999999', 'jessica.galarza@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1446', '0.00', 0.11, 1),
(125, 'GALLEGOS COLMACHI  MARIA FERNANDA', '1709716110', '9999999', 'maria.gallegos@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1281', '0.00', 0.11, 1),
(126, 'GALLEGOS JURADO  RENATO LENIN', '1716913106', '9999999', 'renato.gallegos@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1394', '0.00', 0.11, 1),
(127, 'GANCHOZO MENDOZA  KETTY MARICELA', '1717699555', '9999999', 'maricela.ganchozo@asur.ec', 'EL COCA', 1, '0000-00-00 00:00:00', '1105', '0.00', 0.11, 1),
(128, 'GARATE CASTILLO  LISETH ALEJANDRA', '1722945563', '9999999', 'liseth.garate@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1335', '0.00', 0.11, 1),
(129, 'GARCES ALARCON  KATHERINE GABRIELA', '1724052269', '9999999', 'katherine.garces@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1431', '0.00', 0.11, 1),
(130, 'GARCIA CHAVEZ  MARJORIE MARIA', '1312740796', '9999999', 'marjorie.garcia@asur.ec', 'PORTOVIEJO', 1, '0000-00-00 00:00:00', '585', '0.00', 0.11, 1),
(131, 'GARCIA ENDARA  VICTORIA LISSETHE', '1718257403', '9999999', 'victoria.garcia@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1438', '0.00', 0.11, 1),
(132, 'GARCIA GARCIA  MARIA FERNANDA', '1205910035', '9999999', 'garciam@asegsur.com.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1316', '0.00', 0.11, 1),
(133, 'GARCIA HIDROVO  ANGEL ENRIQUE', '1307684744', '9999999', 'enrique.garcia@asur.ec', 'PORTOVIEJO', 1, '0000-00-00 00:00:00', '63', '0.00', 0.11, 1),
(134, 'GAVILANES DUQUE  MARIA JOSE', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1373', '0.00', 0.11, 1),
(135, 'GAVILANES PEÃ‘A  AMED NICOLAS', '1722630652', '9999999', 'amed.gavilanes@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1368', '0.00', 0.11, 1),
(136, 'GILER ZAMBRANO  MILKA VALERIE', '1307309730', '9999999', 'milka.giler@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1190', '0.00', 0.11, 1),
(137, 'GODOY CAIZA  HUGO ALEXANDER', '1718162132', '9999999', 'activosfijos@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1367', '0.00', 0.11, 1),
(138, 'GONZALEZ NEIRA  MARITZA DEL ROCIO', '918182536', '9999999', 'maritza.gonzalez@asur.ec', 'RIOBAMBA', 1, '0000-00-00 00:00:00', '368', '0.00', 0.11, 1),
(139, 'GORDILLO FLORES  ANA CAROLINA', '#N/A', '9999999', 'gordillo@asegsur.com.ec', '#N/A', 0, '0000-00-00 00:00:00', '701', '0.00', 0.11, 1),
(140, 'GORDON HERRERA  CARLOS VINICIO', '#N/A', '9999999', 'gordonc@asegsur.com.ec', '#N/A', 0, '0000-00-00 00:00:00', '771', '0.00', 0.11, 1),
(141, 'GRANJA ALVEAR  MARIA JOSE', '1004359731', '9999999', 'maria.granja@asur.ec', 'IBARRA', 1, '0000-00-00 00:00:00', '1485', '0.00', 0.11, 1),
(142, 'GRIJALVA ARROYO  MARIA ISABEL', '1002900163', '9999999', 'maria.grijalva@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1053', '0.00', 0.11, 1),
(143, 'GUACHAMIN ESCORZA  DARWIN CHRISTIAN', '1716338304', '9999999', 'christian.guachamin@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '494', '0.00', 0.11, 1),
(144, 'GUACOLLANTES JIMENEZ  OLGA GUADALUPE', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1270', '0.00', 0.11, 1),
(145, 'GUAMAN CAMPOVERDE  VILMA ARACELI', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1204', '0.00', 0.11, 1),
(146, 'GUERRA CASTRO  CHRISTIAN DAVID', '1717838013', '9999999', 'christian.guerra@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1149', '0.00', 0.11, 1),
(147, 'GUERRA PABON  JUAN PABLO', '1720072675', '9999999', 'juan.guerra@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1155', '0.00', 0.11, 1),
(148, 'GUERRA SANCHEZ  DAVID RICARDO', '1720073418', '9999999', 'david.guerra@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '976', '0.00', 0.11, 1),
(149, 'GUERRA VILLAMARIN  VANESSA CAROLINA', '1719054924', '9999999', 'vanessa.guerra@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '928', '0.00', 0.11, 1),
(150, 'GUEVARA CABRERA  MARIA AUGUSTA', '603610221', '9999999', 'maria.guevara@asur.ec', 'RIOBAMBA', 1, '0000-00-00 00:00:00', '69', '0.00', 0.11, 1),
(151, 'GUEVARA DAVALOS  MARIA SUSANA', '600771661', '9999999', 'rodrigo.cavallos@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '183', '0.00', 0.11, 1),
(152, 'GUILLEN MACIAS  LUIS GUADENCIO', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1269', '0.00', 0.11, 1),
(153, 'HERNANDEZ ZAMBRANO  JORGE VICENTE', '1305367888', '9999999', 'jorge.hernandez@asur.ec', 'MANTA', 1, '0000-00-00 00:00:00', '73', '0.00', 0.11, 1),
(154, 'HOYOS JARAMILLO  MANUEL AUGUSTO', '1710906122', '9999999', 'agusto.hoyos@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '202', '0.00', 0.11, 1),
(155, 'HUACANES CHAVEZ  ROBERTO ERMEL', '1714736319', '9999999', 'infraestructura@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1209', '0.00', 0.11, 1),
(156, 'IBANEZ CALDERON  MARIA BELEN', '#N/A', '9999999', 'maria.ibanez@asur.ec', '#N/A', 0, '0000-00-00 00:00:00', '1489', '0.00', 0.11, 1),
(157, 'INTRIAGO LEON  EVELYN ROXANA', '922687637', '9999999', 'evelyn.intriago@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1449', '0.00', 0.11, 1),
(158, 'IZA Ã‘ACATO  MILENA MICHELLE', '1718001314', '9999999', 'milena.iza@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1437', '0.00', 0.11, 1),
(159, 'JACOME QUINTANILLA  ANA ELIZABETH', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1207', '0.00', 0.11, 1),
(160, 'JARA CARDENAS  CARLA DANIELA', '106552045', '9999999', 'carla.jara@asur.ec', 'CUENCA', 1, '0000-00-00 00:00:00', '1308', '0.00', 0.11, 1),
(161, 'JARAMILLO CUEVA  MIGUEL ANGEL', '1717315681', '9999999', 'miguel.jaramillo@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '666', '0.00', 0.11, 1),
(162, 'JAUREGUI PALOMEQUE  JOSEPH ALEXANDER', '1719531665', '9999999', 'joseph.jauregui@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1297', '0.00', 0.11, 1),
(163, 'JEREZ TOAPANTA  ANDREA GIOMARA', '1718523440', '9999999', 'andrejerez28@hotmail.com', 'QUITO', 1, '0000-00-00 00:00:00', '1327', '0.00', 0.11, 1),
(164, 'JIMENEZ COFREP  PATRICIA IRENE', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1266', '0.00', 0.11, 1),
(165, 'JIMENEZ CORTEZ  JEAN CARLOS', '1725604936', '9999999', 'jean.jimenez@asur.ec', 'AMBATO', 1, '0000-00-00 00:00:00', '1473', '0.00', 0.11, 1),
(166, 'JIMENEZ SANTANDER  ANDRES BRYAN', '1721764270', '9999999', 'bryan.jimenez@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1076', '0.00', 0.11, 1),
(167, 'JURADO RUIZ  NATHALY CRISTINA', '1718581257', '9999999', 'nathaly.jurado@asur.ec', 'QUITO SUR', 1, '0000-00-00 00:00:00', '1476', '0.00', 0.11, 1),
(168, 'KING MONTESINOS  JORGE EDUARDO', '1713140455', '9999999', 'jorge.king@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '895', '0.00', 0.11, 1),
(169, 'LANDINES ORTIZ  PAUL ESTEBAN', '1717398257', '9999999', 'paul.landines@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '522', '0.00', 0.11, 1),
(170, 'LARA GONZALEZ  LUIS FERNANDO', '2100532163', '9999999', 'luis.lara@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '667', '0.00', 0.11, 1),
(171, 'LARA RODRIGUEZ  ANTONIO ALEXANDER ', '#N/A', '9999999', 'antonio.lara@asur.ec', '#N/A', 0, '0000-00-00 00:00:00', '1214', '0.00', 0.11, 1),
(172, 'LARA RODRIGUEZ  CESAR AUGUSTO', '1711920114', '9999999', 'cesar.lara@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '80', '0.00', 0.11, 1),
(173, 'LASCANO VELASQUEZ  GUILLERMO PATRICIO', '1720083276', '9999999', 'guillermo.lascano@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '470', '0.00', 0.11, 1),
(174, 'LASSO MONTALVO  MARIA LAURA ', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1272', '0.00', 0.11, 1),
(175, 'LASTRA CHANGO  EDISON XAVIER', '1716803257', '9999999', 'edison.lastra@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '547', '0.00', 0.11, 1),
(176, 'LEON RODRIGUEZ  RONALD JOSE ', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1372', '0.00', 0.11, 1),
(177, 'LOOR MEDRANDA  GABRIELA JOHANNA', '1719820720', '9999999', 'gabriela.loor@asur.ec', 'SDOMINGO', 1, '0000-00-00 00:00:00', '461', '0.00', 0.11, 1),
(178, 'LOPEZ ROMERO  ROCIO SARAI', '1723618169', '9999999', 'rocio.lopez@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1421', '0.00', 0.11, 1),
(179, 'MACIAS GALLEGOS  DENISSE ALEJANDRA', '1722697511', '9999999', 'denisse.macias@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1434', '0.00', 0.11, 1),
(180, 'MACIAS ZAMBRANO  ZULY GISSELLA', '1308500006', '9999999', 'zuly.macias@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1137', '0.00', 0.11, 1),
(181, 'MALAN CASTRO  WASHINGTON VLADIMIR', '1804642203', '9999999', 'washington.malan@asur.ec', 'AMBATO', 1, '0000-00-00 00:00:00', '1079', '0.00', 0.11, 1),
(182, 'MALLQUI FONSECA  NESTOR GERMAN', '2200048508', '9999999', 'nestor.mallqui@asur.ec', 'EL COCA', 1, '0000-00-00 00:00:00', '1323', '0.00', 0.11, 1),
(183, 'MANCHENO GONZALEZ  JOSE ANTONIO', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1257', '0.00', 0.11, 1),
(184, 'MARIN CHACON  WILSON BYRON', '1720865334', '9999999', 'wilson.marin@asur.ec', 'SDOMINGO', 1, '0000-00-00 00:00:00', '429', '0.00', 0.11, 1),
(185, 'MARTINEZ ENRIQUEZ  CRISTINA PAOLA', '401457338', '9999999', 'cristina.martinez@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1450', '0.00', 0.11, 1),
(186, 'MARTINEZ VILLAFUERTE  ELIZABETH BEATRIZ', '1802896579', '9999999', 'bachavilla@hotmail.com', 'AMBATO', 1, '0000-00-00 00:00:00', '536', '0.00', 0.11, 1),
(187, 'MATA PILOZO  DIANA CAROLINA', '924901002', '9999999', 'diana.mata@asur.ec', 'SDOMINGO', 1, '0000-00-00 00:00:00', '691', '0.00', 0.11, 1),
(188, 'MATUTE LUNA  LILIANA KATERINE', '703970012', '9999999', 'liliana.matute@asur.ec', 'MACHALA', 1, '0000-00-00 00:00:00', '87', '0.00', 0.11, 1),
(189, 'MEDINA LOOR  OSCAR GABRIEL', '2200043111', '9999999', 'oscar.medina@asur.ec', 'EL COCA', 1, '0000-00-00 00:00:00', '975', '0.00', 0.11, 1),
(190, 'MEJIA LOPEZ  IVAN ESTEBAN', '1716205446', '9999999', 'ivan.mejia@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1465', '0.00', 0.11, 1),
(191, 'MELO QUIROZ  SHIRLEY DAYANA', '1725882987', '9999999', 'shirley.melo@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1112', '0.00', 0.11, 1),
(192, 'MENA PAVON  DAVID ALEJANDRO', '1721996351', '9999999', 'david.mena@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1021', '0.00', 0.11, 1),
(193, 'MENDEZ GUERRERO  GABRIELA FRANCISCA', '1717535106', '9999999', 'gabriela.mendez@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '665', '0.00', 0.11, 1),
(194, 'MENDEZ RHEA  OSCAR SANTIAGO', '1002378717', '9999999', 'oscar.mendez@asur.ec', 'IBARRA', 1, '0000-00-00 00:00:00', '194', '0.00', 0.11, 1),
(195, 'MENDOZA SILVA  LORENA RAQUEL', '1719044917', '9999999', 'lorena.mendoza@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1391', '0.00', 0.11, 1),
(196, 'MERCHAN MERCHAN  TEODORO EFRAIN', '702705518', '9999999', 'teodoro.merchan@asur.ec', 'MACHALA', 1, '0000-00-00 00:00:00', '1472', '0.00', 0.11, 1),
(197, 'MERINO ABAD  SONIA MAFALDA', '1103233472', '9999999', 'sonia.merino@asur.ec', 'LOJA', 1, '0000-00-00 00:00:00', '89', '0.00', 0.11, 1),
(198, 'MERINO SANDOVAL  GUIDO ANDRES', '1721497855', '9999999', 'guido.merino@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '655', '0.00', 0.11, 1),
(199, 'MINGA GAONA  JAIME ENRIQUE', '1104265820', '9999999', 'jaime.minga@asur.ec', 'LOJA', 1, '0000-00-00 00:00:00', '768', '0.00', 0.11, 1),
(200, 'MOLINA BURGOS  MARIA VERONICA', '1717173270', '9999999', 'maria.molina@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1299', '0.00', 0.11, 1),
(201, 'MONAR GARZON  JHONATAN STALIN', '1716633936', '9999999', 'jhonatan.monar@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1290', '0.00', 0.11, 1),
(202, 'MONCAYO AGUILERA  JHOSELIN ANAHI', '1721541389', '9999999', 'anahi.moncayo@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1403', '0.00', 0.11, 1),
(203, 'MONCAYO JARAMILLO  JULIANA', '1717397572', '9999999', 'juliana.moncayo@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1113', '0.00', 0.11, 1),
(204, 'MONCAYO JURADO  MARTHA VERONICA', '1721500872', '9999999', 'veronica.moncayo@asur.ec', 'QUITO SUR', 1, '0000-00-00 00:00:00', '652', '0.00', 0.11, 1),
(205, 'MONTENEGRO YANDUN  JUAN CARLOS', '401124706', '9999999', 'juan.montenegro@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1078', '0.00', 0.11, 1),
(206, 'MORA OÃ‘ATE  ERICKA STEFANIA', '1313306449', '9999999', 'ericka.mora@asur.ec', 'PORTOVIEJO', 1, '0000-00-00 00:00:00', '1463', '0.00', 0.11, 1),
(207, 'MORA RODRIGUEZ  GISSELA ELIZABETH', '2200205967', '9999999', 'giseela.mora@asur.ec', 'EL COCA', 1, '0000-00-00 00:00:00', '1324', '0.00', 0.11, 1),
(208, 'MORAN POZO  CARLOS EDUARDO ', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1267', '0.00', 0.11, 1),
(209, 'MOREIRA ALAVA  KARLA SOFIA', '1312239583', '9999999', 'karla.moreira@asur.ec', 'PORTOVIEJO', 1, '0000-00-00 00:00:00', '606', '0.00', 0.11, 1),
(210, 'MOREIRA FARIAS  JUAN PABLO ', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1277', '0.00', 0.11, 1),
(211, 'NAPA MACIAS  ANA GABRIELA', '1722240130', '9999999', 'ana.napa@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1306', '0.00', 0.11, 1),
(212, 'NARANJO GUAMBO  LAURA ISABEL', '602492670', '9999999', 'laura.naranjo@asur.ec', 'RIOBAMBA', 1, '0000-00-00 00:00:00', '92', '0.00', 0.11, 1),
(213, 'NARANJO MARTINEZ  JUAN CARLOS', '1711515138', '9999999', 'juan.naranjo@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '493', '0.00', 0.11, 1),
(214, 'NARANJO VILLALBA  ERIKA PATRICIA', '1709050486', '9999999', 'erika.naranjo@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1314', '0.00', 0.11, 1),
(215, 'NARVAEZ PARDO   PAULINA DEL CISNE ', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1215', '0.00', 0.11, 1),
(216, 'NAVARRETE GOMEZ  MARIA ALEXANDRA', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1259', '0.00', 0.11, 1),
(217, 'NAVARRETE NEIRA  ALFREDO DANIEL', '703553875', '9999999', 'alfredo.navarrete@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1319', '0.00', 0.11, 1),
(218, 'OCAMPO RIASCOS  MYRIAM CRISTINA', '1104261415', '9999999', 'cristina.ocampo@asur.ec', 'EL COCA', 1, '0000-00-00 00:00:00', '747', '0.00', 0.11, 1),
(219, 'OÃ‘ATE VEGA  BELLA PAMELA', '1751669779', '9999999', 'bellapame_95@hotmail.com', 'QUITO', 1, '0000-00-00 00:00:00', '1303', '0.00', 0.11, 1),
(220, 'ORDOÃ‘EZ BONILLA  JUAN ESTEBAN', '1711970192', '9999999', 'juan.ordonez@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1404', '0.00', 0.11, 1),
(221, 'ORDOÃ‘EZ CEVALLOS  MARIA DANIELA', '1313196741', '9999999', 'maria.ordonez@asur.ec', 'MANTA', 1, '0000-00-00 00:00:00', '1430', '0.00', 0.11, 1),
(222, 'OROZCO ROJAS  KATHERINE ALEXANDRA', '1750744656', '9999999', 'katherine.orozco@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1300', '0.00', 0.11, 1),
(223, 'ORTEGA MONTALVO  KARLA FERNANDA', '1722859731', '9999999', 'karla12alrak@gmail.com', 'QUITO', 1, '0000-00-00 00:00:00', '1296', '0.00', 0.11, 1),
(224, 'ORTIZ TRUJILLO  MARIA ELENA', '603470691', '9999999', 'maria.ortiz@asur.ec', 'RIOBAMBA', 1, '0000-00-00 00:00:00', '489', '0.00', 0.11, 1),
(225, 'ORTIZ VELIZ  GISSELA JAHAIRA', '1312879552', '9999999', 'jahaira.ortiz@asur.ec', 'MANTA', 1, '0000-00-00 00:00:00', '1200', '0.00', 0.11, 1),
(226, 'OSEJOS HERRERIA   GABRIELA ALEXANDRA ', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1271', '0.00', 0.11, 1),
(227, 'PAEZ CHICAIZA  LUIS ALFREDO', '1719968743', '9999999', 'luis.paez@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '923', '0.00', 0.11, 1),
(228, 'PAEZ VASQUEZ  LOURDES CRISTINA', '1715002554', '9999999', 'lourdes.paez@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '886', '0.00', 0.11, 1),
(229, 'PAGUANQUIZA CATAGÃ‘A  PATRICIA CARINA', '1721820494', '9999999', 'carina.paguanquiza@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '962', '0.00', 0.11, 1),
(230, 'PAREDES ESPINOSA  CARLOS AUGUSTO', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1168', '0.00', 0.11, 1),
(231, 'PAREDES GARCES  DIEGO ALEJANDRO', '1717172066', '9999999', 'diego.paredes@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '897', '0.00', 0.11, 1),
(232, 'PAREDES LLERENA  DOMENICA PATRICIA', '201483930', '9999999', 'domenica.paredes@asur.ec', 'AMBATO', 1, '0000-00-00 00:00:00', '98', '0.00', 0.11, 1),
(233, 'PAREDES PARREÃ‘O  JOSE GONZALO', '1720215183', '9999999', 'jose.paredes@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '677', '0.00', 0.11, 1),
(234, 'PAREJA COBO  KARINA ELIZABETH', '1713263364', '9999999', 'karina.pareja@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1295', '0.00', 0.11, 1),
(235, 'PAZ SISALIMA  DANIEL', '1103421614', '9999999', 'daniel.paz@asur.ec', 'LOJA', 1, '0000-00-00 00:00:00', '200', '0.00', 0.11, 1),
(236, 'PAZMIÃ‘O  RAUL ROMMEL', '1707196109', '9999999', 'stefania.andrade@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '294', '0.00', 0.11, 1),
(237, 'PAZMIÃ‘O ARIZAGA  JUAN CARLOS', '1712756236', '9999999', 'juan.pazmino@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '282', '0.00', 0.11, 1),
(238, 'PAZMIÃ‘O BARAHONA  MARIA GABRIELA', '1713174470', '9999999', 'gabriela.pazmino@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '860', '0.00', 0.11, 1),
(239, 'PEÃ‘A MOLINA  ANGEL ROLANDO', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1218', '0.00', 0.11, 1),
(240, 'PEÃ‘A MORA  ORIANA SIMONET', '1758240228', '9999999', 'penao@asegsur.com.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1150', '0.00', 0.11, 1),
(241, 'PEÃ‘AFIEL NARVAEZ  WELLLINGTON EDUARDO ', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1278', '0.00', 0.11, 1),
(242, 'PEÃ‘AHERRERA CORDOVEZ  PATRICIO XAVIER', '1716693799', '9999999', 'patricio.peÃ±aherrera@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1399', '0.00', 0.11, 1),
(243, 'PERALTA PADILLA  CATHERINE ELIZABETH', '1725520777', '9999999', 'catherine.peralta@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1409', '0.00', 0.11, 1),
(244, 'PEREZ PEREZ  CYNTIA SILVANA', '1708489511', '9999999', 'cyntia.perez@asur.ec', 'QUITO SUR', 1, '0000-00-00 00:00:00', '842', '0.00', 0.11, 1),
(245, 'PEREZ TIXILEMA  CHRISTIAN GREGORIO', '1804379129', '9999999', 'christian.perez@asur.ec', 'AMBATO', 1, '0000-00-00 00:00:00', '1466', '0.00', 0.11, 1),
(246, 'PINOS HERNANDEZ  DIEGO FERNANDO', '1717185142', '9999999', 'diego.pinos@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '746', '0.00', 0.11, 1),
(247, 'PINTA AÃ‘AZCO  DIEGO ADRIAN', '2100653597', '9999999', 'diego.pinta@asur.ec', 'EL COCA', 1, '0000-00-00 00:00:00', '970', '0.00', 0.11, 1),
(248, 'PIZA SANCHEZ  ALEX FLORENCIO', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1212', '0.00', 0.11, 1),
(249, 'PLATA DIAZ  TATIANA ELIZABETH', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1275', '0.00', 0.11, 1),
(250, 'PONCE MONTENEGRO  MILTHON DAVID', '1718758582', '9999999', 'david.ponce@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '723', '0.00', 0.11, 1),
(251, 'POSLIGUA CARREÃ‘O  LUIGGI DAMIAN', '1312734385', '9999999', 'luiggi.posligua@asur.ec', 'MANTA', 1, '0000-00-00 00:00:00', '1400', '0.00', 0.11, 1),
(252, 'POZO CASTILLO  ADRIAN GABRIEL', '1717816902', '9999999', 'adrian.pozo@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '414', '0.00', 0.11, 1),
(253, 'POZO MURRILLO  ANDRES DAVID', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1405', '0.00', 0.11, 1),
(254, 'POZO VILLACRES  FRANCISCO RODRIGO', '1717418915', '9999999', 'francisco.pozo@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '487', '0.00', 0.11, 1),
(255, 'PUENTE SOLIS  WILLIAM GEOVANNY', '1711714673', '9999999', 'williamsolis@hotmail.com', 'QUITO', 1, '0000-00-00 00:00:00', '600', '0.00', 0.11, 1),
(256, 'PULUPA TOAPANTA  MARIO RUBEN', '1714110861', '9999999', 'ruben.pulupa@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '203', '0.00', 0.11, 1),
(257, 'QUEZADA CABRERA  LEIDI MARIANELA', '1720656667', '9999999', 'leidi.quezada@asur.ec', 'LOJA', 1, '0000-00-00 00:00:00', '619', '0.00', 0.11, 1),
(258, 'QUEZADA PUMASUNTA  JONATHAN ANDRES', '1722100250', '9999999', 'jonathan.quezada@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1468', '0.00', 0.11, 1),
(259, 'QUIJIA GUAMIALAMA  CARLOS ROBERTO', '1712934742', '9999999', 'crbeto50@gmail.com', 'QUITO', 1, '0000-00-00 00:00:00', '1177', '0.00', 0.11, 1),
(260, 'QUINDE MADRID  ANA KATHIUSKA', '704237809', '9999999', 'ana.quinde@asur.ec', 'MACHALA', 1, '0000-00-00 00:00:00', '320', '0.00', 0.11, 1),
(261, 'RAMIREZ BUSTAMANTE  MERCEDES ALEXANDRA', '1719807958', '9999999', 'alexandra.ramirez@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '342', '0.00', 0.11, 1),
(262, 'RAMIREZ CEDEÃ‘O  GISSELLA MICHELLE', '1720392636', '9999999', 'gisella.ramirez@asur.ec ', 'SDOMINGO', 1, '0000-00-00 00:00:00', '1481', '0.00', 0.11, 1),
(263, 'RAMOS CEVALLOS  DANIEL ALEJANDRO', '1710898782', '9999999', 'daniel.ramos@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '538', '0.00', 0.11, 1),
(264, 'REALPE GRIJALVA  MARIA MERCEDES', '1714117643', '9999999', 'maria.realpe@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1175', '0.00', 0.11, 1),
(265, 'REINOSO LEON  KIMBERLY ALEJANDRA', '1725168965', '9999999', 'kimberly.reinoso@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1435', '0.00', 0.11, 1),
(266, 'REINOSO NIAMA  OMAR ALEJANDRO', '603449869', '9999999', 'alejandro.reinoso@asur.ec', 'RIOBAMBA', 1, '0000-00-00 00:00:00', '710', '0.00', 0.11, 1),
(267, 'REY PARRAGA  GABRIELA ANGELELY', '2300299910', '9999999', 'gabriela.rey@asur.ec', 'SDOMINGO', 1, '0000-00-00 00:00:00', '1478', '0.00', 0.11, 1),
(268, 'RIVERA PRECIADO  ANA DEL ROCIO', '1711341345', '9999999', 'ana.rivera@asur.ec', 'CUENCA', 1, '0000-00-00 00:00:00', '595', '0.00', 0.11, 1),
(269, 'ROBALINO MALDONADO  PEDRO MARCELO', '604264549', '9999999', 'marcelo.robalino@asur.ec', 'RIOBAMBA', 1, '0000-00-00 00:00:00', '292', '0.00', 0.11, 1),
(270, 'ROBLES ZAAVEDRA  DIANA CAROLINA', '1721896338', '9999999', 'diana.robles@asur.ec', 'EL COCA', 1, '0000-00-00 00:00:00', '1484', '0.00', 0.11, 1),
(271, 'ROCHA ESCOBAR  WILSON FRANCISCO', '1717438921', '9999999', 'wilson.rocha@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1417', '0.00', 0.11, 1),
(272, 'RODAS TOBAR  PRISCILA SILVANA', '103751889', '9999999', 'priscila.rodas@asur.ec', 'CUENCA', 1, '0000-00-00 00:00:00', '515', '0.00', 0.11, 1),
(273, 'RODRIGUEZ ALMEIDA  SILVIA VERONICA', '1004545560', '9999999', 'veritoflacalinda_10@hotmail.com', 'IBARRA', 1, '0000-00-00 00:00:00', '638', '0.00', 0.11, 1),
(274, 'RODRIGUEZ AMORES  PABLO ESTEBAN', '1720029931', '9999999', 'pablo_rodriguez33@hotmail.com', 'QUITO', 1, '0000-00-00 00:00:00', '1456', '0.00', 0.11, 1),
(275, 'RODRIGUEZ RODRIGUEZ  LUIS FERNANDO', '1713049300', '9999999', 'fernando.rodriguez@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1382', '0.00', 0.11, 1),
(276, 'RODRIGUEZ SEGARRA  RODDY ECUADOR', '1102538848', '9999999', 'roddy.rodriguez@asur.ec', 'LOJA', 1, '0000-00-00 00:00:00', '248', '0.00', 0.11, 1),
(277, 'RODRIGUEZ VERA  CARLOS RODRIGO', '1803884780', '9999999', 'carlos.rodriguez@asur.ec', 'AMBATO', 1, '0000-00-00 00:00:00', '1201', '0.00', 0.11, 1),
(278, 'ROJAS  MARIANA DE JESUS', '1704503687', '9999999', 'mariana.rojas@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '114', '0.00', 0.11, 1),
(279, 'ROJAS CAGUANA  JORGE ERMEL', '1802247815', '9999999', 'jorge.rojas@asur.ec', 'AMBATO', 1, '0000-00-00 00:00:00', '115', '0.00', 0.11, 1),
(280, 'ROLDAN MOLINA  ANDREA ISABEL', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1320', '0.00', 0.11, 1),
(281, 'ROMERO BONILLA  AMPARO ELIZABETH', '1713320875', '9999999', 'amparo.romero@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '117', '0.00', 0.11, 1),
(282, 'ROMERO VEGA  VICENTA ISABEL', '1753199973', '9999999', 'gasego12@hotmail.com', 'QUITO', 1, '0000-00-00 00:00:00', '1444', '0.00', 0.11, 1),
(283, 'ROMO TERAN  PAULA JACQUELINE', '105226690', '9999999', 'paula.romo@asur.ec', 'CUENCA', 1, '0000-00-00 00:00:00', '1422', '0.00', 0.11, 1),
(284, 'RON ZURITA  ANDRES ALEJANDRO', '1718010174', '9999999', 'andres.ron@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '302', '0.00', 0.11, 1),
(285, 'RONQUILLO RONQUILLO  STEVEN ROLANDO', '104922919', '9999999', 'steven.ronquillo@asur.ec', 'CUENCA', 1, '0000-00-00 00:00:00', '1402', '0.00', 0.11, 1),
(286, 'ROSALES MERINO  FRANCISCO JAVIER', '1717635344', '9999999', 'javierf1608@hotmail.com', 'QUITO', 1, '0000-00-00 00:00:00', '1416', '0.00', 0.11, 1),
(287, 'ROSERO ALVAREZ  MELISA SALOME', '1716421753', '9999999', 'melisa.rosero@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '692', '0.00', 0.11, 1),
(288, 'ROSERO FLORES  SCARLETTE STEPHANIE', '1724178346', '9999999', 'scarlette.rosero@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1448', '0.00', 0.11, 1),
(289, 'ROSERO ROSERO  MARIBEL CRISTINA', '401647672', '9999999', 'maribel.rosero@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1483', '0.00', 0.11, 1),
(290, 'RUALES LASSO  JAIME GUILLERMO', '1706356092', '9999999', 'jaime.ruales@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '122', '0.00', 0.11, 1),
(291, 'RUEDA MEDINA  MICHAEL ALEXANDER', '1719769174', '9999999', 'michael.rueda@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '805', '0.00', 0.11, 1),
(292, 'SAAVEDRA AVILES  MARIA GABRIELA', '502175615', '9999999', 'gabriela.saavedra@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '464', '0.00', 0.11, 1),
(293, 'SAAVEDRA PAREDES  ESTHER CLARA GLODIVA', '102344827', '9999999', 'esther.saavedra@asur.ec', 'CUENCA', 1, '0000-00-00 00:00:00', '124', '0.00', 0.11, 1),
(294, 'SABANDO CEDEÃ‘O  ORLANDO MIGUEL LEONARDO', '1707844070', '9999999', 'orlando1963sabando@gmail.com', 'QUITO', 1, '0000-00-00 00:00:00', '125', '0.00', 0.11, 1),
(295, 'SALAZAR JUSTICIA  CARLOS EMILIO', '401280748', '9999999', 'carlos.salazar@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '209', '0.00', 0.11, 1),
(296, 'SALAZAR JUSTICIA  MARCO VINICIO', '400748018', '9999999', 'marco.salazar@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '126', '0.00', 0.11, 1),
(297, 'SALCEDO SALAZAR  ANDREA FERNANDA', '1722734033', '9999999', 'andrea.salcedo@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1161', '0.00', 0.11, 1),
(298, 'SALCEDO TORAL  OMAR ALEJANDRO', '951457415', '9999999', 'omar.salcedo@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1482', '0.00', 0.11, 1),
(299, 'SANCHEZ RIVAS  SANDRA GISELLA', '704807858', '9999999', 'sandra.sanchez@asur.ec', 'LOJA', 1, '0000-00-00 00:00:00', '1443', '0.00', 0.11, 1),
(300, 'SANCHEZ VALENZUELA  MARIA EULOGIA ', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1279', '0.00', 0.11, 1),
(301, 'SANDOVAL AGUILAR  MARIA CLEMENCIA', '1003458310', '9999999', 'maria.sandoval@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '509', '0.00', 0.11, 1),
(302, 'SANDOVAL BASANTES   ANGELICA PATRICIA ', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1217', '0.00', 0.11, 1),
(303, 'SANMARTIN CHAUCA  BORIS ALBERTO', '1716457559', '9999999', 'boris.sanmartin@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1433', '0.00', 0.11, 1),
(304, 'SANTACRUZ CARCELEN  JORGE NELSON', '1709304164', '9999999', 'nelsonsantacruz2566@gmail.com', 'QUITO', 1, '0000-00-00 00:00:00', '210', '0.00', 0.11, 1),
(305, 'SANTAMARIA ERAZO  ERIKA JACQUELINE', '1722490917', '9999999', 'erika.santamaria@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1109', '0.00', 0.11, 1),
(306, 'SANTAMARIA PEREZ  EDISSON FERNANDO', '1715847925', '9999999', 'fernando.santamaria@asur.ec', 'AMBATO', 1, '0000-00-00 00:00:00', '1057', '0.00', 0.11, 1),
(307, 'SANTILLAN ROSERO  PATRICIA GABRIELA ', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1268', '0.00', 0.11, 1),
(308, 'SARANGO RIERA  RICARDO ANTONIO', '1725018228', '9999999', 'ricardo.sarango@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '450', '0.00', 0.11, 1),
(309, 'SARAUZ ESTEVEZ  DIANA CRISTINA', '1002506556', '9999999', 'diana.sarauz@asur.ec', 'IBARRA', 1, '0000-00-00 00:00:00', '427', '0.00', 0.11, 1),
(310, 'SEMPERTEGUI RODRIGUEZ  BERENICE DECYRE', '1103770572', '9999999', 'berenice.sempertegui@asur.ec', 'LOJA', 1, '0000-00-00 00:00:00', '132', '0.00', 0.11, 1),
(311, 'SERRANO FALCON  OLGER GUSTAVO', '502619760', '9999999', 'olger.serrano@asur.ec', 'SDOMINGO', 1, '0000-00-00 00:00:00', '1479', '0.00', 0.11, 1),
(312, 'SOLORZANO AVILES  ANA LUCIA', '#N/A', '9999999', 'solorzano@corposur.com.ec', '#N/A', 0, '0000-00-00 00:00:00', '589', '0.00', 0.11, 1),
(313, 'SOLORZANO JARAMILLO  ANDERSON GABRIEL', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1276', '0.00', 0.11, 1),
(314, 'SORNOZA NAZARENO  CARLOS EDUARDO', '1724578214', '9999999', 'carlos.sornoza@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1420', '0.00', 0.11, 1),
(315, 'SOTALIN ANAGUANO  JOEL IGNACIO', '1707003420', '9999999', 'joel.sotalin@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '211', '0.00', 0.11, 1),
(316, 'SOTO LUNA  PATRICIO DAVID', '1713505707', '9999999', 'patricio.soto@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '745', '0.00', 0.11, 1),
(317, 'SUAREZ CORREA  ANDRES SEBASTIAN', '1724444029', '9999999', 'andresuarez09952010@hotmail.com', 'QUITO', 1, '0000-00-00 00:00:00', '1447', '0.00', 0.11, 1),
(318, 'SUAREZ ZAPATA  LUIS FERNANDO', '1712685310', '9999999', 'suarezf@asegsur.com.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1258', '0.00', 0.11, 1),
(319, 'TABANGO ICHAU  ZOILA VICTORIA', '1002886883', '9999999', 'vico.t@hotmail.com', 'QUITO', 1, '0000-00-00 00:00:00', '1411', '0.00', 0.11, 1),
(320, 'TAPIA ALARCON  DIEGO ARMANDO', '1716504905', '9999999', 'diego.tapia@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1027', '0.00', 0.11, 1),
(321, 'TARCO QUITO   DIONICIO ', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1216', '0.00', 0.11, 1),
(322, 'TATICUAN LEON  JEFFERSON STALIN', '1721323242', '9999999', 'stalin.taticuan@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1050', '0.00', 0.11, 1),
(323, 'TEJADA IDROBO  CARLA MARGARITA ', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1255', '0.00', 0.11, 1),
(324, 'TENE LOPEZ  SEGUNDO FERMIN ', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1273', '0.00', 0.11, 1),
(325, 'TORRES BOLAÃ‘OS  FERNANDA ARACELY', '1003145396', '9999999', 'fernanda.torres@asur.ec', 'IBARRA', 1, '0000-00-00 00:00:00', '844', '0.00', 0.11, 1),
(326, 'TORRES FALCON  LUISA GABRIELA', '1500674468', '9999999', 'luisa.torres@asur.ec ', 'QUITO', 1, '0000-00-00 00:00:00', '1486', '0.00', 0.11, 1),
(327, 'TORRES GUAÃ‘O  MARITZA DALILA', '603579137', '9999999', 'maritza.torres@asur.ec', 'RIOBAMBA', 1, '0000-00-00 00:00:00', '702', '0.00', 0.11, 1),
(328, 'TORRES QUERO  RONALD JOSE', '1757668403', '9999999', 'ronald.torres@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1424', '0.00', 0.11, 1),
(329, 'TORRES TORRES  VERONICA ALEXANDRA', '1104666217', '9999999', 'veronica.torres@asur.ec', 'LOJA', 1, '0000-00-00 00:00:00', '1477', '0.00', 0.11, 1),
(330, 'TORRES YANEZ  ERIKA DANIELA', '1717128852', '9999999', 'erika.torres@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1069', '0.00', 0.11, 1),
(331, 'TREJO GARCIA  FRANCISCO JAVIER', '1723248959', '9999999', 'francisco.trejo@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1322', '0.00', 0.11, 1),
(332, 'TRIANA VARGAS  ANDREA NICOLE', '925509945', '9999999', 'nicole.triana@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1396', '0.00', 0.11, 1),
(333, 'TULCAN VERGARA  DIANA ELIZABETH', '1003453477', '9999999', 'diana.tulcan@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1136', '0.00', 0.11, 1),
(334, 'TUQUERRES MATANGO  MARITZA AURORA', '1003258397', '9999999', 'marytm_87@hotmail.com', 'QUITO', 1, '0000-00-00 00:00:00', '703', '0.00', 0.11, 1),
(335, 'VACA CRUZ  CARLOS DAVID', '1716791320', '9999999', 'david.vaca@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1333', '0.00', 0.11, 1),
(336, 'VACA GREFA  ROGELIO GABRIEL', '1720596525', '9999999', 'rogelio.vaca@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1385', '0.00', 0.11, 1),
(337, 'VACA MERINO  AMBAR ELENA', '1716542889', '9999999', 'ambar.vaca@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '648', '0.00', 0.11, 1),
(338, 'VALDIVIESO RODRIGUEZ  NESTOR AURELIO', '#N/A', '9999999', 'N/A', '#N/A', 0, '0000-00-00 00:00:00', '1262', '0.00', 0.11, 1),
(339, 'VALENZUELA CARRASCO  MONICA PAULINA', '603036567', '9999999', 'monica.valenzuela@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '797', '0.00', 0.11, 1);
INSERT INTO `clientes` (`id_cliente`, `nombre_cliente`, `documento_cliente`, `telefono_cliente`, `email_cliente`, `direccion_cliente`, `status_cliente`, `date_added`, `codigo`, `saldo_cliente`, `descuento`, `empresa_cliente`) VALUES
(340, 'VALENZUELA MARTINEZ  BLANCA PATRICIA', '#N/A', '9999999', 'valenzue@asegsur.com.ec', '#N/A', 0, '0000-00-00 00:00:00', '717', '0.00', 0.11, 1),
(341, 'VALERA RODRIGUEZ  RAFAEL', '1756374276', '9999999', 'rafael.valera@asur.ec', 'AMBATO', 1, '0000-00-00 00:00:00', '1070', '0.00', 0.11, 1),
(342, 'VALLEJO CHAGNA  JUAN ALBERTO', '910098441', '9999999', 'juan.vallejo@asur.ec', 'MACHALA', 1, '0000-00-00 00:00:00', '145', '0.00', 0.11, 1),
(343, 'VALLEJO ESPINEL  KAREN ESTEFANNY', '1723424865', '9999999', 'karen.vallejo@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1171', '0.00', 0.11, 1),
(344, 'VALLEJO NARANJO  ZENEIDA ISABEL', '1714891445', '9999999', 'zeneida.vallejo@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '214', '0.00', 0.11, 1),
(345, 'VALLEJO RUIZ  VICTOR GERMAN', '1003315098', '9999999', 'victor.vallejo@asur.ec', 'IBARRA', 1, '0000-00-00 00:00:00', '1330', '0.00', 0.11, 1),
(346, 'VARELA CEVALLOS  VALERIA ESTEFANIA', '1310580137', '9999999', 'valeria.varela@asur.ec', 'MANTA', 1, '0000-00-00 00:00:00', '1401', '0.00', 0.11, 1),
(347, 'VARGAS ALVARES  MARCELA ESTEFANIA', '103953402', '9999999', 'marcela.vargas@asur.ec', 'CUENCA', 1, '0000-00-00 00:00:00', '1469', '0.00', 0.11, 1),
(348, 'VARGAS BRIONES  MIRYAM ALEJANDRA', '1205518929', '9999999', 'miryam.vargas@asur.ec', 'MANTA', 1, '0000-00-00 00:00:00', '1298', '0.00', 0.11, 1),
(349, 'VARGAS LARRAGA  MARIA JOSE', '1804465423', '9999999', 'maria.vargas@asur.ec', 'AMBATO', 1, '0000-00-00 00:00:00', '1488', '0.00', 0.11, 1),
(350, 'VARGAS SALGUERO  ANGEL VINICIO', '603811779', '9999999', 'angel.vargas@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1318', '0.00', 0.11, 1),
(351, 'VASCONEZ LOPEZ  JORGE ANDRES', '1716113871', '9999999', 'jorge.vasconez@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1025', '0.00', 0.11, 1),
(352, 'VAZQUEZ VINTIMILLA  SANTIAGO ERNESTO', '103262838', '9999999', 'santiago.vazquez@asur.ec', 'CUENCA', 1, '0000-00-00 00:00:00', '1189', '0.00', 0.11, 1),
(353, 'VENEGAS BAÃ‘O  DIEGO FERNANDO', '1720249034', '9999999', 'diego.venegas@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '893', '0.00', 0.11, 1),
(354, 'VENEGAS MORALES  JEFFERSON DAVID', '1712949369', '9999999', 'jefferson.venegas@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1451', '0.00', 0.11, 1),
(355, 'VERA REVELO  ANDRES SEBASTIAN', '1719561670', '9999999', 'andres.vera@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '377', '0.00', 0.11, 1),
(356, 'VERA VELEZ  ZULEIMA NATHALY', '1311551491', '9999999', 'nathaly.vera@asur.ec', 'PORTOVIEJO', 1, '0000-00-00 00:00:00', '920', '0.00', 0.11, 1),
(357, 'VICENTE ALVARADO  ANGEL ALBERTO', '2200104129', '9999999', 'angel.vicente@asur.ec', 'SDOMINGO', 1, '0000-00-00 00:00:00', '775', '0.00', 0.11, 1),
(358, 'VILLACRES VANEGAS  ADRIANA DOLORES', '1714822523', '9999999', 'adriana.villacres@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '767', '0.00', 0.11, 1),
(359, 'VILLARREAL ALVAREZ  ANA LICETH', '401510623', '9999999', 'ana.villarreal@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '855', '0.00', 0.11, 1),
(360, 'VILLAVICENCIO ARTEAGA  JUAN GABRIEL', '1725634859', '9999999', 'gabriel.villavicencio@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1362', '0.00', 0.11, 1),
(361, 'VILLAVICENCIO MORA  ADRIANA GABRIELA', '1719000182', '9999999', 'adriana.villavicencio@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1046', '0.00', 0.11, 1),
(362, 'VITERI MIRANDA  KATHERINE MISHELLE', '1004035638', '9999999', 'katherine.viteri@asur.ec', 'IBARRA', 1, '0000-00-00 00:00:00', '1164', '0.00', 0.11, 1),
(363, 'YEPEZ BUITRON  DAVID ALEJANDRO', '1721623971', '9999999', 'david.yepez@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1004', '0.00', 0.11, 1),
(364, 'YUNGAN DIAZ  SANTIAGO ALEJANDRO', '1718447822', '9999999', 'santiago.yungan@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1326', '0.00', 0.11, 1),
(365, 'ZAMBRANO BRAVO  NANCY MARGOTH', '1719785121', '9999999', 'nancy.zambrano@asur.ec', 'SDOMINGO', 1, '0000-00-00 00:00:00', '420', '0.00', 0.11, 1),
(366, 'ZAMBRANO TUAREZ  CARLOS ALBERTO', '1307740215', '9999999', 'carlos.azt36@gmail.com', 'PORTOVIEJO', 1, '0000-00-00 00:00:00', '607', '0.00', 0.11, 1),
(367, 'ZAMORA OYERVIDE  VERONICA ELIZABETH', '104067780', '9999999', 'veronica.zamora@asur.ec', 'CUENCA', 1, '0000-00-00 00:00:00', '516', '0.00', 0.11, 1),
(368, 'ZAVALA LOPEZ  JEANNETH ALEJANDRA', '1717788028', '9999999', 'jeanneth.zavala@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '150', '0.00', 0.11, 1),
(369, 'ZURITA POVEDA  MARIA JOSE', '1712084431', '9999999', 'maria.zurita@asur.ec', 'QUITO', 1, '0000-00-00 00:00:00', '1310', '0.00', 0.11, 1),
(370, 'PRUEBA', '', '99999', 'christian.teran@proconty.com', 'PRUEBA', 1, '2018-04-12 07:02:06', '0000', '0.00', 0.11, 1),
(371, 'Nombre', '12345678901', '099', 'correo@cliente.com', 'DirecciÃ³n cliente', 1, '2018-04-24 23:11:03', 'Codigo', '0.00', 0.11, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `precision` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thousand_separator` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `decimal_separator` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `precision`, `thousand_separator`, `decimal_separator`, `code`) VALUES
(1, 'US Dollar', '$', '2', ',', '.', 'USD'),
(2, 'Libra Esterlina', '&pound;', '2', ',', '.', 'GBP'),
(3, 'Euro', 'â‚¬', '2', '.', ',', 'EUR'),
(4, 'South African Rand', 'R', '2', '.', ',', 'ZAR'),
(5, 'Danish Krone', 'kr ', '2', '.', ',', 'DKK'),
(6, 'Israeli Shekel', 'NIS ', '2', ',', '.', 'ILS'),
(7, 'Swedish Krona', 'kr ', '2', '.', ',', 'SEK'),
(8, 'Kenyan Shilling', 'KSh ', '2', ',', '.', 'KES'),
(9, 'Canadian Dollar', 'C$', '2', ',', '.', 'CAD'),
(10, 'Philippine Peso', 'P ', '2', ',', '.', 'PHP'),
(11, 'Indian Rupee', 'Rs. ', '2', ',', '.', 'INR'),
(12, 'Australian Dollar', '$', '2', ',', '.', 'AUD'),
(13, 'Singapore Dollar', 'SGD ', '2', ',', '.', 'SGD'),
(14, 'Norske Kroner', 'kr ', '2', '.', ',', 'NOK'),
(15, 'New Zealand Dollar', '$', '2', ',', '.', 'NZD'),
(16, 'Vietnamese Dong', 'VND ', '0', '.', ',', 'VND'),
(17, 'Swiss Franc', 'CHF ', '2', '\'', '.', 'CHF'),
(18, 'Quetzal Guatemalteco', 'Q', '2', ',', '.', 'GTQ'),
(19, 'Malaysian Ringgit', 'RM', '2', ',', '.', 'MYR'),
(20, 'Real Brasile&ntilde;o', 'R$', '2', '.', ',', 'BRL'),
(21, 'Thai Baht', 'THB ', '2', ',', '.', 'THB'),
(22, 'Nigerian Naira', 'NGN ', '2', ',', '.', 'NGN'),
(23, 'Peso Argentino', '$', '2', '.', ',', 'ARS'),
(24, 'Bangladeshi Taka', 'Tk', '2', ',', '.', 'BDT'),
(25, 'United Arab Emirates Dirham', 'DH ', '2', ',', '.', 'AED'),
(26, 'Hong Kong Dollar', '$', '2', ',', '.', 'HKD'),
(27, 'Indonesian Rupiah', 'Rp', '2', ',', '.', 'IDR'),
(28, 'Peso Mexicano', '$', '2', ',', '.', 'MXN'),
(29, 'Egyptian Pound', '&pound;', '2', ',', '.', 'EGP'),
(30, 'Peso Colombiano', '$', '2', '.', ',', 'COP'),
(31, 'West African Franc', 'CFA ', '2', ',', '.', 'XOF'),
(32, 'Chinese Renminbi', 'RMB ', '2', ',', '.', 'CNY');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE `detalle_factura` (
  `id_detalle` int(11) NOT NULL,
  `numero_factura` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_factura`
--

INSERT INTO `detalle_factura` (`id_detalle`, `numero_factura`, `id_producto`, `cantidad`, `precio_venta`) VALUES
(98, 24, 2, 1, 0.45),
(73, 20, 2, 1, 0.45),
(76, 23, 5, 1, 0.89);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id_empresas` int(11) NOT NULL,
  `nombre_empresas` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id_empresas`, `nombre_empresas`) VALUES
(1, 'empresa1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus`
--

CREATE TABLE `estatus` (
  `id_estatus` int(11) NOT NULL,
  `nombre_estatus` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `estatus`
--

INSERT INTO `estatus` (`id_estatus`, `nombre_estatus`) VALUES
(1, 'Activa'),
(2, 'Sin fondos'),
(3, 'Cancelada'),
(4, 'Anulada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id_factura` int(11) NOT NULL,
  `numero_factura` int(11) NOT NULL,
  `fecha_factura` datetime NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `condiciones` varchar(30) NOT NULL,
  `total_venta` varchar(20) NOT NULL,
  `estado_factura` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`id_factura`, `numero_factura`, `fecha_factura`, `id_cliente`, `id_vendedor`, `condiciones`, `total_venta`, `estado_factura`) VALUES
(69, 24, '2018-04-14 00:27:59', 1, 1, '1', '0.5', 1),
(55, 20, '2018-04-13 01:48:16', 0, 0, '', '0.5', 1),
(58, 23, '2018-04-13 03:51:18', 258, 0, '1', '1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_tarjeta`
--

CREATE TABLE `log_tarjeta` (
  `id_logtarjeta` int(11) NOT NULL,
  `tarjeta_id` int(11) NOT NULL,
  `fecha_logtarjeta` datetime NOT NULL,
  `factura_id` int(11) NOT NULL,
  `monto_logfactura` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id_perfil` int(11) NOT NULL,
  `nombre_empresa` varchar(150) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `codigo_postal` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(64) NOT NULL,
  `impuesto` int(2) NOT NULL,
  `moneda` varchar(6) NOT NULL,
  `logo_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id_perfil`, `nombre_empresa`, `direccion`, `ciudad`, `codigo_postal`, `estado`, `telefono`, `email`, `impuesto`, `moneda`, `logo_url`) VALUES
(1, 'AMARETTI CATERING', 'Bosmediano E16-19 y JosÃ© Carbo', 'Quito', '170517', 'Pichincha', '+(593) 02 2900-392', 'info@grupobarlovento.com', 12, '$', 'img/1523474789_Logo_Amareti.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id_producto` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `codigo_producto` char(20) NOT NULL,
  `nombre_producto` char(255) NOT NULL,
  `status_producto` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `precio_producto` decimal(10,2) NOT NULL,
  `precio_compra` double NOT NULL,
  `precio_flacso` float NOT NULL,
  `precio_publico` float NOT NULL,
  `tipo_producto` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id_producto`, `categoria_id`, `codigo_producto`, `nombre_producto`, `status_producto`, `date_added`, `precio_producto`, `precio_compra`, `precio_flacso`, `precio_publico`, `tipo_producto`) VALUES
(1, 1, '110003', 'AGUA CON GAS 500 ML', 1, '0000-00-00 00:00:00', '0.49', 0, 0, 0, 0),
(2, 1, '110004', 'AGUA SIN GAS', 1, '0000-00-00 00:00:00', '0.45', 0, 0, 0, 0),
(3, 1, '110005', 'GASEOSA PERSONAL', 1, '0000-00-00 00:00:00', '0.89', 0, 0, 0, 0),
(4, 1, '110006', 'GASEOSA LIGTH', 1, '0000-00-00 00:00:00', '0.89', 0, 0, 0, 0),
(5, 1, '110007', 'AVENA TONY', 1, '0000-00-00 00:00:00', '0.89', 0, 0, 0, 0),
(6, 1, '110008', 'CAFÃ‰ AMERICANO', 1, '0000-00-00 00:00:00', '0.71', 0, 0, 0, 0),
(7, 1, '110009', 'CHICLES TRIDENT', 1, '0000-00-00 00:00:00', '0.58', 0, 0, 0, 0),
(8, 1, '110010', 'CHUPETES', 1, '0000-00-00 00:00:00', '0.27', 0, 0, 0, 0),
(9, 1, '110011', 'EMPANADAS CHILENAS', 1, '0000-00-00 00:00:00', '0.89', 0, 0, 0, 0),
(10, 1, '110012', 'EMPANADAS DE HOJALDRE', 1, '0000-00-00 00:00:00', '1.12', 0, 0, 0, 0),
(11, 1, '110013', 'ENSALADA DE FRUTAS', 1, '0000-00-00 00:00:00', '1.07', 0, 0, 0, 0),
(12, 1, '110014', 'TE FUZE TEA DE 500ML', 1, '0000-00-00 00:00:00', '0.71', 0, 0, 0, 0),
(13, 2, '110015', 'GALLETA CLUB SOCIAL', 1, '0000-00-00 00:00:00', '0.49', 0, 0, 0, 0),
(14, 2, '110016', 'GALLETA OREO', 1, '0000-00-00 00:00:00', '0.67', 0, 0, 0, 0),
(15, 2, '110017', 'HUMITAS', 1, '0000-00-00 00:00:00', '1.12', 0, 0, 0, 0),
(16, 2, '110018', 'JUGOS DE FRUTAS NATURALES', 1, '0000-00-00 00:00:00', '0.89', 0, 0, 0, 0),
(17, 2, '110019', 'FRUTA DE MANO', 1, '0000-00-00 00:00:00', '0.45', 0, 0, 0, 0),
(18, 2, '110020', 'SNACKS DE FUNDA (PAPAS, CHIFLES, ETC)', 1, '0000-00-00 00:00:00', '0.49', 0, 0, 0, 0),
(19, 2, '110021', 'TORTA DE CHOCOLATE', 1, '0000-00-00 00:00:00', '0.89', 0, 0, 0, 0),
(20, 2, '110022', 'QUIMBOLITO', 1, '0000-00-00 00:00:00', '1.12', 0, 0, 0, 0),
(21, 2, '110023', 'SANDUCHE MIXTO', 1, '0000-00-00 00:00:00', '1.34', 0, 0, 0, 0),
(22, 2, '110024', 'SANDUCHE DE POLLO', 1, '0000-00-00 00:00:00', '1.34', 0, 0, 0, 0),
(23, 2, '110025', 'TANGO', 1, '0000-00-00 00:00:00', '0.45', 0, 0, 0, 0),
(24, 2, '110026', 'V220', 1, '0000-00-00 00:00:00', '1.12', 0, 0, 0, 0),
(25, 3, '110027', 'NACHOS CON GUACAMOLE', 1, '0000-00-00 00:00:00', '0.89', 0, 0, 0, 0),
(26, 3, '110028', 'CEVICHOCHOS', 1, '0000-00-00 00:00:00', '0.71', 0, 0, 0, 0),
(27, 3, '110029', 'HAMBURGUESA SIMPLE', 1, '0000-00-00 00:00:00', '1.79', 0, 0, 0, 0),
(28, 3, '110030', 'TRIGRILLO CON HUEVO FRITO', 1, '0000-00-00 00:00:00', '1.56', 0, 0, 0, 0),
(29, 3, '110031', 'PAPAS DE LA MARIA', 1, '0000-00-00 00:00:00', '1.12', 0, 0, 0, 0),
(30, 3, '110032', 'DESAYUNO AMERICANO', 1, '0000-00-00 00:00:00', '1.79', 0, 0, 0, 0),
(31, 3, '110033', 'DESAYUNO CONTINENTAL', 1, '0000-00-00 00:00:00', '2.68', 0, 0, 0, 0),
(32, 3, '110034', 'DESAYUNO EXPRESS (TOSTADA Y CAFÃ‰)', 1, '0000-00-00 00:00:00', '1.34', 0, 0, 0, 0),
(33, 3, '110035', 'POSTRES VARIOS', 1, '0000-00-00 00:00:00', '0.89', 0, 0, 0, 0),
(34, 3, '110036', 'YOGURTH CON FRUTA Y GRANOLA', 1, '0000-00-00 00:00:00', '1.43', 0, 0, 0, 0),
(35, 3, '110037', 'QUICHE LLORRAINE', 1, '0000-00-00 00:00:00', '1.12', 0, 0, 0, 0),
(36, 3, '110038', 'VOL AU VENT', 1, '0000-00-00 00:00:00', '1.12', 0, 0, 0, 0),
(37, 4, '110039', 'BOLONES', 1, '0000-00-00 00:00:00', '0.89', 0, 0, 0, 0),
(38, 4, '110040', 'TORTILLA DE VERDE', 1, '0000-00-00 00:00:00', '0.89', 0, 0, 0, 0),
(39, 4, '110041', 'TORTILLA DE YUCA', 1, '0000-00-00 00:00:00', '0.89', 0, 0, 0, 0),
(40, 4, '110042', 'MUCHINES', 1, '0000-00-00 00:00:00', '0.89', 0, 0, 0, 0),
(41, 4, '110043', 'PIZZA PERSONAL', 1, '0000-00-00 00:00:00', '1.34', 0, 0, 0, 0),
(42, 4, '110044', 'HOT DOG', 1, '0000-00-00 00:00:00', '1.34', 0, 0, 0, 0),
(43, 4, '110045', 'JUGOS TETRAPACK 200ML', 1, '0000-00-00 00:00:00', '0.67', 0, 0, 0, 0),
(44, 4, '110046', 'MANICRIS', 1, '0000-00-00 00:00:00', '0.45', 0, 0, 0, 0),
(45, 4, '110047', 'WAFERITO', 1, '0000-00-00 00:00:00', '0.45', 0, 0, 0, 0),
(46, 4, '110048', 'YOGURT TONY', 1, '0000-00-00 00:00:00', '0.80', 0, 0, 0, 0),
(47, 4, '110049', 'JUGO DEL VALLE', 1, '0000-00-00 00:00:00', '0.45', 0, 0, 0, 0),
(48, 4, '110050', 'LECHE SABORES', 1, '0000-00-00 00:00:00', '0.67', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjetas`
--

CREATE TABLE `tarjetas` (
  `id_tarjetas` int(11) NOT NULL,
  `codigo_tarjetas` int(80) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `monto_tarjetas` float NOT NULL,
  `fecha_solicitud_Tarjetas` datetime NOT NULL,
  `user_solicitud_id` int(11) NOT NULL,
  `estatus_tarjetas` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tarjetas`
--

INSERT INTO `tarjetas` (`id_tarjetas`, `codigo_tarjetas`, `cliente_id`, `monto_tarjetas`, `fecha_solicitud_Tarjetas`, `user_solicitud_id`, `estatus_tarjetas`) VALUES
(5, 2147483647, 1, 12, '2018-04-25 16:42:00', 1, 1),
(8, 214748366, 1, 15, '2018-04-26 10:29:21', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp`
--

CREATE TABLE `tmp` (
  `id_tmp` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad_tmp` int(11) NOT NULL,
  `precio_tmp` double(8,2) DEFAULT NULL,
  `session_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL COMMENT 'auto incrementing user_id of each user, unique index',
  `firstname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s name, unique',
  `user_password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s password in salted and hashed format',
  `user_email` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s email, unique',
  `date_added` datetime NOT NULL,
  `perfil` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user data';

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `user_name`, `user_password_hash`, `user_email`, `date_added`, `perfil`) VALUES
(1, 'PROCONTY', '', 'admin', '$2y$10$MPVHzZ2ZPOWmtUUGCq3RXu31OTB.jo7M9LZ7PmPQYmgETSNn19ejO', 'info@proconty.com', '2016-05-21 15:06:00', 'Administrador'),
(2, 'VENTAS', '1', 'ventas1', '$2y$10$SXXASwqISDxqVvJbzfurX.OM5sTfcJnH5OxJ2mWaOrcVoDxaTG/ba', 'ventas1@grupobarlovento.com', '2018-04-12 04:43:25', 'Ventas'),
(3, 'VENTAS', '2', 'ventas2', '$2y$10$AWNkBL417Of5vGxfiS6GXOI8Y.QPc9Us5IBPjnLl/GYprpT.HWOLG', 'ventas2@grupobarlovento.com', '2018-04-12 04:44:08', 'Ventas');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categorias`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `codigo_producto` (`nombre_cliente`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Indices de la tabla `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `numero_cotizacion` (`numero_factura`,`id_producto`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id_empresas`);

--
-- Indices de la tabla `estatus`
--
ALTER TABLE `estatus`
  ADD PRIMARY KEY (`id_estatus`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`id_factura`),
  ADD UNIQUE KEY `numero_cotizacion` (`numero_factura`);

--
-- Indices de la tabla `log_tarjeta`
--
ALTER TABLE `log_tarjeta`
  ADD PRIMARY KEY (`id_logtarjeta`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_producto`),
  ADD UNIQUE KEY `codigo_producto` (`codigo_producto`);

--
-- Indices de la tabla `tarjetas`
--
ALTER TABLE `tarjetas`
  ADD PRIMARY KEY (`id_tarjetas`);

--
-- Indices de la tabla `tmp`
--
ALTER TABLE `tmp`
  ADD PRIMARY KEY (`id_tmp`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categorias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=372;

--
-- AUTO_INCREMENT de la tabla `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id_empresas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `estatus`
--
ALTER TABLE `estatus`
  MODIFY `id_estatus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de la tabla `log_tarjeta`
--
ALTER TABLE `log_tarjeta`
  MODIFY `id_logtarjeta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id_perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `tarjetas`
--
ALTER TABLE `tarjetas`
  MODIFY `id_tarjetas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tmp`
--
ALTER TABLE `tmp`
  MODIFY `id_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index', AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
