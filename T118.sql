/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t118`;
CREATE DATABASE IF NOT EXISTS `t118` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t118`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboot05127/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboot05127/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboot05127/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `daoshi`;
CREATE TABLE IF NOT EXISTS `daoshi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='导师';

DELETE FROM `daoshi`;
INSERT INTO `daoshi` (`id`, `addtime`, `gonghao`, `mima`, `jiaoshixingming`, `xingbie`, `touxiang`, `youxiang`, `dianhua`) VALUES
	(21, '2021-05-11 02:26:22', '导师1', '123456', '教师姓名1', '男', 'http://localhost:8080/springboot05127/upload/daoshi_touxiang1.jpg', '773890001@qq.com', '13823888881'),
	(22, '2021-05-11 02:26:22', '导师2', '123456', '教师姓名2', '男', 'http://localhost:8080/springboot05127/upload/daoshi_touxiang2.jpg', '773890002@qq.com', '13823888882'),
	(23, '2021-05-11 02:26:22', '导师3', '123456', '教师姓名3', '男', 'http://localhost:8080/springboot05127/upload/daoshi_touxiang3.jpg', '773890003@qq.com', '13823888883'),
	(24, '2021-05-11 02:26:22', '导师4', '123456', '教师姓名4', '男', 'http://localhost:8080/springboot05127/upload/daoshi_touxiang4.jpg', '773890004@qq.com', '13823888884'),
	(25, '2021-05-11 02:26:22', '导师5', '123456', '教师姓名5', '男', 'http://localhost:8080/springboot05127/upload/daoshi_touxiang5.jpg', '773890005@qq.com', '13823888885'),
	(26, '2021-05-11 02:26:22', '导师6', '123456', '教师姓名6', '男', 'http://localhost:8080/springboot05127/upload/daoshi_touxiang6.jpg', '773890006@qq.com', '13823888886');

DROP TABLE IF EXISTS `daoshixinxi`;
CREATE TABLE IF NOT EXISTS `daoshixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `suojiaokemu` varchar(200) DEFAULT NULL COMMENT '所教科目',
  `renshu` int NOT NULL COMMENT '人数',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `gerenjianjie` longtext COMMENT '个人简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='导师信息';

DELETE FROM `daoshixinxi`;
INSERT INTO `daoshixinxi` (`id`, `addtime`, `gonghao`, `jiaoshixingming`, `xingbie`, `suojiaokemu`, `renshu`, `youxiang`, `dianhua`, `gerenjianjie`) VALUES
	(31, '2021-05-11 02:26:22', '工号1', '教师姓名1', '男', '所教科目1', 1, '邮箱1', '电话1', '个人简介1'),
	(32, '2021-05-11 02:26:22', '工号2', '教师姓名2', '男', '所教科目2', 2, '邮箱2', '电话2', '个人简介2'),
	(33, '2021-05-11 02:26:22', '工号3', '教师姓名3', '男', '所教科目3', 3, '邮箱3', '电话3', '个人简介3'),
	(34, '2021-05-11 02:26:22', '工号4', '教师姓名4', '男', '所教科目4', 4, '邮箱4', '电话4', '个人简介4'),
	(35, '2021-05-11 02:26:22', '工号5', '教师姓名5', '男', '所教科目5', 5, '邮箱5', '电话5', '个人简介5'),
	(36, '2021-05-11 02:26:22', '工号6', '教师姓名6', '男', '所教科目6', 6, '邮箱6', '电话6', '个人简介6');

DROP TABLE IF EXISTS `daoshixuanze`;
CREATE TABLE IF NOT EXISTS `daoshixuanze` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `renshu` int NOT NULL COMMENT '人数',
  `xuanzeshijian` datetime DEFAULT NULL COMMENT '选择时间',
  `xuanzeneirong` longtext COMMENT '选择内容',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='导师选择';

