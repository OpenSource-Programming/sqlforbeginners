-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: pydango
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `account_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `credit_card` bigint DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `zip_code` int NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`account_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'abbi@gmail.com',1111111111111111,'70db79ab8b4dfaed8593b0a39a9762654e18bbba',89123,'Abby','Lee','2021-01-26 03:14:52','2021-01-26 03:15:21'),(2,'bobbi@gmail.com',2222222222222222,'7767d868b5ce9f5ae6c43ec6968c243bf34b1f2a',89123,'Bobbi','Lee','2021-01-26 03:15:50',NULL),(3,'cathi@gmail.com',3333333333333333,'e4bbd83dbda290bb46392f41b910e98b98d215b5',89123,'Cathi','Lee','2021-01-26 03:15:50',NULL),(4,'dicki@gmail.com',4444444444444444,'5c60eb999bc2a6609fee7d484ac4fe3688fa2b02',89128,'Dicki','Lee','2021-01-26 03:15:50',NULL),(5,'Eeri@gmail.com',5555555555555555,'f8cb5afc41c46df756b979c7fae4267cc246b1c1',89128,'Eeri','Lee','2021-01-26 03:15:50',NULL),(6,'Fendi@gmail.com',6666666666666666,'1a537187d71fbf12e577691a910261206bf444bd',89128,'Fendi','Lee','2021-01-26 03:15:50',NULL);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor` (
  `actor_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `birth_day` date DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (3,'Tom','Hardy','1977-09-15',43),(4,'Christian','Bale','1974-01-30',47),(5,'Anne','Hathaway','1982-11-12',38),(6,'Cillian','Murphy','1976-05-25',45),(7,'Marion','Cotillard','1975-09-30',45),(8,'Joseph','Levitt','1981-02-17',40),(9,'Matthew','McConaughey','1969-11-04',51),(10,'Sigourney','Weaver','1949-10-08',71),(11,'Matt','Damon','1970-10-08',50),(12,'Bruce','Willis','1955-03-19',66),(13,'Samuel','Jackson','1948-12-21',72),(14,'Macolm','McDowell','1943-06-13',78);
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_actor_insert` BEFORE INSERT ON `actor` FOR EACH ROW BEGIN
		SET NEW.age = ROUND(DATEDIFF(CURDATE(), NEW.birth_day) / 365.25, 0);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `director` (
  `director_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (1,'Martin','Scorsese'),(2,'Quentin','Tarantino'),(3,'Steven','Spielberg'),(4,'Stanley','Kubrick'),(5,'Christopher','Nolan'),(6,'Ridley','Scott');
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `movie_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `year` varchar(5) DEFAULT NULL,
  `rating` varchar(5) DEFAULT NULL,
  `length_min` int DEFAULT NULL,
  `description` text,
  `director_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`movie_id`),
  KEY `director_id` (`director_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`director_id`) REFERENCES `director` (`director_id`) ON DELETE RESTRICT,
  CONSTRAINT `movie_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `movie_category` (`category_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'Interstellar','2014','PG-13',169,'Apocalypse, Black Hole, Time Travel, Astronauts',5,4,'2021-01-07','2021-07-07',1),(2,'The Departed','2006','R',151,'Irish Gangsters, Boston, Betrayal, Cops, Revenge',1,1,'2020-11-01','2021-01-01',0),(3,'Pulp Fiction','1994','R',178,'Boxing, Robbery, Hitmen, Samuel L. Jackson',2,1,'2020-12-25','2021-12-15',1),(4,'Jurassic Park','1993','PG-13',127,'Dinosaurs, DNA, T-Rex, Velociraptor, Chaos',3,4,'2020-11-15','2021-07-04',1),(5,'A Clockwork Orange','1971','R',136,'Crazy, Crime, Future, Dystopian',4,4,'2021-01-01','2021-05-05',1),(6,'Aliens','1986','R',137,'Aliens, Eat People, Spaceship, Future',6,3,'2021-01-01','2021-05-05',1),(7,'The Wolf of Wall Street','2013','R',180,'Wall Street, Scam Artist, Drugs, Sex',1,1,'2020-04-06','2021-01-01',0),(8,'The Dark Knight','2008','PG-13',152,'SuperHero, DC Comic, Gotham City, Dark',5,2,'2020-07-04','2022-01-01',1),(9,'Dunkirk','2017','PG-13',106,'WW2, Evacuation, Winston Churchill, Fighter Pilots, Navy',5,1,'2020-04-06','2022-01-01',1),(10,'Inception','2010','PG-13',140,'Dream, Sleep, Corporate Espionage, Faith, Uncertainty',5,1,'2020-04-06','2022-01-01',1);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_movie_insert` BEFORE INSERT ON `movie` FOR EACH ROW BEGIN
    IF NOW() BETWEEN NEW.start_date AND NEW.end_date
    THEN SET NEW.active = true;
    ELSE SET NEW.active = false;

    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `movie_actor`
--

DROP TABLE IF EXISTS `movie_actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_actor` (
  `movie_id` int NOT NULL,
  `actor_id` int NOT NULL,
  `role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`movie_id`,`actor_id`),
  KEY `actor_id` (`actor_id`),
  CONSTRAINT `movie_actor_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE,
  CONSTRAINT `movie_actor_ibfk_2` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`actor_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_actor`
--

LOCK TABLES `movie_actor` WRITE;
/*!40000 ALTER TABLE `movie_actor` DISABLE KEYS */;
INSERT INTO `movie_actor` VALUES (1,5,'Supporting'),(1,9,'Primary'),(1,11,'Supporting'),(2,11,'Primary'),(3,12,'Primary'),(3,13,'Primary'),(4,13,'Supporting'),(5,14,'Primary'),(6,10,'Primary'),(7,9,'Supporting'),(8,5,'Supporting'),(9,3,'Primary'),(10,3,'Supporting'),(10,7,'Supporting'),(10,8,'Supporting');
/*!40000 ALTER TABLE `movie_actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_category`
--

DROP TABLE IF EXISTS `movie_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_category`
--

LOCK TABLES `movie_category` WRITE;
/*!40000 ALTER TABLE `movie_category` DISABLE KEYS */;
INSERT INTO `movie_category` VALUES (1,'Drama'),(2,'Action'),(3,'Horror'),(4,'Scifi'),(5,'Romance'),(6,'Comedy');
/*!40000 ALTER TABLE `movie_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL,
  `credit_card` bigint DEFAULT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1234,1111111111111111,1),(4444,2222222222222222,1),(5432,3333333333333333,1),(8899,5555555555555555,1);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!50001 DROP VIEW IF EXISTS `schedule`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schedule` AS SELECT 
 1 AS `theater_id`,
 1 AS `theater_name`,
 1 AS `movie_id`,
 1 AS `title`,
 1 AS `time`,
 1 AS `seats_available`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `theater`
--

DROP TABLE IF EXISTS `theater`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theater` (
  `theater_id` int NOT NULL AUTO_INCREMENT,
  `theater_name` varchar(50) DEFAULT NULL,
  `ticket_price` json DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip_code` int DEFAULT NULL,
  `open` time DEFAULT NULL,
  `close` time DEFAULT NULL,
  PRIMARY KEY (`theater_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theater`
--

LOCK TABLES `theater` WRITE;
/*!40000 ALTER TABLE `theater` DISABLE KEYS */;
INSERT INTO `theater` VALUES (1,'AMC Rainbow','{\"adult\": 9.99, \"child\": 5.99}','1234 Rainbow Rd.','Las Vegas','NV',89123,'09:00:00','21:00:00'),(2,'AMC Town Square','{\"adult\": 11.99, \"child\": 6.99}','1234 Las Vegas Blvd','Las Vegas','NV',89123,'08:00:00','23:00:00'),(3,'Red Rock Movies','{\"adult\": 7.99, \"child\": 3.99}','1234 Red Rock Dr','Las Vegas','NV',89128,'12:00:00','23:00:00');
/*!40000 ALTER TABLE `theater` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theater_movie`
--

DROP TABLE IF EXISTS `theater_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theater_movie` (
  `theater_id` int NOT NULL,
  `movie_id` int NOT NULL,
  `num_of_screens` int DEFAULT NULL,
  PRIMARY KEY (`theater_id`,`movie_id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `theater_movie_ibfk_1` FOREIGN KEY (`theater_id`) REFERENCES `theater` (`theater_id`) ON DELETE CASCADE,
  CONSTRAINT `theater_movie_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theater_movie`
--

LOCK TABLES `theater_movie` WRITE;
/*!40000 ALTER TABLE `theater_movie` DISABLE KEYS */;
INSERT INTO `theater_movie` VALUES (1,1,3),(1,2,2),(1,5,1),(1,6,2),(1,8,2),(2,1,3),(2,8,3),(2,9,3),(2,10,3),(3,1,1),(3,2,1),(3,3,1),(3,4,1),(3,5,1),(3,6,1),(3,7,1),(3,8,1),(3,9,1),(3,10,1);
/*!40000 ALTER TABLE `theater_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theater_schedule`
--

DROP TABLE IF EXISTS `theater_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theater_schedule` (
  `theater_id` int NOT NULL,
  `movie_id` int NOT NULL,
  `time` time NOT NULL,
  `seats_available` int DEFAULT NULL,
  PRIMARY KEY (`theater_id`,`movie_id`,`time`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `theater_schedule_ibfk_1` FOREIGN KEY (`theater_id`) REFERENCES `theater` (`theater_id`) ON DELETE CASCADE,
  CONSTRAINT `theater_schedule_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theater_schedule`
--

LOCK TABLES `theater_schedule` WRITE;
/*!40000 ALTER TABLE `theater_schedule` DISABLE KEYS */;
INSERT INTO `theater_schedule` VALUES (1,1,'11:00:00',100),(1,2,'12:00:00',100),(1,5,'13:00:00',100),(1,6,'14:00:00',100),(1,8,'14:00:00',100),(2,1,'14:00:00',100),(2,8,'13:00:00',100),(2,9,'17:00:00',100),(2,10,'14:00:00',100),(3,1,'12:00:00',100),(3,2,'13:00:00',100),(3,3,'14:00:00',100),(3,4,'15:00:00',100),(3,5,'16:00:00',100),(3,6,'17:00:00',100),(3,7,'18:00:00',100),(3,8,'19:00:00',100),(3,9,'12:00:00',100),(3,10,'13:00:00',100);
/*!40000 ALTER TABLE `theater_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `ticket_id` int NOT NULL AUTO_INCREMENT,
  `theater_id` int NOT NULL,
  `movie_id` int NOT NULL,
  `time` time NOT NULL,
  `account_id` int NOT NULL,
  `payment_id` int NOT NULL,
  `quantity` int NOT NULL,
  `total` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`ticket_id`),
  KEY `theater_id` (`theater_id`,`movie_id`,`time`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`theater_id`, `movie_id`, `time`) REFERENCES `theater_schedule` (`theater_id`, `movie_id`, `time`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,1,1,'11:00:00',1,1234,4,39.96),(2,2,8,'13:00:00',2,4444,1,9.99),(3,1,2,'12:00:00',3,5432,3,29.97),(4,3,8,'19:00:00',5,8899,10,99.90);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_ticket_insert` BEFORE INSERT ON `ticket` FOR EACH ROW BEGIN
    SET NEW.total = NEW.quantity * 9.99;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_ticket_insert` AFTER INSERT ON `ticket` FOR EACH ROW BEGIN
  INSERT INTO payment
  SET payment_id = NEW.payment_id,
      credit_card = (SELECT credit_card FROM account where account_id = NEW.account_id),
      paid = true;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `ticket_information`
--

DROP TABLE IF EXISTS `ticket_information`;
/*!50001 DROP VIEW IF EXISTS `ticket_information`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ticket_information` AS SELECT 
 1 AS `ticket_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `time`,
 1 AS `quantity`,
 1 AS `total`,
 1 AS `paid`,
 1 AS `title`,
 1 AS `theater_name`,
 1 AS `address`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `schedule`
--

/*!50001 DROP VIEW IF EXISTS `schedule`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `schedule` AS select `theater`.`theater_id` AS `theater_id`,`theater`.`theater_name` AS `theater_name`,`movie`.`movie_id` AS `movie_id`,`movie`.`title` AS `title`,`theater_schedule`.`time` AS `time`,`theater_schedule`.`seats_available` AS `seats_available` from ((`theater` join `theater_schedule` on((`theater`.`theater_id` = `theater_schedule`.`theater_id`))) join `movie` on((`movie`.`movie_id` = `theater_schedule`.`movie_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ticket_information`
--

/*!50001 DROP VIEW IF EXISTS `ticket_information`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ticket_information` AS select `ticket`.`ticket_id` AS `ticket_id`,`account`.`first_name` AS `first_name`,`account`.`last_name` AS `last_name`,`ticket`.`time` AS `time`,`ticket`.`quantity` AS `quantity`,`ticket`.`total` AS `total`,`payment`.`paid` AS `paid`,`movie`.`title` AS `title`,`theater`.`theater_name` AS `theater_name`,`theater`.`address` AS `address` from ((((`ticket` join `account` on((`account`.`account_id` = `ticket`.`account_id`))) join `payment` on((`payment`.`payment_id` = `ticket`.`payment_id`))) join `movie` on((`movie`.`movie_id` = `ticket`.`movie_id`))) join `theater` on((`theater`.`theater_id` = `ticket`.`theater_id`))) */;
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

-- Dump completed on 2021-01-26 19:03:42
