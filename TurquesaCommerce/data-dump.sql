-- MariaDB dump 10.19  Distrib 10.6.8-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: turquesa
-- ------------------------------------------------------
-- Server version	10.6.8-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `madmin_cache`
--

DROP TABLE IF EXISTS `madmin_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `madmin_cache` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire` datetime DEFAULT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_macac_expire` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `madmin_cache`
--

LOCK TABLES `madmin_cache` WRITE;
/*!40000 ALTER TABLE `madmin_cache` DISABLE KEYS */;
INSERT INTO `madmin_cache` VALUES ('02e940506ad5fad6e06cccd4b4d375a1',NULL,'\n<title>Home | Default</title>\n\n<meta property=\"og:type\" content=\"website\">\n<meta property=\"og:site_name\" content=\"Default\">\n<meta property=\"og:title\" content=\"Home\">\n<meta property=\"og:url\" content=\"http://127.0.0.1:8000?locale=en&currency=USD\">\n\n\n\n\n\n\n\n<link rel=\"stylesheet\" href=\"/vendor/shop/themes/default/slider.css?v=1\">\n<link rel=\"stylesheet\" href=\"/vendor/shop/themes/default/catalog-home.css?v=1\">\n\n<script defer src=\"/vendor/shop/themes/default/slider.js?v=1\"></script>\n<script defer src=\"/vendor/shop/themes/default/catalog-home.js?v=1\"></script>\n\n<meta name=\"application-name\" content=\"Aimeos\">\n'),('0eb28d26732df3cede8aa13f62da4938',NULL,'<section class=\"aimeos catalog-filter\" data-jsonurl=\"http://127.0.0.1:8000/jsonapi?locale=de&currency=EUR\">\n\n<nav class=\"container-xxl\">\n<h1>Filter</h1>\n\n<form method=\"GET\" action=\"/shop?locale=de&currency=EUR\">\n\n\n<section class=\"catalog-filter-search\">\n\n<h2>Suche</h2>\n<div class=\"search-lists\">\n<div class=\"input-group\">\n<input class=\"form-control value\" autocomplete=\"off\"\nname=\"f_search\"\ntitle=\"Suche\"\nplaceholder=\"Suche\"\nvalue=\"\"\ndata-url=\"/shop/suggest?f_search=_term_&locale=de&currency=EUR\"\ndata-hint=\"Bitte geben Sie mindestens drei Zeichen ein\"\n><!--\n--><button class=\"btn reset\" type=\"reset\" title=\"Zur├╝cksetzen\"><span class=\"symbol\"></span></button><!--\n--><button class=\"btn btn-search\" type=\"submit\" title=\"Suche\"></button>\n</div>\n</div>\n</section>\n\n</form>\n</nav>\n\n</section>\n'),('15786dff488711b1f7682e0526c0bda2',NULL,'<section class=\"aimeos catalog-list \"\ndata-jsonurl=\"http://127.0.0.1:8000/jsonapi\">\n\n<div class=\"container-xxl\">\n\n\n\n\n\n\n\n\n\n<div class=\"catalog-list-items product-list\" data-infiniteurl=\"\"\ndata-pinned=\"[]\">\n\n\n</div>\n\n\n\n\n\n</div>\n</section>\n'),('2185c7a71a0670feba4f61e68a174d05',NULL,'<section class=\"aimeos catalog-filter\" data-jsonurl=\"http://127.0.0.1:8000/jsonapi?locale=en&currency=USD\">\n\n<nav class=\"container-xxl\">\n<h1>Filter</h1>\n\n<form method=\"GET\" action=\"/shop?locale=en&currency=USD\">\n\n\n\n</form>\n</nav>\n\n</section>\n'),('2b6d67ef2031988df8dcfc204316bc15',NULL,'<section class=\"aimeos catalog-home swiffy-slider slider-item-nogap slider-nav-animation slider-nav-autoplay slider-nav-autopause\"\ndata-slider-nav-autoplay-interval=\"4000\" data-jsonurl=\"http://127.0.0.1:8000/jsonapi\">\n\n\n<div class=\"home-gallery home slider-container\">\n\n\n\n</div>\n\n<button type=\"button\" class=\"slider-nav\" aria-label=\"Go to previous\"></button>\n<button type=\"button\" class=\"slider-nav slider-nav-next\" aria-label=\"Go to next\"></button>\n\n\n</section>'),('331fac12d805cb447fa04915f7066c34',NULL,'<link rel=\"stylesheet\" href=\"/vendor/shop/themes/default/catalog-filter.css?v=1\">\n<script defer src=\"/vendor/shop/themes/default/catalog-filter.js?v=1\"></script>\n\n<script defer src=\"/shop/count?locale=en&currency=USD\"></script>\n'),('3fd705ecaa7f2fc245034fd308803adb',NULL,'<section class=\"aimeos catalog-filter\" data-jsonurl=\"http://127.0.0.1:8000/jsonapi\">\n\n<nav class=\"container-xxl\">\n<h1>Filter</h1>\n\n<form method=\"GET\" action=\"/shop\">\n\n\n\n</form>\n</nav>\n\n</section>\n'),('42a2f31f85bf02040388b49d02fe54c8',NULL,'<link rel=\"stylesheet\" href=\"/vendor/shop/themes/default/catalog-stage.css?v=1\">\n<script defer src=\"/vendor/shop/themes/default/catalog-stage.js?v=1\"></script>\n'),('45fb51e33534935d0fdd42f050372bf5',NULL,'<section class=\"aimeos catalog-home swiffy-slider slider-item-nogap slider-nav-animation slider-nav-autoplay slider-nav-autopause\"\ndata-slider-nav-autoplay-interval=\"4000\" data-jsonurl=\"http://127.0.0.1:8000/jsonapi?locale=de&currency=EUR\">\n\n\n<div class=\"home-gallery home slider-container\">\n\n\n\n</div>\n\n<button type=\"button\" class=\"slider-nav\" aria-label=\"Go to previous\"></button>\n<button type=\"button\" class=\"slider-nav slider-nav-next\" aria-label=\"Go to next\"></button>\n\n\n</section>'),('53e92658ed1ef16f7d7728a4730ae238',NULL,'\n<title>Home | Default</title>\n\n<meta property=\"og:type\" content=\"website\">\n<meta property=\"og:site_name\" content=\"Default\">\n<meta property=\"og:title\" content=\"Home\">\n<meta property=\"og:url\" content=\"http://127.0.0.1:8000\">\n\n\n\n\n\n\n\n<link rel=\"stylesheet\" href=\"/vendor/shop/themes/default/slider.css?v=1\">\n<link rel=\"stylesheet\" href=\"/vendor/shop/themes/default/catalog-home.css?v=1\">\n\n<script defer src=\"/vendor/shop/themes/default/slider.js?v=1\"></script>\n<script defer src=\"/vendor/shop/themes/default/catalog-home.js?v=1\"></script>\n\n<meta name=\"application-name\" content=\"Aimeos\">\n'),('5d46fc524f79ec717e434d72a972835f',NULL,'<section class=\"aimeos catalog-filter\" data-jsonurl=\"http://127.0.0.1:8000/jsonapi\">\n\n<nav class=\"container-xxl\">\n<h1>Filter</h1>\n\n<form method=\"GET\" action=\"/shop\">\n\n\n\n</form>\n</nav>\n\n</section>\n'),('63c6901e99929f8ea11b9c6ced1f10e2',NULL,'<section class=\"aimeos catalog-stage \"\ndata-jsonurl=\"http://127.0.0.1:8000/jsonapi\">\n\n\n<div class=\"catalog-stage-breadcrumb container-xxl\">\n<nav class=\"breadcrumb\">\n<span class=\"title\">You are here:</span>\n<ol>\n\n<li>\n<a href=\"/shop\">\nYour search result</a>\n</li>\n\n</ol>\n</nav>\n</div>\n\n</section>\n'),('64ba9f9b37c0edd714e2bbf949b0d164',NULL,'<section class=\"aimeos catalog-home swiffy-slider slider-item-nogap slider-nav-animation slider-nav-autoplay slider-nav-autopause\"\ndata-slider-nav-autoplay-interval=\"4000\" data-jsonurl=\"http://127.0.0.1:8000/jsonapi?locale=en&currency=USD\">\n\n\n<div class=\"home-gallery home slider-container\">\n\n\n\n</div>\n\n<button type=\"button\" class=\"slider-nav\" aria-label=\"Go to previous\"></button>\n<button type=\"button\" class=\"slider-nav slider-nav-next\" aria-label=\"Go to next\"></button>\n\n\n</section>'),('653d111d1b4b76a0e72e8a3e75d5030a',NULL,'<title>Our products | Default</title>\n<meta name=\"keywords\" content=\"Our products\">\n<meta name=\"description\" content=\"Our products\">\n\n\n\n\n\n\n<link rel=\"canonical\" href=\"http://127.0.0.1:8000/shop\">\n<meta name=\"application-name\" content=\"Aimeos\">\n\n\n<link rel=\"stylesheet\" href=\"/vendor/shop/themes/default/catalog-lists.css?v=1\">\n<script defer src=\"/vendor/shop/themes/default/catalog-lists.js?v=1\"></script>\n\n'),('8619a146ad09adc0148efb1336684fe9',NULL,'\n<title>Home | Default</title>\n\n<meta property=\"og:type\" content=\"website\">\n<meta property=\"og:site_name\" content=\"Default\">\n<meta property=\"og:title\" content=\"Home\">\n<meta property=\"og:url\" content=\"http://127.0.0.1:8000?locale=de&currency=EUR\">\n\n\n\n\n\n\n\n<link rel=\"stylesheet\" href=\"/vendor/shop/themes/default/slider.css?v=1\">\n<link rel=\"stylesheet\" href=\"/vendor/shop/themes/default/catalog-home.css?v=1\">\n\n<script defer src=\"/vendor/shop/themes/default/slider.js?v=1\"></script>\n<script defer src=\"/vendor/shop/themes/default/catalog-home.js?v=1\"></script>\n\n<meta name=\"application-name\" content=\"Aimeos\">\n'),('989a8b9e8fc94881d751173161a93151',NULL,'<section class=\"aimeos catalog-filter\" data-jsonurl=\"http://127.0.0.1:8000/jsonapi?locale=en&currency=USD\">\n\n<nav class=\"container-xxl\">\n<h1>Filter</h1>\n\n<form method=\"GET\" action=\"/shop?locale=en&currency=USD\">\n\n\n<section class=\"catalog-filter-search\">\n\n<h2>Search</h2>\n<div class=\"search-lists\">\n<div class=\"input-group\">\n<input class=\"form-control value\" autocomplete=\"off\"\nname=\"f_search\"\ntitle=\"Search\"\nplaceholder=\"Search\"\nvalue=\"\"\ndata-url=\"/shop/suggest?f_search=_term_&locale=en&currency=USD\"\ndata-hint=\"Please enter at least three characters\"\n><!--\n--><button class=\"btn reset\" type=\"reset\" title=\"Reset\"><span class=\"symbol\"></span></button><!--\n--><button class=\"btn btn-search\" type=\"submit\" title=\"Search\"></button>\n</div>\n</div>\n</section>\n\n</form>\n</nav>\n\n</section>\n'),('9935ea464b6e6ec14b5b58168383ce14',NULL,'<section class=\"aimeos catalog-filter\" data-jsonurl=\"http://127.0.0.1:8000/jsonapi?locale=de&currency=EUR\">\n\n<nav class=\"container-xxl\">\n<h1>Filter</h1>\n\n<form method=\"GET\" action=\"/shop?locale=de&currency=EUR\">\n\n\n\n</form>\n</nav>\n\n</section>\n'),('9a091549993e7bda40b5075fccd2976e',NULL,'<link rel=\"stylesheet\" href=\"/vendor/shop/themes/default/catalog-filter.css?v=1\">\n<script defer src=\"/vendor/shop/themes/default/catalog-filter.js?v=1\"></script>\n\n<script defer src=\"/shop/count?locale=de&currency=EUR\"></script>\n'),('ca1e67c9ac54544831341bf11d06f4e9',NULL,'<section class=\"aimeos catalog-filter\" data-jsonurl=\"http://127.0.0.1:8000/jsonapi\">\n\n<nav class=\"container-xxl\">\n<h1>Filter</h1>\n\n<form method=\"GET\" action=\"/shop\">\n\n\n\n</form>\n</nav>\n\n</section>\n'),('dbed2ff9523403f721d2ec6ef716cf2e',NULL,'<section class=\"aimeos catalog-filter\" data-jsonurl=\"http://127.0.0.1:8000/jsonapi\">\n\n<nav class=\"container-xxl\">\n<h1>Filter</h1>\n\n<form method=\"GET\" action=\"/shop\">\n\n\n<section class=\"catalog-filter-search\">\n\n<h2>Search</h2>\n<div class=\"search-lists\">\n<div class=\"input-group\">\n<input class=\"form-control value\" autocomplete=\"off\"\nname=\"f_search\"\ntitle=\"Search\"\nplaceholder=\"Search\"\nvalue=\"\"\ndata-url=\"/shop/suggest?f_search=_term_\"\ndata-hint=\"Please enter at least three characters\"\n><!--\n--><button class=\"btn reset\" type=\"reset\" title=\"Reset\"><span class=\"symbol\"></span></button><!--\n--><button class=\"btn btn-search\" type=\"submit\" title=\"Search\"></button>\n</div>\n</div>\n</section>\n\n</form>\n</nav>\n\n</section>\n'),('ea3c1f441856c7b049d33cd76463d465',NULL,'<section class=\"aimeos catalog-filter\" data-jsonurl=\"http://127.0.0.1:8000/jsonapi\">\n\n<nav class=\"container-xxl\">\n<h1>Filter</h1>\n\n<form method=\"GET\" action=\"/shop\">\n\n\n<section class=\"catalog-filter-search\">\n\n<h2>Search</h2>\n<div class=\"search-lists\">\n<div class=\"input-group\">\n<input class=\"form-control value\" autocomplete=\"off\"\nname=\"f_search\"\ntitle=\"Search\"\nplaceholder=\"Search\"\nvalue=\"\"\ndata-url=\"/shop/suggest?f_search=_term_\"\ndata-hint=\"Please enter at least three characters\"\n><!--\n--><button class=\"btn reset\" type=\"reset\" title=\"Reset\"><span class=\"symbol\"></span></button><!--\n--><button class=\"btn btn-search\" type=\"submit\" title=\"Search\"></button>\n</div>\n</div>\n</section>\n\n</form>\n</nav>\n\n</section>\n'),('fe7089a05690729e519d45fa119c790b',NULL,'<link rel=\"stylesheet\" href=\"/vendor/shop/themes/default/catalog-filter.css?v=1\">\n<script defer src=\"/vendor/shop/themes/default/catalog-filter.js?v=1\"></script>\n\n<script defer src=\"/shop/count\"></script>\n'),('fe93b3afe87cc6fc1a86230cbb537a4e',NULL,'<link rel=\"stylesheet\" href=\"/vendor/shop/themes/default/catalog-filter.css?v=1\">\n<script defer src=\"/vendor/shop/themes/default/catalog-filter.js?v=1\"></script>\n\n<script defer src=\"/shop/count\"></script>\n'),('ff5f758944a38383baa94995f2fa19c1',NULL,'<section class=\"aimeos catalog-filter\" data-jsonurl=\"http://127.0.0.1:8000/jsonapi\">\n\n<nav class=\"container-xxl\">\n<h1>Filter</h1>\n\n<form method=\"GET\" action=\"/shop\">\n\n\n\n</form>\n</nav>\n\n</section>\n');
/*!40000 ALTER TABLE `madmin_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `madmin_cache_tag`
--

DROP TABLE IF EXISTS `madmin_cache_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `madmin_cache_tag` (
  `tid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `unq_macacta_tid_tname` (`tid`,`tname`),
  KEY `fk_macacta_tid` (`tid`),
  CONSTRAINT `fk_macacta_tid` FOREIGN KEY (`tid`) REFERENCES `madmin_cache` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `madmin_cache_tag`
--

