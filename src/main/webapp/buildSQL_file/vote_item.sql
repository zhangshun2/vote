/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50096
Source Host           : localhost:3306
Source Database       : baobiao

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2019-02-22 15:34:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for vote_item
-- ----------------------------
DROP TABLE IF EXISTS `vote_item`;
CREATE TABLE `vote_item` (
  `vi_id` int(19) NOT NULL auto_increment,
  `vu_user_id` int(19) default NULL,
  `vs_id` int(19) default NULL,
  `vo_id` int(19) default NULL,
  PRIMARY KEY  (`vi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vote_item
-- ----------------------------
INSERT INTO `vote_item` VALUES ('1', '1', '1', '1');
