-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2020 at 11:33 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `djangoschool`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add non teacher', 7, 'add_nonteacher'),
(26, 'Can change non teacher', 7, 'change_nonteacher'),
(27, 'Can delete non teacher', 7, 'delete_nonteacher'),
(28, 'Can view non teacher', 7, 'view_nonteacher'),
(29, 'Can add student', 8, 'add_student'),
(30, 'Can change student', 8, 'change_student'),
(31, 'Can delete student', 8, 'delete_student'),
(32, 'Can view student', 8, 'view_student'),
(33, 'Can add parent', 9, 'add_parent'),
(34, 'Can change parent', 9, 'change_parent'),
(35, 'Can delete parent', 9, 'delete_parent'),
(36, 'Can view parent', 9, 'view_parent'),
(37, 'Can add course', 10, 'add_course'),
(38, 'Can change course', 10, 'change_course'),
(39, 'Can delete course', 10, 'delete_course'),
(40, 'Can view course', 10, 'view_course'),
(41, 'Can add teacher', 11, 'add_teacher'),
(42, 'Can change teacher', 11, 'change_teacher'),
(43, 'Can delete teacher', 11, 'delete_teacher'),
(44, 'Can view teacher', 11, 'view_teacher'),
(45, 'Can add fees', 12, 'add_fees'),
(46, 'Can change fees', 12, 'change_fees'),
(47, 'Can delete fees', 12, 'delete_fees'),
(48, 'Can view fees', 12, 'view_fees');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$jALGISgBLcuG$/g6j4Pj35viZa17JMJr0gl5LTAybIwbe9zf2NhXfSBs=', '2020-05-14 21:25:31.925080', 1, 'MAXWELL', '', '', 'maxwellsarpong07@gmail.com', 1, 1, '2020-04-21 07:53:49.093904');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-04-21 09:34:55.172562', '1', 'MAXWELL', 1, '[{\"added\": {}}]', 8, 1),
(2, '2020-04-21 09:35:54.297487', '1', 'MAXWELL', 1, '[{\"added\": {}}]', 7, 1),
(3, '2020-04-21 09:36:23.211125', '1', 'MAXWELL', 1, '[{\"added\": {}}]', 9, 1),
(4, '2020-04-21 09:37:42.671162', '1', 'MAXWELL', 1, '[{\"added\": {}}]', 11, 1),
(5, '2020-04-21 09:38:34.161976', '1', 'PROGRAMMING', 1, '[{\"added\": {}}]', 10, 1),
(6, '2020-04-22 14:43:08.231534', '1', 'MAXWELL', 1, '[{\"added\": {}}]', 12, 1),
(7, '2020-04-22 14:44:03.541936', '1', 'MAXWELL', 3, '', 8, 1),
(8, '2020-04-22 14:45:01.371288', '2', 'JEROME', 1, '[{\"added\": {}}]', 8, 1),
(9, '2020-04-22 14:45:33.973403', '3', 'CLAUDE', 1, '[{\"added\": {}}]', 8, 1),
(10, '2020-04-22 14:46:01.453243', '4', 'JAMES', 1, '[{\"added\": {}}]', 8, 1),
(11, '2020-04-22 14:48:02.274305', '2', 'JEROME', 1, '[{\"added\": {}}]', 12, 1),
(12, '2020-04-22 14:49:20.762047', '2', 'AKU', 1, '[{\"added\": {}}]', 9, 1),
(13, '2020-04-22 15:31:55.651316', '4', 'MAXWELL', 1, '[{\"added\": {}}]', 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'school', 'course'),
(12, 'school', 'fees'),
(7, 'school', 'nonteacher'),
(9, 'school', 'parent'),
(8, 'school', 'student'),
(11, 'school', 'teacher'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-04-21 07:49:53.346643'),
(2, 'auth', '0001_initial', '2020-04-21 07:49:57.660008'),
(3, 'admin', '0001_initial', '2020-04-21 07:50:23.390935'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-04-21 07:50:33.724431'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-04-21 07:50:33.833799'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-04-21 07:50:39.262389'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-04-21 07:50:40.915449'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-04-21 07:50:42.289999'),
(9, 'auth', '0004_alter_user_username_opts', '2020-04-21 07:50:42.399343'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-04-21 07:50:43.272669'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-04-21 07:50:43.335168'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-04-21 07:50:43.413264'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-04-21 07:50:44.916985'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-04-21 07:50:46.563775'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-04-21 07:50:49.202501'),
(16, 'auth', '0011_update_proxy_permissions', '2020-04-21 07:50:49.374340'),
(17, 'sessions', '0001_initial', '2020-04-21 07:50:50.718047'),
(18, 'school', '0001_initial', '2020-04-21 08:59:10.458435'),
(19, 'school', '0002_auto_20200421_0903', '2020-04-21 09:03:43.518852'),
(20, 'school', '0003_auto_20200421_0910', '2020-04-21 09:11:03.893232'),
(21, 'school', '0004_auto_20200421_0933', '2020-04-21 09:34:07.000260'),
(22, 'school', '0005_fees', '2020-04-22 14:38:37.923012'),
(23, 'school', '0006_auto_20200424_1658', '2020-04-24 16:58:32.278007'),
(24, 'school', '0007_auto_20200514_2033', '2020-05-14 20:33:29.993880');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0ao2h8y5qvpyp1va5co8jn2swqs970yg', 'OWMxYTExNWE4NzM3ZmVlNjI4YjU2ZmFhNTY4NjkxMTg3NzU0OGMyYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YTZlZDQ1MmJmMTliNGM1NWFjNWQzMDFmY2NjYTY4YWJiMDFmMWNjIn0=', '2020-05-08 19:57:33.820341'),
('3ehny94lnfsi9lbth6d5bum2xui0bi2s', 'OWMxYTExNWE4NzM3ZmVlNjI4YjU2ZmFhNTY4NjkxMTg3NzU0OGMyYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YTZlZDQ1MmJmMTliNGM1NWFjNWQzMDFmY2NjYTY4YWJiMDFmMWNjIn0=', '2020-05-28 20:12:34.341784'),
('ft1ccq1cdfgu8fvjs71imwwhlawmwbp0', 'OWMxYTExNWE4NzM3ZmVlNjI4YjU2ZmFhNTY4NjkxMTg3NzU0OGMyYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YTZlZDQ1MmJmMTliNGM1NWFjNWQzMDFmY2NjYTY4YWJiMDFmMWNjIn0=', '2020-05-28 21:25:31.992039'),
('j8sk9gxllms0nkirlyphv8krb8njhr8l', 'OWMxYTExNWE4NzM3ZmVlNjI4YjU2ZmFhNTY4NjkxMTg3NzU0OGMyYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YTZlZDQ1MmJmMTliNGM1NWFjNWQzMDFmY2NjYTY4YWJiMDFmMWNjIn0=', '2020-05-08 13:24:08.067103'),
('js2s7mwmo3zkkrubazlo50bqfeudnvqz', 'OWMxYTExNWE4NzM3ZmVlNjI4YjU2ZmFhNTY4NjkxMTg3NzU0OGMyYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YTZlZDQ1MmJmMTliNGM1NWFjNWQzMDFmY2NjYTY4YWJiMDFmMWNjIn0=', '2020-05-06 10:42:00.721248'),
('o4nkd8lfpznok0n9134573pkqcqft7mv', 'OWMxYTExNWE4NzM3ZmVlNjI4YjU2ZmFhNTY4NjkxMTg3NzU0OGMyYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YTZlZDQ1MmJmMTliNGM1NWFjNWQzMDFmY2NjYTY4YWJiMDFmMWNjIn0=', '2020-05-06 20:11:45.685775'),
('zsz7ogaskbo8otyrt2teesakgx00t680', 'OWMxYTExNWE4NzM3ZmVlNjI4YjU2ZmFhNTY4NjkxMTg3NzU0OGMyYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YTZlZDQ1MmJmMTliNGM1NWFjNWQzMDFmY2NjYTY4YWJiMDFmMWNjIn0=', '2020-05-26 17:28:50.803982');

-- --------------------------------------------------------

--
-- Table structure for table `school_course`
--

CREATE TABLE `school_course` (
  `id` int(11) NOT NULL,
  `c_name` varchar(200) NOT NULL,
  `c_duration` varchar(20) NOT NULL,
  `teach_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_course`
--

INSERT INTO `school_course` (`id`, `c_name`, `c_duration`, `teach_id`) VALUES
(1, 'PROGRAMMING', '3 Hours', 1);

-- --------------------------------------------------------

--
-- Table structure for table `school_fees`
--

CREATE TABLE `school_fees` (
  `id` int(11) NOT NULL,
  `f_fname` varchar(200) NOT NULL,
  `f_lname` varchar(200) NOT NULL,
  `f_class` varchar(50) NOT NULL,
  `f_amt` int(11) NOT NULL,
  `f_stu_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_fees`
--

INSERT INTO `school_fees` (`id`, `f_fname`, `f_lname`, `f_class`, `f_amt`, `f_stu_id_id`) VALUES
(2, 'JEROME', 'JENKINGS', 'JHS 3', 100, 2),
(4, 'MAXWELL', 'SARPONG', 'Primary 6', 88888, 2);

-- --------------------------------------------------------

--
-- Table structure for table `school_nonteacher`
--

CREATE TABLE `school_nonteacher` (
  `id` int(11) NOT NULL,
  `n_fname` varchar(200) NOT NULL,
  `n_lname` varchar(200) NOT NULL,
  `n_position` varchar(200) NOT NULL,
  `n_email` varchar(200) NOT NULL,
  `n_salary` int(11) NOT NULL,
  `n_datejoined` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_nonteacher`
--

INSERT INTO `school_nonteacher` (`id`, `n_fname`, `n_lname`, `n_position`, `n_email`, `n_salary`, `n_datejoined`) VALUES
(1, 'MAXWELL', 'SARPONG', 'CHIEF DATA ANALYSIS', 'maxwellsarpong07@gmail.com', 6000, '2020-04-01');

-- --------------------------------------------------------

--
-- Table structure for table `school_parent`
--

CREATE TABLE `school_parent` (
  `id` int(11) NOT NULL,
  `p_fname` varchar(200) NOT NULL,
  `p_lname` varchar(200) NOT NULL,
  `p_contact` int(11) NOT NULL,
  `p_email` varchar(200) NOT NULL,
  `stu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_parent`
--

INSERT INTO `school_parent` (`id`, `p_fname`, `p_lname`, `p_contact`, `p_email`, `stu_id`) VALUES
(2, 'AKU', 'MORRISON', 208502588, 'maxwellsarpong07@gmail.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `school_student`
--

CREATE TABLE `school_student` (
  `id` int(11) NOT NULL,
  `s_fname` varchar(200) NOT NULL,
  `s_lname` varchar(200) NOT NULL,
  `s_bdate` date NOT NULL,
  `s_class` varchar(100) NOT NULL,
  `s_datejoined` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_student`
--

INSERT INTO `school_student` (`id`, `s_fname`, `s_lname`, `s_bdate`, `s_class`, `s_datejoined`) VALUES
(2, 'JEROME', 'JENKINGS', '2020-04-05', 'PRIMARY 6', '2020-04-01'),
(3, 'CLAUDE', 'DOE', '2020-04-05', 'JHS 3', '2020-04-01'),
(4, 'JAMES', 'AKRONG', '2020-04-05', 'JHS 2', '2020-04-01');

-- --------------------------------------------------------

--
-- Table structure for table `school_teacher`
--

CREATE TABLE `school_teacher` (
  `id` int(11) NOT NULL,
  `t_fname` varchar(200) NOT NULL,
  `t_lname` varchar(200) NOT NULL,
  `t_course` varchar(200) NOT NULL,
  `t_position` varchar(200) NOT NULL,
  `t_email` varchar(200) NOT NULL,
  `t_salary` int(11) NOT NULL,
  `t_datejoined` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_teacher`
--

INSERT INTO `school_teacher` (`id`, `t_fname`, `t_lname`, `t_course`, `t_position`, `t_email`, `t_salary`, `t_datejoined`) VALUES
(1, 'MAXWELL', 'SARPONG', 'Mathematics', 'Headmaster', 'maxwellsarpong07@gmail.com', 6000, '2020-04-07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `school_course`
--
ALTER TABLE `school_course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_course_teach_id_b11cc035_fk_school_teacher_id` (`teach_id`);

--
-- Indexes for table `school_fees`
--
ALTER TABLE `school_fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_fees_f_stu_id_id_e140037e_fk_school_student_id` (`f_stu_id_id`);

--
-- Indexes for table `school_nonteacher`
--
ALTER TABLE `school_nonteacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_parent`
--
ALTER TABLE `school_parent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_parent_stu_id_3375b80d_fk_school_student_id` (`stu_id`);

--
-- Indexes for table `school_student`
--
ALTER TABLE `school_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_teacher`
--
ALTER TABLE `school_teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `school_course`
--
ALTER TABLE `school_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `school_fees`
--
ALTER TABLE `school_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `school_nonteacher`
--
ALTER TABLE `school_nonteacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `school_parent`
--
ALTER TABLE `school_parent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `school_student`
--
ALTER TABLE `school_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `school_teacher`
--
ALTER TABLE `school_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `school_course`
--
ALTER TABLE `school_course`
  ADD CONSTRAINT `school_course_teach_id_b11cc035_fk_school_teacher_id` FOREIGN KEY (`teach_id`) REFERENCES `school_teacher` (`id`);

--
-- Constraints for table `school_fees`
--
ALTER TABLE `school_fees`
  ADD CONSTRAINT `school_fees_f_stu_id_id_e140037e_fk_school_student_id` FOREIGN KEY (`f_stu_id_id`) REFERENCES `school_student` (`id`);

--
-- Constraints for table `school_parent`
--
ALTER TABLE `school_parent`
  ADD CONSTRAINT `school_parent_stu_id_3375b80d_fk_school_student_id` FOREIGN KEY (`stu_id`) REFERENCES `school_student` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
