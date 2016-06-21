-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb_cinema
-- ------------------------------------------------------
-- Server version	5.7.13-log

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
-- Table structure for table `halls`
--

DROP TABLE IF EXISTS `halls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `halls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `num_rows` int(11) NOT NULL,
  `num_col` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `halls`
--

LOCK TABLES `halls` WRITE;
/*!40000 ALTER TABLE `halls` DISABLE KEYS */;
INSERT INTO `halls` VALUES (1,'Красный',7,9),(2,'Зеленый',6,11),(3,'Синий',8,14),(4,'Фиолетовый',5,10),(5,'Желтый',7,12),(6,'Белый',5,8),(7,'Оранжевый',9,15),(8,'Серебристый',8,18);
/*!40000 ALTER TABLE `halls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `duration` time(4) NOT NULL,
  `poster` tinytext,
  `description` longtext NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Angry birds','01:35:00.0000','http://www.kinocenter.ru/upload/iblock/44d/44dfe0cfce64a9e960832e75c0e4a7b0.jpg','Режиссер: Клэй Кэйтис, Фергал Рейли\nСтрана: Финляндия, США\nФильм расскажет о том, как началось знаменитое противостояние птичек и свинок, персонажей популярной компьютерной игры, а также раскроет некоторые секреты любимых героев.','2016-05-12','2016-06-30'),(2,'Алиса в зазеркалье','02:10:00.0000','http://www.kinocenter.ru/upload/iblock/b8b/b8b767d6145205dbe35a6145443ccad3.jpg','Режиссер: Джеймс Бобин\nВ ролях: Миа Васиковска, Джонни Депп, Энн Хэтэуэй и др.\nСтрана: США\nНа этот раз главной героине предстоит отправиться в путешествие во времени, полное неожиданностей и ярких открытий, чтобы спасти своего друга, Безумного Шляпника.','2016-05-26','2016-07-18'),(3,'Варкрафт','02:45:00.0000','http://www.kinocenter.ru/upload/iblock/76e/76effd735c8d4bcb3d778f8346807daa.jpg','Режиссер: Дункан Джонс\nВ ролях: Трэвис Фиммел, Бен Фостер, Пола Пэттон и др\nСтрана: США\nВеками магия и неприступные стены защищали людей от любых напастей. Но древнее зло, побежденное и забытое тысячелетия назад, пробудилось. В самом сердце королевства открылся темный портал, и раса невиданных существ наводнила земли Азерота. Так начались события, призванные навсегда изменить судьбу этого мира.','2016-05-26','2016-07-25'),(4,'Выживший','02:45:00.0000','http://www.kinocenter.ru/upload/iblock/19e/19e6cd3a4cb2a79406dfac7a048932d0.jpg','Режиссер: Алехандро Гонсалес Иньярриту.\nВ ролях: Леонардо ДиКаприо,Том Харди\nСтрана: США\nОхотник Хью Гласс серьезно ранен на неизведанных просторах американского Дикого Запада. Товарищ Хью по отряду покорителей новых земель Джон Фицжеральд предательски оставляет его умирать в одиночестве. Теперь у Гласса осталось только одно оружие — его сила воли. Он готов бросить вызов первобытной природе, суровой зиме и враждебным племенам индейцев, только чтобы выжить и отомстить Фицжеральду.','2016-04-24','2016-06-24'),(5,'Иллюзия обмана 2','02:35:00.0000','http://www.kinocenter.ru/upload/iblock/f0b/f0b8bdc16606b02cf12533188eef00fa.jpg','Режиссер: Джон М. Чу.\nВ ролях: Лиззи Каплан, Дэниэл Рэдклифф, Дэйв Франко, Марк Руффало, Джесси Айзенберг, Морган Фриман, Вуди Харрельсон.\nСтрана: США\n«Четыре всадника», команда лучших иллюзионистов мира, снова в сборе! Их «магия» стала еще совершеннее, а враги — опаснее. На сей раз им предстоит спасти свою репутацию и вывести на чистую воду жестокого техномагната…','2016-06-09','2016-08-08'),(6,'Славные парни','01:55:00.0000','http://www.kinocenter.ru/upload/iblock/a3b/a3ba505dd2e1478943ca0267735d22a3.jpg','Режиссер: Шейн Блэк\nВ ролях: Рассел Кроу,Райан Гослинг, Ким Бейсингер\nСтрана: США-Великобритания.\nЧто бывает, когда напарником брутального костолома становится субтильный лопух? Наемный охранник Джексон Хили и частный детектив Холланд Марч вынуждены работать в паре, чтобы распутать плевое дело о пропавшей девушке, которое оборачивается преступлением века. Смогут ли парни разгадать сложный ребус, если у каждого из них — свои, весьма индивидуальные, методы… ','2016-06-09','2016-07-30'),(7,'Стажёр','02:20:00.0000','http://www.kinocenter.ru/upload/iblock/dfd/dfd10a8eec04e5c7f1dce5b125258eb6.jpg','Режиссер: Нэнси Майерс\nВ ролях: Энн Хэтэуэй, Роберт Де Ниро, Рене Руссо.\nСтрана: США\nМудрая лирическая, с элементами сентиментальности, комедия ЖИЗНИ. Когда на съемочной площадке встречаются два обладателя Оскар кино получается как минимум качественным. А участие Роберта Де Ниро гарантирует, что оно будет ещё и смешным. 70-летний вдовец Бен Уитакер обнаруживает, что выход на пенсию — еще не конец. Пользуясь случаем, он становится старшим стажером на сайте моды под руководством Джулс Остин','2016-06-09','2016-07-30');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seats`
--

DROP TABLE IF EXISTS `seats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idhall` int(11) NOT NULL,
  `num_row` int(11) NOT NULL,
  `num_seat` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=695 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seats`
--

LOCK TABLES `seats` WRITE;
/*!40000 ALTER TABLE `seats` DISABLE KEYS */;
INSERT INTO `seats` VALUES (1,1,1,1),(2,1,1,2),(3,1,1,3),(4,1,1,4),(5,1,1,5),(6,1,1,6),(7,1,1,7),(8,1,1,8),(9,1,1,9),(10,1,2,1),(11,1,2,2),(12,1,2,3),(13,1,2,4),(14,1,2,5),(15,1,2,6),(16,1,2,7),(17,1,2,8),(18,1,2,9),(19,1,3,1),(20,1,3,2),(21,1,3,3),(22,1,3,4),(23,1,3,5),(24,1,3,6),(25,1,3,7),(26,1,3,8),(27,1,3,9),(28,1,4,1),(29,1,4,2),(30,1,4,3),(31,1,4,4),(32,1,4,5),(33,1,4,6),(34,1,4,7),(35,1,4,8),(36,1,4,9),(37,1,5,1),(38,1,5,2),(39,1,5,3),(40,1,5,4),(41,1,5,5),(42,1,5,6),(43,1,5,7),(44,1,5,8),(45,1,5,9),(46,1,6,1),(47,1,6,2),(48,1,6,3),(49,1,6,4),(50,1,6,5),(51,1,6,6),(52,1,6,7),(53,1,6,8),(54,1,6,9),(55,1,7,1),(56,1,7,2),(57,1,7,3),(58,1,7,4),(59,1,7,5),(60,1,7,6),(61,1,7,7),(62,1,7,8),(63,1,7,9),(64,2,1,1),(65,2,1,2),(66,2,1,3),(67,2,1,4),(68,2,1,5),(69,2,1,6),(70,2,1,7),(71,2,1,8),(72,2,1,9),(73,2,1,10),(74,2,1,11),(75,2,2,1),(76,2,2,2),(77,2,2,3),(78,2,2,4),(79,2,2,5),(80,2,2,6),(81,2,2,7),(82,2,2,8),(83,2,2,9),(84,2,2,10),(85,2,2,11),(86,2,3,1),(87,2,3,2),(88,2,3,3),(89,2,3,4),(90,2,3,5),(91,2,3,6),(92,2,3,7),(93,2,3,8),(94,2,3,9),(95,2,3,10),(96,2,3,11),(97,2,4,1),(98,2,4,2),(99,2,4,3),(100,2,4,4),(101,2,4,5),(102,2,4,6),(103,2,4,7),(104,2,4,8),(105,2,4,9),(106,2,4,10),(107,2,4,11),(108,2,5,1),(109,2,5,2),(110,2,5,3),(111,2,5,4),(112,2,5,5),(113,2,5,6),(114,2,5,7),(115,2,5,8),(116,2,5,9),(117,2,5,10),(118,2,5,11),(119,2,6,1),(120,2,6,2),(121,2,6,3),(122,2,6,4),(123,2,6,5),(124,2,6,6),(125,2,6,7),(126,2,6,8),(127,2,6,9),(128,2,6,10),(129,2,6,11),(130,3,1,1),(131,3,1,2),(132,3,1,3),(133,3,1,4),(134,3,1,5),(135,3,1,6),(136,3,1,7),(137,3,1,8),(138,3,1,9),(139,3,1,10),(140,3,1,11),(141,3,1,12),(142,3,1,13),(143,3,1,14),(144,3,2,1),(145,3,2,2),(146,3,2,3),(147,3,2,4),(148,3,2,5),(149,3,2,6),(150,3,2,7),(151,3,2,8),(152,3,2,9),(153,3,2,10),(154,3,2,11),(155,3,2,12),(156,3,2,13),(157,3,2,14),(158,3,3,1),(159,3,3,2),(160,3,3,3),(161,3,3,4),(162,3,3,5),(163,3,3,6),(164,3,3,7),(165,3,3,8),(166,3,3,9),(167,3,3,10),(168,3,3,11),(169,3,3,12),(170,3,3,13),(171,3,3,14),(172,3,4,1),(173,3,4,2),(174,3,4,3),(175,3,4,4),(176,3,4,5),(177,3,4,6),(178,3,4,7),(179,3,4,8),(180,3,4,9),(181,3,4,10),(182,3,4,11),(183,3,4,12),(184,3,4,13),(185,3,4,14),(186,3,5,1),(187,3,5,2),(188,3,5,3),(189,3,5,4),(190,3,5,5),(191,3,5,6),(192,3,5,7),(193,3,5,8),(194,3,5,9),(195,3,5,10),(196,3,5,11),(197,3,5,12),(198,3,5,13),(199,3,5,14),(200,3,6,1),(201,3,6,2),(202,3,6,3),(203,3,6,4),(204,3,6,5),(205,3,6,6),(206,3,6,7),(207,3,6,8),(208,3,6,9),(209,3,6,10),(210,3,6,11),(211,3,6,12),(212,3,6,13),(213,3,6,14),(214,3,7,1),(215,3,7,2),(216,3,7,3),(217,3,7,4),(218,3,7,5),(219,3,7,6),(220,3,7,7),(221,3,7,8),(222,3,7,9),(223,3,7,10),(224,3,7,11),(225,3,7,12),(226,3,7,13),(227,3,7,14),(228,3,8,1),(229,3,8,2),(230,3,8,3),(231,3,8,4),(232,3,8,5),(233,3,8,6),(234,3,8,7),(235,3,8,8),(236,3,8,9),(237,3,8,10),(238,3,8,11),(239,3,8,12),(240,3,8,13),(241,3,8,14),(242,4,1,1),(243,4,1,2),(244,4,1,3),(245,4,1,4),(246,4,1,5),(247,4,1,6),(248,4,1,7),(249,4,1,8),(250,4,1,9),(251,4,1,10),(252,4,2,1),(253,4,2,2),(254,4,2,3),(255,4,2,4),(256,4,2,5),(257,4,2,6),(258,4,2,7),(259,4,2,8),(260,4,2,9),(261,4,2,10),(262,4,3,1),(263,4,3,2),(264,4,3,3),(265,4,3,4),(266,4,3,5),(267,4,3,6),(268,4,3,7),(269,4,3,8),(270,4,3,9),(271,4,3,10),(272,4,4,1),(273,4,4,2),(274,4,4,3),(275,4,4,4),(276,4,4,5),(277,4,4,6),(278,4,4,7),(279,4,4,8),(280,4,4,9),(281,4,4,10),(282,4,5,1),(283,4,5,2),(284,4,5,3),(285,4,5,4),(286,4,5,5),(287,4,5,6),(288,4,5,7),(289,4,5,8),(290,4,5,9),(291,4,5,10),(292,5,1,1),(293,5,1,2),(294,5,1,3),(295,5,1,4),(296,5,1,5),(297,5,1,6),(298,5,1,7),(299,5,1,8),(300,5,1,9),(301,5,1,10),(302,5,1,11),(303,5,1,12),(304,5,2,1),(305,5,2,2),(306,5,2,3),(307,5,2,4),(308,5,2,5),(309,5,2,6),(310,5,2,7),(311,5,2,8),(312,5,2,9),(313,5,2,10),(314,5,2,11),(315,5,2,12),(316,5,3,1),(317,5,3,2),(318,5,3,3),(319,5,3,4),(320,5,3,5),(321,5,3,6),(322,5,3,7),(323,5,3,8),(324,5,3,9),(325,5,3,10),(326,5,3,11),(327,5,3,12),(328,5,4,1),(329,5,4,2),(330,5,4,3),(331,5,4,4),(332,5,4,5),(333,5,4,6),(334,5,4,7),(335,5,4,8),(336,5,4,9),(337,5,4,10),(338,5,4,11),(339,5,4,12),(340,5,5,1),(341,5,5,2),(342,5,5,3),(343,5,5,4),(344,5,5,5),(345,5,5,6),(346,5,5,7),(347,5,5,8),(348,5,5,9),(349,5,5,10),(350,5,5,11),(351,5,5,12),(352,5,6,1),(353,5,6,2),(354,5,6,3),(355,5,6,4),(356,5,6,5),(357,5,6,6),(358,5,6,7),(359,5,6,8),(360,5,6,9),(361,5,6,10),(362,5,6,11),(363,5,6,12),(364,5,7,1),(365,5,7,2),(366,5,7,3),(367,5,7,4),(368,5,7,5),(369,5,7,6),(370,5,7,7),(371,5,7,8),(372,5,7,9),(373,5,7,10),(374,5,7,11),(375,5,7,12),(376,6,1,1),(377,6,1,2),(378,6,1,3),(379,6,1,4),(380,6,1,5),(381,6,1,6),(382,6,1,7),(383,6,1,8),(384,6,2,1),(385,6,2,2),(386,6,2,3),(387,6,2,4),(388,6,2,5),(389,6,2,6),(390,6,2,7),(391,6,2,8),(392,6,3,1),(393,6,3,2),(394,6,3,3),(395,6,3,4),(396,6,3,5),(397,6,3,6),(398,6,3,7),(399,6,3,8),(400,6,4,1),(401,6,4,2),(402,6,4,3),(403,6,4,4),(404,6,4,5),(405,6,4,6),(406,6,4,7),(407,6,4,8),(408,6,5,1),(409,6,5,2),(410,6,5,3),(411,6,5,4),(412,6,5,5),(413,6,5,6),(414,6,5,7),(415,6,5,8),(416,7,1,1),(417,7,1,2),(418,7,1,3),(419,7,1,4),(420,7,1,5),(421,7,1,6),(422,7,1,7),(423,7,1,8),(424,7,1,9),(425,7,1,10),(426,7,1,11),(427,7,1,12),(428,7,1,13),(429,7,1,14),(430,7,1,15),(431,7,2,1),(432,7,2,2),(433,7,2,3),(434,7,2,4),(435,7,2,5),(436,7,2,6),(437,7,2,7),(438,7,2,8),(439,7,2,9),(440,7,2,10),(441,7,2,11),(442,7,2,12),(443,7,2,13),(444,7,2,14),(445,7,2,15),(446,7,3,1),(447,7,3,2),(448,7,3,3),(449,7,3,4),(450,7,3,5),(451,7,3,6),(452,7,3,7),(453,7,3,8),(454,7,3,9),(455,7,3,10),(456,7,3,11),(457,7,3,12),(458,7,3,13),(459,7,3,14),(460,7,3,15),(461,7,4,1),(462,7,4,2),(463,7,4,3),(464,7,4,4),(465,7,4,5),(466,7,4,6),(467,7,4,7),(468,7,4,8),(469,7,4,9),(470,7,4,10),(471,7,4,11),(472,7,4,12),(473,7,4,13),(474,7,4,14),(475,7,4,15),(476,7,5,1),(477,7,5,2),(478,7,5,3),(479,7,5,4),(480,7,5,5),(481,7,5,6),(482,7,5,7),(483,7,5,8),(484,7,5,9),(485,7,5,10),(486,7,5,11),(487,7,5,12),(488,7,5,13),(489,7,5,14),(490,7,5,15),(491,7,6,1),(492,7,6,2),(493,7,6,3),(494,7,6,4),(495,7,6,5),(496,7,6,6),(497,7,6,7),(498,7,6,8),(499,7,6,9),(500,7,6,10),(501,7,6,11),(502,7,6,12),(503,7,6,13),(504,7,6,14),(505,7,6,15),(506,7,7,1),(507,7,7,2),(508,7,7,3),(509,7,7,4),(510,7,7,5),(511,7,7,6),(512,7,7,7),(513,7,7,8),(514,7,7,9),(515,7,7,10),(516,7,7,11),(517,7,7,12),(518,7,7,13),(519,7,7,14),(520,7,7,15),(521,7,8,1),(522,7,8,2),(523,7,8,3),(524,7,8,4),(525,7,8,5),(526,7,8,6),(527,7,8,7),(528,7,8,8),(529,7,8,9),(530,7,8,10),(531,7,8,11),(532,7,8,12),(533,7,8,13),(534,7,8,14),(535,7,8,15),(536,7,9,1),(537,7,9,2),(538,7,9,3),(539,7,9,4),(540,7,9,5),(541,7,9,6),(542,7,9,7),(543,7,9,8),(544,7,9,9),(545,7,9,10),(546,7,9,11),(547,7,9,12),(548,7,9,13),(549,7,9,14),(550,7,9,15),(551,8,1,1),(552,8,1,2),(553,8,1,3),(554,8,1,4),(555,8,1,5),(556,8,1,6),(557,8,1,7),(558,8,1,8),(559,8,1,9),(560,8,1,10),(561,8,1,11),(562,8,1,12),(563,8,1,13),(564,8,1,14),(565,8,1,15),(566,8,1,16),(567,8,1,17),(568,8,1,18),(569,8,2,1),(570,8,2,2),(571,8,2,3),(572,8,2,4),(573,8,2,5),(574,8,2,6),(575,8,2,7),(576,8,2,8),(577,8,2,9),(578,8,2,10),(579,8,2,11),(580,8,2,12),(581,8,2,13),(582,8,2,14),(583,8,2,15),(584,8,2,16),(585,8,2,17),(586,8,2,18),(587,8,3,1),(588,8,3,2),(589,8,3,3),(590,8,3,4),(591,8,3,5),(592,8,3,6),(593,8,3,7),(594,8,3,8),(595,8,3,9),(596,8,3,10),(597,8,3,11),(598,8,3,12),(599,8,3,13),(600,8,3,14),(601,8,3,15),(602,8,3,16),(603,8,3,17),(604,8,3,18),(605,8,4,1),(606,8,4,2),(607,8,4,3),(608,8,4,4),(609,8,4,5),(610,8,4,6),(611,8,4,7),(612,8,4,8),(613,8,4,9),(614,8,4,10),(615,8,4,11),(616,8,4,12),(617,8,4,13),(618,8,4,14),(619,8,4,15),(620,8,4,16),(621,8,4,17),(622,8,4,18),(623,8,5,1),(624,8,5,2),(625,8,5,3),(626,8,5,4),(627,8,5,5),(628,8,5,6),(629,8,5,7),(630,8,5,8),(631,8,5,9),(632,8,5,10),(633,8,5,11),(634,8,5,12),(635,8,5,13),(636,8,5,14),(637,8,5,15),(638,8,5,16),(639,8,5,17),(640,8,5,18),(641,8,6,1),(642,8,6,2),(643,8,6,3),(644,8,6,4),(645,8,6,5),(646,8,6,6),(647,8,6,7),(648,8,6,8),(649,8,6,9),(650,8,6,10),(651,8,6,11),(652,8,6,12),(653,8,6,13),(654,8,6,14),(655,8,6,15),(656,8,6,16),(657,8,6,17),(658,8,6,18),(659,8,7,1),(660,8,7,2),(661,8,7,3),(662,8,7,4),(663,8,7,5),(664,8,7,6),(665,8,7,7),(666,8,7,8),(667,8,7,9),(668,8,7,10),(669,8,7,11),(670,8,7,12),(671,8,7,13),(672,8,7,14),(673,8,7,15),(674,8,7,16),(675,8,7,17),(676,8,7,18),(677,8,8,1),(678,8,8,2),(679,8,8,3),(680,8,8,4),(681,8,8,5),(682,8,8,6),(683,8,8,7),(684,8,8,8),(685,8,8,9),(686,8,8,10),(687,8,8,11),(688,8,8,12),(689,8,8,13),(690,8,8,14),(691,8,8,15),(692,8,8,16),(693,8,8,17),(694,8,8,18);
/*!40000 ALTER TABLE `seats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idhall` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `idmovies` int(11) NOT NULL,
  `ticket_price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theaters`
--

DROP TABLE IF EXISTS `theaters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `theaters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theaters`
--

LOCK TABLES `theaters` WRITE;
/*!40000 ALTER TABLE `theaters` DISABLE KEYS */;
INSERT INTO `theaters` VALUES (1,'Муви1','ул. Дмитрия Ульянова, 16'),(2,'Муви2','Яузская ул., 11/6 строение 11'),(3,'Муви3','Подкопаевский пер., 2/6'),(4,'Муви4','ул. Пречистенка, 22/2'),(5,'Муви5','Рогожский Вал ул., 7'),(6,'Муви6','ул. Маленковская, 7');
/*!40000 ALTER TABLE `theaters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_release` datetime NOT NULL,
  `idsessions` int(11) NOT NULL,
  `idseats` int(11) NOT NULL,
  `ispayed` binary(2) NOT NULL,
  `isbooked` binary(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-21 22:33:30
