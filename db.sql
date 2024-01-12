/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmk7t62
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmk7t62` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmk7t62`;

/*Table structure for table `baoxiuxinxi` */

DROP TABLE IF EXISTS `baoxiuxinxi`;

CREATE TABLE `baoxiuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shiyanshihao` varchar(200) DEFAULT NULL COMMENT '实验室号',
  `shiyanshimingcheng` varchar(200) DEFAULT NULL COMMENT '实验室名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `baoxiuneirong` longtext COMMENT '报修内容',
  `baoxiuriqi` date DEFAULT NULL COMMENT '报修日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614649578690 DEFAULT CHARSET=utf8 COMMENT='报修信息';

/*Data for the table `baoxiuxinxi` */

insert  into `baoxiuxinxi`(`id`,`addtime`,`shiyanshihao`,`shiyanshimingcheng`,`tupian`,`shebeimingcheng`,`baoxiuneirong`,`baoxiuriqi`,`yonghuming`,`xingming`,`sfsh`,`shhf`,`userid`) values (51,'2021-03-02 09:30:17','实验室号1','实验室名称1','http://localhost:8080/ssmk7t62/upload/baoxiuxinxi_tupian1.jpg','设备名称1','报修内容1','2021-03-02','用户名1','姓名1','是','',1),(52,'2021-03-02 09:30:17','实验室号2','实验室名称2','http://localhost:8080/ssmk7t62/upload/baoxiuxinxi_tupian2.jpg','设备名称2','报修内容2','2021-03-02','用户名2','姓名2','是','',2),(53,'2021-03-02 09:30:17','实验室号3','实验室名称3','http://localhost:8080/ssmk7t62/upload/baoxiuxinxi_tupian3.jpg','设备名称3','报修内容3','2021-03-02','用户名3','姓名3','是','',3),(54,'2021-03-02 09:30:17','实验室号4','实验室名称4','http://localhost:8080/ssmk7t62/upload/baoxiuxinxi_tupian4.jpg','设备名称4','报修内容4','2021-03-02','用户名4','姓名4','是','',4),(55,'2021-03-02 09:30:17','实验室号5','实验室名称5','http://localhost:8080/ssmk7t62/upload/baoxiuxinxi_tupian5.jpg','设备名称5','报修内容5','2021-03-02','用户名5','姓名5','是','',5),(56,'2021-03-02 09:30:17','实验室号6','实验室名称6','http://localhost:8080/ssmk7t62/upload/baoxiuxinxi_tupian6.jpg','设备名称6','报修内容6','2021-03-02','用户名6','姓名6','是','',6),(1614649578689,'2021-03-02 09:46:18','201','化学实验室','http://localhost:8080/ssmk7t62/upload/shiyanshi_tupian1.jpg','投影屏','投影仪坏了','2021-03-01','1','李铭','是','好的 会派人维修',1614649461165);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmk7t62/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmk7t62/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmk7t62/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussjingyanfenxiang` */

DROP TABLE IF EXISTS `discussjingyanfenxiang`;

CREATE TABLE `discussjingyanfenxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='经验分享评论表';

/*Data for the table `discussjingyanfenxiang` */

insert  into `discussjingyanfenxiang`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (111,'2021-03-02 09:30:17',1,1,'评论内容1','回复内容1'),(112,'2021-03-02 09:30:17',2,2,'评论内容2','回复内容2'),(113,'2021-03-02 09:30:17',3,3,'评论内容3','回复内容3'),(114,'2021-03-02 09:30:17',4,4,'评论内容4','回复内容4'),(115,'2021-03-02 09:30:17',5,5,'评论内容5','回复内容5'),(116,'2021-03-02 09:30:17',6,6,'评论内容6','回复内容6');

/*Table structure for table `jingyanfenxiang` */

DROP TABLE IF EXISTS `jingyanfenxiang`;