LOCK TABLES `madmin_cache_tag` WRITE;
/*!40000 ALTER TABLE `madmin_cache_tag` DISABLE KEYS */;
INSERT INTO `madmin_cache_tag` VALUES ('02e940506ad5fad6e06cccd4b4d375a1','catalog'),('02e940506ad5fad6e06cccd4b4d375a1','product'),('15786dff488711b1f7682e0526c0bda2','product'),('2185c7a71a0670feba4f61e68a174d05','catalog'),('2b6d67ef2031988df8dcfc204316bc15','catalog'),('2b6d67ef2031988df8dcfc204316bc15','product'),('331fac12d805cb447fa04915f7066c34','catalog'),('45fb51e33534935d0fdd42f050372bf5','catalog'),('45fb51e33534935d0fdd42f050372bf5','product'),('53e92658ed1ef16f7d7728a4730ae238','catalog'),('53e92658ed1ef16f7d7728a4730ae238','product'),('5d46fc524f79ec717e434d72a972835f','catalog'),('64ba9f9b37c0edd714e2bbf949b0d164','catalog'),('64ba9f9b37c0edd714e2bbf949b0d164','product'),('653d111d1b4b76a0e72e8a3e75d5030a','product'),('8619a146ad09adc0148efb1336684fe9','catalog'),('8619a146ad09adc0148efb1336684fe9','product'),('9935ea464b6e6ec14b5b58168383ce14','catalog'),('9a091549993e7bda40b5075fccd2976e','catalog'),('ca1e67c9ac54544831341bf11d06f4e9','supplier'),('ea3c1f441856c7b049d33cd76463d465','attribute'),('ea3c1f441856c7b049d33cd76463d465','supplier'),('fe7089a05690729e519d45fa119c790b','catalog'),('fe93b3afe87cc6fc1a86230cbb537a4e','attribute'),('fe93b3afe87cc6fc1a86230cbb537a4e','supplier'),('ff5f758944a38383baa94995f2fa19c1','attribute');
/*!40000 ALTER TABLE `madmin_cache_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `madmin_job`
--

DROP TABLE IF EXISTS `madmin_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `madmin_job` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_majob_sid_ctime` (`siteid`,`ctime`),
  KEY `idx_majob_sid_status` (`siteid`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `madmin_job`
--

LOCK TABLES `madmin_job` WRITE;
/*!40000 ALTER TABLE `madmin_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `madmin_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `madmin_log`
--

DROP TABLE IF EXISTS `madmin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `madmin_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timestamp` datetime NOT NULL,
  `priority` smallint(6) NOT NULL DEFAULT 3,
  `facility` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `request` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_malog_sid_time_facility_prio` (`siteid`,`timestamp`,`facility`,`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `madmin_log`
--

LOCK TABLES `madmin_log` WRITE;
/*!40000 ALTER TABLE `madmin_log` DISABLE KEYS */;
INSERT INTO `madmin_log` VALUES (1,'1.','2022-06-27 12:01:52',3,'admin/jqadm','d4d2f81147c6c4d85d8075374bf4136e','SQLSTATE[23000]: Integrity constraint violation: 1062 Duplicate entry \'1-en-EUR\' for key \'unq_msloc_sid_lang_curr\': \n				INSERT INTO \"mshop_locale\" ( \n					\"langid\", \"currencyid\", \"pos\", \"status\",\n					\"mtime\", \"editor\", \"site_id\", \"siteid\", \"ctime\"\n				) VALUES ( \n					?, ?, ?, ?, ?, ?, ?, ?, ?\n				)\n			[\"en\",\"EUR\",0,0,\"2022-06-27 12:01:52\",\"lucas@email.com\",1,\"1.\",\"2022-06-27 12:01:52\"]\r\n#0 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Locale\\Manager\\Standard.php(388): Aimeos\\Base\\DB\\Statement\\DBAL\\Prepared->execute()\n#1 [internal function]: Aimeos\\MShop\\Locale\\Manager\\Standard->saveItem(Object(Aimeos\\MShop\\Locale\\Item\\Standard), true)\n#2 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Common\\Manager\\Decorator\\Base.php(51): call_user_func_array(Array, Array)\n#3 [internal function]: Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->__call(\'saveItem\', Array)\n#4 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Common\\Manager\\Decorator\\Base.php(51): call_user_func_array(Array, Array)\n#5 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Common\\Manager\\Base.php(108): Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->__call(\'saveItem\', Array)\n#6 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Common\\Manager\\Decorator\\Base.php(189): Aimeos\\MShop\\Common\\Manager\\Base->save(Object(Aimeos\\MShop\\Locale\\Item\\Standard), true)\n#7 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Common\\Manager\\Decorator\\Base.php(189): Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->save(Object(Aimeos\\MShop\\Locale\\Item\\Standard), true)\n#8 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\ai-admin-jqadm\\src\\Admin\\JQAdm\\Locale\\Standard.php(208): Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->save(Object(Aimeos\\MShop\\Locale\\Item\\Standard))\n#9 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\ai-admin-jqadm\\src\\Admin\\JQAdm\\Common\\Decorator\\Base.php(140): Aimeos\\Admin\\JQAdm\\Locale\\Standard->save()\n#10 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-laravel\\src\\Aimeos\\Shop\\Controller\\JqadmController.php(193): Aimeos\\Admin\\JQAdm\\Common\\Decorator\\Base->save()\n#11 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Aimeos\\Shop\\Controller\\JqadmController->saveAction(\'default\', \'locale\')\n#12 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'saveAction\', Array)\n#13 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(261): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\JqadmController), \'saveAction\')\n#14 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\Route->runController()\n#15 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(725): Illuminate\\Routing\\Route->run()\n#16 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Auth\\Middleware\\Authenticate.php(44): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Auth\\Middleware\\Authenticate->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#27 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(726): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#34 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#35 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(667): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#36 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(656): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#37 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(167): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#38 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\livewire\\livewire\\src\\DisableBrowserCache.php(19): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Livewire\\DisableBrowserCache->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull.php(31): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TrimStrings.php(40): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\TrimStrings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Http\\Middleware\\HandleCors.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Http\\Middleware\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#53 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Http\\Middleware\\TrustProxies.php(39): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#54 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Http\\Middleware\\TrustProxies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#55 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#56 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(142): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#57 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(111): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#58 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\public\\index.php(52): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#59 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\resources\\server.php(16): require_once(\'C:\\\\Users\\\\lswol\\\\...\')\n#60 {main}'),(2,'1.','2022-06-27 12:03:43',3,'admin/jqadm','89b07c0eca66bed89ea2bb110bb49d1a','SQLSTATE[23000]: Integrity constraint violation: 1062 Duplicate entry \'BRL\' for key \'PRIMARY\': \n					INSERT INTO \"mshop_locale_currency\" ( \n						\"label\", \"status\", \"mtime\", \"editor\", \"id\", \"ctime\"\n					) VALUES ( \n						?, ?, ?, ?, ?, ?\n					)\n				[\"Brazilian Real\",1,\"2022-06-27 12:03:43\",\"lucas@email.com\",\"BRL\",\"2022-06-27 12:03:43\"]\r\n#0 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Locale\\Manager\\Currency\\Standard.php(233): Aimeos\\Base\\DB\\Statement\\DBAL\\Prepared->execute()\n#1 [internal function]: Aimeos\\MShop\\Locale\\Manager\\Currency\\Standard->saveItem(Object(Aimeos\\MShop\\Locale\\Item\\Currency\\Standard), true)\n#2 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Common\\Manager\\Decorator\\Base.php(51): call_user_func_array(Array, Array)\n#3 [internal function]: Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->__call(\'saveItem\', Array)\n#4 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Common\\Manager\\Decorator\\Base.php(51): call_user_func_array(Array, Array)\n#5 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Common\\Manager\\Base.php(108): Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->__call(\'saveItem\', Array)\n#6 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Common\\Manager\\Decorator\\Base.php(189): Aimeos\\MShop\\Common\\Manager\\Base->save(Object(Aimeos\\MShop\\Locale\\Item\\Currency\\Standard), true)\n#7 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Common\\Manager\\Decorator\\Base.php(189): Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->save(Object(Aimeos\\MShop\\Locale\\Item\\Currency\\Standard), true)\n#8 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\ai-admin-jqadm\\src\\Admin\\JQAdm\\Locale\\Currency\\Standard.php(192): Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->save(Object(Aimeos\\MShop\\Locale\\Item\\Currency\\Standard))\n#9 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\ai-admin-jqadm\\src\\Admin\\JQAdm\\Common\\Decorator\\Base.php(140): Aimeos\\Admin\\JQAdm\\Locale\\Currency\\Standard->save()\n#10 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-laravel\\src\\Aimeos\\Shop\\Controller\\JqadmController.php(193): Aimeos\\Admin\\JQAdm\\Common\\Decorator\\Base->save()\n#11 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Aimeos\\Shop\\Controller\\JqadmController->saveAction(\'default\', \'locale/currency\')\n#12 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'saveAction\', Array)\n#13 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(261): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\JqadmController), \'saveAction\')\n#14 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\Route->runController()\n#15 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(725): Illuminate\\Routing\\Route->run()\n#16 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Auth\\Middleware\\Authenticate.php(44): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Auth\\Middleware\\Authenticate->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#27 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(726): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#34 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#35 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(667): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#36 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(656): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#37 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(167): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#38 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\livewire\\livewire\\src\\DisableBrowserCache.php(19): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Livewire\\DisableBrowserCache->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull.php(31): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TrimStrings.php(40): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\TrimStrings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Http\\Middleware\\HandleCors.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Http\\Middleware\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#53 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Http\\Middleware\\TrustProxies.php(39): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#54 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Http\\Middleware\\TrustProxies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#55 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#56 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(142): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#57 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(111): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#58 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\public\\index.php(52): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#59 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\resources\\server.php(16): require_once(\'C:\\\\Users\\\\lswol\\\\...\')\n#60 {main}'),(3,'1.','2022-06-27 12:04:28',3,'admin/jqadm','0dc1fdf4c5e89900d1915e55cc698805','SQLSTATE[23000]: Integrity constraint violation: 1062 Duplicate entry \'CNY\' for key \'PRIMARY\': \n					INSERT INTO \"mshop_locale_currency\" ( \n						\"label\", \"status\", \"mtime\", \"editor\", \"id\", \"ctime\"\n					) VALUES ( \n						?, ?, ?, ?, ?, ?\n					)\n				[\"Chinese Yuan Renminbi\",0,\"2022-06-27 12:04:28\",\"lucas@email.com\",\"CNY\",\"2022-06-27 12:04:28\"]\r\n#0 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Locale\\Manager\\Currency\\Standard.php(233): Aimeos\\Base\\DB\\Statement\\DBAL\\Prepared->execute()\n#1 [internal function]: Aimeos\\MShop\\Locale\\Manager\\Currency\\Standard->saveItem(Object(Aimeos\\MShop\\Locale\\Item\\Currency\\Standard), true)\n#2 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Common\\Manager\\Decorator\\Base.php(51): call_user_func_array(Array, Array)\n#3 [internal function]: Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->__call(\'saveItem\', Array)\n#4 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Common\\Manager\\Decorator\\Base.php(51): call_user_func_array(Array, Array)\n#5 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Common\\Manager\\Base.php(108): Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->__call(\'saveItem\', Array)\n#6 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Common\\Manager\\Decorator\\Base.php(189): Aimeos\\MShop\\Common\\Manager\\Base->save(Object(Aimeos\\MShop\\Locale\\Item\\Currency\\Standard), true)\n#7 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Common\\Manager\\Decorator\\Base.php(189): Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->save(Object(Aimeos\\MShop\\Locale\\Item\\Currency\\Standard), true)\n#8 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\ai-admin-jqadm\\src\\Admin\\JQAdm\\Locale\\Currency\\Standard.php(192): Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->save(Object(Aimeos\\MShop\\Locale\\Item\\Currency\\Standard))\n#9 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\ai-admin-jqadm\\src\\Admin\\JQAdm\\Common\\Decorator\\Base.php(140): Aimeos\\Admin\\JQAdm\\Locale\\Currency\\Standard->save()\n#10 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-laravel\\src\\Aimeos\\Shop\\Controller\\JqadmController.php(193): Aimeos\\Admin\\JQAdm\\Common\\Decorator\\Base->save()\n#11 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Aimeos\\Shop\\Controller\\JqadmController->saveAction(\'default\', \'locale/currency\')\n#12 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'saveAction\', Array)\n#13 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(261): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\JqadmController), \'saveAction\')\n#14 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\Route->runController()\n#15 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(725): Illuminate\\Routing\\Route->run()\n#16 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Auth\\Middleware\\Authenticate.php(44): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Auth\\Middleware\\Authenticate->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#27 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(726): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#34 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#35 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(667): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#36 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(656): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#37 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(167): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#38 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\livewire\\livewire\\src\\DisableBrowserCache.php(19): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Livewire\\DisableBrowserCache->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull.php(31): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TrimStrings.php(40): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\TrimStrings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Http\\Middleware\\HandleCors.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Http\\Middleware\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#53 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Http\\Middleware\\TrustProxies.php(39): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#54 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Http\\Middleware\\TrustProxies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#55 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#56 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(142): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#57 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(111): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#58 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\public\\index.php(52): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#59 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\resources\\server.php(16): require_once(\'C:\\\\Users\\\\lswol\\\\...\')\n#60 {main}'),(4,'1.','2022-06-27 12:04:33',3,'admin/jqadm','2dcef6c464cf602dcaca73fa58c33b4c','SQLSTATE[23000]: Integrity constraint violation: 1062 Duplicate entry \'CNY\' for key \'PRIMARY\': \n					INSERT INTO \"mshop_locale_currency\" ( \n						\"label\", \"status\", \"mtime\", \"editor\", \"id\", \"ctime\"\n					) VALUES ( \n						?, ?, ?, ?, ?, ?\n					)\n				[\"Chinese Yuan Renminbi\",0,\"2022-06-27 12:04:33\",\"lucas@email.com\",\"CNY\",\"2022-06-27 12:04:33\"]\r\n#0 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Locale\\Manager\\Currency\\Standard.php(233): Aimeos\\Base\\DB\\Statement\\DBAL\\Prepared->execute()\n#1 [internal function]: Aimeos\\MShop\\Locale\\Manager\\Currency\\Standard->saveItem(Object(Aimeos\\MShop\\Locale\\Item\\Currency\\Standard), true)\n#2 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Common\\Manager\\Decorator\\Base.php(51): call_user_func_array(Array, Array)\n#3 [internal function]: Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->__call(\'saveItem\', Array)\n#4 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Common\\Manager\\Decorator\\Base.php(51): call_user_func_array(Array, Array)\n#5 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Common\\Manager\\Base.php(108): Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->__call(\'saveItem\', Array)\n#6 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Common\\Manager\\Decorator\\Base.php(189): Aimeos\\MShop\\Common\\Manager\\Base->save(Object(Aimeos\\MShop\\Locale\\Item\\Currency\\Standard), true)\n#7 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Common\\Manager\\Decorator\\Base.php(189): Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->save(Object(Aimeos\\MShop\\Locale\\Item\\Currency\\Standard), true)\n#8 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\ai-admin-jqadm\\src\\Admin\\JQAdm\\Locale\\Currency\\Standard.php(192): Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->save(Object(Aimeos\\MShop\\Locale\\Item\\Currency\\Standard))\n#9 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\ai-admin-jqadm\\src\\Admin\\JQAdm\\Common\\Decorator\\Base.php(140): Aimeos\\Admin\\JQAdm\\Locale\\Currency\\Standard->save()\n#10 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-laravel\\src\\Aimeos\\Shop\\Controller\\JqadmController.php(193): Aimeos\\Admin\\JQAdm\\Common\\Decorator\\Base->save()\n#11 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Aimeos\\Shop\\Controller\\JqadmController->saveAction(\'default\', \'locale/currency\')\n#12 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'saveAction\', Array)\n#13 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(261): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\JqadmController), \'saveAction\')\n#14 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\Route->runController()\n#15 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(725): Illuminate\\Routing\\Route->run()\n#16 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Auth\\Middleware\\Authenticate.php(44): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Auth\\Middleware\\Authenticate->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#27 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(726): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#34 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#35 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(667): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#36 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(656): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#37 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(167): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#38 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\livewire\\livewire\\src\\DisableBrowserCache.php(19): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Livewire\\DisableBrowserCache->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull.php(31): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TrimStrings.php(40): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\TrimStrings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Http\\Middleware\\HandleCors.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Http\\Middleware\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#53 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Http\\Middleware\\TrustProxies.php(39): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#54 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Http\\Middleware\\TrustProxies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#55 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#56 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(142): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#57 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(111): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#58 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\public\\index.php(52): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#59 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\resources\\server.php(16): require_once(\'C:\\\\Users\\\\lswol\\\\...\')\n#60 {main}'),(5,'1.','2022-06-27 12:06:18',3,'admin/jqadm','680d16d7ffb22e8be70d89effded2558','SQLSTATE[23000]: Integrity constraint violation: 1062 Duplicate entry \'ar\' for key \'PRIMARY\': \n					INSERT INTO \"mshop_locale_language\" ( \n						\"label\", \"status\", \"mtime\", \"editor\", \"id\", \"ctime\"\n					) VALUES ( \n						?, ?, ?, ?, ?, ?\n					)\n				[\"Arabic\",0,\"2022-06-27 12:06:18\",\"lucas@email.com\",\"ar\",\"2022-06-27 12:06:18\"]\r\n#0 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Locale\\Manager\\Language\\Standard.php(232): Aimeos\\Base\\DB\\Statement\\DBAL\\Prepared->execute()\n#1 [internal function]: Aimeos\\MShop\\Locale\\Manager\\Language\\Standard->saveItem(Object(Aimeos\\MShop\\Locale\\Item\\Language\\Standard), true)\n#2 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Common\\Manager\\Decorator\\Base.php(51): call_user_func_array(Array, Array)\n#3 [internal function]: Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->__call(\'saveItem\', Array)\n#4 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Common\\Manager\\Decorator\\Base.php(51): call_user_func_array(Array, Array)\n#5 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Common\\Manager\\Base.php(108): Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->__call(\'saveItem\', Array)\n#6 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Common\\Manager\\Decorator\\Base.php(189): Aimeos\\MShop\\Common\\Manager\\Base->save(Object(Aimeos\\MShop\\Locale\\Item\\Language\\Standard), true)\n#7 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Common\\Manager\\Decorator\\Base.php(189): Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->save(Object(Aimeos\\MShop\\Locale\\Item\\Language\\Standard), true)\n#8 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\ai-admin-jqadm\\src\\Admin\\JQAdm\\Locale\\Language\\Standard.php(192): Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->save(Object(Aimeos\\MShop\\Locale\\Item\\Language\\Standard))\n#9 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\ai-admin-jqadm\\src\\Admin\\JQAdm\\Common\\Decorator\\Base.php(140): Aimeos\\Admin\\JQAdm\\Locale\\Language\\Standard->save()\n#10 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-laravel\\src\\Aimeos\\Shop\\Controller\\JqadmController.php(193): Aimeos\\Admin\\JQAdm\\Common\\Decorator\\Base->save()\n#11 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Aimeos\\Shop\\Controller\\JqadmController->saveAction(\'default\', \'locale/language\')\n#12 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'saveAction\', Array)\n#13 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(261): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\JqadmController), \'saveAction\')\n#14 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\Route->runController()\n#15 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(725): Illuminate\\Routing\\Route->run()\n#16 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Auth\\Middleware\\Authenticate.php(44): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Auth\\Middleware\\Authenticate->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#27 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(726): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#34 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#35 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(667): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#36 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(656): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#37 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(167): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#38 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\livewire\\livewire\\src\\DisableBrowserCache.php(19): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Livewire\\DisableBrowserCache->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull.php(31): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TrimStrings.php(40): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\TrimStrings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Http\\Middleware\\HandleCors.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Http\\Middleware\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#53 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Http\\Middleware\\TrustProxies.php(39): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#54 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Http\\Middleware\\TrustProxies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#55 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#56 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(142): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#57 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(111): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#58 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\public\\index.php(52): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#59 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\resources\\server.php(16): require_once(\'C:\\\\Users\\\\lswol\\\\...\')\n#60 {main}'),(6,'1.','2022-06-27 12:06:25',3,'admin/jqadm','65148851ddf8c7b2428087b8e34a295b','SQLSTATE[23000]: Integrity constraint violation: 1062 Duplicate entry \'ar\' for key \'PRIMARY\': \n					INSERT INTO \"mshop_locale_language\" ( \n						\"label\", \"status\", \"mtime\", \"editor\", \"id\", \"ctime\"\n					) VALUES ( \n						?, ?, ?, ?, ?, ?\n					)\n				[\"Arabic\",0,\"2022-06-27 12:06:25\",\"lucas@email.com\",\"ar\",\"2022-06-27 12:06:25\"]\r\n#0 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Locale\\Manager\\Language\\Standard.php(232): Aimeos\\Base\\DB\\Statement\\DBAL\\Prepared->execute()\n#1 [internal function]: Aimeos\\MShop\\Locale\\Manager\\Language\\Standard->saveItem(Object(Aimeos\\MShop\\Locale\\Item\\Language\\Standard), true)\n#2 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Common\\Manager\\Decorator\\Base.php(51): call_user_func_array(Array, Array)\n#3 [internal function]: Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->__call(\'saveItem\', Array)\n#4 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Common\\Manager\\Decorator\\Base.php(51): call_user_func_array(Array, Array)\n#5 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Common\\Manager\\Base.php(108): Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->__call(\'saveItem\', Array)\n#6 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Common\\Manager\\Decorator\\Base.php(189): Aimeos\\MShop\\Common\\Manager\\Base->save(Object(Aimeos\\MShop\\Locale\\Item\\Language\\Standard), true)\n#7 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-core\\src\\MShop\\Common\\Manager\\Decorator\\Base.php(189): Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->save(Object(Aimeos\\MShop\\Locale\\Item\\Language\\Standard), true)\n#8 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\ai-admin-jqadm\\src\\Admin\\JQAdm\\Locale\\Language\\Standard.php(192): Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->save(Object(Aimeos\\MShop\\Locale\\Item\\Language\\Standard))\n#9 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\ai-admin-jqadm\\src\\Admin\\JQAdm\\Common\\Decorator\\Base.php(140): Aimeos\\Admin\\JQAdm\\Locale\\Language\\Standard->save()\n#10 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-laravel\\src\\Aimeos\\Shop\\Controller\\JqadmController.php(193): Aimeos\\Admin\\JQAdm\\Common\\Decorator\\Base->save()\n#11 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Aimeos\\Shop\\Controller\\JqadmController->saveAction(\'default\', \'locale/language\')\n#12 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'saveAction\', Array)\n#13 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(261): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\JqadmController), \'saveAction\')\n#14 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\Route->runController()\n#15 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(725): Illuminate\\Routing\\Route->run()\n#16 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Auth\\Middleware\\Authenticate.php(44): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Auth\\Middleware\\Authenticate->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#27 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(726): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#34 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#35 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(667): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#36 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(656): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#37 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(167): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#38 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\livewire\\livewire\\src\\DisableBrowserCache.php(19): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Livewire\\DisableBrowserCache->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull.php(31): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TrimStrings.php(40): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\TrimStrings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Http\\Middleware\\HandleCors.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Http\\Middleware\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#53 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Http\\Middleware\\TrustProxies.php(39): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#54 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Http\\Middleware\\TrustProxies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#55 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#56 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(142): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#57 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(111): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#58 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\public\\index.php(52): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#59 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\resources\\server.php(16): require_once(\'C:\\\\Users\\\\lswol\\\\...\')\n#60 {main}'),(7,'1.','2022-06-27 12:09:00',3,'admin/jqadm','300487dd31ce6d22af0145dcd684ab38','Required parameter \"id\" is missing\r\n\r\n#0 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\ai-admin-jqadm\\src\\Admin\\JQAdm\\Common\\Decorator\\Base.php(96): Aimeos\\Admin\\JQAdm\\Locale\\Language\\Standard->delete()\n#1 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\aimeos\\aimeos-laravel\\src\\Aimeos\\Shop\\Controller\\JqadmController.php(130): Aimeos\\Admin\\JQAdm\\Common\\Decorator\\Base->delete()\n#2 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Aimeos\\Shop\\Controller\\JqadmController->deleteAction(\'default\', \'locale/language\')\n#3 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'deleteAction\', Array)\n#4 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(261): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\JqadmController), \'deleteAction\')\n#5 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\Route->runController()\n#6 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(725): Illuminate\\Routing\\Route->run()\n#7 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#8 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#9 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#10 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Auth\\Middleware\\Authenticate.php(44): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#11 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Auth\\Middleware\\Authenticate->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#12 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#14 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#18 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(726): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#26 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(667): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#27 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(656): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#28 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(167): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#29 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\livewire\\livewire\\src\\DisableBrowserCache.php(19): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Livewire\\DisableBrowserCache->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull.php(31): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#35 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TrimStrings.php(40): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\TrimStrings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Http\\Middleware\\HandleCors.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Http\\Middleware\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Http\\Middleware\\TrustProxies.php(39): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Http\\Middleware\\TrustProxies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(142): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#48 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(111): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#49 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\public\\index.php(52): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#50 C:\\Users\\lswol\\Desktop\\beacademy\\gitegithub\\beacademy-devstart-turquesa\\TurquesaCommerce\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\resources\\server.php(16): require_once(\'C:\\\\Users\\\\lswol\\\\...\')\n#51 {main}');
/*!40000 ALTER TABLE `madmin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `madmin_queue`
--

DROP TABLE IF EXISTS `madmin_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `madmin_queue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cname` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtime` datetime NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_maque_queue_rtime_cname` (`queue`,`rtime`,`cname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `madmin_queue`
--

LOCK TABLES `madmin_queue` WRITE;
/*!40000 ALTER TABLE `madmin_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `madmin_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(4,'2018_02_26_213828_create_gears_tables',1),(5,'2019_08_19_000000_create_failed_jobs_table',1),(6,'2019_12_14_000001_create_personal_access_tokens_table',1),(7,'2022_06_25_044425_create_sessions_table',1),(8,'2020_05_21_100000_create_teams_table',2),(9,'2020_05_21_200000_create_team_user_table',2),(10,'2020_05_21_300000_create_team_invitations_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_attribute`
--

DROP TABLE IF EXISTS `mshop_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msatt_dom_sid_type_code` (`domain`,`siteid`,`type`,`code`),
  KEY `idx_msatt_dom_sid_stat_typ_pos` (`domain`,`siteid`,`status`,`type`,`pos`),
  KEY `idx_msatt_sid_status` (`siteid`,`status`),
  KEY `idx_msatt_sid_label` (`siteid`,`label`),
  KEY `idx_msatt_sid_code` (`siteid`,`code`),
  KEY `idx_msatt_sid_type` (`siteid`,`type`),
  KEY `idx_msatt_key_sid` (`key`,`siteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_attribute`
--

LOCK TABLES `mshop_attribute` WRITE;
/*!40000 ALTER TABLE `mshop_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_attribute_list`
--

DROP TABLE IF EXISTS `mshop_attribute_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_attribute_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int(11) NOT NULL,
  `key` varchar(134) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msattli_pid_dm_sid_ty_rid` (`parentid`,`domain`,`siteid`,`type`,`refid`),
  KEY `idx_msattli_key_sid` (`key`,`siteid`),
  KEY `fk_msattli_pid` (`parentid`),
  CONSTRAINT `fk_msattli_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_attribute` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_attribute_list`
--

LOCK TABLES `mshop_attribute_list` WRITE;
/*!40000 ALTER TABLE `mshop_attribute_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_attribute_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_attribute_list_type`
--

DROP TABLE IF EXISTS `mshop_attribute_list_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_attribute_list_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msattlity_sid_dom_code` (`siteid`,`domain`,`code`),
  KEY `idx_msattlity_sid_status_pos` (`siteid`,`status`,`pos`),
  KEY `idx_msattlity_sid_label` (`siteid`,`label`),
  KEY `idx_msattlity_sid_code` (`siteid`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_attribute_list_type`
--

LOCK TABLES `mshop_attribute_list_type` WRITE;
/*!40000 ALTER TABLE `mshop_attribute_list_type` DISABLE KEYS */;
INSERT INTO `mshop_attribute_list_type` VALUES (1,'1.','media','default','Standard',0,1,'2022-06-27 10:36:22','2022-06-27 10:36:22','core:setup'),(2,'1.','price','default','Standard',0,1,'2022-06-27 10:36:22','2022-06-27 10:36:22','core:setup'),(3,'1.','text','default','Standard',0,1,'2022-06-27 10:36:22','2022-06-27 10:36:22','core:setup'),(4,'1.','upload','default','Standard',0,1,'2022-06-27 10:36:22','2022-06-27 10:36:22','core:setup');
/*!40000 ALTER TABLE `mshop_attribute_list_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_attribute_property`
--

DROP TABLE IF EXISTS `mshop_attribute_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_attribute_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msattpr_sid_ty_lid_value` (`parentid`,`siteid`,`type`,`langid`,`value`),
  KEY `fk_msattpr_key_sid` (`key`,`siteid`),
  KEY `fk_msattpr_pid` (`parentid`),
  CONSTRAINT `fk_msattpr_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_attribute` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_attribute_property`
--

LOCK TABLES `mshop_attribute_property` WRITE;
/*!40000 ALTER TABLE `mshop_attribute_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_attribute_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_attribute_property_type`
--

DROP TABLE IF EXISTS `mshop_attribute_property_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_attribute_property_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msattprty_sid_dom_code` (`siteid`,`domain`,`code`),
  KEY `idx_msattprty_sid_status_pos` (`siteid`,`status`,`pos`),
  KEY `idx_msattprty_sid_label` (`siteid`,`label`),
  KEY `idx_msattprty_sid_code` (`siteid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_attribute_property_type`
--

LOCK TABLES `mshop_attribute_property_type` WRITE;
/*!40000 ALTER TABLE `mshop_attribute_property_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_attribute_property_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_attribute_type`
--

DROP TABLE IF EXISTS `mshop_attribute_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_attribute_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msattty_sid_dom_code` (`siteid`,`domain`,`code`),
  KEY `idx_msattty_sid_status_pos` (`siteid`,`status`,`pos`),
  KEY `idx_msattty_sid_label` (`siteid`,`label`),
  KEY `idx_msattty_sid_code` (`siteid`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_attribute_type`
--

LOCK TABLES `mshop_attribute_type` WRITE;
/*!40000 ALTER TABLE `mshop_attribute_type` DISABLE KEYS */;
INSERT INTO `mshop_attribute_type` VALUES (1,'1.','product','download','Download',0,1,'2022-06-27 10:36:22','2022-06-27 10:36:22','core:setup'),(2,'1.','product','price','Price',0,1,'2022-06-27 10:36:22','2022-06-27 10:36:22','core:setup'),(3,'1.','product','text','Text',0,1,'2022-06-27 10:36:22','2022-06-27 10:36:22','core:setup'),(4,'1.','product','date','Date',0,1,'2022-06-27 10:36:22','2022-06-27 10:36:22','core:setup'),(5,'1.','product','interval','Interval',0,1,'2022-06-27 10:36:22','2022-06-27 10:36:22','core:setup'),(6,'1.','product','customer/group','Customer group ID',0,1,'2022-06-27 10:36:22','2022-06-27 10:36:22','core:setup');
/*!40000 ALTER TABLE `mshop_attribute_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_catalog`
--

DROP TABLE IF EXISTS `mshop_catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_catalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int(11) DEFAULT NULL,
  `level` smallint(6) NOT NULL DEFAULT 0,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nleft` int(11) NOT NULL,
  `nright` int(11) NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_mscat_sid_code` (`siteid`,`code`),
  KEY `idx_mscat_sid_nlt_nrt_lvl_pid` (`siteid`,`nleft`,`nright`,`level`,`parentid`),
  KEY `idx_mscat_sid_status` (`siteid`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_catalog`
--

LOCK TABLES `mshop_catalog` WRITE;
/*!40000 ALTER TABLE `mshop_catalog` DISABLE KEYS */;
INSERT INTO `mshop_catalog` VALUES (1,'1.',0,0,'home','Home','Home','[]',1,2,'',1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup');
/*!40000 ALTER TABLE `mshop_catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_catalog_list`
--

DROP TABLE IF EXISTS `mshop_catalog_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_catalog_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int(11) NOT NULL,
  `key` varchar(134) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_mscatli_pid_dm_sid_ty_rid` (`parentid`,`domain`,`siteid`,`type`,`refid`),
  KEY `idx_mscatli_pid_dm_sid_pos_rid` (`parentid`,`domain`,`siteid`,`pos`,`refid`),
  KEY `idx_mscatli_rid_dom_sid_ty` (`refid`,`domain`,`siteid`,`type`),
  KEY `idx_mscatli_key_sid` (`key`,`siteid`),
  KEY `fk_mscatli_pid` (`parentid`),
  CONSTRAINT `fk_mscatli_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_catalog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_catalog_list`
--

LOCK TABLES `mshop_catalog_list` WRITE;
/*!40000 ALTER TABLE `mshop_catalog_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_catalog_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_catalog_list_type`
--

DROP TABLE IF EXISTS `mshop_catalog_list_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_catalog_list_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_mscatlity_sid_dom_code` (`siteid`,`domain`,`code`),
  KEY `idx_mscatlity_sid_status_pos` (`siteid`,`status`,`pos`),
  KEY `idx_mscatlity_sid_label` (`siteid`,`label`),
  KEY `idx_mscatlity_sid_code` (`siteid`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_catalog_list_type`
--

LOCK TABLES `mshop_catalog_list_type` WRITE;
/*!40000 ALTER TABLE `mshop_catalog_list_type` DISABLE KEYS */;
INSERT INTO `mshop_catalog_list_type` VALUES (1,'1.','media','default','Standard',0,1,'2022-06-27 10:36:22','2022-06-27 10:36:22','core:setup'),(2,'1.','text','default','Standard',0,1,'2022-06-27 10:36:22','2022-06-27 10:36:22','core:setup');
/*!40000 ALTER TABLE `mshop_catalog_list_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_coupon`
--

DROP TABLE IF EXISTS `mshop_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_mscou_sid_stat_start_end` (`siteid`,`status`,`start`,`end`),
  KEY `idx_mscou_sid_provider` (`siteid`,`provider`),
  KEY `idx_mscou_sid_label` (`siteid`,`label`),
  KEY `idx_mscou_sid_start` (`siteid`,`start`),
  KEY `idx_mscou_sid_end` (`siteid`,`end`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_coupon`
--

LOCK TABLES `mshop_coupon` WRITE;
/*!40000 ALTER TABLE `mshop_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_coupon_code`
--

DROP TABLE IF EXISTS `mshop_coupon_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_coupon_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int(11) NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `count` int(11) DEFAULT 0,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `ref` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_mscouco_sid_code` (`siteid`,`code`),
  KEY `idx_mscouco_sid_ct_start_end` (`siteid`,`count`,`start`,`end`),
  KEY `idx_mscouco_sid_start` (`siteid`,`start`),
  KEY `idx_mscouco_sid_end` (`siteid`,`end`),
  KEY `fk_mscouco_pid` (`parentid`),
  CONSTRAINT `fk_mscouco_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_coupon` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_coupon_code`
--

LOCK TABLES `mshop_coupon_code` WRITE;
/*!40000 ALTER TABLE `mshop_coupon_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_coupon_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_customer`
--

DROP TABLE IF EXISTS `mshop_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `salutation` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vatid` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `firstname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address1` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address2` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address3` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postal` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countryid` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `telefax` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `longitude` double DEFAULT 0,
  `latitude` double DEFAULT 0,
  `birthday` date DEFAULT NULL,
  `vdate` date DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_mscus_sid_code` (`siteid`,`code`),
  KEY `idx_mscus_sid_langid` (`siteid`,`langid`),
  KEY `idx_mscus_sid_last_first` (`siteid`,`lastname`,`firstname`),
  KEY `idx_mscus_sid_post_addr1` (`siteid`,`postal`,`address1`),
  KEY `idx_mscus_sid_post_city` (`siteid`,`postal`,`city`),
  KEY `idx_mscus_sid_city` (`siteid`,`city`),
  KEY `idx_mscus_sid_email` (`siteid`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_customer`
--

LOCK TABLES `mshop_customer` WRITE;
/*!40000 ALTER TABLE `mshop_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_customer_address`
--

DROP TABLE IF EXISTS `mshop_customer_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_customer_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int(11) NOT NULL,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vatid` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `salutation` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `firstname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address1` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address2` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address3` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postal` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countryid` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `telefax` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `longitude` double DEFAULT 0,
  `latitude` double DEFAULT 0,
  `birthday` date DEFAULT NULL,
  `pos` smallint(6) NOT NULL DEFAULT 0,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_mscusad_pid` (`parentid`),
  KEY `idx_mscusad_langid` (`langid`),
  KEY `idx_mscusad_sid_last_first` (`siteid`,`lastname`,`firstname`),
  KEY `idx_mscusad_sid_post_addr1` (`siteid`,`postal`,`address1`),
  KEY `idx_mscusad_sid_post_ci` (`siteid`,`postal`,`city`),
  KEY `idx_mscusad_sid_city` (`siteid`,`city`),
  KEY `idx_mscusad_sid_email` (`siteid`,`email`),
  CONSTRAINT `fk_mscusad_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_customer_address`
--

LOCK TABLES `mshop_customer_address` WRITE;
/*!40000 ALTER TABLE `mshop_customer_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_customer_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_customer_group`
--

DROP TABLE IF EXISTS `mshop_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_customer_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_mscusgr_sid_code` (`siteid`,`code`),
  KEY `idx_mscusgr_sid_label` (`siteid`,`label`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_customer_group`
--

LOCK TABLES `mshop_customer_group` WRITE;
/*!40000 ALTER TABLE `mshop_customer_group` DISABLE KEYS */;
INSERT INTO `mshop_customer_group` VALUES (1,'1.','admin','Administrator','2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(2,'1.','editor','Editor','2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup');
/*!40000 ALTER TABLE `mshop_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_customer_list`
--

DROP TABLE IF EXISTS `mshop_customer_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_customer_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int(11) NOT NULL,
  `key` varchar(134) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_mscusli_pid_dm_sid_ty_rid` (`parentid`,`domain`,`siteid`,`type`,`refid`),
  KEY `idx_mscusli_key_sid` (`key`,`siteid`),
  KEY `fk_mscusli_pid` (`parentid`),
  CONSTRAINT `fk_mscusli_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_customer_list`
--

LOCK TABLES `mshop_customer_list` WRITE;
/*!40000 ALTER TABLE `mshop_customer_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_customer_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_customer_list_type`
--

DROP TABLE IF EXISTS `mshop_customer_list_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_customer_list_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_mscuslity_sid_dom_code` (`siteid`,`domain`,`code`),
  KEY `idx_mscuslity_sid_status_pos` (`siteid`,`status`,`pos`),
  KEY `idx_mscuslity_sid_label` (`siteid`,`label`),
  KEY `idx_mscuslity_sid_code` (`siteid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_customer_list_type`
--

LOCK TABLES `mshop_customer_list_type` WRITE;
/*!40000 ALTER TABLE `mshop_customer_list_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_customer_list_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_customer_property`
--

DROP TABLE IF EXISTS `mshop_customer_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_customer_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_mcuspr_sid_ty_lid_value` (`parentid`,`siteid`,`type`,`langid`,`value`),
  KEY `fk_mscuspr_key_sid` (`key`,`siteid`),
  KEY `fk_mcuspr_pid` (`parentid`),
  CONSTRAINT `fk_mcuspr_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_customer_property`
--

LOCK TABLES `mshop_customer_property` WRITE;
/*!40000 ALTER TABLE `mshop_customer_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_customer_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_customer_property_type`
--

DROP TABLE IF EXISTS `mshop_customer_property_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_customer_property_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_mcusprty_sid_dom_code` (`siteid`,`domain`,`code`),
  KEY `idx_mcusprty_sid_status_pos` (`siteid`,`status`,`pos`),
  KEY `idx_mcusprty_sid_label` (`siteid`,`label`),
  KEY `idx_mcusprty_sid_code` (`siteid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_customer_property_type`
--

LOCK TABLES `mshop_customer_property_type` WRITE;
/*!40000 ALTER TABLE `mshop_customer_property_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_customer_property_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_index_attribute`
--

DROP TABLE IF EXISTS `mshop_index_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_index_attribute` (
  `prodid` int(11) NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artid` int(11) DEFAULT NULL,
  `attrid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `listtype` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `mtime` datetime NOT NULL,
  UNIQUE KEY `unq_msindat_p_s_aid_lt` (`prodid`,`siteid`,`attrid`,`listtype`),
  KEY `idx_msindat_p_s_lt_t_c` (`prodid`,`siteid`,`listtype`,`type`,`code`),
  KEY `idx_msindat_s_at_lt` (`siteid`,`attrid`,`listtype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_index_attribute`
--

LOCK TABLES `mshop_index_attribute` WRITE;
/*!40000 ALTER TABLE `mshop_index_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_index_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_index_catalog`
--

DROP TABLE IF EXISTS `mshop_index_catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_index_catalog` (
  `prodid` int(11) NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `listtype` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL,
  `mtime` datetime NOT NULL,
  UNIQUE KEY `unq_msindca_p_s_cid_lt_po` (`prodid`,`siteid`,`catid`,`listtype`,`pos`),
  KEY `idx_msindca_s_ca_lt_po` (`siteid`,`catid`,`listtype`,`pos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_index_catalog`
--

LOCK TABLES `mshop_index_catalog` WRITE;
/*!40000 ALTER TABLE `mshop_index_catalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_index_catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_index_price`
--

DROP TABLE IF EXISTS `mshop_index_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_index_price` (
  `prodid` int(11) NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currencyid` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(12,2) DEFAULT 0.00,
  `mtime` datetime NOT NULL,
  UNIQUE KEY `unq_msindpr_pid_sid_cid` (`prodid`,`siteid`,`currencyid`),
  KEY `idx_msindpr_sid_cid_val` (`siteid`,`currencyid`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_index_price`
--

LOCK TABLES `mshop_index_price` WRITE;
/*!40000 ALTER TABLE `mshop_index_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_index_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_index_supplier`
--

DROP TABLE IF EXISTS `mshop_index_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_index_supplier` (
  `prodid` int(11) NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `listtype` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `latitude` double DEFAULT 0,
  `longitude` double DEFAULT 0,
  `pos` int(11) NOT NULL,
  `mtime` datetime NOT NULL,
  UNIQUE KEY `unq_msindsu_p_s_lt_si_po_la_lo` (`prodid`,`supid`,`listtype`,`siteid`,`pos`,`latitude`,`longitude`),
  KEY `idx_msindsup_p_lat_lon_sid` (`prodid`,`latitude`,`longitude`,`siteid`),
  KEY `idx_msindsup_sid_supid_lt_po` (`siteid`,`supid`,`listtype`,`pos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_index_supplier`
--

LOCK TABLES `mshop_index_supplier` WRITE;
/*!40000 ALTER TABLE `mshop_index_supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_index_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_index_text`
--

DROP TABLE IF EXISTS `mshop_index_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_index_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prodid` int(11) NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `mtime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msindte_pid_sid_lid_url` (`prodid`,`siteid`,`langid`,`url`),
  KEY `idx_msindte_pid_sid_lid_name` (`prodid`,`siteid`,`langid`,`name`),
  FULLTEXT KEY `idx_msindte_content` (`content`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_index_text`
--

LOCK TABLES `mshop_index_text` WRITE;
/*!40000 ALTER TABLE `mshop_index_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_index_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_locale`
--

DROP TABLE IF EXISTS `mshop_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_locale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currencyid` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msloc_sid_lang_curr` (`site_id`,`langid`,`currencyid`),
  KEY `idx_msloc_sid_curid` (`site_id`,`currencyid`),
  KEY `idx_msloc_sid_status` (`site_id`,`status`),
  KEY `idx_msloc_sid_pos` (`site_id`,`pos`),
  KEY `fk_msloc_siteid` (`site_id`),
  KEY `fk_msloc_langid` (`langid`),
  KEY `fk_msloc_currid` (`currencyid`),
  CONSTRAINT `fk_msloc_currid` FOREIGN KEY (`currencyid`) REFERENCES `mshop_locale_currency` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_msloc_langid` FOREIGN KEY (`langid`) REFERENCES `mshop_locale_language` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_msloc_siteid` FOREIGN KEY (`site_id`) REFERENCES `mshop_locale_site` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_locale`
--

LOCK TABLES `mshop_locale` WRITE;
/*!40000 ALTER TABLE `mshop_locale` DISABLE KEYS */;
INSERT INTO `mshop_locale` VALUES (7,1,'1.','pt','BRL',0,1,'2022-06-27 12:05:19','2022-06-27 12:05:19','lucas@email.com');
/*!40000 ALTER TABLE `mshop_locale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_locale_currency`
--

DROP TABLE IF EXISTS `mshop_locale_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_locale_currency` (
  `id` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_msloccu_status` (`status`),
  KEY `idx_msloccu_label` (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_locale_currency`
--

LOCK TABLES `mshop_locale_currency` WRITE;
/*!40000 ALTER TABLE `mshop_locale_currency` DISABLE KEYS */;
INSERT INTO `mshop_locale_currency` VALUES ('AED','United Arab Emirates dirham',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('AFN','Afghan afghani',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('ALL','Albanian Lek',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('AMD','Armenian Dram',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('ANG','Netherlands Antillean gulden',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('AOA','Angolan Kwanza',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('ARS','Argentine Peso',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('AUD','Australian Dollar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('AWG','Aruban Guilder',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('AZN','Azerbaijani Manat',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('BAM','Bosnia-Herzegovina Conv. Mark',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('BBD','Barbados Dollar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('BDT','Bangladeshi taka',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('BGN','Bulgarian Lev',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('BHD','Bahraini Dinar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('BIF','Burundi Franc',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('BMD','Bermuda Dollar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('BND','Brunei Dollar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('BOB','Boliviano',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('BRL','Brazilian Real',1,'2022-06-27 12:04:58','2022-06-27 10:36:22','lucas@email.com'),('BSD','Bahamian Dollar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('BTN','Bhutanese Ngultrum',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('BWP','Botswana pula',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('BYR','Belarussian Ruble',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('BZD','Belize Dollar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('CAD','Canadian Dollar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('CDF','Congolese franc',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('CHF','Swiss franc',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('CLP','Chilean Peso',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('CNY','Chinese Yuan Renminbi',1,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('COP','Colombian Peso',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('CRC','Costa Rican col├│n',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('CUP','Cuban peso',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('CVE','Cape Verde Escudo',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('CZK','Czech koruna',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('DJF','Djibouti franc',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('DKK','Danish krone',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('DOP','Dominican peso',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('DZD','Algerian Dinar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('EGP','Egyptian pound',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('ERN','Eritrean nakfa',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('ETB','Ethiopian birr',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('EUR','Euro',0,'2022-06-27 12:02:49','2022-06-27 10:36:22','lucas@email.com'),('FJD','Fijian dollar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('FKP','Falkland Islands pound',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('GBP','Pound sterling',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('GEL','Georgian lari',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('GHC','Ghanaian cedi',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('GIP','Gibraltar pound',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('GMD','Gambian dalasi',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('GNF','Guinea Franc',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('GTQ','Guatemalan quetzal',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('GYD','Guyana Dollar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('HKD','Hong Kong dollar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('HNL','Honduran lempira',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('HRK','Croatian kuna',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('HTG','Haitian gourde',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('HUF','Hungarian forint',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('IDR','Indonesian rupiah',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('ILS','New Israeli Sheqel',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('INR','Indian rupee',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('IQD','Iraqi dinar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('IRR','Iranian rial',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('ISK','Icelandic kr├│na',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('JMD','Jamaican dollar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('JOD','Jordanian dinar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('JPY','Japanese yen',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('KES','Kenyan shilling',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('KGS','Kyrgyzstani som',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('KHR','Cambodian riel',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('KMF','Comorian Franc',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('KPW','North Korean won',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('KRW','South Corean won',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('KWD','Kuwaiti dinar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('KYD','Cayman Islands Dollar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('KZT','Kazakhstani tenge',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('LAK','Lao kip',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('LBP','Lebanese pound',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('LKR','Sri Lankan rupee',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('LRD','Liberian dollar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('LSL','Lesotho loti',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('LTL','Lithuanian litas',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('LVL','Latvian lats',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('LYD','Libyan dinar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('MAD','Moroccan dirham',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('MDL','Moldovan leu',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('MGA','Malagasy ariary',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('MKD','Macedonian denar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('MMK','Myanmar kyat',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('MNT','Mongolian tugrug',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('MOP','Macanese pataca',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('MRO','Mauritanian ouguiya',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('MUR','Mauritian rupee',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('MVR','Maldivian rufiyaa',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('MWK','Malawian kwacha',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('MXN','Mexican peso',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('MYR','Malaysian ringgit',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('MZM','Mozambican metical',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('NAD','Namibian dollar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('NGN','Nigerian naira',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('NIO','Nicaraguan c├│rdoba',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('NOK','Norvegian krone',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('NPR','Nepalese rupee',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('NZD','New Zealand dollar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('OMR','Omani rial',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('PAB','Panamanian balboa',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('PEN','Peruvian nuevo sol',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('PGK','Papua New Guinean kina',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('PHP','Philippine peso',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('PKR','Pakistani rupee',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('PLN','Polish z┼éoty',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('PYG','Paraguayan guaran├¡',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('QAR','Qatari riyal',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('RON','Romanian leu',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('RSD','Serbian dinar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('RUB','Russian ruble',1,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('RWF','Rwandan franc',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('SAR','Saudi riyal',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('SBD','Solomon Islands dollar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('SCR','Seychelles rupee',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('SDG','Sudanese pound',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('SEK','Swedish krona',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('SGD','Singapore dollar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('SHP','Saint Helena pound',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('SLL','Sierra Leonean leone',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('SOS','Somali shilling',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('SRD','Suriname dollar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('STD','S├úo Tom├® and Pr├¡ncipe dobra',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('SYP','Syrian pound',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('SZL','Swazi lilangeni',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('THB','Baht',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('TJS','Tajikistani somoni',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('TMT','Turkmenistani manat',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('TND','Tunisian dinar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('TOP','Tongan pa\'anga',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('TRY','Turkish new lira',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('TTD','Trinidad and Tobago dollar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('TWD','New Taiwan dollar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('TZS','Tanzanian shilling',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('UAH','Ukrainian hryvnia',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('UGX','Ugandan shilling',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('USD','US dollar',1,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('UYU','Uruguayan peso',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('UZS','Uzbekistani som',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('VEF','Venezuelan bolivar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('VND','Vietnamese dong',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('VUV','Vatu',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('WST','Samoan tala',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('XAF','CFA Franc BEAC',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('XCD','East Caribbean dollar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('XOF','CFA Franc BCEAO',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('XPF','CFP Franc',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('YER','Yemeni rial',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('ZAR','South African rand',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('ZMW','Zambian kwacha',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('ZWL','Zimbabwean dollar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup');
/*!40000 ALTER TABLE `mshop_locale_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_locale_language`
--

DROP TABLE IF EXISTS `mshop_locale_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_locale_language` (
  `id` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_mslocla_status` (`status`),
  KEY `idx_mslocla_label` (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_locale_language`
--

LOCK TABLES `mshop_locale_language` WRITE;
/*!40000 ALTER TABLE `mshop_locale_language` DISABLE KEYS */;
INSERT INTO `mshop_locale_language` VALUES ('aa','Afar',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ab','Abkhazian',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('af','Afrikaans',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ak','Akan',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('am','Amharic',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('an','Aragonese',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ar','Arabic',1,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('as','Assamese',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('av','Avar',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ay','Aymara',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('az','Azerbaijani',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ba','Bashkir',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('be','Belarusian',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('bg','Bulgarian',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('bh','Bihari',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('bi','Bislama',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('bm','Bambara',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('bn','Bengali',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('bo','Tibetan',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('br','Breton',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('bs','Bosnian',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ca','Catalan',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ce','Chechen',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ch','Chamorro',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('co','Corsican',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('cr','Cree',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('cs','Czech',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('cu','Church Slavonic',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('cv','Chuvash',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('cy','Welsh',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('da','Danish',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('de','German',1,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('dv','Dhivehi',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('dz','Dzongkha',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ee','Ewe',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('el','Greek',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('en','English',1,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('eo','Esperanto',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('es','Spanish',1,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('et','Estonian',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('eu','Basque',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('fa','Persian',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ff','Fula',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('fi','Finnish',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('fj','Fijian',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('fo','Faeroese',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('fr','French',1,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('fy','Frisian',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ga','Irish',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('gd','Scottish Gaelic',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('gl','Galician',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('gn','Guaran├¡',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('gu','Gujarati',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('gv','Manx',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ha','Hausa',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('he','Hebrew',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('hi','Hindi',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ho','Hiri motu',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('hr','Croatian',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ht','Ha├»tian Creole',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('hu','Hungarian',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('hy','Armenian',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('hz','Herero',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ia','Interlingua',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('id','Indonesian',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ie','Interlingue',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ig','Igbo',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ii','Yi',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ik','Inupiaq',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('io','Ido',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('is','Icelandic',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('it','Italian',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('iu','Inuktitut',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ja','Japanese',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('jv','Javanese',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ka','Georgian',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('kg','Kongo',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ki','Kikuyu',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('kj','Kuanyama',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('kk','Kazakh',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('kl','Greenlandic',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('km','Khmer',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('kn','Kannada',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ko','Korean',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('kr','Kanuri',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ks','Kashmiri',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ku','Kurdish',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('kv','Komi',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('kw','Cornish',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ky','Kirghiz',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('lb','Luxembourgish',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('lg','Luganda',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('li','Limburgish',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ln','Lingala',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('lo','Lao',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('lt','Lithuanian',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('lu','Luba-Katanga',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('lv','Latvian',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('mg','Malagasy',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('mh','Marshallese',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('mi','M─üori',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('mk','Macedonian',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ml','Malayalam',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('mn','Mongolian',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('mo','Moldavian',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('mr','Marathi',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ms','Malay',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('mt','Maltese',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('my','Burmese',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('na','Nauru',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('nb','Norwegian Bokm├Ñl',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('nd','North Ndebele',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ne','Nepali',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ng','Ndonga',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('nl','Dutch',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('nn','Norwegian Nynorsk',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('no','Norwegian',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('nr','South Ndebele',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('nv','Navajo',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ny','Chichewa',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('oc','Occitan',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('oj','Ojibwa',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('om','Oromo',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('or','Oriya',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('os','Ossetic',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('pa','Punjabi',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('pi','Pali',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('pl','Polish',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ps','Pashto',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('pt','Portuguese',1,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('qu','Quechua',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('rm','Rhaeto-Romance',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('rn','Kirundi',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ro','Romanian',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ru','Russian',1,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('rw','Kinyarwanda',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('sa','Sanskrit',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('sc','Sardinian',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('sd','Sindhi',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('se','Northern Sami',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('sg','Sango',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('si','Sinhala',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('sk','Slovak',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('sl','Slovenian',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('sm','Samoan',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('sn','Shona',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('so','Somali',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('sq','Albanian',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('sr','Serbian',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ss','Swati',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('st','Sesotho',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('su','Sundanese',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('sv','Swedish',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('sw','Swahili',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('ta','Tamil',0,'2022-06-27 10:36:21','2022-06-27 10:36:21','setup'),('te','Telugu',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('tg','Tajik',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('th','Thai',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('ti','Tigrinya',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('tk','Turkmen',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('tl','Tagalog',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('tn','Setswana',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('to','Tongan',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('tr','Turkish',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('ts','Tsonga',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('tt','Tatar',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('tw','Twi',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('ty','Tahitian',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('ug','Uyghur',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('uk','Ukrainian',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('ur','Urdu',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('uz','Uzbek',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('ve','Venda',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('vi','Vietnamese',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('vo','Volap├╝k',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('wa','Walloon',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('wo','Wolof',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('xh','Xhosa',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('yi','Yiddish',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('yo','Yoruba',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('za','Zhuang',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('zh','Chinese',1,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup'),('zu','Zulu',0,'2022-06-27 10:36:22','2022-06-27 10:36:22','setup');
/*!40000 ALTER TABLE `mshop_locale_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_locale_site`
--

DROP TABLE IF EXISTS `mshop_locale_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_locale_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) DEFAULT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '{}',
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `refid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `theme` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` smallint(6) NOT NULL DEFAULT 0,
  `nleft` int(11) NOT NULL,
  `nright` int(11) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_mslocsi_code` (`code`),
  UNIQUE KEY `unq_mslocsi_siteid` (`siteid`),
  KEY `idx_mslocsi_nlt_nrt_lvl_pid` (`nleft`,`nright`,`level`,`parentid`),
  KEY `idx_mslocsi_level_status` (`level`,`status`),
  KEY `idx_mslocsi_label` (`label`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_locale_site`
--

LOCK TABLES `mshop_locale_site` WRITE;
/*!40000 ALTER TABLE `mshop_locale_site` DISABLE KEYS */;
INSERT INTO `mshop_locale_site` VALUES (1,0,'1.','default','Turquesa','1.d/icon.png','{\"1\":\"1.d\\/logo.png\"}','{\"resource\":{\"email\":{\"from-email\":\"lucas@email.com\",\"from-name\":\"Turquesa\"}}}','','default',0,1,2,1,'2022-06-27 11:58:06','2022-06-27 10:36:22','lucas@email.com');
/*!40000 ALTER TABLE `mshop_locale_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_media`
--

DROP TABLE IF EXISTS `mshop_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `fsname` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mimetype` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_msmed_sid_dom_langid` (`siteid`,`domain`,`langid`),
  KEY `idx_msmed_sid_dom_label` (`siteid`,`domain`,`label`),
  KEY `idx_msmed_sid_dom_mime` (`siteid`,`domain`,`mimetype`),
  KEY `idx_msmed_sid_dom_link` (`siteid`,`domain`,`link`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_media`
--

LOCK TABLES `mshop_media` WRITE;
/*!40000 ALTER TABLE `mshop_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_media_list`
--

DROP TABLE IF EXISTS `mshop_media_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_media_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int(11) NOT NULL,
  `key` varchar(134) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msmedli_pid_dm_sid_ty_rid` (`parentid`,`domain`,`siteid`,`type`,`refid`),
  KEY `idx_msmedli_key_sid` (`key`,`siteid`),
  KEY `fk_msmedli_pid` (`parentid`),
  CONSTRAINT `fk_msmedli_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_media_list`
--

LOCK TABLES `mshop_media_list` WRITE;
/*!40000 ALTER TABLE `mshop_media_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_media_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_media_list_type`
--

DROP TABLE IF EXISTS `mshop_media_list_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_media_list_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msmedlity_sid_dom_code` (`siteid`,`domain`,`code`),
  KEY `idx_msmedlity_sid_status_pos` (`siteid`,`status`,`pos`),
  KEY `idx_msmedlity_sid_label` (`siteid`,`label`),
  KEY `idx_msmedlity_sid_code` (`siteid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_media_list_type`
--

LOCK TABLES `mshop_media_list_type` WRITE;
/*!40000 ALTER TABLE `mshop_media_list_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_media_list_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_media_property`
--

DROP TABLE IF EXISTS `mshop_media_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_media_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msmedpr_sid_ty_lid_value` (`parentid`,`siteid`,`type`,`langid`,`value`),
  KEY `fk_msmedpr_key_sid` (`key`,`siteid`),
  KEY `fk_msmedpr_pid` (`parentid`),
  CONSTRAINT `fk_msmedpr_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_media_property`
--

LOCK TABLES `mshop_media_property` WRITE;
/*!40000 ALTER TABLE `mshop_media_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_media_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_media_property_type`
--

DROP TABLE IF EXISTS `mshop_media_property_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_media_property_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msmedprty_sid_dom_code` (`siteid`,`domain`,`code`),
  KEY `idx_msmedprty_sid_status_pos` (`siteid`,`status`,`pos`),
  KEY `idx_msmedprty_sid_label` (`siteid`,`label`),
  KEY `idx_msmedprty_sid_code` (`siteid`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_media_property_type`
--

LOCK TABLES `mshop_media_property_type` WRITE;
/*!40000 ALTER TABLE `mshop_media_property_type` DISABLE KEYS */;
INSERT INTO `mshop_media_property_type` VALUES (1,'1.','media','name','Media title',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup');
/*!40000 ALTER TABLE `mshop_media_property_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_media_type`
--

DROP TABLE IF EXISTS `mshop_media_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_media_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msmedty_sid_dom_code` (`siteid`,`domain`,`code`),
  KEY `idx_msmedty_sid_status_pos` (`siteid`,`status`,`pos`),
  KEY `idx_msmedty_sid_label` (`siteid`,`label`),
  KEY `idx_msmedty_sid_code` (`siteid`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_media_type`
--

LOCK TABLES `mshop_media_type` WRITE;
/*!40000 ALTER TABLE `mshop_media_type` DISABLE KEYS */;
INSERT INTO `mshop_media_type` VALUES (1,'1.','attribute','default','Standard',0,1,'2022-06-27 10:36:22','2022-06-27 10:36:22','core:setup'),(2,'1.','attribute','icon','Icon',0,1,'2022-06-27 10:36:22','2022-06-27 10:36:22','core:setup'),(3,'1.','catalog','default','Standard',0,1,'2022-06-27 10:36:22','2022-06-27 10:36:22','core:setup'),(4,'1.','catalog','stage','Stage',0,1,'2022-06-27 10:36:22','2022-06-27 10:36:22','core:setup'),(5,'1.','catalog','menu','Menu',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(6,'1.','catalog','icon','Icon',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(7,'1.','product','default','Standard',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(8,'1.','product','download','Download',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(9,'1.','service','default','Standard',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(10,'1.','service','icon','Icon',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(11,'1.','supplier','default','Standard',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup');
/*!40000 ALTER TABLE `mshop_media_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_order`
--

DROP TABLE IF EXISTS `mshop_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `baseid` bigint(20) NOT NULL,
  `relatedid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `channel` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `datepayment` datetime DEFAULT NULL,
  `datedelivery` datetime DEFAULT NULL,
  `statuspayment` smallint(6) NOT NULL DEFAULT -1,
  `statusdelivery` smallint(6) NOT NULL DEFAULT -1,
  `cdate` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cmonth` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cweek` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cwday` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `chour` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_msord_sid_channel` (`siteid`,`channel`),
  KEY `idx_msord_sid_ctime_pstat` (`siteid`,`ctime`,`statuspayment`),
  KEY `idx_msord_sid_mtime_pstat` (`siteid`,`mtime`,`statuspayment`),
  KEY `idx_msord_sid_mtime_dstat` (`siteid`,`mtime`,`statusdelivery`),
  KEY `idx_msord_sid_dstatus` (`siteid`,`statusdelivery`),
  KEY `idx_msord_sid_ddate` (`siteid`,`datedelivery`),
  KEY `idx_msord_sid_pdate` (`siteid`,`datepayment`),
  KEY `idx_msord_sid_editor` (`siteid`,`editor`),
  KEY `idx_msord_sid_cdate` (`siteid`,`cdate`),
  KEY `idx_msord_sid_cmonth` (`siteid`,`cmonth`),
  KEY `idx_msord_sid_cweek` (`siteid`,`cweek`),
  KEY `idx_msord_sid_cwday` (`siteid`,`cwday`),
  KEY `idx_msord_sid_chour` (`siteid`,`chour`),
  KEY `fk_msord_baseid` (`baseid`),
  CONSTRAINT `fk_msord_baseid` FOREIGN KEY (`baseid`) REFERENCES `mshop_order_base` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_order`
--

LOCK TABLES `mshop_order` WRITE;
/*!40000 ALTER TABLE `mshop_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_order_base`
--

DROP TABLE IF EXISTS `mshop_order_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_order_base` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customerid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `sitecode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currencyid` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(12,2) NOT NULL DEFAULT 0.00,
  `costs` decimal(12,2) NOT NULL DEFAULT 0.00,
  `rebate` decimal(12,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(14,4) NOT NULL DEFAULT 0.0000,
  `taxflag` smallint(6) NOT NULL DEFAULT 1,
  `customerref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_msordba_custid_scode` (`customerid`,`sitecode`),
  KEY `idx_msordba_custid_sid` (`customerid`,`siteid`),
  KEY `idx_msordba_sid_ctime` (`siteid`,`ctime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_order_base`
--

LOCK TABLES `mshop_order_base` WRITE;
/*!40000 ALTER TABLE `mshop_order_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_order_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_order_base_address`
--

DROP TABLE IF EXISTS `mshop_order_base_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_order_base_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `baseid` bigint(20) NOT NULL,
  `addrid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `salutation` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vatid` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `firstname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address1` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address2` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address3` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postal` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countryid` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `telefax` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `longitude` double DEFAULT 0,
  `latitude` double DEFAULT 0,
  `birthday` date DEFAULT NULL,
  `pos` int(11) NOT NULL DEFAULT 0,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msordbaad_bid_type` (`baseid`,`type`),
  KEY `idx_msordbaad_sid_bid_typ` (`siteid`,`baseid`,`type`),
  KEY `idx_msordbaad_bid_sid_lname` (`baseid`,`siteid`,`lastname`),
  KEY `idx_msordbaad_bid_sid_addr1` (`baseid`,`siteid`,`address1`),
  KEY `idx_msordbaad_bid_sid_postal` (`baseid`,`siteid`,`postal`),
  KEY `idx_msordbaad_bid_sid_city` (`baseid`,`siteid`,`city`),
  KEY `idx_msordbaad_bid_sid_email` (`baseid`,`siteid`,`email`),
  KEY `fk_msordbaad_baseid` (`baseid`),
  CONSTRAINT `fk_msordbaad_baseid` FOREIGN KEY (`baseid`) REFERENCES `mshop_order_base` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_order_base_address`
--

LOCK TABLES `mshop_order_base_address` WRITE;
/*!40000 ALTER TABLE `mshop_order_base_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_order_base_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_order_base_coupon`
--

DROP TABLE IF EXISTS `mshop_order_base_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_order_base_coupon` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `baseid` bigint(20) NOT NULL,
  `ordprodid` bigint(20) DEFAULT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_msordbaco_bid_sid_code` (`baseid`,`siteid`,`code`),
  KEY `fk_msordbaco_baseid` (`baseid`),
  CONSTRAINT `fk_msordbaco_baseid` FOREIGN KEY (`baseid`) REFERENCES `mshop_order_base` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_order_base_coupon`
--

LOCK TABLES `mshop_order_base_coupon` WRITE;
/*!40000 ALTER TABLE `mshop_order_base_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_order_base_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_order_base_product`
--

DROP TABLE IF EXISTS `mshop_order_base_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_order_base_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `baseid` bigint(20) NOT NULL,
  `ordprodid` bigint(20) DEFAULT NULL,
  `ordaddrid` bigint(20) DEFAULT NULL,
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `prodid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `parentprodid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `prodcode` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `stocktype` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT 'default',
  `vendor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mediaurl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timeframe` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `quantity` double NOT NULL DEFAULT 1,
  `qtyopen` double NOT NULL DEFAULT 0,
  `currencyid` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(12,2) DEFAULT 0.00,
  `costs` decimal(12,2) NOT NULL DEFAULT 0.00,
  `rebate` decimal(12,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(14,4) NOT NULL DEFAULT 0.0000,
  `taxrate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '{}',
  `taxflag` smallint(6) NOT NULL DEFAULT 1,
  `flags` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `statuspayment` smallint(6) NOT NULL DEFAULT -1,
  `statusdelivery` smallint(6) NOT NULL DEFAULT -1,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msordbapr_bid_pos` (`baseid`,`pos`),
  KEY `idx_msordbapr_bid_sid_pid` (`baseid`,`siteid`,`prodid`),
  KEY `idx_msordbapr_bid_sid_pcd` (`baseid`,`siteid`,`prodcode`),
  KEY `idx_msordbapr_bid_sid_qtyo` (`baseid`,`siteid`,`qtyopen`),
  KEY `idx_msordbapr_ct_sid_pid_bid` (`ctime`,`siteid`,`prodid`,`baseid`),
  KEY `fk_msordbapr_baseid` (`baseid`),
  CONSTRAINT `fk_msordbapr_baseid` FOREIGN KEY (`baseid`) REFERENCES `mshop_order_base` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_order_base_product`
--

LOCK TABLES `mshop_order_base_product` WRITE;
/*!40000 ALTER TABLE `mshop_order_base_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_order_base_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_order_base_product_attr`
--

DROP TABLE IF EXISTS `mshop_order_base_product_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_order_base_product_attr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` bigint(20) NOT NULL,
  `attrid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `quantity` double NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msordbaprat_oid_aid_ty_cd` (`parentid`,`attrid`,`type`,`code`),
  KEY `fk_msordbaprat_parentid` (`parentid`),
  KEY `idx_msordbaprat_si_cd_va` (`siteid`,`code`,`value`(16)),
  CONSTRAINT `fk_msordbaprat_parentid` FOREIGN KEY (`parentid`) REFERENCES `mshop_order_base_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_order_base_product_attr`
--

LOCK TABLES `mshop_order_base_product_attr` WRITE;
/*!40000 ALTER TABLE `mshop_order_base_product_attr` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_order_base_product_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_order_base_service`
--

DROP TABLE IF EXISTS `mshop_order_base_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_order_base_service` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `baseid` bigint(20) NOT NULL,
  `servid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mediaurl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currencyid` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(12,2) DEFAULT 0.00,
  `costs` decimal(12,2) NOT NULL DEFAULT 0.00,
  `rebate` decimal(12,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(14,4) NOT NULL DEFAULT 0.0000,
  `taxrate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '{}',
  `taxflag` smallint(6) NOT NULL DEFAULT 1,
  `pos` int(11) NOT NULL DEFAULT 0,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msordbase_bid_sid_cd_typ` (`baseid`,`siteid`,`code`,`type`),
  KEY `idx_msordbase_sid_code_type` (`siteid`,`code`,`type`),
  KEY `fk_msordbase_baseid` (`baseid`),
  CONSTRAINT `fk_msordbase_baseid` FOREIGN KEY (`baseid`) REFERENCES `mshop_order_base` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_order_base_service`
--

LOCK TABLES `mshop_order_base_service` WRITE;
/*!40000 ALTER TABLE `mshop_order_base_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_order_base_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_order_base_service_attr`
--

DROP TABLE IF EXISTS `mshop_order_base_service_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_order_base_service_attr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` bigint(20) NOT NULL,
  `attrid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `quantity` double NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msordbaseat_oid_aid_ty_cd` (`parentid`,`attrid`,`type`,`code`),
  KEY `fk_msordbaseat_parentid` (`parentid`),
  KEY `idx_msordbaseat_si_cd_va` (`siteid`,`code`,`value`(16)),
  CONSTRAINT `fk_msordbaseat_parentid` FOREIGN KEY (`parentid`) REFERENCES `mshop_order_base_service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_order_base_service_attr`
--

LOCK TABLES `mshop_order_base_service_attr` WRITE;
/*!40000 ALTER TABLE `mshop_order_base_service_attr` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_order_base_service_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_order_status`
--

DROP TABLE IF EXISTS `mshop_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_order_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` bigint(20) NOT NULL,
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `value` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_msordstatus_val_sid` (`siteid`,`parentid`,`type`,`value`),
  KEY `fk_msordst_pid` (`parentid`),
  CONSTRAINT `fk_msordst_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_order_status`
--

LOCK TABLES `mshop_order_status` WRITE;
/*!40000 ALTER TABLE `mshop_order_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_plugin`
--

DROP TABLE IF EXISTS `mshop_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msplu_sid_ty_prov` (`siteid`,`type`,`provider`),
  KEY `idx_msplu_sid_prov` (`siteid`,`provider`),
  KEY `idx_msplu_sid_status` (`siteid`,`status`),
  KEY `idx_msplu_sid_label` (`siteid`,`label`),
  KEY `idx_msplu_sid_pos` (`siteid`,`pos`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_plugin`
--

LOCK TABLES `mshop_plugin` WRITE;
/*!40000 ALTER TABLE `mshop_plugin` DISABLE KEYS */;
INSERT INTO `mshop_plugin` VALUES (1,'1.','order','ProductLimit','Limits maximum amount of products','{\"single-number-max\":10,\"total-number-max\":100,\"single-value-max\":{\"EUR\":\"1000.00\"},\"total-value-max\":{\"EUR\":\"10000.00\"}}',10,0,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(2,'1.','order','ProductGone','Checks for deleted products','[]',20,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(3,'1.','order','ProductStock','Checks for products out of stock','[]',30,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(4,'1.','order','ProductPrice','Checks for changed product prices','[]',40,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(5,'1.','order','Autofill','Adds addresses/delivery/payment to basket','{\"address\":1,\"useorder\":1,\"orderaddress\":1,\"orderservice\":1,\"delivery\":1,\"payment\":0}',50,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(6,'1.','order','ServicesUpdate','Updates delivery/payment options on basket change','[]',60,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(7,'1.','order','Shipping','Free shipping above threshold','{\"threshold\":{\"EUR\":\"1.00\"}}',70,0,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(8,'1.','order','BasketLimits','Checks for necessary basket limits','{\"min-products\":1,\"max-products\":100,\"min-value\":{\"EUR\":\"1.00\"},\"max-value\":{\"EUR\":\"10000.00\"}}',80,0,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(9,'1.','order','Taxrates','Country and state tax rates','{\"country-taxrates\":{\"US\":\"5.00\",\"AT\":\"20.00\"},\"state-taxrates\":{\"CA\":\"6.25\"}}',90,0,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(10,'1.','order','Coupon','Coupon update','[]',100,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(11,'1.','order','AddressesAvailable','Checks for required addresses (billing/delivery)','{\"payment\":1,\"delivery\":\"\"}',110,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(12,'1.','order','ServicesAvailable','Checks for required services (delivery/payment)','{\"payment\":1,\"delivery\":1}',120,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup');
/*!40000 ALTER TABLE `mshop_plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_plugin_type`
--

DROP TABLE IF EXISTS `mshop_plugin_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_plugin_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_mspluty_sid_dom_code` (`siteid`,`domain`,`code`),
  KEY `idx_mspluty_sid_status_pos` (`siteid`,`status`,`pos`),
  KEY `idx_mspluty_sid_label` (`siteid`,`label`),
  KEY `idx_mspluty_sid_code` (`siteid`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_plugin_type`
--

LOCK TABLES `mshop_plugin_type` WRITE;
/*!40000 ALTER TABLE `mshop_plugin_type` DISABLE KEYS */;
INSERT INTO `mshop_plugin_type` VALUES (1,'1.','plugin','order','Order',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup');
/*!40000 ALTER TABLE `mshop_plugin_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_price`
--

DROP TABLE IF EXISTS `mshop_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currencyid` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` double NOT NULL DEFAULT 1,
  `value` decimal(12,2) DEFAULT 0.00,
  `costs` decimal(12,2) NOT NULL DEFAULT 0.00,
  `rebate` decimal(12,2) NOT NULL DEFAULT 0.00,
  `taxrate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '{}',
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_mspri_sid_dom_currid` (`siteid`,`domain`,`currencyid`),
  KEY `idx_mspri_sid_dom_quantity` (`siteid`,`domain`,`quantity`),
  KEY `idx_mspri_sid_dom_value` (`siteid`,`domain`,`value`),
  KEY `idx_mspri_sid_dom_costs` (`siteid`,`domain`,`costs`),
  KEY `idx_mspri_sid_dom_rebate` (`siteid`,`domain`,`rebate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_price`
--

LOCK TABLES `mshop_price` WRITE;
/*!40000 ALTER TABLE `mshop_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_price_list`
--

DROP TABLE IF EXISTS `mshop_price_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_price_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int(11) NOT NULL,
  `key` varchar(134) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msprili_pid_dm_sid_ty_rid` (`parentid`,`domain`,`siteid`,`type`,`refid`),
  KEY `idx_msprili_key_sid` (`key`,`siteid`),
  KEY `fk_msprili_pid` (`parentid`),
  CONSTRAINT `fk_msprili_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_price` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_price_list`
--

LOCK TABLES `mshop_price_list` WRITE;
/*!40000 ALTER TABLE `mshop_price_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_price_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_price_list_type`
--

DROP TABLE IF EXISTS `mshop_price_list_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_price_list_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msprility_sid_dom_code` (`siteid`,`domain`,`code`),
  KEY `idx_msprility_sid_status_pos` (`siteid`,`status`,`pos`),
  KEY `idx_msprility_sid_label` (`siteid`,`label`),
  KEY `idx_msprility_sid_code` (`siteid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_price_list_type`
--

LOCK TABLES `mshop_price_list_type` WRITE;
/*!40000 ALTER TABLE `mshop_price_list_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_price_list_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_price_property`
--

DROP TABLE IF EXISTS `mshop_price_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_price_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_mspripr_sid_ty_lid_value` (`parentid`,`siteid`,`type`,`langid`,`value`),
  KEY `fk_mspripr_key_sid` (`key`,`siteid`),
  KEY `fk_mspripr_pid` (`parentid`),
  CONSTRAINT `fk_mspripr_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_price` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_price_property`
--

LOCK TABLES `mshop_price_property` WRITE;
/*!40000 ALTER TABLE `mshop_price_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_price_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_price_property_type`
--

DROP TABLE IF EXISTS `mshop_price_property_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_price_property_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_mspriprty_sid_dom_code` (`siteid`,`domain`,`code`),
  KEY `idx_mspriprty_sid_status_pos` (`siteid`,`status`,`pos`),
  KEY `idx_mspriprty_sid_label` (`siteid`,`label`),
  KEY `idx_mspriprty_sid_code` (`siteid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_price_property_type`
--

LOCK TABLES `mshop_price_property_type` WRITE;
/*!40000 ALTER TABLE `mshop_price_property_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_price_property_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_price_type`
--

DROP TABLE IF EXISTS `mshop_price_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_price_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msprity_sid_dom_code` (`siteid`,`domain`,`code`),
  KEY `idx_msprity_sid_status_pos` (`siteid`,`status`,`pos`),
  KEY `idx_msprity_sid_label` (`siteid`,`label`),
  KEY `idx_msprity_sid_code` (`siteid`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_price_type`
--

LOCK TABLES `mshop_price_type` WRITE;
/*!40000 ALTER TABLE `mshop_price_type` DISABLE KEYS */;
INSERT INTO `mshop_price_type` VALUES (1,'1.','attribute','default','Standard',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(2,'1.','service','default','Standard',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(3,'1.','product','default','Standard',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup');
/*!40000 ALTER TABLE `mshop_price_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_product`
--

DROP TABLE IF EXISTS `mshop_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataset` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `scale` double NOT NULL DEFAULT 0,
  `rating` decimal(4,2) NOT NULL DEFAULT 0.00,
  `ratings` int(11) NOT NULL DEFAULT 0,
  `instock` smallint(6) NOT NULL DEFAULT 0,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_mspro_siteid_code` (`siteid`,`code`),
  KEY `idx_mspro_id_sid_stat_st_end_rt` (`id`,`siteid`,`status`,`start`,`end`,`rating`),
  KEY `idx_mspro_sid_stat_st_end_rt` (`siteid`,`status`,`start`,`end`,`rating`),
  KEY `idx_mspro_sid_rating` (`siteid`,`rating`),
  KEY `idx_mspro_sid_label` (`siteid`,`label`),
  KEY `idx_mspro_sid_start` (`siteid`,`start`),
  KEY `idx_mspro_sid_end` (`siteid`,`end`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_product`
--

LOCK TABLES `mshop_product` WRITE;
/*!40000 ALTER TABLE `mshop_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_product_list`
--

DROP TABLE IF EXISTS `mshop_product_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_product_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int(11) NOT NULL,
  `key` varchar(134) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msproli_pid_dm_sid_ty_rid` (`parentid`,`domain`,`siteid`,`type`,`refid`),
  KEY `idx_msproli_key_sid` (`key`,`siteid`),
  KEY `fk_msproli_pid` (`parentid`),
  CONSTRAINT `fk_msproli_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_product_list`
--

LOCK TABLES `mshop_product_list` WRITE;
/*!40000 ALTER TABLE `mshop_product_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_product_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_product_list_type`
--

DROP TABLE IF EXISTS `mshop_product_list_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_product_list_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msprolity_sid_dom_code` (`siteid`,`domain`,`code`),
  KEY `idx_msprolity_sid_status_pos` (`siteid`,`status`,`pos`),
  KEY `idx_msprolity_sid_label` (`siteid`,`label`),
  KEY `idx_msprolity_sid_code` (`siteid`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_product_list_type`
--

LOCK TABLES `mshop_product_list_type` WRITE;
/*!40000 ALTER TABLE `mshop_product_list_type` DISABLE KEYS */;
INSERT INTO `mshop_product_list_type` VALUES (1,'1.','attribute','default','Standard',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(2,'1.','attribute','config','Configurable',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(3,'1.','attribute','variant','Variant',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(4,'1.','attribute','hidden','Hidden',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(5,'1.','attribute','custom','Custom value',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(6,'1.','catalog','default','Standard',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(7,'1.','catalog','promotion','Promotion',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(8,'1.','media','default','Standard',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(9,'1.','price','default','Standard',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(10,'1.','product','default','Standard',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(11,'1.','product','suggestion','Suggestion',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(12,'1.','product','bought-together','Bought together',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(13,'1.','tag','default','Standard',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(14,'1.','text','default','Standard',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup');
/*!40000 ALTER TABLE `mshop_product_list_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_product_property`
--

DROP TABLE IF EXISTS `mshop_product_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_product_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_mspropr_sid_ty_lid_value` (`parentid`,`siteid`,`type`,`langid`,`value`),
  KEY `fk_mspropr_key_sid` (`key`,`siteid`),
  KEY `fk_mspropr_pid` (`parentid`),
  CONSTRAINT `fk_mspropr_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_product_property`
--

LOCK TABLES `mshop_product_property` WRITE;
/*!40000 ALTER TABLE `mshop_product_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_product_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_product_property_type`
--

DROP TABLE IF EXISTS `mshop_product_property_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_product_property_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msproprty_sid_dom_code` (`siteid`,`domain`,`code`),
  KEY `idx_msproprty_sid_status_pos` (`siteid`,`status`,`pos`),
  KEY `idx_msproprty_sid_label` (`siteid`,`label`),
  KEY `idx_msproprty_sid_code` (`siteid`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_product_property_type`
--

LOCK TABLES `mshop_product_property_type` WRITE;
/*!40000 ALTER TABLE `mshop_product_property_type` DISABLE KEYS */;
INSERT INTO `mshop_product_property_type` VALUES (1,'1.','product','package-height','Package height',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(2,'1.','product','package-length','Package length',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(3,'1.','product','package-width','Package width',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(4,'1.','product','package-weight','Package weight',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup');
/*!40000 ALTER TABLE `mshop_product_property_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_product_type`
--

DROP TABLE IF EXISTS `mshop_product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_product_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msproty_sid_dom_code` (`siteid`,`domain`,`code`),
  KEY `idx_msproty_sid_status_pos` (`siteid`,`status`,`pos`),
  KEY `idx_msproty_sid_label` (`siteid`,`label`),
  KEY `idx_msproty_sid_code` (`siteid`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_product_type`
--

LOCK TABLES `mshop_product_type` WRITE;
/*!40000 ALTER TABLE `mshop_product_type` DISABLE KEYS */;
INSERT INTO `mshop_product_type` VALUES (1,'1.','product','default','Article',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(2,'1.','product','bundle','Bundle',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(3,'1.','product','event','Event',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(4,'1.','product','group','Group',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(5,'1.','product','select','Selection',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(6,'1.','product','voucher','Voucher',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup');
/*!40000 ALTER TABLE `mshop_product_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_review`
--

DROP TABLE IF EXISTS `mshop_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_review` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `customerid` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordprodid` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` smallint(6) NOT NULL DEFAULT -1,
  `rating` smallint(6) NOT NULL DEFAULT 0,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `response` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msrev_sid_cid_dom_rid` (`siteid`,`customerid`,`domain`,`refid`),
  KEY `idx_msrev_sid_dom_rid_sta_ct` (`siteid`,`domain`,`refid`,`status`,`ctime`),
  KEY `idx_msrev_sid_dom_rid_sta_rate` (`siteid`,`domain`,`refid`,`status`,`rating`),
  KEY `idx_msrev_sid_dom_cid_mt` (`siteid`,`domain`,`customerid`,`mtime`),
  KEY `idx_msrev_sid_rate_dom` (`siteid`,`rating`,`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_review`
--

LOCK TABLES `mshop_review` WRITE;
/*!40000 ALTER TABLE `mshop_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_rule`
--

DROP TABLE IF EXISTS `mshop_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_msrul_sid_prov` (`siteid`,`provider`),
  KEY `idx_msrul_sid_status` (`siteid`,`status`),
  KEY `idx_msrul_sid_label` (`siteid`,`label`),
  KEY `idx_msrul_sid_pos` (`siteid`,`pos`),
  KEY `idx_msrul_sid_start` (`siteid`,`start`),
  KEY `idx_msrul_sid_end` (`siteid`,`end`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_rule`
--

LOCK TABLES `mshop_rule` WRITE;
/*!40000 ALTER TABLE `mshop_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_rule_type`
--

DROP TABLE IF EXISTS `mshop_rule_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_rule_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msrulty_sid_dom_code` (`siteid`,`domain`,`code`),
  KEY `idx_msrulty_sid_status_pos` (`siteid`,`status`,`pos`),
  KEY `idx_msrulty_sid_label` (`siteid`,`label`),
  KEY `idx_msrulty_sid_code` (`siteid`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_rule_type`
--

LOCK TABLES `mshop_rule_type` WRITE;
/*!40000 ALTER TABLE `mshop_rule_type` DISABLE KEYS */;
INSERT INTO `mshop_rule_type` VALUES (1,'1.','rule','catalog','Catalog',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup');
/*!40000 ALTER TABLE `mshop_rule_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_service`
--

DROP TABLE IF EXISTS `mshop_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msser_siteid_code` (`siteid`,`code`),
  KEY `idx_msser_sid_stat_start_end` (`siteid`,`status`,`start`,`end`),
  KEY `idx_msser_sid_prov` (`siteid`,`provider`),
  KEY `idx_msser_sid_code` (`siteid`,`code`),
  KEY `idx_msser_sid_label` (`siteid`,`label`),
  KEY `idx_msser_sid_pos` (`siteid`,`pos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_service`
--

LOCK TABLES `mshop_service` WRITE;
/*!40000 ALTER TABLE `mshop_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_service_list`
--

DROP TABLE IF EXISTS `mshop_service_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_service_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int(11) NOT NULL,
  `key` varchar(134) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '{}',
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msserli_pid_dm_sid_ty_rid` (`parentid`,`domain`,`siteid`,`type`,`refid`),
  KEY `idx_msserli_key_sid` (`key`,`siteid`),
  KEY `fk_msserli_pid` (`parentid`),
  CONSTRAINT `fk_msserli_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_service_list`
--

LOCK TABLES `mshop_service_list` WRITE;
/*!40000 ALTER TABLE `mshop_service_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_service_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_service_list_type`
--

DROP TABLE IF EXISTS `mshop_service_list_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_service_list_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msserlity_sid_dom_code` (`siteid`,`domain`,`code`),
  KEY `idx_msserlity_sid_status_pos` (`siteid`,`status`,`pos`),
  KEY `idx_msserlity_sid_label` (`siteid`,`label`),
  KEY `idx_msserlity_sid_code` (`siteid`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_service_list_type`
--

LOCK TABLES `mshop_service_list_type` WRITE;
/*!40000 ALTER TABLE `mshop_service_list_type` DISABLE KEYS */;
INSERT INTO `mshop_service_list_type` VALUES (1,'1.','media','default','Standard',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(2,'1.','price','default','Standard',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(3,'1.','text','default','Standard',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup');
/*!40000 ALTER TABLE `mshop_service_list_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_service_type`
--

DROP TABLE IF EXISTS `mshop_service_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_service_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msserty_sid_dom_code` (`siteid`,`domain`,`code`),
  KEY `idx_msserty_sid_status_pos` (`siteid`,`status`,`pos`),
  KEY `idx_msserty_sid_label` (`siteid`,`label`),
  KEY `idx_msserty_sid_code` (`siteid`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_service_type`
--

LOCK TABLES `mshop_service_type` WRITE;
/*!40000 ALTER TABLE `mshop_service_type` DISABLE KEYS */;
INSERT INTO `mshop_service_type` VALUES (1,'1.','service','payment','Payment',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(2,'1.','service','delivery','Delivery',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup');
/*!40000 ALTER TABLE `mshop_service_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_stock`
--

DROP TABLE IF EXISTS `mshop_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `stocklevel` int(11) DEFAULT NULL,
  `backdate` datetime DEFAULT NULL,
  `timeframe` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_mssto_sid_pid_ty` (`siteid`,`prodid`,`type`),
  KEY `idx_mssto_sid_stocklevel` (`siteid`,`stocklevel`),
  KEY `idx_mssto_sid_backdate` (`siteid`,`backdate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_stock`
--

LOCK TABLES `mshop_stock` WRITE;
/*!40000 ALTER TABLE `mshop_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_stock_type`
--

DROP TABLE IF EXISTS `mshop_stock_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_stock_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_msstoty_sid_dom_code` (`siteid`,`domain`,`code`),
  KEY `idx_msstoty_sid_status_pos` (`siteid`,`status`,`pos`),
  KEY `idx_msstoty_sid_label` (`siteid`,`label`),
  KEY `idx_msstoty_sid_code` (`siteid`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_stock_type`
--

LOCK TABLES `mshop_stock_type` WRITE;
/*!40000 ALTER TABLE `mshop_stock_type` DISABLE KEYS */;
INSERT INTO `mshop_stock_type` VALUES (1,'1.','product','default','Standard',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup');
/*!40000 ALTER TABLE `mshop_stock_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_subscription`
--

DROP TABLE IF EXISTS `mshop_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_subscription` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `baseid` bigint(20) NOT NULL,
  `ordprodid` bigint(20) NOT NULL,
  `next` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `productid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `interval` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` smallint(6) DEFAULT 0,
  `period` smallint(6) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 0,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_mssub_sid_next_stat` (`siteid`,`next`,`status`),
  KEY `idx_mssub_sid_baseid` (`siteid`,`baseid`),
  KEY `idx_mssub_sid_opid` (`siteid`,`ordprodid`),
  KEY `idx_mssub_sid_pid_period` (`siteid`,`productid`,`period`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_subscription`
--

LOCK TABLES `mshop_subscription` WRITE;
/*!40000 ALTER TABLE `mshop_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_supplier`
--

DROP TABLE IF EXISTS `mshop_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_mssup_sid_code` (`siteid`,`code`),
  KEY `idx_mssup_sid_status` (`siteid`,`status`),
  KEY `idx_mssup_sid_label` (`siteid`,`label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_supplier`
--

LOCK TABLES `mshop_supplier` WRITE;
/*!40000 ALTER TABLE `mshop_supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_supplier_address`
--

DROP TABLE IF EXISTS `mshop_supplier_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_supplier_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int(11) NOT NULL,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vatid` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `salutation` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `firstname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address1` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address2` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address3` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postal` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countryid` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `telefax` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `longitude` double DEFAULT 0,
  `latitude` double DEFAULT 0,
  `birthday` date DEFAULT NULL,
  `pos` smallint(6) NOT NULL DEFAULT 0,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_mssupad_sid_rid` (`siteid`,`parentid`),
  KEY `fk_mssupad_pid` (`parentid`),
  CONSTRAINT `fk_mssupad_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_supplier` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_supplier_address`
--

LOCK TABLES `mshop_supplier_address` WRITE;
/*!40000 ALTER TABLE `mshop_supplier_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_supplier_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_supplier_list`
--

DROP TABLE IF EXISTS `mshop_supplier_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_supplier_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int(11) NOT NULL,
  `key` varchar(134) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_mssupli_pid_dm_sid_ty_rid` (`parentid`,`domain`,`siteid`,`type`,`refid`),
  KEY `idx_mssupli_pid_dm_sid_pos_rid` (`parentid`,`domain`,`siteid`,`pos`,`refid`),
  KEY `idx_mssupli_rid_dom_sid_ty` (`refid`,`domain`,`siteid`,`type`),
  KEY `idx_mssupli_key_sid` (`key`,`siteid`),
  KEY `fk_mssupli_pid` (`parentid`),
  CONSTRAINT `fk_mssupli_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_supplier` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_supplier_list`
--

LOCK TABLES `mshop_supplier_list` WRITE;
/*!40000 ALTER TABLE `mshop_supplier_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_supplier_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_supplier_list_type`
--

DROP TABLE IF EXISTS `mshop_supplier_list_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_supplier_list_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_mssuplity_sid_dom_code` (`siteid`,`domain`,`code`),
  KEY `idx_mssuplity_sid_status_pos` (`siteid`,`status`,`pos`),
  KEY `idx_mssuplity_sid_label` (`siteid`,`label`),
  KEY `idx_mssuplity_sid_code` (`siteid`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_supplier_list_type`
--

LOCK TABLES `mshop_supplier_list_type` WRITE;
/*!40000 ALTER TABLE `mshop_supplier_list_type` DISABLE KEYS */;
INSERT INTO `mshop_supplier_list_type` VALUES (1,'1.','attribute','default','Standard',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(2,'1.','product','promotion','Promotion',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(3,'1.','product','default','Standard',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(4,'1.','media','default','Standard',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(5,'1.','text','default','Standard',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup');
/*!40000 ALTER TABLE `mshop_supplier_list_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_tag`
--

DROP TABLE IF EXISTS `mshop_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_mstag_sid_dom_ty_lid_lab` (`siteid`,`domain`,`type`,`langid`,`label`),
  KEY `idx_mstag_sid_dom_langid` (`siteid`,`domain`,`langid`),
  KEY `idx_mstag_sid_dom_label` (`siteid`,`domain`,`label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_tag`
--

LOCK TABLES `mshop_tag` WRITE;
/*!40000 ALTER TABLE `mshop_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_tag_type`
--

DROP TABLE IF EXISTS `mshop_tag_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_tag_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_mstagty_sid_dom_code` (`siteid`,`domain`,`code`),
  KEY `idx_mstagty_sid_status_pos` (`siteid`,`status`,`pos`),
  KEY `idx_mstagty_sid_label` (`siteid`,`label`),
  KEY `idx_mstagty_sid_code` (`siteid`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_tag_type`
--

LOCK TABLES `mshop_tag_type` WRITE;
/*!40000 ALTER TABLE `mshop_tag_type` DISABLE KEYS */;
INSERT INTO `mshop_tag_type` VALUES (1,'1.','catalog','default','Standard',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(2,'1.','product','default','Standard',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup');
/*!40000 ALTER TABLE `mshop_tag_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_text`
--

DROP TABLE IF EXISTS `mshop_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_mstex_sid_domain_status` (`siteid`,`domain`,`status`),
  KEY `idx_mstex_sid_domain_langid` (`siteid`,`domain`,`langid`),
  KEY `idx_mstex_sid_dom_label` (`siteid`,`domain`,`label`),
  KEY `idx_mstex_sid_dom_cont` (`siteid`,`domain`,`content`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_text`
--

LOCK TABLES `mshop_text` WRITE;
/*!40000 ALTER TABLE `mshop_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_text_list`
--

DROP TABLE IF EXISTS `mshop_text_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_text_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int(11) NOT NULL,
  `key` varchar(134) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_mstexli_pid_dm_sid_ty_rid` (`parentid`,`domain`,`siteid`,`type`,`refid`),
  KEY `idx_mstexli_key_sid` (`key`,`siteid`),
  KEY `fk_mstexli_pid` (`parentid`),
  CONSTRAINT `fk_mstexli_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_text` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_text_list`
--

LOCK TABLES `mshop_text_list` WRITE;
/*!40000 ALTER TABLE `mshop_text_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_text_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_text_list_type`
--

DROP TABLE IF EXISTS `mshop_text_list_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_text_list_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_mstexlity_sid_dom_code` (`siteid`,`domain`,`code`),
  KEY `idx_mstexlity_sid_status_pos` (`siteid`,`status`,`pos`),
  KEY `idx_mstexlity_sid_label` (`siteid`,`label`),
  KEY `idx_mstexlity_sid_code` (`siteid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_text_list_type`
--

LOCK TABLES `mshop_text_list_type` WRITE;
/*!40000 ALTER TABLE `mshop_text_list_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `mshop_text_list_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mshop_text_type`
--

DROP TABLE IF EXISTS `mshop_text_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mshop_text_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_mstexty_sid_dom_code` (`siteid`,`domain`,`code`),
  KEY `idx_mstexty_sid_status_pos` (`siteid`,`status`,`pos`),
  KEY `idx_mstexty_sid_label` (`siteid`,`label`),
  KEY `idx_mstexty_sid_code` (`siteid`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mshop_text_type`
--

LOCK TABLES `mshop_text_type` WRITE;
/*!40000 ALTER TABLE `mshop_text_type` DISABLE KEYS */;
INSERT INTO `mshop_text_type` VALUES (1,'1.','attribute','name','Name',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(2,'1.','attribute','short','Short description',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(3,'1.','attribute','long','Long description',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(4,'1.','catalog','name','Name',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(5,'1.','catalog','short','Short description',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(6,'1.','catalog','long','Long description',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(7,'1.','catalog','url','URL segment',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(8,'1.','catalog','meta-keyword','Meta keywords',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(9,'1.','catalog','meta-description','Meta description',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(10,'1.','product','name','Name',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(11,'1.','product','short','Short description',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(12,'1.','product','long','Long description',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(13,'1.','product','url','URL segment',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(14,'1.','product','meta-keyword','Meta keywords',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(15,'1.','product','meta-description','Meta description',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(16,'1.','product','basket','Basket description',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(17,'1.','service','name','Name',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(18,'1.','service','short','Short description',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(19,'1.','service','long','Long description',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(20,'1.','supplier','name','Name',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(21,'1.','supplier','short','Short description',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup'),(22,'1.','supplier','long','Long description',0,1,'2022-06-27 10:36:23','2022-06-27 10:36:23','core:setup');
/*!40000 ALTER TABLE `mshop_text_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preferences`
--

DROP TABLE IF EXISTS `preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preferences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET latin1 NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `preferences_key_user_id_unique` (`key`,`user_id`),
  KEY `preferences_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferences`
--

LOCK TABLES `preferences` WRITE;
/*!40000 ALTER TABLE `preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('2s0B3AO79eooWkpknFnGIuoDBeNmODmQnKXz32pk',1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36','YToyMzp7czo2OiJfdG9rZW4iO3M6NDA6ImlKZ3piSm9wd3MxUnRBUVl4Q0ZHSW5OTmhMMTJPWXg1bE9yU09xdlAiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MjA6ImFpbWVvcy9iYXNrZXQvbG9jYWxlIjtzOjE0OiJkZWZhdWx0fHB0fEJSTCI7czoxOToiYWltZW9zL2Jhc2tldC9jYWNoZSI7YTo0OntzOjMyOiIyMDY2MzJkYjBmZWM4NWI0MjlhYTdmZjBmMjVmZDUxYSI7YjoxO3M6MzI6Ijg4N2Y2NDFlNGRlZDBmNmQ0MDY2OGU2ODNhNzg4YzVlIjtiOjE7czozMjoiNGFhOTIzMDkxYWFiMmVhYjcwZTEzMWMyMDhiYzNkMjIiO2I6MTtzOjMyOiJhMDkwN2NlYjAyYzQ3M2NmNDdkMTk0YzBjZGQ0ZDM5YSI7YjoxO31zOjMyOiIyMDY2MzJkYjBmZWM4NWI0MjlhYTdmZjBmMjVmZDUxYSI7czoxNTc6IjxsaW5rIHJlbD0ic3R5bGVzaGVldCIgaHJlZj0iL3ZlbmRvci9zaG9wL3RoZW1lcy9kZWZhdWx0L2Jhc2tldC1taW5pLmNzcz92PTEiPgo8c2NyaXB0IGRlZmVyIHNyYz0iL3ZlbmRvci9zaG9wL3RoZW1lcy9kZWZhdWx0L2Jhc2tldC1taW5pLmpzP3Y9MSI+PC9zY3JpcHQ+CgoiO3M6MzI6Ijg4N2Y2NDFlNGRlZDBmNmQ0MDY2OGU2ODNhNzg4YzVlIjtzOjEzMTc6Igo8c2VjdGlvbiBjbGFzcz0iYWltZW9zIGJhc2tldC1taW5pIiBkYXRhLWpzb251cmw9Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9qc29uYXBpIj4KCgoKPGRpdiBjbGFzcz0iYWltZW9zLW92ZXJsYXktb2Zmc2NyZWVuIj48L2Rpdj4KCjxkaXYgY2xhc3M9ImJhc2tldC1taW5pLW1haW4gbWVudSI+CjxzcGFuIGNsYXNzPSJxdWFudGl0eSI+MDwvc3Bhbj4KPHNwYW4gY2xhc3M9InZhbHVlIj4wLjAwIOKCrDwvc3Bhbj4KPC9kaXY+Cgo8ZGl2IGNsYXNzPSJiYXNrZXQtbWluaS1wcm9kdWN0IHpleW5lcCI+CjxkaXYgY2xhc3M9ImhlYWRlciByb3ciPgo8ZGl2IGNsYXNzPSJjb2wtMiBjbG9zZSI+PC9kaXY+CjxkaXYgY2xhc3M9ImNvbC04IG5hbWUiPkJhc2tldDwvZGl2Pgo8ZGl2IGNsYXNzPSJjb2wtMiI+PC9kaXY+CjwvZGl2PgoKPGRpdiBjbGFzcz0iYmFza2V0Ij4KPGRpdiBjbGFzcz0iYmFza2V0LWhlYWRlciByb3ciPgo8ZGl2IGNsYXNzPSJjb2wtNSBuYW1lIj5Qcm9kdWN0PC9kaXY+CjxkaXYgY2xhc3M9ImNvbC0yIHF1YW50aXR5Ij5RdHk8L2Rpdj4KPGRpdiBjbGFzcz0iY29sLTMgcHJpY2UiPlByaWNlPC9kaXY+CjxkaXYgY2xhc3M9ImNvbC0yIGFjdGlvbiI+PC9kaXY+CjwvZGl2Pgo8ZGl2IGNsYXNzPSJiYXNrZXQtYm9keSI+CjxkaXYgY2xhc3M9InByb2R1Y3QtaXRlbSByb3cgcHJvdG90eXBlIj4KPGRpdiBjbGFzcz0iY29sLTUgbmFtZSI+PC9kaXY+CjxkaXYgY2xhc3M9ImNvbC0yIHF1YW50aXR5Ij48L2Rpdj4KPGRpdiBjbGFzcz0iY29sLTMgcHJpY2UiPjwvZGl2Pgo8ZGl2IGNsYXNzPSJjb2wtMiBhY3Rpb24iPjxhIGNsYXNzPSJkZWxldGUiIGhyZWY9IiMiIHRpdGxlPSJEZWxldGUiPjwvYT48L2Rpdj4KPC9kaXY+CjwvZGl2Pgo8ZGl2IGNsYXNzPSJiYXNrZXQtZm9vdGVyIj4KPGRpdiBjbGFzcz0iZGVsaXZlcnkgcm93Ij4KPGRpdiBjbGFzcz0iY29sLTcgbmFtZSI+ClNoaXBwaW5nPC9kaXY+CjxkaXYgY2xhc3M9ImNvbC0zIHByaWNlIj4KMC4wMCDigqw8L2Rpdj4KPGRpdiBjbGFzcz0iY29sLTIgYWN0aW9uIj48L2Rpdj4KPC9kaXY+CjxkaXYgY2xhc3M9InRvdGFsIHJvdyI+CjxkaXYgY2xhc3M9ImNvbC03IG5hbWUiPgpUb3RhbDwvZGl2Pgo8ZGl2IGNsYXNzPSJjb2wtMyBwcmljZSI+CjAuMDAg4oKsPC9kaXY+CjxkaXYgY2xhc3M9ImNvbC0yIGFjdGlvbiI+PC9kaXY+CjwvZGl2Pgo8L2Rpdj4KPC9kaXY+CjxkaXYgY2xhc3M9InRvLWJhc2tldCI+CjxhIGNsYXNzPSJidG4gYnRuLXByaW1hcnkiIGhyZWY9Ii9zaG9wL2Jhc2tldCI+CkJhc2tldDwvYT4KPC9kaXY+CjwvZGl2Pgo8L3NlY3Rpb24+CiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9maWxlIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjM1OiJhaW1lb3MvY2F0YWxvZy9zZXNzaW9uL3Bpbm5lZC9jYWNoZSI7YToyOntzOjMyOiI3YjExMDJhYTk4MGU0ZDlkNGFmMWYyMDQ2YjRhMmRiZSI7YjoxO3M6MzI6ImYxNTk2NmFjMTE2NzA2ZjMzMWFmYjQ5NWRjYmQ4MzdkIjtiOjE7fXM6MzI6IjdiMTEwMmFhOTgwZTRkOWQ0YWYxZjIwNDZiNGEyZGJlIjtzOjE5NzoiPHNlY3Rpb24gY2xhc3M9ImNhdGFsb2ctc2Vzc2lvbi1waW5uZWQiPgo8ZGl2IGNsYXNzPSJjb250YWluZXIteHhsIj4KPGgyIGNsYXNzPSJoZWFkZXIgcGlubmVkIj4KUGlubmVkIHByb2R1Y3RzPHNwYW4gY2xhc3M9ImNvdW50Ij4wPC9zcGFuPgo8L2gyPgoKPHVsIGNsYXNzPSJwaW5uZWQtaXRlbXMiPgo8L3VsPgo8L2Rpdj4KPC9zZWN0aW9uPgoiO3M6NDA6ImFpbWVvcy9jYXRhbG9nL2xpc3RzL3BhcmFtcy9sYXN0L2RlZmF1bHQiO2E6MDp7fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6Mzk6ImFpbWVvcy9hZG1pbi9qcWFkbS9sb2NhbGUvbGFuZ3VhZ2UvcGFnZSI7YToxOntzOjU6InN0YXJ0IjtzOjE6IjAiO31zOjQxOiJhaW1lb3MvYWRtaW4vanFhZG0vbG9jYWxlL2N1cnJlbmN5L2ZpZWxkcyI7YTozOntpOjA7czoyMjoibG9jYWxlLmN1cnJlbmN5LnN0YXR1cyI7aToxO3M6MjA6ImxvY2FsZS5jdXJyZW5jeS5jb2RlIjtpOjI7czoyMToibG9jYWxlLmN1cnJlbmN5LmxhYmVsIjt9czo0MToiYWltZW9zL2FkbWluL2pxYWRtL2xvY2FsZS9jdXJyZW5jeS9maWx0ZXIiO2E6Mzp7czozOiJrZXkiO2E6Mzp7aToyO3M6MjI6ImxvY2FsZS5jdXJyZW5jeS5zdGF0dXMiO2k6MztzOjIwOiJsb2NhbGUuY3VycmVuY3kuY29kZSI7aTo0O3M6MjE6ImxvY2FsZS5jdXJyZW5jeS5sYWJlbCI7fXM6Mjoib3AiO2E6Mzp7aToyO3M6MjoiPT0iO2k6MztzOjI6Ij09IjtpOjQ7czoyOiI9fiI7fXM6MzoidmFsIjthOjM6e2k6MjtOO2k6MztzOjM6IkJSTCI7aTo0O047fX1zOjM5OiJhaW1lb3MvYWRtaW4vanFhZG0vbG9jYWxlL2N1cnJlbmN5L3BhZ2UiO2E6MTp7czo1OiJzdGFydCI7czoxOiIwIjt9czo0MToiYWltZW9zL2FkbWluL2pxYWRtL2xvY2FsZS9sYW5ndWFnZS9maWVsZHMiO2E6Mzp7aTowO3M6MjI6ImxvY2FsZS5sYW5ndWFnZS5zdGF0dXMiO2k6MTtzOjIwOiJsb2NhbGUubGFuZ3VhZ2UuY29kZSI7aToyO3M6MjE6ImxvY2FsZS5sYW5ndWFnZS5sYWJlbCI7fXM6NDE6ImFpbWVvcy9hZG1pbi9qcWFkbS9sb2NhbGUvbGFuZ3VhZ2UvZmlsdGVyIjthOjM6e3M6Mzoia2V5IjthOjM6e2k6MjtzOjIyOiJsb2NhbGUubGFuZ3VhZ2Uuc3RhdHVzIjtpOjM7czoyMDoibG9jYWxlLmxhbmd1YWdlLmNvZGUiO2k6NDtzOjIxOiJsb2NhbGUubGFuZ3VhZ2UubGFiZWwiO31zOjI6Im9wIjthOjM6e2k6MjtzOjI6Ij09IjtpOjM7czoyOiI9PSI7aTo0O3M6MjoiPX4iO31zOjM6InZhbCI7YTozOntpOjI7TjtpOjM7TjtpOjQ7Tjt9fXM6MTg6ImFpbWVvcy9iYXNrZXQvbGlzdCI7YToxOntzOjQ0OiJhaW1lb3MvYmFza2V0L2NvbnRlbnQtZGVmYXVsdC1wdC1CUkwtZGVmYXVsdCI7czo0NDoiYWltZW9zL2Jhc2tldC9jb250ZW50LWRlZmF1bHQtcHQtQlJMLWRlZmF1bHQiO31zOjQ0OiJhaW1lb3MvYmFza2V0L2NvbnRlbnQtZGVmYXVsdC1wdC1CUkwtZGVmYXVsdCI7czozMDI4OiJPOjM3OiJBaW1lb3NcTVNob3BcT3JkZXJcSXRlbVxCYXNlXFN0YW5kYXJkIjoxMjp7czo4OiIAKgBiZGF0YSI7YToxOntzOjE3OiJvcmRlci5iYXNlLnNpdGVpZCI7czoyOiIxLiI7fXM6MTA6IgAqAGNvdXBvbnMiO2E6MDp7fXM6MTE6IgAqAHByb2R1Y3RzIjthOjA6e31zOjExOiIAKgBzZXJ2aWNlcyI7YTowOnt9czoxMjoiACoAYWRkcmVzc2VzIjthOjA6e31zOjExOiIAKgBtb2RpZmllZCI7YjowO3M6MTI6IgAqAGxpc3RlbmVycyI7YTowOnt9czo4OiIAKgBwcmljZSI7TzozMjoiQWltZW9zXE1TaG9wXFByaWNlXEl0ZW1cU3RhbmRhcmQiOjE3OntzOjQwOiIAQWltZW9zXE1TaG9wXENvbW1vblxJdGVtXEJhc2UAYXZhaWxhYmxlIjtiOjE7czozOToiAEFpbWVvc1xNU2hvcFxDb21tb25cSXRlbVxCYXNlAG1vZGlmaWVkIjtiOjA7czozNzoiAEFpbWVvc1xNU2hvcFxDb21tb25cSXRlbVxCYXNlAHByZWZpeCI7czo2OiJwcmljZS4iO3M6ODoiACoAYmRhdGEiO2E6NTp7czoxMjoicHJpY2Uuc2l0ZWlkIjtzOjI6IjEuIjtzOjE2OiJwcmljZS5jdXJyZW5jeWlkIjtzOjM6IkJSTCI7czoxMToiLmN1cnJlbmN5aWQiO3M6MzoiQlJMIjtzOjEwOiIucHJlY2lzaW9uIjtpOjI7czoxMzoicHJpY2UudGF4ZmxhZyI7YjoxO31zOjM5OiIAQWltZW9zXE1TaG9wXFByaWNlXEl0ZW1cQmFzZQBwcmVjaXNpb24iO2k6MjtzOjM5OiIAQWltZW9zXE1TaG9wXFByaWNlXEl0ZW1cQmFzZQBsaXN0SXRlbXMiO2E6MDp7fXM6NDI6IgBBaW1lb3NcTVNob3BcUHJpY2VcSXRlbVxCYXNlAGxpc3RSZWZJdGVtcyI7YTowOnt9czo0MToiAEFpbWVvc1xNU2hvcFxQcmljZVxJdGVtXEJhc2UAbGlzdFJtSXRlbXMiO2E6MDp7fXM6NDI6IgBBaW1lb3NcTVNob3BcUHJpY2VcSXRlbVxCYXNlAGxpc3RQcmVwYXJlZCI7YjowO3M6Mzk6IgBBaW1lb3NcTVNob3BcUHJpY2VcSXRlbVxCYXNlAGxpc3RSbU1hcCI7YTowOnt9czozNzoiAEFpbWVvc1xNU2hvcFxQcmljZVxJdGVtXEJhc2UAbGlzdE1hcCI7YTowOnt9czozNzoiAEFpbWVvc1xNU2hvcFxQcmljZVxJdGVtXEJhc2UAbGlzdE1heCI7aTowO3M6Mzk6IgBBaW1lb3NcTVNob3BcUHJpY2VcSXRlbVxCYXNlAHByb3BJdGVtcyI7YTowOnt9czo0MToiAEFpbWVvc1xNU2hvcFxQcmljZVxJdGVtXEJhc2UAcHJvcFJtSXRlbXMiO2E6MDp7fXM6Mzc6IgBBaW1lb3NcTVNob3BcUHJpY2VcSXRlbVxCYXNlAHByb3BNYXgiO2k6MDtzOjQ0OiIAQWltZW9zXE1TaG9wXFByaWNlXEl0ZW1cU3RhbmRhcmQAY3VycmVuY3lpZCI7czozOiJCUkwiO3M6Mzc6IgBBaW1lb3NcTVNob3BcUHJpY2VcSXRlbVxTdGFuZGFyZAB0YXgiO047fXM6OToiACoAbG9jYWxlIjtPOjMzOiJBaW1lb3NcTVNob3BcTG9jYWxlXEl0ZW1cU3RhbmRhcmQiOjY6e3M6NDA6IgBBaW1lb3NcTVNob3BcQ29tbW9uXEl0ZW1cQmFzZQBhdmFpbGFibGUiO2I6MTtzOjM5OiIAQWltZW9zXE1TaG9wXENvbW1vblxJdGVtXEJhc2UAbW9kaWZpZWQiO2I6MDtzOjM3OiIAQWltZW9zXE1TaG9wXENvbW1vblxJdGVtXEJhc2UAcHJlZml4IjtzOjc6ImxvY2FsZS4iO3M6ODoiACoAYmRhdGEiO2E6MTE6e3M6MzoicG9zIjtpOjA7czo5OiJsb2NhbGUuaWQiO2k6NztzOjEzOiJsb2NhbGUuc2l0ZWlkIjtzOjI6IjEuIjtzOjc6InNpdGVfaWQiO2k6MTtzOjE3OiJsb2NhbGUubGFuZ3VhZ2VpZCI7czoyOiJwdCI7czoxNzoibG9jYWxlLmN1cnJlbmN5aWQiO3M6MzoiQlJMIjtzOjE1OiJsb2NhbGUucG9zaXRpb24iO2k6MDtzOjEzOiJsb2NhbGUuc3RhdHVzIjtpOjE7czoxMjoibG9jYWxlLm10aW1lIjtzOjE5OiIyMDIyLTA2LTI3IDEyOjA1OjE5IjtzOjEzOiJsb2NhbGUuZWRpdG9yIjtzOjE1OiJsdWNhc0BlbWFpbC5jb20iO3M6MTI6ImxvY2FsZS5jdGltZSI7czoxOToiMjAyMi0wNi0yNyAxMjowNToxOSI7fXM6NDM6IgBBaW1lb3NcTVNob3BcTG9jYWxlXEl0ZW1cU3RhbmRhcmQAc2l0ZUl0ZW0iO086Mzg6IkFpbWVvc1xNU2hvcFxMb2NhbGVcSXRlbVxTaXRlXFN0YW5kYXJkIjo1OntzOjQwOiIAQWltZW9zXE1TaG9wXENvbW1vblxJdGVtXEJhc2UAYXZhaWxhYmxlIjtiOjE7czozOToiAEFpbWVvc1xNU2hvcFxDb21tb25cSXRlbVxCYXNlAG1vZGlmaWVkIjtiOjA7czozNzoiAEFpbWVvc1xNU2hvcFxDb21tb25cSXRlbVxCYXNlAHByZWZpeCI7czoxMjoibG9jYWxlLnNpdGUuIjtzOjg6IgAqAGJkYXRhIjthOjEzOntzOjE0OiJsb2NhbGUuc2l0ZS5pZCI7aToxO3M6MTg6ImxvY2FsZS5zaXRlLnNpdGVpZCI7czoyOiIxLiI7czoxNjoibG9jYWxlLnNpdGUuY29kZSI7czo3OiJkZWZhdWx0IjtzOjE3OiJsb2NhbGUuc2l0ZS5sYWJlbCI7czo4OiJUdXJxdWVzYSI7czoxODoibG9jYWxlLnNpdGUuY29uZmlnIjthOjE6e3M6ODoicmVzb3VyY2UiO2E6MTp7czo1OiJlbWFpbCI7YToyOntzOjEwOiJmcm9tLWVtYWlsIjtzOjE1OiJsdWNhc0BlbWFpbC5jb20iO3M6OToiZnJvbS1uYW1lIjtzOjg6IlR1cnF1ZXNhIjt9fX1zOjE4OiJsb2NhbGUuc2l0ZS5zdGF0dXMiO2k6MTtzOjE2OiJsb2NhbGUuc2l0ZS5pY29uIjtzOjEyOiIxLmQvaWNvbi5wbmciO3M6MTY6ImxvY2FsZS5zaXRlLmxvZ28iO2E6MTp7aToxO3M6MTI6IjEuZC9sb2dvLnBuZyI7fXM6MTc6ImxvY2FsZS5zaXRlLnJlZmlkIjtzOjA6IiI7czoxNzoibG9jYWxlLnNpdGUudGhlbWUiO3M6NzoiZGVmYXVsdCI7czoxODoibG9jYWxlLnNpdGUuZWRpdG9yIjtzOjE1OiJsdWNhc0BlbWFpbC5jb20iO3M6MTc6ImxvY2FsZS5zaXRlLm10aW1lIjtzOjE5OiIyMDIyLTA2LTI3IDExOjU4OjA2IjtzOjE3OiJsb2NhbGUuc2l0ZS5jdGltZSI7czoxOToiMjAyMi0wNi0yNyAxMDozNjoyMiI7fXM6NDg6IgBBaW1lb3NcTVNob3BcTG9jYWxlXEl0ZW1cU2l0ZVxTdGFuZGFyZABjaGlsZHJlbiI7YTowOnt9fXM6NDA6IgBBaW1lb3NcTVNob3BcTG9jYWxlXEl0ZW1cU3RhbmRhcmQAc2l0ZXMiO2E6MTp7aTowO3M6MjoiMS4iO319czoxMToiACoAY3VzdG9tZXIiO047czo5OiIAKgByZWNhbGMiO2I6MDtzOjEyOiIAKgBhdmFpbGFibGUiO2I6MTt9IjtzOjMyOiI0YWE5MjMwOTFhYWIyZWFiNzBlMTMxYzIwOGJjM2QyMiI7czoxNTc6IjxsaW5rIHJlbD0ic3R5bGVzaGVldCIgaHJlZj0iL3ZlbmRvci9zaG9wL3RoZW1lcy9kZWZhdWx0L2Jhc2tldC1taW5pLmNzcz92PTEiPgo8c2NyaXB0IGRlZmVyIHNyYz0iL3ZlbmRvci9zaG9wL3RoZW1lcy9kZWZhdWx0L2Jhc2tldC1taW5pLmpzP3Y9MSI+PC9zY3JpcHQ+CgoiO3M6MzI6ImEwOTA3Y2ViMDJjNDczY2Y0N2QxOTRjMGNkZDRkMzlhIjtzOjEzMTc6Igo8c2VjdGlvbiBjbGFzcz0iYWltZW9zIGJhc2tldC1taW5pIiBkYXRhLWpzb251cmw9Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9qc29uYXBpIj4KCgoKPGRpdiBjbGFzcz0iYWltZW9zLW92ZXJsYXktb2Zmc2NyZWVuIj48L2Rpdj4KCjxkaXYgY2xhc3M9ImJhc2tldC1taW5pLW1haW4gbWVudSI+CjxzcGFuIGNsYXNzPSJxdWFudGl0eSI+MDwvc3Bhbj4KPHNwYW4gY2xhc3M9InZhbHVlIj4wLDAwIFIkPC9zcGFuPgo8L2Rpdj4KCjxkaXYgY2xhc3M9ImJhc2tldC1taW5pLXByb2R1Y3QgemV5bmVwIj4KPGRpdiBjbGFzcz0iaGVhZGVyIHJvdyI+CjxkaXYgY2xhc3M9ImNvbC0yIGNsb3NlIj48L2Rpdj4KPGRpdiBjbGFzcz0iY29sLTggbmFtZSI+Q2FycmluaG88L2Rpdj4KPGRpdiBjbGFzcz0iY29sLTIiPjwvZGl2Pgo8L2Rpdj4KCjxkaXYgY2xhc3M9ImJhc2tldCI+CjxkaXYgY2xhc3M9ImJhc2tldC1oZWFkZXIgcm93Ij4KPGRpdiBjbGFzcz0iY29sLTUgbmFtZSI+UHJvZHV0bzwvZGl2Pgo8ZGl2IGNsYXNzPSJjb2wtMiBxdWFudGl0eSI+UXRkPC9kaXY+CjxkaXYgY2xhc3M9ImNvbC0zIHByaWNlIj5QcmXDp288L2Rpdj4KPGRpdiBjbGFzcz0iY29sLTIgYWN0aW9uIj48L2Rpdj4KPC9kaXY+CjxkaXYgY2xhc3M9ImJhc2tldC1ib2R5Ij4KPGRpdiBjbGFzcz0icHJvZHVjdC1pdGVtIHJvdyBwcm90b3R5cGUiPgo8ZGl2IGNsYXNzPSJjb2wtNSBuYW1lIj48L2Rpdj4KPGRpdiBjbGFzcz0iY29sLTIgcXVhbnRpdHkiPjwvZGl2Pgo8ZGl2IGNsYXNzPSJjb2wtMyBwcmljZSI+PC9kaXY+CjxkaXYgY2xhc3M9ImNvbC0yIGFjdGlvbiI+PGEgY2xhc3M9ImRlbGV0ZSIgaHJlZj0iIyIgdGl0bGU9IlJlbW92ZXIiPjwvYT48L2Rpdj4KPC9kaXY+CjwvZGl2Pgo8ZGl2IGNsYXNzPSJiYXNrZXQtZm9vdGVyIj4KPGRpdiBjbGFzcz0iZGVsaXZlcnkgcm93Ij4KPGRpdiBjbGFzcz0iY29sLTcgbmFtZSI+CkVudmlvPC9kaXY+CjxkaXYgY2xhc3M9ImNvbC0zIHByaWNlIj4KMCwwMCBSJDwvZGl2Pgo8ZGl2IGNsYXNzPSJjb2wtMiBhY3Rpb24iPjwvZGl2Pgo8L2Rpdj4KPGRpdiBjbGFzcz0idG90YWwgcm93Ij4KPGRpdiBjbGFzcz0iY29sLTcgbmFtZSI+ClRvdGFsPC9kaXY+CjxkaXYgY2xhc3M9ImNvbC0zIHByaWNlIj4KMCwwMCBSJDwvZGl2Pgo8ZGl2IGNsYXNzPSJjb2wtMiBhY3Rpb24iPjwvZGl2Pgo8L2Rpdj4KPC9kaXY+CjwvZGl2Pgo8ZGl2IGNsYXNzPSJ0by1iYXNrZXQiPgo8YSBjbGFzcz0iYnRuIGJ0bi1wcmltYXJ5IiBocmVmPSIvc2hvcC9iYXNrZXQiPgpDYXJyaW5obzwvYT4KPC9kaXY+CjwvZGl2Pgo8L3NlY3Rpb24+CiI7czozMjoiZjE1OTY2YWMxMTY3MDZmMzMxYWZiNDk1ZGNiZDgzN2QiO3M6MTk5OiI8c2VjdGlvbiBjbGFzcz0iY2F0YWxvZy1zZXNzaW9uLXBpbm5lZCI+CjxkaXYgY2xhc3M9ImNvbnRhaW5lci14eGwiPgo8aDIgY2xhc3M9ImhlYWRlciBwaW5uZWQiPgpQcm9kdXRvcyBtYXJjYWRvczxzcGFuIGNsYXNzPSJjb3VudCI+MDwvc3Bhbj4KPC9oMj4KCjx1bCBjbGFzcz0icGlubmVkLWl0ZW1zIj4KPC91bD4KPC9kaXY+Cjwvc2VjdGlvbj4KIjt9',1656342614),('XiCFopwEQ7QvgWMY1oEZgW0SLuvfmBm0Reqht4UG',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36','YToxMDp7czo2OiJfdG9rZW4iO3M6NDA6IkcyVEpyOTNTRHp0ekZhQzF0UW1JZldwTjljOExoekVYWmQ1SkNHVHIiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI2OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvc2hvcCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MjA6ImFpbWVvcy9iYXNrZXQvbG9jYWxlIjtzOjE0OiJkZWZhdWx0fGVufEVVUiI7czoxOToiYWltZW9zL2Jhc2tldC9jYWNoZSI7YToyOntzOjMyOiIyMDY2MzJkYjBmZWM4NWI0MjlhYTdmZjBmMjVmZDUxYSI7YjoxO3M6MzI6Ijg4N2Y2NDFlNGRlZDBmNmQ0MDY2OGU2ODNhNzg4YzVlIjtiOjE7fXM6MzI6IjIwNjYzMmRiMGZlYzg1YjQyOWFhN2ZmMGYyNWZkNTFhIjtzOjE1NzoiPGxpbmsgcmVsPSJzdHlsZXNoZWV0IiBocmVmPSIvdmVuZG9yL3Nob3AvdGhlbWVzL2RlZmF1bHQvYmFza2V0LW1pbmkuY3NzP3Y9MSI+CjxzY3JpcHQgZGVmZXIgc3JjPSIvdmVuZG9yL3Nob3AvdGhlbWVzL2RlZmF1bHQvYmFza2V0LW1pbmkuanM/dj0xIj48L3NjcmlwdD4KCiI7czozMjoiODg3ZjY0MWU0ZGVkMGY2ZDQwNjY4ZTY4M2E3ODhjNWUiO3M6MTMxNzoiCjxzZWN0aW9uIGNsYXNzPSJhaW1lb3MgYmFza2V0LW1pbmkiIGRhdGEtanNvbnVybD0iaHR0cDovLzEyNy4wLjAuMTo4MDAwL2pzb25hcGkiPgoKCgo8ZGl2IGNsYXNzPSJhaW1lb3Mtb3ZlcmxheS1vZmZzY3JlZW4iPjwvZGl2PgoKPGRpdiBjbGFzcz0iYmFza2V0LW1pbmktbWFpbiBtZW51Ij4KPHNwYW4gY2xhc3M9InF1YW50aXR5Ij4wPC9zcGFuPgo8c3BhbiBjbGFzcz0idmFsdWUiPjAuMDAg4oKsPC9zcGFuPgo8L2Rpdj4KCjxkaXYgY2xhc3M9ImJhc2tldC1taW5pLXByb2R1Y3QgemV5bmVwIj4KPGRpdiBjbGFzcz0iaGVhZGVyIHJvdyI+CjxkaXYgY2xhc3M9ImNvbC0yIGNsb3NlIj48L2Rpdj4KPGRpdiBjbGFzcz0iY29sLTggbmFtZSI+QmFza2V0PC9kaXY+CjxkaXYgY2xhc3M9ImNvbC0yIj48L2Rpdj4KPC9kaXY+Cgo8ZGl2IGNsYXNzPSJiYXNrZXQiPgo8ZGl2IGNsYXNzPSJiYXNrZXQtaGVhZGVyIHJvdyI+CjxkaXYgY2xhc3M9ImNvbC01IG5hbWUiPlByb2R1Y3Q8L2Rpdj4KPGRpdiBjbGFzcz0iY29sLTIgcXVhbnRpdHkiPlF0eTwvZGl2Pgo8ZGl2IGNsYXNzPSJjb2wtMyBwcmljZSI+UHJpY2U8L2Rpdj4KPGRpdiBjbGFzcz0iY29sLTIgYWN0aW9uIj48L2Rpdj4KPC9kaXY+CjxkaXYgY2xhc3M9ImJhc2tldC1ib2R5Ij4KPGRpdiBjbGFzcz0icHJvZHVjdC1pdGVtIHJvdyBwcm90b3R5cGUiPgo8ZGl2IGNsYXNzPSJjb2wtNSBuYW1lIj48L2Rpdj4KPGRpdiBjbGFzcz0iY29sLTIgcXVhbnRpdHkiPjwvZGl2Pgo8ZGl2IGNsYXNzPSJjb2wtMyBwcmljZSI+PC9kaXY+CjxkaXYgY2xhc3M9ImNvbC0yIGFjdGlvbiI+PGEgY2xhc3M9ImRlbGV0ZSIgaHJlZj0iIyIgdGl0bGU9IkRlbGV0ZSI+PC9hPjwvZGl2Pgo8L2Rpdj4KPC9kaXY+CjxkaXYgY2xhc3M9ImJhc2tldC1mb290ZXIiPgo8ZGl2IGNsYXNzPSJkZWxpdmVyeSByb3ciPgo8ZGl2IGNsYXNzPSJjb2wtNyBuYW1lIj4KU2hpcHBpbmc8L2Rpdj4KPGRpdiBjbGFzcz0iY29sLTMgcHJpY2UiPgowLjAwIOKCrDwvZGl2Pgo8ZGl2IGNsYXNzPSJjb2wtMiBhY3Rpb24iPjwvZGl2Pgo8L2Rpdj4KPGRpdiBjbGFzcz0idG90YWwgcm93Ij4KPGRpdiBjbGFzcz0iY29sLTcgbmFtZSI+ClRvdGFsPC9kaXY+CjxkaXYgY2xhc3M9ImNvbC0zIHByaWNlIj4KMC4wMCDigqw8L2Rpdj4KPGRpdiBjbGFzcz0iY29sLTIgYWN0aW9uIj48L2Rpdj4KPC9kaXY+CjwvZGl2Pgo8L2Rpdj4KPGRpdiBjbGFzcz0idG8tYmFza2V0Ij4KPGEgY2xhc3M9ImJ0biBidG4tcHJpbWFyeSIgaHJlZj0iL3Nob3AvYmFza2V0Ij4KQmFza2V0PC9hPgo8L2Rpdj4KPC9kaXY+Cjwvc2VjdGlvbj4KIjtzOjM1OiJhaW1lb3MvY2F0YWxvZy9zZXNzaW9uL3Bpbm5lZC9jYWNoZSI7YToxOntzOjMyOiI3YjExMDJhYTk4MGU0ZDlkNGFmMWYyMDQ2YjRhMmRiZSI7YjoxO31zOjMyOiI3YjExMDJhYTk4MGU0ZDlkNGFmMWYyMDQ2YjRhMmRiZSI7czoxOTc6IjxzZWN0aW9uIGNsYXNzPSJjYXRhbG9nLXNlc3Npb24tcGlubmVkIj4KPGRpdiBjbGFzcz0iY29udGFpbmVyLXh4bCI+CjxoMiBjbGFzcz0iaGVhZGVyIHBpbm5lZCI+ClBpbm5lZCBwcm9kdWN0czxzcGFuIGNsYXNzPSJjb3VudCI+MDwvc3Bhbj4KPC9oMj4KCjx1bCBjbGFzcz0icGlubmVkLWl0ZW1zIj4KPC91bD4KPC9kaXY+Cjwvc2VjdGlvbj4KIjtzOjQwOiJhaW1lb3MvY2F0YWxvZy9saXN0cy9wYXJhbXMvbGFzdC9kZWZhdWx0IjthOjA6e319',1656336999);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_invitations`
--

DROP TABLE IF EXISTS `team_invitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_invitations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `team_id` bigint(20) unsigned NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`),
  CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_invitations`
--

LOCK TABLES `team_invitations` WRITE;
/*!40000 ALTER TABLE `team_invitations` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_invitations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_user`
--

DROP TABLE IF EXISTS `team_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `team_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_user`
--

LOCK TABLES `team_user` WRITE;
/*!40000 ALTER TABLE `team_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teams_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` date DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `superuser` smallint(6) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vatid` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `salutation` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `firstname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address1` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address2` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address3` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postal` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countryid` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `telefax` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `longitude` double DEFAULT 0,
  `latitude` double DEFAULT 0,
  `birthday` date DEFAULT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `unq_lvu_email` (`email`),
  KEY `idx_lvu_langid` (`langid`),
  KEY `idx_lvu_last_first` (`lastname`,`firstname`),
  KEY `idx_lvu_post_addr1` (`postal`,`address1`),
  KEY `idx_lvu_post_city` (`postal`,`city`),
  KEY `idx_lvu_lastname` (`lastname`),
  KEY `idx_lvu_address1` (`address1`),
  KEY `idx_lvu_city` (`city`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'lucas@email.com','lucas@email.com','2022-06-27','$2y$10$QewamsiAQg69M1ESbX.CFeeHelcGPuQsiCglGyP98KQ4XXetSkaDS',NULL,NULL,NULL,'QxLS6EAV2IOOVwyA8Htgue4I1tuZ185RbNnFtYU6nN7TNkYgupPEviIbY6Ns',NULL,NULL,'2022-06-27 14:00:13','2022-06-27 14:00:13','',1,1,'','','','','','','','','','','','',NULL,NULL,'','','',NULL,NULL,NULL,'aimeos:account');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_address`
--

DROP TABLE IF EXISTS `users_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` bigint(20) unsigned NOT NULL,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vatid` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salutation` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address3` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countryid` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefax` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` double DEFAULT 0,
  `latitude` double DEFAULT 0,
  `birthday` date DEFAULT NULL,
  `pos` smallint(6) NOT NULL DEFAULT 0,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_lvuad_pid` (`parentid`),
  KEY `idx_lvuad_langid` (`langid`),
  KEY `idx_lvuad_sid_last_first` (`siteid`,`lastname`,`firstname`),
  KEY `idx_lvuad_sid_post_addr1` (`siteid`,`postal`,`address1`),
  KEY `idx_lvuad_sid_post_ci` (`siteid`,`postal`,`city`),
  KEY `idx_lvuad_sid_city` (`siteid`,`city`),
  KEY `idx_lvuad_sid_email` (`siteid`,`email`),
  CONSTRAINT `fk_lvuad_pid` FOREIGN KEY (`parentid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_address`
--

LOCK TABLES `users_address` WRITE;
/*!40000 ALTER TABLE `users_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_list`
--

DROP TABLE IF EXISTS `users_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` bigint(20) unsigned NOT NULL,
  `key` varchar(134) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 0,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_lvuli_pid_dm_sid_ty_rid` (`parentid`,`domain`,`siteid`,`type`,`refid`),
  KEY `idx_lvuli_key_sid` (`key`,`siteid`),
  KEY `fk_lvuli_pid` (`parentid`),
  CONSTRAINT `fk_lvuli_pid` FOREIGN KEY (`parentid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_list`
--

LOCK TABLES `users_list` WRITE;
/*!40000 ALTER TABLE `users_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_list_type`
--

DROP TABLE IF EXISTS `users_list_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_list_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 0,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_lvulity_sid_dom_code` (`siteid`,`domain`,`code`),
  KEY `idx_lvulity_sid_status_pos` (`siteid`,`status`,`pos`),
  KEY `idx_lvulity_sid_label` (`siteid`,`label`),
  KEY `idx_lvulity_sid_code` (`siteid`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_list_type`
--

LOCK TABLES `users_list_type` WRITE;
/*!40000 ALTER TABLE `users_list_type` DISABLE KEYS */;
INSERT INTO `users_list_type` VALUES (1,'1.','customer/group','default','Standard',0,1,'2022-06-27 10:36:22','2022-06-27 10:36:22','core:setup'),(2,'1.','product','default','Standard',0,1,'2022-06-27 10:36:22','2022-06-27 10:36:22','core:setup'),(3,'1.','product','favorite','Favorite',0,1,'2022-06-27 10:36:22','2022-06-27 10:36:22','core:setup'),(4,'1.','product','watch','Watch list',0,1,'2022-06-27 10:36:22','2022-06-27 10:36:22','core:setup'),(5,'1.','service','default','Standard',0,1,'2022-06-27 10:36:22','2022-06-27 10:36:22','core:setup');
/*!40000 ALTER TABLE `users_list_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_property`
--

DROP TABLE IF EXISTS `users_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_property` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` bigint(20) unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_lvupr_sid_ty_lid_value` (`parentid`,`siteid`,`type`,`langid`,`value`),
  KEY `fk_lvupr_key_sid` (`key`,`siteid`),
  KEY `fk_lvupr_pid` (`parentid`),
  CONSTRAINT `fk_lvupr_pid` FOREIGN KEY (`parentid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_property`
--

LOCK TABLES `users_property` WRITE;
/*!40000 ALTER TABLE `users_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_property_type`
--

DROP TABLE IF EXISTS `users_property_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_property_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 0,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_lvuprty_sid_dom_code` (`siteid`,`domain`,`code`),
  KEY `idx_lvuprty_sid_status_pos` (`siteid`,`status`,`pos`),
  KEY `idx_lvuprty_sid_label` (`siteid`,`label`),
  KEY `idx_lvuprty_sid_code` (`siteid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_property_type`
--

LOCK TABLES `users_property_type` WRITE;
/*!40000 ALTER TABLE `users_property_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_property_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-27 12:15:43
