-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2024 at 10:50 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cis`
--

-- --------------------------------------------------------

--
-- Table structure for table `departmenttbl`
--

CREATE TABLE `departmenttbl` (
  `id` int(11) NOT NULL,
  `department` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departmenttbl`
--

INSERT INTO `departmenttbl` (`id`, `department`) VALUES
(1, 'Academic Affairs'),
(2, 'Administration'),
(3, 'Finance '),
(4, 'Human Resources'),
(5, 'Information Technology'),
(8, 'Administration Department');

-- --------------------------------------------------------

--
-- Table structure for table `designationtbl`
--

CREATE TABLE `designationtbl` (
  `id` int(11) NOT NULL,
  `designation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `designationtbl`
--

INSERT INTO `designationtbl` (`id`, `designation`) VALUES
(1, 'Professor'),
(2, 'Lecturer'),
(3, 'Academic Coordinator'),
(4, 'Administrative Director'),
(5, 'Administrative Officer'),
(6, 'Accountant'),
(7, 'IT Manager'),
(8, 'Office Coordinator'),
(9, 'Help Desk Technician'),
(10, 'Help Desk Technician');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(3) NOT NULL,
  `empName` varchar(100) NOT NULL,
  `age` int(14) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` int(15) NOT NULL,
  `department` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `epfNo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `empName`, `age`, `email`, `address`, `phone`, `department`, `designation`, `epfNo`) VALUES
(1, 'Kavindu Silva', 34, 'kavindu.silva@cis.com', '123 Main Street, Colombo 00500, Sri Lanka', 712345678, 'Academic Affairs', 'Professor', 9343),
(2, 'Ananya Rajapaksa', 26, 'ananya.rajapaksa@cis.com', '456 Park Avenue, Kandy 20000', 778901234, 'Finance ', 'Accountant', 5498),
(3, 'Nishanthi Perera', 45, 'nishanthi.perera@cis.com', '789 Lake Road, Galle 3000', 716789012, 'Administration', 'Administrative Director', 8643),
(4, 'Thilini Gunawardena', 45, 'thilini.gunawardena@cis.com', ' 234 Pine Lane, Nuwara Eliya 40', 78345678, 'Human Resources', 'Accountant', 5421),
(5, 'Praveen Fernando', 54, ' praveen.fernando@cis.com', '234 Hillside Lane, Nuwara Eliya', 771234567, 'Information Technology', 'IT Manager', 4321),
(6, 'Tharindu Bandara', 45, 'tharindu.bandara@cis.com', '567 Beach Street, Negombo 10', 789012345, 'Academic Affairs', 'Academic Coordinator', 5432),
(7, 'Ishara Fernando', 32, ' ishara.fernando@cis.com', '789 Palm Lane, Colombo ', 789012345, 'Finance ', 'Accountant', 4321),
(8, 'Dinesh Perera', 45, 'dinesh.perera@cis.com', '456 Oak Street, Kandy', 718345678, 'Administration', 'Administrative Officer', 5432),
(9, 'Priyantha Jayasekara', 34, 'priyantha.jayasekara@cis.com', '234 Pine Lane, Nuwara Eliya 4', 786901234, 'Information Technology', 'IT Manager', 4532),
(10, 'Asanka Rajapakse', 43, 'asanka.rajapakse@cis.com', '567 Sunset Avenue, Negombo 10', 714678901, 'Academic Affairs', 'Lecturer', 4235);

-- --------------------------------------------------------

--
-- Table structure for table `usertbl`
--

CREATE TABLE `usertbl` (
  `id` int(3) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `password` varchar(14) NOT NULL,
  `userLevel` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usertbl`
--

INSERT INTO `usertbl` (`id`, `userName`, `password`, `userLevel`) VALUES
(1, 'admin', '123', '1'),
(2, 'HR', '123', '2'),
(3, 'HR Assistant', '1234', '3'),
(6, 'rasula', '765', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departmenttbl`
--
ALTER TABLE `departmenttbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designationtbl`
--
ALTER TABLE `designationtbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usertbl`
--
ALTER TABLE `usertbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departmenttbl`
--
ALTER TABLE `departmenttbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `designationtbl`
--
ALTER TABLE `designationtbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `usertbl`
--
ALTER TABLE `usertbl`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
