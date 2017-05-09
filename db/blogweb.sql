-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2016 at 08:08 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogger_info`
--

CREATE TABLE IF NOT EXISTS `blogger_info` (
  `blogger_id` int(10) NOT NULL,
  `email` text NOT NULL,
  `blogger_username` text NOT NULL,
  `blogger_password` text NOT NULL,
  `blogger_creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `blogger_is_active` varchar(200) NOT NULL DEFAULT 'yes',
  `blogger_updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `blogger_end_date` date NOT NULL DEFAULT '2016-08-24',
  `profile_pic` varchar(50) NOT NULL DEFAULT '../img/profile.jpg',
  `about` varchar(500) NOT NULL DEFAULT 'Software Developer l Networked Learner | Runner | Fulltoo Vegetarian | Chocolate Lover | Excessive Giggler | Participant Observer'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogger_info`
--

INSERT INTO `blogger_info` (`blogger_id`, `email`, `blogger_username`, `blogger_password`, `blogger_creation_date`, `blogger_is_active`, `blogger_updated_date`, `blogger_end_date`, `profile_pic`, `about`) VALUES
(1, 'anuj78.singh@gmail.com', 'admin', 'anuj', '2015-08-11 09:16:30', 'yes', '2015-08-11 09:16:30', '2017-06-30', '../img/iron.jpg', 'Software Developer l Networked Learner | Runner | Fulltoo Vegetarian | Chocolate Lover | Excessive Giggler | Participant Observer'),
(2, 'noyet@gmail.com', 'noyet', 'yet', '2015-08-11 10:01:42', 'yes', '2015-08-11 10:01:42', '2016-08-24', '../img/bird.jpg', 'Freelance researcher, Tech-Geek, Entrepreneur, Adventurer, Software-enthusiast'),
(3, 'het@gmail.com', 'hey', 'het', '2015-08-11 17:40:40', 'yes', '2015-08-11 17:40:40', '2016-08-24', '../img/profile.jpg', 'Software Developer l Networked Learner | Runner | Fulltoo Vegetarian | Chocolate Lover | Excessive Giggler | Participant Observer'),
(5, 'hi@gmail.com', 'hi', 'abcd', '2015-08-11 18:59:07', 'yes', '2015-08-11 18:59:07', '2016-08-24', '../img/dash.jpg', 'Software Developer l Networked Learner | Runner | Fulltoo Vegetarian | Chocolate Lover | Excessive Giggler | Participant Observer'),
(7, 'anil@gmail.com', 'anil', 'anil', '2015-09-05 04:02:29', 'yes', '2015-09-05 04:02:29', '2016-08-24', '../img/profile.jpg', 'Software Developer l Networked Learner | Runner | Fulltoo Vegetarian | Chocolate Lover | Excessive Giggler | Participant Observer'),
(8, 'abc@xyz.com', 'anuj', 'qwerty', '2016-06-22 22:44:06', 'yes', '2016-06-22 22:44:06', '2016-08-24', '../img/iron.jpg', 'Software Developer l Networked Learner | Runner | Fulltoo Vegetarian | Chocolate Lover | Excessive Giggler | Participant Observer'),
(9, 'asdf@ghjlk.com', 'asdf', 'xyz', '2016-06-27 11:07:38', 'yes', '2016-06-27 11:07:38', '2016-08-24', '../img/profile.jpg', 'Software Developer l Networked Learner | Runner | Fulltoo Vegetarian | Chocolate Lover | Excessive Giggler | Participant Observer'),
(10, 'akks@gmail.com', 'akku342', 'pololilo', '2016-07-02 11:24:58', 'yes', '2016-07-02 11:24:58', '2016-08-24', '../img/profile.jpg', 'Software Developer l Networked Learner | Runner | Fulltoo Vegetarian | Chocolate Lover | Excessive Giggler | Participant Observer');

-- --------------------------------------------------------

--
-- Table structure for table `blog_details`
--

