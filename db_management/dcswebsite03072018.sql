-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 07, 2018 at 10:32 AM
-- Server version: 5.7.21-0ubuntu0.17.10.1
-- PHP Version: 7.1.11-0ubuntu0.17.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dcswebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `ACCOUNT`
--

CREATE TABLE `ACCOUNT` (
  `Account_ID` int(10) NOT NULL,
  `Account_LastName` varchar(50) NOT NULL,
  `Account_FirstName` varchar(50) NOT NULL,
  `Account_MiddleInitial` tinytext,
  `Account_ContactNumber` bigint(11) DEFAULT NULL,
  `Account_ContactEmail` varchar(50) DEFAULT NULL,
  `Administrator` tinyint(1) NOT NULL,
  `Chairperson` tinyint(1) NOT NULL,
  `Program_Coordinator` tinyint(1) NOT NULL,
  `Tactics_Moderator` tinyint(1) NOT NULL,
  `Faculty` tinyint(1) NOT NULL,
  `Tactics_Officer` tinyint(1) NOT NULL,
  `Student` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ACCOUNT`
--

INSERT INTO `ACCOUNT` (`Account_ID`, `Account_LastName`, `Account_FirstName`, `Account_MiddleInitial`, `Account_ContactNumber`, `Account_ContactEmail`, `Administrator`, `Chairperson`, `Program_Coordinator`, `Tactics_Moderator`, `Faculty`, `Tactics_Officer`, `Student`) VALUES
(0, '', '', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0),
(1, 'admin', 'admin', 'a', 0, 'dcs@gbox.adnu.edu.ph', 1, 0, 0, 0, 0, 0, 0),
(2, 'Olano', 'Frederick', 'D', 9123456789, 'fzolano@gbox.adnu.edu.ph', 0, 1, 0, 0, 1, 0, 0),
(3, 'Aureus', 'Jelly', 'P', 9123456789, 'jaureus@gbox.adnu.edu.ph', 0, 0, 1, 0, 1, 0, 0),
(4, 'Ang', 'Marianne', 'P', 9123456789, 'mang@gbox.adnu.edu.ph', 0, 0, 1, 0, 1, 0, 0),
(5, 'Fabia', 'Glenn', 'G', 9123456789, 'gfabia@gbox.adnu.edu.ph', 0, 0, 0, 1, 1, 0, 0),
(6, 'Santos', 'Michelle Elija', 'B', 9123456789, 'mebuenagua@gbox.adnu.edu.ph', 0, 0, 1, 0, 1, 0, 0),
(7, 'Amata', 'Raymund', 'F', 9123456789, 'raamata@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(8, 'Abundabar', 'Edbert Ian', 'M', 9123456789, 'eabundabar@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(9, 'Herras', 'Ingrid Yvonne', 'D', 9123456789, 'iherras@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 1, 1),
(10, 'Lopez', 'Joshua Daniel', 'F', 9123456789, 'joslopez@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 1, 1),
(11, 'Cagampang', 'Rashiel James', 'E', 9123456789, 'rcagampang@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(12, 'Velasco', 'Dave', 'P', 9123456789, 'dvelasco@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(13, 'Castaneda', 'Jan Redentor', 'C', 9123456789, 'jcastaneda@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(14, 'Ursua II', 'Jaime', 'Z', 9123456789, 'jursuaii@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(15, 'Dela Cruz', 'Mohammed', 'B', 9123456789, 'modelacruz@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(16, 'Rafer', 'Franklin', 'C', 9123456789, 'frrafer@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(17, 'Lacerna', 'Joshua Daniel', 'R', 9123456790, 'jjllacerna@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(18, 'Guadalupe', 'Marianne', 'B', 9123456790, 'gm@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(19, 'Dela Torre', 'Moira', 'E', 9876543256, 'dmoira@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(20, 'Paycana', 'Aika', 'C', 9876543256, 'aicap@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(21, 'Asuncion', 'Maria', 'D', 9806789081, 'masuncion@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(22, 'Dagpin', 'Rene', 'D', 9123456789, 'redagpin@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(23, 'Ragodon', 'Michael Joseph', 'A', 9123456789, 'miragodon@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(24, 'Espanto', 'Darren Jr.', 'D', 9234245678, 'despanto@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(25, 'Bamboo', 'Burnok', 'U', 9234245678, 'BamBurnok@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(26, 'Caceres', 'Jake', 'G', 9134245678, 'jcaceres@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(27, 'Soriano', 'Henry', 'R', 9334245678, 'hsoriano@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(28, 'Borja', 'Jose', 'T', 92334245678, 'jborja@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(29, 'Navalez', 'Kim', 'Y', 9234245678, 'Knavalez@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(30, 'Paligar', 'Adrian', 'U', 9234245678, 'apaligar@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(31, 'Arroyo', 'Jaron', 'T', 9212345615, 'jarroyo@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(32, 'Yu', 'Lizzel', 'E', 9102345678, 'lyu@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(33, 'Reyes', 'Christine', 'Q', 9081726354, 'creyes@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(34, 'Demacanto', 'July', 'S', 9801213145, 'jdemacanto@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(35, 'Engkantadyo', 'Jemma', 'D', 9512625341, 'jengkantadyo@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(36, 'Baloso', 'Roy', 'F', 9234245678, 'Rbaloso@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(37, 'Dimaculangan', 'Jenny', 'G', 9187267652, 'jdimaculangan@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(38, 'Nunes', 'Erika', 'H', 9234245678, 'enunes@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(39, 'Journek', 'Bobby', 'D', 9234245678, 'bjournek@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(40, 'Gerinimo', 'Sarah', 'V', 9234245678, 'sgeronimo@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(41, 'Salonga', 'Lea', 'G', 9234245678, 'lsalonga@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(42, 'Reid', 'James', 'K', 9234245678, 'jreid@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(43, 'Napoles', 'Yum', 'S', 9234245678, 'ynapoles@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(44, 'Duterte', 'Henry', 'T', 9234245678, 'hduterte@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(45, 'Jagernyo', 'Nancy', 'U', 9234245678, 'njagernyo@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(46, 'Henyoki', 'Heaven', 'H', 9234245678, 'hhenyoki@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(47, 'Anastacio', 'Jhona', 'S', 9234245678, 'janastacio@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(48, 'Binono', 'April', 'F', 9234245678, 'abinono@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(49, 'Balderamas', '	Amihan', 'G', 9234245678, 'abalderamas@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(50, 'Entiro', '	Amor', 'H', 9234245678, 'aentiro@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(51, 'Ruizo', 'Analyn', 'B', 9234245678, 'aruizo@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(52, 'Rubio', 'Arnel', 'D', 9234245678, 'arubio@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(53, 'Munar', 'Arvin', 'M', 9234245678, 'amunar@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(54, 'Denava', 'Bagwis', 'F', 9234245678, 'bdenava@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(55, 'Casaquite', 'Benjamin', 'H', 9234245678, 'bcasquite@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(56, 'Capuso', 'Charito', 'J', 9234245678, 'ccapuso@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(57, 'Gagui', 'Cherie', 'K', 9234245678, 'cgagui@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(58, 'Fenis', 'Chona', 'S', 9234245678, 'cfenis@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(59, 'Dimaunahan', 'Crisanto', 'H', 9234245678, 'cdimaunahan@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(60, 'Cascante ', 'Dalisay', 'J', 9234245678, 'dcascante@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(61, 'Madrona', 'Diosa', 'M', 9234245678, 'dmadrona@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(62, 'Alejandro', 'Divina', 'B', 9234245678, 'dalejandro@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(63, 'Bolcan', 'Diwa', 'D', 9234245678, 'dbolcan@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(64, 'Balut', 'Imarie', 'G', 9234245678, 'ibalut@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(65, 'Bobis', 'Heherson', 'H', 9234245678, 'hbobis@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(66, 'Guinaling', 'Irish', 'J', 9234245678, 'iguinaling@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(67, 'Mahusay', 'Jejomar', 'J', 9234245678, 'jmahusay@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(68, 'Buquing', 'Jay', 'K', 9234245678, 'jboquing@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(69, 'Anai', 'Isko', 'D', 9234245678, 'ianai@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(70, 'Relos', 'Joshue', 'E', 9234245678, 'jrelos@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(71, 'Bolocboloc', 'Carl', 'R', 9234245678, 'cbolocboloc@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(72, 'Feria', 'John', 'Y', 9234245678, 'jferia@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(73, 'Panis ', 'Joseph', 'H', 9234245678, 'jpanis@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(74, 'Amplayo', 'Jovelyn', 'H', 9234245678, 'jamplayo@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(75, 'Lumacad', '	Joriz', 'T', 9234245678, 'jlumacad@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(76, 'Lubrica ', 'Laarni', 'G', 9234245678, 'llubrica@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(77, 'Santos', 'Elizabeth', 'E', 9234245678, 'esantos@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(78, 'Reyes', 'Maricor', 'R', 9234245678, 'mreyes@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(79, 'Cruz', 'Marites', 'F', 9234245678, 'mcruz@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(80, 'Bautista', 'Mary Rose', 'V', 9234245678, 'mbautista@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(81, 'Ocampo', 'Melchior', 'B', 9234245678, 'mocampo@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(82, 'García', 'Mirasol', 'A', 9234245678, 'mgarcia@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(83, 'Mendoza', 'Nenita', 'B', 9234245678, 'nmendoza@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(84, 'Torres', 'Nimfa', 'B', 9234245678, 'ntorres@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(85, 'Tomás', 'Pacifico', 'D', 9234245678, 'ptomas@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(86, 'Andrada', 'Pearl', 'A', 9121890121, 'pandrada@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(87, 'Castillo', 'Ramil', 'W', 9122133141, 'rcastilo@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(88, 'Flores', 'Reynante', 'R', 9182131456, 'rflores@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(89, 'Villanueva', 'Rhea Mae', 'T', 9121314561, 'rvillanueva@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(90, 'Ramos', 'Riza', 'F', 9213145161, 'rramos@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(91, 'Castro', 'Antonio', 'D', 9234151612, 'acastro@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(92, 'Rivera', 'Ziwela', 'H', 9121456134, 'zrivera@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(93, 'Aquino', 'Noynoy', 'H', 9125121346, 'naquino@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(94, 'Navarro', 'vhong', 'S', 9145121341, 'vnavarro@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(95, 'Salazar', 'Rico', 'A', 9123131451, 'rsalazr@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(96, 'Mercado', 'Alisha', 'W', 9121415461, 'amercado@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(97, 'Rosales', 'Jerico', 'Y', 9182131451, 'jrosales@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(98, 'Castro', 'Jomel', 'T', 9812131345, 'jcastro@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(99, 'Pulumbarit', 'Jonnel', 'W', 9812134546, 'jpalumbarit@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1),
(100, 'Lumaban ', 'Jaime', 'A', 9121341567, 'jlumaban@gbox.adnu.edu.ph', 0, 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ACCOUNT_SECURITY`
--

CREATE TABLE `ACCOUNT_SECURITY` (
  `Account_ID` int(10) NOT NULL,
  `Account_Username` varchar(50) NOT NULL,
  `Account_Password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ACCOUNT_SECURITY`
--

INSERT INTO `ACCOUNT_SECURITY` (`Account_ID`, `Account_Username`, `Account_Password`) VALUES
(1, 'admin', 'admin'),
(2, 'olano', 'frederick'),
(3, 'aureus', 'jelly'),
(4, 'ang', 'marianne'),
(5, 'fabia', 'glenn'),
(6, 'buenagua-santos', 'michelleelija'),
(7, 'amata', 'raymund'),
(8, 'abundabar', 'edbertian'),
(9, 'herras', 'ingridyvonne'),
(10, 'lopez', 'joshuadaniel'),
(11, 'cagampang', 'rashieljames'),
(12, 'velasco', 'dave'),
(13, 'castaneda', 'janredentor'),
(14, 'ursuaii', 'jaimez'),
(15, 'delacruz', 'mohammed'),
(16, 'rafer', 'franklin'),
(17, 'lacerna', 'joshuadaniel'),
(18, 'guadalupe', 'marianne'),
(19, 'delatorre', 'moira'),
(20, 'paycana', 'aika'),
(21, 'asuncion', 'maria'),
(22, 'dagpin', 'rene'),
(23, 'ragodon', 'michaeljoseph'),
(24, 'espanto', 'darrenjr.'),
(25, 'bamboo', 'burnok'),
(26, 'caceres', 'jake'),
(27, 'soriano', 'henry'),
(28, 'borja', 'jose'),
(29, 'navalez', 'kim'),
(30, 'paligar', 'adrian'),
(31, 'arroyo', 'jaron'),
(32, 'yu', 'lizzel'),
(33, 'reyes', 'christine'),
(34, 'demacanto', 'july'),
(35, 'engkantadyo', 'jemma'),
(36, 'baloso', 'roy'),
(37, 'dimaculangan', 'jenny'),
(38, 'nunes', 'erika'),
(39, 'journek', 'bobby'),
(40, 'gerinimo', 'sarah'),
(41, 'salonga', 'lea'),
(42, 'reid', 'james'),
(43, 'napoles', 'yum'),
(44, 'duterte', 'henry'),
(45, 'jagernyo', 'nancy'),
(46, 'henyoki', 'heaven'),
(47, 'anastacio', 'jhona'),
(48, 'binono', 'april'),
(49, 'balderamas', 'amihan'),
(50, 'entiro', 'amor'),
(51, 'ruizo', 'analyn'),
(52, 'rubio', 'arnel'),
(53, 'munar', 'arvin'),
(54, 'denava', 'bagwis'),
(55, 'casaquite', 'benjamin'),
(56, 'capuso', 'charito'),
(57, 'gagui', 'cherie'),
(58, 'fenis', 'chona'),
(59, 'dimaunahan', 'crisanto'),
(60, 'cascante', 'dalisay'),
(61, 'madrona', 'diosa'),
(62, 'alejandro', 'divina'),
(63, 'bolcan', 'diwa'),
(64, 'balut', 'imarie'),
(65, 'bobis', 'heherson'),
(66, 'guinaling', 'irish'),
(67, 'mahusay', 'jejomar'),
(68, 'buquing', 'jay'),
(69, 'anai', 'isko'),
(70, 'relos', 'joshue'),
(71, 'bolocboloc', 'carl'),
(72, 'feria', 'john'),
(73, 'panis', 'joseph'),
(74, 'amplayo', 'jovelyn'),
(75, 'lumacad', 'joriz'),
(76, 'lubrica', 'laarni'),
(77, 'santos', 'elizabeth'),
(78, 'reyes', 'maricor'),
(79, 'cruz', 'marites'),
(80, 'bautista', 'maryrose'),
(81, 'ocampo', 'melchior'),
(82, 'garcía', 'mirasol'),
(83, 'mendoza', 'nenita'),
(84, 'torres', 'nimfa'),
(85, 'tomás', 'pacifico'),
(86, 'andrada', 'pearl'),
(87, 'castillo', 'ramil'),
(88, 'flores', 'reynante'),
(89, 'villanueva', 'rheamae'),
(90, 'ramos', 'riza'),
(91, 'castro', 'antonio'),
(92, 'rivera', 'ziwela'),
(93, 'aquino', 'noynoy'),
(94, 'navarro', 'vhong'),
(95, 'salazar', 'rico'),
(96, 'mercado', 'alisha'),
(97, 'rosales', 'jerico'),
(98, 'castro', 'jomel'),
(99, 'pulumbarit', 'jonnel'),
(100, 'lumaban', 'jaimea');

-- --------------------------------------------------------

--
-- Table structure for table `ACTIVITY`
--

CREATE TABLE `ACTIVITY` (
  `Activity_ID` int(10) NOT NULL,
  `Date_Created` datetime DEFAULT NULL,
  `Activity_Type` tinytext NOT NULL,
  `Approved_By` int(10) DEFAULT NULL,
  `Approved_When` datetime DEFAULT NULL,
  `Created_By` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ACTIVITY`
--

INSERT INTO `ACTIVITY` (`Activity_ID`, `Date_Created`, `Activity_Type`, `Approved_By`, `Approved_When`, `Created_By`) VALUES
(1, '2018-03-01 00:00:00', 'N', 2, '2018-03-01 00:00:00', 9),
(2, '2018-03-02 00:00:00', 'N', 2, '2018-03-02 00:00:00', 9),
(3, '2018-03-03 00:00:00', 'N', 2, '2018-03-03 00:00:00', 9),
(4, '2018-03-04 00:00:00', 'N', 2, '2018-03-04 00:00:00', 9),
(5, '2018-03-05 00:00:00', 'N', 2, '2018-03-05 00:00:00', 9),
(6, '2018-03-01 00:00:00', 'A', 2, '2018-03-01 00:00:00', 9),
(7, '2018-03-02 00:00:00', 'A', 2, '2018-03-02 00:00:00', 6),
(8, '2018-03-03 00:00:00', 'A', 1, '2018-03-03 00:00:00', 1),
(9, '2018-03-04 00:00:00', 'A', 2, '2018-03-04 00:00:00', 2),
(10, '2018-03-05 00:00:00', 'A', 1, '2018-03-05 00:00:00', 1),
(11, '2018-01-01 00:00:00', 'E', 1, '2018-01-01 00:00:00', 1),
(12, '1995-12-31 00:00:00', 'E', 5, '1995-12-31 00:00:00', 9),
(13, '2018-01-07 00:00:00', 'E', 2, '2018-01-07 00:00:00', 2),
(14, '2018-01-11 00:00:00', 'E', 2, '2018-01-11 00:00:00', 3),
(15, '2018-01-23 00:00:00', 'E', 5, '2018-01-23 00:00:00', 5),
(16, '2018-01-25 00:00:00', 'E', 2, '2018-01-25 00:00:00', 6),
(17, '2018-01-25 00:00:00', 'E', 1, '2018-01-25 00:00:00', 1),
(18, '2018-01-26 00:00:00', 'E', 1, '2018-01-26 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `A_ANNOUNCEMENT`
--

CREATE TABLE `A_ANNOUNCEMENT` (
  `Announcement_ID` int(10) NOT NULL,
  `Announcement_Content` text NOT NULL,
  `Announcement_Teaser` text,
  `Pinned` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `A_ANNOUNCEMENT`
--

INSERT INTO `A_ANNOUNCEMENT` (`Announcement_ID`, `Announcement_Content`, `Announcement_Teaser`, `Pinned`) VALUES
(6, 'SSG Election is now online', '', 0),
(7, 'SP Orientation not cancelled', '', 1),
(8, 'April 1 is Non-Uniform day', '', 1),
(9, 'Booklet Submission is extended', '', 0),
(10, 'Classes End at March 17', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `A_EVENT`
--

CREATE TABLE `A_EVENT` (
  `Event_ID` int(10) NOT NULL,
  `Event_Title` varchar(50) NOT NULL,
  `Event_Start` datetime NOT NULL,
  `Event_End` datetime NOT NULL,
  `Event_Venue` text NOT NULL,
  `Event_Description` text,
  `Event_Reminder` text,
  `Event_Teaser` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `A_EVENT`
--

INSERT INTO `A_EVENT` (`Event_ID`, `Event_Title`, `Event_Start`, `Event_End`, `Event_Venue`, `Event_Description`, `Event_Reminder`, `Event_Teaser`) VALUES
(11, 'Final Examination for graduating Students', '2018-03-02 07:30:00', '2018-03-02 21:30:00', 'Ateneo de Naga University', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 'Observe Proper Uniform', '/'),
(12, 'CS WEEK', '2018-03-14 08:00:00', '2018-03-21 21:00:00', 'Ateneo de Naga University', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 'Civilian', '/'),
(13, 'Submission of Grades', '2018-03-02 02:08:00', '2018-03-26 12:00:00', 'DCS Faculty Lounge, Phelan Hall', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 'Bring Lunch and Snacks', '/'),
(14, 'DOST Grant Meeting', '2018-04-01 15:16:00', '2018-04-15 18:00:00', 'DCS Faculty Lounge, Phelan Hall', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 'Bring Snacks', '/'),
(15, 'Meeting No. 15', '2018-03-02 02:16:00', '2018-03-26 18:00:00', 'P319, Phelan Hall', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 'Bring Outreach Documents', '/'),
(16, 'Meeting with SP Applicants', '2018-03-01 15:16:00', '2018-03-15 18:00:00', 'P319, Phelan Hall', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 'Bring SP Eligibility', '/'),
(17, 'Christmas Break', '2018-12-01 15:00:00', '2018-12-25 11:59:00', '-', '', '-', '/');

-- --------------------------------------------------------

--
-- Table structure for table `A_NEWS`
--

CREATE TABLE `A_NEWS` (
  `News_ID` int(10) NOT NULL,
  `News_Title` text NOT NULL,
  `News_Content` text NOT NULL,
  `News_Teaser` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `A_NEWS`
--

INSERT INTO `A_NEWS` (`News_ID`, `News_Title`, `News_Content`, `News_Teaser`) VALUES
(1, 'ACP Summer Edition', 'This is just a test news and should appear in the front page of this', '/'),
(2, 'XIPHIAS DAY 1', 'Celebrating CSWeek 2018, Xiphias Day 1 starts of with the introductions of groups, the battle of the brains, and a showcasing of talents called GIF. Local Exhibits and display of the students work were also available throughout the duration from booths in Xavier hall. Don\'t forget to visit on the 2nd day to go on talks.', '/'),
(3, 'XIPHIAS DAY 2', 'Xiphias Day 2 is finally over, celebrating the CSWeek with talks about Deep Learning and Work Experiences. We hope you had fun learning outside of the classroom setting. Don\'t forget to visit on the 3rd day to support your houses on the E-lympics and Basketball events.', '/'),
(4, 'XIPHIAS DAY 3', 'Fun and Games for all. Teams fight out on the last day of the CSWeek celebration with events for Physical Games and Virtual Games. We hope you have learned to cherish your hobby and learn to still do what you love. CSWeek celebration is finally over.', '/'),
(5, 'GGJ Registration\r\n', 'A local settlement is underattack. Help by registering to a this summer’s Global Game Jam. The Global Game Jam (GGJ) is the world\'s largest game jam event (game creation) taking place around the world at physical locations.', '');

-- --------------------------------------------------------

--
-- Table structure for table `CHAIRPERSON`
--

CREATE TABLE `CHAIRPERSON` (
  `Account_ID` int(10) NOT NULL,
  `Effective_Start` date DEFAULT NULL,
  `Effective_End` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CHAIRPERSON`
--

INSERT INTO `CHAIRPERSON` (`Account_ID`, `Effective_Start`, `Effective_End`) VALUES
(2, '2017-06-03', '2020-06-03');

-- --------------------------------------------------------

--
-- Table structure for table `COURSE`
--

CREATE TABLE `COURSE` (
  `Course_ID` varchar(10) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Course_Rationale` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `COURSE`
--

INSERT INTO `COURSE` (`Course_ID`, `Course_Name`, `Course_Rationale`) VALUES
('BSCS', 'BS Computer Science', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.'),
('BSIS', 'BS Information Systems', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.'),
('BSIT', 'BS Information Technology', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.'),
('MIM', 'Masters of Information Management', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.'),
('MIT', 'Masters of Information Technology', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.'),
('MSCS', 'Masters of Computer Science', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.');

-- --------------------------------------------------------

--
-- Table structure for table `PREREQUISITE`
--

CREATE TABLE `PREREQUISITE` (
  `PreReq_ID` int(10) NOT NULL,
  `Subject_ID` varchar(10) NOT NULL,
  `Subject_Prereq_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PREREQUISITE`
--

INSERT INTO `PREREQUISITE` (`PreReq_ID`, `Subject_ID`, `Subject_Prereq_ID`) VALUES
(1, 'ENGS001', 'ENGS000'),
(2, 'FILED002', 'FILED001'),
(3, 'FRSH002', 'FRSH001'),
(4, 'ICFP002', 'ICFP001'),
(5, 'ICST103', 'ICST102'),
(6, 'MTHS001', 'MTHS000'),
(7, 'MTHS130', 'MTHS001'),
(8, 'PEDS002', 'PEDS001'),
(9, 'THES002', 'THES001'),
(10, 'ENGS002', 'ENGS001'),
(11, 'ICST104', 'MTHS001'),
(12, 'ICST106', 'MTHS001'),
(13, 'ICST201', 'ICST103'),
(14, 'PEDS003', 'PEDS002'),
(15, 'ENGS003', 'ENGS002'),
(16, 'ICST212', 'ICST211'),
(17, 'ICST214', 'ICST103'),
(18, 'ICST221', 'ICST203'),
(19, 'PEDS004', 'PEDS001'),
(20, 'PHIS002', 'PHIS001'),
(21, 'ICST217', 'MTHS001'),
(22, 'MTHS032', 'ICST104'),
(23, 'ICST222', 'ICST221'),
(24, 'LITS000', 'FRSH002');

-- --------------------------------------------------------

--
-- Table structure for table `PROGRAM_COORDINATOR`
--

CREATE TABLE `PROGRAM_COORDINATOR` (
  `Account_ID` int(10) NOT NULL,
  `Effective_Start` date DEFAULT NULL,
  `Effective_End` date DEFAULT NULL,
  `Program_Coordinator_Type` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PROGRAM_COORDINATOR`
--

INSERT INTO `PROGRAM_COORDINATOR` (`Account_ID`, `Effective_Start`, `Effective_End`, `Program_Coordinator_Type`) VALUES
(3, '2016-06-03', '2020-04-03', 'IT'),
(4, '2016-06-03', '2020-04-03', 'CS'),
(6, '2016-06-03', '2020-04-03', 'SP');

-- --------------------------------------------------------

--
-- Table structure for table `PROSPECTUS`
--

CREATE TABLE `PROSPECTUS` (
  `Prospectus_ID` int(10) NOT NULL,
  `Year_Start` date NOT NULL,
  `Year_End` date NOT NULL,
  `Approved_by` int(10) NOT NULL,
  `Created_By` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PROSPECTUS`
--

INSERT INTO `PROSPECTUS` (`Prospectus_ID`, `Year_Start`, `Year_End`, `Approved_by`, `Created_By`) VALUES
(1, '2014-06-01', '2018-06-01', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `PROSPECTUS_CONTENT`
--

CREATE TABLE `PROSPECTUS_CONTENT` (
  `Prospectus_Content_ID` int(10) NOT NULL,
  `Prospectus_ID` int(10) NOT NULL,
  `Course_ID` varchar(10) NOT NULL,
  `Subject_ID` varchar(10) NOT NULL,
  `Approved_by` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PROSPECTUS_CONTENT`
--

INSERT INTO `PROSPECTUS_CONTENT` (`Prospectus_Content_ID`, `Prospectus_ID`, `Course_ID`, `Subject_ID`, `Approved_by`) VALUES
(1, 1, 'BSIT', 'ENGS000', 1),
(2, 1, 'BSIT', 'FILED001', 1),
(3, 1, 'BSIT', 'FRSH001', 1),
(4, 1, 'BSIT', 'ICFP001', 1),
(5, 1, 'BSIT', 'ICST101', 1),
(6, 1, 'BSIT', 'ICST102', 1),
(7, 1, 'BSIT', 'MTHS000', 1),
(8, 1, 'BSIT', 'PEDS001', 1),
(9, 1, 'BSIT', 'THES001', 1),
(10, 1, 'BSIT', 'ENGS001', 1),
(11, 1, 'BSIT', 'FILED002', 1),
(12, 1, 'BSIT', 'FRSH002', 1),
(13, 1, 'BSIT', 'ICFP002', 1),
(14, 1, 'BSIT', 'ICST103', 1),
(15, 1, 'BSIT', 'ICST203', 1),
(16, 1, 'BSIT', 'MTHS001', 1),
(17, 1, 'BSIT', 'MTHS130', 1),
(18, 1, 'BSIT', 'PEDS002', 1),
(19, 1, 'BSIT', 'THES002', 1),
(20, 1, 'BSIT', 'HISS001', 1),
(21, 1, 'BSIT', 'HUMS001', 1),
(22, 1, 'BSIT', 'PSYS001', 1),
(23, 1, 'BSIT', 'ENGS002', 1),
(24, 1, 'BSIT', 'ICST104', 1),
(25, 1, 'BSIT', 'ICST106', 1),
(26, 1, 'BSIT', 'ICST201', 1),
(27, 1, 'BSIT', 'ICST211', 1),
(28, 1, 'BSIT', 'NSCS001', 1),
(29, 1, 'BSIT', 'PEDS001', 1),
(30, 1, 'BSIT', 'PHIS001', 1),
(31, 1, 'BSIT', 'ACCS030', 1),
(32, 1, 'BSIT', 'ENGS003', 1),
(33, 1, 'BSIT', 'HISS005', 1),
(34, 1, 'BSIT', 'ICST214 ', 1),
(35, 1, 'BSIT', 'ICST221', 1),
(36, 1, 'BSIT', 'PEDS004', 1),
(37, 1, 'BSIT', 'PHIS002', 1),
(38, 1, 'BSIT', 'ICST107', 1),
(39, 1, 'BSIT', 'ICST217', 1),
(40, 1, 'BSIT', 'MTHS032', 1),
(41, 1, 'BSIT', 'ICSE201', 1),
(42, 1, 'BSIT', 'ICSF201', 1),
(43, 1, 'BSIT', 'ICST222', 1),
(44, 1, 'BSIT', 'ICST230', 1),
(45, 1, 'BSIT', 'LITS000', 1),
(46, 1, 'BSIT', 'PHIS003', 1),
(47, 1, 'BSIT', 'SOCS001', 1),
(48, 1, 'BSIT', 'THES003', 1),
(49, 1, 'BSIT', 'PSCS001', 1),
(51, 1, 'BSIT', 'ICST108', 1),
(52, 1, 'BSIT', 'ICST241', 1),
(53, 1, 'BSIT', 'ICST350', 1),
(54, 1, 'BSIT', 'ICST500', 1),
(55, 1, 'BSIT', 'ICSE204', 1),
(56, 1, 'BSIT', 'ICST203', 1),
(57, 1, 'BSIT', 'ICST351', 1),
(58, 1, 'BSIT', 'THES004', 1);

-- --------------------------------------------------------

--
-- Table structure for table `SP_ARCHIVE`
--

CREATE TABLE `SP_ARCHIVE` (
  `SP_ID` int(10) NOT NULL,
  `SP_Title` text NOT NULL,
  `SP_Rationale` text NOT NULL,
  `SP_File` text NOT NULL,
  `SP_Type` text NOT NULL,
  `Adviser` int(10) NOT NULL,
  `Proponent_A` int(10) NOT NULL,
  `Proponent_B` int(10) NOT NULL,
  `Proponent_C` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SP_ARCHIVE`
--

INSERT INTO `SP_ARCHIVE` (`SP_ID`, `SP_Title`, `SP_Rationale`, `SP_File`, `SP_Type`, `Adviser`, `Proponent_A`, `Proponent_B`, `Proponent_C`) VALUES
(1, 'Abrasion Detection Algorithm for Crops', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', '', 'SENIOR_THESIS', 2, 3, 4, 6),
(2, 'Efficient Algorithm to detect Black Spots in the face', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', '', 'SENIOR_THESIS', 3, 2, 4, 6),
(3, 'Artificial Neural Network Algorithm for City Traffic Management', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', '', 'SENIOR_THESIS', 4, 2, 3, 6),
(4, 'Geographic Hazard Mapping with the aid of Weather Balloons', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', '', 'SENIOR_THESIS', 6, 2, 3, 4),
(5, 'NOCS Network Traffic Monitoring System', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', '', 'CAPSTONE_PROJECT', 2, 3, 4, 5),
(6, 'PPA Equipment Inventory System', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', '', 'CAPSTONE_PROJECT', 3, 4, 2, 6),
(7, 'HONG Point Of Sales System', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', '', 'CAPSTONE_PROJECT', 4, 2, 3, 5),
(8, 'Naga City Road Network Traffic Signalling System', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', '', 'CAPSTONE_PROJECT', 3, 2, 4, 5),
(9, 'Ultraviolet Ray as component for Wireless Remote', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', '', 'CAPSTONE_PROJECT', 6, 2, 3, 4),
(10, 'Information Managament Plan for CamHigh', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', '', 'IS_PLAN', 6, 4, 5, 2),
(11, 'Management Information Systems for Naga City Government', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', '', 'IS_PLAN', 6, 3, 4, 2),
(12, 'C++ Code Coach for Computer Programming Classes', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', '', 'OTHERS', 0, 3, 4, 5),
(13, 'Student Performance Prediction Matrix for General Education Courses', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', '', 'OTHERS', 0, 3, 4, 5),
(14, 'Interdisciplinary Research Benefits for CS and Education Courses', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', '', 'OTHERS', 0, 3, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT`
--

CREATE TABLE `STUDENT` (
  `Account_ID` int(10) NOT NULL,
  `Undergraduate_School` tinyint(1) NOT NULL,
  `Graduate_School` tinyint(1) NOT NULL,
  `Alumni` tinyint(1) NOT NULL,
  `Course_ID` varchar(10) NOT NULL,
  `Prospectus_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `STUDENT`
--

INSERT INTO `STUDENT` (`Account_ID`, `Undergraduate_School`, `Graduate_School`, `Alumni`, `Course_ID`, `Prospectus_ID`) VALUES
(7, 1, 0, 0, 'BSIT', 1),
(8, 1, 0, 0, 'BSIT', 1),
(9, 1, 0, 0, 'BSIT', 1),
(10, 1, 0, 0, 'BSIS', 1),
(11, 1, 0, 0, 'BSCS', 1),
(12, 1, 0, 0, 'BSCS', 1),
(13, 1, 0, 0, 'BSIS', 1),
(14, 1, 0, 0, 'BSIS', 1),
(15, 1, 0, 0, 'BSIT', 1),
(16, 1, 0, 0, 'BSIT', 1),
(17, 1, 0, 0, 'BSIT', 1),
(18, 1, 0, 0, 'BSIT', 1),
(19, 1, 0, 0, 'BSIT', 1),
(20, 1, 0, 0, 'BSIS', 1),
(21, 1, 0, 0, 'BSIT', 1),
(22, 1, 0, 0, 'BSIT', 1),
(23, 1, 0, 0, 'BSIT', 1),
(24, 1, 0, 0, 'BSIT', 1),
(25, 1, 0, 0, 'BSIS', 1),
(26, 1, 0, 0, 'BSIT', 1),
(27, 1, 0, 0, 'BSIT', 1),
(28, 1, 0, 0, 'BSIS', 1),
(29, 1, 0, 0, 'BSIT', 1),
(30, 1, 0, 0, 'BSIT', 1),
(31, 1, 0, 0, 'BSIS', 1),
(32, 1, 0, 0, 'BSIT', 1),
(33, 1, 0, 0, 'BSIT', 1),
(34, 1, 0, 0, 'BSIT', 1),
(35, 1, 0, 0, 'BSIS', 1),
(36, 1, 0, 0, 'BSIT', 1),
(37, 1, 0, 0, 'BSIT', 1),
(38, 1, 0, 0, 'BSIT', 1),
(39, 1, 0, 0, 'BSIT', 1),
(40, 1, 0, 0, 'BSIT', 1),
(41, 1, 0, 0, 'BSIT', 1),
(42, 1, 0, 0, 'BSIT', 1),
(43, 1, 0, 0, 'BSIT', 1),
(44, 1, 0, 0, 'BSIT', 1),
(45, 1, 0, 0, 'BSIS', 1),
(46, 1, 0, 0, 'BSIS', 1),
(47, 1, 0, 0, 'BSIS', 1),
(48, 1, 0, 0, 'BSIT', 1),
(49, 1, 0, 0, 'BSIT', 1),
(50, 1, 0, 0, 'BSIT', 1),
(51, 1, 0, 0, 'BSIT', 1),
(52, 1, 0, 0, 'BSIT', 1),
(53, 1, 0, 0, 'BSIT', 1),
(54, 1, 0, 0, 'BSIT', 1),
(55, 1, 0, 0, 'BSIT', 1),
(56, 1, 0, 0, 'BSIT', 1),
(57, 1, 0, 0, 'BSIT', 1),
(58, 1, 0, 0, 'BSCS', 1),
(59, 1, 0, 0, 'BSCS', 1),
(60, 1, 0, 0, 'BSCS', 1),
(61, 1, 0, 0, 'BSCS', 1),
(62, 1, 0, 0, 'BSCS', 1),
(63, 1, 0, 0, 'BSCS', 1),
(64, 1, 0, 0, 'BSCS', 1),
(65, 1, 0, 0, 'BSCS', 1),
(66, 1, 0, 0, 'BSCS', 1),
(67, 1, 0, 0, 'BSCS', 1),
(68, 1, 0, 0, 'BSCS', 1),
(69, 1, 0, 0, 'BSCS', 1),
(70, 1, 0, 0, 'BSCS', 1),
(71, 1, 0, 0, 'BSCS', 1),
(72, 1, 0, 0, 'BSCS', 1),
(73, 1, 0, 0, 'BSIT', 1),
(74, 1, 0, 0, 'BSIT', 1),
(75, 1, 0, 0, 'BSIT', 1),
(76, 1, 0, 0, 'BSIT', 1),
(77, 1, 0, 0, 'BSIT', 1),
(78, 1, 0, 0, 'BSIT', 1),
(79, 1, 0, 0, 'BSIT', 1),
(80, 1, 0, 0, 'BSIT', 1),
(81, 1, 0, 0, 'BSIT', 1),
(82, 1, 0, 0, 'BSIT', 1),
(83, 1, 0, 0, 'BSIS', 1),
(84, 1, 0, 0, 'BSIS', 1),
(85, 1, 0, 0, 'BSIS', 1),
(86, 1, 0, 0, 'BSIS', 1),
(87, 1, 0, 0, 'BSIS', 1),
(88, 1, 0, 0, 'BSIS', 1),
(89, 1, 0, 0, 'BSIT', 1),
(90, 1, 0, 0, 'BSIT', 1),
(91, 1, 0, 0, 'BSIT', 1),
(92, 1, 0, 0, 'BSIT', 1),
(93, 1, 0, 0, 'BSIT', 1),
(94, 1, 0, 0, 'BSIT', 1),
(95, 1, 0, 0, 'BSCS', 1),
(96, 1, 0, 0, 'BSIT', 1),
(97, 1, 0, 0, 'BSCS', 1),
(98, 1, 0, 0, 'BSIT', 1),
(99, 1, 0, 0, 'BSIT', 1),
(100, 1, 0, 0, 'BSCS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `SUBJECT`
--

CREATE TABLE `SUBJECT` (
  `Subject_ID` varchar(10) NOT NULL,
  `Created_By` int(11) DEFAULT NULL,
  `Subject_Description` text NOT NULL,
  `Subject_Rationale` text NOT NULL,
  `Unit_ID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SUBJECT`
--

INSERT INTO `SUBJECT` (`Subject_ID`, `Created_By`, `Subject_Description`, `Subject_Rationale`, `Unit_ID`) VALUES
('ACCS030', 1, 'Intermediate Accounting', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 5),
('ECOS001', 1, 'Principles of Economics with Taxation and Agrarian Reform', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('ENGS000', 1, 'English Plus', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('ENGS001', 1, 'Study and Thinking Skills', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('ENGS002', 1, 'Writing in the Discipline', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('ENGS003', 1, 'Oral Communication', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('EVSS001', 1, 'Fundamentals of Environmental Sciences', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('FILED001', 1, 'Komunikasyon sa Akademikong Filipino', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('FILED002', 1, 'Pagbasa at Pagsulat Tungo sa Pananaliksik', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('FRSH001', 1, 'SRA Reading Program', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 2),
('FRSH002', 1, 'SRA Reading Program', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 2),
('HISS001', 1, 'Philippine History', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('HISS005', 1, 'Life and works of Rizal', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('HUMS001', 1, 'Art, Man and Society', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('ICFP001', 1, 'NSTP/Formation Program I', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('ICFP002', 1, 'NSTP/Formation Program II', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('ICSE201', 1, 'Information Technology Elective I', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 3),
('ICSE202', 1, 'Information Technology Elective II', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 3),
('ICSE203', 1, 'Information Technology Elective III', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 3),
('ICSE204', 1, 'Information Technology Elective IV', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 3),
('ICSF201', 1, 'Information Technology Free Elective I', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 3),
('ICSF202', 1, 'Information Technology Free Elective II', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 3),
('ICSF203', 1, 'Information Technology Free Elective III        ', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 3),
('ICST101', 1, 'Computing Fundamentals', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('ICST102', 1, 'Computer Programming I', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 3),
('ICST103', 1, 'Computer Programming II', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('ICST104', 1, 'Discrete Structures', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('ICST106', 1, 'Electronics and Computer Organization', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 3),
('ICST107', 1, 'Technopernourship', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('ICST108', 1, 'Professional Ethics', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('ICST201', 1, 'Data Structures', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 3),
('ICST203', 1, 'Fundamentals of Management and Business', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('ICST211', 1, 'Datebase Management Systems 1', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 3),
('ICST212', 1, 'Database Management Systems 2', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 3),
('ICST214', 1, 'Object Oriented Programming', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 3),
('ICST217', 1, 'Applied Statistics', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('ICST221', 1, 'System Analysis and Design', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('ICST222', 1, 'Software Engineering', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 3),
('ICST230', 1, 'Multimedia Systems', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 3),
('ICST231', 1, 'Web Development and Programming', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 3),
('ICST240', 1, 'Operating Systems', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 3),
('ICST241', 1, 'Data Communications and Networking', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 3),
('ICST350', 1, 'Capstone Project 1', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 6),
('ICST351', 1, 'Capstone Project 2        ', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 4),
('ICST500', 1, 'Senior Practicum', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 7),
('LITS000', 1, 'Introduction to Literature', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('MTHS000', 1, 'Basic Algebra', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('MTHS001', 1, 'College Algebra', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('MTHS032', 1, 'Calculus for Business', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('MTHS130', 1, 'Plane Trigonometry', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('NSCS001', 1, 'Physical Sciences', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('PEDS001', 1, 'Physical Fitness', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 4),
('PEDS002', 1, 'Fundamentals of Rhythmic Activities', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 4),
('PEDS003', 1, 'Individual/Dual Sports', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 4),
('PEDS004', 1, 'Team Sports', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 4),
('PHIS001', 1, 'Philosophy of Human Person I', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('PHIS002', 1, 'Philosophy of Human Person I', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('PHIS003', 1, 'Philosophy of Religion', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('PHIS004', 1, 'Moral Philosophy', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('PSCS001', 1, 'Introduction to Politics and Governance with Philippine Constitution', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('PSYS001', 1, 'General Psychology with HIV/Aids Education and Drug Abuse and Prevention', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('SOCS001', 1, 'Society and Culture with Family Planning, Bicol Culture and HIV/AIDS Education	', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('THES001', 1, 'Salvation History', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('THES002', 1, 'Christology', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('THES003', 1, 'Church and Sacraments', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1),
('THES004', 1, 'Fundamentals of Moral Theology', 'Lorem ipsum dolor sit amet, amet malorum tacimates no has, ex usu scaevola indoctum, cibo probo voluptatibus et mei.n vix, utinam audiam mnesarchum nam et.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `TACTICS_MODERATOR`
--

CREATE TABLE `TACTICS_MODERATOR` (
  `Account_ID` int(10) NOT NULL,
  `Effective_Start` date DEFAULT NULL,
  `Effective_End` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TACTICS_MODERATOR`
--

INSERT INTO `TACTICS_MODERATOR` (`Account_ID`, `Effective_Start`, `Effective_End`) VALUES
(5, '2017-03-06', '2019-03-06');

-- --------------------------------------------------------

--
-- Table structure for table `TACTICS_OFFICER`
--

CREATE TABLE `TACTICS_OFFICER` (
  `Account_ID` int(10) NOT NULL,
  `Position` varchar(50) DEFAULT NULL,
  `Effective_Start` date DEFAULT NULL,
  `Effective_End` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TACTICS_OFFICER`
--

INSERT INTO `TACTICS_OFFICER` (`Account_ID`, `Position`, `Effective_Start`, `Effective_End`) VALUES
(9, 'Secretary', '2017-06-03', '2018-06-03');

-- --------------------------------------------------------

--
-- Table structure for table `TAG`
--

CREATE TABLE `TAG` (
  `Tag_ID` int(10) NOT NULL,
  `Tag_Name` varchar(50) NOT NULL,
  `SP_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TAG`
--

INSERT INTO `TAG` (`Tag_ID`, `Tag_Name`, `SP_ID`) VALUES
(1, 'Image Processing', 1),
(2, 'Machine Learning', 1),
(3, 'Agriculture', 1),
(4, 'Image Processing', 2),
(5, 'Machine Learning', 2),
(6, 'Dermatology', 2),
(7, 'Neural Networks', 3),
(8, 'Traffic', 3),
(9, 'Mapping', 3),
(10, 'Safety', 4),
(11, 'Hazard Mapping', 4),
(12, 'Systems', 5),
(13, 'Networking', 5),
(14, 'Database Management', 6),
(15, 'Inventory', 6),
(16, 'Sales POS', 7),
(17, 'Inventory', 7),
(18, 'Traffic', 8),
(19, 'Road Map', 8),
(20, 'Lights', 9),
(21, 'Wireless', 9),
(22, 'Management Systems', 10),
(23, 'Information Systems', 11),
(24, 'Compiler', 12),
(25, 'Education', 12),
(26, 'Student Evaluation', 13),
(27, 'Prediction Matrix', 13),
(28, 'Interdiscipline', 14),
(29, 'Education', 14),
(30, 'Computer Science', 14);

-- --------------------------------------------------------

--
-- Table structure for table `UNIT`
--

CREATE TABLE `UNIT` (
  `Unit_ID` int(5) NOT NULL,
  `Unit_Credited` float(3,2) NOT NULL,
  `Unit_Lecture` float(3,2) NOT NULL,
  `Unit_Laboratory` float(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UNIT`
--

INSERT INTO `UNIT` (`Unit_ID`, `Unit_Credited`, `Unit_Lecture`, `Unit_Laboratory`) VALUES
(1, 3.00, 3.00, 0.00),
(2, 1.50, 1.50, 0.00),
(3, 3.00, 2.00, 1.00),
(4, 2.00, 2.00, 0.00),
(5, 6.00, 6.00, 0.00),
(6, 1.00, 1.00, 0.00),
(7, 9.00, 0.00, 9.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ACCOUNT`
--
ALTER TABLE `ACCOUNT`
  ADD PRIMARY KEY (`Account_ID`);

--
-- Indexes for table `ACCOUNT_SECURITY`
--
ALTER TABLE `ACCOUNT_SECURITY`
  ADD PRIMARY KEY (`Account_ID`);

--
-- Indexes for table `ACTIVITY`
--
ALTER TABLE `ACTIVITY`
  ADD PRIMARY KEY (`Activity_ID`),
  ADD KEY `Approved_By` (`Approved_By`),
  ADD KEY `Created_By` (`Created_By`);

--
-- Indexes for table `A_ANNOUNCEMENT`
--
ALTER TABLE `A_ANNOUNCEMENT`
  ADD PRIMARY KEY (`Announcement_ID`);

--
-- Indexes for table `A_EVENT`
--
ALTER TABLE `A_EVENT`
  ADD PRIMARY KEY (`Event_ID`);

--
-- Indexes for table `A_NEWS`
--
ALTER TABLE `A_NEWS`
  ADD PRIMARY KEY (`News_ID`);

--
-- Indexes for table `CHAIRPERSON`
--
ALTER TABLE `CHAIRPERSON`
  ADD PRIMARY KEY (`Account_ID`);

--
-- Indexes for table `COURSE`
--
ALTER TABLE `COURSE`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `PREREQUISITE`
--
ALTER TABLE `PREREQUISITE`
  ADD PRIMARY KEY (`PreReq_ID`),
  ADD KEY `Subject_ID` (`Subject_ID`),
  ADD KEY `Subject_Prereq_ID` (`Subject_Prereq_ID`);

--
-- Indexes for table `PROGRAM_COORDINATOR`
--
ALTER TABLE `PROGRAM_COORDINATOR`
  ADD PRIMARY KEY (`Account_ID`);

--
-- Indexes for table `PROSPECTUS`
--
ALTER TABLE `PROSPECTUS`
  ADD PRIMARY KEY (`Prospectus_ID`);

--
-- Indexes for table `PROSPECTUS_CONTENT`
--
ALTER TABLE `PROSPECTUS_CONTENT`
  ADD PRIMARY KEY (`Prospectus_Content_ID`),
  ADD KEY `Prospectus_ID` (`Prospectus_ID`),
  ADD KEY `Course_ID` (`Course_ID`),
  ADD KEY `Subject_ID` (`Subject_ID`),
  ADD KEY `Approved_by` (`Approved_by`);

--
-- Indexes for table `SP_ARCHIVE`
--
ALTER TABLE `SP_ARCHIVE`
  ADD PRIMARY KEY (`SP_ID`),
  ADD KEY `Proponent_A` (`Proponent_A`),
  ADD KEY `Proponent_B` (`Proponent_B`),
  ADD KEY `Proponent_C` (`Proponent_C`),
  ADD KEY `Adviser` (`Adviser`);

--
-- Indexes for table `STUDENT`
--
ALTER TABLE `STUDENT`
  ADD PRIMARY KEY (`Account_ID`),
  ADD KEY `Course_ID` (`Course_ID`),
  ADD KEY `Prospectus_ID` (`Prospectus_ID`);

--
-- Indexes for table `SUBJECT`
--
ALTER TABLE `SUBJECT`
  ADD PRIMARY KEY (`Subject_ID`),
  ADD KEY `Unit_ID` (`Unit_ID`),
  ADD KEY `Created_By` (`Created_By`);

--
-- Indexes for table `TACTICS_MODERATOR`
--
ALTER TABLE `TACTICS_MODERATOR`
  ADD PRIMARY KEY (`Account_ID`);

--
-- Indexes for table `TACTICS_OFFICER`
--
ALTER TABLE `TACTICS_OFFICER`
  ADD PRIMARY KEY (`Account_ID`);

--
-- Indexes for table `TAG`
--
ALTER TABLE `TAG`
  ADD PRIMARY KEY (`Tag_ID`),
  ADD KEY `SP_ID` (`SP_ID`);

--
-- Indexes for table `UNIT`
--
ALTER TABLE `UNIT`
  ADD PRIMARY KEY (`Unit_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ACCOUNT`
--
ALTER TABLE `ACCOUNT`
  MODIFY `Account_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `ACCOUNT_SECURITY`
--
ALTER TABLE `ACCOUNT_SECURITY`
  MODIFY `Account_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `ACTIVITY`
--
ALTER TABLE `ACTIVITY`
  MODIFY `Activity_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `PREREQUISITE`
--
ALTER TABLE `PREREQUISITE`
  MODIFY `PreReq_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `PROSPECTUS`
--
ALTER TABLE `PROSPECTUS`
  MODIFY `Prospectus_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `PROSPECTUS_CONTENT`
--
ALTER TABLE `PROSPECTUS_CONTENT`
  MODIFY `Prospectus_Content_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `SP_ARCHIVE`
--
ALTER TABLE `SP_ARCHIVE`
  MODIFY `SP_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `TAG`
--
ALTER TABLE `TAG`
  MODIFY `Tag_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `UNIT`
--
ALTER TABLE `UNIT`
  MODIFY `Unit_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ACCOUNT_SECURITY`
--
ALTER TABLE `ACCOUNT_SECURITY`
  ADD CONSTRAINT `ACCOUNT_SECURITY_ibfk_1` FOREIGN KEY (`Account_ID`) REFERENCES `ACCOUNT` (`Account_ID`);

--
-- Constraints for table `ACTIVITY`
--
ALTER TABLE `ACTIVITY`
  ADD CONSTRAINT `ACTIVITY_ibfk_1` FOREIGN KEY (`Approved_By`) REFERENCES `ACCOUNT` (`Account_ID`),
  ADD CONSTRAINT `ACTIVITY_ibfk_2` FOREIGN KEY (`Created_By`) REFERENCES `ACCOUNT` (`Account_ID`);

--
-- Constraints for table `A_ANNOUNCEMENT`
--
ALTER TABLE `A_ANNOUNCEMENT`
  ADD CONSTRAINT `A_ANNOUNCEMENT_ibfk_1` FOREIGN KEY (`Announcement_ID`) REFERENCES `ACTIVITY` (`Activity_ID`);

--
-- Constraints for table `A_EVENT`
--
ALTER TABLE `A_EVENT`
  ADD CONSTRAINT `A_EVENT_ibfk_1` FOREIGN KEY (`Event_ID`) REFERENCES `ACTIVITY` (`Activity_ID`);

--
-- Constraints for table `A_NEWS`
--
ALTER TABLE `A_NEWS`
  ADD CONSTRAINT `A_NEWS_ibfk_1` FOREIGN KEY (`News_ID`) REFERENCES `ACTIVITY` (`Activity_ID`);

--
-- Constraints for table `CHAIRPERSON`
--
ALTER TABLE `CHAIRPERSON`
  ADD CONSTRAINT `CHAIRPERSON_ibfk_1` FOREIGN KEY (`Account_ID`) REFERENCES `ACCOUNT` (`Account_ID`);

--
-- Constraints for table `PREREQUISITE`
--
ALTER TABLE `PREREQUISITE`
  ADD CONSTRAINT `PREREQUISITE_ibfk_1` FOREIGN KEY (`Subject_ID`) REFERENCES `SUBJECT` (`Subject_ID`),
  ADD CONSTRAINT `PREREQUISITE_ibfk_2` FOREIGN KEY (`Subject_Prereq_ID`) REFERENCES `SUBJECT` (`Subject_ID`);

--
-- Constraints for table `PROGRAM_COORDINATOR`
--
ALTER TABLE `PROGRAM_COORDINATOR`
  ADD CONSTRAINT `PROGRAM_COORDINATOR_ibfk_1` FOREIGN KEY (`Account_ID`) REFERENCES `ACCOUNT` (`Account_ID`);

--
-- Constraints for table `PROSPECTUS_CONTENT`
--
ALTER TABLE `PROSPECTUS_CONTENT`
  ADD CONSTRAINT `PROSPECTUS_CONTENT_ibfk_1` FOREIGN KEY (`Prospectus_ID`) REFERENCES `PROSPECTUS` (`Prospectus_ID`),
  ADD CONSTRAINT `PROSPECTUS_CONTENT_ibfk_2` FOREIGN KEY (`Course_ID`) REFERENCES `COURSE` (`Course_ID`),
  ADD CONSTRAINT `PROSPECTUS_CONTENT_ibfk_3` FOREIGN KEY (`Subject_ID`) REFERENCES `SUBJECT` (`Subject_ID`),
  ADD CONSTRAINT `PROSPECTUS_CONTENT_ibfk_4` FOREIGN KEY (`Approved_by`) REFERENCES `ACCOUNT` (`Account_ID`);

--
-- Constraints for table `SP_ARCHIVE`
--
ALTER TABLE `SP_ARCHIVE`
  ADD CONSTRAINT `SP_ARCHIVE_ibfk_1` FOREIGN KEY (`Proponent_A`) REFERENCES `ACCOUNT` (`Account_ID`),
  ADD CONSTRAINT `SP_ARCHIVE_ibfk_2` FOREIGN KEY (`Proponent_B`) REFERENCES `ACCOUNT` (`Account_ID`),
  ADD CONSTRAINT `SP_ARCHIVE_ibfk_3` FOREIGN KEY (`Proponent_C`) REFERENCES `ACCOUNT` (`Account_ID`),
  ADD CONSTRAINT `SP_ARCHIVE_ibfk_4` FOREIGN KEY (`Adviser`) REFERENCES `ACCOUNT` (`Account_ID`);

--
-- Constraints for table `STUDENT`
--
ALTER TABLE `STUDENT`
  ADD CONSTRAINT `STUDENT_ibfk_1` FOREIGN KEY (`Account_ID`) REFERENCES `ACCOUNT` (`Account_ID`),
  ADD CONSTRAINT `STUDENT_ibfk_2` FOREIGN KEY (`Course_ID`) REFERENCES `COURSE` (`Course_ID`),
  ADD CONSTRAINT `STUDENT_ibfk_3` FOREIGN KEY (`Prospectus_ID`) REFERENCES `PROSPECTUS` (`Prospectus_ID`);

--
-- Constraints for table `SUBJECT`
--
ALTER TABLE `SUBJECT`
  ADD CONSTRAINT `SUBJECT_ibfk_1` FOREIGN KEY (`Unit_ID`) REFERENCES `UNIT` (`Unit_ID`),
  ADD CONSTRAINT `SUBJECT_ibfk_2` FOREIGN KEY (`Created_By`) REFERENCES `ACCOUNT` (`Account_ID`);

--
-- Constraints for table `TACTICS_MODERATOR`
--
ALTER TABLE `TACTICS_MODERATOR`
  ADD CONSTRAINT `TACTICS_MODERATOR_ibfk_1` FOREIGN KEY (`Account_ID`) REFERENCES `ACCOUNT` (`Account_ID`);

--
-- Constraints for table `TACTICS_OFFICER`
--
ALTER TABLE `TACTICS_OFFICER`
  ADD CONSTRAINT `TACTICS_OFFICER_ibfk_1` FOREIGN KEY (`Account_ID`) REFERENCES `ACCOUNT` (`Account_ID`);

--
-- Constraints for table `TAG`
--
ALTER TABLE `TAG`
  ADD CONSTRAINT `TAG_ibfk_1` FOREIGN KEY (`SP_ID`) REFERENCES `SP_ARCHIVE` (`SP_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
