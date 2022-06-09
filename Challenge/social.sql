-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 24, 2022 at 11:10 AM
-- Server version: 8.0.29-0ubuntu0.20.04.3
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(9, 'Test comment', 'sagheer_hussain', 'sagheer_hussain', '2022-05-15 12:00:39', 'no', 69),
(10, 'test', 'sagheer_hussain', 'sagheer_hussain', '2022-05-15 12:00:46', 'no', 69),
(11, 'test', 'sagheer_hussain', 'sagheer_hussain', '2022-05-15 12:02:17', 'no', 70),
(12, 'test', 'akshay_kumar', 'akshay_kumar', '2022-05-15 12:07:41', 'no', 71),
(13, 'test', 'akshay_kumar', 'akshay_kumar', '2022-05-15 12:07:46', 'no', 71),
(14, 'from sagheer', 'sagheer_hussain', 'akshay_kumar', '2022-05-15 12:14:58', 'no', 71),
(15, 'this is comment from same user1', 'new_user1', 'new_user1', '2022-05-15 12:21:20', 'no', 75),
(16, 'test comment', 'new_user2', 'new_user2', '2022-05-15 12:22:35', 'no', 77),
(17, 'comment from user 2', 'new_user1', 'new_user2', '2022-05-15 12:23:24', 'no', 77);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(26, 'sagheer_hussain', 69),
(29, 'akshay_kumar', 71),
(30, 'sagheer_hussain', 71),
(31, 'sagheer_hussain', 70),
(32, 'akshay_kumar', 70),
(33, 'new_user1', 75),
(34, 'new_user2', 77),
(35, 'new_user1', 77);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int NOT NULL,
  `image` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`, `image`) VALUES
(68, 'Test', 'sagheer_hussain', 'none', '2022-05-15 11:54:39', 'no', 'yes', 0, 'assets/images/posts/6280bfcf6a17fScreenshot from 2022-05-07 19-20-44.png'),
(69, 'asdf', 'sagheer_hussain', 'none', '2022-05-15 11:58:22', 'no', 'yes', 11, 'assets/images/posts/6280c0ae3c639Screenshot from 2022-05-07 19-20-44.png'),
(70, 'test', 'sagheer_hussain', 'none', '2022-05-15 12:02:13', 'no', 'no', 2, 'assets/images/posts/6280c1956ba0aScreenshot from 2022-05-07 19-20-44.png'),
(71, 'post from akshay', 'akshay_kumar', 'none', '2022-05-15 12:07:35', 'no', 'yes', 2, 'assets/images/posts/6280c2d7f2bc2Screenshot from 2022-05-07 19-20-44.png'),
(72, 'test', 'akshay_kumar', '', '2022-05-15 12:15:47', 'no', 'yes', 0, ''),
(73, 'asdf', 'akshay_kumar', 'none', '2022-05-15 12:16:39', 'no', 'yes', 0, 'assets/images/posts/6280c4f71b8bcScreenshot from 2022-05-07 19-20-44.png'),
(74, 'test', 'akshay_kumar', 'none', '2022-05-15 12:18:37', 'no', 'no', 0, 'assets/images/posts/6280c56dd0826Screenshot from 2022-05-05 13-46-28.png'),
(75, 'This is test post from user 1', 'new_user1', 'none', '2022-05-15 12:21:07', 'no', 'no', 1, 'assets/images/posts/6280c603a0276Screenshot from 2022-05-07 18-52-46.png'),
(76, 'test post for delete', 'new_user1', 'none', '2022-05-15 12:21:38', 'no', 'yes', 0, 'assets/images/posts/6280c622c33dfScreenshot from 2022-05-07 19-20-44.png'),
(77, 'post from user2', 'new_user2', 'none', '2022-05-15 12:22:29', 'no', 'no', 2, 'assets/images/posts/6280c65553b8cScreenshot from 2022-05-12 16-40-58.png'),
(78, 'every thing is working now', 'new_user1', 'none', '2022-05-15 12:24:03', 'no', 'no', 0, ''),
(79, 'asdf', 'berkgilliam_berkjacobson', 'none', '2022-05-24 09:07:14', 'no', 'yes', 0, 'assets/images/posts/628c761227dbeScreenshot from 2022-01-19 14-18-12.png'),
(80, 'yjhjkh', 'berkgilliam_berkjacobson', 'none', '2022-05-24 09:07:38', 'no', 'no', 0, 'assets/images/posts/628c762adac2aScreenshot from 2022-01-19 14-18-12.png');

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `title` varchar(50) NOT NULL,
  `hits` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`title`, `hits`) VALUES
('Testtestetest', 1),
('Test', 7),
('Sdf', 1),
('Asdf', 3),
('Post', 4),
('Akshay', 1),
('User', 1),
('1', 1),
('Delete', 1),
('User2', 1),
('Yjhjkh', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int NOT NULL,
  `num_likes` int NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(17, 'Berkgilliam', 'Berkjacobson', 'berkgilliam_berkjacobson', 'Sagheer@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2022-05-24', 'assets/images/profile_pics/defaults/head_emerald.png', 2, 0, 'no', ',');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
