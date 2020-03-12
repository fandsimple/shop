-- MySQL dump 10.13  Distrib 8.0.16, for osx10.14 (x86_64)
--
-- Host: localhost    Database: GPAXF
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
-- Table structure for table `App_address`
--

DROP TABLE IF EXISTS `App_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `App_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `a_province` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `a_city` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `a_county` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `a_detailed_address` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `a_user_id` int(11) NOT NULL,
  `a_phone` varchar(16) COLLATE utf8mb4_general_ci NOT NULL,
  `a_username` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `App_address_a_user_id_dd85930a_fk_axf_user_id` (`a_user_id`),
  CONSTRAINT `App_address_a_user_id_dd85930a_fk_axf_user_id` FOREIGN KEY (`a_user_id`) REFERENCES `axf_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `App_address`
--

LOCK TABLES `App_address` WRITE;
/*!40000 ALTER TABLE `App_address` DISABLE KEYS */;
INSERT INTO `App_address` VALUES (1,'北京市','北京市市辖区','朝阳区','太原存',13,'15735183194','晋太'),(2,'山西省','太原市','小店区','杏花岭',13,'110','同学');
/*!40000 ALTER TABLE `App_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `App_count`
--

DROP TABLE IF EXISTS `App_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `App_count` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `App_count`
--

LOCK TABLES `App_count` WRITE;
/*!40000 ALTER TABLE `App_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `App_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `App_orderaddress`
--

DROP TABLE IF EXISTS `App_orderaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `App_orderaddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `o_order_id` int(11) NOT NULL,
  `o_address_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `o_order_id` (`o_order_id`),
  KEY `App_orderaddress_o_address_id_59aa601a_fk_App_address_id` (`o_address_id`),
  CONSTRAINT `App_orderaddress_o_address_id_59aa601a_fk_App_address_id` FOREIGN KEY (`o_address_id`) REFERENCES `app_address` (`id`),
  CONSTRAINT `App_orderaddress_o_order_id_458d68c8_fk_axf_order_id` FOREIGN KEY (`o_order_id`) REFERENCES `axf_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `App_orderaddress`
--

LOCK TABLES `App_orderaddress` WRITE;
/*!40000 ALTER TABLE `App_orderaddress` DISABLE KEYS */;
INSERT INTO `App_orderaddress` VALUES (12,12,1),(13,13,1),(14,14,1),(15,15,1),(16,16,1),(17,17,1),(18,18,1),(19,19,1),(20,20,1),(21,21,1),(22,22,1),(23,23,1),(24,24,1),(25,25,1),(26,26,1),(27,27,1),(28,28,1),(29,29,1),(30,30,1),(31,31,1),(32,32,1),(33,33,1),(34,34,1),(35,35,1);
/*!40000 ALTER TABLE `App_orderaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add main wheel',7,'add_mainwheel'),(20,'Can change main wheel',7,'change_mainwheel'),(21,'Can delete main wheel',7,'delete_mainwheel'),(22,'Can add main nav',8,'add_mainnav'),(23,'Can change main nav',8,'change_mainnav'),(24,'Can delete main nav',8,'delete_mainnav'),(25,'Can add main must buy',9,'add_mainmustbuy'),(26,'Can change main must buy',9,'change_mainmustbuy'),(27,'Can delete main must buy',9,'delete_mainmustbuy'),(28,'Can add main shop',10,'add_mainshop'),(29,'Can change main shop',10,'change_mainshop'),(30,'Can delete main shop',10,'delete_mainshop'),(31,'Can add main show',11,'add_mainshow'),(32,'Can change main show',11,'change_mainshow'),(33,'Can delete main show',11,'delete_mainshow'),(34,'Can add food type',12,'add_foodtype'),(35,'Can change food type',12,'change_foodtype'),(36,'Can delete food type',12,'delete_foodtype'),(37,'Can add goods',13,'add_goods'),(38,'Can change goods',13,'change_goods'),(39,'Can delete goods',13,'delete_goods'),(40,'Can add axf user',14,'add_axfuser'),(41,'Can change axf user',14,'change_axfuser'),(42,'Can delete axf user',14,'delete_axfuser'),(43,'Can add cart',15,'add_cart'),(44,'Can change cart',15,'change_cart'),(45,'Can delete cart',15,'delete_cart'),(46,'Can add order',16,'add_order'),(47,'Can change order',16,'change_order'),(48,'Can delete order',16,'delete_order'),(49,'Can add order goods',17,'add_ordergoods'),(50,'Can change order goods',17,'change_ordergoods'),(51,'Can delete order goods',17,'delete_ordergoods'),(52,'Can add address',18,'add_address'),(53,'Can change address',18,'change_address'),(54,'Can delete address',18,'delete_address'),(55,'Can add order address',19,'add_orderaddress'),(56,'Can change order address',19,'change_orderaddress'),(57,'Can delete order address',19,'delete_orderaddress'),(58,'Can add count',20,'add_count'),(59,'Can change count',20,'change_count'),(60,'Can delete count',20,'delete_count');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$a5qfC1wEndlu$u5wmNnY5fKD9MD6r/VpXPn5tU/waeiHuT3JOD5+xouQ=','2020-03-11 18:24:34.123975',1,'fand','','','',1,1,'2020-03-08 23:47:46.072999');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `axf_cart`
--

DROP TABLE IF EXISTS `axf_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `axf_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_goods_num` int(11) NOT NULL,
  `c_is_select` tinyint(1) NOT NULL,
  `c_goods_id` int(11) NOT NULL,
  `c_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `axf_cart_c_goods_id_85ddfb56_fk_axf_goods_id` (`c_goods_id`),
  KEY `axf_cart_c_user_id_5abdebfe_fk_axf_user_id` (`c_user_id`),
  CONSTRAINT `axf_cart_c_goods_id_85ddfb56_fk_axf_goods_id` FOREIGN KEY (`c_goods_id`) REFERENCES `axf_goods` (`id`),
  CONSTRAINT `axf_cart_c_user_id_5abdebfe_fk_axf_user_id` FOREIGN KEY (`c_user_id`) REFERENCES `axf_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `axf_cart`
--

LOCK TABLES `axf_cart` WRITE;
/*!40000 ALTER TABLE `axf_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `axf_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `axf_foodtype`
--

DROP TABLE IF EXISTS `axf_foodtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `axf_foodtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` int(11) NOT NULL,
  `typename` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `childtypenames` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `typesort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `axf_foodtype`
--

LOCK TABLES `axf_foodtype` WRITE;
/*!40000 ALTER TABLE `axf_foodtype` DISABLE KEYS */;
INSERT INTO `axf_foodtype` VALUES (1,1,'电脑','苹果:11#华为:12',0),(2,2,'手机','苹果:21#小米:22',0),(3,3,'iPad','华为:31#苹果:32',0),(4,4,'耳机','苹果:41#小米:42',0),(5,5,'硬盘','固态:51#机械:52',0);
/*!40000 ALTER TABLE `axf_foodtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `axf_goods`
--

DROP TABLE IF EXISTS `axf_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `axf_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) NOT NULL,
  `productimg` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `productname` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `productlongname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `isxf` tinyint(1) NOT NULL,
  `pmdesc` tinyint(1) NOT NULL,
  `specifics` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `price` double NOT NULL,
  `marketprice` double NOT NULL,
  `categoryid` int(11) NOT NULL,
  `childcid` int(11) NOT NULL,
  `childcidname` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `dealerid` int(11) NOT NULL,
  `storenums` int(11) NOT NULL,
  `productnum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=604 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `axf_goods`
--

