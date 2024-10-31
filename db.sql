/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jspm1d02b
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jspm1d02b` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jspm1d02b`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614430674508 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1614337625011,'2021-02-26 19:07:04',1614337294646,'北京市东城区天坛街道东半壁街中欣大厦','李东平','17703786969','否'),(1614337680840,'2021-02-26 19:08:00',1614337294646,'河南省安阳市内黄县亳城镇裴村','李二','17703789999','是'),(1614338567475,'2021-02-26 19:22:47',1614338210814,'河南省郑州市二七区解放路街道二七路17号','地址1','17708888888','是'),(1614430674507,'2021-02-27 20:57:53',1614430386281,'河南省郑州市二七区解放路街道西太康路131号华润万象城购物中心二期(建设中)','地址1','17789898989','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614431823863 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

insert  into `cart`(`id`,`addtime`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`) values (1614431823862,'2021-02-27 21:17:02','shangpinxinxi',1614430386281,1614428598384,'舍得老酒','http://localhost:8080/jspm1d02b/upload/1614428585971.jpg',2,900,879);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (7,'picture1','http://localhost:8080/jspm1d02b/upload/1614428892472.jpg'),(13,'picture2','http://localhost:8080/jspm1d02b/upload/1614431536934.jpg');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (81,'2021-02-26 22:39:58','新闻标题1','http://localhost:8080/jspm1d02b/upload/news_picture1.jpg','内容1'),(82,'2021-02-26 22:39:58','新闻标题2','http://localhost:8080/jspm1d02b/upload/news_picture2.jpg','内容2'),(83,'2021-02-26 22:39:58','新闻标题3','http://localhost:8080/jspm1d02b/upload/news_picture3.jpg','内容3'),(84,'2021-02-26 22:39:58','新闻标题4','http://localhost:8080/jspm1d02b/upload/news_picture4.jpg','内容4'),(85,'2021-02-26 22:39:58','新闻标题5','http://localhost:8080/jspm1d02b/upload/news_picture5.jpg','内容5'),(86,'2021-02-26 22:39:58','新闻标题6','http://localhost:8080/jspm1d02b/upload/news_picture6.jpg','内容6');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1614431791342 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1614430714198,'2021-02-27 20:58:33','202122720583360489180','shangpinxinxi',1614430386281,1614428546706,'贵州粮食酒','http://localhost:8080/jspm1d02b/upload/1614428532917.jpg',2,118,98,236,196,1,'已完成','河南省郑州市二七区解放路街道西太康路131号华润万象城购物中心二期(建设中)'),(1614430923855,'2021-02-27 21:02:03','2021227212318885278','shangpinxinxi',1614430386281,1614428449782,'泸州老窖','http://localhost:8080/jspm1d02b/upload/1614428427214.jpg',2,1000,900,2000,1800,1,'未支付','河南省郑州市二七区解放路街道西太康路131号华润万象城购物中心二期(建设中)'),(1614431615700,'2021-02-27 21:13:35','202122721133517306736','shangpinxinxi',1614430386281,1614428546706,'贵州粮食酒','http://localhost:8080/jspm1d02b/upload/1614428532917.jpg',2,118,98,236,196,1,'已完成','河南省郑州市二七区解放路街道西太康路131号华润万象城购物中心二期(建设中)'),(1614431791341,'2021-02-27 21:16:31','202122721163120208160','shangpinxinxi',1614430386281,1614428449782,'泸州老窖','http://localhost:8080/jspm1d02b/upload/1614428427214.jpg',4,1000,900,4000,3600,1,'未支付','河南省郑州市二七区解放路街道西太康路131号华润万象城购物中心二期(建设中)');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614338245544 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (21,'2021-02-26 22:39:58','商品分类1'),(22,'2021-02-26 22:39:58','商品分类2'),(23,'2021-02-26 22:39:58','商品分类3'),(24,'2021-02-26 22:39:58','商品分类4'),(25,'2021-02-26 22:39:58','商品分类5'),(26,'2021-02-26 22:39:58','商品分类6'),(1614338245543,'2021-02-26 19:17:25','商品分类87');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `xiangqing` longtext COMMENT '详情',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '原价',
  `discountprice` float DEFAULT NULL COMMENT '折扣价',
  `jifen` float DEFAULT NULL,
  `flag` int(11) DEFAULT NULL COMMENT '是否上架(1:上架,2:下架)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614431410275 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`shuliang`,`pinpai`,`guige`,`xiangqing`,`fengmian`,`clicktime`,`clicknum`,`price`,`discountprice`,`jifen`,`flag`) values (1614428449782,'2021-02-27 20:20:49','1614428069','泸州老窖','商品分类1','100','伊犁','大','泸州老窖酒  就是好\r\n','http://localhost:8080/jspm1d02b/upload/1614428427214.jpg','2021-02-27 21:30:54',5,1000,900,900,1),(1614428493791,'2021-02-27 20:21:32','1614428455','国窖就','商品分类1','100','国窖','种','萨达\r\n','http://localhost:8080/jspm1d02b/upload/1614428484017.jpg','2021-02-27 20:58:02',1,700,600,600,1),(1614428546706,'2021-02-27 20:22:25','1614428501','贵州粮食酒','商品分类3','900','sa','sada','sad\r\n','http://localhost:8080/jspm1d02b/upload/1614428532917.jpg','2021-02-27 21:13:35',4,118,98,98,1),(1614428598384,'2021-02-27 20:23:17','1614428557','舍得老酒','商品分类3','100','100','98','萨达\r\n','http://localhost:8080/jspm1d02b/upload/1614428585971.jpg','2021-02-27 21:17:01',1,900,879,888,1),(1614428647799,'2021-02-27 20:24:07','1614428605','五粮液','商品分类5','99','出产国外','大','撒旦\r\n','http://localhost:8080/jspm1d02b/upload/1614428638187.jpg',NULL,0,99,99,99,1),(1614428685545,'2021-02-27 20:24:44','1614428657','二锅头','商品分类2','99','牛栏山','小','撒大大\r\n','http://localhost:8080/jspm1d02b/upload/1614428676906.jpg','2021-02-27 21:29:59',3,600,500,500,1),(1614428737904,'2021-02-27 20:25:37','1614428688','白云边酒','商品分类1','999','白云边','10','白云边酒 就是好\r\n','http://localhost:8080/jspm1d02b/upload/1614428721512.jpg',NULL,0,666,555,555,2),(1614431410274,'2021-02-27 21:10:09','1614431373','茅台','商品分类5','90','国产茅塔','大','','http://localhost:8080/jspm1d02b/upload/1614431399169.jpg','2021-02-27 21:11:40',2,700,666,666,2);

/*Table structure for table `shouhou` */

DROP TABLE IF EXISTS `shouhou`;

CREATE TABLE `shouhou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `orderid` varchar(200) NOT NULL COMMENT '订单id',
  `suqiu` varchar(200) NOT NULL COMMENT '诉求内容',
  `suqiutime` timestamp NULL DEFAULT NULL COMMENT '诉求时间',
  `shouhoutype` int(11) NOT NULL COMMENT '售后类型 1:已处理  2 未处理',
  `chulitype` int(11) DEFAULT NULL COMMENT '处理结果  1:已解决  2:未解决',
  `chulicontent` varchar(200) DEFAULT NULL,
  `chulitime` timestamp NULL DEFAULT NULL COMMENT '处理时间',
  `addtime` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1365651638691164163 DEFAULT CHARSET=utf8 COMMENT='售后表';

/*Data for the table `shouhou` */

insert  into `shouhou`(`id`,`orderid`,`suqiu`,`suqiutime`,`shouhoutype`,`chulitype`,`chulicontent`,`chulitime`,`addtime`) values (1365647925540941825,'202122720583360489180','商品坏了','2021-02-27 21:00:13',1,2,'差评我要定了','2021-02-27 21:01:06','2021-02-27 21:00:13'),(1365651638691164162,'202122721133517306736','路上摔坏了','2021-02-27 21:14:58',1,2,'不陪了  这个差评要了  因为价值太大','2021-02-27 21:15:36','2021-02-27 21:14:58');

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
) ENGINE=InnoDB AUTO_INCREMENT=1614431844201 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1614328492680,'2021-02-26 16:34:51',1614257015238,1614303786176,'shangpinxinxi','牛奶','http://localhost:8080/jspm1d02b/upload/1614303745608.jpg'),(1614338704077,'2021-02-26 19:25:03',1614338210814,1614336854121,'shangpinxinxi','哈密瓜','http://localhost:8080/jspm1d02b/upload/1614336864370.jfif'),(1614430684273,'2021-02-27 20:58:03',1614430386281,1614428493791,'shangpinxinxi','国窖就','http://localhost:8080/jspm1d02b/upload/1614428484017.jpg'),(1614431844200,'2021-02-27 21:17:23',1614430386281,1614428685545,'shangpinxinxi','二锅头','http://localhost:8080/jspm1d02b/upload/1614428676906.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','cyfc8c4e667cn8kealaa2ibwzp4uo7kn','2021-01-25 10:11:10','2021-02-27 22:27:49'),(2,1614257015238,'a3','yonghu','用户','kspy8s5a7z4yqfsrbrtvw6swc1zzl9r5','2021-02-25 20:44:17','2021-02-26 18:51:19'),(3,1614337294646,'aa1','yonghu','用户','ue3jr8jx8t5m9nym4ci7whkr8sdhm6q3','2021-02-26 19:01:45','2021-02-26 20:01:45'),(4,1614338210814,'aa2','yonghu','用户','m3ll5gz74m32e35dm9whw7aj4h1qo4js','2021-02-26 19:20:14','2021-02-27 21:04:12'),(5,1614430386281,'a2','yonghu','用户','shhhp5p6r2da7eku4z59lenukmtzhnp8','2021-02-27 20:56:38','2021-02-27 21:56:39');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-01-08 22:39:58');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  `jifen` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614431342349 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`lianxidianhua`,`dianziyouxiang`,`money`,`jifen`) values (1614430386281,'2021-02-27 20:53:06','a2','a2','a2','男','13823888883','229992@qq.ccom',1804,402),(1614431342348,'2021-02-27 21:09:02','a4','a4','a4','男','a41','22850@qq.com',98,70);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
