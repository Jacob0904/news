/*
Navicat MySQL Data Transfer

Source Server         : aaa
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : db_wjj

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-03-09 16:40:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('0000000001', 'aa', '1234', '0');
INSERT INTO `admin` VALUES ('0000000002', 'aa', '123', '0');
INSERT INTO `admin` VALUES ('0000000003', 'cc', '123', '0');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('00000000002', '澳大利亚民众遇40度高温 海滩泡澡解暑', '<span><span>当地时间2019年1月15日，澳大利亚墨尔本，民众海滩休闲解暑。预计本周澳大利亚各地将出现热浪，一些地区的气温将达到40多度。</span></span>');
INSERT INTO `news` VALUES ('00000000003', '波兰一市长遇刺身亡后 总统又收死亡威胁', '波兰近期风波不断。就在波兰格但斯克市市长遇袭不治身亡事件仅过一天之后，波兰警方拘留了一名对总统安杰伊·杜达发出死亡威胁的男子。\r\n\r\n“今日俄罗斯”网在14日的报道中称，波兰警方表示，当地时间周一(14日)，一名72岁的华沙居民在给当地一家家庭援助中心打电话，向波兰总统杜达发出死亡威胁。该男子现已被捕。\r\n\r\n“阿达莫维奇死了，安杰伊·杜达可能明天也会死，”该男子说。报道称，警方随后迅速查明了该男子的下落，并没收了他用来打电话的设备，不过并未透露被拘留男子的身份。13日，波兰格但斯克市市长阿达莫维奇在一场音乐会上遇袭，后不治身亡。据报道，袭击者几周前刚从监狱释放。警方表示，袭击者成功地绕过安检，使用假记者证登上舞台。\r\n\r\n阿达莫维奇去世后，在波兰和其他地方举行了纪念活动。在格但斯克，1.6万人参加了守夜活动。在华沙，人们在纪念游行中点燃蜡烛。欧洲政界人士也对阿达莫维奇的去世表示遗憾。欧洲议会为他默哀一分钟。');
INSERT INTO `news` VALUES ('00000000004', '危机四伏！“灰犀牛”一步步逼近，英国、欧盟、日本“焦头烂额”', '2019年金融市场的第一头“灰犀牛”正挣脱伦敦宏伟壮丽的威斯敏斯特议会大厦，撞翻英国，冲向欧盟。1月15日晚若英国脱欧协议无法通过下议院表决，对商界和市场来说，只能硬着头皮迎向扑面而来的不确定性和失去控制的脱欧冲击。当地时间1月14日，总部位于巴黎的经济合作与发展组织(OECD)发布最新评估，警告大多数主要经济体增长势头正在放缓。未来6至9个月间，美国、德国、加拿大、意大利和欧元区增长势头均有所放缓，其中法国和英国跌幅最大。');
INSERT INTO `news` VALUES ('00000000007', 'cs', ' editor.html(\'\');');
INSERT INTO `news` VALUES ('00000000008', 'jklaasd', 'bbwqekked');
INSERT INTO `news` VALUES ('00000000009', 'sasa', 'smalkms.a,;lsd');
INSERT INTO `news` VALUES ('00000000010', 'smksajakl', 'mnssssssss');
INSERT INTO `news` VALUES ('00000000012', 'kjsljdsdmx', 'cdjchdfhdkjfhdjk');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `birthday` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `tel` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'a', '男', '2019-02-08 00:00:00', '55');
INSERT INTO `users` VALUES ('2', 'a', '男', '2019-02-08 00:00:00', '5');
INSERT INTO `users` VALUES ('3', '啊啊', '男', '2019-03-02 00:00:00', '6');
INSERT INTO `users` VALUES ('4', 'abc', '男', '2019-02-02 00:00:00', '3');
