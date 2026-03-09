CREATE DATABASE  IF NOT EXISTS `airbnb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `airbnb`;
-- MySQL dump 10.13  Distrib 9.6.0, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: airbnb
-- ------------------------------------------------------
-- Server version	9.6.0

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '36a8e9fa-1629-11f1-918f-00ff1428af1d:1-10497';

--
-- Temporary view structure for view `vw_availability_distribution`
--

DROP TABLE IF EXISTS `vw_availability_distribution`;
/*!50001 DROP VIEW IF EXISTS `vw_availability_distribution`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_availability_distribution` AS SELECT 
 1 AS `availability_365`,
 1 AS `listings`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_avg_availability_room_type`
--

DROP TABLE IF EXISTS `vw_avg_availability_room_type`;
/*!50001 DROP VIEW IF EXISTS `vw_avg_availability_room_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_avg_availability_room_type` AS SELECT 
 1 AS `room_type`,
 1 AS `avg_availability`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_avg_price_region`
--

DROP TABLE IF EXISTS `vw_avg_price_region`;
/*!50001 DROP VIEW IF EXISTS `vw_avg_price_region`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_avg_price_region` AS SELECT 
 1 AS `neighbourhood_group`,
 1 AS `avg_price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_avg_price_room_type`
--

DROP TABLE IF EXISTS `vw_avg_price_room_type`;
/*!50001 DROP VIEW IF EXISTS `vw_avg_price_room_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_avg_price_room_type` AS SELECT 
 1 AS `room_type`,
 1 AS `avg_price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_cancellation_policy_distribution`
--

DROP TABLE IF EXISTS `vw_cancellation_policy_distribution`;
/*!50001 DROP VIEW IF EXISTS `vw_cancellation_policy_distribution`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_cancellation_policy_distribution` AS SELECT 
 1 AS `cancellation_policy`,
 1 AS `listings`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_cancellation_policy_region`
--

DROP TABLE IF EXISTS `vw_cancellation_policy_region`;
/*!50001 DROP VIEW IF EXISTS `vw_cancellation_policy_region`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_cancellation_policy_region` AS SELECT 
 1 AS `neighbourhood_group`,
 1 AS `cancellation_policy`,
 1 AS `listings`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_expensive_listings_rank`
--

DROP TABLE IF EXISTS `vw_expensive_listings_rank`;
/*!50001 DROP VIEW IF EXISTS `vw_expensive_listings_rank`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_expensive_listings_rank` AS SELECT 
 1 AS `id`,
 1 AS `neighbourhood_group`,
 1 AS `room_type`,
 1 AS `price`,
 1 AS `price_rank`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_high_availability_rank`
--

DROP TABLE IF EXISTS `vw_high_availability_rank`;
/*!50001 DROP VIEW IF EXISTS `vw_high_availability_rank`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_high_availability_rank` AS SELECT 
 1 AS `id`,
 1 AS `room_type`,
 1 AS `availability_365`,
 1 AS `availability_rank`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_host_listing_counts`
--

DROP TABLE IF EXISTS `vw_host_listing_counts`;
/*!50001 DROP VIEW IF EXISTS `vw_host_listing_counts`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_host_listing_counts` AS SELECT 
 1 AS `host_id`,
 1 AS `listings`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_host_performance`
--

DROP TABLE IF EXISTS `vw_host_performance`;
/*!50001 DROP VIEW IF EXISTS `vw_host_performance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_host_performance` AS SELECT 
 1 AS `host_id`,
 1 AS `total_host_listings`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_host_revenue`
--

DROP TABLE IF EXISTS `vw_host_revenue`;
/*!50001 DROP VIEW IF EXISTS `vw_host_revenue`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_host_revenue` AS SELECT 
 1 AS `host_id`,
 1 AS `total_revenue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_host_revenue_rank`
--

DROP TABLE IF EXISTS `vw_host_revenue_rank`;
/*!50001 DROP VIEW IF EXISTS `vw_host_revenue_rank`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_host_revenue_rank` AS SELECT 
 1 AS `host_id`,
 1 AS `revenue`,
 1 AS `revenue_rank`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_host_verification_distribution`
--

DROP TABLE IF EXISTS `vw_host_verification_distribution`;
/*!50001 DROP VIEW IF EXISTS `vw_host_verification_distribution`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_host_verification_distribution` AS SELECT 
 1 AS `host_identity_verified`,
 1 AS `hosts`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_instant_booking_distribution`
--

DROP TABLE IF EXISTS `vw_instant_booking_distribution`;
/*!50001 DROP VIEW IF EXISTS `vw_instant_booking_distribution`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_instant_booking_distribution` AS SELECT 
 1 AS `instant_bookable`,
 1 AS `listings`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_instant_booking_room_type`
--

DROP TABLE IF EXISTS `vw_instant_booking_room_type`;
/*!50001 DROP VIEW IF EXISTS `vw_instant_booking_room_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_instant_booking_room_type` AS SELECT 
 1 AS `room_type`,
 1 AS `instant_bookable`,
 1 AS `listings`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_listing_revenue_model`
--

DROP TABLE IF EXISTS `vw_listing_revenue_model`;
/*!50001 DROP VIEW IF EXISTS `vw_listing_revenue_model`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_listing_revenue_model` AS SELECT 
 1 AS `id`,
 1 AS `price`,
 1 AS `service_fee`,
 1 AS `estimated_revenue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_listings_by_region`
--

DROP TABLE IF EXISTS `vw_listings_by_region`;
/*!50001 DROP VIEW IF EXISTS `vw_listings_by_region`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_listings_by_region` AS SELECT 
 1 AS `neighbourhood_group`,
 1 AS `total_listings`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_neighbourhood_listing_rank`
--

DROP TABLE IF EXISTS `vw_neighbourhood_listing_rank`;
/*!50001 DROP VIEW IF EXISTS `vw_neighbourhood_listing_rank`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_neighbourhood_listing_rank` AS SELECT 
 1 AS `neighbourhood`,
 1 AS `listings`,
 1 AS `neighbourhood_rank`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_property_age_distribution`
--

DROP TABLE IF EXISTS `vw_property_age_distribution`;
/*!50001 DROP VIEW IF EXISTS `vw_property_age_distribution`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_property_age_distribution` AS SELECT 
 1 AS `construction_year`,
 1 AS `listings`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_region_market_share`
--

DROP TABLE IF EXISTS `vw_region_market_share`;
/*!50001 DROP VIEW IF EXISTS `vw_region_market_share`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_region_market_share` AS SELECT 
 1 AS `neighbourhood_group`,
 1 AS `market_share_percent`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'airbnb'
--

--
-- Final view structure for view `vw_availability_distribution`
--

/*!50001 DROP VIEW IF EXISTS `vw_availability_distribution`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_availability_distribution` AS select `airbnb`.`availability_365` AS `availability_365`,count(0) AS `listings` from `airbnb` group by `airbnb`.`availability_365` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_avg_availability_room_type`
--

/*!50001 DROP VIEW IF EXISTS `vw_avg_availability_room_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_avg_availability_room_type` AS select `airbnb`.`room_type` AS `room_type`,avg(`airbnb`.`availability_365`) AS `avg_availability` from `airbnb` group by `airbnb`.`room_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_avg_price_region`
--

/*!50001 DROP VIEW IF EXISTS `vw_avg_price_region`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_avg_price_region` AS select `airbnb`.`neighbourhood_group` AS `neighbourhood_group`,avg(`airbnb`.`price`) AS `avg_price` from `airbnb` group by `airbnb`.`neighbourhood_group` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_avg_price_room_type`
--

/*!50001 DROP VIEW IF EXISTS `vw_avg_price_room_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_avg_price_room_type` AS select `airbnb`.`room_type` AS `room_type`,avg(`airbnb`.`price`) AS `avg_price` from `airbnb` group by `airbnb`.`room_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_cancellation_policy_distribution`
--

/*!50001 DROP VIEW IF EXISTS `vw_cancellation_policy_distribution`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_cancellation_policy_distribution` AS select `airbnb`.`cancellation_policy` AS `cancellation_policy`,count(0) AS `listings` from `airbnb` group by `airbnb`.`cancellation_policy` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_cancellation_policy_region`
--

/*!50001 DROP VIEW IF EXISTS `vw_cancellation_policy_region`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_cancellation_policy_region` AS select `airbnb`.`neighbourhood_group` AS `neighbourhood_group`,`airbnb`.`cancellation_policy` AS `cancellation_policy`,count(0) AS `listings` from `airbnb` group by `airbnb`.`neighbourhood_group`,`airbnb`.`cancellation_policy` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_expensive_listings_rank`
--

/*!50001 DROP VIEW IF EXISTS `vw_expensive_listings_rank`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_expensive_listings_rank` AS select `airbnb`.`id` AS `id`,`airbnb`.`neighbourhood_group` AS `neighbourhood_group`,`airbnb`.`room_type` AS `room_type`,`airbnb`.`price` AS `price`,rank() OVER (ORDER BY `airbnb`.`price` desc )  AS `price_rank` from `airbnb` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_high_availability_rank`
--

/*!50001 DROP VIEW IF EXISTS `vw_high_availability_rank`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_high_availability_rank` AS select `airbnb`.`id` AS `id`,`airbnb`.`room_type` AS `room_type`,`airbnb`.`availability_365` AS `availability_365`,rank() OVER (ORDER BY `airbnb`.`availability_365` desc )  AS `availability_rank` from `airbnb` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_host_listing_counts`
--

/*!50001 DROP VIEW IF EXISTS `vw_host_listing_counts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_host_listing_counts` AS select `airbnb`.`host_id` AS `host_id`,count(0) AS `listings` from `airbnb` group by `airbnb`.`host_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_host_performance`
--

/*!50001 DROP VIEW IF EXISTS `vw_host_performance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_host_performance` AS select `airbnb`.`host_id` AS `host_id`,sum(`airbnb`.`calculated_host_listings_count`) AS `total_host_listings` from `airbnb` group by `airbnb`.`host_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_host_revenue`
--

/*!50001 DROP VIEW IF EXISTS `vw_host_revenue`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_host_revenue` AS select `airbnb`.`host_id` AS `host_id`,sum((`airbnb`.`price` + `airbnb`.`service_fee`)) AS `total_revenue` from `airbnb` group by `airbnb`.`host_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_host_revenue_rank`
--

/*!50001 DROP VIEW IF EXISTS `vw_host_revenue_rank`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_host_revenue_rank` AS select `airbnb`.`host_id` AS `host_id`,sum((`airbnb`.`price` + `airbnb`.`service_fee`)) AS `revenue`,rank() OVER (ORDER BY sum((`airbnb`.`price` + `airbnb`.`service_fee`)) desc )  AS `revenue_rank` from `airbnb` group by `airbnb`.`host_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_host_verification_distribution`
--

/*!50001 DROP VIEW IF EXISTS `vw_host_verification_distribution`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_host_verification_distribution` AS select `airbnb`.`host_identity_verified` AS `host_identity_verified`,count(0) AS `hosts` from `airbnb` group by `airbnb`.`host_identity_verified` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_instant_booking_distribution`
--

/*!50001 DROP VIEW IF EXISTS `vw_instant_booking_distribution`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_instant_booking_distribution` AS select `airbnb`.`instant_bookable` AS `instant_bookable`,count(0) AS `listings` from `airbnb` group by `airbnb`.`instant_bookable` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_instant_booking_room_type`
--

/*!50001 DROP VIEW IF EXISTS `vw_instant_booking_room_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_instant_booking_room_type` AS select `airbnb`.`room_type` AS `room_type`,`airbnb`.`instant_bookable` AS `instant_bookable`,count(0) AS `listings` from `airbnb` group by `airbnb`.`room_type`,`airbnb`.`instant_bookable` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_listing_revenue_model`
--

/*!50001 DROP VIEW IF EXISTS `vw_listing_revenue_model`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_listing_revenue_model` AS select `airbnb`.`id` AS `id`,`airbnb`.`price` AS `price`,`airbnb`.`service_fee` AS `service_fee`,(`airbnb`.`price` + `airbnb`.`service_fee`) AS `estimated_revenue` from `airbnb` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_listings_by_region`
--

/*!50001 DROP VIEW IF EXISTS `vw_listings_by_region`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_listings_by_region` AS select `airbnb`.`neighbourhood_group` AS `neighbourhood_group`,count(0) AS `total_listings` from `airbnb` group by `airbnb`.`neighbourhood_group` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_neighbourhood_listing_rank`
--

/*!50001 DROP VIEW IF EXISTS `vw_neighbourhood_listing_rank`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_neighbourhood_listing_rank` AS select `airbnb`.`neighbourhood` AS `neighbourhood`,count(0) AS `listings`,rank() OVER (ORDER BY count(0) desc )  AS `neighbourhood_rank` from `airbnb` group by `airbnb`.`neighbourhood` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_property_age_distribution`
--

/*!50001 DROP VIEW IF EXISTS `vw_property_age_distribution`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_property_age_distribution` AS select `airbnb`.`construction_year` AS `construction_year`,count(0) AS `listings` from `airbnb` group by `airbnb`.`construction_year` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_region_market_share`
--

/*!50001 DROP VIEW IF EXISTS `vw_region_market_share`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_region_market_share` AS select `airbnb`.`neighbourhood_group` AS `neighbourhood_group`,((count(0) * 100.0) / sum(count(0)) OVER () ) AS `market_share_percent` from `airbnb` group by `airbnb`.`neighbourhood_group` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-04 16:35:41
