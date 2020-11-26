-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 23, 2020 at 02:51 AM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Minicooper_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_info`
--

CREATE TABLE `tbl_info` (
  `id` int(11) NOT NULL,
  `Car name` varchar(80) NOT NULL,
  `img` varchar(80) NOT NULL,
  `Price` varchar(70) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_info`
--

INSERT INTO `tbl_info` (`id`, `Car name`, `img`, `Price`, `Description`) VALUES
(1, 'Mini-cooper ', 'model-2014.jpg', '$24,000', 'Yes, the Mini Cooper is a good subcompact car. It comes in three body styles – the two- and four-door Mini Hardtop and the Mini Convertible – and it\'s fun to drive thanks to its punchy engines and adept handling.'),
(2, 'clubman', 'clubman.jpg', '$26,000', 'Like the Mini Countryman SUV and Mini Hardtop and Convertible, the Mini Clubman is highly customizable. First, you\'ll want to choose an engine and drivetrain. The Mini Clubman Cooper S has front-wheel drive and a turbo-four engine.'),
(3, 'Convertible', 'convertible.jpg', '$21,000', 'The newest MINI Convertible improves on its predecessor with the latest performance engineering, a more spacious, high-end interior, and – as always – unlimited headroom.'),
(4, 'Countryman', 'countryman.jpg', '$20,000', 'The base Countryman has a 1.5-liter turbocharged three-cylinder TwinPower engine that makes 134 horsepower and 162 pound-feet of torque. The Cooper Countryman S E plug-in hybrid pairs that same engine with an electric motor for a rating of 221 horsepower and 284 pound-feet of torque.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_info`
--
ALTER TABLE `tbl_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_info`
--
ALTER TABLE `tbl_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
