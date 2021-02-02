/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.5.8-MariaDB-1:10.5.8+maria~focal : Database - adnc_maint_dev
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`adnc_maint_dev` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `adnc_maint_dev`;

/*Table structure for table `SysCfg` */

DROP TABLE IF EXISTS `SysCfg`;

CREATE TABLE `SysCfg` (
  `Id` bigint(20) NOT NULL DEFAULT 0,
  `CreateBy` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CreateTime` datetime(6) DEFAULT NULL,
  `ModifyBy` bigint(20) DEFAULT NULL COMMENT '最后更新人',
  `ModifyTime` datetime(6) DEFAULT NULL,
  `CfgDesc` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL,
  `CfgName` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL,
  `CfgValue` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统参数';

/*Data for the table `SysCfg` */

insert  into `SysCfg`(`Id`,`CreateBy`,`CreateTime`,`ModifyBy`,`ModifyTime`,`CfgDesc`,`CfgName`,`CfgValue`,`IsDeleted`) values 
(1606203371016,1600000000000,'2020-11-24 15:36:11.262574',NULL,NULL,'','appname','adnc',1),
(1606303844001,1600000000000,'2021-02-02 12:50:45.430948',1600000000000,'2021-02-02 12:50:45.430949','系统名称','app','adnc',0),
(1610294384001,1600000000000,'2021-01-10 23:59:44.212991',NULL,NULL,'1','66','kk',1),
(1610295036002,NULL,NULL,1600000000000,'2021-01-11 00:10:41.953874','111','1111','9999',1);

/*Table structure for table `SysDict` */

DROP TABLE IF EXISTS `SysDict`;

CREATE TABLE `SysDict` (
  `Id` bigint(20) NOT NULL DEFAULT 0,
  `CreateBy` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CreateTime` datetime(6) DEFAULT NULL,
  `ModifyBy` bigint(20) DEFAULT NULL COMMENT '最后更新人',
  `ModifyTime` datetime(6) DEFAULT NULL,
  `Name` varchar(16) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Num` varchar(16) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Pid` bigint(20) DEFAULT NULL,
  `Tips` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='字典';

/*Data for the table `SysDict` */

insert  into `SysDict`(`Id`,`CreateBy`,`CreateTime`,`ModifyBy`,`ModifyTime`,`Name`,`Num`,`Pid`,`Tips`,`IsDeleted`) values 
(1606304212002,1600000000000,'2020-11-25 19:36:52.130272',1600000000000,'2020-11-25 20:05:46.936175','性别','0',0,NULL,1),
(1606304212003,1600000000000,'2020-11-25 19:36:52.130269',NULL,NULL,'男','1',1606304212002,NULL,1),
(1606304212004,1600000000000,'2020-11-25 19:36:52.130272',NULL,NULL,'女','2',1606304212002,NULL,1),
(1610295069003,1600000000000,'2021-01-11 00:11:09.465005',NULL,NULL,'9999','0',0,NULL,1),
(1610295069004,1600000000000,'2021-01-11 00:11:09.465003',NULL,NULL,'8','8',1610295069003,NULL,1),
(1612241328001,1600000000000,'2021-02-02 12:50:24.887549',1600000000000,'2021-02-02 12:50:24.887549','性别','0',0,NULL,0),
(1612241328002,NULL,NULL,NULL,NULL,'男','1',1612241328001,NULL,1),
(1612241328003,NULL,NULL,NULL,NULL,'女','2',1612241328001,NULL,1),
(1612241346004,NULL,NULL,NULL,NULL,'性别','0',0,NULL,1),
(1612241346005,NULL,NULL,NULL,NULL,'男','1',1612241346004,NULL,1),
(1612241346006,NULL,NULL,NULL,NULL,'女','2',1612241346004,NULL,1),
(1612241389007,NULL,NULL,NULL,NULL,'男','1',1612241328001,NULL,1),
(1612241389008,NULL,NULL,NULL,NULL,'女','2',1612241328001,NULL,1),
(1612241423009,NULL,NULL,NULL,NULL,'男','1',1612241328001,NULL,0),
(1612241423010,NULL,NULL,NULL,NULL,'女','2',1612241328001,NULL,0);

/*Table structure for table `SysNotice` */

DROP TABLE IF EXISTS `SysNotice`;

CREATE TABLE `SysNotice` (
  `Id` bigint(20) NOT NULL DEFAULT 0,
  `CreateBy` bigint(20) DEFAULT NULL,
  `CreateTime` datetime(6) DEFAULT NULL,
  `ModifyBy` bigint(20) DEFAULT NULL,
  `ModifyTime` datetime(6) DEFAULT NULL,
  `Content` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Type` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='通知';

/*Data for the table `SysNotice` */

insert  into `SysNotice`(`Id`,`CreateBy`,`CreateTime`,`ModifyBy`,`ModifyTime`,`Content`,`Title`,`Type`) values 
(1,1,'2020-01-11 08:53:20.000000',1,'2019-01-08 23:30:58.000000','Adnc是一个轻量级的.Net Core微服务开发框架','新时代的.NET',10);


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
