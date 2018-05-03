-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: careerplansys
-- ------------------------------------------------------
-- Server version	5.7.22

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
-- Table structure for table `Acreditacao`
--

DROP TABLE IF EXISTS `Acreditacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Acreditacao` (
  `codigo_acreditacao` varchar(40) NOT NULL,
  `nome_acreditacao` varchar(150) NOT NULL,
  `id_perfil` varchar(30) NOT NULL,
  PRIMARY KEY (`codigo_acreditacao`,`id_perfil`),
  KEY `fk_Acreditacao_Perfil_idx` (`id_perfil`),
  CONSTRAINT `fk_Acreditacao_Perfil` FOREIGN KEY (`id_perfil`) REFERENCES `Perfil` (`id_perfil`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Acreditacao`
--

LOCK TABLES `Acreditacao` WRITE;
/*!40000 ALTER TABLE `Acreditacao` DISABLE KEYS */;
INSERT INTO `Acreditacao` VALUES ('CLI-DEL-CA-14748-CUR-EN_US','Red Hat Delivery Specialist - Cloud Automation','p3'),('CLI-DEL-CEPH-13970-CUR-EN_US','Red Hat Ceph Storage 2 Integration with OpenStack','p3'),('CLI-DEL-CMT-14467-CUR-EN_US','Red Hat Delivery Specialist - Cloud Management','p3'),('CLI-DEL-IAS-15117-CUR-EN_US','Red Hat Delivery Specialist - Infrastructure-as-a-Service (IaaS)','p3'),('CLI-DEL-OCP-14937-CUR-EN_US','Red Hat OpenShift Container Platform 3 Operations','p3'),('CLI-DEL-PAS-14300-CUR-EN_US','Red Hat Delivery Specialist - Platform-as-a-Service (PaaS) Administration','p3'),('CLI-S-CA-9782-CUR-EN_US','Red Hat Sales Specialist - Cloud Automation','p1'),('CLI-S-CCSP-9783-CUR-EN_US','Red Hat Certified Cloud and Service Provider (CCSP)','p1'),('CLI-S-CMT-10192-CUR-EN_US','Red Hat Sales Specialist - Cloud Management','p1'),('CLI-S-CS-11871-CUR-EN_US','How to sell Red Hat Cloud Suite','p1'),('CLI-S-IAS-11409-CUR-EN_US','Red Hat Sales Specialist - Infrastructure-as-a-Service (IaaS)','p1'),('CLI-S-PAS-11750-CUR-EN_US','Red Hat Sales Specialist - Platform-as-a-Service (PaaS)','p1'),('CLI-SE-AMF-14959-CUR-EN_US','Application Modernization Foundations','p2'),('CLI-SE-CA-13995-CUR-EN_US','Red Hat Sales Engineer Specialist - Cloud Automation','p2'),('CLI-SE-CMT-14470-CUR-EN_US','Red Hat Sales Engineer Specialist - Cloud Management','p2'),('CLI-SE-CS-14226-CUR-EN_US','Red Hat Cloud Suite Foundations','p2'),('CLI-SE-IAS-14944-CUR-EN_US','Red Hat Sales Engineer Specialist - Infrastructure-as-a-Service (IaaS)','p2'),('CLI-SE-PAS-14312-CUR-EN_US','Red Hat Sales Engineer Specialist – Platform-as-a-Service (PaaS)','p2'),('CLI-SSE-FOU-11680-TOP-EN_US','First Cloud Conversations (Prerequisite)','p1'),('CLI-SSE-FOU-11680-TOP-EN_US','First Cloud Conversations (Prerequisite)','p2'),('DCI-DEL-CEPHS-13882-CUR-EN_US','Red Hat Delivery Specialist - Red Hat Ceph Storage','p3'),('DCI-DEL-GLUS-14327-CUR-EN_US','Red Hat Delivery Specialist - Red Hat Gluster Storage','p3'),('DCI-DEL-PLT-14271-CUR-EN_US','Red Hat Delivery Specialist - Platform','p3'),('DCI-DEL-SAP-14252-CUR-EN_US','Red Hat Enterprise Linux for SAP Hana','p3'),('DCI-DEL-SAPP-14254-CUR-EN_US','Automated SAP HANA System Replication with Pacemaker on Red Hat Enterprise Linux','p3'),('DCI-DEL-TRB-14265-CUR-EN_US','Red Hat Enterprise Linux 7 Troubleshooting','p3'),('DCI-DEL-VIR-14763-CUR-EN_US','Red Hat Delivery Specialist - Virtualization','p3'),('DCI-S-CEPHS-14797-CUR-EN_US','Red Hat Sales Specialist - Red Hat Ceph Storage','p1'),('DCI-S-GLUS-14791-CUR-EN_US','Red Hat Sales Specialist - Red Hat Gluster Storage','p1'),('DCI-S-INS-11392-CUR-EN_US','How to sell Red Hat Insights','p1'),('DCI-S-IOT-15089-CUR-EN_US','Red Hat Opportunities with the Internet of Things (IoT)','p1'),('DCI-S-LSUB-12732-CUR-EN_US','How to Sell Red Hat Learning Subscription','p1'),('DCI-S-PLM-9919-CUR-EN_US','Red Hat Sales Specialist - Platform Migration','p1'),('DCI-S-PLT-10046-CUR-EN_US','Red Hat Sales Specialist - Platform','p1'),('DCI-S-PLT-9929-CUR-PT_BR','Red Hat Sales Specialist - Plataforma','p1'),('DCI-S-STR-9975-CUR-EN_US','How to Sell Red Hat Storage Solutions','p1'),('DCI-S-VIR-9727-CUR-EN_US','Red Hat Sales Specialist - Virtualization','p1'),('DCI-SE-CEPHS-14804-CUR-EN_US','Red Hat Sales Engineer Specialist - Red Hat Ceph Storage','p2'),('DCI-SE-GLUS-14801-CUR-EN_US','Red Hat Sales Engineer Specialist - Red Hat Gluster Storage','p2'),('DCI-SE-PLM-10403-CUR-EN_US','Red Hat Sales Engineer Specialist - Platform Migration','p2'),('DCI-SE-PLT-14278-CUR-EN_US','Red Hat Sales Engineer Specialist - Platform','p2'),('DCI-SE-PLT-14429-CUR-PT_BR','Red Hat Sales Engineer Specialist - Platform - Português','p2'),('DCI-SE-PLTIBZ-14232-CUR-EN_US','Red Hat Enterprise Linux for IBM Z Systems Foundations','p2'),('DCI-SE-VIR-14766-CUR-EN_US','Red Hat Sales Engineer Specialist - Virtualization','p2'),('FND-SSE-FOU-9745-TOP-PT_BR','Red Hat Foundations','p1'),('FND-SSE-FOU-9745-TOP-PT_BR','Red Hat Foundations','p2'),('MSI-SE-SSO-15078-CUR-EN_US','Red Hat Single Sign-On Foundations','p2'),('MWS-DEL-ANG-13975-CUR-EN_US','Introduction to Angular','p3'),('MWS-DEL-APD-13849-CUR-EN_US','Red Hat Delivery Specialist - Middleware Application Development','p3'),('MWS-DEL-APIM-15080-CUR-EN_US','Red Hat Delivery Specialist - API Management','p3'),('MWS-DEL-BPA-10648-CUR-EN_US','Red Hat Delivery Specialist - Business Process Automation','p3'),('MWS-DEL-GDMJ-14237-CUR-EN_US','Graphical Data Mapping using Red Hat JBoss Fuse','p3'),('MWS-DEL-IFIS-14065-CUR-EN_US','Introduction to Red Hat JBoss Fuse Integration Services 2','p3'),('MWS-DEL-JADV-14075-CUR-EN_US','Data Integration with Red Hat JBoss Data Virtualization','p3'),('MWS-DEL-JFEAP-14260-CUR-EN_US','JBoss Fuse Application Deployment on Red Hat JBoss Enterprise Application Platform','p3'),('MWS-DEL-MAP-14382-CUR-EN_US','Red Hat Mobile Application Platform Cloud Implementation','p3'),('MWS-DEL-MOB-14149-CUR-EN_US','Red Hat Delivery Specialist - Mobility','p3'),('MWS-DEL-MWI-14824-CUR-EN_US','Red Hat Delivery Specialist - Middleware Integration Services','p3'),('MWS-DEL-MWM-14115-CUR-EN_US','Red Hat Delivery Specialist - Middleware Migration','p3'),('MWS-DEL-OSGI-14112-CUR-EN_US','OSGi-Based Development with Red Hat JBoss Fuse 6','p3'),('MWS-DEL-PASDEV-15094-CUR-EN_US','Red Hat Delivery Specialist - Platform-as-a-Service (PaaS) Development','p3'),('MWS-S-APD-14667-CUR-EN_US','Red Hat Sales Specialist - Middleware Application Development','p1'),('MWS-S-APIM-14917-CUR-EN_US','Red Hat Sales Specialist - API Management','p1'),('MWS-S-BPA-14496-CUR-EN_US','Red Hat Sales Specialist - Business Process Automation','p1'),('MWS-S-MOB-9599-CUR-EN_US','Red Hat Sales Specialist - Mobility','p1'),('MWS-S-MWI-13631-CUR-EN_US','Red Hat Sales Specialist - Middleware Integration Services','p1'),('MWS-S-MWM-9875-CUR-EN_US','Red Hat Sales Specialist - Middleware Migration','p1'),('MWS-S-PASDEV-11609-CUR-EN_US','Red Hat Sales Specialist - Platform-as-a-Service (PaaS)','p1'),('MWS-SE-APD-14677-CUR-EN_US','Red Hat Sales Engineer Specialist - Middleware Application Development','p2'),('MWS-SE-APIM-14932-CUR-EN_US','Red Hat Sales Engineer Specialist - API Management','p2'),('MWS-SE-BPA-14501-CUR-EN_US','Red Hat Sales Engineer Specialist - Business Process Automation','p2'),('MWS-SE-MOB-14154-CUR-EN_US','Red Hat Sales Engineer Specialist - Mobility','p2'),('MWS-SE-MWI-14816-CUR-EN_US','Red Hat Sales Engineer Specialist - Middleware Integration Services','p2'),('MWS-SE-MWI-14978-CUR-EN_US','Agile Integration Architecture Use Cases','p2'),('MWS-SE-MWM-14124-CUR-EN_US','Red Hat Sales Engineer Specialist - Middleware Migration','p2'),('MWS-SE-PASDEV-14015-CUR-EN_US','Red Hat Sales Engineer Specialist – Platform-as-a-Service (PaaS) Development','p2'),('SUP-SE-WRHS-13458-CUR-EN_US','Working with Red Hat Support','p2');
/*!40000 ALTER TABLE `Acreditacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Acreditacao_Produto`
--

DROP TABLE IF EXISTS `Acreditacao_Produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Acreditacao_Produto` (
  `Acreditacao_codigo_acreditacao` varchar(40) NOT NULL,
  `Acreditacao_id_perfil` varchar(30) NOT NULL,
  `Produto_id_produto` varchar(30) NOT NULL,
  PRIMARY KEY (`Acreditacao_codigo_acreditacao`,`Acreditacao_id_perfil`,`Produto_id_produto`),
  KEY `fk_Acreditacao_has_Produto_Produto1_idx` (`Produto_id_produto`),
  KEY `fk_Acreditacao_has_Produto_Acreditacao1_idx` (`Acreditacao_codigo_acreditacao`,`Acreditacao_id_perfil`),
  CONSTRAINT `fk_Acreditacao_has_Produto_Acreditacao1` FOREIGN KEY (`Acreditacao_codigo_acreditacao`, `Acreditacao_id_perfil`) REFERENCES `Acreditacao` (`codigo_acreditacao`, `id_perfil`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Acreditacao_has_Produto_Produto1` FOREIGN KEY (`Produto_id_produto`) REFERENCES `Produto` (`id_produto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Acreditacao_Produto`
--

LOCK TABLES `Acreditacao_Produto` WRITE;
/*!40000 ALTER TABLE `Acreditacao_Produto` DISABLE KEYS */;
INSERT INTO `Acreditacao_Produto` VALUES ('DCI-DEL-PLT-14271-CUR-EN_US','p3','prod1'),('DCI-DEL-TRB-14265-CUR-EN_US','p3','prod1'),('DCI-S-PLM-9919-CUR-EN_US','p1','prod1'),('DCI-S-PLT-10046-CUR-EN_US','p1','prod1'),('DCI-S-PLT-9929-CUR-PT_BR','p1','prod1'),('DCI-SE-PLM-10403-CUR-EN_US','p2','prod1'),('DCI-SE-PLT-14278-CUR-EN_US','p2','prod1'),('DCI-SE-PLT-14429-CUR-PT_BR','p2','prod1'),('FND-SSE-FOU-9745-TOP-PT_BR','p1','prod1'),('FND-SSE-FOU-9745-TOP-PT_BR','p2','prod1'),('CLI-DEL-OCP-14937-CUR-EN_US','p3','prod10'),('CLI-DEL-PAS-14300-CUR-EN_US','p3','prod10'),('CLI-S-PAS-11750-CUR-EN_US','p1','prod10'),('CLI-SE-PAS-14312-CUR-EN_US','p2','prod10'),('CLI-SSE-FOU-11680-TOP-EN_US','p1','prod10'),('MWS-DEL-PASDEV-15094-CUR-EN_US','p3','prod10'),('MWS-S-PASDEV-11609-CUR-EN_US','p1','prod10'),('MWS-SE-PASDEV-14015-CUR-EN_US','p2','prod10'),('CLI-DEL-CA-14748-CUR-EN_US','p3','prod11'),('CLI-S-CA-9782-CUR-EN_US','p1','prod11'),('CLI-SE-CA-13995-CUR-EN_US','p2','prod11'),('CLI-SSE-FOU-11680-TOP-EN_US','p1','prod11'),('CLI-DEL-CMT-14467-CUR-EN_US','p3','prod12'),('CLI-S-CMT-10192-CUR-EN_US','p1','prod12'),('CLI-S-CS-11871-CUR-EN_US','p1','prod12'),('CLI-SE-CMT-14470-CUR-EN_US','p2','prod12'),('CLI-SE-CS-14226-CUR-EN_US','p2','prod12'),('CLI-SSE-FOU-11680-TOP-EN_US','p1','prod12'),('CLI-SSE-FOU-11680-TOP-EN_US','p2','prod12'),('CLI-DEL-IAS-15117-CUR-EN_US','p3','prod13'),('CLI-S-IAS-11409-CUR-EN_US','p1','prod13'),('CLI-SE-IAS-14944-CUR-EN_US','p2','prod13'),('CLI-SSE-FOU-11680-TOP-EN_US','p1','prod13'),('CLI-S-CCSP-9783-CUR-EN_US','p1','prod14'),('CLI-S-CS-11871-CUR-EN_US','p1','prod14'),('CLI-SE-AMF-14959-CUR-EN_US','p2','prod14'),('DCI-DEL-SAP-14252-CUR-EN_US','p3','prod14'),('DCI-DEL-SAPP-14254-CUR-EN_US','p3','prod14'),('DCI-S-INS-11392-CUR-EN_US','p1','prod14'),('DCI-S-IOT-15089-CUR-EN_US','p1','prod14'),('DCI-S-LSUB-12732-CUR-EN_US','p1','prod14'),('DCI-S-STR-9975-CUR-EN_US','p1','prod14'),('DCI-SE-PLTIBZ-14232-CUR-EN_US','p2','prod14'),('MSI-SE-SSO-15078-CUR-EN_US','p2','prod14'),('MWS-DEL-ANG-13975-CUR-EN_US','p3','prod14'),('MWS-SE-MWI-14978-CUR-EN_US','p2','prod14'),('SUP-SE-WRHS-13458-CUR-EN_US','p2','prod14'),('DCI-DEL-CEPHS-13882-CUR-EN_US','p3','prod2'),('DCI-S-CEPHS-14797-CUR-EN_US','p1','prod2'),('DCI-S-STR-9975-CUR-EN_US','p1','prod2'),('DCI-SE-CEPHS-14804-CUR-EN_US','p2','prod2'),('DCI-DEL-GLUS-14327-CUR-EN_US','p3','prod3'),('DCI-S-GLUS-14791-CUR-EN_US','p1','prod3'),('DCI-S-STR-9975-CUR-EN_US','p1','prod3'),('DCI-SE-GLUS-14801-CUR-EN_US','p2','prod3'),('DCI-DEL-VIR-14763-CUR-EN_US','p3','prod4'),('DCI-S-VIR-9727-CUR-EN_US','p1','prod4'),('DCI-SE-VIR-14766-CUR-EN_US','p2','prod4'),('MWS-DEL-APIM-15080-CUR-EN_US','p3','prod5'),('MWS-S-APIM-14917-CUR-EN_US','p1','prod5'),('MWS-SE-APIM-14932-CUR-EN_US','p2','prod5'),('MWS-DEL-BPA-10648-CUR-EN_US','p3','prod6'),('MWS-S-BPA-14496-CUR-EN_US','p1','prod6'),('MWS-SE-BPA-14501-CUR-EN_US','p2','prod6'),('MWS-DEL-APD-13849-CUR-EN_US','p3','prod7'),('MWS-DEL-JFEAP-14260-CUR-EN_US','p3','prod7'),('MWS-DEL-MWM-14115-CUR-EN_US','p3','prod7'),('MWS-S-APD-14667-CUR-EN_US','p1','prod7'),('MWS-S-MWM-9875-CUR-EN_US','p1','prod7'),('MWS-SE-APD-14677-CUR-EN_US','p2','prod7'),('MWS-SE-MWM-14124-CUR-EN_US','p2','prod7'),('MWS-DEL-GDMJ-14237-CUR-EN_US','p3','prod8'),('MWS-DEL-IFIS-14065-CUR-EN_US','p3','prod8'),('MWS-DEL-JADV-14075-CUR-EN_US','p3','prod8'),('MWS-DEL-MWI-14824-CUR-EN_US','p3','prod8'),('MWS-DEL-OSGI-14112-CUR-EN_US','p3','prod8'),('MWS-S-MWI-13631-CUR-EN_US','p1','prod8'),('MWS-SE-MWI-14816-CUR-EN_US','p2','prod8'),('MWS-DEL-MAP-14382-CUR-EN_US','p3','prod9'),('MWS-DEL-MOB-14149-CUR-EN_US','p3','prod9'),('MWS-S-MOB-9599-CUR-EN_US','p1','prod9'),('MWS-SE-MOB-14154-CUR-EN_US','p2','prod9');
/*!40000 ALTER TABLE `Acreditacao_Produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Empresa`
--

DROP TABLE IF EXISTS `Empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Empresa` (
  `id_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `nome_empresa` varchar(45) NOT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empresa`
--

LOCK TABLES `Empresa` WRITE;
/*!40000 ALTER TABLE `Empresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `Empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Parceiro`
--

DROP TABLE IF EXISTS `Parceiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Parceiro` (
  `cpf_parceiro` varchar(15) NOT NULL,
  `nome_completo` varchar(100) NOT NULL,
  `cargo` varchar(45) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `empresa` varchar(45) NOT NULL,
  `email` varchar(60) NOT NULL,
  `data_cadastro` datetime NOT NULL,
  `data_atualizacao` datetime NOT NULL,
  PRIMARY KEY (`cpf_parceiro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Empresa_id_empresa';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Parceiro`
--

LOCK TABLES `Parceiro` WRITE;
/*!40000 ALTER TABLE `Parceiro` DISABLE KEYS */;
INSERT INTO `Parceiro` VALUES ('31868019829','Fernanda','Disponível no Mercado','11919191919','Casa','fernanda@fe.com','2018-04-30 16:14:47','2018-05-02 13:56:59'),('3186829829','Jose','Analista de Mercado','11919191919','XPTO','jose@.com','2018-05-02 13:57:33','2018-05-02 13:59:14'),('7777777777','Joao','Analista de TI','11919191919','redre','joao@.com','2018-05-02 14:00:46','2018-05-02 19:59:30'),('9257','Patrick','500','123123','Red Hat','100','2018-04-30 15:16:36','2018-04-30 16:12:41');
/*!40000 ALTER TABLE `Parceiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Perfil`
--

DROP TABLE IF EXISTS `Perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Perfil` (
  `id_perfil` varchar(30) NOT NULL,
  `nome_perfil` varchar(100) NOT NULL,
  PRIMARY KEY (`id_perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Perfil`
--

LOCK TABLES `Perfil` WRITE;
/*!40000 ALTER TABLE `Perfil` DISABLE KEYS */;
INSERT INTO `Perfil` VALUES ('p1','Vendas'),('p2','Pre-Vendas'),('p3','Delivery');
/*!40000 ALTER TABLE `Perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Produto`
--

DROP TABLE IF EXISTS `Produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Produto` (
  `id_produto` varchar(30) NOT NULL,
  `nome_produto` varchar(100) NOT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Produto`
--

LOCK TABLES `Produto` WRITE;
/*!40000 ALTER TABLE `Produto` DISABLE KEYS */;
INSERT INTO `Produto` VALUES ('prod1','Platform (RHEL and Satellite)'),('prod10','Openshift Container Platform'),('prod11','Automation - Ansible'),('prod12','Cloud Management - CloudForms'),('prod13','OpenStack Platform'),('prod14','Eletivos'),('prod2','Red Hat CEPH Storage'),('prod3','Red Hat Gluster Storage'),('prod4','Red Hat Virtualization'),('prod5','3Scale API Management'),('prod6','Business Process Automation'),('prod7','Application Development - EAP'),('prod8','Integration - Fuse - A-MQ - JDV'),('prod9','Red Hat Mobile App. Platform');
/*!40000 ALTER TABLE `Produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Relatorio`
--

DROP TABLE IF EXISTS `Relatorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Relatorio` (
  `id_relatorio` int(11) NOT NULL AUTO_INCREMENT,
  `nome_acreditacao` varchar(150) NOT NULL,
  `nome_perfil` varchar(150) NOT NULL,
  `codigo_acreditacao` varchar(150) NOT NULL,
  `cpf_parceiro` varchar(15) NOT NULL,
  `data_inscricao` datetime NOT NULL,
  PRIMARY KEY (`id_relatorio`),
  KEY `fk_Relatorio_Parceiro1_idx` (`cpf_parceiro`),
  CONSTRAINT `fk_Relatorio_Parceiro1` FOREIGN KEY (`cpf_parceiro`) REFERENCES `Parceiro` (`cpf_parceiro`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Relatorio`
--

LOCK TABLES `Relatorio` WRITE;
/*!40000 ALTER TABLE `Relatorio` DISABLE KEYS */;
/*!40000 ALTER TABLE `Relatorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Relatorio_Produto`
--

DROP TABLE IF EXISTS `Relatorio_Produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Relatorio_Produto` (
  `Relatorio_id_relatorio` int(11) NOT NULL,
  `Produto_id_produto` varchar(30) NOT NULL,
  PRIMARY KEY (`Relatorio_id_relatorio`,`Produto_id_produto`),
  KEY `fk_Relatorio_has_Produto_Produto1_idx` (`Produto_id_produto`),
  KEY `fk_Relatorio_has_Produto_Relatorio1_idx` (`Relatorio_id_relatorio`),
  CONSTRAINT `fk_Relatorio_has_Produto_Produto1` FOREIGN KEY (`Produto_id_produto`) REFERENCES `Produto` (`id_produto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Relatorio_has_Produto_Relatorio1` FOREIGN KEY (`Relatorio_id_relatorio`) REFERENCES `Relatorio` (`id_relatorio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Relatorio_Produto`
--

LOCK TABLES `Relatorio_Produto` WRITE;
/*!40000 ALTER TABLE `Relatorio_Produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `Relatorio_Produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-03 16:59:20
