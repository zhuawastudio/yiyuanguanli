/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - yiyuanguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yiyuanguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yiyuanguanli`;

/*Table structure for table `bingli` */

DROP TABLE IF EXISTS `bingli`;

CREATE TABLE `bingli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huanzhe_danhao_number` varchar(200) DEFAULT NULL COMMENT '住院号 Search111 ',
  `huanzhe_name` varchar(200) DEFAULT NULL COMMENT '患者姓名 Search111 ',
  `huanzhe_phone` varchar(200) DEFAULT NULL COMMENT '患者手机号 Search111 ',
  `huanzhe_id_number` varchar(200) DEFAULT NULL COMMENT '患者身份证号 Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `keshi_types` int(11) DEFAULT NULL COMMENT '科室 Search111',
  `zhusu_content` text COMMENT '主诉详情',
  `zhenduan_content` text COMMENT '诊断详情',
  `bingli_yesno_types` int(11) DEFAULT NULL COMMENT '病例状态 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '诊断时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='病例';

/*Data for the table `bingli` */

insert  into `bingli`(`id`,`huanzhe_danhao_number`,`huanzhe_name`,`huanzhe_phone`,`huanzhe_id_number`,`sex_types`,`keshi_types`,`zhusu_content`,`zhenduan_content`,`bingli_yesno_types`,`insert_time`,`create_time`) values (1,'1621395545491','患者1','17703786901','410224199610232001',1,1,'主诉详情\r\n','诊断详情\r\n',1,'2021-05-19 11:39:27','2021-05-19 11:39:27'),(2,'1621403908863','患者2','17703786902','410224199610232002',1,1,'主诉2的详情\r\n','诊断2的详情\r\n',1,'2021-05-19 13:59:20','2021-05-19 13:59:20'),(3,'1621404422861','患者3','17703786903','410224199610232003',1,2,'主诉3的详情\r\n','诊断3的详情\r\n',1,'2021-05-19 14:07:35','2021-05-19 14:07:35');

/*Table structure for table `chuangwei` */

DROP TABLE IF EXISTS `chuangwei`;

CREATE TABLE `chuangwei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `building` varchar(200) DEFAULT NULL COMMENT '楼栋 Search111 ',
  `unit` varchar(200) DEFAULT NULL COMMENT '单元 Search111 ',
  `room` varchar(200) DEFAULT NULL COMMENT '房间号 Search111 ',
  `chuangwei_yesno_types` int(11) DEFAULT NULL COMMENT '是否入住 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='床位';

/*Data for the table `chuangwei` */

insert  into `chuangwei`(`id`,`building`,`unit`,`room`,`chuangwei_yesno_types`,`create_time`) values (1,'1','1','101',1,'2021-05-19 11:40:30'),(2,'1','1','102',2,'2021-05-19 13:59:43'),(3,'1','1','103',1,'2021-05-19 14:08:42');

/*Table structure for table `chuangwei_bingli` */

DROP TABLE IF EXISTS `chuangwei_bingli`;

CREATE TABLE `chuangwei_bingli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chuangwei_id` int(11) DEFAULT NULL COMMENT '床位',
  `bingli_id` int(11) DEFAULT NULL COMMENT '患者',
  `chuangwei_bingli_content` text COMMENT '备注',
  `chuangwei_bingli_yesno_types` int(11) DEFAULT NULL COMMENT '是否在住 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='患者住院房屋';

/*Data for the table `chuangwei_bingli` */

