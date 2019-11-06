CREATE DATABASE  IF NOT EXISTS `app_restaurante` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `app_restaurante`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: app_restaurante
-- ------------------------------------------------------
-- Server version	5.5.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `restaurante`
--

DROP TABLE IF EXISTS `restaurante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `precio` varchar(255) DEFAULT NULL,
  `categoria` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurante`
--

LOCK TABLES `restaurante` WRITE;
/*!40000 ALTER TABLE `restaurante` DISABLE KEYS */;
INSERT INTO `restaurante` VALUES (1,'Bodegon de Arguello','Ricardo Rojas 1000','Familiar','/assets/img/arguello.png','bajo','Bodegon','https://www.tripadvisor.com.ar/Restaurant_Review-g312768-d2168551-Reviews-El_Bodegon_de_Arguello-Cordoba_Province_of_Cordoba_Central_Argentina.html'),(3,'Italy Nva Cba','Estrada 800','Jovenes','/assets/img/it-nvacba.png','medio','Restaurante','http://www.ititaly.com.ar/'),(4,'Italy Centro','Estrada 800','Comercial','/assets/img/it-ctro.png','alto','Restaurante','http://www.ititaly.com.ar/'),(5,'Junior B','Estrada 800','Comercial','/assets/img/betos.png','alto','Comida Rapida','https://www.juniorb.com.ar/'),(6,'Su casa','Martinolli 100','Familiar','/assets/img/sucasa.png','bajo','Bodegon','https://www.tripadvisor.com.ar/Restaurant_Review-g312754-d10151127-Reviews-Su_Casa_Restaurante_Pilar-Pilar_Province_of_Buenos_Aires_Central_Argentina.html'),(7,'Bonanza','Gauss 500','Familiar...','/assets/img/bonanza.png','medio','Comida Rapida','https://www.tripadvisor.com.ar/Restaurant_Review-g2590219-d7983605-Reviews-Parrilla_Restaurante_Bonanza-Luis_Guillon_Province_of_Buenos_Aires_Central_Argen.html'),(8,'Lomito 348','Martinolli','Fast food','/assets/img/betos.png','medio','Comida Rapida','https://www.lomitos348.com/'),(9,'Betos','San Juan 400','Lomitos','/assets/img/betos.png','medio','Comida Rapida','https://betos.com.ar/'),(10,'La Perla','Colon 650','Comedor...','/assets/img/laperla.png','medio','Bodegon','http://www.laperlarestaurante.com.ar/'),(11,'Bodegon de la Villa','Ricardo Rojas 1000','Familiar','/assets/img/va.png','Moderado','Bodegon','https://antigourmet.com.ar/'),(12,'Don Amir','Avellaneda 500','Comida arabe','/assets/img/va.png','alto','Arabe','http://lomejordelacocinaarabe.com/');
/*!40000 ALTER TABLE `restaurante` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-05 20:24:40
