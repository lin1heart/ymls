-- MySQL dump 10.13  Distrib 5.7.21, for osx10.13 (x86_64)
--
-- Host: 47.96.123.41    Database: ghost
-- ------------------------------------------------------
-- Server version	5.7.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accesstokens`
--

DROP TABLE IF EXISTS `accesstokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accesstokens` (
  `id` varchar(24) NOT NULL,
  `token` varchar(191) NOT NULL,
  `user_id` varchar(24) NOT NULL,
  `client_id` varchar(24) NOT NULL,
  `issued_by` varchar(24) DEFAULT NULL,
  `expires` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accesstokens_token_unique` (`token`),
  KEY `accesstokens_user_id_foreign` (`user_id`),
  KEY `accesstokens_client_id_foreign` (`client_id`),
  CONSTRAINT `accesstokens_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  CONSTRAINT `accesstokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesstokens`
--

LOCK TABLES `accesstokens` WRITE;
/*!40000 ALTER TABLE `accesstokens` DISABLE KEYS */;
INSERT INTO `accesstokens` VALUES ('5be1a14f3c88b300015fb3b3','PBadHzdfX5RIN7sNrtWAObkY1oa19TyGzdy83XkC7LrRIq49FySWkDv6L9WlJwGKeqldIOIKWw6vw9kh0GBfAKJBJHWCviKdEKvABQsG1krjpUFj17umWuwuth24oIB1Xg7y0JYXMhMJMAFuWdsoD72zC3Waa1lQDDUH66VvmoE0GqNtq6gdD9ihjr3K3lc','1','5be1a0994c322d003485e340','5be1a14f3c88b300015fb3b2',1544141551478),('5be1a66f3c88b300015fb3ba','QG0HAGu4T2fSGgvBZXgaLUoQBzrap67q793GpV5NnIkX6lNgi6Ih4BmAXZcEobqevwoVCHkvC5DV5MP2tyzBS2fioN8azGTG4Qrpysl46EnU9XqU5RYIfWXqrugk287CBXToL6S4UMbPLpr87U7IBngqnQxirjh0syvbxFhOPJtDZNcj7KlrFkVCrQ5mSyv','1','5be1a0994c322d003485e340','5be1a66f3c88b300015fb3b9',1541649849735),('5be2a20f2e173f0001a46910','F3CHsVsFPV9Opcmfl4D2dNlO3Qb99tzAUE6GzSazqzfACHx1Nl0TO16thMTAvuoxSKtGWJfPWRDuDdwpBXRVuelmJ302DrSLDUg0GizggYSKJ0C5hn7gvQ6LjZyNu7kz2mieqRmpcxZDDEvjS2xtBRHKhOZLyhey0HenddnKzygsXJ5DLJ2KrdGkz7Z54Gl','5be2a20e2e173f0001a4690d','5be1a0994c322d003485e340','5be2a20f2e173f0001a4690f',1544207279959),('5be2a3312e173f0001a4691a','3szvYKZrO0J6wP1lOkfsRW5sEWK0cxf3dEk91ET9TXHTyn5uBbWGMhDnEF8Vz0ZlT5lG0QZXFunS2DogvTWOPFIbSNUnqsvny9zkFLLuJ4gHC9SJPaGtHDA8W1cWFtEq34y2FuHVH4mvbJjDiNxQvp9M4WO5fUnC4dyoUmX1euoGWCqPnNRVqiVoC9ZuEMf','5be2a32f2e173f0001a46917','5be1a0994c322d003485e340','5be2a3312e173f0001a46919',1544207569008),('5be3b48d0125ed00018b8ed7','tPtlxbZoIDwRJ3Gh6s8IVSqX5V5poVQvI0CXBejIluyXUW7ZABhIY9XbjkO6t9H5NQU2bZ4w9FhVleyxWQ9a4tD0voljeh9fro3yPhWu9MsNXkOPlWMK4JgH3v2v5g7spYlxiDADqdDciIeJHkqFVXA7g5UQdXK4hNzsA0Xe47jo2lKfZf4mUwZy6XMkH6I','1','5be1a0994c322d003485e340','5be1a66f3c88b300015fb3b9',1544277549692),('5be4072c0125ed00018b8ee1','foXlEQVtiq7cqxOdwEV27tsFXLR1AQfIbpvFmSJY6CuZwgKja2X7QqGjDhryNxWRG7tocmXsY8eHIZcGRvZDkWO2tn8Y6eT4J0ym3olnVXJDKVrLwa6mUHCZs4SFtgfYZXGQBMZpW2h6yGDhMriprhZCfaTsd28fjj7ju5sgKtMnC43wWnWAsVffnNSx91K','5be407290125ed00018b8ede','5be1a0994c322d003485e340','5be4072c0125ed00018b8ee0',1544298700187);
/*!40000 ALTER TABLE `accesstokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_fields`
--

DROP TABLE IF EXISTS `app_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_fields` (
  `id` varchar(24) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` text,
  `type` varchar(50) NOT NULL DEFAULT 'html',
  `app_id` varchar(24) NOT NULL,
  `relatable_id` varchar(24) NOT NULL,
  `relatable_type` varchar(50) NOT NULL DEFAULT 'posts',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app_fields_app_id_foreign` (`app_id`),
  CONSTRAINT `app_fields_app_id_foreign` FOREIGN KEY (`app_id`) REFERENCES `apps` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_fields`
--

