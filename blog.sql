/*
SQLyog Community v13.1.9 (64 bit)
MySQL - 8.0.28 : Database - blog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`blog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `blog`;

/*Table structure for table `authors` */

DROP TABLE IF EXISTS `authors`;

CREATE TABLE `authors` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `authors` */

insert  into `authors`(`id`,`name`,`job`,`published_at`,`created_by`,`updated_by`,`created_at`,`updated_at`) values 
(1,'Leslie Alexander','UI Designer','2022-01-28 13:14:16',1,1,'2022-01-28 13:14:13','2022-01-28 13:14:16'),
(2,'Jenny Wilson','Product Designer','2022-01-28 13:16:02',1,1,'2022-01-28 13:16:00','2022-01-28 13:16:02'),
(3,'Esther Howard','Entrepreneur','2022-01-28 13:16:39',1,1,'2022-01-28 13:16:26','2022-01-28 13:16:39'),
(4,'Robert Fox','Front-end Engineer','2022-01-28 13:17:04',1,1,'2022-01-28 13:17:02','2022-01-28 13:17:04');

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `categories` */

insert  into `categories`(`id`,`name`,`slug`,`published_at`,`created_by`,`updated_by`,`created_at`,`updated_at`) values 
(1,'UI DESIGN','ui-design','2022-01-28 13:17:19',1,1,'2022-01-28 13:17:17','2022-01-28 13:17:19'),
(2,'INTERNET','internet','2022-01-28 13:19:22',1,1,'2022-01-28 13:19:19','2022-01-28 13:19:22'),
(3,'9 TO 5','9-to-5','2022-01-28 13:19:36',1,1,'2022-01-28 13:19:34','2022-01-28 13:19:37'),
(4,'INSPIRATIONS','inspirations','2022-01-28 13:19:50',1,1,'2022-01-28 13:19:48','2022-01-28 13:19:50'),
(5,'Back End','back-end','2022-02-02 17:44:22',1,1,'2022-02-02 17:44:10','2022-02-02 17:44:22');

/*Table structure for table `core_store` */

DROP TABLE IF EXISTS `core_store`;

CREATE TABLE `core_store` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `core_store` */

