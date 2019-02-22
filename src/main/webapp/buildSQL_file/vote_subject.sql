/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50096
Source Host           : localhost:3306
Source Database       : baobiao

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2019-02-22 15:37:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for vote_subject
-- ----------------------------
DROP TABLE IF EXISTS `vote_subject`;
CREATE TABLE `vote_subject` (
  `vs_id` int(19) NOT NULL auto_increment,
  `vs_title` varchar(255) default NULL,
  `vs_type` int(10) default NULL,
  PRIMARY KEY  (`vs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vote_subject
-- ----------------------------
INSERT INTO `vote_subject` VALUES ('1', '测试数据1', '1');
INSERT INTO `vote_subject` VALUES ('2', '测试数据5', '1');
INSERT INTO `vote_subject` VALUES ('3', '测试数据3', '1');
INSERT INTO `vote_subject` VALUES ('4', '测试数据4', '1');
INSERT INTO `vote_subject` VALUES ('5', '测试数据2', '1');
INSERT INTO `vote_subject` VALUES ('6', '测试数据66', '1');