LOCK TABLES `app_fields` WRITE;
/*!40000 ALTER TABLE `app_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_settings`
--

DROP TABLE IF EXISTS `app_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_settings` (
  `id` varchar(24) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` text,
  `app_id` varchar(24) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_settings_key_unique` (`key`),
  KEY `app_settings_app_id_foreign` (`app_id`),
  CONSTRAINT `app_settings_app_id_foreign` FOREIGN KEY (`app_id`) REFERENCES `apps` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_settings`
--

LOCK TABLES `app_settings` WRITE;
/*!40000 ALTER TABLE `app_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apps`
--

DROP TABLE IF EXISTS `apps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apps` (
  `id` varchar(24) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `version` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'inactive',
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `apps_name_unique` (`name`),
  UNIQUE KEY `apps_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apps`
--

LOCK TABLES `apps` WRITE;
/*!40000 ALTER TABLE `apps` DISABLE KEYS */;
/*!40000 ALTER TABLE `apps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brute`
--

DROP TABLE IF EXISTS `brute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brute` (
  `key` varchar(191) NOT NULL,
  `firstRequest` bigint(20) NOT NULL,
  `lastRequest` bigint(20) NOT NULL,
  `lifetime` bigint(20) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brute`
--

LOCK TABLES `brute` WRITE;
/*!40000 ALTER TABLE `brute` DISABLE KEYS */;
INSERT INTO `brute` VALUES ('K0wIthGohs2AYszVDVML4Mi+9ZrERJoTif+8HNTT3Io=',1541670699579,1541670699579,1541674299653,1);
/*!40000 ALTER TABLE `brute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_trusted_domains`
--

DROP TABLE IF EXISTS `client_trusted_domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_trusted_domains` (
  `id` varchar(24) NOT NULL,
  `client_id` varchar(24) NOT NULL,
  `trusted_domain` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_trusted_domains_client_id_foreign` (`client_id`),
  CONSTRAINT `client_trusted_domains_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_trusted_domains`
--

LOCK TABLES `client_trusted_domains` WRITE;
/*!40000 ALTER TABLE `client_trusted_domains` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_trusted_domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` varchar(24) NOT NULL,
  `uuid` varchar(36) NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `redirection_uri` varchar(2000) DEFAULT NULL,
  `client_uri` varchar(2000) DEFAULT NULL,
  `auth_uri` varchar(2000) DEFAULT NULL,
  `logo` varchar(2000) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'development',
  `type` varchar(50) NOT NULL DEFAULT 'ua',
  `description` varchar(2000) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clients_name_unique` (`name`),
  UNIQUE KEY `clients_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES ('5be1a0994c322d003485e340','f3eecbab-9102-48eb-a031-99b134b684d6','Ghost Admin','ghost-admin','88cde9188821',NULL,NULL,NULL,NULL,'enabled','ua',NULL,'2018-11-06 14:09:29','1','2018-11-06 14:09:29','1'),('5be1a09a4c322d003485e341','bfc545ba-aa37-487e-8c0f-116f5e49ea40','Ghost Frontend','ghost-frontend','44b67f617d77',NULL,NULL,NULL,NULL,'enabled','ua',NULL,'2018-11-06 14:09:30','1','2018-11-06 14:09:30','1'),('5be1a09a4c322d003485e342','912e57a2-ac54-4455-bc5d-727dedc3d249','Ghost Scheduler','ghost-scheduler','fdcffc909ded',NULL,NULL,NULL,NULL,'enabled','web',NULL,'2018-11-06 14:09:30','1','2018-11-06 14:09:30','1'),('5be1a09a4c322d003485e343','4fe57fd4-39fa-43ee-9e9e-31b6ba8b5a62','Ghost Backup','ghost-backup','60898cc37b50',NULL,NULL,NULL,NULL,'enabled','web',NULL,'2018-11-06 14:09:30','1','2018-11-06 14:09:30','1');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invites`
--

DROP TABLE IF EXISTS `invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invites` (
  `id` varchar(24) NOT NULL,
  `role_id` varchar(24) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `token` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `expires` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `invites_token_unique` (`token`),
  UNIQUE KEY `invites_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invites`
--

LOCK TABLES `invites` WRITE;
/*!40000 ALTER TABLE `invites` DISABLE KEYS */;
INSERT INTO `invites` VALUES ('5be4071d0125ed00018b8edd','5be1a09a4c322d003485e346','pending','MTU0MjI3NTQ4NTMzNnwyODE3MzAzMDk3QHFxLmNvbXxjS05TTkFzWGtRR1pHM1Eyc3krcGkwSnFtdDZEUEprV21nYnN2RFlYYlM0PQ==','2817303097@qq.com',1542275485336,'2018-11-08 09:51:25','1','2018-11-08 09:51:25','1');
/*!40000 ALTER TABLE `invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `version` varchar(70) NOT NULL,
  `currentVersion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `migrations_name_version_unique` (`name`,`version`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'1-create-tables.js','init','1.25'),(2,'2-create-fixtures.js','init','1.25'),(3,'1-post-excerpt.js','1.3','1.25'),(4,'1-codeinjection-post.js','1.4','1.25'),(5,'1-og-twitter-post.js','1.5','1.25'),(6,'1-add-backup-client.js','1.7','1.25'),(7,'1-add-permissions-redirect.js','1.9','1.25'),(8,'1-custom-template-post.js','1.13','1.25'),(9,'2-theme-permissions.js','1.13','1.25'),(10,'1-add-webhooks-table.js','1.18','1.25'),(11,'1-webhook-permissions.js','1.19','1.25'),(12,'1-remove-settings-keys.js','1.20','1.25'),(13,'1-add-contributor-role.js','1.21','1.25'),(14,'1-multiple-authors-DDL.js','1.22','1.25'),(15,'1-multiple-authors-DML.js','1.22','1.25'),(16,'1-update-koenig-beta-html.js','1.25','1.25'),(17,'2-demo-post.js','1.25','1.25');
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations_lock`
--

DROP TABLE IF EXISTS `migrations_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations_lock` (
  `lock_key` varchar(191) NOT NULL,
  `locked` tinyint(1) DEFAULT '0',
  `acquired_at` datetime DEFAULT NULL,
  `released_at` datetime DEFAULT NULL,
  UNIQUE KEY `migrations_lock_lock_key_unique` (`lock_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations_lock`
--

LOCK TABLES `migrations_lock` WRITE;
/*!40000 ALTER TABLE `migrations_lock` DISABLE KEYS */;
INSERT INTO `migrations_lock` VALUES ('km01',0,'2018-11-08 01:14:11','2018-11-08 01:14:11');
/*!40000 ALTER TABLE `migrations_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` varchar(24) NOT NULL,
  `name` varchar(50) NOT NULL,
  `object_type` varchar(50) NOT NULL,
  `action_type` varchar(50) NOT NULL,
  `object_id` varchar(24) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES ('5be1a09a4c322d003485e349','Export database','db','exportContent',NULL,'2018-11-06 14:09:30','1','2018-11-06 14:09:30','1'),('5be1a09a4c322d003485e34a','Import database','db','importContent',NULL,'2018-11-06 14:09:30','1','2018-11-06 14:09:30','1'),('5be1a09a4c322d003485e34b','Delete all content','db','deleteAllContent',NULL,'2018-11-06 14:09:30','1','2018-11-06 14:09:30','1'),('5be1a09a4c322d003485e34c','Send mail','mail','send',NULL,'2018-11-06 14:09:30','1','2018-11-06 14:09:30','1'),('5be1a09a4c322d003485e34d','Browse notifications','notification','browse',NULL,'2018-11-06 14:09:30','1','2018-11-06 14:09:30','1'),('5be1a09b4c322d003485e34e','Add notifications','notification','add',NULL,'2018-11-06 14:09:31','1','2018-11-06 14:09:31','1'),('5be1a09b4c322d003485e34f','Delete notifications','notification','destroy',NULL,'2018-11-06 14:09:31','1','2018-11-06 14:09:31','1'),('5be1a09b4c322d003485e350','Browse posts','post','browse',NULL,'2018-11-06 14:09:31','1','2018-11-06 14:09:31','1'),('5be1a09b4c322d003485e351','Read posts','post','read',NULL,'2018-11-06 14:09:31','1','2018-11-06 14:09:31','1'),('5be1a09b4c322d003485e352','Edit posts','post','edit',NULL,'2018-11-06 14:09:31','1','2018-11-06 14:09:31','1'),('5be1a09b4c322d003485e353','Add posts','post','add',NULL,'2018-11-06 14:09:31','1','2018-11-06 14:09:31','1'),('5be1a09b4c322d003485e354','Delete posts','post','destroy',NULL,'2018-11-06 14:09:31','1','2018-11-06 14:09:31','1'),('5be1a09b4c322d003485e355','Browse settings','setting','browse',NULL,'2018-11-06 14:09:31','1','2018-11-06 14:09:31','1'),('5be1a09b4c322d003485e356','Read settings','setting','read',NULL,'2018-11-06 14:09:31','1','2018-11-06 14:09:31','1'),('5be1a09b4c322d003485e357','Edit settings','setting','edit',NULL,'2018-11-06 14:09:31','1','2018-11-06 14:09:31','1'),('5be1a09b4c322d003485e358','Generate slugs','slug','generate',NULL,'2018-11-06 14:09:31','1','2018-11-06 14:09:31','1'),('5be1a09b4c322d003485e359','Browse tags','tag','browse',NULL,'2018-11-06 14:09:31','1','2018-11-06 14:09:31','1'),('5be1a09b4c322d003485e35a','Read tags','tag','read',NULL,'2018-11-06 14:09:31','1','2018-11-06 14:09:31','1'),('5be1a09b4c322d003485e35b','Edit tags','tag','edit',NULL,'2018-11-06 14:09:31','1','2018-11-06 14:09:31','1'),('5be1a09c4c322d003485e35c','Add tags','tag','add',NULL,'2018-11-06 14:09:32','1','2018-11-06 14:09:32','1'),('5be1a09c4c322d003485e35d','Delete tags','tag','destroy',NULL,'2018-11-06 14:09:32','1','2018-11-06 14:09:32','1'),('5be1a09c4c322d003485e35e','Browse themes','theme','browse',NULL,'2018-11-06 14:09:32','1','2018-11-06 14:09:32','1'),('5be1a09c4c322d003485e35f','Edit themes','theme','edit',NULL,'2018-11-06 14:09:32','1','2018-11-06 14:09:32','1'),('5be1a09c4c322d003485e360','Activate themes','theme','activate',NULL,'2018-11-06 14:09:32','1','2018-11-06 14:09:32','1'),('5be1a09c4c322d003485e361','Upload themes','theme','add',NULL,'2018-11-06 14:09:32','1','2018-11-06 14:09:32','1'),('5be1a09c4c322d003485e362','Download themes','theme','read',NULL,'2018-11-06 14:09:32','1','2018-11-06 14:09:32','1'),('5be1a09c4c322d003485e363','Delete themes','theme','destroy',NULL,'2018-11-06 14:09:32','1','2018-11-06 14:09:32','1'),('5be1a09c4c322d003485e364','Browse users','user','browse',NULL,'2018-11-06 14:09:32','1','2018-11-06 14:09:32','1'),('5be1a09c4c322d003485e365','Read users','user','read',NULL,'2018-11-06 14:09:32','1','2018-11-06 14:09:32','1'),('5be1a09c4c322d003485e366','Edit users','user','edit',NULL,'2018-11-06 14:09:32','1','2018-11-06 14:09:32','1'),('5be1a09c4c322d003485e367','Add users','user','add',NULL,'2018-11-06 14:09:32','1','2018-11-06 14:09:32','1'),('5be1a09c4c322d003485e368','Delete users','user','destroy',NULL,'2018-11-06 14:09:32','1','2018-11-06 14:09:32','1'),('5be1a09d4c322d003485e369','Assign a role','role','assign',NULL,'2018-11-06 14:09:33','1','2018-11-06 14:09:33','1'),('5be1a09d4c322d003485e36a','Browse roles','role','browse',NULL,'2018-11-06 14:09:33','1','2018-11-06 14:09:33','1'),('5be1a09d4c322d003485e36b','Browse clients','client','browse',NULL,'2018-11-06 14:09:33','1','2018-11-06 14:09:33','1'),('5be1a09d4c322d003485e36c','Read clients','client','read',NULL,'2018-11-06 14:09:33','1','2018-11-06 14:09:33','1'),('5be1a09d4c322d003485e36d','Edit clients','client','edit',NULL,'2018-11-06 14:09:33','1','2018-11-06 14:09:33','1'),('5be1a09d4c322d003485e36e','Add clients','client','add',NULL,'2018-11-06 14:09:33','1','2018-11-06 14:09:33','1'),('5be1a09d4c322d003485e36f','Delete clients','client','destroy',NULL,'2018-11-06 14:09:33','1','2018-11-06 14:09:33','1'),('5be1a09d4c322d003485e370','Browse subscribers','subscriber','browse',NULL,'2018-11-06 14:09:33','1','2018-11-06 14:09:33','1'),('5be1a09d4c322d003485e371','Read subscribers','subscriber','read',NULL,'2018-11-06 14:09:33','1','2018-11-06 14:09:33','1'),('5be1a09d4c322d003485e372','Edit subscribers','subscriber','edit',NULL,'2018-11-06 14:09:33','1','2018-11-06 14:09:33','1'),('5be1a09d4c322d003485e373','Add subscribers','subscriber','add',NULL,'2018-11-06 14:09:33','1','2018-11-06 14:09:33','1'),('5be1a09d4c322d003485e374','Delete subscribers','subscriber','destroy',NULL,'2018-11-06 14:09:33','1','2018-11-06 14:09:33','1'),('5be1a09d4c322d003485e375','Browse invites','invite','browse',NULL,'2018-11-06 14:09:33','1','2018-11-06 14:09:33','1'),('5be1a09e4c322d003485e376','Read invites','invite','read',NULL,'2018-11-06 14:09:34','1','2018-11-06 14:09:34','1'),('5be1a09e4c322d003485e377','Edit invites','invite','edit',NULL,'2018-11-06 14:09:34','1','2018-11-06 14:09:34','1'),('5be1a09e4c322d003485e378','Add invites','invite','add',NULL,'2018-11-06 14:09:34','1','2018-11-06 14:09:34','1'),('5be1a09e4c322d003485e379','Delete invites','invite','destroy',NULL,'2018-11-06 14:09:34','1','2018-11-06 14:09:34','1'),('5be1a09e4c322d003485e37a','Download redirects','redirect','download',NULL,'2018-11-06 14:09:34','1','2018-11-06 14:09:34','1'),('5be1a09e4c322d003485e37b','Upload redirects','redirect','upload',NULL,'2018-11-06 14:09:34','1','2018-11-06 14:09:34','1'),('5be1a09e4c322d003485e37c','Add webhooks','webhook','add',NULL,'2018-11-06 14:09:34','1','2018-11-06 14:09:34','1'),('5be1a09e4c322d003485e37d','Delete webhooks','webhook','destroy',NULL,'2018-11-06 14:09:34','1','2018-11-06 14:09:34','1');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions_apps`
--

DROP TABLE IF EXISTS `permissions_apps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions_apps` (
  `id` varchar(24) NOT NULL,
  `app_id` varchar(24) NOT NULL,
  `permission_id` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions_apps`
--

LOCK TABLES `permissions_apps` WRITE;
/*!40000 ALTER TABLE `permissions_apps` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions_apps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions_roles`
--

DROP TABLE IF EXISTS `permissions_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions_roles` (
  `id` varchar(24) NOT NULL,
  `role_id` varchar(24) NOT NULL,
  `permission_id` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions_roles`
--

LOCK TABLES `permissions_roles` WRITE;
/*!40000 ALTER TABLE `permissions_roles` DISABLE KEYS */;
INSERT INTO `permissions_roles` VALUES ('5be1a0a34c322d003485e38f','5be1a09a4c322d003485e344','5be1a09a4c322d003485e349'),('5be1a0a34c322d003485e390','5be1a09a4c322d003485e344','5be1a09a4c322d003485e34a'),('5be1a0a34c322d003485e391','5be1a09a4c322d003485e344','5be1a09a4c322d003485e34b'),('5be1a0a34c322d003485e392','5be1a09a4c322d003485e344','5be1a09a4c322d003485e34c'),('5be1a0a44c322d003485e393','5be1a09a4c322d003485e344','5be1a09a4c322d003485e34d'),('5be1a0a44c322d003485e394','5be1a09a4c322d003485e344','5be1a09b4c322d003485e34e'),('5be1a0a44c322d003485e395','5be1a09a4c322d003485e344','5be1a09b4c322d003485e34f'),('5be1a0a44c322d003485e396','5be1a09a4c322d003485e344','5be1a09b4c322d003485e350'),('5be1a0a44c322d003485e397','5be1a09a4c322d003485e344','5be1a09b4c322d003485e351'),('5be1a0a44c322d003485e398','5be1a09a4c322d003485e344','5be1a09b4c322d003485e352'),('5be1a0a44c322d003485e399','5be1a09a4c322d003485e344','5be1a09b4c322d003485e353'),('5be1a0a44c322d003485e39a','5be1a09a4c322d003485e344','5be1a09b4c322d003485e354'),('5be1a0a44c322d003485e39b','5be1a09a4c322d003485e344','5be1a09b4c322d003485e355'),('5be1a0a44c322d003485e39c','5be1a09a4c322d003485e344','5be1a09b4c322d003485e356'),('5be1a0a44c322d003485e39d','5be1a09a4c322d003485e344','5be1a09b4c322d003485e357'),('5be1a0a44c322d003485e39e','5be1a09a4c322d003485e344','5be1a09b4c322d003485e358'),('5be1a0a44c322d003485e39f','5be1a09a4c322d003485e344','5be1a09b4c322d003485e359'),('5be1a0a44c322d003485e3a0','5be1a09a4c322d003485e344','5be1a09b4c322d003485e35a'),('5be1a0a44c322d003485e3a1','5be1a09a4c322d003485e344','5be1a09b4c322d003485e35b'),('5be1a0a44c322d003485e3a2','5be1a09a4c322d003485e344','5be1a09c4c322d003485e35c'),('5be1a0a44c322d003485e3a3','5be1a09a4c322d003485e344','5be1a09c4c322d003485e35d'),('5be1a0a44c322d003485e3a4','5be1a09a4c322d003485e344','5be1a09c4c322d003485e35e'),('5be1a0a44c322d003485e3a5','5be1a09a4c322d003485e344','5be1a09c4c322d003485e35f'),('5be1a0a44c322d003485e3a6','5be1a09a4c322d003485e344','5be1a09c4c322d003485e360'),('5be1a0a44c322d003485e3a7','5be1a09a4c322d003485e344','5be1a09c4c322d003485e361'),('5be1a0a44c322d003485e3a8','5be1a09a4c322d003485e344','5be1a09c4c322d003485e362'),('5be1a0a44c322d003485e3a9','5be1a09a4c322d003485e344','5be1a09c4c322d003485e363'),('5be1a0a54c322d003485e3aa','5be1a09a4c322d003485e344','5be1a09c4c322d003485e364'),('5be1a0a54c322d003485e3ab','5be1a09a4c322d003485e344','5be1a09c4c322d003485e365'),('5be1a0a54c322d003485e3ac','5be1a09a4c322d003485e344','5be1a09c4c322d003485e366'),('5be1a0a54c322d003485e3ad','5be1a09a4c322d003485e344','5be1a09c4c322d003485e367'),('5be1a0a54c322d003485e3ae','5be1a09a4c322d003485e344','5be1a09c4c322d003485e368'),('5be1a0a54c322d003485e3af','5be1a09a4c322d003485e344','5be1a09d4c322d003485e369'),('5be1a0a54c322d003485e3b0','5be1a09a4c322d003485e344','5be1a09d4c322d003485e36a'),('5be1a0a54c322d003485e3b1','5be1a09a4c322d003485e344','5be1a09d4c322d003485e36b'),('5be1a0a54c322d003485e3b2','5be1a09a4c322d003485e344','5be1a09d4c322d003485e36c'),('5be1a0a54c322d003485e3b3','5be1a09a4c322d003485e344','5be1a09d4c322d003485e36d'),('5be1a0a54c322d003485e3b4','5be1a09a4c322d003485e344','5be1a09d4c322d003485e36e'),('5be1a0a54c322d003485e3b5','5be1a09a4c322d003485e344','5be1a09d4c322d003485e36f'),('5be1a0a54c322d003485e3b6','5be1a09a4c322d003485e344','5be1a09d4c322d003485e370'),('5be1a0a54c322d003485e3b7','5be1a09a4c322d003485e344','5be1a09d4c322d003485e371'),('5be1a0a54c322d003485e3b8','5be1a09a4c322d003485e344','5be1a09d4c322d003485e372'),('5be1a0a54c322d003485e3b9','5be1a09a4c322d003485e344','5be1a09d4c322d003485e373'),('5be1a0a54c322d003485e3ba','5be1a09a4c322d003485e344','5be1a09d4c322d003485e374'),('5be1a0a54c322d003485e3bb','5be1a09a4c322d003485e344','5be1a09d4c322d003485e375'),('5be1a0a54c322d003485e3bc','5be1a09a4c322d003485e344','5be1a09e4c322d003485e376'),('5be1a0a54c322d003485e3bd','5be1a09a4c322d003485e344','5be1a09e4c322d003485e377'),('5be1a0a54c322d003485e3be','5be1a09a4c322d003485e344','5be1a09e4c322d003485e378'),('5be1a0a54c322d003485e3bf','5be1a09a4c322d003485e344','5be1a09e4c322d003485e379'),('5be1a0a64c322d003485e3c0','5be1a09a4c322d003485e344','5be1a09e4c322d003485e37a'),('5be1a0a64c322d003485e3c1','5be1a09a4c322d003485e344','5be1a09e4c322d003485e37b'),('5be1a0a64c322d003485e3c2','5be1a09a4c322d003485e344','5be1a09e4c322d003485e37c'),('5be1a0a64c322d003485e3c3','5be1a09a4c322d003485e344','5be1a09e4c322d003485e37d'),('5be1a0a64c322d003485e3c4','5be1a09a4c322d003485e345','5be1a09b4c322d003485e350'),('5be1a0a64c322d003485e3c5','5be1a09a4c322d003485e345','5be1a09b4c322d003485e351'),('5be1a0a64c322d003485e3c6','5be1a09a4c322d003485e345','5be1a09b4c322d003485e352'),('5be1a0a64c322d003485e3c7','5be1a09a4c322d003485e345','5be1a09b4c322d003485e353'),('5be1a0a64c322d003485e3c8','5be1a09a4c322d003485e345','5be1a09b4c322d003485e354'),('5be1a0a64c322d003485e3c9','5be1a09a4c322d003485e345','5be1a09b4c322d003485e355'),('5be1a0a64c322d003485e3ca','5be1a09a4c322d003485e345','5be1a09b4c322d003485e356'),('5be1a0a64c322d003485e3cb','5be1a09a4c322d003485e345','5be1a09b4c322d003485e358'),('5be1a0a64c322d003485e3cc','5be1a09a4c322d003485e345','5be1a09b4c322d003485e359'),('5be1a0a64c322d003485e3cd','5be1a09a4c322d003485e345','5be1a09b4c322d003485e35a'),('5be1a0a64c322d003485e3ce','5be1a09a4c322d003485e345','5be1a09b4c322d003485e35b'),('5be1a0a64c322d003485e3cf','5be1a09a4c322d003485e345','5be1a09c4c322d003485e35c'),('5be1a0a64c322d003485e3d0','5be1a09a4c322d003485e345','5be1a09c4c322d003485e35d'),('5be1a0a64c322d003485e3d1','5be1a09a4c322d003485e345','5be1a09c4c322d003485e364'),('5be1a0a64c322d003485e3d2','5be1a09a4c322d003485e345','5be1a09c4c322d003485e365'),('5be1a0a64c322d003485e3d3','5be1a09a4c322d003485e345','5be1a09c4c322d003485e366'),('5be1a0a64c322d003485e3d4','5be1a09a4c322d003485e345','5be1a09c4c322d003485e367'),('5be1a0a64c322d003485e3d5','5be1a09a4c322d003485e345','5be1a09c4c322d003485e368'),('5be1a0a74c322d003485e3d6','5be1a09a4c322d003485e345','5be1a09d4c322d003485e369'),('5be1a0a74c322d003485e3d7','5be1a09a4c322d003485e345','5be1a09d4c322d003485e36a'),('5be1a0a74c322d003485e3d8','5be1a09a4c322d003485e345','5be1a09d4c322d003485e36b'),('5be1a0a74c322d003485e3d9','5be1a09a4c322d003485e345','5be1a09d4c322d003485e36c'),('5be1a0a74c322d003485e3da','5be1a09a4c322d003485e345','5be1a09d4c322d003485e36d'),('5be1a0a74c322d003485e3db','5be1a09a4c322d003485e345','5be1a09d4c322d003485e36e'),('5be1a0a74c322d003485e3dc','5be1a09a4c322d003485e345','5be1a09d4c322d003485e36f'),('5be1a0a74c322d003485e3dd','5be1a09a4c322d003485e345','5be1a09d4c322d003485e373'),('5be1a0a74c322d003485e3de','5be1a09a4c322d003485e345','5be1a09d4c322d003485e375'),('5be1a0a74c322d003485e3df','5be1a09a4c322d003485e345','5be1a09e4c322d003485e376'),('5be1a0a74c322d003485e3e0','5be1a09a4c322d003485e345','5be1a09e4c322d003485e377'),('5be1a0a74c322d003485e3e1','5be1a09a4c322d003485e345','5be1a09e4c322d003485e378'),('5be1a0a74c322d003485e3e2','5be1a09a4c322d003485e345','5be1a09e4c322d003485e379'),('5be1a0a74c322d003485e3e3','5be1a09a4c322d003485e345','5be1a09c4c322d003485e35e'),('5be1a0a74c322d003485e3e4','5be1a09a4c322d003485e346','5be1a09b4c322d003485e350'),('5be1a0a74c322d003485e3e5','5be1a09a4c322d003485e346','5be1a09b4c322d003485e351'),('5be1a0a74c322d003485e3e6','5be1a09a4c322d003485e346','5be1a09b4c322d003485e353'),('5be1a0a74c322d003485e3e7','5be1a09a4c322d003485e346','5be1a09b4c322d003485e355'),('5be1a0a74c322d003485e3e8','5be1a09a4c322d003485e346','5be1a09b4c322d003485e356'),('5be1a0a84c322d003485e3e9','5be1a09a4c322d003485e346','5be1a09b4c322d003485e358'),('5be1a0a84c322d003485e3ea','5be1a09a4c322d003485e346','5be1a09b4c322d003485e359'),('5be1a0a84c322d003485e3eb','5be1a09a4c322d003485e346','5be1a09b4c322d003485e35a'),('5be1a0a84c322d003485e3ec','5be1a09a4c322d003485e346','5be1a09c4c322d003485e35c'),('5be1a0a84c322d003485e3ed','5be1a09a4c322d003485e346','5be1a09c4c322d003485e364'),('5be1a0a84c322d003485e3ee','5be1a09a4c322d003485e346','5be1a09c4c322d003485e365'),('5be1a0a84c322d003485e3ef','5be1a09a4c322d003485e346','5be1a09d4c322d003485e36a'),('5be1a0a84c322d003485e3f0','5be1a09a4c322d003485e346','5be1a09d4c322d003485e36b'),('5be1a0a84c322d003485e3f1','5be1a09a4c322d003485e346','5be1a09d4c322d003485e36c'),('5be1a0a84c322d003485e3f2','5be1a09a4c322d003485e346','5be1a09d4c322d003485e36d'),('5be1a0a84c322d003485e3f3','5be1a09a4c322d003485e346','5be1a09d4c322d003485e36e'),('5be1a0a84c322d003485e3f4','5be1a09a4c322d003485e346','5be1a09d4c322d003485e36f'),('5be1a0a84c322d003485e3f5','5be1a09a4c322d003485e346','5be1a09d4c322d003485e373'),('5be1a0a84c322d003485e3f6','5be1a09a4c322d003485e346','5be1a09c4c322d003485e35e'),('5be1a0a84c322d003485e3f7','5be1a09a4c322d003485e347','5be1a09b4c322d003485e350'),('5be1a0a84c322d003485e3f8','5be1a09a4c322d003485e347','5be1a09b4c322d003485e351'),('5be1a0a84c322d003485e3f9','5be1a09a4c322d003485e347','5be1a09b4c322d003485e353'),('5be1a0a94c322d003485e3fa','5be1a09a4c322d003485e347','5be1a09b4c322d003485e355'),('5be1a0a94c322d003485e3fb','5be1a09a4c322d003485e347','5be1a09b4c322d003485e356'),('5be1a0a94c322d003485e3fc','5be1a09a4c322d003485e347','5be1a09b4c322d003485e358'),('5be1a0a94c322d003485e3fd','5be1a09a4c322d003485e347','5be1a09b4c322d003485e359'),('5be1a0a94c322d003485e3fe','5be1a09a4c322d003485e347','5be1a09b4c322d003485e35a'),('5be1a0a94c322d003485e3ff','5be1a09a4c322d003485e347','5be1a09c4c322d003485e364'),('5be1a0a94c322d003485e400','5be1a09a4c322d003485e347','5be1a09c4c322d003485e365'),('5be1a0a94c322d003485e401','5be1a09a4c322d003485e347','5be1a09d4c322d003485e36a'),('5be1a0a94c322d003485e402','5be1a09a4c322d003485e347','5be1a09d4c322d003485e36b'),('5be1a0a94c322d003485e403','5be1a09a4c322d003485e347','5be1a09d4c322d003485e36c'),('5be1a0a94c322d003485e404','5be1a09a4c322d003485e347','5be1a09d4c322d003485e36d'),('5be1a0a94c322d003485e405','5be1a09a4c322d003485e347','5be1a09d4c322d003485e36e'),('5be1a0a94c322d003485e406','5be1a09a4c322d003485e347','5be1a09d4c322d003485e36f'),('5be1a0a94c322d003485e407','5be1a09a4c322d003485e347','5be1a09d4c322d003485e373'),('5be1a0a94c322d003485e408','5be1a09a4c322d003485e347','5be1a09c4c322d003485e35e');
/*!40000 ALTER TABLE `permissions_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions_users`
--

DROP TABLE IF EXISTS `permissions_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions_users` (
  `id` varchar(24) NOT NULL,
  `user_id` varchar(24) NOT NULL,
  `permission_id` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions_users`
--

LOCK TABLES `permissions_users` WRITE;
/*!40000 ALTER TABLE `permissions_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` varchar(24) NOT NULL,
  `uuid` varchar(36) NOT NULL,
  `title` varchar(2000) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `mobiledoc` longtext,
  `html` longtext,
  `amp` longtext,
  `plaintext` longtext,
  `feature_image` varchar(2000) DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `page` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(50) NOT NULL DEFAULT 'draft',
  `locale` varchar(6) DEFAULT NULL,
  `visibility` varchar(50) NOT NULL DEFAULT 'public',
  `meta_title` varchar(2000) DEFAULT NULL,
  `meta_description` varchar(2000) DEFAULT NULL,
  `author_id` varchar(24) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `published_by` varchar(24) DEFAULT NULL,
  `custom_excerpt` varchar(2000) DEFAULT NULL,
  `codeinjection_head` text,
  `codeinjection_foot` text,
  `og_image` varchar(2000) DEFAULT NULL,
  `og_title` varchar(300) DEFAULT NULL,
  `og_description` varchar(500) DEFAULT NULL,
  `twitter_image` varchar(2000) DEFAULT NULL,
  `twitter_title` varchar(300) DEFAULT NULL,
  `twitter_description` varchar(500) DEFAULT NULL,
  `custom_template` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES ('5be1a0a14c322d003485e37f','d4ebfcf6-e195-4aa8-9067-a8914fc65562','Koenig Demo Post','v2-demo-post','{\"version\":\"0.3.1\",\"atoms\":[],\"cards\":[[\"hr\",{}],[\"embed\",{\"url\":\"https://twitter.com/TryGhost/status/761119175192420352\",\"html\":\"<blockquote class=\\\"twitter-tweet\\\"><p lang=\\\"en\\\" dir=\\\"ltr\\\">Fun announcement coming this afternoon ? what could it be?</p>&mdash; Ghost (@TryGhost) <a href=\\\"https://twitter.com/TryGhost/status/761119175192420352?ref_src=twsrc%5Etfw\\\">August 4, 2016</a></blockquote>\\n<script async src=\\\"https://platform.twitter.com/widgets.js\\\" charset=\\\"utf-8\\\"></script>\\n\",\"type\":\"rich\"}],[\"image\",{\"src\":\"https://casper.ghost.org/v1.25.0/images/koenig-demo-1.jpg\",\"alt\":\"\",\"caption\":\"A regular size image\"}],[\"image\",{\"src\":\"https://casper.ghost.org/v1.25.0/images/koenig-demo-2.jpg\",\"alt\":\"\",\"cardWidth\":\"full\",\"caption\":\"It\'s wide\"}],[\"image\",{\"src\":\"https://casper.ghost.org/v1.25.0/images/koenig-demo-3.jpg\",\"alt\":\"\",\"cardWidth\":\"wide\",\"caption\":\"It\'s wider, but not widest\"}],[\"markdown\",{\"markdown\":\"Markdown content works just the way it always did, **simply** and *beautifully*.\"}],[\"code\",{\"code\":\".new-editor {\\n\\tdisplay: bock;\\n}\"}],[\"embed\",{\"url\":\"https://www.youtube.com/watch?v=CfeQTuGyiqU\",\"html\":\"<iframe width=\\\"480\\\" height=\\\"270\\\" src=\\\"https://www.youtube.com/embed/CfeQTuGyiqU?feature=oembed\\\" frameborder=\\\"0\\\" allow=\\\"autoplay; encrypted-media\\\" allowfullscreen></iframe>\",\"type\":\"video\"}],[\"html\",{\"html\":\"<div style=\\\"background:#fafafa;margin-bottom:1.5em;padding:20px 50px;\\\">\\n    <blink>hello world</blink>\\n</div>\"}]],\"markups\":[[\"strong\"],[\"code\"],[\"em\"],[\"a\",[\"href\",\"https://forum.ghost.org/t/ghost-2-0-theme-compatibility-help-support/2103\"]]],\"sections\":[[1,\"p\",[[0,[],0,\"Hey there! Welcome to the new Ghost editor - affectionately known as \"],[0,[0],1,\"Koenig\"],[0,[],0,\".\"]]],[1,\"p\",[[0,[],0,\"Koenig is a brand new writing experience within Ghost, and follows more of a rich writing experience which you\'ve come to expect from the best publishing platforms. Don\'t worry though! You can still use Markdown too, if that\'s what you prefer.\"]]],[1,\"p\",[[0,[],0,\"Because there are some changes to how Ghost outputs content using its new editor, we dropped this draft post into your latest update to tell you a bit about it – and simultaneously give you a chance to preview how well your theme handles these changes. So after reading this post you should both understand how everything works, and also be able to see if there are any changes you need to make to your theme in order to upgrade to Ghost 2.0.\"]]],[10,0],[1,\"h1\",[[0,[],0,\"What\'s new\"]]],[1,\"p\",[[0,[],0,\"The new editor is designed to allow you have a more rich editing experience, so it\'s no longer limited to just text and formatting options – but it can also handle rich media objects, called cards. You can insert a card either by clicking on the \"],[0,[1],1,\"+\"],[0,[],0,\" button on a new line, or typing \"],[0,[1],1,\"/\"],[0,[],0,\" on a new line to search for a particular card. \"]]],[1,\"p\",[[0,[],0,\"Here\'s one now:\"]]],[10,1],[1,\"p\",[[0,[],0,\"Cards are rich objects which contain content which is more than just text. To start with there are cards for things like images, markdown, html and embeds — but over time we\'ll introduce more cards and integrations, as well as allowing you to create your own!\"]]],[1,\"h2\",[[0,[],0,\"Some examples of possible future cards\"]]],[3,\"ul\",[[[0,[],0,\"A chart card to display dynamic data visualisations\"]],[[0,[],0,\"A recipe card to show a pre-formatted list of ingredients and instructions\"]],[[0,[],0,\"A Mailchimp card to capture new subscribers with a web form\"]],[[0,[],0,\"A recommended reading card to display a dynamic suggested story based on the current user\'s reading history\"]]]],[1,\"p\",[[0,[],0,\"For now, though, we\'re just getting started with the basics.\"]]],[1,\"h1\",[[0,[],0,\"New ways to work with images\"]]],[1,\"p\",[[0,[],0,\"Perhaps the most notable change to how you\'re used to interacting with Ghost is in the images. In Koenig, they\'re both more powerful and easier to work with in the editor itself - and in the theme, they\'re output slightly differently with different size options.\"]]],[1,\"p\",[[0,[],0,\"For instance, here\'s your plain ol\' regular image:\"]]],[10,2],[1,\"p\",[[0,[],0,\"But perhaps you\'ve got a striking panorama that you really want to stand out as your readers scroll down the page. In that case, you could use the new full-bleed image size which stretches right out to the edges of the screen:\"]]],[10,3],[1,\"p\",[[0,[],0,\"Or maybe you\'re looking for something in between, which will give you just a little more size to break up the vertical rhythm of the post without dominating the entire screen. If that\'s the case, you might like the breakout size:\"]]],[10,4],[1,\"p\",[[0,[],0,\"Each of these sizes can be selected from within the editor, and each will output a number of HTML classes for the theme to do styling with. \"]]],[1,\"p\",[[0,[],0,\"Chances are your theme will need a few small updates to take advantage of the new editor functionality. Some people might also find they need to tweak their theme layout, as the editor canvas previously output a wrapper div around its content – but no longer does. If you rely on that div for styling, you can always add it back again in your theme.\"]]],[1,\"p\",[[0,[],0,\"Oh, we have some nice new image captions, too :)\"]]],[1,\"h1\",[[0,[],0,\"What else?\"]]],[1,\"p\",[[0,[],0,\"Well, you can still write Markdown, as mentioned. In fact you\'ll find the entire previous Ghost editor \"],[0,[2],1,\"inside\"],[0,[],0,\" this editor. If you want to use it then just go ahead and add a Markdown card and start writing like nothing changed at all:\"]]],[10,5],[1,\"p\",[[0,[],0,\"of course you can embed code blocks\"]]],[10,6],[1,\"p\",[[0,[],0,\"or embed things from external services like YouTube...\"]]],[10,7],[1,\"p\",[[0,[],0,\"and yeah you can do full HTML if you need to, as well!\"]]],[10,8],[1,\"p\",[[0,[],0,\"So everything works, hopefully, just about how you would expect. It\'s like the old editor, but faster, cleaner, prettier, and a whole lot more powerful.\"]]],[1,\"h1\",[[0,[],0,\"What do I do with this information?\"]]],[1,\"p\",[[0,[],0,\"Preview this post on your site to see if it causes any issues with your theme. Click on the settings cog in the top right ?? corner of the editor, then click on \'\"],[0,[0],1,\"Preview\"],[0,[],0,\"\' next to the \'Post URL\' input.\"]]],[1,\"p\",[[0,[],0,\"If everything looks good to you then there\'s nothing you need to do, you\'re all set! If you spot any issues with your design, or there are some funky display issues, then you might need to make some updates to your theme based on the new editor classes being output.\"]]],[1,\"p\",[[0,[],0,\"Head over to the \"],[0,[3],1,\"Ghost 2.0 Theme Compatibility\"],[0,[],0,\" forum topic to discuss any changes and get help if needed.\"]]],[1,\"p\",[[0,[],0,\"That\'s it!\"]]],[1,\"p\",[[0,[],0,\"We\'re looking forward to sharing more about the new editor soon\"]]]]}','<p>Hey there! Welcome to the new Ghost editor - affectionately known as <strong>Koenig</strong>.</p><p>Koenig is a brand new writing experience within Ghost, and follows more of a rich writing experience which you\'ve come to expect from the best publishing platforms. Don\'t worry though! You can still use Markdown too, if that\'s what you prefer.</p><p>Because there are some changes to how Ghost outputs content using its new editor, we dropped this draft post into your latest update to tell you a bit about it – and simultaneously give you a chance to preview how well your theme handles these changes. So after reading this post you should both understand how everything works, and also be able to see if there are any changes you need to make to your theme in order to upgrade to Ghost 2.0.</p><hr><h1 id=\"what-s-new\">What\'s new</h1><p>The new editor is designed to allow you have a more rich editing experience, so it\'s no longer limited to just text and formatting options – but it can also handle rich media objects, called cards. You can insert a card either by clicking on the <code>+</code> button on a new line, or typing <code>/</code> on a new line to search for a particular card. </p><p>Here\'s one now:</p><figure class=\"kg-embed-card\"><blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">Fun announcement coming this afternoon ? what could it be?</p>&mdash; Ghost (@TryGhost) <a href=\"https://twitter.com/TryGhost/status/761119175192420352?ref_src=twsrc%5Etfw\">August 4, 2016</a></blockquote>\n<script async src=\"https://platform.twitter.com/widgets.js\" charset=\"utf-8\"></script>\n</figure><p>Cards are rich objects which contain content which is more than just text. To start with there are cards for things like images, markdown, html and embeds — but over time we\'ll introduce more cards and integrations, as well as allowing you to create your own!</p><h2 id=\"some-examples-of-possible-future-cards\">Some examples of possible future cards</h2><ul><li>A chart card to display dynamic data visualisations</li><li>A recipe card to show a pre-formatted list of ingredients and instructions</li><li>A Mailchimp card to capture new subscribers with a web form</li><li>A recommended reading card to display a dynamic suggested story based on the current user\'s reading history</li></ul><p>For now, though, we\'re just getting started with the basics.</p><h1 id=\"new-ways-to-work-with-images\">New ways to work with images</h1><p>Perhaps the most notable change to how you\'re used to interacting with Ghost is in the images. In Koenig, they\'re both more powerful and easier to work with in the editor itself - and in the theme, they\'re output slightly differently with different size options.</p><p>For instance, here\'s your plain ol\' regular image:</p><figure class=\"kg-image-card\"><img src=\"https://casper.ghost.org/v1.25.0/images/koenig-demo-1.jpg\" class=\"kg-image\"><figcaption>A regular size image</figcaption></figure><p>But perhaps you\'ve got a striking panorama that you really want to stand out as your readers scroll down the page. In that case, you could use the new full-bleed image size which stretches right out to the edges of the screen:</p><figure class=\"kg-image-card kg-width-full\"><img src=\"https://casper.ghost.org/v1.25.0/images/koenig-demo-2.jpg\" class=\"kg-image\"><figcaption>It\'s wide</figcaption></figure><p>Or maybe you\'re looking for something in between, which will give you just a little more size to break up the vertical rhythm of the post without dominating the entire screen. If that\'s the case, you might like the breakout size:</p><figure class=\"kg-image-card kg-width-wide\"><img src=\"https://casper.ghost.org/v1.25.0/images/koenig-demo-3.jpg\" class=\"kg-image\"><figcaption>It\'s wider, but not widest</figcaption></figure><p>Each of these sizes can be selected from within the editor, and each will output a number of HTML classes for the theme to do styling with. </p><p>Chances are your theme will need a few small updates to take advantage of the new editor functionality. Some people might also find they need to tweak their theme layout, as the editor canvas previously output a wrapper div around its content – but no longer does. If you rely on that div for styling, you can always add it back again in your theme.</p><p>Oh, we have some nice new image captions, too :)</p><h1 id=\"what-else\">What else?</h1><p>Well, you can still write Markdown, as mentioned. In fact you\'ll find the entire previous Ghost editor <em>inside</em> this editor. If you want to use it then just go ahead and add a Markdown card and start writing like nothing changed at all:</p><p>Markdown content works just the way it always did, <strong>simply</strong> and <em>beautifully</em>.</p>\n<p>of course you can embed code blocks</p><pre><code>.new-editor {\n	display: bock;\n}</code></pre><p>or embed things from external services like YouTube...</p><figure class=\"kg-embed-card\"><iframe width=\"480\" height=\"270\" src=\"https://www.youtube.com/embed/CfeQTuGyiqU?feature=oembed\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe></figure><p>and yeah you can do full HTML if you need to, as well!</p><div style=\"background:#fafafa;margin-bottom:1.5em;padding:20px 50px;\">\n    <blink>hello world</blink>\n</div><p>So everything works, hopefully, just about how you would expect. It\'s like the old editor, but faster, cleaner, prettier, and a whole lot more powerful.</p><h1 id=\"what-do-i-do-with-this-information\">What do I do with this information?</h1><p>Preview this post on your site to see if it causes any issues with your theme. Click on the settings cog in the top right ?? corner of the editor, then click on \'<strong>Preview</strong>\' next to the \'Post URL\' input.</p><p>If everything looks good to you then there\'s nothing you need to do, you\'re all set! If you spot any issues with your design, or there are some funky display issues, then you might need to make some updates to your theme based on the new editor classes being output.</p><p>Head over to the <a href=\"https://forum.ghost.org/t/ghost-2-0-theme-compatibility-help-support/2103\">Ghost 2.0 Theme Compatibility</a> forum topic to discuss any changes and get help if needed.</p><p>That\'s it!</p><p>We\'re looking forward to sharing more about the new editor soon</p>',NULL,'Hey there! Welcome to the new Ghost editor - affectionately known as Koenig.\n\nKoenig is a brand new writing experience within Ghost, and follows more of a\nrich writing experience which you\'ve come to expect from the best publishing\nplatforms. Don\'t worry though! You can still use Markdown too, if that\'s what\nyou prefer.\n\nBecause there are some changes to how Ghost outputs content using its new\neditor, we dropped this draft post into your latest update to tell you a bit\nabout it – and simultaneously give you a chance to preview how well your theme\nhandles these changes. So after reading this post you should both understand how\neverything works, and also be able to see if there are any changes you need to\nmake to your theme in order to upgrade to Ghost 2.0.\n\n\n--------------------------------------------------------------------------------\n\nWhat\'s new\nThe new editor is designed to allow you have a more rich editing experience, so\nit\'s no longer limited to just text and formatting options – but it can also\nhandle rich media objects, called cards. You can insert a card either by\nclicking on the +  button on a new line, or typing /  on a new line to search\nfor a particular card. \n\nHere\'s one now:\n\nFun announcement coming this afternoon ? what could it be?\n\n— Ghost (@TryGhost) August 4, 2016\n[https://twitter.com/TryGhost/status/761119175192420352?ref_src=twsrc%5Etfw]\nCards are rich objects which contain content which is more than just text. To\nstart with there are cards for things like images, markdown, html and embeds —\nbut over time we\'ll introduce more cards and integrations, as well as allowing\nyou to create your own!\n\nSome examples of possible future cards\n * A chart card to display dynamic data visualisations\n * A recipe card to show a pre-formatted list of ingredients and instructions\n * A Mailchimp card to capture new subscribers with a web form\n * A recommended reading card to display a dynamic suggested story based on the\n   current user\'s reading history\n\nFor now, though, we\'re just getting started with the basics.\n\nNew ways to work with images\nPerhaps the most notable change to how you\'re used to interacting with Ghost is\nin the images. In Koenig, they\'re both more powerful and easier to work with in\nthe editor itself - and in the theme, they\'re output slightly differently with\ndifferent size options.\n\nFor instance, here\'s your plain ol\' regular image:\n\nA regular size imageBut perhaps you\'ve got a striking panorama that you really\nwant to stand out as your readers scroll down the page. In that case, you could\nuse the new full-bleed image size which stretches right out to the edges of the\nscreen:\n\nIt\'s wideOr maybe you\'re looking for something in between, which will give you\njust a little more size to break up the vertical rhythm of the post without\ndominating the entire screen. If that\'s the case, you might like the breakout\nsize:\n\nIt\'s wider, but not widestEach of these sizes can be selected from within the\neditor, and each will output a number of HTML classes for the theme to do\nstyling with. \n\nChances are your theme will need a few small updates to take advantage of the\nnew editor functionality. Some people might also find they need to tweak their\ntheme layout, as the editor canvas previously output a wrapper div around its\ncontent – but no longer does. If you rely on that div for styling, you can\nalways add it back again in your theme.\n\nOh, we have some nice new image captions, too :)\n\nWhat else?\nWell, you can still write Markdown, as mentioned. In fact you\'ll find the entire\nprevious Ghost editor inside  this editor. If you want to use it then just go\nahead and add a Markdown card and start writing like nothing changed at all:\n\nMarkdown content works just the way it always did, simply  and beautifully.\n\nof course you can embed code blocks\n\n.new-editor {\n	display: bock;\n}\n\nor embed things from external services like YouTube...\n\nand yeah you can do full HTML if you need to, as well!\n\nhello worldSo everything works, hopefully, just about how you would expect. It\'s\nlike the old editor, but faster, cleaner, prettier, and a whole lot more\npowerful.\n\nWhat do I do with this information?\nPreview this post on your site to see if it causes any issues with your theme.\nClick on the settings cog in the top right ?? corner of the editor, then click\non \'Preview\' next to the \'Post URL\' input.\n\nIf everything looks good to you then there\'s nothing you need to do, you\'re all\nset! If you spot any issues with your design, or there are some funky display\nissues, then you might need to make some updates to your theme based on the new\neditor classes being output.\n\nHead over to the Ghost 2.0 Theme Compatibility\n[https://forum.ghost.org/t/ghost-2-0-theme-compatibility-help-support/2103] \nforum topic to discuss any changes and get help if needed.\n\nThat\'s it!\n\nWe\'re looking forward to sharing more about the new editor soon',NULL,0,0,'draft',NULL,'public',NULL,NULL,'5951f5fca366002ebd5dbef7','2018-11-06 14:09:37','1','2018-11-06 14:09:37','1','2018-11-06 14:09:37',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5be1a0a14c322d003485e381','e2dcd4f9-b730-4ce2-b7ff-db1b1a1cd1a6','Setting up your own Ghost theme','themes','{\"version\":\"0.3.1\",\"markups\":[],\"atoms\":[],\"cards\":[[\"card-markdown\",{\"cardName\":\"card-markdown\",\"markdown\":\"Creating a totally custom design for your publication\\n\\nGhost comes with a beautiful default theme called Casper, which is designed to be a clean, readable publication layout and can be easily adapted for most purposes. However, Ghost can also be completely themed to suit your needs. Rather than just giving you a few basic settings which act as a poor proxy for code, we just let you write code.\\n\\nThere are a huge range of both free and premium pre-built themes which you can get from the [Ghost Theme Marketplace](http://marketplace.ghost.org), or you can simply create your own from scratch.\\n\\n[![marketplace](https://casper.ghost.org/v1.0.0/images/marketplace.jpg)](http://marketplace.ghost.org)\\n\\n> Anyone can write a completely custom Ghost theme, with just some solid knowledge of HTML and CSS\\n\\nGhost themes are written with a templating language called handlebars, which has a bunch of dynamic helpers to insert your data into template files. Like `{{author.name}}`, for example, outputs the name of the current author.\\n\\nThe best way to learn how to write your own Ghost theme is to have a look at [the source code for Casper](https://github.com/TryGhost/Casper), which is heavily commented and should give you a sense of how everything fits together.\\n\\n- `default.hbs` is the main template file, all contexts will load inside this file unless specifically told to use a different template.\\n- `post.hbs` is the file used in the context of viewing a post.\\n- `index.hbs` is the file used in the context of viewing the home page.\\n- and so on\\n\\nWe\'ve got [full and extensive theme documentation](http://themes.ghost.org/v1.23.0/docs/about) which outlines every template file, context and helper that you can use.\\n\\nIf you want to chat with other people making Ghost themes to get any advice or help, there\'s also a **themes** section on our [public Ghost forum](https://forum.ghost.org/c/themes).\"}]],\"sections\":[[10,0]]}','<div class=\"kg-card-markdown\"><p>Creating a totally custom design for your publication</p>\n<p>Ghost comes with a beautiful default theme called Casper, which is designed to be a clean, readable publication layout and can be easily adapted for most purposes. However, Ghost can also be completely themed to suit your needs. Rather than just giving you a few basic settings which act as a poor proxy for code, we just let you write code.</p>\n<p>There are a huge range of both free and premium pre-built themes which you can get from the <a href=\"http://marketplace.ghost.org\">Ghost Theme Marketplace</a>, or you can simply create your own from scratch.</p>\n<p><a href=\"http://marketplace.ghost.org\"><img src=\"https://casper.ghost.org/v1.0.0/images/marketplace.jpg\" alt=\"marketplace\"></a></p>\n<blockquote>\n<p>Anyone can write a completely custom Ghost theme, with just some solid knowledge of HTML and CSS</p>\n</blockquote>\n<p>Ghost themes are written with a templating language called handlebars, which has a bunch of dynamic helpers to insert your data into template files. Like <code>{{author.name}}</code>, for example, outputs the name of the current author.</p>\n<p>The best way to learn how to write your own Ghost theme is to have a look at <a href=\"https://github.com/TryGhost/Casper\">the source code for Casper</a>, which is heavily commented and should give you a sense of how everything fits together.</p>\n<ul>\n<li><code>default.hbs</code> is the main template file, all contexts will load inside this file unless specifically told to use a different template.</li>\n<li><code>post.hbs</code> is the file used in the context of viewing a post.</li>\n<li><code>index.hbs</code> is the file used in the context of viewing the home page.</li>\n<li>and so on</li>\n</ul>\n<p>We\'ve got <a href=\"http://themes.ghost.org/v1.23.0/docs/about\">full and extensive theme documentation</a> which outlines every template file, context and helper that you can use.</p>\n<p>If you want to chat with other people making Ghost themes to get any advice or help, there\'s also a <strong>themes</strong> section on our <a href=\"https://forum.ghost.org/c/themes\">public Ghost forum</a>.</p>\n</div>',NULL,'Creating a totally custom design for your publication\n\nGhost comes with a beautiful default theme called Casper, which is designed to\nbe a clean, readable publication layout and can be easily adapted for most\npurposes. However, Ghost can also be completely themed to suit your needs.\nRather than just giving you a few basic settings which act as a poor proxy for\ncode, we just let you write code.\n\nThere are a huge range of both free and premium pre-built themes which you can\nget from the Ghost Theme Marketplace [http://marketplace.ghost.org], or you can\nsimply create your own from scratch.\n\n  [http://marketplace.ghost.org]\n\nAnyone can write a completely custom Ghost theme, with just some solid knowledge\nof HTML and CSS\n\nGhost themes are written with a templating language called handlebars, which has\na bunch of dynamic helpers to insert your data into template files. Like \n{{author.name}}, for example, outputs the name of the current author.\n\nThe best way to learn how to write your own Ghost theme is to have a look at \nthe\nsource code for Casper [https://github.com/TryGhost/Casper], which is heavily\ncommented and should give you a sense of how everything fits together.\n\n * default.hbs  is the main template file, all contexts will load inside this\n   file unless specifically told to use a different template.\n * post.hbs  is the file used in the context of viewing a post.\n * index.hbs  is the file used in the context of viewing the home page.\n * and so on\n\nWe\'ve got full and extensive theme documentation\n[http://themes.ghost.org/v1.23.0/docs/about]  which outlines every template\nfile, context and helper that you can use.\n\nIf you want to chat with other people making Ghost themes to get any advice or\nhelp, there\'s also a themes  section on our public Ghost forum\n[https://forum.ghost.org/c/themes].','https://casper.ghost.org/v1.0.0/images/design.jpg',0,0,'published',NULL,'public',NULL,NULL,'5951f5fca366002ebd5dbef7','2018-11-06 14:09:37','1','2018-11-06 14:09:37','1','2018-11-06 14:09:38','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5be1a0a14c322d003485e383','07cd6002-b366-47e2-8167-f577c3fcb1b6','Advanced Markdown tips','advanced-markdown','{\"version\":\"0.3.1\",\"markups\":[],\"atoms\":[],\"cards\":[[\"card-markdown\",{\"cardName\":\"card-markdown\",\"markdown\":\"There are lots of powerful things you can do with the Ghost editor\\n\\nIf you\'ve gotten pretty comfortable with [all the basics](/the-editor/) of writing in Ghost, then you may enjoy some more advanced tips about the types of things you can do with Markdown!\\n\\nAs with the last post about the editor, you\'ll want to be actually editing this post as you read it so that you can see all the Markdown code we\'re using.\\n\\n\\n## Special formatting\\n\\nAs well as bold and italics, you can also use some other special formatting in Markdown when the need arises, for example:\\n\\n+ ~~strike through~~\\n+ ==highlight==\\n+ \\\\*escaped characters\\\\*\\n\\n\\n## Writing code blocks\\n\\nThere are two types of code elements which can be inserted in Markdown, the first is inline, and the other is block. Inline code is formatted by wrapping any word or words in back-ticks, `like this`. Larger snippets of code can be displayed across multiple lines using triple back ticks:\\n\\n```\\n.my-link {\\n    text-decoration: underline;\\n}\\n```\\n\\nIf you want to get really fancy, you can even add syntax highlighting using [Prism.js](http://prismjs.com/).\\n\\n\\n## Full bleed images\\n\\nOne neat trick which you can use in Markdown to distinguish between different types of images is to add a `#hash` value to the end of the source URL, and then target images containing the hash with special styling. For example:\\n\\n![walking](https://casper.ghost.org/v1.0.0/images/walking.jpg#full)\\n\\nwhich is styled with...\\n\\n```\\nimg[src$=\\\"#full\\\"] {\\n    max-width: 100vw;\\n}\\n```\\n\\nThis creates full-bleed images in the Casper theme, which stretch beyond their usual boundaries right up to the edge of the window. Every theme handles these types of things slightly differently, but it\'s a great trick to play with if you want to have a variety of image sizes and styles.\\n\\n\\n## Reference lists\\n\\n**The quick brown [fox][1], jumped over the lazy [dog][2].**\\n\\n[1]: https://en.wikipedia.org/wiki/Fox \\\"Wikipedia: Fox\\\"\\n[2]: https://en.wikipedia.org/wiki/Dog \\\"Wikipedia: Dog\\\"\\n\\nAnother way to insert links in markdown is using reference lists. You might want to use this style of linking to cite reference material in a Wikipedia-style. All of the links are listed at the end of the document, so you can maintain full separation between content and its source or reference.\\n\\n\\n## Creating footnotes\\n\\nThe quick brown fox[^1] jumped over the lazy dog[^2].\\n\\n[^1]: Foxes are red\\n[^2]: Dogs are usually not red\\n\\nFootnotes are a great way to add additional contextual details when appropriate. Ghost will automatically add footnote content to the very end of your post.\\n\\n\\n## Full HTML\\n\\nPerhaps the best part of Markdown is that you\'re never limited to just Markdown. You can write HTML directly in the Ghost editor and it will just work as HTML usually does. No limits! Here\'s a standard YouTube embed code as an example:\\n\\n<iframe width=\\\"560\\\" height=\\\"315\\\" src=\\\"https://www.youtube.com/embed/Cniqsc9QfDo?rel=0&amp;showinfo=0\\\" frameborder=\\\"0\\\" allowfullscreen></iframe>\\n\"}]],\"sections\":[[10,0]]}','<div class=\"kg-card-markdown\"><p>There are lots of powerful things you can do with the Ghost editor</p>\n<p>If you\'ve gotten pretty comfortable with <a href=\"/the-editor/\">all the basics</a> of writing in Ghost, then you may enjoy some more advanced tips about the types of things you can do with Markdown!</p>\n<p>As with the last post about the editor, you\'ll want to be actually editing this post as you read it so that you can see all the Markdown code we\'re using.</p>\n<h2 id=\"specialformatting\">Special formatting</h2>\n<p>As well as bold and italics, you can also use some other special formatting in Markdown when the need arises, for example:</p>\n<ul>\n<li><s>strike through</s></li>\n<li><mark>highlight</mark></li>\n<li>*escaped characters*</li>\n</ul>\n<h2 id=\"writingcodeblocks\">Writing code blocks</h2>\n<p>There are two types of code elements which can be inserted in Markdown, the first is inline, and the other is block. Inline code is formatted by wrapping any word or words in back-ticks, <code>like this</code>. Larger snippets of code can be displayed across multiple lines using triple back ticks:</p>\n<pre><code>.my-link {\n    text-decoration: underline;\n}\n</code></pre>\n<p>If you want to get really fancy, you can even add syntax highlighting using <a href=\"http://prismjs.com/\">Prism.js</a>.</p>\n<h2 id=\"fullbleedimages\">Full bleed images</h2>\n<p>One neat trick which you can use in Markdown to distinguish between different types of images is to add a <code>#hash</code> value to the end of the source URL, and then target images containing the hash with special styling. For example:</p>\n<p><img src=\"https://casper.ghost.org/v1.0.0/images/walking.jpg#full\" alt=\"walking\"></p>\n<p>which is styled with...</p>\n<pre><code>img[src$=&quot;#full&quot;] {\n    max-width: 100vw;\n}\n</code></pre>\n<p>This creates full-bleed images in the Casper theme, which stretch beyond their usual boundaries right up to the edge of the window. Every theme handles these types of things slightly differently, but it\'s a great trick to play with if you want to have a variety of image sizes and styles.</p>\n<h2 id=\"referencelists\">Reference lists</h2>\n<p><strong>The quick brown <a href=\"https://en.wikipedia.org/wiki/Fox\" title=\"Wikipedia: Fox\">fox</a>, jumped over the lazy <a href=\"https://en.wikipedia.org/wiki/Dog\" title=\"Wikipedia: Dog\">dog</a>.</strong></p>\n<p>Another way to insert links in markdown is using reference lists. You might want to use this style of linking to cite reference material in a Wikipedia-style. All of the links are listed at the end of the document, so you can maintain full separation between content and its source or reference.</p>\n<h2 id=\"creatingfootnotes\">Creating footnotes</h2>\n<p>The quick brown fox<sup class=\"footnote-ref\"><a href=\"#fn1\" id=\"fnref1\">[1]</a></sup> jumped over the lazy dog<sup class=\"footnote-ref\"><a href=\"#fn2\" id=\"fnref2\">[2]</a></sup>.</p>\n<p>Footnotes are a great way to add additional contextual details when appropriate. Ghost will automatically add footnote content to the very end of your post.</p>\n<h2 id=\"fullhtml\">Full HTML</h2>\n<p>Perhaps the best part of Markdown is that you\'re never limited to just Markdown. You can write HTML directly in the Ghost editor and it will just work as HTML usually does. No limits! Here\'s a standard YouTube embed code as an example:</p>\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Cniqsc9QfDo?rel=0&amp;showinfo=0\" frameborder=\"0\" allowfullscreen></iframe>\n<hr class=\"footnotes-sep\">\n<section class=\"footnotes\">\n<ol class=\"footnotes-list\">\n<li id=\"fn1\" class=\"footnote-item\"><p>Foxes are red <a href=\"#fnref1\" class=\"footnote-backref\">↩︎</a></p>\n</li>\n<li id=\"fn2\" class=\"footnote-item\"><p>Dogs are usually not red <a href=\"#fnref2\" class=\"footnote-backref\">↩︎</a></p>\n</li>\n</ol>\n</section>\n</div>',NULL,'There are lots of powerful things you can do with the Ghost editor\n\nIf you\'ve gotten pretty comfortable with all the basics [/the-editor/]  of\nwriting in Ghost, then you may enjoy some more advanced tips about the types of\nthings you can do with Markdown!\n\nAs with the last post about the editor, you\'ll want to be actually editing this\npost as you read it so that you can see all the Markdown code we\'re using.\n\nSpecial formatting\nAs well as bold and italics, you can also use some other special formatting in\nMarkdown when the need arises, for example:\n\n * strike through\n * highlight\n * *escaped characters*\n\nWriting code blocks\nThere are two types of code elements which can be inserted in Markdown, the\nfirst is inline, and the other is block. Inline code is formatted by wrapping\nany word or words in back-ticks, like this. Larger snippets of code can be\ndisplayed across multiple lines using triple back ticks:\n\n.my-link {\n    text-decoration: underline;\n}\n\n\nIf you want to get really fancy, you can even add syntax highlighting using \nPrism.js [http://prismjs.com/].\n\nFull bleed images\nOne neat trick which you can use in Markdown to distinguish between different\ntypes of images is to add a #hash  value to the end of the source URL, and then\ntarget images containing the hash with special styling. For example:\n\n\n\nwhich is styled with...\n\nimg[src$=\"#full\"] {\n    max-width: 100vw;\n}\n\n\nThis creates full-bleed images in the Casper theme, which stretch beyond their\nusual boundaries right up to the edge of the window. Every theme handles these\ntypes of things slightly differently, but it\'s a great trick to play with if you\nwant to have a variety of image sizes and styles.\n\nReference lists\nThe quick brown fox [https://en.wikipedia.org/wiki/Fox], jumped over the lazy \ndog [https://en.wikipedia.org/wiki/Dog].\n\nAnother way to insert links in markdown is using reference lists. You might want\nto use this style of linking to cite reference material in a Wikipedia-style.\nAll of the links are listed at the end of the document, so you can maintain full\nseparation between content and its source or reference.\n\nCreating footnotes\nThe quick brown fox[1]  jumped over the lazy dog[2].\n\nFootnotes are a great way to add additional contextual details when appropriate.\nGhost will automatically add footnote content to the very end of your post.\n\nFull HTML\nPerhaps the best part of Markdown is that you\'re never limited to just Markdown.\nYou can write HTML directly in the Ghost editor and it will just work as HTML\nusually does. No limits! Here\'s a standard YouTube embed code as an example:\n\n\n--------------------------------------------------------------------------------\n\n 1. Foxes are red ↩︎\n    \n    \n 2. Dogs are usually not red ↩︎','https://casper.ghost.org/v1.0.0/images/advanced.jpg',0,0,'published',NULL,'public',NULL,NULL,'5951f5fca366002ebd5dbef7','2018-11-06 14:09:37','1','2018-11-06 14:09:37','1','2018-11-06 14:09:39','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5be1a0a24c322d003485e385','4158d47a-e148-4e38-9868-bac1df6aaa60','Making your site private','private-sites','{\"version\":\"0.3.1\",\"markups\":[],\"atoms\":[],\"cards\":[[\"card-markdown\",{\"cardName\":\"card-markdown\",\"markdown\":\"Sometimes you might want to put your site behind closed doors\\n\\nIf you\'ve got a publication that you don\'t want the world to see yet because it\'s not ready to launch, you can hide your Ghost site behind a simple shared pass-phrase.\\n\\nYou can toggle this preference on at the bottom of Ghost\'s General Settings\\n\\n![private](https://casper.ghost.org/v1.0.0/images/private.png)\\n\\nGhost will give you a short, randomly generated pass-phrase which you can share with anyone who needs access to the site while you\'re working on it. While this setting is enabled, all search engine optimisation features will be switched off to help keep the site off the radar.\\n\\nDo remember though, this is *not* secure authentication. You shouldn\'t rely on this feature for protecting important private data. It\'s just a simple, shared pass-phrase for very basic privacy.\"}]],\"sections\":[[10,0]]}','<div class=\"kg-card-markdown\"><p>Sometimes you might want to put your site behind closed doors</p>\n<p>If you\'ve got a publication that you don\'t want the world to see yet because it\'s not ready to launch, you can hide your Ghost site behind a simple shared pass-phrase.</p>\n<p>You can toggle this preference on at the bottom of Ghost\'s General Settings</p>\n<p><img src=\"https://casper.ghost.org/v1.0.0/images/private.png\" alt=\"private\"></p>\n<p>Ghost will give you a short, randomly generated pass-phrase which you can share with anyone who needs access to the site while you\'re working on it. While this setting is enabled, all search engine optimisation features will be switched off to help keep the site off the radar.</p>\n<p>Do remember though, this is <em>not</em> secure authentication. You shouldn\'t rely on this feature for protecting important private data. It\'s just a simple, shared pass-phrase for very basic privacy.</p>\n</div>',NULL,'Sometimes you might want to put your site behind closed doors\n\nIf you\'ve got a publication that you don\'t want the world to see yet because\nit\'s not ready to launch, you can hide your Ghost site behind a simple shared\npass-phrase.\n\nYou can toggle this preference on at the bottom of Ghost\'s General Settings\n\n\n\nGhost will give you a short, randomly generated pass-phrase which you can share\nwith anyone who needs access to the site while you\'re working on it. While this\nsetting is enabled, all search engine optimisation features will be switched off\nto help keep the site off the radar.\n\nDo remember though, this is not  secure authentication. You shouldn\'t rely on\nthis feature for protecting important private data. It\'s just a simple, shared\npass-phrase for very basic privacy.','https://casper.ghost.org/v1.0.0/images/locked.jpg',0,0,'published',NULL,'public',NULL,NULL,'5951f5fca366002ebd5dbef7','2018-11-06 14:09:38','1','2018-11-06 14:09:38','1','2018-11-06 14:09:40','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5be1a0a24c322d003485e387','dad8a1e2-b895-4943-9981-f543596d02c9','Managing Ghost users','managing-users','{\"version\":\"0.3.1\",\"markups\":[],\"atoms\":[],\"cards\":[[\"card-markdown\",{\"cardName\":\"card-markdown\",\"markdown\":\"Ghost has a number of different user roles for your team\\n\\n\\n### Authors\\n\\nThe base user level in Ghost is an author. Authors can write posts, edit their own posts, and publish their own posts. Authors are **trusted** users. If you don\'t trust users to be allowed to publish their own posts, you shouldn\'t invite them to Ghost admin.\\n\\n\\n### Editors\\n\\nEditors are the 2nd user level in Ghost. Editors can do everything that an Author can do, but they can also edit and publish the posts of others - as well as their own. Editors can also invite new authors to the site.\\n\\n\\n### Administrators\\n\\nThe top user level in Ghost is Administrator. Again, administrators can do everything that Authors and Editors can do, but they can also edit all site settings and data, not just content. Additionally, administrators have full access to invite, manage or remove any other user of the site.\\n\\n\\n### The Owner\\n\\nThere is only ever one owner of a Ghost site. The owner is a special user which has all the same permissions as an Administrator, but with two exceptions: The Owner can never be deleted. And in some circumstances the owner will have access to additional special settings if applicable — for example, billing details, if using Ghost(Pro).\\n\\n---\\n\\nIt\'s a good idea to ask all of your users to fill out their user profiles, including bio and social links. These will populate rich structured data for posts and generally create more opportunities for themes to fully populate their design. \"}]],\"sections\":[[10,0]]}','<div class=\"kg-card-markdown\"><p>Ghost has a number of different user roles for your team</p>\n<h3 id=\"authors\">Authors</h3>\n<p>The base user level in Ghost is an author. Authors can write posts, edit their own posts, and publish their own posts. Authors are <strong>trusted</strong> users. If you don\'t trust users to be allowed to publish their own posts, you shouldn\'t invite them to Ghost admin.</p>\n<h3 id=\"editors\">Editors</h3>\n<p>Editors are the 2nd user level in Ghost. Editors can do everything that an Author can do, but they can also edit and publish the posts of others - as well as their own. Editors can also invite new authors to the site.</p>\n<h3 id=\"administrators\">Administrators</h3>\n<p>The top user level in Ghost is Administrator. Again, administrators can do everything that Authors and Editors can do, but they can also edit all site settings and data, not just content. Additionally, administrators have full access to invite, manage or remove any other user of the site.</p>\n<h3 id=\"theowner\">The Owner</h3>\n<p>There is only ever one owner of a Ghost site. The owner is a special user which has all the same permissions as an Administrator, but with two exceptions: The Owner can never be deleted. And in some circumstances the owner will have access to additional special settings if applicable — for example, billing details, if using Ghost(Pro).</p>\n<hr>\n<p>It\'s a good idea to ask all of your users to fill out their user profiles, including bio and social links. These will populate rich structured data for posts and generally create more opportunities for themes to fully populate their design.</p>\n</div>',NULL,'Ghost has a number of different user roles for your team\n\nAuthors\nThe base user level in Ghost is an author. Authors can write posts, edit their\nown posts, and publish their own posts. Authors are trusted  users. If you don\'t\ntrust users to be allowed to publish their own posts, you shouldn\'t invite them\nto Ghost admin.\n\nEditors\nEditors are the 2nd user level in Ghost. Editors can do everything that an\nAuthor can do, but they can also edit and publish the posts of others - as well\nas their own. Editors can also invite new authors to the site.\n\nAdministrators\nThe top user level in Ghost is Administrator. Again, administrators can do\neverything that Authors and Editors can do, but they can also edit all site\nsettings and data, not just content. Additionally, administrators have full\naccess to invite, manage or remove any other user of the site.\n\nThe Owner\nThere is only ever one owner of a Ghost site. The owner is a special user which\nhas all the same permissions as an Administrator, but with two exceptions: The\nOwner can never be deleted. And in some circumstances the owner will have access\nto additional special settings if applicable — for example, billing details, if\nusing Ghost(Pro).\n\n\n--------------------------------------------------------------------------------\n\nIt\'s a good idea to ask all of your users to fill out their user profiles,\nincluding bio and social links. These will populate rich structured data for\nposts and generally create more opportunities for themes to fully populate their\ndesign.','https://casper.ghost.org/v1.0.0/images/team.jpg',0,0,'published',NULL,'public',NULL,NULL,'5951f5fca366002ebd5dbef7','2018-11-06 14:09:38','1','2018-11-06 14:09:38','1','2018-11-06 14:09:41','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5be1a0a24c322d003485e389','6465f27a-42cf-46c9-913c-99630f0b326f','Organising your content with tags','using-tags','{\"version\":\"0.3.1\",\"markups\":[],\"atoms\":[],\"cards\":[[\"card-markdown\",{\"cardName\":\"card-markdown\",\"markdown\":\"Ghost has a single, powerful organisational taxonomy, called tags.\\n\\nIt doesn\'t matter whether you want to call them categories, tags, boxes, or anything else. You can think of Ghost tags a lot like Gmail labels. By tagging posts with one or more keyword, you can organise articles into buckets of related content.\\n\\n\\n## Basic tagging\\n\\nWhen you write a post, you can assign tags to help differentiate between categories of content. For example, you might tag some posts with `News` and other posts with `Cycling`, which would create two distinct categories of content listed on `/tag/news/` and `/tag/cycling/`, respectively.\\n\\nIf you tag a post with both `News` *and* `Cycling` - then it appears in both sections.\\n\\nTag archives are like dedicated home-pages for each category of content that you have. They have their own pages, their own RSS feeds, and can support their own cover images and meta data.\\n\\n\\n## The primary tag\\n\\nInside the Ghost editor, you can drag and drop tags into a specific order. The first tag in the list is always given the most importance, and some themes will only display the primary tag (the first tag in the list) by default. So you can add the most important tag which you want to show up in your theme, but also add a bunch of related tags which are less important.\\n\\n==**News**, Cycling, Bart Stevens, Extreme Sports==\\n\\nIn this example, **News** is the primary tag which will be displayed by the theme, but the post will also still receive all the other tags, and show up in their respective archives.\\n\\n\\n## Private tags\\n\\nSometimes you may want to assign a post a specific tag, but you don\'t necessarily want that tag appearing in the theme or creating an archive page. In Ghost, hashtags are private and can be used for special styling.\\n\\nFor example, if you sometimes publish posts with video content - you might want your theme to adapt and get rid of the sidebar for these posts, to give more space for an embedded video to fill the screen. In this case, you could use private tags to tell your theme what to do.\\n\\n==**News**, Cycling, #video==\\n\\nHere, the theme would assign the post publicly displayed tags of `News`, and `Cycling` - but it would also keep a private record of the post being tagged with `#video`.\\n\\nIn your theme, you could then look for private tags conditionally and give them special formatting:\\n\\n```\\n{{#post}}\\n    {{#has tag=\\\"#video\\\"}}\\n        ...markup for a nice big video post layout...\\n    {{else}}\\n        ...regular markup for a post...\\n    {{/has}}\\n{{/post}}\\n```\\n\\nYou can find documentation for theme development techniques like this and many more over on Ghost\'s extensive [theme documentation](https://themes.ghost.org/v1.23.0/).\"}]],\"sections\":[[10,0]]}','<div class=\"kg-card-markdown\"><p>Ghost has a single, powerful organisational taxonomy, called tags.</p>\n<p>It doesn\'t matter whether you want to call them categories, tags, boxes, or anything else. You can think of Ghost tags a lot like Gmail labels. By tagging posts with one or more keyword, you can organise articles into buckets of related content.</p>\n<h2 id=\"basictagging\">Basic tagging</h2>\n<p>When you write a post, you can assign tags to help differentiate between categories of content. For example, you might tag some posts with <code>News</code> and other posts with <code>Cycling</code>, which would create two distinct categories of content listed on <code>/tag/news/</code> and <code>/tag/cycling/</code>, respectively.</p>\n<p>If you tag a post with both <code>News</code> <em>and</em> <code>Cycling</code> - then it appears in both sections.</p>\n<p>Tag archives are like dedicated home-pages for each category of content that you have. They have their own pages, their own RSS feeds, and can support their own cover images and meta data.</p>\n<h2 id=\"theprimarytag\">The primary tag</h2>\n<p>Inside the Ghost editor, you can drag and drop tags into a specific order. The first tag in the list is always given the most importance, and some themes will only display the primary tag (the first tag in the list) by default. So you can add the most important tag which you want to show up in your theme, but also add a bunch of related tags which are less important.</p>\n<p><mark><strong>News</strong>, Cycling, Bart Stevens, Extreme Sports</mark></p>\n<p>In this example, <strong>News</strong> is the primary tag which will be displayed by the theme, but the post will also still receive all the other tags, and show up in their respective archives.</p>\n<h2 id=\"privatetags\">Private tags</h2>\n<p>Sometimes you may want to assign a post a specific tag, but you don\'t necessarily want that tag appearing in the theme or creating an archive page. In Ghost, hashtags are private and can be used for special styling.</p>\n<p>For example, if you sometimes publish posts with video content - you might want your theme to adapt and get rid of the sidebar for these posts, to give more space for an embedded video to fill the screen. In this case, you could use private tags to tell your theme what to do.</p>\n<p><mark><strong>News</strong>, Cycling, #video</mark></p>\n<p>Here, the theme would assign the post publicly displayed tags of <code>News</code>, and <code>Cycling</code> - but it would also keep a private record of the post being tagged with <code>#video</code>.</p>\n<p>In your theme, you could then look for private tags conditionally and give them special formatting:</p>\n<pre><code>{{#post}}\n    {{#has tag=&quot;#video&quot;}}\n        ...markup for a nice big video post layout...\n    {{else}}\n        ...regular markup for a post...\n    {{/has}}\n{{/post}}\n</code></pre>\n<p>You can find documentation for theme development techniques like this and many more over on Ghost\'s extensive <a href=\"https://themes.ghost.org/v1.23.0/\">theme documentation</a>.</p>\n</div>',NULL,'Ghost has a single, powerful organisational taxonomy, called tags.\n\nIt doesn\'t matter whether you want to call them categories, tags, boxes, or\nanything else. You can think of Ghost tags a lot like Gmail labels. By tagging\nposts with one or more keyword, you can organise articles into buckets of\nrelated content.\n\nBasic tagging\nWhen you write a post, you can assign tags to help differentiate between\ncategories of content. For example, you might tag some posts with News  and\nother posts with Cycling, which would create two distinct categories of content\nlisted on /tag/news/  and /tag/cycling/, respectively.\n\nIf you tag a post with both News  and  Cycling  - then it appears in both\nsections.\n\nTag archives are like dedicated home-pages for each category of content that you\nhave. They have their own pages, their own RSS feeds, and can support their own\ncover images and meta data.\n\nThe primary tag\nInside the Ghost editor, you can drag and drop tags into a specific order. The\nfirst tag in the list is always given the most importance, and some themes will\nonly display the primary tag (the first tag in the list) by default. So you can\nadd the most important tag which you want to show up in your theme, but also add\na bunch of related tags which are less important.\n\nNews, Cycling, Bart Stevens, Extreme Sports\n\nIn this example, News  is the primary tag which will be displayed by the theme,\nbut the post will also still receive all the other tags, and show up in their\nrespective archives.\n\nPrivate tags\nSometimes you may want to assign a post a specific tag, but you don\'t\nnecessarily want that tag appearing in the theme or creating an archive page. In\nGhost, hashtags are private and can be used for special styling.\n\nFor example, if you sometimes publish posts with video content - you might want\nyour theme to adapt and get rid of the sidebar for these posts, to give more\nspace for an embedded video to fill the screen. In this case, you could use\nprivate tags to tell your theme what to do.\n\nNews, Cycling, #video\n\nHere, the theme would assign the post publicly displayed tags of News, and \nCycling  - but it would also keep a private record of the post being tagged with\n #video.\n\nIn your theme, you could then look for private tags conditionally and give them\nspecial formatting:\n\n{{#post}}\n    {{#has tag=\"#video\"}}\n        ...markup for a nice big video post layout...\n    {{else}}\n        ...regular markup for a post...\n    {{/has}}\n{{/post}}\n\n\nYou can find documentation for theme development techniques like this and many\nmore over on Ghost\'s extensive theme documentation\n[https://themes.ghost.org/v1.23.0/].','https://casper.ghost.org/v1.0.0/images/tags.jpg',0,0,'published',NULL,'public',NULL,NULL,'5951f5fca366002ebd5dbef7','2018-11-06 14:09:38','1','2018-11-06 14:09:38','1','2018-11-06 14:09:42','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5be1a0a34c322d003485e38b','e554c786-b8ca-4668-bfb2-199e48ddd681','Using the Ghost editor','the-editor','{\"version\":\"0.3.1\",\"markups\":[],\"atoms\":[],\"cards\":[[\"card-markdown\",{\"cardName\":\"card-markdown\",\"markdown\":\"Ghost uses a language called **Markdown** to format text.\\n\\nWhen you go to edit a post and see special characters and colours intertwined between the words, those are Markdown shortcuts which tell Ghost what to do with the words in your document. The biggest benefit of Markdown is that you can quickly apply formatting as you type, without needing to pause.\\n\\nAt the bottom of the editor, you\'ll find a toolbar with basic formatting options to help you get started as easily as possible. You\'ll also notice that there\'s a **?** icon, which contains more advanced shortcuts.\\n\\nFor now, though, let\'s run you through some of the basics. You\'ll want to make sure you\'re editing this post in order to see all the Markdown we\'ve used.\\n\\n\\n## Formatting text\\n\\nThe most common shortcuts are of course, **bold** text, _italic_ text, and [hyperlinks](https://example.com). These generally make up the bulk of any document. You can type the characters out, but you can also use keyboard shortcuts.\\n\\n* `CMD/Ctrl + B` for Bold\\n* `CMD/Ctrl + I` for Italic\\n* `CMD/Ctrl + K` for a Link\\n* `CMD/Ctrl + H` for a Heading (Press multiple times for h2/h3/h4/etc)\\n\\nWith just a couple of extra characters here and there, you\'re well on your way to creating a beautifully formatted story.\\n\\n\\n## Inserting images\\n\\nImages in Markdown look just the same as links, except they\'re prefixed with an exclamation mark, like this:\\n\\n`![Image description](/path/to/image.jpg)`\\n\\n![Computer](https://casper.ghost.org/v1.0.0/images/computer.jpg)\\n\\nMost Markdown editors don\'t make you type this out, though. In Ghost you can click on the image icon in the toolbar at the bottom of the editor, or you can just click and drag an image from your desktop directly into the editor. Both will upload the image for you and generate the appropriate Markdown.\\n\\n_**Important Note:** Ghost does not currently have automatic image resizing, so it\'s always a good idea to make sure your images aren\'t gigantic files **before** uploading them to Ghost._\\n\\n\\n## Making lists\\n\\nLists in HTML are a formatting nightmare, but in Markdown they become an absolute breeze with just a couple of characters and a bit of smart automation. For numbered lists, just write out the numbers. For bullet lists, just use `*` or `-` or `+`. Like this:\\n\\n1. Crack the eggs over a bowl\\n2. Whisk them together\\n3. Make an omelette\\n\\nor\\n\\n- Remember to buy milk\\n- Feed the cat\\n- Come up with idea for next story\\n\\n\\n## Adding quotes\\n\\nWhen you want to pull out a particularly good excerpt in the middle of a piece, you can use `>` at the beginning of a paragraph to turn it into a Blockquote. You might\'ve seen this formatting before in email clients.\\n\\n> A well placed quote guides a reader through a story, helping them to understand the most important points being made\\n\\nAll themes handles blockquotes slightly differently. Sometimes they\'ll look better kept shorter, while other times you can quote fairly hefty amounts of text and get away with it. Generally, the safest option is to use blockquotes sparingly.\\n\\n\\n## Dividing things up\\n\\nIf you\'re writing a piece in parts and you just feel like you need to divide a couple of sections distinctly from each other, a horizontal rule might be just what you need. Dropping `---` on a new line will create a sleek divider, anywhere you want it.\\n\\n---\\n\\nThis should get you going with the vast majority of what you need to do in the editor, but if you\'re still curious about more advanced tips then check out the [Advanced Markdown Guide](/advanced-markdown/) - or if you\'d rather learn about how Ghost taxononomies work, we\'ve got a overview of [how to use Ghost tags](/using-tags/).\"}]],\"sections\":[[10,0]]}','<div class=\"kg-card-markdown\"><p>Ghost uses a language called <strong>Markdown</strong> to format text.</p>\n<p>When you go to edit a post and see special characters and colours intertwined between the words, those are Markdown shortcuts which tell Ghost what to do with the words in your document. The biggest benefit of Markdown is that you can quickly apply formatting as you type, without needing to pause.</p>\n<p>At the bottom of the editor, you\'ll find a toolbar with basic formatting options to help you get started as easily as possible. You\'ll also notice that there\'s a <strong>?</strong> icon, which contains more advanced shortcuts.</p>\n<p>For now, though, let\'s run you through some of the basics. You\'ll want to make sure you\'re editing this post in order to see all the Markdown we\'ve used.</p>\n<h2 id=\"formattingtext\">Formatting text</h2>\n<p>The most common shortcuts are of course, <strong>bold</strong> text, <em>italic</em> text, and <a href=\"https://example.com\">hyperlinks</a>. These generally make up the bulk of any document. You can type the characters out, but you can also use keyboard shortcuts.</p>\n<ul>\n<li><code>CMD/Ctrl + B</code> for Bold</li>\n<li><code>CMD/Ctrl + I</code> for Italic</li>\n<li><code>CMD/Ctrl + K</code> for a Link</li>\n<li><code>CMD/Ctrl + H</code> for a Heading (Press multiple times for h2/h3/h4/etc)</li>\n</ul>\n<p>With just a couple of extra characters here and there, you\'re well on your way to creating a beautifully formatted story.</p>\n<h2 id=\"insertingimages\">Inserting images</h2>\n<p>Images in Markdown look just the same as links, except they\'re prefixed with an exclamation mark, like this:</p>\n<p><code>![Image description](/path/to/image.jpg)</code></p>\n<p><img src=\"https://casper.ghost.org/v1.0.0/images/computer.jpg\" alt=\"Computer\"></p>\n<p>Most Markdown editors don\'t make you type this out, though. In Ghost you can click on the image icon in the toolbar at the bottom of the editor, or you can just click and drag an image from your desktop directly into the editor. Both will upload the image for you and generate the appropriate Markdown.</p>\n<p><em><strong>Important Note:</strong> Ghost does not currently have automatic image resizing, so it\'s always a good idea to make sure your images aren\'t gigantic files <strong>before</strong> uploading them to Ghost.</em></p>\n<h2 id=\"makinglists\">Making lists</h2>\n<p>Lists in HTML are a formatting nightmare, but in Markdown they become an absolute breeze with just a couple of characters and a bit of smart automation. For numbered lists, just write out the numbers. For bullet lists, just use <code>*</code> or <code>-</code> or <code>+</code>. Like this:</p>\n<ol>\n<li>Crack the eggs over a bowl</li>\n<li>Whisk them together</li>\n<li>Make an omelette</li>\n</ol>\n<p>or</p>\n<ul>\n<li>Remember to buy milk</li>\n<li>Feed the cat</li>\n<li>Come up with idea for next story</li>\n</ul>\n<h2 id=\"addingquotes\">Adding quotes</h2>\n<p>When you want to pull out a particularly good excerpt in the middle of a piece, you can use <code>&gt;</code> at the beginning of a paragraph to turn it into a Blockquote. You might\'ve seen this formatting before in email clients.</p>\n<blockquote>\n<p>A well placed quote guides a reader through a story, helping them to understand the most important points being made</p>\n</blockquote>\n<p>All themes handles blockquotes slightly differently. Sometimes they\'ll look better kept shorter, while other times you can quote fairly hefty amounts of text and get away with it. Generally, the safest option is to use blockquotes sparingly.</p>\n<h2 id=\"dividingthingsup\">Dividing things up</h2>\n<p>If you\'re writing a piece in parts and you just feel like you need to divide a couple of sections distinctly from each other, a horizontal rule might be just what you need. Dropping <code>---</code> on a new line will create a sleek divider, anywhere you want it.</p>\n<hr>\n<p>This should get you going with the vast majority of what you need to do in the editor, but if you\'re still curious about more advanced tips then check out the <a href=\"/advanced-markdown/\">Advanced Markdown Guide</a> - or if you\'d rather learn about how Ghost taxononomies work, we\'ve got a overview of <a href=\"/using-tags/\">how to use Ghost tags</a>.</p>\n</div>',NULL,'Ghost uses a language called Markdown  to format text.\n\nWhen you go to edit a post and see special characters and colours intertwined\nbetween the words, those are Markdown shortcuts which tell Ghost what to do with\nthe words in your document. The biggest benefit of Markdown is that you can\nquickly apply formatting as you type, without needing to pause.\n\nAt the bottom of the editor, you\'ll find a toolbar with basic formatting options\nto help you get started as easily as possible. You\'ll also notice that there\'s a\n ?  icon, which contains more advanced shortcuts.\n\nFor now, though, let\'s run you through some of the basics. You\'ll want to make\nsure you\'re editing this post in order to see all the Markdown we\'ve used.\n\nFormatting text\nThe most common shortcuts are of course, bold  text, italic  text, and \nhyperlinks [https://example.com]. These generally make up the bulk of any\ndocument. You can type the characters out, but you can also use keyboard\nshortcuts.\n\n * CMD/Ctrl + B  for Bold\n * CMD/Ctrl + I  for Italic\n * CMD/Ctrl + K  for a Link\n * CMD/Ctrl + H  for a Heading (Press multiple times for h2/h3/h4/etc)\n\nWith just a couple of extra characters here and there, you\'re well on your way\nto creating a beautifully formatted story.\n\nInserting images\nImages in Markdown look just the same as links, except they\'re prefixed with an\nexclamation mark, like this:\n\n![Image description](/path/to/image.jpg)\n\n\n\nMost Markdown editors don\'t make you type this out, though. In Ghost you can\nclick on the image icon in the toolbar at the bottom of the editor, or you can\njust click and drag an image from your desktop directly into the editor. Both\nwill upload the image for you and generate the appropriate Markdown.\n\nImportant Note:  Ghost does not currently have automatic image resizing, so it\'s\nalways a good idea to make sure your images aren\'t gigantic files before \nuploading them to Ghost.\n\nMaking lists\nLists in HTML are a formatting nightmare, but in Markdown they become an\nabsolute breeze with just a couple of characters and a bit of smart automation.\nFor numbered lists, just write out the numbers. For bullet lists, just use *  or\n -  or +. Like this:\n\n 1. Crack the eggs over a bowl\n 2. Whisk them together\n 3. Make an omelette\n\nor\n\n * Remember to buy milk\n * Feed the cat\n * Come up with idea for next story\n\nAdding quotes\nWhen you want to pull out a particularly good excerpt in the middle of a piece,\nyou can use >  at the beginning of a paragraph to turn it into a Blockquote. You\nmight\'ve seen this formatting before in email clients.\n\nA well placed quote guides a reader through a story, helping them to understand\nthe most important points being made\n\nAll themes handles blockquotes slightly differently. Sometimes they\'ll look\nbetter kept shorter, while other times you can quote fairly hefty amounts of\ntext and get away with it. Generally, the safest option is to use blockquotes\nsparingly.\n\nDividing things up\nIf you\'re writing a piece in parts and you just feel like you need to divide a\ncouple of sections distinctly from each other, a horizontal rule might be just\nwhat you need. Dropping ---  on a new line will create a sleek divider, anywhere\nyou want it.\n\n\n--------------------------------------------------------------------------------\n\nThis should get you going with the vast majority of what you need to do in the\neditor, but if you\'re still curious about more advanced tips then check out the \nAdvanced Markdown Guide [/advanced-markdown/]  - or if you\'d rather learn about\nhow Ghost taxononomies work, we\'ve got a overview of how to use Ghost tags\n[/using-tags/].','https://casper.ghost.org/v1.0.0/images/writing.jpg',0,0,'published',NULL,'public',NULL,NULL,'5951f5fca366002ebd5dbef7','2018-11-06 14:09:39','1','2018-11-06 14:09:39','1','2018-11-06 14:09:43','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5be1a0a34c322d003485e38d','9040fe03-8230-4eb9-8df8-31e1baa3fbee','Welcome to Ghost','welcome','{\"version\":\"0.3.1\",\"markups\":[],\"atoms\":[],\"cards\":[[\"card-markdown\",{\"cardName\":\"card-markdown\",\"markdown\":\"Hey! Welcome to Ghost, it\'s great to have you :)\\n\\nWe know that first impressions are important, so we\'ve populated your new site with some initial **Getting Started** posts that will help you get familiar with everything in no time. This is the first one!\\n\\n\\n### There are a few things that you should know up-front:\\n\\n1. Ghost is designed for ambitious, professional publishers who want to actively build a business around their content. That\'s who it works best for. If you\'re using Ghost for some other purpose, that\'s fine too - but it might not be the best choice for you.\\n\\n2. The entire platform can be modified and customized to suit your needs, which is very powerful, but doing so **does** require some knowledge of code. Ghost is not necessarily a good platform for beginners or people who just want a simple personal blog.\\n\\n3. For the best experience we recommend downloading the [Ghost Desktop App](https://ghost.org/downloads/) for your computer, which is the best way to access your Ghost site on a desktop device.\\n\\nGhost is made by an independent non-profit organisation called the Ghost Foundation. We are 100% self funded by revenue from our [Ghost(Pro)](https://ghost.org/pricing) service, and every penny we make is re-invested into funding further development of free, open source technology for modern journalism.\\n\\nThe main thing you\'ll want to read about next is probably: [the Ghost editor](/the-editor/).\\n\\nOnce you\'re done reading, you can simply delete the default **Ghost** user from your team to remove all of these introductory posts!\"}]],\"sections\":[[10,0]]}','<div class=\"kg-card-markdown\"><p>Hey! Welcome to Ghost, it\'s great to have you :)</p>\n<p>We know that first impressions are important, so we\'ve populated your new site with some initial <strong>Getting Started</strong> posts that will help you get familiar with everything in no time. This is the first one!</p>\n<h3 id=\"thereareafewthingsthatyoushouldknowupfront\">There are a few things that you should know up-front:</h3>\n<ol>\n<li>\n<p>Ghost is designed for ambitious, professional publishers who want to actively build a business around their content. That\'s who it works best for. If you\'re using Ghost for some other purpose, that\'s fine too - but it might not be the best choice for you.</p>\n</li>\n<li>\n<p>The entire platform can be modified and customized to suit your needs, which is very powerful, but doing so <strong>does</strong> require some knowledge of code. Ghost is not necessarily a good platform for beginners or people who just want a simple personal blog.</p>\n</li>\n<li>\n<p>For the best experience we recommend downloading the <a href=\"https://ghost.org/downloads/\">Ghost Desktop App</a> for your computer, which is the best way to access your Ghost site on a desktop device.</p>\n</li>\n</ol>\n<p>Ghost is made by an independent non-profit organisation called the Ghost Foundation. We are 100% self funded by revenue from our <a href=\"https://ghost.org/pricing\">Ghost(Pro)</a> service, and every penny we make is re-invested into funding further development of free, open source technology for modern journalism.</p>\n<p>The main thing you\'ll want to read about next is probably: <a href=\"/the-editor/\">the Ghost editor</a>.</p>\n<p>Once you\'re done reading, you can simply delete the default <strong>Ghost</strong> user from your team to remove all of these introductory posts!</p>\n</div>',NULL,'Hey! Welcome to Ghost, it\'s great to have you :)\n\nWe know that first impressions are important, so we\'ve populated your new site\nwith some initial Getting Started  posts that will help you get familiar with\neverything in no time. This is the first one!\n\nThere are a few things that you should know up-front:\n 1. Ghost is designed for ambitious, professional publishers who want to\n    actively build a business around their content. That\'s who it works best\n    for. If you\'re using Ghost for some other purpose, that\'s fine too - but it\n    might not be the best choice for you.\n    \n    \n 2. The entire platform can be modified and customized to suit your needs, which\n    is very powerful, but doing so does  require some knowledge of code. Ghost\n    is not necessarily a good platform for beginners or people who just want a\n    simple personal blog.\n    \n    \n 3. For the best experience we recommend downloading the Ghost Desktop App\n    [https://ghost.org/downloads/]  for your computer, which is the best way to\n    access your Ghost site on a desktop device.\n    \n    \n\nGhost is made by an independent non-profit organisation called the Ghost\nFoundation. We are 100% self funded by revenue from our Ghost(Pro)\n[https://ghost.org/pricing]  service, and every penny we make is re-invested\ninto funding further development of free, open source technology for modern\njournalism.\n\nThe main thing you\'ll want to read about next is probably: the Ghost editor\n[/the-editor/].\n\nOnce you\'re done reading, you can simply delete the default Ghost  user from\nyour team to remove all of these introductory posts!','https://casper.ghost.org/v1.0.0/images/welcome.jpg',0,0,'published',NULL,'public',NULL,NULL,'5951f5fca366002ebd5dbef7','2018-11-06 14:09:39','1','2018-11-06 14:09:39','1','2018-11-06 14:09:44','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5be1a6803c88b300015fb3bb','15c253ba-ef3b-4534-9419-3010e5afec2b','Ghost Test Post','ghost-test-post','{\"version\":\"0.3.1\",\"markups\":[],\"atoms\":[],\"cards\":[[\"card-markdown\",{\"cardName\":\"card-markdown\",\"markdown\":\"[TOC]\\n\\n## start my test\\n\\n- ul 1\\n- ul 2\\n- ul 3\\n1. list 1\\n2. list 2\\n3. list 3\\n\\n## Oh how cool\"}]],\"sections\":[[10,0]]}','<div class=\"kg-card-markdown\"><p>[TOC]</p>\n<h2 id=\"startmytest\">start my test</h2>\n<ul>\n<li>ul 1</li>\n<li>ul 2</li>\n<li>ul 3</li>\n</ul>\n<ol>\n<li>list 1</li>\n<li>list 2</li>\n<li>list 3</li>\n</ol>\n<h2 id=\"ohhowcool\">Oh how cool</h2>\n</div>',NULL,'[TOC]\n\nstart my test\n * ul 1\n * ul 2\n * ul 3\n\n 1. list 1\n 2. list 2\n 3. list 3\n\nOh how cool',NULL,0,0,'published',NULL,'public',NULL,NULL,'1','2018-11-06 14:34:40','1','2018-11-06 14:36:24','1','2018-11-06 14:36:19','1',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5be2a22b2e173f0001a46911','0d7dea4e-999d-44fa-a363-581b6ce2622c','字体太丑','zi-ti-tai-chou','{\"version\":\"0.3.1\",\"markups\":[],\"atoms\":[],\"cards\":[[\"card-markdown\",{\"cardName\":\"card-markdown\",\"markdown\":\"很烦全是英文 fuck!!!\"}]],\"sections\":[[10,0]]}','<div class=\"kg-card-markdown\"><p>很烦全是英文 fuck!!!</p>\n</div>',NULL,'很烦全是英文 fuck!!!',NULL,0,0,'published',NULL,'public',NULL,NULL,'5be2a20e2e173f0001a4690d','2018-11-07 08:28:27','5be2a20e2e173f0001a4690d','2018-11-07 08:32:30','5be2a20e2e173f0001a4690d','2018-11-07 08:32:30','5be2a20e2e173f0001a4690d',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5be2a30e2e173f0001a46915','50dd76de-59a5-4bd5-a8e2-613011534bd5','(Unt1itled)','unt1itled','{\"version\":\"0.3.1\",\"markups\":[],\"atoms\":[],\"cards\":[[\"card-markdown\",{\"cardName\":\"card-markdown\",\"markdown\":\"12323\"}]],\"sections\":[[10,0]]}','<div class=\"kg-card-markdown\"><p>12323</p>\n</div>',NULL,'12323',NULL,0,0,'draft',NULL,'public',NULL,NULL,'1','2018-11-07 08:32:14','1','2018-11-07 08:33:06','1',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5be2a3e42e173f0001a4691b','027baa79-7446-48bf-b73c-7b230c46e0b2','这是标题啊','zhe-shi-biao-ti-a','{\"version\":\"0.3.1\",\"markups\":[],\"atoms\":[],\"cards\":[[\"card-markdown\",{\"cardName\":\"card-markdown\",\"markdown\":\"## 心情激动的第一次**23333****\\n![07](/content/images/2018/11/07.jpg)\"}]],\"sections\":[[10,0]]}','<div class=\"kg-card-markdown\"><h2 id=\"23333\">心情激动的第一次**23333****</h2>\n<p><img src=\"/content/images/2018/11/07.jpg\" alt=\"07\"></p>\n</div>',NULL,'心情激动的第一次**23333****','/content/images/2018/11/06--2-.jpg',0,0,'published',NULL,'public',NULL,NULL,'5be2a32f2e173f0001a46917','2018-11-07 08:35:48','5be2a32f2e173f0001a46917','2018-11-07 08:42:20','5be2a32f2e173f0001a46917','2018-11-07 08:38:26','5be2a32f2e173f0001a46917',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5be2a4b42e173f0001a4691d','f1fa4fed-b5c4-4545-ace9-356ec0fee982','免费shadowsocks 账号','mian-fei-shadowsocks-zhang-hao','{\"version\":\"0.3.1\",\"markups\":[],\"atoms\":[],\"cards\":[[\"card-markdown\",{\"cardName\":\"card-markdown\",\"markdown\":\"[toc]\\n\\n### 搭建\\n#### 目的\\n  - 使用 google \\n  - 使用 facebook\\n  - 使用 twitter\\n#### 硬件与软件\\n  - 一台在防火墙之外的服务器；\\n  - 在本机需要安装 Shadowsocks 本地端，用于加密传输数据；\\n  - 服务器需要安装 Shadowsocks 服务端，用于解密加密后的传输数据，解密出原数据后发送到目标服务器。\\n\\n #### 原理\\n \\n Shadowsocks 由两部分组成，运行在本地的 ss-local 和运行在防火墙之外服务器上的 ss-server，下面来分别详细介绍它们的职责（以下对 Shadowsocks 原理的解析只是我的大概估计，可能会有细微的差别）。\\n \\n ##### ss-local\\nss-local 的职责是在本机启动和监听着一个服务，本地软件的网络请求都先发送到 ss-local，ss-local 收到来自本地软件的网络请求后，把要传输的原数据根据用户配置的加密方法和密码进行加密，再转发到墙外的服务器去。\\n\\n ##### ss-server\\nss-server 的职责是在墙外服务器启动和监听一个服务，该服务监听来自本机的 ss-local 的请求。在收到来自 ss-local 转发过来的数据时，会先根据用户配置的加密方法和密码对数据进行对称解密，以获得加密后的数据的原内容。同时还会解 SOCKS5 协议，读出本次请求真正的目标服务地址(例如 Google 服务器地址)，再把解密后得到的原数据转发到真正的目标服务。\\n\\n当真正的目标服务返回了数据时，ss-server 端会把返回的数据加密后转发给对应的 ss-local 端，ss-local 端收到数据再解密后，转发给本机的软件。这是一个对称相反的过程。\\n\\n由于 ss-local 和 ss-server 端都需要用对称加密算法对数据进行加密和解密，因此这两端的加密方法和密码必须配置为一样。Shadowsocks 提供了一系列标准可靠的对称算法可供用户选择，例如 rc4、aes、des、chacha20 等等。Shadowsocks 对数据加密后再传输的目的是为了混淆原数据，让途中的防火墙无法得出传输的原数据。但其实用这些安全性高计算量大的对称加密算法去实现混淆有点“杀鸡用牛刀”。\\n\\n #### 实现\\n  - 服务端可以参考[中文脚本](https://github.com/onekeyshell/kcptun_for_ss_ssr)，\\n  - 客户端在[官方仓库](https://github.com/shadowsocks) release中自己查找\\n### 账号\\n\\n- text\\n>    IP: 54.169.76.177 \\n>    SS-libev configure file : /etc/shadowsocks-libev/config.json  \\n>    SS-libev Server Port : 18989  \\n>    SS-libev Password : cao1..  \\n>    SS-libev Encryption Method : aes-256-cfb  \\n\\n- qrcode\\n![ss](/content/images/2018/11/ss.jpg)\\n\\n- backup IP\\n> 3.0.58.158\\n\\n\\n\\n\\n### 参考文档\\n - [你也能写个 Shadowsocks](https://segmentfault.com/a/1190000011862912)\\n - [onekeyshell/kcptun_for_ss_ssr](https://github.com/onekeyshell/kcptun_for_ss_ssr)\\n\\n\\n有不明白的地方可以私聊\\n\"}]],\"sections\":[[10,0]]}','<div class=\"kg-card-markdown\"><p>[toc]</p>\n<h3 id=\"\">搭建</h3>\n<h4 id=\"\">目的</h4>\n<ul>\n<li>使用 google</li>\n<li>使用 facebook</li>\n<li>使用 twitter</li>\n</ul>\n<h4 id=\"\">硬件与软件</h4>\n<ul>\n<li>一台在防火墙之外的服务器；</li>\n<li>在本机需要安装 Shadowsocks 本地端，用于加密传输数据；</li>\n<li>服务器需要安装 Shadowsocks 服务端，用于解密加密后的传输数据，解密出原数据后发送到目标服务器。</li>\n</ul>\n<h4 id=\"\">原理</h4>\n<p>Shadowsocks 由两部分组成，运行在本地的 ss-local 和运行在防火墙之外服务器上的 ss-server，下面来分别详细介绍它们的职责（以下对 Shadowsocks 原理的解析只是我的大概估计，可能会有细微的差别）。</p>\n<h5 id=\"sslocal\">ss-local</h5>\n<p>ss-local 的职责是在本机启动和监听着一个服务，本地软件的网络请求都先发送到 ss-local，ss-local 收到来自本地软件的网络请求后，把要传输的原数据根据用户配置的加密方法和密码进行加密，再转发到墙外的服务器去。</p>\n<h5 id=\"ssserver\">ss-server</h5>\n<p>ss-server 的职责是在墙外服务器启动和监听一个服务，该服务监听来自本机的 ss-local 的请求。在收到来自 ss-local 转发过来的数据时，会先根据用户配置的加密方法和密码对数据进行对称解密，以获得加密后的数据的原内容。同时还会解 SOCKS5 协议，读出本次请求真正的目标服务地址(例如 Google 服务器地址)，再把解密后得到的原数据转发到真正的目标服务。</p>\n<p>当真正的目标服务返回了数据时，ss-server 端会把返回的数据加密后转发给对应的 ss-local 端，ss-local 端收到数据再解密后，转发给本机的软件。这是一个对称相反的过程。</p>\n<p>由于 ss-local 和 ss-server 端都需要用对称加密算法对数据进行加密和解密，因此这两端的加密方法和密码必须配置为一样。Shadowsocks 提供了一系列标准可靠的对称算法可供用户选择，例如 rc4、aes、des、chacha20 等等。Shadowsocks 对数据加密后再传输的目的是为了混淆原数据，让途中的防火墙无法得出传输的原数据。但其实用这些安全性高计算量大的对称加密算法去实现混淆有点“杀鸡用牛刀”。</p>\n<h4 id=\"\">实现</h4>\n<ul>\n<li>服务端可以参考<a href=\"https://github.com/onekeyshell/kcptun_for_ss_ssr\">中文脚本</a>，</li>\n<li>客户端在<a href=\"https://github.com/shadowsocks\">官方仓库</a> release中自己查找</li>\n</ul>\n<h3 id=\"\">账号</h3>\n<ul>\n<li>text</li>\n</ul>\n<blockquote>\n<p>IP: 54.169.76.177<br>\nSS-libev configure file : /etc/shadowsocks-libev/config.json<br>\nSS-libev Server Port : 18989<br>\nSS-libev Password : cao1..<br>\nSS-libev Encryption Method : aes-256-cfb</p>\n</blockquote>\n<ul>\n<li>\n<p>qrcode<br>\n<img src=\"/content/images/2018/11/ss.jpg\" alt=\"ss\"></p>\n</li>\n<li>\n<p>backup IP</p>\n</li>\n</ul>\n<blockquote>\n<p>3.0.58.158</p>\n</blockquote>\n<h3 id=\"\">参考文档</h3>\n<ul>\n<li><a href=\"https://segmentfault.com/a/1190000011862912\">你也能写个 Shadowsocks</a></li>\n<li><a href=\"https://github.com/onekeyshell/kcptun_for_ss_ssr\">onekeyshell/kcptun_for_ss_ssr</a></li>\n</ul>\n<p>有不明白的地方可以私聊</p>\n</div>',NULL,'[toc]\n\n搭建\n目的\n * 使用 google\n * 使用 facebook\n * 使用 twitter\n\n硬件与软件\n * 一台在防火墙之外的服务器；\n * 在本机需要安装 Shadowsocks 本地端，用于加密传输数据；\n * 服务器需要安装 Shadowsocks 服务端，用于解密加密后的传输数据，解密出原数据后发送到目标服务器。\n\n原理\nShadowsocks 由两部分组成，运行在本地的 ss-local 和运行在防火墙之外服务器上的 ss-server，下面来分别详细介绍它们的职责（以下对\nShadowsocks 原理的解析只是我的大概估计，可能会有细微的差别）。\n\nss-local\nss-local 的职责是在本机启动和监听着一个服务，本地软件的网络请求都先发送到 ss-local，ss-local\n收到来自本地软件的网络请求后，把要传输的原数据根据用户配置的加密方法和密码进行加密，再转发到墙外的服务器去。\n\nss-server\nss-server 的职责是在墙外服务器启动和监听一个服务，该服务监听来自本机的 ss-local 的请求。在收到来自 ss-local\n转发过来的数据时，会先根据用户配置的加密方法和密码对数据进行对称解密，以获得加密后的数据的原内容。同时还会解 SOCKS5\n协议，读出本次请求真正的目标服务地址(例如 Google 服务器地址)，再把解密后得到的原数据转发到真正的目标服务。\n\n当真正的目标服务返回了数据时，ss-server 端会把返回的数据加密后转发给对应的 ss-local 端，ss-local\n端收到数据再解密后，转发给本机的软件。这是一个对称相反的过程。\n\n由于 ss-local 和 ss-server 端都需要用对称加密算法对数据进行加密和解密，因此这两端的加密方法和密码必须配置为一样。Shadowsocks\n提供了一系列标准可靠的对称算法可供用户选择，例如 rc4、aes、des、chacha20 等等。Shadowsocks\n对数据加密后再传输的目的是为了混淆原数据，让途中的防火墙无法得出传输的原数据。但其实用这些安全性高计算量大的对称加密算法去实现混淆有点“杀鸡用牛刀”。\n\n实现\n * 服务端可以参考中文脚本 [https://github.com/onekeyshell/kcptun_for_ss_ssr]，\n * 客户端在官方仓库 [https://github.com/shadowsocks]  release中自己查找\n\n账号\n * text\n\nIP: 54.169.76.177\nSS-libev configure file : /etc/shadowsocks-libev/config.json\nSS-libev Server Port : 18989\nSS-libev Password : cao1..\nSS-libev Encryption Method : aes-256-cfb\n\n * qrcode\n   \n   \n   \n * backup IP\n   \n   \n\n3.0.58.158\n\n参考文档\n * 你也能写个 Shadowsocks [https://segmentfault.com/a/1190000011862912]\n * onekeyshell/kcptun_for_ss_ssr\n   [https://github.com/onekeyshell/kcptun_for_ss_ssr]\n\n有不明白的地方可以私聊','/content/images/2018/11/tizi.jpg',1,0,'published',NULL,'public',NULL,NULL,'1','2018-11-07 08:39:16','1','2018-11-07 13:31:29','1','2018-11-07 08:43:06','1','[toc]','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_authors`
--

DROP TABLE IF EXISTS `posts_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts_authors` (
  `id` varchar(24) NOT NULL,
  `post_id` varchar(24) NOT NULL,
  `author_id` varchar(24) NOT NULL,
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `posts_authors_post_id_foreign` (`post_id`),
  KEY `posts_authors_author_id_foreign` (`author_id`),
  CONSTRAINT `posts_authors_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`),
  CONSTRAINT `posts_authors_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_authors`
--

LOCK TABLES `posts_authors` WRITE;
/*!40000 ALTER TABLE `posts_authors` DISABLE KEYS */;
INSERT INTO `posts_authors` VALUES ('5be1a0a14c322d003485e380','5be1a0a14c322d003485e37f','5951f5fca366002ebd5dbef7',0),('5be1a0a14c322d003485e382','5be1a0a14c322d003485e381','5951f5fca366002ebd5dbef7',0),('5be1a0a24c322d003485e384','5be1a0a14c322d003485e383','5951f5fca366002ebd5dbef7',0),('5be1a0a24c322d003485e386','5be1a0a24c322d003485e385','5951f5fca366002ebd5dbef7',0),('5be1a0a24c322d003485e388','5be1a0a24c322d003485e387','5951f5fca366002ebd5dbef7',0),('5be1a0a24c322d003485e38a','5be1a0a24c322d003485e389','5951f5fca366002ebd5dbef7',0),('5be1a0a34c322d003485e38c','5be1a0a34c322d003485e38b','5951f5fca366002ebd5dbef7',0),('5be1a0a34c322d003485e38e','5be1a0a34c322d003485e38d','5951f5fca366002ebd5dbef7',0),('5be1a6803c88b300015fb3bc','5be1a6803c88b300015fb3bb','1',0),('5be2a22c2e173f0001a46912','5be2a22b2e173f0001a46911','5be2a20e2e173f0001a4690d',0),('5be2a30f2e173f0001a46916','5be2a30e2e173f0001a46915','1',0),('5be2a3e42e173f0001a4691c','5be2a3e42e173f0001a4691b','5be2a32f2e173f0001a46917',0),('5be2a4b42e173f0001a4691e','5be2a4b42e173f0001a4691d','1',0);
/*!40000 ALTER TABLE `posts_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_tags`
--

DROP TABLE IF EXISTS `posts_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts_tags` (
  `id` varchar(24) NOT NULL,
  `post_id` varchar(24) NOT NULL,
  `tag_id` varchar(24) NOT NULL,
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `posts_tags_post_id_foreign` (`post_id`),
  KEY `posts_tags_tag_id_foreign` (`tag_id`),
  CONSTRAINT `posts_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `posts_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_tags`
--

LOCK TABLES `posts_tags` WRITE;
/*!40000 ALTER TABLE `posts_tags` DISABLE KEYS */;
INSERT INTO `posts_tags` VALUES ('5be1a0aa4c322d003485e409','5be1a0a14c322d003485e381','5be1a0994c322d003485e33f',0),('5be1a0aa4c322d003485e40a','5be1a0a14c322d003485e383','5be1a0994c322d003485e33f',0),('5be1a0aa4c322d003485e40b','5be1a0a24c322d003485e385','5be1a0994c322d003485e33f',0),('5be1a0aa4c322d003485e40c','5be1a0a24c322d003485e387','5be1a0994c322d003485e33f',0),('5be1a0aa4c322d003485e40d','5be1a0a24c322d003485e389','5be1a0994c322d003485e33f',0),('5be1a0aa4c322d003485e40e','5be1a0a34c322d003485e38b','5be1a0994c322d003485e33f',0),('5be1a0aa4c322d003485e40f','5be1a0a34c322d003485e38d','5be1a0994c322d003485e33f',0),('5be1a6e33c88b300015fb3be','5be1a6803c88b300015fb3bb','5be1a0994c322d003485e33f',1),('5be2a5602e173f0001a4691f','5be2a3e42e173f0001a4691b','5be1a0994c322d003485e33f',0),('5be2ad9d2e173f0001a46922','5be2a4b42e173f0001a4691d','5be2ad2e2e173f0001a46921',0);
/*!40000 ALTER TABLE `posts_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refreshtokens`
--

DROP TABLE IF EXISTS `refreshtokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refreshtokens` (
  `id` varchar(24) NOT NULL,
  `token` varchar(191) NOT NULL,
  `user_id` varchar(24) NOT NULL,
  `client_id` varchar(24) NOT NULL,
  `expires` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `refreshtokens_token_unique` (`token`),
  KEY `refreshtokens_user_id_foreign` (`user_id`),
  KEY `refreshtokens_client_id_foreign` (`client_id`),
  CONSTRAINT `refreshtokens_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  CONSTRAINT `refreshtokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refreshtokens`
--

LOCK TABLES `refreshtokens` WRITE;
/*!40000 ALTER TABLE `refreshtokens` DISABLE KEYS */;
INSERT INTO `refreshtokens` VALUES ('5be1a14f3c88b300015fb3b2','szRiLwHbiwjL3YKQWR2631O0cthnsy1OxJ3RItsB6CTwbs97iVSw1g76CfDRJKZPiKDsijBIe5rfN09lPZFCnB1XV7wCf5unMDXdnDj09joCix6UwDGkq1gJEpWllJfKT9WtKdXmHKD6tAqRj8cmC1a6yJagtL4fP7sDGc9VM4TCXpgZ7TI5RYypaDt4KgD','1','5be1a0994c322d003485e340',1557281551478),('5be1a66f3c88b300015fb3b9','pK6xZpzw26LoKubOIM484mFXbAgWdvWRiPtgnipykbtcQ89DKGpEa2RM4pzeuGfwT1SE7HgmbuRxmmQqUptnyAH6OzgMhQDNVrM0eslBjNkNFZlmp3UIkNIogxIzwRBSv9MrNXcSNcfPr1eIpKNRwc3GCVN0bwzuVUG8YT4TNIzGjzBj4EMYdUiRVhD39Jz','1','5be1a0994c322d003485e340',1557417549692),('5be2a20f2e173f0001a4690f','tNzoSoVpMQgKg4bfooGd8cZLN1VItwwbvZnpiIYuQ9WsRqHN7yi2K4xBiVeKIXDWJATRuoiKImmrOJjRrqh6F9DK8JvcKGoS7rQZM22QvkygHxOaXHDZWSTXH1xNePqY8Xoo4sNix4a1Jn4Jo1MVaSq2odVYkG6XIsfNPTkqHKzuqx70WxFnxKaK68I8G8g','5be2a20e2e173f0001a4690d','5be1a0994c322d003485e340',1557347279959),('5be2a3312e173f0001a46919','ddtRkRJ5H32TecmjNwxs8AuiWyzmHAS4gPQFiSzafNrGIqPod4UVvuocuWTie1UEZABxhS1mgFSCWKcOwo2GQDzuqBG6WpUlc9AD8HNi0sHtaIu0FsNLhGmqaYhg4akTLz5Am7Zgbk2xZF0wtBPpdb9I3CSLrKrqJZXY8SJa70TJjpAeIHoAURIw3x2686l','5be2a32f2e173f0001a46917','5be1a0994c322d003485e340',1557347569008),('5be4072c0125ed00018b8ee0','tBsC568uQRbNW6DHQQBH8t9viDbSz3MvHN67yElXobr7p3FtrUhPqP9k0NbHa8jc527aqDKgkAuHNjXJFRrxEMPRO3ujG3yuhTRuy0PDmpNRDKjThK60S1aJJY9UC0cXtAs43hHNaw6FByiiPdStMBr7GslzPUTcKKHfT83NQBelNXq5zGNWqbd52o3AAKl','5be407290125ed00018b8ede','5be1a0994c322d003485e340',1557438700187);
/*!40000 ALTER TABLE `refreshtokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` varchar(24) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES ('5be1a09a4c322d003485e344','Administrator','Administrators','2018-11-06 14:09:30','1','2018-11-06 14:09:30','1'),('5be1a09a4c322d003485e345','Editor','Editors','2018-11-06 14:09:30','1','2018-11-06 14:09:30','1'),('5be1a09a4c322d003485e346','Author','Authors','2018-11-06 14:09:30','1','2018-11-06 14:09:30','1'),('5be1a09a4c322d003485e347','Contributor','Contributors','2018-11-06 14:09:30','1','2018-11-06 14:09:30','1'),('5be1a09a4c322d003485e348','Owner','Blog Owner','2018-11-06 14:09:30','1','2018-11-06 14:09:30','1');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `id` varchar(24) NOT NULL,
  `role_id` varchar(24) NOT NULL,
  `user_id` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
INSERT INTO `roles_users` VALUES ('5be1a0a04c322d003485e37e','5be1a09a4c322d003485e346','5951f5fca366002ebd5dbef7'),('5be1a0aa4c322d003485e410','5be1a09a4c322d003485e348','1'),('5be2a20f2e173f0001a4690e','5be1a09a4c322d003485e344','5be2a20e2e173f0001a4690d'),('5be2a32f2e173f0001a46918','5be1a09a4c322d003485e344','5be2a32f2e173f0001a46917'),('5be4072b0125ed00018b8edf','5be1a09a4c322d003485e344','5be407290125ed00018b8ede');
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` varchar(24) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` text,
  `type` varchar(50) NOT NULL DEFAULT 'core',
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('5be1a0b03c88b300015fb397','db_hash','dfce51e9-6bd3-40cc-9fad-7c5f3619a48c','core','2018-11-06 14:09:52','1','2018-11-06 14:09:52','1'),('5be1a0b03c88b300015fb398','next_update_check','1541735949','core','2018-11-06 14:09:52','1','2018-11-08 03:59:09','1'),('5be1a0b03c88b300015fb399','notifications','[{\"dismissible\":true,\"location\":\"bottom\",\"status\":\"alert\",\"id\":\"045f7e0c-5305-44bf-8b32-6f955d461234\",\"custom\":true,\"createdAt\":\"2018-08-21T19:07:32.000Z\",\"type\":\"info\",\"top\":true,\"message\":\"<strong>Ghost 2.0 is now available</strong> You are currently using an old version of Ghost which means you don\'t have access to the latest features. <a href=\\\"https://blog.ghost.org/2-0/\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">Read more!</a>\",\"seen\":false,\"addedAt\":\"2018-11-08T03:59:09.383Z\"}]','core','2018-11-06 14:09:52','1','2018-11-08 03:59:09','1'),('5be1a0b03c88b300015fb39a','title','Blog Using Ghost','blog','2018-11-06 14:09:52','1','2018-11-06 14:12:29','1'),('5be1a0b03c88b300015fb39b','description','Thoughts, stories and ideas.','blog','2018-11-06 14:09:52','1','2018-11-06 14:12:29','1'),('5be1a0b03c88b300015fb39c','logo','https://casper.ghost.org/v1.0.0/images/ghost-logo.svg','blog','2018-11-06 14:09:52','1','2018-11-06 14:09:52','1'),('5be1a0b03c88b300015fb39d','cover_image','https://casper.ghost.org/v1.0.0/images/blog-cover.jpg','blog','2018-11-06 14:09:52','1','2018-11-06 14:09:52','1'),('5be1a0b03c88b300015fb39e','icon','','blog','2018-11-06 14:09:52','1','2018-11-06 14:09:52','1'),('5be1a0b03c88b300015fb39f','default_locale','en','blog','2018-11-06 14:09:52','1','2018-11-07 11:11:05','1'),('5be1a0b03c88b300015fb3a0','active_timezone','Etc/UTC','blog','2018-11-06 14:09:52','1','2018-11-06 14:09:52','1'),('5be1a0b03c88b300015fb3a1','force_i18n','true','blog','2018-11-06 14:09:52','1','2018-11-06 14:09:52','1'),('5be1a0b03c88b300015fb3a2','permalinks','/:year/:month/:day/:slug/','blog','2018-11-06 14:09:52','1','2018-11-07 09:13:05','1'),('5be1a0b03c88b300015fb3a3','amp','true','blog','2018-11-06 14:09:52','1','2018-11-06 14:09:52','1'),('5be1a0b03c88b300015fb3a4','ghost_head','','blog','2018-11-06 14:09:52','1','2018-11-07 09:29:56','1'),('5be1a0b03c88b300015fb3a5','ghost_foot','','blog','2018-11-06 14:09:52','1','2018-11-06 14:09:52','1'),('5be1a0b03c88b300015fb3a6','facebook','','blog','2018-11-06 14:09:52','1','2018-11-06 14:09:52','1'),('5be1a0b03c88b300015fb3a7','twitter','','blog','2018-11-06 14:09:52','1','2018-11-06 14:09:52','1'),('5be1a0b03c88b300015fb3a8','labs','{\"publicAPI\":true,\"subscribers\":true}','blog','2018-11-06 14:09:52','1','2018-11-07 09:31:07','1'),('5be1a0b03c88b300015fb3a9','navigation','[{\"label\":\"主页\",\"url\":\"http://fe2o3.club:8000\"},{\"label\":\"Label\",\"url\":\"/tags/\"},{\"label\":\"Amano\",\"url\":\"/author/amano/\"},{\"label\":\"Lin1Heart\",\"url\":\"/author/lin1heart/\"}]','blog','2018-11-06 14:09:52','1','2018-11-07 09:14:32','1'),('5be1a0b03c88b300015fb3aa','slack','[]','blog','2018-11-06 14:09:52','1','2018-11-06 14:29:25','1'),('5be1a0b03c88b300015fb3ab','unsplash','{\"isActive\":true}','blog','2018-11-06 14:09:52','1','2018-11-06 14:29:25','1'),('5be1a0b03c88b300015fb3ac','active_theme','casper4','theme','2018-11-06 14:09:52','1','2018-11-07 13:27:23','1'),('5be1a0b03c88b300015fb3ad','active_apps','[]','app','2018-11-06 14:09:52','1','2018-11-06 14:09:52','1'),('5be1a0b03c88b300015fb3ae','installed_apps','[]','app','2018-11-06 14:09:52','1','2018-11-06 14:09:52','1'),('5be1a0b03c88b300015fb3af','is_private','false','private','2018-11-06 14:09:52','1','2018-11-06 14:09:52','1'),('5be1a0b03c88b300015fb3b0','password','','private','2018-11-06 14:09:52','1','2018-11-06 14:09:52','1'),('5be1a0b03c88b300015fb3b1','public_hash','5460b7daf685f268553d2398f4d987','private','2018-11-06 14:09:52','1','2018-11-06 14:09:52','1');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscribers` (
  `id` varchar(24) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `post_id` varchar(24) DEFAULT NULL,
  `subscribed_url` varchar(2000) DEFAULT NULL,
  `subscribed_referrer` varchar(2000) DEFAULT NULL,
  `unsubscribed_url` varchar(2000) DEFAULT NULL,
  `unsubscribed_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subscribers_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribers`
--

LOCK TABLES `subscribers` WRITE;
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` varchar(24) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text,
  `feature_image` varchar(2000) DEFAULT NULL,
  `parent_id` varchar(191) DEFAULT NULL,
  `visibility` varchar(50) NOT NULL DEFAULT 'public',
  `meta_title` varchar(2000) DEFAULT NULL,
  `meta_description` varchar(2000) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES ('5be1a0994c322d003485e33f','Getting Started','getting-started',NULL,NULL,NULL,'public',NULL,NULL,'2018-11-06 14:09:29','1','2018-11-06 14:09:29','1'),('5be2ad2e2e173f0001a46921','shadowsocks','shadowsocks','ss','/content/images/2018/11/tizi-1.jpg',NULL,'public','ss',NULL,'2018-11-07 09:15:26','1','2018-11-07 09:16:11','1');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` varchar(24) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `ghost_auth_access_token` varchar(32) DEFAULT NULL,
  `ghost_auth_id` varchar(24) DEFAULT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(191) NOT NULL,
  `profile_image` varchar(2000) DEFAULT NULL,
  `cover_image` varchar(2000) DEFAULT NULL,
  `bio` text,
  `website` varchar(2000) DEFAULT NULL,
  `location` text,
  `facebook` varchar(2000) DEFAULT NULL,
  `twitter` varchar(2000) DEFAULT NULL,
  `accessibility` text,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `locale` varchar(6) DEFAULT NULL,
  `visibility` varchar(50) NOT NULL DEFAULT 'public',
  `meta_title` varchar(2000) DEFAULT NULL,
  `meta_description` varchar(2000) DEFAULT NULL,
  `tour` text,
  `last_seen` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_slug_unique` (`slug`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1','amano hikaru','amano',NULL,NULL,'$2a$10$MTWBqS9O/7LKZ5XgUEHCsec/03u72f5RoWzmJf69kcAmy7/dfM156','1060996790@qq.com','/content/images/2018/11/WechatIMG292.jpeg','/content/images/2018/11/ali.jpg',NULL,'http://fe2o3.club:8000/','china SH',NULL,NULL,NULL,'active',NULL,'public',NULL,NULL,'[\"getting-started\",\"using-the-editor\",\"upload-a-theme\"]','2018-11-08 03:59:09','2018-11-06 14:09:34','1','2018-11-08 03:59:09','1'),('5951f5fca366002ebd5dbef7','Ghost','ghost',NULL,NULL,'$2a$10$knuSZBiEdDHxgHG5X2k0KeaxRmvnd1QoV2MwxKzhhfLukexpc5AMC','ghost-author@example.com',NULL,NULL,'You can delete this user to remove all the welcome posts',NULL,NULL,NULL,NULL,NULL,'active',NULL,'public',NULL,NULL,NULL,NULL,'2018-11-06 14:09:36','1','2018-11-06 14:09:36','1'),('5be2a20e2e173f0001a4690d','阿豪','a',NULL,NULL,'$2a$10$DqUR2v.kFp8zfuV5svRgvuOAKZ3gM6fK0fMEZ0pH4/GZ1PUiveKwa','1937658636@qq.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'active',NULL,'public',NULL,NULL,NULL,'2018-11-07 08:28:00','2018-11-07 08:27:58','1','2018-11-07 08:28:00','5be2a20e2e173f0001a4690d'),('5be2a32f2e173f0001a46917','lin1heart','lin1heart',NULL,NULL,'$2a$10$Wf9t.R8vxVuqqFn8B5CAh.g61iv0Y8uK6kQgOOGJFVG58WBFri5NG','lin1heart@foxmail.com','/content/images/2018/11/----_20181107165427.jpg','/content/images/2018/11/02.png',NULL,NULL,NULL,NULL,NULL,NULL,'active',NULL,'public',NULL,NULL,'[\"getting-started\",\"using-the-editor\",\"featured-post\"]','2018-11-07 08:32:49','2018-11-07 08:32:47','1','2018-11-07 09:43:49','5be2a32f2e173f0001a46917'),('5be407290125ed00018b8ede','paddy xie','paddy',NULL,NULL,'$2a$10$XCOnKQpAXa9T4YgOjDwT9O28.noAruV6QWyEjAL3btiVzdCKjhikK','1836175401@qq.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'active',NULL,'public',NULL,NULL,NULL,'2018-11-08 09:51:40','2018-11-08 09:51:37','1','2018-11-08 09:51:40','5be407290125ed00018b8ede');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webhooks`
--

DROP TABLE IF EXISTS `webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webhooks` (
  `id` varchar(24) NOT NULL,
  `event` varchar(50) NOT NULL,
  `target_url` varchar(2000) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webhooks`
--

LOCK TABLES `webhooks` WRITE;
/*!40000 ALTER TABLE `webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `webhooks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-08 18:11:42
