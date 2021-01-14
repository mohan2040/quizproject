-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2021 at 07:20 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizdb`
--

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
(3, '2021_01_06_075610_create_question_sets_table', 2),
(4, '2021_01_06_080224_create_question_options_table', 3),
(5, '2021_01_06_082230_create_details_table', 3),
(6, '2021_01_07_061718_create_question_options_table', 4),
(7, '2021_01_10_080134_create_results_table', 5),
(8, '2021_01_11_062932_create_resultcodes_table', 6);

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
-- Table structure for table `question_options`
--

CREATE TABLE `question_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `opt_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_options`
--

INSERT INTO `question_options` (`id`, `opt_name`, `question_id`, `created_at`, `updated_at`) VALUES
(1, '7', 1, NULL, NULL),
(2, '6', 1, NULL, NULL),
(3, '5', 1, NULL, NULL),
(4, '4', 1, NULL, NULL),
(83, 'Tiger', 2, NULL, NULL),
(84, 'Lion', 2, NULL, NULL),
(85, 'Elephant', 2, NULL, NULL),
(86, 'Monkey', 2, NULL, NULL),
(87, 'Elephant', 3, NULL, NULL),
(88, 'Blue whale', 3, NULL, NULL),
(89, 'Giraffe', 3, NULL, NULL),
(90, 'Tiger', 3, NULL, NULL),
(91, 'East', 4, NULL, NULL),
(92, 'West', 4, NULL, NULL),
(93, 'North', 4, NULL, NULL),
(94, 'South', 4, NULL, NULL),
(95, 'Tiger', 5, NULL, NULL),
(96, 'Elephant', 5, NULL, NULL),
(97, 'Lion', 5, NULL, NULL),
(98, 'Cheetah', 5, NULL, NULL),
(99, 'Cristiano Ronaldo', 6, NULL, NULL),
(100, 'Cristiano Robert', 6, NULL, NULL),
(101, 'Robert Paul', 6, NULL, NULL),
(102, 'Mark Admin', 6, NULL, NULL),
(103, 'January', 7, NULL, NULL),
(104, 'February', 7, NULL, NULL),
(105, 'March', 7, NULL, NULL),
(106, 'April', 7, NULL, NULL),
(107, 'May', 7, NULL, NULL),
(108, 'Xenophobia', 8, NULL, NULL),
(109, 'Menophobia', 8, NULL, NULL),
(110, 'Kemophobia', 8, NULL, NULL),
(111, 'Semophobia', 8, NULL, NULL),
(112, 'Asteroid Bennu', 9, NULL, NULL),
(113, 'Cristiano Robert', 9, NULL, NULL),
(114, 'Robert Paul', 9, NULL, NULL),
(115, 'Mark Admin', 9, NULL, NULL),
(116, 'internet', 10, NULL, NULL),
(117, 'skype', 10, NULL, NULL),
(118, 'twitter', 10, NULL, NULL),
(119, 'Email', 10, NULL, NULL),
(120, 'Mars', 11, NULL, NULL),
(121, 'Jupiter', 11, NULL, NULL),
(122, 'Neptune', 11, NULL, NULL),
(123, 'Moon', 11, NULL, NULL),
(124, 'Sindhu', 12, NULL, NULL),
(125, 'Indira Gandhi', 12, NULL, NULL),
(126, 'Kiran Bedi', 12, NULL, NULL),
(127, 'Kiran Kher', 12, NULL, NULL),
(128, 'Jio app', 13, NULL, NULL),
(129, 'JioMoney', 13, NULL, NULL),
(130, 'Reliance Money', 13, NULL, NULL),
(131, 'Airtal', 13, NULL, NULL),
(132, '05 satellites', 14, NULL, NULL),
(133, '10 satellites', 14, NULL, NULL),
(134, '20 satellites', 14, NULL, NULL),
(135, '30 satellites', 14, NULL, NULL),
(136, 'Jagjivan University', 15, NULL, NULL),
(137, 'Takshila University', 15, NULL, NULL),
(138, 'Jaipur National University', 15, NULL, NULL),
(139, 'Bihar’s ancient Nalanda University', 15, NULL, NULL),
(141, 'Singer', 16, NULL, NULL),
(142, 'Politician', 16, NULL, NULL),
(143, 'Actor', 16, NULL, NULL),
(144, 'Cricketer', 16, NULL, NULL),
(145, 'Prithvi Shaw', 17, NULL, NULL),
(146, 'Pranav Dhanawade', 17, NULL, NULL),
(147, 'Virat Kohli', 17, NULL, NULL),
(148, 'Shikhar Dhawan', 17, NULL, NULL),
(149, '26 miles 385 yards', 18, NULL, NULL),
(150, '26 miles', 18, NULL, NULL),
(151, '36 miles 500 yards', 18, NULL, NULL),
(152, '22 miles', 18, NULL, NULL),
(153, 'Volleyball', 19, NULL, NULL),
(154, 'Football', 19, NULL, NULL),
(155, 'Hockey', 19, NULL, NULL),
(156, 'Cricket', 19, NULL, NULL),
(157, 'TATA', 20, NULL, NULL),
(158, 'IIT-Kharagpur', 20, NULL, NULL),
(159, 'IIT-Kanpur', 20, NULL, NULL),
(160, 'C-DAC', 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_sets`
--

CREATE TABLE `question_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_sets`
--

INSERT INTO `question_sets` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'How many days do we have in a week', '7', '2021-01-07 02:59:04', '2021-01-07 02:59:04'),
(2, 'Which animal is called King of Jungle', 'Lion', '2021-01-07 03:01:42', '2021-01-10 02:36:28'),
(3, 'Which is the largest animal in the world', 'Blue whale', '2021-01-07 03:03:17', '2021-01-10 02:39:11'),
(4, 'In which direction does the sunrise', 'East', '2021-01-07 03:35:49', '2021-01-10 02:48:42'),
(5, 'Which is the fastest animal on the land', 'Cheetah', '2021-01-07 03:43:22', '2021-01-10 02:49:17'),
(6, 'Who won the Best Footballer 2016 in the World', 'Cristiano Ronaldo', '2021-01-07 04:06:13', '2021-01-10 02:49:29'),
(7, 'Which month of the year has the least number of days', 'February', '2021-01-07 04:07:15', '2021-01-10 02:49:42'),
(8, 'What was ‘Word of the Year-2016’ according to the Dictionary.com', 'Xenophobia', '2021-01-08 00:24:11', '2021-01-10 02:49:53'),
(9, 'NASA launched the ‘OSIRIS-REx’ Mission to collect samples from which asteroid', 'Asteroid Bennu', '2021-01-08 00:25:09', '2021-01-10 02:50:03'),
(10, 'Which service is used for sending or receiving mail on the internet', 'Email', '2021-01-08 00:26:48', '2021-01-10 02:50:13'),
(11, 'Which planet have the ‘Great Red Spot’', 'Jupiter', '2021-01-08 00:27:45', '2021-01-10 02:50:26'),
(12, 'Who has been appointed as Lt Governor of Puducherry for 2 years', 'Kiran Bedi', '2021-01-08 00:29:14', '2021-01-10 02:50:35'),
(13, 'Reliance Jio has launched which digital wallet service for peoples', 'JioMoney', '2021-01-08 00:30:13', '2021-01-10 02:50:45'),
(14, 'How many satellites in a single mission using PSLV C-34 launched in 2016', '20 satellites', '2021-01-08 00:31:17', '2021-01-10 02:50:59'),
(15, 'In Bihar, UNESCO has declared which place as a World Heritage Site', 'Bihar’s ancient Nalanda University', '2021-01-08 00:32:07', '2021-01-10 02:51:07'),
(16, 'M.P. Veerendra Kumar passed away at the age of 83 due to cardiac arrest in Kozhikode, Kerala. He was a famous', 'Politician', '2021-01-08 00:34:07', '2021-01-10 02:51:17'),
(17, 'Name the first cricketer to score 1000 runs in an innings in any competitive match', 'Pranav Dhanawade', '2021-01-08 00:36:00', '2021-01-10 02:51:42'),
(18, 'According to international standard, what is the distance of marathon race', '26 miles 385 yards', '2021-01-08 00:36:53', '2021-01-10 02:51:52'),
(19, 'Beighton Cup is associated with which of the following', 'Hockey', '2021-01-08 00:37:46', '2021-01-10 02:52:01'),
(20, 'The super computer ‘PARAM’ was developed by', 'C-DAC', '2021-01-08 00:38:40', '2021-01-10 02:52:08');

-- --------------------------------------------------------

--
-- Table structure for table `resultcodes`
--

CREATE TABLE `resultcodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `scode` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resultcodes`
--

INSERT INTO `resultcodes` (`id`, `scode`, `created_at`, `updated_at`) VALUES
(1, 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(10) UNSIGNED NOT NULL,
  `scode` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `mark` int(11) NOT NULL,
  `optionname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `scode`, `user_id`, `question_id`, `mark`, `optionname`, `created_at`, `updated_at`, `status`) VALUES
