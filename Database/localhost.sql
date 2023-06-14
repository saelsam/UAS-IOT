-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 14, 2023 at 03:30 AM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id20835178_datalogging`
--
CREATE DATABASE IF NOT EXISTS `id20835178_datalogging` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id20835178_datalogging`;

-- --------------------------------------------------------

--
-- Table structure for table `datasensorbathroom`
--

CREATE TABLE `datasensorbathroom` (
  `id` int(11) NOT NULL,
  `topic` text NOT NULL,
  `payload` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `datasensorbathroom`
--

INSERT INTO `datasensorbathroom` (`id`, `topic`, `payload`, `time`) VALUES
(1, 'mrnyahya/bathroom/suhu', '24', '2023-06-06 02:17:41'),
(2, 'mrnyahya/bathroom/kelembapan', '40', '2023-06-06 02:17:41'),
(3, 'mrnyahya/bathroom/suhu', '24', '2023-06-06 02:18:08'),
(4, 'mrnyahya/bathroom/kelembapan', '40', '2023-06-06 02:18:09'),
(5, 'mrnyahya/bathroom/suhu', '24', '2023-06-06 02:18:14'),
(6, 'mrnyahya/bathroom/kelembapan', '40', '2023-06-06 02:18:14'),
(7, 'mrnyahya/bathroom/led', '1', '2023-06-09 05:23:55'),
(8, 'mrnyahya/bathroom/led', '0', '2023-06-09 05:23:55'),
(9, 'mrnyahya/bathroom/led', '1', '2023-06-09 05:36:18'),
(10, 'mrnyahya/bathroom/led', '0', '2023-06-09 05:36:18');

-- --------------------------------------------------------

--
-- Table structure for table `datasensorbedroom`
--

CREATE TABLE `datasensorbedroom` (
  `id` int(11) NOT NULL,
  `topic` text NOT NULL,
  `payload` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `datasensorbedroom`
--

INSERT INTO `datasensorbedroom` (`id`, `topic`, `payload`, `time`) VALUES
(375, 'mrnyahya/bedroom/led', '1', '2023-06-05 04:32:34'),
(376, 'mrnyahya/bedroom/led', '0', '2023-06-05 04:32:35'),
(385, 'mrnyahya/bedroom/suhu', '24', '2023-06-06 02:08:58'),
(386, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-06 02:08:58'),
(387, 'mrnyahya/bedroom/suhu', '24', '2023-06-06 02:09:01'),
(388, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-06 02:09:01'),
(389, 'mrnyahya/bedroom/suhu', '24', '2023-06-06 02:09:05'),
(390, 'mrnyahya/bedroom/suhu', '24', '2023-06-06 02:09:33'),
(391, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-06 02:09:33'),
(392, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:38:34'),
(393, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:38:34'),
(394, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:38:38'),
(395, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:38:45'),
(396, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:39:28'),
(397, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:39:29'),
(398, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:39:32'),
(399, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:40:28'),
(400, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:40:29'),
(401, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:40:33'),
(402, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:40:38'),
(403, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:40:38'),
(404, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:42:29'),
(405, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:42:29'),
(406, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:42:32'),
(407, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:42:32'),
(408, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:42:32'),
(409, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:42:33'),
(410, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:42:36'),
(411, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:42:37'),
(412, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:42:37'),
(413, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:42:37'),
(414, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:42:41'),
(415, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:42:41'),
(416, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:42:42'),
(417, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:42:43'),
(418, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:42:45'),
(419, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:42:46'),
(420, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:42:46'),
(421, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:42:47'),
(422, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:42:52'),
(423, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:42:54'),
(424, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:42:58'),
(425, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:42:59'),
(426, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:43:02'),
(427, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:43:03'),
(428, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:43:06'),
(429, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:43:07'),
(430, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:43:10'),
(431, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:43:10'),
(432, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:43:14'),
(433, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:43:14'),
(434, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:43:18'),
(435, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:43:18'),
(436, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:43:21'),
(437, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:43:22'),
(438, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:43:25'),
(439, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:43:26'),
(440, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:43:29'),
(441, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:43:30'),
(442, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:43:33'),
(443, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:43:33'),
(444, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:43:38'),
(445, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:43:53'),
(446, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:43:54'),
(447, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:43:58'),
(448, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:43:58'),
(449, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:44:01'),
(450, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:44:02'),
(451, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:44:05'),
(452, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:44:05'),
(453, 'mrnyahya/bedroom/suhu', '12', '2023-06-07 12:44:12'),
(454, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:44:17'),
(455, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:44:18'),
(456, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:44:21'),
(457, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:44:22'),
(458, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:44:27'),
(459, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:44:35'),
(460, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:44:35'),
(461, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:44:39'),
(462, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:44:50'),
(463, 'mrnyahya/bedroom/led', '1', '2023-06-07 12:45:37'),
(464, 'mrnyahya/bedroom/led', '0', '2023-06-07 12:45:38'),
(465, 'mrnyahya/bedroom/led', '1', '2023-06-07 12:46:15'),
(466, 'mrnyahya/bedroom/led', '0', '2023-06-07 12:46:15'),
(467, 'mrnyahya/bedroom/led', '1', '2023-06-07 12:46:15'),
(468, 'mrnyahya/bedroom/led', '0', '2023-06-07 12:46:16'),
(469, 'mrnyahya/bedroom/led', '1', '2023-06-07 12:46:16'),
(470, 'mrnyahya/bedroom/led', '0', '2023-06-07 12:46:16'),
(471, 'mrnyahya/bedroom/led', '1', '2023-06-07 12:46:17'),
(472, 'mrnyahya/bedroom/led', '0', '2023-06-07 12:46:18'),
(473, 'mrnyahya/bedroom/led', '1', '2023-06-07 12:46:19'),
(474, 'mrnyahya/bedroom/led', '0', '2023-06-07 12:46:20'),
(475, 'mrnyahya/bedroom/led', '1', '2023-06-07 12:46:21'),
(476, 'mrnyahya/bedroom/led', '0', '2023-06-07 12:46:23'),
(477, 'mrnyahya/bedroom/led', '1', '2023-06-07 12:46:25'),
(478, 'mrnyahya/bedroom/led', '0', '2023-06-07 12:46:25'),
(479, 'mrnyahya/bedroom/led', '1', '2023-06-07 12:46:32'),
(480, 'mrnyahya/bedroom/led', '0', '2023-06-07 12:46:32'),
(481, 'mrnyahya/bedroom/led', '1', '2023-06-07 12:46:37'),
(482, 'mrnyahya/bedroom/led', '0', '2023-06-07 12:46:59'),
(483, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:47:00'),
(484, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:47:01'),
(485, 'mrnyahya/bedroom/led', '1', '2023-06-07 12:47:02'),
(486, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:47:04'),
(487, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:47:05'),
(488, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:47:08'),
(489, 'mrnyahya/bedroom/led', '0', '2023-06-07 12:47:09'),
(490, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:47:09'),
(491, 'mrnyahya/bedroom/led', '1', '2023-06-07 12:47:12'),
(492, 'mrnyahya/bedroom/suhu', '24', '2023-06-07 12:47:13'),
(493, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-07 12:47:13'),
(494, 'mrnyahya/bedroom/led', '0', '2023-06-07 12:47:18'),
(495, 'mrnyahya/bedroom/led', '1', '2023-06-07 12:47:23'),
(496, '', '', '2023-06-07 13:02:50'),
(497, 'mrnyahya/bedroom/led', '1', '2023-06-09 05:23:41'),
(498, 'mrnyahya/bedroom/led', '0', '2023-06-09 05:23:42'),
(499, 'mrnyahya/bedroom/led', '1', '2023-06-09 05:23:45'),
(500, 'mrnyahya/bedroom/led', '0', '2023-06-09 05:23:46'),
(501, 'mrnyahya/bedroom/led', '1', '2023-06-09 05:24:09'),
(502, 'mrnyahya/bedroom/led', '0', '2023-06-09 05:24:09'),
(503, 'mrnyahya/bedroom/led', '1', '2023-06-09 05:24:35'),
(504, 'mrnyahya/bedroom/led', '0', '2023-06-09 05:24:59'),
(505, 'mrnyahya/bedroom/suhu', '24', '2023-06-09 05:25:25'),
(506, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-09 05:25:25'),
(507, 'mrnyahya/bedroom/suhu', '24', '2023-06-09 05:25:29'),
(508, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-09 05:25:29'),
(509, 'mrnyahya/bedroom/suhu', '24', '2023-06-09 05:25:33'),
(510, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-09 05:25:33'),
(511, 'mrnyahya/bedroom/led', '1', '2023-06-09 05:25:50'),
(512, 'mrnyahya/bedroom/led', '0', '2023-06-09 05:25:50'),
(513, 'mrnyahya/bedroom/suhu', '24', '2023-06-09 05:25:56'),
(514, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-09 05:25:56'),
(515, 'mrnyahya/bedroom/suhu', '24', '2023-06-09 05:26:18'),
(516, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-09 05:26:18'),
(517, 'mrnyahya/bedroom/led', '1', '2023-06-09 05:30:45'),
(518, 'mrnyahya/bedroom/led', '0', '2023-06-09 05:30:46'),
(519, 'mrnyahya/bedroom/led', '1', '2023-06-09 05:36:14'),
(520, 'mrnyahya/bedroom/led', '0', '2023-06-09 05:36:14'),
(521, 'mrnyahya/bedroom/led', '1', '2023-06-09 06:08:18'),
(522, 'mrnyahya/bedroom/led', '0', '2023-06-09 06:08:18'),
(523, 'mrnyahya/bedroom/suhu', '24', '2023-06-09 06:08:38'),
(524, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-09 06:08:38'),
(525, 'mrnyahya/bedroom/led', '1', '2023-06-09 06:08:41'),
(526, 'mrnyahya/bedroom/suhu', '24', '2023-06-09 06:08:42'),
(527, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-09 06:08:42'),
(528, 'mrnyahya/bedroom/led', '0', '2023-06-09 06:08:45'),
(529, 'mrnyahya/bedroom/suhu', '24', '2023-06-09 06:08:46'),
(530, 'mrnyahya/bedroom/kelembapan', '40', '2023-06-09 06:08:46');

-- --------------------------------------------------------

--
-- Table structure for table `datasensorkitchen`
--

CREATE TABLE `datasensorkitchen` (
  `id` int(11) NOT NULL,
  `topic` text NOT NULL,
  `payload` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `datasensorkitchen`
--

INSERT INTO `datasensorkitchen` (`id`, `topic`, `payload`, `time`) VALUES
(5, 'mrnyahya/kitchen/suhu', '24', '2023-06-06 02:22:02'),
(6, 'mrnyahya/kitchen/kelembapan', '40', '2023-06-06 02:22:03'),
(7, 'mrnyahya/kitchen/suhu', '24', '2023-06-06 02:22:31'),
(8, 'mrnyahya/kitchen/kelembapan', '40', '2023-06-06 02:22:32'),
(9, 'mrnyahya/kitchen/suhu', '24', '2023-06-06 02:22:39'),
(10, 'mrnyahya/kitchen/kelembapan', '40', '2023-06-06 02:22:39'),
(11, 'mrnyahya/kitchen/led', '1', '2023-06-09 05:24:04'),
(12, 'mrnyahya/kitchen/led', '0', '2023-06-09 05:24:04'),
(13, 'mrnyahya/kitchen/led', '1', '2023-06-09 05:36:20'),
(14, 'mrnyahya/kitchen/led', '0', '2023-06-09 05:36:20');

-- --------------------------------------------------------

--
-- Table structure for table `datasensorLR`
--

CREATE TABLE `datasensorLR` (
  `id` int(11) NOT NULL,
  `topic` text NOT NULL,
  `payload` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `datasensorLR`
--

INSERT INTO `datasensorLR` (`id`, `topic`, `payload`, `time`) VALUES
(152, 'mrnyahya/livingroom/led', '1', '2023-06-05 03:45:39'),
(153, 'mrnyahya/livingroom/led', '0', '2023-06-05 03:45:39'),
(154, 'mrnyahya/livingroom/led', '1', '2023-06-05 03:45:39'),
(155, 'mrnyahya/livingroom/led', '0', '2023-06-05 03:45:39'),
(156, 'mrnyahya/livingroom/led', '1', '2023-06-05 03:45:39'),
(159, 'mrnyahya/livingroom/suhu', '24', '2023-06-06 02:04:36'),
(160, 'mrnyahya/livingroom/kelembapan', '40', '2023-06-06 02:04:36'),
(161, 'mrnyahya/livingroom/suhu', '24', '2023-06-06 02:04:42'),
(162, 'mrnyahya/livingroom/kelembapan', '40', '2023-06-06 02:04:43'),
(163, 'mrnyahya/livingroom/suhu', '24', '2023-06-06 02:05:33'),
(164, 'mrnyahya/livingroom/kelembapan', '40', '2023-06-06 02:05:34'),
(165, 'mrnyahya/livingroom/suhu', '24', '2023-06-06 02:05:37'),
(166, 'mrnyahya/livingroom/kelembapan', '40', '2023-06-06 02:05:37'),
(167, 'mrnyahya/livingroom/led', '1', '2023-06-09 05:23:52'),
(168, 'mrnyahya/livingroom/led', '0', '2023-06-09 05:23:52'),
(169, 'mrnyahya/livingroom/led', '1', '2023-06-09 05:24:13'),
(170, 'mrnyahya/livingroom/led', '0', '2023-06-09 05:24:13'),
(171, 'mrnyahya/livingroom/led', '1', '2023-06-09 05:36:16'),
(172, 'mrnyahya/livingroom/led', '0', '2023-06-09 05:36:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datasensorbathroom`
--
ALTER TABLE `datasensorbathroom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datasensorbedroom`
--
ALTER TABLE `datasensorbedroom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datasensorkitchen`
--
ALTER TABLE `datasensorkitchen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datasensorLR`
--
ALTER TABLE `datasensorLR`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datasensorbathroom`
--
ALTER TABLE `datasensorbathroom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `datasensorbedroom`
--
ALTER TABLE `datasensorbedroom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=531;

--
-- AUTO_INCREMENT for table `datasensorkitchen`
--
ALTER TABLE `datasensorkitchen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `datasensorLR`
--
ALTER TABLE `datasensorLR`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
