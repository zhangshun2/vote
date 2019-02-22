/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50096
Source Host           : localhost:3306
Source Database       : baobiao

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2019-02-22 15:37:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for vote_user
-- ----------------------------
DROP TABLE IF EXISTS `vote_user`;
CREATE TABLE `vote_user` (
  `vu_user_id` int(19) NOT NULL auto_increment,
  `vu_user_name` varchar(255) default NULL,
  `vu_password` varchar(255) default NULL,
  `vu_status` int(10) default NULL,
  PRIMARY KEY  (`vu_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vote_user
-- ----------------------------
INSERT INTO `vote_user` VALUES ('1', 'zhangshun', '11', '0');
INSERT INTO `vote_user` VALUES ('2', 'zhangshun1', '22', '0');
INSERT INTO `vote_user` VALUES ('3', 'zhangshun333', '11', null);
INSERT INTO `vote_user` VALUES ('4', '', '', null);
