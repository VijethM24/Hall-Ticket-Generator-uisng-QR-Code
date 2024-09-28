-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2024 at 12:12 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam_hall`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(500) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(500) NOT NULL,
  `gender` varchar(500) NOT NULL,
  `dob` text NOT NULL,
  `contact` text NOT NULL,
  `address` varchar(500) NOT NULL,
  `image` varchar(2000) NOT NULL,
  `created_on` date NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `fname`, `lname`, `gender`, `dob`, `contact`, `address`, `image`, `created_on`, `group_id`) VALUES
(1, 'admin', 'vijethm2002@gmail.com', '3b35b4c78991d95465d924c28fb764a28444d041cca2ca4d69ea5aaff8ac1fef', 'Vijeth', 'M', 'Male', '1988-05-29', '9353668599', 'Nashik', '20141025_004121_918_Developer.png', '2018-04-30', 1),
(34, 'user', 'vijethm2002@gmail.com', 'aa7f019c326413d5b8bcad4314228bcd33ef557f5d81c7cc977f7728156f4357', 'Vijeth', 'M', 'Male', '2002-01-24', '1234567891', 'Banglore', '', '2024-09-28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `allot_student`
--

CREATE TABLE `allot_student` (
  `id` int(100) NOT NULL,
  `allot_id` int(60) NOT NULL,
  `exam_id` int(50) NOT NULL,
  `exam_date` date NOT NULL,
  `start_time` varchar(20) NOT NULL,
  `end_time` varchar(20) NOT NULL,
  `room_id` int(50) NOT NULL,
  `student_id` int(50) NOT NULL,
  `teacher_id` int(50) DEFAULT NULL,
  `stud_id` varchar(50) NOT NULL,
  `sem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` int(60) NOT NULL,
  `class_id` int(50) NOT NULL,
  `subject_id` int(50) NOT NULL,
  `exam_date` date NOT NULL,
  `start_time` varchar(50) NOT NULL,
  `end_time` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `added_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manage_website`
--

CREATE TABLE `manage_website` (
  `id` int(11) NOT NULL,
  `title` varchar(600) NOT NULL,
  `short_title` varchar(600) NOT NULL,
  `logo` text NOT NULL,
  `footer` text NOT NULL,
  `currency_code` varchar(600) NOT NULL,
  `currency_symbol` varchar(600) NOT NULL,
  `login_logo` text NOT NULL,
  `invoice_logo` text NOT NULL,
  `background_login_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `manage_website`
--

INSERT INTO `manage_website` (`id`, `title`, `short_title`, `logo`, `footer`, `currency_code`, `currency_symbol`, `login_logo`, `invoice_logo`, `background_login_image`) VALUES
(1, 'Exam Hall Management', 'EHM', 'images.jpg', 'Upturn India Technology', 'INR', 'â‚¹', 'images.jpg', '', 'background-form-login-1.png');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(30) NOT NULL,
  `type_id` int(60) NOT NULL,
  `name` varchar(30) NOT NULL,
  `strenght` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `id` int(30) NOT NULL,
  `roomname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_class`
--

