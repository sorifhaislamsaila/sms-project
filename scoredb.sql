/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50715
Source Host           : localhost:3306
Source Database       : scoredb

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2022-05-30 15:51:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `authority` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', '20066', '666666', '1');
INSERT INTO `account` VALUES ('2', '20068', '666666', '1');
INSERT INTO `account` VALUES ('3', '20088', '666666', '1');
INSERT INTO `account` VALUES ('4', 'gong-001', '666666', '2');

-- ----------------------------
-- Table structure for `class`
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `classNo` char(10) NOT NULL,
  `className` varchar(20) NOT NULL,
  `institute` varchar(20) NOT NULL,
  `grade` int(11) NOT NULL,
  `classNum` int(11) NOT NULL,
  PRIMARY KEY (`classNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('20011', '通信201', '通信学院', '1', '3');

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `courseNo` char(10) NOT NULL,
  `courseName` varchar(20) NOT NULL,
  `credit` int(11) NOT NULL,
  `courseHour` int(11) NOT NULL,
  `priorCourse` varchar(20) NOT NULL,
  PRIMARY KEY (`courseNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('ke-001', '高等数学', '4', '60', 'null');
INSERT INTO `course` VALUES ('ke-002', '线性代数', '4', '60', 'null');
INSERT INTO `course` VALUES ('ke-003', '通信原理', '4', '60', '高等数学');
INSERT INTO `course` VALUES ('ke-004', '电子技术基础', '4', '60', '高等数学');
INSERT INTO `course` VALUES ('ke-005', '电工学', '4', '60', '高等数学');
INSERT INTO `course` VALUES ('ke-006', '自动控制原理', '4', '60', '高等数学');

-- ----------------------------
-- Table structure for `score`
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `stuNo` char(10) NOT NULL,
  `courseNo` char(10) NOT NULL,
  `term` varchar(10) NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`stuNo`,`courseNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('20066', 'ke-001', '2020年春季学期', '80');
INSERT INTO `score` VALUES ('20066', 'ke-002', '2020年春季学期', '88');
INSERT INTO `score` VALUES ('20066', 'ke-003', '2020年春季学期', '88');
INSERT INTO `score` VALUES ('20066', 'ke-004', '2020年春季学期', '88');
INSERT INTO `score` VALUES ('20066', 'ke-005', '2020年春季学期', '88');
INSERT INTO `score` VALUES ('20066', 'ke-006', '2020年春季学期', '88');
INSERT INTO `score` VALUES ('20068', 'ke-001', '2020年春季学期', '60');
INSERT INTO `score` VALUES ('20068', 'ke-002', '2020年春季学期', '68');
INSERT INTO `score` VALUES ('20068', 'ke-003', '2020年春季学期', '68');
INSERT INTO `score` VALUES ('20068', 'ke-004', '2020年春季学期', '68');
INSERT INTO `score` VALUES ('20068', 'ke-005', '2020年春季学期', '68');
INSERT INTO `score` VALUES ('20068', 'ke-006', '2020年春季学期', '68');
INSERT INTO `score` VALUES ('20088', 'ke-001', '2020年春季学期', '90');
INSERT INTO `score` VALUES ('20088', 'ke-002', '2020年春季学期', '98');
INSERT INTO `score` VALUES ('20088', 'ke-003', '2020年春季学期', '98');
INSERT INTO `score` VALUES ('20088', 'ke-004', '2020年春季学期', '98');
INSERT INTO `score` VALUES ('20088', 'ke-005', '2020年春季学期', '98');
INSERT INTO `score` VALUES ('20088', 'ke-006', '2020年春季学期', '98');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `stuNo` char(10) NOT NULL,
  `stuName` varchar(20) NOT NULL,
  `sex` int(11) NOT NULL,
  `birthday` date NOT NULL,
  `nat` varchar(20) NOT NULL,
  `classNo` varchar(20) NOT NULL,
  PRIMARY KEY (`stuNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('20066', '王兰花', '2', '2000-01-01', '汉族', '20011');
INSERT INTO `student` VALUES ('20068', '李子豪', '1', '2000-06-06', '汉族', '20011');
INSERT INTO `student` VALUES ('20088', '苏梅', '2', '2000-02-12', '汉族', '20011');
