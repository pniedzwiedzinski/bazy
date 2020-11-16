-- MySQL dump 10.17  Distrib 10.3.25-MariaDB, for debian-linux-gnueabihf (armv7l)
--
-- Host: localhost    Database: olejki_mysql
-- ------------------------------------------------------
-- Server version	10.3.25-MariaDB-0+deb10u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `charakterystyki`
--

DROP SCHEMA IF EXISTS olejki ;
CREATE SCHEMA IF NOT EXISTS olejki DEFAULT CHARACTER SET latin1 ;
USE olejki;



DROP TABLE IF EXISTS `charakterystyki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charakterystyki` (
  `IDCharakterystyki` int(11) NOT NULL,
  `Charakterystyka` varchar(50) NOT NULL,
  PRIMARY KEY (`IDCharakterystyki`),
  KEY `IDCharakterystyki` (`IDCharakterystyki`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charakterystyki`
--

LOCK TABLES `charakterystyki` WRITE;
/*!40000 ALTER TABLE `charakterystyki` DISABLE KEYS */;
INSERT INTO `charakterystyki` VALUES (1,'Uspokajający'),(2,'Pobudzający'),(3,'Uśmierzający'),(4,'Antyseptyczny'),(5,'Dezynfekujący'),(6,'Inhalacyjny'),(7,'Wygładzajacy'),(8,'Stymulujący'),(9,'Ściągający'),(10,'Rozgrzewający'),(11,'Antydepresyjny'),(12,'Przeciwzapalny'),(13,'Dezynfekcyjny'),(14,'Moczopędny'),(15,'Przeciwspazmowy'),(16,'Afrodyzjak'),(17,'Relaksujący'),(18,'Tonizujący'),(19,'Przeciwbólowy'),(20,'Antybakteryjny'),(21,'Antywirusowy'),(22,'Bakteriobójczy'),(23,'Zmniejszający przekrwienie'),(24,'Wykrztuśny'),(25,'Wzmacniający'),(26,'Równoważący'),(27,'Powodujący czerwienienie'),(28,'Odświeżający'),(29,'Przeciwzakaźny'),(30,'Uspokajający'),(31,'Przeciwrzybiczny'),(32,'Euforyczny'),(33,'Owadobójczy'),(34,'Antyseptyczny w chorobach płuc'),(35,'Trawienny'),(36,'Przeczyszczający'),(37,'Odświeżający');
/*!40000 ALTER TABLE `charakterystyki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `olejki`
--

DROP TABLE IF EXISTS `olejki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `olejki` (
  `IDOlejku` int(11) NOT NULL,
  `NazwaOlejku` varchar(50) NOT NULL,
  `NazwaLacinska` varchar(50) DEFAULT NULL,
  `IDTypuRosliny` int(11) DEFAULT NULL,
  `IDSkladnikaRosliny` int(11) DEFAULT NULL,
  `DataProdukcji` datetime DEFAULT NULL,
  `OkresWażności` int(11) DEFAULT 0,
  PRIMARY KEY (`IDOlejku`),
  KEY `IDOlejku` (`IDOlejku`),
  KEY `IDSkladnikaRosliny` (`IDSkladnikaRosliny`),
  KEY `IDTypuRosliny` (`IDTypuRosliny`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `olejki`
--

LOCK TABLES `olejki` WRITE;
/*!40000 ALTER TABLE `olejki` DISABLE KEYS */;
INSERT INTO `olejki` VALUES (1,'Bazylia','Ocimum Basilicum',4,1,'2014-12-02 00:00:00',480),(2,'Bergamota','Citrus Bergamia',2,2,'2015-12-02 00:00:00',480),(3,'Pieprz czarny','Piper Nigrum',3,3,'2015-10-08 00:00:00',480),(4,'Drzewo cedrowe','Cedrus Atlantica, Juniperus Virginiana',2,4,NULL,480),(5,'Rumianek lekarski','Matricaria Chamomilla',1,5,'2015-10-08 00:00:00',480),(6,'Rumian szlachetny','Anthemis Nobilis',1,5,'2015-10-08 00:00:00',480),(7,'Cynamon','Cinnamomum Zeylanicum',4,11,'2015-12-02 00:00:00',480),(8,'Cytronela','Cymbopogon Nardus',4,11,'2015-12-02 00:00:00',480),(9,'Szałwia muszkatołowa','Salvia Sclarea',1,5,'2015-10-08 00:00:00',480),(10,'Kolendra','Coriandrum Sativum',1,7,'2016-05-05 00:00:00',480),(11,'Cyprys','Cupressus Sempervirens',2,1,'2015-12-02 00:00:00',480),(12,'Eukaliptus','Eucalyptus Globulus',2,1,'2014-12-02 00:00:00',480),(13,'Kadzidło','Buswellia Thurifera',2,9,'2016-05-05 00:00:00',480),(14,'Geranium','Pelargonium Graveolens',5,1,'2016-05-05 00:00:00',480),(15,'Imbir','Zingiber Officinale',5,10,'2016-05-05 00:00:00',480),(16,'Grejpfrut','Citrus Paradisi',2,2,'2016-05-05 00:00:00',480),(17,'Jaśmin','Jasmineum Officinale',5,5,'2016-05-05 00:00:00',480),(18,'Jałowiec','Juniperus Communis',5,3,'2016-05-05 00:00:00',480),(19,'Lawenda','Lavandulus Officinalis, Lavandula Officinalis',5,5,'2016-05-05 00:00:00',480),(20,'Cytryna','Citrus limonum',2,2,'2014-12-02 00:00:00',480),(21,'Lemongrass','Cymbopogon Citratus',4,11,'2015-05-05 00:00:00',480),(22,'Lima','Citrus Aurantifolia',2,2,'2015-05-05 00:00:00',480),(23,'Majeranek','Origanum Marjorana',1,5,'2015-10-08 00:00:00',480),(24,'Balsam cytrynowy (Melissa)','Melissa Officinalis',1,1,'2014-12-02 00:00:00',480),(25,'Mirra','Commiphora Myrrha',2,9,'2014-10-08 00:00:00',480),(26,'Neroli','Citrus Aurantium',2,5,'2015-10-08 00:00:00',480),(27,'Gałka muszkatołowa','Myristica Frangrans',2,12,'2015-05-05 00:00:00',480),(28,'Pomarańcza','Citrus Aurantium',2,2,'2015-10-08 00:00:00',480),(29,'Palmarosa','Cymbopogon Martini',4,11,'2015-10-08 00:00:00',480),(30,'Paczula','Pogostemon Patchouli',5,1,'2015-10-08 00:00:00',480),(31,'Mięta pieprzowa','Mentha Piperata',1,1,'2014-10-08 00:00:00',480),(32,'Petitgrain','Citrus Aurantium',2,1,'2014-10-08 00:00:00',480),(33,'Sosna','Pinus Sylvestris',2,13,'2014-10-08 00:00:00',480),(34,'Róża','Rosa Centifolia',5,5,'2014-10-08 00:00:00',480),(35,'Rozmaryn','Rosmarinus Officinalis',1,1,'2015-10-08 00:00:00',480),(36,'Palisander','Aniba Rosaeodora',2,4,'2014-10-08 00:00:00',480),(37,'Drzewo sanadłowe','Santalum Album',2,4,'2015-12-02 00:00:00',480),(38,'Drzewko herbaciane','Melaleuca Alternifolia',2,1,'2015-12-02 00:00:00',480),(39,'Tymianek','Thymus Vulgaris',1,1,'2014-01-01 00:00:00',480),(40,'Wetiwer','Vetiveria Zizanoides',4,10,'2014-01-01 00:00:00',480),(41,'Ylang-ylang','Cananga Odorata',2,5,'2014-01-01 00:00:00',480),(42,'Koper','Foeniculum Vulgare',5,14,'2016-05-05 00:00:00',480),(43,'Róża otto','Rosa Damascena',5,5,'2015-10-08 00:00:00',480),(44,'Szałwia lekarska','Salvia Officinalis',1,1,'2014-10-08 00:00:00',480),(45,'Wanilia','Vanilla Planifolia',2,14,'2016-01-01 00:00:00',480),(46,'Benzoes','Styrax Benzoin',2,9,'2015-12-02 00:00:00',480),(47,'Lipa','Tilia Vulgaris',2,5,'2015-05-05 00:00:00',480);
/*!40000 ALTER TABLE `olejki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `olejkiceny`
--

DROP TABLE IF EXISTS `olejkiceny`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `olejkiceny` (
  `IDOlejku` int(11) NOT NULL,
  `Objetosc_ml` decimal(18,2) NOT NULL,
  `Cena` decimal(19,2) NOT NULL,
  PRIMARY KEY (`IDOlejku`),
  KEY `IDOlejku` (`IDOlejku`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `olejkiceny`
--

LOCK TABLES `olejkiceny` WRITE;
/*!40000 ALTER TABLE `olejkiceny` DISABLE KEYS */;
INSERT INTO `olejkiceny` VALUES (1,10.00,25.00),(2,3.00,7.00),(3,10.00,36.40),(4,20.00,37.50),(5,3.00,45.30),(6,10.00,13.00),(7,20.00,13.45),(8,10.00,32.99),(9,10.00,48.99),(10,3.00,95.90),(11,5.00,26.50),(12,10.00,9.80),(13,3.00,43.80),(14,5.00,33.00),(15,5.00,43.20),(16,10.00,62.90),(17,5.00,23.00),(18,5.00,13.00),(19,10.00,53.00),(20,5.00,43.50),(21,10.00,23.60),(22,10.00,24.99),(23,10.00,12.99),(24,15.00,46.80),(25,5.00,8.90),(26,10.00,45.60),(27,10.00,23.60),(28,3.00,13.00),(29,5.00,13.00),(30,5.00,33.50),(31,15.00,35.90),(32,10.00,93.80),(33,10.00,26.90),(34,3.00,26.50),(35,5.00,37.80),(36,5.00,15.80),(37,15.00,12.80),(38,10.00,3.89),(39,3.00,26.70),(40,5.00,24.78),(41,5.00,26.78),(42,15.00,26.90),(43,10.00,11.60),(44,10.00,12.50),(45,10.00,22.50),(46,3.00,23.30),(47,5.00,22.99);
/*!40000 ALTER TABLE `olejkiceny` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `olejkicharakterystyki`
--

DROP TABLE IF EXISTS `olejkicharakterystyki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `olejkicharakterystyki` (
  `IDOlejku` int(11) NOT NULL,
  `IDCharakterystyki` int(11) NOT NULL,
  PRIMARY KEY (`IDOlejku`,`IDCharakterystyki`),
  KEY `IDCharakterystyki` (`IDCharakterystyki`),
  KEY `IDOlejku` (`IDOlejku`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `olejkicharakterystyki`
--

LOCK TABLES `olejkicharakterystyki` WRITE;
/*!40000 ALTER TABLE `olejkicharakterystyki` DISABLE KEYS */;
INSERT INTO `olejkicharakterystyki` VALUES (1,1),(1,2),(1,3),(1,15),(1,35),(2,1),(2,4),(2,5),(2,6),(2,7),(3,2),(3,8),(3,10),(4,2),(4,4),(4,8),(4,9),(5,1),(5,3),(5,11),(5,12),(5,13),(5,14),(5,30),(6,1),(6,3),(6,11),(6,12),(6,13),(6,14),(7,10),(7,15),(7,16),(8,2),(8,3),(8,8),(9,1),(9,3),(9,10),(9,15),(9,17),(9,18),(9,32),(10,2),(10,8),(10,10),(10,19),(11,2),(11,8),(11,9),(11,18),(11,20),(12,4),(12,8),(12,19),(12,21),(12,22),(12,23),(12,24),(13,1),(13,18),(13,25),(14,1),(14,4),(14,9),(14,18),(14,26),(15,2),(15,10),(15,18),(15,27),(16,2),(16,14),(16,18),(16,28),(17,2),(17,3),(17,7),(17,11),(17,16),(18,2),(18,4),(18,9),(18,14),(18,20),(18,36),(19,1),(19,3),(19,4),(19,11),(19,19),(19,20),(19,22),(19,26),(19,29),(20,4),(20,7),(20,8),(20,9),(20,18),(20,22),(20,29),(21,1),(21,18),(21,20),(21,22),(21,36),(22,2),(22,7),(22,9),(22,18),(23,1),(23,10),(23,17),(23,19),(23,30),(24,1),(24,3),(24,7),(24,30),(25,1),(25,4),(25,12),(25,24),(25,31),(26,1),(26,20),(26,26),(26,32),(27,2),(27,8),(27,10),(28,1),(28,9),(28,11),(28,18),(28,30),(29,1),(29,3),(29,4),(29,18),(29,22),(30,1),(30,4),(30,9),(30,11),(30,12),(30,14),(30,16),(30,33),(31,2),(31,8),(31,15),(31,23),(31,35),(32,1),(32,4),(32,11),(32,18),(32,26),(33,24),(33,34),(34,1),(34,4),(34,11),(34,16),(34,18),(35,2),(35,4),(35,8),(35,19),(36,1),(36,4),(36,11),(36,18),(36,19),(36,22),(37,1),(37,3),(37,4),(37,9),(37,14),(37,16),(37,30),(38,2),(38,4),(38,8),(38,13),(38,18),(38,20),(38,21),(38,23),(38,29),(38,31),(39,4),(39,8),(39,18),(39,22),(39,29),(39,36),(40,1),(40,4),(40,17),(40,18),(40,25),(40,26),(40,35),(41,11),(41,16),(41,18),(41,30),(42,10),(42,35),(43,1),(43,11),(43,26),(44,1),(44,4),(44,5),(44,8),(44,22),(44,36),(44,37),(45,1),(45,3),(46,4),(46,11),(46,12),(46,24),(46,30),(46,36),(47,1),(47,3),(47,18),(47,30);
/*!40000 ALTER TABLE `olejkicharakterystyki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `olejkiilosci`
--

DROP TABLE IF EXISTS `olejkiilosci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `olejkiilosci` (
  `IDOlejku` int(11) NOT NULL,
  `IloscOpakowan` int(11) NOT NULL,
  PRIMARY KEY (`IDOlejku`),
  KEY `IDOlejku` (`IDOlejku`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `olejkiilosci`
--

LOCK TABLES `olejkiilosci` WRITE;
/*!40000 ALTER TABLE `olejkiilosci` DISABLE KEYS */;
INSERT INTO `olejkiilosci` VALUES (1,35),(2,1000),(3,44),(4,18),(5,100),(6,50),(7,100),(8,50),(9,10),(10,35),(11,35),(12,66),(13,10),(14,100),(15,879),(16,88),(17,50),(18,50),(19,50),(20,10),(21,35),(22,35),(23,68),(24,25),(25,100),(26,1000),(27,52),(28,56),(29,50),(30,50),(31,50),(32,76),(33,35),(34,35),(35,213),(36,22),(37,18),(38,10),(39,50),(40,50),(41,50),(42,35),(43,54),(44,35),(45,35),(46,35),(47,35);
/*!40000 ALTER TABLE `olejkiilosci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `olejkiostrzezenia`
--

DROP TABLE IF EXISTS `olejkiostrzezenia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `olejkiostrzezenia` (
  `IDOlejku` int(11) NOT NULL,
  `IDOstrzezenia` int(11) NOT NULL,
  PRIMARY KEY (`IDOlejku`,`IDOstrzezenia`),
  KEY `IDOlejku` (`IDOlejku`),
  KEY `IDOstrzezenia` (`IDOstrzezenia`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `olejkiostrzezenia`
--

LOCK TABLES `olejkiostrzezenia` WRITE;
/*!40000 ALTER TABLE `olejkiostrzezenia` DISABLE KEYS */;
INSERT INTO `olejkiostrzezenia` VALUES (1,3),(2,6),(3,10),(7,1),(7,5),(9,1),(9,7),(14,1),(14,2),(15,5),(17,1),(18,1),(20,5),(21,5),(23,1),(24,5),(27,8),(28,6),(31,1),(31,4),(34,1),(35,1),(35,9),(39,1),(39,3),(41,2);
/*!40000 ALTER TABLE `olejkiostrzezenia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `olejkistezenia`
--

DROP TABLE IF EXISTS `olejkistezenia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `olejkistezenia` (
  `IDOlejku` int(11) NOT NULL,
  `Stezenie` double NOT NULL,
  PRIMARY KEY (`IDOlejku`),
  KEY `IDOlejku` (`IDOlejku`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `olejkistezenia`
--

LOCK TABLES `olejkistezenia` WRITE;
/*!40000 ALTER TABLE `olejkistezenia` DISABLE KEYS */;
INSERT INTO `olejkistezenia` VALUES (1,0.3),(2,0.1),(3,0.3),(4,0.1),(5,0.6),(6,0.3),(7,0.5),(8,0.6),(9,0.85),(10,0.3),(11,0.85),(12,0.6),(13,0.3),(14,0.3),(15,0.3),(16,0.5),(17,0.5),(18,0.85),(19,0.6),(20,0.45),(21,0.1),(22,0.45),(23,0.5),(24,0.5),(25,0.45),(26,0.3),(27,0.1),(28,0.85),(29,0.1),(30,0.45),(31,0.5),(32,0.85),(33,0.6),(34,0.3),(35,0.45),(36,0.6),(37,0.5),(38,0.5),(39,0.6),(40,0.3),(41,0.5),(42,0.45),(43,0.5),(44,0.45),(45,0.6),(46,0.5),(47,0.85);
/*!40000 ALTER TABLE `olejkistezenia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `olejkizapachy`
--

DROP TABLE IF EXISTS `olejkizapachy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `olejkizapachy` (
  `IDOlejku` int(11) NOT NULL,
  `IDZapachu` int(11) NOT NULL,
  PRIMARY KEY (`IDOlejku`,`IDZapachu`),
  KEY `IDOlejku` (`IDOlejku`),
  KEY `IDZapachu` (`IDZapachu`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `olejkizapachy`
--

LOCK TABLES `olejkizapachy` WRITE;
/*!40000 ALTER TABLE `olejkizapachy` DISABLE KEYS */;
INSERT INTO `olejkizapachy` VALUES (1,2),(1,14),(1,31),(2,2),(2,14),(2,31),(3,7),(3,31),(3,32),(4,1),(4,33),(4,36),(5,14),(5,28),(5,29),(6,14),(6,28),(6,29),(7,25),(7,31),(7,32),(8,5),(8,25),(9,2),(9,14),(9,20),(10,2),(10,24),(10,31),(11,4),(11,31),(11,33),(11,36),(12,17),(12,24),(12,25),(13,10),(13,17),(13,25),(13,31),(13,36),(14,14),(14,24),(15,1),(15,31),(15,32),(16,2),(16,16),(16,32),(17,2),(17,6),(17,10),(17,19),(18,23),(18,33),(18,36),(19,2),(19,14),(20,6),(20,16),(20,24),(21,5),(21,28),(22,16),(22,24),(22,32),(23,1),(23,20),(23,21),(24,5),(24,24),(25,4),(25,8),(25,30),(26,14),(26,24),(26,29),(27,2),(27,9),(27,31),(28,2),(28,16),(29,2),(29,14),(29,15),(29,26),(30,9),(30,19),(30,22),(30,33),(31,11),(31,12),(31,24),(32,16),(32,33),(32,35),(33,13),(33,24),(34,14),(34,15),(35,3),(35,24),(35,28),(36,14),(36,31),(36,33),(36,34),(37,2),(37,33),(38,1),(38,31),(39,1),(39,28),(39,31),(40,19),(40,22),(40,33),(41,2),(41,6),(41,10),(41,34),(42,1),(42,31),(43,2),(43,14),(43,15),(44,28),(44,33),(45,2),(45,14),(46,2),(46,27),(47,2),(47,33);
/*!40000 ALTER TABLE `olejkizapachy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ostrzezenia`
--

DROP TABLE IF EXISTS `ostrzezenia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ostrzezenia` (
  `IDOstrzezenia` int(11) NOT NULL,
  `NumOstrzezenia` int(11) NOT NULL,
  `Ostrzezenie` varchar(50) NOT NULL,
  `Opis` longtext DEFAULT NULL,
  PRIMARY KEY (`IDOstrzezenia`),
  KEY `IDOstrzezenia` (`IDOstrzezenia`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ostrzezenia`
--

LOCK TABLES `ostrzezenia` WRITE;
/*!40000 ALTER TABLE `ostrzezenia` DISABLE KEYS */;
INSERT INTO `ostrzezenia` VALUES (1,5,'Ciąża','Nie należy stosować podczas ciąży.'),(2,9,'Podażniona lub zaczerwieniona skóra','Nie należy stosować, gdy skóra jest podrażniona lub zaczerwieniona.'),(3,1,'Wrażliwa skóra','Ten olejek może podrażniać wrażliwą skórę.'),(4,8,'Homeopatia','Nie należy stosować w połączeniu ze środkami homeopatycznymi.'),(5,4,'Podrażnienie skóry','Mocno rozpuścić (stosować rozczyn maksymalnie 1-procentowy).'),(6,2,'Zwiększający wrażliwość na światło','Zwiększa wrażliwość skóry na światło -- po użyciu należy unikać bezpośredniego światła słonecznego.'),(7,6,'Alkohol','W trakcie stosowania tego olejku nie należy spożywać alkoholu, gdyż może on wywoływać koszmary.'),(8,7,'Zaburzenia umysłowe',' Może powodować zaburzenia umysłowe, jeżeli jest stosowany w dużych dawkach i przez dłuższy okres czasu.'),(9,10,'Epilepsja','Nie należy stosować miejscowo (np. podczas masażu) u osób ze skłonnościami do epilepsji.'),(10,3,'Nerki','Nadmierne stosowanie może spowodować uszkodzenie nerek.');
/*!40000 ALTER TABLE `ostrzezenia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roslinyskladniki`
--

DROP TABLE IF EXISTS `roslinyskladniki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roslinyskladniki` (
  `IDSkladnikaRosliny` int(11) NOT NULL,
  `SkladnikRosliny` varchar(50) NOT NULL,
  PRIMARY KEY (`IDSkladnikaRosliny`),
  KEY `IDSkladnikaRosliny` (`IDSkladnikaRosliny`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roslinyskladniki`
--

LOCK TABLES `roslinyskladniki` WRITE;
/*!40000 ALTER TABLE `roslinyskladniki` DISABLE KEYS */;
INSERT INTO `roslinyskladniki` VALUES (1,'Liście'),(2,'Skórka owoców'),(3,'Jagody'),(4,'Drewno'),(5,'Kwiaty'),(6,'Kora'),(7,'Pestki owoców'),(8,'Szyszki'),(9,'Żywica'),(10,'Korzenie'),(11,'Cała roślina'),(12,'Wnętrze owocu'),(13,'Igły'),(14,'Nasiona');
/*!40000 ALTER TABLE `roslinyskladniki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roslinytypy`
--

DROP TABLE IF EXISTS `roslinytypy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roslinytypy` (
  `IDTypuRosliny` int(11) NOT NULL,
  `TypRosliny` varchar(50) NOT NULL,
  PRIMARY KEY (`IDTypuRosliny`),
  KEY `IDTypuRosliny` (`IDTypuRosliny`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roslinytypy`
--

LOCK TABLES `roslinytypy` WRITE;
/*!40000 ALTER TABLE `roslinytypy` DISABLE KEYS */;
INSERT INTO `roslinytypy` VALUES (1,'Zioło'),(2,'Drzewo'),(3,'Pnącze'),(4,'Trawa'),(5,'Krzew'),(6,'Roślina okopowa');
/*!40000 ALTER TABLE `roslinytypy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zapachy`
--

DROP TABLE IF EXISTS `zapachy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zapachy` (
  `IDZapachu` int(11) NOT NULL,
  `NumZapachu` int(11) NOT NULL,
  `Zapach` varchar(50) NOT NULL,
  PRIMARY KEY (`IDZapachu`),
  KEY `IDZapachu` (`IDZapachu`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zapachy`
--

LOCK TABLES `zapachy` WRITE;
/*!40000 ALTER TABLE `zapachy` DISABLE KEYS */;
INSERT INTO `zapachy` VALUES (1,9,'Ciepły'),(2,1,'Słodki'),(3,33,'Intensywny'),(4,5,'Dymny'),(5,14,'Cytrynowy'),(6,20,'Zmysłowy'),(7,7,'Gorący'),(8,23,'Gorzki'),(9,25,'Piżmowy'),(10,18,'Egzotyczny'),(11,29,'Chłodny'),(12,30,'Miętowy'),(13,32,'Żywiczny'),(14,2,'Kwiatowy'),(15,27,'Różany'),(16,4,'Cytrusowy'),(17,17,'Kamforowy'),(19,19,'Głęboki'),(20,15,'Orzechowy'),(21,22,'Pieprzowy'),(22,28,'Ziemny'),(23,21,'Sosnowy'),(24,16,'Świeży'),(25,13,'Mocny'),(26,26,'Trawiasty'),(27,36,'Waniliowy'),(28,12,'Ziołowy'),(29,11,'Słodko-gorzki'),(30,24,'Aromatyczny'),(31,3,'Korzenny'),(32,8,'Ostry'),(33,6,'Lesity'),(34,34,'Pełny'),(35,31,'Jasny'),(36,10,'Balsamiczny');
/*!40000 ALTER TABLE `zapachy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-16  8:40:43
