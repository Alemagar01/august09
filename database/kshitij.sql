-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 09, 2022 at 08:42 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kshitij`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `con_desc` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `facts`
--

DROP TABLE IF EXISTS `facts`;
CREATE TABLE IF NOT EXISTS `facts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `facts_desc` varchar(255) NOT NULL,
  `facts_num` int(11) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resumes`
--

DROP TABLE IF EXISTS `resumes`;
CREATE TABLE IF NOT EXISTS `resumes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `resume_desc` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `sub_heading` varchar(255) NOT NULL,
  `sub_desc` varchar(255) NOT NULL,
  `date` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
CREATE TABLE IF NOT EXISTS `skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `skill_desc` varchar(255) NOT NULL,
  `skill_title` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `title`, `skill_desc`, `skill_title`, `status`, `created_at`, `updated_at`) VALUES
(8, 'Itaque ipsum reprehe', 'Minus corrupti volu', 'Omnis aliquam minima', 1, '2022-08-09 08:25:28', '2022-08-09 08:25:28'),
(5, 'Est aut vel temporib', 'Odio culpa autem mag', 'Eius id minus volupt', 1, '2022-08-09 08:18:33', '2022-08-09 08:18:33'),
(6, 'Est aut vel temporib', 'Odio culpa autem mag', 'Eius id minus volupt', 1, '2022-08-09 08:19:54', '2022-08-09 08:19:54'),
(7, 'Est aut vel temporib', 'Odio culpa autem mag', 'Eius id minus volupt', 1, '2022-08-09 08:20:24', '2022-08-09 08:20:24'),
(9, 'gsgjkshgw4utirgsgsjfkgskjfgkjsgnkj', 'Minus corrupti volu', 'Omnis aliquam minima', 1, '2022-08-09 08:26:58', '2022-08-09 08:26:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
