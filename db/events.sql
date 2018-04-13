-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2017 at 11:46 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `events`
--

-- --------------------------------------------------------

--
-- Table structure for table `backgrounds`
--

CREATE TABLE `backgrounds` (
  `background_id` int(11) NOT NULL,
  `background_path` varchar(150) NOT NULL,
  `background_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `backgrounds`
--

INSERT INTO `backgrounds` (`background_id`, `background_path`, `background_status`) VALUES
(506, '../imgs/backgrounds/background.png', 1),
(510, '../imgs/backgrounds/cZ2ziD.jpg', 0),
(514, '../imgs/backgrounds/background_black.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `committees`
--

CREATE TABLE `committees` (
  `committee_id` int(11) NOT NULL,
  `committee_name` varchar(100) NOT NULL,
  `directorate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `committees`
--

INSERT INTO `committees` (`committee_id`, `committee_name`, `directorate_id`) VALUES
(2, '', 2),
(3, '', 3),
(4, '', 4),
(9, 'لجنة العمل والتنمية الاجتماعية والسكان', 2),
(10, 'اللجنة القانونية', 2),
(11, 'لجنة الخدمات العامة والنقل', 2),
(12, 'لجنة التربية والتعليم والثقافة', 2),
(13, 'لجنة الشؤون الخارجية', 2),
(14, 'لجنة النزاهة والشفافية وتقصي الحقائق', 2),
(15, 'لجنة الصحة والبيئة', 2),
(16, 'لجنة الشباب والرياضة', 2),
(17, 'لجنة الاقتصاد والاستثمار', 2),
(20, 'لجنة الاخوة الاردنية السعودية', 3),
(21, 'لجنة الاخورة الاردنية الجزائرية', 3),
(22, 'لجنة الاخوة الاردنية القطرية', 3),
(23, 'لجنة الاخوة الاردنية المصرية', 3),
(24, 'كتلة الوفاء والعهد', 4),
(28, 'كتلة التجديد', 4);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `committee_id` int(11) NOT NULL,
  `event_entity_name` varchar(100) DEFAULT NULL,
  `time` time NOT NULL,
  `event_date` date NOT NULL,
  `subject` text NOT NULL,
  `hall_id` int(11) NOT NULL,
  `event_place` varchar(150) NOT NULL,
  `event_insertion_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id_insert` int(11) NOT NULL,
  `event_edit_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id_edit` int(11) NOT NULL DEFAULT '-1',
  `directorate_id` int(11) NOT NULL,
  `event_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `committee_id`, `event_entity_name`, `time`, `event_date`, `subject`, `hall_id`, `event_place`, `event_insertion_date`, `user_id_insert`, `event_edit_date`, `user_id_edit`, `directorate_id`, `event_status`) VALUES
(213, 4, 'مجموع كتل', '21:27:00', '2017-09-23', 'مجموع كتل', 0, 'المجلس', '2017-09-23 21:27:40', 41, '0000-00-00 00:00:00', -1, 4, 0),
(215, 2, '', '11:00:00', '2017-11-07', 'زيارة إلى مطار الملكة علياء الدولي للاطلاع على واقع العمل في المطار.<br /><br />\nملاحظة: الانطلاق من امام مجلس النواب الساعة 10:00 صباحاً.', 5, '', '2017-09-23 22:31:03', 22, '2017-11-07 12:36:18', 30566, 2, 1),
(216, 14, '', '18:31:00', '2017-10-11', 'زيارة إلى مطار الملكة علياء الدولي للاطلاع على واقع العمل في المطار.<br />\nملاحظة: الانطلاق من امام مجلس النواب الساعة 10:00 صباحاً.', 6, '', '2017-09-24 12:31:49', 22, '2017-10-11 12:45:44', 21, 2, 1),
(217, 14, '', '18:31:00', '2017-10-11', 'زيارة إلى مطار الملكة علياء الدولي للاطلاع على واقع العمل في المطار.<br />\nملاحظة: الانطلاق من امام مجلس النواب الساعة 10:00 صباحاً.', 5, '', '2017-09-24 12:32:01', 22, '2017-10-11 13:25:59', 21, 2, 1),
(218, 14, '', '18:32:00', '2017-10-11', 'زيارة إلى مطار الملكة علياء الدولي للاطلاع على واقع العمل في المطار.<br /><br /><br /><br />\nملاحظة: الانطلاق من امام مجلس النواب الساعة 10:00 صباحاً.', 6, '', '2017-09-24 12:32:12', 22, '2017-10-11 13:25:33', 21, 2, 0),
(219, 3, '', '13:43:00', '2017-09-26', 'ff', 4, '', '2017-09-26 14:13:04', 31, '2017-09-26 14:41:42', 31, 3, 1),
(220, 2, 'اللجنة المشتركة (لجنة النزاهة والشفافية وتقصي الحقائق ولجنة النزاهة والشفافية وتقصي الحقائق)', '11:10:00', '2017-11-07', 'زيارة إلى مطار الملكة علياء الدولي للاطلاع على واقع العمل في المطار.<br />\nملاحظة: الانطلاق من امام مجلس النواب الساعة 10:00 صباحاً.', 4, '', '2017-10-11 10:49:30', 21, '2017-11-07 12:28:13', 30566, 2, 1),
(221, 2, 'اختبار شاشة', '18:33:00', '2017-10-11', 'اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار.', 0, 'اختبار شاشة', '2017-10-11 11:33:35', 21, '2017-10-11 13:25:00', 21, 2, 0),
(222, 14, '', '18:13:00', '2017-10-11', 'زيارة إلى مطار الملكة علياء الدولي للاطلاع على واقع العمل في المطار.<br />\nملاحظة: الانطلاق من امام مجلس النواب الساعة 10:00 صباحاً.', 3, '', '2017-10-11 13:14:00', 21, '2017-10-11 12:12:39', 21, 2, 1),
(223, 2, 'اللجنة المشتركة (لجنة النزاهة والشفافية وتقصي الحقائق ولجنة النزاهة والشفافية وتقصي الحقائق)', '11:00:00', '2017-11-07', 'زيارة إلى مطار الملكة علياء الدولي للاطلاع على واقع العمل في المطار.<br />\nملاحظة: الانطلاق من امام مجلس النواب الساعة 10:00 صباحاً.', 6, '', '2017-10-11 13:28:00', 21, '2017-11-07 12:27:59', 30566, 2, 1),
(224, 2, '', '18:34:00', '2017-10-11', 'اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار شاشة اختبار.', 0, '', '2017-10-11 14:34:16', 21, '2017-10-11 13:25:04', 21, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `halls`
--

CREATE TABLE `halls` (
  `hall_id` int(11) NOT NULL,
  `hall_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `halls`
--

INSERT INTO `halls` (`hall_id`, `hall_name`) VALUES
(0, ''),
(3, 'قاعة عبدالله الشريدة الطابق الاول'),
(4, 'قاعة مصطفى خليفة الطابق الثاني'),
(5, 'قاعة عبدالقادر التل الطابق الاول'),
(6, 'قاعة كامل عريقات الطابق الاول'),
(7, 'قاعة التشريفات'),
(8, 'قاعة المكتب الدائم'),
(9, 'قاعة عاكف الفايز');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `page_url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `page_url`) VALUES
(1, 'background_add.php'),
(2, 'background_edit.php'),
(3, 'backgrounds.php'),
(4, 'committees.php'),
(6, 'events_edit_page.php');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `permission_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`permission_id`, `user_id`, `page_id`) VALUES
(1, 0, 1),
(2, 0, 2),
(3, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `session_text` text NOT NULL,
  `session_date` date NOT NULL,
  `session_time` time NOT NULL,
  `session_started` int(11) NOT NULL DEFAULT '2',
  `session_terminated` int(11) NOT NULL DEFAULT '2',
  `session_terminated_text` text NOT NULL,
  `session_insertion_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `session_insertion_user_id` int(11) NOT NULL,
  `session_edit_date` datetime NOT NULL,
  `session_edit_user_id` int(11) NOT NULL,
  `session_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_live_design`
--

CREATE TABLE `table_live_design` (
  `table_live_design_id` int(11) NOT NULL,
  `table_live_design_font_size` int(11) NOT NULL,
  `table_live_design_event_entity_column_width` int(11) NOT NULL,
  `table_live_design_event_time_column_width` int(11) NOT NULL,
  `table_live_design_event_place_column_width` int(11) NOT NULL,
  `table_live_design_event_subject_column_width` int(11) NOT NULL,
  `table_live_design_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_live_design`
--

INSERT INTO `table_live_design` (`table_live_design_id`, `table_live_design_font_size`, `table_live_design_event_entity_column_width`, `table_live_design_event_time_column_width`, `table_live_design_event_place_column_width`, `table_live_design_event_subject_column_width`, `table_live_design_status`) VALUES
(18, 1, 3, 1, 1, 11, 0),
(19, 1, 3, 1, 1, 11, 0),
(20, 1, 3, 1, 1, 11, 0),
(21, 1, 3, 1, 1, 11, 0),
(22, 25, 6, 1, 3, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `urgents`
--

CREATE TABLE `urgents` (
  `urgent_id` int(11) NOT NULL,
  `urgent_text` text NOT NULL,
  `directorate_id` int(11) NOT NULL,
  `urgent_date_start` date NOT NULL,
  `urgent_date_end` date NOT NULL,
  `urgent_time_end` time NOT NULL,
  `user_id_insert` int(11) NOT NULL,
  `urgent_insertion_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id_edit` int(11) NOT NULL,
  `urgent_edit_date` datetime NOT NULL,
  `urgent_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `urgents`
--

INSERT INTO `urgents` (`urgent_id`, `urgent_text`, `directorate_id`, `urgent_date_start`, `urgent_date_end`, `urgent_time_end`, `user_id_insert`, `urgent_insertion_date`, `user_id_edit`, `urgent_edit_date`, `urgent_status`) VALUES
(1, 'عاجل', 3, '2017-10-12', '2017-10-12', '16:47:00', 31, '2017-10-02 13:24:12', 31, '2017-10-12 08:45:17', 0),
(2, 'اجتماع اجتماع اجتماع اجتماع اجتماع ', 3, '2017-10-11', '2017-10-11', '16:49:00', 31, '2017-10-11 14:49:15', 31, '2017-10-11 03:14:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `password` varchar(100) NOT NULL DEFAULT '40bd001563085fc35165329ea1ff5c5ecbdbbeef',
  `user_type` int(11) NOT NULL DEFAULT '2' COMMENT 'this field 0 for the superadmin, 1 for the admin, 2 for the regular user',
  `name` varchar(50) NOT NULL,
  `directorate` int(11) DEFAULT '0' COMMENT 'nothing: 0, general secretary office: 1, legislative affairs: 2, general relations: 3, blocs: 4',
  `department` int(11) DEFAULT '0' COMMENT 'nothing: 0, committies:1, sessions:2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `password`, `user_type`, `name`, `directorate`, `department`) VALUES
(0, '356a192b7913b04c54574d18c28d46e6395428ab', 0, 'superadmin', 0, 0),
(1, '356a192b7913b04c54574d18c28d46e6395428ab', 2, 'منصور', 1, 0),
(2, '356a192b7913b04c54574d18c28d46e6395428ab', 1, 'عواد الغويري', 2, 0),
(3, '356a192b7913b04c54574d18c28d46e6395428ab', 1, 'هيثم11', 3, 0),
(4, '356a192b7913b04c54574d18c28d46e6395428ab', 1, 'اسامة', 4, 0),
(21, '356a192b7913b04c54574d18c28d46e6395428ab', 2, 'عبدالعزيز1', 2, 1),
(22, '356a192b7913b04c54574d18c28d46e6395428ab', 2, 'محمد', 2, 1),
(31, '356a192b7913b04c54574d18c28d46e6395428ab', 2, 'علي', 3, 0),
(41, '356a192b7913b04c54574d18c28d46e6395428ab', 2, 'نادر', 4, 0),
(30566, '45005e5be35a4051ed56c72d03679e256508009f', 2, 'عبدالله', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_committee`
--

CREATE TABLE `user_committee` (
  `user_committee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `committee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_committee`
--

INSERT INTO `user_committee` (`user_committee_id`, `user_id`, `committee_id`) VALUES
(281, 11111111, 12),
(308, 12345, 12),
(341, 7, 7),
(370, 22, 9),
(371, 22, 10),
(372, 22, 11),
(373, 22, 37),
(410, 21, 12),
(411, 21, 14),
(412, 30566, 9),
(413, 30566, 10),
(414, 30566, 11),
(415, 30566, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backgrounds`
--
ALTER TABLE `backgrounds`
  ADD PRIMARY KEY (`background_id`);

--
-- Indexes for table `committees`
--
ALTER TABLE `committees`
  ADD PRIMARY KEY (`committee_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `halls`
--
ALTER TABLE `halls`
  ADD PRIMARY KEY (`hall_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_live_design`
--
ALTER TABLE `table_live_design`
  ADD PRIMARY KEY (`table_live_design_id`);

--
-- Indexes for table `urgents`
--
ALTER TABLE `urgents`
  ADD PRIMARY KEY (`urgent_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_committee`
--
ALTER TABLE `user_committee`
  ADD PRIMARY KEY (`user_committee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backgrounds`
--
ALTER TABLE `backgrounds`
  MODIFY `background_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=515;

--
-- AUTO_INCREMENT for table `committees`
--
ALTER TABLE `committees`
  MODIFY `committee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `halls`
--
ALTER TABLE `halls`
  MODIFY `hall_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_live_design`
--
ALTER TABLE `table_live_design`
  MODIFY `table_live_design_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `urgents`
--
ALTER TABLE `urgents`
  MODIFY `urgent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30567;

--
-- AUTO_INCREMENT for table `user_committee`
--
ALTER TABLE `user_committee`
  MODIFY `user_committee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=416;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