CREATE TABLE `tbl_class` (
  `id` int(30) NOT NULL,
  `classname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_class`
--

INSERT INTO `tbl_class` (`id`, `classname`) VALUES
(1, 'MCA'),
(3, 'MBA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_email_config`
--

CREATE TABLE `tbl_email_config` (
  `e_id` int(21) NOT NULL,
  `name` varchar(500) NOT NULL,
  `mail_driver_host` varchar(5000) NOT NULL,
  `mail_port` int(50) NOT NULL,
  `mail_username` varchar(50) NOT NULL,
  `mail_password` varchar(30) NOT NULL,
  `mail_encrypt` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_email_config`
--

INSERT INTO `tbl_email_config` (`e_id`, `name`, `mail_driver_host`, `mail_port`, `mail_username`, `mail_password`, `mail_encrypt`) VALUES
(1, '<student register> ', 'mail.gmail.com', 587, 'ndbhalerao91@gmail.com', 'abc@123', 'sdsad');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group`
--

CREATE TABLE `tbl_group` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_group`
--

INSERT INTO `tbl_group` (`id`, `name`, `description`) VALUES
(1, 'admin', 'admin'),
(4, 'user1', 'user1'),
(5, 'user2', 'user2'),
(7, 'user4', 'user permissin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permission`
--

CREATE TABLE `tbl_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `display_name` varchar(200) NOT NULL,
  `operation` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_permission`
--

INSERT INTO `tbl_permission` (`id`, `name`, `display_name`, `operation`) VALUES
(1, 'manage_student', 'Manage Student', 'manage_student'),
(2, 'add_student', 'Add Student', 'add_student'),
(3, 'edit_student', 'Edit Student', 'edit_student'),
(4, 'delete_student', 'Delete Student', 'delete_student'),
(5, 'manage_teacher', 'Manage Teacher', 'manage_teacher'),
(6, 'add_teacher', 'Add Teacher', 'add_teacher'),
(7, 'edit_teacher', 'Edit Teacher', 'edit_teacher'),
(8, 'delete_teacher', 'Delete Teacher', 'delete_teacher'),
(9, 'manage_subject', 'Manage Subject', 'manage_subject'),
(10, 'add_subject', 'Add Subject', 'add_subject'),
(11, 'edit_subject', 'Edit Subject', 'edit_subject'),
(12, 'delete_subject', 'Delete Subject', 'delete_subject'),
(13, 'manage_class', 'Manage Class', 'manage_class'),
(14, 'add_class', 'Add Class', 'add_class'),
(15, 'edit_class', 'Edit Class', 'edit_class'),
(16, 'delete_class', 'Delete Class', 'delete_class'),
(21, 'manage_user', 'Manage User', 'manage_user'),
(22, 'add_user', 'Add User', 'add_user'),
(23, 'edit_user', 'Edit User', 'edit_user'),
(24, 'delete_user', 'Delete User', 'delete_user'),
(25, 'manage_exam', 'Manage Exam', 'manage_exam');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permission_role`
--

CREATE TABLE `tbl_permission_role` (
  `id` int(30) NOT NULL,
  `permission_id` int(30) NOT NULL,
  `role_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_permission_role`
--

INSERT INTO `tbl_permission_role` (`id`, `permission_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(28, 21, 7),
(29, 22, 7),
(30, 23, 7),
(31, 24, 7),
(32, 1, 5),
(33, 2, 5),
(34, 10, 5),
(35, 14, 5),
(36, 1, 4),
(37, 5, 4),
(38, 6, 4),
(39, 9, 4),
(40, 10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `id` int(11) NOT NULL,
  `stud_id` varchar(50) NOT NULL,
  `sfname` varchar(30) NOT NULL,
  `slname` varchar(30) NOT NULL,
  `classname` varchar(30) NOT NULL,
  `semail` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `sgender` varchar(30) NOT NULL,
  `sdob` date NOT NULL,
  `scontact` int(50) NOT NULL,
  `saddress` varchar(50) NOT NULL,
  `sem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`id`, `stud_id`, `sfname`, `slname`, `classname`, `semail`, `password`, `sgender`, `sdob`, `scontact`, `saddress`, `sem`) VALUES
(11, '1BY22MC058', 'Vijeth', 'M', '1', 'vijethm2002@gmail.com', '86abb32d72a6612a716382b3c999a68b2664a31b1304cca6f22d5e8ff9420824', 'Male', '2001-08-01', 2147483647, 'Banglore', 2),
(14, '3322', 'mahesh', 'kk', '1', 'm@gmail.com', 'mahesh', 'Male', '2023-09-15', 1212121212, 'banglore', 0),
(15, '1', 'Vijeth', 'M', '1', 'vijethm2002@gmail.com', 'aa7f019c326413d5b8bcad4314228bcd33ef557f5d81c7cc977f7728156f4357', 'Male', '2002-01-24', 1234567891, 'Banglore', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subject`
--

CREATE TABLE `tbl_subject` (
  `id` int(30) NOT NULL,
  `class_id` int(60) NOT NULL,
  `subjectname` varchar(30) NOT NULL,
  `s_code` varchar(49) NOT NULL,
  `s_date` varchar(30) NOT NULL,
  `s_time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_subject`
--

INSERT INTO `tbl_subject` (`id`, `class_id`, `subjectname`, `s_code`, `s_date`, `s_time`) VALUES
(5, 1, 'Software Engineering', '22MCA201', '', ''),
(6, 1, 'Mobile Appliaction Development', '22MCA202', '', ''),
(7, 1, 'Web Technologies', '22MCA203', '', ''),
(8, 1, 'Java Programming', '22MCA204', '', ''),
(9, 1, 'Big Data Analytics', '22MCA205', '', ''),
(10, 1, 'Operations Research', '22MCA206', '', ''),
(11, 1, 'Software Testing Lab', '22MCA207', '', ''),
(15, 1, 'Mini Project', '22MCA208', '', ''),
(16, 1, 'DBMS', '22MCA209', '2023-10-16', '9:30AM-12:30PM'),
(17, 1, 'Soft', '22MCA201', '2023-09-20', '9:30AM-12:30PM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher`
--

CREATE TABLE `tbl_teacher` (
  `id` int(50) NOT NULL,
  `tfname` varchar(50) NOT NULL,
  `tlname` varchar(50) NOT NULL,
  `classname` varchar(30) NOT NULL,
  `subjectname` varchar(50) NOT NULL,
  `temail` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `tgender` varchar(50) NOT NULL,
  `tdob` date NOT NULL,
  `tcontact` int(50) NOT NULL,
  `taddress` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allot_student`
--
ALTER TABLE `allot_student`
  ADD PRIMARY KEY (`stud_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_website`
--
ALTER TABLE `manage_website`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_class`
--
ALTER TABLE `tbl_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_email_config`
--
ALTER TABLE `tbl_email_config`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `tbl_group`
--
ALTER TABLE `tbl_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_permission_role`
--
ALTER TABLE `tbl_permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subject`
--
ALTER TABLE `tbl_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(60) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manage_website`
--
ALTER TABLE `manage_website`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_class`
--
ALTER TABLE `tbl_class`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_email_config`
--
ALTER TABLE `tbl_email_config`
  MODIFY `e_id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_group`
--
ALTER TABLE `tbl_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_permission_role`
--
ALTER TABLE `tbl_permission_role`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_subject`
--
ALTER TABLE `tbl_subject`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
