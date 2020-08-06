-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2020 at 11:34 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test123`
--

-- --------------------------------------------------------

--
-- Table structure for table `schoolstudents`
--

CREATE TABLE `schoolstudents` (
  `name` varchar(255) NOT NULL,
  `fathername` varchar(255) NOT NULL,
  `rollno` int(6) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schoolstudents`
--

INSERT INTO `schoolstudents` (`name`, `fathername`, `rollno`, `degree`, `branch`) VALUES
('Ashwin', 'Baskaran', 7, 'BE', 'Mech'),
('Krishna Premi', 'Venkatesan', 8, 'BE', 'cse'),
('Rajesh', 'Thennarasu', 9, 'BE', 'Civil'),
('Mathavan', 'Raj', 10, 'Msc', 'Cse'),
('Vijendiran', 'Dharmaraj', 12, 'BE', 'cse'),
('Dinesh', 'Subramanian', 14, 'BE', 'Civil'),
('Gunal', 'Ramanujam', 18, 'BE', 'ECE'),
('Tamilvanan', 'karuppaiya', 19, 'Bsc', 'cse');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `schoolstudents`
--
ALTER TABLE `schoolstudents`
  ADD PRIMARY KEY (`rollno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
