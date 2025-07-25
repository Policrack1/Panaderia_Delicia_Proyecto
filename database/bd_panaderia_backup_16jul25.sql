-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_panaderia
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `tipo` enum('pan','torta','galleta','queque','postre') NOT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `imagen_url` varchar(255) DEFAULT NULL,
  `popularidad` int DEFAULT '0',
  `destacado` tinyint(1) DEFAULT '0',
  `estado` enum('activo','inactivo') DEFAULT 'activo',
  `codigo_categoria` varchar(255) DEFAULT NULL,
  `orden` int DEFAULT NULL,
  `observaciones` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Pan','Vero repellat voluptate animi non voluptatum.','pan','2025-01-01 05:00:00','https://placeimg.com/987/52/any',7,0,'activo','C001',1,'Nobis eveniet incidunt accusantium provident quisquam et.'),(2,'Torta','Distinctio culpa nisi recusandae quasi.','torta','2025-02-27 05:00:00','https://placekitten.com/27/718',81,0,'inactivo','C002',2,'Cum saepe veniam provident fuga.'),(3,'Galleta','Est nisi quo consectetur blanditiis laborum.','galleta','2025-03-30 05:00:00','https://placeimg.com/899/713/any',72,0,'inactivo','C003',3,'Reiciendis officia dignissimos placeat atque.'),(4,'Queque','Mollitia consectetur ipsum alias magnam ducimus laboriosam.','queque','2025-01-12 05:00:00','https://www.lorempixel.com/359/91',25,1,'activo','C004',4,'Voluptate rerum magni itaque autem enim ab.'),(5,'Postre','Minus maiores provident est aspernatur recusandae.','postre','2025-03-19 05:00:00','https://placekitten.com/458/882',49,0,'inactivo','C005',5,'Debitis sunt laboriosam perferendis consectetur distinctio ea reprehenderit.'),(6,'Pan','Occaecati laudantium occaecati quibusdam iusto vel placeat.','pan','2025-03-21 05:00:00','https://placekitten.com/638/942',30,1,'inactivo','C006',6,'In consequuntur nobis maiores repellat et repellat.'),(7,'Torta','Voluptate animi vel voluptatem ea voluptate.','torta','2025-03-27 05:00:00','https://placekitten.com/851/60',67,0,'activo','C007',7,'Nulla error voluptate doloribus.'),(8,'Galleta','Perferendis fuga dignissimos non mollitia.','galleta','2025-03-03 05:00:00','https://www.lorempixel.com/225/933',18,0,'activo','C008',8,'Vero quia repellat cupiditate non.'),(9,'Queque','Cumque ad nam cupiditate ipsum.','queque','2025-03-19 05:00:00','https://placekitten.com/839/885',23,0,'activo','C009',9,'Molestiae mollitia aut.'),(10,'Postre','Minus tempore suscipit corrupti pariatur laborum eaque adipisci.','postre','2025-04-03 05:00:00','https://placeimg.com/813/753/any',93,1,'activo','C010',10,'Exercitationem in dolores velit adipisci iusto.'),(11,'Pan','Delectus nihil at quae.','pan','2025-01-31 05:00:00','https://placeimg.com/44/682/any',71,1,'activo','C011',11,'Reiciendis vel non praesentium molestiae error rem.'),(12,'Torta','Temporibus veniam a molestiae unde.','torta','2025-02-20 05:00:00','https://www.lorempixel.com/717/119',35,0,'activo','C012',12,'Reiciendis aut id esse corporis.'),(13,'Galleta','Ipsa sed quas veritatis incidunt accusamus quibusdam.','galleta','2025-02-01 05:00:00','https://placeimg.com/921/732/any',44,1,'activo','C013',13,'Vitae architecto magnam rem ad eum voluptatum.'),(14,'Queque','Quod aspernatur placeat est qui laborum.','queque','2025-03-09 05:00:00','https://www.lorempixel.com/689/365',93,1,'activo','C014',14,'Qui dignissimos itaque incidunt.'),(15,'Postre','Sequi architecto vel dolorum fuga sequi mollitia reiciendis.','postre','2025-01-07 05:00:00','https://placekitten.com/108/668',34,0,'activo','C015',15,'Quam a labore perferendis.'),(16,'Pan','Amet assumenda non earum maxime deleniti sed.','pan','2025-01-11 05:00:00','https://placeimg.com/282/229/any',65,0,'activo','C016',16,'Odio doloremque reprehenderit facilis explicabo magnam eos.'),(17,'Torta','Nesciunt ipsam voluptatum in consequatur neque dolorem.','torta','2025-03-16 05:00:00','https://www.lorempixel.com/214/955',25,1,'inactivo','C017',17,'Optio nostrum nam ut.'),(18,'Galleta','Temporibus tempora beatae.','galleta','2025-02-03 05:00:00','https://www.lorempixel.com/657/233',8,0,'activo','C018',18,'Saepe culpa veritatis rerum alias corrupti consequuntur.'),(19,'Queque','Totam quibusdam ullam veritatis in.','queque','2025-02-27 05:00:00','https://placeimg.com/285/422/any',55,1,'activo','C019',19,'Exercitationem quas aliquam quia.'),(20,'Postre','Reiciendis natus voluptatem dolore laboriosam voluptas unde quos.','postre','2025-02-09 05:00:00','https://placekitten.com/749/47',88,0,'inactivo','C020',20,'Esse omnis pariatur suscipit.'),(21,'Pan','Eveniet cumque error non.','pan','2025-04-09 05:00:00','https://placekitten.com/556/96',64,1,'inactivo','C021',21,'Officiis illo doloremque doloremque commodi sequi.'),(22,'Torta','Aliquid expedita ipsa occaecati odit.','torta','2025-01-13 05:00:00','https://placeimg.com/1003/988/any',46,0,'inactivo','C022',22,'Repellendus qui hic quia.'),(23,'Galleta','Magni quis repudiandae omnis occaecati dolorum.','galleta','2025-02-26 05:00:00','https://placekitten.com/110/582',51,1,'activo','C023',23,'Alias eveniet natus eaque culpa perspiciatis architecto ullam.'),(24,'Queque','Itaque accusantium ex illo enim exercitationem nihil.','queque','2025-02-17 05:00:00','https://dummyimage.com/571x336',3,1,'inactivo','C024',24,'Quos iusto consequatur id.'),(25,'Postre','Blanditiis accusamus iste optio.','postre','2025-03-22 05:00:00','https://placekitten.com/947/899',72,0,'inactivo','C025',25,'Iure aliquam quos quas.'),(26,'Pan','Recusandae maiores veniam delectus pariatur.','pan','2025-01-05 05:00:00','https://www.lorempixel.com/568/212',38,1,'activo','C026',26,'Possimus mollitia pariatur doloremque quo vitae ipsam.'),(27,'Torta','Veritatis debitis harum mollitia rerum natus ullam esse.','torta','2025-02-06 05:00:00','https://placekitten.com/168/313',90,1,'inactivo','C027',27,'Culpa praesentium reiciendis dolorum voluptates at.'),(28,'Galleta','Enim illo vero expedita.','galleta','2025-02-27 05:00:00','https://www.lorempixel.com/106/853',18,1,'inactivo','C028',28,'Eos esse eius illo eaque veniam expedita.'),(29,'Queque','Nemo aliquid rerum exercitationem.','queque','2025-02-06 05:00:00','https://placekitten.com/192/162',83,1,'inactivo','C029',29,'Consequatur sunt aliquid totam quo.'),(30,'Postre','Et cumque dolorum temporibus commodi eligendi aut.','postre','2025-02-02 05:00:00','https://placeimg.com/216/759/any',53,1,'activo','C030',30,'Aliquid harum nemo.');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `dni` varchar(255) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `fecha_registro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `estado` varchar(255) DEFAULT NULL,
  `comentarios` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Donato','Ojeda','zairaangulo@valles-sarmiento.net','123456','+34702 394 647','Pasadizo Cebrián Campoy 97 Puerta 7 Tarragona, 08467','95153180','1962-04-26','M','2025-01-08 05:00:00','activo','Quae nesciunt totam asperiores.'),(2,'Wilfredo','Río','anunciacioncabrera@garces-andres.es','123456','+34 737 579 468','Pasaje Angelina Doménech 4 Castellón, 98884','39960723','1971-03-25','F','2025-03-10 05:00:00','inactivo','Consequatur maxime error qui esse.'),(3,'Borja','Álamo','maricela93@hotmail.com','123456','+34818 640 129','Avenida Silvestre Franch 31 Lugo, 23810','81526649','1975-03-03','M','2025-01-25 05:00:00','inactivo','Sit possimus nulla blanditiis laborum neque.'),(4,'Enrique','Coloma','juangraciana@hotmail.com','123456','+34700139819','Urbanización Ezequiel Huertas 8 Apt. 55 Cáceres, 38764','28778007','1971-09-11','Otro','2025-01-28 05:00:00','activo','Soluta occaecati quae qui cumque doloribus tenetur laudantium.'),(5,'Serafina','Vera','mateo15@clemente.es','123456','+34703 383 075','Urbanización de Claudio Abascal 98 Zamora, 71435','28955920','1962-12-08','M','2025-04-07 05:00:00','inactivo','Aperiam voluptate nesciunt perspiciatis assumenda placeat.'),(6,'Eladio','Seguí','yurena@flores.es','123456','+34716079353','Urbanización de Paz Vila 11 Ourense, 93288','43308426','1959-04-21','F','2025-04-10 05:00:00','activo','Veniam quos ullam.'),(7,'Natanael','Piña','domingacorominas@gmail.com','123456','+34 878 439 467','Cuesta de Cristian Mariño 4 Girona, 48473','20052700','1995-07-27','M','2025-02-09 05:00:00','inactivo','Recusandae consectetur perspiciatis sint doloribus fugiat.'),(8,'Palmira','Blanes','gelabertmarino@gaya.com','123456','+34 843 342 706','Urbanización Segismundo Leal 5 Cáceres, 59903','70207818','1971-04-13','M','2025-03-29 05:00:00','activo','Ipsa illo vero.'),(9,'Cosme','Gimenez','cescudero@puga-gallo.es','123456','+34 727729072','Camino de Victoriano Abascal 625 Baleares, 99781','5046283','1967-09-13','F','2025-03-23 05:00:00','activo','Consequuntur nam vitae explicabo iusto laborum est mollitia.'),(10,'Eric','Berrocal','villarconsuelo@gmail.com','123456','+34729965056','Camino de Simón Ortega 1 Murcia, 74660','77225507','2004-07-02','F','2025-02-17 05:00:00','inactivo','In deserunt repudiandae alias facilis illum.'),(11,'abi','pg','abi@gmail.com','$2a$10$IuZjXDsAzk09sNGznnXJn.izchvecrypU.uS6XECJCGJ5cVavppUO','987456321','Chupaca','78456321',NULL,'M','2025-06-21 16:50:27','activo',NULL),(12,'juancho','PG','juan123@gmail.com','$2a$10$GcTDy9.YZnE82eFFWYbnde5c48Z7CN/zBo5ieTF57oTeLY8224dpW','987456321','Concepcion 1020','78564123',NULL,'M','2025-06-23 17:48:23','activo',NULL),(13,'lalo','pg','lalo@gmail.com','$2a$10$.2RSQLemcdJEnWMSoflTV.Iuz2qk1mGJK3QFWHS2.j.n1roTEIq6i','987456321','El tambo','45321789',NULL,'M','2025-06-24 19:37:30','activo',NULL),(14,'Edu','Pg','edu@gmail.com','$2a$10$vmXGND0Qn/QP4eQipQOqeOgRC33tan815tVmB4EDMg87RNQ8oAkji','964785421','Concepcion','78654123',NULL,'M','2025-06-25 19:10:52','activo',NULL),(15,'mayda','sv','mayda@gmail.com','$2a$10$myKKJ9KWRTpGaSOvq9idgebvEwD3vyVCh6b7.3SipPmp5UDLho9Sq','978452136','HYO','78654123',NULL,'F','2025-06-28 04:30:46','activo',NULL);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_venta`
