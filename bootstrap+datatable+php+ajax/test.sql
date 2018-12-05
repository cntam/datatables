/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-01-03 16:47:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL COMMENT '姓名',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `age` int(3) DEFAULT '0' COMMENT '年龄',
  `sex` enum('女','男') DEFAULT '男' COMMENT '性别',
  `salary` int(11) DEFAULT NULL COMMENT '薪水',
  `address` varchar(50) DEFAULT NULL COMMENT '地址',
  `remark` varchar(300) DEFAULT NULL COMMENT '备注',
  `createtime` datetime DEFAULT NULL COMMENT '创建日期',
  `updatetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES ('1', 'Tiger Nixon', '123456', '192', '男', '170600', 'System Architect', '我的名字是Accountant', '2016-12-27 11:46:13', '2017-01-03 13:49:13');
INSERT INTO `person` VALUES ('2', 'Garrett Winters', '123456', '20', '女', '170500', 'Accountant', '我的名字是Garrett Winters', '2016-12-27 11:50:41', '2016-12-27 12:09:52');
INSERT INTO `person` VALUES ('3', 'Ashton Cox', '123465', '15', '男', '86000', 'Junior Technical Author', '我的名字是Ashton Cox', '2016-12-28 11:50:44', '2016-12-27 12:09:53');
INSERT INTO `person` VALUES ('4', 'Cedric Kelly', '123465', '16', '女', '433060', 'Senior Javascript Developer', '我的名字是Cedric Kelly', '2016-12-28 11:50:47', '2016-12-27 12:09:58');
INSERT INTO `person` VALUES ('5', 'Airi Satou', '123456', '17', '男', '162700', 'Accountant', '我的名字是Airi Satou', '2016-12-29 11:50:50', '2016-12-27 12:09:56');
INSERT INTO `person` VALUES ('6', 'Brielle Williamson', '123456', '17', '女', '372000', 'Integration Specialist', '我的名字是Brielle Williamson', '2016-12-30 11:50:52', '2016-12-27 12:10:00');
INSERT INTO `person` VALUES ('7', 'Herrod Chandler', '123456', '18', '男', '137500', 'Sales Assistant', '我的名字是Herrod Chandler', '2016-12-30 11:50:54', '2016-12-27 12:10:01');
INSERT INTO `person` VALUES ('8', 'Ashton Cox', '123456', '18', '女', '86000', 'Junior Technical Author', '我的名字是Ashton Cox', '2016-12-31 11:50:58', '2016-12-27 12:10:02');
INSERT INTO `person` VALUES ('9', 'Cedric Kelly', '123465', '19', '男', '433060', 'Senior Javascript Developer', '我的名字是Cedric Kelly', '2016-12-31 11:51:00', '2016-12-27 12:10:04');
INSERT INTO `person` VALUES ('10', 'Airi Satou', '123456', '20', '女', '162700', 'Accountant', '我的名字是Airi Satou', '2016-12-31 11:51:03', '2016-12-27 12:10:06');
INSERT INTO `person` VALUES ('11', 'Brielle Williamson', '123456', '21', '男', '372000', 'Integration Specialist', '我的名字是Brielle Williamson', '2016-12-31 11:51:05', '2016-12-27 12:10:07');
INSERT INTO `person` VALUES ('12', 'Herrod Chandler', '123456', '22', '女', '137500', 'Sales Assistant', '我的名字是Herrod Chandler', '2016-12-31 11:51:08', '2016-12-27 14:06:49');
INSERT INTO `person` VALUES ('13', 'Tiger Nixon', '123456', '19', '男', '320800', 'System Architect', '我的名字是Accountant', '2016-12-27 11:46:13', '2016-12-27 12:09:50');
INSERT INTO `person` VALUES ('14', 'Garrett Winters', '123456', '20', '女', '170500', 'Accountant', '我的名字是Garrett Winters', '2016-12-27 11:50:41', '2016-12-27 12:09:52');
INSERT INTO `person` VALUES ('15', 'Ashton Cox', '123465', '15', '男', '86000', 'Junior Technical Author', '我的名字是Ashton Cox', '2016-12-28 11:50:44', '2016-12-27 12:09:53');
INSERT INTO `person` VALUES ('16', 'Cedric Kelly', '123465', '16', '女', '433060', 'Senior Javascript Developer', '我的名字是Cedric Kelly', '2016-12-28 11:50:47', '2016-12-27 12:09:58');
INSERT INTO `person` VALUES ('17', 'Airi Satou', '123456', '17', '男', '162700', 'Accountant', '我的名字是Airi Satou', '2016-12-29 11:50:50', '2016-12-27 12:09:56');
INSERT INTO `person` VALUES ('18', 'Brielle Williamson', '123456', '17', '女', '372000', 'Integration Specialist', '我的名字是Brielle Williamson', '2016-12-30 11:50:52', '2016-12-27 12:10:00');
INSERT INTO `person` VALUES ('19', 'Herrod Chandler', '123456', '18', '男', '137500', 'Sales Assistant', '我的名字是Herrod Chandler', '2016-12-30 11:50:54', '2016-12-27 12:10:01');
INSERT INTO `person` VALUES ('20', 'Ashton Cox', '123456', '18', '女', '86000', 'Junior Technical Author', '我的名字是Ashton Cox', '2016-12-31 11:50:58', '2016-12-27 12:10:02');
INSERT INTO `person` VALUES ('21', 'Cedric Kelly', '123465', '19', '男', '433060', 'Senior Javascript Developer', '我的名字是Cedric Kelly', '2016-12-31 11:51:00', '2016-12-27 12:10:04');
INSERT INTO `person` VALUES ('22', 'Airi Satou', '123456', '20', '女', '162700', 'Accountant', '我的名字是Airi Satou', '2016-12-31 11:51:03', '2016-12-27 12:10:06');
INSERT INTO `person` VALUES ('23', 'Brielle Williamson', '123456', '21', '男', '372000', 'Integration Specialist', '我的名字是Brielle Williamson', '2016-12-31 11:51:05', '2016-12-27 12:10:07');
INSERT INTO `person` VALUES ('24', 'Herrod Chandler', '123456', '22', '女', '137500', 'Sales Assistant', '我的名字是Herrod Chandler', '2016-12-31 11:51:08', '2016-12-27 14:06:49');
