-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2019 at 06:00 PM
-- Server version: 5.6.37
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `groupb`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NOT NULL,
  `CourseNo` text NOT NULL,
  `Sect` int(11) NOT NULL,
  `Days` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `CourseNo`, `Sect`, `Days`) VALUES
(1, 'CSC210', 6854, 3),
(2, 'CSC211', 6855, 3),
(3, 'CSC215', 6856, 3),
(4, 'CIS100', 6857, 2),
(5, 'CIS100', 6858, 2),
(6, 'CIS100', 6859, 2),
(7, 'CIS100', 6860, 2),
(8, 'CIS100', 6861, 2),
(9, 'CIS100', 6862, 2),
(10, 'CIS100', 6863, 2),
(11, 'CIS100', 6864, 2),
(12, 'CIS100', 6865, 2),
(13, 'CIS100', 6866, 2),
(14, 'CIS100', 6867, 2),
(15, 'CIS165', 6868, 2),
(16, 'CIS165', 6869, 2),
(17, 'CIS165', 6870, 2),
(18, 'CIS165', 6871, 2),
(19, 'CIS200', 6872, 2),
(20, 'CIS200', 6873, 2),
(21, 'CIS200', 6874, 2),
(22, 'CIS200', 6875, 2),
(23, 'CIS200', 6876, 2),
(24, 'CIS200', 6877, 2),
(25, 'CIS200', 6878, 2),
(26, 'CIS207', 6879, 2),
(27, 'CIS255', 6880, 2),
(28, 'CIS255', 6881, 2),
(29, 'CIS345', 6882, 2),
(30, 'CIS345', 6883, 2),
(31, 'CIS345', 6884, 2),
(32, 'CIS385', 6885, 2),
(33, 'CIS385', 6886, 2),
(34, 'CIS395', 6887, 2),
(35, 'CIS395', 6888, 2),
(36, 'CIS395', 6889, 2),
(37, 'CIS440', 6890, 2),
(38, 'CIS445', 6891, 2),
(39, 'CIS445', 6892, 2),
(40, 'CIS455', 6893, 2),
(41, 'CIS485', 6894, 2),
(42, 'CIS485', 6895, 2),
(43, 'CIS495', 6896, 2),
(44, 'CIS495', 6897, 2),
(45, 'CSC101', 6898, 2),
(46, 'CSC101', 6899, 2),
(47, 'CSC101', 6900, 2),
(48, 'CSC101', 6901, 2),
(49, 'CSC101', 6902, 2),
(50, 'CSC101', 6903, 2),
(51, 'CSC101', 6904, 2),
(52, 'CSC101', 6905, 2),
(53, 'CSC101', 6906, 2),
(54, 'CSC110', 6907, 2),
(55, 'CSC110', 6908, 2),
(56, 'CSC110', 6909, 2),
(57, 'CSC110', 6910, 2),
(58, 'CSC111', 6911, 2),
(59, 'CSC111', 6912, 2),
(60, 'CSC111', 6913, 2),
(61, 'CSC111', 6914, 2),
(62, 'CSC111', 6915, 2),
(63, 'CSC210', 6916, 2),
(64, 'CSC210', 6917, 2),
(65, 'CSC211', 6918, 2),
(66, 'CSC211', 6919, 2),
(67, 'CSC211', 6920, 2),
(68, 'CSC211', 6921, 2),
(69, 'CSC211', 6922, 2),
(70, 'CSC215', 6923, 2),
(71, 'CSC215', 6924, 2),
(72, 'CSC215', 6925, 2),
(73, 'CSC231', 6926, 2),
(74, 'CSC331', 6927, 2),
(75, 'CSC331', 6928, 2),
(76, 'CSC331', 6929, 2),
(77, 'CSC350', 6930, 2),
(78, 'CSC350', 6931, 2),
(79, 'CSC350', 6932, 2),
(80, 'CSC410', 6933, 2),
(81, 'CSC430', 6934, 2),
(82, 'CSC211', 6935, 2),
(83, 'CSC331', 6936, 2),
(84, 'GIS101', 6937, 2),
(85, 'GIS101', 6938, 2),
(86, 'GIS201', 6939, 2),
(87, 'CIS100', 6940, 1),
(88, 'CIS100', 6941, 1),
(89, 'CIS100', 6942, 1),
(90, 'CIS100', 6943, 1),
(91, 'CIS100', 6944, 1),
(92, 'CIS100', 6945, 1),
(93, 'CIS100', 6946, 1),
(94, 'CIS100', 6947, 1),
(95, 'CIS100', 6948, 1),
(96, 'CIS100', 6949, 1),
(97, 'CIS100', 6950, 1),
(98, 'CIS100', 6951, 1),
(99, 'CIS100', 6952, 1),
(100, 'CIS100', 6953, 1),
(101, 'CIS115', 6954, 1),
(102, 'CIS200', 6955, 1),
(103, 'CIS200', 6956, 1),
(104, 'CIS345', 6957, 1),
(105, 'CIS364', 6958, 1),
(106, 'CIS440', 6959, 1),
(107, 'CIS440', 6960, 1),
(108, 'CIS440', 6961, 1),
(109, 'CIS445', 6962, 1),
(110, 'CIS455', 6963, 1),
(111, 'CIS455', 6964, 1),
(112, 'CSC101', 6965, 1),
(113, 'CSC101', 6966, 1),
(114, 'CSC101', 6967, 1),
(115, 'CSC101', 6968, 1),
(116, 'CSC101', 6969, 1),
(117, 'CSC101', 6970, 1),
(118, 'CSC101', 6971, 1),
(119, 'CSC101', 6972, 1),
(120, 'CSC110', 6973, 1),
(121, 'CSC110', 6974, 1),
(122, 'CSC111', 6975, 1),
(123, 'CSC230', 6976, 1),
(124, 'CSC231', 6977, 1),
(125, 'CSC231', 6978, 1),
(126, 'CSC231', 6979, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hours`
--

CREATE TABLE IF NOT EXISTS `hours` (
  `id` int(11) NOT NULL,
  `CourseNo` text NOT NULL,
  `Hours` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hours`
--

INSERT INTO `hours` (`id`, `CourseNo`, `Hours`) VALUES
(1, 'CIS100', 4),
(2, 'CIS115', 4),
(3, 'CIS165', 4),
(4, 'CIS200', 4),
(5, 'CIS207', 6),
(6, 'CIS255', 6),
(7, 'CIS345', 5),
(8, 'CIS364', 4),
(9, 'CIS385', 4),
(10, 'CIS395', 5),
(11, 'CIS440', 4),
(12, 'CIS445', 5),
(13, 'CIS455', 5),
(14, 'CIS485', 5),
(15, 'CIS495', 5),
(16, 'CSC101', 4),
(17, 'CSC110', 5),
(18, 'CSC210', 5),
(19, 'CSC211', 5),
(20, 'CSC215', 4),
(21, 'CSC230', 6),
(22, 'CSC231', 4),
(23, 'CSC331', 4),
(24, 'CSC350', 5),
(25, 'CSC410', 4),
(26, 'CSC430', 4),
(27, 'GIS101', 4),
(28, 'GIS201', 6);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE IF NOT EXISTS `rooms` (
  `id` int(11) NOT NULL,
  `RoomNo` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `RoomNo`) VALUES
(1, 'F904'),
(2, 'F905'),
(3, 'F906'),
(4, 'F907'),
(5, 'F908'),
(6, 'F1113'),
(7, 'F1201'),
(8, 'F1203'),
(9, 'F1204'),
(10, 'M1209');

-- --------------------------------------------------------

--
-- Table structure for table `routine`
--

CREATE TABLE IF NOT EXISTS `routine` (
  `id` int(11) NOT NULL,
  `CourseNo` text NOT NULL,
  `WeekDay` varchar(10) NOT NULL,
  `StartTime` int(11) NOT NULL,
  `EndTime` int(11) NOT NULL,
  `Section` varchar(10) NOT NULL,
  `Room` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routine`
--

INSERT INTO `routine` (`id`, `CourseNo`, `WeekDay`, `StartTime`, `EndTime`, `Section`, `Room`) VALUES
(1, 'CSC210', 'Monday', 8, 10, '6854', 'F904'),
(2, 'CSC210', 'Tuesday', 8, 10, '6854', 'F904'),
(3, 'CSC210', 'Monday', 8, 9, '6854', 'F905'),
(4, 'CSC211', 'Monday', 8, 10, '6855', 'F906'),
(5, 'CSC211', 'Tuesday', 8, 10, '6855', 'F905'),
(6, 'CSC211', 'Monday', 8, 9, '6855', 'F907'),
(7, 'CSC215', 'Monday', 8, 10, '6856', 'F908'),
(8, 'CSC215', 'Tuesday', 8, 10, '6856', 'F906'),
(9, 'CSC215', 'Monday', 8, 9, '6856', 'F1113'),
(10, 'CIS100', 'Monday', 8, 10, '6857', 'F1201'),
(11, 'CIS100', 'Tuesday', 8, 10, '6857', 'F907'),
(12, 'CIS100', 'Monday', 8, 10, '6858', 'F1203'),
(13, 'CIS100', 'Tuesday', 8, 10, '6858', 'F908'),
(14, 'CIS100', 'Monday', 8, 10, '6859', 'F1204'),
(15, 'CIS100', 'Tuesday', 8, 10, '6859', 'F1113'),
(16, 'CIS100', 'Monday', 8, 10, '6860', 'M1209'),
(17, 'CIS100', 'Tuesday', 8, 10, '6860', 'F1201'),
(18, 'CIS100', 'Tuesday', 8, 10, '6861', 'F1203'),
(19, 'CIS100', 'Wednesday', 8, 10, '6861', 'F904'),
(20, 'CIS100', 'Tuesday', 8, 10, '6862', 'F1204'),
(21, 'CIS100', 'Wednesday', 8, 10, '6862', 'F905'),
(22, 'CIS100', 'Tuesday', 8, 10, '6863', 'M1209'),
(23, 'CIS100', 'Wednesday', 8, 10, '6863', 'F906'),
(24, 'CIS100', 'Wednesday', 8, 10, '6864', 'F907'),
(25, 'CIS100', 'Thursday', 8, 10, '6864', 'F904'),
(26, 'CIS100', 'Wednesday', 8, 10, '6865', 'F908'),
(27, 'CIS100', 'Thursday', 8, 10, '6865', 'F905'),
(28, 'CIS100', 'Wednesday', 8, 10, '6866', 'F1113'),
(29, 'CIS100', 'Thursday', 8, 10, '6866', 'F906'),
(30, 'CIS100', 'Wednesday', 8, 10, '6867', 'F1201'),
(31, 'CIS100', 'Thursday', 8, 10, '6867', 'F907'),
(32, 'CIS165', 'Wednesday', 8, 10, '6868', 'F1203'),
(33, 'CIS165', 'Thursday', 8, 10, '6868', 'F908'),
(34, 'CIS165', 'Wednesday', 8, 10, '6869', 'F1204'),
(35, 'CIS165', 'Thursday', 8, 10, '6869', 'F1113'),
(36, 'CIS165', 'Wednesday', 8, 10, '6870', 'M1209'),
(37, 'CIS165', 'Thursday', 8, 10, '6870', 'F1201'),
(38, 'CIS165', 'Thursday', 8, 10, '6871', 'F1203'),
(39, 'CIS165', 'Friday', 8, 10, '6871', 'F904'),
(40, 'CIS200', 'Thursday', 8, 10, '6872', 'F1204'),
(41, 'CIS200', 'Friday', 8, 10, '6872', 'F905'),
(42, 'CIS200', 'Thursday', 8, 10, '6873', 'M1209'),
(43, 'CIS200', 'Friday', 8, 10, '6873', 'F906'),
(44, 'CIS200', 'Friday', 8, 10, '6874', 'F907'),
(45, 'CIS200', 'Monday', 9, 11, '6874', 'F905'),
(46, 'CIS200', 'Friday', 8, 10, '6875', 'F908'),
(47, 'CIS200', 'Monday', 9, 11, '6875', 'F907'),
(48, 'CIS200', 'Friday', 8, 10, '6876', 'F1113'),
(49, 'CIS200', 'Monday', 9, 11, '6876', 'F1113'),
(50, 'CIS200', 'Friday', 8, 10, '6877', 'F1201'),
(51, 'CIS200', 'Monday', 10, 12, '6877', 'F904'),
(52, 'CIS200', 'Friday', 8, 10, '6878', 'F1203'),
(53, 'CIS200', 'Monday', 10, 12, '6878', 'F906'),
(54, 'CIS207', 'Friday', 8, 11, '6879', 'F1204'),
(55, 'CIS207', 'Monday', 10, 13, '6879', 'F908'),
(56, 'CIS255', 'Friday', 8, 11, '6880', 'M1209'),
(57, 'CIS255', 'Monday', 10, 13, '6880', 'F1201'),
(58, 'CIS255', 'Monday', 10, 13, '6881', 'F1203'),
(59, 'CIS255', 'Tuesday', 10, 13, '6881', 'F904'),
(60, 'CIS345', 'Monday', 10, 13, '6882', 'F1204'),
(61, 'CIS345', 'Tuesday', 10, 12, '6882', 'F905'),
(62, 'CIS345', 'Monday', 10, 13, '6883', 'M1209'),
(63, 'CIS345', 'Tuesday', 10, 12, '6883', 'F906'),
(64, 'CIS345', 'Tuesday', 10, 13, '6884', 'F907'),
(65, 'CIS345', 'Wednesday', 10, 12, '6884', 'F904'),
(66, 'CIS385', 'Tuesday', 10, 12, '6885', 'F908'),
(67, 'CIS385', 'Wednesday', 10, 12, '6885', 'F905'),
(68, 'CIS385', 'Tuesday', 10, 12, '6886', 'F1113'),
(69, 'CIS385', 'Wednesday', 10, 12, '6886', 'F906'),
(70, 'CIS395', 'Tuesday', 10, 13, '6887', 'F1201'),
(71, 'CIS395', 'Wednesday', 10, 12, '6887', 'F907'),
(72, 'CIS395', 'Tuesday', 10, 13, '6888', 'F1203'),
(73, 'CIS395', 'Wednesday', 10, 12, '6888', 'F908'),
(74, 'CIS395', 'Tuesday', 10, 13, '6889', 'F1204'),
(75, 'CIS395', 'Wednesday', 10, 12, '6889', 'F1113'),
(76, 'CIS440', 'Tuesday', 10, 12, '6890', 'M1209'),
(77, 'CIS440', 'Wednesday', 10, 12, '6890', 'F1201'),
(78, 'CIS445', 'Wednesday', 10, 13, '6891', 'F1203'),
(79, 'CIS445', 'Thursday', 10, 12, '6891', 'F904'),
(80, 'CIS445', 'Wednesday', 10, 13, '6892', 'F1204'),
(81, 'CIS445', 'Thursday', 10, 12, '6892', 'F905'),
(82, 'CIS455', 'Wednesday', 10, 13, '6893', 'M1209'),
(83, 'CIS455', 'Thursday', 10, 12, '6893', 'F906'),
(84, 'CIS485', 'Thursday', 10, 13, '6894', 'F907'),
(85, 'CIS485', 'Friday', 10, 12, '6894', 'F904'),
(86, 'CIS485', 'Thursday', 10, 13, '6895', 'F908'),
(87, 'CIS485', 'Friday', 10, 12, '6895', 'F905'),
(88, 'CIS495', 'Thursday', 10, 13, '6896', 'F1113'),
(89, 'CIS495', 'Friday', 10, 12, '6896', 'F906'),
(90, 'CIS495', 'Thursday', 10, 13, '6897', 'F1201'),
(91, 'CIS495', 'Friday', 10, 12, '6897', 'F907'),
(92, 'CSC101', 'Thursday', 10, 12, '6898', 'F1203'),
(93, 'CSC101', 'Friday', 10, 12, '6898', 'F908'),
(94, 'CSC101', 'Thursday', 10, 12, '6899', 'F1204'),
(95, 'CSC101', 'Friday', 10, 12, '6899', 'F1113'),
(96, 'CSC101', 'Thursday', 10, 12, '6900', 'M1209'),
(97, 'CSC101', 'Friday', 10, 12, '6900', 'F1201'),
(98, 'CSC101', 'Friday', 10, 12, '6901', 'F1203'),
(99, 'CSC101', 'Monday', 11, 13, '6901', 'F905'),
(100, 'CSC101', 'Monday', 11, 13, '6902', 'F907'),
(101, 'CSC101', 'Friday', 11, 13, '6902', 'F1204'),
(102, 'CSC101', 'Monday', 11, 13, '6903', 'F1113'),
(103, 'CSC101', 'Friday', 11, 13, '6903', 'M1209'),
(104, 'CSC101', 'Monday', 12, 14, '6904', 'F904'),
(105, 'CSC101', 'Tuesday', 12, 14, '6904', 'F905'),
(106, 'CSC101', 'Monday', 12, 14, '6905', 'F906'),
(107, 'CSC101', 'Tuesday', 12, 14, '6905', 'F906'),
(108, 'CSC101', 'Tuesday', 12, 14, '6906', 'F908'),
(109, 'CSC101', 'Wednesday', 12, 14, '6906', 'F904'),
(110, 'CSC110', 'Tuesday', 12, 15, '6907', 'F1113'),
(111, 'CSC110', 'Wednesday', 12, 14, '6907', 'F905'),
(112, 'CSC110', 'Tuesday', 12, 15, '6908', 'M1209'),
(113, 'CSC110', 'Wednesday', 12, 14, '6908', 'F906'),
(114, 'CSC110', 'Thursday', 12, 15, '6909', 'F904'),
(115, 'CSC110', 'Wednesday', 12, 14, '6909', 'F907'),
(116, 'CSC110', 'Thursday', 12, 15, '6910', 'F905'),
(117, 'CSC110', 'Wednesday', 12, 14, '6910', 'F908'),
(118, 'CSC111', 'Wednesday', 12, 13, '6911', 'F1113'),
(119, 'CSC111', 'Thursday', 12, 13, '6911', 'F906'),
(120, 'CSC111', 'Wednesday', 12, 13, '6912', 'F1201'),
(121, 'CSC111', 'Thursday', 12, 13, '6912', 'F1203'),
(122, 'CSC111', 'Thursday', 12, 13, '6913', 'F1204'),
(123, 'CSC111', 'Friday', 12, 13, '6913', 'F904'),
(124, 'CSC111', 'Thursday', 12, 13, '6914', 'M1209'),
(125, 'CSC111', 'Friday', 12, 13, '6914', 'F905'),
(126, 'CSC111', 'Friday', 12, 13, '6915', 'F906'),
(127, 'CSC111', 'Monday', 13, 14, '6915', 'F905'),
(128, 'CSC210', 'Friday', 12, 15, '6916', 'F907'),
(129, 'CSC210', 'Monday', 13, 15, '6916', 'F907'),
(130, 'CSC210', 'Friday', 12, 15, '6917', 'F908'),
(131, 'CSC210', 'Monday', 13, 15, '6917', 'F908'),
(132, 'CSC211', 'Friday', 12, 15, '6918', 'F1113'),
(133, 'CSC211', 'Monday', 13, 15, '6918', 'F1113'),
(134, 'CSC211', 'Friday', 12, 15, '6919', 'F1201'),
(135, 'CSC211', 'Monday', 13, 15, '6919', 'F1201'),
(136, 'CSC211', 'Friday', 12, 15, '6920', 'F1203'),
(137, 'CSC211', 'Monday', 13, 15, '6920', 'F1203'),
(138, 'CSC211', 'Monday', 13, 16, '6921', 'F1204'),
(139, 'CSC211', 'Tuesday', 13, 15, '6921', 'F904'),
(140, 'CSC211', 'Monday', 13, 16, '6922', 'M1209'),
(141, 'CSC211', 'Tuesday', 13, 15, '6922', 'F907'),
(142, 'CSC215', 'Tuesday', 13, 15, '6923', 'F1201'),
(143, 'CSC215', 'Thursday', 13, 15, '6923', 'F906'),
(144, 'CSC215', 'Tuesday', 13, 15, '6924', 'F1203'),
(145, 'CSC215', 'Thursday', 13, 15, '6924', 'F907'),
(146, 'CSC215', 'Tuesday', 13, 15, '6925', 'F1204'),
(147, 'CSC215', 'Thursday', 13, 15, '6925', 'F908'),
(148, 'CSC231', 'Thursday', 13, 15, '6926', 'F1113'),
(149, 'CSC231', 'Friday', 13, 15, '6926', 'F904'),
(150, 'CSC331', 'Thursday', 13, 15, '6927', 'F1201'),
(151, 'CSC331', 'Friday', 13, 15, '6927', 'F905'),
(152, 'CSC331', 'Thursday', 13, 15, '6928', 'F1203'),
(153, 'CSC331', 'Friday', 13, 15, '6928', 'F906'),
(154, 'CSC331', 'Thursday', 13, 15, '6929', 'F1204'),
(155, 'CSC331', 'Friday', 13, 15, '6929', 'F1204'),
(156, 'CSC350', 'Thursday', 13, 16, '6930', 'M1209'),
(157, 'CSC350', 'Friday', 13, 15, '6930', 'M1209'),
(158, 'CSC350', 'Monday', 14, 17, '6931', 'F904'),
(159, 'CSC350', 'Tuesday', 14, 16, '6931', 'F905'),
(160, 'CSC350', 'Monday', 14, 17, '6932', 'F905'),
(161, 'CSC350', 'Tuesday', 14, 16, '6932', 'F906'),
(162, 'CSC410', 'Monday', 14, 16, '6933', 'F906'),
(163, 'CSC410', 'Tuesday', 14, 16, '6933', 'F908'),
(164, 'CSC430', 'Monday', 15, 17, '6934', 'F907'),
(165, 'CSC430', 'Tuesday', 15, 17, '6934', 'F904'),
(166, 'CSC211', 'Monday', 15, 18, '6935', 'F908'),
(167, 'CSC211', 'Tuesday', 15, 17, '6935', 'F907'),
(168, 'CSC331', 'Monday', 15, 17, '6936', 'F1113'),
(169, 'CSC331', 'Tuesday', 15, 17, '6936', 'F1113'),
(170, 'GIS101', 'Monday', 15, 17, '6937', 'F1201'),
(171, 'GIS101', 'Tuesday', 15, 17, '6937', 'F1201'),
(172, 'GIS101', 'Monday', 15, 17, '6938', 'F1203'),
(173, 'GIS101', 'Tuesday', 15, 17, '6938', 'F1203'),
(174, 'GIS201', 'Tuesday', 15, 18, '6939', 'F1204'),
(175, 'GIS201', 'Thursday', 15, 18, '6939', 'F904'),
(176, 'CIS100', 'Tuesday', 15, 19, '6940', 'M1209'),
(177, 'CIS100', 'Thursday', 15, 19, '6941', 'F905'),
(178, 'CIS100', 'Thursday', 15, 19, '6942', 'F906'),
(179, 'CIS100', 'Thursday', 15, 19, '6943', 'F907'),
(180, 'CIS100', 'Thursday', 15, 19, '6944', 'F908'),
(181, 'CIS100', 'Thursday', 15, 19, '6945', 'F1113'),
(182, 'CIS100', 'Thursday', 15, 19, '6946', 'F1201'),
(183, 'CIS100', 'Thursday', 15, 19, '6947', 'F1203'),
(184, 'CIS100', 'Thursday', 15, 19, '6948', 'F1204'),
(185, 'CIS100', 'Friday', 15, 19, '6949', 'F904'),
(186, 'CIS100', 'Friday', 15, 19, '6950', 'F905'),
(187, 'CIS100', 'Friday', 15, 19, '6951', 'F906'),
(188, 'CIS100', 'Friday', 15, 19, '6952', 'F907'),
(189, 'CIS100', 'Friday', 15, 19, '6953', 'F908'),
(190, 'CIS115', 'Friday', 15, 19, '6954', 'F1113'),
(191, 'CIS200', 'Friday', 15, 19, '6955', 'F1201'),
(192, 'CIS200', 'Friday', 15, 19, '6956', 'F1203'),
(193, 'CIS345', 'Friday', 15, 20, '6957', 'F1204'),
(194, 'CIS364', 'Friday', 15, 19, '6958', 'M1209'),
(195, 'CIS440', 'Monday', 16, 20, '6959', 'F906'),
(196, 'CIS440', 'Monday', 16, 20, '6960', 'F1204'),
(197, 'CIS440', 'Monday', 16, 20, '6961', 'M1209'),
(198, 'CIS445', 'Tuesday', 16, 21, '6962', 'F905'),
(199, 'CIS455', 'Tuesday', 16, 21, '6963', 'F906'),
(200, 'CIS455', 'Tuesday', 16, 21, '6964', 'F908'),
(201, 'CSC101', 'Wednesday', 16, 20, '6965', 'F904'),
(202, 'CSC101', 'Wednesday', 16, 20, '6966', 'F905'),
(203, 'CSC101', 'Wednesday', 16, 20, '6967', 'F906'),
(204, 'CSC101', 'Wednesday', 16, 20, '6968', 'F907'),
(205, 'CSC101', 'Wednesday', 16, 20, '6969', 'F908'),
(206, 'CSC101', 'Wednesday', 16, 20, '6970', 'F1113'),
(207, 'CSC101', 'Wednesday', 16, 20, '6971', 'F1201'),
(208, 'CSC101', 'Wednesday', 16, 20, '6972', 'F1203'),
(209, 'CSC110', 'Wednesday', 16, 21, '6973', 'F1204'),
(210, 'CSC110', 'Wednesday', 16, 21, '6974', 'M1209'),
(211, 'CSC111', 'Wednesday', 13, 14, '6975', 'F1113'),
(212, 'CSC230', 'Thursday', 16, 22, '6976', 'M1209'),
(213, 'CSC231', 'Monday', 17, 21, '6977', 'F904'),
(214, 'CSC231', 'Monday', 17, 21, '6978', 'F905'),
(215, 'CSC231', 'Monday', 17, 21, '6979', 'F907');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hours`
--
ALTER TABLE `hours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routine`
--
ALTER TABLE `routine`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `hours`
--
ALTER TABLE `hours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `routine`
--
ALTER TABLE `routine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=216;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
