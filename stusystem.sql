/*
Navicat MySQL Data Transfer

Source Server         : 12
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : stusystem

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2021-07-11 21:02:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `score`
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `score_id` int(20) NOT NULL AUTO_INCREMENT,
  `student_id` int(20) NOT NULL,
  `subject_id` int(20) NOT NULL,
  `score` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`score_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('1', '10002', '3', null);
INSERT INTO `score` VALUES ('2', '10001', '1', '99');
INSERT INTO `score` VALUES ('3', '10003', '2', null);
INSERT INTO `score` VALUES ('4', '10001', '6', '84');
INSERT INTO `score` VALUES ('5', '10001', '7', '75');
INSERT INTO `score` VALUES ('6', '10004', '1', null);
INSERT INTO `score` VALUES ('7', '10004', '6', null);
INSERT INTO `score` VALUES ('8', '10004', '7', null);
INSERT INTO `score` VALUES ('9', '10005', '2', null);
INSERT INTO `score` VALUES ('10', '10006', '1', null);
INSERT INTO `score` VALUES ('11', '10006', '6', null);
INSERT INTO `score` VALUES ('12', '10006', '7', null);
INSERT INTO `score` VALUES ('13', '10007', '3', null);
INSERT INTO `score` VALUES ('14', '10008', '4', null);
INSERT INTO `score` VALUES ('15', '10008', '5', null);
INSERT INTO `score` VALUES ('16', '10009', '4', null);
INSERT INTO `score` VALUES ('17', '10009', '5', null);
INSERT INTO `score` VALUES ('18', '10010', '1', null);
INSERT INTO `score` VALUES ('19', '10010', '6', null);
INSERT INTO `score` VALUES ('20', '10010', '7', null);
INSERT INTO `score` VALUES ('21', '10011', '1', null);
INSERT INTO `score` VALUES ('22', '10011', '6', null);
INSERT INTO `score` VALUES ('23', '10011', '7', null);

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `stu_id` int(20) NOT NULL AUTO_INCREMENT,
  `stu_name` varchar(10) NOT NULL,
  `stu_sex` varchar(1) NOT NULL,
  `stu_system` varchar(10) NOT NULL,
  `stu_class` varchar(10) NOT NULL,
  `stu_phone` varchar(20) NOT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10012 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('10001', '珂珂', '女', '计算机技术与人工智能', '软件1001班', '18951254215');
INSERT INTO `student` VALUES ('10002', '王武', '男', '体育学院', '体育1001班', '18482173147');
INSERT INTO `student` VALUES ('10003', '王肖', '男', '美术学院', '美术1001班', '13884548484');
INSERT INTO `student` VALUES ('10004', '小王', '男', '计算机技术与人工智能', '软件1001班', '13845855858');
INSERT INTO `student` VALUES ('10005', '西北', '女', '美术学院', '美术1001班', '13965548854');
INSERT INTO `student` VALUES ('10006', '张曦', '女', '计算机技术与人工智能', '软件1001班', '17458585585');
INSERT INTO `student` VALUES ('10007', '垦丁', '男', '体育学院', '体育1001班', '13585855582');
INSERT INTO `student` VALUES ('10008', '兰芝', '女', '外国语学院', '英语1001班', '13458585851');
INSERT INTO `student` VALUES ('10009', '狒狒', '男', '外国语学院', '英语1001班', '13751515335');
INSERT INTO `student` VALUES ('10010', '瞻望', '男', '计算机技术与人工智能', '软件1001班', '13545855321');
INSERT INTO `student` VALUES ('10011', '潇洒', '男', '计算机技术与人工智', '软件1001班', '13642105897');

-- ----------------------------
-- Table structure for `subject`
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `subject_id` int(10) NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(20) NOT NULL,
  `teacher_name` varchar(10) NOT NULL,
  `subject_credit` varchar(3) NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('1', '人工智能', '里斯', '2');
INSERT INTO `subject` VALUES ('2', '素描', '肖老师', '2');
INSERT INTO `subject` VALUES ('3', '篮球', '王老师', '2');
INSERT INTO `subject` VALUES ('4', '英语', '魏老师', '4.5');
INSERT INTO `subject` VALUES ('5', '韩语', '孙老师', '3');
INSERT INTO `subject` VALUES ('6', 'web应用开发', '斐济', '3');
INSERT INTO `subject` VALUES ('7', 'Java应用开发', '肯迪', '2.5');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `teacher_id` int(20) NOT NULL AUTO_INCREMENT,
  `teacher_name` varchar(10) NOT NULL,
  `teacher_sex` varchar(1) NOT NULL,
  `teacher_system` varchar(20) NOT NULL,
  `teacher_phone` varchar(20) NOT NULL,
  `teacher_email` varchar(20) NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20008 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('20001', '里斯', '男', '计算机技术与工人智能', '18482173147', '1093615728@qq.com');
INSERT INTO `teacher` VALUES ('20002', '斐济', '男', '计算机技术与工人智能', '13845995213', '155584544@qq.com');
INSERT INTO `teacher` VALUES ('20003', '肯迪', '女', '计算机技术与工人智能', '184523548458', '24545@qq.com');
INSERT INTO `teacher` VALUES ('20004', '王老师', '男', '体育学院', '1873322851005', '112312@qq.com');
INSERT INTO `teacher` VALUES ('20005', '肖老师', '男', '美术学院', '18510051314', '85105@qq.com');
INSERT INTO `teacher` VALUES ('20006', '魏老师', '女', '外国语学院', '12314234342332', '222@qq.com');
INSERT INTO `teacher` VALUES ('20007', '孙老师', '女', '外国语学院', '18732432432', '4343@qq.com');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(20) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(5) NOT NULL,
  `admin` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('10001', '珂珂', '1111', '3');
INSERT INTO `user` VALUES ('10002', '王武', '1111', '3');
INSERT INTO `user` VALUES ('10003', '王肖', '1111', '3');
INSERT INTO `user` VALUES ('10004', '小王', '1111', '3');
INSERT INTO `user` VALUES ('10005', '西北', '1111', '3');
INSERT INTO `user` VALUES ('10006', '张曦', '1111', '3');
INSERT INTO `user` VALUES ('10007', '垦丁', '1111', '3');
INSERT INTO `user` VALUES ('10008', '兰芝', '1111', '3');
INSERT INTO `user` VALUES ('10009', '狒狒', '1111', '3');
INSERT INTO `user` VALUES ('10010', '瞻望', '1111', '3');
INSERT INTO `user` VALUES ('10011', '潇洒', '1111', '3');
INSERT INTO `user` VALUES ('20001', '里斯', '1234', '2');
INSERT INTO `user` VALUES ('20002', '斐济', '1234', '2');
INSERT INTO `user` VALUES ('20003', '肯迪', '1234', '2');
INSERT INTO `user` VALUES ('20004', '王老师', '1234', '2');
INSERT INTO `user` VALUES ('20005', '肖老师', '1234', '2');
INSERT INTO `user` VALUES ('20006', '魏老师', '1234', '2');
INSERT INTO `user` VALUES ('20007', '孙老师', '1234', '2');
INSERT INTO `user` VALUES ('30001', 'admin', 'admin', '1');
