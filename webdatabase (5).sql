-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2022 at 09:59 PM
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
  `Approved` int(255) NOT NULL DEFAULT 1,
  `instructorId` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseId`, `courseName`, `coursePrice`, `enrolledSid`, `description`, `instructorName`, `image`, `Approved`, `instructorId`) VALUES
(41, 'Swift', '14.55', '643006', 'Description The course aims to enable students to analyze problems problemsolving skills basic math to get quality training and exercise by learning the basic concepts and theory of limits theory basic concepts of functions of one variable calculus multif', 'Mohamed Salah', 'uploads/114.jpg', 1, 125),
(42, 'Web Development', '20', '125206', 'Description This course is designed to help students get to know the basic knowledge of Chinese calligraphy arts and teach them how to appreciate the arts', 'Mohamed', 'uploads/102.jpg', 1, 126),
(43, 'Android', '16.55', '1002', 'Description This course is designed to help students get to know the basic knowledge of Chinese calligraphy arts and teach them how to appreciate the arts', 'Mariem', 'uploads/android.jpg', 1, 127),
(44, 'Machine Learning', '18.14', '564858', 'Description The course is designed to help students master the basic knowledege of C langugae and make simple application programming by using C Language and combiningg structured programming thoughts master the basic methods and skills of C programming d', 'Youssef ALaa', 'uploads/105.jpg', 1, 128),
(45, 'Deep Learning', '56', '654564', 'Description This course is to help students learn the rudiments of vector algebra analytic geometry of space basic content Training students to use study geometric problems in the practical application of the analytical method and the ability for subseque', 'Omar wael', 'uploads/108.jpg', 1, 130),
(46, 'Game Development', '20.10', '125101', 'Description The course is designed to help students master the basic knowledege of C langugae and make simple application programming by using C Language and combiningg structured programming thoughts master the basic methods and skills of C programming d', 'Yonos Bahrawy', 'uploads/101.jpg', 1, 131),
(47, 'Computer Graphics', '125', '4564', 'Description This course is designed to educate students with basic knowledege of computer science and help them master operations of Win98XPWord2000Excel2000etc and get to know basic knowldege about Internet and how to search information using electronic ', 'Youssef Hussien', 'uploads/113.jpg', 1, 132),
(48, 'Mobile Development', '45', '750', 'Description With life values ethics education as the main line the courses is to guide students to strengthen their ideological and moral cultivation by integrating use of relevant knowledge Moral Education and Law Basis', 'Yasser', 'uploads/100.png', 1, 133),
(50, 'Salah', '425', '2', 'The course is designed to help students master the basic knowledege of C langugae and make simple application programming by using C Language and combiningg structured programming thoughts master the basic methods and skills of C programming design in ord', 'SalahOmran', 'uploads/3683.jpg', 1, 121);

-- --------------------------------------------------------

--
-- Table structure for table `errors`
--

CREATE TABLE `errors` (
  `errorNum` int(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `fileLoc` varchar(255) NOT NULL,
  `lineNum` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `errors`
--

INSERT INTO `errors` (`errorNum`, `level`, `message`, `fileLoc`, `lineNum`) VALUES
(1, '2', 'Undefined array key \"descriptionnn\"', 'D:xampphtdocsWeb-ProjectPhpAddCourse.php', '80'),
(2, '2', 'Undefined array key \"coursePriceeee\"', 'D:xampphtdocsWeb-ProjectPhpAddCourse.php', '79'),
(3, '2', 'Undefined array key \"coursePricessss\"', 'D:xampphtdocsWeb-ProjectPhpAddCourse.php', '79'),
(4, '2', 'Undefined array key \"coursePricessss\"', 'D:xampphtdocsWeb-ProjectPhpAddCourse.php', '79'),
(5, '2', 'Undefined variable $sql', 'D:xampphtdocsWeb-ProjectPhpAddCourse.php', '78'),
(6, '2', 'Undefined variable $sql', 'D:xampphtdocsWeb-ProjectPhpAddCourse.php', '92'),
(7, '2', 'Undefined variable $query', 'D:xampphtdocsWeb-ProjectPhpadminPanelSearch.php', '34'),
(8, '2', 'Undefined array key \"ide\"', 'D:xampphtdocsWeb-ProjectPhpadminPanelSearch.php', '26'),
(9, '2', 'Undefined variable $html', 'D:xampphtdocsWeb-ProjectPhpadminPanelSearch.php', '76'),
(10, '2', 'Undefined array key \"usernameee\"', 'D:xampphtdocsWeb-ProjectadminPanel.php', '51'),
(11, '2', 'Undefined array key \"ideeeee\"', 'D:xampphtdocsWeb-ProjectPhpeditCourse.php', '75'),
(12, '2', 'Undefined variable $CourseName', 'D:xampphtdocsWeb-ProjectPhpeditCourse.php', '80'),
(13, '2', 'Undefined variable $sql', 'D:xampphtdocsWeb-ProjectAddEditDelete.php', '111'),
(14, '2', 'Undefined variable $sql', 'D:xampphtdocsWeb-ProjectAddEditDelete.php', '111'),
(15, '2', 'Undefined variable $sql', 'D:xampphtdocsWeb-ProjectAddEditDelete.php', '111'),
(16, '2', 'Undefined variable $sql', 'D:xampphtdocsWeb-ProjectAddEditDelete.php', '111'),
(17, '2', 'Undefined variable $row1', 'D:xampphtdocsWeb-ProjectAddEditDelete.php', '120'),
(18, '1024', 'A custom error has been triggered', 'D:xampphtdocsWeb-ProjectAddEditDelete.php', '113'),
(19, '1024', 'A custom error has been triggered', 'D:xampphtdocsWeb-ProjectAddEditDelete.php', '113'),
(20, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-ProjectAddEditDelete.php', '113'),
(21, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-ProjectPhpAddCourse.php', '94'),
(22, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-ProjectPhpAddCourse.php', '94'),
(23, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-ProjectPhpAddCourse.php', '100'),
(24, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcart.php', '244'),
(25, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcart.php', '244'),
(95, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '288'),
(96, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '288'),
(134, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(135, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(136, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(137, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(138, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(139, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(140, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(141, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(142, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(143, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(144, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(145, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(146, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(147, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(148, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(149, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(150, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(151, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(152, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(153, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(154, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(155, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(156, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(157, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(158, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(159, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(160, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(161, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(162, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(163, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(164, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(165, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(166, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(167, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(168, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(169, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(170, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(171, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '226'),
(172, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '229'),
(173, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '229'),
(174, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '229'),
(175, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '229'),
(176, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '229'),
(177, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '229'),
(178, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '229'),
(179, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '229'),
(180, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '229'),
(181, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '229'),
(182, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '230'),
(183, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '230'),
(184, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '230'),
(185, '1024', 'Wrong SQL Statement22', 'D:xampphtdocsWeb-Projectcourses.php', '230'),
(186, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '478'),
(187, '1024', 'Wrong SQL Statement', 'D:xampphtdocsWeb-Projectcourses.php', '478'),
(188, '1024', 'Wrong SQL Statement', 'E:xamphtdocsWEBALLAddEditDelete.php', '128'),
(189, '1024', 'Wrong SQL Statement', 'E:xamphtdocsWEBALLAddEditDelete.php', '128'),
(190, '1024', 'Wrong SQL Statement', 'E:xamphtdocsWEBALLAddEditDelete.php', '128'),
(191, '1024', 'Wrong SQL Statement', 'E:xamphtdocsWEBALLAddEditDelete.php', '128'),
(192, '1024', 'Wrong SQL Statement', 'E:xamphtdocsWEBALLAddEditDelete.php', '128'),
(193, '1024', 'Wrong SQL Statement', 'E:xamphtdocsWEBALLAddEditDelete.php', '128'),
(194, '1024', 'Wrong SQL Statement', 'E:xamphtdocsWEBALLAddEditDelete.php', '128'),
(195, '1024', 'Wrong SQL Statement', 'E:xamphtdocsWEBALLAddEditDelete.php', '128'),
(196, '1024', 'Wrong SQL Statement', 'E:xamphtdocsWEBALLAddEditDelete.php', '128'),
(197, '1024', 'Wrong SQL Statement', 'E:xamphtdocsWEBALLAddEditDelete.php', '128'),
(198, '2', 'Undefined variable $result10', 'E:xamphtdocsWEBALLAddEditDelete.php', '146'),
(199, '2', 'Undefined array key \"instructorName\"', 'E:xamphtdocsWEBALLPhpeditCourse.php', '77'),
(200, '2', 'Undefined variable $instaName', 'E:xamphtdocsWeb-ProjectPhpAddCourse.php', '94'),
(201, '2', 'Undefined variable $instaID', 'E:xamphtdocsWeb-ProjectPhpAddCourse.php', '94'),
(202, '2', 'Undefined array key \"username\"', 'E:xamphtdocsWeb-ProjectadminPanel.php', '51'),
(203, '2', 'Undefined array key \"username\"', 'E:xamphtdocsWeb-ProjectadminPanel.php', '51'),
(204, '2', 'Undefined array key \"username\"', 'E:xamphtdocsWeb-ProjectadminPanel.php', '51'),
(205, '2', 'Undefined array key \"username\"', 'E:xamphtdocsWeb-ProjectadminPanel.php', '51'),
(206, '2', 'Undefined array key \"username\"', 'E:xamphtdocsWeb-ProjectadminPanel.php', '51'),
(207, '2', 'Undefined array key \"username\"', 'E:xamphtdocsWeb-ProjectadminPanel.php', '51'),
(208, '2', 'Undefined array key \"username\"', 'E:xamphtdocsWeb-ProjectadminPanel.php', '51'),
(209, '2', 'Undefined array key \"username\"', 'E:xamphtdocsWeb-ProjectadminPanel.php', '52'),
(210, '2', 'Undefined array key \"ussername\"', 'E:xamphtdocsWeb-ProjectadminPanel.php', '51'),
(211, '1024', 'Wrong SQL Statement', 'E:xamphtdocsWeb-ProjectPhpview-surveys.php', '36'),
(212, '1024', 'Wrong SQL Statement', 'E:xamphtdocsWeb-ProjectPhpview-surveys.php', '36'),
(213, '1024', 'Wrong SQL Statement', 'E:xamphtdocsWeb-ProjectPhpview-surveys.php', '36'),
(214, '1024', 'Wrong SQL Statement', 'E:xamphtdocsWeb-ProjectPhpview-surveys.php', '36'),
(215, '1024', 'Wrong SQL Statement', 'E:xamphtdocsWeb-ProjectPhpview-surveys.php', '36');

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
  `image?` int(255) NOT NULL DEFAULT 0,
  `datetime` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`, `seen`, `comments`, `image?`, `datetime`) VALUES