(1, 3, 1, 1, 1, '7', '2021-01-11 08:57:53', NULL, 0),
(2, 3, 1, 2, 1, 'Lion', '2021-01-11 08:57:53', NULL, 0),
(3, 3, 1, 3, 1, 'Blue whale', '2021-01-11 08:57:53', NULL, 0),
(4, 3, 1, 4, 1, 'East', '2021-01-11 08:57:53', NULL, 0),
(5, 3, 1, 5, 1, 'Cheetah', '2021-01-11 08:57:53', NULL, 0),
(6, 3, 1, 6, 1, 'Cristiano Ronaldo', '2021-01-11 08:57:53', NULL, 0),
(7, 3, 1, 7, 1, 'February', '2021-01-11 08:57:53', NULL, 0),
(8, 3, 1, 8, 0, 'Menophobia', '2021-01-11 08:57:53', NULL, 0),
(9, 3, 1, 9, 1, 'Asteroid Bennu', '2021-01-11 08:57:53', NULL, 0),
(10, 3, 1, 10, 1, 'Email', '2021-01-11 08:57:53', NULL, 0),
(11, 3, 1, 11, 0, 'Mars', '2021-01-11 08:57:53', NULL, 0),
(12, 3, 1, 12, 1, 'Kiran Bedi', '2021-01-11 08:57:53', NULL, 0),
(13, 3, 1, 13, 1, 'JioMoney', '2021-01-11 08:57:53', NULL, 0),
(14, 3, 1, 14, 1, '20 satellites', '2021-01-11 08:57:53', NULL, 0),
(15, 3, 1, 15, 1, 'Bihar’s ancient Nalanda University', '2021-01-11 08:57:53', NULL, 0),
(16, 3, 1, 16, 0, 'Cricketer', '2021-01-11 08:57:53', NULL, 0),
(17, 3, 1, 17, 0, 'Shikhar Dhawan', '2021-01-11 08:57:53', NULL, 0),
(18, 3, 1, 18, 0, '36 miles 500 yards', '2021-01-11 08:57:53', NULL, 0),
(19, 3, 1, 19, 1, 'Hockey', '2021-01-11 08:57:53', NULL, 0),
(20, 3, 1, 20, 0, 'IIT-Kanpur', '2021-01-11 08:57:53', NULL, 0),
(21, 4, 1, 1, 0, '6', '2021-01-11 09:41:50', NULL, 0),
(22, 4, 1, 2, 0, 'Elephant', '2021-01-11 09:41:50', NULL, 0),
(23, 4, 1, 3, 0, 'Tiger', '2021-01-11 09:41:50', NULL, 0),
(24, 4, 1, 4, 0, 'South', '2021-01-11 09:41:50', NULL, 0),
(25, 4, 1, 5, 1, 'Cheetah', '2021-01-11 09:41:50', NULL, 0),
(26, 4, 1, 6, 1, 'Cristiano Ronaldo', '2021-01-11 09:41:50', NULL, 0),
(27, 4, 1, 7, 1, 'February', '2021-01-11 09:41:50', NULL, 0),
(28, 4, 1, 8, 1, 'Xenophobia', '2021-01-11 09:41:50', NULL, 0),
(29, 4, 1, 9, 0, 'Mark Admin', '2021-01-11 09:41:50', NULL, 0),
(30, 4, 1, 10, 1, 'Email', '2021-01-11 09:41:50', NULL, 0),
(31, 4, 1, 11, 1, 'Jupiter', '2021-01-11 09:41:50', NULL, 0),
(32, 4, 1, 12, 0, 'Kiran Kher', '2021-01-11 09:41:50', NULL, 0),
(33, 4, 1, 13, 0, 'Airtal', '2021-01-11 09:41:50', NULL, 0),
(34, 4, 1, 14, 1, '20 satellites', '2021-01-11 09:41:50', NULL, 0),
(35, 4, 1, 15, 1, 'Bihar’s ancient Nalanda University', '2021-01-11 09:41:50', NULL, 0),
(36, 4, 1, 16, 1, 'Politician', '2021-01-11 09:41:50', NULL, 0),
(37, 4, 1, 17, 1, 'Pranav Dhanawade', '2021-01-11 09:41:50', NULL, 0),
(38, 4, 1, 18, 1, '26 miles 385 yards', '2021-01-11 09:41:50', NULL, 0),
(39, 4, 1, 19, 1, 'Hockey', '2021-01-11 09:41:50', NULL, 0),
(40, 4, 1, 20, 0, 'IIT-Kanpur', '2021-01-11 09:41:50', NULL, 0),
(41, 5, 2, 1, 1, '7', '2021-01-11 09:52:14', NULL, 0),
(42, 5, 2, 2, 1, 'Lion', '2021-01-11 09:52:14', NULL, 0),
(43, 5, 2, 3, 1, 'Blue whale', '2021-01-11 09:52:14', NULL, 0),
(44, 5, 2, 4, 1, 'East', '2021-01-11 09:52:14', NULL, 0),
(45, 5, 2, 5, 1, 'Cheetah', '2021-01-11 09:52:14', NULL, 0),
(46, 5, 2, 6, 0, 'Cristiano Robert', '2021-01-11 09:52:14', NULL, 0),
(47, 5, 2, 7, 0, 'March', '2021-01-11 09:52:14', NULL, 0),
(48, 5, 2, 8, 0, 'Kemophobia', '2021-01-11 09:52:14', NULL, 0),
(49, 5, 2, 9, 0, 'Robert Paul', '2021-01-11 09:52:14', NULL, 0),
(50, 5, 2, 10, 1, 'Email', '2021-01-11 09:52:14', NULL, 0),
(51, 5, 2, 11, 1, 'Jupiter', '2021-01-11 09:52:14', NULL, 0),
(52, 5, 2, 12, 0, 'Kiran Kher', '2021-01-11 09:52:14', NULL, 0),
(53, 5, 2, 13, 1, 'JioMoney', '2021-01-11 09:52:14', NULL, 0),
(54, 5, 2, 14, 1, '20 satellites', '2021-01-11 09:52:14', NULL, 0),
(55, 5, 2, 15, 0, 'Takshila University', '2021-01-11 09:52:14', NULL, 0),
(56, 5, 2, 16, 0, 'Actor', '2021-01-11 09:52:14', NULL, 0),
(57, 5, 2, 17, 0, 'Virat Kohli', '2021-01-11 09:52:14', NULL, 0),
(58, 5, 2, 18, 0, '36 miles 500 yards', '2021-01-11 09:52:14', NULL, 0),
(59, 5, 2, 19, 1, 'Hockey', '2021-01-11 09:52:14', NULL, 0),
(60, 5, 2, 20, 1, 'C-DAC', '2021-01-11 09:52:14', NULL, 0),
(63, 6, 1, 1, 1, '7', '2021-01-12 00:17:33', NULL, 0),
(64, 6, 1, 2, 1, 'Lion', '2021-01-12 00:17:33', NULL, 0),
(65, 6, 1, 3, 1, 'Blue whale', '2021-01-12 00:17:33', NULL, 0),
(66, 6, 1, 4, 1, 'East', '2021-01-12 00:17:33', NULL, 0),
(67, 6, 1, 5, 1, 'Cheetah', '2021-01-12 00:17:33', NULL, 0),
(68, 6, 1, 6, 1, 'Cristiano Ronaldo', '2021-01-12 00:17:33', NULL, 0),
(69, 6, 1, 7, 0, 'May', '2021-01-12 00:17:33', NULL, 0),
(70, 6, 1, 8, 0, 'Semophobia', '2021-01-12 00:17:33', NULL, 0),
(71, 6, 1, 9, 0, 'Mark Admin', '2021-01-12 00:17:33', NULL, 0),
(72, 6, 1, 10, 1, 'Email', '2021-01-12 00:17:33', NULL, 0),
(73, 6, 1, 11, 0, 'Moon', '2021-01-12 00:17:33', NULL, 0),
(74, 6, 1, 12, 0, 'Kiran Kher', '2021-01-12 00:17:33', NULL, 0),
(75, 6, 1, 13, 0, 'Airtal', '2021-01-12 00:17:33', NULL, 0),
(76, 6, 1, 14, 0, '30 satellites', '2021-01-12 00:17:33', NULL, 0),
(77, 6, 1, 15, 1, 'Bihar’s ancient Nalanda University', '2021-01-12 00:17:33', NULL, 0),
(78, 6, 1, 16, 0, 'Cricketer', '2021-01-12 00:17:33', NULL, 0),
(79, 6, 1, 17, 0, 'Shikhar Dhawan', '2021-01-12 00:17:33', NULL, 0),
(80, 6, 1, 18, 0, '22 miles', '2021-01-12 00:17:33', NULL, 0),
(81, 6, 1, 19, 0, 'Cricket', '2021-01-12 00:17:33', NULL, 0),
(82, 6, 1, 20, 1, 'C-DAC', '2021-01-12 00:17:33', NULL, 0),
(83, 7, 3, 1, 1, '7', '2021-01-12 00:26:59', NULL, 0),
(84, 7, 3, 2, 1, 'Lion', '2021-01-12 00:26:59', NULL, 0),
(85, 7, 3, 3, 1, 'Blue whale', '2021-01-12 00:26:59', NULL, 0),
(86, 7, 3, 4, 0, 'West', '2021-01-12 00:26:59', NULL, 0),
(87, 7, 3, 5, 0, 'Lion', '2021-01-12 00:26:59', NULL, 0),
(88, 7, 3, 6, 0, 'Mark Admin', '2021-01-12 00:26:59', NULL, 0),
(89, 7, 3, 7, 0, 'January', '2021-01-12 00:26:59', NULL, 0),
(90, 7, 3, 8, 0, 'Menophobia', '2021-01-12 00:26:59', NULL, 0),
(91, 7, 3, 9, 0, 'Cristiano Robert', '2021-01-12 00:26:59', NULL, 0),
(92, 7, 3, 10, 1, 'Email', '2021-01-12 00:26:59', NULL, 0),
(93, 7, 3, 11, 1, 'Jupiter', '2021-01-12 00:26:59', NULL, 0),
(94, 7, 3, 12, 1, 'Kiran Bedi', '2021-01-12 00:26:59', NULL, 0),
(95, 7, 3, 13, 0, 'Reliance Money', '2021-01-12 00:26:59', NULL, 0),
(96, 7, 3, 14, 1, '20 satellites', '2021-01-12 00:26:59', NULL, 0),
(97, 7, 3, 15, 0, 'Jaipur National University', '2021-01-12 00:26:59', NULL, 0),
(98, 7, 3, 16, 0, 'Actor', '2021-01-12 00:26:59', NULL, 0),
(99, 7, 3, 17, 0, 'Shikhar Dhawan', '2021-01-12 00:26:59', NULL, 0),
(100, 7, 3, 18, 0, '36 miles 500 yards', '2021-01-12 00:26:59', NULL, 0),
(101, 7, 3, 19, 1, 'Hockey', '2021-01-12 00:26:59', NULL, 0),
(102, 7, 3, 20, 0, 'IIT-Kanpur', '2021-01-12 00:26:59', NULL, 0),
(103, 8, 2, 1, 1, '7', '2021-01-12 00:30:38', NULL, 1),
(104, 8, 2, 2, 1, 'Lion', '2021-01-12 00:30:38', NULL, 1),
(105, 8, 2, 3, 1, 'Blue whale', '2021-01-12 00:30:38', NULL, 1),
(106, 8, 2, 4, 1, 'East', '2021-01-12 00:30:38', NULL, 1),
(107, 8, 2, 5, 1, 'Cheetah', '2021-01-12 00:30:38', NULL, 1),
(108, 8, 2, 6, 1, 'Cristiano Ronaldo', '2021-01-12 00:30:38', NULL, 1),
(109, 8, 2, 7, 1, 'February', '2021-01-12 00:30:38', NULL, 1),
(110, 8, 2, 8, 0, 'Kemophobia', '2021-01-12 00:30:38', NULL, 1),
(111, 8, 2, 9, 0, 'Robert Paul', '2021-01-12 00:30:38', NULL, 1),
(112, 8, 2, 10, 1, 'Email', '2021-01-12 00:30:38', NULL, 1),
(113, 8, 2, 11, 0, 'Neptune', '2021-01-12 00:30:38', NULL, 1),
(114, 8, 2, 12, 1, 'Kiran Bedi', '2021-01-12 00:30:38', NULL, 1),
(115, 8, 2, 13, 0, 'Reliance Money', '2021-01-12 00:30:38', NULL, 1),
(116, 8, 2, 14, 0, '30 satellites', '2021-01-12 00:30:38', NULL, 1),
(117, 8, 2, 15, 1, 'Bihar’s ancient Nalanda University', '2021-01-12 00:30:38', NULL, 1),
(118, 8, 2, 16, 0, 'Actor', '2021-01-12 00:30:38', NULL, 1),
(119, 8, 2, 17, 0, 'Virat Kohli', '2021-01-12 00:30:38', NULL, 1),
(120, 8, 2, 18, 0, '22 miles', '2021-01-12 00:30:38', NULL, 1),
(121, 8, 2, 19, 0, 'Cricket', '2021-01-12 00:30:38', NULL, 1),
(122, 8, 2, 20, 1, 'C-DAC', '2021-01-12 00:30:38', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` int(11) NOT NULL DEFAULT 2,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mohan Chaudhary', 'admin@admin.com', '$2y$10$tgvIAuD.ccv1tW/WIUsWi.CGoal2HSEbx7Vj/TuiaZMj9OfwGlcBy', 1, 'DwmZMcX9wMsXBSbEUm9gWYq7evC6n70nIEveP6bu3apuYgClU9ezkDYOLsbw', '2021-01-06 01:43:43', '2021-01-06 01:43:43'),
(2, 'Ram Thapa', 'ram@hotmail.com', '$2y$10$jyaTZl6U2Qz3MqcOR5x1UOCMaWMfebCUa76.kjSsgRyM0jjBdfoYq', 2, 'GjBfMNPpLDsjDiqmHgnm8VbqurbFwcs6UsYuo1gUuS7XabTfbyhN6cTefKiy', '2021-01-11 09:48:40', '2021-01-11 09:48:40'),
(3, 'Rosan Regmi', 'rasan@gmail.com', '$2y$10$NUv/Q99mYpQ/0OnmP9A2KOOX08CK2RcO7Jp20FyMtxd2OyjkAeEy.', 2, '93MKuA1TpQ4swAg4aG48frqYtEXw9zn5BETQkLeftFT3Xyugue1eWpHxBGZp', '2021-01-12 00:26:08', '2021-01-12 00:26:08');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `question_options`
--
ALTER TABLE `question_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_options_question_id_foreign` (`question_id`);

--
-- Indexes for table `question_sets`
--
ALTER TABLE `question_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resultcodes`
--
ALTER TABLE `resultcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `results_user_id_foreign` (`user_id`),
  ADD KEY `results_question_id_foreign` (`question_id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `question_options`
--
ALTER TABLE `question_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `question_sets`
--
ALTER TABLE `question_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `resultcodes`
--
ALTER TABLE `resultcodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `question_options`
--
ALTER TABLE `question_options`
  ADD CONSTRAINT `question_options_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `question_sets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `question_sets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
