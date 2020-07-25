-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_ecommerce_grace
-- ------------------------------------------------------
-- Server version	5.7.28-log

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
-- Table structure for table `account_transaction`
--

DROP TABLE IF EXISTS `account_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `account_number` varchar(65) DEFAULT NULL,
  `account_name` varchar(45) DEFAULT NULL,
  `causal` varchar(105) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `idType_Transaction` int(11) DEFAULT NULL,
  `idType_Account` int(11) DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL,
  `idCustomer` int(11) DEFAULT NULL,
  `amount_remaining` decimal(10,0) DEFAULT NULL,
  `amount_withdrawal` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idType_Transaction_idx` (`idType_Transaction`),
  KEY `idType_Account_idx` (`idType_Account`),
  CONSTRAINT `idType_Account` FOREIGN KEY (`idType_Account`) REFERENCES `type_account` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idType_Transaction` FOREIGN KEY (`idType_Transaction`) REFERENCES `type_transaction` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1287 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_transaction`
--

LOCK TABLES `account_transaction` WRITE;
/*!40000 ALTER TABLE `account_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(450) DEFAULT NULL,
  `nom` varchar(450) DEFAULT NULL,
  `description` varchar(450) DEFAULT NULL,
  `prix_achat` double DEFAULT NULL,
  `prix` double DEFAULT NULL,
  `disponible` double DEFAULT NULL,
  `quantite` double DEFAULT NULL,
  `idFournisseur` int(11) NOT NULL,
  `idType_Article` int(11) DEFAULT NULL,
  `idOrder` int(11) DEFAULT NULL,
  `idEntree` int(11) DEFAULT NULL,
  `idBuy` int(11) DEFAULT NULL,
  `idStock` int(11) DEFAULT NULL,
  `idShop` int(11) DEFAULT NULL,
  `prixCommande` double DEFAULT NULL,
  `prixCommandeCalcule` double DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL,
  `lastUpdate` datetime DEFAULT NULL,
  `creationDate` datetime DEFAULT NULL,
  `idUserUpdate` int(11) DEFAULT NULL,
  `qteShop` double DEFAULT NULL,
  `qteStock` double DEFAULT NULL,
  `NEGOTIATEDAMOUNT` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idFournisseur_idx` (`idFournisseur`),
  KEY `idType_Article_idx` (`idType_Article`),
  KEY `idOrder_idx` (`idOrder`),
  KEY `idEntrée_idx` (`idEntree`),
  KEY `idShop_idx` (`idShop`),
  KEY `idStock_idx` (`idStock`),
  KEY `idBuy_idx` (`idBuy`),
  CONSTRAINT `idFournisseur` FOREIGN KEY (`idFournisseur`) REFERENCES `fournisseur` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `balance_transaction`
--

DROP TABLE IF EXISTS `balance_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `balance_transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_remaining` double DEFAULT NULL,
  `amount_credit` double DEFAULT NULL,
  `idFournisseur` int(11) DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL,
  `description` varchar(450) CHARACTER SET latin1 DEFAULT NULL,
  `causal` varchar(450) CHARACTER SET latin1 DEFAULT NULL,
  `amount_deposit` double DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `idBuy` int(11) DEFAULT NULL,
  `idCustomer` int(11) DEFAULT NULL,
  `CREANCE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=510 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balance_transaction`
--

LOCK TABLES `balance_transaction` WRITE;
/*!40000 ALTER TABLE `balance_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `balance_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buy`
--

DROP TABLE IF EXISTS `buy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date2` datetime DEFAULT NULL,
  `designation` varchar(450) DEFAULT NULL,
  `quantite` double DEFAULT NULL,
  `montant` double DEFAULT NULL,
  `amount_deposit` double DEFAULT NULL,
  `remaining` double DEFAULT NULL,
  `idStatus_buy` int(11) DEFAULT NULL,
  `idType_buy` int(11) DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL,
  `NEGOTIATEDAMOUNT` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idStatus_buy_idx` (`idStatus_buy`),
  KEY `idType_buy_idx` (`idType_buy`),
  CONSTRAINT `idStatus_buy` FOREIGN KEY (`idStatus_buy`) REFERENCES `status_buy` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idType_buy` FOREIGN KEY (`idType_buy`) REFERENCES `type_buy` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1761 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buy`
--

LOCK TABLES `buy` WRITE;
/*!40000 ALTER TABLE `buy` DISABLE KEYS */;
/*!40000 ALTER TABLE `buy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `key` varchar(145) DEFAULT NULL,
  `idCompanyGroup` int(11) DEFAULT NULL,
  `activated_date` datetime DEFAULT NULL,
  `expired_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idCompanyGroup_idx` (`idCompanyGroup`),
  CONSTRAINT `idCompanyGroup` FOREIGN KEY (`idCompanyGroup`) REFERENCES `company_group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_group`
--

DROP TABLE IF EXISTS `company_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_group` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_group`
--

LOCK TABLES `company_group` WRITE;
/*!40000 ALTER TABLE `company_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration`
--

DROP TABLE IF EXISTS `configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyStr` varchar(45) DEFAULT NULL,
  `valueStr` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration`
--

LOCK TABLES `configuration` WRITE;
/*!40000 ALTER TABLE `configuration` DISABLE KEYS */;
INSERT INTO `configuration` VALUES (1,'module.achat','true'),(2,'module.fournisseur','true'),(3,'module.client','true'),(4,'module.article','true'),(5,'module.utilisateur','true'),(6,'module.commande','true'),(7,'module.dashboard','true'),(8,'module.entree','true'),(9,'module.inventaire','true'),(10,'admin','false'),(11,'module.configuration','true'),(12,'fonction.achat','false'),(13,'fonction.entree','false'),(14,'fonction_entreeshop','false'),(15,'amount_negocied_active','true'),(16,'buy_fake','19');
/*!40000 ALTER TABLE `configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  `prenom` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `profession` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `siege_sociale` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `id_customer` FOREIGN KEY (`id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_fournisseur` FOREIGN KEY (`id`) REFERENCES `fournisseur` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  `prenom` varchar(45) DEFAULT NULL,
  `adresse` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_fund`
--

DROP TABLE IF EXISTS `daily_fund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daily_fund` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_fund`
--

LOCK TABLES `daily_fund` WRITE;
/*!40000 ALTER TABLE `daily_fund` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_fund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposit_buy`
--

DROP TABLE IF EXISTS `deposit_buy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposit_buy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount_deposit` decimal(10,0) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `idBuy` int(11) DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL,
  `designation` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idBuy_idx` (`idBuy`),
  KEY `idUser_idx` (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=1813 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposit_buy`
--

LOCK TABLES `deposit_buy` WRITE;
/*!40000 ALTER TABLE `deposit_buy` DISABLE KEYS */;
/*!40000 ALTER TABLE `deposit_buy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order`
--

DROP TABLE IF EXISTS `ec_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(450) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `mode_paiement` varchar(45) DEFAULT NULL,
  `statut_paiement` varchar(45) DEFAULT NULL,
  `mode_livraison` varchar(45) DEFAULT NULL,
  `statut_livraison` varchar(45) DEFAULT NULL,
  `quantité` double DEFAULT NULL,
  `montant` double DEFAULT NULL,
  `idCustomer` int(11) DEFAULT NULL,
  `idBuy` int(11) DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL,
  `NEGOTIATEDAMOUNT` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idCustomer_idx` (`idCustomer`),
  KEY `idBuy_idx` (`idBuy`),
  CONSTRAINT `idBuy` FOREIGN KEY (`idBuy`) REFERENCES `buy` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idCustomer` FOREIGN KEY (`idCustomer`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1760 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order`
--

LOCK TABLES `ec_order` WRITE;
/*!40000 ALTER TABLE `ec_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entree`
--

DROP TABLE IF EXISTS `entree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `nom` varchar(450) DEFAULT NULL,
  `quantité` varchar(45) DEFAULT NULL,
  `idType_Entree` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idType_Entrée_idx` (`idType_Entree`)
) ENGINE=InnoDB AUTO_INCREMENT=1392 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entree`
--

LOCK TABLES `entree` WRITE;
/*!40000 ALTER TABLE `entree` DISABLE KEYS */;
/*!40000 ALTER TABLE `entree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fournisseur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom1` varchar(45) DEFAULT NULL,
  `prenom` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `siege_social` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `code1` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fournisseur`
--

LOCK TABLES `fournisseur` WRITE;
/*!40000 ALTER TABLE `fournisseur` DISABLE KEYS */;
/*!40000 ALTER TABLE `fournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderarticleconfiguration`
--

DROP TABLE IF EXISTS `orderarticleconfiguration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderarticleconfiguration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idOrder` int(11) NOT NULL,
  `idArticle` int(11) NOT NULL,
  `quantite` double DEFAULT NULL,
  `status_Buy` varchar(1) DEFAULT NULL,
  `NEGOTIATEDAMOUNT` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5416 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderarticleconfiguration`
--

LOCK TABLES `orderarticleconfiguration` WRITE;
/*!40000 ALTER TABLE `orderarticleconfiguration` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderarticleconfiguration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (1,'Admin','administrateur'),(2,'SysAdmin','SystèmeAdministrateur'),(3,'Caisse','utilisateur'),(4,'Facturer','visualisation'),(5,'Magasin','Magasinier');
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `description` varchar(450) DEFAULT NULL,
  `quantité` varchar(45) DEFAULT NULL,
  `idEntree` int(11) DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idEntrée_idx` (`idEntree`),
  CONSTRAINT `idEntrée` FOREIGN KEY (`idEntree`) REFERENCES `entree` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1014 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sortir`
--

DROP TABLE IF EXISTS `sortir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sortir` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `quantité` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sortir`
--

LOCK TABLES `sortir` WRITE;
/*!40000 ALTER TABLE `sortir` DISABLE KEYS */;
/*!40000 ALTER TABLE `sortir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_buy`
--

DROP TABLE IF EXISTS `status_buy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_buy` (
  `id` int(11) NOT NULL,
  `strCode` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_buy`
--

LOCK TABLES `status_buy` WRITE;
/*!40000 ALTER TABLE `status_buy` DISABLE KEYS */;
INSERT INTO `status_buy` VALUES (1,'PAID','Payé'),(2,'UNPAID','Non Payé'),(3,'DEPOSIT','Dépot');
/*!40000 ALTER TABLE `status_buy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `description` varchar(450) CHARACTER SET utf8 DEFAULT NULL,
  `quantité` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `idEntree` int(11) DEFAULT NULL,
  `idSortir` int(11) DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=379 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_account`
--

DROP TABLE IF EXISTS `type_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_account` (
  `id` int(11) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_account`
--

LOCK TABLES `type_account` WRITE;
/*!40000 ALTER TABLE `type_account` DISABLE KEYS */;
INSERT INTO `type_account` VALUES (1,'BANK','Compte Bancaire'),(2,'SHOP','Compte Boutique');
/*!40000 ALTER TABLE `type_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_article`
--

DROP TABLE IF EXISTS `type_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_article`
--

LOCK TABLES `type_article` WRITE;
/*!40000 ALTER TABLE `type_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `type_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_buy`
--

DROP TABLE IF EXISTS `type_buy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_buy` (
  `id` int(11) NOT NULL,
  `strCode` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_buy`
--

LOCK TABLES `type_buy` WRITE;
/*!40000 ALTER TABLE `type_buy` DISABLE KEYS */;
INSERT INTO `type_buy` VALUES (1,'CASH','Paiement Comptant'),(2,'CREDIT','Paiement a credit');
/*!40000 ALTER TABLE `type_buy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_entree`
--

DROP TABLE IF EXISTS `type_entree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_entree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_entree`
--

LOCK TABLES `type_entree` WRITE;
/*!40000 ALTER TABLE `type_entree` DISABLE KEYS */;
INSERT INTO `type_entree` VALUES (1,'Shop','Entée des articles en boutique'),(2,'Stock','Entrée des articles au magasin');
/*!40000 ALTER TABLE `type_entree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_transaction`
--

DROP TABLE IF EXISTS `type_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_transaction` (
  `id` int(11) NOT NULL,
  `str_type` varchar(45) DEFAULT NULL,
  `str_description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_transaction`
--

LOCK TABLES `type_transaction` WRITE;
/*!40000 ALTER TABLE `type_transaction` DISABLE KEYS */;
INSERT INTO `type_transaction` VALUES (1,'DEPOT','Depot'),(2,'RETRAIT','Retrait');
/*!40000 ALTER TABLE `type_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `mot_de_passe` varchar(56) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `date_inscription` datetime NOT NULL,
  `idProfile` int(11) DEFAULT NULL,
  `idUserAction` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idProfile_idx` (`idProfile`),
  KEY `idUserAction_idx` (`idUserAction`),
  CONSTRAINT `idProfile` FOREIGN KEY (`idProfile`) REFERENCES `profile` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idUserAction` FOREIGN KEY (`idUserAction`) REFERENCES `useraction` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (3,'admin@gmail.com','2hFFMDG9P4nMfcbODZYe1ga3Va6A622Pv0uE4dDP8PmfzOJkadpCNg==','admin','2020-01-10 13:53:05',2,3);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useraction`
--

DROP TABLE IF EXISTS `useraction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `useraction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useraction`
--

LOCK TABLES `useraction` WRITE;
/*!40000 ALTER TABLE `useraction` DISABLE KEYS */;
INSERT INTO `useraction` VALUES (1,'Write','ecriture'),(2,'Reed','lecture'),(3,'All','ecriture / lecture');
/*!40000 ALTER TABLE `useraction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-24 22:07:18