(218, 1366213838, 1123279351, 'hi', 1, NULL, 0, '2022-01-21 16:53:09'),
(223, 1366213838, 1123279351, 'HI', 1, NULL, 0, '2022-01-21 16:56:05'),
(224, 1366213838, 1123279351, 'HELLOOOO', 1, NULL, 0, '2022-01-21 16:56:11'),
(225, 1366213838, 1123279351, 'HI', 1, NULL, 0, '2022-01-21 16:56:28'),
(226, 1366213838, 1123279351, 'HI', 1, NULL, 0, '2022-01-21 16:58:11'),
(227, 1366213838, 1123279351, 'HIO', 1, NULL, 0, '2022-01-21 16:58:12'),
(228, 1366213838, 1123279351, 'HI', 1, NULL, 0, '2022-01-21 16:58:13'),
(229, 1123279351, 445752559, 'hi', 1, 'hi', 0, '2022-01-21 17:47:23'),
(230, 1123279351, 445752559, 'hi', 1, 'hio', 0, '2022-01-21 17:47:25'),
(231, 1123279351, 445752559, 'hi', 1, 'hi', 0, '2022-01-21 17:47:26'),
(232, 445752559, 1123279351, 'hi', 0, 'hi', 0, '2022-01-21 17:47:32');

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
(41, 104, 206, 303, 402, 707),
(42, 101, 304, 404, 602, 754),
(43, 217, 303, 405, 604, 740),
(44, 5, 0, 0, 0, 4),
(45, 100, 200, 300, 400, 501),
(46, 500, 400, 300, 200, 102),
(47, 1000, 700, 500, 250, 10),
(48, 2000, 1000, 500, 250, 15),
(50, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `userId` int(255) NOT NULL,
  `courseId` int(255) NOT NULL,
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
(122, 43, 'YasserMohamed', '5', 'I love this course', '2022-01-21 21:10:55', 'uploads/123.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE `surveys` (
  `courseid` int(11) NOT NULL,
  `courseName` varchar(255) NOT NULL,
  `userid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `suggestion` varchar(100) NOT NULL,
  `enjoyed?` varchar(255) NOT NULL,
  `instructorId` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `surveys`
--

INSERT INTO `surveys` (`courseid`, `courseName`, `userid`, `name`, `suggestion`, `enjoyed?`, `instructorId`) VALUES
(50, 'Salah', 118, 'gika', 'Yonos Tarek', 'No', 121),
(50, 'Salah', 122, 'YasserMohamed', 'french', 'Yes', 121);

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
(118, 'gika', 'Salah', 50, '425', '2022-01-21 21:57:00', 0),
(122, 'YasserMohamed', 'Web Development', 42, '20', '2022-01-21 19:22:32', 0),
(122, 'YasserMohamed', 'Android', 43, '16.55', '2022-01-21 21:10:39', 0),
(122, 'YasserMohamed', 'Machine Learning', 44, '18.14', '2022-01-21 21:10:39', 0),
(122, 'YasserMohamed', 'Salah', 50, '425', '2022-01-21 20:57:18', 0);

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
  `unique_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`type`, `userid`, `email`, `password`, `username`, `gender`, `image`, `status`, `unique_id`) VALUES
('Adminstrator', 115, 'youssef@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'youssefacssc', 'male', 'uploads/wp7094586-green-gaming-wallpapers.jpg', 'Active now', 234920460),
('Auditor', 116, 'speed@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'speed', 'male', 'uploads/images.png', 'Offline now', 1341090892),
('Tutor', 117, 'salah@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'salah', 'male', 'uploads/126126592_3020492128050804_1703443695247337615_n.jpg', 'Offline now', 122940276),
('Student', 118, 'gika@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'gika', 'male', 'uploads/images.png', 'Active now', 1366213838),
('Student', 119, 'student@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'student', 'male', 'uploads/images.png', 'Offline now', 482502929),
('Adminstrator', 120, 'YonosTarek@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'Yonos Tarek', 'male', 'uploads/IMG_0939-01-01.jpeg', 'Offline now', 1123279351),
('Tutor', 121, 'SalahOmran@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'SalahOmran', 'male', 'uploads/res.jpg', 'Offline now', 1311934541),
('Student', 122, 'YasserMohamed@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'YasserMohamed', 'male', 'uploads/123.jpg', 'Offline now', 445752559),
('Adminstrator', 123, 'MohamedSalah44@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'MohamedSalah', 'male', 'uploads/res.jpg', 'Offline now', 286362056),
('Auditor', 124, 'ChinaManga@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'ChinaManga', 'male', 'uploads/Image2.jpg', 'Active now', 1154051781),
('Tutor', 125, 'mohamedsalahomran44@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'Mohamed Salah', 'male', 'uploads/res.jpg', 'Active now', 723827539),
('Tutor', 126, 'Omarwael@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'Omar wael', 'male', 'uploads/217798059_4227348867359117_6908792753169980018_n (1).jpg', 'Active now', 595617583),
('Tutor', 127, 'Mohamed@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'Mohamed', 'male', 'uploads/jhg.jpg', 'Offline now', 834910699),
('Tutor', 128, 'Mariam@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'Mariam', 'female', 'uploads/111.jpg', 'Offline now', 1134239792),
('Tutor', 130, 'YoussefAlaa@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'YoussefAlaa', 'male', 'uploads/Image5.jpg', 'Offline now', 356532015),
('Tutor', 131, 'Yonosbahrawy@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'Yonos bahrawy', 'male', 'uploads/5.jpg', 'Offline now', 1395589200),
('Tutor', 132, 'YoussefHussien@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'Youssef Hussien', 'male', 'uploads/Image6.jpg', 'Offline now', 1399973887),
('Tutor', 133, 'Yasser@gmail.com', '0f7e44a922df352c05c5f73cb40ba115', 'Yasser', 'male', 'uploads/Image4.jpg', 'Offline now', 1374819763),
('Student', 134, 'mohamedsalahomran44@gmail.c', '0f7e44a922df352c05c5f73cb40ba115', 'hjkhjkhjkhjkhj', 'male', 'uploads/images.png', 'Offline now', 545553283);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseId`,`instructorId`),
  ADD KEY `sad` (`instructorId`);

--
-- Indexes for table `errors`
--
ALTER TABLE `errors`
  ADD PRIMARY KEY (`errorNum`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`) USING BTREE;

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`courseid`) USING BTREE;

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`userId`,`courseId`),
  ADD KEY `courseId` (`courseId`);

--
-- Indexes for table `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`courseid`,`userid`,`instructorId`),
  ADD KEY `das` (`instructorId`);

--
-- Indexes for table `usercourse`
--
ALTER TABLE `usercourse`
  ADD PRIMARY KEY (`userid`,`courseId`),
  ADD KEY `usercourse_ibfk_1` (`courseId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`) USING BTREE,
  ADD UNIQUE KEY `unique_id` (`unique_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `courseId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `errors`
--
ALTER TABLE `errors`
  MODIFY `errorNum` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `courseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `sad` FOREIGN KEY (`instructorId`) REFERENCES `users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`incoming_msg_id`) REFERENCES `users` (`unique_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`outgoing_msg_id`) REFERENCES `users` (`unique_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`courseid`) REFERENCES `course` (`courseId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`courseId`) REFERENCES `course` (`courseId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `surveys`
--
ALTER TABLE `surveys`
  ADD CONSTRAINT `das` FOREIGN KEY (`instructorId`) REFERENCES `course` (`instructorId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `surveys_ibfk_1` FOREIGN KEY (`courseid`) REFERENCES `course` (`courseId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usercourse`
--
ALTER TABLE `usercourse`
  ADD CONSTRAINT `usercourse_ibfk_1` FOREIGN KEY (`courseId`) REFERENCES `course` (`courseId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usercourse_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
