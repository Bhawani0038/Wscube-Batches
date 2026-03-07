-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: product_db
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `p_id` text,
  `product_name` text,
  `category` text,
  `subcategory` text,
  `brand` text,
  `product_price` int DEFAULT NULL,
  `manufacturing_date` text,
  `expiry_date` text,
  `quantity_sold` int DEFAULT NULL,
  `order_date` text,
  `order_id` text,
  `warehouse_location` text,
  `discount_percent` int DEFAULT NULL,
  `unit_cost` int DEFAULT NULL,
  `profit_margin` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('P001','Amul Milk 1L','Dairy','Milk','Amul',60,'01-02-2026','10-02-2026',120,'03-02-2026','O1001','Delhi',5,45,25),('P002','Amul Butter 500g','Dairy','Butter','Amul',280,'15-01-2026','15-07-2026',85,'05-02-2026','O1002','Mumbai',8,210,25),('P003','Mother Dairy Curd 500g','Dairy','Curd','Mother Dairy',45,'02-02-2026','09-02-2026',150,'04-02-2026','O1003','Delhi',0,32,29),('P004','Britannia Bread','Bakery','Bread','Britannia',40,'01-02-2026','07-02-2026',200,'02-02-2026','O1004','Jaipur',5,28,30),('P005','Britannia Cake Roll','Bakery','Cakes','Britannia',35,'20-01-2026','20-04-2026',95,'06-02-2026','O1005','Jaipur',10,22,37),('P006','Good Day Biscuits','Snacks','Biscuits','Britannia',30,'25-01-2026','25-07-2026',180,'03-02-2026','O1006','Delhi',5,20,33),('P007','Oreo Biscuits','Snacks','Biscuits','Cadbury',45,'18-01-2026','18-07-2026',160,'04-02-2026','O1007','Mumbai',7,30,33),('P008','Lays Classic Chips','Snacks','Chips','Lays',20,'01-02-2026','01-06-2026',220,'05-02-2026','O1008','Delhi',0,12,40),('P009','Kurkure Masala Munch','Snacks','Chips','Kurkure',20,'01-02-2026','01-06-2026',210,'06-02-2026','O1009','Mumbai',0,11,45),('P010','Pepsi 500ml','Beverages','Soft Drink','Pepsi',40,'10-01-2026','10-07-2026',300,'03-02-2026','O1010','Delhi',10,25,37),('P011','Coca Cola 500ml','Beverages','Soft Drink','Coca Cola',40,'12-01-2026','12-07-2026',280,'05-02-2026','O1011','Jaipur',10,26,35),('P012','Real Orange Juice','Beverages','Juice','Real',120,'05-01-2026','05-05-2026',90,'04-02-2026','O1012','Mumbai',5,85,29),('P013','Tata Salt','Grocery','Spices','Tata',25,'10-12-2025','10-12-2027',170,'06-02-2026','O1013','Delhi',0,15,40),('P014','Aashirvaad Atta 5kg','Grocery','Flour','Aashirvaad',260,'01-01-2026','31-12-2026',75,'02-02-2026','O1014','Jaipur',5,210,19),('P015','Fortune Sunflower Oil 1L','Grocery','Edible Oil','Fortune',180,'05-01-2026','05-10-2026',110,'03-02-2026','O1015','Mumbai',8,140,22),('P016','Maggi Noodles 70g','Instant Food','Noodles','Nestle',14,'15-01-2026','15-09-2026',350,'05-02-2026','O1016','Delhi',0,9,35),('P017','Yippee Noodles 70g','Instant Food','Noodles','ITC',14,'20-01-2026','20-09-2026',320,'06-02-2026','O1017','Jaipur',0,9,35),('P018','Kissan Tomato Ketchup','Condiments','Sauces','Kissan',110,'01-01-2026','01-01-2027',60,'04-02-2026','O1018','Mumbai',6,80,27),('P019','Amul Cheese Slices','Dairy','Cheese','Amul',135,'10-01-2026','10-06-2026',70,'05-02-2026','O1019','Delhi',5,100,26),('P020','Harvest Gold Bread','Bakery','Bread','Harvest Gold',38,'01-02-2026','07-02-2026',190,'02-02-2026','O1020','Jaipur',5,27,29);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-07 16:32:22
