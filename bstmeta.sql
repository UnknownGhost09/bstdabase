-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2023 at 07:29 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bstmeta`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_emailaddress`
--

CREATE TABLE `account_emailaddress` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_emailconfirmation`
--

CREATE TABLE `account_emailconfirmation` (
  `id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `key` varchar(64) NOT NULL,
  `email_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add levels', 7, 'add_levels'),
(26, 'Can change levels', 7, 'change_levels'),
(27, 'Can delete levels', 7, 'delete_levels'),
(28, 'Can view levels', 7, 'view_levels'),
(29, 'Can add rank', 8, 'add_rank'),
(30, 'Can change rank', 8, 'change_rank'),
(31, 'Can delete rank', 8, 'delete_rank'),
(32, 'Can view rank', 8, 'view_rank'),
(33, 'Can add wallet', 9, 'add_wallet'),
(34, 'Can change wallet', 9, 'change_wallet'),
(35, 'Can delete wallet', 9, 'delete_wallet'),
(36, 'Can view wallet', 9, 'view_wallet'),
(37, 'Can add user referral', 10, 'add_userreferral'),
(38, 'Can change user referral', 10, 'change_userreferral'),
(39, 'Can delete user referral', 10, 'delete_userreferral'),
(40, 'Can view user referral', 10, 'view_userreferral'),
(41, 'Can add user rank', 11, 'add_userrank'),
(42, 'Can change user rank', 11, 'change_userrank'),
(43, 'Can delete user rank', 11, 'delete_userrank'),
(44, 'Can view user rank', 11, 'view_userrank'),
(45, 'Can add transactions', 12, 'add_transactions'),
(46, 'Can change transactions', 12, 'change_transactions'),
(47, 'Can delete transactions', 12, 'delete_transactions'),
(48, 'Can view transactions', 12, 'view_transactions'),
(49, 'Can add login_history', 13, 'add_login_history'),
(50, 'Can change login_history', 13, 'change_login_history'),
(51, 'Can delete login_history', 13, 'delete_login_history'),
(52, 'Can view login_history', 13, 'view_login_history'),
(53, 'Can add current_level', 14, 'add_current_level'),
(54, 'Can change current_level', 14, 'change_current_level'),
(55, 'Can delete current_level', 14, 'delete_current_level'),
(56, 'Can view current_level', 14, 'view_current_level'),
(57, 'Can add status_activity', 15, 'add_status_activity'),
(58, 'Can change status_activity', 15, 'change_status_activity'),
(59, 'Can delete status_activity', 15, 'delete_status_activity'),
(60, 'Can view status_activity', 15, 'view_status_activity'),
(61, 'Can add emailservice', 16, 'add_emailservice'),
(62, 'Can change emailservice', 16, 'change_emailservice'),
(63, 'Can delete emailservice', 16, 'delete_emailservice'),
(64, 'Can view emailservice', 16, 'view_emailservice'),
(65, 'Can add membership', 17, 'add_membership'),
(66, 'Can change membership', 17, 'change_membership'),
(67, 'Can delete membership', 17, 'delete_membership'),
(68, 'Can view membership', 17, 'view_membership'),
(69, 'Can add user membership', 18, 'add_usermembership'),
(70, 'Can change user membership', 18, 'change_usermembership'),
(71, 'Can delete user membership', 18, 'delete_usermembership'),
(72, 'Can view user membership', 18, 'view_usermembership'),
(73, 'Can add user withdrawls', 19, 'add_userwithdrawls'),
(74, 'Can change user withdrawls', 19, 'change_userwithdrawls'),
(75, 'Can delete user withdrawls', 19, 'delete_userwithdrawls'),
(76, 'Can view user withdrawls', 19, 'view_userwithdrawls'),
(77, 'Can add withdrawsettingmodel', 20, 'add_withdrawsettingmodel'),
(78, 'Can change withdrawsettingmodel', 20, 'change_withdrawsettingmodel'),
(79, 'Can delete withdrawsettingmodel', 20, 'delete_withdrawsettingmodel'),
(80, 'Can view withdrawsettingmodel', 20, 'view_withdrawsettingmodel'),
(81, 'Can add ticket model', 21, 'add_ticketmodel'),
(82, 'Can change ticket model', 21, 'change_ticketmodel'),
(83, 'Can delete ticket model', 21, 'delete_ticketmodel'),
(84, 'Can view ticket model', 21, 'view_ticketmodel'),
(85, 'Can add verify', 22, 'add_verify'),
(86, 'Can change verify', 22, 'change_verify'),
(87, 'Can delete verify', 22, 'delete_verify'),
(88, 'Can view verify', 22, 'view_verify'),
(89, 'Can add plansmodel', 23, 'add_plansmodel'),
(90, 'Can change plansmodel', 23, 'change_plansmodel'),
(91, 'Can delete plansmodel', 23, 'delete_plansmodel'),
(92, 'Can view plansmodel', 23, 'view_plansmodel'),
(93, 'Can add association', 24, 'add_association'),
(94, 'Can change association', 24, 'change_association'),
(95, 'Can delete association', 24, 'delete_association'),
(96, 'Can view association', 24, 'view_association'),
(97, 'Can add code', 25, 'add_code'),
(98, 'Can change code', 25, 'change_code'),
(99, 'Can delete code', 25, 'delete_code'),
(100, 'Can view code', 25, 'view_code'),
(101, 'Can add nonce', 26, 'add_nonce'),
(102, 'Can change nonce', 26, 'change_nonce'),
(103, 'Can delete nonce', 26, 'delete_nonce'),
(104, 'Can view nonce', 26, 'view_nonce'),
(105, 'Can add user social auth', 27, 'add_usersocialauth'),
(106, 'Can change user social auth', 27, 'change_usersocialauth'),
(107, 'Can delete user social auth', 27, 'delete_usersocialauth'),
(108, 'Can view user social auth', 27, 'view_usersocialauth'),
(109, 'Can add partial', 28, 'add_partial'),
(110, 'Can change partial', 28, 'change_partial'),
(111, 'Can delete partial', 28, 'delete_partial'),
(112, 'Can view partial', 28, 'view_partial'),
(113, 'Can add email address', 29, 'add_emailaddress'),
(114, 'Can change email address', 29, 'change_emailaddress'),
(115, 'Can delete email address', 29, 'delete_emailaddress'),
(116, 'Can view email address', 29, 'view_emailaddress'),
(117, 'Can add email confirmation', 30, 'add_emailconfirmation'),
(118, 'Can change email confirmation', 30, 'change_emailconfirmation'),
(119, 'Can delete email confirmation', 30, 'delete_emailconfirmation'),
(120, 'Can view email confirmation', 30, 'view_emailconfirmation'),
(121, 'Can add social account', 31, 'add_socialaccount'),
(122, 'Can change social account', 31, 'change_socialaccount'),
(123, 'Can delete social account', 31, 'delete_socialaccount'),
(124, 'Can view social account', 31, 'view_socialaccount'),
(125, 'Can add social application', 32, 'add_socialapp'),
(126, 'Can change social application', 32, 'change_socialapp'),
(127, 'Can delete social application', 32, 'delete_socialapp'),
(128, 'Can view social application', 32, 'view_socialapp'),
(129, 'Can add social application token', 33, 'add_socialtoken'),
(130, 'Can change social application token', 33, 'change_socialtoken'),
(131, 'Can delete social application token', 33, 'delete_socialtoken'),
(132, 'Can view social application token', 33, 'view_socialtoken'),
(133, 'Can add newsmodel', 34, 'add_newsmodel'),
(134, 'Can change newsmodel', 34, 'change_newsmodel'),
(135, 'Can delete newsmodel', 34, 'delete_newsmodel'),
(136, 'Can view newsmodel', 34, 'view_newsmodel'),
(137, 'Can add appsettings', 35, 'add_appsettings'),
(138, 'Can change appsettings', 35, 'change_appsettings'),
(139, 'Can delete appsettings', 35, 'delete_appsettings'),
(140, 'Can view appsettings', 35, 'view_appsettings'),
(141, 'Can add user address detail', 36, 'add_useraddressdetail'),
(142, 'Can change user address detail', 36, 'change_useraddressdetail'),
(143, 'Can delete user address detail', 36, 'delete_useraddressdetail'),
(144, 'Can view user address detail', 36, 'view_useraddressdetail'),
(145, 'Can add fastrack model', 37, 'add_fastrackmodel'),
(146, 'Can change fastrack model', 37, 'change_fastrackmodel'),
(147, 'Can delete fastrack model', 37, 'delete_fastrackmodel'),
(148, 'Can view fastrack model', 37, 'view_fastrackmodel'),
(149, 'Can add levelincome', 38, 'add_levelincome'),
(150, 'Can change levelincome', 38, 'change_levelincome'),
(151, 'Can delete levelincome', 38, 'delete_levelincome'),
(152, 'Can view levelincome', 38, 'view_levelincome'),
(153, 'Can add userunlockedlevel', 39, 'add_userunlockedlevel'),
(154, 'Can change userunlockedlevel', 39, 'change_userunlockedlevel'),
(155, 'Can delete userunlockedlevel', 39, 'delete_userunlockedlevel'),
(156, 'Can view userunlockedlevel', 39, 'view_userunlockedlevel'),
(157, 'Can add user staking', 40, 'add_userstaking'),
(158, 'Can change user staking', 40, 'change_userstaking'),
(159, 'Can delete user staking', 40, 'delete_userstaking'),
(160, 'Can view user staking', 40, 'view_userstaking'),
(161, 'Can add gallaryimages', 41, 'add_gallaryimages'),
(162, 'Can change gallaryimages', 41, 'change_gallaryimages'),
(163, 'Can delete gallaryimages', 41, 'delete_gallaryimages'),
(164, 'Can view gallaryimages', 41, 'view_gallaryimages'),
(165, 'Can add ptransfer', 42, 'add_ptransfer'),
(166, 'Can change ptransfer', 42, 'change_ptransfer'),
(167, 'Can delete ptransfer', 42, 'delete_ptransfer'),
(168, 'Can view ptransfer', 42, 'view_ptransfer'),
(169, 'Can add staking roi logs', 43, 'add_stakingroilogs'),
(170, 'Can change staking roi logs', 43, 'change_stakingroilogs'),
(171, 'Can delete staking roi logs', 43, 'delete_stakingroilogs'),
(172, 'Can view staking roi logs', 43, 'view_stakingroilogs'),
(173, 'Can add farming roi logs', 44, 'add_farmingroilogs'),
(174, 'Can change farming roi logs', 44, 'change_farmingroilogs'),
(175, 'Can delete farming roi logs', 44, 'delete_farmingroilogs'),
(176, 'Can view farming roi logs', 44, 'view_farmingroilogs'),
(177, 'Can add youtubevideo', 45, 'add_youtubevideo'),
(178, 'Can change youtubevideo', 45, 'change_youtubevideo'),
(179, 'Can delete youtubevideo', 45, 'delete_youtubevideo'),
(180, 'Can view youtubevideo', 45, 'view_youtubevideo'),
(181, 'Can add cofounderclub', 46, 'add_cofounderclub'),
(182, 'Can change cofounderclub', 46, 'change_cofounderclub'),
(183, 'Can delete cofounderclub', 46, 'delete_cofounderclub'),
(184, 'Can view cofounderclub', 46, 'view_cofounderclub'),
(185, 'Can add usercofounderclub', 47, 'add_usercofounderclub'),
(186, 'Can change usercofounderclub', 47, 'change_usercofounderclub'),
(187, 'Can delete usercofounderclub', 47, 'delete_usercofounderclub'),
(188, 'Can view usercofounderclub', 47, 'view_usercofounderclub'),
(189, 'Can add businesslogs', 48, 'add_businesslogs'),
(190, 'Can change businesslogs', 48, 'change_businesslogs'),
(191, 'Can delete businesslogs', 48, 'delete_businesslogs'),
(192, 'Can view businesslogs', 48, 'view_businesslogs'),
(193, 'Can add manage roi', 49, 'add_manageroi'),
(194, 'Can change manage roi', 49, 'change_manageroi'),
(195, 'Can delete manage roi', 49, 'delete_manageroi'),
(196, 'Can view manage roi', 49, 'view_manageroi'),
(197, 'Can add changesponserlogs', 50, 'add_changesponserlogs'),
(198, 'Can change changesponserlogs', 50, 'change_changesponserlogs'),
(199, 'Can delete changesponserlogs', 50, 'delete_changesponserlogs'),
(200, 'Can view changesponserlogs', 50, 'view_changesponserlogs'),
(201, 'Can add categorymodel', 51, 'add_categorymodel'),
(202, 'Can change categorymodel', 51, 'change_categorymodel'),
(203, 'Can delete categorymodel', 51, 'delete_categorymodel'),
(204, 'Can view categorymodel', 51, 'view_categorymodel');

-- --------------------------------------------------------

--
-- Table structure for table `core_appsettings`
--

CREATE TABLE `core_appsettings` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `logolight` varchar(200) NOT NULL,
  `logodart` varchar(200) NOT NULL,
  `favicon` varchar(200) NOT NULL,
  `aboutus` longtext NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_appsettings`
--

