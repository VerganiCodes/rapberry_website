-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Lug 14, 2022 alle 17:57
-- Versione del server: 10.4.24-MariaDB
-- Versione PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iot_database`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `actions`
--

CREATE TABLE `actions` (
  `code` int(11) NOT NULL,
  `email` text NOT NULL,
  `action` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `actions`
--

INSERT INTO `actions` (`code`, `email`, `action`, `datetime`) VALUES
(1, 'verganimarco02@gmail.com', 'Registered', '2022-06-14 13:22:29'),
(2, 'verganimarco02@gmail.com', 'login', '2022-06-14 13:22:36'),
(3, 'verganimarco02@gmail.com', 'login', '2022-06-14 13:24:57'),
(4, 'aldobaglio@gmail.com', 'Registered', '2022-06-14 13:35:42'),
(5, 'aldobaglio@gmail.com', 'login', '2022-06-14 13:35:44'),
(6, 'aldobaglio@gmail.com', 'logout', '2022-06-14 13:36:36'),
(7, 'verganimarco02@gmail.com', 'login', '2022-06-14 13:40:13'),
(8, 'verganimarco02@gmail.com', 'login', '2022-06-14 13:41:31'),
(9, 'verganimarco02@gmail.com', 'logout', '2022-06-14 13:41:40'),
(10, 'verganimarco02@gmail.com', 'logout', '2022-06-14 13:41:42'),
(11, 'verganimarco02@gmail.com', 'logout', '2022-06-14 13:41:44'),
(12, 'verganimarco02@gmail.com', 'logout', '2022-06-14 13:41:46'),
(13, 'verganimarco02@gmail.com', 'logout', '2022-06-14 13:41:48'),
(14, 'verganimarco02@gmail.com', 'logout', '2022-06-14 13:41:50'),
(15, 'verganimarco02@gmail.com', 'logout', '2022-06-14 13:41:52'),
(16, 'verganimarco02@gmail.com', 'logout', '2022-06-14 13:41:54'),
(17, 'verganimarco02@gmail.com', 'logout', '2022-06-14 13:41:56'),
(18, 'verganimarco02@gmail.com', 'logout', '2022-06-14 13:41:58'),
(19, 'verganimarco02@gmail.com', 'logout', '2022-06-14 13:42:22'),
(20, 'verganimarco02@gmail.com', 'login', '2022-06-14 14:40:56'),
(21, 'verganimarco02@gmail.com', 'query', '2022-06-14 14:41:03'),
(22, 'verganimarco02@gmail.com', 'query', '2022-06-14 14:43:03'),
(23, 'verganimarco02@gmail.com', 'query', '2022-06-14 14:44:03'),
(24, 'verganimarco02@gmail.com', 'query', '2022-06-14 14:44:35'),
(25, 'verganimarco02@gmail.com', 'query', '2022-06-14 14:44:50'),
(26, 'verganimarco02@gmail.com', 'query', '2022-06-14 14:46:01'),
(27, 'verganimarco02@gmail.com', 'query', '2022-06-14 14:46:16'),
(28, 'verganimarco02@gmail.com', 'login', '2022-06-14 14:46:29'),
(29, 'verganimarco02@gmail.com', 'login', '2022-06-14 14:47:36'),
(30, 'verganimarco02@gmail.com', 'login', '2022-06-14 14:47:54'),
(31, 'verganimarco02@gmail.com', 'login', '2022-06-14 14:48:40'),
(32, 'verganimarco02@gmail.com', 'login', '2022-06-14 14:55:39'),
(33, 'verganimarco02@gmail.com', 'login', '2022-06-14 14:56:39'),
(34, 'verganimarco02@gmail.com', 'login', '2022-06-14 14:56:51'),
(35, 'verganimarco02@gmail.com', 'login', '2022-06-14 14:58:00'),
(36, 'verganimarco02@gmail.com', 'login', '2022-06-14 14:58:13'),
(37, 'verganimarco02@gmail.com', 'login', '2022-06-14 14:59:48'),
(38, 'verganimarco02@gmail.com', 'login', '2022-06-14 15:00:14'),
(39, 'verganimarco02@gmail.com', 'login', '2022-06-14 15:01:03'),
(40, 'verganimarco02@gmail.com', 'login', '2022-06-14 15:01:38'),
(41, 'verganimarco02@gmail.com', 'login', '2022-06-14 15:02:50'),
(42, 'verganimarco02@gmail.com', 'login', '2022-06-14 15:03:16'),
(43, 'verganimarco02@gmail.com', 'login', '2022-06-14 15:04:01'),
(44, 'verganimarco02@gmail.com', 'login', '2022-06-14 15:04:22'),
(45, 'verganimarco02@gmail.com', 'login', '2022-06-14 15:05:42'),
(46, 'verganimarco02@gmail.com', 'login', '2022-06-14 15:06:42'),
(47, 'aldobaglio@gmail.com', 'arwue', '2022-06-14 15:08:19'),
(48, 'aldobaglio@gmail.com', 'login', '2022-06-14 15:08:23'),
(49, 'aldobaglio@gmail.com', 'logout', '2022-06-14 15:08:35'),
(50, 'verganimarco02@gmail.com', 'login', '2022-06-14 15:08:43'),
(51, 'verganimarco02@gmail.com', 'login', '2022-06-14 15:10:01'),
(52, 'verganimarco02@gmail.com', 'login', '2022-06-14 15:10:23'),
(53, 'verganimarco02@gmail.com', 'login', '2022-06-14 15:13:08'),
(54, 'verganimarco02@gmail.com', 'login', '2022-06-14 15:13:29'),
(55, 'verganimarco02@gmail.com', 'query', '2022-06-14 15:13:47'),
(56, 'verganimarco02@gmail.com', 'query', '2022-06-14 15:14:03'),
(57, 'verganimarco02@gmail.com', 'ciao', '2022-06-14 15:14:11'),
(58, 'verganimarco02@gmail.com', 'logout', '2022-06-15 08:00:26'),
(59, 'verganimarco02@gmail.com', 'logout', '2022-06-15 08:02:33'),
(60, 'verganimarco02@gmail.com', 'login', '2022-06-15 08:02:37'),
(61, 'verganimarco02@gmail.com', 'logout', '2022-06-15 08:02:41'),
(62, 'verganimarco02@gmail.com', 'logout', '2022-06-15 08:05:25'),
(63, 'verganimarco02@gmail.com', 'logout', '2022-06-15 08:08:30'),
(64, 'PieroAngela@gmail.com', 'attemptedLogin', '2022-06-15 08:08:37'),
(65, 'dftyuik@fwafw.it', 'attemptedLogin', '2022-06-15 08:08:45'),
(66, 'kjuytrsadtyuioiu@gmail.com', 'Registered', '2022-06-15 08:09:00'),
(67, 'kjuytrsadtyuioiu@gmail.com', 'login', '2022-06-15 08:09:02'),
(68, 'kjuytrsadtyuioiu@gmail.com', 'login', '2022-06-15 08:10:33'),
(69, 'kjuytrsadtyuioiu@gmail.com', 'login', '2022-06-15 08:21:15'),
(70, 'kjuytrsadtyuioiu@gmail.com', 'login', '2022-06-15 08:21:17'),
(71, 'kjuytrsadtyuioiu@gmail.com', 'logout', '2022-06-15 08:21:25'),
(72, 'kjuytrsadtyuioiu@gmail.com', 'logout', '2022-06-15 08:21:29'),
(73, 'kjuytrsadtyuioiu@gmail.com', 'logout', '2022-06-15 08:21:34'),
(74, 'kjuytrsadtyuioiu@gmail.com', 'logout', '2022-06-15 08:21:39'),
(75, 'kjuytrsadtyuioiu@gmail.com', 'logout', '2022-06-15 08:21:43'),
(76, 'kjuytrsadtyuioiu@gmail.com', 'logout', '2022-06-15 08:21:46'),
(77, 'kjuytrsadtyuioiu@gmail.com', 'logout', '2022-06-15 08:39:15'),
(78, 'kjuytrsadtyuioiu@gmail.com', 'logout', '2022-06-15 08:39:20'),
(79, 'verganimarco02@gmail.com', 'login', '2022-06-15 08:39:27'),
(80, 'verganimarco02@gmail.com', 'login', '2022-06-15 08:39:30'),
(81, 'verganimarco02@gmail.com', 'logout', '2022-06-15 08:40:17'),
(82, 'kjuytrsadtyuioiu@gmail.com', 'login', '2022-06-15 08:40:24'),
(83, 'verganimarco02@gmail.com', 'login', '2022-06-15 08:41:09'),
(84, 'verganimarco02@gmail.com', 'logout', '2022-06-15 08:41:13'),
(85, 'verganimarco02@gmail.com', 'logout', '2022-06-15 08:43:14'),
(86, 'verganimarco02@gmail.com', 'login', '2022-06-15 08:43:20'),
(87, 'verganimarco02@gmail.com', 'login', '2022-06-15 08:43:21'),
(88, 'verganimarco02@gmail.com', 'login', '2022-06-15 08:43:23'),
(89, 'verganimarco02@gmail.com', 'logout', '2022-06-15 08:43:28'),
(90, 'verganimarco02@gmail.com', 'login', '2022-06-15 08:46:40'),
(91, 'verganimarco02@gmail.com', 'logout', '2022-06-15 08:46:44'),
(92, 'verganimarco02@gmail.com', 'login', '2022-06-15 08:47:25'),
(93, 'verganimarco02@gmail.com', 'ciao', '2022-06-15 08:47:35'),
(94, 'verganimarco02@gmail.com', 'login', '2022-06-15 08:48:54'),
(95, 'verganimarco02@gmail.com', 'logout', '2022-06-15 08:48:58'),
(96, 'verganimarco02@gmail.com', 'None', '2022-06-15 08:52:52'),
(97, 'verganimarco02@gmail.com', 'login', '2022-06-15 08:53:14'),
(98, 'verganimarco02@gmail.com', 'login', '2022-06-15 08:53:33'),
(99, 'verganimarco02@gmail.com', 'login', '2022-06-15 08:53:48'),
(100, 'verganimarco02@gmail.com', 'login', '2022-06-15 08:54:28'),
(101, 'verganimarco02@gmail.com', 'login', '2022-06-15 08:54:48'),
(102, 'verganimarco02@gmail.com', 'login', '2022-06-15 08:56:29'),
(103, 'verganimarco02@gmail.com', 'login', '2022-06-15 08:57:45'),
(104, 'verganimarco02@gmail.com', 'login', '2022-06-15 08:57:59'),
(105, 'verganimarco02@gmail.com', 'login', '2022-06-15 08:58:28'),
(106, 'verganimarco02@gmail.com', 'login', '2022-06-15 08:58:45'),
(107, 'verganimarco02@gmail.com', 'login', '2022-06-15 08:58:55'),
(108, 'verganimarco02@gmail.com', 'login', '2022-06-15 08:59:05'),
(109, 'verganimarco02@gmail.com', 'login', '2022-06-15 08:59:50'),
(110, 'verganimarco02@gmail.com', 'login', '2022-06-15 09:00:28'),
(111, 'verganimarco02@gmail.com', 'login', '2022-06-15 09:00:50'),
(112, 'verganimarco02@gmail.com', 'login', '2022-06-15 09:24:38'),
(113, 'verganimarco02@gmail.com', 'login', '2022-06-15 09:29:10'),
(114, 'verganimarco02@gmail.com', 'login', '2022-06-15 15:02:32'),
(115, 'verganimarco02@gmail.com', 'logout', '2022-06-15 15:03:23'),
(116, 'PieroAngela@gmail.com', 'attemptedLogin', '2022-06-15 15:03:31'),
(117, 'kjuytrsadtyuioiu@gmail.com', 'login', '2022-06-15 15:03:36'),
(118, 'kjuytrsadtyuioiu@gmail.com', 'login', '2022-06-15 15:04:46'),
(119, 'kjuytrsadtyuioiu@gmail.com', 'login', '2022-06-15 15:09:20'),
(120, 'kjuytrsadtyuioiu@gmail.com', 'logout', '2022-06-16 06:56:52'),
(121, 'verganimarco02@gmail.com', 'login', '2022-06-16 06:57:10'),
(122, 'verganimarco02@gmail.com', 'login', '2022-07-13 15:06:38'),
(123, 'verganimarco02@gmail.com', 'blue', '2022-07-13 15:07:03'),
(124, 'verganimarco02@gmail.com', 'blue', '2022-07-13 15:07:13'),
(125, 'verganimarco02@gmail.com', 'blue', '2022-07-13 15:07:53'),
(126, 'verganimarco02@gmail.com', 'ciao', '2022-07-13 15:07:56'),
(127, 'verganimarco02@gmail.com', 'login', '2022-07-13 15:21:35'),
(128, 'verganimarco02@gmail.com', 'blue', '2022-07-13 15:21:47'),
(129, 'verganimarco02@gmail.com', 'red', '2022-07-13 15:21:52'),
(130, 'verganimarco02@gmail.com', 'blue', '2022-07-13 15:23:12'),
(131, 'verganimarco02@gmail.com', 'login', '2022-07-13 15:23:25'),
(132, 'verganimarco02@gmail.com', 'ciao', '2022-07-13 15:23:28'),
(133, 'verganimarco02@gmail.com', 'fwa', '2022-07-13 15:23:30'),
(134, 'verganimarco02@gmail.com', 'None', '2022-07-13 15:24:42'),
(135, 'verganimarco02@gmail.com', 'None', '2022-07-13 15:25:28'),
(136, 'verganimarco02@gmail.com', 'None', '2022-07-13 15:25:38'),
(137, 'verganimarco02@gmail.com', 'ciao', '2022-07-13 15:25:41'),
(138, 'verganimarco02@gmail.com', 'None', '2022-07-13 15:27:31'),
(139, 'verganimarco02@gmail.com', 'blue', '2022-07-13 15:27:37'),
(140, 'verganimarco02@gmail.com', 'login', '2022-07-13 15:28:59'),
(141, 'verganimarco02@gmail.com', 'blue', '2022-07-13 15:29:07'),
(142, 'verganimarco02@gmail.com', 'blue', '2022-07-13 15:30:29'),
(143, 'verganimarco02@gmail.com', 'blue', '2022-07-13 15:30:43'),
(144, 'verganimarco02@gmail.com', 'red', '2022-07-13 15:30:49'),
(145, 'verganimarco02@gmail.com', 'login', '2022-07-13 15:37:23'),
(146, 'verganimarco02@gmail.com', 'ciao', '2022-07-13 15:37:32'),
(147, 'verganimarco02@gmail.com', 'blue', '2022-07-13 15:37:44'),
(148, 'verganimarco02@gmail.com', 'blue', '2022-07-13 15:40:35'),
(149, 'verganimarco02@gmail.com', 'ciao', '2022-07-13 15:40:44'),
(150, 'verganimarco02@gmail.com', 'ciao', '2022-07-13 15:40:57'),
(151, 'succhiocaczzi@gmail.com', 'Registered', '2022-07-13 15:44:21'),
(152, 'succhiocaczzi@gmail.com', 'login', '2022-07-13 15:44:25'),
(153, 'succhiocaczzi@gmail.com', 'blue', '2022-07-13 15:44:51'),
(154, 'succhiocaczzi@gmail.com', 'rosso', '2022-07-13 15:44:55'),
(155, 'verganimarco02@gmail.com', 'login', '2022-07-13 15:46:35'),
(156, 'verganimarco02@gmail.com', 'logout', '2022-07-13 15:46:39'),
(157, 'verganimarco02@gmail.com', 'logout', '2022-07-13 15:46:42'),
(158, 'verganimarco02@gmail.com', 'login', '2022-07-13 15:49:04'),
(159, 'verganimarco02@gmail.com', 'hiushoiaoi', '2022-07-13 15:49:14'),
(160, 'verganimarco02@gmail.com', 'ciuhisuh', '2022-07-13 15:49:27'),
(161, 'verganimarco02@gmail.com', 'login', '2022-07-13 15:53:31'),
(162, 'verganimarco02@gmail.com', 'blue', '2022-07-13 15:53:42'),
(163, 'verganimarco02@gmail.com', 'login', '2022-07-13 15:59:22'),
(164, 'verganimarco02@gmail.com', 'blue', '2022-07-13 15:59:29'),
(165, 'verganimarco02@gmail.com', 'red', '2022-07-13 15:59:31'),
(166, 'verganimarco02@gmail.com', 'yellow', '2022-07-13 15:59:40'),
(167, 'verganimarco02@gmail.com', 'login', '2022-07-13 16:00:26'),
(168, 'verganimarco02@gmail.com', 'yellow', '2022-07-13 16:00:37'),
(169, 'verganimarco02@gmail.com', 'blue', '2022-07-13 16:00:40'),
(170, 'verganimarco02@gmail.com', 'login', '2022-07-13 16:04:26'),
(171, 'verganimarco02@gmail.com', 'login', '2022-07-13 16:04:50'),
(172, 'verganimarco02@gmail.com', 'login', '2022-07-13 16:05:00'),
(173, 'verganimarco02@gmail.com', 'login', '2022-07-13 16:05:12'),
(174, 'verganimarco02@gmail.com', 'login', '2022-07-13 16:06:18'),
(175, 'verganimarco02@gmail.com', 'login', '2022-07-13 16:08:27'),
(176, 'verganimarco02@gmail.com', 'login', '2022-07-13 16:10:22'),
(177, 'None', 'None', '2022-07-13 16:10:27'),
(178, 'None', 'None', '2022-07-13 16:10:31'),
(179, 'None', 'None', '2022-07-13 16:11:31'),
(180, 'None', 'off', '2022-07-13 16:11:36'),
(181, 'None', 'off', '2022-07-13 16:11:40'),
(182, 'None', 'off', '2022-07-13 16:11:42'),
(183, 'verganimarco02@gmail.com', 'login', '2022-07-13 16:12:30'),
(184, 'None', 'on', '2022-07-13 16:12:34'),
(185, 'None', 'off', '2022-07-13 16:12:39'),
(186, 'None', 'on', '2022-07-13 16:12:43'),
(187, 'None', 'off', '2022-07-13 16:12:45'),
(188, 'verganimarco02@gmail.com', 'login', '2022-07-13 16:13:42'),
(189, 'verganimarco02@gmail.com', 'on', '2022-07-13 16:13:48'),
(190, 'verganimarco02@gmail.com', 'off', '2022-07-13 16:13:51'),
(191, 'verganimarco02@gmail.com', 'login', '2022-07-13 16:30:00'),
(192, 'aldobaglio@gmail.com', 'login', '2022-07-13 16:30:20'),
(193, 'aldobaglio@gmail.com', 'login', '2022-07-13 16:30:45'),
(194, 'aldobaglio@gmail.com', 'login', '2022-07-13 16:32:01'),
(195, 'aldobaglio@gmail.com', 'login', '2022-07-13 16:33:00'),
(196, 'aldobaglio@gmail.com', 'login', '2022-07-13 16:33:40'),
(197, 'aldobaglio@gmail.com', 'login', '2022-07-13 16:35:03'),
(198, 'aldobaglio@gmail.com', 'login', '2022-07-13 16:35:58'),
(199, 'aldobaglio@gmail.com', 'login', '2022-07-13 16:36:17'),
(200, 'aldobaglio@gmail.com', 'login', '2022-07-13 16:37:47'),
(201, 'aldobaglio@gmail.com', 'login', '2022-07-13 16:37:50'),
(202, 'aldobaglio@gmail.com', 'login', '2022-07-13 16:39:38'),
(203, 'aldobaglio@gmail.com', 'login', '2022-07-13 16:43:49'),
(204, 'aldobaglio@gmail.com', 'login', '2022-07-13 16:44:37'),
(205, 'aldobaglio@gmail.com', 'login', '2022-07-13 16:47:39'),
(206, 'aldobaglio@gmail.com', 'login', '2022-07-13 16:48:37'),
(207, 'aldobaglio@gmail.com', 'login', '2022-07-13 16:50:20'),
(208, 'aldobaglio@gmail.com', 'login', '2022-07-13 16:51:04'),
(209, 'aldobaglio@gmail.com', 'login', '2022-07-13 16:53:16'),
(210, 'aldobaglio@gmail.com', 'login', '2022-07-13 16:53:24'),
(211, 'aldobaglio@gmail.com', 'login', '2022-07-13 16:53:57'),
(212, 'aldobaglio@gmail.com', 'login', '2022-07-13 16:58:02'),
(213, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:00:07'),
(214, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:02:17'),
(215, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:02:49'),
(216, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:06:13'),
(217, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:08:35'),
(218, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:09:35'),
(219, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:09:56'),
(220, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:10:11'),
(221, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:10:21'),
(222, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:10:48'),
(223, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:11:03'),
(224, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:11:19'),
(225, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:11:49'),
(226, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:12:42'),
(227, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:15:18'),
(228, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:16:47'),
(229, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:21:32'),
(230, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:22:27'),
(231, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:24:45'),
(232, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:25:19'),
(233, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:33:02'),
(234, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:34:20'),
(235, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:34:45'),
(236, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:37:14'),
(237, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:37:17'),
(238, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:37:44'),
(239, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:38:56'),
(240, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:40:53'),
(241, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:40:55'),
(242, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:41:40'),
(243, 'aldobaglio@gmail.com', 'login', '2022-07-13 17:42:19'),
(244, 'aldobaglio@gmail.com', 'login', '2022-07-14 00:32:55'),
(245, 'aldobaglio@gmail.com', 'login', '2022-07-14 00:34:00'),
(246, 'aldobaglio@gmail.com', 'login', '2022-07-14 00:38:56'),
(247, 'aldobaglio@gmail.com', 'blue', '2022-07-14 00:39:09'),
(248, 'aldobaglio@gmail.com', 'blue', '2022-07-14 00:39:13'),
(249, 'aldobaglio@gmail.com', 'login', '2022-07-14 00:51:44'),
(250, 'aldobaglio@gmail.com', 'red', '2022-07-14 00:51:57'),
(251, 'aldobaglio@gmail.com', 'login', '2022-07-14 00:52:44'),
(252, 'aldobaglio@gmail.com', 'blue', '2022-07-14 00:52:53'),
(253, 'aldobaglio@gmail.com', 'blue', '2022-07-14 00:52:56'),
(254, 'aldobaglio@gmail.com', 'red', '2022-07-14 00:53:00'),
(255, 'aldobaglio@gmail.com', 'blue', '2022-07-14 00:53:04'),
(256, 'aldobaglio@gmail.com', 'off', '2022-07-14 00:53:08'),
(257, 'aldobaglio@gmail.com', 'login', '2022-07-14 00:56:14'),
(258, 'aldobaglio@gmail.com', 'blue', '2022-07-14 00:56:23'),
(259, 'aldobaglio@gmail.com', 'login', '2022-07-14 00:57:26'),
(260, 'aldobaglio@gmail.com', 'blue', '2022-07-14 00:57:31'),
(261, 'aldobaglio@gmail.com', 'blue', '2022-07-14 00:57:35'),
(262, 'aldobaglio@gmail.com', 'blue', '2022-07-14 00:57:39'),
(263, 'aldobaglio@gmail.com', 'red', '2022-07-14 00:57:42'),
(264, 'aldobaglio@gmail.com', 'red', '2022-07-14 00:57:46'),
(265, 'aldobaglio@gmail.com', 'red', '2022-07-14 00:57:49'),
(266, 'aldobaglio@gmail.com', 'red', '2022-07-14 00:57:53'),
(267, 'aldobaglio@gmail.com', 'blue', '2022-07-14 00:57:57'),
(268, 'aldobaglio@gmail.com', 'red', '2022-07-14 00:58:00'),
(269, 'aldobaglio@gmail.com', 'blue', '2022-07-14 00:58:04'),
(270, 'aldobaglio@gmail.com', 'red', '2022-07-14 00:58:07'),
(271, 'aldobaglio@gmail.com', 'blue', '2022-07-14 00:58:10'),
(272, 'aldobaglio@gmail.com', 'red', '2022-07-14 00:58:13'),
(273, 'aldobaglio@gmail.com', 'on', '2022-07-14 00:58:26'),
(274, 'aldobaglio@gmail.com', 'off', '2022-07-14 00:58:30'),
(275, 'aldobaglio@gmail.com', 'on', '2022-07-14 00:58:34'),
(276, 'mariorossi@gmail.com', 'Registered', '2022-07-14 12:04:24'),
(277, 'mariorossi@gmail.com', 'login', '2022-07-14 12:04:25'),
(278, 'mariorossi@gmail.com', 'login', '2022-07-14 12:04:36'),
(279, 'mariorossi@gmail.com', 'login', '2022-07-14 12:04:45'),
(280, 'aldobaglio@gmail.com', 'login', '2022-07-14 12:04:54'),
(281, 'aldobaglio@gmail.com', 'off', '2022-07-14 12:05:43'),
(282, 'aldobaglio@gmail.com', 'off', '2022-07-14 12:05:46'),
(283, 'aldobaglio@gmail.com', 'off', '2022-07-14 12:05:49'),
(284, 'aldobaglio@gmail.com', 'rosso', '2022-07-14 12:06:21'),
(285, 'aldobaglio@gmail.com', 'login', '2022-07-14 14:31:42'),
(286, 'aldobaglio@gmail.com', 'red', '2022-07-14 14:32:00'),
(287, 'aldobaglio@gmail.com', 'red', '2022-07-14 14:32:05'),
(288, 'aldobaglio@gmail.com', 'blue', '2022-07-14 14:32:08'),
(289, 'aldobaglio@gmail.com', 'red', '2022-07-14 14:32:11'),
(290, 'aldobaglio@gmail.com', 'red', '2022-07-14 14:32:13'),
(291, 'aldobaglio@gmail.com', 'blue', '2022-07-14 14:32:16'),
(292, 'aldobaglio@gmail.com', 'red', '2022-07-14 14:32:18'),
(293, 'aldobaglio@gmail.com', 'red', '2022-07-14 14:32:20'),
(294, 'aldobaglio@gmail.com', 'blue', '2022-07-14 14:32:23'),
(295, 'aldobaglio@gmail.com', 'red', '2022-07-14 14:32:25'),
(296, 'aldobaglio@gmail.com', 'red', '2022-07-14 14:32:27'),
(297, 'aldobaglio@gmail.com', 'blue', '2022-07-14 14:32:30'),
(298, 'aldobaglio@gmail.com', 'red', '2022-07-14 14:32:32'),
(299, 'aldobaglio@gmail.com', 'red', '2022-07-14 14:32:34'),
(300, 'aldobaglio@gmail.com', 'blue', '2022-07-14 14:32:36'),
(301, 'aldobaglio@gmail.com', 'red', '2022-07-14 14:32:38'),
(302, 'aldobaglio@gmail.com', 'red', '2022-07-14 14:32:40'),
(303, 'aldobaglio@gmail.com', 'blue', '2022-07-14 14:32:42'),
(304, 'aldobaglio@gmail.com', 'blue', '2022-07-14 14:32:43'),
(305, 'aldobaglio@gmail.com', 'red', '2022-07-14 14:32:46'),
(306, 'aldobaglio@gmail.com', 'red', '2022-07-14 14:32:48'),
(307, 'aldobaglio@gmail.com', 'blue', '2022-07-14 14:32:50'),
(308, 'aldobaglio@gmail.com', 'login', '2022-07-14 14:59:41'),
(309, 'aldobaglio@gmail.com', 'None', '2022-07-14 15:00:00'),
(310, 'aldobaglio@gmail.com', 'login', '2022-07-14 15:05:19'),
(311, 'aldobaglio@gmail.com', 'login', '2022-07-14 15:13:13'),
(312, 'aldobaglio@gmail.com', 'logout', '2022-07-14 15:15:28'),
(313, 'verganimarco02@gmail.com', 'login', '2022-07-14 15:15:38');

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `name` text NOT NULL,
  `surname` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `role` text NOT NULL DEFAULT '"user"'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`name`, `surname`, `email`, `password`, `role`) VALUES
('Marco', 'Vergani', 'verganimarco02@gmail.com', 'password', 'root'),
('aldo', 'Baglio', 'aldobaglio@gmail.com', 'aldino', '\"user\"'),
('Aldo Baglio', 'Baglio', 'kjuytrsadtyuioiu@gmail.com', '12345', '\"user\"'),
('caino', 'rossi', 'succhiocaczzi@gmail.com', 'pieroangela', '\"user\"'),
('mario', 'rossi', 'mariorossi@gmail.com', 'aldino', '\"user\"');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`code`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `actions`
--
ALTER TABLE `actions`
  MODIFY `code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
