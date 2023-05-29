-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2023 at 11:41 AM
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
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `chatrooms`
--

CREATE TABLE `chatrooms` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `msg` varchar(200) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatrooms`
--

INSERT INTO `chatrooms` (`id`, `userid`, `msg`, `created_on`) VALUES
(6, 17, 'hello', '2023-05-21 06:54:22'),
(7, 18, 'hey how are you', '2023-05-21 06:57:27'),
(8, 17, 'where are you', '2023-05-21 07:12:10'),
(9, 18, 'i am in gwalior', '2023-05-21 07:12:22'),
(10, 18, 'what about you', '2023-05-21 07:12:33'),
(11, 17, 'i am also in gwalior', '2023-05-21 07:12:54'),
(12, 17, 'what are u doing right now', '2023-05-21 07:14:05'),
(13, 18, 'nothing', '2023-05-21 07:14:24'),
(14, 18, 'hello how are u', '2023-05-21 07:15:03'),
(15, 17, 'i m good', '2023-05-21 07:15:19'),
(16, 17, 'what r u doing right now', '2023-05-21 07:16:05'),
(17, 18, 'nothing', '2023-05-21 07:16:21'),
(18, 17, 'hey man  what are you doing', '2023-05-21 07:24:37'),
(19, 18, 'nothing', '2023-05-21 07:24:46'),
(20, 19, 'hey i m new to this', '2023-05-21 07:38:43'),
(21, 18, 'hello unkown what your name', '2023-05-21 07:39:07'),
(22, 17, 'hello eveyone', '2023-05-22 08:51:31'),
(23, 17, 'hello', '2023-05-22 10:24:23'),
(24, 17, 'good afternoon everyone', '2023-05-29 09:14:03');

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

CREATE TABLE `chat_message` (
  `chat_message_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `chat_message` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL,
  `status` varchar(255) NOT NULL,
  `file_data` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat_message`
--

INSERT INTO `chat_message` (`chat_message_id`, `to_user_id`, `from_user_id`, `chat_message`, `timestamp`, `status`, `file_data`) VALUES
(1, 18, 17, 'hello', '2023-05-22 09:26:57', 'Yes', ''),
(2, 17, 19, 'hello suraj', '2023-05-22 09:27:42', 'Yes', ''),
(3, 17, 19, 'today i think we should go to college', '2023-05-22 09:28:11', 'Yes', ''),
(4, 17, 19, 'there is a seminar in college which is compulsory to attend', '2023-05-22 09:28:45', 'Yes', ''),
(5, 17, 19, 'if we dont go then teacher will deduct some marks from our internal', '2023-05-22 09:29:16', 'Yes', ''),
(6, 17, 19, 'so are you coming or not', '2023-05-22 09:29:26', 'Yes', ''),
(7, 17, 19, 'think about it ', '2023-05-22 09:30:05', 'Yes', ''),
(8, 17, 19, 'and let me know if you are agree', '2023-05-22 09:30:19', 'Yes', ''),
(9, 17, 19, 'i will wait for you', '2023-05-22 09:30:34', 'Yes', ''),
(10, 19, 17, 'i will not come ', '2023-05-22 09:30:56', 'Yes', ''),
(41, 19, 17, 'you', '2023-05-23 12:59:35', 'Yes', ''),
(42, 19, 17, '', '2023-05-23 12:59:44', 'Yes', ''),
(43, 18, 17, 'hello', '2023-05-24 11:36:06', 'Yes', NULL),
(44, 18, 17, '', '2023-05-24 11:36:16', 'Yes', NULL),
(45, 19, 17, '', '2023-05-24 11:39:46', 'Yes', NULL),
(46, 19, 17, '', '2023-05-24 11:45:46', 'Yes', NULL),
(47, 19, 17, 'hello', '2023-05-29 10:51:04', 'Yes', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chat_user_table`
--

CREATE TABLE `chat_user_table` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_profile` varchar(100) NOT NULL,
  `user_status` enum('Disabled','Enable') NOT NULL,
  `user_created_on` datetime NOT NULL,
  `user_verification_code` varchar(100) NOT NULL,
  `user_login_status` enum('Logout','Login') NOT NULL,
  `user_token` varchar(255) NOT NULL,
  `user_connection_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat_user_table`
--

INSERT INTO `chat_user_table` (`user_id`, `user_name`, `user_email`, `user_password`, `user_profile`, `user_status`, `user_created_on`, `user_verification_code`, `user_login_status`, `user_token`, `user_connection_id`) VALUES
(17, 'Suraj Prajapati', 'suraj.prajapati.h1@gmail.com', 'qwertyuiop', 'images/1904893369.jpg', 'Enable', '2023-05-21 09:00:38', '3b3ed076b83deed2ef9ee4af547ac805', 'Login', 'ce888404b169e8e21718fabd75e8e645', 143),
(18, 'hello', 'surajprajapati2652000@gmail.com', 'zxcvbnm', 'images/375535552.jpg', 'Enable', '2023-05-21 09:41:35', '419dab7b29f54da5ecebd412ee4aec16', 'Logout', '6843d5353ea911b2522f300083e9eb25', 106),
(19, 'lola', 'prajapatisuraj2652000@gmail.com', 'qazxswedc', 'images/1684689984.png', 'Enable', '2023-05-21 19:26:24', '1e47f45e30268c7ababa4ec4a8e3ca78', 'Login', 'a0930de4d554900903f4c7fdd6238155', 714),
(20, 'mayank', 'Mayankraj851126@gmail.com', 'mnbvcxz', 'images/1684743625.png', 'Disabled', '2023-05-22 10:20:25', 'c463cd983f45434e09e63c6786045e44', 'Logout', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatrooms`
--
ALTER TABLE `chatrooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`chat_message_id`);

--
-- Indexes for table `chat_user_table`
--
ALTER TABLE `chat_user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chatrooms`
--
ALTER TABLE `chatrooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `chat_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `chat_user_table`
--
ALTER TABLE `chat_user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
