-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2024 at 07:42 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'zephany001@gmail.com', 'Nm643PpQ', '14-11-2023 12:33:41 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(1, 'ENT', 1, 1, 500, '2022-11-10', '12:45 PM', '2022-11-06 12:21:48', 1, 0, '2022-11-06 12:23:35'),
(2, 'ENT', 1, 2, 500, '2022-11-17', '7:00 PM', '2022-11-06 13:16:18', 1, 1, NULL),
(3, 'Dental Care', 4, 3, 1500, '2023-08-25', '11:30 AM', '2023-08-14 08:16:31', 1, 1, NULL),
(4, 'Pediatrics', 7, 3, 2000, '2023-08-31', '11:30 AM', '2023-08-14 08:17:17', 1, 1, NULL),
(5, 'General Surgery', 5, 5, 2500, '2023-09-19', '10:30 AM', '2023-08-14 08:23:23', 1, 1, NULL),
(6, 'Pathology', 6, 5, 5000, '2023-10-11', '2:30 PM', '2023-08-14 08:24:21', 1, 1, NULL),
(7, 'Obstetrics and Gynecology', 8, 3, 2200, '2023-10-17', '10:30 AM', '2023-08-14 08:27:56', 1, 1, NULL),
(8, 'Dental Care', 4, 6, 1500, '2023-08-25', '11:30 AM', '2023-08-15 13:30:00', 1, 1, NULL),
(9, 'Pathology', 6, 3, 5000, '2023-08-15', '10:15 AM', '2023-08-17 13:05:09', 1, 1, NULL),
(10, 'Dental Care', 10, 8, 1, '2023-08-18', '5:45 PM', '2023-08-17 14:37:41', 1, 0, '2023-11-20 11:34:52'),
(11, 'Dental Care', 10, 8, 1, '2023-08-18', '5:45 PM', '2023-08-17 14:37:57', 1, 1, NULL),
(12, 'Dental Care', 10, 10, 1, '2023-08-19', '6:00 PM', '2023-08-17 14:58:45', 1, 1, NULL),
(13, 'Pathology', 6, 10, 5000, '2023-08-30', '6:00 PM', '2023-08-17 15:10:33', 1, 1, NULL),
(14, 'Pathology', 6, 10, 5000, '2023-08-30', '6:15 PM', '2023-08-17 15:10:45', 1, 1, NULL),
(15, 'Dental Care', 10, 8, 1, '2023-08-25', '7:15 PM', '2023-08-17 16:03:00', 1, 0, '2023-11-20 16:20:52'),
(16, 'Dental Care', 10, 8, 1, '2023-08-18', '6:00 PM', '2023-08-17 16:04:52', 1, 1, NULL),
(17, 'Dermatologists', 0, 11, 0, '2023-11-12', '3:00 PM', '2023-11-14 11:54:00', 1, 1, NULL),
(18, 'Obstetrics and Gynecology', 0, 1, 0, '2023-12-13', '9:45 AM', '2023-12-07 13:29:28', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(10, 'Dental Care', 'ZEPHANIA OUMA', '40100-595 kisumu', '1,000,000', 759547761, 'zephany001@gmail.com', 'f8898fbc39e4e37730af82d234deaab2', '2023-08-17 14:36:17', '2023-11-14 08:58:43'),
(11, 'Neurologists', 'Dr. KULUO JAMES', 'NAROK', '500,000', 705446282, 'kuluo@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2023-11-14 09:01:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(35, 10, 'zephany001@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-17 14:38:02', NULL, 1),
(36, NULL, 'nyanchama@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-14 08:56:59', NULL, 0),
(37, NULL, 'nyanchama@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-14 08:57:02', NULL, 0),
(38, 11, 'kuluo@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-14 09:02:04', '14-11-2023 05:38:48 PM', 1),
(39, 10, 'zephany001@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-20 11:29:51', NULL, 1),
(40, 11, 'kuluo@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-22 10:05:30', NULL, 1),
(41, 10, 'zephany001@gmail.com', 0x3a3a3100000000000000000000000000, '2023-12-07 13:30:28', NULL, 1),
(42, NULL, 'zephany001@gmail.com', 0x3a3a3100000000000000000000000000, '2024-02-06 05:55:21', NULL, 0),
(43, 11, 'kuluo@gmail.com', 0x3a3a3100000000000000000000000000, '2024-02-06 05:55:27', NULL, 1),
(44, 11, 'kuluo@gmail.com', 0x3a3a3100000000000000000000000000, '2024-02-06 18:29:08', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Orthopedics', '2024-02-06 18:09:46', NULL),
(2, 'Internal Medicine', '2024-02-05 18:09:57', NULL),
(3, 'Obstetrics and Gynecology', '2022-10-30 18:10:18', NULL),
(4, 'Dermatology', '2022-10-30 16:10:28', NULL),
(5, 'Pediatrics', '2022-10-30 18:10:37', NULL),
(6, 'Radiology', '2022-10-30 18:10:46', NULL),
(7, 'General Surgery', '2022-10-30 18:10:56', NULL),
(8, 'Ophthalmology', '2022-10-30 18:11:03', NULL),
(9, 'Anesthesia', '2022-10-30 18:11:15', NULL),
(10, 'Pathology', '2022-10-30 18:11:22', NULL),
(11, 'ENT', '2022-10-30 18:11:30', NULL),
(12, 'Dental Care', '2022-10-30 18:11:39', NULL),
(13, 'Dermatologists', '2022-10-30 18:12:02', NULL),
(14, 'Endocrinologists', '2022-10-30 18:12:10', NULL),
(15, 'Neurologists', '2022-10-30 18:12:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `otp_records`
--

CREATE TABLE `otp_records` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `otp` varchar(6) NOT NULL,
  `email` varchar(35) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `otp_records`
--

INSERT INTO `otp_records` (`id`, `username`, `otp`, `email`, `created_at`) VALUES
(1, 'nyanchama@gmail.com', '437068', '', '2023-11-14 08:24:12'),
(2, 'nyanchama@gmail.com', '240897', '', '2023-11-14 08:28:46'),
(3, 'nyanchama@gmail.com', '228515', '', '2023-11-14 11:38:11'),
(4, 'muangeedith@gmail.com', '147300', '', '2023-11-16 09:10:37'),
(5, 'muangeedith@gmail.com', '933257', '', '2023-11-17 12:49:14'),
(6, 'zephany001@gmail.com', '679225', '', '2023-11-20 16:30:14'),
(7, 'zephany001@gmail.com', '207860', '', '2023-11-20 16:30:17'),
(8, 'muangeedith@gmail.com', '181053', '', '2023-11-22 09:43:51'),
(9, 'muangeedith@gmail.com', '103030', '', '2023-11-22 10:10:33'),
(10, 'wilyodyt@gmail.com', '164654', '', '2023-12-07 13:16:02'),
(11, 'consolata@gmail.com', '705608', '', '2024-02-06 05:46:05'),
(12, 'zephany001@gmail.com', '884110', '', '2024-02-06 10:04:12');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(4, 'Zephania Ouma', 'zephany001@gmal.com', 759547761, 'Am in need of an Ambulance, my location is Kiboswa Police post along Kakamega-Kisumu road.', '2024-02-05 17:26:19', 'We have dispatched an ambulance be there in five minutes, hang on tight.', '2024-02-05 17:28:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(1, 1, '80/120', '120', '85', '98', 'Test', '2022-11-06 13:19:41'),
(2, 2, '34', '54', '76', '37', 'paracytamol 2*3\r\nAnustat cream 1*2', '2023-11-14 09:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp(),
  `OpenningTime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(2, 11, 'Morgan Kipkemboi', 37376485, 'morgan@gmail.com', 'male', 'NANDI', 24, 'minor abdomial surgery', '2023-11-14 09:24:25', NULL),
(3, 10, 'Prisca Achieng', 720447477, 'achieng@gmail.com', 'female', 'Nairobi', 17, 'Admitted in January for Malaria flu.', '2023-11-20 11:34:33', NULL),
(4, 11, 'Consolata Adhiambo', 722364058, 'consolata@gmail.com', 'Female', '100-100', 44, 'vertabral surgery', '2024-02-06 05:58:41', '2024-02-06 05:58:59'),
(5, 11, 'Rennish Mboya', 720447477, 'rennish@gmail.com', 'female', '200-200', 34, 'survere malaria', '2024-02-06 06:10:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(32, 8, 'zephany001@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-17 14:33:49', NULL, 1),
(33, 8, 'zephany001@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-17 16:02:41', '17-08-2023 09:35:20 PM', 1),
(34, NULL, 'zephany001@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-13 19:00:13', NULL, 0),
(35, NULL, 'zephany001@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-13 19:00:13', NULL, 0),
(36, NULL, 'zephany001@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-13 19:00:20', NULL, 0),
(37, NULL, 'zephany001@gmail.com', 0x3a3a3100000000000000000000000000, '2024-02-06 05:44:07', NULL, 0),
(38, NULL, 'zephany001@gmail.com', 0x3a3a3100000000000000000000000000, '2024-02-06 05:44:13', NULL, 0),
(39, NULL, 'kuluo@gmail.com', 0x3a3a3100000000000000000000000000, '2024-02-06 05:44:21', NULL, 0),
(40, NULL, 'zephany001@gmail.com', 0x3a3a3100000000000000000000000000, '2024-02-06 05:44:31', NULL, 0),
(41, NULL, 'zephany001@gmail.com', 0x3a3a3100000000000000000000000000, '2024-02-06 05:44:32', NULL, 0),
(42, NULL, 'zephany001@gmail.com', 0x3a3a3100000000000000000000000000, '2024-02-06 05:44:33', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(1, 'Zephania Ouma', '40100-595', 'Kisumu', 'male', 'zephany001@gmail.com', 'f8898fbc39e4e37730af82d234deaab2', '2023-08-17 14:33:32', '2024-02-06 18:34:41'),
(2, 'Cynthia Nyanchama', '40001, 199', 'Kisii', 'female', 'nyanchama@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', '2023-11-14 08:23:51', '2024-02-06 18:34:49'),
(3, 'Edith Muange', 'BOX 1996-90100 Machakos, Kenya', 'MACHAKOS', 'female', 'muangeedith@gmail.com', '3fc0a7acf087f549ac2b266baf94b8b1', '2023-11-16 09:10:17', '2024-02-06 18:34:56'),
(4, 'Wilson Otieno', '40100-001', 'Siaya', 'male', 'wilyodyt@gmail.com', '3fc0a7acf087f549ac2b266baf94b8b1', '2023-12-07 13:15:46', '2024-02-06 18:35:01'),
(5, 'Consolata Adhiambo', '100-100', 'Eldoret', 'female', 'consolata@gmail.com', '3fc0a7acf087f549ac2b266baf94b8b1', '2024-02-06 05:45:50', '2024-02-06 18:35:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_records`
--
ALTER TABLE `otp_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `otp_records`
--
ALTER TABLE `otp_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
