-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: newsdb
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
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` mediumtext NOT NULL,
  `content` longtext NOT NULL,
  `date` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Саранча из Бирюлево: откровения жителей Патриарших разозлили москвичей','meduza.io/shapito/2016/07/28/sarancha-iz-biryulevo-otkroveniya-zhiteley-patriarshih-razozlili-moskvichey','2016-07-28'),(2,'Фанатский трейлер: «Отряд самоубийц» с персонажами Тарантино','meduza.io/shapito/2016/07/27/fanatskiy-treyler-otryad-samoubiyts-s-personazhami-tarantino','2016-07-27'),(3,'Земляне прощаются с модулем «Филы». Он теперь совсем один на комете Чурюмова-Герасименко','meduza.io/shapito/2016/07/27/zemlyane-proschayutsya-s-modulem-fily-on-teper-sovsem-odin-na-komete-churyumova-gerasimenko','2016-07-27'),(4,'«Встретил как-то Пикачу, больше водки не хочу»: Знатоки «Что? Где? Когда?» сочиняют стишки о покемонах','meduza.io/shapito/2016/07/27/vstretil-kak-to-pikachu-bolshe-vodki-ne-hochu-znatoki-chto-gde-kogda-sochinyayut-stishki-o-pokemonah','2016-07-27'),(5,'Статую Давида в Петербурге оденут по требованию местной жительницы','meduza.io/shapito/2016/07/27/statuyu-davida-v-peterburge-odenut-po-trebovaniyu-mestnoy-zhitelnitsy','2016-07-27'),(6,'Американец кривляется под песни Рианны и Тимберлейка (но его маме наплевать)','meduza.io/shapito/2016/07/27/amerikanets-krivlyaetsya-pod-pesni-rianny-i-timberleyka-no-ego-mame-naplevat','2016-07-27'),(7,'Ничего особенного, просто Lamborghini везет коз','meduza.io/shapito/2016/07/27/nichego-osobennogo-prosto-lamborghini-vezet-koz','2016-07-27'),(8,'Вермишель Обама и Чак-чак Норрис: в фейсбуке придумывают названия для общепита','meduza.io/shapito/2016/07/26/vermishel-obama-i-chak-chak-norris-v-feysbuke-pridumyvayut-nazvaniya-dlya-obschepita','2016-07-26'),(9,'Африканский подросток круто перепел песню Селин Дион','meduza.io/shapito/2016/07/26/afrikanskiy-podrostok-bezumno-kruto-perepel-pesnyu-selin-dion','2016-07-26'),(10,'Солнце, я долетел','meduza.io/shapito/2016/07/26/solntse-ya-doletel','2016-07-26');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-28  5:23:54