CREATE TABLE `jingyanfenxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `sunhuaiyuanyin` longtext COMMENT '损坏原因',
  `weixiufangfa` longtext COMMENT '维修方法',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='经验分享';

/*Data for the table `jingyanfenxiang` */

insert  into `jingyanfenxiang`(`id`,`addtime`,`biaoti`,`tupian`,`sunhuaiyuanyin`,`weixiufangfa`,`faburiqi`,`zhanghao`,`xingming`) values (41,'2021-03-02 09:30:17','投影仪经验分享','http://localhost:8080/ssmk7t62/upload/jingyanfenxiang_tupian1.jpg','哪里哪里 比较容易坏','怎么怎么这样维修','2021-03-02','001','刘倩'),(42,'2021-03-02 09:30:17','标题2','http://localhost:8080/ssmk7t62/upload/jingyanfenxiang_tupian2.jpg','损坏原因2','维修方法2','2021-03-02','账号2','姓名2'),(43,'2021-03-02 09:30:17','标题3','http://localhost:8080/ssmk7t62/upload/jingyanfenxiang_tupian3.jpg','损坏原因3','维修方法3','2021-03-02','账号3','姓名3'),(44,'2021-03-02 09:30:17','标题4','http://localhost:8080/ssmk7t62/upload/jingyanfenxiang_tupian4.jpg','损坏原因4','维修方法4','2021-03-02','账号4','姓名4'),(45,'2021-03-02 09:30:17','标题5','http://localhost:8080/ssmk7t62/upload/jingyanfenxiang_tupian5.jpg','损坏原因5','维修方法5','2021-03-02','账号5','姓名5'),(46,'2021-03-02 09:30:17','标题6','http://localhost:8080/ssmk7t62/upload/jingyanfenxiang_tupian6.jpg','损坏原因6','维修方法6','2021-03-02','账号6','姓名6');

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
) ENGINE=InnoDB AUTO_INCREMENT=1614650004888 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (101,'2021-03-02 09:30:17',1,'用户名1','留言内容1','回复内容1'),(102,'2021-03-02 09:30:17',2,'用户名2','留言内容2','回复内容2'),(103,'2021-03-02 09:30:17',3,'用户名3','留言内容3','回复内容3'),(104,'2021-03-02 09:30:17',4,'用户名4','留言内容4','回复内容4'),(105,'2021-03-02 09:30:17',5,'用户名5','留言内容5','回复内容5'),(106,'2021-03-02 09:30:17',6,'用户名6','留言内容6','回复内容6'),(1614649902321,'2021-03-02 09:51:41',21,'001','这里有什么问题也可以在这里进行留言反馈','好的 可以的'),(1614650004887,'2021-03-02 09:53:24',1614649461165,'1','21212','好的 可以的感谢你的反馈');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (91,'2021-03-02 09:30:17','公告信息','1212121221','http://localhost:8080/ssmk7t62/upload/news_picture1.jpg','<p><img src=\"http://localhost:8080/ssmk7t62/upload/1614649520275.jpg\"><img src=\"http://localhost:8080/ssmk7t62/upload/1614650294522.jpg\"></p><p>公告信息这里可以发布一些公告内容，比如维修好的情况等等一些公告都是可以的</p>'),(92,'2021-03-02 09:30:17','标题2','简介2','http://localhost:8080/ssmk7t62/upload/news_picture2.jpg','内容2'),(93,'2021-03-02 09:30:17','标题3','简介3','http://localhost:8080/ssmk7t62/upload/news_picture3.jpg','内容3'),(94,'2021-03-02 09:30:17','标题4','简介4','http://localhost:8080/ssmk7t62/upload/news_picture4.jpg','内容4'),(95,'2021-03-02 09:30:17','标题5','简介5','http://localhost:8080/ssmk7t62/upload/news_picture5.jpg','内容5'),(96,'2021-03-02 09:30:17','标题6','简介6','http://localhost:8080/ssmk7t62/upload/news_picture6.jpg','内容6');

/*Table structure for table `shiyanshi` */

DROP TABLE IF EXISTS `shiyanshi`;

CREATE TABLE `shiyanshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shiyanshihao` varchar(200) NOT NULL COMMENT '实验室号',
  `shiyanshimingcheng` varchar(200) NOT NULL COMMENT '实验室名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shiyanshixiangqing` longtext COMMENT '实验室详情',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `shiyongzhuangtai` varchar(200) DEFAULT NULL COMMENT '使用状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shiyanshihao` (`shiyanshihao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='实验室';

/*Data for the table `shiyanshi` */

