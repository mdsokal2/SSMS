-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2022 at 01:40 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ssms_sokal`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_timestamp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_timestamp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` int(11) NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `teacher_id`, `title`, `start_date`, `start_timestamp`, `end_date`, `end_timestamp`, `fee`, `short_description`, `long_description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, 'graphics desing graphics desing graphics desing graphics desing', '2022-11-03', '1667433600', '2023-05-12', '1683849600', 35000, 'graphics desing graphics desing graphics desing graphics desing graphics desing graphics desing graphics desing graphics desing graphics desing graphics desing graphics desing', '<p>graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p>graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p>graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p>graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p>graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p>graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p>graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p>graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p>graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p>graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p>graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p>graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p>graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p>graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p>graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p>graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p>', 'course-images/215.jpg', 1, '2022-11-02 04:06:20', '2022-11-02 04:07:12'),
(2, 6, 'web Development', '2022-11-19', '1668816000', '2023-04-13', '1681344000', 25000, 'graphics desing graphics desing graphics desing graphics desing graphics desing \r\n\r\ngraphics desing graphics desing graphics desing graphics desing graphics desing \r\n\r\ngraphics desing graphics desing graphics desing graphics desing graphics desing', '<p style=\"color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p style=\"color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p style=\"color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p style=\"color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p style=\"color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p style=\"color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p style=\"color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p style=\"color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p style=\"color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p style=\"color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p style=\"color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p style=\"color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p style=\"color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p style=\"color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p style=\"color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p style=\"margin-bottom: 1rem; color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing</p>', 'course-images/643.jpg', 1, '2022-11-02 04:09:19', '2022-11-02 10:25:47'),
(3, 6, 'Android App Development', '2022-11-02', '1667347200', '2023-03-11', '1678492800', 40000, 'graphics desing graphics desing graphics desing graphics desing graphics desing \r\n\r\ngraphics desing graphics desing graphics desing graphics desing graphics desing \r\n\r\ngraphics desing graphics desing graphics desing graphics desing graphics desing', '<p style=\"color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p style=\"color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p style=\"margin-bottom: 1rem; color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;<span style=\"font-size: 0.8125rem;\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</span></p><p style=\"color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p style=\"margin-bottom: 1rem; color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;<span style=\"font-size: 0.8125rem;\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</span></p><p style=\"color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p style=\"margin-bottom: 1rem; color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;<span style=\"font-size: 0.8125rem;\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</span></p><p style=\"color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p style=\"margin-bottom: 1rem; color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;<span style=\"font-size: 0.8125rem;\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</span></p><p style=\"color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p style=\"margin-bottom: 1rem; color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;<span style=\"font-size: 0.8125rem;\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</span></p><p style=\"color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p style=\"margin-bottom: 1rem; color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;<span style=\"font-size: 0.8125rem;\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</span></p><p style=\"color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p style=\"margin-bottom: 1rem; color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;<span style=\"font-size: 0.8125rem;\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</span></p><p style=\"color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p style=\"margin-bottom: 1rem; color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;<span style=\"font-size: 0.8125rem;\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</span></p><p style=\"color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p style=\"margin-bottom: 1rem; color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p>', 'course-images/104.jpg', 1, '2022-11-02 04:10:13', '2022-11-02 04:10:21'),
(4, 6, 'Data entry training Course', '2022-11-02', '1667347200', '2022-11-02', '1667347200', 4500, 'graphics desing graphics desing graphics desing graphics desing graphics desing \r\n\r\ngraphics desing graphics desing graphics desing graphics desing graphics desing \r\n\r\ngraphics desing graphics desing graphics desing graphics desing graphics desing', '<p style=\"color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p style=\"color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p style=\"margin-bottom: 1rem; color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;<span style=\"font-size: 0.8125rem;\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</span></p><p style=\"color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p style=\"margin-bottom: 1rem; color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;<span style=\"font-size: 0.8125rem;\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</span></p><p style=\"color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p><p style=\"margin-bottom: 1rem; color: rgb(73, 80, 87); background-color: rgb(248, 249, 250);\">graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;graphics desing&nbsp;</p>', 'course-images/276.jpg', 0, '2022-11-02 04:12:23', '2022-11-10 06:39:33'),
(5, 5, 'web', '2022-11-05', '1667606400', '2022-11-05', '1667606400', 21000, 'dcfsdfdfdsrerewgfdvgbdcfsdfdfdsrerewgfdvgbdcfsdfdfdsrerewgfd', '<p>dcfsdfdfdsrerewgfdvgbdcfsdfdfdsrerewgfdvgbdcfsdfdfdsrerewgfdvgbdcfsdfdfdsrerewgfdvgbdcfsdfdfdsrerewgfdvgbdc</p><p><br></p><p>dsrerewgfdvgbdcfsdfdfdsrerewgfdvgbdcfsdfdfdsrerewgfdvgbdcfsdfdfdsrer</p><p>ewgfdvgbdcfsdfdfdsrerewgfdvgbdcfsdfdfdsrerewgfdvgbdcfsdfdfdsrerewgfdvgbdcfsdfdfdsrerewgfdvgbdcfsdfdfdsrerewgfdvg</p><p>bdcfsdfdfdsrerewgfdvgbdcfsdfdfdsrerewgfdvgbdcfsdfdfdsrerewgfdvgbdcfsdfdfdsrerewgfdvgb<br></p>', 'course-images/74Screenshot_2.jpg', 0, '2022-11-05 11:36:41', '2022-11-10 06:36:00');
INSERT INTO `courses` (`id`, `teacher_id`, `title`, `start_date`, `start_timestamp`, `end_date`, `end_timestamp`, `fee`, `short_description`, `long_description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(6, 5, 'Certificate Course On Software Testing & Quality Assurance', '2022-11-27', '1669507200', '2023-04-13', '1681344000', 20000, 'This course is Intend for those who want to work as a Software Tester. This course covers software testing in details.', '<h2 style=\"font-family: Roboto, sans-serif; line-height: 1.1; color: rgb(0, 0, 0); margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 20px; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Software Development Life Cycle</h2><ul style=\"margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Waterfall Model</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Spiral Model</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Prototype Model</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">V &amp; V Model</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Hybrid Model&nbsp;</li></ul><h2 style=\"font-family: Roboto, sans-serif; line-height: 1.1; color: rgb(0, 0, 0); margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 20px; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Software Testing</h2><ol style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px;\"><li style=\"list-style: none; margin: 0px; padding: 0px;\"><span style=\"font-weight: 700;\">White Box Testing</span><ul style=\"margin: 20px 0px; padding: 0px; list-style: none;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Path Testing</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Loop Testing</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Condition Testing</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">White box Testing from Memory Point of View</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">White box Testing from Performance Point of View</li></ul></li></ol><h2 style=\"font-family: Roboto, sans-serif; line-height: 1.1; color: rgb(0, 0, 0); margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 20px; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">&nbsp; &nbsp;&nbsp;<span style=\"font-size: 8pt; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important;\">2.&nbsp; Grey Box Testing</span></h2><ol start=\"3\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px;\"><li style=\"list-style: none; margin: 0px; padding: 0px;\"><span style=\"font-weight: 700;\">Black Box Testing</span></li></ol><ul style=\"margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Functionality Testing/Component Testing</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Integration Testing</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">System Testing</li></ul><h2 style=\"font-family: Roboto, sans-serif; line-height: 1.1; color: rgb(0, 0, 0); margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 20px; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">•&nbsp; Acceptance Testing</h2><ul style=\"margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Alpha Testing</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Beta Testing</li></ul><h2 style=\"font-family: Roboto, sans-serif; line-height: 1.1; color: rgb(0, 0, 0); margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 20px; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">•&nbsp; Smoke Testing/Sanity Testing/Dry Run</h2><ul style=\"margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Adhoc Testing</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Exploratory Testing</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Compatibility Testing</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Performance Testing<ul style=\"margin: 20px 0px; padding: 0px; list-style: none;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); line-height: 23px;\">Load Testing</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); line-height: 23px;\">Stress Testing</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); line-height: 23px;\">Volume Testing</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); line-height: 23px;\">Soak Testing</li></ul></li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Reliability Testing</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Usability Testing</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Accessibility Testing</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Globalization Testing<ul style=\"margin: 20px 0px; padding: 0px; list-style: none;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); line-height: 23px;\">Internationalization testing</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); line-height: 23px;\">Localization testing</li></ul></li></ul><h2 style=\"font-family: Roboto, sans-serif; line-height: 1.1; color: rgb(0, 0, 0); margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 20px; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">•&nbsp; Regression Testing<br><br>&nbsp;&nbsp;<span style=\"font-weight: 700;\">1.TEST CASE</span></h2><ul style=\"margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Introduction to Test Case</li></ul><ul style=\"margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Test Case Design Techniques&nbsp; &nbsp;</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">o Specification Based</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; o Experienced Based</p><ul style=\"margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Test Case Format</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Functional Test Case</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Integration Test Case</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">System Test Case</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Procedure to Write and Execute Test Case</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Test case Review Process</li></ul><h2 style=\"font-family: Roboto, sans-serif; line-height: 1.1; color: rgb(0, 0, 0); margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 20px; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">2.&nbsp; Software Test Life Cycle</h2><ul style=\"margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Traceability Matrix</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Test Execution Reports</li></ul><h2 style=\"font-family: Roboto, sans-serif; line-height: 1.1; color: rgb(0, 0, 0); margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 20px; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">3.&nbsp; Test Management Tool</h2><ul style=\"margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Jira</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Klaros</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Qase</li></ul><h2 style=\"font-family: Roboto, sans-serif; line-height: 1.1; color: rgb(0, 0, 0); margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 20px; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">4.&nbsp; Test Plan</h2><ul style=\"margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Sections of Test Plan</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Test Metrices</li></ul><h2 style=\"font-family: Roboto, sans-serif; line-height: 1.1; color: rgb(0, 0, 0); margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 20px; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">5.&nbsp; Defect Tracking</h2><ul style=\"margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Introduction to Defects</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Defect Life Cycle</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Status of Defects</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Severity of a defect</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Priority of a defect</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Defect Report/Incident Report</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Defect Tracking Tool: o JIRA<ul style=\"margin: 20px 0px; padding: 0px; list-style: none;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); line-height: 23px;\">MANTIS</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); line-height: 23px;\">QC</li></ul></li></ul><h2 style=\"font-family: Roboto, sans-serif; line-height: 1.1; color: rgb(0, 0, 0); margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 20px; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">6.&nbsp; Static Testing<br><br><span style=\"font-weight: 700;\">7.Dynamic Testing<br><br></span><span style=\"font-weight: 700;\">8.Quality Assurance and Quality Control</span></h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\"><span style=\"font-size: 12pt; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important;\"><span style=\"font-weight: 700;\">9.Projects</span></span></p><ul style=\"margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Web Application</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Mobile Application</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Compatibility Testing Project</li></ul><h1 style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 20px; font-family: Roboto, sans-serif; line-height: 1.1; color: rgb(0, 0, 0); background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Software Development Model</h1><ul style=\"margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Agile Methodology o Agile Scrum<ul style=\"margin: 20px 0px; padding: 0px; list-style: none;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); line-height: 23px;\">Agile Kanban</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); line-height: 23px;\">Agile Xtreme Programming</li></ul></li></ul><ul style=\"margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">DevOps<ul style=\"margin: 20px 0px; padding: 0px; list-style: none;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); line-height: 23px;\">Relationship between Agile and DevOps</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); line-height: 23px;\">Relationship between Agile and DevOps</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); line-height: 23px;\">CI/CD Pipeline</li></ul></li></ul><h1 style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 20px; font-family: Roboto, sans-serif; line-height: 1.1; color: rgb(0, 0, 0); background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Git</h1><ul style=\"margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">git Overview</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">git Installation</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">git Account Setup</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">git integration with IDE</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">git Create</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">git Clone</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">git commit</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">git Push</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">git Update&nbsp;</li></ul><h1 style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 20px; font-family: Roboto, sans-serif; line-height: 1.1; color: rgb(0, 0, 0); background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Core Java</h1><h2 style=\"font-family: Roboto, sans-serif; line-height: 1.1; color: rgb(0, 0, 0); margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 20px; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Section 1</h2><ul style=\"margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\"><span style=\"font-weight: 700;\">Introduction to programming</span></li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Introduction to java</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">JDK installation</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Keywords, Identifiers, variables</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Operators</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Method/Functions</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Flow Control Statements</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Arrays</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Strings</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Interactive programs in java using Scanner</li></ul><h2 style=\"font-family: Roboto, sans-serif; line-height: 1.1; color: rgb(0, 0, 0); margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 20px; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Section 2</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\"><span style=\"font-weight: 700;\">Object Oriented Programming System</span></p><ul style=\"margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Classes and Objects</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Object creation</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Reference variable</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Global and local variables</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Constructors</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Inheritance</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Method Overloading</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Method Overriding</li></ul><ul style=\"margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Abstract classes</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Interfaces</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Polymorphism</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Abstraction</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Java packages</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Access Specifies&nbsp;</li></ul><h1 style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 20px; font-family: Roboto, sans-serif; line-height: 1.1; color: rgb(0, 0, 0); background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Selenium</h1><h2 style=\"font-family: Roboto, sans-serif; line-height: 1.1; color: rgb(0, 0, 0); margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 20px; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">•&nbsp;&nbsp;&nbsp; Automation Testing</h2><ul style=\"margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">What is Automation Testing?</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">When we Switch to Automation Testing?</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Why Automation testing? /Advantages and Disadvantages</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Automation Testing Tools</li></ul><h2 style=\"font-family: Roboto, sans-serif; line-height: 1.1; color: rgb(0, 0, 0); margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 20px; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">•&nbsp; Selenium</h2><ul style=\"margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">What is Selenium</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Why Selenium? / Advantages</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">What are its versions?</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">What all OS, Browsers, and Programming Languages it Support?</li></ul><ul style=\"margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Java-Selenium Architecture</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">WebDriver Architecture</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Basic Selenium Program to Open and close Browser</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Runtime Polymorphism Program in Selenium</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">WebDriver abstract methods</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Locators</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Xpath, its Types and cases<ul style=\"margin: 20px 0px; padding: 0px; list-style: none;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); line-height: 23px;\">Handling Multiple Elements</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); line-height: 23px;\">Handling Synchronization issue by using implicitly Wait and Explicitly Wait</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); line-height: 23px;\">Handling Dropdown (static and dynamic)</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); line-height: 23px;\">Handling Keyboard and Mouse Actions</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); line-height: 23px;\">Taking Screenshot</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); line-height: 23px;\">Performing Scroll down Action</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); line-height: 23px;\">WebElement Interface Methods</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); line-height: 23px;\">Handling Popups</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); line-height: 23px;\">Handling Frames</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); line-height: 23px;\">Handling New Windows/New Tabs</li></ul></li></ul><h2 style=\"font-family: Roboto, sans-serif; line-height: 1.1; color: rgb(0, 0, 0); margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 20px; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">•&nbsp;&nbsp;&nbsp; AUTOMATION FRAMEWORK</h2><ul style=\"margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\"><span style=\"font-weight: 700;\"><em>Data-Driven</em></span></li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Keyword-Driven</li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\">Method-Driven</li></ul>', 'course-images/2681630730037.jpg', 1, '2022-11-10 06:27:36', '2022-11-10 06:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `enrolls`
--

CREATE TABLE `enrolls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `enroll_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enroll_timestamp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enroll_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `payment_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `payment_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_timestamp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrolls`
--

INSERT INTO `enrolls` (`id`, `student_id`, `course_id`, `enroll_date`, `enroll_timestamp`, `enroll_status`, `payment_type`, `payment_status`, `payment_amount`, `payment_date`, `payment_timestamp`, `transaction_id`, `created_at`, `updated_at`) VALUES
(3, 3, 1, '2022-11-02', '1667347200', 'Complete', 'cash', 'Pending', '35000', NULL, NULL, NULL, '2022-11-02 11:15:02', '2022-11-03 14:53:23'),
(4, 5, 2, '2022-11-03', '1667433600', 'Complete', 'cash', 'Pending', '25000', NULL, NULL, NULL, '2022-11-03 14:57:22', '2022-11-03 14:57:38'),
(5, 6, 2, '2022-11-05', '1667606400', 'Pending', 'cash', 'Pending', '0', NULL, NULL, NULL, '2022-11-04 22:09:58', '2022-11-04 22:09:58'),
(6, 7, 3, '2022-11-05', '1667606400', 'Pending', 'cash', 'Pending', '0', NULL, NULL, NULL, '2022-11-04 22:19:04', '2022-11-04 22:19:04'),
(7, 8, 3, '2022-11-05', '1667606400', 'Pending', 'cash', 'Pending', '0', NULL, NULL, NULL, '2022-11-04 22:21:09', '2022-11-04 22:21:09'),
(8, 9, 3, '2022-11-05', '1667606400', 'Pending', 'cash', 'Pending', '0', NULL, NULL, NULL, '2022-11-04 22:22:39', '2022-11-04 22:22:39'),
(9, 10, 3, '2022-11-05', '1667606400', 'Pending', 'cash', 'Pending', '0', NULL, NULL, NULL, '2022-11-04 22:26:24', '2022-11-04 22:26:24');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_10_23_154953_create_sessions_table', 1),
(7, '2022_10_24_153018_create_teachers_table', 1),
(8, '2022_10_25_144829_create_courses_table', 1),
(9, '2022_10_26_172800_create_books_table', 1),
(10, '2022_11_01_140929_add_designation_column_to_teacher', 1),
(11, '2022_11_01_171216_create_enrolls_table', 1),
(12, '2022_11_01_172338_create_students_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('oHUTRw3caHZTj2bfMQVZgvFm13JLf99A0ncu8hU2', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTo5OntzOjY6Il90b2tlbiI7czo0MDoiRjRyc1ByeUR2Mm1nM3RvdDVITWlIQ3ZJWVJTSDdRYWREQzE2U3ViOCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAiO31zOjEwOiJ0ZWFjaGVyX2lkIjtpOjU7czoxMjoidGVhY2hlcl9uYW1lIjtzOjExOiJTb2thbCBhaG1lZCI7czoxMzoidGVhY2hlcl9pbWFnZSI7czoyMToidGVhY2hlci1pbWFnZS81NTEuanBnIjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJGFDaTBDdU9KSzc1cUkxZ211TzkzbGVwQ2dUNWhiUHVTd2VVaFNaZlFYWXVid0o4eWRWYm5tIjt9', 1668083985);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `password`, `mobile`, `address`, `image`, `status`, `created_at`, `updated_at`) VALUES
(3, 'rubel', 'ruble@gmail.com', '$2y$10$FHcfK3ECE8CQvLS8JF8oouwyxi1RaBGeOo1UdRFq8SDWkl2NUdu6S', '8801995592802', NULL, NULL, 1, '2022-11-02 11:15:02', '2022-11-03 13:41:10'),
(5, 'MUHAMMED SAHAB UDDIN', 'sihabuddin885@gmail.com', '$2y$10$mJRob.a6ykKwr.Yg29mfz.4D26qBv.3Uxe9IH/Y9gdKafK5HFvja2', '01830214885', NULL, NULL, 1, '2022-11-03 14:57:22', '2022-11-03 14:57:22'),
(9, 'sabbirkhan', 'MDSOKAL1990@GMAIL.COM', '$2y$10$B6HwoTJoAOAvGw0RHZWw7e/9oP8kgM6VIT.HQMBVFIctJdVWwJq6a', '01521483861', NULL, NULL, 1, '2022-11-04 22:22:39', '2022-11-04 22:22:39'),
(10, 'sabrina rimi', 'sabrinarimiss@gmail.com', '$2y$10$nbkvkefer.fW.ylhgrZqKOV2RYDoewdEk31rqNJkkATGRrXnBrCkO', '01811368233', NULL, NULL, 1, '2022-11-04 22:26:24', '2022-11-04 22:26:24');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `email`, `password`, `mobile`, `address`, `image`, `nid`, `district_name`, `status`, `created_at`, `updated_at`, `designation`) VALUES
(5, 'Sokal ahmed', 'sokal161@gmail.com', '$2y$10$26Tfy/WwCPHXamXJZaL3KOz1skVgSlIOLTob7Q8ZBakkdo/BYXdCG', '01521483861', 'EAST HINGULY,BARAIYERHAT, MIRSHARI,MINNAT ALI HAZI BARI.', 'teacher-image/551.jpg', NULL, NULL, 1, '2022-11-05 11:34:06', '2022-11-05 11:34:06', 'web developer specialist'),
(6, 'সকাল', 'MDSOKAL1990@GMAIL.COM', '$2y$10$/NKc1.hEdvi5sd0PqKeGres52Qfq/ud.Pzd.tFeRceZLswpu6IZra', '01521483861', 'EAST HINGULY,BARAIYERHAT, MIRSHARI,MINNAT ALI HAZI BARI.', 'teacher-image/637.jpg', NULL, NULL, 1, '2022-11-10 06:23:23', '2022-11-10 06:23:23', 'laravel developer'),
(7, 'MUHAMMED', 'sokal@gmail.com', '$2y$10$s8i86irMMqEhg.7JY0OeS.2h/otNH2Wm2X1iCL36kIxphfq3JPIgu', '12345745787', 'EAST HINGULI,BARAIYERHAT, MIRSHARI,MINNAT ALI HAZI BARI.', 'teacher-image/459.jpg', NULL, NULL, 1, '2022-11-10 06:24:16', '2022-11-10 06:24:16', 'web developer specialist');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'MUHAMMED', 'admin@admin.com', NULL, '$2y$10$aCi0CuOJK75qI1gmuO93lepCgT5hbPuSweUhSZfQXYubwJ8ydVbnm', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 03:57:07', '2022-11-02 03:57:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrolls`
--
ALTER TABLE `enrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teachers_email_unique` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `enrolls`
--
ALTER TABLE `enrolls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