DELETE FROM `daoshixuanze`;
INSERT INTO `daoshixuanze` (`id`, `addtime`, `gonghao`, `jiaoshixingming`, `renshu`, `xuanzeshijian`, `xuanzeneirong`, `xuehao`, `xueshengxingming`, `sfsh`, `shhf`) VALUES
	(41, '2021-05-11 02:26:22', '工号1', '教师姓名1', 1, '2021-05-11 10:26:22', '选择内容1', '学号1', '学生姓名1', '是', ''),
	(42, '2021-05-11 02:26:22', '工号2', '教师姓名2', 1, '2021-05-11 10:26:22', '选择内容2', '学号2', '学生姓名2', '是', ''),
	(43, '2021-05-11 02:26:22', '工号3', '教师姓名3', 1, '2021-05-11 10:26:22', '选择内容3', '学号3', '学生姓名3', '是', ''),
	(44, '2021-05-11 02:26:22', '工号4', '教师姓名4', 1, '2021-05-11 10:26:22', '选择内容4', '学号4', '学生姓名4', '是', ''),
	(45, '2021-05-11 02:26:22', '工号5', '教师姓名5', 1, '2021-05-11 10:26:22', '选择内容5', '学号5', '学生姓名5', '是', ''),
	(46, '2021-05-11 02:26:22', '工号6', '教师姓名6', 1, '2021-05-11 10:26:22', '选择内容6', '学号6', '学生姓名6', '是', '');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', '2q2apogu9y1rru57rg2lchvt987hzqmh', '2021-05-11 02:27:30', '2024-04-06 08:59:13'),
	(2, 21, '1', 'daoshi', '导师', '56caskmgiobaksur774j0d9pkpjsatde', '2021-05-11 02:27:50', '2024-04-06 09:00:22'),
	(3, 11, '学员1', 'xueyuan', '学员', '7n2axbhm3gbov6073m8le26q1hlpuxi7', '2024-04-06 08:00:05', '2024-04-06 09:00:05');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-05-11 02:26:22');

DROP TABLE IF EXISTS `xiangmutijiao`;
CREATE TABLE IF NOT EXISTS `xiangmutijiao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmubianhao` varchar(200) DEFAULT NULL COMMENT '项目编号',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xiangmuwenjian` varchar(200) DEFAULT NULL COMMENT '项目文件',
  `xiangmuneirong` longtext COMMENT '项目内容',
  `tijiaoshijian` datetime DEFAULT NULL COMMENT '提交时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='项目提交';

DELETE FROM `xiangmutijiao`;
INSERT INTO `xiangmutijiao` (`id`, `addtime`, `xiangmubianhao`, `xiangmumingcheng`, `gonghao`, `jiaoshixingming`, `xiangmuwenjian`, `xiangmuneirong`, `tijiaoshijian`, `xuehao`, `xueshengxingming`) VALUES
	(61, '2021-05-11 02:26:22', '项目编号1', '项目名称1', '工号1', '教师姓名1', '', '项目内容1', '2021-05-11 10:26:22', '学号1', '学生姓名1'),
	(62, '2021-05-11 02:26:22', '项目编号2', '项目名称2', '工号2', '教师姓名2', '', '项目内容2', '2021-05-11 10:26:22', '学号2', '学生姓名2'),
	(63, '2021-05-11 02:26:22', '项目编号3', '项目名称3', '工号3', '教师姓名3', '', '项目内容3', '2021-05-11 10:26:22', '学号3', '学生姓名3'),
	(64, '2021-05-11 02:26:22', '项目编号4', '项目名称4', '工号4', '教师姓名4', '', '项目内容4', '2021-05-11 10:26:22', '学号4', '学生姓名4'),
	(65, '2021-05-11 02:26:22', '项目编号5', '项目名称5', '工号5', '教师姓名5', '', '项目内容5', '2021-05-11 10:26:22', '学号5', '学生姓名5'),
	(66, '2021-05-11 02:26:22', '项目编号6', '项目名称6', '工号6', '教师姓名6', '', '项目内容6', '2021-05-11 10:26:22', '学号6', '学生姓名6');

DROP TABLE IF EXISTS `xiangmuxinxi`;
CREATE TABLE IF NOT EXISTS `xiangmuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmubianhao` varchar(200) DEFAULT NULL COMMENT '项目编号',
  `xiangmumingcheng` varchar(200) NOT NULL COMMENT '项目名称',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xiangmuyaoqiu` longtext COMMENT '项目要求',
  `fujian` varchar(200) DEFAULT NULL COMMENT '附件',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xiangmubianhao` (`xiangmubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='项目信息';

DELETE FROM `xiangmuxinxi`;
INSERT INTO `xiangmuxinxi` (`id`, `addtime`, `xiangmubianhao`, `xiangmumingcheng`, `xuehao`, `xueshengxingming`, `xiangmuyaoqiu`, `fujian`, `fabushijian`, `gonghao`, `jiaoshixingming`) VALUES
	(51, '2021-05-11 02:26:22', '项目编号1', '项目名称1', '学号1', '学生姓名1', '项目要求1', '', '2021-05-11 10:26:22', '工号1', '教师姓名1'),
	(52, '2021-05-11 02:26:22', '项目编号2', '项目名称2', '学号2', '学生姓名2', '项目要求2', '', '2021-05-11 10:26:22', '工号2', '教师姓名2'),
	(53, '2021-05-11 02:26:22', '项目编号3', '项目名称3', '学号3', '学生姓名3', '项目要求3', '', '2021-05-11 10:26:22', '工号3', '教师姓名3'),
	(54, '2021-05-11 02:26:22', '项目编号4', '项目名称4', '学号4', '学生姓名4', '项目要求4', '', '2021-05-11 10:26:22', '工号4', '教师姓名4'),
	(55, '2021-05-11 02:26:22', '项目编号5', '项目名称5', '学号5', '学生姓名5', '项目要求5', '', '2021-05-11 10:26:22', '工号5', '教师姓名5'),
	(56, '2021-05-11 02:26:22', '项目编号6', '项目名称6', '学号6', '学生姓名6', '项目要求6', '', '2021-05-11 10:26:22', '工号6', '教师姓名6');

