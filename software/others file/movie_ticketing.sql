-- MySQL dump 10.13  Distrib 5.5.36, for Win32 (x86)
--
-- Host: localhost    Database: movie_ticketing
-- ------------------------------------------------------
-- Server version	5.5.36

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
-- Table structure for table `app_user`
--
create database movie_ticketing;

use movie_ticketing;
DROP TABLE IF EXISTS `app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_user` (
  `ID` int(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user`
--

LOCK TABLES `app_user` WRITE;
/*!40000 ALTER TABLE `app_user` DISABLE KEYS */;
INSERT INTO `app_user` VALUES (10000,'mahuateng','1234'),(77468,'mayun','1234'),(45412,'mayun','1234'),(22411,'pass','1234'),(69402,'pop','1234');
/*!40000 ALTER TABLE `app_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film` (
  `fname` varchar(50) DEFAULT NULL,
  `fdisguess` varchar(300) DEFAULT NULL,
  `fday` date DEFAULT NULL,
  `ftime` time DEFAULT NULL,
  `fsite` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES ('yiren','this is a story','1999-05-06','19:00:00','3号厅'),('chaoren','this is a happe-ending','1999-05-07','19:30:00','2号厅'),('tiger','hava a great body','1999-05-07','19:00:00','3号厅'),('tiger','hava a great body','2000-05-07','15:00:00','3号厅');
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filminformation`
--

DROP TABLE IF EXISTS `filminformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filminformation` (
  `ID` int(11) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `introduction` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filminformation`
--

LOCK TABLES `filminformation` WRITE;
/*!40000 ALTER TABLE `filminformation` DISABLE KEYS */;
INSERT INTO `filminformation` VALUES (1,'雷神2','故事时间发生在《复仇者联盟》纽约大战结束一年后，索尔·奥丁森押送着弟弟洛基回到仙宫接受审判，此时一股强大的远古黑暗势力正在一步步逼近。'),(2,'超人：钢铁之躯','该片讲述了一个从小被遗孤的外星球小男孩，被地球人抚养成人，长大后发现自己有着超强的能力，并用自己的超能力保护人类的故事。'),(3,'异形：契约','该片是2012年电影《普罗米修斯》的续篇，《异形》系列前传三部曲的第二部。\n该片讲述一群宇航员乘坐“契约号”飞船驶向银河系远端一颗未被探索的星球，本欲发现美好天堂结果陷入黑暗地狱的危险之旅的故事。'),(4,'正义联盟','故事发生在《蝙蝠侠大战超人：正义黎明》之后，主要讲述了面对一个全新的世界威胁，超人、蝙蝠侠、神奇女侠、闪电侠、海王和钢骨六位英雄聚首，与这股未知的威胁对抗的故事。'),(5,'小丑回魂','《小丑回魂》根据斯蒂芬·金1986年的同名小说改编，讲述了在美国德瑞小镇上的孩子们接连不断的失踪，七人组的团队为了保护镇上的孩子们，他们联合起来对抗小丑。'),(6,'黑暗塔','《黑暗塔》改编自斯蒂芬·金的同名小说,该片主要讲述了枪侠罗兰·德鄯为了将自己居住的世界与其他世界相连，修复连接光束，阻止世界迅速消亡，而寻找黑暗塔的故事。');
/*!40000 ALTER TABLE `filminformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filmon`
--

DROP TABLE IF EXISTS `filmon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filmon` (
  `ID` int(11) NOT NULL,
  `Time` varchar(40) DEFAULT NULL,
  `Site` varchar(10) DEFAULT NULL,
  `Price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmon`
--

LOCK TABLES `filmon` WRITE;
/*!40000 ALTER TABLE `filmon` DISABLE KEYS */;
INSERT INTO `filmon` VALUES (1,'5.29 17:00','3号厅',36);
/*!40000 ALTER TABLE `filmon` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-16 12:53:26
CREATE DATABASE  IF NOT EXISTS `movie_ticketing` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `movie_ticketing`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: dianying
-- ------------------------------------------------------
-- Server version	5.5.36

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
-- Table structure for table `dianyingxinxi`
--

DROP TABLE IF EXISTS `dianyingxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dianyingxinxi` (
  `dianyingID` varchar(20) NOT NULL,
  `dianyingName` varchar(2000) NOT NULL,
  `zhuyan` varchar(500) NOT NULL,
  `shichang` varchar(400) NOT NULL,
  `ChangciID` varchar(50) NOT NULL,
  `ChangTingID` varchar(50) NOT NULL,
  `piaojia` float NOT NULL,
  `dianyingxiangqing` varchar(2000) NOT NULL,
  PRIMARY KEY (`dianyingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dianyingxinxi`
--

LOCK TABLES `dianyingxinxi` WRITE;
/*!40000 ALTER TABLE `dianyingxinxi` DISABLE KEYS */;
INSERT INTO `dianyingxinxi` VALUES ('S1000','小丑回魂','小丑','1小时39分钟','002','003',35.5,'讲述了一个小丑回魂的故事'),('S2000','傲慢与偏见','男主和女主','1小时27分钟','001','004',67,'讲述了一个傲慢一个偏见的姑苏'),('S3000','茶花女','茶花女','1小时58分钟','003','004',45,'讲述了法国女郎茶花女与穷小子的故事茶花女'),('S5000','喜羊羊大电影','喜羊羊，美羊羊，懒羊羊','1小时4分钟','005','003',36,'羊和狼的故事'),('S6000','lilili','lololo','lololo','003','005',45,'囖囖囖'),('S7000','灰太狼斗智斗勇','灰太狼','3小时','004','002',89,'灰太狼和红太狼的故事'),('S8000','敢死队','眼袋','1小时48分钟','004','003',24,'敢死队的战争');
/*!40000 ALTER TABLE `dianyingxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dianying'
--

--
-- Dumping routines for database 'dianying'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-23 11:43:21
