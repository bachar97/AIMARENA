-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2021 at 10:32 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aimarena`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_actions`
--

CREATE TABLE `admin_actions` (
  `id` int(11) NOT NULL,
  `user_kick_forum` tinyint(1) NOT NULL,
  `user_ban_forum` tinyint(1) NOT NULL,
  `user_ban_game` tinyint(1) NOT NULL,
  `user_id_id` int(11) NOT NULL,
  `create_appeal` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_actions`
--

INSERT INTO `admin_actions` (`id`, `user_kick_forum`, `user_ban_forum`, `user_ban_game`, `user_id_id`, `create_appeal`) VALUES
(1, 1, 0, 0, 14, 0),
(2, 1, 0, 0, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `authapp_usersession`
--

CREATE TABLE `authapp_usersession` (
  `id` int(11) NOT NULL,
  `session_id` varchar(40) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authapp_usersession`
--

INSERT INTO `authapp_usersession` (`id`, `session_id`, `user_id`) VALUES
(34, '1qvzml4szi2w03tutgil5fi9bbp3i63x', 18),
(39, 'gjtin89j6p6845vgrkmi8x09an829ppy', 19);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add pages', 1, 'add_pages'),
(2, 'Can change pages', 1, 'change_pages'),
(3, 'Can delete pages', 1, 'delete_pages'),
(4, 'Can view pages', 1, 'view_pages'),
(5, 'Can add userreg', 2, 'add_userreg'),
(6, 'Can change userreg', 2, 'change_userreg'),
(7, 'Can delete userreg', 2, 'delete_userreg'),
(8, 'Can view userreg', 2, 'view_userreg'),
(9, 'Can add user roles', 3, 'add_userroles'),
(10, 'Can change user roles', 3, 'change_userroles'),
(11, 'Can delete user roles', 3, 'delete_userroles'),
(12, 'Can view user roles', 3, 'view_userroles'),
(13, 'Can add user session', 4, 'add_usersession'),
(14, 'Can change user session', 4, 'change_usersession'),
(15, 'Can delete user session', 4, 'delete_usersession'),
(16, 'Can view user session', 4, 'view_usersession'),
(17, 'Can add role_permissions', 5, 'add_role_permissions'),
(18, 'Can change role_permissions', 5, 'change_role_permissions'),
(19, 'Can delete role_permissions', 5, 'delete_role_permissions'),
(20, 'Can view role_permissions', 5, 'view_role_permissions'),
(21, 'Can add login_details', 6, 'add_login_details'),
(22, 'Can change login_details', 6, 'change_login_details'),
(23, 'Can delete login_details', 6, 'delete_login_details'),
(24, 'Can view login_details', 6, 'view_login_details'),
(25, 'Can add banfromgame', 7, 'add_banfromgame'),
(26, 'Can change banfromgame', 7, 'change_banfromgame'),
(27, 'Can delete banfromgame', 7, 'delete_banfromgame'),
(28, 'Can view banfromgame', 7, 'view_banfromgame'),
(29, 'Can add banfromforum', 8, 'add_banfromforum'),
(30, 'Can change banfromforum', 8, 'change_banfromforum'),
(31, 'Can delete banfromforum', 8, 'delete_banfromforum'),
(32, 'Can view banfromforum', 8, 'view_banfromforum'),
(33, 'Can add admin_actions', 9, 'add_admin_actions'),
(34, 'Can change admin_actions', 9, 'change_admin_actions'),
(35, 'Can delete admin_actions', 9, 'delete_admin_actions'),
(36, 'Can view admin_actions', 9, 'view_admin_actions'),
(37, 'Can add kickedfromwebsite', 10, 'add_kickedfromwebsite'),
(38, 'Can change kickedfromwebsite', 10, 'change_kickedfromwebsite'),
(39, 'Can delete kickedfromwebsite', 10, 'delete_kickedfromwebsite'),
(40, 'Can view kickedfromwebsite', 10, 'view_kickedfromwebsite'),
(41, 'Can add log entry', 11, 'add_logentry'),
(42, 'Can change log entry', 11, 'change_logentry'),
(43, 'Can delete log entry', 11, 'delete_logentry'),
(44, 'Can view log entry', 11, 'view_logentry'),
(45, 'Can add permission', 12, 'add_permission'),
(46, 'Can change permission', 12, 'change_permission'),
(47, 'Can delete permission', 12, 'delete_permission'),
(48, 'Can view permission', 12, 'view_permission'),
(49, 'Can add group', 13, 'add_group'),
(50, 'Can change group', 13, 'change_group'),
(51, 'Can delete group', 13, 'delete_group'),
(52, 'Can view group', 13, 'view_group'),
(53, 'Can add user', 14, 'add_user'),
(54, 'Can change user', 14, 'change_user'),
(55, 'Can delete user', 14, 'delete_user'),
(56, 'Can view user', 14, 'view_user'),
(57, 'Can add content type', 15, 'add_contenttype'),
(58, 'Can change content type', 15, 'change_contenttype'),
(59, 'Can delete content type', 15, 'delete_contenttype'),
(60, 'Can view content type', 15, 'view_contenttype'),
(61, 'Can add session', 16, 'add_session'),
(62, 'Can change session', 16, 'change_session'),
(63, 'Can delete session', 16, 'delete_session'),
(64, 'Can view session', 16, 'view_session'),
(65, 'Can add topic', 17, 'add_topic'),
(66, 'Can change topic', 17, 'change_topic'),
(67, 'Can delete topic', 17, 'delete_topic'),
(68, 'Can view topic', 17, 'view_topic'),
(69, 'Can add post', 18, 'add_post'),
(70, 'Can change post', 18, 'change_post'),
(71, 'Can delete post', 18, 'delete_post'),
(72, 'Can view post', 18, 'view_post'),
(73, 'Can add notification', 19, 'add_notification'),
(74, 'Can change notification', 19, 'change_notification'),
(75, 'Can delete notification', 19, 'delete_notification'),
(76, 'Can view notification', 19, 'view_notification'),
(77, 'Can add comment', 20, 'add_comment'),
(78, 'Can change comment', 20, 'change_comment'),
(79, 'Can delete comment', 20, 'delete_comment'),
(80, 'Can view comment', 20, 'view_comment'),
(81, 'Can add subtopic', 21, 'add_subtopic'),
(82, 'Can change subtopic', 21, 'change_subtopic'),
(83, 'Can delete subtopic', 21, 'delete_subtopic'),
(84, 'Can view subtopic', 21, 'view_subtopic'),
(85, 'Can add emaillogs', 22, 'add_emaillogs'),
(86, 'Can change emaillogs', 22, 'change_emaillogs'),
(87, 'Can delete emaillogs', 22, 'delete_emaillogs'),
(88, 'Can view emaillogs', 22, 'view_emaillogs'),
(89, 'Can add subtopiclatestposts', 23, 'add_subtopiclatestposts'),
(90, 'Can change subtopiclatestposts', 23, 'change_subtopiclatestposts'),
(91, 'Can delete subtopiclatestposts', 23, 'delete_subtopiclatestposts'),
(92, 'Can view subtopiclatestposts', 23, 'view_subtopiclatestposts'),
(93, 'Can add room', 24, 'add_room'),
(94, 'Can change room', 24, 'change_room'),
(95, 'Can delete room', 24, 'delete_room'),
(96, 'Can view room', 24, 'view_room'),
(97, 'Can add chat', 25, 'add_chat'),
(98, 'Can change chat', 25, 'change_chat'),
(99, 'Can delete chat', 25, 'delete_chat'),
(100, 'Can view chat', 25, 'view_chat'),
(101, 'Can add game', 26, 'add_game'),
(102, 'Can change game', 26, 'change_game'),
(103, 'Can delete game', 26, 'delete_game'),
(104, 'Can view game', 26, 'view_game'),
(105, 'Can add game_ mode', 27, 'add_game_mode'),
(106, 'Can change game_ mode', 27, 'change_game_mode'),
(107, 'Can delete game_ mode', 27, 'delete_game_mode'),
(108, 'Can view game_ mode', 27, 'view_game_mode'),
(109, 'Can add user_ info', 28, 'add_user_info'),
(110, 'Can change user_ info', 28, 'change_user_info'),
(111, 'Can delete user_ info', 28, 'delete_user_info'),
(112, 'Can view user_ info', 28, 'view_user_info'),
(113, 'Can add game_ statistics', 29, 'add_game_statistics'),
(114, 'Can change game_ statistics', 29, 'change_game_statistics'),
(115, 'Can delete game_ statistics', 29, 'delete_game_statistics'),
(116, 'Can view game_ statistics', 29, 'view_game_statistics'),
(117, 'Can add rank', 30, 'add_rank'),
(118, 'Can change rank', 30, 'change_rank'),
(119, 'Can delete rank', 30, 'delete_rank'),
(120, 'Can view rank', 30, 'view_rank'),
(121, 'Can add products', 31, 'add_products'),
(122, 'Can change products', 31, 'change_products'),
(123, 'Can delete products', 31, 'delete_products'),
(124, 'Can view products', 31, 'view_products'),
(125, 'Can add userproducts', 32, 'add_userproducts'),
(126, 'Can change userproducts', 32, 'change_userproducts'),
(127, 'Can delete userproducts', 32, 'delete_userproducts'),
(128, 'Can view userproducts', 32, 'view_userproducts'),
(129, 'Can add game mode_ user', 33, 'add_gamemode_user'),
(130, 'Can change game mode_ user', 33, 'change_gamemode_user'),
(131, 'Can delete game mode_ user', 33, 'delete_gamemode_user'),
(132, 'Can view game mode_ user', 33, 'view_gamemode_user'),
(133, 'Can add emailnews', 34, 'add_emailnews'),
(134, 'Can change emailnews', 34, 'change_emailnews'),
(135, 'Can delete emailnews', 34, 'delete_emailnews'),
(136, 'Can view emailnews', 34, 'view_emailnews'),
(137, 'Can add unsubscribefeedback', 35, 'add_unsubscribefeedback'),
(138, 'Can change unsubscribefeedback', 35, 'change_unsubscribefeedback'),
(139, 'Can delete unsubscribefeedback', 35, 'delete_unsubscribefeedback'),
(140, 'Can view unsubscribefeedback', 35, 'view_unsubscribefeedback'),
(141, 'Can add newsbanner', 36, 'add_newsbanner'),
(142, 'Can change newsbanner', 36, 'change_newsbanner'),
(143, 'Can delete newsbanner', 36, 'delete_newsbanner'),
(144, 'Can view newsbanner', 36, 'view_newsbanner');

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
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `banfromforum`
--

CREATE TABLE `banfromforum` (
  `id` int(11) NOT NULL,
  `Banned_until` datetime(6) NOT NULL,
  `Banned_time` datetime(6) NOT NULL,
  `user_id_id` int(11) NOT NULL,
  `banned_by_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `banfromgame`
--

CREATE TABLE `banfromgame` (
  `id` int(11) NOT NULL,
  `Banned_until` datetime(6) NOT NULL,
  `Banned_time` datetime(6) NOT NULL,
  `user_id_id` int(11) NOT NULL,
  `banned_by_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chat_chat`
--

CREATE TABLE `chat_chat` (
  `id` int(11) NOT NULL,
  `chat` varchar(5000) NOT NULL,
  `date_created` datetime(6) NOT NULL,
  `roomid_id` int(11) NOT NULL,
  `uid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat_chat`
--

INSERT INTO `chat_chat` (`id`, `chat`, `date_created`, `roomid_id`, `uid_id`) VALUES
(1, 'Yo', '2021-05-30 03:00:02.183894', 1, 18),
(2, '', '2021-05-30 03:00:03.983971', 1, 18),
(3, '', '2021-05-30 03:00:05.198977', 1, 18),
(4, '', '2021-05-30 03:01:01.902023', 1, 18),
(5, 'Still bad', '2021-05-30 03:02:33.096717', 1, 18),
(6, 'Hello everyone!', '2021-05-30 16:57:25.953614', 2, 19);

-- --------------------------------------------------------

--
-- Table structure for table `chat_room`
--

CREATE TABLE `chat_room` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat_room`
--

INSERT INTO `chat_room` (`id`, `name`) VALUES
(1, 'Staff'),
(2, 'My room');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `body` longtext NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `post_id` int(11) NOT NULL,
  `reply_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `body`, `date_added`, `post_id`, `reply_id`, `user_id`, `deleted`) VALUES
(1, 'Thank you for sharing this suggestion !', '2021-05-28 11:16:00.802302', 183, NULL, 2, 0),
(2, 'Thank you for sharing this suggestion ! That\'s a good idea ', '2021-05-28 11:16:43.469596', 184, NULL, 2, 0),
(3, 'I think you just need to be better, while they are hard to shoot, you need to play this game mode several times to get accustomed to it', '2021-05-28 11:33:46.505407', 189, NULL, 16, 0),
(4, 'you are right, I need to play it constantly', '2021-05-28 11:34:48.593172', 189, 3, 16, 1),
(5, 'yes its really a beautiful and well thought out website', '2021-05-28 11:35:21.093175', 188, NULL, 16, 0),
(6, 'you are right, i need to practice more', '2021-05-28 11:36:43.008877', 189, 3, 17, 0),
(7, 'Welcome to the forums!', '2021-05-28 18:30:52.360547', 188, 5, 18, 1),
(8, 'Welcome to the forums!', '2021-05-30 02:54:30.629656', 188, NULL, 18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(11, 'admin', 'logentry'),
(13, 'auth', 'group'),
(12, 'auth', 'permission'),
(14, 'auth', 'user'),
(9, 'authapp', 'admin_actions'),
(8, 'authapp', 'banfromforum'),
(7, 'authapp', 'banfromgame'),
(10, 'authapp', 'kickedfromwebsite'),
(6, 'authapp', 'login_details'),
(1, 'authapp', 'pages'),
(5, 'authapp', 'role_permissions'),
(2, 'authapp', 'userreg'),
(3, 'authapp', 'userroles'),
(4, 'authapp', 'usersession'),
(25, 'chat', 'chat'),
(24, 'chat', 'room'),
(15, 'contenttypes', 'contenttype'),
(20, 'forum', 'comment'),
(22, 'forum', 'emaillogs'),
(19, 'forum', 'notification'),
(18, 'forum', 'post'),
(21, 'forum', 'subtopic'),
(23, 'forum', 'subtopiclatestposts'),
(17, 'forum', 'topic'),
(34, 'home', 'emailnews'),
(36, 'home', 'newsbanner'),
(35, 'home', 'unsubscribefeedback'),
(26, 'nonmotiongame', 'game'),
(33, 'nonmotiongame', 'gamemode_user'),
(27, 'nonmotiongame', 'game_mode'),
(29, 'nonmotiongame', 'game_statistics'),
(31, 'nonmotiongame', 'products'),
(30, 'nonmotiongame', 'rank'),
(32, 'nonmotiongame', 'userproducts'),
(28, 'nonmotiongame', 'user_info'),
(16, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-05-28 16:57:55.501727'),
(2, 'auth', '0001_initial', '2021-05-28 16:57:55.827539'),
(3, 'admin', '0001_initial', '2021-05-28 16:57:55.915489'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-05-28 16:57:55.927482'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-05-28 16:57:55.939475'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-05-28 16:57:55.988447'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-05-28 16:57:56.029428'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-05-28 16:57:56.047441'),
(9, 'auth', '0004_alter_user_username_opts', '2021-05-28 16:57:56.059406'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-05-28 16:57:56.093387'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-05-28 16:57:56.097384'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-05-28 16:57:56.106379'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-05-28 16:57:56.128367'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-05-28 16:57:56.144363'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-05-28 16:57:56.161349'),
(16, 'auth', '0011_update_proxy_permissions', '2021-05-28 16:57:56.174342'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-05-28 16:57:56.191330'),
(18, 'sessions', '0001_initial', '2021-05-28 16:57:56.222312'),
(19, 'authapp', '0001_initial', '2021-05-28 16:57:56.675889'),
(20, 'authapp', '0002_kickedfromwebsite', '2021-05-28 16:57:56.730851'),
(21, 'authapp', '0003_auto_20210419_1453', '2021-05-28 16:57:56.818811'),
(22, 'authapp', '0004_kickedfromwebsite_kicked_by', '2021-05-28 16:57:56.863785'),
(23, 'authapp', '0005_auto_20210506_1635', '2021-05-28 16:57:56.917744'),
(24, 'chat', '0001_initial', '2021-05-28 16:57:57.016686'),
(25, 'forum', '0001_initial', '2021-05-28 16:57:57.531405'),
(26, 'forum', '0002_auto_20210408_2003', '2021-05-28 16:57:57.549412'),
(27, 'forum', '0003_comment_deleted', '2021-05-28 16:57:57.580364'),
(28, 'forum', '0004_auto_20210415_1307', '2021-05-28 16:57:57.653322'),
(29, 'forum', '0005_auto_20210415_1434', '2021-05-28 16:57:57.678309'),
(30, 'forum', '0006_auto_20210415_1441', '2021-05-28 16:57:57.695297'),
(31, 'forum', '0007_auto_20210415_1528', '2021-05-28 16:57:57.710289'),
(32, 'forum', '0008_subtopic_slug', '2021-05-28 16:57:57.749266'),
(33, 'forum', '0009_auto_20210415_1600', '2021-05-28 16:57:57.810232'),
(34, 'forum', '0010_remove_topic_slug', '2021-05-28 16:57:57.826221'),
(35, 'forum', '0011_auto_20210415_1608', '2021-05-28 16:57:57.850208'),
(36, 'forum', '0012_auto_20210415_1617', '2021-05-28 16:57:57.903178'),
(37, 'forum', '0013_auto_20210415_1622', '2021-05-28 16:57:57.948153'),
(38, 'forum', '0014_topic_is_visible', '2021-05-28 16:57:57.968141'),
(39, 'forum', '0015_topic_pinned_visible', '2021-05-28 16:57:57.989127'),
(40, 'forum', '0016_auto_20210415_2034', '2021-05-28 16:57:58.022834'),
(41, 'forum', '0017_auto_20210415_2144', '2021-05-28 16:57:58.074803'),
(42, 'forum', '0018_auto_20210416_1136', '2021-05-28 16:57:58.110783'),
(43, 'forum', '0019_auto_20210416_1137', '2021-05-28 16:57:58.257712'),
(44, 'forum', '0020_auto_20210416_1208', '2021-05-28 16:57:58.332666'),
(45, 'forum', '0021_auto_20210416_1506', '2021-05-28 16:57:58.349645'),
(46, 'forum', '0022_auto_20210416_1811', '2021-05-28 16:57:58.368636'),
(47, 'forum', '0023_auto_20210417_1347', '2021-05-28 16:57:58.411611'),
(48, 'forum', '0024_auto_20210417_1351', '2021-05-28 16:57:58.492565'),
(49, 'forum', '0025_auto_20210417_1355', '2021-05-28 16:57:58.539552'),
(50, 'forum', '0026_auto_20210417_1358', '2021-05-28 16:57:58.592507'),
(51, 'forum', '0027_auto_20210417_1436', '2021-05-28 16:57:58.611495'),
(52, 'forum', '0028_auto_20210417_1437', '2021-05-28 16:57:58.630484'),
(53, 'forum', '0029_auto_20210417_1442', '2021-05-28 16:57:58.647477'),
(54, 'forum', '0030_topic_is_visible', '2021-05-28 16:57:58.668462'),
(55, 'forum', '0031_topic_is_deleted', '2021-05-28 16:57:58.687453'),
(56, 'forum', '0032_auto_20210418_1819', '2021-05-28 16:57:58.695446'),
(57, 'forum', '0033_auto_20210418_1907', '2021-05-28 16:57:58.732426'),
(58, 'forum', '0034_emaillogs', '2021-05-28 16:57:58.795389'),
(59, 'forum', '0035_auto_20210420_2239', '2021-05-28 16:57:58.816392'),
(60, 'forum', '0036_auto_20210420_2258', '2021-05-28 16:57:58.875343'),
(61, 'forum', '0037_subtopiclatestposts', '2021-05-28 16:57:58.960294'),
(62, 'forum', '0038_post_post_views', '2021-05-28 16:57:58.988278'),
(63, 'forum', '0039_auto_20210513_1842', '2021-05-28 16:57:59.036250'),
(64, 'home', '0001_initial', '2021-05-28 16:57:59.148186'),
(65, 'home', '0002_newsbanner', '2021-05-28 16:57:59.215148'),
(66, 'nonmotiongame', '0001_initial', '2021-05-28 16:57:59.425562'),
(67, 'nonmotiongame', '0002_auto_20210419_2230', '2021-05-28 16:57:59.540497'),
(68, 'nonmotiongame', '0003_auto_20210419_2236', '2021-05-28 16:57:59.629446'),
(69, 'nonmotiongame', '0004_auto_20210419_2237', '2021-05-28 16:57:59.718395'),
(70, 'nonmotiongame', '0005_auto_20210419_2240', '2021-05-28 16:57:59.805344'),
(71, 'nonmotiongame', '0006_auto_20210420_1218', '2021-05-28 16:57:59.867309'),
(72, 'nonmotiongame', '0007_rank', '2021-05-28 16:57:59.893296'),
(73, 'nonmotiongame', '0008_user_info_rank', '2021-05-28 16:57:59.955258'),
(74, 'nonmotiongame', '0009_auto_20210420_2334', '2021-05-28 16:58:00.049203'),
(75, 'nonmotiongame', '0010_auto_20210420_2335', '2021-05-28 16:58:00.117166'),
(76, 'nonmotiongame', '0011_auto_20210420_2354', '2021-05-28 16:58:00.153146'),
(77, 'nonmotiongame', '0012_user_info_forumpoints', '2021-05-28 16:58:00.188125'),
(78, 'nonmotiongame', '0013_products_userproducts', '2021-05-28 16:58:00.294590'),
(79, 'nonmotiongame', '0014_products_product_image', '2021-05-28 16:58:00.316578'),
(80, 'nonmotiongame', '0015_products_product_price', '2021-05-28 16:58:00.339578'),
(81, 'nonmotiongame', '0016_auto_20210423_1251', '2021-05-28 16:58:00.376548'),
(82, 'nonmotiongame', '0017_products_product_spriteimage', '2021-05-28 16:58:00.394542'),
(83, 'nonmotiongame', '0018_products_is_deleted', '2021-05-28 16:58:00.414522'),
(84, 'nonmotiongame', '0019_auto_20210424_1550', '2021-05-28 16:58:00.629397');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1qvzml4szi2w03tutgil5fi9bbp3i63x', '.eJyrVgotTi3KS8xNVbJSSkpMzkgssjRX0lFyyywqLoEKO4GFgYI-iXCx4MSkokSgEEh3am5iZg5cezFIxiEjvwQkqpecnwtUVQpUlZmiZGVooaMUlJ8DNMAIwvCDmOaYkpuZp1QLAPKwLkE:1lnQb6:76WSupbfED4ZynfIQ67kuiIXB2qUgQmG5hQ4SPrNXx4', '2021-06-13 21:55:40.121185'),
('gjtin89j6p6845vgrkmi8x09an829ppy', '.eJyrVgotTi3KS8xNVbJSSkpMzkgsKkktLlHSUXLLLCougUo4gSWAgj6JcLHgxKSiRKAQSH9qbmJmDtwAvUS9YpCkQzpIWC85PxeorBSoLDNFycrQUkcpKD8HaIIhhOEHMQ5kjFItAIcyLyA:1lnd6w:FcvFELBE3syOd9U09tpqoct51GGehUAEh7DUHqyjozo', '2021-06-14 11:17:22.563745');

-- --------------------------------------------------------

--
-- Table structure for table `emaillogs`
--

CREATE TABLE `emaillogs` (
  `id` int(11) NOT NULL,
  `email_type` varchar(200) NOT NULL,
  `email_date` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email_message` varchar(200) DEFAULT NULL,
  `email_token` varchar(200) DEFAULT NULL,
  `email_url` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emaillogs`
--

INSERT INTO `emaillogs` (`id`, `email_type`, `email_date`, `user_id`, `email_message`, `email_token`, `email_url`) VALUES
(1, 'Automatic mail forgot password', '2021-05-30 21:04:33.394185', 19, 'Hi there, This email is sent for bachartest to reset the password of his account on AimArena. \nPlease press the link below to reset your password.\nhttp://127.0.0.1:8000/auth/set-new-password/MTk/anhbv', 'anhbvj-d75c3390ef77acea1208f6be2e9decbb', 'http://127.0.0.1:8000/auth/set-new-password/MTk/anhbvj-d75c3390ef77acea1208f6be2e9decbb');

-- --------------------------------------------------------

--
-- Table structure for table `emailnews`
--

CREATE TABLE `emailnews` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `subscription` tinyint(1) NOT NULL,
  `userid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `forum_notification`
--

CREATE TABLE `forum_notification` (
  `id` int(11) NOT NULL,
  `Notification_type` int(11) NOT NULL,
  `text_preview` varchar(50) NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `date` datetime(6) NOT NULL,
  `post_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forum_notification`
--

INSERT INTO `forum_notification` (`id`, `Notification_type`, `text_preview`, `is_read`, `date`, `post_id`, `sender_id`, `user_id`) VALUES
(9, 1, 'bachar97 liked your post', 1, '2021-05-28 18:19:07.955767', 188, 18, 12),
(10, 3, 'bachar97 replied to your comment', 1, '2021-05-28 18:30:52.363556', 188, 18, 12),
(11, 2, 'bachar97 commented on your post', 0, '2021-05-30 02:54:30.634653', 188, 18, 12);

-- --------------------------------------------------------

--
-- Table structure for table `forum_subtopiclatestposts`
--

CREATE TABLE `forum_subtopiclatestposts` (
  `id` int(11) NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `subtopicnew_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forum_subtopiclatestposts`
--

INSERT INTO `forum_subtopiclatestposts` (`id`, `is_read`, `subtopicnew_id`, `user_id`) VALUES
(1, 1, 2, 2),
(2, 0, 2, 3),
(3, 1, 2, 12),
(4, 0, 2, 14),
(5, 1, 2, 15),
(6, 1, 2, 16),
(7, 1, 2, 17),
(8, 1, 2, 18),
(9, 1, 1, 2),
(10, 0, 1, 3),
(11, 1, 1, 12),
(12, 0, 1, 14),
(13, 1, 1, 15),
(14, 1, 1, 16),
(15, 0, 1, 17),
(16, 1, 1, 18),
(17, 0, 4, 2),
(18, 0, 4, 3),
(19, 0, 4, 12),
(20, 0, 4, 14),
(21, 1, 4, 15),
(22, 1, 4, 16),
(23, 1, 4, 17),
(24, 1, 4, 18),
(25, 0, 5, 2),
(26, 0, 5, 3),
(27, 0, 5, 12),
(28, 0, 5, 14),
(29, 1, 5, 15),
(30, 1, 5, 16),
(31, 0, 5, 17),
(32, 1, 5, 18),
(33, 0, 9, 2),
(34, 0, 9, 3),
(35, 0, 9, 12),
(36, 0, 9, 14),
(37, 0, 9, 15),
(38, 0, 9, 16),
(39, 0, 9, 17),
(40, 1, 9, 18),
(41, 0, 10, 2),
(42, 0, 10, 3),
(43, 0, 10, 12),
(44, 0, 10, 14),
(45, 0, 10, 15),
(46, 0, 10, 16),
(47, 0, 10, 17),
(48, 1, 10, 18),
(49, 0, 11, 2),
(50, 0, 11, 3),
(51, 1, 11, 12),
(52, 0, 11, 14),
(53, 0, 11, 15),
(54, 0, 11, 16),
(55, 0, 11, 17),
(56, 1, 11, 18),
(57, 0, 17, 2),
(58, 0, 17, 3),
(59, 0, 17, 12),
(60, 0, 17, 14),
(61, 0, 17, 15),
(62, 0, 17, 16),
(63, 0, 17, 17),
(64, 1, 17, 18),
(65, 0, 18, 2),
(66, 0, 18, 3),
(67, 0, 18, 12),
(68, 0, 18, 14),
(69, 0, 18, 15),
(70, 0, 18, 16),
(71, 0, 18, 17),
(72, 1, 18, 18),
(73, 0, 4, 2),
(74, 0, 4, 3),
(75, 0, 4, 12),
(76, 0, 4, 14),
(77, 0, 4, 15),
(78, 0, 4, 16),
(79, 0, 4, 17),
(80, 1, 4, 18),
(81, 1, 4, 19),
(82, 0, 4, 2),
(83, 0, 4, 3),
(84, 0, 4, 12),
(85, 0, 4, 14),
(86, 0, 4, 15),
(87, 0, 4, 16),
(88, 0, 4, 17),
(89, 1, 4, 18),
(90, 1, 4, 19);

-- --------------------------------------------------------

--
-- Table structure for table `home_newsbanner`
--

CREATE TABLE `home_newsbanner` (
  `id` int(11) NOT NULL,
  `news` varchar(250) NOT NULL,
  `datetime` datetime(6) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `updated_by_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home_newsbanner`
--

INSERT INTO `home_newsbanner` (`id`, `news`, `datetime`, `is_deleted`, `updated_by_id`) VALUES
(1, 'Welcome to AIMARENA ! We hope you\'re having fun', '2021-05-10 15:16:32.687054', 0, 2),
(2, 'Go play Ranked mode and challenge other AIMARENA players', '2021-05-10 15:16:37.758225', 0, 2),
(3, 'Our forums is built on the bases of mutual respect between everyone, if you find any member offensive or disrespectful please report him in the forums', '2021-05-28 11:56:52.214927', 0, 2),
(4, 'test', '2021-05-30 03:25:42.929703', 1, 18);

-- --------------------------------------------------------

--
-- Table structure for table `kickedfromwebsite`
--

CREATE TABLE `kickedfromwebsite` (
  `id` int(11) NOT NULL,
  `kicked_time` datetime(6) NOT NULL,
  `user_id_id` int(11) NOT NULL,
  `kicked_by_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kickedfromwebsite`
--

INSERT INTO `kickedfromwebsite` (`id`, `kicked_time`, `user_id_id`, `kicked_by_id`) VALUES
(1, '2021-05-28 00:28:27.200295', 14, 18),
(2, '2021-05-30 21:52:20.132395', 12, 18),
(3, '2021-05-30 21:53:09.258143', 12, 18);

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `id` int(11) NOT NULL,
  `lastlogin` datetime(6) NOT NULL,
  `user_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`id`, `lastlogin`, `user_id_id`) VALUES
(1, '2021-05-26 21:31:45.191355', 18),
(2, '2021-05-30 03:36:34.985937', 12),
(3, '2021-05-28 15:06:03.926330', 17),
(4, '2021-05-28 13:27:33.546934', 16),
(5, '2021-05-28 15:09:57.669736', 15),
(6, '2021-05-31 11:17:22.558751', 19);

-- --------------------------------------------------------

--
-- Table structure for table `nonmotiongame_game`
--

CREATE TABLE `nonmotiongame_game` (
  `id` int(11) NOT NULL,
  `Start_Date` datetime(6) DEFAULT NULL,
  `End_Date` datetime(6) DEFAULT NULL,
  `Game_Mode_ID_id` int(11) NOT NULL,
  `User_ID_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nonmotiongame_game`
--

INSERT INTO `nonmotiongame_game` (`id`, `Start_Date`, `End_Date`, `Game_Mode_ID_id`, `User_ID_id`) VALUES
(332, '2021-05-18 14:38:29.000000', '2021-05-18 14:38:33.499606', 1, 15),
(333, '2021-05-18 14:39:00.000000', '2021-05-18 14:39:04.285556', 1, 15),
(334, '2021-05-18 14:39:06.000000', '2021-05-18 14:39:10.858094', 1, 15),
(335, '2021-05-18 14:39:14.000000', '2021-05-18 14:39:18.399692', 1, 15),
(336, '2021-05-18 14:39:22.000000', '2021-05-18 14:39:26.486444', 1, 15),
(342, '2021-05-18 16:19:38.000000', '2021-05-18 16:19:42.806890', 1, 16),
(343, '2021-05-18 16:19:45.000000', '2021-05-18 16:19:49.911180', 1, 16),
(344, '2021-05-18 16:19:53.000000', '2021-05-18 16:19:57.400227', 1, 16),
(345, '2021-05-18 16:19:59.000000', '2021-05-18 16:20:03.993924', 1, 16),
(346, '2021-05-18 16:20:06.000000', '2021-05-18 16:20:10.368957', 1, 16),
(347, '2021-05-18 16:24:47.000000', '2021-05-18 16:24:51.219774', 1, 17),
(348, '2021-05-18 16:24:53.000000', '2021-05-18 16:24:57.762848', 1, 17),
(349, '2021-05-18 16:25:00.000000', '2021-05-18 16:25:04.121477', 1, 17),
(350, '2021-05-18 16:25:06.000000', '2021-05-18 16:25:10.466762', 1, 17),
(351, '2021-05-18 16:25:13.000000', '2021-05-18 16:25:17.321271', 1, 17),
(352, '2021-05-20 20:28:54.000000', '2021-05-20 20:28:58.404599', 1, 17),
(353, '2021-05-26 21:56:01.000000', '2021-05-26 21:57:01.630506', 3, 18),
(354, '2021-05-27 23:48:17.000000', '2021-05-27 23:48:21.541666', 2, 12),
(355, '2021-05-27 23:48:24.000000', '2021-05-27 23:48:28.548875', 2, 12),
(356, '2021-05-27 23:48:30.000000', '2021-05-27 23:48:35.028619', 2, 12),
(357, '2021-05-27 23:48:41.000000', '2021-05-27 23:48:45.635694', 2, 12),
(358, '2021-05-27 23:49:16.000000', '2021-05-27 23:49:20.601578', 2, 12),
(359, '2021-05-27 23:49:55.000000', '2021-05-27 23:49:59.431416', 2, 12),
(360, '2021-05-27 23:50:13.000000', '2021-05-27 23:50:17.417994', 2, 12),
(361, '2021-05-27 23:50:22.000000', '2021-05-27 23:50:26.293550', 2, 12),
(362, '2021-05-27 23:50:28.000000', '2021-05-27 23:50:32.793450', 2, 12),
(363, '2021-05-27 23:50:35.000000', '2021-05-27 23:50:39.620451', 2, 12),
(364, '2021-05-27 23:51:12.000000', '2021-05-27 23:51:16.625605', 2, 12),
(365, '2021-05-27 23:51:30.000000', '2021-05-27 23:51:34.622522', 2, 12),
(366, '2021-05-27 23:51:45.000000', '2021-05-27 23:51:49.258618', 2, 12),
(367, '2021-05-27 23:51:51.000000', '2021-05-27 23:51:55.654605', 2, 12),
(368, '2021-05-27 23:51:57.000000', '2021-05-27 23:52:01.817573', 2, 12),
(369, '2021-05-27 23:52:04.000000', '2021-05-27 23:52:08.155601', 2, 12),
(370, '2021-05-27 23:52:10.000000', '2021-05-27 23:52:14.342592', 2, 12),
(371, '2021-05-27 23:52:16.000000', '2021-05-27 23:52:20.579394', 2, 12),
(372, '2021-05-27 23:52:22.000000', '2021-05-27 23:52:26.599536', 2, 12),
(373, '2021-05-27 23:52:29.000000', '2021-05-27 23:52:33.967551', 2, 12),
(374, '2021-05-27 23:52:36.000000', '2021-05-27 23:52:40.082609', 2, 12),
(375, '2021-05-27 23:52:42.000000', '2021-05-27 23:52:46.114751', 2, 12),
(376, '2021-05-27 23:53:05.000000', '2021-05-27 23:53:09.457507', 2, 12),
(377, '2021-05-27 23:53:22.000000', '2021-05-27 23:53:27.619580', 2, 12),
(378, '2021-05-27 23:53:33.000000', '2021-05-27 23:53:37.574619', 2, 12),
(379, '2021-05-27 23:53:39.000000', '2021-05-27 23:53:43.962523', 2, 12),
(380, '2021-05-27 23:53:46.000000', '2021-05-27 23:53:50.615782', 2, 12),
(381, '2021-05-27 23:53:55.000000', '2021-05-27 23:53:59.616576', 2, 12),
(382, '2021-05-27 23:54:09.000000', '2021-05-27 23:54:13.467608', 2, 12),
(383, '2021-05-27 23:54:15.000000', '2021-05-27 23:54:19.966608', 2, 12),
(384, '2021-05-27 23:55:00.000000', '2021-05-27 23:55:59.627372', 2, 12),
(385, '2021-05-27 23:56:52.000000', '2021-05-27 23:56:56.600518', 2, 12),
(386, '2021-05-27 23:56:59.000000', '2021-05-27 23:57:03.620503', 2, 12),
(387, '2021-05-27 23:57:29.000000', '2021-05-27 23:57:33.136373', 2, 12),
(388, '2021-05-27 23:57:35.000000', '2021-05-27 23:57:39.849618', 2, 12),
(389, '2021-05-27 23:57:42.000000', '2021-05-27 23:57:46.317471', 2, 12),
(390, '2021-05-27 23:58:40.000000', '2021-05-27 23:58:44.385962', 2, 12),
(391, '2021-05-27 23:59:23.000000', '2021-05-27 23:59:28.614641', 2, 12),
(392, '2021-05-27 23:59:43.000000', '2021-05-27 23:59:47.621426', 2, 12),
(393, '2021-05-28 00:00:02.000000', '2021-05-28 00:00:06.612502', 2, 12),
(394, '2021-05-28 00:01:00.000000', '2021-05-28 00:01:04.481273', 2, 12),
(395, '2021-05-28 00:01:09.000000', '2021-05-28 00:01:13.536187', 2, 12),
(396, '2021-05-28 00:01:22.000000', '2021-05-28 00:01:26.070494', 2, 12),
(397, '2021-05-28 00:01:57.000000', '2021-05-28 00:02:01.366528', 2, 12),
(398, '2021-05-28 00:02:21.000000', '2021-05-28 00:02:25.988300', 2, 12),
(399, '2021-05-28 00:02:46.000000', '2021-05-28 00:02:51.616589', 2, 12),
(400, '2021-05-28 00:03:12.000000', '2021-05-28 00:03:16.622634', 2, 12),
(401, '2021-05-28 00:03:50.000000', '2021-05-28 00:03:54.296729', 2, 12),
(402, '2021-05-28 00:03:58.000000', '2021-05-28 00:04:02.164110', 2, 12),
(403, '2021-05-28 00:04:16.000000', '2021-05-28 00:04:20.187606', 2, 12),
(404, '2021-05-28 00:05:38.000000', '2021-05-28 00:06:37.635668', 2, 12),
(405, '2021-05-28 12:13:00.000000', '2021-05-28 12:13:04.739556', 1, 12),
(406, '2021-05-28 12:51:09.000000', '2021-05-28 12:51:13.716615', 1, 15),
(407, '2021-05-28 13:22:06.000000', '2021-05-28 13:22:10.364852', 1, 15),
(408, '2021-05-28 13:22:15.000000', '2021-05-28 13:22:19.056717', 1, 15),
(409, '2021-05-28 13:22:44.000000', '2021-05-28 13:22:48.263732', 1, 15),
(410, '2021-05-28 15:13:17.000000', '2021-05-28 15:13:21.704096', 1, 15),
(411, '2021-05-28 15:13:24.000000', '2021-05-28 15:13:28.969183', 1, 15),
(412, '2021-05-28 15:13:31.000000', '2021-05-28 15:13:35.438995', 1, 15),
(413, '2021-05-28 15:13:43.000000', '2021-05-28 15:13:55.237584', 3, 15),
(414, '2021-05-28 18:35:27.000000', '2021-05-28 18:35:31.383605', 1, 12),
(415, '2021-05-28 18:35:35.000000', '2021-05-28 18:36:28.138697', 3, 12),
(416, '2021-05-28 18:35:35.000000', '2021-05-28 18:36:36.002590', 3, 12),
(417, '2021-05-28 18:35:48.000000', '2021-05-28 18:36:48.564636', 2, 12),
(418, '2021-05-28 18:36:59.000000', '2021-05-28 18:37:03.074542', 1, 12),
(419, '2021-05-28 18:38:06.000000', '2021-05-28 18:38:10.973293', 1, 12),
(420, '2021-05-28 19:03:15.000000', '2021-05-28 19:03:20.056563', 1, 12),
(421, '2021-05-28 19:03:41.000000', '2021-05-28 19:03:45.165652', 1, 12),
(422, '2021-05-28 19:03:56.000000', '2021-05-28 19:04:00.745522', 1, 12),
(423, '2021-05-28 19:05:15.000000', '2021-05-28 19:05:19.133602', 1, 12),
(424, '2021-05-30 03:36:54.000000', '2021-05-30 03:37:53.555991', 1, 12),
(425, '2021-05-30 03:39:00.000000', '2021-05-30 03:39:07.209739', 3, 12),
(426, '2021-05-30 03:44:02.000000', '2021-05-30 03:45:03.973546', 2, 12),
(427, '2021-05-30 03:44:16.000000', '2021-05-30 03:45:17.080867', 1, 12),
(428, '2021-05-30 03:48:39.000000', '2021-05-30 03:48:45.348474', 3, 12),
(429, '2021-05-30 16:23:34.000000', '2021-05-30 16:24:33.963539', 1, 19),
(430, '2021-05-30 16:26:17.000000', '2021-05-30 16:27:17.104194', 1, 19),
(431, '2021-05-30 16:26:38.000000', '2021-05-30 16:27:38.092256', 2, 19),
(432, '2021-05-30 16:33:35.000000', '2021-05-30 16:34:23.764574', 3, 19),
(433, '2021-05-30 16:34:36.000000', '2021-05-30 16:34:41.176463', 3, 19),
(434, '2021-05-30 16:35:51.000000', '2021-05-30 16:36:51.009552', 1, 19),
(435, '2021-05-30 16:37:15.000000', '2021-05-30 16:38:14.609012', 1, 19),
(436, '2021-05-30 16:39:04.000000', '2021-05-30 16:39:49.667117', 3, 19),
(437, '2021-05-30 16:40:24.000000', '2021-05-30 16:41:23.344580', 2, 19),
(438, '2021-05-30 20:14:34.000000', '2021-05-30 20:15:33.599399', 1, 19),
(439, '2021-05-30 20:17:17.000000', '2021-05-30 20:18:16.050804', 1, 19),
(440, '2021-05-30 20:18:53.000000', '2021-05-30 20:19:52.074191', 1, 19),
(441, '2021-05-30 20:20:16.000000', '2021-05-30 20:21:15.468931', 1, 19),
(442, '2021-05-30 20:28:07.000000', '2021-05-30 20:28:12.406939', 3, 19),
(443, '2021-05-30 20:28:07.000000', '2021-05-30 20:28:25.031211', 3, 19);

-- --------------------------------------------------------

--
-- Table structure for table `nonmotiongame_gamemode_user`
--

CREATE TABLE `nonmotiongame_gamemode_user` (
  `id` int(11) NOT NULL,
  `Score_Avg` double NOT NULL,
  `Accuracy_Avg` double NOT NULL,
  `Hits_Avg` double NOT NULL,
  `Shots_Avg` double NOT NULL,
  `Game_Mode_ID_id` int(11) NOT NULL,
  `Rank_id` int(11) DEFAULT NULL,
  `User_ID_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nonmotiongame_gamemode_user`
--

INSERT INTO `nonmotiongame_gamemode_user` (`id`, `Score_Avg`, `Accuracy_Avg`, `Hits_Avg`, `Shots_Avg`, `Game_Mode_ID_id`, `Rank_id`, `User_ID_id`) VALUES
(20, 31.25, 50.583, 3.75, 4.917, 1, 1, 15),
(21, 63.6, 87.4, 7.2, 8.2, 1, 1, 16),
(22, 66, 92.167, 7.167, 7.833, 1, 1, 17),
(23, 705, 94, 75, 80, 3, NULL, 18),
(24, 1.189, 6.453, 0.302, 1.755, 2, NULL, 12),
(25, 29.5, 27.1, 3.1, 3.4, 1, 1, 12),
(26, 17, 44, 4, 9, 3, NULL, 15),
(27, 10.25, 18.75, 2, 7, 3, NULL, 12),
(28, 501.5, 80, 54.5, 59.25, 1, 2, 19),
(29, 5.5, 5.5, 5, 46, 2, NULL, 19),
(30, 82.6, 44.8, 10.2, 14.8, 3, NULL, 19);

-- --------------------------------------------------------

--
-- Table structure for table `nonmotiongame_game_mode`
--

CREATE TABLE `nonmotiongame_game_mode` (
  `id` int(11) NOT NULL,
  `Mode_Description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nonmotiongame_game_mode`
--

INSERT INTO `nonmotiongame_game_mode` (`id`, `Mode_Description`) VALUES
(1, 'Ranked mode'),
(2, 'Casual Mode'),
(3, 'Survival Mode');

-- --------------------------------------------------------

--
-- Table structure for table `nonmotiongame_game_statistics`
--

CREATE TABLE `nonmotiongame_game_statistics` (
  `id` int(11) NOT NULL,
  `Date` datetime(6) NOT NULL,
  `Shot` varchar(200) NOT NULL,
  `Hit` varchar(200) NOT NULL,
  `Score` int(10) UNSIGNED NOT NULL CHECK (`Score` >= 0),
  `Accuracy` double NOT NULL,
  `Game_ID_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nonmotiongame_game_statistics`
--

INSERT INTO `nonmotiongame_game_statistics` (`id`, `Date`, `Shot`, `Hit`, `Score`, `Accuracy`, `Game_ID_id`) VALUES
(318, '2021-05-18 14:38:33.505600', '5', '4', 32, 80, 332),
(319, '2021-05-18 14:39:04.292553', '8', '7', 61, 88, 333),
(320, '2021-05-18 14:39:10.863090', '9', '8', 71, 89, 334),
(321, '2021-05-18 14:39:18.406686', '9', '8', 71, 89, 335),
(322, '2021-05-18 14:39:26.490442', '8', '8', 80, 100, 336),
(323, '2021-05-18 16:19:42.813885', '7', '5', 35, 71, 342),
(324, '2021-05-18 16:19:49.915177', '8', '8', 80, 100, 343),
(325, '2021-05-18 16:19:57.404222', '8', '7', 61, 88, 344),
(326, '2021-05-18 16:20:03.998920', '10', '9', 81, 90, 345),
(327, '2021-05-18 16:20:10.372955', '8', '7', 61, 88, 346),
(328, '2021-05-18 16:24:51.224772', '9', '7', 54, 78, 347),
(329, '2021-05-18 16:24:57.767845', '9', '8', 71, 89, 348),
(330, '2021-05-18 16:25:04.128472', '8', '8', 80, 100, 349),
(331, '2021-05-18 16:25:10.471759', '7', '7', 70, 100, 350),
(332, '2021-05-18 16:25:17.327267', '7', '7', 70, 100, 351),
(333, '2021-05-20 20:28:58.413592', '7', '6', 51, 86, 352),
(334, '2021-05-26 21:57:01.637500', '80', '75', 705, 94, 353),
(335, '2021-05-27 23:48:21.546743', '0', '0', 0, 0, 354),
(336, '2021-05-27 23:48:28.555883', '0', '0', 0, 0, 355),
(337, '2021-05-27 23:48:35.034595', '0', '0', 0, 0, 356),
(338, '2021-05-27 23:48:45.644701', '0', '0', 0, 0, 357),
(339, '2021-05-27 23:49:20.607574', '0', '0', 0, 0, 358),
(340, '2021-05-27 23:49:59.439412', '7', '3', 12, 43, 359),
(341, '2021-05-27 23:50:17.423989', '0', '0', 0, 0, 360),
(342, '2021-05-27 23:50:26.300558', '0', '0', 0, 0, 361),
(343, '2021-05-27 23:50:32.797449', '0', '0', 0, 0, 362),
(344, '2021-05-27 23:50:39.624448', '0', '0', 0, 0, 363),
(345, '2021-05-27 23:51:16.629589', '0', '0', 0, 0, 364),
(346, '2021-05-27 23:51:34.628525', '0', '0', 0, 0, 365),
(347, '2021-05-27 23:51:49.262616', '0', '0', 0, 0, 366),
(348, '2021-05-27 23:51:55.658603', '0', '0', 0, 0, 367),
(349, '2021-05-27 23:52:01.833564', '7', '0', 0, 0, 368),
(350, '2021-05-27 23:52:08.158609', '10', '0', 0, 0, 369),
(351, '2021-05-27 23:52:14.346603', '5', '2', 8, 40, 370),
(352, '2021-05-27 23:52:20.583379', '3', '0', 0, 0, 371),
(353, '2021-05-27 23:52:26.603536', '4', '1', 2, 25, 372),
(354, '2021-05-27 23:52:33.971551', '4', '1', 2, 25, 373),
(355, '2021-05-27 23:52:40.085599', '3', '2', 13, 67, 374),
(356, '2021-05-27 23:52:46.118745', '0', '0', 0, 0, 375),
(357, '2021-05-27 23:53:09.462504', '0', '0', 0, 0, 376),
(358, '2021-05-27 23:53:27.622577', '0', '0', 0, 0, 377),
(359, '2021-05-27 23:53:37.578626', '0', '0', 0, 0, 378),
(360, '2021-05-27 23:53:43.967519', '0', '0', 0, 0, 379),
(361, '2021-05-27 23:53:50.617768', '0', '0', 0, 0, 380),
(362, '2021-05-27 23:53:59.619571', '0', '0', 0, 0, 381),
(363, '2021-05-27 23:54:13.471606', '0', '0', 0, 0, 382),
(364, '2021-05-27 23:54:19.970605', '0', '0', 0, 0, 383),
(365, '2021-05-27 23:55:59.630376', '0', '0', 0, 0, 384),
(366, '2021-05-27 23:56:56.603529', '0', '0', 0, 0, 385),
(367, '2021-05-27 23:57:03.623516', '0', '0', 0, 0, 386),
(368, '2021-05-27 23:57:33.139371', '0', '0', 0, 0, 387),
(369, '2021-05-27 23:57:39.853613', '0', '0', 0, 0, 388),
(370, '2021-05-27 23:57:46.321468', '2', '2', 20, 100, 389),
(371, '2021-05-27 23:58:44.390952', '3', '1', 3, 33, 390),
(372, '2021-05-27 23:59:28.619209', '0', '0', 0, 0, 391),
(373, '2021-05-27 23:59:47.624437', '0', '0', 0, 0, 392),
(374, '2021-05-28 00:00:06.616498', '0', '0', 0, 0, 393),
(375, '2021-05-28 00:01:04.484285', '0', '0', 0, 0, 394),
(376, '2021-05-28 00:01:13.540185', '0', '0', 0, 0, 395),
(377, '2021-05-28 00:01:26.074492', '0', '0', 0, 0, 396),
(378, '2021-05-28 00:02:01.371539', '0', '0', 0, 0, 397),
(379, '2021-05-28 00:02:25.992296', '0', '0', 0, 0, 398),
(380, '2021-05-28 00:02:51.619625', '0', '0', 0, 0, 399),
(381, '2021-05-28 00:03:16.626668', '0', '0', 0, 0, 400),
(382, '2021-05-28 00:03:54.301726', '0', '0', 0, 0, 401),
(383, '2021-05-28 00:04:02.167107', '0', '0', 0, 0, 402),
(384, '2021-05-28 00:04:20.190615', '0', '0', 0, 0, 403),
(385, '2021-05-28 00:06:37.639667', '0', '0', 0, 0, 404),
(386, '2021-05-28 12:13:04.744554', '7', '5', 35, 71, 405),
(387, '2021-05-28 12:51:13.729606', '3', '0', 0, 0, 406),
(388, '2021-05-28 13:22:10.369848', '0', '0', 0, 0, 407),
(389, '2021-05-28 13:22:19.063712', '0', '0', 0, 0, 408),
(390, '2021-05-28 13:22:48.268728', '7', '5', 35, 71, 409),
(391, '2021-05-28 15:13:21.709565', '7', '4', 22, 57, 410),
(392, '2021-05-28 15:13:28.979177', '0', '0', 0, 0, 411),
(393, '2021-05-28 15:13:35.445989', '3', '1', 3, 33, 412),
(394, '2021-05-28 15:13:55.242581', '9', '4', 17, 44, 413),
(395, '2021-05-28 18:35:31.387605', '0', '0', 0, 0, 414),
(396, '2021-05-28 18:36:28.141696', '5', '0', 0, 0, 415),
(397, '2021-05-28 18:36:36.009586', '12', '7', 40, 58, 416),
(398, '2021-05-28 18:36:48.568634', '45', '4', 3, 9, 417),
(399, '2021-05-28 18:37:03.077538', '7', '7', 70, 100, 418),
(400, '2021-05-28 18:38:10.979289', '0', '0', 0, 0, 419),
(401, '2021-05-28 19:03:20.061559', '0', '0', 0, 0, 420),
(402, '2021-05-28 19:03:45.169651', '1', '0', 0, 0, 421),
(403, '2021-05-28 19:04:00.749505', '0', '0', 0, 0, 422),
(404, '2021-05-28 19:05:19.138599', '0', '0', 0, 0, 423),
(405, '2021-05-30 03:37:53.564986', '19', '19', 190, 100, 424),
(406, '2021-05-30 03:39:07.214736', '6', '1', 1, 17, 425),
(407, '2021-05-30 03:45:03.979542', '0', '0', 0, 0, 426),
(408, '2021-05-30 03:45:17.084874', '0', '0', 0, 0, 427),
(409, '2021-05-30 03:48:45.353472', '5', '0', 0, 0, 428),
(410, '2021-05-30 16:24:33.971634', '84', '76', 684, 90, 429),
(411, '2021-05-30 16:27:17.113190', '0', '0', 0, 0, 430),
(412, '2021-05-30 16:27:38.098252', '0', '0', 0, 0, 431),
(413, '2021-05-30 16:34:23.773552', '13', '8', 49, 62, 432),
(414, '2021-05-30 16:34:41.182460', '5', '0', 0, 0, 433),
(415, '2021-05-30 16:36:51.017548', '12', '11', 101, 92, 434),
(416, '2021-05-30 16:38:14.615010', '42', '37', 325, 88, 435),
(417, '2021-05-30 16:39:49.676111', '36', '32', 284, 89, 436),
(418, '2021-05-30 16:41:23.350577', '92', '10', 11, 11, 437),
(419, '2021-05-30 20:15:33.607393', '78', '69', 607, 88, 438),
(420, '2021-05-30 20:18:16.066805', '76', '67', 589, 88, 439),
(421, '2021-05-30 20:19:52.079187', '93', '89', 854, 96, 440),
(422, '2021-05-30 20:21:15.472926', '89', '87', 852, 98, 441),
(423, '2021-05-30 20:28:12.414923', '5', '0', 0, 0, 442),
(424, '2021-05-30 20:28:25.039205', '15', '11', 80, 73, 443);

-- --------------------------------------------------------

--
-- Table structure for table `nonmotiongame_rank`
--

CREATE TABLE `nonmotiongame_rank` (
  `id` int(11) NOT NULL,
  `Rank_Name` varchar(150) NOT NULL,
  `Rank_description` varchar(250) NOT NULL,
  `Rank_image` varchar(100) NOT NULL,
  `score_max` double NOT NULL,
  `score_min` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nonmotiongame_rank`
--

INSERT INTO `nonmotiongame_rank` (`id`, `Rank_Name`, `Rank_description`, `Rank_image`, `score_max`, `score_min`) VALUES
(1, 'Silver', 'sasad\r\n', 'RANK1.png', 500, 0),
(2, 'Emerald', 'sasad\r\n', 'RANK2.png', 1000, 501),
(3, 'Gold', 'sasad\r\n', 'RANK3.png', 1700, 1001),
(4, 'Platinum', 'sasad\r\n', 'RANK4.png', 2400, 1701),
(5, 'Legendary', 'sasad\r\n', 'RANK5.png', 10000, 2401);

-- --------------------------------------------------------

--
-- Table structure for table `nonmotiongame_user_info`
--

CREATE TABLE `nonmotiongame_user_info` (
  `id` int(11) NOT NULL,
  `Score_Avg` double NOT NULL,
  `Accuracy_Avg` double NOT NULL,
  `User_ID_id` int(11) NOT NULL,
  `Hits_Avg` double NOT NULL,
  `Shots_Avg` double NOT NULL,
  `forumpoints` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nonmotiongame_user_info`
--

INSERT INTO `nonmotiongame_user_info` (`id`, `Score_Avg`, `Accuracy_Avg`, `User_ID_id`, `Hits_Avg`, `Shots_Avg`, `forumpoints`) VALUES
(14, 30.154, 50.077, 15, 3.769, 5.231, '100'),
(15, 0, 0, 2, 0, 0, '15'),
(16, 63.6, 87.4, 16, 7.2, 8.2, '10'),
(17, 66, 92.167, 17, 7.167, 7.833, '15'),
(18, 0, 0, 3, 0, 0, '300'),
(19, 705, 94, 18, 75, 80, '10000'),
(20, 5.955, 10.269, 12, 0.821, 2.313, '5'),
(21, 295.733, 58.333, 19, 33.133, 42.667, '5');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `permission_name` varchar(100) DEFAULT NULL,
  `permission_description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `permission_name`, `permission_description`) VALUES
(1, 'Admin page', 'Admin page permission'),
(2, 'Forum moderator page', 'Forum moderator page permission'),
(3, 'Regular page', 'Regular page permission'),
(4, 'Manageposts', 'permission for managing the posts'),
(5, 'Customer Service page', 'Customer Service page permission');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_tag` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `thumbnail` varchar(100) DEFAULT NULL,
  `Featured` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `is_closed` tinyint(1) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  `topic_title_id` int(11) NOT NULL,
  `is_available` tinyint(1) NOT NULL,
  `is_rejected` tinyint(1) NOT NULL,
  `appeal_accepted` tinyint(1) NOT NULL,
  `appeal_rejected` tinyint(1) NOT NULL,
  `post_views` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `title_tag`, `body`, `timestamp`, `thumbnail`, `Featured`, `deleted`, `is_closed`, `slug`, `author_id`, `topic_title_id`, `is_available`, `is_rejected`, `appeal_accepted`, `appeal_rejected`, `post_views`) VALUES
(176, 'New Here', '', 'Hello all, My name is john I\'m new here. I hope the community here is nice and welcoming', '2021-05-18 14:27:48.099843', '', 0, 0, 0, NULL, 15, 3, 0, 0, 0, 0, 8),
(177, 'Welcome to AIMARENA!', '', '<blockquote>Hello, I\'m <b><u><font color=\"#ff0000\">AIMARENA\'S</font> <font color=\"#ff0000\">administrator</font></u></b> I\'m pleased to welcome you all in this forum !</blockquote>', '2021-05-18 14:49:15.821417', '', 1, 0, 1, NULL, 2, 3, 0, 0, 0, 0, 6),
(178, 'Hello', '', '<p>Hello Everyone, I just came across this website yesterday and was in love with the game modes offered. I found it very beneficial for fps games&nbsp;</p>', '2021-05-18 16:12:38.733398', 'AimArenaTue05211638095aadc5eadcba53081756b074cdeff8.gif', 0, 0, 0, NULL, 16, 3, 0, 0, 0, 0, 6),
(179, 'Greetings!', '', '<u><b><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">What a nice community here !</font></b></u>', '2021-05-18 16:23:20.657635', '', 0, 0, 0, NULL, 17, 3, 0, 0, 0, 0, 13),
(180, 'Hello all', '', 'Proud to have you all, I\'m the forum moderator here.', '2021-05-18 16:31:51.268950', '', 1, 0, 1, NULL, 3, 3, 0, 0, 0, 0, 0),
(183, 'My Suggestion', '', '<p>Hello admin, I have a suggestion for this website, why not add more game modes in the future if applicable. Much love !&nbsp;</p>', '2021-05-28 11:11:46.050193', '', 0, 0, 0, NULL, 17, 2, 0, 0, 0, 0, 4),
(184, 'Favorites', '', '<p>Hello, i have a brilliant idea. Why not add a <font color=\"#ffff00\">favorite</font> button under a forum post. Then the post will appear in a favorites tab in my profile page. I Think that its a very good feature for the <b>forums</b></p>', '2021-05-28 11:15:00.994672', '', 0, 0, 0, NULL, 16, 2, 0, 0, 0, 0, 3),
(185, 'Future Update', '', '<p>Based on @HassanAzez123\'s Suggestion, and after further discussion with all AIMARENA\'S staff, We will implement a favorite button under each post. This will make finding your favorite posts easy to reach</p><p><br></p>', '2021-05-28 11:20:05.625371', '', 1, 0, 1, NULL, 2, 2, 0, 0, 0, 0, 2),
(186, 'Server Maintenance | 4/6/2021', '', '<p>There is an upcoming Server Maintenance on <font style=\"background-color: rgb(255, 0, 0);\">Friday 4/6/2021</font></p>', '2021-05-28 11:22:30.294692', '', 1, 0, 1, NULL, 2, 1, 0, 0, 0, 0, 1),
(187, 'AIMARENA UPDATE | 10/6/2021', '', '<p>We will be adding new feature updates to AIMARENA with new features that will be announced later&nbsp;</p>', '2021-05-28 11:24:16.866506', '', 0, 0, 0, NULL, 2, 1, 0, 0, 0, 0, 2),
(188, 'This is my first post!', '', 'I\'m writing this post just to say that I\'m loving this website, I mean an online game that in theory will improve my aiming in fps games plus an online forum, sign me in !&nbsp;', '2021-05-28 11:29:30.259916', '', 0, 0, 0, NULL, 12, 4, 0, 0, 0, 0, 33),
(189, 'What a hard game mode', '', '<p>Hello everyone, is it me or isn\'t the casual mode not so casual, I mean its so hard to strike the targets. Anyone facing this issue ?</p>', '2021-05-28 11:32:07.787499', '', 0, 0, 0, NULL, 17, 4, 0, 0, 0, 0, 8),
(190, 'My first Meme ! hope you like it', '', '<p>FURniture !, get it ?</p>', '2021-05-28 11:39:20.471315', 'AimArenaFri05211120images.jfif', 0, 0, 0, NULL, 17, 5, 0, 0, 0, 0, 5),
(191, 'Happens all the time !', '', '<p>Anyone faces the same thing ?</p>', '2021-05-28 11:40:42.524364', 'AimArenaFri0521114292n3ij16yza61.jpg', 0, 0, 0, NULL, 16, 5, 0, 0, 0, 0, 5),
(192, 'Staff Application Template', '', '<p><font color=\"#FF0042\"><span style=\"background-color: transparent;\"><b>Username:</b></span></font></p><p>bachar97</p><p><font color=\"#FF0042\"><span style=\"background-color: transparent;\"><b><br></b></span></font></p><p><font color=\"#FF0042\"><span style=\"background-color: transparent;\"><b>Age <font color=\"#6BADDE\">(optional)</font>:</b></span></font></p><p><span style=\"background-color: transparent;\">20<br></span></p><p><font color=\"#FF0042\"><span style=\"background-color: transparent;\"><b><br></b></span></font></p><p><font color=\"#FF0042\"><span style=\"background-color: transparent;\"><b>What Position are you applying for?</b></span></font></p><p><font color=\"#FF0042\"><span style=\"background-color: transparent;\"><span style=\"background-color: transparent;\"><font color=\"#FFFFFF\">Admin</font></span><span style=\"background-color: transparent;\"><font color=\"#FFFFFF\">.</font></span><b><br></b></span></font></p><p><font color=\"#FF0042\"><span style=\"background-color: transparent;\"><b><br></b></span></font></p><p><font color=\"#FF0042\"><span style=\"background-color: transparent;\"><b>Why did you choose AIMARENA over any other website?</b></span></font></p><p><font color=\"#FF0042\"><span style=\"background-color: transparent;\"><span style=\"background-color: transparent;\"><font color=\"#FFFFFF\">Because of the active and friendly community, in addition to the diverse game modes.</font></span><b><br></b></span></font></p><p><font color=\"#FF0042\"><span style=\"background-color: transparent;\"><b><br></b></span></font></p><p><font color=\"#FF0042\"><span style=\"background-color: transparent;\"><b>Why are you applying for this position?</b></span></font></p><p><font color=\"#FF0042\"><span style=\"background-color: transparent;\"><span style=\"background-color: transparent;\"><font color=\"#FFFFFF\">To help benefit the community and stop the rule breakers.</font></span><b><br></b></span></font></p><p><font color=\"#FF0042\"><span style=\"background-color: transparent;\"><b><br></b></span></font></p><p><font color=\"#FF0042\"><span style=\"background-color: transparent;\"><b>How well do you know the rules and how often do you apply them?</b></span></font></p><p><font color=\"#FF0042\"><span style=\"background-color: transparent;\"><span style=\"background-color: transparent;\"><font color=\"#FFFFFF\">I know all the rules and apply them on a daily basis.</font></span><b><br></b></span></font></p><p><font color=\"#FF0042\"><span style=\"background-color: transparent;\"><b><br></b></span></font></p><p><font color=\"#FF0042\"><span style=\"background-color: transparent;\"><b>How long have you been with AIMARENA?</b></span></font></p><p><font color=\"#FF0042\"><span style=\"background-color: transparent;\"><span style=\"background-color: transparent;\"><font color=\"#FFFFFF\">Since it started.</font></span><b><br></b></span></font></p><p><font color=\"#FF0042\"><span style=\"background-color: transparent;\"><b><br></b></span></font></p><p><font color=\"#FF0042\"><span style=\"background-color: transparent;\"><b>How often are you available?</b></span></font></p><p><font color=\"#FF0042\"><span style=\"background-color: transparent;\"><span style=\"background-color: transparent;\"><font color=\"#FFFFFF\">I\'m available all day.</font></span><b><br></b></span></font></p><p><font color=\"#FF0042\"><span style=\"background-color: transparent;\"><b><br></b></span></font></p><p><font color=\"#FF0042\"><span style=\"background-color: transparent;\"><b>Additional information<font color=\"#6BADDE\"> (optional)</font>:</b></span></font></p><p><font color=\"#FF0042\"><span style=\"background-color: transparent;\"><span style=\"background-color: transparent;\"><font color=\"#FFFFFF\">Due to time zone differences I might not be on when the website is most active.</font></span><b><br></b></span></font></p>', '2021-05-28 17:13:15.137922', '', 0, 0, 0, NULL, 18, 9, 0, 0, 0, 0, 2),
(193, 'Appeal Template', '', '<p><b><span style=\"background-color: transparent;\"><font color=\"#FF0042\">Ban Reason:</font></span></b></p><p>Post spamming.<br></p><p><br></p><p><span style=\"background-color: transparent;\"><font color=\"#FF0042\"><b>Ban Duration:</b></font></span></p><p>1 week.<br></p><p><br></p><p><span style=\"background-color: transparent;\"><font color=\"#FF0042\"><b>Why do you think you should be unbanned?</b></font></span></p><p>I made a simple mistake and I promise to change.<br></p><p><br></p>', '2021-05-28 17:24:51.667414', '', 1, 0, 1, NULL, 18, 10, 0, 0, 0, 0, 0),
(194, 'Report Template', '', 'Username of the person reported:HassanAzzez123Incident location:Casual game mode.Reason:Cheating.Proof (optional):I have no proof but I think he\'s very suspicious.Additional information (optional):One day he was horrible the next day he got to the top of the leaderboard.', '2021-05-28 17:32:49.664995', '', 0, 1, 0, NULL, 18, 11, 0, 0, 0, 0, 4),
(195, 'Report Template', '', '<p><font color=\"#FF0042\"><b>Username of the person reported:</b></font></p><p>HassanAzzez123</p><p><br></p><p><span style=\"background-color: transparent;\"><b><font color=\"#FF0042\">Incident location:</font></b></span></p><p>General Discussion.<br></p><p><span style=\"background-color: transparent;\"><font color=\"#FF0042\"><br></font></span></p><p><b><span style=\"background-color: transparent;\"><font color=\"#FF0042\">Reason:</font></span></b></p><p>Spamming.<br></p><p><br></p><p><b><span style=\"background-color: transparent;\"><font color=\"#FF0042\">Proof <font color=\"#6BADDE\">(optional)</font>:</font></span></b></p><p>The posts are still there.<br></p><p><span style=\"background-color: transparent;\"><font color=\"#FF0042\"><br></font></span></p><p><span style=\"background-color: transparent;\"><font color=\"#FF0042\"><b>Additional information <span style=\"background-color: transparent;\"><font color=\"#6BADDE\">(optional)</font></span>:</b></font></span></p><p>He\'s telling others to spam.<br><b></b><br></p>', '2021-05-28 17:41:14.080745', '', 1, 0, 1, NULL, 18, 11, 0, 0, 0, 0, 2),
(196, 'Bug Report Template', '', '<p><font color=\"#FF0042\"><b>Bug:</b></font></p><p>My score is not showing when I finish the game.<br></p><p><font color=\"#FF0042\"><b><br></b></font></p><p><font color=\"#FF0042\"><b>Bug Location:</b></font></p><p>Ranked game mode.<br></p><p><font color=\"#FF0042\"><b><br></b></font></p><p><font color=\"#FF0042\"><b>Proof <font color=\"#6BADDE\">(optional)</font>:</b></font><br></p><p>Multiple users have the same bug.<br></p><p></p>', '2021-05-28 17:46:16.984577', '', 1, 0, 1, NULL, 18, 17, 0, 0, 0, 0, 2),
(199, 'Game of the year 2020', '', '<p>What do you guys think should be the game of the year in 2020?</p>', '2021-05-30 17:02:00.261605', '', 0, 0, 0, NULL, 18, 4, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts_likes`
--

CREATE TABLE `posts_likes` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `userreg_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts_likes`
--

INSERT INTO `posts_likes` (`id`, `post_id`, `userreg_id`) VALUES
(1, 183, 2),
(2, 184, 2),
(3, 188, 16),
(4, 188, 18);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_desc` varchar(200) NOT NULL,
  `product_type` varchar(200) NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_spriteimage` varchar(100) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_desc`, `product_type`, `product_image`, `product_price`, `product_spriteimage`, `is_deleted`) VALUES
(1, 'CS:GO target', 'Get familiar with CS:GO targets.', 'Target', 'AimArenaSun05210340csgo.jpeg', 250, 'AimArenaSun05210340sprite3.png', 0),
(3, 'R6S target', 'Get familiar with green helmets.', 'Target', 'green3.jpg', 100, 'sprite2.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` int(11) NOT NULL,
  `ban` tinyint(1) DEFAULT NULL,
  `kick` tinyint(1) DEFAULT NULL,
  `manage_posts` tinyint(1) DEFAULT NULL,
  `textwelcome` tinyint(1) DEFAULT NULL,
  `email` tinyint(1) DEFAULT NULL,
  `can_access` tinyint(1) DEFAULT NULL,
  `can_view` tinyint(1) DEFAULT NULL,
  `can_promote` tinyint(1) DEFAULT NULL,
  `Role_id_id` int(11) NOT NULL,
  `permission_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `ban`, `kick`, `manage_posts`, `textwelcome`, `email`, `can_access`, `can_view`, `can_promote`, `Role_id_id`, `permission_id_id`) VALUES
(1, 1, 1, 1, 1, 1, 0, 1, 1, 2, 1),
(2, 0, 0, 0, 1, 1, 0, 0, 0, 4, 5),
(3, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3),
(4, 0, 1, 1, 1, 0, 0, 1, 0, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `subtopic`
--

CREATE TABLE `subtopic` (
  `id` int(11) NOT NULL,
  `sub_topic_title` varchar(120) NOT NULL,
  `sub_topic_description` varchar(200) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `accepted_visible` tinyint(1) NOT NULL,
  `acceptedappeal_visible` tinyint(1) NOT NULL,
  `is_visible` tinyint(1) NOT NULL,
  `pinned_visible` tinyint(1) NOT NULL,
  `rejected_visible` tinyint(1) NOT NULL,
  `rejectedappeal_visible` tinyint(1) NOT NULL,
  `subtopic_deleted` tinyint(1) NOT NULL,
  `subtopic_visible` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subtopic`
--

INSERT INTO `subtopic` (`id`, `sub_topic_title`, `sub_topic_description`, `topic_id`, `slug`, `accepted_visible`, `acceptedappeal_visible`, `is_visible`, `pinned_visible`, `rejected_visible`, `rejectedappeal_visible`, `subtopic_deleted`, `subtopic_visible`) VALUES
(1, 'Announcements', 'Game and Forum status updates', 1, 'announcements', 0, 0, 0, 1, 0, 0, 0, 1),
(2, 'Website Suggestions', 'Improve our website with your suggestions', 1, 'suggestions', 0, 0, 1, 1, 0, 0, 0, 1),
(3, 'Member Introductions', 'Introduce yourself to the community', 2, 'intro', 0, 0, 1, 1, 0, 0, 0, 1),
(4, 'General Discussions', 'Talk about anything you like', 2, 'discuss', 0, 0, 1, 1, 0, 0, 0, 1),
(5, 'Memes', 'Show off your dankest memes', 2, 'memes', 0, 0, 1, 1, 0, 0, 0, 1),
(9, 'Staff Applications', 'Apply to become a staff member', 3, 'staff-app', 1, 0, 1, 1, 1, 0, 0, 1),
(10, 'Appeals', 'Appeal here if you feel you were wrongly punished', 3, 'appeal', 0, 1, 1, 1, 0, 1, 0, 1),
(11, 'Reports', 'Report an abusing staff member or rule breakers', 3, 'report', 0, 0, 1, 1, 0, 0, 0, 1),
(17, 'Bug Reports', 'Report any bug you may have found in the website', 3, 'bug-rep', 0, 0, 1, 1, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `id` int(11) NOT NULL,
  `topic_title` varchar(120) NOT NULL,
  `topic_description` varchar(200) NOT NULL,
  `is_visible` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`id`, `topic_title`, `topic_description`, `is_visible`, `is_deleted`) VALUES
(1, 'General', 'General posts', 1, 0),
(2, 'Community', 'Community posts', 1, 0),
(3, 'Staff Area', 'Staff related posts', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `unsubscribefeedback`
--

CREATE TABLE `unsubscribefeedback` (
  `id` int(11) NOT NULL,
  `feedbackname` varchar(250) NOT NULL,
  `message` varchar(250) DEFAULT NULL,
  `emailnewid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `useregister`
--

CREATE TABLE `useregister` (
  `id` int(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Useremail` varchar(100) NOT NULL,
  `Firstname` varchar(100) NOT NULL,
  `Lastname` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `datecreated` datetime(6) NOT NULL,
  `user_thumbnail` varchar(100) NOT NULL,
  `Role_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `useregister`
--

INSERT INTO `useregister` (`id`, `Username`, `Useremail`, `Firstname`, `Lastname`, `password`, `datecreated`, `user_thumbnail`, `Role_id`, `is_active`) VALUES
(2, 'admin', 'gtagta957@gmail.com', 'admin', 'admin', '$pbkdf2-sha256$29000$JcQ4pxSilLJWKmWsVUoJwQ$MSvFxtL1X6uYJ.2WCUh7DMaXS65RrlF88eGRtmtmfiM', '2021-03-30 14:23:59.000000', 'default.jpg', 2, 1),
(3, 'ali', 'ali@gmail.com', 'Ali', 'Homsi', '$pbkdf2-sha256$29000$7H0vBWAMgTAmhPA.x/i/9w$lQ.7t1bFbCegYK0VE4VbuEsR9EVF240delo0VDUZV7M', '2021-03-30 13:13:30.978206', 'aim_PNG42.png', 3, 1),
(12, 'aehmsi', 'aehomsi6@gmail.com', 'ali', 'homsi', '$pbkdf2-sha256$29000$6N3b.98bozTGuBcCoHTuvQ$rtAT6w5CjC9ZiuRK67LGC732yq5VgWSb9H9Drp9ViVE', '2021-05-07 16:51:33.948378', 'default.jpg', 4, 1),
(14, 'aehmsi1', 'ahmsitest1@gmail.com', 'ali', 'homsi', '$pbkdf2-sha256$29000$Uerde29tzXkvpVSqtXbOGQ$a9P3vjw8aSxsTSwlz29XokVt28s1/qQhiN0Z72raxpM', '2021-05-10 19:03:22.036871', 'userpic1_p2cSUSL.jpg', 1, 1),
(15, 'johndoe', 'johndoeex1@gmail.com', 'John', 'Doe', '$pbkdf2-sha256$29000$7H0vBWAMgTAmhPA.x/i/9w$lQ.7t1bFbCegYK0VE4VbuEsR9EVF240delo0VDUZV7M', '2021-05-18 11:29:34.725623', 'default.jpg', 1, 1),
(16, 'HassanAzez123', 'hkazzaz100@gmail.com', 'Hassan', 'Azez', '$pbkdf2-sha256$29000$7H0vBWAMgTAmhPA.x/i/9w$lQ.7t1bFbCegYK0VE4VbuEsR9EVF240delo0VDUZV7M', '2021-05-18 11:29:34.725623', 'userpic1_OHzUrX4.jpg', 1, 1),
(17, 'SamGeorge98', 'SamGeorge98@gmail.com', 'Sam', 'George', '$pbkdf2-sha256$29000$7H0vBWAMgTAmhPA.x/i/9w$lQ.7t1bFbCegYK0VE4VbuEsR9EVF240delo0VDUZV7M', '2021-05-18 11:29:34.725623', 'default_dgsbBfH.jpg', 1, 1),
(18, 'bachar97', 'bacharsabra@hotmail.com', 'Bachar', 'Sabra', '$pbkdf2-sha256$29000$hbD2XotRKiUEIITQutf6fw$g0B15fDLhoEnaMougVkW9AT0nayTNUntWOqdKKsnnv0', '2021-05-26 21:31:10.592213', 'default.jpg', 2, 1),
(19, 'bachartest', 'bachar.a.sabra@gmail.com', 'Bachar', 'Sabra', '$pbkdf2-sha256$29000$C2GMMaZUCiGkdE6J0ZpTyg$AzbxxcP3b2Uv79CU/Wct38xK2wETrtF2jzjy/QBxYPg', '2021-05-30 16:18:34.720648', 'default.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `userproducts`
--

CREATE TABLE `userproducts` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userproducts`
--

INSERT INTO `userproducts` (`id`, `product_id`, `user_id`) VALUES
(1, 1, 18),
(2, 1, 19);

-- --------------------------------------------------------

--
-- Table structure for table `userrole`
--

CREATE TABLE `userrole` (
  `id` int(11) NOT NULL,
  `RoleName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userrole`
--

INSERT INTO `userrole` (`id`, `RoleName`) VALUES
(1, 'User'),
(2, 'Admin'),
(3, 'Forum Moderator'),
(4, 'Customer Service');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_actions`
--
ALTER TABLE `admin_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_actions_user_id_id_46049516_fk_useregister_id` (`user_id_id`);

--
-- Indexes for table `authapp_usersession`
--
ALTER TABLE `authapp_usersession`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authapp_usersession_session_id_cba0858b_fk_django_se` (`session_id`),
  ADD KEY `authapp_usersession_user_id_3647626d_fk_useregister_id` (`user_id`);

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
-- Indexes for table `banfromforum`
--
ALTER TABLE `banfromforum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Banfromforum_user_id_id_7174f2b1_fk_useregister_id` (`user_id_id`),
  ADD KEY `Banfromforum_banned_by_id_6b33bbbf_fk_useregister_id` (`banned_by_id`);

--
-- Indexes for table `banfromgame`
--
ALTER TABLE `banfromgame`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Banfromgame_user_id_id_9c6f7ca8_fk_useregister_id` (`user_id_id`),
  ADD KEY `Banfromgame_banned_by_id_36ee9582_fk_useregister_id` (`banned_by_id`);

--
-- Indexes for table `chat_chat`
--
ALTER TABLE `chat_chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_chat_roomid_id_f4b234ab_fk_chat_room_id` (`roomid_id`),
  ADD KEY `chat_chat_uid_id_513888b0_fk_useregister_id` (`uid_id`);

--
-- Indexes for table `chat_room`
--
ALTER TABLE `chat_room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Comment_post_id_13b5862e_fk_posts_id` (`post_id`),
  ADD KEY `Comment_reply_id_18356f4f_fk_Comment_id` (`reply_id`),
  ADD KEY `Comment_user_id_1cbe86a2_fk_useregister_id` (`user_id`);

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
-- Indexes for table `emaillogs`
--
ALTER TABLE `emaillogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_emaillogs_user_id_a4dae433_fk_useregister_id` (`user_id`);

--
-- Indexes for table `emailnews`
--
ALTER TABLE `emailnews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emailnews_userid_id_5c61cf6d_fk_useregister_id` (`userid_id`);

--
-- Indexes for table `forum_notification`
--
ALTER TABLE `forum_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_notification_post_id_2cc74c40_fk_posts_id` (`post_id`),
  ADD KEY `forum_notification_sender_id_21387523_fk_useregister_id` (`sender_id`),
  ADD KEY `forum_notification_user_id_448eeb71_fk_useregister_id` (`user_id`);

--
-- Indexes for table `forum_subtopiclatestposts`
--
ALTER TABLE `forum_subtopiclatestposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_subtopiclatestposts_subtopicnew_id_4ce2b438_fk_subtopic_id` (`subtopicnew_id`),
  ADD KEY `forum_subtopiclatestposts_user_id_2bb26bda_fk_useregister_id` (`user_id`);

--
-- Indexes for table `home_newsbanner`
--
ALTER TABLE `home_newsbanner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_newsbanner_updated_by_id_d3bfc700_fk_useregister_id` (`updated_by_id`);

--
-- Indexes for table `kickedfromwebsite`
--
ALTER TABLE `kickedfromwebsite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kickedfromwebsite_user_id_id_a1dffa57_fk_useregister_id` (`user_id_id`),
  ADD KEY `kickedfromwebsite_kicked_by_id_d060fa09_fk_useregister_id` (`kicked_by_id`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login_details_user_id_id_7d2b2015_fk_useregister_id` (`user_id_id`);

--
-- Indexes for table `nonmotiongame_game`
--
ALTER TABLE `nonmotiongame_game`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nonmotiongame_game_Game_Mode_ID_id_0d13f5ff_fk_nonmotion` (`Game_Mode_ID_id`),
  ADD KEY `nonmotiongame_game_User_ID_id_e5011b12_fk_useregister_id` (`User_ID_id`);

--
-- Indexes for table `nonmotiongame_gamemode_user`
--
ALTER TABLE `nonmotiongame_gamemode_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nonmotiongame_gamemo_Game_Mode_ID_id_37dff902_fk_nonmotion` (`Game_Mode_ID_id`),
  ADD KEY `nonmotiongame_gamemo_Rank_id_2fff30a0_fk_nonmotion` (`Rank_id`),
  ADD KEY `nonmotiongame_gamemo_User_ID_id_9eb17397_fk_useregist` (`User_ID_id`);

--
-- Indexes for table `nonmotiongame_game_mode`
--
ALTER TABLE `nonmotiongame_game_mode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nonmotiongame_game_statistics`
--
ALTER TABLE `nonmotiongame_game_statistics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nonmotiongame_game_s_Game_ID_id_b8b70997_fk_nonmotion` (`Game_ID_id`);

--
-- Indexes for table `nonmotiongame_rank`
--
ALTER TABLE `nonmotiongame_rank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nonmotiongame_user_info`
--
ALTER TABLE `nonmotiongame_user_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nonmotiongame_user_info_User_ID_id_4c6835be_fk_useregister_id` (`User_ID_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `posts_author_id_099b8aca_fk_useregister_id` (`author_id`),
  ADD KEY `posts_topic_title_id_fe5e1b64_fk_subtopic_id` (`topic_title_id`);

--
-- Indexes for table `posts_likes`
--
ALTER TABLE `posts_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_likes_post_id_userreg_id_df1dda70_uniq` (`post_id`,`userreg_id`),
  ADD KEY `posts_likes_userreg_id_6f9295f4_fk_useregister_id` (`userreg_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Role_permissions_Role_id_id_33968827_fk_userrole_id` (`Role_id_id`),
  ADD KEY `Role_permissions_permission_id_id_32eaa27c_fk_Pages_id` (`permission_id_id`);

--
-- Indexes for table `subtopic`
--
ALTER TABLE `subtopic`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `topic_topic_id_a9863d2b_fk_forum_topic_id` (`topic_id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unsubscribefeedback`
--
ALTER TABLE `unsubscribefeedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unsubscribefeedback_emailnewid_id_33365938_fk_emailnews_id` (`emailnewid_id`);

--
-- Indexes for table `useregister`
--
ALTER TABLE `useregister`
  ADD PRIMARY KEY (`id`),
  ADD KEY `useregister_Role_id_74f67bd7_fk_userrole_id` (`Role_id`);

--
-- Indexes for table `userproducts`
--
ALTER TABLE `userproducts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userproducts_product_id_7d380e8c_fk_products_id` (`product_id`),
  ADD KEY `userproducts_user_id_82ffed38_fk_useregister_id` (`user_id`);

--
-- Indexes for table `userrole`
--
ALTER TABLE `userrole`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_actions`
--
ALTER TABLE `admin_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `authapp_usersession`
--
ALTER TABLE `authapp_usersession`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `banfromforum`
--
ALTER TABLE `banfromforum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banfromgame`
--
ALTER TABLE `banfromgame`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_chat`
--
ALTER TABLE `chat_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `chat_room`
--
ALTER TABLE `chat_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `emaillogs`
--
ALTER TABLE `emaillogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `emailnews`
--
ALTER TABLE `emailnews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_notification`
--
ALTER TABLE `forum_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `forum_subtopiclatestposts`
--
ALTER TABLE `forum_subtopiclatestposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `home_newsbanner`
--
ALTER TABLE `home_newsbanner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kickedfromwebsite`
--
ALTER TABLE `kickedfromwebsite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nonmotiongame_game`
--
ALTER TABLE `nonmotiongame_game`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=444;

--
-- AUTO_INCREMENT for table `nonmotiongame_gamemode_user`
--
ALTER TABLE `nonmotiongame_gamemode_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `nonmotiongame_game_mode`
--
ALTER TABLE `nonmotiongame_game_mode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nonmotiongame_game_statistics`
--
ALTER TABLE `nonmotiongame_game_statistics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT for table `nonmotiongame_rank`
--
ALTER TABLE `nonmotiongame_rank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nonmotiongame_user_info`
--
ALTER TABLE `nonmotiongame_user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `posts_likes`
--
ALTER TABLE `posts_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subtopic`
--
ALTER TABLE `subtopic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `unsubscribefeedback`
--
ALTER TABLE `unsubscribefeedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `useregister`
--
ALTER TABLE `useregister`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `userproducts`
--
ALTER TABLE `userproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `userrole`
--
ALTER TABLE `userrole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_actions`
--
ALTER TABLE `admin_actions`
  ADD CONSTRAINT `admin_actions_user_id_id_46049516_fk_useregister_id` FOREIGN KEY (`user_id_id`) REFERENCES `useregister` (`id`);

--
-- Constraints for table `authapp_usersession`
--
ALTER TABLE `authapp_usersession`
  ADD CONSTRAINT `authapp_usersession_session_id_cba0858b_fk_django_se` FOREIGN KEY (`session_id`) REFERENCES `django_session` (`session_key`),
  ADD CONSTRAINT `authapp_usersession_user_id_3647626d_fk_useregister_id` FOREIGN KEY (`user_id`) REFERENCES `useregister` (`id`);

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
-- Constraints for table `banfromforum`
--
ALTER TABLE `banfromforum`
  ADD CONSTRAINT `Banfromforum_banned_by_id_6b33bbbf_fk_useregister_id` FOREIGN KEY (`banned_by_id`) REFERENCES `useregister` (`id`),
  ADD CONSTRAINT `Banfromforum_user_id_id_7174f2b1_fk_useregister_id` FOREIGN KEY (`user_id_id`) REFERENCES `useregister` (`id`);

--
-- Constraints for table `banfromgame`
--
ALTER TABLE `banfromgame`
  ADD CONSTRAINT `Banfromgame_banned_by_id_36ee9582_fk_useregister_id` FOREIGN KEY (`banned_by_id`) REFERENCES `useregister` (`id`),
  ADD CONSTRAINT `Banfromgame_user_id_id_9c6f7ca8_fk_useregister_id` FOREIGN KEY (`user_id_id`) REFERENCES `useregister` (`id`);

--
-- Constraints for table `chat_chat`
--
ALTER TABLE `chat_chat`
  ADD CONSTRAINT `chat_chat_roomid_id_f4b234ab_fk_chat_room_id` FOREIGN KEY (`roomid_id`) REFERENCES `chat_room` (`id`),
  ADD CONSTRAINT `chat_chat_uid_id_513888b0_fk_useregister_id` FOREIGN KEY (`uid_id`) REFERENCES `useregister` (`id`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `Comment_post_id_13b5862e_fk_posts_id` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `Comment_reply_id_18356f4f_fk_Comment_id` FOREIGN KEY (`reply_id`) REFERENCES `comment` (`id`),
  ADD CONSTRAINT `Comment_user_id_1cbe86a2_fk_useregister_id` FOREIGN KEY (`user_id`) REFERENCES `useregister` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `emaillogs`
--
ALTER TABLE `emaillogs`
  ADD CONSTRAINT `forum_emaillogs_user_id_a4dae433_fk_useregister_id` FOREIGN KEY (`user_id`) REFERENCES `useregister` (`id`);

--
-- Constraints for table `emailnews`
--
ALTER TABLE `emailnews`
  ADD CONSTRAINT `emailnews_userid_id_5c61cf6d_fk_useregister_id` FOREIGN KEY (`userid_id`) REFERENCES `useregister` (`id`);

--
-- Constraints for table `forum_notification`
--
ALTER TABLE `forum_notification`
  ADD CONSTRAINT `forum_notification_post_id_2cc74c40_fk_posts_id` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `forum_notification_sender_id_21387523_fk_useregister_id` FOREIGN KEY (`sender_id`) REFERENCES `useregister` (`id`),
  ADD CONSTRAINT `forum_notification_user_id_448eeb71_fk_useregister_id` FOREIGN KEY (`user_id`) REFERENCES `useregister` (`id`);

--
-- Constraints for table `forum_subtopiclatestposts`
--
ALTER TABLE `forum_subtopiclatestposts`
  ADD CONSTRAINT `forum_subtopiclatestposts_subtopicnew_id_4ce2b438_fk_subtopic_id` FOREIGN KEY (`subtopicnew_id`) REFERENCES `subtopic` (`id`),
  ADD CONSTRAINT `forum_subtopiclatestposts_user_id_2bb26bda_fk_useregister_id` FOREIGN KEY (`user_id`) REFERENCES `useregister` (`id`);

--
-- Constraints for table `home_newsbanner`
--
ALTER TABLE `home_newsbanner`
  ADD CONSTRAINT `home_newsbanner_updated_by_id_d3bfc700_fk_useregister_id` FOREIGN KEY (`updated_by_id`) REFERENCES `useregister` (`id`);

--
-- Constraints for table `kickedfromwebsite`
--
ALTER TABLE `kickedfromwebsite`
  ADD CONSTRAINT `kickedfromwebsite_kicked_by_id_d060fa09_fk_useregister_id` FOREIGN KEY (`kicked_by_id`) REFERENCES `useregister` (`id`),
  ADD CONSTRAINT `kickedfromwebsite_user_id_id_a1dffa57_fk_useregister_id` FOREIGN KEY (`user_id_id`) REFERENCES `useregister` (`id`);

--
-- Constraints for table `login_details`
--
ALTER TABLE `login_details`
  ADD CONSTRAINT `login_details_user_id_id_7d2b2015_fk_useregister_id` FOREIGN KEY (`user_id_id`) REFERENCES `useregister` (`id`);

--
-- Constraints for table `nonmotiongame_game`
--
ALTER TABLE `nonmotiongame_game`
  ADD CONSTRAINT `nonmotiongame_game_Game_Mode_ID_id_0d13f5ff_fk_nonmotion` FOREIGN KEY (`Game_Mode_ID_id`) REFERENCES `nonmotiongame_game_mode` (`id`),
  ADD CONSTRAINT `nonmotiongame_game_User_ID_id_e5011b12_fk_useregister_id` FOREIGN KEY (`User_ID_id`) REFERENCES `useregister` (`id`);

--
-- Constraints for table `nonmotiongame_gamemode_user`
--
ALTER TABLE `nonmotiongame_gamemode_user`
  ADD CONSTRAINT `nonmotiongame_gamemo_Game_Mode_ID_id_37dff902_fk_nonmotion` FOREIGN KEY (`Game_Mode_ID_id`) REFERENCES `nonmotiongame_game_mode` (`id`),
  ADD CONSTRAINT `nonmotiongame_gamemo_Rank_id_2fff30a0_fk_nonmotion` FOREIGN KEY (`Rank_id`) REFERENCES `nonmotiongame_rank` (`id`),
  ADD CONSTRAINT `nonmotiongame_gamemo_User_ID_id_9eb17397_fk_useregist` FOREIGN KEY (`User_ID_id`) REFERENCES `useregister` (`id`);

--
-- Constraints for table `nonmotiongame_game_statistics`
--
ALTER TABLE `nonmotiongame_game_statistics`
  ADD CONSTRAINT `nonmotiongame_game_s_Game_ID_id_b8b70997_fk_nonmotion` FOREIGN KEY (`Game_ID_id`) REFERENCES `nonmotiongame_game` (`id`);

--
-- Constraints for table `nonmotiongame_user_info`
--
ALTER TABLE `nonmotiongame_user_info`
  ADD CONSTRAINT `nonmotiongame_user_info_User_ID_id_4c6835be_fk_useregister_id` FOREIGN KEY (`User_ID_id`) REFERENCES `useregister` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_099b8aca_fk_useregister_id` FOREIGN KEY (`author_id`) REFERENCES `useregister` (`id`),
  ADD CONSTRAINT `posts_topic_title_id_fe5e1b64_fk_subtopic_id` FOREIGN KEY (`topic_title_id`) REFERENCES `subtopic` (`id`);

--
-- Constraints for table `posts_likes`
--
ALTER TABLE `posts_likes`
  ADD CONSTRAINT `posts_likes_post_id_fdc16e31_fk_posts_id` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `posts_likes_userreg_id_6f9295f4_fk_useregister_id` FOREIGN KEY (`userreg_id`) REFERENCES `useregister` (`id`);

--
-- Constraints for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `Role_permissions_Role_id_id_33968827_fk_userrole_id` FOREIGN KEY (`Role_id_id`) REFERENCES `userrole` (`id`),
  ADD CONSTRAINT `Role_permissions_permission_id_id_32eaa27c_fk_Pages_id` FOREIGN KEY (`permission_id_id`) REFERENCES `pages` (`id`);

--
-- Constraints for table `subtopic`
--
ALTER TABLE `subtopic`
  ADD CONSTRAINT `topic_topic_id_a9863d2b_fk_forum_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`id`);

--
-- Constraints for table `unsubscribefeedback`
--
ALTER TABLE `unsubscribefeedback`
  ADD CONSTRAINT `unsubscribefeedback_emailnewid_id_33365938_fk_emailnews_id` FOREIGN KEY (`emailnewid_id`) REFERENCES `emailnews` (`id`);

--
-- Constraints for table `useregister`
--
ALTER TABLE `useregister`
  ADD CONSTRAINT `useregister_Role_id_74f67bd7_fk_userrole_id` FOREIGN KEY (`Role_id`) REFERENCES `userrole` (`id`);

--
-- Constraints for table `userproducts`
--
ALTER TABLE `userproducts`
  ADD CONSTRAINT `userproducts_product_id_7d380e8c_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `userproducts_user_id_82ffed38_fk_useregister_id` FOREIGN KEY (`user_id`) REFERENCES `useregister` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
