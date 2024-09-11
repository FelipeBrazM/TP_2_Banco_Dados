-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: clinica
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `alergia`
--

DROP TABLE IF EXISTS `alergia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alergia` (
  `alergeno` varchar(100) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`alergeno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alergia`
--

LOCK TABLES `alergia` WRITE;
/*!40000 ALTER TABLE `alergia` DISABLE KEYS */;
INSERT INTO `alergia` VALUES ('Ácaro','Ambiental'),('Amendoim','Alimento'),('Aspirina','Medicamento'),('Corante Alimentar','Alimento'),('Frutos do Mar','Alimento'),('Glúten','Alimento'),('Lactose','Alimento'),('Nozes','Alimento'),('Ovos','Alimento'),('Penicilina','Medicamento'),('Pólen','Ambiental');
/*!40000 ALTER TABLE `alergia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consulta`
--

DROP TABLE IF EXISTS `consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consulta` (
  `cpf_paciente` varchar(11) NOT NULL,
  `cpf_medico` varchar(11) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `sala` varchar(20) DEFAULT NULL,
  `retorno` tinyint(1) DEFAULT NULL,
  `cpf_secretaria` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`cpf_paciente`,`cpf_medico`,`data`,`hora`),
  KEY `cpf_medico` (`cpf_medico`),
  KEY `cpf_secretaria` (`cpf_secretaria`),
  CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`cpf_paciente`) REFERENCES `paciente` (`cpf`) ON DELETE RESTRICT,
  CONSTRAINT `consulta_ibfk_2` FOREIGN KEY (`cpf_medico`) REFERENCES `medico` (`cpf`) ON DELETE RESTRICT,
  CONSTRAINT `consulta_ibfk_3` FOREIGN KEY (`cpf_secretaria`) REFERENCES `secretaria` (`cpf`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consulta`
--

LOCK TABLES `consulta` WRITE;
/*!40000 ALTER TABLE `consulta` DISABLE KEYS */;
INSERT INTO `consulta` VALUES ('81151053090','64333903076','2024-01-15','09:00:00',150.00,'Sala 3',0,'49575304080'),('81151053090','64333903076','2024-05-23','13:00:00',150.00,'Sala 2',0,'49575304080'),('81151053090','64333903076','2024-05-23','15:00:00',150.00,'Sala 2',0,'49575304080'),('81151053090','64333903076','2024-05-25','15:00:00',150.00,'Sala 2',0,'49575304080');
/*!40000 ALTER TABLE `consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contato_de_emergencia`
--

DROP TABLE IF EXISTS `contato_de_emergencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contato_de_emergencia` (
  `cpf_paciente` varchar(11) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `tipo_de_relacao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cpf_paciente`,`telefone`),
  CONSTRAINT `contato_de_emergencia_ibfk_1` FOREIGN KEY (`cpf_paciente`) REFERENCES `paciente` (`cpf`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contato_de_emergencia`
--

LOCK TABLES `contato_de_emergencia` WRITE;
/*!40000 ALTER TABLE `contato_de_emergencia` DISABLE KEYS */;
INSERT INTO `contato_de_emergencia` VALUES ('81151053090','11987654326','Pedro Silva','Amigo');
/*!40000 ALTER TABLE `contato_de_emergencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnostico`
--

DROP TABLE IF EXISTS `diagnostico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diagnostico` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cpf_paciente` varchar(11) DEFAULT NULL,
  `cpf_medico` varchar(11) DEFAULT NULL,
  `data_consulta` date DEFAULT NULL,
  `hora_consulta` time DEFAULT NULL,
  `descricao` text,
  PRIMARY KEY (`id`),
  KEY `cpf_paciente` (`cpf_paciente`,`cpf_medico`,`data_consulta`,`hora_consulta`),
  CONSTRAINT `diagnostico_ibfk_1` FOREIGN KEY (`cpf_paciente`, `cpf_medico`, `data_consulta`, `hora_consulta`) REFERENCES `consulta` (`cpf_paciente`, `cpf_medico`, `data`, `hora`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnostico`
--

LOCK TABLES `diagnostico` WRITE;
/*!40000 ALTER TABLE `diagnostico` DISABLE KEYS */;
INSERT INTO `diagnostico` VALUES (1,'81151053090','64333903076','2024-01-15','09:00:00','Osteoporose leve');
/*!40000 ALTER TABLE `diagnostico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doencas_cronicas`
--

DROP TABLE IF EXISTS `doencas_cronicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doencas_cronicas` (
  `cid_11` varchar(10) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cid_11`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doencas_cronicas`
--

LOCK TABLES `doencas_cronicas` WRITE;
/*!40000 ALTER TABLE `doencas_cronicas` DISABLE KEYS */;
INSERT INTO `doencas_cronicas` VALUES ('E03','Hipotireoidismo'),('E11','Diabetes Tipo 2'),('E66','Obesidade'),('F41','Transtorno de Ansiedade'),('I10','Hipertensão Arterial'),('I25','Doença Arterial Coronariana'),('J44','Doença Pulmonar Obstrutiva Crônica'),('J45','Asma'),('M15','Artrose'),('N18','Doença Renal Crônica');
/*!40000 ALTER TABLE `doencas_cronicas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidade`
--

DROP TABLE IF EXISTS `especialidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidade` (
  `nome` varchar(100) NOT NULL,
  `descricao` text,
  PRIMARY KEY (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidade`
--

LOCK TABLES `especialidade` WRITE;
/*!40000 ALTER TABLE `especialidade` DISABLE KEYS */;
INSERT INTO `especialidade` VALUES ('Cardiologia','Especialidade que trata do coração e sistema cardiovascular'),('Dermatologia','Especialidade que trata da pele e doenças de pele'),('Endocrinologia','Especialidade que trata das glândulas endócrinas e hormônios'),('Ginecologia','Especialidade que trata da saúde da mulher e do sistema reprodutor feminino'),('Neurologia','Especialidade que trata do sistema nervoso'),('Oftalmologia','Especialidade que trata dos olhos e da visão'),('Ortopedia','Especialidade que trata dos ossos e articulações'),('Pediatria','Especialidade que trata da saúde de crianças'),('Psiquiatria','Especialidade que trata de doenças mentais e emocionais'),('Reumatologia','Especialidade que trata das doenças autoimunes e reumáticas');
/*!40000 ALTER TABLE `especialidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exame`
--

DROP TABLE IF EXISTS `exame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exame` (
  `id` int NOT NULL,
  `cpf_paciente` varchar(11) DEFAULT NULL,
  `cpf_medico` varchar(11) DEFAULT NULL,
  `data_consulta` date DEFAULT NULL,
  `hora_consulta` time DEFAULT NULL,
  `resultado` text,
  `id_tipo_exame` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cpf_paciente` (`cpf_paciente`,`cpf_medico`,`data_consulta`,`hora_consulta`),
  KEY `id_tipo_exame` (`id_tipo_exame`),
  CONSTRAINT `exame_ibfk_1` FOREIGN KEY (`cpf_paciente`, `cpf_medico`, `data_consulta`, `hora_consulta`) REFERENCES `consulta` (`cpf_paciente`, `cpf_medico`, `data`, `hora`) ON DELETE RESTRICT,
  CONSTRAINT `exame_ibfk_2` FOREIGN KEY (`id_tipo_exame`) REFERENCES `tipo_de_exame` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exame`
--

LOCK TABLES `exame` WRITE;
/*!40000 ALTER TABLE `exame` DISABLE KEYS */;
INSERT INTO `exame` VALUES (1,'81151053090','64333903076','2024-01-15','09:00:00','Normal',1);
/*!40000 ALTER TABLE `exame` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `cpf` varchar(11) NOT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `escala` varchar(50) DEFAULT NULL,
  `matricula` varchar(20) DEFAULT NULL,
  `data_de_admissao` date DEFAULT NULL,
  PRIMARY KEY (`cpf`),
  CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `pessoa` (`cpf`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES ('12985913098',3000.00,'Seg-Sex 09:00-17:00','F001','2020-04-06'),('49575304080',1700.00,'Seg-Sex 09:00-17:00','F003','2022-07-03'),('64333903076',10500.00,'Seg-Sex 12:00-17:00','F002','2023-05-02');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medico` (
  `cpf` varchar(11) NOT NULL,
  `crm` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cpf`),
  CONSTRAINT `medico_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `funcionario` (`cpf`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
INSERT INTO `medico` VALUES ('64333903076','CRM12345');
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico_tem_especialidade`
--

DROP TABLE IF EXISTS `medico_tem_especialidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medico_tem_especialidade` (
  `cpf` varchar(11) NOT NULL,
  `nome_especialidade` varchar(100) NOT NULL,
  PRIMARY KEY (`cpf`,`nome_especialidade`),
  KEY `nome_especialidade` (`nome_especialidade`),
  CONSTRAINT `medico_tem_especialidade_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `medico` (`cpf`) ON DELETE CASCADE,
  CONSTRAINT `medico_tem_especialidade_ibfk_2` FOREIGN KEY (`nome_especialidade`) REFERENCES `especialidade` (`nome`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico_tem_especialidade`
--

LOCK TABLES `medico_tem_especialidade` WRITE;
/*!40000 ALTER TABLE `medico_tem_especialidade` DISABLE KEYS */;
INSERT INTO `medico_tem_especialidade` VALUES ('64333903076','Cardiologia');
/*!40000 ALTER TABLE `medico_tem_especialidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `cpf` varchar(11) NOT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(4,2) DEFAULT NULL,
  `plano_de_saude` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`cpf`),
  KEY `plano_de_saude` (`plano_de_saude`),
  CONSTRAINT `paciente_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `pessoa` (`cpf`) ON DELETE CASCADE,
  CONSTRAINT `paciente_ibfk_2` FOREIGN KEY (`plano_de_saude`) REFERENCES `plano_de_saude` (`cnpj`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES ('81151053090',70.50,1.80,'52724334000101');
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente_tem_alergia`
--

DROP TABLE IF EXISTS `paciente_tem_alergia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente_tem_alergia` (
  `cpf_paciente` varchar(11) NOT NULL,
  `alergeno` varchar(100) NOT NULL,
  PRIMARY KEY (`cpf_paciente`,`alergeno`),
  KEY `alergeno` (`alergeno`),
  CONSTRAINT `paciente_tem_alergia_ibfk_1` FOREIGN KEY (`cpf_paciente`) REFERENCES `paciente` (`cpf`) ON DELETE CASCADE,
  CONSTRAINT `paciente_tem_alergia_ibfk_2` FOREIGN KEY (`alergeno`) REFERENCES `alergia` (`alergeno`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente_tem_alergia`
--

LOCK TABLES `paciente_tem_alergia` WRITE;
/*!40000 ALTER TABLE `paciente_tem_alergia` DISABLE KEYS */;
INSERT INTO `paciente_tem_alergia` VALUES ('81151053090','Amendoim');
/*!40000 ALTER TABLE `paciente_tem_alergia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente_tem_doencas_cronicas`
--

DROP TABLE IF EXISTS `paciente_tem_doencas_cronicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente_tem_doencas_cronicas` (
  `cpf_paciente` varchar(11) NOT NULL,
  `cid_11` varchar(10) NOT NULL,
  PRIMARY KEY (`cpf_paciente`,`cid_11`),
  KEY `cid_11` (`cid_11`),
  CONSTRAINT `paciente_tem_doencas_cronicas_ibfk_1` FOREIGN KEY (`cpf_paciente`) REFERENCES `paciente` (`cpf`) ON DELETE CASCADE,
  CONSTRAINT `paciente_tem_doencas_cronicas_ibfk_2` FOREIGN KEY (`cid_11`) REFERENCES `doencas_cronicas` (`cid_11`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente_tem_doencas_cronicas`
--

LOCK TABLES `paciente_tem_doencas_cronicas` WRITE;
/*!40000 ALTER TABLE `paciente_tem_doencas_cronicas` DISABLE KEYS */;
INSERT INTO `paciente_tem_doencas_cronicas` VALUES ('81151053090','I10');
/*!40000 ALTER TABLE `paciente_tem_doencas_cronicas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente_utiliza_remedio`
--

DROP TABLE IF EXISTS `paciente_utiliza_remedio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente_utiliza_remedio` (
  `ium` varchar(20) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `dose` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`ium`,`cpf`),
  KEY `cpf` (`cpf`),
  CONSTRAINT `paciente_utiliza_remedio_ibfk_1` FOREIGN KEY (`ium`) REFERENCES `remedio` (`ium`) ON DELETE RESTRICT,
  CONSTRAINT `paciente_utiliza_remedio_ibfk_2` FOREIGN KEY (`cpf`) REFERENCES `paciente` (`cpf`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente_utiliza_remedio`
--

LOCK TABLES `paciente_utiliza_remedio` WRITE;
/*!40000 ALTER TABLE `paciente_utiliza_remedio` DISABLE KEYS */;
INSERT INTO `paciente_utiliza_remedio` VALUES ('REM001','81151053090',1.00);
/*!40000 ALTER TABLE `paciente_utiliza_remedio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
  `cpf` varchar(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` text,
  `email` varchar(100) DEFAULT NULL,
  `tipo_sanguineo` varchar(3) DEFAULT NULL,
  `data_de_nascimento` date DEFAULT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES ('12985913098','Weber Luis de Oliveira','31988962512','Rua Russia, 231','weberluis@gmail.com','A+','1987-06-08'),('49575304080','Pamela Morgan Halpert','31983256947','Rua Espanha, 21','pamelahalpert@gmail.com','B+','1994-05-02'),('64333903076','Paula Mancini','31982365841','Rua Dinamarca, 98','doutorapaula@gmail.com','AB+','1999-02-03'),('81151053090','João da Silva','31985623445','Rua Argentina, 456','joaosilva@gmail.com','O+','1990-01-05');
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plano_de_saude`
--

DROP TABLE IF EXISTS `plano_de_saude`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plano_de_saude` (
  `cnpj` varchar(14) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `endereco` text,
  PRIMARY KEY (`cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plano_de_saude`
--

LOCK TABLES `plano_de_saude` WRITE;
/*!40000 ALTER TABLE `plano_de_saude` DISABLE KEYS */;
INSERT INTO `plano_de_saude` VALUES ('52724334000101','Bio Saúde','biosaude@gmail.com','Rua Brasil, 263');
/*!40000 ALTER TABLE `plano_de_saude` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procedimento`
--

DROP TABLE IF EXISTS `procedimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procedimento` (
  `id` int NOT NULL,
  `cpf_paciente` varchar(11) DEFAULT NULL,
  `cpf_medico` varchar(11) DEFAULT NULL,
  `data_consulta` date DEFAULT NULL,
  `hora_consulta` time DEFAULT NULL,
  `data_procedimento` date DEFAULT NULL,
  `hora_procedimento` time DEFAULT NULL,
  `cpf_secretaria` varchar(11) DEFAULT NULL,
  `id_tipo_procedimento` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cpf_paciente` (`cpf_paciente`,`cpf_medico`,`data_consulta`,`hora_consulta`),
  KEY `cpf_secretaria` (`cpf_secretaria`),
  KEY `id_tipo_procedimento` (`id_tipo_procedimento`),
  CONSTRAINT `procedimento_ibfk_1` FOREIGN KEY (`cpf_paciente`, `cpf_medico`, `data_consulta`, `hora_consulta`) REFERENCES `consulta` (`cpf_paciente`, `cpf_medico`, `data`, `hora`) ON DELETE RESTRICT,
  CONSTRAINT `procedimento_ibfk_2` FOREIGN KEY (`cpf_secretaria`) REFERENCES `secretaria` (`cpf`) ON DELETE RESTRICT,
  CONSTRAINT `procedimento_ibfk_3` FOREIGN KEY (`id_tipo_procedimento`) REFERENCES `tipo_de_procedimento` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procedimento`
--

LOCK TABLES `procedimento` WRITE;
/*!40000 ALTER TABLE `procedimento` DISABLE KEYS */;
INSERT INTO `procedimento` VALUES (1,'81151053090','64333903076','2024-01-15','09:00:00','2024-02-01','10:00:00','49575304080',1);
/*!40000 ALTER TABLE `procedimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receita`
--

DROP TABLE IF EXISTS `receita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receita` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cpf_paciente` varchar(11) DEFAULT NULL,
  `cpf_medico` varchar(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `data_de_validade` date DEFAULT NULL,
  `instrucao` text,
  `data_emissao` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cpf_paciente` (`cpf_paciente`,`cpf_medico`,`data`,`hora`),
  CONSTRAINT `receita_ibfk_1` FOREIGN KEY (`cpf_paciente`, `cpf_medico`, `data`, `hora`) REFERENCES `consulta` (`cpf_paciente`, `cpf_medico`, `data`, `hora`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receita`
--

LOCK TABLES `receita` WRITE;
/*!40000 ALTER TABLE `receita` DISABLE KEYS */;
INSERT INTO `receita` VALUES (2,'81151053090','64333903076','2024-05-23','13:00:00','2024-07-15','Tomar um comprimido a cada 8 horas','2024-01-15');
/*!40000 ALTER TABLE `receita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receita_contem_remedios`
--

DROP TABLE IF EXISTS `receita_contem_remedios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receita_contem_remedios` (
  `ium` varchar(20) NOT NULL,
  `id` int NOT NULL,
  `dose` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`ium`,`id`),
  KEY `id` (`id`),
  CONSTRAINT `receita_contem_remedios_ibfk_1` FOREIGN KEY (`ium`) REFERENCES `remedio` (`ium`) ON DELETE RESTRICT,
  CONSTRAINT `receita_contem_remedios_ibfk_2` FOREIGN KEY (`id`) REFERENCES `receita` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receita_contem_remedios`
--

LOCK TABLES `receita_contem_remedios` WRITE;
/*!40000 ALTER TABLE `receita_contem_remedios` DISABLE KEYS */;
INSERT INTO `receita_contem_remedios` VALUES ('REM001',2,1.00);
/*!40000 ALTER TABLE `receita_contem_remedios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remedio`
--

DROP TABLE IF EXISTS `remedio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `remedio` (
  `ium` varchar(20) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `farmaco_por_dose` varchar(50) DEFAULT NULL,
  `laboratorio` varchar(100) DEFAULT NULL,
  `bula` text,
  PRIMARY KEY (`ium`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remedio`
--

LOCK TABLES `remedio` WRITE;
/*!40000 ALTER TABLE `remedio` DISABLE KEYS */;
INSERT INTO `remedio` VALUES ('REM001','Paracetamol','500mg','Lab A','Bula do Paracetamol'),('REM002','Ibuprofeno','400mg','Lab B','Bula do Ibuprofeno'),('REM003','Amoxicilina','250mg','Lab C','Bula da Amoxicilina'),('REM004','Dipirona','1g','Lab D','Bula da Dipirona'),('REM005','Omeprazol','20mg','Lab E','Bula do Omeprazol');
/*!40000 ALTER TABLE `remedio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secretaria`
--

DROP TABLE IF EXISTS `secretaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `secretaria` (
  `cpf` varchar(11) NOT NULL,
  `numero_ramal` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cpf`),
  CONSTRAINT `secretaria_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `funcionario` (`cpf`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secretaria`
--

LOCK TABLES `secretaria` WRITE;
/*!40000 ALTER TABLE `secretaria` DISABLE KEYS */;
INSERT INTO `secretaria` VALUES ('49575304080','0001');
/*!40000 ALTER TABLE `secretaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_de_exame`
--

DROP TABLE IF EXISTS `tipo_de_exame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_de_exame` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` text,
  `nome` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_de_exame`
--

LOCK TABLES `tipo_de_exame` WRITE;
/*!40000 ALTER TABLE `tipo_de_exame` DISABLE KEYS */;
INSERT INTO `tipo_de_exame` VALUES (1,'Exame de sangue para verificar níveis de colesterol','Hemograma');
/*!40000 ALTER TABLE `tipo_de_exame` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_de_procedimento`
--

DROP TABLE IF EXISTS `tipo_de_procedimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_de_procedimento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` text,
  `nome` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_de_procedimento`
--

LOCK TABLES `tipo_de_procedimento` WRITE;
/*!40000 ALTER TABLE `tipo_de_procedimento` DISABLE KEYS */;
INSERT INTO `tipo_de_procedimento` VALUES (1,'Procedimento para substituição de válvula cardíaca','Troca de Válvula Cardíaca');
/*!40000 ALTER TABLE `tipo_de_procedimento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-10 21:25:56
