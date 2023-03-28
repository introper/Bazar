-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Úte 28. bře 2023, 17:39
-- Verze serveru: 10.4.17-MariaDB
-- Verze PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `bazar`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'WordPress komentátor', 'wapuu@wordpress.example', 'https://cs.wordpress.org/', '', '2023-02-01 15:20:12', '2023-02-01 14:20:12', 'Zdravím, tohle je komentář.\nChcete-li začít se schvalováním, úpravami a mazáním komentářů, pak si prohlédněte sekci Komentáře na nástěnce.\nProfilové obrázky komentujících vám přináší služba <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/Bazar-1', 'yes'),
(2, 'home', 'http://localhost/Bazar-1', 'yes'),
(3, 'blogname', 'Nazdar Bazar', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'brozovic_michal@OAUH.cz', 'yes'),
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
(23, 'date_format', 'j. n. Y', 'yes'),
(24, 'time_format', 'G:i', 'yes'),
(25, 'links_updated_date_format', 'j. n. Y, G:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:120:{s:8:\"kniha/?$\";s:25:\"index.php?post_type=kniha\";s:38:\"kniha/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=kniha&feed=$matches[1]\";s:33:\"kniha/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=kniha&feed=$matches[1]\";s:25:\"kniha/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=kniha&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"kniha/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"kniha/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"kniha/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"kniha/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"kniha/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"kniha/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"kniha/([^/]+)/embed/?$\";s:38:\"index.php?kniha=$matches[1]&embed=true\";s:26:\"kniha/([^/]+)/trackback/?$\";s:32:\"index.php?kniha=$matches[1]&tb=1\";s:46:\"kniha/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?kniha=$matches[1]&feed=$matches[2]\";s:41:\"kniha/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?kniha=$matches[1]&feed=$matches[2]\";s:34:\"kniha/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?kniha=$matches[1]&paged=$matches[2]\";s:41:\"kniha/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?kniha=$matches[1]&cpage=$matches[2]\";s:30:\"kniha/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?kniha=$matches[1]&page=$matches[2]\";s:22:\"kniha/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"kniha/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"kniha/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"kniha/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"kniha/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"kniha/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:50:\"kategorie/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?product_category=$matches[1]&feed=$matches[2]\";s:45:\"kategorie/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?product_category=$matches[1]&feed=$matches[2]\";s:26:\"kategorie/([^/]+)/embed/?$\";s:49:\"index.php?product_category=$matches[1]&embed=true\";s:38:\"kategorie/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?product_category=$matches[1]&paged=$matches[2]\";s:20:\"kategorie/([^/]+)/?$\";s:38:\"index.php?product_category=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=9&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'bazar', 'yes'),
(41, 'stylesheet', 'bazar', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Europe/Prague', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '9', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1690813212', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:6:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:33:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:4:{s:4:\"read\";b:1;s:13:\"publish_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:12:\"delete_posts\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'cs_CZ', 'yes'),
(103, 'user_count', '3', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:168:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Nejnovější příspěvky</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:237:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Nejnovější komentáře</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:145:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archivy</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:147:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Rubriky</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:9:{i:1679930413;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1679959128;a:1:{s:22:\"delete_expired_coupons\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1679970013;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1679970031;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1680013213;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1680013230;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1680013232;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1680186013;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'nonce_key', '+)=]g$,G7w$x0<j3Jhp;E`Mrk1k.|M.3]]sSSRWiT3(a`z]aVJo]#WX^;~[~pv/e', 'no'),
(117, 'nonce_salt', ' =sfkm@0(~]M;lo+U4Y@`:OAwfp7x86&^pNeH6jh0+:W G^vKG+R5`n?gvW( 8w|', 'no'),
(118, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(124, 'recovery_keys', 'a:0:{}', 'yes'),
(127, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1675262217;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(130, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:29:\"Ověření SSL se nezdařilo.\";}}', 'yes'),
(143, 'auth_key', 'LEA,TqlxryTG.Xk?^#5 Jdo`|#A{v!%n$Enjb~^;MQCs?f*@}$$e7I@KF_S]2N)~', 'no'),
(144, 'auth_salt', 'VRK.%*}cmR1)~AT1rh4!!X<uk?A1%C4,&4hB%}Z{2A=3y38,e`qPy5.`0E-X`Fqe', 'no'),
(145, 'logged_in_key', 'fbz2t68|;0. 2ERj8OBvBy3k6*ujQ#tQF*6>.1F=-3Yp0z@E(v@{:KgaAz%2^y((', 'no'),
(146, 'logged_in_salt', 'Is>i$Xtu-1t~k|pTn@1h8a,*C~H}TRN>[2qs &9/LG]=<mf|Mp9X$66(*trViL`a', 'no'),
(154, 'can_compress_scripts', '1', 'no'),
(171, 'finished_updating_comment_type', '1', 'yes'),
(172, 'recently_activated', 'a:0:{}', 'yes'),
(176, 'theme_mods_bazar', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(177, 'current_theme', 'Nazdar Bazar', 'yes'),
(178, 'theme_switched', '', 'yes'),
(179, 'theme_switched_via_customizer', '', 'yes'),
(180, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(278, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":6,\"critical\":2}', 'yes'),
(409, 'acf_version', '5.9.6', 'yes'),
(447, 'product_category_children', 'a:4:{i:8;a:2:{i:0;i:9;i:1;i:10;}i:5;a:1:{i:0;i:11;}i:7;a:1:{i:0;i:12;}i:6;a:1:{i:0;i:13;}}', 'yes'),
(891, 'options_logo', '73', 'no'),
(892, '_options_logo', 'field_63f52943f5ea6', 'no'),
(895, 'options_logo_cele', '74', 'no'),
(896, '_options_logo_cele', 'field_63f529b28629b', 'no'),
(1331, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.7.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1677797349;s:7:\"version\";s:5:\"5.7.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(1478, '_site_transient_timeout_browser_c3fcd9e52fd775c43c9553a961bfc52c', '1680098959', 'no'),
(1479, '_site_transient_browser_c3fcd9e52fd775c43c9553a961bfc52c', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"111.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1480, '_site_transient_timeout_php_check_722257398ed85eaa39d12bc29012c839', '1680098960', 'no'),
(1481, '_site_transient_php_check_722257398ed85eaa39d12bc29012c839', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(1515, '_transient_timeout_acf_plugin_updates', '1680100174', 'no'),
(1516, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.0.7\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.1.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.6\";}}', 'no'),
(1517, '_site_transient_timeout_theme_roots', '1679929174', 'no'),
(1518, '_site_transient_theme_roots', 'a:1:{s:5:\"bazar\";s:7:\"/themes\";}', 'no'),
(1520, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/cs_CZ/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"cs_CZ\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/cs_CZ/wordpress-6.1.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1679927375;s:15:\"version_checked\";s:5:\"6.1.1\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-02-21 08:26:37\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/cs_CZ.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(1521, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1679927376;s:7:\"checked\";a:1:{s:5:\"bazar\";s:3:\"0.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(1522, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1679927376;s:8:\"response\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"5.2\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:7:\"5.7.5.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/contact-form-7.5.7.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";s:6:\"tested\";s:3:\"6.2\";s:12:\"requires_php\";b:0;}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.0.7\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.1.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:3:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.0.1\";s:7:\"updated\";s:19:\"2022-04-29 16:46:35\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/5.0.1/cs_CZ.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"contact-form-7\";s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2023-02-14 08:55:11\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/plugin/contact-form-7/5.7.4/cs_CZ.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"1.7.2\";s:7:\"updated\";s:19:\"2018-03-19 07:57:54\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.7.2/cs_CZ.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:4:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.6\";s:19:\"akismet/akismet.php\";s:5:\"5.0.1\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.7.4\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no');

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(11, 9, '_edit_lock', '1675263053:1'),
(12, 9, '_edit_last', '1'),
(13, 9, '_wp_page_template', 'template-main.php'),
(14, 11, '_edit_lock', '1675276903:1'),
(15, 13, '_edit_lock', '1675276908:1'),
(16, 11, '_edit_last', '1'),
(17, 11, '_wp_page_template', 'template-register.php'),
(18, 13, '_edit_last', '1'),
(19, 13, '_wp_page_template', 'template-login.php'),
(20, 16, '_edit_last', '1'),
(21, 16, '_edit_lock', '1677011251:1'),
(22, 19, '_edit_last', '1'),
(23, 19, '_edit_lock', '1677017540:1'),
(26, 24, '_wp_attached_file', '2023/02/cz-jazyk.jpg'),
(27, 24, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:249;s:6:\"height\";i:354;s:4:\"file\";s:20:\"2023/02/cz-jazyk.jpg\";s:8:\"filesize\";i:19954;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 25, '_wp_attached_file', '2023/02/cz-jazyk-2.jpg'),
(29, 25, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:561;s:6:\"height\";i:800;s:4:\"file\";s:22:\"2023/02/cz-jazyk-2.jpg\";s:8:\"filesize\";i:114998;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 26, 'cena', '1'),
(38, 26, 'popisek', 'Lorem ipsum , zdena je borec'),
(45, 30, '_wp_attached_file', '2023/02/1676814130_'),
(48, 32, '_wp_attached_file', '2023/02/1676814142_'),
(51, 34, '_wp_attached_file', '2023/02/1676814165_cz-jazyk-3.jpg'),
(54, 36, '_wp_attached_file', '2023/02/1676814221_cz-jazyk-3.jpg'),
(55, 36, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:558;s:6:\"height\";i:800;s:4:\"file\";s:33:\"2023/02/1676814221_cz-jazyk-3.jpg\";s:8:\"filesize\";i:121312;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(56, 37, '_wp_attached_file', '2023/02/1676814221_frontio-wp.png'),
(57, 37, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:33:\"2023/02/1676814221_frontio-wp.png\";s:8:\"filesize\";i:12124;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(61, 39, '_wp_attached_file', '2023/02/1676814406_cz-jazyk-3.jpg'),
(62, 39, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:558;s:6:\"height\";i:800;s:4:\"file\";s:33:\"2023/02/1676814406_cz-jazyk-3.jpg\";s:8:\"filesize\";i:121312;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(63, 40, '_wp_attached_file', '2023/02/1676814406_frontio-wp.png'),
(64, 40, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:33:\"2023/02/1676814406_frontio-wp.png\";s:8:\"filesize\";i:12124;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(71, 42, '_wp_attached_file', '2023/02/1676814443_cz-jazyk-3.jpg'),
(72, 42, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:558;s:6:\"height\";i:800;s:4:\"file\";s:33:\"2023/02/1676814443_cz-jazyk-3.jpg\";s:8:\"filesize\";i:121312;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(73, 43, '_wp_attached_file', '2023/02/1676814443_frontio-wp.png'),
(74, 43, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:33:\"2023/02/1676814443_frontio-wp.png\";s:8:\"filesize\";i:12124;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(81, 45, '_wp_attached_file', '2023/02/1676814474_swiper-right-dis.svg'),
(82, 45, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:337;}'),
(83, 46, '_wp_attached_file', '2023/02/1676814474_swiper-right-hov.svg'),
(84, 46, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:337;}'),
(91, 48, '_wp_attached_file', '2023/02/1676827466_Rectangle94.png'),
(92, 48, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:34:\"2023/02/1676827466_Rectangle94.png\";s:8:\"filesize\";i:5642;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(98, 50, '_wp_attached_file', '2023/02/1676827472_Rectangle94.png'),
(99, 50, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:34:\"2023/02/1676827472_Rectangle94.png\";s:8:\"filesize\";i:5642;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 52, '_wp_attached_file', '2023/02/1676827668_Rectangle94.png'),
(106, 52, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:34:\"2023/02/1676827668_Rectangle94.png\";s:8:\"filesize\";i:5642;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(134, 55, '_wp_attached_file', '2023/02/1676887727_Web1920–1.jpg'),
(135, 55, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:34:\"2023/02/1676887727_Web1920–1.jpg\";s:8:\"filesize\";i:238431;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(141, 57, '_wp_attached_file', '2023/02/1676887730_Web1920–1.jpg'),
(142, 57, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:34:\"2023/02/1676887730_Web1920–1.jpg\";s:8:\"filesize\";i:238431;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(157, 59, '_wp_attached_file', '2023/02/1676889141_Web1920–1.jpg'),
(158, 59, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:34:\"2023/02/1676889141_Web1920–1.jpg\";s:8:\"filesize\";i:238431;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(186, 61, '_wp_attached_file', '2023/02/1676923286_993.jpg'),
(187, 61, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:132;s:6:\"height\";i:132;s:4:\"file\";s:26:\"2023/02/1676923286_993.jpg\";s:8:\"filesize\";i:11275;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(194, 63, '_wp_attached_file', '2023/02/1677009074_331414731_503931075153016_4342555546571786072_n.jpg'),
(195, 63, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1536;s:6:\"height\";i:2048;s:4:\"file\";s:70:\"2023/02/1677009074_331414731_503931075153016_4342555546571786072_n.jpg\";s:8:\"filesize\";i:293880;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(196, 64, '_wp_attached_file', '2023/02/1677009074_331406908_1201704754070881_2498064083351419501_n.jpg'),
(197, 64, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1536;s:6:\"height\";i:2048;s:4:\"file\";s:71:\"2023/02/1677009074_331406908_1201704754070881_2498064083351419501_n.jpg\";s:8:\"filesize\";i:232937;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(203, 66, '_wp_attached_file', '2023/02/1677009076_331414731_503931075153016_4342555546571786072_n.jpg'),
(204, 66, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1536;s:6:\"height\";i:2048;s:4:\"file\";s:70:\"2023/02/1677009076_331414731_503931075153016_4342555546571786072_n.jpg\";s:8:\"filesize\";i:293880;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(205, 67, '_wp_attached_file', '2023/02/1677009076_331406908_1201704754070881_2498064083351419501_n.jpg'),
(206, 67, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1536;s:6:\"height\";i:2048;s:4:\"file\";s:71:\"2023/02/1677009076_331406908_1201704754070881_2498064083351419501_n.jpg\";s:8:\"filesize\";i:232937;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(212, 70, '_wp_attached_file', '2023/02/logo-small-black.svg'),
(213, 70, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:5079;}'),
(214, 70, '_wp_attachment_image_alt', 'Nazdar bazar'),
(215, 72, '_wp_attached_file', '2023/02/logo-black.svg'),
(216, 72, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:5618;}'),
(217, 72, '_wp_attachment_image_alt', 'Nazdar Bazar'),
(218, 73, '_wp_attached_file', '2023/02/NazdarBazar-small.svg'),
(219, 73, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:257;}'),
(220, 73, '_wp_attachment_image_alt', 'Nazdar Bazar'),
(221, 74, '_wp_attached_file', '2023/02/NazdarBazar.svg'),
(222, 74, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:263;}'),
(223, 74, '_wp_attachment_image_alt', 'Nazdar Bazar'),
(227, 76, '_wp_attached_file', '2023/02/1677021964_frontio-wp.png'),
(228, 76, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:33:\"2023/02/1677021964_frontio-wp.png\";s:8:\"filesize\";i:12124;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(229, 77, '_wp_attached_file', '2023/02/1677021964_Group1302.png'),
(230, 77, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:425;s:6:\"height\";i:98;s:4:\"file\";s:32:\"2023/02/1677021964_Group1302.png\";s:8:\"filesize\";i:6269;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(236, 79, '_wp_attached_file', '2023/02/1677022030_swiper-arrow.svg'),
(237, 79, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:203;}'),
(238, 80, '_wp_attached_file', '2023/02/1677022030_Component2–1.svg'),
(239, 80, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:383;}'),
(245, 82, '_wp_attached_file', '2023/02/1677025400_widescreen-wallpaper-1920x1080_2635688.jpg'),
(246, 82, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:61:\"2023/02/1677025400_widescreen-wallpaper-1920x1080_2635688.jpg\";s:8:\"filesize\";i:158419;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(250, 83, '_wp_attached_file', '2023/02/logo-color.svg'),
(251, 83, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:7952;}'),
(252, 83, '_wp_attachment_image_alt', 'Nazdar Bazar'),
(256, 85, '_wp_attached_file', '2023/02/Group-107.svg'),
(257, 85, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:616;}'),
(258, 85, '_wp_attachment_image_alt', 'NB'),
(266, 87, '_wp_attached_file', '2023/02/1677084359_logo-color.svg'),
(267, 87, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:7952;}'),
(274, 89, '_wp_attached_file', '2023/02/1677084532_frontio-wp.png'),
(275, 89, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:33:\"2023/02/1677084532_frontio-wp.png\";s:8:\"filesize\";i:12124;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(281, 91, '_wp_attached_file', '2023/02/1677084552_Rectangle94.png'),
(282, 91, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:34:\"2023/02/1677084552_Rectangle94.png\";s:8:\"filesize\";i:5642;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(288, 93, '_wp_attached_file', '2023/02/1677084564_bullet.svg'),
(289, 93, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:938;}'),
(295, 95, '_wp_attached_file', '2023/02/1677084590_swiper-arrow.svg'),
(296, 95, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:203;}'),
(302, 97, '_wp_attached_file', '2023/02/1677084602_settings.svg'),
(303, 97, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1350;}'),
(319, 101, '_wp_attached_file', '2023/02/1677086111_Group1302.png'),
(320, 101, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:425;s:6:\"height\";i:98;s:4:\"file\";s:32:\"2023/02/1677086111_Group1302.png\";s:8:\"filesize\";i:6269;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(327, 103, '_wp_attached_file', '2023/02/1677087799_frontio-wp.png'),
(328, 103, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:33:\"2023/02/1677087799_frontio-wp.png\";s:8:\"filesize\";i:12124;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(334, 105, '_wp_attached_file', '2023/02/1677087924_slider-dot.svg'),
(335, 105, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:749;}'),
(341, 107, '_wp_attached_file', '2023/02/1677088032_search.svg'),
(342, 107, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:753;}'),
(351, 109, '_wp_attached_file', '2023/02/1677092253_Rectangle94.png'),
(352, 109, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:34:\"2023/02/1677092253_Rectangle94.png\";s:8:\"filesize\";i:5642;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(362, 111, '_wp_attached_file', '2023/02/1677092426_Group1302.png'),
(363, 111, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:425;s:6:\"height\";i:98;s:4:\"file\";s:32:\"2023/02/1677092426_Group1302.png\";s:8:\"filesize\";i:6269;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(370, 113, '_wp_attached_file', '2023/02/1677105265_frontio-wp.png'),
(371, 113, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:33:\"2023/02/1677105265_frontio-wp.png\";s:8:\"filesize\";i:12124;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(377, 115, '_wp_attached_file', '2023/02/1677108108_search.svg'),
(378, 115, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:753;}'),
(384, 118, '_wp_attached_file', '2023/02/1677621712_P_20230228_225316.jpg'),
(385, 118, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:4608;s:6:\"height\";i:3456;s:4:\"file\";s:40:\"2023/02/1677621712_P_20230228_225316.jpg\";s:8:\"filesize\";i:683763;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(386, 119, '_wp_attached_file', '2023/02/1677621713_P_20230228_225308.jpg'),
(387, 119, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:4608;s:6:\"height\";i:3456;s:4:\"file\";s:40:\"2023/02/1677621713_P_20230228_225308.jpg\";s:8:\"filesize\";i:746968;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(393, 121, '_wp_attached_file', '2023/02/1677623131_P_20230228_225252.jpg'),
(394, 121, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:3456;s:6:\"height\";i:4608;s:4:\"file\";s:40:\"2023/02/1677623131_P_20230228_225252.jpg\";s:8:\"filesize\";i:782790;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(395, 122, '_wp_attached_file', '2023/02/1677623131_P_20230228_225245.jpg'),
(396, 122, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:3456;s:6:\"height\";i:4608;s:4:\"file\";s:40:\"2023/02/1677623131_P_20230228_225245.jpg\";s:8:\"filesize\";i:843896;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(404, 125, '_wp_attached_file', '2023/02/1677624636_P_20230228_225316.jpg'),
(405, 125, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:4608;s:6:\"height\";i:3456;s:4:\"file\";s:40:\"2023/02/1677624636_P_20230228_225316.jpg\";s:8:\"filesize\";i:683763;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(411, 127, '_wp_attached_file', '2023/03/1677652045_P_20230228_225316.jpg'),
(412, 127, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:4608;s:6:\"height\";i:3456;s:4:\"file\";s:40:\"2023/03/1677652045_P_20230228_225316.jpg\";s:8:\"filesize\";i:683763;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(413, 128, '_wp_attached_file', '2023/03/1677652045_P_20230228_225308.jpg'),
(414, 128, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:4608;s:6:\"height\";i:3456;s:4:\"file\";s:40:\"2023/03/1677652045_P_20230228_225308.jpg\";s:8:\"filesize\";i:746968;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(420, 130, '_wp_attached_file', '2023/03/1677652099_P_20230228_225252.jpg'),
(421, 130, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:3456;s:6:\"height\";i:4608;s:4:\"file\";s:40:\"2023/03/1677652099_P_20230228_225252.jpg\";s:8:\"filesize\";i:782790;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(422, 131, '_wp_attached_file', '2023/03/1677652099_P_20230228_225245.jpg'),
(423, 131, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:3456;s:6:\"height\";i:4608;s:4:\"file\";s:40:\"2023/03/1677652099_P_20230228_225245.jpg\";s:8:\"filesize\";i:843896;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(429, 133, '_wp_attached_file', '2023/03/1677652145_P_20230228_225316.jpg'),
(430, 133, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:4608;s:6:\"height\";i:3456;s:4:\"file\";s:40:\"2023/03/1677652145_P_20230228_225316.jpg\";s:8:\"filesize\";i:683763;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(440, 137, '_wp_attached_file', '2023/03/1677652244_P_20230228_225252.jpg'),
(441, 137, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:3456;s:6:\"height\";i:4608;s:4:\"file\";s:40:\"2023/03/1677652244_P_20230228_225252.jpg\";s:8:\"filesize\";i:782790;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(442, 138, '_wp_attached_file', '2023/03/1677652244_P_20230228_225245.jpg'),
(443, 138, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:3456;s:6:\"height\";i:4608;s:4:\"file\";s:40:\"2023/03/1677652244_P_20230228_225245.jpg\";s:8:\"filesize\";i:843896;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(447, 139, 'cena', '99'),
(448, 139, 'popisek', 'Ohnuté rohy'),
(449, 140, '_wp_attached_file', '2023/03/1677796831_P_20230228_225316.jpg'),
(450, 140, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:4608;s:6:\"height\";i:3456;s:4:\"file\";s:40:\"2023/03/1677796831_P_20230228_225316.jpg\";s:8:\"filesize\";i:683763;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(451, 141, '_wp_attached_file', '2023/03/1677796831_P_20230228_225308.jpg'),
(452, 141, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:4608;s:6:\"height\";i:3456;s:4:\"file\";s:40:\"2023/03/1677796831_P_20230228_225308.jpg\";s:8:\"filesize\";i:746968;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(453, 139, 'galerie', 'a:2:{i:0;s:3:\"140\";i:1;s:3:\"141\";}'),
(454, 139, '_galerie', 'field_63f200a7117a9'),
(455, 139, '_thumbnail_id', '140'),
(456, 142, 'cena', '95'),
(457, 142, 'popisek', 'V dobrém stavu.'),
(458, 143, '_wp_attached_file', '2023/03/1677796886_P_20230228_225316.jpg'),
(459, 143, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:4608;s:6:\"height\";i:3456;s:4:\"file\";s:40:\"2023/03/1677796886_P_20230228_225316.jpg\";s:8:\"filesize\";i:683763;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(460, 142, 'galerie', 'a:1:{i:0;s:3:\"143\";}'),
(461, 142, '_galerie', 'field_63f200a7117a9'),
(462, 142, '_thumbnail_id', '143'),
(465, 145, '_wp_attached_file', '2023/03/1677796908_P_20230228_225308.jpg'),
(466, 145, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:4608;s:6:\"height\";i:3456;s:4:\"file\";s:40:\"2023/03/1677796908_P_20230228_225308.jpg\";s:8:\"filesize\";i:746968;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(470, 146, 'cena', '100'),
(471, 146, 'popisek', 'V dobrém stavu'),
(472, 147, '_wp_attached_file', '2023/03/1677796948_P_20230228_225245.jpg'),
(473, 147, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:3456;s:6:\"height\";i:4608;s:4:\"file\";s:40:\"2023/03/1677796948_P_20230228_225245.jpg\";s:8:\"filesize\";i:843896;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(474, 146, 'galerie', 'a:1:{i:0;s:3:\"147\";}'),
(475, 146, '_galerie', 'field_63f200a7117a9'),
(476, 146, '_thumbnail_id', '147'),
(477, 148, '_form', '<label> Your name\n    [text* your-name autocomplete:name] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),
(478, 148, '_mail', 'a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:39:\"[_site_title] <brozovic_michal@OAUH.cz>\";s:4:\"body\";s:161:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(479, 148, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:39:\"[_site_title] <brozovic_michal@OAUH.cz>\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(480, 148, '_messages', 'a:12:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";}'),
(481, 148, '_additional_settings', ''),
(482, 148, '_locale', 'cs_CZ'),
(483, 149, '_form', '<div class=\"form-holder\">\n[email* email]\n<label for=\"email\">Váš email</label>\n</div>\n<div class=\"form-holder\">\n[textarea* text]\n<label for=\"text\">Zpráva</label>\n</div>'),
(484, 149, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:39:\"[_site_title] <brozovic_michal@OAUH.cz>\";s:9:\"recipient\";s:13:\"[post_author]\";s:4:\"body\";s:161:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(485, 149, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:39:\"[_site_title] <brozovic_michal@OAUH.cz>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(486, 149, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(487, 149, '_additional_settings', ''),
(488, 149, '_locale', 'cs_CZ'),
(490, 149, '_config_errors', 'a:2:{s:14:\"mail.recipient\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:51:\"Invalid mailbox syntax is used in the %name% field.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(491, 151, 'cena', '232332'),
(492, 151, 'popisek', 'dawdawd'),
(493, 152, '_wp_attached_file', '2023/03/1678448296_993.jpg'),
(494, 152, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:132;s:6:\"height\";i:132;s:4:\"file\";s:26:\"2023/03/1678448296_993.jpg\";s:8:\"filesize\";i:11275;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(495, 151, 'galerie', 'a:1:{i:0;s:3:\"152\";}'),
(496, 151, '_galerie', 'field_63f200a7117a9'),
(497, 151, '_thumbnail_id', '152'),
(498, 153, 'cena', '3232'),
(499, 153, 'popisek', 'dawda'),
(500, 154, '_wp_attached_file', '2023/03/1678449733_4647877.jpg'),
(501, 154, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:132;s:6:\"height\";i:132;s:4:\"file\";s:30:\"2023/03/1678449733_4647877.jpg\";s:8:\"filesize\";i:16279;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(502, 153, 'galerie', 'a:1:{i:0;s:3:\"154\";}'),
(503, 153, '_galerie', 'field_63f200a7117a9'),
(504, 153, '_thumbnail_id', '154'),
(507, 156, '_wp_attached_file', '2023/03/1678651064_P_20230228_225245.jpg'),
(508, 156, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:3456;s:6:\"height\";i:4608;s:4:\"file\";s:40:\"2023/03/1678651064_P_20230228_225245.jpg\";s:8:\"filesize\";i:843896;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(514, 158, '_wp_attached_file', '2023/03/1678651083_P_20230228_225308.jpg'),
(515, 158, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:4608;s:6:\"height\";i:3456;s:4:\"file\";s:40:\"2023/03/1678651083_P_20230228_225308.jpg\";s:8:\"filesize\";i:746968;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(521, 160, '_wp_attached_file', '2023/03/1678651095_333356996_608150930643884_7668499718907125002_n.jpg'),
(522, 160, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1536;s:6:\"height\";i:2048;s:4:\"file\";s:70:\"2023/03/1678651095_333356996_608150930643884_7668499718907125002_n.jpg\";s:8:\"filesize\";i:512063;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(528, 163, 'cena', ''),
(529, 163, 'popisek', ''),
(530, 164, 'cena', ''),
(531, 164, 'popisek', ''),
(532, 165, 'cena', ''),
(533, 165, 'popisek', ''),
(534, 165, '_wp_trash_meta_status', 'publish'),
(535, 165, '_wp_trash_meta_time', '1679494369'),
(536, 165, '_wp_desired_post_slug', '165'),
(537, 164, '_wp_trash_meta_status', 'publish'),
(538, 164, '_wp_trash_meta_time', '1679494375'),
(539, 164, '_wp_desired_post_slug', '164'),
(540, 163, '_wp_trash_meta_status', 'publish'),
(541, 163, '_wp_trash_meta_time', '1679494375'),
(542, 163, '_wp_desired_post_slug', '163'),
(543, 166, 'cena', ''),
(544, 166, 'popisek', ''),
(545, 167, 'cena', ''),
(546, 167, 'popisek', ''),
(547, 168, 'cena', ''),
(548, 168, 'popisek', ''),
(549, 169, 'cena', ''),
(550, 169, 'popisek', ''),
(551, 168, '_wp_trash_meta_status', 'publish'),
(552, 168, '_wp_trash_meta_time', '1679494722'),
(553, 168, '_wp_desired_post_slug', '168'),
(554, 169, '_wp_trash_meta_status', 'publish'),
(555, 169, '_wp_trash_meta_time', '1679494722'),
(556, 169, '_wp_desired_post_slug', '169'),
(557, 167, '_wp_trash_meta_status', 'publish'),
(558, 167, '_wp_trash_meta_time', '1679494722'),
(559, 167, '_wp_desired_post_slug', '167'),
(560, 166, '_wp_trash_meta_status', 'publish'),
(561, 166, '_wp_trash_meta_time', '1679494722'),
(562, 166, '_wp_desired_post_slug', '166'),
(563, 170, 'cena', ''),
(564, 170, 'popisek', ''),
(565, 170, '_wp_trash_meta_status', 'publish'),
(566, 170, '_wp_trash_meta_time', '1679494779'),
(567, 170, '_wp_desired_post_slug', '170'),
(568, 171, 'cena', ''),
(569, 171, 'popisek', ''),
(570, 171, '_wp_trash_meta_status', 'publish'),
(571, 171, '_wp_trash_meta_time', '1679494791'),
(572, 171, '_wp_desired_post_slug', '171'),
(573, 172, 'cena', ''),
(574, 172, 'popisek', ''),
(575, 172, '_wp_trash_meta_status', 'publish'),
(576, 172, '_wp_trash_meta_time', '1679494833'),
(577, 172, '_wp_desired_post_slug', '172');

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-02-01 15:20:12', '2023-02-01 14:20:12', '<!-- wp:paragraph -->\n<p>Vítejte ve WordPressu. Toto je váš první příspěvek. Můžete ho upravit, nebo smazat a postupně pak začít s tvorbou vlastního webu.</p>\n<!-- /wp:paragraph -->', 'Ahoj všichni!', '', 'publish', 'open', 'open', '', 'ahoj-vsichni', '', '', '2023-02-01 15:20:12', '2023-02-01 14:20:12', '', 0, 'http://localhost/Bazar-1/?p=1', 0, 'post', '', 1),
(5, 1, '2023-02-01 15:21:24', '2023-02-01 14:21:24', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentythree', '', '', '2023-02-01 15:21:24', '2023-02-01 14:21:24', '', 0, 'http://localhost/Bazar-1/2023/02/01/wp-global-styles-twentytwentythree/', 0, 'wp_global_styles', '', 0),
(9, 1, '2023-02-01 15:40:13', '2023-02-01 14:40:13', '', 'Hlavní stránka', '', 'publish', 'closed', 'closed', '', 'hlavni-stranka', '', '', '2023-02-01 15:50:53', '2023-02-01 14:50:53', '', 0, 'http://localhost/Bazar-1/?page_id=9', 0, 'page', '', 0),
(10, 1, '2023-02-01 15:40:13', '2023-02-01 14:40:13', '', 'Hlavní stránka', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2023-02-01 15:40:13', '2023-02-01 14:40:13', '', 9, 'http://localhost/Bazar-1/?p=10', 0, 'revision', '', 0),
(11, 1, '2023-02-01 19:33:27', '2023-02-01 18:33:27', '', 'Registrace', '', 'publish', 'closed', 'closed', '', 'registrace', '', '', '2023-02-01 19:41:43', '2023-02-01 18:41:43', '', 0, 'http://localhost/Bazar-1/?page_id=11', 0, 'page', '', 0),
(12, 1, '2023-02-01 19:33:27', '2023-02-01 18:33:27', '', 'Registrace', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-02-01 19:33:27', '2023-02-01 18:33:27', '', 11, 'http://localhost/Bazar-1/?p=12', 0, 'revision', '', 0),
(13, 1, '2023-02-01 19:33:48', '2023-02-01 18:33:48', '', 'Login', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2023-02-01 19:41:48', '2023-02-01 18:41:48', '', 0, 'http://localhost/Bazar-1/?page_id=13', 0, 'page', '', 0),
(14, 1, '2023-02-01 19:33:48', '2023-02-01 18:33:48', '', 'Login', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-02-01 19:33:48', '2023-02-01 18:33:48', '', 13, 'http://localhost/Bazar-1/?p=14', 0, 'revision', '', 0),
(16, 1, '2023-02-19 11:46:39', '2023-02-19 10:46:39', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:23:\"acf-options-konfigurace\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Konfigurace', 'konfigurace', 'publish', 'closed', 'closed', '', 'group_63f1fd9a8f122', '', '', '2023-02-21 21:29:52', '2023-02-21 20:29:52', '', 0, 'http://localhost/Bazar-1/?post_type=acf-field-group&#038;p=16', 0, 'acf-field-group', '', 0),
(17, 1, '2023-02-19 11:46:39', '2023-02-19 10:46:39', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Hlavička', 'hlavicka', 'publish', 'closed', 'closed', '', 'field_63f1fde55cf72', '', '', '2023-02-19 11:46:39', '2023-02-19 10:46:39', '', 16, 'http://localhost/Bazar-1/?post_type=acf-field&p=17', 0, 'acf-field', '', 0),
(18, 1, '2023-02-19 11:46:39', '2023-02-19 10:46:39', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Patička', 'paticka', 'publish', 'closed', 'closed', '', 'field_63f1fdf65cf73', '', '', '2023-02-21 21:29:52', '2023-02-21 20:29:52', '', 16, 'http://localhost/Bazar-1/?post_type=acf-field&#038;p=18', 3, 'acf-field', '', 0),
(19, 1, '2023-02-19 11:57:27', '2023-02-19 10:57:27', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"kniha\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Kniha', 'kniha', 'publish', 'closed', 'closed', '', 'group_63f200910f06b', '', '', '2023-02-21 23:14:42', '2023-02-21 22:14:42', '', 0, 'http://localhost/Bazar-1/?post_type=acf-field-group&#038;p=19', 0, 'acf-field-group', '', 0),
(20, 1, '2023-02-19 11:58:18', '2023-02-19 10:58:18', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Popisek', 'popisek', 'publish', 'closed', 'closed', '', 'field_63f20098117a8', '', '', '2023-02-19 11:58:18', '2023-02-19 10:58:18', '', 19, 'http://localhost/Bazar-1/?post_type=acf-field&p=20', 0, 'acf-field', '', 0),
(21, 1, '2023-02-19 11:58:18', '2023-02-19 10:58:18', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Cena', 'cena', 'publish', 'closed', 'closed', '', 'field_63f200bb117aa', '', '', '2023-02-21 23:14:42', '2023-02-21 22:14:42', '', 19, 'http://localhost/Bazar-1/?post_type=acf-field&#038;p=21', 1, 'acf-field', '', 0),
(22, 1, '2023-02-19 11:58:18', '2023-02-19 10:58:18', 'a:18:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Galerie', 'galerie', 'publish', 'closed', 'closed', '', 'field_63f200a7117a9', '', '', '2023-02-19 11:58:18', '2023-02-19 10:58:18', '', 19, 'http://localhost/Bazar-1/?post_type=acf-field&p=22', 2, 'acf-field', '', 0),
(24, 1, '2023-02-19 12:01:20', '2023-02-19 11:01:20', '', 'cz-jazyk', '', 'inherit', 'open', 'closed', '', 'cz-jazyk', '', '', '2023-02-19 12:01:20', '2023-02-19 11:01:20', '', 0, 'http://localhost/Bazar-1/wp-content/uploads/2023/02/cz-jazyk.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2023-02-19 12:01:21', '2023-02-19 11:01:21', '', 'cz-jazyk-2', '', 'inherit', 'open', 'closed', '', 'cz-jazyk-2', '', '', '2023-02-19 12:01:21', '2023-02-19 11:01:21', '', 0, 'http://localhost/Bazar-1/wp-content/uploads/2023/02/cz-jazyk-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2023-02-19 14:11:59', '0000-00-00 00:00:00', '', 'Michal Brožovič je kokot', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-02-19 14:11:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/Bazar-1/?p=26', 0, 'publish', '', 0),
(30, 1, '2023-02-19 14:42:10', '2023-02-19 13:42:10', '', '1676814130_', '', 'inherit', 'open', 'closed', '', '1676814130_', '', '', '2023-02-19 14:42:10', '2023-02-19 13:42:10', '', 0, 'http://localhost/Bazar-1/1676814130_/', 0, 'attachment', '', 0),
(32, 1, '2023-02-19 14:42:22', '2023-02-19 13:42:22', '', '1676814142_', '', 'inherit', 'open', 'closed', '', '1676814142_', '', '', '2023-02-19 14:42:22', '2023-02-19 13:42:22', '', 0, 'http://localhost/Bazar-1/1676814142_/', 0, 'attachment', '', 0),
(34, 1, '2023-02-19 14:42:45', '2023-02-19 13:42:45', '', '1676814165_cz-jazyk-3.jpg', '', 'inherit', 'open', 'closed', '', '1676814165_cz-jazyk-3-jpg', '', '', '2023-02-19 14:42:45', '2023-02-19 13:42:45', '', 0, 'http://localhost/Bazar-1/1676814165_cz-jazyk-3-jpg/', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2023-02-19 14:43:41', '2023-02-19 13:43:41', '', '1676814221_cz-jazyk-3.jpg', '', 'inherit', 'open', 'closed', '', '1676814221_cz-jazyk-3-jpg', '', '', '2023-02-19 14:43:41', '2023-02-19 13:43:41', '', 0, 'http://localhost/Bazar-1/1676814221_cz-jazyk-3-jpg/', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2023-02-19 14:43:41', '2023-02-19 13:43:41', '', '1676814221_frontio-wp.png', '', 'inherit', 'open', 'closed', '', '1676814221_frontio-wp-png', '', '', '2023-02-19 14:43:41', '2023-02-19 13:43:41', '', 0, 'http://localhost/Bazar-1/1676814221_frontio-wp-png/', 0, 'attachment', 'image/png', 0),
(39, 1, '2023-02-19 14:46:46', '2023-02-19 13:46:46', '', '1676814406_cz-jazyk-3.jpg', '', 'inherit', 'open', 'closed', '', '1676814406_cz-jazyk-3-jpg', '', '', '2023-02-19 14:46:46', '2023-02-19 13:46:46', '', 0, 'http://localhost/Bazar-1/1676814406_cz-jazyk-3-jpg/', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2023-02-19 14:46:46', '2023-02-19 13:46:46', '', '1676814406_frontio-wp.png', '', 'inherit', 'open', 'closed', '', '1676814406_frontio-wp-png', '', '', '2023-02-19 14:46:46', '2023-02-19 13:46:46', '', 0, 'http://localhost/Bazar-1/1676814406_frontio-wp-png/', 0, 'attachment', 'image/png', 0),
(42, 1, '2023-02-19 14:47:23', '2023-02-19 13:47:23', '', '1676814443_cz-jazyk-3.jpg', '', 'inherit', 'open', 'closed', '', '1676814443_cz-jazyk-3-jpg', '', '', '2023-02-19 14:47:23', '2023-02-19 13:47:23', '', 0, 'http://localhost/Bazar-1/1676814443_cz-jazyk-3-jpg/', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2023-02-19 14:47:23', '2023-02-19 13:47:23', '', '1676814443_frontio-wp.png', '', 'inherit', 'open', 'closed', '', '1676814443_frontio-wp-png', '', '', '2023-02-19 14:47:23', '2023-02-19 13:47:23', '', 0, 'http://localhost/Bazar-1/1676814443_frontio-wp-png/', 0, 'attachment', 'image/png', 0),
(45, 1, '2023-02-19 14:47:54', '2023-02-19 13:47:54', '', '1676814474_swiper-right-dis.svg', '', 'inherit', 'open', 'closed', '', '1676814474_swiper-right-dis-svg', '', '', '2023-02-19 14:47:54', '2023-02-19 13:47:54', '', 0, 'http://localhost/Bazar-1/1676814474_swiper-right-dis-svg/', 0, 'attachment', 'image/svg+xml', 0),
(46, 1, '2023-02-19 14:47:54', '2023-02-19 13:47:54', '', '1676814474_swiper-right-hov.svg', '', 'inherit', 'open', 'closed', '', '1676814474_swiper-right-hov-svg', '', '', '2023-02-19 14:47:54', '2023-02-19 13:47:54', '', 0, 'http://localhost/Bazar-1/1676814474_swiper-right-hov-svg/', 0, 'attachment', 'image/svg+xml', 0),
(48, 1, '2023-02-19 18:24:26', '2023-02-19 17:24:26', '', '1676827466_Rectangle94.png', '', 'inherit', 'open', 'closed', '', '1676827466_rectangle94-png', '', '', '2023-02-19 18:24:26', '2023-02-19 17:24:26', '', 0, 'http://localhost/Bazar-1/1676827466_rectangle94-png/', 0, 'attachment', 'image/png', 0),
(50, 1, '2023-02-19 18:24:32', '2023-02-19 17:24:32', '', '1676827472_Rectangle94.png', '', 'inherit', 'open', 'closed', '', '1676827472_rectangle94-png', '', '', '2023-02-19 18:24:32', '2023-02-19 17:24:32', '', 0, 'http://localhost/Bazar-1/1676827472_rectangle94-png/', 0, 'attachment', 'image/png', 0),
(52, 1, '2023-02-19 18:27:48', '2023-02-19 17:27:48', '', '1676827668_Rectangle94.png', '', 'inherit', 'open', 'closed', '', '1676827668_rectangle94-png', '', '', '2023-02-19 18:27:48', '2023-02-19 17:27:48', '', 0, 'http://localhost/Bazar-1/1676827668_rectangle94-png/', 0, 'attachment', 'image/png', 0),
(55, 1, '2023-02-20 11:08:47', '2023-02-20 10:08:47', '', '1676887727_Web1920–1.jpg', '', 'inherit', 'open', 'closed', '', '1676887727_web1920-1-jpg', '', '', '2023-02-20 11:08:47', '2023-02-20 10:08:47', '', 0, 'http://localhost/Bazar-1/1676887727_web1920-1-jpg/', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2023-02-20 11:08:50', '2023-02-20 10:08:50', '', '1676887730_Web1920–1.jpg', '', 'inherit', 'open', 'closed', '', '1676887730_web1920-1-jpg', '', '', '2023-02-20 11:08:50', '2023-02-20 10:08:50', '', 0, 'http://localhost/Bazar-1/1676887730_web1920-1-jpg/', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2023-02-20 11:32:21', '2023-02-20 10:32:21', '', '1676889141_Web1920–1.jpg', '', 'inherit', 'open', 'closed', '', '1676889141_web1920-1-jpg', '', '', '2023-02-20 11:32:21', '2023-02-20 10:32:21', '', 0, 'http://localhost/Bazar-1/1676889141_web1920-1-jpg/', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2023-02-20 21:01:26', '2023-02-20 20:01:26', '', '1676923286_993.jpg', '', 'inherit', 'open', 'closed', '', '1676923286_993-jpg', '', '', '2023-02-20 21:01:26', '2023-02-20 20:01:26', '', 0, 'http://localhost/Bazar-1/1676923286_993-jpg/', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2023-02-21 20:51:14', '2023-02-21 19:51:14', '', '1677009074_331414731_503931075153016_4342555546571786072_n.jpg', '', 'inherit', 'open', 'closed', '', '1677009074_331414731_503931075153016_4342555546571786072_n-jpg', '', '', '2023-02-21 20:51:14', '2023-02-21 19:51:14', '', 0, 'http://localhost/Bazar-1/1677009074_331414731_503931075153016_4342555546571786072_n-jpg/', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2023-02-21 20:51:14', '2023-02-21 19:51:14', '', '1677009074_331406908_1201704754070881_2498064083351419501_n.jpg', '', 'inherit', 'open', 'closed', '', '1677009074_331406908_1201704754070881_2498064083351419501_n-jpg', '', '', '2023-02-21 20:51:14', '2023-02-21 19:51:14', '', 0, 'http://localhost/Bazar-1/1677009074_331406908_1201704754070881_2498064083351419501_n-jpg/', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2023-02-21 20:51:16', '2023-02-21 19:51:16', '', '1677009076_331414731_503931075153016_4342555546571786072_n.jpg', '', 'inherit', 'open', 'closed', '', '1677009076_331414731_503931075153016_4342555546571786072_n-jpg', '', '', '2023-02-21 20:51:16', '2023-02-21 19:51:16', '', 0, 'http://localhost/Bazar-1/1677009076_331414731_503931075153016_4342555546571786072_n-jpg/', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2023-02-21 20:51:16', '2023-02-21 19:51:16', '', '1677009076_331406908_1201704754070881_2498064083351419501_n.jpg', '', 'inherit', 'open', 'closed', '', '1677009076_331406908_1201704754070881_2498064083351419501_n-jpg', '', '', '2023-02-21 20:51:16', '2023-02-21 19:51:16', '', 0, 'http://localhost/Bazar-1/1677009076_331406908_1201704754070881_2498064083351419501_n-jpg/', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2023-02-21 21:27:59', '2023-02-21 20:27:59', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_63f52943f5ea6', '', '', '2023-02-21 21:28:03', '2023-02-21 20:28:03', '', 16, 'http://localhost/Bazar-1/?post_type=acf-field&#038;p=68', 1, 'acf-field', '', 0),
(70, 1, '2023-02-21 21:29:03', '2023-02-21 20:29:03', '', 'logo-small-black', '', 'inherit', 'open', 'closed', '', 'logo-small-black', '', '', '2023-02-21 21:29:12', '2023-02-21 20:29:12', '', 0, 'http://localhost/Bazar-1/wp-content/uploads/2023/02/logo-small-black.svg', 0, 'attachment', 'image/svg+xml', 0),
(71, 1, '2023-02-21 21:29:52', '2023-02-21 20:29:52', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo celé', 'logo_cele', 'publish', 'closed', 'closed', '', 'field_63f529b28629b', '', '', '2023-02-21 21:29:52', '2023-02-21 20:29:52', '', 16, 'http://localhost/Bazar-1/?post_type=acf-field&p=71', 2, 'acf-field', '', 0),
(72, 1, '2023-02-21 21:30:03', '2023-02-21 20:30:03', '', 'logo-black', '', 'inherit', 'open', 'closed', '', 'logo-black', '', '', '2023-02-21 21:30:11', '2023-02-21 20:30:11', '', 0, 'http://localhost/Bazar-1/wp-content/uploads/2023/02/logo-black.svg', 0, 'attachment', 'image/svg+xml', 0),
(73, 1, '2023-02-21 21:35:44', '2023-02-21 20:35:44', '', 'NazdarBazar-small', '', 'inherit', 'open', 'closed', '', 'nazdarbazar-small', '', '', '2023-02-21 21:35:52', '2023-02-21 20:35:52', '', 0, 'http://localhost/Bazar-1/wp-content/uploads/2023/02/NazdarBazar-small.svg', 0, 'attachment', 'image/svg+xml', 0),
(74, 1, '2023-02-21 21:36:01', '2023-02-21 20:36:01', '', 'NazdarBazar', '', 'inherit', 'open', 'closed', '', 'nazdarbazar', '', '', '2023-02-21 21:36:10', '2023-02-21 20:36:10', '', 0, 'http://localhost/Bazar-1/wp-content/uploads/2023/02/NazdarBazar.svg', 0, 'attachment', 'image/svg+xml', 0),
(76, 1, '2023-02-22 00:26:04', '2023-02-21 23:26:04', '', '1677021964_frontio-wp.png', '', 'inherit', 'open', 'closed', '', '1677021964_frontio-wp-png', '', '', '2023-02-22 00:26:04', '2023-02-21 23:26:04', '', 0, 'http://localhost/Bazar-1/1677021964_frontio-wp-png/', 0, 'attachment', 'image/png', 0),
(77, 1, '2023-02-22 00:26:04', '2023-02-21 23:26:04', '', '1677021964_Group1302.png', '', 'inherit', 'open', 'closed', '', '1677021964_group1302-png', '', '', '2023-02-22 00:26:04', '2023-02-21 23:26:04', '', 0, 'http://localhost/Bazar-1/1677021964_group1302-png/', 0, 'attachment', 'image/png', 0),
(79, 1, '2023-02-22 00:27:10', '2023-02-21 23:27:10', '', '1677022030_swiper-arrow.svg', '', 'inherit', 'open', 'closed', '', '1677022030_swiper-arrow-svg', '', '', '2023-02-22 00:27:10', '2023-02-21 23:27:10', '', 0, 'http://localhost/Bazar-1/1677022030_swiper-arrow-svg/', 0, 'attachment', 'image/svg+xml', 0),
(80, 1, '2023-02-22 00:27:10', '2023-02-21 23:27:10', '', '1677022030_Component2–1.svg', '', 'inherit', 'open', 'closed', '', '1677022030_component2-1-svg', '', '', '2023-02-22 00:27:10', '2023-02-21 23:27:10', '', 0, 'http://localhost/Bazar-1/1677022030_component2-1-svg/', 0, 'attachment', 'image/svg+xml', 0),
(82, 5, '2023-02-22 01:23:20', '2023-02-22 00:23:20', '', '1677025400_widescreen-wallpaper-1920x1080_2635688.jpg', '', 'inherit', 'open', 'closed', '', '1677025400_widescreen-wallpaper-1920x1080_2635688-jpg', '', '', '2023-02-22 01:23:20', '2023-02-22 00:23:20', '', 0, 'http://localhost/Bazar-1/1677025400_widescreen-wallpaper-1920x1080_2635688-jpg/', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2023-02-22 16:55:54', '2023-02-22 15:55:54', '', 'logo-color', '', 'inherit', 'open', 'closed', '', 'logo-color', '', '', '2023-02-22 16:56:02', '2023-02-22 15:56:02', '', 0, 'http://localhost/Bazar-1/wp-content/uploads/2023/02/logo-color.svg', 0, 'attachment', 'image/svg+xml', 0),
(85, 1, '2023-02-22 17:16:07', '2023-02-22 16:16:07', '', 'Group 107', '', 'inherit', 'open', 'closed', '', 'group-107', '', '', '2023-02-22 17:16:12', '2023-02-22 16:16:12', '', 0, 'http://localhost/Bazar-1/wp-content/uploads/2023/02/Group-107.svg', 0, 'attachment', 'image/svg+xml', 0),
(87, 5, '2023-02-22 17:45:59', '2023-02-22 16:45:59', '', '1677084359_logo-color.svg', '', 'inherit', 'open', 'closed', '', '1677084359_logo-color-svg', '', '', '2023-02-22 17:45:59', '2023-02-22 16:45:59', '', 0, 'http://localhost/Bazar-1/1677084359_logo-color-svg/', 0, 'attachment', 'image/svg+xml', 0),
(89, 1, '2023-02-22 17:48:52', '2023-02-22 16:48:52', '', '1677084532_frontio-wp.png', '', 'inherit', 'open', 'closed', '', '1677084532_frontio-wp-png', '', '', '2023-02-22 17:48:52', '2023-02-22 16:48:52', '', 0, 'http://localhost/Bazar-1/1677084532_frontio-wp-png/', 0, 'attachment', 'image/png', 0),
(91, 1, '2023-02-22 17:49:12', '2023-02-22 16:49:12', '', '1677084552_Rectangle94.png', '', 'inherit', 'open', 'closed', '', '1677084552_rectangle94-png', '', '', '2023-02-22 17:49:12', '2023-02-22 16:49:12', '', 0, 'http://localhost/Bazar-1/1677084552_rectangle94-png/', 0, 'attachment', 'image/png', 0),
(93, 1, '2023-02-22 17:49:24', '2023-02-22 16:49:24', '', '1677084564_bullet.svg', '', 'inherit', 'open', 'closed', '', '1677084564_bullet-svg', '', '', '2023-02-22 17:49:24', '2023-02-22 16:49:24', '', 0, 'http://localhost/Bazar-1/1677084564_bullet-svg/', 0, 'attachment', 'image/svg+xml', 0),
(95, 5, '2023-02-22 17:49:50', '2023-02-22 16:49:50', '', '1677084590_swiper-arrow.svg', '', 'inherit', 'open', 'closed', '', '1677084590_swiper-arrow-svg', '', '', '2023-02-22 17:49:50', '2023-02-22 16:49:50', '', 0, 'http://localhost/Bazar-1/1677084590_swiper-arrow-svg/', 0, 'attachment', 'image/svg+xml', 0),
(97, 5, '2023-02-22 17:50:02', '2023-02-22 16:50:02', '', '1677084602_settings.svg', '', 'inherit', 'open', 'closed', '', '1677084602_settings-svg', '', '', '2023-02-22 17:50:02', '2023-02-22 16:50:02', '', 0, 'http://localhost/Bazar-1/1677084602_settings-svg/', 0, 'attachment', 'image/svg+xml', 0),
(101, 5, '2023-02-22 18:15:11', '2023-02-22 17:15:11', '', '1677086111_Group1302.png', '', 'inherit', 'open', 'closed', '', '1677086111_group1302-png', '', '', '2023-02-22 18:15:11', '2023-02-22 17:15:11', '', 0, 'http://localhost/Bazar-1/1677086111_group1302-png/', 0, 'attachment', 'image/png', 0),
(103, 1, '2023-02-22 18:43:19', '2023-02-22 17:43:19', '', '1677087799_frontio-wp.png', '', 'inherit', 'open', 'closed', '', '1677087799_frontio-wp-png', '', '', '2023-02-22 18:43:19', '2023-02-22 17:43:19', '', 0, 'http://localhost/Bazar-1/1677087799_frontio-wp-png/', 0, 'attachment', 'image/png', 0),
(105, 1, '2023-02-22 18:45:24', '2023-02-22 17:45:24', '', '1677087924_slider-dot.svg', '', 'inherit', 'open', 'closed', '', '1677087924_slider-dot-svg', '', '', '2023-02-22 18:45:24', '2023-02-22 17:45:24', '', 0, 'http://localhost/Bazar-1/1677087924_slider-dot-svg/', 0, 'attachment', 'image/svg+xml', 0),
(107, 1, '2023-02-22 18:47:12', '2023-02-22 17:47:12', '', '1677088032_search.svg', '', 'inherit', 'open', 'closed', '', '1677088032_search-svg', '', '', '2023-02-22 18:47:12', '2023-02-22 17:47:12', '', 0, 'http://localhost/Bazar-1/1677088032_search-svg/', 0, 'attachment', 'image/svg+xml', 0),
(109, 1, '2023-02-22 19:57:33', '2023-02-22 18:57:33', '', '1677092253_Rectangle94.png', '', 'inherit', 'open', 'closed', '', '1677092253_rectangle94-png', '', '', '2023-02-22 19:57:33', '2023-02-22 18:57:33', '', 0, 'http://localhost/Bazar-1/1677092253_rectangle94-png/', 0, 'attachment', 'image/png', 0),
(111, 1, '2023-02-22 20:00:26', '2023-02-22 19:00:26', '', '1677092426_Group1302.png', '', 'inherit', 'open', 'closed', '', '1677092426_group1302-png', '', '', '2023-02-22 20:00:26', '2023-02-22 19:00:26', '', 0, 'http://localhost/Bazar-1/1677092426_group1302-png/', 0, 'attachment', 'image/png', 0),
(113, 5, '2023-02-22 23:34:25', '2023-02-22 22:34:25', '', '1677105265_frontio-wp.png', '', 'inherit', 'open', 'closed', '', '1677105265_frontio-wp-png', '', '', '2023-02-22 23:34:25', '2023-02-22 22:34:25', '', 0, 'http://localhost/Bazar-1/1677105265_frontio-wp-png/', 0, 'attachment', 'image/png', 0),
(115, 1, '2023-02-23 00:21:48', '2023-02-22 23:21:48', '', '1677108108_search.svg', '', 'inherit', 'open', 'closed', '', '1677108108_search-svg', '', '', '2023-02-23 00:21:48', '2023-02-22 23:21:48', '', 0, 'http://localhost/Bazar-1/1677108108_search-svg/', 0, 'attachment', 'image/svg+xml', 0),
(118, 1, '2023-02-28 23:01:52', '2023-02-28 22:01:52', '', '1677621712_P_20230228_225316.jpg', '', 'inherit', 'open', 'closed', '', '1677621712_p_20230228_225316-jpg', '', '', '2023-02-28 23:01:52', '2023-02-28 22:01:52', '', 0, 'http://localhost/Bazar-1/1677621712_p_20230228_225316-jpg/', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2023-02-28 23:01:53', '2023-02-28 22:01:53', '', '1677621713_P_20230228_225308.jpg', '', 'inherit', 'open', 'closed', '', '1677621713_p_20230228_225308-jpg', '', '', '2023-02-28 23:01:53', '2023-02-28 22:01:53', '', 0, 'http://localhost/Bazar-1/1677621713_p_20230228_225308-jpg/', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2023-02-28 23:25:31', '2023-02-28 22:25:31', '', '1677623131_P_20230228_225252.jpg', '', 'inherit', 'open', 'closed', '', '1677623131_p_20230228_225252-jpg', '', '', '2023-02-28 23:25:31', '2023-02-28 22:25:31', '', 0, 'http://localhost/Bazar-1/1677623131_p_20230228_225252-jpg/', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2023-02-28 23:25:31', '2023-02-28 22:25:31', '', '1677623131_P_20230228_225245.jpg', '', 'inherit', 'open', 'closed', '', '1677623131_p_20230228_225245-jpg', '', '', '2023-02-28 23:25:31', '2023-02-28 22:25:31', '', 0, 'http://localhost/Bazar-1/1677623131_p_20230228_225245-jpg/', 0, 'attachment', 'image/jpeg', 0),
(125, 5, '2023-02-28 23:50:36', '2023-02-28 22:50:36', '', '1677624636_P_20230228_225316.jpg', '', 'inherit', 'open', 'closed', '', '1677624636_p_20230228_225316-jpg', '', '', '2023-02-28 23:50:36', '2023-02-28 22:50:36', '', 0, 'http://localhost/Bazar-1/1677624636_p_20230228_225316-jpg/', 0, 'attachment', 'image/jpeg', 0),
(127, 1, '2023-03-01 07:27:25', '2023-03-01 06:27:25', '', '1677652045_P_20230228_225316.jpg', '', 'inherit', 'open', 'closed', '', '1677652045_p_20230228_225316-jpg', '', '', '2023-03-01 07:27:25', '2023-03-01 06:27:25', '', 0, 'http://localhost/Bazar-1/1677652045_p_20230228_225316-jpg/', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2023-03-01 07:27:25', '2023-03-01 06:27:25', '', '1677652045_P_20230228_225308.jpg', '', 'inherit', 'open', 'closed', '', '1677652045_p_20230228_225308-jpg', '', '', '2023-03-01 07:27:25', '2023-03-01 06:27:25', '', 0, 'http://localhost/Bazar-1/1677652045_p_20230228_225308-jpg/', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2023-03-01 07:28:19', '2023-03-01 06:28:19', '', '1677652099_P_20230228_225252.jpg', '', 'inherit', 'open', 'closed', '', '1677652099_p_20230228_225252-jpg', '', '', '2023-03-01 07:28:19', '2023-03-01 06:28:19', '', 0, 'http://localhost/Bazar-1/1677652099_p_20230228_225252-jpg/', 0, 'attachment', 'image/jpeg', 0),
(131, 1, '2023-03-01 07:28:19', '2023-03-01 06:28:19', '', '1677652099_P_20230228_225245.jpg', '', 'inherit', 'open', 'closed', '', '1677652099_p_20230228_225245-jpg', '', '', '2023-03-01 07:28:19', '2023-03-01 06:28:19', '', 0, 'http://localhost/Bazar-1/1677652099_p_20230228_225245-jpg/', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2023-03-01 07:29:05', '2023-03-01 06:29:05', '', '1677652145_P_20230228_225316.jpg', '', 'inherit', 'open', 'closed', '', '1677652145_p_20230228_225316-jpg', '', '', '2023-03-01 07:29:05', '2023-03-01 06:29:05', '', 0, 'http://localhost/Bazar-1/1677652145_p_20230228_225316-jpg/', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2023-03-01 07:30:44', '2023-03-01 06:30:44', '', '1677652244_P_20230228_225252.jpg', '', 'inherit', 'open', 'closed', '', '1677652244_p_20230228_225252-jpg', '', '', '2023-03-01 07:30:44', '2023-03-01 06:30:44', '', 0, 'http://localhost/Bazar-1/1677652244_p_20230228_225252-jpg/', 0, 'attachment', 'image/jpeg', 0),
(138, 1, '2023-03-01 07:30:44', '2023-03-01 06:30:44', '', '1677652244_P_20230228_225245.jpg', '', 'inherit', 'open', 'closed', '', '1677652244_p_20230228_225245-jpg', '', '', '2023-03-01 07:30:44', '2023-03-01 06:30:44', '', 0, 'http://localhost/Bazar-1/1677652244_p_20230228_225245-jpg/', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2023-03-02 23:40:31', '2023-03-02 22:40:31', '', 'Český jazyk', '', 'publish', 'closed', 'closed', '', 'cesky-jazyk', '', '', '2023-03-02 23:40:31', '2023-03-02 22:40:31', '', 0, 'http://localhost/Bazar-1/kniha/cesky-jazyk/', 0, 'kniha', '', 0),
(140, 1, '2023-03-02 23:40:31', '2023-03-02 22:40:31', '', '1677796831_P_20230228_225316.jpg', '', 'inherit', 'open', 'closed', '', '1677796831_p_20230228_225316-jpg', '', '', '2023-03-02 23:40:31', '2023-03-02 22:40:31', '', 0, 'http://localhost/Bazar-1/1677796831_p_20230228_225316-jpg/', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2023-03-02 23:40:31', '2023-03-02 22:40:31', '', '1677796831_P_20230228_225308.jpg', '', 'inherit', 'open', 'closed', '', '1677796831_p_20230228_225308-jpg', '', '', '2023-03-02 23:40:31', '2023-03-02 22:40:31', '', 0, 'http://localhost/Bazar-1/1677796831_p_20230228_225308-jpg/', 0, 'attachment', 'image/jpeg', 0),
(142, 1, '2023-03-02 23:41:26', '2023-03-02 22:41:26', '', 'Český jazyk', '', 'publish', 'closed', 'closed', '', 'cesky-jazyk-2', '', '', '2023-03-02 23:41:26', '2023-03-02 22:41:26', '', 0, 'http://localhost/Bazar-1/kniha/cesky-jazyk-2/', 0, 'kniha', '', 0),
(143, 1, '2023-03-02 23:41:26', '2023-03-02 22:41:26', '', '1677796886_P_20230228_225316.jpg', '', 'inherit', 'open', 'closed', '', '1677796886_p_20230228_225316-jpg', '', '', '2023-03-02 23:41:26', '2023-03-02 22:41:26', '', 0, 'http://localhost/Bazar-1/1677796886_p_20230228_225316-jpg/', 0, 'attachment', 'image/jpeg', 0),
(145, 1, '2023-03-02 23:41:48', '2023-03-02 22:41:48', '', '1677796908_P_20230228_225308.jpg', '', 'inherit', 'open', 'closed', '', '1677796908_p_20230228_225308-jpg', '', '', '2023-03-02 23:41:48', '2023-03-02 22:41:48', '', 0, 'http://localhost/Bazar-1/1677796908_p_20230228_225308-jpg/', 0, 'attachment', 'image/jpeg', 0),
(146, 1, '2023-03-02 23:42:27', '2023-03-02 22:42:27', '', 'Čítanka 1.', '', 'publish', 'closed', 'closed', '', 'citanka-1', '', '', '2023-03-02 23:42:27', '2023-03-02 22:42:27', '', 0, 'http://localhost/Bazar-1/kniha/citanka-1/', 0, 'kniha', '', 0),
(147, 1, '2023-03-02 23:42:28', '2023-03-02 22:42:28', '', '1677796948_P_20230228_225245.jpg', '', 'inherit', 'open', 'closed', '', '1677796948_p_20230228_225245-jpg', '', '', '2023-03-02 23:42:28', '2023-03-02 22:42:28', '', 0, 'http://localhost/Bazar-1/1677796948_p_20230228_225245-jpg/', 0, 'attachment', 'image/jpeg', 0),
(148, 1, '2023-03-02 23:49:09', '2023-03-02 22:49:09', '<label> Your name\n    [text* your-name autocomplete:name] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <brozovic_michal@OAUH.cz>\nFrom: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <brozovic_michal@OAUH.cz>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2023-03-02 23:49:09', '2023-03-02 22:49:09', '', 0, 'http://localhost/Bazar-1/?post_type=wpcf7_contact_form&p=148', 0, 'wpcf7_contact_form', '', 0),
(149, 1, '2023-03-03 00:26:19', '2023-03-02 23:26:19', '<div class=\"form-holder\">\r\n[email* email]\r\n<label for=\"email\">Váš email</label>\r\n</div>\r\n<div class=\"form-holder\">\r\n[textarea* text]\r\n<label for=\"text\">Zpráva</label>\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <brozovic_michal@OAUH.cz>\n[post_author]\nFrom: [your-name] [your-email]\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <brozovic_michal@OAUH.cz>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Untitled', '', 'publish', 'closed', 'closed', '', 'untitled', '', '', '2023-03-03 00:44:31', '2023-03-02 23:44:31', '', 0, 'http://localhost/Bazar-1/?post_type=wpcf7_contact_form&#038;p=149', 0, 'wpcf7_contact_form', '', 0),
(151, 1, '2023-03-10 12:38:16', '2023-03-10 11:38:16', '', 'ADWdawd', '', 'publish', 'closed', 'closed', '', 'adwdawd', '', '', '2023-03-10 12:38:16', '2023-03-10 11:38:16', '', 0, 'http://localhost/Bazar-1/kniha/adwdawd/', 0, 'kniha', '', 0),
(152, 1, '2023-03-10 12:38:16', '2023-03-10 11:38:16', '', '1678448296_993.jpg', '', 'inherit', 'open', 'closed', '', '1678448296_993-jpg', '', '', '2023-03-10 12:38:16', '2023-03-10 11:38:16', '', 0, 'http://localhost/Bazar-1/1678448296_993-jpg/', 0, 'attachment', 'image/jpeg', 0),
(153, 1, '2023-03-10 13:02:13', '2023-03-10 12:02:13', '', 'dawda', '', 'publish', 'closed', 'closed', '', 'dawda', '', '', '2023-03-10 13:02:13', '2023-03-10 12:02:13', '', 0, 'http://localhost/Bazar-1/kniha/dawda/', 0, 'kniha', '', 0),
(154, 1, '2023-03-10 13:02:13', '2023-03-10 12:02:13', '', '1678449733_4647877.jpg', '', 'inherit', 'open', 'closed', '', '1678449733_4647877-jpg', '', '', '2023-03-10 13:02:13', '2023-03-10 12:02:13', '', 0, 'http://localhost/Bazar-1/1678449733_4647877-jpg/', 0, 'attachment', 'image/jpeg', 0),
(156, 1, '2023-03-12 20:57:44', '2023-03-12 19:57:44', '', '1678651064_P_20230228_225245.jpg', '', 'inherit', 'open', 'closed', '', '1678651064_p_20230228_225245-jpg', '', '', '2023-03-12 20:57:44', '2023-03-12 19:57:44', '', 0, 'http://localhost/Bazar-1/1678651064_p_20230228_225245-jpg/', 0, 'attachment', 'image/jpeg', 0),
(158, 1, '2023-03-12 20:58:03', '2023-03-12 19:58:03', '', '1678651083_P_20230228_225308.jpg', '', 'inherit', 'open', 'closed', '', '1678651083_p_20230228_225308-jpg', '', '', '2023-03-12 20:58:03', '2023-03-12 19:58:03', '', 0, 'http://localhost/Bazar-1/1678651083_p_20230228_225308-jpg/', 0, 'attachment', 'image/jpeg', 0),
(160, 1, '2023-03-12 20:58:15', '2023-03-12 19:58:15', '', '1678651095_333356996_608150930643884_7668499718907125002_n.jpg', '', 'inherit', 'open', 'closed', '', '1678651095_333356996_608150930643884_7668499718907125002_n-jpg', '', '', '2023-03-12 20:58:15', '2023-03-12 19:58:15', '', 0, 'http://localhost/Bazar-1/1678651095_333356996_608150930643884_7668499718907125002_n-jpg/', 0, 'attachment', 'image/jpeg', 0),
(161, 1, '2023-03-22 15:09:20', '0000-00-00 00:00:00', '', 'Automaticky vytvořený koncept', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-03-22 15:09:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/Bazar-1/?p=161', 0, 'post', '', 0),
(163, 1, '2023-03-22 15:12:20', '2023-03-22 14:12:20', '', '', '', 'trash', 'closed', 'closed', '', '163__trashed', '', '', '2023-03-22 15:12:55', '2023-03-22 14:12:55', '', 0, 'http://localhost/Bazar-1/kniha/163/', 0, 'kniha', '', 0),
(164, 1, '2023-03-22 15:12:24', '2023-03-22 14:12:24', '', '', '', 'trash', 'closed', 'closed', '', '164__trashed', '', '', '2023-03-22 15:12:55', '2023-03-22 14:12:55', '', 0, 'http://localhost/Bazar-1/kniha/164/', 0, 'kniha', '', 0),
(165, 1, '2023-03-22 15:12:28', '2023-03-22 14:12:28', '', '', '', 'trash', 'closed', 'closed', '', '165__trashed', '', '', '2023-03-22 15:12:49', '2023-03-22 14:12:49', '', 0, 'http://localhost/Bazar-1/kniha/165/', 0, 'kniha', '', 0),
(166, 1, '2023-03-22 15:17:42', '2023-03-22 14:17:42', '', '', '', 'trash', 'closed', 'closed', '', '166__trashed', '', '', '2023-03-22 15:18:42', '2023-03-22 14:18:42', '', 0, 'http://localhost/Bazar-1/kniha/166/', 0, 'kniha', '', 0),
(167, 1, '2023-03-22 15:17:56', '2023-03-22 14:17:56', '', '', '', 'trash', 'closed', 'closed', '', '167__trashed', '', '', '2023-03-22 15:18:42', '2023-03-22 14:18:42', '', 0, 'http://localhost/Bazar-1/kniha/167/', 0, 'kniha', '', 0),
(168, 1, '2023-03-22 15:18:02', '2023-03-22 14:18:02', '', '', '', 'trash', 'closed', 'closed', '', '168__trashed', '', '', '2023-03-22 15:18:42', '2023-03-22 14:18:42', '', 0, 'http://localhost/Bazar-1/kniha/168/', 0, 'kniha', '', 0),
(169, 1, '2023-03-22 15:18:02', '2023-03-22 14:18:02', '', '', '', 'trash', 'closed', 'closed', '', '169__trashed', '', '', '2023-03-22 15:18:42', '2023-03-22 14:18:42', '', 0, 'http://localhost/Bazar-1/kniha/169/', 0, 'kniha', '', 0),
(170, 1, '2023-03-22 15:18:54', '2023-03-22 14:18:54', '', '', '', 'trash', 'closed', 'closed', '', '170__trashed', '', '', '2023-03-22 15:19:39', '2023-03-22 14:19:39', '', 0, 'http://localhost/Bazar-1/kniha/170/', 0, 'kniha', '', 0),
(171, 1, '2023-03-22 15:19:42', '2023-03-22 14:19:42', '', '', '', 'trash', 'closed', 'closed', '', '171__trashed', '', '', '2023-03-22 15:19:51', '2023-03-22 14:19:51', '', 0, 'http://localhost/Bazar-1/kniha/171/', 0, 'kniha', '', 0),
(172, 1, '2023-03-22 15:19:59', '2023-03-22 14:19:59', '', '', '', 'trash', 'closed', 'closed', '', '172__trashed', '', '', '2023-03-22 15:20:33', '2023-03-22 14:20:33', '', 0, 'http://localhost/Bazar-1/kniha/172/', 0, 'kniha', '', 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Nezařazené', 'nezarazene', 0),
(2, 'twentytwentythree', 'twentytwentythree', 0),
(5, '1. Ročník', '1-rocnik', 0),
(6, '2. Ročník', '2-rocnik', 0),
(7, '3. Ročník', '3-rocnik', 0),
(8, '4. Ročník', '4-rocnik', 0),
(9, 'Český jazyk', 'cesky-jazyk', 0),
(10, 'Matematika', 'matematika', 0),
(11, 'Zeměpis', 'zemepis', 0),
(12, 'OPS', 'ops', 0),
(13, 'Technická angličtina', 'technicka-anglictina', 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(26, 11, 0),
(139, 8, 0),
(139, 9, 0),
(142, 8, 0),
(142, 9, 0),
(146, 8, 0),
(146, 9, 0),
(151, 5, 0),
(151, 11, 0),
(153, 8, 0),
(153, 10, 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1),
(5, 5, 'product_category', '', 0, 1),
(6, 6, 'product_category', '', 0, 0),
(7, 7, 'product_category', '', 0, 0),
(8, 8, 'product_category', '', 0, 4),
(9, 9, 'product_category', '', 8, 3),
(10, 10, 'product_category', '', 8, 1),
(11, 11, 'product_category', '', 5, 1),
(12, 12, 'product_category', '', 7, 0),
(13, 13, 'product_category', '', 6, 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin_bazar'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '161'),
(18, 1, 'wp_persisted_preferences', 'a:3:{s:14:\"core/edit-site\";a:2:{s:12:\"welcomeGuide\";b:0;s:10:\"editorMode\";s:6:\"visual\";}s:9:\"_modified\";s:24:\"2023-02-01T14:31:03.701Z\";s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:1:{i:0;s:11:\"post-status\";}}}'),
(20, 2, 'nickname', 'michalbrozovic'),
(21, 2, 'first_name', 'Michal'),
(22, 2, 'last_name', 'Brožovič'),
(23, 2, 'description', ''),
(24, 2, 'rich_editing', 'true'),
(25, 2, 'syntax_highlighting', 'true'),
(26, 2, 'comment_shortcuts', 'false'),
(27, 2, 'admin_color', 'fresh'),
(28, 2, 'use_ssl', '0'),
(29, 2, 'show_admin_bar_front', 'true'),
(30, 2, 'locale', ''),
(31, 2, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(32, 2, 'wp_user_level', '0'),
(33, 2, 'session_tokens', 'a:1:{s:64:\"69872e0d6a4590c35dc5243e82f4b3289de9bd9caa3ba2ceac53311552d60aa4\";a:4:{s:10:\"expiration\";i:1676488504;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\";s:5:\"login\";i:1675278904;}}'),
(34, 3, 'nickname', 'kareljan'),
(35, 3, 'first_name', 'Karel'),
(36, 3, 'last_name', 'Jan'),
(37, 3, 'description', ''),
(38, 3, 'rich_editing', 'true'),
(39, 3, 'syntax_highlighting', 'true'),
(40, 3, 'comment_shortcuts', 'false'),
(41, 3, 'admin_color', 'fresh'),
(42, 3, 'use_ssl', '0'),
(43, 3, 'show_admin_bar_front', 'true'),
(44, 3, 'locale', ''),
(45, 3, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(46, 3, 'wp_user_level', '0'),
(48, 4, 'nickname', 'kokotpetr'),
(49, 4, 'first_name', 'Kokot'),
(50, 4, 'last_name', 'Petr'),
(51, 4, 'description', ''),
(52, 4, 'rich_editing', 'true'),
(53, 4, 'syntax_highlighting', 'true'),
(54, 4, 'comment_shortcuts', 'false'),
(55, 4, 'admin_color', 'fresh'),
(56, 4, 'use_ssl', '0'),
(57, 4, 'show_admin_bar_front', 'true'),
(58, 4, 'locale', ''),
(59, 4, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(60, 4, 'wp_user_level', '0'),
(61, 4, 'session_tokens', 'a:1:{s:64:\"7412e375a107eb546e81b204b74455031dbdc1cca4a544a26bf74e8a63df2b45\";a:4:{s:10:\"expiration\";i:1676490899;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\";s:5:\"login\";i:1675281299;}}'),
(64, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(65, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(66, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(67, 1, 'wp_user-settings-time', '1676888712'),
(69, 5, 'nickname', 'karelnovak'),
(70, 5, 'first_name', 'Karel'),
(71, 5, 'last_name', 'Novák'),
(72, 5, 'description', ''),
(73, 5, 'rich_editing', 'true'),
(74, 5, 'syntax_highlighting', 'true'),
(75, 5, 'comment_shortcuts', 'false'),
(76, 5, 'admin_color', 'fresh'),
(77, 5, 'use_ssl', '0'),
(78, 5, 'show_admin_bar_front', 'true'),
(79, 5, 'locale', ''),
(80, 5, 'wp_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(81, 5, 'wp_user_level', '0'),
(82, 5, 'session_tokens', 'a:6:{s:64:\"1371353e24c5da02b72e2440cc6e6f545e42c4fde8c3fbb681e64d505f394841\";a:4:{s:10:\"expiration\";i:1678234920;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36\";s:5:\"login\";i:1677025320;}s:64:\"15be5fdfd49ab8d9fe5f1b113f52aa06d7f32b7fc1155c2aa391f1bbccc75380\";a:4:{s:10:\"expiration\";i:1678294304;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36\";s:5:\"login\";i:1677084704;}s:64:\"3a71c0829221eae67a82b5447b96a63fc622307ce94a9673e0af429c78b59450\";a:4:{s:10:\"expiration\";i:1678295280;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36\";s:5:\"login\";i:1677085680;}s:64:\"85d75fa35d843bf4696669695d2d207f4f5af95b44a443a07a272b9f13fb8109\";a:4:{s:10:\"expiration\";i:1678295401;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36\";s:5:\"login\";i:1677085801;}s:64:\"6a72aa45c179b66a33f2fbf5b35018bd09790a110fee9740c676f3b6b6d095b6\";a:4:{s:10:\"expiration\";i:1678296929;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36\";s:5:\"login\";i:1677087329;}s:64:\"799c3a13b33cb63639f9c90bc178990b5ded48253ffa5843a2ff54c239e97b5c\";a:4:{s:10:\"expiration\";i:1678833847;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36\";s:5:\"login\";i:1677624247;}}'),
(83, 5, 'wp_dashboard_quick_press_last_post_id', '98'),
(84, 5, 'wp_user-settings', 'mfold=o'),
(85, 5, 'wp_user-settings-time', '1677104835'),
(86, 6, 'nickname', 'petrjiri'),
(87, 6, 'first_name', 'Petr'),
(88, 6, 'last_name', 'Jiří'),
(89, 6, 'description', ''),
(90, 6, 'rich_editing', 'true'),
(91, 6, 'syntax_highlighting', 'true'),
(92, 6, 'comment_shortcuts', 'false'),
(93, 6, 'admin_color', 'fresh'),
(94, 6, 'use_ssl', '0'),
(95, 6, 'show_admin_bar_front', 'true'),
(96, 6, 'locale', ''),
(97, 6, 'wp_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(98, 6, 'wp_user_level', '0'),
(99, 6, 'session_tokens', 'a:1:{s:64:\"8a59709fec604d2ab5b88e78620f2d371afdc66f124cc5bd1873e4910a659a9d\";a:4:{s:10:\"expiration\";i:1678314919;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36\";s:5:\"login\";i:1677105319;}}');

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_users`
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
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin_bazar', '$P$BfFa/Txn1ovmksmAkRq0x0CjrQNOws/', 'admin_bazar', 'brozovic_michal@OAUH.cz', 'http://localhost/Bazar-1', '2023-02-01 14:20:12', '', 0, 'admin_bazar'),
(5, 'karelnovak', '$P$BjV7Ioxi.QxfsZKWZM7w/30Pd1zktP.', 'karelnovak', 'michalhasic03@seznam.cz', '', '2023-02-22 00:22:00', '', 0, 'Karel Novák'),
(6, 'petrjiri', '$P$B30lAr0S5Z9r2V7bznOc7vq01tDbxx/', 'petrjiri', 'michalhasic033@seznam.cz', '', '2023-02-22 22:35:19', '', 0, 'Petr Jiří');

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Klíče pro tabulku `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Klíče pro tabulku `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Klíče pro tabulku `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Klíče pro tabulku `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Klíče pro tabulku `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Klíče pro tabulku `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Klíče pro tabulku `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Klíče pro tabulku `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Klíče pro tabulku `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Klíče pro tabulku `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Klíče pro tabulku `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pro tabulku `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1523;

--
-- AUTO_INCREMENT pro tabulku `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=578;

--
-- AUTO_INCREMENT pro tabulku `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT pro tabulku `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pro tabulku `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pro tabulku `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT pro tabulku `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
