-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2022 at 08:37 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseId` int(255) NOT NULL,
  `courseName` varchar(255) NOT NULL,
  `coursePrice` varchar(255) NOT NULL,
  `enrolledSid` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `instructorName` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `Approved` int(255) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseId`, `courseName`, `coursePrice`, `enrolledSid`, `description`, `instructorName`, `image`, `Approved`) VALUES
(1, 'Swift', '14.55', '640003', 'The course aims to enable students to analyze problems problemsolving skills basic math to get quality training and exercise by learning the basic concepts and theory of limits theory basic concepts of functions of one variable calculus multifunction calc', 'Mohamed Salah', 'uploads/114.jpg', 1),
(2, 'Web Development', '20.00', '12501', 'This course is designed to help students get to know the basic knowledge of Chinese calligraphy arts and teach them how to appreciate the arts', 'Mohamed', 'uploads/102.jpg', 1),
(3, 'Android', '16.55', '10001', 'The course is designed to help students master the basic knowledege of C langugae and make simple application programming by using C Language and combiningg structured programming thoughts master the basic methods and skills of C programming design in ord', 'Mariam', 'uploads/android.jpg', 1),
(4, 'Machine Learning', '18.14', '56458', 'The course is designed to help students master the basic knowledege of C langugae and make simple application programming by using C Language and combiningg structured programming thoughts master the basic methods and skills of C programming design in ord', 'YoussefAlaa', 'uploads/105.jpg', 1),
(5, 'Deep Learning', '56.00', '65466', 'This course is to help students learn the rudiments of vector algebra analytic geometry of space basic content Training students to use study geometric problems in the practical application of the analytical method and the ability for subsequent courses i', 'Omar wael', 'uploads/108.jpg', 1),
(6, 'Game Development', '20.10', '12501', 'The course is designed to help students master the basic knowledege of C langugae and make simple application programming by using C Language and combiningg structured programming thoughts, master the basic methods and skills of C programming design in or', 'Yonos bahrawy', 'uploads/101.jpg', 1),
(8, 'Computer Graphics', '125', '55556', 'This course is designed to educate students with basic knowledege of computer science and help them master operations of Win98XPWord2000Excel2000etc and get to know basic knowldege about Internet and how to search information using electronic mails get to', 'Youssef Hussien', 'uploads/113.jpg', 1),
(9, 'Mobile Development', '45', '750', 'With life values ethics education as the main line the courses is to guide students to strengthen their ideological and moral cultivation by integrating use of relevant knowledge Moral Education and Law Basis', 'Yasser', 'uploads/100.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  `seen` int(16) NOT NULL DEFAULT 0,
  `comments` varchar(255) DEFAULT NULL,
  `image?` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `courseid` int(11) NOT NULL,
  `star1` int(200) NOT NULL,
  `star2` int(200) NOT NULL,
  `star3` int(200) NOT NULL,
  `star4` int(200) NOT NULL,
  `star5` int(200) NOT NULL,
  `TNOR` varchar(255) GENERATED ALWAYS AS (`star1` + `star2` + `star3` + `star4` + `star5`) VIRTUAL,
  `Total` varchar(16) GENERATED ALWAYS AS ((`star1` * 1 + `star2` * 2 + `star3` * 3 + `star4` * 4 + `star5` * 5) / (`star1` + `star2` + `star3` + `star4` + `star5`)) VIRTUAL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`courseid`, `star1`, `star2`, `star3`, `star4`, `star5`) VALUES
(1, 104, 206, 303, 400, 706),
(2, 101, 304, 404, 602, 754),
(3, 217, 303, 405, 604, 739),
(4, 5, 0, 0, 0, 4),
(5, 100, 200, 300, 400, 501),
(6, 500, 400, 300, 200, 102),
(7, 1000, 700, 500, 250, 10),
(8, 2000, 1000, 500, 250, 15),
(9, 12, 20, 33, 40, 2200);

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `scourse` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `userId` varchar(255) NOT NULL,
  `courseId` varchar(255) NOT NULL,
  `user_Name` varchar(255) NOT NULL,
  `user_rating` varchar(255) NOT NULL,
  `user_review` varchar(255) NOT NULL,
  `datetime` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`userId`, `courseId`, `user_Name`, `user_rating`, `user_review`, `datetime`, `image`) VALUES
