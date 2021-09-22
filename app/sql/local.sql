-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-09-15 14:52:59','2021-09-15 14:52:59','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://atlaswp.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://atlaswp.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Atlas-Audio','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=9&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:2:{i:0;s:41:\"advanced-custom-fields-pro-master/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','atlasTheme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','atlasTheme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','12','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','9','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1647269578','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (104,'cron','a:7:{i:1632243180;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1632279180;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1632322380;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1632323203;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1632323204;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1632408780;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key',';6T-1I|1W{XP.0=rOCNK4(e)%:|i*CQx;f;Hl6Bh_w7TVHc>A3w*V0|P/D:wIRu^','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','K?&*NC?PO#^e8B-5)j#~vd3Ua#RplS7*u 4CzCB r8ASx%5TXf~:5Tr5>.r!s?dK','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (121,'theme_mods_twentytwentyone','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1631718411;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (122,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (123,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.1\";s:7:\"version\";s:5:\"5.8.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1632236394;s:15:\"version_checked\";s:5:\"5.8.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (128,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1632236400;s:7:\"checked\";a:2:{s:10:\"atlasTheme\";s:0:\"\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (129,'_site_transient_timeout_browser_03e911a5967ec7b63385b961401fc927','1632323204','no');
INSERT INTO `wp_options` VALUES (130,'_site_transient_browser_03e911a5967ec7b63385b961401fc927','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"93.0.4577.82\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (131,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1632323204','no');
INSERT INTO `wp_options` VALUES (132,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (146,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (147,'current_theme','Atlas Theme','yes');
INSERT INTO `wp_options` VALUES (148,'theme_mods_atlasTheme','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:17;}','yes');
INSERT INTO `wp_options` VALUES (149,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (152,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (159,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (171,'_transient_health-check-site-status-result','{\"good\":14,\"recommended\":3,\"critical\":1}','yes');
INSERT INTO `wp_options` VALUES (186,'widget_recent-comments','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (187,'widget_recent-posts','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (190,'site_logo','17','yes');
INSERT INTO `wp_options` VALUES (191,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (199,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (215,'acf_version','5.8.7','yes');
INSERT INTO `wp_options` VALUES (237,'new_admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (241,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (271,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1632236399;s:8:\"response\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:6:\"5.10.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.8\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}}}','no');
INSERT INTO `wp_options` VALUES (282,'_transient_timeout_acf_plugin_updates','1632318002','no');
INSERT INTO `wp_options` VALUES (283,'_transient_acf_plugin_updates','a:4:{s:7:\"plugins\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:6:\"5.10.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.8\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";s:5:\"5.8.7\";}}','no');
INSERT INTO `wp_options` VALUES (307,'_site_transient_timeout_theme_roots','1632238199','no');
INSERT INTO `wp_options` VALUES (308,'_site_transient_theme_roots','a:2:{s:10:\"atlasTheme\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=655 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_lock','1631719240:1');
INSERT INTO `wp_postmeta` VALUES (4,6,'_edit_lock','1631719280:1');
INSERT INTO `wp_postmeta` VALUES (5,7,'_edit_lock','1631719280:1');
INSERT INTO `wp_postmeta` VALUES (6,9,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (8,9,'_edit_lock','1632168152:1');
INSERT INTO `wp_postmeta` VALUES (11,12,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (13,12,'_edit_lock','1631719301:1');
INSERT INTO `wp_postmeta` VALUES (26,16,'_wp_attached_file','2021/09/logo.png');
INSERT INTO `wp_postmeta` VALUES (27,16,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:57;s:6:\"height\";i:57;s:4:\"file\";s:16:\"2021/09/logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (28,17,'_wp_attached_file','2021/09/cropped-logo.png');
INSERT INTO `wp_postmeta` VALUES (29,17,'_wp_attachment_context','custom-logo');
INSERT INTO `wp_postmeta` VALUES (30,17,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:57;s:6:\"height\";i:57;s:4:\"file\";s:24:\"2021/09/cropped-logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (31,18,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (32,18,'_wp_trash_meta_time','1631805988');
INSERT INTO `wp_postmeta` VALUES (33,19,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (34,19,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (35,19,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (36,19,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (37,19,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (38,19,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (39,19,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (40,19,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (62,23,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (63,23,'_edit_lock','1632066491:1');
INSERT INTO `wp_postmeta` VALUES (64,9,'instagram_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:39:\"https://www.instagram.com/atlasaudiouk/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (65,9,'_instagram_link','field_6143af8c56765');
INSERT INTO `wp_postmeta` VALUES (66,9,'facebook_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://www.facebook.com/AtlasAudioUK\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (67,9,'_facebook_link','field_6143af5c56764');
INSERT INTO `wp_postmeta` VALUES (68,9,'youtube_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:56:\"https://www.youtube.com/channel/UCsbBix1KNZYDmftlwQplQuw\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (69,9,'_youtube_link','field_6143afa256766');
INSERT INTO `wp_postmeta` VALUES (70,9,'soundcloud_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:44:\"https://soundcloud.com/atlas-audio-490771776\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (71,9,'_soundcloud_link','field_6143afb756767');
INSERT INTO `wp_postmeta` VALUES (72,9,'linkedin_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:50:\"https://www.linkedin.com/in/atlas-audio-006364214/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (73,9,'_linkedin_link','field_6143afc456768');
INSERT INTO `wp_postmeta` VALUES (74,29,'instagram_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:39:\"https://www.instagram.com/atlasaudiouk/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (75,29,'_instagram_link','field_6143af8c56765');
INSERT INTO `wp_postmeta` VALUES (76,29,'facebook_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://www.facebook.com/AtlasAudioUK\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (77,29,'_facebook_link','field_6143af5c56764');
INSERT INTO `wp_postmeta` VALUES (78,29,'youtube_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:56:\"https://www.youtube.com/channel/UCsbBix1KNZYDmftlwQplQuw\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (79,29,'_youtube_link','field_6143afa256766');
INSERT INTO `wp_postmeta` VALUES (80,29,'soundcloud_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:44:\"https://soundcloud.com/atlas-audio-490771776\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (81,29,'_soundcloud_link','field_6143afb756767');
INSERT INTO `wp_postmeta` VALUES (82,29,'linkedin_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:50:\"https://www.linkedin.com/in/atlas-audio-006364214/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (83,29,'_linkedin_link','field_6143afc456768');
INSERT INTO `wp_postmeta` VALUES (84,19,'_wp_old_date','2021-09-16');
INSERT INTO `wp_postmeta` VALUES (85,30,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (86,30,'_edit_lock','1632062085:1');
INSERT INTO `wp_postmeta` VALUES (87,32,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (88,32,'_edit_lock','1632169061:1');
INSERT INTO `wp_postmeta` VALUES (89,34,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (90,34,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (91,34,'_menu_item_object_id','32');
INSERT INTO `wp_postmeta` VALUES (92,34,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (93,34,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (94,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (95,34,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (96,34,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (98,35,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (99,35,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (100,35,'_menu_item_object_id','30');
INSERT INTO `wp_postmeta` VALUES (101,35,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (102,35,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (103,35,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (104,35,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (105,35,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (107,36,'instagram_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:39:\"https://www.instagram.com/atlasaudiouk/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (108,36,'_instagram_link','field_6143af8c56765');
INSERT INTO `wp_postmeta` VALUES (109,36,'facebook_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://www.facebook.com/AtlasAudioUK\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (110,36,'_facebook_link','field_6143af5c56764');
INSERT INTO `wp_postmeta` VALUES (111,36,'youtube_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:56:\"https://www.youtube.com/channel/UCsbBix1KNZYDmftlwQplQuw\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (112,36,'_youtube_link','field_6143afa256766');
INSERT INTO `wp_postmeta` VALUES (113,36,'soundcloud_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:44:\"https://soundcloud.com/atlas-audio-490771776\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (114,36,'_soundcloud_link','field_6143afb756767');
INSERT INTO `wp_postmeta` VALUES (115,36,'linkedin_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:50:\"https://www.linkedin.com/in/atlas-audio-006364214/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (116,36,'_linkedin_link','field_6143afc456768');
INSERT INTO `wp_postmeta` VALUES (117,37,'instagram_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:39:\"https://www.instagram.com/atlasaudiouk/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (118,37,'_instagram_link','field_6143af8c56765');
INSERT INTO `wp_postmeta` VALUES (119,37,'facebook_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://www.facebook.com/AtlasAudioUK\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (120,37,'_facebook_link','field_6143af5c56764');
INSERT INTO `wp_postmeta` VALUES (121,37,'youtube_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:56:\"https://www.youtube.com/channel/UCsbBix1KNZYDmftlwQplQuw\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (122,37,'_youtube_link','field_6143afa256766');
INSERT INTO `wp_postmeta` VALUES (123,37,'soundcloud_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:44:\"https://soundcloud.com/atlas-audio-490771776\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (124,37,'_soundcloud_link','field_6143afb756767');
INSERT INTO `wp_postmeta` VALUES (125,37,'linkedin_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:50:\"https://www.linkedin.com/in/atlas-audio-006364214/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (126,37,'_linkedin_link','field_6143afc456768');
INSERT INTO `wp_postmeta` VALUES (127,38,'instagram_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:39:\"https://www.instagram.com/atlasaudiouk/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (128,38,'_instagram_link','field_6143af8c56765');
INSERT INTO `wp_postmeta` VALUES (129,38,'facebook_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://www.facebook.com/AtlasAudioUK\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (130,38,'_facebook_link','field_6143af5c56764');
INSERT INTO `wp_postmeta` VALUES (131,38,'youtube_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:56:\"https://www.youtube.com/channel/UCsbBix1KNZYDmftlwQplQuw\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (132,38,'_youtube_link','field_6143afa256766');
INSERT INTO `wp_postmeta` VALUES (133,38,'soundcloud_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:44:\"https://soundcloud.com/atlas-audio-490771776\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (134,38,'_soundcloud_link','field_6143afb756767');
INSERT INTO `wp_postmeta` VALUES (135,38,'linkedin_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:50:\"https://www.linkedin.com/in/atlas-audio-006364214/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (136,38,'_linkedin_link','field_6143afc456768');
INSERT INTO `wp_postmeta` VALUES (137,39,'instagram_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:39:\"https://www.instagram.com/atlasaudiouk/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (138,39,'_instagram_link','field_6143af8c56765');
INSERT INTO `wp_postmeta` VALUES (139,39,'facebook_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://www.facebook.com/AtlasAudioUK\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (140,39,'_facebook_link','field_6143af5c56764');
INSERT INTO `wp_postmeta` VALUES (141,39,'youtube_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:56:\"https://www.youtube.com/channel/UCsbBix1KNZYDmftlwQplQuw\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (142,39,'_youtube_link','field_6143afa256766');
INSERT INTO `wp_postmeta` VALUES (143,39,'soundcloud_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:44:\"https://soundcloud.com/atlas-audio-490771776\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (144,39,'_soundcloud_link','field_6143afb756767');
INSERT INTO `wp_postmeta` VALUES (145,39,'linkedin_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:50:\"https://www.linkedin.com/in/atlas-audio-006364214/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (146,39,'_linkedin_link','field_6143afc456768');
INSERT INTO `wp_postmeta` VALUES (147,40,'instagram_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:39:\"https://www.instagram.com/atlasaudiouk/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (148,40,'_instagram_link','field_6143af8c56765');
INSERT INTO `wp_postmeta` VALUES (149,40,'facebook_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://www.facebook.com/AtlasAudioUK\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (150,40,'_facebook_link','field_6143af5c56764');
INSERT INTO `wp_postmeta` VALUES (151,40,'youtube_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:56:\"https://www.youtube.com/channel/UCsbBix1KNZYDmftlwQplQuw\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (152,40,'_youtube_link','field_6143afa256766');
INSERT INTO `wp_postmeta` VALUES (153,40,'soundcloud_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:44:\"https://soundcloud.com/atlas-audio-490771776\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (154,40,'_soundcloud_link','field_6143afb756767');
INSERT INTO `wp_postmeta` VALUES (155,40,'linkedin_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:50:\"https://www.linkedin.com/in/atlas-audio-006364214/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (156,40,'_linkedin_link','field_6143afc456768');
INSERT INTO `wp_postmeta` VALUES (157,41,'instagram_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:39:\"https://www.instagram.com/atlasaudiouk/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (158,41,'_instagram_link','field_6143af8c56765');
INSERT INTO `wp_postmeta` VALUES (159,41,'facebook_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://www.facebook.com/AtlasAudioUK\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (160,41,'_facebook_link','field_6143af5c56764');
INSERT INTO `wp_postmeta` VALUES (161,41,'youtube_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:56:\"https://www.youtube.com/channel/UCsbBix1KNZYDmftlwQplQuw\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (162,41,'_youtube_link','field_6143afa256766');
INSERT INTO `wp_postmeta` VALUES (163,41,'soundcloud_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:44:\"https://soundcloud.com/atlas-audio-490771776\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (164,41,'_soundcloud_link','field_6143afb756767');
INSERT INTO `wp_postmeta` VALUES (165,41,'linkedin_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:50:\"https://www.linkedin.com/in/atlas-audio-006364214/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (166,41,'_linkedin_link','field_6143afc456768');
INSERT INTO `wp_postmeta` VALUES (167,42,'instagram_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:39:\"https://www.instagram.com/atlasaudiouk/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (168,42,'_instagram_link','field_6143af8c56765');
INSERT INTO `wp_postmeta` VALUES (169,42,'facebook_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://www.facebook.com/AtlasAudioUK\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (170,42,'_facebook_link','field_6143af5c56764');
INSERT INTO `wp_postmeta` VALUES (171,42,'youtube_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:56:\"https://www.youtube.com/channel/UCsbBix1KNZYDmftlwQplQuw\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (172,42,'_youtube_link','field_6143afa256766');
INSERT INTO `wp_postmeta` VALUES (173,42,'soundcloud_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:44:\"https://soundcloud.com/atlas-audio-490771776\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (174,42,'_soundcloud_link','field_6143afb756767');
INSERT INTO `wp_postmeta` VALUES (175,42,'linkedin_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:50:\"https://www.linkedin.com/in/atlas-audio-006364214/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (176,42,'_linkedin_link','field_6143afc456768');
INSERT INTO `wp_postmeta` VALUES (177,43,'instagram_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:39:\"https://www.instagram.com/atlasaudiouk/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (178,43,'_instagram_link','field_6143af8c56765');
INSERT INTO `wp_postmeta` VALUES (179,43,'facebook_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://www.facebook.com/AtlasAudioUK\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (180,43,'_facebook_link','field_6143af5c56764');
INSERT INTO `wp_postmeta` VALUES (181,43,'youtube_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:56:\"https://www.youtube.com/channel/UCsbBix1KNZYDmftlwQplQuw\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (182,43,'_youtube_link','field_6143afa256766');
INSERT INTO `wp_postmeta` VALUES (183,43,'soundcloud_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:44:\"https://soundcloud.com/atlas-audio-490771776\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (184,43,'_soundcloud_link','field_6143afb756767');
INSERT INTO `wp_postmeta` VALUES (185,43,'linkedin_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:50:\"https://www.linkedin.com/in/atlas-audio-006364214/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (186,43,'_linkedin_link','field_6143afc456768');
INSERT INTO `wp_postmeta` VALUES (189,9,'youtube_video_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:41:\"https://www.youtube.com/embed/YFHXiyJfAdc\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (190,9,'_youtube_video_link','field_6145dd523f302');
INSERT INTO `wp_postmeta` VALUES (191,46,'instagram_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:39:\"https://www.instagram.com/atlasaudiouk/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (192,46,'_instagram_link','field_6143af8c56765');
INSERT INTO `wp_postmeta` VALUES (193,46,'facebook_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://www.facebook.com/AtlasAudioUK\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (194,46,'_facebook_link','field_6143af5c56764');
INSERT INTO `wp_postmeta` VALUES (195,46,'youtube_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:56:\"https://www.youtube.com/channel/UCsbBix1KNZYDmftlwQplQuw\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (196,46,'_youtube_link','field_6143afa256766');
INSERT INTO `wp_postmeta` VALUES (197,46,'soundcloud_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:44:\"https://soundcloud.com/atlas-audio-490771776\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (198,46,'_soundcloud_link','field_6143afb756767');
INSERT INTO `wp_postmeta` VALUES (199,46,'linkedin_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:50:\"https://www.linkedin.com/in/atlas-audio-006364214/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (200,46,'_linkedin_link','field_6143afc456768');
INSERT INTO `wp_postmeta` VALUES (201,46,'youtube_video_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:48:\"https://www.youtube.com/watch?v=YFHXiyJfAdc&t=1s\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (202,46,'_youtube_video_link','field_6145dd523f302');
INSERT INTO `wp_postmeta` VALUES (203,47,'instagram_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:39:\"https://www.instagram.com/atlasaudiouk/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (204,47,'_instagram_link','field_6143af8c56765');
INSERT INTO `wp_postmeta` VALUES (205,47,'facebook_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://www.facebook.com/AtlasAudioUK\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (206,47,'_facebook_link','field_6143af5c56764');
INSERT INTO `wp_postmeta` VALUES (207,47,'youtube_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:56:\"https://www.youtube.com/channel/UCsbBix1KNZYDmftlwQplQuw\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (208,47,'_youtube_link','field_6143afa256766');
INSERT INTO `wp_postmeta` VALUES (209,47,'soundcloud_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:44:\"https://soundcloud.com/atlas-audio-490771776\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (210,47,'_soundcloud_link','field_6143afb756767');
INSERT INTO `wp_postmeta` VALUES (211,47,'linkedin_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:50:\"https://www.linkedin.com/in/atlas-audio-006364214/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (212,47,'_linkedin_link','field_6143afc456768');
INSERT INTO `wp_postmeta` VALUES (213,47,'youtube_video_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:41:\"https://www.youtube.com/embed/YFHXiyJfAdc\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (214,47,'_youtube_video_link','field_6145dd523f302');
INSERT INTO `wp_postmeta` VALUES (217,9,'soundcloud_embed_repeater_0_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1097873494\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/fantasy-rpg-sample-pack\" title=\"Fantasy RPG Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Fantasy RPG Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (218,9,'_soundcloud_embed_repeater_0_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (219,9,'soundcloud_embed_repeater_1_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1053921520\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/orchestral-sample-pack\" title=\"Orchestral Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Orchestral Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (220,9,'_soundcloud_embed_repeater_1_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (221,9,'soundcloud_embed_repeater_2_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1053921520\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/orchestral-sample-pack\" title=\"Orchestral Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Orchestral Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (222,9,'_soundcloud_embed_repeater_2_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (223,9,'soundcloud_embed_repeater','3');
INSERT INTO `wp_postmeta` VALUES (224,9,'_soundcloud_embed_repeater','field_6145e79359f15');
INSERT INTO `wp_postmeta` VALUES (225,51,'instagram_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:39:\"https://www.instagram.com/atlasaudiouk/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (226,51,'_instagram_link','field_6143af8c56765');
INSERT INTO `wp_postmeta` VALUES (227,51,'facebook_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://www.facebook.com/AtlasAudioUK\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (228,51,'_facebook_link','field_6143af5c56764');
INSERT INTO `wp_postmeta` VALUES (229,51,'youtube_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:56:\"https://www.youtube.com/channel/UCsbBix1KNZYDmftlwQplQuw\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (230,51,'_youtube_link','field_6143afa256766');
INSERT INTO `wp_postmeta` VALUES (231,51,'soundcloud_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:44:\"https://soundcloud.com/atlas-audio-490771776\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (232,51,'_soundcloud_link','field_6143afb756767');
INSERT INTO `wp_postmeta` VALUES (233,51,'linkedin_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:50:\"https://www.linkedin.com/in/atlas-audio-006364214/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (234,51,'_linkedin_link','field_6143afc456768');
INSERT INTO `wp_postmeta` VALUES (235,51,'youtube_video_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:41:\"https://www.youtube.com/embed/YFHXiyJfAdc\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (236,51,'_youtube_video_link','field_6145dd523f302');
INSERT INTO `wp_postmeta` VALUES (237,51,'soundcloud_embed_repeater_0_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1097873494\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/fantasy-rpg-sample-pack\" title=\"Fantasy RPG Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Fantasy RPG Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (238,51,'_soundcloud_embed_repeater_0_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (239,51,'soundcloud_embed_repeater_1_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1053921520\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/orchestral-sample-pack\" title=\"Orchestral Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Orchestral Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (240,51,'_soundcloud_embed_repeater_1_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (241,51,'soundcloud_embed_repeater_2_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1053921520\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/orchestral-sample-pack\" title=\"Orchestral Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Orchestral Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (242,51,'_soundcloud_embed_repeater_2_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (243,51,'soundcloud_embed_repeater','3');
INSERT INTO `wp_postmeta` VALUES (244,51,'_soundcloud_embed_repeater','field_6145e79359f15');
INSERT INTO `wp_postmeta` VALUES (251,52,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (252,52,'_edit_lock','1632145589:1');
INSERT INTO `wp_postmeta` VALUES (253,55,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (254,55,'_edit_lock','1632145531:1');
INSERT INTO `wp_postmeta` VALUES (255,57,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (256,57,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (257,57,'_menu_item_object_id','55');
INSERT INTO `wp_postmeta` VALUES (258,57,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (259,57,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (260,57,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (261,57,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (262,57,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (264,19,'_wp_old_date','2021-09-18');
INSERT INTO `wp_postmeta` VALUES (265,35,'_wp_old_date','2021-09-18');
INSERT INTO `wp_postmeta` VALUES (266,34,'_wp_old_date','2021-09-18');
INSERT INTO `wp_postmeta` VALUES (267,64,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (268,64,'_edit_lock','1632062035:1');
INSERT INTO `wp_postmeta` VALUES (269,66,'_wp_attached_file','2021/09/Atlas-Audio-Photos-36-1024x683-1.jpg');
INSERT INTO `wp_postmeta` VALUES (270,66,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:44:\"2021/09/Atlas-Audio-Photos-36-1024x683-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"Atlas-Audio-Photos-36-1024x683-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"Atlas-Audio-Photos-36-1024x683-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"Atlas-Audio-Photos-36-1024x683-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"aboutusGallery\";a:4:{s:4:\"file\";s:44:\"Atlas-Audio-Photos-36-1024x683-1-700x500.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (271,67,'_wp_attached_file','2021/09/Atlas-Audio-Photos-25-1024x576-1.jpg');
INSERT INTO `wp_postmeta` VALUES (272,67,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:576;s:4:\"file\";s:44:\"2021/09/Atlas-Audio-Photos-25-1024x576-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"Atlas-Audio-Photos-25-1024x576-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"Atlas-Audio-Photos-25-1024x576-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"Atlas-Audio-Photos-25-1024x576-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"aboutusGallery\";a:4:{s:4:\"file\";s:44:\"Atlas-Audio-Photos-25-1024x576-1-700x500.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (273,68,'_wp_attached_file','2021/09/Atlas-Audio-Photos-22-1024x683-1.jpg');
INSERT INTO `wp_postmeta` VALUES (274,68,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:44:\"2021/09/Atlas-Audio-Photos-22-1024x683-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"Atlas-Audio-Photos-22-1024x683-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"Atlas-Audio-Photos-22-1024x683-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"Atlas-Audio-Photos-22-1024x683-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"aboutusGallery\";a:4:{s:4:\"file\";s:44:\"Atlas-Audio-Photos-22-1024x683-1-700x500.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (275,69,'_wp_attached_file','2021/09/Atlas-Audio-Photos-11-1024x683-1.jpg');
INSERT INTO `wp_postmeta` VALUES (276,69,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:44:\"2021/09/Atlas-Audio-Photos-11-1024x683-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"Atlas-Audio-Photos-11-1024x683-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"Atlas-Audio-Photos-11-1024x683-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"Atlas-Audio-Photos-11-1024x683-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"aboutusGallery\";a:4:{s:4:\"file\";s:44:\"Atlas-Audio-Photos-11-1024x683-1-700x500.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (277,70,'_wp_attached_file','2021/09/aboutusBG-1.jpg');
INSERT INTO `wp_postmeta` VALUES (278,70,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:23:\"2021/09/aboutusBG-1.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"aboutusBG-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"aboutusBG-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"aboutusBG-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"aboutusBG-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:25:\"aboutusBG-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:25:\"aboutusBG-1-2048x1366.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1366;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"aboutusGallery\";a:4:{s:4:\"file\";s:23:\"aboutusBG-1-700x500.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (279,30,'about_us_gallery','a:4:{i:0;s:2:\"66\";i:1;s:2:\"67\";i:2;s:2:\"68\";i:3;s:2:\"69\";}');
INSERT INTO `wp_postmeta` VALUES (280,30,'_about_us_gallery','field_61473b9f42ac5');
INSERT INTO `wp_postmeta` VALUES (281,71,'about_us_gallery','a:4:{i:0;s:2:\"66\";i:1;s:2:\"67\";i:2;s:2:\"68\";i:3;s:2:\"69\";}');
INSERT INTO `wp_postmeta` VALUES (282,71,'_about_us_gallery','field_61473b9f42ac5');
INSERT INTO `wp_postmeta` VALUES (283,73,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (284,73,'_edit_lock','1632062623:1');
INSERT INTO `wp_postmeta` VALUES (285,55,'testimonials_title','The musical theme created for Duncan Gill’s magnificent audiobook, “The Utopian Dream”.');
INSERT INTO `wp_postmeta` VALUES (286,55,'_testimonials_title','field_61474b45d7c42');
INSERT INTO `wp_postmeta` VALUES (287,75,'testimonials_title','The musical theme created for Duncan Gill’s magnificent audiobook, “The Utopian Dream”.');
INSERT INTO `wp_postmeta` VALUES (288,75,'_testimonials_title','field_61474b45d7c42');
INSERT INTO `wp_postmeta` VALUES (289,76,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (290,76,'_edit_lock','1632062899:1');
INSERT INTO `wp_postmeta` VALUES (291,55,'testimonial_youtube_video','https://www.youtube.com/watch?time_continue=21&v=itGV60ndqMI&feature=emb_title');
INSERT INTO `wp_postmeta` VALUES (292,55,'_testimonial_youtube_video','field_61474b8eec6fd');
INSERT INTO `wp_postmeta` VALUES (293,78,'testimonials_title','The musical theme created for Duncan Gill’s magnificent audiobook, “The Utopian Dream”.');
INSERT INTO `wp_postmeta` VALUES (294,78,'_testimonials_title','field_61474b45d7c42');
INSERT INTO `wp_postmeta` VALUES (295,78,'testimonial_youtube_video','https://www.youtube.com/watch?time_continue=21&v=itGV60ndqMI&feature=emb_title');
INSERT INTO `wp_postmeta` VALUES (296,78,'_testimonial_youtube_video','field_61474b8eec6fd');
INSERT INTO `wp_postmeta` VALUES (297,80,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (298,80,'_edit_lock','1632065694:1');
INSERT INTO `wp_postmeta` VALUES (299,85,'_wp_attached_file','2021/09/Lights-cameras-blokes-1024x576-1.jpg');
INSERT INTO `wp_postmeta` VALUES (300,85,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:576;s:4:\"file\";s:44:\"2021/09/Lights-cameras-blokes-1024x576-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"Lights-cameras-blokes-1024x576-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"Lights-cameras-blokes-1024x576-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"Lights-cameras-blokes-1024x576-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"aboutusGallery\";a:4:{s:4:\"file\";s:44:\"Lights-cameras-blokes-1024x576-1-700x500.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"testimonialSize\";a:4:{s:4:\"file\";s:44:\"Lights-cameras-blokes-1024x576-1-370x210.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:210;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (301,86,'_wp_attached_file','2021/09/HHT-Cover-1024x576-1.jpg');
INSERT INTO `wp_postmeta` VALUES (302,86,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:576;s:4:\"file\";s:32:\"2021/09/HHT-Cover-1024x576-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"HHT-Cover-1024x576-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"HHT-Cover-1024x576-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"HHT-Cover-1024x576-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"aboutusGallery\";a:4:{s:4:\"file\";s:32:\"HHT-Cover-1024x576-1-700x500.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"testimonialSize\";a:4:{s:4:\"file\";s:32:\"HHT-Cover-1024x576-1-370x210.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:210;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (303,55,'testimonial_repeater_0_testimonial_title','Health Home Truths');
INSERT INTO `wp_postmeta` VALUES (304,55,'_testimonial_repeater_0_testimonial_title','field_61474f391e109');
INSERT INTO `wp_postmeta` VALUES (305,55,'testimonial_repeater_0_testimonial_content','“A bespoke, and complete service – Atlas Audio took my vague inspiration to the next level, bringing direction and solidifying my brand. They really payed attention to my vision, and kept me in the loop throughout the process. These boys delivered a unique, and entire soundscape.”');
INSERT INTO `wp_postmeta` VALUES (306,55,'_testimonial_repeater_0_testimonial_content','field_61474f6f1e10a');
INSERT INTO `wp_postmeta` VALUES (307,55,'testimonial_repeater_0_testimonial_image','86');
INSERT INTO `wp_postmeta` VALUES (308,55,'_testimonial_repeater_0_testimonial_image','field_61474f7b1e10b');
INSERT INTO `wp_postmeta` VALUES (309,55,'testimonial_repeater_1_testimonial_title','Lights, Cameras, Blokes');
INSERT INTO `wp_postmeta` VALUES (310,55,'_testimonial_repeater_1_testimonial_title','field_61474f391e109');
INSERT INTO `wp_postmeta` VALUES (311,55,'testimonial_repeater_1_testimonial_content','“Working with Atlas Audio to bring music to my podcast was a brilliant experience. They bought a lot of talent and skill to a process that felt genuinely collaborative and definitely elevated our project.”');
INSERT INTO `wp_postmeta` VALUES (312,55,'_testimonial_repeater_1_testimonial_content','field_61474f6f1e10a');
INSERT INTO `wp_postmeta` VALUES (313,55,'testimonial_repeater_1_testimonial_image','85');
INSERT INTO `wp_postmeta` VALUES (314,55,'_testimonial_repeater_1_testimonial_image','field_61474f7b1e10b');
INSERT INTO `wp_postmeta` VALUES (315,55,'testimonial_repeater','2');
INSERT INTO `wp_postmeta` VALUES (316,55,'_testimonial_repeater','field_61474f331e108');
INSERT INTO `wp_postmeta` VALUES (317,87,'testimonials_title','The musical theme created for Duncan Gill’s magnificent audiobook, “The Utopian Dream”.');
INSERT INTO `wp_postmeta` VALUES (318,87,'_testimonials_title','field_61474b45d7c42');
INSERT INTO `wp_postmeta` VALUES (319,87,'testimonial_youtube_video','https://www.youtube.com/watch?time_continue=21&v=itGV60ndqMI&feature=emb_title');
INSERT INTO `wp_postmeta` VALUES (320,87,'_testimonial_youtube_video','field_61474b8eec6fd');
INSERT INTO `wp_postmeta` VALUES (321,87,'testimonial_repeater_0_testimonial_title','Health Home Truths');
INSERT INTO `wp_postmeta` VALUES (322,87,'_testimonial_repeater_0_testimonial_title','field_61474f391e109');
INSERT INTO `wp_postmeta` VALUES (323,87,'testimonial_repeater_0_testimonial_content','“A bespoke, and complete service – Atlas Audio took my vague inspiration to the next level, bringing direction and solidifying my brand. They really payed attention to my vision, and kept me in the loop throughout the process. These boys delivered a unique, and entire soundscape.”');
INSERT INTO `wp_postmeta` VALUES (324,87,'_testimonial_repeater_0_testimonial_content','field_61474f6f1e10a');
INSERT INTO `wp_postmeta` VALUES (325,87,'testimonial_repeater_0_testimonial_image','86');
INSERT INTO `wp_postmeta` VALUES (326,87,'_testimonial_repeater_0_testimonial_image','field_61474f7b1e10b');
INSERT INTO `wp_postmeta` VALUES (327,87,'testimonial_repeater_1_testimonial_title','Lights, Cameras, Blokes');
INSERT INTO `wp_postmeta` VALUES (328,87,'_testimonial_repeater_1_testimonial_title','field_61474f391e109');
INSERT INTO `wp_postmeta` VALUES (329,87,'testimonial_repeater_1_testimonial_content','“Working with Atlas Audio to bring music to my podcast was a brilliant experience. They bought a lot of talent and skill to a process that felt genuinely collaborative and definitely elevated our project.”');
INSERT INTO `wp_postmeta` VALUES (330,87,'_testimonial_repeater_1_testimonial_content','field_61474f6f1e10a');
INSERT INTO `wp_postmeta` VALUES (331,87,'testimonial_repeater_1_testimonial_image','85');
INSERT INTO `wp_postmeta` VALUES (332,87,'_testimonial_repeater_1_testimonial_image','field_61474f7b1e10b');
INSERT INTO `wp_postmeta` VALUES (333,87,'testimonial_repeater','2');
INSERT INTO `wp_postmeta` VALUES (334,87,'_testimonial_repeater','field_61474f331e108');
INSERT INTO `wp_postmeta` VALUES (335,32,'instagram_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:39:\"https://www.instagram.com/atlasaudiouk/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (336,32,'_instagram_link','field_6143af8c56765');
INSERT INTO `wp_postmeta` VALUES (337,32,'facebook_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://www.facebook.com/AtlasAudioUK\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (338,32,'_facebook_link','field_6143af5c56764');
INSERT INTO `wp_postmeta` VALUES (339,32,'youtube_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:56:\"https://www.youtube.com/channel/UCsbBix1KNZYDmftlwQplQuw\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (340,32,'_youtube_link','field_6143afa256766');
INSERT INTO `wp_postmeta` VALUES (341,32,'soundcloud_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:44:\"https://soundcloud.com/atlas-audio-490771776\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (342,32,'_soundcloud_link','field_6143afb756767');
INSERT INTO `wp_postmeta` VALUES (343,32,'linkedin_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:50:\"https://www.linkedin.com/in/atlas-audio-006364214/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (344,32,'_linkedin_link','field_6143afc456768');
INSERT INTO `wp_postmeta` VALUES (345,88,'instagram_link','');
INSERT INTO `wp_postmeta` VALUES (346,88,'_instagram_link','field_6143af8c56765');
INSERT INTO `wp_postmeta` VALUES (347,88,'facebook_link','');
INSERT INTO `wp_postmeta` VALUES (348,88,'_facebook_link','field_6143af5c56764');
INSERT INTO `wp_postmeta` VALUES (349,88,'youtube_link','');
INSERT INTO `wp_postmeta` VALUES (350,88,'_youtube_link','field_6143afa256766');
INSERT INTO `wp_postmeta` VALUES (351,88,'soundcloud_link','');
INSERT INTO `wp_postmeta` VALUES (352,88,'_soundcloud_link','field_6143afb756767');
INSERT INTO `wp_postmeta` VALUES (353,88,'linkedin_link','');
INSERT INTO `wp_postmeta` VALUES (354,88,'_linkedin_link','field_6143afc456768');
INSERT INTO `wp_postmeta` VALUES (355,91,'instagram_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:39:\"https://www.instagram.com/atlasaudiouk/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (356,91,'_instagram_link','field_6143af8c56765');
INSERT INTO `wp_postmeta` VALUES (357,91,'facebook_link','');
INSERT INTO `wp_postmeta` VALUES (358,91,'_facebook_link','field_6143af5c56764');
INSERT INTO `wp_postmeta` VALUES (359,91,'youtube_link','');
INSERT INTO `wp_postmeta` VALUES (360,91,'_youtube_link','field_6143afa256766');
INSERT INTO `wp_postmeta` VALUES (361,91,'soundcloud_link','');
INSERT INTO `wp_postmeta` VALUES (362,91,'_soundcloud_link','field_6143afb756767');
INSERT INTO `wp_postmeta` VALUES (363,91,'linkedin_link','');
INSERT INTO `wp_postmeta` VALUES (364,91,'_linkedin_link','field_6143afc456768');
INSERT INTO `wp_postmeta` VALUES (365,92,'instagram_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:39:\"https://www.instagram.com/atlasaudiouk/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (366,92,'_instagram_link','field_6143af8c56765');
INSERT INTO `wp_postmeta` VALUES (367,92,'facebook_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://www.facebook.com/AtlasAudioUK\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (368,92,'_facebook_link','field_6143af5c56764');
INSERT INTO `wp_postmeta` VALUES (369,92,'youtube_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:56:\"https://www.youtube.com/channel/UCsbBix1KNZYDmftlwQplQuw\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (370,92,'_youtube_link','field_6143afa256766');
INSERT INTO `wp_postmeta` VALUES (371,92,'soundcloud_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:44:\"https://soundcloud.com/atlas-audio-490771776\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (372,92,'_soundcloud_link','field_6143afb756767');
INSERT INTO `wp_postmeta` VALUES (373,92,'linkedin_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:50:\"https://www.linkedin.com/in/atlas-audio-006364214/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (374,92,'_linkedin_link','field_6143afc456768');
INSERT INTO `wp_postmeta` VALUES (375,92,'youtube_video_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:41:\"https://www.youtube.com/embed/YFHXiyJfAdc\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (376,92,'_youtube_video_link','field_6145dd523f302');
INSERT INTO `wp_postmeta` VALUES (377,92,'soundcloud_embed_repeater_0_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1097873494\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/fantasy-rpg-sample-pack\" title=\"Fantasy RPG Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Fantasy RPG Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (378,92,'_soundcloud_embed_repeater_0_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (379,92,'soundcloud_embed_repeater_1_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1053921520\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/orchestral-sample-pack\" title=\"Orchestral Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Orchestral Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (380,92,'_soundcloud_embed_repeater_1_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (381,92,'soundcloud_embed_repeater_2_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1053921520\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/orchestral-sample-pack\" title=\"Orchestral Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Orchestral Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (382,92,'_soundcloud_embed_repeater_2_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (383,92,'soundcloud_embed_repeater','3');
INSERT INTO `wp_postmeta` VALUES (384,92,'_soundcloud_embed_repeater','field_6145e79359f15');
INSERT INTO `wp_postmeta` VALUES (385,93,'instagram_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:39:\"https://www.instagram.com/atlasaudiouk/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (386,93,'_instagram_link','field_6143af8c56765');
INSERT INTO `wp_postmeta` VALUES (387,93,'facebook_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://www.facebook.com/AtlasAudioUK\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (388,93,'_facebook_link','field_6143af5c56764');
INSERT INTO `wp_postmeta` VALUES (389,93,'youtube_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:56:\"https://www.youtube.com/channel/UCsbBix1KNZYDmftlwQplQuw\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (390,93,'_youtube_link','field_6143afa256766');
INSERT INTO `wp_postmeta` VALUES (391,93,'soundcloud_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:44:\"https://soundcloud.com/atlas-audio-490771776\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (392,93,'_soundcloud_link','field_6143afb756767');
INSERT INTO `wp_postmeta` VALUES (393,93,'linkedin_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:50:\"https://www.linkedin.com/in/atlas-audio-006364214/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (394,93,'_linkedin_link','field_6143afc456768');
INSERT INTO `wp_postmeta` VALUES (395,93,'youtube_video_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:41:\"https://www.youtube.com/embed/YFHXiyJfAdc\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (396,93,'_youtube_video_link','field_6145dd523f302');
INSERT INTO `wp_postmeta` VALUES (397,93,'soundcloud_embed_repeater_0_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1097873494\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/fantasy-rpg-sample-pack\" title=\"Fantasy RPG Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Fantasy RPG Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (398,93,'_soundcloud_embed_repeater_0_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (399,93,'soundcloud_embed_repeater_1_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1053921520\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/orchestral-sample-pack\" title=\"Orchestral Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Orchestral Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (400,93,'_soundcloud_embed_repeater_1_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (401,93,'soundcloud_embed_repeater_2_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1053921520\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/orchestral-sample-pack\" title=\"Orchestral Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Orchestral Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (402,93,'_soundcloud_embed_repeater_2_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (403,93,'soundcloud_embed_repeater','3');
INSERT INTO `wp_postmeta` VALUES (404,93,'_soundcloud_embed_repeater','field_6145e79359f15');
INSERT INTO `wp_postmeta` VALUES (405,94,'instagram_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:39:\"https://www.instagram.com/atlasaudiouk/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (406,94,'_instagram_link','field_6143af8c56765');
INSERT INTO `wp_postmeta` VALUES (407,94,'facebook_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://www.facebook.com/AtlasAudioUK\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (408,94,'_facebook_link','field_6143af5c56764');
INSERT INTO `wp_postmeta` VALUES (409,94,'youtube_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:56:\"https://www.youtube.com/channel/UCsbBix1KNZYDmftlwQplQuw\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (410,94,'_youtube_link','field_6143afa256766');
INSERT INTO `wp_postmeta` VALUES (411,94,'soundcloud_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:44:\"https://soundcloud.com/atlas-audio-490771776\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (412,94,'_soundcloud_link','field_6143afb756767');
INSERT INTO `wp_postmeta` VALUES (413,94,'linkedin_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:50:\"https://www.linkedin.com/in/atlas-audio-006364214/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (414,94,'_linkedin_link','field_6143afc456768');
INSERT INTO `wp_postmeta` VALUES (415,95,'_wp_attached_file','2021/09/Atlas-Audio-White-no-background-1024x1024-1.png');
INSERT INTO `wp_postmeta` VALUES (416,95,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:4:\"file\";s:55:\"2021/09/Atlas-Audio-White-no-background-1024x1024-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:55:\"Atlas-Audio-White-no-background-1024x1024-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:55:\"Atlas-Audio-White-no-background-1024x1024-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:55:\"Atlas-Audio-White-no-background-1024x1024-1-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"aboutusGallery\";a:4:{s:4:\"file\";s:55:\"Atlas-Audio-White-no-background-1024x1024-1-700x500.png\";s:5:\"width\";i:700;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"testimonialSize\";a:4:{s:4:\"file\";s:55:\"Atlas-Audio-White-no-background-1024x1024-1-370x210.png\";s:5:\"width\";i:370;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (417,9,'_thumbnail_id','95');
INSERT INTO `wp_postmeta` VALUES (418,96,'_wp_attached_file','2021/09/Atlas-Audio-White-no-background-1024x1024-2.png');
INSERT INTO `wp_postmeta` VALUES (419,96,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:4:\"file\";s:55:\"2021/09/Atlas-Audio-White-no-background-1024x1024-2.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:55:\"Atlas-Audio-White-no-background-1024x1024-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:55:\"Atlas-Audio-White-no-background-1024x1024-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:55:\"Atlas-Audio-White-no-background-1024x1024-2-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"aboutusGallery\";a:4:{s:4:\"file\";s:55:\"Atlas-Audio-White-no-background-1024x1024-2-700x500.png\";s:5:\"width\";i:700;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"testimonialSize\";a:4:{s:4:\"file\";s:55:\"Atlas-Audio-White-no-background-1024x1024-2-370x210.png\";s:5:\"width\";i:370;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (421,32,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (422,32,'_wp_trash_meta_time','1632068607');
INSERT INTO `wp_postmeta` VALUES (424,32,'_thumbnail_id','97');
INSERT INTO `wp_postmeta` VALUES (425,97,'_wp_attached_file','2021/09/Atlas-Audio-White-no-background-1024x1024-3.png');
INSERT INTO `wp_postmeta` VALUES (426,97,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:4:\"file\";s:55:\"2021/09/Atlas-Audio-White-no-background-1024x1024-3.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:55:\"Atlas-Audio-White-no-background-1024x1024-3-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:55:\"Atlas-Audio-White-no-background-1024x1024-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:55:\"Atlas-Audio-White-no-background-1024x1024-3-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"aboutusGallery\";a:4:{s:4:\"file\";s:55:\"Atlas-Audio-White-no-background-1024x1024-3-700x500.png\";s:5:\"width\";i:700;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"testimonialSize\";a:4:{s:4:\"file\";s:55:\"Atlas-Audio-White-no-background-1024x1024-3-370x210.png\";s:5:\"width\";i:370;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (427,98,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (428,98,'_edit_lock','1632086202:1');
INSERT INTO `wp_postmeta` VALUES (429,9,'column_videos_first_video','https://www.youtube.com/watch?v=YFHXiyJfAdc');
INSERT INTO `wp_postmeta` VALUES (430,9,'_column_videos_first_video','field_6147a5b580f16');
INSERT INTO `wp_postmeta` VALUES (431,9,'column_videos_second_video','https://www.youtube.com/watch?v=V8rKa5S6o5U');
INSERT INTO `wp_postmeta` VALUES (432,9,'_column_videos_second_video','field_6147a5c480f17');
INSERT INTO `wp_postmeta` VALUES (433,9,'column_videos_third_video','https://www.youtube.com/watch?v=YFHXiyJfAdc');
INSERT INTO `wp_postmeta` VALUES (434,9,'_column_videos_third_video','field_6147a5cd80f18');
INSERT INTO `wp_postmeta` VALUES (435,9,'column_videos','');
INSERT INTO `wp_postmeta` VALUES (436,9,'_column_videos','field_6147a50d17d15');
INSERT INTO `wp_postmeta` VALUES (437,106,'instagram_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:39:\"https://www.instagram.com/atlasaudiouk/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (438,106,'_instagram_link','field_6143af8c56765');
INSERT INTO `wp_postmeta` VALUES (439,106,'facebook_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://www.facebook.com/AtlasAudioUK\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (440,106,'_facebook_link','field_6143af5c56764');
INSERT INTO `wp_postmeta` VALUES (441,106,'youtube_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:56:\"https://www.youtube.com/channel/UCsbBix1KNZYDmftlwQplQuw\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (442,106,'_youtube_link','field_6143afa256766');
INSERT INTO `wp_postmeta` VALUES (443,106,'soundcloud_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:44:\"https://soundcloud.com/atlas-audio-490771776\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (444,106,'_soundcloud_link','field_6143afb756767');
INSERT INTO `wp_postmeta` VALUES (445,106,'linkedin_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:50:\"https://www.linkedin.com/in/atlas-audio-006364214/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (446,106,'_linkedin_link','field_6143afc456768');
INSERT INTO `wp_postmeta` VALUES (447,106,'youtube_video_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:41:\"https://www.youtube.com/embed/YFHXiyJfAdc\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (448,106,'_youtube_video_link','field_6145dd523f302');
INSERT INTO `wp_postmeta` VALUES (449,106,'soundcloud_embed_repeater_0_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1097873494\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/fantasy-rpg-sample-pack\" title=\"Fantasy RPG Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Fantasy RPG Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (450,106,'_soundcloud_embed_repeater_0_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (451,106,'soundcloud_embed_repeater_1_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1053921520\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/orchestral-sample-pack\" title=\"Orchestral Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Orchestral Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (452,106,'_soundcloud_embed_repeater_1_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (453,106,'soundcloud_embed_repeater_2_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1053921520\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/orchestral-sample-pack\" title=\"Orchestral Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Orchestral Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (454,106,'_soundcloud_embed_repeater_2_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (455,106,'soundcloud_embed_repeater','3');
INSERT INTO `wp_postmeta` VALUES (456,106,'_soundcloud_embed_repeater','field_6145e79359f15');
INSERT INTO `wp_postmeta` VALUES (457,106,'column_videos_first_video','https://www.youtube.com/watch?v=YFHXiyJfAdc');
INSERT INTO `wp_postmeta` VALUES (458,106,'_column_videos_first_video','field_6147a5b580f16');
INSERT INTO `wp_postmeta` VALUES (459,106,'column_videos_second_video','https://www.youtube.com/watch?v=V8rKa5S6o5U');
INSERT INTO `wp_postmeta` VALUES (460,106,'_column_videos_second_video','field_6147a5c480f17');
INSERT INTO `wp_postmeta` VALUES (461,106,'column_videos_third_video','https://www.youtube.com/watch?v=YFHXiyJfAdc');
INSERT INTO `wp_postmeta` VALUES (462,106,'_column_videos_third_video','field_6147a5cd80f18');
INSERT INTO `wp_postmeta` VALUES (463,106,'column_videos','');
INSERT INTO `wp_postmeta` VALUES (464,106,'_column_videos','field_6147a50d17d15');
INSERT INTO `wp_postmeta` VALUES (465,107,'instagram_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:39:\"https://www.instagram.com/atlasaudiouk/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (466,107,'_instagram_link','field_6143af8c56765');
INSERT INTO `wp_postmeta` VALUES (467,107,'facebook_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://www.facebook.com/AtlasAudioUK\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (468,107,'_facebook_link','field_6143af5c56764');
INSERT INTO `wp_postmeta` VALUES (469,107,'youtube_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:56:\"https://www.youtube.com/channel/UCsbBix1KNZYDmftlwQplQuw\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (470,107,'_youtube_link','field_6143afa256766');
INSERT INTO `wp_postmeta` VALUES (471,107,'soundcloud_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:44:\"https://soundcloud.com/atlas-audio-490771776\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (472,107,'_soundcloud_link','field_6143afb756767');
INSERT INTO `wp_postmeta` VALUES (473,107,'linkedin_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:50:\"https://www.linkedin.com/in/atlas-audio-006364214/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (474,107,'_linkedin_link','field_6143afc456768');
INSERT INTO `wp_postmeta` VALUES (475,107,'youtube_video_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:41:\"https://www.youtube.com/embed/YFHXiyJfAdc\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (476,107,'_youtube_video_link','field_6145dd523f302');
INSERT INTO `wp_postmeta` VALUES (477,107,'soundcloud_embed_repeater_0_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1097873494\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/fantasy-rpg-sample-pack\" title=\"Fantasy RPG Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Fantasy RPG Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (478,107,'_soundcloud_embed_repeater_0_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (479,107,'soundcloud_embed_repeater_1_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1053921520\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/orchestral-sample-pack\" title=\"Orchestral Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Orchestral Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (480,107,'_soundcloud_embed_repeater_1_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (481,107,'soundcloud_embed_repeater_2_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1053921520\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/orchestral-sample-pack\" title=\"Orchestral Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Orchestral Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (482,107,'_soundcloud_embed_repeater_2_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (483,107,'soundcloud_embed_repeater','3');
INSERT INTO `wp_postmeta` VALUES (484,107,'_soundcloud_embed_repeater','field_6145e79359f15');
INSERT INTO `wp_postmeta` VALUES (485,107,'column_videos_first_video','https://www.dailymotion.com/video/x848hq3?playlist=x6lgtp');
INSERT INTO `wp_postmeta` VALUES (486,107,'_column_videos_first_video','field_6147a5b580f16');
INSERT INTO `wp_postmeta` VALUES (487,107,'column_videos_second_video','https://www.dailymotion.com/video/x848hq3?playlist=x6lgtp');
INSERT INTO `wp_postmeta` VALUES (488,107,'_column_videos_second_video','field_6147a5c480f17');
INSERT INTO `wp_postmeta` VALUES (489,107,'column_videos_third_video','https://www.dailymotion.com/video/x848hq3?playlist=x6lgtp');
INSERT INTO `wp_postmeta` VALUES (490,107,'_column_videos_third_video','field_6147a5cd80f18');
INSERT INTO `wp_postmeta` VALUES (491,107,'column_videos','');
INSERT INTO `wp_postmeta` VALUES (492,107,'_column_videos','field_6147a50d17d15');
INSERT INTO `wp_postmeta` VALUES (493,108,'instagram_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:39:\"https://www.instagram.com/atlasaudiouk/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (494,108,'_instagram_link','field_6143af8c56765');
INSERT INTO `wp_postmeta` VALUES (495,108,'facebook_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://www.facebook.com/AtlasAudioUK\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (496,108,'_facebook_link','field_6143af5c56764');
INSERT INTO `wp_postmeta` VALUES (497,108,'youtube_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:56:\"https://www.youtube.com/channel/UCsbBix1KNZYDmftlwQplQuw\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (498,108,'_youtube_link','field_6143afa256766');
INSERT INTO `wp_postmeta` VALUES (499,108,'soundcloud_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:44:\"https://soundcloud.com/atlas-audio-490771776\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (500,108,'_soundcloud_link','field_6143afb756767');
INSERT INTO `wp_postmeta` VALUES (501,108,'linkedin_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:50:\"https://www.linkedin.com/in/atlas-audio-006364214/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (502,108,'_linkedin_link','field_6143afc456768');
INSERT INTO `wp_postmeta` VALUES (503,108,'youtube_video_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:41:\"https://www.youtube.com/embed/YFHXiyJfAdc\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (504,108,'_youtube_video_link','field_6145dd523f302');
INSERT INTO `wp_postmeta` VALUES (505,108,'soundcloud_embed_repeater_0_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1097873494\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/fantasy-rpg-sample-pack\" title=\"Fantasy RPG Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Fantasy RPG Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (506,108,'_soundcloud_embed_repeater_0_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (507,108,'soundcloud_embed_repeater_1_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1053921520\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/orchestral-sample-pack\" title=\"Orchestral Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Orchestral Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (508,108,'_soundcloud_embed_repeater_1_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (509,108,'soundcloud_embed_repeater_2_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1053921520\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/orchestral-sample-pack\" title=\"Orchestral Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Orchestral Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (510,108,'_soundcloud_embed_repeater_2_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (511,108,'soundcloud_embed_repeater','3');
INSERT INTO `wp_postmeta` VALUES (512,108,'_soundcloud_embed_repeater','field_6145e79359f15');
INSERT INTO `wp_postmeta` VALUES (513,108,'column_videos_first_video','https://www.youtube.com/watch?v=YFHXiyJfAdc');
INSERT INTO `wp_postmeta` VALUES (514,108,'_column_videos_first_video','field_6147a5b580f16');
INSERT INTO `wp_postmeta` VALUES (515,108,'column_videos_second_video','https://www.youtube.com/watch?v=V8rKa5S6o5U');
INSERT INTO `wp_postmeta` VALUES (516,108,'_column_videos_second_video','field_6147a5c480f17');
INSERT INTO `wp_postmeta` VALUES (517,108,'column_videos_third_video','https://www.youtube.com/watch?v=YFHXiyJfAdc');
INSERT INTO `wp_postmeta` VALUES (518,108,'_column_videos_third_video','field_6147a5cd80f18');
INSERT INTO `wp_postmeta` VALUES (519,108,'column_videos','');
INSERT INTO `wp_postmeta` VALUES (520,108,'_column_videos','field_6147a50d17d15');
INSERT INTO `wp_postmeta` VALUES (521,109,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (522,109,'_edit_lock','1632145601:1');
INSERT INTO `wp_postmeta` VALUES (523,9,'youtube_front_page_video','https://www.youtube.com/watch?v=YFHXiyJfAdc');
INSERT INTO `wp_postmeta` VALUES (524,9,'_youtube_front_page_video','field_61488fa43731b');
INSERT INTO `wp_postmeta` VALUES (525,111,'instagram_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:39:\"https://www.instagram.com/atlasaudiouk/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (526,111,'_instagram_link','field_6143af8c56765');
INSERT INTO `wp_postmeta` VALUES (527,111,'facebook_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://www.facebook.com/AtlasAudioUK\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (528,111,'_facebook_link','field_6143af5c56764');
INSERT INTO `wp_postmeta` VALUES (529,111,'youtube_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:56:\"https://www.youtube.com/channel/UCsbBix1KNZYDmftlwQplQuw\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (530,111,'_youtube_link','field_6143afa256766');
INSERT INTO `wp_postmeta` VALUES (531,111,'soundcloud_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:44:\"https://soundcloud.com/atlas-audio-490771776\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (532,111,'_soundcloud_link','field_6143afb756767');
INSERT INTO `wp_postmeta` VALUES (533,111,'linkedin_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:50:\"https://www.linkedin.com/in/atlas-audio-006364214/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (534,111,'_linkedin_link','field_6143afc456768');
INSERT INTO `wp_postmeta` VALUES (535,111,'youtube_video_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:41:\"https://www.youtube.com/embed/YFHXiyJfAdc\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (536,111,'_youtube_video_link','field_6145dd523f302');
INSERT INTO `wp_postmeta` VALUES (537,111,'soundcloud_embed_repeater_0_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1097873494\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/fantasy-rpg-sample-pack\" title=\"Fantasy RPG Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Fantasy RPG Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (538,111,'_soundcloud_embed_repeater_0_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (539,111,'soundcloud_embed_repeater_1_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1053921520\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/orchestral-sample-pack\" title=\"Orchestral Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Orchestral Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (540,111,'_soundcloud_embed_repeater_1_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (541,111,'soundcloud_embed_repeater_2_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1053921520\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/orchestral-sample-pack\" title=\"Orchestral Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Orchestral Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (542,111,'_soundcloud_embed_repeater_2_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (543,111,'soundcloud_embed_repeater','3');
INSERT INTO `wp_postmeta` VALUES (544,111,'_soundcloud_embed_repeater','field_6145e79359f15');
INSERT INTO `wp_postmeta` VALUES (545,111,'column_videos_first_video','https://www.youtube.com/watch?v=YFHXiyJfAdc');
INSERT INTO `wp_postmeta` VALUES (546,111,'_column_videos_first_video','field_6147a5b580f16');
INSERT INTO `wp_postmeta` VALUES (547,111,'column_videos_second_video','https://www.youtube.com/watch?v=V8rKa5S6o5U');
INSERT INTO `wp_postmeta` VALUES (548,111,'_column_videos_second_video','field_6147a5c480f17');
INSERT INTO `wp_postmeta` VALUES (549,111,'column_videos_third_video','https://www.youtube.com/watch?v=YFHXiyJfAdc');
INSERT INTO `wp_postmeta` VALUES (550,111,'_column_videos_third_video','field_6147a5cd80f18');
INSERT INTO `wp_postmeta` VALUES (551,111,'column_videos','');
INSERT INTO `wp_postmeta` VALUES (552,111,'_column_videos','field_6147a50d17d15');
INSERT INTO `wp_postmeta` VALUES (553,111,'youtube_front_page_video','https://www.youtube.com/watch?v=YFHXiyJfAdc');
INSERT INTO `wp_postmeta` VALUES (554,111,'_youtube_front_page_video','field_61488fa43731b');
INSERT INTO `wp_postmeta` VALUES (561,112,'instagram_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:39:\"https://www.instagram.com/atlasaudiouk/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (562,112,'_instagram_link','field_6143af8c56765');
INSERT INTO `wp_postmeta` VALUES (563,112,'facebook_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://www.facebook.com/AtlasAudioUK\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (564,112,'_facebook_link','field_6143af5c56764');
INSERT INTO `wp_postmeta` VALUES (565,112,'youtube_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:56:\"https://www.youtube.com/channel/UCsbBix1KNZYDmftlwQplQuw\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (566,112,'_youtube_link','field_6143afa256766');
INSERT INTO `wp_postmeta` VALUES (567,112,'soundcloud_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:44:\"https://soundcloud.com/atlas-audio-490771776\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (568,112,'_soundcloud_link','field_6143afb756767');
INSERT INTO `wp_postmeta` VALUES (569,112,'linkedin_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:50:\"https://www.linkedin.com/in/atlas-audio-006364214/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (570,112,'_linkedin_link','field_6143afc456768');
INSERT INTO `wp_postmeta` VALUES (571,112,'youtube_video_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:41:\"https://www.youtube.com/embed/YFHXiyJfAdc\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (572,112,'_youtube_video_link','field_6145dd523f302');
INSERT INTO `wp_postmeta` VALUES (573,112,'soundcloud_embed_repeater_0_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1097873494\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/fantasy-rpg-sample-pack\" title=\"Fantasy RPG Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Fantasy RPG Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (574,112,'_soundcloud_embed_repeater_0_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (575,112,'soundcloud_embed_repeater_1_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1053921520\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/orchestral-sample-pack\" title=\"Orchestral Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Orchestral Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (576,112,'_soundcloud_embed_repeater_1_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (577,112,'soundcloud_embed_repeater_2_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1053921520\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/orchestral-sample-pack\" title=\"Orchestral Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Orchestral Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (578,112,'_soundcloud_embed_repeater_2_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (579,112,'soundcloud_embed_repeater','3');
INSERT INTO `wp_postmeta` VALUES (580,112,'_soundcloud_embed_repeater','field_6145e79359f15');
INSERT INTO `wp_postmeta` VALUES (581,112,'column_videos_first_video','https://www.youtube.com/watch?v=XrCawmaP-Lk');
INSERT INTO `wp_postmeta` VALUES (582,112,'_column_videos_first_video','field_6147a5b580f16');
INSERT INTO `wp_postmeta` VALUES (583,112,'column_videos_second_video','https://www.youtube.com/watch?v=V8rKa5S6o5U');
INSERT INTO `wp_postmeta` VALUES (584,112,'_column_videos_second_video','field_6147a5c480f17');
INSERT INTO `wp_postmeta` VALUES (585,112,'column_videos_third_video','https://www.youtube.com/watch?v=YFHXiyJfAdc');
INSERT INTO `wp_postmeta` VALUES (586,112,'_column_videos_third_video','field_6147a5cd80f18');
INSERT INTO `wp_postmeta` VALUES (587,112,'column_videos','');
INSERT INTO `wp_postmeta` VALUES (588,112,'_column_videos','field_6147a50d17d15');
INSERT INTO `wp_postmeta` VALUES (589,112,'youtube_front_page_video','https://www.youtube.com/watch?v=YFHXiyJfAdc');
INSERT INTO `wp_postmeta` VALUES (590,112,'_youtube_front_page_video','field_61488fa43731b');
INSERT INTO `wp_postmeta` VALUES (593,113,'instagram_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:39:\"https://www.instagram.com/atlasaudiouk/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (594,113,'_instagram_link','field_6143af8c56765');
INSERT INTO `wp_postmeta` VALUES (595,113,'facebook_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://www.facebook.com/AtlasAudioUK\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (596,113,'_facebook_link','field_6143af5c56764');
INSERT INTO `wp_postmeta` VALUES (597,113,'youtube_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:56:\"https://www.youtube.com/channel/UCsbBix1KNZYDmftlwQplQuw\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (598,113,'_youtube_link','field_6143afa256766');
INSERT INTO `wp_postmeta` VALUES (599,113,'soundcloud_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:44:\"https://soundcloud.com/atlas-audio-490771776\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (600,113,'_soundcloud_link','field_6143afb756767');
INSERT INTO `wp_postmeta` VALUES (601,113,'linkedin_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:50:\"https://www.linkedin.com/in/atlas-audio-006364214/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (602,113,'_linkedin_link','field_6143afc456768');
INSERT INTO `wp_postmeta` VALUES (603,113,'youtube_video_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:41:\"https://www.youtube.com/embed/YFHXiyJfAdc\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (604,113,'_youtube_video_link','field_6145dd523f302');
INSERT INTO `wp_postmeta` VALUES (605,113,'soundcloud_embed_repeater_0_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1097873494\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/fantasy-rpg-sample-pack\" title=\"Fantasy RPG Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Fantasy RPG Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (606,113,'_soundcloud_embed_repeater_0_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (607,113,'soundcloud_embed_repeater_1_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1053921520\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/orchestral-sample-pack\" title=\"Orchestral Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Orchestral Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (608,113,'_soundcloud_embed_repeater_1_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (609,113,'soundcloud_embed_repeater_2_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1053921520\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/orchestral-sample-pack\" title=\"Orchestral Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Orchestral Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (610,113,'_soundcloud_embed_repeater_2_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (611,113,'soundcloud_embed_repeater','4');
INSERT INTO `wp_postmeta` VALUES (612,113,'_soundcloud_embed_repeater','field_6145e79359f15');
INSERT INTO `wp_postmeta` VALUES (613,113,'column_videos_first_video','https://www.youtube.com/watch?v=XrCawmaP-Lk');
INSERT INTO `wp_postmeta` VALUES (614,113,'_column_videos_first_video','field_6147a5b580f16');
INSERT INTO `wp_postmeta` VALUES (615,113,'column_videos_second_video','https://www.youtube.com/watch?v=V8rKa5S6o5U');
INSERT INTO `wp_postmeta` VALUES (616,113,'_column_videos_second_video','field_6147a5c480f17');
INSERT INTO `wp_postmeta` VALUES (617,113,'column_videos_third_video','https://www.youtube.com/watch?v=YFHXiyJfAdc');
INSERT INTO `wp_postmeta` VALUES (618,113,'_column_videos_third_video','field_6147a5cd80f18');
INSERT INTO `wp_postmeta` VALUES (619,113,'column_videos','');
INSERT INTO `wp_postmeta` VALUES (620,113,'_column_videos','field_6147a50d17d15');
INSERT INTO `wp_postmeta` VALUES (621,113,'youtube_front_page_video','https://www.youtube.com/watch?v=YFHXiyJfAdc');
INSERT INTO `wp_postmeta` VALUES (622,113,'_youtube_front_page_video','field_61488fa43731b');
INSERT INTO `wp_postmeta` VALUES (623,113,'soundcloud_embed_repeater_3_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1097873494&color=ff5500\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/fantasy-rpg-sample-pack\" title=\"Fantasy RPG Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Fantasy RPG Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (624,113,'_soundcloud_embed_repeater_3_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (625,114,'instagram_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:39:\"https://www.instagram.com/atlasaudiouk/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (626,114,'_instagram_link','field_6143af8c56765');
INSERT INTO `wp_postmeta` VALUES (627,114,'facebook_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://www.facebook.com/AtlasAudioUK\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (628,114,'_facebook_link','field_6143af5c56764');
INSERT INTO `wp_postmeta` VALUES (629,114,'youtube_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:56:\"https://www.youtube.com/channel/UCsbBix1KNZYDmftlwQplQuw\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (630,114,'_youtube_link','field_6143afa256766');
INSERT INTO `wp_postmeta` VALUES (631,114,'soundcloud_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:44:\"https://soundcloud.com/atlas-audio-490771776\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (632,114,'_soundcloud_link','field_6143afb756767');
INSERT INTO `wp_postmeta` VALUES (633,114,'linkedin_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:50:\"https://www.linkedin.com/in/atlas-audio-006364214/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (634,114,'_linkedin_link','field_6143afc456768');
INSERT INTO `wp_postmeta` VALUES (635,114,'youtube_video_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:41:\"https://www.youtube.com/embed/YFHXiyJfAdc\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (636,114,'_youtube_video_link','field_6145dd523f302');
INSERT INTO `wp_postmeta` VALUES (637,114,'soundcloud_embed_repeater_0_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1097873494\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/fantasy-rpg-sample-pack\" title=\"Fantasy RPG Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Fantasy RPG Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (638,114,'_soundcloud_embed_repeater_0_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (639,114,'soundcloud_embed_repeater_1_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1053921520\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/orchestral-sample-pack\" title=\"Orchestral Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Orchestral Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (640,114,'_soundcloud_embed_repeater_1_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (641,114,'soundcloud_embed_repeater_2_iframe_code','<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1053921520\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/atlas-audio-490771776\" title=\"Atlas Audio\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Atlas Audio</a> · <a href=\"https://soundcloud.com/atlas-audio-490771776/orchestral-sample-pack\" title=\"Orchestral Sample Pack\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Orchestral Sample Pack</a></div>');
INSERT INTO `wp_postmeta` VALUES (642,114,'_soundcloud_embed_repeater_2_iframe_code','field_6145e79e59f16');
INSERT INTO `wp_postmeta` VALUES (643,114,'soundcloud_embed_repeater','3');
INSERT INTO `wp_postmeta` VALUES (644,114,'_soundcloud_embed_repeater','field_6145e79359f15');
INSERT INTO `wp_postmeta` VALUES (645,114,'column_videos_first_video','https://www.youtube.com/watch?v=YFHXiyJfAdc');
INSERT INTO `wp_postmeta` VALUES (646,114,'_column_videos_first_video','field_6147a5b580f16');
INSERT INTO `wp_postmeta` VALUES (647,114,'column_videos_second_video','https://www.youtube.com/watch?v=V8rKa5S6o5U');
INSERT INTO `wp_postmeta` VALUES (648,114,'_column_videos_second_video','field_6147a5c480f17');
INSERT INTO `wp_postmeta` VALUES (649,114,'column_videos_third_video','https://www.youtube.com/watch?v=YFHXiyJfAdc');
INSERT INTO `wp_postmeta` VALUES (650,114,'_column_videos_third_video','field_6147a5cd80f18');
INSERT INTO `wp_postmeta` VALUES (651,114,'column_videos','');
INSERT INTO `wp_postmeta` VALUES (652,114,'_column_videos','field_6147a50d17d15');
INSERT INTO `wp_postmeta` VALUES (653,114,'youtube_front_page_video','https://www.youtube.com/watch?v=YFHXiyJfAdc');
INSERT INTO `wp_postmeta` VALUES (654,114,'_youtube_front_page_video','field_61488fa43731b');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-09-15 14:52:59','2021-09-15 14:52:59','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2021-09-15 14:52:59','2021-09-15 14:52:59','',0,'http://atlaswp.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2021-09-15 14:52:59','2021-09-15 14:52:59','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://atlaswp.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2021-09-15 14:52:59','2021-09-15 14:52:59','',0,'http://atlaswp.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2021-09-15 14:52:59','2021-09-15 14:52:59','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://atlaswp.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2021-09-15 14:52:59','2021-09-15 14:52:59','',0,'http://atlaswp.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,1,'2021-09-15 15:06:44','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-09-15 15:06:44','0000-00-00 00:00:00','',0,'http://atlaswp.local/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2021-09-15 15:23:00','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-09-15 15:23:00','0000-00-00 00:00:00','',0,'http://atlaswp.local/?page_id=5',0,'page','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2021-09-15 15:23:42','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-09-15 15:23:42','0000-00-00 00:00:00','',0,'http://atlaswp.local/?page_id=6',0,'page','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2021-09-15 15:23:42','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-09-15 15:23:42','0000-00-00 00:00:00','',0,'http://atlaswp.local/?page_id=7',0,'page','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2021-09-15 15:23:57','2021-09-15 15:23:57','<h4><strong>At Atlas-Audio, we provide a multitude of musical services tailored specifically to your media.</strong></h4>\r\n&nbsp;\r\n\r\nLooking for a snappy soundtrack for your podcast? Composition for your RPG inspired game? Catchy background music for your advertisement? We can help bring your media to life. Fully produced within our professional studio, we’re able to provide exactly what your media needs, regardless of genre or style.\r\n\r\n&nbsp;\r\n\r\nWe pride ourselves on being able to provide 100% commitment and dedication to a single project, ensuring openness and excellent quality.\r\n\r\n&nbsp;\r\n\r\nWe guarantee a personable and professional service, containing open communication as well as a variety of pricing structures to suit your needs and budget.','Front Page','','publish','closed','closed','','front-page','','','2021-09-20 20:04:54','2021-09-20 20:04:54','',0,'http://atlaswp.local/?page_id=9',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2021-09-15 15:23:57','2021-09-15 15:23:57','','Front Page','','inherit','closed','closed','','9-revision-v1','','','2021-09-15 15:23:57','2021-09-15 15:23:57','',9,'http://atlaswp.local/?p=10',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2021-09-15 15:24:03','2021-09-15 15:24:03','','Blog','','publish','closed','closed','','blog-2','','','2021-09-15 15:24:03','2021-09-15 15:24:03','',0,'http://atlaswp.local/?page_id=12',0,'page','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2021-09-15 15:24:03','2021-09-15 15:24:03','','Blog','','inherit','closed','closed','','12-revision-v1','','','2021-09-15 15:24:03','2021-09-15 15:24:03','',12,'http://atlaswp.local/?p=15',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2021-09-16 15:26:23','2021-09-16 15:26:23','','logo','','inherit','open','closed','','logo','','','2021-09-16 15:26:23','2021-09-16 15:26:23','',0,'http://atlaswp.local/wp-content/uploads/2021/09/logo.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (17,1,'2021-09-16 15:26:26','2021-09-16 15:26:26','http://atlaswp.local/wp-content/uploads/2021/09/cropped-logo.png','cropped-logo.png','','inherit','open','closed','','cropped-logo-png','','','2021-09-16 15:26:26','2021-09-16 15:26:26','',0,'http://atlaswp.local/wp-content/uploads/2021/09/cropped-logo.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (18,1,'2021-09-16 15:26:28','2021-09-16 15:26:28','{\n    \"atlasTheme::custom_logo\": {\n        \"value\": 17,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-16 15:26:28\"\n    }\n}','','','trash','closed','closed','','9e35db66-6605-4144-88a0-226454b9b205','','','2021-09-16 15:26:28','2021-09-16 15:26:28','',0,'http://atlaswp.local/9e35db66-6605-4144-88a0-226454b9b205/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2021-09-19 13:01:45','2021-09-16 15:31:19','','Atlas-Audio','','publish','closed','closed','','19','','','2021-09-19 13:01:45','2021-09-19 13:01:45','',0,'http://atlaswp.local/?p=19',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2021-09-16 20:58:01','2021-09-16 20:58:01','a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"9\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"32\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Social Media','social-media','publish','closed','closed','','group_6143af51e4eb3','','','2021-09-19 15:50:35','2021-09-19 15:50:35','',0,'http://atlaswp.local/?post_type=acf-field-group&#038;p=23',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2021-09-16 20:58:01','2021-09-16 20:58:01','a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}','Instagram Link','instagram_link','publish','closed','closed','','field_6143af8c56765','','','2021-09-16 20:58:01','2021-09-16 20:58:01','',23,'http://atlaswp.local/?post_type=acf-field&p=24',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2021-09-16 20:58:01','2021-09-16 20:58:01','a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}','Facebook Link','facebook_link','publish','closed','closed','','field_6143af5c56764','','','2021-09-16 20:58:01','2021-09-16 20:58:01','',23,'http://atlaswp.local/?post_type=acf-field&p=25',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2021-09-16 20:58:01','2021-09-16 20:58:01','a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}','Youtube Link','youtube_link','publish','closed','closed','','field_6143afa256766','','','2021-09-16 20:58:01','2021-09-16 20:58:01','',23,'http://atlaswp.local/?post_type=acf-field&p=26',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2021-09-16 20:58:01','2021-09-16 20:58:01','a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}','Soundcloud Link','soundcloud_link','publish','closed','closed','','field_6143afb756767','','','2021-09-16 20:58:01','2021-09-16 20:58:01','',23,'http://atlaswp.local/?post_type=acf-field&p=27',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2021-09-16 20:58:01','2021-09-16 20:58:01','a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}','LinkedIn Link','linkedin_link','publish','closed','closed','','field_6143afc456768','','','2021-09-16 20:58:01','2021-09-16 20:58:01','',23,'http://atlaswp.local/?post_type=acf-field&p=28',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2021-09-16 20:58:53','2021-09-16 20:58:53','','Front Page','','inherit','closed','closed','','9-revision-v1','','','2021-09-16 20:58:53','2021-09-16 20:58:53','',9,'http://atlaswp.local/?p=29',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2021-09-18 12:11:20','2021-09-18 12:11:20','Atlas-Audio, formed by creative duo Alex Adams and Julian Kirk, and assisted by Jake Aubrey, is a music for media company where bespoke soundtracks are born and uniquely crafted to suit their purpose. Since childhood, Alex and Julian have been composing both in bands and technology. Inspired by their love of Games, TV &amp; Film, and a special energy of passion and oneupmanship, Atlas-Audio is the culmination of a combined love of crafting sound worlds to a brief.','About Us','','publish','closed','closed','','about-us','','','2021-09-19 13:34:31','2021-09-19 13:34:31','',0,'http://atlaswp.local/?page_id=30',0,'page','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2021-09-18 12:11:20','2021-09-18 12:11:20','','About Us','','inherit','closed','closed','','30-revision-v1','','','2021-09-18 12:11:20','2021-09-18 12:11:20','',30,'http://atlaswp.local/?p=31',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2021-09-18 12:11:32','2021-09-18 12:11:32','Interested in bringing your media to life with bespoke composition? Feel free to contact us below for more information!','Contact','','publish','closed','closed','','contact','','','2021-09-19 16:27:09','2021-09-19 16:27:09','',0,'http://atlaswp.local/?page_id=32',0,'page','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2021-09-18 12:11:32','2021-09-18 12:11:32','','Contact','','inherit','closed','closed','','32-revision-v1','','','2021-09-18 12:11:32','2021-09-18 12:11:32','',32,'http://atlaswp.local/?p=33',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2021-09-19 13:01:45','2021-09-18 12:11:42',' ','','','publish','closed','closed','','34','','','2021-09-19 13:01:45','2021-09-19 13:01:45','',0,'http://atlaswp.local/?p=34',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2021-09-19 13:01:45','2021-09-18 12:11:42',' ','','','publish','closed','closed','','35','','','2021-09-19 13:01:45','2021-09-19 13:01:45','',0,'http://atlaswp.local/?p=35',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2021-09-18 12:29:27','2021-09-18 12:29:27','<h4>At Atlas-Audio, we provide a multitude of musical services tailored specifically to your media.</h4>\r\n<p class=\"p1\">Looking for a snappy soundtrack for your podcast? Composition for your RPG inspired game? Catchy background music for your advertisement? We can help bring your media to life. Fully produced within our professional studio, we’re able to provide exactly what your media needs, regardless of genre or style.</p>\r\n<p class=\"p1\">We pride ourselves on being able to provide 100% commitment and dedication to a single project, ensuring openness and excellent quality.</p>\r\n<p class=\"p1\">We guarantee a personable and professional service, containing open communication as well as a variety of pricing structures to suit your needs and budget.</p>','Front Page','','inherit','closed','closed','','9-revision-v1','','','2021-09-18 12:29:27','2021-09-18 12:29:27','',9,'http://atlaswp.local/?p=36',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2021-09-18 12:31:39','2021-09-18 12:31:39','At Atlas-Audio, we provide a multitude of musical services tailored specifically to your media.\r\n\r\nLooking for a snappy soundtrack for your podcast? Composition for your RPG inspired game? Catchy background music for your advertisement? We can help bring your media to life. Fully produced within our professional studio, we’re able to provide exactly what your media needs, regardless of genre or style.\r\n\r\nWe pride ourselves on being able to provide 100% commitment and dedication to a single project, ensuring openness and excellent quality.\r\n\r\nWe guarantee a personable and professional service, containing open communication as well as a variety of pricing structures to suit your needs and budget.','Front Page','','inherit','closed','closed','','9-revision-v1','','','2021-09-18 12:31:39','2021-09-18 12:31:39','',9,'http://atlaswp.local/?p=37',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2021-09-18 12:31:46','2021-09-18 12:31:46','<strong>At Atlas-Audio, we provide a multitude of musical services tailored specifically to your media.</strong>\r\n\r\nLooking for a snappy soundtrack for your podcast? Composition for your RPG inspired game? Catchy background music for your advertisement? We can help bring your media to life. Fully produced within our professional studio, we’re able to provide exactly what your media needs, regardless of genre or style.\r\n\r\nWe pride ourselves on being able to provide 100% commitment and dedication to a single project, ensuring openness and excellent quality.\r\n\r\nWe guarantee a personable and professional service, containing open communication as well as a variety of pricing structures to suit your needs and budget.','Front Page','','inherit','closed','closed','','9-revision-v1','','','2021-09-18 12:31:46','2021-09-18 12:31:46','',9,'http://atlaswp.local/?p=38',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2021-09-18 12:32:32','2021-09-18 12:32:32','<strong>At Atlas-Audio, we provide a multitude of musical services tailored specifically to your media.</strong>\r\n\r\nLooking for a snappy soundtrack for your podcast? Composition for your RPG inspired game? Catchy background music for your advertisement? We can help bring your media to life. Fully produced within our professional studio, we’re able to provide exactly what your media needs, regardless of genre or style.\r\n\r\n&nbsp;\r\n\r\nWe pride ourselves on being able to provide 100% commitment and dedication to a single project, ensuring openness and excellent quality.\r\n\r\nWe guarantee a personable and professional service, containing open communication as well as a variety of pricing structures to suit your needs and budget.','Front Page','','inherit','closed','closed','','9-revision-v1','','','2021-09-18 12:32:32','2021-09-18 12:32:32','',9,'http://atlaswp.local/?p=39',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2021-09-18 12:32:48','2021-09-18 12:32:48','<strong>At Atlas-Audio, we provide a multitude of musical services tailored specifically to your media.</strong>\r\n\r\n&nbsp;\r\n\r\nLooking for a snappy soundtrack for your podcast? Composition for your RPG inspired game? Catchy background music for your advertisement? We can help bring your media to life. Fully produced within our professional studio, we’re able to provide exactly what your media needs, regardless of genre or style.\r\n\r\n&nbsp;\r\n\r\nWe pride ourselves on being able to provide 100% commitment and dedication to a single project, ensuring openness and excellent quality.\r\n\r\n&nbsp;\r\n\r\nWe guarantee a personable and professional service, containing open communication as well as a variety of pricing structures to suit your needs and budget.','Front Page','','inherit','closed','closed','','9-revision-v1','','','2021-09-18 12:32:48','2021-09-18 12:32:48','',9,'http://atlaswp.local/?p=40',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2021-09-18 12:34:55','2021-09-18 12:34:55','<h3><strong>At Atlas-Audio, we provide a multitude of musical services tailored specifically to your media.</strong></h3>\r\n&nbsp;\r\n\r\nLooking for a snappy soundtrack for your podcast? Composition for your RPG inspired game? Catchy background music for your advertisement? We can help bring your media to life. Fully produced within our professional studio, we’re able to provide exactly what your media needs, regardless of genre or style.\r\n\r\n&nbsp;\r\n\r\nWe pride ourselves on being able to provide 100% commitment and dedication to a single project, ensuring openness and excellent quality.\r\n\r\n&nbsp;\r\n\r\nWe guarantee a personable and professional service, containing open communication as well as a variety of pricing structures to suit your needs and budget.','Front Page','','inherit','closed','closed','','9-revision-v1','','','2021-09-18 12:34:55','2021-09-18 12:34:55','',9,'http://atlaswp.local/?p=41',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2021-09-18 12:35:04','2021-09-18 12:35:04','<h2><strong>At Atlas-Audio, we provide a multitude of musical services tailored specifically to your media.</strong></h2>\r\n&nbsp;\r\n\r\nLooking for a snappy soundtrack for your podcast? Composition for your RPG inspired game? Catchy background music for your advertisement? We can help bring your media to life. Fully produced within our professional studio, we’re able to provide exactly what your media needs, regardless of genre or style.\r\n\r\n&nbsp;\r\n\r\nWe pride ourselves on being able to provide 100% commitment and dedication to a single project, ensuring openness and excellent quality.\r\n\r\n&nbsp;\r\n\r\nWe guarantee a personable and professional service, containing open communication as well as a variety of pricing structures to suit your needs and budget.','Front Page','','inherit','closed','closed','','9-revision-v1','','','2021-09-18 12:35:04','2021-09-18 12:35:04','',9,'http://atlaswp.local/?p=42',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2021-09-18 12:35:23','2021-09-18 12:35:23','<h4><strong>At Atlas-Audio, we provide a multitude of musical services tailored specifically to your media.</strong></h4>\r\n&nbsp;\r\n\r\nLooking for a snappy soundtrack for your podcast? Composition for your RPG inspired game? Catchy background music for your advertisement? We can help bring your media to life. Fully produced within our professional studio, we’re able to provide exactly what your media needs, regardless of genre or style.\r\n\r\n&nbsp;\r\n\r\nWe pride ourselves on being able to provide 100% commitment and dedication to a single project, ensuring openness and excellent quality.\r\n\r\n&nbsp;\r\n\r\nWe guarantee a personable and professional service, containing open communication as well as a variety of pricing structures to suit your needs and budget.','Front Page','','inherit','closed','closed','','9-revision-v1','','','2021-09-18 12:35:23','2021-09-18 12:35:23','',9,'http://atlaswp.local/?p=43',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2021-09-18 12:37:32','2021-09-18 12:37:32','<h4><strong>At Atlas-Audio, we provide a multitude of musical services tailored specifically to your media.</strong></h4>\r\n&nbsp;\r\n\r\nLooking for a snappy soundtrack for your podcast? Composition for your RPG inspired game? Catchy background music for your advertisement? We can help bring your media to life. Fully produced within our professional studio, we’re able to provide exactly what your media needs, regardless of genre or style.\r\n\r\n&nbsp;\r\n\r\nWe pride ourselves on being able to provide 100% commitment and dedication to a single project, ensuring openness and excellent quality.\r\n\r\n&nbsp;\r\n\r\nWe guarantee a personable and professional service, containing open communication as well as a variety of pricing structures to suit your needs and budget.','Front Page','','inherit','closed','closed','','9-revision-v1','','','2021-09-18 12:37:32','2021-09-18 12:37:32','',9,'http://atlaswp.local/?p=46',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2021-09-18 12:54:28','2021-09-18 12:54:28','<h4><strong>At Atlas-Audio, we provide a multitude of musical services tailored specifically to your media.</strong></h4>\r\n&nbsp;\r\n\r\nLooking for a snappy soundtrack for your podcast? Composition for your RPG inspired game? Catchy background music for your advertisement? We can help bring your media to life. Fully produced within our professional studio, we’re able to provide exactly what your media needs, regardless of genre or style.\r\n\r\n&nbsp;\r\n\r\nWe pride ourselves on being able to provide 100% commitment and dedication to a single project, ensuring openness and excellent quality.\r\n\r\n&nbsp;\r\n\r\nWe guarantee a personable and professional service, containing open communication as well as a variety of pricing structures to suit your needs and budget.','Front Page','','inherit','closed','closed','','9-revision-v1','','','2021-09-18 12:54:28','2021-09-18 12:54:28','',9,'http://atlaswp.local/?p=47',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2021-09-18 13:13:47','2021-09-18 13:13:47','<h4><strong>At Atlas-Audio, we provide a multitude of musical services tailored specifically to your media.</strong></h4>\r\n&nbsp;\r\n\r\nLooking for a snappy soundtrack for your podcast? Composition for your RPG inspired game? Catchy background music for your advertisement? We can help bring your media to life. Fully produced within our professional studio, we’re able to provide exactly what your media needs, regardless of genre or style.\r\n\r\n&nbsp;\r\n\r\nWe pride ourselves on being able to provide 100% commitment and dedication to a single project, ensuring openness and excellent quality.\r\n\r\n&nbsp;\r\n\r\nWe guarantee a personable and professional service, containing open communication as well as a variety of pricing structures to suit your needs and budget.','Front Page','','inherit','closed','closed','','9-revision-v1','','','2021-09-18 13:13:47','2021-09-18 13:13:47','',9,'http://atlaswp.local/?p=51',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2021-09-18 13:20:53','2021-09-18 13:20:53','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"9\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','SoundCloud Embed Repeater','soundcloud-embed-repeater','publish','closed','closed','','group_6145e789a7569','','','2021-09-20 13:48:52','2021-09-20 13:48:52','',0,'http://atlaswp.local/?post_type=acf-field-group&#038;p=52',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2021-09-18 13:20:53','2021-09-18 13:20:53','a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}','','soundcloud_embed_repeater','publish','closed','closed','','field_6145e79359f15','','','2021-09-20 13:48:52','2021-09-20 13:48:52','',52,'http://atlaswp.local/?post_type=acf-field&#038;p=53',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2021-09-18 13:20:53','2021-09-18 13:20:53','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Iframe Code','iframe_code','publish','closed','closed','','field_6145e79e59f16','','','2021-09-18 13:20:53','2021-09-18 13:20:53','',53,'http://atlaswp.local/?post_type=acf-field&p=54',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2021-09-19 13:01:31','2021-09-19 13:01:31','“Working with Atlas, collaborating with Julian Kirk and Alex Adams was an absolute pleasure. Right from the start they were enthusiastic about the creative process, keen to listen, were passionate about building the best work they could do, but more importantly, they were aware of how close I was to my project and only wanted to honour that bond to do it justice while it was in their capable hands, and I would trust them again with my work 100% because they certainly delivered. I’ve already notified Atlas Audio of future projects, projects that would not be the same without their talents. I look forward to what comes next, I am excited about my franchises growth, and if you are like me, and are looking for someone to manage your music, if you’re seeking creatives in this field, I highly recommend getting in touch with Atlas Audio.”','Testimonials','','publish','closed','closed','','testimonials','','','2021-09-20 13:47:53','2021-09-20 13:47:53','',0,'http://atlaswp.local/?page_id=55',0,'page','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2021-09-19 13:01:31','2021-09-19 13:01:31','','Testimonials','','inherit','closed','closed','','55-revision-v1','','','2021-09-19 13:01:31','2021-09-19 13:01:31','',55,'http://atlaswp.local/?p=56',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2021-09-19 13:01:45','2021-09-19 13:01:45',' ','','','publish','closed','closed','','57','','','2021-09-19 13:01:45','2021-09-19 13:01:45','',0,'http://atlaswp.local/?p=57',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2021-09-19 13:20:00','2021-09-19 13:20:00','Atlas-Audio, formed by creative duo Alex Adams and Julian Kirk, and assisted by Jake Aubrey, is a music for media company where bespoke soundtracks are born and uniquely crafted to suit their purpose. Since childhood, Alex and Julian have been composing both in bands and technology. Inspired by their love of Games, TV &amp; Film, and a special energy of passion and oneupmanship, Atlas-Audio is the culmination of a combined love of crafting sound worlds to a brief.','About Us','','inherit','closed','closed','','30-revision-v1','','','2021-09-19 13:20:00','2021-09-19 13:20:00','',30,'http://atlaswp.local/?p=58',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2021-09-19 13:23:28','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-09-19 13:23:28','0000-00-00 00:00:00','',0,'http://atlaswp.local/?post_type=acf-field-group&p=59',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2021-09-19 13:25:23','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-09-19 13:25:23','0000-00-00 00:00:00','',0,'http://atlaswp.local/?post_type=acf-field-group&p=60',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2021-09-19 13:27:02','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-09-19 13:27:02','0000-00-00 00:00:00','',0,'http://atlaswp.local/?post_type=acf-field-group&p=61',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2021-09-19 13:27:28','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-09-19 13:27:28','0000-00-00 00:00:00','',0,'http://atlaswp.local/?post_type=acf-field-group&p=62',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2021-09-19 13:27:38','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-09-19 13:27:38','0000-00-00 00:00:00','',0,'http://atlaswp.local/?post_type=acf-field-group&p=63',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2021-09-19 13:33:32','2021-09-19 13:33:32','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"30\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','About Us Gallery','about-us-gallery','publish','closed','closed','','group_61473ad6a6d93','','','2021-09-19 13:33:32','2021-09-19 13:33:32','',0,'http://atlaswp.local/?post_type=acf-field-group&#038;p=64',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2021-09-19 13:33:32','2021-09-19 13:33:32','a:18:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:14:\"aboutusGallery\";s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','About Us Gallery','about_us_gallery','publish','closed','closed','','field_61473b9f42ac5','','','2021-09-19 13:33:32','2021-09-19 13:33:32','',64,'http://atlaswp.local/?post_type=acf-field&p=65',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2021-09-19 13:34:17','2021-09-19 13:34:17','','Atlas-Audio-Photos-36-1024x683','','inherit','open','closed','','atlas-audio-photos-36-1024x683','','','2021-09-19 13:34:17','2021-09-19 13:34:17','',30,'http://atlaswp.local/wp-content/uploads/2021/09/Atlas-Audio-Photos-36-1024x683-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (67,1,'2021-09-19 13:34:18','2021-09-19 13:34:18','','Atlas-Audio-Photos-25-1024x576','','inherit','open','closed','','atlas-audio-photos-25-1024x576','','','2021-09-19 13:34:18','2021-09-19 13:34:18','',30,'http://atlaswp.local/wp-content/uploads/2021/09/Atlas-Audio-Photos-25-1024x576-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (68,1,'2021-09-19 13:34:19','2021-09-19 13:34:19','','Atlas-Audio-Photos-22-1024x683','','inherit','open','closed','','atlas-audio-photos-22-1024x683','','','2021-09-19 13:34:19','2021-09-19 13:34:19','',30,'http://atlaswp.local/wp-content/uploads/2021/09/Atlas-Audio-Photos-22-1024x683-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (69,1,'2021-09-19 13:34:20','2021-09-19 13:34:20','','Atlas-Audio-Photos-11-1024x683','','inherit','open','closed','','atlas-audio-photos-11-1024x683','','','2021-09-19 13:34:20','2021-09-19 13:34:20','',30,'http://atlaswp.local/wp-content/uploads/2021/09/Atlas-Audio-Photos-11-1024x683-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (70,1,'2021-09-19 13:34:21','2021-09-19 13:34:21','','aboutusBG (1)','','inherit','open','closed','','aboutusbg-1','','','2021-09-19 13:34:21','2021-09-19 13:34:21','',30,'http://atlaswp.local/wp-content/uploads/2021/09/aboutusBG-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (71,1,'2021-09-19 13:34:31','2021-09-19 13:34:31','Atlas-Audio, formed by creative duo Alex Adams and Julian Kirk, and assisted by Jake Aubrey, is a music for media company where bespoke soundtracks are born and uniquely crafted to suit their purpose. Since childhood, Alex and Julian have been composing both in bands and technology. Inspired by their love of Games, TV &amp; Film, and a special energy of passion and oneupmanship, Atlas-Audio is the culmination of a combined love of crafting sound worlds to a brief.','About Us','','inherit','closed','closed','','30-revision-v1','','','2021-09-19 13:34:31','2021-09-19 13:34:31','',30,'http://atlaswp.local/?p=71',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2021-09-19 14:37:29','2021-09-19 14:37:29','“Working with Atlas, collaborating with Julian Kirk and Alex Adams was an absolute pleasure. Right from the start they were enthusiastic about the creative process, keen to listen, were passionate about building the best work they could do, but more importantly, they were aware of how close I was to my project and only wanted to honour that bond to do it justice while it was in their capable hands, and I would trust them again with my work 100% because they certainly delivered. I’ve already notified Atlas Audio of future projects, projects that would not be the same without their talents. I look forward to what comes next, I am excited about my franchises growth, and if you are like me, and are looking for someone to manage your music, if you’re seeking creatives in this field, I highly recommend getting in touch with Atlas Audio.”','Testimonials','','inherit','closed','closed','','55-revision-v1','','','2021-09-19 14:37:29','2021-09-19 14:37:29','',55,'http://atlaswp.local/?p=72',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2021-09-19 14:38:16','2021-09-19 14:38:16','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"55\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Testimonials Title','testimonials-title','publish','closed','closed','','group_61474b32eb523','','','2021-09-19 14:38:16','2021-09-19 14:38:16','',0,'http://atlaswp.local/?post_type=acf-field-group&#038;p=73',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2021-09-19 14:38:16','2021-09-19 14:38:16','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Testimonials Title','testimonials_title','publish','closed','closed','','field_61474b45d7c42','','','2021-09-19 14:38:16','2021-09-19 14:38:16','',73,'http://atlaswp.local/?post_type=acf-field&p=74',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2021-09-19 14:38:38','2021-09-19 14:38:38','“Working with Atlas, collaborating with Julian Kirk and Alex Adams was an absolute pleasure. Right from the start they were enthusiastic about the creative process, keen to listen, were passionate about building the best work they could do, but more importantly, they were aware of how close I was to my project and only wanted to honour that bond to do it justice while it was in their capable hands, and I would trust them again with my work 100% because they certainly delivered. I’ve already notified Atlas Audio of future projects, projects that would not be the same without their talents. I look forward to what comes next, I am excited about my franchises growth, and if you are like me, and are looking for someone to manage your music, if you’re seeking creatives in this field, I highly recommend getting in touch with Atlas Audio.”','Testimonials','','inherit','closed','closed','','55-revision-v1','','','2021-09-19 14:38:38','2021-09-19 14:38:38','',55,'http://atlaswp.local/?p=75',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2021-09-19 14:40:00','2021-09-19 14:40:00','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"55\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Testimonial Youtube Video','testimonial-youtube-video','publish','closed','closed','','group_61474b8121bb0','','','2021-09-19 14:40:47','2021-09-19 14:40:47','',0,'http://atlaswp.local/?post_type=acf-field-group&#038;p=76',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2021-09-19 14:40:00','2021-09-19 14:40:00','a:7:{s:4:\"type\";s:6:\"oembed\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:5:\"width\";i:790;s:6:\"height\";i:450;}','','testimonial_youtube_video','publish','closed','closed','','field_61474b8eec6fd','','','2021-09-19 14:40:47','2021-09-19 14:40:47','',76,'http://atlaswp.local/?post_type=acf-field&#038;p=77',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2021-09-19 14:41:08','2021-09-19 14:41:08','“Working with Atlas, collaborating with Julian Kirk and Alex Adams was an absolute pleasure. Right from the start they were enthusiastic about the creative process, keen to listen, were passionate about building the best work they could do, but more importantly, they were aware of how close I was to my project and only wanted to honour that bond to do it justice while it was in their capable hands, and I would trust them again with my work 100% because they certainly delivered. I’ve already notified Atlas Audio of future projects, projects that would not be the same without their talents. I look forward to what comes next, I am excited about my franchises growth, and if you are like me, and are looking for someone to manage your music, if you’re seeking creatives in this field, I highly recommend getting in touch with Atlas Audio.”','Testimonials','','inherit','closed','closed','','55-revision-v1','','','2021-09-19 14:41:08','2021-09-19 14:41:08','',55,'http://atlaswp.local/?p=78',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2021-09-19 14:53:33','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-09-19 14:53:33','0000-00-00 00:00:00','',0,'http://atlaswp.local/?post_type=acf-field-group&p=79',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2021-09-19 14:56:17','2021-09-19 14:56:17','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"55\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Testimonial Repeater','testimonial-repeater','publish','closed','closed','','group_61474f2b295df','','','2021-09-19 15:21:05','2021-09-19 15:21:05','',0,'http://atlaswp.local/?post_type=acf-field-group&#038;p=80',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2021-09-19 14:56:17','2021-09-19 14:56:17','a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}','','testimonial_repeater','publish','closed','closed','','field_61474f331e108','','','2021-09-19 14:58:48','2021-09-19 14:58:48','',80,'http://atlaswp.local/?post_type=acf-field&#038;p=81',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2021-09-19 14:56:17','2021-09-19 14:56:17','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"30\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Testimonial Title','testimonial_title','publish','closed','closed','','field_61474f391e109','','','2021-09-19 14:58:04','2021-09-19 14:58:04','',81,'http://atlaswp.local/?post_type=acf-field&#038;p=82',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2021-09-19 14:56:17','2021-09-19 14:56:17','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"40\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:5;s:9:\"new_lines\";s:0:\"\";}','Testimonial Content','testimonial_content','publish','closed','closed','','field_61474f6f1e10a','','','2021-09-19 14:58:04','2021-09-19 14:58:04','',81,'http://atlaswp.local/?post_type=acf-field&#038;p=83',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2021-09-19 14:56:17','2021-09-19 14:56:17','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"30\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:15:\"testimonialSize\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Testimonial Image','testimonial_image','publish','closed','closed','','field_61474f7b1e10b','','','2021-09-19 15:21:05','2021-09-19 15:21:05','',81,'http://atlaswp.local/?post_type=acf-field&#038;p=84',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2021-09-19 15:11:57','2021-09-19 15:11:57','','Lights-cameras-blokes-1024x576','','inherit','open','closed','','lights-cameras-blokes-1024x576','','','2021-09-19 15:11:57','2021-09-19 15:11:57','',55,'http://atlaswp.local/wp-content/uploads/2021/09/Lights-cameras-blokes-1024x576-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (86,1,'2021-09-19 15:11:59','2021-09-19 15:11:59','','HHT-Cover-1024x576','','inherit','open','closed','','hht-cover-1024x576','','','2021-09-19 15:11:59','2021-09-19 15:11:59','',55,'http://atlaswp.local/wp-content/uploads/2021/09/HHT-Cover-1024x576-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (87,1,'2021-09-19 15:12:19','2021-09-19 15:12:19','“Working with Atlas, collaborating with Julian Kirk and Alex Adams was an absolute pleasure. Right from the start they were enthusiastic about the creative process, keen to listen, were passionate about building the best work they could do, but more importantly, they were aware of how close I was to my project and only wanted to honour that bond to do it justice while it was in their capable hands, and I would trust them again with my work 100% because they certainly delivered. I’ve already notified Atlas Audio of future projects, projects that would not be the same without their talents. I look forward to what comes next, I am excited about my franchises growth, and if you are like me, and are looking for someone to manage your music, if you’re seeking creatives in this field, I highly recommend getting in touch with Atlas Audio.”','Testimonials','','inherit','closed','closed','','55-revision-v1','','','2021-09-19 15:12:19','2021-09-19 15:12:19','',55,'http://atlaswp.local/?p=87',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2021-09-19 15:50:43','2021-09-19 15:50:43','Interested in bringing your media to life with bespoke composition? Feel free to contact us below for more information!','Contact','','inherit','closed','closed','','32-revision-v1','','','2021-09-19 15:50:43','2021-09-19 15:50:43','',32,'http://atlaswp.local/?p=88',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2021-09-19 16:00:06','2021-09-19 16:00:06','Interested in bringing your media to life with bespoke composition? Feel free to contact us below for more information!','Contact','','inherit','closed','closed','','32-revision-v1','','','2021-09-19 16:00:06','2021-09-19 16:00:06','',32,'http://atlaswp.local/?p=91',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2021-09-19 16:00:22','2021-09-19 16:00:22','<h4><strong>At Atlas-Audio, we provide a multitude of musical services tailored specifically to your media.</strong></h4>\r\n&nbsp;\r\n\r\nLooking for a snappy soundtrack for your podcast? Composition for your RPG inspired game? Catchy background music for your advertisement? We can help bring your media to life. Fully produced within our professional studio, we’re able to provide exactly what your media needs, regardless of genre or style.\r\n\r\n&nbsp;\r\n\r\nWe pride ourselves on being able to provide 100% commitment and dedication to a single project, ensuring openness and excellent quality.\r\n\r\n&nbsp;\r\n\r\nWe guarantee a personable and professional service, containing open communication as well as a variety of pricing structures to suit your needs and budget.','Front Page','','inherit','closed','closed','','9-revision-v1','','','2021-09-19 16:00:22','2021-09-19 16:00:22','',9,'http://atlaswp.local/?p=92',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2021-09-19 16:01:34','2021-09-19 16:01:34','<h4><strong>At Atlas-Audio, we provide a multitude of musical services tailored specifically to your media.</strong></h4>\r\n&nbsp;\r\n\r\nLooking for a snappy soundtrack for your podcast? Composition for your RPG inspired game? Catchy background music for your advertisement? We can help bring your media to life. Fully produced within our professional studio, we’re able to provide exactly what your media needs, regardless of genre or style.\r\n\r\n&nbsp;\r\n\r\nWe pride ourselves on being able to provide 100% commitment and dedication to a single project, ensuring openness and excellent quality.\r\n\r\n&nbsp;\r\n\r\nWe guarantee a personable and professional service, containing open communication as well as a variety of pricing structures to suit your needs and budget.','Front Page','','inherit','closed','closed','','9-revision-v1','','','2021-09-19 16:01:34','2021-09-19 16:01:34','',9,'http://atlaswp.local/?p=93',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2021-09-19 16:01:38','2021-09-19 16:01:38','Interested in bringing your media to life with bespoke composition? Feel free to contact us below for more information!','Contact','','inherit','closed','closed','','32-revision-v1','','','2021-09-19 16:01:38','2021-09-19 16:01:38','',32,'http://atlaswp.local/?p=94',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2021-09-19 16:08:12','2021-09-19 16:08:12','','Atlas-Audio-White-no-background-1024x1024','','inherit','open','closed','','atlas-audio-white-no-background-1024x1024','','','2021-09-19 16:08:12','2021-09-19 16:08:12','',9,'http://atlaswp.local/wp-content/uploads/2021/09/Atlas-Audio-White-no-background-1024x1024-1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (96,1,'2021-09-19 16:23:13','2021-09-19 16:23:13','','Atlas-Audio-White-no-background-1024x1024','','inherit','open','closed','','atlas-audio-white-no-background-1024x1024-2','','','2021-09-19 16:23:13','2021-09-19 16:23:13','',32,'http://atlaswp.local/wp-content/uploads/2021/09/Atlas-Audio-White-no-background-1024x1024-2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (97,1,'2021-09-19 16:27:06','2021-09-19 16:27:06','','Atlas-Audio-White-no-background-1024x1024','','inherit','open','closed','','atlas-audio-white-no-background-1024x1024-3','','','2021-09-19 16:27:06','2021-09-19 16:27:06','',32,'http://atlaswp.local/wp-content/uploads/2021/09/Atlas-Audio-White-no-background-1024x1024-3.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (98,1,'2021-09-19 21:02:30','2021-09-19 21:02:30','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"9\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Column Videos','column-videos','publish','closed','closed','','group_6147a50130a54','','','2021-09-19 21:04:29','2021-09-19 21:04:29','',0,'http://atlaswp.local/?post_type=acf-field-group&#038;p=98',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2021-09-19 21:02:30','2021-09-19 21:02:30','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','','column_videos','publish','closed','closed','','field_6147a50d17d15','','','2021-09-19 21:04:29','2021-09-19 21:04:29','',98,'http://atlaswp.local/?post_type=acf-field&#038;p=99',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2021-09-19 21:04:24','2021-09-19 21:04:24','a:7:{s:4:\"type\";s:6:\"oembed\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','First Video','first_video','publish','closed','closed','','field_6147a5b580f16','','','2021-09-19 21:04:24','2021-09-19 21:04:24','',99,'http://atlaswp.local/?post_type=acf-field&p=103',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2021-09-19 21:04:24','2021-09-19 21:04:24','a:7:{s:4:\"type\";s:6:\"oembed\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','Second Video','second_video','publish','closed','closed','','field_6147a5c480f17','','','2021-09-19 21:04:24','2021-09-19 21:04:24','',99,'http://atlaswp.local/?post_type=acf-field&p=104',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2021-09-19 21:04:24','2021-09-19 21:04:24','a:7:{s:4:\"type\";s:6:\"oembed\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','Third Video','third_video','publish','closed','closed','','field_6147a5cd80f18','','','2021-09-19 21:04:24','2021-09-19 21:04:24','',99,'http://atlaswp.local/?post_type=acf-field&p=105',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2021-09-19 21:05:27','2021-09-19 21:05:27','<h4><strong>At Atlas-Audio, we provide a multitude of musical services tailored specifically to your media.</strong></h4>\r\n&nbsp;\r\n\r\nLooking for a snappy soundtrack for your podcast? Composition for your RPG inspired game? Catchy background music for your advertisement? We can help bring your media to life. Fully produced within our professional studio, we’re able to provide exactly what your media needs, regardless of genre or style.\r\n\r\n&nbsp;\r\n\r\nWe pride ourselves on being able to provide 100% commitment and dedication to a single project, ensuring openness and excellent quality.\r\n\r\n&nbsp;\r\n\r\nWe guarantee a personable and professional service, containing open communication as well as a variety of pricing structures to suit your needs and budget.','Front Page','','inherit','closed','closed','','9-revision-v1','','','2021-09-19 21:05:27','2021-09-19 21:05:27','',9,'http://atlaswp.local/?p=106',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2021-09-19 21:19:16','2021-09-19 21:19:16','<h4><strong>At Atlas-Audio, we provide a multitude of musical services tailored specifically to your media.</strong></h4>\r\n&nbsp;\r\n\r\nLooking for a snappy soundtrack for your podcast? Composition for your RPG inspired game? Catchy background music for your advertisement? We can help bring your media to life. Fully produced within our professional studio, we’re able to provide exactly what your media needs, regardless of genre or style.\r\n\r\n&nbsp;\r\n\r\nWe pride ourselves on being able to provide 100% commitment and dedication to a single project, ensuring openness and excellent quality.\r\n\r\n&nbsp;\r\n\r\nWe guarantee a personable and professional service, containing open communication as well as a variety of pricing structures to suit your needs and budget.','Front Page','','inherit','closed','closed','','9-revision-v1','','','2021-09-19 21:19:16','2021-09-19 21:19:16','',9,'http://atlaswp.local/?p=107',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (108,1,'2021-09-19 21:19:49','2021-09-19 21:19:49','<h4><strong>At Atlas-Audio, we provide a multitude of musical services tailored specifically to your media.</strong></h4>\r\n&nbsp;\r\n\r\nLooking for a snappy soundtrack for your podcast? Composition for your RPG inspired game? Catchy background music for your advertisement? We can help bring your media to life. Fully produced within our professional studio, we’re able to provide exactly what your media needs, regardless of genre or style.\r\n\r\n&nbsp;\r\n\r\nWe pride ourselves on being able to provide 100% commitment and dedication to a single project, ensuring openness and excellent quality.\r\n\r\n&nbsp;\r\n\r\nWe guarantee a personable and professional service, containing open communication as well as a variety of pricing structures to suit your needs and budget.','Front Page','','inherit','closed','closed','','9-revision-v1','','','2021-09-19 21:19:49','2021-09-19 21:19:49','',9,'http://atlaswp.local/?p=108',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (109,1,'2021-09-20 13:42:22','2021-09-20 13:42:22','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"9\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Youtube Front Page Video','youtube-front-page-video','publish','closed','closed','','group_61488f9379b5b','','','2021-09-20 13:49:00','2021-09-20 13:49:00','',0,'http://atlaswp.local/?post_type=acf-field-group&#038;p=109',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (110,1,'2021-09-20 13:42:22','2021-09-20 13:42:22','a:7:{s:4:\"type\";s:6:\"oembed\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:5:\"width\";i:1260;s:6:\"height\";i:480;}','','youtube_front_page_video','publish','closed','closed','','field_61488fa43731b','','','2021-09-20 13:49:00','2021-09-20 13:49:00','',109,'http://atlaswp.local/?post_type=acf-field&#038;p=110',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (111,1,'2021-09-20 13:42:49','2021-09-20 13:42:49','<h4><strong>At Atlas-Audio, we provide a multitude of musical services tailored specifically to your media.</strong></h4>\r\n&nbsp;\r\n\r\nLooking for a snappy soundtrack for your podcast? Composition for your RPG inspired game? Catchy background music for your advertisement? We can help bring your media to life. Fully produced within our professional studio, we’re able to provide exactly what your media needs, regardless of genre or style.\r\n\r\n&nbsp;\r\n\r\nWe pride ourselves on being able to provide 100% commitment and dedication to a single project, ensuring openness and excellent quality.\r\n\r\n&nbsp;\r\n\r\nWe guarantee a personable and professional service, containing open communication as well as a variety of pricing structures to suit your needs and budget.','Front Page','','inherit','closed','closed','','9-revision-v1','','','2021-09-20 13:42:49','2021-09-20 13:42:49','',9,'http://atlaswp.local/?p=111',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (112,1,'2021-09-20 17:20:58','2021-09-20 17:20:58','<h4><strong>At Atlas-Audio, we provide a multitude of musical services tailored specifically to your media.</strong></h4>\r\n&nbsp;\r\n\r\nLooking for a snappy soundtrack for your podcast? Composition for your RPG inspired game? Catchy background music for your advertisement? We can help bring your media to life. Fully produced within our professional studio, we’re able to provide exactly what your media needs, regardless of genre or style.\r\n\r\n&nbsp;\r\n\r\nWe pride ourselves on being able to provide 100% commitment and dedication to a single project, ensuring openness and excellent quality.\r\n\r\n&nbsp;\r\n\r\nWe guarantee a personable and professional service, containing open communication as well as a variety of pricing structures to suit your needs and budget.','Front Page','','inherit','closed','closed','','9-revision-v1','','','2021-09-20 17:20:58','2021-09-20 17:20:58','',9,'http://atlaswp.local/?p=112',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2021-09-20 17:21:32','2021-09-20 17:21:32','<h4><strong>At Atlas-Audio, we provide a multitude of musical services tailored specifically to your media.</strong></h4>\r\n&nbsp;\r\n\r\nLooking for a snappy soundtrack for your podcast? Composition for your RPG inspired game? Catchy background music for your advertisement? We can help bring your media to life. Fully produced within our professional studio, we’re able to provide exactly what your media needs, regardless of genre or style.\r\n\r\n&nbsp;\r\n\r\nWe pride ourselves on being able to provide 100% commitment and dedication to a single project, ensuring openness and excellent quality.\r\n\r\n&nbsp;\r\n\r\nWe guarantee a personable and professional service, containing open communication as well as a variety of pricing structures to suit your needs and budget.','Front Page','','inherit','closed','closed','','9-revision-v1','','','2021-09-20 17:21:32','2021-09-20 17:21:32','',9,'http://atlaswp.local/?p=113',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (114,1,'2021-09-20 20:04:54','2021-09-20 20:04:54','<h4><strong>At Atlas-Audio, we provide a multitude of musical services tailored specifically to your media.</strong></h4>\r\n&nbsp;\r\n\r\nLooking for a snappy soundtrack for your podcast? Composition for your RPG inspired game? Catchy background music for your advertisement? We can help bring your media to life. Fully produced within our professional studio, we’re able to provide exactly what your media needs, regardless of genre or style.\r\n\r\n&nbsp;\r\n\r\nWe pride ourselves on being able to provide 100% commitment and dedication to a single project, ensuring openness and excellent quality.\r\n\r\n&nbsp;\r\n\r\nWe guarantee a personable and professional service, containing open communication as well as a variety of pricing structures to suit your needs and budget.','Front Page','','inherit','closed','closed','','9-revision-v1','','','2021-09-20 20:04:54','2021-09-20 20:04:54','',9,'http://atlaswp.local/?p=114',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (19,2,0);
INSERT INTO `wp_term_relationships` VALUES (34,2,0);
INSERT INTO `wp_term_relationships` VALUES (35,2,0);
INSERT INTO `wp_term_relationships` VALUES (57,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,4);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Header Menu','header-menu',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:3:{s:64:\"fd08b08008d45a1830c5a32b22c35813dfbd71bee71a7c0b99a28b9fa0a2cd5d\";a:4:{s:10:\"expiration\";i:1632229280;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36\";s:5:\"login\";i:1632056480;}s:64:\"8b1b1da4d142f2001dc7d843a20ed25979b046981c98d2f0fd0390bac5820a81\";a:4:{s:10:\"expiration\";i:1632318071;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36\";s:5:\"login\";i:1632145271;}s:64:\"b4e3e43abe60395cfdcdd4b62e33a1e842584e8c8074f626cb8b29f76247001d\";a:4:{s:10:\"expiration\";i:1632331235;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36\";s:5:\"login\";i:1632158435;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_user-settings','libraryContent=browse&editor=tinymce');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_user-settings-time','1631968280');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (20,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (22,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'nav_menu_recently_edited','2');
INSERT INTO `wp_usermeta` VALUES (24,1,'meta-box-order_page','a:4:{s:15:\"acf_after_title\";s:23:\"acf-group_6147a50130a54\";s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:131:\"acf-group_61488f9379b5b,acf-group_6145e789a7569,acf-group_6143af51e4eb3,revisionsdiv,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (25,1,'screen_layout_page','2');
INSERT INTO `wp_usermeta` VALUES (26,1,'closedpostboxes_acf-field-group','a:2:{i:0;s:25:\"acf-field-group-locations\";i:1;s:23:\"acf-field-group-options\";}');
INSERT INTO `wp_usermeta` VALUES (27,1,'metaboxhidden_acf-field-group','a:1:{i:0;s:7:\"slugdiv\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$B17/VZon24lrhjqBdrCzputcX3DSr//','admin','dev-email@flywheel.local','http://atlaswp.local','2021-09-15 14:52:59','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-21 21:43:13
