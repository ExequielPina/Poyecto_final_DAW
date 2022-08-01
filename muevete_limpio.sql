-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: muevete_limpio
-- ------------------------------------------------------
-- Server version	5.7.30-log

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
-- Table structure for table `creador`
--

DROP TABLE IF EXISTS `creador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creador` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creador`
--

LOCK TABLES `creador` WRITE;
/*!40000 ALTER TABLE `creador` DISABLE KEYS */;
INSERT INTO `creador` VALUES (1,'Exequiel'),(2,'Camila');
/*!40000 ALTER TABLE `creador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patinetes`
--

DROP TABLE IF EXISTS `patinetes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patinetes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `marca` varchar(50) DEFAULT NULL,
  `modelo` varchar(60) DEFAULT NULL,
  `caracteristicas` longtext,
  `precio` int(4) DEFAULT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  `potencia` int(5) DEFAULT NULL,
  `velocidad` int(3) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `creadorId` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `creadorId_idx` (`creadorId`),
  CONSTRAINT `creadorId` FOREIGN KEY (`creadorId`) REFERENCES `creador` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patinetes`
--

LOCK TABLES `patinetes` WRITE;
/*!40000 ALTER TABLE `patinetes` DISABLE KEYS */;
INSERT INTO `patinetes` VALUES (52,' Pure Air','Go','El nuevo patinete elÃ©ctrico Pure Air Go estÃ¡ diseÃ±ado para los desplazamientos diarios en todas las condiciones. Con una autonomÃ­a de 20 km, un chasis impermeable lÃ­der en su clase y neumÃ¡ticos de 10\" resistentes a los pinchazos',300,'addd04ed32efd08ce757a051da7b6133jpg',550,35,'2022-03-21',NULL),(54,'INFINITON ','L8 ','Patinete elÃ©ctrico - INFINITON L8 CITY MOB, 350 W, 100 kg, 7800w, 60 km/h, El Scooter ElÃ©ctrico Infiniton CityMob se caracteriza por tener una autonomÃ­a en 20 - 25 Km.',200,'117268c45c4e492366dd072f0254bf1fjpg',3000,60,'2022-04-13',2),(68,' Cecotec','W-1300','Patinete elÃ©ctrico - Youin You-Go L, 350 W, 25 km, 7500 mAh, Freno por disco, Negro + Soporte mÃ³vil',360,'27e4118d2149e52371a09232191bbab8jpg',800,45,'2022-04-29',1),(69,' Xiaomi','R1','Patinete elÃ©ctrico - Ducati PRO-II EVO, 10\", 1200 W, 25 km/h, AutonomÃ­a de 40 km, Hasta 100 kg, Negro',450,'dfe0128ef72762aaca9bef37d8925a5ajpg',1200,50,'2022-04-29',2),(70,' Ducati','PRO-II EVO','Patinete elÃ©ctrico - Ducati PRO-II EVO, 10\", 750 W, 55 km/h, AutonomÃ­a de 40 km, Hasta 100 kg, Negro',380,'6e54ae78fb9676779c63576efb4b5482jpg',750,55,'2022-04-29',2),(71,' JOYOR','S10-S','El patinete elÃ©ctrico S10-S cada detalle estÃ¡ cuidadosamente diseÃ±ado para asegurar que puedas disfrutar de una experiencia de conducciÃ³n tanto urbana como off-road',330,'b83605751f27b7c98a3e9b93c03233b1jpg',800,50,'2022-04-29',1),(72,' SmartGyro','Rockway ','Patinete elÃ©ctrico - SmartGyro Rockway Pro, 10\", 1800 W, 70 km/h, Hasta 120 kg, 15000 mAh',550,'577cbdf8eae7b46f3e89cdb0db3fc42ejpg',1800,70,'2022-04-29',2),(82,' Xiaomi','F1','Patinete elÃ©ctrico Youin You-Go L de color negro plegable con una autonomÃ­a de hasta 25 km, \r\nun sistema de frenado por disco y una pantalla digital. \r\nAdemÃ¡s, el producto incluye y un soporte para mÃ³viles.',450,'da85b8aee8565d8bf1ab022d9d0503d4jpg',1500,45,'2022-05-05',2);
/*!40000 ALTER TABLE `patinetes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repuestos`
--

DROP TABLE IF EXISTS `repuestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repuestos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `marca` varchar(45) DEFAULT NULL,
  `caracteristicas` longtext,
  `precio` int(4) DEFAULT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  `nombre` varchar(70) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `repuestoCreadorId` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `repCreadorId_idx` (`id`,`repuestoCreadorId`),
  KEY `creadorId_idx` (`repuestoCreadorId`),
  CONSTRAINT `repuestoCreadorId` FOREIGN KEY (`repuestoCreadorId`) REFERENCES `creador` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repuestos`
--

LOCK TABLES `repuestos` WRITE;
/*!40000 ALTER TABLE `repuestos` DISABLE KEYS */;
INSERT INTO `repuestos` VALUES (3,' ANSENI','Ruedas Macizas para Patinete Electrico Rueda de 8.5Pulgadas,NeumÃ¡ticos de Reemplazo, Rueda de Repuesto Antipinchazo Compatible con Xiaomi Scooter Electrico M365/M365 Pro, Xiaomi 1S, Cecotec ',60,'f624c358c2c2964640e070395bf8e577jpg','Rueda patinete xiaomi ',NULL,NULL),(8,' Cecotec','BaterÃ­a de litio para equilibrio inteligente de monociclo elÃ©ctrico dos ruedas 36 V 4400 mAh. ',85,'ed28d8d69c62e6d56df8fb35f1da8ab3jpg','bateria patinete xiaomi ',NULL,NULL),(9,' Xiaomi ','Ambos modelos de motor (250W y 300W) son compatibles con todos los modelos de patinete. Es decir, podemos montarle un motor de 300W a un patinete Xiaomi m365 con motor de 250W, en este caso mejoraremos la potencia del patinete.',65,'bc908573cfaaa3607df08550f3368842jpg','Motor patinete  ',NULL,NULL),(10,' Cecotec','BaterÃ­a fabricada con pilas de calidad. Tiene una autonomÃ­a de 30 km dependiendo siempre del perfil del usuario en cuanto al peso y la altura, pendientes y estado de la carretera.',45,'3368b36e5c690ee12182f0d40050321bjpg','BaterÃ­a patinete Flash ',NULL,NULL),(11,' Cecotec','zxczxczxczczxc',333,'e6a356459ed6924b02022d2f250f9a47jpg','act','2022-04-18',1);
/*!40000 ALTER TABLE `repuestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int(1) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` char(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (3,'email@email.com','$2y$10$XoehpyLRewKwaUXJY1E44uDiBZS/qNiQjdreq0X/KX6jjmRTgQG0K');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-06 11:12:29