('122', '1', 'YasserMohamed', '5', 'This course is quite comprehensive when compared with other courses available on this platform that is why I bought it It is packed full with amazing content and like the description it did make me full stack web developer The instructor is a very good te', '2022-01-14 23:54:17', 'uploads/123.jpg'),
('122', '2', 'YasserMohamed', '5', 'Tim Buchalka really does a good job being very thorough  not boring at the same time Plus you get to learn the australian accent  For me the best were 2 sections  1 recurring topic oop quering dbs additional benefit for those who dont know sql youll learn', '2022-01-14 23:58:30', 'uploads/123.jpg'),
('125', '3', 'Mohamed Salah', '4', 'This course is very comprehensive in covering a very complex subject and does it in a very structured manner I had no coding knowledge prior to this course and have found the experience very rewarding The course is great value and I would highly recommend', '2022-01-14 23:59:55', 'uploads/res.jpg'),
('125', '5', 'Mohamed Salah', '5', 'My rating to this course is 4 just because the whole course is not remastered When the whole course gets remastered then this course can be a great python course for beginners Also I suggest that the instructor can keep the videos short and does not need ', '2022-01-15 00:00:11', 'uploads/res.jpg'),
('125', '6', 'Mohamed Salah', '5', 'The course is excellent the content is organized and explained very well I have had a brilliant experience learning about Python and the basics of the language first and then expanding upon my knowledge of Python with all of the different styles and featu', '2022-01-15 00:02:12', 'uploads/res.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE `surveys` (
  `courseid` int(11) NOT NULL,
  `userid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `suggestion` varchar(100) NOT NULL,
  `instructorRate` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `surveys`
--

INSERT INTO `surveys` (`courseid`, `userid`, `name`, `suggestion`, `instructorRate`) VALUES
(4, 122, 'YasserMohamed', '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `usercourse`
--

CREATE TABLE `usercourse` (
  `userid` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `courseName` varchar(255) NOT NULL,
  `courseId` int(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Date` varchar(255) NOT NULL,
  `sent?` int(16) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usercourse`
--

INSERT INTO `usercourse` (`userid`, `username`, `courseName`, `courseId`, `Price`, `Date`, `sent?`) VALUES
(1, 'Salah', 'Swift', 1, '14.55', '2021-12-29 18:25:33', 0),
(1, 'Salah', 'Android', 3, '16.55', '2021-12-29 18:25:33', 0),
(1, 'Salah', 'Algoritm and Data Structure', 6, '20.10', '2021-12-29 18:25:33', 0),
(6, 'Joex', 'Android', 3, '16.55', '2021-12-29 18:25:33', 0),
(6, 'Joex', 'Algoritm and Data Structure', 6, '20.10', '2021-12-29 18:25:33', 0),
(6, 'Joex', 'Computer Graphics', 8, '555', '2021-12-29 18:25:33', 0),
(8, 'Bassem', 'Web Development', 2, '20', '2021-12-29 18:25:33', 0),
(8, 'Bassem', 'Android', 3, '16.55', '2021-12-29 18:25:33', 0),
(8, 'Bassem', 'Machine Learning', 4, '18.14', '2022-01-08 15:10:54', 0),
(8, 'Bassem', 'Computer Graphics', 8, '555', '2021-12-29 18:25:33', 0),
(8, 'Bassem', 'Simpana', 9, '1.00', '2022-01-08 15:10:54', 0),
(21, 'Gika', 'Swift', 1, '14.55', '2021-12-29 18:25:33', 0),
(21, 'Gika', 'Web Development', 2, '20', '2021-12-29 18:25:33', 0),
(21, 'Gika', 'Android', 3, '16.55', '2021-12-29 18:25:33', 0),
(21, 'Gika', 'Machine Learning', 4, '18.14', '2021-12-29 18:25:33', 0),
(21, 'Gika', 'Computer Graphics', 8, '555', '2021-12-29 18:25:33', 0),
(21, 'Gika', 'Simpana', 9, '1', '2021-12-29 18:25:33', 0),
(27, 'Speedoo', 'Web Development', 2, '20', '2021-12-29 18:25:33', 0),
(27, 'Speedoo', 'Deep Learning', 5, '56', '2021-12-29 18:25:33', 0),
(27, 'Speedoo', 'Computer Graphics', 8, '555', '2021-12-29 18:25:33', 0),
(27, 'Speedoo', 'Simpana', 9, '1', '2021-12-29 18:25:33', 0),
(28, 'Nezoko', 'Swift', 1, '14.55', '2021-12-29 18:25:33', 0),
(28, 'Nezoko', 'Web Development', 2, '20', '2021-12-29 18:25:33', 0),
(28, 'Nezoko', 'Android', 3, '16.55', '2021-12-29 18:25:33', 0),
(28, 'Nezoko', 'Machine Learning', 4, '18.14', '2021-12-29 18:25:33', 0),
(28, 'Nezoko', 'Computer Graphics', 8, '555', '2021-12-29 18:25:33', 0),
(28, 'Nezoko', 'Simpana', 9, '1', '2021-12-29 18:25:33', 0),
(36, 'Lara', 'Swift', 1, '14.55', '2021-12-29 18:25:33', 0),
(36, 'Lara', 'Machine Learning', 4, '18.14', '2021-12-29 18:25:33', 0),
(36, 'Lara', 'Deep Learning', 5, '56', '2021-12-29 18:25:33', 0),
(115, 'Ahmed Sameh', 'Web Development', 2, '20', '2021-12-29 18:25:33', 0),
(115, 'Ahmed Sameh', 'Android', 3, '16.55', '2021-12-29 18:25:33', 0),
(118, 'gika', 'Android', 3, '16.55', '2022-01-12 21:47:48', 0),
(118, 'gika', 'Algoritm and Data Structure', 6, '20.10', '2022-01-12 21:47:48', 0),
(118, 'gika', 'math', 13, '1', '2022-01-12 23:15:00', 0),
(118, 'gika', 'math', 14, '1', '2022-01-12 23:16:08', 0),
(122, 'YasserMohamed', 'Swift', 1, '14.55', '2022-01-13 23:22:35', 0),
(122, 'YasserMohamed', 'Web Development', 2, '20.00', '2022-01-13 23:22:35', 0),
(122, 'YasserMohamed', 'Android', 3, '16.55', '2022-01-15 18:11:44', 0),
(122, 'YasserMohamed', 'Machine Learning', 4, '18.14', '2022-01-15 18:11:44', 0),
(125, 'LaraLara', 'Android', 3, '16.55', '2022-01-09 14:30:18', 0),
(125, 'Mohamed Salah', 'Deep Learning', 5, '56.00', '2022-01-14 23:59:39', 0),
(125, 'Mohamed Salah', 'Game Development', 6, '20.10', '2022-01-14 23:59:39', 0),
(134, 'SalmaAbed2', 'Web Development', 2, '20.00', '2022-01-09 18:07:06', 0),
(134, 'SalmaAbed2', 'Android', 3, '16.55', '2022-01-09 18:07:06', 0),
(135, 'SalmaAbed2', 'Swift', 1, '14.55', '2022-01-09 18:27:46', 0),
(135, 'SalmaAbed2', 'Web Development', 2, '20.00', '2022-01-09 18:27:46', 0),
(135, 'SalmaAbed2', 'Android', 3, '16.55', '2022-01-09 18:27:46', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `type` varchar(100) NOT NULL,
  `userid` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Offline now',
  `unique_id` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`type`, `userid`, `email`, `password`, `username`, `gender`, `image`, `status`, `unique_id`) VALUES
('Adminstrator', 115, 'youssef@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'youssef', 'male', 'uploads/images.png', 'Offline now', 234920460),
('Auditor', 116, 'speed@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'speed', 'male', 'uploads/images.png', 'Offline now', 1341090892),
('Tutor', 117, 'salah@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'salah', 'male', 'uploads/126126592_3020492128050804_1703443695247337615_n.jpg', 'Offline now', 122940276),
('Student', 118, 'gika@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'gika', 'male', 'uploads/images.png', 'Offline now', 1366213838),
('Student', 119, 'student@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'student', 'male', 'uploads/images.png', 'Offline now', 482502929),
('Adminstrator', 120, 'YonosTarek@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'Yonos Tarek', 'male', 'uploads/IMG_0939-01-01.jpeg', 'Active now', 1123279351),
('Tutor', 121, 'SalahOmran@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'SalahOmran', 'male', 'uploads/res.jpg', 'Active now', 1311934541),
('Student', 122, 'YasserMohamed@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'YasserMohamed', 'male', 'uploads/123.jpg', 'Offline now', 445752559),
('Adminstrator', 123, 'MohamedSalah44@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'MohamedSalah', 'male', 'uploads/res.jpg', 'Offline now', 286362056),
('Auditor', 124, 'ChinaManga@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'ChinaManga', 'male', 'uploads/Image2.jpg', 'Active now', 1154051781),
('Tutor', 125, 'mohamedsalahomran44@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'Mohamed Salah', 'male', 'uploads/res.jpg', 'Active now', 723827539),
('Tutor', 126, 'Omarwael@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'Omar wael', 'male', 'uploads/217798059_4227348867359117_6908792753169980018_n (1).jpg', 'Offline now', 595617583),
('Tutor', 127, 'Mohamed@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'Mohamed', 'male', 'uploads/jhg.jpg', 'Offline now', 834910699),
('Tutor', 128, 'Mariam@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'Mariam', 'female', 'uploads/111.jpg', 'Offline now', 1134239792),
('Tutor', 130, 'YoussefAlaa@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'YoussefAlaa', 'male', 'uploads/Image5.jpg', 'Offline now', 356532015),
('Tutor', 131, 'Yonosbahrawy@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'Yonos bahrawy', 'male', 'uploads/5.jpg', 'Offline now', 1395589200),
('Tutor', 132, 'YoussefHussien@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'Youssef Hussien', 'male', 'uploads/Image6.jpg', 'Offline now', 1399973887),
('Tutor', 133, 'Yasser@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'Yasser', 'male', 'uploads/Image4.jpg', 'Offline now', 1374819763);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseId`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`courseid`,`star1`,`star2`,`star3`,`star4`,`star5`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`userId`,`courseId`);

--
-- Indexes for table `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`courseid`,`userid`);

--
-- Indexes for table `usercourse`
--
ALTER TABLE `usercourse`
  ADD PRIMARY KEY (`userid`,`courseId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `courseId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `courseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
