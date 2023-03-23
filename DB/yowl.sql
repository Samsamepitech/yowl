-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: yowl
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `name` varchar(50) DEFAULT NULL COMMENT 'Name',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='newTable';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Manga'),(2,'Street Art'),(3,'Animes'),(4,'Photography'),(5,'Books'),(6,'Dance'),(7,'Movies');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `post_id` int NOT NULL COMMENT 'Post Id',
  `user_id` int NOT NULL COMMENT 'User Id',
  `create_time` datetime NOT NULL COMMENT 'Create Time',
  `update_time` datetime DEFAULT NULL COMMENT 'Update Time',
  `content` text COMMENT 'Content',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COMMENT='newTable';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,1,1,'2022-03-29 09:59:15','2022-03-29 10:59:15','Et un commentaire ! Un !'),(2,2,2,'2022-03-29 09:59:15','2022-03-29 10:59:15','test'),(3,3,3,'2022-03-29 09:59:15','2022-03-29 10:59:15','Commentaire'),(4,4,4,'2022-03-29 09:59:15','2022-03-29 10:59:15','Commentaire Bidon'),(5,5,1,'2022-03-29 09:59:15','2022-03-29 10:59:15','OSEF'),(6,6,2,'2022-03-29 09:59:15','2022-03-29 10:59:15','Lol'),(7,7,3,'2022-03-29 09:59:15','2022-03-29 10:59:15','Test de commentaire'),(8,8,4,'2022-03-29 09:59:15','2022-03-29 10:59:15','Un commentaire pour remplir les commentaires'),(9,9,1,'2022-03-29 09:59:15','2022-03-29 10:59:15','C\'est chiant d\'inventer des commentaires'),(10,10,2,'2022-03-29 09:59:15','2022-03-29 10:59:15','Je trouve de moins de moins de commentaires'),(11,11,3,'2022-03-29 09:59:15','2022-03-29 10:59:15','Je sens que je vais faire du copier-coller'),(12,1,4,'2022-03-29 09:59:15','2022-03-29 10:59:15','Allez plus que quelques commentaires à trouver'),(13,2,1,'2022-03-29 09:59:15','2022-03-29 10:59:15','Même si ce sont des commentaires bidons'),(14,3,2,'2022-03-29 09:59:15','2022-03-29 10:59:15','Le contenu a peu d\'importance'),(15,4,3,'2022-03-29 09:59:15','2022-03-29 10:59:15','Il faut balancer du commentaire'),(16,5,4,'2022-03-29 09:59:15','2022-03-29 10:59:15','Allez plus que 3 commentaires à trouver'),(17,6,1,'2022-03-29 09:59:15','2022-03-29 10:59:15','2 ...'),(18,7,2,'2022-03-29 09:59:15','2022-03-29 10:59:15','The last one');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `content` text NOT NULL COMMENT 'Content',
  `image` varchar(50) DEFAULT NULL COMMENT 'Image',
  `categorie_id` int NOT NULL COMMENT 'Categorie Id',
  `user_id` int NOT NULL COMMENT 'User Id',
  `create_time` datetime NOT NULL COMMENT 'Create Time',
  `update_time` datetime DEFAULT NULL COMMENT 'Update Time',
  `comment_count` bigint DEFAULT NULL COMMENT 'content',
  `posted` bigint DEFAULT NULL,
  `saved` bigint DEFAULT NULL,
  `stars` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categorie_id` (`categorie_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='newTable';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'C\'est vendredi, c\'est une connerie.\n\nEn pleine crise existentielle suite à beaucoup trop de vidéos de géopolitique, d\'environnement et de réflexions sur l\'humain (devinez les chaînes YouTube, pour le coup anglaises), je sollicite votre sollicitude pour me/nous faire marrer avant le dimanche qui s\'annonce pour le moins... Cocasse.\n\nQue ça soit via des blagues, des vidéos, des \'Aujourd\'hui j\'ai baisé haut\' en tous genres, ceux qui me feront le plus rire auront leur accès privilégié à Reddit Premium via votre humble serviteur.','no_image',1,1,'2022-03-29 09:59:15','2022-03-29 10:59:15',0,NULL,NULL,NULL),(2,'Bonjour à tous ! J’habite dans le sud de la France dans un tout petit village, nous sommes quelques voisins tous propriétaires, avec un problème, un de nos voisins ( qui lui est locataire de sa maison ) à racheter un petit garage a son propriétaire, sur le terrain du garage il y a un énorme arbre centenaire.','no_image',2,2,'2022-03-29 09:59:15','2022-03-29 10:59:15',0,NULL,NULL,NULL),(3,'Le problème est qu’il compte transformer le garage en maison à étage. Donnant du vis à vis direct sur nous, ainsi que les autres voisins. Donc nous avons tous fait opposition à sa demande de travaux, et c’est également mon chemin, et donc je suis la personnes qui doit lui donner les droit de servitudes. Ce que je ne ferais pas, car ne voulons pas d’une maison à étage devant notre nez à tous.','no_image',3,3,'2022-03-29 09:59:15','2022-03-29 10:59:15',0,NULL,NULL,NULL),(4,'My turtle follows me and seeks out affection. Biologist have reached out to me because this is not even close to normal behavior. He just started one day and has never stopped. I don’t know why.','no_image',4,4,'2022-03-29 09:59:15','2022-03-29 10:59:15',0,NULL,NULL,NULL),(5,'Everyone on this planet has been affected by the SARS-Cov-2/Coronavirus/Covid-19 pandemic. You may have been in lockdown, you may have been forced to work under some form of duress, you may have lost a loved one to the disease, you may be left with long term side effects of the illness, you may have found that regular food, housing, and/or medical care is less attainable or more expensive now.','no_image',5,1,'2022-03-29 09:59:15','2022-03-29 10:59:15',0,NULL,NULL,NULL),(6,'We could have been better off months ago, but disinformation and lies have been allowed to spread readily through inaction and malice, and have dragged this on at the cost of lives. There are those who deny that the pandemic even exists, there are those who think that wearing a mask will literally suffocate you, there are those who think it\'s no worse than a regular flu virus, that it\'s a bioweapon, and everything in between. This volume of blatant misinformation is problematic and dangerous.','no_image',6,2,'2022-03-29 09:59:15','2022-03-29 10:59:15',0,NULL,NULL,NULL),(7,'2,400 CG artists were each given the same base animation and challenged to make something unique out of it. These are just some of the clips from the top 100 artists.\n','no_image',7,3,'2022-03-29 09:59:15','2022-03-29 10:59:15',0,NULL,NULL,NULL),(8,'More than 150 senior Russian officials sign open letter condemning Putin\'s invasion of Ukraine as \'an unprecedented atrocity\' and warn of \'catastrophic consequences\' while urging citizens \'not to participate\'\n','no_image',1,4,'2022-03-29 09:59:15','2022-03-29 10:59:15',0,NULL,NULL,NULL),(9,'This is the most complex origami I have ever done - 2,5 years of designing and 109 hours of folding a single square sheet of paper into dueling knights, without any cutting or tearing.','no_image',2,1,'2022-03-29 09:59:15','2022-03-29 10:59:15',0,NULL,NULL,NULL),(10,'About 3 years ago I used to work as a videographer doing social media content for a 7 figure company. I was paid roughly just better than minimum wage and was cranking out (at one point) 50 videos a day. I was freelancing and was on a loose contract. I was desperate for the money.','no_image',3,2,'2022-03-29 09:59:15','2022-03-29 10:59:15',0,NULL,NULL,NULL),(11,'It was an insane amount of work and however I managed to do it for 6 months is beyond me, especially for how shitty I was paid.\n\nThe office was an incredibly bitter and snide place and it was clear that management would purpolsely stir shit to watch staff fight as a form of entertainment. I kept well away from it but it was incredibly stressful on top of video work.','no_image',4,3,'2022-03-29 09:59:15','2022-03-29 10:59:15',0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `name` varchar(50) NOT NULL COMMENT 'Name',
  `surname` varchar(50) NOT NULL COMMENT 'Surname',
  `username` varchar(50) NOT NULL COMMENT 'Username',
  `birth_date` date NOT NULL COMMENT 'Birthdate',
  `email` varchar(50) NOT NULL COMMENT 'Email',
  `password` varchar(255) NOT NULL COMMENT 'Password',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `role` tinyint NOT NULL COMMENT 'Role',
  `create_time` datetime DEFAULT NULL COMMENT 'Create Time',
  `update_time` datetime DEFAULT NULL COMMENT 'Update Time',
  `profile_pic` varchar(255) DEFAULT NULL COMMENT 'Profile Picture',
  `description` varchar(255) DEFAULT NULL COMMENT 'Description',
  `posts_count` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),    
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='newTable';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Alexandre','Anin','alex24','1981-10-24','alexandre.anin@epitech.eu','$2y$10$kKyYQ0ZMA68tQMK1iuaLnum6jcuZ8XXfahP7GxBUOPFmWvrAQZ1mW',NULL,1,'2022-03-29 09:59:15','2022-03-29 10:59:15','no_pic','J\'aime pas les descriptions !',NULL),(2,'Vladimira','Grosjean','vladi24','1981-10-24','vladimira.grosjean@epitech.eu','$2y$10$kKyYQ0ZMA68tQMK1iuaLnum6jcuZ8XXfahP7GxBUOPFmWvrAQZ1mW',NULL,1,'2022-03-29 09:59:15','2022-03-29 10:59:15','no_pic','J\'aime pas les descriptions !',NULL),(3,'Samira','Taibi','samira24','1981-10-24','samira.taibi@epitech.eu','$2y$10$kKyYQ0ZMA68tQMK1iuaLnum6jcuZ8XXfahP7GxBUOPFmWvrAQZ1mW',NULL,1,'2022-03-29 09:59:15','2022-03-29 10:59:15','no_pic','J\'aime pas les descriptions !',NULL),(4,'Koko','Koko','kokoko','1981-10-24','koko.koko@epitech.eu','$2y$10$kKyYQ0ZMA68tQMK1iuaLnum6jcuZ8XXfahP7GxBUOPFmWvrAQZ1mW',NULL,0,'2022-03-29 09:59:15','2022-03-29 10:59:15','no_pic','J\'aime pas les descriptions !',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-11 15:54:43