CREATE TABLE IF NOT EXISTS `blog_details` (
  `blog_details_id` int(20) NOT NULL,
  `blog_id` int(20) NOT NULL,
  `blog_detail_image` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_details`
--

INSERT INTO `blog_details` (`blog_details_id`, `blog_id`, `blog_detail_image`) VALUES
(2, 8, '../img/images.jpg'),
(3, 9, '../img/Free-Beach.jpg'),
(4, 10, '../img/download.jpg'),
(5, 11, '../img/application-icon.jpg'),
(6, 12, '../img/pass.jpg'),
(7, 13, '26.jpg'),
(8, 14, 'bird.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `blog_master`
--

CREATE TABLE IF NOT EXISTS `blog_master` (
  `blog_id` int(10) NOT NULL,
  `blogger_id` int(20) NOT NULL,
  `blog_title` varchar(20) NOT NULL,
  `blog_desc` text NOT NULL,
  `blog_category` varchar(20) NOT NULL,
  `blog_auther` varchar(20) NOT NULL,
  `blog_is_active` varchar(20) NOT NULL DEFAULT 'yes',
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_master`
--

INSERT INTO `blog_master` (`blog_id`, `blogger_id`, `blog_title`, `blog_desc`, `blog_category`, `blog_auther`, `blog_is_active`, `creation_date`, `update_date`) VALUES
(8, 2, 'hjgjfghdf', 'vhfvbvbb', 'ghdfhdh', 'noyet', 'yes', '2015-08-30 12:28:43', '2015-08-30 12:28:43'),
(9, 2, 'hxgbxgf', 'dhgdhdythdyfdty', 'fsgfs', 'noyet', 'yes', '2015-08-30 12:31:40', '2015-08-30 12:31:40'),
(10, 2, 'gdhgdhgdgd', 'khlkigkufhd', 'gbdxgdgd', 'noyet', 'yes', '2015-08-30 12:32:24', '2015-08-30 12:32:24'),
(11, 2, 'Hello', 'Welcome To BlogWeb!!!', 'Introduction', 'noyet', 'yes', '2015-08-30 20:24:44', '2015-08-30 20:24:44'),
(12, 1, 'Admin Post', 'Welcome to the world of blogging', 'Welcome', 'admin', 'yes', '2015-09-05 00:06:55', '2015-09-05 00:06:55'),
(13, 8, 'Test post', '26', 'this is test post', 'anuj', 'yes', '2016-07-01 05:10:36', '2016-07-01 05:10:36'),
(14, 10, 'mai', '', '', 'akku342', 'yes', '2016-07-02 05:56:04', '2016-07-02 05:56:04');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `username` varchar(30) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`username`, `first_name`, `last_name`, `comment`) VALUES
('john', 'John', 'Smith', 'Hii there!'),
('vsethia', 'vineet', 'sethia', 'testing'),
('noyet', 'Anuj', 'Singh', 'new password');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `sender` varchar(30) NOT NULL,
  `receiver` varchar(30) NOT NULL,
  `msg` text NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`sender`, `receiver`, `msg`, `date`) VALUES
('anuj', 'asdf', 'Hello asdf', '2016-06-28 07:01:54'),
('asdf', 'anuj', 'hi there', '2016-06-29 06:15:28'),
('admin', 'anuj', 'hello', '2016-06-29 06:31:00'),
('noyet', 'anuj', 'jai hind', '2016-06-29 06:31:00'),
('anuj', 'noyet', 'jai hind', '2016-06-30 04:42:33'),
('akku342', 'anuj', 'hello', '2016-07-02 06:37:22'),
('anuj', 'akku342', 'hi there!!!', '2016-07-02 06:38:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogger_info`
--
ALTER TABLE `blogger_info`
  ADD PRIMARY KEY (`blogger_id`);

--
-- Indexes for table `blog_details`
--
ALTER TABLE `blog_details`
  ADD PRIMARY KEY (`blog_details_id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `blog_master`
--
ALTER TABLE `blog_master`
  ADD PRIMARY KEY (`blog_id`),
  ADD UNIQUE KEY `blog_id` (`blog_id`),
  ADD KEY `blogger_id` (`blogger_id`),
  ADD KEY `blog_id_2` (`blog_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogger_info`
--
ALTER TABLE `blogger_info`
  MODIFY `blogger_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `blog_details`
--
ALTER TABLE `blog_details`
  MODIFY `blog_details_id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `blog_master`
--
ALTER TABLE `blog_master`
  MODIFY `blog_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_details`
--
ALTER TABLE `blog_details`
  ADD CONSTRAINT `blog_details_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog_master` (`blog_id`);

--
-- Constraints for table `blog_master`
--
ALTER TABLE `blog_master`
  ADD CONSTRAINT `blog_master_ibfk_1` FOREIGN KEY (`blogger_id`) REFERENCES `blogger_info` (`blogger_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