insert  into `chuangwei_bingli`(`id`,`chuangwei_id`,`bingli_id`,`chuangwei_bingli_content`,`chuangwei_bingli_yesno_types`,`create_time`) values (1,1,1,'',1,'2021-05-19 13:29:22'),(2,2,2,'',2,'2021-05-19 14:01:21');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-05-19 10:14:38'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-05-19 10:14:38'),(3,'keshi_types','科室类型名称',1,'科室类型1',NULL,'2021-05-19 10:14:38'),(4,'keshi_types','科室类型名称',2,'科室类型2',NULL,'2021-05-19 10:14:38'),(5,'chuangwei_yesno_types','是否入住',1,'未入住',NULL,'2021-05-19 10:14:38'),(6,'chuangwei_yesno_types','是否入住',2,'已入住',NULL,'2021-05-19 10:14:38'),(7,'bingli_yesno_types','病例状态',1,'使用中',NULL,'2021-05-19 10:14:38'),(8,'bingli_yesno_types','病例状态',2,'已出院',NULL,'2021-05-19 10:14:38'),(9,'chuangwei_bingli_yesno_types','是否在住',1,'不在住',NULL,'2021-05-19 10:14:38'),(10,'chuangwei_bingli_yesno_types','是否在住',2,'在住',NULL,'2021-05-19 10:14:38'),(11,'xiaofei_types','消费类型名称',1,'住院费',NULL,'2021-05-19 10:14:38'),(12,'xiaofei_types','消费类型名称',2,'检查费',NULL,'2021-05-19 10:14:38'),(13,'xiaofei_types','消费类型名称',3,'医疗费',NULL,'2021-05-19 10:14:38'),(14,'jiancha_types','检查类型名称',1,'脑部CT检查',NULL,'2021-05-19 10:14:38'),(15,'jiancha_types','检查类型名称',2,'胸部CT检查',NULL,'2021-05-19 10:14:38'),(16,'jiancha_types','检查类型名称',3,'腿部CT检查',NULL,'2021-05-19 10:14:38'),(17,'yizhu_types','医嘱类型名称',1,'用药医嘱',NULL,'2021-05-19 10:14:38'),(18,'yizhu_types','医嘱类型名称',2,'吃饭医嘱',NULL,'2021-05-19 10:14:38'),(19,'yizhu_types','医嘱类型名称',3,'检查医嘱',NULL,'2021-05-19 10:14:38'),(20,'keshi_types','科室类型名称',3,'科室类型3',NULL,'2021-05-19 14:06:28');

/*Table structure for table `hushi` */

DROP TABLE IF EXISTS `hushi`;

CREATE TABLE `hushi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `hushi_name` varchar(200) DEFAULT NULL COMMENT '护士姓名 Search111 ',
  `hushi_phone` varchar(200) DEFAULT NULL COMMENT '护士手机号 Search111 ',
  `hushi_id_number` varchar(200) DEFAULT NULL COMMENT '护士身份证号 Search111 ',
  `hushi_photo` varchar(200) DEFAULT NULL COMMENT '护士照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='护士';

/*Data for the table `hushi` */

insert  into `hushi`(`id`,`username`,`password`,`hushi_name`,`hushi_phone`,`hushi_id_number`,`hushi_photo`,`sex_types`,`create_time`) values (1,'a11','123456','张11','17703786911','410224199610232011','http://localhost:8080/yiyuanguanli/file/download?fileName=1621394837908.jpg',2,'2021-05-19 11:27:19'),(2,'a22','123456','张22','17703786922','410224199610232022','http://localhost:8080/yiyuanguanli/file/download?fileName=1621403891005.jpg',2,'2021-05-19 13:58:13');

/*Table structure for table `jiancha` */

DROP TABLE IF EXISTS `jiancha`;

CREATE TABLE `jiancha` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bingli_id` int(11) DEFAULT NULL COMMENT '患者',
  `jiancha_name` varchar(200) DEFAULT NULL COMMENT '检查名目 Search111 ',
  `jiancha_types` int(11) DEFAULT NULL COMMENT '检查类型 Search111',
  `jiancha_content` text COMMENT '检查结果',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '检查时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='检查';

/*Data for the table `jiancha` */

insert  into `jiancha`(`id`,`bingli_id`,`jiancha_name`,`jiancha_types`,`jiancha_content`,`insert_time`,`create_time`) values (1,1,'检查名目1',3,'检查结果1\r\n','2021-05-19 13:31:21','2021-05-19 13:31:21'),(2,2,'科目3',1,'检查结果3\r\n','2021-05-19 14:04:39','2021-05-19 14:04:39');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','uq35aqdf4lq3mtj1vod4tlxxfuqbt1lm','2021-05-19 11:17:52','2021-05-19 14:57:34'),(2,1,'a1','yisheng','医生','188jdp9qkk8j2dp18lbo1budgl4kjmg9','2021-05-19 14:06:35','2021-05-19 15:06:35'),(3,1,'a11','hushi','护士','epojft5f2jbv0rot6jpndwdg9vaxru0e','2021-05-19 14:08:09','2021-05-19 15:08:10');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-04-27 14:51:13');

/*Table structure for table `xiaofei` */

DROP TABLE IF EXISTS `xiaofei`;