insert  into `shiyanshi`(`id`,`addtime`,`shiyanshihao`,`shiyanshimingcheng`,`tupian`,`shiyanshixiangqing`,`shebeimingcheng`,`shiyongzhuangtai`) values (31,'2021-03-02 09:30:17','201','化学实验室','http://localhost:8080/ssmk7t62/upload/shiyanshi_tupian1.jpg','这里可以发布一些实验室详细信息，比如设备等等','投影屏','正常'),(32,'2021-03-02 09:30:17','实验室号2','实验室名称2','http://localhost:8080/ssmk7t62/upload/shiyanshi_tupian2.jpg','实验室详情2','设备名称2','正常'),(33,'2021-03-02 09:30:17','实验室号3','实验室名称3','http://localhost:8080/ssmk7t62/upload/shiyanshi_tupian3.jpg','实验室详情3','设备名称3','正常'),(34,'2021-03-02 09:30:17','实验室号4','实验室名称4','http://localhost:8080/ssmk7t62/upload/shiyanshi_tupian4.jpg','实验室详情4','设备名称4','正常'),(35,'2021-03-02 09:30:17','实验室号5','实验室名称5','http://localhost:8080/ssmk7t62/upload/shiyanshi_tupian5.jpg','实验室详情5','设备名称5','正常'),(36,'2021-03-02 09:30:17','实验室号6','实验室名称6','http://localhost:8080/ssmk7t62/upload/shiyanshi_tupian6.jpg','实验室详情6','设备名称6','正常');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','4zvb80blqu3oyyzklnganyous0zwbv23','2021-03-02 09:42:38','2021-03-02 10:54:06'),(2,1614649461165,'1','yonghu','用户','2qf87xj62lyy74upss8jfeqvtef8f3hs','2021-03-02 09:44:37','2021-03-02 10:53:14'),(3,21,'001','weixiuyuan','维修员','4pfc4dhknhk9zksdu8uua9ujptnhuopl','2021-03-02 09:46:54','2021-03-02 10:52:28'),(4,11,'001','yonghu','用户','420nx8likfbqkpdzept8h8cmm68t0opq','2021-03-02 09:52:52','2021-03-02 10:52:52');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-02 09:30:17');

/*Table structure for table `weixiubaogao` */

DROP TABLE IF EXISTS `weixiubaogao`;

CREATE TABLE `weixiubaogao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shiyanshihao` varchar(200) DEFAULT NULL COMMENT '实验室号',
  `shiyanshimingcheng` varchar(200) DEFAULT NULL COMMENT '实验室名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `sunhuaiyuanyin` longtext COMMENT '损坏原因',
  `weixiuqingkuang` longtext COMMENT '维修情况',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `shifouchuli` varchar(200) DEFAULT NULL COMMENT '是否处理',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614649839435 DEFAULT CHARSET=utf8 COMMENT='维修报告';

/*Data for the table `weixiubaogao` */

insert  into `weixiubaogao`(`id`,`addtime`,`shiyanshihao`,`shiyanshimingcheng`,`tupian`,`shebeimingcheng`,`sunhuaiyuanyin`,`weixiuqingkuang`,`riqi`,`shifouchuli`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`userid`) values (61,'2021-03-02 09:30:17','实验室号1','实验室名称1','http://localhost:8080/ssmk7t62/upload/weixiubaogao_tupian1.jpg','设备名称1','损坏原因1','维修情况1','2021-03-02','未修好','账号1','姓名1','是','',1),(62,'2021-03-02 09:30:17','实验室号2','实验室名称2','http://localhost:8080/ssmk7t62/upload/weixiubaogao_tupian2.jpg','设备名称2','损坏原因2','维修情况2','2021-03-02','未修好','账号2','姓名2','是','',2),(63,'2021-03-02 09:30:17','实验室号3','实验室名称3','http://localhost:8080/ssmk7t62/upload/weixiubaogao_tupian3.jpg','设备名称3','损坏原因3','维修情况3','2021-03-02','未修好','账号3','姓名3','是','',3),(64,'2021-03-02 09:30:17','实验室号4','实验室名称4','http://localhost:8080/ssmk7t62/upload/weixiubaogao_tupian4.jpg','设备名称4','损坏原因4','维修情况4','2021-03-02','未修好','账号4','姓名4','是','',4),(65,'2021-03-02 09:30:17','实验室号5','实验室名称5','http://localhost:8080/ssmk7t62/upload/weixiubaogao_tupian5.jpg','设备名称5','损坏原因5','维修情况5','2021-03-02','未修好','账号5','姓名5','是','',5),(66,'2021-03-02 09:30:17','实验室号6','实验室名称6','http://localhost:8080/ssmk7t62/upload/weixiubaogao_tupian6.jpg','设备名称6','损坏原因6','维修情况6','2021-03-02','未修好','账号6','姓名6','是','',6),(1614649716657,'2021-03-02 09:48:36','201','化学实验室','http://localhost:8080/ssmk7t62/upload/shiyanshi_tupian1.jpg','投影屏','1112','11，修不好，要别人看下','2021-03-01','未修好','001','李铭','是','好的 我会派人去维修',21),(1614649839434,'2021-03-02 09:50:39','201','化学实验室','http://localhost:8080/ssmk7t62/upload/shiyanshi_tupian1.jpg','投影屏','1212122','什么什么什么什么养修好了','2021-03-01','已修好','001','李铭','','',21);

