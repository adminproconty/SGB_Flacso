-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-05-2018 a las 00:43:19
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
-- Estructura de tabla para la tabla `caja_chica`
--

CREATE TABLE `caja_chica` (
  `id_cc` int(11) NOT NULL,
  `fecha_cc` datetime NOT NULL,
  `user_cc` int(11) NOT NULL,
  `gasto_total_cc` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `caja_chica`
--

INSERT INTO `caja_chica` (`id_cc`, `fecha_cc`, `user_cc`, `gasto_total_cc`) VALUES
(1, '2018-05-01 02:48:15', 1, 3.04),
(2, '2018-05-01 02:50:18', 1, 3.04);

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
(4, 'Desayunos'),
(5, 'Combos'),
(6, 'Bebidas Calientes'),
(7, 'Snacks'),
(8, 'Elaborados'),
(9, 'Extras');

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
(1, 'AGUILAR CHALACÃN MARÃA BELÃ‰N', '1715956221', '022030285', 'mabeaguilar@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10000', '-14.95', 0.1, 1),
(2, 'AGUILAR SILVA MARÃA JOSÃ‰ GABRIELA', '1717328635', '2244317', 'mjaguilar@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10001', '-14.00', 0.1, 1),
(3, 'AGUIRRE BELGRANO MARCELO', '1704746518', '2541435', 'maraguirre@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10002', '-2.52', 0.1, 1),
(4, 'AJUNANCHI CHINGUIAZO CARLOS NAZARENO', '1400602288', '3450255', 'cnajunanchi@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10003', '0.00', 0.1, 1),
(5, 'ALARCÃ“N CHÃVEZ MARÃA GABRIELA', '1714232731', '3284831', 'galarcon@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10004', '-11.20', 0.1, 1),
(6, 'ALBUJA CAMPOS LUIS FERNANDO', '1709838682', '3471579', 'afalbuja@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10005', '0.00', 0.1, 1),
(7, 'ALMEIDA NOLIVOS JONATHAN', '1722469374', '3282648', 'jalmeida@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10006', '-18.48', 0.1, 1),
(8, 'ALMEIDA TORRES MARÃA FERNANDA', '1709909210', '2904751', 'estudiospoliticos@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10007', '-0.90', 0.1, 1),
(9, 'ALVAREZ BETANCOURT ALEX PATRICIO', '1706999164', '2099339', 'aalvarezb@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10008', '0.00', 0.1, 1),
(10, 'ARCOS SALVADOR CLAUDIA ANGÃ‰LICA', '1712636081', '2610-390', 'claarcos@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10009', '0.00', 0.1, 1),
(11, 'AREVALO MOSQUERA JENNY ELIZABETH', '1714320304', '3265109', 'jarevalo@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10010', '0.00', 0.1, 1),
(12, 'ARGUELLO PAZMIÃ‘O SOFIA ALEXANDRA', '1715112221', '2544871', 'sarguello@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10011', '0.00', 0.1, 1),
(13, 'ARMAS GUERRERO MIRIAM DEL ROCIO', '1713806493', '2691-645', 'mrarmas@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10012', '-0.90', 0.1, 1),
(14, 'ASTUDILLO CAMPOVERDE MÃ“NICA PATRICIA', '1711762201', 'S/D', 'mpastudillo@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10013', '-24.30', 0.1, 1),
(15, 'ASTUDILLO CUEVA ANDRÃ‰S GUSTAVO', '0602673733', '2243128', 'agastudillo@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10014', '-12.32', 0.1, 1),
(16, 'ASTUDILLO PILLO FRANKLIN MARCELO', '1725102469', '3122236', 'fmastudillo@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10015', '0.00', 0.1, 1),
(17, 'AYMAR VÃ‰LEZ EGUITA KARINA', '1706160809', '3238519', 'kaymar@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10016', '0.00', 0.1, 1),
(18, 'BARROS ROSERO RAÃšL GERMÃN', '1713064408', '22863024', 'rgbarros@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10017', '0.00', 0.1, 1),
(19, 'BASABE SERRANO SANTIAGO GUSTAVO', '1709858664', '2474846', 'sbasabe@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10018', '0.00', 0.1, 1),
(20, 'BASURTO ZAMBRANO CRISTOBAL GREGORIO', '1302565443', '3436127', 'cgbasurto@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10019', '0.00', 0.1, 1),
(21, 'BAUTISTA CODENA CRISTHIAN ARMANDO', '1718065350', '2334-175', 'cbautista@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10020', '0.00', 0.1, 1),
(22, 'BELTRÃN ALMEIDA GERMAN PATRICIO', '1801791433', '2246563', 'pbeltran@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10021', '0.00', 0.1, 1),
(23, 'BERMUDEZ ARBOLEDA NANCY PATRICIA', '1711001998', '3530036', 'pbermudez@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10022', '0.00', 0.1, 1),
(24, 'BONILLA OBANDO VANESSA STEFFANI', '1719458570', '3151182', 'vbonilla@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10023', '0.00', 0.1, 1),
(25, 'BURBANO DE LARA CORREA FELIPE EUGENIO', '1704241742', '22461-056', 'fburbano@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10024', '0.00', 0.1, 1),
(26, 'BURBANO POZO ERIKA MIREYA', '0401004031', '-', 'emburbano@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10025', '0.00', 0.1, 1),
(27, 'BUSTAMANTE PONCE TEODORO ROBERTO', '1703998896', '2238949', 'tbustamante@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10026', '0.00', 0.1, 1),
(28, 'CÃCERES MEJÃA LORENA BEATRIZ', '0602356966', '6011446', 'lbcaceres@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10027', '0.00', 0.1, 1),
(29, 'CACOANGO PERACHIMBA MARIA TERESA', '1003069703', '2812215', 'mtcacuango@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10028', '0.00', 0.1, 1),
(30, 'CALVA CALVA MIGUEL ANGEL', '1712683091', '3477086', 'macalva@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10029', '0.00', 0.1, 1),
(31, 'CÃRDENAS ESCOBAR ANA LUCIA', '1713699625', '23238888', 'acardenas@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10030', '0.00', 0.1, 1),
(32, 'CÃRDENAS MAZÃ“N DEYANIRA LILIANA', '1716139025', '3227145', 'licardenas@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10031', '0.00', 0.1, 1),
(33, 'CARRASCO DELHY LUIS FERNANDO', '1707606313', '3265-441', 'lucarrasco@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10032', '0.00', 0.1, 1),
(34, 'CARRILLO MALDONADO CARLOS ISRAEL', '1723307607', '2492714', 'cicarrillo@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10033', '-14.39', 0.1, 1),
(35, 'CARRIÃ“N MENA FERNANDO', '1703270502', '2458571', 'fcarrion@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10034', '0.00', 0.1, 1),
(36, 'CASTILLO ZAMORA LIZ ELIANA', '1718596156', '022081991', 'lcastillo@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10035', '0.00', 0.1, 1),
(37, 'CEDEÃ‘O CABEZAS MANUEL ANTONIO', '1308713351', 'S/D', 'macedeno@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10036', '0.00', 0.1, 1),
(38, 'CERBINO ARTURI MAURO', '1712278041', '2442859', 'mcerbino@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10037', '0.00', 0.1, 1),
(39, 'CERÃ“N GUERRÃ“N CARMITA JENIT', '0400881728', '2429466', 'cjceron@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10038', '0.00', 0.1, 1),
(40, 'CHALA ORLIN FABIAN', '1001582293', '3008456', 'ofchala@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10039', '0.00', 0.1, 1),
(41, 'CHAVERO RAMIREZ PALMIRA', '1756037535', 'S/D', 'pchavero@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10040', '0.00', 0.1, 1),
(42, 'CIELO MARÃA CRISTINA MALONG', '488537095', 'S/D', 'mccielo@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10041', '0.00', 0.1, 1),
(43, 'COBA MEJÃA LISSETE DEL ROCIO', '1709196974', '2406502', 'lcoba@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10042', '0.00', 0.1, 1),
(44, 'CONLAGO MORALES MARCIA EUGENIA', '1718896739', '3474964', 'meconlago@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10043', '0.00', 0.1, 1),
(45, 'CÃ“RDOVA MONTÃšFAR MARCO ANTONIO', '0601892805', '3330676', 'mcordova@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10044', '0.00', 0.1, 1),
(46, 'CORONEL CRUZ DARWIN PATRICIO', '1723484950', '3190853', 'dpcoronel@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10045', '0.00', 0.1, 1),
(47, 'CORONEL VALENCIA ADRIANA VALERIA', '1704632775', '2895977', 'vcoronel@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10046', '0.00', 0.1, 1),
(48, 'COYAGO REMACHE DIEGO FERNANDO', '1712254307', '2056121', 'dfcoyago@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10047', '0.00', 0.1, 1),
(49, 'CURVALE ANA CAROLINA', '610326', '-', 'ccurvale@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10048', '0.00', 0.1, 1),
(50, 'CUVI JOSÃ‰ NICOLÃS', '1704747938', 'S/D', 'ncuvi@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10049', '0.00', 0.1, 1),
(51, 'CUVI SANCHEZ GULNARA MARIA DEL CARMEN', '1701018499', '2235066', 'mcuvi@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10050', '0.00', 0.1, 1),
(52, 'CUZCO LINCANGO MARÃA BELÃ‰N', '1724576291', '2417-173', 'mbcuzco@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10051', '0.00', 0.1, 1),
(53, 'DAHIK RIVADENEIRA PABLO ANDRES', '1715519987', '-', 'pdahik@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10052', '0.00', 0.1, 1),
(54, 'DÃVILA ARTIEDA CARMEN CECILIA', '1704523024', '023161943', 'cdavila@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10053', '0.00', 0.1, 1),
(55, 'DURAN SAAVEDRA GUSTAVO ADOLFO', '1721577045', '5155139', 'gduran@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10054', '0.00', 0.1, 1),
(56, 'ESCOBAR MEZA RENE SALVADOR', '1001947918', '2082000', 'rescobar@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10055', '0.00', 0.1, 1),
(57, 'ESCOBAR MOREIRA NIXON GONZALO', '1310737190', 'S/D', 'nixonescobarnireira@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10056', '0.00', 0.1, 1),
(58, 'ESPINOSA QUINTANA BETTY ARGENTINA', '1708168693', '6042025', 'bespinosa@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10057', '0.00', 0.1, 1),
(59, 'ESPINOZA TARAMUEL MARCO ANTONIO', '1002433421', '023909271', 'maespinoza@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10058', '0.00', 0.1, 1),
(60, 'ESTRELLA ZAMBRANO SHENARY ELIZABETH', '1718000001', 'S/D', 'eestrella@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10059', '0.00', 0.1, 1),
(61, 'FERNÃNDEZ SASTRE JUAN', '536861', '-', 'jfernandez@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10060', '0.00', 0.1, 1),
(62, 'FLORES PULLUTAGSI JUDITH PATRICIA', '1713582631', '2023635', 'jflores@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10061', '0.00', 0.1, 1),
(63, 'FLORES VITERI JUAN FRANCISCO', '0601580962', '022693702', 'jfflores@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10062', '0.00', 0.1, 1),
(64, 'FONTAINE GUILLAUME FRANCIS', '1719018747', '22 21 636', 'gfontaine@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10063', '0.00', 0.1, 1),
(65, 'GALLARDO CALVOPIÃ‘A CÃ‰SAR GUILLERMO', '1707373401', '022679897', 'cggallardo@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10064', '0.00', 0.1, 1),
(66, 'GALLARDO ROMAN GUILLERMO', '0501088462', '2738893', 'ggallardo@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10065', '0.00', 0.1, 1),
(67, 'GALLEGOS TORRES MANUEL MESIAS', '1001685997', 'S/D', 'mmgallegos@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10066', '0.00', 0.1, 1),
(68, 'GARCÃA SERRANO FERNANDO', '1702946078', '2892658', 'fgarcia@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10067', '0.00', 0.1, 1),
(69, 'GARZÃ“N TRUJILLO CAROLINA MARITZA', '1716184856', '2499841', 'cgarzon@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10068', '0.00', 0.1, 1),
(70, 'GAVILANES MARTÃNEZ VERÃ“NICA MAYTTE', '1710460039', '2533146', 'mgavilanes@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10069', '0.00', 0.1, 1),
(71, 'GOMEZ MARTIN MARIA DEL CARMEN', 'AAF598160', '0034 667 976801', 'cgomez@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10070', '-8.96', 0.1, 1),
(72, 'GONZALEZ LOMBEIDA ANITA CECILIA', '1706952890', '2896485', 'cegonzalez@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10071', '0.00', 0.1, 1),
(73, 'GUANOQUIZA NINASUNTA OSCAR CRISTÃ“BAL', '0502437965', '3000147', 'oguanoquiza@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10072', '0.00', 0.1, 1),
(74, 'GUZMÃN BAZANTE JOSÃ‰ LUIS', '1716658727', '2974401', 'jlguzman@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10073', '0.00', 0.1, 1),
(75, 'HEREDIA ONOFA PAULA KAMILA', '1725186371', '2191475', 'pheredia@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10074', '0.00', 0.1, 1),
(76, 'HERRERA MOSQUERA LOURDES GIOCONDA', '1703714699', '2223328', 'gherrera@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10075', '0.00', 0.1, 1),
(77, 'HIDALGO BORJA SARA CRISTINA', '1711617116', '3819176', 'schidalgo@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10076', '0.00', 0.1, 1),
(78, 'HIDALGO CABEZAS JULIANO SEBASTIAN', '1712036332', '2348108', 'jhidalgo@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10077', '0.00', 0.1, 1),
(79, 'HUARACA SARMIENTO FRANCISCO JAVIER', '1714680954', '2633929', 'fhuaraca@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10078', '0.00', 0.1, 1),
(80, 'HURTADO ARROBA EDISON RAMIRO', '1711953859', '2544871', 'ehurtado@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10079', '0.00', 0.1, 1),
(81, 'IMBAQUINGO TORRES ALEJANDRO', '1000917300', '063017125', 'aimbaquingo@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10080', '0.00', 0.1, 1),
(82, 'JÃCOME ESTRELLA HUGO DE JESUS', '1708978810', '2291620', 'hjacome@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10081', '0.00', 0.1, 1),
(83, 'JARAMILLO JARAMILLO DIEGO FERNANDO', '1713946794', '3163 249', 'dfjaramillo@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10082', '0.00', 0.1, 1),
(84, 'JARAMILLO MARIÃ‘O MARÃA CRISTINA', '1715925499', '022559109', 'mcjaramillo@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10083', '0.00', 0.1, 1),
(85, 'KRAINER ANITA JOSEFA', 'P7333459', '-', 'akrainer@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10084', '0.00', 0.1, 1),
(86, 'LAMBOGGLIA ORTIZ JUAN CARLOS', '1716941628', 'S/D', 'jclambogglia@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10085', '-0.90', 0.1, 1),
(87, 'LASO CONCHA MARIA TERESA', '1712755907', '2526890', 'mtlaso@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10086', '0.00', 0.1, 1),
(88, 'LATORRE ROMERO MARIA ISABEL', '0603231382', '0984223830', 'mailatorre@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10087', '0.00', 0.1, 1),
(89, 'LOOR GELO MARÃA VERÃ“NICA', '1710640838', '2257-845', 'vloor@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10088', '0.00', 0.1, 1),
(90, 'LÃ“PEZ ORTIZ GABRIELA MARIA', '1721995676', '022613462', 'gmlopez@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10089', '0.00', 0.1, 1),
(91, 'LÃ“PEZ SANDOVAL MARIA FERNANDA', '1709014466', '02 2438699', 'maflopez@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10090', '0.00', 0.1, 1),
(92, 'MACAS ENDERICA XAVIER EDUARDO', '0102488236', '3360952', 'xavimacas@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10091', '0.00', 0.1, 1),
(93, 'MAFLA TANICUCHI JORGE HUMBERTO', '0400799862', '2379541', 'jhmafla@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10092', '0.00', 0.1, 1),
(94, 'MAIGUA DELGADO VERÃ“NICA JACQUELINE', '1716279847', '2020214', 'vjmaigua@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10093', '0.00', 0.1, 1),
(95, 'MAIGUA PINEDA RONAL DANIEL', '0401685011', '062916560', 'dsmntck@gmail.com', 'na', 1, '0000-00-00 00:00:09', '10094', '0.00', 0.1, 1),
(96, 'MANOSALVAS LOPEZ CRISTINA MARGARITA', '1710931740', '2592098', 'asuntospublicos@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10095', '0.00', 0.1, 1),
(97, 'MANOSALVAS VACA MONICA MARGARITA', '1001649639', '-', 'mmanosalvas@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10096', '0.00', 0.1, 1),
(98, 'MARTIN MAYORAL FERNANDO', '927850', '-', 'fmartin@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10097', '0.00', 0.1, 1),
(99, 'MARTINEZ BELTRAN MARIA ALEXANDRA', '1709515009', '3132279', 'mamartinez@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10098', '0.00', 0.1, 1),
(100, 'MARTINEZ JARAMILLO INES CATALINA', '1708608714', '3516049', 'icmartinez@flacso.org.ec', 'na', 1, '0000-00-00 00:00:09', '10099', '0.00', 0.1, 1),
(101, 'MARTINEZ VALLE JORGE LUCIANO', '1700561465', '2410275', 'lmartinez@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10100', '0.00', 0.1, 1),
(102, 'MARTINS RUA NILMA', '1710668615', '2476-589', 'nmartins@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10101', '0.00', 0.1, 1),
(103, 'MEJÃA CUENCA GLADYS JANETH', '1900315514', '2598-200', 'janetmc@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10102', '0.00', 0.1, 1),
(104, 'MENA VÃSCONEZ ANTONIO ELIAS', '1704439197', '2898972', 'amena@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10103', '0.00', 0.1, 1),
(105, 'MENDIETA CACUANGO DIANA ALEJANDRA', '1721115440', '3084021', 'dmendieta@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10104', '0.00', 0.1, 1),
(106, 'MOLINA HERRERA SOFIA ISABEL', '1310587165', '023530103', 'simolina@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10105', '0.00', 0.1, 1),
(107, 'MOLINA MOYA GLADYS HORTENCIA', '1705701140', '2494885', 'ghmolina@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10106', '0.00', 0.1, 1),
(108, 'MONTALVO RUEDA NADESHA IVANOVA', '1708769169', '2456203', 'nimontalvo@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10107', '0.00', 0.1, 1),
(109, 'MORA CLAUDIO DANIEL FERNANDO', '1716785611', '5143917', 'dfmora@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10108', '0.00', 0.1, 1),
(110, 'MORALES SALAZAR MARGARITA DE LAS MERCEDES', '1710799840', '-', 'mmmorales@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10109', '0.00', 0.1, 1),
(111, 'MORALES TINGO LUIS ALBERTO', '1713130233', '3194890', 'amorales@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10110', '0.00', 0.1, 1),
(112, 'MORENO ACOSTA MARIO ENRIQUE', '1716076045', '023131611', 'memoreno@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10111', '0.00', 0.1, 1),
(113, 'MORENO SILVA ALFREDO ENRÃQUE', '1704414497', '3230046', 'amoreno@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10112', '0.00', 0.1, 1),
(114, 'MOULY CECILE ALEXA', '1750457630', '2229186', 'camouly@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10113', '0.00', 0.1, 1),
(115, 'MOYA MOLINA ANIBAL JOSELITO', '1709138414', '3350164', 'ajmoya@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10114', '0.00', 0.1, 1),
(116, 'NARVAEZ QUINONEZ IVAN TARCICIO', '1704258654', '2493694', 'inarvaez@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10115', '0.00', 0.1, 1),
(117, 'NAVAS CARRILLO JOSÃ‰ VICENTE', '1710052307', '2730372/3060703', 'jvnavas@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10116', '0.00', 0.1, 1),
(118, 'NAVAS COBO SANDRA DE LA DOLOROSA', '1709019978', '2485 539', 'arteactual@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10117', '0.00', 0.1, 1),
(119, 'NOBLE PEÃ‘AFIEL DIANA CAROLINA', '1720015161', '2691-932', 'dcnoble@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10118', '0.00', 0.1, 1),
(120, 'OJEDA CALLE BITHMAN BOLIVAR', '1717197931', '2787509', 'bbojeda@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10119', '0.00', 0.1, 1),
(121, 'OLALLA VILLAFUERTE  MAYRA PAULINA', '1720134764', '23455469', 'mpolalla@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10120', '0.00', 0.1, 1),
(122, 'ORTEGA ONOFA MARÃA BELÃ‰N', '1724214380', '3822675/2070117', 'mbortega@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10121', '0.00', 0.1, 1),
(123, 'ORTIZ CRESPO SANTIAGO EUGENIO', '1703428217', '2921389', 'sortiz@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10122', '0.00', 0.1, 1),
(124, 'PACHANO HOLGUIN RODRIGO SIMON', '1800611251', '3331037', 'spachano@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10123', '0.00', 0.1, 1),
(125, 'PANCHO MALES WILSON MEDARDO', '1711058063', 'S/D', 'wpancho@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10124', '0.00', 0.1, 1),
(126, 'PAREDES CHAUCA MYRIAM DEL CARMEN', '0602460230', '2385623', 'mcparedes@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10125', '0.00', 0.1, 1),
(127, 'PAREDES RÃOS DELIA XIMENA', '1708490766', '3283533', 'xparedes@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10126', '0.00', 0.1, 1),
(128, 'PAVÃ“N TIGSE ANGELA', '1706060454', 'S/D', 'ampavon@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10127', '0.00', 0.1, 1),
(129, 'PÃ‰REZ OVIEDO WILSON AMADEO', '0601908452', '2050066', 'wperez@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10128', '0.00', 0.1, 1),
(130, 'PEREZ SALAS JUAN CARLOS', '1717723090', '2963582', 'jcperez@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10129', '0.00', 0.1, 1),
(131, 'PIEDRA SALAS IVÃN DAVID', '1705898383', '2522718', 'idpiedra@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10130', '0.00', 0.1, 1),
(132, 'PILLAGUANGO MORENO ROSA AMPARO', '1711190999', '2647010', 'rapillaguango@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10131', '0.00', 0.1, 1),
(133, 'POLO TRUJILLO WILSON', '1001692480', '2524-227', 'wpolo@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10132', '0.00', 0.1, 1),
(134, 'PONCE JARRIN JUAN ELIAS', '1709122103', 'S/D', 'jponce@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10133', '0.00', 0.1, 1),
(135, 'PONCE PONCE JUAN CARLOS', '1710962562', '5117831', 'jcponce@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10134', '0.00', 0.1, 1),
(136, 'PONTÃ“N CEVALLOS JENNY MARCELA', '1711115111', '2523807', 'jponton@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10135', '0.00', 0.1, 1),
(137, 'PRIETO NOGUERA MARIA IRENE MERCEDES', '1705505871', '2232253', 'mprieto@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10136', '0.00', 0.1, 1),
(138, 'PUCO CORREA MARCO VINICIO', '1718323569', '6012294', 'mvpuco@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10137', '0.00', 0.1, 1),
(139, 'PULLOTASIG PULLOTASIG SANDRA ROMELIA', '1717004210', '3678270', 'srpullotasig@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10138', '0.00', 0.1, 1),
(140, 'QUILICONI CINTIA VERONICA', 'AAC254332', '2521858', 'cvquiliconi@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10139', '0.00', 0.1, 1),
(141, 'QUISIGUIÃ‘A LUCERO KARINA LILETH', '1721101051', '3410483', 'klquisiguina@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10140', '0.00', 0.1, 1),
(142, 'RAMIREZ GALLEGOS FRANKLIN VINICIO', '1706788864', 'S/D', 'framirez@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10141', '0.00', 0.1, 1),
(143, 'RAMOS AVILA JUANA ISABEL', '1707349039', '2252872', 'iramos@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10142', '0.00', 0.1, 1),
(144, 'REMACHE COYAGO MARTHA ELIZABETH', '1711018976', '2371702', 'meremache@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10143', '0.00', 0.1, 1),
(145, 'RENDÃ“N SANCHÃ‰Z JOSÃ‰ GONZÃLO', '1802055457', '2417599', 'jgrendon@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10144', '0.00', 0.1, 1),
(146, 'REYES NIETO ESTEBAN ANDRÃ‰S', '1714832852', '2340713', 'eareyes@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10145', '0.00', 0.1, 1),
(147, 'RÃOS PARRA ADRIANA GABRIELA', '1802718070', '3261088', 'grios@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10146', '0.00', 0.1, 1),
(148, 'RIVADENEIRA ALMEIDA SHITI DAMAYANTI', '1711956928', '2245404', 'sdrivadeneira@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10147', '0.00', 0.1, 1),
(149, 'RIVERA VELEZ FREDY PATRICIO', '1706743067', '3340634', 'frivera@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10148', '-84.16', 0.1, 1),
(150, 'ROCHINA ASITUMBAY SANDRA TATIANA', '1727139808', '3510 251', 'srochina@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10149', '0.00', 0.1, 1),
(151, 'RODAS FLORES MARCELO FRANCISCO', '1712085099', 's/d', 'mfrodas@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10150', '0.00', 0.1, 1),
(152, 'RODRÃGUEZ VELA WILSON SANTIAGO', '1712429503', '3018605', 'wrodriguez@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10151', '0.00', 0.1, 1),
(153, 'ROMERO ANGULO NORMA MAGALY', '0201416013', 'S/D', 'nmromero@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10152', '0.00', 0.1, 1),
(154, 'ROMERO YACELGA ANA LUCIA', '1711290070', '3150348', 'alromero@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10153', '0.00', 0.1, 1),
(155, 'ROSERO MANZANO LORENA MIREYA', '1723952196', '2337635', 'doctoradohistoria@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10154', '0.00', 0.1, 1),
(156, 'SALAS TORRES INGRID NICOLE', '1751865179', '-', 'insalast@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10155', '0.00', 0.1, 1),
(157, 'SALAZAR MANOSALVAS CECILIA DEL CONSUELO', '1703020923', '2441-903', 'csalazar@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10156', '0.00', 0.1, 1),
(158, 'SALGADO ESPINOZA RAUL', '0602587982', '3250107', 'rsalgado@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10157', '0.00', 0.1, 1),
(159, 'SALGADO GÃ“MEZ CARMEN MIREYA', '1703699429', '2892-586', 'msalgado@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10158', '0.00', 0.1, 1),
(160, 'SÃNCHEZ ROGEL FRANKLIN ELIAS', '1716788391', 'S/D', 'fesanchez@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10159', '0.00', 0.1, 1),
(161, 'SANTILLÃN CORNEJO ALFREDO MIGUEL', '1707863500', '2451027', 'asantillan@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10160', '-23.52', 0.1, 1),
(162, 'SILVA ARIAS ALEX PAUL', '1721854378', '2866332', 'apsilva@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10161', '0.00', 0.1, 1),
(163, 'SIMBA SEMANATE GLORIA SUSANA', '1711060556', '3471579', 'gssimba@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10162', '0.00', 0.1, 1),
(164, 'SUÃREZ SALINAS MARCIA CECILIA', '1710601236', '2909646', 'msuarez@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10163', '0.00', 0.1, 1),
(165, 'TEPUD ASCUNTAR MARCIA REINELA', '1003457908', 'S/D', 'mrtepud@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10164', '0.00', 0.1, 1),
(166, 'TERÃN TORO JULIO ALEXANDER', '1001543907', '2248093', 'ateran@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10165', '0.00', 0.1, 1),
(167, 'TORRES CEVALLOS MONICA PATRICIA', '1712149663', 'S/D', 'mptorres@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10166', '0.00', 0.1, 1),
(168, 'TORRES PROAÃ‘O ALICIA DEL CARMEN', '1705834487', '2892-658', 'atorres@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10167', '0.00', 0.1, 1),
(169, 'TROYA OSPINA MARÃA BELÃ‰N', '1710685411', '2452716', 'mbtroya@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10168', '0.00', 0.1, 1),
(170, 'ULCUANGO NOVOA MARÃA CARMEN', '1709245771', '2529425', 'mulcuango@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10169', '0.00', 0.1, 1),
(171, 'ULLAURI NOBLECILLA CARMEN KATHERINE', '0702206087', '2826607', 'ckullauri@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10170', '0.00', 0.1, 1),
(172, 'UZENDOSKI BENSON MICHAEL ARTHUR', '1715550099', '2372549', 'mauzendoski@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10171', '0.00', 0.1, 1),
(173, 'VALDIVIESO TULCÃN EDWIN VINICIO', '1718265729', '2650-118', 'evvaldivieso@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10172', '0.00', 0.1, 1),
(174, 'VALLEJO GALARRAGA MARÃA CRISTINA', '1708167380', 'S/D', 'mcvallejo@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10173', '0.00', 0.1, 1),
(175, 'VALLEJO REAL IVETTE ROSSANA', '1705357844', '2562571/3237106', 'ivallejo@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10174', '0.00', 0.1, 1),
(176, 'VALLEJO VALLEJO EDWIN ALBERTO', '1714565007', '2623341', 'evallejo@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10175', '0.00', 0.1, 1),
(177, 'VALVERDE MINA FRANCISCO JAVIER', '1715614887', '2422392', 'fjvalverde@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10176', '0.00', 0.1, 1),
(178, 'VARESE ZIMIC LUIS NICOLAS', '1722130257', '2558379', 'nvarese@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10177', '0.00', 0.1, 1),
(179, 'VEGA SOLIS CRISTINA', 'PAB790358', '2526112', 'cvegas@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10178', '0.00', 0.1, 1),
(180, 'VILCA SILDA FABIOLA', '1706797535', '2837481', 'fvilca@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10179', '0.00', 0.1, 1),
(181, 'VILLAMAR VIVES LORENA ELIZABETH', '1718499799', '25105818', 'enfermeria@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10180', '0.00', 0.1, 1),
(182, 'VILLEGAS RUEDA JENNY ELIZABETH', '1719314310', '3130343', 'jevillegas@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10181', '0.00', 0.1, 1),
(183, 'VITERI GUERRERO JAIME RAMIRO', '1703064780', '2440313', 'rviteri@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10182', '0.00', 0.1, 1),
(184, 'VIVARES ERNESTO ALFREDO', 'AAC000078', '-', 'eavivares@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10183', '0.00', 0.1, 1),
(185, 'WAPPENSTEIN DELLER SUSANA PAULA', '1703858207', '2223400', 'swappenstein@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10184', '0.00', 0.1, 1),
(186, 'ZURITA HERRERA SEBASTIÃN ALEJANDRO', '1714300470', '2417363', 'szurita@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10185', '0.00', 0.1, 1),
(187, 'ALBA LUCIA YAMA TAIMAL ', '1754245163', '0995587049', 'ytalba@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10186', '0.00', 0.05, 2),
(188, 'ALEXANDRA PAULINA QUISAGUANO MORA ', '1712542743', '2654124', 'apquisaguanofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10187', '0.00', 0.05, 2),
(189, 'ANDREA ELSA MARIE ROBERTSDOTTER ', '82691526', '2373994', 'arobertsdotter@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10188', '0.00', 0.05, 2),
(190, 'CLAUDIA CECILIA ARCE CUADROS ', '3764581', '59144293693', 'clcarcefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10189', '0.00', 0.05, 2),
(191, 'GUADALUPE DEL ROCIO YAPUD IBADANGO ', '1002152468', '062511129', 'gdryapud@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10190', '0.00', 0.05, 2),
(192, 'GUGLIELMINA FALANGA ', 'YA2760332', '0939097349', 'gufalangafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10191', '0.00', 0.05, 2),
(193, 'HARRY SORIA GALVARRO SANCHEZ DE LOZADA ', '3793294', '000000', 'hsoriagalvarros@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10192', '0.00', 0.05, 2),
(194, 'HIRAM HERNÃNDEZ CASTRO ', 'I237898', '3227826', 'hirhernandezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10193', '0.00', 0.05, 2),
(195, 'LUCIA CATALINA RIVADENEIRA SUÃREZ ', '1001847613', '022238706', 'lcrivadeneira@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10194', '0.00', 0.05, 2),
(196, 'MARCO GIOVANNY PANCHI JIMA ', '1718987058', '2683410', 'mgpanchi@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10195', '0.00', 0.05, 2),
(197, 'VERONICA PATRICIA RODRIGUEZ GUALOTUÃ‘A ', '1713848479', '3460163', 'vprodriguezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10196', '0.00', 0.05, 2),
(198, 'VIRGINIA PATRICIA VILLAMEDIANA CARRO ', '1721694584', '6016115', 'vvillamediana@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10197', '0.00', 0.05, 2),
(199, 'ANIBAL EDUARDO HERRERA LANA ', '1102581848', '3331164', 'eduardoherrera@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10198', '0.00', 0.05, 2),
(200, 'CÃ‰SAR MIGUEL ACOSTA ANDINO ', '1709772642', '2889890', 'cacostaandino@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10199', '0.00', 0.05, 2),
(201, 'FRANCISCO ORLANDO ROSALES PALLASCO ', '1003440011', '5119415', 'forosales@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10200', '0.00', 0.05, 2),
(202, 'GRACE YOLANDA LLERENA SARSOZA ', '1714552757', '022480593', 'grllerena@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10201', '0.00', 0.05, 2),
(203, 'JAIME ESTUARDO FERNANDEZ ROMERO ', '1715701080', '5127422', 'jefernandez@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10202', '0.00', 0.05, 2),
(204, 'JOSE FERNANDO RAMIREZ ALVAREZ ', '1710664176', '26017513', 'joramirez@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10203', '0.00', 0.05, 2),
(205, 'JUAN ARSENIO DE LA TORRE CEVALLOS ', '1710583673', '2409360', 'jdelatorre@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10204', '0.00', 0.05, 2),
(206, 'JUAN PABLO CEVALLOS PONCE ', '1704434537', '2291176', 'jpcevallosfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10205', '0.00', 0.05, 2),
(207, 'MERCEDES ELIZABETH ONOFA DAVILA ', '1708626096', '022346195', 'monofa@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10206', '0.00', 0.05, 2),
(208, 'PEDRO JOSÃ‰ ALARCÃ“N CEVALLOS ', '1713622114', '6036607', 'pjalarcon@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10207', '0.00', 0.05, 2),
(209, 'YUBARI CAROLINA VALERO AZUAJE ', '1754760559', '3271253', 'ycvalerofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10208', '0.00', 0.05, 2),
(210, 'ANDREA ELIZABETH BEDOYA RAMOS ', '1716116031', '023517170', 'anbedoya@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10209', '0.00', 0.05, 2),
(211, 'EDISON PATRICIO HARO ENCALADA ', '1706258207', '2955630', 'edpharofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10210', '0.00', 0.05, 2),
(212, 'EMILIANO JOAQUÃN RAMOS ', '24363328', '+54 221 4520674', 'ejramosfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10211', '0.00', 0.05, 2),
(213, 'JEANETH MARGARITA TORRES OLMEDO ', '1716602030', '2863864', 'jemtorresfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10212', '0.00', 0.05, 2),
(214, 'JOHN WILFRIDO CAJAS GUIJARRO ', '1721267308', '023035304', 'jwcajasfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10213', '0.00', 0.05, 2),
(215, 'LOURDES CUMANDÃ MONTESDEOCA ESPÃN ', '1600384620', '2656050', 'lmontesdeoca@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10214', '0.00', 0.05, 2),
(216, 'MATEO PATRICIO VILLALBA ANDRADE ', '1713347308', '2019069', 'mvillalba@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10215', '0.00', 0.05, 2),
(217, 'NANCY CLARA MARIA MEDINA CARRANCO ', '1707565238', '', 'nancymedina@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10216', '0.00', 0.05, 2),
(218, 'PABLO ANDRES TREJO TAPIA ', '0104934633', '02 2194322', 'patrejo@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10217', '0.00', 0.05, 2),
(219, 'PATRICIO RENÃ‰ RIVERA YÃNEZ ', '1715418115', '0233340652', 'privera@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10218', '0.00', 0.05, 2),
(220, 'PAUL ALEXANDER CARRILLO MALDONADO ', '1721926424', '023280203', 'pacarrillo@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10219', '0.00', 0.05, 2),
(221, 'ADRIANA MONTENEGRO BRAZ ', '1706503552', '6037597', 'amontenegro@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10220', '0.00', 0.05, 2),
(222, 'ALEXIS JOSE COLMENARES ZAPATA ', '079591074', '00000000', 'aljcolmenaresfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10221', '0.00', 0.05, 2),
(223, 'CARLOS ANDRES PAREDES MINANGO ', '1711806503', '0999910526', 'caaparedes@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10222', '0.00', 0.05, 2),
(224, 'LESTER MARTIN ANDRÃ‰S CABRERA TOLEDO ', '160162473', '0968832692', 'lecabrerafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10223', '0.00', 0.05, 2),
(225, 'MARCO VINICIO MÃ‰NDEZ COTO ', '304300164', ' 09 39575340', 'mavmendezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10224', '0.00', 0.05, 2),
(226, 'MARÃA FERNANDA NOBOA GONZÃLEZ ', '1706054085', '2262332', 'mafnoboafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10225', '0.00', 0.05, 2),
(227, 'SILVIA LORENA HERRERA VINELLI ', '1717211872', '023317486', 'sherrera@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10226', '0.00', 0.05, 2),
(228, 'CRISTINA MARGARITA MOGOLLON RENDON ', '1713341335', '0960083244', 'crmogollon@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10227', '0.00', 0.05, 2),
(229, 'GAUDYS LAXURY SANCLEMENTE RONQUILLO ', '1754935201', '718-366-6073', 'glsanclementefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10228', '0.00', 0.05, 2),
(230, 'GUSTAVO  GARCÃA BRITO ', 'D001892', '0983173352', 'gugarciafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10229', '0.00', 0.05, 2),
(231, 'HERNÃN ANTONIO MOREANO URIGUEN ', '0913627436', '2410470', 'hmoreanoo@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10230', '0.00', 0.05, 2),
(232, 'JENNY CHACHITA CEDEÃ‘O ALCIVAR ', '1306218338', '3232301', 'jccedenofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10231', '0.00', 0.05, 2),
(233, 'JUAN PABLO  SALAZAR POZO ', '1002441531', '065000549', 'jupsalazarfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10232', '0.00', 0.05, 2),
(234, 'JULISSA CASTRO SILVA ', '5111535', '(51) 2043202', 'jcastrofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10233', '0.00', 0.05, 2),
(235, 'KAREN JOHANNA  BOMBON POZO ', '1804372116', '(45) 98308527', 'kjbombonfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10234', '0.00', 0.05, 2),
(236, 'LUIS ANTONIO UMBRIA ACOSTA ', '1754018065', '2-2418155', 'laumbria@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10235', '0.00', 0.05, 2),
(237, 'MANUEL PREUSSER ', '1757720394', '0987935819', 'mpreusserfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10236', '0.00', 0.05, 2),
(238, 'SANTIAGO FRANCISCO CARRANCO PAREDES ', '1002648721', '022230021', 'cpsantiagofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10237', '0.00', 0.05, 2),
(239, 'WENDY TATIANA VACA HERNÃNDEZ ', '1723027155', '023450527', 'wvacafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10238', '0.00', 0.05, 2),
(240, 'ALAN ERICK RODRÃGUEZ VALDIVIA ', 'F12296081', '560582311564', 'aerodriguezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10239', '0.00', 0.05, 2),
(241, 'EMMA ROSANA POSLIGUA GORDILLO ', '1703408714', '2559449', 'erposliguafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10240', '0.00', 0.05, 2),
(242, 'ESTEBAN VLADIMIR LOPEZ ANDRADE ', '1711763563', '2252479', 'ewlopezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10241', '0.00', 0.05, 2),
(243, 'FELIPE DAVID TERÃN ROMO LEROUX ', '1715461644', '022249885', 'fdteranromo@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10242', '0.00', 0.05, 2),
(244, 'JÃ‰SSICA PAMELA TORRES LESCANO ', '1803753829', '2409258', 'jeptorresfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10243', '0.00', 0.05, 2),
(245, 'JOSÃ‰ RAFAEL MORÃN PERUGACHI ', '1712248226', '3380256', 'jrmoran@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10244', '0.00', 0.05, 2),
(246, 'MARIO ANDRES  CISNEROS BAEZ ', '1713645412', '4503481', 'maancisnerosfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10245', '0.00', 0.05, 2),
(247, 'MICHEL DAVID  QUINTERO ORDOÃ‘EZ ', 'AP712476', '2457767', 'midaquinterofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10246', '0.00', 0.05, 2),
(248, 'NATALIA BEATRIZ LOZA MAYORGA ', '0603717208', '032378727', 'nbloza@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10247', '0.00', 0.05, 2),
(249, 'OMAR ADRIAN BONILLA MARTINEZ ', '1716166234', '0983211559', 'oabonilla@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10248', '0.00', 0.05, 2),
(250, 'PAUL JAVIER PONCE SOLORZANO ', '1714880117', '2493283', 'pjponce@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10249', '0.00', 0.05, 2),
(251, 'ROSARIO ELENA  GÃLVEZ MANCILLA ', '1753710720', '2261026', 'regalvezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10250', '0.00', 0.05, 2),
(252, 'SEBASTIÃN IGNACIO DONOSO BUSTAMANTE ', '1706549878', '2380456', 'sdonoso@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10251', '0.00', 0.05, 2),
(253, 'ANA MARÃA LARREA MALDONADO ', '1709785081', '02 2075996', 'anmlarreafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10252', '0.00', 0.05, 2),
(254, 'DANIEL ESTEBAN JURADO FREIRE ', '1715388920', '3200352', 'dejuradofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10253', '0.00', 0.05, 2),
(255, 'DANIELA OLEAS MOGOLLON ', '1706516695', '023569184', 'daoleas@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10254', '0.00', 0.05, 2),
(256, 'EDGAR ALBERTO ZAMORA AVILES ', 'AN943406', '2818390', 'eazamorafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10255', '0.00', 0.05, 2),
(257, 'EDWIN VINICIO ARCOS NARANJO ', '1803244696', '2415412', 'evarcos@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10256', '0.00', 0.05, 2),
(258, 'FREDDY HERNANDEZ BAZAN ', 'G21536450', '2341298', 'fhernandezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10257', '0.00', 0.05, 2),
(259, 'JAIRO ISRAEL RIVERA VASQUEZ ', '0401370895', '3201343', 'jairiverafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10258', '0.00', 0.05, 2),
(260, 'JUAN DIEGO IZQUIERDO MERINO ', '1709039638', '023491003', 'jdizquierdofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10259', '0.00', 0.05, 2),
(261, 'LUCÃA ELIZABETH RUIZ POZO ', '0400632246', '2275858', 'leruiz@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10260', '0.00', 0.05, 2),
(262, 'MANUEL JOSÃ‰ MERA CEDEÃ‘O ', '0912632080', '043041873', 'jmmera@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10261', '0.00', 0.05, 2),
(263, 'MARÃA DE LOS ANGELES BARRIONUEVO MORA ', '1709276065', '2473512', 'madbarrionuevfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10262', '0.00', 0.05, 2),
(264, 'NORA BAIN ANAYA LUNA ', 'G21994341', '0983750629', 'nbanayafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10263', '0.00', 0.05, 2),
(265, 'TANIA LIZETH ZABALA PEÃ‘AFIEL ', '0604224865', '022459567', 'tlzabala@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10264', '-2.24', 0.05, 2),
(266, 'VANESSA MONTENEGRO HIDALGO ', 'AN483677', '0984153734', 'vmontenegro@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10265', '0.00', 0.05, 2),
(267, 'VICENTE GUAMÃN LIMA ', '1103653448', '0994765240', 'vguamanfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10266', '0.00', 0.05, 2),
(268, 'CARLA XIMENA VELEZ PROAÃ‘O ', '1713420857', '3464973', 'cxvelez@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10267', '0.00', 0.05, 2),
(269, 'CARLOS MIGUEL RODRIGUES DE CAIRES ', '070050323', '0984474421', 'cmrodriguesdefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10268', '0.00', 0.05, 2),
(270, 'CARMEN PATRICIA  TEANGA ZURITA ', '0603186461', '063015383', 'cpteangafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10269', '0.00', 0.05, 2),
(271, 'DIANA MARCELA PAZ GOMEZ ', 'AO607523', '6014820', 'dmpazfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10270', '0.00', 0.05, 2),
(272, 'ISARELIS PÃ‰REZ ONES ', '0960282531', '(02) 2262139', 'isaperezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10271', '0.00', 0.05, 2),
(273, 'JUAN CAMILO  RAVE RESTREPO ', '1088250495', '3158998', 'jcravefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10272', '0.00', 0.05, 2),
(274, 'MARCELA IVANOVA AGUIRRE CLAVIJO ', '1709332199', '22490303', 'miaguirrefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10273', '0.00', 0.05, 2),
(275, 'MYRIAM VANESSA PINTO VALENCIA ', '1714328745', '2340517', 'mvpinto@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10274', '0.00', 0.05, 2),
(276, 'OSMEL ALEJANDRO HERNÃNDEZ LUIS ', '1756979520', '2459567', 'osahernandezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10275', '0.00', 0.05, 2),
(277, 'TAYMI MILAN PARADELA ', 'I740051', '(+53)78830253', 'tmilanfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10276', '0.00', 0.05, 2),
(278, 'VERÃ“NICA ELECTRA PURUNCAJAS MATUTE ', '1709914426', '022372281', 'vepuruncajama@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10277', '0.00', 0.05, 2),
(279, 'VÃCTOR ANTONIO PELÃEZ MORENO ', '1103862767', '072588144', 'vapelaez@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10278', '0.00', 0.05, 2),
(280, 'DIANA CAROLINA RODRIGUEZ TIPANTUÃ‘A ', '1716801103', '2617004', 'dcrodriguezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10279', '0.00', 0.05, 2),
(281, 'JOHNNY RENE CEDEÃ‘O CUERO ', '0802316489', '023214313', 'jrcedenofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10280', '0.00', 0.05, 2),
(282, 'MARTHA IRAIZ OVIEDO BENALCAZAR ', '1721838561', '3214126', 'obmarthafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10281', '0.00', 0.05, 2),
(283, 'ALEXANDRA XIMENA ANALUISA VIZUETE ', '1718759416', '5117154', 'axanaluisafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10282', '0.00', 0.05, 2),
(284, 'ANDREA VANESSA ROBALINO MOLINA ', '1716237399', '2911385', 'avrobalinofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10283', '0.00', 0.05, 2),
(285, 'CARLOS ALBERTO SALAN ORTEGA ', '1805197017', '032871266', 'saocarlosfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10284', '0.00', 0.05, 2),
(286, 'ELISA PEÃ‘AHERRERA AGUIRRE ', '1713671962', '2451553', 'epenaherrerafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10285', '0.00', 0.05, 2),
(287, 'GABRIELA ELIZABETH MOSQUERA DELGADO ', '1712092285', '2331988', 'gemosquera@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10286', '0.00', 0.05, 2),
(288, 'ISABEL BERENICE ALVARADO ALVEAR ', '1716160799', '2479298', 'ibalvaradofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10287', '0.00', 0.05, 2),
(289, 'KARINA ALEJANDRA BRAVO MONTERO ', '17500773-3', '222222222222', 'kabravofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10288', '0.00', 0.05, 2),
(290, 'LUCIA PATRICIA SEVILLANO CASANOVA ', '1003981758', '0992534264', 'lpsevillanofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10289', '0.00', 0.05, 2),
(291, 'MARÃA GRACIA GAMBOA MALO ', '1721227039', '2798145', 'mggamboafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10290', '0.00', 0.05, 2),
(292, 'MICHELLE GABRIELA QUINTANA HUILCAPI ', '1721832432', '2850374', 'mgquintanafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10291', '0.00', 0.05, 2),
(293, 'AIDA LORENA CHAVEZ BALSECA ', '1717556565', '023390232', 'alchavez@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10292', '0.00', 0.05, 2),
(294, 'IVAN ALDEMAR RODRIGUEZ VALENCIA ', '98135790', '7220494', 'iarodriguezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10293', '0.00', 0.05, 2),
(295, 'MICHELLE JUDITH MORETTI PAREDES ', '1710418037', '0984420281', 'mjmorettifl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10294', '0.00', 0.05, 2),
(296, 'VINICIO KAR ATAMAINT WAMPUTSAR ', '1400341648', '022481678', 'vkatamaintfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10295', '0.00', 0.05, 2),
(297, 'ALBERTO  CAYETANO MARCOS ', 'G13710922', 'S/N', 'acayetanofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10296', '0.00', 0.05, 2),
(298, 'ALDO JOSÃ‰ VARGAS OROZCO ', '0603014101', '032942664', 'ajvargasfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10297', '0.00', 0.05, 2),
(299, 'CAROLINA VANESSA BONE BARRO ', '1718573742', '062903506', 'cvbonefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10298', '0.00', 0.05, 2),
(300, 'DIANA ISABEL LÃ“PEZ CHACÃN ', '1720173622', '4503359', 'dilopezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10299', '0.00', 0.05, 2),
(301, 'FRANKLIN ABEL RAMÃREZ GUERRERO ', '1400449672', '023210743', 'faramirezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10300', '0.00', 0.05, 2),
(302, 'GERSON DARWIN CLAROS RODRIGUEZ ', 'B04471720', '0984762384', 'gdclarosfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10301', '0.00', 0.05, 2),
(303, 'IVONNE ALEXANDRA MORALES IZA ', '1721307070', '2642545', 'iamoralesfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10302', '0.00', 0.05, 2),
(304, 'JAVIER AUGUSTO ABI-SAAB ARRIECHE ', '132753380', '0995531443', 'jaabi-saabfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10303', '0.00', 0.05, 2),
(305, 'JESÃšS NILO LLUSCO MAMANI ', '4813373', '0984584860', 'jnlluscofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10304', '0.00', 0.05, 2),
(306, 'JOHNATAN JOHNN VEGA SLEE ', '45382672', '022528048', 'jjvegafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10305', '0.00', 0.05, 2),
(307, 'JORGE WASHINGTON  LLUMIQUINGA LEGÃ‘A ', '1716305097', '022285757', 'jwllumiquingafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10306', '0.00', 0.05, 2),
(308, 'LAURA VIVIANA  CHAUSTRE FANDIÃ‘O ', 'AM726420', '2222395', 'lvchaustrefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10307', '0.00', 0.05, 2),
(309, 'MARÃA ELENA RAMÃREZ GONZÃLEZ ', '5915481', '023228383', 'maeramirezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10308', '0.00', 0.05, 2),
(310, 'MERANYELY VANESSA VERA COSTA ', '1304016312', '2506950', 'mvvera@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10309', '0.00', 0.05, 2),
(311, 'ROSA ELVIRA HUAYRE COCHACHIN ', '437217641', '2528048', 'rehuayrefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10310', '0.00', 0.05, 2),
(312, 'ANDRES ROBERTO ESPAÃ‘A BUSTOS ', '0401257472', '3199106', 'arespanafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10311', '0.00', 0.05, 2),
(313, 'CAROL NATALIA GUERRA NAVARRETE ', '1719344788', '2435484', 'canguerrafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10312', '0.00', 0.05, 2),
(314, 'DANIEL GIRÃ“N CASTELLANOS ', '1144166550', '2-2557109', 'dgironfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10313', '0.00', 0.05, 2),
(315, 'ESTEBAN DELGADO GUERRERO ', 'AP747155', '000000000', 'edelgadofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10314', '0.00', 0.05, 2),
(316, 'GABRIEL IGNACIO LASPINA TAPIA ', '1722257662', '2885615', 'gilaspinafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10315', '0.00', 0.05, 2),
(317, 'JENNY ALEXANDRA ESCOBAR HERRADA ', '1753164795', '02 451 14 14', 'jaescobarfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10316', '0.00', 0.05, 2),
(318, 'LEIDY JULIETH ROJAS GUZMÃN ', 'AO082738', '0960244611', 'ljrojasfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10317', '0.00', 0.05, 2),
(319, 'MAYLY PASTORA TORRES LINARES ', '1001896123', '022520621', 'mapatorresfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10318', '0.00', 0.05, 2),
(320, 'NELSON DAVID  GUERRÃ“N PALACIOS ', '1721817599', '022507522', 'ndguerronfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10319', '0.00', 0.05, 2),
(321, 'NEWELL ABIUD FONSECA ARIZA ', '1755255823', '2089312', 'nafonsecafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10320', '0.00', 0.05, 2),
(322, 'NIDIA ANDREA CASTILLO SINISTERRA ', '1757762263', '0991385511', 'niancastillofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10321', '0.00', 0.05, 2),
(323, 'SELMA JAZMÃN VÃSQUEZ BRACAMONTES ', 'G17685614', '0', 'sjvasquezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10322', '0.00', 0.05, 2),
(324, 'SILVIA RUBIELA SERRANO LOPEZ ', 'AN699242', '0000000', 'srserranofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10323', '0.00', 0.05, 2),
(325, 'CARMEN LUCÃA PÃEZ VINTIMILLA ', '0103866190', '2528290', 'clpaezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10324', '0.00', 0.05, 2),
(326, 'CATALINA YOLANDA PAZMIÃ‘O PAZMIÃ‘O ', '1713040861', '3807214', 'cypazminofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10325', '0.00', 0.05, 2),
(327, 'EDGAR MAURICIO USHIÃ‘A ATIENCIA ', '1710534320', '3316211', 'emushinafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10326', '0.00', 0.05, 2),
(328, 'FRANCINÃ‰ OSWALDO CÃ“RDOVA RAMÃREZ ', '1710815208', '5224125', 'focordovafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10327', '0.00', 0.05, 2),
(329, 'NORMA ROCÃO  GÃ“MEZ SEMANATE ', '1719294850', '022496006', 'nrgomezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10328', '0.00', 0.05, 2),
(330, 'ADRIANA ELIZABETH MANZANO JÃCOME ', '1717492829', '2314547', 'aemanzanofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10329', '0.00', 0.05, 2),
(331, 'ALEXANDRA JUDITH VELASCO VILLACIS ', '1712680857', '3333450', 'vvalexandrafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10330', '0.00', 0.05, 2),
(332, 'ANDREA LORENA SALAS RECALDE ', '1711433571', '0222523896', 'srandreafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10331', '0.00', 0.05, 2),
(333, 'BETTY MARÃA SALAZAR PONCE ', '1709233850', '2 813 696', 'bmsalazarfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10332', '0.00', 0.05, 2),
(334, 'CELESTE  TORRES SOYA ', '16813861-k', '...', 'ctorresfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10333', '0.00', 0.05, 2),
(335, 'DANIEL HUMBERTO VARGAS SERNA ', 'G20554201', '3293023803820', 'dahuvargasfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10334', '0.00', 0.05, 2),
(336, 'DENNIS JAVIER VÃSCONEZ VACA ', '1715962831', '2486523', 'djvasconezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10335', '0.00', 0.05, 2);
INSERT INTO `clientes` (`id_cliente`, `nombre_cliente`, `documento_cliente`, `telefono_cliente`, `email_cliente`, `direccion_cliente`, `status_cliente`, `date_added`, `codigo`, `saldo_cliente`, `descuento`, `empresa_cliente`) VALUES
(337, 'EDWIN ALEXANDER CEBALLOS TARAMUEL ', 'AS822237', '00', 'eaceballosfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10336', '0.00', 0.05, 2),
(338, 'ESTEFANÃA ABIGAIL GRANJA AGUIRRE ', '1722940903', '022408551', 'eagranjafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10337', '0.00', 0.05, 2),
(339, 'FERNANDO EFRAÃN ESCOBAR PÃEZ ', '1718057365', '2520242', 'feescobarfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10338', '0.00', 0.05, 2),
(340, 'GEVILLER YESID MARÃN PULGARÃN ', 'AO470570', '025126758', 'gymarinfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10339', '0.00', 0.05, 2),
(341, 'GLORIA ALEXANDRA  ANGEL PENAGOS ', 'AU132339', '2955173', 'gaangelfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10340', '0.00', 0.05, 2),
(342, 'ISABEL PAZ YAÃ‘EZ MENA ', '169363080', '0987775546', 'ipyanezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10341', '0.00', 0.05, 2),
(343, 'IVÃN BERNARDO ULCHUR-ROTA ', '1711339190', '098 1241167', 'ibulchur-rotafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10342', '0.00', 0.05, 2),
(344, 'MAGALY CRISTINA SALAS OBANDO ', '1085266451', '00000', 'masalas@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10343', '0.00', 0.05, 2),
(345, 'MARÃA MANUELA ESTRELLA RIVADENEIRA ', '1719343004', '022386140', 'mmestrellafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10344', '0.00', 0.05, 2),
(346, 'NATALIA LÃ“PEZ CERQUERA ', 'AQ363952', '0978988339', 'nlopezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10345', '0.00', 0.05, 2),
(347, 'PAULINO RAMOS BALLESTEROS ', 'PAA4682229', 'no tengo', 'pramosfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10346', '0.00', 0.05, 2),
(348, 'ROBERT DANILO OROZCO POMA ', '0602202475', '0984274378', 'rdorozcofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10347', '0.00', 0.05, 2),
(349, 'WALLIS AMERICA PAZ Y MIÃ‘O BOLAÃ‘OS ', '1707300388', '3477592', 'pywallisfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10348', '0.00', 0.05, 2),
(350, 'WARY KOLLITA MUENALA TERÃN ', '1002307393', '022433475', 'wkmuenalafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10349', '0.00', 0.05, 2),
(351, 'ANDRÃ‰S WASHINGTON BEDÃ“N FREIRE ', '1717257685', '023281038', 'awbedonfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10350', '0.00', 0.05, 2),
(352, 'CARLOS ISAI  TORRES LOZADA ', 'G25053815', '0958601741', 'citorresfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10351', '0.00', 0.05, 2),
(353, 'DORA CAROLINA BALLÃ‰N ROBLES ', 'AM624788', '0993845469', 'dcballenfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10352', '0.00', 0.05, 2),
(354, 'EMILIO QUETZALCOATL SALAO STERCKX ', '0602744534', '022552009', 'eqsalaofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10353', '0.00', 0.05, 2),
(355, 'GALO DAVID VALENCIA ROMO ', '1714952171', '2557439', 'gadvalenciafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10354', '0.00', 0.05, 2),
(356, 'GLORIA QUATTRONE ', 'YA6173715', '02323226743', 'gquattronefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10355', '0.00', 0.05, 2),
(357, 'IGNACIO ANDRÃ‰S CONTRERAS ILABACA ', 'F14950275', '02-222-4547', 'iacontrerasfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10356', '0.00', 0.05, 2),
(358, 'JAIME EMANUEL WONG JO ', '0930166798', '042385749', 'jewongfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10357', '0.00', 0.05, 2),
(359, 'LUIS EDUARDO CANDO CARRERA ', '1715425219', '022607048', 'lecandofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10358', '0.00', 0.05, 2),
(360, 'RAMIRO JAVIER AGUILAR VILLAMARÃN ', '1720570058', 'N/A', 'rjaguilarfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10359', '0.00', 0.05, 2),
(361, 'TILSA AMANDA GONZALES CORDOVA ', '40437470', '0999914115', 'tagonzalesfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10360', '0.00', 0.05, 2),
(362, 'VERONICA ALEXANDRA  BONILLA VALLE ', '1003686787', '062918577', 'vabonillafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10361', '0.00', 0.05, 2),
(363, 'YOANNA  TOLEDO LEYVA ', '1756987846', '2485740', 'ytoledofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10362', '0.00', 0.05, 2),
(364, 'ANDRÃ‰S FRANCISCO  ROMÃN MORALES ', '1714482005', '022402770', 'afromanfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10363', '0.00', 0.05, 2),
(365, 'BAYRON  ORREGO CHICA ', 'AN323566', '000', 'borregofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10364', '0.00', 0.05, 2),
(366, 'DARIO ANTONIO FLORES BRAZZERO ', '1711731032', '(02)2401222', 'daanfloresfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10365', '0.00', 0.05, 2),
(367, 'FELIPE DUTRA DE CARVALHO HEIMBURGER ', 'DB028920', '02 2277 300', 'fdutradecarvafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10366', '0.00', 0.05, 2),
(368, 'GEOVANNA LUCIA VALLE OÃ‘ATE ', '0604018218', '2493938', 'glvallefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10367', '0.00', 0.05, 2),
(369, 'GREGORIO SEBASTIÃN PÃEZ SANTOS ', '1717546343', '(02) 2-528-953', 'gspaezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10368', '0.00', 0.05, 2),
(370, 'HÃ‰CTOR SANTIAGO ROMERO CORRAL ', '1716788144', '2900571', 'hsromerofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10369', '0.00', 0.05, 2),
(371, 'LUIS SANTIAGO LLANOS ESCOBAR ', '1723475156', '022238475', 'lsllanos@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10370', '0.00', 0.05, 2),
(372, 'MARIO YAUCEN REMACHE ', '0602729345', '032 963 205', 'myaucenfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10371', '0.00', 0.05, 2),
(373, 'SIMÃ“N MANUEL FEIJOO VELASCO ', '1712962586', '022658556', 'smfeijoofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10372', '0.00', 0.05, 2),
(374, 'VERÃ“NICA DE LOS ANGELES CÃCERES CHASIPANTA ', '1802540797', '022455375', 'vdcaceresfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10373', '0.00', 0.05, 2),
(375, 'XIMENA PATRICIA ECHEVERRÃA MANTILLA ', '1708489859', '6015039  2404495', 'xpecheverriafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10374', '0.00', 0.05, 2),
(376, 'ANDREA CAROLINA RODRIGUEZ MORALES ', '1719852079', '023050858', 'ancrodriguezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10375', '0.00', 0.05, 2),
(377, 'AZALIA CERVANTES MARTÃNEZ ', ' G15840766', 'Ninguno', 'azacervantesfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10376', '0.00', 0.05, 2),
(378, 'DAPHNE ESTEFANIA VILLENA CARRERA ', '1712336476', '3280649', 'devillenafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10377', '0.00', 0.05, 2),
(379, 'DIANA CAROLINA SIMBAÃ‘A GONZÃLEZ ', '1720942711', '2514473047', 'dicsimbanafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10378', '0.00', 0.05, 2),
(380, 'ESTEFANY MALENA JURADO VELASTEGUI ', '1718641275', '2334956', 'emjuradofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10379', '0.00', 0.05, 2),
(381, 'IRMA ESTHELA FLORES MEJIA ', '1709719700', '3270690', 'iefloresfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10380', '0.00', 0.05, 2),
(382, 'LUISA FERNANDA RODRÃGUEZ BOHÃ“RQUEZ ', 'AS052380', '0983128052', 'lfrodriguezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10381', '0.00', 0.05, 2),
(383, 'NANCY YENNY VELASCO GUASAMALLI ', '31445566', '92- 5214007', 'nyvelascofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10382', '0.00', 0.05, 2),
(384, 'TATIANA JADIRA TORRES TAPIA ', '1717211781', '3880292', 'tjtorresfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10383', '0.00', 0.05, 2),
(385, 'ANDREA DE LOS ÃNGELES CEVALLOS VILLARREAL ', '1713501029', '2251396', 'adcevallosfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10384', '0.00', 0.05, 2),
(386, 'ANDREA LUCIA SANCHEZ NOROÃ‘A ', '1722125950', '2436385', 'snandreafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10385', '0.00', 0.05, 2),
(387, 'BLANCA MARÃA RIVADENEIRA KINGMAN ', '1715412829', '2375047', 'bmrivadeneirafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10386', '0.00', 0.05, 2),
(388, 'DIANA CAROLINA CÃRDENAS PAREDES ', '1721761672', '2661660', 'dccardenasfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10387', '0.00', 0.05, 2),
(389, 'DIANA MARÃA ALMEIDA NOBOA ', '1718616046', '022558594', 'dmalmeidafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10388', '0.00', 0.05, 2),
(390, 'ERIKA SEBASTIAN AGUILAR ', 'G20601449', '0987079242', 'esebastianfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10389', '0.00', 0.05, 2),
(391, 'GLORIA MARÃA BERMÃšDEZ BARRERA ', 'AT105287', '0', 'gmbermudezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10390', '0.00', 0.05, 2),
(392, 'JESUS EDUARDO VILLOTA MERA ', 'AS904269', '0989100054', 'jevillotafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10391', '0.00', 0.05, 2),
(393, 'KUYMI THAYARI TAMBACO DIAZ ', '1003337449', '0980825767', 'kttambaco@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10392', '0.00', 0.05, 2),
(394, 'LAUTARO FRANCISCO GIANOLA ', 'AAD937553', '2946800', 'lfgianolafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10393', '0.00', 0.05, 2),
(395, 'LILIANA MIREYA ILLESCAS RAMOS ', '0104782040', '2854250', 'lmillescasfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10394', '0.00', 0.05, 2),
(396, 'LIUDAMYS BARBARA SAEZ LAREDO ', 'I591423', '5142 930', 'libasaezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10395', '0.00', 0.05, 2),
(397, 'MARÃA DOLORES  VACA EGUEZ ', '1717930323', '2341 881', 'mdvacafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10396', '0.00', 0.05, 2),
(398, 'MELVA ELIZABETH RUIZ ESCOBAR ', '1711918530', '3517311', 'meruiz@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10397', '0.00', 0.05, 2),
(399, 'PABLO ANDRES PESANTES ALMEIDA ', '1714111893', '3820320', 'papesantes@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10398', '0.00', 0.05, 2),
(400, 'PAULINA ALEJANDRA ORELLANA CONTRERAS ', '17453543-4', '2236533', 'paorellanafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10399', '0.00', 0.05, 2),
(401, 'SOLANGE POLETH  RIVERA CARRILLO ', '1722227145', '2734421', 'rcsolangefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10400', '0.00', 0.05, 2),
(402, 'TANIA LIZETH BONILLA MENA ', '0602700932', '2901416', 'tlbonillafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10401', '0.00', 0.05, 2),
(403, 'ANA KAREN GARITA SÃNCHEZ ', 'G19463605', '2040421', 'akgaritafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10402', '0.00', 0.05, 2),
(404, 'BINISA CRUZ SALINAS ', 'G07249671', '5215554343945', 'bcruzfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10403', '0.00', 0.05, 2),
(405, 'CARMEN CECILIA BOLÃVAR IBARRA ', '094034211', '0969009036', 'ccbolivarfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10404', '0.00', 0.05, 2),
(406, 'CAROLINA ANDREA CAZA TERÃN ', '1720443645', '022075044', 'cacazafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10405', '0.00', 0.05, 2),
(407, 'CAROLINE GRACE MARTINEZ FICK ', '1717644593', '0984346106', 'cgmartinezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10406', '0.00', 0.05, 2),
(408, 'CRISTINA ELIZABETH  ALDAZ BARRENO ', '1716895550', '022497436', 'cealdazfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10407', '0.00', 0.05, 2),
(409, 'EFRÃ‰N XAVIER ALVARADO CEVALLOS ', '1717879124', '02 2560683', 'exalvaradofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10408', '0.00', 0.05, 2),
(410, 'ERICA PATRICIA ROJAS VILLARROEL ', '1755372271', '00000000', 'eprojasfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10409', '0.00', 0.05, 2),
(411, 'ESTEFANIA BELEN AGUAYO ZURITA ', '1713065330', '2498859', 'ebaguayofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10410', '0.00', 0.05, 2),
(412, 'JOSEPH ALEJANDRO SALAZAR PÃRAMO ', '1714759550', '2415450', 'joasalazarfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10411', '0.00', 0.05, 2),
(413, 'JUAN CARLOS SUÃREZ QUISHPE ', '0704997519', '073085287', 'jcsuarezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10412', '0.00', 0.05, 2),
(414, 'NADIA XIMENA LÃ“PEZ CAMACHO ', '1804422457', '5135248', 'nxlopezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10413', '0.00', 0.05, 2),
(415, 'NELSON RODRIGO JARA PADILLA ', '1002149332', '0989599661', 'nerjarafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10414', '0.00', 0.05, 2),
(416, 'SHIRLEY DAYANA  VENEGAS ESPINOSA ', '1714551221', '3108583', 'sdvenegasfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10415', '0.00', 0.05, 2),
(417, 'SOFÃA LUCIANA  SANTILLÃN SOSA ', '1722584537', '023132176', 'slsantillanfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10416', '0.00', 0.05, 2),
(418, 'SOFIA NATHALY YEPEZ NARANJO ', '1726564618', '2632093', 'ynsofiafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10417', '0.00', 0.05, 2),
(419, 'CRISTIAN  GARCÃA VILLALBA ', 'AP013707', '3176904280', 'cgarciafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10418', '0.00', 0.05, 2),
(420, 'DIEGO PATRICIO OLMEDO BENAVIDES ', '1721477915', '2446334', 'dpolmedofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10419', '0.00', 0.05, 2),
(421, 'JORGE ANTONIO ARAGÃ“N ', '08200002855', '0999298158', 'jorantoniofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10420', '0.00', 0.05, 2),
(422, 'PABLO DAVID LOPEZ LUDEÃ‘A ', '1725168981', '3463354', 'pdlopezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10421', '0.00', 0.05, 2),
(423, 'PAOLA ALEJANDRA RAMÃREZ BRAVO ', '1711398386', '2320 303', 'paramirezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10422', '0.00', 0.05, 2),
(424, 'ANA ISABEL DÃAZ PABÃ“N ', '1719370551', '3228460', 'aidiazfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10423', '0.00', 0.05, 2),
(425, 'CARLOS DANIEL GRANJA TORRES ', '1718274218', '2644966', 'cdgranjafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10424', '0.00', 0.05, 2),
(426, 'DANIEL ALEJANDRO RAMIREZ LOPEZ ', '6765638', '0999071642', 'daalramirez@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10425', '0.00', 0.05, 2),
(427, 'EDGAR PAÃšL SUNTASIG MASABANDA ', '0503582512', '0984509992', 'edpsuntasigfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10426', '0.00', 0.05, 2),
(428, 'ENNY MARIEL VELEZ ZAMBRANO ', '1309567426', '0997413474', 'emvelezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10427', '0.00', 0.05, 2),
(429, 'GONZALO EDUARDO MERUVIA SALINAS ', '6196484', '2446794', 'gemeruviafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10428', '0.00', 0.05, 2),
(430, 'JAN FRANCOIS CORONEL REAL ', '0602340671', '2241680', 'jfcoronel@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10429', '0.00', 0.05, 2),
(431, 'JONATHAN ALEXANDER  ACHIG PILLAJO ', '1723209696', '3820068', 'jaachigfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10430', '0.00', 0.05, 2),
(432, 'JORGE LUIS BAQUERIZO EGAS ', '1721080933', '3284039', 'jlbaquerizofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10431', '0.00', 0.05, 2),
(433, 'JUAN PABLO VINTIMILLA JARAMILLO ', '0103558763', '022922204', 'jpvintimillafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10432', '0.00', 0.05, 2),
(434, 'MAGALY FELIPA MARISTELLA VALDEZ SARABIA ', '128781487', '3228203', 'mvaldezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10433', '0.00', 0.05, 2),
(435, 'MARÃA EUGENIA CÃ‰SPEDES HIDALGO ', '1721982567', '2490393', 'mecespedesfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10434', '0.00', 0.05, 2),
(436, 'NORI MELISSA CASTRO PARRA ', '1400731756', '00000000', 'nmcastrofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10435', '0.00', 0.05, 2),
(437, 'OMAR SANTIAGO BARRENO RAMOS ', '1711960847', '6013738', 'obarreno@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10436', '0.00', 0.05, 2),
(438, 'RAQUEL ESTEFANY  CORDERO DE LA CRUZ ', '1714334867', '0984579667', 'recorderodelafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10437', '0.00', 0.05, 2),
(439, 'RODRIGO MARCELO CRIOLLO BURBANO ', '0302016167', '074116009', 'rmcriollofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10438', '0.00', 0.05, 2),
(440, 'SUELEN JENIFHER GRANDA AVILES ', '1718092412', '3194003', 'sjgrandafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10439', '0.00', 0.05, 2),
(441, 'XIMENA ALEXANDRA FIGUEROA CÃRDENAS ', '1720796893', '2613037', 'xafigueroafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10440', '0.00', 0.05, 2),
(442, 'YETEL RICAÃ‘O NOGUERA ', '1756805238', '2954451', 'yericanofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10441', '0.00', 0.05, 2),
(443, 'ADRIANA SOFIA BRITO MONTENEGRO ', '1714109251', '2666538', 'bmadrianafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10442', '0.00', 0.05, 2),
(444, 'ANA MARÃA  LOZANO GARCÃA ', 'AQ927012', '3238436', 'amlozanofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10443', '0.00', 0.05, 2),
(445, 'ANDREA JANETH FARFÃN CALVACHE ', '1722635586', '3412878', 'ajfarfanfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10444', '0.00', 0.05, 2),
(446, 'CYNTHIA KARINA GUADALUPE MEDINA ', '1718599036', '022681850', 'ckguadalupefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10445', '0.00', 0.05, 2),
(447, 'GABRIELA ALEJANDRA ROBALINO CIFUENTES ', '0604082099', '026025247', 'garobalinofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10446', '0.00', 0.05, 2),
(448, 'GLORIAMARYS CHAVEZ CAMARA ', '0960252708', '3160121', 'gchavezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10447', '0.00', 0.05, 2),
(449, 'HUGO ANACLETO RAMÃREZ HUAMÃN ', '116091009', '3140473', 'huaramirezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10448', '0.00', 0.05, 2),
(450, 'JACKELINE ELIZABETH HERRERA PIEDRA ', '1720216835', '3811707', 'jaelherrerafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10449', '0.00', 0.05, 2),
(451, 'LUIS FERNANDO PEÃ‘AFIEL GUANOLUISA ', '1719772889', '022611655', 'lfpenafielfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10450', '0.00', 0.05, 2),
(452, 'MARÃA ESTHER MENDOZA ESPINOZA ', '0104143433', '072824605', 'memendozafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10451', '0.00', 0.05, 2),
(453, 'NANCY JANNETH PALOMO PALOMO ', '1721818209', '3047045', 'njpalomofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10452', '0.00', 0.05, 2),
(454, 'ROCÃO MARGOTH ELIZALDE ROBLES ', '1104341316', '2597109', 'rmelizaldefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10453', '0.00', 0.05, 2),
(455, 'SANTIAGO ANDRÃ‰S PÃ‰REZ PAZMIÃ‘O ', '1709500514', '6037672', 'sperez@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10454', '0.00', 0.05, 2),
(456, 'DANIELA ALEXANDRA BURBANO DE LARA RODRÃGUEZ ', '1713477493', '3319555', 'daburbanodelafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10455', '0.00', 0.05, 2),
(457, 'GALO ANTONIO PESANTES GÃLVEZ ', '0918112301', '0993501931', 'gapesantesfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10456', '0.00', 0.05, 2),
(458, 'PABLO LUCAS CALDERON PEREZ ', 'AN763253', '2726345', 'plcalderonfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10457', '0.00', 0.05, 2),
(459, 'SEBASTIAN GUILLERMO NILO VALENZUELA ', 'P03206480', '022435478', 'segunilofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10458', '0.00', 0.05, 2),
(460, 'VANESSA ALEJANDRA JARAMILLO BENAVIDES ', '1716799448', '2400444', 'vajaramillofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10459', '0.00', 0.05, 2),
(461, 'ADALIVZA PAOLA BRAVO JIMÃ‰NEZ ', '1104412208', '2405253', 'apbravofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10460', '0.00', 0.05, 2),
(462, 'AMANDA CRISTINA YÃ‰PEZ SALAZAR ', '1716750904', '023226718', 'acyepezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10461', '0.00', 0.05, 2),
(463, 'ANDREA CAROLINA CASTILLO PIEDRA ', '1724023880', '3226502', 'accastillofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10462', '0.00', 0.05, 2),
(464, 'BRYAN WLADIMIR  MÃRQUEZ ASIMBAYA ', '1722646872', '2078800', 'bwmarquezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10463', '0.00', 0.05, 2),
(465, 'CAMILA MARIA PEREZ CUBILLOS ', '1032367077', '23330913', 'cmperezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10464', '0.00', 0.05, 2),
(466, 'CARLOS EMILIO BRAVO GRIJALVA ', '1711380756', '6046605', 'cebravofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10465', '0.00', 0.05, 2),
(467, 'DANIEL GÃ“MEZ DE LA TORRE HIDALGO ', '1723129308', '3818354', 'dgomezdelafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10466', '0.00', 0.05, 2),
(468, 'DIEGO BERNABÃ‰ CHULDE REVELO ', '1003160619', '062603686', 'dbchuldefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10467', '0.00', 0.05, 2),
(469, 'GEOVANNA ALEXANDRA MANTILLA MACHASILLA ', '1718364746', '2496274', 'gamantillafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10468', '0.00', 0.05, 2),
(470, 'ILIANA JOHANNA CARABALÃ MÃ‰NDEZ ', '1003538921', '062562016', 'ijcarabalifl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10469', '0.00', 0.05, 2),
(471, 'ISRAEL PATRICIO LUDEÃ‘A GUAMÃN ', '1104888902', '0', 'ipludenafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10470', '0.00', 0.05, 2),
(472, 'KATIC TAMIANA GARCÃA ALVARADO ', '1711956068', '2693882', 'ktgarciafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10471', '0.00', 0.05, 2),
(473, 'LUIS SANTIAGO MIRANDA TUFIÃ‘O ', '1712819943', '022886449', 'lsmirandafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10472', '0.00', 0.05, 2),
(474, 'MARIA ALEJANDRA ESCALANTE RUBIO ', 'AQ368077', '0995937227', 'maescalantefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10473', '0.00', 0.05, 2),
(475, 'OSCAR ANDRES  CAVIEDES ALBÃN ', '1716953458', '023281339', 'oacaviedesfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10474', '0.00', 0.05, 2),
(476, 'RENATO ISMAEL JARAMILLO PAREDES ', '1717434151', '2898109', 'rijaramillofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10475', '0.00', 0.05, 2),
(477, 'ROBERTO CARLOS SHIGUANGO PÃRRAGA ', '1500595747', '052685839', 'rcshiguangofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10476', '0.00', 0.05, 2),
(478, 'ROSITA CECILIA  GONZÃLEZ URZÃšA ', '266297846', '0958983458', 'rcgonzalezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10477', '0.00', 0.05, 2),
(479, 'VALENTINA DANIELA REYES PEÃ‘A ', '166220106', '0981616487', 'vdreyesfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10478', '0.00', 0.05, 2),
(480, 'VERÃ“NICA MARIBEL  QUILUMBA GUDIÃ‘O ', '0603175357', '032614052', 'vmquilumbafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10479', '0.00', 0.05, 2),
(481, 'ANDREA GABRIELA NARVAEZ NARANJO ', '1719504274', '2835001', 'agnarvaezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10480', '0.00', 0.05, 2),
(482, 'DEYSI ROCÃO  DONCEL ROMERO ', 'AQ123064', '000', 'drdoncelfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10481', '0.00', 0.05, 2),
(483, 'DIEGO FERNANDO  GONZALEZ GUEVARA ', '1144171574', '4348034', 'dfgonzalezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10482', '0.00', 0.05, 2),
(484, 'ENRIQUE ALEJANDRO MONTUFAR REINOSO ', '1721258455', '2224301', 'eamontufarfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10483', '0.00', 0.05, 2),
(485, 'FABIÃN EDUARDO SEVILLA ZARUMA ', '1714438197', '022736560', 'fesevillafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10484', '0.00', 0.05, 2),
(486, 'LUIS EDUARDO CASTILLO GÃLVEZ ', '1105200560', '0997577617', 'luecastillofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10485', '0.00', 0.05, 2),
(487, 'MARIA CRISTINA MENDEZ TAPIERO ', 'AP017907', '960244579', 'mcmendezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10486', '0.00', 0.05, 2),
(488, 'MARÃA FERNANDA HURTADO VICENTE ', '1103906010', '025103969', 'mfhurtadofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10487', '0.00', 0.05, 2),
(489, 'MARÃA FERNANDA  SÃNCHEZ PINCAY ', '0919420679', '023227105', 'marfesanchezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10488', '0.00', 0.05, 2),
(490, 'MARIA SOL FRANSOI ', 'AAA433734', '+5434193568259', 'masofransoifl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10489', '0.00', 0.05, 2),
(491, 'MICHAEL HERNÃN ZAMBRANO GODOY ', '0704447515', '3111107', 'mhzambranofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10490', '0.00', 0.05, 2),
(492, 'MICHELLE ALEJANDRA  NOBOA BASANTES ', '1721250684', '022372436', 'manoboafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10491', '0.00', 0.05, 2),
(493, 'SEBASTIÃN FERNANDO  PILLAJO SULCA ', '1722592290', '023566283', 'sfpillajofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10492', '0.00', 0.05, 2),
(494, 'ANDRÃ‰S SEBASTIÃN SALAZAR MÃRMOL ', '1719259176', '0995271252', 'assalazarfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10493', '0.00', 0.05, 2),
(495, 'ANDRÃ‰S SEBASTIÃN  SORIA FREIRE ', '1803084290', '02-2895211', 'assoriafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10494', '0.00', 0.05, 2),
(496, 'CRISTHIAN PATRICIO ROSALES CASTILLO ', '1501048514', '02 6020170', 'cprosalesfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10495', '0.00', 0.05, 2),
(497, 'DAISY CAROLINA CARRILLO SIGCHA ', '1723620009', '2571443', 'dycarrillofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10496', '0.00', 0.05, 2),
(498, 'DAMIAN ALEJANDRO VIZUETE GALEAS ', '1718003948', '022738351', 'avizuetefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10497', '0.00', 0.05, 2),
(499, 'EDISON BOLÃVAR REZA PAOCARINA ', '1716425234', '2403546', 'ebrezafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10498', '0.00', 0.05, 2),
(500, 'ESTEFANÃA MARCELA ANDRADE DE SANTIAGO ', '1716397573', '0987221578', 'esmandradedefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10499', '0.00', 0.05, 2),
(501, 'FELIPE ALEXANDER ANDRADE CÃ“NDOR ', '1718688375', '3317886', 'faandradefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10500', '0.00', 0.05, 2),
(502, 'FERNANDO DAVID JARAMILLO CEVALLOS ', '1715828271', '2442728', 'fdjaramillofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10501', '0.00', 0.05, 2),
(503, 'JESSICA ORNELLA MARISCAL CARDENAS ', '0915076525', '3813883', 'jomariscalfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10502', '0.00', 0.05, 2),
(504, 'MARCELO SEBASTIÃN DROUET ARIAS ', '1720990744', '0998229942', 'msdrouetfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10503', '0.00', 0.05, 2),
(505, 'MARIA VICTORIA SANTAMARÃA URGILÃ‰S ', '1803980141', '023237147', 'mvsantamariafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10504', '0.00', 0.05, 2),
(506, 'NILO MARCELO CEDEÃ‘O GUADAMUD ', '1309656682', '022490797', 'nmcedenofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10505', '0.00', 0.05, 2),
(507, 'PEDRO LUIS MIRANDA CHILLÃN ', '0923827430', '025123862', 'plmirandafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10506', '0.00', 0.05, 2),
(508, 'RODRIGO JAVIER HUMBOL ANDRADE ', '1719076232', '0991172598', 'harodrigofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10507', '0.00', 0.05, 2),
(509, 'SERGIO CAMPERO ENCINAS ', '5298572', 's/n', 'scamperofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10508', '0.00', 0.05, 2),
(510, 'VÃCTOR HUGO SÃNCHEZ ARIZO ', '1713842662', '022630334', 'vhsanchezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10509', '0.00', 0.05, 2),
(511, 'WILLIAM ENRIQUE ECHEVERRÃA TIGSE ', '1803830049', '022555469', 'weecheverriafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10510', '0.00', 0.05, 2),
(512, 'ADRIANA MABEL URCUANGO CONUMBA ', '1720277423', '0995213729', 'amurcuangofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10511', '0.00', 0.05, 2),
(513, 'ALVARO JAVIER ANDRADE TERÃN ', '1003438205', '+593996519980', 'aandradefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10512', '0.00', 0.05, 2),
(514, 'CANDYDA MARIBEL CAICEDO MENESES ', '1722555628', '2363626', 'cmcaicedofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10513', '0.00', 0.05, 2),
(515, 'CÃ‰SAR ANDRÃ‰S LLANO IZA ', '1720526399', '2803462', 'callanofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10514', '0.00', 0.05, 2),
(516, 'EDISON XAVIER ARMAS VILLEGAS ', '1003465901', '2835259', 'exarmasfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10515', '0.00', 0.05, 2),
(517, 'GABRIELA SOLEDAD CHANCUSIG TOAPANTA ', '0503518300', '3199198', 'gschancusigfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10516', '0.00', 0.05, 2),
(518, 'GUILLERMO ESTEBAN CALERO MOSCOSO ', '0501676647', '2452083', 'gcalero@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10517', '0.00', 0.05, 2),
(519, 'IVAN FERNANDO TREJO MOYA ', '1721489829', '022410190', 'iftrejofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10518', '0.00', 0.05, 2),
(520, 'JESÃšS ALBERTO RODRÃGUEZ PAZ ', '1085302813', '000000000', 'jearodriguezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10519', '0.00', 0.05, 2),
(521, 'JOHANNA ELIZABETH TUTILLO HERRERA ', '1717357873', '023530177', 'jetutillofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10520', '0.00', 0.05, 2),
(522, 'JORGE LEONARDO HUERA ALDÃS ', '0401470745', '023440342', 'jlhuerafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10521', '0.00', 0.05, 2),
(523, 'JORGE MAURICIO FALCON GOMEZ ', '1723043665', '3016301', 'jmfalconfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10522', '0.00', 0.05, 2),
(524, 'JUAN FRANCISCO ULCUANGO COLCHA ', '1714631551', '2486-143', 'jufrulcuangofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10523', '0.00', 0.05, 2),
(525, 'JUAN RAMON GARCIA DE MORA ', '1709177420', '2885624', 'jrgarciadefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10524', '0.00', 0.05, 2),
(526, 'KARLA MARITZA REVELO SILVERIO ', '1719927814', '2559820', 'kmrevelofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10525', '0.00', 0.05, 2),
(527, 'MAREN JANETH LÃ“PEZ BUSTOS ', '1104185424', '072546181', 'mjlopezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10526', '0.00', 0.05, 2),
(528, 'MARÃA JOSÃ‰ MUÃ‘OZ ARIAS ', '0103766366', '3813506', 'mjmunozfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10527', '0.00', 0.05, 2),
(529, 'MARÃA LORENA ANDRADE GAVILÃNEZ ', '1715641260', '022268823', 'mlandradefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10528', '0.00', 0.05, 2),
(530, 'MÃ“NICA ALEXANDRA POZO CAÃ‘AS ', '1722829353', '2447313', 'mapozofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10529', '0.00', 0.05, 2),
(531, 'NANCY MERCEDES AMPUDIA PINARGOTE ', '1714574629', '2504721', 'nmampudia@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10530', '0.00', 0.05, 2),
(532, 'NARCIZA ELIZABETH PAEZ FERNANDEZ ', '1718605072', '2620993', 'nepaezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10531', '0.00', 0.05, 2),
(533, 'PABLO ANDRES REYES VINTIMILLA ', '0106633092', '0998226524', 'pareyesfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10532', '0.00', 0.05, 2),
(534, 'PATRICIA  SÃNCHEZ PÃ‰REZ ', '9105232997', '0', 'psanchezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10533', '0.00', 0.05, 2),
(535, 'PEDRO JOSE SALAS MOSQUERA ', '1714164900', '5143920', 'pjsalasfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10534', '0.00', 0.05, 2),
(536, 'RUBÃ‰N ALEXANDER CARVAJAL NARVÃEZ ', '1709764623', '2401810', 'acarvajalfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10535', '0.00', 0.05, 2),
(537, 'RUTH NOEMÃ CAIZA TOAPANTA ', '1721064879', '2536769', 'rncaizafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10536', '0.00', 0.05, 2),
(538, 'SILVIA KAROLINA IBAÃ‘EZ MANTILLA ', '1003830955', '2243563', 'skibanezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10537', '0.00', 0.05, 2),
(539, 'VERONICA ESTEFANIA  CORONEL LOAIZA ', '1105171134', '3028167', 'vecoronelfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10538', '0.00', 0.05, 2),
(540, 'BETHSABÃ‰ MORENO AGUIRRE ', '1716771991', '023550666', 'bmorenofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10539', '0.00', 0.05, 2),
(541, 'BLANCA PATRICIA ROSALES PICON ', '1723987093', '3682565', 'bprosalesfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10540', '0.00', 0.05, 2),
(542, 'CHRISTIAN DAVID HURTADO MEZA ', '1722192760', '022836069', 'cdhurtadofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10541', '0.00', 0.05, 2),
(543, 'CINTHYA DANIELA BARRERA RODRÃGUEZ ', '1805374384', '032466852', 'cdbarrerafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10542', '0.00', 0.05, 2),
(544, 'CLAUDIA MARIA VELASTEGUI COBO ', '0924483449', '032741092', 'cvelasteguifl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10543', '0.00', 0.05, 2),
(545, 'DAYANA LIZBETH CALVOPIÃ‘A RODRIGUEZ ', '1724367451', '3161968', 'dlcalvopinafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10544', '0.00', 0.05, 2),
(546, 'DENNYS SANTIAGO ANDRADE SUAREZ ', '0603477142', '3228077', 'dsandradefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10545', '0.00', 0.05, 2),
(547, 'ENOC FELIPE QUISHPE GUANO ', '1720225653', '3051170', 'efquishpefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10546', '0.00', 0.05, 2),
(548, 'ERIKA MARIBEL GUERRERO MENA ', '0503486698', '4508353', 'emguerrerofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10547', '0.00', 0.05, 2),
(549, 'FAUSTO DAMIÃN JÃCOME PÃ‰REZ ', '1717343741', '022436008', 'fdjacomefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10548', '0.00', 0.05, 2),
(550, 'FRANCISCO JAVIER SALAZAR LARREA ', '1707337687', '23820137', 'fjsalazarfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10549', '0.00', 0.05, 2),
(551, 'GABRIELA ESTHEFANIA CHANO GUALPA ', '1718644014', '022332191', 'gechanofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10550', '0.00', 0.05, 2),
(552, 'JUAN CARLOS TOCTAQUIZA VARGAS ', '1715635940', '2482276', 'jctoctaquizafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10551', '0.00', 0.05, 2),
(553, 'MARIO ESTEBAN ALMEIDA CHACÃ“N ', '1002433637', '23324628', 'mealmeidafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10552', '0.00', 0.05, 2),
(554, 'RUTH PONTEJO CLAROS ', '4445366', '4238748', 'rpontejofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10553', '0.00', 0.05, 2),
(555, 'SANTOS LIBERATO VARGAS CELI ', '1101806410', '07-2547338', 'slvargasfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10554', '0.00', 0.05, 2),
(556, 'SARA ISABEL HUERA VACA ', '1715608749', '0986121076', 'sihuerfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10555', '0.00', 0.05, 2),
(557, 'SEBASTIÃN LONDOÃ‘O ESPINOSA ', '1715555213', '3432872', 'slondonofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10556', '0.00', 0.05, 2),
(558, 'SOFIA TAMARA CARPIO LEON ', '1719363481', '022275586', 'sotcarpio@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10557', '0.00', 0.05, 2),
(559, 'VÃCTOR ROBERTO MORALES OÃ‘ATE ', '1803590213', '0998598017', 'virmoralesfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10558', '0.00', 0.05, 2),
(560, 'WILLIAN DAVID HERRERA AGUAS ', '1720767514', '023690231', 'wdherrerafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10559', '0.00', 0.05, 2),
(561, 'CINTHY ELIZABETH VEINTIMILLA MARIÃ‘O ', '0917949026', '2449613', 'ceveintimillafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10560', '0.00', 0.05, 2),
(562, 'MARÃA GABRIELA  ALMEIDA TAMAYO ', '1715664692', '2660097', 'magalmeidafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10561', '0.00', 0.05, 2),
(563, 'NATALY ISABEL QUELAL PASQUEL ', '1718290750', '023196297', 'niquelalfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10562', '0.00', 0.05, 2),
(564, 'OSCAR ANDRÃ‰S CORNEJO LASCANO ', '1709541344', '02292216', 'oacornejofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10563', '0.00', 0.05, 2),
(565, 'PAULINA JAPÃ“N QUIZHPE ', '1104028590', '072200416', 'pjaponfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10564', '0.00', 0.05, 2),
(566, 'SANTIAGO VALDÃ‰S YÃÃ‘EZ ', 'G03985148', '+528110986042', 'savaldesfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10565', '0.00', 0.05, 2),
(567, 'ANDREA CRISTINA BRAVO AGUILAR ', '0704498260', '2787248', 'acbravofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10566', '0.00', 0.05, 2),
(568, 'CRISTHOFFER STALIN VELASCO PAZMIÃ‘O ', '0201313343', '032980915', 'csvelascofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10567', '0.00', 0.05, 2),
(569, 'DIANA RAQUEL CERÃ“N DÃAZ ', '1712320405', '0984572186', 'drceronfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10568', '0.00', 0.05, 2),
(570, 'DIANA VALERIA BALAREZO ANDRADE ', '1717932790', '2333074', 'dvbalarezofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10569', '0.00', 0.05, 2),
(571, 'EDISON GERARDO AUQUI CALLE ', '1721966461', '3068-890', 'egauquifl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10570', '0.00', 0.05, 2),
(572, 'FERNANDO RAFAEL YÃNEZ VALVERDE ', '1715737464', '2444294', 'fryanezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10571', '0.00', 0.05, 2),
(573, 'FRANCISCA TATIANA JARAMILLO PÃEZ ', '1713160461', '022524265', 'ftjaramillofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10572', '0.00', 0.05, 2),
(574, 'GIULIANA  FIORE ', '35915683N', '0995371542', 'gfiorefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10573', '0.00', 0.05, 2),
(575, 'HUGO ANDRES  SARZOSA TERAN ', '1002864328', '+593995916608', 'hasarzosafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10574', '0.00', 0.05, 2),
(576, 'ILIANA DE JESÃšS LOZANO ', 'G21526245', '3226992', 'idejesusfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10575', '0.00', 0.05, 2),
(577, 'JESSICA YANIRA BENAVIDES CEVALLOS ', '0400999785', '0996135646', 'jybenavidesfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10576', '0.00', 0.05, 2),
(578, 'LILIAN MARÃA PERALTA GORDON ', '1716633282', '022296508', 'lmperaltafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10577', '0.00', 0.05, 2),
(579, 'LUIS ESTEBAN  VASCO ESTRELLA ', '1722570106', '2481935', 'levascofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10578', '0.00', 0.05, 2),
(580, 'MARÃA ÃNGELES CEVALLOS CASTELLS ', '1714820881', '6034531', 'macevallosfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10579', '0.00', 0.05, 2),
(581, 'MARÃA FERNANDA PLASCENCIA DE LA TORRE ', 'G09367886', '2455355', 'mafplascenciafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10580', '0.00', 0.05, 2),
(582, 'MARIA ISABEL VILLARRUEL OVIEDO ', '1716637952', '2923052', 'vomariafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10581', '0.00', 0.05, 2),
(583, 'MARÃA VANESSA VEINTIMILLA ACOSTA ', '0803459940', '022594504', 'mvveintimillafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10582', '0.00', 0.05, 2),
(584, 'NICOLAS MATEO ROLDAN RIBADENEIRA ', '1714137641', '0988899253', 'nmroldanfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10583', '0.00', 0.05, 2),
(585, 'PAMELA MARGARITA CAIZA VIVAS ', '1721758355', '2634683', 'pmcaizafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10584', '0.00', 0.05, 2),
(586, 'RUBEN DARIO MOLINA OMEN ', 'AQ701468', '0984528783', 'rudamolinafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10585', '0.00', 0.05, 2),
(587, 'SANTIAGO GABRIEL  VALDOSPINOS POZO ', '1721122917', '022415617', 'sgvaldospinosfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10586', '0.00', 0.05, 2),
(588, 'SILVIA FERNANDA ABRIL ORELLANA ', '0103773156', '0983409107', 'sifabrilfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10587', '0.00', 0.05, 2),
(589, 'SIMONE  DI PIETRO ', '1756975890', '--------------------', 'sdifl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10588', '0.00', 0.05, 2),
(590, 'AIDA ELIZABETH IMBAQUINGO BURGOS ', '0401451455', '022', 'aeimbaquingofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10589', '0.00', 0.05, 2),
(591, 'ALEX ISAAC DÃ‰FAZ CARRERA ', '1720143914', '0984249260', 'aidefazfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10590', '0.00', 0.05, 2),
(592, 'ALEXANDRA ISABEL ROMERO BETANCOURT ', '042433389', '3228460', 'airomerofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10591', '0.00', 0.05, 2),
(593, 'ALVARO ALEXANDER AYALA MENDEZ ', 'AO859104', '8011852', 'alaayalafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10592', '0.00', 0.05, 2),
(594, 'ANDREA CAROLINA MURILLO CARRASCO ', '1804205787', '3401035', 'acmurillofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10593', '0.00', 0.05, 2),
(595, 'ANGELITA MARÃA FLOR LARA ', '0603881749', '023282261', 'amflorfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10594', '0.00', 0.05, 2),
(596, 'CARLOS HERNÃN QUIZHPE PARRA ', '0105474514', '072861308', 'chquizhpefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10595', '0.00', 0.05, 2),
(597, 'DIANA KAROLINA BERMÃšDEZ LOOR ', '1719576462', '022227446', 'dkbermudezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10596', '0.00', 0.05, 2),
(598, 'DIANA MARÃA PEREA PALOMINO ', 'AS308754', '0984022326', 'diamarpereafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10597', '0.00', 0.05, 2),
(599, 'GABRIELA FERNANDA PAZMIÃ‘O ESCOBAR ', '0603909607', '0', 'gfpazminofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10598', '0.00', 0.05, 2),
(600, 'GABRIELA MELISSA NAVARRO NARVÃEZ ', '1719356816', '2814184', 'gmnavarrofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10599', '0.00', 0.05, 2),
(601, 'KARLA ALEJANDRA HIDALGO PALMA ', '1717523169', '023432173', 'kahidalgofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10600', '0.00', 0.05, 2),
(602, 'LORENA ALEXANDRA LEDESMA RODRÃGUEZ ', '1712476199', '023227401', 'laledesmafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10601', '0.00', 0.05, 2),
(603, 'MANUEL DAVID MAILA CASTRO ', '1715686075', '023160661', 'mdmailafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10602', '0.00', 0.05, 2),
(604, 'MANUELA ATEHORTÃšA HERNÃNDEZ ', 'AO568666', '0960448766', 'matehortuafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10603', '0.00', 0.05, 2),
(605, 'MARIA JOSE RECALDE POZO ', '1721677936', '2078217', 'mjrecaldefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10604', '0.00', 0.05, 2),
(606, 'MARIA MATILDE CONEJO MALES ', '1710605609', '2247 890', 'mmconejofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10605', '0.00', 0.05, 2),
(607, 'MAX RAFAEL ARAUJO CRIOLLO ', '1720944170', '022456137', 'mraraujofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10606', '0.00', 0.05, 2),
(608, 'MAYRA ALEJANDRA FLORES MUÃ‘OZ ', '1716723984', '2572555', 'fmmayrafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10607', '0.00', 0.05, 2),
(609, 'MIGUEL ALEJANDRO GALLEGOS GARZÃ“N ', '0502872443', '022862856', 'miagallegosfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10608', '0.00', 0.05, 2),
(610, 'MIGUEL LEONIDAS BARREIROS PADILLA ', '1719633859', '2446145', 'mlbarreirosfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10609', '0.00', 0.05, 2),
(611, 'RENATA EMILIA MANTILLA VÃSCONEZ ', '1725505141', '022955347', 'remantillafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10610', '0.00', 0.05, 2),
(612, 'SANDRA PAOLA  ARMESTO NORIEGA ', 'AT548819', '0978819005', 'sparmestofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10611', '0.00', 0.05, 2),
(613, 'WILSON GERARDO VEGA ORTIZ ', '1708461247', '023133981', 'wgvegafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10612', '0.00', 0.05, 2),
(614, 'ANNA RAITH ', '4556440', '3332135', 'araithfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10613', '0.00', 0.05, 2),
(615, 'CHRISTIAN MARCELO GARCÃ‰S MAYORGA ', '1714298682', '2604378', 'cmgarcesfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10614', '0.00', 0.05, 2),
(616, 'DANIEL ENRIQUE BRAVO ACOSTA ', '1715385421', '022436609', 'debravofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10615', '0.00', 0.05, 2),
(617, 'GUSTAVO JAVIER ANDRADE FIGUEROA ', '1003204516', '3285125', 'gjandradefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10616', '0.00', 0.05, 2),
(618, 'NORA ALEJANDRA  SALAZAR BOTTA ', '0603328949', '2344058', 'noasalazarfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10617', '0.00', 0.05, 2),
(619, 'PAOLA LINETTE ROMERO DUEÃ‘AS ', '1710510072', '6016627', 'plromerofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10618', '0.00', 0.05, 2),
(620, 'ADRIANA ELIZABETH MEJÃA ARTIEDA ', '1719880302', '2897785', 'aemejiafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10619', '0.00', 0.05, 2),
(621, 'ALICE ELIZABETH VEGA SALAS ', '07755239', '-', 'aevegafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10620', '0.00', 0.05, 2),
(622, 'ANDREA MAGALY CEVALLOS ARÃUZ ', '1711399889', '2595169', 'anmcevallosfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10621', '0.00', 0.05, 2),
(623, 'ANGELA ROCIO SORIA CARRILLO ', '1720425204', '022663191', 'arsoriafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10622', '0.00', 0.05, 2),
(624, 'ANGELICA GINNETH MORENO CALDERON ', 'AO899753', '7331480', 'angimorenofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10623', '0.00', 0.05, 2),
(625, 'CAMILA CAVALHEIRO RIBEIRO DA SILVA ', 'FG227300', '00000000000', 'ccavalheirorifl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10624', '0.00', 0.05, 2),
(626, 'CRISTHIAN GIOVANNI PARRADO RODRÃGUEZ ', 'AR297286', '2547265', 'crgiparradofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10625', '0.00', 0.05, 2),
(627, 'DARÃO  TOSCANO TORRES ', '1718232349', '2435192', 'dtoscanofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10626', '0.00', 0.05, 2),
(628, 'DIANA PATRICIA  VALDES ZAMBRANO ', 'AR292843', '3277061', 'dpvaldesfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10627', '0.00', 0.05, 2),
(629, 'FREDDY ORLANDO MUÃ‘OZ REMACHE ', '1711384972', '2950481', 'fomunozfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10628', '0.00', 0.05, 2),
(630, 'FREDY ALEXANDER ROSAS GARCIA ', 'AP839248', '0978990342', 'farosasfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10629', '0.00', 0.05, 2),
(631, 'GUILLERMO RICARDO ROMERO ORTIZ ', '1721254355', '2223119', 'roguillermofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10630', '0.00', 0.05, 2),
(632, 'JHONNY LEONARDO ALVAREZ OCHOA ', '1714735519', '0987279686', 'jlalvarezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10631', '0.00', 0.05, 2),
(633, 'JUAN MANUEL RESTREPO CAICEDO ', 'AR418709', '0987595522', 'jmrestrepofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10632', '0.00', 0.05, 2),
(634, 'KAREN LISSET FLORES CARRILLO ', '1721715926', '023530479', 'klfloresfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10633', '0.00', 0.05, 2),
(635, 'LEONARDO ARTURO ARIAS ALVAREZ ', '1720314937', '022492702', 'laariasfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10634', '0.00', 0.05, 2),
(636, 'LIMBERT FRANZ CABRERA QUISPE ', '4414543', '2256842', 'lfcabrerafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10635', '0.00', 0.05, 2),
(637, 'LUISA ROSSANA CISNEROS JARA ', '1104338775', '2451367', 'lrcisnerosfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10636', '0.00', 0.05, 2),
(638, 'LUZ MARÃA AGUIRRE AGUIRRE ', '1719431502', '2223776', 'lmaguirrefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10637', '0.00', 0.05, 2),
(639, 'NATALIA MONTALVO NOVILLO ', '1720996626', '2865056', 'nmontalvofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10638', '0.00', 0.05, 2),
(640, 'RODOLFO MAURICIO VELASCO AYALA ', '1711737229', '593 2 4506385', 'rmvelascofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10639', '0.00', 0.05, 2),
(641, 'ADRIANA KATHERINE ABAD AUQUILLA ', '1723631386', '2419401', 'akabadfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10640', '0.00', 0.05, 2),
(642, 'ADRIANA LORENA GARRIDO MANTILLA ', '1003668496', '0983227001', 'gmadrianafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10641', '0.00', 0.05, 2),
(643, 'ALEJANDRA PAOLA BONILLA MENA ', '1715937031', '2071401', 'apbonillafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10642', '0.00', 0.05, 2),
(644, 'ALEJANDRO RAFAEL BOLAÃ‘OS CAPELO ', '1708762644', '0998314318', 'arbolanosfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10643', '0.00', 0.05, 2),
(645, 'ALFONSO SEBASTIÃN SALAZAR NICHOLLS ', '1712332533', '022953407', 'alssalazarfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10644', '0.00', 0.05, 2),
(646, 'ALFREDO ENRIQUE ALTAMIRANO ULLOA ', '1703870905', '2372457', 'aealtamiranofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10645', '0.00', 0.05, 2),
(647, 'CATERINE VANESSA ALVAREZ ALVAREZ ', 'AT825152', '0987725002', 'cvalvarezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10646', '0.00', 0.05, 2),
(648, 'CONSTANZA FALCONI CHIRIBOGA ', '1712907086', '022222242', 'cfalconifl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10647', '0.00', 0.05, 2),
(649, 'DANIEL ANDRES GALLEGOS CHAVEZ ', '1720077526', '022403701', 'daagallegosfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10648', '0.00', 0.05, 2),
(650, 'DIANA CAROLINA  MENDOZA HERNANDEZ ', 'AT767471', '5135255', 'dicmendozafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10649', '0.00', 0.05, 2),
(651, 'DIEGO JAVIER ENRÃQUEZ PABÃ“N ', '1714540935', '022 846 149', 'denriquez@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10650', '0.00', 0.05, 2),
(652, 'FRANCISCO DOMINGUEZ ', 'AT812881 ', '5135255', 'fdominguezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10651', '0.00', 0.05, 2),
(653, 'GABRIEL ALBERTO GIANNONE ', 'AAC288791', '3317975', 'gagiannonefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10652', '0.00', 0.05, 2),
(654, 'JOSÃ‰ ALEJANDRO SANÃN EASTMAN ', '1152439254', '0', 'jasaninfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10653', '0.00', 0.05, 2),
(655, 'JOSUE DAVID FERNANDEZ ALVARADO ', '1722497854', '2953205', 'fajosuefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10654', '0.00', 0.05, 2),
(656, 'JUAN LUIS  BARRAGÃN CUELLAR ', 'AQ153877', '09984271234', 'jlbarraganfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10655', '0.00', 0.05, 2),
(657, 'KATHERINE VALERIA PAZMIÃ‘O ARGUELLO ', '1718333824', '022398446', 'kvpazminofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10656', '0.00', 0.05, 2),
(658, 'MARCELO OMAR VALLADARES BORJA ', '1711700961', '4503855', 'movalladaresfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10657', '0.00', 0.05, 2),
(659, 'MARÃA ANTONIETA  RODRÃGUEZ FLOR ', '1719990010', '2340228', 'maarodriguezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10658', '0.00', 0.05, 2),
(660, 'MARIA BELEN ENDARA CALDERON ', '1722273008', '022268092', 'mbendarafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10659', '0.00', 0.05, 2),
(661, 'MATEO SEBASTIÃN  VALAREZO BRAVO ', '1718751439', '023226351', 'msvalarezofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10660', '0.00', 0.05, 2),
(662, 'MIGUEL GERÃ“NIMO PERAZA ALVARADO ', '136546694', '0979368199', 'mgperazafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10661', '0.00', 0.05, 2),
(663, 'PAULINA CECILIA  CEPEDA PICO ', '1717520348', '6040941', 'pccepedafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10662', '0.00', 0.05, 2);
INSERT INTO `clientes` (`id_cliente`, `nombre_cliente`, `documento_cliente`, `telefono_cliente`, `email_cliente`, `direccion_cliente`, `status_cliente`, `date_added`, `codigo`, `saldo_cliente`, `descuento`, `empresa_cliente`) VALUES
(664, 'RICARDO JOSÃ‰ ESPINOSA UQUILLAS ', '1723005748', '2190011', 'rjespinosafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10663', '0.00', 0.05, 2),
(665, 'ALEJANDRA PAMELA ROSERO PADILLA ', '1715520027', '0987456348', 'aproserofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10664', '0.00', 0.05, 2),
(666, 'ANA GABRIELA MONTENEGRO PESÃNTEZ ', '0103882742', '2825553', 'angmontenegrofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10665', '0.00', 0.05, 2),
(667, 'CRISTIAN DAVID  GÃ“MEZ MORA ', '1070966779', '09876543', 'cdgomezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10666', '0.00', 0.05, 2),
(668, 'DIANA PAZ EUGENIA SOTO REYES ', 'F-10310044', 'no tengo', 'dpsotofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10667', '0.00', 0.05, 2),
(669, 'EDISON ALBERTO AGUILAR SANTACRUZ ', '1703117042', '022884070', 'eaaguilarfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10668', '0.00', 0.05, 2),
(670, 'EDUARDO ALBERTO  LEÃ“N LEÃ“N ', '1714244306', '3026402', 'ealeonfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10669', '0.00', 0.05, 2),
(671, 'EDWIN MARCELO ALCARAS PANCHI ', '1715691752', '023270690', 'emalcaras@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10670', '0.00', 0.05, 2),
(672, 'EDWIN SAUL GAONA MERINO ', '1103442701', '2247982', 'esgaonafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10671', '0.00', 0.05, 2),
(673, 'GALO PATRICIO MUENALA VALVERDE ', '1002668455', '2317956', 'gpmuenalafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10672', '0.00', 0.05, 2),
(674, 'HECTOR ESTEBAN DAZA CEVALLOS ', '1716957707', '3514821', 'hedaza@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10673', '0.00', 0.05, 2),
(675, 'JHONATAN MAURICIO SALAZAR ACHIG ', '1720210168', '2297116', 'jmsalazarfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10674', '0.00', 0.05, 2),
(676, 'JOEL WILLIAMS ROJAS HUAYNATES ', '6796423', '3456545', 'jwrojasfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10675', '0.00', 0.05, 2),
(677, 'JUAN PABLO TROYA SZTANKAY ', '1713676540', '2585637', 'jptroyafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10676', '0.00', 0.05, 2),
(678, 'LUIS RODOLFO LÃ“PEZ MOROCHO ', '1717011959', '023074327', 'lrlopezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10677', '0.00', 0.05, 2),
(679, 'MELBA HEIDI GALINDO MARTÃNEZ ', '1756372460', '5555555', 'mhgalindofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10678', '0.00', 0.05, 2),
(680, 'MIGUEL ÃNGEL MACÃAS MORENO ', '1724725690', '0', 'mamaciasfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10679', '0.00', 0.05, 2),
(681, 'SERGIO OSWALDO REVELO CAICEDO ', '1714494208', '2622089', 'sorevelofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10680', '0.00', 0.05, 2),
(682, 'ALICIA NATALY MAYA SANTACRUZ ', '1722707914', '023161362', 'anmayafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10681', '0.00', 0.05, 2),
(683, 'ANDREA JOSÃ‰ CUESTA TABARES ', '1804801742', '023160615', 'ajcuestafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10682', '0.00', 0.05, 2),
(684, 'BRYAN ENRIQUE TITE MALLITASIG ', '1722585260', '3035846', 'betitefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10683', '0.00', 0.05, 2),
(685, 'CARLOS FRANCISCO SALVADOR FELIX ', '1000074383', '022922419', 'cfsalvadorfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10684', '0.00', 0.05, 2),
(686, 'FLORESMILO MANUEL  SIMBAÃ‘A COYAGO ', '1711662286', '2052078', 'fmsimbanafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10685', '0.00', 0.05, 2),
(687, 'HEIDI YAZMIN NARANJO ROBLES ', '1713824850', '0995086846', 'nrheidifl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10686', '0.00', 0.05, 2),
(688, 'HENRY PAUL QUEL MEJIA ', '0401496625', '032601679', 'hpquelfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10687', '0.00', 0.05, 2),
(689, 'JENNY KALINDY BOLÃVAR GUAYACUNDO ', '1715403760', 's/n', 'jkbolivarfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10688', '0.00', 0.05, 2),
(690, 'KLEVER ROLANDO MORENO BUENO ', '1723422315', '023128121', 'krmorenofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10689', '0.00', 0.05, 2),
(691, 'MARCO ANTONIO LIZANO RODAS ', '1714644752', '5111082', 'malizanofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10690', '0.00', 0.05, 2),
(692, 'MARTÃN FELIPE OGAZ OVIEDO ', '1711310431', '0984686641', 'mfogazfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10691', '0.00', 0.05, 2),
(693, 'RENÃ‰ MARCELO TOAPANTA MEJÃA ', '1720137304', '3171209', 'rmtoapantafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10692', '0.00', 0.05, 2),
(694, 'SOFÃA VERÃ“NICA  MENA HARO ', '1721235578', '022407505', 'svmenafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10693', '0.00', 0.05, 2),
(695, 'SONIA GABRIELA LOPEZ SORIA ', '1721766044', '2674492', 'sglopezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10694', '0.00', 0.05, 2),
(696, 'VANESSA HELENA MONTENEGRO BRITO ', '068293233', '023909239', 'vhmontenegrofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10695', '0.00', 0.05, 2),
(697, 'ALEJANDRO JOSE MOLINA MENDOZA ', '1757368061', '0991711191', 'ajmolinafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10696', '0.00', 0.05, 2),
(698, 'ALISON JENNIFER CAJAS CAÃ‘IZARES ', '0504005059', '0987470201', 'ajcajasfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10697', '0.00', 0.05, 2),
(699, 'ANDRÃ‰S DAVID NARANJO NAVAS ', '0603133075', '022453028', 'adnaranjofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10698', '0.00', 0.05, 2),
(700, 'CAMILA CAROLINA ULLOA TORRES ', '1722448642', '2829526', 'culloafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10699', '0.00', 0.05, 2),
(701, 'DANIELA ESTEFANÃA OÃ‘A VILLAGOMEZ ', '1725700064', '2493168', 'deonafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10700', '0.00', 0.05, 2),
(702, 'EDUARDO MARTÃNEZ ESTRELLA ', '1719347401', '2835645', 'emartinezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10701', '0.00', 0.05, 2),
(703, 'GUSTAVO ADOLFO PEREZ ARROBO ', '1718389222', '2248849', 'gaperezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10702', '0.00', 0.05, 2),
(704, 'JEANETH MAGDALENA GUAMÃN SOLANO ', '1726396581', '2525613', 'jmguamanfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10703', '0.00', 0.05, 2),
(705, 'JONATHAN EDISON CÃRDENAS CASTILLO ', '1721291761', '2461309', 'jecardenasfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10704', '0.00', 0.05, 2),
(706, 'JORGE LUIS CHUQUIMARCA CHUQUIMARCA ', '1103658223', '3226166', 'jlchuquimarcafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10705', '0.00', 0.05, 2),
(707, 'KLEBER EDISON NAULA YAUTIBUG ', '1713062907', '024506275', 'kenaulafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10706', '0.00', 0.05, 2),
(708, 'LETICIA ESTEFANIA CELI RAMOS ', '1722557285', '0987460013', 'crleticiafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10707', '0.00', 0.05, 2),
(709, 'LINA MARITZA CAMACHO LUCIO ', '1754667168', '25117559', 'lmcamacho@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10708', '0.00', 0.05, 2),
(710, 'MARIA PATRICIA SOTOMAYOR VALAREZO ', '0704744531', '026014631', 'mpsotomayorfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10709', '0.00', 0.05, 2),
(711, 'MARIELA EVANGELINA LOPEZ LASCANO ', '1803853686', '022885624', 'melopezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10710', '0.00', 0.05, 2),
(712, 'PAÃšL ALEXANDER AGUIRRE AGUIRRE ', '1104209125', '000000000', 'paaguirrefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10711', '0.00', 0.05, 2),
(713, 'SERGIO ALFONSO HUERTAS HERNANDEZ ', 'AP649332', 'x', 'sahuertasfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10712', '0.00', 0.05, 2),
(714, 'DAVID ALEJANDRO  SIMBA CEVALLOS ', '1716387053', '2194561', 'dasimbafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10713', '0.00', 0.05, 2),
(715, 'DIEGO FABRICIO NARVÃEZ ORBE ', '1003576913', '2557306', 'dfnarvaezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10714', '0.00', 0.05, 2),
(716, 'ERIK DANIEL ÃLVAREZ ROMERO ', '0603576299', '032947192', 'edalvarezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10715', '0.00', 0.05, 2),
(717, 'GIOVANNY DAVID CÃ“RDOVA TRUJILLO ', '1720199130', '2961586', 'gdcordovafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10716', '0.00', 0.05, 2),
(718, 'HORACIO GABRIEL PALOMEQUE RODRIGUEZ ', '1716192818', '2342404', 'prhoraciofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10717', '0.00', 0.05, 2),
(719, 'IBEETH MARIEGISSELLE VILLENA PROAÃ‘O ', '1805034939', '023441899', 'imvillenafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10718', '0.00', 0.05, 2),
(720, 'JAVIER ALEJANDRO ORTI TORRES ', '1707716385', '02385300', 'jaortifl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10719', '0.00', 0.05, 2),
(721, 'JONATHAN PATRICIO SUÃREZ CANTOS ', '1716769607', '0993945204', 'jpsuarezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10720', '0.00', 0.05, 2),
(722, 'JOSÃ‰ ALEJANDRO  PEREZ SILVA ', '1722871538', '022373310', 'alperezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10721', '0.00', 0.05, 2),
(723, 'LUCERO LILIANA CABRERA BENAVIDES ', '1085293496', '3167789040', 'llcabrerafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10722', '0.00', 0.05, 2),
(724, 'MARJORIE DE LOS ANGELES CHÃVEZ MACIAS ', '1708770480', '0984682298', 'mchavezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10723', '0.00', 0.05, 2),
(725, 'RICHARD ANTONIO URREGO CASTILLO ', '1104127681', '3261638', 'raurregofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10724', '0.00', 0.05, 2),
(726, 'ROBERTO CARLOS BENÃTEZ RODRÃGUEZ ', 'G09387394', '2-2557109', 'rcbenitezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10725', '0.00', 0.05, 2),
(727, 'VALERIA JEANETH CORDERO ASTUDILLO ', '1712336518', '2479092', 'vjcorderofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10726', '0.00', 0.05, 2),
(728, 'WILSON EDUARDO MERINO RIVADENEIRA ', '1711857290', '0990493250', 'wmerinofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10727', '0.00', 0.05, 2),
(729, 'ANDRÃ‰ MAURICIO GRANDA GARRIDO ', '1600462335', '032792786', 'amgrandafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10728', '0.00', 0.05, 2),
(730, 'CRISTIAN HUMBERTO LEON ORTIZ ', '0603564089', '2901392', 'locristianfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10729', '0.00', 0.05, 2),
(731, 'FERNANDA CATALINA  YÃ‰PEZ CALDERÃ“N ', '1718564493', '3431079', 'fcyepezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10730', '0.00', 0.05, 2),
(732, 'GABRIELA LIZZET GALLEGOS DELGADO ', '1717700650', '0223227588', 'glgallegosfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10731', '0.00', 0.05, 2),
(733, 'LEONARDO LEONEL CERDA TAPUY ', '1500706955', '0979228571', 'llcerdafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10732', '0.00', 0.05, 2),
(734, 'LUIS CARLOS AGUIRRE ACHINA ', '1720102696', '022527163', 'lcaguirrefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10733', '0.00', 0.05, 2),
(735, 'ANGIE PAOLA QUINTERO ARDILA ', 'AQ664672', '00000000', 'angpaoquinterfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10734', '0.00', 0.05, 2),
(736, 'CESAR AUGUSTO ORION CAMACHO SOLIZ ', '7917640', '0', 'cacamachofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10735', '0.00', 0.05, 2),
(737, 'DIANA CRISTINA CASTELLANOS VELA ', '1712621042', '3566978', 'dcastellanosfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10736', '0.00', 0.05, 2),
(738, 'DIEGO ARMANDO ESPARZA AGUIRRE ', '1104201239', '02222222', 'daesparzafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10737', '0.00', 0.05, 2),
(739, 'DOMINGO ANDRÃ‰S BRUZZONE AGUILAR ', '1308291697', '6020143', 'dabruzzonefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10738', '0.00', 0.05, 2),
(740, 'EDUARDO ANDRÃ‰S CANTOS CORTEZ ', '1309964086', '022531193', 'eacantosfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10739', '0.00', 0.05, 2),
(741, 'FABRICIO FERNANDO RAUBER LEMA ', '1718343203', '2675593', 'ffrauberfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10740', '0.00', 0.05, 2),
(742, 'FERNANDA KATHERINE  SOTO ALVARADO ', '1105219842', '0260404941', 'fksotofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10741', '0.00', 0.05, 2),
(743, 'GIORGIA NATALY NÃšÃ‘EZ DEL LARCO DELGADO ', '1724562549', '022607353', 'gnnunezdelfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10742', '0.00', 0.05, 2),
(744, 'JOSEFINA FLORES HERNÃNDEZ ', 'G21909736', '26042050', 'jofloresfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10743', '0.00', 0.05, 2),
(745, 'LIZ ALEXANDRA LOPEZ GOMEZCOELLO ', '1725254138', '2492127', 'liallopezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10744', '0.00', 0.05, 2),
(746, 'MANUEL ALEJANDRO  CEDEÃ‘O CAICEDO ', '1312858044', '0960213615', 'maacedenofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10745', '0.00', 0.05, 2),
(747, 'MARÃA ALEJANDRA  ALMEIDA ALBUJA ', '1003304381', '022453247', 'maalmeidafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10746', '0.00', 0.05, 2),
(748, 'MATILDE DE LOS ÃNGELES VILLARREAL ERAZO ', '0401386495', '2 418102', 'mvillarreal@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10747', '0.00', 0.05, 2),
(749, 'MILTON ALFREDO FREIRE BRIONES ', '1716780836', '2078671', 'mialfreire@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10748', '0.00', 0.05, 2),
(750, 'OMAR ENRIQUE LEÃ“N ROMERO ', '1717491326', '2401824', 'oeleonfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10749', '0.00', 0.05, 2),
(751, 'RAMIRO ECHEVERRIA TAPIA ', '1000650240', '02-2484483', 'raecheverriafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10750', '0.00', 0.05, 2),
(752, 'RENNY JOSÃ‰ GRANDA ', '063585186', '0058 212 3420494', 'rjgrandafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10751', '0.00', 0.05, 2),
(753, 'ROCIO ELIZABETH HUAMANCONDOR PAZ ', '5019226', 'no aplica', 'rehuamancondofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10752', '0.00', 0.05, 2),
(754, 'RODRIGO ANDRÃ‰ DUEÃ‘AS SILVA ', '16864745-k', '0968215891', 'raduenasfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10753', '0.00', 0.05, 2),
(755, 'VERÃ“NICA DE LOS ÃNGELES SÃNCHEZ VILLACÃS ', '1802277382', '2556684', 'vasanchez@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10754', '0.00', 0.05, 2),
(756, 'ANDRÃ‰S EDGARDO  VILLARREAL CASTILLO ', '0401531447', '022400733', 'aevillarrealfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10755', '0.00', 0.05, 2),
(757, 'ANGEL FABIAN IZA GUALLE ', '1712537933', '022385209', 'afizafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10756', '0.00', 0.05, 2),
(758, 'CARLOS ANDRES CAMPANA DIAZ ', '1720593746', '0999723206', 'caacampanafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10757', '0.00', 0.05, 2),
(759, 'CARLOS ANDRÃ‰S ROMÃN NOBLE ', '1718374455', '3110188', 'caromanfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10758', '0.00', 0.05, 2),
(760, 'CYNTHIA LUCÃA HUITRADO TÃ‰LLEZ ', 'G12657228', '3310281877', 'clhuitradofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10759', '0.00', 0.05, 2),
(761, 'DAYRA DEL CISNE  SARAGURO GALLEGOS ', '1104593643', '0000', 'ddsaragurofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10760', '0.00', 0.05, 2),
(762, 'EDGAR RODOLFO  LOJA CHIMBO ', '0105570238', '0989800495', 'erlojafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10761', '0.00', 0.05, 2),
(763, 'GABRIELA ESTEFANÃA VACA CORRALES ', '0503371064', '0992918678', 'gevacafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10762', '0.00', 0.05, 2),
(764, 'GEOVANNY MARCELO MOREANO SALAZAR ', '0604111922', '3226227', 'gmmoreanofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10763', '0.00', 0.05, 2),
(765, 'HENRY MICHAEL CALVA SALAS ', '1103768485', '023302570', 'hmcalvafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10764', '0.00', 0.05, 2),
(766, 'ISRAEL ENRIQUE ESPINOZA AGUIRRE ', '1103869309', '072561920', 'ieespinozafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10765', '0.00', 0.05, 2),
(767, 'IVÃN BOLÃVAR RUIZ GONZÃLEZ ', '1721066551', '2658115', 'ibruizfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10766', '0.00', 0.05, 2),
(768, 'JESSICA ALEXANDRA OCHOA SANCHEZ ', '0104208053', '0', 'jaochoafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10767', '0.00', 0.05, 2),
(769, 'KARLA LISSET VALDIVIESO LEÃ“N ', '1104047202', '0992090592', 'klvaldiviesofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10768', '0.00', 0.05, 2),
(770, 'KIARA JOHANNA GUERRA AYALA ', '1720539772', '4505433', 'gakiarafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10769', '0.00', 0.05, 2),
(771, 'LIZETH NATHALIA REVELO GUZMAN ', '1085284253', '0999805542', 'lnrevelofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10770', '0.00', 0.05, 2),
(772, 'MAIRA CECILIA PISCAL CUMBAL ', 'AT531233', '2655769', 'mcpiscalfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10771', '0.00', 0.05, 2),
(773, 'MANUELA CARMONA BEDOYA ', 'AT 737181', '0995961992', 'mcarmonafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10772', '0.00', 0.05, 2),
(774, 'MILTON EDUARDO MAYA DELGADO ', '1720137452', '3550657', 'memayafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10773', '0.00', 0.05, 2),
(775, 'PAOLA MICHELLE LINCANGO PASTILLO ', '1721986105', '3263715', 'pmlincangofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10774', '0.00', 0.05, 2),
(776, 'THERESE ISABEL DE VRIES HERNÃNDEZ ', '1710094549', '3464318', 'tdefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10775', '0.00', 0.05, 2),
(777, 'CARLOS LUIS OBANDO CASTILLO ', '2100598917', '0981082078', 'clobandofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10776', '0.00', 0.05, 2),
(778, 'RENATO ANDRÃ‰S RIVERA RHON ', '1716451784', 'N/A', 'rariverafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10777', '0.00', 0.05, 2),
(779, 'ANA DANIELA NARANJO BUITRÃ“N ', '1722049788', '6025436', 'andanaranjofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10778', '0.00', 0.05, 2),
(780, 'CARLA BETHZABÃ‰ CEVALLOS CASTAÃ‘EDA ', '1712346616', '2803108', 'ccevallosfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10779', '0.00', 0.05, 2),
(781, 'ERIKA NATHALY CASTILLO ROMÃN ', '1717155053', '022091657', 'encastillofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10780', '0.00', 0.05, 2),
(782, 'HIPATIA KARINA  SUMBA LUSERO ', '1720643475', '2612431', 'hksumbafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10781', '0.00', 0.05, 2),
(783, 'JORGE LUIS MONTALVO ORBEA ', '1717397895', '6025437', 'jlmontalvofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10782', '0.00', 0.05, 2),
(784, 'KATHERINE MARIEL TERÃN MERA ', '1310588932', '022480907', 'kmteranfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10783', '0.00', 0.05, 2),
(785, 'LORENA SOLEDAD ARBOLEDA BENITEZ ', '1715245625', '2447232', 'lsarboledafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10784', '0.00', 0.05, 2),
(786, 'MARIA JOSE LAURA CARVAJAL ', '1723562896', '022687154', 'mjlaurafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10785', '0.00', 0.05, 2),
(787, 'PETER NIGEL SKERRETT GUANOLUISA ', '1715824916', '022557616', 'pnskerrettfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10786', '0.00', 0.05, 2),
(788, 'SEBASTIAN ALFREDO NADER ', '1757052400', '0987354199', 'sanaderfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10787', '0.00', 0.05, 2),
(789, 'SEBASTIÃN ANDRÃ‰S ROLANDO CONCHA VILLANUEVA ', 'F11469402', '0992268166', 'saconchafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10788', '0.00', 0.05, 2),
(790, 'VERONICA ANDREA CHANGOLUISA CAYO ', '1721396859', '3215135', 'vachangoluisafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10789', '0.00', 0.05, 2),
(791, 'ANDREA SOLANGE MORAN JORQUERA ', '1713009072', '2242206', 'asmoranfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10790', '0.00', 0.05, 2),
(792, 'BRAYAN CAMILO ROJAS CORTÃ‰S ', 'AR122127', '2236533', 'bcrojasfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10791', '0.00', 0.05, 2),
(793, 'CARLA ESTEFANÃA APOLO MARTÃNEZ ', '1718434747', '3331686', 'ceapolofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10792', '0.00', 0.05, 2),
(794, 'DAISY MERCEDES PEÃ‘AFIEL BARBA ', '0604369215', '3230513', 'dmpenafielfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10793', '0.00', 0.05, 2),
(795, 'FELIPE ANDRES BALLADARES JARAMILLO ', '1715369706', '0984434984', 'faballadaresfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10794', '0.00', 0.05, 2),
(796, 'JUAN GABRIEL ROSERO ALCÃVAR ', '1721299467', '2812877', 'jgroserofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10795', '0.00', 0.05, 2),
(797, 'KATHERINE IVETH CHALÃ MOSQUERA ', '1003404553', '0000000000', 'kichalafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10796', '0.00', 0.05, 2),
(798, 'LUCIA LEON CUESTA ', '3050343742', '999999999', 'lucleonfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10797', '0.00', 0.05, 2),
(799, 'SANTIAGO XAVIER SANTILLÃN CAICEDO ', '1715408363', '022472175', 'sxsantillanfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10798', '0.00', 0.05, 2),
(800, 'TATIANA MISHELL AYALA GUEVARA ', '1721482014', '3133045', 'tmayalafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10799', '0.00', 0.05, 2),
(801, 'ANDREA FERNANDA ARÃ‰VALO BUCHELI ', '1712283637', '0991489-619', 'afarevalofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10800', '0.00', 0.05, 2),
(802, 'CHRISTIAN SANTIAGO SANTANDER JIMÃ‰NEZ ', '1719033175', '3813703', 'cssantanderfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10801', '0.00', 0.05, 2),
(803, 'DANIELA ALEJANDRA BARREIRO MARTÃNEZ ', '1723500904', '2952249', 'dabarreirofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10802', '0.00', 0.05, 2),
(804, 'EDWIN JYEFFERSON  FIGUEROA RIVERA ', 'AP214193', '2548393', 'ejfigueroafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10803', '0.00', 0.05, 2),
(805, 'ISABEL CRISTINA ESPAÃ‘A VILLOTA ', 'AP630204', '(57)27370123', 'icespanafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10804', '0.00', 0.05, 2),
(806, 'JESUS ALBERTO SANCHEZ AZUAJE ', '099126830', '0983326109', 'jeasanchezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10805', '0.00', 0.05, 2),
(807, 'LUIS FABIÃN ARMIJOS SAMANIEGO ', '1725511875', '022634626', 'lfarmijosfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10806', '0.00', 0.05, 2),
(808, 'MARÃA AUGUSTA  PÃ‰REZ ALDAZ ', '1804249629', '0984326400', 'maauperezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10807', '0.00', 0.05, 2),
(809, 'MARIA JOSE MORALES HERRERA ', '1804361614', '0983008852', 'majmoralesfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10808', '0.00', 0.05, 2),
(810, 'PABLO JOSÃ‰  BEGNINI LARENAS ', '1713793329', '2923325', 'pjbegninifl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10809', '0.00', 0.05, 2),
(811, 'PRYANKA PRISCILA PEÃ‘AFIEL CEVALLOS ', '1750213538', '022571131', 'pppenafielfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10810', '0.00', 0.05, 2),
(812, 'RICARDO JAVIER MEDINA JARAMILLO ', '1714038294', '3808420', 'rjmedinafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10811', '0.00', 0.05, 2),
(813, 'ALEX MAURICIO MALDONADO MENDEZ ', '1718941337', '2673615', 'ammaldonadofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10812', '0.00', 0.05, 2),
(814, 'DANIEL FERNANDO CRESPO PAZMIÃ‘O ', '1720592631', '2241739', 'dfcrespofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10813', '0.00', 0.05, 2),
(815, 'DANIELA CAROLINA PAZMIÃ‘O ROSAS ', '1719591693', '2554369', 'dacpazminofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10814', '0.00', 0.05, 2),
(816, 'DENIS FRANCISCO PUSDÃ CANACUÃN ', '1003108964', '022524377', 'dfpusdafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10815', '0.00', 0.05, 2),
(817, 'DENNYS EDUARDO MANCHENO CÃCERES ', '0603558503', '022408227', 'demanchenofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10816', '0.00', 0.05, 2),
(818, 'DIANA RAFAELA MONTOYA NARVAEZ ', '1715861942', '2442562', 'drmontoyafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10817', '0.00', 0.05, 2),
(819, 'EDISON GEOVANNY GUERRÃ“N RAZA ', '0401242516', '023210879', 'egguerronfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10818', '0.00', 0.05, 2),
(820, 'MALENNY CRISTINA ZALDUMBIDE ESPINOZA ', '1712677036', '0983361669', 'mczaldumbidefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10819', '0.00', 0.05, 2),
(821, 'MARÃA ISABEL VÃSQUEZ PAREDES ', '0922425525', '3987100', 'maivasquezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10820', '0.00', 0.05, 2),
(822, 'MONICA LIZETH FIGUEROA ARIAS ', 'AR696823', '895642', 'molfigueroafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10821', '0.00', 0.05, 2),
(823, 'PRISCILA MICHELLE MACAS ROMERO ', '1715332423', '022656535', 'pmmacasfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10822', '0.00', 0.05, 2),
(824, 'RODRIGO HERNAN RIVAS PAZ ', '1103783427', '022342406', 'rhrivasfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10823', '0.00', 0.05, 2),
(825, 'SARA JULIANA TAPIA SECO FERREIRA ', 'FG415608', '2528511', 'sjtapiasecofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10824', '0.00', 0.05, 2),
(826, 'VANESSA NATHALY PAREDES CAMACHO ', '1721716932', '2656527', 'vnparedesfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10825', '0.00', 0.05, 2),
(827, 'DANILO RICARDO ROSERO FUENTES ', '1723127799', '2266726', 'drroserofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10826', '0.00', 0.05, 2),
(828, 'JENNY PATRICIA CORTEZ SOLANO ', '1718479643', '3060982', 'jpcortezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10827', '0.00', 0.05, 2),
(829, 'LAURA ISABEL  SUÃREZ MA ', '1127208185', '0996220954', 'lisuarezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10828', '0.00', 0.05, 2),
(830, 'MARÃA FERNANDA SOLANO TENE ', '1721069886', '023086371', 'fsolanofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10829', '0.00', 0.05, 2),
(831, 'MÃ“NICA RIVERA VALENCIA ', '1118291609', '0982250665', 'mvalenciafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10830', '0.00', 0.05, 2),
(832, 'SANDRA PATRICIA  NAVIA BURBANO ', 'AR385910', '00000000', 'spnaviafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10831', '0.00', 0.05, 2),
(833, 'DIEGO ANDRÃ‰S QUINTERO TIMANÃ ', 'AN936619', '3172534578', 'daquinterofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10832', '0.00', 0.05, 2),
(834, 'ERNESTO LENIN ANAGUANO GUALOTO ', '1719437566', '022884707', 'elanaguanofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10833', '0.00', 0.05, 2),
(835, 'FABIÃN ALEJANDRO BELTRÃN NUÃ‘EZ ', '1002137071', '022475441', 'fabeltranfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10834', '0.00', 0.05, 2),
(836, 'FRANCISCO JAVIER ORTIZ SÃNCHEZ ', '1718725052', '0992584813', 'fjortizfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10835', '0.00', 0.05, 2),
(837, 'FRANCISCO JOEL ARRIOLA ALARCÃ“N ', 'A04790769', '5930992160119', 'fjarriolafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10836', '0.00', 0.05, 2),
(838, 'JHOANNA MARGARITA  GUALAVISÃ CAIZA ', '1717123085', '0999086981', 'jmgualavisifl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10837', '0.00', 0.05, 2),
(839, 'JHON MAURICIO GUERRA GARCIA ', '1085259604', '2292805', 'jmguerrafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10838', '0.00', 0.05, 2),
(840, 'JONATHAN XAVIER BAEZ VALENCIA ', '1725578965', '6039805', 'jxbaezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10839', '0.00', 0.05, 2),
(841, 'JOSÃ‰ EDUARDO  CHIRIBOGA VAREA ', '1721584512', '2922318', 'jechiribogafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10840', '0.00', 0.05, 2),
(842, 'JOSÃ‰ OCTAVIO LLOPIS HERNÃNDEZ ', 'E523864', '0000000', 'jollopisfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10841', '0.00', 0.05, 2),
(843, 'KATERINE MISHEL CALAHORRANO FLORES ', '1720805488', '023490016', 'kmcalahorranofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10842', '0.00', 0.05, 2),
(844, 'LUIS JAVIER ESCANDÃ“N CHICA ', '0102423795', '022525957', 'ljescandonfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10843', '0.00', 0.05, 2),
(845, 'MANOLO ALEJANDRO BOLAÃ‘OS CÃ“NDOR ', '1003418454', '026002704', 'mabolanosfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10844', '0.00', 0.05, 2),
(846, 'PATRICIA ELIZABETH AYMAR JIMÃ‰NEZ ', '1717520736', '2047263', 'peaymarfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10845', '0.00', 0.05, 2),
(847, 'RUT ELIZABET MELO DOMÃNGUEZ ', '1719358283', '02 3133997', 'remelofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10846', '0.00', 0.05, 2),
(848, 'SANDRA LINETH  LUNA SOSA ', '1757133093', '3082454', 'sllunafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10847', '0.00', 0.05, 2),
(849, 'SONIA LUCIA  QUINALUISA TABANGO ', '1717552812', '023331457', 'slquinaluisafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10848', '0.00', 0.05, 2),
(850, 'SONIA PATRICIA SOBRINO ANDRADE ', '1725958134', '0996434275', 'spsobrinofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10849', '0.00', 0.05, 2),
(851, 'VALERIA ALEXANDRA MESÃAS RODRÃGUEZ ', '1803249802', '0997510385', 'vamesiasfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10850', '0.00', 0.05, 2),
(852, 'ALBERTO MAURICIO VITERI CEVALLOS ', '1718683491', '2436385', 'almviterifl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10851', '0.00', 0.05, 2),
(853, 'ALEXANDRA NATHALI CHÃVEZ JARAMILLO ', '1715636294', '022346295', 'anchavezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10852', '0.00', 0.05, 2),
(854, 'AMANDA FABIOLA POROZO MÃ‰NDEZ ', '1002879532', '062 780524', 'afporozofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10853', '0.00', 0.05, 2),
(855, 'ANA ELIZABETH PERUGACHI KINDLER ', '1718155441', '022046309', 'aeperugachi@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10854', '0.00', 0.05, 2),
(856, 'ANABEL FERNANDA BILBAO GARCÃA ', '1724477292', '2024039', 'afbilbaofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10855', '0.00', 0.05, 2),
(857, 'CAROLINA RENATA ALVAREZ VEGA ', '1719182956', '023199106', 'cralvarezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10856', '0.00', 0.05, 2),
(858, 'CINTHYA CAROLINA CARRAZCO MONTALVO ', '0604104430', '026012360', 'cccarrazcofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10857', '0.00', 0.05, 2),
(859, 'DANIEL ALEJANDRO VIZUETE SANDOVAL ', '1719923755', '023520516', 'daavizuetefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10858', '0.00', 0.05, 2),
(860, 'FERNANDO ANDRÃ‰S MUÃ‘OZ MIÃ‘O ', '1715746622', '2405294', 'famunozfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10859', '0.00', 0.05, 2),
(861, 'JAIRO ENRRIQUE BARREDA GARCÃA ', 'AN820088', '0982377096', 'jebarredafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10860', '0.00', 0.05, 2),
(862, 'JAVIER ANDRÃ‰S CHILIQUINGA AMAYA ', '1720134988', '022288155', 'jaachiliquingfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10861', '0.00', 0.05, 2),
(863, 'JESSICA DAYANA MORAN OVIEDO ', '1716851611', '2342157', 'jdmoranfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10862', '0.00', 0.05, 2),
(864, 'JOSÃ‰ MANUEL MEJÃA VILLENA ', '116000265', '959460625', 'jmmejiafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10863', '0.00', 0.05, 2),
(865, 'KAROLL TAMARA NIQUINGA ACOSTA ', '1721093936', '2548894', 'ktniquingafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10864', '0.00', 0.05, 2),
(866, 'LEYDY KARINA SANTOS MATIZ ', 'AM628233', '0960067478', 'leksantosfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10865', '0.00', 0.05, 2),
(867, 'LLEISEN HOMERO QUIROZ CABAÃ‘AS ', '4058981', '2273584', 'lhquirozfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10866', '0.00', 0.05, 2),
(868, 'MARÃA VALERIA INNOCENTE ', 'AAC727694', '0958917505', 'mavinnocentefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10867', '0.00', 0.05, 2),
(869, 'NORMA SOLEDAD AGUIRRE CORNEJO ', '0102200052', '022442609', 'nosaguirre@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10868', '0.00', 0.05, 2),
(870, 'RODRIGO ADRIEL ITURRIZA ', 'AAD565286', '+541144610521', 'raiturrizafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10869', '0.00', 0.05, 2),
(871, 'YURA SERRANO VIA ', '1712519741', '2521875', 'yserranofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10870', '0.00', 0.05, 2),
(872, 'AMANDA SOLEDAD HIDALGO ASTUDILLO ', '0925651275', '0992329944', 'amsohidalgofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10871', '0.00', 0.05, 2),
(873, 'ANDRÃ‰S RICARDO  DURÃN MONTENEGRO ', '1717491151', '22807598', 'arduranfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10872', '0.00', 0.05, 2),
(874, 'EVELYN MIRLEY GUEVARA BARRETO ', '1721830139', '022417294', 'emguevarafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10873', '0.00', 0.05, 2),
(875, 'FAUSTO RUMIÃ‘AHUI JIMBO MUENALA ', '1002179255', '062-926455', 'frjimbofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10874', '0.00', 0.05, 2),
(876, 'IRENIA GÃMEZ PÃ‰REZ ', 'I648456', '-', 'irgamezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10875', '0.00', 0.05, 2),
(877, 'JEFFERSON FRANCISCO MORÃN CHIQUITO ', '0923060024', '042040421', 'jfmoranfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10876', '0.00', 0.05, 2),
(878, 'JOHANNA PAOLA TORRES PEDRAZA ', 'AP205391', '0991289821', 'joptorresfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10877', '0.00', 0.05, 2),
(879, 'JORGE EDUARDO REYES TORRES ', '1103939193', '023202432', 'jereyesfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10878', '0.00', 0.05, 2),
(880, 'JULIÃN ESTEBAN  GARCÃA ROMERO ', 'AT489369', '0998570517', 'juesgarciafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10879', '0.00', 0.05, 2),
(881, 'KATHERINE ALEXANDRA OBANDO VELÃSQUEZ ', '1721750832', '022613624', 'kaobandofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10880', '0.00', 0.05, 2),
(882, 'NINA ANDREA OSORIO VILLAVICENCIO ', '1600549602', '032889159', 'niaosoriofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10881', '0.00', 0.05, 2),
(883, 'OLIVER ALVARADO CHOQUE ', '6542838', '72760970', 'oalvaradofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10882', '0.00', 0.05, 2),
(884, 'OSWALDO VLADIMIR CHALÃ NARVÃEZ ', '1714024047', '023451733', 'ovchalafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10883', '0.00', 0.05, 2),
(885, 'SANTIAGO MANUEL CAHUASQUI CEVALLOS ', '1002693164', '2379694', 'smcahuasquifl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10884', '0.00', 0.05, 2),
(886, 'SEBASTIAN  TORRES GUDIÃ‘O ', '1714810296', '0994534008', 'tgsebastianfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10885', '0.00', 0.05, 2),
(887, 'VLADIMIR ALEJANDRO OBANDO MUÃ‘OZ ', '1722697156', '2813351', 'vaobandofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10886', '0.00', 0.05, 2),
(888, 'WILMER DARIO RODRIGUEZ RODRIGUEZ ', 'AS 427690', '93967821937', 'widarodriguezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10887', '0.00', 0.05, 2),
(889, 'ADRIANA SOLEDAD AGUILAR MOLINA ', '1721510145', '2335910', 'asaguilarfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10888', '0.00', 0.05, 2),
(890, 'ROLYSBETH MANJARREZ ORTIZ ', 'AP624003', '5852877', 'rmanjarrezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10889', '0.00', 0.05, 2),
(891, 'GIOVANNA ALEXANDRA VALDIVIESO LATORRE ', '1709865743', '2594921', 'gavaldiviesofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10890', '0.00', 0.05, 2),
(892, 'CRHISTYAM DAVID MUÃ‘OZ SANTACRUZ ', 'AP968338', '009272361180', 'cdmunoz@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10891', '0.00', 0.05, 2),
(893, 'DANIEL DAVID ACOSTA FUERTES ', '1003189089', '3238555', 'ddacostafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10892', '0.00', 0.05, 2),
(894, 'ESTEFFANY ELIZABETH BRAVO SANCHEZ ', '1712517042', '3530572', 'eebravofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10893', '0.00', 0.05, 2),
(895, 'JUAN DAVID  VELASCO MEDINA ', '1721702585', 'n/A', 'jdvelascofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10894', '0.00', 0.05, 2),
(896, 'XIMENA DEL ROCIO PROAÃ‘O CHECA ', '1709704462', '02203710389', 'xdproanochecafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10895', '0.00', 0.05, 2),
(897, 'MARÃA GRACIA SANDOVAL ITURRALDE ', '1717465783', '569 9 451 2445', 'mgsandovalfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10896', '0.00', 0.05, 2),
(898, 'MONICA FERNANDA VERA PUEBLA ', '1715264097', '3408272', 'mfverafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10897', '0.00', 0.05, 2),
(899, 'FERNANDO MIGUEL ALVARADO MENESES ', '0400999843', '2485177', 'fealvaradofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10898', '0.00', 0.05, 2),
(900, 'JORGE RAFAEL ARMENDÃRIZ SERRANO ', '1710321587', '023408106', 'jrarmendarizfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10899', '0.00', 0.05, 2),
(901, 'LINA MARCELA LONDOÃ‘O ESPINOSA ', '1715555205', '023432872', 'lmlondonofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10900', '0.00', 0.05, 2),
(902, 'LUIS MARCELO MEDRANO HURTADO ', '1709135485', '2573766', 'lmmedrano@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10901', '0.00', 0.05, 2),
(903, 'MARCOS FABIÃN MUÃ‘OZ NAVARRO ', '1709176356', '2452601', 'mcmunoznfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10902', '0.00', 0.05, 2),
(904, 'ALEXANDRA ISABEL CHICAIZA AYALA ', '0401662960', '062280494', 'aichicaizafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10903', '0.00', 0.05, 2),
(905, 'EDISON GEOVANNY YANEZ ASTUDILLO ', '0503475733', '0995865989', 'egyanezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10904', '0.00', 0.05, 2),
(906, 'JASPER SIEGFRIED  FEINER ', '1751506641', '022550101', 'jsfeinerfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10905', '0.00', 0.05, 2),
(907, 'JUAN CAMILO HIGUITA LÃ“PEZ ', 'AN786964', '+5745450108', 'juchiguitafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10906', '0.00', 0.05, 2),
(908, 'RICARDO PATRICIO ANDRADE CALDERÃ“N ', '1714209804', '2599959', 'randradefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10907', '0.00', 0.05, 2),
(909, 'ZULMA DEL PILAR ROA DIAZ ', '51952315', '512200203', 'zdroafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10908', '0.00', 0.05, 2),
(910, 'ABEL ALEJANDRO  ARIAS ARCENTALES ', '1720256963', '022290498', 'aaariasfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10909', '0.00', 0.05, 2),
(911, 'ALEJANDRO ROBERTO  VACA ALMEIDA ', '1714156047', '3035173', 'arvacafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10910', '0.00', 0.05, 2),
(912, 'CARLA IRENE CASTILLO YUMBULEMA ', '1723713366', '3160464', 'cicastillofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10911', '0.00', 0.05, 2),
(913, 'DANIEL ALEJANDRO BORJA NOVOA ', '1720199858', '023284342', 'daborjafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10912', '0.00', 0.05, 2),
(914, 'DANILO EDUARDO OJEDA PAZ ', '1714176664', '022337860', 'deojedafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10913', '0.00', 0.05, 2),
(915, 'DIEGO ROLANDO VACA ENRIQUEZ ', '1714613849', '4521728', 'drvacafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10914', '0.00', 0.05, 2),
(916, 'GUSTAVO ALEJANDRO JARRÃN RAZA ', '1722192679', '022735028', 'gajarrinfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10915', '0.00', 0.05, 2),
(917, 'JUAN GABRIEL VILLACIS CONRADO ', '1714042908', '-', 'jgvillacisfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10916', '0.00', 0.05, 2),
(918, 'JUAN SEBASTIAN SALCEDO CALDERON ', '1720210812', '2899408', 'jssalcedofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10917', '0.00', 0.05, 2),
(919, 'LISSETH VERÃ“NICA  BARZALLO SALTOS ', '1721870705', '2835324', 'lvbarzallofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10918', '0.00', 0.05, 2),
(920, 'MARIA GABRIELA RIVADENEIRA HINOJOSA ', '1003375449', '022805509', 'mgrivadeneirafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10919', '0.00', 0.05, 2),
(921, 'MARÃA GABRIELA  JUNCOSA CALAHORRANO ', '1719566638', '022235752', 'mgjuncosafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10920', '0.00', 0.05, 2),
(922, 'PAOLA GEOVANNA  TROYA BASTIDAS ', '0401305701', '3201542', 'pgtroyafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10921', '0.00', 0.05, 2),
(923, 'SIMON CURCI SALAZAR ', '1710978592', '2465963', 'scurcifl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10922', '0.00', 0.05, 2),
(924, 'CARLOS DAVID COLOMA CAZA ', '1718817198', '2436920', 'cdcolomafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10923', '0.00', 0.05, 2),
(925, 'EVELYN ANDREA VITERI NOLIVOS ', '1717991168', '2436920', 'eaviterifl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10924', '0.00', 0.05, 2),
(926, 'FERNANDO EDUARDO ARROYO AVILÃ‰S ', '1712643350', '2254676', 'fearroyofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10925', '0.00', 0.05, 2),
(927, 'LAURA CATALINA GOMEZ VELEZ ', '1755281845', '25135065', 'lcgomezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10926', '0.00', 0.05, 2),
(928, 'MARÃA CRISTINA  PROAÃ‘O RODRÃGUEZ ', '1718838459', '2412573', 'mcproanofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10927', '0.00', 0.05, 2),
(929, 'MARTHA CECILIA MORENO RONQUILLO ', '1713796231', '59322530654', 'macmorenofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10928', '0.00', 0.05, 2),
(930, 'YESENIA DEL CISNE VEGA SAMANIEGO ', '0705210375', '2903800', 'yevegafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10929', '0.00', 0.05, 2),
(931, 'DAVID FERNANDO AGUIRRE RUIZ ', '1715683999', '022441690', 'dafaguirrefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10930', '0.00', 0.05, 2),
(932, 'KARINA DEL ROCÃO NÃšÃ‘EZ CASTAÃ‘EDA ', '1713791976', '022190086', 'kdnunezfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10931', '0.00', 0.05, 2),
(933, 'MILENA SOLEDAD  VELASTEGUI AUZ ', '1712021169', '0988358736', 'msvelasteguifl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10932', '0.00', 0.05, 2),
(934, 'DANIELA PATRICIA BARRAGÃN TORRES ', '1717417313', '2403207', 'dpbarraganfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10933', '0.00', 0.05, 2),
(935, 'DENISE ANDREA MOLINA FREIRE ', '0503053779', '6040424', 'damolinaf@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10934', '0.00', 0.05, 2),
(936, 'MARCELO XAVIER CALDERÃ“N VINTIMILLA ', '0103699583', '023226609', 'xcalderon@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10935', '0.00', 0.05, 2),
(937, 'VÃCTOR PACARIC CALDERÃ“N MERINO ', '1709634495', '4506308', 'vpcalderonfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10936', '0.00', 0.05, 2),
(938, 'JOSÃ‰ ANDRÃ‰S BONILLA RON ', '1718248691', '022803084', 'jabonillafl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10937', '0.00', 0.05, 2),
(939, 'MIGUEL ANGEL REYES SANABRIA ', 'AP744604', '3233128', 'mareyesfl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10938', '0.00', 0.05, 2),
(940, 'NICOLÃS IGNACIO SAZO ARRATIA ', 'P00743122', '56 2 26648867', 'nisazofl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10939', '0.00', 0.05, 2),
(941, 'SANTIAGO FABIAN AGUIRRE ARIAS ', '1712862919', '2480-539', 'sfaguirrefl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10940', '0.00', 0.05, 2),
(942, 'SOFIA CAROLINA ROMERO YANEZ ', '0501974299', '023214938', 'scromero@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10941', '0.00', 0.05, 2),
(943, 'YACU FELIX VITERI GUALINGA ', '1600452351', '032883979', 'yfviterifl@flacso.edu.ec', 'na', 1, '0000-00-00 00:00:09', '10942', '0.00', 0.05, 2),
(944, 'PRUEBA', '999999', '', 'diego.sanchez@proconty.com', 'na', 1, '2018-04-28 12:59:58', '10943', '0.00', 0, 1);

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
-- Estructura de tabla para la tabla `detalle_caja_chica`
--

CREATE TABLE `detalle_caja_chica` (
  `id_dcc` int(11) NOT NULL,
  `caja_chica_id` int(11) NOT NULL,
  `producto_dcc` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `cantidad_dcc` int(5) NOT NULL,
  `precio_unitario_dcc` float NOT NULL,
  `precio_total_dcc` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `detalle_caja_chica`
--

INSERT INTO `detalle_caja_chica` (`id_dcc`, `caja_chica_id`, `producto_dcc`, `cantidad_dcc`, `precio_unitario_dcc`, `precio_total_dcc`) VALUES
(1, 1, 'Producto 1', 2, 0.32, 0.64),
(2, 1, 'Prod', 3, 0.8, 2.4),
(3, 2, 'P', 1, 2.4, 2.4),
(4, 2, 'P', 1, 0.64, 0.64);

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
(160, 4, 84, 1, 0.8),
(159, 3, 83, 1, 2.5),
(158, 2, 83, 1, 2.5);

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
(1, 'FLACSO'),
(2, 'ESTUDIANTES'),
(3, 'EXTERNO');

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
(121, 4, '2018-05-02 00:34:02', 149, 1, '1', '0.9', 1),
(120, 3, '2018-05-02 00:33:44', 149, 1, '1', '2.8', 1),
(119, 2, '2018-05-02 00:33:10', 149, 1, '1', '11.76', 1),
(118, 1, '2018-05-02 00:32:32', 149, 1, '1', '11.2', 1);

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
(1, 9, '100001', 'Agua con gas', 1, '0000-00-00 00:00:00', '0.60', 0, 0, 0, 0),
(2, 9, '100002', 'Agua sin gas', 1, '0000-00-00 00:00:00', '0.45', 0, 0, 0, 0),
(3, 9, '100003', 'Avena Tony', 1, '0000-00-00 00:00:00', '0.80', 0, 0, 0, 0),
(4, 9, '100004', 'Barra de cereal', 1, '0000-00-00 00:00:00', '0.41', 0, 0, 0, 0),
(5, 9, '100005', 'Chepetes', 1, '0000-00-00 00:00:00', '0.12', 0, 0, 0, 0),
(6, 9, '100006', 'Chulpi ManÃ­habas', 1, '0000-00-00 00:00:00', '0.30', 0, 0, 0, 0),
(7, 9, '100007', 'Club social', 1, '0000-00-00 00:00:00', '0.20', 0, 0, 0, 0),
(8, 9, '100008', 'Coca Cola 350 ml', 1, '0000-00-00 00:00:00', '0.50', 0, 0, 0, 0),
(9, 9, '100009', 'Coca Cola 400 ml', 1, '0000-00-00 00:00:00', '0.60', 0, 0, 0, 0),
(10, 9, '100010', 'Coca Cola Zero', 1, '0000-00-00 00:00:00', '0.75', 0, 0, 0, 0),
(11, 9, '100011', 'Fuze tea', 1, '0000-00-00 00:00:00', '0.65', 0, 0, 0, 0),
(12, 9, '100012', 'Galak', 1, '0000-00-00 00:00:00', '0.40', 0, 0, 0, 0),
(13, 9, '100013', 'Galletas Chocochip', 1, '0000-00-00 00:00:00', '0.50', 0, 0, 0, 0),
(14, 9, '100014', 'Galleta Club Social o integral', 1, '0000-00-00 00:00:00', '0.35', 0, 0, 0, 0),
(15, 9, '100015', 'Galletas Oreo', 1, '0000-00-00 00:00:00', '0.35', 0, 0, 0, 0),
(16, 9, '100016', 'Gelatoni', 1, '0000-00-00 00:00:00', '0.75', 0, 0, 0, 0),
(17, 9, '100017', 'Habas ManÃ­habas', 1, '0000-00-00 00:00:00', '0.30', 0, 0, 0, 0),
(18, 9, '100018', 'Halls en barra', 1, '0000-00-00 00:00:00', '0.50', 0, 0, 0, 0),
(19, 9, '100019', 'Jugo de frutas PULP', 1, '0000-00-00 00:00:00', '0.40', 0, 0, 0, 0),
(20, 9, '100020', 'Jugo del valle 250 ml', 1, '0000-00-00 00:00:00', '0.35', 0, 0, 0, 0),
(21, 9, '100021', 'Leche saborizada', 1, '0000-00-00 00:00:00', '0.50', 0, 0, 0, 0),
(22, 9, '100022', 'ManÃ­ dulce ManÃ­habas', 1, '0000-00-00 00:00:00', '0.30', 0, 0, 0, 0),
(23, 9, '100023', 'ManÃ­ ManÃ­habas', 1, '0000-00-00 00:00:00', '0.30', 0, 0, 0, 0),
(24, 9, '100024', 'Manicho', 1, '0000-00-00 00:00:00', '0.45', 0, 0, 0, 0),
(25, 9, '100025', 'Manicris', 1, '0000-00-00 00:00:00', '0.30', 0, 0, 0, 0),
(26, 9, '100026', 'Papas sin marca', 1, '0000-00-00 00:00:00', '0.87', 0, 0, 0, 0),
(27, 9, '100027', 'Tango', 1, '0000-00-00 00:00:00', '0.40', 0, 0, 0, 0),
(28, 9, '100028', 'Trident', 1, '0000-00-00 00:00:00', '0.50', 0, 0, 0, 0),
(29, 9, '100029', 'V220', 1, '0000-00-00 00:00:00', '1.00', 0, 0, 0, 0),
(30, 9, '100030', 'Vive 100 grande', 1, '0000-00-00 00:00:00', '1.00', 0, 0, 0, 0),
(31, 9, '100031', 'Waferito', 1, '0000-00-00 00:00:00', '0.15', 0, 0, 0, 0),
(32, 9, '100032', 'Yogur Toni', 1, '0000-00-00 00:00:00', '0.75', 0, 0, 0, 0),
(33, 9, '100033', 'Vive 100 pq', 1, '0000-00-00 00:00:00', '0.75', 0, 0, 0, 0),
(34, 9, '100034', 'Powerade med', 1, '0000-00-00 00:00:00', '0.60', 0, 0, 0, 0),
(35, 9, '100035', 'Pony Malta', 1, '0000-00-00 00:00:00', '0.55', 0, 0, 0, 0),
(36, 9, '100036', 'Papa funda pequeÃ±a', 1, '0000-00-00 00:00:00', '0.25', 0, 0, 0, 0),
(37, 9, '100037', 'Yogurt Tony con cereal', 1, '0000-00-00 00:00:00', '0.85', 0, 0, 0, 0),
(38, 8, '100038', 'Cevichocho', 1, '0000-00-00 00:00:00', '1.20', 0, 0, 0, 0),
(39, 8, '100039', 'Arepas', 1, '0000-00-00 00:00:00', '1.00', 0, 0, 0, 0),
(40, 8, '100040', 'Chochos con tostado', 1, '0000-00-00 00:00:00', '0.80', 0, 0, 0, 0),
(41, 8, '100041', 'Torta de chocolate', 1, '0000-00-00 00:00:00', '1.00', 0, 0, 0, 0),
(42, 8, '100042', 'Ensalada de frutas', 1, '0000-00-00 00:00:00', '1.00', 0, 0, 0, 0),
(43, 8, '100043', 'Salchicha envuelta en hojaldre', 1, '0000-00-00 00:00:00', '1.00', 0, 0, 0, 0),
(44, 8, '100044', 'Empanada Chilena', 1, '0000-00-00 00:00:00', '1.00', 0, 0, 0, 0),
(45, 8, '100045', 'Empanada de hojaldre', 1, '0000-00-00 00:00:00', '1.25', 0, 0, 0, 0),
(46, 8, '100046', 'Fruta de mano', 1, '0000-00-00 00:00:00', '0.50', 0, 0, 0, 0),
(47, 8, '100047', 'Torta de chocolate', 1, '0000-00-00 00:00:00', '1.00', 0, 0, 0, 0),
(48, 8, '100048', 'Quimbolito', 1, '0000-00-00 00:00:00', '1.25', 0, 0, 0, 0),
(49, 8, '100049', 'Tigrillo con Huevo Frito', 1, '0000-00-00 00:00:00', '1.75', 0, 0, 0, 0),
(50, 8, '100050', 'Papas de Maria o Mote Chich', 1, '0000-00-00 00:00:00', '1.50', 0, 0, 0, 0),
(51, 8, '100051', 'Postres Varios', 1, '0000-00-00 00:00:00', '1.00', 0, 0, 0, 0),
(52, 8, '100052', 'Quiche Lorraine', 1, '0000-00-00 00:00:00', '1.25', 0, 0, 0, 0),
(53, 8, '100053', 'Vol au vent', 1, '0000-00-00 00:00:00', '1.25', 0, 0, 0, 0),
(54, 8, '100054', 'Bolones', 1, '0000-00-00 00:00:00', '1.00', 0, 0, 0, 0),
(55, 8, '100055', 'Tortilla de Verde', 1, '0000-00-00 00:00:00', '1.00', 0, 0, 0, 0),
(56, 8, '100056', 'Tortilla de yuca', 1, '0000-00-00 00:00:00', '1.00', 0, 0, 0, 0),
(57, 8, '100057', 'Muchines', 1, '0000-00-00 00:00:00', '1.00', 0, 0, 0, 0),
(58, 8, '100058', 'Cuadron de verde', 1, '0000-00-00 00:00:00', '1.00', 0, 0, 0, 0),
(59, 8, '100059', 'Torta de Naranja', 1, '0000-00-00 00:00:00', '1.00', 0, 0, 0, 0),
(60, 8, '100060', 'Burritos', 1, '0000-00-00 00:00:00', '1.50', 0, 0, 0, 0),
(61, 8, '100061', 'Oreja', 1, '0000-00-00 00:00:00', '1.00', 0, 0, 0, 0),
(62, 8, '100062', 'Caracol relleno', 1, '0000-00-00 00:00:00', '1.00', 0, 0, 0, 0),
(63, 8, '100063', 'Torta Selva Negra', 1, '0000-00-00 00:00:00', '1.00', 0, 0, 0, 0),
(64, 8, '100064', 'Tortilla EspaÃ±ola', 1, '0000-00-00 00:00:00', '1.00', 0, 0, 0, 0),
(65, 8, '100065', 'Huevo und', 1, '0000-00-00 00:00:00', '0.25', 0, 0, 0, 0),
(66, 8, '100066', 'Trigrilo con queso y Huevo', 1, '0000-00-00 00:00:00', '1.75', 0, 0, 0, 0),
(67, 8, '100067', 'Enrollado de salchicha', 1, '0000-00-00 00:00:00', '1.00', 0, 0, 0, 0),
(68, 8, '100068', 'Muffin de Naranja', 1, '0000-00-00 00:00:00', '0.75', 0, 0, 0, 0),
(69, 8, '100069', 'Parfait', 1, '0000-00-00 00:00:00', '1.50', 0, 0, 0, 0),
(70, 8, '100070', 'Maduro con queso', 1, '0000-00-00 00:00:00', '1.00', 0, 0, 0, 0),
(71, 9, '100071', 'Vaso de leche', 1, '0000-00-00 00:00:00', '0.80', 0, 0, 0, 0),
(72, 9, '100072', 'Cubiertos plasticos', 1, '0000-00-00 00:00:00', '0.10', 0, 0, 0, 0),
(73, 9, '100073', 'Vaso descartable', 1, '0000-00-00 00:00:00', '0.10', 0, 0, 0, 0),
(74, 9, '100074', 'Tarrina de 1/2 lt', 1, '0000-00-00 00:00:00', '0.10', 0, 0, 0, 0),
(75, 9, '100075', 'Contenedor 8x8', 1, '0000-00-00 00:00:00', '0.15', 0, 0, 0, 0),
(76, 9, '100076', 'Crema Chantilly porcion', 1, '0000-00-00 00:00:00', '0.50', 0, 0, 0, 0),
(77, 4, '100077', '(Bebida caliente, jugo, 2 pan, mermelada y mantequilla)', 1, '0000-00-00 00:00:00', '2.25', 0, 2.25, 2.7, 0),
(78, 4, '100078', '(Bebida caliente, jugo, 2 pan, mermelada y mantequilla y huevos)', 1, '0000-00-00 00:00:00', '2.70', 0, 2.7, 3.1, 0),
(79, 4, '100079', '(Bebida caliente, pan,  yogurth, granola y fruta fresca)', 1, '0000-00-00 00:00:00', '2.70', 0, 2.7, 3.1, 0),
(80, 3, '100080', '(Sopa, Plato Fuerte, Jugo y Postre)', 1, '0000-00-00 00:00:00', '2.75', 0, 3.5, 4, 0),
(81, 3, '100081', '(Plato Fuerte, Jugo y Postre)', 1, '0000-00-00 00:00:00', '2.50', 0, 3.25, 3.75, 0),
(82, 3, '100082', 'Sopa', 1, '0000-00-00 00:00:00', '1.00', 0, 1, 1.2, 0),
(83, 3, '100083', 'Plato Fuerte', 1, '0000-00-00 00:00:00', '2.50', 0, 2.5, 2.5, 0),
(84, 3, '100084', 'Jugo', 1, '0000-00-00 00:00:00', '0.80', 0, 0.8, 1, 0),
(85, 6, '100085', 'CafÃ© Americano', 1, '0000-00-00 00:00:00', '1.35', 0, 0, 0, 0),
(86, 6, '100086', 'CafÃ© Capuchino', 1, '0000-00-00 00:00:00', '1.75', 0, 0, 0, 0),
(87, 6, '100087', 'CafÃ© Expresso', 1, '0000-00-00 00:00:00', '1.00', 0, 0, 0, 0),
(88, 6, '100088', 'CafÃ© Mocachino', 1, '0000-00-00 00:00:00', '1.75', 0, 0, 0, 0),
(89, 6, '100089', 'Chocolate Caliente', 1, '0000-00-00 00:00:00', '1.50', 0, 0, 0, 0),
(90, 6, '100090', 'CafÃ© Pasado', 1, '0000-00-00 00:00:00', '0.80', 0, 0, 0, 0),
(91, 6, '100091', 'CafÃ© con Leche', 1, '0000-00-00 00:00:00', '1.50', 0, 0, 0, 0),
(92, 6, '100092', 'AromÃ¡ticas', 1, '0000-00-00 00:00:00', '0.80', 0, 0, 0, 0),
(93, 1, '100093', 'Sanduche Mixto', 1, '0000-00-00 00:00:00', '1.50', 0, 0, 0, 0),
(94, 1, '100094', 'Sanduche de Pollo', 1, '0000-00-00 00:00:00', '1.75', 0, 0, 0, 0),
(95, 1, '100095', 'Sanduche de Lomo', 1, '0000-00-00 00:00:00', '1.75', 0, 0, 0, 0),
(96, 1, '100096', 'Empanadas de hojaldre de pollo o carne', 1, '0000-00-00 00:00:00', '1.20', 0, 0, 0, 0),
(97, 1, '100097', 'Bolones', 1, '0000-00-00 00:00:00', '1.00', 0, 0, 0, 0),
(98, 1, '100098', 'Nachos con Guacamole y Queso', 1, '0000-00-00 00:00:00', '1.50', 0, 0, 0, 0),
(99, 2, '100099', 'Donut', 1, '0000-00-00 00:00:00', '1.00', 0, 0, 0, 0),
(100, 2, '100100', 'Donut rellena', 1, '0000-00-00 00:00:00', '1.00', 0, 0, 0, 0),
(101, 2, '100101', 'Tortas Varias (chocolate, zanahoria, etc)', 1, '0000-00-00 00:00:00', '1.00', 0, 0, 0, 0),
(102, 2, '100102', 'Pizza', 1, '0000-00-00 00:00:00', '1.50', 0, 0, 0, 0),
(103, 2, '100103', 'Melvas', 1, '0000-00-00 00:00:00', '0.80', 0, 0, 0, 0),
(104, 2, '100104', 'Moncaibas', 1, '0000-00-00 00:00:00', '0.80', 0, 0, 0, 0),
(105, 2, '100105', 'Pan de chocolate', 1, '0000-00-00 00:00:00', '0.80', 0, 0, 0, 0),
(106, 5, '100106', 'Hamburguesa + papa + gaseosa personal', 1, '0000-00-00 00:00:00', '3.50', 0, 0, 0, 0),
(107, 5, '100107', 'Cheeseburguer + papa + gaseosa personal', 1, '0000-00-00 00:00:00', '4.00', 0, 0, 0, 0),
(108, 5, '100108', 'Hot Dog + papa + gaseosa personal', 1, '0000-00-00 00:00:00', '3.00', 0, 0, 0, 0),
(109, 5, '100109', 'Sanduche mixto +  gaseosa personal', 1, '0000-00-00 00:00:00', '2.00', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjetas`
--

CREATE TABLE `tarjetas` (
  `id_tarjetas` int(11) NOT NULL,
  `codigo_tarjetas` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `monto_tarjetas` float NOT NULL,
  `fecha_solicitud_Tarjetas` datetime NOT NULL,
  `numero_factura` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `user_solicitud_id` int(11) NOT NULL,
  `estatus_tarjetas` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tarjetas`
--

INSERT INTO `tarjetas` (`id_tarjetas`, `codigo_tarjetas`, `cliente_id`, `monto_tarjetas`, `fecha_solicitud_Tarjetas`, `numero_factura`, `user_solicitud_id`, `estatus_tarjetas`) VALUES
(16, '17067430672', 149, 2.4, '2018-05-01 17:33:10', '2', 1, 1),
(15, '17067430671', 149, 10, '2018-05-01 17:32:32', '1', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp`
--

CREATE TABLE `tmp` (
  `id_tmp` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad_tmp` int(11) NOT NULL,
  `precio_tmp` double(8,2) DEFAULT NULL,
  `tarjeta_temp` tinyint(1) NOT NULL,
  `session_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tmp`
--

INSERT INTO `tmp` (`id_tmp`, `id_producto`, `cantidad_tmp`, `precio_tmp`, `tarjeta_temp`, `session_id`) VALUES
(397, 109, 1, 2.00, 0, 'kl6j9uqmdr51mrf5gq7pteb98v');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp_caja_chica`
--

CREATE TABLE `tmp_caja_chica` (
  `id_tempcc` int(11) NOT NULL,
  `producto__tempcc` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `cantidad__tempcc` int(5) NOT NULL,
  `precio_unitario__tempcc` float NOT NULL,
  `sesion__tempcc` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user data';

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
-- Indices de la tabla `caja_chica`
--
ALTER TABLE `caja_chica`
  ADD PRIMARY KEY (`id_cc`);

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
-- Indices de la tabla `detalle_caja_chica`
--
ALTER TABLE `detalle_caja_chica`
  ADD PRIMARY KEY (`id_dcc`);

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
-- Indices de la tabla `tmp_caja_chica`
--
ALTER TABLE `tmp_caja_chica`
  ADD PRIMARY KEY (`id_tempcc`);

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
-- AUTO_INCREMENT de la tabla `caja_chica`
--
ALTER TABLE `caja_chica`
  MODIFY `id_cc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categorias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=945;

--
-- AUTO_INCREMENT de la tabla `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `detalle_caja_chica`
--
ALTER TABLE `detalle_caja_chica`
  MODIFY `id_dcc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id_empresas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estatus`
--
ALTER TABLE `estatus`
  MODIFY `id_estatus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

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
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT de la tabla `tarjetas`
--
ALTER TABLE `tarjetas`
  MODIFY `id_tarjetas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `tmp`
--
ALTER TABLE `tmp`
  MODIFY `id_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=422;

--
-- AUTO_INCREMENT de la tabla `tmp_caja_chica`
--
ALTER TABLE `tmp_caja_chica`
  MODIFY `id_tempcc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index', AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
