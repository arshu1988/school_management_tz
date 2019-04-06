#
# TABLE STRUCTURE FOR: admin
#

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `admin` (`id`, `username`, `role`, `email`, `password`, `is_active`, `created_at`, `updated_at`) VALUES ('3', 'Admin', 'admin', 'dev.deependra@gmail.com', '0192023a7bbd73250516f069df18b500', 'yes', '2017-05-08 07:46:52', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: attendence_type
#

DROP TABLE IF EXISTS `attendence_type`;

CREATE TABLE `attendence_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_value` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES ('1', 'Present', '<b class=\"text text-success\">P</b>', 'yes', '2016-06-23 16:41:37', '0000-00-00 00:00:00');
INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES ('2', 'Late with excuse', '<b class=\"text text-warning\">E</b>', 'yes', '2016-10-11 10:05:44', '0000-00-00 00:00:00');
INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES ('3', 'Late', '<b class=\"text text-warning\">L</b>', 'yes', '2016-06-23 16:42:28', '0000-00-00 00:00:00');
INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES ('4', 'Absent', '<b class=\"text text-danger\">A</b>', 'yes', '2016-10-11 10:05:40', '0000-00-00 00:00:00');
INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES ('5', 'Holiday', 'H', 'yes', '2016-10-11 10:05:01', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: books
#

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rack_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `publish` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `perunitcost` float(10,2) DEFAULT NULL,
  `postdate` date DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `available` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'yes',
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: categories
#

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES ('1', 'OBC', 'no', '2017-06-14 21:23:08', '0000-00-00 00:00:00');
INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES ('2', 'MINORITY', 'no', '2017-06-14 21:23:21', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: class_sections
#

DROP TABLE IF EXISTS `class_sections`;

CREATE TABLE `class_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `class_id` (`class_id`),
  KEY `section_id` (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES ('1', '1', '1', 'no', '2017-05-08 08:18:39', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: classes
#

DROP TABLE IF EXISTS `classes`;

CREATE TABLE `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES ('1', '1', 'no', '2017-06-14 21:14:52', '0000-00-00 00:00:00');
INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES ('2', '2', 'no', '2017-06-14 21:14:55', '0000-00-00 00:00:00');
INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES ('3', '3', 'no', '2017-06-14 21:14:58', '0000-00-00 00:00:00');
INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES ('4', '4', 'no', '2017-06-14 21:15:19', '0000-00-00 00:00:00');
INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES ('5', '5', 'no', '2017-06-14 21:15:31', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: contents
#

DROP TABLE IF EXISTS `contents`;

CREATE TABLE `contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_public` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'No',
  `class_id` int(11) DEFAULT NULL,
  `file` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: exam_results
#

DROP TABLE IF EXISTS `exam_results`;

CREATE TABLE `exam_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attendence` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `exam_schedule_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `get_marks` float(10,2) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `exam_schedule_id` (`exam_schedule_id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('1', 'pre', '1', '1', '8.00', NULL, 'no', '2017-05-08 09:02:15', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('2', 'pre', '2', '1', '7.00', NULL, 'no', '2017-05-08 09:02:15', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('3', 'pre', '3', '1', '7.00', NULL, 'no', '2017-05-08 09:02:15', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('4', 'pre', '4', '1', '8.00', NULL, 'no', '2017-05-08 09:02:15', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('5', 'pre', '5', '1', '9.00', NULL, 'no', '2017-05-08 09:02:15', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('6', 'pre', '6', '1', '10.00', NULL, 'no', '2017-05-08 09:02:15', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('7', 'pre', '7', '1', '10.00', NULL, 'no', '2017-05-08 09:02:15', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('8', 'pre', '1', '2', '8.00', NULL, 'no', '2017-05-08 09:02:15', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('9', 'pre', '2', '2', '8.00', NULL, 'no', '2017-05-08 09:02:15', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('10', 'pre', '3', '2', '7.00', NULL, 'no', '2017-05-08 09:02:15', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('11', 'pre', '4', '2', '6.00', NULL, 'no', '2017-05-08 09:02:15', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('12', 'pre', '5', '2', '5.00', NULL, 'no', '2017-05-08 09:02:15', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('13', 'pre', '6', '2', '4.00', NULL, 'no', '2017-05-08 09:02:15', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('14', 'pre', '7', '2', '6.00', NULL, 'no', '2017-05-08 09:02:15', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('15', 'pre', '15', '1', '4.00', NULL, 'no', '2017-05-08 09:06:44', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('16', 'pre', '16', '1', '4.00', NULL, 'no', '2017-05-08 09:06:44', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('17', 'pre', '17', '1', '4.00', NULL, 'no', '2017-05-08 09:06:44', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('18', 'pre', '18', '1', '3.00', NULL, 'no', '2017-05-08 09:06:44', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('19', 'pre', '19', '1', '4.00', NULL, 'no', '2017-05-08 09:06:44', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('20', 'pre', '20', '1', '5.00', NULL, 'no', '2017-05-08 09:06:44', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('21', 'pre', '21', '1', '5.00', NULL, 'no', '2017-05-08 09:06:44', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('22', 'pre', '15', '2', '4.00', NULL, 'no', '2017-05-08 09:06:44', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('23', 'pre', '16', '2', '3.00', NULL, 'no', '2017-05-08 09:06:44', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('24', 'pre', '17', '2', '5.00', NULL, 'no', '2017-05-08 09:06:44', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('25', 'pre', '18', '2', '2.00', NULL, 'no', '2017-05-08 09:06:44', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('26', 'pre', '19', '2', '4.00', NULL, 'no', '2017-05-08 09:06:44', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('27', 'pre', '20', '2', '3.00', NULL, 'no', '2017-05-08 09:06:44', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('28', 'pre', '21', '2', '5.00', NULL, 'no', '2017-05-08 09:06:44', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('29', 'pre', '8', '1', '4.00', NULL, 'no', '2017-05-08 09:28:48', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('30', 'pre', '9', '1', '3.00', NULL, 'no', '2017-05-08 09:28:48', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('31', 'pre', '10', '1', '2.00', NULL, 'no', '2017-05-08 09:28:48', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('32', 'pre', '11', '1', '4.00', NULL, 'no', '2017-05-08 09:28:48', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('33', 'pre', '12', '1', '4.00', NULL, 'no', '2017-05-08 09:28:48', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('34', 'pre', '13', '1', '5.00', NULL, 'no', '2017-05-08 09:28:48', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('35', 'pre', '14', '1', '5.00', NULL, 'no', '2017-05-08 09:28:48', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('36', 'pre', '8', '2', '5.00', NULL, 'no', '2017-05-08 09:28:48', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('37', 'pre', '9', '2', '3.00', NULL, 'no', '2017-05-08 09:28:48', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('38', 'pre', '10', '2', '4.00', NULL, 'no', '2017-05-08 09:28:48', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('39', 'pre', '11', '2', '4.00', NULL, 'no', '2017-05-08 09:28:48', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('40', 'pre', '12', '2', '2.00', NULL, 'no', '2017-05-08 09:28:48', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('41', 'pre', '13', '2', '3.00', NULL, 'no', '2017-05-08 09:28:48', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('42', 'pre', '14', '2', '4.00', NULL, 'no', '2017-05-08 09:28:48', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('43', 'pre', '22', '1', '76.00', NULL, 'no', '2017-05-08 09:30:55', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('44', 'pre', '23', '1', '78.00', NULL, 'no', '2017-05-08 09:30:55', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('45', 'pre', '24', '1', '77.00', NULL, 'no', '2017-05-08 09:30:55', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('46', 'pre', '25', '1', '75.00', NULL, 'no', '2017-05-08 09:30:55', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('47', 'pre', '26', '1', '73.00', NULL, 'no', '2017-05-08 09:30:55', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('48', 'pre', '27', '1', '80.00', NULL, 'no', '2017-05-08 09:30:55', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('49', 'pre', '28', '1', '80.00', NULL, 'no', '2017-05-08 09:30:55', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('50', 'pre', '22', '2', '76.00', NULL, 'no', '2017-05-08 09:30:55', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('51', 'pre', '23', '2', '77.00', NULL, 'no', '2017-05-08 09:30:55', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('52', 'pre', '24', '2', '78.00', NULL, 'no', '2017-05-08 09:30:55', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('53', 'pre', '25', '2', '69.00', NULL, 'no', '2017-05-08 09:30:55', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('54', 'pre', '26', '2', '50.00', NULL, 'no', '2017-05-08 09:30:55', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('55', 'pre', '27', '2', '59.00', NULL, 'no', '2017-05-08 09:30:55', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('56', 'pre', '28', '2', '70.00', NULL, 'no', '2017-05-08 09:30:55', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('57', 'pre', '29', '1', '5.00', NULL, 'no', '2017-05-08 09:38:22', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('58', 'pre', '30', '1', '6.00', NULL, 'no', '2017-05-08 09:38:22', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('59', 'pre', '31', '1', '7.00', NULL, 'no', '2017-05-08 09:38:22', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('60', 'pre', '32', '1', '8.00', NULL, 'no', '2017-05-08 09:38:22', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('61', 'pre', '33', '1', '9.00', NULL, 'no', '2017-05-08 09:38:22', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('62', 'pre', '34', '1', '10.00', NULL, 'no', '2017-05-08 09:38:22', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('63', 'pre', '35', '1', '10.00', NULL, 'no', '2017-05-08 09:38:22', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('64', 'pre', '29', '2', '5.00', NULL, 'no', '2017-05-08 09:38:22', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('65', 'pre', '30', '2', '5.00', NULL, 'no', '2017-05-08 09:38:22', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('66', 'pre', '31', '2', '6.00', NULL, 'no', '2017-05-08 09:38:22', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('67', 'pre', '32', '2', '6.00', NULL, 'no', '2017-05-08 09:38:22', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('68', 'pre', '33', '2', '8.00', NULL, 'no', '2017-05-08 09:38:22', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('69', 'pre', '34', '2', '7.00', NULL, 'no', '2017-05-08 09:38:22', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('70', 'pre', '35', '2', '9.00', NULL, 'no', '2017-05-08 09:38:22', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('71', 'pre', '36', '1', '4.00', NULL, 'no', '2017-05-08 09:39:11', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('72', 'pre', '37', '1', '3.00', NULL, 'no', '2017-05-08 09:39:11', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('73', 'pre', '38', '1', '4.00', NULL, 'no', '2017-05-08 09:39:11', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('74', 'pre', '39', '1', '5.00', NULL, 'no', '2017-05-08 09:39:11', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('75', 'pre', '40', '1', '3.00', NULL, 'no', '2017-05-08 09:39:11', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('76', 'pre', '41', '1', '4.00', NULL, 'no', '2017-05-08 09:39:11', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('77', 'pre', '42', '1', '5.00', NULL, 'no', '2017-05-08 09:39:11', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('78', 'pre', '36', '2', '3.00', NULL, 'no', '2017-05-08 09:39:11', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('79', 'pre', '37', '2', '4.00', NULL, 'no', '2017-05-08 09:39:11', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('80', 'pre', '38', '2', '4.00', NULL, 'no', '2017-05-08 09:39:11', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('81', 'pre', '39', '2', '4.00', NULL, 'no', '2017-05-08 09:39:11', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('82', 'pre', '40', '2', '5.00', NULL, 'no', '2017-05-08 09:39:11', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('83', 'pre', '41', '2', '4.00', NULL, 'no', '2017-05-08 09:39:11', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('84', 'pre', '42', '2', '4.00', NULL, 'no', '2017-05-08 09:39:11', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('85', 'pre', '43', '1', '4.00', NULL, 'no', '2017-05-08 09:39:58', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('86', 'pre', '44', '1', '3.00', NULL, 'no', '2017-05-08 09:39:58', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('87', 'pre', '45', '1', '2.00', NULL, 'no', '2017-05-08 09:39:58', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('88', 'pre', '46', '1', '5.00', NULL, 'no', '2017-05-08 09:39:58', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('89', 'pre', '47', '1', '3.00', NULL, 'no', '2017-05-08 09:39:58', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('90', 'pre', '48', '1', '4.00', NULL, 'no', '2017-05-08 09:39:58', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('91', 'pre', '49', '1', '5.00', NULL, 'no', '2017-05-08 09:39:58', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('92', 'pre', '43', '2', '5.00', NULL, 'no', '2017-05-08 09:39:58', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('93', 'pre', '44', '2', '3.00', NULL, 'no', '2017-05-08 09:39:58', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('94', 'pre', '45', '2', '4.00', NULL, 'no', '2017-05-08 09:39:58', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('95', 'pre', '46', '2', '4.00', NULL, 'no', '2017-05-08 09:39:58', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('96', 'pre', '47', '2', '3.00', NULL, 'no', '2017-05-08 09:39:58', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('97', 'pre', '48', '2', '2.00', NULL, 'no', '2017-05-08 09:39:58', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('98', 'pre', '49', '2', '4.00', NULL, 'no', '2017-05-08 09:39:58', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('99', 'pre', '50', '1', '50.00', NULL, 'no', '2017-05-08 09:41:20', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('100', 'pre', '51', '1', '60.00', NULL, 'no', '2017-05-08 09:41:20', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('101', 'pre', '52', '1', '60.00', NULL, 'no', '2017-05-08 09:41:20', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('102', 'pre', '53', '1', '70.00', NULL, 'no', '2017-05-08 09:41:20', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('103', 'pre', '54', '1', '80.00', NULL, 'no', '2017-05-08 09:41:20', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('104', 'pre', '55', '1', '70.00', NULL, 'no', '2017-05-08 09:41:20', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('105', 'pre', '56', '1', '60.00', NULL, 'no', '2017-05-08 09:41:20', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('106', 'pre', '50', '2', '88.00', NULL, 'no', '2017-05-08 09:41:20', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('107', 'pre', '51', '2', '50.00', NULL, 'no', '2017-05-08 09:41:20', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('108', 'pre', '52', '2', '80.00', NULL, 'no', '2017-05-08 09:41:20', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('109', 'pre', '53', '2', '70.00', NULL, 'no', '2017-05-08 09:41:20', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('110', 'pre', '54', '2', '80.00', NULL, 'no', '2017-05-08 09:41:20', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('111', 'pre', '55', '2', '70.00', NULL, 'no', '2017-05-08 09:41:20', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('112', 'pre', '56', '2', '70.00', NULL, 'no', '2017-05-08 09:41:20', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('113', 'pre', '57', '1', '8.00', NULL, 'no', '2017-05-08 10:08:34', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('114', 'pre', '58', '1', '10.00', NULL, 'no', '2017-05-08 10:08:34', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('115', 'pre', '57', '2', '8.00', NULL, 'no', '2017-05-08 10:08:34', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('116', 'pre', '58', '2', '9.00', NULL, 'no', '2017-05-08 10:08:34', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('117', 'pre', '59', '1', '5.00', NULL, 'no', '2017-05-08 10:09:02', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('118', 'pre', '60', '1', '4.00', NULL, 'no', '2017-05-08 10:09:02', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('119', 'pre', '59', '2', '5.00', NULL, 'no', '2017-05-08 10:09:02', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('120', 'pre', '60', '2', '4.00', NULL, 'no', '2017-05-08 10:09:02', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('121', 'pre', '63', '1', '78.00', NULL, 'no', '2017-05-08 10:09:29', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('122', 'pre', '64', '1', '80.00', NULL, 'no', '2017-05-08 10:09:29', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('123', 'pre', '63', '2', '78.00', NULL, 'no', '2017-05-08 10:09:29', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('124', 'pre', '64', '2', '78.00', NULL, 'no', '2017-05-08 10:09:29', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('125', 'pre', '61', '1', '3.00', NULL, 'no', '2017-05-08 10:09:52', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('126', 'pre', '62', '1', '4.00', NULL, 'no', '2017-05-08 10:09:52', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('127', 'pre', '61', '2', '3.00', NULL, 'no', '2017-05-08 10:09:52', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('128', 'pre', '62', '2', '4.00', NULL, 'no', '2017-05-08 10:09:52', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('129', 'pre', '65', '1', '4.00', NULL, 'no', '2017-05-08 10:10:41', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('130', 'pre', '66', '1', '4.00', NULL, 'no', '2017-05-08 10:10:41', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('131', 'pre', '65', '2', '4.00', NULL, 'no', '2017-05-08 10:10:41', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('132', 'pre', '66', '2', '4.00', NULL, 'no', '2017-05-08 10:10:41', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('133', 'pre', '67', '1', '3.00', NULL, 'no', '2017-05-08 10:11:02', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('134', 'pre', '68', '1', '5.00', NULL, 'no', '2017-05-08 10:11:02', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('135', 'pre', '67', '2', '3.00', NULL, 'no', '2017-05-08 10:11:02', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('136', 'pre', '68', '2', '4.00', NULL, 'no', '2017-05-08 10:11:02', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('137', 'pre', '69', '1', '56.00', NULL, 'no', '2017-05-08 10:11:32', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('138', 'pre', '70', '1', '78.00', NULL, 'no', '2017-05-08 10:11:32', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('139', 'pre', '69', '2', '67.00', NULL, 'no', '2017-05-08 10:11:32', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('140', 'pre', '70', '2', '66.00', NULL, 'no', '2017-05-08 10:11:32', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('141', 'pre', '71', '1', '5.00', NULL, 'no', '2017-05-08 10:13:10', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('142', 'pre', '72', '1', '8.00', NULL, 'no', '2017-05-08 10:13:10', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('143', 'pre', '71', '2', '7.00', NULL, 'no', '2017-05-08 10:13:10', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('144', 'pre', '72', '2', '9.00', NULL, 'no', '2017-05-08 10:13:10', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: exam_results_extra
#

DROP TABLE IF EXISTS `exam_results_extra`;

CREATE TABLE `exam_results_extra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attendence` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `remark_for` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_session_id` (`student_session_id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `exam_results_extra` (`id`, `attendence`, `student_session_id`, `student_id`, `remark_for`, `remark`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('1', '', NULL, '1', 'work_edu_1', 'A', NULL, 'no', '2017-05-08 10:13:24', NULL);
INSERT INTO `exam_results_extra` (`id`, `attendence`, `student_session_id`, `student_id`, `remark_for`, `remark`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('2', '', NULL, '1', 'c-certificate', ' ', '<p> This is to certify that Deependra Singh S/o Mr. ASdsa r/o  has been bonafide student of the institution studying in class 7 during the session 2017-18</p>\n                                    <p>He appeared in the SSE Exams of CBSE in 2017-18 with roll no. 1 and passed/failed the exam and was placed on ..........position in class.</p>\n                                    <p>He has been obedient and nice during his stay in the school. He bears a good moral Character.</p>\n                                    <p>We wish him every success in his career.</p>', 'no', '2017-06-05 04:00:58', NULL);


#
# TABLE STRUCTURE FOR: exam_schedules
#

DROP TABLE IF EXISTS `exam_schedules`;

CREATE TABLE `exam_schedules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) NOT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `teacher_subject_id` int(11) DEFAULT NULL,
  `date_of_exam` date DEFAULT NULL,
  `start_to` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_from` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_marks` int(11) DEFAULT NULL,
  `passing_marks` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `teacher_subject_id` (`teacher_subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('1', '12', '1', '1', '2017-05-01', '12:00 AM', '09:15 PM', '1', '10', '3', NULL, 'no', '2017-05-08 08:47:02', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('2', '12', '1', '2', '2017-05-01', '12:00 AM', '09:15 PM', '1', '10', '3', NULL, 'no', '2017-05-08 08:47:02', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('3', '12', '1', '3', '2017-05-01', '12:00 AM', '09:15 PM', '1', '10', '3', NULL, 'no', '2017-05-08 08:47:02', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('4', '12', '1', '4', '2017-05-01', '12:00 AM', '09:15 PM', '1', '10', '3', NULL, 'no', '2017-05-08 08:47:02', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('5', '12', '1', '5', '2017-05-01', '12:00 AM', '09:15 PM', '1', '10', '3', NULL, 'no', '2017-05-08 08:47:02', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('6', '12', '1', '6', '2017-05-01', '12:00 AM', '09:15 PM', '1', '10', '3', NULL, 'no', '2017-05-08 08:47:02', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('7', '12', '1', '7', '2017-05-01', '12:00 AM', '09:15 PM', '1', '10', '3', NULL, 'no', '2017-05-08 08:47:02', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('8', '12', '2', '1', '1970-01-01', '12:00 AM', '09:15 PM', '1', '5', '2', NULL, 'no', '2017-05-08 08:48:33', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('9', '12', '2', '2', '1970-01-01', '12:00 AM', '09:15 PM', '1', '5', '2', NULL, 'no', '2017-05-08 08:48:33', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('10', '12', '2', '3', '1970-01-01', '12:00 AM', '09:15 PM', '1', '5', '2', NULL, 'no', '2017-05-08 08:48:33', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('11', '12', '2', '4', '1970-01-01', '12:00 AM', '09:15 PM', '1', '5', '2', NULL, 'no', '2017-05-08 08:48:33', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('12', '12', '2', '5', '1970-01-01', '12:00 AM', '09:15 PM', '1', '5', '2', NULL, 'no', '2017-05-08 08:48:33', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('13', '12', '2', '6', '1970-01-01', '12:00 AM', '09:15 PM', '1', '5', '2', NULL, 'no', '2017-05-08 08:48:33', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('14', '12', '2', '7', '1970-01-01', '12:00 AM', '09:15 PM', '1', '5', '2', NULL, 'no', '2017-05-08 08:48:33', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('15', '12', '3', '1', '2017-05-02', '12:00 AM', '09:15 PM', '1', '5', '2', NULL, 'no', '2017-05-08 08:51:16', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('16', '12', '3', '2', '2017-05-02', '12:00 AM', '09:15 PM', '1', '5', '2', NULL, 'no', '2017-05-08 08:51:16', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('17', '12', '3', '3', '2017-05-02', '12:00 AM', '09:15 PM', '1', '5', '2', NULL, 'no', '2017-05-08 08:51:16', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('18', '12', '3', '4', '2017-05-02', '12:00 AM', '09:15 PM', '1', '5', '2', NULL, 'no', '2017-05-08 08:51:16', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('19', '12', '3', '5', '2017-05-02', '12:00 AM', '09:15 PM', '1', '5', '2', NULL, 'no', '2017-05-08 08:51:16', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('20', '12', '3', '6', '2017-05-02', '12:00 AM', '09:15 PM', '1', '5', '2', NULL, 'no', '2017-05-08 08:51:16', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('21', '12', '3', '7', '2017-05-02', '12:00 AM', '09:15 PM', '1', '5', '2', NULL, 'no', '2017-05-08 08:51:16', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('22', '12', '4', '1', '2017-05-03', '12:00 AM', '09:15 PM', '1', '80', '32', NULL, 'no', '2017-05-08 08:52:14', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('23', '12', '4', '2', '2017-05-03', '12:00 AM', '09:15 PM', '1', '80', '32', NULL, 'no', '2017-05-08 08:52:14', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('24', '12', '4', '3', '2017-05-03', '12:00 AM', '09:15 PM', '1', '80', '32', NULL, 'no', '2017-05-08 08:52:14', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('25', '12', '4', '4', '2017-05-03', '12:00 AM', '09:15 PM', '1', '80', '32', NULL, 'no', '2017-05-08 08:52:14', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('26', '12', '4', '5', '2017-05-03', '12:00 AM', '09:15 PM', '1', '80', '32', NULL, 'no', '2017-05-08 08:52:14', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('27', '12', '4', '6', '2017-05-03', '12:00 AM', '09:15 PM', '1', '80', '32', NULL, 'no', '2017-05-08 08:52:14', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('28', '12', '4', '7', '2017-05-03', '12:00 AM', '09:15 PM', '1', '80', '32', NULL, 'no', '2017-05-08 08:52:14', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('29', '12', '5', '1', '2017-05-04', '12:00 AM', '09:15 PM', '1', '10', '4', NULL, 'no', '2017-05-08 08:53:13', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('30', '12', '5', '2', '2017-05-04', '12:00 AM', '09:15 PM', '1', '10', '4', NULL, 'no', '2017-05-08 08:53:13', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('31', '12', '5', '3', '2017-05-04', '12:00 AM', '09:15 PM', '1', '10', '4', NULL, 'no', '2017-05-08 08:53:13', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('32', '12', '5', '4', '2017-05-04', '12:00 AM', '09:15 PM', '1', '10', '4', NULL, 'no', '2017-05-08 08:53:13', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('33', '12', '5', '5', '2017-05-04', '12:00 AM', '09:15 PM', '1', '10', '4', NULL, 'no', '2017-05-08 08:53:13', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('34', '12', '5', '6', '2017-05-04', '12:00 AM', '09:15 PM', '1', '10', '4', NULL, 'no', '2017-05-08 08:53:13', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('35', '12', '5', '7', '2017-05-04', '12:00 AM', '09:15 PM', '1', '10', '4', NULL, 'no', '2017-05-08 08:53:13', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('36', '12', '6', '1', '2017-05-04', '12:00 AM', '09:15 PM', '1', '5', '2', NULL, 'no', '2017-05-08 08:53:56', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('37', '12', '6', '2', '2017-05-04', '12:00 AM', '09:15 PM', '1', '5', '2', NULL, 'no', '2017-05-08 08:53:56', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('38', '12', '6', '3', '2017-05-04', '12:00 AM', '09:15 PM', '1', '5', '2', NULL, 'no', '2017-05-08 08:53:56', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('39', '12', '6', '4', '2017-05-04', '12:00 AM', '09:15 PM', '1', '5', '2', NULL, 'no', '2017-05-08 08:53:56', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('40', '12', '6', '5', '2017-05-04', '12:00 AM', '09:15 PM', '1', '5', '2', NULL, 'no', '2017-05-08 08:53:56', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('41', '12', '6', '6', '2017-05-04', '12:00 AM', '09:15 PM', '1', '5', '2', NULL, 'no', '2017-05-08 08:53:56', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('42', '12', '6', '7', '2017-05-04', '12:00 AM', '09:15 PM', '1', '5', '2', NULL, 'no', '2017-05-08 08:53:56', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('43', '12', '7', '1', '2017-05-04', '12:00 AM', '09:15 PM', '1', '5', '2', NULL, 'no', '2017-05-08 08:54:35', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('44', '12', '7', '2', '2017-05-04', '12:00 AM', '09:15 PM', '1', '5', '2', NULL, 'no', '2017-05-08 08:54:35', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('45', '12', '7', '3', '2017-05-04', '12:00 AM', '09:15 PM', '1', '5', '2', NULL, 'no', '2017-05-08 08:54:35', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('46', '12', '7', '4', '2017-05-04', '12:00 AM', '09:15 PM', '1', '5', '2', NULL, 'no', '2017-05-08 08:54:35', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('47', '12', '7', '5', '2017-05-04', '12:00 AM', '09:15 PM', '1', '5', '2', NULL, 'no', '2017-05-08 08:54:35', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('48', '12', '7', '6', '2017-05-04', '12:00 AM', '09:15 PM', '1', '5', '2', NULL, 'no', '2017-05-08 08:54:35', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('49', '12', '7', '7', '2017-05-04', '12:00 AM', '09:15 PM', '1', '5', '2', NULL, 'no', '2017-05-08 08:54:35', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('50', '12', '8', '1', '2017-05-05', '12:00 AM', '09:15 PM', '1', '80', '32', NULL, 'no', '2017-05-08 08:55:50', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('51', '12', '8', '2', '2017-05-05', '12:00 AM', '09:15 PM', '1', '80', '32', NULL, 'no', '2017-05-08 08:55:50', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('52', '12', '8', '3', '2017-05-05', '12:00 AM', '09:15 PM', '1', '80', '32', NULL, 'no', '2017-05-08 08:55:50', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('53', '12', '8', '4', '2017-05-05', '12:00 AM', '09:15 PM', '1', '80', '32', NULL, 'no', '2017-05-08 08:55:50', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('54', '12', '8', '5', '2017-05-05', '12:00 AM', '09:15 PM', '1', '80', '32', NULL, 'no', '2017-05-08 08:55:50', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('55', '12', '8', '6', '2017-05-05', '12:00 AM', '09:15 PM', '1', '80', '32', NULL, 'no', '2017-05-08 08:55:50', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('56', '12', '8', '7', '2017-05-05', '12:00 AM', '09:15 PM', '1', '80', '32', NULL, 'no', '2017-05-08 08:55:50', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('57', '12', '1', '8', '2017-06-06', '12:00 AM', '10:30 PM', '1', '10', '3', NULL, 'no', '2017-05-08 10:05:13', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('58', '12', '1', '10', '2017-05-02', '12:00 AM', '10:30 PM', '1', '10', '3', NULL, 'no', '2017-05-08 10:05:13', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('59', '12', '2', '8', '2017-05-01', '12:00 AM', '10:30 PM', '1', '5', '2', NULL, 'no', '2017-05-08 10:05:36', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('60', '12', '2', '10', '2017-05-01', '12:00 AM', '10:30 PM', '1', '5', '2', NULL, 'no', '2017-05-08 10:05:36', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('61', '12', '3', '8', '2017-05-02', '12:00 AM', '10:30 PM', '1', '5', '2', NULL, 'no', '2017-05-08 10:06:01', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('62', '12', '3', '10', '2017-05-02', '12:00 AM', '10:30 PM', '1', '5', '2', NULL, 'no', '2017-05-08 10:06:01', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('63', '12', '4', '8', '2017-05-03', '12:00 AM', '10:30 PM', '1', '80', '32', NULL, 'no', '2017-05-08 10:06:50', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('64', '12', '4', '10', '2017-05-03', '12:00 AM', '10:30 PM', '1', '80', '32', NULL, 'no', '2017-05-08 10:06:50', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('65', '12', '6', '8', '2017-05-04', '12:00 AM', '10:30 PM', '1', '5', '2', NULL, 'no', '2017-05-08 10:07:12', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('66', '12', '6', '10', '2017-05-04', '12:00 AM', '10:30 PM', '1', '5', '2', NULL, 'no', '2017-05-08 10:07:12', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('67', '12', '7', '8', '2017-05-04', '12:00 AM', '10:30 PM', '1', '5', '2', NULL, 'no', '2017-05-08 10:07:34', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('68', '12', '7', '10', '2017-05-04', '12:00 AM', '10:30 PM', '1', '5', '2', NULL, 'no', '2017-05-08 10:07:34', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('69', '12', '8', '8', '2017-05-05', '12:00 AM', '10:30 PM', '1', '80', '32', NULL, 'no', '2017-05-08 10:08:03', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('70', '12', '8', '10', '2017-05-05', '12:00 AM', '10:30 PM', '1', '80', '32', NULL, 'no', '2017-05-08 10:08:03', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('71', '12', '5', '8', '2017-05-04', '12:00 AM', '10:30 PM', '1', '10', '4', NULL, 'no', '2017-05-08 10:12:45', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('72', '12', '5', '10', '2017-05-04', '12:00 AM', '10:30 PM', '1', '10', '4', NULL, 'no', '2017-05-08 10:12:45', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: exams
#

DROP TABLE IF EXISTS `exams`;

CREATE TABLE `exams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sesion_id` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `exams` (`id`, `name`, `label`, `category_id`, `sesion_id`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('1', 'Periodic Test I', 'Per Test', '1', '0', '', 'no', '2017-05-08 09:56:12', NULL);
INSERT INTO `exams` (`id`, `name`, `label`, `category_id`, `sesion_id`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('2', 'Note Book I', 'Note Book', '1', '0', '', 'no', '2017-05-08 09:44:45', NULL);
INSERT INTO `exams` (`id`, `name`, `label`, `category_id`, `sesion_id`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('3', 'Sub Enrichment I', 'Sub Enrichment', '1', '0', '', 'no', '2017-05-08 09:44:23', NULL);
INSERT INTO `exams` (`id`, `name`, `label`, `category_id`, `sesion_id`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('4', 'Half Yearly Exam', 'Half Yearly Exam', '1', '0', '', 'no', '2017-05-08 09:45:35', NULL);
INSERT INTO `exams` (`id`, `name`, `label`, `category_id`, `sesion_id`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('5', 'Periodic Test II', 'Per Test', '2', '0', '', 'no', '2017-05-08 09:47:18', NULL);
INSERT INTO `exams` (`id`, `name`, `label`, `category_id`, `sesion_id`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('6', 'Note Book II', 'Note Book', '2', '0', '', 'no', '2017-05-08 09:47:18', NULL);
INSERT INTO `exams` (`id`, `name`, `label`, `category_id`, `sesion_id`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('7', 'Sub Enrichment II', 'Sub Enrichment', '2', '0', '', 'no', '2017-05-08 09:47:18', NULL);
INSERT INTO `exams` (`id`, `name`, `label`, `category_id`, `sesion_id`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('8', 'Yearly Exam', 'Yearly Exam', '2', '0', '', 'no', '2017-05-08 09:47:18', NULL);


#
# TABLE STRUCTURE FOR: expense_head
#

DROP TABLE IF EXISTS `expense_head`;

CREATE TABLE `expense_head` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exp_category` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'yes',
  `is_deleted` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: expenses
#

DROP TABLE IF EXISTS `expenses`;

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exp_head_id` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'yes',
  `is_deleted` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: fee_receipt_no
#

DROP TABLE IF EXISTS `fee_receipt_no`;

CREATE TABLE `fee_receipt_no` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=latin1;

INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('1', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('2', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('3', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('4', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('5', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('6', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('7', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('8', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('9', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('10', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('11', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('12', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('13', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('14', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('15', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('16', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('17', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('18', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('19', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('20', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('21', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('22', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('23', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('24', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('25', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('26', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('27', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('28', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('29', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('30', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('31', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('32', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('33', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('34', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('35', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('36', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('37', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('38', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('39', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('40', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('41', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('42', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('43', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('44', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('45', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('46', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('47', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('48', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('49', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('50', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('51', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('52', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('53', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('54', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('55', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('56', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('57', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('58', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('59', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('60', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('61', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('62', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('63', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('64', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('65', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('66', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('67', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('68', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('69', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('70', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('71', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('72', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('73', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('74', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('75', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('76', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('77', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('78', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('79', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('80', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('81', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('82', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('83', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('84', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('85', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('86', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('87', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('88', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('89', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('90', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('91', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('92', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('93', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('94', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('95', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('96', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('97', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('98', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('99', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('100', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('101', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('102', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('103', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('104', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('105', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('106', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('107', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('108', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('109', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('110', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('111', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('112', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('113', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('114', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('115', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('116', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('117', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('118', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('119', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('120', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('121', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('122', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('123', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('124', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('125', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('126', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('127', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('128', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('129', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('130', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('131', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('132', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('133', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('134', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('135', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('136', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('137', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('138', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('139', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('140', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('141', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('142', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('143', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('144', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('145', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('146', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('147', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('148', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('149', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('150', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('151', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('152', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('153', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('154', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('155', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('156', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('157', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('158', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('159', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('160', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('161', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('162', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('163', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('164', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('165', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('166', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('167', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('168', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('169', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('170', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('171', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('172', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('173', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('174', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('175', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('176', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('177', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('178', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('179', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('180', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('181', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('182', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('183', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('184', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('185', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('186', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('187', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('188', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('189', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('190', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('191', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('192', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('193', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('194', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('195', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('196', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('197', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('198', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('199', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('200', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('201', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('202', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('203', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('204', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('205', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('206', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('207', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('208', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('209', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('210', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('211', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('212', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('213', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('214', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('215', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('216', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('217', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('218', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('219', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('220', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('221', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('222', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('223', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('224', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('225', '0');
INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES ('226', '0');


#
# TABLE STRUCTURE FOR: feecategory
#

DROP TABLE IF EXISTS `feecategory`;

CREATE TABLE `feecategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `feecategory` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES ('7', 'Monthly Fee', 'no', '2017-09-07 00:26:47', '0000-00-00 00:00:00');
INSERT INTO `feecategory` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES ('8', 'Tution fee', 'no', '2017-09-07 00:26:59', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: feemasters
#

DROP TABLE IF EXISTS `feemasters`;

CREATE TABLE `feemasters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `feetype_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `feemasters` (`id`, `session_id`, `feetype_id`, `class_id`, `amount`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('2', '12', '5', '1', '200.00', '', 'no', '2017-07-15 22:07:51', '0000-00-00 00:00:00');
INSERT INTO `feemasters` (`id`, `session_id`, `feetype_id`, `class_id`, `amount`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('18', '12', '17', '1', '500.00', '', 'no', '2017-09-07 00:31:08', '0000-00-00 00:00:00');
INSERT INTO `feemasters` (`id`, `session_id`, `feetype_id`, `class_id`, `amount`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('19', '12', '20', '1', '300.00', '', 'no', '2017-09-07 00:32:17', '0000-00-00 00:00:00');
INSERT INTO `feemasters` (`id`, `session_id`, `feetype_id`, `class_id`, `amount`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('20', '12', '23', '1', '200.00', '', 'no', '2017-09-07 00:32:37', '0000-00-00 00:00:00');
INSERT INTO `feemasters` (`id`, `session_id`, `feetype_id`, `class_id`, `amount`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('21', '12', '18', '1', '600.00', '', 'no', '2017-09-07 06:40:46', '0000-00-00 00:00:00');
INSERT INTO `feemasters` (`id`, `session_id`, `feetype_id`, `class_id`, `amount`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('22', '12', '21', '1', '400.00', '', 'no', '2017-09-07 06:41:07', '0000-00-00 00:00:00');
INSERT INTO `feemasters` (`id`, `session_id`, `feetype_id`, `class_id`, `amount`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('23', '12', '24', '1', '300.00', '', 'no', '2017-09-07 06:41:32', '0000-00-00 00:00:00');
INSERT INTO `feemasters` (`id`, `session_id`, `feetype_id`, `class_id`, `amount`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('25', '12', '27', '1', '100.00', '10 kms', 'no', '2017-09-18 11:11:17', '0000-00-00 00:00:00');
INSERT INTO `feemasters` (`id`, `session_id`, `feetype_id`, `class_id`, `amount`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('27', '12', '29', '1', '0.00', 'test', 'no', '2017-09-18 22:01:01', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: feetype
#

DROP TABLE IF EXISTS `feetype`;

CREATE TABLE `feetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feecategory_id` int(11) DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `feetype` (`id`, `feecategory_id`, `type`, `is_active`, `created_at`, `updated_at`) VALUES ('20', '8', 'January', 'no', '2017-09-07 00:29:04', '0000-00-00 00:00:00');
INSERT INTO `feetype` (`id`, `feecategory_id`, `type`, `is_active`, `created_at`, `updated_at`) VALUES ('21', '8', 'Fabruary', 'no', '2017-09-07 00:29:13', '0000-00-00 00:00:00');
INSERT INTO `feetype` (`id`, `feecategory_id`, `type`, `is_active`, `created_at`, `updated_at`) VALUES ('22', '8', 'March', 'no', '2017-09-07 00:29:37', '0000-00-00 00:00:00');
INSERT INTO `feetype` (`id`, `feecategory_id`, `type`, `is_active`, `created_at`, `updated_at`) VALUES ('24', '9', 'Fabruary', 'no', '2017-09-07 00:30:02', '0000-00-00 00:00:00');
INSERT INTO `feetype` (`id`, `feecategory_id`, `type`, `is_active`, `created_at`, `updated_at`) VALUES ('25', '9', 'March', 'no', '2017-09-07 00:30:28', '0000-00-00 00:00:00');
INSERT INTO `feetype` (`id`, `feecategory_id`, `type`, `is_active`, `created_at`, `updated_at`) VALUES ('29', '7', 'Transport', 'no', '2017-09-18 22:00:32', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: grades
#

DROP TABLE IF EXISTS `grades`;

CREATE TABLE `grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `point` float(10,1) DEFAULT NULL,
  `mark_from` float(10,2) DEFAULT NULL,
  `mark_upto` float(10,2) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `grades` (`id`, `name`, `point`, `mark_from`, `mark_upto`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('1', 'A1', NULL, '91.00', '100.00', 'Marks between 91-100', 'no', '2017-04-26 02:47:54', '0000-00-00 00:00:00');
INSERT INTO `grades` (`id`, `name`, `point`, `mark_from`, `mark_upto`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('2', 'A2', NULL, '81.00', '90.00', '', 'no', '2017-04-29 00:10:59', '0000-00-00 00:00:00');
INSERT INTO `grades` (`id`, `name`, `point`, `mark_from`, `mark_upto`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('3', 'B1', NULL, '71.00', '80.00', '', 'no', '2017-04-29 00:11:13', '0000-00-00 00:00:00');
INSERT INTO `grades` (`id`, `name`, `point`, `mark_from`, `mark_upto`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('4', 'B2', NULL, '61.00', '70.00', '', 'no', '2017-04-29 00:11:21', '0000-00-00 00:00:00');
INSERT INTO `grades` (`id`, `name`, `point`, `mark_from`, `mark_upto`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('5', 'C1', NULL, '51.00', '60.00', '', 'no', '2017-04-29 00:11:53', '0000-00-00 00:00:00');
INSERT INTO `grades` (`id`, `name`, `point`, `mark_from`, `mark_upto`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('6', 'C2', NULL, '41.00', '50.00', '', 'no', '2017-04-29 00:12:04', '0000-00-00 00:00:00');
INSERT INTO `grades` (`id`, `name`, `point`, `mark_from`, `mark_upto`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('7', 'D', NULL, '33.00', '40.00', '', 'no', '2017-04-29 00:12:12', '0000-00-00 00:00:00');
INSERT INTO `grades` (`id`, `name`, `point`, `mark_from`, `mark_upto`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('8', 'E', NULL, '0.00', '32.00', 'Need Improvement', 'no', '2017-04-29 00:14:25', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: hostel
#

DROP TABLE IF EXISTS `hostel`;

CREATE TABLE `hostel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostel_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `intake` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: hostel_rooms
#

DROP TABLE IF EXISTS `hostel_rooms`;

CREATE TABLE `hostel_rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostel_id` int(11) DEFAULT NULL,
  `room_type_id` int(11) DEFAULT NULL,
  `room_no` varchar(200) DEFAULT NULL,
  `no_of_bed` int(11) DEFAULT NULL,
  `cost_per_bed` float(10,2) DEFAULT '0.00',
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: lang_keys
#

DROP TABLE IF EXISTS `lang_keys`;

CREATE TABLE `lang_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_id` int(11) DEFAULT NULL,
  `key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=621 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('1', NULL, 'session', 'no', '2016-03-09 09:24:39', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('2', NULL, 'school_name', 'no', '2016-03-09 09:34:28', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('3', NULL, 'email', 'no', '2016-03-09 09:34:48', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('6', NULL, 'roll_no', 'no', '2001-12-30 02:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('7', NULL, 'first_name', 'no', '2001-12-30 02:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('8', NULL, 'last_name', 'no', '2001-12-30 02:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('9', NULL, 'class', 'no', '2001-12-30 02:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('10', NULL, 'section', 'no', '2001-12-30 02:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('11', NULL, 'admission_date', 'no', '2017-04-01 18:07:35', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('12', NULL, 'mobile_no', 'no', '2001-12-30 02:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('13', NULL, 'date_of_birth', 'no', '2001-12-30 02:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('15', NULL, 'religion', 'no', '2001-12-30 02:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('16', NULL, 'category', 'no', '2001-12-30 02:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('17', NULL, 'current_address', 'no', '2001-12-30 02:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('18', NULL, 'permanent_address', 'no', '2001-12-30 02:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('23', NULL, 'bank_account_no', 'no', '2001-12-30 02:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('24', NULL, 'bank_name', 'no', '2001-12-30 02:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('25', NULL, 'ifsc_code', 'no', '2001-12-30 02:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('27', NULL, 'guardian_name', 'no', '2001-12-30 02:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('28', NULL, 'guardian_relation', 'no', '2016-03-12 12:13:05', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('29', NULL, 'guardian_phone', 'no', '2001-12-30 02:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('30', NULL, 'guardian_address', 'no', '2001-12-30 02:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('31', NULL, 'select_image', 'no', '2001-12-30 02:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('32', NULL, 'import_excel', 'no', '2001-12-30 03:03:11', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('33', NULL, 'export_format', 'no', '2001-12-30 03:03:11', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('34', NULL, 'generate_pdf', 'no', '2001-12-30 03:03:11', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('35', NULL, 'add_fees', 'no', '2016-06-24 06:34:31', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('37', NULL, 'search', 'no', '2016-03-12 12:17:08', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('39', NULL, 'fee_category', 'no', '2016-03-12 12:29:03', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('40', NULL, 'fee_type', 'no', '2016-03-12 12:29:03', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('43', NULL, 'add_fees_master', 'no', '2016-03-12 12:30:10', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('44', NULL, 'fees_master_list', 'no', '2016-03-12 12:30:10', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('45', NULL, 'add_fees_type', 'no', '2016-03-12 12:31:38', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('46', NULL, 'fees_type_list', 'no', '2016-03-12 12:31:38', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('48', NULL, 'edit', 'no', '2016-03-12 12:33:10', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('50', NULL, 'category_list', 'no', '2016-03-12 12:34:32', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('51', NULL, 'add_category', 'no', '2016-03-12 12:34:32', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('52', NULL, 'session_list', 'no', '2016-03-12 12:35:15', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('53', NULL, 'add_session', 'no', '2016-03-12 12:35:15', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('54', NULL, 'class_list', 'no', '2016-03-12 12:35:53', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('56', NULL, 'section_list', 'no', '2016-03-12 12:36:20', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('57', NULL, 'add_section', 'no', '2016-03-12 12:36:20', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('61', NULL, 'student', 'no', '2016-03-12 12:38:08', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('63', NULL, 'language_list', 'no', '2016-03-12 12:39:44', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('64', NULL, 'add_another_language', 'no', '2016-03-12 12:39:44', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('65', NULL, 'created_at', 'no', '2016-03-12 13:15:20', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('66', NULL, 'save', 'no', '2001-12-30 02:51:24', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('68', NULL, 'select_logo', 'no', '2001-12-30 03:17:56', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('69', NULL, 'school_logo', 'no', '2001-12-30 03:19:33', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('70', NULL, 'manage', 'no', '2001-12-30 03:19:33', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('72', NULL, 'edit_logo', 'no', '2001-12-30 03:23:28', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('73', NULL, 'phone', 'no', '2001-12-30 03:30:49', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('74', NULL, 'user_name', 'no', '2001-12-30 03:38:51', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('76', NULL, 'sms_configuration', 'no', '2001-12-30 03:43:00', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('77', NULL, 'sms_gateway_url', 'no', '2016-10-26 14:19:35', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('78', NULL, 'status', 'no', '2001-12-30 03:43:52', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('79', NULL, 'action', 'no', '2001-12-30 03:44:03', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('80', NULL, 'change_status', 'no', '2001-12-30 03:45:19', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('82', NULL, 'report', 'no', '2001-12-30 03:56:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('84', NULL, 'select_criteria', 'no', '2001-12-30 03:57:36', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('85', NULL, 'reset', 'no', '2001-12-30 03:58:39', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('86', NULL, 'invoice_no', 'no', '2001-12-30 04:00:59', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('87', NULL, 'fine', 'no', '2001-12-30 04:00:59', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('88', NULL, 'type', 'no', '2001-12-30 04:01:20', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('89', NULL, 'amount', 'no', '2001-12-30 04:01:20', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('90', NULL, 'total', 'no', '2001-12-30 04:01:26', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('91', NULL, 'discount', 'no', '2001-12-30 04:01:36', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('92', NULL, 'balance_description', 'no', '2001-12-30 04:02:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('94', NULL, 'no_search_record_found', 'no', '2001-12-30 04:06:37', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('101', NULL, 'description', 'no', '2001-12-30 04:13:49', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('102', NULL, 'fees_subtotal', 'no', '2001-12-30 04:14:34', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('104', NULL, 'receipt_no', 'no', '2001-12-30 04:17:56', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('106', NULL, 'grand_total', 'no', '2001-12-30 04:19:14', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('107', NULL, 'deposit', 'no', '2001-12-30 04:26:50', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('108', NULL, 'balance', 'no', '2001-12-30 04:26:50', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('115', NULL, 'fee_master', 'no', '2001-12-30 06:06:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('116', NULL, 'classes', 'no', '2001-12-30 06:06:44', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('117', NULL, 'collection', 'no', '2001-12-30 06:07:14', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('121', NULL, 'current_password', 'no', '2001-12-30 21:59:11', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('122', NULL, 'new_password', 'no', '2001-12-30 21:59:11', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('123', NULL, 'confirm_password', 'no', '2016-09-15 03:29:51', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('125', NULL, 'date', 'no', '2016-04-07 09:17:39', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('137', NULL, 'add_new_sms_configuration', 'no', '2001-12-30 23:39:13', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('141', NULL, 'cancel', 'no', '2016-03-26 19:50:39', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('142', NULL, 'exam_name', 'no', '2016-03-26 21:16:34', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('143', NULL, 'subject_name', 'no', '2016-03-29 12:05:15', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('144', NULL, 'subject_code', 'no', '2016-03-29 12:05:15', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('145', NULL, 'grade_name', 'no', '2016-03-29 16:21:20', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('147', NULL, 'percent', 'no', '2016-03-29 16:21:41', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('149', NULL, 'percent_to', 'no', '2016-03-29 16:22:00', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('150', NULL, 'note', 'no', '2016-03-29 16:22:00', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('151', NULL, 'school_code', 'no', '2016-10-25 08:12:26', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('152', NULL, 'sign_in', 'no', '2016-04-07 01:27:27', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('153', NULL, 'name', 'no', '2016-04-07 09:16:19', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('155', NULL, 'transport_fees', 'no', '2016-04-12 09:56:04', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('156', NULL, 'fees_discount', 'no', '2016-04-12 10:33:36', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('157', NULL, 'father_name', 'no', '2016-04-12 18:52:14', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('158', NULL, 'father_phone', 'no', '2016-04-12 18:52:14', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('159', NULL, 'father_occupation', 'no', '2016-04-12 18:52:45', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('160', NULL, 'mother_name', 'no', '2016-04-12 18:52:45', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('161', NULL, 'mother_phone', 'no', '2016-04-12 18:56:08', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('162', NULL, 'mother_occupation', 'no', '2016-04-12 18:56:08', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('163', NULL, 'guardian_occupation', 'no', '2016-04-12 19:09:51', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('164', NULL, 'address', 'no', '2016-04-14 04:32:42', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('165', NULL, 'language', 'no', '2016-04-14 04:33:38', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('166', NULL, 'teacher_name', 'no', '2016-04-19 03:55:06', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('167', NULL, 'password', 'no', '2016-04-19 03:55:06', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('168', NULL, 'cast', 'no', '2016-04-19 04:26:10', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('169', NULL, 'id', 'no', '2016-04-19 06:04:10', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('170', NULL, 'admission_no', 'no', '2016-04-22 16:02:46', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('171', NULL, 'enrollment_no', 'no', '2016-04-22 16:20:48', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('180', NULL, 'total_paid_fees', 'no', '2016-04-22 17:09:01', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('181', NULL, 'admission_discount', 'no', '2016-04-22 17:09:41', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('182', NULL, 'total_balance', 'no', '2016-04-22 17:09:41', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('183', NULL, 'student_name', 'no', '2016-04-23 19:37:56', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('184', NULL, 'fees', 'no', '2016-04-23 19:44:06', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('185', NULL, 'rte', 'no', '2016-04-23 21:43:46', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('186', NULL, 'gender', 'no', '2016-04-24 06:17:59', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('187', NULL, 'teacher_photo', 'no', '2016-04-28 21:56:01', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('188', NULL, 'isbn', 'no', '2016-05-01 20:07:51', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('189', NULL, 'publisher', 'no', '2016-10-23 01:28:28', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('190', NULL, 'author', 'no', '2016-05-01 20:08:19', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('191', NULL, 'qty', 'no', '2016-05-01 20:08:19', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('192', NULL, 'bookprice', 'no', '2016-10-17 22:11:54', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('193', NULL, 'postdate', 'no', '2016-05-01 20:08:38', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('197', NULL, 'intake', 'no', '2016-05-04 18:06:45', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('199', NULL, 'book_title', 'no', '2016-05-04 21:59:27', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('201', NULL, 'no_of_vehicle', 'no', '2016-05-09 16:20:40', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('202', NULL, 'fare', 'no', '2016-05-09 16:20:48', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('203', NULL, 'content_type', 'no', '2016-05-10 05:24:51', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('205', NULL, 'upload_date', 'no', '2016-05-10 05:25:21', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('206', NULL, 'expenses', 'no', '2016-05-10 15:14:03', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('207', NULL, 'student_information', 'no', '2016-05-10 15:24:31', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('208', NULL, 'fees_collection', 'no', '2016-05-10 15:35:29', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('210', NULL, 'examinations', 'no', '2016-05-10 16:03:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('211', NULL, 'academics', 'no', '2016-05-10 16:17:28', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('212', NULL, 'download_center', 'no', '2016-05-10 16:17:28', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('214', NULL, 'library', 'no', '2016-05-10 16:34:05', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('215', NULL, 'system_settings', 'no', '2016-05-10 16:38:32', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('216', NULL, 'reports', 'no', '2016-05-10 16:51:38', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('217', NULL, 'subject', 'no', '2016-05-12 20:22:44', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('218', NULL, 'rack_no', 'no', '2016-05-12 20:22:44', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('220', NULL, 'hostel', 'no', '2016-05-12 23:42:27', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('221', NULL, 'hostel_name', 'no', '2016-05-12 23:48:07', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('222', NULL, 'transport', 'no', '2016-05-12 23:51:25', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('223', NULL, 'route_title', 'no', '2016-05-12 23:57:39', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('225', NULL, 'date_to', 'no', '2016-05-13 02:36:18', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('227', NULL, 'basic_information', 'no', '2016-05-13 02:57:25', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('228', NULL, 'add', 'no', '2016-05-13 03:00:46', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('229', NULL, 'list', 'no', '2016-05-13 03:03:14', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('230', NULL, 'result', 'no', '2016-05-13 03:06:46', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('231', NULL, 'pass', 'no', '2016-05-13 03:07:34', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('232', NULL, 'fail', 'no', '2016-05-13 03:07:34', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('233', NULL, 'continue', 'no', '2016-05-17 07:42:00', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('234', NULL, 'leave', 'no', '2016-05-13 03:08:28', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('235', NULL, 'exam_list', 'no', '2016-05-17 05:47:56', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('236', NULL, 'exam', 'no', '2016-05-17 05:50:35', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('237', NULL, 'start_time', 'no', '2016-05-17 05:55:08', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('238', NULL, 'end_time', 'no', '2016-05-17 05:55:08', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('239', NULL, 'room', 'no', '2016-05-17 05:55:08', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('240', NULL, 'full_mark', 'no', '2016-05-17 05:55:08', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('241', NULL, 'passing_marks', 'no', '2016-05-17 05:55:08', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('242', NULL, 'room_no', 'no', '2016-05-17 06:05:25', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('245', NULL, 'promote', 'no', '2016-05-17 07:03:52', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('246', NULL, 'content_title', 'no', '2016-05-18 14:50:20', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('251', NULL, 'teacher_list', 'no', '2016-05-20 21:29:17', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('252', NULL, 'compose_new_message', 'no', '2016-05-24 20:22:49', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('253', NULL, 'notice', 'no', '2016-05-24 20:26:56', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('254', NULL, 'notice_date', 'no', '2016-05-24 20:27:53', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('255', NULL, 'publish_on', 'no', '2016-05-24 20:28:56', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('256', NULL, 'message_to', 'no', '2016-05-24 20:30:54', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('257', NULL, 'parent', 'no', '2016-05-24 20:33:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('258', NULL, 'teacher', 'no', '2016-05-24 20:34:21', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('259', NULL, 'no_record_found', 'no', '2016-05-24 20:47:21', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('260', NULL, 'teacher_detail', 'no', '2016-05-24 22:22:21', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('261', NULL, 'subject_list', 'no', '2016-05-24 23:03:17', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('263', NULL, 'create_category', 'no', '2016-05-25 04:59:13', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('264', NULL, 'title', 'no', '2016-05-25 18:01:44', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('265', NULL, 'message', 'no', '2016-05-25 18:02:36', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('266', NULL, 'send', 'no', '2016-05-25 18:43:32', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('267', NULL, 'previous_school_details', 'no', '2016-05-25 22:53:02', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('268', NULL, 'upload_documents', 'no', '2016-05-25 22:54:00', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('270', NULL, 'miscellaneous_details', 'no', '2016-05-25 22:58:10', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('272', NULL, 'edit_notification', 'no', '2016-05-26 00:22:03', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('273', NULL, 'guardian_details', 'no', '2016-05-26 00:36:45', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('274', NULL, 'payment_id', 'no', '2016-05-26 00:40:03', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('275', NULL, 'change_password', 'no', '2016-05-26 00:45:33', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('278', NULL, 'notifications', 'no', '2016-05-29 20:42:06', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('279', NULL, 'visible_to_all', 'no', '2016-05-29 21:05:26', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('280', NULL, 'visibility', 'no', '2016-05-29 21:06:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('284', NULL, 'communicate', 'no', '2016-05-29 21:19:53', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('285', NULL, 'notice_board', 'no', '2016-05-29 21:21:47', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('286', NULL, 'publish_date', 'no', '2016-05-29 22:01:41', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('287', NULL, 'father', 'no', '2016-05-31 20:21:38', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('288', NULL, 'mother', 'no', '2016-05-31 20:21:47', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('290', NULL, 'not_scheduled', 'no', '2016-06-07 06:50:48', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('291', NULL, 'import_student', 'no', '2016-06-09 20:56:51', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('292', NULL, 'dl_sample_import', 'no', '2016-06-09 21:03:13', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('293', NULL, 'select_csv_file', 'no', '2016-06-09 21:10:49', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('294', NULL, 'date_format', 'no', '2016-06-21 20:49:07', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('295', NULL, 'currency', 'no', '2016-06-21 20:49:28', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('296', NULL, 'currency_symbol', 'no', '2016-06-21 20:49:28', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('297', NULL, 'profile', 'no', '2016-06-22 11:46:28', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('298', NULL, 'save_attendance', 'no', '2016-06-22 11:56:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('299', NULL, 'full_marks', 'no', '2016-06-23 23:10:24', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('300', NULL, 'obtain_marks', 'no', '2016-06-23 23:10:24', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('301', NULL, 'total_marks', 'no', '2016-06-23 23:18:37', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('302', NULL, 'current', 'no', '2016-07-11 19:26:07', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('303', NULL, 'admission', 'no', '2016-07-21 00:40:45', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('305', NULL, 'sibling', 'no', '2016-08-06 19:32:13', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('306', NULL, 'details', 'no', '2016-08-06 19:39:19', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('309', NULL, 'identification', 'no', '2016-08-06 19:43:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('310', NULL, 'no', 'no', '2016-08-06 19:45:33', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('311', NULL, 'delete', 'no', '2016-08-06 20:28:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('312', NULL, 'documents', 'no', '2016-08-06 20:33:52', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('313', NULL, 'payment', 'no', '2016-08-06 20:36:56', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('317', NULL, 'no_transaction_found', 'no', '2016-08-10 01:32:10', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('318', NULL, 'transport_fees_details', 'no', '2016-08-10 01:35:57', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('319', NULL, 'collect_fees', 'no', '2016-08-10 01:45:47', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('320', NULL, 'balance_details', 'no', '2016-08-10 01:48:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('321', NULL, 'download_pdf', 'no', '2016-08-10 02:05:40', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('322', NULL, 'student_fees_report', 'no', '2016-08-10 02:23:18', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('323', NULL, 'total_fees', 'no', '2016-08-10 02:26:53', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('324', NULL, 'paid_fees', 'no', '2016-08-10 02:26:53', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('325', NULL, 'student_detail', 'no', '2016-08-10 02:42:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('327', NULL, 'gross_fees', 'no', '2016-08-10 02:45:26', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('328', NULL, 'balance_fees', 'no', '2016-08-10 02:48:31', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('329', NULL, 'print_selected', 'no', '2016-08-10 02:50:32', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('330', NULL, 'collect_transport_fees', 'no', '2016-08-10 03:03:34', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('331', NULL, 'no_transport_fees_found', 'no', '2016-08-10 03:05:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('332', NULL, 'total_transport_fees', 'no', '2016-08-10 03:15:54', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('333', NULL, 'class_section', 'no', '2016-08-10 03:19:24', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('335', NULL, 'other_discount', 'no', '2016-08-10 03:38:43', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('336', NULL, 'search_transaction', 'no', '2016-10-17 22:19:17', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('337', NULL, 'fees_collection_details', 'no', '2016-08-10 03:48:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('338', NULL, 'expense_id', 'no', '2016-08-10 03:54:24', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('339', NULL, 'expense_head', 'no', '2016-08-10 03:51:43', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('340', NULL, 'expense_detail', 'no', '2016-08-10 03:55:17', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('341', NULL, 'add_expense', 'no', '2016-08-10 04:28:20', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('342', NULL, 'edit_expense', 'no', '2016-08-10 04:33:33', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('343', NULL, 'expense_list', 'no', '2016-08-10 04:37:48', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('344', NULL, 'expense_head_list', 'no', '2016-08-10 04:45:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('345', NULL, 'edit_expense_head', 'no', '2016-08-10 04:49:02', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('347', NULL, 'add_expense_head', 'no', '2016-08-10 04:55:17', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('348', NULL, 'attendance_already_submitted_you_can_edit_record', 'no', '2017-04-01 18:16:00', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('349', NULL, 'attendance_already_submitted_as_holiday', 'no', '2017-04-01 18:16:00', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('350', NULL, 'you_can_edit_record', 'no', '2016-08-10 16:11:54', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('351', NULL, 'attendance_saved_successfully', 'no', '2017-04-01 18:16:00', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('352', NULL, 'holiday', 'no', '2016-08-10 16:18:21', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('353', NULL, 'mark_as_holiday', 'no', '2016-08-10 16:22:15', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('354', NULL, 'no_attendance_prepare', 'no', '2016-08-10 16:42:18', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('355', NULL, 'add_exam', 'no', '2016-08-10 17:09:04', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('356', NULL, 'view_status', 'no', '2016-08-10 17:10:56', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('357', NULL, 'marks_register_prepared', 'no', '2016-08-10 17:16:51', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('358', NULL, 'exam_scheduled', 'no', '2016-08-10 17:16:51', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('359', NULL, 'submit', 'no', '2016-08-10 17:30:47', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('360', NULL, 'edit_grade', 'no', '2016-08-10 17:34:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('361', NULL, 'add_grade', 'no', '2016-08-10 17:34:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('362', NULL, 'percent_upto', 'no', '2016-08-10 17:36:04', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('363', NULL, 'percent_from', 'no', '2016-08-10 17:36:04', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('364', NULL, 'grade_list', 'no', '2016-08-10 17:39:49', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('366', NULL, 'assign_subject', 'no', '2016-08-10 18:02:21', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('368', NULL, 'edit_teacher', 'no', '2016-08-10 18:05:57', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('369', NULL, 'add_teacher', 'no', '2016-08-10 18:22:14', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('370', NULL, 'add_subject', 'no', '2016-08-10 18:30:48', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('374', NULL, 'edit_subject', 'no', '2016-08-10 18:43:33', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('375', NULL, 'edit_class', 'no', '2016-08-10 18:43:50', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('377', NULL, 'edit_section', 'no', '2016-08-10 18:54:27', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('378', NULL, 'upload_content', 'no', '2016-08-10 19:06:54', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('380', NULL, 'content_list', 'no', '2016-08-10 19:30:03', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('382', NULL, 'available_for_all_classes', 'no', '2016-10-23 00:26:48', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('384', NULL, 'content_file', 'no', '2016-08-12 02:09:02', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('385', NULL, 'available_for', 'no', '2016-08-12 02:09:02', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('386', NULL, 'my_children', 'no', '2016-09-16 18:06:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('387', NULL, 'assignment_list', 'no', '2016-08-12 02:15:21', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('388', NULL, 'study_material_list', 'no', '2016-08-12 02:15:21', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('389', NULL, 'syllabus_list', 'no', '2016-08-12 02:15:21', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('390', NULL, 'other_download_list', 'no', '2016-08-12 02:15:21', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('391', NULL, 'book_details', 'no', '2016-08-12 02:34:18', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('392', NULL, 'edit_book', 'no', '2016-08-12 02:34:18', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('393', NULL, 'book_list', 'no', '2016-08-12 02:36:33', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('394', NULL, 'route_list', 'no', '2016-08-12 02:48:15', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('395', NULL, 'create_route', 'no', '2016-08-12 02:48:15', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('396', NULL, 'edit_route', 'no', '2016-08-12 02:48:15', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('397', NULL, 'add_hostel', 'no', '2016-08-12 03:05:23', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('398', NULL, 'edit_hostel', 'no', '2016-08-12 03:05:23', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('399', NULL, 'hostel_list', 'no', '2016-08-12 03:05:23', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('400', NULL, 'print', 'no', '2016-08-12 03:08:26', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('401', NULL, 'room_type', 'no', '2016-08-12 03:13:23', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('402', NULL, 'add_room_type', 'no', '2016-08-12 03:13:23', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('403', NULL, 'room_type_list', 'no', '2016-08-12 03:13:23', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('404', NULL, 'edit_room_type', 'no', '2016-08-12 03:13:23', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('406', NULL, 'edit_message', 'no', '2016-08-12 03:28:45', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('407', NULL, 'select', 'no', '2016-08-12 03:32:17', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('408', NULL, 'general_settings', 'no', '2016-08-12 04:03:50', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('410', NULL, 'session_start_month', 'no', '2016-08-12 04:04:48', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('411', NULL, 'edit_session', 'no', '2016-08-12 04:17:13', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('414', NULL, 'paypal_setting', 'no', '2016-08-12 04:50:26', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('415', NULL, 'paypal_username', 'no', '2016-08-12 04:50:26', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('416', NULL, 'paypal_password', 'no', '2016-08-12 04:50:26', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('417', NULL, 'paypal_signature', 'no', '2016-08-12 04:50:26', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('418', NULL, 'paypal_email', 'no', '2016-08-12 04:50:26', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('419', NULL, 'off', 'no', '2016-08-12 04:50:43', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('420', NULL, 'on', 'no', '2016-08-12 04:50:43', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('421', NULL, 'backup_history', 'no', '2016-08-12 04:59:15', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('422', NULL, 'create_backup', 'no', '2016-08-12 04:59:15', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('423', NULL, 'backup_files', 'no', '2016-10-25 08:47:36', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('424', NULL, 'upload_from_local_directory', 'no', '2016-08-12 05:03:51', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('427', NULL, 'restore', 'no', '2016-08-12 10:04:46', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('429', NULL, 'class_fees_detail', 'no', '2016-08-12 10:37:20', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('430', NULL, 'no_fees_found', 'no', '2016-08-12 10:38:56', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('431', NULL, 'monthly_fees_collection', 'no', '2016-08-12 10:43:22', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('432', NULL, 'monthly_expenses', 'no', '2016-08-12 10:43:22', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('433', NULL, 'teachers', 'no', '2016-08-12 10:43:22', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('434', NULL, 'students', 'no', '2016-08-12 10:43:22', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('436', NULL, 'login_details', 'no', '2016-08-12 10:57:20', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('437', NULL, 'academic_fees_detail', 'no', '2016-08-12 11:33:38', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('438', NULL, 'document_list', 'no', '2016-08-12 11:42:01', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('439', NULL, 'exam_timetable', 'no', '2016-08-12 12:00:36', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('440', NULL, 'promote_in_session', 'no', '2016-08-12 12:51:51', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('441', NULL, 'promote_students_in_next_session', 'no', '2016-08-12 12:51:51', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('442', NULL, 'next_session_status', 'no', '2016-08-12 12:55:11', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('443', NULL, 'no_result_prepare', 'no', '2016-08-12 05:26:40', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('444', NULL, 'parent_guardian_detail', 'no', '2016-08-12 05:59:14', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('445', NULL, 'add_more_details', 'no', '2016-08-12 06:01:21', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('446', NULL, 'if_permanent_address_is_current_address', 'no', '2016-10-05 09:58:39', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('447', NULL, 'address_details', 'no', '2016-08-12 06:07:38', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('449', NULL, 'add_image', 'no', '2016-08-12 06:25:27', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('450', NULL, 'payment_id_detail', 'no', '2016-08-12 06:33:44', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('451', NULL, 'section_name', 'no', '2016-08-12 07:03:59', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('452', NULL, 'fees_type', 'no', '2016-08-12 07:32:20', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('453', NULL, 'edit_hostel_room', 'no', '2016-08-16 00:07:57', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('454', NULL, 'room_no_name', 'no', '2016-08-16 00:11:43', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('455', NULL, 'no_of_bed', 'no', '2016-08-16 00:11:43', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('456', NULL, 'cost_per_bed', 'no', '2016-08-16 00:11:43', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('457', NULL, 'hostel_room_list', 'no', '2016-08-16 00:11:43', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('458', NULL, 'add_hostel_room', 'no', '2016-08-16 00:16:48', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('459', NULL, 'mark_register', 'no', '2016-08-16 00:21:56', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('462', NULL, 'fill_mark', 'no', '2016-08-16 00:32:20', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('463', NULL, 'post_new_message', 'no', '2016-08-16 00:35:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('464', NULL, 'by_date', 'no', '2016-08-16 00:41:44', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('465', NULL, 'edit_category', 'no', '2016-08-16 00:50:25', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('466', NULL, 'exam_not_allotted', 'no', '2016-10-23 00:23:46', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('467', NULL, 'edit_exam', 'no', '2016-08-16 01:01:50', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('468', NULL, 'add_class', 'no', '2016-08-16 01:06:27', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('469', NULL, 'teacher_subject', 'no', '2016-08-16 02:48:06', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('470', NULL, 'dd', 'no', '2016-08-16 16:05:12', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('471', NULL, 'cash', 'no', '2016-08-16 16:05:12', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('472', NULL, 'cheque', 'no', '2016-08-16 16:05:12', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('473', NULL, 'revert', 'no', '2016-08-16 16:40:47', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('474', NULL, 'view', 'no', '2016-08-16 18:16:56', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('475', NULL, 'no_exam_prepare', 'no', '2016-10-23 01:00:25', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('476', NULL, 'sms_setting', 'no', '2016-08-22 01:45:46', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('477', NULL, 'smart_school', 'no', '2016-08-24 16:41:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('478', NULL, 'user_login', 'no', '2016-08-24 17:16:22', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('479', NULL, 'library_book', 'no', '2016-09-06 12:10:41', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('480', NULL, 'transport_routes', 'no', '2016-09-06 12:14:00', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('481', NULL, 'hostel_rooms', 'no', '2016-09-06 12:17:22', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('482', NULL, 'exam_schedule', 'no', '2016-09-06 12:27:03', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('483', NULL, 'subjects', 'no', '2016-09-06 12:35:20', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('484', NULL, 'national_identification_no', 'no', '2016-09-14 21:00:04', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('485', NULL, 'local_identification_no', 'no', '2016-09-14 21:01:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('486', NULL, 'my_profile', 'no', '2016-09-15 01:44:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('487', NULL, 'mode', 'no', '2016-09-15 01:47:39', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('488', NULL, 'url', 'no', '2016-09-15 04:24:06', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('489', NULL, 'month', 'no', '2016-09-15 04:37:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('490', NULL, 'upload', 'no', '2016-09-15 04:46:34', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('491', NULL, 'day', 'no', '2016-10-23 17:02:31', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('492', NULL, 'class_timetable', 'no', '2016-10-05 09:40:38', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('493', NULL, 'if_guardian_address_is_current_address', 'no', '2016-10-07 10:12:51', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('494', NULL, 'admin_login', 'no', '2016-10-17 14:08:26', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('495', NULL, 'date_from', 'no', '2016-10-18 23:07:28', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('496', NULL, 'other', 'no', '2016-10-25 08:01:08', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('497', NULL, 'search_by_keyword', 'no', '2016-10-25 08:55:46', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('499', NULL, 'add_book', 'no', '2016-10-31 04:52:54', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('500', NULL, 'edit_vehicle_on_route', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('501', NULL, 'assign_vehicle_on_route', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('502', NULL, 'vehicle_route_list', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('503', NULL, 'route', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('504', NULL, 'vehicle_routes', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('505', NULL, 'edit_vehicle', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('506', NULL, 'vehicle', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('507', NULL, 'vehicle_list', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('508', NULL, 'add_vehicle', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('509', NULL, 'driver_contact', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('510', NULL, 'driver_license', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('511', NULL, 'driver_name', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('512', NULL, 'vehicle_no', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('513', NULL, 'vehicle_model', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('514', NULL, 'logout', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('515', NULL, 'year_made', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('516', NULL, 'attendance', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('517', NULL, 'show', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('519', NULL, 'add_timetable', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('520', NULL, 'edit_setting', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('521', NULL, 'subject_type', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('522', NULL, 'view_detail', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('523', NULL, 'exam_status', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('524', NULL, 'books', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('525', NULL, 'report_card', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('526', NULL, 'library_books', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('527', NULL, 'no_vehicle_allotted_to_this_route', 'no', '2017-04-01 18:16:00', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('528', NULL, 'Add/Edit', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('529', NULL, 'language_rtl_text_mode', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('530', NULL, 'clickatell_username', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('531', NULL, 'clickatell_password', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('532', NULL, 'clickatell_api_id', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('533', NULL, 'clickatell_sms_gateway', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('534', NULL, 'twilio_sms_gateway', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('535', NULL, 'custom_sms_gateway', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('536', NULL, 'twilio_account_sid', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('537', NULL, 'authentication_token', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('538', NULL, 'registered_phone_number', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('539', NULL, 'username', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('540', NULL, 'gateway_name', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('541', NULL, 'theory', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('542', NULL, 'practical', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('543', NULL, 'present', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('544', NULL, 'paid', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('545', NULL, 'yes', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('546', NULL, 'if_guardian_is', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('547', NULL, 'current_session', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('548', NULL, 'quick_links', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('549', NULL, 'student_details', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('550', NULL, 'student_admission', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('551', NULL, 'student_categories', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('552', NULL, 'promote_students', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('554', NULL, 'fees_master', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('555', NULL, 'search_fees_payment', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('556', NULL, 'search_due_fees', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('557', NULL, 'fees_statement', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('558', NULL, 'balance_fees_report', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('559', NULL, 'search_expense', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('560', NULL, 'student_attendance', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('561', NULL, 'attendance_by_date', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('562', NULL, 'attendance_report', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('563', NULL, 'marks_register', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('564', NULL, 'marks_grade', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('565', NULL, 'assign_subjects', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('566', NULL, 'sections', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('567', NULL, 'assignments', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('568', NULL, 'study_material', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('569', NULL, 'routes', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('570', NULL, 'vehicles', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('571', NULL, 'assign_vehicle', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('572', NULL, 'send_message', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('573', NULL, 'student_report', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('574', NULL, 'transaction_report', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('575', NULL, 'exam_marks_report', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('576', NULL, 'session_setting', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('577', NULL, 'backup / restore', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('578', NULL, 'languages', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('579', NULL, 'grade', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('580', NULL, 'percentage', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('581', NULL, 'fees_collection_&_expenses_for_session', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('582', NULL, 'fees_receipt', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('583', NULL, 'fees_category', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('584', NULL, 'fees_collection_&_expenses_for', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('585', NULL, 'library_-_books', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('586', NULL, 'transport_-_routes', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('587', NULL, 'hostel_-_rooms', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('588', NULL, 'search_by_name,_roll_no,_enroll_no,_national_identification_no,_local_identification_no_etc..', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('589', NULL, 'user_type', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('590', NULL, 'login_url', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('591', NULL, 'search_student', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('592', NULL, 'student_lists', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('593', NULL, 'detailed_view', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('595', NULL, 'active', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('596', NULL, 'syllabus', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('597', NULL, 'other_downloads', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('598', NULL, 'download', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('599', NULL, 'unpaid', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('600', NULL, 'enter_room_no', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('601', NULL, 'male', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('602', NULL, 'female', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('603', NULL, 'expense_result', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('604', NULL, 'view_schedule', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('605', NULL, 'pdf', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('606', NULL, 'not', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('607', NULL, 'scheduled', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('609', NULL, 'transaction_from', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('610', NULL, 'to', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('611', NULL, 'enabled', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('612', NULL, 'disabled', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('613', NULL, 'add_language', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('614', NULL, 'no_description', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('615', NULL, 'fees_category_list', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('616', NULL, 'add_fee_category', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('617', NULL, 'edit_fee_category', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('618', NULL, 'late_with_excuse', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('619', NULL, 'late', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `lang_id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES ('620', NULL, 'absent', 'no', '2017-04-01 16:39:09', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: lang_pharses
#

DROP TABLE IF EXISTS `lang_pharses`;

CREATE TABLE `lang_pharses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_id` int(11) DEFAULT NULL,
  `key_id` int(11) DEFAULT NULL,
  `pharses` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `text` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `lang_id` (`lang_id`),
  KEY `key_id` (`key_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1495 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('997', '4', '620', 'Absent', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('998', '4', '437', 'Academic Fees Detail', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('999', '4', '211', 'Academics', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1000', '4', '79', 'Action', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1001', '4', '595', 'Active', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1002', '4', '228', 'Add', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1003', '4', '64', 'Add Another Language', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1004', '4', '499', 'Add Book', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1005', '4', '51', 'Add Category', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1006', '4', '468', 'Add Class', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1007', '4', '355', 'Add Exam', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1008', '4', '341', 'Add Expense', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1009', '4', '347', 'Add Expense Head', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1010', '4', '616', 'Add Fee Category', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1011', '4', '35', 'Add Fees', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1012', '4', '43', 'Add Fees Master', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1013', '4', '45', 'Add Fees Type', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1014', '4', '361', 'Add Grade', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1015', '4', '397', 'Add Hostel', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1016', '4', '458', 'Add Hostel Room', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1017', '4', '449', 'Add Image', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1018', '4', '613', 'Add Language', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1019', '4', '445', 'Add More Details', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1020', '4', '137', 'Add New SMS Configuration', NULL, 'no', '2017-04-10 07:10:03', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1021', '4', '402', 'Add Room Type', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1022', '4', '57', 'Add Section', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1023', '4', '53', 'Add Session', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1024', '4', '370', 'Add Subject', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1025', '4', '369', 'Add Teacher', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1026', '4', '519', 'Add Timetable', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1027', '4', '508', 'Add Vehicle', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1028', '4', '528', 'Add/Edit', NULL, 'no', '2017-04-10 07:10:22', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1029', '4', '164', 'Address', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1030', '4', '447', 'Address Details', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1031', '4', '494', 'Admin Login', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1032', '4', '303', 'Admission', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1033', '4', '11', 'Admission Date', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1034', '4', '181', 'Admission Discount', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1035', '4', '170', 'Admission No', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1036', '4', '89', 'Amount', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1038', '4', '366', 'Assign Subject', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1039', '4', '565', 'Assign Subjects', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1040', '4', '571', 'Assign Vehicle', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1041', '4', '501', 'Assign Vehicle On Route', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1042', '4', '387', 'Assignment List', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1043', '4', '567', 'Assignments', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1044', '4', '516', 'Attendance', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1045', '4', '349', 'Attendance Already Submitted As Holiday', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1046', '4', '348', 'Attendance Already Submitted You Can Edit Record', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1047', '4', '561', 'Attendance By Date', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1048', '4', '562', 'Attendance Report', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1049', '4', '351', 'Attendance Saved Successfully', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1050', '4', '537', 'Authentication Token', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1051', '4', '190', 'Author', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1052', '4', '385', 'Available For', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1053', '4', '382', 'Available For All Classes', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1054', '4', '577', 'Backup / Restore', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1055', '4', '423', 'Backup Files', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1056', '4', '421', 'Backup History', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1057', '4', '108', 'Balance', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1058', '4', '92', 'Balance Description', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1059', '4', '320', 'Balance Details', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1060', '4', '328', 'Balance Fees', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1061', '4', '558', 'Balance Fees Report', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1062', '4', '23', 'Bank Account No', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1063', '4', '24', 'Bank Name', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1064', '4', '227', 'Basic Information', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1065', '4', '391', 'Book Details', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1066', '4', '393', 'Book List', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1067', '4', '199', 'Book Title', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1068', '4', '192', 'Book Price', NULL, 'no', '2017-04-10 07:13:06', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1069', '4', '524', 'Books', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1070', '4', '464', 'By Date', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1071', '4', '141', 'Cancel', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1072', '4', '471', 'Cash', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1073', '4', '168', 'Cast', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1074', '4', '16', 'Category', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1075', '4', '50', 'Category List', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1076', '4', '275', 'Change Password', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1077', '4', '80', 'Change Status', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1078', '4', '472', 'Cheque', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1079', '4', '9', 'Class', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1080', '4', '429', 'Class Fees Detail', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1081', '4', '54', 'Class List', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1082', '4', '333', 'Class Section', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1083', '4', '492', 'Class Timetable', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1084', '4', '116', 'Classes', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1085', '4', '532', 'Clickatell Api Id', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1086', '4', '531', 'Clickatell Password', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1087', '4', '533', 'Clickatell SMS Gateway', NULL, 'no', '2017-04-10 07:14:20', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1088', '4', '530', 'Clickatell Username', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1089', '4', '319', 'Collect Fees', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1090', '4', '330', 'Collect Transport Fees', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1091', '4', '117', 'Collection', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1092', '4', '284', 'Communicate', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1093', '4', '252', 'Compose New Message', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1094', '4', '123', 'Confirm Password', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1095', '4', '384', 'Content File', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1096', '4', '380', 'Content List', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1097', '4', '246', 'Content Title', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1098', '4', '203', 'Content Type', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1099', '4', '233', 'Continue', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1100', '4', '456', 'Cost Per Bed', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1101', '4', '422', 'Create Backup', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1102', '4', '263', 'Create Category', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1103', '4', '395', 'Create Route', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1104', '4', '65', 'Created At', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1105', '4', '295', 'Currency', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1106', '4', '296', 'Currency Symbol', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1107', '4', '302', 'Current', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1108', '4', '17', 'Current Address', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1109', '4', '121', 'Current Password', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1110', '4', '547', 'Current Session', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1111', '4', '535', 'Custom SMS Gateway', NULL, 'no', '2017-04-10 07:15:00', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1112', '4', '125', 'Date', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1113', '4', '294', 'Date Format', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1114', '4', '495', 'Date From', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1115', '4', '13', 'Date Of Birth', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1116', '4', '225', 'Date To', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1117', '4', '491', 'Day', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1118', '4', '470', 'DD', NULL, 'no', '2017-04-10 07:15:12', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1120', '4', '311', 'Delete', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1121', '4', '107', 'Deposit', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1122', '4', '101', 'Description', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1123', '4', '593', 'Detailed View', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1124', '4', '306', 'Details', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1125', '4', '612', 'Disabled', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1126', '4', '91', 'Discount', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1127', '4', '292', 'Download Sample Import File', NULL, 'no', '2017-04-10 07:16:06', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1128', '4', '438', 'Document List', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1129', '4', '312', 'Documents', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1130', '4', '598', 'Download', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1131', '4', '212', 'Download Center', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1132', '4', '321', 'Download PDF', NULL, 'no', '2017-04-10 07:16:23', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1133', '4', '509', 'Driver Contact', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1134', '4', '510', 'Driver License', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1135', '4', '511', 'Driver Name', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1136', '4', '48', 'Edit', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1137', '4', '392', 'Edit Book', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1138', '4', '465', 'Edit Category', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1139', '4', '375', 'Edit Class', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1140', '4', '467', 'Edit Exam', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1141', '4', '342', 'Edit Expense', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1142', '4', '345', 'Edit Expense Head', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1143', '4', '617', 'Edit Fee Category', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1144', '4', '360', 'Edit Grade', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1145', '4', '398', 'Edit Hostel', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1146', '4', '453', 'Edit Hostel Room', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1147', '4', '72', 'Edit Logo', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1148', '4', '406', 'Edit Message', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1149', '4', '272', 'Edit Notification', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1150', '4', '404', 'Edit Room Type', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1151', '4', '396', 'Edit Route', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1152', '4', '377', 'Edit Section', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1153', '4', '411', 'Edit Session', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1154', '4', '520', 'Edit Setting', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1155', '4', '374', 'Edit Subject', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1156', '4', '368', 'Edit Teacher', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1157', '4', '505', 'Edit Vehicle', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1158', '4', '500', 'Edit Vehicle On Route', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1159', '4', '3', 'Email', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1160', '4', '611', 'Enabled', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1161', '4', '238', 'End Time', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1162', '4', '171', 'Enrollment No', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1163', '4', '600', 'Enter Room No', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1164', '4', '236', 'Exam', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1165', '4', '235', 'Exam List', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1166', '4', '575', 'Exam Marks Report', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1167', '4', '142', 'Exam Name', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1168', '4', '466', 'Exam Not Allotted', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1169', '4', '482', 'Exam Schedule', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1170', '4', '358', 'Exam Scheduled', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1171', '4', '523', 'Exam Status', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1172', '4', '439', 'Exam Timetable', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1173', '4', '210', 'Examinations', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1174', '4', '340', 'Expense Detail', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1175', '4', '339', 'Expense Head', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1176', '4', '344', 'Expense Head List', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1177', '4', '338', 'Expense Id', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1178', '4', '343', 'Expense List', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1179', '4', '603', 'Expense Result', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1180', '4', '206', 'Expenses', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1181', '4', '33', 'Export Format', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1182', '4', '232', 'Fail', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1183', '4', '202', 'Fare', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1184', '4', '287', 'Father', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1185', '4', '157', 'Father Name', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1186', '4', '159', 'Father Occupation', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1187', '4', '158', 'Father Phone', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1188', '4', '39', 'Fee Category', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1189', '4', '115', 'Fees Master', NULL, 'no', '2017-04-10 07:18:52', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1190', '4', '40', 'Fees Type', NULL, 'no', '2017-04-10 07:18:56', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1191', '4', '184', 'Fees', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1192', '4', '583', 'Fees Category', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1193', '4', '615', 'Fees Category List', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1195', '4', '208', 'Fees Collection', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1196', '4', '584', 'Fees Collection & Expenses For', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1197', '4', '581', 'Fees Collection & Expenses For Session', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1198', '4', '337', 'Fees Collection Details', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1199', '4', '156', 'Fees Discount', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1200', '4', '554', 'Fees Master', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1201', '4', '44', 'Fees Master List', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1202', '4', '582', 'Fees Receipt', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1203', '4', '557', 'Fees Statement', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1204', '4', '102', 'Fees Subtotal', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1205', '4', '452', 'Fees Type', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1206', '4', '46', 'Fees Type List', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1207', '4', '602', 'Female', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1208', '4', '462', 'Fill Mark', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1209', '4', '87', 'Fine', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1210', '4', '7', 'First Name', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1211', '4', '240', 'Full Mark', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1212', '4', '299', 'Full Marks', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1213', '4', '540', 'Gateway Name', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1214', '4', '186', 'Gender', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1215', '4', '408', 'General Settings', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1216', '4', '34', 'Generate PDF', NULL, 'no', '2017-04-10 07:20:09', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1217', '4', '579', 'Grade', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1218', '4', '364', 'Grade List', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1219', '4', '145', 'Grade Name', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1220', '4', '106', 'Grand Total', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1221', '4', '327', 'Gross Fees', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1222', '4', '30', 'Guardian Address', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1223', '4', '273', 'Guardian Details', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1224', '4', '27', 'Guardian Name', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1225', '4', '163', 'Guardian Occupation', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1226', '4', '29', 'Guardian Phone', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1227', '4', '28', 'Guardian Relation', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1228', '4', '352', 'Holiday', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1229', '4', '220', 'Hostel', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1230', '4', '587', 'Hostel - Rooms', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1231', '4', '399', 'Hostel List', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1232', '4', '221', 'Hostel Name', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1233', '4', '457', 'Hostel Room List', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1234', '4', '481', 'Hostel Rooms', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1235', '4', '169', 'Id', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1236', '4', '309', 'Identification', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1237', '4', '493', 'If Guardian Address is Current Address', NULL, 'no', '2017-04-10 07:20:50', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1238', '4', '546', 'If Guardian Is', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1239', '4', '446', 'If Permanent Address is Current Address', NULL, 'no', '2017-04-10 07:20:57', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1240', '4', '25', 'IFSC Code', NULL, 'no', '2017-04-10 07:21:18', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1241', '4', '32', 'Import Excel', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1242', '4', '291', 'Import Student', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1243', '4', '197', 'Intake', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1244', '4', '86', 'Invoice No', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1245', '4', '188', 'ISBN', NULL, 'no', '2017-04-10 07:21:32', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1246', '4', '165', 'Language', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1247', '4', '63', 'Language List', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1248', '4', '529', 'Language RTL Text Mode', NULL, 'no', '2017-04-10 07:21:53', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1249', '4', '578', 'Languages', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1250', '4', '8', 'Last Name', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1251', '4', '619', 'Late', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1252', '4', '618', 'Late With Excuse', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1253', '4', '234', 'Leave', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1254', '4', '214', 'Library', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1255', '4', '585', 'Library - Books', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1256', '4', '479', 'Library Book', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1257', '4', '526', 'Library Books', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1258', '4', '229', 'List', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1259', '4', '485', 'Local Identification No', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1260', '4', '436', 'Login Details', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1261', '4', '590', 'Login Url', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1262', '4', '514', 'Logout', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1263', '4', '601', 'Male', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1264', '4', '70', 'Manage', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1265', '4', '353', 'Mark As Holiday', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1266', '4', '459', 'Mark Register', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1267', '4', '564', 'Marks Grade', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1268', '4', '563', 'Marks Register', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1269', '4', '357', 'Marks Register Prepared', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1270', '4', '265', 'Message', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1271', '4', '256', 'Message To', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1272', '4', '270', 'Miscellaneous Details', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1273', '4', '12', 'Mobile No', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1274', '4', '487', 'Mode', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1275', '4', '489', 'Month', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1276', '4', '432', 'Monthly Expenses', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1277', '4', '431', 'Monthly Fees Collection', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1278', '4', '288', 'Mother', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1279', '4', '160', 'Mother Name', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1280', '4', '162', 'Mother Occupation', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1281', '4', '161', 'Mother Phone', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1282', '4', '386', 'My Children', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1283', '4', '486', 'My Profile', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1284', '4', '153', 'Name', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1285', '4', '484', 'National Identification No', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1286', '4', '122', 'New Password', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1287', '4', '442', 'Next Session Status', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1288', '4', '310', 'No', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1289', '4', '354', 'No Attendance Prepared', NULL, 'no', '2017-04-10 07:23:26', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1290', '4', '614', 'No Description', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1291', '4', '475', 'No Exam Prepared', NULL, 'no', '2017-04-10 07:23:35', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1292', '4', '430', 'No Fees Found', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1293', '4', '455', 'No Of Bed', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1294', '4', '201', 'No Of Vehicle', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1295', '4', '259', 'No Record Found', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1296', '4', '443', 'No Result Prepared', NULL, 'no', '2017-04-10 07:23:47', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1297', '4', '94', 'No Search Record Found', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1298', '4', '317', 'No Transaction Found', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1299', '4', '331', 'No Transport Fees Found', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1300', '4', '527', 'No vehicle allotted to this route', NULL, 'no', '2017-04-10 07:24:28', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1301', '4', '606', 'Not', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1302', '4', '290', 'Not Scheduled', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1303', '4', '150', 'Note', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1304', '4', '253', 'Notice', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1305', '4', '285', 'Notice Board', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1306', '4', '254', 'Notice Date', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1307', '4', '278', 'Notifications', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1308', '4', '300', 'Obtain Marks', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1309', '4', '419', 'Off', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1310', '4', '420', 'On', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1311', '4', '496', 'Other', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1312', '4', '335', 'Other Discount', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1313', '4', '390', 'Other Download List', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1314', '4', '597', 'Other Downloads', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1315', '4', '544', 'Paid', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1316', '4', '324', 'Paid Fees', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1317', '4', '257', 'Parent', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1318', '4', '444', 'Parent Guardian Detail', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1319', '4', '231', 'Pass', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1320', '4', '241', 'Passing Marks', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1321', '4', '167', 'Password', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1322', '4', '313', 'Payment', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1323', '4', '274', 'Payment Id', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1324', '4', '450', 'Payment Id Detail', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1325', '4', '418', 'Paypal Email', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1326', '4', '416', 'Paypal Password', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1327', '4', '414', 'Paypal Setting', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1328', '4', '417', 'Paypal Signature', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1329', '4', '415', 'Paypal Username', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1330', '4', '605', 'PDF', NULL, 'no', '2017-04-10 07:25:16', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1331', '4', '147', 'Percent', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1332', '4', '363', 'Percent From', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1333', '4', '149', 'Percent To', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1334', '4', '362', 'Percent Upto', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1335', '4', '580', 'Percentage', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1336', '4', '18', 'Permanent Address', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1337', '4', '73', 'Phone', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1339', '4', '463', 'Post New Message', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1340', '4', '193', 'Post Date', NULL, 'no', '2017-04-10 07:25:57', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1341', '4', '542', 'Practical', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1342', '4', '543', 'Present', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1343', '4', '267', 'Previous School Details', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1344', '4', '400', 'Print', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1345', '4', '329', 'Print Selected', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1346', '4', '297', 'Profile', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1347', '4', '245', 'Promote', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1348', '4', '440', 'Promote In Session', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1349', '4', '552', 'Promote Students', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1350', '4', '441', 'Promote Students In Next Session', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1351', '4', '286', 'Publish Date', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1352', '4', '255', 'Publish On', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1353', '4', '189', 'Publisher', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1354', '4', '191', 'Qty', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1355', '4', '548', 'Quick Links', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1356', '4', '218', 'Rack No', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1357', '4', '104', 'Receipt No', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1358', '4', '538', 'Registered Phone Number', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1359', '4', '15', 'Religion', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1360', '4', '82', 'Report', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1361', '4', '525', 'Report Card', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1362', '4', '216', 'Reports', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1363', '4', '85', 'Reset', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1364', '4', '427', 'Restore', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1365', '4', '230', 'Result', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1366', '4', '473', 'Revert', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1367', '4', '6', 'Roll No', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1368', '4', '239', 'Room', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1369', '4', '242', 'Room No', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1370', '4', '454', 'Room No/Name', NULL, 'no', '2017-04-10 07:26:56', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1371', '4', '401', 'Room Type', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1372', '4', '403', 'Room Type List', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1373', '4', '503', 'Route', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1374', '4', '394', 'Route List', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1375', '4', '223', 'Route Title', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1376', '4', '569', 'Routes', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1377', '4', '185', 'RTE', NULL, 'no', '2017-04-10 07:27:10', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1378', '4', '66', 'Save', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1379', '4', '298', 'Save Attendance', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1380', '4', '607', 'Scheduled', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1381', '4', '151', 'School Code', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1383', '4', '69', 'School Logo', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1384', '4', '2', 'School Name', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1385', '4', '37', 'Search', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1386', '4', '497', 'Search By Keyword', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1387', '4', '588', 'Search By Name, Roll No, Enroll No, National Id, Local Id Etc..', NULL, 'no', '2017-04-10 07:28:12', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1388', '4', '556', 'Search Due Fees', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1389', '4', '559', 'Search Expense', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1390', '4', '555', 'Search Fees Payment', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1391', '4', '591', 'Search Student', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1392', '4', '336', 'Search Transaction', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1393', '4', '10', 'Section', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1394', '4', '56', 'Section List', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1395', '4', '451', 'Section Name', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1396', '4', '566', 'Sections', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1397', '4', '407', 'Select', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1398', '4', '84', 'Select Criteria', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1399', '4', '293', 'Select CSV File', NULL, 'no', '2017-04-10 07:28:35', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1400', '4', '31', 'Select Image', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1401', '4', '68', 'Select Logo', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1402', '4', '266', 'Send', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1403', '4', '572', 'Send Message', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1404', '4', '1', 'Session', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1405', '4', '52', 'Session List', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1406', '4', '576', 'Session Setting', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1407', '4', '410', 'Session Start Month', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1408', '4', '517', 'Show', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1409', '4', '305', 'Sibling', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1411', '4', '152', 'Sign In', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1412', '4', '477', 'Smart School', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1413', '4', '76', 'SMS Configuration', NULL, 'no', '2017-04-10 07:29:11', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1414', '4', '77', 'SMS Gateway Url', NULL, 'no', '2017-04-10 07:29:17', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1415', '4', '476', 'SMS Setting', NULL, 'no', '2017-04-10 07:29:22', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1416', '4', '237', 'Start Time', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1417', '4', '78', 'Status', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1418', '4', '61', 'Student', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1419', '4', '550', 'Student Admission', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1420', '4', '560', 'Student Attendance', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1421', '4', '551', 'Student Categories', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1422', '4', '325', 'Student Detail', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1423', '4', '549', 'Student Details', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1424', '4', '322', 'Student Fees Report', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1425', '4', '207', 'Student Information', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1426', '4', '592', 'Students List', NULL, 'no', '2017-04-10 07:29:55', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1427', '4', '183', 'Student Name', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1428', '4', '573', 'Student Report', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1429', '4', '434', 'Students', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1430', '4', '568', 'Study Material', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1431', '4', '388', 'Study Material List', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1432', '4', '217', 'Subject', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1433', '4', '144', 'Subject Code', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1434', '4', '261', 'Subject List', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1435', '4', '143', 'Subject Name', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1436', '4', '521', 'Subject Type', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1437', '4', '483', 'Subjects', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1438', '4', '359', 'Submit', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1439', '4', '596', 'Syllabus', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1440', '4', '389', 'Syllabus List', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1441', '4', '215', 'System Settings', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1442', '4', '258', 'Teacher', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1443', '4', '260', 'Teacher Detail', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1444', '4', '251', 'Teacher List', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1445', '4', '166', 'Teacher Name', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1446', '4', '187', 'Teacher Photo', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1447', '4', '469', 'Teacher Subject', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1448', '4', '433', 'Teachers', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1449', '4', '541', 'Theory', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1450', '4', '264', 'Title', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1451', '4', '610', 'To', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1452', '4', '90', 'Total', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1453', '4', '182', 'Total Balance', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1454', '4', '323', 'Total Fees', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1455', '4', '301', 'Total Marks', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1456', '4', '180', 'Total Paid Fees', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1457', '4', '332', 'Total Transport Fees', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1458', '4', '609', 'Transaction From', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1459', '4', '574', 'Transaction Report', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1460', '4', '222', 'Transport', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1461', '4', '586', 'Transport - Routes', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1462', '4', '155', 'Transport Fees', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1463', '4', '318', 'Transport Fees Details', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1464', '4', '480', 'Transport Routes', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1465', '4', '536', 'Twilio Account SID', NULL, 'no', '2017-04-10 07:31:04', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1466', '4', '534', 'Twilio SMS Gateway', NULL, 'no', '2017-04-10 07:31:10', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1467', '4', '88', 'Type', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1468', '4', '599', 'Unpaid', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1469', '4', '490', 'Upload', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1470', '4', '378', 'Upload Content', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1471', '4', '205', 'Upload Date', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1472', '4', '268', 'Upload Documents', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1473', '4', '424', 'Upload From Local Directory', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1474', '4', '488', 'URL', NULL, 'no', '2017-04-10 07:31:27', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1475', '4', '478', 'User Login', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1476', '4', '74', 'User Name', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1477', '4', '589', 'User Type', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1478', '4', '539', 'Username', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1479', '4', '506', 'Vehicle', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1480', '4', '507', 'Vehicle List', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1481', '4', '513', 'Vehicle Model', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1482', '4', '512', 'Vehicle No', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1483', '4', '502', 'Vehicle Route List', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1484', '4', '504', 'Vehicle Routes', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1485', '4', '570', 'Vehicles', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1486', '4', '474', 'View', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1487', '4', '522', 'View Detail', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1488', '4', '604', 'View Schedule', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1489', '4', '356', 'View Status', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1490', '4', '280', 'Visibility', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1491', '4', '279', 'Visible To All', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1492', '4', '515', 'Year Made', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1493', '4', '545', 'Yes', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES ('1494', '4', '350', 'You Can Edit Record', NULL, 'no', '2017-04-06 09:18:39', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: languages
#

DROP TABLE IF EXISTS `languages`;

CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('1', 'Azerbaijan', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('2', 'Albanian', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('3', 'Amharic', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('4', 'English', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('5', 'Arabic', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('7', 'Afrikaans', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('8', 'Basque', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('11', 'Bengali', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('13', 'Bosnian', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('14', 'Welsh', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('15', 'Hungarian', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('16', 'Vietnamese', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('17', 'Haitian (Creole)', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('18', 'Galician', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('19', 'Dutch', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('21', 'Greek', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('22', 'Georgian', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('23', 'Gujarati', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('24', 'Danish', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('25', 'Hebrew', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('26', 'Yiddish', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('27', 'Indonesian', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('28', 'Irish', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('29', 'Italian', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('30', 'Icelandic', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('31', 'Spanish', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('33', 'Kannada', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('34', 'Catalan', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('36', 'Chinese', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('37', 'Korean', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('38', 'Xhosa', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('39', 'Latin', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('40', 'Latvian', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('41', 'Lithuanian', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('43', 'Malagasy', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('44', 'Malay', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('45', 'Malayalam', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('46', 'Maltese', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('47', 'Macedonian', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('48', 'Maori', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('49', 'Marathi', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('51', 'Mongolian', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('52', 'German', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('53', 'Nepali', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('54', 'Norwegian', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('55', 'Punjabi', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('57', 'Persian', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('59', 'Portuguese', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('60', 'Romanian', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('61', 'Russian', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('62', 'Cebuano', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('64', 'Sinhala', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('65', 'Slovakian', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('66', 'Slovenian', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('67', 'Swahili', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('68', 'Sundanese', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('70', 'Thai', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('71', 'Tagalog', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('72', 'Tamil', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('74', 'Telugu', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('75', 'Turkish', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('77', 'Uzbek', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('79', 'Urdu', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('80', 'Finnish', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('81', 'French', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('82', 'Hindi', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('84', 'Czech', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('85', 'Swedish', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('86', 'Scottish', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('87', 'Estonian', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('88', 'Esperanto', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('89', 'Javanese', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES ('90', 'Japanese', 'no', 'no', '2017-04-06 09:08:33', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: migrations
#

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `migrations` (`version`) VALUES ('120');


#
# TABLE STRUCTURE FOR: payment_settings
#

DROP TABLE IF EXISTS `payment_settings`;

CREATE TABLE `payment_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `api_username` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_password` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_signature` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_demo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `payment_settings` (`id`, `api_username`, `api_password`, `api_signature`, `api_email`, `paypal_demo`, `is_active`, `created_at`, `updated_at`) VALUES ('1', 'xxxxxx', 'xxxxxx', 'xxxxxx`', 'xxxxxx', '', 'no', '2016-10-19 01:26:11', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: read_notification
#

DROP TABLE IF EXISTS `read_notification`;

CREATE TABLE `read_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `parent_id` int(10) NOT NULL,
  `notification_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: room_types
#

DROP TABLE IF EXISTS `room_types`;

CREATE TABLE `room_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_type` varchar(200) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: sch_settings
#

DROP TABLE IF EXISTS `sch_settings`;

CREATE TABLE `sch_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `lang_id` int(11) DEFAULT NULL,
  `dise_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_format` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `currency_symbol` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_rtl` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'disabled',
  `session_id` int(11) DEFAULT NULL,
  `start_month` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `board_image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `lang_id` (`lang_id`),
  KEY `session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sch_settings` (`id`, `name`, `email`, `phone`, `address`, `lang_id`, `dise_code`, `date_format`, `currency`, `currency_symbol`, `is_rtl`, `session_id`, `start_month`, `image`, `is_active`, `created_at`, `updated_at`, `board_image`) VALUES ('1', 'Karma Public School', 'gul.ind786@gmail.com', '+919837363600', 'Deoband, Saharanpur', '4', '1010', 'd/m/Y', 'INR', '₹', 'disabled', '12', '6', '1.jpg', 'no', '2017-08-17 00:41:07', '0000-00-00 00:00:00', '1_board_image.jpg');


#
# TABLE STRUCTURE FOR: sections
#

DROP TABLE IF EXISTS `sections`;

CREATE TABLE `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sections` (`id`, `section`, `is_active`, `created_at`, `updated_at`) VALUES ('1', 'A', 'no', '2017-06-14 21:15:47', '0000-00-00 00:00:00');
INSERT INTO `sections` (`id`, `section`, `is_active`, `created_at`, `updated_at`) VALUES ('2', 'B', 'no', '2017-06-14 21:16:10', '0000-00-00 00:00:00');
INSERT INTO `sections` (`id`, `section`, `is_active`, `created_at`, `updated_at`) VALUES ('3', 'C', 'no', '2017-06-14 21:21:54', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: send_notification
#

DROP TABLE IF EXISTS `send_notification`;

CREATE TABLE `send_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `date` date DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `visible_student` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `visible_teacher` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `visible_parent` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `created_by` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: sessions
#

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES ('7', '2015-16', 'no', '2016-08-24 17:51:28', '0000-00-00 00:00:00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES ('11', '2016-17', 'no', '2016-08-24 17:56:19', '0000-00-00 00:00:00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES ('12', '2017-18', 'no', '2016-08-24 17:56:35', '0000-00-00 00:00:00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES ('13', '2018-19', 'no', '2016-08-24 17:56:44', '0000-00-00 00:00:00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES ('14', '2019-20', 'no', '2016-08-24 17:56:55', '0000-00-00 00:00:00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES ('15', '2020-21', 'no', '2016-10-01 03:58:08', '0000-00-00 00:00:00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES ('16', '2021-22', 'no', '2016-10-01 03:58:20', '0000-00-00 00:00:00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES ('18', '2022-23', 'no', '2016-10-01 03:59:02', '0000-00-00 00:00:00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES ('19', '2023-24', 'no', '2016-10-01 03:59:10', '0000-00-00 00:00:00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES ('20', '2024-25', 'no', '2016-10-01 03:59:18', '0000-00-00 00:00:00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES ('21', '2025-26', 'no', '2016-10-01 04:00:10', '0000-00-00 00:00:00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES ('22', '2026-27', 'no', '2016-10-01 04:00:18', '0000-00-00 00:00:00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES ('23', '2027-28', 'no', '2016-10-01 04:00:24', '0000-00-00 00:00:00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES ('24', '2028-29', 'no', '2016-10-01 04:00:30', '0000-00-00 00:00:00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES ('25', '2029-30', 'no', '2016-10-01 04:00:37', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: sms_config
#

DROP TABLE IF EXISTS `sms_config`;

CREATE TABLE `sms_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `api_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact` text COLLATE utf8_unicode_ci,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'disabled',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: student_attendences
#

DROP TABLE IF EXISTS `student_attendences`;

CREATE TABLE `student_attendences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `attendence_type_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `student_session_id` (`student_session_id`),
  KEY `attendence_type_id` (`attendence_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `student_attendences` (`id`, `student_session_id`, `date`, `attendence_type_id`, `is_active`, `created_at`, `updated_at`) VALUES ('1', '1', '2017-04-01', '1', 'no', '2017-05-08 08:59:45', '0000-00-00 00:00:00');
INSERT INTO `student_attendences` (`id`, `student_session_id`, `date`, `attendence_type_id`, `is_active`, `created_at`, `updated_at`) VALUES ('2', '2', '2017-04-01', '1', 'no', '2017-05-08 08:59:45', '0000-00-00 00:00:00');
INSERT INTO `student_attendences` (`id`, `student_session_id`, `date`, `attendence_type_id`, `is_active`, `created_at`, `updated_at`) VALUES ('3', '1', '2017-09-18', '1', 'no', '2017-09-18 05:22:08', '0000-00-00 00:00:00');
INSERT INTO `student_attendences` (`id`, `student_session_id`, `date`, `attendence_type_id`, `is_active`, `created_at`, `updated_at`) VALUES ('4', '2', '2017-09-18', '1', 'no', '2017-09-18 05:22:08', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: student_doc
#

DROP TABLE IF EXISTS `student_doc`;

CREATE TABLE `student_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `doc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: student_fees
#

DROP TABLE IF EXISTS `student_fees`;

CREATE TABLE `student_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) DEFAULT NULL,
  `feemaster_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `amount_paid` float(10,2) DEFAULT NULL,
  `amount_discount` float(10,2) NOT NULL,
  `amount_fine` float(10,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8_unicode_ci,
  `date` date DEFAULT '0000-00-00',
  `payment_mode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `student_fees` (`id`, `student_session_id`, `feemaster_id`, `amount`, `amount_paid`, `amount_discount`, `amount_fine`, `description`, `date`, `payment_mode`, `is_active`, `created_at`, `updated_at`) VALUES ('1', '1', '18', '500.00', '500.00', '0.00', '0.00', '', '2017-09-07', 'Cash', 'no', '2017-09-07 10:18:23', '0000-00-00 00:00:00');
INSERT INTO `student_fees` (`id`, `student_session_id`, `feemaster_id`, `amount`, `amount_paid`, `amount_discount`, `amount_fine`, `description`, `date`, `payment_mode`, `is_active`, `created_at`, `updated_at`) VALUES ('13', '1', '21', '600.00', '500.00', '0.00', '0.00', '', '2017-09-07', 'Cash', 'no', '2017-09-07 10:55:56', '0000-00-00 00:00:00');
INSERT INTO `student_fees` (`id`, `student_session_id`, `feemaster_id`, `amount`, `amount_paid`, `amount_discount`, `amount_fine`, `description`, `date`, `payment_mode`, `is_active`, `created_at`, `updated_at`) VALUES ('14', '1', '20', '200.00', '200.00', '0.00', '0.00', '', '2017-09-07', 'Cash', 'no', '2017-09-07 10:53:40', '0000-00-00 00:00:00');
INSERT INTO `student_fees` (`id`, `student_session_id`, `feemaster_id`, `amount`, `amount_paid`, `amount_discount`, `amount_fine`, `description`, `date`, `payment_mode`, `is_active`, `created_at`, `updated_at`) VALUES ('16', '1', '23', '300.00', '300.00', '0.00', '0.00', '', '2017-09-07', 'Cash', 'no', '2017-09-07 10:54:07', '0000-00-00 00:00:00');
INSERT INTO `student_fees` (`id`, `student_session_id`, `feemaster_id`, `amount`, `amount_paid`, `amount_discount`, `amount_fine`, `description`, `date`, `payment_mode`, `is_active`, `created_at`, `updated_at`) VALUES ('20', '2', '19', '300.00', '300.00', '0.00', '0.00', '', '2017-09-19', 'Cash', 'no', '2017-09-18 22:36:07', '0000-00-00 00:00:00');
INSERT INTO `student_fees` (`id`, `student_session_id`, `feemaster_id`, `amount`, `amount_paid`, `amount_discount`, `amount_fine`, `description`, `date`, `payment_mode`, `is_active`, `created_at`, `updated_at`) VALUES ('21', '2', '27', '0.00', '0.00', '0.00', '0.00', '', '2017-09-19', 'Cash', 'no', '2017-09-18 23:07:05', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: student_session
#

DROP TABLE IF EXISTS `student_session`;

CREATE TABLE `student_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `route_id` int(11) NOT NULL,
  `vehroute_id` int(10) DEFAULT NULL,
  `transport_fees` float(10,2) NOT NULL DEFAULT '0.00',
  `fees_discount` float(10,2) NOT NULL DEFAULT '0.00',
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES ('1', '12', '1', '1', '1', '0', '1', '1200.00', '0.00', 'no', '2017-09-18 23:11:01', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES ('2', '12', '2', '1', '1', '0', '2', '2400.00', '0.00', 'no', '2017-09-18 23:11:11', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: student_sibling
#

DROP TABLE IF EXISTS `student_sibling`;

CREATE TABLE `student_sibling` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `sibling_student_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: student_transport_fees
#

DROP TABLE IF EXISTS `student_transport_fees`;

CREATE TABLE `student_transport_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `amount_discount` float(10,2) NOT NULL,
  `amount_fine` float(10,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8_unicode_ci,
  `date` date DEFAULT '0000-00-00',
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `payment_mode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Month` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Year` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `student_transport_fees` (`id`, `student_session_id`, `amount`, `amount_discount`, `amount_fine`, `description`, `date`, `is_active`, `payment_mode`, `created_at`, `updated_at`, `Month`, `Year`) VALUES ('7', '1', '100.00', '0.00', '0.00', '', '2017-09-19', 'no', 'Cash', '2017-09-19 00:13:25', '0000-00-00 00:00:00', '1', '2017');
INSERT INTO `student_transport_fees` (`id`, `student_session_id`, `amount`, `amount_discount`, `amount_fine`, `description`, `date`, `is_active`, `payment_mode`, `created_at`, `updated_at`, `Month`, `Year`) VALUES ('15', '2', '200.00', '0.00', '0.00', '', '2017-09-19', 'no', 'Cash', '2017-09-19 00:13:41', '0000-00-00 00:00:00', '2', '2017');
INSERT INTO `student_transport_fees` (`id`, `student_session_id`, `amount`, `amount_discount`, `amount_fine`, `description`, `date`, `is_active`, `payment_mode`, `created_at`, `updated_at`, `Month`, `Year`) VALUES ('16', '2', '200.00', '0.00', '0.00', '', '2017-09-19', 'no', 'Cash', '2017-09-19 00:13:44', '0000-00-00 00:00:00', '3', '2017');
INSERT INTO `student_transport_fees` (`id`, `student_session_id`, `amount`, `amount_discount`, `amount_fine`, `description`, `date`, `is_active`, `payment_mode`, `created_at`, `updated_at`, `Month`, `Year`) VALUES ('17', '2', '200.00', '0.00', '0.00', '', '2017-09-19', 'no', 'Cash', '2017-09-19 00:13:46', '0000-00-00 00:00:00', '4', '2017');
INSERT INTO `student_transport_fees` (`id`, `student_session_id`, `amount`, `amount_discount`, `amount_fine`, `description`, `date`, `is_active`, `payment_mode`, `created_at`, `updated_at`, `Month`, `Year`) VALUES ('18', '2', '200.00', '0.00', '0.00', '', '2017-09-19', 'no', 'Cash', '2017-09-19 00:07:11', '0000-00-00 00:00:00', '5', '2017');
INSERT INTO `student_transport_fees` (`id`, `student_session_id`, `amount`, `amount_discount`, `amount_fine`, `description`, `date`, `is_active`, `payment_mode`, `created_at`, `updated_at`, `Month`, `Year`) VALUES ('20', '2', '100.00', '0.00', '0.00', '', '2017-09-19', 'no', 'Cash', '2017-09-19 01:01:58', '0000-00-00 00:00:00', '1', '2017');
INSERT INTO `student_transport_fees` (`id`, `student_session_id`, `amount`, `amount_discount`, `amount_fine`, `description`, `date`, `is_active`, `payment_mode`, `created_at`, `updated_at`, `Month`, `Year`) VALUES ('21', '2', '100.00', '0.00', '0.00', '', '2017-09-19', 'no', 'Cash', '2017-09-19 01:25:24', '0000-00-00 00:00:00', '1', '2017');


#
# TABLE STRUCTURE FOR: students
#

DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admission_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `roll_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admission_date` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rte` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobileno` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pincode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `religion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cast` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_address` text COLLATE utf8_unicode_ci,
  `permanent_address` text COLLATE utf8_unicode_ci,
  `category_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adhar_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `samagra_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_account_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ifsc_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_is` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `father_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_occupation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_relation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_occupation` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `guardian_address` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `previous_school` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES ('1', '1', '1', '2017-05-08', 'Deependra', 'Singh', 'No', 'uploads/student_images/no_image.png', '1234567890', '', NULL, NULL, NULL, '', '', '1999-02-02', 'Male', '', '', '', '', '', '', '', '', 'father', 'ASdsa', '', '', 'fdsfsdf', '', '', 'ASdsa', 'Father', '1234567890', '', '', 'no', '', '2017-05-08 08:58:19', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES ('2', '1', '1', '2017-05-08', 'Raman', 'Singh', 'No', 'uploads/student_images/no_image.png', '1234567890', '', NULL, NULL, NULL, '', '', '1999-02-02', 'Male', 'Ajmer', '', '', '', '', '', '', '', 'father', 'oiuoiuoi', '', '', 'jkjnkjnkj', '', '', 'ASdsa', 'Father', '1234567890', '', '', 'no', '', '2017-05-08 09:00:57', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: subjects
#

DROP TABLE IF EXISTS `subjects`;

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES ('1', 'Hindi', 'hindi', 'Theory', 'no', '2017-04-25 20:22:29', '0000-00-00 00:00:00');
INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES ('2', 'English', 'english', 'Theory', 'no', '2017-04-25 20:22:45', '0000-00-00 00:00:00');
INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES ('3', 'Science', 'science', 'Theory', 'no', '2017-04-25 20:23:18', '0000-00-00 00:00:00');
INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES ('4', 'Social Science', 'ssc', 'Theory', 'no', '2017-04-25 20:23:58', '0000-00-00 00:00:00');
INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES ('5', 'Mathematics', 'maths', 'Theory', 'no', '2017-04-25 20:24:16', '0000-00-00 00:00:00');
INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES ('6', 'Sanskrit/Urdu', 'third_lang', 'Theory', 'no', '2017-04-25 23:31:43', '0000-00-00 00:00:00');
INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES ('8', 'Computer', 'computer', 'Theory', 'no', '2017-04-30 01:31:30', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: teacher_subjects
#

DROP TABLE IF EXISTS `teacher_subjects`;

CREATE TABLE `teacher_subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `class_section_id` (`class_section_id`),
  KEY `session_id` (`session_id`),
  KEY `subject_id` (`subject_id`),
  KEY `teacher_id` (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `teacher_subjects` (`id`, `session_id`, `class_section_id`, `subject_id`, `teacher_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('1', '12', '1', '1', '1', NULL, 'no', '2017-05-08 08:19:26', '0000-00-00 00:00:00');
INSERT INTO `teacher_subjects` (`id`, `session_id`, `class_section_id`, `subject_id`, `teacher_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('2', '12', '1', '2', '1', NULL, 'no', '2017-05-08 08:19:26', '0000-00-00 00:00:00');
INSERT INTO `teacher_subjects` (`id`, `session_id`, `class_section_id`, `subject_id`, `teacher_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('3', '12', '1', '6', '1', NULL, 'no', '2017-05-08 08:19:26', '0000-00-00 00:00:00');
INSERT INTO `teacher_subjects` (`id`, `session_id`, `class_section_id`, `subject_id`, `teacher_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('4', '12', '1', '4', '1', NULL, 'no', '2017-05-08 08:19:26', '0000-00-00 00:00:00');
INSERT INTO `teacher_subjects` (`id`, `session_id`, `class_section_id`, `subject_id`, `teacher_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('5', '12', '1', '5', '1', NULL, 'no', '2017-05-08 08:19:26', '0000-00-00 00:00:00');
INSERT INTO `teacher_subjects` (`id`, `session_id`, `class_section_id`, `subject_id`, `teacher_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('8', '12', '1', '3', '1', NULL, 'no', '2017-05-08 10:02:13', '0000-00-00 00:00:00');
INSERT INTO `teacher_subjects` (`id`, `session_id`, `class_section_id`, `subject_id`, `teacher_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('10', '12', '1', '8', '1', NULL, 'no', '2017-05-08 10:02:45', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: teachers
#

DROP TABLE IF EXISTS `teachers`;

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `dob` date DEFAULT NULL,
  `designation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: timetables
#

DROP TABLE IF EXISTS `timetables`;

CREATE TABLE `timetables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_subject_id` int(20) DEFAULT NULL,
  `day_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_time` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_time` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: transport_route
#

DROP TABLE IF EXISTS `transport_route`;

CREATE TABLE `transport_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_vehicle` int(11) DEFAULT NULL,
  `fare` float(10,2) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `transport_route` (`id`, `route_title`, `no_of_vehicle`, `fare`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('1', 'Test1', NULL, '1200.00', NULL, 'no', '2017-09-18 23:08:54', '0000-00-00 00:00:00');
INSERT INTO `transport_route` (`id`, `route_title`, `no_of_vehicle`, `fare`, `note`, `is_active`, `created_at`, `updated_at`) VALUES ('2', 'Test2', NULL, '2400.00', NULL, 'no', '2017-09-18 23:09:06', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `childs` text COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `is_active`, `created_at`, `updated_at`) VALUES ('1', '1', 'teacher1', 'fvweyb', '', 'teacher', 'yes', '2017-05-08 08:18:15', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `is_active`, `created_at`, `updated_at`) VALUES ('2', '1', 'std1', 'klhr6m', '', 'student', 'yes', '2017-05-08 08:58:19', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `is_active`, `created_at`, `updated_at`) VALUES ('3', '1', 'parent1', '8c8b6r', '1', 'parent', 'yes', '2017-05-08 08:58:19', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `is_active`, `created_at`, `updated_at`) VALUES ('4', '2', 'std2', '3i1l66', '', 'student', 'yes', '2017-05-08 08:59:09', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `is_active`, `created_at`, `updated_at`) VALUES ('5', '2', 'parent2', '5oe7eo', '2', 'parent', 'yes', '2017-05-08 08:59:09', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: vehicle_routes
#

DROP TABLE IF EXISTS `vehicle_routes`;

CREATE TABLE `vehicle_routes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `route_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `vehicle_routes` (`id`, `route_id`, `vehicle_id`, `created_at`) VALUES ('1', '1', '1', '2017-09-18 11:34:36');
INSERT INTO `vehicle_routes` (`id`, `route_id`, `vehicle_id`, `created_at`) VALUES ('2', '2', '2', '2017-09-18 22:10:18');


#
# TABLE STRUCTURE FOR: vehicles
#

DROP TABLE IF EXISTS `vehicles`;

CREATE TABLE `vehicles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vehicle_no` varchar(20) DEFAULT NULL,
  `vehicle_model` varchar(100) NOT NULL DEFAULT 'None',
  `manufacture_year` varchar(4) DEFAULT NULL,
  `driver_name` varchar(50) DEFAULT NULL,
  `driver_licence` varchar(50) NOT NULL DEFAULT 'None',
  `driver_contact` varchar(20) DEFAULT NULL,
  `note` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `vehicles` (`id`, `vehicle_no`, `vehicle_model`, `manufacture_year`, `driver_name`, `driver_licence`, `driver_contact`, `note`, `created_at`) VALUES ('1', '1122', '45568', '2015', 'Sonu', 'vt5556', '79797979', '', '2017-09-18 11:33:21');
INSERT INTO `vehicles` (`id`, `vehicle_no`, `vehicle_model`, `manufacture_year`, `driver_name`, `driver_licence`, `driver_contact`, `note`, `created_at`) VALUES ('2', '123', '13212', '2016', 'test', 'lll', '7894563210', 'shusjd', '2017-09-18 22:10:08');


