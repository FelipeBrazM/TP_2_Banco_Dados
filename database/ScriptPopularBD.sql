-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 186.235.201.1    Database: Clinica
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.22.04.1

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
-- Dumping data for table `Alergia`
--

LOCK TABLES `Alergia` WRITE;
/*!40000 ALTER TABLE `Alergia` DISABLE KEYS */;
INSERT INTO `Alergia` VALUES ('Amendoim','Alimentar'),('Lactose','Alimentar'),('Pelo de gato','Respiratória'),('Penicilina','Medicamento'),('Pólen','Respiratória');
/*!40000 ALTER TABLE `Alergia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Consulta`
--

LOCK TABLES `Consulta` WRITE;
/*!40000 ALTER TABLE `Consulta` DISABLE KEYS */;
INSERT INTO `Consulta` VALUES ('01234567890','56789012345','2024-09-13','13:00:00',240.00,'Sala 5',0,'55555555555'),('67890123456','12345678901','2024-09-13','09:00:00',200.00,'Sala 1',0,'11111111111'),('78901234567','23456789012','2024-09-13','10:00:00',250.00,'Sala 2',1,'22222222222'),('89012345678','34567890123','2024-09-13','11:00:00',300.00,'Sala 3',0,'33333333333'),('90123456789','45678901234','2024-09-13','12:00:00',220.00,'Sala 4',1,'44444444444');
/*!40000 ALTER TABLE `Consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Contato_de_emergencia`
--

LOCK TABLES `Contato_de_emergencia` WRITE;
/*!40000 ALTER TABLE `Contato_de_emergencia` DISABLE KEYS */;
INSERT INTO `Contato_de_emergencia` VALUES ('01234567890','11955554444','Julia Gomes','Amiga'),('67890123456','21999998888','Laura Mendes','Irmã'),('78901234567','31988887777','Roberto Ferreira','Pai'),('89012345678','41977776666','Cláudia Lima','Mãe'),('90123456789','51966665555','Felipe Alves','Esposo');
/*!40000 ALTER TABLE `Contato_de_emergencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Diagnostico`
--

LOCK TABLES `Diagnostico` WRITE;
/*!40000 ALTER TABLE `Diagnostico` DISABLE KEYS */;
INSERT INTO `Diagnostico` VALUES (6,'67890123456','12345678901','2024-09-13','09:00:00','Paciente apresenta níveis normais de colesterol.'),(7,'78901234567','23456789012','2024-09-13','10:00:00','Paciente com glicemia alta, indicativo de diabetes.'),(8,'89012345678','34567890123','2024-09-13','11:00:00','Função renal normal detectada.'),(9,'90123456789','45678901234','2024-09-13','12:00:00','Paciente apresenta resultados normais no exame hepático.'),(10,'01234567890','56789012345','2024-09-13','13:00:00','Densidade óssea normal, sem sinais de osteoporose.');
/*!40000 ALTER TABLE `Diagnostico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Doencas_cronicas`
--

LOCK TABLES `Doencas_cronicas` WRITE;
/*!40000 ALTER TABLE `Doencas_cronicas` DISABLE KEYS */;
INSERT INTO `Doencas_cronicas` VALUES ('E11','Diabetes Tipo 2'),('E78','Hiperlipidemia'),('I10','Hipertensão'),('J45','Asma'),('N18','Doença Renal Crônica');
/*!40000 ALTER TABLE `Doencas_cronicas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Especialidade`
--

LOCK TABLES `Especialidade` WRITE;
/*!40000 ALTER TABLE `Especialidade` DISABLE KEYS */;
INSERT INTO `Especialidade` VALUES ('Cardiologia','Cuidados com o coração'),('Dermatologia','Cuida da pele'),('Endocrinologia','Cuida das glândulas e hormônios'),('Ortopedia','Cuida dos ossos e articulações'),('Pediatria','Especialidade médica que cuida das crianças');
/*!40000 ALTER TABLE `Especialidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Exame`
--

LOCK TABLES `Exame` WRITE;
/*!40000 ALTER TABLE `Exame` DISABLE KEYS */;
INSERT INTO `Exame` VALUES (6,'67890123456','12345678901','2024-09-13','09:00:00','Colesterol dentro do normal',1),(7,'78901234567','23456789012','2024-09-13','10:00:00','Glicemia elevada',2),(8,'89012345678','34567890123','2024-09-13','11:00:00','Creatinina normal',3),(9,'90123456789','45678901234','2024-09-13','12:00:00','TGO/TGP normal',4),(10,'01234567890','56789012345','2024-09-13','13:00:00','Densitometria normal',5);
/*!40000 ALTER TABLE `Exame` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Funcionario`
--

LOCK TABLES `Funcionario` WRITE;
/*!40000 ALTER TABLE `Funcionario` DISABLE KEYS */;
INSERT INTO `Funcionario` VALUES ('11111111111',3000.00,'Seg a Sex','006','2020-01-10'),('12345678901',3500.00,'Seg a Sex','001','2015-01-10'),('22222222222',3200.00,'Seg a Sab','007','2020-02-15'),('23456789012',4200.00,'Seg a Sab','002','2016-05-20'),('33333333333',3100.00,'Seg a Sex','008','2020-03-20'),('34567890123',3800.00,'Seg a Sex','003','2017-09-15'),('44444444444',3300.00,'Seg a Sab','009','2020-04-25'),('45678901234',4500.00,'Seg a Sex','004','2018-03-10'),('55555555555',3400.00,'Seg a Sex','010','2020-05-30'),('56789012345',4000.00,'Seg a Sab','005','2019-07-25');
/*!40000 ALTER TABLE `Funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Medico`
--

LOCK TABLES `Medico` WRITE;
/*!40000 ALTER TABLE `Medico` DISABLE KEYS */;
INSERT INTO `Medico` VALUES ('12345678901','CRM12345'),('23456789012','CRM23456'),('34567890123','CRM34567'),('45678901234','CRM45678'),('56789012345','CRM56789');
/*!40000 ALTER TABLE `Medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Medico_tem_especialidade`
--

LOCK TABLES `Medico_tem_especialidade` WRITE;
/*!40000 ALTER TABLE `Medico_tem_especialidade` DISABLE KEYS */;
INSERT INTO `Medico_tem_especialidade` VALUES ('12345678901','Cardiologia'),('56789012345','Dermatologia'),('34567890123','Endocrinologia'),('45678901234','Ortopedia'),('23456789012','Pediatria');
/*!40000 ALTER TABLE `Medico_tem_especialidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Paciente`
--

LOCK TABLES `Paciente` WRITE;
/*!40000 ALTER TABLE `Paciente` DISABLE KEYS */;
INSERT INTO `Paciente` VALUES ('01234567890',63.20,1.65,'56789012345678'),('67890123456',68.50,1.70,'12345678901234'),('78901234567',75.00,1.85,'23456789012345'),('89012345678',55.30,1.60,'34567890123456'),('90123456789',82.40,1.78,'45678901234567');
/*!40000 ALTER TABLE `Paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Paciente_tem_alergia`
--

LOCK TABLES `Paciente_tem_alergia` WRITE;
/*!40000 ALTER TABLE `Paciente_tem_alergia` DISABLE KEYS */;
INSERT INTO `Paciente_tem_alergia` VALUES ('01234567890','Amendoim'),('89012345678','Lactose'),('90123456789','Pelo de gato'),('78901234567','Penicilina'),('67890123456','Pólen');
/*!40000 ALTER TABLE `Paciente_tem_alergia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Paciente_tem_doencas_cronicas`
--

LOCK TABLES `Paciente_tem_doencas_cronicas` WRITE;
/*!40000 ALTER TABLE `Paciente_tem_doencas_cronicas` DISABLE KEYS */;
INSERT INTO `Paciente_tem_doencas_cronicas` VALUES ('90123456789','E11'),('89012345678','E78'),('67890123456','I10'),('78901234567','J45'),('01234567890','N18');
/*!40000 ALTER TABLE `Paciente_tem_doencas_cronicas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Paciente_utiliza_remedio`
--

LOCK TABLES `Paciente_utiliza_remedio` WRITE;
/*!40000 ALTER TABLE `Paciente_utiliza_remedio` DISABLE KEYS */;
INSERT INTO `Paciente_utiliza_remedio` VALUES ('IUM12345','67890123456',500.00),('IUM23456','78901234567',200.00),('IUM34567','89012345678',100.00),('IUM45678','90123456789',500.00),('IUM56789','01234567890',250.00);
/*!40000 ALTER TABLE `Paciente_utiliza_remedio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Pessoa`
--

LOCK TABLES `Pessoa` WRITE;
/*!40000 ALTER TABLE `Pessoa` DISABLE KEYS */;
INSERT INTO `Pessoa` VALUES ('01234567890','Beatriz Gomes','31999999','Rua E, 666','beatriz@teste.com','O-','1983-11-05'),('11111111111','Secretaria 1','11911112222','Rua Nova 1','secretaria1@teste.com','O+','1985-01-01'),('12345678901','João Silva','11999998888','Rua X, 123','joao@teste.com','O+','1980-05-15'),('22222222222','Secretaria 2','11922223333','Rua Nova 2','secretaria2@teste.com','A-','1986-02-02'),('23456789012','Maria Santos','21988887777','Avenida Y, 456','maria@teste.com','A-','1975-03-10'),('33333333333','Secretaria 3','11933334444','Rua Nova 3','secretaria3@teste.com','B+','1987-03-03'),('34567890123','Pedro Oliveira','31977776666','Rua Z, 789','pedro@teste.com','B+','1990-07-20'),('44444444444','Secretaria 4','11944445555','Rua Nova 4','secretaria4@teste.com','AB-','1988-04-04'),('45678901234','Ana Souza','41966665555','Avenida W, 101','ana@teste.com','AB-','1985-09-30'),('55555555555','Secretaria 5','11955556666','Rua Nova 5','secretaria5@teste.com','O-','1989-05-05'),('56789012345','Lucas Pereira','51955554444','Rua V, 1213','lucas@teste.com','O-','1995-11-25'),('67890123456','Carla Mendes','21933332222','Rua A, 222','carla@teste.com','B+','1992-04-12'),('78901234567','Paulo Ferreira','31922221111','Avenida B, 333','paulo@teste.com','A+','1988-12-08'),('89012345678','Fernanda Lima','41911110000','Rua C, 444','fernanda@teste.com','O+','1999-02-21'),('90123456789','Renato Alves','51900009999','Avenida D, 555','renato@teste.com','AB+','1978-07-19');
/*!40000 ALTER TABLE `Pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Plano_de_saude`
--

LOCK TABLES `Plano_de_saude` WRITE;
/*!40000 ALTER TABLE `Plano_de_saude` DISABLE KEYS */;
INSERT INTO `Plano_de_saude` VALUES ('12345678901234','Saúde Premium','contato@saudepremium.com.br','Rua A, 123'),('23456789012345','Bem Estar Saúde','atendimento@bemestar.com','Rua B, 456'),('34567890123456','Viva Mais','suporte@vivamais.com','Avenida C, 789'),('45678901234567','Saúde para Todos','info@saudetodos.com','Avenida D, 1011'),('56789012345678','Vida Plena Saúde','contato@vidaplena.com','Rua E, 1213');
/*!40000 ALTER TABLE `Plano_de_saude` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Procedimento`
--

LOCK TABLES `Procedimento` WRITE;
/*!40000 ALTER TABLE `Procedimento` DISABLE KEYS */;
INSERT INTO `Procedimento` VALUES (6,'67890123456','12345678901','2024-09-13','09:00:00','2024-09-20','09:30:00','11111111111',1),(7,'78901234567','23456789012','2024-09-13','10:00:00','2024-09-21','10:30:00','22222222222',2),(8,'89012345678','34567890123','2024-09-13','11:00:00','2024-09-22','11:30:00','33333333333',3),(9,'90123456789','45678901234','2024-09-13','12:00:00','2024-09-23','12:00:00','44444444444',4),(10,'01234567890','56789012345','2024-09-13','13:00:00','2024-09-24','13:00:00','55555555555',5);
/*!40000 ALTER TABLE `Procedimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Receita`
--

LOCK TABLES `Receita` WRITE;
/*!40000 ALTER TABLE `Receita` DISABLE KEYS */;
INSERT INTO `Receita` VALUES (6,'67890123456','12345678901','2024-09-13','09:00:00','2025-03-13','Tomar após as refeições','2024-09-13'),(7,'78901234567','23456789012','2024-09-13','10:00:00','2025-03-13','Tomar antes de dormir','2024-09-13'),(8,'89012345678','34567890123','2024-09-13','11:00:00','2025-03-13','Usar durante 7 dias','2024-09-13'),(9,'90123456789','45678901234','2024-09-13','12:00:00','2025-03-13','Tomar em jejum','2024-09-13'),(10,'01234567890','56789012345','2024-09-13','13:00:00','2025-03-13','Aplicar na pele 2 vezes ao dia','2024-09-13');
/*!40000 ALTER TABLE `Receita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Receita_contem_remedios`
--

LOCK TABLES `Receita_contem_remedios` WRITE;
/*!40000 ALTER TABLE `Receita_contem_remedios` DISABLE KEYS */;
INSERT INTO `Receita_contem_remedios` VALUES ('IUM12345',10,'01234567890','56789012345','2024-09-13','13:00:00',1.25),('IUM23456',9,'90123456789','45678901234','2024-09-13','12:00:00',1.25),('IUM34567',8,'89012345678','34567890123','2024-09-13','11:00:00',1.25),('IUM45678',7,'78901234567','23456789012','2024-09-13','10:00:00',1.25),('IUM56789',6,'67890123456','12345678901','2024-09-13','09:00:00',1.25);
/*!40000 ALTER TABLE `Receita_contem_remedios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Remedio`
--

LOCK TABLES `Remedio` WRITE;
/*!40000 ALTER TABLE `Remedio` DISABLE KEYS */;
INSERT INTO `Remedio` VALUES ('IUM12345','Paracetamol','500mg','MedPharma','http://bula.com/paracetamol'),('IUM23456','Ibuprofeno','200mg','BioPharma','http://bula.com/ibuprofeno'),('IUM34567','Omeprazol','20mg','PharmaPlus','http://bula.com/omeprazol'),('IUM45678','Metformina','850mg','HealthMed','http://bula.com/metformina'),('IUM56789','Losartana','50mg','GoodLab','http://bula.com/losartana');
/*!40000 ALTER TABLE `Remedio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Secretaria`
--

LOCK TABLES `Secretaria` WRITE;
/*!40000 ALTER TABLE `Secretaria` DISABLE KEYS */;
INSERT INTO `Secretaria` VALUES ('11111111111','1110'),('22222222222','2220'),('33333333333','3330'),('44444444444','4440'),('55555555555','5550');
/*!40000 ALTER TABLE `Secretaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Tipo_de_exame`
--

LOCK TABLES `Tipo_de_exame` WRITE;
/*!40000 ALTER TABLE `Tipo_de_exame` DISABLE KEYS */;
INSERT INTO `Tipo_de_exame` VALUES (1,'Exame para medir os níveis de colesterol no sangue','Colesterol Total'),(2,'Exame para detectar diabetes','Glicemia em Jejum'),(3,'Exame para medir a função renal','Creatinina'),(4,'Exame para avaliar a saúde do fígado','TGO/TGP'),(5,'Exame para avaliação óssea','Densitometria Óssea');
/*!40000 ALTER TABLE `Tipo_de_exame` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Tipo_de_procedimento`
--

LOCK TABLES `Tipo_de_procedimento` WRITE;
/*!40000 ALTER TABLE `Tipo_de_procedimento` DISABLE KEYS */;
INSERT INTO `Tipo_de_procedimento` VALUES (1,'Procedimento de retirada de amígdalas','Amigdalectomia'),(2,'Exame de imagem para avaliar o cérebro','Ressonância Magnética'),(3,'Cirurgia para retirada do apêndice','Apendicectomia'),(4,'Procedimento para colocar um marca-passo','Implante de Marca-passo'),(5,'Exame para avaliar as artérias do coração','Cateterismo Cardíaco');
/*!40000 ALTER TABLE `Tipo_de_procedimento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-18 22:13:29
