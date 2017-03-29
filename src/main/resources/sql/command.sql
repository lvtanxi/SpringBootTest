/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50550
Source Host           : localhost:3306
Source Database       : seckill

Target Server Type    : MYSQL
Target Server Version : 50550
File Encoding         : 65001

Date: 2017-03-29 09:10:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for command
-- ----------------------------
DROP TABLE IF EXISTS `command`;
CREATE TABLE `command` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) DEFAULT NULL,
  `description` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of command
-- ----------------------------
INSERT INTO `command` VALUES ('1', '周杰伦', '亚洲天王');
INSERT INTO `command` VALUES ('2', '张根硕', '亚洲舞王');

-- ----------------------------
-- Table structure for command_content
-- ----------------------------
DROP TABLE IF EXISTS `command_content`;
CREATE TABLE `command_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) DEFAULT NULL,
  `command_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `command_id` (`command_id`),
  CONSTRAINT `command_content_ibfk_1` FOREIGN KEY (`command_id`) REFERENCES `command` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of command_content
-- ----------------------------
INSERT INTO `command_content` VALUES ('1', '周杰伦（Jay Chou），1979年1月18日出生于台湾省新北市，中国台湾流行乐男歌手、音乐人、演员、导演、编剧、监制、商人。2000年发行首张个人专辑《Jay》。2001年发行的专辑《范特西》奠定其融合中西方音乐的风格', '1');
INSERT INTO `command_content` VALUES ('2', '张根硕，1987年9月26日出生于韩国首尔，韩国男演员、歌手、主持人。汉阳大学硕博连读、汉阳大学慈善教授。1997年，张根硕出演HBS情景喜剧《幸福也贩卖》。2001年，张根硕与BOA一同拍摄了SK电信的电视广告', '2');
