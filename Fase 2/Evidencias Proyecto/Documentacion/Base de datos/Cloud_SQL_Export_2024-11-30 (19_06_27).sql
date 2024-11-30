-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: mysql
-- ------------------------------------------------------
-- Server version	8.0.31-google

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
-- Current Database: `InventarioInnova`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `InventarioInnova` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `InventarioInnova`;

--
-- Table structure for table `alertas`
--

DROP TABLE IF EXISTS `alertas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alertas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) DEFAULT NULL,
  `calidad_alerta` varchar(100) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `empresa_id` int NOT NULL,
  `enviada` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `empresa_id` (`empresa_id`),
  CONSTRAINT `alertas_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alertas`
--

LOCK TABLES `alertas` WRITE;
/*!40000 ALTER TABLE `alertas` DISABLE KEYS */;
INSERT INTO `alertas` VALUES (1,'Cantidad baja para el producto: Martillo','Urgente','2024-11-20 02:46:31',2,1),(2,'Cantidad baja para el producto: Martillo','Normal','2024-11-13 22:24:51',2,1),(3,'Cantidad baja para el producto: Taladro','Normal','2024-11-13 22:24:53',2,1),(4,'Cantidad baja para el producto: Taladro','Normal','2024-11-13 22:24:56',2,1),(5,'Cantidad baja para el producto: Martillo','Normal','2024-11-13 22:24:58',2,1),(6,'Cantidad baja para el producto: Martillo','Normal','2024-11-13 22:25:01',2,1),(7,'Cantidad baja para el producto: Taladro','Normal','2024-11-13 22:25:03',2,1),(8,'Cantidad baja para el producto: Taladro','Normal','2024-11-13 22:25:05',2,1),(9,'Cantidad baja para el producto: Destornillador','Normal','2024-11-13 22:25:07',2,1);
/*!40000 ALTER TABLE `alertas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add empresa',7,'add_empresa'),(26,'Can change empresa',7,'change_empresa'),(27,'Can delete empresa',7,'delete_empresa'),(28,'Can view empresa',7,'view_empresa'),(29,'Can add usuario',8,'add_usuario'),(30,'Can change usuario',8,'change_usuario'),(31,'Can delete usuario',8,'delete_usuario'),(32,'Can view usuario',8,'view_usuario'),(33,'Can add roles',9,'add_roles'),(34,'Can change roles',9,'change_roles'),(35,'Can delete roles',9,'delete_roles'),(36,'Can view roles',9,'view_roles'),(37,'Can add inventario',10,'add_inventario'),(38,'Can change inventario',10,'change_inventario'),(39,'Can delete inventario',10,'delete_inventario'),(40,'Can view inventario',10,'view_inventario'),(41,'Can add transaccion',11,'add_transaccion'),(42,'Can change transaccion',11,'change_transaccion'),(43,'Can delete transaccion',11,'delete_transaccion'),(44,'Can view transaccion',11,'view_transaccion'),(45,'Can add alertas',12,'add_alertas'),(46,'Can change alertas',12,'change_alertas'),(47,'Can delete alertas',12,'delete_alertas'),(48,'Can view alertas',12,'view_alertas'),(49,'Can add umbral stock',13,'add_umbralstock'),(50,'Can change umbral stock',13,'change_umbralstock'),(51,'Can delete umbral stock',13,'delete_umbralstock'),(52,'Can view umbral stock',13,'view_umbralstock');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$JRSJeg59BDjjKMs1GJ65Gu$y71HRa4ZuxT0lxX16nERGKru88kM2iZ9rvM0ZSriu0E=','2024-11-26 03:03:30.811487',1,'cfarias','','','farias.vidal.farias34@gmail.com',1,1,'2024-11-26 03:02:55.515726'),(2,'pbkdf2_sha256$870000$xULsp7odgD7vBxQiO5eHXV$ftVpmm2ORgkXSYosMuTIvqYVtstYnsGDj+23DqKPUbo=','2024-11-29 13:47:24.704970',1,'cfariasv','','','cfariasv@gmail.com',1,1,'2024-11-29 13:46:53.787470');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-11-26 03:09:40.398048','4','Catalina Tobar',1,'[{\"added\": {}}]',8,1),(2,'2024-11-29 23:00:52.087952','5','Juan Valdez',1,'[{\"added\": {}}]',8,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(12,'panel','alertas'),(7,'panel','empresa'),(10,'panel','inventario'),(9,'panel','roles'),(11,'panel','transaccion'),(13,'panel','umbralstock'),(8,'panel','usuario'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-11-25 21:56:26.992265'),(2,'auth','0001_initial','2024-11-25 21:56:32.565955'),(3,'admin','0001_initial','2024-11-25 21:56:33.947634'),(4,'admin','0002_logentry_remove_auto_add','2024-11-25 21:56:34.145544'),(5,'admin','0003_logentry_add_action_flag_choices','2024-11-25 21:56:34.328630'),(6,'contenttypes','0002_remove_content_type_name','2024-11-25 21:56:35.489035'),(7,'auth','0002_alter_permission_name_max_length','2024-11-25 21:56:35.947676'),(8,'auth','0003_alter_user_email_max_length','2024-11-25 21:56:36.321245'),(9,'auth','0004_alter_user_username_opts','2024-11-25 21:56:36.508703'),(10,'auth','0005_alter_user_last_login_null','2024-11-25 21:56:36.940049'),(11,'auth','0006_require_contenttypes_0002','2024-11-25 21:56:37.121944'),(12,'auth','0007_alter_validators_add_error_messages','2024-11-25 21:56:37.300005'),(13,'auth','0008_alter_user_username_max_length','2024-11-25 21:56:37.770607'),(14,'auth','0009_alter_user_last_name_max_length','2024-11-25 21:56:38.269686'),(15,'auth','0010_alter_group_name_max_length','2024-11-25 21:56:38.666874'),(16,'auth','0011_update_proxy_permissions','2024-11-25 21:56:39.362191'),(17,'auth','0012_alter_user_first_name_max_length','2024-11-25 21:56:39.848928'),(18,'sessions','0001_initial','2024-11-25 21:56:40.658237');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('a1i6r2qpju82izaayvxx79l6eextwres','.eJxVjssOgjAQRf-la9MMpYTRpXu_gcx0pgJiSXgtNP67EInR3c19nNynqWie6moedagaMSfjzOHXYwo3TVsgLaVrb0OfpqFhu1Xsno720ot25737B6hprNc1RARFIcGYMwFoQGaIR8iIMXgoM1c4zlF86bPcB4zoHLBuG18qrdDvx-KjE911JbcLdaIP83oD7IBDVA:1tHOEs:pKW5mhhz6UG6CMidHTJwRET-cbAOI013uMmf_Cz36Sg','2024-12-14 14:14:26.271892');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `id` int NOT NULL,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'Rotiserias Puerto Fuy'),(2,'Herramientas Benavides');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario` (
  `id_inventario` int NOT NULL AUTO_INCREMENT,
  `empresa_id` int NOT NULL,
  `id_producto` int NOT NULL,
  `nombre_producto` varchar(200) NOT NULL,
  `cantidad_producto` double DEFAULT NULL,
  `tipo_unidad` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_inventario`),
  UNIQUE KEY `empresa_id` (`empresa_id`,`id_producto`),
  CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` VALUES (1,1,1,'Queso Gouda',76,'kg'),(2,1,2,'Queso Azul',15,'kg'),(3,1,3,'Jamón Serrano',40,'kg'),(4,1,4,'Salame',20,'kg'),(5,1,5,'Queso Brie',25,'kg'),(6,2,1,'Martillo',9,'unidades'),(7,2,2,'Destornillador',3,'unidades'),(8,2,3,'Alicate',25,'unidades'),(9,2,4,'Taladro',9,'unidades'),(10,2,5,'Llave Inglesa',20,'unidades');
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `permisos` varchar(200) NOT NULL,
  `usuario_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `roles_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transacciones`
--

DROP TABLE IF EXISTS `transacciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transacciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(200) NOT NULL,
  `id_producto` int NOT NULL,
  `id_empresa` int NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_empresa` (`id_empresa`),
  CONSTRAINT `transacciones_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transacciones`
--

LOCK TABLES `transacciones` WRITE;
/*!40000 ALTER TABLE `transacciones` DISABLE KEYS */;
INSERT INTO `transacciones` VALUES (2,'Queso Azul',2,1,'2024-11-08 21:18:55','Se ha efectuado una venta del producto'),(4,'Queso Gouda',1,1,'2024-11-09 00:11:38','Se ha efectuado una compra del producto'),(5,'Queso Gouda',1,1,'2024-11-09 02:32:06','Se ha efectuado una compra del producto'),(6,'Queso Gouda',1,1,'2024-11-09 11:55:48','Se ha efectuado una compra del producto'),(7,'Queso Gouda',1,1,'2024-11-09 12:02:36','Se ha efectuado una compra del producto'),(8,'Queso Gouda',1,1,'2024-11-09 12:02:38','Se ha efectuado una compra del producto'),(9,'Martillo',1,2,'2024-11-09 13:32:13','Se ha efectuado una venta del producto'),(10,'Martillo',1,2,'2024-11-09 13:32:15','Se ha efectuado una venta del producto'),(11,'Martillo',1,2,'2024-11-09 13:35:43','Se ha efectuado una venta del producto'),(12,'Martillo',1,2,'2024-11-09 13:55:55','Se ha efectuado una venta del producto'),(13,'Martillo',1,2,'2024-11-09 13:57:25','Se ha efectuado una venta del producto'),(14,'Martillo',1,2,'2024-11-13 03:55:21','Se ha efectuado una venta del producto'),(15,'Martillo',1,2,'2024-11-13 03:55:22','Se ha efectuado una venta del producto'),(16,'Taladro',4,2,'2024-11-13 03:55:24','Se ha efectuado una venta del producto'),(17,'Taladro',4,2,'2024-11-13 03:55:25','Se ha efectuado una venta del producto'),(18,'Martillo',1,2,'2024-11-13 03:55:27','Se ha efectuado una venta del producto'),(19,'Martillo',1,2,'2024-11-13 03:55:28','Se ha efectuado una venta del producto'),(20,'Taladro',4,2,'2024-11-13 03:55:30','Se ha efectuado una venta del producto'),(21,'Taladro',4,2,'2024-11-13 03:55:31','Se ha efectuado una venta del producto'),(22,'Destornillador',2,2,'2024-11-13 05:27:44','Se ha efectuado una venta del producto');
/*!40000 ALTER TABLE `transacciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(128) DEFAULT NULL,
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `rut` varchar(10) NOT NULL,
  `empresa_id` int NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `is_staff` tinyint(1) DEFAULT '0',
  `is_superuser` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `empresa_id` (`empresa_id`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'fdoPtoFuy','password123','Fernando','Jimenez','12345678-9',1,'+56978734895','fdo.jimenez.mesias@gmail.com',1,0,0),(3,'chrisHerr','password123','Christopher','Farias','12345678-9',2,'+56978734895','fer.jimenezm@duocuc.cl',1,0,0),(4,'ctobar','pbkdf2_sha256$870000$pM9Ah8Ygxvu3u45IWEncFP$ItnBwtujo2UhZJX7XhRnQVQPEIP2gX6eonDoNIHWjWk=','Catalina','Tobar','214749637',1,'945776688',NULL,1,0,0),(5,'jvaldez','pbkdf2_sha256$870000$8Z6ijVy4lU2k2OVRmtCKGG$6Fa8YfbJHBKhyD+qsohQ4bWnYnmaiyqo78TtAkszoM0=','Juan','Valdez','12345678-9',2,'934554433',NULL,1,0,0);
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

-- Dump completed on 2024-11-30 22:06:46
