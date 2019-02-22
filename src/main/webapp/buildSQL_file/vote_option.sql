/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50096
Source Host           : localhost:3306
Source Database       : baobiao

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2019-02-22 15:37:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for vote_option
-- ----------------------------
DROP TABLE IF EXISTS `vote_option`;
CREATE TABLE `vote_option` (
  `vo_id` int(19) NOT NULL auto_increment,
  `vs_id` int(10) default NULL,
  `vo_option` varchar(255) default NULL,
  `vo_order` varchar(19) default NULL,
  `vo_is_delete` varchar(19) default NULL,
  PRIMARY KEY  (`vo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vote_option
-- ----------------------------
INSERT INTO `vote_option` VALUES ('1', '1', '0', '1', '1');
INSERT INTO `vote_option` VALUES ('2', '2', '1', '2', '1');
INSERT INTO `vote_option` VALUES ('3', '3', '1', '3', '1');
INSERT INTO `vote_option` VALUES ('4', '1', '0', '4', '1');
INSERT INTO `vote_option` VALUES ('5', '2', '0', '5', '1');
INSERT INTO `vote_option` VALUES ('6', '3', '1', '6', '1');
INSERT INTO `vote_option` VALUES ('7', '5', '测试选项1', '', '0');
INSERT INTO `vote_option` VALUES ('8', '5', '测试选项1', '', '0');
INSERT INTO `vote_option` VALUES ('9', '6', 'www', '', '0');
INSERT INTO `vote_option` VALUES ('10', '6', '2222q', '', '0');
INSERT INTO `vote_option` VALUES ('11', '6', 'wewewew', '', '0');
