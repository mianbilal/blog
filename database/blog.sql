-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2018 at 08:55 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', '2018-07-18 01:30:00', '2018-07-18 01:30:00'),
(2, 'PHP', '2018-07-18 01:30:09', '2018-07-18 01:30:09'),
(3, 'Ruby On Rails', '2018-07-18 01:30:30', '2018-07-18 01:30:30'),
(4, 'Wordpress', '2018-07-18 01:30:43', '2018-07-18 01:30:43'),
(5, 'Drupal', '2018-07-18 01:30:58', '2018-07-18 01:30:58'),
(6, 'Tutorials', '2018-07-18 01:31:12', '2018-07-18 01:31:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(248, '2014_10_12_000000_create_users_table', 1),
(249, '2014_10_12_100000_create_password_resets_table', 1),
(250, '2018_07_15_043956_create_posts_table', 1),
(251, '2018_07_15_044612_create_categories_table', 1),
(252, '2018_07_16_095713_create_tags_table', 1),
(253, '2018_07_16_100602_create_post_tag_table', 1),
(254, '2018_07_16_134851_create_profiles_table', 1),
(255, '2018_07_18_035311_create_settings_table', 1),
(256, '2018_07_18_133006_insert_user_id_column', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `featured` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `category_id`, `featured`, `deleted_at`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Hard working pays off', 'hard-working-pays-off', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam interdum volutpat ullamcorper. Duis sit amet scelerisque mauris, sit amet aliquet nibh. Nunc nec est ut neque blandit ultrices non eu massa. Duis elementum mollis felis, ac dapibus nisi pellentesque dapibus. Duis imperdiet dolor ligula, ut mollis massa aliquet vel. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vestibulum accumsan magna, quis imperdiet quam dapibus in.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Aliquam accumsan, nisi sit amet fermentum tristique, enim diam feugiat magna, at eleifend ligula urna vel lorem. Morbi id leo et augue tristique efficitur et sit amet dolor. Aliquam erat volutpat. Sed et maximus leo. Quisque eu fermentum nunc, vitae volutpat sem. Curabitur nec auctor justo. Ut aliquam vehicula mi non porta. Donec sit amet mi neque. Nulla consectetur ligula tortor, vitae viverra neque molestie ut. Nunc tincidunt sem turpis, non ornare lacus tempor quis. Proin dignissim elementum risus id semper. Proin ac enim at risus porttitor facilisis.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Aenean vel luctus odio. Aliquam commodo mi est, eu varius lectus luctus ut. Duis placerat sapien in eros pretium, id porta enim pharetra. Fusce euismod mauris in metus auctor auctor. Morbi pellentesque, purus quis placerat tristique, neque leo blandit sem, id varius neque eros vel odio. Etiam sed elementum felis. Donec egestas pellentesque venenatis. Sed blandit nisi vestibulum nibh pretium euismod. Proin nunc quam, ultricies id sem eget, molestie gravida enim.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Aliquam placerat nunc a sollicitudin suscipit. Curabitur rhoncus libero id sagittis pretium. Donec eu justo ante. Vivamus convallis bibendum tincidunt. Vivamus et leo ut nulla hendrerit semper. Duis mollis nunc vel risus pharetra sagittis. Donec vel hendrerit nisl. Aenean pretium diam nisi, eget ultrices felis laoreet laoreet. Proin sapien lorem, interdum mollis sem a, hendrerit venenatis tortor. Nulla a justo velit. Vestibulum facilisis sed turpis quis ultrices. Quisque lacinia tellus et diam cursus, ut egestas purus elementum. Phasellus vitae sem in tortor hendrerit lacinia vel imperdiet magna. Sed non sapien sed leo lobortis condimentum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Vestibulum ullamcorper libero vel erat volutpat, a sollicitudin quam efficitur. Sed laoreet, ex sed euismod tristique, nisi nunc cursus magna, nec auctor magna metus non augue. Cras faucibus, enim vel maximus varius, neque urna pellentesque diam, id mollis nulla urna ac ante. Suspendisse sollicitudin, mi ut porttitor tempor, ex libero bibendum lectus, nec rutrum nibh ligula ut leo. Donec sed hendrerit ipsum. Integer a laoreet ex. Proin porta eros nunc, sed tempus eros pretium nec. Duis laoreet luctus eros ac iaculis. Donec nec posuere enim, non porta magna. Ut pellentesque interdum dictum. Praesent sed enim laoreet, volutpat lectus sit amet, fermentum sapien. Mauris mollis orci in quam porta scelerisque. Quisque in varius eros. Pellentesque eleifend posuere diam sed scelerisque. Vivamus sem erat, cursus sit amet nisl at, pulvinar commodo velit. Vivamus a pharetra orci.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Nam lorem purus, efficitur id pretium ac, laoreet quis eros. Proin blandit dolor vitae vulputate porttitor. Aliquam erat volutpat. Vestibulum arcu magna, fermentum non purus sed, interdum rutrum tellus. Integer quam purus, dapibus quis lorem ut, hendrerit maximus urna. Pellentesque ut urna eu nisl hendrerit finibus sed sit amet leo. Donec vitae ultrices erat. Vivamus blandit convallis blandit.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Cras mattis, justo in aliquam elementum, nunc quam consectetur mauris, ut rhoncus nibh nibh in augue. Nam a nunc urna. Sed eget quam fringilla, finibus nunc eget, ultrices purus. In magna dui, dignissim vel dui sed, hendrerit ultrices lectus. Proin felis lacus, viverra quis consequat vel, vestibulum eget elit. Sed sodales ultricies vulputate. Praesent vitae dui ornare, ullamcorper eros quis, finibus nisl.</p>', 6, '/uploads/posts/15318964431_smiley-128.png', NULL, '2018-07-18 01:47:24', '2018-07-18 02:39:47', 1),
(2, 'My Story of a great life', 'my-story-o-s-a-life', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam interdum volutpat ullamcorper. Duis sit amet scelerisque mauris, sit amet aliquet nibh. Nunc nec est ut neque blandit ultrices non eu massa. Duis elementum mollis felis, ac dapibus nisi pellentesque dapibus. Duis imperdiet dolor ligula, ut mollis massa aliquet vel. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vestibulum accumsan magna, quis imperdiet quam dapibus in.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Aliquam accumsan, nisi sit amet fermentum tristique, enim diam feugiat magna, at eleifend ligula urna vel lorem. Morbi id leo et augue tristique efficitur et sit amet dolor. Aliquam erat volutpat. Sed et maximus leo. Quisque eu fermentum nunc, vitae volutpat sem. Curabitur nec auctor justo. Ut aliquam vehicula mi non porta. Donec sit amet mi neque. Nulla consectetur ligula tortor, vitae viverra neque molestie ut. Nunc tincidunt sem turpis, non ornare lacus tempor quis. Proin dignissim elementum risus id semper. Proin ac enim at risus porttitor facilisis.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Aenean vel luctus odio. Aliquam commodo mi est, eu varius lectus luctus ut. Duis placerat sapien in eros pretium, id porta enim pharetra. Fusce euismod mauris in metus auctor auctor. Morbi pellentesque, purus quis placerat tristique, neque leo blandit sem, id varius neque eros vel odio. Etiam sed elementum felis. Donec egestas pellentesque venenatis. Sed blandit nisi vestibulum nibh pretium euismod. Proin nunc quam, ultricies id sem eget, molestie gravida enim.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Aliquam placerat nunc a sollicitudin suscipit. Curabitur rhoncus libero id sagittis pretium. Donec eu justo ante. Vivamus convallis bibendum tincidunt. Vivamus et leo ut nulla hendrerit semper. Duis mollis nunc vel risus pharetra sagittis. Donec vel hendrerit nisl. Aenean pretium diam nisi, eget ultrices felis laoreet laoreet. Proin sapien lorem, interdum mollis sem a, hendrerit venenatis tortor. Nulla a justo velit. Vestibulum facilisis sed turpis quis ultrices. Quisque lacinia tellus et diam cursus, ut egestas purus elementum. Phasellus vitae sem in tortor hendrerit lacinia vel imperdiet magna. Sed non sapien sed leo lobortis condimentum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Vestibulum ullamcorper libero vel erat volutpat, a sollicitudin quam efficitur. Sed laoreet, ex sed euismod tristique, nisi nunc cursus magna, nec auctor magna metus non augue. Cras faucibus, enim vel maximus varius, neque urna pellentesque diam, id mollis nulla urna ac ante. Suspendisse sollicitudin, mi ut porttitor tempor, ex libero bibendum lectus, nec rutrum nibh ligula ut leo. Donec sed hendrerit ipsum. Integer a laoreet ex. Proin porta eros nunc, sed tempus eros pretium nec. Duis laoreet luctus eros ac iaculis. Donec nec posuere enim, non porta magna. Ut pellentesque interdum dictum. Praesent sed enim laoreet, volutpat lectus sit amet, fermentum sapien. Mauris mollis orci in quam porta scelerisque. Quisque in varius eros. Pellentesque eleifend posuere diam sed scelerisque. Vivamus sem erat, cursus sit amet nisl at, pulvinar commodo velit. Vivamus a pharetra orci.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Nam lorem purus, efficitur id pretium ac, laoreet quis eros. Proin blandit dolor vitae vulputate porttitor. Aliquam erat volutpat. Vestibulum arcu magna, fermentum non purus sed, interdum rutrum tellus. Integer quam purus, dapibus quis lorem ut, hendrerit maximus urna. Pellentesque ut urna eu nisl hendrerit finibus sed sit amet leo. Donec vitae ultrices erat. Vivamus blandit convallis blandit.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Cras mattis, justo in aliquam elementum, nunc quam consectetur mauris, ut rhoncus nibh nibh in augue. Nam a nunc urna. Sed eget quam fringilla, finibus nunc eget, ultrices purus. In magna dui, dignissim vel dui sed, hendrerit ultrices lectus. Proin felis lacus, viverra quis consequat vel, vestibulum eget elit. Sed sodales ultricies vulputate. Praesent vitae dui ornare, ullamcorper eros quis, finibus nisl.</p>', 6, '/uploads/posts/153189653512_avatar-128.png', NULL, '2018-07-18 01:48:55', '2018-07-18 01:49:41', 2),
(3, 'Word press management system in review', 'word-press-management-system-in-review', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue bibendum ullamcorper. Aenean in suscipit dui. Proin in tempor odio, eget finibus lectus. Curabitur est massa, scelerisque nec iaculis vitae, ultricies in mauris. Duis ac ante erat. Nulla fermentum sit amet ex sit amet hendrerit. Sed hendrerit massa enim, scelerisque cursus massa consectetur sed.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Praesent varius sagittis velit tincidunt accumsan. Suspendisse imperdiet nunc a quam vulputate rhoncus. Nullam consequat posuere elit ut porta. Nam vel nibh sit amet magna gravida condimentum eu sed nulla. Aenean nibh est, suscipit ut augue at, cursus interdum ex. Curabitur condimentum, justo non hendrerit interdum, tortor mauris pretium nisi, quis mollis risus erat et arcu. Curabitur commodo sed lorem ac mollis. Nullam est sem, hendrerit eu ultrices eget, auctor nec velit. Cras ullamcorper imperdiet volutpat. Praesent rhoncus laoreet iaculis. Nullam bibendum arcu eu risus vulputate, in iaculis turpis sollicitudin. Aliquam sollicitudin augue a orci pharetra cursus. Fusce odio purus, vestibulum eget nisl in, tincidunt rutrum enim. Donec id vulputate elit, at posuere risus. Suspendisse leo justo, lacinia sit amet urna ac, fermentum interdum orci. Praesent condimentum posuere cursus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Nullam fermentum nulla et augue placerat aliquam. Donec volutpat consequat neque varius scelerisque. Cras quis massa eu dolor vehicula facilisis. Nam scelerisque ex ut libero venenatis finibus. Phasellus ante libero, rutrum non turpis tincidunt, pretium porttitor mauris. Morbi aliquam, massa sed sodales finibus, ipsum enim laoreet elit, sed malesuada metus libero nec justo. Nulla tempus porta viverra. Pellentesque a mauris lorem. Integer sit amet porttitor neque, quis vehicula mauris. Pellentesque viverra risus tortor, eu facilisis sem suscipit ut. Nunc velit metus, semper sit amet convallis ut, convallis hendrerit sapien. Nullam consectetur eget odio sit amet imperdiet. Etiam id interdum neque. Aenean sed ex et mauris porta pretium. Fusce ipsum neque, tincidunt eget felis eget, dictum ultrices risus. Duis purus metus, ullamcorper vel orci quis, placerat venenatis ex.</p>', 4, '/uploads/posts/1531897562images.jpg', NULL, '2018-07-18 02:06:02', '2018-07-18 02:06:02', 1),
(4, 'Hinsutan Time says Nawaz Terrorist', 'hinsutan-time-says-nawaz-terrorist', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue bibendum ullamcorper. Aenean in suscipit dui. Proin in tempor odio, eget finibus lectus. Curabitur est massa, scelerisque nec iaculis vitae, ultricies in mauris. Duis ac ante erat. Nulla fermentum sit amet ex sit amet hendrerit. Sed hendrerit massa enim, scelerisque cursus massa consectetur sed.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Praesent varius sagittis velit tincidunt accumsan. Suspendisse imperdiet nunc a quam vulputate rhoncus. Nullam consequat posuere elit ut porta. Nam vel nibh sit amet magna gravida condimentum eu sed nulla. Aenean nibh est, suscipit ut augue at, cursus interdum ex. Curabitur condimentum, justo non hendrerit interdum, tortor mauris pretium nisi, quis mollis risus erat et arcu. Curabitur commodo sed lorem ac mollis. Nullam est sem, hendrerit eu ultrices eget, auctor nec velit. Cras ullamcorper imperdiet volutpat. Praesent rhoncus laoreet iaculis. Nullam bibendum arcu eu risus vulputate, in iaculis turpis sollicitudin. Aliquam sollicitudin augue a orci pharetra cursus. Fusce odio purus, vestibulum eget nisl in, tincidunt rutrum enim. Donec id vulputate elit, at posuere risus. Suspendisse leo justo, lacinia sit amet urna ac, fermentum interdum orci. Praesent condimentum posuere cursus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Nullam fermentum nulla et augue placerat aliquam. Donec volutpat consequat neque varius scelerisque. Cras quis massa eu dolor vehicula facilisis. Nam scelerisque ex ut libero venenatis finibus. Phasellus ante libero, rutrum non turpis tincidunt, pretium porttitor mauris. Morbi aliquam, massa sed sodales finibus, ipsum enim laoreet elit, sed malesuada metus libero nec justo. Nulla tempus porta viverra. Pellentesque a mauris lorem. Integer sit amet porttitor neque, quis vehicula mauris. Pellentesque viverra risus tortor, eu facilisis sem suscipit ut. Nunc velit metus, semper sit amet convallis ut, convallis hendrerit sapien. Nullam consectetur eget odio sit amet imperdiet. Etiam id interdum neque. Aenean sed ex et mauris porta pretium. Fusce ipsum neque, tincidunt eget felis eget, dictum ultrices risus. Duis purus metus, ullamcorper vel orci quis, placerat venenatis ex.</p>', 6, '/uploads/posts/1531899838asp_technologies.jpg', NULL, '2018-07-18 02:43:58', '2018-07-18 02:44:30', 2),
(5, 'Noiths is impossible if detrmined', 'noiths-is-impossible-if-detrmined', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue bibendum ullamcorper. Aenean in suscipit dui. Proin in tempor odio, eget finibus lectus. Curabitur est massa, scelerisque nec iaculis vitae, ultricies in mauris. Duis ac ante erat. Nulla fermentum sit amet ex sit amet hendrerit. Sed hendrerit massa enim, scelerisque cursus massa consectetur sed.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Praesent varius sagittis velit tincidunt accumsan. Suspendisse imperdiet nunc a quam vulputate rhoncus. Nullam consequat posuere elit ut porta. Nam vel nibh sit amet magna gravida condimentum eu sed nulla. Aenean nibh est, suscipit ut augue at, cursus interdum ex. Curabitur condimentum, justo non hendrerit interdum, tortor mauris pretium nisi, quis mollis risus erat et arcu. Curabitur commodo sed lorem ac mollis. Nullam est sem, hendrerit eu ultrices eget, auctor nec velit. Cras ullamcorper imperdiet volutpat. Praesent rhoncus laoreet iaculis. Nullam bibendum arcu eu risus vulputate, in iaculis turpis sollicitudin. Aliquam sollicitudin augue a orci pharetra cursus. Fusce odio purus, vestibulum eget nisl in, tincidunt rutrum enim. Donec id vulputate elit, at posuere risus. Suspendisse leo justo, lacinia sit amet urna ac, fermentum interdum orci. Praesent condimentum posuere cursus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Nullam fermentum nulla et augue placerat aliquam. Donec volutpat consequat neque varius scelerisque. Cras quis massa eu dolor vehicula facilisis. Nam scelerisque ex ut libero venenatis finibus. Phasellus ante libero, rutrum non turpis tincidunt, pretium porttitor mauris. Morbi aliquam, massa sed sodales finibus, ipsum enim laoreet elit, sed malesuada metus libero nec justo. Nulla tempus porta viverra. Pellentesque a mauris lorem. Integer sit amet porttitor neque, quis vehicula mauris. Pellentesque viverra risus tortor, eu facilisis sem suscipit ut. Nunc velit metus, semper sit amet convallis ut, convallis hendrerit sapien. Nullam consectetur eget odio sit amet imperdiet. Etiam id interdum neque. Aenean sed ex et mauris porta pretium. Fusce ipsum neque, tincidunt eget felis eget, dictum ultrices risus. Duis purus metus, ullamcorper vel orci quis, placerat venenatis ex.</p>', 1, '/uploads/posts/15319004152-128.png', '2018-07-19 01:27:02', '2018-07-18 02:53:35', '2018-07-19 01:27:02', 1),
(6, 'Asp.net Artist Slogans', 'larvels-artist-slogans', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue bibendum ullamcorper. Aenean in suscipit dui. Proin in tempor odio, eget finibus lectus. Curabitur est massa, scelerisque nec iaculis vitae, ultricies in mauris. Duis ac ante erat. Nulla fermentum sit amet ex sit amet hendrerit. Sed hendrerit massa enim, scelerisque cursus massa consectetur sed.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Praesent varius sagittis velit tincidunt accumsan. Suspendisse imperdiet nunc a quam vulputate rhoncus. Nullam consequat posuere elit ut porta. Nam vel nibh sit amet magna gravida condimentum eu sed nulla. Aenean nibh est, suscipit ut augue at, cursus interdum ex. Curabitur condimentum, justo non hendrerit interdum, tortor mauris pretium nisi, quis mollis risus erat et arcu. Curabitur commodo sed lorem ac mollis. Nullam est sem, hendrerit eu ultrices eget, auctor nec velit. Cras ullamcorper imperdiet volutpat. Praesent rhoncus laoreet iaculis. Nullam bibendum arcu eu risus vulputate, in iaculis turpis sollicitudin. Aliquam sollicitudin augue a orci pharetra cursus. Fusce odio purus, vestibulum eget nisl in, tincidunt rutrum enim. Donec id vulputate elit, at posuere risus. Suspendisse leo justo, lacinia sit amet urna ac, fermentum interdum orci. Praesent condimentum posuere cursus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Nullam fermentum nulla et augue placerat aliquam. Donec volutpat consequat neque varius scelerisque. Cras quis massa eu dolor vehicula facilisis. Nam scelerisque ex ut libero venenatis finibus. Phasellus ante libero, rutrum non turpis tincidunt, pretium porttitor mauris. Morbi aliquam, massa sed sodales finibus, ipsum enim laoreet elit, sed malesuada metus libero nec justo. Nulla tempus porta viverra. Pellentesque a mauris lorem. Integer sit amet porttitor neque, quis vehicula mauris. Pellentesque viverra risus tortor, eu facilisis sem suscipit ut. Nunc velit metus, semper sit amet convallis ut, convallis hendrerit sapien. Nullam consectetur eget odio sit amet imperdiet. Etiam id interdum neque. Aenean sed ex et mauris porta pretium. Fusce ipsum neque, tincidunt eget felis eget, dictum ultrices risus. Duis purus metus, ullamcorper vel orci quis, placerat venenatis ex.</p>', 1, '/uploads/posts/1531900449develop-your-database-driven-software-web-application-and-website.jpg', NULL, '2018-07-18 02:54:09', '2018-07-19 01:51:06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, NULL, NULL),
(2, 2, 3, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 3, NULL, NULL),
(5, 5, 2, NULL, NULL),
(6, 6, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `about` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `avatar`, `user_id`, `about`, `facebook`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'uploads/avatars/1531926950avatar6.png', 1, 'Asp.net MVC and Laravel Framework Artist.', 'https://www.facebook.com', 'https://www.youtube.com', '2018-07-17 23:48:15', '2018-07-18 10:15:50'),
(2, 'uploads/avatars/1531926607avatar9.png', 2, 'Love It', 'https://www.facebook.com', 'https://www.youtube.com', '2018-07-17 23:49:30', '2018-07-18 10:10:07');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `contact_number`, `email_contact`, `address`, `created_at`, `updated_at`) VALUES
(1, 'My Blog', '042 777 333 90', 'info_blog@gamil.com', 'Lahore,Pakistan.', '2018-07-17 23:48:15', '2018-07-18 00:26:01');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `created_at`, `updated_at`) VALUES
(1, 'Wordpress', '2018-07-18 01:43:58', '2018-07-18 01:43:58'),
(2, 'Laravel', '2018-07-18 01:44:15', '2018-07-18 01:44:15'),
(3, 'Tutorial', '2018-07-18 01:44:28', '2018-07-18 01:44:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bilal G', 'ali@yahoo.com', 1, '$2y$10$aFhMV8vs.LMTJEDNjr0yhuFfI32aQyPSucPLDAGBvRyyo0k/TIiZy', 'caXxONBUI4ZwaaEE4gws7bIff6TTRDnGHa70mtfG6SCxgXH2klkWeJW4ntYQ', '2018-07-17 23:48:15', '2018-07-18 10:15:13'),
(2, 'Alia', 'alia@gmail.com', 1, '$2y$10$CuXpWCKCnHvBig50YmfFNePeXexFo28ifTVz9ZtmFnUW5tLeA9aum', 'LGfdFybwSRYcDETrhe9QmeB23xq1XjMY5R7kwFfvvl5OzOE4O1LZBLKhxwQz', '2018-07-17 23:49:30', '2018-07-18 10:13:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