LOCK TABLES `axf_goods` WRITE;
/*!40000 ALTER TABLE `axf_goods` DISABLE KEYS */;
INSERT INTO `axf_goods` VALUES (326,10000,'https://img13.360buyimg.com/n7/jfs/t1/82484/21/10111/96407/5d780d4cE642bcddf/2fc850de8dcb1a79.jpg','','Apple iPad 平板电脑 2019年新款10.2英寸（32G WLAN版/iPadOS系统/Retina显示屏/MW762CH/A）金色',0,0,'10',2499,2549,1,11,'apple mac',1,100,725),(327,52253,'https://img11.360buyimg.com/n7/jfs/t1/102681/17/2735/152947/5dd78433E4a36756b/c00b26e445e830dc.jpg','','Apple MacBook Air 13.3 | Core i5 8G 128G SSD 笔记本电脑 轻薄本 银色 MQD32CH/A',0,0,'10',6278,6328,1,11,'apple mac',1,100,673),(328,10000,'https://img10.360buyimg.com/n7/jfs/t1/69626/28/9842/87214/5d780d6eEa95b0cb7/ba577d1e205c19b1.jpg','','Apple iPad 平板电脑 2019年新款10.2英寸（32G WLAN版/iPadOS系统/Retina显示屏/MW752CH/A）银色',0,0,'10',2499,2549,1,11,'apple mac',1,100,763),(329,10000,'https://img10.360buyimg.com/n7/jfs/t1/50965/16/16199/67242/5dd26e06E686fcc3b/c39fe0cb7ab36c13.jpg','','Apple 2019款 MacBook Pro 13.3【带触控栏】八代i5 8G 256G RP645显卡 深空灰 笔记本电脑 MUHP2CH/A',0,0,'10',11499,11549,1,11,'apple mac',1,100,331),(330,10000,'https://img13.360buyimg.com/n7/jfs/t1/60011/9/15796/86012/5dd277a9Eda1ff7df/d400cdbef8dbba2d.jpg','','Apple iMac【2019新品】27英寸一体机5K屏 Core i5 8G 1TB融合 RP570X显卡 台式电脑主机MRQY2CH/A',0,0,'10',13388,13438,1,11,'apple mac',1,100,977),(331,26594,'https://img11.360buyimg.com/n7/jfs/t1/87287/37/14469/593935/5e6779feE18985edb/63454d3548d1b73a.png','','【二手95新】苹果Apple MacBook Pro 二手苹果笔记本电脑  办公 游戏 设计 剪辑 下单发9成新高清视网膜屏性价比高839可拍照选购',0,0,'10',3899,3949,1,11,'apple mac',1,100,330),(332,43311,'https://img13.360buyimg.com/n7/jfs/t1/64009/14/15694/84968/5dd263b8E4bd85276/2f6d68629dce0def.jpg','','Apple iMac 21.5英寸一体机Core i5 8G 1TB机械硬盘 台式电脑主机 MMQA2CH/A',0,0,'10',7900,7950,1,11,'apple mac',1,100,565),(333,10000,'https://img10.360buyimg.com/n7/jfs/t1/77650/2/15765/58979/5dd26e36E1b34eada/d8f007dee376339a.jpg','','Apple 2019款 MacBook Pro 13.3【带触控栏】八代i5 8G 256G RP645显卡 银色 笔记本电脑 MUHR2CH/A',0,0,'10',11499,11549,1,11,'apple mac',1,100,905),(334,10000,'https://img10.360buyimg.com/n7/jfs/t1/30204/3/6597/121395/5c906702Ebc1aee88/0a2aaa5feaec8d6b.jpg','','Apple iPad mini 5 2019年新款平板电脑 7.9英寸（256G WLAN版/A12芯片/Retina显示屏/MUU32CH/A）深空灰色',0,0,'10',4090,4140,1,11,'apple mac',1,100,337),(335,10000,'https://img11.360buyimg.com/n7/jfs/t1/70739/29/15937/152947/5dd78453E03269b36/b02347a79a72a844.jpg','','Apple MacBook Air 13.3 | Core i5 8G 256G SSD 银色 笔记本电脑 轻薄本 Z0UU00056原MQD42CH/A',0,0,'10',7599,7649,1,11,'apple mac',1,100,154),(336,10000,'https://img11.360buyimg.com/n7/jfs/t1/82783/32/15702/67231/5dd2683bE8ba7093b/b2995552f579bb71.jpg','','Apple 2019款 MacBook Air 13.3 Retina屏 八代i5 8G 128G SSD 银色 笔记本电脑 轻薄本 MVFK2CH/A',0,0,'10',8899,8949,1,11,'apple mac',1,100,321),(337,29717,'https://img13.360buyimg.com/n7/jfs/t1/85544/28/12300/263215/5e46178eEb40e23b7/2bca665a3957089e.jpg','','【二手95新】苹果 Apple MacBook 苹果笔记本电脑 时尚外观 轻薄便携 学习办公 超极本 99新17款YF2-256G灰',0,0,'10',5399,5449,1,11,'apple mac',1,100,356),(338,10000,'https://img14.360buyimg.com/n7/jfs/t1/63113/13/9928/91846/5d780d97Eebef395e/717921b5b7ebcab0.jpg','','Apple iPad 平板电脑 2019年新款10.2英寸（32G WLAN版/iPadOS系统/Retina显示屏/MW742CH/A）深空灰色',0,0,'10',2499,2549,1,11,'apple mac',1,100,901),(339,10000,'https://img12.360buyimg.com/n7/jfs/t1/102700/8/2548/67242/5dd26ee3Ef7e8a90a/5b50f070bd345a2f.jpg','','Apple 2019新品 MacBook Pro 13.3【带触控栏】八代i5 8G 256G 深空灰 笔记本电脑 轻薄本 MV962CH/A',0,0,'10',13188,13238,1,11,'apple mac',1,100,656),(340,10000,'https://img10.360buyimg.com/n7/jfs/t1/90659/29/2583/58979/5dd26f24Edf921fb6/1008cdd3badfdd51.jpg','','Apple 2019新品 MacBook Pro 13.3【带触控栏】八代i5 8G 256G 银色 笔记本电脑 轻薄本 MV992CH/A',0,0,'10',12788,12838,1,11,'apple mac',1,100,925),(341,25888,'https://img10.360buyimg.com/n7/jfs/t1/4908/4/9304/233224/5bac5654Ed3e2a373/343bd8f14e3dba06.jpg','','拍拍【租赁】苹果MacBook Pro15.4英寸笔记本电脑视频剪辑作图一 i7 8G 256G15.4英寸短租',0,0,'10',6000,6050,1,11,'apple mac',1,100,382),(342,25888,'https://img12.360buyimg.com/n7/jfs/t1/4908/4/9304/233224/5bac5654Ed3e2a373/343bd8f14e3dba06.jpg','','拍拍【租赁】苹果MacBook Pro15.4英寸笔记本电脑视频剪辑作图一 i7 16G 512G固态15.4英寸',0,0,'10',8000,8050,1,11,'apple mac',1,100,789),(343,63820,'https://img10.360buyimg.com/n7/jfs/t1/90713/21/12084/303372/5e46178dE1d8ab98d/39a64457006c5fb0.jpg','','【二手99新】Apple 二手苹果笔记本电脑 Macbook  Pro15寸/13寸视网膜超薄游戏本 19年出厂全新未拆封XT2/XU2带官保256G',0,0,'10',7566,7616,1,11,'apple mac',1,100,629),(344,25888,'https://img13.360buyimg.com/n7/jfs/t1/4908/4/9304/233224/5bac5654Ed3e2a373/343bd8f14e3dba06.jpg','','拍拍【租赁】苹果MacBook Pro15.4英寸笔记本电脑视频剪辑作图一 i7 8G 256G固态15.4英寸',0,0,'10',6000,6050,1,11,'apple mac',1,100,328),(345,10000,'https://img14.360buyimg.com/n7/jfs/t1/106071/15/2544/84968/5dd27785E4fba80f4/2cbfcd06505109b8.jpg','','Apple iMac【2019新品】21.5英寸一体机4K屏Core i5 8G1TB融合 RP560X显卡 台式电脑主机MRT42CH/A',0,0,'10',11188,11238,1,11,'apple mac',1,100,912),(346,10000,'https://img13.360buyimg.com/n7/jfs/t1/103560/17/2528/64960/5dd2680cEa9e32a0b/4dcf33a4c6ae8c4e.jpg','','Apple 2019款 MacBook Air 13.3 Retina屏 八代i5 8G 128G SSD 深空灰 笔记本电脑 轻薄本 MVFH2CH/A',0,0,'10',8899,8949,1,11,'apple mac',1,100,530),(347,10000,'https://img14.360buyimg.com/n7/jfs/t1/61502/26/15688/67541/5dd26876Eb894ab10/7268888c493fe7c3.jpg','','Apple 2019款 MacBook Air 13.3 Retina屏 八代i5 8G 128G SSD 金色 笔记本电脑 轻薄本 MVFM2CH/A',0,0,'10',8899,8949,1,11,'apple mac',1,100,222),(348,10000,'https://img10.360buyimg.com/n7/jfs/t1/95823/19/2505/67242/5dd26f4cE3dd00dd7/c515da2b852a9205.jpg','','Apple 2019新品 MacBook Pro 13.3【带触控栏】八代i5 8G 512G 深空灰 笔记本电脑 轻薄本 MV972CH/A',0,0,'10',15499,15549,1,11,'apple mac',1,100,528),(349,26396,'https://img13.360buyimg.com/n7/jfs/t1/105152/40/14413/277607/5e64a8c8E634e883a/173ef2c5075b6058.jpg','','【二手95新】苹果Apple MacBook Air 苹果笔记本电脑 轻薄便携 移动办公 学习娱乐 19年Air灰FJ2银FL2金FN2带延保256G',0,0,'10',7799,7849,1,11,'apple mac',1,100,683),(350,10000,'https://img14.360buyimg.com/n7/jfs/t1/85034/6/2574/58979/5dd26f72E254e1e12/e254d52a96f303c5.jpg','','Apple 2019新品 MacBook Pro 13.3【带触控栏】八代i5 8G 512G 银色 笔记本电脑 轻薄本 MV9A2CH/A',0,0,'10',15499,15549,1,11,'apple mac',1,100,999),(351,44717,'https://img11.360buyimg.com/n7/jfs/t1/78357/10/16151/152947/5dd7846aE9c646946/4683872ba8d2490a.jpg','','Apple MacBook Air 13.3 | 定制升级 Core i7 8G 128G SSD硬盘 银色 笔记本电脑 轻薄本 Z0UU00022',0,0,'10',7199,7249,1,11,'apple mac',1,100,943),(352,10000,'https://img14.360buyimg.com/n7/jfs/t1/94168/5/2496/67242/5dd26d5aEe6769428/b96808ecb3efa28f.jpg','','Apple 2019款 MacBook Pro 13.3【带触控栏】八代i5 8G 128G RP645显卡 深空灰 笔记本电脑 轻薄本 MUHN2CH/A',0,0,'10',9498,9548,1,11,'apple mac',1,100,413),(353,10000,'https://img14.360buyimg.com/n7/jfs/t1/31026/5/6741/118007/5c90668eEfb855589/451430755c907769.jpg','','Apple iPad mini 5 2019年新款平板电脑 7.9英寸（256G WLAN版/A12芯片/Retina显示屏/MUU52CH/A）银色',0,0,'10',4090,4140,1,11,'apple mac',1,100,591),(354,40064,'https://img11.360buyimg.com/n7/jfs/t1/8752/20/3886/68537/5bd8a6d4E305fb764/70a1015a7bf5b402.jpg','','Apple Mac mini台式电脑主机 Core i5 8G 256G SSD 台式机 MRTT2CH/A',0,0,'10',8058,8108,1,11,'apple mac',1,100,923),(355,29294,'https://img10.360buyimg.com/n7/jfs/t1/106976/8/13740/159629/5e5c85ceE21b04cfc/7eeb0255fec85632.jpg','','APPLE苹果ipad2019新款10.2英寸iPad2018款9.7英寸平板电脑air2更新版 银色 19款10.2英寸128G WLAN蓝牙键盘+壳膜',0,0,'10',3798,3848,1,11,'apple mac',1,100,538),(356,10000,'https://img14.360buyimg.com/n7/jfs/t1/91517/27/9813/270412/5e141f92E18ef8ea2/384747606e56ab06.jpg','','荣耀MagicBook Pro Win10 16.1英寸全面屏轻薄性能笔记本电脑（标压锐龙R5 3550H 8G 512G 100%sRGB）冰河银',0,0,'10',4699,4749,1,12,'',1,100,138),(357,10000,'https://img12.360buyimg.com/n7/jfs/t1/72375/26/13243/321774/5dae7cddE21b36e9e/45999a613f959cc7.jpg','','华为(HUAWEI)MateBook 13 第三方Linux版 全面屏轻薄性能笔记本电脑 (i7-8565U 8+512GB 2K 独显)银',0,0,'10',5699,5749,1,12,'',1,100,177),(358,10001,'https://img11.360buyimg.com/n7/jfs/t1/101997/17/8128/214063/5e01e6f7Ed6c37c9f/d0afc89316d02270.jpg','','华为(HUAWEI) MateBook D 14英寸全面屏轻薄笔记本电脑便携超级快充(AMD锐龙5 3500U 16+512GB)银',0,0,'10',4299,4349,1,12,'',1,100,680),(359,10000,'https://img12.360buyimg.com/n7/jfs/t1/99246/3/10128/314481/5e143707E73e5934a/0e6206d9dc0dc13e.jpg','','荣耀MagicBook 2019 Win10 英特尔酷睿i3 14英寸轻薄窄边框笔记本电脑（i3 8G 256G  FHD IPS 指纹）冰河银',0,0,'10',3999,4049,1,12,'',1,100,193),(360,10000,'https://img11.360buyimg.com/n7/jfs/t1/87786/9/6464/321774/5df2ec07E4407cdb0/f51424d20ae533f2.jpg','','华为(HUAWEI)MateBook 13 第三方Linux版 全面屏轻薄性能笔记本电脑 (i3 8+256GB 2K 集显)银',0,0,'10',3699,3749,1,12,'',1,100,320),(361,45619,'https://img10.360buyimg.com/n7/jfs/t1/109244/40/6616/226204/5e4f776bE8cdbd515/7dda2f7e43c8a695.jpg','','荣耀畅玩平板2 9.6英寸影音娱乐平板电脑  1280*800 四核 4800mAh 3G+32G WiFi高配版 苍穹灰',0,0,'10',1049,1099,1,12,'',1,100,812),(362,63714,'https://img10.360buyimg.com/n7/jfs/t1/107939/30/6808/168635/5e51cd9cEd61b9918/cf6419e677ef2fa1.jpg','','华为荣耀magicbook 15笔记本电脑15.6英寸全面屏超轻薄本学生商务办公手提电脑网课本 银 | 锐龙R5 8G 256GB win10',0,0,'10',3499,3549,1,12,'',1,100,582),(363,10001,'https://img12.360buyimg.com/n7/jfs/t1/100605/24/7603/222062/5dfc6d30Ec375bf0a/e29b6690731acb24.jpg','','荣耀笔记本电脑MagicBook 14 14英寸全面屏轻薄本（AMD锐龙R5 3500U 16G 512G 多屏协同 指纹Win10）银',0,0,'10',4199,4249,1,12,'',1,100,349),(364,10001,'https://img13.360buyimg.com/n7/jfs/t1/109716/31/3630/310283/5e12ff7fE207cba64/4725dacf9a40f7b8.jpg','','荣耀笔记本电脑MagicBook 15 15.6英寸全面屏轻薄本 (锐龙R5 3500U 8G 512G 多屏协同 指纹Win10）银',0,0,'10',3999,4049,1,12,'',1,100,421),(365,10001,'https://img13.360buyimg.com/n7/jfs/t1/107067/14/8198/292050/5e01e2baE473f7388/5ab5efb7c3b3b2c0.jpg','','华为(HUAWEI)MateBook 14 第三方Linux版 全面屏轻薄性能笔记本电脑(i5-8265U 8+512GB 2k 集显)灰',0,0,'10',5399,5449,1,12,'',1,100,344),(366,10000,'https://img13.360buyimg.com/n7/jfs/t1/86271/17/10057/324874/5e143669E627d21b9/858c0f5821837651.jpg','','荣耀MagicBook 2019 第三方Linux版 14英寸轻薄窄边框笔记本电脑（AMD锐龙5 3500U 8G 512G FHD IPS ）冰河银',0,0,'10',3399,3449,1,12,'',1,100,327),(367,10000,'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg','','京品电脑荣耀平板5 8英寸全高清屏杜比全景声平板电脑 麒麟710芯片GT游戏加速 3G+32G WiFi版 苍穹灰',0,0,'10',1099,1149,1,12,'',1,100,786),(368,55769,'https://img11.360buyimg.com/n7/jfs/t1/105816/18/14417/185654/5e631229Ee8626435/8d605739a54c6c88.jpg','','【新品发售】华为笔记本MateBook 14超薄本全面屏超极本轻薄本学生商务办公手提笔记本电脑 灰|十代i5 8G 512G独显 2020款',0,0,'10',6399,6449,1,12,'',1,100,213),(369,10000,'https://img10.360buyimg.com/n7/jfs/t1/94547/4/9854/270412/5e141fb2E695fa7ff/3a6a73f55a3efe92.jpg','','荣耀MagicBook Pro 16.1英寸全面屏轻薄高性能笔记本电脑（标压锐龙R7 3750H 8G 512G 100%sRGB  Win10）银',0,0,'10',5199,5249,1,12,'',1,100,332),(370,10000,'https://img13.360buyimg.com/n7/jfs/t1/100060/17/9298/319358/5e0da623Eeb3cd05e/e28c1616befb7223.jpg','','京品电脑荣耀笔记本电脑MagicBook Pro 第三方Linux版16.1英寸全面屏轻薄本（标压锐龙R7 3750H 8G 512G 100%sRGB）银',0,0,'10',4499,4549,1,12,'',1,100,929),(371,10000,'https://img10.360buyimg.com/n7/jfs/t1/110329/5/3697/324874/5e1436b0E000652a6/9b61f9e797fda9e0.jpg','','荣耀MagicBook 2019 第三方Linux版 14英寸轻薄窄边框笔记本电脑（AMD锐龙7 3700U 8G 512G FHD）冰河银',0,0,'10',3799,3849,1,12,'',1,100,916),(372,10000,'https://img13.360buyimg.com/n7/jfs/t1/99236/27/9907/270412/5e141fd0E04c0b2fb/feb860a77684cb42.jpg','','荣耀MagicBook Pro 16.1英寸全面屏轻薄高性能笔记本电脑（标压锐龙R5 3550H 16G 512G 100%sRGB Win10）银',0,0,'10',5199,5249,1,12,'',1,100,106),(373,10001,'https://img14.360buyimg.com/n7/jfs/t1/85930/30/13532/782915/5e5b9388Ea847fbdd/36d3bf854b014c3a.jpg','','华为平板MatePad Pro 10.8英寸麒麟990影音娱乐办公游戏全面屏平板电脑8GB+256GB WIFI（贝母白）',0,0,'10',3999,4049,1,12,'',1,100,194),(374,51272,'https://img12.360buyimg.com/n7/jfs/t1/100040/6/12988/171815/5e4f75ceE14f44f70/0915c442b4133141.jpg','','荣耀畅玩平板2 8英寸影音娱乐平板电脑 1280*800 四核 4800mAh 2G+16G WiFi版 苍穹灰',0,0,'10',699,749,1,12,'',1,100,861),(375,10001,'https://img12.360buyimg.com/n7/jfs/t1/104679/10/9681/354791/5e12f70bE992d91e8/f4f7a2085143aec9.jpg','','荣耀MagicBook 14 14英寸全面屏轻薄笔记本电脑（十代英特尔酷睿i5 8G 512G MX250 指纹 Win10）冰河银',0,0,'10',5099,5149,1,12,'',1,100,519),(376,10000,'https://img13.360buyimg.com/n7/jfs/t1/50335/20/7134/296734/5d4d20d4E1920d074/777d9662b45b2193.jpg','','荣耀笔记本电脑MagicBook Pro 16.1英寸全面屏轻薄性能本（酷睿i7 8G 512G MX250 100%sRGB  Win10 ）冰河银',0,0,'10',6399,6449,1,12,'',1,100,259),(377,10000,'https://img12.360buyimg.com/n7/jfs/t1/68453/8/13448/274825/5dae7d64E8d9addf9/6e857ddab8a699b9.jpg','','华为(HUAWEI)MateBook 14 第三方Linux版 全面屏轻薄性能笔记本电脑 英特尔酷睿(i7 8+512GB  2k 独显)银',0,0,'10',6699,6749,1,12,'',1,100,528),(378,10000,'https://img10.360buyimg.com/n7/jfs/t1/97942/2/13461/310411/5e5b9326Ec520a291/78b448fd636de81f.jpg','','京品电脑华为平板M6 8.4英寸高能版影音娱乐游戏平板电脑6GB+128GB WIFI（幻影红）',0,0,'10',2499,2549,1,12,'',1,100,109),(379,10000,'https://img10.360buyimg.com/n7/jfs/t1/107552/3/7476/892424/5e5b9184E17e6b2df/68cb37a871768af6.jpg','','华为平板M6 10.8英寸麒麟980影音娱乐游戏平板电脑4GB+64GB LTE全网通（香槟金）',0,0,'10',2699,2749,1,12,'',1,100,393),(380,10343,'https://img14.360buyimg.com/n7/jfs/t1/94019/29/3255/191019/5dde3ab7E58bf84be/d2b5fe6ea0df86f6.jpg','','华为平板手机 M2青春版 7英寸学生平板电脑全网通通话pad 703L 典雅白 3G/32GB 官方标配',0,0,'10',999,1049,1,12,'',1,100,582),(381,10000,'https://img14.360buyimg.com/n7/jfs/t1/94974/27/12883/259057/5e4f7562E5c122009/145a89778ff4d909.jpg','','荣耀平板5 10.1英寸全高清屏影音平板电脑 麒麟8核芯片GT游戏加速3G+32G WiFi版 苍穹灰',0,0,'10',1399,1449,1,12,'',1,100,809),(382,10001,'https://img13.360buyimg.com/n7/jfs/t1/87234/21/8652/279624/5e05e740Ef9a61429/ae9b0b43a00d35f4.jpg','','荣耀笔记本电脑MagicBook 15 15.6英寸全面屏轻薄本 (锐龙R5 3500U 8G 512G 多屏协同 指纹Win10）星空灰',0,0,'10',3899,3949,1,12,'',1,100,237),(383,60572,'https://img10.360buyimg.com/n7/jfs/t1/101292/31/14630/493311/5e672810E566c90fa/171bf873cc7a7a11.jpg','','华为荣耀笔记本电脑MagicBook 15  15.6英寸超轻薄学习商务办公笔记本 银｜R5-3500U/8G/512G win版',0,0,'10',3799,3849,1,12,'',1,100,212),(384,10000,'https://img13.360buyimg.com/n7/jfs/t1/48403/10/14113/375825/5dae7da2E41ae8924/77878801ef409736.jpg','','华为(HUAWEI)MateBook X Pro 2019款 第三方Linux版 13.9英寸全面屏轻薄笔记本电脑(i5 8+512GB 独显 3K) 灰',0,0,'10',8699,8749,1,12,'',1,100,801),(385,10000,'https://img14.360buyimg.com/n7/jfs/t1/30872/7/117/302141/5c3800e6E38442ddd/1d372360efd0a127.jpg','','华为平板M5 青春版 10.1英寸智能语音游戏平板电脑4GB+64GB WIFI（香槟金）',0,0,'10',1799,1849,1,12,'',1,100,111),(386,10000,'https://img12.360buyimg.com/n7/jfs/t1/106119/25/13739/168435/5e6372a4Eae122f80/e2d8c31c9b5a6e8a.jpg','','Apple iPhone 11 (A2223) 128GB 黑色 移动联通电信4G手机 双卡双待',0,0,'10',5999,6049,2,21,'',1,100,460),(387,10000,'https://img12.360buyimg.com/n7/jfs/t1/102163/1/14329/295629/5e6379bfEcff71637/6976358edd1bbe32.jpg','','Apple iPhone XS Max (A2104) 256GB 金色 移动联通电信4G手机 双卡双待',0,0,'10',7299,7349,2,21,'',1,100,961),(388,10000,'https://img13.360buyimg.com/n7/jfs/t1/99953/14/14250/206841/5e637803Edf6adde5/6aec33aa46df82ff.jpg','','Apple iPhone 11 Pro Max (A2220) 256GB 暗夜绿色  移动联通电信4G手机 双卡双待',0,0,'10',10899,10949,2,21,'',1,100,445),(389,10000,'https://img10.360buyimg.com/n7/jfs/t1/3405/18/3537/69901/5b997c0aE5dc8ed9f/a2c208410ae84d1f.jpg','','京品手机Apple iPhone XR (A2108) 128GB 黑色 移动联通电信4G手机 双卡双待',0,0,'10',4999,5049,2,21,'',1,100,810),(390,10000,'https://img12.360buyimg.com/n7/jfs/t1/91660/37/14425/204114/5e63760aE1012a5cf/a8baa0dfba1ffd86.jpg','','Apple iPhone 11 Pro (A2217) 256GB 暗夜绿色 移动联通电信4G手机 双卡双待',0,0,'10',9999,10049,2,21,'',1,100,941),(391,31338,'https://img12.360buyimg.com/n7/jfs/t1/24238/8/12493/163807/5c9996dfE466d616a/ab22cb8d8464e096.jpg','','京品手机Apple iPhone 7 (A1660) 128G 黑色 移动联通电信4G手机',0,0,'10',2999,3049,2,21,'',1,100,548),(392,31338,'https://img13.360buyimg.com/n7/jfs/t1/27775/9/12538/194688/5c999d68E3b4b3c81/b2d0471de24d7696.jpg','','京品手机Apple iPhone 7 Plus (A1661) 128G 玫瑰金色 移动联通电信4G手机',0,0,'10',3599,3649,2,21,'',1,100,737),(393,10000,'https://img14.360buyimg.com/n7/jfs/t1/104432/39/14096/261770/5e637959Ecaf256c3/82613244f27ea153.jpg','','Apple iPhone XS (A2100)  256GB 金色 移动联通电信4G手机',0,0,'10',6399,6449,2,21,'',1,100,792),(394,56664,'https://img13.360buyimg.com/n7/jfs/t1/108242/20/6965/119186/5e5640e5E5ac96c2a/1c428b6800f87b01.jpg','','Apple 苹果 iPhone 11 手机 紫色 全网通 128GB',0,0,'10',5768,5818,2,21,'',1,100,599),(395,50892,'https://img13.360buyimg.com/n7/jfs/t8284/363/1326459580/71585/6d3e8013/59b857f2N6ca75622.jpg','','Apple iPhone 8 Plus (A1864) 64GB 金色 移动联通电信4G手机',0,0,'10',4199,4249,2,21,'',1,100,876),(396,56739,'https://img14.360buyimg.com/n7/jfs/t1/105976/39/13521/165227/5e57612fEad40c9cf/1f791c3553c063c8.jpg','','Apple 苹果 iPhone 11 手机 紫色 全网通128G',0,0,'10',5749,5799,2,21,'',1,100,169),(397,55370,'https://img13.360buyimg.com/n7/jfs/t1/108663/26/8366/343489/5e66f975Ed6d22637/cc7ece371030b438.png','','【国行正品】Apple 苹果 iphone 11 手机 黑色 全网通128GB',0,0,'10',5799,5849,2,21,'',1,100,544),(398,56754,'https://img13.360buyimg.com/n7/jfs/t1/78098/17/10045/62652/5d79fc08E5c258cd5/f0184e6394e20c58.jpg','','Apple 苹果 iPhone 11 手机 白色 全网通128G',0,0,'10',5788,5838,2,21,'',1,100,304),(399,56646,'https://img13.360buyimg.com/n7/jfs/t1/99235/21/3277/85663/5dde8867E9bba17bd/95aaaf358074dfb2.jpg','','现货速发 苹果 手机 Apple iPhone 11 黑色 128GB',0,0,'10',5808,5858,2,21,'',1,100,692),(400,10673,'https://img13.360buyimg.com/n7/jfs/t1/99709/35/12297/86641/5e43c5a8E0ca57776/68e3001adae56a43.jpg','','Apple 苹果 iPhone7 Plus 手机 黑色 全网通 128GB',0,0,'10',3478,3528,2,21,'',1,100,790),(401,56648,'https://img10.360buyimg.com/n7/jfs/t1/88953/12/14302/142105/5e648dfdE3a9add47/e45bb25742508e57.jpg','','现货速发【现货国行-5048元起-可分期】Apple 苹果 iPhone 11 手机 黑色 全网通 64GB',0,0,'10',5128,5178,2,21,'',1,100,343),(402,11728,'https://img10.360buyimg.com/n7/jfs/t1/100781/26/12295/77366/5e43c6e0E575f8eb6/86ed696c039630a2.jpg','','Apple 苹果 iPhone7 手机 黑色 全网通 128G',0,0,'10',2778,2828,2,21,'',1,100,465),(403,56649,'https://img13.360buyimg.com/n7/jfs/t1/61595/34/9850/80943/5d7861a9Ee45c1fca/9bd037de1ed604e8.jpg','','Apple 苹果 iPhone 11 双卡双待手机 紫色 128GB',0,0,'10',5749,5799,2,21,'',1,100,996),(404,32943,'https://img10.360buyimg.com/n7/jfs/t1/92084/21/12151/97699/5e43bd6eE5d62a3e9/f9a10fdc8f4178ec.jpg','','Apple 苹果 iPhone XR 手机 黑色 全网通 128GB',0,0,'10',4988,5038,2,21,'',1,100,781),(405,56647,'https://img12.360buyimg.com/n7/jfs/t1/100235/34/13803/118828/5e5ce52fEe6f6363a/5d7c7c25985fc355.jpg','','【现货国行低至5088元起】Apple 苹果 iPhone 11 移动联通电信4G手机 双卡双待 红色 128GB',0,0,'10',5648,5698,2,21,'',1,100,366),(406,55674,'https://img11.360buyimg.com/n7/jfs/t1/103380/40/14237/133865/5e637853E91d056d6/1f6a9417ad3c109d.jpg','','Apple 苹果 iPhone 11Pro Max 手机 暗夜绿色 全网通 256GB',0,0,'10',10058,10108,2,21,'',1,100,311),(407,56647,'https://img12.360buyimg.com/n7/jfs/t1/94205/15/13967/134575/5e5f0f65Edfbfdd75/f4f4470c37c05904.jpg','','苹果iPhone 11 手机 紫色 全网通128G',0,0,'10',5748,5798,2,21,'',1,100,162),(408,56902,'https://img14.360buyimg.com/n7/jfs/t1/109010/3/7855/142205/5e60c158E61604ab2/7743ae8e7cb51735.jpg','','【国行现货5078元起】Apple 苹果 iPhone 11 移动联通电信4G手机 双卡双待 黑色 全网通 (128G)',0,0,'10',5798,5848,2,21,'',1,100,381),(409,57143,'https://img12.360buyimg.com/n7/jfs/t1/51617/28/10436/68151/5d7866c1E423e0082/25eec9efbf3a7307.jpg','','【可选12期免息】苹果 iPhone 11 全网通 手机 紫色 64GB',0,0,'10',5158,5208,2,21,'',1,100,650),(410,56652,'https://img14.360buyimg.com/n7/jfs/t1/54066/7/11108/62634/5d81ddf5E33f3020d/9eae4e908800394e.jpg','','Apple 苹果 iphone 11 手机 白色 全网通 128GB',0,0,'10',5858,5908,2,21,'',1,100,740),(411,10702,'https://img13.360buyimg.com/n7/jfs/t1/88812/5/14507/113494/5e676483E13ef3578/882d05f9bc452fb2.jpg','','苹果 Apple iPhone 7 手机 128G全网通国行【正品行货，顺丰速发】 黑色 官方标配(全网通128G)',0,0,'10',2849,2899,2,21,'',1,100,142),(412,57004,'https://img11.360buyimg.com/n7/jfs/t1/110154/33/7682/159789/5e5f0c43Eac05e209/da54fbe0cbfcaa1b.jpg','','Apple苹果iPhone7Plus4G手机 黑色 全网通128GB',0,0,'10',3466,3516,2,21,'',1,100,674),(413,56700,'https://img10.360buyimg.com/n7/jfs/t1/44724/31/10702/76624/5d7d744cEee5eb59e/9b4525d14c3a330a.jpg','','Apple 苹果 iPhone11 手机 黑色 全网通 128GB',0,0,'10',5758,5808,2,21,'',1,100,566),(414,65179,'https://img12.360buyimg.com/n7/jfs/t1/109460/17/8268/77237/5e66ea92Ed0607355/b7e3193ad9f73eda.jpg','','Apple iPhone 8 Plus  移动联通电信4G手机 全网通苹果8P 金色 128G',0,0,'10',4898,4948,2,21,'',1,100,984),(415,56650,'https://img12.360buyimg.com/n7/jfs/t1/43673/34/15314/531309/5d81f35dEda38e8fe/a68d81e20b31354c.png','','Apple 苹果 iphone 11 Pro Max 手机 暗夜绿色 全网通 256GB',0,0,'10',10158,10208,2,21,'',1,100,508),(416,10001,'https://img12.360buyimg.com/n7/jfs/t1/89638/2/6927/148626/5df7524dEf4790181/71fe33686e6f885b.jpg','','Redmi K30 王一博同款 5G双模 120Hz流速屏 骁龙765G 30W快充 6GB+128GB 深海微光 游戏智能手机 小米 红米',0,0,'10',2299,2349,2,22,'',1,100,346),(417,10000,'https://img10.360buyimg.com/n7/jfs/t1/96771/25/88/213545/5da6d49eE557681de/7469cf746af81035.jpg','','【新品抢购】Redmi 8A 5000mAh大电量 大字体大音量大内存 骁龙八核处理器 AI人脸解锁 莱茵护眼全面屏3GB+32GB 珊瑚橙 游戏智能老人手机 小米 红米',0,0,'10',599,649,2,22,'',1,100,484),(418,10000,'https://img10.360buyimg.com/n7/jfs/t1/47839/4/9041/292222/5d6748b9E7e0a2107/4ca49d6eaf5afe40.jpg','','Redmi Note8 4800万全场景四摄 4000mAh长续航 高通骁龙665 18W快充 小金刚品质保证 4GB+64GB 曜石黑 游戏智能手机 小米 红米',0,0,'10',999,1049,2,22,'',1,100,409),(419,10000,'https://img12.360buyimg.com/n7/jfs/t1/83202/24/524/298511/5cebc5cdE5f4759ac/4567583f90977277.jpg','','Redmi 7A 4000mAh超长续航 AI人脸解锁 骁龙8核  标配10W充电器 整机防泼溅 3GB+32GB 磨砂黑 游戏智能手机 小米 红米',0,0,'10',599,649,2,22,'',1,100,732),(420,10000,'https://img10.360buyimg.com/n7/jfs/t1/47602/8/9063/92821/5d67465eE55258909/1796fe0ea3d2d895.jpg','','Redmi Note8Pro 6400万全场景四摄 液冷游戏芯 4500mAh长续航 NFC 18W快充 红外遥控 8GB+128GB 冰翡翠 游戏智能手机 小米 红米',0,0,'10',1599,1649,2,22,'',1,100,443),(421,10001,'https://img11.360buyimg.com/n7/jfs/t1/106720/5/6864/102152/5df64dd3E54ef6db2/17cc73b43ad6538d.jpg','','Redmi K30 王一博同款 120Hz流速屏 前置挖孔双摄 6GB+128GB 深海微光 游戏智能手机 小米 红米',0,0,'10',1699,1749,2,22,'',1,100,959),(422,10000,'https://img14.360buyimg.com/n7/jfs/t1/87612/29/1562/165605/5dc105bcE17d1ec7b/6e3b00a4bda82095.jpg','','小米CC9 Pro 1亿像素 五摄四闪 10倍混合光学变焦 5260mAh 屏下指纹 冰雪极光 8GB+128GB 游戏智能拍照手机',0,0,'10',2799,2849,2,22,'',1,100,412),(423,10001,'https://img13.360buyimg.com/n7/jfs/t1/104161/17/11953/72376/5e4400baEd8887421/1a2dcd48411eb821.jpg','','小米10 Pro 双模5G 骁龙865 1亿像素8K电影相机  50倍变焦 50W快充 12GB+512GB 星空蓝 拍照智能新品游戏手机',0,0,'10',5999,6049,2,22,'',1,100,849),(424,10000,'https://img13.360buyimg.com/n7/jfs/t1/82484/21/10111/96407/5d780d4cE642bcddf/2fc850de8dcb1a79.jpg','','Apple iPad 平板电脑 2019年新款10.2英寸（32G WLAN版/iPadOS系统/Retina显示屏/MW762CH/A）金色',0,0,'10',2499,2549,3,32,'',1,100,338),(425,10000,'https://img10.360buyimg.com/n7/jfs/t1/69626/28/9842/87214/5d780d6eEa95b0cb7/ba577d1e205c19b1.jpg','','Apple iPad 平板电脑 2019年新款10.2英寸（32G WLAN版/iPadOS系统/Retina显示屏/MW752CH/A）银色',0,0,'10',2499,2549,3,32,'',1,100,678),(426,10000,'https://img14.360buyimg.com/n7/jfs/t1/63113/13/9928/91846/5d780d97Eebef395e/717921b5b7ebcab0.jpg','','Apple iPad 平板电脑 2019年新款10.2英寸（32G WLAN版/iPadOS系统/Retina显示屏/MW742CH/A）深空灰色',0,0,'10',2499,2549,3,32,'',1,100,745),(427,10000,'https://img10.360buyimg.com/n7/jfs/t1/30204/3/6597/121395/5c906702Ebc1aee88/0a2aaa5feaec8d6b.jpg','','Apple iPad mini 5 2019年新款平板电脑 7.9英寸（256G WLAN版/A12芯片/Retina显示屏/MUU32CH/A）深空灰色',0,0,'10',4090,4140,3,32,'',1,100,566),(428,10000,'https://img14.360buyimg.com/n7/jfs/t1/31026/5/6741/118007/5c90668eEfb855589/451430755c907769.jpg','','Apple iPad mini 5 2019年新款平板电脑 7.9英寸（256G WLAN版/A12芯片/Retina显示屏/MUU52CH/A）银色',0,0,'10',4090,4140,3,32,'',1,100,885),(429,57520,'https://img12.360buyimg.com/n7/jfs/t1/96571/25/14323/122779/5e64bb73E15af5405/1e9f93ea11142746.jpg','','苹果（Apple）ipad2019新款第7代10.2英寸2018款9.7英寸air2更新版平板电脑 金色 19款10.2英寸 32GWLAN版皮套+钢化膜',0,0,'10',2548,2598,3,32,'',1,100,907),(430,29294,'https://img13.360buyimg.com/n7/jfs/t1/104659/40/13679/160862/5e5c85d8E9fbfb54a/f188116e92384c06.jpg','','APPLE苹果ipad2019新款10.2英寸iPad2018款9.7英寸平板电脑air2更新版 金色 19款10.2英寸128G WLAN蓝牙键盘+壳膜',0,0,'10',3798,3848,3,32,'',1,100,148),(431,57520,'https://img10.360buyimg.com/n7/jfs/t1/98543/12/14192/120279/5e64bb85Ecc061ceb/55b953edd75610ea.jpg','','苹果（Apple）ipad2019新款第7代10.2英寸2018款9.7英寸air2更新版平板电脑 深空灰色 19款10.2英寸 128GWLAN版皮套+钢化膜',0,0,'10',3758,3808,3,32,'',1,100,602),(432,27524,'https://img12.360buyimg.com/n7/jfs/t1/98543/12/14192/120279/5e64bb85Ecc061ceb/55b953edd75610ea.jpg','','苹果（Apple）ipad2019新款第7代10.2英寸2018款9.7英寸air2更新版平板电脑 深空灰色 19款10.2英寸 32G WLAN版-标配',0,0,'10',2488,2538,3,32,'',1,100,408),(433,57520,'https://img13.360buyimg.com/n7/jfs/t1/96571/25/14323/122779/5e64bb73E15af5405/1e9f93ea11142746.jpg','','苹果（Apple）ipad2019新款第7代10.2英寸2018款9.7英寸air2更新版平板电脑 金色 19款10.2英寸 128GWLAN版皮套+钢化膜',0,0,'10',3758,3808,3,32,'',1,100,168),(434,11714,'https://img13.360buyimg.com/n7/jfs/t1/104659/40/13679/160862/5e5c85d8E9fbfb54a/f188116e92384c06.jpg','','APPLE苹果ipad2019新款10.2英寸iPad2018款9.7英寸平板电脑air2更新版 金色 19款10.2英寸128G WLAN版皮套+膜',0,0,'10',3758,3808,3,32,'',1,100,740),(435,57520,'https://img14.360buyimg.com/n7/jfs/t1/98543/12/14192/120279/5e64bb85Ecc061ceb/55b953edd75610ea.jpg','','苹果（Apple）ipad2019新款第7代10.2英寸2018款9.7英寸air2更新版平板电脑 深空灰色 19款10.2英寸 32GWLAN版皮套+钢化膜',0,0,'10',2548,2598,3,32,'',1,100,396),(436,57520,'https://img14.360buyimg.com/n7/jfs/t1/96571/25/14323/122779/5e64bb73E15af5405/1e9f93ea11142746.jpg','','苹果（Apple）ipad2019新款第7代10.2英寸2018款9.7英寸air2更新版平板电脑 金色 19款10.2英寸 32G WLAN版键盘+壳膜',0,0,'10',2588,2638,3,32,'',1,100,584),(437,57520,'https://img14.360buyimg.com/n7/jfs/t1/96571/25/14323/122779/5e64bb73E15af5405/1e9f93ea11142746.jpg','','苹果（Apple）ipad2019新款第7代10.2英寸2018款9.7英寸air2更新版平板电脑 银色 19款10.2英寸 128GWLAN版皮套+钢化膜',0,0,'10',3758,3808,3,32,'',1,100,268),(438,27524,'https://img13.360buyimg.com/n7/jfs/t1/96571/25/14323/122779/5e64bb73E15af5405/1e9f93ea11142746.jpg','','苹果（Apple）ipad2019新款第7代10.2英寸2018款9.7英寸air2更新版平板电脑 金色 19款10.2英寸 32G WLAN版-标配',0,0,'10',2488,2538,3,32,'',1,100,533),(439,29294,'https://img10.360buyimg.com/n7/jfs/t1/106976/8/13740/159629/5e5c85ceE21b04cfc/7eeb0255fec85632.jpg','','APPLE苹果ipad2019新款10.2英寸iPad2018款9.7英寸平板电脑air2更新版 银色 19款10.2英寸128G WLAN蓝牙键盘+壳膜',0,0,'10',3798,3848,3,32,'',1,100,125),(440,57520,'https://img12.360buyimg.com/n7/jfs/t1/98543/12/14192/120279/5e64bb85Ecc061ceb/55b953edd75610ea.jpg','','苹果（Apple）ipad2019新款第7代10.2英寸2018款9.7英寸air2更新版平板电脑 深空灰色 19款10.2英寸128G WLAN版键盘+壳膜',0,0,'10',3798,3848,3,32,'',1,100,527),(441,27524,'https://img10.360buyimg.com/n7/jfs/t1/96571/25/14323/122779/5e64bb73E15af5405/1e9f93ea11142746.jpg','','苹果（Apple）ipad2019新款第7代10.2英寸2018款9.7英寸air2更新版平板电脑 银色 19款10.2英寸 32G WLAN版-标配',0,0,'10',2488,2538,3,32,'',1,100,785),(442,57520,'https://img10.360buyimg.com/n7/jfs/t1/96571/25/14323/122779/5e64bb73E15af5405/1e9f93ea11142746.jpg','','苹果（Apple）ipad2019新款第7代10.2英寸2018款9.7英寸air2更新版平板电脑 金色 19款10.2英寸128G WLAN版键盘+壳膜',0,0,'10',3798,3848,3,32,'',1,100,467),(443,57520,'https://img11.360buyimg.com/n7/jfs/t1/96571/25/14323/122779/5e64bb73E15af5405/1e9f93ea11142746.jpg','','苹果（Apple）ipad2019新款第7代10.2英寸2018款9.7英寸air2更新版平板电脑 银色 19款10.2英寸128G WLAN版键盘+壳膜',0,0,'10',3798,3848,3,32,'',1,100,931),(444,10000,'https://img13.360buyimg.com/n7/jfs/t1/24973/15/11534/118978/5c906762E1b34f647/b55858ea71b8ebbb.jpg','','Apple iPad mini5 2019新款平板电脑 7.9英寸（64G WLAN+Cellular版/A12芯片/Retina显示屏/MUXR2CH/A）银色',0,0,'10',3896,3946,3,32,'',1,100,197),(445,11714,'https://img12.360buyimg.com/n7/jfs/t1/106976/8/13740/159629/5e5c85ceE21b04cfc/7eeb0255fec85632.jpg','','APPLE苹果ipad2019新款10.2英寸iPad2018款9.7英寸平板电脑air2更新版 银色 19款10.2英寸128G WLAN版皮套+膜',0,0,'10',3758,3808,3,32,'',1,100,849),(446,57520,'https://img11.360buyimg.com/n7/jfs/t1/98543/12/14192/120279/5e64bb85Ecc061ceb/55b953edd75610ea.jpg','','苹果（Apple）ipad2019新款第7代10.2英寸2018款9.7英寸air2更新版平板电脑 深空灰色 19款10.2英寸 32G WLAN版键盘+壳膜',0,0,'10',2588,2638,3,32,'',1,100,264),(447,56721,'https://img13.360buyimg.com/n7/jfs/t1/109753/36/8264/122166/5e65ef28E6ef61024/482fbcd75310c3b1.jpg','','苹果（Apple）iPad 平板电脑 2019年新款10.2英寸 air更新版 金色 32G WIFI版',0,0,'10',2476,2526,3,32,'',1,100,518),(448,23339,'https://img12.360buyimg.com/n7/jfs/t1/95469/26/10925/57419/5e21c380Ee481a8c6/d8142d21b5f22a6f.jpg','','Apple Pencil手写笔触控笔适用2019新款iPad/mini5/air3平板电脑 白色 MK0C2CH/A',0,0,'10',888,938,3,32,'',1,100,479),(449,27524,'https://img13.360buyimg.com/n7/jfs/t1/98543/12/14192/120279/5e64bb85Ecc061ceb/55b953edd75610ea.jpg','','苹果（Apple）ipad2019新款第7代10.2英寸2018款9.7英寸air2更新版平板电脑 深空灰色 19款10.2英寸 128G WLAN版-标配',0,0,'10',3698,3748,3,32,'',1,100,980),(450,27524,'https://img11.360buyimg.com/n7/jfs/t1/96571/25/14323/122779/5e64bb73E15af5405/1e9f93ea11142746.jpg','','苹果（Apple）ipad2019新款第7代10.2英寸2018款9.7英寸air2更新版平板电脑 银色 19款10.2英寸 128G WLAN版-标配',0,0,'10',3698,3748,3,32,'',1,100,361),(451,11244,'https://img12.360buyimg.com/n7/jfs/t1/104659/40/13679/160862/5e5c85d8E9fbfb54a/f188116e92384c06.jpg','','APPLE苹果ipad2019新款10.2英寸iPad2018款9.7英寸平板电脑air2更新版 金色 19款10.2英寸32G WLAN版蓝牙键盘+壳膜',0,0,'10',2588,2638,3,32,'',1,100,884),(452,62655,'https://img13.360buyimg.com/n7/jfs/t1/106976/8/13740/159629/5e5c85ceE21b04cfc/7eeb0255fec85632.jpg','','APPLE苹果ipad2019新款10.2英寸iPad2018款9.7英寸平板电脑air2更新版 银色 19款10.2英寸128G WLAN版手写笔+壳膜',0,0,'10',4548,4598,3,32,'',1,100,102),(453,57521,'https://img14.360buyimg.com/n7/jfs/t1/98543/12/14192/120279/5e64bb85Ecc061ceb/55b953edd75610ea.jpg','','苹果（Apple）ipad2019新款第7代10.2英寸2018款9.7英寸air2更新版平板电脑 深空灰色 19款10.2英寸 128GWLAN版手写笔+壳膜',0,0,'10',4568,4618,3,32,'',1,100,120),(454,54784,'https://img14.360buyimg.com/n7/jfs/t1/104190/23/13806/140845/5e606773E56d57943/2008b6ed90b67ca1.jpg','','【七仓就近发】Apple 苹果新款AirPods2蓝牙通用耳机 支持ipad/iphone 爆款 AirPods2【有线充电】',0,0,'10',978,1028,4,41,'',1,100,276),(455,44945,'https://img12.360buyimg.com/n7/jfs/t1/91024/29/14024/117838/5e65afc3E28866b79/f080bdd5c7ca8815.jpg','','京东超市苹果（Apple） AirPods2蓝牙无线耳机2代适用airpods3代 2代有线充电版【标配】送价值39元漫威正版保护套',0,0,'10',999,1049,4,41,'',1,100,651),(456,10000,'https://img11.360buyimg.com/n7/jfs/t1/89451/14/14473/80446/5e65dd67E8499c200/994952bfcb0aa9d5.jpg','','Apple AirPods 配充电盒 Apple蓝牙耳机',0,0,'10',1246,1296,4,41,'',1,100,973),(457,10000,'https://img11.360buyimg.com/n7/jfs/t1/110123/29/8308/87170/5e65ddccEf41d28d9/e79c43aad45b6bbf.jpg','','Apple AirPods Pro 主动降噪无线蓝牙耳机',0,0,'10',1999,2049,4,41,'',1,100,963),(458,39989,'https://img10.360buyimg.com/n7/jfs/t1/86343/1/14863/103314/5e675ee3E245af911/85ea26680617ae62.jpg','','京东超市苹果（Apple） 新款AirPods2代真无线蓝牙耳机 支持ipad pro/air3代 AirPods2（有线充电盒版） 标配',0,0,'10',998,1048,4,41,'',1,100,562),(459,10000,'https://img13.360buyimg.com/n7/jfs/t1/93621/7/14563/88640/5e65dd9dEd0746ac0/c7286da9d4ae378d.jpg','','Apple AirPods 配无线充电盒 Apple蓝牙耳机',0,0,'10',1299,1349,4,41,'',1,100,149),(460,61763,'https://img14.360buyimg.com/n7/jfs/t1/109192/25/7408/118453/5e5b2c60Ef91f258e/f4a7b73dcb2733eb.jpg','','Apple 苹果AirPods Pro 主动降噪无线蓝牙耳机 支持iPad Pro3代 Max手机 苹果AirPods Pro 蓝牙耳机',0,0,'10',1999,2049,4,41,'',1,100,897),(461,34944,'https://img11.360buyimg.com/n7/jfs/t19978/15/1445140537/20653/9c4a33e9/5b1e6615Ne1765c03.jpg','','Apple 采用Lightning/闪电接头的 EarPods 耳机 iPhone iPad 耳机 手机耳机',0,0,'10',223,273,4,41,'',1,100,857),(462,24497,'https://img13.360buyimg.com/n7/jfs/t1/97895/32/14452/200603/5e65ae8cE2b7353e4/e48997d523076f35.jpg','','京东超市APPLE苹果 新款AirPods2代/AirPods无线蓝牙耳机支持ipad pro/air3代 Airpods 2 【有线充电盒版】七仓直发 官方标配【白色液态硅胶套+防丢绳】',0,0,'10',998,1048,4,41,'',1,100,874),(463,73910,'https://img11.360buyimg.com/n7/g7/M03/08/0C/rBEHZVBziAMIAAAAAABUEjw0EYQAABo1gF1VYEAAFQq465.jpg','','Apple 采用3.5毫米耳机插头的 EarPods 耳机 iPhone iPad 耳机 手机耳机',0,0,'10',223,273,4,41,'',1,100,795),(464,60940,'https://img11.360buyimg.com/n7/jfs/t1/97895/32/14452/200603/5e65ae8cE2b7353e4/e48997d523076f35.jpg','','京东超市APPLE苹果 新款AirPods2代/AirPods无线蓝牙耳机支持ipad pro/air3代 Airpods 2 【有线充电盒版】七仓直发 官方标配【熏紫色液态硅胶套+防丢绳】',0,0,'10',998,1048,4,41,'',1,100,807),(465,10000,'https://img13.360buyimg.com/n7/jfs/t1/26709/29/12867/18508/5c9c2536E4e491afa/231af99f17f5913b.jpg','','京东国际Apple苹果 AirPods2代/二代无线蓝牙耳机  有线充电盒版',0,0,'10',950,1000,4,41,'',1,100,465),(466,59464,'https://img10.360buyimg.com/n7/jfs/t1/95680/3/13185/102878/5e570a59E517b9f57/73d60a36d2ce77df.jpg','','Apple airpods2苹果无线蓝牙耳机二代入耳式耳机iPhone11ProMax手机通用 苹果AirPods2【配有线充电盒】',0,0,'10',1059,1109,4,41,'',1,100,854),(467,60375,'https://img14.360buyimg.com/n7/jfs/t1/108726/37/8343/123954/5e676108Eba8d72a9/915e927a350082a8.jpg','','苹果（Apple） AirPods Pro 主动降噪无线蓝牙耳机 支持iPad Pro3代/air2 AirPods Pro 标配',0,0,'10',1858,1908,4,41,'',1,100,901),(468,43825,'https://img13.360buyimg.com/n7/jfs/t1/97895/32/14452/200603/5e65ae8cE2b7353e4/e48997d523076f35.jpg','','京东超市APPLE苹果 新款AirPods2代/AirPods无线蓝牙耳机支持ipad pro/air3代 Airpods 2 【有线充电盒版】七仓直发 官方标配【暗夜绿色液态硅胶套+防丢绳】',0,0,'10',998,1048,4,41,'',1,100,718),(469,33066,'https://img10.360buyimg.com/n7/jfs/t1/26830/11/4667/108765/5c341b61Ec2be6426/467d35203a7f7f99.jpg','','Apple 苹果原装耳机3.5毫米线控入耳式耳机有线手机耳塞iPhone6s/4s/5s/6plus 3.5mm圆头接口iPhone 5/6苹果原装正品',0,0,'10',208,258,4,41,'',1,100,209),(470,44945,'https://img13.360buyimg.com/n7/jfs/t1/92390/17/13552/104853/5e5ca90dE9351371a/2680502b853a3d62.jpg','','京东超市苹果（Apple） AirPods2蓝牙无线耳机2代适用airpods3代 2代无线充电版【标配】送价值39元漫威正版保护套',0,0,'10',1258,1308,4,41,'',1,100,826),(471,36404,'https://img13.360buyimg.com/n7/jfs/t1/106585/37/2568/56289/5dd26761E76f3cab6/aaf026f18d27f9f3.jpg','','京东超市apple苹果耳机原装有线控入耳式手机耳机EarPods适用于11pro/7/8plus/X max Lightning接口(7/8/x plus)',0,0,'10',223,273,4,41,'',1,100,860),(472,60619,'https://img10.360buyimg.com/n7/jfs/t1/97440/40/13422/134680/5e60d08dE779e8913/aa533e0d0e5376b4.jpg','','Apple AirPods2代 苹果iPhone11/Pro/Max手机无线蓝牙耳机 【爆款】H1芯片 有线充电盒版',0,0,'10',978,1028,4,41,'',1,100,848),(473,24497,'https://img14.360buyimg.com/n7/jfs/t1/97895/32/14452/200603/5e65ae8cE2b7353e4/e48997d523076f35.jpg','','京东超市APPLE苹果 新款AirPods2代/AirPods无线蓝牙耳机支持ipad pro/air3代 Airpods 2 【有线充电盒版】七仓直发 官方标配【青色液态硅胶套+防丢绳】',0,0,'10',998,1048,4,41,'',1,100,311),(474,43552,'https://img13.360buyimg.com/n7/jfs/t1/94415/21/14573/116894/5e66e757E3a23f4ba/b3053a6deba7722c.jpg','','APPLE苹果 新款AirPods2代/AirPods无线蓝牙耳机吃鸡无延迟支持ipad pro手机 二代AirPods【有线充电盒版】七仓直发 官方标配',0,0,'10',993,1043,4,41,'',1,100,170),(475,60407,'https://img13.360buyimg.com/n7/jfs/t1/108752/1/8087/138537/5e65b94bEde8357b5/d5e08eba7ee4dce2.jpg','','京东超市苹果（Apple） AirPods Pro主动降噪无线蓝牙耳机【新款上市】支持iPad 白色 【标配】',0,0,'10',1858,1908,4,41,'',1,100,877),(476,38691,'https://img11.360buyimg.com/n7/jfs/t1/85788/9/14041/130879/5e61efcfE8ced3015/a4dcb83ffa2883cd.jpg','','Apple苹果原装EarPods扁头lightning有线耳机iPhone11Pro Max/7/8',0,0,'10',223,273,4,41,'',1,100,686),(477,44102,'https://img12.360buyimg.com/n7/jfs/t1/98367/11/13070/163773/5e536efdE9bae31e1/d9318676dc3737e0.jpg','','APPLE苹果 2019款新AirPods2代苹果原装无线蓝牙运动耳机iPhoneX/8/7手机 二代airpods【有线充电盒版】',0,0,'10',998,1048,4,41,'',1,100,987),(478,49405,'https://img11.360buyimg.com/n7/jfs/t1/104369/15/14171/124450/5e6312cfE546a8e79/af2009512312e52d.jpg','','京东超市苹果（Apple） AirPods2蓝牙无线耳机2代适用airpods3代 2代有线充电版【套餐一】+漫威正版数据线',0,0,'10',1028,1078,4,41,'',1,100,166),(479,33028,'https://img14.360buyimg.com/n7/jfs/t1/65009/4/13505/115408/5dad706fE933c2db6/62aacdcb3e7502ab.jpg','','Apple苹果耳机原装线控带麦手机耳机7p耳塞入耳式XR耳机有线iPhone11 Pro/8plus 扁头通用 苹果7/8/X/XS MAX原装正品耳机',0,0,'10',208,258,4,41,'',1,100,647),(480,60935,'https://img11.360buyimg.com/n7/jfs/t1/104616/33/10893/137513/5e225fa5Efefca483/e0659bcb09d05a82.jpg','','APPLE苹果 新款AirPods pro3代无线蓝牙耳机支持平板air2/3代iphone手机 Airpods Pro 官方标配',0,0,'10',1858,1908,4,41,'',1,100,969),(481,24497,'https://img11.360buyimg.com/n7/jfs/t1/98378/36/13883/201147/5e6052c9E70a22fa6/b7eea1f7a8367af4.jpg','','京东超市APPLE苹果 新款AirPods2代/AirPods无线蓝牙耳机支持ipad pro/air3代 Airpods 2 【无线充电盒版】七仓直发 官方标配【白色液态硅胶套+防丢绳】',0,0,'10',1258,1308,4,41,'',1,100,771),(482,34198,'https://img12.360buyimg.com/n7/jfs/t1/90119/3/11902/147635/5e3cfc4dE20c94c8f/107ee0df7feed611.jpg','','苹果耳机原装earpods有线入耳式iPhone XR XS MAX 8 8P 11pro等手机通用 Lightning扁头接口',0,0,'10',207,257,4,41,'',1,100,670),(483,60596,'https://img11.360buyimg.com/n7/jfs/t1/108726/37/8343/123954/5e676108Eba8d72a9/915e927a350082a8.jpg','','苹果（Apple） AirPods Pro 主动降噪无线蓝牙耳机 支持iPad Pro3代/air2 AirPods Pro 套餐一：标配+保护套',0,0,'10',1878,1928,4,41,'',1,100,797),(484,10000,'https://img14.360buyimg.com/n7/jfs/t1/64368/7/7408/47909/5d568d21E6b723373/8e95a672b3701f93.jpg','','小米 Redmi AirDots 真无线蓝牙耳机|分体式耳机 |收纳充电盒 |蓝牙5.0 |按键防触控操作',0,0,'10',129.9,179.9,4,42,'',1,100,494),(485,10000,'https://img11.360buyimg.com/n7/jfs/t1/76476/27/11114/54995/5d88dbd2Ee78a6a40/54cbcff687e31801.jpg','','小米蓝牙耳机 Air2代 蓝牙耳机 Air2代 主动降噪 真无线蓝牙耳机 迷你入耳式手机耳机',0,0,'10',399,449,4,42,'',1,100,111),(486,63578,'https://img12.360buyimg.com/n7/jfs/t1/92849/28/9627/122319/5e11a478E283050f3/661ac6d804e5815d.jpg','','小米有品 Line Friends TWS蓝牙耳机布朗熊莎莉鸡真无线耳机运动入耳式迷你苹果安卓手机耳 无线蓝牙耳机 （布朗熊）',0,0,'10',169,219,4,42,'',1,100,371),(487,69684,'https://img10.360buyimg.com/n7/jfs/t1/79415/14/7596/40519/5d5ab266E5d7b0d79/e5401009d7e6c055.jpg','','小米双单元半入耳式耳机 白色 动圈+陶瓷喇叭双单元声学架构 高韧性线材+微机电麦克风线控',0,0,'10',69,119,4,42,'',1,100,215),(488,10000,'https://img12.360buyimg.com/n7/jfs/t1/56324/19/8077/52029/5d5aac40E734a631d/5bc8c1f5ee421324.jpg','','小米活塞耳机 入耳式手机耳机 通用耳麦Type-C版',0,0,'10',49,99,4,42,'',1,100,754),(489,40718,'https://img14.360buyimg.com/n7/jfs/t1/62019/17/7519/48977/5d5ab23dE2ba450f7/fba5d381d687303d.jpg','','小米耳机 圈铁Pro 入耳式有线耳机音乐耳机手机耳机耳麦',0,0,'10',149,199,4,42,'',1,100,901),(490,51369,'https://img12.360buyimg.com/n7/jfs/t1/69873/22/15192/102836/5dccb010E095a7ec1/f807bbfdaf34bc82.jpg','','小米 无线运动蓝牙耳机 项圈耳机青春版 跑步双耳入耳颈挂脖式耳塞华为苹果男女适用 橙色',0,0,'10',179,229,4,42,'',1,100,437),(491,10000,'https://img11.360buyimg.com/n7/jfs/t1/50685/7/8186/107087/5d5ab34cE83d713af/1037c0d4b4a8f589.jpg','','小米蓝牙项圈耳机青春版 手机耳机运动耳机通话耳机 橙色',0,0,'10',169,219,4,42,'',1,100,772),(492,36390,'https://img11.360buyimg.com/n7/jfs/t1/56755/35/7924/35747/5d568e5eE21464e0e/604ff6591f16b597.jpg','','小米蓝牙耳机青春版 黑色 挂耳式无线运动 通用耳塞',0,0,'10',59,109,4,42,'',1,100,798),(493,77872,'https://img12.360buyimg.com/n7/jfs/t1/53724/15/8215/50359/5d5ab221E2dc75cf6/c13cd4cff0512e0f.jpg','','小米圈铁耳机2代 动圈动铁双单元发声 手机耳机 有线耳机 入耳式耳机',0,0,'10',99,149,4,42,'',1,100,305),(494,17250,'https://img14.360buyimg.com/n7/jfs/t1/68908/18/9053/91095/5d6c8baaEc24879c6/893505d8ce145871.jpg','','小米（MI） 活塞耳机清新版小米耳机入耳式线控手机耳机音乐耳机 活塞耳机清新版 黑色',0,0,'10',26.99,76.99,4,42,'',1,100,404),(495,10000,'https://img14.360buyimg.com/n7/jfs/t1/67964/6/7662/108649/5d5ab170E708db067/b8cfbffc2e762e4a.jpg','','小米蓝牙耳机（女神K歌版） 内置混响 |原唱消音 |趣味变音|高清录音',0,0,'10',179,229,4,42,'',1,100,507),(496,53405,'https://img13.360buyimg.com/n7/jfs/t1/80927/8/7428/62659/5d568eaeE414261fa/31933533a4d68b3c.jpg','','小米运动蓝牙耳机mini 黑色 无线蓝牙入耳式运动耳机',0,0,'10',169,219,4,42,'',1,100,557),(497,10000,'https://img11.360buyimg.com/n7/jfs/t1/41368/10/12361/107258/5d5ab3a2E0633b0a2/cdbb07f48597b859.jpg','','小米有线耳机（女神K歌版）内置混响 |原唱消音 |趣味变音|高清录音',0,0,'10',169,219,4,42,'',1,100,862),(498,17250,'https://img13.360buyimg.com/n7/jfs/t1/52161/9/9369/81184/5d6c8ba0Eeded7e58/bbcd3a3bf57d4802.jpg','','小米（MI） 活塞耳机清新版小米耳机入耳式线控手机耳机音乐耳机 活塞耳机清新版 银色',0,0,'10',26.99,76.99,4,42,'',1,100,600),(499,40576,'https://img11.360buyimg.com/n7/jfs/t1/51440/7/7945/32872/5d568e30Ec37debb3/cca4111efe3fd276.jpg','','小米（MI）蓝牙耳机青春版 白色 挂耳式无线运动 通用耳塞',0,0,'10',59,109,4,42,'',1,100,352),(500,69684,'https://img14.360buyimg.com/n7/jfs/t1/71665/28/7812/49708/5d5ab27fEeb9f8e2a/8cb63c6916758315.jpg','','小米双单元半入耳式耳机 黑色 动圈+陶瓷喇叭双单元声学架构 高韧性线材+微机电麦克风线控',0,0,'10',69,119,4,42,'',1,100,671),(501,10000,'https://img14.360buyimg.com/n7/jfs/t1/25189/9/4764/119511/5c348155E21682ffd/db3a315ca7175245.jpg','','京品数码小米蓝牙耳机 Air入耳版 主动降噪 真无线蓝牙耳机 迷你入耳式手机耳机 小爱同学 支持小爱助手',0,0,'10',399,449,4,42,'',1,100,726),(502,84776,'https://img14.360buyimg.com/n7/jfs/t1/74427/14/7520/36297/5d568d7aEb3506219/3792e7f174d21973.jpg','','小米蓝牙耳机mini 黑色  迷你机身|侧入耳贴合佩戴一键式多控操作',0,0,'10',89,139,4,42,'',1,100,879),(503,10000,'https://img11.360buyimg.com/n7/jfs/t1/83386/12/7927/65205/5d5f64e4Ebab93b04/bca93328fc56c248.jpg','','小米双单元半入耳式耳机Type-C版 黑色',0,0,'10',99,149,4,42,'',1,100,636),(504,10000,'https://img10.360buyimg.com/n7/jfs/t1/48616/9/8617/51580/5d5f64c0E2080e82b/47c51cf4c853f28c.jpg','','小米（MI） 小米双单元半入耳式耳机Type-C版 白色',0,0,'10',99,149,4,42,'',1,100,944),(505,10000,'https://img11.360buyimg.com/n7/jfs/t1/93836/9/14053/65832/5e60ed5fEb41c3dc0/30e4f1b71c74d63b.jpg','','小米 圈铁四单元耳机 入耳式 线控蓝牙 手机耳机 HIFI发烧音乐耳机',0,0,'10',799,849,4,42,'',1,100,871),(506,10001,'https://img12.360buyimg.com/n7/jfs/t1/109693/40/926/33497/5df98670Ed81b72c5/6bf114006cb6d35a.jpg','','小米 运动蓝牙耳机青春版 白色',0,0,'10',99,149,4,42,'',1,100,986),(507,10000,'https://img11.360buyimg.com/n7/jfs/t1/58132/16/7930/28128/5d568d4eE9d12cc9d/af7076c4cc632881.jpg','','小米蓝牙耳机mini 白色 迷你机身|侧入耳贴合佩戴一键式多控操作',0,0,'10',89,139,4,42,'',1,100,603),(508,45020,'https://img11.360buyimg.com/n7/jfs/t1/102694/10/11091/129354/5e24105fE3189bae1/994db9354aa4cb81.jpg','','小米（MI） 红米AirDots真无线蓝牙耳机5.0运动跑步迷你隐形双耳入耳式苹果安卓手机耳机 RedmiAirDots真无线蓝牙耳机',0,0,'10',126,176,4,42,'',1,100,930),(509,67959,'https://img12.360buyimg.com/n7/jfs/t1/49298/6/7958/110877/5d5ab19fEbb79970f/ade741c800977a65.jpg','','小米蓝牙项圈耳机 黑色 动圈+动铁 双单元发声',0,0,'10',299,349,4,42,'',1,100,732),(510,77872,'https://img12.360buyimg.com/n7/jfs/t1/46448/13/8095/69697/5d5ab31cE3987832c/d0c982edf5882aaf.jpg','','小米头戴式耳机头戴式耳麦蓝牙耳机手机耳机适用于小米手机',0,0,'10',319,369,4,42,'',1,100,273),(511,67960,'https://img13.360buyimg.com/n7/jfs/t1/80369/23/7782/86716/5d5ab1c1E7bac0fab/4012640380dc92f6.jpg','','小米蓝牙项圈耳机 灰色 动圈+动铁 双单元发声',0,0,'10',299,349,4,42,'',1,100,748),(512,26008,'https://img14.360buyimg.com/n7/jfs/t1/25904/40/11953/62574/5c934bf5Ea4682bd6/05e7fe562a63127e.jpg','','小米（MI） 【小米授权旗舰店】圈铁耳机pro 入耳式有线线控降噪音乐耳麦华为三星苹果适用 圈铁耳机pro银色',0,0,'10',128,178,4,42,'',1,100,895),(513,53797,'https://img12.360buyimg.com/n7/jfs/t1/79567/25/7558/79295/5d5a62baEbd3c6657/1e1d5fae5685532f.jpg','','小米（MI） 活塞耳机清新版小米耳机入耳式线控手机耳机音乐耳机 活塞耳机清新版 黑色',0,0,'10',26.99,76.99,4,42,'',1,100,666),(514,45466,'https://img14.360buyimg.com/n7/jfs/t1/88837/14/2180/278714/5dcb9baaEcfbac22c/599a32a84f5182d3.jpg','','影驰 铁甲战将固态硬盘(120G/240G/480G/960G)SATA3台式机电脑笔记本SSD 120G铁甲战将 官方标配单硬盘',0,0,'10',169,219,5,51,'',1,100,515),(515,62124,'https://img12.360buyimg.com/n7/jfs/t25555/356/1975137885/120964/18425cab/5bc056a7N02e342e6.jpg','','三星（SAMSUNG）500GB SSD固态硬盘 SATA3.0接口 860 EVO（MZ-76E500B）',0,0,'10',639,689,5,51,'',1,100,544),(516,43111,'https://img13.360buyimg.com/n7/jfs/t1/88686/35/13539/283286/5e59dd0fEb6404004/eae87083e6211686.jpg','','金士顿(Kingston) 240GB SSD固态硬盘 SATA3.0接口 A400系列',0,0,'10',339,389,5,51,'',1,100,811),(517,10000,'https://img14.360buyimg.com/n7/jfs/t1/31846/12/1562/46506/5c517101E5128d752/3634bb4d6ae74471.jpg','','三星（SAMSUNG）250GB SSD固态硬盘 M.2接口(NVMe协议) 970 EVO Plus（MZ-V7S250B）',0,0,'10',549,599,5,51,'',1,100,491),(518,59786,'https://img10.360buyimg.com/n7/jfs/t1/100550/39/13172/38410/5e54d73fE50325e5d/eb9bfd8e82e55b68.jpg','','西部数据（WD）500GB SSD固态硬盘 SATA3.0接口 Blue系列-3D进阶高速读写版｜五年质保',0,0,'10',569,619,5,51,'',1,100,152),(519,10000,'https://img10.360buyimg.com/n7/jfs/t1/7764/31/13878/44562/5c51713aE236903c9/587b47065b4a7182.jpg','','三星（SAMSUNG）500GB SSD固态硬盘 M.2接口(NVMe协议) 970 EVO Plus（MZ-V7S500B）',0,0,'10',899,949,5,51,'',1,100,644),(520,42218,'https://img10.360buyimg.com/n7/jfs/t1/47107/9/665/117506/5ce4f7a3E7bf15b51/89b1230568a4b37f.jpg','','先锋(Pioneer)M.2 NVMe 2280 SSD固态硬盘 256GB（Pcie3x4 2280 SE20）',0,0,'10',309,359,5,51,'',1,100,197),(521,38071,'https://img13.360buyimg.com/n7/jfs/t1/102091/38/13319/283286/5e59dcfaEee9a68d5/e7bc485c147dd0a0.jpg','','金士顿(Kingston) 120GB SSD固态硬盘 SATA3.0接口 A400系列',0,0,'10',229,279,5,51,'',1,100,985),(522,62871,'https://img10.360buyimg.com/n7/jfs/t25027/279/1994410610/120964/18425cab/5bc05552N2aa18fd8.jpg','','三星（SAMSUNG）250GB SSD固态硬盘 SATA3.0接口 860 EVO（MZ-76E250B）',0,0,'10',419,469,5,51,'',1,100,179),(523,10000,'https://img10.360buyimg.com/n7/jfs/t1/20099/19/2786/187887/5c208d8eEb0cc9a84/bcae5b8c957cc0b9.jpg','','三星（SAMSUNG）1TB SSD固态硬盘 SATA3.0接口 860 QVO（MZ-76Q1T0B ）',0,0,'10',869,919,5,51,'',1,100,407),(524,43111,'https://img12.360buyimg.com/n7/jfs/t1/86536/9/13510/283286/5e59dd28Ee17108fe/a772a28e7cde10cc.jpg','','金士顿(Kingston) 480GB SSD固态硬盘 SATA3.0接口 A400系列',0,0,'10',529,579,5,51,'',1,100,691),(525,10000,'https://img10.360buyimg.com/n7/jfs/t1/101580/39/10008/100461/5e142fe6E4ba15e6b/0fe3c836af5a8d4d.jpg','','西部数据（Western Digital）500GB SSD固态硬盘 M.2接口(NVMe协议)WD_BLACK SN750游戏高性能版五年质保',0,0,'10',719,769,5,51,'',1,100,184),(526,59767,'https://img12.360buyimg.com/n7/jfs/t1/66086/34/12968/62559/5da3f1a1E6ab82034/102062787a7e0596.jpg','','芯晶彩 128G/256G/512G/1T SSD固态硬盘台式机笔记本通用 SATA3.0接口 SATA3.0接口|高速稳定 128GB',0,0,'10',175,225,5,51,'',1,100,564),(527,10000,'https://img11.360buyimg.com/n7/jfs/t1/87502/1/9935/86905/5e143258Ee4037eb3/d361722081a80e20.jpg','','西部数据（Western Digital）1TB SSD固态硬盘 M.2接口（NVMe协议）WD Blue SN550 五年质保 四通道PCIe',0,0,'10',929,979,5,51,'',1,100,224),(528,72345,'https://img13.360buyimg.com/n7/jfs/t27469/245/1079100394/139978/af9b4877/5bc056d3Ndbdf20c4.jpg','','三星（SAMSUNG）500GB SSD固态硬盘 M.2接口(NVMe协议) 970 EVO（MZ-V7E500BW）',0,0,'10',799,849,5,51,'',1,100,556),(529,13989,'https://img14.360buyimg.com/n7/jfs/t1/59200/15/15621/153944/5dca8adeE9ca5bf3c/8c9cc731b1617e26.jpg','','京品电脑闪迪（SanDisk）240GB SSD固态硬盘 SATA3.0接口 加强版-电脑升级优选｜西部数据公司荣誉出品',0,0,'10',319,369,5,51,'',1,100,755),(530,33108,'https://img14.360buyimg.com/n7/jfs/t1/84890/40/7260/366486/5df9f5d2E58dc8361/ccd28116f27b2ecc.jpg','','威刚（ADATA） 120GB SSD固态硬盘  SATA3 SP580系列',0,0,'10',189,239,5,51,'',1,100,632),(531,10000,'https://img14.360buyimg.com/n7/jfs/t1/75217/32/11554/227106/5d90101cEa4d9b660/ec79d9cf9629c2fc.jpg','','东芝（TOSHIBA）500G  SSD固态硬盘 M.2接口（NVME协议） RC500系列',0,0,'10',629,679,5,51,'',1,100,294),(532,35942,'https://img11.360buyimg.com/n7/jfs/t1/101546/35/13133/33676/5e54d29bEd8992321/d283f9b063b1faff.jpg','','西部数据（WD）240GB SSD固态硬盘 SATA3.0接口 Green系列-SSD日常家用普及版｜三年质保',0,0,'10',309,359,5,51,'',1,100,927),(533,40247,'https://img11.360buyimg.com/n7/jfs/t1/95343/3/13356/35707/5e54d557Ee96b6a0a/60e8430d6f876c43.jpg','','西部数据（WD）120GB SSD固态硬盘 SATA3.0接口 Green系列-SSD日常家用普及版｜三年质保',0,0,'10',209,259,5,51,'',1,100,758),(534,42226,'https://img10.360buyimg.com/n7/jfs/t1/92082/8/7398/366581/5df9f5e3Ef74ad56b/c459ad991a27df7f.jpg','','威刚（ADATA） 240GB SSD固态硬盘  SATA3 SP580系列',0,0,'10',299,349,5,51,'',1,100,755),(535,10000,'https://img13.360buyimg.com/n7/jfs/t1/110427/15/1047/147605/5df9f56bE195884a8/30c8d63175a78519.jpg','','威刚(ADATA)  512GB  SSD固态硬盘 M.2接口(NVMe协议) XPG威龙-S11 Lite 系列',0,0,'10',579,629,5,51,'',1,100,140),(536,10000,'https://img14.360buyimg.com/n7/jfs/t1/97886/37/9892/86905/5e142f80E6890fe87/657846d88713d96b.jpg','','西部数据（Western Digital）500GB SSD固态硬盘 M.2接口（NVMe协议）WD Blue SN550 五年质保 四通道PCIe',0,0,'10',649,699,5,51,'',1,100,650),(537,10000,'https://img13.360buyimg.com/n7/jfs/t1/89362/26/13049/36376/5e53a26bEc4cfb4d9/84a9135bc032303e.jpg','','西部数据（Western Digital）500GB SSD固态硬盘 M.2接口(NVMe协议)Blue SN500 NVMe SSD｜五年质保',0,0,'10',639,689,5,51,'',1,100,693),(538,28441,'https://img14.360buyimg.com/n7/jfs/t1/87220/28/14601/296469/5e670c06E7764ca19/b3068f4462056002.jpg','','金士顿（Kingston）A400笔记本台式机 SATA3固态硬盘ssd SSD240G非256',0,0,'10',335,385,5,51,'',1,100,209),(539,10000,'https://img12.360buyimg.com/n7/jfs/t1/109005/14/1044/145818/5df9f580E42962f95/f060c77924faf7d4.jpg','','威刚(ADATA)  256GB  SSD固态硬盘 M.2接口(NVMe协议) XPG威龙-S11 Lite 系列',0,0,'10',389,439,5,51,'',1,100,151),(540,54769,'https://img10.360buyimg.com/n7/jfs/t1/99711/1/4296/107061/5de62408E320fabec/e5cf3d19eaa551b9.jpg','','惠普（HP） 500G SSD固态硬盘 SATA3.0接口 S700系列',0,0,'10',499,549,5,51,'',1,100,577),(541,62457,'https://img12.360buyimg.com/n7/jfs/t1/105416/32/4291/142922/5de62330Ebc6248c5/33c2bea6e064cb41.jpg','','惠普（HP） 500G SSD固态硬盘 M.2接口(NVMe协议) EX900系列',0,0,'10',579,629,5,51,'',1,100,254),(542,10000,'https://img11.360buyimg.com/n7/jfs/t1/100092/39/9998/211618/5e158bc7E0c27f48d/a5ad8d93292d27a4.jpg','','紫光存储（UNIC MEMORY）480GB SSD固态硬盘 S100系列 SATA3.0接口 2.5英寸 3D TLC颗粒 三年质保',0,0,'10',489,539,5,51,'',1,100,894),(543,72339,'https://img12.360buyimg.com/n7/jfs/t25723/187/1974949667/139956/938879bf/5bc05718Na313705d.jpg','','三星（SAMSUNG）512GB SSD固态硬盘 M.2接口(NVMe协议) 970 PRO（MZ-V7P512BW）',0,0,'10',1369,1419,5,51,'',1,100,699),(544,68566,'https://img12.360buyimg.com/n7/jfs/t1/86424/13/10719/162268/5e21715cE4200df50/14fe6ce773857a82.jpg','','京品电脑希捷(Seagate)2TB 256MB 7200RPM 台式机机械硬盘 SATA接口 希捷酷鱼BarraCuda系列(ST2000DM008)希捷酷鱼2TB机械硬盘+希捷酷鱼500B固态硬盘解决方案希捷酷鱼2TB机械硬盘+希捷酷鱼512GB固态硬盘解决方案',0,0,'10',381,431,5,52,'',1,100,336),(545,67597,'https://img11.360buyimg.com/n7/jfs/t1/52770/29/4512/143930/5d22e408Ee203487c/1aa41297181d877f.jpg','','西部数据(WD)蓝盘 1TB SATA6Gb/s 7200转64MB 台式机械硬盘(WD10EZEX)WD 500GB NVMe Black SN750 SSD + WD 1TB稳定机械硬盘WD 500GB NVMe Blue SN500 SSD + WD 1TB稳定机械硬盘WD 500GB SATA3.0 Blue 3D进阶高速版SSD + WD 1TB稳定机械硬盘',0,0,'10',289,339,5,52,'',1,100,698),(546,33370,'https://img13.360buyimg.com/n7/jfs/t11026/62/2764206725/147064/9a061b48/5cd69a71N3c4926a2.jpg','','联想（Lenovo）笔记本 台式机 机械硬盘 500G 1T 2T 笔记本硬盘 500G',0,0,'10',259,309,5,52,'',1,100,765),(547,38437,'https://img12.360buyimg.com/n7/jfs/t1/65803/23/15262/296326/5dc98a2cE5bd9383b/e1f465338a9ae983.jpg','','希捷(Seagate)1TB 64MB 7200RPM 台式机机械硬盘 SATA接口 希捷酷鱼BarraCuda系列(ST1000DM010)希捷酷鱼1TB机械硬盘+希捷酷鱼500B固态硬盘解决方案希捷酷鱼1TB机械硬盘+希捷酷鱼512GB固态硬盘解决方案',0,0,'10',289,339,5,52,'',1,100,566),(548,10000,'https://img12.360buyimg.com/n7/jfs/t1/33961/27/15629/138573/5d22f786E1b2d05ab/7fae2d0d2d50ffc0.jpg','','西部数据(Western Digital)蓝盘 2TB SATA6Gb/s 256MB 台式机械硬盘(WD20EZAZ)WD 500GB NVMe Black SN750 SSD + WD 2TB稳定机械硬盘WD 250GB NVMe Blue SN500 SSD  + WD 2TB稳定机械硬盘',0,0,'10',359,409,5,52,'',1,100,269),(549,20312,'https://img11.360buyimg.com/n7/jfs/t1/61344/7/3998/144028/5d2302fbEae73126b/89475b52472c9faf.jpg','','西部数据(WD)蓝盘 4TB SATA6Gb/s 64MB 台式机械硬盘(WD40EZRZ)',0,0,'10',599,649,5,52,'',1,100,284),(550,42677,'https://img10.360buyimg.com/n7/jfs/t1/93847/23/13272/317004/5e572814E5d275a1f/0c50cf31840a2214.jpg','','希捷（SEAGATE）银河企业级机械硬盘2/4T/6T/8T/10T/12T14T16T NAS监控 6T ST6000NM021A',0,0,'10',1299,1349,5,52,'',1,100,498),(551,81780,'https://img13.360buyimg.com/n7/jfs/t6901/110/1687790066/328918/67d26edf/5984af1dNdb0d31c1.jpg','','东芝(TOSHIBA) 1TB 32MB 7200RPM 台式机机械硬盘 SATA接口 消费级系列 (DT01ACA100) 个人电脑与外部存储',0,0,'10',269,319,5,52,'',1,100,640),(552,42202,'https://img12.360buyimg.com/n7/jfs/t1/86301/18/10811/174459/5e2171d0E8006e018/016cf522285f2cef.jpg','','京品电脑希捷(Seagate)4TB 256MB 5400RPM 台式机机械硬盘 SATA接口 希捷酷鱼BarraCuda系列(ST4000DM004)希捷酷鱼4TB机械硬盘+希捷酷鱼500GB固态硬盘解决方案希捷酷鱼4TB机械硬盘+希捷酷鱼512GB固态硬盘解决方案',0,0,'10',579,629,5,52,'',1,100,274),(553,20730,'https://img11.360buyimg.com/n7/jfs/t1/78991/22/15090/138153/5dcbbdfbE4b67a506/2fc887eaa3679cf9.jpg','','东芝(TOSHIBA)1TB 64MB 7200RPM 台式机机械硬盘 SATA接口 P300系列(HDWD110)',0,0,'10',289,339,5,52,'',1,100,810),(554,37145,'https://img10.360buyimg.com/n7/jfs/t1/85993/6/10345/451105/5e16f13dEf9415087/ce71fc673efae60f.jpg','','奥睿科(ORICO)移动硬盘盒2.5英寸USB3.0 SATA串口笔记本硬盘外置壳固态机械ssd硬盘盒子 全透明2139U3',0,0,'10',28,78,5,52,'',1,100,355),(555,12948,'https://img12.360buyimg.com/n7/jfs/t1/110657/9/8215/130055/5e65a073Ef6e552dc/ad885345674f01b6.jpg','','绿联 Type-C移动硬盘盒2.5英寸USB3.0 SATA串口笔记本台式外置壳固态机械ssd硬盘 USB款',0,0,'10',32.9,82.9,5,52,'',1,100,942),(556,42446,'https://img14.360buyimg.com/n7/jfs/t1/90441/36/13164/332487/5e579178E8007bf7c/1a4c451103964d04.jpg','','西部数据(WD)红盘NAS专用盘1/2/3/4/6/8/10T 网络存储硬盘企业级磁盘阵列机械硬盘 4TB WD40EFRX 红盘',0,0,'10',899,949,5,52,'',1,100,671),(557,74669,'https://img11.360buyimg.com/n7/jfs/t5872/248/9263849597/319970/52789af7/5984b080N740870d3.jpg','','东芝(TOSHIBA) 3TB 64MB 7200RPM 台式机机械硬盘 SATA接口 消费级系列 (DT01ACA300) 个人电脑与外部存储',0,0,'10',509,559,5,52,'',1,100,133),(558,10000,'https://img10.360buyimg.com/n7/jfs/t1/31435/17/4979/116349/5c8206fbE2452f3a2/2e3220de9de6a315.jpg','','京品电脑希捷(Seagate)2TB 256MB 5400RPM 台式机机械硬盘 SATA接口 希捷酷鱼BarraCuda系列(ST2000DM005)希捷酷鱼2TB机械硬盘+希捷酷鱼500GB固态硬盘解决方案',0,0,'10',359,409,5,52,'',1,100,155),(559,20667,'https://img10.360buyimg.com/n7/jfs/t1/71945/34/15219/140335/5dcbbe40Ee7ccc772/8c619f115bdce376.jpg','','东芝(TOSHIBA)3TB 64MB 7200RPM 台式机机械硬盘 SATA接口 P300系列(HDWD130)',0,0,'10',529,579,5,52,'',1,100,484),(560,20312,'https://img12.360buyimg.com/n7/jfs/t1/69295/38/3947/141165/5d22ffceE019ffac8/bb345511b62cd470.jpg','','西部数据(WD)蓝盘 3TB SATA6Gb/s 64MB 台式机械硬盘(WD30EZRZ)',0,0,'10',499,549,5,52,'',1,100,213),(561,17521,'https://img14.360buyimg.com/n7/jfs/t1/98938/22/14325/102625/5e6598bbE7c12a99e/97a7542483524f8e.jpg','','绿联 Type-C移动硬盘盒3.5英寸USB3.0 SATA串口笔记本台式机外置固态机械ssd硬盘 USB转方口3.0',0,0,'10',89,139,5,52,'',1,100,471),(562,57463,'https://img13.360buyimg.com/n7/jfs/t1/45904/13/11615/158471/5d876813Ed6062163/d8a1d83f7acc7970.jpg','','【二手95新】希捷ST机械硬盘3.5英寸台式机组装机7200转高速二手硬盘 500G 带W10',0,0,'10',132,182,5,52,'',1,100,381),(563,14938,'https://img10.360buyimg.com/n7/jfs/t1/89223/25/12741/79117/5e4a6563Ed79549d2/8773bab2e61331ae.jpg','','西部数据（WD） 蓝盘 1TB 2.5 SATA 3.0笔记本电脑机械硬盘 WD10SPZX 7mm',0,0,'10',309,359,5,52,'',1,100,542),(564,14848,'https://img12.360buyimg.com/n7/jfs/t1/99179/23/6850/112301/5df6e437Ee3c598f8/581da1ab63304050.jpg','','西部数据（WD）西数蓝盘 1TB  7200转64MB  台式机械电脑硬盘 SATA3 6Gb',0,0,'10',295,345,5,52,'',1,100,314),(565,72664,'https://img13.360buyimg.com/n7/jfs/t1/23121/9/9774/360498/5c820542E96723827/81e00ea1505b5fd6.jpg','','希捷(Seagate)3TB 256MB 5400RPM 台式机机械硬盘 SATA接口 希捷酷鱼BarraCuda系列(ST3000DM007)',0,0,'10',475,525,5,52,'',1,100,530),(566,10000,'https://img12.360buyimg.com/n7/jfs/t1/107060/3/2281/147435/5dcd47f0Eac518447/daeb7e0af272d58b.jpg','','绿联（UGREEN）移动硬盘盒2.5英寸USB3.0 SATA串口笔记本电脑外置硬盘盒固态机械ssd硬盘壳 黑色 60353',0,0,'10',49,99,5,52,'',1,100,458),(567,14791,'https://img14.360buyimg.com/n7/jfs/t1/15481/31/14732/322540/5caab4e8Eea6aa7c9/415266673e1f0b6e.png','','希捷（SEAGATE） 酷鱼 1T 硬盘 台式电脑 机械硬盘1TB ST1000DM010',0,0,'10',289,339,5,52,'',1,100,344),(568,32509,'https://img11.360buyimg.com/n7/jfs/t1/109645/23/3720/137240/5e142a21E1b1e87a2/6d8222ab3b63b416.jpg','','西部数据（WD）红盘 机械硬盘 nas硬盘 网络存储服务/监控服务器 磁盘阵列硬盘 3.5英寸 10t (WD101EFAX)',0,0,'10',2449,2499,5,52,'',1,100,899),(569,38762,'https://img14.360buyimg.com/n7/jfs/t1/48776/24/49/106105/5cd1ebcdE94344334/dd4c3e34ea8b2337.jpg','','拍拍【准新品】希捷(Seagate)500G 16MB 7200RPM 台式机机械硬盘 SATA接口 京东盒装',0,0,'10',168,218,5,52,'',1,100,788),(570,28239,'https://img10.360buyimg.com/n7/jfs/t1/50538/29/11733/160174/5d8767ebE3d42b0ba/9d13fb5200a8c917.jpg','','拍拍【二手95新】西部数据WD机械硬盘3.5英寸台式机组装机7200转高速二手硬盘 320GB',0,0,'10',68,118,5,52,'',1,100,791),(571,10641,'https://img11.360buyimg.com/n7/jfs/t3187/140/1443904177/122626/fdcc7bb5/57cd1573N32fa0ba2.jpg','','西部数据（Western Digital） 1TB7200转64M 台式机机械硬盘',0,0,'10',299,349,5,52,'',1,100,279),(572,28239,'https://img11.360buyimg.com/n7/jfs/t1/50538/29/11733/160174/5d8767ebE3d42b0ba/9d13fb5200a8c917.jpg','','拍拍【二手95新】西部数据WD机械硬盘3.5英寸台式机组装机7200转高速二手硬盘 500GB',0,0,'10',117,167,5,52,'',1,100,896),(573,47169,'https://img10.360buyimg.com/n7/jfs/t1/55674/18/61/113238/5cd20954E4fc46b3c/dc8c17cbef16c4a9.jpg','','拍拍【准新品】西部数据（WD） 西数蓝盘 320G 7200转16M台式机电脑机械硬盘正品 京东盒装',0,0,'10',125,175,5,52,'',1,100,922),(574,64752,'https://img10.360buyimg.com/n7/jfs/t1/107189/32/8331/181758/5e66f7d3Ec877dbe6/74f80423883c5578.jpg','','【12期免息，直降500】华为Mate30 Pro手机(4G/5G可选) 翡冷翠 全网通8GB+128GB(5G版)',0,0,'10',5899,5949,3,31,'',1,100,413),(575,61470,'https://img13.360buyimg.com/n7/jfs/t1/66793/7/17112/123849/5de4b6bfE857aee1f/82e175a53309b93c.jpg','','华为mate30Rs 5G版保时捷限量版手机 玄黑 全网通 12+512G',0,0,'10',12999,13049,3,31,'',1,100,792),(576,34551,'https://img10.360buyimg.com/n7/jfs/t1/85408/35/14523/125882/5e66fd76Ea855bbe2/90286459d0f3eaab.jpg','','华为畅享9S 手机 幻夜黑 全网通(4+128GB)',0,0,'10',978,1028,3,31,'',1,100,629),(577,50556,'https://img13.360buyimg.com/n7/jfs/t1/92925/24/13727/65010/5e5dbeddEf5cd6343/4085205cf6fb0f1b.jpg','','华为 畅享9 手机 全面屏 幻夜黑 全网通(4G+128GB)',0,0,'10',1029,1079,3,31,'',1,100,576),(578,62994,'https://img11.360buyimg.com/n7/jfs/t1/89093/21/4820/77490/5de8c758E90a6f7e1/f78aec43aa9c7c02.jpg','','【白条12期免息】华为nova6手机 4G/5G版 普罗旺斯 8GB+256GB【5G版】【到手价3899元】',0,0,'10',3909,3959,3,31,'',1,100,554),(579,34669,'https://img10.360buyimg.com/n7/jfs/t1/106061/30/13176/194573/5e577a5bEf2ad866c/404702d393f7251b.jpg','','华为Mate20 Pro 手机 极光色 全网通8G+128G(屏幕指纹)',0,0,'10',3388,3438,3,31,'',1,100,540),(580,50117,'https://img14.360buyimg.com/n7/jfs/t1/95949/26/13862/590955/5e5dccd4E9632ca38/eebedefa4e26953f.png','','【直降+春节正常发】华为nova5i 手机 幻夜黑 8G+128G全网通【白条免息|1689到手】',0,0,'10',1689,1739,3,31,'',1,100,305),(581,55172,'https://img11.360buyimg.com/n7/jfs/t1/80507/18/7017/128169/5d52715aEeda97c66/9d1c5f7dea9d1203.jpg','','华为 HUAWEI 畅享9e手机 全网通移动联通电信4G 双卡双待智能老人手机 学生智能手机 黑色 全网通（3+64）',0,0,'10',759,809,3,31,'',1,100,190),(582,34637,'https://img12.360buyimg.com/n7/jfs/t1/87502/22/13463/679971/5e58f383E62746683/d61bcbcca66bb52d.png','','【限时直降2119起！】华为（HUAWEI） mate20手机 亮黑色 6G+64G 全网通',0,0,'10',2149,2199,3,31,'',1,100,531),(583,59476,'https://img12.360buyimg.com/n7/jfs/t1/97894/16/13720/182897/5e5cc33cE453c8fec/bbcda1daa04aa340.jpg','','华为畅享10 手机 极点全面屏4800万超清夜景4000mAh大电池 幻夜黑 4G+64G全网通',0,0,'10',1370,1420,3,31,'',1,100,881),(584,62322,'https://img13.360buyimg.com/n7/jfs/t1/81272/37/15894/65413/5dd750a1Ed022acce/7058e53f7f4ca8fd.jpg','','华为畅享9plus手机【现货速发赠多重好礼】 幻夜黑 全网通6G+128G',0,0,'10',1328,1378,3,31,'',1,100,864),(585,40435,'https://img13.360buyimg.com/n7/jfs/t1/102947/39/13710/637181/5e5cdf8dEc8f1e9ff/3d7f369f9a108adf.png','','荣耀V20 华为荣耀手机【30天价保】 幻夜黑 全网通8G+128G',0,0,'10',2038,2088,3,31,'',1,100,898),(586,50009,'https://img14.360buyimg.com/n7/jfs/t1/95605/23/14407/183613/5e666324E26b2e599/2fda7467e2cf5518.jpg','','华为nova5i手机 6G+128G苏音蓝 全网通',0,0,'10',1599,1649,3,31,'',1,100,451),(587,61838,'https://img12.360buyimg.com/n7/jfs/t1/96342/38/8823/133203/5e098cb0E177c9f34/200875eb4522eef3.jpg','','华为Mate30 手机(5G/4G版可选) 亮黑 8G+256GB全网通（5G）',0,0,'10',4999,5049,3,31,'',1,100,701),(588,44126,'https://img12.360buyimg.com/n7/jfs/t1/12051/4/12745/385200/5c9a502fE70ca5bc1/25058e6188a73179.jpg','','华为P30【12期免息】全网通手机4G智能手机 天空之境 8G+128G',0,0,'10',3688,3738,3,31,'',1,100,745),(589,52527,'https://img11.360buyimg.com/n7/jfs/t1/84866/5/12158/117917/5e4407f9E6b7287c4/21242f16312ffc02.jpg','','华为nova5i 全网通智能手机 幻夜黑(8GB+128GB)',0,0,'10',1799,1849,3,31,'',1,100,782),(590,56111,'https://img14.360buyimg.com/n7/jfs/t1/55936/18/11603/82694/5d8a0189E72e6c771/67dbf3997fbb7fd1.jpg','','荣耀20S 华为手机 蝶羽黑 全网通（8G+128G）',0,0,'10',1739,1789,3,31,'',1,100,782),(591,53338,'https://img14.360buyimg.com/n7/jfs/t1/71431/30/5526/140894/5d3ab6acEba5a1384/649f3e4d62e7829f.jpg','','华为 nova5ipro 手机 极光色 全网通(8G+128G)',0,0,'10',1899,1949,3,31,'',1,100,717),(592,65540,'https://img10.360buyimg.com/n7/jfs/t1/96794/10/14470/207449/5e66684fE4d5be419/56ae785401f0bd98.jpg','','华为畅享10Plus 手机 天空之境 6G+128G 移动全网通',0,0,'10',1449,1499,3,31,'',1,100,950),(593,59455,'https://img11.360buyimg.com/n7/jfs/t1/83086/36/13154/86859/5da97649E5d3b6f93/83f3e1bb09352bb3.jpg','','华为畅享10 手机 幻夜黑 全网通(4G+128G)',0,0,'10',1299,1349,3,31,'',1,100,464),(594,55711,'https://img11.360buyimg.com/n7/jfs/t1/85778/12/13846/102055/5e5dd815Ec4f25132/d6b3206d9417992c.jpg','','荣耀20S李现同款 华为手机 蝶羽蓝 全网通6G+128G',0,0,'10',1546,1596,3,31,'',1,100,193),(595,59910,'https://img11.360buyimg.com/n7/jfs/t1/90981/1/14084/687644/5e609de4E905dbfa6/93fb191d0c955249.png','','华为Mate30Pro 5G版手机 翡冷翠 全网通8G+256G',0,0,'10',6399,6449,3,31,'',1,100,487),(596,61028,'https://img14.360buyimg.com/n7/jfs/t1/102698/16/14002/252465/5e6066b5E4fb70bcf/3b18da8f368522df.jpg','','【12期免息/现货速发】华为Mate30 全网通 (5G/4G版可选) 手机 亮黑色 8G RAM+256G ROM(5G版）',0,0,'10',4999,5049,3,31,'',1,100,130),(597,65376,'https://img13.360buyimg.com/n7/jfs/t1/89015/6/14394/89900/5e65caf6Ef138127e/73cf1f926628b265.jpg','','华为（HUAWEI）nova6SE 麒麟810芯片4800万AI四摄 双卡双待手机 幻夜黑 全网通 8GB+128GB',0,0,'10',2199,2249,3,31,'',1,100,396),(598,10001,'https://img13.360buyimg.com/n7/jfs/t1/102482/23/3450/416986/5de0c372E24dc4d8a/d1c06eb6e7b2466a.jpg','','荣耀V30 PRO 李现同款 5G双模 麒麟990 5GSOC芯片 相机矩阵 双超级快充 游戏手机8GB+128GB冰岛幻境 双卡双待',0,0,'10',3899,3949,3,31,'',1,100,566),(599,44105,'https://img11.360buyimg.com/n7/jfs/t1/89584/38/14424/139384/5e671f03Eb31bd76f/6d93ac05c86cf155.jpg','','【现货速发】华为nova4e 手机 【5重保障】 雀翎蓝 6G+128G 全网通',0,0,'10',1368,1418,3,31,'',1,100,436),(600,62648,'https://img11.360buyimg.com/n7/jfs/t1/87803/38/12785/150751/5e4e4e37E0a328d4a/477e9f58e092791e.jpg','','【12/3期免息送豪礼】荣耀V30 双模5G手机全网通 冰岛幻境 6G+128G 3期免息',0,0,'10',2999,3049,3,31,'',1,100,425),(601,59896,'https://img12.360buyimg.com/n7/jfs/t1/99939/33/13700/155730/5e5ce9c6E90f5de5f/00d488b52f80971c.jpg','','华为Mate30 5G版 手机(5G/4G版可选)【现货速发/华为直供货源/20天价保】 亮黑色 5G版(8G+256G)【SA/NSA 双模】',0,0,'10',4999,5049,3,31,'',1,100,614),(602,61720,'https://img11.360buyimg.com/n7/jfs/t1/103775/34/2261/147728/5dccbf5bE716e30a1/f72fc7cb4c8e3510.jpg','','【白条12期免息】华为Mate30 5G版 手机 亮黑色 全网通(8GB 256GB)【到手价4999元】',0,0,'10',5009,5059,3,31,'',1,100,647),(603,63999,'https://img14.360buyimg.com/n7/jfs/t1/97326/21/6852/127437/5df6eb88Ee39be4c3/0df4c8ed297321c6.jpg','','华为荣耀V30手机 双模5G手机 麒麟990  游戏手机 冰岛幻境 全网通 6GB+128GB',0,0,'10',2999.8,3049.8,3,31,'',1,100,784);
/*!40000 ALTER TABLE `axf_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `axf_mainshow`
--

DROP TABLE IF EXISTS `axf_mainshow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `axf_mainshow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `trackid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `brandname` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `img1` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `childcid1` int(11) NOT NULL,
  `productid1` int(11) NOT NULL,
  `longname1` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `price1` double NOT NULL,
  `marketprice1` double NOT NULL,
  `img2` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `childcid2` int(11) NOT NULL,
  `productid2` int(11) NOT NULL,
  `longname2` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `price2` double NOT NULL,
  `marketprice2` double NOT NULL,
  `img3` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `childcid3` int(11) NOT NULL,
  `productid3` int(11) NOT NULL,
  `longname3` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `price3` double NOT NULL,
  `marketprice3` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `axf_mainshow`
--

LOCK TABLES `axf_mainshow` WRITE;
/*!40000 ALTER TABLE `axf_mainshow` DISABLE KEYS */;
INSERT INTO `axf_mainshow` VALUES (1,'https://img14.360buyimg.com/n0/jfs/t29152/237/807492143/56836/c055532/5bfe5b00Ne0f89e7c.jpg','游戏机',0,0,'索尼游戏机','https://img14.360buyimg.com/n0/jfs/t29152/237/807492143/56836/c055532/5bfe5b00Ne0f89e7c.jpg',0,0,'经典款',90,89,'https://img14.360buyimg.com/n0/jfs/t29152/237/807492143/56836/c055532/5bfe5b00Ne0f89e7c.jpg',22,22,'爆款',44,55,'https://img14.360buyimg.com/n0/jfs/t29152/237/807492143/56836/c055532/5bfe5b00Ne0f89e7c.jpg',6,56,'怀旧款',55,66),(2,'https://img14.360buyimg.com/n0/jfs/t1/91968/20/14080/121076/5e6068f5Ea24c311b/a5249205c06d1e41.jpg','电脑',0,1,'电脑','https://img14.360buyimg.com/n0/jfs/t1/91968/20/14080/121076/5e6068f5Ea24c311b/a5249205c06d1e41.jpg',0,0,'微软',8388,8388,'https://img14.360buyimg.com/n0/jfs/t1/103072/36/13556/782915/5e5b9348E75fc7bdc/970c06b8734bdf70.jpg',0,0,'华为MatePad Pro 10.8',3299,3299,'https://img14.360buyimg.com/n0/jfs/t1/89276/8/7469/173691/5dfc203eEcac57abd/6be4b7b86b81c481.jpg',0,0,'联想',1099,1099);
/*!40000 ALTER TABLE `axf_mainshow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `axf_mustbuy`
--

DROP TABLE IF EXISTS `axf_mustbuy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `axf_mustbuy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `trackid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `axf_mustbuy`
--

LOCK TABLES `axf_mustbuy` WRITE;
/*!40000 ALTER TABLE `axf_mustbuy` DISABLE KEYS */;
INSERT INTO `axf_mustbuy` VALUES (1,'https://img14.360buyimg.com/n1/s546x546_jfs/t1/45838/13/13028/75317/5da01860E1135e77f/2e296859784d659d.jpg','小新',0),(2,'https://img14.360buyimg.com/n0/jfs/t1/106119/25/13739/168435/5e6372a4Eae122f80/e2d8c31c9b5a6e8a.jpg','iphone',0),(3,'https://img14.360buyimg.com/n0/jfs/t1/103536/4/9622/186635/5e106245Ef4ea13f3/318c46e25d8f82e3.jpg','手机壳',0),(4,'https://img14.360buyimg.com/n0/jfs/t1/94974/27/12883/259057/5e4f7562E5c122009/145a89778ff4d909.jpg','平板',0);
/*!40000 ALTER TABLE `axf_mustbuy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `axf_nav`
--

DROP TABLE IF EXISTS `axf_nav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `axf_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `trackid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `axf_nav`
--

LOCK TABLES `axf_nav` WRITE;
/*!40000 ALTER TABLE `axf_nav` DISABLE KEYS */;
INSERT INTO `axf_nav` VALUES (1,'https://img14.360buyimg.com/n0/jfs/t26770/225/2396053018/125911/9353a427/5bfe5acaNce1c6d6a.jpg','游戏机',0),(2,'https://img14.360buyimg.com/n0/jfs/t1/109406/5/8292/555618/5e66e65eE538e5191/e2f1248a0e38abae.png','小霸王',0),(3,'https://img14.360buyimg.com/n0/jfs/t1/47004/13/14213/123393/5db0562aEb5533025/c159fbd5837b4ff4.jpg','超级玛丽',0),(4,'https://img14.360buyimg.com/n0/jfs/t29152/237/807492143/56836/c055532/5bfe5b00Ne0f89e7c.jpg','索尼',0);
/*!40000 ALTER TABLE `axf_nav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `axf_order`
--

DROP TABLE IF EXISTS `axf_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `axf_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `o_price` double NOT NULL,
  `o_time` datetime(6) NOT NULL,
  `o_status` int(11) NOT NULL,
  `o_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `axf_order_o_user_id_a23247bb_fk_axf_user_id` (`o_user_id`),
  CONSTRAINT `axf_order_o_user_id_a23247bb_fk_axf_user_id` FOREIGN KEY (`o_user_id`) REFERENCES `axf_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `axf_order`
--

LOCK TABLES `axf_order` WRITE;
/*!40000 ALTER TABLE `axf_order` DISABLE KEYS */;
INSERT INTO `axf_order` VALUES (12,11276,'2020-03-10 23:30:20.453427',2,13),(13,12556,'2020-03-10 23:54:56.662127',2,13),(14,6278,'2020-03-11 11:30:15.140900',2,13),(15,7497,'2020-03-11 14:44:48.439391',2,13),(16,22998,'2020-03-11 14:49:46.934283',2,13),(17,4998,'2020-03-11 15:05:39.512751',2,13),(18,11499,'2020-03-11 15:06:25.869117',2,13),(19,22998,'2020-03-11 15:07:07.295788',2,13),(20,6278,'2020-03-11 15:32:15.474514',2,13),(21,6278,'2020-03-11 15:37:21.457426',2,13),(22,6278,'2020-03-11 15:54:09.493212',2,13),(23,11499,'2020-03-11 15:56:53.810000',2,13),(24,2499,'2020-03-11 15:58:53.570495',2,13),(25,0,'2020-03-11 16:01:31.470510',2,13),(26,9996,'2020-03-11 16:03:54.330616',2,13),(27,4998,'2020-03-11 16:05:16.617798',2,13),(28,11798,'2020-03-11 16:10:16.732408',2,13),(29,2499,'2020-03-11 16:21:08.809637',2,13),(30,2492,'2020-03-11 16:24:41.440297',2,13),(31,6278,'2020-03-11 16:27:47.128625',2,13),(32,12556,'2020-03-12 12:10:06.971748',2,13),(33,6278,'2020-03-11 18:16:47.223044',2,13),(34,197481,'2020-03-12 15:20:44.838625',2,13),(35,8777,'2020-03-12 15:33:55.459705',2,13);
/*!40000 ALTER TABLE `axf_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `axf_ordergoods`
--

DROP TABLE IF EXISTS `axf_ordergoods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `axf_ordergoods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `o_goods_num` int(11) NOT NULL,
  `o_goods_id` int(11) NOT NULL,
  `o_order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `axf_ordergoods_o_goods_id_f5c54400_fk_axf_goods_id` (`o_goods_id`),
  KEY `axf_ordergoods_o_order_id_35bb0edb_fk_axf_order_id` (`o_order_id`),
  CONSTRAINT `axf_ordergoods_o_goods_id_f5c54400_fk_axf_goods_id` FOREIGN KEY (`o_goods_id`) REFERENCES `axf_goods` (`id`),
  CONSTRAINT `axf_ordergoods_o_order_id_35bb0edb_fk_axf_order_id` FOREIGN KEY (`o_order_id`) REFERENCES `axf_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `axf_ordergoods`
--

LOCK TABLES `axf_ordergoods` WRITE;
/*!40000 ALTER TABLE `axf_ordergoods` DISABLE KEYS */;
INSERT INTO `axf_ordergoods` VALUES (14,1,326,12),(15,1,327,12),(16,1,328,12),(17,2,327,13),(18,1,327,14),(19,3,328,15),(20,2,329,16),(21,2,326,17),(22,1,329,18),(23,2,329,19),(24,1,327,20),(25,1,327,21),(26,1,327,22),(27,1,329,23),(28,1,328,24),(29,4,328,26),(30,2,328,27),(31,2,574,28),(32,1,328,29),(33,2,456,30),(34,1,327,31),(35,2,327,32),(36,1,327,33),(37,17,329,34),(38,2,455,34),(39,1,327,35),(40,1,328,35);
/*!40000 ALTER TABLE `axf_ordergoods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `axf_shop`
--

DROP TABLE IF EXISTS `axf_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `axf_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `trackid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `axf_shop`
--

LOCK TABLES `axf_shop` WRITE;
/*!40000 ALTER TABLE `axf_shop` DISABLE KEYS */;
INSERT INTO `axf_shop` VALUES (1,'https://img14.360buyimg.com/n0/jfs/t1/79831/15/9128/176682/5d6e7844E8179da21/75e94bc5a76e0ebc.jpg','小米手环',1),(2,'https://img14.360buyimg.com/n0/jfs/t1/88361/39/14656/297111/5e661ff0E433739c8/44d81fe0dff59384.jpg','小米电脑',1),(3,'https://img14.360buyimg.com/n0/jfs/t1/3405/18/3537/69901/5b997c0aE5dc8ed9f/a2c208410ae84d1f.jpg','英伦',1),(4,'https://img14.360buyimg.com/n0/jfs/t1/99964/26/14575/87039/5e66f961E3fd5426b/0afb6a8b624dfdc4.jpg','扫地机',1),(5,'https://img14.360buyimg.com/n0/jfs/t1/40387/1/4301/272749/5cff50aaEc7df1dd2/3aa56e64488ba96b.jpg','音响',1),(6,'https://img14.360buyimg.com/n0/jfs/t1/92346/8/14599/420894/5e69cee8Eaa956559/cf4bd91be8d2e4e3.jpg','椅子',1),(7,'https://img14.360buyimg.com/n0/jfs/t1/81236/34/14685/26256/5dc01ed7Ed4f924db/62cbc119a1fea2d9.jpg','智能小灯',1);
/*!40000 ALTER TABLE `axf_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `axf_user`
--

DROP TABLE IF EXISTS `axf_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `axf_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_username` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `u_password` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `u_email` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `u_icon` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_username` (`u_username`),
  UNIQUE KEY `u_email` (`u_email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `axf_user`
--

LOCK TABLES `axf_user` WRITE;
/*!40000 ALTER TABLE `axf_user` DISABLE KEYS */;
INSERT INTO `axf_user` VALUES (13,'fanding','pbkdf2_sha256$36000$OyqhzGPs9u2E$yWWNjFqoH2STnwPKj/f9m+s0RYlZYrMo0bPJE2qUYJ8=','fand1024@163.com','icons/2020/03/08/8_sRTIysP.png',1,0);
/*!40000 ALTER TABLE `axf_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `axf_wheel`
--

DROP TABLE IF EXISTS `axf_wheel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `axf_wheel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `trackid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `axf_wheel`
--

LOCK TABLES `axf_wheel` WRITE;
/*!40000 ALTER TABLE `axf_wheel` DISABLE KEYS */;
INSERT INTO `axf_wheel` VALUES (1,'http://pics.sc.chinaz.com/files/pic/pic9/202002/zzpic23028.jpg','苹果',2),(2,'https://img.alicdn.com/imgextra/i1/4090325279/O1CN01JOAWP91orpPpV96rb_!!4090325279.jpg_430x430q90.jpg','联想',2);
/*!40000 ALTER TABLE `axf_wheel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-03-12 15:23:24.508269','1','MainShop object',1,'[{\"added\": {}}]',10,1),(2,'2020-03-12 15:23:57.771416','2','MainShop object',1,'[{\"added\": {}}]',10,1),(3,'2020-03-12 15:24:48.243195','3','MainShop object',1,'[{\"added\": {}}]',10,1),(4,'2020-03-12 15:25:22.142670','4','MainShop object',1,'[{\"added\": {}}]',10,1),(5,'2020-03-12 15:25:55.687976','5','MainShop object',1,'[{\"added\": {}}]',10,1),(6,'2020-03-12 15:26:56.873077','6','MainShop object',1,'[{\"added\": {}}]',10,1),(7,'2020-03-12 15:27:23.609319','7','MainShop object',1,'[{\"added\": {}}]',10,1),(8,'2020-03-12 15:29:11.792496','3','MainShop object',2,'[{\"changed\": {\"fields\": [\"img\"]}}]',10,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(18,'App','address'),(14,'App','axfuser'),(15,'App','cart'),(20,'App','count'),(12,'App','foodtype'),(13,'App','goods'),(9,'App','mainmustbuy'),(8,'App','mainnav'),(10,'App','mainshop'),(11,'App','mainshow'),(7,'App','mainwheel'),(16,'App','order'),(19,'App','orderaddress'),(17,'App','ordergoods'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'App','0001_initial','2020-03-08 22:33:21.289939'),(2,'App','0002_mainnav','2020-03-08 22:33:21.303521'),(3,'App','0003_mainmustbuy','2020-03-08 22:33:21.316120'),(4,'App','0004_mainshop','2020-03-08 22:33:21.328838'),(5,'App','0005_mainshow','2020-03-08 22:33:21.365328'),(6,'App','0006_foodtype','2020-03-08 22:33:21.379085'),(7,'App','0007_auto_20180927_1037','2020-03-08 22:33:21.388633'),(8,'App','0008_goods','2020-03-08 22:33:21.415346'),(9,'App','0009_axfuser','2020-03-08 22:33:21.432157'),(10,'App','0010_cart','2020-03-08 22:33:21.484184'),(11,'App','0011_order_ordergoods','2020-03-08 22:33:21.557913'),(12,'App','0012_address_orderaddress','2020-03-08 22:33:21.622964'),(13,'App','0013_auto_20181004_1752','2020-03-08 22:33:21.656960'),(14,'App','0014_auto_20181006_1150','2020-03-08 22:33:21.686655'),(15,'App','0015_auto_20181006_1503','2020-03-08 22:33:21.787586'),(16,'contenttypes','0001_initial','2020-03-08 22:33:21.807853'),(17,'auth','0001_initial','2020-03-08 22:33:22.005842'),(18,'admin','0001_initial','2020-03-08 22:33:22.058835'),(19,'admin','0002_logentry_remove_auto_add','2020-03-08 22:33:22.077209'),(20,'contenttypes','0002_remove_content_type_name','2020-03-08 22:33:22.130276'),(21,'auth','0002_alter_permission_name_max_length','2020-03-08 22:33:22.152372'),(22,'auth','0003_alter_user_email_max_length','2020-03-08 22:33:22.172737'),(23,'auth','0004_alter_user_username_opts','2020-03-08 22:33:22.182939'),(24,'auth','0005_alter_user_last_login_null','2020-03-08 22:33:22.215458'),(25,'auth','0006_require_contenttypes_0002','2020-03-08 22:33:22.220126'),(26,'auth','0007_alter_validators_add_error_messages','2020-03-08 22:33:22.229517'),(27,'auth','0008_alter_user_username_max_length','2020-03-08 22:33:22.270342'),(28,'sessions','0001_initial','2020-03-08 22:33:22.286642'),(29,'App','0016_auto_20200311_2212','2020-03-11 22:13:00.524297');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('33n0c94g8ak9rda6yy9h9id9josvcily','OGEyMmI5MzBkNmU5MmI5NThjODIwNzBiM2MzMTdmNzk2MmQyNzU2ZDp7InVzZXJfaWQiOjEzfQ==','2020-03-23 18:46:57.489724'),('9wkpp3mau0r21x2mabzt33py5cdcqe08','NzE3YmEwZDFiM2JmMzdjODM3NDM3MWU5OWE0ZGFjNTRkNmJhYTdkYzp7InVzZXJfaWQiOjEzLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMmQ1MzVmMzY5MDg2NmY3MzdhNTNjYWE4NzczM2MwNDMxOWEwNDNmYSIsInNpbXBsZXVpXzIwMjAwMzExIjp0cnVlLCJzaW1wbGV1aV8yMDIwMDMxMiI6dHJ1ZX0=','2020-03-26 00:01:13.058748'),('9zbtthj92tzcjkh5ry308lrxyv5wyq8x','OGEyMmI5MzBkNmU5MmI5NThjODIwNzBiM2MzMTdmNzk2MmQyNzU2ZDp7InVzZXJfaWQiOjEzfQ==','2020-03-23 18:36:00.950159'),('czif57b5bjr70hg887mgkadgte92lb2j','ZGE2NTI5OGIwOGRlOTllODZjZWNhNmQ3YzZiNTA0MDQ3M2E3ZDQ1YTp7InVzZXJfaWQiOjEzLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMmQ1MzVmMzY5MDg2NmY3MzdhNTNjYWE4NzczM2MwNDMxOWEwNDNmYSJ9','2020-03-22 23:48:11.753712'),('d5658subr3kxpgjkrbxpn5wq5u7ca3ny','ZGE2NTI5OGIwOGRlOTllODZjZWNhNmQ3YzZiNTA0MDQ3M2E3ZDQ1YTp7InVzZXJfaWQiOjEzLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMmQ1MzVmMzY5MDg2NmY3MzdhNTNjYWE4NzczM2MwNDMxOWEwNDNmYSJ9','2020-03-25 11:14:13.130317'),('rtv9utm57ju7dr8s4pwk07ezpilh2pht','OGEyMmI5MzBkNmU5MmI5NThjODIwNzBiM2MzMTdmNzk2MmQyNzU2ZDp7InVzZXJfaWQiOjEzfQ==','2020-03-24 12:22:59.138175');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-12 17:04:12
