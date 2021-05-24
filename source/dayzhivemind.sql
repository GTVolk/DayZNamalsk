-- MySQL dump 10.13  Distrib 5.7.34, for Linux (x86_64)
--
-- Host: localhost    Database: dayzhivemind
-- ------------------------------------------------------
-- Server version	5.7.34

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
-- Table structure for table `character_data`
--

DROP TABLE IF EXISTS `character_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_data` (
  `CharacterID` int(11) NOT NULL AUTO_INCREMENT,
  `PlayerID` int(11) NOT NULL DEFAULT '1000',
  `PlayerUID` varchar(45) NOT NULL DEFAULT '0',
  `InstanceID` int(11) NOT NULL DEFAULT '0',
  `Datestamp` datetime DEFAULT NULL,
  `LastLogin` datetime NOT NULL,
  `Inventory` longtext,
  `Backpack` longtext,
  `Worldspace` varchar(70) NOT NULL DEFAULT '[]',
  `Medical` varchar(200) NOT NULL DEFAULT '[]',
  `Alive` tinyint(4) NOT NULL DEFAULT '1',
  `Generation` int(11) NOT NULL DEFAULT '1',
  `LastAte` datetime NOT NULL,
  `LastDrank` datetime NOT NULL,
  `KillsZ` int(11) NOT NULL DEFAULT '0',
  `HeadshotsZ` int(11) NOT NULL DEFAULT '0',
  `distanceFoot` int(11) NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL DEFAULT '0',
  `currentState` varchar(1000) NOT NULL DEFAULT '[[],[]]',
  `KillsH` int(11) NOT NULL DEFAULT '0',
  `Model` varchar(50) NOT NULL DEFAULT '"Survivor2_DZ"',
  `KillsB` int(11) NOT NULL DEFAULT '0',
  `Humanity` int(11) NOT NULL DEFAULT '2500',
  `last_updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`CharacterID`),
  KEY `PlayerID` (`PlayerID`),
  KEY `Alive_PlayerID` (`Alive`,`LastLogin`,`PlayerID`),
  KEY `PlayerUID` (`PlayerUID`),
  KEY `Alive_PlayerUID` (`Alive`,`LastLogin`,`PlayerUID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_data`
--

LOCK TABLES `character_data` WRITE;
/*!40000 ALTER TABLE `character_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_dead`
--

DROP TABLE IF EXISTS `character_dead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_dead` (
  `CharacterID` int(11) NOT NULL AUTO_INCREMENT,
  `PlayerID` int(11) NOT NULL DEFAULT '0',
  `PlayerUID` varchar(45) NOT NULL DEFAULT '0',
  `InstanceID` int(11) NOT NULL DEFAULT '0',
  `Datestamp` datetime DEFAULT NULL,
  `LastLogin` datetime NOT NULL,
  `Inventory` longtext,
  `Backpack` longtext,
  `Worldspace` varchar(70) NOT NULL DEFAULT '[]',
  `Medical` varchar(200) NOT NULL DEFAULT '[]',
  `Alive` tinyint(4) NOT NULL DEFAULT '1',
  `Generation` int(11) NOT NULL DEFAULT '1',
  `LastAte` datetime NOT NULL,
  `LastDrank` datetime NOT NULL,
  `KillsZ` int(11) NOT NULL DEFAULT '0',
  `HeadshotsZ` int(11) NOT NULL DEFAULT '0',
  `distanceFoot` int(11) NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL DEFAULT '0',
  `currentState` varchar(1000) NOT NULL DEFAULT '[[],[]]',
  `KillsH` int(11) NOT NULL DEFAULT '0',
  `Model` varchar(50) NOT NULL DEFAULT '"Survivor2_DZ"',
  `KillsB` int(11) NOT NULL DEFAULT '0',
  `Humanity` int(11) NOT NULL DEFAULT '2500',
  `last_updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`CharacterID`),
  KEY `PlayerID` (`PlayerID`),
  KEY `Alive_PlayerID` (`Alive`,`LastLogin`,`PlayerID`),
  KEY `PlayerUID` (`PlayerUID`),
  KEY `Alive_PlayerUID` (`Alive`,`LastLogin`,`PlayerUID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_dead`
--

LOCK TABLES `character_dead` WRITE;
/*!40000 ALTER TABLE `character_dead` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_dead` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_scheduler`
--

DROP TABLE IF EXISTS `event_scheduler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_scheduler` (
  `System` text,
  `LastRun` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_scheduler`
--

LOCK TABLES `event_scheduler` WRITE;
/*!40000 ALTER TABLE `event_scheduler` DISABLE KEYS */;
INSERT INTO `event_scheduler` VALUES ('3hRespawns',NULL),('pCleanup',NULL),('pCleanupBase',NULL),('pMain',NULL);
/*!40000 ALTER TABLE `event_scheduler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_data`
--

DROP TABLE IF EXISTS `object_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_data` (
  `ObjectID` int(11) NOT NULL AUTO_INCREMENT,
  `ObjectUID` bigint(20) NOT NULL DEFAULT '0',
  `Instance` int(11) NOT NULL,
  `Classname` varchar(50) DEFAULT NULL,
  `Datestamp` datetime NOT NULL,
  `CharacterID` int(11) NOT NULL DEFAULT '0',
  `Worldspace` varchar(70) NOT NULL DEFAULT '[]',
  `Inventory` longtext,
  `Hitpoints` longtext NOT NULL,
  `Fuel` double(13,5) NOT NULL DEFAULT '1.00000',
  `Damage` double(13,5) NOT NULL DEFAULT '0.00000',
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ObjectID`),
  UNIQUE KEY `CheckUID` (`ObjectUID`,`Instance`),
  KEY `ObjectUID` (`ObjectUID`),
  KEY `Instance` (`Damage`,`Instance`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_data`
--

LOCK TABLES `object_data` WRITE;
/*!40000 ALTER TABLE `object_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_spawns`
--

DROP TABLE IF EXISTS `object_spawns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_spawns` (
  `ObjectUID` bigint(20) NOT NULL DEFAULT '0',
  `Classname` varchar(32) DEFAULT NULL,
  `Worldspace` varchar(64) DEFAULT NULL,
  `Inventory` longtext,
  `Hitpoints` varchar(999) NOT NULL DEFAULT '[]',
  `MapID` varchar(255) NOT NULL DEFAULT '',
  `Last_changed` int(10) DEFAULT NULL,
  PRIMARY KEY (`ObjectUID`,`MapID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_spawns`
--

LOCK TABLES `object_spawns` WRITE;
/*!40000 ALTER TABLE `object_spawns` DISABLE KEYS */;
INSERT INTO `object_spawns` VALUES (4578546,'UralCivil','[1,[4991.09,8165.97,0.00148773]]','[[[], []], [[\"PartWheel\", \"ItemSodaCoke\"], [1, 3]], [[], []]]','[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]','',NULL),(4578544,'PBX','[228,[6044.81,6760.48,2.24013]]','[[[], []], [[\"ItemFlashlightRed\"], [1]], [[\"DZ_Backpack_EP1\"], [1]]]','[[\"motor\",1]]','',NULL),(4578545,'UralCivil2','[126,[7647.15,7406.74,0.00144958]]','[[[], []], [[\"ItemWatch\", \"ItemSodaPepsi\"], [1, 3]], [[], []]]','[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]','',NULL),(4578541,'PBX','[88,[2144.77,5754.73,1.84505]]','[]','[[\"motor\",1]]','',NULL),(4578542,'PBX','[245,[5031.6,6100.52,5.8214]]','[]','[[\"motor\",1]]','',NULL),(4578543,'Old_bike_TK_CIV_EP1','[6,[4877.88,6215.15,0.00143814]]','[]','[]','',NULL),(4578539,'Fishing_Boat','[180,[4306.51,4719.16,5.83564]]','[]','[[\"motor\",1]]','',NULL),(4578540,'Old_bike_TK_CIV_EP1','[34,[2197.75,5762.33,0.00141096]]','[]','[]','',NULL),(4578537,'Fishing_Boat','[0,[4430.48,11303.5,8.4149]]','[]','[[\"motor\",1]]','',NULL),(4578538,'UAZ_RU','[250,[4090.02,9225.91,0.00144958]]','[]','[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]','',NULL),(4578535,'PBX','[55,[4525.93,11255.1,0.001692]]','[]','[[\"motor\",1]]','',NULL),(4578536,'Fishing_Boat','[92,[4387.41,11293.1,7.2188]]','[]','[[\"motor\",1]]','',NULL),(4578534,'Mi17_Civilian_Nam','[47,[4521,11230,3.81583]]','[[[],[]],[[\"ItemSodaMdew\"],[2]],[[],[]]]','[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",1],[\"glass5\",1],[\"NEtrup\",1.1998],[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1],[\"munice\",1.07084],[\"sklo predni P\",1.04818],[\"sklo predni L\",1.11816],[\"glass6\",1.0402]]','',NULL),(4578532,'UAZ_RU','[203,[4849.06,10858.9,0.00143909]]','[]','[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]','',NULL),(4578533,'UAZ_RU','[280,[4418.92,10748.9,0.00143909]]','[]','[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]','',NULL),(4578530,'Old_bike_TK_CIV_EP1','[11,[6665.94,11022.5,0.00143909]]','[]','[]','',NULL),(4578531,'hilux1_civil_3_open_EP1','[278,[5796.78,10761.3,0.00142288]]','[[[], []], [[\"PartFueltank\", \"PartWheel\"], [1, 1]], [[], []]]','[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]','',NULL),(4578527,'Old_bike_TK_CIV_EP1','[81,[7209.53,10848.4,0.00142956]]','[]','[]','',NULL),(4578528,'UralCivil','[270,[6739.51,11323.5,0.00143909]]','[[[], []], [[\"PartWheel\", \"ItemToolbox\", \"ItemTankTrap\"], [1, 1, 1]], [[], []]]','[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]','',NULL),(4578529,'hilux1_civil_3_open_EP1','[74,[7029.23,11540.7,0.00143909]]','[[[], []], [[\"PartFueltank\", \"PartWheel\"], [1, 1]], [[], []]]','[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]','',NULL),(4578524,'tractor','[296,[8252.9,10792.1,0.00143909]]','[[[], []], [[\"ItemWire\", \"ItemJerrycan\"], [1, 1]], [[], []]]','[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]','',NULL),(4578525,'Old_bike_TK_CIV_EP1','[22,[8957.08,10629.1,0.00132465]]','[]','[]','',NULL),(4578526,'Fishing_Boat','[110,[9134.51,10091.7,4.11368]]','[]','[[\"motor\",1]]','',NULL),(4578522,'UAZ_RU','[23,[5975.07,6690.23,0.00141525]]','[[[], []], [[\"10Rnd_127x99_m107\"], [5]], [[], []]]','[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]','',NULL),(4578523,'hilux1_civil_3_open_EP1','[255,[5748.33,9844.07,0.00140762]]','[[[], []], [[\"ItemWatch\", \"ItemKnife\"], [1, 1]], [[], []]]','[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]','',NULL),(4578520,'hilux1_civil_3_open_EP1','[52,[7358.11,7984.73,0.00138092]]','[[[], []], [[\"ItemWatch\", \"ItemSodaPepsi\"], [1, 3]], [[], []]]','[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]','',NULL),(4578521,'UralCivil2','[351,[7685.47,8729.3,0.00157166]]','[[[], []], [[\"PartWheel\", \"ItemSodaCoke\"], [1, 3]], [[], []]]','[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]','',NULL),(4578518,'hilux1_civil_3_open_EP1','[90,[7051.95,5777.77,0.00144196]]','[[[], []], [[\"ItemSodaPepsi\", \"FoodCanFrankBeans\"], [3, 3]], [[], []]]','[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]','',NULL),(4578519,'UralCivil','[180,[7894.81,7718.42,0.00142384]]','[[[], []], [[\"PartWheel\", \"ItemSodaCoke\"], [1, 3]], [[], []]]','[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]','',NULL),(4578517,'UralCivil','[90,[4837.61,6145.8,0.00143814]]','[[[], []], [[\"PartWheel\", \"ItemToolbox\", \"ItemTankTrap\"], [1, 1, 1]], [[], []]]','[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]','',NULL),(4578515,'UralCivil2','[220,[3941.47,7595.37,0.00143814]]','[[[\"MR43\"], [1]], [[\"PartEngine\"], [1]], [[], []]]','[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]','',NULL),(4578516,'UralCivil2','[180,[5849.93,8659.4,0.00143814]]','[[[], []], [[\"ItemSodaPepsi\", \"FoodCanFrankBeans\"], [3, 3]], [[], []]]','[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]','',NULL),(4578514,'UAZ_RU','[93,[3552.5,6675.55,0.00143433]]','[[[], []], [[\"HandGrenade_west\"], [5]], [[], []]]','[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]','',NULL),(4578513,'UAZ_RU','[182,[4127.6,6703.51,0.00146484]]','[[[], []], [[\"30Rnd_556x45_StanagSD\"], [5]], [[], []]]','[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]','',NULL),(4578512,'Ka60_GL_NAC','[219,[4186.09,6606.66,0]]','[[[],[]],[[\"ItemSodaMdew\"],[2]],[[],[]]]','[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",1],[\"glass5\",1],[\"NEtrup\",1.1998],[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1],[\"munice\",1.07084],[\"sklo predni P\",1.04818],[\"sklo predni L\",1.11816],[\"glass6\",1.0402]]','',NULL);
/*!40000 ALTER TABLE `object_spawns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_data`
--

DROP TABLE IF EXISTS `player_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_data` (
  `playerID` int(11) NOT NULL DEFAULT '0',
  `playerUID` varchar(45) NOT NULL DEFAULT '0',
  `playerName` varchar(50) NOT NULL DEFAULT 'Null',
  `playerMorality` int(11) NOT NULL DEFAULT '0',
  `playerSex` int(11) NOT NULL DEFAULT '0',
  KEY `playerID` (`playerID`),
  KEY `playerUID` (`playerUID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_data`
--

LOCK TABLES `player_data` WRITE;
/*!40000 ALTER TABLE `player_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_login`
--

DROP TABLE IF EXISTS `player_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_login` (
  `LoginID` int(11) NOT NULL AUTO_INCREMENT,
  `PlayerUID` varchar(45) NOT NULL,
  `CharacterID` int(11) NOT NULL DEFAULT '0',
  `datestamp` datetime NOT NULL,
  `Action` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`LoginID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_login`
--

LOCK TABLES `player_login` WRITE;
/*!40000 ALTER TABLE `player_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_groups`
--

DROP TABLE IF EXISTS `vehicle_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_groups` (
  `ID` int(11) NOT NULL,
  `MaxNum` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='0 Helicopters\r\n1 Military cars (Landrover W, Landrover D, HMMWV)\r\n2 Armed cars\r\n3 Bikes\r\n4 Trucks\r\n5 Buses\r\n6 Civilian cars\r\n7 Civilian cars high end\r\n8 Civilian cars low end\r\n9 AN-2\r\n10 UH-1H';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_groups`
--

LOCK TABLES `vehicle_groups` WRITE;
/*!40000 ALTER TABLE `vehicle_groups` DISABLE KEYS */;
INSERT INTO `vehicle_groups` VALUES (10,5),(9,4),(8,1),(7,4),(6,4),(5,6),(4,4),(3,1),(2,4),(1,1);
/*!40000 ALTER TABLE `vehicle_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_hitpoints`
--

DROP TABLE IF EXISTS `vehicle_hitpoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_hitpoints` (
  `ID` int(11) NOT NULL,
  `PartName` varchar(255) CHARACTER SET latin1 NOT NULL,
  `MinDamage` double(20,10) NOT NULL DEFAULT '0.5000000000',
  `MaxDamage` double(20,10) NOT NULL DEFAULT '1.0000000000',
  PRIMARY KEY (`ID`,`PartName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_hitpoints`
--

LOCK TABLES `vehicle_hitpoints` WRITE;
/*!40000 ALTER TABLE `vehicle_hitpoints` DISABLE KEYS */;
INSERT INTO `vehicle_hitpoints` VALUES (1,'palivo',0.6000000000,0.8000000000),(1,'motor',0.6000000000,0.8000000000),(1,'karoserie',0.6000000000,1.0000000000),(1,'wheel_1_1_steering',0.6000000000,1.0000000000),(1,'wheel_1_2_steering',0.6000000000,1.0000000000),(1,'wheel_2_1_steering',0.6000000000,1.0000000000),(1,'wheel_2_2_steering',0.6000000000,1.0000000000),(2,'motor',0.6000000000,0.8000000000),(3,'motor',0.6000000000,0.8000000000),(3,'elektronika',0.6000000000,1.0000000000),(3,'mala vrtule',0.6000000000,1.0000000000),(3,'velka vrtule',0.6000000000,1.0000000000),(4,'glass1',0.6000000000,1.0000000000),(4,'glass2',0.6000000000,1.0000000000),(4,'glass3',0.6000000000,1.0000000000),(4,'glass4',0.6000000000,1.0000000000),(4,'glass5',0.6000000000,1.0000000000),(4,'NEtrup',0.6000000000,1.0000000000),(4,'motor',0.6000000000,0.8000000000),(4,'elektronika',0.6000000000,1.0000000000),(4,'mala vrtule',0.6000000000,1.0000000000),(4,'velka vrtule',0.6000000000,1.0000000000),(4,'munice',0.6000000000,1.0000000000),(4,'sklo predni P',0.6000000000,1.0000000000),(4,'sklo predni L',0.6000000000,1.0000000000),(4,'glass6',0.6000000000,1.0000000000),(5,'glass1',0.6000000000,1.0000000000),(5,'glass2',0.6000000000,1.0000000000),(5,'glass3',0.6000000000,1.0000000000),(5,'motor',0.6000000000,0.8000000000),(5,'palivo',0.6000000000,0.8000000000),(5,'wheel_1_1_steering',0.6000000000,1.0000000000),(5,'wheel_1_2_steering',0.6000000000,1.0000000000),(5,'wheel_2_1_steering',0.6000000000,1.0000000000),(5,'wheel_2_2_steering',0.6000000000,1.0000000000),(5,'sklo predni P',0.6000000000,1.0000000000),(5,'sklo predni L',0.6000000000,1.0000000000),(5,'karoserie',0.6000000000,1.0000000000),(5,'wheel_1_4_steering',0.6000000000,1.0000000000),(5,'wheel_2_4_steering',0.6000000000,1.0000000000),(5,'wheel_1_3_steering',0.6000000000,1.0000000000),(5,'wheel_2_3_steering',0.6000000000,1.0000000000),(5,'glass4',0.6000000000,1.0000000000),(6,'glass1',0.6000000000,1.0000000000),(6,'glass2',0.6000000000,1.0000000000),(6,'glass3',0.6000000000,1.0000000000),(6,'motor',0.6000000000,0.8000000000),(6,'palivo',0.6000000000,0.8000000000),(6,'wheel_1_1_steering',0.6000000000,1.0000000000),(6,'wheel_1_2_steering',0.6000000000,1.0000000000),(6,'wheel_2_1_steering',0.6000000000,1.0000000000),(6,'wheel_2_2_steering',0.6000000000,1.0000000000),(6,'karoserie',0.6000000000,1.0000000000),(6,'glass4',0.6000000000,1.0000000000);
/*!40000 ALTER TABLE `vehicle_hitpoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_inventory`
--

DROP TABLE IF EXISTS `vehicle_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_inventory` (
  `ID` int(11) NOT NULL,
  `Type` enum('Backpack','Magazine','Weapon') CHARACTER SET latin1 NOT NULL DEFAULT 'Magazine',
  `Classname` varchar(255) CHARACTER SET latin1 NOT NULL,
  `MinAmount` tinyint(3) NOT NULL DEFAULT '1',
  `MaxAmount` tinyint(3) NOT NULL DEFAULT '1',
  `Chance` double(20,10) NOT NULL DEFAULT '1.0000000000',
  PRIMARY KEY (`ID`,`Type`,`Classname`),
  KEY `ObjectUID` (`ID`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_inventory`
--

LOCK TABLES `vehicle_inventory` WRITE;
/*!40000 ALTER TABLE `vehicle_inventory` DISABLE KEYS */;
INSERT INTO `vehicle_inventory` VALUES (1,'Weapon','MeleeBaseBallBat',1,1,0.8500000000),(1,'Weapon','MeleeBaseBallBatBarbed',1,1,0.2500000000),(1,'Magazine','ItemTent',1,1,0.2500000000),(1,'Magazine','ItemTrashToiletpaper',1,2,0.8500000000),(1,'Magazine','equip_comfreyleafs',1,3,1.0000000000),(1,'Magazine','ItemKosmosSmokes',1,2,1.0000000000),(1,'Magazine','equip_herb_box',1,1,1.0000000000),(1,'Magazine','FoodCakeCremeCakeClean',2,2,1.0000000000),(1,'Magazine','FoodChipsChocolate',1,2,0.6500000000),(1,'Magazine','FoodChipsChocolateEmpty',1,3,0.6500000000),(1,'Magazine','FoodChipsSulahoops',2,2,0.6500000000),(1,'Magazine','FoodChipsSulahoopsEmpty',2,2,0.6500000000),(1,'Magazine','FoodCandyLegacys',2,2,0.6500000000),(1,'Magazine','ItemSodaRabbit',1,3,0.8500000000),(1,'Magazine','ItemFuelcan',1,2,0.7500000000),(2,'Magazine','PartGeneric',1,1,0.2500000000),(2,'Magazine','ItemSodaRabbit',1,1,1.0000000000),(2,'Magazine','PartWheel',1,1,0.4000000000),(2,'Magazine','ItemFuelcanEmpty',1,1,1.0000000000),(3,'Weapon','PDW_DZ',1,1,0.1500000000),(3,'Weapon','ItemKnife',1,1,0.7500000000),(3,'Weapon','ItemMachete',1,1,0.6500000000),(3,'Weapon','MeleeBaseBallBatNails',1,1,0.6500000000),(3,'Magazine','PipeBomb',1,1,0.1500000000),(3,'Magazine','FoodCanFrankBeans',1,2,0.2500000000),(3,'Magazine','ItemSodaRabbit',1,2,0.5000000000),(3,'Magazine','FoodCanFraggleos',1,2,0.2500000000),(3,'Magazine','30Rnd_9x19_UZI',2,4,1.0000000000),(3,'Magazine','ItemFuelcan',1,1,0.2500000000),(4,'Weapon','M16A4_GL_ACOG_DZ',1,1,0.1000000000),(4,'Magazine','Skin_Sniper1_DZ',1,1,0.1000000000),(4,'Magazine','Skin_Camo1_DZ',1,1,0.1500000000),(4,'Magazine','HandGrenade_west',2,4,0.1500000000),(4,'Magazine','FoodMRE',2,2,0.9000000000),(4,'Magazine','SmokeShellGreen',1,2,1.0000000000),(4,'Magazine','SmokeShellRed',1,2,1.0000000000),(4,'Magazine','ItemFlashlightRed',1,1,1.0000000000),(4,'Magazine','30Rnd_556x45_StanagSD',2,4,1.0000000000),(4,'Magazine','ItemFuelcan',1,1,0.4500000000),(5,'Weapon','L110A1_CCO_DZ',1,1,0.1500000000),(5,'Magazine','FoodMRE',2,3,1.0000000000),(5,'Magazine','ItemBandage',2,3,1.0000000000),(5,'Magazine','SmokeShell',1,1,0.5000000000),(5,'Magazine','HandGrenade_west',2,2,0.3000000000),(5,'Magazine','200Rnd_556x45_M249',2,2,0.7500000000),(5,'Magazine','ItemJerrycan',1,1,0.7500000000),(5,'Backpack','DZ_ALICE_Pack_EP1',1,1,0.3500000000),(6,'Weapon','MeleeBaseBallBatBarbed',1,1,0.9500000000),(6,'Weapon','MeleeBaseBallBatNails',1,1,0.9500000000),(6,'Magazine','FoodBeefRaw',2,4,0.7500000000),(6,'Magazine','ItemSodaPeppsy',2,4,0.9500000000),(6,'Magazine','TrashJackDaniels',2,2,0.9500000000),(6,'Magazine','FoodbaconRaw',2,4,0.7500000000),(6,'Magazine','ItemTrashToiletpaper',2,4,0.9500000000),(6,'Magazine','ItemTrashRazor',1,1,0.9500000000),(6,'Magazine','equip_rag',2,4,0.6500000000),(6,'Magazine','ItemCards',2,4,0.9500000000),(7,'Weapon','FNFAL_ANPVS4_DZ',1,1,0.1000000000),(7,'Magazine','20Rnd_762x51_FNFAL',4,4,0.7500000000),(7,'Magazine','ItemJerrycan',1,1,0.2500000000),(7,'Magazine','ItemJerrycanEmpty',1,1,0.7500000000),(7,'Backpack','DZ_Backpack_EP1',2,2,0.2500000000),(8,'Weapon','M9_DZ',1,1,1.0000000000),(8,'Magazine','15Rnd_9x19_M9',2,3,1.0000000000),(8,'Magazine','ItemBandage',2,5,0.5000000000),(8,'Magazine','ItemPainkiller',2,2,0.5000000000),(8,'Magazine','ItemMorphine',2,2,0.5000000000),(8,'Magazine','ItemEpinephrine',2,2,0.5000000000),(8,'Magazine','ItemAntibiotic',1,1,0.5000000000),(8,'Magazine','emptyBloodBag',1,1,0.5000000000),(8,'Magazine','bloodBagONEG',2,2,0.5000000000),(8,'Magazine','equip_gauzepackaged',2,2,0.5000000000),(8,'Magazine','equip_gauze',2,2,0.5000000000),(8,'Magazine','bloodTester',1,1,0.5000000000),(8,'Backpack','DZ_Patrol_Pack_EP1',1,1,1.0000000000),(9,'Weapon','AK74_DZ',1,1,0.2500000000),(9,'Magazine','FoodmuttonCooked',1,2,0.5000000000),(9,'Magazine','ItemWaterbottleDmg',1,1,0.2500000000),(9,'Magazine','HandGrenade_east',2,2,0.5000000000),(9,'Magazine','1Rnd_HE_GP25',1,2,0.2500000000),(9,'Magazine','1Rnd_SMOKE_GP25',1,1,0.2500000000),(9,'Magazine','30Rnd_545x39_AK',2,4,1.0000000000),(9,'Magazine','ItemJerrycan',1,1,0.2500000000),(9,'Backpack','DZ_Czech_Vest_Pouch',1,1,0.8500000000),(10,'Weapon','SA58_Holo_DZ',1,1,0.1000000000),(10,'Magazine','FoodMRE',1,2,0.5000000000),(10,'Magazine','PartWheel',1,1,0.3500000000),(10,'Magazine','HandGrenade_west',2,2,0.5000000000),(10,'Magazine','30Rnd_762x39_SA58',2,4,1.0000000000),(10,'Magazine','20Rnd_762x51_DMR',1,2,0.2500000000),(10,'Magazine','ItemJerrycanEmpty',1,1,0.7500000000),(10,'Backpack','DZ_British_ACU',1,1,0.3500000000),(11,'Weapon','CZ550_DZ',1,2,0.4500000000),(11,'Weapon','ItemKnife',1,1,0.5000000000),(11,'Weapon','ItemFishingPole',1,1,0.1500000000),(11,'Weapon','ItemHatchet',1,1,0.5000000000),(11,'Magazine','equip_brick',1,1,0.5000000000),(11,'Magazine','PartWoodPile',1,1,0.5000000000),(11,'Magazine','ItemTent',1,1,0.2500000000),(11,'Magazine','FoodCanFrankBeans',1,2,0.5000000000),(11,'Magazine','FoodCanRusStew',1,2,0.5000000000),(11,'Magazine','5Rnd_17HMR',2,4,1.0000000000),(11,'Magazine','ItemFuelcan',1,2,0.2500000000),(12,'Weapon','M4A1_DZ',1,2,0.1500000000),(12,'Magazine','HandGrenade_west',1,1,0.2500000000),(12,'Magazine','30Rnd_556x45_Stanag',2,4,1.0000000000),(12,'Magazine','ItemJerrycanEmpty',1,1,0.2500000000),(13,'Weapon','G36K_Camo_DZ',1,1,0.2000000000),(13,'Magazine','30Rnd_556x45_G36',2,4,1.0000000000),(13,'Magazine','100Rnd_762x51_M240',1,2,0.1500000000),(13,'Magazine','FoodMRE',1,1,0.5000000000),(13,'Magazine','TrashJackDaniels',1,1,0.6500000000),(13,'Magazine','ItemSodaRabbit',1,2,0.6500000000),(13,'Magazine','ItemJerrycan',1,2,0.6500000000),(14,'Weapon','PKM_DZ',1,2,0.2500000000),(14,'Magazine','PartFueltank',1,1,0.2500000000),(14,'Magazine','PartGlass',1,2,0.4000000000),(14,'Magazine','PartWheel',1,2,0.2500000000),(80,'Magazine','PartEngine',1,1,0.0500000000),(14,'Magazine','100Rnd_762x54_PK',2,4,1.0000000000),(15,'Weapon','AK74_DZ',1,1,0.2500000000),(15,'Weapon','ItemMatchbox',1,1,0.5000000000),(15,'Magazine','30Rnd_545x39_AK',2,4,1.0000000000),(15,'Magazine','FoodgoatRaw',2,3,0.4500000000),(15,'Magazine','FoodmuttonRaw',1,3,0.6500000000),(15,'Magazine','FishRawSeaBass',2,3,0.4500000000),(15,'Magazine','FishRawTrout',1,2,0.6500000000),(15,'Magazine','FoodCanSardines',1,1,0.2500000000),(16,'Weapon','ItemFishingPole',1,1,0.2500000000),(16,'Weapon','ItemMachete',1,1,0.7500000000),(16,'Weapon','ItemCrowbar',1,1,0.7500000000),(16,'Magazine','FishRawSeaBass',2,3,0.2500000000),(16,'Magazine','FishRawTrout',2,3,0.2500000000),(16,'Magazine','ItemWaterbottleDmg',1,1,0.6500000000),(16,'Magazine','equip_duct_tape',1,1,0.2500000000),(16,'Magazine','ItemSodaRabbit',1,2,0.6500000000),(16,'Magazine','ItemJerrycan',1,1,0.2500000000),(17,'Weapon','ItemShovel',1,1,0.7500000000),(17,'Weapon','ItemPickaxe',1,1,0.2500000000),(17,'Weapon','ItemPickaxeBroken',1,1,0.7500000000),(17,'Weapon','ItemSledgeHammer',1,1,0.2500000000),(17,'Weapon','ItemSledgeHammerBroken',1,1,0.7500000000),(17,'Weapon','ItemCrowbar',1,2,0.9500000000),(17,'Magazine','ItemStone',2,4,0.6500000000),(17,'Magazine','ItemLog',2,4,0.6500000000),(17,'Magazine','equip_nails',2,4,0.7500000000),(17,'Magazine','equip_duct_tape',1,2,0.2500000000),(17,'Magazine','equip_2inch_metal_pipe',1,2,0.7500000000),(17,'Magazine','equip_rope',1,2,0.4500000000),(17,'Magazine','ItemJerrycanEmpty',1,2,0.7500000000),(18,'Weapon','Bizon_DZ',1,1,0.2500000000),(18,'Weapon','Makarov_DZ',1,2,0.2500000000),(18,'Magazine','64Rnd_9x19_Bizon',2,4,1.0000000000),(18,'Magazine','8Rnd_9x18_Makarov',2,4,1.0000000000),(18,'Magazine','PartEngine',1,1,0.0500000000),(18,'Magazine','PartGeneric',1,2,0.6500000000),(18,'Magazine','FoodCanSardines',1,1,0.7500000000),(18,'Magazine','ItemSodaPeppsy',2,2,0.7500000000),(19,'Weapon','Crossbow_DZ',1,1,0.2500000000),(19,'Magazine','equip_duct_tape',1,1,1.0000000000),(19,'Magazine','equip_rope',1,1,1.0000000000),(19,'Magazine','ItemMorphine',1,1,1.0000000000),(19,'Magazine','emptyBloodBag',1,1,1.0000000000),(19,'Magazine','bloodBagONEG',1,1,0.5000000000),(19,'Magazine','equip_gauzepackaged',1,1,1.0000000000),(19,'Magazine','ItemTrashRazor',1,1,0.0000000000),(19,'Magazine','equip_rag',1,1,0.0000000000),(19,'Magazine','1Rnd_Arrow_Wood',2,4,1.0000000000),(19,'Magazine','TrashJackDaniels',1,1,0.6500000000),(19,'Magazine','ItemSodaRabbit',2,2,0.6500000000),(20,'Weapon','LeeEnfield_DZ',1,1,0.2500000000),(20,'Weapon','ItemKnife',1,1,0.6500000000),(20,'Weapon','ItemMachete',1,1,0.6500000000),(20,'Magazine','ItemTrashToiletpaper',1,1,0.8500000000),(20,'Magazine','ItemSodaRabbit',6,6,0.8500000000),(20,'Magazine','FoodCanHerpyEmpty',1,2,0.6500000000),(20,'Magazine','10Rnd_303British',2,4,1.0000000000),(20,'Magazine','ItemFuelcan',1,1,0.7500000000),(20,'Backpack','DZ_Patrol_Pack_EP1',1,2,0.4500000000),(21,'Weapon','SVD_DZ',1,1,0.1500000000),(21,'Weapon','ItemCompass',1,1,0.7500000000),(21,'Weapon','ItemHatchet',1,1,0.8000000000),(21,'Weapon','ItemFishingPole',1,1,0.2500000000),(21,'Magazine','PartWoodPile',1,1,0.3500000000),(21,'Magazine','equip_brick',1,1,0.5000000000),(21,'Magazine','FoodCanFrankBeans',1,2,0.5000000000),(21,'Magazine','10Rnd_762x54_SVD',2,4,1.0000000000),(21,'Magazine','ItemTent',1,1,0.5000000000),(21,'Magazine','ItemWaterbottleBoiled',1,1,0.4000000000),(21,'Magazine','FoodCanRusStew',1,1,0.5000000000),(21,'Magazine','FoodrabbitCooked',1,1,0.5000000000),(21,'Backpack','DZ_Patrol_Pack_EP1',1,1,0.5000000000),(22,'Weapon','Remington870_DZ',1,1,0.3500000000),(22,'Magazine','equip_feathers',2,4,1.0000000000),(22,'Magazine','8Rnd_12Gauge_Slug',2,4,1.0000000000),(22,'Magazine','2Rnd_12Gauge_Buck',2,4,0.5000000000),(22,'Magazine','ItemWire',1,2,0.6500000000);
/*!40000 ALTER TABLE `vehicle_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_locations`
--

DROP TABLE IF EXISTS `vehicle_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_locations` (
  `ID` int(11) NOT NULL,
  `Worldspace` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`ID`,`Worldspace`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='0 ATV\r\n1 Motorcycle\r\n2 Huey\r\n4 Mi-17\r\n3 Little bird\r\n5 AN-2\r\n6 Bike\r\n7 Military car (Landrover, HMMWV, Camo UAZs, Armed pickups)\r\n10 Civilian car (including SUV)\r\n11 Bus\r\n12 Tractor\r\n13 Truck\r\n14 Boat';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_locations`
--

LOCK TABLES `vehicle_locations` WRITE;
/*!40000 ALTER TABLE `vehicle_locations` DISABLE KEYS */;
INSERT INTO `vehicle_locations` VALUES (1,'[219,[4148.12,6579.55,3.866]]'),(2,'[255,[5748.33,9844.07,0.00140762]]'),(2,'[278,[5796.78,10761.3,0.00142288]]'),(2,'[52,[7358.11,7984.73,0.00138092]]'),(2,'[74,[7029.23,11540.7,0.00143909]]'),(2,'[90,[7051.95,5777.77,0.00144196]]'),(3,'[47,[4521,11230,3.81583]]'),(4,'[126,[7647.15,7406.74,0.00144958]]'),(4,'[180,[5849.93,8659.4,0.00143814]]'),(4,'[220,[3941.47,7595.37,0.00143814]]'),(4,'[351,[7685.47,8729.3,0.00157166]]'),(5,'[182,[4127.6,6703.51,0.00146484]]'),(5,'[203,[4849.06,10858.9,0.00143909]]'),(5,'[23,[5975.07,6690.23,0.00141525]]'),(5,'[250,[4090.02,9225.91,0.00144958]]'),(5,'[280,[4418.92,10748.9,0.00143909]]'),(5,'[93,[3552.5,6675.55,0.00143433]]'),(6,'[1,[4991.09,8165.97,0.00148773]]'),(6,'[180,[7894.81,7718.42,0.00142384]]'),(6,'[270,[6739.51,11323.5,0.00143909]]'),(6,'[90,[4837.61,6145.8,0.00143814]]'),(7,'[0,[4430.48,11303.5,8.4149]]'),(7,'[110,[9134.51,10091.7,4.11368]]'),(7,'[180,[4306.51,4719.16,5.83564]]'),(7,'[92,[4387.41,11293.1,7.2188]]'),(8,'[296,[8252.9,10792.1,0.00143909]]'),(9,'[11,[6665.94,11022.5,0.00143909]]'),(9,'[22,[8957.08,10629.1,0.00132465]]'),(9,'[34,[2197.75,5762.33,0.00141096]]'),(9,'[6,[4877.88,6215.15,0.00143814]]'),(9,'[81,[7209.53,10848.4,0.00142956]]'),(10,'[228,[6044.81,6760.48,2.24013]]'),(10,'[245,[5031.6,6100.52,5.8214]]'),(10,'[55,[4525.93,11255.1,0.001692]]'),(10,'[88,[2144.77,5754.73,1.84505]]');
/*!40000 ALTER TABLE `vehicle_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_spawns`
--

DROP TABLE IF EXISTS `vehicle_spawns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_spawns` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Classname` varchar(255) NOT NULL,
  `Chance` double NOT NULL,
  `MaxNum` int(11) NOT NULL DEFAULT '1',
  `Location` int(11) NOT NULL,
  `Inventory` int(11) DEFAULT NULL,
  `Hitpoints` int(11) DEFAULT NULL,
  `MinDamage` double NOT NULL,
  `MaxDamage` double NOT NULL,
  `MinFuel` double NOT NULL,
  `MaxFuel` double NOT NULL,
  `MaxWeapons` int(11) NOT NULL,
  `MaxMagazines` int(11) NOT NULL,
  `MaxBackpacks` int(11) NOT NULL,
  `CleanupTime` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Classname` (`Classname`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_spawns`
--

LOCK TABLES `vehicle_spawns` WRITE;
/*!40000 ALTER TABLE `vehicle_spawns` DISABLE KEYS */;
INSERT INTO `vehicle_spawns` VALUES (36,'PBX',0.55,4,10,4,2,0.2,0.8,0,0.8,5,50,2,300),(34,'TT650_Ins',0.95,5,9,2,2,0.2,0.8,0,0.8,5,5,0,120),(35,'TT650_TK_CIV_EP1',0.95,5,9,2,2,0.2,0.8,0,0.8,5,5,0,120),(32,'Old_moto_TK_Civ_EP1',0.95,5,9,2,2,0.2,0.8,0,0.8,5,5,0,120),(33,'M1030',0.95,5,9,2,2,0.2,0.8,0,0.8,5,5,0,120),(31,'Old_bike_TK_CIV_EP1',0.95,5,9,2,2,0.2,0.8,0,0.8,5,5,0,120),(30,'Tractor',0.75,1,8,22,1,0.2,0.8,0,0.8,10,50,2,60),(29,'Smallboat_1',0.6,4,7,16,2,0.2,0.8,0,0.8,20,200,4,200),(26,'V3S_Civ',0.55,4,6,17,1,0.2,0.8,0,0.8,50,200,8,300),(28,'Fishing_Boat',0.6,4,7,16,2,0.2,0.8,0,0.8,40,400,8,400),(27,'Ural_INS',0.55,4,6,17,1,0.2,0.8,0,0.8,50,200,8,300),(25,'UralCivil',0.55,4,6,18,1,0.2,0.8,0,0.8,50,200,8,300),(24,'HMMWV_DZ',0.2,6,5,5,1,0.2,0.8,0,0.8,10,50,2,300),(22,'BAF_Offroad_D',0.5,6,5,10,1,0.2,0.8,0,0.8,10,90,2,300),(23,'BAF_Offroad_W',0.5,6,5,10,1,0.2,0.8,0,0.8,10,90,2,300),(20,'LandRover_CZ_EP1',0.5,6,5,10,1,0.2,0.8,0,0.8,10,90,2,300),(21,'LandRover_TK_CIV_EP1',0.5,6,5,10,1,0.2,0.8,0,0.8,10,90,2,300),(17,'UAZ_Unarmed_TK_CIV_EP1',0.6,6,5,9,1,0.2,0.8,0,0.8,10,50,8,300),(18,'UAZ_Unarmed_TK_EP1',0.7,6,5,9,1,0.2,0.8,0,0.8,10,50,8,300),(19,'UAZ_Unarmed_UN_EP1',0.6,6,5,8,1,0.2,0.8,0,0.8,10,50,8,300),(16,'UAZ_RU',0.6,6,5,9,1,0.2,0.8,0,0.8,10,50,8,300),(13,'UralOpen_INS',0.6,4,4,17,1,0.2,0.8,0,0.8,50,200,8,300),(14,'Ural_CDF',0.6,4,4,17,1,0.2,0.8,0,0.8,50,200,8,300),(15,'Ural_TK_CIV_EP1',0.6,4,4,17,1,0.2,0.8,0,0.8,50,200,8,300),(12,'UralCivil2',0.6,4,4,17,1,0.2,0.8,0,0.8,50,200,8,300),(11,'AH6X_DZ',0.25,1,3,7,3,0.2,0.8,0,0.8,3,30,2,900),(10,'MH6J_DZ',0.25,1,3,7,3,0.2,0.8,0,0.8,3,30,2,900),(8,'datsun1_civil_3_open',0.55,4,2,19,1,0.2,0.8,0,0.8,10,50,2,300),(9,'Mi17_Civilian_Nam',0.25,1,3,7,3,0.2,0.8,0,0.8,3,30,2,900),(7,'datsun1_civil_2_covered',0.55,4,2,19,1,0.2,0.8,0,0.8,10,50,2,300),(6,'hilux1_civil_3_open',0.55,4,2,11,1,0.2,0.8,0,0.8,10,50,2,300),(5,'hilux1_civil_2_covered',0.55,4,2,19,1,0.2,0.8,0,0.8,10,50,2,300),(4,'hilux1_civil_1_open',0.55,4,2,19,1,0.2,0.8,0,0.8,10,50,2,300),(1,'Ka60_GL_NAC',0.25,1,1,13,3,0.2,0.8,0,0.8,5,25,4,900),(3,'UH1H_DZ',0.5,1,1,13,3,0.2,0.8,0,0.8,5,25,4,900),(2,'UH1H_2_DZ',0.25,1,1,13,3,0.2,0.8,0,0.8,5,25,4,900);
/*!40000 ALTER TABLE `vehicle_spawns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_spawns_groups`
--

DROP TABLE IF EXISTS `vehicle_spawns_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_spawns_groups` (
  `Spawn_ID` int(11) NOT NULL,
  `Group_ID` int(11) NOT NULL,
  PRIMARY KEY (`Spawn_ID`,`Group_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_spawns_groups`
--

LOCK TABLES `vehicle_spawns_groups` WRITE;
/*!40000 ALTER TABLE `vehicle_spawns_groups` DISABLE KEYS */;
INSERT INTO `vehicle_spawns_groups` VALUES (1,1),(2,1),(3,1),(4,2),(5,2),(6,2),(7,2),(8,2),(9,3),(10,3),(11,3),(12,4),(13,4),(14,4),(15,4),(16,5),(17,5),(18,5),(19,5),(20,5),(21,5),(22,5),(23,5),(24,5),(25,6),(26,6),(27,6),(28,7),(29,7),(30,8),(31,9),(32,9),(33,9),(34,9),(35,9),(36,10);
/*!40000 ALTER TABLE `vehicle_spawns_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dayzhivemind'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `3h updates` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = '+00:00' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`%`*/ /*!50106 EVENT `3h updates` ON SCHEDULE EVERY 3 HOUR STARTS '2015-01-26 03:29:45' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
	update `event_scheduler` set `LastRun` = NOW() where `System` = "3hRespawns";
	
	CALL `pMain`('1');
	
END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'dayzhivemind'
--
/*!50003 DROP FUNCTION IF EXISTS `countVehicles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `countVehicles`(`inst` int) RETURNS int(11)
    READS SQL DATA
BEGIN
	DECLARE count INT DEFAULT 0;
	
	SELECT COUNT(*)
	INTO count
	FROM object_data
	WHERE CharacterID = 0
		AND Instance = inst;
	
	RETURN count;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `countVehiclesClass` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `countVehiclesClass`(`inst` int,`c` varchar(255)) RETURNS int(11)
    READS SQL DATA
BEGIN
	DECLARE count INT DEFAULT 0;
	
	SELECT COUNT(*)
		INTO count
		FROM object_data
		WHERE Instance = inst
		AND CharacterID = 0
		AND Classname = c;
	
	RETURN count;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `countVehiclesGroup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `countVehiclesGroup`(`inst` int, `groupid` int) RETURNS int(11)
    READS SQL DATA
BEGIN
	DECLARE count INT;
	
	/*SELECT COUNT(*)
		INTO count
		FROM object_data AS obj
		WHERE CharacterID = 0
			AND Instance = instance
		AND t = (SELECT `Group` FROM vehicle_spawns AS spawn WHERE spawn.Classname = obj.Classname LIMIT 1);*/
	
	SELECT COUNT(*)
	INTO count
	FROM object_data
	WHERE CharacterID = 0
		AND Instance = inst
		AND Classname IN
		(
			SELECT Classname
			FROM vehicle_spawns
			WHERE ID IN
			(
				SELECT Spawn_ID
				FROM vehicle_spawns_groups
				WHERE Group_ID = groupid
			)
		);
	
	RETURN count;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `generateUID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `generateUID`(`inst` int) RETURNS bigint(20)
    DETERMINISTIC
BEGIN
	DECLARE Min BIGINT DEFAULT 10000000;
	DECLARE Max BIGINT DEFAULT 99999999;
	
	DECLARE UID BIGINT DEFAULT 0;
	
	WHILE (UID = 0) DO
		SET UID = ROUND(Min + RAND() * (Max - Min));
		
		IF (UID IN (SELECT ObjectUID FROM object_data WHERE CharacterID = 0 AND Instance = inst)) THEN
			SET UID = 0;
		END IF;
	END WHILE;
	
	RETURN UID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getNumSpawnable` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `getNumSpawnable`(`inst` int, `spawnid` int) RETURNS int(11)
    DETERMINISTIC
BEGIN
	DECLARE Class_Max INT DEFAULT (SELECT MaxNum - countVehiclesClass(inst, Classname) FROM vehicle_spawns WHERE ID = spawnid LIMIT 1);
	DECLARE Group_Max INT DEFAULT
	(
		SELECT MIN(MaxNum - countVehiclesGroup(inst, ID))
		FROM vehicle_groups
		WHERE ID IN
		(
			SELECT Group_ID
			FROM vehicle_spawns_groups
			WHERE Spawn_ID = spawnid
		)
	);
	
	RETURN IF(ISNULL(Group_Max), Class_Max, IF(Class_Max < Group_Max, Class_Max, Group_Max));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `randomizeVehicleHitpoints` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `randomizeVehicleHitpoints`(`class` varchar(255)) RETURNS varchar(2000) CHARSET latin1
    READS SQL DATA
BEGIN
	#---------------------------------------------------------------
	#Random number r is generated in the range ]0, 1[.
	#If r + MinDamage is less than Threshold, damage to part is set to MinDamage.
	DECLARE Threshold DOUBLE DEFAULT 0.5;
	#---------------------------------------------------------------
	
	DECLARE Result varchar(2000);
	DECLARE Hitpoints_ID INT DEFAULT (SELECT Hitpoints FROM vehicle_spawns WHERE Classname = class LIMIT 1);
	
	IF (ISNULL(Hitpoints_ID)) THEN
		RETURN "[]";
	END IF;
	
	SELECT GROUP_CONCAT("[\"", PartName, "\",", TRUNCATE(IF ((@r := MinDamage + RAND() * (MaxDamage - MinDamage)) < Threshold, MinDamage, @r), 4), "]")
		INTO Result
		FROM vehicle_hitpoints
		WHERE ID = Hitpoints_ID;
	
	RETURN CONCAT_WS("", "[", Result, "]");
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `randomizeVehicleInventory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `randomizeVehicleInventory`(`c` varchar(255)) RETURNS longtext CHARSET latin1
    READS SQL DATA
BEGIN
	DECLARE WeaponClasses		VARCHAR(255);
	DECLARE WeaponAmounts		VARCHAR(255);
	DECLARE MagazineClasses		VARCHAR(512); #changed to 512 since vehicle inventory can be large
	DECLARE MagazineAmounts		VARCHAR(255);
	DECLARE BackpackClasses		VARCHAR(255);
	DECLARE BackpackAmounts		VARCHAR(255);
	
	DECLARE InventoryID INT DEFAULT (SELECT Inventory FROM vehicle_spawns WHERE Classname = c LIMIT 1);
	
	DECLARE MaxWeapons		INT DEFAULT (SELECT MaxWeapons		FROM vehicle_spawns WHERE Classname = c LIMIT 1);
	DECLARE MaxMagazines	INT DEFAULT (SELECT MaxMagazines	FROM vehicle_spawns WHERE Classname = c LIMIT 1);
	DECLARE MaxBackpacks	INT DEFAULT (SELECT MaxBackpacks	FROM vehicle_spawns WHERE Classname = c LIMIT 1);
	
	IF (ISNULL(InventoryID)) THEN
		RETURN "[]";
	END IF;
	
	#Weapons
	SET @amt := 0;
	SET @sum := 0;
	SELECT	GROUP_CONCAT("\"", Classname, "\""),
			GROUP_CONCAT(IF(@sum > MaxWeapons, MaxWeapons - @sum + @amt, @amt))
	INTO WeaponClasses, WeaponAmounts
	FROM 
	(
		SELECT *
		FROM vehicle_inventory
		WHERE ID = InventoryID
			AND Type = "Weapon" 
			AND RAND() < Chance
		ORDER BY RAND()
	) AS x
	WHERE (@amt := ROUND(x.MinAmount + RAND() * (x.MaxAmount - x.MinAmount))) IS NOT NULL
		AND (@sum := @sum + @amt) IS NOT NULL
		AND @sum - @amt < MaxWeapons;
	
	#Magazines
	SET @amt := 0;
	SET @sum := 0;
	SELECT	GROUP_CONCAT("\"", Classname, "\""),
			GROUP_CONCAT(IF(@sum > MaxMagazines, MaxMagazines - @sum + @amt, @amt))
	INTO MagazineClasses, MagazineAmounts
	FROM 
	(
		SELECT *
		FROM vehicle_inventory 
		WHERE ID = InventoryID
			AND Type = "Magazine" 
			AND RAND() < Chance
		ORDER BY RAND()
	) AS x
	WHERE (@amt := ROUND(x.MinAmount + RAND() * (x.MaxAmount - x.MinAmount))) IS NOT NULL
		AND (@sum := @sum + @amt) IS NOT NULL
		AND @sum - @amt < MaxMagazines;
	
	#Backpacks
	SET @amt := 0;
	SET @sum := 0;
	SELECT	GROUP_CONCAT("\"", Classname, "\""),
			GROUP_CONCAT(IF(@sum > MaxBackpacks, MaxBackpacks - @sum + @amt, @amt))
	INTO BackpackClasses, BackpackAmounts
	FROM 
	(
		SELECT *
		FROM vehicle_inventory 
		WHERE ID = InventoryID
			AND Type = "Backpack" 
			AND RAND() < Chance
		ORDER BY RAND()
	) AS x
	WHERE (@amt := ROUND(x.MinAmount + RAND() * (x.MaxAmount - x.MinAmount))) IS NOT NULL
		AND (@sum := @sum + @amt) IS NOT NULL
		AND @sum - @amt < MaxBackpacks;
	
	#Concatenate all classes and amounts into one string in the format:
	#[[[<backpack classes>],[<weapon amounts>]],[[<magazine classes>],[<magazine amounts>]],[[<backpack classes>],[<backpack amounts>]]]
	RETURN CONCAT_WS
	(
		"",
		"[[[",			WeaponClasses,
		"], [",			WeaponAmounts,
		"]], [[",		MagazineClasses,
		"], [",			MagazineAmounts,
		"]], [[",		BackpackClasses,
		"], [",			BackpackAmounts,
		"]]]"
	);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `rndspawn` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `rndspawn`(`chance` double) RETURNS tinyint(1)
    DETERMINISTIC
BEGIN

	DECLARE bspawn tinyint(1) DEFAULT 0;

	IF (RAND() <= chance) THEN
		SET bspawn = 1;
	END IF;

	RETURN bspawn;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pCleanup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pCleanup`()
BEGIN 
#Last ran
	update `event_scheduler` set `LastRun` = NOW() where `System` = "pCleanup";

#starts outofbounds cleanup
        CALL pCleanupOOB();
 
#remove damaged objects
        DELETE
                FROM object_data
                WHERE CharacterID != 0 AND Damage >= 1;

#remove damaged vehicles older than vehicle_spawns.CleanupTime
	DELETE FROM object_data
	WHERE CharacterID = 0
		AND Damage = 1
		AND SYSDATE() > DATE(last_updated) + INTERVAL (
			SELECT CleanupTime
			FROM vehicle_spawns
			WHERE vehicle_spawns.Classname = object_data.Classname
			LIMIT 1) MINUTE;

#remove empty tents older than seven days
        DELETE
                FROM object_data
                WHERE (Classname like 'TentStorage%' or Classname like 'StashSmall%' or Classname like 'StashMedium%' or Classname like 'DomeTentStorage%')
                        AND DATE(last_updated) < CURDATE() - INTERVAL 7 DAY
                        AND Inventory = '[[[],[]],[[],[]],[[],[]]]';
       
        DELETE
                FROM object_data
                WHERE (Classname like 'TentStorage%' or Classname like 'StashSmall%' or Classname like 'StashMedium%' or Classname like 'DomeTentStorage%')
                        AND DATE(last_updated) < CURDATE() - INTERVAL 7 DAY
                        AND Inventory = '[]';          
 
#remove barbed wire older than two days
        DELETE
            FROM object_data
				WHERE Classname = 'Wire_cat1'
					AND DATE(last_updated) < CURDATE() - INTERVAL 2 DAY;
					                      
#remove Tank Traps older than fifteen days
        DELETE
                FROM object_data
                WHERE Classname = 'Hedgehog_DZ'
                        AND DATE(last_updated) < CURDATE() - INTERVAL 15 DAY;
 
#remove Sandbags older than twenty days
        DELETE
                FROM object_data
                WHERE Classname = 'Sandbag1_DZ'
                        AND DATE(last_updated) < CURDATE() - INTERVAL 20 DAY;
 
#remove Traps older than five days
        DELETE
                FROM object_data
                WHERE (Classname = 'BearTrap_DZ' or Classname = 'TrapBearTrapFlare' or Classname = 'TrapBearTrapSmoke' or Classname = 'Trap_Cans' or Classname = 'TrapTripwireFlare' or Classname = 'TrapTripwireGrenade' or Classname = 'TrapTripwireSmoke')
                        AND DATE(last_updated) < CURDATE() - INTERVAL 5 DAY; 
#remove incomplete gates after 1 Day
        DELETE
                FROM object_data
                WHERE (Classname = 'WoodenGate_foundation')
                        AND DATE(last_updated) < CURDATE() - INTERVAL 1 Day;                        
#remove incomplete fences after 1 Day								
        DELETE
                FROM object_data
                WHERE (Classname = 'WoodenFence_1_foundation')
                        AND DATE(last_updated) < CURDATE() - INTERVAL 1 Day;  
                        
#remove incomplete fences after 3 Dayz								
        DELETE
                FROM object_data
                WHERE (Classname = 'WoodenFence_1_frame' or Classname = 'WoodenFence_quaterpanel' or Classname = 'WoodenFence_halfpanel' or Classname = 'WoodenFence_thirdpanel')
                        AND DATE(last_updated) < CURDATE() - INTERVAL 3 Day; 
                       
#remove dead players from data table
        DELETE
                FROM character_data
                WHERE Alive=0 AND DATE(last_updated) < CURDATE() - INTERVAL 90 Day; 
#Remove Bad Data
				DELETE
								FROM object_data
								WHERE Classname like '%_base';
			
#Remove wire if the owner has died.						
		DELETE
			FROM Object_DATA
			USING Object_DATA, Character_DATA
				WHERE Object_DATA.Classname = 'Wire_cat1'
					AND Object_DATA.CharacterID = Character_DATA.CharacterID
					AND Character_DATA.Alive = 0;
					
#remove Base_Fire_DZ older than 5 days
        DELETE
            FROM object_data
				WHERE Classname = 'Base_Fire_DZ'
					AND DATE(last_updated) < CURDATE() - INTERVAL 5 DAY;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pCleanupBase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pCleanupBase`()
BEGIN
#Last ran
	update `event_scheduler` set `LastRun` = NOW() where `System` = "pCleanupBase";
	
#Start Maintenance 1-4 Mode       
	Update
		object_data 
			set Hitpoints = '["Maintenance"]'                    
				WHERE (Classname = 'WoodenFence_1' or Classname = 'WoodenFence_2' or Classname = 'WoodenFence_3' or Classname = 'WoodenFence_4')
				AND DATE(last_updated) < CURDATE() - INTERVAL 7 DAY
 				AND Hitpoints = '[]';

#Start Maintenance 5-7 Mode       
	Update
		object_data 
			set Hitpoints = '["Maintenance"]'                    
				WHERE (Classname = 'WoodenFence_5' or Classname = 'WoodenFence_6' or Classname = 'WoodenFence_7')
				AND DATE(last_updated) < CURDATE() - INTERVAL 14 DAY
 				AND Hitpoints = '[]';
 				
#Check WoodenFence_1_foundation
	update
		object_data
			set Classname = 'WoodenFence_1_foundation'
				where Classname = 'WoodenFence_1_frame'
				AND Hitpoints = '["Maintenance"]'
				AND DATE(last_updated) < CURDATE() - INTERVAL 3 DAY;

#Check WoodenFence_1_frame
	update
		object_data
			set Classname = 'WoodenFence_1_frame'
				where Classname = 'WoodenFence_quaterpanel'
				AND Hitpoints = '["Maintenance"]'
				AND DATE(last_updated) < CURDATE() - INTERVAL 3 DAY;

#Check WoodenFence_halfpanel
	update
		object_data
			set Classname = 'WoodenFence_quaterpanel'
				where Classname = 'WoodenFence_halfpanel'
				AND Hitpoints = '["Maintenance"]'
				AND DATE(last_updated) < CURDATE() - INTERVAL 3 DAY;
				
#Check WoodenFence_thirdpanel
	update
		object_data
			set Classname = 'WoodenFence_halfpanel'
				where Classname = 'WoodenFence_thirdpanel'
				AND Hitpoints = '["Maintenance"]'
				AND DATE(last_updated) < CURDATE() - INTERVAL 3 DAY;
				 
#Check fence 1
	update
		object_data
			set Classname = 'WoodenFence_thirdpanel'
				where Classname = 'WoodenFence_1'
				AND Hitpoints = '["Maintenance"]'
				AND DATE(last_updated) < CURDATE() - INTERVAL 3 DAY;
#Check fence 2
	update
		object_data
			set Classname = 'WoodenFence_1'
				where Classname = 'WoodenFence_2'
				AND Hitpoints = '["Maintenance"]'
				AND DATE(last_updated) < CURDATE() - INTERVAL 3 DAY;	
#Check fence 3
	update
		object_data
			set Classname = 'WoodenFence_2'
				where Classname = 'WoodenFence_3'
				AND Hitpoints = '["Maintenance"]'
				AND DATE(last_updated) < CURDATE() - INTERVAL 3 DAY;					
#Check fence 4
	update
		object_data
			set Classname = 'WoodenFence_3'
				where Classname = 'WoodenFence_4'
				AND Hitpoints = '["Maintenance"]'
				AND DATE(last_updated) < CURDATE() - INTERVAL 3 DAY;					
#Check fence 5
	update
		object_data
			set Classname = 'WoodenFence_4'
				where Classname = 'WoodenFence_5'
				AND Hitpoints = '["Maintenance"]'
				AND DATE(last_updated) < CURDATE() - INTERVAL 6 DAY;					
#Check fence 6
	update
		object_data
			set Classname = 'WoodenFence_5'
				where Classname = 'WoodenFence_6'
				AND Hitpoints = '["Maintenance"]'
				AND DATE(last_updated) < CURDATE() - INTERVAL 6 DAY;					
#Check fence 7
	update
		object_data
			set Classname = 'WoodenFence_6'
				where Classname = 'WoodenFence_7'
				AND Hitpoints = '["Maintenance"]'
				AND DATE(last_updated) < CURDATE() - INTERVAL 6 DAY;	
				
#DayZ_WoodenGates = ["WoodenGate_1","WoodenGate_2","WoodenGate_3","WoodenGate_4"];
#Start Maintenance Mode Gates				
	Update
		object_data 
			set Hitpoints = '["Maintenance"]'                    
				WHERE (Classname = 'WoodenGate_1' or Classname = 'WoodenGate_2' or Classname = 'WoodenGate_3' or Classname = 'WoodenGate_4')
				AND DATE(last_updated) < CURDATE() - INTERVAL 7 DAY
 				AND Hitpoints = '[]';
				
#Check WoodenGate_1
	update
		object_data
			set Classname = 'WoodenGate_foundation'
				where Classname = 'WoodenGate_1'
				AND Hitpoints = '["Maintenance"]'
				AND DATE(last_updated) < CURDATE() - INTERVAL 3 DAY;
				
#Check WoodenGate_2
	update
		object_data
			set Classname = 'WoodenGate_1'
				where Classname = 'WoodenGate_2'
				AND Hitpoints = '["Maintenance"]'
				AND DATE(last_updated) < CURDATE() - INTERVAL 3 DAY;
				
#Check WoodenGate_3
	update
		object_data
			set Classname = 'WoodenGate_2'
				where Classname = 'WoodenGate_3'
				AND Hitpoints = '["Maintenance"]'
				AND DATE(last_updated) < CURDATE() - INTERVAL 3 DAY;
				
#Check WoodenGate_4
	update
		object_data
			set Classname = 'WoodenGate_3'
				where Classname = 'WoodenGate_4'
				AND Hitpoints = '["Maintenance"]'
				AND DATE(last_updated) < CURDATE() - INTERVAL 3 DAY;
				
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pCleanupOOB` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pCleanupOOB`()
BEGIN

	DECLARE intLineCount	INT DEFAULT 0;
	DECLARE intDummyCount	INT DEFAULT 0;
	DECLARE intDoLine			INT DEFAULT 0;
	DECLARE intWest				INT DEFAULT 0;
	DECLARE intNorth			INT DEFAULT 0;

	SELECT COUNT(*)
		INTO intLineCount
		FROM Object_DATA;

	SELECT COUNT(*)
		INTO intDummyCount
		FROM Object_DATA
		WHERE Classname = 'dummy';

	WHILE (intLineCount > intDummyCount) DO
	
		SET intDoLine = intLineCount - 1;

		SELECT ObjectUID, Worldspace
			INTO @rsObjectUID, @rsWorldspace
			FROM Object_DATA
			LIMIT intDoLine, 1;

		SELECT REPLACE(@rsWorldspace, '[', '') INTO @rsWorldspace;
		SELECT REPLACE(@rsWorldspace, ']', '') INTO @rsWorldspace;
		SELECT REPLACE(SUBSTRING(SUBSTRING_INDEX(@rsWorldspace, ',', 2), LENGTH(SUBSTRING_INDEX(@rsWorldspace, ',', 2 -1)) + 2), ',', '') INTO @West;
		SELECT REPLACE(SUBSTRING(SUBSTRING_INDEX(@rsWorldspace, ',', 3), LENGTH(SUBSTRING_INDEX(@rsWorldspace, ',', 3 -1)) + 2), ',', '') INTO @North;

		SELECT INSTR(@West, '-') INTO intWest;
		SELECT INSTR(@North, '-') INTO intNorth;

		IF (intNorth = 0) THEN
			SELECT CONVERT(@North, DECIMAL(16,8)) INTO intNorth;
		END IF;

# Check for NSEW boundaries
		IF (intWest < 0 OR intWest > 15360 OR intNorth > 15360 OR intNorth < 750) THEN
			DELETE FROM Object_DATA
				WHERE ObjectUID = @rsObjectUID;
		END IF;
			
		SET intLineCount = intLineCount - 1;

	END WHILE;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pMain` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pMain`(IN `i` INT)
    MODIFIES SQL DATA
BEGIN
# Server instance ID.
#-----------------------------------------------
	DECLARE sInstance VARCHAR(8) DEFAULT i;
#-----------------------------------------------
#Last Ran
	update `event_scheduler` set `LastRun` = NOW() where `System` = "pMain";
#Starts Cleanup
	CALL pCleanupBase(); #comment out to disable base decay
	CALL pCleanup();

	CALL pSpawnVehicles(sInstance);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pSpawnVehicles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pSpawnVehicles`(IN `i` int)
BEGIN
	#---------------------------------------------------------------
	#Change this to affect the maximum number of vehicles on the server.
	DECLARE MaxVehicles INT DEFAULT 80;
	
	#Change this to affect the radius that is checked for existing vehicles when spawning.
	#If set to 0 or negative vehicles will always spawn despite blocking vehicles.
	DECLARE SearchRadius DOUBLE DEFAULT 10;
	#---------------------------------------------------------------
	
	DECLARE ServerInstance INT DEFAULT i;
	DECLARE MaxNumSpawn INT DEFAULT MaxVehicles - countVehicles(ServerInstance);

	
	set @countNULLs = 0;	
	set @tobjLoop = 3;
	WHILE (@tobjLoop > 0) DO
	DROP TEMPORARY TABLE IF EXISTS temp_objects;
	CREATE TEMPORARY TABLE temp_objects AS
		(
			SELECT	CONVERT(SUBSTRING(SUBSTRING_INDEX(@ws, ",", 2), LENGTH(SUBSTRING_INDEX(@ws, ",", 1)) + 2), DECIMAL(10, 5)) AS X,
					CONVERT(SUBSTRING(SUBSTRING_INDEX(@ws, ",", 3), LENGTH(SUBSTRING_INDEX(@ws, ",", 2)) + 2), DECIMAL(10, 5)) AS Y
			FROM object_data
			WHERE CharacterID = 0
				AND Instance = ServerInstance
				AND (@ws := Worldspace) IS NOT NULL
				AND (@ws := REPLACE(@ws, "[", "")) IS NOT NULL
				AND (@ws := REPLACE(@ws, "]", "")) IS NOT NULL
		);
		
		set @countNULLs = (SELECT count(*) FROM temp_objects where (X IS NULL OR Y IS NULL));
		IF (@countNULLs > 0 ) THEN 
			SET @tobjLoop = @tobjLoop - 1;
		ELSE 
			SET @tobjLoop = 0;
		END IF;
	END WHILE;
	
	IF (@countNULLs > 0 ) THEN 
		SELECT "No vehicles spawned. NULLs found in temp_objects.";
	END IF;
	
	
	DROP TEMPORARY TABLE IF EXISTS temp_locations;
	CREATE TEMPORARY TABLE temp_locations AS
	(
		SELECT vehicle_locations.ID, temp2.Worldspace
		FROM
		(
			SELECT Worldspace
			FROM
			(
				SELECT	Worldspace,
						CONVERT(SUBSTRING(SUBSTRING_INDEX(@ws, ",", 2), LENGTH(SUBSTRING_INDEX(@ws, ",", 1)) + 2), DECIMAL(10, 5)) AS X,
						CONVERT(SUBSTRING(SUBSTRING_INDEX(@ws, ",", 3), LENGTH(SUBSTRING_INDEX(@ws, ",", 2)) + 2), DECIMAL(10, 5)) AS Y
				FROM (SELECT Worldspace FROM vehicle_locations GROUP BY Worldspace) AS temp
				WHERE (@ws := Worldspace) IS NOT NULL
					AND (@ws := REPLACE(@ws, "[", "")) IS NOT NULL
					AND (@ws := REPLACE(@ws, "]", "")) IS NOT NULL
			) AS temp1
			WHERE
			(
				@distance :=
				(
					SELECT MIN(SQRT((temp_objects.X - temp1.X) * (temp_objects.X - temp1.X) + (temp_objects.Y - temp1.Y) * (temp_objects.Y - temp1.Y)))
					FROM temp_objects
				)
			) IS NULL OR @distance > SearchRadius
		) AS temp2
		JOIN vehicle_locations
			ON vehicle_locations.Worldspace = temp2.Worldspace
	);
	
	DROP TEMPORARY TABLE IF EXISTS temp_spawns;
	CREATE TEMPORARY TABLE temp_spawns AS
	(
		SELECT temp.ID, Classname, Worldspace, Chance, MinFuel, MaxFuel, MinDamage, MaxDamage
		FROM
		(
			SELECT *
			FROM vehicle_spawns
			WHERE (@numSpawnable := getNumSpawnable(ServerInstance, ID)) IS NOT NULL
				AND @numSpawnable > 0
			ORDER BY RAND()
		) AS temp
		JOIN temp_locations
			ON temp_locations.ID = temp.Location
		ORDER BY RAND()
	);

	SET @numSpawned = 0;
	WHILE (@numSpawned < MaxNumSpawn AND (SELECT COUNT(*) FROM temp_spawns) > 0) DO
		SET @spawnid = (SELECT ID FROM temp_spawns LIMIT 1);
		SET @chance = (SELECT Chance FROM temp_spawns LIMIT 1);
		SET @numSpawnable = getNumSpawnable(ServerInstance, @spawnid);
		IF (@numSpawnable > 0 AND RAND() < @chance) THEN
			SET @worldspace = (SELECT Worldspace FROM temp_spawns LIMIT 1);
			
			#SKI GOGGLES - prevent random double-WS inserts
			set @countWS = (SELECT count(*) FROM object_data where characterid=0 AND worldspace=@worldspace);
			IF (@CountWS < 1) THEN
			#SKI GOGGLES - prevent random double-WS inserts
			
				INSERT INTO object_data (ObjectUID, Classname, Instance, CharacterID, Worldspace, Inventory, Hitpoints, Fuel, Damage, Datestamp)
				SELECT generateUID(ServerInstance), Classname, ServerInstance, 0, Worldspace,
					randomizeVehicleInventory(Classname),
					randomizeVehicleHitpoints(Classname),
					MinFuel + RAND() * (MaxFuel - MinFuel),
					MinDamage + RAND() * (MaxDamage - MinDamage),
					SYSDATE()
				FROM temp_spawns
				LIMIT 1;
			#SKI GOGGLES - prevent random double-WS inserts
			END IF;	
			#SKI GOGGLES - prevent random double-WS inserts
			DELETE FROM temp_spawns WHERE Worldspace = @worldspace;
			
			SET @numSpawned = @numSpawned + 1;
		END IF;
		
		SET @numSpawnable = @numSpawnable - 1;
		
		IF (@numSpawnable < 1) THEN
			DELETE FROM temp_spawns WHERE ID = @spawnid;
		END IF;
	END WHILE;
	
	SELECT CONCAT(@numSpawned, " vehicles spawned.");
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

-- Dump completed on 2021-05-23 17:12:50
