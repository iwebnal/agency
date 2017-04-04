-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 05 2017 г., 00:17
-- Версия сервера: 5.5.50
-- Версия PHP: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `agency`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2016-11-16 09:45:51', '2016-11-16 06:45:51', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href="https://ru.gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=286 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://agency.loc', 'yes'),
(2, 'home', 'http://agency.loc', 'yes'),
(3, 'blogname', 'agency', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ahatuhov@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:138:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:34:"slider/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"slider/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"slider/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"slider/([^/]+)/embed/?$";s:39:"index.php?slider=$matches[1]&embed=true";s:27:"slider/([^/]+)/trackback/?$";s:33:"index.php?slider=$matches[1]&tb=1";s:35:"slider/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?slider=$matches[1]&paged=$matches[2]";s:42:"slider/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?slider=$matches[1]&cpage=$matches[2]";s:31:"slider/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?slider=$matches[1]&page=$matches[2]";s:23:"slider/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"slider/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"slider/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"question/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"question/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"question/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"question/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"question/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"question/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"question/([^/]+)/embed/?$";s:41:"index.php?question=$matches[1]&embed=true";s:29:"question/([^/]+)/trackback/?$";s:35:"index.php?question=$matches[1]&tb=1";s:37:"question/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?question=$matches[1]&paged=$matches[2]";s:44:"question/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?question=$matches[1]&cpage=$matches[2]";s:33:"question/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?question=$matches[1]&page=$matches[2]";s:25:"question/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"question/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"question/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"question/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"question/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"question/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"review/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"review/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"review/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"review/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"review/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"review/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"review/([^/]+)/embed/?$";s:39:"index.php?review=$matches[1]&embed=true";s:27:"review/([^/]+)/trackback/?$";s:33:"index.php?review=$matches[1]&tb=1";s:35:"review/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?review=$matches[1]&paged=$matches[2]";s:42:"review/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?review=$matches[1]&cpage=$matches[2]";s:31:"review/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?review=$matches[1]&page=$matches[2]";s:23:"review/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"review/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"review/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"review/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"review/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"review/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:30:"advanced-custom-fields/acf.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'agency', 'yes'),
(41, 'stylesheet', 'agency', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '37965', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'WPLANG', 'ru_RU', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:4:{i:1491374751;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1491374787;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1491377395;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(107, 'nonce_key', '=BV.!8weAS+..@PCA{vv1ca42Y}GrjJ3Ilom KzYJD*q6&L3JRHHF(aO9_tYD8?8', 'no'),
(108, 'nonce_salt', '}8$}(>B;~UZTZqPU_:U}wY~L70D<kLMu&wx1UlBszE*f,3SBP~jQPim>1|MA>i*z', 'no'),
(117, 'auth_key', 'htp@HN%&{ c:>VT*Xds__ PLF^Rg8:b/](4+VW^ZO?BQS14+Vv<%nm[-4@*1PtWA', 'no'),
(118, 'auth_salt', 'RMil7~!GYD$|~%}z;jqY?R;*LRo5w&:Qfdr[Z[_*^~k*!Cb]lAmONvQ#GI-*1sGG', 'no'),
(119, 'logged_in_key', 'L:[E@/_esharYEYpNRN1wJh93 S`_/o2!ar%~m?5~xh][ZFNP+O8?Q!f8,`bTHuo', 'no'),
(120, 'logged_in_salt', '&Tjdq.i4.N(*z1V4EqrH})i{{)y}*.]jr%aNY.^P5WR&cBj14gSyE6p#A`mY^wp^', 'no'),
(143, 'recently_activated', 'a:0:{}', 'yes'),
(149, 'acf_version', '4.4.11', 'yes'),
(150, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1479279228;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(151, 'current_theme', 'agency', 'yes'),
(152, 'theme_mods_agency', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:2:{s:3:"top";i:4;s:6:"bottom";i:5;}}', 'yes'),
(153, 'theme_switched', '', 'yes'),
(169, '_site_transient_timeout_browser_d7c19190f2b47f4cdb90b9748b4c63b3', '1481968224', 'no'),
(170, '_site_transient_browser_d7c19190f2b47f4cdb90b9748b4c63b3', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"54.0.2840.99";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(188, 'db_upgraded', '', 'yes'),
(191, 'can_compress_scripts', '1', 'no'),
(212, 'fresh_site', '0', 'yes'),
(213, '_site_transient_timeout_available_translations', '1481454447', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(214, '_site_transient_available_translations', 'a:88:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-09 16:12:38";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-06 12:56:13";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-06 19:24:17";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:60:"https://downloads.wordpress.org/translation/core/4.7/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-29 08:38:56";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-11 22:42:10";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-07 08:41:41";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-20 16:53:20";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-05 09:44:12";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-04-19 23:16:37";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-06 18:13:51";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-02-16 15:34:57";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.3/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-11 18:32:36";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-05 11:08:55";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-06 11:33:59";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-06 15:48:14";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-06 22:06:38";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-06 22:06:45";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:69:"https://downloads.wordpress.org/translation/core/4.7/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-06 15:44:48";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.7/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-04 07:46:23";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-03 23:03:48";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-06 00:34:14";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-05 08:11:17";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-05 06:23:04";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-08 17:19:49";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-04 17:16:39";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-03 12:46:56";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-10 13:06:44";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-07 12:13:31";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-17 22:11:44";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-19 13:48:04";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-05 22:19:40";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-22 16:41:36";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-07 18:34:12";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-23 20:20:40";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-06 18:04:09";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-05 16:41:35";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-10 17:48:28";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-08 10:49:30";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-04 01:43:25";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-06 21:13:09";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-08 02:27:42";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-09 01:48:54";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-10 14:04:11";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-12-06 20:18:25";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-04 07:13:54";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-06 17:00:36";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-07 09:09:16";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-09 17:17:58";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-05 13:03:24";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-03 10:10:56";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-03 07:02:04";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-06 12:39:15";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-06 06:17:03";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-06 16:31:57";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-05 06:33:26";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-09 14:23:37";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.13";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.13/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-05 22:24:43";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-09 12:37:54";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-14 13:24:10";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.6.1/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-28 08:58:28";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-23 13:45:11";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.6.1/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-06 20:27:29";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.13";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.13/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-04 21:26:34";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-07 09:31:53";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-06 22:16:39";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-07 12:56:07";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-09 11:05:20";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-05 08:28:07";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-03 20:47:33";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-04 20:17:20";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-06 19:42:34";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.6.1/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-12 07:04:13";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-27 15:51:36";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-06 09:45:13";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-12-01 16:07:46";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-08 16:20:54";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-08 06:38:30";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 01:01:25";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-08 04:30:37";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-07 09:57:58";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-12-05 11:58:02";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'no'),
(252, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.7.3.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.7.3.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.7.3";s:7:"version";s:5:"4.7.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1491338647;s:15:"version_checked";s:5:"4.7.3";s:12:"translations";a:0:{}}', 'no'),
(253, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1491338665;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.11";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.11.zip";}s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:3:"3.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/akismet.3.3.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'no'),
(254, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(263, 'category_children', 'a:0:{}', 'yes'),
(273, '_site_transient_timeout_theme_roots', '1491340460', 'no'),
(274, '_site_transient_theme_roots', 'a:4:{s:6:"agency";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(275, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1491338667;s:7:"checked";a:4:{s:6:"agency";s:3:"1.0";s:13:"twentyfifteen";s:3:"1.6";s:14:"twentyfourteen";s:3:"1.8";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:3:{s:6:"agency";a:4:{s:5:"theme";s:6:"agency";s:11:"new_version";s:5:"1.2.8";s:3:"url";s:36:"https://wordpress.org/themes/agency/";s:7:"package";s:54:"https://downloads.wordpress.org/theme/agency.1.2.8.zip";}s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.7";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.1.7.zip";}s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.9";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentyfourteen.1.9.zip";}}s:12:"translations";a:0:{}}', 'no'),
(276, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1491382725', 'no'),
(277, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1491382725', 'no'),
(278, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1491339525', 'no'),
(279, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1491382727', 'no'),
(280, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1491382727', 'no'),
(281, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1491339527', 'no'),
(282, '_transient_timeout_plugin_slugs', '1491425932', 'no'),
(283, '_transient_plugin_slugs', 'a:3:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:9:"hello.php";}', 'no'),
(284, '_transient_timeout_dash_f69de0bbfe7eaa113146875f40c02000', '1491382732', 'no'),
(285, '_transient_dash_f69de0bbfe7eaa113146875f40c02000', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2017/03/wordpress-4-7-3-security-and-maintenance-release/''>WordPress 4.7.3 Security and Maintenance Release</a> <span class="rss-date">06.03.2017</span><div class="rssSummary">WordPress 4.7.3 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. WordPress versions 4.7.2 and earlier are affected by six security issues: Cross-site scripting (XSS) via media file metadata.  Reported by Chris Andrè Dale, Yorick Koster, and Simon P. Briggs. Control characters can trick redirect [&hellip;]</div></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wptavern.com/disconnect-from-technology-at-camp-press-september-23-24-in-seminole-ok''>WPTavern: Disconnect From Technology at Camp Press September 23-24 in Seminole, OK</a></li><li><a class=''rsswidget'' href=''https://wptavern.com/wp-cli-names-alain-schlesser-new-co-maintainer''>WPTavern: WP-CLI Names Alain Schlesser New Co-Maintainer</a></li><li><a class=''rsswidget'' href=''https://buddypress.org/2017/04/2016-buddypress-survey-results/''>BuddyPress: 2016 BuddyPress Survey Results</a></li></ul></div><div class="rss-widget"><ul></ul></div>', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_wp_page_template', 'tamplete-appeal.php'),
(4, 4, '_edit_lock', '1491113612:1'),
(5, 7, '_wp_attached_file', '2016/12/direktor.jpg'),
(6, 7, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3000;s:6:"height";i:2092;s:4:"file";s:20:"2016/12/direktor.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"direktor-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"direktor-300x209.jpg";s:5:"width";i:300;s:6:"height";i:209;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"direktor-768x536.jpg";s:5:"width";i:768;s:6:"height";i:536;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"direktor-1024x714.jpg";s:5:"width";i:1024;s:6:"height";i:714;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"direktor-211x147.jpg";s:5:"width";i:211;s:6:"height";i:147;s:9:"mime-type";s:10:"image/jpeg";}s:11:"squareThumb";a:4:{s:4:"file";s:20:"direktor-292x278.jpg";s:5:"width";i:292;s:6:"height";i:278;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(7, 4, '_thumbnail_id', '7'),
(8, 10, '_edit_last', '1'),
(9, 10, '_edit_lock', '1481451893:1'),
(10, 11, '_wp_attached_file', '2016/12/slide1.jpg'),
(11, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:683;s:4:"file";s:18:"2016/12/slide1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"slide1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"slide1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"slide1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"slide1-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"slide1-220x147.jpg";s:5:"width";i:220;s:6:"height";i:147;s:9:"mime-type";s:10:"image/jpeg";}s:11:"squareThumb";a:4:{s:4:"file";s:18:"slide1-292x278.jpg";s:5:"width";i:292;s:6:"height";i:278;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(12, 12, '_wp_attached_file', '2016/12/slide2.jpg'),
(13, 12, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:683;s:4:"file";s:18:"2016/12/slide2.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"slide2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"slide2-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"slide2-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"slide2-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"slide2-220x147.jpg";s:5:"width";i:220;s:6:"height";i:147;s:9:"mime-type";s:10:"image/jpeg";}s:11:"squareThumb";a:4:{s:4:"file";s:18:"slide2-292x278.jpg";s:5:"width";i:292;s:6:"height";i:278;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(14, 13, '_wp_attached_file', '2016/12/slide3.jpg'),
(15, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:683;s:4:"file";s:18:"2016/12/slide3.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"slide3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"slide3-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"slide3-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"slide3-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"slide3-220x147.jpg";s:5:"width";i:220;s:6:"height";i:147;s:9:"mime-type";s:10:"image/jpeg";}s:11:"squareThumb";a:4:{s:4:"file";s:18:"slide3-292x278.jpg";s:5:"width";i:292;s:6:"height";i:278;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(16, 10, '_thumbnail_id', '13'),
(19, 15, '_edit_last', '1'),
(20, 15, '_edit_lock', '1481451892:1'),
(21, 15, '_thumbnail_id', '12'),
(24, 17, '_edit_last', '1'),
(25, 17, '_edit_lock', '1481456948:1'),
(26, 17, '_thumbnail_id', '11'),
(29, 19, '_edit_last', '1'),
(30, 19, '_edit_lock', '1481459073:1'),
(31, 20, '_wp_attached_file', '2016/12/nophoto.jpg'),
(32, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:19:"2016/12/nophoto.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"nophoto-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:19:"nophoto-147x147.jpg";s:5:"width";i:147;s:6:"height";i:147;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(33, 19, '_thumbnail_id', '20'),
(36, 22, '_edit_last', '1'),
(37, 22, '_edit_lock', '1481459074:1'),
(38, 22, '_thumbnail_id', '20'),
(41, 24, '_edit_last', '1'),
(42, 24, '_edit_lock', '1481459074:1'),
(43, 24, '_thumbnail_id', '20'),
(46, 26, '_edit_last', '1'),
(47, 26, 'field_584d40ce4b807', 'a:14:{s:3:"key";s:19:"field_584d40ce4b807";s:5:"label";s:18:"Должность";s:4:"name";s:18:"должность";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(49, 26, 'position', 'normal'),
(50, 26, 'layout', 'no_box'),
(51, 26, 'hide_on_screen', ''),
(52, 26, '_edit_lock', '1491115107:1'),
(56, 27, '_', 'field_584d40ce4b807'),
(57, 19, '_', 'field_584d40ce4b807'),
(60, 28, '_', 'field_584d40ce4b807'),
(61, 22, '_', 'field_584d40ce4b807'),
(64, 29, '_', 'field_584d40ce4b807'),
(65, 24, '_', 'field_584d40ce4b807'),
(68, 30, '_', 'field_584d40ce4b807'),
(71, 31, '_', 'field_584d40ce4b807'),
(72, 26, 'rule', 'a:5:{s:5:"param";s:13:"post_category";s:8:"operator";s:2:"==";s:5:"value";s:1:"3";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(75, 32, 'должность', 'Lorem ipsum dolor sit amet'),
(76, 32, '_должность', 'field_584d40ce4b807'),
(77, 24, 'должность', 'Ivanov I. I. / Lorem ipsum dolor sit amet.'),
(78, 24, '_должность', 'field_584d40ce4b807'),
(81, 33, 'должность', 'Lorem ipsum dolor sit amet'),
(82, 33, '_должность', 'field_584d40ce4b807'),
(83, 22, 'должность', 'Ivanov I. I. / Lorem ipsum dolor sit amet.'),
(84, 22, '_должность', 'field_584d40ce4b807'),
(87, 35, 'должность', 'Lorem ipsum dolor sit amet'),
(88, 35, '_должность', 'field_584d40ce4b807'),
(89, 19, 'должность', 'Ivanov I. I. / Lorem ipsum dolor sit amet.'),
(90, 19, '_должность', 'field_584d40ce4b807'),
(93, 36, 'должность', 'Lorem ipsum dolor sit amet'),
(94, 36, '_должность', 'field_584d40ce4b807'),
(97, 37, 'должность', 'Lorem ipsum dolor sit amet'),
(98, 37, '_должность', 'field_584d40ce4b807'),
(103, 38, 'должность', 'Lorem ipsum dolor sit amet'),
(104, 38, '_должность', 'field_584d40ce4b807'),
(107, 40, 'должность', 'Lorem ipsum dolor sit amet'),
(108, 40, '_должность', 'field_584d40ce4b807'),
(111, 41, 'должность', 'Lorem ipsum dolor sit amet'),
(112, 41, '_должность', 'field_584d40ce4b807'),
(115, 42, 'должность', 'Lorem ipsum dolor sit amet'),
(116, 42, '_должность', 'field_584d40ce4b807'),
(119, 43, 'должность', 'Ivanov I. I. / Lorem ipsum dolor sit amet.'),
(120, 43, '_должность', 'field_584d40ce4b807'),
(123, 44, 'должность', 'Ivanov I. I. / Lorem ipsum dolor sit amet.'),
(124, 44, '_должность', 'field_584d40ce4b807'),
(127, 45, 'должность', 'Ivanov I. I. / Lorem ipsum dolor sit amet.'),
(128, 45, '_должность', 'field_584d40ce4b807'),
(129, 47, '_edit_last', '1'),
(130, 47, '_wp_page_template', 'tamplete-forclients.php'),
(131, 47, '_edit_lock', '1491114140:1'),
(132, 49, '_edit_last', '1'),
(133, 49, '_wp_page_template', 'default'),
(134, 49, '_edit_lock', '1491110931:1'),
(135, 51, '_edit_last', '1'),
(136, 51, '_wp_page_template', 'tamplete-contacts.php'),
(137, 51, '_edit_lock', '1491129117:1'),
(138, 53, '_edit_last', '1'),
(139, 53, '_wp_page_template', 'tamplete-fotogalery.php'),
(140, 53, '_edit_lock', '1491142358:1'),
(141, 2, '_wp_trash_meta_status', 'publish'),
(142, 2, '_wp_trash_meta_time', '1491111184'),
(143, 2, '_wp_desired_post_slug', 'sample-page'),
(144, 56, '_menu_item_type', 'post_type'),
(145, 56, '_menu_item_menu_item_parent', '0'),
(146, 56, '_menu_item_object_id', '4'),
(147, 56, '_menu_item_object', 'page'),
(148, 56, '_menu_item_target', ''),
(149, 56, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(150, 56, '_menu_item_xfn', ''),
(151, 56, '_menu_item_url', ''),
(153, 57, '_menu_item_type', 'post_type'),
(154, 57, '_menu_item_menu_item_parent', '0'),
(155, 57, '_menu_item_object_id', '47'),
(156, 57, '_menu_item_object', 'page'),
(157, 57, '_menu_item_target', ''),
(158, 57, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(159, 57, '_menu_item_xfn', ''),
(160, 57, '_menu_item_url', ''),
(171, 59, '_menu_item_type', 'post_type'),
(172, 59, '_menu_item_menu_item_parent', '0'),
(173, 59, '_menu_item_object_id', '53'),
(174, 59, '_menu_item_object', 'page'),
(175, 59, '_menu_item_target', ''),
(176, 59, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(177, 59, '_menu_item_xfn', ''),
(178, 59, '_menu_item_url', ''),
(180, 60, '_menu_item_type', 'post_type'),
(181, 60, '_menu_item_menu_item_parent', '0'),
(182, 60, '_menu_item_object_id', '51'),
(183, 60, '_menu_item_object', 'page'),
(184, 60, '_menu_item_target', ''),
(185, 60, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(186, 60, '_menu_item_xfn', ''),
(187, 60, '_menu_item_url', ''),
(189, 49, '_wp_trash_meta_status', 'publish'),
(190, 49, '_wp_trash_meta_time', '1491114288'),
(191, 49, '_wp_desired_post_slug', '%d0%bd%d0%b0%d1%88%d0%b8-%d1%83%d1%81%d0%bb%d1%83%d0%b3%d0%b8'),
(192, 64, '_edit_last', '1'),
(193, 64, 'field_58e09d449d1b7', 'a:11:{s:3:"key";s:19:"field_58e09d449d1b7";s:5:"label";s:18:"Картинка 1";s:4:"name";s:18:"картинка_1";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(194, 64, 'field_58e09d689d1b8', 'a:11:{s:3:"key";s:19:"field_58e09d689d1b8";s:5:"label";s:18:"Картинка 2";s:4:"name";s:18:"картинка_2";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(195, 64, 'field_58e09d739d1b9', 'a:11:{s:3:"key";s:19:"field_58e09d739d1b9";s:5:"label";s:18:"Картинка 3";s:4:"name";s:18:"картинка_3";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(196, 64, 'field_58e09d859d1ba', 'a:11:{s:3:"key";s:19:"field_58e09d859d1ba";s:5:"label";s:18:"Картинка 4";s:4:"name";s:18:"картинка_4";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(197, 64, 'field_58e09d8f9d1bb', 'a:11:{s:3:"key";s:19:"field_58e09d8f9d1bb";s:5:"label";s:18:"Картинка 5";s:4:"name";s:18:"картинка_5";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(198, 64, 'field_58e09d9a9d1bc', 'a:11:{s:3:"key";s:19:"field_58e09d9a9d1bc";s:5:"label";s:18:"Картинка 6";s:4:"name";s:18:"картинка_6";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(199, 64, 'field_58e09da59d1bd', 'a:11:{s:3:"key";s:19:"field_58e09da59d1bd";s:5:"label";s:18:"Картинка 7";s:4:"name";s:18:"картинка_7";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
(200, 64, 'field_58e09dae9d1be', 'a:11:{s:3:"key";s:19:"field_58e09dae9d1be";s:5:"label";s:18:"Картинка 8";s:4:"name";s:18:"картинка_8";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:7;}'),
(201, 64, 'field_58e09db89d1bf', 'a:11:{s:3:"key";s:19:"field_58e09db89d1bf";s:5:"label";s:18:"Картинка 9";s:4:"name";s:18:"картинка_9";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:8;}'),
(202, 64, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"53";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(203, 64, 'position', 'normal'),
(204, 64, 'layout', 'no_box'),
(205, 64, 'hide_on_screen', ''),
(206, 64, '_edit_lock', '1491116260:1'),
(207, 65, '_wp_attached_file', '2017/04/18.jpg'),
(208, 65, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2560;s:6:"height";i:1600;s:4:"file";s:14:"2017/04/18.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"18-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"18-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:14:"18-768x480.jpg";s:5:"width";i:768;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:15:"18-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:14:"18-220x138.jpg";s:5:"width";i:220;s:6:"height";i:138;s:9:"mime-type";s:10:"image/jpeg";}s:11:"squareThumb";a:4:{s:4:"file";s:14:"18-292x278.jpg";s:5:"width";i:292;s:6:"height";i:278;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(209, 66, '_wp_attached_file', '2017/04/Puteshestviya-v-odinochku-820x344.jpg'),
(210, 66, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:820;s:6:"height";i:344;s:4:"file";s:45:"2017/04/Puteshestviya-v-odinochku-820x344.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:45:"Puteshestviya-v-odinochku-820x344-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:45:"Puteshestviya-v-odinochku-820x344-300x126.jpg";s:5:"width";i:300;s:6:"height";i:126;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Puteshestviya-v-odinochku-820x344-768x322.jpg";s:5:"width";i:768;s:6:"height";i:322;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:44:"Puteshestviya-v-odinochku-820x344-220x92.jpg";s:5:"width";i:220;s:6:"height";i:92;s:9:"mime-type";s:10:"image/jpeg";}s:11:"squareThumb";a:4:{s:4:"file";s:45:"Puteshestviya-v-odinochku-820x344-292x278.jpg";s:5:"width";i:292;s:6:"height";i:278;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(211, 67, '_wp_attached_file', '2017/04/1202161132trav.jpg'),
(212, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:504;s:6:"height";i:315;s:4:"file";s:26:"2017/04/1202161132trav.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"1202161132trav-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"1202161132trav-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:26:"1202161132trav-220x138.jpg";s:5:"width";i:220;s:6:"height";i:138;s:9:"mime-type";s:10:"image/jpeg";}s:11:"squareThumb";a:4:{s:4:"file";s:26:"1202161132trav-292x278.jpg";s:5:"width";i:292;s:6:"height";i:278;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(213, 68, '_wp_attached_file', '2017/04/06022306-shutterstock_159416075.jpg'),
(214, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:665;s:4:"file";s:43:"2017/04/06022306-shutterstock_159416075.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:43:"06022306-shutterstock_159416075-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:43:"06022306-shutterstock_159416075-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:43:"06022306-shutterstock_159416075-768x511.jpg";s:5:"width";i:768;s:6:"height";i:511;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:43:"06022306-shutterstock_159416075-220x147.jpg";s:5:"width";i:220;s:6:"height";i:147;s:9:"mime-type";s:10:"image/jpeg";}s:11:"squareThumb";a:4:{s:4:"file";s:43:"06022306-shutterstock_159416075-292x278.jpg";s:5:"width";i:292;s:6:"height";i:278;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(215, 69, 'картинка_1', '65'),
(216, 69, '_картинка_1', 'field_58e09d449d1b7'),
(217, 69, 'картинка_2', '67'),
(218, 69, '_картинка_2', 'field_58e09d689d1b8'),
(219, 69, 'картинка_3', '68'),
(220, 69, '_картинка_3', 'field_58e09d739d1b9'),
(221, 69, 'картинка_4', '66'),
(222, 69, '_картинка_4', 'field_58e09d859d1ba'),
(223, 69, 'картинка_5', '65'),
(224, 69, '_картинка_5', 'field_58e09d8f9d1bb'),
(225, 69, 'картинка_6', '67'),
(226, 69, '_картинка_6', 'field_58e09d9a9d1bc'),
(227, 69, 'картинка_7', '66'),
(228, 69, '_картинка_7', 'field_58e09da59d1bd'),
(229, 69, 'картинка_8', '68'),
(230, 69, '_картинка_8', 'field_58e09dae9d1be'),
(231, 69, 'картинка_9', '67'),
(232, 69, '_картинка_9', 'field_58e09db89d1bf'),
(233, 53, 'картинка_1', '65'),
(234, 53, '_картинка_1', 'field_58e09d449d1b7'),
(235, 53, 'картинка_2', '67'),
(236, 53, '_картинка_2', 'field_58e09d689d1b8'),
(237, 53, 'картинка_3', '68'),
(238, 53, '_картинка_3', 'field_58e09d739d1b9'),
(239, 53, 'картинка_4', '78'),
(240, 53, '_картинка_4', 'field_58e09d859d1ba'),
(241, 53, 'картинка_5', '65'),
(242, 53, '_картинка_5', 'field_58e09d8f9d1bb'),
(243, 53, 'картинка_6', '67'),
(244, 53, '_картинка_6', 'field_58e09d9a9d1bc'),
(245, 53, 'картинка_7', '78'),
(246, 53, '_картинка_7', 'field_58e09da59d1bd'),
(247, 53, 'картинка_8', '68'),
(248, 53, '_картинка_8', 'field_58e09dae9d1be'),
(249, 53, 'картинка_9', '67'),
(250, 53, '_картинка_9', 'field_58e09db89d1bf'),
(251, 1, '_wp_trash_meta_status', 'publish'),
(252, 1, '_wp_trash_meta_time', '1491124793'),
(253, 1, '_wp_desired_post_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(254, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(255, 74, '_menu_item_type', 'post_type'),
(256, 74, '_menu_item_menu_item_parent', '0'),
(257, 74, '_menu_item_object_id', '4'),
(258, 74, '_menu_item_object', 'page'),
(259, 74, '_menu_item_target', ''),
(260, 74, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(261, 74, '_menu_item_xfn', ''),
(262, 74, '_menu_item_url', ''),
(264, 75, '_menu_item_type', 'post_type'),
(265, 75, '_menu_item_menu_item_parent', '0'),
(266, 75, '_menu_item_object_id', '47'),
(267, 75, '_menu_item_object', 'page'),
(268, 75, '_menu_item_target', ''),
(269, 75, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(270, 75, '_menu_item_xfn', ''),
(271, 75, '_menu_item_url', ''),
(273, 76, '_menu_item_type', 'post_type'),
(274, 76, '_menu_item_menu_item_parent', '0'),
(275, 76, '_menu_item_object_id', '53'),
(276, 76, '_menu_item_object', 'page'),
(277, 76, '_menu_item_target', ''),
(278, 76, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(279, 76, '_menu_item_xfn', ''),
(280, 76, '_menu_item_url', ''),
(282, 77, '_menu_item_type', 'post_type'),
(283, 77, '_menu_item_menu_item_parent', '0'),
(284, 77, '_menu_item_object_id', '51'),
(285, 77, '_menu_item_object', 'page'),
(286, 77, '_menu_item_target', ''),
(287, 77, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(288, 77, '_menu_item_xfn', ''),
(289, 77, '_menu_item_url', ''),
(291, 78, '_wp_attached_file', '2017/04/wnyxiiam.jpg'),
(292, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:20:"2017/04/wnyxiiam.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"wnyxiiam-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"wnyxiiam-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"wnyxiiam-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"wnyxiiam-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"wnyxiiam-220x124.jpg";s:5:"width";i:220;s:6:"height";i:124;s:9:"mime-type";s:10:"image/jpeg";}s:11:"squareThumb";a:4:{s:4:"file";s:20:"wnyxiiam-292x278.jpg";s:5:"width";i:292;s:6:"height";i:278;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(293, 79, 'картинка_1', '65'),
(294, 79, '_картинка_1', 'field_58e09d449d1b7'),
(295, 79, 'картинка_2', '67'),
(296, 79, '_картинка_2', 'field_58e09d689d1b8'),
(297, 79, 'картинка_3', '68'),
(298, 79, '_картинка_3', 'field_58e09d739d1b9'),
(299, 79, 'картинка_4', '78'),
(300, 79, '_картинка_4', 'field_58e09d859d1ba'),
(301, 79, 'картинка_5', '65'),
(302, 79, '_картинка_5', 'field_58e09d8f9d1bb'),
(303, 79, 'картинка_6', '67'),
(304, 79, '_картинка_6', 'field_58e09d9a9d1bc'),
(305, 79, 'картинка_7', '78'),
(306, 79, '_картинка_7', 'field_58e09da59d1bd'),
(307, 79, 'картинка_8', '68'),
(308, 79, '_картинка_8', 'field_58e09dae9d1be'),
(309, 79, 'картинка_9', '67'),
(310, 79, '_картинка_9', 'field_58e09db89d1bf');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-11-16 09:45:51', '2016-11-16 06:45:51', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80__trashed', '', '', '2017-04-02 12:19:53', '2017-04-02 09:19:53', '', 0, 'http://agency.loc/?p=1', 0, 'post', '', 1),
(2, 1, '2016-11-16 09:45:51', '2016-11-16 06:45:51', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href="http://agency.loc/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2017-04-02 08:33:04', '2017-04-02 05:33:04', '', 0, 'http://agency.loc/?page_id=2', 0, 'page', '', 0),
(4, 1, '2016-12-11 10:30:07', '2016-12-11 07:30:07', 'Центральное Агентство Воздушных и Железнодорожных сообщений – одно из крупных и авторитетных агентств Нальчика и Кабардино-Балкарии в области продаж авиа и ж/д перевозок.\r\n\r\nПервое в Нальчике и в Кабардино-Балкарии аккредитованное Центральное Агентство воздушных сообщений, с историей в несколько десятков лет. За нами опыт и профессионализм, накопленные годами. С нами новые, передовые технологии в области продаж авиа-, жд-билетов, бронированию гостиниц. Мы развиваемся и совершенствуемся. Хотим и можем быть лучше, чтобы быть полезными Вам.\r\n\r\n&nbsp;', 'Здравствуйте дорогие друзья!', '', 'publish', 'closed', 'closed', '', '%d0%be%d0%b1%d1%80%d0%b0%d1%89%d0%b5%d0%bd%d0%b8%d0%b5-%d1%80%d1%83%d0%ba%d0%be%d0%b2%d0%be%d0%b4%d0%b8%d1%82%d0%b5%d0%bb%d1%8f', '', '', '2017-04-02 09:10:24', '2017-04-02 06:10:24', '', 0, 'http://agency.loc/?page_id=4', 0, 'page', '', 0),
(5, 1, '2016-12-11 10:30:07', '2016-12-11 07:30:07', '', 'Обращение руководителя', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2016-12-11 10:30:07', '2016-12-11 07:30:07', '', 4, 'http://agency.loc/2016/12/11/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2017-04-02 09:09:58', '2017-04-02 06:09:58', 'Центральное Агентство Воздушных и Железнодорожных сообщений – одно из крупных и авторитетных агентств Нальчика и Кабардино-Балкарии в области продаж авиа и ж/д перевозок.\n\n&nbsp;\n\n&nbsp;', 'Здравствуйте дорогие друзья!', '', 'inherit', 'closed', 'closed', '', '4-autosave-v1', '', '', '2017-04-02 09:09:58', '2017-04-02 06:09:58', '', 4, 'http://agency.loc/2016/12/11/4-autosave-v1/', 0, 'revision', '', 0),
(7, 1, '2016-12-11 11:05:31', '2016-12-11 08:05:31', '', 'direktor', '', 'inherit', 'open', 'closed', '', 'direktor', '', '', '2016-12-11 11:05:31', '2016-12-11 08:05:31', '', 4, 'http://agency.loc/wp-content/uploads/2016/12/direktor.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2016-12-11 11:06:22', '2016-12-11 08:06:22', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.', 'Здравствуйте дорогие друзья!', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2016-12-11 11:06:22', '2016-12-11 08:06:22', '', 4, 'http://agency.loc/2016/12/11/4-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2016-12-11 13:25:26', '2016-12-11 10:25:26', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.', 'Lorem ipsum dolor', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor', '', '', '2016-12-11 13:25:26', '2016-12-11 10:25:26', '', 0, 'http://agency.loc/?p=10', 0, 'post', '', 0),
(11, 1, '2016-12-11 13:24:57', '2016-12-11 10:24:57', '', 'slide1', '', 'inherit', 'open', 'closed', '', 'slide1', '', '', '2016-12-11 13:24:57', '2016-12-11 10:24:57', '', 10, 'http://agency.loc/wp-content/uploads/2016/12/slide1.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2016-12-11 13:24:59', '2016-12-11 10:24:59', '', 'slide2', '', 'inherit', 'open', 'closed', '', 'slide2', '', '', '2016-12-11 13:24:59', '2016-12-11 10:24:59', '', 10, 'http://agency.loc/wp-content/uploads/2016/12/slide2.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2016-12-11 13:25:00', '2016-12-11 10:25:00', '', 'slide3', '', 'inherit', 'open', 'closed', '', 'slide3', '', '', '2016-12-11 13:25:00', '2016-12-11 10:25:00', '', 10, 'http://agency.loc/wp-content/uploads/2016/12/slide3.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2016-12-11 13:25:26', '2016-12-11 10:25:26', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.', 'Lorem ipsum dolor', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-12-11 13:25:26', '2016-12-11 10:25:26', '', 10, 'http://agency.loc/10-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2016-12-11 13:26:02', '2016-12-11 10:26:02', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.', 'Lorem ipsum dolor', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-2', '', '', '2016-12-11 13:26:02', '2016-12-11 10:26:02', '', 0, 'http://agency.loc/?p=15', 0, 'post', '', 0),
(16, 1, '2016-12-11 13:26:02', '2016-12-11 10:26:02', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.', 'Lorem ipsum dolor', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2016-12-11 13:26:02', '2016-12-11 10:26:02', '', 15, 'http://agency.loc/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2016-12-11 13:26:35', '2016-12-11 10:26:35', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.', 'Lorem ipsum dolor', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-3', '', '', '2016-12-11 13:26:35', '2016-12-11 10:26:35', '', 0, 'http://agency.loc/?p=17', 0, 'post', '', 0),
(18, 1, '2016-12-11 13:26:35', '2016-12-11 10:26:35', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro possimus, nam dolor ullam eum, maiores ratione repudiandae in mollitia nulla dolore fuga deleniti facere sequi modi vel, reprehenderit earum hic.', 'Lorem ipsum dolor', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2016-12-11 13:26:35', '2016-12-11 10:26:35', '', 17, 'http://agency.loc/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2016-12-11 14:53:26', '2016-12-11 11:53:26', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.', 'Отзыв 1', '', 'publish', 'open', 'open', '', '%d0%be%d1%82%d0%b7%d1%8b%d0%b2-1', '', '', '2016-12-11 15:24:57', '2016-12-11 12:24:57', '', 0, 'http://agency.loc/?p=19', 0, 'post', '', 0),
(20, 1, '2016-12-11 14:53:14', '2016-12-11 11:53:14', '', 'nophoto', '', 'inherit', 'open', 'closed', '', 'nophoto', '', '', '2016-12-11 14:53:14', '2016-12-11 11:53:14', '', 19, 'http://agency.loc/wp-content/uploads/2016/12/nophoto.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2016-12-11 14:53:26', '2016-12-11 11:53:26', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.', 'Отзыв 1', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2016-12-11 14:53:26', '2016-12-11 11:53:26', '', 19, 'http://agency.loc/19-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2016-12-11 14:53:58', '2016-12-11 11:53:58', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.', 'Отзыв 2', '', 'publish', 'open', 'open', '', '%d0%be%d1%82%d0%b7%d1%8b%d0%b2-2', '', '', '2016-12-11 15:25:04', '2016-12-11 12:25:04', '', 0, 'http://agency.loc/?p=22', 0, 'post', '', 0),
(23, 1, '2016-12-11 14:53:58', '2016-12-11 11:53:58', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.', 'Отзыв 2', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2016-12-11 14:53:58', '2016-12-11 11:53:58', '', 22, 'http://agency.loc/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2016-12-11 14:54:26', '2016-12-11 11:54:26', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.', 'Отзыв 3', '', 'publish', 'open', 'open', '', '%d0%be%d1%82%d0%b7%d1%8b%d0%b2-3', '', '', '2016-12-11 15:25:10', '2016-12-11 12:25:10', '', 0, 'http://agency.loc/?p=24', 0, 'post', '', 0),
(25, 1, '2016-12-11 14:54:26', '2016-12-11 11:54:26', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.', 'Отзыв 3', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2016-12-11 14:54:26', '2016-12-11 11:54:26', '', 24, 'http://agency.loc/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2016-12-11 15:05:31', '2016-12-11 12:05:31', '', 'Отзывы', '', 'publish', 'closed', 'closed', '', 'acf_%d0%be%d1%82%d0%b7%d1%8b%d0%b2%d1%8b', '', '', '2016-12-11 15:08:12', '2016-12-11 12:08:12', '', 0, 'http://agency.loc/?post_type=acf&#038;p=26', 0, 'acf', '', 0),
(27, 1, '2016-12-11 15:06:07', '2016-12-11 12:06:07', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.', 'Отзыв 1', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2016-12-11 15:06:07', '2016-12-11 12:06:07', '', 19, 'http://agency.loc/19-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2016-12-11 15:06:12', '2016-12-11 12:06:12', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.', 'Отзыв 2', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2016-12-11 15:06:12', '2016-12-11 12:06:12', '', 22, 'http://agency.loc/22-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2016-12-11 15:06:17', '2016-12-11 12:06:17', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.', 'Отзыв 3', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2016-12-11 15:06:17', '2016-12-11 12:06:17', '', 24, 'http://agency.loc/24-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2016-12-11 15:06:28', '2016-12-11 12:06:28', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.', 'Отзыв 1', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2016-12-11 15:06:28', '2016-12-11 12:06:28', '', 19, 'http://agency.loc/19-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2016-12-11 15:07:26', '2016-12-11 12:07:26', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.', 'Отзыв 1', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2016-12-11 15:07:26', '2016-12-11 12:07:26', '', 19, 'http://agency.loc/19-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2016-12-11 15:08:41', '2016-12-11 12:08:41', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.', 'Отзыв 3', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2016-12-11 15:08:41', '2016-12-11 12:08:41', '', 24, 'http://agency.loc/24-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2016-12-11 15:09:01', '2016-12-11 12:09:01', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.', 'Отзыв 2', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2016-12-11 15:09:01', '2016-12-11 12:09:01', '', 22, 'http://agency.loc/22-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2016-12-11 15:09:39', '2016-12-11 12:09:39', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.', 'Отзыв 1', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2016-12-11 15:09:39', '2016-12-11 12:09:39', '', 19, 'http://agency.loc/19-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2016-12-11 15:12:22', '2016-12-11 12:12:22', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.', 'Отзыв 1', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2016-12-11 15:12:22', '2016-12-11 12:12:22', '', 19, 'http://agency.loc/19-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2016-12-11 15:12:32', '2016-12-11 12:12:32', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.', 'Отзыв 2', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2016-12-11 15:12:32', '2016-12-11 12:12:32', '', 22, 'http://agency.loc/22-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2016-12-11 15:13:34', '2016-12-11 12:13:34', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.', 'Отзыв 3', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2016-12-11 15:13:34', '2016-12-11 12:13:34', '', 24, 'http://agency.loc/24-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2016-12-11 15:23:31', '2016-12-11 12:23:31', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.', 'Отзыв 1', '', 'inherit', 'closed', 'closed', '', '19-autosave-v1', '', '', '2016-12-11 15:23:31', '2016-12-11 12:23:31', '', 19, 'http://agency.loc/19-autosave-v1/', 0, 'revision', '', 0),
(40, 1, '2016-12-11 15:23:33', '2016-12-11 12:23:33', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.', 'Отзыв 1', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2016-12-11 15:23:33', '2016-12-11 12:23:33', '', 19, 'http://agency.loc/19-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2016-12-11 15:23:37', '2016-12-11 12:23:37', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.', 'Отзыв 2', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2016-12-11 15:23:37', '2016-12-11 12:23:37', '', 22, 'http://agency.loc/22-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2016-12-11 15:23:42', '2016-12-11 12:23:42', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.', 'Отзыв 3', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2016-12-11 15:23:42', '2016-12-11 12:23:42', '', 24, 'http://agency.loc/24-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2016-12-11 15:24:57', '2016-12-11 12:24:57', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.', 'Отзыв 1', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2016-12-11 15:24:57', '2016-12-11 12:24:57', '', 19, 'http://agency.loc/19-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2016-12-11 15:25:04', '2016-12-11 12:25:04', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.', 'Отзыв 2', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2016-12-11 15:25:04', '2016-12-11 12:25:04', '', 22, 'http://agency.loc/22-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2016-12-11 15:25:10', '2016-12-11 12:25:10', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, numquam, doloremque. Sequi laboriosam, quod nostrum aut ratione quas suscipit autem blanditiis error deserunt at itaque eaque nesciunt quasi, dolorum beatae.', 'Отзыв 3', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2016-12-11 15:25:10', '2016-12-11 12:25:10', '', 24, 'http://agency.loc/24-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2017-04-02 08:24:45', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-04-02 08:24:45', '0000-00-00 00:00:00', '', 0, 'http://agency.loc/?p=46', 0, 'post', '', 0),
(47, 1, '2017-04-02 08:30:52', '2017-04-02 05:30:52', 'Мы поможем Вам приобрести авиабилеты на всевозможные направления и авиакомпании, в любую точку мира из любого аэропорта и произвести своевременный ВОЗВРАТ, ПЕРЕОФОРМЛЕНИЕ купленных в нашем Агентстве билетов.\r\n\r\nРаботам по всем системам бронирования авиаперевозок: ЗАО «Сирена-Трэвел» и «АМАДЕУС»\r\n\r\nДля тех, кто привык консультироваться и получать информацию, перед приобретением авиабилетов, непосредственно в авиакассе - добро пожаловать в наши «Офисы продаж». Наши кассиры высококвалифицированные специалисты имеющие международные сертификаты в области бронирования и продажи авиа и ж/д билетов рады Вас обслужить и предоставить любую интересующую информацию.\r\n\r\nДля тех, кто желает самостоятельно определиться с авиа и ж/д перевозками - доступная и «интуитивно понятная» форма бронирования авиабилетов на нашем сайте.\r\n\r\nПомимо продажи авиабилетов в нашем агентстве есть отдел туризма – путёвки во все концы света.\r\n\r\nНа обновлённом сайте доступными стали сервисы: покупки электронных ЖД-билетов и бронирование гостиниц.', 'КЛИЕНТАМ', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%bb%d0%b8%d0%b5%d0%bd%d1%82%d0%b0%d0%bc', '', '', '2017-04-02 09:20:05', '2017-04-02 06:20:05', '', 0, 'http://agency.loc/?page_id=47', 0, 'page', '', 0),
(48, 1, '2017-04-02 08:30:52', '2017-04-02 05:30:52', '', 'КЛИЕНТАМ', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2017-04-02 08:30:52', '2017-04-02 05:30:52', '', 47, 'http://agency.loc/47-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2017-04-02 08:31:08', '2017-04-02 05:31:08', '', 'НАШИ УСЛУГИ', '', 'trash', 'closed', 'closed', '', '%d0%bd%d0%b0%d1%88%d0%b8-%d1%83%d1%81%d0%bb%d1%83%d0%b3%d0%b8__trashed', '', '', '2017-04-02 09:24:48', '2017-04-02 06:24:48', '', 0, 'http://agency.loc/?page_id=49', 0, 'page', '', 0),
(50, 1, '2017-04-02 08:31:08', '2017-04-02 05:31:08', '', 'НАШИ УСЛУГИ', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2017-04-02 08:31:08', '2017-04-02 05:31:08', '', 49, 'http://agency.loc/49-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2017-04-02 08:31:51', '2017-04-02 05:31:51', '<strong>Наш офис в г. Нальчик:</strong>\r\n\r\n360051, КБР, г. Нальчик, проспект Ленина, дом 43\r\n\r\n<strong>Тел.:</strong>\r\n8(8662) 42-33-26\r\n<strong>ж/д:</strong> 8(8662) 42-70-09\r\n8(8662) 42-64-31\r\n8(8662) 42-52-57\r\n\r\n<strong>Наш офис в г. Прохладный:</strong>\r\n\r\nКБР, г. Прохладный, ул. Карла Маркса, 38, офис 3\r\n\r\n<strong>Тел.:</strong>\r\n8(86631) 4-56-86\r\n', 'КОНТАКТЫ', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b', '', '', '2017-04-02 13:32:27', '2017-04-02 10:32:27', '', 0, 'http://agency.loc/?page_id=51', 0, 'page', '', 0),
(52, 1, '2017-04-02 08:31:51', '2017-04-02 05:31:51', '', 'КОНТАКТЫ', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2017-04-02 08:31:51', '2017-04-02 05:31:51', '', 51, 'http://agency.loc/51-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2017-04-02 08:32:40', '2017-04-02 05:32:40', '', 'Фотогалерея', '', 'publish', 'closed', 'closed', '', '%d1%84%d0%be%d1%82%d0%be%d0%b3%d0%b0%d0%bb%d0%b5%d1%80%d0%b5%d1%8f', '', '', '2017-04-02 17:09:11', '2017-04-02 14:09:11', '', 0, 'http://agency.loc/?page_id=53', 0, 'page', '', 0),
(54, 1, '2017-04-02 08:32:40', '2017-04-02 05:32:40', '', 'Фотогалерея', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2017-04-02 08:32:40', '2017-04-02 05:32:40', '', 53, 'http://agency.loc/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2017-04-02 08:33:04', '2017-04-02 05:33:04', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href="http://agency.loc/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-04-02 08:33:04', '2017-04-02 05:33:04', '', 2, 'http://agency.loc/2-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2017-04-02 08:40:07', '2017-04-02 05:40:07', '', 'О нас', '', 'publish', 'closed', 'closed', '', '56', '', '', '2017-04-02 17:03:01', '2017-04-02 14:03:01', '', 0, 'http://agency.loc/?p=56', 1, 'nav_menu_item', '', 0),
(57, 1, '2017-04-02 08:40:07', '2017-04-02 05:40:07', ' ', '', '', 'publish', 'closed', 'closed', '', '57', '', '', '2017-04-02 17:03:01', '2017-04-02 14:03:01', '', 0, 'http://agency.loc/?p=57', 2, 'nav_menu_item', '', 0),
(59, 1, '2017-04-02 08:40:07', '2017-04-02 05:40:07', ' ', '', '', 'publish', 'closed', 'closed', '', '59', '', '', '2017-04-02 17:03:01', '2017-04-02 14:03:01', '', 0, 'http://agency.loc/?p=59', 3, 'nav_menu_item', '', 0),
(60, 1, '2017-04-02 08:40:07', '2017-04-02 05:40:07', ' ', '', '', 'publish', 'closed', 'closed', '', '60', '', '', '2017-04-02 17:03:01', '2017-04-02 14:03:01', '', 0, 'http://agency.loc/?p=60', 4, 'nav_menu_item', '', 0),
(61, 1, '2017-04-02 09:10:24', '2017-04-02 06:10:24', 'Центральное Агентство Воздушных и Железнодорожных сообщений – одно из крупных и авторитетных агентств Нальчика и Кабардино-Балкарии в области продаж авиа и ж/д перевозок.\r\n\r\nПервое в Нальчике и в Кабардино-Балкарии аккредитованное Центральное Агентство воздушных сообщений, с историей в несколько десятков лет. За нами опыт и профессионализм, накопленные годами. С нами новые, передовые технологии в области продаж авиа-, жд-билетов, бронированию гостиниц. Мы развиваемся и совершенствуемся. Хотим и можем быть лучше, чтобы быть полезными Вам.\r\n\r\n&nbsp;', 'Здравствуйте дорогие друзья!', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-04-02 09:10:24', '2017-04-02 06:10:24', '', 4, 'http://agency.loc/4-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2017-04-02 09:19:42', '2017-04-02 06:19:42', 'Мы поможем Вам приобрести авиабилеты на всевозможные направления и авиакомпании, в любую точку мира из любого аэропорта и произвести своевременный ВОЗВРАТ, ПЕРЕОФОРМЛЕНИЕ купленных в нашем Агентстве билетов.\n\nРаботам по всем системам бронирования авиаперевозок: ЗАО «Сирена-Трэвел» и «АМАДЕУС»\n\nДля тех, кто привык консультироваться и получать информацию, перед приобретением авиабилетов, непосредственно в авиакассе - добро пожаловать в наши «Офисы продаж». Наши кассиры высококвалифицированные специалисты имеющие международные сертификаты в области бронирования и продажи авиа и ж/д билетов рады Вас обслужить и предоставить любую интересующую информацию.\n\nДля тех, кто желает самостоятельно определиться с авиа и ж/д перевозками - доступная и «интуитивно понятная» форма бронирования авиабилетов на нашем сайте.\n\nПомимо продажи авиабилетов в нашем агентстве есть отдел туризма – путёвки во все концы света.\n\nНа обновлённом сайте доступными стали сервисы: покупки электронных ЖД-билетов и бронирование гостиниц.', 'КЛИЕНТАМ', '', 'inherit', 'closed', 'closed', '', '47-autosave-v1', '', '', '2017-04-02 09:19:42', '2017-04-02 06:19:42', '', 47, 'http://agency.loc/47-autosave-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(63, 1, '2017-04-02 09:20:05', '2017-04-02 06:20:05', 'Мы поможем Вам приобрести авиабилеты на всевозможные направления и авиакомпании, в любую точку мира из любого аэропорта и произвести своевременный ВОЗВРАТ, ПЕРЕОФОРМЛЕНИЕ купленных в нашем Агентстве билетов.\r\n\r\nРаботам по всем системам бронирования авиаперевозок: ЗАО «Сирена-Трэвел» и «АМАДЕУС»\r\n\r\nДля тех, кто привык консультироваться и получать информацию, перед приобретением авиабилетов, непосредственно в авиакассе - добро пожаловать в наши «Офисы продаж». Наши кассиры высококвалифицированные специалисты имеющие международные сертификаты в области бронирования и продажи авиа и ж/д билетов рады Вас обслужить и предоставить любую интересующую информацию.\r\n\r\nДля тех, кто желает самостоятельно определиться с авиа и ж/д перевозками - доступная и «интуитивно понятная» форма бронирования авиабилетов на нашем сайте.\r\n\r\nПомимо продажи авиабилетов в нашем агентстве есть отдел туризма – путёвки во все концы света.\r\n\r\nНа обновлённом сайте доступными стали сервисы: покупки электронных ЖД-билетов и бронирование гостиниц.', 'КЛИЕНТАМ', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2017-04-02 09:20:05', '2017-04-02 06:20:05', '', 47, 'http://agency.loc/47-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2017-04-02 09:44:30', '2017-04-02 06:44:30', '', 'Фотогалерея', '', 'publish', 'closed', 'closed', '', 'acf_%d1%84%d0%be%d1%82%d0%be%d0%b3%d0%b0%d0%bb%d0%b5%d1%80%d0%b5%d1%8f', '', '', '2017-04-02 09:44:30', '2017-04-02 06:44:30', '', 0, 'http://agency.loc/?post_type=acf&#038;p=64', 0, 'acf', '', 0),
(65, 1, '2017-04-02 10:04:36', '2017-04-02 07:04:36', '', '18', '', 'inherit', 'open', 'closed', '', '18', '', '', '2017-04-02 10:04:36', '2017-04-02 07:04:36', '', 53, 'http://agency.loc/wp-content/uploads/2017/04/18.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2017-04-02 10:04:42', '2017-04-02 07:04:42', '', 'Puteshestviya-v-odinochku-820x344', '', 'inherit', 'open', 'closed', '', 'puteshestviya-v-odinochku-820x344', '', '', '2017-04-02 10:04:42', '2017-04-02 07:04:42', '', 53, 'http://agency.loc/wp-content/uploads/2017/04/Puteshestviya-v-odinochku-820x344.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2017-04-02 10:04:43', '2017-04-02 07:04:43', '', '1202161132trav', '', 'inherit', 'open', 'closed', '', '1202161132trav', '', '', '2017-04-02 10:04:43', '2017-04-02 07:04:43', '', 53, 'http://agency.loc/wp-content/uploads/2017/04/1202161132trav.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2017-04-02 10:04:43', '2017-04-02 07:04:43', '', '06022306-shutterstock_159416075', '', 'inherit', 'open', 'closed', '', '06022306-shutterstock_159416075', '', '', '2017-04-02 10:04:43', '2017-04-02 07:04:43', '', 53, 'http://agency.loc/wp-content/uploads/2017/04/06022306-shutterstock_159416075.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2017-04-02 10:05:46', '2017-04-02 07:05:46', '', 'Фотогалерея', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2017-04-02 10:05:46', '2017-04-02 07:05:46', '', 53, 'http://agency.loc/53-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2017-04-02 12:19:53', '2017-04-02 09:19:53', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-04-02 12:19:53', '2017-04-02 09:19:53', '', 1, 'http://agency.loc/1-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2017-04-02 13:18:41', '2017-04-02 10:18:41', 'вмвмвмвмвмвымвы\r\n\r\nвсмвым\r\n\r\nвм\r\n\r\nмв\r\n\r\nвм\r\n\r\nвм\r\n\r\nввмвмвмвмвмвмвмвмвмвм', 'КОНТАКТЫ', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2017-04-02 13:18:41', '2017-04-02 10:18:41', '', 51, 'http://agency.loc/51-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2017-04-02 13:26:44', '2017-04-02 10:26:44', '<strong>Наш офис в г. Нальчик:</strong>\n\n360051, КБР, г. Нальчик, проспект Ленина, дом 43\n\n<strong>Тел.:</strong>\n8(8662) 42-33-26\n<strong>ж/д:</strong> 8(8662) 42-70-09\n8(8662) 42-64-31\n8(8662) 42-52-57\n\n<strong>Наш офис в г. Прохладный:</strong>\n\nКБР, г. Прохладный, ул. Карла Маркса, 38, офис 3\n\n<strong>Тел.:</strong>\n8(86631) 4-56-86\n', 'КОНТАКТЫ', '', 'inherit', 'closed', 'closed', '', '51-autosave-v1', '', '', '2017-04-02 13:26:44', '2017-04-02 10:26:44', '', 51, 'http://agency.loc/51-autosave-v1/', 0, 'revision', '', 0),
(73, 1, '2017-04-02 13:27:21', '2017-04-02 10:27:21', '<strong>Наш офис в г. Нальчик:</strong>\r\n\r\n360051, КБР, г. Нальчик, проспект Ленина, дом 43\r\n\r\n<strong>Тел.:</strong>\r\n8(8662) 42-33-26\r\n<strong>ж/д:</strong> 8(8662) 42-70-09\r\n8(8662) 42-64-31\r\n8(8662) 42-52-57\r\n\r\n<strong>Наш офис в г. Прохладный:</strong>\r\n\r\nКБР, г. Прохладный, ул. Карла Маркса, 38, офис 3\r\n\r\n<strong>Тел.:</strong>\r\n8(86631) 4-56-86\r\n', 'КОНТАКТЫ', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2017-04-02 13:27:21', '2017-04-02 10:27:21', '', 51, 'http://agency.loc/51-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2017-04-02 17:04:13', '2017-04-02 14:04:13', '', 'О нас', '', 'publish', 'closed', 'closed', '', '%d0%be-%d0%bd%d0%b0%d1%81', '', '', '2017-04-02 17:04:24', '2017-04-02 14:04:24', '', 0, 'http://agency.loc/?p=74', 1, 'nav_menu_item', '', 0),
(75, 1, '2017-04-02 17:04:13', '2017-04-02 14:04:13', ' ', '', '', 'publish', 'closed', 'closed', '', '75', '', '', '2017-04-02 17:04:24', '2017-04-02 14:04:24', '', 0, 'http://agency.loc/?p=75', 2, 'nav_menu_item', '', 0),
(76, 1, '2017-04-02 17:04:13', '2017-04-02 14:04:13', ' ', '', '', 'publish', 'closed', 'closed', '', '76', '', '', '2017-04-02 17:04:24', '2017-04-02 14:04:24', '', 0, 'http://agency.loc/?p=76', 3, 'nav_menu_item', '', 0),
(77, 1, '2017-04-02 17:04:13', '2017-04-02 14:04:13', ' ', '', '', 'publish', 'closed', 'closed', '', '77', '', '', '2017-04-02 17:04:24', '2017-04-02 14:04:24', '', 0, 'http://agency.loc/?p=77', 4, 'nav_menu_item', '', 0),
(78, 1, '2017-04-02 17:08:50', '2017-04-02 14:08:50', '', 'wnyxiiam', '', 'inherit', 'open', 'closed', '', 'wnyxiiam', '', '', '2017-04-02 17:08:50', '2017-04-02 14:08:50', '', 53, 'http://agency.loc/wp-content/uploads/2017/04/wnyxiiam.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2017-04-02 17:09:11', '2017-04-02 14:09:11', '', 'Фотогалерея', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2017-04-02 17:09:11', '2017-04-02 14:09:11', '', 53, 'http://agency.loc/53-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Новости', '%d0%bd%d0%be%d0%b2%d0%be%d1%81%d1%82%d0%b8', 0),
(3, 'Отзывы', '%d0%be%d1%82%d0%b7%d1%8b%d0%b2%d1%8b', 0),
(4, 'Top menu', 'top-menu', 0),
(5, 'Bottom menu', 'bottom-menu', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 2, 0),
(15, 2, 0),
(17, 2, 0),
(19, 3, 0),
(22, 3, 0),
(24, 3, 0),
(56, 4, 0),
(57, 4, 0),
(59, 4, 0),
(60, 4, 0),
(74, 5, 0),
(75, 5, 0),
(76, 5, 0),
(77, 5, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 3),
(3, 3, 'category', '', 0, 3),
(4, 4, 'nav_menu', '', 0, 4),
(5, 5, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:"4c27a865fff001ff91a914b6366d82a23005223f1c1ec020bf8f3f702ef3c071";a:4:{s:10:"expiration";i:1492320282;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36";s:5:"login";i:1491110682;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '46'),
(16, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(17, 1, 'wp_user-settings-time', '1491128837'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:20:"add-post-type-slider";i:1;s:22:"add-post-type-question";i:2;s:20:"add-post-type-review";i:3;s:12:"add-post_tag";}'),
(20, 1, 'nav_menu_recently_edited', '5');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BUlwH5872KFrrzBa265/gsdULhSuZx.', 'admin', 'ahatuhov@gmail.com', '', '2016-11-16 06:45:51', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=286;
--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=311;
--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
