-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2024 at 12:31 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'group6', '$2y$10$fLK8s7ZDnM.1lE7XMP.J6OuPbQ.DPUVKBo7rENnQY7gYq0xAzsKJy', 'group6', 'php', 'facebook-profile-image.jpeg', '2024-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(18, 8, 'Temesgen', 'Teresa', '', ''),
(19, 8, 'Mulatu', 'Mekonen', '', ''),
(20, 8, 'Segni', 'Shiferaw', '', ''),
(21, 9, 'Bereket', 'Hailu', '', ''),
(22, 12, 'Matthews', 'Minasie', '', ''),
(23, 12, 'Raji', 'Kumsa', '', ''),
(24, 9, 'Yobsan', 'Gemechu', '', ''),
(25, 13, 'Yosef', 'shimelis', '', ''),
(26, 13, 'Nardos ', 'Tilaye', '', ''),
(27, 11, 'Galgalo', 'Duba', '', ''),
(28, 11, 'Bosona', 'Gosaye', '', ''),
(29, 14, 'Milkesa', 'Admasu', '', ''),
(30, 14, 'Magist', 'Haile', '', ''),
(31, 10, 'Aweke', 'Damtew', '', ''),
(32, 10, 'Kidusan', 'Teklu', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(8, 'President', 200, 2),
(9, 'vice-presidant', 180, 1),
(10, 'AI-lead', 150, 3),
(11, 'DevOps-lead', 150, 4),
(12, 'Cybersecurity-lead', 150, 5),
(13, 'Graphics-lead', 150, 6),
(14, 'Digital-Marketing-lead', 150, 7);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `photo`) VALUES
(2, 'bQ2IucpdWvLGhCT', '$2y$10$jwYd.7r0y7pmD94uX2wWuOTiHLrFQnfIy73Z/Z9dOeq2KnQLiWa8u', 'Awel', 'Feyo', ''),
(3, 'hJFHCNlItpPcRWo', '$2y$10$iUNYVR.E7I2HCfNnNto.0uXjNvliBU27ri5t/s2l0YWuzKXisMB7m', 'Ana', 'Kufa', ''),
(4, 'EyvCzkinhj8weRQ', '$2y$10$8P7ZgswtwjmG1lYbSNWCyOzYgC2XEaaBs.gg7E.o8iyzF6qFJN3AC', 'Abdisa', 'Abdurahman', ''),
(5, 'zKvVNQ2guBlcbkd', '$2y$10$0sF3Kb64S53Q5Hc4e/FZyuGvbbUOG85.pvMAZnFYuKr7g0K3GdWbO', 'Fati', 'Banki', ''),
(6, 'DeKoAOMs4mhtNcW', '$2y$10$X8NOjv9hhZBXK2fr9nsXBurYX2JR4PbKAqfnROTF/Cuqc1KtqeWQe', 'kamil', 'Mohammed', ''),
(7, 'uALcxnN4SMJrCks', '$2y$10$ETqTsKSsdKrLuvwN3Mf.5.EZ7.HHFTOVHeks2qJ4cbQSZox2otZ92', 'Anwar', 'Shemsu', ''),
(8, 'NiuQARa2Dr894qC', '$2y$10$sdLosY3WQk2QK8h9ktxbY.tR1mEEY7Pze4l5iTlEvPw2S65uq1Bj.', 'Hayat', 'Hasen', ''),
(9, 'gBpGkFSaqRlmt6j', '$2y$10$lxCLvePB11cXr.5zJgznSuAnpDBjTnwwDintn1wPOnfQp/foGO2mK', 'Esayas', 'Etana', ''),
(10, 'Xilwp7WboGCSnv6', '$2y$10$qwxVfF/qAWcuEqemRS7hYeA6yoZCeANPoAkqqvbKD.8XCXhclgxga', 'Hikma', 'Abas', ''),
(11, 'gBx5jGqYZ2uUdws', '$2y$10$aOSxjYBeVkUIHQwlS56gverL4SCw2MQpmUbfVl.dbrydtG78b8fRW', 'Saad', 'Zenu', ''),
(12, 'EQiuaqJIXnbeRGv', '$2y$10$Y7CVeEK3x0t0.Oe7gCCOyuf23p8p3xnp73Psu4btOIyWC61As8x4e', 'Hasen', 'Yasin', ''),
(13, 'BjMV4eTf8WLDpFi', '$2y$10$Eg4qUNxgodjIJIvtKBDi7uo5LZO4Th1aYDVb4FNRDfSXMVp7y2ryW', 'Kaleab', 'Tamrat', ''),
(14, '2vsFzyKLZxgPbEY', '$2y$10$Iao8RaI.N/Gdb.x7.M5L5.980/LVPhEu3aaUvoia4iEuT47RdKdTi', 'Duniya', 'Lema', ''),
(15, 'LCdG7Ikz3UoRg4V', '$2y$10$fB6.bnqCAH3.3FRkcbQGVuEFD7gtZb7DwIFfdzlH.gEumA5zN6rJ.', 'Edaso', 'Guja', ''),
(16, 'GjsmTMFCnSydrzx', '$2y$10$L2BWFuJ1O1qvjxskY3J40uhsCIVzSL1UaJPtZYx5BF0r6/1TG4iBW', 'Eba', 'Megersa', ''),
(17, 'euHtsrlOQ9fqXdE', '$2y$10$5G8ghEEBYx/PFoH8PqEfz.YPsgcp/vzzTVkw/MLIaPpN2OgwBrAp.', 'Duresa', 'Obsa', ''),
(18, 'n3wABTRCNhMmDVL', '$2y$10$RwSM8SjzkwVZviITn2CBgerm7Djb37jhDv7tPMT.zRnG1odLpJyzK', 'Yohannes', 'Mulugeta', ''),
(19, 'DBxbJ4FrzAmOj2y', '$2y$10$AXPHcbvELBvxDBhXBGJMJuoOb/2XC90J05mmc9q4NQC0cml0PuABy', 'Betel', 'Tilahun', ''),
(20, 'bZ9E5Cj6aXDhmTs', '$2y$10$hvHoqqzC/msIUTfD/xjkkufbHXckQP7KbPY7X.r/biBMMLRFVPRry', 'Ajaiba', 'Shigut', ''),
(21, 't7yzxZSWjKIDqHN', '$2y$10$C.iOwLrKvxyxERQFKk/8P.WrGPabsS3fbjuZikkQAMd9oZd0kx1E.', 'Eyob', 'Shitu', '');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voters_id`, `candidate_id`, `position_id`) VALUES
(81, 10, 19, 8),
(82, 10, 21, 9),
(83, 10, 31, 10),
(84, 10, 27, 11),
(85, 10, 22, 12),
(86, 10, 26, 13),
(87, 10, 30, 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
