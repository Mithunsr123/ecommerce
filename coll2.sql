-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 01, 2023 at 08:04 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `college2`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_commentmeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-03-30 06:38:15', '2023-03-30 06:38:15', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_links`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=242 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/college2/wordpress', 'yes'),
(2, 'home', 'http://localhost/college2/wordpress', 'yes'),
(3, 'blogname', 'APPA INSTITUTE OF ENGG AND TECH...', 'yes'),
(4, 'blogdescription', 'No compromise with education', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'antusr@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:88:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:57:"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:52:"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"index.php/category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:45:"index.php/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:27:"index.php/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:54:"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:49:"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:30:"index.php/tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:42:"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:24:"index.php/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:55:"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:50:"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:31:"index.php/type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:43:"index.php/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:25:"index.php/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"index.php/feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"index.php/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:18:"index.php/embed/?$";s:21:"index.php?&embed=true";s:30:"index.php/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:37:"index.php/comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=4&cpage=$matches[1]";s:51:"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"index.php/comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:27:"index.php/comments/embed/?$";s:21:"index.php?&embed=true";s:54:"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:30:"index.php/search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:42:"index.php/search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:24:"index.php/search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:33:"index.php/author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:45:"index.php/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:27:"index.php/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:55:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:49:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:42:"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:54:"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:36:"index.php/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:29:"index.php/([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:41:"index.php/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:23:"index.php/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:68:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:78:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:98:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:74:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:63:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:87:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:75:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:71:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:57:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:67:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:87:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:63:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:48:"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:37:"index.php/.?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/.?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"index.php/.?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"index.php/(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:30:"index.php/(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:38:"index.php/(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:45:"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:34:"index.php/(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:47:"image-slider-widget/easy-slider-widget-lite.php";i:1;s:39:"simple-custom-css/simple-custom-css.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyfourteen', 'yes'),
(41, 'stylesheet', 'twentyfourteen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '37965', 'yes'),
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
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:6:{i:2;a:3:{s:5:"title";s:21:"visit again thank you";s:4:"text";s:11:"Hello world";s:6:"filter";b:0;}i:4;a:3:{s:5:"title";s:4:"AIET";s:4:"text";s:21:"	[espro-slider id=58]";s:6:"filter";b:0;}i:5;a:3:{s:5:"title";s:36:"WECOME TO THE WORLD OF EDUCATION HUB";s:4:"text";s:0:"";s:6:"filter";b:0;}i:6;a:3:{s:5:"title";s:18:"AIET EDUCATION HUB";s:4:"text";s:116:"<marquee><h2 style="background-color:white; color:red; fontsize="20pt">WELCOME TO THE EDUCATIONAL HUB</h2></marquee>";s:6:"filter";b:0;}i:8;a:3:{s:5:"title";s:24:"APPAJI PRESIDENT OF AIET";s:4:"text";s:84:"<img src="http://localhost/college2/wordpress/wp-content/uploads/2023/04/aiet1.jpg">";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:39:"simple-custom-css/simple-custom-css.php";s:15:"sccss_uninstall";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '4', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '49', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '37965', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:"title";s:15:"Admissions open";s:6:"number";i:5;s:9:"show_date";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:14:"recent-posts-2";i:1;s:6:"text-4";i:2;s:6:"text-8";}s:9:"sidebar-2";a:2:{i:0;s:6:"text-6";i:1;s:10:"calendar-3";}s:9:"sidebar-3";a:2:{i:0;s:6:"text-2";i:1;s:6:"text-5";}s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:2:{s:12:"_multiwidget";i:1;i:3;a:0:{}}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:7:{i:1680338166;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"67a23b5262f56e030eab46a20e266de7";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:55;}}}}i:1680340299;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"3e5b9d87ec9acb6b0f0f88eb6019ab77";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:61;}}}}i:1680374300;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1680417379;a:1:{s:16:"ewic_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1680417534;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1680417701;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(107, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:56:"http://downloads.wordpress.org/release/wordpress-6.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:56:"http://downloads.wordpress.org/release/wordpress-6.2.zip";s:10:"no_content";s:67:"http://downloads.wordpress.org/release/wordpress-6.2-no-content.zip";s:11:"new_bundled";s:68:"http://downloads.wordpress.org/release/wordpress-6.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"6.2";s:7:"version";s:3:"6.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"6.1";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"http://downloads.wordpress.org/release/wordpress-5.1.15.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"http://downloads.wordpress.org/release/wordpress-5.1.15.zip";s:10:"no_content";s:70:"http://downloads.wordpress.org/release/wordpress-5.1.15-no-content.zip";s:11:"new_bundled";s:71:"http://downloads.wordpress.org/release/wordpress-5.1.15-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:6:"5.1.15";s:7:"version";s:6:"5.1.15";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"6.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1680333101;s:15:"version_checked";s:5:"4.6.1";s:12:"translations";a:0:{}}', 'no'),
(112, '_transient_random_seed', 'cfdbbd67b82a1ff451dfedbe4cac5f81', 'yes'),
(118, 'can_compress_scripts', '1', 'no'),
(119, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1680158372;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(120, 'current_theme', 'Twenty Fourteen', 'yes'),
(121, 'theme_mods_twentyfourteen', 'a:7:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:16:"header_textcolor";s:6:"dd9933";s:16:"background_color";s:6:"000000";s:12:"header_image";s:83:"http://localhost/college2/wordpress/wp-content/uploads/2023/03/cropped-header-1.jpg";s:17:"header_image_data";O:8:"stdClass":5:{s:13:"attachment_id";i:51;s:3:"url";s:83:"http://localhost/college2/wordpress/wp-content/uploads/2023/03/cropped-header-1.jpg";s:13:"thumbnail_url";s:83:"http://localhost/college2/wordpress/wp-content/uploads/2023/03/cropped-header-1.jpg";s:6:"height";i:239;s:5:"width";i:1260;}s:16:"background_image";s:0:"";}', 'yes'),
(122, 'theme_switched', '', 'yes'),
(123, 'widget_widget_twentyfourteen_ephemera', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(152, '_site_transient_timeout_browser_c3fcd9e52fd775c43c9553a961bfc52c', '1680769581', 'no'),
(153, '_site_transient_browser_c3fcd9e52fd775c43c9553a961bfc52c', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:9:"111.0.0.0";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(166, '_transient_timeout_plugin_slugs', '1680420377', 'no'),
(167, '_transient_plugin_slugs', 'a:4:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:47:"image-slider-widget/easy-slider-widget-lite.php";i:3;s:39:"simple-custom-css/simple-custom-css.php";}', 'no'),
(170, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(186, 'category_children', 'a:0:{}', 'yes'),
(202, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1680373589', 'no'),
(203, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: stream_socket_client() [<a href=''function.stream-socket-client''>function.stream-socket-client</a>]: php_network_getaddresses: getaddrinfo failed: No such host is known. \nstream_socket_client() [<a href=''function.stream-socket-client''>function.stream-socket-client</a>]: unable to connect to tcp://wordpress.org:80 (php_network_getaddresses: getaddrinfo failed: No such host is known. )</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: No working transports found</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(204, 'recently_activated', 'a:0:{}', 'yes'),
(207, 'ewic-settings-automatic_update', 'active', 'yes'),
(209, 'widget_ewic-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(213, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1680333103;s:7:"checked";a:3:{s:13:"twentyfifteen";s:3:"1.6";s:14:"twentyfourteen";s:3:"1.8";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:3:{s:13:"twentyfifteen";a:6:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"3.4";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:58:"http://downloads.wordpress.org/theme/twentyfifteen.3.4.zip";s:8:"requires";b:0;s:12:"requires_php";s:5:"5.2.4";}s:14:"twentyfourteen";a:6:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"3.6";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:59:"http://downloads.wordpress.org/theme/twentyfourteen.3.6.zip";s:8:"requires";b:0;s:12:"requires_php";s:5:"5.2.4";}s:13:"twentysixteen";a:6:{s:5:"theme";s:13:"twentysixteen";s:11:"new_version";s:3:"2.9";s:3:"url";s:43:"https://wordpress.org/themes/twentysixteen/";s:7:"package";s:58:"http://downloads.wordpress.org/theme/twentysixteen.2.9.zip";s:8:"requires";s:3:"4.4";s:12:"requires_php";s:5:"5.2.4";}}s:12:"translations";a:0:{}}', 'no'),
(215, '_transient_is_multi_author', '0', 'yes'),
(220, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1680343547', 'no'),
(221, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:6044;}s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4819;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2784;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2667;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:2049;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1914;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1903;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1632;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1565;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1552;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1547;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1515;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1503;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:1474;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:1362;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1316;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1268;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1175;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:1155;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:1145;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:1050;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:1019;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:998;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:963;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:903;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:885;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:876;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:876;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:874;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:866;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:866;}s:9:"gutenberg";a:3:{s:4:"name";s:9:"gutenberg";s:4:"slug";s:9:"gutenberg";s:5:"count";i:823;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:794;}s:5:"block";a:3:{s:4:"name";s:5:"block";s:4:"slug";s:5:"block";s:5:"count";i:782;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:781;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:777;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:765;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:765;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:732;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:729;}s:9:"elementor";a:3:{s:4:"name";s:9:"elementor";s:4:"slug";s:9:"elementor";s:5:"count";i:729;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:725;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:723;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:686;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:685;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:685;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:674;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:666;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:632;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:622;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:617;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:608;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:607;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:607;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:596;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:592;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:591;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:588;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:577;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:568;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:567;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:565;}s:8:"shipping";a:3:{s:4:"name";s:8:"shipping";s:4:"slug";s:8:"shipping";s:5:"count";i:561;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:554;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:554;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:542;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:539;}s:14:"contact-form-7";a:3:{s:4:"name";s:14:"contact form 7";s:4:"slug";s:14:"contact-form-7";s:5:"count";i:534;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:531;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:530;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:526;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:517;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:511;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:509;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:507;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:504;}s:11:"performance";a:3:{s:4:"name";s:11:"performance";s:4:"slug";s:11:"performance";s:5:"count";i:480;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:474;}s:6:"blocks";a:3:{s:4:"name";s:6:"blocks";s:4:"slug";s:6:"blocks";s:5:"count";i:471;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:468;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:450;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:449;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:448;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:437;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:432;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:426;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:424;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:423;}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";i:419;}s:7:"gateway";a:3:{s:4:"name";s:7:"gateway";s:4:"slug";s:7:"gateway";s:5:"count";i:419;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:418;}s:6:"import";a:3:{s:4:"name";s:6:"import";s:4:"slug";s:6:"import";s:5:"count";i:417;}s:8:"payments";a:3:{s:4:"name";s:8:"payments";s:4:"slug";s:8:"payments";s:5:"count";i:417;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:412;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:406;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:398;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:395;}s:5:"cache";a:3:{s:4:"name";s:5:"cache";s:4:"slug";s:5:"cache";s:5:"count";i:394;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:390;}s:8:"checkout";a:3:{s:4:"name";s:8:"checkout";s:4:"slug";s:8:"checkout";s:5:"count";i:388;}}', 'no'),
(232, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1680333107;s:7:"checked";a:4:{s:19:"akismet/akismet.php";s:3:"3.2";s:9:"hello.php";s:3:"1.6";s:47:"image-slider-widget/easy-slider-widget-lite.php";s:6:"1.1.47";s:39:"simple-custom-css/simple-custom-css.php";s:5:"4.0.6";}s:8:"response";a:2:{s:9:"hello.php";O:8:"stdClass":13:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:5:"1.7.2";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:59:"http://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855";s:2:"1x";s:64:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855";}s:7:"banners";a:2:{s:2:"2x";s:67:"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582";s:2:"1x";s:66:"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855";}s:11:"banners_rtl";a:0:{}s:8:"requires";s:3:"4.6";s:6:"tested";s:5:"6.1.1";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:47:"image-slider-widget/easy-slider-widget-lite.php";O:8:"stdClass":14:{s:2:"id";s:33:"w.org/plugins/image-slider-widget";s:4:"slug";s:19:"image-slider-widget";s:6:"plugin";s:47:"image-slider-widget/easy-slider-widget-lite.php";s:11:"new_version";s:7:"1.1.123";s:3:"url";s:50:"https://wordpress.org/plugins/image-slider-widget/";s:7:"package";s:61:"http://downloads.wordpress.org/plugin/image-slider-widget.zip";s:5:"icons";a:2:{s:2:"2x";s:72:"https://ps.w.org/image-slider-widget/assets/icon-256x256.png?rev=1675940";s:2:"1x";s:72:"https://ps.w.org/image-slider-widget/assets/icon-128x128.png?rev=1131240";}s:7:"banners";a:1:{s:2:"1x";s:74:"https://ps.w.org/image-slider-widget/assets/banner-772x250.png?rev=1674939";}s:11:"banners_rtl";a:0:{}s:8:"requires";s:3:"3.5";s:6:"tested";s:3:"6.2";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}s:14:"upgrade_notice";s:55:"<p>IMPORTANT! SECURITY BUGS FIX, PLEASE UPDATE NOW!</p>";}}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":13:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:3:"5.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:53:"http://downloads.wordpress.org/plugin/akismet.5.1.zip";s:5:"icons";a:2:{s:2:"2x";s:60:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463";s:2:"1x";s:60:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:8:"requires";s:3:"5.0";s:6:"tested";s:5:"6.1.1";s:12:"requires_php";s:3:"5.2";s:13:"compatibility";a:0:{}}s:39:"simple-custom-css/simple-custom-css.php";O:8:"stdClass":10:{s:2:"id";s:31:"w.org/plugins/simple-custom-css";s:4:"slug";s:17:"simple-custom-css";s:6:"plugin";s:39:"simple-custom-css/simple-custom-css.php";s:11:"new_version";s:5:"4.0.6";s:3:"url";s:48:"https://wordpress.org/plugins/simple-custom-css/";s:7:"package";s:59:"http://downloads.wordpress.org/plugin/simple-custom-css.zip";s:5:"icons";a:2:{s:2:"2x";s:70:"https://ps.w.org/simple-custom-css/assets/icon-256x256.jpg?rev=1819543";s:2:"1x";s:70:"https://ps.w.org/simple-custom-css/assets/icon-128x128.jpg?rev=1819543";}s:7:"banners";a:2:{s:2:"2x";s:73:"https://ps.w.org/simple-custom-css/assets/banner-1544x500.jpg?rev=1819543";s:2:"1x";s:72:"https://ps.w.org/simple-custom-css/assets/banner-772x250.jpg?rev=1819543";}s:11:"banners_rtl";a:0:{}s:8:"requires";s:5:"3.0.1";}}}', 'no'),
(233, 'sccss_settings', 'a:1:{s:13:"sccss-content";s:0:"";}', 'yes'),
(234, '_transient_timeout_settings_errors', '1680333769', 'no'),
(235, '_transient_settings_errors', 'a:1:{i:0;a:4:{s:7:"setting";s:7:"general";s:4:"code";s:16:"settings_updated";s:7:"message";s:15:"Settings saved.";s:4:"type";s:7:"updated";}}', 'no'),
(239, '_transient_featured_content_ids', 'a:0:{}', 'yes'),
(240, '_site_transient_timeout_theme_roots', '1680336960', 'no'),
(241, '_site_transient_theme_roots', 'a:3:{s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=125 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1680160724:1'),
(4, 4, '_wp_page_template', 'default'),
(5, 6, '_edit_last', '1'),
(6, 6, '_wp_page_template', 'default'),
(7, 6, '_edit_lock', '1680246639:1'),
(8, 8, '_edit_last', '1'),
(9, 8, '_wp_page_template', 'default'),
(10, 8, '_edit_lock', '1680165076:1'),
(11, 10, '_edit_last', '1'),
(12, 10, '_wp_page_template', 'default'),
(13, 10, '_edit_lock', '1680163756:1'),
(14, 12, '_edit_last', '1'),
(15, 12, '_wp_page_template', 'default'),
(16, 12, '_edit_lock', '1680164715:1'),
(17, 18, '_wp_attached_file', '2023/03/header.jpg'),
(18, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2480;s:6:"height";i:478;s:4:"file";s:18:"2023/03/header.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"header-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"header-300x58.jpg";s:5:"width";i:300;s:6:"height";i:58;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"header-768x148.jpg";s:5:"width";i:768;s:6:"height";i:148;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"header-1024x197.jpg";s:5:"width";i:1024;s:6:"height";i:197;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"header-672x372.jpg";s:5:"width";i:672;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:19:"header-1038x478.jpg";s:5:"width";i:1038;s:6:"height";i:478;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(19, 24, '_wp_attached_file', '2023/03/03.jpg'),
(20, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1032;s:6:"height";i:581;s:4:"file";s:14:"2023/03/03.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"03-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"03-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:14:"03-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:15:"03-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:14:"03-672x372.jpg";s:5:"width";i:672;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:15:"03-1032x576.jpg";s:5:"width";i:1032;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(21, 27, '_wp_attached_file', '2023/03/aiet1.jpg'),
(22, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1032;s:6:"height";i:581;s:4:"file";s:17:"2023/03/aiet1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"aiet1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"aiet1-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"aiet1-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"aiet1-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"aiet1-672x372.jpg";s:5:"width";i:672;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:18:"aiet1-1032x576.jpg";s:5:"width";i:1032;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(23, 42, '_menu_item_type', 'post_type'),
(24, 42, '_menu_item_menu_item_parent', '0'),
(25, 42, '_menu_item_object_id', '12'),
(26, 42, '_menu_item_object', 'page'),
(27, 42, '_menu_item_target', ''),
(28, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(29, 42, '_menu_item_xfn', ''),
(30, 42, '_menu_item_url', ''),
(32, 43, '_menu_item_type', 'post_type'),
(33, 43, '_menu_item_menu_item_parent', '0'),
(34, 43, '_menu_item_object_id', '10'),
(35, 43, '_menu_item_object', 'page'),
(36, 43, '_menu_item_target', ''),
(37, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(38, 43, '_menu_item_xfn', ''),
(39, 43, '_menu_item_url', ''),
(41, 44, '_menu_item_type', 'post_type'),
(42, 44, '_menu_item_menu_item_parent', '0'),
(43, 44, '_menu_item_object_id', '8'),
(44, 44, '_menu_item_object', 'page'),
(45, 44, '_menu_item_target', ''),
(46, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(47, 44, '_menu_item_xfn', ''),
(48, 44, '_menu_item_url', ''),
(50, 45, '_menu_item_type', 'post_type'),
(51, 45, '_menu_item_menu_item_parent', '0'),
(52, 45, '_menu_item_object_id', '6'),
(53, 45, '_menu_item_object', 'page'),
(54, 45, '_menu_item_target', ''),
(55, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(56, 45, '_menu_item_xfn', ''),
(57, 45, '_menu_item_url', ''),
(59, 46, '_menu_item_type', 'post_type'),
(60, 46, '_menu_item_menu_item_parent', '0'),
(61, 46, '_menu_item_object_id', '4'),
(62, 46, '_menu_item_object', 'page'),
(63, 46, '_menu_item_target', ''),
(64, 46, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(65, 46, '_menu_item_xfn', ''),
(66, 46, '_menu_item_url', ''),
(68, 48, '_wp_attached_file', '2023/03/cloud.pptx'),
(69, 49, '_wp_attached_file', '2023/03/cropped-aiet1.jpg'),
(70, 49, '_wp_attachment_context', 'site-icon'),
(71, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:25:"2023/03/cropped-aiet1.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"cropped-aiet1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"cropped-aiet1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"cropped-aiet1-512x372.jpg";s:5:"width";i:512;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-270";a:4:{s:4:"file";s:25:"cropped-aiet1-270x270.jpg";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-192";a:4:{s:4:"file";s:25:"cropped-aiet1-192x192.jpg";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-180";a:4:{s:4:"file";s:25:"cropped-aiet1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"site_icon-32";a:4:{s:4:"file";s:23:"cropped-aiet1-32x32.jpg";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(72, 50, '_wp_attached_file', '2023/03/cropped-header.jpg'),
(73, 50, '_wp_attachment_context', 'custom-header'),
(74, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1260;s:6:"height";i:239;s:4:"file";s:26:"2023/03/cropped-header.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"cropped-header-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"cropped-header-300x57.jpg";s:5:"width";i:300;s:6:"height";i:57;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"cropped-header-768x146.jpg";s:5:"width";i:768;s:6:"height";i:146;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"cropped-header-1024x194.jpg";s:5:"width";i:1024;s:6:"height";i:194;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:26:"cropped-header-672x239.jpg";s:5:"width";i:672;s:6:"height";i:239;s:9:"mime-type";s:10:"image/jpeg";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:27:"cropped-header-1038x239.jpg";s:5:"width";i:1038;s:6:"height";i:239;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(77, 51, '_wp_attached_file', '2023/03/cropped-header-1.jpg'),
(78, 51, '_wp_attachment_context', 'custom-header'),
(79, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1260;s:6:"height";i:239;s:4:"file";s:28:"2023/03/cropped-header-1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"cropped-header-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"cropped-header-1-300x57.jpg";s:5:"width";i:300;s:6:"height";i:57;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"cropped-header-1-768x146.jpg";s:5:"width";i:768;s:6:"height";i:146;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:29:"cropped-header-1-1024x194.jpg";s:5:"width";i:1024;s:6:"height";i:194;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:28:"cropped-header-1-672x239.jpg";s:5:"width";i:672;s:6:"height";i:239;s:9:"mime-type";s:10:"image/jpeg";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:29:"cropped-header-1-1038x239.jpg";s:5:"width";i:1038;s:6:"height";i:239;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(80, 51, '_wp_attachment_custom_header_last_used_twentyfourteen', '1680246052'),
(81, 51, '_wp_attachment_is_custom_header', 'twentyfourteen'),
(82, 52, '_wp_attached_file', '2023/03/B612_20181121_122856_943.jpg'),
(83, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:1280;s:4:"file";s:36:"2023/03/B612_20181121_122856_943.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"B612_20181121_122856_943-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"B612_20181121_122856_943-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:37:"B612_20181121_122856_943-768x1024.jpg";s:5:"width";i:768;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:37:"B612_20181121_122856_943-768x1024.jpg";s:5:"width";i:768;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:36:"B612_20181121_122856_943-672x372.jpg";s:5:"width";i:672;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:36:"B612_20181121_122856_943-960x576.jpg";s:5:"width";i:960;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(84, 24, '_wp_attachment_is_custom_background', 'twentyfourteen'),
(87, 59, '_wp_attached_file', '2023/04/enterance-view.jpg'),
(88, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:780;s:6:"height";i:521;s:4:"file";s:26:"2023/04/enterance-view.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"enterance-view-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"enterance-view-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"enterance-view-768x513.jpg";s:5:"width";i:768;s:6:"height";i:513;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:26:"enterance-view-672x372.jpg";s:5:"width";i:672;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(89, 60, '_wp_attached_file', '2023/04/enterance-view-1.jpg'),
(90, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:780;s:6:"height";i:521;s:4:"file";s:28:"2023/04/enterance-view-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"enterance-view-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"enterance-view-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"enterance-view-1-768x513.jpg";s:5:"width";i:768;s:6:"height";i:513;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:28:"enterance-view-1-672x372.jpg";s:5:"width";i:672;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(91, 58, '_edit_last', '1'),
(106, 58, '_edit_lock', '1680331352:1'),
(107, 58, 'ewic_meta_select_images', 'a:2:{i:59;a:2:{s:6:"images";s:2:"59";s:3:"ttl";s:14:"enterance-view";}i:27;a:2:{s:6:"images";s:2:"27";s:3:"ttl";s:5:"aiet1";}}'),
(108, 58, 'ewic_meta_list_mode', ''),
(109, 58, 'ewic_meta_thumbsizelt', 'a:2:{s:5:"width";s:4:"auto";s:6:"height";s:4:"auto";}'),
(110, 58, 'ewic_meta_slide_timthumb', 'off'),
(111, 58, 'ewic_meta_slide_auto', 'on'),
(112, 58, 'ewic_meta_slide_delay', '5'),
(113, 58, 'ewic_meta_settings_effect', 'easeInQuad'),
(114, 58, 'ewic_meta_slide_style', 'horizontal'),
(115, 58, 'ewic_meta_slide_nav', 'always'),
(116, 58, 'ewic_meta_slide_title', 'on'),
(117, 58, 'ewic_meta_settings_smartttl', 'off'),
(118, 58, 'ewic_meta_slide_lightbox', 'on'),
(119, 58, 'ewic_meta_slide_lightbox_autoslide', 'on'),
(120, 58, 'ewic_meta_slide_lightbox_delay', '5'),
(123, 62, '_wp_attached_file', '2023/04/aiet1.jpg'),
(124, 62, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1032;s:6:"height";i:581;s:4:"file";s:17:"2023/04/aiet1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"aiet1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"aiet1-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"aiet1-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"aiet1-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"aiet1-672x372.jpg";s:5:"width";i:672;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:18:"aiet1-1032x576.jpg";s:5:"width";i:1032;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-03-30 06:38:15', '2023-03-30 06:38:15', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2023-03-30 06:38:15', '2023-03-30 06:38:15', '', 0, 'http://localhost/college2/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2023-03-30 06:38:15', '2023-03-30 06:38:15', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/college2/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2023-03-30 06:38:15', '2023-03-30 06:38:15', '', 0, 'http://localhost/college2/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-03-30 06:38:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-03-30 06:38:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/college2/wordpress/?p=3', 0, 'post', '', 0),
(4, 1, '2023-03-30 06:47:57', '2023-03-30 06:47:57', '<img class="alignnone size-medium wp-image-18" src="http://localhost/college2/wordpress/wp-content/uploads/2023/03/header-300x58.jpg" alt="header" width="500" height="100" />\r\n<img src="http://localhost/college2/wordpress/wp-content/uploads/2023/03/03.jpg">', 'HOME', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-03-30 07:18:44', '2023-03-30 07:18:44', '', 0, 'http://localhost/college2/wordpress/?page_id=4', 0, 'page', '', 0),
(5, 1, '2023-03-30 06:47:57', '2023-03-30 06:47:57', '', 'HOME', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2023-03-30 06:47:57', '2023-03-30 06:47:57', '', 4, 'http://localhost/college2/wordpress/index.php/2023/03/30/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2023-03-30 06:48:23', '2023-03-30 06:48:23', '&nbsp;\r\n<font color="blue"><h2><b>Address:</b> Sharnbasveshwar College Campus,Vidya Nagar, Kalaburagi, Karnataka 585103</h2></font>\r\n&nbsp;\r\n<div align="center">\r\n<font color="gray"><table border="1" cellspacing="5" cellpadding="5" align="center">\r\n<tbody>\r\n<tr>\r\n<th align="left">Sl.No.</th>\r\n<th align="left">DESIGNATION</th>\r\n<th align="left">FULL NAME</th>\r\n<th align="left">CONTACT NUMBER/FAX NUMBER/\r\nEMAIL ID</th>\r\n</tr></font>\r\n<tr>\r\n<td>1</td>\r\n<td>CHANCELLOR</td>\r\n<td>POOJYA DR.SHARNBASWAPPA APPA     <sub>HON.PRESIDENT OF THE SANGHA</sub></td>\r\n<td>M.9731794251, FAX. 08472-277855\r\nchancellor@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>2</td>\r\n<td>VICE-CHANCELLOR</td>\r\n<td>DR.NIRANJAN V.NISTY     <sub>MD.,Ph.D.</sub></td>\r\n<td>M.9448193308, FAX. 08472-277852\r\nvc@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>3</td>\r\n<td>PRO VICE-CHANCELLOR</td>\r\n<td>SRI. N.S.DEVARKAL     <sub> B.Sc.,M.A.,LLB.</sub></td>\r\n<td>M. 9449525057, FAX. 08472-241363\r\npro_vc@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>4</td>\r\n<td>PRO VICE-CHANCELLOR</td>\r\n<td>DR.V.D.MYTRI     <sub>M.Tech., Ph.D.</sub></td>\r\n<td>M. 9845020846, FAX. 08472-229835\r\npro_vc@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>5</td>\r\n<td>REGISTRAR</td>\r\n<td>DR.ANILKUMAR G.BIDVE     <sub>M.Sc., Ph.D.</sub></td>\r\n<td>M. 9243219188, FAX. 08472-277854\r\nregistrar@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>6</td>\r\n<td>REGISTRAR (EVAL.)</td>\r\n<td>DR.BASAVARAJ. S. MATHAPATI     <sub>M.Tech.,Ph.D.</sub></td>\r\n<td>M. 9448650187, FAX. 08443-292001,Phone: 08472-277811\r\nreg.eval@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>7</td>\r\n<td>DEAN</td>\r\n<td>DR.LAKSHMI PATIL     <sub>M.Tech.,Ph.D.</sub></td>\r\n<td>M. , FAX. 08443-292001,Phone: 08472-277844\r\ndean@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>8</td>\r\n<td>FINANCE OFFICER</td>\r\n<td>Prof.Kiran Maka  <sub>M.Tech., Ph.D.</sub></td>\r\n<td>M. 9632294958, FAX. 08472-277853\r\nfinanceo@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', 'contact us', '', 'publish', 'closed', 'closed', '', 'profile', '', '', '2023-03-31 07:10:38', '2023-03-31 07:10:38', '', 0, 'http://localhost/college2/wordpress/?page_id=6', 0, 'page', '', 0),
(7, 1, '2023-03-30 06:48:23', '2023-03-30 06:48:23', '', 'profile', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-03-30 06:48:23', '2023-03-30 06:48:23', '', 6, 'http://localhost/college2/wordpress/index.php/2023/03/30/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2023-03-30 06:48:40', '2023-03-30 06:48:40', '<div id="nav1">\r\n<h3><font color="skyblue">Welcome to Sharnbasva University</font></h3>\r\n</div>\r\n<!--more-->\r\n<div>\r\n<h4><font color="yellow"> Name and list of all the approval of the University</font></h4>\r\n<ol>\r\n 	<li>UGC</li>\r\n 	<li>Govt. of Karnataka</li>\r\n 	<li>AICTE</li>\r\n 	<li>COA</li>\r\n</ol>\r\n<h4>2. Name and list of scholarship scheme (Government or private ) for the students from jammu and Kashmir to take admission in our university</h4>\r\n1. OBC(Food and accommodation and fee concession)(All Course)\r\n2. Merit Cum means scholarship(Technical courses for Minority students)\r\n3. Post matric (Non-Technical course for minority students)\r\n4. AICTE scholarships\r\n5. Zindal scholarships\r\n6. SC/ST Scholarship for college fee\r\n7. SC/ST Scholarship for student share\r\n8. And any other from state/central govt. from time to time\r\n<h4>3. Name of list of scholarship schemes(Government or private ) for the students belonging to minority communities to take admission in our University</h4>\r\n1. Merit Cum means scholarship(Technical courses for Minority students)\r\n2. Post matric (Non-Technical course for minority students)\r\n3. And any other from state/central govt. from time to time\r\n<h4><a href="http://www.sharnbasvauniversity.edu.in/COURSES%20OFFERED%20AND%20ACADEMIC%20ELIGIBILITY.docx">4. The admission criteria for the students from Jammu and Kashmir in our university and various course options</a></h4>\r\n<h4>5. Name and list of all the courses offered by our university along with the fee structure</h4>\r\n<a href="http://www.sharnbasvauniversity.edu.in/fees_format_PG.docx">Fees format of PG</a>\r\n<a href="http://www.sharnbasvauniversity.edu.in/fees_format_UG.docx">Fees format of UG</a>\r\n\r\n</div>\r\n&nbsp;', 'Admission', '', 'publish', 'closed', 'closed', '', 'admission', '', '', '2023-03-30 08:31:15', '2023-03-30 08:31:15', '', 0, 'http://localhost/college2/wordpress/?page_id=8', 0, 'page', '', 0),
(9, 1, '2023-03-30 06:48:40', '2023-03-30 06:48:40', '', 'Admission', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-03-30 06:48:40', '2023-03-30 06:48:40', '', 8, 'http://localhost/college2/wordpress/index.php/2023/03/30/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2023-03-30 06:49:01', '2023-03-30 06:49:01', '<img class="alignnone size-medium wp-image-27" src="http://localhost/college2/wordpress/wp-content/uploads/2023/03/aiet1-300x169.jpg" alt="aiet1" width="300" height="169" />', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2023-03-30 08:09:15', '2023-03-30 08:09:15', '', 0, 'http://localhost/college2/wordpress/?page_id=10', 0, 'page', '', 0),
(11, 1, '2023-03-30 06:49:01', '2023-03-30 06:49:01', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-03-30 06:49:01', '2023-03-30 06:49:01', '', 10, 'http://localhost/college2/wordpress/index.php/2023/03/30/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2023-03-30 06:49:15', '2023-03-30 06:49:15', '<img src="http://www.sharnbasvauniversity.edu.in/header.jpg" alt="Flower" width="100%" height="100%" />\r\n<div><nav>\r\n<ul class="nav">\r\n 	<li>.</li>\r\n</ul>\r\n</nav></div>\r\n<div>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td align="top"><nav>\r\n<div id="John">\r\n\r\n<img src="http://www.sharnbasvauniversity.edu.in/img/sliders/Shivakumar%20Kagi.jpg" />\r\n<h4>Mr. Shivakumar Kagi  <sub>M.Tech., (Ph.D)</sub></h4>\r\n<h5>Assistant Professor</h5>\r\n<h5>Training &amp; Placement Officer</h5>\r\n<h6 align="left">Faculty of Engineering &amp; Technology(Co-Education),</h6>\r\n<h6 align="left">Department of Computer Science &amp; Engineering</h6>\r\n<h6 align="left">Sharnbasva University ,Kalaburagi</h6>\r\n<h6 align="left">Cell:9632574447</h6>\r\n<h6 align="left">E-mail:placement@sharnbasvauniversity.edu.in</h6>\r\n</div>\r\n</nav></td>\r\n<td>\r\n<div class="w3-main">\r\n<div id="Borge" class="w3-container person">\r\n\r\n<hr />\r\n\r\n<div></div>\r\n</div>\r\n</div></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<footer><a href="http://www.sharnbasvauniversity.edu.in/placement.html"><img src="http://www.sharnbasvauniversity.edu.in/facebook.png" alt="Facebook" width="30pt" height="25pt" /></a>       <a href="http://www.sharnbasvauniversity.edu.in/placement.html"><img src="http://www.sharnbasvauniversity.edu.in/Twitter.jpg" alt="Twitter" width="30pt" height="25pt" /></a>       <a href="http://www.sharnbasvauniversity.edu.in/placement.html"><img src="http://www.sharnbasvauniversity.edu.in/linkedin.png" alt="LinkedIn" width="30pt" height="25pt" /></a><center>Copyright © 2017 Sharnbasva University,Kalaburagi\r\nDesigned &amp; Developed by Department of Computer Science &amp; Engineering&nbsp;\r\n\r\n</center></footer></div>', 'placement', '', 'publish', 'closed', 'closed', '', 'result', '', '', '2023-03-30 08:25:14', '2023-03-30 08:25:14', '', 0, 'http://localhost/college2/wordpress/?page_id=12', 0, 'page', '', 0),
(13, 1, '2023-03-30 06:49:15', '2023-03-30 06:49:15', '', 'Result', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-03-30 06:49:15', '2023-03-30 06:49:15', '', 12, 'http://localhost/college2/wordpress/index.php/2023/03/30/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2023-03-30 07:12:26', '2023-03-30 07:12:26', '<img class="alignnone size-medium wp-image-18" src="http://localhost/college2/wordpress/wp-content/uploads/2023/03/header-300x58.jpg" alt="header" width="300" height="100" />', 'HOME', '', 'inherit', 'closed', 'closed', '', '4-autosave-v1', '', '', '2023-03-30 07:12:26', '2023-03-30 07:12:26', '', 4, 'http://localhost/college2/wordpress/index.php/2023/03/30/4-autosave-v1/', 0, 'revision', '', 0),
(15, 1, '2023-03-30 06:59:32', '2023-03-30 06:59:32', '\r\n<img src="header.jpg">', 'HOME', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2023-03-30 06:59:32', '2023-03-30 06:59:32', '', 4, 'http://localhost/college2/wordpress/index.php/2023/03/30/4-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2023-03-30 07:01:25', '2023-03-30 07:01:25', '<img src="C:\\wamp\\www\\college2">', 'HOME', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2023-03-30 07:01:25', '2023-03-30 07:01:25', '', 4, 'http://localhost/college2/wordpress/index.php/2023/03/30/4-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2023-03-30 07:02:19', '2023-03-30 07:02:19', '<img src="header.jpg">', 'HOME', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2023-03-30 07:02:19', '2023-03-30 07:02:19', '', 4, 'http://localhost/college2/wordpress/index.php/2023/03/30/4-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2023-03-30 07:04:26', '2023-03-30 07:04:26', '', 'header', '', 'inherit', 'open', 'closed', '', 'header', '', '', '2023-03-30 07:04:26', '2023-03-30 07:04:26', '', 4, 'http://localhost/college2/wordpress/wp-content/uploads/2023/03/header.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2023-03-30 07:05:28', '2023-03-30 07:05:28', '<img class="alignnone size-medium wp-image-18" src="http://localhost/college2/wordpress/wp-content/uploads/2023/03/header-300x58.jpg" alt="header" width="300" height="58" />', 'HOME', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2023-03-30 07:05:28', '2023-03-30 07:05:28', '', 4, 'http://localhost/college2/wordpress/index.php/2023/03/30/4-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2023-03-30 07:06:04', '2023-03-30 07:06:04', '<img class="alignnone size-medium wp-image-18" src="http://localhost/college2/wordpress/wp-content/uploads/2023/03/header-300x58.jpg" alt="header" width="300" height="100" />', 'HOME', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2023-03-30 07:06:04', '2023-03-30 07:06:04', '', 4, 'http://localhost/college2/wordpress/index.php/2023/03/30/4-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2023-03-30 07:06:30', '2023-03-30 07:06:30', '<img class="alignnone size-medium wp-image-18" src="http://localhost/college2/wordpress/wp-content/uploads/2023/03/header-300x58.jpg" alt="header" width="500" height="200" />', 'HOME', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2023-03-30 07:06:30', '2023-03-30 07:06:30', '', 4, 'http://localhost/college2/wordpress/index.php/2023/03/30/4-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2023-03-30 07:06:55', '2023-03-30 07:06:55', '<img class="alignnone size-medium wp-image-18" src="http://localhost/college2/wordpress/wp-content/uploads/2023/03/header-300x58.jpg" alt="header" width="300" height="100" />', 'HOME', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2023-03-30 07:06:55', '2023-03-30 07:06:55', '', 4, 'http://localhost/college2/wordpress/index.php/2023/03/30/4-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2023-03-30 07:11:23', '2023-03-30 07:11:23', '<img class="alignnone size-medium wp-image-18" src="http://localhost/college2/wordpress/wp-content/uploads/2023/03/header-300x58.jpg" alt="header" width="300" height="100" />\r\n<img src="aiet.jpg">', 'HOME', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2023-03-30 07:11:23', '2023-03-30 07:11:23', '', 4, 'http://localhost/college2/wordpress/index.php/2023/03/30/4-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2023-03-30 07:16:09', '2023-03-30 07:16:09', '', '03', '', 'inherit', 'open', 'closed', '', '03', '', '', '2023-03-30 07:16:09', '2023-03-30 07:16:09', '', 4, 'http://localhost/college2/wordpress/wp-content/uploads/2023/03/03.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2023-03-30 07:18:21', '2023-03-30 07:18:21', '<img class="alignnone size-medium wp-image-18" src="http://localhost/college2/wordpress/wp-content/uploads/2023/03/header-300x58.jpg" alt="header" width="300" height="100" />\r\n<img src="http://localhost/college2/wordpress/wp-content/uploads/2023/03/03.jpg">', 'HOME', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2023-03-30 07:18:21', '2023-03-30 07:18:21', '', 4, 'http://localhost/college2/wordpress/index.php/2023/03/30/4-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2023-03-30 07:18:44', '2023-03-30 07:18:44', '<img class="alignnone size-medium wp-image-18" src="http://localhost/college2/wordpress/wp-content/uploads/2023/03/header-300x58.jpg" alt="header" width="500" height="100" />\r\n<img src="http://localhost/college2/wordpress/wp-content/uploads/2023/03/03.jpg">', 'HOME', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2023-03-30 07:18:44', '2023-03-30 07:18:44', '', 4, 'http://localhost/college2/wordpress/index.php/2023/03/30/4-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2023-03-30 08:08:47', '2023-03-30 08:08:47', '', 'aiet1', '', 'inherit', 'open', 'closed', '', 'aiet1', '', '', '2023-03-30 08:08:47', '2023-03-30 08:08:47', '', 10, 'http://localhost/college2/wordpress/wp-content/uploads/2023/03/aiet1.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2023-03-30 08:09:15', '2023-03-30 08:09:15', '<img class="alignnone size-medium wp-image-27" src="http://localhost/college2/wordpress/wp-content/uploads/2023/03/aiet1-300x169.jpg" alt="aiet1" width="300" height="169" />', 'Gallery', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-03-30 08:09:15', '2023-03-30 08:09:15', '', 10, 'http://localhost/college2/wordpress/index.php/2023/03/30/10-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2023-03-30 08:30:03', '2023-03-30 08:30:03', '<div id="nav1">\n<h3><font color="skyblue">Welcome to Sharnbasva University</font></h3>\n</div>\n<!--more-->\n<div>\n<h4><font color="yellow"> Name and list of all the approval of the University</h4>\n<ol>\n 	<li>UGC</li>\n 	<li>Govt. of Karnataka</li>\n 	<li>AICTE</li>\n 	<li>COA</li>\n</ol>\n<h4>2. Name and list of scholarship scheme (Government or private ) for the students from jammu and Kashmir to take admission in our university</h4>\n1. OBC(Food and accommodation and fee concession)(All Course)\n2. Merit Cum means scholarship(Technical courses for Minority students)\n3. Post matric (Non-Technical course for minority students)\n4. AICTE scholarships\n5. Zindal scholarships\n6. SC/ST Scholarship for college fee\n7. SC/ST Scholarship for student share\n8. And any other from state/central govt. from time to time\n<h4>3. Name of list of scholarship schemes(Government or private ) for the students belonging to minority communities to take admission in our University</h4>\n1. Merit Cum means scholarship(Technical courses for Minority students)\n2. Post matric (Non-Technical course for minority students)\n3. And any other from state/central govt. from time to time\n<h4><a href="http://www.sharnbasvauniversity.edu.in/COURSES%20OFFERED%20AND%20ACADEMIC%20ELIGIBILITY.docx">4. The admission criteria for the students from Jammu and Kashmir in our university and various course options</a></h4>\n<h4>5. Name and list of all the courses offered by our university along with the fee structure</h4>\n<a href="http://www.sharnbasvauniversity.edu.in/fees_format_PG.docx">Fees format of PG</a>\n<a href="http://www.sharnbasvauniversity.edu.in/fees_format_UG.docx">Fees format of UG</a>\n\n</div>\n&nbsp;', 'Admission', '', 'inherit', 'closed', 'closed', '', '8-autosave-v1', '', '', '2023-03-30 08:30:03', '2023-03-30 08:30:03', '', 8, 'http://localhost/college2/wordpress/index.php/2023/03/30/8-autosave-v1/', 0, 'revision', '', 0),
(30, 1, '2023-03-30 08:13:53', '2023-03-30 08:13:53', '<div id="nav1">\r\n<h3>"Welcome to Sharnbasva University"</h3>\r\n</div>\r\n<div>\r\n<h4>1. Name and list of all the approval of the University</h4>\r\n<ol>\r\n 	<li>UGC</li>\r\n 	<li>Govt. of Karnataka</li>\r\n 	<li>AICTE</li>\r\n 	<li>COA</li>\r\n</ol>\r\n<h4>2. Name and list of scholarship scheme (Government or private ) for the students from jammu and Kashmir to take admission in our university</h4>\r\n1. OBC(Food and accommodation and fee concession)(All Course)\r\n2. Merit Cum means scholarship(Technical courses for Minority students)\r\n3. Post matric (Non-Technical course for minority students)\r\n4. AICTE scholarships\r\n5. Zindal scholarships\r\n6. SC/ST Scholarship for college fee\r\n7. SC/ST Scholarship for student share\r\n8. And any other from state/central govt. from time to time\r\n<h4>3. Name of list of scholarship schemes(Government or private ) for the students belonging to minority communities to take admission in our University</h4>\r\n1. Merit Cum means scholarship(Technical courses for Minority students)\r\n2. Post matric (Non-Technical course for minority students)\r\n3. And any other from state/central govt. from time to time\r\n<h4><a href="http://www.sharnbasvauniversity.edu.in/COURSES%20OFFERED%20AND%20ACADEMIC%20ELIGIBILITY.docx">4. The admission criteria for the students from Jammu and Kashmir in our university and various course options</a></h4>\r\n<h4>5. Name and list of all the courses offered by our university along with the fee structure</h4>\r\n<a href="http://www.sharnbasvauniversity.edu.in/fees_format_PG.docx">Fees format of PG</a>\r\n<a href="http://www.sharnbasvauniversity.edu.in/fees_format_UG.docx">Fees format of UG</a></div>\r\n&nbsp;', 'Admission', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-03-30 08:13:53', '2023-03-30 08:13:53', '', 8, 'http://localhost/college2/wordpress/index.php/2023/03/30/8-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2023-03-30 08:14:37', '2023-03-30 08:14:37', '', 'contact', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-03-30 08:14:37', '2023-03-30 08:14:37', '', 6, 'http://localhost/college2/wordpress/index.php/2023/03/30/6-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2023-03-30 08:15:33', '2023-03-30 08:15:33', '<center>\r\n<h2><b>Address:</b> Sharnbasveshwar College Campus,Vidya Nagar, Kalaburagi, Karnataka 585103</h2>\r\n</center>\r\n<div align="center">\r\n<table border="1" cellspacing="5" cellpadding="5" align="center">\r\n<tbody>\r\n<tr>\r\n<th align="left">Sl.No.</th>\r\n<th align="left">DESIGNATION</th>\r\n<th align="left">FULL NAME</th>\r\n<th align="left">CONTACT NUMBER/FAX NUMBER/\r\nEMAIL ID</th>\r\n</tr>\r\n<tr>\r\n<td>1</td>\r\n<td>CHANCELLOR</td>\r\n<td>POOJYA DR.SHARNBASWAPPA APPA     <sub>HON.PRESIDENT OF THE SANGHA</sub></td>\r\n<td>M.9731794251, FAX. 08472-277855\r\nchancellor@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>2</td>\r\n<td>VICE-CHANCELLOR</td>\r\n<td>DR.NIRANJAN V.NISTY     <sub>MD.,Ph.D.</sub></td>\r\n<td>M.9448193308, FAX. 08472-277852\r\nvc@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>3</td>\r\n<td>PRO VICE-CHANCELLOR</td>\r\n<td>SRI. N.S.DEVARKAL     <sub> B.Sc.,M.A.,LLB.</sub></td>\r\n<td>M. 9449525057, FAX. 08472-241363\r\npro_vc@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>4</td>\r\n<td>PRO VICE-CHANCELLOR</td>\r\n<td>DR.V.D.MYTRI     <sub>M.Tech., Ph.D.</sub></td>\r\n<td>M. 9845020846, FAX. 08472-229835\r\npro_vc@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>5</td>\r\n<td>REGISTRAR</td>\r\n<td>DR.ANILKUMAR G.BIDVE     <sub>M.Sc., Ph.D.</sub></td>\r\n<td>M. 9243219188, FAX. 08472-277854\r\nregistrar@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>6</td>\r\n<td>REGISTRAR (EVAL.)</td>\r\n<td>DR.BASAVARAJ. S. MATHAPATI     <sub>M.Tech.,Ph.D.</sub></td>\r\n<td>M. 9448650187, FAX. 08443-292001,Phone: 08472-277811\r\nreg.eval@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>7</td>\r\n<td>DEAN</td>\r\n<td>DR.LAKSHMI PATIL     <sub>M.Tech.,Ph.D.</sub></td>\r\n<td>M. , FAX. 08443-292001,Phone: 08472-277844\r\ndean@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>8</td>\r\n<td>FINANCE OFFICER</td>\r\n<td>Prof.Kiran Maka  <sub>M.Tech., Ph.D.</sub></td>\r\n<td>M. 9632294958, FAX. 08472-277853\r\nfinanceo@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', 'contact', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-03-30 08:15:33', '2023-03-30 08:15:33', '', 6, 'http://localhost/college2/wordpress/index.php/2023/03/30/6-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2023-03-30 08:15:42', '2023-03-30 08:15:42', '&nbsp;\r\n<h2><b>Address:</b> Sharnbasveshwar College Campus,Vidya Nagar, Kalaburagi, Karnataka 585103</h2>\r\n&nbsp;\r\n<div align="center">\r\n<table border="1" cellspacing="5" cellpadding="5" align="center">\r\n<tbody>\r\n<tr>\r\n<th align="left">Sl.No.</th>\r\n<th align="left">DESIGNATION</th>\r\n<th align="left">FULL NAME</th>\r\n<th align="left">CONTACT NUMBER/FAX NUMBER/\r\nEMAIL ID</th>\r\n</tr>\r\n<tr>\r\n<td>1</td>\r\n<td>CHANCELLOR</td>\r\n<td>POOJYA DR.SHARNBASWAPPA APPA     <sub>HON.PRESIDENT OF THE SANGHA</sub></td>\r\n<td>M.9731794251, FAX. 08472-277855\r\nchancellor@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>2</td>\r\n<td>VICE-CHANCELLOR</td>\r\n<td>DR.NIRANJAN V.NISTY     <sub>MD.,Ph.D.</sub></td>\r\n<td>M.9448193308, FAX. 08472-277852\r\nvc@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>3</td>\r\n<td>PRO VICE-CHANCELLOR</td>\r\n<td>SRI. N.S.DEVARKAL     <sub> B.Sc.,M.A.,LLB.</sub></td>\r\n<td>M. 9449525057, FAX. 08472-241363\r\npro_vc@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>4</td>\r\n<td>PRO VICE-CHANCELLOR</td>\r\n<td>DR.V.D.MYTRI     <sub>M.Tech., Ph.D.</sub></td>\r\n<td>M. 9845020846, FAX. 08472-229835\r\npro_vc@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>5</td>\r\n<td>REGISTRAR</td>\r\n<td>DR.ANILKUMAR G.BIDVE     <sub>M.Sc., Ph.D.</sub></td>\r\n<td>M. 9243219188, FAX. 08472-277854\r\nregistrar@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>6</td>\r\n<td>REGISTRAR (EVAL.)</td>\r\n<td>DR.BASAVARAJ. S. MATHAPATI     <sub>M.Tech.,Ph.D.</sub></td>\r\n<td>M. 9448650187, FAX. 08443-292001,Phone: 08472-277811\r\nreg.eval@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>7</td>\r\n<td>DEAN</td>\r\n<td>DR.LAKSHMI PATIL     <sub>M.Tech.,Ph.D.</sub></td>\r\n<td>M. , FAX. 08443-292001,Phone: 08472-277844\r\ndean@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>8</td>\r\n<td>FINANCE OFFICER</td>\r\n<td>Prof.Kiran Maka  <sub>M.Tech., Ph.D.</sub></td>\r\n<td>M. 9632294958, FAX. 08472-277853\r\nfinanceo@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', 'contact us', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-03-30 08:15:42', '2023-03-30 08:15:42', '', 6, 'http://localhost/college2/wordpress/index.php/2023/03/30/6-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2023-03-30 08:16:45', '2023-03-30 08:16:45', '', 'Exam', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-03-30 08:16:45', '2023-03-30 08:16:45', '', 12, 'http://localhost/college2/wordpress/index.php/2023/03/30/12-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2023-03-30 08:20:48', '2023-03-30 08:20:48', '<img src="http://www.sharnbasvauniversity.edu.in/header.jpg" alt="Flower" width="100%" height="100%" />\n<div><nav>\n<ul class="nav">\n 	<li>.</li>\n</ul>\n</nav></div>\n<div>\n<table>\n<tbody>\n<tr>\n<td align="top"><nav>\n<div id="John">\n<img src="http://www.sharnbasvauniversity.edu.in/img/sliders/Shivakumar%20Kagi.jpg" />\n<h4>Mr. Shivakumar Kagi  <sub>M.Tech., (Ph.D)</sub></h4>\n<h5>Assistant Professor</h5>\n<h5>Training &amp; Placement Officer</h5>\n<h6 align="left">Faculty of Engineering &amp; Technology(Co-Education),</h6>\n<h6 align="left">Department of Computer Science &amp; Engineering</h6>\n<h6 align="left">Sharnbasva University ,Kalaburagi</h6>\n<h6 align="left">Cell:9632574447</h6>\n<h6 align="left">E-mail:placement@sharnbasvauniversity.edu.in</h6>\n</div>\n</nav></td>\n<td>\n<div class="w3-main">\n<div id="Borge" class="w3-container person">\n\n<hr />\n\n<div><a href="http://www.sharnbasvauniversity.edu.in/img/sliders/News%20Paper%20Ad.jpg" target="_blank"><img src="http://www.sharnbasvauniversity.edu.in/img/sliders/News%20Paper%20Ad.jpg" width="100%" /></a></div>\n</div>\n</div></td>\n</tr>\n</tbody>\n</table>\n<footer>\n<a href="http://www.sharnbasvauniversity.edu.in/placement.html"><img src="http://www.sharnbasvauniversity.edu.in/facebook.png" alt="Facebook" width="30pt" height="25pt" /></a>       <a href="http://www.sharnbasvauniversity.edu.in/placement.html"><img src="http://www.sharnbasvauniversity.edu.in/Twitter.jpg" alt="Twitter" width="30pt" height="25pt" /></a>       <a href="http://www.sharnbasvauniversity.edu.in/placement.html"><img src="http://www.sharnbasvauniversity.edu.in/linkedin.png" alt="LinkedIn" width="30pt" height="25pt" /></a><center>Copyright © 2017 Sharnbasva University,Kalaburagi\nDesigned &amp; Developed by Department of Computer Science &amp; Engineering\n\n</center></footer></div>', 'placement', '', 'inherit', 'closed', 'closed', '', '12-autosave-v1', '', '', '2023-03-30 08:20:48', '2023-03-30 08:20:48', '', 12, 'http://localhost/college2/wordpress/index.php/2023/03/30/12-autosave-v1/', 0, 'revision', '', 0),
(36, 1, '2023-03-30 08:21:55', '2023-03-30 08:21:55', '<img src="http://www.sharnbasvauniversity.edu.in/header.jpg" alt="Flower" width="100%" height="100%" />\r\n<div><nav>\r\n<ul class="nav">\r\n 	<li>.</li>\r\n</ul>\r\n</nav></div>\r\n<div>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td align="top"><nav>\r\n<div id="John">\r\n<img src="http://www.sharnbasvauniversity.edu.in/img/sliders/Shivakumar%20Kagi.jpg" />\r\n<h4>Mr. Shivakumar Kagi  <sub>M.Tech., (Ph.D)</sub></h4>\r\n<h5>Assistant Professor</h5>\r\n<h5>Training &amp; Placement Officer</h5>\r\n<h6 align="left">Faculty of Engineering &amp; Technology(Co-Education),</h6>\r\n<h6 align="left">Department of Computer Science &amp; Engineering</h6>\r\n<h6 align="left">Sharnbasva University ,Kalaburagi</h6>\r\n<h6 align="left">Cell:9632574447</h6>\r\n<h6 align="left">E-mail:placement@sharnbasvauniversity.edu.in</h6>\r\n</div>\r\n</nav></td>\r\n<td>\r\n<div class="w3-main">\r\n<div id="Borge" class="w3-container person">\r\n\r\n<hr />\r\n\r\n<div><a href="http://www.sharnbasvauniversity.edu.in/img/sliders/News%20Paper%20Ad.jpg" target="_blank"><img src="http://www.sharnbasvauniversity.edu.in/img/sliders/News%20Paper%20Ad.jpg" width="400%" /></a></div>\r\n</div>\r\n</div></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<footer>\r\n<a href="http://www.sharnbasvauniversity.edu.in/placement.html"><img src="http://www.sharnbasvauniversity.edu.in/facebook.png" alt="Facebook" width="30pt" height="25pt" /></a>       <a href="http://www.sharnbasvauniversity.edu.in/placement.html"><img src="http://www.sharnbasvauniversity.edu.in/Twitter.jpg" alt="Twitter" width="30pt" height="25pt" /></a>       <a href="http://www.sharnbasvauniversity.edu.in/placement.html"><img src="http://www.sharnbasvauniversity.edu.in/linkedin.png" alt="LinkedIn" width="30pt" height="25pt" /></a><center>Copyright © 2017 Sharnbasva University,Kalaburagi\r\nDesigned &amp; Developed by Department of Computer Science &amp; Engineering\r\n\r\n</center></footer></div>', 'placement', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-03-30 08:21:55', '2023-03-30 08:21:55', '', 12, 'http://localhost/college2/wordpress/index.php/2023/03/30/12-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2023-03-30 08:23:33', '2023-03-30 08:23:33', '<img src="http://www.sharnbasvauniversity.edu.in/header.jpg" alt="Flower" width="100%" height="100%" />\r\n<div><nav>\r\n<ul class="nav">\r\n 	<li>.</li>\r\n</ul>\r\n</nav></div>\r\n<div>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td align="top"><nav>\r\n<div id="John"><img src="http://www.sharnbasvauniversity.edu.in/img/sliders/Shivakumar%20Kagi.jpg" />\r\n<h4>Mr. Shivakumar Kagi  <sub>M.Tech., (Ph.D)</sub></h4>\r\n<h5>Assistant Professor</h5>\r\n<h5>Training &amp; Placement Officer</h5>\r\n<h6 align="left">Faculty of Engineering &amp; Technology(Co-Education),</h6>\r\n<h6 align="left">Department of Computer Science &amp; Engineering</h6>\r\n<h6 align="left">Sharnbasva University ,Kalaburagi</h6>\r\n<h6 align="left">Cell:9632574447</h6>\r\n<h6 align="left">E-mail:placement@sharnbasvauniversity.edu.in</h6>\r\n</div>\r\n</nav></td>\r\n<td>\r\n<div class="w3-main">\r\n<div id="Borge" class="w3-container person">\r\n\r\n<hr />\r\n\r\n<div><a href="http://www.sharnbasvauniversity.edu.in/img/sliders/News%20Paper%20Ad.jpg" target="_blank"><img src="http://www.sharnbasvauniversity.edu.in/img/sliders/News%20Paper%20Ad.jpg" width="1000%" /></a></div>\r\n</div>\r\n</div></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<footer><a href="http://www.sharnbasvauniversity.edu.in/placement.html"><img src="http://www.sharnbasvauniversity.edu.in/facebook.png" alt="Facebook" width="30pt" height="25pt" /></a>       <a href="http://www.sharnbasvauniversity.edu.in/placement.html"><img src="http://www.sharnbasvauniversity.edu.in/Twitter.jpg" alt="Twitter" width="30pt" height="25pt" /></a>       <a href="http://www.sharnbasvauniversity.edu.in/placement.html"><img src="http://www.sharnbasvauniversity.edu.in/linkedin.png" alt="LinkedIn" width="30pt" height="25pt" /></a><center>Copyright © 2017 Sharnbasva University,Kalaburagi\r\nDesigned &amp; Developed by Department of Computer Science &amp; Engineering&nbsp;\r\n\r\n</center></footer></div>', 'placement', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-03-30 08:23:33', '2023-03-30 08:23:33', '', 12, 'http://localhost/college2/wordpress/index.php/2023/03/30/12-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2023-03-30 08:25:14', '2023-03-30 08:25:14', '<img src="http://www.sharnbasvauniversity.edu.in/header.jpg" alt="Flower" width="100%" height="100%" />\r\n<div><nav>\r\n<ul class="nav">\r\n 	<li>.</li>\r\n</ul>\r\n</nav></div>\r\n<div>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td align="top"><nav>\r\n<div id="John">\r\n\r\n<img src="http://www.sharnbasvauniversity.edu.in/img/sliders/Shivakumar%20Kagi.jpg" />\r\n<h4>Mr. Shivakumar Kagi  <sub>M.Tech., (Ph.D)</sub></h4>\r\n<h5>Assistant Professor</h5>\r\n<h5>Training &amp; Placement Officer</h5>\r\n<h6 align="left">Faculty of Engineering &amp; Technology(Co-Education),</h6>\r\n<h6 align="left">Department of Computer Science &amp; Engineering</h6>\r\n<h6 align="left">Sharnbasva University ,Kalaburagi</h6>\r\n<h6 align="left">Cell:9632574447</h6>\r\n<h6 align="left">E-mail:placement@sharnbasvauniversity.edu.in</h6>\r\n</div>\r\n</nav></td>\r\n<td>\r\n<div class="w3-main">\r\n<div id="Borge" class="w3-container person">\r\n\r\n<hr />\r\n\r\n<div></div>\r\n</div>\r\n</div></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<footer><a href="http://www.sharnbasvauniversity.edu.in/placement.html"><img src="http://www.sharnbasvauniversity.edu.in/facebook.png" alt="Facebook" width="30pt" height="25pt" /></a>       <a href="http://www.sharnbasvauniversity.edu.in/placement.html"><img src="http://www.sharnbasvauniversity.edu.in/Twitter.jpg" alt="Twitter" width="30pt" height="25pt" /></a>       <a href="http://www.sharnbasvauniversity.edu.in/placement.html"><img src="http://www.sharnbasvauniversity.edu.in/linkedin.png" alt="LinkedIn" width="30pt" height="25pt" /></a><center>Copyright © 2017 Sharnbasva University,Kalaburagi\r\nDesigned &amp; Developed by Department of Computer Science &amp; Engineering&nbsp;\r\n\r\n</center></footer></div>', 'placement', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-03-30 08:25:14', '2023-03-30 08:25:14', '', 12, 'http://localhost/college2/wordpress/index.php/2023/03/30/12-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2023-03-30 08:28:24', '2023-03-30 08:28:24', '<div id="nav1">\r\n<h3><font color="skyblue">Welcome to Sharnbasva University"</h3>\r\n</div>\r\n<!--more-->\r\n<div>\r\n<h4>1. Name and list of all the approval of the University</h4>\r\n<ol>\r\n 	<li>UGC</li>\r\n 	<li>Govt. of Karnataka</li>\r\n 	<li>AICTE</li>\r\n 	<li>COA</li>\r\n</ol>\r\n<h4>2. Name and list of scholarship scheme (Government or private ) for the students from jammu and Kashmir to take admission in our university</h4>\r\n1. OBC(Food and accommodation and fee concession)(All Course)\r\n2. Merit Cum means scholarship(Technical courses for Minority students)\r\n3. Post matric (Non-Technical course for minority students)\r\n4. AICTE scholarships\r\n5. Zindal scholarships\r\n6. SC/ST Scholarship for college fee\r\n7. SC/ST Scholarship for student share\r\n8. And any other from state/central govt. from time to time\r\n<h4>3. Name of list of scholarship schemes(Government or private ) for the students belonging to minority communities to take admission in our University</h4>\r\n1. Merit Cum means scholarship(Technical courses for Minority students)\r\n2. Post matric (Non-Technical course for minority students)\r\n3. And any other from state/central govt. from time to time\r\n<h4><a href="http://www.sharnbasvauniversity.edu.in/COURSES%20OFFERED%20AND%20ACADEMIC%20ELIGIBILITY.docx">4. The admission criteria for the students from Jammu and Kashmir in our university and various course options</a></h4>\r\n<h4>5. Name and list of all the courses offered by our university along with the fee structure</h4>\r\n<a href="http://www.sharnbasvauniversity.edu.in/fees_format_PG.docx">Fees format of PG</a>\r\n<a href="http://www.sharnbasvauniversity.edu.in/fees_format_UG.docx">Fees format of UG</a>\r\n\r\n</div>\r\n&nbsp;', 'Admission', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-03-30 08:28:24', '2023-03-30 08:28:24', '', 8, 'http://localhost/college2/wordpress/index.php/2023/03/30/8-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2023-03-30 08:29:00', '2023-03-30 08:29:00', '<div id="nav1">\r\n<h3><font color="skyblue">Welcome to Sharnbasva University</font></h3>\r\n</div>\r\n<!--more-->\r\n<div>\r\n<h4>1. Name and list of all the approval of the University</h4>\r\n<ol>\r\n 	<li>UGC</li>\r\n 	<li>Govt. of Karnataka</li>\r\n 	<li>AICTE</li>\r\n 	<li>COA</li>\r\n</ol>\r\n<h4>2. Name and list of scholarship scheme (Government or private ) for the students from jammu and Kashmir to take admission in our university</h4>\r\n1. OBC(Food and accommodation and fee concession)(All Course)\r\n2. Merit Cum means scholarship(Technical courses for Minority students)\r\n3. Post matric (Non-Technical course for minority students)\r\n4. AICTE scholarships\r\n5. Zindal scholarships\r\n6. SC/ST Scholarship for college fee\r\n7. SC/ST Scholarship for student share\r\n8. And any other from state/central govt. from time to time\r\n<h4>3. Name of list of scholarship schemes(Government or private ) for the students belonging to minority communities to take admission in our University</h4>\r\n1. Merit Cum means scholarship(Technical courses for Minority students)\r\n2. Post matric (Non-Technical course for minority students)\r\n3. And any other from state/central govt. from time to time\r\n<h4><a href="http://www.sharnbasvauniversity.edu.in/COURSES%20OFFERED%20AND%20ACADEMIC%20ELIGIBILITY.docx">4. The admission criteria for the students from Jammu and Kashmir in our university and various course options</a></h4>\r\n<h4>5. Name and list of all the courses offered by our university along with the fee structure</h4>\r\n<a href="http://www.sharnbasvauniversity.edu.in/fees_format_PG.docx">Fees format of PG</a>\r\n<a href="http://www.sharnbasvauniversity.edu.in/fees_format_UG.docx">Fees format of UG</a>\r\n\r\n</div>\r\n&nbsp;', 'Admission', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-03-30 08:29:00', '2023-03-30 08:29:00', '', 8, 'http://localhost/college2/wordpress/index.php/2023/03/30/8-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2023-03-30 08:30:22', '2023-03-30 08:30:22', '<div id="nav1">\r\n<h3><font color="skyblue">Welcome to Sharnbasva University</font></h3>\r\n</div>\r\n<!--more-->\r\n<div>\r\n<h4><font color="yellow"> Name and list of all the approval of the University</font></h4>\r\n<ol>\r\n 	<li>UGC</li>\r\n 	<li>Govt. of Karnataka</li>\r\n 	<li>AICTE</li>\r\n 	<li>COA</li>\r\n</ol>\r\n<h4>2. Name and list of scholarship scheme (Government or private ) for the students from jammu and Kashmir to take admission in our university</h4>\r\n1. OBC(Food and accommodation and fee concession)(All Course)\r\n2. Merit Cum means scholarship(Technical courses for Minority students)\r\n3. Post matric (Non-Technical course for minority students)\r\n4. AICTE scholarships\r\n5. Zindal scholarships\r\n6. SC/ST Scholarship for college fee\r\n7. SC/ST Scholarship for student share\r\n8. And any other from state/central govt. from time to time\r\n<h4>3. Name of list of scholarship schemes(Government or private ) for the students belonging to minority communities to take admission in our University</h4>\r\n1. Merit Cum means scholarship(Technical courses for Minority students)\r\n2. Post matric (Non-Technical course for minority students)\r\n3. And any other from state/central govt. from time to time\r\n<h4><a href="http://www.sharnbasvauniversity.edu.in/COURSES%20OFFERED%20AND%20ACADEMIC%20ELIGIBILITY.docx">4. The admission criteria for the students from Jammu and Kashmir in our university and various course options</a></h4>\r\n<h4>5. Name and list of all the courses offered by our university along with the fee structure</h4>\r\n<a href="http://www.sharnbasvauniversity.edu.in/fees_format_PG.docx">Fees format of PG</a>\r\n<a href="http://www.sharnbasvauniversity.edu.in/fees_format_UG.docx">Fees format of UG</a>\r\n\r\n</div>\r\n&nbsp;', 'Admission', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-03-30 08:30:22', '2023-03-30 08:30:22', '', 8, 'http://localhost/college2/wordpress/index.php/2023/03/30/8-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2023-03-31 06:46:03', '2023-03-31 06:46:03', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2023-03-31 06:46:10', '2023-03-31 06:46:10', '', 0, 'http://localhost/college2/wordpress/?p=42', 1, 'nav_menu_item', '', 0),
(43, 1, '2023-03-31 06:46:03', '2023-03-31 06:46:03', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2023-03-31 06:46:10', '2023-03-31 06:46:10', '', 0, 'http://localhost/college2/wordpress/?p=43', 2, 'nav_menu_item', '', 0),
(44, 1, '2023-03-31 06:46:03', '2023-03-31 06:46:03', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2023-03-31 06:46:10', '2023-03-31 06:46:10', '', 0, 'http://localhost/college2/wordpress/?p=44', 3, 'nav_menu_item', '', 0),
(45, 1, '2023-03-31 06:46:03', '2023-03-31 06:46:03', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2023-03-31 06:46:10', '2023-03-31 06:46:10', '', 0, 'http://localhost/college2/wordpress/?p=45', 4, 'nav_menu_item', '', 0),
(46, 1, '2023-03-31 06:46:03', '2023-03-31 06:46:03', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2023-03-31 06:46:10', '2023-03-31 06:46:10', '', 0, 'http://localhost/college2/wordpress/?p=46', 5, 'nav_menu_item', '', 0),
(47, 1, '2023-03-31 06:49:43', '2023-03-31 06:49:43', '&nbsp;<bg color="navyblue">\r\n<h2><b>Address:</b> Sharnbasveshwar College Campus,Vidya Nagar, Kalaburagi, Karnataka 585103</h2>\r\n&nbsp;\r\n<div align="center">\r\n<table border="1" cellspacing="5" cellpadding="5" align="center">\r\n<tbody>\r\n<tr>\r\n<th align="left">Sl.No.</th>\r\n<th align="left">DESIGNATION</th>\r\n<th align="left">FULL NAME</th>\r\n<th align="left">CONTACT NUMBER/FAX NUMBER/\r\nEMAIL ID</th>\r\n</tr>\r\n<tr>\r\n<td>1</td>\r\n<td>CHANCELLOR</td>\r\n<td>POOJYA DR.SHARNBASWAPPA APPA     <sub>HON.PRESIDENT OF THE SANGHA</sub></td>\r\n<td>M.9731794251, FAX. 08472-277855\r\nchancellor@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>2</td>\r\n<td>VICE-CHANCELLOR</td>\r\n<td>DR.NIRANJAN V.NISTY     <sub>MD.,Ph.D.</sub></td>\r\n<td>M.9448193308, FAX. 08472-277852\r\nvc@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>3</td>\r\n<td>PRO VICE-CHANCELLOR</td>\r\n<td>SRI. N.S.DEVARKAL     <sub> B.Sc.,M.A.,LLB.</sub></td>\r\n<td>M. 9449525057, FAX. 08472-241363\r\npro_vc@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>4</td>\r\n<td>PRO VICE-CHANCELLOR</td>\r\n<td>DR.V.D.MYTRI     <sub>M.Tech., Ph.D.</sub></td>\r\n<td>M. 9845020846, FAX. 08472-229835\r\npro_vc@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>5</td>\r\n<td>REGISTRAR</td>\r\n<td>DR.ANILKUMAR G.BIDVE     <sub>M.Sc., Ph.D.</sub></td>\r\n<td>M. 9243219188, FAX. 08472-277854\r\nregistrar@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>6</td>\r\n<td>REGISTRAR (EVAL.)</td>\r\n<td>DR.BASAVARAJ. S. MATHAPATI     <sub>M.Tech.,Ph.D.</sub></td>\r\n<td>M. 9448650187, FAX. 08443-292001,Phone: 08472-277811\r\nreg.eval@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>7</td>\r\n<td>DEAN</td>\r\n<td>DR.LAKSHMI PATIL     <sub>M.Tech.,Ph.D.</sub></td>\r\n<td>M. , FAX. 08443-292001,Phone: 08472-277844\r\ndean@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>8</td>\r\n<td>FINANCE OFFICER</td>\r\n<td>Prof.Kiran Maka  <sub>M.Tech., Ph.D.</sub></td>\r\n<td>M. 9632294958, FAX. 08472-277853\r\nfinanceo@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', 'contact us', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-03-31 06:49:43', '2023-03-31 06:49:43', '', 6, 'http://localhost/college2/wordpress/index.php/2023/03/31/6-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2023-03-31 06:52:57', '2023-03-31 06:52:57', '', 'cloud', '', 'inherit', 'open', 'closed', '', 'cloud', '', '', '2023-03-31 06:52:57', '2023-03-31 06:52:57', '', 0, 'http://localhost/college2/wordpress/wp-content/uploads/2023/03/cloud.pptx', 0, 'attachment', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', 0),
(49, 1, '2023-03-31 06:53:33', '2023-03-31 06:53:33', 'http://localhost/college2/wordpress/wp-content/uploads/2023/03/cropped-aiet1.jpg', 'cropped-aiet1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-aiet1-jpg', '', '', '2023-03-31 06:53:33', '2023-03-31 06:53:33', '', 0, 'http://localhost/college2/wordpress/wp-content/uploads/2023/03/cropped-aiet1.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2023-03-31 06:59:13', '2023-03-31 06:59:13', '', 'cropped-header.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-header-jpg', '', '', '2023-03-31 06:59:13', '2023-03-31 06:59:13', '', 0, 'http://localhost/college2/wordpress/wp-content/uploads/2023/03/cropped-header.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2023-03-31 07:00:34', '2023-03-31 07:00:34', '', 'cropped-header-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-header-1-jpg', '', '', '2023-03-31 07:00:34', '2023-03-31 07:00:34', '', 0, 'http://localhost/college2/wordpress/wp-content/uploads/2023/03/cropped-header-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2023-03-31 07:02:12', '2023-03-31 07:02:12', '', 'b612_20181121_122856_943', '', 'inherit', 'open', 'closed', '', 'b612_20181121_122856_943', '', '', '2023-03-31 07:02:12', '2023-03-31 07:02:12', '', 0, 'http://localhost/college2/wordpress/wp-content/uploads/2023/03/B612_20181121_122856_943.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2023-03-31 07:08:01', '2023-03-31 07:08:01', '&nbsp;\r\n<font color="blue"><h2><b>Address:</b> Sharnbasveshwar College Campus,Vidya Nagar, Kalaburagi, Karnataka 585103</h2></font>\r\n&nbsp;\r\n<div align="center">\r\n<table border="1" cellspacing="5" cellpadding="5" align="center">\r\n<tbody>\r\n<tr>\r\n<th align="left">Sl.No.</th>\r\n<th align="left">DESIGNATION</th>\r\n<th align="left">FULL NAME</th>\r\n<th align="left">CONTACT NUMBER/FAX NUMBER/\r\nEMAIL ID</th>\r\n</tr>\r\n<tr>\r\n<td>1</td>\r\n<td>CHANCELLOR</td>\r\n<td>POOJYA DR.SHARNBASWAPPA APPA     <sub>HON.PRESIDENT OF THE SANGHA</sub></td>\r\n<td>M.9731794251, FAX. 08472-277855\r\nchancellor@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>2</td>\r\n<td>VICE-CHANCELLOR</td>\r\n<td>DR.NIRANJAN V.NISTY     <sub>MD.,Ph.D.</sub></td>\r\n<td>M.9448193308, FAX. 08472-277852\r\nvc@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>3</td>\r\n<td>PRO VICE-CHANCELLOR</td>\r\n<td>SRI. N.S.DEVARKAL     <sub> B.Sc.,M.A.,LLB.</sub></td>\r\n<td>M. 9449525057, FAX. 08472-241363\r\npro_vc@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>4</td>\r\n<td>PRO VICE-CHANCELLOR</td>\r\n<td>DR.V.D.MYTRI     <sub>M.Tech., Ph.D.</sub></td>\r\n<td>M. 9845020846, FAX. 08472-229835\r\npro_vc@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>5</td>\r\n<td>REGISTRAR</td>\r\n<td>DR.ANILKUMAR G.BIDVE     <sub>M.Sc., Ph.D.</sub></td>\r\n<td>M. 9243219188, FAX. 08472-277854\r\nregistrar@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>6</td>\r\n<td>REGISTRAR (EVAL.)</td>\r\n<td>DR.BASAVARAJ. S. MATHAPATI     <sub>M.Tech.,Ph.D.</sub></td>\r\n<td>M. 9448650187, FAX. 08443-292001,Phone: 08472-277811\r\nreg.eval@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>7</td>\r\n<td>DEAN</td>\r\n<td>DR.LAKSHMI PATIL     <sub>M.Tech.,Ph.D.</sub></td>\r\n<td>M. , FAX. 08443-292001,Phone: 08472-277844\r\ndean@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>8</td>\r\n<td>FINANCE OFFICER</td>\r\n<td>Prof.Kiran Maka  <sub>M.Tech., Ph.D.</sub></td>\r\n<td>M. 9632294958, FAX. 08472-277853\r\nfinanceo@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', 'contact us', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-03-31 07:08:01', '2023-03-31 07:08:01', '', 6, 'http://localhost/college2/wordpress/index.php/2023/03/31/6-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(54, 1, '2023-03-31 07:10:21', '2023-03-31 07:10:21', '&nbsp;\r\n<font color="blue"><h2><b>Address:</b> Sharnbasveshwar College Campus,Vidya Nagar, Kalaburagi, Karnataka 585103</h2></font>\r\n&nbsp;\r\n<div align="center">\r\n<font color="gray"><table border="1" cellspacing="5" cellpadding="5" align="center">\r\n<tbody>\r\n<tr>\r\n<th align="left">Sl.No.</th>\r\n<th align="left">DESIGNATION</th>\r\n<th align="left">FULL NAME</th>\r\n<th align="left">CONTACT NUMBER/FAX NUMBER/\r\nEMAIL ID</th>\r\n</tr></font>\r\n<tr>\r\n<td>1</td>\r\n<td>CHANCELLOR</td>\r\n<td>POOJYA DR.SHARNBASWAPPA APPA     <sub>HON.PRESIDENT OF THE SANGHA</sub></td>\r\n<td>M.9731794251, FAX. 08472-277855\r\nchancellor@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>2</td>\r\n<td>VICE-CHANCELLOR</td>\r\n<td>DR.NIRANJAN V.NISTY     <sub>MD.,Ph.D.</sub></td>\r\n<td>M.9448193308, FAX. 08472-277852\r\nvc@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>3</td>\r\n<td>PRO VICE-CHANCELLOR</td>\r\n<td>SRI. N.S.DEVARKAL     <sub> B.Sc.,M.A.,LLB.</sub></td>\r\n<td>M. 9449525057, FAX. 08472-241363\r\npro_vc@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>4</td>\r\n<td>PRO VICE-CHANCELLOR</td>\r\n<td>DR.V.D.MYTRI     <sub>M.Tech., Ph.D.</sub></td>\r\n<td>M. 9845020846, FAX. 08472-229835\r\npro_vc@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>5</td>\r\n<td>REGISTRAR</td>\r\n<td>DR.ANILKUMAR G.BIDVE     <sub>M.Sc., Ph.D.</sub></td>\r\n<td>M. 9243219188, FAX. 08472-277854\r\nregistrar@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>6</td>\r\n<td>REGISTRAR (EVAL.)</td>\r\n<td>DR.BASAVARAJ. S. MATHAPATI     <sub>M.Tech.,Ph.D.</sub></td>\r\n<td>M. 9448650187, FAX. 08443-292001,Phone: 08472-277811\r\nreg.eval@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>7</td>\r\n<td>DEAN</td>\r\n<td>DR.LAKSHMI PATIL     <sub>M.Tech.,Ph.D.</sub></td>\r\n<td>M. , FAX. 08443-292001,Phone: 08472-277844\r\ndean@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n<tr>\r\n<td>8</td>\r\n<td>FINANCE OFFICER</td>\r\n<td>Prof.Kiran Maka  <sub>M.Tech., Ph.D.</sub></td>\r\n<td>M. 9632294958, FAX. 08472-277853\r\nfinanceo@sharnbasvauniversity.edu.in</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', 'contact us', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-03-31 07:10:21', '2023-03-31 07:10:21', '', 6, 'http://localhost/college2/wordpress/index.php/2023/03/31/6-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2023-04-01 06:36:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-04-01 06:36:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/college2/wordpress/?post_type=easyimageslider&p=56', 0, 'easyimageslider', '', 0),
(57, 1, '2023-04-01 06:37:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-04-01 06:37:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/college2/wordpress/?post_type=easyimageslider&p=57', 0, 'easyimageslider', '', 0),
(58, 1, '2023-04-01 06:39:48', '2023-04-01 06:39:48', '', '', '', 'publish', 'closed', 'closed', '', '58', '', '', '2023-04-01 06:39:55', '2023-04-01 06:39:55', '', 0, 'http://localhost/college2/wordpress/?post_type=easyimageslider&#038;p=58', 0, 'easyimageslider', '', 0),
(59, 1, '2023-04-01 06:38:53', '2023-04-01 06:38:53', '', 'enterance-view', '', 'inherit', 'open', 'closed', '', 'enterance-view', '', '', '2023-04-01 06:38:53', '2023-04-01 06:38:53', '', 0, 'http://localhost/college2/wordpress/wp-content/uploads/2023/04/enterance-view.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2023-04-01 06:38:56', '2023-04-01 06:38:56', '', 'enterance-view', '', 'inherit', 'open', 'closed', '', 'enterance-view-2', '', '', '2023-04-01 06:38:56', '2023-04-01 06:38:56', '', 0, 'http://localhost/college2/wordpress/wp-content/uploads/2023/04/enterance-view-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2023-04-01 07:52:04', '2023-04-01 07:52:04', '', 'aiet1', '', 'inherit', 'open', 'closed', '', 'aiet1-2', '', '', '2023-04-01 07:52:04', '2023-04-01 07:52:04', '', 0, 'http://localhost/college2/wordpress/wp-content/uploads/2023/04/aiet1.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_termmeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'menu2', 'menu2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(42, 2, 0),
(43, 2, 0),
(44, 2, 0),
(45, 2, 0),
(46, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `wp_usermeta`
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
(14, 1, 'session_tokens', 'a:1:{s:64:"4f41b0f001e74390b3888c8d45bdbd92509e3d4119b588c063922bdaa6e08ddb";a:4:{s:10:"expiration";i:1681367933;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36";s:5:"login";i:1680158333;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'wp_user-settings', 'editor=html&libraryContent=browse'),
(17, 1, 'wp_user-settings-time', '1680331184'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B7xP37Z9xVEZ0Ezu1Enh7WhSefL.He1', 'admin', 'antusr@gmail.com', '', '2023-03-30 06:38:14', '', 0, 'admin');
