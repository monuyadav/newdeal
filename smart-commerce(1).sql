-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 28, 2018 at 10:24 AM
-- Server version: 5.7.23-0ubuntu0.18.04.1
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart-commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_commentmeta`
--

CREATE TABLE `tbl_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tbl_commentmeta`
--

INSERT INTO `tbl_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 13, 'rating', '5'),
(2, 13, 'verified', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tbl_comments`
--

INSERT INTO `tbl_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-09-17 06:42:05', '2018-09-17 06:42:05', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0),
(2, 20, 'WooCommerce', '', '', '', '2018-09-17 07:33:05', '2018-09-17 07:33:05', 'Awaiting BACS payment Order status changed from Pending payment to On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(3, 20, 'WooCommerce', '', '', '', '2018-09-17 07:33:06', '2018-09-17 07:33:06', 'Product 2 (psku-2) stock reduced from 2000 to 1999.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(4, 20, 'supAdmin', 'monuydvenlte@gmail.com', '', '', '2018-09-17 07:34:19', '2018-09-17 07:34:19', 'Order status changed from On hold to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(5, 20, 'supAdmin', 'monuydvenlte@gmail.com', '', '', '2018-09-17 08:07:10', '2018-09-17 08:07:10', 'Order status changed from Processing to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(6, 23, 'WooCommerce', '', '', '', '2018-09-17 08:21:12', '2018-09-17 08:21:12', 'Payment to be made upon delivery. Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(7, 23, 'WooCommerce', '', '', '', '2018-09-17 08:21:13', '2018-09-17 08:21:13', 'Product 1 (psku-1) stock reduced from 100000 to 99997.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(8, 26, 'WooCommerce', '', '', '', '2018-09-17 08:29:54', '2018-09-17 08:29:54', 'Awaiting check payment Order status changed from Pending payment to On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(9, 26, 'WooCommerce', '', '', '', '2018-09-17 08:29:55', '2018-09-17 08:29:55', 'Product 2 (psku-2) stock reduced from 1999 to 1998.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(10, 26, 'WooCommerce', '', '', '', '2018-09-17 08:29:55', '2018-09-17 08:29:55', 'Product 1 (psku-1) stock reduced from 99997 to 99995.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(11, 52, 'WooCommerce', '', '', '', '2018-09-17 12:12:55', '2018-09-17 12:12:55', 'Awaiting check payment Order status changed from Pending payment to On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(12, 52, 'WooCommerce', '', '', '', '2018-09-17 12:12:55', '2018-09-17 12:12:55', 'Product 1 (psku-1) stock reduced from 99995 to 99988.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(13, 10, 'supAdmin', 'monuydvenlte@gmail.com', '', '127.0.0.1', '2018-09-17 12:20:32', '2018-09-17 12:20:32', 'ss', 0, '1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', '', 0, 1),
(14, 26, 'supAdmin', 'monuydvenlte@gmail.com', '', '', '2018-09-17 12:28:19', '2018-09-17 12:28:19', 'Order status changed from On hold to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(15, 52, 'supAdmin', 'monuydvenlte@gmail.com', '', '', '2018-09-17 12:28:24', '2018-09-17 12:28:24', 'Order status changed from On hold to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(16, 23, 'supAdmin', 'monuydvenlte@gmail.com', '', '', '2018-09-17 12:28:30', '2018-09-17 12:28:30', 'Order status changed from Processing to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(17, 26, 'supAdmin', 'monuydvenlte@gmail.com', '', '', '2018-09-17 12:28:35', '2018-09-17 12:28:35', 'Order status changed from Processing to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(18, 52, 'supAdmin', 'monuydvenlte@gmail.com', '', '', '2018-09-17 12:29:24', '2018-09-17 12:29:24', 'Order status changed from Processing to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(19, 58, 'WooCommerce', '', '', '', '2018-09-17 13:38:43', '2018-09-17 13:38:43', 'Product 2 (psku-2) stock reduced from 1998 to 1997.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(20, 58, 'WooCommerce', '', '', '', '2018-09-17 13:38:44', '2018-09-17 13:38:44', 'Stripe charge authorized (Charge ID: ch_1DBMw1FXxflcsvs7sXF89Yai). Process order to take payment, or cancel to remove the pre-authorization. Order status changed from Pending payment to On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(21, 59, 'WooCommerce', '', '', '', '2018-09-24 09:35:36', '2018-09-24 09:35:36', 'Unpaid order cancelled - time limit reached. Order status changed from Pending payment to Cancelled.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_links`
--

CREATE TABLE `tbl_links` (
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
-- Table structure for table `tbl_options`
--

CREATE TABLE `tbl_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tbl_options`
--

INSERT INTO `tbl_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Enlte', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'monuydvenlte@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:157:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:45:\"ccavanue-woocommerce-payment-getway/index.php\";i:1;s:46:\"wonderplugin-carousel/wonderplugincarousel.php\";i:2;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:67:\"/var/www/html/wordpress/wp-content/themes/twentyseventeen/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'storeone', 'yes'),
(41, 'stylesheet', 'mobile-shop', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:1;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:46:\"wonderplugin-carousel/wonderplugincarousel.php\";s:31:\"wonderplugin_carousel_uninstall\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'tbl_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:3:{i:0;s:12:\"categories-2\";i:1;s:27:\"woocommerce_rating_filter-2\";i:2;s:26:\"woocommerce_price_filter-2\";}s:12:\"sidebar-shop\";a:0:{}s:18:\"footer-widget-area\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:12:{i:1538049906;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1538052126;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1538053155;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1538063955;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1538073726;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1538092800;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1538116944;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1538118664;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1538128755;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1538128765;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1538438400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1537177973;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:2:{i:0;s:27:\"woocommerce_rating_filter-2\";i:1;s:26:\"woocommerce_price_filter-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1538042663;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(125, 'can_compress_scripts', '0', 'no'),
(134, 'recently_activated', 'a:0:{}', 'yes'),
(143, 'ftp_credentials', 'a:3:{s:8:\"hostname\";s:17:\"www.wordpress.com\";s:8:\"username\";s:7:\"monuydv\";s:15:\"connection_type\";s:3:\"ftp\";}', 'yes'),
(146, 'woocommerce_store_address', '131', 'yes'),
(147, 'woocommerce_store_address_2', '', 'yes'),
(148, 'woocommerce_store_city', 'Sector 44', 'yes'),
(149, 'woocommerce_default_country', 'IN:HR', 'yes'),
(150, 'woocommerce_store_postcode', '122003', 'yes'),
(151, 'woocommerce_allowed_countries', 'all', 'yes'),
(152, 'woocommerce_all_except_countries', '', 'yes'),
(153, 'woocommerce_specific_allowed_countries', '', 'yes'),
(154, 'woocommerce_ship_to_countries', '', 'yes'),
(155, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(156, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(157, 'woocommerce_calc_taxes', 'no', 'yes'),
(158, 'woocommerce_enable_coupons', 'yes', 'yes'),
(159, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(160, 'woocommerce_currency', 'INR', 'yes'),
(161, 'woocommerce_currency_pos', 'left', 'yes'),
(162, 'woocommerce_price_thousand_sep', ',', 'yes'),
(163, 'woocommerce_price_decimal_sep', '.', 'yes'),
(164, 'woocommerce_price_num_decimals', '2', 'yes'),
(165, 'woocommerce_shop_page_id', '6', 'yes'),
(166, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(167, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(168, 'woocommerce_weight_unit', 'kg', 'yes'),
(169, 'woocommerce_dimension_unit', 'cm', 'yes'),
(170, 'woocommerce_enable_reviews', 'yes', 'yes'),
(171, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(172, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(173, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(174, 'woocommerce_review_rating_required', 'yes', 'no'),
(175, 'woocommerce_manage_stock', 'yes', 'yes'),
(176, 'woocommerce_hold_stock_minutes', '60', 'no'),
(177, 'woocommerce_notify_low_stock', 'yes', 'no'),
(178, 'woocommerce_notify_no_stock', 'yes', 'no'),
(179, 'woocommerce_stock_email_recipient', 'monuydvenlte@gmail.com', 'no'),
(180, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(181, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(182, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(183, 'woocommerce_stock_format', '', 'yes'),
(184, 'woocommerce_file_download_method', 'force', 'no'),
(185, 'woocommerce_downloads_require_login', 'no', 'no'),
(186, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(187, 'woocommerce_prices_include_tax', 'no', 'yes'),
(188, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(189, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(190, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(191, 'woocommerce_tax_classes', 'Reduced rate\nZero rate', 'yes'),
(192, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(193, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(194, 'woocommerce_price_display_suffix', '', 'yes'),
(195, 'woocommerce_tax_total_display', 'itemized', 'no'),
(196, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(197, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(198, 'woocommerce_ship_to_destination', 'billing', 'no'),
(199, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(200, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(201, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(202, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(203, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(204, 'woocommerce_registration_generate_username', 'yes', 'no'),
(205, 'woocommerce_registration_generate_password', 'yes', 'no'),
(206, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(207, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(208, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(209, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(210, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(211, 'woocommerce_trash_pending_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(212, 'woocommerce_trash_failed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(213, 'woocommerce_trash_cancelled_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(214, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(215, 'woocommerce_email_from_name', 'Enlte', 'no'),
(216, 'woocommerce_email_from_address', 'monuydvenlte@gmail.com', 'no'),
(217, 'woocommerce_email_header_image', '', 'no'),
(218, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(219, 'woocommerce_email_base_color', '#96588a', 'no'),
(220, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(221, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(222, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(223, 'woocommerce_cart_page_id', '34', 'yes'),
(224, 'woocommerce_checkout_page_id', '8', 'yes'),
(225, 'woocommerce_myaccount_page_id', '9', 'yes'),
(226, 'woocommerce_terms_page_id', '3', 'no'),
(227, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(228, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(229, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(230, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(231, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(232, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(233, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(234, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(235, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(236, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(237, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(238, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(239, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(240, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(241, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(242, 'woocommerce_api_enabled', 'no', 'yes'),
(243, 'woocommerce_single_image_width', '600', 'yes'),
(244, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(245, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(246, 'woocommerce_demo_store', 'no', 'no'),
(247, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(248, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(249, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(250, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(252, 'default_product_cat', '15', 'yes'),
(257, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(258, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(259, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(260, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(261, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(262, 'widget_woocommerce_price_filter', 'a:2:{i:2;a:1:{s:5:\"title\";s:15:\"Filter by price\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(263, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(264, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(265, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(266, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(267, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(268, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(269, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(270, 'widget_woocommerce_rating_filter', 'a:2:{i:2;a:1:{s:5:\"title\";s:14:\"Average rating\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(278, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(280, 'woocommerce_product_type', 'both', 'yes'),
(281, 'woocommerce_sell_in_person', '1', 'yes'),
(282, 'woocommerce_allow_tracking', 'yes', 'yes'),
(284, 'woocommerce_tracker_last_send', '1537781757', 'yes'),
(286, 'woocommerce_ppec_paypal_settings', 'a:3:{s:5:\"email\";s:22:\"monuydvenlte@gmail.com\";s:7:\"enabled\";s:3:\"yes\";s:16:\"reroute_requests\";s:3:\"yes\";}', 'yes'),
(287, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(288, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(289, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(290, 'woocommerce_admin_notice_ppec_paypal_install_error', 'WooCommerce PayPal Express Checkout Gateway could not be installed (Could not create directory.). <a href=\"http://localhost/wordpress/wp-admin/index.php?wc-install-plugin-redirect=woocommerce-gateway-paypal-express-checkout\">Please install it manually by clicking here.</a>', 'yes'),
(299, 'woocommerce_admin_notice_jetpack_install_error', 'Jetpack could not be installed (Could not create directory.). <a href=\"http://localhost/wordpress/wp-admin/index.php?wc-install-plugin-redirect=jetpack\">Please install it manually by clicking here.</a>', 'yes'),
(300, 'woocommerce_admin_notice_woocommerce-services_install_error', 'WooCommerce Services could not be installed (Could not create directory.). <a href=\"http://localhost/wordpress/wp-admin/index.php?wc-install-plugin-redirect=woocommerce-services\">Please install it manually by clicking here.</a>', 'yes'),
(303, '_transient_shipping-transient-version', '1537168151', 'yes'),
(304, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:\"title\";s:9:\"Flat rate\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:2:\"40\";}', 'yes'),
(306, 'mailchimp_woocommerce_plugin_do_activation_redirect', '', 'yes'),
(308, 'woocommerce_admin_notice_mailchimp-for-woocommerce_install_error', 'MailChimp for WooCommerce could not be installed (An unexpected error occurred. Something may be wrong with WordPress.org or this server&#8217;s configuration. If you continue to have problems, please try the <a href=\"https://wordpress.org/support/\">support forums</a>.). <a href=\"http://localhost/wordpress/wp-admin/index.php?wc-install-plugin-redirect=mailchimp-for-woocommerce\">Please install it manually by clicking here.</a>', 'yes'),
(310, '_transient_product_query-transient-version', '1538043128', 'yes'),
(313, '_transient_product-transient-version', '1538043128', 'yes'),
(321, 'category_children', 'a:0:{}', 'yes'),
(341, 'product_cat_children', 'a:0:{}', 'yes'),
(354, '_transient_timeout_wc_shipping_method_count_1_1537168151', '1539761345', 'no'),
(355, '_transient_wc_shipping_method_count_1_1537168151', '2', 'no'),
(358, '_transient_orders-transient-version', '1537781735', 'yes'),
(415, 'current_theme', 'Mobile Shop', 'yes'),
(416, 'theme_mods_easy-commerce', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1537177327;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:2:{i:0;s:27:\"woocommerce_rating_filter-2\";i:1;s:26:\"woocommerce_price_filter-2\";}s:9:\"sidebar-2\";a:0:{}s:22:\"sidebar-featured-right\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(417, 'theme_switched', '', 'yes'),
(418, 'widget_easy-commerce-social', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(419, 'widget_easy-commerce-featured-page', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(420, 'widget_easy-commerce-recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(421, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(457, '_transient_timeout_wc_shipping_method_count_0_1537168151', '1539766686', 'no'),
(458, '_transient_wc_shipping_method_count_0_1537168151', '2', 'no'),
(464, 'yit_recently_activated', 'a:0:{}', 'yes'),
(465, 'yith_wcwl_frontend_css_colors', 's:1159:\"a:10:{s:15:\"add_to_wishlist\";a:3:{s:10:\"background\";s:7:\"#333333\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#333333\";}s:21:\"add_to_wishlist_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:11:\"add_to_cart\";a:3:{s:10:\"background\";s:7:\"#333333\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#333333\";}s:17:\"add_to_cart_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:14:\"button_style_1\";a:3:{s:10:\"background\";s:7:\"#333333\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#333333\";}s:20:\"button_style_1_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:14:\"button_style_2\";a:3:{s:10:\"background\";s:7:\"#FFFFFF\";s:5:\"color\";s:7:\"#858484\";s:12:\"border_color\";s:7:\"#c6c6c6\";}s:20:\"button_style_2_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:14:\"wishlist_table\";a:3:{s:10:\"background\";s:7:\"#FFFFFF\";s:5:\"color\";s:7:\"#6d6c6c\";s:12:\"border_color\";s:7:\"#FFFFFF\";}s:7:\"headers\";a:1:{s:10:\"background\";s:7:\"#F4F4F4\";}}\";', 'yes'),
(466, 'yith_wcwl_wishlist_title', 'My wishlist on Enlte', 'yes'),
(467, 'yith_wcwl_version', '2.2.3', 'yes'),
(468, 'yith_wcwl_db_version', '2.2.0', 'yes'),
(469, 'yith_wcwl_general_videobox', 'a:7:{s:11:\"plugin_name\";s:25:\"YITH WooCommerce Wishlist\";s:18:\"title_first_column\";s:30:\"Discover the Advanced Features\";s:24:\"description_first_column\";s:89:\"Upgrade to the PREMIUM VERSION of YITH WOOCOMMERCE WISHLIST to benefit from all features!\";s:5:\"video\";a:3:{s:8:\"video_id\";s:9:\"118797844\";s:15:\"video_image_url\";s:102:\"http://localhost/wordpress/wp-content/plugins/yith-woocommerce-wishlist//assets/images/video-thumb.jpg\";s:17:\"video_description\";s:0:\"\";}s:19:\"title_second_column\";s:28:\"Get Support and Pro Features\";s:25:\"description_second_column\";s:205:\"By purchasing the premium version of the plugin, you will take advantage of the advanced features of the product and you will get one year of free updates and support through our platform available 24h/24.\";s:6:\"button\";a:2:{s:4:\"href\";s:78:\"http://yithemes.com/themes/plugins/yith-woocommerce-wishlist/?refer_id=1030585\";s:5:\"title\";s:28:\"Get Support and Pro Features\";}}', 'yes'),
(470, 'yith_wcwl_enabled', 'yes', 'yes'),
(471, 'yith_wcwl_wishlist_page_id', '', 'yes'),
(472, 'yith_wcwl_redirect_cart', 'yes', 'yes'),
(473, 'yith_wcwl_remove_after_add_to_cart', 'yes', 'yes'),
(474, 'yith_wcwl_add_to_wishlist_text', 'Add to Wishlist', 'yes'),
(475, 'yith_wcwl_browse_wishlist_text', 'Browse Wishlist', 'yes'),
(476, 'yith_wcwl_already_in_wishlist_text', 'The product is already in the wishlist!', 'yes'),
(477, 'yith_wcwl_product_added_text', 'Product added!', 'yes');
INSERT INTO `tbl_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(478, 'yith_wcwl_add_to_cart_text', 'Add to Cart', 'yes'),
(479, 'yith_wcwl_price_show', 'yes', 'yes'),
(480, 'yith_wcwl_add_to_cart_show', 'yes', 'yes'),
(481, 'yith_wcwl_stock_show', 'yes', 'yes'),
(482, 'yith_wcwl_show_dateadded', 'no', 'yes'),
(483, 'yith_wcwl_repeat_remove_button', 'no', 'yes'),
(484, 'yith_wcwl_share_fb', 'yes', 'yes'),
(485, 'yith_wcwl_share_twitter', 'yes', 'yes'),
(486, 'yith_wcwl_share_pinterest', 'yes', 'yes'),
(487, 'yith_wcwl_share_googleplus', 'yes', 'yes'),
(488, 'yith_wcwl_share_email', 'yes', 'yes'),
(489, 'yith_wcwl_socials_title', 'My wishlist on Enlte', 'yes'),
(490, 'yith_wcwl_socials_text', '', 'yes'),
(491, 'yith_wcwl_socials_image_url', '', 'yes'),
(492, 'yith_wfbt_enable_integration', 'no', 'yes'),
(493, 'yith_wcwl_use_button', 'no', 'yes'),
(494, 'yith_wcwl_custom_css', '', 'yes'),
(495, 'yith_wcwl_frontend_css', 'yes', 'yes'),
(496, 'yith_wcwl_rounded_corners', 'yes', 'yes'),
(497, 'yith_wcwl_add_to_wishlist_icon', 'none', 'yes'),
(498, 'yith_wcwl_add_to_cart_icon', 'fa-shopping-cart', 'yes'),
(499, 'yit_plugin_fw_panel_wc_default_options_set', 'a:1:{s:15:\"yith_wcwl_panel\";b:1;}', 'yes'),
(503, '_transient_easy_commerce_categories', '1', 'yes'),
(513, 'yith_wcwl_button_position', 'add-to-cart', 'yes'),
(534, 'theme_mods_mobile-shop', 'a:11:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:18;}s:29:\"storeone_social_link_facebook\";s:19:\"http://facebook.com\";s:27:\"storeone_social_link_google\";s:17:\"http://google.com\";s:28:\"storeone_social_link_youtube\";s:18:\"http://youtube.com\";s:28:\"storeone_social_link_twitter\";s:18:\"http://twitter.com\";s:30:\"storeone_social_link_instagram\";s:20:\"http://instagram.com\";s:29:\"storeone_social_link_linkedin\";s:15:\"http://linkedin\";s:18:\"storeone_top_email\";s:0:\"\";s:18:\"storeone_top_phone\";s:9:\"111111111\";s:11:\"custom_logo\";i:65;}', 'yes'),
(549, 'woocommerce_version', '3.4.5', 'yes'),
(550, 'woocommerce_db_version', '3.4.5', 'yes'),
(560, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:18;}}', 'yes'),
(577, '_transient_timeout_wc_cbp_0eeb43e7fbd7a4c902c828fffbcee1c8', '1539778832', 'no'),
(578, '_transient_wc_cbp_0eeb43e7fbd7a4c902c828fffbcee1c8', 'a:4:{i:0;i:19;i:1;i:10;i:2;i:19;i:3;i:10;}', 'no'),
(624, 'wc_stripe_version', '4.1.9', 'yes'),
(625, 'woocommerce_stripe_settings', 'a:23:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:11:\"Credit Card\";s:11:\"description\";s:26:\"Pay with your credit card.\";s:7:\"webhook\";s:0:\"\";s:8:\"testmode\";s:3:\"yes\";s:20:\"test_publishable_key\";s:32:\"pk_test_DXJB8QGrV84B8wiaTNSKaoAA\";s:15:\"test_secret_key\";s:32:\"sk_test_v32ArZUjesDfjrB0H09NYp08\";s:15:\"publishable_key\";s:0:\"\";s:10:\"secret_key\";s:0:\"\";s:14:\"inline_cc_form\";s:2:\"no\";s:20:\"statement_descriptor\";s:0:\"\";s:7:\"capture\";s:2:\"no\";s:14:\"three_d_secure\";s:2:\"no\";s:15:\"stripe_checkout\";s:2:\"no\";s:21:\"stripe_checkout_image\";s:0:\"\";s:27:\"stripe_checkout_description\";s:0:\"\";s:15:\"payment_request\";s:3:\"yes\";s:27:\"payment_request_button_type\";s:3:\"buy\";s:28:\"payment_request_button_theme\";s:4:\"dark\";s:29:\"payment_request_button_height\";s:2:\"44\";s:11:\"saved_cards\";s:3:\"yes\";s:7:\"logging\";s:3:\"yes\";s:20:\"apple_pay_domain_set\";s:3:\"yes\";}', 'yes'),
(644, 'woocommerce_ccavenue_settings', 'a:15:{s:7:\"enabled\";s:3:\"yes\";s:7:\"sandbox\";s:3:\"yes\";s:26:\"enable_currency_conversion\";s:3:\"yes\";s:10:\"iframemode\";s:3:\"yes\";s:5:\"title\";s:8:\"CCAvenue\";s:11:\"description\";s:89:\"Pay securely by Credit or Debit card or internet banking through CCAvenue Secure Servers.\";s:11:\"merchant_id\";s:10:\"1234567897\";s:11:\"working_key\";s:12:\"123456789744\";s:11:\"access_code\";s:0:\"\";s:12:\"default_add1\";s:0:\"\";s:12:\"default_city\";s:0:\"\";s:13:\"default_state\";s:0:\"\";s:11:\"default_zip\";s:0:\"\";s:15:\"default_country\";s:3:\"100\";s:13:\"default_phone\";s:0:\"\";}', 'yes'),
(647, '_transient_timeout_external_ip_address_127.0.0.1', '1538386533', 'no'),
(648, '_transient_external_ip_address_127.0.0.1', '182.69.139.16', 'no'),
(682, 'woocommerce_tracker_ua', 'a:1:{i:0;s:76:\"mozilla/5.0 (x11; ubuntu; linux x86_64; rv:62.0) gecko/20100101 firefox/62.0\";}', 'yes'),
(684, '_site_transient_timeout_browser_d62a1a3bb908ffa3361920bc8dc2be5a', '1538463344', 'no'),
(685, '_site_transient_browser_d62a1a3bb908ffa3361920bc8dc2be5a', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"62.0\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(729, 'wonderplugin_carousel_userrole', 'manage_options', 'yes'),
(730, 'wonderplugin_carousel_thumbnailsize', 'medium', 'yes'),
(731, 'wonderplugin-carousel-engine', 'Responsive WordPress Carousel', 'yes'),
(732, 'wonderplugin_carousel_information', 's:21284:\"O:8:\"stdClass\":16:{s:6:\"author\";s:19:\"Magic Hills Pty Ltd\";s:8:\"homepage\";s:48:\"https://www.wonderplugin.com/wordpress-carousel/\";s:4:\"name\";s:21:\"WonderPlugin Carousel\";s:8:\"requires\";s:3:\"3.6\";s:6:\"tested\";s:5:\"4.9.8\";s:5:\"icons\";a:1:{s:7:\"default\";s:41:\"https://www.wonderplugin.com/icon-128.png\";}s:7:\"version\";s:4:\"14.2\";s:11:\"new_version\";s:4:\"14.2\";s:12:\"last_updated\";s:10:\"2018-09-18\";s:8:\"sections\";a:1:{s:10:\"change log\";s:20630:\"<h4>Version 14.2 - September 18, 2018</h4>\n<ul>\n<li>Fix an issue with Jetpack image lazy load</li>\n</ul>\n<h4>Version 14.1 - September 14, 2018</h4>\n<ul>\n<li>Fix a bug in PDF lightbox</li>\n</ul>\n<h4>Version 14.0 - September 6, 2018</h4>\n<ul>\n<li>Fix a bug in lightbox popup when the responsive option is off</li>\n</ul>\n<h4>Version 13.9 - August 23, 2018</h4>\n<ul>\n<li>Fix the bug of YouTube and Vimeo videos not autoplay on lightbox popup</li>\n</ul>\n<h4>Version 13.8 - August 3, 2018</h4>\n<ul>\n<li>Order WooCommerce and WordPress custom post types carousel by menu_order, title, date etc</li>\n</ul>\n<h4>Version 13.7 - July 23, 2018</h4>\n<ul>\n<li>Add an option to defer loading the carousel and all images</li>\n</ul>\n<h4>Version 13.6 - July 6, 2018</h4>\n<ul>\n<li>Fix the compatibility issue with the JetPack option <code>Lazy load images</code></li>\n</ul>\n<h4>Version 13.5 - June 30, 2018</h4>\n<ul>\n<li>Fix a bug when there are hyperlinks in the title of WordPress pages</li>\n</ul>\n<h4>Version 13.4 - June 22, 2018</h4>\n<ul>\n<li>Fix the bug with the option <code>Open current image in lightbox when clicking the carousel button</code></li>\n</ul>\n<h4>Version 13.3 - June 12, 2018</h4>\n<ul>\n<li>Add an option to enable/disable adding the media type attribute to the media URL</li>\n</ul>\n<h4>Version 13.2 - June 7, 2018</h4>\n<ul>\n<li>Fix a bug of creating WordPress post carousel when the web server PHP version is less than 5.5 </li>\n</ul>\n<h4>Version 13.1 - May 17, 2018</h4>\n<ul>\n<li>Fix minor issues</li>\n</ul>\n<h4>Version 13.0 - April 29, 2018</h4>\n<ul>\n<li>Support hiding the download and print buttons in the lightbox PDF viewer when working with the plugin <a href=\"https://www.wonderplugin.com/wordpress-pdf-embed/\" rel=\"noopener\" target=\"_blank\">WonderPlugin PDF Embed</a></li>\n<li>Support playing mp4 videos hosted on Google Drive</li>\n</ul>\n<h4>Version 12.9 - April 20, 2018</h4>\n<ul>\n<li>Add a button <code>Add Text/HTML/Shortcode/Souldcloud</code> in the plugin step 1 to create text only carousel and Soundcloud carousel</li>\n<li>Support using an xml file to define extra title and description information when creating a carousel from images and videos inside a web folder</li>\n<li>Fix a bug of highlighting the navigation bullets</li>\n<li>Fix the issue of Vimeo video autoplay in the lightbox under the latest Chrome version 66</li>\n</ul>\n<h4>Version 12.8 - April 11, 2018</h4>\n<ul>\n<li>Create a WordPress carousel from images and videos inside a web folder: <a href=\"https://www.wonderplugin.com/wordpress-carousel-plugin/how-to-create-a-wordpress-carousel-from-images-and-videos-inside-a-web-folder/\" rel=\"noopener\" target=\"_blank\">Tutorial: How to create a WordPress carousel from images and videos inside a web folder</a></li>\n</ul>\n<h4>Version 12.7 - March 12, 2018</h4>\n<ul>\n<li>Fix a bug when playing videos inside the carousel</li>\n</ul>\n<h4>Version 12.6 - January 31, 2018</h4>\n<ul>\n<li>For vertical carousels, support changing the number of visible items according to the screen size or the web browser width</li>\n<li>Support left/right arrows when the option continuous playing (auto scrolling) is enabled</li>\n</ul>\n<h4>Version 12.5 - January 17, 2017</h4>\n<ul>\n<li>For WordPress post carousels, the following four macro variables are supported:</li>\n<li><code>__CATEGORYNAME[,]__</code>: display all category names separated by a comma.</li>\n<li><code>__CATEGORYNAMELINK[,]{_target}__</code>: display all category names separated by a comma. Each category name will link to the corresponding category page. The link will open in a new tab which is defined by the target value <code>_target</code>. To open the link in the same page, change the code to <code>__CATEGORYNAMELINK[,]{}__</code>.</li>\n<li><code>__TAGNAME[,]__</code>: display all tags separated by a comma.</li>\n<li><code>__TAGNAMELINK[,]{_target}__</code>: display all tags separated by a comma. Each tag will link to the corresponding tag page. The link will open in a new tab which is defined by the target value <code>_target</code>. To open the link in the same page, change the code to <code>__TAGNAMELINK[,]{}__</code>.</li>\n</ul>\n<h4>Version 12.4 - January 6, 2018</h4>\n<ul>\n<li>Support WooCommerce product category fields: <code>%wc_product_cat_id%</code>, <code>%wc_product_cat_name%</code>, <code>%wc_product_cat_slug%</code> and <code>%wc_product_cat_link%</code></li>\n<li>Support displaying post category ID, name, slug and link. The following macro-variables are supported for WordPress post carousel: <code>__CATEGORYID__</code>, <code>__CATEGORYNAME__</code>, <code>__CATEGORYSLUG__</code>, <code>__CATEGORYLINK__</code></li>\n</ul>\n<h4>Version 12.3 - October 23, 2017</h4>\n<ul>\n<li>Support WordPress page carousel</li>\n</ul>\n<h4>Version 12.2 - September 16, 2017</h4>\n<ul>\n<li>Fix a bug in the carousel movement when the option \"Display thumbnail images as same height and different width if they have different aspect ratio\" is selected</li>\n</ul>\n<h4>Version 12.1 - September 5, 2017</h4>\n<ul>\n<li>Add a new skin \"Read More Button\"</li>\n</ul>\n<h4>Version 12.0 - August 10, 2017</h4>\n<ul>\n<li>\nAdd a function \"Search and Replace\" in the \"Import/Export\" menu. This function can be used to search and replace domain names in the carousels when you move your WordPress site to a new domain or change to HTTPS secure site.</li>\n</ul>\n<h4>Version 11.9 - August 7, 2017</h4>\n<ul>\n<li>Add buttons to the carousel</li>\n<li>Add a new skin <a href=\"https://www.wonderplugin.com/wordpress-carousel/examples/wordpress-text-and-image-carousel-slider-id54/\" target=\"_blank\">Text and Image Slider</a> to create WordPress carousel sliders</li>\n</ul>\n<h4>Version 11.8 - July 31, 2017</h4>\n<ul>\n<li>Add two skins <a href=\"https://www.wonderplugin.com/wordpress-carousel/examples/wordpress-team-members-carousel-with-social-media-id52/\" target=\"_blank\">Team Members with Social Media</a> and <a href=\"https://www.wonderplugin.com/wordpress-carousel/examples/wordpress-team-members-with-social-media-and-flip-effect-id53/\" target=\"_blank\">Team Members with Social Media and Flip Effect</a> to display team members information</li>\n</ul>\n<h4>Version 11.7 - July 13, 2017</h4>\n<ul>\n<li>Fix the issue of the lightbox jumping to the page top</li>\n<li>Fix the swipe issue on Android version 5 and below</li>\n</ul>\n<h4>Version 11.6 - June 3, 2017</h4>\n<ul>\n<li>Add a button \"Add PDF\" in step 1 to help create <a href=\"https://www.wonderplugin.com/wordpress-carousel/examples/wordpress-pdf-carousel-id51/\" target=\"_blank\">WordPress PDF carousel</a></li>\n<li>In step 1, when adding an image/video/PDF, highlight the input box if the image/video/PDF is not selected</li>\n<li>Setup different default lightbox size for images, videos and PDF files</li>\n</ul>\n<h4>Version 11.5 - June 2, 2017</h4>\n<ul>\n<li>Support opening PDF files in the carousel lightbox popup</li>\n</ul>\n<h4>Version 11.4 - May 30, 2017</h4>\n<ul>\n<li>Select WordPress posts by tags</li>\n<li>Specify the \"orderby\" option when selecting WordPress posts. You can now randomly select posts or select posts by date, ID, author, title, modified date, number of comments.</li>\n<li>Fix a compatibility issue with WooCommerce 3</li>\n<li>Create featured posts carousels for WooCommerce 3</li>\n<li>Specify the featured image size for WooCommerce / custom post type carousels</li>\n</ul>\n<h4>Version 11.3 - April 27, 2017</h4>\n<ul>\n<li>Fix the bug when using the URL parameter firstcarouselid to specify the first item on page load</li>\n</ul>\n<h4>Version 11.2 - April 6, 2017</h4>\n<ul>\n<li>Fix the lightbox resizing issue on mobile devices</li>\n</ul>\n<h4>Version 11.1 - March 30, 2017</h4>\n<ul>\n<li>Add an option to add extra attributes to &lt;a&gt; tag</li>\n<li>Add a lightbox advanced option <em>bodynoscroll</em>. When adding <em>data-bodynoscroll=\"true\"</em> to the Lightbox Advanced Options input box, it will stop the lightbox background scrolling</li>\n<li>Add a lightbox advanced option <em>mobileresizeevent</em>. When adding <em>data-mobileresizeevent=\"false\"</em> to the Lightbox Advanced Options input box, it will stop the lightbox resizing on mobile devices</li>\n</ul>\n<h4>Version 11.0 - February 23, 2017</h4>\n<ul>\n<li>When automatically playing the carousel, add an option to move the carousel to the left or the right</li>\n<li>Add an option to disable looping images when the total number is less than a specified number</li>\n</ul>\n<h4>Version 10.9 - January 9, 2017</h4>\n<ul>\n<li>When adding a carousel to a page or post by using the shortcode, support calling the carousel by its name, for example [wonderplugin_carousel name=\"The Carousel Name\"]</li>\n<li>In the plugin, step 1, Images & Videos tab, add a button \"Delete All\" to delete all items</li>\n<li>In the plugin, step 1, Images & Videos tab, \"Add Image\" dialog, when adding multiple images with the button \"Upload\", apply the option \"Use thumbnail in carousel\" and \"Open current image in Lightbox\" to all images</li>\n</ul>\n<h4>Version 10.8</h4>\n<ul>\n<li>Export/import carousels to/from an .xml file</li>\n</ul>\n<h4>Version 10.7</h4>\n<ul>\n<li>Fix a bug in WordPress auto scrolling carousel</li>\n</ul>\n<h4>Version 10.6</h4>\n<ul>\n<li>Change lightbox fullscreen mode default to false on small screen devices</li>\n</ul>\n<h4>Version 10.5</h4>\n<ul>\n<li>Add an option to add custom JavaScript code</li>\n<li>Add the attribute allowfullscreen to lightbox iframe</li>\n<li>Add a lightbox advanced option maxheight: when data-maxheight=\"true\" is added to the Lightbox Advanced Options input box, the lightbox will use the height of the web browser to calculate the maximum height of the lightbox.</li>\n<li>Enable left and right arrows when the animation is not finished</li>\n</ul>\n<h4>Version 10.4</h4>\n<ul>\n<li>Support creating <a href=\"https://www.wonderplugin.com/wordpress-carousel-plugin/how-to-create-a-woocommerce-product-carousel/\" target=\"_blank\">WooCommerce best selling products carousel</a> and <a href=\"https://www.wonderplugin.com/wordpress-carousel-plugin/how-to-create-a-woocommerce-product-carousel/\" target=\"_blank\">WooCommerce featured products carousel</a></li>\n</ul>\n<h4>Version 10.3</h4>\n<ul>\n<li>Support displaying WooCommerce product price and rating in a <a href=\"https://www.wonderplugin.com/wordpress-carousel-plugin/how-to-create-a-woocommerce-product-carousel/\" target=\"_blank\">WooCommerce carousel</a></li>\n</ul>\n<h4>Version 10.2</h4>\n<ul>\n<li>WordPress custom post type carousel: change the word length limit to post content and excerpt only</li>\n<li>Use textarea for description input box</li>\n</ul>\n<h4>Version 10.1</h4>\n<ul>\n<li>Fix a minor bug in WordPress custom post type carousel</li>\n</ul>\n<h4>Version 10.0</h4>\n<ul>\n<li>Support WordPress custom post type. You can now use the plugin to create <a href=\"https://www.wonderplugin.com/wordpress-carousel-plugin/how-to-create-a-woocommerce-product-carousel/\" target=\"_blank\">WooCommerce carousel</a> or your own custom post carousel</li>\n<li>Add an option to enter different text for alt attribute of img tags</li>\n<li>Add an option to add title attribute for img tags.</li>\n</ul>\n<h4>Version 9.9</h4>\n<ul>\n<li>Compatible with jQuery 3</li>\n</ul>\n<h4>Version 9.8</h4>\n<ul>\n<li>Support onclick event for web links</li>\n</ul>\n<h4>Version 9.7</h4>\n<ul>\n<li>Fix the problem of the menu Manage Carousels not working in version 9.4 on some WordPress installations</li>\n</ul>\n<h4>Version 9.4</h4>\n<ul>\n<li>Fix the problem when the folder wp-admin does not exist in the WordPress website</li>\n</ul>\n<h4>Version 9.3</h4>\n<ul>\n<li>Support macro variable __DATETIME__ and __DATE__ in carousel content template for <a href=\"https://www.wonderplugin.com/wordpress-tutorials/how-to-create-a-wordpress-post-carousel/\" target=\"_blank\">WordPress post carousel</a></li>\n</ul>\n<h4>Version 9.2</h4>\n<ul>\n<li>Fix the bug of icon class name conflict</li>\n</ul>\n<h4>Version 9.1</h4>\n<ul>\n<li>Move social media buttons to the bottom center of the lightbox popup</li>\n</ul>\n<h4>Version 9.0</h4>\n<ul>\n<li>Fix a bug of playing videos inside the carousel items</li>\n</ul>\n<h4>Version 8.9</h4>\n<ul>\n<li>Support social media share buttons in lightbox popup: Facebook, Twitter and Pinterest</li>\n<li>Rearrange lightbox options to tabs</li>\n</ul>\n<h4>Version 8.8</h4>\n<ul>\n<li>Use advanced option <code>data-imgextraprops</code> to add extra class names and attributes to img elements</li>\n<li>WordPress post carousel: getting posts of no older than specified days</li>\n<li>WordPress post carousel: specifying post order as ascending or descending</li>\n</ul>\n<h4>Version 8.7</h4>\n<ul>\n<li>Add a new skin Classic with Flip that can be used to create <a href=\"https://www.wonderplugin.com/wordpress-carousel/examples/wordpress-carousel-with-3d-flip-effect-id45/\" target=\"_blank\">WordPress carousel with 3d flip effect</a></li>\n</ul>\n<h4>Version 8.6</h4>\n<ul>\n<li>Fix a responsive bug with image lightbox</li>\n</ul>\n<h4>Version 8.5</h4>\n<ul>\n<li>Add an option to hide the carousel before all carousel images are loaded</li>\n</ul>\n<h4>Version 8.4</h4>\n<ul>\n<li>Add a new skin Numbering which supports creating <a href=\"https://www.wonderplugin.com/wordpress-carousel/examples/wordpress-carousel-with-number-navigation-id43/\" target=\"_blank\">WordPress carousels with number navigation</a></li>\n</ul>\n<h4>Version 8.3</h4>\n<ul>\n<li>Add an option to hide the whole carousel before the initialisation is finished</li>\n<li>Add an option to display Lightbox image with full width and scrollable height</li>\n<li>Only display images in the Media Library Selection Dialog when selecting an image file and only display videos when selecting a video file</li>\n</ul>\n<h4>Version 8.2</h4>\n<ul>\n<li>Fix a bug in multiple rows carousel</li>\n</ul>\n<h4>Version 8.1</h4>\n<ul>\n<li>Support full width carousel</li>\n<li>Support YouTube playlist carousel</li>\n</ul>\n<h4>Version 8.0</h4>\n<ul>\n<li>Add options to fit images into the carousel and center fitted images</li>\n</ul>\n<h4>Version 7.9</h4>\n<ul>\n<li>Fix the bug when there are uppercase letters in WordPress database prefix</li>\n</ul>\n<h4>Version 7.8</h4>\n<ul>\n<li>Hide the hover over text when the option \"Do not show hover image on touch screen\" is selected.</li>\n</ul>\n<h4>Version 7.7</h4>\n<ul>\n<li>Add an option to show/hide play button on video item</li>\n<li>Add an option to use own image as the video play button</li>\n<li>Fix the hover overlay image bug when there are multiple carousels on one page</li>\n</ul>\n<h4>Version 7.6</h4>\n<ul>\n<li>Fix a bug in version 7.5</li>\n</ul>\n<h4>Version 7.5</h4>\n<ul>\n<li>Fix a bug in vertical carousel when the random option is on</li>\n</ul>\n<h4>Version 7.4</h4>\n<ul>\n<li>Add a new skin Flow</li>\n<li>Add an option to show carousel images as same height and different width if the images have different aspect ratio</li>\n</ul>\n<h4>Version 7.3</h4>\n<ul>\n<li>Add an option to trigger window resize event when the carousel is rendered</li>\n</ul>\n<h4>Version 7.2</h4>\n<ul>\n<li>WordPress Posts Carousel: add an option to link title to the post page</li>\n<li>WordPress Posts Carousel: add an option to open the featured image in lightbox</li>\n</ul>\n<h4>Version 7.1</h4>\n<ul>\n<li>Fix a minor bug in image positioning</li>\n</ul>\n<h4>Version 7.0</h4>\n<ul>\n<li>Support URL parameter firstcarouselid and clickcarousel. The URL parameter firstcarouselid will slide the carousel to the specified item, the index of the parameter starts from 0. If clickcarousel=true is added to the URL, it will open the corresponding lightbox when the webpage loads. For example, the following URL will open the second video in lightbox when the webpage loads: <a href=\"https://www.wonderplugin.com/wordpress-carousel/?firstcarouselid=1&clickcarousel=true\" target=\"_blank\">https://www.wonderplugin.com/wordpress-carousel/?firstcarouselid=1&clickcarousel=true</a></li>\n</ul>\n<h4>Version 6.9</h4>\n<ul>\n<li>Fix a minor issue in version 6.8</li>\n</ul>\n<h4>Version 6.8</h4>\n<ul>\n<li>Add an option to support shortcode in title and description text</li>\n</ul>\n<h4>Version 6.7</h4>\n<ul>\n<li>Fix a bug in plugin update</li>\n</ul>\n<h4>Version 6.6</h4>\n<ul>\n<li>Add an option to center image when the aspect ratio of image is different with that of the carousel item</li>\n</ul>\n<h4>Version 6.5</h4>\n<ul>\n<li>Keep HTML tags in post excerpts</li>\n</ul>\n<h4>Version 6.4</h4>\n<ul>\n<li>Fix a minor bug in the skin Flip</li>\n</ul>\n<h4>Version 6.3</h4>\n<ul>\n<li>Add a new skin Flip to create <a href=\"https://www.wonderplugin.com/wordpress-carousel/examples/wordpress-carousel-with-css3-flip-animation-effect-id41/\" target=\"_blank\">WordPress carousel with CSS3 flip animation effect</a></li>\n</ul>\n<h4>Version 6.2</h4>\n<ul>\n<li>Add a new skin Hover Over to create <a href=\"https://www.wonderplugin.com/wordpress-carousel/examples/wordpress-carousel-with-text-hover-over-effect-id39/\" target=\"_blank\">WordPress carousel with text hover over effect</a></li>\n<li>Add an option to specify the spacing between carousel items</li>\n</ul>\n<h4>Version 6.1</h4>\n<ul>\n<li>Support trash in carousel management. The deleted carousel will be moved to the trash in which you can restore or permanently delete it.</li>\n</ul>\n<h4>Version 6.0</h4>\n<ul>\n<li>Support lightbox auto slideshow</li>\n<li>Add an option to always show the previous and next navigation arrows on lightbox</li>\n<li>Display error notice on the WordPress Updates page if the free upgrade period is expired.</li>\n</ul>\n<h4>Version 5.9</h4>\n<ul>\n<li>Add an option to support adding the new item to the beginning of the list\n</li>\n<li>Add a function to reverse the media list</li>\n</ul>\n<h4>Version 5.8</h4>\n<ul>\n<li>Fix the border radius bug in the skin Simplicity\n</li>\n<li>Add a div container around the carousel div</li>\n</ul>\n<h4>Version 5.7</h4>\n<ul>\n<li>Add an option to hide MP4/WebM video play control bar on lightbox</li>\n<li>Add an option to display text on bottom, inside, left or right of the lightbox</li>\n<li>Add an option to display lightbox in fullscreen mode. In fullscreen mode, the close button will be displayed on the top right corner of the web browser</li>\n<li>Add an option to add prefix to title when the lightbox is displayed in gallery mode</li>\n<li>Add an option to enable or disable closing lightbox when clicking on the overlay background</li>\n<li>Move the left and right navigation arrows to the side of lightbox on touch screen. This will fix the issue of double clicking when playing video on iPhone, iPad and Android.</li>\n</ul>\n<h4>Version 5.6</h4>\n<ul>\n<li>Add an option to display all carousel thumbnails in same size even when the original images have different aspect ratio.\n</li>\n</ul>\n<h4>Version 5.5</h4>\n<ul>\n<li>Fix the bug of playing MP4 video on iPad iOS 9.1\n</li>\n</ul>\n<h4>Version 5.4</h4>\n<ul>\n<li>Fix the bug of video lightbox in iPad 2\n</li>\n</ul>\n<h4>Version 5.3</h4>\n<ul>\n<li>Fix the bug of options \"Scroll Mode\", \"Interval\" and \"Transition duration\" not working\n</li>\n</ul>\n<h4>Version 5.2</h4>\n<ul>\n<li>Support WordPress posts carousel: create carousels from recent WordPress posts or posts in specified categories\n</li>\n<li>Add a new skin \"Read More\"\n</li>\n</ul>\n<h4>Version 5.1</h4>\n<ul>\n<li>Fix a bug in continuous movement\n</li>\n</ul>\n<h4>Version 5.0</h4>\n<ul>\n<li>Add an option to not initialise the carousel when the page is loaded. This option is useful if you would like to manually initialise the carousel with JavaScript API.\n</li>\n<li>Add an option to add init scripts together with carousel HTML code. This option is useful if the WordPress website uses Ajax to load posts and pages.\n</li>\n</ul>\n<h4>Version 4.9</h4>\n<ul>\n<li>Fix bugs\n</li>\n</ul>\n<h4>Version 4.5</h4>\n<ul>\n<li>Add a new skin Auto Scroll to create <a target=\"_blank\" href=\"/wordpress-carousel/examples/wordpress-auto-scroll-carousel-id34/\">automatically scrolling carousel</a>\n</li>\n<li>Add an option to pause carousel scrolling on mouse over\n</li>\n<li>Add options to specify the scrolling interval and transition duration\n</li>\n<li>Add an option to scroll by page or item\n</li>\n</ul>\n<h4>Version 4.4</h4>\n<ul>\n<li>Add an option to add slider js files to the footer\n</li>\n<li>Add an option to display carousels in text widgets\n</li>\n</ul>\n<h4>Version 4.3</h4>\n<ul>\n<li>Add a skin to create <a href=\"https://www.wonderplugin.com/wordpress-carousel/examples/wordpress-text-only-carousel-id32/\" target=\"_blank\">WordPress text only carousel</a>\n</li>\n<li>Add a skin to create <a href=\"https://www.wonderplugin.com/wordpress-carousel/examples/wordpress-multiple-rows-carousel-id33/\" target=\"_blank\">WordPress two rows carousel</a>\n</li>\n<li>Add an option \"Row number\" to define the number of rows\n</li>\n</ul>\n<h4>Version 4.2</h4>\n<ul>\n<li>Support version check and update\n</li>\n</ul>\";}s:3:\"key\";s:0:\"\";s:10:\"key_status\";s:5:\"empty\";s:10:\"key_expire\";i:0;s:4:\"slug\";s:21:\"wonderplugin-carousel\";s:6:\"plugin\";s:46:\"wonderplugin-carousel/wonderplugincarousel.php\";s:12:\"last_checked\";i:1538042668;}\";', 'yes'),
(751, '_site_transient_timeout_theme_roots', '1538044470', 'no'),
(752, '_site_transient_theme_roots', 'a:2:{s:11:\"mobile-shop\";s:7:\"/themes\";s:8:\"storeone\";s:7:\"/themes\";}', 'no'),
(753, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1538042673;s:7:\"checked\";a:1:{s:8:\"storeone\";s:4:\"1.10\";}s:8:\"response\";a:1:{s:8:\"storeone\";a:4:{s:5:\"theme\";s:8:\"storeone\";s:11:\"new_version\";s:4:\"1.11\";s:3:\"url\";s:38:\"https://wordpress.org/themes/storeone/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/theme/storeone.1.11.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(754, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1538042674;s:7:\"checked\";a:7:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:45:\"ccavanue-woocommerce-payment-getway/index.php\";s:3:\"2.3\";s:9:\"hello.php\";s:3:\"1.7\";s:46:\"wonderplugin-carousel/wonderplugincarousel.php\";s:4:\"14.2\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.4.5\";s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";s:5:\"4.1.9\";s:34:\"yith-woocommerce-wishlist/init.php\";s:5:\"2.2.3\";}s:8:\"response\";a:1:{s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:40:\"w.org/plugins/woocommerce-gateway-stripe\";s:4:\"slug\";s:26:\"woocommerce-gateway-stripe\";s:6:\"plugin\";s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";s:11:\"new_version\";s:6:\"4.1.10\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/woocommerce-gateway-stripe/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-stripe.4.1.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/woocommerce-gateway-stripe/assets/icon-256x256.png?rev=1917495\";s:2:\"1x\";s:79:\"https://ps.w.org/woocommerce-gateway-stripe/assets/icon-128x128.png?rev=1917495\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/woocommerce-gateway-stripe/assets/banner-1544x500.png?rev=1917495\";s:2:\"1x\";s:81:\"https://ps.w.org/woocommerce-gateway-stripe/assets/banner-772x250.png?rev=1917495\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"ccavanue-woocommerce-payment-getway/index.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:49:\"w.org/plugins/ccavanue-woocommerce-payment-getway\";s:4:\"slug\";s:35:\"ccavanue-woocommerce-payment-getway\";s:6:\"plugin\";s:45:\"ccavanue-woocommerce-payment-getway/index.php\";s:11:\"new_version\";s:3:\"2.3\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/ccavanue-woocommerce-payment-getway/\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/plugin/ccavanue-woocommerce-payment-getway.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:88:\"https://ps.w.org/ccavanue-woocommerce-payment-getway/assets/icon-128x128.png?rev=1193368\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:90:\"https://ps.w.org/ccavanue-woocommerce-payment-getway/assets/banner-772x250.png?rev=1193352\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.4.5\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.4.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}s:34:\"yith-woocommerce-wishlist/init.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/yith-woocommerce-wishlist\";s:4:\"slug\";s:25:\"yith-woocommerce-wishlist\";s:6:\"plugin\";s:34:\"yith-woocommerce-wishlist/init.php\";s:11:\"new_version\";s:5:\"2.2.3\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/yith-woocommerce-wishlist/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/yith-woocommerce-wishlist.2.2.3.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:78:\"https://ps.w.org/yith-woocommerce-wishlist/assets/icon-128x128.jpg?rev=1461336\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/yith-woocommerce-wishlist/assets/banner-1544x500.jpg?rev=1461336\";s:2:\"1x\";s:80:\"https://ps.w.org/yith-woocommerce-wishlist/assets/banner-772x250.jpg?rev=1461336\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(756, '_transient_timeout_wc_report_sales_by_date', '1538129108', 'no'),
(757, '_transient_wc_report_sales_by_date', 'a:8:{s:32:\"6f3c1348a721bc02d7c9ec917dca035a\";a:1:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"5\";s:9:\"post_date\";s:19:\"2018-09-17 07:33:01\";}}s:32:\"69e6a0b7fab1ca8be6bae94b7aa7c62f\";a:1:{i:0;O:8:\"stdClass\":3:{s:15:\"order_item_name\";s:3:\"sep\";s:15:\"discount_amount\";s:4:\"17.5\";s:9:\"post_date\";s:19:\"2018-09-17 08:29:49\";}}s:32:\"74da34e776d08713498281ff5f6acffa\";a:1:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:2:\"15\";s:9:\"post_date\";s:19:\"2018-09-17 07:33:01\";}}s:32:\"9f38b70e256452ece23a85bb989245db\";N;s:32:\"e4cbc319e2e76702206632d9cd50ccb3\";a:1:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:6:\"1632.5\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-09-17 07:33:01\";}}s:32:\"9bf5724180cce102bf40ee43852b672e\";a:0:{}s:32:\"33fa9a8efa90e5cfb84f7929ea4c383f\";a:0:{}s:32:\"cc514a03ed220a874efc336714439b13\";a:0:{}}', 'no'),
(758, '_transient_timeout_wc_admin_report', '1538129108', 'no'),
(759, '_transient_wc_admin_report', 'a:2:{s:32:\"5cbba3c39a7ca0cdc13e6eb069e22a75\";a:1:{i:0;O:8:\"stdClass\":2:{s:15:\"sparkline_value\";s:6:\"1632.5\";s:9:\"post_date\";s:19:\"2018-09-17 07:33:01\";}}s:32:\"8cb8755de02c5e14ab129a51fb850a8c\";a:1:{i:0;O:8:\"stdClass\":3:{s:10:\"product_id\";s:2:\"10\";s:15:\"sparkline_value\";s:2:\"12\";s:9:\"post_date\";s:19:\"2018-09-17 08:21:08\";}}}', 'no'),
(764, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1538085912', 'no'),
(765, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:0:{}}', 'no'),
(773, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:12:\"post-trashed\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;}', 'yes'),
(775, '_transient_is_multi_author', '0', 'yes'),
(776, '_transient_timeout_wc_term_counts', '1540635311', 'no'),
(777, '_transient_wc_term_counts', 'a:1:{i:17;s:1:\"5\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_postmeta`
--

CREATE TABLE `tbl_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tbl_postmeta`
--

INSERT INTO `tbl_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'home.php'),
(2, 3, '_wp_page_template', 'default'),
(5, 10, '_wc_review_count', '1'),
(6, 10, '_wc_rating_count', 'a:1:{i:5;i:1;}'),
(7, 10, '_wc_average_rating', '5.00'),
(8, 10, '_edit_last', '1'),
(9, 10, '_edit_lock', '1537170164:1'),
(10, 11, '_wp_attached_file', '2018/09/5576-BH_logo1.png'),
(11, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:25:\"2018/09/5576-BH_logo1.png\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"5576-BH_logo1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"5576-BH_logo1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"5576-BH_logo1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:25:\"5576-BH_logo1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"5576-BH_logo1-350x350.png\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"5576-BH_logo1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:25:\"5576-BH_logo1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"5576-BH_logo1-350x350.png\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"5576-BH_logo1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 12, '_wp_attached_file', '2018/09/images.jpeg'),
(13, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:19:\"2018/09/images.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"images-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:19:\"images-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"images-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"images-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(14, 13, '_wp_attached_file', '2018/09/images.png'),
(15, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:18:\"2018/09/images.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"images-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:18:\"images-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"images-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"images-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(16, 14, '_wp_attached_file', '2018/09/images1.jpeg'),
(17, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:20:\"2018/09/images1.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"images1-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"images1-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"images1-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(18, 15, '_wp_attached_file', '2018/09/logo2.png'),
(19, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:17:\"2018/09/logo2.png\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"logo2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"logo2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"logo2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:17:\"logo2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"logo2-350x350.png\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"logo2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"logo2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"logo2-350x350.png\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"logo2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(20, 10, '_thumbnail_id', '11'),
(21, 10, '_sku', 'psku-1'),
(22, 10, '_regular_price', '100'),
(23, 10, '_sale_price', ''),
(24, 10, '_sale_price_dates_from', ''),
(25, 10, '_sale_price_dates_to', ''),
(26, 10, 'total_sales', '12'),
(27, 10, '_tax_status', 'taxable'),
(28, 10, '_tax_class', ''),
(29, 10, '_manage_stock', 'yes'),
(30, 10, '_backorders', 'no'),
(31, 10, '_sold_individually', 'no'),
(32, 10, '_weight', ''),
(33, 10, '_length', ''),
(34, 10, '_width', ''),
(35, 10, '_height', ''),
(36, 10, '_upsell_ids', 'a:0:{}'),
(37, 10, '_crosssell_ids', 'a:0:{}'),
(38, 10, '_purchase_note', ''),
(39, 10, '_default_attributes', 'a:0:{}'),
(40, 10, '_virtual', 'no'),
(41, 10, '_downloadable', 'no'),
(42, 10, '_product_image_gallery', '12,13,14,15'),
(43, 10, '_download_limit', '-1'),
(44, 10, '_download_expiry', '-1'),
(45, 10, '_stock', '99988'),
(46, 10, '_stock_status', 'instock'),
(47, 10, '_product_version', '3.4.5'),
(48, 10, '_price', '100'),
(58, 19, '_wc_review_count', '0'),
(59, 19, '_wc_rating_count', 'a:0:{}'),
(60, 19, '_wc_average_rating', '0'),
(61, 19, '_edit_last', '1'),
(62, 19, '_edit_lock', '1537169171:1'),
(63, 19, '_thumbnail_id', '12'),
(64, 19, '_sku', 'psku-2'),
(65, 19, '_regular_price', '200'),
(66, 19, '_sale_price', '150'),
(67, 19, '_sale_price_dates_from', ''),
(68, 19, '_sale_price_dates_to', ''),
(69, 19, 'total_sales', '3'),
(70, 19, '_tax_status', 'taxable'),
(71, 19, '_tax_class', ''),
(72, 19, '_manage_stock', 'yes'),
(73, 19, '_backorders', 'no'),
(74, 19, '_sold_individually', 'yes'),
(75, 19, '_weight', ''),
(76, 19, '_length', ''),
(77, 19, '_width', ''),
(78, 19, '_height', ''),
(79, 19, '_upsell_ids', 'a:0:{}'),
(80, 19, '_crosssell_ids', 'a:0:{}'),
(81, 19, '_purchase_note', ''),
(82, 19, '_default_attributes', 'a:0:{}'),
(83, 19, '_virtual', 'no'),
(84, 19, '_downloadable', 'no'),
(85, 19, '_product_image_gallery', '15,14,13,12,11'),
(86, 19, '_download_limit', '-1'),
(87, 19, '_download_expiry', '-1'),
(88, 19, '_stock', '1997'),
(89, 19, '_stock_status', 'instock'),
(90, 19, '_product_version', '3.4.5'),
(91, 19, '_price', '150'),
(93, 20, '_order_key', 'wc_order_5b9f58adc9378'),
(94, 20, '_customer_user', '1'),
(95, 20, '_payment_method', 'bacs'),
(96, 20, '_payment_method_title', 'Direct bank transfer'),
(97, 20, '_transaction_id', ''),
(98, 20, '_customer_ip_address', '127.0.0.1'),
(99, 20, '_customer_user_agent', 'mozilla/5.0 (x11; ubuntu; linux x86_64; rv:62.0) gecko/20100101 firefox/62.0'),
(100, 20, '_created_via', 'checkout'),
(101, 20, '_date_completed', '1537171630'),
(102, 20, '_completed_date', '2018-09-17 08:07:10'),
(103, 20, '_date_paid', '1537169659'),
(104, 20, '_paid_date', '2018-09-17 07:34:19'),
(105, 20, '_cart_hash', 'dbe6ed8fec39b869cf08e2cf660f6862'),
(106, 20, '_billing_first_name', 'm'),
(107, 20, '_billing_last_name', 'y'),
(108, 20, '_billing_company', ''),
(109, 20, '_billing_address_1', '141'),
(110, 20, '_billing_address_2', ''),
(111, 20, '_billing_city', 'Gurgaon'),
(112, 20, '_billing_state', 'HR'),
(113, 20, '_billing_postcode', '160017'),
(114, 20, '_billing_country', 'IN'),
(115, 20, '_billing_email', 'monuydvenlte@gmail.com'),
(116, 20, '_billing_phone', '12345678'),
(117, 20, '_shipping_first_name', 'm'),
(118, 20, '_shipping_last_name', 'y'),
(119, 20, '_shipping_company', ''),
(120, 20, '_shipping_address_1', '141'),
(121, 20, '_shipping_address_2', ''),
(122, 20, '_shipping_city', 'Gurgaon'),
(123, 20, '_shipping_state', 'HR'),
(124, 20, '_shipping_postcode', '160017'),
(125, 20, '_shipping_country', 'IN'),
(126, 20, '_order_currency', 'INR'),
(127, 20, '_cart_discount', '0'),
(128, 20, '_cart_discount_tax', '0'),
(129, 20, '_order_shipping', '0'),
(130, 20, '_order_shipping_tax', '0'),
(131, 20, '_order_tax', '0'),
(132, 20, '_order_total', '150.00'),
(133, 20, '_order_version', '3.4.5'),
(134, 20, '_prices_include_tax', 'no'),
(135, 20, '_billing_address_index', 'm y  141  Gurgaon HR 160017 IN monuydvenlte@gmail.com 12345678'),
(136, 20, '_shipping_address_index', 'm y  141  Gurgaon HR 160017 IN'),
(137, 20, '_recorded_sales', 'yes'),
(138, 20, '_recorded_coupon_usage_counts', 'yes'),
(139, 20, '_order_stock_reduced', 'yes'),
(140, 8, '_edit_lock', '1537186385:1'),
(141, 20, '_download_permissions_granted', 'yes'),
(142, 20, '_edit_lock', '1537171490:1'),
(143, 6, '_edit_lock', '1537187054:1'),
(144, 2, '_edit_lock', '1537177939:1'),
(145, 2, '_edit_last', '1'),
(146, 20, '_edit_last', '1'),
(149, 23, '_order_key', 'wc_order_5b9f63f439a6c'),
(150, 23, '_customer_user', '1'),
(151, 23, '_payment_method', 'cod'),
(152, 23, '_payment_method_title', 'Cash on delivery'),
(153, 23, '_transaction_id', ''),
(154, 23, '_customer_ip_address', '127.0.0.1'),
(155, 23, '_customer_user_agent', 'mozilla/5.0 (x11; ubuntu; linux x86_64; rv:62.0) gecko/20100101 firefox/62.0'),
(156, 23, '_created_via', 'checkout'),
(157, 23, '_date_completed', '1537187310'),
(158, 23, '_completed_date', '2018-09-17 12:28:30'),
(159, 23, '_date_paid', '1537187310'),
(160, 23, '_paid_date', '2018-09-17 12:28:30'),
(161, 23, '_cart_hash', 'af5acba12165e06eb6ab2699ae9ec28f'),
(162, 23, '_billing_first_name', 'm'),
(163, 23, '_billing_last_name', 'y'),
(164, 23, '_billing_company', ''),
(165, 23, '_billing_address_1', '141'),
(166, 23, '_billing_address_2', ''),
(167, 23, '_billing_city', 'Gurgaon'),
(168, 23, '_billing_state', 'HR'),
(169, 23, '_billing_postcode', '160017'),
(170, 23, '_billing_country', 'IN'),
(171, 23, '_billing_email', 'monuydvenlte@gmail.com'),
(172, 23, '_billing_phone', '12345678'),
(173, 23, '_shipping_first_name', 'm'),
(174, 23, '_shipping_last_name', 'y'),
(175, 23, '_shipping_company', ''),
(176, 23, '_shipping_address_1', '141'),
(177, 23, '_shipping_address_2', ''),
(178, 23, '_shipping_city', 'Gurgaon'),
(179, 23, '_shipping_state', 'HR'),
(180, 23, '_shipping_postcode', '160017'),
(181, 23, '_shipping_country', 'IN'),
(182, 23, '_order_currency', 'INR'),
(183, 23, '_cart_discount', '0'),
(184, 23, '_cart_discount_tax', '0'),
(185, 23, '_order_shipping', '0.00'),
(186, 23, '_order_shipping_tax', '0'),
(187, 23, '_order_tax', '0'),
(188, 23, '_order_total', '300.00'),
(189, 23, '_order_version', '3.4.5'),
(190, 23, '_prices_include_tax', 'no'),
(191, 23, '_billing_address_index', 'm y  141  Gurgaon HR 160017 IN monuydvenlte@gmail.com 12345678'),
(192, 23, '_shipping_address_index', 'm y  141  Gurgaon HR 160017 IN'),
(193, 23, '_download_permissions_granted', 'yes'),
(194, 23, '_recorded_sales', 'yes'),
(195, 23, '_recorded_coupon_usage_counts', 'yes'),
(196, 23, '_order_stock_reduced', 'yes'),
(198, 25, '_edit_last', '1'),
(199, 25, '_edit_lock', '1537172877:1'),
(200, 25, 'discount_type', 'percent'),
(201, 25, 'coupon_amount', '5'),
(202, 25, 'individual_use', 'yes'),
(203, 25, 'product_ids', ''),
(204, 25, 'exclude_product_ids', ''),
(205, 25, 'usage_limit', '1'),
(206, 25, 'usage_limit_per_user', '1'),
(207, 25, 'limit_usage_to_x_items', '3'),
(208, 25, 'usage_count', '1'),
(209, 25, 'date_expires', '1538265600'),
(210, 25, 'expiry_date', '2018-09-30'),
(211, 25, 'free_shipping', 'yes'),
(212, 25, 'product_categories', 'a:0:{}'),
(213, 25, 'exclude_product_categories', 'a:0:{}'),
(214, 25, 'exclude_sale_items', 'no'),
(215, 25, 'minimum_amount', '200'),
(216, 25, 'maximum_amount', '500'),
(217, 25, 'customer_email', 'a:0:{}'),
(218, 26, '_order_key', 'wc_order_5b9f65fd4457f'),
(219, 26, '_customer_user', '1'),
(220, 26, '_payment_method', 'cheque'),
(221, 26, '_payment_method_title', 'Check payments'),
(222, 26, '_transaction_id', ''),
(223, 26, '_customer_ip_address', '127.0.0.1'),
(224, 26, '_customer_user_agent', 'mozilla/5.0 (x11; ubuntu; linux x86_64; rv:62.0) gecko/20100101 firefox/62.0'),
(225, 26, '_created_via', 'checkout'),
(226, 26, '_date_completed', '1537187315'),
(227, 26, '_completed_date', '2018-09-17 12:28:35'),
(228, 26, '_date_paid', '1537187299'),
(229, 26, '_paid_date', '2018-09-17 12:28:19'),
(230, 26, '_cart_hash', 'b5e7ec58cb39822417f77ac2ee0ec2f7'),
(231, 26, '_billing_first_name', 'm'),
(232, 26, '_billing_last_name', 'y'),
(233, 26, '_billing_company', ''),
(234, 26, '_billing_address_1', '141'),
(235, 26, '_billing_address_2', ''),
(236, 26, '_billing_city', 'Gurgaon'),
(237, 26, '_billing_state', 'HR'),
(238, 26, '_billing_postcode', '160017'),
(239, 26, '_billing_country', 'IN'),
(240, 26, '_billing_email', 'monuydvenlte@gmail.com'),
(241, 26, '_billing_phone', '12345678'),
(242, 26, '_shipping_first_name', 'm'),
(243, 26, '_shipping_last_name', 'y'),
(244, 26, '_shipping_company', ''),
(245, 26, '_shipping_address_1', '141'),
(246, 26, '_shipping_address_2', ''),
(247, 26, '_shipping_city', 'Gurgaon'),
(248, 26, '_shipping_state', 'HR'),
(249, 26, '_shipping_postcode', '160017'),
(250, 26, '_shipping_country', 'IN'),
(251, 26, '_order_currency', 'INR'),
(252, 26, '_cart_discount', '17.5'),
(253, 26, '_cart_discount_tax', '0'),
(254, 26, '_order_shipping', '0.00'),
(255, 26, '_order_shipping_tax', '0'),
(256, 26, '_order_tax', '0'),
(257, 26, '_order_total', '332.50'),
(258, 26, '_order_version', '3.4.5'),
(259, 26, '_prices_include_tax', 'no'),
(260, 26, '_billing_address_index', 'm y  141  Gurgaon HR 160017 IN monuydvenlte@gmail.com 12345678'),
(261, 26, '_shipping_address_index', 'm y  141  Gurgaon HR 160017 IN'),
(262, 26, '_recorded_sales', 'yes'),
(263, 26, '_recorded_coupon_usage_counts', 'yes'),
(264, 25, '_used_by', '1'),
(265, 26, '_order_stock_reduced', 'yes'),
(266, 27, '_edit_last', '1'),
(267, 27, '_edit_lock', '1537176045:1'),
(268, 1, '_edit_lock', '1537178186:1'),
(269, 1, '_wp_trash_meta_status', 'publish'),
(270, 1, '_wp_trash_meta_time', '1537178330'),
(271, 1, '_wp_desired_post_slug', 'hello-world'),
(272, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(273, 30, '_wp_trash_meta_status', 'publish'),
(274, 30, '_wp_trash_meta_time', '1537185309'),
(275, 31, '_wp_trash_meta_status', 'publish'),
(276, 31, '_wp_trash_meta_time', '1537185330'),
(283, 27, '_wp_trash_meta_status', 'publish'),
(284, 27, '_wp_trash_meta_time', '1537185608'),
(285, 27, '_wp_desired_post_slug', 'terms'),
(286, 3, '_edit_lock', '1537185509:1'),
(287, 3, '_edit_last', '1'),
(288, 34, '_edit_last', '1'),
(289, 34, '_edit_lock', '1537186280:1'),
(290, 34, '_wp_page_template', 'templates/fullwidth.php'),
(291, 36, '_menu_item_type', 'post_type'),
(292, 36, '_menu_item_menu_item_parent', '0'),
(293, 36, '_menu_item_object_id', '6'),
(294, 36, '_menu_item_object', 'page'),
(295, 36, '_menu_item_target', ''),
(296, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(297, 36, '_menu_item_xfn', ''),
(298, 36, '_menu_item_url', ''),
(299, 36, '_menu_item_orphaned', '1537185911'),
(300, 37, '_menu_item_type', 'post_type'),
(301, 37, '_menu_item_menu_item_parent', '0'),
(302, 37, '_menu_item_object_id', '34'),
(303, 37, '_menu_item_object', 'page'),
(304, 37, '_menu_item_target', ''),
(305, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(306, 37, '_menu_item_xfn', ''),
(307, 37, '_menu_item_url', ''),
(308, 37, '_menu_item_orphaned', '1537185912'),
(309, 38, '_menu_item_type', 'post_type'),
(310, 38, '_menu_item_menu_item_parent', '0'),
(311, 38, '_menu_item_object_id', '8'),
(312, 38, '_menu_item_object', 'page'),
(313, 38, '_menu_item_target', ''),
(314, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(315, 38, '_menu_item_xfn', ''),
(316, 38, '_menu_item_url', ''),
(317, 38, '_menu_item_orphaned', '1537185912'),
(318, 39, '_menu_item_type', 'post_type'),
(319, 39, '_menu_item_menu_item_parent', '0'),
(320, 39, '_menu_item_object_id', '2'),
(321, 39, '_menu_item_object', 'page'),
(322, 39, '_menu_item_target', ''),
(323, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(324, 39, '_menu_item_xfn', ''),
(325, 39, '_menu_item_url', ''),
(326, 39, '_menu_item_orphaned', '1537185913'),
(327, 40, '_menu_item_type', 'post_type'),
(328, 40, '_menu_item_menu_item_parent', '0'),
(329, 40, '_menu_item_object_id', '9'),
(330, 40, '_menu_item_object', 'page'),
(331, 40, '_menu_item_target', ''),
(332, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(333, 40, '_menu_item_xfn', ''),
(334, 40, '_menu_item_url', ''),
(335, 40, '_menu_item_orphaned', '1537185913'),
(336, 41, '_menu_item_type', 'post_type'),
(337, 41, '_menu_item_menu_item_parent', '0'),
(338, 41, '_menu_item_object_id', '3'),
(339, 41, '_menu_item_object', 'page'),
(340, 41, '_menu_item_target', ''),
(341, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(342, 41, '_menu_item_xfn', ''),
(343, 41, '_menu_item_url', ''),
(344, 41, '_menu_item_orphaned', '1537185914'),
(345, 42, '_menu_item_type', 'post_type'),
(346, 42, '_menu_item_menu_item_parent', '0'),
(347, 42, '_menu_item_object_id', '6'),
(348, 42, '_menu_item_object', 'page'),
(349, 42, '_menu_item_target', ''),
(350, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(351, 42, '_menu_item_xfn', ''),
(352, 42, '_menu_item_url', ''),
(353, 42, '_menu_item_orphaned', '1537185915'),
(354, 43, '_menu_item_type', 'post_type'),
(355, 43, '_menu_item_menu_item_parent', '0'),
(356, 43, '_menu_item_object_id', '6'),
(357, 43, '_menu_item_object', 'page'),
(358, 43, '_menu_item_target', ''),
(359, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(360, 43, '_menu_item_xfn', ''),
(361, 43, '_menu_item_url', ''),
(381, 46, '_menu_item_type', 'post_type'),
(382, 46, '_menu_item_menu_item_parent', '0'),
(383, 46, '_menu_item_object_id', '2'),
(384, 46, '_menu_item_object', 'page'),
(385, 46, '_menu_item_target', ''),
(386, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(387, 46, '_menu_item_xfn', ''),
(388, 46, '_menu_item_url', ''),
(389, 46, '_menu_item_orphaned', '1537185974'),
(408, 49, '_menu_item_type', 'post_type'),
(409, 49, '_menu_item_menu_item_parent', '0'),
(410, 49, '_menu_item_object_id', '6'),
(411, 49, '_menu_item_object', 'page'),
(412, 49, '_menu_item_target', ''),
(413, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(414, 49, '_menu_item_xfn', ''),
(415, 49, '_menu_item_url', ''),
(416, 49, '_menu_item_orphaned', '1537185975'),
(417, 6, '_edit_last', '1'),
(418, 8, '_edit_last', '1'),
(419, 8, '_wp_page_template', 'templates/fullwidth.php'),
(420, 52, '_order_key', 'wc_order_5b9f9a430b2d4'),
(421, 52, '_customer_user', '1'),
(422, 52, '_payment_method', 'cheque'),
(423, 52, '_payment_method_title', 'Check payments'),
(424, 52, '_transaction_id', ''),
(425, 52, '_customer_ip_address', '127.0.0.1'),
(426, 52, '_customer_user_agent', 'mozilla/5.0 (x11; ubuntu; linux x86_64; rv:62.0) gecko/20100101 firefox/62.0'),
(427, 52, '_created_via', 'checkout'),
(428, 52, '_date_completed', '1537187364'),
(429, 52, '_completed_date', '2018-09-17 12:29:24'),
(430, 52, '_date_paid', '1537187304'),
(431, 52, '_paid_date', '2018-09-17 12:28:24'),
(432, 52, '_cart_hash', '4eb00695e88d818f4167f45e298f1840'),
(433, 52, '_billing_first_name', 'm'),
(434, 52, '_billing_last_name', 'y'),
(435, 52, '_billing_company', ''),
(436, 52, '_billing_address_1', '141'),
(437, 52, '_billing_address_2', ''),
(438, 52, '_billing_city', 'Gurgaon'),
(439, 52, '_billing_state', 'HR'),
(440, 52, '_billing_postcode', '160017'),
(441, 52, '_billing_country', 'IN'),
(442, 52, '_billing_email', 'monuydvenlte@gmail.com'),
(443, 52, '_billing_phone', '12345678'),
(444, 52, '_shipping_first_name', 'm'),
(445, 52, '_shipping_last_name', 'y'),
(446, 52, '_shipping_company', ''),
(447, 52, '_shipping_address_1', '141'),
(448, 52, '_shipping_address_2', ''),
(449, 52, '_shipping_city', 'Gurgaon'),
(450, 52, '_shipping_state', 'HR'),
(451, 52, '_shipping_postcode', '160017'),
(452, 52, '_shipping_country', 'IN'),
(453, 52, '_order_currency', 'INR'),
(454, 52, '_cart_discount', '0'),
(455, 52, '_cart_discount_tax', '0'),
(456, 52, '_order_shipping', '0.00'),
(457, 52, '_order_shipping_tax', '0'),
(458, 52, '_order_tax', '0'),
(459, 52, '_order_total', '700.00'),
(460, 52, '_order_version', '3.4.5'),
(461, 52, '_prices_include_tax', 'no'),
(462, 52, '_billing_address_index', 'm y  141  Gurgaon HR 160017 IN monuydvenlte@gmail.com 12345678'),
(463, 52, '_shipping_address_index', 'm y  141  Gurgaon HR 160017 IN'),
(464, 52, '_recorded_sales', 'yes'),
(465, 52, '_recorded_coupon_usage_counts', 'yes'),
(466, 52, '_order_stock_reduced', 'yes'),
(467, 53, '_wc_review_count', '0'),
(468, 53, '_wc_rating_count', 'a:0:{}'),
(469, 53, '_wc_average_rating', '0'),
(470, 53, '_edit_last', '1'),
(471, 53, '_edit_lock', '1537186827:1'),
(472, 53, '_thumbnail_id', '14'),
(473, 53, '_sku', 'psku-3'),
(474, 53, '_regular_price', '80'),
(475, 53, '_sale_price', '50'),
(476, 53, '_sale_price_dates_from', ''),
(477, 53, '_sale_price_dates_to', ''),
(478, 53, 'total_sales', '0'),
(479, 53, '_tax_status', 'taxable'),
(480, 53, '_tax_class', ''),
(481, 53, '_manage_stock', 'yes'),
(482, 53, '_backorders', 'no'),
(483, 53, '_sold_individually', 'no'),
(484, 53, '_weight', ''),
(485, 53, '_length', ''),
(486, 53, '_width', ''),
(487, 53, '_height', ''),
(488, 53, '_upsell_ids', 'a:0:{}'),
(489, 53, '_crosssell_ids', 'a:0:{}'),
(490, 53, '_purchase_note', ''),
(491, 53, '_default_attributes', 'a:0:{}'),
(492, 53, '_virtual', 'no'),
(493, 53, '_downloadable', 'no'),
(494, 53, '_product_image_gallery', ''),
(495, 53, '_download_limit', '-1'),
(496, 53, '_download_expiry', '-1'),
(497, 53, '_stock', '888'),
(498, 53, '_stock_status', 'instock'),
(499, 53, '_product_version', '3.4.5'),
(500, 53, '_price', '50'),
(501, 54, '_sku', 'psku-4'),
(502, 54, '_regular_price', '80'),
(503, 54, '_sale_price', '50'),
(504, 54, '_sale_price_dates_from', ''),
(505, 54, '_sale_price_dates_to', ''),
(506, 54, 'total_sales', '0'),
(507, 54, '_tax_status', 'taxable'),
(508, 54, '_tax_class', ''),
(509, 54, '_manage_stock', 'yes'),
(510, 54, '_backorders', 'no'),
(511, 54, '_sold_individually', 'no'),
(512, 54, '_weight', ''),
(513, 54, '_length', ''),
(514, 54, '_width', ''),
(515, 54, '_height', ''),
(516, 54, '_upsell_ids', 'a:0:{}'),
(517, 54, '_crosssell_ids', 'a:0:{}'),
(518, 54, '_purchase_note', ''),
(519, 54, '_default_attributes', 'a:0:{}'),
(520, 54, '_virtual', 'no'),
(521, 54, '_downloadable', 'no'),
(522, 54, '_product_image_gallery', '15'),
(523, 54, '_download_limit', '-1'),
(524, 54, '_download_expiry', '-1'),
(526, 54, '_stock', '888'),
(527, 54, '_stock_status', 'instock'),
(528, 54, '_wc_average_rating', '0'),
(529, 54, '_wc_rating_count', 'a:0:{}'),
(530, 54, '_wc_review_count', '0'),
(531, 54, '_downloadable_files', 'a:0:{}'),
(532, 54, '_product_attributes', 'a:0:{}'),
(533, 54, '_product_version', '3.4.5'),
(534, 54, '_price', '50'),
(535, 54, '_edit_lock', '1538048648:1'),
(536, 54, '_edit_last', '1'),
(537, 54, '_thumbnail_id', '15'),
(538, 55, '_sku', 'psku-5'),
(539, 55, '_regular_price', '100'),
(540, 55, '_sale_price', '80'),
(541, 55, '_sale_price_dates_from', ''),
(542, 55, '_sale_price_dates_to', ''),
(543, 55, 'total_sales', '0'),
(544, 55, '_tax_status', 'taxable'),
(545, 55, '_tax_class', ''),
(546, 55, '_manage_stock', 'yes'),
(547, 55, '_backorders', 'no'),
(548, 55, '_sold_individually', 'no'),
(549, 55, '_weight', ''),
(550, 55, '_length', ''),
(551, 55, '_width', ''),
(552, 55, '_height', ''),
(553, 55, '_upsell_ids', 'a:0:{}'),
(554, 55, '_crosssell_ids', 'a:0:{}'),
(555, 55, '_purchase_note', ''),
(556, 55, '_default_attributes', 'a:0:{}'),
(557, 55, '_virtual', 'no'),
(558, 55, '_downloadable', 'no'),
(559, 55, '_product_image_gallery', '12,13,14,15'),
(560, 55, '_download_limit', '-1'),
(561, 55, '_download_expiry', '-1'),
(562, 55, '_thumbnail_id', '13'),
(563, 55, '_stock', '99988'),
(564, 55, '_stock_status', 'instock'),
(565, 55, '_wc_average_rating', '0'),
(566, 55, '_wc_rating_count', 'a:0:{}'),
(567, 55, '_wc_review_count', '0'),
(568, 55, '_downloadable_files', 'a:0:{}'),
(569, 55, '_product_attributes', 'a:0:{}'),
(570, 55, '_product_version', '3.4.5'),
(571, 55, '_price', '80'),
(572, 55, '_edit_lock', '1538042734:1'),
(573, 55, '_edit_last', '1'),
(574, 26, '_download_permissions_granted', 'yes'),
(575, 52, '_download_permissions_granted', 'yes'),
(576, 57, '_wp_trash_meta_status', 'publish'),
(577, 57, '_wp_trash_meta_time', '1537187588'),
(578, 58, '_order_key', 'wc_order_5b9fae5b64534'),
(579, 58, '_customer_user', '1'),
(580, 58, '_payment_method', 'stripe'),
(581, 58, '_payment_method_title', 'Credit Card'),
(582, 58, '_transaction_id', 'ch_1DBMw1FXxflcsvs7sXF89Yai'),
(583, 58, '_customer_ip_address', '127.0.0.1'),
(584, 58, '_customer_user_agent', 'mozilla/5.0 (x11; ubuntu; linux x86_64; rv:62.0) gecko/20100101 firefox/62.0'),
(585, 58, '_created_via', 'checkout'),
(586, 58, '_date_completed', ''),
(587, 58, '_completed_date', ''),
(588, 58, '_date_paid', ''),
(589, 58, '_paid_date', ''),
(590, 58, '_cart_hash', 'dbe6ed8fec39b869cf08e2cf660f6862'),
(591, 58, '_billing_first_name', 'm'),
(592, 58, '_billing_last_name', 'y'),
(593, 58, '_billing_company', ''),
(594, 58, '_billing_address_1', '141'),
(595, 58, '_billing_address_2', ''),
(596, 58, '_billing_city', 'Gurgaon'),
(597, 58, '_billing_state', 'HR'),
(598, 58, '_billing_postcode', '160017'),
(599, 58, '_billing_country', 'IN'),
(600, 58, '_billing_email', 'monuydvenlte@gmail.com'),
(601, 58, '_billing_phone', '12345678'),
(602, 58, '_shipping_first_name', 'm'),
(603, 58, '_shipping_last_name', 'y'),
(604, 58, '_shipping_company', ''),
(605, 58, '_shipping_address_1', '141'),
(606, 58, '_shipping_address_2', ''),
(607, 58, '_shipping_city', 'Gurgaon'),
(608, 58, '_shipping_state', 'HR'),
(609, 58, '_shipping_postcode', '160017'),
(610, 58, '_shipping_country', 'IN'),
(611, 58, '_order_currency', 'INR'),
(612, 58, '_cart_discount', '0'),
(613, 58, '_cart_discount_tax', '0'),
(614, 58, '_order_shipping', '0.00'),
(615, 58, '_order_shipping_tax', '0'),
(616, 58, '_order_tax', '0'),
(617, 58, '_order_total', '150.00'),
(618, 58, '_order_version', '3.4.5'),
(619, 58, '_prices_include_tax', 'no'),
(620, 58, '_billing_address_index', 'm y  141  Gurgaon HR 160017 IN monuydvenlte@gmail.com 12345678'),
(621, 58, '_shipping_address_index', 'm y  141  Gurgaon HR 160017 IN'),
(622, 58, '_stripe_source_id', 'src_1DBMvuFXxflcsvs7HtWe6frx'),
(623, 58, '_order_stock_reduced', 'yes'),
(624, 58, '_stripe_charge_captured', 'no'),
(625, 58, '_recorded_sales', 'yes'),
(626, 58, '_recorded_coupon_usage_counts', 'yes'),
(627, 59, '_order_key', 'wc_order_5b9fba1b4e7fb'),
(628, 59, '_customer_user', '1'),
(629, 59, '_payment_method', 'ccavenue'),
(630, 59, '_payment_method_title', 'CCAvenue'),
(631, 59, '_transaction_id', ''),
(632, 59, '_customer_ip_address', '127.0.0.1'),
(633, 59, '_customer_user_agent', 'mozilla/5.0 (x11; ubuntu; linux x86_64; rv:62.0) gecko/20100101 firefox/62.0'),
(634, 59, '_created_via', 'checkout'),
(635, 59, '_date_completed', ''),
(636, 59, '_completed_date', ''),
(637, 59, '_date_paid', ''),
(638, 59, '_paid_date', ''),
(639, 59, '_cart_hash', 'da0a5b3269c781a4956a872184e487f3'),
(640, 59, '_billing_first_name', 'm'),
(641, 59, '_billing_last_name', 'y'),
(642, 59, '_billing_company', ''),
(643, 59, '_billing_address_1', '141'),
(644, 59, '_billing_address_2', ''),
(645, 59, '_billing_city', 'Gurgaon'),
(646, 59, '_billing_state', 'HR'),
(647, 59, '_billing_postcode', '160017'),
(648, 59, '_billing_country', 'IN'),
(649, 59, '_billing_email', 'monuydvenlte@gmail.com'),
(650, 59, '_billing_phone', '12345678'),
(651, 59, '_shipping_first_name', 'm'),
(652, 59, '_shipping_last_name', 'y'),
(653, 59, '_shipping_company', ''),
(654, 59, '_shipping_address_1', '141'),
(655, 59, '_shipping_address_2', ''),
(656, 59, '_shipping_city', 'Gurgaon'),
(657, 59, '_shipping_state', 'HR'),
(658, 59, '_shipping_postcode', '160017'),
(659, 59, '_shipping_country', 'IN'),
(660, 59, '_order_currency', 'INR'),
(661, 59, '_cart_discount', '0'),
(662, 59, '_cart_discount_tax', '0'),
(663, 59, '_order_shipping', '0.00'),
(664, 59, '_order_shipping_tax', '0'),
(665, 59, '_order_tax', '0'),
(666, 59, '_order_total', '100.00'),
(667, 59, '_order_version', '3.4.5'),
(668, 59, '_prices_include_tax', 'no'),
(669, 59, '_billing_address_index', 'm y  141  Gurgaon HR 160017 IN monuydvenlte@gmail.com 12345678'),
(670, 59, '_shipping_address_index', 'm y  141  Gurgaon HR 160017 IN'),
(671, 59, '_post_data', 'a:27:{s:18:\"billing_first_name\";s:1:\"m\";s:17:\"billing_last_name\";s:1:\"y\";s:15:\"billing_company\";s:0:\"\";s:15:\"billing_country\";s:2:\"IN\";s:17:\"billing_address_1\";s:3:\"141\";s:17:\"billing_address_2\";s:0:\"\";s:12:\"billing_city\";s:7:\"Gurgaon\";s:13:\"billing_state\";s:2:\"HR\";s:16:\"billing_postcode\";s:6:\"160017\";s:13:\"billing_phone\";s:8:\"12345678\";s:13:\"billing_email\";s:22:\"monuydvenlte@gmail.com\";s:19:\"shipping_first_name\";s:1:\"m\";s:18:\"shipping_last_name\";s:1:\"y\";s:16:\"shipping_company\";s:0:\"\";s:16:\"shipping_country\";s:2:\"IN\";s:18:\"shipping_address_1\";s:3:\"141\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:7:\"Gurgaon\";s:14:\"shipping_state\";s:2:\"HR\";s:17:\"shipping_postcode\";s:6:\"160017\";s:14:\"order_comments\";s:0:\"\";s:15:\"shipping_method\";a:1:{i:0;s:15:\"free_shipping:1\";}s:14:\"payment_method\";s:8:\"ccavenue\";s:5:\"terms\";s:2:\"on\";s:11:\"terms-field\";s:1:\"1\";s:34:\"woocommerce-process-checkout-nonce\";s:10:\"fcd221ca92\";s:16:\"_wp_http_referer\";s:39:\"/wordpress/?wc-ajax=update_order_review\";}'),
(672, 55, 'total_discount_in_percentage', '20% off'),
(673, 55, 'vendor_name', 'Amazon'),
(674, 61, '_menu_item_type', 'custom'),
(675, 61, '_menu_item_menu_item_parent', '0'),
(676, 61, '_menu_item_object_id', '61'),
(677, 61, '_menu_item_object', 'custom'),
(678, 61, '_menu_item_target', ''),
(679, 61, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(680, 61, '_menu_item_xfn', ''),
(681, 61, '_menu_item_url', ''),
(683, 62, '_menu_item_type', 'taxonomy'),
(684, 62, '_menu_item_menu_item_parent', '61'),
(685, 62, '_menu_item_object_id', '17'),
(686, 62, '_menu_item_object', 'product_cat'),
(687, 62, '_menu_item_target', ''),
(688, 62, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(689, 62, '_menu_item_xfn', ''),
(690, 62, '_menu_item_url', ''),
(692, 63, '_menu_item_type', 'custom'),
(693, 63, '_menu_item_menu_item_parent', '0'),
(694, 63, '_menu_item_object_id', '63'),
(695, 63, '_menu_item_object', 'custom'),
(696, 63, '_menu_item_target', ''),
(697, 63, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(698, 63, '_menu_item_xfn', ''),
(699, 63, '_menu_item_url', ''),
(701, 64, '_menu_item_type', 'custom'),
(702, 64, '_menu_item_menu_item_parent', '0'),
(703, 64, '_menu_item_object_id', '64'),
(704, 64, '_menu_item_object', 'custom'),
(705, 64, '_menu_item_target', ''),
(706, 64, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(707, 64, '_menu_item_xfn', ''),
(708, 64, '_menu_item_url', ''),
(710, 65, '_wp_attached_file', '2018/09/gazabkideal_logo.png'),
(711, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:692;s:6:\"height\";i:159;s:4:\"file\";s:28:\"2018/09/gazabkideal_logo.png\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"gazabkideal_logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"gazabkideal_logo-300x69.png\";s:5:\"width\";i:300;s:6:\"height\";i:69;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"storeone-thumb\";a:4:{s:4:\"file\";s:28:\"gazabkideal_logo-340x159.png\";s:5:\"width\";i:340;s:6:\"height\";i:159;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"gazabkideal_logo-300x159.png\";s:5:\"width\";i:300;s:6:\"height\";i:159;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"gazabkideal_logo-600x138.png\";s:5:\"width\";i:600;s:6:\"height\";i:138;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"gazabkideal_logo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"gazabkideal_logo-300x159.png\";s:5:\"width\";i:300;s:6:\"height\";i:159;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"gazabkideal_logo-600x138.png\";s:5:\"width\";i:600;s:6:\"height\";i:138;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"gazabkideal_logo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(712, 66, '_wp_trash_meta_status', 'publish'),
(713, 66, '_wp_trash_meta_time', '1537943327'),
(714, 55, 'custom_url', 'http://fkrt.it/Xn9i22NNNN'),
(715, 54, 'custom_url', 'http://amzn.to/2pbujX5');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_posts`
--

CREATE TABLE `tbl_posts` (
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
-- Dumping data for table `tbl_posts`
--

INSERT INTO `tbl_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-09-17 06:42:05', '2018-09-17 06:42:05', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2018-09-17 09:58:50', '2018-09-17 09:58:50', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2018-09-17 06:42:05', '2018-09-17 06:42:05', '', 'Home', '', 'publish', 'closed', 'open', '', 'home', '', '', '2018-09-17 07:58:12', '2018-09-17 07:58:12', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-09-17 06:42:05', '2018-09-17 06:42:05', '<h2>Who we are</h2>\r\nOur website address is: http://localhost/wordpress.\r\n<h2>What personal data we collect and why we collect it</h2>\r\n<h3>Comments</h3>\r\nWhen visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.\r\n\r\nAn anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.\r\n<h3>Media</h3>\r\nIf you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.\r\n<h3>Contact forms</h3>\r\n<h3>Cookies</h3>\r\nIf you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.\r\n\r\nIf you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.\r\n\r\nWhen you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.\r\n\r\nIf you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.\r\n<h3>Embedded content from other websites</h3>\r\nArticles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.\r\n\r\nThese websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.\r\n<h3>Analytics</h3>\r\n<h2>Who we share your data with</h2>\r\n<h2>How long we retain your data</h2>\r\nIf you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.\r\n\r\nFor users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.\r\n<h2>What rights you have over your data</h2>\r\nIf you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.\r\n<h2>Where we send your data</h2>\r\nVisitor comments may be checked through an automated spam detection service.\r\n<h2>Your contact information</h2>\r\n<h2>Additional information</h2>\r\n<h3>How we protect your data</h3>\r\n<h3>What data breach procedures we have in place</h3>\r\n<h3>What third parties we receive data from</h3>\r\n<h3>What automated decision making and/or profiling we do with user data</h3>\r\n<h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'publish', 'closed', 'open', '', 'privacy-policy', '', '', '2018-09-17 12:00:48', '2018-09-17 12:00:48', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(6, 1, '2018-09-17 07:06:02', '2018-09-17 07:06:02', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-09-17 12:26:35', '2018-09-17 12:26:35', '', 0, 'http://localhost/wordpress/shop/', 0, 'page', '', 0),
(8, 1, '2018-09-17 07:06:02', '2018-09-17 07:06:02', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2018-09-17 12:12:02', '2018-09-17 12:12:02', '', 0, 'http://localhost/wordpress/checkout/', 0, 'page', '', 0),
(9, 1, '2018-09-17 07:06:02', '2018-09-17 07:06:02', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2018-09-17 07:06:02', '2018-09-17 07:06:02', '', 0, 'http://localhost/wordpress/my-account/', 0, 'page', '', 0),
(10, 1, '2018-09-17 07:16:54', '2018-09-17 07:16:54', '<em>Lorem ipsum is latin, slightly jumbled, the remnants of a passage from Cicero’s ‘De finibus bonorum et malorum’ 1.10.32, which begins ‘Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit…’ [There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain.]. [de Finibus Bonorum et Malorum, written in 45 BC, is a treatise on the theory of ethics very popular in the Renaisance.]</em>', 'Product 1', '<em>Lorem ipsum is latin, slightly jumbled, the remnants of a passage from Cicero’s ‘De finibus bonorum et malorum’ 1.10.32,</em>', 'publish', 'open', 'closed', '', 'product-1', '', '', '2018-09-17 12:12:55', '2018-09-17 12:12:55', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=10', 0, 'product', '', 1),
(11, 1, '2018-09-17 07:16:16', '2018-09-17 07:16:16', '', '5576-BH_logo1', '', 'inherit', 'open', 'closed', '', '5576-bh_logo1', '', '', '2018-09-17 07:16:16', '2018-09-17 07:16:16', '', 10, 'http://localhost/wordpress/wp-content/uploads/2018/09/5576-BH_logo1.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2018-09-17 07:16:42', '2018-09-17 07:16:42', '', 'images', '', 'inherit', 'open', 'closed', '', 'images', '', '', '2018-09-17 07:16:42', '2018-09-17 07:16:42', '', 10, 'http://localhost/wordpress/wp-content/uploads/2018/09/images.jpeg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2018-09-17 07:16:42', '2018-09-17 07:16:42', '', 'images', '', 'inherit', 'open', 'closed', '', 'images-2', '', '', '2018-09-17 07:16:42', '2018-09-17 07:16:42', '', 10, 'http://localhost/wordpress/wp-content/uploads/2018/09/images.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2018-09-17 07:16:43', '2018-09-17 07:16:43', '', 'images1', '', 'inherit', 'open', 'closed', '', 'images1', '', '', '2018-09-17 07:16:43', '2018-09-17 07:16:43', '', 10, 'http://localhost/wordpress/wp-content/uploads/2018/09/images1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2018-09-17 07:16:43', '2018-09-17 07:16:43', '', 'logo2', '', 'inherit', 'open', 'closed', '', 'logo2', '', '', '2018-09-17 07:16:43', '2018-09-17 07:16:43', '', 10, 'http://localhost/wordpress/wp-content/uploads/2018/09/logo2.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2018-09-17 07:22:53', '2018-09-17 07:22:53', '<em>Lorem ipsum is latin, slightly jumbled, the remnants of a passage from Cicero’s ‘De finibus bonorum et malorum’ 1.10.32, which begins ‘Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit…’ [There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain.]. [de Finibus Bonorum et Malorum, written in 45 BC, is a treatise on the theory of ethics very popular in the Renaisance.]\r\n</em>', 'Product 2', '<em>[There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain.]. [de Finibus Bonorum et Malorum, written in 45 BC, is a treatise on the theory of ethics very popular in the Renaisance.]</em>', 'publish', 'open', 'closed', '', 'product-2', '', '', '2018-09-17 13:38:42', '2018-09-17 13:38:42', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=19', 0, 'product', '', 0),
(20, 1, '2018-09-17 07:33:01', '2018-09-17 07:33:01', '', 'Order &ndash; September 17, 2018 @ 07:33 AM', '', 'wc-completed', 'closed', 'closed', 'order_5b9f58adc93d5', 'order-sep-17-2018-0733-am', '', '', '2018-09-17 08:07:10', '2018-09-17 08:07:10', '', 0, 'http://localhost/wordpress/?post_type=shop_order&#038;p=20', 0, 'shop_order', '', 4),
(21, 1, '2018-09-17 07:58:12', '2018-09-17 07:58:12', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-09-17 07:58:12', '2018-09-17 07:58:12', '', 2, 'http://localhost/wordpress/2018/09/17/2-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-09-17 08:21:08', '2018-09-17 08:21:08', '', 'Order &ndash; September 17, 2018 @ 08:21 AM', '', 'wc-completed', 'open', 'closed', 'order_5b9f63f439b25', 'order-sep-17-2018-0821-am', '', '', '2018-09-17 12:28:30', '2018-09-17 12:28:30', '', 0, 'http://localhost/wordpress/?post_type=shop_order&#038;p=23', 0, 'shop_order', '', 3),
(25, 1, '2018-09-17 08:28:56', '2018-09-17 08:28:56', '', 'Sep', '', 'publish', 'closed', 'closed', '', 'sep', '', '', '2018-09-17 08:28:56', '2018-09-17 08:28:56', '', 0, 'http://localhost/wordpress/?post_type=shop_coupon&#038;p=25', 0, 'shop_coupon', '', 0),
(26, 1, '2018-09-17 08:29:49', '2018-09-17 08:29:49', '', 'Order &ndash; September 17, 2018 @ 08:29 AM', '', 'wc-completed', 'open', 'closed', 'order_5b9f65fd445f2', 'order-sep-17-2018-0829-am', '', '', '2018-09-17 12:28:35', '2018-09-17 12:28:35', '', 0, 'http://localhost/wordpress/?post_type=shop_order&#038;p=26', 0, 'shop_order', '', 5),
(27, 1, '2018-09-17 09:22:36', '2018-09-17 09:22:36', 'This section lets you select a page for your privacy policy, and display privacy policy snippets on your account and checkout pages shown to customers. ', 'Terms', '', 'trash', 'closed', 'closed', '', 'terms__trashed', '', '', '2018-09-17 12:00:08', '2018-09-17 12:00:08', '', 0, 'http://localhost/wordpress/?page_id=27', 0, 'page', '', 0),
(28, 1, '2018-09-17 09:22:36', '2018-09-17 09:22:36', 'This section lets you select a page for your privacy policy, and display privacy policy snippets on your account and checkout pages shown to customers. ', 'Terms', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-09-17 09:22:36', '2018-09-17 09:22:36', '', 27, 'http://localhost/wordpress/2018/09/17/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-09-17 09:58:50', '2018-09-17 09:58:50', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-09-17 09:58:50', '2018-09-17 09:58:50', '', 1, 'http://localhost/wordpress/2018/09/17/1-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-09-17 11:55:08', '2018-09-17 11:55:08', '{\n    \"mobile-shop::storeone_social_link_facebook\": {\n        \"value\": \"facebook.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-17 11:55:08\"\n    },\n    \"mobile-shop::storeone_social_link_google\": {\n        \"value\": \"google.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-17 11:55:08\"\n    },\n    \"mobile-shop::storeone_social_link_youtube\": {\n        \"value\": \"youtube.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-17 11:55:08\"\n    },\n    \"mobile-shop::storeone_social_link_twitter\": {\n        \"value\": \"twitter.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-17 11:55:08\"\n    },\n    \"mobile-shop::storeone_social_link_instagram\": {\n        \"value\": \"instagram.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-17 11:55:08\"\n    },\n    \"mobile-shop::storeone_social_link_linkedin\": {\n        \"value\": \"linkedin\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-17 11:55:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '045e168a-3500-4dd9-b4b1-03fefdecff38', '', '', '2018-09-17 11:55:08', '2018-09-17 11:55:08', '', 0, 'http://localhost/wordpress/2018/09/17/045e168a-3500-4dd9-b4b1-03fefdecff38/', 0, 'customize_changeset', '', 0),
(31, 1, '2018-09-17 11:55:29', '2018-09-17 11:55:29', '{\n    \"mobile-shop::storeone_top_email\": {\n        \"value\": \"@\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-17 11:55:29\"\n    },\n    \"mobile-shop::storeone_top_phone\": {\n        \"value\": \"111111111\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-17 11:55:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bb3b33ab-aafd-4732-a608-51543c6132af', '', '', '2018-09-17 11:55:29', '2018-09-17 11:55:29', '', 0, 'http://localhost/wordpress/2018/09/17/bb3b33ab-aafd-4732-a608-51543c6132af/', 0, 'customize_changeset', '', 0),
(32, 1, '2018-09-17 11:59:46', '2018-09-17 11:59:46', '<h2>Who we are</h2><p>Our website address is: http://localhost/wordpress.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-09-17 11:59:46', '2018-09-17 11:59:46', '', 3, 'http://localhost/wordpress/2018/09/17/3-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-09-17 12:00:48', '2018-09-17 12:00:48', '<h2>Who we are</h2>\r\nOur website address is: http://localhost/wordpress.\r\n<h2>What personal data we collect and why we collect it</h2>\r\n<h3>Comments</h3>\r\nWhen visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.\r\n\r\nAn anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.\r\n<h3>Media</h3>\r\nIf you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.\r\n<h3>Contact forms</h3>\r\n<h3>Cookies</h3>\r\nIf you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.\r\n\r\nIf you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.\r\n\r\nWhen you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.\r\n\r\nIf you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.\r\n<h3>Embedded content from other websites</h3>\r\nArticles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.\r\n\r\nThese websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.\r\n<h3>Analytics</h3>\r\n<h2>Who we share your data with</h2>\r\n<h2>How long we retain your data</h2>\r\nIf you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.\r\n\r\nFor users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.\r\n<h2>What rights you have over your data</h2>\r\nIf you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.\r\n<h2>Where we send your data</h2>\r\nVisitor comments may be checked through an automated spam detection service.\r\n<h2>Your contact information</h2>\r\n<h2>Additional information</h2>\r\n<h3>How we protect your data</h3>\r\n<h3>What data breach procedures we have in place</h3>\r\n<h3>What third parties we receive data from</h3>\r\n<h3>What automated decision making and/or profiling we do with user data</h3>\r\n<h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-09-17 12:00:48', '2018-09-17 12:00:48', '', 3, 'http://localhost/wordpress/2018/09/17/3-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-09-17 12:01:30', '2018-09-17 12:01:30', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2018-09-17 12:11:30', '2018-09-17 12:11:30', '', 0, 'http://localhost/wordpress/?page_id=34', 0, 'page', '', 0),
(35, 1, '2018-09-17 12:01:30', '2018-09-17 12:01:30', '[woocommerce_cart]', 'Cart', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2018-09-17 12:01:30', '2018-09-17 12:01:30', '', 34, 'http://localhost/wordpress/2018/09/17/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-09-17 12:05:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-09-17 12:05:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2018-09-17 12:05:11', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-09-17 12:05:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2018-09-17 12:05:12', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-09-17 12:05:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2018-09-17 12:05:12', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-09-17 12:05:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2018-09-17 12:05:13', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-09-17 12:05:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=40', 1, 'nav_menu_item', '', 0),
(41, 1, '2018-09-17 12:05:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-09-17 12:05:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2018-09-17 12:05:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-09-17 12:05:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=42', 1, 'nav_menu_item', '', 0),
(43, 1, '2018-09-17 12:06:31', '2018-09-17 12:06:31', '', 'Home', '', 'publish', 'closed', 'closed', '', '43', '', '', '2018-09-26 06:16:08', '2018-09-26 06:16:08', '', 0, 'http://localhost/wordpress/?p=43', 1, 'nav_menu_item', '', 0),
(46, 1, '2018-09-17 12:06:13', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-09-17 12:06:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=46', 1, 'nav_menu_item', '', 0),
(49, 1, '2018-09-17 12:06:15', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-09-17 12:06:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=49', 1, 'nav_menu_item', '', 0),
(50, 1, '2018-09-17 12:10:04', '2018-09-17 12:10:04', '', 'Products', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-09-17 12:10:04', '2018-09-17 12:10:04', '', 6, 'http://localhost/wordpress/2018/09/17/6-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-09-17 12:12:02', '2018-09-17 12:12:02', '[woocommerce_checkout]', 'Checkout', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-09-17 12:12:02', '2018-09-17 12:12:02', '', 8, 'http://localhost/wordpress/2018/09/17/8-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-09-17 12:12:51', '2018-09-17 12:12:51', '', 'Order &ndash; September 17, 2018 @ 12:12 PM', '', 'wc-completed', 'open', 'closed', 'order_5b9f9a430b371', 'order-sep-17-2018-1212-pm', '', '', '2018-09-17 12:29:24', '2018-09-17 12:29:24', '', 0, 'http://localhost/wordpress/?post_type=shop_order&#038;p=52', 0, 'shop_order', '', 4),
(53, 1, '2018-09-17 12:22:45', '2018-09-17 12:22:45', 'Lorem ipsum is latin, slightly jumbled, the remnants of a passage from Cicero’s ‘De finibus bonorum et malorum’ 1.10.32, which begins ‘Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit…’ [There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain.]. [de Finibus Bonorum et Malorum, written in 45 BC, is a treatise on the theory of ethics very popular in the Renaisance.]\r\n\r\nLorem ipsum is latin, slightly jumbled, the remnants of a passage from Cicero’s ‘De finibus bonorum et malorum’ 1.10.32, which begins ‘Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit…’ [There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain.]. [de Finibus Bonorum et Malorum, written in 45 BC, is a treatise on the theory of ethics very popular in the Renaisance.]', 'Product 3', 'Lorem ipsum is latin, slightly jumbled, the remnants of a passage from Cicero’s ‘De finibus bonorum et malorum’ 1.10.32, ', 'publish', 'open', 'closed', '', 'product-3', '', '', '2018-09-17 12:22:48', '2018-09-17 12:22:48', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=53', 0, 'product', '', 0),
(54, 1, '2018-09-17 12:22:56', '2018-09-17 12:22:56', ' <h1>How To Get This Deal??</h1>\r\n\r\n              <ul class=\"discrip_ul_list\">\r\n                   <li> Click Here For Offer Page</li>\r\n                   <li>   Add Product To Your Cart</li>\r\n                   <li>   Login/Register</li>\r\n                   <li>   Choose Shipping Address</li>\r\n                   <li>    Pay Using Any Suitable Method.</li>\r\n                   \r\n              </ul>\r\n\r\n\r\n\r\n              <p>Groupbaz Is Running An AMazing Offer Where You Can Grab Colorful LED Light-up Mini Bluetooth Speaker at Just Rs.99 After Rs. 100 gazabkideal Cashback. Hurry !! Grab Now !!</p>\r\n\r\n              <p>You can withdraw your cashback amount in the form of PayTM once it is confirmed by the Retailer. For any query, please contact us at support@gazabkideal.com</p>\r\n', 'Product 4', 'Lorem ipsum is latin, slightly jumbled, the remnants of a passage from Cicero’s ‘De finibus bonorum et malorum’ 1.10.32, ', 'publish', 'open', 'closed', '', 'product-4', '', '', '2018-09-27 10:12:08', '2018-09-27 10:12:08', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=54', 0, 'product', '', 0),
(55, 1, '2018-09-17 12:24:13', '2018-09-17 12:24:13', '<em>Lorem ipsum is latin, slightly jumbled, the remnants of a passage from Cicero’s ‘De finibus bonorum et malorum’ 1.10.32, which begins ‘Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit…’ [There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain.]. [de Finibus Bonorum et Malorum, written in 45 BC, is a treatise on the theory of ethics very popular in the Renaisance.]</em>', 'Product 5', '<em>Lorem ipsum is latin, slightly jumbled, the remnants of a passage from Cicero’s ‘De finibus bonorum et malorum’ 1.10.32,</em>', 'publish', 'open', 'closed', '', 'product-5', '', '', '2018-09-27 10:07:55', '2018-09-27 10:07:55', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=55', 0, 'product', '', 0),
(56, 1, '2018-09-17 12:26:35', '2018-09-17 12:26:35', '', 'Shop', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-09-17 12:26:35', '2018-09-17 12:26:35', '', 6, 'http://localhost/wordpress/2018/09/17/6-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-09-17 12:33:07', '2018-09-17 12:33:07', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-17 12:33:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2086a4ac-d628-4495-9a58-df61a9731bd2', '', '', '2018-09-17 12:33:07', '2018-09-17 12:33:07', '', 0, 'http://localhost/wordpress/2018/09/17/2086a4ac-d628-4495-9a58-df61a9731bd2/', 0, 'customize_changeset', '', 0),
(58, 1, '2018-09-17 13:38:35', '2018-09-17 13:38:35', '', 'Order &ndash; September 17, 2018 @ 01:38 PM', '', 'wc-on-hold', 'open', 'closed', 'order_5b9fae5b645e3', 'order-sep-17-2018-0138-pm', '', '', '2018-09-17 13:38:43', '2018-09-17 13:38:43', '', 0, 'http://localhost/wordpress/?post_type=shop_order&#038;p=58', 0, 'shop_order', '', 2),
(59, 1, '2018-09-17 14:28:43', '2018-09-17 14:28:43', '', 'Order &ndash; September 17, 2018 @ 02:28 PM', '', 'wc-cancelled', 'open', 'closed', 'order_5b9fba1b4e885', 'order-sep-17-2018-0228-pm', '', '', '2018-09-24 09:35:35', '2018-09-24 09:35:35', '', 0, 'http://localhost/wordpress/?post_type=shop_order&#038;p=59', 0, 'shop_order', '', 1),
(60, 1, '2018-09-25 06:55:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-25 06:55:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=60', 0, 'post', '', 0),
(61, 1, '2018-09-26 06:15:48', '2018-09-26 06:15:48', '', 'Categories', '', 'publish', 'closed', 'closed', '', 'categories', '', '', '2018-09-26 06:16:08', '2018-09-26 06:16:08', '', 0, 'http://localhost/wordpress/?p=61', 2, 'nav_menu_item', '', 0),
(62, 1, '2018-09-26 06:15:48', '2018-09-26 06:15:48', ' ', '', '', 'publish', 'closed', 'closed', '', '62', '', '', '2018-09-26 06:16:08', '2018-09-26 06:16:08', '', 0, 'http://localhost/wordpress/?p=62', 3, 'nav_menu_item', '', 0),
(63, 1, '2018-09-26 06:15:48', '2018-09-26 06:15:48', '', 'Coupon', '', 'publish', 'closed', 'closed', '', 'coupon', '', '', '2018-09-26 06:16:08', '2018-09-26 06:16:08', '', 0, 'http://localhost/wordpress/?p=63', 4, 'nav_menu_item', '', 0),
(64, 1, '2018-09-26 06:15:49', '2018-09-26 06:15:49', '', 'Deal notification', '', 'publish', 'closed', 'closed', '', 'deal-notification', '', '', '2018-09-26 06:16:08', '2018-09-26 06:16:08', '', 0, 'http://localhost/wordpress/?p=64', 5, 'nav_menu_item', '', 0),
(65, 1, '2018-09-26 06:28:36', '2018-09-26 06:28:36', '', 'gazabkideal_logo', '', 'inherit', 'open', 'closed', '', 'gazabkideal_logo', '', '', '2018-09-26 06:28:36', '2018-09-26 06:28:36', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/09/gazabkideal_logo.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2018-09-26 06:28:46', '2018-09-26 06:28:46', '{\n    \"mobile-shop::custom_logo\": {\n        \"value\": 65,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-26 06:28:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '756a5fd7-523e-463d-a6cc-1da951513524', '', '', '2018-09-26 06:28:46', '2018-09-26 06:28:46', '', 0, 'http://localhost/wordpress/2018/09/26/756a5fd7-523e-463d-a6cc-1da951513524/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_termmeta`
--

CREATE TABLE `tbl_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tbl_termmeta`
--

INSERT INTO `tbl_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '0'),
(6, 17, 'order', '0'),
(7, 17, 'display_type', 'products'),
(8, 17, 'thumbnail_id', '0'),
(9, 17, 'product_count_product_cat', '5');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_terms`
--

CREATE TABLE `tbl_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tbl_terms`
--

INSERT INTO `tbl_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
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
(15, 'Uncategorized', 'uncategorized', 0),
(17, 'lifestyle', 'lifestyle', 0),
(18, 'main-menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_term_relationships`
--

CREATE TABLE `tbl_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tbl_term_relationships`
--

INSERT INTO `tbl_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 2, 0),
(10, 14, 0),
(10, 17, 0),
(19, 2, 0),
(19, 17, 0),
(43, 18, 0),
(53, 2, 0),
(53, 17, 0),
(54, 2, 0),
(54, 17, 0),
(55, 2, 0),
(55, 17, 0),
(61, 18, 0),
(62, 18, 0),
(63, 18, 0),
(64, 18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_term_taxonomy`
--

CREATE TABLE `tbl_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tbl_term_taxonomy`
--

INSERT INTO `tbl_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 5),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 1),
(15, 15, 'product_cat', '', 0, 0),
(17, 17, 'product_cat', '', 0, 5),
(18, 18, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usermeta`
--

CREATE TABLE `tbl_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tbl_usermeta`
--

INSERT INTO `tbl_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'supAdmin'),
(2, 1, 'first_name', 'm'),
(3, 1, 'last_name', 'y'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'tbl_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'tbl_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"7829bacfd82475cccff7030e56ffd8a7afab8f23e957b0b60cc58b9174bf55ad\";a:4:{s:10:\"expiration\";i:1538113760;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1537940960;}s:64:\"d34bb240b17c82a1ba9f2998db3273e8d944fcea45dc3fb46939ff74a8b1bd5d\";a:4:{s:10:\"expiration\";i:1538215507;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1538042707;}}'),
(17, 1, 'tbl_dashboard_quick_press_last_post_id', '60'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(20, 1, 'tbl_user-settings', 'libraryContent=browse&editor=html'),
(21, 1, 'tbl_user-settings-time', '1537185685'),
(22, 1, 'wc_last_active', '1538006400'),
(23, 1, 'last_update', '1537194523'),
(24, 1, 'billing_first_name', 'm'),
(25, 1, 'billing_last_name', 'y'),
(26, 1, 'billing_address_1', '141'),
(27, 1, 'billing_city', 'Gurgaon'),
(28, 1, 'billing_state', 'HR'),
(29, 1, 'billing_postcode', '160017'),
(30, 1, 'billing_country', 'IN'),
(31, 1, 'billing_email', 'monuydvenlte@gmail.com'),
(32, 1, 'billing_phone', '12345678'),
(33, 1, 'shipping_first_name', 'm'),
(34, 1, 'shipping_last_name', 'y'),
(35, 1, 'shipping_address_1', '141'),
(36, 1, 'shipping_city', 'Gurgaon'),
(37, 1, 'shipping_state', 'HR'),
(38, 1, 'shipping_postcode', '160017'),
(39, 1, 'shipping_country', 'IN'),
(43, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(44, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-product_tag\";}'),
(45, 1, 'closedpostboxes_page', 'a:0:{}'),
(46, 1, 'metaboxhidden_page', 'a:2:{i:0;s:7:\"slugdiv\";i:1;s:9:\"authordiv\";}'),
(47, 1, 'show_try_gutenberg_panel', '0'),
(48, 1, 'closedpostboxes_dashboard', 'a:5:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:36:\"woocommerce_dashboard_recent_reviews\";i:3;s:21:\"dashboard_quick_press\";i:4;s:17:\"dashboard_primary\";}'),
(49, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(50, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:67:\"woocommerce_dashboard_status,dashboard_right_now,dashboard_activity\";s:4:\"side\";s:76:\"woocommerce_dashboard_recent_reviews,dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(51, 1, 'paying_customer', '1'),
(58, 1, 'nav_menu_recently_edited', '18'),
(59, 1, 'meta-box-order_page', 'a:3:{s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:57:\"postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(60, 1, 'screen_layout_page', '2'),
(69, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"d3d9446802a44259755d38e6d163e820\";a:11:{s:3:\"key\";s:32:\"d3d9446802a44259755d38e6d163e820\";s:10:\"product_id\";i:10;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:100;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:100;s:8:\"line_tax\";i:0;}}}'),
(70, 1, 'shipping_method', 'a:1:{i:0;s:15:\"free_shipping:1\";}'),
(71, 1, 'closedpostboxes_product', 'a:0:{}'),
(72, 1, 'metaboxhidden_product', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(73, 1, 'closedpostboxes_nav-menus', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
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
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'supAdmin', '$P$BqdhycAvDXrxu7/QZS6UoALBS/UTeB.', 'supadmin', 'monuydvenlte@gmail.com', '', '2018-09-17 06:42:04', '', 0, 'supAdmin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wc_download_log`
--

CREATE TABLE `tbl_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wc_webhooks`
--

CREATE TABLE `tbl_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wonderplugin_carousel`
--

CREATE TABLE `tbl_wonderplugin_carousel` (
  `id` int(11) NOT NULL,
  `name` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `authorid` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tbl_wonderplugin_carousel`
--

INSERT INTO `tbl_wonderplugin_carousel` (`id`, `name`, `data`, `time`, `authorid`) VALUES
(1, 'HomePage', '{\"newestfirst\":\"false\",\"name\":\"HomePage\",\"slides\":[{\"type\":0,\"image\":\"http:\\/\\/localhost\\/wordpress\\/wp-content\\/uploads\\/2018\\/09\\/images1.jpeg\",\"thumbnail\":\"http:\\/\\/localhost\\/wordpress\\/wp-content\\/uploads\\/2018\\/09\\/images1-150x150.jpeg\",\"displaythumbnail\":\"false\",\"video\":\"\",\"mp4\":\"\",\"webm\":\"\",\"title\":\"images1\",\"description\":\"\",\"button\":\"\",\"buttoncss\":\"wpp-btn-blue-medium\",\"buttonlink\":\"\",\"buttonlinktarget\":\"\",\"buttonlightbox\":\"false\",\"socialmedia\":\"[]\",\"socialmediatarget\":\"\",\"socialmediarotate\":\"true\",\"altusetitle\":\"true\",\"alt\":\"\",\"weblink\":\"\",\"clickhandler\":\"\",\"linktarget\":\"\",\"weblinklightbox\":\"false\",\"lightbox\":\"true\",\"lightboxsize\":\"false\",\"lightboxwidth\":1024,\"lightboxheight\":768},{\"type\":0,\"image\":\"http:\\/\\/localhost\\/wordpress\\/wp-content\\/uploads\\/2018\\/09\\/images.jpeg\",\"thumbnail\":\"http:\\/\\/localhost\\/wordpress\\/wp-content\\/uploads\\/2018\\/09\\/images-150x150.jpeg\",\"displaythumbnail\":\"false\",\"video\":\"\",\"mp4\":\"\",\"webm\":\"\",\"title\":\"images\",\"description\":\"\",\"button\":\"\",\"buttoncss\":\"wpp-btn-blue-medium\",\"buttonlink\":\"\",\"buttonlinktarget\":\"\",\"buttonlightbox\":\"false\",\"socialmedia\":\"[]\",\"socialmediatarget\":\"\",\"socialmediarotate\":\"true\",\"altusetitle\":\"true\",\"alt\":\"\",\"weblink\":\"\",\"clickhandler\":\"\",\"linktarget\":\"\",\"weblinklightbox\":\"false\",\"lightbox\":\"true\",\"lightboxsize\":\"false\",\"lightboxwidth\":1024,\"lightboxheight\":768},{\"type\":0,\"image\":\"http:\\/\\/localhost\\/wordpress\\/wp-content\\/uploads\\/2018\\/09\\/5576-BH_logo1.png\",\"thumbnail\":\"http:\\/\\/localhost\\/wordpress\\/wp-content\\/uploads\\/2018\\/09\\/5576-BH_logo1-300x300.png\",\"displaythumbnail\":\"false\",\"video\":\"\",\"mp4\":\"\",\"webm\":\"\",\"title\":\"5576-BH_logo1\",\"description\":\"\",\"button\":\"\",\"buttoncss\":\"wpp-btn-blue-medium\",\"buttonlink\":\"\",\"buttonlinktarget\":\"\",\"buttonlightbox\":\"false\",\"socialmedia\":\"[]\",\"socialmediatarget\":\"\",\"socialmediarotate\":\"true\",\"altusetitle\":\"true\",\"alt\":\"\",\"weblink\":\"\",\"clickhandler\":\"\",\"linktarget\":\"\",\"weblinklightbox\":\"false\",\"lightbox\":\"true\",\"lightboxsize\":\"false\",\"lightboxwidth\":1024,\"lightboxheight\":768},{\"type\":0,\"image\":\"http:\\/\\/localhost\\/wordpress\\/wp-content\\/uploads\\/2018\\/09\\/images.png\",\"thumbnail\":\"http:\\/\\/localhost\\/wordpress\\/wp-content\\/uploads\\/2018\\/09\\/images-150x150.png\",\"displaythumbnail\":\"false\",\"video\":\"\",\"mp4\":\"\",\"webm\":\"\",\"title\":\"images\",\"description\":\"\",\"button\":\"\",\"buttoncss\":\"wpp-btn-blue-medium\",\"buttonlink\":\"\",\"buttonlinktarget\":\"\",\"buttonlightbox\":\"false\",\"socialmedia\":\"[]\",\"socialmediatarget\":\"\",\"socialmediarotate\":\"true\",\"altusetitle\":\"true\",\"alt\":\"\",\"weblink\":\"\",\"clickhandler\":\"\",\"linktarget\":\"\",\"weblinklightbox\":\"false\",\"lightbox\":\"true\",\"lightboxsize\":\"false\",\"lightboxwidth\":1024,\"lightboxheight\":768}],\"skin\":\"simplicity\",\"autoplaydir\":\"left\",\"donotcircularforless\":\"false\",\"circularlimit\":3,\"fixaspectratio\":\"true\",\"centerimage\":\"true\",\"fitimage\":\"false\",\"fitcenterimage\":\"false\",\"sameheight\":\"false\",\"sameheightresponsive\":\"false\",\"sameheightmediumscreen\":769,\"sameheightmediumheight\":200,\"sameheightsmallscreen\":415,\"sameheightsmallheight\":150,\"fullwidth\":\"false\",\"hidecontaineroninit\":\"true\",\"hidecontainerbeforeloaded\":\"false\",\"deferloading\":\"false\",\"deferloadingdelay\":0,\"spacing\":4,\"imgextraprops\":\"\",\"aextraprops\":\"\",\"showimgtitle\":\"false\",\"addwoocommerceclass\":\"true\",\"imgtitle\":\"title\",\"addvideomediatype\":\"true\",\"customcss\":\"\",\"dataoptions\":\"\",\"customjs\":\"\",\"lightboxresponsive\":\"true\",\"lightboxshownavigation\":\"false\",\"lightboxnogroup\":\"false\",\"lightboxshowtitle\":\"true\",\"lightboxshowdescription\":\"false\",\"lightboxaddsocialmedia\":\"false\",\"lightboxfullscreenmode\":\"false\",\"lightboxcloseonoverlay\":\"true\",\"lightboxvideohidecontrols\":\"false\",\"lightboxtitlestyle\":\"bottom\",\"lightboximagepercentage\":75,\"lightboxdefaultvideovolume\":1,\"lightboxoverlaybgcolor\":\"#000\",\"lightboxoverlayopacity\":0.9,\"lightboxbgcolor\":\"#fff\",\"lightboxtitleprefix\":\"%NUM \\/ %TOTAL\",\"lightboxtitleinsidecss\":\"color:#fff; font-size:16px; font-family:Arial,Helvetica,sans-serif; overflow:hidden; text-align:left;\",\"lightboxdescriptioninsidecss\":\"color:#fff; font-size:12px; font-family:Arial,Helvetica,sans-serif; overflow:hidden; text-align:left; margin:4px 0px 0px; padding: 0px;\",\"lightboxautoslide\":\"false\",\"lightboxslideinterval\":5000,\"lightboxshowtimer\":\"true\",\"lightboxtimerposition\":\"bottom\",\"lightboxtimerheight\":2,\"lightboxtimercolor\":\"#dc572e\",\"lightboxtimeropacity\":1,\"lightboxshowplaybutton\":\"true\",\"lightboxalwaysshownavarrows\":\"false\",\"lightboxbordersize\":8,\"lightboxshowtitleprefix\":\"true\",\"lightboxborderradius\":0,\"lightboximagekeepratio\":\"true\",\"lightboxadvancedoptions\":\"\",\"lightboxshowsocial\":\"false\",\"lightboxsocialposition\":\"position:absolute;top:100%;right:0;\",\"lightboxsocialpositionsmallscreen\":\"position:absolute;top:100%;right:0;left:0;\",\"lightboxsocialdirection\":\"horizontal\",\"lightboxsocialbuttonsize\":32,\"lightboxsocialbuttonfontsize\":18,\"lightboxsocialrotateeffect\":\"true\",\"lightboxshowfacebook\":\"true\",\"lightboxshowtwitter\":\"true\",\"lightboxshowpinterest\":\"true\",\"donotinit\":\"false\",\"addinitscript\":\"false\",\"doshortcodeontext\":\"false\",\"triggerresize\":\"false\",\"triggerresizedelay\":100,\"lightboxthumbwidth\":90,\"lightboxthumbheight\":60,\"lightboxthumbtopmargin\":12,\"lightboxthumbbottommargin\":4,\"lightboxbarheight\":64,\"lightboxtitlebottomcss\":\"{color:#333; font-size:14px; font-family:Armata,sans-serif,Arial; overflow:hidden; text-align:left;}\",\"lightboxdescriptionbottomcss\":\"{color:#333; font-size:12px; font-family:Arial,Helvetica,sans-serif; overflow:hidden; text-align:left; margin:4px 0px 0px; padding: 0px;}\",\"width\":300,\"height\":200,\"rownumber\":1,\"autoplay\":\"true\",\"random\":\"false\",\"circular\":\"true\",\"direction\":\"horizontal\",\"responsive\":\"true\",\"visibleitems\":3,\"pauseonmouseover\":\"true\",\"scrollmode\":\"page\",\"interval\":3000,\"transitionduration\":1000,\"continuous\":\"false\",\"continuousduration\":2500,\"arrowstyle\":\"none\",\"arrowimage\":\"arrows-32-32-1.png\",\"arrowwidth\":32,\"arrowheight\":32,\"navstyle\":\"none\",\"navimage\":\"bullet-16-16-0.png\",\"navwidth\":16,\"navheight\":16,\"navspacing\":8,\"showhoveroverlay\":\"true\",\"hoveroverlayimage\":\"hoveroverlay-64-64-6.png\",\"screenquery\":\"{\\n\\t\\\"tablet\\\": {\\n\\t\\t\\\"screenwidth\\\": 800,\\n\\t\\t\\\"visibleitems\\\": 2\\n\\t},\\n\\t\\\"mobile\\\": {\\n\\t\\t\\\"screenwidth\\\": 480,\\n\\t\\t\\\"visibleitems\\\": 1\\n\\t}\\n}\",\"skintemplate\":\"&lt;div class=\\\"amazingcarousel-image\\\"&gt;__IMAGE__&lt;\\/div&gt;\\n&lt;div class=\\\"amazingcarousel-title\\\"&gt;__TITLE__&lt;\\/div&gt;\",\"skincss\":\"@import url(https:\\/\\/fonts.googleapis.com\\/css?family=Open+Sans);\\n\\n#amazingcarousel-CAROUSELID .amazingcarousel-image {\\t\\n\\tposition: relative;\\n\\tpadding: 0px;\\n\\t-moz-border-radius: 4px;\\n\\t-webkit-border-radius: 4px;\\n\\tborder-radius: 4px;\\n}\\n\\n#amazingcarousel-CAROUSELID .amazingcarousel-image img {\\n\\tdisplay: block;\\n\\twidth: 100%;\\n\\tmax-width: 100%;\\n\\tborder: 0;\\n\\tmargin: 0;\\n\\tpadding: 0;\\n\\t-moz-box-shadow:  0 1px 4px rgba(0, 0, 0, 0.2);\\n\\t-webkit-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.2);\\n\\tbox-shadow: 0 1px 4px rgba(0, 0, 0, 0.2);\\n}\\n\\n#amazingcarousel-CAROUSELID .amazingcarousel-title {\\n\\tposition:relative;\\n\\tfont:14px \\\"Open Sans\\\", sans-serif;\\n\\tcolor:#333333;\\n\\tmargin:6px;\\n\\ttext-align:center;\\n}\\n\\n#amazingcarousel-CAROUSELID .amazingcarousel-list-container { \\n\\tpadding: 16px 0;\\n}\\n\\n#amazingcarousel-CAROUSELID .amazingcarousel-item-container {\\n\\ttext-align: center;\\n\\tpadding: 4px;\\n}\\n\\n#amazingcarousel-CAROUSELID .amazingcarousel-prev {\\n\\tleft: 0%;\\n\\ttop: 45%;\\n\\tmargin-left: -48px;\\n\\tmargin-top: -16px;\\n}\\n\\n#amazingcarousel-CAROUSELID .amazingcarousel-next {\\n\\tright: 0%;\\n\\ttop: 45%;\\n\\tmargin-right: -48px;\\n\\tmargin-top: -16px;\\n}\\n\\n#amazingcarousel-CAROUSELID .amazingcarousel-nav {\\n\\tposition: absolute;\\n\\twidth: 100%;\\n\\ttop: 100%;\\n}\\n\\n#amazingcarousel-CAROUSELID .amazingcarousel-bullet-wrapper {\\n\\tmargin: 4px auto;\\n}\\n\\n.amazingcarousel-socialmedia-button {\\n\\tdisplay: inline-block;\\n\\tmargin: 4px;\\n}\\n\\n.amazingcarousel-socialmedia-button a {\\n\\tbox-shadow: none;\\n}\\n\\n.amazingcarousel-socialmedia-icon {\\n\\tdisplay:table-cell;\\n\\twidth:32px;\\n\\theight:32px;\\n\\tfont-size:18px;\\n\\tborder-radius:50%;\\n\\tcolor:#fff;\\n\\tvertical-align:middle;\\n\\ttext-align:center;\\n\\tcursor:pointer;\\n\\tpadding:0;\\n}\\n\\n.amazingcarousel-socialmedia-rotate {\\n\\ttransition: transform .4s ease-in; \\n} \\n\\n.amazingcarousel-socialmedia-rotate:hover { \\n\\ttransform: rotate(360deg); \\n}\",\"arrowimagemode\":\"defined\",\"navimagemode\":\"defined\",\"hoveroverlayimagemode\":\"defined\",\"showhoveroverlayalways\":\"false\",\"hidehoveroverlayontouch\":\"false\",\"usescreenquery\":\"false\",\"showplayvideo\":\"true\",\"playvideoimage\":\"playvideo-64-64-0.png\",\"playvideoimagepos\":\"center\",\"playvideoimagemode\":\"defined\"}', '2018-09-26 06:08:19', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_woocommerce_api_keys`
--

CREATE TABLE `tbl_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_woocommerce_attribute_taxonomies`
--

CREATE TABLE `tbl_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `tbl_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_woocommerce_log`
--

CREATE TABLE `tbl_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_woocommerce_order_itemmeta`
--

CREATE TABLE `tbl_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tbl_woocommerce_order_itemmeta`
--

INSERT INTO `tbl_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '19'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '150'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '150'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(10, 2, 'method_id', 'free_shipping'),
(11, 2, 'instance_id', '1'),
(12, 2, 'cost', '0.00'),
(13, 2, 'total_tax', '0'),
(14, 2, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(15, 2, 'Items', 'Product 2 &times; 1'),
(16, 3, '_product_id', '10'),
(17, 3, '_variation_id', '0'),
(18, 3, '_qty', '3'),
(19, 3, '_tax_class', ''),
(20, 3, '_line_subtotal', '300'),
(21, 3, '_line_subtotal_tax', '0'),
(22, 3, '_line_total', '300'),
(23, 3, '_line_tax', '0'),
(24, 3, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(25, 4, 'method_id', 'free_shipping'),
(26, 4, 'instance_id', '1'),
(27, 4, 'cost', '0.00'),
(28, 4, 'total_tax', '0'),
(29, 4, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(30, 4, 'Items', 'Product 1 &times; 3'),
(31, 5, '_product_id', '19'),
(32, 5, '_variation_id', '0'),
(33, 5, '_qty', '1'),
(34, 5, '_tax_class', ''),
(35, 5, '_line_subtotal', '150'),
(36, 5, '_line_subtotal_tax', '0'),
(37, 5, '_line_total', '142.5'),
(38, 5, '_line_tax', '0'),
(39, 5, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(40, 6, '_product_id', '10'),
(41, 6, '_variation_id', '0'),
(42, 6, '_qty', '2'),
(43, 6, '_tax_class', ''),
(44, 6, '_line_subtotal', '200'),
(45, 6, '_line_subtotal_tax', '0'),
(46, 6, '_line_total', '190'),
(47, 6, '_line_tax', '0'),
(48, 6, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(49, 7, 'method_id', 'free_shipping'),
(50, 7, 'instance_id', '1'),
(51, 7, 'cost', '0.00'),
(52, 7, 'total_tax', '0'),
(53, 7, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(54, 7, 'Items', 'Product 2 &times; 1, Product 1 &times; 2'),
(55, 8, 'discount_amount', '17.5'),
(56, 8, 'discount_amount_tax', '0'),
(57, 8, 'coupon_data', 'a:24:{s:2:\"id\";i:25;s:4:\"code\";s:3:\"sep\";s:6:\"amount\";s:1:\"5\";s:12:\"date_created\";O:11:\"WC_DateTime\":4:{s:13:\"\0*\0utc_offset\";i:0;s:4:\"date\";s:26:\"2018-09-17 08:28:56.000000\";s:13:\"timezone_type\";i:1;s:8:\"timezone\";s:6:\"+00:00\";}s:13:\"date_modified\";O:11:\"WC_DateTime\":4:{s:13:\"\0*\0utc_offset\";i:0;s:4:\"date\";s:26:\"2018-09-17 08:28:56.000000\";s:13:\"timezone_type\";i:1;s:8:\"timezone\";s:6:\"+00:00\";}s:12:\"date_expires\";O:11:\"WC_DateTime\":4:{s:13:\"\0*\0utc_offset\";i:0;s:4:\"date\";s:26:\"2018-09-30 00:00:00.000000\";s:13:\"timezone_type\";i:1;s:8:\"timezone\";s:6:\"+00:00\";}s:13:\"discount_type\";s:7:\"percent\";s:11:\"description\";s:0:\"\";s:11:\"usage_count\";i:0;s:14:\"individual_use\";b:1;s:11:\"product_ids\";a:0:{}s:20:\"excluded_product_ids\";a:0:{}s:11:\"usage_limit\";i:1;s:20:\"usage_limit_per_user\";i:1;s:22:\"limit_usage_to_x_items\";i:3;s:13:\"free_shipping\";b:1;s:18:\"product_categories\";a:0:{}s:27:\"excluded_product_categories\";a:0:{}s:18:\"exclude_sale_items\";b:0;s:14:\"minimum_amount\";s:3:\"200\";s:14:\"maximum_amount\";s:3:\"500\";s:18:\"email_restrictions\";a:0:{}s:7:\"virtual\";b:0;s:9:\"meta_data\";a:0:{}}'),
(58, 9, '_product_id', '10'),
(59, 9, '_variation_id', '0'),
(60, 9, '_qty', '7'),
(61, 9, '_tax_class', ''),
(62, 9, '_line_subtotal', '700'),
(63, 9, '_line_subtotal_tax', '0'),
(64, 9, '_line_total', '700'),
(65, 9, '_line_tax', '0'),
(66, 9, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(67, 10, 'method_id', 'free_shipping'),
(68, 10, 'instance_id', '1'),
(69, 10, 'cost', '0.00'),
(70, 10, 'total_tax', '0'),
(71, 10, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(72, 10, 'Items', 'Product 1 &times; 7'),
(73, 11, '_product_id', '19'),
(74, 11, '_variation_id', '0'),
(75, 11, '_qty', '1'),
(76, 11, '_tax_class', ''),
(77, 11, '_line_subtotal', '150'),
(78, 11, '_line_subtotal_tax', '0'),
(79, 11, '_line_total', '150'),
(80, 11, '_line_tax', '0'),
(81, 11, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(82, 12, 'method_id', 'free_shipping'),
(83, 12, 'instance_id', '1'),
(84, 12, 'cost', '0.00'),
(85, 12, 'total_tax', '0'),
(86, 12, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(87, 12, 'Items', 'Product 2 &times; 1'),
(88, 13, '_product_id', '10'),
(89, 13, '_variation_id', '0'),
(90, 13, '_qty', '1'),
(91, 13, '_tax_class', ''),
(92, 13, '_line_subtotal', '100'),
(93, 13, '_line_subtotal_tax', '0'),
(94, 13, '_line_total', '100'),
(95, 13, '_line_tax', '0'),
(96, 13, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(97, 14, 'method_id', 'free_shipping'),
(98, 14, 'instance_id', '1'),
(99, 14, 'cost', '0.00'),
(100, 14, 'total_tax', '0'),
(101, 14, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(102, 14, 'Items', 'Product 1 &times; 1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_woocommerce_order_items`
--

CREATE TABLE `tbl_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tbl_woocommerce_order_items`
--

INSERT INTO `tbl_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Product 2', 'line_item', 20),
(2, 'Free shipping', 'shipping', 20),
(3, 'Product 1', 'line_item', 23),
(4, 'Free shipping', 'shipping', 23),
(5, 'Product 2', 'line_item', 26),
(6, 'Product 1', 'line_item', 26),
(7, 'Free shipping', 'shipping', 26),
(8, 'sep', 'coupon', 26),
(9, 'Product 1', 'line_item', 52),
(10, 'Free shipping', 'shipping', 52),
(11, 'Product 2', 'line_item', 58),
(12, 'Free shipping', 'shipping', 58),
(13, 'Product 1', 'line_item', 59),
(14, 'Free shipping', 'shipping', 59);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_woocommerce_payment_tokenmeta`
--

CREATE TABLE `tbl_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_woocommerce_payment_tokens`
--

CREATE TABLE `tbl_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_woocommerce_sessions`
--

CREATE TABLE `tbl_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tbl_woocommerce_sessions`
--

INSERT INTO `tbl_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(4, '1', 'a:11:{s:4:\"cart\";s:412:\"a:1:{s:32:\"d3d9446802a44259755d38e6d163e820\";a:11:{s:3:\"key\";s:32:\"d3d9446802a44259755d38e6d163e820\";s:10:\"product_id\";i:10;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:100;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:100;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:408:\"a:15:{s:8:\"subtotal\";s:6:\"100.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:4:\"0.00\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:6:\"100.00\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:6:\"100.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_0\";s:393:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_38a3c8b2ec064c74d54f548d21ca9ede\";s:5:\"rates\";a:1:{s:15:\"free_shipping:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:15:\"free_shipping:1\";s:9:\"method_id\";s:13:\"free_shipping\";s:11:\"instance_id\";i:1;s:5:\"label\";s:13:\"Free shipping\";s:4:\"cost\";s:4:\"0.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:5:\"Items\";s:19:\"Product 1 &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:43:\"a:1:{i:0;a:1:{i:0;s:15:\"free_shipping:1\";}}\";s:23:\"chosen_shipping_methods\";s:33:\"a:1:{i:0;s:15:\"free_shipping:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:8:\"customer\";s:790:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2018-09-17T14:28:43+00:00\";s:8:\"postcode\";s:6:\"160017\";s:4:\"city\";s:7:\"Gurgaon\";s:9:\"address_1\";s:3:\"141\";s:7:\"address\";s:3:\"141\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"HR\";s:7:\"country\";s:2:\"IN\";s:17:\"shipping_postcode\";s:6:\"160017\";s:13:\"shipping_city\";s:7:\"Gurgaon\";s:18:\"shipping_address_1\";s:3:\"141\";s:16:\"shipping_address\";s:3:\"141\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"HR\";s:16:\"shipping_country\";s:2:\"IN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:1:\"m\";s:9:\"last_name\";s:1:\"y\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:8:\"12345678\";s:5:\"email\";s:22:\"monuydvenlte@gmail.com\";s:19:\"shipping_first_name\";s:1:\"m\";s:18:\"shipping_last_name\";s:1:\"y\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1538215510);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_woocommerce_shipping_zones`
--

CREATE TABLE `tbl_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tbl_woocommerce_shipping_zones`
--

INSERT INTO `tbl_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'India', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_woocommerce_shipping_zone_locations`
--

CREATE TABLE `tbl_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tbl_woocommerce_shipping_zone_locations`
--

INSERT INTO `tbl_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'IN', 'country');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_woocommerce_shipping_zone_methods`
--

CREATE TABLE `tbl_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tbl_woocommerce_shipping_zone_methods`
--

INSERT INTO `tbl_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'free_shipping', 1, 1),
(0, 2, 'flat_rate', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_woocommerce_tax_rates`
--

CREATE TABLE `tbl_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_woocommerce_tax_rate_locations`
--

CREATE TABLE `tbl_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_yith_wcwl`
--

CREATE TABLE `tbl_yith_wcwl` (
  `ID` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wishlist_id` int(11) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_yith_wcwl`
--

INSERT INTO `tbl_yith_wcwl` (`ID`, `prod_id`, `quantity`, `user_id`, `wishlist_id`, `dateadded`) VALUES
(1, 10, 1, 1, 1, '2018-09-17 04:08:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_yith_wcwl_lists`
--

CREATE TABLE `tbl_yith_wcwl_lists` (
  `ID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wishlist_slug` varchar(200) NOT NULL,
  `wishlist_name` text,
  `wishlist_token` varchar(64) NOT NULL,
  `wishlist_privacy` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_yith_wcwl_lists`
--

INSERT INTO `tbl_yith_wcwl_lists` (`ID`, `user_id`, `wishlist_slug`, `wishlist_name`, `wishlist_token`, `wishlist_privacy`, `is_default`, `dateadded`) VALUES
(1, 1, '', '', 'VIUSJ3YOV6XP', 0, 1, '2018-09-17 09:37:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_commentmeta`
--
ALTER TABLE `tbl_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `tbl_links`
--
ALTER TABLE `tbl_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `tbl_options`
--
ALTER TABLE `tbl_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `tbl_postmeta`
--
ALTER TABLE `tbl_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `tbl_posts`
--
ALTER TABLE `tbl_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `tbl_termmeta`
--
ALTER TABLE `tbl_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `tbl_terms`
--
ALTER TABLE `tbl_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `tbl_term_relationships`
--
ALTER TABLE `tbl_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `tbl_term_taxonomy`
--
ALTER TABLE `tbl_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `tbl_usermeta`
--
ALTER TABLE `tbl_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `tbl_wc_download_log`
--
ALTER TABLE `tbl_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `tbl_wc_webhooks`
--
ALTER TABLE `tbl_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_wonderplugin_carousel`
--
ALTER TABLE `tbl_wonderplugin_carousel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_woocommerce_api_keys`
--
ALTER TABLE `tbl_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `tbl_woocommerce_attribute_taxonomies`
--
ALTER TABLE `tbl_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `tbl_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `tbl_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `tbl_woocommerce_log`
--
ALTER TABLE `tbl_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `tbl_woocommerce_order_itemmeta`
--
ALTER TABLE `tbl_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `tbl_woocommerce_order_items`
--
ALTER TABLE `tbl_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `tbl_woocommerce_payment_tokenmeta`
--
ALTER TABLE `tbl_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `tbl_woocommerce_payment_tokens`
--
ALTER TABLE `tbl_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_woocommerce_sessions`
--
ALTER TABLE `tbl_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `tbl_woocommerce_shipping_zones`
--
ALTER TABLE `tbl_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `tbl_woocommerce_shipping_zone_locations`
--
ALTER TABLE `tbl_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `tbl_woocommerce_shipping_zone_methods`
--
ALTER TABLE `tbl_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `tbl_woocommerce_tax_rates`
--
ALTER TABLE `tbl_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `tbl_woocommerce_tax_rate_locations`
--
ALTER TABLE `tbl_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `tbl_yith_wcwl`
--
ALTER TABLE `tbl_yith_wcwl`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Indexes for table `tbl_yith_wcwl_lists`
--
ALTER TABLE `tbl_yith_wcwl_lists`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `wishlist_token` (`wishlist_token`),
  ADD KEY `wishlist_slug` (`wishlist_slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_commentmeta`
--
ALTER TABLE `tbl_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tbl_links`
--
ALTER TABLE `tbl_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_options`
--
ALTER TABLE `tbl_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=778;
--
-- AUTO_INCREMENT for table `tbl_postmeta`
--
ALTER TABLE `tbl_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=716;
--
-- AUTO_INCREMENT for table `tbl_posts`
--
ALTER TABLE `tbl_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `tbl_termmeta`
--
ALTER TABLE `tbl_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_terms`
--
ALTER TABLE `tbl_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tbl_term_taxonomy`
--
ALTER TABLE `tbl_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tbl_usermeta`
--
ALTER TABLE `tbl_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_wc_download_log`
--
ALTER TABLE `tbl_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_wc_webhooks`
--
ALTER TABLE `tbl_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_wonderplugin_carousel`
--
ALTER TABLE `tbl_wonderplugin_carousel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_woocommerce_api_keys`
--
ALTER TABLE `tbl_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_woocommerce_attribute_taxonomies`
--
ALTER TABLE `tbl_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `tbl_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_woocommerce_log`
--
ALTER TABLE `tbl_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_woocommerce_order_itemmeta`
--
ALTER TABLE `tbl_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `tbl_woocommerce_order_items`
--
ALTER TABLE `tbl_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_woocommerce_payment_tokenmeta`
--
ALTER TABLE `tbl_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_woocommerce_payment_tokens`
--
ALTER TABLE `tbl_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_woocommerce_sessions`
--
ALTER TABLE `tbl_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_woocommerce_shipping_zones`
--
ALTER TABLE `tbl_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_woocommerce_shipping_zone_locations`
--
ALTER TABLE `tbl_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_woocommerce_shipping_zone_methods`
--
ALTER TABLE `tbl_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_woocommerce_tax_rates`
--
ALTER TABLE `tbl_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_woocommerce_tax_rate_locations`
--
ALTER TABLE `tbl_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_yith_wcwl`
--
ALTER TABLE `tbl_yith_wcwl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_yith_wcwl_lists`
--
ALTER TABLE `tbl_yith_wcwl_lists`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_wc_download_log`
--
ALTER TABLE `tbl_wc_download_log`
  ADD CONSTRAINT `fk_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `tbl_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
