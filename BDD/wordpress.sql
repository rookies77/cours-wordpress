-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 11 juin 2020 à 17:10
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `wordpress`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-02-04 10:08:54', '2020-02-04 09:08:54', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 23, 'arnaud', 'arnaud.malfait@hotmail.fr', '', '::1', '2020-02-04 14:52:01', '2020-02-04 13:52:01', 'salut je fais un test des commentaires', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=MyISAM AUTO_INCREMENT=318 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Le Site Info', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'arnaud.malfait@hotmail.fr', 'yes'),
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
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=50&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:31:\"easy-fancybox/easy-fancybox.php\";i:2;s:23:\"ml-slider/ml-slider.php\";i:3;s:47:\"show-current-template/show-current-template.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:69:\"C:\\wamp64\\www\\wordpress/wp-content/themes/minimalistblogger/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'minimalistblogger', 'yes'),
(41, 'stylesheet', 'minimalistblogger-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:\"title\";s:20:\"À propos de ce site\";s:4:\"text\";s:99:\"C’est peut-être le bon endroit pour vous présenter et votre site ou insérer quelques crédits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:14:\"Retrouvez-nous\";s:4:\"text\";s:189:\"<strong>Adresse</strong>\nAvenue des Champs-Élysées\n75008, Paris\n\n<strong>Heures d’ouverture</strong>\nDu lundi au vendredi : 9h00&ndash;17h00\nLes samedi et dimanche : 11h00&ndash;15h00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:0:\"\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:6;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:48:\"<a href=\"https://google.fr\">Lien vers Google</a>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '54', 'yes'),
(84, 'page_on_front', '50', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '16', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1596359334', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'fr_FR', 'yes'),
(98, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:9:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";}s:9:\"sidebar-1\";a:1:{i:0;s:15:\"media_gallery-2\";}s:14:\"footerwidget-1\";a:1:{i:0;s:6:\"text-5\";}s:14:\"footerwidget-2\";a:1:{i:0;s:10:\"nav_menu-2\";}s:14:\"footerwidget-3\";a:1:{i:0;s:6:\"text-6\";}s:14:\"headerwidget-1\";a:0:{}s:14:\"headerwidget-2\";a:0:{}s:14:\"headerwidget-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:6:{i:1587136135;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1587157735;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1587200934;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587201139;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587201140;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:2:{i:2;a:6:{s:5:\"title\";s:21:\"Nos idées de sorties\";s:3:\"ids\";a:3:{i:0;i:19;i:1;i:20;i:2;i:21;}s:7:\"columns\";i:3;s:4:\"size\";s:9:\"thumbnail\";s:9:\"link_type\";s:4:\"file\";s:14:\"orderby_random\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:2:{i:2;a:1:{s:8:\"nav_menu\";i:10;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1580807864;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(314, '_site_transient_timeout_browser_7882d5a5641293bd72253bfbda0286f6', '1587737651', 'no'),
(315, '_site_transient_browser_7882d5a5641293bd72253bfbda0286f6', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"80.0.3987.163\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(316, '_site_transient_timeout_php_check_7ddb89c02f1abf791c6717dc46cef1eb', '1587737651', 'no'),
(317, '_site_transient_php_check_7ddb89c02f1abf791c6717dc46cef1eb', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(204, 'easy_fancybox_version', '1.8.18', 'yes'),
(210, 'ms_hide_all_ads_until', '1582037879', 'yes'),
(211, 'metaslider_systemcheck', 'a:2:{s:16:\"wordPressVersion\";b:0;s:12:\"imageLibrary\";b:0;}', 'no'),
(212, 'ml-slider_children', 'a:0:{}', 'yes'),
(213, 'metaslider_tour_cancelled_on', 'add-image', 'yes'),
(230, 'theme_mods_minimalistblogger-child', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:9;}}', 'yes'),
(133, 'can_compress_scripts', '1', 'no'),
(310, '_site_transient_timeout_theme_roots', '1587134646', 'no'),
(311, '_site_transient_theme_roots', 'a:5:{s:23:\"minimalistblogger-child\";s:7:\"/themes\";s:17:\"minimalistblogger\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(272, 'ms_ads_first_seen_on', '1586422243', 'yes'),
(312, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1587132847;s:7:\"checked\";a:5:{s:23:\"minimalistblogger-child\";s:0:\"\";s:17:\"minimalistblogger\";s:3:\"2.3\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:4:{s:17:\"minimalistblogger\";a:6:{s:5:\"theme\";s:17:\"minimalistblogger\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:47:\"https://wordpress.org/themes/minimalistblogger/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/minimalistblogger.2.5.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.5.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.3.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.2.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(313, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1587132848;s:7:\"checked\";a:6:{s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.6\";s:31:\"easy-fancybox/easy-fancybox.php\";s:6:\"1.8.18\";s:9:\"hello.php\";s:5:\"1.7.2\";s:23:\"ml-slider/ml-slider.php\";s:6:\"3.15.3\";s:47:\"show-current-template/show-current-template.php\";s:5:\"0.3.3\";}s:8:\"response\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.4\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=2279696\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.4\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:23:\"ml-slider/ml-slider.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:23:\"w.org/plugins/ml-slider\";s:4:\"slug\";s:9:\"ml-slider\";s:6:\"plugin\";s:23:\"ml-slider/ml-slider.php\";s:11:\"new_version\";s:6:\"3.16.4\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/ml-slider/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/ml-slider.3.16.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:62:\"https://ps.w.org/ml-slider/assets/icon-256x256.png?rev=1837669\";s:2:\"1x\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669\";s:3:\"svg\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=1837669\";s:2:\"1x\";s:64:\"https://ps.w.org/ml-slider/assets/banner-772x250.png?rev=1837669\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.4\";s:12:\"requires_php\";s:3:\"5.2\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:31:\"easy-fancybox/easy-fancybox.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/easy-fancybox\";s:4:\"slug\";s:13:\"easy-fancybox\";s:6:\"plugin\";s:31:\"easy-fancybox/easy-fancybox.php\";s:11:\"new_version\";s:6:\"1.8.18\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/easy-fancybox/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/easy-fancybox.1.8.18.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/easy-fancybox/assets/icon-128x128.png?rev=1112136\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/easy-fancybox/assets/banner-772x250.jpg?rev=1112136\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"show-current-template/show-current-template.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/show-current-template\";s:4:\"slug\";s:21:\"show-current-template\";s:6:\"plugin\";s:47:\"show-current-template/show-current-template.php\";s:11:\"new_version\";s:5:\"0.3.3\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/show-current-template/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/show-current-template.0.3.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:73:\"https://ps.w.org/show-current-template/assets/icon-256x256.png?rev=976031\";s:2:\"1x\";s:65:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031\";s:3:\"svg\";s:65:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(279, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.4.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.4\";s:7:\"version\";s:3:\"5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.4-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.4\";s:7:\"version\";s:3:\"5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.4.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.4\";s:7:\"version\";s:3:\"5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1587132844;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(146, 'current_theme', 'minimalistblogger-child', 'yes'),
(147, 'theme_mods_twentyseventeen', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1580808061;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(148, 'theme_switched', '', 'yes'),
(152, 'theme_mods_minimalistblogger', 'a:7:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:9;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:15;s:12:\"header_image\";s:84:\"http://localhost/wordpress/wp-content/uploads/2020/02/Seul-sur-Mars_large-scaled.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:17;s:3:\"url\";s:84:\"http://localhost/wordpress/wp-content/uploads/2020/02/Seul-sur-Mars_large-scaled.jpg\";s:13:\"thumbnail_url\";s:84:\"http://localhost/wordpress/wp-content/uploads/2020/02/Seul-sur-Mars_large-scaled.jpg\";s:6:\"height\";i:1323;s:5:\"width\";i:2560;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1580891925;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";}s:9:\"sidebar-1\";a:1:{i:0;s:15:\"media_gallery-2\";}s:14:\"footerwidget-1\";a:1:{i:0;s:6:\"text-5\";}s:14:\"footerwidget-2\";a:1:{i:0;s:10:\"nav_menu-2\";}s:14:\"footerwidget-3\";a:1:{i:0;s:6:\"text-6\";}s:14:\"headerwidget-1\";a:0:{}s:14:\"headerwidget-2\";a:0:{}s:14:\"headerwidget-3\";a:0:{}}}}', 'yes'),
(162, 'category_children', 'a:2:{i:2;a:2:{i:0;i:3;i:1;i:4;}i:5;a:2:{i:0;i:6;i:1;i:7;}}', 'yes'),
(180, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(195, 'recently_activated', 'a:0:{}', 'yes'),
(221, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.6\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1580833236;s:7:\"version\";s:5:\"5.1.6\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(209, 'widget_metaslider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(239, 'recovery_mode_email_last_sent', '1580894282', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(25, 15, '_wp_attached_file', '2020/02/cropped-logo.png'),
(26, 15, '_wp_attachment_context', 'custom-logo'),
(27, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:411;s:6:\"height\";i:123;s:4:\"file\";s:24:\"2020/02/cropped-logo.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"cropped-logo-300x90.png\";s:5:\"width\";i:300;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-logo-150x123.png\";s:5:\"width\";i:150;s:6:\"height\";i:123;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:23:\"cropped-logo-300x90.png\";s:5:\"width\";i:300;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:22:\"minimalistblogger-grid\";a:4:{s:4:\"file\";s:24:\"cropped-logo-350x123.png\";s:5:\"width\";i:350;s:6:\"height\";i:123;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"minimalistblogger-small\";a:4:{s:4:\"file\";s:24:\"cropped-logo-300x123.png\";s:5:\"width\";i:300;s:6:\"height\";i:123;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 12, '_wp_attached_file', '2020/02/cropped-Berger-Australien-_7.jpg'),
(20, 12, '_wp_attachment_context', 'custom-logo'),
(21, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:502;s:6:\"height\";i:502;s:4:\"file\";s:40:\"2020/02/cropped-Berger-Australien-_7.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"cropped-Berger-Australien-_7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"cropped-Berger-Australien-_7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:40:\"cropped-Berger-Australien-_7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"minimalistblogger-grid\";a:4:{s:4:\"file\";s:40:\"cropped-Berger-Australien-_7-350x230.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"minimalistblogger-small\";a:4:{s:4:\"file\";s:40:\"cropped-Berger-Australien-_7-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 16, '_wp_attached_file', '2020/02/cropped-logo-1.png'),
(23, 14, '_wp_attached_file', '2020/02/logo.png'),
(24, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:411;s:6:\"height\";i:123;s:4:\"file\";s:16:\"2020/02/logo.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"logo-300x90.png\";s:5:\"width\";i:300;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x123.png\";s:5:\"width\";i:150;s:6:\"height\";i:123;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-300x90.png\";s:5:\"width\";i:300;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:22:\"minimalistblogger-grid\";a:4:{s:4:\"file\";s:16:\"logo-350x123.png\";s:5:\"width\";i:350;s:6:\"height\";i:123;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"minimalistblogger-small\";a:4:{s:4:\"file\";s:16:\"logo-300x123.png\";s:5:\"width\";i:300;s:6:\"height\";i:123;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(29, 16, '_wp_attachment_context', 'site-icon'),
(30, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:26:\"2020/02/cropped-logo-1.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:22:\"minimalistblogger-grid\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-350x230.png\";s:5:\"width\";i:350;s:6:\"height\";i:230;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"minimalistblogger-small\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-300x180.png\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:24:\"cropped-logo-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 17, '_wp_attached_file', '2020/02/Seul-sur-Mars_large-scaled.jpg'),
(33, 17, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1323;s:4:\"file\";s:38:\"2020/02/Seul-sur-Mars_large-scaled.jpg\";s:5:\"sizes\";a:13:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Seul-sur-Mars_large-300x155.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:155;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"Seul-sur-Mars_large-1024x529.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:529;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Seul-sur-Mars_large-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"Seul-sur-Mars_large-768x397.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:397;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:32:\"Seul-sur-Mars_large-1536x794.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:794;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:33:\"Seul-sur-Mars_large-2048x1058.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1058;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:31:\"Seul-sur-Mars_large-300x155.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:155;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"minimalistblogger-grid\";a:4:{s:4:\"file\";s:31:\"Seul-sur-Mars_large-350x230.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"minimalistblogger-slider\";a:4:{s:4:\"file\";s:31:\"Seul-sur-Mars_large-850x439.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:439;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"minimalistblogger-small\";a:4:{s:4:\"file\";s:31:\"Seul-sur-Mars_large-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:38:\"Seul-sur-Mars_large-scaled-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x266\";a:4:{s:4:\"file\";s:38:\"Seul-sur-Mars_large-scaled-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x171\";a:4:{s:4:\"file\";s:38:\"Seul-sur-Mars_large-scaled-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1432297161\";s:9:\"copyright\";s:108:\"TM &amp; © 2015 Twentieth Century Fox Film Corporation.  All rights reserved.  Not for sale or duplication.\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:11:\"THE MARTIAN\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:23:\"Seul-sur-Mars_large.jpg\";}'),
(34, 17, '_wp_attachment_custom_header_last_used_minimalistblogger', '1580810559'),
(35, 17, '_wp_attachment_is_custom_header', 'minimalistblogger'),
(41, 19, '_wp_attached_file', '2020/02/plage_large.jpg'),
(42, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:668;s:4:\"file\";s:23:\"2020/02/plage_large.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"plage_large-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"plage_large-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"plage_large-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:23:\"plage_large-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"minimalistblogger-grid\";a:4:{s:4:\"file\";s:23:\"plage_large-350x230.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"minimalistblogger-slider\";a:4:{s:4:\"file\";s:23:\"plage_large-850x568.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:568;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"minimalistblogger-small\";a:4:{s:4:\"file\";s:23:\"plage_large-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:23:\"plage_large-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x266\";a:4:{s:4:\"file\";s:23:\"plage_large-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x171\";a:4:{s:4:\"file\";s:23:\"plage_large-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 20, '_wp_attached_file', '2020/02/toscane1_large.jpg'),
(44, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:666;s:4:\"file\";s:26:\"2020/02/toscane1_large.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"toscane1_large-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"toscane1_large-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"toscane1_large-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:26:\"toscane1_large-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"minimalistblogger-grid\";a:4:{s:4:\"file\";s:26:\"toscane1_large-350x230.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"minimalistblogger-slider\";a:4:{s:4:\"file\";s:26:\"toscane1_large-850x566.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:566;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"minimalistblogger-small\";a:4:{s:4:\"file\";s:26:\"toscane1_large-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:26:\"toscane1_large-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x266\";a:4:{s:4:\"file\";s:26:\"toscane1_large-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x171\";a:4:{s:4:\"file\";s:26:\"toscane1_large-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(45, 21, '_wp_attached_file', '2020/02/toscane2_large.jpg'),
(46, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:666;s:4:\"file\";s:26:\"2020/02/toscane2_large.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"toscane2_large-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"toscane2_large-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"toscane2_large-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:26:\"toscane2_large-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"minimalistblogger-grid\";a:4:{s:4:\"file\";s:26:\"toscane2_large-350x230.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"minimalistblogger-slider\";a:4:{s:4:\"file\";s:26:\"toscane2_large-850x566.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:566;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"minimalistblogger-small\";a:4:{s:4:\"file\";s:26:\"toscane2_large-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:26:\"toscane2_large-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x266\";a:4:{s:4:\"file\";s:26:\"toscane2_large-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x171\";a:4:{s:4:\"file\";s:26:\"toscane2_large-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 1, '_edit_lock', '1580813666:1'),
(50, 23, '_edit_lock', '1587133521:1'),
(51, 24, '_wp_attached_file', '2020/02/Seul-sur-Mars_affiche.jpg'),
(52, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:2180;s:4:\"file\";s:33:\"2020/02/Seul-sur-Mars_affiche.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"Seul-sur-Mars_affiche-193x300.jpg\";s:5:\"width\";i:193;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"Seul-sur-Mars_affiche-658x1024.jpg\";s:5:\"width\";i:658;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"Seul-sur-Mars_affiche-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"Seul-sur-Mars_affiche-768x1196.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1196;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:34:\"Seul-sur-Mars_affiche-986x1536.jpg\";s:5:\"width\";i:986;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:35:\"Seul-sur-Mars_affiche-1315x2048.jpg\";s:5:\"width\";i:1315;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:33:\"Seul-sur-Mars_affiche-300x467.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:467;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"minimalistblogger-grid\";a:4:{s:4:\"file\";s:33:\"Seul-sur-Mars_affiche-350x230.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"minimalistblogger-slider\";a:4:{s:4:\"file\";s:34:\"Seul-sur-Mars_affiche-850x1324.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:1324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"minimalistblogger-small\";a:4:{s:4:\"file\";s:33:\"Seul-sur-Mars_affiche-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(72, 34, '_edit_lock', '1587133517:1'),
(57, 23, '_thumbnail_id', '17'),
(73, 35, '_wp_attached_file', '2020/02/2015-lacblanc-8070083-1024x768-1.jpg'),
(74, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:44:\"2020/02/2015-lacblanc-8070083-1024x768-1.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"2015-lacblanc-8070083-1024x768-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"2015-lacblanc-8070083-1024x768-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"2015-lacblanc-8070083-1024x768-1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:44:\"2015-lacblanc-8070083-1024x768-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"minimalistblogger-grid\";a:4:{s:4:\"file\";s:44:\"2015-lacblanc-8070083-1024x768-1-350x230.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"minimalistblogger-slider\";a:4:{s:4:\"file\";s:44:\"2015-lacblanc-8070083-1024x768-1-850x638.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:638;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"minimalistblogger-small\";a:4:{s:4:\"file\";s:44:\"2015-lacblanc-8070083-1024x768-1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(186, 57, '_menu_item_target', ''),
(81, 34, '_thumbnail_id', '35'),
(187, 57, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(185, 57, '_menu_item_object', 'page'),
(184, 57, '_menu_item_object_id', '54'),
(183, 57, '_menu_item_menu_item_parent', '0'),
(182, 57, '_menu_item_type', 'post_type'),
(105, 42, '_menu_item_menu_item_parent', '0'),
(179, 54, '_edit_lock', '1580983269:1'),
(176, 50, '_edit_lock', '1587133636:1'),
(104, 42, '_menu_item_type', 'custom'),
(106, 42, '_menu_item_object_id', '42'),
(107, 42, '_menu_item_object', 'custom'),
(108, 42, '_menu_item_target', ''),
(109, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(110, 42, '_menu_item_xfn', ''),
(111, 42, '_menu_item_url', 'http://localhost/wordpress/'),
(195, 62, '_menu_item_object_id', '58'),
(113, 43, '_menu_item_type', 'taxonomy'),
(114, 43, '_menu_item_menu_item_parent', '0'),
(115, 43, '_menu_item_object_id', '2'),
(116, 43, '_menu_item_object', 'category'),
(117, 43, '_menu_item_target', ''),
(118, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(119, 43, '_menu_item_xfn', ''),
(120, 43, '_menu_item_url', ''),
(194, 62, '_menu_item_menu_item_parent', '0'),
(122, 44, '_menu_item_type', 'taxonomy'),
(123, 44, '_menu_item_menu_item_parent', '43'),
(124, 44, '_menu_item_object_id', '4'),
(125, 44, '_menu_item_object', 'category'),
(126, 44, '_menu_item_target', ''),
(127, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(128, 44, '_menu_item_xfn', ''),
(129, 44, '_menu_item_url', ''),
(193, 62, '_menu_item_type', 'post_type'),
(131, 45, '_menu_item_type', 'taxonomy'),
(132, 45, '_menu_item_menu_item_parent', '43'),
(133, 45, '_menu_item_object_id', '3'),
(134, 45, '_menu_item_object', 'category'),
(135, 45, '_menu_item_target', ''),
(136, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(137, 45, '_menu_item_xfn', ''),
(138, 45, '_menu_item_url', ''),
(192, 60, '_edit_lock', '1580822924:1'),
(140, 46, '_menu_item_type', 'taxonomy'),
(141, 46, '_menu_item_menu_item_parent', '43'),
(142, 46, '_menu_item_object_id', '1'),
(143, 46, '_menu_item_object', 'category'),
(144, 46, '_menu_item_target', ''),
(145, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(146, 46, '_menu_item_xfn', ''),
(147, 46, '_menu_item_url', ''),
(191, 58, '_edit_lock', '1580822892:1'),
(149, 47, '_menu_item_type', 'taxonomy'),
(150, 47, '_menu_item_menu_item_parent', '0'),
(151, 47, '_menu_item_object_id', '5'),
(152, 47, '_menu_item_object', 'category'),
(153, 47, '_menu_item_target', ''),
(154, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(155, 47, '_menu_item_xfn', ''),
(156, 47, '_menu_item_url', ''),
(189, 57, '_menu_item_url', ''),
(158, 48, '_menu_item_type', 'taxonomy'),
(159, 48, '_menu_item_menu_item_parent', '47'),
(160, 48, '_menu_item_object_id', '7'),
(161, 48, '_menu_item_object', 'category'),
(162, 48, '_menu_item_target', ''),
(163, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(164, 48, '_menu_item_xfn', ''),
(165, 48, '_menu_item_url', ''),
(188, 57, '_menu_item_xfn', ''),
(167, 49, '_menu_item_type', 'taxonomy'),
(168, 49, '_menu_item_menu_item_parent', '47'),
(169, 49, '_menu_item_object_id', '6'),
(170, 49, '_menu_item_object', 'category'),
(171, 49, '_menu_item_target', ''),
(172, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(173, 49, '_menu_item_xfn', ''),
(174, 49, '_menu_item_url', ''),
(196, 62, '_menu_item_object', 'page'),
(197, 62, '_menu_item_target', ''),
(198, 62, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(199, 62, '_menu_item_xfn', ''),
(200, 62, '_menu_item_url', ''),
(201, 62, '_menu_item_orphaned', '1580823126'),
(202, 63, '_menu_item_type', 'post_type'),
(203, 63, '_menu_item_menu_item_parent', '0'),
(204, 63, '_menu_item_object_id', '58'),
(205, 63, '_menu_item_object', 'page'),
(206, 63, '_menu_item_target', ''),
(207, 63, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(208, 63, '_menu_item_xfn', ''),
(209, 63, '_menu_item_url', ''),
(211, 64, '_menu_item_type', 'post_type'),
(212, 64, '_menu_item_menu_item_parent', '0'),
(213, 64, '_menu_item_object_id', '60'),
(214, 64, '_menu_item_object', 'page'),
(215, 64, '_menu_item_target', ''),
(216, 64, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(217, 64, '_menu_item_xfn', ''),
(218, 64, '_menu_item_url', ''),
(219, 64, '_menu_item_orphaned', '1580823445'),
(220, 65, '_menu_item_type', 'post_type'),
(221, 65, '_menu_item_menu_item_parent', '0'),
(222, 65, '_menu_item_object_id', '60'),
(223, 65, '_menu_item_object', 'page'),
(224, 65, '_menu_item_target', ''),
(225, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(226, 65, '_menu_item_xfn', ''),
(227, 65, '_menu_item_url', ''),
(228, 65, '_menu_item_orphaned', '1580823459'),
(229, 66, '_menu_item_type', 'post_type'),
(230, 66, '_menu_item_menu_item_parent', '0'),
(231, 66, '_menu_item_object_id', '60'),
(232, 66, '_menu_item_object', 'page'),
(233, 66, '_menu_item_target', ''),
(234, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(235, 66, '_menu_item_xfn', ''),
(236, 66, '_menu_item_url', ''),
(238, 3, '_edit_lock', '1580827058:1'),
(239, 67, 'ml-slider_settings', 'a:38:{s:4:\"type\";s:4:\"flex\";s:6:\"random\";s:5:\"false\";s:8:\"cssClass\";s:0:\"\";s:8:\"printCss\";s:4:\"true\";s:7:\"printJs\";s:4:\"true\";s:5:\"width\";s:3:\"700\";s:6:\"height\";s:3:\"300\";s:3:\"spw\";i:7;s:3:\"sph\";i:5;s:5:\"delay\";s:4:\"3000\";s:6:\"sDelay\";i:30;s:7:\"opacity\";d:0.7;s:10:\"titleSpeed\";i:500;s:6:\"effect\";s:4:\"fade\";s:10:\"navigation\";s:4:\"true\";s:5:\"links\";s:4:\"true\";s:10:\"hoverPause\";s:4:\"true\";s:5:\"theme\";s:7:\"default\";s:9:\"direction\";s:10:\"horizontal\";s:7:\"reverse\";s:5:\"false\";s:14:\"animationSpeed\";s:3:\"600\";s:8:\"prevText\";s:8:\"Previous\";s:8:\"nextText\";s:4:\"Next\";s:6:\"slices\";i:15;s:6:\"center\";s:5:\"false\";s:9:\"smartCrop\";s:4:\"true\";s:12:\"carouselMode\";s:5:\"false\";s:14:\"carouselMargin\";s:1:\"5\";s:16:\"firstSlideFadeIn\";s:5:\"false\";s:6:\"easing\";s:6:\"linear\";s:8:\"autoPlay\";s:4:\"true\";s:11:\"thumb_width\";i:150;s:12:\"thumb_height\";i:100;s:17:\"responsive_thumbs\";s:5:\"false\";s:15:\"thumb_min_width\";i:100;s:9:\"fullWidth\";s:4:\"true\";s:10:\"noConflict\";s:4:\"true\";s:12:\"smoothHeight\";s:5:\"false\";}'),
(240, 67, 'metaslider_slideshow_theme', ''),
(241, 17, '_wp_attachment_image_alt', 'SLIDER'),
(242, 68, '_thumbnail_id', '21'),
(243, 68, 'ml-slider_type', 'image'),
(244, 68, 'ml-slider_inherit_image_title', '1'),
(245, 68, 'ml-slider_inherit_image_alt', '1'),
(246, 69, '_thumbnail_id', '19'),
(247, 69, 'ml-slider_type', 'image'),
(248, 69, 'ml-slider_inherit_image_title', '1'),
(249, 69, 'ml-slider_inherit_image_alt', '1'),
(250, 70, '_thumbnail_id', '20'),
(251, 70, 'ml-slider_type', 'image'),
(252, 70, 'ml-slider_inherit_image_title', '1'),
(253, 70, 'ml-slider_inherit_image_alt', '1'),
(254, 71, '_thumbnail_id', '17'),
(255, 71, 'ml-slider_type', 'image'),
(256, 71, 'ml-slider_inherit_image_title', '1'),
(257, 71, 'ml-slider_inherit_image_alt', '1'),
(258, 68, 'ml-slider_crop_position', 'center-center'),
(259, 68, 'ml-slider_caption_source', 'image-caption'),
(260, 68, '_wp_attachment_image_alt', ''),
(261, 69, 'ml-slider_crop_position', 'center-center'),
(262, 69, 'ml-slider_caption_source', 'image-caption'),
(263, 69, '_wp_attachment_image_alt', ''),
(264, 70, 'ml-slider_crop_position', 'center-center'),
(265, 70, 'ml-slider_caption_source', 'image-caption'),
(266, 70, '_wp_attachment_image_alt', ''),
(267, 71, 'ml-slider_crop_position', 'center-center'),
(268, 71, 'ml-slider_caption_source', 'image-caption'),
(269, 71, '_wp_attachment_image_alt', ''),
(270, 21, '_wp_attachment_backup_sizes', 'a:3:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:74:\"C:wamp64wwwwordpress/wp-content/uploads/2020/02/toscane2_large-700x300.jpg\";s:4:\"file\";s:26:\"toscane2_large-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x266\";a:5:{s:4:\"path\";s:74:\"C:wamp64wwwwordpress/wp-content/uploads/2020/02/toscane2_large-620x266.jpg\";s:4:\"file\";s:26:\"toscane2_large-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x171\";a:5:{s:4:\"path\";s:74:\"C:wamp64wwwwordpress/wp-content/uploads/2020/02/toscane2_large-400x171.jpg\";s:4:\"file\";s:26:\"toscane2_large-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(271, 19, '_wp_attachment_backup_sizes', 'a:3:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:71:\"C:wamp64wwwwordpress/wp-content/uploads/2020/02/plage_large-700x300.jpg\";s:4:\"file\";s:23:\"plage_large-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x266\";a:5:{s:4:\"path\";s:71:\"C:wamp64wwwwordpress/wp-content/uploads/2020/02/plage_large-620x266.jpg\";s:4:\"file\";s:23:\"plage_large-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x171\";a:5:{s:4:\"path\";s:71:\"C:wamp64wwwwordpress/wp-content/uploads/2020/02/plage_large-400x171.jpg\";s:4:\"file\";s:23:\"plage_large-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(272, 20, '_wp_attachment_backup_sizes', 'a:3:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:74:\"C:wamp64wwwwordpress/wp-content/uploads/2020/02/toscane1_large-700x300.jpg\";s:4:\"file\";s:26:\"toscane1_large-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x266\";a:5:{s:4:\"path\";s:74:\"C:wamp64wwwwordpress/wp-content/uploads/2020/02/toscane1_large-620x266.jpg\";s:4:\"file\";s:26:\"toscane1_large-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x171\";a:5:{s:4:\"path\";s:74:\"C:wamp64wwwwordpress/wp-content/uploads/2020/02/toscane1_large-400x171.jpg\";s:4:\"file\";s:26:\"toscane1_large-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(273, 17, '_wp_attachment_backup_sizes', 'a:3:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:86:\"C:wamp64wwwwordpress/wp-content/uploads/2020/02/Seul-sur-Mars_large-scaled-700x300.jpg\";s:4:\"file\";s:38:\"Seul-sur-Mars_large-scaled-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x266\";a:5:{s:4:\"path\";s:86:\"C:wamp64wwwwordpress/wp-content/uploads/2020/02/Seul-sur-Mars_large-scaled-620x266.jpg\";s:4:\"file\";s:38:\"Seul-sur-Mars_large-scaled-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x171\";a:5:{s:4:\"path\";s:86:\"C:wamp64wwwwordpress/wp-content/uploads/2020/02/Seul-sur-Mars_large-scaled-400x171.jpg\";s:4:\"file\";s:38:\"Seul-sur-Mars_large-scaled-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(274, 76, '_edit_lock', '1580829935:1'),
(300, 2, '_edit_lock', '1580983283:1'),
(284, 79, '_menu_item_type', 'post_type'),
(285, 79, '_menu_item_menu_item_parent', '0'),
(286, 79, '_menu_item_object_id', '76'),
(287, 79, '_menu_item_object', 'page'),
(288, 79, '_menu_item_target', ''),
(289, 79, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(290, 79, '_menu_item_xfn', ''),
(291, 79, '_menu_item_url', ''),
(293, 80, '_form', '<label> Votre nom (obligatoire)\n    [text* Votre Nom] </label>\n\n<label> Votre adresse de messagerie (obligatoire)\n    [email* Votre Email] </label>\n\n<label> Objet\n    [text Le sujet] </label>\n\n<label> Votre message\n    [textarea Votre Message] </label>\n\n[submit \"Envoyer\"]'),
(294, 80, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:29:\"Le Site Info \"[your-subject]\"\";s:6:\"sender\";s:40:\"Le Site Info <arnaud.malfait@hotmail.fr>\";s:9:\"recipient\";s:25:\"arnaud.malfait@hotmail.fr\";s:4:\"body\";s:198:\"De : [your-name] <[your-email]>\nObjet : [your-subject]\n\nCorps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de Le Site Info (http://localhost/wordpress)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(295, 80, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:29:\"Le Site Info \"[your-subject]\"\";s:6:\"sender\";s:40:\"Le Site Info <arnaud.malfait@hotmail.fr>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:140:\"Corps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de Le Site Info (http://localhost/wordpress)\";s:18:\"additional_headers\";s:35:\"Reply-To: arnaud.malfait@hotmail.fr\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(296, 80, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Merci pour votre message. Il a été envoyé.\";s:12:\"mail_sent_ng\";s:102:\"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\";s:16:\"validation_error\";s:88:\"Un ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\";s:4:\"spam\";s:102:\"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\";s:12:\"accept_terms\";s:77:\"Vous devez accepter les termes et conditions avant d’envoyer votre message.\";s:16:\"invalid_required\";s:25:\"Ce champ est obligatoire.\";s:16:\"invalid_too_long\";s:23:\"Le champ est trop long.\";s:17:\"invalid_too_short\";s:24:\"Le champ est trop court.\";s:12:\"invalid_date\";s:32:\"Le format de date est incorrect.\";s:14:\"date_too_early\";s:47:\"La date précède la première date autorisée.\";s:13:\"date_too_late\";s:57:\"La date est postérieure à la dernière date autorisée.\";s:13:\"upload_failed\";s:72:\"Une erreur inconnue s’est produite lors du téléversement du fichier.\";s:24:\"upload_file_type_invalid\";s:79:\"Vous n’avez pas les droits nécessaires pour téléverser ce type de fichier.\";s:21:\"upload_file_too_large\";s:31:\"Le fichier est trop volumineux.\";s:23:\"upload_failed_php_error\";s:63:\"Une erreur s’est produite lors du téléversement du fichier.\";s:14:\"invalid_number\";s:33:\"Le format du nombre est invalide.\";s:16:\"number_too_small\";s:50:\"Le nombre est plus petit que le minimum autorisé.\";s:16:\"number_too_large\";s:50:\"Le nombre est plus grand que le maximum autorisé.\";s:23:\"quiz_answer_not_correct\";s:42:\"La réponse à la question est incorrecte.\";s:13:\"invalid_email\";s:38:\"L’adresse e-mail n’est pas valide.\";s:11:\"invalid_url\";s:27:\"L’URL n’est pas valide.\";s:11:\"invalid_tel\";s:45:\"Le numéro de téléphone n’est pas valide.\";}'),
(297, 80, '_additional_settings', ''),
(298, 80, '_locale', 'fr_FR'),
(299, 80, '_config_errors', 'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:73:\"La syntaxe de la boîte mail utilisée dans le champ %name% est invalide.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-02-04 10:08:54', '2020-02-04 09:08:54', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2020-02-04 10:08:54', '2020-02-04 09:08:54', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2020-02-04 10:08:54', '2020-02-04 09:08:54', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux visiteurs du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://localhost/wordpress/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2020-02-04 10:08:54', '2020-02-04 09:08:54', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-02-04 10:08:54', '2020-02-04 09:08:54', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2020-02-04 10:08:54', '2020-02-04 09:08:54', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(15, 1, '2020-02-04 10:30:09', '2020-02-04 09:30:09', 'http://localhost/wordpress/wp-content/uploads/2020/02/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2020-02-04 10:30:09', '2020-02-04 09:30:09', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/02/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2020-02-04 10:26:27', '2020-02-04 09:26:27', 'http://localhost/wordpress/wp-content/uploads/2020/02/cropped-Berger-Australien-_7.jpg', 'cropped-Berger-Australien-_7.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-berger-australien-_7-jpg', '', '', '2020-02-04 10:26:27', '2020-02-04 09:26:27', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/02/cropped-Berger-Australien-_7.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2020-02-04 10:28:31', '2020-02-04 09:28:31', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2020-02-04 10:28:31', '2020-02-04 09:28:31', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/02/logo.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2020-02-04 10:32:41', '2020-02-04 09:32:41', 'http://localhost/wordpress/wp-content/uploads/2020/02/cropped-logo-1.png', 'cropped-logo-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-1-png', '', '', '2020-02-04 10:32:41', '2020-02-04 09:32:41', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/02/cropped-logo-1.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2020-02-04 11:01:35', '2020-02-04 10:01:35', '', 'THE MARTIAN', '', 'inherit', 'open', 'closed', '', 'the-martian', '', '', '2020-02-04 15:58:32', '2020-02-04 14:58:32', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/02/Seul-sur-Mars_large.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2020-02-04 11:15:26', '2020-02-04 10:15:26', '', 'plage_large', '', 'inherit', 'open', 'closed', '', 'plage_large', '', '', '2020-02-04 11:15:26', '2020-02-04 10:15:26', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/02/plage_large.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2020-02-04 11:15:26', '2020-02-04 10:15:26', '', 'toscane1_large', '', 'inherit', 'open', 'closed', '', 'toscane1_large', '', '', '2020-02-04 11:15:26', '2020-02-04 10:15:26', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/02/toscane1_large.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2020-02-04 11:15:27', '2020-02-04 10:15:27', '', 'toscane2_large', '', 'inherit', 'open', 'closed', '', 'toscane2_large', '', '', '2020-02-04 11:15:27', '2020-02-04 10:15:27', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/02/toscane2_large.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2020-02-04 12:07:50', '2020-02-04 11:07:50', '<!-- wp:image {\"align\":\"left\",\"id\":24,\"width\":231,\"height\":358,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large is-resized\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/02/Seul-sur-Mars_affiche-658x1024.jpg\" alt=\"\" class=\"wp-image-24\" width=\"231\" height=\"358\"/><figcaption>Seul sur Mars avec Matt Damon</figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"fontSize\":\"small\",\"className\":\"red\"} -->\n<p class=\"has-small-font-size red\"> Ceci est le texte de présentation du film. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"customTextColor\":\"#b64c00\"} -->\n<p style=\"color:#b64c00\" class=\"has-text-color\"> Lors d\'une expédition sur Mars, l\'astronaute Mark Watney est laissé pour mort par ses coéquipiers, une tempête les ayant obligés à décoller en urgence. Mark a survécu et il est désormais seul, sans moyen de repartir, sur une planète hostile. Il va devoir faire appel à son intelligence et son ingéniosité pour tenter de survivre et trouver un moyen de contacter la Terre. </p>\n<!-- /wp:paragraph -->', 'Film \"Seul sur Mars\"', '', 'publish', 'open', 'open', '', 'film-seul-sur-mars', '', '', '2020-02-04 13:51:32', '2020-02-04 12:51:32', '', 0, 'http://localhost/wordpress/?p=23', 0, 'post', '', 1),
(24, 1, '2020-02-04 12:02:16', '2020-02-04 11:02:16', '', 'Seul-sur-Mars_affiche', '', 'inherit', 'open', 'closed', '', 'seul-sur-mars_affiche', '', '', '2020-02-04 12:02:16', '2020-02-04 11:02:16', '', 23, 'http://localhost/wordpress/wp-content/uploads/2020/02/Seul-sur-Mars_affiche.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2020-02-04 12:07:50', '2020-02-04 11:07:50', '<!-- wp:image {\"align\":\"left\",\"id\":24,\"width\":231,\"height\":358,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large is-resized\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/02/Seul-sur-Mars_affiche-658x1024.jpg\" alt=\"\" class=\"wp-image-24\" width=\"231\" height=\"358\"/><figcaption>Ceci est le texte de présentation du film.</figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p> Ceci est le texte de présentation du film. </p>\n<!-- /wp:paragraph -->', 'Film \"Seul sur Mars\"', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-02-04 12:07:50', '2020-02-04 11:07:50', '', 23, 'http://localhost/wordpress/2020/02/04/23-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2020-02-04 12:17:28', '2020-02-04 11:17:28', '<!-- wp:image {\"align\":\"left\",\"id\":24,\"width\":231,\"height\":358,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large is-resized\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/02/Seul-sur-Mars_affiche-658x1024.jpg\" alt=\"\" class=\"wp-image-24\" width=\"231\" height=\"358\"/><figcaption>Ceci est le texte de présentation du film.</figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p> Ceci est le texte de présentation du film. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lors d\'une expédition sur Mars, l\'astronaute Mark Watney est laissé pour mort par ses coéquipiers, une tempête les ayant obligés à décoller en urgence. Mark a survécu et il est désormais seul, sans moyen de repartir, sur une planète hostile. Il va devoir faire appel à son intelligence et son ingéniosité pour tenter de survivre et trouver un moyen de contacter la Terre. </p>\n<!-- /wp:paragraph -->', 'Film \"Seul sur Mars\"', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-02-04 12:17:28', '2020-02-04 11:17:28', '', 23, 'http://localhost/wordpress/2020/02/04/23-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2020-02-04 12:19:37', '2020-02-04 11:19:37', '<!-- wp:image {\"align\":\"left\",\"id\":24,\"width\":231,\"height\":358,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large is-resized\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/02/Seul-sur-Mars_affiche-658x1024.jpg\" alt=\"\" class=\"wp-image-24\" width=\"231\" height=\"358\"/><figcaption>Seul sur Mars avec Matt Damon</figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p> Ceci est le texte de présentation du film. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lors d\'une expédition sur Mars, l\'astronaute Mark Watney est laissé pour mort par ses coéquipiers, une tempête les ayant obligés à décoller en urgence. Mark a survécu et il est désormais seul, sans moyen de repartir, sur une planète hostile. Il va devoir faire appel à son intelligence et son ingéniosité pour tenter de survivre et trouver un moyen de contacter la Terre. </p>\n<!-- /wp:paragraph -->', 'Film \"Seul sur Mars\"', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-02-04 12:19:37', '2020-02-04 11:19:37', '', 23, 'http://localhost/wordpress/2020/02/04/23-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2020-02-04 12:27:07', '2020-02-04 11:27:07', '<!-- wp:image {\"align\":\"left\",\"id\":24,\"width\":231,\"height\":358,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large is-resized\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/02/Seul-sur-Mars_affiche-658x1024.jpg\" alt=\"\" class=\"wp-image-24\" width=\"231\" height=\"358\"/><figcaption>Seul sur Mars avec Matt Damon</figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"fontSize\":\"small\",\"className\":\"red\"} -->\n<p class=\"has-small-font-size red\"> Ceci est le texte de présentation du film. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"customTextColor\":\"#b64c00\"} -->\n<p style=\"color:#b64c00\" class=\"has-text-color\"> Lors d\'une expédition sur Mars, l\'astronaute Mark Watney est laissé pour mort par ses coéquipiers, une tempête les ayant obligés à décoller en urgence. Mark a survécu et il est désormais seul, sans moyen de repartir, sur une planète hostile. Il va devoir faire appel à son intelligence et son ingéniosité pour tenter de survivre et trouver un moyen de contacter la Terre. </p>\n<!-- /wp:paragraph -->', 'Film \"Seul sur Mars\"', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-02-04 12:27:07', '2020-02-04 11:27:07', '', 23, 'http://localhost/wordpress/2020/02/04/23-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2020-02-04 12:26:40', '2020-02-04 11:26:40', '<!-- wp:image {\"align\":\"left\",\"id\":24,\"width\":231,\"height\":358,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large is-resized\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/02/Seul-sur-Mars_affiche-658x1024.jpg\" alt=\"\" class=\"wp-image-24\" width=\"231\" height=\"358\"/><figcaption>Seul sur Mars avec Matt Damon</figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"textColor\":\"vivid-cyan-blue\",\"fontSize\":\"small\",\"className\":\"red\"} -->\n<p class=\"has-text-color has-small-font-size has-vivid-cyan-blue-color red\"> Ceci est le texte de présentation du film. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"customTextColor\":\"#b64c00\"} -->\n<p style=\"color:#b64c00\" class=\"has-text-color\"> Lors d\'une expédition sur Mars, l\'astronaute Mark Watney est laissé pour mort par ses coéquipiers, une tempête les ayant obligés à décoller en urgence. Mark a survécu et il est désormais seul, sans moyen de repartir, sur une planète hostile. Il va devoir faire appel à son intelligence et son ingéniosité pour tenter de survivre et trouver un moyen de contacter la Terre. </p>\n<!-- /wp:paragraph -->', 'Film \"Seul sur Mars\"', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-02-04 12:26:40', '2020-02-04 11:26:40', '', 23, 'http://localhost/wordpress/2020/02/04/23-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2020-02-04 12:22:43', '2020-02-04 11:22:43', '<!-- wp:image {\"align\":\"left\",\"id\":24,\"width\":231,\"height\":358,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large is-resized\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/02/Seul-sur-Mars_affiche-658x1024.jpg\" alt=\"\" class=\"wp-image-24\" width=\"231\" height=\"358\"/><figcaption>Seul sur Mars avec Matt Damon</figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"textColor\":\"vivid-cyan-blue\",\"backgroundColor\":\"very-light-gray\",\"fontSize\":\"small\",\"className\":\"red\"} -->\n<p class=\"has-text-color has-background has-small-font-size has-vivid-cyan-blue-color has-very-light-gray-background-color red\"> Ceci est le texte de présentation du film. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"customTextColor\":\"#b64c00\"} -->\n<p style=\"color:#b64c00\" class=\"has-text-color\"> Lors d\'une expédition sur Mars, l\'astronaute Mark Watney est laissé pour mort par ses coéquipiers, une tempête les ayant obligés à décoller en urgence. Mark a survécu et il est désormais seul, sans moyen de repartir, sur une planète hostile. Il va devoir faire appel à son intelligence et son ingéniosité pour tenter de survivre et trouver un moyen de contacter la Terre. </p>\n<!-- /wp:paragraph -->', 'Film \"Seul sur Mars\"', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-02-04 12:22:43', '2020-02-04 11:22:43', '', 23, 'http://localhost/wordpress/2020/02/04/23-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2020-02-04 14:16:51', '2020-02-04 13:16:51', '<!-- wp:paragraph -->\n<p>lorem test</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2020-02-04 14:16:51', '2020-02-04 13:16:51', '', 50, 'http://localhost/wordpress/2020/02/04/50-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2020-02-04 14:16:51', '2020-02-04 13:16:51', '<!-- wp:shortcode -->\n[metaslider id=\"67\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p> <strong>Notre exploration des différents parcs nationaux de Gaspésie se poursuit. Après le&nbsp;</strong><a rel=\"noreferrer noopener\" href=\"https://lesglobeblogueurs.com/parc-national-de-gaspesie/\" target=\"_blank\"><strong>parc national de Gaspésie</strong></a><strong>&nbsp;et de la&nbsp;</strong><a rel=\"noreferrer noopener\" href=\"https://lesglobeblogueurs.com/reserve-faunique-matane/\" target=\"_blank\"><strong>réserve de Matane</strong></a><strong>, nous sommes toujours autant assoiffés de paysages. Nous avons raison d’écumer chacun de ces parcs et leurs sentiers, car aucun ne se ressemble vraiment. Le parc national du Bic est résolument marin.</strong><br><strong>Ses terres s’étirent langoureusement formant des baies et des péninsules qui embrassent la mer. La marée chamboule quotidiennement le paysage ainsi que la brume. Même si la météo ne fût pas de notre côté lors de ces quelques jours, nous gardons un souvenir mémorable de cet espace naturel.</strong> </p>\n<!-- /wp:paragraph -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-02-04 16:16:16', '2020-02-04 15:16:16', '', 0, 'http://localhost/wordpress/?page_id=50', 0, 'page', '', 0),
(42, 1, '2020-02-04 14:03:05', '2020-02-04 13:03:05', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil-2', '', '', '2020-02-04 16:19:07', '2020-02-04 15:19:07', '', 0, 'http://localhost/wordpress/?p=42', 1, 'nav_menu_item', '', 0),
(43, 1, '2020-02-04 14:03:05', '2020-02-04 13:03:05', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2020-02-04 16:19:07', '2020-02-04 15:19:07', '', 0, 'http://localhost/wordpress/?p=43', 2, 'nav_menu_item', '', 0),
(44, 1, '2020-02-04 14:03:05', '2020-02-04 13:03:05', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2020-02-04 16:19:07', '2020-02-04 15:19:07', '', 2, 'http://localhost/wordpress/?p=44', 4, 'nav_menu_item', '', 0),
(45, 1, '2020-02-04 14:03:05', '2020-02-04 13:03:05', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2020-02-04 16:19:07', '2020-02-04 15:19:07', '', 2, 'http://localhost/wordpress/?p=45', 3, 'nav_menu_item', '', 0),
(46, 1, '2020-02-04 14:03:05', '2020-02-04 13:03:05', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2020-02-04 16:19:07', '2020-02-04 15:19:07', '', 0, 'http://localhost/wordpress/?p=46', 5, 'nav_menu_item', '', 0),
(47, 1, '2020-02-04 14:03:05', '2020-02-04 13:03:05', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2020-02-04 16:19:07', '2020-02-04 15:19:07', '', 0, 'http://localhost/wordpress/?p=47', 6, 'nav_menu_item', '', 0),
(48, 1, '2020-02-04 14:03:05', '2020-02-04 13:03:05', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2020-02-04 16:19:07', '2020-02-04 15:19:07', '', 5, 'http://localhost/wordpress/?p=48', 8, 'nav_menu_item', '', 0),
(83, 1, '2020-04-17 16:14:12', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-04-17 16:14:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=83', 0, 'post', '', 0),
(34, 1, '2020-02-04 13:43:57', '2020-02-04 12:43:57', '<!-- wp:image {\"align\":\"left\",\"id\":35,\"width\":384,\"height\":289,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large is-resized\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/02/2015-lacblanc-8070083-1024x768-1.jpg\" alt=\"\" class=\"wp-image-35\" width=\"384\" height=\"289\"/><figcaption>Le Lac Blanc  - Savoie</figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":1} -->\n<h1>Le Lac Blanc</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>La randonnée au&nbsp;Lac Blanc est un des grands classiques incontournables de la Vallée de Chamonix qui fera découvrir au randonneur un panorama grandiose sur tout l’univers de la haute montagne. L’itinéraire que je propose décrit une boucle qui conduira du Lac Blanc aux Lacs des Chéserys.<br>Pour ceux qui voudraient découvrir un itinéraire plus sauvage, mais aussi plus difficile, je propose cette variante : le Lac Blanc&nbsp;<a href=\"https://www.randos-montblanc.com/difficile/lac-blanc-montets.html\">par le Col des Montets ou Tré-le-Champ</a>.</p>\n<!-- /wp:paragraph -->', 'Le Lac Blanc  - Savoie', '', 'publish', 'open', 'open', '', '34', '', '', '2020-02-04 13:48:50', '2020-02-04 12:48:50', '', 0, 'http://localhost/wordpress/?p=34', 0, 'post', '', 0),
(35, 1, '2020-02-04 13:42:19', '2020-02-04 12:42:19', '', '2015-lacblanc-8070083-1024x768-1', '', 'inherit', 'open', 'closed', '', '2015-lacblanc-8070083-1024x768-1', '', '', '2020-02-04 13:42:19', '2020-02-04 12:42:19', '', 34, 'http://localhost/wordpress/wp-content/uploads/2020/02/2015-lacblanc-8070083-1024x768-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2020-02-04 13:43:57', '2020-02-04 12:43:57', '<!-- wp:image {\"id\":35,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/02/2015-lacblanc-8070083-1024x768-1.jpg\" alt=\"\" class=\"wp-image-35\"/><figcaption>Le Lac Blanc  - Savoie</figcaption></figure>\n<!-- /wp:image -->', '', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2020-02-04 13:43:57', '2020-02-04 12:43:57', '', 34, 'http://localhost/wordpress/2020/02/04/34-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2020-02-04 13:44:15', '2020-02-04 12:44:15', '<!-- wp:image {\"id\":35,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/02/2015-lacblanc-8070083-1024x768-1.jpg\" alt=\"\" class=\"wp-image-35\"/><figcaption>Le Lac Blanc  - Savoie</figcaption></figure>\n<!-- /wp:image -->', 'Le Lac Blanc  - Savoie', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2020-02-04 13:44:15', '2020-02-04 12:44:15', '', 34, 'http://localhost/wordpress/2020/02/04/34-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2020-02-04 13:48:50', '2020-02-04 12:48:50', '<!-- wp:image {\"align\":\"left\",\"id\":35,\"width\":384,\"height\":289,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large is-resized\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/02/2015-lacblanc-8070083-1024x768-1.jpg\" alt=\"\" class=\"wp-image-35\" width=\"384\" height=\"289\"/><figcaption>Le Lac Blanc  - Savoie</figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":1} -->\n<h1>Le Lac Blanc</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>La randonnée au&nbsp;Lac Blanc est un des grands classiques incontournables de la Vallée de Chamonix qui fera découvrir au randonneur un panorama grandiose sur tout l’univers de la haute montagne. L’itinéraire que je propose décrit une boucle qui conduira du Lac Blanc aux Lacs des Chéserys.<br>Pour ceux qui voudraient découvrir un itinéraire plus sauvage, mais aussi plus difficile, je propose cette variante : le Lac Blanc&nbsp;<a href=\"https://www.randos-montblanc.com/difficile/lac-blanc-montets.html\">par le Col des Montets ou Tré-le-Champ</a>.</p>\n<!-- /wp:paragraph -->', 'Le Lac Blanc  - Savoie', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2020-02-04 13:48:50', '2020-02-04 12:48:50', '', 34, 'http://localhost/wordpress/2020/02/04/34-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2020-02-04 14:03:05', '2020-02-04 13:03:05', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2020-02-04 16:19:07', '2020-02-04 15:19:07', '', 5, 'http://localhost/wordpress/?p=49', 7, 'nav_menu_item', '', 0),
(53, 1, '2020-02-04 14:18:07', '2020-02-04 13:18:07', '<!-- wp:paragraph -->\n<p> <strong>Notre exploration des différents parcs nationaux de Gaspésie se poursuit. Après le </strong><a rel=\"noreferrer noopener\" href=\"https://lesglobeblogueurs.com/parc-national-de-gaspesie/\" target=\"_blank\"><strong>parc national de Gaspésie</strong></a><strong> et de la </strong><a rel=\"noreferrer noopener\" href=\"https://lesglobeblogueurs.com/reserve-faunique-matane/\" target=\"_blank\"><strong>réserve de Matane</strong></a><strong>, nous sommes toujours autant assoiffés de paysages. Nous avons raison d’écumer chacun de ces parcs et leurs sentiers, car aucun ne se ressemble vraiment. Le parc national du Bic est résolument marin.</strong><br><strong>Ses terres s’étirent langoureusement formant des baies et des péninsules qui embrassent la mer. La marée chamboule quotidiennement le paysage ainsi que la brume. Même si la météo ne fût pas de notre côté lors de ces quelques jours, nous gardons un souvenir mémorable de cet espace naturel.</strong> </p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2020-02-04 14:18:07', '2020-02-04 13:18:07', '', 50, 'http://localhost/wordpress/2020/02/04/50-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2020-02-04 14:20:06', '2020-02-04 13:20:06', '', 'Nos articles', '', 'publish', 'closed', 'closed', '', 'nos-articles', '', '', '2020-02-04 14:20:06', '2020-02-04 13:20:06', '', 0, 'http://localhost/wordpress/?page_id=54', 0, 'page', '', 0),
(55, 1, '2020-02-04 14:20:06', '2020-02-04 13:20:06', '', 'Nos articles', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2020-02-04 14:20:06', '2020-02-04 13:20:06', '', 54, 'http://localhost/wordpress/2020/02/04/54-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2020-02-04 14:21:39', '2020-02-04 13:21:39', ' ', '', '', 'publish', 'closed', 'closed', '', '57', '', '', '2020-02-04 16:19:07', '2020-02-04 15:19:07', '', 0, 'http://localhost/wordpress/?p=57', 9, 'nav_menu_item', '', 0),
(58, 1, '2020-02-04 14:30:35', '2020-02-04 13:30:35', '', 'Mentions légales', '', 'publish', 'closed', 'closed', '', 'mentions-legales', '', '', '2020-02-04 14:30:35', '2020-02-04 13:30:35', '', 0, 'http://localhost/wordpress/?page_id=58', 0, 'page', '', 0),
(59, 1, '2020-02-04 14:30:35', '2020-02-04 13:30:35', '', 'Mentions légales', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2020-02-04 14:30:35', '2020-02-04 13:30:35', '', 58, 'http://localhost/wordpress/2020/02/04/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2020-02-04 14:30:48', '2020-02-04 13:30:48', '', 'Qui sommes nous', '', 'publish', 'closed', 'closed', '', 'qui-sommes-nous', '', '', '2020-02-04 14:30:48', '2020-02-04 13:30:48', '', 0, 'http://localhost/wordpress/?page_id=60', 0, 'page', '', 0),
(61, 1, '2020-02-04 14:30:48', '2020-02-04 13:30:48', '', 'Qui sommes nous', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2020-02-04 14:30:48', '2020-02-04 13:30:48', '', 60, 'http://localhost/wordpress/2020/02/04/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2020-02-04 14:32:06', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-02-04 14:32:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=62', 1, 'nav_menu_item', '', 0),
(63, 1, '2020-02-04 14:36:16', '2020-02-04 13:36:16', ' ', '', '', 'publish', 'closed', 'closed', '', '63', '', '', '2020-02-04 16:31:26', '2020-02-04 15:31:26', '', 0, 'http://localhost/wordpress/?p=63', 1, 'nav_menu_item', '', 0),
(64, 1, '2020-02-04 14:37:25', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-02-04 14:37:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=64', 1, 'nav_menu_item', '', 0),
(65, 1, '2020-02-04 14:37:39', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-02-04 14:37:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=65', 1, 'nav_menu_item', '', 0),
(66, 1, '2020-02-04 14:37:51', '2020-02-04 13:37:51', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2020-02-04 16:19:07', '2020-02-04 15:19:07', '', 0, 'http://localhost/wordpress/?p=66', 10, 'nav_menu_item', '', 0),
(67, 1, '2020-02-04 15:58:04', '2020-02-04 14:58:04', '', 'New Slideshow', '', 'publish', 'closed', 'closed', '', 'new-slideshow', '', '', '2020-02-04 15:59:16', '2020-02-04 14:59:16', '', 0, 'http://localhost/wordpress/?post_type=ml-slider&#038;p=67', 0, 'ml-slider', '', 0),
(68, 1, '2020-02-04 15:58:50', '2020-02-04 14:58:50', '', 'Slider 67 - image', '', 'publish', 'closed', 'closed', '', 'slider-67-image', '', '', '2020-02-04 15:59:16', '2020-02-04 14:59:16', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=68', 0, 'ml-slide', '', 0),
(69, 1, '2020-02-04 15:58:50', '2020-02-04 14:58:50', '', 'Slider 67 - image', '', 'publish', 'closed', 'closed', '', 'slider-67-image-2', '', '', '2020-02-04 15:59:16', '2020-02-04 14:59:16', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=69', 1, 'ml-slide', '', 0),
(70, 1, '2020-02-04 15:58:50', '2020-02-04 14:58:50', '', 'Slider 67 - image', '', 'publish', 'closed', 'closed', '', 'slider-67-image-3', '', '', '2020-02-04 15:59:16', '2020-02-04 14:59:16', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=70', 2, 'ml-slide', '', 0),
(71, 1, '2020-02-04 15:58:50', '2020-02-04 14:58:50', '', 'Slider 67 - image', '', 'publish', 'closed', 'closed', '', 'slider-67-image-4', '', '', '2020-02-04 15:59:16', '2020-02-04 14:59:16', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=71', 3, 'ml-slide', '', 0),
(74, 1, '2020-02-04 16:14:42', '2020-02-04 15:14:42', '<!-- wp:paragraph -->\n<p> <strong>Notre exploration des différents parcs nationaux de Gaspésie se poursuit. Après le&nbsp;</strong><a rel=\"noreferrer noopener\" href=\"https://lesglobeblogueurs.com/parc-national-de-gaspesie/\" target=\"_blank\"><strong>parc national de Gaspésie</strong></a><strong>&nbsp;et de la&nbsp;</strong><a rel=\"noreferrer noopener\" href=\"https://lesglobeblogueurs.com/reserve-faunique-matane/\" target=\"_blank\"><strong>réserve de Matane</strong></a><strong>, nous sommes toujours autant assoiffés de paysages. Nous avons raison d’écumer chacun de ces parcs et leurs sentiers, car aucun ne se ressemble vraiment. Le parc national du Bic est résolument marin.</strong><br><strong>Ses terres s’étirent langoureusement formant des baies et des péninsules qui embrassent la mer. La marée chamboule quotidiennement le paysage ainsi que la brume. Même si la météo ne fût pas de notre côté lors de ces quelques jours, nous gardons un souvenir mémorable de cet espace naturel.</strong> </p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2020-02-04 16:14:42', '2020-02-04 15:14:42', '', 50, 'http://localhost/wordpress/50-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2020-02-04 16:09:36', '2020-02-04 15:09:36', '<!-- wp:shortcode -->\n[metaslider id=\"67\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p> <strong>Notre exploration des différents parcs nationaux de Gaspésie se poursuit. Après le&nbsp;</strong><a rel=\"noreferrer noopener\" href=\"https://lesglobeblogueurs.com/parc-national-de-gaspesie/\" target=\"_blank\"><strong>parc national de Gaspésie</strong></a><strong>&nbsp;et de la&nbsp;</strong><a rel=\"noreferrer noopener\" href=\"https://lesglobeblogueurs.com/reserve-faunique-matane/\" target=\"_blank\"><strong>réserve de Matane</strong></a><strong>, nous sommes toujours autant assoiffés de paysages. Nous avons raison d’écumer chacun de ces parcs et leurs sentiers, car aucun ne se ressemble vraiment. Le parc national du Bic est résolument marin.</strong><br><strong>Ses terres s’étirent langoureusement formant des baies et des péninsules qui embrassent la mer. La marée chamboule quotidiennement le paysage ainsi que la brume. Même si la météo ne fût pas de notre côté lors de ces quelques jours, nous gardons un souvenir mémorable de cet espace naturel.</strong> </p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2020-02-04 16:09:36', '2020-02-04 15:09:36', '', 50, 'http://localhost/wordpress/50-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2020-02-04 15:59:39', '2020-02-04 14:59:39', '<!-- wp:metaslider/slider {\"slideshowId\":67} -->\n<div class=\"alignnormal\">[metaslider id=67 cssclass=\"\"]</div>\n<!-- /wp:metaslider/slider -->\n\n<!-- wp:paragraph -->\n<p> <strong>Notre exploration des différents parcs nationaux de Gaspésie se poursuit. Après le&nbsp;</strong><a rel=\"noreferrer noopener\" href=\"https://lesglobeblogueurs.com/parc-national-de-gaspesie/\" target=\"_blank\"><strong>parc national de Gaspésie</strong></a><strong>&nbsp;et de la&nbsp;</strong><a rel=\"noreferrer noopener\" href=\"https://lesglobeblogueurs.com/reserve-faunique-matane/\" target=\"_blank\"><strong>réserve de Matane</strong></a><strong>, nous sommes toujours autant assoiffés de paysages. Nous avons raison d’écumer chacun de ces parcs et leurs sentiers, car aucun ne se ressemble vraiment. Le parc national du Bic est résolument marin.</strong><br><strong>Ses terres s’étirent langoureusement formant des baies et des péninsules qui embrassent la mer. La marée chamboule quotidiennement le paysage ainsi que la brume. Même si la météo ne fût pas de notre côté lors de ces quelques jours, nous gardons un souvenir mémorable de cet espace naturel.</strong> </p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2020-02-04 15:59:39', '2020-02-04 14:59:39', '', 50, 'http://localhost/wordpress/50-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2020-02-04 16:16:16', '2020-02-04 15:16:16', '<!-- wp:shortcode -->\n[metaslider id=\"67\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p> <strong>Notre exploration des différents parcs nationaux de Gaspésie se poursuit. Après le&nbsp;</strong><a rel=\"noreferrer noopener\" href=\"https://lesglobeblogueurs.com/parc-national-de-gaspesie/\" target=\"_blank\"><strong>parc national de Gaspésie</strong></a><strong>&nbsp;et de la&nbsp;</strong><a rel=\"noreferrer noopener\" href=\"https://lesglobeblogueurs.com/reserve-faunique-matane/\" target=\"_blank\"><strong>réserve de Matane</strong></a><strong>, nous sommes toujours autant assoiffés de paysages. Nous avons raison d’écumer chacun de ces parcs et leurs sentiers, car aucun ne se ressemble vraiment. Le parc national du Bic est résolument marin.</strong><br><strong>Ses terres s’étirent langoureusement formant des baies et des péninsules qui embrassent la mer. La marée chamboule quotidiennement le paysage ainsi que la brume. Même si la météo ne fût pas de notre côté lors de ces quelques jours, nous gardons un souvenir mémorable de cet espace naturel.</strong> </p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2020-02-04 16:16:16', '2020-02-04 15:16:16', '', 50, 'http://localhost/wordpress/50-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2020-02-04 16:18:03', '2020-02-04 15:18:03', '<!-- wp:shortcode -->\n[contact-form-7 id=\"80\" title=\"Formulaire de contact 1\"]\n<!-- /wp:shortcode -->', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2020-02-04 16:24:25', '2020-02-04 15:24:25', '', 0, 'http://localhost/wordpress/?page_id=76', 0, 'page', '', 0),
(77, 1, '2020-02-04 16:18:03', '2020-02-04 15:18:03', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2020-02-04 16:18:03', '2020-02-04 15:18:03', '', 76, 'http://localhost/wordpress/76-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2020-02-04 16:19:07', '2020-02-04 15:19:07', ' ', '', '', 'publish', 'closed', 'closed', '', '79', '', '', '2020-02-04 16:19:07', '2020-02-04 15:19:07', '', 0, 'http://localhost/wordpress/?p=79', 11, 'nav_menu_item', '', 0),
(80, 1, '2020-02-04 16:20:36', '2020-02-04 15:20:36', '<label> Votre nom (obligatoire)\r\n    [text* Votre Nom] </label>\r\n\r\n<label> Votre adresse de messagerie (obligatoire)\r\n    [email* Votre Email] </label>\r\n\r\n<label> Objet\r\n    [text Le sujet] </label>\r\n\r\n<label> Votre message\r\n    [textarea Votre Message] </label>\r\n\r\n[submit \"Envoyer\"]\n1\nLe Site Info \"[your-subject]\"\nLe Site Info <arnaud.malfait@hotmail.fr>\narnaud.malfait@hotmail.fr\nDe : [your-name] <[your-email]>\r\nObjet : [your-subject]\r\n\r\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de Le Site Info (http://localhost/wordpress)\nReply-To: [your-email]\n\n\n\n\nLe Site Info \"[your-subject]\"\nLe Site Info <arnaud.malfait@hotmail.fr>\n[your-email]\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de Le Site Info (http://localhost/wordpress)\nReply-To: arnaud.malfait@hotmail.fr\n\n\n\nMerci pour votre message. Il a été envoyé.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nUn ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nVous devez accepter les termes et conditions avant d’envoyer votre message.\nCe champ est obligatoire.\nLe champ est trop long.\nLe champ est trop court.\nLe format de date est incorrect.\nLa date précède la première date autorisée.\nLa date est postérieure à la dernière date autorisée.\nUne erreur inconnue s’est produite lors du téléversement du fichier.\nVous n’avez pas les droits nécessaires pour téléverser ce type de fichier.\nLe fichier est trop volumineux.\nUne erreur s’est produite lors du téléversement du fichier.\nLe format du nombre est invalide.\nLe nombre est plus petit que le minimum autorisé.\nLe nombre est plus grand que le maximum autorisé.\nLa réponse à la question est incorrecte.\nL’adresse e-mail n’est pas valide.\nL’URL n’est pas valide.\nLe numéro de téléphone n’est pas valide.', 'Formulaire de contact 1', '', 'publish', 'closed', 'closed', '', 'formulaire-de-contact-1', '', '', '2020-02-04 16:30:03', '2020-02-04 15:30:03', '', 0, 'http://localhost/wordpress/?post_type=wpcf7_contact_form&#038;p=80', 0, 'wpcf7_contact_form', '', 0),
(81, 1, '2020-02-04 16:24:25', '2020-02-04 15:24:25', '<!-- wp:shortcode -->\n[contact-form-7 id=\"80\" title=\"Formulaire de contact 1\"]\n<!-- /wp:shortcode -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2020-02-04 16:24:25', '2020-02-04 15:24:25', '', 76, 'http://localhost/wordpress/76-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Culture', 'culture', 0),
(3, 'Musique', 'musique', 0),
(4, 'Cinéma', 'cinema', 0),
(5, 'Voyage', 'voyage', 0),
(6, 'En France', 'en-france', 0),
(7, 'Ailleurs', 'ailleurs', 0),
(8, 'idées de week-end', 'idees-de-week-end', 0),
(9, 'Menu principal', 'menu-principal', 0),
(10, 'Footer Mentions légales', 'footer-mentions-legales', 0),
(11, '67', '67', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(63, 10, 0),
(34, 8, 0),
(34, 5, 0),
(34, 6, 0),
(23, 4, 0),
(23, 2, 0),
(57, 9, 0),
(42, 9, 0),
(43, 9, 0),
(44, 9, 0),
(45, 9, 0),
(46, 9, 0),
(47, 9, 0),
(48, 9, 0),
(49, 9, 0),
(66, 9, 0),
(68, 11, 0),
(69, 11, 0),
(70, 11, 0),
(71, 11, 0),
(79, 9, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 1),
(3, 3, 'category', '', 2, 0),
(4, 4, 'category', '', 2, 1),
(5, 5, 'category', '', 0, 1),
(6, 6, 'category', '', 5, 1),
(7, 7, 'category', '', 5, 0),
(8, 8, 'post_tag', '', 0, 1),
(9, 9, 'nav_menu', '', 0, 11),
(10, 10, 'nav_menu', '', 0, 1),
(11, 11, 'ml-slider', '', 0, 4);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'arnaud'),
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
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"1077a93fb8a22373e08eaebff06ecbcbf26d9d7cef56715d5ac8d338fa2bfb71\";a:4:{s:10:\"expiration\";i:1587305650;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36\";s:5:\"login\";i:1587132850;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '83'),
(18, 1, '_new_email', 'a:2:{s:4:\"hash\";s:32:\"37afa72c498bfb56939d501a05ffc5c1\";s:8:\"newemail\";s:26:\"arnaud.malfait89@gmail.com\";}'),
(19, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(20, 1, 'metaboxhidden_dashboard', 'a:4:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(22, 1, 'wp_user-settings-time', '1580811962'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(25, 1, 'nav_menu_recently_edited', '9'),
(26, 1, 'wp_metaslider_user_saw_callout_toolbar', '1');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'arnaud', '$P$BZ5SsWpSg5ny5Ili4EJH2V4zkgxPGi1', 'arnaud', 'arnaud.malfait@hotmail.fr', '', '2020-02-04 09:08:54', '', 0, 'arnaud');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