/*Table structure for table `weixiujieguo` */

DROP TABLE IF EXISTS `weixiujieguo`;

CREATE TABLE `weixiujieguo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shiyanshihao` varchar(200) DEFAULT NULL COMMENT '实验室号',
  `shiyanshimingcheng` varchar(200) DEFAULT NULL COMMENT '实验室名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `weixiujieguo` varchar(200) DEFAULT NULL COMMENT '维修结果',
  `beizhu` longtext COMMENT '备注',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614650133658 DEFAULT CHARSET=utf8 COMMENT='维修结果';

/*Data for the table `weixiujieguo` */

insert  into `weixiujieguo`(`id`,`addtime`,`shiyanshihao`,`shiyanshimingcheng`,`tupian`,`shebeimingcheng`,`weixiujieguo`,`beizhu`,`riqi`,`yonghuming`,`userid`) values (81,'2021-03-02 09:30:17','实验室号1','实验室名称1','http://localhost:8080/ssmk7t62/upload/weixiujieguo_tupian1.jpg','设备名称1','修好','备注1','2021-03-02','用户名1',1),(82,'2021-03-02 09:30:17','实验室号2','实验室名称2','http://localhost:8080/ssmk7t62/upload/weixiujieguo_tupian2.jpg','设备名称2','修好','备注2','2021-03-02','用户名2',2),(83,'2021-03-02 09:30:17','实验室号3','实验室名称3','http://localhost:8080/ssmk7t62/upload/weixiujieguo_tupian3.jpg','设备名称3','修好','备注3','2021-03-02','用户名3',3),(84,'2021-03-02 09:30:17','实验室号4','实验室名称4','http://localhost:8080/ssmk7t62/upload/weixiujieguo_tupian4.jpg','设备名称4','修好','备注4','2021-03-02','用户名4',4),(85,'2021-03-02 09:30:17','实验室号5','实验室名称5','http://localhost:8080/ssmk7t62/upload/weixiujieguo_tupian5.jpg','设备名称5','修好','备注5','2021-03-02','用户名5',5),(86,'2021-03-02 09:30:17','实验室号6','实验室名称6','http://localhost:8080/ssmk7t62/upload/weixiujieguo_tupian6.jpg','设备名称6','修好','备注6','2021-03-02','用户名6',6),(1614649931763,'2021-03-02 09:52:11','201','化学实验室','http://localhost:8080/ssmk7t62/upload/shiyanshi_tupian1.jpg','投影屏','修好','好的 感谢你的保修已经修好','2021-03-01','1',1614649461165),(1614650133657,'2021-03-02 09:55:33','201','化学实验室','http://localhost:8080/ssmk7t62/upload/shiyanshi_tupian1.jpg','投影屏','修好','122122','2021-03-01','1',1614649461165);

/*Table structure for table `weixiuxinxi` */

DROP TABLE IF EXISTS `weixiuxinxi`;

