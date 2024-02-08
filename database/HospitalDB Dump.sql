CREATE DATABASE  IF NOT EXISTS `hospitaldb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hospitaldb`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: hospitaldb
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `hospitals`
--

DROP TABLE IF EXISTS `hospitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospitals` (
  `hospital_id` int NOT NULL AUTO_INCREMENT,
  `hospital_name` varchar(255) NOT NULL,
  PRIMARY KEY (`hospital_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitals`
--

LOCK TABLES `hospitals` WRITE;
/*!40000 ALTER TABLE `hospitals` DISABLE KEYS */;
INSERT INTO `hospitals` VALUES (1,'Apollo Hospitals'),(2,'Jawaharlal Nehru Medical College and Hospital'),(3,'Indira Gandhi Institute of Medical Sciences (IGIMS)'),(4,'AIIMS - All India Institute Of Medical Science');
/*!40000 ALTER TABLE `hospitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `patient_id` int NOT NULL AUTO_INCREMENT,
  `patient_name` varchar(255) NOT NULL,
  `patient_address` varchar(255) NOT NULL,
  `patient_email` varchar(255) NOT NULL,
  `patient_phone` varchar(20) DEFAULT NULL,
  `patient_password` varchar(255) NOT NULL,
  `patient_photo` varchar(255) DEFAULT NULL,
  `psychiatrist_id` int NOT NULL,
  PRIMARY KEY (`patient_id`),
  KEY `psychiatrist_id` (`psychiatrist_id`),
  CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`psychiatrist_id`) REFERENCES `psychiatrists` (`psychiatrist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'Md Salim','Ranchi, Jharkhand','mdsalim@gmail.com','8873314455','Salim@123','c6aef0e4-0915-4a72-b8e3-46a8b2ca36bf.jpg',2),(2,'Rajesh Sharma','123 Park Street, Delhi','rajesh.sharma@gmail.com','9876543210','Pass@w0rd123',NULL,1),(3,'Anita Singh','456 Hill Road, Mumbai','anita.singh@gmail.com','9876543211','P@ssword456',NULL,2),(4,'Amit Patel','789 Lake Avenue, Kolkata','amit.patel@gmail.com','9876543212','P@ssw0rd789',NULL,3),(5,'Priya Gupta','321 Avenue Road, Bangalore','priya.gupta@gmail.com','9876543213','P@ssword123',NULL,4),(6,'Rakesh Kumar','654 Sky Lane, Hyderabad','rakesh.kumar@gmail.com','9876543214','Passw0rd@456',NULL,5),(7,'Neha Desai','987 Sunset Boulevard, Chennai','neha.desai@gmail.com','9876543215','P@ssword789',NULL,6),(8,'Rajeshwari Reddy','1234 Ocean Drive, Pune','rajeshwari.reddy@gmail.com','9876543216','P@ssword123',NULL,7),(9,'Vijay Sharma','567 River View, Jaipur','vijay.sharma@gmail.com','9876543217','P@ssword456',NULL,8),(10,'Sneha Patel','890 Garden Lane, Lucknow','sneha.patel@gmail.com','9876543218','Pass@w0rd789',NULL,9),(11,'Prakash Singh','234 Forest Avenue, Chandigarh','prakash.singh@gmail.com','9876543219','Passw0rd@123',NULL,10),(12,'Rajiv Gupta','567 Mountain View, Ahmedabad','rajiv.gupta@gmail.com','9876543220','P@ssword456',NULL,11),(13,'Anjali Verma','890 Spring Lane, Indore','anjali.verma@gmail.com','9876543221','P@ssw0rd789',NULL,12),(14,'Aryan Sharma','1234 Valley Road, Bhopal','aryan.sharma@gmail.com','9876543222','Pass@w0rd123',NULL,13),(15,'Pooja Singh','567 River Road, Nagpur','pooja.singh@gmail.com','9876543223','P@ssword456',NULL,14),(16,'Ravi Patel','890 Garden View, Kanpur','ravi.patel@gmail.com','9876543224','P@ssword789',NULL,15),(17,'Mukesh Kumar','123 Mountain Avenue, Surat','mukesh.kumar@gmail.com','9876543225','Pass@w0rd123',NULL,16),(18,'Nandini Desai','456 Park Lane, Varanasi','nandini.desai@gmail.com','9876543226','P@ssw0rd456',NULL,17),(19,'Manish Verma','789 Lake View, Shimla','manish.verma@gmail.com','9876543227','Pass@w0rd789',NULL,18),(20,'Kavita Singh','321 Forest Lane, Dehradun','kavita.singh@gmail.com','9876543228','P@ssword123',NULL,19),(21,'Ankit Patel','654 Hill Avenue, Gangtok','ankit.patel@gmail.com','9876543229','P@ssw0rd456',NULL,20),(22,'Rahul Sharma','987 Park Avenue, Jammu','rahul.sharma@gmail.com','9876543230','Passw0rd@789',NULL,21),(23,'Aarti Singh','234 River Lane, Agra','aarti.singh@gmail.com','9876543231','P@ssword123',NULL,22),(24,'Meena Patel','567 Lake Road, Amritsar','meena.patel@gmail.com','9876543232','P@ssw0rd456',NULL,23),(25,'Sachin Kumar','890 Sunset Street, Udaipur','sachin.kumar@gmail.com','9876543233','Passw0rd@789',NULL,24),(26,'Neeraj Sharma','123 Mountain View, Mizoram','neeraj.sharma@gmail.com','9876543234','P@ssword123',NULL,1),(27,'Monika Verma','456 Lake View, Nagaland','monika.verma@gmail.com','9876543235','P@ssw0rd456',NULL,2),(28,'Rajat Singh','789 River Lane, Kerala','rajat.singh@gmail.com','9876543236','Passw0rd@789',NULL,3),(29,'Swati Patel','321 Park Street, Tamil Nadu','swati.patel@gmail.com','9876543237','P@ssword123',NULL,4),(30,'Sunil Kumar','654 Avenue Road, Jharkhand','sunil.kumar@gmail.com','9876543238','P@ssw0rd456',NULL,5),(31,'Surbhi Sharma','987 Sunset Lane, Uttarakhand','surbhi.sharma@gmail.com','9876543239','Passw0rd@789',NULL,6),(32,'Rohit Verma','123 Garden View, Punjab','rohit.verma@gmail.com','9876543240','P@ssword123',NULL,7),(33,'Sakshi Singh','456 Hill Avenue, Gujarat','sakshi.singh@gmail.com','9876543241','P@ssw0rd456',NULL,8),(34,'Nikhil Patel','789 River Road, Madhya Pradesh','nikhil.patel@gmail.com','9876543242','Passw0rd@789',NULL,9),(35,'Monica Gupta','321 Lake Lane, Haryana','monica.gupta@gmail.com','9876543243','P@ssword123',NULL,10),(36,'Rajesh Kumar','654 Park Avenue, Telangana','rajesh.kumar@gmail.com','9876543244','P@ssw0rd456',NULL,11),(37,'Kiran Sharma','987 Avenue Lane, Arunachal Pradesh','kiran.sharma@gmail.com','9876543245','Passw0rd@789',NULL,12),(38,'Deepak Singh','123 Valley Road, Rajasthan','deepak.singh@gmail.com','9876543246','P@ssword123',NULL,13),(39,'Arun Patel','456 River View, Uttar Pradesh','arun.patel@gmail.com','9876543247','P@ssw0rd456',NULL,14),(40,'Kavita Verma','789 Lake Road, West Bengal','kavita.verma@gmail.com','9876543248','Passw0rd@789',NULL,15),(41,'Alok Kumar','321 Sunset Street, Odisha','alok.kumar@gmail.com','9876543249','P@ssword123',NULL,16),(42,'Anjali Sharma','654 Garden Lane, Maharashtra','anjali.sharma@gmail.com','9876543250','P@ssw0rd456',NULL,17),(43,'Ankit Singh','987 Hill Avenue, Bihar','ankit.singh@gmail.com','9876543251','Passw0rd@789',NULL,18),(44,'Rohini Patel','123 River Road, Karnataka','rohini.patel@gmail.com','9876543252','P@ssword123',NULL,19),(45,'Vishal Kumar','456 Park Street, Andhra Pradesh','vishal.kumar@gmail.com','9876543253','P@ssw0rd456',NULL,20),(46,'Rajni Sharma','789 Avenue Lane, Goa','rajni.sharma@gmail.com','9876543254','Passw0rd@789',NULL,21),(47,'Nidhi Singh','321 Mountain View, Chhattisgarh','nidhi.singh@gmail.com','9876543255','P@ssword123',NULL,22),(48,'Ashish Verma','654 Lake Lane, Punjab','ashish.verma@gmail.com','9876543256','P@ssw0rd456',NULL,23),(49,'Akanksha Patel','987 Park Road, Gujarat','akanksha.patel@gmail.com','9876543257','Passw0rd@789',NULL,24),(50,'Kunal Kumar','123 Sky Street, Maharashtra','kunal.kumar@gmail.com','9876543258','P@ssword123',NULL,1),(51,'Sunita Verma','456 Hill View, Bihar','sunita.verma@gmail.com','9876543259','P@ssw0rd456',NULL,2),(52,'Ramesh Singh','789 River Avenue, Karnataka','ramesh.singh@gmail.com','9876543260','Passw0rd@789',NULL,3),(53,'Anjali Kumari','321 Valley Road, Andhra Pradesh','anjali.kumari@gmail.com','9876543261','P@ssword123',NULL,4),(54,'Arjun Patel','654 Lake View, Goa','arjun.patel@gmail.com','9876543262','P@ssw0rd456',NULL,5),(55,'Monika Sharma','987 Park Lane, Chhattisgarh','monika.sharma@gmail.com','9876543263','Passw0rd@789',NULL,6),(56,'Nitin Kumar','123 River View, Odisha','nitin.kumar@gmail.com','9876543264','P@ssword123',NULL,7),(57,'Ritu Singh','456 Sunset Street, West Bengal','ritu.singh@gmail.com','9876543265','P@ssw0rd456',NULL,8),(58,'Alok Verma','789 Avenue Road, Uttar Pradesh','alok.verma@gmail.com','9876543266','Passw0rd@789',NULL,9),(59,'Kavita Singh','321 Lake Lane, Maharashtra','kavita.singh@gmail.com','9876543267','P@ssword123',NULL,10),(60,'Rajesh Sharma','123 Park Street, Delhi','rajesh.sharma@gmail.com','9876543210','Pass@w0rd123',NULL,1),(61,'Anita Singh','456 Hill Road, Mumbai','anita.singh@gmail.com','9876543211','P@ssword456',NULL,2),(62,'Amit Patel','789 Lake Avenue, Kolkata','amit.patel@gmail.com','9876543212','P@ssw0rd789',NULL,3),(63,'Priya Gupta','321 Avenue Road, Bangalore','priya.gupta@gmail.com','9876543213','P@ssword123',NULL,4),(64,'Rakesh Kumar','654 Sky Lane, Hyderabad','rakesh.kumar@gmail.com','9876543214','Passw0rd@456',NULL,5),(65,'Neha Desai','987 Sunset Boulevard, Chennai','neha.desai@gmail.com','9876543215','P@ssword789',NULL,6),(66,'Rajeshwari Reddy','1234 Ocean Drive, Pune','rajeshwari.reddy@gmail.com','9876543216','P@ssword123',NULL,7),(67,'Vijay Sharma','567 River View, Jaipur','vijay.sharma@gmail.com','9876543217','P@ssword456',NULL,8),(68,'Sneha Patel','890 Garden Lane, Lucknow','sneha.patel@gmail.com','9876543218','Pass@w0rd789',NULL,9),(69,'Prakash Singh','234 Forest Avenue, Chandigarh','prakash.singh@gmail.com','9876543219','Passw0rd@123',NULL,10),(70,'Rajiv Gupta','567 Mountain View, Ahmedabad','rajiv.gupta@gmail.com','9876543220','P@ssword456',NULL,11),(71,'Anjali Verma','890 Spring Lane, Indore','anjali.verma@gmail.com','9876543221','P@ssw0rd789',NULL,12),(72,'Aryan Sharma','1234 Valley Road, Bhopal','aryan.sharma@gmail.com','9876543222','Pass@w0rd123',NULL,13),(73,'Pooja Singh','567 River Road, Nagpur','pooja.singh@gmail.com','9876543223','P@ssword456',NULL,14),(74,'Ravi Patel','890 Garden View, Kanpur','ravi.patel@gmail.com','9876543224','P@ssword789',NULL,15),(75,'Mukesh Kumar','123 Mountain Avenue, Surat','mukesh.kumar@gmail.com','9876543225','Pass@w0rd123',NULL,16),(76,'Nandini Desai','456 Park Lane, Varanasi','nandini.desai@gmail.com','9876543226','P@ssw0rd456',NULL,17),(77,'Manish Verma','789 Lake View, Shimla','manish.verma@gmail.com','9876543227','Pass@w0rd789',NULL,18),(78,'Kavita Singh','321 Forest Lane, Dehradun','kavita.singh@gmail.com','9876543228','P@ssword123',NULL,19),(79,'Ankit Patel','654 Hill Avenue, Gangtok','ankit.patel@gmail.com','9876543229','P@ssw0rd456',NULL,20),(80,'Rahul Sharma','987 Park Avenue, Jammu','rahul.sharma@gmail.com','9876543230','Passw0rd@789',NULL,21),(81,'Aarti Singh','234 River Lane, Agra','aarti.singh@gmail.com','9876543231','P@ssword123',NULL,22),(82,'Meena Patel','567 Lake Road, Amritsar','meena.patel@gmail.com','9876543232','P@ssw0rd456',NULL,23),(83,'Sachin Kumar','890 Sunset Street, Udaipur','sachin.kumar@gmail.com','9876543233','Passw0rd@789',NULL,24),(84,'Neeraj Sharma','123 Mountain View, Mizoram','neeraj.sharma@gmail.com','9876543234','P@ssword123',NULL,1),(85,'Monika Verma','456 Lake View, Nagaland','monika.verma@gmail.com','9876543235','P@ssw0rd456',NULL,2),(86,'Rajat Singh','789 River Lane, Kerala','rajat.singh@gmail.com','9876543236','Passw0rd@789',NULL,3),(87,'Swati Patel','321 Park Street, Tamil Nadu','swati.patel@gmail.com','9876543237','P@ssword123',NULL,4),(88,'Sunil Kumar','654 Avenue Road, Jharkhand','sunil.kumar@gmail.com','9876543238','P@ssw0rd456',NULL,5),(89,'Surbhi Sharma','987 Sunset Lane, Uttarakhand','surbhi.sharma@gmail.com','9876543239','Passw0rd@789',NULL,6),(90,'Rohit Verma','123 Garden View, Punjab','rohit.verma@gmail.com','9876543240','P@ssword123',NULL,7),(91,'Sakshi Singh','456 Hill Avenue, Gujarat','sakshi.singh@gmail.com','9876543241','P@ssw0rd456',NULL,8),(92,'Nikhil Patel','789 River Road, Madhya Pradesh','nikhil.patel@gmail.com','9876543242','Passw0rd@789',NULL,9),(93,'Monica Gupta','321 Lake Lane, Haryana','monica.gupta@gmail.com','9876543243','P@ssword123',NULL,10),(94,'Rajesh Kumar','654 Park Avenue, Telangana','rajesh.kumar@gmail.com','9876543244','P@ssw0rd456',NULL,11),(95,'Kiran Sharma','987 Avenue Lane, Arunachal Pradesh','kiran.sharma@gmail.com','9876543245','Passw0rd@789',NULL,12),(96,'Deepak Singh','123 Valley Road, Rajasthan','deepak.singh@gmail.com','9876543246','P@ssword123',NULL,13),(97,'Arun Patel','456 River View, Uttar Pradesh','arun.patel@gmail.com','9876543247','P@ssw0rd456',NULL,14),(98,'Kavita Verma','789 Lake Road, West Bengal','kavita.verma@gmail.com','9876543248','Passw0rd@789',NULL,15),(99,'Alok Kumar','321 Sunset Street, Odisha','alok.kumar@gmail.com','9876543249','P@ssword123',NULL,16),(100,'Anjali Sharma','654 Garden Lane, Maharashtra','anjali.sharma@gmail.com','9876543250','P@ssw0rd456',NULL,17),(101,'Ankit Singh','987 Hill Avenue, Bihar','ankit.singh@gmail.com','9876543251','Passw0rd@789',NULL,18),(102,'Rohini Patel','123 River Road, Karnataka','rohini.patel@gmail.com','9876543252','P@ssword123',NULL,19),(103,'Vishal Kumar','456 Park Street, Andhra Pradesh','vishal.kumar@gmail.com','9876543253','P@ssw0rd456',NULL,20),(104,'Rajni Sharma','789 Avenue Lane, Goa','rajni.sharma@gmail.com','9876543254','Passw0rd@789',NULL,21),(105,'Nidhi Singh','321 Mountain View, Chhattisgarh','nidhi.singh@gmail.com','9876543255','P@ssword123',NULL,22),(106,'Ashish Verma','654 Lake Lane, Punjab','ashish.verma@gmail.com','9876543256','P@ssw0rd456',NULL,23),(107,'Akanksha Patel','987 Park Road, Gujarat','akanksha.patel@gmail.com','9876543257','Passw0rd@789',NULL,24),(108,'Kunal Kumar','123 Sky Street, Maharashtra','kunal.kumar@gmail.com','9876543258','P@ssword123',NULL,1),(109,'Sunita Verma','456 Hill View, Bihar','sunita.verma@gmail.com','9876543259','P@ssw0rd456',NULL,2),(110,'Ramesh Singh','789 River Avenue, Karnataka','ramesh.singh@gmail.com','9876543260','Passw0rd@789',NULL,3),(111,'Anjali Kumari','321 Valley Road, Andhra Pradesh','anjali.kumari@gmail.com','9876543261','P@ssword123',NULL,4),(112,'Arjun Patel','654 Lake View, Goa','arjun.patel@gmail.com','9876543262','P@ssw0rd456',NULL,5),(113,'Monika Sharma','987 Park Lane, Chhattisgarh','monika.sharma@gmail.com','9876543263','Passw0rd@789',NULL,6),(114,'Nitin Kumar','123 River View, Odisha','nitin.kumar@gmail.com','9876543264','P@ssword123',NULL,7),(115,'Ritu Singh','456 Sunset Street, West Bengal','ritu.singh@gmail.com','9876543265','P@ssw0rd456',NULL,8),(116,'Alok Verma','789 Avenue Road, Uttar Pradesh','alok.verma@gmail.com','9876543266','Passw0rd@789',NULL,9),(117,'Kavita Singh','321 Lake Lane, Maharashtra','kavita.singh@gmail.com','9876543267','P@ssword123',NULL,10);
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psychiatrists`
--

DROP TABLE IF EXISTS `psychiatrists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `psychiatrists` (
  `psychiatrist_id` int NOT NULL AUTO_INCREMENT,
  `psychiatrist_name` varchar(255) NOT NULL,
  `hospital_id` int NOT NULL,
  PRIMARY KEY (`psychiatrist_id`),
  KEY `hospital_id` (`hospital_id`),
  CONSTRAINT `psychiatrists_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals` (`hospital_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psychiatrists`
--

LOCK TABLES `psychiatrists` WRITE;
/*!40000 ALTER TABLE `psychiatrists` DISABLE KEYS */;
INSERT INTO `psychiatrists` VALUES (1,'Dr. Arjun Gupta',1),(2,'Dr. Priya Sharma',1),(3,'Dr. Rajesh Singh',1),(4,'Dr. Nandini Desai',1),(5,'Dr. Amit Kumar',1),(6,'Dr. Neha Patel',1),(7,'Dr. Manoj Verma',2),(8,'Dr. Ritu Singh',2),(9,'Dr. Kavita Gupta',2),(10,'Dr. Sanjay Kumar',2),(11,'Dr. Deepa Sharma',2),(12,'Dr. Rahul Singh',2),(13,'Dr. Vikram Reddy',3),(14,'Dr. Anjali Verma',3),(15,'Dr. Rakesh Kumar',3),(16,'Dr. Sneha Singh',3),(17,'Dr. Mohan Patel',3),(18,'Dr. Pooja Gupta',3),(19,'Dr. Rohit Sharma',4),(20,'Dr. Renuka Desai',4),(21,'Dr. Ankit Patel',4),(22,'Dr. Sunita Verma',4),(23,'Dr. Ajay Kumar',4),(24,'Dr. Shikha Gupta',4);
/*!40000 ALTER TABLE `psychiatrists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-09  0:24:50
