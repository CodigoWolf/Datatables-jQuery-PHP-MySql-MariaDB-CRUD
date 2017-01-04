-- MySQL dump 10.16  Distrib 10.1.17-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: prueba
-- ------------------------------------------------------
-- Server version	10.1.17-MariaDB-1~xenial

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
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `apellidos` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `dni` varchar(8) COLLATE latin1_spanish_ci NOT NULL,
  `estado` bit(1) DEFAULT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Angelo','Uriol','48125800',''),(2,'Petter','Ríos','49051200',''),(3,'Jorge','Ríos','22526385',''),(4,'Amelia','Abarca','25123653',''),(5,'Geovanny','Ríos','47859612',''),(6,'Benita','Ávila','15234871',''),(7,'William','Duran','47806512',''),(8,'Jaider','Miranda','47582389','\0'),(9,'Daniel','Vereau','47862532','\0'),(10,'Alex','Montoya','42856510','\0'),(11,'Lino','Flores','42850365','\0'),(12,'Alejandra','Abarca','49856321',''),(13,'Yoshi','Takeuchi','45126355',''),(14,'Jonathan','Ganoza','45982012','\0'),(15,'Daniel','Abarca','14851204',''),(16,'Almendra','Abarca','53127854',''),(17,'Luis','Cordova','50125896','\0'),(18,'David','Rojas','45891201','\0'),(19,'Kevin','Ávila','48521369','\0'),(20,'Violeta','Abarca','27416589',''),(21,'Marco','Cordova','46851298',''),(22,'Carlos','Ávalos','26859103','');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-09 15:50:23
