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
-- Base de données :  `woocommerce`
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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-02-12 09:19:40', '2020-02-12 08:19:40', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 12, 'WooCommerce', '', '', '', '2020-02-12 11:40:40', '2020-02-12 10:40:40', 'Réduction des niveaux de stock : Paraplui (para1) 50&rarr;49', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(3, 12, 'WooCommerce', '', '', '', '2020-02-12 11:40:41', '2020-02-12 10:40:41', 'En attente de paiement BACS État de la commande modifié de Attente paiement à En attente.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(4, 21, 'WooCommerce', '', '', '', '2020-02-12 12:25:45', '2020-02-12 11:25:45', 'Réduction des niveaux de stock : Robe rouge - L (robe1)<span class=\"description\"></span> 5&rarr;4, Panier en Osier (panier1) 10&rarr;6', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(5, 21, 'WooCommerce', '', '', '', '2020-02-12 12:25:45', '2020-02-12 11:25:45', 'En attente de paiement BACS État de la commande modifié de Attente paiement à En attente.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(6, 12, 'arnaud', 'arnaud.malfait89@gmail.com', '', '', '2020-02-12 16:17:13', '2020-02-12 15:17:13', 'État de la commande modifié de En attente à Terminée.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

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
) ENGINE=MyISAM AUTO_INCREMENT=1022 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/woocommerce', 'yes'),
(2, 'home', 'http://localhost/woocommerce', 'yes'),
(3, 'blogname', 'Ma Boutique', 'yes'),
(4, 'blogdescription', '', 'yes'),
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
(29, 'rewrite_rules', 'a:162:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:11:\"boutique/?$\";s:27:\"index.php?post_type=product\";s:41:\"boutique/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:36:\"boutique/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:28:\"boutique/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:56:\"categorie-produit/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:51:\"categorie-produit/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:32:\"categorie-produit/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:44:\"categorie-produit/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:26:\"categorie-produit/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:58:\"etiquette-produit/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:53:\"etiquette-produit/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:34:\"etiquette-produit/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:46:\"etiquette-produit/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:28:\"etiquette-produit/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:47:\"taille/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?pa_taille=$matches[1]&feed=$matches[2]\";s:42:\"taille/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?pa_taille=$matches[1]&feed=$matches[2]\";s:23:\"taille/([^/]+)/embed/?$\";s:42:\"index.php?pa_taille=$matches[1]&embed=true\";s:35:\"taille/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?pa_taille=$matches[1]&paged=$matches[2]\";s:17:\"taille/([^/]+)/?$\";s:31:\"index.php?pa_taille=$matches[1]\";s:35:\"produit/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"produit/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"produit/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produit/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produit/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"produit/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"produit/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"produit/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"produit/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"produit/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"produit/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"produit/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"produit/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"produit/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"produit/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"produit/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"produit/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"produit/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"produit/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produit/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produit/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"produit/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'storefront', 'yes'),
(41, 'stylesheet', 'storefront', 'yes'),
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
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1597047580', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'fr_FR', 'yes'),
(98, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(802, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(102, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:28:\"woocommerce_product_search-2\";i:1;s:26:\"woocommerce_price_filter-2\";i:2;s:25:\"woocommerce_layered_nav-2\";i:3;s:27:\"woocommerce_rating_filter-2\";i:4;s:33:\"woocommerce_layered_nav_filters-2\";i:5;s:22:\"woocommerce_products-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:14:{i:1584549288;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1584551982;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1584552759;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1584562782;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1584572400;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1584584747;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1584605980;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1584605986;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1584605989;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1584606347;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1584606357;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1584617147;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1585384007;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
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
(119, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"background_color\";s:3:\"fff\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1581496786;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(312, 'theme_mods_storefront', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:27;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(313, 'theme_switched', '', 'yes'),
(315, 'woocommerce_catalog_rows', '4', 'yes'),
(316, 'woocommerce_catalog_columns', '3', 'yes'),
(317, 'woocommerce_maybe_regenerate_images_hash', '27acde77266b4d2a3491118955cb3f66', 'yes'),
(319, 'storefront_nux_fresh_site', '0', 'yes'),
(1016, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1584549172;s:7:\"checked\";a:4:{s:10:\"storefront\";s:5:\"2.5.3\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:1:{s:10:\"storefront\";a:6:{s:5:\"theme\";s:10:\"storefront\";s:11:\"new_version\";s:5:\"2.5.5\";s:3:\"url\";s:40:\"https://wordpress.org/themes/storefront/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/storefront.2.5.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}}', 'no'),
(133, 'can_compress_scripts', '1', 'no'),
(146, 'recently_activated', 'a:0:{}', 'yes'),
(346, 'storefront_nux_dismissed', '1', 'yes'),
(155, 'woocommerce_store_address', '131 allée Rosa Luxembourg', 'yes'),
(156, 'woocommerce_store_address_2', '', 'yes'),
(157, 'woocommerce_store_city', 'Eragny', 'yes'),
(158, 'woocommerce_default_country', 'FR', 'yes'),
(159, 'woocommerce_store_postcode', '95200', 'yes'),
(160, 'woocommerce_allowed_countries', 'specific', 'yes'),
(161, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(162, 'woocommerce_specific_allowed_countries', 'a:1:{i:0;s:2:\"FR\";}', 'yes'),
(163, 'woocommerce_ship_to_countries', '', 'yes'),
(164, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(165, 'woocommerce_default_customer_address', '', 'yes'),
(166, 'woocommerce_calc_taxes', 'yes', 'yes'),
(167, 'woocommerce_enable_coupons', 'yes', 'yes'),
(168, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(169, 'woocommerce_currency', 'EUR', 'yes'),
(170, 'woocommerce_currency_pos', 'right', 'yes'),
(171, 'woocommerce_price_thousand_sep', ' ', 'yes'),
(172, 'woocommerce_price_decimal_sep', ',', 'yes'),
(173, 'woocommerce_price_num_decimals', '2', 'yes'),
(174, 'woocommerce_shop_page_id', '6', 'yes'),
(175, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(176, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(177, 'woocommerce_placeholder_image', '5', 'yes'),
(178, 'woocommerce_weight_unit', 'kg', 'yes'),
(179, 'woocommerce_dimension_unit', 'cm', 'yes'),
(180, 'woocommerce_enable_reviews', 'yes', 'yes'),
(181, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(182, 'woocommerce_review_rating_verification_required', 'yes', 'no'),
(183, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(184, 'woocommerce_review_rating_required', 'yes', 'no'),
(185, 'woocommerce_manage_stock', 'yes', 'yes'),
(186, 'woocommerce_hold_stock_minutes', '60', 'no'),
(187, 'woocommerce_notify_low_stock', 'yes', 'no'),
(188, 'woocommerce_notify_no_stock', 'yes', 'no'),
(189, 'woocommerce_stock_email_recipient', 'arnaud.malfait89@gmail.com', 'no'),
(190, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(191, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(192, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(193, 'woocommerce_stock_format', 'low_amount', 'yes'),
(194, 'woocommerce_file_download_method', 'force', 'no'),
(195, 'woocommerce_downloads_require_login', 'yes', 'no'),
(196, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(197, 'woocommerce_prices_include_tax', 'yes', 'yes'),
(198, 'woocommerce_tax_based_on', 'base', 'yes'),
(199, 'woocommerce_shipping_tax_class', '', 'yes'),
(200, 'woocommerce_tax_round_at_subtotal', 'yes', 'yes'),
(201, 'woocommerce_tax_classes', '', 'yes'),
(202, 'woocommerce_tax_display_shop', 'incl', 'yes'),
(203, 'woocommerce_tax_display_cart', 'incl', 'yes'),
(204, 'woocommerce_price_display_suffix', 'TTC', 'yes'),
(205, 'woocommerce_tax_total_display', 'itemized', 'no'),
(206, 'woocommerce_enable_shipping_calc', 'no', 'no'),
(207, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(208, 'woocommerce_ship_to_destination', 'billing', 'no'),
(209, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(210, 'woocommerce_enable_guest_checkout', 'no', 'no'),
(211, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(212, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(213, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(214, 'woocommerce_registration_generate_username', 'no', 'no'),
(215, 'woocommerce_registration_generate_password', 'yes', 'no'),
(216, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(217, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(218, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(219, 'woocommerce_registration_privacy_policy_text', 'Vos données personnelles seront utilisées pour vous accompagner au cours de votre visite du site web, gérer l’accès à votre compte, et pour d’autres raisons décrites dans notre [privacy_policy].', 'yes'),
(220, 'woocommerce_checkout_privacy_policy_text', 'Vos données personnelles seront utilisées pour le traitement de votre commande, vous accompagner au cours de votre visite du site web, et pour d’autres raisons décrites dans notre [privacy_policy].', 'yes'),
(221, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(222, 'woocommerce_trash_pending_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(223, 'woocommerce_trash_failed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(224, 'woocommerce_trash_cancelled_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(225, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(226, 'woocommerce_email_from_name', 'Ma Boutique', 'no'),
(227, 'woocommerce_email_from_address', 'arnaud.malfait89@gmail.com', 'no'),
(228, 'woocommerce_email_header_image', '', 'no'),
(229, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(230, 'woocommerce_email_base_color', '#96588a', 'no'),
(231, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(232, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(233, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(234, 'woocommerce_cart_page_id', '7', 'no'),
(235, 'woocommerce_checkout_page_id', '8', 'no'),
(236, 'woocommerce_myaccount_page_id', '9', 'no'),
(237, 'woocommerce_terms_page_id', '33', 'no'),
(238, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(239, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(240, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(241, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(242, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(243, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(244, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(245, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(246, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(247, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(248, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(249, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(250, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(251, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(252, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(253, 'woocommerce_api_enabled', 'no', 'yes'),
(254, 'woocommerce_allow_tracking', 'no', 'no'),
(255, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(256, 'woocommerce_single_image_width', '600', 'yes'),
(257, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(258, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(259, 'woocommerce_demo_store', 'no', 'no'),
(260, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"produit\";s:13:\"category_base\";s:17:\"categorie-produit\";s:8:\"tag_base\";s:17:\"etiquette-produit\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(261, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(262, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(500, '_transient_wc_attribute_taxonomies', 'a:1:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:6:\"taille\";s:15:\"attribute_label\";s:6:\"Taille\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}}', 'yes'),
(595, 'product_cat_children', 'a:0:{}', 'yes'),
(265, 'default_product_cat', '15', 'yes'),
(912, '_site_transient_browser_97fc230848bc304ccee289a55f3e5339', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"80.0.3987.132\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(268, 'woocommerce_version', '3.9.1', 'yes'),
(269, 'woocommerce_db_version', '3.9.1', 'yes'),
(270, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(448, '_transient_product_query-transient-version', '1584120560', 'yes'),
(311, 'current_theme', 'Storefront', 'yes'),
(271, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"VI8B4ApZy7FgOJxsclmaWXy6N3D6k1jD\";}', 'yes'),
(272, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(273, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(274, 'widget_woocommerce_layered_nav_filters', 'a:2:{i:2;a:1:{s:5:\"title\";s:14:\"Filtres actifs\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(275, 'widget_woocommerce_layered_nav', 'a:2:{i:2;a:4:{s:5:\"title\";s:11:\"Filtré par\";s:9:\"attribute\";s:6:\"taille\";s:12:\"display_type\";s:8:\"dropdown\";s:10:\"query_type\";s:3:\"and\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(276, 'widget_woocommerce_price_filter', 'a:2:{i:2;a:1:{s:5:\"title\";s:17:\"Filtrer par tarif\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(277, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(278, 'widget_woocommerce_product_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(279, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(280, 'widget_woocommerce_products', 'a:2:{i:2;a:7:{s:5:\"title\";s:8:\"Produits\";s:6:\"number\";i:5;s:4:\"show\";s:0:\"\";s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"desc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(281, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(282, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(283, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(284, 'widget_woocommerce_rating_filter', 'a:2:{i:2;a:1:{s:5:\"title\";s:17:\"Moyenne des notes\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(786, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(289, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(293, 'woocommerce_setup_ab_wc_admin_onboarding', 'a', 'yes'),
(294, 'woocommerce_product_type', 'physical', 'yes'),
(296, 'woocommerce_stripe_settings', 'a:3:{s:7:\"enabled\";s:2:\"no\";s:14:\"create_account\";b:0;s:5:\"email\";b:0;}', 'yes'),
(297, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";b:0;}', 'yes'),
(298, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(299, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(300, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(302, '_transient_shipping-transient-version', '1581520964', 'yes'),
(303, 'woocommerce_flat_rate_1_settings', 'a:6:{s:5:\"title\";s:16:\"Colissimo ou DHL\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:2:\"10\";s:13:\"class_cost_16\";s:2:\"10\";s:13:\"no_class_cost\";s:0:\"\";s:4:\"type\";s:5:\"class\";}', 'yes'),
(304, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:\"title\";s:7:\"Forfait\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:2:\"20\";}', 'yes'),
(1011, '_transient_timeout__woocommerce_helper_updates', '1584592362', 'no'),
(1012, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1584549162;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1017, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1584549174;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:9:\"hello.php\";s:5:\"1.7.2\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.9.1\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.4\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"4.0.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.4.0.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(449, '_transient_product-transient-version', '1581520964', 'yes'),
(678, 'storefront_nux_guided_tour', '1', 'yes'),
(372, 'woocommerce_free_shipping_3_settings', 'a:3:{s:5:\"title\";s:18:\"Livraison gratuite\";s:8:\"requires\";s:10:\"min_amount\";s:10:\"min_amount\";s:3:\"100\";}', 'yes'),
(456, '_transient_orders-transient-version', '1581520964', 'yes'),
(682, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(947, '_transient_timeout_wc_product_children_15', '1586718393', 'no'),
(911, '_site_transient_timeout_browser_97fc230848bc304ccee289a55f3e5339', '1584725359', 'no'),
(1009, '_site_transient_timeout_theme_roots', '1584550962', 'no'),
(1010, '_site_transient_theme_roots', 'a:4:{s:10:\"storefront\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(1007, '_transient_timeout__woocommerce_helper_subscriptions', '1584550062', 'no'),
(1008, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(913, '_site_transient_timeout_php_check_7ddb89c02f1abf791c6717dc46cef1eb', '1584725360', 'no'),
(914, '_site_transient_php_check_7ddb89c02f1abf791c6717dc46cef1eb', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(932, '_transient_is_multi_author', '0', 'yes'),
(935, '_transient_timeout_wc_term_counts', '1586712579', 'no'),
(936, '_transient_wc_term_counts', 'a:5:{i:25;s:1:\"1\";i:17;s:1:\"2\";i:19;s:1:\"3\";i:18;s:1:\"1\";i:24;s:1:\"1\";}', 'no'),
(937, '_transient_timeout_wc_product_children_22', '1586712579', 'no'),
(938, '_transient_wc_product_children_22', 'a:2:{s:3:\"all\";a:4:{i:0;i:24;i:1;i:25;i:2;i:26;i:3;i:27;}s:7:\"visible\";a:4:{i:0;i:24;i:1;i:25;i:2;i:26;i:3;i:27;}}', 'no'),
(939, '_transient_timeout_wc_child_has_weight_22', '1586712579', 'no'),
(940, '_transient_wc_child_has_weight_22', '0', 'no'),
(941, '_transient_timeout_wc_child_has_dimensions_22', '1586712579', 'no'),
(942, '_transient_wc_child_has_dimensions_22', '0', 'no'),
(943, '_transient_timeout_wc_customer_bought_product_c4ca4238a0b923820dcc509a6f75849b', '1586712579', 'no'),
(944, '_transient_wc_customer_bought_product_c4ca4238a0b923820dcc509a6f75849b', 'a:2:{s:7:\"version\";s:10:\"1581520964\";s:5:\"value\";a:1:{i:0;i:10;}}', 'no'),
(948, '_transient_wc_product_children_15', 'a:2:{s:3:\"all\";a:4:{i:0;i:16;i:1;i:17;i:2;i:18;i:3;i:19;}s:7:\"visible\";a:4:{i:0;i:16;i:1;i:17;i:2;i:18;i:3;i:19;}}', 'no'),
(949, '_transient_timeout_wc_child_has_weight_15', '1586718393', 'no'),
(950, '_transient_wc_child_has_weight_15', '0', 'no'),
(951, '_transient_timeout_wc_child_has_dimensions_15', '1586718393', 'no'),
(952, '_transient_wc_child_has_dimensions_15', '0', 'no'),
(1021, '_transient_doing_cron', '1584549272.8062429428100585937500', 'yes'),
(1015, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1584549171;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no');

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
) ENGINE=MyISAM AUTO_INCREMENT=387 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', 'woocommerce-placeholder.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 10, '_edit_last', '1'),
(6, 10, '_edit_lock', '1581503720:1'),
(7, 11, '_wp_attached_file', '2020/02/parapluie.jpg'),
(8, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:21:\"2020/02/parapluie.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"parapluie-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"parapluie-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"parapluie-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"parapluie-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"parapluie-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"parapluie-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"parapluie-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"parapluie-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"parapluie-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"parapluie-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 10, '_thumbnail_id', '11'),
(10, 10, '_sku', 'para1'),
(11, 10, '_regular_price', '50'),
(12, 10, '_sale_price', '20'),
(13, 10, 'total_sales', '1'),
(14, 10, '_tax_status', 'taxable'),
(15, 10, '_tax_class', ''),
(16, 10, '_manage_stock', 'yes'),
(17, 10, '_backorders', 'no'),
(18, 10, '_sold_individually', 'no'),
(19, 10, '_weight', '1'),
(20, 10, '_length', '100'),
(21, 10, '_width', '10'),
(22, 10, '_height', '10'),
(23, 10, '_virtual', 'no'),
(24, 10, '_downloadable', 'no'),
(25, 10, '_download_limit', '-1'),
(26, 10, '_download_expiry', '-1'),
(27, 10, '_stock', '49.000000'),
(28, 10, '_stock_status', 'instock'),
(29, 10, '_wc_average_rating', '0'),
(30, 10, '_wc_review_count', '0'),
(31, 10, '_product_version', '3.9.1'),
(32, 10, '_price', '20'),
(33, 12, '_order_key', 'wc_order_LZB7a0tkteww3'),
(34, 12, '_customer_user', '1'),
(35, 12, '_payment_method', 'bacs'),
(36, 12, '_payment_method_title', 'Virement bancaire'),
(37, 12, '_customer_ip_address', '::1'),
(38, 12, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36'),
(39, 12, '_created_via', 'checkout'),
(40, 12, '_cart_hash', '2d31b2afd80282bef8b1b193805e18c8'),
(41, 12, '_billing_first_name', 'Arnaud'),
(42, 12, '_billing_last_name', 'MALFAIT'),
(43, 12, '_billing_address_1', '9 Rue des boulots'),
(44, 12, '_billing_city', 'Franconville'),
(45, 12, '_billing_postcode', '95150'),
(46, 12, '_billing_country', 'FR'),
(47, 12, '_billing_email', 'arnaud.malfait@hotmail.fr'),
(48, 12, '_billing_phone', '0659541323'),
(49, 12, '_shipping_first_name', 'Arnaud'),
(50, 12, '_shipping_last_name', 'MALFAIT'),
(51, 12, '_shipping_address_1', '9 Rue des boulots'),
(52, 12, '_shipping_city', 'Franconville'),
(53, 12, '_shipping_postcode', '95150'),
(54, 12, '_shipping_country', 'FR'),
(55, 12, '_order_currency', 'EUR'),
(56, 12, '_cart_discount', '0'),
(57, 12, '_cart_discount_tax', '0'),
(58, 12, '_order_shipping', '20'),
(59, 12, '_order_shipping_tax', '4'),
(60, 12, '_order_tax', '3.33'),
(61, 12, '_order_total', '44.00'),
(62, 12, '_order_version', '3.9.1'),
(63, 12, '_prices_include_tax', 'yes'),
(64, 12, '_billing_address_index', 'Arnaud MALFAIT  9 Rue des boulots  Franconville  95150 FR arnaud.malfait@hotmail.fr 0659541323'),
(65, 12, '_shipping_address_index', 'Arnaud MALFAIT  9 Rue des boulots  Franconville  95150 FR'),
(66, 12, 'is_vat_exempt', 'no'),
(67, 12, '_recorded_sales', 'yes'),
(68, 12, '_recorded_coupon_usage_counts', 'yes'),
(69, 12, '_order_stock_reduced', 'yes'),
(70, 14, '_wp_attached_file', '2020/02/sac.jpg'),
(71, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:15:\"2020/02/sac.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"sac-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"sac-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"sac-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"sac-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:15:\"sac-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"sac-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"sac-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"sac-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"sac-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(72, 13, '_edit_last', '1'),
(73, 13, '_edit_lock', '1581504796:1'),
(74, 13, '_thumbnail_id', '14'),
(75, 13, '_sku', 'panier1'),
(76, 13, '_regular_price', '39.90'),
(77, 13, 'total_sales', '4'),
(78, 13, '_tax_status', 'taxable'),
(79, 13, '_tax_class', ''),
(80, 13, '_manage_stock', 'yes'),
(81, 13, '_backorders', 'no'),
(82, 13, '_sold_individually', 'no'),
(83, 13, '_virtual', 'no'),
(84, 13, '_downloadable', 'no'),
(85, 13, '_download_limit', '-1'),
(86, 13, '_download_expiry', '-1'),
(87, 13, '_stock', '6.000000'),
(88, 13, '_stock_status', 'instock'),
(89, 13, '_wc_average_rating', '0'),
(90, 13, '_wc_review_count', '0'),
(91, 13, '_product_version', '3.9.1'),
(92, 13, '_price', '39.90'),
(93, 15, '_edit_last', '1'),
(94, 15, '_edit_lock', '1581506432:1'),
(95, 15, 'total_sales', '1'),
(96, 15, '_tax_status', 'taxable'),
(97, 15, '_tax_class', ''),
(98, 15, '_manage_stock', 'no'),
(99, 15, '_backorders', 'no'),
(100, 15, '_sold_individually', 'no'),
(101, 15, '_virtual', 'no'),
(102, 15, '_downloadable', 'no'),
(103, 15, '_download_limit', '-1'),
(104, 15, '_download_expiry', '-1'),
(105, 15, '_stock', NULL),
(106, 15, '_stock_status', 'instock'),
(107, 15, '_wc_average_rating', '0'),
(108, 15, '_wc_review_count', '0'),
(109, 15, '_product_attributes', 'a:1:{s:9:\"pa_taille\";a:6:{s:4:\"name\";s:9:\"pa_taille\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"1\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(110, 15, '_product_version', '3.9.1'),
(111, 16, '_variation_description', ''),
(112, 16, 'total_sales', '0'),
(113, 16, '_tax_status', 'taxable'),
(114, 16, '_tax_class', 'parent'),
(115, 16, '_manage_stock', 'yes'),
(116, 16, '_backorders', 'no'),
(117, 16, '_sold_individually', 'no'),
(118, 16, '_virtual', 'no'),
(119, 16, '_downloadable', 'no'),
(120, 16, '_download_limit', '-1'),
(121, 16, '_download_expiry', '-1'),
(122, 16, '_stock', '12'),
(123, 16, '_stock_status', 'instock'),
(124, 16, '_wc_average_rating', '0'),
(125, 16, '_wc_review_count', '0'),
(126, 16, 'attribute_pa_taille', 's'),
(127, 16, '_product_version', '3.9.1'),
(128, 17, '_variation_description', ''),
(129, 17, 'total_sales', '0'),
(130, 17, '_tax_status', 'taxable'),
(131, 17, '_tax_class', 'parent'),
(132, 17, '_manage_stock', 'yes'),
(133, 17, '_backorders', 'no'),
(134, 17, '_sold_individually', 'no'),
(135, 17, '_virtual', 'no'),
(136, 17, '_downloadable', 'no'),
(137, 17, '_download_limit', '-1'),
(138, 17, '_download_expiry', '-1'),
(139, 17, '_stock', '15'),
(140, 17, '_stock_status', 'instock'),
(141, 17, '_wc_average_rating', '0'),
(142, 17, '_wc_review_count', '0'),
(143, 17, 'attribute_pa_taille', 'm'),
(144, 17, '_product_version', '3.9.1'),
(145, 18, '_variation_description', ''),
(146, 18, 'total_sales', '0'),
(147, 18, '_tax_status', 'taxable'),
(148, 18, '_tax_class', 'parent'),
(149, 18, '_manage_stock', 'yes'),
(150, 18, '_backorders', 'no'),
(151, 18, '_sold_individually', 'no'),
(152, 18, '_virtual', 'no'),
(153, 18, '_downloadable', 'no'),
(154, 18, '_download_limit', '-1'),
(155, 18, '_download_expiry', '-1'),
(156, 18, '_stock', '4.000000'),
(157, 18, '_stock_status', 'instock'),
(158, 18, '_wc_average_rating', '0'),
(159, 18, '_wc_review_count', '0'),
(160, 18, 'attribute_pa_taille', 'l'),
(161, 18, '_product_version', '3.9.1'),
(162, 19, '_variation_description', ''),
(163, 19, 'total_sales', '0'),
(164, 19, '_tax_status', 'taxable'),
(165, 19, '_tax_class', 'parent'),
(166, 19, '_manage_stock', 'yes'),
(167, 19, '_backorders', 'no'),
(168, 19, '_sold_individually', 'no'),
(169, 19, '_virtual', 'no'),
(170, 19, '_downloadable', 'no'),
(171, 19, '_download_limit', '-1'),
(172, 19, '_download_expiry', '-1'),
(173, 19, '_stock', '9'),
(174, 19, '_stock_status', 'instock'),
(175, 19, '_wc_average_rating', '0'),
(176, 19, '_wc_review_count', '0'),
(177, 19, 'attribute_pa_taille', 'xl'),
(178, 19, '_product_version', '3.9.1'),
(179, 16, '_regular_price', '20'),
(180, 16, '_price', '20'),
(181, 17, '_regular_price', '20'),
(182, 17, '_price', '20'),
(183, 18, '_regular_price', '20'),
(184, 18, '_price', '20'),
(185, 19, '_regular_price', '20'),
(186, 19, '_price', '20'),
(234, 15, '_price', '20'),
(193, 15, '_sku', 'robe1'),
(194, 20, '_wp_attached_file', '2020/02/robe2.jpg'),
(195, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:641;s:6:\"height\";i:641;s:4:\"file\";s:17:\"2020/02/robe2.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"robe2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"robe2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"robe2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"robe2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"robe2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"robe2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"robe2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"robe2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(196, 15, '_thumbnail_id', '20'),
(197, 21, '_order_key', 'wc_order_2kVWAc9Z3LEWv'),
(198, 21, '_customer_user', '1'),
(199, 21, '_payment_method', 'bacs'),
(200, 21, '_payment_method_title', 'Virement bancaire'),
(201, 21, '_customer_ip_address', '::1'),
(202, 21, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36'),
(203, 21, '_created_via', 'checkout'),
(204, 21, '_cart_hash', '8c7429e7c2a702acbe0b417aa0844cfc'),
(205, 21, '_billing_first_name', 'Arnaud'),
(206, 21, '_billing_last_name', 'MALFAIT'),
(207, 21, '_billing_address_1', '9 Rue des boulots'),
(208, 21, '_billing_city', 'Franconville'),
(209, 21, '_billing_postcode', '95150'),
(210, 21, '_billing_country', 'FR'),
(211, 21, '_billing_email', 'arnaud.malfait@hotmail.fr'),
(212, 21, '_billing_phone', '0659541323'),
(213, 21, '_shipping_first_name', 'Arnaud'),
(214, 21, '_shipping_last_name', 'MALFAIT'),
(215, 21, '_shipping_address_1', '9 Rue des boulots'),
(216, 21, '_shipping_city', 'Franconville'),
(217, 21, '_shipping_postcode', '95150'),
(218, 21, '_shipping_country', 'FR'),
(219, 21, '_order_currency', 'EUR'),
(220, 21, '_cart_discount', '0'),
(221, 21, '_cart_discount_tax', '0'),
(222, 21, '_order_shipping', '10.00'),
(223, 21, '_order_shipping_tax', '2'),
(224, 21, '_order_tax', '29.93'),
(225, 21, '_order_total', '191.60'),
(226, 21, '_order_version', '3.9.1'),
(227, 21, '_prices_include_tax', 'yes'),
(228, 21, '_billing_address_index', 'Arnaud MALFAIT  9 Rue des boulots  Franconville  95150 FR arnaud.malfait@hotmail.fr 0659541323'),
(229, 21, '_shipping_address_index', 'Arnaud MALFAIT  9 Rue des boulots  Franconville  95150 FR'),
(230, 21, 'is_vat_exempt', 'no'),
(231, 21, '_recorded_sales', 'yes'),
(232, 21, '_recorded_coupon_usage_counts', 'yes'),
(233, 21, '_order_stock_reduced', 'yes'),
(235, 22, '_edit_last', '1'),
(236, 22, '_edit_lock', '1581516009:1'),
(237, 23, '_wp_attached_file', '2020/02/pantalon2.jpg'),
(238, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:641;s:6:\"height\";i:641;s:4:\"file\";s:21:\"2020/02/pantalon2.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"pantalon2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"pantalon2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"pantalon2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"pantalon2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"pantalon2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"pantalon2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"pantalon2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"pantalon2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(239, 22, '_thumbnail_id', '23'),
(328, 22, '_default_attributes', 'a:1:{s:9:\"pa_taille\";s:1:\"s\";}'),
(241, 22, 'total_sales', '0'),
(242, 22, '_tax_status', 'taxable'),
(243, 22, '_tax_class', ''),
(244, 22, '_manage_stock', 'no'),
(245, 22, '_backorders', 'no'),
(246, 22, '_sold_individually', 'no'),
(247, 22, '_virtual', 'no'),
(248, 22, '_downloadable', 'no'),
(249, 22, '_download_limit', '-1'),
(250, 22, '_download_expiry', '-1'),
(251, 22, '_stock', NULL),
(252, 22, '_stock_status', 'instock'),
(253, 22, '_wc_average_rating', '0'),
(254, 22, '_wc_review_count', '0'),
(255, 22, '_product_version', '3.9.1'),
(257, 22, '_product_attributes', 'a:1:{s:9:\"pa_taille\";a:6:{s:4:\"name\";s:9:\"pa_taille\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"1\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(258, 22, '_sku', 'pantalon1'),
(259, 24, '_variation_description', ''),
(260, 24, 'total_sales', '0'),
(261, 24, '_tax_status', 'taxable'),
(262, 24, '_tax_class', 'parent'),
(263, 24, '_manage_stock', 'yes'),
(264, 24, '_backorders', 'no'),
(265, 24, '_sold_individually', 'no'),
(266, 24, '_virtual', 'no'),
(267, 24, '_downloadable', 'no'),
(268, 24, '_download_limit', '-1'),
(269, 24, '_download_expiry', '-1'),
(270, 24, '_stock', '26'),
(271, 24, '_stock_status', 'instock'),
(272, 24, '_wc_average_rating', '0'),
(273, 24, '_wc_review_count', '0'),
(274, 24, 'attribute_pa_taille', 's'),
(275, 24, '_product_version', '3.9.1'),
(276, 25, '_variation_description', ''),
(277, 25, 'total_sales', '0'),
(278, 25, '_tax_status', 'taxable'),
(279, 25, '_tax_class', 'parent'),
(280, 25, '_manage_stock', 'yes'),
(281, 25, '_backorders', 'no'),
(282, 25, '_sold_individually', 'no'),
(283, 25, '_virtual', 'no'),
(284, 25, '_downloadable', 'no'),
(285, 25, '_download_limit', '-1'),
(286, 25, '_download_expiry', '-1'),
(287, 25, '_stock', '26'),
(288, 25, '_stock_status', 'instock'),
(289, 25, '_wc_average_rating', '0'),
(290, 25, '_wc_review_count', '0'),
(291, 25, 'attribute_pa_taille', 'm'),
(292, 25, '_product_version', '3.9.1'),
(293, 26, '_variation_description', ''),
(294, 26, 'total_sales', '0'),
(295, 26, '_tax_status', 'taxable'),
(296, 26, '_tax_class', 'parent'),
(297, 26, '_manage_stock', 'yes'),
(298, 26, '_backorders', 'no'),
(299, 26, '_sold_individually', 'no'),
(300, 26, '_virtual', 'no'),
(301, 26, '_downloadable', 'no'),
(302, 26, '_download_limit', '-1'),
(303, 26, '_download_expiry', '-1'),
(304, 26, '_stock', '26'),
(305, 26, '_stock_status', 'instock'),
(306, 26, '_wc_average_rating', '0'),
(307, 26, '_wc_review_count', '0'),
(308, 26, 'attribute_pa_taille', 'l'),
(309, 26, '_product_version', '3.9.1'),
(310, 27, '_variation_description', ''),
(311, 27, 'total_sales', '0'),
(312, 27, '_tax_status', 'taxable'),
(313, 27, '_tax_class', 'parent'),
(314, 27, '_manage_stock', 'yes'),
(315, 27, '_backorders', 'no'),
(316, 27, '_sold_individually', 'no'),
(317, 27, '_virtual', 'no'),
(318, 27, '_downloadable', 'no'),
(319, 27, '_download_limit', '-1'),
(320, 27, '_download_expiry', '-1'),
(321, 27, '_stock', '26'),
(322, 27, '_stock_status', 'instock'),
(323, 27, '_wc_average_rating', '0'),
(324, 27, '_wc_review_count', '0'),
(325, 27, 'attribute_pa_taille', 'xl'),
(326, 27, '_product_version', '3.9.1'),
(329, 26, '_regular_price', '35'),
(330, 26, '_price', '35'),
(331, 27, '_regular_price', '35'),
(332, 27, '_price', '35'),
(333, 24, '_regular_price', '35'),
(334, 24, '_price', '35'),
(335, 25, '_regular_price', '35'),
(336, 25, '_price', '35'),
(338, 22, '_price', '35'),
(341, 6, '_edit_lock', '1581513232:1'),
(342, 29, '_menu_item_type', 'post_type'),
(343, 29, '_menu_item_menu_item_parent', '0'),
(344, 29, '_menu_item_object_id', '6'),
(345, 29, '_menu_item_object', 'page'),
(346, 29, '_menu_item_target', ''),
(347, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(348, 29, '_menu_item_xfn', ''),
(349, 29, '_menu_item_url', ''),
(351, 30, '_menu_item_type', 'post_type'),
(352, 30, '_menu_item_menu_item_parent', '0'),
(353, 30, '_menu_item_object_id', '9'),
(354, 30, '_menu_item_object', 'page'),
(355, 30, '_menu_item_target', ''),
(356, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(357, 30, '_menu_item_xfn', ''),
(358, 30, '_menu_item_url', ''),
(365, 33, '_edit_lock', '1581513783:1'),
(366, 22, '_upsell_ids', 'a:2:{i:0;i:13;i:1;i:10;}'),
(367, 35, '_edit_last', '1'),
(368, 35, '_edit_lock', '1581520370:1'),
(369, 35, 'discount_type', 'percent'),
(370, 35, 'coupon_amount', '20'),
(371, 35, 'individual_use', 'no'),
(372, 35, 'product_ids', '22'),
(373, 35, 'usage_limit', '0'),
(374, 35, 'usage_limit_per_user', '0'),
(375, 35, 'limit_usage_to_x_items', '0'),
(376, 35, 'usage_count', '0'),
(377, 35, 'date_expires', NULL),
(378, 35, 'free_shipping', 'no'),
(379, 35, 'exclude_sale_items', 'no'),
(380, 12, '_edit_lock', '1581520493:1'),
(381, 12, '_edit_last', '1'),
(382, 12, '_date_completed', '1581520632'),
(383, 12, '_date_paid', '1581520632'),
(384, 12, '_paid_date', '2020-02-12 16:17:12'),
(385, 12, '_completed_date', '2020-02-12 16:17:12'),
(386, 12, '_download_permissions_granted', 'yes');

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
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-02-12 09:19:40', '2020-02-12 08:19:40', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2020-02-12 09:19:40', '2020-02-12 08:19:40', '', 0, 'http://localhost/woocommerce/?p=1', 0, 'post', '', 1),
(3, 1, '2020-02-12 09:19:40', '2020-02-12 08:19:40', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : http://localhost/woocommerce.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2020-02-12 09:19:40', '2020-02-12 08:19:40', '', 0, 'http://localhost/woocommerce/?page_id=3', 0, 'page', '', 0),
(36, 1, '2020-03-13 18:29:20', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-03-13 18:29:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/woocommerce/?p=36', 0, 'post', '', 0),
(5, 1, '2020-02-12 09:25:47', '2020-02-12 08:25:47', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-02-12 09:25:47', '2020-02-12 08:25:47', '', 0, 'http://localhost/woocommerce/wp-content/uploads/2020/02/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2020-02-12 09:33:15', '2020-02-12 08:33:15', '', 'Boutique', '', 'publish', 'closed', 'closed', '', 'boutique', '', '', '2020-02-12 09:33:15', '2020-02-12 08:33:15', '', 0, 'http://localhost/woocommerce/boutique/', 0, 'page', '', 0),
(7, 1, '2020-02-12 09:33:15', '2020-02-12 08:33:15', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Panier', '', 'publish', 'closed', 'closed', '', 'panier', '', '', '2020-02-12 09:33:15', '2020-02-12 08:33:15', '', 0, 'http://localhost/woocommerce/panier/', 0, 'page', '', 0),
(8, 1, '2020-02-12 09:33:15', '2020-02-12 08:33:15', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Validation de la commande', '', 'publish', 'closed', 'closed', '', 'commande', '', '', '2020-02-12 09:33:15', '2020-02-12 08:33:15', '', 0, 'http://localhost/woocommerce/commande/', 0, 'page', '', 0),
(9, 1, '2020-02-12 09:33:15', '2020-02-12 08:33:15', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'Mon compte', '', 'publish', 'closed', 'closed', '', 'mon-compte', '', '', '2020-02-12 09:33:15', '2020-02-12 08:33:15', '', 0, 'http://localhost/woocommerce/mon-compte/', 0, 'page', '', 0),
(10, 1, '2020-02-12 11:37:36', '2020-02-12 10:37:36', 'Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 'Paraplui', 'Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression.', 'publish', 'open', 'closed', '', 'paraplui', '', '', '2020-02-12 11:40:40', '2020-02-12 10:40:40', '', 0, 'http://localhost/woocommerce/?post_type=product&#038;p=10', 0, 'product', '', 0),
(11, 1, '2020-02-12 11:35:53', '2020-02-12 10:35:53', '', 'parapluie', '', 'inherit', 'open', 'closed', '', 'parapluie', '', '', '2020-02-12 11:35:53', '2020-02-12 10:35:53', '', 10, 'http://localhost/woocommerce/wp-content/uploads/2020/02/parapluie.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2020-02-12 11:40:40', '2020-02-12 10:40:40', '', 'Order &ndash; février 12, 2020 @ 11:40  ', '', 'wc-completed', 'closed', 'closed', 'wc_order_27PlUMAYU5S4E', 'commande-feb-12-2020-1040-am', '', '', '2020-02-12 16:17:12', '2020-02-12 15:17:12', '', 0, 'http://localhost/woocommerce/?post_type=shop_order&#038;p=12', 0, 'shop_order', '', 3),
(13, 1, '2020-02-12 11:55:35', '2020-02-12 10:55:35', 'Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 'Panier en Osier', 'Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression.', 'publish', 'open', 'closed', '', 'panier-en-osier', '', '', '2020-02-12 12:25:44', '2020-02-12 11:25:44', '', 0, 'http://localhost/woocommerce/?post_type=product&#038;p=13', 0, 'product', '', 0),
(14, 1, '2020-02-12 11:53:06', '2020-02-12 10:53:06', '', 'sac', '', 'inherit', 'open', 'closed', '', 'sac', '', '', '2020-02-12 11:53:06', '2020-02-12 10:53:06', '', 13, 'http://localhost/woocommerce/wp-content/uploads/2020/02/sac.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2020-02-12 12:21:34', '2020-02-12 11:21:34', 'Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 'Robe rouge', 'Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression.', 'publish', 'open', 'closed', '', 'robe-rouge', '', '', '2020-02-12 12:25:47', '2020-02-12 11:25:47', '', 0, 'http://localhost/woocommerce/?post_type=product&#038;p=15', 0, 'product', '', 0),
(16, 1, '2020-02-12 12:13:36', '2020-02-12 11:13:36', '', 'Robe rouge - S', 'Taille: S', 'publish', 'closed', 'closed', '', 'robe-rouge-s', '', '', '2020-02-12 12:21:07', '2020-02-12 11:21:07', '', 15, 'http://localhost/woocommerce/?post_type=product_variation&p=16', 1, 'product_variation', '', 0),
(17, 1, '2020-02-12 12:13:36', '2020-02-12 11:13:36', '', 'Robe rouge - M', 'Taille: M', 'publish', 'closed', 'closed', '', 'robe-rouge-m', '', '', '2020-02-12 12:21:07', '2020-02-12 11:21:07', '', 15, 'http://localhost/woocommerce/?post_type=product_variation&p=17', 2, 'product_variation', '', 0),
(18, 1, '2020-02-12 12:13:36', '2020-02-12 11:13:36', '', 'Robe rouge - L', 'Taille: L', 'publish', 'closed', 'closed', '', 'robe-rouge-l', '', '', '2020-02-12 12:25:44', '2020-02-12 11:25:44', '', 15, 'http://localhost/woocommerce/?post_type=product_variation&p=18', 3, 'product_variation', '', 0),
(19, 1, '2020-02-12 12:13:36', '2020-02-12 11:13:36', '', 'Robe rouge - XL', 'Taille: XL', 'publish', 'closed', 'closed', '', 'robe-rouge-xl', '', '', '2020-02-12 12:21:07', '2020-02-12 11:21:07', '', 15, 'http://localhost/woocommerce/?post_type=product_variation&p=19', 4, 'product_variation', '', 0),
(20, 1, '2020-02-12 12:22:34', '2020-02-12 11:22:34', '', 'robe2', '', 'inherit', 'open', 'closed', '', 'robe2', '', '', '2020-02-12 12:22:34', '2020-02-12 11:22:34', '', 15, 'http://localhost/woocommerce/wp-content/uploads/2020/02/robe2.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2020-02-12 12:25:44', '2020-02-12 11:25:44', '', 'Order &ndash; février 12, 2020 @ 12:25  ', '', 'wc-on-hold', 'open', 'closed', 'wc_order_bVA5ZKT8AqlJ2', 'commande-feb-12-2020-1125-am', '', '', '2020-02-12 12:25:44', '2020-02-12 11:25:44', '', 0, 'http://localhost/woocommerce/?post_type=shop_order&#038;p=21', 0, 'shop_order', '', 2),
(22, 1, '2020-02-12 13:42:37', '2020-02-12 12:42:37', 'Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 'Pantalon blanc', 'Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression.', 'publish', 'open', 'closed', '', 'pantalon-blanc', '', '', '2020-02-12 15:02:29', '2020-02-12 14:02:29', '', 0, 'http://localhost/woocommerce/?post_type=product&#038;p=22', 0, 'product', '', 0),
(23, 1, '2020-02-12 13:41:19', '2020-02-12 12:41:19', '', 'pantalon2', '', 'inherit', 'open', 'closed', '', 'pantalon2', '', '', '2020-02-12 13:41:19', '2020-02-12 12:41:19', '', 22, 'http://localhost/woocommerce/wp-content/uploads/2020/02/pantalon2.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2020-02-12 13:45:40', '2020-02-12 12:45:40', '', 'Pantalon blanc - S', 'Taille: S', 'publish', 'closed', 'closed', '', 'pantalon-blanc-s', '', '', '2020-02-12 13:47:13', '2020-02-12 12:47:13', '', 22, 'http://localhost/woocommerce/?post_type=product_variation&p=24', 1, 'product_variation', '', 0),
(25, 1, '2020-02-12 13:45:40', '2020-02-12 12:45:40', '', 'Pantalon blanc - M', 'Taille: M', 'publish', 'closed', 'closed', '', 'pantalon-blanc-m', '', '', '2020-02-12 13:47:13', '2020-02-12 12:47:13', '', 22, 'http://localhost/woocommerce/?post_type=product_variation&p=25', 2, 'product_variation', '', 0),
(26, 1, '2020-02-12 13:45:41', '2020-02-12 12:45:41', '', 'Pantalon blanc - L', 'Taille: L', 'publish', 'closed', 'closed', '', 'pantalon-blanc-l', '', '', '2020-02-12 13:47:13', '2020-02-12 12:47:13', '', 22, 'http://localhost/woocommerce/?post_type=product_variation&p=26', 3, 'product_variation', '', 0),
(27, 1, '2020-02-12 13:45:41', '2020-02-12 12:45:41', '', 'Pantalon blanc - XL', 'Taille: XL', 'publish', 'closed', 'closed', '', 'pantalon-blanc-xl', '', '', '2020-02-12 13:47:13', '2020-02-12 12:47:13', '', 22, 'http://localhost/woocommerce/?post_type=product_variation&p=27', 4, 'product_variation', '', 0),
(29, 1, '2020-02-12 14:09:10', '2020-02-12 13:09:10', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2020-02-12 14:09:10', '2020-02-12 13:09:10', '', 0, 'http://localhost/woocommerce/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2020-02-12 14:09:10', '2020-02-12 13:09:10', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2020-02-12 14:09:10', '2020-02-12 13:09:10', '', 0, 'http://localhost/woocommerce/?p=30', 2, 'nav_menu_item', '', 0),
(33, 1, '2020-02-12 14:24:38', '2020-02-12 13:24:38', '<!-- wp:paragraph -->\n<p> Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker. </p>\n<!-- /wp:paragraph -->', 'Condition Général de Vente', '', 'publish', 'closed', 'closed', '', 'condition-general-de-vente', '', '', '2020-02-12 14:24:38', '2020-02-12 13:24:38', '', 0, 'http://localhost/woocommerce/?page_id=33', 0, 'page', '', 0),
(34, 1, '2020-02-12 14:24:38', '2020-02-12 13:24:38', '<!-- wp:paragraph -->\n<p> Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker. </p>\n<!-- /wp:paragraph -->', 'Condition Général de Vente', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2020-02-12 14:24:38', '2020-02-12 13:24:38', '', 33, 'http://localhost/woocommerce/2020/02/12/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2020-02-12 16:12:54', '2020-02-12 15:12:54', '', '123', '', 'publish', 'closed', 'closed', '', '123', '', '', '2020-02-12 16:15:12', '2020-02-12 15:15:12', '', 0, 'http://localhost/woocommerce/?post_type=shop_coupon&#038;p=35', 0, 'shop_coupon', '', 0);

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
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 17, 'order', '0'),
(2, 17, 'product_count_product_cat', '2'),
(3, 18, 'product_count_product_tag', '1'),
(4, 19, 'product_count_product_tag', '3'),
(5, 20, 'order_pa_taille', '0'),
(6, 21, 'order_pa_taille', '0'),
(7, 22, 'order_pa_taille', '0'),
(8, 23, 'order_pa_taille', '0'),
(9, 22, 'order', '3'),
(10, 21, 'order', '2'),
(11, 20, 'order', '1'),
(12, 23, 'order', '4'),
(13, 15, 'product_count_product_cat', '0'),
(14, 24, 'order', '0'),
(15, 24, 'product_count_product_cat', '1'),
(16, 25, 'order', '0'),
(17, 25, 'product_count_product_cat', '1'),
(18, 26, 'order_pa_taille', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
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
(16, 'Produit encombrant', 'produit-encombrant', 0),
(17, 'accessoire', 'accessoire', 0),
(18, 'collection hiver', 'collection-hiver', 0),
(19, 'collection printemps', 'collection-printemps', 0),
(20, 'S', 's', 0),
(21, 'M', 'm', 0),
(22, 'L', 'l', 0),
(23, 'XL', 'xl', 0),
(24, 'robe', 'robe', 0),
(25, 'pantalon', 'pantalon', 0),
(26, 'pantalon', 'pantalon', 0),
(27, 'Menu principal', 'menu-principal', 0);

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
(10, 17, 0),
(10, 18, 0),
(10, 16, 0),
(10, 2, 0),
(13, 17, 0),
(13, 19, 0),
(13, 2, 0),
(15, 20, 0),
(15, 21, 0),
(15, 22, 0),
(15, 23, 0),
(15, 4, 0),
(22, 19, 0),
(22, 25, 0),
(15, 24, 0),
(15, 19, 0),
(22, 20, 0),
(22, 21, 0),
(22, 22, 0),
(22, 23, 0),
(22, 4, 0),
(30, 27, 0),
(29, 27, 0);

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
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 2),
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
(16, 16, 'product_shipping_class', 'Coût supplémentaire des produits encombrants', 0, 1),
(17, 17, 'product_cat', '', 0, 2),
(18, 18, 'product_tag', '', 0, 1),
(19, 19, 'product_tag', '', 0, 3),
(20, 20, 'pa_taille', '', 0, 2),
(21, 21, 'pa_taille', '', 0, 2),
(22, 22, 'pa_taille', '', 0, 2),
(23, 23, 'pa_taille', '', 0, 2),
(25, 25, 'product_cat', '', 0, 1),
(24, 24, 'product_cat', '', 0, 1),
(26, 26, 'pa_taille', '', 0, 0),
(27, 27, 'nav_menu', '', 0, 2);

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
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(16, 1, 'session_tokens', 'a:1:{s:64:\"00091b4ca31c0084bd7b3e00b2a4721380160c9a65fadf5844a428936cf19e60\";a:4:{s:10:\"expiration\";i:1584293355;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36\";s:5:\"login\";i:1584120555;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '36'),
(18, 1, '_woocommerce_tracks_anon_id', 'woo:kKfZ10tC/UJ+UiPAPZfAPl1y'),
(19, 1, 'wc_last_active', '1584057600'),
(20, 1, 'dismissed_wc_admin_notice', '1'),
(21, 1, 'dismissed_no_secure_connection_notice', '1'),
(22, 1, 'wp_user-settings', 'libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1581503852'),
(46, 1, 'paying_customer', '1'),
(25, 1, 'last_update', '1581520632'),
(26, 1, 'billing_first_name', 'Arnaud'),
(27, 1, 'billing_last_name', 'MALFAIT'),
(28, 1, 'billing_address_1', '9 Rue des boulots'),
(29, 1, 'billing_city', 'Franconville'),
(30, 1, 'billing_postcode', '95150'),
(31, 1, 'billing_country', 'FR'),
(32, 1, 'billing_email', 'arnaud.malfait@hotmail.fr'),
(33, 1, 'billing_phone', '0659541323'),
(34, 1, 'shipping_first_name', 'Arnaud'),
(35, 1, 'shipping_last_name', 'MALFAIT'),
(36, 1, 'shipping_address_1', '9 Rue des boulots'),
(37, 1, 'shipping_city', 'Franconville'),
(38, 1, 'shipping_postcode', '95150'),
(39, 1, 'shipping_country', 'FR'),
(40, 1, 'shipping_method', 'a:1:{i:0;s:11:\"flat_rate:1\";}'),
(42, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"817573f14b4f70ec0f6e0c6dc21667a6\";a:11:{s:3:\"key\";s:32:\"817573f14b4f70ec0f6e0c6dc21667a6\";s:10:\"product_id\";i:22;s:12:\"variation_id\";i:24;s:9:\"variation\";a:1:{s:19:\"attribute_pa_taille\";s:1:\"s\";}s:8:\"quantity\";i:8;s:9:\"data_hash\";s:32:\"a9a7c9eeb4ab439c824381268383126f\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:1:{i:1;d:5.83333333;}s:5:\"total\";a:1:{i:1;d:4.666666670000001;}}s:13:\"line_subtotal\";d:29.166666669999998;s:17:\"line_subtotal_tax\";d:5.83333333;s:10:\"line_total\";d:23.333333330000002;s:8:\"line_tax\";d:4.666666670000001;}}}'),
(43, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(44, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-product_cat\";i:3;s:15:\"add-product_tag\";}'),
(45, 1, 'nav_menu_recently_edited', '27');

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
(1, 'arnaud', '$P$BM9grGxhh7LAD6.5OVYdX/wPM9g35..', 'arnaud', 'arnaud.malfait89@gmail.com', '', '2020-02-12 08:19:40', '', 0, 'arnaud');

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
(10, 'para1', 0, 0, '20.00', '20.00', 1, 49, 'instock', 0, '0.00', 1),
(13, 'panier1', 0, 0, '39.90', '39.90', 0, 6, 'instock', 0, '0.00', 4),
(15, 'robe1', 0, 0, '20.00', '20.00', 0, NULL, 'instock', 0, '0.00', 1),
(16, '', 0, 0, '20.00', '20.00', 0, 12, 'instock', 0, '0.00', 0),
(17, '', 0, 0, '20.00', '20.00', 0, 15, 'instock', 0, '0.00', 0),
(18, '', 0, 0, '20.00', '20.00', 0, 4, 'instock', 0, '0.00', 0),
(19, '', 0, 0, '20.00', '20.00', 0, 9, 'instock', 0, '0.00', 0),
(22, 'pantalon1', 0, 0, '35.00', '35.00', 0, NULL, 'instock', 0, '0.00', 0),
(24, '', 0, 0, '35.00', '35.00', 0, 26, 'instock', 0, '0.00', 0),
(25, '', 0, 0, '35.00', '35.00', 0, 26, 'instock', 0, '0.00', 0),
(26, '', 0, 0, '35.00', '35.00', 0, 26, 'instock', 0, '0.00', 0),
(27, '', 0, 0, '35.00', '35.00', 0, 26, 'instock', 0, '0.00', 0);

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
(1, 'taille', 'Taille', 'select', 'menu_order', 1);

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
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '10'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '16.666667'),
(6, 1, '_line_subtotal_tax', '3.333333'),
(7, 1, '_line_total', '16.666667'),
(8, 1, '_line_tax', '3.333333'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:1:{i:1;s:8:\"3.333333\";}s:8:\"subtotal\";a:1:{i:1;s:8:\"3.333333\";}}'),
(10, 2, 'method_id', 'flat_rate'),
(11, 2, 'instance_id', '1'),
(12, 2, 'cost', '20.00'),
(13, 2, 'total_tax', '4'),
(14, 2, 'taxes', 'a:1:{s:5:\"total\";a:1:{i:1;s:1:\"4\";}}'),
(15, 2, 'Articles', 'Paraplui &times; 1'),
(16, 3, 'rate_id', '1'),
(17, 3, 'label', 'TVA20'),
(18, 3, 'compound', ''),
(19, 3, 'tax_amount', '3.333333'),
(20, 3, 'shipping_tax_amount', '4'),
(21, 3, 'rate_percent', '20'),
(22, 1, '_reduced_stock', '1'),
(23, 4, '_product_id', '15'),
(24, 4, '_variation_id', '18'),
(25, 4, '_qty', '1'),
(26, 4, '_tax_class', ''),
(27, 4, '_line_subtotal', '16.666667'),
(28, 4, '_line_subtotal_tax', '3.333333'),
(29, 4, '_line_total', '16.666667'),
(30, 4, '_line_tax', '3.333333'),
(31, 4, '_line_tax_data', 'a:2:{s:5:\"total\";a:1:{i:1;s:8:\"3.333333\";}s:8:\"subtotal\";a:1:{i:1;s:8:\"3.333333\";}}'),
(32, 4, 'pa_taille', 'l'),
(33, 5, '_product_id', '13'),
(34, 5, '_variation_id', '0'),
(35, 5, '_qty', '4'),
(36, 5, '_tax_class', ''),
(37, 5, '_line_subtotal', '133'),
(38, 5, '_line_subtotal_tax', '26.6'),
(39, 5, '_line_total', '133'),
(40, 5, '_line_tax', '26.6'),
(41, 5, '_line_tax_data', 'a:2:{s:5:\"total\";a:1:{i:1;s:4:\"26.6\";}s:8:\"subtotal\";a:1:{i:1;s:4:\"26.6\";}}'),
(42, 6, 'method_id', 'flat_rate'),
(43, 6, 'instance_id', '1'),
(44, 6, 'cost', '10.00'),
(45, 6, 'total_tax', '2'),
(46, 6, 'taxes', 'a:1:{s:5:\"total\";a:1:{i:1;s:1:\"2\";}}'),
(47, 6, 'Articles', 'Robe rouge - L &times; 1, Panier en Osier &times; 4'),
(48, 7, 'rate_id', '1'),
(49, 7, 'label', 'TVA20'),
(50, 7, 'compound', ''),
(51, 7, 'tax_amount', '29.933333'),
(52, 7, 'shipping_tax_amount', '2'),
(53, 7, 'rate_percent', '20'),
(54, 4, '_reduced_stock', '1'),
(55, 5, '_reduced_stock', '4');

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
(1, 'Paraplui', 'line_item', 12),
(2, 'Colissimo ou DHL', 'shipping', 12),
(3, 'FR-TVA20-1', 'tax', 12),
(4, 'Robe rouge - L', 'line_item', 21),
(5, 'Panier en Osier', 'line_item', 21),
(6, 'Colissimo ou DHL', 'shipping', 21),
(7, 'FR-TVA20-1', 'tax', 21);

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 3, 'free_shipping', 2, 1),
(1, 4, 'local_pickup', 3, 1);

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
(2, 'FR', '', '10.0000', 'TVA10', 1, 0, 0, 0, 'taux-reduit'),
(3, 'FR', '', '0.0000', 'TVA0', 1, 0, 0, 0, 'taux-zero');

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
