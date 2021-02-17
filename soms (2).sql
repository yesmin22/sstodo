-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2021 at 04:40 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `soms`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE IF NOT EXISTS `access` (
`id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `access`
--

INSERT INTO `access` (`id`, `status`) VALUES
(1, 'Yes'),
(2, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `access_menu`
--

CREATE TABLE IF NOT EXISTS `access_menu` (
`id` int(11) NOT NULL,
  `access` varchar(50) NOT NULL,
  `CreateBy` varchar(100) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(100) NOT NULL,
  `UpdateeDate` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `access_menu`
--

INSERT INTO `access_menu` (`id`, `access`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(1, 'IT', 'IT', '2018-07-17 14:59:43', 'IT', '2018-07-17 15:02:02'),
(2, 'Management', 'IT', '2018-07-17 15:16:00', '', '0000-00-00 00:00:00'),
(3, 'Payroll', 'IT', '2018-07-19 15:29:59', '', '0000-00-00 00:00:00'),
(4, 'mmmm', '20001', '2020-12-30 21:48:39', '', '0000-00-00 00:00:00'),
(5, 'GIFT', '20001', '2020-12-31 11:17:47', '', '0000-00-00 00:00:00'),
(6, 'Night gard', '20001', '2020-12-31 11:29:05', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
`id` int(11) NOT NULL,
  `dept_name` varchar(50) NOT NULL,
  `CreateBy` varchar(100) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(100) NOT NULL,
  `UpdateeDate` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `dept_name`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(1, 'Top Management', 'abhijit', '2018-07-17 16:37:10', 'abhijit', '2018-07-17 16:37:16'),
(2, 'Marketing', 'abhijit', '2018-07-17 16:37:27', 'abhijit', '2018-07-17 16:37:27'),
(3, 'Sales', 'abhijit', '2018-07-17 16:37:34', 'abhijit', '2018-07-17 16:37:34'),
(4, 'Accounts', 'abhijit', '2018-07-17 16:37:40', 'abhijit', '2018-07-18 11:03:06'),
(5, 'Information Technology', 'abhijit', '2018-07-17 16:37:59', 'abhijit', '2018-07-17 16:37:59'),
(6, 'Human Resource', 'abhijit', '2018-07-17 16:38:10', 'abhijit', '2018-07-17 16:38:10'),
(7, 'Office Assistant', 'abhijit', '2018-07-22 15:39:43', 'abhijit', '2018-07-22 15:39:43');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE IF NOT EXISTS `designation` (
`id` int(11) NOT NULL,
  `desig_name` varchar(120) NOT NULL,
  `desig_area` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `CreateBy` varchar(100) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(100) NOT NULL,
  `UpdateeDate` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`id`, `desig_name`, `desig_area`, `sort`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(5, 'Chairman', 'Management', 1, 'admin', '2017-03-12 12:23:22', 'admin', '2017-11-13 11:39:03'),
(10, 'Director (Administration)', 'Management', 6, 'admin', '2017-11-12 13:52:41', 'Q078', '2019-05-11 10:35:22'),
(12, 'Director', 'Management', 7, '30001', '2018-02-18 11:45:26', 'Q078', '2019-05-11 10:35:31'),
(17, 'Administrative Officer (Finance)', 'Management', 11, 'Q078', '2019-06-29 12:29:35', '', '0000-00-00 00:00:00'),
(19, 'Accounts Officer', 'Management', 13, 'Q078', '2019-06-29 12:30:08', '', '0000-00-00 00:00:00'),
(20, 'Asst. Admin', 'Management', 14, 'Q078', '2019-06-29 12:30:20', '', '0000-00-00 00:00:00'),
(21, 'APS (Chairman)', 'Management', 15, 'Q078', '2019-06-29 12:30:32', '', '0000-00-00 00:00:00'),
(22, 'Library Officer', 'Management', 16, 'Q078', '2019-06-29 12:30:44', '', '0000-00-00 00:00:00'),
(23, 'Assistant Librarian', 'Management', 17, 'Q078', '2019-06-29 12:31:03', '', '0000-00-00 00:00:00'),
(25, 'Marketing Assistant', 'Management', 19, 'Q078', '2019-06-29 12:31:32', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE IF NOT EXISTS `district` (
`id` int(11) NOT NULL,
  `div_id` int(11) NOT NULL,
  `dist_name` varchar(50) NOT NULL,
  `CreateBy` varchar(100) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(100) NOT NULL,
  `UpdateeDate` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `div_id`, `dist_name`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(1, 1, 'Barguna ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(2, 1, 'Barishal ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(3, 1, 'Bhola ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(4, 1, 'Jhalokati ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(5, 1, 'Patuakhali ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(6, 1, 'Pirojpur ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(7, 2, 'Bandarban ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(8, 2, 'Brahmanbaria ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(9, 2, 'Chandpur ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(10, 2, 'Chattogram ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(11, 2, 'Cumilla ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(12, 2, 'Cox''s Bazar ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(13, 2, 'Feni', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(14, 2, 'Khagrachhari ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(15, 2, 'Lakshmipur ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(16, 2, 'Noakhali ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(17, 2, 'Rangamati ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(18, 3, 'Dhaka ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(19, 3, 'Gazipur ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(20, 3, 'Gopalganj ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(21, 3, 'Kishoreganj ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(22, 3, 'Madaripur ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(23, 3, 'Manikganj ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(24, 3, 'Munshiganj ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(25, 3, 'Narayanganj ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(26, 3, 'Rajbari ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(27, 3, 'Shariatpur ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(28, 3, 'Faridpur ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(29, 3, 'Tangail ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(30, 3, 'Narsingdi ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(31, 4, 'Bagerhat ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(32, 4, 'Chuadanga ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(33, 4, 'Jashore ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(34, 4, 'Jhenaida ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(35, 4, 'Khulna ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(36, 4, 'Kushtia ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(37, 4, 'Magura ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(38, 4, 'Meherpur ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(39, 4, 'Narail ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(40, 4, 'Satkhira ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(41, 5, 'Netrokona ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(42, 5, 'Sherpur ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(43, 5, 'Jamalpur ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(44, 5, 'Mymensingh ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(45, 6, 'Joypurhat ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(46, 6, 'Bogura ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(47, 6, 'Naogaon ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(48, 6, 'Natore ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(49, 6, 'Nawabganj ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(50, 6, 'Pabna ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(51, 6, 'Sirajganj ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(52, 6, 'Rajshahi ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(53, 7, 'Dinajpur ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(54, 7, 'Gaibandha ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(55, 7, 'Kurigram ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(56, 7, 'Lalmonirhat ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(57, 7, 'Nilphamari ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(58, 7, 'Panchagarh ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(59, 7, 'Rangpur ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(60, 7, 'Thakurgaon ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(61, 8, 'Habiganj ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(62, 8, 'Moulvibazar ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(63, 8, 'Sunamganj ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(64, 8, 'Sylhet ', '20001', '2018-07-18 00:00:00', 'abhijit', '2018-07-18 00:00:00'),
(65, 3, 'Dhaka', '20001', '2021-01-03 08:14:42', '20001', '2021-01-03 08:14:42');

-- --------------------------------------------------------

--
-- Table structure for table `divition`
--

CREATE TABLE IF NOT EXISTS `divition` (
`id` int(11) NOT NULL,
  `div_name` varchar(50) NOT NULL,
  `CreateBy` varchar(100) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(100) NOT NULL,
  `UpdateeDate` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `divition`
--

INSERT INTO `divition` (`id`, `div_name`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(1, 'Barishal', '20001', '2018-07-18 10:00:47', 'abhijit', '2018-07-18 10:00:47'),
(2, 'Chattogram', '20001', '2018-07-18 10:01:01', 'abhijit', '2018-07-18 10:01:01'),
(3, 'Dhaka', '20001', '2018-07-18 10:01:10', 'abhijit', '2018-07-18 10:01:10'),
(4, 'Khulna', '20001', '2018-07-18 10:01:18', 'abhijit', '2018-07-18 10:01:18'),
(5, 'Mymensingh', '20001', '2018-07-18 10:01:28', 'abhijit', '2018-07-18 11:09:53'),
(6, 'Rajshahi', '20001', '2018-07-18 10:01:36', 'abhijit', '2018-07-18 10:01:36'),
(7, 'Rangpur', '20001', '2018-07-18 10:01:44', 'abhijit', '2018-07-18 10:01:44'),
(8, 'Sylhet', '20001', '2018-07-18 10:01:52', 'abhijit', '2018-07-18 10:01:52');

-- --------------------------------------------------------

--
-- Table structure for table `doc_list`
--

CREATE TABLE IF NOT EXISTS `doc_list` (
`id` int(11) NOT NULL,
  `document` varchar(50) NOT NULL,
  `CreateBy` varchar(100) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(100) NOT NULL,
  `UpdateeDate` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doc_list`
--

INSERT INTO `doc_list` (`id`, `document`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(1, 'SSC Certificate', 'abhijit', '2018-07-18 12:28:45', 'abhijit', '2018-07-18 12:29:20'),
(2, 'SSC Marksheet', 'abhijit', '2018-07-18 12:29:52', 'abhijit', '2018-07-19 11:29:21'),
(3, 'SSC Testimonial', 'abhijit', '2018-07-19 11:28:53', 'abhijit', '2018-07-19 11:28:53'),
(4, 'HSC Certificate', 'abhijit', '2018-07-19 11:29:02', 'abhijit', '2018-07-19 11:29:02'),
(5, 'HSC Marksheet', 'abhijit', '2018-07-19 11:29:12', 'abhijit', '2018-07-19 11:29:12'),
(6, 'HSC Testimonial', 'abhijit', '2018-07-19 11:29:31', 'abhijit', '2018-07-19 11:29:31'),
(7, 'Bachelor Degree Certificate', 'abhijit', '2018-07-19 11:29:43', 'abhijit', '2018-07-19 11:29:43'),
(8, 'Bachelor Degree Marksheet', 'abhijit', '2018-07-19 11:30:00', 'abhijit', '2018-07-19 11:30:00'),
(9, 'Master Degree Certificate', 'abhijit', '2018-07-19 11:30:14', 'abhijit', '2018-07-19 11:30:14'),
(10, 'Master Degree Marksheet', 'abhijit', '2018-07-19 11:30:27', 'abhijit', '2018-07-19 11:30:27');

-- --------------------------------------------------------

--
-- Table structure for table `exam_list`
--

CREATE TABLE IF NOT EXISTS `exam_list` (
`id` int(11) NOT NULL,
  `exam` varchar(50) NOT NULL,
  `CreateBy` varchar(100) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(100) NOT NULL,
  `UpdateeDate` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam_list`
--

INSERT INTO `exam_list` (`id`, `exam`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(1, 'Secondary School Certificate', 'abhijit', '2018-07-18 10:42:45', 'abhijit', '2018-07-18 10:42:50'),
(2, 'Higher Secondary Certificate', 'abhijit', '2018-07-18 10:43:48', 'abhijit', '2018-07-18 10:43:48'),
(3, 'Bachelor of Hons.', 'abhijit', '2018-07-18 10:44:00', 'abhijit', '2018-07-18 10:44:00'),
(4, 'Masters', 'abhijit', '2018-07-18 10:44:06', 'abhijit', '2018-07-18 10:44:06'),
(5, 'M Phil', '20001', '2021-01-02 09:16:26', '20001', '2021-01-02 09:16:26');

-- --------------------------------------------------------

--
-- Table structure for table `exist_user`
--

CREATE TABLE IF NOT EXISTS `exist_user` (
`id` bigint(11) NOT NULL,
  `username` varchar(120) NOT NULL,
  `name` varchar(50) NOT NULL,
  `CreateBy` varchar(30) NOT NULL,
  `CreateDate` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exist_user`
--

INSERT INTO `exist_user` (`id`, `username`, `name`, `CreateBy`, `CreateDate`) VALUES
(1, '20001', 'Sabina Yeasmin', '20001', '2020-12-27'),
(2, '20002', 'Abhijit Chanda', '20001', '2020-12-27');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE IF NOT EXISTS `gender` (
`gen_id` int(11) NOT NULL,
  `gen_name` varchar(50) NOT NULL,
  `CreateBy` varchar(100) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(100) NOT NULL,
  `UpdateeDate` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`gen_id`, `gen_name`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(1, 'Male', 'admin', '2016-11-05 10:52:02', 'admin', '2017-06-03 09:09:31'),
(2, 'Female', 'admin', '2016-11-05 10:52:22', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `generate_id`
--
CREATE TABLE IF NOT EXISTS `generate_id` (
`staff_id` varchar(50)
);
-- --------------------------------------------------------

--
-- Table structure for table `itteam`
--

CREATE TABLE IF NOT EXISTS `itteam` (
`id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `staff_id` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `section_id` varchar(10) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `doj` varchar(100) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `mother_name` varchar(50) NOT NULL,
  `national_id` varchar(30) NOT NULL,
  `qualification` varchar(150) NOT NULL,
  `mobile_no` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(10) NOT NULL,
  `status` varchar(5) NOT NULL,
  `sort` int(11) NOT NULL,
  `CreateBy` varchar(30) NOT NULL,
  `CreateDate` date NOT NULL,
  `UpdateBy` varchar(30) NOT NULL,
  `UpdateeDate` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `itteam`
--

INSERT INTO `itteam` (`id`, `image`, `staff_id`, `name`, `section_id`, `dob`, `doj`, `designation`, `father_name`, `mother_name`, `national_id`, `qualification`, `mobile_no`, `email`, `username`, `status`, `sort`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(2, 'dummy_pic.jpg', '20002', 'Abhijit Chanda', '1', '', '', 'Developer', '', '', '', '', '', '', '20002', 'YES', 2, '20001', '2020-12-16', '', '0000-00-00'),
(1, 'dummy_pic.jpg', '20001', 'Sabina Yeasmin', '1', '', '', 'Team Leader', '', '', '', '', '', '', '20001', 'YES', 1, '20001', '2020-12-16', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `menulist`
--

CREATE TABLE IF NOT EXISTS `menulist` (
`id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `menu_icon` varchar(100) NOT NULL,
  `menu_name` varchar(50) NOT NULL,
  `parent_menu` varchar(50) CHARACTER SET latin1 NOT NULL,
  `menu_path` varchar(50) NOT NULL,
  `access` varchar(25) NOT NULL,
  `main_menu_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `status` varchar(2) NOT NULL,
  `CreateBy` varchar(30) NOT NULL,
  `CreateDate` date NOT NULL,
  `UpdateBy` varchar(30) NOT NULL,
  `UpdateeDate` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menulist`
--

INSERT INTO `menulist` (`id`, `menu_id`, `menu_icon`, `menu_name`, `parent_menu`, `menu_path`, `access`, `main_menu_id`, `sort`, `status`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(1, 1, 'os-icon os-icon-layers', 'Primary', 'Main', '', 'Management', 0, 0, 'Y', '20001', '2021-01-05', '', '0000-00-00'),
(2, 2, '', 'Dashboard', 'Primary', 'index.php?Basic=Dashboard', 'Management', 1, 1, 'Y', '20001', '2021-01-05', '', '0000-00-00'),
(3, 3, '', 'Staff List', 'Primary', 'index.php?Basic=StaffList', 'Management', 1, 2, 'Y', '20001', '2021-01-05', '', '0000-00-00'),
(4, 4, '', 'Branch List', 'Primary', 'index.php?Basic=BranchList', 'Management', 1, 3, 'Y', '20001', '2021-01-05', '', '0000-00-00'),
(5, 5, '', 'Area List', 'Primary', 'index.php?Basic=AreaList', 'Management', 1, 4, 'Y', '20001', '0000-00-00', '', '0000-00-00'),
(6, 6, '', 'Director List', 'Primary', 'index.php?Basic=DirList', 'Management', 1, 5, 'Y', '20001', '0000-00-00', '', '0000-00-00'),
(7, 7, '', 'Out Loan', 'Primary', 'index.php?Basic=OutLoan', 'Management', 1, 6, 'Y', '20001', '0000-00-00', '', '0000-00-00'),
(8, 8, '', 'Bank List', 'Primary', 'index.php?Basic=BnkList', 'Management', 1, 7, 'Y', '20001', '0000-00-00', '', '0000-00-00'),
(9, 9, '', 'Voucher Category', 'Primary', 'index.php?Basic=VouCat', 'Management', 1, 8, 'Y', '20001', '0000-00-00', '', '0000-00-00'),
(10, 10, '', 'DPS Scheme', 'Primary', 'index.php?Basic=DPS', 'Management', 1, 9, 'N', '20001', '0000-00-00', '', '0000-00-00'),
(11, 11, '', 'FDR Scheme', 'Primary', 'index.php?Basic=FDR', 'Management', 1, 10, 'N', '20001', '0000-00-00', '', '0000-00-00'),
(12, 12, '', 'Asset', 'Primary', 'index.php?Basic=Asset', 'Management', 1, 11, 'N', '20001', '0000-00-00', '', '0000-00-00'),
(13, 13, '', 'Adjustment', 'Primary', 'index.php?Basic=Adjust', 'Management', 1, 12, 'N', '20001', '0000-00-00', '', '0000-00-00'),
(14, 14, '', 'Holiday', 'Primary', 'index.php?Basic=Holiday', 'Management', 1, 13, 'N', '20001', '0000-00-00', '', '0000-00-00'),
(15, 15, '', 'Notice', 'Primary', 'index.php?Basic=Notice', 'Management', 1, 14, 'N', '20001', '0000-00-00', '', '0000-00-00'),
(16, 16, 'os-icon os-icon-package', 'Accounts', 'Main', '', 'Management', 0, 0, 'Y', '20001', '0000-00-00', '', '0000-00-00'),
(17, 17, '', 'New Member', 'Accounts', 'index.php?Basic=NewMem', 'Management', 16, 1, 'Y', '20001', '0000-00-00', '', '0000-00-00'),
(18, 18, '', 'Members', 'Accounts', 'index.php?Basic=MemList', 'Management', 16, 2, 'Y', '20001', '0000-00-00', '', '0000-00-00'),
(19, 19, '', 'All General AC', 'Accounts', 'index.php?Basic=GenAC', 'Management', 16, 3, 'Y', '20001', '0000-00-00', '', '0000-00-00'),
(20, 20, '', 'All DPS AC', 'Accounts', 'index.php?Basic=DPSAC', 'Management', 16, 4, 'Y', '20001', '0000-00-00', '', '0000-00-00'),
(21, 21, '', 'New DPS', 'Accounts', 'index.php?Basic=NewDPS', 'Management', 16, 5, 'Y', '20001', '0000-00-00', '', '0000-00-00'),
(22, 22, '', 'FDR AC List', 'Accounts', 'index.php?Basic=FDRACL', 'Management', 16, 6, 'Y', '20001', '0000-00-00', '', '0000-00-00'),
(23, 23, '', 'New FRD', 'Accounts', 'index.php?Basic=NewFDR', 'Management', 16, 7, 'Y', '20001', '0000-00-00', '', '0000-00-00'),
(24, 24, '', 'All Loan AC', 'Accounts', 'index.php?Basic=AlLoanAC', 'Management', 16, 8, 'Y', '20001', '0000-00-00', '', '0000-00-00'),
(25, 25, '', 'New Loan', 'Accounts', 'index.php?Basic=NewLoan', 'Management', 16, 9, 'Y', '20001', '0000-00-00', '', '0000-00-00'),
(26, 26, '', 'All Share AC', 'Accounts', 'index.php?Basic=AllShaAC', 'Management', 16, 10, 'Y', '20001', '0000-00-00', '', '0000-00-00'),
(27, 27, '', 'All CC AC', 'Accounts', 'index.php?Basic=AllCCAC', 'Management', 16, 11, 'Y', '20001', '0000-00-00', '', '0000-00-00'),
(28, 28, '', 'Closing', 'Accounts', 'index.php?Basic=Closing', 'Management', 16, 12, 'Y', '20001', '0000-00-00', '', '0000-00-00'),
(29, 29, '', 'Loan Application List', 'Accounts', 'index.php?Basic=LoanApp', 'Management', 16, 13, 'Y', '20001', '0000-00-00', '', '0000-00-00'),
(30, 30, '', 'Extra', 'Main', '', 'Management', 0, 0, 'Y', '20001', '0000-00-00', '', '0000-00-00'),
(31, 31, '', 'Sign Out', 'Extra', 'signout.php', 'Management', 30, 1, 'Y', '20001', '0000-00-00', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `menulist1`
--

CREATE TABLE IF NOT EXISTS `menulist1` (
  `id` int(11) NOT NULL DEFAULT '0',
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `parent_menu` varchar(50) NOT NULL,
  `menu_path` varchar(50) CHARACTER SET utf8 NOT NULL,
  `access` varchar(25) CHARACTER SET utf8 NOT NULL,
  `main_menu_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `status` varchar(2) CHARACTER SET utf8 NOT NULL,
  `CreateBy` varchar(30) CHARACTER SET utf8 NOT NULL,
  `CreateDate` date NOT NULL,
  `UpdateBy` varchar(30) CHARACTER SET utf8 NOT NULL,
  `UpdateeDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menulist1`
--

INSERT INTO `menulist1` (`id`, `menu_id`, `menu_name`, `parent_menu`, `menu_path`, `access`, `main_menu_id`, `sort`, `status`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(1, 1, 'Primary', 'Primary', '', 'Management', 0, 0, 'Y', 'IT', '2017-10-10', '20001', '2020-12-31'),
(2, 2, 'Dashboard', 'Primary', 'index.php?Basic=AccessIT', 'Management', 1, 1, 'Y', 'IT', '2017-10-10', '20001', '2020-12-31'),
(3, 3, 'Menu List', 'Menu', 'index.php?Basic=MenuIT', 'Management', 1, 2, 'Y', 'IT', '2017-10-10', 'IT', '2017-10-23'),
(5, 5, 'Show Menu', 'Menu', 'index.php?Basic=ShowMenuIT', 'Management', 1, 3, 'Y', 'IT', '2017-10-10', 'IT', '2017-10-23'),
(6, 6, 'Basic Entry', 'Main', '', 'Management', 0, 0, 'Y', 'IT', '2018-07-17', 'IT', '2018-07-17'),
(7, 7, 'Company', 'Basic Entry', 'index.php?Basic=ComPanyMan', 'Management', 6, 1, 'Y', 'IT', '2018-07-17', 'IT', '2018-07-17'),
(8, 8, 'Department(s)', 'Basic Entry', 'index.php?Basic=DeptMan', 'Management', 6, 2, 'Y', 'IT', '2018-07-17', 'IT', '2018-07-17'),
(9, 9, 'Designation', 'Basic Entry', 'index.php?Basic=DesigMan', 'Management', 6, 3, 'Y', 'IT', '2018-07-17', 'IT', '2018-07-17'),
(10, 10, 'Divition', 'Basic Entry', 'index.php?Basic=DiviMan', 'Management', 6, 4, 'Y', 'IT', '2018-07-18', 'IT', '2018-07-18'),
(11, 11, 'District', 'Basic Entry', 'index.php?Basic=DistrictMan', 'Management', 6, 5, 'Y', 'IT', '2018-07-18', 'IT', '2018-07-18'),
(12, 12, 'Upazila', 'Basic Entry', 'index.php?Basic=UpazilaMan', 'Management', 6, 6, 'Y', 'IT', '2018-07-18', 'IT', '2018-07-18'),
(13, 13, 'Exam List', 'Basic Entry', 'index.php?Basic=ExmLstMan', 'Management', 6, 7, 'Y', 'IT', '2018-07-18', 'IT', '2018-07-18'),
(14, 14, 'Employee', 'Main', '', 'Management', 0, 0, 'Y', 'IT', '2018-07-18', 'IT', '2018-07-18'),
(15, 15, 'Information Entry', 'Employee', 'index.php?Basic=EmpInfoMan', 'Management', 14, 1, 'Y', 'IT', '2018-07-18', 'IT', '2018-07-18'),
(16, 16, 'Document List', 'Basic Entry', 'index.php?Basic=DocLstMan', 'Management', 6, 8, 'Y', 'IT', '2018-07-18', 'IT', '2018-07-18'),
(17, 17, 'Gender', 'Basic Entry', 'index.php?Basic=GenderMan', 'Management', 6, 9, 'Y', 'IT', '2018-07-18', 'IT', '2018-07-18'),
(18, 18, 'Religion', 'Basic Entry', 'index.php?Basic=ReligionMan', 'Management', 6, 10, 'Y', 'IT', '2018-07-18', 'IT', '2018-07-18'),
(19, 19, 'Document Entry', 'Employee', 'index.php?Basic=AllDocEnMan', 'Management', 14, 2, 'Y', 'IT', '2018-07-19', 'IT', '2018-07-19'),
(20, 20, 'Education Entry', 'Employee', 'index.php?Basic=AllEduEnMan', 'Management', 14, 3, 'Y', 'IT', '2018-07-19', 'IT', '2018-07-19'),
(21, 21, 'Bank Info Entry', 'Employee', 'index.php?Basic=BankInfoEnMan', 'Management', 14, 4, 'Y', 'IT', '2018-07-19', 'IT', '2018-07-19'),
(22, 22, 'General', 'Main', '', 'Management', 0, 0, 'Y', '20001', '2020-12-28', '', '0000-00-00'),
(23, 23, 'Staff List', 'General', 'index.php?Basic=StaffEntryMan', 'Management', 22, 1, 'Y', '20001', '2020-12-28', '', '0000-00-00'),
(24, 0, '', '', '', '', 0, 0, 'Y', '20001', '2020-12-31', '', '0000-00-00'),
(25, 24, 'Area List', 'General', 'index.php?Basic=AreaListMan', 'Management', 22, 2, 'Y', '20001', '2020-12-31', '', '0000-00-00'),
(26, 25, 'Director List', 'General', 'index.php?Basic=DirListGen', 'Management', 22, 3, 'Y', '20001', '2020-12-31', '', '0000-00-00'),
(27, 26, 'Bank List', 'General', 'index.php?Basic=BankListMan', 'Management', 22, 4, 'Y', '20001', '2020-12-31', '', '0000-00-00'),
(28, 27, 'Voucher Category', 'General', 'index.php?Basic=VoucCat', 'Management', 22, 5, 'Y', '20001', '2020-12-31', '', '0000-00-00'),
(29, 28, 'DPS Scheme', 'General', 'index.php?Basic=DPSCheme', 'Management', 22, 6, 'Y', '20001', '2021-01-02', '', '0000-00-00'),
(30, 29, 'FDR Scheme', 'General', 'index.php?Basic=FDRSCheme', 'Management', 22, 7, 'Y', '20001', '2021-01-02', '', '0000-00-00'),
(31, 30, 'Setting', 'General', 'index.php?Basic=MeSetting', 'Management', 22, 8, 'Y', '20001', '2021-01-02', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `post_office`
--

CREATE TABLE IF NOT EXISTS `post_office` (
`id` int(11) NOT NULL,
  `thana_id` int(11) NOT NULL,
  `postoffice_name` varchar(200) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_date` date NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `updated_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_office`
--

INSERT INTO `post_office` (`id`, `thana_id`, `postoffice_name`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 108, 'Taltoli', '', '0000-00-00', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `religion`
--

CREATE TABLE IF NOT EXISTS `religion` (
`id` int(11) NOT NULL,
  `rel_name` varchar(50) NOT NULL,
  `CreateBy` varchar(100) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(100) NOT NULL,
  `UpdateeDate` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `religion`
--

INSERT INTO `religion` (`id`, `rel_name`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(1, 'Muslim', 'abhijit', '2018-07-18 15:42:33', 'abhijit', '2018-07-18 15:42:36'),
(2, 'Hindu', 'abhijit', '2018-07-18 15:42:42', 'abhijit', '2018-07-18 15:42:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_area`
--

CREATE TABLE IF NOT EXISTS `tbl_area` (
`id` int(11) NOT NULL,
  `area_id` varchar(50) NOT NULL,
  `area_name` varchar(100) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `res_per_name` varchar(100) NOT NULL,
  `mobile_no` varchar(100) NOT NULL,
  `phone_no` varchar(100) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `lattitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `CreateBy` varchar(100) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(100) NOT NULL,
  `UpdateeDate` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_area`
--

INSERT INTO `tbl_area` (`id`, `area_id`, `area_name`, `branch_name`, `address`, `res_per_name`, `mobile_no`, `phone_no`, `staff_id`, `lattitude`, `longitude`, `status`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(1, '10001', 'Dhaka Sadar', 'Dhaka', 'Dhaka, Bangladesh', 'Rahamatullah', '123456', '123456', 20003, '21152111', '454121', 'Yes', '20001', '2020-12-31 12:28:40', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE IF NOT EXISTS `tbl_bank` (
`id` int(11) NOT NULL,
  `bank_id` varchar(50) NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `acc_no` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `status` varchar(10) NOT NULL,
  `CreateBy` varchar(100) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(100) NOT NULL,
  `UpdateeDate` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`id`, `bank_id`, `bank_name`, `branch_name`, `acc_no`, `address`, `status`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(1, 'B1001', 'Sonali Bank', 'Motijhil', '5456413132', 'Dhaka, Bangladesh', 'Yes', '20001', '2020-12-31 13:15:38', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_director`
--

CREATE TABLE IF NOT EXISTS `tbl_director` (
`id` int(11) NOT NULL,
  `dir_id` varchar(50) NOT NULL,
  `dir_name` varchar(100) NOT NULL,
  `profession` varchar(100) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `status` varchar(10) NOT NULL,
  `CreateBy` varchar(100) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(100) NOT NULL,
  `UpdateeDate` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_director`
--

INSERT INTO `tbl_director` (`id`, `dir_id`, `dir_name`, `profession`, `mobile`, `address`, `status`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(1, 'A101', 'Md Akhtar Hossain', 'Chairperson', '123456', '20 Malitola Lane, Dhaka', 'Yes', '20001', '2020-12-31 12:47:00', '20001', '2020-12-31 18:35:22'),
(3, 'C101', 'Md. Najim Uddin', 'profecions', '01631570401', 'dfsddfsds', 'Yes', '20001', '2020-12-31 18:36:11', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fdr_type`
--

CREATE TABLE IF NOT EXISTS `tbl_fdr_type` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `CreateBy` varchar(100) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(100) NOT NULL,
  `UpdateeDate` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_fdr_type`
--

INSERT INTO `tbl_fdr_type` (`id`, `name`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(1, 'Monthly Profit', '20001', '2021-01-02 00:00:00', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE IF NOT EXISTS `tbl_member` (
`id` int(11) NOT NULL,
  `member_id` varchar(200) NOT NULL,
  `member_name` varchar(200) NOT NULL,
  `thana_name` int(11) NOT NULL,
  `postoffice_name` int(11) NOT NULL,
  `district_name` int(11) NOT NULL,
  `active_status` int(11) NOT NULL COMMENT '1 for active member'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`id`, `member_id`, `member_name`, `thana_name`, `postoffice_name`, `district_name`, `active_status`) VALUES
(1, '', 'Sabina Sathy', 108, 1, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_scheme`
--

CREATE TABLE IF NOT EXISTS `tbl_scheme` (
`id` int(11) NOT NULL,
  `scheme_category` varchar(100) NOT NULL,
  `scheme_name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `payment_duration` int(11) NOT NULL,
  `profit` int(11) NOT NULL,
  `CreateBy` varchar(100) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(100) NOT NULL,
  `UpdateeDate` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_scheme`
--

INSERT INTO `tbl_scheme` (`id`, `scheme_category`, `scheme_name`, `type`, `payment_duration`, `profit`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(1, 'DPS', 'Daily 100', '', 1, 0, '20001', '2021-01-02 10:59:58', '20001', '2021-01-03 08:16:13'),
(3, 'FDR', 'Monthly 10%', 'Monthly Profit', 1, 10, '20001', '2021-01-02 11:19:08', '', '0000-00-00 00:00:00'),
(4, 'DPS', 'Daily 30 taka', '', 1, 0, '20001', '2021-01-03 08:16:46', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staff`
--

CREATE TABLE IF NOT EXISTS `tbl_staff` (
`id` int(11) NOT NULL,
  `staff_id` varchar(50) NOT NULL,
  `doj` date NOT NULL,
  `staff_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `mother_name` varchar(100) NOT NULL,
  `nid` varchar(100) NOT NULL,
  `gen_id` int(11) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `desig_id` varchar(10) NOT NULL,
  `salary` varchar(100) NOT NULL,
  `admin_role` varchar(100) NOT NULL,
  `CreateBy` varchar(100) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(100) NOT NULL,
  `UpdateeDate` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_staff`
--

INSERT INTO `tbl_staff` (`id`, `staff_id`, `doj`, `staff_name`, `dob`, `father_name`, `mother_name`, `nid`, `gen_id`, `mobile`, `address`, `image`, `signature`, `desig_id`, `salary`, `admin_role`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(1, '20003', '2020-12-01', 'Rahim Hossain', '1970-12-01', '', '', '', 1, '123456', 'Dhaka, Bangladesh', '', '', '', '', '', '20001', '2020-12-31 00:00:00', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_voucher_category`
--

CREATE TABLE IF NOT EXISTS `tbl_voucher_category` (
`id` int(11) NOT NULL,
  `cat_type` varchar(10) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `CreateBy` varchar(100) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(100) NOT NULL,
  `UpdateeDate` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_voucher_category`
--

INSERT INTO `tbl_voucher_category` (`id`, `cat_type`, `cat_name`, `status`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(1, '1', 'Entertainment', 'Yes', '20001', '2021-01-02 10:27:31', '', '0000-00-00 00:00:00'),
(2, '1', 'Example', 'Yes', '20001', '2021-01-02 18:06:53', '', '0000-00-00 00:00:00'),
(3, '1', 'অফিস ভাড়া', 'Yes', '20001', '2021-01-02 18:26:05', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_voucher_cat_type`
--

CREATE TABLE IF NOT EXISTS `tbl_voucher_cat_type` (
`id` int(11) NOT NULL,
  `cat_type_name` varchar(100) NOT NULL,
  `CreateBy` varchar(100) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(100) NOT NULL,
  `UpdateeDate` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_voucher_cat_type`
--

INSERT INTO `tbl_voucher_cat_type` (`id`, `cat_type_name`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(1, 'Expense', '20001', '2020-12-31 00:00:00', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `upazila`
--

CREATE TABLE IF NOT EXISTS `upazila` (
`id` int(11) NOT NULL,
  `dist_id` int(11) NOT NULL,
  `upazila_name` varchar(50) NOT NULL,
  `CreateBy` varchar(100) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(100) NOT NULL,
  `UpdateeDate` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `upazila`
--

INSERT INTO `upazila` (`id`, `dist_id`, `upazila_name`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(1, 1, 'Amtali', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(2, 1, 'Bamna', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(3, 1, 'Barguna Sadar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(4, 1, 'Betagi', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(5, 1, 'Patharghata', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(6, 1, 'Taltali', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(7, 2, 'Agailjhara', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(8, 2, 'Babuganj', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(9, 2, 'Bakerganj', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(10, 2, 'Banaripara', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(11, 2, 'Gaurnadi', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(12, 2, 'Hizla', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(13, 2, 'Barishal Sadar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(14, 2, 'Mehendiganj', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(15, 2, 'Muladi', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(16, 2, 'Wazirpur', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(17, 3, 'Bhola Sadar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(18, 3, 'Burhanuddin', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(19, 3, 'Char Fasson', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(20, 3, 'Daulatkhan', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(21, 3, 'Lalmohan', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(22, 3, 'Manpura', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(23, 3, 'Tazumuddin', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(24, 4, 'Jhalokati Sadar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(25, 4, 'Kathalia', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(26, 4, 'Nalchity', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(27, 4, 'Rajapur', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(28, 5, 'Bauphal', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(29, 5, 'Dashmina', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(30, 5, 'Galachipa', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(31, 5, 'Kalapara', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(32, 5, 'Mirzaganj', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(33, 5, 'Patuakhali Sadar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(34, 5, 'Rangabali', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(35, 5, 'Dumki', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(36, 6, 'Bhandaria', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(37, 6, 'Kawkhali', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(38, 6, 'Mathbaria', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(39, 6, 'Nazirpur', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(40, 6, 'Pirojpur Sadar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(41, 6, 'Nesarabad (Swarupkati)', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(42, 6, 'Indurkani', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(43, 7, 'Ali Kadam', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(44, 7, 'Bandarban Sadar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(45, 7, 'Lama', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(46, 7, 'Naikhongchhari', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(47, 7, 'Rowangchhari', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(48, 7, 'Ruma', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(49, 7, 'Thanchi', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(50, 8, 'Akhaura', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(51, 8, 'Bancharampur', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(52, 8, 'Brahmanbaria Sadar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(53, 8, 'Kasba', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(54, 8, 'Nabinagar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(55, 8, 'Nasirnagar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(56, 8, 'Sarail', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(57, 8, 'Ashuganj', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(58, 8, 'Bijoynagar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(59, 9, 'Chandpur Sadar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(60, 9, 'Faridganj', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(61, 9, 'Haimchar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(62, 9, 'Haziganj', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(63, 9, 'Kachua', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(64, 9, 'Matlab Dakshin', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(65, 9, 'Matlab Uttar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(66, 9, 'Shahrasti', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(67, 10, 'Anwara', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(68, 10, 'Banshkhali', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(69, 10, 'Boalkhali', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(70, 10, 'Chandanaish', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(71, 10, 'Fatikchhari', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(72, 10, 'Hathazari', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(73, 10, 'Karnaphuli', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(74, 10, 'Lohagara', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(75, 10, 'Mirsharai', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(76, 10, 'Patiya', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(77, 10, 'Rangunia', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(78, 10, 'Raozan', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(79, 10, 'Sandwip', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(80, 10, 'Satkani', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(81, 10, 'Sitakunda', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(82, 11, 'Barura', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(83, 11, 'Brahmanpara', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(84, 11, 'Burichang', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(85, 11, 'Chandina', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(86, 11, 'Chauddagram', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(87, 11, 'Daudkandi', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(88, 11, 'Debidwar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(89, 11, 'Homna', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(90, 11, 'Laksam', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(91, 11, 'Lalmai', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(92, 11, 'Muradnagar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(93, 11, 'Nangalkot', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(94, 11, 'Cumilla Adarsha Sadar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(95, 11, 'Meghna', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(96, 11, 'Titas', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(97, 11, 'Monohargonj', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(98, 11, 'Cumilla Sadar Dakshin', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(99, 12, 'Chakaria', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(100, 12, 'Cox''s Bazar Sadar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(101, 12, 'Kutubdia', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(102, 12, 'Maheshkhali', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(103, 12, 'Ramu', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(104, 12, 'Teknaf', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(105, 12, 'Ukhia', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(106, 12, 'Pekua', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(107, 13, 'Chhagalnaiya', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(108, 13, 'Daganbhuiyan', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(109, 13, 'Feni Sadar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(110, 13, 'Parshuram', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(111, 13, 'Sonagazi', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(112, 13, 'Fulgazi', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(113, 14, 'Dighinala', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(114, 14, 'Khagrachhari', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(115, 14, 'Lakshmichhari', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(116, 14, 'Mahalchhari', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(117, 14, 'Manikchhari', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(118, 14, 'Matiranga', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(119, 14, 'Panchhari', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(120, 14, 'Ramgarh', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(121, 15, 'Lakshmipur Sadar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(122, 15, 'Raipur', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(123, 15, 'Ramganj', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(124, 15, 'Ramgati', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(125, 15, 'Kamalnagar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(126, 16, 'Begumganj', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(127, 16, 'Noakhali Sadar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(128, 16, 'Chatkhil', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(129, 16, 'Companiganj', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(130, 16, 'Hatiya', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(131, 16, 'Senbagh', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(132, 16, 'Sonaimuri', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(133, 16, 'Subarnachar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(134, 16, 'Kabirhat', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(135, 17, 'Bagaichhari', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(136, 17, 'Barkal', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(137, 17, 'Kawkhali (Betbunia)', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(138, 17, 'Belaichhari', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(139, 17, 'Kaptai', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(140, 17, 'Juraichhari', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(141, 17, 'Langadu', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(142, 17, 'Naniyachar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(143, 17, 'Rajasthali', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(144, 17, 'Rangamati Sadar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(145, 18, 'Dhamrai', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(146, 18, 'Dohar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(147, 18, 'Keraniganj', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(148, 18, 'Nawabganj', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(149, 18, 'Savar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(150, 18, 'Tejgaon Circle', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(151, 19, 'Gazipur Sadar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(152, 19, 'Kaliakair', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(153, 19, 'Kaliganj', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(154, 19, 'Kapasia', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(155, 19, 'Sreepur', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(156, 20, 'Gopalganj Sadar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(157, 20, 'Kashiani', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(158, 20, 'Kotalipara', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(159, 20, 'Muksudpur', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(160, 20, 'Tungipara', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(161, 21, 'Austagram', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(162, 21, 'Bajitpur', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(163, 21, 'Bhairab', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(164, 21, 'Hossainpur', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(165, 21, 'Itna', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(166, 21, 'Karimganj', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(167, 21, 'Katiadi', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(168, 21, 'Kishoreganj Sadar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(169, 21, 'Kuliarchar', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(170, 21, 'Mithamain', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(171, 21, 'Nikli', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(172, 21, 'Pakundia', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(173, 21, 'Tarail', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(174, 29, 'Tangail Sadar', '20001', '2020-04-26 14:05:06', '20001', '2020-04-26 14:05:06'),
(175, 29, 'Sakhipur', '20001', '2020-04-26 14:06:02', '20001', '2020-04-26 14:06:02'),
(176, 29, 'Basail', '20001', '2020-04-26 14:06:21', '20001', '2020-04-26 14:06:21'),
(177, 29, 'Madhupur', '20001', '2020-04-26 14:06:37', '20001', '2020-04-26 14:06:37'),
(178, 29, 'Ghatail', '20001', '2020-04-26 14:06:53', '20001', '2020-04-26 14:06:53'),
(179, 29, 'Kalihati', '20001', '2020-04-26 14:07:04', '20001', '2020-04-26 14:07:04'),
(180, 29, 'Nagarpur', '20001', '2020-04-26 14:07:18', '20001', '2020-04-26 14:07:18'),
(181, 29, 'Mirzapur', '20001', '2020-04-26 14:07:29', '20001', '2020-04-26 14:07:29'),
(182, 29, 'Gopalpur', '20001', '2020-04-26 14:07:40', '20001', '2020-04-26 14:07:40'),
(183, 29, 'Delduar', '20001', '2020-04-26 14:07:51', '20001', '2020-04-26 14:07:51'),
(184, 29, 'Bhuapur', '20001', '2020-04-26 14:08:06', '20001', '2020-04-26 14:08:06'),
(185, 29, 'Dhanbari', '20001', '2020-04-26 14:08:19', '20001', '2020-04-26 14:08:19');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  `CreateDate` date NOT NULL,
  `last_login_date` datetime NOT NULL,
  `nat_status` varchar(10) NOT NULL,
  `last_login_ip` varchar(255) NOT NULL,
  `user_status` int(1) NOT NULL COMMENT '1=power / super user; 2 = normal user',
  `status` int(11) NOT NULL COMMENT '0= inactive; 1=active; 13 = delete'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `CreateDate`, `last_login_date`, `nat_status`, `last_login_ip`, `user_status`, `status`) VALUES
(1, 'Management', '20001', '2383c7d07bce3c82e6da7741782de416', '0000-00-00', '2020-12-27 13:25:33', '', '::1', 1, 1),
(2, 'Management', '20002', '7db88cdd3c295d227680b119a479ddfb', '0000-00-00', '2020-12-27 13:25:33', '', '::1', 1, 1);

-- --------------------------------------------------------

--
-- Structure for view `generate_id`
--
DROP TABLE IF EXISTS `generate_id`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `generate_id` AS select `itteam`.`staff_id` AS `staff_id` from `itteam` union select `tbl_staff`.`staff_id` AS `staff_id` from `tbl_staff`;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `access_menu`
--
ALTER TABLE `access_menu`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divition`
--
ALTER TABLE `divition`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doc_list`
--
ALTER TABLE `doc_list`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_list`
--
ALTER TABLE `exam_list`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exist_user`
--
ALTER TABLE `exist_user`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
 ADD PRIMARY KEY (`gen_name`), ADD UNIQUE KEY `gen_id` (`gen_id`);

--
-- Indexes for table `itteam`
--
ALTER TABLE `itteam`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menulist`
--
ALTER TABLE `menulist`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_office`
--
ALTER TABLE `post_office`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `religion`
--
ALTER TABLE `religion`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_area`
--
ALTER TABLE `tbl_area`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_director`
--
ALTER TABLE `tbl_director`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_fdr_type`
--
ALTER TABLE `tbl_fdr_type`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_scheme`
--
ALTER TABLE `tbl_scheme`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_voucher_category`
--
ALTER TABLE `tbl_voucher_category`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_voucher_cat_type`
--
ALTER TABLE `tbl_voucher_cat_type`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upazila`
--
ALTER TABLE `upazila`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `access_menu`
--
ALTER TABLE `access_menu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `divition`
--
ALTER TABLE `divition`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `doc_list`
--
ALTER TABLE `doc_list`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `exam_list`
--
ALTER TABLE `exam_list`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `exist_user`
--
ALTER TABLE `exist_user`
MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
MODIFY `gen_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `itteam`
--
ALTER TABLE `itteam`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `menulist`
--
ALTER TABLE `menulist`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `post_office`
--
ALTER TABLE `post_office`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `religion`
--
ALTER TABLE `religion`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_area`
--
ALTER TABLE `tbl_area`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_director`
--
ALTER TABLE `tbl_director`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_fdr_type`
--
ALTER TABLE `tbl_fdr_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_scheme`
--
ALTER TABLE `tbl_scheme`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_voucher_category`
--
ALTER TABLE `tbl_voucher_category`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_voucher_cat_type`
--
ALTER TABLE `tbl_voucher_cat_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `upazila`
--
ALTER TABLE `upazila`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=186;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
