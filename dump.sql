-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: kittens
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actions` (
  `kitten_id` int(11) DEFAULT NULL,
  `personality_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adoption`
--

DROP TABLE IF EXISTS `adoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adoption` (
  `kitten_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `aDate` date NOT NULL,
  `contract` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aDate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adoption`
--

LOCK TABLES `adoption` WRITE;
/*!40000 ALTER TABLE `adoption` DISABLE KEYS */;
INSERT INTO `adoption` VALUES (2,1,'2001-01-09','/files/contract.pdf'),(45,3,'2002-03-01','/files/contract.pdf'),(47,2,'2002-03-02','/files/contract.pdf'),(49,4,'2002-03-03','/files/contract.pdf'),(50,5,'2002-03-04','/files/contract.pdf');
/*!40000 ALTER TABLE `adoption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assinment`
--

DROP TABLE IF EXISTS `assinment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assinment` (
  `role_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assinment`
--

LOCK TABLES `assinment` WRITE;
/*!40000 ALTER TABLE `assinment` DISABLE KEYS */;
/*!40000 ALTER TABLE `assinment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `availability`
--

DROP TABLE IF EXISTS `availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `availability` (
  `kitten_id` int(11) DEFAULT NULL,
  `rental_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availability`
--

LOCK TABLES `availability` WRITE;
/*!40000 ALTER TABLE `availability` DISABLE KEYS */;
/*!40000 ALTER TABLE `availability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `breed`
--

DROP TABLE IF EXISTS `breed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `breed` (
  `type` varchar(255) NOT NULL,
  `purebred` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `breed`
--

LOCK TABLES `breed` WRITE;
/*!40000 ALTER TABLE `breed` DISABLE KEYS */;
/*!40000 ALTER TABLE `breed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `idcart` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `kitten_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcart`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (3,2,1);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`matalynt`@`localhost`*/ /*!50003 TRIGGER kitten_sum BEFORE DELETE ON cart
       FOR EACH ROW SET @sum = @sum + 1 */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `classification`
--

