/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.26 : Database - ssmiw00f
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmiw00f` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmiw00f`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmiw00f/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmiw00f/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmiw00f/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='论坛表';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (71,'2021-01-04 19:55:28','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(72,'2021-01-04 19:55:28','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(73,'2021-01-04 19:55:28','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(74,'2021-01-04 19:55:28','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(75,'2021-01-04 19:55:28','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(76,'2021-01-04 19:55:28','帖子标题6','帖子内容6',6,6,'用户名6','开放');

/*Table structure for table `liujicihui` */

DROP TABLE IF EXISTS `liujicihui`;

CREATE TABLE `liujicihui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `danci` varchar(200) DEFAULT NULL COMMENT '单词',
  `dengji` varchar(200) DEFAULT NULL COMMENT '等级',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zimu` varchar(200) DEFAULT NULL COMMENT '字母',
  `yinbiao` varchar(200) DEFAULT NULL COMMENT '音标',
  `fanyi` longtext COMMENT '翻译',
  `tingli` varchar(200) DEFAULT NULL COMMENT '听力',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='六级词汇';

/*Data for the table `liujicihui` */

insert  into `liujicihui`(`id`,`addtime`,`danci`,`dengji`,`tupian`,`zimu`,`yinbiao`,`fanyi`,`tingli`,`faburiqi`) values (31,'2021-01-04 19:55:28','单词1','等级1','http://localhost:8080/ssmiw00f/upload/liujicihui_tupian1.jpg','字母1','音标1','翻译1','','2021-01-04'),(32,'2021-01-04 19:55:28','单词2','等级2','http://localhost:8080/ssmiw00f/upload/liujicihui_tupian2.jpg','字母2','音标2','翻译2','','2021-01-04'),(33,'2021-01-04 19:55:28','单词3','等级3','http://localhost:8080/ssmiw00f/upload/liujicihui_tupian3.jpg','字母3','音标3','翻译3','','2021-01-04'),(34,'2021-01-04 19:55:28','单词4','等级4','http://localhost:8080/ssmiw00f/upload/liujicihui_tupian4.jpg','字母4','音标4','翻译4','','2021-01-04'),(35,'2021-01-04 19:55:28','单词5','等级5','http://localhost:8080/ssmiw00f/upload/liujicihui_tupian5.jpg','字母5','音标5','翻译5','','2021-01-04'),(36,'2021-01-04 19:55:28','单词6','等级6','http://localhost:8080/ssmiw00f/upload/liujicihui_tupian6.jpg','字母6','音标6','翻译6','','2021-01-04');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (91,'2021-01-04 19:55:29',1,'用户名1','留言内容1','回复内容1'),(92,'2021-01-04 19:55:29',2,'用户名2','留言内容2','回复内容2'),(93,'2021-01-04 19:55:29',3,'用户名3','留言内容3','回复内容3'),(94,'2021-01-04 19:55:29',4,'用户名4','留言内容4','回复内容4'),(95,'2021-01-04 19:55:29',5,'用户名5','留言内容5','回复内容5'),(96,'2021-01-04 19:55:29',6,'用户名6','留言内容6','回复内容6');

/*Table structure for table `qiandaodaka` */

DROP TABLE IF EXISTS `qiandaodaka`;

CREATE TABLE `qiandaodaka` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `qiandaoriqi` datetime DEFAULT NULL COMMENT '签到日期',
  `xingqi` varchar(200) DEFAULT NULL COMMENT '星期',
  `beizhu` longtext COMMENT '备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='签到打卡';

/*Data for the table `qiandaodaka` */

insert  into `qiandaodaka`(`id`,`addtime`,`bianhao`,`qiandaoriqi`,`xingqi`,`beizhu`,`yonghuming`,`userid`) values (61,'2021-01-04 19:55:28','编号1','2021-01-04 19:55:28','星期一','备注1','用户名1',1),(62,'2021-01-04 19:55:28','编号2','2021-01-04 19:55:28','星期一','备注2','用户名2',2),(63,'2021-01-04 19:55:28','编号3','2021-01-04 19:55:28','星期一','备注3','用户名3',3),(64,'2021-01-04 19:55:28','编号4','2021-01-04 19:55:28','星期一','备注4','用户名4',4),(65,'2021-01-04 19:55:28','编号5','2021-01-04 19:55:28','星期一','备注5','用户名5',5),(66,'2021-01-04 19:55:28','编号6','2021-01-04 19:55:28','星期一','备注6','用户名6',6);

/*Table structure for table `sijicihui` */

DROP TABLE IF EXISTS `sijicihui`;

CREATE TABLE `sijicihui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `danci` varchar(200) DEFAULT NULL COMMENT '单词',
  `dengji` varchar(200) DEFAULT NULL COMMENT '等级',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zimu` varchar(200) DEFAULT NULL COMMENT '字母',
  `yinbiao` varchar(200) DEFAULT NULL COMMENT '音标',
  `fanyi` longtext COMMENT '翻译',
  `tingli` varchar(200) DEFAULT NULL COMMENT '听力',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='四级词汇';

/*Data for the table `sijicihui` */

insert  into `sijicihui`(`id`,`addtime`,`danci`,`dengji`,`tupian`,`zimu`,`yinbiao`,`fanyi`,`tingli`,`faburiqi`) values (21,'2021-01-04 19:55:28','单词1','等级1','http://localhost:8080/ssmiw00f/upload/sijicihui_tupian1.jpg','字母1','音标1','翻译1','','2021-01-04'),(22,'2021-01-04 19:55:28','单词2','等级2','http://localhost:8080/ssmiw00f/upload/sijicihui_tupian2.jpg','字母2','音标2','翻译2','','2021-01-04'),(23,'2021-01-04 19:55:28','单词3','等级3','http://localhost:8080/ssmiw00f/upload/sijicihui_tupian3.jpg','字母3','音标3','翻译3','','2021-01-04'),(24,'2021-01-04 19:55:28','单词4','等级4','http://localhost:8080/ssmiw00f/upload/sijicihui_tupian4.jpg','字母4','音标4','翻译4','','2021-01-04'),(25,'2021-01-04 19:55:28','单词5','等级5','http://localhost:8080/ssmiw00f/upload/sijicihui_tupian5.jpg','字母5','音标5','翻译5','','2021-01-04'),(26,'2021-01-04 19:55:28','单词6','等级6','http://localhost:8080/ssmiw00f/upload/sijicihui_tupian6.jpg','字母6','音标6','翻译6','','2021-01-04');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609761703516 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1609761703515,'2021-01-04 20:01:42',11,31,'liujicihui','单词1','http://localhost:8080/ssmiw00f/upload/liujicihui_tupian1.jpg');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','96f71a2kaptwr3y99209qr14oxncpsqq','2021-01-04 19:58:03','2021-01-04 20:58:03'),(2,11,'001','yonghu','用户','1bfh1xs34vv7193mlhd7ss8ugsinzq3g','2021-01-04 19:58:14','2021-01-04 20:58:14');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-01-04 19:55:29');

/*Table structure for table `xuexibiji` */

DROP TABLE IF EXISTS `xuexibiji`;

CREATE TABLE `xuexibiji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bijimingcheng` varchar(200) NOT NULL COMMENT '笔记名称',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `xuexijindu` longtext COMMENT '学习进度',
  `xuexixinde` longtext COMMENT '学习心得',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='学习笔记';

/*Data for the table `xuexibiji` */

insert  into `xuexibiji`(`id`,`addtime`,`bijimingcheng`,`riqi`,`xuexijindu`,`xuexixinde`,`yonghuming`,`xingming`,`userid`) values (51,'2021-01-04 19:55:28','笔记名称1','2021-01-04','学习进度1','学习心得1','用户名1','姓名1',1),(52,'2021-01-04 19:55:28','笔记名称2','2021-01-04','学习进度2','学习心得2','用户名2','姓名2',2),(53,'2021-01-04 19:55:28','笔记名称3','2021-01-04','学习进度3','学习心得3','用户名3','姓名3',3),(54,'2021-01-04 19:55:28','笔记名称4','2021-01-04','学习进度4','学习心得4','用户名4','姓名4',4),(55,'2021-01-04 19:55:28','笔记名称5','2021-01-04','学习进度5','学习心得5','用户名5','姓名5',5),(56,'2021-01-04 19:55:28','笔记名称6','2021-01-04','学习进度6','学习心得6','用户名6','姓名6',6);

/*Table structure for table `yicuoci` */

DROP TABLE IF EXISTS `yicuoci`;

CREATE TABLE `yicuoci` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yicuodanci` varchar(200) NOT NULL COMMENT '易错单词',
  `zimu` varchar(200) DEFAULT NULL COMMENT '字母',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `fayin` varchar(200) DEFAULT NULL COMMENT '发音',
  `beizhu` longtext COMMENT '备注',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='易错词';

/*Data for the table `yicuoci` */

insert  into `yicuoci`(`id`,`addtime`,`yicuodanci`,`zimu`,`tupian`,`fayin`,`beizhu`,`faburiqi`) values (41,'2021-01-04 19:55:28','易错单词1','字母1','http://localhost:8080/ssmiw00f/upload/yicuoci_tupian1.jpg','发音1','备注1','2021-01-04'),(42,'2021-01-04 19:55:28','易错单词2','字母2','http://localhost:8080/ssmiw00f/upload/yicuoci_tupian2.jpg','发音2','备注2','2021-01-04'),(43,'2021-01-04 19:55:28','易错单词3','字母3','http://localhost:8080/ssmiw00f/upload/yicuoci_tupian3.jpg','发音3','备注3','2021-01-04'),(44,'2021-01-04 19:55:28','易错单词4','字母4','http://localhost:8080/ssmiw00f/upload/yicuoci_tupian4.jpg','发音4','备注4','2021-01-04'),(45,'2021-01-04 19:55:28','易错单词5','字母5','http://localhost:8080/ssmiw00f/upload/yicuoci_tupian5.jpg','发音5','备注5','2021-01-04'),(46,'2021-01-04 19:55:28','易错单词6','字母6','http://localhost:8080/ssmiw00f/upload/yicuoci_tupian6.jpg','发音6','备注6','2021-01-04');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (11,'2021-01-04 19:55:28','001','001','姓名1','性别1','http://localhost:8080/ssmiw00f/upload/yonghu_touxiang1.jpg','440300199101010001','13823888881'),(12,'2021-01-04 19:55:28','用户2','123456','姓名2','性别2','http://localhost:8080/ssmiw00f/upload/yonghu_touxiang2.jpg','440300199202020002','13823888882'),(13,'2021-01-04 19:55:28','用户3','123456','姓名3','性别3','http://localhost:8080/ssmiw00f/upload/yonghu_touxiang3.jpg','440300199303030003','13823888883'),(14,'2021-01-04 19:55:28','用户4','123456','姓名4','性别4','http://localhost:8080/ssmiw00f/upload/yonghu_touxiang4.jpg','440300199404040004','13823888884'),(15,'2021-01-04 19:55:28','用户5','123456','姓名5','性别5','http://localhost:8080/ssmiw00f/upload/yonghu_touxiang5.jpg','440300199505050005','13823888885'),(16,'2021-01-04 19:55:28','用户6','123456','姓名6','性别6','http://localhost:8080/ssmiw00f/upload/yonghu_touxiang6.jpg','440300199606060006','13823888886');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