INSERT INTO `core_appsettings` (`id`, `title`, `logolight`, `logodart`, `favicon`, `aboutus`, `facebook`, `twitter`, `linkedin`, `instagram`, `email`, `status`) VALUES
(1, 'MLM', 'logo-2.png', 'logo-1.png', 'logo-3.png', 'Giving readers a sense of who you are or what your business stands for should be your first priority. Give a clear and simple explanation of the website\'s or company\'s objective. You should mention your passion, mission, or vision here.', 'https://facebook.com', 'https://twitter.com', 'https://linkedin.com', 'https://instagram.com', '', '0'),
(2, 'MLM', 'alp-icon.png', 'alp-icon.png', 'alp-icon.png', 'Giving readers a sense of who you are or what your business stands for should be your first priority. Give a clear and simple explanation of the website\'s or company\'s objective. You should mention your passion, mission, or vision here.', 'https://facebook.com', 'https://twitter.com', 'https://linkedin.com', 'https://instagram.com', '', '0'),
(3, 'BSTmeta', 'meta-logo.png', 'meta-logo.png', 'meta-logo.png', 'Giving readers a sense of who you are or what your business stands for should be your first priority. Give a clear and simple explanation of the website\'s or company\'s objective. You should mention your passion, mission, or vision here.', 'https://facebook.com', 'https://twitter.com', 'https://linkedin.com', 'https://instagram.com', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `core_businesslogs`
--

CREATE TABLE `core_businesslogs` (
  `id` bigint(20) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `child_id_id` bigint(20) NOT NULL,
  `parent_id_id` bigint(20) NOT NULL,
  `plan_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_businesslogs`
--

INSERT INTO `core_businesslogs` (`id`, `amount`, `date`, `status`, `child_id_id`, `parent_id_id`, `plan_id`) VALUES
(9, '150', '2023-09-05 09:48:09.877008', '1', 155, 154, 21),
(10, '100', '2023-09-06 05:09:45.371314', '1', 158, 154, 21),
(11, '50', '2023-09-06 05:09:45.371314', '1', 156, 155, 21),
(12, '50', '2023-09-06 05:09:45.371314', '1', 155, 154, 21),
(13, '100', '2023-09-06 05:09:45.371314', '1', 159, 156, 21),
(14, '100', '2023-09-06 05:09:45.371314', '1', 156, 155, 21),
(15, '100', '2023-09-06 05:09:45.371314', '1', 155, 154, 21),
(16, '100', '2023-09-06 05:09:45.371314', '1', 160, 159, 21),
(17, '100', '2023-09-06 05:09:45.371314', '1', 159, 156, 21),
(18, '100', '2023-09-06 05:09:45.371314', '1', 156, 155, 21),
(19, '100', '2023-09-06 05:09:45.371314', '1', 155, 154, 21),
(20, '300', '2023-09-06 05:09:45.371314', '1', 157, 155, 21),
(21, '300', '2023-09-06 05:09:45.371314', '1', 155, 154, 21);

-- --------------------------------------------------------

--
-- Table structure for table `core_categorymodel`
--

CREATE TABLE `core_categorymodel` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `min_amount` varchar(250) NOT NULL,
  `max_amount` varchar(250) NOT NULL,
  `status` varchar(100) NOT NULL,
  `plan_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_categorymodel`
--

INSERT INTO `core_categorymodel` (`id`, `name`, `min_amount`, `max_amount`, `status`, `plan_id`) VALUES
(1, 'ART', '50', '1000', '1', 21),
(2, 'LAND', '1050', '2000', '1', 21),
(3, 'CHARACTER', '2050', '2500', '1', 21),
(4, 'ART', '2550', '3000', '1', 23),
(5, 'LAND', '3050', '4000', '1', 23),
(6, 'CHARACTER', '4050', '5000', '1', 23),
(7, 'ART', '5050', '7000', '1', 22),
(8, 'LAND', '7050', '9000', '1', 22),
(9, 'CHARACTER', '9050', '10000', '1', 22);

-- --------------------------------------------------------

--
-- Table structure for table `core_changesponserlogs`
--

CREATE TABLE `core_changesponserlogs` (
  `id` bigint(20) NOT NULL,
  `status` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `from_id_id` bigint(20) NOT NULL,
  `to_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_cofounderclub`
--

CREATE TABLE `core_cofounderclub` (
  `id` bigint(20) NOT NULL,
  `club` varchar(200) NOT NULL,
  `business` varchar(200) NOT NULL,
  `reward` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_cofounderclub`
--

INSERT INTO `core_cofounderclub` (`id`, `club`, `business`, `reward`, `status`) VALUES
(1, 'Club1', '25000', '5000', '1'),
(2, 'Club2', '50000', '10000', '1'),
(3, 'Club3', '100000', '20000', '1'),
(4, 'Club4', '200000', '30000', '1'),
(5, 'Club5', '500000', '50000', '1');

-- --------------------------------------------------------

--
-- Table structure for table `core_emailservice`
--

CREATE TABLE `core_emailservice` (
  `id` bigint(20) NOT NULL,
  `service` varchar(200) NOT NULL,
  `host` varchar(200) NOT NULL,
  `user` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `port` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_emailservice`
--

INSERT INTO `core_emailservice` (`id`, `service`, `host`, `user`, `password`, `port`, `status`) VALUES
(1, 'mailtrap', 'smtp-relay.brevo.com', 'shubhamboxfy@gmail.com', 'AkWbKnOYFJ7P9HMt', ' 587', '1');

-- --------------------------------------------------------

--
-- Table structure for table `core_gallaryimages`
--

CREATE TABLE `core_gallaryimages` (
  `id` bigint(20) NOT NULL,
  `imgpath` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `title` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_gallaryimages`
--

INSERT INTO `core_gallaryimages` (`id`, `imgpath`, `status`, `title`) VALUES
(1, 'img-1.jpg', '1', 'The calendar may say spring, but a cool breeze through your open window makes a lightweight throw blanket a must-have.\r\nThe calendar may say spring, but a cool breeze through your open window makes a lightweight throw blanket a must-have.'),
(2, 'img-7.jpg', '1', 'The calendar may say spring, but a cool breeze through your open window makes a lightweight throw blanket a must-have.'),
(3, 'img-4.jpg', '1', 'The calendar may say spring, but a cool breeze through your open window makes a lightweight throw blanket a must-have.'),
(4, 'avatar-10.jpg', '1', 'The calendar may say spring, but a cool breeze through your open window makes a lightweight throw blanket a must-have.'),
(5, 'avatar-8.jpg', '1', 'ksjlf dsfjal ksajfll; sfjlsd               ');

-- --------------------------------------------------------

--
-- Table structure for table `core_levelincome`
--

CREATE TABLE `core_levelincome` (
  `id` bigint(20) NOT NULL,
  `level_income` varchar(200) NOT NULL,
  `child_id_id` bigint(20) NOT NULL,
  `level_id` bigint(20) NOT NULL,
  `parent_id_id` bigint(20) NOT NULL,
  `date` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_levelincome`
--

INSERT INTO `core_levelincome` (`id`, `level_income`, `child_id_id`, `level_id`, `parent_id_id`, `date`, `status`) VALUES
(422, '1.5', 155, 1, 154, '2023-09-06 00:00:00', '1'),
(423, '2.25', 155, 1, 154, '2023-09-06 00:00:00', '1'),
(424, '1.5', 158, 1, 154, '2023-09-06 00:00:00', '1'),
(425, '0.75', 156, 1, 155, '2023-09-06 00:00:00', '1'),
(426, '0.5', 156, 2, 154, '2023-09-06 00:00:00', '1'),
(427, '1.5', 159, 1, 156, '2023-09-06 00:00:00', '1'),
(428, '1.0', 159, 2, 155, '2023-09-06 00:00:00', '1'),
(429, '0.7000000000000001', 159, 3, 154, '2023-09-06 00:00:00', '1'),
(430, '1.5', 160, 1, 159, '2023-09-06 00:00:00', '1'),
(431, '1.0', 160, 2, 156, '2023-09-06 00:00:00', '1'),
(432, '0.7000000000000001', 160, 3, 155, '2023-09-06 00:00:00', '1'),
(433, '0.5', 160, 4, 154, '2023-09-06 00:00:00', '1'),
(434, '4.5', 157, 1, 155, '2023-09-06 00:00:00', '1'),
(435, '3.0', 157, 2, 154, '2023-09-06 00:00:00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `core_login_history`
--

CREATE TABLE `core_login_history` (
  `id` bigint(20) NOT NULL,
  `login_time` varchar(200) NOT NULL,
  `logout_time` varchar(200) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `city` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `ip_location` varchar(200) NOT NULL,
  `region` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_login_history`
--

INSERT INTO `core_login_history` (`id`, `login_time`, `logout_time`, `user_id`, `city`, `country`, `ip_location`, `region`) VALUES
(224, '2023-09-01 05:54:10.743524', '2023-09-04 11:39:05.310809', 154, 'NA', 'NA', 'NA', 'NA'),
(225, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(226, '2023-09-01 09:39:28.913892', '2023-09-01 14:18:42.930511', 155, 'NA', 'NA', 'NA', 'NA'),
(227, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(228, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(229, '2023-09-01 11:22:45.146718', '2023-09-01 11:22:55.159403', 156, 'NA', 'NA', 'NA', 'NA'),
(230, '2023-09-01 11:24:08.081180', '2023-09-01 11:24:14.662772', 157, 'NA', 'NA', 'NA', 'NA'),
(231, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(232, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(233, '2023-09-01 11:27:28.517062', '2023-09-01 11:27:33.495487', 158, 'NA', 'NA', 'NA', 'NA'),
(234, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(235, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(236, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(237, '2023-09-02 06:07:00.682741', '2023-09-02 06:07:15.237268', 159, 'NA', 'NA', 'NA', 'NA'),
(238, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(239, '2023-09-02 06:21:29.871754', '2023-09-02 06:21:34.375225', 160, 'NA', 'NA', 'NA', 'NA'),
(240, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(241, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(242, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(243, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(244, '2023-09-04 07:17:41.606870', '2023-09-04 07:17:47.728098', 161, 'NA', 'NA', 'NA', 'NA'),
(245, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(246, '2023-09-04 07:47:24.617870', '2023-09-04 10:20:33.825932', 161, 'NA', 'NA', 'NA', 'NA'),
(247, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(248, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(249, '2023-09-04 10:20:45.511318', '2023-09-04 10:20:50.395260', 161, 'NA', 'NA', 'NA', 'NA'),
(250, '', '2023-09-04 11:40:14.514867', 161, 'NA', 'NA', '127.0.0.1', 'NA'),
(251, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(252, '', '', 161, 'NA', 'NA', '127.0.0.1', 'NA'),
(253, '', '2023-09-05 03:07:10.151423', 161, 'NA', 'NA', '127.0.0.1', 'NA'),
(254, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(255, '', '2023-09-05 03:25:46.982220', 157, 'NA', 'NA', '127.0.0.1', 'NA'),
(256, '', '2023-09-05 04:43:49.096052', 163, 'NA', 'NA', '127.0.0.1', 'NA'),
(257, '2023-09-05 05:05:40.789312', '2023-09-05 05:31:17.738811', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(258, '2023-09-05 05:31:54.306143', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(259, '2023-09-05 05:37:06.462011', '2023-09-05 05:37:25.632112', 163, 'NA', 'NA', '127.0.0.1', 'NA'),
(260, '2023-09-05 05:37:35.974431', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(261, '2023-09-05 05:38:40.252799', '2023-09-05 09:57:18.006631', 155, 'NA', 'NA', '127.0.0.1', 'NA'),
(262, '2023-09-05 06:51:26.534848', '', 161, 'NA', 'NA', '127.0.0.1', 'NA'),
(263, '2023-09-05 09:57:29.926059', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(264, '2023-09-05 10:15:30.090538', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(265, '2023-09-05 11:08:55.634928', '2023-09-06 05:09:26.851485', 154, 'NA', 'NA', '127.0.0.1', 'NA'),
(266, '2023-09-06 05:09:56.269080', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(267, '2023-09-06 05:10:18.733123', '2023-09-06 05:11:39.100491', 158, 'NA', 'NA', '127.0.0.1', 'NA'),
(268, '2023-09-06 05:11:49.601475', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(269, '2023-09-06 05:12:11.271463', '2023-09-06 05:12:30.960902', 156, 'NA', 'NA', '127.0.0.1', 'NA'),
(270, '2023-09-06 05:12:41.513611', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(271, '2023-09-06 05:12:56.799128', '2023-09-06 05:13:27.183930', 159, 'NA', 'NA', '127.0.0.1', 'NA'),
(272, '2023-09-06 05:13:37.360665', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(273, '2023-09-06 05:13:47.502205', '2023-09-06 05:14:23.993948', 160, 'NA', 'NA', '127.0.0.1', 'NA'),
(274, '2023-09-06 05:14:34.061274', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(275, '2023-09-06 05:14:46.925568', '2023-09-06 05:17:08.317996', 157, 'NA', 'NA', '127.0.0.1', 'NA'),
(276, '2023-09-06 05:17:19.649646', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(277, '2023-09-06 05:17:35.495217', '2023-09-06 06:43:02.869257', 154, 'NA', 'NA', '127.0.0.1', 'NA'),
(278, '2023-09-06 06:43:13.652656', '2023-09-06 06:58:26.995435', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(279, '2023-09-06 06:58:54.656373', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(280, '2023-09-06 06:59:29.302300', '2023-09-06 07:04:42.689359', 154, 'NA', 'NA', '127.0.0.1', 'NA'),
(281, '', '2023-09-06 07:07:47.397928', 164, 'NA', 'NA', '127.0.0.1', 'NA'),
(282, '2023-09-06 07:07:57.523577', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(283, '2023-09-06 10:12:16.449806', '2023-09-07 05:00:54.958589', 154, 'NA', 'NA', '127.0.0.1', 'NA'),
(284, '2023-09-07 05:01:06.244277', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(285, '2023-09-07 05:12:24.344900', '2023-09-07 10:18:46.368717', 155, 'NA', 'NA', '127.0.0.1', 'NA'),
(286, '2023-09-07 10:21:10.905954', '2023-09-07 11:12:25.007889', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(287, '2023-09-07 11:13:19.417897', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(288, '2023-09-07 11:13:39.334050', '2023-09-07 11:15:33.169617', 154, 'NA', 'NA', '127.0.0.1', 'NA'),
(289, '2023-09-07 11:15:45.649891', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(290, '2023-09-07 11:29:10.340966', '2023-09-07 11:53:00.930589', 154, 'NA', 'NA', '127.0.0.1', 'NA'),
(291, '2023-09-07 11:53:11.808616', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(292, '2023-09-07 12:14:53.931458', '2023-09-07 12:16:53.900372', 154, 'NA', 'NA', '127.0.0.1', 'NA'),
(293, '2023-09-07 12:17:05.314027', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(294, '2023-09-08 04:40:08.369455', '', 154, 'NA', 'NA', '127.0.0.1', 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `core_membership`
--

CREATE TABLE `core_membership` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `refferal_commision` varchar(200) NOT NULL,
  `points` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `directincomepercent` varchar(200) NOT NULL,
  `max_amount` varchar(100) DEFAULT NULL,
  `min_amount` varchar(100) NOT NULL,
  `plan_period` varchar(100) DEFAULT NULL,
  `roi` varchar(200) NOT NULL,
  `roi_period` varchar(200) NOT NULL,
  `staking` varchar(100) NOT NULL,
  `overall_roi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_membership`
--

INSERT INTO `core_membership` (`id`, `name`, `refferal_commision`, `points`, `status`, `directincomepercent`, `max_amount`, `min_amount`, `plan_period`, `roi`, `roi_period`, `staking`, `overall_roi`) VALUES
(21, 'Package1', '0', '20', '1', '50', '2500', '50', NULL, '10', '1', 'False', '200'),
(22, 'Package3', '0', '20', '1', '50', '10000', '5050', NULL, '12', '1', 'False', '200'),
(23, 'Package2', '0', '20', '1', '50', '5000', '2550', NULL, '11', '1', 'False', '200');

-- --------------------------------------------------------

--
-- Table structure for table `core_newsmodel`
--

CREATE TABLE `core_newsmodel` (
  `id` bigint(20) NOT NULL,
  `news` varchar(200) NOT NULL,
  `date` varchar(100) NOT NULL,
  `status` varchar(200) NOT NULL,
  `datato` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_newsmodel`
--

INSERT INTO `core_newsmodel` (`id`, `news`, `date`, `status`, `datato`) VALUES
(1, 'hello', '2023-08-03', 'True', '2023-08-16'),
(2, 'hello how are you', '2023-08-21', 'True', '2023-08-29'),
(3, 'hello', '2023-09-06', 'True', '2023-09-07'),
(4, 'Abc ', '2023-09-06', 'True', '2023-09-14');

-- --------------------------------------------------------

--
-- Table structure for table `core_plansmodel`
--

CREATE TABLE `core_plansmodel` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_plansmodel`
--

INSERT INTO `core_plansmodel` (`id`, `name`, `status`) VALUES
(6, 'ROIplan', '');

-- --------------------------------------------------------

--
-- Table structure for table `core_status_activity`
--

CREATE TABLE `core_status_activity` (
  `id` bigint(20) NOT NULL,
  `time` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `amount_freezed` varchar(200) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_status_activity`
--

INSERT INTO `core_status_activity` (`id`, `time`, `status`, `amount_freezed`, `user_id`) VALUES
(73, '2023-09-06 07:06:40.870233', '0', '150', 161),
(74, '2023-09-06 07:06:40.870233', '1', '0', 161);

-- --------------------------------------------------------

--
-- Table structure for table `core_ticketmodel`
--

CREATE TABLE `core_ticketmodel` (
  `id` bigint(20) NOT NULL,
  `question` longtext NOT NULL,
  `answer` longtext NOT NULL,
  `status` varchar(200) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_useraddressdetail`
--

CREATE TABLE `core_useraddressdetail` (
  `id` bigint(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `pincode` varchar(200) NOT NULL,
  `district` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `country` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_usercofounderclub`
--

CREATE TABLE `core_usercofounderclub` (
  `id` bigint(20) NOT NULL,
  `status` varchar(100) NOT NULL,
  `club_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `date` varchar(200) NOT NULL,
  `reward_recieved` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_userunlockedlevel`
--

CREATE TABLE `core_userunlockedlevel` (
  `id` bigint(20) NOT NULL,
  `level_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_userunlockedlevel`
--

INSERT INTO `core_userunlockedlevel` (`id`, `level_id`, `user_id`, `status`) VALUES
(14, 3, 155, '1'),
(15, 3, 154, '1'),
(16, 1, 158, '1'),
(17, 2, 156, '1'),
(18, 2, 159, '1'),
(19, 1, 160, '1'),
(20, 1, 157, '1');

-- --------------------------------------------------------

--
-- Table structure for table `core_userwithdrawls`
--

CREATE TABLE `core_userwithdrawls` (
  `id` bigint(20) NOT NULL,
  `status` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `currency` varchar(200) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `wallet_id` bigint(20) NOT NULL,
  `type` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `fees` varchar(200) NOT NULL,
  `bonus_amount` varchar(250) NOT NULL,
  `direct_amount` varchar(250) NOT NULL,
  `level_amount` varchar(250) NOT NULL,
  `roi_amount` varchar(200) NOT NULL,
  `deposit_amount` varchar(250) NOT NULL,
  `topup_amount` varchar(250) NOT NULL,
  `transfer_amount` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_userwithdrawls`
--

INSERT INTO `core_userwithdrawls` (`id`, `status`, `amount`, `currency`, `address`, `user_id`, `wallet_id`, `type`, `date`, `fees`, `bonus_amount`, `direct_amount`, `level_amount`, `roi_amount`, `deposit_amount`, `topup_amount`, `transfer_amount`) VALUES
(16, '0', '80.0', 'USDT', '', 154, 125, '0', '2023-09-06 10:08:25.412418', '20.0', '250', '0', '0', '0', '0', '0', '0'),
(17, '2', '4.0', 'USDT', '', 155, 126, '0', '2023-09-07 09:40:48.158782', '1.0', '250', '5', '0', '0', '0', '0', '0'),
(18, '1', '80.0', 'USDT', '', 155, 126, '0', '2023-09-07 09:40:48.158782', '20.0', '0', '0.0', '0.0', '0.0', '0.0', '0', '0'),
(19, '0', '40.0', 'USDT', '', 155, 126, '0', '2023-09-07 09:48:33.093277', '10.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0'),
(20, '0', '40.0', 'USDT', '', 155, 126, '0', '2023-09-07 09:57:07.973847', '10.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0'),
(21, '0', '40.0', 'USDT', '', 155, 126, '0', '2023-09-07 10:03:06.384935', '10.0', '0.0', '0.0', '0.0', '50.0', '0.0', '0', '0'),
(22, '0', '40.0', 'USDT', '', 155, 126, '0', '2023-09-07 10:03:06.384935', '10.0', '0.0', '5.5', '0.0', '0.0', '0.0', '0', '0'),
(23, '0', '4.0', 'USDT', '', 155, 126, '0', '2023-09-07 10:13:24.103097', '1.0', '250', '5', '0', '0', '0', '0', '0'),
(24, '0', '80.0', 'USDT', '', 155, 126, '0', '2023-09-07 10:17:12.359876', '20.0', '0.0', '0.0', '0.0', '100.0', '0.0', '0', '0.0'),
(25, '0', '48.0', 'USDT', '', 155, 126, '0', '2023-09-07 10:17:12.359876', '12.0', '20.0', '0.0', '10.5', '0.0', '29.5', '0', '0.0'),
(26, '0', '16.0', 'USDT', '', 154, 125, '0', '2023-09-07 11:13:14.243493', '4.0', '0.0', '0.0', '0.0', '20.0', '0.0', '0', '0.0');

-- --------------------------------------------------------

--
-- Table structure for table `core_withdrawsettingmodel`
--

CREATE TABLE `core_withdrawsettingmodel` (
  `id` bigint(20) NOT NULL,
  `min_amount` varchar(200) NOT NULL,
  `fees` varchar(200) NOT NULL,
  `max_amount` varchar(200) NOT NULL,
  `bscaddress` varchar(250) NOT NULL,
  `dates` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_withdrawsettingmodel`
--

INSERT INTO `core_withdrawsettingmodel` (`id`, `min_amount`, `fees`, `max_amount`, `bscaddress`, `dates`) VALUES
(1, '5', '20', '5000', 'uui4g3iug4iu3b4i3u5gi4g5u', '7,20');

-- --------------------------------------------------------

--
-- Table structure for table `core_youtubevideo`
--

CREATE TABLE `core_youtubevideo` (
  `id` bigint(20) NOT NULL,
  `videolink` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `type` varchar(255) NOT NULL,
  `sequence` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_youtubevideo`
--

INSERT INTO `core_youtubevideo` (`id`, `videolink`, `status`, `type`, `sequence`) VALUES
(1, 'https://www.youtube.com/embed/45BNUfZRfoQ?si=5nkUAOfdfhxie4U7\"', '1', '1', '0'),
(2, 'https://www.youtube.com/embed/45BNUfZRfoQ?si=5nkUAOfdfhxie4U7\"', '1', '2', '1'),
(3, 'https://www.youtube.com/embed/45BNUfZRfoQ?si=5nkUAOfdfhxie4U7\"', '1', '2', '1'),
(4, 'https://www.youtube.com/embed/FewUSkeDNnc?si=tsye_wuYsmUhXuqm\"', '1', '2', '3');

-- --------------------------------------------------------

--
-- Table structure for table `current_level`
--

CREATE TABLE `current_level` (
  `id` bigint(20) NOT NULL,
  `level_id` varchar(200) NOT NULL,
  `points` varchar(200) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `current_level`
--

INSERT INTO `current_level` (`id`, `level_id`, `points`, `user_id`) VALUES
(125, '0', '0', 154),
(126, '0', '0', 155),
(127, '0', '0', 156),
(128, '0', '0', 157),
(129, '0', '0', 158),
(130, '0', '0', 159),
(131, '0', '0', 160),
(132, '0', '0', 161),
(133, '0', '0', 162),
(134, '0', '0', 163),
(135, '0', '0', 1),
(136, '0', '0', 164);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(29, 'account', 'emailaddress'),
(30, 'account', 'emailconfirmation'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(35, 'core', 'appsettings'),
(48, 'core', 'businesslogs'),
(51, 'core', 'categorymodel'),
(50, 'core', 'changesponserlogs'),
(46, 'core', 'cofounderclub'),
(14, 'core', 'current_level'),
(16, 'core', 'emailservice'),
(44, 'core', 'farmingroilogs'),
(37, 'core', 'fastrackmodel'),
(41, 'core', 'gallaryimages'),
(38, 'core', 'levelincome'),
(7, 'core', 'levels'),
(13, 'core', 'login_history'),
(49, 'core', 'manageroi'),
(17, 'core', 'membership'),
(34, 'core', 'newsmodel'),
(23, 'core', 'plansmodel'),
(42, 'core', 'ptransfer'),
(8, 'core', 'rank'),
(43, 'core', 'stakingroilogs'),
(15, 'core', 'status_activity'),
(21, 'core', 'ticketmodel'),
(12, 'core', 'transactions'),
(6, 'core', 'user'),
(36, 'core', 'useraddressdetail'),
(47, 'core', 'usercofounderclub'),
(18, 'core', 'usermembership'),
(11, 'core', 'userrank'),
(10, 'core', 'userreferral'),
(40, 'core', 'userstaking'),
(39, 'core', 'userunlockedlevel'),
(19, 'core', 'userwithdrawls'),
(9, 'core', 'wallet'),
(20, 'core', 'withdrawsettingmodel'),
(45, 'core', 'youtubevideo'),
(5, 'sessions', 'session'),
(31, 'socialaccount', 'socialaccount'),
(32, 'socialaccount', 'socialapp'),
(33, 'socialaccount', 'socialtoken'),
(24, 'social_django', 'association'),
(25, 'social_django', 'code'),
(26, 'social_django', 'nonce'),
(28, 'social_django', 'partial'),
(27, 'social_django', 'usersocialauth'),
(22, 'userapp', 'verify');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-07-09 11:28:14.227867'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-07-09 11:28:14.280738'),
(3, 'auth', '0001_initial', '2023-07-09 11:28:14.489109'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-07-09 11:28:14.541357'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-07-09 11:28:14.548355'),
(6, 'auth', '0004_alter_user_username_opts', '2023-07-09 11:28:14.556427'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-07-09 11:28:14.562534'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-07-09 11:28:14.565514'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-07-09 11:28:14.572660'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-07-09 11:28:14.578542'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-07-09 11:28:14.585544'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-07-09 11:28:14.608056'),
(13, 'auth', '0011_update_proxy_permissions', '2023-07-09 11:28:14.613620'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-07-09 11:28:14.620621'),
(15, 'auth', '0013_alter_user_username', '2023-07-09 11:28:14.628122'),
(16, 'core', '0001_initial', '2023-07-09 11:28:15.432138'),
(17, 'admin', '0001_initial', '2023-07-09 11:28:15.546074'),
(18, 'admin', '0002_logentry_remove_auto_add', '2023-07-09 11:28:15.559313'),
(19, 'admin', '0003_logentry_add_action_flag_choices', '2023-07-09 11:28:15.569694'),
(20, 'sessions', '0001_initial', '2023-07-09 11:28:15.610086'),
(21, 'core', '0002_alter_user_created_at_alter_user_referal_code_and_more', '2023-07-10 04:39:48.689880'),
(22, 'core', '0003_alter_user_created_at_alter_user_referal_code_and_more', '2023-07-10 04:39:48.717587'),
(23, 'core', '0004_alter_user_created_at_alter_user_referal_code_and_more', '2023-07-10 04:48:08.066752'),
(24, 'core', '0005_userrank_points_alter_user_created_at_and_more', '2023-07-10 07:59:33.197947'),
(25, 'core', '0006_alter_user_created_at_alter_user_updated_at_and_more', '2023-07-13 05:45:46.934449'),
(26, 'core', '0007_emailservice_alter_status_activity_time_and_more', '2023-07-13 07:04:41.939129'),
(27, 'core', '0008_emailservice_status_alter_status_activity_time_and_more', '2023-07-13 07:05:23.383478'),
(28, 'core', '0009_alter_emailservice_service_and_more', '2023-07-13 07:42:06.824628'),
(29, 'core', '0010_user_member_plan_alter_status_activity_time_and_more', '2023-07-13 10:51:46.872198'),
(30, 'core', '0011_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-13 10:53:53.897649'),
(31, 'core', '0012_user_activation_date_alter_status_activity_time_and_more', '2023-07-13 10:55:47.260430'),
(32, 'core', '0013_user_paid_members_alter_status_activity_time_and_more', '2023-07-13 11:12:34.663650'),
(33, 'core', '0014_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-13 11:12:52.877110'),
(34, 'core', '0015_membership_alter_status_activity_time_and_more', '2023-07-13 11:37:32.571834'),
(35, 'core', '0016_membership_refferal_commision_and_more', '2023-07-13 11:54:28.696723'),
(36, 'core', '0017_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 04:18:09.708013'),
(37, 'core', '0018_withdrawsettingmodel_alter_status_activity_time_and_more', '2023-07-14 04:48:56.505884'),
(38, 'core', '0019_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 05:04:09.014936'),
(39, 'core', '0020_membership_points_alter_status_activity_time_and_more', '2023-07-14 05:11:46.807161'),
(40, 'core', '0021_membership_status_alter_status_activity_time_and_more', '2023-07-14 05:37:46.332026'),
(41, 'core', '0022_usermembership_date_alter_status_activity_time_and_more', '2023-07-14 05:55:23.951092'),
(42, 'core', '0023_remove_withdrawsettingmodel_currency_and_more', '2023-07-14 07:23:59.622543'),
(43, 'core', '0024_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 07:30:59.684170'),
(44, 'core', '0025_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 07:30:59.740592'),
(45, 'core', '0026_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 07:46:05.649175'),
(46, 'core', '0027_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 07:47:48.886490'),
(47, 'core', '0028_delete_withdrawsettingmodel_and_more', '2023-07-14 07:52:14.292788'),
(48, 'core', '0029_withdrawsettingmodel_alter_status_activity_time_and_more', '2023-07-14 07:53:56.930143'),
(49, 'core', '0030_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 07:55:30.822166'),
(50, 'core', '0031_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 07:56:21.553718'),
(51, 'core', '0032_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 07:56:29.679372'),
(52, 'core', '0033_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 07:56:49.030341'),
(53, 'core', '0034_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 07:57:16.913433'),
(54, 'core', '0035_withdrawsettingmodel_max_amount_and_more', '2023-07-14 07:58:19.196518'),
(55, 'core', '0036_ticketmodel_title_alter_status_activity_time_and_more', '2023-07-14 11:18:23.711904'),
(56, 'core', '0037_alter_status_activity_time_alter_ticketmodel_answer_and_more', '2023-07-14 11:23:59.441998'),
(57, 'core', '0038_remove_user_member_plan_alter_status_activity_time_and_more', '2023-07-15 11:03:27.105992'),
(58, 'core', '0039_user_phone_no_alter_status_activity_time_and_more', '2023-07-20 11:35:33.546736'),
(59, 'core', '0040_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-21 04:57:35.351861'),
(60, 'userapp', '0001_initial', '2023-07-21 04:57:35.486718'),
(61, 'core', '0041_remove_transactions_transactions_transactions_amount_and_more', '2023-07-24 05:15:18.115622'),
(62, 'core', '0042_transactions_address_transactions_type_and_more', '2023-07-24 05:22:37.027442'),
(63, 'core', '0043_login_history_city_login_history_country_and_more', '2023-07-24 08:32:35.945840'),
(64, 'core', '0044_plansmodel_alter_status_activity_time_and_more', '2023-07-26 05:36:03.999522'),
(65, 'core', '0045_membership_plan_id_alter_status_activity_time_and_more', '2023-07-26 05:37:49.989775'),
(66, 'core', '0046_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-29 09:38:45.032360'),
(67, 'default', '0001_initial', '2023-07-29 09:38:45.305661'),
(68, 'social_auth', '0001_initial', '2023-07-29 09:38:45.309167'),
(69, 'default', '0002_add_related_name', '2023-07-29 09:38:45.327119'),
(70, 'social_auth', '0002_add_related_name', '2023-07-29 09:38:45.330110'),
(71, 'default', '0003_alter_email_max_length', '2023-07-29 09:38:45.355490'),
(72, 'social_auth', '0003_alter_email_max_length', '2023-07-29 09:38:45.357652'),
(73, 'default', '0004_auto_20160423_0400', '2023-07-29 09:38:45.375915'),
(74, 'social_auth', '0004_auto_20160423_0400', '2023-07-29 09:38:45.378729'),
(75, 'social_auth', '0005_auto_20160727_2333', '2023-07-29 09:38:45.404784'),
(76, 'social_django', '0006_partial', '2023-07-29 09:38:45.454158'),
(77, 'social_django', '0007_code_timestamp', '2023-07-29 09:38:45.509891'),
(78, 'social_django', '0008_partial_timestamp', '2023-07-29 09:38:45.562226'),
(79, 'social_django', '0009_auto_20191118_0520', '2023-07-29 09:38:45.645639'),
(80, 'social_django', '0010_uid_db_index', '2023-07-29 09:38:45.705084'),
(81, 'social_django', '0011_alter_id_fields', '2023-07-29 09:38:45.967481'),
(82, 'social_django', '0002_add_related_name', '2023-07-29 09:38:45.975594'),
(83, 'social_django', '0001_initial', '2023-07-29 09:38:45.982734'),
(84, 'social_django', '0005_auto_20160727_2333', '2023-07-29 09:38:45.986227'),
(85, 'social_django', '0003_alter_email_max_length', '2023-07-29 09:38:45.989225'),
(86, 'social_django', '0004_auto_20160423_0400', '2023-07-29 09:38:45.991224'),
(87, 'account', '0001_initial', '2023-07-29 10:13:02.275341'),
(88, 'account', '0002_email_max_length', '2023-07-29 10:13:02.313838'),
(89, 'socialaccount', '0001_initial', '2023-07-29 10:13:02.615868'),
(90, 'socialaccount', '0002_token_max_lengths', '2023-07-29 10:13:02.692346'),
(91, 'socialaccount', '0003_extra_data_default_dict', '2023-07-29 10:13:02.739183'),
(92, 'core', '0047_newsmodel_alter_status_activity_time_and_more', '2023-08-02 05:14:35.370863'),
(93, 'core', '0048_newsmodel_datato_alter_newsmodel_date_and_more', '2023-08-02 05:23:38.736643'),
(94, 'core', '0049_appsettings_alter_newsmodel_date_and_more', '2023-08-03 09:35:10.504275'),
(95, 'core', '0050_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-03 11:48:14.986323'),
(96, 'core', '0051_alter_appsettings_aboutus_alter_newsmodel_date_and_more', '2023-08-03 11:58:33.989770'),
(97, 'core', '0052_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-04 06:13:38.108602'),
(98, 'core', '0053_useraddressdetail_country_alter_newsmodel_date_and_more', '2023-08-04 06:15:20.751118'),
(99, 'core', '0054_membership_directincomepercent_alter_newsmodel_date_and_more', '2023-08-04 07:45:04.389009'),
(100, 'core', '0055_levels_fifthpoints_levels_forthpoints_and_more', '2023-08-04 08:15:55.855202'),
(101, 'core', '0056_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-04 10:42:04.569555'),
(102, 'core', '0057_usermembership_status_alter_newsmodel_date_and_more', '2023-08-05 06:14:02.945151'),
(103, 'core', '0058_wallet_reserved_balance_alter_newsmodel_date_and_more', '2023-08-05 10:47:39.476782'),
(104, 'core', '0059_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-05 10:56:07.835004'),
(105, 'core', '0060_userreferral_refferal_income_alter_newsmodel_date_and_more', '2023-08-05 10:59:01.677275'),
(106, 'core', '0061_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-05 11:13:28.471577'),
(107, 'core', '0062_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-05 11:24:29.407995'),
(108, 'core', '0063_rename_refferal_income_levelincome_level_income_and_more', '2023-08-05 11:27:26.902675'),
(109, 'core', '0064_levels_plan_id_alter_newsmodel_date_and_more', '2023-08-05 12:11:58.366768'),
(110, 'core', '0065_remove_levels_plan_id_alter_newsmodel_date_and_more', '2023-08-05 12:13:49.540790'),
(111, 'core', '0066_fastrackmodel_income_alter_newsmodel_date_and_more', '2023-08-07 06:33:23.891495'),
(112, 'core', '0067_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-07 06:33:30.834733'),
(113, 'core', '0068_fastrackmodel_status_alter_newsmodel_date_and_more', '2023-08-07 06:40:37.759568'),
(114, 'core', '0069_fastrackmodel_right_child_and_more', '2023-08-07 06:55:00.499281'),
(115, 'core', '0070_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-07 07:03:18.727520'),
(116, 'core', '0071_remove_fastrackmodel_left_child_and_more', '2023-08-07 07:05:27.610306'),
(117, 'core', '0072_fastrackmodel_left_child_fastrackmodel_right_child_and_more', '2023-08-07 07:05:56.599335'),
(118, 'core', '0073_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-07 07:13:50.299134'),
(119, 'core', '0074_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-07 07:18:22.082972'),
(120, 'core', '0075_fastrackmodel_plan_id_alter_newsmodel_date_and_more', '2023-08-07 08:08:40.756359'),
(121, 'core', '0076_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-07 08:27:00.625026'),
(122, 'core', '0077_ticketmodel_date_alter_newsmodel_date_and_more', '2023-08-08 10:10:13.563289'),
(123, 'core', '0078_remove_membership_amount_membership_max_amount_and_more', '2023-08-11 12:21:12.524390'),
(124, 'core', '0079_membership_overall_roi_alter_newsmodel_date_and_more', '2023-08-11 12:35:20.677361'),
(125, 'core', '0080_usermembership_roi_recieved_alter_newsmodel_date_and_more', '2023-08-14 07:06:07.910023'),
(126, 'core', '0081_remove_levels_fifthpoints_remove_levels_forthpoints_and_more', '2023-08-16 05:09:25.773937'),
(127, 'core', '0082_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-16 06:17:43.854704'),
(128, 'core', '0083_userstaking_roi_recieved_alter_newsmodel_date_and_more', '2023-08-16 06:27:19.206592'),
(129, 'core', '0084_appsettings_status_alter_newsmodel_date_and_more', '2023-08-19 06:45:57.869475'),
(130, 'core', '0085_gallaryimages_alter_newsmodel_date_and_more', '2023-08-19 12:13:12.499545'),
(131, 'core', '0086_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-20 12:05:53.244818'),
(132, 'core', '0087_userwithdrawls_type_alter_newsmodel_date_and_more', '2023-08-20 12:38:25.554183'),
(133, 'core', '0088_userwithdrawls_date_alter_newsmodel_date_and_more', '2023-08-20 13:34:57.792780'),
(134, 'core', '0089_transactions_user_id_alter_newsmodel_date_and_more', '2023-08-20 14:43:49.243812'),
(135, 'core', '0090_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-20 14:52:36.141155'),
(136, 'core', '0091_alter_newsmodel_date_alter_ptransfer_date_and_more', '2023-08-20 14:53:40.984782'),
(137, 'core', '0092_alter_newsmodel_date_alter_ptransfer_date_and_more', '2023-08-21 05:45:43.301736'),
(138, 'core', '0093_youtubevideo_alter_farmingroilogs_date_and_more', '2023-08-22 05:03:41.791185'),
(139, 'core', '0094_farmingroilogs_roi_alter_farmingroilogs_date_and_more', '2023-08-22 07:59:58.279261'),
(140, 'core', '0095_ptransfer_currency_alter_farmingroilogs_date_and_more', '2023-08-23 13:13:37.383677'),
(141, 'core', '0096_remove_rank_points_rank_business_required_rank_image_and_more', '2023-08-24 04:53:06.427693'),
(142, 'core', '0097_rank_status_alter_farmingroilogs_date_and_more', '2023-08-24 05:03:35.249526'),
(143, 'core', '0098_cofounderclub_alter_farmingroilogs_date_and_more', '2023-08-24 06:10:54.707293'),
(144, 'core', '0099_usercofounderclub_date_alter_farmingroilogs_date_and_more', '2023-08-24 06:17:44.642557'),
(145, 'core', '0100_alter_cofounderclub_club_alter_cofounderclub_status_and_more', '2023-08-24 06:43:08.028627'),
(146, 'core', '0101_userrank_status_alter_farmingroilogs_date_and_more', '2023-08-24 07:00:31.284959'),
(147, 'core', '0102_userrank_overallbusiness_alter_farmingroilogs_date_and_more', '2023-08-24 07:04:38.297866'),
(148, 'core', '0103_userrank_date_alter_farmingroilogs_date_and_more', '2023-08-24 07:16:47.627704'),
(149, 'core', '0104_userunlockedlevel_plan_id_userunlockedlevel_status_and_more', '2023-08-24 11:06:06.136193'),
(150, 'core', '0105_remove_userunlockedlevel_plan_id_and_more', '2023-08-24 11:37:29.368863'),
(151, 'core', '0106_user_business_alter_farmingroilogs_date_and_more', '2023-08-26 05:23:40.040408'),
(152, 'core', '0107_alter_farmingroilogs_date_alter_newsmodel_date_and_more', '2023-08-26 05:33:01.583619'),
(153, 'core', '0108_levelincome_date_alter_farmingroilogs_date_and_more', '2023-08-26 05:44:31.199512'),
(154, 'core', '0109_remove_userrank_overallbusiness_and_more', '2023-08-26 06:07:58.495868'),
(155, 'core', '0110_alter_businesslogs_date_alter_farmingroilogs_date_and_more', '2023-08-26 06:09:55.896265'),
(156, 'core', '0111_remove_usercofounderclub_reward_recieved_and_more', '2023-08-26 06:42:32.839526'),
(157, 'core', '0112_usercofounderclub_reward_recieved_and_more', '2023-08-26 06:44:29.898006'),
(158, 'core', '0113_userrank_income_alter_businesslogs_date_and_more', '2023-08-26 06:52:58.516902'),
(159, 'core', '0114_levelincome_status_alter_businesslogs_date_and_more', '2023-08-26 09:14:02.744634'),
(160, 'core', '0115_gallaryimages_aboutus_alter_businesslogs_date_and_more', '2023-08-26 09:51:49.930474'),
(161, 'core', '0116_rename_aboutus_gallaryimages_title_and_more', '2023-08-26 09:55:51.687212'),
(162, 'core', '0117_youtubevideo_type_alter_businesslogs_date_and_more', '2023-08-29 06:33:19.100725'),
(163, 'core', '0118_youtubevideo_sequence_alter_businesslogs_date_and_more', '2023-08-29 09:44:35.419875'),
(164, 'core', '0119_usermembership_next_date_userstaking_expire_date_and_more', '2023-08-31 05:59:33.611778'),
(165, 'core', '0120_user_farming_roi_user_level_income_user_staking_roi_and_more', '2023-08-31 09:49:12.103820'),
(166, 'core', '0121_rename_farming_roi_user_farming_roi_status_and_more', '2023-08-31 10:02:40.850412'),
(167, 'core', '0122_manageroi_alter_businesslogs_date_and_more', '2023-08-31 10:04:56.097531'),
(168, 'core', '0123_userreferral_date_alter_businesslogs_date_and_more', '2023-08-31 11:45:41.655659'),
(169, 'core', '0124_userreferral_status_alter_businesslogs_date_and_more', '2023-08-31 11:49:14.500023'),
(170, 'core', '0125_userwithdrawls_fees_alter_businesslogs_date_and_more', '2023-09-01 06:39:24.313330'),
(171, 'core', '0126_withdrawsettingmodel_bscaddress_and_more', '2023-09-01 07:42:16.963538'),
(172, 'core', '0127_alter_businesslogs_date_alter_farmingroilogs_date_and_more', '2023-09-02 12:19:03.772185'),
(173, 'core', '0128_alter_businesslogs_date_alter_farmingroilogs_date_and_more', '2023-09-02 12:20:02.086071'),
(174, 'core', '0129_alter_businesslogs_date_alter_farmingroilogs_date_and_more', '2023-09-02 12:30:59.624236'),
(175, 'core', '0130_alter_businesslogs_date_alter_farmingroilogs_date_and_more', '2023-09-02 12:32:13.310481'),
(176, 'core', '0131_alter_businesslogs_date_alter_farmingroilogs_date_and_more', '2023-09-02 12:35:12.136649'),
(177, 'core', '0002_alter_businesslogs_date_alter_changesponserlogs_date_and_more', '2023-09-04 06:07:48.775398'),
(178, 'core', '0003_alter_businesslogs_date_alter_changesponserlogs_date_and_more', '2023-09-05 04:54:50.230097'),
(179, 'core', '0004_alter_businesslogs_date_alter_changesponserlogs_date_and_more', '2023-09-05 04:54:50.607138'),
(180, 'core', '0005_alter_businesslogs_date_alter_changesponserlogs_date_and_more', '2023-09-05 04:54:50.940935'),
(181, 'core', '0006_remove_membership_plan_id_alter_businesslogs_date_and_more', '2023-09-05 05:18:17.939981'),
(182, 'core', '0007_alter_businesslogs_date_alter_businesslogs_plan_id_and_more', '2023-09-05 09:18:55.764148'),
(183, 'core', '0008_wallet_level_balance_wallet_referral_balance_and_more', '2023-09-05 09:55:24.260813'),
(184, 'core', '0009_rank_days_alter_businesslogs_date_and_more', '2023-09-05 10:33:24.282833'),
(185, 'core', '0010_withdrawsettingmodel_dates_alter_businesslogs_date_and_more', '2023-09-06 07:43:30.310467'),
(186, 'core', '0011_alter_businesslogs_date_alter_changesponserlogs_date_and_more', '2023-09-06 07:44:50.145258'),
(187, 'core', '0012_wallet_bonus_balance_alter_businesslogs_date_and_more', '2023-09-06 10:46:49.626659'),
(188, 'core', '0013_userwithdrawls_bonus_amount_and_more', '2023-09-06 12:01:12.117562'),
(189, 'core', '0014_wallet_deposit_balance_wallet_topup_balance_and_more', '2023-09-07 05:54:57.277188'),
(190, 'core', '0015_userwithdrawls_deposit_amount_and_more', '2023-09-07 08:09:34.823579'),
(191, 'core', '0016_alter_businesslogs_date_alter_changesponserlogs_date_and_more', '2023-09-07 10:16:02.548113'),
(192, 'core', '0017_alter_businesslogs_date_alter_changesponserlogs_date_and_more', '2023-09-07 12:52:49.254646'),
(193, 'core', '0018_usermembership_c_id_alter_businesslogs_date_and_more', '2023-09-08 04:39:01.019318');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0tspg1r34oqjvpy6jh5vgxw720g5acf4', 'eyJlbWFpbCI6Inh5ekBnbWFpbC5jb20iLCJyb2xlIjoidXNlciJ9:1qZo9J:BN9nRN02shDPEc10razh7SvdiCDasxYWb9nCzYkbgyo', '2023-09-09 07:56:01.067517'),
('7c99ga078yqx1bcw3hckcyb7alb5aurw', '.eJwljMkOgjAABf-lZyWAwQRPsmoJ0LiAyo02VcpSCFgJGv_dEo8zb_I-gDY5q8EGDDkpGFdVbfuYjULaBixA39ZUjmKgvaRnW1EukU5BgXeEIRbA5A21mMEB8qNBHLiGVXdNncBUZFTji9_hWfK4uOlFh0trjBKb_71RYl1loRPUdG8xVHo6OkcGcqMRuZk8oMtJ4N7z_Ps4iGyVdn5uh6-TGbHeTMxS-AeVZpOwXQK-PxTQQnA:1qdPuI:vUsupo2jH3wuigpZmG7YyqcZrOYHDQ87K7eixzZny4w', '2023-09-19 06:51:26.578771'),
('b4e1yzxmdcrlflxke9v2c3e3ocx753kb', 'eyJlbWFpbCI6Inh5ekBnbWFpbC5jb20iLCJyb2xlIjoidXNlciJ9:1qZrYQ:sYtrBK3F5YtObJxNFqO-jgVQ5FfQOuB0cFHGNDr-EBU', '2023-09-09 11:34:10.312498'),
('cngr36xz9x7moohcra88wfvdcd9mwltv', 'eyJnb29nbGUtb2F1dGgyX3N0YXRlIjoiRDhzd09YS0lYQllRTHFucWFtMkxjczFFVkQ5ZzFFTU8ifQ:1qQLeR:TI6RI3784pN1sjA-JEcuprhmjaf0W658OhejDAKL81s', '2023-08-14 05:41:03.548750'),
('g2hm2q0lnf5pz8kagcc008tuvvbi0ga5', '.eJxVkEFPhDAQhf9Lz0paoNvFk150s3FFsh68NUM7hYZCDYVEY_zvtuse5DSZ9-abN5lv0nnfObz1sC59LsMCC5I78vIenvFtbZqhfhSHr_3x3Jw-zjWyobd4ev0kN0QmQq4BZ2l1RFjOt2oLasApWcErC04qP2N2VUP2F5w9XUr9kOK3fA-hjzAWWpcMdwY516VhplVamQJEpSktKg77Co2hQpSM53FIV5xyTUG0O8aMaOPSa_5ltYOwSOc7O_07cPOECOAI1kV9hMned6nJlB-jMXuX3pPuIz-_Fvhq2A:1qcRrl:MUSvoJ77m5D3xqE00O2OD6li1gNAVJjsUsLR6SUoBCM', '2023-09-16 14:44:49.616151'),
('hap09kaelkrx9e82phi5kjrs49drxc8y', 'eyJlbWFpbCI6Inh5ekBnbWFpbC5jb20iLCJyb2xlIjoidXNlciJ9:1qXz9d:zkyRcnfh6lDmsmLzlgOgIfNgotBpTnNlxYt_363W8bA', '2023-09-04 07:16:49.954014'),
('hi1wz84e679wfej8zejtjhm5x0fizw77', 'eyJlbWFpbCI6InNodWJoYW1ib3hmeUBnbWFpbC5jb20iLCJyb2xlIjoiYWRtaW4ifQ:1qXNXn:CxAHzTVGFjHERvN5X85OpWcfFrzdOfOwUjeu6HwGEx4', '2023-09-02 15:07:15.340175'),
('hwfba1wcdhswflkyaebtgbnb7u1vyh74', 'eyJnb29nbGUtb2F1dGgyX3N0YXRlIjoiUWJzR3VzdEk0ZnU4ek1WMGxzSXFsbUo2c0VCSGF3ZU8ifQ:1qPgYQ:2q6kJEpUsauF07RyzZ3w4EgRZGe8XmOUqabqUsisA3g', '2023-08-12 09:48:06.239172'),
('jcb80jcobajwoy76oszrh79e9zwkavwf', 'eyJlbWFpbCI6Inh5ekBnbWFpbC5jb20iLCJyb2xlIjoidXNlciJ9:1qbbx2:6eL757F-SdFZf8_gCRtd3lXrzT9vy7IxpILmmnDnatQ', '2023-09-14 07:18:48.881040'),
('kbssk4dfpm2uijibg6cpmxmbxyyw6gxe', 'e30:1qNsmM:A_OhqFFSGsWQtlshPkfubOHR9KAPAx4QHvrC5bOTfEo', '2023-08-07 10:27:02.095952'),
('kxukd2jsnghzu56jvck5s1zp2auz02po', '.eJwVjssOgjAUBf-layHgK8GV-MKLEdGIgDvAKoW2kEIDYvx363LmnMV8kMANbtECXYXEaITaqsRcIX67eepk5ERcCAYwPQIN8MssW8Mcyjq6rV1LVyeahrs6_Utm5imj9n1s5knYyXhstUA6co_yDoqq94rSOBZHw9vY0-dZF74RaB2xa-fRg6Vx5xzXwYz6_GRPQrka5Ha_YiLQDkOmqjBLCFVVLOFk-fqDnlVMDaKiWHnZYIG-P2UlRAg:1qeTHs:F2OPkGcHrcn5MjX8jUZj_xD0-hSkeYfNwYWNivulXeM', '2023-09-22 04:40:08.381124'),
('le86bs9uj50uep2puqff8d1ysy2rtuhp', 'eyJlbWFpbCI6InNhY2hpbmJveGZ5QGdtYWlsLmNvbSIsInJvbGUiOiJ1c2VyIn0:1qMpaP:KLW4yo13IT8KTBlVdFV-qX06AaNkCTOZaWP5Cc9tFG4', '2023-08-04 12:50:21.881240'),
('m8pqyztf92uu04732qxn06gwqek1f69a', '.eJxVjsEKwjAQRP8lZy1Jumlab-JBKRZFEb2FJE3aam3QRBDEf7dqD3padnZn5j2QkLdQi5s3V9GUaIIIBTT6VZXUJ9O9T97pRrZCu6uJBtVHlXNVa6L5Z6ymvY3--2vp696MIbPAE44tozZlmYQMbEwNIalW2gKxvExSDIqyOCM0AawUJxYwZTxmRPWhQ_8nupU-iNZVTfcD-GUZOzlQ_O3CBxlM_7U9H-K7DQVJl5fDfG1m-6TLF9Vxs8uh8AuGni9Wd1t4:1qPhVh:AvK3u5aXmgs-odl0YoRWTXx3hv-OWG6ttDJMqFDSTiE', '2023-08-12 10:49:21.969154'),
('mmm3sk6yb7gdcbex6cyajr4iyv3689rn', 'eyJlbWFpbCI6Inh5ekBnbWFpbC5jb20iLCJyb2xlIjoidXNlciJ9:1qZA9I:PjX8x2qnHP9JFDcHfaw0Wh2SJ3qBr8v0O8eyQXFzFk0', '2023-09-07 13:13:20.626249'),
('pqs2vw1mops7sjj765s8rrp70qcqtvcj', 'eyJyZXNldCI6IlRydWUiLCJlbWFpbCI6ImFtYXJqb3RzaW5naEBnbWFpbC5jb20ifQ:1qZskN:rhk3J_59wZgWlADwEbCL97MzTnyw5tlvE1bLP_s4uIo', '2023-09-09 12:50:35.033324'),
('szmqxk6aqe4sgo7au3z9qcb71hv97a64', '.eJwlittugjAYgN-l1xtBDGZ4NSQTy4Q6hemuDK1_bAu22HqYLL67Nbv8Dn_IgIUTGqPSnAG9IDjUonVoa8aF8v3B-_5pPKYPrhrdgotnC8bRSTegHMIt4zRlgogMVz0eFAJbrJYhS_AIN93mO8kiz00tXU87-pSq4D8B76iMr3k1Uf8-lDTwxTzJWpjFgsiPgJR5mJdf17zfRZ4cLnVwW7wep79JGpWS608Tx5fLqiE1G771M1KxrZ0UNtXo_gDtMUc2:1qd7wc:VxO_3N0k264VggeUaj1GP5NsaRJGNIuw0iHKZpfVj8s', '2023-09-18 11:40:38.004409'),
('ufnq4d46s6ufq9i3veoyfm4vym85rj7t', 'eyJlbWFpbCI6Inh5ekBnbWFpbC5jb20iLCJyb2xlIjoidXNlciJ9:1qZrEH:zGhk3tdsqRxbRmXmpuEr-mm2_GZA_2bANEp4jm2VKJ8', '2023-09-09 11:13:21.787768'),
('vjpf7gbj61olkm0bjctfylj2hz2um125', 'eyJlbWFpbCI6Inh5ekBnbWFpbC5jb20iLCJyb2xlIjoidXNlciJ9:1qOH9J:s3rgBZLDQBtLcKTY3HX-PWq4e46DVMM4MpOq9Uq_y-c', '2023-08-08 12:28:21.496346'),
('w18mcml6udvai3m01stpf8ahe0rugcbt', 'eyJlbWFpbCI6Inh5ekBnbWFpbC5jb20iLCJyb2xlIjoidXNlciJ9:1qZoHq:Yzpc-VhxE1-7nFQgdbyupEPLZMfDbSZ-9BFIzsAXJ7I', '2023-09-09 08:04:50.991745'),
('zsvix2b2zrt7wykeabeidzlazlal9vcd', 'eyJnb29nbGUtb2F1dGgyX3N0YXRlIjoiQUk4UjNJZmtkSmhnTHhpWVdKbjZLTkg4a09CWFdybHciLCJlbWFpbCI6ImthcmFucmFuYUBnbWFpbC5jb20iLCJyb2xlIjoidXNlciJ9:1qRsIR:LZFIBwfBoxNvt1N2yGiyv5_1bZJFaY0aNP42bczbapI', '2023-08-18 10:44:39.442752');

-- --------------------------------------------------------

--
-- Table structure for table `farmingroilogs`
--

CREATE TABLE `farmingroilogs` (
  `id` bigint(20) NOT NULL,
  `date` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `plan_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `roi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `farmingroilogs`
--

INSERT INTO `farmingroilogs` (`id`, `date`, `status`, `plan_id`, `user_id`, `roi`) VALUES
(1, '2023-09-06 00:00:00', '1', 45, 155, '10.0'),
(2, '2023-09-06 00:00:00', '1', 46, 155, '15.0'),
(3, '2023-09-06 00:00:00', '1', 47, 154, '10.0'),
(4, '2023-09-06 00:00:00', '1', 45, 155, '10.0'),
(5, '2023-09-06 00:00:00', '1', 46, 155, '15.0'),
(6, '2023-09-06 00:00:00', '1', 47, 154, '10.0'),
(7, '2023-09-06 00:00:00', '1', 48, 158, '10.0'),
(8, '2023-09-06 00:00:00', '1', 49, 156, '5.0'),
(9, '2023-09-06 00:00:00', '1', 50, 159, '10.0'),
(10, '2023-09-06 00:00:00', '1', 51, 160, '10.0'),
(11, '2023-09-06 00:00:00', '1', 52, 157, '30.0'),
(12, '2023-09-06 00:00:00', '1', 45, 155, '10.0'),
(13, '2023-09-06 00:00:00', '1', 46, 155, '15.0'),
(14, '2023-09-06 00:00:00', '1', 47, 154, '10.0'),
(15, '2023-09-06 00:00:00', '1', 48, 158, '10.0'),
(16, '2023-09-06 00:00:00', '1', 49, 156, '5.0'),
(17, '2023-09-06 00:00:00', '1', 50, 159, '10.0'),
(18, '2023-09-06 00:00:00', '1', 51, 160, '10.0'),
(19, '2023-09-06 00:00:00', '1', 52, 157, '30.0'),
(20, '2023-09-06 00:00:00', '1', 45, 155, '10.0'),
(21, '2023-09-06 00:00:00', '1', 46, 155, '15.0'),
(22, '2023-09-06 00:00:00', '1', 47, 154, '10.0'),
(23, '2023-09-06 00:00:00', '1', 48, 158, '10.0'),
(24, '2023-09-06 00:00:00', '1', 49, 156, '5.0'),
(25, '2023-09-06 00:00:00', '1', 50, 159, '10.0'),
(26, '2023-09-06 00:00:00', '1', 51, 160, '10.0'),
(27, '2023-09-06 00:00:00', '1', 52, 157, '30.0'),
(28, '2023-09-06 00:00:00', '1', 45, 155, '10.0'),
(29, '2023-09-06 00:00:00', '1', 46, 155, '15.0'),
(30, '2023-09-06 00:00:00', '1', 47, 154, '10.0'),
(31, '2023-09-06 00:00:00', '1', 48, 158, '10.0'),
(32, '2023-09-06 00:00:00', '1', 49, 156, '5.0'),
(33, '2023-09-06 00:00:00', '1', 50, 159, '10.0'),
(34, '2023-09-06 00:00:00', '1', 51, 160, '10.0'),
(35, '2023-09-06 00:00:00', '1', 52, 157, '30.0'),
(36, '2023-09-06 00:00:00', '1', 45, 155, '10.0'),
(37, '2023-09-06 00:00:00', '1', 46, 155, '15.0'),
(38, '2023-09-06 00:00:00', '1', 47, 154, '10.0'),
(39, '2023-09-06 00:00:00', '1', 48, 158, '10.0'),
(40, '2023-09-06 00:00:00', '1', 49, 156, '5.0'),
(41, '2023-09-06 00:00:00', '1', 50, 159, '10.0'),
(42, '2023-09-06 00:00:00', '1', 51, 160, '10.0'),
(43, '2023-09-06 00:00:00', '1', 52, 157, '30.0');

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) NOT NULL,
  `points` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `points`) VALUES
(1, '15'),
(2, '10'),
(3, '7'),
(4, '5'),
(5, '3'),
(6, '2'),
(7, '2'),
(8, '2'),
(9, '2'),
(10, '2'),
(11, '2'),
(12, '2'),
(13, '2'),
(14, '2'),
(15, '2'),
(16, '2'),
(17, '2'),
(18, '2'),
(19, '2'),
(20, '2'),
(21, '3'),
(22, '3'),
(23, '3'),
(24, '3'),
(25, '3'),
(26, '3'),
(27, '3'),
(28, '3'),
(29, '3'),
(30, '3');

-- --------------------------------------------------------

--
-- Table structure for table `manageroi`
--

CREATE TABLE `manageroi` (
  `id` bigint(20) NOT NULL,
  `farming_roi` varchar(100) NOT NULL,
  `staking_roi` varchar(100) NOT NULL,
  `level_income` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manageroi`
--

INSERT INTO `manageroi` (`id`, `farming_roi`, `staking_roi`, `level_income`) VALUES
(1, '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `ptransfer`
--

CREATE TABLE `ptransfer` (
  `id` bigint(20) NOT NULL,
  `status` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `child_id_id` bigint(20) NOT NULL,
  `user_id_id` bigint(20) NOT NULL,
  `wallet_id` bigint(20) NOT NULL,
  `currency` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `id` bigint(20) NOT NULL,
  `rank` varchar(200) NOT NULL,
  `royality_income` varchar(200) NOT NULL,
  `business_required` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `reward` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `days` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`id`, `rank`, `royality_income`, `business_required`, `image`, `reward`, `status`, `days`) VALUES
(7, 'First', '', '5000', 'android.jpg', 'GOA TOUR', '1', '30'),
(8, 'Second', '', '10000', 'android.jpg', 'BIKE', '1', '45'),
(9, 'Third', '', '25000', 'android.jpg', 'iPhone', '1', '60'),
(10, 'Forth', '', '50000', 'android.jpg', 'Kwid Car', '1', '75'),
(11, 'Fifth', '', '100000', 'android.jpg', 'Swift Car', '1', '90'),
(12, 'Sixth', '', '250000', 'android.jpg', 'Creta Car', '1', '100'),
(13, 'Seventh', '', '500000', 'android.jpg', 'MG Hector', '1', '110'),
(14, 'Eight', '', '1000000', 'android.jpg', 'Audi Q5', '1', '120'),
(15, 'Diamond', '150000', '2500000', 'android.jpg', '', '1', '130'),
(16, 'Crown', '300000', '3000000', 'android.jpg', '', '1', '140'),
(17, 'Ambesder', '500000', '10000000', 'android.jpg', '', '1', '150');

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialaccount`
--

CREATE TABLE `socialaccount_socialaccount` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `uid` varchar(191) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp`
--

CREATE TABLE `socialaccount_socialapp` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `client_id` varchar(191) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialtoken`
--

CREATE TABLE `socialaccount_socialtoken` (
  `id` int(11) NOT NULL,
  `token` longtext NOT NULL,
  `token_secret` longtext NOT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_association`
--

CREATE TABLE `social_auth_association` (
  `id` bigint(20) NOT NULL,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_code`
--

CREATE TABLE `social_auth_code` (
  `id` bigint(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_nonce`
--

CREATE TABLE `social_auth_nonce` (
  `id` bigint(20) NOT NULL,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_partial`
--

CREATE TABLE `social_auth_partial` (
  `id` bigint(20) NOT NULL,
  `token` varchar(32) NOT NULL,
  `next_step` smallint(5) UNSIGNED NOT NULL CHECK (`next_step` >= 0),
  `backend` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_usersocialauth`
--

CREATE TABLE `social_auth_usersocialauth` (
  `id` bigint(20) NOT NULL,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stakingroilogs`
--

CREATE TABLE `stakingroilogs` (
  `id` bigint(20) NOT NULL,
  `roi` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `plan_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) NOT NULL,
  `wallet_id` bigint(20) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `coin` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `network` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `wallet_id`, `amount`, `coin`, `created_at`, `network`, `status`, `address`, `type`, `user_id`) VALUES
(3, 125, '200', 'n/a', '2023-09-01 14:16:02.899143', 'n/a', '1', 'NA', '1', 154),
(4, 129, '200', 'n/a', '2023-09-01 14:16:17.404583', 'n/a', '1', 'NA', '1', 158),
(5, 128, '300', 'n/a', '2023-09-01 14:16:32.004404', 'n/a', '1', 'NA', '1', 157),
(6, 127, '150', 'n/a', '2023-09-01 14:17:01.605072', 'n/a', '1', 'NA', '1', 156),
(7, 126, '200', 'n/a', '2023-09-01 14:17:25.595100', 'n/a', '1', 'NA', '1', 155),
(8, 125, '500', 'n/a', '2023-09-07 10:41:46.875579', 'n/a', '1', 'NA', '1', 154);

-- --------------------------------------------------------

--
-- Table structure for table `usermembership`
--

CREATE TABLE `usermembership` (
  `id` bigint(20) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `plan_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `date` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `booster_plan` varchar(200) NOT NULL,
  `max_roi` varchar(200) NOT NULL,
  `roi_recieved` varchar(200) NOT NULL,
  `next_date` varchar(200) NOT NULL,
  `c_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usermembership`
--

INSERT INTO `usermembership` (`id`, `amount`, `plan_id`, `user_id`, `date`, `status`, `booster_plan`, `max_roi`, `roi_recieved`, `next_date`, `c_id`) VALUES
(45, '100', 21, 155, '2023-09-06 05:52:56.364849', '1', 'False', '200', '60.0', '2023-09-07 06:23:36.933398', 1),
(46, '150', 21, 155, '2023-09-06 05:52:56.364849', '1', 'False', '200', '90.0', '2023-09-07 06:23:36.956807', 1),
(47, '100', 21, 154, '2023-09-06 05:52:56.364849', '1', 'False', '200', '60.0', '2023-09-07 06:23:36.981074', 1),
(48, '100', 21, 158, '2023-09-06 05:52:56.364849', '1', 'False', '200', '50.0', '2023-09-07 06:23:36.992441', 1),
(49, '50', 21, 156, '2023-09-06 05:52:56.364849', '1', 'False', '200', '25.0', '2023-09-07 06:23:37.013613', 1),
(50, '100', 21, 159, '2023-09-06 05:52:56.364849', '1', 'False', '200', '50.0', '2023-09-07 06:23:37.051755', 1),
(51, '100', 21, 160, '2023-09-06 05:52:56.364849', '1', 'False', '200', '50.0', '2023-09-07 06:23:37.103111', 1),
(52, '300', 21, 157, '2023-09-06 05:52:56.364849', '1', 'False', '200', '150.0', '2023-09-07 06:23:37.187075', 1),
(53, '500', 21, 154, '2023-09-07 11:28:15.328662', '1', 'False', '200', '0', '2023-09-08 11:29:31.686958', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(254) NOT NULL,
  `verified_at` varchar(200) NOT NULL,
  `role` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL,
  `updated_at` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `remember_token` varchar(200) NOT NULL,
  `referal_by` varchar(200) DEFAULT NULL,
  `referal_code` varchar(200) NOT NULL,
  `activation_date` varchar(200) NOT NULL,
  `paid_members` varchar(200) NOT NULL,
  `phone_no` varchar(200) DEFAULT NULL,
  `business` varchar(200) NOT NULL,
  `farming_roi_status` varchar(200) NOT NULL,
  `level_income_status` varchar(100) NOT NULL,
  `staking_roi_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `email`, `verified_at`, `role`, `status`, `updated_at`, `created_at`, `remember_token`, `referal_by`, `referal_code`, `activation_date`, `paid_members`, `phone_no`, `business`, `farming_roi_status`, `level_income_status`, `staking_roi_status`) VALUES
(1, 'pbkdf2_sha256$390000$es8d4VIJU7lhBF1my3ResO$sfV6jPjfupSADl7tVFGPJXu0gvRSsOPUCStylUvCt1g=', NULL, 1, 'shubham', 'Shubham', 'Sharma', 1, 1, '2023-07-09 11:28:45.501935', 'shubhamboxfy@gmail.com', 'True', 'admin', '1', '2023-07-09 11:28:26.336200', '1691230283', '9568', NULL, 'b89735d6', 'N/A', 'True', NULL, '0', '1', '1', '1'),
(154, 'pbkdf2_sha256$390000$8e0bIHBRSIjOhtnbHP0nIE$aHbi/WWd8DkNPQnFsbfAFEQOPfpFIxBsckqvMSF1jcc=', NULL, 0, 'mani@gmail.com', 'mani', '123', 0, 1, '2023-09-01 05:53:42.284082', 'mani@gmail.com', 'True', 'user', '1', '2023-09-01 05:50:59.125046', '2023-09-01 05:50:59.125046', '2330', NULL, '653ad733', '1694086171.713192', 'True', NULL, '900.0', '1', '1', '1'),
(155, 'pbkdf2_sha256$390000$zqIWvkGKBi29ibZa0JvmnC$EXjcaImhj9ertkrXmBp06bS1xYoHOKZdUnO72LFlY1Y=', NULL, 0, 'AL1693561142', 'karan', 'Rana', 0, 1, '2023-09-01 09:39:02.120454', 'karanrana@yopmail.com', 'True', 'user', '1', '2023-09-01 08:24:34.461280', '2023-09-01 08:24:34.461280', '9561', '653ad733', '956eb118', '1693907309.4091322', 'True', NULL, '550.0', '1', '1', '1'),
(156, 'pbkdf2_sha256$390000$NXkrqfYAT1PbEOEAtfVIFw$jio4DmmFx1iWgCV4RXy7QHLCKqkS5Hb5r4t/FCp2VrE=', NULL, 0, 'AL1693567339', 'Shiv', 'Kumar', 0, 1, '2023-09-01 11:22:19.863860', 'Shivkumar@gmail.com', 'True', 'user', '1', '2023-09-01 10:20:17.960332', '2023-09-01 10:20:17.960332', '0900', '956eb118', 'f170c1e4', '1693977143.730376', 'True', NULL, '200.0', '1', '1', '1'),
(157, 'pbkdf2_sha256$390000$C3qlMb5CRGuzOF6zIx7PMR$atZdejZj9xDHpcjZoN5T/UNOPaNw0ndebBkbgRupbkE=', NULL, 0, 'AL1693567428', 'Sachin', 'Sachin', 0, 1, '2023-09-01 11:23:48.226357', 'sachinboxfy@gmail.com', 'True', 'user', '1', '2023-09-01 10:20:17.960332', '2023-09-01 10:20:17.960332', '1356', '956eb118', 'b6498e6f', '1693977299.207275', 'True', NULL, '0', '1', '1', '1'),
(158, 'pbkdf2_sha256$390000$BxfaSYBstxmPjwc7V0hPze$Q0LIpak0Z36UmOjNmWYI+LkX139efRkaCIL7nUfqGJg=', NULL, 0, 'AL1693567630', 'Suneil', 'Kumar', 0, 1, '2023-09-01 11:27:10.794513', 'Suniel@gmail.com', 'True', 'user', '1', '2023-09-01 10:20:17.960332', '2023-09-01 10:20:17.960332', '9727', '653ad733', 'c5b783eb', '1693977091.8135514', 'True', NULL, '0', '1', '1', '1'),
(159, 'pbkdf2_sha256$390000$73tqGKVdvAnhJ0bgTFvXuf$QcYUgBYRyaYwTuQw0MwjLtShL9cWltr8ROLUOMdP2RU=', NULL, 0, 'AL1693634798', 'amar', 'Jot', 0, 1, '2023-09-02 06:06:38.339307', 'amar@gmail.com', 'True', 'user', '1', '2023-09-02 06:02:27.830066', '2023-09-02 06:02:27.830066', '7420', 'f170c1e4', '03f9c3cb', '1693977187.4794242', 'True', NULL, '100.0', '1', '1', '1'),
(160, 'pbkdf2_sha256$390000$r9JyI2ccETM4GQpvCKUc5B$k3mFJAohKAdkDNG8Wgh2lAX7M/agvyXrTLMK/p2AFBM=', NULL, 0, 'AL1693635671', 'Utkarsh', 'boxfy', 0, 1, '2023-09-02 06:21:11.288932', 'Utkarsh@gmail.com', 'True', 'user', '1', '2023-09-02 06:02:27.830066', '2023-09-02 06:02:27.830066', '1686', '03f9c3cb', '564ae4c5', '1693977252.2288694', 'True', NULL, '0', '1', '1', '1'),
(161, 'pbkdf2_sha256$390000$ZSi5uZuHeU6a8ERVCXGv1K$XH8vuFuhOHGs05kWj7reUB6EcN4CKgwBQfaSLwMpgT8=', NULL, 0, 'BS1693811311T', 'Aman', 'Boxfy@gmail.com', 0, 1, '2023-09-04 07:08:31.450439', 'sachin001@gmail.com', 'True', 'user', '1', '2023-09-04 07:08:00.923271', '1693827555', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InNhY2hpbjAwMUBnbWFpbC5jb20iLCJleHAiOjE2OTM4Mjc2NzV9.yggewyo_YpjkB6VEMU5-LPbW1EfNu1rGHOFDe4BUvJ0', NULL, '76f2a0bc', 'N/A', 'False', NULL, '0', '1', '1', '1'),
(162, 'pbkdf2_sha256$390000$2RdPSknGyk6d45E4mpBToH$4vthAHYELR3IhOJEB1eagxdnwpggiGzrPiW+n0UMvlE=', NULL, 0, 'BS1693830806T', 'sachin', 'duggi', 0, 1, '2023-09-04 12:33:26.217387', 'abc@gmail.com', 'True', 'user', '1', '2023-09-04 12:31:52.192485', '2023-09-04 12:31:52.192485', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFiY0BnbWFpbC5jb20iLCJleHAiOjE2OTM4MzA5MjZ9.mIxtUmbOZ3qHYVpRoRbrrJhJnFXrzuk6e-4HfH9RmKM', NULL, '80abb225', 'N/A', 'False', NULL, '0', '1', '1', '1'),
(163, 'pbkdf2_sha256$390000$1WsZx4Weo23Fqc02Gm9eRI$bDRic2LuGVQtpD47bfNA8GKiOntftXpX7g4dqx0fge0=', NULL, 0, 'BS1693884389T', 'Ankit', 'Dhayani', 0, 1, '2023-09-05 03:26:29.382983', 'ankit@gmail.com', 'True', 'user', '1', '2023-09-05 03:25:29.205989', '2023-09-05 03:25:29.205989', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFua2l0QGdtYWlsLmNvbSIsImV4cCI6MTY5Mzg4NDUwOX0.k0JCNp0H8RvXEyykW_27Ab5RXk9mf2ysf5J2HgtPQvo', NULL, '8db931f6', 'N/A', 'False', NULL, '0', '1', '1', '1'),
(164, 'pbkdf2_sha256$390000$Oodx9UFA25mZCDCPt72a4o$2dmf/GwuuPoUYJhrhSjaKLAkgtYpbXW4qcJ6n/Q0UvI=', NULL, 0, 'BS1693984037T', 's', 's', 0, 1, '2023-09-06 07:07:17.587538', 'abc@yopmail.com', 'True', 'user', '1', '2023-09-06 07:06:40.864150', '2023-09-06 07:06:40.864150', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFiY0B5b3BtYWlsLmNvbSIsImV4cCI6MTY5Mzk4NDE1N30.gUYgi8S6DtPa5aHQRm3lR9NFCl4fWanIDhKNYiicCwU', '653ad733', 'b1954753', 'N/A', 'False', NULL, '0', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `userstaking`
--

CREATE TABLE `userstaking` (
  `id` bigint(20) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `roi_per_month` varchar(200) NOT NULL,
  `plan_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `roi_recieved` varchar(200) NOT NULL,
  `expire_date` varchar(200) NOT NULL,
  `next_date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users_user_permissions`
--

CREATE TABLE `users_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_rank`
--

CREATE TABLE `user_rank` (
  `id` bigint(20) NOT NULL,
  `rank_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `status` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `reward_recieved` varchar(200) NOT NULL,
  `income` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_referral`
--

CREATE TABLE `user_referral` (
  `id` bigint(20) NOT NULL,
  `child_id_id` bigint(20) NOT NULL,
  `level_id` bigint(20) NOT NULL,
  `parent_id_id` bigint(20) NOT NULL,
  `refferal_income` varchar(200) NOT NULL,
  `date` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_referral`
--

INSERT INTO `user_referral` (`id`, `child_id_id`, `level_id`, `parent_id_id`, `refferal_income`, `date`, `status`) VALUES
(106, 155, 1, 154, '7.5', '2023-09-05 09:48:09.881985', '1'),
(107, 158, 1, 154, '5.0', '2023-09-06 05:09:45.383583', '1'),
(108, 156, 1, 155, '2.5', '2023-09-06 05:09:45.383583', '1'),
(109, 159, 1, 156, '5.0', '2023-09-06 05:09:45.383583', '1'),
(110, 160, 1, 159, '5.0', '2023-09-06 05:09:45.383583', '1'),
(111, 157, 1, 155, '15.0', '2023-09-06 05:09:45.383583', '1');

-- --------------------------------------------------------

--
-- Table structure for table `verify`
--

CREATE TABLE `verify` (
  `start` varchar(200) NOT NULL,
  `sr` int(11) NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` bigint(20) NOT NULL,
  `avaliable_balance` varchar(200) NOT NULL,
  `freezed_balance` varchar(200) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `reserved_balance` varchar(200) NOT NULL,
  `level_balance` varchar(200) NOT NULL,
  `referral_balance` varchar(200) NOT NULL,
  `roi_balance` varchar(200) NOT NULL,
  `bonus_balance` varchar(250) NOT NULL,
  `deposit_balance` varchar(250) NOT NULL,
  `topup_balance` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `avaliable_balance`, `freezed_balance`, `user_id`, `reserved_balance`, `level_balance`, `referral_balance`, `roi_balance`, `bonus_balance`, `deposit_balance`, `topup_balance`) VALUES
(1, '520.0', '0', 1, '0', '0', '0', '0', '0', '0', '0'),
(125, '42.5', '0', 154, '0', '0', '0', '0', '0', '0', '42.5'),
(126, '550.5', '0', 155, '0.0', '0.0', '5.0', '0.0', '0', '70.5', '0.0'),
(127, '150.0', '0', 156, '0', '20.0', '5.0', '25.0', '0', '0', '0'),
(128, '150.0', '0', 157, '0', '0', '0', '150.0', '0', '0', '0'),
(129, '150.0', '0', 158, '0', '0', '0', '50.0', '0', '0', '0'),
(130, '165.0', '0', 159, '0', '10.0', '5.0', '50.0', '0', '0', '0'),
(131, '50.0', '0', 160, '0', '0', '0', '50.0', '0', '0', '0'),
(132, '0', '150.0', 161, '0', '0', '0', '0', '0', '0', '0'),
(133, '220', '0', 162, '0', '0', '0', '0', '0', '0', '0'),
(134, '150', '0', 163, '0', '0', '0', '0', '0', '0', '0'),
(135, '0', '0', 164, '0', '0', '0', '0', '0', '0', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `account_emailaddress_user_id_2c513194_fk_users_id` (`user_id`);

--
-- Indexes for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` (`email_address_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `core_appsettings`
--
ALTER TABLE `core_appsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_businesslogs`
--
ALTER TABLE `core_businesslogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_businesslogs_child_id_id_b59cae4f_fk_users_id` (`child_id_id`),
  ADD KEY `core_businesslogs_parent_id_id_b1d7e131_fk_users_id` (`parent_id_id`),
  ADD KEY `core_businesslogs_plan_id_3e9a372a_fk_core_plansmodel_id` (`plan_id`);

--
-- Indexes for table `core_categorymodel`
--
ALTER TABLE `core_categorymodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_categorymodel_plan_id_8fd1416a_fk_core_membership_id` (`plan_id`);

--
-- Indexes for table `core_changesponserlogs`
--
ALTER TABLE `core_changesponserlogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_changesponserlogs_from_id_id_9b5ca4bb_fk_users_id` (`from_id_id`),
  ADD KEY `core_changesponserlogs_to_id_id_591a1af0_fk_users_id` (`to_id_id`);

--
-- Indexes for table `core_cofounderclub`
--
ALTER TABLE `core_cofounderclub`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_cofounderclub_club_98d70073_uniq` (`club`);

--
-- Indexes for table `core_emailservice`
--
ALTER TABLE `core_emailservice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_gallaryimages`
--
ALTER TABLE `core_gallaryimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_levelincome`
--
ALTER TABLE `core_levelincome`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_levelincome_child_id_id_fefd5568_fk_users_id` (`child_id_id`),
  ADD KEY `core_levelincome_level_id_7df4ee2f_fk_levels_id` (`level_id`),
  ADD KEY `core_levelincome_parent_id_id_479ecada_fk_users_id` (`parent_id_id`);

--
-- Indexes for table `core_login_history`
--
ALTER TABLE `core_login_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_login_history_user_id_c539e665_fk_users_id` (`user_id`);

--
-- Indexes for table `core_membership`
--
ALTER TABLE `core_membership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_newsmodel`
--
ALTER TABLE `core_newsmodel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_plansmodel`
--
ALTER TABLE `core_plansmodel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `core_status_activity`
--
ALTER TABLE `core_status_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_status_activity_user_id_b539cf0e_fk_users_id` (`user_id`);

--
-- Indexes for table `core_ticketmodel`
--
ALTER TABLE `core_ticketmodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_ticketmodel_user_id_fca908b3_fk_users_id` (`user_id`);

--
-- Indexes for table `core_useraddressdetail`
--
ALTER TABLE `core_useraddressdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_useraddressdetail_user_id_46d53d92_fk_users_id` (`user_id`);

--
-- Indexes for table `core_usercofounderclub`
--
ALTER TABLE `core_usercofounderclub`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_usercofounderclub_club_id_a4ccc2a7_fk_core_cofounderclub_id` (`club_id`),
  ADD KEY `core_usercofounderclub_user_id_20907c22_fk_users_id` (`user_id`);

--
-- Indexes for table `core_userunlockedlevel`
--
ALTER TABLE `core_userunlockedlevel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_userunlockedlevel_level_id_74f0feac_fk_levels_id` (`level_id`),
  ADD KEY `core_userunlockedlevel_user_id_e700a745_fk_users_id` (`user_id`);

--
-- Indexes for table `core_userwithdrawls`
--
ALTER TABLE `core_userwithdrawls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_userwithdrawls_user_id_6b158a41_fk_users_id` (`user_id`),
  ADD KEY `core_userwithdrawls_wallet_id_665943e6_fk_wallet_id` (`wallet_id`);

--
-- Indexes for table `core_withdrawsettingmodel`
--
ALTER TABLE `core_withdrawsettingmodel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_youtubevideo`
--
ALTER TABLE `core_youtubevideo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `current_level`
--
ALTER TABLE `current_level`
  ADD PRIMARY KEY (`id`),
  ADD KEY `current_level_user_id_f0128532_fk_users_id` (`user_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_users_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `farmingroilogs`
--
ALTER TABLE `farmingroilogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `farmingroilogs_plan_id_d7c73c53_fk_usermembership_id` (`plan_id`),
  ADD KEY `farmingroilogs_user_id_30b710b7_fk_users_id` (`user_id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manageroi`
--
ALTER TABLE `manageroi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ptransfer`
--
ALTER TABLE `ptransfer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_ptransfer_child_id_id_e1f7f06e_fk_users_id` (`child_id_id`),
  ADD KEY `core_ptransfer_user_id_id_6008cb53_fk_users_id` (`user_id_id`),
  ADD KEY `core_ptransfer_wallet_id_a4dc1fed_fk_wallet_id` (`wallet_id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rank` (`rank`);

--
-- Indexes for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialaccount_provider_uid_fc810c6e_uniq` (`provider`,`uid`),
  ADD KEY `socialaccount_socialaccount_user_id_8146e70c_fk_users_id` (`user_id`);

--
-- Indexes for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq` (`app_id`,`account_id`),
  ADD KEY `socialaccount_social_account_id_951f210e_fk_socialacc` (`account_id`);

--
-- Indexes for table `social_auth_association`
--
ALTER TABLE `social_auth_association`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`);

--
-- Indexes for table `social_auth_code`
--
ALTER TABLE `social_auth_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  ADD KEY `social_auth_code_code_a2393167` (`code`),
  ADD KEY `social_auth_code_timestamp_176b341f` (`timestamp`);

--
-- Indexes for table `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`);

--
-- Indexes for table `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_auth_partial_token_3017fea3` (`token`),
  ADD KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`);

--
-- Indexes for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  ADD KEY `social_auth_usersocialauth_user_id_17d28448_fk_users_id` (`user_id`),
  ADD KEY `social_auth_usersocialauth_uid_796e51dc` (`uid`);

--
-- Indexes for table `stakingroilogs`
--
ALTER TABLE `stakingroilogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stakingroilogs_plan_id_cee1076a_fk_core_membership_id` (`plan_id`),
  ADD KEY `stakingroilogs_user_id_4423f67b_fk_users_id` (`user_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_wallet_id_ce705075_fk_wallet_id` (`wallet_id`),
  ADD KEY `transactions_user_id_766cc893_fk_users_id` (`user_id`);

--
-- Indexes for table `usermembership`
--
ALTER TABLE `usermembership`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_usermembership_plan_id_063bcaed_fk_core_membership_id` (`plan_id`),
  ADD KEY `core_usermembership_user_id_dfa7c16b_fk_users_id` (`user_id`),
  ADD KEY `usermembership_c_id_06e3f80a_fk_core_categorymodel_id` (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `referal_code` (`referal_code`);

--
-- Indexes for table `userstaking`
--
ALTER TABLE `userstaking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userstaking_plan_id_ab8536dc_fk_core_membership_id` (`plan_id`),
  ADD KEY `userstaking_user_id_4c06ca72_fk_users_id` (`user_id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_groups_user_id_group_id_fc7788e8_uniq` (`user_id`,`group_id`),
  ADD KEY `users_groups_group_id_2f3517aa_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `users_user_permissions`
--
ALTER TABLE `users_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_permissions_user_id_permission_id_3b86cbdf_uniq` (`user_id`,`permission_id`),
  ADD KEY `users_user_permissio_permission_id_6d08dcd2_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `user_rank`
--
ALTER TABLE `user_rank`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_rank_rank_id_afdeb20f_fk_rank_id` (`rank_id`),
  ADD KEY `user_rank_user_id_c2b3ca12_fk_users_id` (`user_id`);

--
-- Indexes for table `user_referral`
--
ALTER TABLE `user_referral`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_referral_child_id_id_de75dad4_fk_users_id` (`child_id_id`),
  ADD KEY `user_referral_level_id_8f3a91dd_fk_levels_id` (`level_id`),
  ADD KEY `user_referral_parent_id_id_5df4353f_fk_users_id` (`parent_id_id`);

--
-- Indexes for table `verify`
--
ALTER TABLE `verify`
  ADD PRIMARY KEY (`sr`),
  ADD KEY `verify_id_3bbf7b17_fk_users_id` (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallet_user_id_03d82c01_fk_users_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `core_appsettings`
--
ALTER TABLE `core_appsettings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `core_businesslogs`
--
ALTER TABLE `core_businesslogs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `core_categorymodel`
--
ALTER TABLE `core_categorymodel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `core_changesponserlogs`
--
ALTER TABLE `core_changesponserlogs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_cofounderclub`
--
ALTER TABLE `core_cofounderclub`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `core_emailservice`
--
ALTER TABLE `core_emailservice`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_gallaryimages`
--
ALTER TABLE `core_gallaryimages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `core_levelincome`
--
ALTER TABLE `core_levelincome`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=436;

--
-- AUTO_INCREMENT for table `core_login_history`
--
ALTER TABLE `core_login_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=295;

--
-- AUTO_INCREMENT for table `core_membership`
--
ALTER TABLE `core_membership`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `core_newsmodel`
--
ALTER TABLE `core_newsmodel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_plansmodel`
--
ALTER TABLE `core_plansmodel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core_status_activity`
--
ALTER TABLE `core_status_activity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `core_ticketmodel`
--
ALTER TABLE `core_ticketmodel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_useraddressdetail`
--
ALTER TABLE `core_useraddressdetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_usercofounderclub`
--
ALTER TABLE `core_usercofounderclub`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_userunlockedlevel`
--
ALTER TABLE `core_userunlockedlevel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `core_userwithdrawls`
--
ALTER TABLE `core_userwithdrawls`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `core_withdrawsettingmodel`
--
ALTER TABLE `core_withdrawsettingmodel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_youtubevideo`
--
ALTER TABLE `core_youtubevideo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `current_level`
--
ALTER TABLE `current_level`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `farmingroilogs`
--
ALTER TABLE `farmingroilogs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `manageroi`
--
ALTER TABLE `manageroi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ptransfer`
--
ALTER TABLE `ptransfer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_association`
--
ALTER TABLE `social_auth_association`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_code`
--
ALTER TABLE `social_auth_code`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `stakingroilogs`
--
ALTER TABLE `stakingroilogs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `usermembership`
--
ALTER TABLE `usermembership`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `userstaking`
--
ALTER TABLE `userstaking`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_user_permissions`
--
ALTER TABLE `users_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_rank`
--
ALTER TABLE `user_rank`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_referral`
--
ALTER TABLE `user_referral`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `verify`
--
ALTER TABLE `verify`
  MODIFY `sr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD CONSTRAINT `account_emailaddress_user_id_2c513194_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD CONSTRAINT `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `core_businesslogs`
--
ALTER TABLE `core_businesslogs`
  ADD CONSTRAINT `core_businesslogs_child_id_id_b59cae4f_fk_users_id` FOREIGN KEY (`child_id_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `core_businesslogs_parent_id_id_b1d7e131_fk_users_id` FOREIGN KEY (`parent_id_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `core_businesslogs_plan_id_3e9a372a_fk_core_membership_id` FOREIGN KEY (`plan_id`) REFERENCES `core_membership` (`id`);

--
-- Constraints for table `core_categorymodel`
--
ALTER TABLE `core_categorymodel`
  ADD CONSTRAINT `core_categorymodel_plan_id_8fd1416a_fk_core_membership_id` FOREIGN KEY (`plan_id`) REFERENCES `core_membership` (`id`);

--
-- Constraints for table `core_changesponserlogs`
--
ALTER TABLE `core_changesponserlogs`
  ADD CONSTRAINT `core_changesponserlogs_from_id_id_9b5ca4bb_fk_users_id` FOREIGN KEY (`from_id_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `core_changesponserlogs_to_id_id_591a1af0_fk_users_id` FOREIGN KEY (`to_id_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `core_levelincome`
--
ALTER TABLE `core_levelincome`
  ADD CONSTRAINT `core_levelincome_child_id_id_fefd5568_fk_users_id` FOREIGN KEY (`child_id_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `core_levelincome_level_id_7df4ee2f_fk_levels_id` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `core_levelincome_parent_id_id_479ecada_fk_users_id` FOREIGN KEY (`parent_id_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `core_login_history`
--
ALTER TABLE `core_login_history`
  ADD CONSTRAINT `core_login_history_user_id_c539e665_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `core_status_activity`
--
ALTER TABLE `core_status_activity`
  ADD CONSTRAINT `core_status_activity_user_id_b539cf0e_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `core_ticketmodel`
--
ALTER TABLE `core_ticketmodel`
  ADD CONSTRAINT `core_ticketmodel_user_id_fca908b3_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `core_useraddressdetail`
--
ALTER TABLE `core_useraddressdetail`
  ADD CONSTRAINT `core_useraddressdetail_user_id_46d53d92_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `core_usercofounderclub`
--
ALTER TABLE `core_usercofounderclub`
  ADD CONSTRAINT `core_usercofounderclub_club_id_a4ccc2a7_fk_core_cofounderclub_id` FOREIGN KEY (`club_id`) REFERENCES `core_cofounderclub` (`id`),
  ADD CONSTRAINT `core_usercofounderclub_user_id_20907c22_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `core_userunlockedlevel`
--
ALTER TABLE `core_userunlockedlevel`
  ADD CONSTRAINT `core_userunlockedlevel_level_id_74f0feac_fk_levels_id` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `core_userunlockedlevel_user_id_e700a745_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `core_userwithdrawls`
--
ALTER TABLE `core_userwithdrawls`
  ADD CONSTRAINT `core_userwithdrawls_user_id_6b158a41_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `core_userwithdrawls_wallet_id_665943e6_fk_wallet_id` FOREIGN KEY (`wallet_id`) REFERENCES `wallet` (`id`);

--
-- Constraints for table `current_level`
--
ALTER TABLE `current_level`
  ADD CONSTRAINT `current_level_user_id_f0128532_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `farmingroilogs`
--
ALTER TABLE `farmingroilogs`
  ADD CONSTRAINT `farmingroilogs_plan_id_d7c73c53_fk_usermembership_id` FOREIGN KEY (`plan_id`) REFERENCES `usermembership` (`id`),
  ADD CONSTRAINT `farmingroilogs_user_id_30b710b7_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `ptransfer`
--
ALTER TABLE `ptransfer`
  ADD CONSTRAINT `core_ptransfer_child_id_id_e1f7f06e_fk_users_id` FOREIGN KEY (`child_id_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `core_ptransfer_user_id_id_6008cb53_fk_users_id` FOREIGN KEY (`user_id_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `core_ptransfer_wallet_id_a4dc1fed_fk_wallet_id` FOREIGN KEY (`wallet_id`) REFERENCES `wallet` (`id`);

--
-- Constraints for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD CONSTRAINT `socialaccount_socialaccount_user_id_8146e70c_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD CONSTRAINT `socialaccount_social_account_id_951f210e_fk_socialacc` FOREIGN KEY (`account_id`) REFERENCES `socialaccount_socialaccount` (`id`),
  ADD CONSTRAINT `socialaccount_social_app_id_636a42d7_fk_socialacc` FOREIGN KEY (`app_id`) REFERENCES `socialaccount_socialapp` (`id`);

--
-- Constraints for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD CONSTRAINT `social_auth_usersocialauth_user_id_17d28448_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `stakingroilogs`
--
ALTER TABLE `stakingroilogs`
  ADD CONSTRAINT `stakingroilogs_plan_id_cee1076a_fk_core_membership_id` FOREIGN KEY (`plan_id`) REFERENCES `core_membership` (`id`),
  ADD CONSTRAINT `stakingroilogs_user_id_4423f67b_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_user_id_766cc893_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `transactions_wallet_id_ce705075_fk_wallet_id` FOREIGN KEY (`wallet_id`) REFERENCES `wallet` (`id`);

--
-- Constraints for table `usermembership`
--
ALTER TABLE `usermembership`
  ADD CONSTRAINT `core_usermembership_plan_id_063bcaed_fk_core_membership_id` FOREIGN KEY (`plan_id`) REFERENCES `core_membership` (`id`),
  ADD CONSTRAINT `core_usermembership_user_id_dfa7c16b_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `usermembership_c_id_06e3f80a_fk_core_categorymodel_id` FOREIGN KEY (`c_id`) REFERENCES `core_categorymodel` (`id`);

--
-- Constraints for table `userstaking`
--
ALTER TABLE `userstaking`
  ADD CONSTRAINT `userstaking_plan_id_ab8536dc_fk_core_membership_id` FOREIGN KEY (`plan_id`) REFERENCES `core_membership` (`id`),
  ADD CONSTRAINT `userstaking_user_id_4c06ca72_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `users_groups_group_id_2f3517aa_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `users_groups_user_id_f500bee5_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users_user_permissions`
--
ALTER TABLE `users_user_permissions`
  ADD CONSTRAINT `users_user_permissio_permission_id_6d08dcd2_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `users_user_permissions_user_id_92473840_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_rank`
--
ALTER TABLE `user_rank`
  ADD CONSTRAINT `user_rank_rank_id_afdeb20f_fk_rank_id` FOREIGN KEY (`rank_id`) REFERENCES `rank` (`id`),
  ADD CONSTRAINT `user_rank_user_id_c2b3ca12_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_referral`
--
ALTER TABLE `user_referral`
  ADD CONSTRAINT `user_referral_child_id_id_de75dad4_fk_users_id` FOREIGN KEY (`child_id_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_referral_level_id_8f3a91dd_fk_levels_id` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `user_referral_parent_id_id_5df4353f_fk_users_id` FOREIGN KEY (`parent_id_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `verify`
--
ALTER TABLE `verify`
  ADD CONSTRAINT `verify_id_3bbf7b17_fk_users_id` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Constraints for table `wallet`
--
ALTER TABLE `wallet`
  ADD CONSTRAINT `wallet_user_id_03d82c01_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
