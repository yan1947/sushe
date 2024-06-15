/*
Navicat MySQL Data Transfer

Designer              ：Joyrocky
Source Server         : 本地
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : dormitory

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2024-05-06 18:49:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `d_admin`
-- ----------------------------
DROP TABLE IF EXISTS `d_admin`;
CREATE TABLE `d_admin` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_username` varchar(20) NOT NULL,
  `a_password` varchar(50) NOT NULL,
  `a_name` varchar(20) DEFAULT NULL,
  `a_phone` bigint(20) DEFAULT NULL,
  `a_power` varchar(20) DEFAULT NULL,
  `a_describe` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of d_admin
-- ----------------------------
INSERT INTO `d_admin` VALUES ('1', 'zxk', '696E25FDACEE8106BC5232AFC69155D6', '周荀凯', '138138138', '1', '高');
INSERT INTO `d_admin` VALUES ('2', 'zj', '696E25FDACEE8106BC5232AFC69155D6', '张杰', '138138138', '2', '低');
INSERT INTO `d_admin` VALUES ('3', 'zh', '696E25FDACEE8106BC5232AFC69155D6', '张欢', '138138138', '1', '高');
INSERT INTO `d_admin` VALUES ('4', 'zk', '696E25FDACEE8106BC5232AFC69155D6', '赵凯', '138138138', '2', '低');
INSERT INTO `d_admin` VALUES ('5', 'ywj', '696E25FDACEE8106BC5232AFC69155D6', '杨雯雯', '138138138', '1', '高');
INSERT INTO `d_admin` VALUES ('6', 'wh', '696E25FDACEE8106BC5232AFC69155D6', '王皓', '138138138', '1', '高');
INSERT INTO `d_admin` VALUES ('7', 'zw', '696E25FDACEE8106BC5232AFC69155D6', '张伟', '138138138', '2', '低');
INSERT INTO `d_admin` VALUES ('8', 'zj', '696E25FDACEE8106BC5232AFC69155D6', '赵佳', '138138138', '2', '低');
INSERT INTO `d_admin` VALUES ('9', 'wf', '696E25FDACEE8106BC5232AFC69155D6', '王凡', '138138138', '1', '高');
INSERT INTO `d_admin` VALUES ('10', 'zn', '696E25FDACEE8106BC5232AFC69155D6', '张娜', '138138138', '1', '高');
INSERT INTO `d_admin` VALUES ('11', 'jzh', '696E25FDACEE8106BC5232AFC69155D6', '蒋子华', '138138138', '2', '低');
INSERT INTO `d_admin` VALUES ('12', 'xl', '696E25FDACEE8106BC5232AFC69155D6', '薛磊', '138138138', '2', '低');

-- ----------------------------
-- Table structure for `d_class`
-- ----------------------------
DROP TABLE IF EXISTS `d_class`;
CREATE TABLE `d_class` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_classid` int(11) NOT NULL,
  `c_classname` varchar(30) DEFAULT NULL,
  `c_counsellor` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of d_class
-- ----------------------------
INSERT INTO `d_class` VALUES ('1', '141', '生物', '徐超');
INSERT INTO `d_class` VALUES ('2', '151', '应化', '刘晨');
INSERT INTO `d_class` VALUES ('3', '142', '土木', '孙玲');
INSERT INTO `d_class` VALUES ('4', '161', '物流', '刘阳');
INSERT INTO `d_class` VALUES ('5', '153', '数师', '张宇');
INSERT INTO `d_class` VALUES ('6', '162', '物流', '刘阳');
INSERT INTO `d_class` VALUES ('7', '171', '自动化', '周涵涵');
INSERT INTO `d_class` VALUES ('8', '154', '土木', '孙玲');
INSERT INTO `d_class` VALUES ('9', '151', '纺织', '赵凯');
INSERT INTO `d_class` VALUES ('10', '153', '金融', '刘培');

-- ----------------------------
-- Table structure for `d_dormgrade`
-- ----------------------------
DROP TABLE IF EXISTS `d_dormgrade`;
CREATE TABLE `d_dormgrade` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_id` int(11) NOT NULL,
  `d_dormbuilding` varchar(20) DEFAULT NULL,
  `d_grade` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of d_dormgrade
-- ----------------------------
INSERT INTO `d_dormgrade` VALUES ('1', '301', '24号楼', '6', '2024-04-25 10:51:17', '2024-05-12 17:28:38');
INSERT INTO `d_dormgrade` VALUES ('2', '302', '24号楼', '7', '2024-05-01 16:36:47', '2024-05-01 16:36:55');
INSERT INTO `d_dormgrade` VALUES ('3', '322', '24号楼', '8', '2024-05-04 16:37:42', '2024-05-04 16:37:47');
INSERT INTO `d_dormgrade` VALUES ('4', '602', '23号楼', '7', '2024-05-08 16:38:25', '2024-05-08 16:38:30');
INSERT INTO `d_dormgrade` VALUES ('5', '112', '22号楼', '7', '2024-05-12 16:38:53', '2024-05-12 16:39:00');
INSERT INTO `d_dormgrade` VALUES ('6', '222', '27号楼', '9', '2024-05-09 16:39:37', '2024-05-09 16:39:41');
INSERT INTO `d_dormgrade` VALUES ('7', '213', '27号楼', '8', '2024-05-10 16:40:02', '2024-05-10 16:40:08');

-- ----------------------------
-- Table structure for `d_dormitoryinfo`
-- ----------------------------
DROP TABLE IF EXISTS `d_dormitoryinfo`;
CREATE TABLE `d_dormitoryinfo` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_dormitoryid` int(11) NOT NULL,
  `d_dormbuilding` varchar(20) DEFAULT NULL,
  `d_bedtotal` varchar(20) DEFAULT NULL,
  `d_bed` varchar(20) DEFAULT NULL,
  `a_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of d_dormitoryinfo
-- ----------------------------
INSERT INTO `d_dormitoryinfo` VALUES ('1', '311', '24号楼', '4', '3', '周荀凯');
INSERT INTO `d_dormitoryinfo` VALUES ('2', '322', '24号楼', '4', '4', '周荀凯');
INSERT INTO `d_dormitoryinfo` VALUES ('3', '601', '23号楼', '6', '6', '张杰');
INSERT INTO `d_dormitoryinfo` VALUES ('4', '602', '23号楼', '6', '5', '张杰');
INSERT INTO `d_dormitoryinfo` VALUES ('5', '111', '22号楼', '4', '4', '杨雯雯');
INSERT INTO `d_dormitoryinfo` VALUES ('6', '112', '22号楼', '4', '3', '杨雯雯');
INSERT INTO `d_dormitoryinfo` VALUES ('7', '222', '27号楼', '6', '6', '张伟');
INSERT INTO `d_dormitoryinfo` VALUES ('8', '213', '27号楼', '4', '4', '张伟');
INSERT INTO `d_dormitoryinfo` VALUES ('9', '312', '26号楼', '6', '6', '薛磊');
INSERT INTO `d_dormitoryinfo` VALUES ('10', '313', '22号楼', '4', '4', '张磊');
INSERT INTO `d_dormitoryinfo` VALUES ('11', '323', '22号楼', '6', '5', '张磊');
INSERT INTO `d_dormitoryinfo` VALUES ('12', '301', '24号楼', '6', '6', '周荀凯');
INSERT INTO `d_dormitoryinfo` VALUES ('13', '302', '24号楼', '6', '6', '周荀凯');
INSERT INTO `d_dormitoryinfo` VALUES ('14', '423', '29号楼', '4', '3', '郭浩然');


-- ----------------------------
-- Table structure for `d_stgrade`
-- ----------------------------
DROP TABLE IF EXISTS `d_stgrade`;
CREATE TABLE `d_stgrade` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_studentid` int(11) NOT NULL,
  `s_name` varchar(20) DEFAULT NULL,
  `s_grade` int(11) DEFAULT NULL,
  `s_classid` int(11) DEFAULT NULL,
  `s_dormitoryid` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of d_stgrade
-- ----------------------------
INSERT INTO `d_stgrade` VALUES ('1', '1413032001', '张杰', '6', '141', '301', '2024-04-26 09:56:51', '2024-04-26 11:02:13');
INSERT INTO `d_stgrade` VALUES ('2', '1413032002', '赵凯', '7', '141', '301', '2024-05-01 17:00:05', '2024-05-01 17:00:13');
INSERT INTO `d_stgrade` VALUES ('3', '1413032003', '许文文', '6', '141', '301', '2024-05-06 17:00:54', '2024-05-06 17:01:01');
INSERT INTO `d_stgrade` VALUES ('4', '1413032003', '许文文', '7', '141', '301', '2024-05-16 17:01:33', '2024-05-16 17:02:15');
INSERT INTO `d_stgrade` VALUES ('5', '1413032004', '王浩', '7', '141', '301', '2024-05-10 17:03:03', '2024-05-10 17:03:09');
INSERT INTO `d_stgrade` VALUES ('6', '1413032005', '张伟', '8', '141', '301', '2024-05-14 17:03:53', '2024-05-14 17:03:56');
INSERT INTO `d_stgrade` VALUES ('7', '1513112412', '赵跃', '9', '151', '112', '2024-05-08 17:05:04', '2024-05-08 17:05:07');
INSERT INTO `d_stgrade` VALUES ('8', '1513112412', '赵跃', '9', '151', '112', '2024-05-17 17:05:34', '2024-05-17 17:05:39');
INSERT INTO `d_stgrade` VALUES ('9', '1513122418', '田野', '8', '151', '213', '2024-05-15 17:06:28', '2024-05-15 17:06:35');
INSERT INTO `d_stgrade` VALUES ('10', '1513122419', '张嘉佳', '8', '151', '213', '2024-05-15 17:07:09', '2024-05-15 17:07:13');

-- ----------------------------
-- Table structure for `d_student`
-- ----------------------------
DROP TABLE IF EXISTS `d_student`;
CREATE TABLE `d_student` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_studentid` int(11) NOT NULL,
  `s_name` varchar(20) DEFAULT NULL,
  `s_sex` varchar(20) DEFAULT NULL,
  `s_age` int(11) DEFAULT NULL,
  `s_phone` bigint(20) DEFAULT NULL,
  `s_classid` int(11) NOT NULL,
  `s_classname` varchar(20) DEFAULT NULL,
  `s_dormitoryid` int(11) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of d_student
-- ----------------------------
INSERT INTO `d_student` VALUES ('1', '1413032001', '张杰', '男', '22', '138138138', '141', '生物', '301');
INSERT INTO `d_student` VALUES ('2', '1413032002', '赵凯', '男', '22', '138138138', '141', '生物', '301');
INSERT INTO `d_student` VALUES ('3', '1413032003', '许文文', '男', '21', '138138138', '141', '生物', '301');
INSERT INTO `d_student` VALUES ('4', '1413032004', '王浩', '男', '22', '138138138', '141', '生物', '301');
INSERT INTO `d_student` VALUES ('5', '1413032005', '张伟', '男', '22', '138138138', '141', '土木', '301');
INSERT INTO `d_student` VALUES ('6', '1413032006', '郭顶', '男', '21', '138138138', '141', '土木', '301');
INSERT INTO `d_student` VALUES ('7', '1513112411', '曹原', '男', '20', '138138138', '151', '应化', '112');
INSERT INTO `d_student` VALUES ('8', '1513112412', '赵跃', '男', '21', '138138138', '151', '纺织', '112');
INSERT INTO `d_student` VALUES ('9', '1513112413', '孙畅', '男', '21', '138138138', '151', '纺织', '112');
INSERT INTO `d_student` VALUES ('10', '1513122417', '周帆', '男', '21', '138138138', '161', '物流', '213');
INSERT INTO `d_student` VALUES ('11', '1513122418', '田野', '男', '21', '138138138', '153', '数师', '213');
INSERT INTO `d_student` VALUES ('12', '1513122419', '张嘉佳', '男', '20', '138138138', '153', '金融', '213');
INSERT INTO `d_student` VALUES ('13', '1513122420', '陈昊', '男', '21', '138138138', '153', '金融', '213');

