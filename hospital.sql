-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 22, 2021 at 08:59 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patientid` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contactNumber` varchar(10) NOT NULL,
  `age` varchar(3) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bloodGroup` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `majorDisease` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientid`, `name`, `contactNumber`, `age`, `gender`, `bloodGroup`, `address`, `majorDisease`) VALUES
('1', 'omar', 'cvv', 'vvv', 'Female', 'fff', 'ddd', 'dd'),
('3', 'ahmed', 'cvv', 'vvv', 'Female', 'fff', 'ddd', 'dd'),
('6', 'ahmed', 'cvv', 'vvv', 'Female', 'fff', 'ddd', 'dd'),
('66', 'ahmed', '012345', '20', 'Male', 'o', 'menouf', 'no'),
('7', 'ahmed', 'cvv', 'vvv', 'Female', 'fff', 'ddd', 'dd'),
('8', 'ahmed eldeeb', '0123455', '22', 'Male', 'o', 'menouf', 'no'),
('88', 'hhh', 'kk', 'i', 'Male', 'ii', 'ii', 'i'),
('9', 'kkk', '999', '77', 'Male', 'm', 'oo', 'm');

-- --------------------------------------------------------

--
-- Table structure for table `patientreport`
--

CREATE TABLE `patientreport` (
  `patientId` varchar(10) NOT NULL,
  `symptom` varchar(200) NOT NULL,
  `diagnostic` varchar(200) NOT NULL,
  `medicine` varchar(200) NOT NULL,
  `wardRequired` varchar(5) NOT NULL,
  `typeWard` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patientreport`
--

INSERT INTO `patientreport` (`patientId`, `symptom`, `diagnostic`, `medicine`, `wardRequired`, `typeWard`) VALUES
('1', 'ee', 'gj', 'oo', 'YES', 'Single'),
('3', 'dd', 'bb', 'gg', 'YES', 'Single'),
('66', 'headache', 'coldfree', 'coldfree', 'YES', 'Single'),
('7', 'ccc', 'cold free', 'cold free', 'No', ''),
('8', 'cold', 'coldfree', 'coldfree', 'YES', 'Single');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patientid`);

--
-- Indexes for table `patientreport`
--
ALTER TABLE `patientreport`
  ADD PRIMARY KEY (`patientId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
