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
-- Base de données :  `meubles&co`
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
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-02-12 16:50:38', '2020-02-12 15:50:38', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 40, 'WooCommerce', '', '', '', '2020-02-13 10:24:49', '2020-02-13 09:24:49', 'Réduction des niveaux de stock : 1 table de salon JOHN (table1) 50&rarr;49', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(3, 40, 'WooCommerce', '', '', '', '2020-02-13 10:24:49', '2020-02-13 09:24:49', 'En attente de paiement BACS État de la commande modifié de Attente paiement à En attente.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(4, 42, 'WooCommerce', '', '', '', '2020-02-13 11:04:23', '2020-02-13 10:04:23', 'Réduction des niveaux de stock : Canapé Louis - Bleu foncé (canape1)<span class=\"description\"></span> 50&rarr;49', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(5, 42, 'WooCommerce', '', '', '', '2020-02-13 11:04:23', '2020-02-13 10:04:23', 'En attente de paiement BACS État de la commande modifié de Attente paiement à En attente.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

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
) ENGINE=MyISAM AUTO_INCREMENT=1117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/meubles&co', 'yes'),
(2, 'home', 'http://localhost/meubles&co', 'yes'),
(3, 'blogname', 'meubles&amp;co', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'arnaud.malfait89@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:157:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:11:\"boutique/?$\";s:27:\"index.php?post_type=product\";s:41:\"boutique/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:36:\"boutique/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:28:\"boutique/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:56:\"categorie-produit/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:51:\"categorie-produit/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:32:\"categorie-produit/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:44:\"categorie-produit/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:26:\"categorie-produit/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:58:\"etiquette-produit/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:53:\"etiquette-produit/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:34:\"etiquette-produit/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:46:\"etiquette-produit/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:28:\"etiquette-produit/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"produit/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"produit/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"produit/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produit/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produit/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"produit/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"produit/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"produit/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"produit/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"produit/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"produit/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"produit/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"produit/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"produit/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"produit/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"produit/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"produit/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"produit/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"produit/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produit/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produit/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"produit/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:23:\"loco-translate/loco.php\";i:1;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'ocin-lite', 'yes'),
(41, 'stylesheet', 'ocin-lite-child', 'yes'),
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
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '7', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1597074638', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:8:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:115:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:10:\"loco_admin\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:10:\"translator\";a:2:{s:4:\"name\";s:10:\"Translator\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:10:\"loco_admin\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'fr_FR', 'yes'),
(98, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(1038, '_transient_timeout_wc_outofstock_count', '1592999215', 'no'),
(1039, '_transient_wc_outofstock_count', '0', 'no'),
(104, 'cron', 'a:14:{i:1590486830;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1590490188;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590490239;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1590490381;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1590500988;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1590508238;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590508239;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1590508259;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590534000;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590565788;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590565798;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590567780;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590652248;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(118, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1581522872;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(1082, '_transient_timeout_loco_po_fc4187799ca9a0dff33cba69282cbab6', '1591274156', 'no'),
(1083, '_transient_loco_po_fc4187799ca9a0dff33cba69282cbab6', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:41:\"languages/plugins/loco-translate-fr_FR.po\";s:5:\"bytes\";i:60399;s:5:\"mtime\";i:1581588584;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:408;s:1:\"p\";i:408;s:1:\"f\";i:0;}}s:1:\"t\";i:1590410156;}', 'no'),
(1084, '_transient_timeout_loco_po_c39c0b7c734fd0e88ed84b448ba32a86', '1591274156', 'no'),
(1085, '_transient_loco_po_c39c0b7c734fd0e88ed84b448ba32a86', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:34:\"languages/plugins/akismet-fr_FR.po\";s:5:\"bytes\";i:37076;s:5:\"mtime\";i:1590407302;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:205;s:1:\"p\";i:205;s:1:\"f\";i:0;}}s:1:\"t\";i:1590410156;}', 'no'),
(178, 'woocommerce_store_address', '9 Rue des boulots', 'yes'),
(179, 'woocommerce_store_address_2', '', 'yes'),
(180, 'woocommerce_store_city', 'Franconville', 'yes'),
(181, 'woocommerce_default_country', 'FR', 'yes'),
(182, 'woocommerce_store_postcode', '95150', 'yes'),
(183, 'woocommerce_allowed_countries', 'specific', 'yes'),
(1105, '_site_transient_timeout_theme_roots', '1590488583', 'no'),
(1106, '_site_transient_theme_roots', 'a:5:{s:15:\"ocin-lite-child\";s:7:\"/themes\";s:9:\"ocin-lite\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(769, 'loco_recent', 'a:4:{s:1:\"c\";s:21:\"Loco_data_RecentItems\";s:1:\"v\";i:0;s:1:\"d\";a:1:{s:6:\"bundle\";a:1:{s:15:\"theme.ocin-lite\";i:1581588877;}}s:1:\"t\";i:1581588877;}', 'no'),
(1075, '_transient_timeout_loco_po_b8c356499c8458fcea5755f01f7459b2', '1591274016', 'no'),
(1076, '_transient_loco_po_b8c356499c8458fcea5755f01f7459b2', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:35:\"themes/ocin-lite/languages/fr_FR.po\";s:5:\"bytes\";i:21172;s:5:\"mtime\";i:1581588877;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:160;s:1:\"p\";i:2;s:1:\"f\";i:0;}}s:1:\"t\";i:1590410016;}', 'no'),
(1034, '_site_transient_timeout_php_check_7ddb89c02f1abf791c6717dc46cef1eb', '1591012015', 'no'),
(1035, '_site_transient_php_check_7ddb89c02f1abf791c6717dc46cef1eb', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(130, 'can_compress_scripts', '1', 'no'),
(1040, '_transient_timeout_wc_report_sales_by_date', '1590493615', 'no'),
(1041, '_transient_wc_report_sales_by_date', 'a:8:{s:32:\"4b3738b9571656b0775b9fd12e432a28\";a:0:{}s:32:\"b88660c89531f3320d06966b5a2a185f\";a:0:{}s:32:\"703ac92cf33d07e6bf38249506b4e1c5\";a:0:{}s:32:\"29eb2a19f598655b1481bad69d686efa\";N;s:32:\"947165f2c5eecbc3cc1fb48a5ae386cb\";a:0:{}s:32:\"8549ccb316955ad9b847a5ddcafc1a24\";a:0:{}s:32:\"b53b3e32e4a299d881afcaeab51f0309\";a:0:{}s:32:\"5f5a83fa9e3956ba20230419f33d6183\";a:0:{}}', 'no'),
(1042, '_transient_timeout_wc_admin_report', '1590493615', 'no'),
(1043, '_transient_wc_admin_report', 'a:1:{s:32:\"2350c356371082339575d8d8227d2188\";a:0:{}}', 'no'),
(1092, '_transient_timeout_loco_po_b2a79eef66bc2d1813c5e16956b90643', '1591274156', 'no'),
(1093, '_transient_loco_po_b2a79eef66bc2d1813c5e16956b90643', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:38:\"languages/themes/twentytwenty-fr_FR.po\";s:5:\"bytes\";i:18263;s:5:\"mtime\";i:1590407302;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:123;s:1:\"p\";i:123;s:1:\"f\";i:0;}}s:1:\"t\";i:1590410156;}', 'no'),
(1011, '_transient_ocin_lite_categories', '1', 'yes'),
(1071, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.4.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.4.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1590486782;s:15:\"version_checked\";s:5:\"5.3.3\";s:12:\"translations\";a:0:{}}', 'no'),
(1073, '_transient_timeout_loco_po_2121de8f9c17acbdb2960aceb12543f4', '1591274016', 'no'),
(1074, '_transient_loco_po_2121de8f9c17acbdb2960aceb12543f4', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:40:\"themes/ocin-lite/languages/ocin-lite.pot\";s:5:\"bytes\";i:21027;s:5:\"mtime\";i:1581522763;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:160;s:1:\"p\";i:0;s:1:\"f\";i:0;}}s:1:\"t\";i:1590410016;}', 'no'),
(184, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(185, 'woocommerce_specific_allowed_countries', 'a:1:{i:0;s:2:\"FR\";}', 'yes'),
(147, 'current_theme', 'ocin-lite-child', 'yes'),
(148, 'theme_mods_ocin-lite', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:25;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1581591022;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(149, 'theme_switched', '', 'yes'),
(150, 'widget_ocin_lite_order-by-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(169, 'recently_activated', 'a:0:{}', 'yes'),
(186, 'woocommerce_ship_to_countries', 'all', 'yes'),
(187, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(188, 'woocommerce_default_customer_address', 'base', 'yes'),
(189, 'woocommerce_calc_taxes', 'yes', 'yes'),
(190, 'woocommerce_enable_coupons', 'yes', 'yes'),
(191, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(192, 'woocommerce_currency', 'EUR', 'yes'),
(193, 'woocommerce_currency_pos', 'right', 'yes'),
(194, 'woocommerce_price_thousand_sep', ' ', 'yes'),
(195, 'woocommerce_price_decimal_sep', ',', 'yes'),
(196, 'woocommerce_price_num_decimals', '2', 'yes'),
(197, 'woocommerce_shop_page_id', '7', 'yes'),
(198, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(199, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(200, 'woocommerce_placeholder_image', '6', 'yes'),
(201, 'woocommerce_weight_unit', 'kg', 'yes'),
(202, 'woocommerce_dimension_unit', 'cm', 'yes'),
(203, 'woocommerce_enable_reviews', 'yes', 'yes'),
(204, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(205, 'woocommerce_review_rating_verification_required', 'yes', 'no'),
(206, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(207, 'woocommerce_review_rating_required', 'yes', 'no'),
(208, 'woocommerce_manage_stock', 'yes', 'yes'),
(209, 'woocommerce_hold_stock_minutes', '60', 'no'),
(210, 'woocommerce_notify_low_stock', 'yes', 'no'),
(211, 'woocommerce_notify_no_stock', 'yes', 'no'),
(212, 'woocommerce_stock_email_recipient', 'arnaud.malfait89@gmail.com', 'no'),
(213, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(214, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(215, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(216, 'woocommerce_stock_format', '', 'yes'),
(217, 'woocommerce_file_download_method', 'force', 'no'),
(218, 'woocommerce_downloads_require_login', 'no', 'no'),
(219, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(220, 'woocommerce_prices_include_tax', 'yes', 'yes'),
(221, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(222, 'woocommerce_shipping_tax_class', '', 'yes'),
(223, 'woocommerce_tax_round_at_subtotal', 'yes', 'yes'),
(224, 'woocommerce_tax_classes', '', 'yes'),
(225, 'woocommerce_tax_display_shop', 'incl', 'yes'),
(226, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(227, 'woocommerce_price_display_suffix', 'TTC', 'yes'),
(228, 'woocommerce_tax_total_display', 'itemized', 'no'),
(229, 'woocommerce_enable_shipping_calc', 'no', 'no'),
(230, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(231, 'woocommerce_ship_to_destination', 'billing', 'no'),
(232, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(233, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(234, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(235, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(236, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(237, 'woocommerce_registration_generate_username', 'yes', 'no'),
(238, 'woocommerce_registration_generate_password', 'yes', 'no'),
(239, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(240, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(241, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(242, 'woocommerce_registration_privacy_policy_text', 'Vos données personnelles seront utilisées pour vous accompagner au cours de votre visite du site web, gérer l’accès à votre compte, et pour d’autres raisons décrites dans notre [privacy_policy].', 'yes'),
(243, 'woocommerce_checkout_privacy_policy_text', 'Vos données personnelles seront utilisées pour le traitement de votre commande, vous accompagner au cours de votre visite du site web, et pour d’autres raisons décrites dans notre [privacy_policy].', 'yes'),
(244, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(245, 'woocommerce_trash_pending_orders', '', 'no'),
(246, 'woocommerce_trash_failed_orders', '', 'no'),
(247, 'woocommerce_trash_cancelled_orders', '', 'no'),
(248, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(249, 'woocommerce_email_from_name', 'meubles&amp;co', 'no'),
(250, 'woocommerce_email_from_address', 'arnaud.malfait89@gmail.com', 'no'),
(251, 'woocommerce_email_header_image', '', 'no'),
(252, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(253, 'woocommerce_email_base_color', '#96588a', 'no'),
(254, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(255, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(256, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(257, 'woocommerce_cart_page_id', '8', 'no'),
(258, 'woocommerce_checkout_page_id', '9', 'no'),
(259, 'woocommerce_myaccount_page_id', '10', 'no'),
(260, 'woocommerce_terms_page_id', '3', 'no'),
(261, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(262, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(263, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(264, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(265, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(266, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(267, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(268, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(269, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(270, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(271, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(272, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(273, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(274, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(275, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(276, 'woocommerce_api_enabled', 'no', 'yes'),
(277, 'woocommerce_allow_tracking', 'no', 'no'),
(278, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(279, 'woocommerce_single_image_width', '600', 'yes'),
(280, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(281, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(282, 'woocommerce_demo_store', 'no', 'no'),
(283, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"produit\";s:13:\"category_base\";s:17:\"categorie-produit\";s:8:\"tag_base\";s:17:\"etiquette-produit\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(284, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(285, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(364, '_transient_wc_attribute_taxonomies', 'a:1:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:7:\"couleur\";s:15:\"attribute_label\";s:7:\"Couleur\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}', 'yes'),
(288, 'default_product_cat', '15', 'yes'),
(317, 'woocommerce_product_type', 'physical', 'yes'),
(291, 'woocommerce_version', '3.9.1', 'yes'),
(292, 'woocommerce_db_version', '3.9.1', 'yes'),
(293, 'woocommerce_admin_notices', 'a:2:{i:0;s:20:\"no_secure_connection\";i:2;s:14:\"template_files\";}', 'yes'),
(294, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"L4V50Vz5kYppB1RGWIa94o86Cczvin81\";}', 'yes'),
(295, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(296, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(297, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(298, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(299, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(300, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(301, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(302, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(303, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(304, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(305, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(306, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(307, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1088, '_transient_timeout_loco_po_c1fc13be0b5e4573055f293dbed6aa9d', '1591274156', 'no'),
(312, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(316, 'woocommerce_setup_ab_wc_admin_onboarding', 'a', 'yes'),
(318, 'woocommerce_stripe_settings', 'a:3:{s:7:\"enabled\";s:2:\"no\";s:14:\"create_account\";b:0;s:5:\"email\";b:0;}', 'yes'),
(319, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";b:0;}', 'yes'),
(320, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(321, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(322, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(324, '_transient_shipping-transient-version', '1581590246', 'yes'),
(325, 'woocommerce_flat_rate_1_settings', 'a:7:{s:5:\"title\";s:12:\"Transporteur\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:2:\"80\";s:13:\"class_cost_16\";s:0:\"\";s:13:\"no_class_cost\";s:1:\"0\";s:4:\"type\";s:5:\"class\";s:13:\"class_cost_34\";s:0:\"\";}', 'yes'),
(326, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:\"title\";s:7:\"Forfait\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:2:\"60\";}', 'yes'),
(827, 'category_children', 'a:0:{}', 'yes'),
(563, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(938, 'product_cat_children', 'a:1:{i:21;a:3:{i:0;i:26;i:1;i:27;i:2;i:28;}}', 'yes'),
(350, 'woocommerce_paypal_settings', 'a:23:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:107:\"Payer avec PayPal, vous pouvez payer avec votre carte de crédit si vous n&rsquo;avez pas de compte PayPal.\";s:5:\"email\";s:26:\"arnaud.malfait89@gmail.com\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:26:\"arnaud.malfait89@gmail.com\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:10:\"page_style\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";}', 'yes'),
(351, 'woocommerce_gateway_order', 'a:4:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;}', 'yes'),
(851, 'woocommerce_free_shipping_4_settings', 'a:3:{s:5:\"title\";s:18:\"Livraison gratuite\";s:8:\"requires\";s:10:\"min_amount\";s:10:\"min_amount\";s:3:\"600\";}', 'yes'),
(731, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(373, '_transient_product-transient-version', '1581589630', 'yes'),
(370, '_transient_product_query-transient-version', '1584107609', 'yes'),
(1044, '_transient_timeout_wc_shipping_method_count_legacy', '1592999216', 'no'),
(1045, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1581590246\";s:5:\"value\";i:3;}', 'no'),
(442, '_transient_orders-transient-version', '1581588266', 'yes'),
(1090, '_transient_timeout_loco_po_fd5fb086707b5804a38e624e702c805a', '1591274156', 'no'),
(1091, '_transient_loco_po_fd5fb086707b5804a38e624e702c805a', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:40:\"languages/themes/twentynineteen-fr_FR.po\";s:5:\"bytes\";i:12024;s:5:\"mtime\";i:1590407302;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:88;s:1:\"p\";i:88;s:1:\"f\";i:0;}}s:1:\"t\";i:1590410156;}', 'no'),
(573, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(1012, '_transient_timeout_wc_product_children_11', '1592999200', 'no'),
(1013, '_transient_wc_product_children_11', 'a:2:{s:3:\"all\";a:4:{i:0;i:12;i:1;i:13;i:2;i:14;i:3;i:15;}s:7:\"visible\";a:4:{i:0;i:12;i:1;i:13;i:2;i:14;i:3;i:15;}}', 'no'),
(730, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(1018, '_transient_timeout_wc_product_children_20', '1592999200', 'no'),
(1019, '_transient_wc_product_children_20', 'a:2:{s:3:\"all\";a:3:{i:0;i:23;i:1;i:24;i:2;i:25;}s:7:\"visible\";a:3:{i:0;i:23;i:1;i:24;i:2;i:25;}}', 'no'),
(1020, '_transient_timeout_wc_var_prices_20', '1592999200', 'no'),
(1021, '_transient_wc_var_prices_20', '{\"version\":\"1581589630\",\"41c0e4e92a8b8b011e5a6b15c2a6a4e7\":{\"price\":{\"23\":\"200.00\",\"24\":\"200.00\",\"25\":\"200.00\"},\"regular_price\":{\"23\":\"200.00\",\"24\":\"200.00\",\"25\":\"200.00\"},\"sale_price\":{\"23\":\"200.00\",\"24\":\"200.00\",\"25\":\"200.00\"}}}', 'no'),
(1036, '_transient_timeout_wc_low_stock_count', '1592999215', 'no'),
(1037, '_transient_wc_low_stock_count', '0', 'no'),
(1016, '_transient_timeout_wc_var_prices_11', '1592999200', 'no'),
(1017, '_transient_wc_var_prices_11', '{\"version\":\"1581589630\",\"41c0e4e92a8b8b011e5a6b15c2a6a4e7\":{\"price\":{\"12\":\"550.00\",\"13\":\"550.00\",\"14\":\"550.00\",\"15\":\"550.00\"},\"regular_price\":{\"12\":\"550.00\",\"13\":\"550.00\",\"14\":\"550.00\",\"15\":\"550.00\"},\"sale_price\":{\"12\":\"550.00\",\"13\":\"550.00\",\"14\":\"550.00\",\"15\":\"550.00\"}}}', 'no'),
(1089, '_transient_loco_po_c1fc13be0b5e4573055f293dbed6aa9d', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:41:\"languages/themes/twentyseventeen-fr_FR.po\";s:5:\"bytes\";i:10871;s:5:\"mtime\";i:1590407302;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:72;s:1:\"p\";i:72;s:1:\"f\";i:0;}}s:1:\"t\";i:1590410156;}', 'no'),
(1107, '_transient_timeout__woocommerce_helper_updates', '1590529984', 'no'),
(1108, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1590486784;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(882, 'recovery_mode_email_last_sent', '1581591022', 'yes'),
(1109, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1590486785;s:7:\"checked\";a:5:{s:15:\"ocin-lite-child\";s:0:\"\";s:9:\"ocin-lite\";s:6:\"1.0.10\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:4:{s:9:\"ocin-lite\";a:6:{s:5:\"theme\";s:9:\"ocin-lite\";s:11:\"new_version\";s:6:\"1.0.21\";s:3:\"url\";s:39:\"https://wordpress.org/themes/ocin-lite/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/ocin-lite.1.0.21.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.5.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.3.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.3.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(1032, '_site_transient_timeout_browser_31f552011cd49d12bc3cd930bb193459', '1591012014', 'no'),
(1033, '_site_transient_browser_31f552011cd49d12bc3cd930bb193459', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"81.0.4044.138\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(881, 'theme_mods_ocin-lite-child', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:25;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(1072, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:26:\"arnaud.malfait89@gmail.com\";s:7:\"version\";s:5:\"5.3.3\";s:9:\"timestamp\";i:1590407304;}', 'no'),
(1110, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1590486785;s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:9:\"hello.php\";s:5:\"1.7.2\";s:23:\"loco-translate/loco.php\";s:5:\"2.3.1\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.9.1\";}s:8:\"response\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:23:\"loco-translate/loco.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:28:\"w.org/plugins/loco-translate\";s:4:\"slug\";s:14:\"loco-translate\";s:6:\"plugin\";s:23:\"loco-translate/loco.php\";s:11:\"new_version\";s:5:\"2.4.0\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/loco-translate/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/loco-translate.2.4.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/loco-translate/assets/icon-256x256.png?rev=1000676\";s:2:\"1x\";s:67:\"https://ps.w.org/loco-translate/assets/icon-128x128.png?rev=1000676\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/loco-translate/assets/banner-772x250.jpg?rev=745046\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:80:\"<ul>\n<li>Various improvements including automatic translation support</li>\n</ul>\";s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"4.1.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.4.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1111, '_site_transient_timeout_available_translations', '1590497585', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1112, '_site_transient_available_translations', 'a:121:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2019-12-05 08:33:42\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.3/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-15 22:12:04\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.3/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.14\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.14/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-01-22 10:57:09\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:6:\"4.8.13\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.8.13/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-16 06:28:44\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.3/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-17 13:16:49\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-21 11:16:11\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.3/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-01-27 14:39:02\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-20 13:05:39\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.3/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2019-12-15 20:45:17\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-19 20:02:26\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-14 12:29:40\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.3.3/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-14 12:29:22\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2019-12-12 08:02:09\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2019-12-12 08:02:56\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.3.3/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-14 16:45:40\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.3/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2019-11-28 17:04:17\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-14 11:34:33\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-14 11:06:09\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-02-14 09:42:12\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-02-14 09:40:29\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-02-14 12:06:57\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.3/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-01-23 23:02:03\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-14 12:19:57\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-22 07:13:04\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-14 23:55:02\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-02-10 15:47:49\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-12 04:43:11\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.1/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-14 19:38:07\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-14 11:05:24\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:9:\"5.0-beta3\";s:7:\"updated\";s:19:\"2018-11-28 16:04:33\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.0-beta3/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2019-12-08 17:55:03\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.3/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-15 22:40:45\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-19 12:06:24\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.3/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-04-16 22:07:17\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-14 12:06:48\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-15 06:20:37\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-01-20 16:09:08\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-02-24 15:34:57\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.3/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-14 11:36:19\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.3/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-03-19 14:36:40\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-01-04 22:54:51\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2019-12-20 17:02:39\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-19 07:43:57\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.3/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-03-25 11:03:02\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-02-28 21:59:12\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.3/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 07:34:10\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.14\";s:7:\"updated\";s:19:\"2019-12-04 12:22:34\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.14/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-21 16:29:57\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-18 14:32:44\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.9/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.2.6\";s:7:\"updated\";s:19:\"2019-10-19 19:23:46\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.6/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:6:\"4.7.15\";s:7:\"updated\";s:19:\"2019-05-10 10:24:08\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.15/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-08 12:57:25\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.8.13\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.13/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-21 22:42:38\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-14 13:48:33\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-14 13:49:28\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.3.3/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-17 14:42:49\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-01-01 08:53:00\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-21 12:29:29\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-01-08 13:01:50\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.3.3/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-16 02:31:14\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-14 12:23:35\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2019-12-14 08:20:00\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-26 06:42:00\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-14 11:09:30\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:3:\"5.3\";s:7:\"updated\";s:19:\"2019-11-12 04:37:38\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/5.3/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:2:\"sd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2019-12-02 07:46:23\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-06-26 11:40:37\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.3/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2019-12-14 22:44:44\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.3/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2019-12-15 22:50:02\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-14 12:02:50\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"5.2.6\";s:7:\"updated\";s:19:\"2019-10-22 00:19:41\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.6/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.2.6\";s:7:\"updated\";s:19:\"2020-05-05 06:24:37\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.6/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-15 08:47:13\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-14 12:47:12\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.3/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.1.5\";s:7:\"updated\";s:19:\"2020-04-09 10:48:08\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.1.5/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"5.0.9\";s:7:\"updated\";s:19:\"2019-01-23 12:32:40\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.9/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2019-12-07 15:52:24\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.3/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2019-12-08 21:26:25\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-17 04:45:07\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-03-08 12:12:22\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no'),
(1058, '_transient_timeout_loco_po_d0414f791131b4dc9709a1f36f9247ec', '1591271305', 'no'),
(1059, '_transient_loco_po_d0414f791131b4dc9709a1f36f9247ec', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:18:\"languages/fr_FR.po\";s:5:\"bytes\";i:618779;s:5:\"mtime\";i:1590407302;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:3706;s:1:\"p\";i:3706;s:1:\"f\";i:0;}}s:1:\"t\";i:1590407305;}', 'no'),
(1060, '_transient_timeout_loco_po_c2823fee5468f76a10b36b98e2d80def', '1591271305', 'no'),
(1061, '_transient_loco_po_c2823fee5468f76a10b36b98e2d80def', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:24:\"languages/admin-fr_FR.po\";s:5:\"bytes\";i:673149;s:5:\"mtime\";i:1590407302;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:2965;s:1:\"p\";i:2965;s:1:\"f\";i:0;}}s:1:\"t\";i:1590407305;}', 'no'),
(1062, '_transient_timeout_loco_po_e156affa0d89abb60cddabdf98aefb8a', '1591271305', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1063, '_transient_loco_po_e156affa0d89abb60cddabdf98aefb8a', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:32:\"languages/admin-network-fr_FR.po\";s:5:\"bytes\";i:66980;s:5:\"mtime\";i:1590407302;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:316;s:1:\"p\";i:316;s:1:\"f\";i:0;}}s:1:\"t\";i:1590407305;}', 'no'),
(1064, '_transient_timeout_loco_po_d054f87a670e21933d9a1667b6bcdefb', '1591271305', 'no'),
(1065, '_transient_loco_po_d054f87a670e21933d9a1667b6bcdefb', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:36:\"languages/continents-cities-fr_FR.po\";s:5:\"bytes\";i:44433;s:5:\"mtime\";i:1590407302;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:524;s:1:\"p\";i:521;s:1:\"f\";i:0;}}s:1:\"t\";i:1590407305;}', 'no'),
(1116, '_transient_doing_cron', '1590486906.7830550670623779296875', 'yes'),
(1101, '_transient_timeout__woocommerce_helper_subscriptions', '1590487684', 'no'),
(1086, '_transient_timeout_loco_po_01e2cf2f1846222df3cd9a970c0bcb7f', '1591274156', 'no'),
(1087, '_transient_loco_po_01e2cf2f1846222df3cd9a970c0bcb7f', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:38:\"languages/plugins/woocommerce-fr_FR.po\";s:5:\"bytes\";i:1284725;s:5:\"mtime\";i:1581579945;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:6371;s:1:\"p\";i:6371;s:1:\"f\";i:0;}}s:1:\"t\";i:1590410156;}', 'no'),
(1102, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no');

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
) ENGINE=MyISAM AUTO_INCREMENT=440 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(5, 6, '_wp_attached_file', 'woocommerce-placeholder.png'),
(6, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"ocin_lite_post\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-853x480.png\";s:5:\"width\";i:853;s:6:\"height\";i:480;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"ocin_lite_post_square\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-457x457.png\";s:5:\"width\";i:457;s:6:\"height\";i:457;s:9:\"mime-type\";s:9:\"image/png\";}s:31:\"ocin_lite_shop_catalog_portrait\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-348x510.png\";s:5:\"width\";i:348;s:6:\"height\";i:510;s:9:\"mime-type\";s:9:\"image/png\";}s:30:\"ocin_lite_shop_single_portrait\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-581x851.png\";s:5:\"width\";i:581;s:6:\"height\";i:851;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 11, '_edit_last', '1'),
(8, 11, '_edit_lock', '1584117681:1'),
(9, 11, '_portrait_image', 'no'),
(10, 11, '_sku', 'canape1'),
(96, 14, '_regular_price', '550'),
(12, 11, 'total_sales', '1'),
(13, 11, '_tax_status', 'taxable'),
(14, 11, '_tax_class', ''),
(15, 11, '_manage_stock', 'no'),
(16, 11, '_backorders', 'no'),
(17, 11, '_sold_individually', 'no'),
(18, 11, '_virtual', 'no'),
(19, 11, '_downloadable', 'no'),
(20, 11, '_download_limit', '-1'),
(21, 11, '_download_expiry', '-1'),
(22, 11, '_stock', NULL),
(23, 11, '_stock_status', 'instock'),
(24, 11, '_wc_average_rating', '0'),
(25, 11, '_wc_review_count', '0'),
(26, 11, '_product_version', '3.9.1'),
(27, 11, '_product_attributes', 'a:1:{s:10:\"pa_couleur\";a:6:{s:4:\"name\";s:10:\"pa_couleur\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"1\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(28, 12, '_variation_description', ''),
(29, 12, 'total_sales', '0'),
(30, 12, '_tax_status', 'taxable'),
(31, 12, '_tax_class', 'parent'),
(32, 12, '_manage_stock', 'yes'),
(33, 12, '_backorders', 'no'),
(34, 12, '_sold_individually', 'no'),
(35, 12, '_virtual', 'no'),
(36, 12, '_downloadable', 'no'),
(37, 12, '_download_limit', '-1'),
(38, 12, '_download_expiry', '-1'),
(39, 12, '_stock', '50'),
(40, 12, '_stock_status', 'instock'),
(41, 12, '_wc_average_rating', '0'),
(42, 12, '_wc_review_count', '0'),
(43, 12, 'attribute_pa_couleur', 'bleu-clair'),
(44, 12, '_product_version', '3.9.1'),
(45, 13, '_variation_description', ''),
(46, 13, 'total_sales', '0'),
(47, 13, '_tax_status', 'taxable'),
(48, 13, '_tax_class', 'parent'),
(49, 13, '_manage_stock', 'yes'),
(50, 13, '_backorders', 'no'),
(51, 13, '_sold_individually', 'no'),
(52, 13, '_virtual', 'no'),
(53, 13, '_downloadable', 'no'),
(54, 13, '_download_limit', '-1'),
(55, 13, '_download_expiry', '-1'),
(56, 13, '_stock', '49.000000'),
(57, 13, '_stock_status', 'instock'),
(58, 13, '_wc_average_rating', '0'),
(59, 13, '_wc_review_count', '0'),
(60, 13, 'attribute_pa_couleur', 'bleu-fonce'),
(61, 13, '_product_version', '3.9.1'),
(62, 14, '_variation_description', ''),
(63, 14, 'total_sales', '0'),
(64, 14, '_tax_status', 'taxable'),
(65, 14, '_tax_class', 'parent'),
(66, 14, '_manage_stock', 'yes'),
(67, 14, '_backorders', 'no'),
(68, 14, '_sold_individually', 'no'),
(69, 14, '_virtual', 'no'),
(70, 14, '_downloadable', 'no'),
(71, 14, '_download_limit', '-1'),
(72, 14, '_download_expiry', '-1'),
(73, 14, '_stock', '50'),
(74, 14, '_stock_status', 'instock'),
(75, 14, '_wc_average_rating', '0'),
(76, 14, '_wc_review_count', '0'),
(77, 14, 'attribute_pa_couleur', 'gris'),
(78, 14, '_product_version', '3.9.1'),
(79, 15, '_variation_description', ''),
(80, 15, 'total_sales', '0'),
(81, 15, '_tax_status', 'taxable'),
(82, 15, '_tax_class', 'parent'),
(83, 15, '_manage_stock', 'yes'),
(84, 15, '_backorders', 'no'),
(85, 15, '_sold_individually', 'no'),
(86, 15, '_virtual', 'no'),
(87, 15, '_downloadable', 'no'),
(88, 15, '_download_limit', '-1'),
(89, 15, '_download_expiry', '-1'),
(90, 15, '_stock', '50'),
(91, 15, '_stock_status', 'instock'),
(92, 15, '_wc_average_rating', '0'),
(93, 15, '_wc_review_count', '0'),
(94, 15, 'attribute_pa_couleur', 'rose'),
(95, 15, '_product_version', '3.9.1'),
(97, 14, '_price', '550'),
(98, 15, '_regular_price', '550'),
(99, 15, '_price', '550'),
(100, 12, '_regular_price', '550'),
(101, 12, '_price', '550'),
(102, 13, '_regular_price', '550'),
(103, 13, '_price', '550'),
(411, 11, '_price', '550'),
(113, 16, '_wp_attached_file', '2020/02/canape_bleu_clair.jpg'),
(114, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:641;s:6:\"height\";i:641;s:4:\"file\";s:29:\"2020/02/canape_bleu_clair.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"canape_bleu_clair-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"canape_bleu_clair-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"canape_bleu_clair-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"canape_bleu_clair-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"canape_bleu_clair-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"ocin_lite_post\";a:4:{s:4:\"file\";s:29:\"canape_bleu_clair-641x480.jpg\";s:5:\"width\";i:641;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"ocin_lite_post_square\";a:4:{s:4:\"file\";s:29:\"canape_bleu_clair-457x457.jpg\";s:5:\"width\";i:457;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:31:\"ocin_lite_shop_catalog_portrait\";a:4:{s:4:\"file\";s:29:\"canape_bleu_clair-348x510.jpg\";s:5:\"width\";i:348;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"ocin_lite_shop_single_portrait\";a:4:{s:4:\"file\";s:29:\"canape_bleu_clair-581x641.jpg\";s:5:\"width\";i:581;s:6:\"height\";i:641;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:29:\"canape_bleu_clair-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"canape_bleu_clair-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"canape_bleu_clair-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(115, 17, '_wp_attached_file', '2020/02/canape_bleu_fonce.jpg'),
(116, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:641;s:6:\"height\";i:641;s:4:\"file\";s:29:\"2020/02/canape_bleu_fonce.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"canape_bleu_fonce-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"canape_bleu_fonce-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"canape_bleu_fonce-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"canape_bleu_fonce-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"canape_bleu_fonce-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"ocin_lite_post\";a:4:{s:4:\"file\";s:29:\"canape_bleu_fonce-641x480.jpg\";s:5:\"width\";i:641;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"ocin_lite_post_square\";a:4:{s:4:\"file\";s:29:\"canape_bleu_fonce-457x457.jpg\";s:5:\"width\";i:457;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:31:\"ocin_lite_shop_catalog_portrait\";a:4:{s:4:\"file\";s:29:\"canape_bleu_fonce-348x510.jpg\";s:5:\"width\";i:348;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"ocin_lite_shop_single_portrait\";a:4:{s:4:\"file\";s:29:\"canape_bleu_fonce-581x641.jpg\";s:5:\"width\";i:581;s:6:\"height\";i:641;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:29:\"canape_bleu_fonce-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"canape_bleu_fonce-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"canape_bleu_fonce-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(117, 18, '_wp_attached_file', '2020/02/canape_gris.jpg'),
(118, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:641;s:6:\"height\";i:641;s:4:\"file\";s:23:\"2020/02/canape_gris.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"canape_gris-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"canape_gris-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"canape_gris-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"canape_gris-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"canape_gris-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"ocin_lite_post\";a:4:{s:4:\"file\";s:23:\"canape_gris-641x480.jpg\";s:5:\"width\";i:641;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"ocin_lite_post_square\";a:4:{s:4:\"file\";s:23:\"canape_gris-457x457.jpg\";s:5:\"width\";i:457;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:31:\"ocin_lite_shop_catalog_portrait\";a:4:{s:4:\"file\";s:23:\"canape_gris-348x510.jpg\";s:5:\"width\";i:348;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"ocin_lite_shop_single_portrait\";a:4:{s:4:\"file\";s:23:\"canape_gris-581x641.jpg\";s:5:\"width\";i:581;s:6:\"height\";i:641;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:23:\"canape_gris-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"canape_gris-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"canape_gris-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(119, 19, '_wp_attached_file', '2020/02/canape_rose.jpg'),
(120, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:641;s:6:\"height\";i:641;s:4:\"file\";s:23:\"2020/02/canape_rose.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"canape_rose-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"canape_rose-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"canape_rose-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"canape_rose-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"canape_rose-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"ocin_lite_post\";a:4:{s:4:\"file\";s:23:\"canape_rose-641x480.jpg\";s:5:\"width\";i:641;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"ocin_lite_post_square\";a:4:{s:4:\"file\";s:23:\"canape_rose-457x457.jpg\";s:5:\"width\";i:457;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:31:\"ocin_lite_shop_catalog_portrait\";a:4:{s:4:\"file\";s:23:\"canape_rose-348x510.jpg\";s:5:\"width\";i:348;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"ocin_lite_shop_single_portrait\";a:4:{s:4:\"file\";s:23:\"canape_rose-581x641.jpg\";s:5:\"width\";i:581;s:6:\"height\";i:641;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:23:\"canape_rose-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"canape_rose-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"canape_rose-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(121, 12, '_thumbnail_id', '16'),
(122, 13, '_thumbnail_id', '17'),
(123, 14, '_thumbnail_id', '18'),
(124, 15, '_thumbnail_id', '19'),
(126, 11, '_thumbnail_id', '16'),
(127, 11, '_product_image_gallery', '17,18,19'),
(128, 20, '_edit_last', '1'),
(129, 20, '_edit_lock', '1581589012:1'),
(130, 20, 'total_sales', '0'),
(131, 20, '_tax_status', 'taxable'),
(132, 20, '_tax_class', ''),
(133, 20, '_manage_stock', 'no'),
(134, 20, '_backorders', 'no'),
(135, 20, '_sold_individually', 'no'),
(136, 20, '_virtual', 'no'),
(137, 20, '_downloadable', 'no'),
(138, 20, '_download_limit', '-1'),
(139, 20, '_download_expiry', '-1'),
(140, 20, '_stock', NULL),
(141, 20, '_stock_status', 'instock'),
(142, 20, '_wc_average_rating', '0'),
(143, 20, '_wc_review_count', '0'),
(144, 20, '_product_version', '3.9.1'),
(145, 20, '_portrait_image', 'no'),
(146, 20, '_product_attributes', 'a:1:{s:10:\"pa_couleur\";a:6:{s:4:\"name\";s:10:\"pa_couleur\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"1\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(195, 23, '_wc_review_count', '0'),
(194, 23, '_wc_average_rating', '0'),
(192, 23, '_stock', '50'),
(193, 23, '_stock_status', 'instock'),
(191, 23, '_download_expiry', '-1'),
(190, 23, '_download_limit', '-1'),
(189, 23, '_downloadable', 'no'),
(188, 23, '_virtual', 'no'),
(187, 23, '_sold_individually', 'no'),
(186, 23, '_backorders', 'no'),
(185, 23, '_manage_stock', 'yes'),
(184, 23, '_tax_class', 'parent'),
(183, 23, '_tax_status', 'taxable'),
(182, 23, 'total_sales', '0'),
(181, 23, '_variation_description', ''),
(196, 23, 'attribute_pa_couleur', 'bleu'),
(197, 23, '_product_version', '3.9.1'),
(198, 24, '_variation_description', ''),
(199, 24, 'total_sales', '0'),
(200, 24, '_tax_status', 'taxable'),
(201, 24, '_tax_class', 'parent'),
(202, 24, '_manage_stock', 'yes'),
(203, 24, '_backorders', 'no'),
(204, 24, '_sold_individually', 'no'),
(205, 24, '_virtual', 'no'),
(206, 24, '_downloadable', 'no'),
(207, 24, '_download_limit', '-1'),
(208, 24, '_download_expiry', '-1'),
(209, 24, '_stock', '50'),
(210, 24, '_stock_status', 'instock'),
(211, 24, '_wc_average_rating', '0'),
(212, 24, '_wc_review_count', '0'),
(213, 24, 'attribute_pa_couleur', 'gris'),
(214, 24, '_product_version', '3.9.1'),
(215, 25, '_variation_description', ''),
(216, 25, 'total_sales', '0'),
(217, 25, '_tax_status', 'taxable'),
(218, 25, '_tax_class', 'parent'),
(219, 25, '_manage_stock', 'yes'),
(220, 25, '_backorders', 'no'),
(221, 25, '_sold_individually', 'no'),
(222, 25, '_virtual', 'no'),
(223, 25, '_downloadable', 'no'),
(224, 25, '_download_limit', '-1'),
(225, 25, '_download_expiry', '-1'),
(226, 25, '_stock', '50'),
(227, 25, '_stock_status', 'instock'),
(228, 25, '_wc_average_rating', '0'),
(229, 25, '_wc_review_count', '0'),
(230, 25, 'attribute_pa_couleur', 'jaune'),
(231, 25, '_product_version', '3.9.1'),
(232, 23, '_regular_price', '200'),
(233, 23, '_price', '200'),
(234, 24, '_regular_price', '200'),
(235, 24, '_price', '200'),
(236, 25, '_regular_price', '200'),
(237, 25, '_price', '200'),
(243, 20, '_price', '200'),
(244, 26, '_wp_attached_file', '2020/02/chaise_bleu.jpg'),
(245, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:641;s:6:\"height\";i:641;s:4:\"file\";s:23:\"2020/02/chaise_bleu.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"chaise_bleu-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"chaise_bleu-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"chaise_bleu-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"chaise_bleu-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"chaise_bleu-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"ocin_lite_post\";a:4:{s:4:\"file\";s:23:\"chaise_bleu-641x480.jpg\";s:5:\"width\";i:641;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"ocin_lite_post_square\";a:4:{s:4:\"file\";s:23:\"chaise_bleu-457x457.jpg\";s:5:\"width\";i:457;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:31:\"ocin_lite_shop_catalog_portrait\";a:4:{s:4:\"file\";s:23:\"chaise_bleu-348x510.jpg\";s:5:\"width\";i:348;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"ocin_lite_shop_single_portrait\";a:4:{s:4:\"file\";s:23:\"chaise_bleu-581x641.jpg\";s:5:\"width\";i:581;s:6:\"height\";i:641;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:23:\"chaise_bleu-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"chaise_bleu-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"chaise_bleu-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(246, 27, '_wp_attached_file', '2020/02/chaise_gris.jpg'),
(247, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:641;s:6:\"height\";i:641;s:4:\"file\";s:23:\"2020/02/chaise_gris.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"chaise_gris-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"chaise_gris-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"chaise_gris-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"chaise_gris-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"chaise_gris-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"ocin_lite_post\";a:4:{s:4:\"file\";s:23:\"chaise_gris-641x480.jpg\";s:5:\"width\";i:641;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"ocin_lite_post_square\";a:4:{s:4:\"file\";s:23:\"chaise_gris-457x457.jpg\";s:5:\"width\";i:457;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:31:\"ocin_lite_shop_catalog_portrait\";a:4:{s:4:\"file\";s:23:\"chaise_gris-348x510.jpg\";s:5:\"width\";i:348;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"ocin_lite_shop_single_portrait\";a:4:{s:4:\"file\";s:23:\"chaise_gris-581x641.jpg\";s:5:\"width\";i:581;s:6:\"height\";i:641;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:23:\"chaise_gris-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"chaise_gris-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"chaise_gris-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(248, 28, '_wp_attached_file', '2020/02/chaise_jaune.jpg'),
(249, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:641;s:6:\"height\";i:641;s:4:\"file\";s:24:\"2020/02/chaise_jaune.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"chaise_jaune-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"chaise_jaune-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"chaise_jaune-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"chaise_jaune-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"chaise_jaune-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"ocin_lite_post\";a:4:{s:4:\"file\";s:24:\"chaise_jaune-641x480.jpg\";s:5:\"width\";i:641;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"ocin_lite_post_square\";a:4:{s:4:\"file\";s:24:\"chaise_jaune-457x457.jpg\";s:5:\"width\";i:457;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:31:\"ocin_lite_shop_catalog_portrait\";a:4:{s:4:\"file\";s:24:\"chaise_jaune-348x510.jpg\";s:5:\"width\";i:348;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"ocin_lite_shop_single_portrait\";a:4:{s:4:\"file\";s:24:\"chaise_jaune-581x641.jpg\";s:5:\"width\";i:581;s:6:\"height\";i:641;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:24:\"chaise_jaune-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"chaise_jaune-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"chaise_jaune-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(250, 20, '_thumbnail_id', '28'),
(251, 20, '_product_image_gallery', '26,27'),
(252, 29, '_edit_last', '1'),
(253, 29, '_edit_lock', '1584117534:1'),
(254, 30, '_wp_attached_file', '2020/02/table_1.jpg'),
(255, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:641;s:6:\"height\";i:641;s:4:\"file\";s:19:\"2020/02/table_1.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"table_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"table_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"table_1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"table_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"table_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"ocin_lite_post\";a:4:{s:4:\"file\";s:19:\"table_1-641x480.jpg\";s:5:\"width\";i:641;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"ocin_lite_post_square\";a:4:{s:4:\"file\";s:19:\"table_1-457x457.jpg\";s:5:\"width\";i:457;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:31:\"ocin_lite_shop_catalog_portrait\";a:4:{s:4:\"file\";s:19:\"table_1-348x510.jpg\";s:5:\"width\";i:348;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"ocin_lite_shop_single_portrait\";a:4:{s:4:\"file\";s:19:\"table_1-581x641.jpg\";s:5:\"width\";i:581;s:6:\"height\";i:641;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"table_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"table_1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"table_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(256, 31, '_wp_attached_file', '2020/02/table_2.jpg'),
(257, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:641;s:6:\"height\";i:641;s:4:\"file\";s:19:\"2020/02/table_2.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"table_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"table_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"table_2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"table_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"table_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"ocin_lite_post\";a:4:{s:4:\"file\";s:19:\"table_2-641x480.jpg\";s:5:\"width\";i:641;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"ocin_lite_post_square\";a:4:{s:4:\"file\";s:19:\"table_2-457x457.jpg\";s:5:\"width\";i:457;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:31:\"ocin_lite_shop_catalog_portrait\";a:4:{s:4:\"file\";s:19:\"table_2-348x510.jpg\";s:5:\"width\";i:348;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"ocin_lite_shop_single_portrait\";a:4:{s:4:\"file\";s:19:\"table_2-581x641.jpg\";s:5:\"width\";i:581;s:6:\"height\";i:641;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"table_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"table_2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"table_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(258, 32, '_wp_attached_file', '2020/02/table_3.jpg'),
(259, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:641;s:6:\"height\";i:641;s:4:\"file\";s:19:\"2020/02/table_3.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"table_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"table_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"table_3-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"table_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"table_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"ocin_lite_post\";a:4:{s:4:\"file\";s:19:\"table_3-641x480.jpg\";s:5:\"width\";i:641;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"ocin_lite_post_square\";a:4:{s:4:\"file\";s:19:\"table_3-457x457.jpg\";s:5:\"width\";i:457;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:31:\"ocin_lite_shop_catalog_portrait\";a:4:{s:4:\"file\";s:19:\"table_3-348x510.jpg\";s:5:\"width\";i:348;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"ocin_lite_shop_single_portrait\";a:4:{s:4:\"file\";s:19:\"table_3-581x641.jpg\";s:5:\"width\";i:581;s:6:\"height\";i:641;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"table_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"table_3-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"table_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(260, 29, '_thumbnail_id', '30'),
(261, 29, '_portrait_image', 'no'),
(262, 29, '_sku', 'table1'),
(263, 29, 'total_sales', '1'),
(264, 29, '_tax_status', 'taxable'),
(265, 29, '_tax_class', ''),
(266, 29, '_manage_stock', 'yes'),
(267, 29, '_backorders', 'no'),
(268, 29, '_sold_individually', 'no'),
(269, 29, '_virtual', 'no'),
(270, 29, '_downloadable', 'no'),
(271, 29, '_download_limit', '-1'),
(272, 29, '_download_expiry', '-1'),
(273, 29, '_stock', '49.000000'),
(274, 29, '_stock_status', 'instock'),
(275, 29, '_wc_average_rating', '0'),
(276, 29, '_wc_review_count', '0'),
(277, 29, '_product_version', '3.9.1'),
(278, 29, '_product_image_gallery', '31,32'),
(279, 20, '_sku', 'chaise1'),
(320, 40, '_customer_ip_address', '::1'),
(319, 40, '_payment_method_title', 'Virement bancaire'),
(318, 40, '_payment_method', 'bacs'),
(317, 40, '_customer_user', '1'),
(316, 40, '_order_key', 'wc_order_DMYKmE9ypf914'),
(303, 37, '_edit_lock', '1581585333:1'),
(304, 29, '_regular_price', '250'),
(305, 29, '_sale_price', '180'),
(306, 29, '_price', '180'),
(307, 39, '_menu_item_type', 'post_type'),
(308, 39, '_menu_item_menu_item_parent', '0'),
(309, 39, '_menu_item_object_id', '7'),
(310, 39, '_menu_item_object', 'page'),
(311, 39, '_menu_item_target', ''),
(312, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(313, 39, '_menu_item_xfn', ''),
(314, 39, '_menu_item_url', ''),
(321, 40, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36'),
(322, 40, '_created_via', 'checkout'),
(323, 40, '_cart_hash', '3116621606e4d89762c0d20f4ed71e1d'),
(324, 40, '_billing_first_name', 'Arnaud'),
(325, 40, '_billing_last_name', 'MALFAIT'),
(326, 40, '_billing_company', 'INDEED'),
(327, 40, '_billing_address_1', '131 Chaussée Jules César'),
(328, 40, '_billing_city', 'Beauchamp'),
(329, 40, '_billing_postcode', '95250'),
(330, 40, '_billing_country', 'FR'),
(331, 40, '_billing_email', 'arnaud.malfait@hotmail.fr'),
(332, 40, '_billing_phone', '0629948102'),
(333, 40, '_shipping_first_name', 'Arnaud'),
(334, 40, '_shipping_last_name', 'MALFAIT'),
(335, 40, '_shipping_company', 'INDEED'),
(336, 40, '_shipping_address_1', '131 Chaussée Jules César'),
(337, 40, '_shipping_city', 'Beauchamp'),
(338, 40, '_shipping_postcode', '95250'),
(339, 40, '_shipping_country', 'FR'),
(340, 40, '_order_currency', 'EUR'),
(341, 40, '_cart_discount', '0'),
(342, 40, '_cart_discount_tax', '0'),
(343, 40, '_order_shipping', '20.00'),
(344, 40, '_order_shipping_tax', '4'),
(345, 40, '_order_tax', '30'),
(346, 40, '_order_total', '204.00'),
(347, 40, '_order_version', '3.9.1'),
(348, 40, '_prices_include_tax', 'yes'),
(349, 40, '_billing_address_index', 'Arnaud MALFAIT INDEED 131 Chaussée Jules César  Beauchamp  95250 FR arnaud.malfait@hotmail.fr 0629948102'),
(350, 40, '_shipping_address_index', 'Arnaud MALFAIT INDEED 131 Chaussée Jules César  Beauchamp  95250 FR'),
(351, 40, 'is_vat_exempt', 'no'),
(352, 40, '_recorded_sales', 'yes'),
(353, 40, '_recorded_coupon_usage_counts', 'yes'),
(354, 40, '_order_stock_reduced', 'yes'),
(355, 41, '_edit_last', '1'),
(356, 41, '_edit_lock', '1581588060:1'),
(357, 41, 'discount_type', 'fixed_product'),
(358, 41, 'coupon_amount', '100'),
(359, 41, 'individual_use', 'no'),
(360, 41, 'product_ids', '11'),
(361, 41, 'usage_limit', '1'),
(362, 41, 'usage_limit_per_user', '1'),
(363, 41, 'limit_usage_to_x_items', '1'),
(364, 41, 'usage_count', '1'),
(365, 41, 'date_expires', NULL),
(366, 41, 'free_shipping', 'no'),
(367, 41, 'exclude_sale_items', 'no'),
(369, 41, '_used_by', '1'),
(370, 42, '_order_key', 'wc_order_GPnPuuWXlGbnt'),
(371, 42, '_customer_user', '1'),
(372, 42, '_payment_method', 'bacs'),
(373, 42, '_payment_method_title', 'Virement bancaire'),
(374, 42, '_customer_ip_address', '::1'),
(375, 42, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36'),
(376, 42, '_created_via', 'checkout'),
(377, 42, '_cart_hash', 'fec16c937003c968766406f689f87891'),
(378, 42, '_billing_first_name', 'Arnaud'),
(379, 42, '_billing_last_name', 'MALFAIT'),
(380, 42, '_billing_company', 'INDEED'),
(381, 42, '_billing_address_1', '131 Chaussée Jules César'),
(382, 42, '_billing_city', 'Beauchamp'),
(383, 42, '_billing_postcode', '95250'),
(384, 42, '_billing_country', 'FR'),
(385, 42, '_billing_email', 'arnaud.malfait@hotmail.fr'),
(386, 42, '_billing_phone', '0629948102'),
(387, 42, '_shipping_first_name', 'Arnaud'),
(388, 42, '_shipping_last_name', 'MALFAIT'),
(389, 42, '_shipping_company', 'INDEED'),
(390, 42, '_shipping_address_1', '131 Chaussée Jules César'),
(391, 42, '_shipping_city', 'Beauchamp'),
(392, 42, '_shipping_postcode', '95250'),
(393, 42, '_shipping_country', 'FR'),
(394, 42, '_order_currency', 'EUR'),
(395, 42, '_cart_discount', '83.33'),
(396, 42, '_cart_discount_tax', '16.67'),
(397, 42, '_order_shipping', '20.00'),
(398, 42, '_order_shipping_tax', '4'),
(399, 42, '_order_tax', '75'),
(400, 42, '_order_total', '474.00'),
(401, 42, '_order_version', '3.9.1'),
(402, 42, '_prices_include_tax', 'yes'),
(403, 42, '_billing_address_index', 'Arnaud MALFAIT INDEED 131 Chaussée Jules César  Beauchamp  95250 FR arnaud.malfait@hotmail.fr 0629948102'),
(404, 42, '_shipping_address_index', 'Arnaud MALFAIT INDEED 131 Chaussée Jules César  Beauchamp  95250 FR'),
(410, 42, '_order_stock_reduced', 'yes'),
(407, 42, 'is_vat_exempt', 'no'),
(408, 42, '_recorded_sales', 'yes'),
(409, 42, '_recorded_coupon_usage_counts', 'yes'),
(439, 7, '_edit_lock', '1581590270:1');

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
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-02-12 16:50:38', '2020-02-12 15:50:38', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2020-02-12 16:50:38', '2020-02-12 15:50:38', '', 0, 'http://localhost/meubles&co/?p=1', 0, 'post', '', 1),
(3, 1, '2020-02-12 16:50:38', '2020-02-12 15:50:38', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : http://localhost/meubles&co.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2020-02-12 16:50:38', '2020-02-12 15:50:38', '', 0, 'http://localhost/meubles&co/?page_id=3', 0, 'page', '', 0),
(6, 1, '2020-02-13 08:49:48', '2020-02-13 07:49:48', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-02-13 08:49:48', '2020-02-13 07:49:48', '', 0, 'http://localhost/meubles&amp;co/wp-content/uploads/2020/02/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2020-02-13 08:53:02', '2020-02-13 07:53:02', '', 'Boutique', '', 'publish', 'closed', 'closed', '', 'boutique', '', '', '2020-02-13 08:53:02', '2020-02-13 07:53:02', '', 0, 'http://localhost/meubles&co/boutique/', 0, 'page', '', 0),
(8, 1, '2020-02-13 08:53:02', '2020-02-13 07:53:02', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Panier', '', 'publish', 'closed', 'closed', '', 'panier', '', '', '2020-02-13 08:53:02', '2020-02-13 07:53:02', '', 0, 'http://localhost/meubles&co/panier/', 0, 'page', '', 0),
(9, 1, '2020-02-13 08:53:02', '2020-02-13 07:53:02', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Validation de la commande', '', 'publish', 'closed', 'closed', '', 'commande', '', '', '2020-02-13 08:53:02', '2020-02-13 07:53:02', '', 0, 'http://localhost/meubles&co/commande/', 0, 'page', '', 0),
(10, 1, '2020-02-13 08:53:02', '2020-02-13 07:53:02', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'Mon compte', '', 'publish', 'closed', 'closed', '', 'mon-compte', '', '', '2020-02-13 08:53:02', '2020-02-13 07:53:02', '', 0, 'http://localhost/meubles&co/mon-compte/', 0, 'page', '', 0),
(11, 1, '2020-02-13 09:30:14', '2020-02-13 08:30:14', '<p class=\"range-expandable__paragraf no-margin\">Les coussins d\'assise garnis de mousse haute résilience et de rembourrage de fibres polyester offrent un soutien confortable et retrouvent leur forme quand vous vous levez.</p>\r\n<p class=\"range-expandable__paragraf no-margin\">Coussins du dossier réversibles garnis fibres de polyester, offrent un confort moelleux pour le dos.</p>\r\n<p class=\"range-expandable__paragraf no-margin\">La housse est facile à entretenir car elle est amovible et lavable en machine.</p>\r\n<p class=\"range-expandable__paragraf no-margin\">Une gamme de housses coordonnées vous permet de donner facilement un nouveau look à votre meuble.</p>\r\n<p class=\"range-expandable__paragraf no-margin\">Garantie 10 ans. Détails des conditions dans le livret Garantie.</p>\r\n<p class=\"range-expandable__paragraf no-margin\">La résistance à l\'abrasion du tissu a été testée sur 30 000 cycles. Pour être adapté à un usage domestique quotidien, un tissu doit résister à au moins 15 000 cycles.</p>\r\n<p class=\"range-expandable__paragraf no-margin\">Le revêtement a un niveau de résistance à la lumière de 5-6 sur une échelle de 1 à 8. Selon les normes du secteur, un textile est adapté à un usage domestique si son niveau de résistance est de 4 ou plus.</p>', 'Canapé Louis', '<p class=\"range-expandable__paragraf no-margin\">Les coussins d\'assise garnis de mousse haute résilience et de rembourrage de fibres polyester offrent un soutien confortable et retrouvent leur forme quand vous vous levez.</p>\r\n<p class=\"range-expandable__paragraf no-margin\"></p>', 'publish', 'open', 'closed', '', 'canape-louis', '', '', '2020-02-13 11:27:10', '2020-02-13 10:27:10', '', 0, 'http://localhost/meubles&#038;co/?post_type=product&#038;p=11', 0, 'product', '', 0),
(12, 1, '2020-02-13 09:32:05', '2020-02-13 08:32:05', '', 'Canapé Louis - Bleu clair', 'Couleur: Bleu clair', 'publish', 'closed', 'closed', '', 'canape-louis-bleu-clair', '', '', '2020-02-13 09:37:44', '2020-02-13 08:37:44', '', 11, 'http://localhost/meubles&co/?post_type=product_variation&p=12', 1, 'product_variation', '', 0),
(13, 1, '2020-02-13 09:32:05', '2020-02-13 08:32:05', '', 'Canapé Louis - Bleu foncé', 'Couleur: Bleu foncé', 'publish', 'closed', 'closed', '', 'canape-louis-bleu-fonce', '', '', '2020-02-13 11:04:23', '2020-02-13 10:04:23', '', 11, 'http://localhost/meubles&co/?post_type=product_variation&p=13', 2, 'product_variation', '', 0),
(14, 1, '2020-02-13 09:32:06', '2020-02-13 08:32:06', '', 'Canapé Louis - Gris', 'Couleur: Gris', 'publish', 'closed', 'closed', '', 'canape-louis-gris', '', '', '2020-02-13 09:37:44', '2020-02-13 08:37:44', '', 11, 'http://localhost/meubles&co/?post_type=product_variation&p=14', 3, 'product_variation', '', 0),
(15, 1, '2020-02-13 09:32:06', '2020-02-13 08:32:06', '', 'Canapé Louis - Rose', 'Couleur: Rose', 'publish', 'closed', 'closed', '', 'canape-louis-rose', '', '', '2020-02-13 09:37:44', '2020-02-13 08:37:44', '', 11, 'http://localhost/meubles&co/?post_type=product_variation&p=15', 4, 'product_variation', '', 0),
(16, 1, '2020-02-13 09:37:00', '2020-02-13 08:37:00', '', 'canape_bleu_clair', '', 'inherit', 'open', 'closed', '', 'canape_bleu_clair', '', '', '2020-02-13 09:37:00', '2020-02-13 08:37:00', '', 12, 'http://localhost/meubles&amp;co/wp-content/uploads/2020/02/canape_bleu_clair.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2020-02-13 09:37:14', '2020-02-13 08:37:14', '', 'canape_bleu_fonce', '', 'inherit', 'open', 'closed', '', 'canape_bleu_fonce', '', '', '2020-02-13 09:37:14', '2020-02-13 08:37:14', '', 13, 'http://localhost/meubles&amp;co/wp-content/uploads/2020/02/canape_bleu_fonce.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2020-02-13 09:37:25', '2020-02-13 08:37:25', '', 'canape_gris', '', 'inherit', 'open', 'closed', '', 'canape_gris', '', '', '2020-02-13 09:37:25', '2020-02-13 08:37:25', '', 14, 'http://localhost/meubles&amp;co/wp-content/uploads/2020/02/canape_gris.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2020-02-13 09:37:37', '2020-02-13 08:37:37', '', 'canape_rose', '', 'inherit', 'open', 'closed', '', 'canape_rose', '', '', '2020-02-13 09:37:37', '2020-02-13 08:37:37', '', 15, 'http://localhost/meubles&amp;co/wp-content/uploads/2020/02/canape_rose.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2020-02-13 09:46:01', '2020-02-13 08:46:01', '<p class=\"range-expandable__paragraf no-margin\">Vous pouvez vraiment vous détendre, confortablement assis dans ce fauteuil à haut dossier qui apporte encore plus de soutien à la nuque.</p>\r\n<p class=\"range-expandable__paragraf no-margin\">Garantie 10 ans. Détails des conditions dans le livret Garantie.</p>\r\n<p class=\"range-expandable__paragraf no-margin\">La résistance à l\'abrasion du tissu a été testée sur 50 000 cycles. Pour être adapté à un usage domestique quotidien, un tissu doit résister à au moins 15 000 cycles. Au-delà de 30 000 cycles, on considère que le tissu résiste bien à l\'abrasion.</p>\r\n<p class=\"range-expandable__paragraf no-margin\">Le revêtement a un niveau de résistance à la lumière de 5-6 sur une échelle de 1 à 8. Selon les normes du secteur, un textile est adapté à un usage domestique si son niveau de résistance est de 4 ou plus.</p>', 'Lot de 2 chaises Voltaire', '<p class=\"range-expandable__paragraf no-margin\">Vous pouvez vraiment vous détendre, confortablement assis dans ce fauteuil à haut dossier qui apporte encore plus de soutien à la nuque.</p>', 'publish', 'open', 'closed', '', 'lot-de-2-chaises-voltaire', '', '', '2020-02-13 11:19:14', '2020-02-13 10:19:14', '', 0, 'http://localhost/meubles&#038;co/?post_type=product&#038;p=20', 0, 'product', '', 0),
(24, 1, '2020-02-13 09:46:56', '2020-02-13 08:46:56', '', 'Lot de 2 chaises Voltaire - Gris', 'Couleur: Gris', 'publish', 'closed', 'closed', '', 'lot-de-2-chaises-voltaire-gris', '', '', '2020-02-13 09:47:29', '2020-02-13 08:47:29', '', 20, 'http://localhost/meubles&co/?post_type=product_variation&p=24', 2, 'product_variation', '', 0),
(23, 1, '2020-02-13 09:46:56', '2020-02-13 08:46:56', '', 'Lot de 2 chaises Voltaire - Bleu', 'Couleur: Bleu', 'publish', 'closed', 'closed', '', 'lot-de-2-chaises-voltaire-bleu', '', '', '2020-02-13 09:47:28', '2020-02-13 08:47:28', '', 20, 'http://localhost/meubles&co/?post_type=product_variation&p=23', 1, 'product_variation', '', 0),
(25, 1, '2020-02-13 09:46:56', '2020-02-13 08:46:56', '', 'Lot de 2 chaises Voltaire - Jaune', 'Couleur: Jaune', 'publish', 'closed', 'closed', '', 'lot-de-2-chaises-voltaire-jaune', '', '', '2020-02-13 09:47:29', '2020-02-13 08:47:29', '', 20, 'http://localhost/meubles&co/?post_type=product_variation&p=25', 3, 'product_variation', '', 0),
(26, 1, '2020-02-13 09:48:04', '2020-02-13 08:48:04', '', 'chaise_bleu', '', 'inherit', 'open', 'closed', '', 'chaise_bleu', '', '', '2020-02-13 09:48:04', '2020-02-13 08:48:04', '', 20, 'http://localhost/meubles&amp;co/wp-content/uploads/2020/02/chaise_bleu.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2020-02-13 09:48:05', '2020-02-13 08:48:05', '', 'chaise_gris', '', 'inherit', 'open', 'closed', '', 'chaise_gris', '', '', '2020-02-13 09:48:05', '2020-02-13 08:48:05', '', 20, 'http://localhost/meubles&amp;co/wp-content/uploads/2020/02/chaise_gris.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2020-02-13 09:48:06', '2020-02-13 08:48:06', '', 'chaise_jaune', '', 'inherit', 'open', 'closed', '', 'chaise_jaune', '', '', '2020-02-13 09:48:06', '2020-02-13 08:48:06', '', 20, 'http://localhost/meubles&amp;co/wp-content/uploads/2020/02/chaise_jaune.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2020-02-13 09:50:49', '2020-02-13 08:50:49', '<strong>Festive agitation </strong>\r\nSaveurs d\'une <strong>cuisine </strong>familiale. Grandes tablées. Les <strong>repas </strong>en famille ou entre amis seront conviviaux avec <strong>Léonie</strong>. Cette <strong>table en bois</strong> d\'une longueur de 185 cm peut accueillir 8 convives et son allonge papillon de 55 cm permet d\'ajouter rapidement deux couverts supplémentaires. Ses lignes élégantes la rendent sobre et sophistiquée.  Elle s\'adapte aussi bien à une <strong>salle à manger</strong> chaleureuse et épurée qu\'à une <a href=\"https://www.alinea.com/fr-fr/tables-cuisine/\">cuisine </a>tendance et fonctionnelle.', '1 table de salon JOHN', '<strong>Festive agitation </strong>\r\nSaveurs d\'une <strong>cuisine </strong>familiale. Grandes tablées. Les <strong>repas </strong>en famille ou entre amis seront conviviaux avec <strong>Léonie</strong>.', 'publish', 'open', 'closed', '', '1-table-de-salon-john', '', '', '2020-02-13 11:27:00', '2020-02-13 10:27:00', '', 0, 'http://localhost/meubles&#038;co/?post_type=product&#038;p=29', 0, 'product', '', 0),
(30, 1, '2020-02-13 09:49:04', '2020-02-13 08:49:04', '', 'table_1', '', 'inherit', 'open', 'closed', '', 'table_1', '', '', '2020-02-13 09:49:04', '2020-02-13 08:49:04', '', 29, 'http://localhost/meubles&amp;co/wp-content/uploads/2020/02/table_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2020-02-13 09:49:14', '2020-02-13 08:49:14', '', 'table_2', '', 'inherit', 'open', 'closed', '', 'table_2', '', '', '2020-02-13 09:49:14', '2020-02-13 08:49:14', '', 29, 'http://localhost/meubles&amp;co/wp-content/uploads/2020/02/table_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2020-02-13 09:49:15', '2020-02-13 08:49:15', '', 'table_3', '', 'inherit', 'open', 'closed', '', 'table_3', '', '', '2020-02-13 09:49:15', '2020-02-13 08:49:15', '', 29, 'http://localhost/meubles&amp;co/wp-content/uploads/2020/02/table_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2020-02-13 10:24:49', '2020-02-13 09:24:49', '', 'Order &ndash; février 13, 2020 @ 10:24  ', '', 'wc-on-hold', 'open', 'closed', 'wc_order_vMsC7oWjv0NOi', 'commande-feb-13-2020-0924-am', '', '', '2020-02-13 10:24:49', '2020-02-13 09:24:49', '', 0, 'http://localhost/meubles&#038;co/?post_type=shop_order&#038;p=40', 0, 'shop_order', '', 2),
(37, 1, '2020-02-13 09:54:42', '2020-02-13 08:54:42', '<!-- wp:heading -->\n<h2>Clause n° 1 : Objet</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Les conditions générales de vente décrites ci-après détaillent les droits et obligations de la société ... (dénomination sociale) et de son client dans le cadre de la vente des marchandises suivantes : ... (le vendeur doit recenser les marchandises soumises aux CGV).<br>Toute prestation accomplie par la société ... (dénomination sociale) implique donc l\'adhésion sans réserve de l\'acheteur aux présentes conditions générales de vente.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Clause n° 2 : Prix</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Les prix des marchandises vendues sont ceux en vigueur au jour de la prise de commande. Ils sont libellés en euros et calculés hors taxes. Par voie de conséquence, ils seront majorés du taux de TVA et des frais de transport applicables au jour de la commande.<br>La société ... (dénomination sociale) s\'accorde le droit de modifier ses tarifs à tout moment. Toutefois, elle s\'engage à facturer les marchandises commandées aux prix indiqués lors de l\'enregistrement de la commande.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Clause n° 3 : Rabais et ristournes</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Les tarifs proposés comprennent les rabais et ristournes que la société ... (dénomination sociale) serait amenée à octroyer compte tenu de ses résultats ou de la prise en charge par l\'acheteur de certaines prestations.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Clause n° 4 : Escompte</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Aucun escompte ne sera consenti en cas de paiement anticipé.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Clause n° 5 : Modalités de paiement</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Le règlement des commandes s\'effectue :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>soit par chèque ;</li><li>soit par carte bancaire ;</li><li>le cas échéant, indiquer les autres moyens de paiement acceptés.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Lors de l\'enregistrement de la commande, l\'acheteur devra verser un acompte de 10% du montant global de la facture, le solde devant être payé à réception des marchandises.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Clause n° 6 : Retard de paiement</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>En cas de défaut de paiement total ou partiel des marchandises livrées au jour de la réception, l\'acheteur doit verser à la société ... (dénomination sociale) une pénalité de retard égale à trois fois le taux de l\'intérêt légal.<br>Le taux de l\'intérêt légal retenu est celui en vigueur au jour de la livraison des marchandises.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A compter du 1er janvier 2015, le taux d\'intérêt légal sera révisé tous les 6 mois&nbsp;(Ordonnance n°2014-947 du 20 août 2014).<br>Cette pénalité est calculée sur le montant TTC de la somme restant due, et court à compter de la date d\'échéance du prix sans qu\'aucune mise en demeure préalable ne soit nécessaire.En sus des indemnités de retard, toute somme, y compris l’acompte, non payée à sa date d’exigibilité produira de plein droit le paiement d’une indemnité forfaitaire de 40 euros due au titre des frais de recouvrement.<br><em>Articles 441-6, I alinéa 12 et D. 441-5&nbsp;</em><em>du code de commerce.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Clause n° 7 : Clause résolutoire</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Si dans les quinze jours qui suivent la mise en oeuvre de la clause \" Retard de paiement \", l\'acheteur ne s\'est pas acquitté des sommes restant dues, la vente sera résolue de plein droit et pourra ouvrir droit à l\'allocation de dommages et intérêts au profit de la société ... (dénomination sociale).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Clause n° 8 : Clause de réserve de propriété</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>La société ... (dénomination sociale) conserve la propriété des biens vendus jusqu\'au paiement intégral du prix, en principal et en accessoires. À ce titre, si l\'acheteur fait l\'objet d\'un redressement ou d\'une liquidation judiciaire, la société ... (dénomination sociale) se réserve le droit de revendiquer, dans le cadre de la procédure collective, les marchandises vendues et restées impayées.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Clause n° 9 : Livraison</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>La livraison est effectuée :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>soit par la remise directe de la marchandise à l\'acheteur ;</li><li>soit par l\'envoi d\'un avis de mise à disposition en magasin à l\'attention de l\'acheteur ;</li><li>soit au lieu indiqué par l\'acheteur sur le bon de commande.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Le délai de livraison indiqué lors de l\'enregistrement de la commande n\'est donné qu\'à titre indicatif et n\'est aucunement garanti.Par voie de conséquence, tout retard raisonnable dans la livraison des produits ne pourra pas donner lieu au profit de l\'acheteur à :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>l\'allocation de dommages et intérêts ;</li><li>l\'annulation de la commande.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Le risque du transport est supporté en totalité par l\'acheteur.<br>En cas de marchandises manquantes ou détériorées lors du transport, l\'acheteur devra formuler toutes les réserves nécessaires sur le bon de commande à réception desdites marchandises. Ces réserves devront être, en outre, confirmées par écrit dans les cinq jours suivant la livraison, par courrier recommandé AR.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Clause n° 10 : Force majeure</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>La responsabilité de la société ... (dénomination sociale) ne pourra pas être mise en oeuvre si la non-exécution ou le retard dans l\'exécution de l\'une de ses obligations décrites dans les présentes conditions générales de vente découle d\'un cas de force majeure. À ce titre, la force majeure s\'entend de tout événement extérieur, imprévisible et irrésistible au sens de l\'article 1148 du Code civil.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Clause n° 11 : Tribunal compétent</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Tout litige relatif à l\'interprétation et à l\'exécution des présentes conditions générales de vente est soumis au droit français.À défaut de résolution amiable, le litige sera porté devant le Tribunal de commerce ... (lieu du siège social).&nbsp;Fait à ... (ville), le ... (date)<br>... (signature du client)<br>... (signature du représentant légal la société)\n\n</p>\n<!-- /wp:paragraph -->', 'Conditions Général de Vente', '', 'publish', 'closed', 'closed', '', 'conditions-general-de-vente', '', '', '2020-02-13 09:54:42', '2020-02-13 08:54:42', '', 0, 'http://localhost/meubles&#038;co/?page_id=37', 0, 'page', '', 0),
(38, 1, '2020-02-13 09:54:42', '2020-02-13 08:54:42', '<!-- wp:heading -->\n<h2>Clause n° 1 : Objet</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Les conditions générales de vente décrites ci-après détaillent les droits et obligations de la société ... (dénomination sociale) et de son client dans le cadre de la vente des marchandises suivantes : ... (le vendeur doit recenser les marchandises soumises aux CGV).<br>Toute prestation accomplie par la société ... (dénomination sociale) implique donc l\'adhésion sans réserve de l\'acheteur aux présentes conditions générales de vente.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Clause n° 2 : Prix</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Les prix des marchandises vendues sont ceux en vigueur au jour de la prise de commande. Ils sont libellés en euros et calculés hors taxes. Par voie de conséquence, ils seront majorés du taux de TVA et des frais de transport applicables au jour de la commande.<br>La société ... (dénomination sociale) s\'accorde le droit de modifier ses tarifs à tout moment. Toutefois, elle s\'engage à facturer les marchandises commandées aux prix indiqués lors de l\'enregistrement de la commande.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Clause n° 3 : Rabais et ristournes</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Les tarifs proposés comprennent les rabais et ristournes que la société ... (dénomination sociale) serait amenée à octroyer compte tenu de ses résultats ou de la prise en charge par l\'acheteur de certaines prestations.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Clause n° 4 : Escompte</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Aucun escompte ne sera consenti en cas de paiement anticipé.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Clause n° 5 : Modalités de paiement</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Le règlement des commandes s\'effectue :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>soit par chèque ;</li><li>soit par carte bancaire ;</li><li>le cas échéant, indiquer les autres moyens de paiement acceptés.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Lors de l\'enregistrement de la commande, l\'acheteur devra verser un acompte de 10% du montant global de la facture, le solde devant être payé à réception des marchandises.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Clause n° 6 : Retard de paiement</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>En cas de défaut de paiement total ou partiel des marchandises livrées au jour de la réception, l\'acheteur doit verser à la société ... (dénomination sociale) une pénalité de retard égale à trois fois le taux de l\'intérêt légal.<br>Le taux de l\'intérêt légal retenu est celui en vigueur au jour de la livraison des marchandises.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A compter du 1er janvier 2015, le taux d\'intérêt légal sera révisé tous les 6 mois&nbsp;(Ordonnance n°2014-947 du 20 août 2014).<br>Cette pénalité est calculée sur le montant TTC de la somme restant due, et court à compter de la date d\'échéance du prix sans qu\'aucune mise en demeure préalable ne soit nécessaire.En sus des indemnités de retard, toute somme, y compris l’acompte, non payée à sa date d’exigibilité produira de plein droit le paiement d’une indemnité forfaitaire de 40 euros due au titre des frais de recouvrement.<br><em>Articles 441-6, I alinéa 12 et D. 441-5&nbsp;</em><em>du code de commerce.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Clause n° 7 : Clause résolutoire</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Si dans les quinze jours qui suivent la mise en oeuvre de la clause \" Retard de paiement \", l\'acheteur ne s\'est pas acquitté des sommes restant dues, la vente sera résolue de plein droit et pourra ouvrir droit à l\'allocation de dommages et intérêts au profit de la société ... (dénomination sociale).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Clause n° 8 : Clause de réserve de propriété</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>La société ... (dénomination sociale) conserve la propriété des biens vendus jusqu\'au paiement intégral du prix, en principal et en accessoires. À ce titre, si l\'acheteur fait l\'objet d\'un redressement ou d\'une liquidation judiciaire, la société ... (dénomination sociale) se réserve le droit de revendiquer, dans le cadre de la procédure collective, les marchandises vendues et restées impayées.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Clause n° 9 : Livraison</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>La livraison est effectuée :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>soit par la remise directe de la marchandise à l\'acheteur ;</li><li>soit par l\'envoi d\'un avis de mise à disposition en magasin à l\'attention de l\'acheteur ;</li><li>soit au lieu indiqué par l\'acheteur sur le bon de commande.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Le délai de livraison indiqué lors de l\'enregistrement de la commande n\'est donné qu\'à titre indicatif et n\'est aucunement garanti.Par voie de conséquence, tout retard raisonnable dans la livraison des produits ne pourra pas donner lieu au profit de l\'acheteur à :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>l\'allocation de dommages et intérêts ;</li><li>l\'annulation de la commande.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Le risque du transport est supporté en totalité par l\'acheteur.<br>En cas de marchandises manquantes ou détériorées lors du transport, l\'acheteur devra formuler toutes les réserves nécessaires sur le bon de commande à réception desdites marchandises. Ces réserves devront être, en outre, confirmées par écrit dans les cinq jours suivant la livraison, par courrier recommandé AR.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Clause n° 10 : Force majeure</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>La responsabilité de la société ... (dénomination sociale) ne pourra pas être mise en oeuvre si la non-exécution ou le retard dans l\'exécution de l\'une de ses obligations décrites dans les présentes conditions générales de vente découle d\'un cas de force majeure. À ce titre, la force majeure s\'entend de tout événement extérieur, imprévisible et irrésistible au sens de l\'article 1148 du Code civil.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Clause n° 11 : Tribunal compétent</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Tout litige relatif à l\'interprétation et à l\'exécution des présentes conditions générales de vente est soumis au droit français.À défaut de résolution amiable, le litige sera porté devant le Tribunal de commerce ... (lieu du siège social).&nbsp;Fait à ... (ville), le ... (date)<br>... (signature du client)<br>... (signature du représentant légal la société)\n\n</p>\n<!-- /wp:paragraph -->', 'Conditions Général de Vente', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2020-02-13 09:54:42', '2020-02-13 08:54:42', '', 37, 'http://localhost/meubles&co/2020/02/13/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2020-02-13 10:16:44', '2020-02-13 09:16:44', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2020-02-13 11:40:06', '2020-02-13 10:40:06', '', 0, 'http://localhost/meubles&#038;co/?p=39', 1, 'nav_menu_item', '', 0),
(41, 1, '2020-02-13 11:02:47', '2020-02-13 10:02:47', '', '123', 'Code promo pour le canapé Louis', 'publish', 'closed', 'closed', '', '123', '', '', '2020-02-13 11:03:22', '2020-02-13 10:03:22', '', 0, 'http://localhost/meubles&#038;co/?post_type=shop_coupon&#038;p=41', 0, 'shop_coupon', '', 0),
(42, 1, '2020-02-13 11:04:23', '2020-02-13 10:04:23', '', 'Order &ndash; février 13, 2020 @ 11:04  ', '', 'wc-on-hold', 'open', 'closed', 'wc_order_GjA60HIUgyCT7', 'commande-feb-13-2020-1004-am', '', '', '2020-02-13 11:04:23', '2020-02-13 10:04:23', '', 0, 'http://localhost/meubles&#038;co/?post_type=shop_order&#038;p=42', 0, 'shop_order', '', 2);

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
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 17, 'order_pa_couleur', '0'),
(2, 18, 'order_pa_couleur', '0'),
(3, 19, 'order_pa_couleur', '0'),
(4, 20, 'order_pa_couleur', '0'),
(5, 15, 'product_count_product_cat', '0'),
(6, 21, 'order', '0'),
(7, 21, 'product_count_product_cat', '3'),
(8, 22, 'order_pa_couleur', '0'),
(9, 23, 'order_pa_couleur', '0'),
(10, 24, 'product_count_product_tag', '1'),
(11, 26, 'order', '0'),
(12, 26, 'product_count_product_cat', '1'),
(13, 27, 'order', '0'),
(14, 27, 'product_count_product_cat', '1'),
(15, 28, 'order', '0'),
(16, 28, 'product_count_product_cat', '1'),
(17, 32, 'product_count_product_tag', '1'),
(18, 33, 'product_count_product_tag', '1'),
(19, 35, 'order', '0'),
(20, 35, 'display_type', ''),
(21, 35, 'thumbnail_id', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Boutique', 'boutique', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Non classé', 'non-classe', 0),
(35, 'test', 'test', 0),
(17, 'Bleu clair', 'bleu-clair', 0),
(18, 'Bleu foncé', 'bleu-fonce', 0),
(19, 'Gris', 'gris', 0),
(20, 'Rose', 'rose', 0),
(21, 'collection 2017', 'collection-2017', 0),
(22, 'Jaune', 'jaune', 0),
(23, 'Bleu', 'bleu', 0),
(24, 'lot chaise', 'lot-chaise', 0),
(25, 'Menu principal', 'menu-principal', 0),
(26, 'Chaise', 'chaise', 0),
(27, 'Table', 'table', 0),
(28, 'Canapé', 'canape', 0),
(32, 'table', 'table', 0),
(33, 'canapé', 'canape', 0);

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
(29, 32, 0),
(20, 19, 0),
(11, 4, 0),
(11, 17, 0),
(11, 18, 0),
(11, 19, 0),
(11, 20, 0),
(20, 23, 0),
(11, 28, 0),
(20, 4, 0),
(11, 21, 0),
(20, 22, 0),
(29, 2, 0),
(29, 27, 0),
(20, 24, 0),
(11, 33, 0),
(29, 21, 0),
(20, 21, 0),
(20, 26, 0),
(39, 25, 0);

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
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 1),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 2),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(35, 35, 'product_cat', '', 0, 0),
(17, 17, 'pa_couleur', '', 0, 1),
(18, 18, 'pa_couleur', '', 0, 1),
(19, 19, 'pa_couleur', '', 0, 2),
(20, 20, 'pa_couleur', '', 0, 1),
(22, 22, 'pa_couleur', '', 0, 1),
(21, 21, 'product_cat', '', 0, 3),
(23, 23, 'pa_couleur', '', 0, 1),
(28, 28, 'product_cat', '', 21, 1),
(24, 24, 'product_tag', '', 0, 1),
(25, 25, 'nav_menu', '', 0, 1),
(26, 26, 'product_cat', '', 21, 1),
(27, 27, 'product_cat', '', 21, 1),
(32, 32, 'product_tag', '', 0, 1),
(33, 33, 'product_tag', '', 0, 1);

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
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'arnaud'),
(2, 1, 'first_name', 'Arnaud'),
(3, 1, 'last_name', 'MALFAIT'),
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
(16, 1, 'session_tokens', 'a:1:{s:64:\"7ccc951bd51eb11f181a41dd9cdc05b39cf458dd21964efa2f28e6e8b4db295e\";a:4:{s:10:\"expiration\";i:1590580012;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36\";s:5:\"login\";i:1590407212;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '46'),
(18, 1, '_woocommerce_tracks_anon_id', 'woo:opS6CDyqaLDCfOY819Ya66Sg'),
(19, 1, 'dismissed_no_secure_connection_notice', '1'),
(20, 1, 'dismissed_wc_admin_notice', '1'),
(21, 1, 'dismissed_template_files_notice', '1'),
(22, 1, 'wc_last_active', '1590364800'),
(23, 1, 'closedpostboxes_product', 'a:0:{}'),
(24, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}'),
(25, 1, 'wp_user-settings', 'libraryContent=browse'),
(26, 1, 'wp_user-settings-time', '1581583061'),
(27, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(28, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-product_cat\";i:3;s:15:\"add-product_tag\";}'),
(29, 1, 'nav_menu_recently_edited', '25'),
(51, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:2:{s:32:\"6ea9ab1baa0efb9e19094440c317e21b\";a:11:{s:3:\"key\";s:32:\"6ea9ab1baa0efb9e19094440c317e21b\";s:10:\"product_id\";i:29;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:1:{i:1;d:30;}s:5:\"total\";a:1:{i:1;d:30;}}s:13:\"line_subtotal\";d:150;s:17:\"line_subtotal_tax\";d:30;s:10:\"line_total\";d:150;s:8:\"line_tax\";d:30;}s:32:\"0305ea860c65954aac3b69f46f65b06c\";a:11:{s:3:\"key\";s:32:\"0305ea860c65954aac3b69f46f65b06c\";s:10:\"product_id\";i:11;s:12:\"variation_id\";i:13;s:9:\"variation\";a:1:{s:20:\"attribute_pa_couleur\";s:10:\"bleu-fonce\";}s:8:\"quantity\";i:2;s:9:\"data_hash\";s:32:\"d334984de387159b37da4c405bcad351\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:1:{i:1;d:91.66666667;}s:5:\"total\";a:1:{i:1;d:91.66666667;}}s:13:\"line_subtotal\";d:458.33333333;s:17:\"line_subtotal_tax\";d:91.66666667;s:10:\"line_total\";d:458.33333333;s:8:\"line_tax\";d:91.66666667;}}}'),
(32, 1, 'last_update', '1581588263'),
(33, 1, 'billing_first_name', 'Arnaud'),
(34, 1, 'billing_last_name', 'MALFAIT'),
(35, 1, 'billing_company', 'INDEED'),
(36, 1, 'billing_address_1', '131 Chaussée Jules César'),
(37, 1, 'billing_city', 'Beauchamp'),
(38, 1, 'billing_postcode', '95250'),
(39, 1, 'billing_country', 'FR'),
(40, 1, 'billing_email', 'arnaud.malfait@hotmail.fr'),
(41, 1, 'billing_phone', '0629948102'),
(42, 1, 'shipping_first_name', 'Arnaud'),
(43, 1, 'shipping_last_name', 'MALFAIT'),
(44, 1, 'shipping_company', 'INDEED'),
(45, 1, 'shipping_address_1', '131 Chaussée Jules César'),
(46, 1, 'shipping_city', 'Beauchamp'),
(47, 1, 'shipping_postcode', '95250'),
(48, 1, 'shipping_country', 'FR'),
(49, 1, 'shipping_method', 'a:1:{i:0;s:11:\"flat_rate:1\";}');

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
(1, 'arnaud', '$P$BWOUsFdnSeEZV8qKFjJaI4kkStwDdk/', 'arnaud', 'arnaud.malfait89@gmail.com', '', '2020-02-12 15:50:38', '', 0, 'arnaud');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wc_download_log`
--

DROP TABLE IF EXISTS `wp_wc_download_log`;
CREATE TABLE IF NOT EXISTS `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wc_product_meta_lookup`
--

DROP TABLE IF EXISTS `wp_wc_product_meta_lookup`;
CREATE TABLE IF NOT EXISTS `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  PRIMARY KEY (`product_id`),
  KEY `virtual` (`virtual`),
  KEY `downloadable` (`downloadable`),
  KEY `stock_status` (`stock_status`),
  KEY `stock_quantity` (`stock_quantity`),
  KEY `onsale` (`onsale`),
  KEY `min_max_price` (`min_price`,`max_price`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`) VALUES
(11, 'canape1', 0, 0, '550.00', '550.00', 0, NULL, 'instock', 0, '0.00', 1),
(12, '', 0, 0, '550.00', '550.00', 0, 50, 'instock', 0, '0.00', 0),
(13, '', 0, 0, '550.00', '550.00', 0, 49, 'instock', 0, '0.00', 0),
(14, '', 0, 0, '550.00', '550.00', 0, 50, 'instock', 0, '0.00', 0),
(15, '', 0, 0, '550.00', '550.00', 0, 50, 'instock', 0, '0.00', 0),
(20, 'chaise1', 0, 0, '200.00', '200.00', 0, NULL, 'instock', 0, '0.00', 0),
(23, '', 0, 0, '200.00', '200.00', 0, 50, 'instock', 0, '0.00', 0),
(24, '', 0, 0, '200.00', '200.00', 0, 50, 'instock', 0, '0.00', 0),
(25, '', 0, 0, '200.00', '200.00', 0, 50, 'instock', 0, '0.00', 0),
(29, 'table1', 0, 0, '180.00', '180.00', 1, 49, 'instock', 0, '0.00', 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_wc_tax_rate_classes`
--

DROP TABLE IF EXISTS `wp_wc_tax_rate_classes`;
CREATE TABLE IF NOT EXISTS `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_class_id`),
  UNIQUE KEY `slug` (`slug`(191))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Taux réduit', 'taux-reduit'),
(2, 'Taux zéro', 'taux-zero');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wc_webhooks`
--

DROP TABLE IF EXISTS `wp_wc_webhooks`;
CREATE TABLE IF NOT EXISTS `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_api_keys`
--

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_attribute_taxonomies`
--

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'couleur', 'Couleur', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_downloadable_product_permissions`
--

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`),
  KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_log`
--

DROP TABLE IF EXISTS `wp_woocommerce_log`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_order_itemmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '29'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '150'),
(6, 1, '_line_subtotal_tax', '30'),
(7, 1, '_line_total', '150'),
(8, 1, '_line_tax', '30'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:1:{i:1;s:2:\"30\";}s:8:\"subtotal\";a:1:{i:1;s:2:\"30\";}}'),
(10, 2, 'method_id', 'flat_rate'),
(11, 2, 'instance_id', '1'),
(12, 2, 'cost', '20.00'),
(13, 2, 'total_tax', '4'),
(14, 2, 'taxes', 'a:1:{s:5:\"total\";a:1:{i:1;s:1:\"4\";}}'),
(15, 2, 'Articles', '1 table de salon JOHN &times; 1'),
(16, 3, 'rate_id', '1'),
(17, 3, 'label', 'TVA20'),
(18, 3, 'compound', ''),
(19, 3, 'tax_amount', '30'),
(20, 3, 'shipping_tax_amount', '4'),
(21, 3, 'rate_percent', '20'),
(22, 1, '_reduced_stock', '1'),
(23, 4, '_product_id', '11'),
(24, 4, '_variation_id', '13'),
(25, 4, '_qty', '1'),
(26, 4, '_tax_class', ''),
(27, 4, '_line_subtotal', '458.333333'),
(28, 4, '_line_subtotal_tax', '91.666667'),
(29, 4, '_line_total', '375'),
(30, 4, '_line_tax', '75'),
(31, 4, '_line_tax_data', 'a:2:{s:5:\"total\";a:1:{i:1;s:2:\"75\";}s:8:\"subtotal\";a:1:{i:1;s:9:\"91.666667\";}}'),
(32, 4, 'pa_couleur', 'bleu-fonce'),
(33, 5, 'method_id', 'flat_rate'),
(34, 5, 'instance_id', '1'),
(35, 5, 'cost', '20.00'),
(36, 5, 'total_tax', '4'),
(37, 5, 'taxes', 'a:1:{s:5:\"total\";a:1:{i:1;s:1:\"4\";}}'),
(38, 5, 'Articles', 'Canapé Louis - Bleu foncé &times; 1'),
(39, 6, 'rate_id', '1'),
(40, 6, 'label', 'TVA20'),
(41, 6, 'compound', ''),
(42, 6, 'tax_amount', '75'),
(43, 6, 'shipping_tax_amount', '4'),
(44, 6, 'rate_percent', '20'),
(45, 7, 'discount_amount', '83.33'),
(46, 7, 'discount_amount_tax', '16.67'),
(47, 7, 'coupon_data', 'a:24:{s:2:\"id\";i:41;s:4:\"code\";s:3:\"123\";s:6:\"amount\";s:3:\"100\";s:12:\"date_created\";O:11:\"WC_DateTime\":4:{s:13:\"\0*\0utc_offset\";i:0;s:4:\"date\";s:26:\"2020-02-13 11:02:47.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:12:\"Europe/Paris\";}s:13:\"date_modified\";O:11:\"WC_DateTime\":4:{s:13:\"\0*\0utc_offset\";i:0;s:4:\"date\";s:26:\"2020-02-13 11:03:22.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:12:\"Europe/Paris\";}s:12:\"date_expires\";N;s:13:\"discount_type\";s:13:\"fixed_product\";s:11:\"description\";s:32:\"Code promo pour le canapé Louis\";s:11:\"usage_count\";i:0;s:14:\"individual_use\";b:0;s:11:\"product_ids\";a:1:{i:0;i:11;}s:20:\"excluded_product_ids\";a:0:{}s:11:\"usage_limit\";i:1;s:20:\"usage_limit_per_user\";i:1;s:22:\"limit_usage_to_x_items\";i:1;s:13:\"free_shipping\";b:0;s:18:\"product_categories\";a:0:{}s:27:\"excluded_product_categories\";a:0:{}s:18:\"exclude_sale_items\";b:0;s:14:\"minimum_amount\";s:0:\"\";s:14:\"maximum_amount\";s:0:\"\";s:18:\"email_restrictions\";a:0:{}s:7:\"virtual\";b:0;s:9:\"meta_data\";a:2:{i:0;O:12:\"WC_Meta_Data\":2:{s:15:\"\0*\0current_data\";a:3:{s:2:\"id\";i:368;s:3:\"key\";s:30:\"_coupon_held_1581591863_GRmA8I\";s:5:\"value\";s:0:\"\";}s:7:\"\0*\0data\";a:3:{s:2:\"id\";i:368;s:3:\"key\";s:30:\"_coupon_held_1581591863_GRmA8I\";s:5:\"value\";s:0:\"\";}}i:1;O:12:\"WC_Meta_Data\":2:{s:15:\"\0*\0current_data\";a:3:{s:2:\"id\";i:369;s:3:\"key\";s:32:\"_maybe_used_by_1581591863_UwyaPG\";s:5:\"value\";s:1:\"1\";}s:7:\"\0*\0data\";a:3:{s:2:\"id\";i:369;s:3:\"key\";s:32:\"_maybe_used_by_1581591863_UwyaPG\";s:5:\"value\";s:1:\"1\";}}}}'),
(48, 4, '_reduced_stock', '1');

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_order_items`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, '1 table de salon JOHN', 'line_item', 40),
(2, 'Transporteur', 'shipping', 40),
(3, 'FR-TVA20-1', 'tax', 40),
(4, 'Canapé Louis - Bleu foncé', 'line_item', 42),
(5, 'Transporteur', 'shipping', 42),
(6, 'FR-TVA20-1', 'tax', 42),
(7, '123', 'coupon', 42);

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_payment_tokenmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_payment_tokens`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_sessions`
--

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(3, '1', 'a:11:{s:4:\"cart\";s:973:\"a:2:{s:32:\"6ea9ab1baa0efb9e19094440c317e21b\";a:11:{s:3:\"key\";s:32:\"6ea9ab1baa0efb9e19094440c317e21b\";s:10:\"product_id\";i:29;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:1:{i:1;d:30;}s:5:\"total\";a:1:{i:1;d:30;}}s:13:\"line_subtotal\";d:150;s:17:\"line_subtotal_tax\";d:30;s:10:\"line_total\";d:150;s:8:\"line_tax\";d:30;}s:32:\"0305ea860c65954aac3b69f46f65b06c\";a:11:{s:3:\"key\";s:32:\"0305ea860c65954aac3b69f46f65b06c\";s:10:\"product_id\";i:11;s:12:\"variation_id\";i:13;s:9:\"variation\";a:1:{s:20:\"attribute_pa_couleur\";s:10:\"bleu-fonce\";}s:8:\"quantity\";i:2;s:9:\"data_hash\";s:32:\"d334984de387159b37da4c405bcad351\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:1:{i:1;d:183.33333333;}s:5:\"total\";a:1:{i:1;d:183.33333333;}}s:13:\"line_subtotal\";d:916.6666666699999;s:17:\"line_subtotal_tax\";d:183.33333333;s:10:\"line_total\";d:916.6666666699999;s:8:\"line_tax\";d:183.33333333;}}\";s:11:\"cart_totals\";s:456:\"a:15:{s:8:\"subtotal\";s:7:\"1066.67\";s:12:\"subtotal_tax\";d:213.33;s:14:\"shipping_total\";s:5:\"80.00\";s:12:\"shipping_tax\";d:16;s:14:\"shipping_taxes\";a:1:{i:1;d:16;}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:7:\"1066.67\";s:17:\"cart_contents_tax\";d:213.33;s:19:\"cart_contents_taxes\";a:1:{i:1;d:213.33333333;}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:7:\"1376.00\";s:9:\"total_tax\";d:229.33;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_0\";s:803:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_7ab2b1e2b875ca160213a8251be89601\";s:5:\"rates\";a:2:{s:11:\"flat_rate:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:11:\"flat_rate:1\";s:9:\"method_id\";s:9:\"flat_rate\";s:11:\"instance_id\";i:1;s:5:\"label\";s:12:\"Transporteur\";s:4:\"cost\";s:5:\"80.00\";s:5:\"taxes\";a:1:{i:1;d:16;}}s:12:\"\0*\0meta_data\";a:1:{s:8:\"Articles\";s:70:\"1 table de salon JOHN &times; 1, Canapé Louis - Bleu foncé &times; 2\";}}s:15:\"free_shipping:4\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:15:\"free_shipping:4\";s:9:\"method_id\";s:13:\"free_shipping\";s:11:\"instance_id\";i:4;s:5:\"label\";s:18:\"Livraison gratuite\";s:4:\"cost\";s:4:\"0.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:8:\"Articles\";s:70:\"1 table de salon JOHN &times; 1, Canapé Louis - Bleu foncé &times; 2\";}}}}\";s:25:\"previous_shipping_methods\";s:66:\"a:1:{i:0;a:2:{i:0;s:11:\"flat_rate:1\";i:1;s:15:\"free_shipping:4\";}}\";s:23:\"chosen_shipping_methods\";s:29:\"a:1:{i:0;s:11:\"flat_rate:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:2;}\";s:8:\"customer\";s:924:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2020-02-13T11:04:23+01:00\";s:8:\"postcode\";s:5:\"95250\";s:4:\"city\";s:9:\"Beauchamp\";s:9:\"address_1\";s:26:\"131 Chaussée Jules César\";s:7:\"address\";s:26:\"131 Chaussée Jules César\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"FR\";s:17:\"shipping_postcode\";s:5:\"95250\";s:13:\"shipping_city\";s:9:\"Beauchamp\";s:18:\"shipping_address_1\";s:26:\"131 Chaussée Jules César\";s:16:\"shipping_address\";s:26:\"131 Chaussée Jules César\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"FR\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:6:\"Arnaud\";s:9:\"last_name\";s:7:\"MALFAIT\";s:7:\"company\";s:6:\"INDEED\";s:5:\"phone\";s:10:\"0629948102\";s:5:\"email\";s:25:\"arnaud.malfait@hotmail.fr\";s:19:\"shipping_first_name\";s:6:\"Arnaud\";s:18:\"shipping_last_name\";s:7:\"MALFAIT\";s:16:\"shipping_company\";s:6:\"INDEED\";}\";}', 1590580016);

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_shipping_zones`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'France', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_shipping_zone_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'FR', 'country');

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_shipping_zone_methods`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`instance_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'flat_rate', 1, 1),
(0, 2, 'flat_rate', 1, 1),
(1, 4, 'free_shipping', 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_tax_rates`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_woocommerce_tax_rates`
--

INSERT INTO `wp_woocommerce_tax_rates` (`tax_rate_id`, `tax_rate_country`, `tax_rate_state`, `tax_rate`, `tax_rate_name`, `tax_rate_priority`, `tax_rate_compound`, `tax_rate_shipping`, `tax_rate_order`, `tax_rate_class`) VALUES
(1, 'FR', '', '20.0000', 'TVA20', 1, 0, 1, 0, ''),
(3, 'FR', '', '10.0000', 'TVA10', 1, 0, 0, 0, 'taux-reduit');

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_tax_rate_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