CREATE TABLE `xiaofei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yufukuan_id` int(11) DEFAULT NULL COMMENT '预付款账户',
  `xiaofei_name` varchar(200) DEFAULT NULL COMMENT '消费名目 Search111 ',
  `xiaofei_types` int(11) DEFAULT NULL COMMENT '消费类型 Search111',
  `xiaofei_money` decimal(10,4) DEFAULT NULL COMMENT '消费金额',
  `xiaofei_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '消费时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='消费';

/*Data for the table `xiaofei` */

insert  into `xiaofei`(`id`,`yufukuan_id`,`xiaofei_name`,`xiaofei_types`,`xiaofei_money`,`xiaofei_content`,`insert_time`,`create_time`) values (1,1,'名目1',3,'1.0000','医疗费用\r\n','2021-05-19 13:51:04','2021-05-19 13:51:04'),(2,2,'消费名目3',3,'10.0000','无\r\n','2021-05-19 14:05:49','2021-05-19 14:05:49');

/*Table structure for table `yisheng` */

DROP TABLE IF EXISTS `yisheng`;

CREATE TABLE `yisheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yisheng_name` varchar(200) DEFAULT NULL COMMENT '医生姓名 Search111 ',
  `yisheng_phone` varchar(200) DEFAULT NULL COMMENT '医生手机号 Search111 ',
  `yisheng_id_number` varchar(200) DEFAULT NULL COMMENT '医生身份证号 Search111 ',
  `yisheng_photo` varchar(200) DEFAULT NULL COMMENT '医生照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='医生';

/*Data for the table `yisheng` */

insert  into `yisheng`(`id`,`username`,`password`,`yisheng_name`,`yisheng_phone`,`yisheng_id_number`,`yisheng_photo`,`sex_types`,`create_time`) values (1,'a1','123456','张1','17703786901','410224199610232001','http://localhost:8080/yiyuanguanli/file/download?fileName=1621394782340.jpg',2,'2021-05-19 11:26:23'),(2,'a2','123456','张2','17703786902','410224199610232002','http://localhost:8080/yiyuanguanli/file/download?fileName=1621394809110.jpg',1,'2021-05-19 11:26:51');

/*Table structure for table `yizhu` */

DROP TABLE IF EXISTS `yizhu`;

CREATE TABLE `yizhu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bingli_id` int(11) DEFAULT NULL COMMENT '患者',
  `yizhu_name` varchar(200) DEFAULT NULL COMMENT '医嘱名字 Search111 ',
  `yizhu_types` int(11) DEFAULT NULL COMMENT '医嘱类型 Search111',
  `yizhu_content` text COMMENT '医嘱详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='医嘱';

/*Data for the table `yizhu` */

insert  into `yizhu`(`id`,`bingli_id`,`yizhu_name`,`yizhu_types`,`yizhu_content`,`insert_time`,`create_time`) values (1,1,'医嘱1',3,'医嘱1的详情\r\n','2021-05-19 13:32:48','2021-05-19 13:32:48'),(2,1,'医嘱3',3,'医嘱3的详情\r\n','2021-05-19 14:04:57','2021-05-19 14:04:57');

/*Table structure for table `yufukuan` */

DROP TABLE IF EXISTS `yufukuan`;

CREATE TABLE `yufukuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bingli_id` int(11) DEFAULT NULL COMMENT '患者',
  `yufukuan_danhao_number` varchar(200) DEFAULT NULL COMMENT '预付款账户 Search111 ',
  `yufukuan_money` decimal(10,4) DEFAULT NULL COMMENT '预付款金额',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='预付款账户';

/*Data for the table `yufukuan` */

insert  into `yufukuan`(`id`,`bingli_id`,`yufukuan_danhao_number`,`yufukuan_money`,`insert_time`,`create_time`) values (1,1,'1621402580499','109.0000','2021-05-19 13:36:35','2021-05-19 13:36:35'),(2,2,'1621404303248','990.0000','2021-05-19 14:05:15','2021-05-19 14:05:15'),(3,3,'1621404609021','10.0000','2021-05-19 14:10:16','2021-05-19 14:10:16');

/*Table structure for table `yufukuan_in` */

DROP TABLE IF EXISTS `yufukuan_in`;

CREATE TABLE `yufukuan_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yufukuan_id` int(11) DEFAULT NULL COMMENT '预付款账户',
  `yufukuan_in_money` decimal(10,4) DEFAULT NULL COMMENT '缴费金额',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '缴费时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='预付款缴费';

/*Data for the table `yufukuan_in` */

insert  into `yufukuan_in`(`id`,`yufukuan_id`,`yufukuan_in_money`,`insert_time`,`create_time`) values (1,1,'10.0000','2021-05-19 13:44:48','2021-05-19 13:44:48'),(2,2,'1.0000','2021-05-19 14:05:28','2021-05-19 14:05:28');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
