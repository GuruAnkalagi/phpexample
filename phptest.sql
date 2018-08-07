-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2018 at 12:47 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phptest`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `age` int(3) NOT NULL,
  `location` varchar(50) DEFAULT NULL,
  `logo` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `age`, `location`, `logo`, `date`) VALUES
(1, 'Guru', 'A', 'guru.b@sridama.com', 26, 'Bangalore', 'AboutInsurance.png', '2018-08-07 10:28:24'),
(2, 'Samr', 'A', 'sam@gmail.com', 28, 'Pune', 'bg.jpg', '2018-08-07 10:28:36'),
(3, 'abc', 'xyz', 'guru.b@sridama.com', 26, 'Bangalore', 'life-insurance-comparison.jpg', '2018-08-07 10:28:50'),
(4, 'aaaa', 'sss', 'ssss', 26, 'Bangalore', 'OUr-Services.jpg', '2018-08-07 10:29:02'),
(12, 'fsfsdf', 'dggf', 'sdsd', 22, 'Bangalore', 'personalagent.jpg', '2018-08-07 10:29:16'),
(13, 'ggfh', 'ghgh', 'gh', 0, 'Bangalore', 'GlobeOnly.png', '2018-08-07 10:29:24'),
(14, 'cgg', 'gg', 'fff', 26, 'Pune', 'AboutInsurance.png', '2018-08-07 10:29:31'),
(28, 'bbbb', 'bb', 'b', 0, 'Bangalore', 'personalagent.jpg', '2018-08-07 10:29:18'),
(30, 'test ', 'user', 'ggg', 24, 'Bangalore', 'GlobeOnly.png', '2018-08-07 10:19:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`,`email`,`age`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
