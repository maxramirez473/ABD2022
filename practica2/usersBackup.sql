-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: mysql
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary table structure for view `user`
--

DROP TABLE IF EXISTS `user`;
/*!50001 DROP VIEW IF EXISTS `user`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `user` (
  `Host` tinyint NOT NULL,
  `User` tinyint NOT NULL,
  `Password` tinyint NOT NULL,
  `Select_priv` tinyint NOT NULL,
  `Insert_priv` tinyint NOT NULL,
  `Update_priv` tinyint NOT NULL,
  `Delete_priv` tinyint NOT NULL,
  `Create_priv` tinyint NOT NULL,
  `Drop_priv` tinyint NOT NULL,
  `Reload_priv` tinyint NOT NULL,
  `Shutdown_priv` tinyint NOT NULL,
  `Process_priv` tinyint NOT NULL,
  `File_priv` tinyint NOT NULL,
  `Grant_priv` tinyint NOT NULL,
  `References_priv` tinyint NOT NULL,
  `Index_priv` tinyint NOT NULL,
  `Alter_priv` tinyint NOT NULL,
  `Show_db_priv` tinyint NOT NULL,
  `Super_priv` tinyint NOT NULL,
  `Create_tmp_table_priv` tinyint NOT NULL,
  `Lock_tables_priv` tinyint NOT NULL,
  `Execute_priv` tinyint NOT NULL,
  `Repl_slave_priv` tinyint NOT NULL,
  `Repl_client_priv` tinyint NOT NULL,
  `Create_view_priv` tinyint NOT NULL,
  `Show_view_priv` tinyint NOT NULL,
  `Create_routine_priv` tinyint NOT NULL,
  `Alter_routine_priv` tinyint NOT NULL,
  `Create_user_priv` tinyint NOT NULL,
  `Event_priv` tinyint NOT NULL,
  `Trigger_priv` tinyint NOT NULL,
  `Create_tablespace_priv` tinyint NOT NULL,
  `Delete_history_priv` tinyint NOT NULL,
  `ssl_type` tinyint NOT NULL,
  `ssl_cipher` tinyint NOT NULL,
  `x509_issuer` tinyint NOT NULL,
  `x509_subject` tinyint NOT NULL,
  `max_questions` tinyint NOT NULL,
  `max_updates` tinyint NOT NULL,
  `max_connections` tinyint NOT NULL,
  `max_user_connections` tinyint NOT NULL,
  `plugin` tinyint NOT NULL,
  `authentication_string` tinyint NOT NULL,
  `password_expired` tinyint NOT NULL,
  `is_role` tinyint NOT NULL,
  `default_role` tinyint NOT NULL,
  `max_statement_time` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `user`
--

/*!50001 DROP TABLE IF EXISTS `user`*/;
/*!50001 DROP VIEW IF EXISTS `user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user` AS select `global_priv`.`Host` AS `Host`,`global_priv`.`User` AS `User`,if(json_value(`global_priv`.`Priv`,'$.plugin') in ('mysql_native_password','mysql_old_password'),ifnull(json_value(`global_priv`.`Priv`,'$.authentication_string'),''),'') AS `Password`,if(json_value(`global_priv`.`Priv`,'$.access') & 1,'Y','N') AS `Select_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 2,'Y','N') AS `Insert_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 4,'Y','N') AS `Update_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 8,'Y','N') AS `Delete_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 16,'Y','N') AS `Create_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 32,'Y','N') AS `Drop_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 64,'Y','N') AS `Reload_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 128,'Y','N') AS `Shutdown_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 256,'Y','N') AS `Process_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 512,'Y','N') AS `File_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 1024,'Y','N') AS `Grant_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 2048,'Y','N') AS `References_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 4096,'Y','N') AS `Index_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 8192,'Y','N') AS `Alter_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 16384,'Y','N') AS `Show_db_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 32768,'Y','N') AS `Super_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 65536,'Y','N') AS `Create_tmp_table_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 131072,'Y','N') AS `Lock_tables_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 262144,'Y','N') AS `Execute_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 524288,'Y','N') AS `Repl_slave_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 1048576,'Y','N') AS `Repl_client_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 2097152,'Y','N') AS `Create_view_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 4194304,'Y','N') AS `Show_view_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 8388608,'Y','N') AS `Create_routine_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 16777216,'Y','N') AS `Alter_routine_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 33554432,'Y','N') AS `Create_user_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 67108864,'Y','N') AS `Event_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 134217728,'Y','N') AS `Trigger_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 268435456,'Y','N') AS `Create_tablespace_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 536870912,'Y','N') AS `Delete_history_priv`,elt(ifnull(json_value(`global_priv`.`Priv`,'$.ssl_type'),0) + 1,'','ANY','X509','SPECIFIED') AS `ssl_type`,ifnull(json_value(`global_priv`.`Priv`,'$.ssl_cipher'),'') AS `ssl_cipher`,ifnull(json_value(`global_priv`.`Priv`,'$.x509_issuer'),'') AS `x509_issuer`,ifnull(json_value(`global_priv`.`Priv`,'$.x509_subject'),'') AS `x509_subject`,cast(ifnull(json_value(`global_priv`.`Priv`,'$.max_questions'),0) as unsigned) AS `max_questions`,cast(ifnull(json_value(`global_priv`.`Priv`,'$.max_updates'),0) as unsigned) AS `max_updates`,cast(ifnull(json_value(`global_priv`.`Priv`,'$.max_connections'),0) as unsigned) AS `max_connections`,cast(ifnull(json_value(`global_priv`.`Priv`,'$.max_user_connections'),0) as signed) AS `max_user_connections`,ifnull(json_value(`global_priv`.`Priv`,'$.plugin'),'') AS `plugin`,ifnull(json_value(`global_priv`.`Priv`,'$.authentication_string'),'') AS `authentication_string`,'N' AS `password_expired`,elt(ifnull(json_value(`global_priv`.`Priv`,'$.is_role'),0) + 1,'N','Y') AS `is_role`,ifnull(json_value(`global_priv`.`Priv`,'$.default_role'),'') AS `default_role`,cast(ifnull(json_value(`global_priv`.`Priv`,'$.max_statement_time'),0.0) as decimal(12,6)) AS `max_statement_time` from `global_priv` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-26 14:24:31
