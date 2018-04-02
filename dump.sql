-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u1
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 29-Fev-2016 às 05:53
-- Versão do servidor: 5.5.44
-- versão do PHP: 5.4.41-0+deb7u1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `ramon82_jobs_abril`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=461 ;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://jobs.ramon82.com/abril', 'yes'),
(2, 'home', 'http://jobs.ramon82.com/abril', 'yes'),
(3, 'blogname', 'Quatro Rodas', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'me@ramon82.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(22, 'posts_per_page', '8', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:8:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:13:"cmb2/init.php";i:2;s:25:"gg-gallery/gg-gallery.php";i:3;s:27:"mail-subscribe-list/sml.php";i:4;s:32:"metronet-reorder-posts/index.php";i:5;s:51:"post-type-archive-links/post-type-archive-links.php";i:6;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:7;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '-3', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'quatrorodas', 'yes'),
(42, 'stylesheet', 'quatrorodas', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '35700', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '31536', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'WPLANG', '', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(98, 'cron', 'a:4:{i:1456727802;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1456727809;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1456728083;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(107, '_transient_random_seed', 'dbbfbddbf61991e5f7599a19993fb608', 'yes'),
(129, 'ftp_credentials', 'a:3:{s:8:"hostname";s:11:"ramon82.com";s:8:"username";s:4:"jobs";s:15:"connection_type";s:3:"ftp";}', 'yes'),
(132, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1439707067;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(133, 'current_theme', 'Quatro Rodas', 'yes'),
(134, 'theme_mods_v1', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:9:"main-menu";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1456712882;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(135, 'theme_switched', '', 'yes'),
(145, 'recently_activated', 'a:1:{s:53:"custom-post-type-parents/custom-post-type-parents.php";i:1440646480;}', 'yes'),
(146, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(253, 'acf_version', '4.4.3', 'yes'),
(255, 'metronet-reorder-posts', 'a:2:{s:10:"post_types";a:10:{s:4:"post";s:3:"off";s:4:"page";s:3:"off";s:3:"acf";s:3:"off";s:6:"artigo";s:2:"on";s:7:"noticia";s:2:"on";s:4:"case";s:3:"off";s:7:"servico";s:3:"off";s:7:"produto";s:2:"on";s:10:"depoimento";s:2:"on";s:8:"parceiro";s:3:"off";}s:10:"menu_order";a:10:{s:4:"post";a:2:{s:7:"orderby";s:4:"none";s:5:"order";s:4:"DESC";}s:4:"page";a:2:{s:7:"orderby";s:4:"none";s:5:"order";s:4:"DESC";}s:3:"acf";a:2:{s:7:"orderby";s:4:"none";s:5:"order";s:4:"DESC";}s:6:"artigo";a:2:{s:7:"orderby";s:10:"menu_order";s:5:"order";s:3:"ASC";}s:7:"noticia";a:2:{s:7:"orderby";s:10:"menu_order";s:5:"order";s:3:"ASC";}s:4:"case";a:2:{s:7:"orderby";s:4:"none";s:5:"order";s:4:"DESC";}s:7:"servico";a:2:{s:7:"orderby";s:4:"none";s:5:"order";s:4:"DESC";}s:7:"produto";a:2:{s:7:"orderby";s:10:"menu_order";s:5:"order";s:3:"ASC";}s:10:"depoimento";a:2:{s:7:"orderby";s:4:"none";s:5:"order";s:4:"DESC";}s:8:"parceiro";a:2:{s:7:"orderby";s:4:"none";s:5:"order";s:4:"DESC";}}}', 'yes'),
(272, 'finished_splitting_shared_terms', '1', 'yes'),
(273, 'db_upgraded', '', 'yes'),
(389, 'wpmdb_settings', 'a:9:{s:3:"key";s:40:"KKC79INuYmeJGl8Be2fqhWi5hCS27t/fDfgJqvE/";s:10:"allow_pull";b:0;s:10:"allow_push";b:0;s:8:"profiles";a:1:{i:0;a:17:{s:13:"save_computer";s:1:"1";s:9:"gzip_file";s:1:"1";s:13:"replace_guids";s:1:"1";s:12:"exclude_spam";s:1:"0";s:19:"keep_active_plugins";s:1:"0";s:13:"create_backup";s:1:"0";s:18:"exclude_post_types";s:1:"0";s:25:"compatibility_older_mysql";s:1:"1";s:6:"action";s:8:"savefile";s:15:"connection_info";s:0:"";s:11:"replace_old";a:2:{i:1;s:27:"//jobs.ramon82.com/prosperi";i:2;s:39:"/home/ramon82/ramon82.com/jobs/prosperi";}s:11:"replace_new";a:2:{i:1;s:37:"//hml.prosperi.site2015.elodigital.cc";i:2;s:46:"/dados/web/hml.prosperi.site2015.elodigital.cc";}s:18:"exclude_transients";s:1:"1";s:22:"save_migration_profile";s:1:"1";s:29:"save_migration_profile_option";s:1:"0";s:18:"create_new_profile";s:0:"";s:4:"name";s:10:"To Homolog";}}s:7:"licence";s:0:"";s:10:"verify_ssl";b:0;s:17:"blacklist_plugins";a:0:{}s:11:"max_request";i:1048576;s:22:"delay_between_requests";i:0;}', 'yes'),
(390, 'wpmdb_schema_version', '1', 'yes'),
(391, 'wpmdb_state_timeout_55e47eac931e7', '1441124402', 'yes'),
(392, 'wpmdb_state_55e47eac931e7', 'a:21:{s:6:"action";s:19:"wpmdb_migrate_table";s:6:"intent";s:8:"savefile";s:3:"url";s:0:"";s:9:"form_data";s:551:"action=savefile&save_computer=1&gzip_file=1&connection_info=&auth_username=&auth_password=&replace_old%5B%5D=&replace_new%5B%5D=&replace_old%5B%5D=%2F%2Fjobs.ramon82.com%2Fprosperi&replace_new%5B%5D=%2F%2Fhml.prosperi-site2015.elodigital.cc&replace_old%5B%5D=%2Fhome%2Framon82%2Framon82.com%2Fjobs%2Fprosperi&replace_new%5B%5D=%2Fdados%2Fweb%2Fhml.prosperi-site2015.elodigital.cc&replace_guids=1&exclude_transients=1&compatibility_older_mysql=1&save_migration_profile=1&save_migration_profile_option=new&create_new_profile=To+Homolog&remote_json_data=";s:5:"stage";s:7:"migrate";s:5:"nonce";s:10:"037185b75f";s:4:"code";i:200;s:7:"message";s:2:"OK";s:4:"body";s:11:"{"error":0}";s:9:"dump_path";s:130:"/home/ramon82/ramon82.com/jobs/prosperi/wp-content/uploads/wp-migrate-db/ramon82_jobs_prosperi-migrate-20150831161956-9bo5h.sql.gz";s:13:"dump_filename";s:50:"ramon82_jobs_prosperi-migrate-20150831161956-9bo5h";s:8:"dump_url";s:123:"http://jobs.ramon82.com/prosperi/wp-content/uploads/wp-migrate-db/ramon82_jobs_prosperi-migrate-20150831161956-9bo5h.sql.gz";s:10:"db_version";s:6:"5.5.44";s:8:"site_url";s:32:"http://jobs.ramon82.com/prosperi";s:18:"find_replace_pairs";a:2:{s:11:"replace_old";a:2:{i:1;s:27:"//jobs.ramon82.com/prosperi";i:2;s:39:"/home/ramon82/ramon82.com/jobs/prosperi";}s:11:"replace_new";a:2:{i:1;s:37:"//hml.prosperi-site2015.elodigital.cc";i:2;s:46:"/dados/web/hml.prosperi-site2015.elodigital.cc";}}s:18:"migration_state_id";s:13:"55e47eac931e7";s:5:"table";s:8:"wp_users";s:11:"current_row";s:0:"";s:10:"last_table";s:1:"1";s:12:"primary_keys";s:0:"";s:4:"gzip";s:1:"0";}', 'yes'),
(393, 'wpmdb_state_timeout_55e484feb11a4', '1441126020', 'yes'),
(394, 'wpmdb_state_55e484feb11a4', 'a:21:{s:6:"action";s:19:"wpmdb_migrate_table";s:6:"intent";s:8:"savefile";s:3:"url";s:0:"";s:9:"form_data";s:539:"action=savefile&save_computer=1&gzip_file=1&connection_info=&auth_username=&auth_password=&replace_old%5B%5D=&replace_new%5B%5D=&replace_old%5B%5D=%2F%2Fjobs.ramon82.com%2Fprosperi&replace_new%5B%5D=%2F%2Fhml.prosperi.site2015.elodigital.cc&replace_old%5B%5D=%2Fhome%2Framon82%2Framon82.com%2Fjobs%2Fprosperi&replace_new%5B%5D=%2Fdados%2Fweb%2Fhml.prosperi.site2015.elodigital.cc&replace_guids=1&exclude_transients=1&compatibility_older_mysql=1&save_migration_profile=1&save_migration_profile_option=0&create_new_profile=&remote_json_data=";s:5:"stage";s:7:"migrate";s:5:"nonce";s:10:"037185b75f";s:4:"code";i:200;s:7:"message";s:2:"OK";s:4:"body";s:11:"{"error":0}";s:9:"dump_path";s:130:"/home/ramon82/ramon82.com/jobs/prosperi/wp-content/uploads/wp-migrate-db/ramon82_jobs_prosperi-migrate-20150831164654-zj1yi.sql.gz";s:13:"dump_filename";s:50:"ramon82_jobs_prosperi-migrate-20150831164654-zj1yi";s:8:"dump_url";s:123:"http://jobs.ramon82.com/prosperi/wp-content/uploads/wp-migrate-db/ramon82_jobs_prosperi-migrate-20150831164654-zj1yi.sql.gz";s:10:"db_version";s:6:"5.5.44";s:8:"site_url";s:32:"http://jobs.ramon82.com/prosperi";s:18:"find_replace_pairs";a:2:{s:11:"replace_old";a:2:{i:1;s:27:"//jobs.ramon82.com/prosperi";i:2;s:39:"/home/ramon82/ramon82.com/jobs/prosperi";}s:11:"replace_new";a:2:{i:1;s:37:"//hml.prosperi.site2015.elodigital.cc";i:2;s:46:"/dados/web/hml.prosperi.site2015.elodigital.cc";}}s:18:"migration_state_id";s:13:"55e484feb11a4";s:5:"table";s:8:"wp_users";s:11:"current_row";s:0:"";s:10:"last_table";s:1:"1";s:12:"primary_keys";s:0:"";s:4:"gzip";s:1:"0";}', 'yes'),
(418, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(419, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(420, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(421, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(423, 'site_icon', '0', 'yes'),
(424, 'medium_large_size_w', '768', 'yes'),
(425, 'medium_large_size_h', '0', 'yes'),
(428, '_site_transient_timeout_theme_roots', '1456714377', 'yes'),
(429, '_site_transient_theme_roots', 'a:1:{s:11:"quatrorodas";s:7:"/themes";}', 'yes'),
(430, '_site_transient_timeout_browser_e3ae366e66d1c39ce6cf9f9706edbba9', '1457317378', 'yes'),
(431, '_site_transient_browser_e3ae366e66d1c39ce6cf9f9706edbba9', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"48.0.2564.116";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(432, 'can_compress_scripts', '0', 'yes'),
(437, '_site_transient_timeout_available_translations', '1456723404', 'yes'),
(438, '_site_transient_available_translations', 'a:77:{s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-12 10:15:45";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-07 13:09:53";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-07 20:53:51";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-11 22:42:10";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 08:50:29";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-08 13:17:04";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-04 09:40:25";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-16 13:48:03";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-16 15:34:57";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-26 16:01:40";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 22:48:20";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 14:19:21";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-26 16:11:41";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-26 16:11:56";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.4.2/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-25 16:27:59";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-06 23:10:59";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-14 21:14:29";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 13:34:17";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-15 11:52:35";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-07 04:39:48";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-25 13:07:29";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-28 19:55:54";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-13 06:14:13";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-09 18:08:52";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-24 15:17:36";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-07 17:35:10";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-23 00:46:01";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-13 12:28:49";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-18 06:44:22";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-07 21:19:15";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-31 19:24:20";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-23 06:49:15";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 13:47:35";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-11 10:20:56";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 02:16:19";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.3.3";s:7:"updated";s:19:"2015-09-24 15:25:30";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.3/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-13 16:48:03";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-28 21:55:44";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-06 14:16:56";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-24 11:33:48";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-03 14:37:42";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-04 07:13:54";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-21 16:17:50";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 00:20:24";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-30 18:58:39";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-25 13:08:14";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-09 08:53:31";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-24 00:12:01";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 20:07:24";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-28 05:41:39";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.10";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.10/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-07 10:01:09";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-20 13:35:50";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.4.2/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-23 18:59:13";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-14 12:19:44";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-08 16:21:37";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-26 19:07:19";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.10";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.10/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-10 18:05:56";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-25 13:02:32";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-24 11:09:36";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-02 00:04:31";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-26 11:29:13";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-26 00:00:18";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-23 10:30:30";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 09:09:51";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 23:28:56";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 03:22:55";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-27 15:51:36";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-17 23:12:27";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:6:"4.1.10";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.10/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-03 22:04:41";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 01:01:25";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-11 18:51:41";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-12 22:55:08";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'yes'),
(445, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1456712654;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.7";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.7.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'yes'),
(446, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1456712879;s:7:"checked";a:1:{s:11:"quatrorodas";s:3:"1.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(448, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.4.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.4.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.4.2";s:7:"version";s:5:"4.4.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1456712655;s:15:"version_checked";s:5:"4.4.2";s:12:"translations";a:0:{}}', 'yes'),
(449, 'theme_mods_quatrorodas', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:9:"main-menu";i:7;}}', 'yes'),
(456, 'categoria_children', 'a:0:{}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(460, 'rewrite_rules', 'a:101:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:11:"noticias/?$";s:27:"index.php?post_type=noticia";s:41:"noticias/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=noticia&feed=$matches[1]";s:36:"noticias/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=noticia&feed=$matches[1]";s:28:"noticias/page/([0-9]{1,})/?$";s:45:"index.php?post_type=noticia&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:36:"noticias/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"noticias/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"noticias/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"noticias/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"noticias/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"noticias/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"noticias/([^/]+)/embed/?$";s:40:"index.php?noticia=$matches[1]&embed=true";s:29:"noticias/([^/]+)/trackback/?$";s:34:"index.php?noticia=$matches[1]&tb=1";s:49:"noticias/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?noticia=$matches[1]&feed=$matches[2]";s:44:"noticias/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?noticia=$matches[1]&feed=$matches[2]";s:37:"noticias/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?noticia=$matches[1]&paged=$matches[2]";s:44:"noticias/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?noticia=$matches[1]&cpage=$matches[2]";s:33:"noticias/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?noticia=$matches[1]&page=$matches[2]";s:25:"noticias/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"noticias/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"noticias/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"noticias/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"noticias/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"noticias/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:50:"categoria/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?categoria=$matches[1]&feed=$matches[2]";s:45:"categoria/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?categoria=$matches[1]&feed=$matches[2]";s:38:"categoria/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?categoria=$matches[1]&paged=$matches[2]";s:20:"categoria/([^/]+)/?$";s:31:"index.php?categoria=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=122 ;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 3, '_edit_last', '1'),
(2, 3, '_edit_lock', '1456714849:1'),
(3, 4, '_edit_last', '1'),
(4, 4, '_edit_lock', '1456714892:1'),
(5, 5, '_edit_last', '1'),
(6, 5, '_edit_lock', '1456714892:1'),
(7, 6, '_edit_last', '1'),
(8, 6, '_edit_lock', '1456715107:1'),
(9, 7, '_edit_last', '1'),
(10, 7, '_edit_lock', '1456715110:1'),
(11, 8, '_edit_last', '1'),
(12, 8, '_edit_lock', '1456715109:1'),
(13, 9, '_edit_last', '1'),
(14, 9, '_edit_lock', '1456715108:1'),
(15, 10, '_edit_last', '1'),
(16, 10, '_edit_lock', '1456715229:1'),
(17, 11, '_wp_attached_file', '2016/02/img-1.jpeg'),
(18, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:948;s:6:"height";i:552;s:4:"file";s:18:"2016/02/img-1.jpeg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"img-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"img-1-300x175.jpeg";s:5:"width";i:300;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"img-1-768x447.jpeg";s:5:"width";i:768;s:6:"height";i:447;s:9:"mime-type";s:10:"image/jpeg";}s:4:"tile";a:4:{s:4:"file";s:18:"img-1-610x355.jpeg";s:5:"width";i:610;s:6:"height";i:355;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:18:"img-1-330x192.jpeg";s:5:"width";i:330;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(19, 3, '_thumbnail_id', '11'),
(20, 12, '_wp_attached_file', '2016/02/img-2.jpeg'),
(21, 12, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:948;s:6:"height";i:552;s:4:"file";s:18:"2016/02/img-2.jpeg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"img-2-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"img-2-300x175.jpeg";s:5:"width";i:300;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"img-2-768x447.jpeg";s:5:"width";i:768;s:6:"height";i:447;s:9:"mime-type";s:10:"image/jpeg";}s:4:"tile";a:4:{s:4:"file";s:18:"img-2-610x355.jpeg";s:5:"width";i:610;s:6:"height";i:355;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:18:"img-2-330x192.jpeg";s:5:"width";i:330;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(22, 10, '_thumbnail_id', '12'),
(23, 13, '_wp_attached_file', '2016/02/img-3.jpeg'),
(24, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:948;s:6:"height";i:552;s:4:"file";s:18:"2016/02/img-3.jpeg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"img-3-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"img-3-300x175.jpeg";s:5:"width";i:300;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"img-3-768x447.jpeg";s:5:"width";i:768;s:6:"height";i:447;s:9:"mime-type";s:10:"image/jpeg";}s:4:"tile";a:4:{s:4:"file";s:18:"img-3-610x355.jpeg";s:5:"width";i:610;s:6:"height";i:355;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:18:"img-3-330x192.jpeg";s:5:"width";i:330;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(25, 5, '_thumbnail_id', '13'),
(26, 14, '_wp_attached_file', '2016/02/img-4.jpeg'),
(27, 14, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:948;s:6:"height";i:552;s:4:"file";s:18:"2016/02/img-4.jpeg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"img-4-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"img-4-300x175.jpeg";s:5:"width";i:300;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"img-4-768x447.jpeg";s:5:"width";i:768;s:6:"height";i:447;s:9:"mime-type";s:10:"image/jpeg";}s:4:"tile";a:4:{s:4:"file";s:18:"img-4-610x355.jpeg";s:5:"width";i:610;s:6:"height";i:355;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:18:"img-4-330x192.jpeg";s:5:"width";i:330;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(28, 4, '_thumbnail_id', '14'),
(29, 15, '_wp_attached_file', '2016/02/img-5.jpeg'),
(30, 15, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:948;s:6:"height";i:552;s:4:"file";s:18:"2016/02/img-5.jpeg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"img-5-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"img-5-300x175.jpeg";s:5:"width";i:300;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"img-5-768x447.jpeg";s:5:"width";i:768;s:6:"height";i:447;s:9:"mime-type";s:10:"image/jpeg";}s:4:"tile";a:4:{s:4:"file";s:18:"img-5-610x355.jpeg";s:5:"width";i:610;s:6:"height";i:355;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:18:"img-5-330x192.jpeg";s:5:"width";i:330;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(31, 6, '_thumbnail_id', '15'),
(32, 16, '_wp_attached_file', '2016/02/img-6.jpeg'),
(33, 16, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:948;s:6:"height";i:552;s:4:"file";s:18:"2016/02/img-6.jpeg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"img-6-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"img-6-300x175.jpeg";s:5:"width";i:300;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"img-6-768x447.jpeg";s:5:"width";i:768;s:6:"height";i:447;s:9:"mime-type";s:10:"image/jpeg";}s:4:"tile";a:4:{s:4:"file";s:18:"img-6-610x355.jpeg";s:5:"width";i:610;s:6:"height";i:355;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:18:"img-6-330x192.jpeg";s:5:"width";i:330;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(34, 9, '_thumbnail_id', '16'),
(35, 17, '_wp_attached_file', '2016/02/img-7.jpeg'),
(36, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:948;s:6:"height";i:552;s:4:"file";s:18:"2016/02/img-7.jpeg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"img-7-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"img-7-300x175.jpeg";s:5:"width";i:300;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"img-7-768x447.jpeg";s:5:"width";i:768;s:6:"height";i:447;s:9:"mime-type";s:10:"image/jpeg";}s:4:"tile";a:4:{s:4:"file";s:18:"img-7-610x355.jpeg";s:5:"width";i:610;s:6:"height";i:355;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:18:"img-7-330x192.jpeg";s:5:"width";i:330;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(37, 8, '_thumbnail_id', '17'),
(38, 18, '_wp_attached_file', '2016/02/img-8.jpeg'),
(39, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:948;s:6:"height";i:552;s:4:"file";s:18:"2016/02/img-8.jpeg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"img-8-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"img-8-300x175.jpeg";s:5:"width";i:300;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"img-8-768x447.jpeg";s:5:"width";i:768;s:6:"height";i:447;s:9:"mime-type";s:10:"image/jpeg";}s:4:"tile";a:4:{s:4:"file";s:18:"img-8-610x355.jpeg";s:5:"width";i:610;s:6:"height";i:355;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:18:"img-8-330x192.jpeg";s:5:"width";i:330;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(40, 7, '_thumbnail_id', '18'),
(41, 20, '_menu_item_type', 'custom'),
(42, 20, '_menu_item_menu_item_parent', '0'),
(43, 20, '_menu_item_object_id', '20'),
(44, 20, '_menu_item_object', 'custom'),
(45, 20, '_menu_item_target', ''),
(46, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(47, 20, '_menu_item_xfn', ''),
(48, 20, '_menu_item_url', '#'),
(50, 21, '_menu_item_type', 'custom'),
(51, 21, '_menu_item_menu_item_parent', '0'),
(52, 21, '_menu_item_object_id', '21'),
(53, 21, '_menu_item_object', 'custom'),
(54, 21, '_menu_item_target', ''),
(55, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(56, 21, '_menu_item_xfn', ''),
(57, 21, '_menu_item_url', '#'),
(59, 22, '_menu_item_type', 'custom'),
(60, 22, '_menu_item_menu_item_parent', '0'),
(61, 22, '_menu_item_object_id', '22'),
(62, 22, '_menu_item_object', 'custom'),
(63, 22, '_menu_item_target', ''),
(64, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(65, 22, '_menu_item_xfn', ''),
(66, 22, '_menu_item_url', '#'),
(68, 23, '_menu_item_type', 'custom'),
(69, 23, '_menu_item_menu_item_parent', '0'),
(70, 23, '_menu_item_object_id', '23'),
(71, 23, '_menu_item_object', 'custom'),
(72, 23, '_menu_item_target', ''),
(73, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(74, 23, '_menu_item_xfn', ''),
(75, 23, '_menu_item_url', '#'),
(77, 24, '_menu_item_type', 'custom'),
(78, 24, '_menu_item_menu_item_parent', '0'),
(79, 24, '_menu_item_object_id', '24'),
(80, 24, '_menu_item_object', 'custom'),
(81, 24, '_menu_item_target', ''),
(82, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(83, 24, '_menu_item_xfn', ''),
(84, 24, '_menu_item_url', '#'),
(86, 25, '_menu_item_type', 'custom'),
(87, 25, '_menu_item_menu_item_parent', '0'),
(88, 25, '_menu_item_object_id', '25'),
(89, 25, '_menu_item_object', 'custom'),
(90, 25, '_menu_item_target', ''),
(91, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(92, 25, '_menu_item_xfn', ''),
(93, 25, '_menu_item_url', '#'),
(95, 26, '_menu_item_type', 'custom'),
(96, 26, '_menu_item_menu_item_parent', '0'),
(97, 26, '_menu_item_object_id', '26'),
(98, 26, '_menu_item_object', 'custom'),
(99, 26, '_menu_item_target', ''),
(100, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(101, 26, '_menu_item_xfn', ''),
(102, 26, '_menu_item_url', '#'),
(104, 27, '_menu_item_type', 'custom'),
(105, 27, '_menu_item_menu_item_parent', '20'),
(106, 27, '_menu_item_object_id', '27'),
(107, 27, '_menu_item_object', 'custom'),
(108, 27, '_menu_item_target', ''),
(109, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(110, 27, '_menu_item_xfn', ''),
(111, 27, '_menu_item_url', '#'),
(113, 28, '_menu_item_type', 'custom'),
(114, 28, '_menu_item_menu_item_parent', '20'),
(115, 28, '_menu_item_object_id', '28'),
(116, 28, '_menu_item_object', 'custom'),
(117, 28, '_menu_item_target', ''),
(118, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(119, 28, '_menu_item_xfn', ''),
(120, 28, '_menu_item_url', '#');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
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
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=29 ;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-02-28 23:22:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-02-28 23:22:58', '0000-00-00 00:00:00', '', 0, 'http://jobs.ramon82.com/abril/?p=1', 0, 'post', '', 0),
(2, 1, '2016-02-28 23:29:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-02-28 23:29:32', '0000-00-00 00:00:00', '', 0, 'http://jobs.ramon82.com/abril/?post_type=noticia&p=2', 0, 'noticia', '', 0),
(3, 1, '2016-02-28 23:45:20', '2016-02-29 02:45:20', '', 'BMW confirma novos x1 e série 3 no Brasil', '', 'publish', 'closed', 'closed', '', 'bmw-confirma-novos-x1-e-serie-3-no-brasil', '', '', '2016-02-28 23:59:28', '2016-02-29 02:59:28', '', 0, 'http://jobs.ramon82.com/abril/?post_type=noticia&#038;p=3', 0, 'noticia', '', 0),
(4, 1, '2016-02-28 23:42:35', '2016-02-29 02:42:35', '', 'Frankfurt: Kia revela novo sportage', '', 'publish', 'closed', 'closed', '', 'frankfurt-kia-revela-novo-sportage', '', '', '2016-02-29 00:03:55', '2016-02-29 03:03:55', '', 0, 'http://jobs.ramon82.com/abril/?post_type=noticia&#038;p=4', 0, 'noticia', '', 0),
(5, 1, '2016-02-28 23:43:03', '2016-02-29 02:43:03', '', 'Frankfurt: Porsche Mission e Dá um show...', '', 'publish', 'closed', 'closed', '', 'frankfurt-porsche-mission-e-da-um-show', '', '', '2016-02-29 00:03:41', '2016-02-29 03:03:41', '', 0, 'http://jobs.ramon82.com/abril/?post_type=noticia&#038;p=5', 0, 'noticia', '', 0),
(6, 1, '2016-02-28 23:42:26', '2016-02-29 02:42:26', '', 'Nova Geração do Volkswagen Tiguan', '', 'publish', 'closed', 'closed', '', 'nova-geracao-do-volkswagen-tiguan', '', '', '2016-02-29 00:04:13', '2016-02-29 03:04:13', '', 0, 'http://jobs.ramon82.com/abril/?post_type=noticia&#038;p=6', 0, 'noticia', '', 0),
(7, 1, '2016-02-28 23:40:07', '2016-02-29 02:40:07', '', 'Chevrolet mostra nova Geração do Malibu', 'Sedã perdeu 136 kg e ampliou o espaço entre-eixos', 'publish', 'closed', 'closed', '', 'chevrolet-mostra-nova-geracao-do-malibu', '', '', '2016-02-29 00:06:24', '2016-02-29 03:06:24', '', 0, 'http://jobs.ramon82.com/abril/?post_type=noticia&#038;p=7', 0, 'noticia', '', 0),
(8, 1, '2016-02-28 23:40:24', '2016-02-29 02:40:24', '', 'BMW Série 2 active tourer', 'Pista livre para o embate entre os dois cometas de cauda curta', 'publish', 'closed', 'closed', '', 'bmw-serie-2-active-tourer', '', '', '2016-02-29 00:06:06', '2016-02-29 03:06:06', '', 0, 'http://jobs.ramon82.com/abril/?post_type=noticia&#038;p=8', 0, 'noticia', '', 0),
(9, 1, '2016-02-28 23:40:34', '2016-02-29 02:40:34', '', 'Nissan GT-R', 'Pilotamos o Godzilla, o mosntro recordista de Nurburgring que assombra os alemães', 'publish', 'closed', 'closed', '', 'nissan-gt-r', '', '', '2016-02-29 00:04:45', '2016-02-29 03:04:45', '', 0, 'http://jobs.ramon82.com/abril/?post_type=noticia&#038;p=9', 0, 'noticia', '', 0),
(10, 1, '2016-02-28 23:41:23', '2016-02-29 02:41:23', '', 'Audi G3 X Mercedes-Benz cla 45 amg', 'Pista livre para o embate entre os dois cometas de cauda curta', 'publish', 'closed', 'closed', '', 'audi-g3-x-mercedes-benz-cla-45-amg', '', '', '2016-02-29 00:07:09', '2016-02-29 03:07:09', '', 0, 'http://jobs.ramon82.com/abril/?post_type=noticia&#038;p=10', 0, 'noticia', '', 0),
(11, 1, '2016-02-28 23:59:24', '2016-02-29 02:59:24', '', 'img-1', '', 'inherit', 'open', 'closed', '', 'img-1', '', '', '2016-02-28 23:59:24', '2016-02-29 02:59:24', '', 3, 'http://jobs.ramon82.com/abril/wp-content/uploads/2016/02/img-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2016-02-29 00:03:27', '2016-02-29 03:03:27', '', 'img-2', '', 'inherit', 'open', 'closed', '', 'img-2', '', '', '2016-02-29 00:03:27', '2016-02-29 03:03:27', '', 10, 'http://jobs.ramon82.com/abril/wp-content/uploads/2016/02/img-2.jpeg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2016-02-29 00:03:38', '2016-02-29 03:03:38', '', 'img-3', '', 'inherit', 'open', 'closed', '', 'img-3', '', '', '2016-02-29 00:03:38', '2016-02-29 03:03:38', '', 5, 'http://jobs.ramon82.com/abril/wp-content/uploads/2016/02/img-3.jpeg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2016-02-29 00:03:51', '2016-02-29 03:03:51', '', 'img-4', '', 'inherit', 'open', 'closed', '', 'img-4', '', '', '2016-02-29 00:03:51', '2016-02-29 03:03:51', '', 4, 'http://jobs.ramon82.com/abril/wp-content/uploads/2016/02/img-4.jpeg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2016-02-29 00:04:11', '2016-02-29 03:04:11', '', 'img-5', '', 'inherit', 'open', 'closed', '', 'img-5', '', '', '2016-02-29 00:04:11', '2016-02-29 03:04:11', '', 6, 'http://jobs.ramon82.com/abril/wp-content/uploads/2016/02/img-5.jpeg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2016-02-29 00:04:42', '2016-02-29 03:04:42', '', 'img-6', '', 'inherit', 'open', 'closed', '', 'img-6', '', '', '2016-02-29 00:04:42', '2016-02-29 03:04:42', '', 9, 'http://jobs.ramon82.com/abril/wp-content/uploads/2016/02/img-6.jpeg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2016-02-29 00:04:52', '2016-02-29 03:04:52', '', 'img-7', '', 'inherit', 'open', 'closed', '', 'img-7', '', '', '2016-02-29 00:04:52', '2016-02-29 03:04:52', '', 8, 'http://jobs.ramon82.com/abril/wp-content/uploads/2016/02/img-7.jpeg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2016-02-29 00:05:06', '2016-02-29 03:05:06', '', 'img-8', '', 'inherit', 'open', 'closed', '', 'img-8', '', '', '2016-02-29 00:05:06', '2016-02-29 03:05:06', '', 7, 'http://jobs.ramon82.com/abril/wp-content/uploads/2016/02/img-8.jpeg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2016-02-29 00:05:59', '2016-02-29 03:05:59', '', 'BMW Série 2 active tourer', 'Pista livre para o embate entre os dois cometas de cauda curta', 'inherit', 'closed', 'closed', '', '8-autosave-v1', '', '', '2016-02-29 00:05:59', '2016-02-29 03:05:59', '', 8, 'http://jobs.ramon82.com/abril/8-autosave-v1/', 0, 'revision', '', 0),
(20, 1, '2016-02-29 01:41:14', '2016-02-29 04:41:14', '', 'Carros', '', 'publish', 'closed', 'closed', '', 'carros', '', '', '2016-02-29 01:54:42', '2016-02-29 04:54:42', '', 0, 'http://jobs.ramon82.com/abril/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2016-02-29 01:41:14', '2016-02-29 04:41:14', '', 'Testes', '', 'publish', 'closed', 'closed', '', 'testes', '', '', '2016-02-29 01:54:42', '2016-02-29 04:54:42', '', 0, 'http://jobs.ramon82.com/abril/?p=21', 4, 'nav_menu_item', '', 0),
(22, 1, '2016-02-29 01:41:14', '2016-02-29 04:41:14', '', 'Notícias', '', 'publish', 'closed', 'closed', '', 'noticias', '', '', '2016-02-29 01:54:42', '2016-02-29 04:54:42', '', 0, 'http://jobs.ramon82.com/abril/?p=22', 5, 'nav_menu_item', '', 0),
(23, 1, '2016-02-29 01:41:14', '2016-02-29 04:41:14', '', 'Auto-Serviço', '', 'publish', 'closed', 'closed', '', 'auto-servico', '', '', '2016-02-29 01:54:42', '2016-02-29 04:54:42', '', 0, 'http://jobs.ramon82.com/abril/?p=23', 6, 'nav_menu_item', '', 0),
(24, 1, '2016-02-29 01:41:14', '2016-02-29 04:41:14', '', 'Guia de Compras', '', 'publish', 'closed', 'closed', '', 'guia-de-compras', '', '', '2016-02-29 01:54:42', '2016-02-29 04:54:42', '', 0, 'http://jobs.ramon82.com/abril/?p=24', 7, 'nav_menu_item', '', 0),
(25, 1, '2016-02-29 01:41:14', '2016-02-29 04:41:14', '', 'Tabela Fipe', '', 'publish', 'closed', 'closed', '', 'tabela-fipe', '', '', '2016-02-29 01:54:42', '2016-02-29 04:54:42', '', 0, 'http://jobs.ramon82.com/abril/?p=25', 8, 'nav_menu_item', '', 0),
(26, 1, '2016-02-29 01:41:14', '2016-02-29 04:41:14', '', 'Assine', '', 'publish', 'closed', 'closed', '', 'assine', '', '', '2016-02-29 01:54:42', '2016-02-29 04:54:42', '', 0, 'http://jobs.ramon82.com/abril/?p=26', 9, 'nav_menu_item', '', 0),
(27, 1, '2016-02-29 01:54:42', '2016-02-29 04:54:42', '', 'Audi', '', 'publish', 'closed', 'closed', '', 'audi', '', '', '2016-02-29 01:54:42', '2016-02-29 04:54:42', '', 0, 'http://jobs.ramon82.com/abril/?p=27', 2, 'nav_menu_item', '', 0),
(28, 1, '2016-02-29 01:54:42', '2016-02-29 04:54:42', '', 'Bentley', '', 'publish', 'closed', 'closed', '', 'bentley', '', '', '2016-02-29 01:54:42', '2016-02-29 04:54:42', '', 0, 'http://jobs.ramon82.com/abril/?p=28', 3, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_sml`
--

CREATE TABLE IF NOT EXISTS `wp_sml` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `sml_name` varchar(200) NOT NULL,
  `sml_email` varchar(200) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Carros Grandes', 'carros-grandes', 0),
(2, 'Fabricantes', 'fabricantes', 0),
(3, 'Promovido por: Volkswagen', 'promovido-por-volkswagen', 0),
(4, 'Comparativos', 'comparativos', 0),
(5, 'Impressões', 'impressoes', 0),
(6, 'Auto-Serviço', 'auto-servico', 0),
(7, 'Menu Principal', 'menu-principal', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(3, 1, 0),
(6, 3, 0),
(7, 6, 0),
(8, 5, 0),
(9, 5, 0),
(20, 7, 0),
(21, 7, 0),
(22, 7, 0),
(23, 7, 0),
(24, 7, 0),
(25, 7, 0),
(26, 7, 0),
(27, 7, 0),
(28, 7, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'categoria', '', 0, 1),
(2, 2, 'categoria', '', 0, 0),
(3, 3, 'categoria', '', 0, 1),
(4, 4, 'categoria', '', 0, 0),
(5, 5, 'categoria', '', 0, 2),
(6, 6, 'categoria', '', 0, 1),
(7, 7, 'nav_menu', '', 0, 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=38 ;

--
-- Extraindo dados da tabela `wp_usermeta`
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
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '0'),
(14, 1, 'session_tokens', 'a:1:{s:64:"d62acdc8f63731d6bda19936a0f70a51a03eff35bdeee6cc9df524e9cc22d8b7";a:4:{s:10:"expiration";i:1456885376;s:2:"ip";s:15:"189.120.133.202";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36";s:5:"login";i:1456712576;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '1'),
(16, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:9:{i:0;s:8:"add-post";i:1;s:10:"add-artigo";i:2;s:11:"add-noticia";i:3;s:8:"add-case";i:4;s:11:"add-servico";i:5;s:11:"add-produto";i:6;s:11:"add-cliente";i:7;s:12:"add-parceiro";i:8;s:12:"add-post_tag";}'),
(18, 1, 'closedpostboxes_page', 'a:0:{}'),
(19, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:"postcustom";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}'),
(20, 1, 'meta-box-order_dashboard', 'a:4:{s:6:"normal";s:37:"dashboard_right_now,dashboard_primary";s:4:"side";s:40:"dashboard_quick_press,dashboard_activity";s:7:"column3";s:0:"";s:7:"column4";s:0:"";}'),
(21, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(22, 1, 'metaboxhidden_dashboard', 'a:2:{i:0;s:17:"dashboard_primary";i:1;s:21:"dashboard_quick_press";}'),
(23, 1, 'nav_menu_recently_edited', '7'),
(24, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse'),
(25, 1, 'wp_user-settings-time', '1440967385'),
(26, 1, 'meta-box-order_page', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:23:"submitdiv,pageparentdiv";s:6:"normal";s:101:"postcustom,acf_82,commentstatusdiv,commentsdiv,slugdiv,authordiv,postimagediv,gg_gallery,revisionsdiv";s:8:"advanced";s:0:"";}'),
(27, 1, 'screen_layout_page', '2'),
(28, 1, 'meta-box-order_produto', 'a:4:{s:15:"acf_after_title";s:6:"acf_82";s:4:"side";s:22:"submitdiv,postimagediv";s:6:"normal";s:19:"postexcerpt,slugdiv";s:8:"advanced";s:0:"";}'),
(29, 1, 'screen_layout_produto', '2'),
(30, 1, 'meta-box-order_case', 'a:4:{s:15:"acf_after_title";s:6:"acf_82";s:4:"side";s:22:"submitdiv,postimagediv";s:6:"normal";s:27:"acf_114,postexcerpt,slugdiv";s:8:"advanced";s:0:"";}'),
(31, 1, 'screen_layout_case', '2'),
(32, 1, 'closedpostboxes_case', 'a:0:{}'),
(33, 1, 'metaboxhidden_case', 'a:2:{i:0;s:11:"postexcerpt";i:1;s:7:"slugdiv";}'),
(34, 1, 'meta-box-order_noticia', 'a:3:{s:4:"side";s:35:"submitdiv,categoriadiv,postimagediv";s:6:"normal";s:19:"postexcerpt,slugdiv";s:8:"advanced";s:0:"";}'),
(35, 1, 'screen_layout_noticia', '2'),
(36, 1, 'closedpostboxes_noticia', 'a:0:{}'),
(37, 1, 'metaboxhidden_noticia', 'a:1:{i:0;s:7:"slugdiv";}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '', 'admin', 'me@ramon82.com', '', '2015-08-16 06:36:42', '', 0, 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