DROP TABLE IF EXISTS `xueyuan`;
CREATE TABLE IF NOT EXISTS `xueyuan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='学员';

DELETE FROM `xueyuan`;
INSERT INTO `xueyuan` (`id`, `addtime`, `xuehao`, `mima`, `xueshengxingming`, `xingbie`, `touxiang`, `shouji`, `youxiang`) VALUES
	(11, '2021-05-11 02:26:22', '学员1', '123456', '学生姓名1', '男', 'http://localhost:8080/springboot05127/upload/xueyuan_touxiang1.jpg', '13823888881', '773890001@qq.com'),
	(12, '2021-05-11 02:26:22', '学员2', '123456', '学生姓名2', '男', 'http://localhost:8080/springboot05127/upload/xueyuan_touxiang2.jpg', '13823888882', '773890002@qq.com'),
	(13, '2021-05-11 02:26:22', '学员3', '123456', '学生姓名3', '男', 'http://localhost:8080/springboot05127/upload/xueyuan_touxiang3.jpg', '13823888883', '773890003@qq.com'),
	(14, '2021-05-11 02:26:22', '学员4', '123456', '学生姓名4', '男', 'http://localhost:8080/springboot05127/upload/xueyuan_touxiang4.jpg', '13823888884', '773890004@qq.com'),
	(15, '2021-05-11 02:26:22', '学员5', '123456', '学生姓名5', '男', 'http://localhost:8080/springboot05127/upload/xueyuan_touxiang5.jpg', '13823888885', '773890005@qq.com'),
	(16, '2021-05-11 02:26:22', '学员6', '123456', '学生姓名6', '男', 'http://localhost:8080/springboot05127/upload/xueyuan_touxiang6.jpg', '13823888886', '773890006@qq.com');

DROP TABLE IF EXISTS `zhidaoxiangmu`;
CREATE TABLE IF NOT EXISTS `zhidaoxiangmu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmubianhao` varchar(200) DEFAULT NULL COMMENT '项目编号',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `cunzaiwenti` longtext COMMENT '存在问题',
  `xiangmudianping` longtext COMMENT '项目点评',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COMMENT='指导项目';

DELETE FROM `zhidaoxiangmu`;
INSERT INTO `zhidaoxiangmu` (`id`, `addtime`, `xiangmubianhao`, `xiangmumingcheng`, `xuehao`, `xueshengxingming`, `cunzaiwenti`, `xiangmudianping`, `fabushijian`, `gonghao`, `jiaoshixingming`) VALUES
	(71, '2021-05-11 02:26:22', '项目编号1', '项目名称1', '学号1', '学生姓名1', '存在问题1', '项目点评1', '2021-05-11 10:26:22', '工号1', '教师姓名1'),
	(72, '2021-05-11 02:26:22', '项目编号2', '项目名称2', '学号2', '学生姓名2', '存在问题2', '项目点评2', '2021-05-11 10:26:22', '工号2', '教师姓名2'),
	(73, '2021-05-11 02:26:22', '项目编号3', '项目名称3', '学号3', '学生姓名3', '存在问题3', '项目点评3', '2021-05-11 10:26:22', '工号3', '教师姓名3'),
	(74, '2021-05-11 02:26:22', '项目编号4', '项目名称4', '学号4', '学生姓名4', '存在问题4', '项目点评4', '2021-05-11 10:26:22', '工号4', '教师姓名4'),
	(75, '2021-05-11 02:26:22', '项目编号5', '项目名称5', '学号5', '学生姓名5', '存在问题5', '项目点评5', '2021-05-11 10:26:22', '工号5', '教师姓名5'),
	(76, '2021-05-11 02:26:22', '项目编号6', '项目名称6', '学号6', '学生姓名6', '存在问题6', '项目点评6', '2021-05-11 10:26:22', '工号6', '教师姓名6');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