insert  into `core_store`(`id`,`key`,`value`,`type`,`environment`,`tag`) values 
(1,'model_def_strapi::core-store','{\"uid\":\"strapi::core-store\",\"collectionName\":\"core_store\",\"info\":{\"name\":\"core_store\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}}','object',NULL,NULL),
(2,'model_def_strapi::webhooks','{\"uid\":\"strapi::webhooks\",\"collectionName\":\"strapi_webhooks\",\"info\":{\"name\":\"Strapi webhooks\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}}','object',NULL,NULL),
(3,'model_def_strapi::permission','{\"uid\":\"strapi::permission\",\"collectionName\":\"strapi_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Permission\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"model\":\"role\",\"plugin\":\"admin\"}}}','object',NULL,NULL),
(4,'model_def_strapi::role','{\"uid\":\"strapi::role\",\"collectionName\":\"strapi_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Role\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"collection\":\"user\",\"via\":\"roles\",\"plugin\":\"admin\",\"attribute\":\"user\",\"column\":\"id\",\"isVirtual\":true},\"permissions\":{\"configurable\":false,\"plugin\":\"admin\",\"collection\":\"permission\",\"via\":\"role\",\"isVirtual\":true}}}','object',NULL,NULL),
(5,'model_def_strapi::user','{\"uid\":\"strapi::user\",\"collectionName\":\"strapi_administrator\",\"kind\":\"collectionType\",\"info\":{\"name\":\"User\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"collection\":\"role\",\"collectionName\":\"strapi_users_roles\",\"via\":\"users\",\"dominant\":true,\"plugin\":\"admin\",\"configurable\":false,\"private\":true,\"attribute\":\"role\",\"column\":\"id\",\"isVirtual\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}}}','object',NULL,NULL),
(6,'model_def_plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"collectionName\":\"users-permissions_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"permission\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),
(7,'model_def_plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"collectionName\":\"users-permissions_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"role\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),
(8,'model_def_plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"collectionName\":\"users-permissions_user\",\"kind\":\"collectionType\",\"info\":{\"name\":\"user\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),
(9,'model_def_plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"collectionName\":\"upload_file\",\"kind\":\"collectionType\",\"info\":{\"name\":\"file\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),
(10,'model_def_plugins::i18n.locale','{\"uid\":\"plugins::i18n.locale\",\"collectionName\":\"i18n_locales\",\"kind\":\"collectionType\",\"info\":{\"name\":\"locale\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),
(11,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}','object','',''),
(12,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true}','object','development',''),
(13,'plugin_content_manager_configuration_content_types::strapi::permission','{\"uid\":\"strapi::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"Properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"Conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}','object','',''),
(14,'plugin_content_manager_configuration_content_types::strapi::role','{\"uid\":\"strapi::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}','object','',''),
(15,'plugin_content_manager_configuration_content_types::strapi::user','{\"uid\":\"strapi::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"Firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"RegistrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegistrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"IsActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"Roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"PreferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreferedLanguage\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"preferedLanguage\",\"size\":6}]]}}','object','',''),
(16,'plugin_content_manager_configuration_content_types::plugins::i18n.locale','{\"uid\":\"plugins::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"created_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}','object','',''),
(17,'plugin_i18n_default_locale','\"en\"','string','',''),
(18,'plugin_content_manager_configuration_content_types::plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}','object','',''),
(19,'plugin_content_manager_configuration_content_types::plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}','object','',''),
(20,'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}','object','',''),
(21,'plugin_content_manager_configuration_content_types::plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"ConfirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ConfirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}','object','',''),
(22,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object','',''),
(23,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}','object','',''),
(24,'core_admin_auth','{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}','object','',''),
(25,'model_def_application::post.post','{\"uid\":\"application::post.post\",\"collectionName\":\"posts\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Post\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"slug\":{\"type\":\"uid\",\"targetField\":\"title\"},\"content\":{\"type\":\"richtext\"},\"headline\":{\"type\":\"string\"},\"thumbnail\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false,\"pluginOptions\":{}},\"featured\":{\"type\":\"boolean\",\"default\":false},\"author\":{\"model\":\"author\"},\"category\":{\"model\":\"category\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),
(26,'plugin_content_manager_configuration_content_types::application::post.post','{\"uid\":\"application::post.post\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"Slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Slug\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"Content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Content\",\"searchable\":false,\"sortable\":false}},\"headline\":{\"edit\":{\"label\":\"Headline\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Headline\",\"searchable\":true,\"sortable\":true}},\"thumbnail\":{\"edit\":{\"label\":\"Thumbnail\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Thumbnail\",\"searchable\":false,\"sortable\":false}},\"featured\":{\"edit\":{\"label\":\"Featured\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Featured\",\"searchable\":true,\"sortable\":true}},\"author\":{\"edit\":{\"label\":\"Author\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Author\",\"searchable\":true,\"sortable\":true}},\"category\":{\"edit\":{\"label\":\"Category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Category\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"slug\",\"headline\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"slug\",\"size\":6}],[{\"name\":\"content\",\"size\":12}],[{\"name\":\"headline\",\"size\":6},{\"name\":\"thumbnail\",\"size\":6}],[{\"name\":\"featured\",\"size\":4}]],\"editRelations\":[\"author\",\"category\"]}}','object','',''),
(27,'model_def_application::author.author','{\"uid\":\"application::author.author\",\"collectionName\":\"authors\",\"kind\":\"collectionType\",\"info\":{\"name\":\"author\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"job\":{\"type\":\"string\"},\"avatar\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false,\"pluginOptions\":{}},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),
(28,'plugin_content_manager_configuration_content_types::application::author.author','{\"uid\":\"application::author.author\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"job\":{\"edit\":{\"label\":\"Job\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Job\",\"searchable\":true,\"sortable\":true}},\"avatar\":{\"edit\":{\"label\":\"Avatar\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Avatar\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"job\",\"avatar\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"job\",\"size\":6}],[{\"name\":\"avatar\",\"size\":6}]]}}','object','',''),
(29,'model_def_application::category.category','{\"uid\":\"application::category.category\",\"collectionName\":\"categories\",\"kind\":\"collectionType\",\"info\":{\"name\":\"category\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"slug\":{\"type\":\"uid\",\"targetField\":\"name\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),
(30,'plugin_content_manager_configuration_content_types::application::category.category','{\"uid\":\"application::category.category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"Slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Slug\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"slug\",\"created_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"slug\",\"size\":6}]]}}','object','','');

/*Table structure for table `i18n_locales` */

DROP TABLE IF EXISTS `i18n_locales`;

CREATE TABLE `i18n_locales` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `i18n_locales_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `i18n_locales` */

insert  into `i18n_locales`(`id`,`name`,`code`,`created_by`,`updated_by`,`created_at`,`updated_at`) values 
(1,'English (en)','en',NULL,NULL,'2022-01-28 13:06:35','2022-01-28 13:06:35');

/*Table structure for table `posts` */

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` longtext,
  `headline` varchar(255) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `author` int DEFAULT NULL,
  `category` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `posts` */

insert  into `posts`(`id`,`title`,`slug`,`content`,`headline`,`featured`,`published_at`,`created_by`,`updated_by`,`created_at`,`updated_at`,`author`,`category`) values 
(1,'Understanding color theory: the color wheel and finding complementary colors','understanding-color-theory-the-color-wheel-and-finding-complementary-colors','Lights dry. Thing, likeness, forth shall replenish upon abundantly our green. Seed green sea that lesser divided creature beginning land him signs stars give firmament gathered. Wherein there their morning a he grass. Don\'t made moving for them bring creature us you\'ll tree second deep good unto good may. Us yielding.\n\nHave. Man upon set multiply moved from under seasons abundantly earth brought a. They\'re open moved years saw isn\'t morning darkness. Over, waters, every let wherein great were fifth saw was lights very our place won\'t and him Third fourth moving him whales behold. Beast second stars lights great was don\'t green give subdue his. Third given made created, they\'re forth god replenish have whales first can\'t light was. Herb you\'ll them beast kind divided. Were beginning fly air multiply god Yielding sea don\'t were forth.\n\n1. Jeruk\n2. Banana\n3. Apple','Nulla Lorem mollit cupidatat irure. Laborum magna nulla duis ullamco cillum dolor. Voluptate exercitation incididunt aliquip deserunt reprehenderit elit laborum.',1,'2022-01-28 13:18:04',1,1,'2022-01-28 13:18:02','2022-02-01 14:58:51',1,1),
(2,'How to design a product that can grow itself 10x in year','how-to-design-a-product-that-can-grow-itself-10x-in-year','Lights dry. Thing, likeness, forth shall replenish upon abundantly our green. Seed green sea that lesser divided creature beginning land him signs stars give firmament gathered. Wherein there their morning a he grass. Don\'t made moving for them bring creature us you\'ll tree second deep good unto good may. Us yielding.\n\nHave. Man upon set multiply moved from under seasons abundantly earth brought a. They\'re open moved years saw isn\'t morning darkness. Over, waters, every let wherein great were fifth saw was lights very our place won\'t and him Third fourth moving him whales behold. Beast second stars lights great was don\'t green give subdue his. Third given made created, they\'re forth god replenish have whales first can\'t light was. Herb you\'ll them beast kind divided. Were beginning fly air multiply god Yielding sea don\'t were forth.','Auctor Porta. Augue vitae diam mauris faucibus blandit elit per, feugiat leo dui orci. Etiam vestibulum. Nostra netus per conubia dolor.',0,'2022-01-28 13:23:10',1,1,'2022-01-28 13:23:01','2022-02-01 06:32:02',2,2),
(3,'The More Important the Work, the More Important the Rest','the-more-important-the-work-the-more-important-the-rest','Lights dry. Thing, likeness, forth shall replenish upon abundantly our green. Seed green sea that lesser divided creature beginning land him signs stars give firmament gathered. Wherein there their morning a he grass. Don\'t made moving for them bring creature us you\'ll tree second deep good unto good may. Us yielding.\n\nHave. Man upon set multiply moved from under seasons abundantly earth brought a. They\'re open moved years saw isn\'t morning darkness. Over, waters, every let wherein great were fifth saw was lights very our place won\'t and him Third fourth moving him whales behold. Beast second stars lights great was don\'t green give subdue his. Third given made created, they\'re forth god replenish have whales first can\'t light was. Herb you\'ll them beast kind divided. Were beginning fly air multiply god Yielding sea don\'t were forth.','Suitable Quality is determined by product users, clients or customers, not by society in general. For example, a low priced product may be viewed as having high.',0,'2022-01-28 13:24:12',1,1,'2022-01-28 13:24:09','2022-01-29 04:50:42',3,3),
(4,'Email Love - Email Inspiration, Templates and Discovery','email-love-email-inspiration-templates-and-discovery','Lights dry. Thing, likeness, forth shall replenish upon abundantly our green. Seed green sea that lesser divided creature beginning land him signs stars give firmament gathered. Wherein there their morning a he grass. Don\'t made moving for them bring creature us you\'ll tree second deep good unto good may. Us yielding.\n\nHave. Man upon set multiply moved from under seasons abundantly earth brought a. They\'re open moved years saw isn\'t morning darkness. Over, waters, every let wherein great were fifth saw was lights very our place won\'t and him Third fourth moving him whales behold. Beast second stars lights great was don\'t green give subdue his. Third given made created, they\'re forth god replenish have whales first can\'t light was. Herb you\'ll them beast kind divided. Were beginning fly air multiply god Yielding sea don\'t were forth.','Consider that for a moment: everything we see around us is assumed to have had a cause and is contingent upon something else.',0,'2022-01-28 13:25:00',1,1,'2022-01-28 13:24:54','2022-01-29 04:50:47',4,4),
(5,'How to design a product that can grow itself 10x in year','how-to-design-a-product-that-can-grow-itself-10x-in-year-1','Lights dry. Thing, likeness, forth shall replenish upon abundantly our green. Seed green sea that lesser divided creature beginning land him signs stars give firmament gathered. Wherein there their morning a he grass. Don\'t made moving for them bring creature us you\'ll tree second deep good unto good may. Us yielding.\n\nHave. Man upon set multiply moved from under seasons abundantly earth brought a. They\'re open moved years saw isn\'t morning darkness. Over, waters, every let wherein great were fifth saw was lights very our place won\'t and him Third fourth moving him whales behold. Beast second stars lights great was don\'t green give subdue his. Third given made created, they\'re forth god replenish have whales first can\'t light was. Herb you\'ll them beast kind divided. Were beginning fly air multiply god Yielding sea don\'t were forth.','Auctor Porta. Augue vitae diam mauris faucibus blandit elit per, feugiat leo dui orci. Etiam vestibulum. Nostra netus per conubia dolor.',0,'2022-01-28 13:25:31',1,1,'2022-01-28 13:25:29','2022-01-29 04:51:00',2,2),
(6,'The More Important the Work, the More Important the Rest','the-more-important-the-work-the-more-important-the-rest-1','Lights dry. Thing, likeness, forth shall replenish upon abundantly our green. Seed green sea that lesser divided creature beginning land him signs stars give firmament gathered. Wherein there their morning a he grass. Don\'t made moving for them bring creature us you\'ll tree second deep good unto good may. Us yielding.\n\nHave. Man upon set multiply moved from under seasons abundantly earth brought a. They\'re open moved years saw isn\'t morning darkness. Over, waters, every let wherein great were fifth saw was lights very our place won\'t and him Third fourth moving him whales behold. Beast second stars lights great was don\'t green give subdue his. Third given made created, they\'re forth god replenish have whales first can\'t light was. Herb you\'ll them beast kind divided. Were beginning fly air multiply god Yielding sea don\'t were forth.','Suitable Quality is determined by product users, clients or customers, not by society in general. For example, a low priced product may be viewed as having high.',0,'2022-01-28 13:26:06',1,1,'2022-01-28 13:26:01','2022-01-29 04:51:13',3,3),
(7,'Email Love - Email Inspiration, Templates and Discovery','email-love-email-inspiration-templates-and-discovery-1','Lights dry. Thing, likeness, forth shall replenish upon abundantly our green. Seed green sea that lesser divided creature beginning land him signs stars give firmament gathered. Wherein there their morning a he grass. Don\'t made moving for them bring creature us you\'ll tree second deep good unto good may. Us yielding.\n\nHave. Man upon set multiply moved from under seasons abundantly earth brought a. They\'re open moved years saw isn\'t morning darkness. Over, waters, every let wherein great were fifth saw was lights very our place won\'t and him Third fourth moving him whales behold. Beast second stars lights great was don\'t green give subdue his. Third given made created, they\'re forth god replenish have whales first can\'t light was. Herb you\'ll them beast kind divided. Were beginning fly air multiply god Yielding sea don\'t were forth.','Consider that for a moment: everything we see around us is assumed to have had a cause and is contingent upon something else.',0,'2022-01-28 13:26:29',1,1,'2022-01-28 13:26:27','2022-01-29 04:51:21',4,4);

/*Table structure for table `strapi_administrator` */

DROP TABLE IF EXISTS `strapi_administrator`;

CREATE TABLE `strapi_administrator` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `registrationToken` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `preferedLanguage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_administrator_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `strapi_administrator` */

insert  into `strapi_administrator`(`id`,`firstname`,`lastname`,`username`,`email`,`password`,`resetPasswordToken`,`registrationToken`,`isActive`,`blocked`,`preferedLanguage`) values 
(1,'suwidnyana','putra',NULL,'grayfullbuster522@gmail.com','$2a$10$Idh/xbtkfBJIoGSKEIs.VuPbcAp2gvRKV4aBMtbZe2Ql3c3AnkWHe',NULL,NULL,1,NULL,NULL);

/*Table structure for table `strapi_permission` */

DROP TABLE IF EXISTS `strapi_permission`;

CREATE TABLE `strapi_permission` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext,
  `conditions` longtext,
  `role` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `strapi_permission` */

insert  into `strapi_permission`(`id`,`action`,`subject`,`properties`,`conditions`,`role`,`created_at`,`updated_at`) values 
(1,'plugins::upload.read',NULL,'{}','[]',2,'2022-01-28 13:06:56','2022-01-28 13:06:56'),
(2,'plugins::upload.assets.create',NULL,'{}','[]',2,'2022-01-28 13:06:56','2022-01-28 13:06:56'),
(3,'plugins::upload.assets.update',NULL,'{}','[]',2,'2022-01-28 13:06:56','2022-01-28 13:06:56'),
(4,'plugins::upload.assets.download',NULL,'{}','[]',2,'2022-01-28 13:06:56','2022-01-28 13:06:56'),
(5,'plugins::upload.assets.copy-link',NULL,'{}','[]',2,'2022-01-28 13:06:56','2022-01-28 13:06:56'),
(6,'plugins::upload.read',NULL,'{}','[\"admin::is-creator\"]',3,'2022-01-28 13:06:56','2022-01-28 13:06:56'),
(7,'plugins::upload.assets.create',NULL,'{}','[]',3,'2022-01-28 13:06:56','2022-01-28 13:06:56'),
(8,'plugins::upload.assets.update',NULL,'{}','[\"admin::is-creator\"]',3,'2022-01-28 13:06:56','2022-01-28 13:06:56'),
(9,'plugins::upload.assets.download',NULL,'{}','[]',3,'2022-01-28 13:06:56','2022-01-28 13:06:56'),
(10,'plugins::upload.assets.copy-link',NULL,'{}','[]',3,'2022-01-28 13:06:56','2022-01-28 13:06:56'),
(11,'plugins::content-manager.explorer.create','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}','[]',1,'2022-01-28 13:06:57','2022-01-28 13:06:57'),
(12,'plugins::content-manager.explorer.read','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}','[]',1,'2022-01-28 13:06:57','2022-01-28 13:06:57'),
(13,'plugins::content-manager.explorer.update','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}','[]',1,'2022-01-28 13:06:57','2022-01-28 13:06:57'),
(15,'plugins::content-type-builder.read',NULL,'{}','[]',1,'2022-01-28 13:06:57','2022-01-28 13:06:57'),
(16,'plugins::email.settings.read',NULL,'{}','[]',1,'2022-01-28 13:06:57','2022-01-28 13:06:57'),
(17,'plugins::upload.read',NULL,'{}','[]',1,'2022-01-28 13:06:57','2022-01-28 13:06:57'),
(18,'plugins::upload.assets.create',NULL,'{}','[]',1,'2022-01-28 13:06:57','2022-01-28 13:06:57'),
(19,'plugins::upload.assets.update',NULL,'{}','[]',1,'2022-01-28 13:06:57','2022-01-28 13:06:57'),
(20,'plugins::upload.assets.download',NULL,'{}','[]',1,'2022-01-28 13:06:57','2022-01-28 13:06:57'),
(21,'plugins::upload.assets.copy-link',NULL,'{}','[]',1,'2022-01-28 13:06:57','2022-01-28 13:06:57'),
(22,'plugins::i18n.locale.create',NULL,'{}','[]',1,'2022-01-28 13:06:57','2022-01-28 13:06:57'),
(23,'plugins::upload.settings.read',NULL,'{}','[]',1,'2022-01-28 13:06:57','2022-01-28 13:06:57'),
(24,'plugins::i18n.locale.read',NULL,'{}','[]',1,'2022-01-28 13:06:57','2022-01-28 13:06:57'),
(25,'plugins::i18n.locale.update',NULL,'{}','[]',1,'2022-01-28 13:06:57','2022-01-28 13:06:57'),
(26,'plugins::i18n.locale.delete',NULL,'{}','[]',1,'2022-01-28 13:06:57','2022-01-28 13:06:57'),
(27,'plugins::content-manager.single-types.configure-view',NULL,'{}','[]',1,'2022-01-28 13:06:57','2022-01-28 13:06:57'),
(28,'plugins::content-manager.collection-types.configure-view',NULL,'{}','[]',1,'2022-01-28 13:06:57','2022-01-28 13:06:57'),
(29,'plugins::content-manager.components.configure-layout',NULL,'{}','[]',1,'2022-01-28 13:06:57','2022-01-28 13:06:57'),
(30,'plugins::users-permissions.roles.create',NULL,'{}','[]',1,'2022-01-28 13:06:57','2022-01-28 13:06:57'),
(31,'plugins::users-permissions.roles.read',NULL,'{}','[]',1,'2022-01-28 13:06:57','2022-01-28 13:06:57'),
(32,'plugins::users-permissions.roles.update',NULL,'{}','[]',1,'2022-01-28 13:06:57','2022-01-28 13:06:58'),
(33,'plugins::users-permissions.roles.delete',NULL,'{}','[]',1,'2022-01-28 13:06:58','2022-01-28 13:06:58'),
(34,'plugins::users-permissions.providers.read',NULL,'{}','[]',1,'2022-01-28 13:06:58','2022-01-28 13:06:58'),
(35,'plugins::users-permissions.providers.update',NULL,'{}','[]',1,'2022-01-28 13:06:58','2022-01-28 13:06:58'),
(36,'plugins::users-permissions.email-templates.read',NULL,'{}','[]',1,'2022-01-28 13:06:58','2022-01-28 13:06:58'),
(37,'plugins::users-permissions.email-templates.update',NULL,'{}','[]',1,'2022-01-28 13:06:58','2022-01-28 13:06:58'),
(38,'plugins::users-permissions.advanced-settings.read',NULL,'{}','[]',1,'2022-01-28 13:06:58','2022-01-28 13:06:58'),
(39,'plugins::users-permissions.advanced-settings.update',NULL,'{}','[]',1,'2022-01-28 13:06:58','2022-01-28 13:06:58'),
(40,'admin::marketplace.read',NULL,'{}','[]',1,'2022-01-28 13:06:58','2022-01-28 13:06:58'),
(41,'admin::marketplace.plugins.install',NULL,'{}','[]',1,'2022-01-28 13:06:58','2022-01-28 13:06:58'),
(42,'admin::marketplace.plugins.uninstall',NULL,'{}','[]',1,'2022-01-28 13:06:58','2022-01-28 13:06:58'),
(43,'admin::webhooks.create',NULL,'{}','[]',1,'2022-01-28 13:06:58','2022-01-28 13:06:58'),
(44,'admin::webhooks.read',NULL,'{}','[]',1,'2022-01-28 13:06:58','2022-01-28 13:06:58'),
(45,'admin::webhooks.update',NULL,'{}','[]',1,'2022-01-28 13:06:58','2022-01-28 13:06:58'),
(46,'admin::webhooks.delete',NULL,'{}','[]',1,'2022-01-28 13:06:58','2022-01-28 13:06:58'),
(47,'admin::users.create',NULL,'{}','[]',1,'2022-01-28 13:06:58','2022-01-28 13:06:58'),
(48,'admin::users.read',NULL,'{}','[]',1,'2022-01-28 13:06:58','2022-01-28 13:06:58'),
(49,'admin::users.update',NULL,'{}','[]',1,'2022-01-28 13:06:58','2022-01-28 13:06:58'),
(50,'admin::users.delete',NULL,'{}','[]',1,'2022-01-28 13:06:58','2022-01-28 13:06:58'),
(51,'admin::roles.create',NULL,'{}','[]',1,'2022-01-28 13:06:58','2022-01-28 13:06:58'),
(52,'admin::roles.read',NULL,'{}','[]',1,'2022-01-28 13:06:58','2022-01-28 13:06:58'),
(53,'admin::roles.update',NULL,'{}','[]',1,'2022-01-28 13:06:58','2022-01-28 13:06:58'),
(54,'admin::roles.delete',NULL,'{}','[]',1,'2022-01-28 13:06:58','2022-01-28 13:06:58'),
(61,'plugins::content-manager.explorer.create','application::author.author','{\"fields\":[\"name\",\"job\",\"avatar\"]}','[]',1,'2022-01-28 13:11:41','2022-01-28 13:11:41'),
(62,'plugins::content-manager.explorer.read','application::author.author','{\"fields\":[\"name\",\"job\",\"avatar\"]}','[]',1,'2022-01-28 13:11:41','2022-01-28 13:11:41'),
(63,'plugins::content-manager.explorer.update','application::author.author','{\"fields\":[\"name\",\"job\",\"avatar\"]}','[]',1,'2022-01-28 13:11:41','2022-01-28 13:11:41'),
(69,'plugins::content-manager.explorer.create','application::category.category','{\"fields\":[\"name\",\"slug\"]}','[]',1,'2022-01-28 13:12:36','2022-01-28 13:12:36'),
(70,'plugins::content-manager.explorer.read','application::category.category','{\"fields\":[\"name\",\"slug\"]}','[]',1,'2022-01-28 13:12:36','2022-01-28 13:12:36'),
(71,'plugins::content-manager.explorer.update','application::category.category','{\"fields\":[\"name\",\"slug\"]}','[]',1,'2022-01-28 13:12:36','2022-01-28 13:12:36'),
(79,'plugins::content-manager.explorer.create','application::post.post','{\"fields\":[\"title\",\"slug\",\"content\",\"headline\",\"thumbnail\",\"featured\",\"author\",\"category\"]}','[]',1,'2022-01-28 13:13:37','2022-01-28 13:13:37'),
(80,'plugins::content-manager.explorer.read','application::post.post','{\"fields\":[\"title\",\"slug\",\"content\",\"headline\",\"thumbnail\",\"featured\",\"author\",\"category\"]}','[]',1,'2022-01-28 13:13:37','2022-01-28 13:13:37'),
(81,'plugins::content-manager.explorer.update','application::post.post','{\"fields\":[\"title\",\"slug\",\"content\",\"headline\",\"thumbnail\",\"featured\",\"author\",\"category\"]}','[]',1,'2022-01-28 13:13:37','2022-01-28 13:13:37'),
(173,'plugins::content-manager.explorer.delete','application::author.author','{}','[]',1,'2022-02-02 17:57:05','2022-02-02 17:57:05'),
(174,'plugins::content-manager.explorer.delete','application::category.category','{}','[]',1,'2022-02-02 17:57:05','2022-02-02 17:57:05'),
(175,'plugins::content-manager.explorer.delete','application::post.post','{}','[]',1,'2022-02-02 17:57:05','2022-02-02 17:57:05'),
(176,'plugins::content-manager.explorer.delete','plugins::users-permissions.user','{}','[]',1,'2022-02-02 17:57:05','2022-02-02 17:57:05'),
(177,'plugins::content-manager.explorer.publish','application::author.author','{}','[]',1,'2022-02-02 17:57:05','2022-02-02 17:57:05'),
(178,'plugins::content-manager.explorer.publish','application::category.category','{}','[]',1,'2022-02-02 17:57:05','2022-02-02 17:57:05'),
(179,'plugins::content-manager.explorer.publish','application::post.post','{}','[]',1,'2022-02-02 17:57:05','2022-02-02 17:57:05');

/*Table structure for table `strapi_role` */

DROP TABLE IF EXISTS `strapi_role`;

CREATE TABLE `strapi_role` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_role_name_unique` (`name`),
  UNIQUE KEY `strapi_role_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `strapi_role` */

insert  into `strapi_role`(`id`,`name`,`code`,`description`,`created_at`,`updated_at`) values 
(1,'Super Admin','strapi-super-admin','Super Admins can access and manage all features and settings.','2022-01-28 13:06:55','2022-01-28 13:06:55'),
(2,'Editor','strapi-editor','Editors can manage and publish contents including those of other users.','2022-01-28 13:06:56','2022-01-28 13:06:56'),
(3,'Author','strapi-author','Authors can manage the content they have created.','2022-01-28 13:06:56','2022-01-28 13:06:56');

/*Table structure for table `strapi_users_roles` */

DROP TABLE IF EXISTS `strapi_users_roles`;

CREATE TABLE `strapi_users_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `strapi_users_roles` */

insert  into `strapi_users_roles`(`id`,`user_id`,`role_id`) values 
(1,1,1);

/*Table structure for table `strapi_webhooks` */

DROP TABLE IF EXISTS `strapi_webhooks`;

CREATE TABLE `strapi_webhooks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` longtext,
  `events` longtext,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `strapi_webhooks` */

/*Table structure for table `upload_file` */

DROP TABLE IF EXISTS `upload_file`;

CREATE TABLE `upload_file` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `formats` longtext,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `upload_file` */

insert  into `upload_file`(`id`,`name`,`alternativeText`,`caption`,`width`,`height`,`formats`,`hash`,`ext`,`mime`,`size`,`url`,`previewUrl`,`provider`,`provider_metadata`,`created_by`,`updated_by`,`created_at`,`updated_at`) values 
(1,'author-2.png','','',100,100,NULL,'author_2_d6eb11b26d','.png','image/png',19.65,'/uploads/author_2_d6eb11b26d.png',NULL,'local',NULL,1,1,'2022-01-28 13:09:02','2022-01-28 13:09:03'),
(2,'author-1.png','','',100,100,NULL,'author_1_f5f9fb1e39','.png','image/png',16.37,'/uploads/author_1_f5f9fb1e39.png',NULL,'local',NULL,1,1,'2022-01-28 13:09:02','2022-01-28 13:09:03'),
(3,'author-3.png','','',100,100,NULL,'author_3_b05755b514','.png','image/png',10.28,'/uploads/author_3_b05755b514.png',NULL,'local',NULL,1,1,'2022-01-28 13:09:02','2022-01-28 13:09:03'),
(4,'author-4.png','','',100,100,NULL,'author_4_fd562fec19','.png','image/png',16.14,'/uploads/author_4_fd562fec19.png',NULL,'local',NULL,1,1,'2022-01-28 13:09:02','2022-01-28 13:09:03'),
(5,'thumbnail-2.png','','',680,426,'{\"thumbnail\":{\"name\":\"thumbnail_thumbnail-2.png\",\"hash\":\"thumbnail_thumbnail_2_c0ec7f97a0\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":153,\"size\":99.14,\"path\":null,\"url\":\"/uploads/thumbnail_thumbnail_2_c0ec7f97a0.png\"},\"small\":{\"name\":\"small_thumbnail-2.png\",\"hash\":\"small_thumbnail_2_c0ec7f97a0\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":313,\"size\":373.7,\"path\":null,\"url\":\"/uploads/small_thumbnail_2_c0ec7f97a0.png\"}}','thumbnail_2_c0ec7f97a0','.png','image/png',431.52,'/uploads/thumbnail_2_c0ec7f97a0.png',NULL,'local',NULL,1,1,'2022-01-28 13:09:03','2022-01-28 13:09:03'),
(6,'featured-thumbnail.png','','',1420,778,'{\"thumbnail\":{\"name\":\"thumbnail_featured-thumbnail.png\",\"hash\":\"thumbnail_featured_thumbnail_892593e623\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":134,\"size\":73.61,\"path\":null,\"url\":\"/uploads/thumbnail_featured_thumbnail_892593e623.png\"},\"large\":{\"name\":\"large_featured-thumbnail.png\",\"hash\":\"large_featured_thumbnail_892593e623\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":1000,\"height\":548,\"size\":980.7,\"path\":null,\"url\":\"/uploads/large_featured_thumbnail_892593e623.png\"},\"medium\":{\"name\":\"medium_featured-thumbnail.png\",\"hash\":\"medium_featured_thumbnail_892593e623\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":750,\"height\":411,\"size\":574.41,\"path\":null,\"url\":\"/uploads/medium_featured_thumbnail_892593e623.png\"},\"small\":{\"name\":\"small_featured-thumbnail.png\",\"hash\":\"small_featured_thumbnail_892593e623\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":274,\"size\":269.12,\"path\":null,\"url\":\"/uploads/small_featured_thumbnail_892593e623.png\"}}','featured_thumbnail_892593e623','.png','image/png',1091.99,'/uploads/featured_thumbnail_892593e623.png',NULL,'local',NULL,1,1,'2022-01-28 13:09:03','2022-01-28 13:09:04'),
(7,'thumbnail-3.png','','',680,426,'{\"thumbnail\":{\"name\":\"thumbnail_thumbnail-3.png\",\"hash\":\"thumbnail_thumbnail_3_f4dc0fc29e\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":153,\"size\":96.25,\"path\":null,\"url\":\"/uploads/thumbnail_thumbnail_3_f4dc0fc29e.png\"},\"small\":{\"name\":\"small_thumbnail-3.png\",\"hash\":\"small_thumbnail_3_f4dc0fc29e\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":313,\"size\":365.44,\"path\":null,\"url\":\"/uploads/small_thumbnail_3_f4dc0fc29e.png\"}}','thumbnail_3_f4dc0fc29e','.png','image/png',423.54,'/uploads/thumbnail_3_f4dc0fc29e.png',NULL,'local',NULL,1,1,'2022-01-28 13:09:05','2022-01-28 13:09:06'),
(8,'thumbnail-7.png','','',680,426,'{\"thumbnail\":{\"name\":\"thumbnail_thumbnail-7.png\",\"hash\":\"thumbnail_thumbnail_7_58651e6540\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":153,\"size\":74.6,\"path\":null,\"url\":\"/uploads/thumbnail_thumbnail_7_58651e6540.png\"},\"small\":{\"name\":\"small_thumbnail-7.png\",\"hash\":\"small_thumbnail_7_58651e6540\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":313,\"size\":268.04,\"path\":null,\"url\":\"/uploads/small_thumbnail_7_58651e6540.png\"}}','thumbnail_7_58651e6540','.png','image/png',286.71,'/uploads/thumbnail_7_58651e6540.png',NULL,'local',NULL,1,1,'2022-01-28 13:09:05','2022-01-28 13:09:06'),
(9,'thumbnail-5.png','','',680,426,'{\"thumbnail\":{\"name\":\"thumbnail_thumbnail-5.png\",\"hash\":\"thumbnail_thumbnail_5_c2b03ad4f6\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":153,\"size\":103.24,\"path\":null,\"url\":\"/uploads/thumbnail_thumbnail_5_c2b03ad4f6.png\"},\"small\":{\"name\":\"small_thumbnail-5.png\",\"hash\":\"small_thumbnail_5_c2b03ad4f6\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":313,\"size\":384.09,\"path\":null,\"url\":\"/uploads/small_thumbnail_5_c2b03ad4f6.png\"}}','thumbnail_5_c2b03ad4f6','.png','image/png',363.22,'/uploads/thumbnail_5_c2b03ad4f6.png',NULL,'local',NULL,1,1,'2022-01-28 13:09:05','2022-01-28 13:09:06'),
(10,'thumbnail-4.png','','',680,426,'{\"thumbnail\":{\"name\":\"thumbnail_thumbnail-4.png\",\"hash\":\"thumbnail_thumbnail_4_69cadda873\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":153,\"size\":68.36,\"path\":null,\"url\":\"/uploads/thumbnail_thumbnail_4_69cadda873.png\"},\"small\":{\"name\":\"small_thumbnail-4.png\",\"hash\":\"small_thumbnail_4_69cadda873\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":313,\"size\":235.41,\"path\":null,\"url\":\"/uploads/small_thumbnail_4_69cadda873.png\"}}','thumbnail_4_69cadda873','.png','image/png',225.92,'/uploads/thumbnail_4_69cadda873.png',NULL,'local',NULL,1,1,'2022-01-28 13:09:05','2022-01-28 13:09:06'),
(11,'thumbnail-6.png','','',680,426,'{\"thumbnail\":{\"name\":\"thumbnail_thumbnail-6.png\",\"hash\":\"thumbnail_thumbnail_6_f6ce24e237\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":153,\"size\":61.56,\"path\":null,\"url\":\"/uploads/thumbnail_thumbnail_6_f6ce24e237.png\"},\"small\":{\"name\":\"small_thumbnail-6.png\",\"hash\":\"small_thumbnail_6_f6ce24e237\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":313,\"size\":210.98,\"path\":null,\"url\":\"/uploads/small_thumbnail_6_f6ce24e237.png\"}}','thumbnail_6_f6ce24e237','.png','image/png',196.17,'/uploads/thumbnail_6_f6ce24e237.png',NULL,'local',NULL,1,1,'2022-01-28 13:09:05','2022-01-28 13:09:06'),
(12,'thumbnail-2.png','','',680,426,'{\"thumbnail\":{\"name\":\"thumbnail_thumbnail-2.png\",\"hash\":\"thumbnail_thumbnail_2_12612c9f73\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":153,\"size\":99.14,\"path\":null,\"url\":\"/uploads/thumbnail_thumbnail_2_12612c9f73.png\"},\"small\":{\"name\":\"small_thumbnail-2.png\",\"hash\":\"small_thumbnail_2_12612c9f73\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":313,\"size\":373.7,\"path\":null,\"url\":\"/uploads/small_thumbnail_2_12612c9f73.png\"}}','thumbnail_2_12612c9f73','.png','image/png',431.52,'/uploads/thumbnail_2_12612c9f73.png',NULL,'local',NULL,1,1,'2022-01-28 13:22:18','2022-01-28 13:22:18');

/*Table structure for table `upload_file_morph` */

DROP TABLE IF EXISTS `upload_file_morph`;

CREATE TABLE `upload_file_morph` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `upload_file_id` int DEFAULT NULL,
  `related_id` int DEFAULT NULL,
  `related_type` longtext,
  `field` longtext,
  `order` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `upload_file_morph` */

insert  into `upload_file_morph`(`id`,`upload_file_id`,`related_id`,`related_type`,`field`,`order`) values 
(1,2,1,'authors','avatar',1),
(2,1,2,'authors','avatar',1),
(3,3,3,'authors','avatar',1),
(4,4,4,'authors','avatar',1),
(13,7,3,'posts','thumbnail',1),
(14,10,4,'posts','thumbnail',1),
(15,9,5,'posts','thumbnail',1),
(16,11,6,'posts','thumbnail',1),
(17,8,7,'posts','thumbnail',1),
(21,12,2,'posts','thumbnail',1),
(27,6,1,'posts','thumbnail',1);

/*Table structure for table `users-permissions_permission` */

DROP TABLE IF EXISTS `users-permissions_permission`;

CREATE TABLE `users-permissions_permission` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `users-permissions_permission` */

insert  into `users-permissions_permission`(`id`,`type`,`controller`,`action`,`enabled`,`policy`,`role`,`created_by`,`updated_by`) values 
(1,'content-manager','collection-types','bulkdelete',0,'',1,NULL,NULL),
(2,'content-manager','collection-types','bulkdelete',0,'',2,NULL,NULL),
(3,'content-manager','collection-types','create',0,'',1,NULL,NULL),
(4,'content-manager','collection-types','create',0,'',2,NULL,NULL),
(5,'content-manager','collection-types','delete',0,'',1,NULL,NULL),
(6,'content-manager','collection-types','delete',0,'',2,NULL,NULL),
(7,'content-manager','collection-types','find',0,'',1,NULL,NULL),
(8,'content-manager','collection-types','find',0,'',2,NULL,NULL),
(9,'content-manager','collection-types','findone',0,'',1,NULL,NULL),
(10,'content-manager','collection-types','findone',0,'',2,NULL,NULL),
(11,'content-manager','collection-types','previewmanyrelations',0,'',1,NULL,NULL),
(12,'content-manager','collection-types','previewmanyrelations',0,'',2,NULL,NULL),
(13,'content-manager','collection-types','publish',0,'',1,NULL,NULL),
(14,'content-manager','collection-types','update',0,'',2,NULL,NULL),
(15,'content-manager','collection-types','publish',0,'',2,NULL,NULL),
(16,'content-manager','collection-types','unpublish',0,'',1,NULL,NULL),
(17,'content-manager','collection-types','unpublish',0,'',2,NULL,NULL),
(18,'content-manager','collection-types','update',0,'',1,NULL,NULL),
(19,'content-manager','components','findcomponentconfiguration',0,'',1,NULL,NULL),
(20,'content-manager','components','findcomponentconfiguration',0,'',2,NULL,NULL),
(21,'content-manager','components','findcomponents',0,'',1,NULL,NULL),
(22,'content-manager','components','findcomponents',0,'',2,NULL,NULL),
(23,'content-manager','components','updatecomponentconfiguration',0,'',1,NULL,NULL),
(24,'content-manager','components','updatecomponentconfiguration',0,'',2,NULL,NULL),
(25,'content-manager','content-types','findcontenttypes',0,'',2,NULL,NULL),
(26,'content-manager','content-types','findcontenttypeconfiguration',0,'',1,NULL,NULL),
(27,'content-manager','content-types','findcontenttypeconfiguration',0,'',2,NULL,NULL),
(28,'content-manager','content-types','findcontenttypes',0,'',1,NULL,NULL),
(29,'content-manager','content-types','findcontenttypessettings',0,'',1,NULL,NULL),
(30,'content-manager','content-types','findcontenttypessettings',0,'',2,NULL,NULL),
(31,'content-manager','content-types','updatecontenttypeconfiguration',0,'',1,NULL,NULL),
(32,'content-manager','content-types','updatecontenttypeconfiguration',0,'',2,NULL,NULL),
(33,'content-manager','relations','find',0,'',1,NULL,NULL),
(34,'content-manager','relations','find',0,'',2,NULL,NULL),
(35,'content-manager','single-types','createorupdate',0,'',1,NULL,NULL),
(36,'content-manager','single-types','createorupdate',0,'',2,NULL,NULL),
(37,'content-manager','single-types','delete',0,'',1,NULL,NULL),
(38,'content-manager','single-types','find',0,'',1,NULL,NULL),
(39,'content-manager','single-types','delete',0,'',2,NULL,NULL),
(40,'content-manager','single-types','publish',0,'',1,NULL,NULL),
(41,'content-manager','single-types','find',0,'',2,NULL,NULL),
(42,'content-manager','single-types','publish',0,'',2,NULL,NULL),
(43,'content-manager','single-types','unpublish',0,'',1,NULL,NULL),
(44,'content-manager','single-types','unpublish',0,'',2,NULL,NULL),
(45,'content-manager','uid','checkuidavailability',0,'',1,NULL,NULL),
(46,'content-manager','uid','checkuidavailability',0,'',2,NULL,NULL),
(47,'content-manager','uid','generateuid',0,'',1,NULL,NULL),
(48,'content-manager','uid','generateuid',0,'',2,NULL,NULL),
(49,'content-type-builder','builder','getreservednames',0,'',1,NULL,NULL),
(50,'content-type-builder','builder','getreservednames',0,'',2,NULL,NULL),
(51,'content-type-builder','componentcategories','deletecategory',0,'',1,NULL,NULL),
(52,'content-type-builder','componentcategories','deletecategory',0,'',2,NULL,NULL),
(53,'content-type-builder','componentcategories','editcategory',0,'',1,NULL,NULL),
(54,'content-type-builder','componentcategories','editcategory',0,'',2,NULL,NULL),
(55,'content-type-builder','components','createcomponent',0,'',1,NULL,NULL),
(56,'content-type-builder','components','createcomponent',0,'',2,NULL,NULL),
(57,'content-type-builder','components','deletecomponent',0,'',1,NULL,NULL),
(58,'content-type-builder','components','getcomponent',0,'',1,NULL,NULL),
(59,'content-type-builder','components','getcomponent',0,'',2,NULL,NULL),
(60,'content-type-builder','components','deletecomponent',0,'',2,NULL,NULL),
(61,'content-type-builder','components','getcomponents',0,'',1,NULL,NULL),
(62,'content-type-builder','components','getcomponents',0,'',2,NULL,NULL),
(63,'content-type-builder','components','updatecomponent',0,'',1,NULL,NULL),
(64,'content-type-builder','components','updatecomponent',0,'',2,NULL,NULL),
(65,'content-type-builder','connections','getconnections',0,'',1,NULL,NULL),
(66,'content-type-builder','connections','getconnections',0,'',2,NULL,NULL),
(67,'content-type-builder','contenttypes','createcontenttype',0,'',1,NULL,NULL),
(68,'content-type-builder','contenttypes','createcontenttype',0,'',2,NULL,NULL),
(69,'content-type-builder','contenttypes','deletecontenttype',0,'',1,NULL,NULL),
(70,'content-type-builder','contenttypes','deletecontenttype',0,'',2,NULL,NULL),
(71,'content-type-builder','contenttypes','getcontenttype',0,'',1,NULL,NULL),
(72,'content-type-builder','contenttypes','getcontenttype',0,'',2,NULL,NULL),
(73,'content-type-builder','contenttypes','getcontenttypes',0,'',1,NULL,NULL),
(74,'content-type-builder','contenttypes','getcontenttypes',0,'',2,NULL,NULL),
(75,'content-type-builder','contenttypes','updatecontenttype',0,'',1,NULL,NULL),
(76,'content-type-builder','contenttypes','updatecontenttype',0,'',2,NULL,NULL),
(77,'email','email','getsettings',0,'',1,NULL,NULL),
(78,'email','email','getsettings',0,'',2,NULL,NULL),
(79,'email','email','send',0,'',1,NULL,NULL),
(80,'email','email','send',0,'',2,NULL,NULL),
(81,'email','email','test',0,'',1,NULL,NULL),
(82,'email','email','test',0,'',2,NULL,NULL),
(83,'i18n','content-types','getnonlocalizedattributes',0,'',1,NULL,NULL),
(84,'i18n','content-types','getnonlocalizedattributes',0,'',2,NULL,NULL),
(85,'i18n','iso-locales','listisolocales',0,'',1,NULL,NULL),
(86,'i18n','iso-locales','listisolocales',0,'',2,NULL,NULL),
(87,'i18n','locales','createlocale',0,'',1,NULL,NULL),
(88,'i18n','locales','createlocale',0,'',2,NULL,NULL),
(89,'i18n','locales','deletelocale',0,'',1,NULL,NULL),
(90,'i18n','locales','deletelocale',0,'',2,NULL,NULL),
(91,'i18n','locales','listlocales',0,'',1,NULL,NULL),
(92,'i18n','locales','listlocales',0,'',2,NULL,NULL),
(93,'i18n','locales','updatelocale',0,'',2,NULL,NULL),
(94,'i18n','locales','updatelocale',0,'',1,NULL,NULL),
(95,'upload','upload','count',0,'',1,NULL,NULL),
(96,'upload','upload','count',0,'',2,NULL,NULL),
(97,'upload','upload','destroy',0,'',1,NULL,NULL),
(98,'upload','upload','destroy',0,'',2,NULL,NULL),
(99,'upload','upload','find',0,'',1,NULL,NULL),
(100,'upload','upload','find',0,'',2,NULL,NULL),
(101,'upload','upload','findone',0,'',1,NULL,NULL),
(102,'upload','upload','findone',0,'',2,NULL,NULL),
(103,'upload','upload','getsettings',0,'',1,NULL,NULL),
(104,'upload','upload','getsettings',0,'',2,NULL,NULL),
(105,'upload','upload','search',0,'',1,NULL,NULL),
(106,'upload','upload','search',0,'',2,NULL,NULL),
(107,'upload','upload','updatesettings',0,'',1,NULL,NULL),
(108,'upload','upload','updatesettings',0,'',2,NULL,NULL),
(109,'upload','upload','upload',0,'',1,NULL,NULL),
(110,'upload','upload','upload',0,'',2,NULL,NULL),
(111,'users-permissions','auth','callback',0,'',1,NULL,NULL),
(112,'users-permissions','auth','callback',1,'',2,NULL,NULL),
(113,'users-permissions','auth','connect',1,'',1,NULL,NULL),
(114,'users-permissions','auth','connect',1,'',2,NULL,NULL),
(115,'users-permissions','auth','emailconfirmation',0,'',1,NULL,NULL),
(116,'users-permissions','auth','emailconfirmation',1,'',2,NULL,NULL),
(117,'users-permissions','auth','forgotpassword',0,'',1,NULL,NULL),
(118,'users-permissions','auth','forgotpassword',1,'',2,NULL,NULL),
(119,'users-permissions','auth','register',0,'',1,NULL,NULL),
(120,'users-permissions','auth','register',1,'',2,NULL,NULL),
(121,'users-permissions','auth','resetpassword',0,'',1,NULL,NULL),
(122,'users-permissions','auth','resetpassword',1,'',2,NULL,NULL),
(123,'users-permissions','auth','sendemailconfirmation',0,'',1,NULL,NULL),
(124,'users-permissions','auth','sendemailconfirmation',0,'',2,NULL,NULL),
(125,'users-permissions','user','count',0,'',1,NULL,NULL),
(126,'users-permissions','user','count',0,'',2,NULL,NULL),
(127,'users-permissions','user','create',0,'',1,NULL,NULL),
(128,'users-permissions','user','create',0,'',2,NULL,NULL),
(129,'users-permissions','user','destroy',0,'',1,NULL,NULL),
(130,'users-permissions','user','destroyall',0,'',1,NULL,NULL),
(131,'users-permissions','user','destroy',0,'',2,NULL,NULL),
(132,'users-permissions','user','destroyall',0,'',2,NULL,NULL),
(133,'users-permissions','user','find',0,'',1,NULL,NULL),
(134,'users-permissions','user','find',0,'',2,NULL,NULL),
(135,'users-permissions','user','findone',0,'',1,NULL,NULL),
(136,'users-permissions','user','findone',0,'',2,NULL,NULL),
(137,'users-permissions','user','me',1,'',1,NULL,NULL),
(138,'users-permissions','user','me',1,'',2,NULL,NULL),
(139,'users-permissions','user','update',0,'',1,NULL,NULL),
(140,'users-permissions','userspermissions','deleterole',0,'',1,NULL,NULL),
(141,'users-permissions','user','update',0,'',2,NULL,NULL),
(142,'users-permissions','userspermissions','createrole',0,'',1,NULL,NULL),
(143,'users-permissions','userspermissions','createrole',0,'',2,NULL,NULL),
(144,'users-permissions','userspermissions','deleterole',0,'',2,NULL,NULL),
(145,'users-permissions','userspermissions','getadvancedsettings',0,'',1,NULL,NULL),
(146,'users-permissions','userspermissions','getadvancedsettings',0,'',2,NULL,NULL),
(147,'users-permissions','userspermissions','getemailtemplate',0,'',1,NULL,NULL),
(148,'users-permissions','userspermissions','getpolicies',0,'',1,NULL,NULL),
(149,'users-permissions','userspermissions','getproviders',0,'',1,NULL,NULL),
(150,'users-permissions','userspermissions','getemailtemplate',0,'',2,NULL,NULL),
(151,'users-permissions','userspermissions','getpermissions',0,'',1,NULL,NULL),
(152,'users-permissions','userspermissions','getpermissions',0,'',2,NULL,NULL),
(153,'users-permissions','userspermissions','getpolicies',0,'',2,NULL,NULL),
(154,'users-permissions','userspermissions','getproviders',0,'',2,NULL,NULL),
(155,'users-permissions','userspermissions','getrole',0,'',1,NULL,NULL),
(156,'users-permissions','userspermissions','getrole',0,'',2,NULL,NULL),
(157,'users-permissions','userspermissions','getroles',0,'',1,NULL,NULL),
(158,'users-permissions','userspermissions','getroles',0,'',2,NULL,NULL),
(159,'users-permissions','userspermissions','getroutes',0,'',1,NULL,NULL),
(160,'users-permissions','userspermissions','getroutes',0,'',2,NULL,NULL),
(161,'users-permissions','userspermissions','index',0,'',1,NULL,NULL),
(162,'users-permissions','userspermissions','searchusers',0,'',2,NULL,NULL),
(163,'users-permissions','userspermissions','index',0,'',2,NULL,NULL),
(164,'users-permissions','userspermissions','searchusers',0,'',1,NULL,NULL),
(165,'users-permissions','userspermissions','updateadvancedsettings',0,'',1,NULL,NULL),
(166,'users-permissions','userspermissions','updateadvancedsettings',0,'',2,NULL,NULL),
(167,'users-permissions','userspermissions','updateemailtemplate',0,'',1,NULL,NULL),
(168,'users-permissions','userspermissions','updateemailtemplate',0,'',2,NULL,NULL),
(169,'users-permissions','userspermissions','updateproviders',0,'',1,NULL,NULL),
(170,'users-permissions','userspermissions','updateproviders',0,'',2,NULL,NULL),
(171,'users-permissions','userspermissions','updaterole',0,'',1,NULL,NULL),
(172,'users-permissions','userspermissions','updaterole',0,'',2,NULL,NULL),
(173,'application','post','count',0,'',1,NULL,NULL),
(174,'application','post','count',0,'',2,NULL,NULL),
(175,'application','post','create',0,'',1,NULL,NULL),
(176,'application','post','create',0,'',2,NULL,NULL),
(177,'application','post','delete',0,'',1,NULL,NULL),
(178,'application','post','delete',0,'',2,NULL,NULL),
(179,'application','post','find',0,'',1,NULL,NULL),
(180,'application','post','find',1,'',2,NULL,NULL),
(181,'application','post','findone',0,'',1,NULL,NULL),
(182,'application','post','findone',1,'',2,NULL,NULL),
(183,'application','post','update',0,'',1,NULL,NULL),
(184,'application','post','update',0,'',2,NULL,NULL),
(185,'application','author','count',0,'',1,NULL,NULL),
(186,'application','author','count',0,'',2,NULL,NULL),
(187,'application','author','create',0,'',1,NULL,NULL),
(188,'application','author','create',0,'',2,NULL,NULL),
(189,'application','author','delete',0,'',1,NULL,NULL),
(190,'application','author','delete',0,'',2,NULL,NULL),
(191,'application','author','find',0,'',1,NULL,NULL),
(192,'application','author','find',1,'',2,NULL,NULL),
(193,'application','author','findone',0,'',1,NULL,NULL),
(194,'application','author','findone',1,'',2,NULL,NULL),
(195,'application','author','update',0,'',1,NULL,NULL),
(196,'application','author','update',0,'',2,NULL,NULL),
(197,'application','category','count',0,'',2,NULL,NULL),
(198,'application','category','create',0,'',1,NULL,NULL),
(199,'application','category','find',1,'',2,NULL,NULL),
(200,'application','category','findone',0,'',1,NULL,NULL),
(201,'application','category','count',0,'',1,NULL,NULL),
(202,'application','category','create',0,'',2,NULL,NULL),
(203,'application','category','delete',0,'',1,NULL,NULL),
(204,'application','category','delete',0,'',2,NULL,NULL),
(205,'application','category','find',0,'',1,NULL,NULL),
(206,'application','category','findone',1,'',2,NULL,NULL),
(207,'application','category','update',0,'',1,NULL,NULL),
(208,'application','category','update',0,'',2,NULL,NULL);

/*Table structure for table `users-permissions_role` */

DROP TABLE IF EXISTS `users-permissions_role`;

CREATE TABLE `users-permissions_role` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_role_type_unique` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `users-permissions_role` */

insert  into `users-permissions_role`(`id`,`name`,`description`,`type`,`created_by`,`updated_by`) values 
(1,'Authenticated','Default role given to authenticated user.','authenticated',NULL,NULL),
(2,'Public','Default role given to unauthenticated user.','public',NULL,NULL);

/*Table structure for table `users-permissions_user` */

DROP TABLE IF EXISTS `users-permissions_user`;

CREATE TABLE `users-permissions_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmationToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_user_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `users-permissions_user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
