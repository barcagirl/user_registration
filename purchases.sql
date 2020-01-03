-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2020 at 02:42 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `purchases`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration_table`
--

CREATE TABLE `registration_table` (
  `Email` varchar(20) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone` decimal(10,0) NOT NULL,
  `Gender` varchar(11) NOT NULL,
  `Qualification` varchar(20) NOT NULL,
  `photo` varchar(11) NOT NULL,
  `district` varchar(11) NOT NULL,
  `Username` varchar(11) NOT NULL,
  `Password` varchar(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `login_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration_table`
--

INSERT INTO `registration_table` (`Email`, `Address`, `Phone`, `Gender`, `Qualification`, `photo`, `district`, `Username`, `Password`, `name`, `login_id`) VALUES
('admin@gmail.com', 'asihufa', '8765434299', 'male', 'sslc,plus t', 'log.txt', 'kozikode', 'hello', 'admin', 'hemantp', 1),
('aashi@gmail.com', 'asdhifuad', '8366537836', 'female', 'sslc', 'log.txt', 'kannur', 'qouwgfoyg', 'whasdfuag', 'aashi', 2),
('blogranayepranayichv', 'ngfytf\r\nvgvgv', '43434', 'female', 'sslc', 'arcaaa.png', 'wayanad', 'kavya leo', 'sdfdc', 'vich', 3),
('blogranayepranayichv', 'efrf', '43434', 'male', 'sslc', 'gbv.png', 'kozikode', 'kavya leo', '567789', '12334', 4),
('', '', '0', '', 'sslc', 'bk.png', 'wayanad', '', '', '', 26),
('', '', '0', '', '', '', 'wayanad', '', '', '', 27),
('', '', '0', '', '', '', 'wayanad', '', '', '', 28),
('', '', '0', '', '', '', 'wayanad', '', '', '', 29),
('blogranayepranayichv', 'eddc', '9876543210', 'male', 'sslc', '', 'wayanad', 'ef', 'frf', '', 30),
('', '', '0', '', '', '', 'wayanad', '', '', '', 31),
('', '', '0', '', '', '', 'wayanad', '', '', '', 32),
('', '', '0', '', '', '', 'wayanad', '', '', '', 33),
('', '', '0', '', '', '', 'wayanad', '', '', '12334', 34),
('blogranayepranayichv', 'eddc', '9876543210', 'male', 'sslc', '', 'wayanad', 'ef', '', '', 35),
('blogranayepranayichv', 'xdxdxdx', '123432234', 'male', 'sslc', 'gbv.png', 'wayanad', 'kavya leo', '123', '', 36),
('', '', '0', '', '', '', 'wayanad', '', '', '', 37),
('', '', '0', '', '', '', 'wayanad', '', '', '', 38),
('', '', '0', '', '', '', 'wayanad', '', '', '', 39),
('blogranayepranayichv', '', '0', '', '', '', 'wayanad', '', '', 'vich', 40),
('blogranayepranayichv', 'bh', '9876543210', '', 'sslc,plus two,degree', 'gbv.png', 'wayanad', 'kavya leo', '6trf', 'vich', 41),
('blogranayepranayichv', 'bh', '9876543210', '', 'sslc,plus two,degree', 'gbv.png', 'wayanad', 'kavya leo', '6trf', 'vich', 42),
('blogranayepranayichv', 'JYUJF', '9876543210', 'male', 'sslc,plus two,degree', 'gbv.png', 'wayanad', 'kavya leo', 'DRTD', 'vich', 43),
('', '', '0', '', '', '', 'wayanad', '', '', '', 44),
('', '', '0', '', '', '', 'wayanad', '', '', '', 45),
('', '', '0', '', '', '', 'wayanad', '', '', '', 46),
('', '', '0', '', '', '', 'wayanad', '', '', '', 47),
('', '', '0', '', '', '', 'wayanad', '', '', '', 48),
('', '', '0', '', '', '', 'wayanad', '', '', '', 49),
('', '', '0', '', '', '', 'wayanad', '', '', '', 50),
('', '', '0', '', '', '', 'wayanad', '', '', '', 51),
('blogranayepranayichv', '', '0', '', '', '', 'wayanad', '', '', '', 52),
('', '', '0', '', '', '', 'wayanad', '', '', '', 53),
('', '', '0', '', '', '', 'wayanad', '', '', '', 54),
('', '', '0', '', '', '', 'wayanad', '', '', '', 55),
('', '', '0', '', '', '', 'wayanad', '', '', '', 56),
('', '', '0', '', '', '', 'wayanad', '', '', '', 57),
('', '', '0', '', '', '', 'wayanad', '', '', '', 58),
('', '', '0', '', '', '', 'wayanad', '', '', '', 59),
('', '', '0', '', '', '', 'wayanad', '', '', '', 60),
('', '', '0', '', '', '', 'wayanad', '', '', '', 61),
('', '', '0', '', '', '', 'wayanad', '', '', '', 62),
('', '', '0', '', '', '', 'wayanad', '', '', 'gg', 63),
('', '', '0', '', '', '', 'wayanad', '', '', '', 64),
('', '', '0', '', '', '', 'wayanad', '', '', '', 65),
('', '', '0', '', '', '', 'wayanad', '', '', 'vich', 66),
('', '', '0', '', '', '', 'wayanad', '', '', 'vich', 67),
('', '', '0', '', '', '', 'wayanad', '', '', '', 68),
('', '', '0', '', '', '', 'wayanad', '', '', '', 69),
('', ' MKK', '0', '', '', '', 'wayanad', '', '', '', 70),
('', '', '0', '', '', '', 'wayanad', '', '', 'vich', 71),
('', '', '0', '', '', '', 'wayanad', '', '', 'vich', 72),
('', '', '0', '', '', '', 'wayanad', '', '', 'vich', 73),
('', '', '0', '', '', '', 'wayanad', '', '', 'vich', 74),
('', '', '0', '', '', '', 'wayanad', '', '', 'vich', 75),
('', '', '0', '', '', '', 'wayanad', '', '', 'vich', 76),
('', '', '0', '', '', '', 'wayanad', '', '', 'vich', 77),
('', '', '0', '', '', '', 'wayanad', '', '', '', 78),
('', '', '0', '', '', '', 'wayanad', '', '', '', 79),
('', '', '0', '', '', '', 'wayanad', '', '', 'vich', 80),
('', '', '0', '', '', '', 'wayanad', '', '', '', 81),
('', '', '0', '', '', '', 'wayanad', '', '', '', 82),
('', '', '0', '', '', '', 'wayanad', '', '', 'r', 83),
('', '', '0', '', '', '', 'wayanad', '', '', 'r', 84),
('', '', '0', '', '', '', 'wayanad', '', '', '', 85),
('', '', '0', '', '', '', 'wayanad', '', '', '', 86);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration_table`
--
ALTER TABLE `registration_table`
  ADD PRIMARY KEY (`login_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration_table`
--
ALTER TABLE `registration_table`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
