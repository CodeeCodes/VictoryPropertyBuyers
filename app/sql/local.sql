-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
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
-- Table structure for table `wp_actionscheduler_actions`
--

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id` (`claim_id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

LOCK TABLES `wp_actionscheduler_actions` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_actions` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_actions` VALUES (92,'action_scheduler/migration_hook','complete','2020-04-27 04:25:16','2020-04-27 04:25:16','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1587961516;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1587961516;}',1,1,'2020-04-27 04:25:17','2020-04-27 04:25:17',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (93,'wpforms_process_entry_emails_meta_cleanup','pending','2020-04-28 00:00:00','2020-04-28 00:00:00','{\"tasks_meta_id\":1}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1588032000;s:18:\"\0*\0first_timestamp\";i:1588032000;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1588032000;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (94,'wpforms_admin_notifications_update','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','{\"tasks_meta_id\":2}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2020-04-27 04:25:23','2020-04-27 04:25:23',0,NULL);
/*!40000 ALTER TABLE `wp_actionscheduler_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_claims`
--

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_claims`
--

LOCK TABLES `wp_actionscheduler_claims` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_groups`
--

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

LOCK TABLES `wp_actionscheduler_groups` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_groups` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_groups` VALUES (1,'action-scheduler-migration');
INSERT INTO `wp_actionscheduler_groups` VALUES (2,'wpforms');
/*!40000 ALTER TABLE `wp_actionscheduler_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_logs`
--

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

LOCK TABLES `wp_actionscheduler_logs` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_logs` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_logs` VALUES (1,92,'action created','2020-04-27 04:25:16','2020-04-27 04:25:16');
INSERT INTO `wp_actionscheduler_logs` VALUES (2,92,'action started via Async Request','2020-04-27 04:25:17','2020-04-27 04:25:17');
INSERT INTO `wp_actionscheduler_logs` VALUES (3,92,'action complete via Async Request','2020-04-27 04:25:17','2020-04-27 04:25:17');
INSERT INTO `wp_actionscheduler_logs` VALUES (4,93,'action created','2020-04-27 04:25:17','2020-04-27 04:25:17');
INSERT INTO `wp_actionscheduler_logs` VALUES (5,94,'action created','2020-04-27 04:25:17','2020-04-27 04:25:17');
INSERT INTO `wp_actionscheduler_logs` VALUES (6,94,'action started via Async Request','2020-04-27 04:25:22','2020-04-27 04:25:22');
INSERT INTO `wp_actionscheduler_logs` VALUES (7,94,'action complete via Async Request','2020-04-27 04:25:23','2020-04-27 04:25:23');
/*!40000 ALTER TABLE `wp_actionscheduler_logs` ENABLE KEYS */;
UNLOCK TABLES;

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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
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
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-03-09 18:46:33','2020-03-09 18:46:33','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=722 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','https://victorypropertybuyers.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','https://victorypropertybuyers.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','VictoryPropertyBuyers','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','We Buy Houses Calfornia','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','victorypropertybuyers@gmail.com','yes');
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
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:106:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:41:\"cookielawinfo/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"cookielawinfo/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"cookielawinfo/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"cookielawinfo/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"cookielawinfo/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"cookielawinfo/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"cookielawinfo/([^/]+)/embed/?$\";s:46:\"index.php?cookielawinfo=$matches[1]&embed=true\";s:34:\"cookielawinfo/([^/]+)/trackback/?$\";s:40:\"index.php?cookielawinfo=$matches[1]&tb=1\";s:42:\"cookielawinfo/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?cookielawinfo=$matches[1]&paged=$matches[2]\";s:49:\"cookielawinfo/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?cookielawinfo=$matches[1]&cpage=$matches[2]\";s:38:\"cookielawinfo/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?cookielawinfo=$matches[1]&page=$matches[2]\";s:30:\"cookielawinfo/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"cookielawinfo/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"cookielawinfo/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"cookielawinfo/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"cookielawinfo/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"cookielawinfo/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=10&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:6:{i:0;s:35:\"cookie-law-info/cookie-law-info.php\";i:1;s:29:\"directory/sp-form-example.php\";i:2;s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";i:3;s:39:\"so-widgets-bundle/so-widgets-bundle.php\";i:4;s:57:\"ssl-insecure-content-fixer/ssl-insecure-content-fixer.php\";i:5;s:24:\"wpforms-lite/wpforms.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','a:2:{i:0;s:113:\"/Users/codeepalmer/Local Sites/victorypropertybuyers/app/public/wp-content/themes/victoryPropertyBuyers/style.css\";i:1;s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (40,'template','victoryPropertyBuyers','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','victoryPropertyBuyers','yes');
INSERT INTO `wp_options` VALUES (42,'comment_whitelist','1','yes');
INSERT INTO `wp_options` VALUES (43,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (44,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (45,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (46,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (47,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (48,'db_version','47018','yes');
INSERT INTO `wp_options` VALUES (49,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (50,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (51,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (52,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (53,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (54,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (55,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (56,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (57,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (59,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (60,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (61,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (62,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (63,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (64,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (65,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (67,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (68,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (69,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (70,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (71,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (72,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (73,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (74,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (75,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (76,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (77,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (81,'uninstall_plugins','a:2:{s:35:\"cookie-law-info/cookie-law-info.php\";s:25:\"uninstall_cookie_law_info\";s:27:\"popup-maker/popup-maker.php\";a:2:{i:0;s:11:\"PUM_Install\";i:1;s:16:\"uninstall_plugin\";}}','no');
INSERT INTO `wp_options` VALUES (82,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (83,'page_for_posts','12','yes');
INSERT INTO `wp_options` VALUES (84,'page_on_front','10','yes');
INSERT INTO `wp_options` VALUES (85,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (86,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (87,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (88,'site_icon','89','yes');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (90,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (91,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (92,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (93,'admin_email_lifespan','1599331593','yes');
INSERT INTO `wp_options` VALUES (94,'initial_db_version','45805','yes');
INSERT INTO `wp_options` VALUES (95,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:76:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:9:\"read_post\";b:1;s:24:\"read_private_sgpb_popups\";b:1;s:15:\"edit_sgpb_popup\";b:1;s:16:\"edit_sgpb_popups\";b:1;s:23:\"edit_others_sgpb_popups\";b:1;s:26:\"edit_published_sgpb_popups\";b:1;s:19:\"publish_sgpb_popups\";b:1;s:18:\"delete_sgpb_popups\";b:1;s:22:\"delete_published_posts\";b:1;s:25:\"delete_others_sgpb_popups\";b:1;s:26:\"delete_private_sgpb_popups\";b:1;s:25:\"delete_private_sgpb_popup\";b:1;s:28:\"delete_published_sgpb_popups\";b:1;s:19:\"sgpb_manage_options\";b:1;s:18:\"manage_popup_terms\";b:1;s:29:\"manage_popup_categories_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:33:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:9:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (96,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (97,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (98,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (103,'cron','a:10:{i:1588017616;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1588019360;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1588040346;a:1:{s:26:\"pum_daily_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1588056393;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1588099593;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1588099639;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1588099640;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1588271340;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1588600800;a:1:{s:28:\"wpforms_email_summaries_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:30:\"wpforms_email_summaries_weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'nonce_key','v}I,At92J7KalhqK~ddy*_D?3(R3`6Pbk86C{;$fb_1!&sNb!i.E=%Po3>uU{fa9','no');
INSERT INTO `wp_options` VALUES (111,'nonce_salt','RzGQctXK[)SU?]X=78 |H]:GpN[11I!p*.<PQIml=!63Y))-k C^8sh[BF.}T.lf','no');
INSERT INTO `wp_options` VALUES (112,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (122,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1588012209;s:7:\"checked\";a:1:{s:21:\"victoryPropertyBuyers\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (123,'theme_mods_twentytwenty','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1583781412;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (142,'current_theme','Victory Property Buyers','yes');
INSERT INTO `wp_options` VALUES (143,'theme_mods_victoryPropertyBuyers','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:5;s:6:\"footer\";i:6;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (144,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (228,'recently_activated','a:1:{s:31:\"popup-builder/popup-builder.php\";i:1587961474;}','yes');
INSERT INTO `wp_options` VALUES (229,'CookieLawInfo-0.9','a:78:{s:18:\"animate_speed_hide\";s:3:\"500\";s:18:\"animate_speed_show\";s:3:\"500\";s:10:\"background\";s:7:\"#1e73be\";s:14:\"background_url\";s:0:\"\";s:6:\"border\";s:9:\"#b1a6a6c2\";s:9:\"border_on\";b:1;s:9:\"bar_style\";s:0:\"\";s:13:\"button_1_text\";s:6:\"ACCEPT\";s:12:\"button_1_url\";s:1:\"#\";s:15:\"button_1_action\";s:27:\"#cookie_action_close_header\";s:20:\"button_1_link_colour\";s:4:\"#fff\";s:16:\"button_1_new_win\";b:0;s:18:\"button_1_as_button\";b:1;s:22:\"button_1_button_colour\";s:4:\"#000\";s:20:\"button_1_button_size\";s:6:\"medium\";s:14:\"button_1_style\";s:0:\"\";s:13:\"button_2_text\";s:9:\"Read More\";s:12:\"button_2_url\";s:34:\"http://victorypropertybuyers.local\";s:15:\"button_2_action\";s:17:\"CONSTANT_OPEN_URL\";s:20:\"button_2_link_colour\";s:4:\"#444\";s:16:\"button_2_new_win\";b:1;s:18:\"button_2_as_button\";b:0;s:22:\"button_2_button_colour\";s:4:\"#333\";s:20:\"button_2_button_size\";s:6:\"medium\";s:17:\"button_2_url_type\";s:3:\"url\";s:13:\"button_2_page\";s:1:\"0\";s:16:\"button_2_hidebar\";b:0;s:14:\"button_2_style\";s:0:\"\";s:13:\"button_3_text\";s:6:\"Reject\";s:12:\"button_3_url\";s:1:\"#\";s:15:\"button_3_action\";s:34:\"#cookie_action_close_header_reject\";s:20:\"button_3_link_colour\";s:4:\"#fff\";s:16:\"button_3_new_win\";b:0;s:18:\"button_3_as_button\";b:1;s:22:\"button_3_button_colour\";s:4:\"#000\";s:20:\"button_3_button_size\";s:6:\"medium\";s:14:\"button_3_style\";s:0:\"\";s:13:\"button_4_text\";s:15:\"Cookie settings\";s:12:\"button_4_url\";s:1:\"#\";s:15:\"button_4_action\";s:23:\"#cookie_action_settings\";s:20:\"button_4_link_colour\";s:7:\"#62a329\";s:16:\"button_4_new_win\";b:0;s:18:\"button_4_as_button\";b:0;s:22:\"button_4_button_colour\";s:4:\"#000\";s:20:\"button_4_button_size\";s:6:\"medium\";s:14:\"button_4_style\";s:0:\"\";s:11:\"font_family\";s:28:\"Helvetica, Arial, sans-serif\";s:10:\"header_fix\";b:1;s:5:\"is_on\";b:1;s:8:\"is_eu_on\";b:0;s:10:\"logging_on\";b:0;s:19:\"notify_animate_hide\";b:1;s:19:\"notify_animate_show\";b:0;s:13:\"notify_div_id\";s:20:\"#cookie-law-info-bar\";s:26:\"notify_position_horizontal\";s:5:\"right\";s:24:\"notify_position_vertical\";s:6:\"bottom\";s:14:\"notify_message\";s:199:\"This website uses cookies to improve your experience. We\\\'ll assume you\\\'re ok with this, but you can opt-out if you wish. [cookie_settings margin=\\\"5px 20px 5px 20px\\\"][cookie_button margin=\\\"5px\\\"]\";s:12:\"scroll_close\";b:1;s:19:\"scroll_close_reload\";b:0;s:19:\"accept_close_reload\";b:0;s:19:\"reject_close_reload\";b:0;s:20:\"showagain_background\";s:4:\"#fff\";s:16:\"showagain_border\";s:4:\"#000\";s:14:\"showagain_text\";s:24:\"Privacy & Cookies Policy\";s:16:\"showagain_div_id\";s:22:\"#cookie-law-info-again\";s:13:\"showagain_tab\";b:1;s:20:\"showagain_x_position\";s:5:\"100px\";s:4:\"text\";s:7:\"#ffffff\";s:17:\"use_colour_picker\";b:1;s:12:\"show_once_yn\";b:0;s:9:\"show_once\";s:5:\"10000\";s:9:\"is_GMT_on\";b:1;s:8:\"as_popup\";b:0;s:13:\"popup_overlay\";b:1;s:16:\"bar_heading_text\";s:0:\"\";s:13:\"cookie_bar_as\";s:6:\"banner\";s:24:\"popup_showagain_position\";s:12:\"bottom-right\";s:15:\"widget_position\";s:4:\"left\";}','yes');
INSERT INTO `wp_options` VALUES (230,'cookielawinfo_privacy_overview_content_settings','a:2:{s:24:\"privacy_overview_content\";s:571:\"This website uses cookies to improve your experience while you navigate through the website. Out of these cookies, the cookies that are categorized as necessary are stored on your browser as they are essential for the working of basic functionalities of the website. We also use third-party cookies that help us analyze and understand how you use this website. These cookies will be stored in your browser only with your consent. You also have the option to opt-out of these cookies. But opting out of some of these cookies may have an effect on your browsing experience.\";s:22:\"privacy_overview_title\";s:16:\"Privacy Overview\";}','yes');
INSERT INTO `wp_options` VALUES (231,'cookielawinfo_necessary_settings','a:1:{s:21:\"necessary_description\";s:242:\"Necessary cookies are absolutely essential for the website to function properly. This category only includes cookies that ensures basic functionalities and security features of the website. These cookies do not store any personal information.\";}','yes');
INSERT INTO `wp_options` VALUES (232,'cookielawinfo_thirdparty_settings','a:5:{s:19:\"thirdparty_on_field\";b:1;s:25:\"third_party_default_state\";b:1;s:22:\"thirdparty_description\";s:302:\"Any cookies that may not be particularly necessary for the website to function and is used specifically to collect user personal data via analytics, ads, other embedded contents are termed as non-necessary cookies. It is mandatory to procure user consent prior to running these cookies on your website.\";s:23:\"thirdparty_head_section\";s:0:\"\";s:23:\"thirdparty_body_section\";s:0:\"\";}','yes');
INSERT INTO `wp_options` VALUES (235,'popmake_settings','a:33:{s:26:\"disable_popup_category_tag\";s:1:\"1\";s:16:\"default_theme_id\";s:2:\"26\";s:20:\"google_fonts_api_key\";s:0:\"\";s:27:\"newsletter_default_provider\";s:4:\"none\";s:23:\"default_success_message\";s:25:\"You have been subscribed!\";s:27:\"default_empty_email_message\";s:27:\"Please enter a valid email.\";s:29:\"default_invalid_email_message\";s:44:\"Email provided is not a valid email address.\";s:21:\"default_error_message\";s:50:\"Error occurred when subscribing. Please try again.\";s:34:\"default_already_subscribed_message\";s:29:\"You are already a subscriber.\";s:32:\"default_consent_required_message\";s:27:\"You must agree to continue.\";s:30:\"privacy_consent_always_enabled\";s:3:\"yes\";s:29:\"default_privacy_consent_label\";s:51:\"Notify me about related content and special offers.\";s:28:\"default_privacy_consent_type\";s:5:\"radio\";s:36:\"default_privacy_consent_radio_layout\";s:6:\"inline\";s:33:\"default_privacy_consent_yes_label\";s:3:\"Yes\";s:32:\"default_privacy_consent_no_label\";s:2:\"No\";s:26:\"default_privacy_usage_text\";s:101:\"If you opt in above we use this information send related content, discounts and other special offers.\";s:25:\"adblock_bypass_url_method\";s:6:\"random\";s:30:\"adblock_bypass_custom_filename\";s:0:\"\";s:10:\"debug_mode\";s:1:\"1\";s:25:\"gutenberg_support_enabled\";b:0;s:27:\"disable_popup_open_tracking\";b:0;s:32:\"default_privacy_consent_required\";b:0;s:17:\"bypass_adblockers\";b:0;s:18:\"disabled_admin_bar\";b:0;s:36:\"enable_easy_modal_compatibility_mode\";b:0;s:21:\"disable_asset_caching\";b:0;s:20:\"disable_shortcode_ui\";b:0;s:20:\"disabled_menu_editor\";b:0;s:18:\"complete_uninstall\";b:0;s:27:\"disable_google_font_loading\";b:0;s:31:\"disable_popup_maker_core_styles\";b:0;s:26:\"disable_popup_theme_styles\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (236,'pum_version','1.9.1','yes');
INSERT INTO `wp_options` VALUES (237,'pum_files_writeable','1','yes');
INSERT INTO `wp_options` VALUES (238,'_pum_writeable_notice_dismissed','1','yes');
INSERT INTO `wp_options` VALUES (239,'pum_ver','1.9.1','yes');
INSERT INTO `wp_options` VALUES (240,'pum_initial_version','1.9.1','yes');
INSERT INTO `wp_options` VALUES (241,'pum_ver_upgraded_from','0.0.0','yes');
INSERT INTO `wp_options` VALUES (242,'pum_db_ver','8','yes');
INSERT INTO `wp_options` VALUES (243,'pum_installed_on','2020-03-12 02:19:05','yes');
INSERT INTO `wp_options` VALUES (244,'fs_active_plugins','O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:37:\"popup-maker/includes/pum-sdk/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.2.4\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1583979545;s:11:\"plugin_path\";s:27:\"popup-maker/popup-maker.php\";}}s:7:\"abspath\";s:64:\"/Users/codeepalmer/Local Sites/victorypropertybuyers/app/public/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:27:\"popup-maker/popup-maker.php\";s:8:\"sdk_path\";s:37:\"popup-maker/includes/pum-sdk/freemius\";s:7:\"version\";s:5:\"2.2.4\";s:13:\"in_activation\";b:1;s:9:\"timestamp\";i:1583979545;}}','yes');
INSERT INTO `wp_options` VALUES (245,'fs_debug_mode','','yes');
INSERT INTO `wp_options` VALUES (246,'fs_accounts','a:4:{s:21:\"id_slug_type_path_map\";a:1:{i:147;a:3:{s:4:\"slug\";s:11:\"popup-maker\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:27:\"popup-maker/popup-maker.php\";}}s:11:\"plugin_data\";a:1:{s:11:\"popup-maker\";a:10:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:27:\"popup-maker/popup-maker.php\";}s:17:\"install_timestamp\";i:1583979545;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.2.4\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"1.9.1\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;}}s:13:\"file_slug_map\";a:1:{s:27:\"popup-maker/popup-maker.php\";s:11:\"popup-maker\";}s:7:\"plugins\";a:1:{s:11:\"popup-maker\";O:9:\"FS_Plugin\":20:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:11:\"Popup Maker\";s:4:\"slug\";s:11:\"popup-maker\";s:12:\"premium_slug\";s:19:\"popup-maker-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:4:\"file\";s:27:\"popup-maker/popup-maker.php\";s:7:\"version\";s:5:\"1.9.1\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:10:\"public_key\";s:32:\"pk_0a02cbd99443e0ab7211b19222fe3\";s:10:\"secret_key\";N;s:2:\"id\";s:3:\"147\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (247,'pum_previously_opted_using_freemius','0','yes');
INSERT INTO `wp_options` VALUES (250,'_pum_installed_themes','a:5:{i:0;s:8:\"lightbox\";i:1;s:15:\"enterprise-blue\";i:2;s:9:\"hello-box\";i:3;s:12:\"cutting-edge\";i:4;s:13:\"framed-border\";}','yes');
INSERT INTO `wp_options` VALUES (251,'pum_completed_upgrades','a:1:{i:0;s:16:\"core-v1_8-themes\";}','yes');
INSERT INTO `wp_options` VALUES (252,'pum_extend_viewed_extensions','a:3:{s:10:\"extensions\";i:16;s:5:\"forms\";i:4;s:13:\"page-builders\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (253,'pum_reviews_installed_on','2020-03-12 02:19:05','yes');
INSERT INTO `wp_options` VALUES (258,'pum-has-cached-css','1584139961','yes');
INSERT INTO `wp_options` VALUES (259,'pum-has-cached-js','1584139961','yes');
INSERT INTO `wp_options` VALUES (261,'pum_subscribers_db_version','3','yes');
INSERT INTO `wp_options` VALUES (262,'pum_all_theme_close_text_cache','a:6:{i:26;s:5:\"CLOSE\";i:27;s:7:\"&times;\";i:28;s:2:\"×\";i:29;s:2:\"×\";i:30;s:2:\"×\";i:31;s:2:\"×\";}','yes');
INSERT INTO `wp_options` VALUES (332,'SGPBUsageDays','0','yes');
INSERT INTO `wp_options` VALUES (333,'SGPBInstallDate','1587961251','yes');
INSERT INTO `wp_options` VALUES (334,'SGPBOpenNextTime','1590553251','yes');
INSERT INTO `wp_options` VALUES (335,'SGPBMaxOpenCount','80','yes');
INSERT INTO `wp_options` VALUES (336,'SG_POPUP_BUILDER_REGISTERED_PLUGINS','[]','yes');
INSERT INTO `wp_options` VALUES (337,'SGPB_INACTIVE_EXTENSIONS','inactive','yes');
INSERT INTO `wp_options` VALUES (341,'sgpbModifiedRegisteredPluginsPaths1','1','yes');
INSERT INTO `wp_options` VALUES (342,'sgpb-all-notifications-data','[{\"id\":\"pb-notif-17-03-2020\",\"type\":\"3\",\"priority\":\"1\",\"message\":\"Please update to the 3.65 and higher version in order to get rid of redirects, keep your website safe and receive all the new features as well as bug fixes. In case you already did, please ignore this message.\"},{\"id\":\"sgpbMainSupportBanner\",\"priority\":1,\"type\":1,\"message\":\"<div class=\\\"sgpb-support-notification-wrapper sgpb-wrapper\\\"><h4 class=\\\"sgpb-support-notification-title\\\">Need some help?<\\/h4><h4 class=\\\"sgpb-support-notification-title\\\">Let us know what you think.<\\/h4><a class=\\\"btn btn-info\\\" target=\\\"_blank\\\" href=\\\"http:\\/\\/bit.ly\\/sgpbPluginSource\\\"><span class=\\\"dashicons sgpb-dashicons-heart sgpb-info-text-white\\\"><\\/span><span class=\\\"sg-info-text\\\">Rate Us<\\/span><\\/a><a class=\\\"btn btn-info\\\" target=\\\"_blank\\\" href=\\\"https:\\/\\/help.popup-builder.com\\\"><span class=\\\"dashicons sgpb-dashicons-megaphone sgpb-info-text-white\\\"><\\/span>Support Potal<\\/a><a class=\\\"btn btn-info\\\" target=\\\"_blank\\\" href=\\\"https:\\/\\/wordpress.org\\/support\\/plugin\\/popup-builder\\\"><span class=\\\"dashicons sgpb-dashicons-admin-plugins sgpb-info-text-white\\\"><\\/span>Support Forum<\\/a><a class=\\\"btn btn-info\\\" target=\\\"_blank\\\" href=\\\"https:\\/\\/popup-builder.com\\/\\\"><span class=\\\"dashicons sgpb-dashicons-editor-help sgpb-info-text-white\\\"><\\/span>LIVE chat<\\/a><a class=\\\"btn btn-info\\\" target=\\\"_blank\\\" href=\\\"mailto:support@popup-builder.com?subject=Hello\\\"><span class=\\\"dashicons sgpb-dashicons-email-alt sgpb-info-text-white\\\"><\\/span>Email<\\/a><\\/div><div class=\\\"sgpb-support-notification-dont-show\\\">Bored of this?<a class=\\\"sgpb-dont-show-again-support-notification\\\" href=\\\"javascript:void(0)\\\"> Press here <\\/a>and we will not show it again!<\\/div>\"}]','yes');
INSERT INTO `wp_options` VALUES (344,'sgpb-metabox-banner-remote-get','<div class=\"sgpb-right-banner-wrapper\"><div class=\"sgpb-first-row\" style=\"background-image: url(https://popup-builder.com/wp-content/uploads/2018/12/subsciption-plus-banner-wordpress.jpg);\"></div><div class=\"sgpb-second-row\"></div></div>\nCustomize Your Subscription Fields and Mail Templates with our new <a target=\"_blank\" href=\"https://popup-builder.com/downloads/mailchimp-popup/\">Subscription Plus </a> extension.\n<style>.sgpb-first-row{background-size: 100%;min-height: 310px;background-repeat: no-repeat;}</style>','yes');
INSERT INTO `wp_options` VALUES (356,'_pum_installed','1','yes');
INSERT INTO `wp_options` VALUES (364,'pum_privacy_cookie_list','a:2:{s:7:\"cookies\";a:1:{s:6:\"pum-45\";a:3:{s:5:\"label\";s:56:\"Cookie used to prevent popup from displaying repeatedly.\";s:4:\"name\";s:6:\"pum-45\";s:4:\"time\";s:7:\"1 month\";}}s:9:\"timestamp\";i:1584120387;}','yes');
INSERT INTO `wp_options` VALUES (403,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (466,'widget_sow-button','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (467,'widget_sow-google-map','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (468,'widget_sow-image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (469,'widget_sow-slider','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (470,'widget_sow-post-carousel','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (471,'widget_sow-editor','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (472,'siteorigin_widget_bundle_version','1.16.1','yes');
INSERT INTO `wp_options` VALUES (473,'siteorigin_widgets_old_widgets','/Users/codeepalmer/Local Sites/victorypropertybuyers/app/public/wp-content/plugins/so-widgets-bundle/widgets/accordion/accordion.php,/Users/codeepalmer/Local Sites/victorypropertybuyers/app/public/wp-content/plugins/so-widgets-bundle/widgets/button/button.php,/Users/codeepalmer/Local Sites/victorypropertybuyers/app/public/wp-content/plugins/so-widgets-bundle/widgets/cta/cta.php,/Users/codeepalmer/Local Sites/victorypropertybuyers/app/public/wp-content/plugins/so-widgets-bundle/widgets/contact/contact.php,/Users/codeepalmer/Local Sites/victorypropertybuyers/app/public/wp-content/plugins/so-widgets-bundle/widgets/editor/editor.php,/Users/codeepalmer/Local Sites/victorypropertybuyers/app/public/wp-content/plugins/so-widgets-bundle/widgets/features/features.php,/Users/codeepalmer/Local Sites/victorypropertybuyers/app/public/wp-content/plugins/so-widgets-bundle/widgets/google-map/google-map.php,/Users/codeepalmer/Local Sites/victorypropertybuyers/app/public/wp-content/plugins/so-widgets-bundle/widgets/headline/headline.php,/Users/codeepalmer/Local Sites/victorypropertybuyers/app/public/wp-content/plugins/so-widgets-bundle/widgets/hero/hero.php,/Users/codeepalmer/Local Sites/victorypropertybuyers/app/public/wp-content/plugins/so-widgets-bundle/widgets/icon/icon.php,/Users/codeepalmer/Local Sites/victorypropertybuyers/app/public/wp-content/plugins/so-widgets-bundle/widgets/image/image.php,/Users/codeepalmer/Local Sites/victorypropertybuyers/app/public/wp-content/plugins/so-widgets-bundle/widgets/image-grid/image-grid.php,/Users/codeepalmer/Local Sites/victorypropertybuyers/app/public/wp-content/plugins/so-widgets-bundle/widgets/slider/slider.php,/Users/codeepalmer/Local Sites/victorypropertybuyers/app/public/wp-content/plugins/so-widgets-bundle/widgets/layout-slider/layout-slider.php,/Users/codeepalmer/Local Sites/victorypropertybuyers/app/public/wp-content/plugins/so-widgets-bundle/widgets/post-carousel/post-carousel.php,/Users/codeepalmer/Local Sites/victorypropertybuyers/app/public/wp-content/plugins/so-widgets-bundle/widgets/price-table/price-table.php,/Users/codeepalmer/Local Sites/victorypropertybuyers/app/public/wp-content/plugins/so-widgets-bundle/widgets/simple-masonry/simple-masonry.php,/Users/codeepalmer/Local Sites/victorypropertybuyers/app/public/wp-content/plugins/so-widgets-bundle/widgets/social-media-buttons/social-media-buttons.php,/Users/codeepalmer/Local Sites/victorypropertybuyers/app/public/wp-content/plugins/so-widgets-bundle/widgets/tabs/tabs.php,/Users/codeepalmer/Local Sites/victorypropertybuyers/app/public/wp-content/plugins/so-widgets-bundle/widgets/taxonomy/taxonomy.php,/Users/codeepalmer/Local Sites/victorypropertybuyers/app/public/wp-content/plugins/so-widgets-bundle/widgets/testimonial/testimonial.php,/Users/codeepalmer/Local Sites/victorypropertybuyers/app/public/wp-content/plugins/so-widgets-bundle/widgets/video/video.php','yes');
INSERT INTO `wp_options` VALUES (474,'siteorigin_widgets_active','a:7:{s:6:\"button\";b:1;s:10:\"google-map\";b:1;s:5:\"image\";b:1;s:6:\"slider\";b:1;s:13:\"post-carousel\";b:1;s:6:\"editor\";b:1;s:7:\"contact\";b:1;}','yes');
INSERT INTO `wp_options` VALUES (475,'widget_sow-contact-form','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (528,'db_upgraded','','yes');
INSERT INTO `wp_options` VALUES (531,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (539,'_transient_health-check-site-status-result','{\"good\":\"15\",\"recommended\":\"3\",\"critical\":\"0\"}','yes');
INSERT INTO `wp_options` VALUES (555,'recovery_mode_email_last_sent','1586894022','yes');
INSERT INTO `wp_options` VALUES (556,'nav_menu_options','a:1:{s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (568,'rlrsssl_options','a:15:{s:12:\"site_has_ssl\";b:1;s:4:\"hsts\";b:0;s:22:\"htaccess_warning_shown\";b:0;s:19:\"review_notice_shown\";b:0;s:25:\"ssl_success_message_shown\";b:0;s:26:\"autoreplace_insecure_links\";b:1;s:17:\"plugin_db_version\";s:5:\"3.3.1\";s:5:\"debug\";b:0;s:20:\"do_not_edit_htaccess\";b:0;s:17:\"htaccess_redirect\";b:0;s:11:\"ssl_enabled\";b:1;s:19:\"javascript_redirect\";b:0;s:11:\"wp_redirect\";b:1;s:31:\"switch_mixed_content_fixer_hook\";b:0;s:19:\"dismiss_all_notices\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (577,'rsssl_activation_timestamp','1586899179','yes');
INSERT INTO `wp_options` VALUES (580,'_transient_rsssl_plusone_count','0','yes');
INSERT INTO `wp_options` VALUES (616,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1588565611','no');
INSERT INTO `wp_options` VALUES (617,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (618,'_site_transient_timeout_browser_f4b0e0f62d28d45e22100cecb7e768f8','1588565689','no');
INSERT INTO `wp_options` VALUES (619,'_site_transient_browser_f4b0e0f62d28d45e22100cecb7e768f8','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"81.0.4044.122\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (634,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.4-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.4\";s:7:\"version\";s:3:\"5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1588013287;s:15:\"version_checked\";s:3:\"5.4\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (646,'sgpb-all-dismissed-notifications','{\"pb-notif-17-03-2020\":\"pb-notif-17-03-2020\"}','yes');
INSERT INTO `wp_options` VALUES (647,'sgpb-unnecessary-scripts-removed-1','1','yes');
INSERT INTO `wp_options` VALUES (651,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1588012209;s:7:\"checked\";a:6:{s:29:\"directory/sp-form-example.php\";s:3:\"1.0\";s:35:\"cookie-law-info/cookie-law-info.php\";s:5:\"1.8.7\";s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";s:5:\"3.3.1\";s:39:\"so-widgets-bundle/so-widgets-bundle.php\";s:6:\"1.16.1\";s:57:\"ssl-insecure-content-fixer/ssl-insecure-content-fixer.php\";s:5:\"2.7.2\";s:24:\"wpforms-lite/wpforms.php\";s:7:\"1.6.0.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:35:\"cookie-law-info/cookie-law-info.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/cookie-law-info\";s:4:\"slug\";s:15:\"cookie-law-info\";s:6:\"plugin\";s:35:\"cookie-law-info/cookie-law-info.php\";s:11:\"new_version\";s:5:\"1.8.7\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/cookie-law-info/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/cookie-law-info.1.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/cookie-law-info/assets/icon-256x256.png?rev=1879809\";s:2:\"1x\";s:68:\"https://ps.w.org/cookie-law-info/assets/icon-256x256.png?rev=1879809\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/cookie-law-info/assets/banner-1544x500.jpg?rev=2289277\";s:2:\"1x\";s:70:\"https://ps.w.org/cookie-law-info/assets/banner-772x250.jpg?rev=2289277\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/really-simple-ssl\";s:4:\"slug\";s:17:\"really-simple-ssl\";s:6:\"plugin\";s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";s:11:\"new_version\";s:5:\"3.3.1\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/really-simple-ssl/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/really-simple-ssl.3.3.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/really-simple-ssl/assets/icon-128x128.png?rev=1782452\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/really-simple-ssl/assets/banner-1544x500.png?rev=2263742\";s:2:\"1x\";s:72:\"https://ps.w.org/really-simple-ssl/assets/banner-772x250.jpg?rev=1881345\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"so-widgets-bundle/so-widgets-bundle.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/so-widgets-bundle\";s:4:\"slug\";s:17:\"so-widgets-bundle\";s:6:\"plugin\";s:39:\"so-widgets-bundle/so-widgets-bundle.php\";s:11:\"new_version\";s:6:\"1.16.1\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/so-widgets-bundle/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/so-widgets-bundle.1.16.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/so-widgets-bundle/assets/icon-256x256.png?rev=1044942\";s:2:\"1x\";s:70:\"https://ps.w.org/so-widgets-bundle/assets/icon-128x128.png?rev=1044942\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/so-widgets-bundle/assets/banner-772x250.jpg?rev=1044942\";}s:11:\"banners_rtl\";a:0:{}}s:57:\"ssl-insecure-content-fixer/ssl-insecure-content-fixer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:40:\"w.org/plugins/ssl-insecure-content-fixer\";s:4:\"slug\";s:26:\"ssl-insecure-content-fixer\";s:6:\"plugin\";s:57:\"ssl-insecure-content-fixer/ssl-insecure-content-fixer.php\";s:11:\"new_version\";s:5:\"2.7.2\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/ssl-insecure-content-fixer/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/ssl-insecure-content-fixer.2.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/ssl-insecure-content-fixer/assets/icon-256x256.png?rev=1363964\";s:2:\"1x\";s:79:\"https://ps.w.org/ssl-insecure-content-fixer/assets/icon-128x128.png?rev=1363964\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:81:\"https://ps.w.org/ssl-insecure-content-fixer/assets/banner-772x250.png?rev=1363964\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"wpforms-lite/wpforms.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/wpforms-lite\";s:4:\"slug\";s:12:\"wpforms-lite\";s:6:\"plugin\";s:24:\"wpforms-lite/wpforms.php\";s:11:\"new_version\";s:7:\"1.6.0.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wpforms-lite/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wpforms-lite.1.6.0.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-256x256.png?rev=1371112\";s:2:\"1x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-128x128.png?rev=1371112\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500.png?rev=1371112\";s:2:\"1x\";s:67:\"https://ps.w.org/wpforms-lite/assets/banner-772x250.png?rev=1371112\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (652,'action_scheduler_hybrid_store_demarkation','91','yes');
INSERT INTO `wp_options` VALUES (653,'schema-ActionScheduler_StoreSchema','3.0.1587961516','yes');
INSERT INTO `wp_options` VALUES (654,'schema-ActionScheduler_LoggerSchema','2.0.1587961516','yes');
INSERT INTO `wp_options` VALUES (655,'wpforms_version','1.6.0.1','yes');
INSERT INTO `wp_options` VALUES (656,'wpforms_activated','a:1:{s:4:\"lite\";i:1587961516;}','yes');
INSERT INTO `wp_options` VALUES (659,'action_scheduler_lock_async-request-runner','1587962241','yes');
INSERT INTO `wp_options` VALUES (660,'wpforms_version_lite','1.6.0.1','yes');
INSERT INTO `wp_options` VALUES (661,'widget_wpforms-widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (663,'_transient_timeout_as-post-store-dependencies-met','1588047917','no');
INSERT INTO `wp_options` VALUES (664,'_transient_as-post-store-dependencies-met','yes','no');
INSERT INTO `wp_options` VALUES (665,'action_scheduler_migration_status','complete','yes');
INSERT INTO `wp_options` VALUES (666,'wpforms_review','a:2:{s:4:\"time\";i:1587961517;s:9:\"dismissed\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (667,'wpforms_notifications','a:4:{s:6:\"update\";i:1587961523;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (673,'_transient_timeout_wpforms_dash_widget_lite_entries_by_form','1588032000','no');
INSERT INTO `wp_options` VALUES (674,'_transient_wpforms_dash_widget_lite_entries_by_form','a:1:{i:92;a:3:{s:7:\"form_id\";i:92;s:5:\"count\";i:0;s:5:\"title\";s:12:\"contact-form\";}}','no');
INSERT INTO `wp_options` VALUES (675,'_site_transient_timeout_browser_d625aa21d984ed127cc82b6b11869903','1588566606','no');
INSERT INTO `wp_options` VALUES (676,'_site_transient_browser_d625aa21d984ed127cc82b6b11869903','a:10:{s:4:\"name\";s:7:\"unknown\";s:7:\"version\";s:0:\"\";s:8:\"platform\";s:0:\"\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (685,'_site_transient_timeout_theme_roots','1588014009','no');
INSERT INTO `wp_options` VALUES (686,'_site_transient_theme_roots','a:1:{s:21:\"victoryPropertyBuyers\";s:7:\"/themes\";}','no');
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
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_lock','1584299055:1');
INSERT INTO `wp_postmeta` VALUES (7,8,'_edit_lock','1584299045:1');
INSERT INTO `wp_postmeta` VALUES (10,10,'_edit_lock','1587961777:1');
INSERT INTO `wp_postmeta` VALUES (11,12,'_edit_lock','1586893218:1');
INSERT INTO `wp_postmeta` VALUES (12,14,'_edit_lock','1584299060:1');
INSERT INTO `wp_postmeta` VALUES (15,16,'_edit_lock','1584299032:1');
INSERT INTO `wp_postmeta` VALUES (18,18,'_edit_lock','1586893197:1');
INSERT INTO `wp_postmeta` VALUES (22,12,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (24,18,'_wp_page_template','about-us.php');
INSERT INTO `wp_postmeta` VALUES (25,26,'_pum_built_in','default-theme');
INSERT INTO `wp_postmeta` VALUES (26,26,'_pum_default_theme','1');
INSERT INTO `wp_postmeta` VALUES (27,26,'popup_theme_data_version','3');
INSERT INTO `wp_postmeta` VALUES (28,26,'popup_theme_settings','a:67:{s:24:\"overlay_background_color\";s:7:\"#ffffff\";s:26:\"overlay_background_opacity\";s:3:\"100\";s:13:\"atc_promotion\";N;s:17:\"container_padding\";s:2:\"18\";s:23:\"container_border_radius\";s:1:\"0\";s:26:\"container_background_color\";s:7:\"#f9f9f9\";s:28:\"container_background_opacity\";s:3:\"100\";s:22:\"container_border_style\";s:4:\"none\";s:22:\"container_border_color\";s:7:\"#000000\";s:22:\"container_border_width\";s:1:\"1\";s:25:\"container_boxshadow_color\";s:7:\"#020202\";s:27:\"container_boxshadow_opacity\";s:2:\"23\";s:30:\"container_boxshadow_horizontal\";s:1:\"1\";s:28:\"container_boxshadow_vertical\";s:1:\"1\";s:24:\"container_boxshadow_blur\";s:1:\"3\";s:26:\"container_boxshadow_spread\";s:1:\"0\";s:25:\"container_boxshadow_inset\";s:2:\"no\";s:16:\"title_font_color\";s:7:\"#000000\";s:15:\"title_font_size\";s:2:\"32\";s:17:\"title_line_height\";s:2:\"36\";s:17:\"title_font_family\";s:7:\"inherit\";s:17:\"title_font_weight\";s:3:\"400\";s:16:\"title_font_style\";s:0:\"\";s:16:\"title_text_align\";s:4:\"left\";s:22:\"title_textshadow_color\";s:7:\"#020202\";s:24:\"title_textshadow_opacity\";s:2:\"23\";s:27:\"title_textshadow_horizontal\";s:1:\"0\";s:25:\"title_textshadow_vertical\";s:1:\"0\";s:21:\"title_textshadow_blur\";s:1:\"0\";s:18:\"content_font_color\";s:7:\"#8c8c8c\";s:19:\"content_font_family\";s:7:\"inherit\";s:19:\"content_font_weight\";s:3:\"400\";s:18:\"content_font_style\";s:0:\"\";s:10:\"close_text\";s:5:\"CLOSE\";s:22:\"close_position_outside\";i:0;s:14:\"close_location\";s:8:\"topright\";s:18:\"close_position_top\";s:1:\"0\";s:21:\"close_position_bottom\";s:1:\"0\";s:19:\"close_position_left\";s:1:\"0\";s:20:\"close_position_right\";s:1:\"0\";s:13:\"close_padding\";s:1:\"8\";s:12:\"close_height\";s:1:\"0\";s:11:\"close_width\";s:1:\"0\";s:19:\"close_border_radius\";s:1:\"0\";s:22:\"close_background_color\";s:7:\"#00b7cd\";s:24:\"close_background_opacity\";s:3:\"100\";s:16:\"close_font_color\";s:7:\"#ffffff\";s:15:\"close_font_size\";s:2:\"12\";s:17:\"close_line_height\";s:2:\"36\";s:17:\"close_font_family\";s:7:\"inherit\";s:17:\"close_font_weight\";s:3:\"400\";s:16:\"close_font_style\";s:0:\"\";s:18:\"close_border_style\";s:4:\"none\";s:18:\"close_border_color\";s:7:\"#ffffff\";s:18:\"close_border_width\";s:1:\"1\";s:21:\"close_boxshadow_color\";s:7:\"#020202\";s:23:\"close_boxshadow_opacity\";s:2:\"23\";s:26:\"close_boxshadow_horizontal\";s:1:\"1\";s:24:\"close_boxshadow_vertical\";s:1:\"1\";s:20:\"close_boxshadow_blur\";s:1:\"3\";s:22:\"close_boxshadow_spread\";s:1:\"0\";s:21:\"close_boxshadow_inset\";s:2:\"no\";s:22:\"close_textshadow_color\";s:7:\"#000000\";s:24:\"close_textshadow_opacity\";s:2:\"23\";s:27:\"close_textshadow_horizontal\";s:1:\"0\";s:25:\"close_textshadow_vertical\";s:1:\"0\";s:21:\"close_textshadow_blur\";s:1:\"0\";}');
INSERT INTO `wp_postmeta` VALUES (29,27,'popup_theme_settings','a:67:{s:24:\"overlay_background_color\";s:7:\"#000000\";s:26:\"overlay_background_opacity\";s:2:\"60\";s:17:\"container_padding\";s:2:\"18\";s:26:\"container_background_color\";s:7:\"#ffffff\";s:28:\"container_background_opacity\";s:3:\"100\";s:22:\"container_border_style\";s:5:\"solid\";s:22:\"container_border_color\";s:7:\"#000000\";s:22:\"container_border_width\";s:1:\"8\";s:23:\"container_border_radius\";s:1:\"3\";s:25:\"container_boxshadow_inset\";s:2:\"no\";s:30:\"container_boxshadow_horizontal\";s:1:\"0\";s:28:\"container_boxshadow_vertical\";s:1:\"0\";s:24:\"container_boxshadow_blur\";s:2:\"30\";s:26:\"container_boxshadow_spread\";s:1:\"0\";s:25:\"container_boxshadow_color\";s:7:\"#020202\";s:27:\"container_boxshadow_opacity\";s:3:\"100\";s:16:\"title_font_color\";s:7:\"#000000\";s:17:\"title_line_height\";s:2:\"36\";s:15:\"title_font_size\";s:2:\"32\";s:17:\"title_font_family\";s:7:\"inherit\";s:17:\"title_font_weight\";s:3:\"100\";s:16:\"title_font_style\";s:0:\"\";s:16:\"title_text_align\";s:4:\"left\";s:27:\"title_textshadow_horizontal\";s:1:\"0\";s:25:\"title_textshadow_vertical\";s:1:\"0\";s:21:\"title_textshadow_blur\";s:1:\"0\";s:22:\"title_textshadow_color\";s:7:\"#020202\";s:24:\"title_textshadow_opacity\";s:2:\"23\";s:18:\"content_font_color\";s:7:\"#000000\";s:19:\"content_font_family\";s:7:\"inherit\";s:19:\"content_font_weight\";s:3:\"100\";s:18:\"content_font_style\";s:0:\"\";s:10:\"close_text\";s:7:\"&times;\";s:14:\"close_location\";s:8:\"topright\";s:18:\"close_position_top\";s:3:\"-13\";s:19:\"close_position_left\";s:1:\"0\";s:21:\"close_position_bottom\";s:1:\"0\";s:20:\"close_position_right\";s:3:\"-13\";s:13:\"close_padding\";s:1:\"0\";s:12:\"close_height\";s:2:\"26\";s:11:\"close_width\";s:2:\"26\";s:22:\"close_background_color\";s:7:\"#000000\";s:24:\"close_background_opacity\";s:3:\"100\";s:16:\"close_font_color\";s:7:\"#ffffff\";s:17:\"close_line_height\";s:2:\"24\";s:15:\"close_font_size\";s:2:\"24\";s:17:\"close_font_family\";s:5:\"Arial\";s:17:\"close_font_weight\";s:3:\"100\";s:16:\"close_font_style\";s:0:\"\";s:18:\"close_border_style\";s:5:\"solid\";s:18:\"close_border_color\";s:7:\"#ffffff\";s:18:\"close_border_width\";s:1:\"2\";s:19:\"close_border_radius\";s:2:\"26\";s:21:\"close_boxshadow_inset\";s:2:\"no\";s:26:\"close_boxshadow_horizontal\";s:1:\"0\";s:24:\"close_boxshadow_vertical\";s:1:\"0\";s:20:\"close_boxshadow_blur\";s:2:\"15\";s:22:\"close_boxshadow_spread\";s:1:\"1\";s:21:\"close_boxshadow_color\";s:7:\"#020202\";s:23:\"close_boxshadow_opacity\";s:2:\"75\";s:27:\"close_textshadow_horizontal\";s:1:\"0\";s:25:\"close_textshadow_vertical\";s:1:\"0\";s:21:\"close_textshadow_blur\";s:1:\"0\";s:22:\"close_textshadow_color\";s:7:\"#000000\";s:24:\"close_textshadow_opacity\";s:2:\"23\";s:13:\"atc_promotion\";N;s:22:\"close_position_outside\";i:0;}');
INSERT INTO `wp_postmeta` VALUES (30,27,'popup_theme_data_version','3');
INSERT INTO `wp_postmeta` VALUES (31,27,'_pum_built_in','lightbox');
INSERT INTO `wp_postmeta` VALUES (32,28,'popup_theme_settings','a:67:{s:24:\"overlay_background_color\";s:7:\"#000000\";s:26:\"overlay_background_opacity\";s:2:\"70\";s:17:\"container_padding\";s:2:\"28\";s:26:\"container_background_color\";s:7:\"#ffffff\";s:28:\"container_background_opacity\";s:3:\"100\";s:22:\"container_border_style\";s:4:\"none\";s:22:\"container_border_color\";s:7:\"#000000\";s:22:\"container_border_width\";s:1:\"1\";s:23:\"container_border_radius\";s:1:\"5\";s:25:\"container_boxshadow_inset\";s:2:\"no\";s:30:\"container_boxshadow_horizontal\";s:1:\"0\";s:28:\"container_boxshadow_vertical\";s:2:\"10\";s:24:\"container_boxshadow_blur\";s:2:\"25\";s:26:\"container_boxshadow_spread\";s:1:\"4\";s:25:\"container_boxshadow_color\";s:7:\"#020202\";s:27:\"container_boxshadow_opacity\";s:2:\"50\";s:16:\"title_font_color\";s:7:\"#315b7c\";s:17:\"title_line_height\";s:2:\"36\";s:15:\"title_font_size\";s:2:\"34\";s:17:\"title_font_family\";s:7:\"inherit\";s:17:\"title_font_weight\";s:3:\"100\";s:16:\"title_font_style\";s:0:\"\";s:16:\"title_text_align\";s:4:\"left\";s:27:\"title_textshadow_horizontal\";s:1:\"0\";s:25:\"title_textshadow_vertical\";s:1:\"0\";s:21:\"title_textshadow_blur\";s:1:\"0\";s:22:\"title_textshadow_color\";s:7:\"#020202\";s:24:\"title_textshadow_opacity\";s:2:\"23\";s:18:\"content_font_color\";s:7:\"#2d2d2d\";s:19:\"content_font_family\";s:7:\"inherit\";s:19:\"content_font_weight\";s:3:\"100\";s:18:\"content_font_style\";s:0:\"\";s:10:\"close_text\";s:2:\"×\";s:14:\"close_location\";s:8:\"topright\";s:18:\"close_position_top\";s:1:\"8\";s:19:\"close_position_left\";s:1:\"0\";s:21:\"close_position_bottom\";s:1:\"0\";s:20:\"close_position_right\";s:1:\"8\";s:13:\"close_padding\";s:1:\"4\";s:12:\"close_height\";s:2:\"28\";s:11:\"close_width\";s:2:\"28\";s:22:\"close_background_color\";s:7:\"#315b7c\";s:24:\"close_background_opacity\";s:3:\"100\";s:16:\"close_font_color\";s:7:\"#ffffff\";s:17:\"close_line_height\";s:2:\"20\";s:15:\"close_font_size\";s:2:\"20\";s:17:\"close_font_family\";s:15:\"Times New Roman\";s:17:\"close_font_weight\";s:3:\"100\";s:16:\"close_font_style\";s:0:\"\";s:18:\"close_border_style\";s:4:\"none\";s:18:\"close_border_color\";s:7:\"#ffffff\";s:18:\"close_border_width\";s:1:\"1\";s:19:\"close_border_radius\";s:2:\"42\";s:21:\"close_boxshadow_inset\";s:2:\"no\";s:26:\"close_boxshadow_horizontal\";s:1:\"0\";s:24:\"close_boxshadow_vertical\";s:1:\"0\";s:20:\"close_boxshadow_blur\";s:1:\"0\";s:22:\"close_boxshadow_spread\";s:1:\"0\";s:21:\"close_boxshadow_color\";s:7:\"#020202\";s:23:\"close_boxshadow_opacity\";s:2:\"23\";s:27:\"close_textshadow_horizontal\";s:1:\"0\";s:25:\"close_textshadow_vertical\";s:1:\"0\";s:21:\"close_textshadow_blur\";s:1:\"0\";s:22:\"close_textshadow_color\";s:7:\"#000000\";s:24:\"close_textshadow_opacity\";s:2:\"23\";s:13:\"atc_promotion\";N;s:22:\"close_position_outside\";i:0;}');
INSERT INTO `wp_postmeta` VALUES (33,28,'popup_theme_data_version','3');
INSERT INTO `wp_postmeta` VALUES (34,28,'_pum_built_in','enterprise-blue');
INSERT INTO `wp_postmeta` VALUES (35,29,'popup_theme_settings','a:67:{s:24:\"overlay_background_color\";s:7:\"#000000\";s:26:\"overlay_background_opacity\";s:2:\"75\";s:17:\"container_padding\";s:2:\"30\";s:26:\"container_background_color\";s:7:\"#ffffff\";s:28:\"container_background_opacity\";s:3:\"100\";s:22:\"container_border_style\";s:5:\"solid\";s:22:\"container_border_color\";s:7:\"#81d742\";s:22:\"container_border_width\";s:2:\"14\";s:23:\"container_border_radius\";s:2:\"80\";s:25:\"container_boxshadow_inset\";s:2:\"no\";s:30:\"container_boxshadow_horizontal\";s:1:\"0\";s:28:\"container_boxshadow_vertical\";s:1:\"0\";s:24:\"container_boxshadow_blur\";s:1:\"0\";s:26:\"container_boxshadow_spread\";s:1:\"0\";s:25:\"container_boxshadow_color\";s:7:\"#020202\";s:27:\"container_boxshadow_opacity\";s:1:\"0\";s:16:\"title_font_color\";s:7:\"#2d2d2d\";s:17:\"title_line_height\";s:2:\"36\";s:15:\"title_font_size\";s:2:\"32\";s:17:\"title_font_family\";s:10:\"Montserrat\";s:17:\"title_font_weight\";s:3:\"100\";s:16:\"title_font_style\";s:0:\"\";s:16:\"title_text_align\";s:4:\"left\";s:27:\"title_textshadow_horizontal\";s:1:\"0\";s:25:\"title_textshadow_vertical\";s:1:\"0\";s:21:\"title_textshadow_blur\";s:1:\"0\";s:22:\"title_textshadow_color\";s:7:\"#020202\";s:24:\"title_textshadow_opacity\";s:2:\"23\";s:18:\"content_font_color\";s:7:\"#2d2d2d\";s:19:\"content_font_family\";s:7:\"inherit\";s:19:\"content_font_weight\";s:3:\"100\";s:18:\"content_font_style\";s:0:\"\";s:10:\"close_text\";s:2:\"×\";s:14:\"close_location\";s:8:\"topright\";s:18:\"close_position_top\";s:3:\"-30\";s:19:\"close_position_left\";s:3:\"-30\";s:21:\"close_position_bottom\";s:1:\"0\";s:20:\"close_position_right\";s:3:\"-30\";s:13:\"close_padding\";s:1:\"0\";s:12:\"close_height\";s:1:\"0\";s:11:\"close_width\";s:1:\"0\";s:22:\"close_background_color\";s:7:\"#ffffff\";s:24:\"close_background_opacity\";s:3:\"100\";s:16:\"close_font_color\";s:7:\"#2d2d2d\";s:17:\"close_line_height\";s:2:\"28\";s:15:\"close_font_size\";s:2:\"32\";s:17:\"close_font_family\";s:15:\"Times New Roman\";s:17:\"close_font_weight\";s:3:\"100\";s:16:\"close_font_style\";s:0:\"\";s:18:\"close_border_style\";s:4:\"none\";s:18:\"close_border_color\";s:7:\"#ffffff\";s:18:\"close_border_width\";s:1:\"1\";s:19:\"close_border_radius\";s:2:\"28\";s:21:\"close_boxshadow_inset\";s:2:\"no\";s:26:\"close_boxshadow_horizontal\";s:1:\"0\";s:24:\"close_boxshadow_vertical\";s:1:\"0\";s:20:\"close_boxshadow_blur\";s:1:\"0\";s:22:\"close_boxshadow_spread\";s:1:\"0\";s:21:\"close_boxshadow_color\";s:7:\"#020202\";s:23:\"close_boxshadow_opacity\";s:2:\"23\";s:27:\"close_textshadow_horizontal\";s:1:\"0\";s:25:\"close_textshadow_vertical\";s:1:\"0\";s:21:\"close_textshadow_blur\";s:1:\"0\";s:22:\"close_textshadow_color\";s:7:\"#000000\";s:24:\"close_textshadow_opacity\";s:2:\"23\";s:13:\"atc_promotion\";N;s:22:\"close_position_outside\";i:0;}');
INSERT INTO `wp_postmeta` VALUES (36,29,'popup_theme_data_version','3');
INSERT INTO `wp_postmeta` VALUES (37,29,'_pum_built_in','hello-box');
INSERT INTO `wp_postmeta` VALUES (38,30,'popup_theme_settings','a:67:{s:24:\"overlay_background_color\";s:7:\"#000000\";s:26:\"overlay_background_opacity\";s:2:\"50\";s:17:\"container_padding\";s:2:\"18\";s:26:\"container_background_color\";s:7:\"#1e73be\";s:28:\"container_background_opacity\";s:3:\"100\";s:22:\"container_border_style\";s:4:\"none\";s:22:\"container_border_color\";s:7:\"#000000\";s:22:\"container_border_width\";s:1:\"1\";s:23:\"container_border_radius\";s:1:\"0\";s:25:\"container_boxshadow_inset\";s:2:\"no\";s:30:\"container_boxshadow_horizontal\";s:1:\"0\";s:28:\"container_boxshadow_vertical\";s:2:\"10\";s:24:\"container_boxshadow_blur\";s:2:\"25\";s:26:\"container_boxshadow_spread\";s:1:\"0\";s:25:\"container_boxshadow_color\";s:7:\"#020202\";s:27:\"container_boxshadow_opacity\";s:2:\"50\";s:16:\"title_font_color\";s:7:\"#ffffff\";s:17:\"title_line_height\";s:2:\"28\";s:15:\"title_font_size\";s:2:\"26\";s:17:\"title_font_family\";s:10:\"Sans-Serif\";s:17:\"title_font_weight\";s:3:\"100\";s:16:\"title_font_style\";s:0:\"\";s:16:\"title_text_align\";s:4:\"left\";s:27:\"title_textshadow_horizontal\";s:1:\"0\";s:25:\"title_textshadow_vertical\";s:1:\"0\";s:21:\"title_textshadow_blur\";s:1:\"0\";s:22:\"title_textshadow_color\";s:7:\"#020202\";s:24:\"title_textshadow_opacity\";s:2:\"23\";s:18:\"content_font_color\";s:7:\"#ffffff\";s:19:\"content_font_family\";s:7:\"inherit\";s:19:\"content_font_weight\";s:3:\"100\";s:18:\"content_font_style\";s:0:\"\";s:10:\"close_text\";s:2:\"×\";s:14:\"close_location\";s:8:\"topright\";s:18:\"close_position_top\";s:1:\"0\";s:19:\"close_position_left\";s:1:\"0\";s:21:\"close_position_bottom\";s:1:\"0\";s:20:\"close_position_right\";s:1:\"0\";s:13:\"close_padding\";s:1:\"0\";s:12:\"close_height\";s:2:\"24\";s:11:\"close_width\";s:2:\"24\";s:22:\"close_background_color\";s:7:\"#eeee22\";s:24:\"close_background_opacity\";s:3:\"100\";s:16:\"close_font_color\";s:7:\"#1e73be\";s:17:\"close_line_height\";s:2:\"24\";s:15:\"close_font_size\";s:2:\"32\";s:17:\"close_font_family\";s:15:\"Times New Roman\";s:17:\"close_font_weight\";s:3:\"100\";s:16:\"close_font_style\";s:0:\"\";s:18:\"close_border_style\";s:4:\"none\";s:18:\"close_border_color\";s:7:\"#ffffff\";s:18:\"close_border_width\";s:1:\"1\";s:19:\"close_border_radius\";s:1:\"0\";s:21:\"close_boxshadow_inset\";s:2:\"no\";s:26:\"close_boxshadow_horizontal\";s:2:\"-1\";s:24:\"close_boxshadow_vertical\";s:1:\"1\";s:20:\"close_boxshadow_blur\";s:1:\"1\";s:22:\"close_boxshadow_spread\";s:1:\"0\";s:21:\"close_boxshadow_color\";s:7:\"#020202\";s:23:\"close_boxshadow_opacity\";s:2:\"10\";s:27:\"close_textshadow_horizontal\";s:2:\"-1\";s:25:\"close_textshadow_vertical\";s:1:\"1\";s:21:\"close_textshadow_blur\";s:1:\"1\";s:22:\"close_textshadow_color\";s:7:\"#000000\";s:24:\"close_textshadow_opacity\";s:2:\"10\";s:13:\"atc_promotion\";N;s:22:\"close_position_outside\";i:0;}');
INSERT INTO `wp_postmeta` VALUES (39,30,'popup_theme_data_version','3');
INSERT INTO `wp_postmeta` VALUES (40,30,'_pum_built_in','cutting-edge');
INSERT INTO `wp_postmeta` VALUES (41,31,'popup_theme_settings','a:67:{s:24:\"overlay_background_color\";s:7:\"#ffffff\";s:26:\"overlay_background_opacity\";s:2:\"50\";s:17:\"container_padding\";s:2:\"18\";s:26:\"container_background_color\";s:7:\"#fffbef\";s:28:\"container_background_opacity\";s:3:\"100\";s:22:\"container_border_style\";s:6:\"outset\";s:22:\"container_border_color\";s:7:\"#dd3333\";s:22:\"container_border_width\";s:2:\"20\";s:23:\"container_border_radius\";s:1:\"0\";s:25:\"container_boxshadow_inset\";s:3:\"yes\";s:30:\"container_boxshadow_horizontal\";s:1:\"1\";s:28:\"container_boxshadow_vertical\";s:1:\"1\";s:24:\"container_boxshadow_blur\";s:1:\"3\";s:26:\"container_boxshadow_spread\";s:1:\"0\";s:25:\"container_boxshadow_color\";s:7:\"#020202\";s:27:\"container_boxshadow_opacity\";s:2:\"97\";s:16:\"title_font_color\";s:7:\"#000000\";s:17:\"title_line_height\";s:2:\"36\";s:15:\"title_font_size\";s:2:\"32\";s:17:\"title_font_family\";s:7:\"inherit\";s:17:\"title_font_weight\";s:3:\"100\";s:16:\"title_font_style\";s:0:\"\";s:16:\"title_text_align\";s:4:\"left\";s:27:\"title_textshadow_horizontal\";s:1:\"0\";s:25:\"title_textshadow_vertical\";s:1:\"0\";s:21:\"title_textshadow_blur\";s:1:\"0\";s:22:\"title_textshadow_color\";s:7:\"#020202\";s:24:\"title_textshadow_opacity\";s:2:\"23\";s:18:\"content_font_color\";s:7:\"#2d2d2d\";s:19:\"content_font_family\";s:7:\"inherit\";s:19:\"content_font_weight\";s:3:\"100\";s:18:\"content_font_style\";s:0:\"\";s:10:\"close_text\";s:2:\"×\";s:14:\"close_location\";s:8:\"topright\";s:18:\"close_position_top\";s:3:\"-20\";s:19:\"close_position_left\";s:3:\"-20\";s:21:\"close_position_bottom\";s:1:\"0\";s:20:\"close_position_right\";s:3:\"-20\";s:13:\"close_padding\";s:1:\"0\";s:12:\"close_height\";s:2:\"20\";s:11:\"close_width\";s:2:\"20\";s:22:\"close_background_color\";s:7:\"#000000\";s:24:\"close_background_opacity\";s:2:\"55\";s:16:\"close_font_color\";s:7:\"#ffffff\";s:17:\"close_line_height\";s:2:\"18\";s:15:\"close_font_size\";s:2:\"16\";s:17:\"close_font_family\";s:6:\"Tahoma\";s:17:\"close_font_weight\";s:3:\"700\";s:16:\"close_font_style\";s:0:\"\";s:18:\"close_border_style\";s:4:\"none\";s:18:\"close_border_color\";s:7:\"#ffffff\";s:18:\"close_border_width\";s:1:\"1\";s:19:\"close_border_radius\";s:1:\"0\";s:21:\"close_boxshadow_inset\";s:2:\"no\";s:26:\"close_boxshadow_horizontal\";s:1:\"0\";s:24:\"close_boxshadow_vertical\";s:1:\"0\";s:20:\"close_boxshadow_blur\";s:1:\"0\";s:22:\"close_boxshadow_spread\";s:1:\"0\";s:21:\"close_boxshadow_color\";s:7:\"#020202\";s:23:\"close_boxshadow_opacity\";s:2:\"23\";s:27:\"close_textshadow_horizontal\";s:1:\"0\";s:25:\"close_textshadow_vertical\";s:1:\"0\";s:21:\"close_textshadow_blur\";s:1:\"0\";s:22:\"close_textshadow_color\";s:7:\"#000000\";s:24:\"close_textshadow_opacity\";s:2:\"23\";s:13:\"atc_promotion\";N;s:22:\"close_position_outside\";i:0;}');
INSERT INTO `wp_postmeta` VALUES (42,31,'popup_theme_data_version','3');
INSERT INTO `wp_postmeta` VALUES (43,31,'_pum_built_in','framed-border');
INSERT INTO `wp_postmeta` VALUES (48,33,'_wp_attached_file','2020/03/pic11.jpeg');
INSERT INTO `wp_postmeta` VALUES (49,33,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2520;s:6:\"height\";i:1415;s:4:\"file\";s:18:\"2020/03/pic11.jpeg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"pic11-300x168.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"pic11-1024x575.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:575;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"pic11-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"pic11-768x431.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:431;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"pic11-1536x862.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:862;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:20:\"pic11-2048x1150.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (58,26,'_edit_lock','1583995724:1');
INSERT INTO `wp_postmeta` VALUES (59,26,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (60,26,'_pum_user_modified','1');
INSERT INTO `wp_postmeta` VALUES (61,26,'popup_theme_overlay','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (62,26,'popup_theme_container','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (63,26,'popup_theme_title','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (64,26,'popup_theme_content','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (65,26,'popup_theme_close','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (91,45,'data_version','3');
INSERT INTO `wp_postmeta` VALUES (92,45,'popup_open_count','0');
INSERT INTO `wp_postmeta` VALUES (93,45,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (94,45,'_edit_lock','1584120393:1');
INSERT INTO `wp_postmeta` VALUES (95,45,'popup_title','Cash Offer Now');
INSERT INTO `wp_postmeta` VALUES (96,45,'popup_settings','a:37:{s:8:\"triggers\";a:1:{i:0;a:2:{s:4:\"type\";s:10:\"click_open\";s:8:\"settings\";a:2:{s:15:\"extra_selectors\";s:11:\".cashButton\";s:11:\"cookie_name\";a:1:{i:0;s:6:\"pum-45\";}}}}s:7:\"cookies\";a:2:{i:0;a:2:{s:5:\"event\";s:14:\"on_popup_close\";s:8:\"settings\";a:5:{s:4:\"name\";s:6:\"pum-45\";s:3:\"key\";s:0:\"\";s:7:\"session\";b:0;s:4:\"time\";s:7:\"1 month\";s:4:\"path\";s:1:\"1\";}}i:1;a:2:{s:5:\"event\";s:14:\"on_popup_close\";s:8:\"settings\";a:3:{s:4:\"name\";s:6:\"pum-45\";s:4:\"time\";s:7:\"1 month\";s:4:\"path\";s:1:\"1\";}}}s:8:\"theme_id\";s:2:\"27\";s:4:\"size\";s:6:\"normal\";s:20:\"responsive_min_width\";s:2:\"0%\";s:20:\"responsive_max_width\";s:4:\"100%\";s:12:\"custom_width\";s:5:\"640px\";s:13:\"custom_height\";s:5:\"380px\";s:14:\"animation_type\";s:4:\"fade\";s:15:\"animation_speed\";s:3:\"350\";s:16:\"animation_origin\";s:10:\"center top\";s:8:\"location\";s:6:\"center\";s:12:\"position_top\";s:3:\"100\";s:15:\"position_bottom\";s:1:\"0\";s:13:\"position_left\";s:1:\"0\";s:14:\"position_right\";s:1:\"0\";s:14:\"position_fixed\";s:1:\"1\";s:6:\"zindex\";s:10:\"1999999999\";s:10:\"close_text\";s:0:\"\";s:18:\"close_button_delay\";s:1:\"0\";s:30:\"close_on_form_submission_delay\";s:1:\"0\";s:10:\"conditions\";a:0:{}s:17:\"disable_on_mobile\";b:0;s:17:\"disable_on_tablet\";b:0;s:18:\"custom_height_auto\";b:0;s:18:\"scrollable_content\";b:0;s:21:\"position_from_trigger\";b:0;s:16:\"overlay_disabled\";b:0;s:9:\"stackable\";b:0;s:18:\"disable_reposition\";b:0;s:24:\"close_on_form_submission\";b:0;s:22:\"close_on_overlay_click\";b:0;s:18:\"close_on_esc_press\";b:0;s:17:\"close_on_f4_press\";b:0;s:19:\"disable_form_reopen\";b:0;s:21:\"disable_accessibility\";b:0;s:10:\"theme_slug\";s:8:\"lightbox\";}');
INSERT INTO `wp_postmeta` VALUES (104,53,'_edit_lock','1584298880:1');
INSERT INTO `wp_postmeta` VALUES (109,16,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (112,14,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (115,8,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (118,5,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (123,1,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (126,1,'_edit_lock','1584299073:1');
INSERT INTO `wp_postmeta` VALUES (127,56,'_edit_lock','1584301951:1');
INSERT INTO `wp_postmeta` VALUES (130,58,'_edit_lock','1584301959:1');
INSERT INTO `wp_postmeta` VALUES (133,56,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (136,58,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (139,60,'_edit_lock','1584302016:1');
INSERT INTO `wp_postmeta` VALUES (143,63,'_edit_lock','1584302009:1');
INSERT INTO `wp_postmeta` VALUES (146,63,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (149,60,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (152,65,'_edit_lock','1584302064:1');
INSERT INTO `wp_postmeta` VALUES (155,65,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (163,69,'_edit_lock','1586893742:1');
INSERT INTO `wp_postmeta` VALUES (164,69,'_wp_page_template','faq.php');
INSERT INTO `wp_postmeta` VALUES (169,75,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (170,75,'_wp_trash_meta_time','1586892733');
INSERT INTO `wp_postmeta` VALUES (171,76,'_edit_lock','1586894202:1');
INSERT INTO `wp_postmeta` VALUES (172,77,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (173,77,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (174,77,'_menu_item_object_id','69');
INSERT INTO `wp_postmeta` VALUES (175,77,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (176,77,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (177,77,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (178,77,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (179,77,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (180,78,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (181,78,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (182,78,'_menu_item_object_id','18');
INSERT INTO `wp_postmeta` VALUES (183,78,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (184,78,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (185,78,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (186,78,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (187,78,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (188,79,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (189,79,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (190,79,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (191,79,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (192,79,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (193,79,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (194,79,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (195,79,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (196,76,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (197,76,'_wp_trash_meta_time','1586894204');
INSERT INTO `wp_postmeta` VALUES (198,81,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (199,81,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (200,81,'_menu_item_object_id','81');
INSERT INTO `wp_postmeta` VALUES (201,81,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (202,81,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (203,81,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (204,81,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (205,81,'_menu_item_url','http://victorypropertybuyers.local');
INSERT INTO `wp_postmeta` VALUES (206,82,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (207,82,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (208,82,'_menu_item_object_id','69');
INSERT INTO `wp_postmeta` VALUES (209,82,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (210,82,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (211,82,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (212,82,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (213,82,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (214,83,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (215,83,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (216,83,'_menu_item_object_id','18');
INSERT INTO `wp_postmeta` VALUES (217,83,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (218,83,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (219,83,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (220,83,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (221,83,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (222,84,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (223,84,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (224,84,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (225,84,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (226,84,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (227,84,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (228,84,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (229,84,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (230,80,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (231,80,'_wp_trash_meta_time','1586894246');
INSERT INTO `wp_postmeta` VALUES (232,85,'_wp_attached_file','2020/03/cropped-pic11.jpeg');
INSERT INTO `wp_postmeta` VALUES (233,85,'_wp_attachment_context','site-icon');
INSERT INTO `wp_postmeta` VALUES (234,85,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:26:\"2020/03/cropped-pic11.jpeg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cropped-pic11-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-pic11-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:26:\"cropped-pic11-272x182.jpeg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:26:\"cropped-pic11-270x270.jpeg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:26:\"cropped-pic11-192x192.jpeg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:26:\"cropped-pic11-180x180.jpeg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:24:\"cropped-pic11-32x32.jpeg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (235,86,'_wp_attached_file','2020/04/victory-property-buyers-logo.jpg');
INSERT INTO `wp_postmeta` VALUES (236,86,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1777;s:6:\"height\";i:1111;s:4:\"file\";s:40:\"2020/04/victory-property-buyers-logo.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"victory-property-buyers-logo-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"victory-property-buyers-logo-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"victory-property-buyers-logo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"victory-property-buyers-logo-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:41:\"victory-property-buyers-logo-1536x960.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:40:\"victory-property-buyers-logo-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (237,87,'_edit_lock','1586994124:1');
INSERT INTO `wp_postmeta` VALUES (238,88,'_wp_attached_file','2020/04/logo.jpeg');
INSERT INTO `wp_postmeta` VALUES (239,88,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:112;s:6:\"height\";i:70;s:4:\"file\";s:17:\"2020/04/logo.jpeg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (240,89,'_wp_attached_file','2020/04/victory-property-buyers-logo-small.jpg');
INSERT INTO `wp_postmeta` VALUES (241,89,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:512;s:6:\"height\";i:320;s:4:\"file\";s:46:\"2020/04/victory-property-buyers-logo-small.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"victory-property-buyers-logo-small-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"victory-property-buyers-logo-small-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:46:\"victory-property-buyers-logo-small-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (242,87,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (243,87,'_wp_trash_meta_time','1586994134');
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-03-09 18:46:33','2020-03-09 18:46:33','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2020-03-15 19:04:33','2020-03-15 19:04:33','',0,'http://victorypropertybuyers.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (3,1,'2020-03-09 18:46:33','2020-03-09 18:46:33','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://victorypropertybuyers.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2020-03-09 18:46:33','2020-03-09 18:46:33','',0,'http://victorypropertybuyers.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2020-03-11 18:21:26','2020-03-11 18:21:26','<!-- wp:paragraph -->\n<p>this is a test</p>\n<!-- /wp:paragraph -->','test post','','publish','open','open','','test-post','','','2020-03-15 19:04:15','2020-03-15 19:04:15','',0,'http://victorypropertybuyers.local/?p=5',0,'post','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2020-03-11 18:21:26','2020-03-11 18:21:26','<!-- wp:paragraph -->\n<p>this is a test</p>\n<!-- /wp:paragraph -->','test post','','inherit','closed','closed','','5-revision-v1','','','2020-03-11 18:21:26','2020-03-11 18:21:26','',5,'http://victorypropertybuyers.local/5-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2020-03-11 18:36:28','2020-03-11 18:36:28','<!-- wp:paragraph -->\n<p>This is a test</p>\n<!-- /wp:paragraph -->','TESTTESTTEST','','publish','open','open','','testtesttest','','','2020-03-15 19:04:05','2020-03-15 19:04:05','',0,'http://victorypropertybuyers.local/?p=8',0,'post','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2020-03-11 18:36:28','2020-03-11 18:36:28','<!-- wp:paragraph -->\n<p>This is a test</p>\n<!-- /wp:paragraph -->','TESTTESTTEST','','inherit','closed','closed','','8-revision-v1','','','2020-03-11 18:36:28','2020-03-11 18:36:28','',8,'http://victorypropertybuyers.local/8-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2020-03-11 19:20:40','2020-03-11 19:20:40','','Home','','publish','closed','closed','','home','','','2020-03-11 19:45:59','2020-03-11 19:45:59','',0,'http://victorypropertybuyers.local/?page_id=10',0,'page','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2020-03-11 19:20:40','2020-03-11 19:20:40','','home','','inherit','closed','closed','','10-revision-v1','','','2020-03-11 19:20:40','2020-03-11 19:20:40','',10,'http://victorypropertybuyers.local/10-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2020-03-11 19:20:48','2020-03-11 19:20:48','','Blog','','publish','closed','closed','','blog','','','2020-04-14 19:42:33','2020-04-14 19:42:33','',10,'http://victorypropertybuyers.local/?page_id=12',0,'page','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2020-03-11 19:20:48','2020-03-11 19:20:48','','blog','','inherit','closed','closed','','12-revision-v1','','','2020-03-11 19:20:48','2020-03-11 19:20:48','',12,'http://victorypropertybuyers.local/12-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2020-03-11 19:30:15','2020-03-11 19:30:15','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','This is a blog','','publish','open','open','','this-is-a-blog','','','2020-03-15 19:04:20','2020-03-15 19:04:20','',0,'http://victorypropertybuyers.local/?p=14',0,'post','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2020-03-11 19:30:15','2020-03-11 19:30:15','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','This is a blog','','inherit','closed','closed','','14-revision-v1','','','2020-03-11 19:30:15','2020-03-11 19:30:15','',14,'http://victorypropertybuyers.local/14-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2020-03-11 19:33:36','2020-03-11 19:33:36','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Test Blog','','publish','open','open','','test-blog','','','2020-03-15 19:03:52','2020-03-15 19:03:52','',0,'http://victorypropertybuyers.local/?p=16',0,'post','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2020-03-11 19:33:36','2020-03-11 19:33:36','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Test Blog','','inherit','closed','closed','','16-revision-v1','','','2020-03-11 19:33:36','2020-03-11 19:33:36','',16,'http://victorypropertybuyers.local/16-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2020-03-11 19:43:56','2020-03-11 19:43:56','','About Us','','publish','closed','closed','','about-us','','','2020-04-14 19:42:19','2020-04-14 19:42:19','',10,'http://victorypropertybuyers.local/?page_id=18',0,'page','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2020-03-11 19:43:56','2020-03-11 19:43:56','','about-us','','inherit','closed','closed','','18-revision-v1','','','2020-03-11 19:43:56','2020-03-11 19:43:56','',18,'http://victorypropertybuyers.local/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2020-03-11 19:45:40','2020-03-11 19:45:40','','About Us','','inherit','closed','closed','','18-revision-v1','','','2020-03-11 19:45:40','2020-03-11 19:45:40','',18,'http://victorypropertybuyers.local/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2020-03-11 19:45:50','2020-03-11 19:45:50','','Blog','','inherit','closed','closed','','12-revision-v1','','','2020-03-11 19:45:50','2020-03-11 19:45:50','',12,'http://victorypropertybuyers.local/12-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2020-03-11 19:45:59','2020-03-11 19:45:59','','Home','','inherit','closed','closed','','10-revision-v1','','','2020-03-11 19:45:59','2020-03-11 19:45:59','',10,'http://victorypropertybuyers.local/10-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2020-03-12 02:19:05','2020-03-12 02:19:05','','Default Theme','','publish','closed','closed','','default-theme','','','2020-03-12 02:33:14','2020-03-12 02:33:14','',0,'http://victorypropertybuyers.local/default-theme/',0,'popup_theme','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2020-03-12 02:19:05','2020-03-12 02:19:05','','Light Box','','publish','closed','closed','','lightbox','','','2020-03-12 02:19:05','2020-03-12 02:19:05','',0,'http://victorypropertybuyers.local/lightbox/',0,'popup_theme','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2020-03-12 02:19:05','2020-03-12 02:19:05','','Enterprise Blue','','publish','closed','closed','','enterprise-blue','','','2020-03-12 02:19:05','2020-03-12 02:19:05','',0,'http://victorypropertybuyers.local/enterprise-blue/',0,'popup_theme','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2020-03-12 02:19:05','2020-03-12 02:19:05','','Hello Box','','publish','closed','closed','','hello-box','','','2020-03-12 02:19:05','2020-03-12 02:19:05','',0,'http://victorypropertybuyers.local/hello-box/',0,'popup_theme','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2020-03-12 02:19:05','2020-03-12 02:19:05','','Cutting Edge','','publish','closed','closed','','cutting-edge','','','2020-03-12 02:19:05','2020-03-12 02:19:05','',0,'http://victorypropertybuyers.local/cutting-edge/',0,'popup_theme','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2020-03-12 02:19:05','2020-03-12 02:19:05','','Framed Border','','publish','closed','closed','','framed-border','','','2020-03-12 02:19:05','2020-03-12 02:19:05','',0,'http://victorypropertybuyers.local/framed-border/',0,'popup_theme','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2020-03-12 02:20:19','2020-03-12 02:20:19','','pic11','','inherit','open','closed','','pic11','','','2020-03-12 02:20:19','2020-03-12 02:20:19','',0,'http://victorypropertybuyers.local/wp-content/uploads/2020/03/pic11.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (38,1,'2020-03-12 02:33:14','2020-03-12 02:33:14','','Default Theme','','inherit','closed','closed','','26-revision-v1','','','2020-03-12 02:33:14','2020-03-12 02:33:14','',26,'http://victorypropertybuyers.local/26-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2020-03-13 16:51:00','2020-03-13 16:51:00','<img class=\"aligncenter size-medium wp-image-33\" src=\"http://victorypropertybuyers.local/wp-content/uploads/2020/03/pic11-300x168.jpeg\" alt=\"popup\" width=\"300\" height=\"168\" />\r\n<h1>this is a popup test</h1>','cash offer','','publish','closed','closed','','cash-offer-2','','','2020-03-13 17:26:27','2020-03-13 17:26:27','',0,'http://victorypropertybuyers.local/?post_type=popup&#038;p=45',0,'popup','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2020-03-13 16:51:00','2020-03-13 16:51:00','<img src=\"http://victorypropertybuyers.local/wp-content/uploads/2020/03/pic11-300x168.jpeg\" alt=\"popup\" width=\"300\" height=\"168\" class=\"aligncenter size-medium wp-image-33\" />','cash offer','','inherit','closed','closed','','45-revision-v1','','','2020-03-13 16:51:00','2020-03-13 16:51:00','',45,'http://victorypropertybuyers.local/45-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2020-03-13 17:17:00','2020-03-13 17:17:00','<img class=\"aligncenter size-medium wp-image-33\" src=\"http://victorypropertybuyers.local/wp-content/uploads/2020/03/pic11-300x168.jpeg\" alt=\"popup\" width=\"300\" height=\"168\" />','cash offer','','inherit','closed','closed','','45-autosave-v1','','','2020-03-13 17:17:00','2020-03-13 17:17:00','',45,'http://victorypropertybuyers.local/45-autosave-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2020-03-13 17:19:20','2020-03-13 17:19:20','<img class=\"aligncenter size-medium wp-image-33\" src=\"http://victorypropertybuyers.local/wp-content/uploads/2020/03/pic11-300x168.jpeg\" alt=\"popup\" width=\"300\" height=\"168\" />','cash offer','','inherit','closed','closed','','45-revision-v1','','','2020-03-13 17:19:20','2020-03-13 17:19:20','',45,'http://victorypropertybuyers.local/45-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2020-03-13 17:22:08','2020-03-13 17:22:08','<img class=\"aligncenter size-medium wp-image-33\" src=\"http://victorypropertybuyers.local/wp-content/uploads/2020/03/pic11-300x168.jpeg\" alt=\"popup\" width=\"300\" height=\"168\" />\r\n\r\n<h1> this is a popup test </h1>','cash offer','','inherit','closed','closed','','45-revision-v1','','','2020-03-13 17:22:08','2020-03-13 17:22:08','',45,'http://victorypropertybuyers.local/45-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2020-03-13 17:26:27','2020-03-13 17:26:27','<img class=\"aligncenter size-medium wp-image-33\" src=\"http://victorypropertybuyers.local/wp-content/uploads/2020/03/pic11-300x168.jpeg\" alt=\"popup\" width=\"300\" height=\"168\" />\r\n<h1>this is a popup test</h1>','cash offer','','inherit','closed','closed','','45-revision-v1','','','2020-03-13 17:26:27','2020-03-13 17:26:27','',45,'http://victorypropertybuyers.local/45-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2020-03-15 18:56:30','2020-03-15 18:56:30','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','This is a new blog','','publish','open','open','','this-is-a-new-blog','','','2020-03-15 19:03:41','2020-03-15 19:03:41','',0,'http://victorypropertybuyers.local/?p=53',0,'post','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2020-03-15 18:56:30','2020-03-15 18:56:30','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','This is a new blog','','inherit','closed','closed','','53-revision-v1','','','2020-03-15 18:56:30','2020-03-15 18:56:30','',53,'http://victorypropertybuyers.local/53-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2020-03-15 19:04:33','2020-03-15 19:04:33','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2020-03-15 19:04:33','2020-03-15 19:04:33','',1,'http://victorypropertybuyers.local/1-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2020-03-15 19:51:53','2020-03-15 19:51:53','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Blog about houses','','publish','open','open','','blog-about-houses','','','2020-03-15 19:52:31','2020-03-15 19:52:31','',0,'http://victorypropertybuyers.local/?p=56',0,'post','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2020-03-15 19:51:53','2020-03-15 19:51:53','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Blog about houses','','inherit','closed','closed','','56-revision-v1','','','2020-03-15 19:51:53','2020-03-15 19:51:53','',56,'http://victorypropertybuyers.local/56-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2020-03-15 19:52:19','2020-03-15 19:52:19','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Blog about real estate','','publish','open','open','','blog-about-real-estate','','','2020-03-15 19:52:38','2020-03-15 19:52:38','',0,'http://victorypropertybuyers.local/?p=58',0,'post','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2020-03-15 19:52:19','2020-03-15 19:52:19','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Blog about real estate','','inherit','closed','closed','','58-revision-v1','','','2020-03-15 19:52:19','2020-03-15 19:52:19','',58,'http://victorypropertybuyers.local/58-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2020-03-15 19:53:03','2020-03-15 19:53:03','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','blog about California','','publish','open','open','','blog-about-california','','','2020-03-15 19:53:35','2020-03-15 19:53:35','',0,'http://victorypropertybuyers.local/?p=60',0,'post','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2020-03-15 19:53:03','2020-03-15 19:53:03','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','blog about California','','inherit','closed','closed','','60-revision-v1','','','2020-03-15 19:53:03','2020-03-15 19:53:03','',60,'http://victorypropertybuyers.local/60-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2020-03-15 19:53:20','2020-03-15 19:53:20','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','blog about blogs','','publish','open','open','','blog-about-blogs','','','2020-03-15 19:53:29','2020-03-15 19:53:29','',0,'http://victorypropertybuyers.local/?p=63',0,'post','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2020-03-15 19:53:20','2020-03-15 19:53:20','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','blog about blogs','','inherit','closed','closed','','63-revision-v1','','','2020-03-15 19:53:20','2020-03-15 19:53:20','',63,'http://victorypropertybuyers.local/63-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2020-03-15 19:54:15','2020-03-15 19:54:15','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','This is a blog post about post that are blogs','','publish','open','open','','this-is-a-blog-post-about-post-that-are-blogs','','','2020-03-15 19:54:24','2020-03-15 19:54:24','',0,'http://victorypropertybuyers.local/?p=65',0,'post','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2020-03-15 19:54:15','2020-03-15 19:54:15','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','This is a blog post about post that are blogs','','inherit','closed','closed','','65-revision-v1','','','2020-03-15 19:54:15','2020-03-15 19:54:15','',65,'http://victorypropertybuyers.local/65-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2020-03-15 20:13:22','2020-03-15 20:13:22','','FAQ','','publish','closed','closed','','faq','','','2020-03-15 20:13:22','2020-03-15 20:13:22','',10,'http://victorypropertybuyers.local/?page_id=69',0,'page','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2020-03-15 20:13:22','2020-03-15 20:13:22','','FAQ','','inherit','closed','closed','','69-revision-v1','','','2020-03-15 20:13:22','2020-03-15 20:13:22','',69,'http://victorypropertybuyers.local/69-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2020-04-14 19:32:12','2020-04-14 19:32:12','{\n    \"blogdescription\": {\n        \"value\": \"We Buy Houses Calfornia\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-14 19:32:12\"\n    }\n}','','','trash','closed','closed','','43d47dad-d6b2-4863-b32d-8740a4855655','','','2020-04-14 19:32:12','2020-04-14 19:32:12','',0,'http://victorypropertybuyers.local/43d47dad-d6b2-4863-b32d-8740a4855655/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2020-04-14 19:56:44','2020-04-14 19:56:44','{\n    \"victoryPropertyBuyers::nav_menu_locations[primary]\": {\n        \"value\": -1756423629126995000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-14 19:55:56\"\n    },\n    \"nav_menu[-1756423629126995000]\": {\n        \"value\": {\n            \"name\": \"Primary Menu Links\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-14 19:55:56\"\n    },\n    \"victoryPropertyBuyers::nav_menu_locations[footer]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-14 19:56:44\"\n    },\n    \"nav_menu_item[-8244540355894072000]\": {\n        \"value\": {\n            \"object_id\": 69,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"FAQ\",\n            \"url\": \"http://victorypropertybuyers.local/home/faq/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"FAQ\",\n            \"nav_menu_term_id\": -1756423629126995000,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-14 19:56:44\"\n    },\n    \"nav_menu_item[-6419132867149298000]\": {\n        \"value\": {\n            \"object_id\": 18,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"About Us\",\n            \"url\": \"http://victorypropertybuyers.local/home/about-us/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"About Us\",\n            \"nav_menu_term_id\": -1756423629126995000,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-14 19:56:44\"\n    },\n    \"nav_menu_item[-4993898530997037000]\": {\n        \"value\": {\n            \"object_id\": 12,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"http://victorypropertybuyers.local/home/blog/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -1756423629126995000,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-14 19:56:44\"\n    }\n}','','','trash','closed','closed','','6f16ccad-5bd4-4f8a-bcbf-6feb90d458e7','','','2020-04-14 19:56:44','2020-04-14 19:56:44','',0,'http://victorypropertybuyers.local/?p=76',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2020-04-14 19:56:44','2020-04-14 19:56:44',' ','','','publish','closed','closed','','77','','','2020-04-14 19:59:43','2020-04-14 19:59:43','',10,'http://victorypropertybuyers.local/77/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2020-04-14 19:56:44','2020-04-14 19:56:44',' ','','','publish','closed','closed','','78','','','2020-04-14 19:59:43','2020-04-14 19:59:43','',10,'http://victorypropertybuyers.local/78/',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2020-04-14 19:56:44','2020-04-14 19:56:44',' ','','','publish','closed','closed','','79','','','2020-04-14 19:59:43','2020-04-14 19:59:43','',10,'http://victorypropertybuyers.local/79/',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2020-04-14 19:57:26','2020-04-14 19:57:26','{\n    \"victoryPropertyBuyers::nav_menu_locations[footer]\": {\n        \"value\": -4788864346600613000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-14 19:57:26\"\n    },\n    \"nav_menu[-4788864346600613000]\": {\n        \"value\": {\n            \"name\": \"Footer Menu Links\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-14 19:57:26\"\n    },\n    \"nav_menu_item[-8350735509171631000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://victorypropertybuyers.local\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -4788864346600613000,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-14 19:57:26\"\n    },\n    \"nav_menu_item[-7090882990817044000]\": {\n        \"value\": {\n            \"object_id\": 69,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"FAQ\",\n            \"url\": \"http://victorypropertybuyers.local/home/faq/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"FAQ\",\n            \"nav_menu_term_id\": -4788864346600613000,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-14 19:57:26\"\n    },\n    \"nav_menu_item[-5762340560364375000]\": {\n        \"value\": {\n            \"object_id\": 18,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"About Us\",\n            \"url\": \"http://victorypropertybuyers.local/home/about-us/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"About Us\",\n            \"nav_menu_term_id\": -4788864346600613000,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-14 19:57:26\"\n    },\n    \"nav_menu_item[-5505233493612813000]\": {\n        \"value\": {\n            \"object_id\": 12,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"http://victorypropertybuyers.local/home/blog/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -4788864346600613000,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-14 19:57:26\"\n    }\n}','','','trash','closed','closed','','11536cae-5fc5-4d89-a189-17b9919c1edc','','','2020-04-14 19:57:26','2020-04-14 19:57:26','',0,'http://victorypropertybuyers.local/11536cae-5fc5-4d89-a189-17b9919c1edc/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2020-04-14 19:57:26','2020-04-14 19:57:26','','Home','','publish','closed','closed','','home','','','2020-04-14 19:57:26','2020-04-14 19:57:26','',0,'http://victorypropertybuyers.local/home/',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2020-04-14 19:57:26','2020-04-14 19:57:26',' ','','','publish','closed','closed','','82','','','2020-04-14 19:57:26','2020-04-14 19:57:26','',10,'http://victorypropertybuyers.local/82/',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2020-04-14 19:57:26','2020-04-14 19:57:26',' ','','','publish','closed','closed','','83','','','2020-04-14 19:57:26','2020-04-14 19:57:26','',10,'http://victorypropertybuyers.local/83/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2020-04-14 19:57:26','2020-04-14 19:57:26',' ','','','publish','closed','closed','','84','','','2020-04-14 19:57:26','2020-04-14 19:57:26','',10,'http://victorypropertybuyers.local/84/',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2020-04-15 23:37:04','2020-04-15 23:37:04','https://victorypropertybuyers.local/wp-content/uploads/2020/03/cropped-pic11.jpeg','cropped-pic11.jpeg','','inherit','open','closed','','cropped-pic11-jpeg','','','2020-04-15 23:37:04','2020-04-15 23:37:04','',0,'https://victorypropertybuyers.local/wp-content/uploads/2020/03/cropped-pic11.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (86,1,'2020-04-15 23:37:42','2020-04-15 23:37:42','','victory-property-buyers-logo','','inherit','open','closed','','victory-property-buyers-logo','','','2020-04-15 23:37:42','2020-04-15 23:37:42','',0,'https://victorypropertybuyers.local/wp-content/uploads/2020/04/victory-property-buyers-logo.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (87,1,'2020-04-15 23:42:14','2020-04-15 23:42:14','{\n    \"site_icon\": {\n        \"value\": 89,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-15 23:42:04\"\n    }\n}','','','trash','closed','closed','','9706dc7e-f340-4de0-a0ad-4200ab4c5173','','','2020-04-15 23:42:14','2020-04-15 23:42:14','',0,'https://victorypropertybuyers.local/?p=87',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2020-04-15 23:39:08','2020-04-15 23:39:08','','logo','','inherit','open','closed','','logo','','','2020-04-15 23:39:08','2020-04-15 23:39:08','',0,'https://victorypropertybuyers.local/wp-content/uploads/2020/04/logo.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (89,1,'2020-04-15 23:41:47','2020-04-15 23:41:47','','victory-property-buyers-logo-small','','inherit','open','closed','','victory-property-buyers-logo-small','','','2020-04-15 23:41:47','2020-04-15 23:41:47','',0,'https://victorypropertybuyers.local/wp-content/uploads/2020/04/victory-property-buyers-logo-small.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (90,1,'2020-04-27 04:14:49','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-04-27 04:14:49','0000-00-00 00:00:00','',0,'https://victorypropertybuyers.local/?p=90',0,'post','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2020-04-27 04:25:30','2020-04-27 04:25:30','{\"id\":\"92\",\"field_id\":3,\"fields\":[{\"id\":\"0\",\"type\":\"name\",\"label\":\"Name\",\"format\":\"first-last\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":\"\",\"css\":\"\"},{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"Comment or Message\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"\"}],\"settings\":{\"form_title\":\"contact-form\",\"form_desc\":\"\",\"form_class\":\"contact__form\",\"submit_text\":\"Submit\",\"submit_text_processing\":\"Sending...\",\"submit_class\":\"contact__form-button\",\"honeypot\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: Simple Contact Form\",\"sender_name\":\"VictoryPropertyBuyers\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"10\",\"redirect\":\"\"}}},\"meta\":{\"template\":\"contact\"}}','contact-form','','publish','closed','closed','','simple-contact-form','','','2020-04-27 04:28:56','2020-04-27 04:28:56','',0,'https://victorypropertybuyers.local/?post_type=wpforms&#038;p=92',0,'wpforms','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pum_subscribers`
--

DROP TABLE IF EXISTS `wp_pum_subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_pum_subscribers` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `email_hash` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `popup_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `values` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consent_args` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `email` (`email`),
  KEY `user_id` (`user_id`),
  KEY `popup_id` (`popup_id`),
  KEY `email_hash` (`email_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pum_subscribers`
--

LOCK TABLES `wp_pum_subscribers` WRITE;
/*!40000 ALTER TABLE `wp_pum_subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_pum_subscribers` ENABLE KEYS */;
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
INSERT INTO `wp_term_relationships` VALUES (1,2,0);
INSERT INTO `wp_term_relationships` VALUES (1,4,0);
INSERT INTO `wp_term_relationships` VALUES (5,3,0);
INSERT INTO `wp_term_relationships` VALUES (8,2,0);
INSERT INTO `wp_term_relationships` VALUES (14,3,0);
INSERT INTO `wp_term_relationships` VALUES (16,4,0);
INSERT INTO `wp_term_relationships` VALUES (53,2,0);
INSERT INTO `wp_term_relationships` VALUES (56,2,0);
INSERT INTO `wp_term_relationships` VALUES (56,3,0);
INSERT INTO `wp_term_relationships` VALUES (56,4,0);
INSERT INTO `wp_term_relationships` VALUES (58,2,0);
INSERT INTO `wp_term_relationships` VALUES (58,3,0);
INSERT INTO `wp_term_relationships` VALUES (58,4,0);
INSERT INTO `wp_term_relationships` VALUES (60,1,0);
INSERT INTO `wp_term_relationships` VALUES (60,2,0);
INSERT INTO `wp_term_relationships` VALUES (60,3,0);
INSERT INTO `wp_term_relationships` VALUES (60,4,0);
INSERT INTO `wp_term_relationships` VALUES (63,2,0);
INSERT INTO `wp_term_relationships` VALUES (63,3,0);
INSERT INTO `wp_term_relationships` VALUES (65,1,0);
INSERT INTO `wp_term_relationships` VALUES (65,2,0);
INSERT INTO `wp_term_relationships` VALUES (65,3,0);
INSERT INTO `wp_term_relationships` VALUES (65,4,0);
INSERT INTO `wp_term_relationships` VALUES (77,5,0);
INSERT INTO `wp_term_relationships` VALUES (78,5,0);
INSERT INTO `wp_term_relationships` VALUES (79,5,0);
INSERT INTO `wp_term_relationships` VALUES (81,6,0);
INSERT INTO `wp_term_relationships` VALUES (82,6,0);
INSERT INTO `wp_term_relationships` VALUES (83,6,0);
INSERT INTO `wp_term_relationships` VALUES (84,6,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'category','',0,8);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'category','',0,7);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'category','',0,6);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'nav_menu','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'nav_menu','',0,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Misc','misc',0);
INSERT INTO `wp_terms` VALUES (3,'Fun','fun',0);
INSERT INTO `wp_terms` VALUES (4,'Housing','housing',0);
INSERT INTO `wp_terms` VALUES (5,'Primary Menu Links','primary-menu-links',0);
INSERT INTO `wp_terms` VALUES (6,'Footer Menu Links','footer-menu-links',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Victory Property Buyers');
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
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"eafe370002fa7e047dce05365224378bb40c9f6fba21c6f898e1977c62bb0792\";a:4:{s:10:\"expiration\";i:1588133688;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1587960888;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','90');
INSERT INTO `wp_usermeta` VALUES (18,1,'_pum_dismissed_alerts','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_user-settings','libraryContent=browse&align=center&editor=tinymce');
INSERT INTO `wp_usermeta` VALUES (20,1,'wp_user-settings-time','1584120382');
INSERT INTO `wp_usermeta` VALUES (21,1,'closedpostboxes_popup','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (22,1,'metaboxhidden_popup','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (24,1,'closedpostboxes_page','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (25,1,'metaboxhidden_page','a:6:{i:0;s:12:\"revisionsdiv\";i:1;s:10:\"postcustom\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}');
INSERT INTO `wp_usermeta` VALUES (26,1,'nav_menu_recently_edited','5');
INSERT INTO `wp_usermeta` VALUES (27,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (28,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (29,1,'closedpostboxes_dashboard','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (30,1,'metaboxhidden_dashboard','a:0:{}');
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
INSERT INTO `wp_users` VALUES (1,'VictoryPropertyBuyers','$P$BqchMEaiDsSHGckas0lXBIRjUjGyZV0','victorypropertybuyers','victorypropertybuyers@gmail.com','','2020-03-09 18:46:33','',0,'Victory Property Buyers');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforms_tasks_meta`
--

DROP TABLE IF EXISTS `wp_wpforms_tasks_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpforms_tasks_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforms_tasks_meta`
--

LOCK TABLES `wp_wpforms_tasks_meta` WRITE;
/*!40000 ALTER TABLE `wp_wpforms_tasks_meta` DISABLE KEYS */;
INSERT INTO `wp_wpforms_tasks_meta` VALUES (1,'wpforms_process_entry_emails_meta_cleanup','Wzg2NDAwXQ==','2020-04-27 04:25:17');
INSERT INTO `wp_wpforms_tasks_meta` VALUES (2,'wpforms_admin_notifications_update','W10=','2020-04-27 04:25:17');
/*!40000 ALTER TABLE `wp_wpforms_tasks_meta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-27 13:00:24
