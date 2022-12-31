CREATE DATABASE  IF NOT EXISTS `db_108403501` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_108403501`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 192.168.56.103    Database: db_108403501
-- ------------------------------------------------------
-- Server version	5.7.34-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_Coupon`
--

DROP TABLE IF EXISTS `tbl_Coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_Coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_name` varchar(64) NOT NULL,
  `promotion_code` varchar(64) NOT NULL,
  `s_date` date NOT NULL,
  `d_date` date NOT NULL,
  PRIMARY KEY (`coupon_id`),
  UNIQUE KEY `coupon_id_UNIQUE` (`coupon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_Coupon`
--

LOCK TABLES `tbl_Coupon` WRITE;
/*!40000 ALTER TABLE `tbl_Coupon` DISABLE KEYS */;
INSERT INTO `tbl_Coupon` VALUES (1,'世界睡眠日好康','3JFUMV','2021-03-21','2021-03-21'),(2,'元旦驚喜','V5GMR4','2021-01-01','2021-01-03'),(3,'父親節我罩你','TL9EUP','2021-08-08','2021-08-09'),(4,'破盤大放送','YSL2KF','2021-05-01','2021-07-01'),(5,'你開心我開心','DSHUNZ','2021-05-05','2021-06-30'),(6,'優惠隨便給','MK2X7V','2021-04-01','2021-06-15'),(7,'春假驚喜','DG99ZB','2021-04-02','2021-04-05'),(8,'暑假優惠','HUGQM3','2021-07-01','2021-08-31'),(9,'九月限定驚喜','74G8YW','2021-09-01','2021-09-30'),(10,'十月到好運到','2NE7KR','2021-10-01','2021-10-31'),(11,'光棍快樂','82WQER','2021-11-11','2021-11-11'),(12,'聖誕老人送禮物','3YGQ4T','2021-12-24','2021-12-26'),(13,'兒童節專屬好禮','WMSPL4','2021-04-04','2021-04-05'),(14,'情人節我幫你','LKQPQN','2021-02-13','2021-02-15'),(15,'母親節好禮','2HEKP4','2021-05-08','2021-05-09');
/*!40000 ALTER TABLE `tbl_Coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_Deliveryman`
--

DROP TABLE IF EXISTS `tbl_Deliveryman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_Deliveryman` (
  `deliveryman_id` int(11) NOT NULL AUTO_INCREMENT,
  `deliveryman_name` varchar(64) NOT NULL,
  `deliveryman_phone` varchar(64) NOT NULL,
  `deliveryman_address` varchar(64) NOT NULL,
  PRIMARY KEY (`deliveryman_id`,`deliveryman_name`,`deliveryman_phone`),
  UNIQUE KEY `delivery_id_UNIQUE` (`deliveryman_id`),
  UNIQUE KEY `deliveryman_phone_UNIQUE` (`deliveryman_phone`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_Deliveryman`
--

LOCK TABLES `tbl_Deliveryman` WRITE;
/*!40000 ALTER TABLE `tbl_Deliveryman` DISABLE KEYS */;
INSERT INTO `tbl_Deliveryman` VALUES (1,'Peter','0940455888','320桃園市中壢區中正路100號'),(2,'Spencer','0904965039','320桃園市中壢區中大路342號'),(3,'Adrian','0944740134','320桃園市中壢區五興路12號'),(4,'Jarrod','0993007533','320桃園市中壢區民族路101號'),(5,'Richard','0992461642','320桃園市中壢區中大路520號'),(6,'Walter','0903323629','320桃園市中壢區中大路10號'),(7,'Timothy','0948528169','320桃園市中壢區五興路30號'),(8,'Marty','0967992517','320桃園市中壢區中山路444號'),(9,'Corey','0951000780','320桃園市中壢區中正路42號'),(10,'Ethan','0990914024','320桃園市中壢區中大路820號'),(11,'Austin','0998879355','320桃園市中壢區民族路72號'),(12,'Paige','0979188124','320桃園市中壢區五興路87號'),(13,'Luna','0999501521','320桃園市中壢區中山路301號'),(14,'Bonnie','0976947991','320桃園市中壢區中正路372號'),(15,'Alexis','0977215310','320桃園市中壢區中大路345號');
/*!40000 ALTER TABLE `tbl_Deliveryman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_Meals`
--

DROP TABLE IF EXISTS `tbl_Meals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_Meals` (
  `meals_id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) NOT NULL,
  `meals_name` varchar(64) NOT NULL,
  `meals_price` int(11) NOT NULL,
  PRIMARY KEY (`meals_id`,`restaurant_id`),
  UNIQUE KEY `meals_id_UNIQUE` (`meals_id`),
  KEY `meals_restaurant_id_fk` (`restaurant_id`),
  CONSTRAINT `meals_restaurant_id_fk` FOREIGN KEY (`restaurant_id`) REFERENCES `tbl_Restaurant` (`restaurant_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_Meals`
--

LOCK TABLES `tbl_Meals` WRITE;
/*!40000 ALTER TABLE `tbl_Meals` DISABLE KEYS */;
INSERT INTO `tbl_Meals` VALUES (1,9,'拿鐵',80),(2,1,'薯條',55),(3,12,'蛋塔',60),(4,11,'麻油雞',40),(5,1,'雙層牛肉吉士堡',60),(6,4,'泡菜鍋',110),(7,1,'麥脆雞',50),(8,5,'珍珠奶茶',50),(9,6,'麗春紅茶',30),(10,10,'黑森林蛋糕',220),(11,14,'鮪魚壽司',40),(12,7,'滷肉飯',60),(13,8,'雞肉飯',45),(14,13,'鮭魚壽司',40),(15,13,'綜合生魚片',200),(16,2,'燒肉珍珠堡',70),(17,3,'蔬菜鍋',120),(18,2,'紅茶',30),(19,3,'原味鍋',100),(20,4,'牛肉鍋',120),(21,5,'大甲芋頭鮮奶',75),(22,6,'熟成紅茶',35),(23,7,'貢丸湯',40),(24,8,'切仔麵',40),(25,9,'黑咖啡',70),(26,10,'焦糖瑪奇朵',75),(27,11,'滷肉麵線',30),(29,12,'蜂蜜醬脆雞XL餐',185),(30,14,'豆皮壽司',30),(31,15,'火腿蛋餅',35),(32,15,'起司蛋餅',30);
/*!40000 ALTER TABLE `tbl_Meals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_Order`
--

DROP TABLE IF EXISTS `tbl_Order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_Order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `deliveryman_id` int(11) NOT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `order_status` int(11) NOT NULL,
  `restaurant_rating` int(11) DEFAULT NULL,
  `deliveryman_rating` int(11) DEFAULT NULL,
  `deliveryman_fee` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`deliveryman_id`,`user_id`),
  UNIQUE KEY `order_id_UNIQUE` (`order_id`),
  KEY `order_used_id_fk_idx` (`user_id`),
  KEY `order_coupon_id_fk_idx` (`coupon_id`),
  KEY `order_deliveryman_id_fk` (`deliveryman_id`),
  CONSTRAINT `order_coupon_id_fk` FOREIGN KEY (`coupon_id`) REFERENCES `tbl_Coupon` (`coupon_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_deliveryman_id_fk` FOREIGN KEY (`deliveryman_id`) REFERENCES `tbl_Deliveryman` (`deliveryman_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `order_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `tbl_User` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_Order`
--

LOCK TABLES `tbl_Order` WRITE;
/*!40000 ALTER TABLE `tbl_Order` DISABLE KEYS */;
INSERT INTO `tbl_Order` VALUES (1,2,1,NULL,2,NULL,NULL,20,130),(2,2,2,8,4,4,5,30,515),(3,3,11,7,3,NULL,NULL,30,220),(4,3,6,8,4,4,3,30,85),(5,5,14,11,3,NULL,NULL,15,90),(6,5,8,15,1,NULL,NULL,30,295),(7,4,4,NULL,4,5,4,30,130),(8,6,3,NULL,4,2,2,30,350),(9,6,5,1,4,3,2,15,135),(10,2,6,NULL,4,1,3,20,190);
/*!40000 ALTER TABLE `tbl_Order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_Ordered_Details`
--

DROP TABLE IF EXISTS `tbl_Ordered_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_Ordered_Details` (
  `order_id` int(11) NOT NULL,
  `meals_id` int(11) NOT NULL,
  `ordered_details_unit_price` int(11) NOT NULL,
  `ordered_details_count` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`meals_id`),
  KEY `ordered_details_meals_id_fk_idx` (`meals_id`),
  CONSTRAINT `ordered_details_meals_id_fk` FOREIGN KEY (`meals_id`) REFERENCES `tbl_Meals` (`meals_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ordered_details_order_id_fk` FOREIGN KEY (`order_id`) REFERENCES `tbl_Order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_Ordered_Details`
--

LOCK TABLES `tbl_Ordered_Details` WRITE;
/*!40000 ALTER TABLE `tbl_Ordered_Details` DISABLE KEYS */;
INSERT INTO `tbl_Ordered_Details` VALUES (1,5,60,1),(1,7,50,1),(2,10,220,2),(2,26,75,1),(3,17,120,1),(3,19,100,1),(4,13,45,1),(4,24,40,1),(5,2,55,1),(5,7,50,1),(6,10,220,1),(6,26,75,1),(7,16,70,1),(7,18,30,1),(8,17,120,1),(8,19,100,2),(9,1,80,1),(9,25,70,1),(10,5,60,2),(10,7,50,1);
/*!40000 ALTER TABLE `tbl_Ordered_Details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_Restaurant`
--

DROP TABLE IF EXISTS `tbl_Restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_Restaurant` (
  `restaurant_id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_name` varchar(64) NOT NULL,
  `restaurant_phone` varchar(64) NOT NULL,
  `restaurant_address` varchar(64) NOT NULL,
  `restaurant_loc_x` int(11) NOT NULL,
  `restaurant_loc_y` int(11) NOT NULL,
  `restaurant_business` tinyint(4) NOT NULL,
  `opening_time` time NOT NULL,
  `closing_time` time NOT NULL,
  PRIMARY KEY (`restaurant_id`),
  UNIQUE KEY `restaurant_id_UNIQUE` (`restaurant_id`),
  UNIQUE KEY `tbl_Restaurantcol_UNIQUE` (`restaurant_address`),
  UNIQUE KEY `restaurant_phone_UNIQUE` (`restaurant_phone`),
  UNIQUE KEY `restaurant_name_UNIQUE` (`restaurant_name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_Restaurant`
--

LOCK TABLES `tbl_Restaurant` WRITE;
/*!40000 ALTER TABLE `tbl_Restaurant` DISABLE KEYS */;
INSERT INTO `tbl_Restaurant` VALUES (1,'麥當勞','0976578007','320桃園市中壢區中大路99號',2,21,1,'08:00:00','20:00:00'),(2,'摩斯漢堡','0947946958','320桃園市中壢區中正一路252號',87,5,1,'09:30:00','18:00:00'),(3,'伍味鍋','0997935827','320桃園市中壢區五興路121號',49,71,1,'07:00:00','22:00:00'),(4,'三媽臭臭鍋','0999369804','320桃園市中壢區民族路1041號',14,80,0,'10:00:00','23:00:00'),(5,'迷克夏','0977073228','320桃園市中壢區中大路50號',80,42,1,'11:00:00','16:00:00'),(6,'可不可熟成紅茶','0946602587','320桃園市中壢區中大路101號',21,99,0,'10:30:00','21:30:00'),(7,'鬍鬚張','0993381433','320桃園市中壢區中正一路380號',31,7,1,'10:00:00','20:00:00'),(8,'九大雞魯飯','0996380445','320桃園市中壢區中正二路448號',78,79,1,'06:00:00','22:00:00'),(9,'怡客咖啡','0945234928','320桃園市中壢區中正路42號',51,85,1,'11:00:00','21:30:00'),(10,'路易莎咖啡','0950621549','320桃園市中壢區中大路840號',12,38,1,'10:30:00','23:00:00'),(11,'二師父麻油雞','0950005890','320桃園市中壢區民族路721號',24,19,0,'08:00:00','22:00:00'),(12,'肯德基','0905179052','320桃園市中壢區五興路877號',4,24,0,'09:30:00','21:30:00'),(13,'爭鮮迴轉壽司','0907159968','320桃園市中壢區中正一路301號',63,17,1,'11:00:00','23:00:00'),(14,'壽司郎','0999233765','320桃園市中壢區中正路72號',83,39,1,'11:00:00','21:30:00'),(15,'弘爺早餐店','0900651160','320桃園市中壢區中正二路345號',16,27,1,'06:00:00','09:00:00');
/*!40000 ALTER TABLE `tbl_Restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_User`
--

DROP TABLE IF EXISTS `tbl_User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_User` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_account` varchar(64) NOT NULL,
  `user_salt` char(64) NOT NULL,
  `user_name` varchar(64) NOT NULL,
  `user_address` varchar(64) NOT NULL,
  `user_phone` varchar(64) NOT NULL,
  `user_loc_x` int(11) NOT NULL,
  `user_loc_y` int(11) NOT NULL,
  `createdatetime` datetime NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `salt_UNIQUE` (`user_salt`),
  UNIQUE KEY `user_account_UNIQUE` (`user_account`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  UNIQUE KEY `user_phone_UNIQUE` (`user_phone`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_User`
--

LOCK TABLES `tbl_User` WRITE;
/*!40000 ALTER TABLE `tbl_User` DISABLE KEYS */;
INSERT INTO `tbl_User` VALUES (1,'test001','63652315D22919A8EC76F58F982EC08A6244474F8082B8E75A1271B3C63948E9','Jacob Walker','320桃園市中壢區民權路170號','0937882465',94,95,'2021-02-21 10:00:00'),(2,'test002','AA52032EAB8CC92F7B77CCE828940F95C2369F18DDF1C6B3A80A8A6195D137FB','Rick Caulfield','320桃園市中壢區民生北路112號','0945804302',8,20,'2021-01-01 12:00:05'),(3,'test003','3C567E0EA40F26755BB221C96AB02CC726DE673E85016EC1D949D14E5B16B223','Bryce Landrum','320桃園市中壢區五興路121號','0902923003',65,69,'2021-12-11 23:20:00'),(4,'test004','95B79B147E492681F98C749E3AC329C1A975D3F4000FF25D0643D8D55A4E4E2B','Alex Barlow','320桃園市中壢區民生北路185號','0942930878',100,6,'2021-07-14 14:40:20'),(5,'test005','EB7F11AE33003238D3FF14094E3BC569F077B8F39DF472423FD339CE22B5F050','Alvin Anderson','320桃園市中壢區民權路520號','0909563906',7,22,'2021-10-11 12:20:07'),(6,'test006','5F79D14FB8A43CA9350E781EA1067B14B197D36671182C4C15E9EDBD921791DD','Willy Bieber','320桃園市中壢區中大路107號','0901033637',49,87,'2021-12-05 02:00:00'),(7,'test007','9C681B6D73E80D3C1F10E06BDEB48914ABE207ADA83405DC14485B6AD060C021','Johannes Harris','320桃園市中壢區民權路30號','0984466058',2,24,'2020-07-07 12:45:37'),(8,'test008','6C40F0CC5D46DCE7D1A0E1D118E0750A7874087FC7199DDA34D171131002DCA9','Phil Taft','320桃園市中壢區中山路474號','0973214446',55,1,'2020-08-08 22:45:30'),(9,'test009','039FB5567A6B559BE9999BF854BEF1699A14CB912AF431CCF90D9941900D8788','Reggie Scott','320桃園市中壢區民生北路42號','0900697437',33,74,'2020-01-21 11:15:31'),(10,'test010','ABC1523C0333408EFF2B8CCF4248A0B2175723EBC65C8D05940B9D434B7A39A2','Aidan Hall','320桃園市中壢區中大路820號','0907146500',37,14,'2020-03-26 08:10:12'),(11,'test011','015E6E1B59C1095D5484D37EADAD30A1BA1B23E96125ECD3A4FAA7E97B57AE6A','Annie Abbadie','320桃園市中壢區民權路72號','0977679834',91,47,'2019-04-16 07:40:42'),(12,'test012','FC683C2A54777A59A747A304E48AF48F1CC3B5028690001D5E6FF51CF4F3CABB','Nerissa Brown','320桃園市中壢區五興路847號','0973337533',18,82,'2019-10-26 05:05:05'),(13,'test013','B6A36D21C9A08C26DE91B3D8C9A55B29F196AEF84FF5EA6598D66DBCB37A7F9E','Anna Stenson','320桃園市中壢區民生南路31號','0904713945',64,66,'2019-09-21 08:41:12'),(14,'test014','BCF3A35C006CEDC0C1B9FE21E8F22528A8D09CB36A4F19B1B6A9B4713D8D22B','Sigrid Merrick','320桃園市中壢區中正路322號','0998049104',19,91,'2019-09-23 12:20:02'),(15,'test015','D2E8F9D3BC6FDDA90B838DB2A33C749F20DD43CE899752B7FA194F01C637D90E','Alexis Bagshawe','320桃園市中壢區中大路365號','0983234004',70,75,'2019-04-10 03:25:06');
/*!40000 ALTER TABLE `tbl_User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_User_Credential`
--

DROP TABLE IF EXISTS `tbl_User_Credential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_User_Credential` (
  `user_credential_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `hashedpwd` varchar(200) NOT NULL,
  `createdatetime` datetime NOT NULL,
  PRIMARY KEY (`user_credential_id`,`user_id`),
  UNIQUE KEY `user_credential_id_UNIQUE` (`user_credential_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  UNIQUE KEY `hashedpwd_UNIQUE` (`hashedpwd`),
  CONSTRAINT `user_credential_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `tbl_User` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_User_Credential`
--

LOCK TABLES `tbl_User_Credential` WRITE;
/*!40000 ALTER TABLE `tbl_User_Credential` DISABLE KEYS */;
INSERT INTO `tbl_User_Credential` VALUES (1,1,'12d645aba4188c2ca4467e723aa5f80fbf74dd2d4d1acafdb888a06ea152d400','2021-02-21 10:00:00'),(2,2,'37511f033628d86b4b916eeac92be7c519c7a2a0b69a9c275b8ac12df51c7170','2021-01-01 12:00:05'),(3,3,'b42173ac3c0c84579930b00fb5840673909e7cbb52835dd0eda3867ec78b0c1a','2021-12-11 23:20:00'),(4,4,'90dd9f1505cc9b5e7afe85fff9e8c0e1479982f47ded59713a351e56b04d8ebe','2021-07-14 14:40:20'),(5,5,'9fd17045e745b326a17b46bc898d1e31584b3fe151bfca775d05b955f66a4020','2021-10-11 12:20:07'),(6,6,'9b0ad459fd6229d16b62486fa4aadb93279b3a5078ec560dafb2ff2dacdd3ca2','2021-12-05 02:00:00'),(7,7,'385caacde6430ee92f88112fde9c7ab56057a489190cee002fb55d3f5e3958f4','2020-07-07 12:45:37'),(8,8,'ac30c90356c59a3ad72d6fab45ddc2d5f81c5cdd194b7a66e938ca72c4cef85b','2020-08-08 22:45:30'),(9,9,'ca3a5ef52e43abcb268591f9208f205cbc1a8d4c8009a9476a593d7fdfd546d3','2020-01-21 11:15:31'),(10,10,'1ac24680a1f8570fdf6979860e7b02bbb424d970b9b1d6500090a179653b7b95','2020-03-26 08:10:12'),(11,11,'6e29fad15e907474280d063c1f19f1c4a1309296ad05485cccc6f0a462fc254c','2019-04-16 07:40:42'),(12,12,'42ced92cee6c90bd603d316ef11f9b4af4e3037821019996978b6df8e4ad4788','2019-10-26 05:05:05'),(13,13,'215888d61256561f9bf24bdf9eab1e92166ba1e05442c3b4b0b2790dc25a9834','2019-09-21 08:41:12'),(14,14,'f7b3e132fbbbcfc87d2cb65e0552af74d7c7df55ed828e5c700a60491dbc27e4','2019-09-23 12:20:02'),(15,15,'6ca89a4472c0a426e37dfef1bc25aed829c4dac0f38c74b09a0fa47a233d60dd','2019-04-10 03:25:06');
/*!40000 ALTER TABLE `tbl_User_Credential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_108403501'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_CancelOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`108403501`@`192.168.56.1` PROCEDURE `sp_CancelOrder`(
	IN InOrderId int,
    out AffectedRowNum int
)
BEGIN
	SET AffectedRowNum = 0;
	SET @Out1 = 0;

	IF EXISTS
		(SELECT
			order_id
		FROM
			tbl_Order
		WHERE order_id = InOrderId)
    THEN
		SET @Out1 = (SELECT COUNT(order_id) FROM tbl_Ordered_Details WHERE order_id = InOrderId);
		DELETE FROM tbl_Order WHERE order_id = InOrderId;
    END IF;
    
    SELECT @Out1+row_count() INTO AffectedRowNum;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_CreateNewOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`108403501`@`192.168.56.1` PROCEDURE `sp_CreateNewOrder`(
	IN InUserId int,
    IN InDeliverymanId int,
    IN InRestaurantId int,
    IN InMeals_1_Id int,
    IN InMeals_1_Count int,
    IN InMeals_2_Id int,
    IN InMeals_2_Count int,
    out AffectedRowNum int
)
BEGIN
	SET AffectedRowNum = 0;
	SET @Out1 = 0;
    SET @Out2 = 0;
    SET @Out3 = 0;
    SET @RestaurantX = (SELECT restaurant_loc_x FROM tbl_Restaurant WHERE restaurant_id = InRestaurantId);
    SET @RestaurantY = (SELECT restaurant_loc_y FROM tbl_Restaurant WHERE restaurant_id = InRestaurantId);
	SET @UserX = (SELECT user_loc_x FROM tbl_User WHERE user_id = InUserId);
    SET @UserY = (SELECT user_loc_y FROM tbl_User WHERE user_id = InUserId);
    
	IF(
		(SELECT restaurant_business FROM tbl_Restaurant WHERE restaurant_id = InRestaurantId) = 1
		AND (SELECT restaurant_id FROM tbl_Meals WHERE meals_id = InMeals_1_Id) = (SELECT restaurant_id FROM tbl_Meals WHERE meals_id = InMeals_2_Id)
		AND (SELECT restaurant_id FROM tbl_Meals WHERE meals_id = InMeals_2_Id) = InRestaurantId
        AND sqrt( POW( (@UserX-@RestaurantX),2 ) + POW( (@UserY-@RestaurantY),2 ) ) <= 20
	)THEN
		IF( sqrt( POW( (@UserX-@RestaurantX),2 ) + POW( (@UserY-@RestaurantY),2 ) )<=5)
			THEN SET @DeliverymanFee=15;
		ELSEIF( sqrt( POW( (@UserX-@RestaurantX),2 ) + POW( (@UserY-@RestaurantY),2 ) )>5 AND sqrt( POW( (@UserX-@RestaurantX),2 ) + POW( (@UserY-@RestaurantY),2 ) )<=10)
			THEN SET @DeliverymanFee = 20;
		ELSEIF( sqrt( POW( (@UserX-@RestaurantX),2 ) + POW( (@UserY-@RestaurantY),2 ) )>10 AND sqrt( POW( (@UserX-@RestaurantX),2 ) + POW( (@UserY-@RestaurantY),2 ) )<=20)
			THEN SET @DeliverymanFee = 30;
		END IF;
    
		INSERT INTO tbl_Order(user_id, deliveryman_id, order_status, deliveryman_fee, total_price)
		VALUES(	InUserId, InDeliverymanId, 1, @DeliverymanFee,
				(InMeals_1_Count * (SELECT meals_price FROM tbl_Meals WHERE meals_id = InMeals_1_Id)
				+ InMeals_2_Count * (SELECT meals_price FROM tbl_Meals WHERE meals_id = InMeals_2_Id)) );
		SELECT row_count() INTO @Out1;

		INSERT INTO tbl_Ordered_Details(order_id, meals_id, ordered_details_unit_price, ordered_details_count)
		VALUES(	(SELECT order_id FROM tbl_Order ORDER BY order_id DESC LIMIT 1),
				InMeals_1_Id,
				(SELECT meals_price FROM tbl_Meals WHERE meals_id = InMeals_1_Id),
				InMeals_1_Count	);
		SELECT row_count() INTO @Out2;
    
		INSERT INTO tbl_Ordered_Details(order_id, meals_id, ordered_details_unit_price, ordered_details_count)
		VALUES(	(SELECT order_id FROM tbl_Order ORDER BY order_id DESC LIMIT 1),
				InMeals_2_Id,
				(SELECT meals_price FROM tbl_Meals WHERE meals_id = InMeals_2_Id),
				InMeals_2_Count	);
		SELECT row_count() INTO @Out3;
    
		SELECT
			user_id, order_id, restaurant_id, meals_id, ordered_details_unit_price, ordered_details_count
		FROM
			tbl_Ordered_Details
			LEFT JOIN tbl_Order USING(order_id)
			JOIN tbl_Meals USING(meals_id)
		ORDER BY order_id DESC LIMIT 2;
	END IF;
    
    SELECT @Out1 + @Out2 + @Out3 INTO AffectedRowNum;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetRestaurant` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`108403501`@`192.168.56.1` PROCEDURE `sp_GetRestaurant`(
	IN InUserId int,
    out NumberOfRowsInTheResultSet int
)
BEGIN
	SET NumberOfRowsInTheResultSet = 0;
	DROP TABLE IF EXISTS TempRestaurant;
	CREATE TEMPORARY TABLE TempRestaurant
    
    SELECT
		restaurant_id, restaurant_name, (sqrt(POW((tbl_User.user_loc_x-tbl_Restaurant.restaurant_loc_x), 2) + POW((tbl_User.user_loc_y-tbl_Restaurant.restaurant_loc_y), 2))) AS DeliverymanFee
    FROM
		tbl_User, tbl_Restaurant
    WHERE user_id = InUserId AND restaurant_business = 1;
    
    SET SQL_SAFE_UPDATES = 0;
    
    UPDATE TempRestaurant
    SET DeliverymanFee = CASE
		WHEN DeliverymanFee <= 5
			THEN 15
		WHEN DeliverymanFee > 5 AND DeliverymanFee <= 10
			THEN 20
		WHEN DeliverymanFee > 10 AND DeliverymanFee <= 20
			THEN 30
	END;
    
    SET SQL_SAFE_UPDATES = 1;
    
    SELECT * FROM TempRestaurant WHERE DeliverymanFee <= 30;
    
    SELECT found_rows() INTO NumberOfRowsInTheResultSet;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_HistoryOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`108403501`@`192.168.56.1` PROCEDURE `sp_HistoryOrder`(
	IN InUserId int,
    out NumberOfRowsInTheResultSet int
)
BEGIN
	SET NumberOfRowsInTheResultSet = 0;

	SELECT
		user_id, order_id, deliveryman_id, order_status, total_price
    FROM
		tbl_Order
    WHERE user_id = InUserId;
    
    SELECT found_rows() into NumberOfRowsInTheResultSet;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`108403501`@`192.168.56.1` PROCEDURE `sp_Login`(
	IN InUserAccount varchar(64),
    IN InHashedpwd varchar(200),
    out AffectedRowNum int
)
BEGIN
	SET AffectedRowNum = 0;

	IF EXISTS
		(SELECT
			user_account, hashedpwd
		FROM
			tbl_User
			JOIN tbl_User_Credential USING(user_id)
		WHERE user_account = InUserAccount
			AND hashedpwd = InHashedpwd)
	THEN
		set @OutputAffect = 1;
	ELSE
		set @OutputAffect = 0;
	END IF;
    
    SELECT @OutputAffect INTO AffectedRowNum;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_RegisterUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`108403501`@`192.168.56.1` PROCEDURE `sp_RegisterUser`(
	IN InUserAccount varchar(64),
    IN InUserSalt char(64),
    IN InUserName varchar(64),
    IN InUserPhone varchar(64),
    IN InUserAddress varchar(64),
    IN InUserLocX int,
    IN InUserLocY int,
    IN InHashedPwd varchar(200),
    out NumberOfRowsInTheResultSet int
)
BEGIN
	SET NumberOfRowsInTheResultSet = 0;
	SET @Out1 = 0;
    SET @Out2 = 0;
    
	INSERT INTO tbl_User(user_account, user_salt, user_name, user_address, user_phone, user_loc_x, user_loc_y, createdatetime)
	VALUES(InUserAccount, InUserSalt, InUserName, InUserAddress, InUserPhone, InUserLocX, InUserLocY, NOW());
    SELECT row_count() INTO @Out1;
    
	INSERT INTO tbl_User_Credential(user_id, hashedPwd, createdatetime)
	VALUES(
		(SELECT user_id FROM tbl_User WHERE user_salt = InUserSalt),
	InHashedPwd, NOW());
    SELECT row_count() INTO @Out2;
    
    SELECT @Out1 + @Out2 INTO NumberOfRowsInTheResultSet;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ResetNewPassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`108403501`@`192.168.56.1` PROCEDURE `sp_ResetNewPassword`(
	IN InUserId int,
    IN InResetUserSalt char(64),
    IN InResetHashedPwd varchar(200),
    out AffectedRowNum int
)
BEGIN
	SET AffectedRowNum = 0;
	SET @Out1 = 0;
    SET @Out2 = 0;

	UPDATE tbl_User
		SET user_salt = InResetUserSalt
        WHERE user_id = InUserId;
	SELECT row_count() INTO @Out1;
    
    UPDATE tbl_User_Credential
		SET hashedpwd = InResetHashedPwd
        WHERE user_id = InUserId;
	SELECT row_count() INTO @Out2;
    
    SELECT @Out1 + @Out2 INTO AffectedRowNum;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_SearchMealsOfRestaurant` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`108403501`@`192.168.56.1` PROCEDURE `sp_SearchMealsOfRestaurant`(
	IN InMealsName varchar(64),
    out NumberOfRowsInTheResultSet int
)
BEGIN
	SET NumberOfRowsInTheResultSet = 0;

	SELECT
		restaurant_name, meals_name, meals_price
    FROM
		tbl_Restaurant
        JOIN tbl_Meals USING(restaurant_id)
    WHERE meals_name LIKE CONCAT('%',InMealsName,'%');
    
    SELECT found_rows() into NumberOfRowsInTheResultSet;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_SearchStarRestaurant` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`108403501`@`192.168.56.1` PROCEDURE `sp_SearchStarRestaurant`(
	IN InX int,
    out NumberOfRowsInTheResultSet int
)
BEGIN
	SET NumberOfRowsInTheResultSet = 0;

	SELECT DISTINCT
		restaurant_id, restaurant_name, round(avg(restaurant_rating), 0) AS RestaurantRating
    FROM
		tbl_Order
		JOIN tbl_Ordered_Details USING(order_id)
		JOIN tbl_Meals USING(meals_id)
		JOIN tbl_Restaurant USING(restaurant_id)
    GROUP BY restaurant_id HAVING(RestaurantRating >= InX);
    
    SELECT found_rows() into NumberOfRowsInTheResultSet;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdateOrderStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`108403501`@`192.168.56.1` PROCEDURE `sp_UpdateOrderStatus`(
	IN InOrderId int,
    IN InOrderStatus int,
    out AffectedRowNum int
)
BEGIN
	SET AffectedRowNum = 0;

	IF EXISTS
		(SELECT
			order_status
		FROM
			tbl_Order
        WHERE InOrderStatus > order_status AND order_id = InOrderId)
	THEN
		UPDATE tbl_Order
		SET order_status = InOrderStatus
		WHERE order_id = InOrderId;
	END IF;
    
    SELECT row_count() INTO AffectedRowNum;
    
    SELECT order_id, order_status
    FROM tbl_Order
    WHERE order_id = InOrderId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-17 23:50:39