DROP TABLE IF EXISTS `classification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classification` (
  `kitten_id` int(11) DEFAULT NULL,
  `breed_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classification`
--

LOCK TABLES `classification` WRITE;
/*!40000 ALTER TABLE `classification` DISABLE KEYS */;
/*!40000 ALTER TABLE `classification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `environment`
--

DROP TABLE IF EXISTS `environment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `environment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `in_outdoor` varchar(255) DEFAULT NULL,
  `family_size` varchar(255) DEFAULT NULL,
  `noise` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `environment`
--

LOCK TABLES `environment` WRITE;
/*!40000 ALTER TABLE `environment` DISABLE KEYS */;
/*!40000 ALTER TABLE `environment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kitten`
--

DROP TABLE IF EXISTS `kitten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kitten` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `history` varchar(255) DEFAULT NULL,
  `fertility` tinyint(1) DEFAULT NULL,
  `adopted` tinyint(1) DEFAULT NULL,
  `photos` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kitten`
--

LOCK TABLES `kitten` WRITE;
/*!40000 ALTER TABLE `kitten` DISABLE KEYS */;
INSERT INTO `kitten` VALUES (2,'George',1,'New from a litter.',1,1,'/img/kitten.jpg'),(5,'Fluffy',3,'Who knows...',1,0,'/img/cat.jpg'),(6,'James',2,'From a junkyard',1,0,'/img/kitten.jpg'),(7,'Tootsie',2,'Test',0,0,'/img/cat.jpg'),(45,'Kitty',0,'test',1,1,'/img/k.jpeg'),(47,'test',0,'',1,1,'/img/k.jpeg'),(48,'Me',2,'',0,1,'/img/cert.jpeg'),(49,'You',5,'test',1,1,'/img/kert.jpg'),(50,'Name',16,'jsklfoijlkkmv',1,1,'/img/cert.jpeg');
/*!40000 ALTER TABLE `kitten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical`
--

DROP TABLE IF EXISTS `medical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medical` (
  `kitten_id` int(11) DEFAULT NULL,
  `shot_name` varchar(255) DEFAULT NULL,
  `mDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical`
--

LOCK TABLES `medical` WRITE;
/*!40000 ALTER TABLE `medical` DISABLE KEYS */;
/*!40000 ALTER TABLE `medical` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
INSERT INTO `owner` VALUES (1,'Bidger Terbit','junk@you.com','123 s fake ave Provo, UT 84602','123-456-7890'),(2,'Jrstin GRbbiny','jb@gmail.com','123 s fake ave Provo, UT 84602','987-654-3210'),(3,'Matt Fox','mmf@gmail.com','test test test street BYU','123-456-7890');
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner_identity`
--

DROP TABLE IF EXISTS `owner_identity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owner_identity` (
  `username` varchar(255) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner_identity`
--

LOCK TABLES `owner_identity` WRITE;
/*!40000 ALTER TABLE `owner_identity` DISABLE KEYS */;
/*!40000 ALTER TABLE `owner_identity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personality`
--

DROP TABLE IF EXISTS `personality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personality` (
  `kitten_id` int(11) NOT NULL AUTO_INCREMENT,
  `affection` varchar(255) DEFAULT NULL,
  `activity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kitten_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personality`
--

LOCK TABLES `personality` WRITE;
/*!40000 ALTER TABLE `personality` DISABLE KEYS */;
/*!40000 ALTER TABLE `personality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preference`
--

DROP TABLE IF EXISTS `preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preference` (
  `kitten_id` int(11) DEFAULT NULL,
  `env_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preference`
--

LOCK TABLES `preference` WRITE;
/*!40000 ALTER TABLE `preference` DISABLE KEYS */;
/*!40000 ALTER TABLE `preference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental`
--

DROP TABLE IF EXISTS `rental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rental` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `duration` varchar(255) DEFAULT NULL,
  `participating` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental`
--

LOCK TABLES `rental` WRITE;
/*!40000 ALTER TABLE `rental` DISABLE KEYS */;
/*!40000 ALTER TABLE `rental` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `see_kittenInfo`
--

DROP TABLE IF EXISTS `see_kittenInfo`;
/*!50001 DROP VIEW IF EXISTS `see_kittenInfo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `see_kittenInfo` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `age`,
 1 AS `history`,
 1 AS `fertility`,
 1 AS `adopted`,
 1 AS `photos`,
 1 AS `idcart`,
 1 AS `user_id`,
 1 AS `kitten_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `shelter`
--

DROP TABLE IF EXISTS `shelter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shelter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shelter`
--

LOCK TABLES `shelter` WRITE;
/*!40000 ALTER TABLE `shelter` DISABLE KEYS */;
/*!40000 ALTER TABLE `shelter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shelter_identity`
--

DROP TABLE IF EXISTS `shelter_identity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shelter_identity` (
  `username` varchar(255) DEFAULT NULL,
  `shelter_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shelter_identity`
--

LOCK TABLES `shelter_identity` WRITE;
/*!40000 ALTER TABLE `shelter_identity` DISABLE KEYS */;
/*!40000 ALTER TABLE `shelter_identity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shots`
--

DROP TABLE IF EXISTS `shots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shots` (
  `name` varchar(255) NOT NULL,
  `next_scheduled` date DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shots`
--

LOCK TABLES `shots` WRITE;
/*!40000 ALTER TABLE `shots` DISABLE KEYS */;
/*!40000 ALTER TABLE `shots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (2,'George Frank','blah@gmmail.com','123 s fake street Provo, UT 84606','123-456-7789'),(3,'TESt','sdjfkl','sdkfl','16'),(4,'Test','junk@gmai.com','13 S Fake stree Provo, Ut 84606','123-456-7789'),(5,'<b> Jon </b>','junk@gmai.com','123 s fake street Provo, UT 84606','123-456-7784');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_identity`
--

DROP TABLE IF EXISTS `staff_identity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff_identity` (
  `username` varchar(255) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_identity`
--

LOCK TABLES `staff_identity` WRITE;
/*!40000 ALTER TABLE `staff_identity` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_identity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `remember_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('Matalyn','$2y$10$xYD6TvDBp/KLmBp/UEoJyeVwPuoIU1xRsbjLr0IdeFJDmog8TSoVi','matalyn2@byu.edu','2018-03-07 11:28:11','2018-03-07 11:28:11',1,'CA4b26WOpilz6tDOGQnCvYeWhLPqAuWmcHSPwYcHJPKhJdATevVWammkbtd6'),('Matalyn','kittens are fun','matalyn2@byu.edu',NULL,NULL,2,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'kittens'
--
/*!50003 DROP PROCEDURE IF EXISTS `adoption_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`matalynt`@`localhost` PROCEDURE `adoption_info`(in oid int)
BEGIN
select * from adoption 
inner join kitten on kitten.id = adoption.kitten_id
where owner_id = oid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `adoption_into` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`matalynt`@`localhost` PROCEDURE `adoption_into`(in oid int)
BEGIN
select * from adoption 
inner join kitten on kitten.id = adoption.kitten_id
where owner_id = oid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertCheck` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`matalynt`@`localhost` PROCEDURE `insertCheck`(IN userId INT, kittenId INT)
BEGIN
	Select count(*) from cart where user_id = userId and kitten_id = kittenId;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `see_kittenInfo`
--

/*!50001 DROP VIEW IF EXISTS `see_kittenInfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`matalynt`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `see_kittenInfo` AS select `kitten`.`id` AS `id`,`kitten`.`name` AS `name`,`kitten`.`age` AS `age`,`kitten`.`history` AS `history`,`kitten`.`fertility` AS `fertility`,`kitten`.`adopted` AS `adopted`,`kitten`.`photos` AS `photos`,`cart`.`idcart` AS `idcart`,`cart`.`user_id` AS `user_id`,`cart`.`kitten_id` AS `kitten_id` from (`kitten` join `cart` on((`kitten`.`id` = `cart`.`kitten_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-28 20:42:09