CREATE TABLE `weixiuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `shiyanshimingcheng` varchar(200) DEFAULT NULL COMMENT '实验室名称',
  `shiyanshihao` varchar(200) DEFAULT NULL COMMENT '实验室号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `weixiuneirong` longtext COMMENT '维修内容',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614650218546 DEFAULT CHARSET=utf8 COMMENT='维修信息';

/*Data for the table `weixiuxinxi` */

insert  into `weixiuxinxi`(`id`,`addtime`,`mingcheng`,`shiyanshimingcheng`,`shiyanshihao`,`shebeimingcheng`,`zhanghao`,`xingming`,`tupian`,`weixiuneirong`,`riqi`,`userid`) values (71,'2021-03-02 09:30:17','名称1','实验室名称1','实验室号1','设备名称1','账号1','姓名1','http://localhost:8080/ssmk7t62/upload/weixiuxinxi_tupian1.jpg','维修内容1','2021-03-02',1),(72,'2021-03-02 09:30:17','名称2','实验室名称2','实验室号2','设备名称2','账号2','姓名2','http://localhost:8080/ssmk7t62/upload/weixiuxinxi_tupian2.jpg','维修内容2','2021-03-02',2),(73,'2021-03-02 09:30:17','名称3','实验室名称3','实验室号3','设备名称3','账号3','姓名3','http://localhost:8080/ssmk7t62/upload/weixiuxinxi_tupian3.jpg','维修内容3','2021-03-02',3),(74,'2021-03-02 09:30:17','名称4','实验室名称4','实验室号4','设备名称4','账号4','姓名4','http://localhost:8080/ssmk7t62/upload/weixiuxinxi_tupian4.jpg','维修内容4','2021-03-02',4),(75,'2021-03-02 09:30:17','名称5','实验室名称5','实验室号5','设备名称5','账号5','姓名5','http://localhost:8080/ssmk7t62/upload/weixiuxinxi_tupian5.jpg','维修内容5','2021-03-02',5),(76,'2021-03-02 09:30:17','名称6','实验室名称6','实验室号6','设备名称6','账号6','姓名6','http://localhost:8080/ssmk7t62/upload/weixiuxinxi_tupian6.jpg','维修内容6','2021-03-02',6),(1614649809925,'2021-03-02 09:50:09','上个人修不好你去修下','化学实验室','201','投影屏','001','李铭','http://localhost:8080/ssmk7t62/upload/shiyanshi_tupian1.jpg','是怎么怎么怎么样 已经修好','2021-03-01',21),(1614650218545,'2021-03-02 09:56:58','修哪里','化学实验室','201','投影屏','001','刘倩','http://localhost:8080/ssmk7t62/upload/shiyanshi_tupian1.jpg','发布维修内容','2021-03-01',21);

/*Table structure for table `weixiuyuan` */

DROP TABLE IF EXISTS `weixiuyuan`;

CREATE TABLE `weixiuyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='维修员';

/*Data for the table `weixiuyuan` */

insert  into `weixiuyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`dianhua`) values (21,'2021-03-02 09:30:17','001','001','刘倩','女','http://localhost:8080/ssmk7t62/upload/weixiuyuan_touxiang1.jpg','13823888881'),(22,'2021-03-02 09:30:17','维修员2','123456','姓名2','男','http://localhost:8080/ssmk7t62/upload/weixiuyuan_touxiang2.jpg','13823888882'),(23,'2021-03-02 09:30:17','维修员3','123456','姓名3','男','http://localhost:8080/ssmk7t62/upload/weixiuyuan_touxiang3.jpg','13823888883'),(24,'2021-03-02 09:30:17','维修员4','123456','姓名4','男','http://localhost:8080/ssmk7t62/upload/weixiuyuan_touxiang4.jpg','13823888884'),(25,'2021-03-02 09:30:17','维修员5','123456','姓名5','男','http://localhost:8080/ssmk7t62/upload/weixiuyuan_touxiang5.jpg','13823888885'),(26,'2021-03-02 09:30:17','维修员6','123456','姓名6','男','http://localhost:8080/ssmk7t62/upload/weixiuyuan_touxiang6.jpg','13823888886');

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
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1614649461166 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`) values (11,'2021-03-02 09:30:17','001','001','姓名1','男','http://localhost:8080/ssmk7t62/upload/yonghu_touxiang1.jpg','13823888881'),(12,'2021-03-02 09:30:17','用户2','123456','姓名2','男','http://localhost:8080/ssmk7t62/upload/yonghu_touxiang2.jpg','13823888882'),(13,'2021-03-02 09:30:17','用户3','123456','姓名3','男','http://localhost:8080/ssmk7t62/upload/yonghu_touxiang3.jpg','13823888883'),(14,'2021-03-02 09:30:17','用户4','123456','姓名4','男','http://localhost:8080/ssmk7t62/upload/yonghu_touxiang4.jpg','13823888884'),(15,'2021-03-02 09:30:17','用户5','123456','姓名5','男','http://localhost:8080/ssmk7t62/upload/yonghu_touxiang5.jpg','13823888885'),(16,'2021-03-02 09:30:17','用户6','123456','姓名6','男','http://localhost:8080/ssmk7t62/upload/yonghu_touxiang6.jpg','13823888886'),(1614649461165,'2021-03-02 09:44:21','1','1','李铭','男','http://localhost:8080/ssmk7t62/upload/1614649497611.png','15214121412');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