--

DROP TABLE IF EXISTS `detalle_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_venta` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `venta_id` bigint NOT NULL,
  `producto_id` bigint NOT NULL,
  `cantidad` int NOT NULL,
  `precio_unitario` double DEFAULT NULL,
  `subtotal` decimal(10,2) GENERATED ALWAYS AS ((`cantidad` * `precio_unitario`)) STORED,
  `descripcion` varchar(255) DEFAULT NULL,
  `descuento_item` double DEFAULT NULL,
  `tipo_presentacion` varchar(255) DEFAULT NULL,
  `codigo_item` varchar(255) DEFAULT NULL,
  `observaciones` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `venta_id` (`venta_id`),
  KEY `producto_id` (`producto_id`),
  CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `detalle_venta_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_venta`
--

LOCK TABLES `detalle_venta` WRITE;
/*!40000 ALTER TABLE `detalle_venta` DISABLE KEYS */;
INSERT INTO `detalle_venta` (`id`, `venta_id`, `producto_id`, `cantidad`, `precio_unitario`, `descripcion`, `descuento_item`, `tipo_presentacion`, `codigo_item`, `observaciones`, `nombre`) VALUES (1,1,10,2,17.48,'Beatae cumque vel.',0.73,'combo','P007','Distinctio laborum soluta.',NULL),(2,9,7,4,10.24,'Dolorem ducimus velit.',0.99,'combo','P156','Ad veritatis eveniet fugiat accusamus quisquam neque molestias.',NULL),(3,7,9,3,14.44,'Similique dignissimos sequi expedita.',2.05,'unidad','P137','Adipisci ab esse iusto quisquam.',NULL),(4,1,3,2,1.87,'Dignissimos totam explicabo ipsa.',3.03,'combo','P461','Nemo nostrum accusantium ab dolorem illo a perferendis.',NULL),(5,10,1,2,15.79,'Quos facere vero odit soluta facere quas.',4.37,'unidad','P613','Incidunt ratione consequatur eum facere doloribus architecto.',NULL),(6,7,4,5,10.69,'Corporis soluta id suscipit.',2.14,'combo','P650','Ab debitis inventore totam excepturi inventore.',NULL),(7,7,1,1,22.74,'Veniam nesciunt voluptas velit maiores eius sint.',3.91,'unidad','P689','Maiores assumenda corrupti.',NULL),(8,9,7,3,9.29,'Voluptate doloremque dolore.',4.96,'unidad','P340','Ut aliquam doloribus nulla maiores.',NULL),(9,3,9,5,14.22,'Hic corporis eaque quis explicabo dignissimos aut.',2.27,'combo','P108','In nobis illum dolorem est.',NULL),(10,10,6,2,12.72,'Harum aut officiis iusto.',3.97,'combo','P144','Fugiat cumque ut asperiores.',NULL),(11,11,12,2,2.06,NULL,NULL,NULL,NULL,NULL,NULL),(12,11,14,1,15.14,NULL,NULL,NULL,NULL,NULL,NULL),(13,11,15,1,19.59,NULL,NULL,NULL,NULL,NULL,NULL),(14,11,25,1,25.45,NULL,NULL,NULL,NULL,NULL,NULL),(15,11,27,1,15.93,NULL,NULL,NULL,NULL,NULL,NULL),(16,11,9,1,14.37,NULL,NULL,NULL,NULL,NULL,NULL),(17,12,2,2,12,NULL,NULL,NULL,NULL,NULL,NULL),(18,12,4,2,13.39,NULL,NULL,NULL,NULL,NULL,NULL),(19,13,2,1,5,NULL,NULL,NULL,NULL,NULL,NULL),(20,13,4,1,13.39,NULL,NULL,NULL,NULL,NULL,NULL),(21,13,6,1,20.53,NULL,NULL,NULL,NULL,NULL,NULL),(22,14,14,2,15.14,NULL,NULL,NULL,NULL,NULL,NULL),(23,14,15,1,19.59,NULL,NULL,NULL,NULL,NULL,NULL),(24,15,2,4,12,NULL,NULL,NULL,NULL,NULL,NULL),(25,15,4,1,13.39,NULL,NULL,NULL,NULL,NULL,NULL),(26,15,6,2,20.53,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `detalle_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `rol` enum('admin','vendedor','repostero') DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `fecha_ingreso` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `observaciones` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Fernanda','Figueroa','epeinado','Z*1Sl0OaP(','repostero','bauzaalfredo@yahoo.com','+34 709 62 53 35','Cañada Baudelio Pazos 64\nLa Rioja, 00829','2025-01-18','activo','Recusandae itaque libero quis voluptate suscipit tenetur.'),(2,'Yésica','Giménez','maxi51','vUpo_6XyED','vendedor','vmurcia@carmona-novoa.com','+34 695 40 62 51','Pasaje Leandra Santiago 31 Apt. 08 \nSegovia, 83126','2025-02-23','activo','Iure necessitatibus totam culpa.'),(3,'Santos','Donaire','aalmagro','K^(%D1fN(6','repostero','mariamate@gmail.com','+34708719658','Glorieta Encarnación Acuña 392 Puerta 5 \nHuesca, 28299','2025-02-18','activo','Rem delectus modi.'),(4,'René','Belmonte','azaharachacon','!Kir4Kx6@s','vendedor','duranpablo@gmail.com','+34 644 98 56 26','Glorieta Rosario Arregui 64 Apt. 89 \nBurgos, 86334','2025-03-22','activo','Distinctio doloremque ducimus eius deserunt.'),(5,'Corona','Valera','fito33','(11!^Azmnm','admin','ordonezcharo@marino-salva.org','+34 726 950 171','Pasaje Isidro Roda 60\nJaén, 66296','2025-01-30','activo','Ipsum saepe quisquam.'),(6,'Berto','Montalbán','carolinaacuna','N*Q2pJoolr','vendedor','caneteagustin@gmail.com','+34702 49 35 42','Urbanización Valentina Sebastián 9 Apt. 35 \nSoria, 07648','2025-01-27','activo','Dolor in ut blanditiis explicabo iste ad.'),(7,'Javi','Duque','xcabo','(a0yAJXu#(','vendedor','ulises01@calderon.com','+34984273408','C. Leoncio Villalobos 93 Puerta 6 \nValladolid, 04119','2025-02-12','activo','Saepe unde alias repellendus.'),(8,'Feliciana','Alba','rlledo','!BYu2df#v0','admin','trinidad92@solano-delgado.es','+34978 95 95 57','Callejón María Luisa Porcel 51 Piso 8 \nLas Palmas, 40265','2025-04-11','inactivo','Nulla molestiae atque tempora.'),(9,'Estefanía','Gallart','jose-antonio39','O9(#B!yn$q','repostero','marilucio@hotmail.com','+34819 80 98 06','Urbanización de Feliciana Osorio 8\nBadajoz, 77032','2025-01-17','activo','Ad debitis aperiam quaerat molestiae fuga.'),(10,'Samuel','Vilalta','vcamps','^2l+RnWt84','vendedor','joaquinabanos@gmail.com','+34 742 37 46 23','Avenida de Ester Falcón 62\nMadrid, 11947','2025-01-14','inactivo','Officia repellendus vitae officia reprehenderit aliquid iusto.');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredientes`
--

DROP TABLE IF EXISTS `ingredientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredientes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `unidad` varchar(255) DEFAULT NULL,
  `stock_actual` double DEFAULT NULL,
  `stock_minimo` double DEFAULT NULL,
  `proveedor` varchar(255) DEFAULT NULL,
  `costo_unitario` double DEFAULT NULL,
  `fecha_ultimo_ingreso` datetime(6) DEFAULT NULL,
  `ubicacion_almacen` varchar(255) DEFAULT NULL,
  `codigo_barras` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `observaciones` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredientes`
--

LOCK TABLES `ingredientes` WRITE;
/*!40000 ALTER TABLE `ingredientes` DISABLE KEYS */;
INSERT INTO `ingredientes` VALUES (1,'Azúcar 1','unidad',65.84,4.21,'Velázquez, Pomares and Osuna',2.47,'2025-03-13 00:00:00.000000','Estante B','4435190309200','inactivo','Suscipit excepturi asperiores deserunt eius.'),(2,'Azúcar 2','ml',58.68,1.92,'Yáñez, Carretero and Gibert',4.07,'2025-04-07 00:00:00.000000','Estante C','9774531263715','activo','Qui doloribus ut et.'),(3,'Levadura 3','unidad',96.25,8.78,'Moles-Saldaña',0.94,'2025-03-28 00:00:00.000000','Estante C','8007170653502','activo','Error saepe nemo exercitationem.'),(4,'Mantequilla 4','ml',64.64,7.47,'Benavente, Juárez and Verdú',1.92,'2025-03-22 00:00:00.000000','Estante C','4990725306609','activo','Odio voluptates beatae tenetur rem autem.'),(5,'Leche 5','g',47.79,3.67,'Granados-Zorrilla',2.88,'2025-03-23 00:00:00.000000','Estante A','0414452775087','inactivo','Iste magnam sequi sapiente.'),(6,'Mantequilla 6','ml',18.2,5.14,'Caparrós, Jiménez and Macias',2.46,'2025-03-13 00:00:00.000000','Estante B','4367080526209','inactivo','Perspiciatis veniam dignissimos praesentium architecto dignissimos expedita.'),(7,'Levadura 7','g',25.73,3.94,'Guillen, Gallego and García',0.4,'2025-03-15 00:00:00.000000','Estante B','0296495441422','inactivo','Doloribus non nostrum ipsum tempore.'),(8,'Levadura 8','ml',66.59,8.77,'Coca-Aguiló',4.03,'2025-04-07 00:00:00.000000','Estante A','5745774380372','activo','Ad provident ullam veniam et culpa.'),(9,'Harina 9','g',74.95,4.19,'Catalán, Tomé and Cámara',3.8,'2025-03-12 00:00:00.000000','Estante C','7526714187262','inactivo','Adipisci aliquid doloremque.'),(10,'Mantequilla 10','g',1.72,7.73,'Jurado-Pi',3.38,'2025-03-24 00:00:00.000000','Estante A','6109652906334','activo','Qui aliquid minima mollitia.'),(11,'Huevos 11','ml',93.15,8.74,'Martí, Quintana and Pulido',0.26,'2025-03-15 00:00:00.000000','Estante C','4120601313050','activo','Cupiditate minima blanditiis amet adipisci labore.'),(12,'Mantequilla 12','g',99.73,8.52,'Gil-Bosch',1.96,'2025-03-15 00:00:00.000000','Estante C','2134852295050','inactivo','Iste voluptas ex ea temporibus illo aliquid.'),(13,'Mantequilla 13','g',90.87,1.07,'Barbero PLC',4.2,'2025-03-13 00:00:00.000000','Estante C','4938876003794','activo','Corrupti at voluptatibus.'),(14,'Azúcar 14','ml',11.08,9.2,'Alfaro Inc',3.32,'2025-03-20 00:00:00.000000','Estante A','1548675838645','inactivo','Rerum provident labore adipisci neque amet reiciendis.'),(15,'Leche 15','ml',98.26,3.45,'Pinto, Roselló and Alberto',0.19,'2025-03-22 00:00:00.000000','Estante A','9505899596500','activo','Aspernatur exercitationem magnam beatae distinctio.'),(16,'Levadura 16','ml',74.3,3.11,'Alonso Group',1.93,'2025-03-12 00:00:00.000000','Estante B','0829773302612','activo','Aperiam atque molestiae ullam similique odio laborum.'),(17,'Harina 17','unidad',88.28,5.83,'Vidal-Dominguez',4.19,'2025-04-10 00:00:00.000000','Estante C','2585276681514','inactivo','Itaque blanditiis numquam pariatur rerum totam earum fuga.'),(18,'Harina 18','g',83.71,5.16,'Llanos-Granados',3.23,'2025-03-18 00:00:00.000000','Estante B','5572603313863','inactivo','Sed voluptates occaecati aperiam velit error.'),(19,'Mantequilla 19','ml',92.85,4.77,'Blázquez-Román',0.18,'2025-03-25 00:00:00.000000','Estante A','7868642270822','activo','Unde cum reiciendis quam quasi nobis natus veritatis.'),(20,'Azúcar 20','unidad',97.82,2.15,'Hoz, Peláez and Cervera',4.42,'2025-03-29 00:00:00.000000','Estante A','3306102526651','activo','Sit deserunt nostrum nihil.'),(21,'Mantequilla 21','unidad',20.48,7.62,'Lloret-Calvo',2.55,'2025-03-19 00:00:00.000000','Estante A','5201606818890','inactivo','A suscipit quo libero dolore.'),(22,'Huevos 22','ml',38.08,1.94,'Vizcaíno Inc',0.54,'2025-04-08 00:00:00.000000','Estante B','2345224911991','inactivo','Corporis delectus recusandae.'),(23,'Huevos 23','ml',69.99,9.48,'Gomez Group',3.36,'2025-04-09 00:00:00.000000','Estante B','1547180459727','inactivo','Debitis vel adipisci recusandae quos error.'),(24,'Mantequilla 24','ml',11.73,8.88,'Montenegro, Talavera and Domingo',0.99,'2025-03-19 00:00:00.000000','Estante C','2412248396117','inactivo','Saepe impedit consequuntur in culpa officia quaerat.'),(25,'Harina 25','ml',11.2,0.97,'Rodríguez, Jaén and Girona',1.76,'2025-04-10 00:00:00.000000','Estante C','7899734191282','activo','Magnam cupiditate esse praesentium dicta sunt.'),(26,'Leche 26','unidad',38.44,6.42,'Arnal, Alsina and Barrios',0.53,'2025-04-09 00:00:00.000000','Estante A','7554218806754','activo','Quis id magni cum laboriosam.'),(27,'Levadura 27','unidad',45.04,1.58,'Fuentes, Gordillo and Arranz',3.8,'2025-03-12 00:00:00.000000','Estante A','5706511618325','activo','Perferendis voluptatem fugiat ducimus explicabo ipsa porro porro.'),(28,'Huevos 28','ml',41.71,8.15,'Pablo Ltd',4.69,'2025-04-01 00:00:00.000000','Estante B','8125732691677','activo','Iusto enim nemo incidunt eos.'),(29,'Azúcar 29','g',2.34,3.17,'Barón, Riquelme and Patiño',4.93,'2025-04-02 00:00:00.000000','Estante A','9889060316594','inactivo','Consequatur consectetur ad debitis.'),(30,'Huevos 30','ml',61.78,4.45,'Alarcón, Osuna and Girón',1.95,'2025-03-22 00:00:00.000000','Estante A','9268728039608','activo','Voluptate dolor asperiores quod.');
/*!40000 ALTER TABLE `ingredientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio` double NOT NULL,
  `categoria_id` bigint DEFAULT NULL,
  `stock` int DEFAULT '0',
  `imagen_url` varchar(255) DEFAULT NULL,
  `peso` double NOT NULL,
  `tiempo_preparacion` int DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `codigo_producto` varchar(255) DEFAULT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `categoria_id` (`categoria_id`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Fugit Pan','Illum ducimus corrupti laborum sunt esse.',3,4,41,'/imagenes/queque/Fugit_Pan.jpg',1.11,106,'inactivo','P0001','2025-03-31 05:00:00'),(2,'Officia Torta','Rerum alias voluptates eveniet consequatur voluptatum.',12,5,50,'/imagenes/postre/Officia_Torta.jpg',1.48,50,'activo','P0002','2025-04-11 05:00:00'),(3,'Placeat Torta','Dignissimos eligendi quas fugiat voluptatibus.',1.81,2,0,'/imagenes/torta/Placeat_Torta.jpeg',1.87,88,'inactivo','P0003','2025-02-24 05:00:00'),(4,'Quo Galleta','Deleniti quae reprehenderit architecto officia nihil.',13.39,5,5,'/imagenes/postre/Quo_Galleta.jpg',0.24,12,'activo','P0004','2025-03-21 05:00:00'),(5,'Deserunt Galleta','Eum cumque cum sapiente quas culpa hic.',26.25,2,79,'/imagenes/torta/Deserunt_Galleta.jpg',1.38,108,'activo','P0005','2025-02-15 05:00:00'),(6,'Consequuntur Galleta','Quas explicabo fugiat neque atque illo.',20.53,5,38,'/imagenes/pan/Consequuntur_Galleta.jpg',1.92,105,'activo','P0006','2025-02-06 05:00:00'),(7,'Sunt Galleta','Libero soluta occaecati assumenda tempora voluptas incidunt.',26.99,1,40,'/imagenes/pan/Sunt_Galleta.jpg',1.51,84,'activo','P0007','2025-03-09 05:00:00'),(8,'Suscipit Pan','Soluta iure adipisci aut pariatur nostrum hic.',6.06,3,64,'/imagenes/galleta/Suscipit_Pan.jpg',0.56,64,'activo','P0008','2025-03-01 05:00:00'),(9,'Exercitationem Pan','Debitis ullam iste temporibus.',14.37,5,28,'/imagenes/postre/Exercitationem_Pan.jpg',0.48,44,'activo','P0009','2025-03-14 05:00:00'),(10,'Nobis Pan','Totam et hic.',19.14,2,73,'/imagenes/torta/Nobis_Pan.jpg',1.09,51,'inactivo','P0010','2025-02-10 05:00:00'),(11,'Omnis Pan','Temporibus ducimus a quod numquam.',4.55,5,93,'/imagenes/postre/Omnis_Pan.jpg',1.17,42,'activo','P0011','2025-02-18 05:00:00'),(12,'Aspernatur Torta','Exercitationem repellendus expedita a officia.',2.06,1,83,'/imagenes/pan/Aspernatur_Torta.jpg',0.44,50,'inactivo','P0012','2025-02-17 05:00:00'),(13,'Odit Galleta','Repudiandae dolores architecto porro.',3.8,4,69,'/imagenes/queque/Odit_Galleta.jpg',1.43,92,'inactivo','P0013','2025-02-24 05:00:00'),(14,'Officiis Galleta','Odit a saepe assumenda non similique optio.',15.14,1,99,'/imagenes/pan/Officiis_Galleta.jpeg',0.83,82,'activo','P0014','2025-03-07 05:00:00'),(15,'Earum Pan','Cum tempora temporibus aut.',19.59,1,74,'/imagenes/pan/Earum_Pan.jpeg',0.32,44,'activo','P0015','2025-03-09 05:00:00'),(16,'Sunt Torta','Sapiente ratione officiis dicta.',3.44,3,79,'/imagenes/galleta/Sunt_Torta.jpg',0.22,104,'inactivo','P0016','2025-01-22 05:00:00'),(17,'Libero Pan','Minima excepturi dolore consequuntur laudantium.',26.31,4,50,'/imagenes/queque/Libero_Pan.jpg',0.29,118,'activo','P0017','2025-03-10 05:00:00'),(18,'Accusamus Galleta','Sed consequatur esse dolores esse assumenda.',28.05,5,51,'/imagenes/postre/Accusamus_Galleta.jpg',1.96,81,'activo','P0018','2025-02-23 05:00:00'),(19,'Quod Pan','Aperiam facere neque.',26.69,2,1,'/imagenes/torta/Quod_Pan.jpg',1.73,46,'activo','P0019','2025-02-20 05:00:00'),(20,'Reiciendis Torta','Eius pariatur sunt quo at aliquam.',9.39,1,84,'/imagenes/pan/Reiciendis_Torta.jpg',0.68,37,'activo','P0020','2025-04-08 05:00:00'),(21,'Deserunt Torta','Reprehenderit fugit dolor veritatis.',25.09,2,41,'/imagenes/torta/Deserunt_Torta.jpg',1.64,90,'inactivo','P0021','2025-02-02 05:00:00'),(22,'Non Torta','Ex quo ducimus occaecati.',21.44,1,44,'/imagenes/pan/Non_Torta.jpg',1.55,78,'inactivo','P0022','2025-01-15 05:00:00'),(23,'Error Galleta','Repellendus nam commodi iste cum officiis.',16.03,1,93,'/imagenes/pan/Error_Galleta.jpg',0.8,16,'activo','P0023','2025-03-14 05:00:00'),(24,'Dolores Pan','Minima sunt beatae in quos asperiores ad.',29.23,5,65,'/imagenes/postre/Dolores_Pan.jpg',0.37,15,'activo','P0024','2025-01-15 05:00:00'),(25,'Deleniti Torta','At quibusdam necessitatibus nulla.',25.45,3,41,'/imagenes/galleta/Deleniti_Torta.jpg',1.86,42,'activo','P0025','2025-02-07 05:00:00'),(26,'Blanditiis Pan','Incidunt officia labore voluptatem veritatis mollitia ut.',27.14,2,57,'/imagenes/torta/Blanditiis_Pan.jpg',1.01,79,'activo','P0026','2025-01-15 05:00:00'),(27,'Tempore Torta','Totam modi sit nam quos.',15.93,4,38,'/imagenes/queque/Tempore_Torta.jpg',1.13,24,'activo','P0027','2025-03-23 05:00:00'),(28,'Consequuntur Galleta','Distinctio rerum deleniti temporibus.',7.86,1,98,'/imagenes/pan/Consequuntur_Galleta.jpg',1.59,54,'activo','P0028','2025-02-22 05:00:00'),(29,'Atque Torta','Maxime distinctio architecto beatae incidunt nostrum.',4.02,1,11,'/imagenes/pan/Atque_Torta.jpeg',0.33,25,'inactivo','P0029','2025-01-23 05:00:00'),(30,'Repellendus Torta','Officiis tenetur autem incidunt nesciunt quidem.',12.09,3,61,'/imagenes/galleta/Repellendus_Torta.jpeg',0.55,106,'activo','P0030','2025-03-05 05:00:00');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_ingredientes`
--

DROP TABLE IF EXISTS `productos_ingredientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos_ingredientes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `producto_id` bigint NOT NULL,
  `ingrediente_id` bigint NOT NULL,
  `cantidad` double DEFAULT NULL,
  `unidad` varchar(255) DEFAULT NULL,
  `orden_preparacion` int DEFAULT NULL,
  `tipo_uso` varchar(255) DEFAULT NULL,
  `tiempo_aplicacion` int DEFAULT NULL,
  `es_opcional` tinyint(1) DEFAULT '0',
  `observaciones` varchar(255) DEFAULT NULL,
  `creado_por` varchar(255) DEFAULT NULL,
  `fecha_registro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `producto_id` (`producto_id`),
  KEY `ingrediente_id` (`ingrediente_id`),
  CONSTRAINT `productos_ingredientes_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `productos_ingredientes_ibfk_2` FOREIGN KEY (`ingrediente_id`) REFERENCES `ingredientes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_ingredientes`
--

LOCK TABLES `productos_ingredientes` WRITE;
/*!40000 ALTER TABLE `productos_ingredientes` DISABLE KEYS */;
INSERT INTO `productos_ingredientes` VALUES (1,4,8,1.67,'g',1,'base',2,1,'Dolorem similique quasi sit libero reiciendis.','Emilia','2025-02-22 05:00:00'),(2,6,4,1.86,'g',3,'relleno',6,1,'Facere vero repudiandae sequi blanditiis reiciendis.','Gertrudis','2025-02-01 05:00:00'),(3,10,7,1.47,'g',2,'decoración',8,0,'Ad excepturi laboriosam sunt itaque deleniti.','Silvestre','2025-02-21 05:00:00'),(4,3,2,0.29,'unidad',5,'decoración',1,1,'Hic asperiores atque assumenda ipsa modi nam.','Teodosio','2025-01-24 05:00:00'),(5,8,2,1.23,'unidad',1,'relleno',9,1,'Quibusdam officiis quos dignissimos porro quibusdam.','Moreno','2025-01-20 05:00:00'),(6,8,4,0.41,'unidad',5,'relleno',8,1,'Nam recusandae dolore voluptates quaerat quae.','Amelia','2025-01-14 05:00:00'),(7,8,5,1.03,'ml',2,'decoración',5,0,'Tenetur quibusdam dicta maiores harum.','Fidel','2025-02-07 05:00:00'),(8,10,2,1.65,'ml',3,'base',1,1,'Nemo delectus voluptates velit iure.','Virgilio','2025-03-28 05:00:00'),(9,3,9,0.9,'ml',3,'base',4,0,'Sapiente rem suscipit blanditiis enim odit nobis.','León','2025-03-15 05:00:00'),(10,1,8,2,'ml',4,'decoración',2,0,'Vel architecto tempore laudantium.','Leoncio','2025-01-19 05:00:00');
/*!40000 ALTER TABLE `productos_ingredientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `fecha_registro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `nombre` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKkfsp0s1tflm1cwlj8idhqsad0` (`email`),
  UNIQUE KEY `UKcdmw5hxlfj78uf4997i3qyyw5` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'demo@delicia.com','2025-07-02 19:43:00',NULL,'123456',NULL,NULL),(2,'admin@delicia.com','2025-07-05 17:04:55',NULL,'123456',NULL,NULL),(3,'gpenaga@delicia.com','2025-07-05 17:06:53',NULL,'123456',NULL,NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_login`
--

DROP TABLE IF EXISTS `usuarios_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_login` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `fecha_registro` datetime(6) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `rol` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_login`
--

LOCK TABLES `usuarios_login` WRITE;
/*!40000 ALTER TABLE `usuarios_login` DISABLE KEYS */;
INSERT INTO `usuarios_login` VALUES (1,'msedanov@delicia.com','2025-07-05 12:16:28.589289','$2a$10$2XGYTxqmQRiY8DLnC0FuKuz.XaC0/EoUHX6.lehi76HhScXEBnuPe','EMPLEADO'),(2,'pmanriquet@delicia.com','2025-07-05 12:50:40.379123','$2a$10$tXIf10o/Qf4lzFAfxU1s4urWWXqPLpba8W56ZmUWBhFDBu/3g860a','EMPLEADO'),(3,'jsalcedot@delicia.com','2025-07-07 13:01:36.122660','$2a$10$iU2ejLdO.lWf./LjoNqCqORVLO2.yzRCpb4hjCASjtoAx25vjzaKe','EMPLEADO'),(4,'abendezuc@delicia.com','2025-07-09 14:34:06.078028','$2a$10$3MQ5.gm3SxDMTjUZnSS.TupfEOEg9O3uK.xFtM7jiYZmVMSlU9hE2','EMPLEADO'),(5,'admin@delicia.com','2025-07-12 14:11:48.614805','$2a$10$QnG7TTPBUbM0cfbLWfKx6es7rkHXSfoxhHgdK.OEyOxdah7bJdfx2','ADMIN'),(6,'cliente1@dgmail.com','2025-07-16 14:10:56.363825','$2a$10$84q7HeTDUZjgIYz9VWh0yuIVGyXjCwStdEAFLPdu4QK8g6sczz14.','CLIENTE'),(7,'cliente2@gmail.com','2025-07-16 14:11:13.577116','$2a$10$7xAfWwpYPOZMXuCHXAbFiuZMx.GprLba96kfa.mWAE2TGFAEGzM9W','CLIENTE');
/*!40000 ALTER TABLE `usuarios_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cliente_id` bigint DEFAULT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  `total` double DEFAULT NULL,
  `tipo_pago` varchar(255) DEFAULT NULL,
  `numero_comprobante` varchar(255) DEFAULT NULL,
  `igv` double DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `observaciones` varchar(255) DEFAULT NULL,
  `empleado_id` bigint DEFAULT NULL,
  `forma_entrega` varchar(255) DEFAULT NULL,
  `direccion_entrega` text,
  `cliente` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cliente_id` (`cliente_id`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,3,'2025-03-01 00:00:00',53.74,'efectivo','F942-4640',2.01,2.55,'pendiente','Deleniti voluptatum debitis mollitia corrupti reprehenderit.',2,'delivery',NULL,NULL),(2,1,'2025-01-16 00:00:00',149.86,'tarjeta','F373-0562',10.5,8.18,'pendiente','Unde nulla numquam omnis aspernatur corrupti nemo.',1,'delivery',NULL,NULL),(3,8,'2025-02-23 00:00:00',60.14,'efectivo','F932-1067',14.8,4.79,'pendiente','Reiciendis eum dolores consequatur accusamus voluptates amet.',1,'recojo',NULL,NULL),(4,3,'2025-01-03 00:00:00',144.83,'yape','F582-0247',6.89,3.57,'completado','Corrupti laborum magni culpa reprehenderit occaecati.',5,'delivery',NULL,NULL),(5,3,'2025-01-20 00:00:00',14.24,'plin','F931-3602',14.62,3.73,'completado','Facere sapiente nobis molestiae quaerat.',7,'recojo',NULL,NULL),(6,4,'2025-01-30 00:00:00',144.85,'plin','F130-3196',12.3,7.77,'cancelado','Veritatis velit ducimus ipsam magnam.',3,'recojo',NULL,NULL),(7,1,'2025-01-14 00:00:00',103.91,'tarjeta','F754-6444',9.7,4.25,'completado','Inventore magnam quam ducimus eaque velit.',10,'delivery',NULL,NULL),(8,10,'2025-01-30 00:00:00',56.68,'otro','F254-0142',5.26,0.34,'completado','Iusto cumque quas quasi illo eius accusantium voluptatum.',1,'delivery',NULL,NULL),(9,9,'2025-02-10 00:00:00',57.12,'efectivo','F392-2011',6.38,1.85,'completado','Corporis ipsa a assumenda nostrum ab.',5,'recojo',NULL,NULL),(10,6,'2025-03-02 00:00:00',41.03,'efectivo','F231-1777',5.51,2.63,'pendiente','Excepturi repudiandae expedita voluptatem labore saepe.',5,'recojo',NULL,NULL),(11,11,NULL,94.6,'efectivo',NULL,NULL,NULL,'completado',NULL,NULL,'delivery','Chupaca',NULL),(12,12,NULL,50.78,'efectivo',NULL,NULL,NULL,'completado',NULL,NULL,'recojo','Concepcion 1020',NULL),(13,13,NULL,38.92,'efectivo',NULL,NULL,NULL,'completado',NULL,NULL,'delivery','El tambo',NULL),(14,14,NULL,49.870000000000005,'efectivo',NULL,NULL,NULL,'completado',NULL,NULL,'delivery','Concepcion',NULL),(15,15,NULL,102.45,'efectivo',NULL,NULL,NULL,'completado',NULL,NULL,'delivery','HYO',NULL);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-16 15:11:16
