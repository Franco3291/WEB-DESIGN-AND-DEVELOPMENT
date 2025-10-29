-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2024 at 02:05 PM
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
-- Database: `bookshop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_phone` varchar(15) DEFAULT NULL,
  `books` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_name`, `customer_email`, `customer_phone`, `books`, `order_date`, `user_id`) VALUES
(1, 'francis', 'fj@gmail.com', '07324563254', 'dyfgewfwe', '2024-11-12 09:30:01', NULL),
(2, 'Francis', 'fj880458@gmail.com', '0758857120', 'sportlight', '2024-11-12 10:03:38', NULL),
(3, 'Francis', 'fj880458@gmail.com', '0758857120', 'sportlight', '2024-11-12 13:26:06', NULL),
(4, 'Francis', 'fj880458@gmail.com', '0758857120', 'sportlight', '2024-11-12 13:26:18', NULL),
(5, 'Francis', 'fj880458@gmail.com', '0758857120', 'sportlight', '2024-11-12 13:26:24', NULL),
(6, 'Francis', 'fj880458@gmail.com', '0758857120', 'made familiar', '2024-11-12 13:28:30', NULL),
(7, 'Francis', 'fj880458@gmail.com', '0758857120', 'made familiar', '2024-11-12 13:28:49', NULL),
(8, 'grace', 'edv2.10274.23@student.tharaka.ac.ke', '0706307392', 'english aid', '2024-11-12 13:38:28', NULL),
(9, 'Francis', 'fj880458@gmail.com', '0758857120', 'ew', '2024-11-14 09:41:28', NULL),
(10, 'grace', 'edv2.10274.23@student.tharaka.ac.ke', '0706307392', 'english aid', '2024-11-14 11:19:29', NULL),
(11, 'grace', 'edv2.10274.23@student.tharaka.ac.ke', '0706307392', 'sportlight', '2024-11-14 11:27:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `created_at`) VALUES
(1, 'Grace', 'edv2.10274.23@student.tharaka.ac.ke', '$2y$10$4kNONaeje2uP.1uHaWxJu.q.oxmgnH2zyVsT1ddeF09e8tsWkleqW', '2024-11-12 09:27:35'),
(2, 'francis', 'edv2.09813.23@student.tharaka.ac.ke', '$2y$10$ccLf7EvwjYOGpcQT3nfXkOJIg5UBpfA07vMVblketZ.bWGI664dRi', '2024-11-12 09:34:02'),
(3, 'Veronica', 'edv2.1026346.23@student.tharaka.ac.ke', '$2y$10$vAPdDdv002Xws88Pthe1Pujn28Bp143gfZ31ZyYqCAmT.Es.HmYR.', '2024-11-12 10:02:29'),
(4, 'Purity', 'edv2.1024.23@student.tharaka.ac.ke', '$2y$10$NZg5F1pME0pQfQOX9ElK8.ipVBJoOXr8kU/MQMSBdLTpTaY/Fen1a', '2024-11-12 10:19:43'),
(5, 'Eusebia', 'edv2.17654.23@student.tharaka.ac.ke', '$2y$10$htsVRc57mxCF.RySY.chHOCAHZUY8ELD9NWYnzXq1JIJuOaCEP0C2', '2024-11-12 13:36:28'),
(6, 'munene', 'edv2.10271.23@student.tharaka.ac.ke', '$2y$10$LR5gz5gI/zHVkeE3NztGseFvAfty2pxcDzdSY50kd56RdTMlw0K8i', '2024-11-13 10:34:06'),
(7, 'jackline', 'edv2.10275.23@student.tharaka.ac.ke', '$2y$10$pWaBnUSURyusNK4TetfRuO7/991DWU/18sX6FTiKKlN/Uu4.zphLC', '2024-11-13 16:23:09'),
(9, 'brayo', 'hgsdh@gmail.co', '$2y$10$TunZGm9EZQW1Ly3VPBLY6OC/S4GrAmrh7scAWwq.wCv1vj.J4uwce', '2024-11-14 09:45:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
