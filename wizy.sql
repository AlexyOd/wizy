-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 19 2026 г., 19:25
-- Версия сервера: 5.7.39
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wizy`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Комментатор WordPress', 'wapuu@wordpress.example', 'https://ru.wordpress.org/', '', '2026-01-12 11:36:46', '2026-01-12 08:36:46', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:10:{i:1768822606;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1768855026;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1768858606;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1768860406;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1768862206;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1768898206;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1768898226;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1768898228;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1768902054;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'http://loc.wizy', 'on'),
(3, 'home', 'http://loc.wizy', 'on'),
(4, 'blogname', 'wizy', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'orlikallord1989@gmail.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'd.m.Y', 'on'),
(25, 'time_format', 'H:i', 'on'),
(26, 'links_updated_date_format', 'd.m.Y H:i', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:8:{i:0;s:25:\"polylang-pro/polylang.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:19:\"akismet/akismet.php\";i:3;s:33:\"classic-editor/classic-editor.php\";i:4;s:22:\"cyr2lat/cyr-to-lat.php\";i:5;s:32:\"duplicate-page/duplicatepage.php\";i:6;s:9:\"hello.php\";i:8;s:27:\"wp-super-cache/wp-cache.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'https://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '3', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'custom', 'on'),
(42, 'stylesheet', 'custom', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '60421', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '1', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'page', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:0:{}', 'on'),
(78, 'widget_text', 'a:0:{}', 'on'),
(79, 'widget_rss', 'a:0:{}', 'on'),
(80, 'uninstall_plugins', 'a:1:{s:27:\"wp-super-cache/wp-cache.php\";s:22:\"wpsupercache_uninstall\";}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '15', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1783759006', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'initial_db_version', '60421', 'on'),
(102, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'on'),
(103, 'fresh_site', '0', 'off'),
(104, 'WPLANG', 'ru_RU', 'auto'),
(105, 'user_count', '1', 'off'),
(106, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:167:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие записи</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:247:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие комментарии</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Архивы</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Рубрики</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(107, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'auto'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(122, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.8.2\";s:5:\"files\";a:536:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:33:\"comment-author-name/style-rtl.css\";i:77;s:37:\"comment-author-name/style-rtl.min.css\";i:78;s:29:\"comment-author-name/style.css\";i:79;s:33:\"comment-author-name/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:26:\"comment-date/style-rtl.css\";i:85;s:30:\"comment-date/style-rtl.min.css\";i:86;s:22:\"comment-date/style.css\";i:87;s:26:\"comment-date/style.min.css\";i:88;s:31:\"comment-edit-link/style-rtl.css\";i:89;s:35:\"comment-edit-link/style-rtl.min.css\";i:90;s:27:\"comment-edit-link/style.css\";i:91;s:31:\"comment-edit-link/style.min.css\";i:92;s:32:\"comment-reply-link/style-rtl.css\";i:93;s:36:\"comment-reply-link/style-rtl.min.css\";i:94;s:28:\"comment-reply-link/style.css\";i:95;s:32:\"comment-reply-link/style.min.css\";i:96;s:30:\"comment-template/style-rtl.css\";i:97;s:34:\"comment-template/style-rtl.min.css\";i:98;s:26:\"comment-template/style.css\";i:99;s:30:\"comment-template/style.min.css\";i:100;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:101;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:102;s:38:\"comments-pagination-numbers/editor.css\";i:103;s:42:\"comments-pagination-numbers/editor.min.css\";i:104;s:34:\"comments-pagination/editor-rtl.css\";i:105;s:38:\"comments-pagination/editor-rtl.min.css\";i:106;s:30:\"comments-pagination/editor.css\";i:107;s:34:\"comments-pagination/editor.min.css\";i:108;s:33:\"comments-pagination/style-rtl.css\";i:109;s:37:\"comments-pagination/style-rtl.min.css\";i:110;s:29:\"comments-pagination/style.css\";i:111;s:33:\"comments-pagination/style.min.css\";i:112;s:29:\"comments-title/editor-rtl.css\";i:113;s:33:\"comments-title/editor-rtl.min.css\";i:114;s:25:\"comments-title/editor.css\";i:115;s:29:\"comments-title/editor.min.css\";i:116;s:23:\"comments/editor-rtl.css\";i:117;s:27:\"comments/editor-rtl.min.css\";i:118;s:19:\"comments/editor.css\";i:119;s:23:\"comments/editor.min.css\";i:120;s:22:\"comments/style-rtl.css\";i:121;s:26:\"comments/style-rtl.min.css\";i:122;s:18:\"comments/style.css\";i:123;s:22:\"comments/style.min.css\";i:124;s:20:\"cover/editor-rtl.css\";i:125;s:24:\"cover/editor-rtl.min.css\";i:126;s:16:\"cover/editor.css\";i:127;s:20:\"cover/editor.min.css\";i:128;s:19:\"cover/style-rtl.css\";i:129;s:23:\"cover/style-rtl.min.css\";i:130;s:15:\"cover/style.css\";i:131;s:19:\"cover/style.min.css\";i:132;s:22:\"details/editor-rtl.css\";i:133;s:26:\"details/editor-rtl.min.css\";i:134;s:18:\"details/editor.css\";i:135;s:22:\"details/editor.min.css\";i:136;s:21:\"details/style-rtl.css\";i:137;s:25:\"details/style-rtl.min.css\";i:138;s:17:\"details/style.css\";i:139;s:21:\"details/style.min.css\";i:140;s:20:\"embed/editor-rtl.css\";i:141;s:24:\"embed/editor-rtl.min.css\";i:142;s:16:\"embed/editor.css\";i:143;s:20:\"embed/editor.min.css\";i:144;s:19:\"embed/style-rtl.css\";i:145;s:23:\"embed/style-rtl.min.css\";i:146;s:15:\"embed/style.css\";i:147;s:19:\"embed/style.min.css\";i:148;s:19:\"embed/theme-rtl.css\";i:149;s:23:\"embed/theme-rtl.min.css\";i:150;s:15:\"embed/theme.css\";i:151;s:19:\"embed/theme.min.css\";i:152;s:19:\"file/editor-rtl.css\";i:153;s:23:\"file/editor-rtl.min.css\";i:154;s:15:\"file/editor.css\";i:155;s:19:\"file/editor.min.css\";i:156;s:18:\"file/style-rtl.css\";i:157;s:22:\"file/style-rtl.min.css\";i:158;s:14:\"file/style.css\";i:159;s:18:\"file/style.min.css\";i:160;s:23:\"footnotes/style-rtl.css\";i:161;s:27:\"footnotes/style-rtl.min.css\";i:162;s:19:\"footnotes/style.css\";i:163;s:23:\"footnotes/style.min.css\";i:164;s:23:\"freeform/editor-rtl.css\";i:165;s:27:\"freeform/editor-rtl.min.css\";i:166;s:19:\"freeform/editor.css\";i:167;s:23:\"freeform/editor.min.css\";i:168;s:22:\"gallery/editor-rtl.css\";i:169;s:26:\"gallery/editor-rtl.min.css\";i:170;s:18:\"gallery/editor.css\";i:171;s:22:\"gallery/editor.min.css\";i:172;s:21:\"gallery/style-rtl.css\";i:173;s:25:\"gallery/style-rtl.min.css\";i:174;s:17:\"gallery/style.css\";i:175;s:21:\"gallery/style.min.css\";i:176;s:21:\"gallery/theme-rtl.css\";i:177;s:25:\"gallery/theme-rtl.min.css\";i:178;s:17:\"gallery/theme.css\";i:179;s:21:\"gallery/theme.min.css\";i:180;s:20:\"group/editor-rtl.css\";i:181;s:24:\"group/editor-rtl.min.css\";i:182;s:16:\"group/editor.css\";i:183;s:20:\"group/editor.min.css\";i:184;s:19:\"group/style-rtl.css\";i:185;s:23:\"group/style-rtl.min.css\";i:186;s:15:\"group/style.css\";i:187;s:19:\"group/style.min.css\";i:188;s:19:\"group/theme-rtl.css\";i:189;s:23:\"group/theme-rtl.min.css\";i:190;s:15:\"group/theme.css\";i:191;s:19:\"group/theme.min.css\";i:192;s:21:\"heading/style-rtl.css\";i:193;s:25:\"heading/style-rtl.min.css\";i:194;s:17:\"heading/style.css\";i:195;s:21:\"heading/style.min.css\";i:196;s:19:\"html/editor-rtl.css\";i:197;s:23:\"html/editor-rtl.min.css\";i:198;s:15:\"html/editor.css\";i:199;s:19:\"html/editor.min.css\";i:200;s:20:\"image/editor-rtl.css\";i:201;s:24:\"image/editor-rtl.min.css\";i:202;s:16:\"image/editor.css\";i:203;s:20:\"image/editor.min.css\";i:204;s:19:\"image/style-rtl.css\";i:205;s:23:\"image/style-rtl.min.css\";i:206;s:15:\"image/style.css\";i:207;s:19:\"image/style.min.css\";i:208;s:19:\"image/theme-rtl.css\";i:209;s:23:\"image/theme-rtl.min.css\";i:210;s:15:\"image/theme.css\";i:211;s:19:\"image/theme.min.css\";i:212;s:29:\"latest-comments/style-rtl.css\";i:213;s:33:\"latest-comments/style-rtl.min.css\";i:214;s:25:\"latest-comments/style.css\";i:215;s:29:\"latest-comments/style.min.css\";i:216;s:27:\"latest-posts/editor-rtl.css\";i:217;s:31:\"latest-posts/editor-rtl.min.css\";i:218;s:23:\"latest-posts/editor.css\";i:219;s:27:\"latest-posts/editor.min.css\";i:220;s:26:\"latest-posts/style-rtl.css\";i:221;s:30:\"latest-posts/style-rtl.min.css\";i:222;s:22:\"latest-posts/style.css\";i:223;s:26:\"latest-posts/style.min.css\";i:224;s:18:\"list/style-rtl.css\";i:225;s:22:\"list/style-rtl.min.css\";i:226;s:14:\"list/style.css\";i:227;s:18:\"list/style.min.css\";i:228;s:22:\"loginout/style-rtl.css\";i:229;s:26:\"loginout/style-rtl.min.css\";i:230;s:18:\"loginout/style.css\";i:231;s:22:\"loginout/style.min.css\";i:232;s:25:\"media-text/editor-rtl.css\";i:233;s:29:\"media-text/editor-rtl.min.css\";i:234;s:21:\"media-text/editor.css\";i:235;s:25:\"media-text/editor.min.css\";i:236;s:24:\"media-text/style-rtl.css\";i:237;s:28:\"media-text/style-rtl.min.css\";i:238;s:20:\"media-text/style.css\";i:239;s:24:\"media-text/style.min.css\";i:240;s:19:\"more/editor-rtl.css\";i:241;s:23:\"more/editor-rtl.min.css\";i:242;s:15:\"more/editor.css\";i:243;s:19:\"more/editor.min.css\";i:244;s:30:\"navigation-link/editor-rtl.css\";i:245;s:34:\"navigation-link/editor-rtl.min.css\";i:246;s:26:\"navigation-link/editor.css\";i:247;s:30:\"navigation-link/editor.min.css\";i:248;s:29:\"navigation-link/style-rtl.css\";i:249;s:33:\"navigation-link/style-rtl.min.css\";i:250;s:25:\"navigation-link/style.css\";i:251;s:29:\"navigation-link/style.min.css\";i:252;s:33:\"navigation-submenu/editor-rtl.css\";i:253;s:37:\"navigation-submenu/editor-rtl.min.css\";i:254;s:29:\"navigation-submenu/editor.css\";i:255;s:33:\"navigation-submenu/editor.min.css\";i:256;s:25:\"navigation/editor-rtl.css\";i:257;s:29:\"navigation/editor-rtl.min.css\";i:258;s:21:\"navigation/editor.css\";i:259;s:25:\"navigation/editor.min.css\";i:260;s:24:\"navigation/style-rtl.css\";i:261;s:28:\"navigation/style-rtl.min.css\";i:262;s:20:\"navigation/style.css\";i:263;s:24:\"navigation/style.min.css\";i:264;s:23:\"nextpage/editor-rtl.css\";i:265;s:27:\"nextpage/editor-rtl.min.css\";i:266;s:19:\"nextpage/editor.css\";i:267;s:23:\"nextpage/editor.min.css\";i:268;s:24:\"page-list/editor-rtl.css\";i:269;s:28:\"page-list/editor-rtl.min.css\";i:270;s:20:\"page-list/editor.css\";i:271;s:24:\"page-list/editor.min.css\";i:272;s:23:\"page-list/style-rtl.css\";i:273;s:27:\"page-list/style-rtl.min.css\";i:274;s:19:\"page-list/style.css\";i:275;s:23:\"page-list/style.min.css\";i:276;s:24:\"paragraph/editor-rtl.css\";i:277;s:28:\"paragraph/editor-rtl.min.css\";i:278;s:20:\"paragraph/editor.css\";i:279;s:24:\"paragraph/editor.min.css\";i:280;s:23:\"paragraph/style-rtl.css\";i:281;s:27:\"paragraph/style-rtl.min.css\";i:282;s:19:\"paragraph/style.css\";i:283;s:23:\"paragraph/style.min.css\";i:284;s:35:\"post-author-biography/style-rtl.css\";i:285;s:39:\"post-author-biography/style-rtl.min.css\";i:286;s:31:\"post-author-biography/style.css\";i:287;s:35:\"post-author-biography/style.min.css\";i:288;s:30:\"post-author-name/style-rtl.css\";i:289;s:34:\"post-author-name/style-rtl.min.css\";i:290;s:26:\"post-author-name/style.css\";i:291;s:30:\"post-author-name/style.min.css\";i:292;s:26:\"post-author/editor-rtl.css\";i:293;s:30:\"post-author/editor-rtl.min.css\";i:294;s:22:\"post-author/editor.css\";i:295;s:26:\"post-author/editor.min.css\";i:296;s:25:\"post-author/style-rtl.css\";i:297;s:29:\"post-author/style-rtl.min.css\";i:298;s:21:\"post-author/style.css\";i:299;s:25:\"post-author/style.min.css\";i:300;s:33:\"post-comments-form/editor-rtl.css\";i:301;s:37:\"post-comments-form/editor-rtl.min.css\";i:302;s:29:\"post-comments-form/editor.css\";i:303;s:33:\"post-comments-form/editor.min.css\";i:304;s:32:\"post-comments-form/style-rtl.css\";i:305;s:36:\"post-comments-form/style-rtl.min.css\";i:306;s:28:\"post-comments-form/style.css\";i:307;s:32:\"post-comments-form/style.min.css\";i:308;s:26:\"post-content/style-rtl.css\";i:309;s:30:\"post-content/style-rtl.min.css\";i:310;s:22:\"post-content/style.css\";i:311;s:26:\"post-content/style.min.css\";i:312;s:23:\"post-date/style-rtl.css\";i:313;s:27:\"post-date/style-rtl.min.css\";i:314;s:19:\"post-date/style.css\";i:315;s:23:\"post-date/style.min.css\";i:316;s:27:\"post-excerpt/editor-rtl.css\";i:317;s:31:\"post-excerpt/editor-rtl.min.css\";i:318;s:23:\"post-excerpt/editor.css\";i:319;s:27:\"post-excerpt/editor.min.css\";i:320;s:26:\"post-excerpt/style-rtl.css\";i:321;s:30:\"post-excerpt/style-rtl.min.css\";i:322;s:22:\"post-excerpt/style.css\";i:323;s:26:\"post-excerpt/style.min.css\";i:324;s:34:\"post-featured-image/editor-rtl.css\";i:325;s:38:\"post-featured-image/editor-rtl.min.css\";i:326;s:30:\"post-featured-image/editor.css\";i:327;s:34:\"post-featured-image/editor.min.css\";i:328;s:33:\"post-featured-image/style-rtl.css\";i:329;s:37:\"post-featured-image/style-rtl.min.css\";i:330;s:29:\"post-featured-image/style.css\";i:331;s:33:\"post-featured-image/style.min.css\";i:332;s:34:\"post-navigation-link/style-rtl.css\";i:333;s:38:\"post-navigation-link/style-rtl.min.css\";i:334;s:30:\"post-navigation-link/style.css\";i:335;s:34:\"post-navigation-link/style.min.css\";i:336;s:27:\"post-template/style-rtl.css\";i:337;s:31:\"post-template/style-rtl.min.css\";i:338;s:23:\"post-template/style.css\";i:339;s:27:\"post-template/style.min.css\";i:340;s:24:\"post-terms/style-rtl.css\";i:341;s:28:\"post-terms/style-rtl.min.css\";i:342;s:20:\"post-terms/style.css\";i:343;s:24:\"post-terms/style.min.css\";i:344;s:24:\"post-title/style-rtl.css\";i:345;s:28:\"post-title/style-rtl.min.css\";i:346;s:20:\"post-title/style.css\";i:347;s:24:\"post-title/style.min.css\";i:348;s:26:\"preformatted/style-rtl.css\";i:349;s:30:\"preformatted/style-rtl.min.css\";i:350;s:22:\"preformatted/style.css\";i:351;s:26:\"preformatted/style.min.css\";i:352;s:24:\"pullquote/editor-rtl.css\";i:353;s:28:\"pullquote/editor-rtl.min.css\";i:354;s:20:\"pullquote/editor.css\";i:355;s:24:\"pullquote/editor.min.css\";i:356;s:23:\"pullquote/style-rtl.css\";i:357;s:27:\"pullquote/style-rtl.min.css\";i:358;s:19:\"pullquote/style.css\";i:359;s:23:\"pullquote/style.min.css\";i:360;s:23:\"pullquote/theme-rtl.css\";i:361;s:27:\"pullquote/theme-rtl.min.css\";i:362;s:19:\"pullquote/theme.css\";i:363;s:23:\"pullquote/theme.min.css\";i:364;s:39:\"query-pagination-numbers/editor-rtl.css\";i:365;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:366;s:35:\"query-pagination-numbers/editor.css\";i:367;s:39:\"query-pagination-numbers/editor.min.css\";i:368;s:31:\"query-pagination/editor-rtl.css\";i:369;s:35:\"query-pagination/editor-rtl.min.css\";i:370;s:27:\"query-pagination/editor.css\";i:371;s:31:\"query-pagination/editor.min.css\";i:372;s:30:\"query-pagination/style-rtl.css\";i:373;s:34:\"query-pagination/style-rtl.min.css\";i:374;s:26:\"query-pagination/style.css\";i:375;s:30:\"query-pagination/style.min.css\";i:376;s:25:\"query-title/style-rtl.css\";i:377;s:29:\"query-title/style-rtl.min.css\";i:378;s:21:\"query-title/style.css\";i:379;s:25:\"query-title/style.min.css\";i:380;s:25:\"query-total/style-rtl.css\";i:381;s:29:\"query-total/style-rtl.min.css\";i:382;s:21:\"query-total/style.css\";i:383;s:25:\"query-total/style.min.css\";i:384;s:20:\"query/editor-rtl.css\";i:385;s:24:\"query/editor-rtl.min.css\";i:386;s:16:\"query/editor.css\";i:387;s:20:\"query/editor.min.css\";i:388;s:19:\"quote/style-rtl.css\";i:389;s:23:\"quote/style-rtl.min.css\";i:390;s:15:\"quote/style.css\";i:391;s:19:\"quote/style.min.css\";i:392;s:19:\"quote/theme-rtl.css\";i:393;s:23:\"quote/theme-rtl.min.css\";i:394;s:15:\"quote/theme.css\";i:395;s:19:\"quote/theme.min.css\";i:396;s:23:\"read-more/style-rtl.css\";i:397;s:27:\"read-more/style-rtl.min.css\";i:398;s:19:\"read-more/style.css\";i:399;s:23:\"read-more/style.min.css\";i:400;s:18:\"rss/editor-rtl.css\";i:401;s:22:\"rss/editor-rtl.min.css\";i:402;s:14:\"rss/editor.css\";i:403;s:18:\"rss/editor.min.css\";i:404;s:17:\"rss/style-rtl.css\";i:405;s:21:\"rss/style-rtl.min.css\";i:406;s:13:\"rss/style.css\";i:407;s:17:\"rss/style.min.css\";i:408;s:21:\"search/editor-rtl.css\";i:409;s:25:\"search/editor-rtl.min.css\";i:410;s:17:\"search/editor.css\";i:411;s:21:\"search/editor.min.css\";i:412;s:20:\"search/style-rtl.css\";i:413;s:24:\"search/style-rtl.min.css\";i:414;s:16:\"search/style.css\";i:415;s:20:\"search/style.min.css\";i:416;s:20:\"search/theme-rtl.css\";i:417;s:24:\"search/theme-rtl.min.css\";i:418;s:16:\"search/theme.css\";i:419;s:20:\"search/theme.min.css\";i:420;s:24:\"separator/editor-rtl.css\";i:421;s:28:\"separator/editor-rtl.min.css\";i:422;s:20:\"separator/editor.css\";i:423;s:24:\"separator/editor.min.css\";i:424;s:23:\"separator/style-rtl.css\";i:425;s:27:\"separator/style-rtl.min.css\";i:426;s:19:\"separator/style.css\";i:427;s:23:\"separator/style.min.css\";i:428;s:23:\"separator/theme-rtl.css\";i:429;s:27:\"separator/theme-rtl.min.css\";i:430;s:19:\"separator/theme.css\";i:431;s:23:\"separator/theme.min.css\";i:432;s:24:\"shortcode/editor-rtl.css\";i:433;s:28:\"shortcode/editor-rtl.min.css\";i:434;s:20:\"shortcode/editor.css\";i:435;s:24:\"shortcode/editor.min.css\";i:436;s:24:\"site-logo/editor-rtl.css\";i:437;s:28:\"site-logo/editor-rtl.min.css\";i:438;s:20:\"site-logo/editor.css\";i:439;s:24:\"site-logo/editor.min.css\";i:440;s:23:\"site-logo/style-rtl.css\";i:441;s:27:\"site-logo/style-rtl.min.css\";i:442;s:19:\"site-logo/style.css\";i:443;s:23:\"site-logo/style.min.css\";i:444;s:27:\"site-tagline/editor-rtl.css\";i:445;s:31:\"site-tagline/editor-rtl.min.css\";i:446;s:23:\"site-tagline/editor.css\";i:447;s:27:\"site-tagline/editor.min.css\";i:448;s:26:\"site-tagline/style-rtl.css\";i:449;s:30:\"site-tagline/style-rtl.min.css\";i:450;s:22:\"site-tagline/style.css\";i:451;s:26:\"site-tagline/style.min.css\";i:452;s:25:\"site-title/editor-rtl.css\";i:453;s:29:\"site-title/editor-rtl.min.css\";i:454;s:21:\"site-title/editor.css\";i:455;s:25:\"site-title/editor.min.css\";i:456;s:24:\"site-title/style-rtl.css\";i:457;s:28:\"site-title/style-rtl.min.css\";i:458;s:20:\"site-title/style.css\";i:459;s:24:\"site-title/style.min.css\";i:460;s:26:\"social-link/editor-rtl.css\";i:461;s:30:\"social-link/editor-rtl.min.css\";i:462;s:22:\"social-link/editor.css\";i:463;s:26:\"social-link/editor.min.css\";i:464;s:27:\"social-links/editor-rtl.css\";i:465;s:31:\"social-links/editor-rtl.min.css\";i:466;s:23:\"social-links/editor.css\";i:467;s:27:\"social-links/editor.min.css\";i:468;s:26:\"social-links/style-rtl.css\";i:469;s:30:\"social-links/style-rtl.min.css\";i:470;s:22:\"social-links/style.css\";i:471;s:26:\"social-links/style.min.css\";i:472;s:21:\"spacer/editor-rtl.css\";i:473;s:25:\"spacer/editor-rtl.min.css\";i:474;s:17:\"spacer/editor.css\";i:475;s:21:\"spacer/editor.min.css\";i:476;s:20:\"spacer/style-rtl.css\";i:477;s:24:\"spacer/style-rtl.min.css\";i:478;s:16:\"spacer/style.css\";i:479;s:20:\"spacer/style.min.css\";i:480;s:20:\"table/editor-rtl.css\";i:481;s:24:\"table/editor-rtl.min.css\";i:482;s:16:\"table/editor.css\";i:483;s:20:\"table/editor.min.css\";i:484;s:19:\"table/style-rtl.css\";i:485;s:23:\"table/style-rtl.min.css\";i:486;s:15:\"table/style.css\";i:487;s:19:\"table/style.min.css\";i:488;s:19:\"table/theme-rtl.css\";i:489;s:23:\"table/theme-rtl.min.css\";i:490;s:15:\"table/theme.css\";i:491;s:19:\"table/theme.min.css\";i:492;s:24:\"tag-cloud/editor-rtl.css\";i:493;s:28:\"tag-cloud/editor-rtl.min.css\";i:494;s:20:\"tag-cloud/editor.css\";i:495;s:24:\"tag-cloud/editor.min.css\";i:496;s:23:\"tag-cloud/style-rtl.css\";i:497;s:27:\"tag-cloud/style-rtl.min.css\";i:498;s:19:\"tag-cloud/style.css\";i:499;s:23:\"tag-cloud/style.min.css\";i:500;s:28:\"template-part/editor-rtl.css\";i:501;s:32:\"template-part/editor-rtl.min.css\";i:502;s:24:\"template-part/editor.css\";i:503;s:28:\"template-part/editor.min.css\";i:504;s:27:\"template-part/theme-rtl.css\";i:505;s:31:\"template-part/theme-rtl.min.css\";i:506;s:23:\"template-part/theme.css\";i:507;s:27:\"template-part/theme.min.css\";i:508;s:30:\"term-description/style-rtl.css\";i:509;s:34:\"term-description/style-rtl.min.css\";i:510;s:26:\"term-description/style.css\";i:511;s:30:\"term-description/style.min.css\";i:512;s:27:\"text-columns/editor-rtl.css\";i:513;s:31:\"text-columns/editor-rtl.min.css\";i:514;s:23:\"text-columns/editor.css\";i:515;s:27:\"text-columns/editor.min.css\";i:516;s:26:\"text-columns/style-rtl.css\";i:517;s:30:\"text-columns/style-rtl.min.css\";i:518;s:22:\"text-columns/style.css\";i:519;s:26:\"text-columns/style.min.css\";i:520;s:19:\"verse/style-rtl.css\";i:521;s:23:\"verse/style-rtl.min.css\";i:522;s:15:\"verse/style.css\";i:523;s:19:\"verse/style.min.css\";i:524;s:20:\"video/editor-rtl.css\";i:525;s:24:\"video/editor-rtl.min.css\";i:526;s:16:\"video/editor.css\";i:527;s:20:\"video/editor.min.css\";i:528;s:19:\"video/style-rtl.css\";i:529;s:23:\"video/style-rtl.min.css\";i:530;s:15:\"video/style.css\";i:531;s:19:\"video/style.min.css\";i:532;s:19:\"video/theme-rtl.css\";i:533;s:23:\"video/theme-rtl.min.css\";i:534;s:15:\"video/theme.css\";i:535;s:19:\"video/theme.min.css\";}}', 'on'),
(126, 'recovery_keys', 'a:0:{}', 'off'),
(127, 'theme_mods_twentytwentyfive', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1768211952;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(128, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"b85299609b56809c9a345cd6b8ccc7e6\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(141, 'can_compress_scripts', '0', 'on'),
(154, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(155, 'recently_activated', 'a:0:{}', 'off'),
(158, 'finished_updating_comment_type', '1', 'auto'),
(171, 'current_theme', 'agro', 'auto'),
(172, 'theme_mods_custom', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:4:\"main\";i:9;s:6:\"footer\";i:0;}s:18:\"custom_css_post_id\";i:-1;}', 'on'),
(173, 'theme_switched', '', 'auto'),
(174, 'recovery_mode_email_last_sent', '1768211952', 'auto'),
(181, 'duplicate_page_options', 'a:4:{s:21:\"duplicate_post_status\";s:5:\"draft\";s:23:\"duplicate_post_redirect\";s:7:\"to_list\";s:21:\"duplicate_post_suffix\";s:0:\"\";s:21:\"duplicate_post_editor\";s:7:\"classic\";}', 'auto'),
(184, 'polylang', 'a:15:{s:7:\"browser\";i:0;s:7:\"rewrite\";i:1;s:12:\"hide_default\";i:1;s:10:\"force_lang\";i:1;s:13:\"redirect_lang\";i:0;s:13:\"media_support\";i:0;s:9:\"uninstall\";i:0;s:4:\"sync\";a:0:{}s:10:\"post_types\";a:0:{}s:10:\"taxonomies\";a:0:{}s:7:\"domains\";a:0:{}s:7:\"version\";s:5:\"3.5.3\";s:16:\"first_activation\";i:1768212466;s:12:\"default_lang\";s:2:\"uk\";s:9:\"nav_menus\";a:1:{s:6:\"custom\";a:2:{s:4:\"main\";a:2:{s:2:\"uk\";i:9;s:2:\"en\";i:0;}s:6:\"footer\";a:2:{s:2:\"uk\";i:0;s:2:\"en\";i:0;}}}}', 'auto'),
(185, 'polylang_wpml_strings', 'a:0:{}', 'auto'),
(187, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(188, 'widget_polylang', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(190, 'acf_version', '6.2.4', 'auto');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(192, 'rewrite_rules', 'a:184:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:53:\"^(en)/wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:92:\"index.php?lang=$matches[1]&sitemap=$matches[2]&sitemap-subtype=$matches[3]&paged=$matches[4]\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:39:\"^(en)/wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:64:\"index.php?lang=$matches[1]&sitemap=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:52:\"(en)/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:47:\"(en)/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:28:\"(en)/category/(.+?)/embed/?$\";s:63:\"index.php?lang=$matches[1]&category_name=$matches[2]&embed=true\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:40:\"(en)/category/(.+?)/page/?([0-9]{1,})/?$\";s:70:\"index.php?lang=$matches[1]&category_name=$matches[2]&paged=$matches[3]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:22:\"(en)/category/(.+?)/?$\";s:52:\"index.php?lang=$matches[1]&category_name=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:49:\"(en)/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:44:\"(en)/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:25:\"(en)/tag/([^/]+)/embed/?$\";s:53:\"index.php?lang=$matches[1]&tag=$matches[2]&embed=true\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:37:\"(en)/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?lang=$matches[1]&tag=$matches[2]&paged=$matches[3]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:19:\"(en)/tag/([^/]+)/?$\";s:42:\"index.php?lang=$matches[1]&tag=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:50:\"(en)/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=uk&post_format=$matches[1]&feed=$matches[2]\";s:45:\"(en)/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=uk&post_format=$matches[1]&feed=$matches[2]\";s:26:\"(en)/type/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&post_format=$matches[2]&embed=true\";s:21:\"type/([^/]+)/embed/?$\";s:52:\"index.php?lang=uk&post_format=$matches[1]&embed=true\";s:38:\"(en)/type/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&post_format=$matches[2]&paged=$matches[3]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=uk&post_format=$matches[1]&paged=$matches[2]\";s:20:\"(en)/type/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&post_format=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:41:\"index.php?lang=uk&post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:24:\"index.php??sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:37:\"(en)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=uk&&feed=$matches[1]\";s:32:\"(en)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=uk&&feed=$matches[1]\";s:13:\"(en)/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:8:\"embed/?$\";s:29:\"index.php?lang=uk&&embed=true\";s:25:\"(en)/page/?([0-9]{1,})/?$\";s:45:\"index.php?lang=$matches[1]&&paged=$matches[2]\";s:20:\"page/?([0-9]{1,})/?$\";s:36:\"index.php?lang=uk&&paged=$matches[1]\";s:32:\"(en)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?lang=$matches[1]&&page_id=15&cpage=$matches[2]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:47:\"index.php?lang=uk&&page_id=15&cpage=$matches[1]\";s:7:\"(en)/?$\";s:26:\"index.php?lang=$matches[1]\";s:46:\"(en)/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=uk&&feed=$matches[1]&withcomments=1\";s:41:\"(en)/comments/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=uk&&feed=$matches[1]&withcomments=1\";s:22:\"(en)/comments/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:17:\"comments/embed/?$\";s:29:\"index.php?lang=uk&&embed=true\";s:49:\"(en)/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=uk&s=$matches[1]&feed=$matches[2]\";s:44:\"(en)/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=uk&s=$matches[1]&feed=$matches[2]\";s:25:\"(en)/search/(.+)/embed/?$\";s:51:\"index.php?lang=$matches[1]&s=$matches[2]&embed=true\";s:20:\"search/(.+)/embed/?$\";s:42:\"index.php?lang=uk&s=$matches[1]&embed=true\";s:37:\"(en)/search/(.+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?lang=$matches[1]&s=$matches[2]&paged=$matches[3]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?lang=uk&s=$matches[1]&paged=$matches[2]\";s:19:\"(en)/search/(.+)/?$\";s:40:\"index.php?lang=$matches[1]&s=$matches[2]\";s:14:\"search/(.+)/?$\";s:31:\"index.php?lang=uk&s=$matches[1]\";s:52:\"(en)/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=uk&author_name=$matches[1]&feed=$matches[2]\";s:47:\"(en)/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=uk&author_name=$matches[1]&feed=$matches[2]\";s:28:\"(en)/author/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&author_name=$matches[2]&embed=true\";s:23:\"author/([^/]+)/embed/?$\";s:52:\"index.php?lang=uk&author_name=$matches[1]&embed=true\";s:40:\"(en)/author/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&author_name=$matches[2]&paged=$matches[3]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=uk&author_name=$matches[1]&paged=$matches[2]\";s:22:\"(en)/author/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&author_name=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:41:\"index.php?lang=uk&author_name=$matches[1]\";s:74:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:69:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:50:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:91:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&embed=true\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:62:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:98:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&paged=$matches[5]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:44:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:80:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:61:\"(en)/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:56:\"(en)/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:37:\"(en)/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:75:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&embed=true\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:49:\"(en)/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:82:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&paged=$matches[4]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:31:\"(en)/([0-9]{4})/([0-9]{1,2})/?$\";s:64:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:48:\"(en)/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:43:\"(en)/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:24:\"(en)/([0-9]{4})/embed/?$\";s:54:\"index.php?lang=$matches[1]&year=$matches[2]&embed=true\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:36:\"(en)/([0-9]{4})/page/?([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&year=$matches[2]&paged=$matches[3]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:18:\"(en)/([0-9]{4})/?$\";s:43:\"index.php?lang=$matches[1]&year=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:63:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:73:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:93:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:88:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:88:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:69:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:58:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:108:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:62:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:102:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&tb=1\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:82:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:114:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&feed=$matches[6]\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:77:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:114:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&feed=$matches[6]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:70:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:115:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&paged=$matches[6]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:77:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:115:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&cpage=$matches[6]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:66:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:114:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&page=$matches[6]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:52:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:62:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:82:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:77:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:77:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:58:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:69:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&cpage=$matches[5]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:56:\"(en)/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:82:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:43:\"(en)/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&year=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:32:\"(en)/.?.+?/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"(en)/.?.+?/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"(en)/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"(en)/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"(en)/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"(en)/.?.+?/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"(en)/(.?.+?)/embed/?$\";s:58:\"index.php?lang=$matches[1]&pagename=$matches[2]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:25:\"(en)/(.?.+?)/trackback/?$\";s:52:\"index.php?lang=$matches[1]&pagename=$matches[2]&tb=1\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:45:\"(en)/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:40:\"(en)/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:33:\"(en)/(.?.+?)/page/?([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&pagename=$matches[2]&paged=$matches[3]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:40:\"(en)/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&pagename=$matches[2]&cpage=$matches[3]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:29:\"(en)/(.?.+?)(?:/([0-9]+))?/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&page=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'auto'),
(193, 'pll_dismissed_notices', 'a:1:{i:0;s:6:\"wizard\";}', 'auto'),
(206, 'category_children', 'a:0:{}', 'auto'),
(242, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":9,\"critical\":0}', 'on'),
(245, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'off'),
(285, '_transient_pll_translated_slugs', 'a:8:{s:8:\"category\";a:2:{s:4:\"slug\";s:8:\"category\";s:12:\"translations\";a:2:{s:2:\"uk\";s:8:\"category\";s:2:\"en\";s:8:\"category\";}}s:8:\"post_tag\";a:2:{s:4:\"slug\";s:3:\"tag\";s:12:\"translations\";a:2:{s:2:\"uk\";s:3:\"tag\";s:2:\"en\";s:3:\"tag\";}}s:11:\"post_format\";a:2:{s:4:\"slug\";s:4:\"type\";s:12:\"translations\";a:2:{s:2:\"uk\";s:4:\"type\";s:2:\"en\";s:4:\"type\";}}s:6:\"author\";a:2:{s:4:\"slug\";s:6:\"author\";s:12:\"translations\";a:2:{s:2:\"uk\";s:6:\"author\";s:2:\"en\";s:6:\"author\";}}s:6:\"search\";a:2:{s:4:\"slug\";s:6:\"search\";s:12:\"translations\";a:2:{s:2:\"uk\";s:6:\"search\";s:2:\"en\";s:6:\"search\";}}s:10:\"attachment\";a:2:{s:4:\"slug\";s:10:\"attachment\";s:12:\"translations\";a:2:{s:2:\"uk\";s:10:\"attachment\";s:2:\"en\";s:10:\"attachment\";}}s:5:\"paged\";a:2:{s:4:\"slug\";s:4:\"page\";s:12:\"translations\";a:2:{s:2:\"uk\";s:4:\"page\";s:2:\"en\";s:4:\"page\";}}s:5:\"front\";a:2:{s:4:\"slug\";s:0:\"\";s:12:\"translations\";a:2:{s:2:\"uk\";s:0:\"\";s:2:\"en\";s:0:\"\";}}}', 'on'),
(377, '_transient_pll_languages_list', 'a:2:{i:0;a:22:{s:4:\"name\";s:20:\"Українська\";s:4:\"slug\";s:2:\"uk\";s:10:\"term_group\";i:0;s:7:\"term_id\";i:2;s:6:\"locale\";s:2:\"uk\";s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:2:\"uk\";s:8:\"facebook\";s:5:\"uk_UA\";s:8:\"home_url\";s:16:\"http://loc.wizy/\";s:10:\"search_url\";s:16:\"http://loc.wizy/\";s:4:\"host\";N;s:13:\"page_on_front\";i:15;s:14:\"page_for_posts\";i:0;s:9:\"flag_code\";s:2:\"ua\";s:8:\"flag_url\";s:85:\"http://loc.wizy/wp-content/plugins/polylang-pro/vendor/wpsyntex/polylang/flags/ua.png\";s:4:\"flag\";s:457:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAMAAABBPP0LAAAAb1BMVEUAhP8AfP0Ac/oAZ/UAV/B5yv9wxv5iwf1WvP1Ot/gAQOlMt/1Bs/s1rfkpqPdBsfYdovUAkciK0edqwuBautpNtdZAr9IATZr43QD8/GX6+kn5+Tr4+C329iD09BTy8g309DHguQDy8iruzwDnwwAuoRPoAAAASElEQVR4AU3MAQYDQRAF0Ve9WRAQYO5/zUgSDIxf8DQdiGR3I7v0YOLS3ns4PPt8Wq86vn6vVht7NRzG0OHRSpDb8Gt5IvjAHy/kBL+aIRygAAAAAElFTkSuQmCC\" alt=\"Українська\" width=\"16\" height=\"11\" style=\"width: 16px; height: 11px;\" />\";s:15:\"custom_flag_url\";s:0:\"\";s:11:\"custom_flag\";s:0:\"\";s:6:\"active\";b:1;s:9:\"fallbacks\";a:0:{}s:10:\"is_default\";b:1;s:10:\"term_props\";a:2:{s:8:\"language\";a:3:{s:7:\"term_id\";i:2;s:16:\"term_taxonomy_id\";i:2;s:5:\"count\";i:1;}s:13:\"term_language\";a:3:{s:7:\"term_id\";i:3;s:16:\"term_taxonomy_id\";i:3;s:5:\"count\";i:1;}}}i:1;a:22:{s:4:\"name\";s:7:\"English\";s:4:\"slug\";s:2:\"en\";s:10:\"term_group\";i:0;s:7:\"term_id\";i:5;s:6:\"locale\";s:5:\"en_US\";s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"en-US\";s:8:\"facebook\";s:5:\"en_US\";s:8:\"home_url\";s:24:\"http://loc.wizy/en/main/\";s:10:\"search_url\";s:19:\"http://loc.wizy/en/\";s:4:\"host\";N;s:13:\"page_on_front\";i:18;s:14:\"page_for_posts\";i:0;s:9:\"flag_code\";s:2:\"us\";s:8:\"flag_url\";s:85:\"http://loc.wizy/wp-content/plugins/polylang-pro/vendor/wpsyntex/polylang/flags/us.png\";s:4:\"flag\";s:576:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAMAAABBPP0LAAAAmVBMVEViZsViZMJiYrf9gnL8eWrlYkjgYkjZYkj8/PujwPybvPz4+PetraBEgfo+fvo3efkydfkqcvj8Y2T8UlL8Q0P8MzP9k4Hz8/Lu7u4DdPj9/VrKysI9fPoDc/EAZ7z7IiLHYkjp6ekCcOTk5OIASbfY/v21takAJrT5Dg6sYkjc3Nn94t2RkYD+y8KeYkjs/v7l5fz0dF22YkjWvcOLAAAAgElEQVR4AR2KNULFQBgGZ5J13KGGKvc/Cw1uPe62eb9+Jr1EUBFHSgxxjP2Eca6AfUSfVlUfBvm1Ui1bqafctqMndNkXpb01h5TLx4b6TIXgwOCHfjv+/Pz+5vPRw7txGWT2h6yO0/GaYltIp5PT1dEpLNPL/SdWjYjAAZtvRPgHJX4Xio+DSrkAAAAASUVORK5CYII=\" alt=\"English\" width=\"16\" height=\"11\" style=\"width: 16px; height: 11px;\" />\";s:15:\"custom_flag_url\";s:0:\"\";s:11:\"custom_flag\";s:0:\"\";s:6:\"active\";b:1;s:9:\"fallbacks\";a:0:{}s:10:\"is_default\";b:0;s:10:\"term_props\";a:2:{s:8:\"language\";a:3:{s:7:\"term_id\";i:5;s:16:\"term_taxonomy_id\";i:5;s:5:\"count\";i:1;}s:13:\"term_language\";a:3:{s:7:\"term_id\";i:6;s:16:\"term_taxonomy_id\";i:6;s:5:\"count\";i:1;}}}}', 'on'),
(387, '_transient_timeout_acf_plugin_updates', '1768987605', 'off'),
(388, '_transient_acf_plugin_updates', 'a:5:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:7:\"6.7.0.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.9\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:64:\"https://connect.advancedcustomfields.com/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:66:\"https://connect.advancedcustomfields.com/assets/banner-772x250.jpg\";s:4:\"high\";s:67:\"https://connect.advancedcustomfields.com/assets/banner-1544x500.jpg\";}s:8:\"requires\";s:3:\"6.2\";s:12:\"requires_php\";s:3:\"7.4\";s:12:\"release_date\";s:8:\"20251211\";}}s:9:\"no_update\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.2.4\";}}', 'off'),
(404, '_site_transient_t15s-registry-plugins', 'O:8:\"stdClass\":2:{s:12:\"polylang-pro\";a:1:{s:12:\"translations\";a:26:{i:0;a:7:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-05T09:51:13+00:00\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:81:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-ar.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"ar\";i:1;s:3:\"ara\";}}i:1;a:7:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-05T10:46:54+00:00\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-cs_CZ.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"cs\";i:1;s:3:\"ces\";}}i:2;a:7:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-04T18:21:37+00:00\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-da_DK.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"da\";i:1;s:3:\"dan\";}}i:3;a:7:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-04T18:21:08+00:00\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-nl_NL.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"nl\";i:1;s:3:\"nld\";}}i:4;a:7:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-04T18:20:37+00:00\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-nl_BE.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"nl\";i:1;s:3:\"nld\";}}i:5;a:7:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-04T18:19:55+00:00\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-en_AU.zip\";s:3:\"iso\";a:3:{i:0;s:2:\"en\";i:1;s:3:\"eng\";i:2;s:3:\"eng\";}}i:6;a:7:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-04T18:19:35+00:00\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-en_GB.zip\";s:3:\"iso\";a:3:{i:0;s:2:\"en\";i:1;s:3:\"eng\";i:2;s:3:\"eng\";}}i:7;a:7:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-04T18:16:09+00:00\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-fr_FR.zip\";s:3:\"iso\";a:1:{i:0;s:2:\"fr\";}}i:8;a:7:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-07T10:46:28+00:00\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-de_DE.zip\";s:3:\"iso\";a:1:{i:0;s:2:\"de\";}}i:9;a:7:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-08T03:26:42+00:00\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:81:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-el.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"el\";i:1;s:3:\"ell\";}}i:10;a:7:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-04T18:23:36+00:00\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-hi_IN.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"hi\";i:1;s:3:\"hin\";}}i:11;a:7:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-06T07:26:31+00:00\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-id_ID.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"id\";i:1;s:3:\"ind\";}}i:12;a:7:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-05T08:59:26+00:00\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-it_IT.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"it\";i:1;s:3:\"ita\";}}i:13;a:7:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-05T10:22:08+00:00\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:81:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-ja.zip\";s:3:\"iso\";a:1:{i:0;s:2:\"ja\";}}i:14;a:7:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-07T11:56:53+00:00\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-fa_IR.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"fa\";i:1;s:3:\"fas\";}}i:15;a:7:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-04T18:18:56+00:00\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-pl_PL.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"pl\";i:1;s:3:\"pol\";}}i:16;a:7:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-18T17:26:54+00:00\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-pt_BR.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"pt\";i:1;s:3:\"por\";}}i:17;a:7:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-06T22:54:19+00:00\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-pt_PT.zip\";s:3:\"iso\";a:1:{i:0;s:2:\"pt\";}}i:18;a:7:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-05T06:16:44+00:00\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-ro_RO.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"ro\";i:1;s:3:\"ron\";}}i:19;a:7:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-19T12:39:56+00:00\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-ru_RU.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"ru\";i:1;s:3:\"rus\";}}i:20;a:7:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-10T15:43:59+00:00\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-sr_RS.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"sr\";i:1;s:3:\"srp\";}}i:21;a:7:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-04T18:22:06+00:00\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-es_MX.zip\";s:3:\"iso\";a:3:{i:0;s:2:\"es\";i:1;s:3:\"spa\";i:2;s:3:\"spa\";}}i:22;a:7:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-06T19:24:02+00:00\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-es_ES.zip\";s:3:\"iso\";a:3:{i:0;s:2:\"es\";i:1;s:3:\"spa\";i:2;s:3:\"spa\";}}i:23;a:7:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-04T18:18:05+00:00\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-sv_SE.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"sv\";i:1;s:3:\"swe\";}}i:24;a:7:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-07T08:22:18+00:00\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-tr_TR.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"tr\";i:1;s:3:\"tur\";}}i:25;a:7:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-19T12:48:39+00:00\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:81:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-uk.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"uk\";i:1;s:3:\"ukr\";}}}}s:13:\"_last_checked\";i:1768815412;}', 'off'),
(406, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.9.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.9.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.9\";s:7:\"version\";s:3:\"6.9\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.9.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.9.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.9-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.9-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.9\";s:7:\"version\";s:3:\"6.9\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.9.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.9.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.9\";s:7:\"version\";s:3:\"6.9\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.8.3.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.8.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.8.3\";s:7:\"version\";s:5:\"6.8.3\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1768815413;s:15:\"version_checked\";s:5:\"6.8.2\";s:12:\"translations\";a:6:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-09-24 17:30:30\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-08-19 23:02:24\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/en_AU.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-08-25 13:50:40\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/en_GB.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:3:\"kir\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-07-17 05:00:42\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.8.2/kir.zip\";s:10:\"autoupdate\";b:1;}i:4;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-09-20 12:00:49\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/pl_PL.zip\";s:10:\"autoupdate\";b:1;}i:5;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:3:\"6.8\";s:7:\"updated\";s:19:\"2025-04-18 21:10:00\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.8/uk.zip\";s:10:\"autoupdate\";b:1;}}}', 'off'),
(407, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1768815413;s:7:\"checked\";a:6:{s:6:\"custom\";s:3:\"1.0\";s:7:\"custom3\";s:3:\"1.0\";s:16:\"twentytwentyfive\";s:3:\"1.0\";s:16:\"twentytwentyfour\";s:3:\"1.0\";s:17:\"twentytwentythree\";s:3:\"1.3\";s:15:\"twentytwentytwo\";s:3:\"1.6\";}s:8:\"response\";a:4:{s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.4.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.4.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.6.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.2.1.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:1:{s:6:\"custom\";a:6:{s:5:\"theme\";s:6:\"custom\";s:11:\"new_version\";s:5:\"0.5.3\";s:3:\"url\";s:36:\"https://wordpress.org/themes/custom/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/theme/custom.0.5.3.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}}', 'off');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(408, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1768815414;s:8:\"response\";a:7:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:3:\"6.9\";s:12:\"requires_php\";s:3:\"7.2\";s:16:\"requires_plugins\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";s:6:\"tested\";s:3:\"6.9\";s:12:\"requires_php\";s:5:\"5.2.4\";s:16:\"requires_plugins\";a:0:{}}s:22:\"cyr2lat/cyr-to-lat.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:21:\"w.org/plugins/cyr2lat\";s:4:\"slug\";s:7:\"cyr2lat\";s:6:\"plugin\";s:22:\"cyr2lat/cyr-to-lat.php\";s:11:\"new_version\";s:5:\"6.6.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/cyr2lat/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/cyr2lat.6.6.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2834364\";s:3:\"svg\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2834364\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/cyr2lat/assets/banner-1544x500.png?rev=2434252\";s:2:\"1x\";s:62:\"https://ps.w.org/cyr2lat/assets/banner-772x250.png?rev=2434252\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.3\";s:6:\"tested\";s:3:\"6.9\";s:12:\"requires_php\";s:3:\"7.2\";s:16:\"requires_plugins\";a:0:{}}s:32:\"duplicate-page/duplicatepage.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-page\";s:4:\"slug\";s:14:\"duplicate-page\";s:6:\"plugin\";s:32:\"duplicate-page/duplicatepage.php\";s:11:\"new_version\";s:5:\"4.5.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-page/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/duplicate-page.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-page/assets/icon-128x128.jpg?rev=1412874\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-page/assets/banner-772x250.jpg?rev=1410328\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.4\";s:6:\"tested\";s:5:\"6.8.3\";s:12:\"requires_php\";b:0;s:16:\"requires_plugins\";a:0:{}}s:21:\"polylang/polylang.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:22:\"w.org/plugins/polylang\";s:4:\"slug\";s:8:\"polylang\";s:6:\"plugin\";s:21:\"polylang/polylang.php\";s:11:\"new_version\";s:5:\"3.7.6\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/polylang/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/polylang.3.7.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/polylang/assets/icon-256x256.png?rev=3433336\";s:2:\"1x\";s:61:\"https://ps.w.org/polylang/assets/icon-128x128.png?rev=3433336\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/polylang/assets/banner-1544x500.png?rev=3433336\";s:2:\"1x\";s:63:\"https://ps.w.org/polylang/assets/banner-772x250.png?rev=3433336\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";s:6:\"tested\";s:3:\"6.9\";s:12:\"requires_php\";s:3:\"7.2\";s:16:\"requires_plugins\";a:0:{}}s:27:\"wp-super-cache/wp-cache.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:28:\"w.org/plugins/wp-super-cache\";s:4:\"slug\";s:14:\"wp-super-cache\";s:6:\"plugin\";s:27:\"wp-super-cache/wp-cache.php\";s:11:\"new_version\";s:5:\"3.0.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-super-cache/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wp-super-cache.3.0.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-super-cache/assets/icon-256x256.png?rev=1095422\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-super-cache/assets/icon-128x128.png?rev=1095422\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wp-super-cache/assets/banner-1544x500.png?rev=1082414\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-super-cache/assets/banner-772x250.png?rev=1082414\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.7\";s:6:\"tested\";s:3:\"6.9\";s:12:\"requires_php\";s:3:\"7.2\";s:16:\"requires_plugins\";a:0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:7:\"6.7.0.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.9\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:64:\"https://connect.advancedcustomfields.com/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:66:\"https://connect.advancedcustomfields.com/assets/banner-772x250.jpg\";s:4:\"high\";s:67:\"https://connect.advancedcustomfields.com/assets/banner-1544x500.jpg\";}s:8:\"requires\";s:3:\"6.2\";s:12:\"requires_php\";s:3:\"7.4\";s:12:\"release_date\";s:8:\"20251211\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:9:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.2.4\";s:19:\"akismet/akismet.php\";s:3:\"5.3\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.3\";s:22:\"cyr2lat/cyr-to-lat.php\";s:5:\"6.0.5\";s:32:\"duplicate-page/duplicatepage.php\";s:5:\"4.5.3\";s:9:\"hello.php\";s:5:\"1.7.2\";s:21:\"polylang/polylang.php\";s:5:\"3.5.3\";s:25:\"polylang-pro/polylang.php\";s:5:\"3.5.3\";s:27:\"wp-super-cache/wp-cache.php\";s:6:\"1.12.4\";}}', 'off'),
(411, '_site_transient_timeout_wp_theme_files_patterns-f82abeaaba57656b6649fcbbf5682641', '1768822216', 'off'),
(412, '_site_transient_wp_theme_files_patterns-f82abeaaba57656b6649fcbbf5682641', 'a:2:{s:7:\"version\";s:3:\"1.0\";s:8:\"patterns\";a:0:{}}', 'off'),
(414, '_site_transient_timeout_theme_roots', '1768822217', 'off'),
(415, '_site_transient_theme_roots', 'a:6:{s:6:\"custom\";s:7:\"/themes\";s:7:\"custom3\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'off');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(12, 7, '_menu_item_type', 'custom'),
(13, 7, '_menu_item_menu_item_parent', '0'),
(14, 7, '_menu_item_object_id', '7'),
(15, 7, '_menu_item_object', 'custom'),
(16, 7, '_menu_item_target', ''),
(17, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 7, '_menu_item_xfn', ''),
(19, 7, '_menu_item_url', '#intr'),
(21, 8, '_menu_item_type', 'custom'),
(22, 8, '_menu_item_menu_item_parent', '0'),
(23, 8, '_menu_item_object_id', '8'),
(24, 8, '_menu_item_object', 'custom'),
(25, 8, '_menu_item_target', ''),
(26, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 8, '_menu_item_xfn', ''),
(28, 8, '_menu_item_url', '#luksab'),
(30, 9, '_menu_item_type', 'custom'),
(31, 9, '_menu_item_menu_item_parent', '0'),
(32, 9, '_menu_item_object_id', '9'),
(33, 9, '_menu_item_object', 'custom'),
(34, 9, '_menu_item_target', ''),
(35, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(36, 9, '_menu_item_xfn', ''),
(37, 9, '_menu_item_url', '#transer'),
(39, 10, '_menu_item_type', 'custom'),
(40, 10, '_menu_item_menu_item_parent', '0'),
(41, 10, '_menu_item_object_id', '10'),
(42, 10, '_menu_item_object', 'custom'),
(43, 10, '_menu_item_target', ''),
(44, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(45, 10, '_menu_item_xfn', ''),
(46, 10, '_menu_item_url', '#aboutus'),
(60, 15, '_edit_last', '1'),
(61, 15, '_edit_lock', '1768393019:1'),
(62, 15, '_wp_page_template', 'index.php'),
(63, 17, '_menu_item_type', 'post_type'),
(64, 17, '_menu_item_menu_item_parent', '0'),
(65, 17, '_menu_item_object_id', '15'),
(66, 17, '_menu_item_object', 'page'),
(67, 17, '_menu_item_target', ''),
(68, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(69, 17, '_menu_item_xfn', ''),
(70, 17, '_menu_item_url', ''),
(72, 18, '_wp_page_template', 'index.php'),
(73, 18, '_edit_last', '1'),
(74, 18, '_edit_lock', '1768299979:1'),
(75, 21, '_wp_attached_file', '2026/01/top.png'),
(76, 21, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:737;s:6:\"height\";i:893;s:4:\"file\";s:15:\"2026/01/top.png\";s:8:\"filesize\";i:219270;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"top-248x300.png\";s:5:\"width\";i:248;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:18957;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"top-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8142;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(77, 22, '_wp_attached_file', '2026/01/top_mobile.png'),
(78, 22, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:219;s:6:\"height\";i:453;s:4:\"file\";s:22:\"2026/01/top_mobile.png\";s:8:\"filesize\";i:46110;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"top_mobile-145x300.png\";s:5:\"width\";i:145;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12774;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"top_mobile-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5790;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(79, 20, '_edit_last', '1'),
(80, 20, '_edit_lock', '1768389644:1'),
(81, 33, '_wp_attached_file', '2026/01/group-130.png'),
(82, 33, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:220;s:6:\"height\";i:70;s:4:\"file\";s:21:\"2026/01/group-130.png\";s:8:\"filesize\";i:4149;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"group-130-150x70.png\";s:5:\"width\";i:150;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1528;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 34, '_wp_attached_file', '2026/01/group-131.png'),
(84, 34, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:244;s:6:\"height\";i:70;s:4:\"file\";s:21:\"2026/01/group-131.png\";s:8:\"filesize\";i:4815;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"group-131-150x70.png\";s:5:\"width\";i:150;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1423;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(85, 15, 'title', 'Як працює'),
(86, 15, '_title', 'field_69677ca007127'),
(87, 18, '_title', 'field_69677ca007127'),
(88, 15, 'subtitle', 'Попутки, трансфери та люксбаси — швидко, зручно, в одному сервісі.'),
(89, 15, '_subtitle', 'field_696757f97d2fd'),
(90, 18, '_subtitle', 'field_696757f97d2fd'),
(91, 15, 'applink_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(92, 15, '_applink_link', 'field_696758847d2ff'),
(93, 18, '_applink_link', 'field_696758847d2ff'),
(94, 15, 'applink_', '33'),
(95, 15, '_applink_', 'field_696758a57d300'),
(96, 18, '_applink_', 'field_696758a57d300'),
(97, 15, 'applink', ''),
(98, 15, '_applink', 'field_696758387d2fe'),
(99, 18, '_applink', 'field_696758387d2fe'),
(100, 15, 'applinkScnd_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(101, 15, '_applinkScnd_link', 'field_696758bd7d302'),
(102, 18, '_applinkScnd_link', 'field_696758bd7d302'),
(103, 15, 'applinkScnd_', '34'),
(104, 15, '_applinkScnd_', 'field_696758bd7d303'),
(105, 18, '_applinkScnd_', 'field_696758bd7d303'),
(106, 15, 'applinkScnd', ''),
(107, 15, '_applinkScnd', 'field_696758bd7d301'),
(108, 18, '_applinkScnd', 'field_696758bd7d301'),
(109, 15, 'mobImage', '22'),
(110, 15, '_mobImage', 'field_696758da7d304'),
(111, 18, '_mobImage', 'field_696758da7d304'),
(112, 15, 'image', '21'),
(113, 15, '_image', 'field_696759657d305'),
(114, 18, '_image', 'field_696759657d305'),
(115, 16, 'title', 'Ми об’єднуємо людей у дорозі.'),
(116, 16, '_title', 'field_696757c77d2fc'),
(117, 16, 'subtitle', 'Попутки, трансфери та люксбаси — швидко, зручно, в одному сервісі.'),
(118, 16, '_subtitle', 'field_696757f97d2fd'),
(119, 16, 'applink_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(120, 16, '_applink_link', 'field_696758847d2ff'),
(121, 16, 'applink_', '33'),
(122, 16, '_applink_', 'field_696758a57d300'),
(123, 16, 'applink', ''),
(124, 16, '_applink', 'field_696758387d2fe'),
(125, 16, 'applinkScnd_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(126, 16, '_applinkScnd_link', 'field_696758bd7d302'),
(127, 16, 'applinkScnd_', '34'),
(128, 16, '_applinkScnd_', 'field_696758bd7d303'),
(129, 16, 'applinkScnd', ''),
(130, 16, '_applinkScnd', 'field_696758bd7d301'),
(131, 16, 'mobImage', ''),
(132, 16, '_mobImage', 'field_696758da7d304'),
(133, 16, 'image', ''),
(134, 16, '_image', 'field_696759657d305'),
(135, 35, 'title', 'Ми об’єднуємо людей у дорозі.'),
(136, 35, '_title', 'field_696757c77d2fc'),
(137, 35, 'subtitle', 'Попутки, трансфери та люксбаси — швидко, зручно, в одному сервісі.'),
(138, 35, '_subtitle', 'field_696757f97d2fd'),
(139, 35, 'applink_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(140, 35, '_applink_link', 'field_696758847d2ff'),
(141, 35, 'applink_', '33'),
(142, 35, '_applink_', 'field_696758a57d300'),
(143, 35, 'applink', ''),
(144, 35, '_applink', 'field_696758387d2fe'),
(145, 35, 'applinkScnd_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(146, 35, '_applinkScnd_link', 'field_696758bd7d302'),
(147, 35, 'applinkScnd_', '34'),
(148, 35, '_applinkScnd_', 'field_696758bd7d303'),
(149, 35, 'applinkScnd', ''),
(150, 35, '_applinkScnd', 'field_696758bd7d301'),
(151, 35, 'mobImage', '22'),
(152, 35, '_mobImage', 'field_696758da7d304'),
(153, 35, 'image', '21'),
(154, 35, '_image', 'field_696759657d305'),
(155, 21, '_wp_attachment_image_alt', 'topimage'),
(156, 22, '_wp_attachment_image_alt', 'topmobile'),
(157, 36, 'title', 'Ми об’єднуємо людей у дорозі.'),
(158, 36, '_title', 'field_696757c77d2fc'),
(159, 36, 'subtitle', 'Попутки, трансфери та люксбаси — швидко, зручно, в одному сервісі.'),
(160, 36, '_subtitle', 'field_696757f97d2fd'),
(161, 36, 'applink_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(162, 36, '_applink_link', 'field_696758847d2ff'),
(163, 36, 'applink_', '33'),
(164, 36, '_applink_', 'field_696758a57d300'),
(165, 36, 'applink', ''),
(166, 36, '_applink', 'field_696758387d2fe'),
(167, 36, 'applinkScnd_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(168, 36, '_applinkScnd_link', 'field_696758bd7d302'),
(169, 36, 'applinkScnd_', '34'),
(170, 36, '_applinkScnd_', 'field_696758bd7d303'),
(171, 36, 'applinkScnd', ''),
(172, 36, '_applinkScnd', 'field_696758bd7d301'),
(173, 36, 'mobImage', '22'),
(174, 36, '_mobImage', 'field_696758da7d304'),
(175, 36, 'image', '21'),
(176, 36, '_image', 'field_696759657d305'),
(177, 15, 'applink_img', '33'),
(178, 15, '_applink_img', 'field_696758a57d300'),
(179, 18, '_applink_img', 'field_696758a57d300'),
(180, 15, 'applinkScnd_img', '34'),
(181, 15, '_applinkScnd_img', 'field_696758bd7d303'),
(182, 18, '_applinkScnd_img', 'field_696758bd7d303'),
(183, 36, 'applink_img', '33'),
(184, 36, '_applink_img', 'field_696758a57d300'),
(185, 36, 'applinkScnd_img', '34'),
(186, 36, '_applinkScnd_img', 'field_696758bd7d303'),
(187, 37, 'title', 'Ми об’єднуємо людей у дорозі.'),
(188, 37, '_title', 'field_696757c77d2fc'),
(189, 37, 'subtitle', 'Попутки, трансфери та люксбаси — швидко, зручно, в одному сервісі.'),
(190, 37, '_subtitle', 'field_696757f97d2fd'),
(191, 37, 'applink_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(192, 37, '_applink_link', 'field_696758847d2ff'),
(193, 37, 'applink_', '33'),
(194, 37, '_applink_', 'field_696758a57d300'),
(195, 37, 'applink', ''),
(196, 37, '_applink', 'field_696758387d2fe'),
(197, 37, 'applinkScnd_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(198, 37, '_applinkScnd_link', 'field_696758bd7d302'),
(199, 37, 'applinkScnd_', '34'),
(200, 37, '_applinkScnd_', 'field_696758bd7d303'),
(201, 37, 'applinkScnd', ''),
(202, 37, '_applinkScnd', 'field_696758bd7d301'),
(203, 37, 'mobImage', '22'),
(204, 37, '_mobImage', 'field_696758da7d304'),
(205, 37, 'image', '21'),
(206, 37, '_image', 'field_696759657d305'),
(207, 37, 'applink_img', '33'),
(208, 37, '_applink_img', 'field_696758a57d300'),
(209, 37, 'applinkScnd_img', '34'),
(210, 37, '_applinkScnd_img', 'field_696758bd7d303'),
(211, 15, 'isActive', '1'),
(212, 15, '_isActive', 'field_696776f3dfac7'),
(213, 18, '_isActive', 'field_696776f3dfac7'),
(214, 37, 'isActive', '0'),
(215, 37, '_isActive', 'field_696776f3dfac7'),
(216, 40, 'title', 'Ми об’єднуємо людей у дорозі.'),
(217, 40, '_title', 'field_696757c77d2fc'),
(218, 40, 'subtitle', 'Попутки, трансфери та люксбаси — швидко, зручно, в одному сервісі.'),
(219, 40, '_subtitle', 'field_696757f97d2fd'),
(220, 40, 'applink_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(221, 40, '_applink_link', 'field_696758847d2ff'),
(222, 40, 'applink_', '33'),
(223, 40, '_applink_', 'field_696758a57d300'),
(224, 40, 'applink', ''),
(225, 40, '_applink', 'field_696758387d2fe'),
(226, 40, 'applinkScnd_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(227, 40, '_applinkScnd_link', 'field_696758bd7d302'),
(228, 40, 'applinkScnd_', '34'),
(229, 40, '_applinkScnd_', 'field_696758bd7d303'),
(230, 40, 'applinkScnd', ''),
(231, 40, '_applinkScnd', 'field_696758bd7d301'),
(232, 40, 'mobImage', '22'),
(233, 40, '_mobImage', 'field_696758da7d304'),
(234, 40, 'image', '21'),
(235, 40, '_image', 'field_696759657d305'),
(236, 40, 'applink_img', '33'),
(237, 40, '_applink_img', 'field_696758a57d300'),
(238, 40, 'applinkScnd_img', '34'),
(239, 40, '_applinkScnd_img', 'field_696758bd7d303'),
(240, 40, 'isActive', '1'),
(241, 40, '_isActive', 'field_696776f3dfac7'),
(242, 43, '_edit_last', '1'),
(243, 43, '_edit_lock', '1768393019:1'),
(244, 61, '_wp_attached_file', '2026/01/logo.png'),
(245, 61, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:155;s:6:\"height\";i:80;s:4:\"file\";s:16:\"2026/01/logo.png\";s:8:\"filesize\";i:3663;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"logo-150x80.png\";s:5:\"width\";i:150;s:6:\"height\";i:80;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2668;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(246, 62, '_wp_attached_file', '2026/01/group-185.png'),
(247, 62, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:795;s:6:\"height\";i:835;s:4:\"file\";s:21:\"2026/01/group-185.png\";s:8:\"filesize\";i:366759;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"group-185-286x300.png\";s:5:\"width\";i:286;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:21027;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"group-185-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8047;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"group-185-768x807.png\";s:5:\"width\";i:768;s:6:\"height\";i:807;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:97991;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(248, 15, 'hit_isActive', '1'),
(249, 15, '_hit_isActive', 'field_6967779a84884'),
(250, 18, '_hit_isActive', 'field_6967779a84884'),
(251, 15, 'hiw_title_title', 'Як працює'),
(252, 15, '_hiw_title_title', 'field_6967782084887'),
(253, 18, '_hiw_title_title', 'field_6967782084887'),
(254, 15, 'hiw_title_img', '61'),
(255, 15, '_hiw_title_img', 'field_6967783284888'),
(256, 18, '_hiw_title_img', 'field_6967783284888'),
(257, 15, 'hiw_title', ''),
(258, 15, '_hiw_title', 'field_69677e2c4aaa4'),
(259, 18, '_hiw_title', 'field_69677e2c4aaa4'),
(260, 15, 'hiw_steps_0_title', 'Оберіть формат поїздки'),
(261, 15, '_hiw_steps_0_title', 'field_696778988488b'),
(262, 18, '_hiw_steps_0_title', 'field_696778988488b'),
(263, 15, 'hiw_steps_0_descr', 'Попутка, люксбас або трансфер — просто виберіть, як вам зручніше їхати.'),
(264, 15, '_hiw_steps_0_descr', 'field_696778bc8488c'),
(265, 18, '_hiw_steps_0_descr', 'field_696778bc8488c'),
(266, 15, 'hiw_steps_1_title', 'Вкажіть маршрут'),
(267, 15, '_hiw_steps_1_title', 'field_696778988488b'),
(268, 18, '_hiw_steps_1_title', 'field_696778988488b'),
(269, 15, 'hiw_steps_1_descr', 'Обирайте місто виїзду, пункт призначення та дату — система знайде найкращі варіанти.'),
(270, 15, '_hiw_steps_1_descr', 'field_696778bc8488c'),
(271, 18, '_hiw_steps_1_descr', 'field_696778bc8488c'),
(272, 15, 'hiw_steps_2_title', 'Забронюйте поїздку'),
(273, 15, '_hiw_steps_2_title', 'field_696778988488b'),
(274, 18, '_hiw_steps_2_title', 'field_696778988488b'),
(275, 15, 'hiw_steps_2_descr', 'Перегляньте деталі, оберіть час та місце посадки й підтвердіть бронювання.'),
(276, 15, '_hiw_steps_2_descr', 'field_696778bc8488c'),
(277, 18, '_hiw_steps_2_descr', 'field_696778bc8488c'),
(278, 15, 'hiw_steps_3_title', 'Подорожуйте з комфортом'),
(279, 15, '_hiw_steps_3_title', 'field_696778988488b'),
(280, 18, '_hiw_steps_3_title', 'field_696778988488b'),
(281, 15, 'hiw_steps_3_descr', 'Сідайте в авто чи люксбас і насолоджуйтесь дорогою. Усе інше ми вже подбали.'),
(282, 15, '_hiw_steps_3_descr', 'field_696778bc8488c'),
(283, 18, '_hiw_steps_3_descr', 'field_696778bc8488c'),
(284, 15, 'hiw_steps', '4'),
(285, 15, '_hiw_steps', 'field_696778838488a'),
(286, 18, '_hiw_steps', 'field_696778838488a'),
(287, 15, 'hiw_decor', '62'),
(288, 15, '_hiw_decor', 'field_69677932ed7d7'),
(289, 18, '_hiw_decor', 'field_69677932ed7d7'),
(290, 15, 'hiw_bottom_title', 'Почати в застосунку'),
(291, 15, '_hiw_bottom_title', 'field_69677977ed7d9'),
(292, 18, '_hiw_bottom_title', 'field_69677977ed7d9'),
(293, 15, 'hiw_bottom_applink_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(294, 15, '_hiw_bottom_applink_link', 'field_696779d5ed7db'),
(295, 18, '_hiw_bottom_applink_link', 'field_696779d5ed7db'),
(296, 15, 'hiw_bottom_applink_img', '33'),
(297, 15, '_hiw_bottom_applink_img', 'field_696779f3ed7dc'),
(298, 18, '_hiw_bottom_applink_img', 'field_696779f3ed7dc'),
(299, 15, 'hiw_bottom_applink', ''),
(300, 15, '_hiw_bottom_applink', 'field_6967798bed7da'),
(301, 18, '_hiw_bottom_applink', 'field_6967798bed7da'),
(302, 15, 'hiw_bottom_applinkScnd_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(303, 15, '_hiw_bottom_applinkScnd_link', 'field_69677a1bed7de'),
(304, 18, '_hiw_bottom_applinkScnd_link', 'field_69677a1bed7de'),
(305, 15, 'hiw_bottom_applinkScnd_img', '34'),
(306, 15, '_hiw_bottom_applinkScnd_img', 'field_69677a1bed7df'),
(307, 18, '_hiw_bottom_applinkScnd_img', 'field_69677a1bed7df'),
(308, 15, 'hiw_bottom_applinkScnd', ''),
(309, 15, '_hiw_bottom_applinkScnd', 'field_69677a1bed7dd'),
(310, 18, '_hiw_bottom_applinkScnd', 'field_69677a1bed7dd'),
(311, 15, 'hiw_bottom', ''),
(312, 15, '_hiw_bottom', 'field_6967794eed7d8'),
(313, 18, '_hiw_bottom', 'field_6967794eed7d8'),
(314, 41, 'title', 'Ми об’єднуємо людей у дорозі.'),
(315, 41, '_title', 'field_696757c77d2fc'),
(316, 41, 'subtitle', 'Попутки, трансфери та люксбаси — швидко, зручно, в одному сервісі.'),
(317, 41, '_subtitle', 'field_6967786784889'),
(318, 41, 'applink_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(319, 41, '_applink_link', 'field_696758847d2ff'),
(320, 41, 'applink_', '33'),
(321, 41, '_applink_', 'field_696758a57d300'),
(322, 41, 'applink', ''),
(323, 41, '_applink', 'field_696758387d2fe'),
(324, 41, 'applinkScnd_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(325, 41, '_applinkScnd_link', 'field_696758bd7d302'),
(326, 41, 'applinkScnd_', '34'),
(327, 41, '_applinkScnd_', 'field_696758bd7d303'),
(328, 41, 'applinkScnd', ''),
(329, 41, '_applinkScnd', 'field_696758bd7d301'),
(330, 41, 'mobImage', '22'),
(331, 41, '_mobImage', 'field_696758da7d304'),
(332, 41, 'image', '21'),
(333, 41, '_image', 'field_696759657d305'),
(334, 41, 'applink_img', '33'),
(335, 41, '_applink_img', 'field_696758a57d300'),
(336, 41, 'applinkScnd_img', '34'),
(337, 41, '_applinkScnd_img', 'field_696758bd7d303'),
(338, 41, 'isActive', '1'),
(339, 41, '_isActive', 'field_696776f3dfac7'),
(340, 41, 'hit_isActive', '1'),
(341, 41, '_hit_isActive', 'field_6967779a84884'),
(342, 41, 'hiw_title_title', 'Як працює'),
(343, 41, '_hiw_title_title', 'field_6967782084887'),
(344, 41, 'hiw_title_img', '61'),
(345, 41, '_hiw_title_img', 'field_6967783284888'),
(346, 41, 'hiw_title', ''),
(347, 41, '_hiw_title', 'field_696777f884886'),
(348, 41, 'hiw_steps_0_title', 'Оберіть формат поїздки'),
(349, 41, '_hiw_steps_0_title', 'field_696778988488b'),
(350, 41, 'hiw_steps_0_descr', 'Попутка, люксбас або трансфер — просто виберіть, як вам зручніше їхати.'),
(351, 41, '_hiw_steps_0_descr', 'field_696778bc8488c'),
(352, 41, 'hiw_steps_1_title', 'Вкажіть маршрут'),
(353, 41, '_hiw_steps_1_title', 'field_696778988488b'),
(354, 41, 'hiw_steps_1_descr', 'Обирайте місто виїзду, пункт призначення та дату — система знайде найкращі варіанти.'),
(355, 41, '_hiw_steps_1_descr', 'field_696778bc8488c'),
(356, 41, 'hiw_steps_2_title', 'Забронюйте поїздку'),
(357, 41, '_hiw_steps_2_title', 'field_696778988488b'),
(358, 41, 'hiw_steps_2_descr', 'Перегляньте деталі, оберіть час та місце посадки й підтвердіть бронювання.'),
(359, 41, '_hiw_steps_2_descr', 'field_696778bc8488c'),
(360, 41, 'hiw_steps_3_title', 'Подорожуйте з комфортом'),
(361, 41, '_hiw_steps_3_title', 'field_696778988488b'),
(362, 41, 'hiw_steps_3_descr', 'Сідайте в авто чи люксбас і насолоджуйтесь дорогою. Усе інше ми вже подбали.'),
(363, 41, '_hiw_steps_3_descr', 'field_696778bc8488c'),
(364, 41, 'hiw_steps', '4'),
(365, 41, '_hiw_steps', 'field_696778838488a'),
(366, 41, 'hiw_decor', '62'),
(367, 41, '_hiw_decor', 'field_69677932ed7d7'),
(368, 41, 'hiw_bottom_title', 'Почати в застосунку'),
(369, 41, '_hiw_bottom_title', 'field_69677977ed7d9'),
(370, 41, 'hiw_bottom_applink_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(371, 41, '_hiw_bottom_applink_link', 'field_696779d5ed7db'),
(372, 41, 'hiw_bottom_applink_img', '33'),
(373, 41, '_hiw_bottom_applink_img', 'field_696779f3ed7dc'),
(374, 41, 'hiw_bottom_applink', ''),
(375, 41, '_hiw_bottom_applink', 'field_6967798bed7da'),
(376, 41, 'hiw_bottom_applinkScnd_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(377, 41, '_hiw_bottom_applinkScnd_link', 'field_69677a1bed7de'),
(378, 41, 'hiw_bottom_applinkScnd_img', '34'),
(379, 41, '_hiw_bottom_applinkScnd_img', 'field_69677a1bed7df'),
(380, 41, 'hiw_bottom_applinkScnd', ''),
(381, 41, '_hiw_bottom_applinkScnd', 'field_69677a1bed7dd'),
(382, 41, 'hiw_bottom', ''),
(383, 41, '_hiw_bottom', 'field_6967794eed7d8'),
(384, 18, 'hiw_steps', '4'),
(385, 15, 'hiw_isActive', '1'),
(386, 15, '_hiw_isActive', 'field_6967779a84884'),
(387, 18, '_hiw_isActive', 'field_6967779a84884'),
(388, 63, 'title', 'Як працює'),
(389, 63, '_title', 'field_69677ca007127'),
(390, 63, 'subtitle', 'Попутки, трансфери та люксбаси — швидко, зручно, в одному сервісі.'),
(391, 63, '_subtitle', 'field_6967786784889'),
(392, 63, 'applink_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(393, 63, '_applink_link', 'field_696758847d2ff'),
(394, 63, 'applink_', '33'),
(395, 63, '_applink_', 'field_696758a57d300'),
(396, 63, 'applink', ''),
(397, 63, '_applink', 'field_696758387d2fe'),
(398, 63, 'applinkScnd_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(399, 63, '_applinkScnd_link', 'field_696758bd7d302'),
(400, 63, 'applinkScnd_', '34'),
(401, 63, '_applinkScnd_', 'field_696758bd7d303'),
(402, 63, 'applinkScnd', ''),
(403, 63, '_applinkScnd', 'field_696758bd7d301'),
(404, 63, 'mobImage', '22'),
(405, 63, '_mobImage', 'field_696758da7d304'),
(406, 63, 'image', '21'),
(407, 63, '_image', 'field_696759657d305'),
(408, 63, 'applink_img', '33'),
(409, 63, '_applink_img', 'field_696758a57d300'),
(410, 63, 'applinkScnd_img', '34'),
(411, 63, '_applinkScnd_img', 'field_696758bd7d303'),
(412, 63, 'isActive', '1'),
(413, 63, '_isActive', 'field_696776f3dfac7'),
(414, 63, 'hit_isActive', '1'),
(415, 63, '_hit_isActive', 'field_6967779a84884'),
(416, 63, 'hiw_title_title', 'Як працює'),
(417, 63, '_hiw_title_title', 'field_6967782084887'),
(418, 63, 'hiw_title_img', '61'),
(419, 63, '_hiw_title_img', 'field_6967783284888'),
(420, 63, 'hiw_title', ''),
(421, 63, '_hiw_title', 'field_696777f884886'),
(422, 63, 'hiw_steps_0_title', 'Оберіть формат поїздки'),
(423, 63, '_hiw_steps_0_title', 'field_696778988488b'),
(424, 63, 'hiw_steps_0_descr', 'Попутка, люксбас або трансфер — просто виберіть, як вам зручніше їхати.'),
(425, 63, '_hiw_steps_0_descr', 'field_696778bc8488c'),
(426, 63, 'hiw_steps_1_title', 'Вкажіть маршрут'),
(427, 63, '_hiw_steps_1_title', 'field_696778988488b'),
(428, 63, 'hiw_steps_1_descr', 'Обирайте місто виїзду, пункт призначення та дату — система знайде найкращі варіанти.'),
(429, 63, '_hiw_steps_1_descr', 'field_696778bc8488c'),
(430, 63, 'hiw_steps_2_title', 'Забронюйте поїздку'),
(431, 63, '_hiw_steps_2_title', 'field_696778988488b'),
(432, 63, 'hiw_steps_2_descr', 'Перегляньте деталі, оберіть час та місце посадки й підтвердіть бронювання.'),
(433, 63, '_hiw_steps_2_descr', 'field_696778bc8488c'),
(434, 63, 'hiw_steps_3_title', 'Подорожуйте з комфортом'),
(435, 63, '_hiw_steps_3_title', 'field_696778988488b'),
(436, 63, 'hiw_steps_3_descr', 'Сідайте в авто чи люксбас і насолоджуйтесь дорогою. Усе інше ми вже подбали.'),
(437, 63, '_hiw_steps_3_descr', 'field_696778bc8488c'),
(438, 63, 'hiw_steps', '4'),
(439, 63, '_hiw_steps', 'field_696778838488a'),
(440, 63, 'hiw_decor', '62'),
(441, 63, '_hiw_decor', 'field_69677932ed7d7'),
(442, 63, 'hiw_bottom_title', 'Почати в застосунку'),
(443, 63, '_hiw_bottom_title', 'field_69677977ed7d9'),
(444, 63, 'hiw_bottom_applink_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(445, 63, '_hiw_bottom_applink_link', 'field_696779d5ed7db'),
(446, 63, 'hiw_bottom_applink_img', '33'),
(447, 63, '_hiw_bottom_applink_img', 'field_696779f3ed7dc'),
(448, 63, 'hiw_bottom_applink', ''),
(449, 63, '_hiw_bottom_applink', 'field_6967798bed7da'),
(450, 63, 'hiw_bottom_applinkScnd_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(451, 63, '_hiw_bottom_applinkScnd_link', 'field_69677a1bed7de'),
(452, 63, 'hiw_bottom_applinkScnd_img', '34'),
(453, 63, '_hiw_bottom_applinkScnd_img', 'field_69677a1bed7df'),
(454, 63, 'hiw_bottom_applinkScnd', ''),
(455, 63, '_hiw_bottom_applinkScnd', 'field_69677a1bed7dd'),
(456, 63, 'hiw_bottom', ''),
(457, 63, '_hiw_bottom', 'field_6967794eed7d8'),
(458, 63, 'hiw_isActive', '1'),
(459, 63, '_hiw_isActive', 'field_6967779a84884'),
(460, 64, '_edit_last', '1'),
(461, 64, '_edit_lock', '1768393020:1'),
(462, 15, 'img', '61'),
(463, 15, '_img', 'field_69677cc207128'),
(464, 18, '_img', 'field_69677cc207128'),
(465, 15, 'hit_title-2', ''),
(466, 15, '_hit_title-2', 'field_69677ce001c01'),
(467, 18, '_hit_title-2', 'field_69677ce001c01'),
(468, 63, 'img', '61'),
(469, 63, '_img', 'field_69677cc207128'),
(470, 63, 'hit_title-2', ''),
(471, 63, '_hit_title-2', 'field_69677ce001c01'),
(472, 15, 'hit_title_2', ''),
(473, 15, '_hit_title_2', 'field_69677ce001c01'),
(474, 18, '_hit_title_2', 'field_69677ce001c01'),
(475, 68, 'title', 'Як працює'),
(476, 68, '_title', 'field_69677ca007127'),
(477, 68, 'subtitle', 'Попутки, трансфери та люксбаси — швидко, зручно, в одному сервісі.'),
(478, 68, '_subtitle', 'field_6967786784889'),
(479, 68, 'applink_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(480, 68, '_applink_link', 'field_696758847d2ff'),
(481, 68, 'applink_', '33'),
(482, 68, '_applink_', 'field_696758a57d300'),
(483, 68, 'applink', ''),
(484, 68, '_applink', 'field_696758387d2fe'),
(485, 68, 'applinkScnd_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(486, 68, '_applinkScnd_link', 'field_696758bd7d302'),
(487, 68, 'applinkScnd_', '34'),
(488, 68, '_applinkScnd_', 'field_696758bd7d303'),
(489, 68, 'applinkScnd', ''),
(490, 68, '_applinkScnd', 'field_696758bd7d301'),
(491, 68, 'mobImage', '22'),
(492, 68, '_mobImage', 'field_696758da7d304'),
(493, 68, 'image', '21'),
(494, 68, '_image', 'field_696759657d305'),
(495, 68, 'applink_img', '33'),
(496, 68, '_applink_img', 'field_696758a57d300'),
(497, 68, 'applinkScnd_img', '34'),
(498, 68, '_applinkScnd_img', 'field_696758bd7d303'),
(499, 68, 'isActive', '1'),
(500, 68, '_isActive', 'field_696776f3dfac7'),
(501, 68, 'hit_isActive', '1'),
(502, 68, '_hit_isActive', 'field_6967779a84884'),
(503, 68, 'hiw_title_title', 'Як працює'),
(504, 68, '_hiw_title_title', 'field_6967782084887'),
(505, 68, 'hiw_title_img', '61'),
(506, 68, '_hiw_title_img', 'field_6967783284888'),
(507, 68, 'hiw_title', ''),
(508, 68, '_hiw_title', 'field_696777f884886'),
(509, 68, 'hiw_steps_0_title', 'Оберіть формат поїздки'),
(510, 68, '_hiw_steps_0_title', 'field_696778988488b'),
(511, 68, 'hiw_steps_0_descr', 'Попутка, люксбас або трансфер — просто виберіть, як вам зручніше їхати.'),
(512, 68, '_hiw_steps_0_descr', 'field_696778bc8488c'),
(513, 68, 'hiw_steps_1_title', 'Вкажіть маршрут'),
(514, 68, '_hiw_steps_1_title', 'field_696778988488b'),
(515, 68, 'hiw_steps_1_descr', 'Обирайте місто виїзду, пункт призначення та дату — система знайде найкращі варіанти.'),
(516, 68, '_hiw_steps_1_descr', 'field_696778bc8488c'),
(517, 68, 'hiw_steps_2_title', 'Забронюйте поїздку'),
(518, 68, '_hiw_steps_2_title', 'field_696778988488b'),
(519, 68, 'hiw_steps_2_descr', 'Перегляньте деталі, оберіть час та місце посадки й підтвердіть бронювання.'),
(520, 68, '_hiw_steps_2_descr', 'field_696778bc8488c'),
(521, 68, 'hiw_steps_3_title', 'Подорожуйте з комфортом'),
(522, 68, '_hiw_steps_3_title', 'field_696778988488b'),
(523, 68, 'hiw_steps_3_descr', 'Сідайте в авто чи люксбас і насолоджуйтесь дорогою. Усе інше ми вже подбали.'),
(524, 68, '_hiw_steps_3_descr', 'field_696778bc8488c'),
(525, 68, 'hiw_steps', '4'),
(526, 68, '_hiw_steps', 'field_696778838488a'),
(527, 68, 'hiw_decor', '62'),
(528, 68, '_hiw_decor', 'field_69677932ed7d7'),
(529, 68, 'hiw_bottom_title', 'Почати в застосунку'),
(530, 68, '_hiw_bottom_title', 'field_69677977ed7d9'),
(531, 68, 'hiw_bottom_applink_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(532, 68, '_hiw_bottom_applink_link', 'field_696779d5ed7db'),
(533, 68, 'hiw_bottom_applink_img', '33'),
(534, 68, '_hiw_bottom_applink_img', 'field_696779f3ed7dc'),
(535, 68, 'hiw_bottom_applink', ''),
(536, 68, '_hiw_bottom_applink', 'field_6967798bed7da'),
(537, 68, 'hiw_bottom_applinkScnd_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(538, 68, '_hiw_bottom_applinkScnd_link', 'field_69677a1bed7de'),
(539, 68, 'hiw_bottom_applinkScnd_img', '34'),
(540, 68, '_hiw_bottom_applinkScnd_img', 'field_69677a1bed7df'),
(541, 68, 'hiw_bottom_applinkScnd', ''),
(542, 68, '_hiw_bottom_applinkScnd', 'field_69677a1bed7dd'),
(543, 68, 'hiw_bottom', ''),
(544, 68, '_hiw_bottom', 'field_6967794eed7d8'),
(545, 68, 'hiw_isActive', '1'),
(546, 68, '_hiw_isActive', 'field_6967779a84884'),
(547, 68, 'img', '61'),
(548, 68, '_img', 'field_69677cc207128'),
(549, 68, 'hit_title-2', ''),
(550, 68, '_hit_title-2', 'field_69677ce001c01'),
(551, 68, 'hit_title_2', ''),
(552, 68, '_hit_title_2', 'field_69677ce001c01'),
(553, 15, 'customTitle_title', 'Як працює'),
(554, 15, '_customTitle_title', 'field_69677dbfcdbfd'),
(555, 18, '_customTitle_title', 'field_69677dbfcdbfd'),
(556, 15, 'customTitle_img', '61'),
(557, 15, '_customTitle_img', 'field_69677dcccdbfe'),
(558, 18, '_customTitle_img', 'field_69677dcccdbfe'),
(559, 15, 'customTitle', ''),
(560, 15, '_customTitle', 'field_69677da5cdbfc'),
(561, 18, '_customTitle', 'field_69677da5cdbfc'),
(562, 15, 'hit_title', ''),
(563, 15, '_hit_title', 'field_69677ce001c01'),
(564, 18, '_hit_title', 'field_69677ce001c01'),
(565, 68, 'customTitle_title', 'Як працює'),
(566, 68, '_customTitle_title', 'field_69677dbfcdbfd'),
(567, 68, 'customTitle_img', '61'),
(568, 68, '_customTitle_img', 'field_69677dcccdbfe'),
(569, 68, 'customTitle', ''),
(570, 68, '_customTitle', 'field_69677da5cdbfc'),
(571, 68, 'hit_title', ''),
(572, 68, '_hit_title', 'field_69677ce001c01'),
(573, 15, 'hiw_subtitle', 'Ваш шлях до зручної поїздки — у кілька простих кроків.'),
(574, 15, '_hiw_subtitle', 'field_6967786784889'),
(575, 18, '_hiw_subtitle', 'field_6967786784889'),
(576, 72, 'title', 'Як працює'),
(577, 72, '_title', 'field_69677ca007127'),
(578, 72, 'subtitle', 'Попутки, трансфери та люксбаси — швидко, зручно, в одному сервісі.'),
(579, 72, '_subtitle', 'field_696757f97d2fd'),
(580, 72, 'applink_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(581, 72, '_applink_link', 'field_696758847d2ff'),
(582, 72, 'applink_', '33'),
(583, 72, '_applink_', 'field_696758a57d300'),
(584, 72, 'applink', ''),
(585, 72, '_applink', 'field_696758387d2fe'),
(586, 72, 'applinkScnd_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(587, 72, '_applinkScnd_link', 'field_696758bd7d302'),
(588, 72, 'applinkScnd_', '34'),
(589, 72, '_applinkScnd_', 'field_696758bd7d303'),
(590, 72, 'applinkScnd', ''),
(591, 72, '_applinkScnd', 'field_696758bd7d301'),
(592, 72, 'mobImage', '22'),
(593, 72, '_mobImage', 'field_696758da7d304'),
(594, 72, 'image', '21'),
(595, 72, '_image', 'field_696759657d305'),
(596, 72, 'applink_img', '33'),
(597, 72, '_applink_img', 'field_696758a57d300'),
(598, 72, 'applinkScnd_img', '34'),
(599, 72, '_applinkScnd_img', 'field_696758bd7d303'),
(600, 72, 'isActive', '1'),
(601, 72, '_isActive', 'field_696776f3dfac7'),
(602, 72, 'hit_isActive', '1'),
(603, 72, '_hit_isActive', 'field_6967779a84884'),
(604, 72, 'hiw_title_title', 'Як працює'),
(605, 72, '_hiw_title_title', 'field_6967782084887'),
(606, 72, 'hiw_title_img', '61'),
(607, 72, '_hiw_title_img', 'field_6967783284888'),
(608, 72, 'hiw_title', ''),
(609, 72, '_hiw_title', 'field_69677e2c4aaa4'),
(610, 72, 'hiw_steps_0_title', 'Оберіть формат поїздки'),
(611, 72, '_hiw_steps_0_title', 'field_696778988488b'),
(612, 72, 'hiw_steps_0_descr', 'Попутка, люксбас або трансфер — просто виберіть, як вам зручніше їхати.'),
(613, 72, '_hiw_steps_0_descr', 'field_696778bc8488c'),
(614, 72, 'hiw_steps_1_title', 'Вкажіть маршрут'),
(615, 72, '_hiw_steps_1_title', 'field_696778988488b'),
(616, 72, 'hiw_steps_1_descr', 'Обирайте місто виїзду, пункт призначення та дату — система знайде найкращі варіанти.'),
(617, 72, '_hiw_steps_1_descr', 'field_696778bc8488c'),
(618, 72, 'hiw_steps_2_title', 'Забронюйте поїздку'),
(619, 72, '_hiw_steps_2_title', 'field_696778988488b'),
(620, 72, 'hiw_steps_2_descr', 'Перегляньте деталі, оберіть час та місце посадки й підтвердіть бронювання.'),
(621, 72, '_hiw_steps_2_descr', 'field_696778bc8488c'),
(622, 72, 'hiw_steps_3_title', 'Подорожуйте з комфортом'),
(623, 72, '_hiw_steps_3_title', 'field_696778988488b'),
(624, 72, 'hiw_steps_3_descr', 'Сідайте в авто чи люксбас і насолоджуйтесь дорогою. Усе інше ми вже подбали.'),
(625, 72, '_hiw_steps_3_descr', 'field_696778bc8488c'),
(626, 72, 'hiw_steps', '4'),
(627, 72, '_hiw_steps', 'field_696778838488a'),
(628, 72, 'hiw_decor', '62'),
(629, 72, '_hiw_decor', 'field_69677932ed7d7'),
(630, 72, 'hiw_bottom_title', 'Почати в застосунку'),
(631, 72, '_hiw_bottom_title', 'field_69677977ed7d9'),
(632, 72, 'hiw_bottom_applink_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(633, 72, '_hiw_bottom_applink_link', 'field_696779d5ed7db'),
(634, 72, 'hiw_bottom_applink_img', '33'),
(635, 72, '_hiw_bottom_applink_img', 'field_696779f3ed7dc'),
(636, 72, 'hiw_bottom_applink', ''),
(637, 72, '_hiw_bottom_applink', 'field_6967798bed7da'),
(638, 72, 'hiw_bottom_applinkScnd_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(639, 72, '_hiw_bottom_applinkScnd_link', 'field_69677a1bed7de'),
(640, 72, 'hiw_bottom_applinkScnd_img', '34'),
(641, 72, '_hiw_bottom_applinkScnd_img', 'field_69677a1bed7df'),
(642, 72, 'hiw_bottom_applinkScnd', ''),
(643, 72, '_hiw_bottom_applinkScnd', 'field_69677a1bed7dd'),
(644, 72, 'hiw_bottom', ''),
(645, 72, '_hiw_bottom', 'field_6967794eed7d8'),
(646, 72, 'hiw_isActive', '1'),
(647, 72, '_hiw_isActive', 'field_6967779a84884'),
(648, 72, 'img', '61'),
(649, 72, '_img', 'field_69677cc207128'),
(650, 72, 'hit_title-2', ''),
(651, 72, '_hit_title-2', 'field_69677ce001c01'),
(652, 72, 'hit_title_2', ''),
(653, 72, '_hit_title_2', 'field_69677ce001c01'),
(654, 72, 'customTitle_title', 'Як працює'),
(655, 72, '_customTitle_title', 'field_69677dbfcdbfd'),
(656, 72, 'customTitle_img', '61'),
(657, 72, '_customTitle_img', 'field_69677dcccdbfe'),
(658, 72, 'customTitle', ''),
(659, 72, '_customTitle', 'field_69677da5cdbfc'),
(660, 72, 'hit_title', ''),
(661, 72, '_hit_title', 'field_69677ce001c01'),
(662, 72, 'hiw_subtitle', 'Ваш шлях до зручної поїздки — у кілька простих кроків.'),
(663, 72, '_hiw_subtitle', 'field_6967786784889');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2026-01-12 11:36:46', '2026-01-12 08:36:46', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2026-01-12 11:36:46', '2026-01-12 08:36:46', '', 0, 'http://loc.wizy/?p=1', 0, 'post', '', 1),
(4, 0, '2026-01-12 11:36:47', '2026-01-12 08:36:47', '<!-- wp:page-list /-->', 'Навигация', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2026-01-12 11:36:47', '2026-01-12 08:36:47', '', 0, 'http://loc.wizy/2026/01/12/navigation/', 0, 'wp_navigation', '', 0),
(7, 1, '2026-01-13 12:41:28', '2026-01-13 09:15:39', '', 'Попутки', '', 'publish', 'closed', 'closed', '', 'poputki', '', '', '2026-01-13 12:41:28', '2026-01-13 09:41:28', '', 0, 'http://loc.wizy/?p=7', 2, 'nav_menu_item', '', 0),
(8, 1, '2026-01-13 12:41:28', '2026-01-13 09:15:39', '', 'Люксбас', '', 'publish', 'closed', 'closed', '', 'lyuksbas', '', '', '2026-01-13 12:41:28', '2026-01-13 09:41:28', '', 0, 'http://loc.wizy/?p=8', 3, 'nav_menu_item', '', 0),
(9, 1, '2026-01-13 12:41:28', '2026-01-13 09:15:39', '', 'Трансфер', '', 'publish', 'closed', 'closed', '', 'transfer', '', '', '2026-01-13 12:41:28', '2026-01-13 09:41:28', '', 0, 'http://loc.wizy/?p=9', 4, 'nav_menu_item', '', 0),
(10, 1, '2026-01-13 12:41:28', '2026-01-13 09:15:39', '', 'Про нас', '', 'publish', 'closed', 'closed', '', 'pro-nas', '', '', '2026-01-13 12:41:28', '2026-01-13 09:41:28', '', 0, 'http://loc.wizy/?p=10', 5, 'nav_menu_item', '', 0),
(15, 1, '2026-01-13 12:40:41', '2026-01-13 09:40:41', '', 'Головна', '', 'publish', 'closed', 'closed', '', 'golovna', '', '', '2026-01-14 14:31:10', '2026-01-14 11:31:10', '', 0, 'http://loc.wizy/?page_id=15', 0, 'page', '', 0),
(16, 1, '2026-01-13 12:40:41', '2026-01-13 09:40:41', '', 'Головна', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2026-01-13 12:40:41', '2026-01-13 09:40:41', '', 15, 'http://loc.wizy/?p=16', 0, 'revision', '', 0),
(17, 1, '2026-01-13 12:41:27', '2026-01-13 09:41:27', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2026-01-13 12:41:27', '2026-01-13 09:41:27', '', 0, 'http://loc.wizy/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2026-01-13 13:26:18', '2026-01-13 10:26:18', '', 'main', '', 'publish', 'closed', 'closed', '', 'main', '', '', '2026-01-13 13:26:18', '2026-01-13 10:26:18', '', 0, 'http://loc.wizy/?page_id=18', 0, 'page', '', 0),
(19, 1, '2026-01-13 13:26:18', '2026-01-13 10:26:18', '', 'main', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2026-01-13 13:26:18', '2026-01-13 10:26:18', '', 18, 'http://loc.wizy/?p=19', 0, 'revision', '', 0),
(20, 1, '2026-01-14 11:53:40', '2026-01-14 08:53:40', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"index.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Верхний блок', 'verhnij-blok', 'publish', 'closed', 'closed', '', 'group_696757c7b05dd', '', '', '2026-01-14 14:01:04', '2026-01-14 11:01:04', '', 0, 'http://loc.wizy/?post_type=acf-field-group&#038;p=20', 0, 'acf-field-group', '', 0),
(21, 1, '2026-01-14 11:52:35', '2026-01-14 08:52:35', '', 'top', '', 'inherit', 'open', 'closed', '', 'top', '', '', '2026-01-14 12:10:10', '2026-01-14 09:10:10', '', 15, 'http://loc.wizy/wp-content/uploads/2026/01/top.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2026-01-14 11:52:36', '2026-01-14 08:52:36', '', 'top_mobile', '', 'inherit', 'open', 'closed', '', 'top_mobile', '', '', '2026-01-14 12:10:04', '2026-01-14 09:10:04', '', 15, 'http://loc.wizy/wp-content/uploads/2026/01/top_mobile.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2026-01-14 11:53:40', '2026-01-14 08:53:40', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:54:\"Ми об’єднуємо людей у дорозі.\";s:12:\"translations\";s:9:\"translate\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Заголовок', 'title', 'publish', 'closed', 'closed', '', 'field_696757c77d2fc', '', '', '2026-01-14 14:00:10', '2026-01-14 11:00:10', '', 20, 'http://loc.wizy/?post_type=acf-field&#038;p=23', 1, 'acf-field', '', 0),
(24, 1, '2026-01-14 11:53:40', '2026-01-14 08:53:40', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:120:\"Попутки, трансфери та люксбаси — швидко, зручно, в одному сервісі.\";s:12:\"translations\";s:9:\"translate\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'подзаголовок', 'subtitle', 'publish', 'closed', 'closed', '', 'field_696757f97d2fd', '', '', '2026-01-14 14:00:10', '2026-01-14 11:00:10', '', 20, 'http://loc.wizy/?post_type=acf-field&#038;p=24', 2, 'acf-field', '', 0),
(25, 1, '2026-01-14 11:53:40', '2026-01-14 08:53:40', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"sub_fields\";a:0:{}}', 'Ссылка на приложение1', 'applink', 'publish', 'closed', 'closed', '', 'field_696758387d2fe', '', '', '2026-01-14 14:00:10', '2026-01-14 11:00:10', '', 20, 'http://loc.wizy/?post_type=acf-field&#038;p=25', 3, 'acf-field', '', 0),
(26, 1, '2026-01-14 11:53:40', '2026-01-14 08:53:40', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"translations\";s:9:\"copy_once\";}', 'Ссылка', 'link', 'publish', 'closed', 'closed', '', 'field_696758847d2ff', '', '', '2026-01-14 11:53:40', '2026-01-14 08:53:40', '', 25, 'http://loc.wizy/?post_type=acf-field&p=26', 0, 'acf-field', '', 0),
(27, 1, '2026-01-14 11:53:40', '2026-01-14 08:53:40', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:12:\"translations\";s:9:\"copy_once\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'изображение', 'img', 'publish', 'closed', 'closed', '', 'field_696758a57d300', '', '', '2026-01-14 12:13:45', '2026-01-14 09:13:45', '', 25, 'http://loc.wizy/?post_type=acf-field&#038;p=27', 1, 'acf-field', '', 0),
(28, 1, '2026-01-14 11:53:40', '2026-01-14 08:53:40', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"sub_fields\";a:0:{}}', 'Ссылка на приложение2', 'applinkScnd', 'publish', 'closed', 'closed', '', 'field_696758bd7d301', '', '', '2026-01-14 14:00:10', '2026-01-14 11:00:10', '', 20, 'http://loc.wizy/?post_type=acf-field&#038;p=28', 4, 'acf-field', '', 0),
(29, 1, '2026-01-14 11:53:40', '2026-01-14 08:53:40', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"translations\";s:9:\"copy_once\";}', 'Ссылка', 'link', 'publish', 'closed', 'closed', '', 'field_696758bd7d302', '', '', '2026-01-14 12:36:10', '2026-01-14 09:36:10', '', 28, 'http://loc.wizy/?post_type=acf-field&#038;p=29', 0, 'acf-field', '', 0),
(30, 1, '2026-01-14 11:53:40', '2026-01-14 08:53:40', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:12:\"translations\";s:9:\"copy_once\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'изображение', 'img', 'publish', 'closed', 'closed', '', 'field_696758bd7d303', '', '', '2026-01-14 12:13:56', '2026-01-14 09:13:56', '', 28, 'http://loc.wizy/?post_type=acf-field&#038;p=30', 1, 'acf-field', '', 0),
(31, 1, '2026-01-14 11:53:40', '2026-01-14 08:53:40', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:12:\"translations\";s:9:\"copy_once\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Моб. Иззображение', 'mobImage', 'publish', 'closed', 'closed', '', 'field_696758da7d304', '', '', '2026-01-14 14:00:10', '2026-01-14 11:00:10', '', 20, 'http://loc.wizy/?post_type=acf-field&#038;p=31', 5, 'acf-field', '', 0),
(32, 1, '2026-01-14 11:53:40', '2026-01-14 08:53:40', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:12:\"translations\";s:9:\"copy_once\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Изображение', 'image', 'publish', 'closed', 'closed', '', 'field_696759657d305', '', '', '2026-01-14 14:00:10', '2026-01-14 11:00:10', '', 20, 'http://loc.wizy/?post_type=acf-field&#038;p=32', 6, 'acf-field', '', 0),
(33, 1, '2026-01-14 11:55:28', '2026-01-14 08:55:28', '', 'Group 130', '', 'inherit', 'open', 'closed', '', 'group-130', '', '', '2026-01-14 11:55:28', '2026-01-14 08:55:28', '', 15, 'http://loc.wizy/wp-content/uploads/2026/01/group-130.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2026-01-14 11:55:40', '2026-01-14 08:55:40', '', 'Group 131', '', 'inherit', 'open', 'closed', '', 'group-131', '', '', '2026-01-14 11:55:40', '2026-01-14 08:55:40', '', 15, 'http://loc.wizy/wp-content/uploads/2026/01/group-131.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2026-01-14 11:56:09', '2026-01-14 08:56:09', '', 'Головна', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2026-01-14 11:56:09', '2026-01-14 08:56:09', '', 15, 'http://loc.wizy/?p=35', 0, 'revision', '', 0),
(36, 1, '2026-01-14 11:56:22', '2026-01-14 08:56:22', '', 'Головна', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2026-01-14 11:56:22', '2026-01-14 08:56:22', '', 15, 'http://loc.wizy/?p=36', 0, 'revision', '', 0),
(37, 1, '2026-01-14 12:14:07', '2026-01-14 09:14:07', '', 'Головна', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2026-01-14 12:14:07', '2026-01-14 09:14:07', '', 15, 'http://loc.wizy/?p=37', 0, 'revision', '', 0),
(38, 1, '2026-01-14 13:58:32', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2026-01-14 13:58:32', '0000-00-00 00:00:00', '', 0, 'http://loc.wizy/?post_type=acf-field-group&p=38', 0, 'acf-field-group', '', 0),
(39, 1, '2026-01-14 14:00:10', '2026-01-14 11:00:10', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:44:\"Включить\\выключить блок\";s:13:\"default_value\";i:1;s:12:\"translations\";s:9:\"copy_once\";s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Активность', 'isActive', 'publish', 'closed', 'closed', '', 'field_696776f3dfac7', '', '', '2026-01-14 14:00:10', '2026-01-14 11:00:10', '', 20, 'http://loc.wizy/?post_type=acf-field&p=39', 0, 'acf-field', '', 0),
(40, 1, '2026-01-14 14:01:17', '2026-01-14 11:01:17', '', 'Головна', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2026-01-14 14:01:17', '2026-01-14 11:01:17', '', 15, 'http://loc.wizy/?p=40', 0, 'revision', '', 0),
(41, 1, '2026-01-14 14:01:23', '2026-01-14 11:01:23', '', 'Головна', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2026-01-14 14:01:23', '2026-01-14 11:01:23', '', 15, 'http://loc.wizy/?p=41', 0, 'revision', '', 0),
(42, 1, '2026-01-14 14:01:40', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2026-01-14 14:01:40', '0000-00-00 00:00:00', '', 0, 'http://loc.wizy/?post_type=acf-field-group&p=42', 0, 'acf-field-group', '', 0),
(43, 1, '2026-01-14 14:07:06', '2026-01-14 11:07:06', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"index.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Блок как это работает', 'blok-kak-eto-rabotaet', 'publish', 'closed', 'closed', '', 'group_6967779a79aab', '', '', '2026-01-14 14:30:56', '2026-01-14 11:30:56', '', 0, 'http://loc.wizy/?post_type=acf-field-group&#038;p=43', 0, 'acf-field-group', '', 0),
(44, 1, '2026-01-14 14:07:06', '2026-01-14 11:07:06', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:1;s:12:\"translations\";s:9:\"copy_once\";s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Активность', 'hiw_isActive', 'publish', 'closed', 'closed', '', 'field_6967779a84884', '', '', '2026-01-14 14:18:26', '2026-01-14 11:18:26', '', 43, 'http://loc.wizy/?post_type=acf-field&#038;p=44', 0, 'acf-field', '', 0),
(48, 1, '2026-01-14 14:07:06', '2026-01-14 11:07:06', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:99:\"Ваш шлях до зручної поїздки — у кілька простих кроків.\";s:12:\"translations\";s:9:\"translate\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Подзаголовок', 'hiw_subtitle', 'publish', 'closed', 'closed', '', 'field_6967786784889', '', '', '2026-01-14 14:30:56', '2026-01-14 11:30:56', '', 43, 'http://loc.wizy/?post_type=acf-field&#038;p=48', 2, 'acf-field', '', 0),
(49, 1, '2026-01-14 14:07:06', '2026-01-14 11:07:06', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";i:0;s:3:\"max\";i:4;s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:16:\"Добавить\";s:13:\"rows_per_page\";i:20;}', 'шаги', 'hiw_steps', 'publish', 'closed', 'closed', '', 'field_696778838488a', '', '', '2026-01-14 14:30:42', '2026-01-14 11:30:42', '', 43, 'http://loc.wizy/?post_type=acf-field&#038;p=49', 3, 'acf-field', '', 0),
(50, 1, '2026-01-14 14:07:06', '2026-01-14 11:07:06', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:42:\"Оберіть формат поїздки\";s:12:\"translations\";s:9:\"translate\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Заголовок', 'title', 'publish', 'closed', 'closed', '', 'field_696778988488b', '', '', '2026-01-14 14:07:06', '2026-01-14 11:07:06', '', 49, 'http://loc.wizy/?post_type=acf-field&p=50', 0, 'acf-field', '', 0),
(51, 1, '2026-01-14 14:07:06', '2026-01-14 11:07:06', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:130:\"Попутка, люксбас або трансфер — просто виберіть, як вам зручніше їхати.\";s:12:\"translations\";s:9:\"translate\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'описание', 'descr', 'publish', 'closed', 'closed', '', 'field_696778bc8488c', '', '', '2026-01-14 14:07:06', '2026-01-14 11:07:06', '', 49, 'http://loc.wizy/?post_type=acf-field&p=51', 1, 'acf-field', '', 0),
(52, 1, '2026-01-14 14:12:51', '2026-01-14 11:12:51', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:12:\"translations\";s:9:\"copy_once\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Изображение', 'hiw_decor', 'publish', 'closed', 'closed', '', 'field_69677932ed7d7', '', '', '2026-01-14 14:30:42', '2026-01-14 11:30:42', '', 43, 'http://loc.wizy/?post_type=acf-field&#038;p=52', 4, 'acf-field', '', 0),
(53, 1, '2026-01-14 14:12:51', '2026-01-14 11:12:51', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'нижний блок', 'hiw_bottom', 'publish', 'closed', 'closed', '', 'field_6967794eed7d8', '', '', '2026-01-14 14:30:42', '2026-01-14 11:30:42', '', 43, 'http://loc.wizy/?post_type=acf-field&#038;p=53', 5, 'acf-field', '', 0),
(54, 1, '2026-01-14 14:12:51', '2026-01-14 11:12:51', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:36:\"Почати в застосунку\";s:12:\"translations\";s:9:\"translate\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Заголовок', 'title', 'publish', 'closed', 'closed', '', 'field_69677977ed7d9', '', '', '2026-01-14 14:12:51', '2026-01-14 11:12:51', '', 53, 'http://loc.wizy/?post_type=acf-field&p=54', 0, 'acf-field', '', 0),
(55, 1, '2026-01-14 14:12:51', '2026-01-14 11:12:51', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"sub_fields\";a:0:{}}', 'Ссылка на приложение1', 'applink', 'publish', 'closed', 'closed', '', 'field_6967798bed7da', '', '', '2026-01-14 14:12:51', '2026-01-14 11:12:51', '', 53, 'http://loc.wizy/?post_type=acf-field&p=55', 1, 'acf-field', '', 0),
(56, 1, '2026-01-14 14:12:51', '2026-01-14 11:12:51', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"translations\";s:9:\"copy_once\";}', 'Ссылка', 'link', 'publish', 'closed', 'closed', '', 'field_696779d5ed7db', '', '', '2026-01-14 14:12:51', '2026-01-14 11:12:51', '', 55, 'http://loc.wizy/?post_type=acf-field&p=56', 0, 'acf-field', '', 0),
(57, 1, '2026-01-14 14:12:51', '2026-01-14 11:12:51', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:7:\"library\";s:0:\"\";s:12:\"translations\";s:9:\"copy_once\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Изображение', 'img', 'publish', 'closed', 'closed', '', 'field_696779f3ed7dc', '', '', '2026-01-14 14:12:51', '2026-01-14 11:12:51', '', 55, 'http://loc.wizy/?post_type=acf-field&p=57', 1, 'acf-field', '', 0),
(58, 1, '2026-01-14 14:12:51', '2026-01-14 11:12:51', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"sub_fields\";a:0:{}}', 'Ссылка на приложение2', 'applinkScnd', 'publish', 'closed', 'closed', '', 'field_69677a1bed7dd', '', '', '2026-01-14 14:12:51', '2026-01-14 11:12:51', '', 53, 'http://loc.wizy/?post_type=acf-field&p=58', 2, 'acf-field', '', 0),
(59, 1, '2026-01-14 14:12:51', '2026-01-14 11:12:51', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"translations\";s:9:\"copy_once\";}', 'Ссылка', 'link', 'publish', 'closed', 'closed', '', 'field_69677a1bed7de', '', '', '2026-01-14 14:12:51', '2026-01-14 11:12:51', '', 58, 'http://loc.wizy/?post_type=acf-field&p=59', 0, 'acf-field', '', 0),
(60, 1, '2026-01-14 14:12:51', '2026-01-14 11:12:51', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:12:\"translations\";s:9:\"copy_once\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Изображение', 'img', 'publish', 'closed', 'closed', '', 'field_69677a1bed7df', '', '', '2026-01-14 14:12:51', '2026-01-14 11:12:51', '', 58, 'http://loc.wizy/?post_type=acf-field&p=60', 1, 'acf-field', '', 0),
(61, 1, '2026-01-14 14:14:19', '2026-01-14 11:14:19', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2026-01-14 14:14:19', '2026-01-14 11:14:19', '', 15, 'http://loc.wizy/wp-content/uploads/2026/01/logo.png', 0, 'attachment', 'image/png', 0),
(62, 1, '2026-01-14 14:16:41', '2026-01-14 11:16:41', '', 'Group 185', '', 'inherit', 'open', 'closed', '', 'group-185', '', '', '2026-01-14 14:16:41', '2026-01-14 11:16:41', '', 15, 'http://loc.wizy/wp-content/uploads/2026/01/group-185.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2026-01-14 14:17:15', '2026-01-14 11:17:15', '', 'Головна', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2026-01-14 14:17:15', '2026-01-14 11:17:15', '', 15, 'http://loc.wizy/?p=63', 0, 'revision', '', 0),
(64, 1, '2026-01-14 14:24:14', '2026-01-14 11:24:14', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Кастомный заголовок', 'kastomnyj-zagolovok', 'publish', 'closed', 'closed', '', 'group_69677ca0b093e', '', '', '2026-01-14 14:28:50', '2026-01-14 11:28:50', '', 0, 'http://loc.wizy/?post_type=acf-field-group&#038;p=64', 0, 'acf-field-group', '', 0),
(65, 1, '2026-01-14 14:24:14', '2026-01-14 11:24:14', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:18:\"Заголовок\";s:12:\"translations\";s:9:\"translate\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Заголовок', 'title', 'publish', 'closed', 'closed', '', 'field_69677ca007127', '', '', '2026-01-14 14:24:14', '2026-01-14 11:24:14', '', 64, 'http://loc.wizy/?post_type=acf-field&p=65', 0, 'acf-field', '', 0),
(66, 1, '2026-01-14 14:24:14', '2026-01-14 11:24:14', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:12:\"translations\";s:9:\"copy_once\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Изображение', 'img', 'publish', 'closed', 'closed', '', 'field_69677cc207128', '', '', '2026-01-14 14:24:14', '2026-01-14 11:24:14', '', 64, 'http://loc.wizy/?post_type=acf-field&p=66', 1, 'acf-field', '', 0),
(68, 1, '2026-01-14 14:26:00', '2026-01-14 11:26:00', '', 'Головна', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2026-01-14 14:26:00', '2026-01-14 11:26:00', '', 15, 'http://loc.wizy/?p=68', 0, 'revision', '', 0),
(69, 1, '2026-01-14 14:28:50', '2026-01-14 11:28:50', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"sub_fields\";a:0:{}}', 'Кастомный заголовок', 'customTitle', 'publish', 'closed', 'closed', '', 'field_69677da5cdbfc', '', '', '2026-01-14 14:28:50', '2026-01-14 11:28:50', '', 64, 'http://loc.wizy/?post_type=acf-field&p=69', 2, 'acf-field', '', 0),
(70, 1, '2026-01-14 14:28:50', '2026-01-14 11:28:50', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:18:\"Заголовок\";s:12:\"translations\";s:9:\"translate\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Заголовок', 'title', 'publish', 'closed', 'closed', '', 'field_69677dbfcdbfd', '', '', '2026-01-14 14:28:50', '2026-01-14 11:28:50', '', 69, 'http://loc.wizy/?post_type=acf-field&p=70', 0, 'acf-field', '', 0),
(71, 1, '2026-01-14 14:28:50', '2026-01-14 11:28:50', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:12:\"translations\";s:9:\"copy_once\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Изображение', 'img', 'publish', 'closed', 'closed', '', 'field_69677dcccdbfe', '', '', '2026-01-14 14:28:50', '2026-01-14 11:28:50', '', 69, 'http://loc.wizy/?post_type=acf-field&p=71', 1, 'acf-field', '', 0),
(72, 1, '2026-01-14 14:29:16', '2026-01-14 11:29:16', '', 'Головна', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2026-01-14 14:29:16', '2026-01-14 11:29:16', '', 15, 'http://loc.wizy/?p=72', 0, 'revision', '', 0),
(73, 1, '2026-01-14 14:30:03', '2026-01-14 11:30:03', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"clone\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:5:\"clone\";a:1:{i:0;s:19:\"group_69677ca0b093e\";}s:7:\"display\";s:8:\"seamless\";s:6:\"layout\";s:5:\"block\";s:12:\"prefix_label\";i:0;s:11:\"prefix_name\";i:0;}', 'Заголовок', 'hiw_title', 'publish', 'closed', 'closed', '', 'field_69677e2c4aaa4', '', '', '2026-01-14 14:30:42', '2026-01-14 11:30:42', '', 43, 'http://loc.wizy/?post_type=acf-field&#038;p=73', 1, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Українська', 'uk', 0),
(3, 'Українська', 'pll_uk', 0),
(4, 'pll_6964c883a768e', 'pll_6964c883a768e', 0),
(5, 'English', 'en', 0),
(6, 'English', 'pll_en', 0),
(7, 'Без рубрики', 'bez-rubriki-en', 0),
(8, 'pll_6964c88e1f975', 'pll_6964c88e1f975', 0),
(9, 'main ua', 'main-ua', 0),
(10, 'pll_69661dcab3a7e', 'pll_69661dcab3a7e', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 3, 0),
(1, 4, 0),
(7, 4, 0),
(7, 6, 0),
(7, 9, 0),
(8, 9, 0),
(9, 9, 0),
(10, 9, 0),
(15, 2, 0),
(15, 10, 0),
(17, 9, 0),
(18, 5, 0),
(18, 10, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'language', 'a:4:{s:9:\"fallbacks\";a:0:{}s:6:\"locale\";s:2:\"uk\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"ua\";}', 0, 1),
(3, 3, 'term_language', '', 0, 1),
(4, 4, 'term_translations', 'a:2:{s:2:\"uk\";i:1;s:2:\"en\";i:7;}', 0, 2),
(5, 5, 'language', 'a:4:{s:9:\"fallbacks\";a:0:{}s:6:\"locale\";s:5:\"en_US\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"us\";}', 0, 1),
(6, 6, 'term_language', '', 0, 1),
(7, 7, 'category', '', 0, 0),
(8, 8, 'term_translations', 'a:1:{s:2:\"uk\";i:7;}', 0, 0),
(9, 9, 'nav_menu', '', 0, 5),
(10, 10, 'post_translations', 'a:2:{s:2:\"en\";i:18;s:2:\"uk\";i:15;}', 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"f45ed0f1654f08c0cc67d8ae6c99b8f61ca67af60cba4bc4e6ed4743d9b51307\";a:4:{s:10:\"expiration\";i:1768384746;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36\";s:5:\"login\";i:1768211946;}s:64:\"927aa645f9ed19d49f61e328c030c15b0ada748a9012f41865701af0fa146342\";a:4:{s:10:\"expiration\";i:1768465404;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36\";s:5:\"login\";i:1768292604;}s:64:\"58d659e43a6e52d363e72484fa0621e89f7baac4df9eb2cc29d182a6b1d4cfc2\";a:4:{s:10:\"expiration\";i:1768553154;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36\";s:5:\"login\";i:1768380354;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:19:\"pll_lang_switch_box\";i:1;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '9'),
(22, 1, 'wp_user-settings', 'libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1768380964'),
(24, 1, 'closedpostboxes_page', 'a:1:{i:0;s:23:\"acf-group_696757c7b05dd\";}'),
(25, 1, 'metaboxhidden_page', 'a:6:{i:0;s:12:\"revisionsdiv\";i:1;s:11:\"postexcerpt\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),
(26, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:43:\"ml_box,submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:119:\"acf-group_696757c7b05dd,acf-group_6967779a79aab,revisionsdiv,postexcerpt,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(27, 1, 'screen_layout_page', '2');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$wp$2y$10$hIf1ryHPJAn/jNo2N3.SEOZc5YrDCRlfrrBNz7Ez.QBYnZW61RpXy', 'admin', 'orlikallord1989@gmail.com', 'http://loc.wizy', '2026-01-12 08:36:46', '', 0, 'admin');

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
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

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
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=416;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=664;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
