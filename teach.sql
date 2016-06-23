/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : teach

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2016-06-23 20:48:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for adminevent
-- ----------------------------
DROP TABLE IF EXISTS `adminevent`;
CREATE TABLE `adminevent` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `a_userid` varchar(50) NOT NULL,
  `a_event` varchar(50) NOT NULL,
  `a_ipaddress` varchar(50) NOT NULL,
  `a_datetime` datetime NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adminevent
-- ----------------------------

-- ----------------------------
-- Table structure for adminfilter
-- ----------------------------
DROP TABLE IF EXISTS `adminfilter`;
CREATE TABLE `adminfilter` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(20) NOT NULL,
  `i_order` int(11) NOT NULL,
  `createtime` datetime NOT NULL,
  `updatetime` datetime NOT NULL,
  `deleteflag` int(11) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adminfilter
-- ----------------------------
INSERT INTO `adminfilter` VALUES ('1', '118.168.6.23', '0', '2014-11-13 11:28:53', '2014-11-13 11:28:53', '1');
INSERT INTO `adminfilter` VALUES ('2', '2.2.2.2', '0', '2014-11-13 11:33:25', '2014-11-13 11:33:25', '1');

-- ----------------------------
-- Table structure for adminuser
-- ----------------------------
DROP TABLE IF EXISTS `adminuser`;
CREATE TABLE `adminuser` (
  `a_idx` int(11) NOT NULL AUTO_INCREMENT,
  `a_userid` varchar(50) NOT NULL,
  `a_username` varchar(50) NOT NULL,
  `a_passwd` varchar(50) NOT NULL,
  `a_userphone` varchar(50) NOT NULL,
  `a_email` varchar(50) DEFAULT NULL,
  `admin` int(11) NOT NULL,
  `createtime` datetime NOT NULL,
  `updatetime` datetime NOT NULL,
  `deleteflag` int(11) NOT NULL,
  PRIMARY KEY (`a_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adminuser
-- ----------------------------
INSERT INTO `adminuser` VALUES ('1', 'admin', 'rocky', '1234', '0935952586', 'chentai008@yahoo.com', '1', '2014-10-06 06:47:51', '2014-10-06 06:47:56', '0');
INSERT INTO `adminuser` VALUES ('2', 'test', 'mary', '1234', '0955555555', 'chentai008@yahoo.com', '0', '2014-10-07 08:32:56', '2014-11-11 14:06:05', '0');
INSERT INTO `adminuser` VALUES ('3', '11111', '11111', '1234', '025555555', 'chentai008@yahoo.com', '0', '2014-11-11 14:02:42', '2014-11-11 14:02:50', '1');
INSERT INTO `adminuser` VALUES ('4', 'eeeee', 'ssssss', '1234', '027777777', 'chentai008@gmail.com', '0', '2014-11-06 17:16:21', '2014-11-10 14:44:13', '1');
INSERT INTO `adminuser` VALUES ('5', 'eee', 'eeee', '1234', '02444433', 'chentai008@yahoo.com', '0', '2014-11-06 17:26:57', '2014-11-10 14:44:17', '1');
INSERT INTO `adminuser` VALUES ('6', 'test2', 'test2', '1234', '0222222', 'chentai008@gmail.com', '0', '2014-11-10 14:43:18', '2014-11-11 14:05:44', '1');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `book_id` int(10) NOT NULL AUTO_INCREMENT,
  `category_id` int(10) NOT NULL,
  `recommend_id` int(10) NOT NULL DEFAULT '0',
  `book_name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `publishing` varchar(255) NOT NULL,
  `release_date` date NOT NULL,
  `book_price` int(10) NOT NULL,
  `book_img` varchar(255) NOT NULL,
  `book_total` int(10) NOT NULL,
  `a_userid` varchar(50) NOT NULL,
  `createtime` datetime NOT NULL,
  `updatetime` datetime NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '1', '4', '經濟學原理:全彩圖解', '阿爾弗雷德.馬歇爾(Alfred Marshall)著;賈開吉譯', '海鴿文化', '2014-06-03', '15', '/img/pic1.jpg', '20', 'admin', '2016-06-06 17:09:55', '2016-06-13 00:00:00');
INSERT INTO `book` VALUES ('2', '8', '1', '20天衝刺新多益拿高分[有聲書]', '元晶瑞, 鄭然澤著', '人類智庫數位科技', '2010-06-15', '25', '/img/pic2.jpg', '19', 'admin', '2016-06-06 17:09:59', '2016-06-06 00:00:00');
INSERT INTO `book` VALUES ('3', '5', '0', '自助旅行不求人!iPhone手機旅遊萬事通', '酆士昌著', '博碩文化', '2013-05-13', '20', '/img/pic3.jpg', '20', 'admin', '2016-06-06 17:10:03', '2016-06-06 17:11:15');
INSERT INTO `book` VALUES ('4', '4', '0', '老媽-我想當爽兵!', '睫毛著;陳信宏編', '時報文化', '2012-07-25', '15', '/img/pic4_1.jpg', '20', 'admin', '2016-06-06 17:10:06', '2016-06-23 00:00:00');
INSERT INTO `book` VALUES ('5', '4', '0', '百鬼夜行誌- 塊陶卷', '阿慢著', '時報文化', '2013-10-22', '15', '/img/pic5.jpg', '21', 'admin', '2016-06-06 17:10:10', '2016-06-23 00:00:00');
INSERT INTO `book` VALUES ('6', '4', '0', '烏龍院36計. 第2部', '敖幼祥', '敖幼祥漫畫', '2010-06-08', '20', '/img/pic6.jpg', '19', 'admin', '2016-06-06 17:10:14', '2016-06-23 00:00:00');
INSERT INTO `book` VALUES ('7', '4', '0', '來~跟毛小孩聊天:透過溝通-我們都被療癒了!', 'Leslie著', '啟動文化出版 大雁文化發行', '2014-06-24', '25', '/img/pic7.jpg', '19', 'admin', '2016-06-06 17:10:19', '2016-06-13 00:00:00');
INSERT INTO `book` VALUES ('8', '4', '0', '小莉莉塗鴉日記', '小莉莉著', '秀威資訊科技', '2010-07-14', '30', '/img/pic8.jpg', '20', 'admin', '2016-06-06 17:10:24', '2016-06-06 17:11:34');
INSERT INTO `book` VALUES ('9', '1', '4', 'P.A資產管理期刊', '謝佳欣總編輯', '元大寶來證券投資信託股份有限公司', '2015-07-22', '5', '/img/pic9.jpg', '20', 'admin', '2016-06-06 17:10:28', '2016-06-06 17:11:38');
INSERT INTO `book` VALUES ('10', '5', '3', '史丹利沖繩不能停', '史丹利著', '史丹利沖繩不能停', '2015-07-27', '10', '/img/pic10.jpg', '20', 'admin', '2016-06-06 17:10:31', '2016-06-06 17:11:41');
INSERT INTO `book` VALUES ('11', '4', '0', '小熊艾力的鞋子', '薛琬婷文;李文斌圖', '巧育文化', '2014-06-10', '10', '/img/pic11.jpg', '20', 'admin', '2016-06-06 17:10:35', '2016-06-06 17:11:45');
INSERT INTO `book` VALUES ('12', '4', '0', '死神與男孩. 1- 黑西裝叔叔', '林秀穗文;廖健宏圖', '幼獅文化', '2013-07-18', '20', '/img/pic12.jpg', '20', 'admin', '2016-06-06 17:10:39', '2016-06-06 17:11:48');
INSERT INTO `book` VALUES ('13', '4', '0', '火柴人日記. II ', '黃毅之, 樂洋著', '突破出版社', '2009-10-20', '10', '/img/pic13.jpg', '20', 'admin', '2016-06-06 17:10:42', '2016-06-06 17:11:52');
INSERT INTO `book` VALUES ('14', '3', '5', '我的東京小日和:第一手生活日本語NOTE', '樂大維著', '拓客', '2014-07-16', '5', '/img/pic14.jpg', '20', 'admin', '2016-06-06 17:10:45', '2016-06-06 17:11:56');
INSERT INTO `book` VALUES ('15', '3', '5', '日本語五十音入門 [有聲書]', '謝逸朗教授', '甦活全球網路', '2008-07-23', '10', '/img/pic15.jpg', '20', 'admin', '2016-06-06 17:10:49', '2016-06-06 17:11:59');
INSERT INTO `book` VALUES ('16', '2', '0', '博物館品牌:你知道顧客怎麼看你嗎?', '珍妮佛.朵依契(Jennifer Deutsch), 湯瑪若.瑞爾', '五觀藝術', '2010-06-08', '10', '/img/pic16.jpg', '20', 'admin', '2016-06-06 17:10:51', '2016-06-06 17:12:01');
INSERT INTO `book` VALUES ('17', '7', '0', '中醫名師談胎教與母子健康:中國式的安胎讓母親健康、胎兒健壯', '張湖德, 張紅著', '旺文社', '2009-07-22', '10', '/img/pic17.jpg', '20', 'admin', '2016-06-06 17:10:55', '2016-06-06 17:12:03');
INSERT INTO `book` VALUES ('18', '9', '0', '保險學概論', '段文軍主編', '元華文創股份有限公司', '2015-11-18', '5', '/img/pic18.jpg', '20', 'admin', '2016-06-06 17:10:57', '2016-06-06 17:12:07');
INSERT INTO `book` VALUES ('19', '3', '5', '新しい「日本語能力試験」N5文法のまとめ', 'Yamase&TouwaJapaneseCulture編集', '宇田', '2011-07-19', '10', '/img/pic19.jpg', '20', 'admin', '2016-06-06 17:11:01', '2016-06-21 15:47:50');
INSERT INTO `book` VALUES ('20', '10', '0', '滿地楓華:一座城市的距離', '梁永泰作', '突破出版社', '2015-07-15', '20', '/img/pic20.jpg', '20', 'admin', '2016-06-06 17:11:04', '2016-06-06 17:12:11');
INSERT INTO `book` VALUES ('21', '10', '0', '黑道教我的12件事', '樊維佳作', '海鴿文化', '2013-07-17', '20', '/img/pic21.jpg', '20', 'admin', '2016-06-06 17:13:31', '2016-06-06 17:14:04');
INSERT INTO `book` VALUES ('22', '11', '0', '快樂人際心理學', '麥凡勒編著', '布拉格文創社', '2015-02-11', '10', '/img/pic22.jpg', '20', 'admin', '2016-06-06 17:13:35', '2016-06-06 17:14:07');
INSERT INTO `book` VALUES ('23', '11', '2', '1分鐘讀心術', '麥凡勒主編', '新潮社文化出版', '2011-07-20', '25', '/img/pic23.jpg', '20', 'admin', '2016-06-06 17:13:39', '2016-06-06 17:14:11');
INSERT INTO `book` VALUES ('24', '11', '2', '心理專家的交涉技巧', '心理研究小組主編', '新潮社出版', '2010-10-19', '25', '/img/pic24.jpg', '20', 'admin', '2016-06-06 17:13:43', '2016-06-06 17:14:15');
INSERT INTO `book` VALUES ('25', '10', '0', '給大忙人看的佛法書', '陳榮賦, 尹培培作', '海鴿文化', '2014-06-12', '25', '/img/pic25.jpg', '20', 'admin', '2016-06-06 17:13:46', '2016-06-06 17:14:16');
INSERT INTO `book` VALUES ('26', '10', '0', '當智慧走進家庭:用手機、平板拉近距離的親情關係活化術', '酆士昌著', '博碩文化', '2013-02-12', '5', '/img/pic26.jpg', '20', 'admin', '2016-06-06 17:13:50', '2016-06-06 17:14:18');
INSERT INTO `book` VALUES ('27', '7', '0', '孕媽咪喜樂寶典:Joy mami baby care book', '鄭鄭編', '時兆出版', '2013-02-12', '20', '/img/pic27.jpg', '20', 'admin', '2016-06-06 17:13:53', '2016-06-06 17:14:20');
INSERT INTO `book` VALUES ('28', '5', '3', '25歲的足跡:從台灣到瑞典-一場不停探索的交換饗宴', '李奕廷作', '佳魁文化', '2014-02-19', '20', '/img/pic28.jpg', '20', 'admin', '2016-06-06 17:13:55', '2016-06-06 17:14:22');
INSERT INTO `book` VALUES ('29', '12', '0', '縱橫太極. 一 ', '鍾文淵著', '逸文武術文化', '2010-08-04', '20', '/img/pic29.jpg', '20', 'admin', '2016-06-06 17:13:58', '2016-06-06 17:14:26');
INSERT INTO `book` VALUES ('30', '4', '1', '漫畫三國志. 上- 爭奪霸權的野心篇', '守屋洋主編;富新藏繪圖', '漢宇國際文化', '2006-07-20', '20', '/img/pic30.jpg', '20', 'admin', '2016-06-06 17:14:01', '2016-06-06 17:14:29');

-- ----------------------------
-- Table structure for borrow_record
-- ----------------------------
DROP TABLE IF EXISTS `borrow_record`;
CREATE TABLE `borrow_record` (
  `borrow_id` int(10) NOT NULL AUTO_INCREMENT,
  `member_id` int(10) NOT NULL,
  `book_id` int(10) NOT NULL,
  `reserve_date` date NOT NULL,
  `reserve_deadline` date NOT NULL,
  `borrow_date` date DEFAULT NULL,
  `borrow_deadline` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `fine` int(10) NOT NULL DEFAULT '0',
  `givefine` int(10) NOT NULL DEFAULT '0',
  `a_userid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`borrow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of borrow_record
-- ----------------------------
INSERT INTO `borrow_record` VALUES ('1', '1', '5', '2016-05-03', '2016-05-10', null, null, '2016-06-23', '86', '1', 'admin');
INSERT INTO `borrow_record` VALUES ('2', '1', '1', '2016-05-27', '2016-06-03', '2016-06-01', '2016-06-08', '2016-06-05', '0', '0', null);
INSERT INTO `borrow_record` VALUES ('3', '1', '3', '2016-06-02', '2016-06-09', null, null, null, '0', '0', null);
INSERT INTO `borrow_record` VALUES ('4', '1', '2', '2016-06-06', '2016-06-13', null, null, null, '0', '0', null);
INSERT INTO `borrow_record` VALUES ('11', '1', '7', '2016-06-13', '2016-06-20', null, null, null, '0', '0', null);
INSERT INTO `borrow_record` VALUES ('12', '1', '4', '2016-06-23', '2016-06-30', '2016-06-23', '2016-06-30', '2016-06-23', '0', '0', 'admin');
INSERT INTO `borrow_record` VALUES ('13', '1', '6', '2016-06-23', '2016-06-30', null, null, null, '0', '0', null);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` int(10) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `a_userid` varchar(50) NOT NULL,
  `createtime` datetime NOT NULL,
  `updatetime` datetime NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'economic', 'admin', '2016-06-16 20:20:27', '2016-06-17 18:33:46');
INSERT INTO `category` VALUES ('2', 'art', 'admin', '2016-06-16 20:20:31', '2016-06-21 15:45:28');
INSERT INTO `category` VALUES ('3', 'japen', 'admin', '2016-06-16 20:20:34', '2016-06-16 20:23:36');
INSERT INTO `category` VALUES ('4', 'free-time', 'admin', '2016-06-16 20:20:38', '2016-06-17 18:55:15');
INSERT INTO `category` VALUES ('5', 'travel', 'admin', '2016-06-16 20:20:41', '2016-06-16 20:23:43');
INSERT INTO `category` VALUES ('6', 'cook', 'admin', '2016-06-16 20:20:44', '2016-06-16 20:23:46');
INSERT INTO `category` VALUES ('7', 'health', 'admin', '2016-06-16 20:21:13', '2016-06-16 20:23:49');
INSERT INTO `category` VALUES ('8', 'english', 'admin', '2016-06-16 20:22:32', '2016-06-16 20:23:52');
INSERT INTO `category` VALUES ('9', 'insurance', 'admin', '2016-06-16 20:22:35', '2016-06-16 20:23:56');
INSERT INTO `category` VALUES ('10', 'society', 'admin', '2016-06-16 20:22:39', '2016-06-16 20:23:59');
INSERT INTO `category` VALUES ('11', 'psychological', 'admin', '2016-06-16 20:22:42', '2016-06-16 20:24:03');
INSERT INTO `category` VALUES ('12', 'Martial Arts', 'admin', '2016-06-16 20:22:48', '2016-06-16 20:24:07');

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `city_id` int(10) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(50) NOT NULL,
  `a_userid` varchar(50) NOT NULL,
  `createtime` datetime NOT NULL,
  `updatetime` datetime NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', '台北市', 'admin', '2016-06-21 18:33:49', '2016-06-21 18:33:53');
INSERT INTO `city` VALUES ('2', '基隆市', 'admin', '2016-06-21 18:40:48', '2016-06-21 18:40:52');
INSERT INTO `city` VALUES ('3', '新北市', 'admin', '2016-06-21 18:41:10', '2016-06-21 18:41:13');
INSERT INTO `city` VALUES ('4', '宜蘭縣', 'admin', '2016-06-21 18:41:45', '2016-06-21 18:41:48');
INSERT INTO `city` VALUES ('5', '新竹市', 'admin', '2016-06-21 18:42:11', '2016-06-21 18:42:13');
INSERT INTO `city` VALUES ('6', '新竹縣', 'admin', '2016-06-21 18:42:34', '2016-06-21 18:42:38');
INSERT INTO `city` VALUES ('7', '桃園縣', 'admin', '2016-06-21 18:43:21', '2016-06-21 18:43:24');
INSERT INTO `city` VALUES ('8', '苗栗縣', 'admin', '2016-06-21 18:43:50', '2016-06-21 18:43:53');
INSERT INTO `city` VALUES ('9', '台中市', 'admin', '2016-06-21 18:44:12', '2016-06-21 18:44:15');
INSERT INTO `city` VALUES ('10', '彰化縣', 'admin', '2016-06-21 18:44:37', '2016-06-21 18:44:40');
INSERT INTO `city` VALUES ('11', '南投縣', 'admin', '2016-06-21 18:44:59', '2016-06-21 18:45:01');
INSERT INTO `city` VALUES ('12', '嘉義市', 'admin', '2016-06-21 18:45:51', '2016-06-21 18:45:53');
INSERT INTO `city` VALUES ('13', '嘉義縣', 'admin', '2016-06-21 18:46:09', '2016-06-21 18:46:11');
INSERT INTO `city` VALUES ('14', '雲林縣', 'admin', '2016-06-21 18:46:30', '2016-06-21 18:46:33');
INSERT INTO `city` VALUES ('15', '台南市', 'admin', '2016-06-21 18:46:48', '2016-06-21 18:46:50');
INSERT INTO `city` VALUES ('16', '高雄市', 'admin', '2016-06-21 18:47:12', '2016-06-21 18:47:14');
INSERT INTO `city` VALUES ('17', '屏東縣', 'admin', '2016-06-21 18:47:30', '2016-06-21 18:47:32');
INSERT INTO `city` VALUES ('18', '台東縣', 'admin', '2016-06-21 18:47:50', '2016-06-21 18:47:52');
INSERT INTO `city` VALUES ('19', '花蓮縣', 'admin', '2016-06-21 18:48:19', '2016-06-21 18:48:22');
INSERT INTO `city` VALUES ('20', '金門縣', 'admin', '2016-06-21 18:48:39', '2016-06-21 18:48:42');
INSERT INTO `city` VALUES ('21', '連江縣', 'admin', '2016-06-21 18:48:58', '2016-06-21 18:49:00');
INSERT INTO `city` VALUES ('22', '南海諸島', 'admin', '2016-06-21 18:49:30', '2016-06-21 18:49:32');

-- ----------------------------
-- Table structure for contact_form
-- ----------------------------
DROP TABLE IF EXISTS `contact_form`;
CREATE TABLE `contact_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identity` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `useremail` varchar(50) NOT NULL,
  `userphone` varchar(20) NOT NULL,
  `usermessage` text NOT NULL,
  `createtime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact_form
-- ----------------------------
INSERT INTO `contact_form` VALUES ('8', '還可以', '6666', 'chentai008@yahoo.com', '0987855058', 'vvvvvvvvvvvvvv', '2016-06-01 05:15:07');
INSERT INTO `contact_form` VALUES ('9', '很滿意', 'test', 'chentai008@yahoo.com', '0987855058', 'gg', '2016-06-01 05:21:02');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `member_id` int(10) NOT NULL AUTO_INCREMENT,
  `member_account` varchar(255) NOT NULL,
  `member_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `member_email` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `town` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `createtime` datetime NOT NULL,
  `updatetime` datetime NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('1', 'john', 'john', '1234', 'chentai008@yahoo.com', '苗栗縣', '公館鄉', '幸福路5號', '0987855058', '2016-06-04 20:20:24', '2016-06-14 10:24:13');
INSERT INTO `member` VALUES ('2', 'mary', 'mary', '1234', 'chentai008@yahoo.com', '新北市', '板橋區', '長安街5號', '0987855058', '2016-06-06 15:48:40', '2016-06-06 15:48:40');

-- ----------------------------
-- Table structure for newslist
-- ----------------------------
DROP TABLE IF EXISTS `newslist`;
CREATE TABLE `newslist` (
  `n_id` int(11) NOT NULL AUTO_INCREMENT,
  `n_title` varchar(50) NOT NULL,
  `n_content` text NOT NULL,
  `n_date` date NOT NULL,
  `n_order` int(11) NOT NULL,
  `deleteflag` int(11) NOT NULL,
  `createtime` datetime NOT NULL,
  `updatetime` datetime NOT NULL,
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newslist
-- ----------------------------
INSERT INTO `newslist` VALUES ('1', '暑假期間租書,大享優惠!', '6/20~9/20 [租書優惠]\n響應暑假期間,在此階段租書出示學生證都享有95折!', '2016-05-30', '1', '0', '2014-10-15 06:59:29', '2016-06-07 00:44:45');
INSERT INTO `newslist` VALUES ('2', '暑假辦會員 划算划算更划算!', '6/20-9/20 [暑假優惠]\n在此階段辦會員出示學生證,均收8折優惠!', '2014-10-17', '2', '0', '2014-10-17 02:42:26', '2016-06-07 00:46:57');
INSERT INTO `newslist` VALUES ('3', '繳納二代健保補充保費，可於繳納年度之綜合所得稅申報列舉扣除', '本局表示，依所得稅法第17條第1項第2款第2目之2規定，納稅義務人本人、配偶及直系親屬之人身保險、勞工保險及軍、公、教保險之保險費，每人每年扣除數額以不超過2萬4千元為限。但全民健康保險之保險費不受金額限制。二代健保實施後，個人依全民健康保險法規定繳納之補充保險費仍屬健保費，依上開規定，可於繳納年度之綜合所得稅申報保險費全數列舉扣除，不受每年每人2萬4千元的限制。<br/>　　本局特別說明，納稅義務人辦理綜合所得稅結算申報時若選擇採用列舉扣除額，關於保險費項目，首先要符合被保險人與要保人在同一申報戶內。保險費可以分為二部分計算：（1）健保費支出：納稅義務人本人、配偶及申報受扶養直系親屬每人全年健保費由納稅義務人、合併申報的配偶或受扶養親屬繳納者，全部都可以列報扣除，沒有金額的限制；（2）其他保險費支出：納稅義務人本人、配偶或申報受扶養直系親屬人身保險之保險費（含國民年金保險、就業保險、勞工保險、軍公教保險、農保及學生平安保險），每一被保險人每年扣除數額以不超過2萬4千元為限。<br/>　　民眾如有不明瞭之處，歡迎利用本局免費服務電話0800-000321或上本局網站(網址為http://www.ntbna.gov.tw)點選網頁電話詢問，本局將竭誠提供諮詢服務。新聞稿聯絡人：審查二科　廖股長<br/>聯絡電話：03-3396789轉1436<br/>', '2014-10-17', '0', '1', '2014-10-17 02:45:40', '2016-06-07 00:47:06');
INSERT INTO `newslist` VALUES ('4', '預售屋買賣賺取差價屬財產交易所得，應申報綜合所得稅', '本局表示，個人購買預售屋在尚未取得該預售屋（含土地）所有權前出售，係屬「權利」移轉，非屬「不動產」產權移轉，依所得稅法規定，應以交易時之成交價額減除原始取得成本及相關必要費用之餘額為財產交易所得，申報綜合所得稅。<br/>　　本局指出，近年來因部分縣市合併升格為直轄市，造成繁榮地段紛紛推出高科技多功能的高價豪宅，由於預售屋僅需預繳小額訂金，有不少投資客以買賣預售屋賺取高額利潤。　　為維護租稅公平，查核預售屋及鉅額房地交易案件已列為今年度財政部專案查核重點項目，除透過建商、代銷商、房屋買賣仲介業、各縣市政府、網路、報載等管道蒐集資料，並調查相關資金流程查核交易情形，以遏止刻意炒作賺取差價而漏未申報納稅的情事。<br/>　　本局並說明，本局所屬各分局、稽徵所於進行查核前，均會先行發函輔導民眾自行檢視是否已就上開交易所得申報所得稅，請尚未申報民眾依限補報而免予處罰，並提醒民眾應提示買賣契約書、讓渡書及收支憑證，以憑正確計算財產交易所得；民眾如已自行申報，於接獲輔導函後，亦請撥空與本局聯繫，本局將協助查對原申報資料是否正確，如有差額亦可即時補報。<br/>　　本局同時提醒，以前年度如有是類所得而未申報之民眾，在稽徵機關尚未調查或未經他人檢舉前，應儘速向戶籍所在地稽徵機關自動補報補繳及加計利息，否則一經查獲，除須補稅外還要受罰。<br/>新聞稿聯絡人：審查二科廖股長<br/>聯絡電話：03-3396789轉1436<br/>', '2014-10-17', '0', '1', '2014-10-17 02:48:22', '2016-06-07 00:47:11');
INSERT INTO `newslist` VALUES ('5', 'test', 'test', '2014-11-11', '0', '1', '2014-11-11 11:56:31', '2014-11-11 15:08:47');
INSERT INTO `newslist` VALUES ('6', 'test2', 'dddddd', '2014-11-20', '0', '1', '2014-11-11 15:08:16', '2016-06-07 00:47:16');
INSERT INTO `newslist` VALUES ('7', 'test3', 'test3', '2014-11-27', '0', '1', '2014-11-11 15:07:19', '2014-11-11 15:07:41');

-- ----------------------------
-- Table structure for recommend
-- ----------------------------
DROP TABLE IF EXISTS `recommend`;
CREATE TABLE `recommend` (
  `recommend_id` int(10) NOT NULL AUTO_INCREMENT,
  `recommend_name` varchar(255) NOT NULL,
  `a_userid` varchar(50) NOT NULL,
  `createtime` datetime NOT NULL,
  `updatetime` datetime NOT NULL,
  PRIMARY KEY (`recommend_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recommend
-- ----------------------------
INSERT INTO `recommend` VALUES ('1', '我很閒', 'admin', '2016-06-16 20:29:05', '2016-06-16 20:29:23');
INSERT INTO `recommend` VALUES ('2', '我失戀了', 'admin', '2016-06-16 20:29:09', '2016-06-16 20:29:26');
INSERT INTO `recommend` VALUES ('3', '我想衝', 'admin', '2016-06-16 20:29:13', '2016-06-16 20:29:31');
INSERT INTO `recommend` VALUES ('4', '我很窮', 'admin', '2016-06-16 20:29:17', '2016-06-16 20:29:36');
INSERT INTO `recommend` VALUES ('5', '我愛日文', 'admin', '2016-06-16 20:29:20', '2016-06-16 20:29:40');

-- ----------------------------
-- Table structure for town
-- ----------------------------
DROP TABLE IF EXISTS `town`;
CREATE TABLE `town` (
  `town_id` int(10) NOT NULL AUTO_INCREMENT,
  `town_name` varchar(50) NOT NULL,
  `city_id` int(10) NOT NULL,
  `zipcode` int(3) NOT NULL,
  `a_userid` varchar(50) NOT NULL,
  `createtime` datetime NOT NULL,
  `updatetime` datetime NOT NULL,
  PRIMARY KEY (`town_id`)
) ENGINE=InnoDB AUTO_INCREMENT=363 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of town
-- ----------------------------
INSERT INTO `town` VALUES ('1', '中正區', '1', '100', 'admin', '2016-06-21 18:52:27', '2016-06-21 18:52:29');
INSERT INTO `town` VALUES ('2', '大同區', '1', '103', 'admin', '2016-06-21 18:52:53', '2016-06-21 18:52:56');
INSERT INTO `town` VALUES ('3', '中山區', '1', '104', 'admin', '2016-06-21 18:58:38', '2016-06-21 18:58:40');
INSERT INTO `town` VALUES ('4', '松山區', '1', '105', 'admin', '2016-06-21 19:07:42', '2016-06-21 19:10:33');
INSERT INTO `town` VALUES ('5', '大安區', '1', '106', 'admin', '2016-06-21 19:11:07', '2016-06-21 19:11:11');
INSERT INTO `town` VALUES ('6', '萬華區', '1', '108', 'admin', '2016-06-21 19:12:07', '2016-06-21 19:12:10');
INSERT INTO `town` VALUES ('7', '信義區', '1', '110', 'admin', '2016-06-21 19:12:45', '2016-06-21 19:12:47');
INSERT INTO `town` VALUES ('8', '士林區', '1', '111', 'admin', '2016-06-21 19:13:10', '2016-06-21 19:13:13');
INSERT INTO `town` VALUES ('9', '北投區', '1', '112', 'admin', '2016-06-21 19:13:37', '2016-06-21 19:13:40');
INSERT INTO `town` VALUES ('10', '內湖區', '1', '114', 'admin', '2016-06-21 19:14:07', '2016-06-21 19:14:09');
INSERT INTO `town` VALUES ('11', '南港區', '1', '115', 'admin', '2016-06-21 19:14:36', '2016-06-21 19:14:38');
INSERT INTO `town` VALUES ('12', '文山區', '1', '116', 'admin', '2016-06-21 19:15:05', '2016-06-21 19:15:08');
INSERT INTO `town` VALUES ('13', '仁愛區', '2', '200', 'admin', '2016-06-21 19:19:05', '2016-06-21 19:19:08');
INSERT INTO `town` VALUES ('14', '信義區', '2', '201', 'admin', '2016-06-21 19:19:38', '2016-06-21 19:19:40');
INSERT INTO `town` VALUES ('15', '中正區', '2', '202', 'admin', '2016-06-21 19:20:08', '2016-06-21 19:20:10');
INSERT INTO `town` VALUES ('16', '中山區', '2', '203', 'admin', '2016-06-21 19:20:38', '2016-06-21 19:20:40');
INSERT INTO `town` VALUES ('17', '安樂區', '2', '204', 'admin', '2016-06-21 19:28:30', '2016-06-21 19:28:32');
INSERT INTO `town` VALUES ('18', '暖暖區', '2', '205', 'admin', '2016-06-21 19:34:06', '2016-06-21 19:34:08');
INSERT INTO `town` VALUES ('19', '七堵區', '2', '206', 'admin', '2016-06-21 19:34:41', '2016-06-21 19:34:44');
INSERT INTO `town` VALUES ('20', '萬里區', '3', '207', 'admin', '2016-06-21 19:35:39', '2016-06-21 19:35:42');
INSERT INTO `town` VALUES ('21', '金山區', '3', '208', 'admin', '2016-06-21 19:36:11', '2016-06-21 19:36:13');
INSERT INTO `town` VALUES ('22', '板橋區', '3', '220', 'admin', '2016-06-21 19:36:41', '2016-06-21 19:36:44');
INSERT INTO `town` VALUES ('23', '汐止區', '3', '221', 'admin', '2016-06-21 19:37:11', '2016-06-21 19:37:13');
INSERT INTO `town` VALUES ('24', '深坑區', '3', '222', 'admin', '2016-06-21 19:37:40', '2016-06-21 19:37:43');
INSERT INTO `town` VALUES ('25', '石碇區', '3', '223', 'admin', '2016-06-21 19:38:15', '2016-06-21 19:38:18');
INSERT INTO `town` VALUES ('26', '瑞芳區', '3', '224', 'admin', '2016-06-21 19:38:45', '2016-06-21 19:38:47');
INSERT INTO `town` VALUES ('27', '平溪區', '3', '226', 'admin', '2016-06-21 19:39:19', '2016-06-21 19:39:21');
INSERT INTO `town` VALUES ('28', '雙溪區', '3', '227', 'admin', '2016-06-21 19:39:58', '2016-06-21 19:40:00');
INSERT INTO `town` VALUES ('29', '貢寮區', '3', '228', 'admin', '2016-06-21 19:40:23', '2016-06-21 19:40:27');
INSERT INTO `town` VALUES ('30', '新店區', '3', '231', 'admin', '2016-06-21 19:40:57', '2016-06-21 19:40:59');
INSERT INTO `town` VALUES ('31', '坪林區', '3', '232', 'admin', '2016-06-21 19:41:26', '2016-06-21 19:41:28');
INSERT INTO `town` VALUES ('32', '烏來區', '3', '233', 'admin', '2016-06-21 19:41:54', '2016-06-21 19:41:55');
INSERT INTO `town` VALUES ('33', '永和區', '3', '234', 'admin', '2016-06-21 19:42:22', '2016-06-21 19:42:24');
INSERT INTO `town` VALUES ('34', '中和區', '3', '235', 'admin', '2016-06-21 19:42:49', '2016-06-21 19:42:51');
INSERT INTO `town` VALUES ('35', '土城區', '3', '236', 'admin', '2016-06-21 19:43:18', '2016-06-21 19:43:21');
INSERT INTO `town` VALUES ('36', '三峽區', '3', '237', 'admin', '2016-06-21 19:43:46', '2016-06-21 19:43:48');
INSERT INTO `town` VALUES ('37', '樹林區', '3', '238', 'admin', '2016-06-21 19:44:15', '2016-06-21 19:44:18');
INSERT INTO `town` VALUES ('38', '鶯歌區', '3', '239', 'admin', '2016-06-21 19:44:42', '2016-06-21 19:44:45');
INSERT INTO `town` VALUES ('39', '三重區', '3', '241', 'admin', '2016-06-21 19:45:10', '2016-06-21 19:45:12');
INSERT INTO `town` VALUES ('40', '新莊區', '3', '242', 'admin', '2016-06-21 19:45:35', '2016-06-21 19:45:37');
INSERT INTO `town` VALUES ('41', '泰山區', '3', '243', 'admin', '2016-06-21 19:46:05', '2016-06-21 19:46:07');
INSERT INTO `town` VALUES ('42', '林口區', '3', '244', 'admin', '2016-06-21 19:46:33', '2016-06-21 19:46:35');
INSERT INTO `town` VALUES ('43', '蘆洲區', '3', '247', 'admin', '2016-06-21 19:47:05', '2016-06-21 19:47:08');
INSERT INTO `town` VALUES ('44', '五股區', '3', '248', 'admin', '2016-06-21 19:47:30', '2016-06-21 19:47:33');
INSERT INTO `town` VALUES ('45', '八里區', '3', '249', 'admin', '2016-06-21 19:47:58', '2016-06-21 19:47:59');
INSERT INTO `town` VALUES ('46', '淡水區', '3', '251', 'admin', '2016-06-21 19:48:26', '2016-06-21 19:48:28');
INSERT INTO `town` VALUES ('47', '三芝區', '3', '252', 'admin', '2016-06-21 19:48:53', '2016-06-21 19:48:55');
INSERT INTO `town` VALUES ('48', '石門區', '3', '253', 'admin', '2016-06-21 19:49:21', '2016-06-21 19:49:24');
INSERT INTO `town` VALUES ('49', '宜蘭市', '4', '260', 'admin', '2016-06-21 19:51:37', '2016-06-21 19:51:39');
INSERT INTO `town` VALUES ('50', '頭城鎮', '4', '261', 'admin', '2016-06-21 19:52:06', '2016-06-21 19:52:08');
INSERT INTO `town` VALUES ('51', '礁溪鄉', '4', '262', 'admin', '2016-06-21 19:52:38', '2016-06-21 19:52:40');
INSERT INTO `town` VALUES ('52', '壯圍鄉', '4', '263', 'admin', '2016-06-21 19:53:06', '2016-06-21 19:53:08');
INSERT INTO `town` VALUES ('53', '員山鄉', '4', '264', 'admin', '2016-06-21 19:53:40', '2016-06-21 19:53:41');
INSERT INTO `town` VALUES ('54', '羅東鎮', '4', '265', 'admin', '2016-06-21 19:54:07', '2016-06-21 19:54:08');
INSERT INTO `town` VALUES ('55', '三星鄉', '4', '266', 'admin', '2016-06-21 19:54:41', '2016-06-21 19:54:43');
INSERT INTO `town` VALUES ('56', '大同鄉', '4', '267', 'admin', '2016-06-21 19:55:11', '2016-06-21 19:55:12');
INSERT INTO `town` VALUES ('57', '五結鄉', '4', '268', 'admin', '2016-06-21 19:55:37', '2016-06-21 19:55:39');
INSERT INTO `town` VALUES ('58', '冬山鄉', '4', '269', 'admin', '2016-06-21 19:56:04', '2016-06-21 19:56:06');
INSERT INTO `town` VALUES ('59', '蘇澳鎮', '4', '270', 'admin', '2016-06-21 19:56:31', '2016-06-21 19:56:33');
INSERT INTO `town` VALUES ('60', '南澳鄉', '4', '272', 'admin', '2016-06-21 19:56:59', '2016-06-21 19:57:01');
INSERT INTO `town` VALUES ('61', '北區', '5', '300', 'admin', '2016-06-21 19:58:00', '2016-06-21 19:58:02');
INSERT INTO `town` VALUES ('62', '東區', '5', '300', 'admin', '2016-06-21 19:58:35', '2016-06-21 19:58:37');
INSERT INTO `town` VALUES ('63', '香山區', '5', '300', 'admin', '2016-06-21 19:59:07', '2016-06-21 19:59:09');
INSERT INTO `town` VALUES ('64', '竹北市', '6', '302', 'admin', '2016-06-21 20:00:03', '2016-06-21 20:00:05');
INSERT INTO `town` VALUES ('65', '湖口鄉', '6', '303', 'admin', '2016-06-21 20:00:34', '2016-06-21 20:00:36');
INSERT INTO `town` VALUES ('66', '新豐鄉', '6', '304', 'admin', '2016-06-21 20:01:03', '2016-06-21 20:01:05');
INSERT INTO `town` VALUES ('67', '新埔鎮', '6', '305', 'admin', '2016-06-21 20:01:32', '2016-06-21 20:01:34');
INSERT INTO `town` VALUES ('68', '關西鎮', '6', '306', 'admin', '2016-06-21 20:02:01', '2016-06-21 20:02:03');
INSERT INTO `town` VALUES ('69', '芎林鄉', '6', '307', 'admin', '2016-06-21 20:02:34', '2016-06-21 20:02:37');
INSERT INTO `town` VALUES ('70', '寶山鄉', '6', '308', 'admin', '2016-06-21 20:03:05', '2016-06-21 20:03:07');
INSERT INTO `town` VALUES ('71', '竹東鎮', '6', '310', 'admin', '2016-06-21 20:04:03', '2016-06-21 20:04:04');
INSERT INTO `town` VALUES ('72', '五峰鄉', '6', '311', 'admin', '2016-06-21 20:04:31', '2016-06-21 20:04:34');
INSERT INTO `town` VALUES ('73', '橫山鄉', '6', '312', 'admin', '2016-06-21 20:04:59', '2016-06-21 20:05:01');
INSERT INTO `town` VALUES ('74', '尖石鄉', '6', '313', 'admin', '2016-06-21 20:05:27', '2016-06-21 20:05:32');
INSERT INTO `town` VALUES ('75', '北埔鄉', '6', '314', 'admin', '2016-06-21 20:11:05', '2016-06-21 20:11:07');
INSERT INTO `town` VALUES ('76', '峨眉鄉', '6', '315', 'admin', '2016-06-21 20:11:28', '2016-06-21 20:11:30');
INSERT INTO `town` VALUES ('77', '中壢市', '7', '320', 'admin', '2016-06-21 20:12:39', '2016-06-21 20:12:41');
INSERT INTO `town` VALUES ('78', '平鎮市', '7', '324', 'admin', '2016-06-21 20:13:02', '2016-06-21 20:13:04');
INSERT INTO `town` VALUES ('79', '龍潭鄉', '7', '325', 'admin', '2016-06-21 20:13:26', '2016-06-21 20:13:27');
INSERT INTO `town` VALUES ('80', '楊梅市', '7', '326', 'admin', '2016-06-21 20:13:54', '2016-06-21 20:13:57');
INSERT INTO `town` VALUES ('81', '新屋鄉', '7', '327', 'admin', '2016-06-21 20:14:28', '2016-06-21 20:14:30');
INSERT INTO `town` VALUES ('82', '觀音鄉', '7', '328', 'admin', '2016-06-21 20:14:57', '2016-06-21 20:14:59');
INSERT INTO `town` VALUES ('83', '桃園市', '7', '330', 'admin', '2016-06-21 20:15:23', '2016-06-21 20:15:24');
INSERT INTO `town` VALUES ('84', '龜山鄉', '7', '333', 'admin', '2016-06-21 20:15:49', '2016-06-21 20:15:50');
INSERT INTO `town` VALUES ('85', '八德市', '7', '334', 'admin', '2016-06-21 20:16:25', '2016-06-21 20:16:27');
INSERT INTO `town` VALUES ('86', '大溪鎮', '7', '335', 'admin', '2016-06-21 20:16:56', '2016-06-21 20:16:58');
INSERT INTO `town` VALUES ('87', '復興鄉', '7', '336', 'admin', '2016-06-21 20:17:22', '2016-06-21 20:17:24');
INSERT INTO `town` VALUES ('88', '大園鄉', '7', '337', 'admin', '2016-06-21 20:17:48', '2016-06-21 20:17:51');
INSERT INTO `town` VALUES ('89', '蘆竹鄉', '7', '338', 'admin', '2016-06-21 20:18:14', '2016-06-21 20:18:16');
INSERT INTO `town` VALUES ('90', '竹南鎮', '8', '350', 'admin', '2016-06-21 20:19:21', '2016-06-21 20:19:23');
INSERT INTO `town` VALUES ('91', '頭份鎮', '8', '351', 'admin', '2016-06-21 20:19:48', '2016-06-21 20:19:50');
INSERT INTO `town` VALUES ('92', '三灣鄉', '8', '352', 'admin', '2016-06-21 20:20:20', '2016-06-21 20:20:22');
INSERT INTO `town` VALUES ('93', '南庄鄉', '8', '353', 'admin', '2016-06-21 20:21:07', '2016-06-21 20:21:09');
INSERT INTO `town` VALUES ('94', '獅潭鄉', '8', '354', 'admin', '2016-06-21 20:21:52', '2016-06-21 20:21:54');
INSERT INTO `town` VALUES ('95', '後龍鎮', '8', '356', 'admin', '2016-06-21 20:22:21', '2016-06-21 20:22:23');
INSERT INTO `town` VALUES ('96', '通霄鎮', '8', '357', 'admin', '2016-06-21 20:22:50', '2016-06-21 20:22:52');
INSERT INTO `town` VALUES ('97', '苑裡鎮', '8', '358', 'admin', '2016-06-21 20:24:25', '2016-06-21 20:24:27');
INSERT INTO `town` VALUES ('98', '苗栗市', '8', '360', 'admin', '2016-06-21 20:24:51', '2016-06-21 20:24:53');
INSERT INTO `town` VALUES ('99', '造橋鄉', '8', '361', 'admin', '2016-06-21 20:25:17', '2016-06-21 20:25:19');
INSERT INTO `town` VALUES ('100', '頭屋鄉', '8', '362', 'admin', '2016-06-21 20:25:52', '2016-06-21 20:25:54');
INSERT INTO `town` VALUES ('101', '公館鄉', '8', '363', 'admin', '2016-06-21 20:26:37', '2016-06-21 20:26:39');
INSERT INTO `town` VALUES ('102', '大湖鄉', '8', '364', 'admin', '2016-06-21 20:27:06', '2016-06-21 20:27:09');
INSERT INTO `town` VALUES ('103', '泰安鄉', '8', '365', 'admin', '2016-06-21 20:27:52', '2016-06-21 20:27:54');
INSERT INTO `town` VALUES ('104', '銅鑼鄉', '8', '366', 'admin', '2016-06-21 20:28:20', '2016-06-21 20:28:22');
INSERT INTO `town` VALUES ('105', '三義鄉', '8', '367', 'admin', '2016-06-21 20:28:46', '2016-06-21 20:28:48');
INSERT INTO `town` VALUES ('106', '西湖鄉', '8', '368', 'admin', '2016-06-21 20:29:13', '2016-06-21 20:29:16');
INSERT INTO `town` VALUES ('107', '卓蘭鎮', '8', '369', 'admin', '2016-06-21 20:29:39', '2016-06-21 20:29:40');
INSERT INTO `town` VALUES ('108', '中區', '9', '400', 'admin', '2016-06-21 20:30:55', '2016-06-21 20:30:57');
INSERT INTO `town` VALUES ('109', '東區', '9', '401', 'admin', '2016-06-21 20:31:52', '2016-06-21 20:31:54');
INSERT INTO `town` VALUES ('110', '南區', '9', '402', 'admin', '2016-06-21 20:32:18', '2016-06-21 20:32:21');
INSERT INTO `town` VALUES ('111', '西區', '9', '403', 'admin', '2016-06-21 20:32:50', '2016-06-21 20:32:52');
INSERT INTO `town` VALUES ('112', '北區', '9', '404', 'admin', '2016-06-21 20:33:40', '2016-06-21 20:33:43');
INSERT INTO `town` VALUES ('113', '北屯區', '9', '406', 'admin', '2016-06-21 20:34:08', '2016-06-21 20:34:10');
INSERT INTO `town` VALUES ('114', '西屯區', '9', '407', 'admin', '2016-06-21 20:34:35', '2016-06-21 20:34:37');
INSERT INTO `town` VALUES ('115', '南屯區', '9', '408', 'admin', '2016-06-21 20:35:15', '2016-06-21 20:35:17');
INSERT INTO `town` VALUES ('116', '太平區', '9', '411', 'admin', '2016-06-21 20:36:14', '2016-06-21 20:36:16');
INSERT INTO `town` VALUES ('117', '大里區', '9', '412', 'admin', '2016-06-21 20:37:11', '2016-06-21 20:37:14');
INSERT INTO `town` VALUES ('118', '霧峰區', '9', '413', 'admin', '2016-06-21 20:37:41', '2016-06-21 20:37:42');
INSERT INTO `town` VALUES ('119', '烏日區', '9', '414', 'admin', '2016-06-21 20:38:09', '2016-06-21 20:38:10');
INSERT INTO `town` VALUES ('120', '豐原區', '9', '420', 'admin', '2016-06-21 20:38:41', '2016-06-21 20:38:43');
INSERT INTO `town` VALUES ('121', '后里區', '9', '421', 'admin', '2016-06-21 20:39:10', '2016-06-21 20:39:12');
INSERT INTO `town` VALUES ('122', '石岡區', '9', '422', 'admin', '2016-06-21 20:39:56', '2016-06-21 20:39:59');
INSERT INTO `town` VALUES ('123', '東勢區', '9', '423', 'admin', '2016-06-21 20:40:25', '2016-06-21 20:40:27');
INSERT INTO `town` VALUES ('124', '和平區', '9', '424', 'admin', '2016-06-21 20:40:52', '2016-06-21 20:40:54');
INSERT INTO `town` VALUES ('125', '新社區', '9', '426', 'admin', '2016-06-21 20:41:17', '2016-06-21 20:41:20');
INSERT INTO `town` VALUES ('126', '潭子區', '9', '427', 'admin', '2016-06-21 20:41:45', '2016-06-21 20:41:47');
INSERT INTO `town` VALUES ('127', '大雅區', '9', '428', 'admin', '2016-06-21 20:42:15', '2016-06-21 20:42:18');
INSERT INTO `town` VALUES ('128', '神岡區', '9', '429', 'admin', '2016-06-21 20:42:43', '2016-06-21 20:42:47');
INSERT INTO `town` VALUES ('129', '大肚區', '9', '432', 'admin', '2016-06-21 20:43:17', '2016-06-21 20:43:19');
INSERT INTO `town` VALUES ('130', '沙鹿區', '9', '433', 'admin', '2016-06-21 20:43:54', '2016-06-21 20:43:56');
INSERT INTO `town` VALUES ('131', '龍井區', '9', '434', 'admin', '2016-06-21 20:44:20', '2016-06-21 20:44:21');
INSERT INTO `town` VALUES ('132', '梧棲區', '9', '435', 'admin', '2016-06-21 20:44:51', '2016-06-21 20:44:53');
INSERT INTO `town` VALUES ('133', '清水區', '9', '436', 'admin', '2016-06-21 20:45:26', '2016-06-21 20:45:28');
INSERT INTO `town` VALUES ('134', '大甲區', '9', '437', 'admin', '2016-06-21 20:45:52', '2016-06-21 20:45:53');
INSERT INTO `town` VALUES ('135', '外埔區', '9', '438', 'admin', '2016-06-21 20:46:17', '2016-06-21 20:46:19');
INSERT INTO `town` VALUES ('136', '大安區', '9', '439', 'admin', '2016-06-21 20:46:45', '2016-06-21 20:46:46');
INSERT INTO `town` VALUES ('137', '彰化市', '10', '500', 'admin', '2016-06-21 20:48:50', '2016-06-21 20:48:53');
INSERT INTO `town` VALUES ('138', '芬園鄉', '10', '502', 'admin', '2016-06-21 20:49:23', '2016-06-21 20:49:25');
INSERT INTO `town` VALUES ('139', '花壇鄉', '10', '503', 'admin', '2016-06-21 20:49:48', '2016-06-21 20:49:51');
INSERT INTO `town` VALUES ('140', '秀水鄉', '10', '504', 'admin', '2016-06-21 20:50:20', '2016-06-21 20:50:21');
INSERT INTO `town` VALUES ('141', '鹿港鎮', '10', '505', 'admin', '2016-06-21 20:50:58', '2016-06-21 20:51:00');
INSERT INTO `town` VALUES ('142', '福興鄉', '10', '506', 'admin', '2016-06-21 20:52:39', '2016-06-21 20:52:41');
INSERT INTO `town` VALUES ('143', '線西鄉', '10', '507', 'admin', '2016-06-21 20:53:05', '2016-06-21 20:53:07');
INSERT INTO `town` VALUES ('144', '和美鎮', '10', '508', 'admin', '2016-06-21 20:53:32', '2016-06-21 20:53:33');
INSERT INTO `town` VALUES ('145', '伸港鄉', '10', '509', 'admin', '2016-06-21 20:53:57', '2016-06-21 20:53:59');
INSERT INTO `town` VALUES ('146', '員林鎮', '10', '510', 'admin', '2016-06-21 20:54:24', '2016-06-21 20:54:25');
INSERT INTO `town` VALUES ('147', '社頭鄉', '10', '511', 'admin', '2016-06-21 20:54:49', '2016-06-21 20:54:51');
INSERT INTO `town` VALUES ('148', '永靖鄉', '10', '512', 'admin', '2016-06-21 20:55:22', '2016-06-21 20:55:25');
INSERT INTO `town` VALUES ('149', '埔心鄉', '10', '513', 'admin', '2016-06-21 20:55:47', '2016-06-21 20:55:49');
INSERT INTO `town` VALUES ('150', '溪湖鎮', '10', '514', 'admin', '2016-06-21 20:56:14', '2016-06-21 20:56:16');
INSERT INTO `town` VALUES ('151', '大村鄉', '10', '515', 'admin', '2016-06-21 20:56:40', '2016-06-21 20:56:42');
INSERT INTO `town` VALUES ('152', '埔鹽鄉', '10', '516', 'admin', '2016-06-21 20:58:04', '2016-06-21 20:58:06');
INSERT INTO `town` VALUES ('153', '田中鎮', '10', '520', 'admin', '2016-06-21 20:59:01', '2016-06-21 20:59:03');
INSERT INTO `town` VALUES ('154', '北斗鎮', '10', '521', 'admin', '2016-06-21 20:59:27', '2016-06-21 20:59:29');
INSERT INTO `town` VALUES ('155', '田尾鄉', '10', '522', 'admin', '2016-06-21 20:59:57', '2016-06-21 20:59:59');
INSERT INTO `town` VALUES ('156', '埤頭鄉', '10', '523', 'admin', '2016-06-21 21:00:25', '2016-06-21 21:00:27');
INSERT INTO `town` VALUES ('157', '溪州鄉', '10', '524', 'admin', '2016-06-21 21:00:52', '2016-06-21 21:00:53');
INSERT INTO `town` VALUES ('158', '竹塘鄉', '10', '525', 'admin', '2016-06-21 21:01:19', '2016-06-21 21:01:21');
INSERT INTO `town` VALUES ('159', '二林鎮', '10', '526', 'admin', '2016-06-21 21:01:47', '2016-06-21 21:01:49');
INSERT INTO `town` VALUES ('160', '大城鄉', '10', '527', 'admin', '2016-06-21 21:04:21', '2016-06-21 21:04:23');
INSERT INTO `town` VALUES ('161', '芳苑鄉', '10', '528', 'admin', '2016-06-21 21:04:50', '2016-06-21 21:04:52');
INSERT INTO `town` VALUES ('162', '二水鄉', '10', '530', 'admin', '2016-06-21 21:06:15', '2016-06-21 21:06:19');
INSERT INTO `town` VALUES ('163', '南投市', '11', '540', 'admin', '2016-06-21 21:21:55', '2016-06-21 21:21:57');
INSERT INTO `town` VALUES ('164', '中寮鄉', '11', '541', 'admin', '2016-06-21 21:24:37', '2016-06-21 21:24:38');
INSERT INTO `town` VALUES ('165', '草屯鎮', '11', '542', 'admin', '2016-06-21 21:41:42', '2016-06-21 21:41:45');
INSERT INTO `town` VALUES ('166', '國姓鄉', '11', '544', 'admin', '2016-06-21 21:48:04', '2016-06-21 21:48:06');
INSERT INTO `town` VALUES ('167', '埔里鎮', '11', '545', 'admin', '2016-06-21 22:08:13', '2016-06-21 22:08:16');
INSERT INTO `town` VALUES ('168', '仁愛鄉', '11', '546', 'admin', '2016-06-21 22:08:59', '2016-06-21 22:09:01');
INSERT INTO `town` VALUES ('169', '名間鄉', '11', '551', 'admin', '2016-06-21 22:10:49', '2016-06-21 22:10:51');
INSERT INTO `town` VALUES ('170', '集集鎮', '11', '552', 'admin', '2016-06-21 22:12:54', '2016-06-21 22:12:57');
INSERT INTO `town` VALUES ('171', '水里鄉', '11', '553', 'admin', '2016-06-21 22:13:33', '2016-06-21 22:13:36');
INSERT INTO `town` VALUES ('172', '魚池鄉', '11', '555', 'admin', '2016-06-21 22:14:00', '2016-06-21 22:14:02');
INSERT INTO `town` VALUES ('173', '信義鄉', '11', '556', 'admin', '2016-06-21 22:14:27', '2016-06-21 22:14:29');
INSERT INTO `town` VALUES ('174', '竹山鎮', '11', '557', 'admin', '2016-06-21 22:15:00', '2016-06-21 22:15:06');
INSERT INTO `town` VALUES ('175', '鹿谷鄉', '11', '558', 'admin', '2016-06-21 22:15:46', '2016-06-21 22:15:48');
INSERT INTO `town` VALUES ('176', '西區', '12', '600', 'admin', '2016-06-21 22:17:08', '2016-06-21 22:17:10');
INSERT INTO `town` VALUES ('177', '東區', '12', '600', 'admin', '2016-06-21 22:17:29', '2016-06-21 22:17:31');
INSERT INTO `town` VALUES ('178', '番路鄉', '13', '602', 'admin', '2016-06-21 22:20:10', '2016-06-21 22:20:12');
INSERT INTO `town` VALUES ('179', '梅山鄉', '13', '603', 'admin', '2016-06-21 22:20:41', '2016-06-21 22:20:43');
INSERT INTO `town` VALUES ('180', '竹崎鄉', '13', '604', 'admin', '2016-06-21 22:21:09', '2016-06-21 22:21:11');
INSERT INTO `town` VALUES ('181', '阿里山鄉', '13', '605', 'admin', '2016-06-21 22:21:36', '2016-06-21 22:21:38');
INSERT INTO `town` VALUES ('182', '中埔鄉', '13', '606', 'admin', '2016-06-21 22:22:28', '2016-06-21 22:22:30');
INSERT INTO `town` VALUES ('183', '大埔鄉', '13', '607', 'admin', '2016-06-21 22:22:55', '2016-06-21 22:22:57');
INSERT INTO `town` VALUES ('184', '水上鄉', '13', '608', 'admin', '2016-06-21 22:23:25', '2016-06-21 22:23:27');
INSERT INTO `town` VALUES ('185', '鹿草鄉', '13', '611', 'admin', '2016-06-21 22:23:57', '2016-06-21 22:23:59');
INSERT INTO `town` VALUES ('186', '太保市', '13', '612', 'admin', '2016-06-21 22:25:01', '2016-06-21 22:25:03');
INSERT INTO `town` VALUES ('187', '朴子市', '13', '613', 'admin', '2016-06-21 22:25:29', '2016-06-21 22:25:30');
INSERT INTO `town` VALUES ('188', '東石鄉', '13', '614', 'admin', '2016-06-21 22:25:54', '2016-06-21 22:25:56');
INSERT INTO `town` VALUES ('189', '六腳鄉', '13', '615', 'admin', '2016-06-21 22:26:19', '2016-06-21 22:26:23');
INSERT INTO `town` VALUES ('190', '新港鄉', '13', '616', 'admin', '2016-06-21 22:26:58', '2016-06-21 22:27:00');
INSERT INTO `town` VALUES ('191', '民雄鄉', '13', '621', 'admin', '2016-06-21 22:27:31', '2016-06-21 22:27:33');
INSERT INTO `town` VALUES ('192', '大林鎮', '13', '622', 'admin', '2016-06-21 22:27:57', '2016-06-21 22:28:00');
INSERT INTO `town` VALUES ('193', '溪口鄉', '13', '623', 'admin', '2016-06-21 22:28:22', '2016-06-21 22:28:24');
INSERT INTO `town` VALUES ('194', '義竹鄉', '13', '624', 'admin', '2016-06-21 22:28:54', '2016-06-21 22:28:57');
INSERT INTO `town` VALUES ('195', '布袋鎮', '13', '625', 'admin', '2016-06-21 22:29:28', '2016-06-21 22:29:30');
INSERT INTO `town` VALUES ('196', '斗南鎮', '14', '630', 'admin', '2016-06-21 22:31:42', '2016-06-21 22:31:43');
INSERT INTO `town` VALUES ('197', '大埤鄉', '14', '631', 'admin', '2016-06-21 22:32:11', '2016-06-21 22:32:13');
INSERT INTO `town` VALUES ('198', '虎尾鎮', '14', '632', 'admin', '2016-06-21 22:32:37', '2016-06-21 22:32:39');
INSERT INTO `town` VALUES ('199', '土庫鎮', '14', '633', 'admin', '2016-06-21 22:33:02', '2016-06-21 22:33:03');
INSERT INTO `town` VALUES ('200', '褒忠鄉', '14', '634', 'admin', '2016-06-21 22:33:30', '2016-06-21 22:33:32');
INSERT INTO `town` VALUES ('201', '東勢鄉', '14', '635', 'admin', '2016-06-21 22:34:05', '2016-06-21 22:34:07');
INSERT INTO `town` VALUES ('202', '台西鄉', '14', '636', 'admin', '2016-06-21 22:34:30', '2016-06-21 22:34:31');
INSERT INTO `town` VALUES ('203', '崙背鄉', '14', '637', 'admin', '2016-06-21 22:34:55', '2016-06-21 22:34:56');
INSERT INTO `town` VALUES ('204', '麥寮鄉', '14', '638', 'admin', '2016-06-21 22:35:26', '2016-06-21 22:35:28');
INSERT INTO `town` VALUES ('205', '斗六市', '14', '640', 'admin', '2016-06-21 22:35:55', '2016-06-21 22:35:57');
INSERT INTO `town` VALUES ('206', '林內鄉', '14', '643', 'admin', '2016-06-21 22:36:21', '2016-06-21 22:36:23');
INSERT INTO `town` VALUES ('207', '古坑鄉', '14', '646', 'admin', '2016-06-21 22:36:49', '2016-06-21 22:36:51');
INSERT INTO `town` VALUES ('208', '莿桐鄉', '14', '647', 'admin', '2016-06-21 22:37:22', '2016-06-21 22:37:26');
INSERT INTO `town` VALUES ('209', '西螺鎮', '14', '648', 'admin', '2016-06-21 22:37:50', '2016-06-21 22:37:52');
INSERT INTO `town` VALUES ('210', '二崙鄉', '14', '649', 'admin', '2016-06-21 22:38:15', '2016-06-21 22:38:18');
INSERT INTO `town` VALUES ('211', '北港鎮', '14', '651', 'admin', '2016-06-21 22:38:40', '2016-06-21 22:38:42');
INSERT INTO `town` VALUES ('212', '水林鄉', '14', '652', 'admin', '2016-06-21 22:39:05', '2016-06-21 22:39:07');
INSERT INTO `town` VALUES ('213', '口湖鄉', '14', '653', 'admin', '2016-06-21 22:39:31', '2016-06-21 22:39:33');
INSERT INTO `town` VALUES ('214', '四湖鄉', '14', '654', 'admin', '2016-06-21 22:39:57', '2016-06-21 22:40:00');
INSERT INTO `town` VALUES ('215', '元長鄉', '14', '655', 'admin', '2016-06-21 22:40:23', '2016-06-21 22:40:25');
INSERT INTO `town` VALUES ('216', '中西區', '15', '700', 'admin', '2016-06-21 22:42:29', '2016-06-21 22:42:31');
INSERT INTO `town` VALUES ('217', '東區', '15', '701', 'admin', '2016-06-21 22:42:54', '2016-06-21 22:42:56');
INSERT INTO `town` VALUES ('218', '南區', '15', '702', 'admin', '2016-06-21 22:43:20', '2016-06-21 22:43:22');
INSERT INTO `town` VALUES ('219', '北區', '15', '704', 'admin', '2016-06-21 22:43:48', '2016-06-21 22:43:50');
INSERT INTO `town` VALUES ('220', '安平區', '15', '708', 'admin', '2016-06-21 22:45:00', '2016-06-21 22:45:02');
INSERT INTO `town` VALUES ('221', '安南區', '15', '709', 'admin', '2016-06-21 22:46:08', '2016-06-21 22:46:10');
INSERT INTO `town` VALUES ('222', '永康區', '15', '710', 'admin', '2016-06-21 22:48:04', '2016-06-21 22:48:06');
INSERT INTO `town` VALUES ('223', '歸仁區', '15', '711', 'admin', '2016-06-21 22:48:37', '2016-06-21 22:48:39');
INSERT INTO `town` VALUES ('224', '新化區', '15', '712', 'admin', '2016-06-21 22:49:02', '2016-06-21 22:49:05');
INSERT INTO `town` VALUES ('225', '左鎮區', '15', '713', 'admin', '2016-06-21 22:50:15', '2016-06-21 22:50:17');
INSERT INTO `town` VALUES ('226', '玉井區', '15', '714', 'admin', '2016-06-21 22:50:43', '2016-06-21 22:50:45');
INSERT INTO `town` VALUES ('227', '楠西區', '15', '715', 'admin', '2016-06-21 22:51:11', '2016-06-21 22:51:13');
INSERT INTO `town` VALUES ('228', '南化區', '15', '716', 'admin', '2016-06-21 22:51:43', '2016-06-21 22:51:46');
INSERT INTO `town` VALUES ('229', '仁德區', '15', '717', 'admin', '2016-06-21 22:52:12', '2016-06-21 22:52:15');
INSERT INTO `town` VALUES ('230', '關廟區', '15', '718', 'admin', '2016-06-21 22:52:39', '2016-06-21 22:52:41');
INSERT INTO `town` VALUES ('231', '龍崎區', '15', '719', 'admin', '2016-06-21 22:53:08', '2016-06-21 22:53:10');
INSERT INTO `town` VALUES ('232', '官田區', '15', '720', 'admin', '2016-06-21 22:53:42', '2016-06-21 22:53:45');
INSERT INTO `town` VALUES ('233', '麻豆區', '15', '721', 'admin', '2016-06-21 22:54:15', '2016-06-21 22:54:16');
INSERT INTO `town` VALUES ('234', '佳里區', '15', '722', 'admin', '2016-06-21 22:54:46', '2016-06-21 22:54:48');
INSERT INTO `town` VALUES ('235', '西港區', '15', '723', 'admin', '2016-06-21 22:55:12', '2016-06-21 22:55:15');
INSERT INTO `town` VALUES ('236', '七股區', '15', '724', 'admin', '2016-06-21 22:55:37', '2016-06-21 22:55:39');
INSERT INTO `town` VALUES ('237', '將軍區', '15', '725', 'admin', '2016-06-21 22:56:12', '2016-06-21 22:56:15');
INSERT INTO `town` VALUES ('238', '學甲區', '15', '726', 'admin', '2016-06-21 22:56:48', '2016-06-21 22:56:52');
INSERT INTO `town` VALUES ('239', '北門區', '15', '727', 'admin', '2016-06-21 22:57:16', '2016-06-21 22:57:18');
INSERT INTO `town` VALUES ('240', '新營區', '15', '730', 'admin', '2016-06-21 22:57:43', '2016-06-21 22:57:45');
INSERT INTO `town` VALUES ('241', '後壁區', '15', '731', 'admin', '2016-06-21 22:58:08', '2016-06-21 22:58:11');
INSERT INTO `town` VALUES ('242', '白河區', '15', '732', 'admin', '2016-06-21 22:58:34', '2016-06-21 22:58:37');
INSERT INTO `town` VALUES ('243', '東山區', '15', '733', 'admin', '2016-06-21 22:59:02', '2016-06-21 22:59:04');
INSERT INTO `town` VALUES ('244', '六甲區', '15', '734', 'admin', '2016-06-21 22:59:31', '2016-06-21 22:59:33');
INSERT INTO `town` VALUES ('245', '下營區', '15', '735', 'admin', '2016-06-21 23:00:08', '2016-06-21 23:00:10');
INSERT INTO `town` VALUES ('246', '柳營區', '15', '736', 'admin', '2016-06-21 23:00:34', '2016-06-21 23:00:36');
INSERT INTO `town` VALUES ('247', '鹽水區', '15', '737', 'admin', '2016-06-21 23:01:00', '2016-06-21 23:01:04');
INSERT INTO `town` VALUES ('248', '善化區', '15', '741', 'admin', '2016-06-21 23:01:31', '2016-06-21 23:01:33');
INSERT INTO `town` VALUES ('249', '大內區', '15', '742', 'admin', '2016-06-21 23:01:58', '2016-06-21 23:01:59');
INSERT INTO `town` VALUES ('250', '山上區', '15', '743', 'admin', '2016-06-21 23:02:22', '2016-06-21 23:02:24');
INSERT INTO `town` VALUES ('251', '新市區', '15', '744', 'admin', '2016-06-21 23:02:49', '2016-06-21 23:02:51');
INSERT INTO `town` VALUES ('252', '安定區', '15', '745', 'admin', '2016-06-21 23:03:16', '2016-06-21 23:03:18');
INSERT INTO `town` VALUES ('253', '新興區', '16', '800', 'admin', '2016-06-21 23:07:22', '2016-06-21 23:07:24');
INSERT INTO `town` VALUES ('254', '前金區', '16', '801', 'admin', '2016-06-21 23:07:44', '2016-06-21 23:07:46');
INSERT INTO `town` VALUES ('255', '苓雅區', '16', '802', 'admin', '2016-06-21 23:08:19', '2016-06-21 23:08:21');
INSERT INTO `town` VALUES ('256', '鹽埕區', '16', '803', 'admin', '2016-06-21 23:08:49', '2016-06-21 23:08:51');
INSERT INTO `town` VALUES ('257', '鼓山區', '16', '804', 'admin', '2016-06-21 23:09:31', '2016-06-21 23:09:33');
INSERT INTO `town` VALUES ('258', '旗津區', '16', '805', 'admin', '2016-06-21 23:10:15', '2016-06-21 23:10:16');
INSERT INTO `town` VALUES ('259', '前鎮區', '16', '806', 'admin', '2016-06-21 23:11:10', '2016-06-21 23:11:12');
INSERT INTO `town` VALUES ('260', '三民區', '16', '807', 'admin', '2016-06-21 23:11:36', '2016-06-21 23:11:37');
INSERT INTO `town` VALUES ('261', '楠梓區', '16', '811', 'admin', '2016-06-21 23:12:09', '2016-06-21 23:12:11');
INSERT INTO `town` VALUES ('262', '小港區', '16', '812', 'admin', '2016-06-21 23:12:38', '2016-06-21 23:12:41');
INSERT INTO `town` VALUES ('263', '左營區', '16', '813', 'admin', '2016-06-21 23:13:14', '2016-06-21 23:13:15');
INSERT INTO `town` VALUES ('264', '仁武區', '16', '814', 'admin', '2016-06-21 23:13:38', '2016-06-21 23:13:40');
INSERT INTO `town` VALUES ('265', '大社區', '16', '815', 'admin', '2016-06-21 23:14:02', '2016-06-21 23:14:05');
INSERT INTO `town` VALUES ('266', '岡山區', '16', '820', 'admin', '2016-06-21 23:14:31', '2016-06-21 23:14:33');
INSERT INTO `town` VALUES ('267', '路竹區', '16', '821', 'admin', '2016-06-21 23:14:57', '2016-06-21 23:14:59');
INSERT INTO `town` VALUES ('268', '阿蓮區', '16', '822', 'admin', '2016-06-21 23:15:24', '2016-06-21 23:15:26');
INSERT INTO `town` VALUES ('269', '田寮區', '16', '823', 'admin', '2016-06-21 23:15:49', '2016-06-21 23:15:51');
INSERT INTO `town` VALUES ('270', '燕巢區', '16', '824', 'admin', '2016-06-21 23:16:18', '2016-06-21 23:16:20');
INSERT INTO `town` VALUES ('271', '橋頭區', '16', '825', 'admin', '2016-06-21 23:16:48', '2016-06-21 23:16:50');
INSERT INTO `town` VALUES ('272', '梓官區', '16', '826', 'admin', '2016-06-21 23:17:15', '2016-06-21 23:17:16');
INSERT INTO `town` VALUES ('273', '彌陀區', '16', '827', 'admin', '2016-06-21 23:17:39', '2016-06-21 23:17:41');
INSERT INTO `town` VALUES ('274', '永安區', '16', '828', 'admin', '2016-06-21 23:18:03', '2016-06-21 23:18:05');
INSERT INTO `town` VALUES ('275', '湖內區', '16', '829', 'admin', '2016-06-21 23:18:32', '2016-06-21 23:18:34');
INSERT INTO `town` VALUES ('276', '鳳山區', '16', '830', 'admin', '2016-06-21 23:19:00', '2016-06-21 23:19:02');
INSERT INTO `town` VALUES ('277', '大寮區', '16', '831', 'admin', '2016-06-21 23:19:27', '2016-06-21 23:19:29');
INSERT INTO `town` VALUES ('278', '林園區', '16', '832', 'admin', '2016-06-21 23:19:53', '2016-06-21 23:19:56');
INSERT INTO `town` VALUES ('279', '鳥松區', '16', '833', 'admin', '2016-06-21 23:20:20', '2016-06-21 23:20:22');
INSERT INTO `town` VALUES ('280', '大樹區', '16', '840', 'admin', '2016-06-21 23:20:48', '2016-06-21 23:20:52');
INSERT INTO `town` VALUES ('281', '旗山區', '16', '842', 'admin', '2016-06-21 23:21:15', '2016-06-21 23:21:16');
INSERT INTO `town` VALUES ('282', '美濃區', '16', '843', 'admin', '2016-06-21 23:21:40', '2016-06-21 23:21:42');
INSERT INTO `town` VALUES ('283', '六龜區', '16', '844', 'admin', '2016-06-21 23:22:07', '2016-06-21 23:22:09');
INSERT INTO `town` VALUES ('284', '內門區', '16', '845', 'admin', '2016-06-21 23:22:31', '2016-06-21 23:22:33');
INSERT INTO `town` VALUES ('285', '杉林區', '16', '846', 'admin', '2016-06-21 23:22:56', '2016-06-21 23:22:57');
INSERT INTO `town` VALUES ('286', '甲仙區', '16', '847', 'admin', '2016-06-21 23:24:04', '2016-06-21 23:24:07');
INSERT INTO `town` VALUES ('287', '桃源區', '16', '848', 'admin', '2016-06-21 23:24:34', '2016-06-21 23:24:35');
INSERT INTO `town` VALUES ('288', '那瑪夏區', '16', '849', 'admin', '2016-06-21 23:25:00', '2016-06-21 23:25:03');
INSERT INTO `town` VALUES ('289', '茂林區', '16', '851', 'admin', '2016-06-21 23:25:27', '2016-06-21 23:25:29');
INSERT INTO `town` VALUES ('290', '茄萣區', '16', '852', 'admin', '2016-06-21 23:25:53', '2016-06-21 23:25:55');
INSERT INTO `town` VALUES ('291', '屏東市', '17', '900', 'admin', '2016-06-22 11:08:27', '2016-06-22 11:08:30');
INSERT INTO `town` VALUES ('292', '三地門', '17', '901', 'admin', '2016-06-22 11:09:00', '2016-06-22 11:09:02');
INSERT INTO `town` VALUES ('293', '霧臺鄉', '17', '902', 'admin', '2016-06-22 11:09:31', '2016-06-22 11:09:33');
INSERT INTO `town` VALUES ('294', '瑪家鄉', '17', '903', 'admin', '2016-06-22 11:10:00', '2016-06-22 11:10:02');
INSERT INTO `town` VALUES ('295', '九如鄉', '17', '904', 'admin', '2016-06-22 11:10:31', '2016-06-22 11:10:33');
INSERT INTO `town` VALUES ('296', '里港鄉', '17', '905', 'admin', '2016-06-22 11:11:39', '2016-06-22 11:11:41');
INSERT INTO `town` VALUES ('297', '高樹鄉', '17', '906', 'admin', '2016-06-22 11:12:06', '2016-06-22 11:12:08');
INSERT INTO `town` VALUES ('298', '盬埔鄉', '17', '907', 'admin', '2016-06-22 11:12:35', '2016-06-22 11:12:36');
INSERT INTO `town` VALUES ('299', '長治鄉', '17', '908', 'admin', '2016-06-22 11:13:00', '2016-06-22 11:13:02');
INSERT INTO `town` VALUES ('300', '麟洛鄉', '17', '909', 'admin', '2016-06-22 11:13:25', '2016-06-22 11:13:27');
INSERT INTO `town` VALUES ('301', '竹田鄉', '17', '911', 'admin', '2016-06-22 11:13:58', '2016-06-22 11:14:00');
INSERT INTO `town` VALUES ('302', '內埔鄉', '17', '912', 'admin', '2016-06-22 11:15:44', '2016-06-22 11:15:47');
INSERT INTO `town` VALUES ('303', '萬丹鄉', '17', '913', 'admin', '2016-06-22 11:16:11', '2016-06-22 11:16:13');
INSERT INTO `town` VALUES ('304', '潮州鎮', '17', '920', 'admin', '2016-06-22 11:16:38', '2016-06-22 11:16:40');
INSERT INTO `town` VALUES ('305', '泰武鄉', '17', '921', 'admin', '2016-06-22 11:17:04', '2016-06-22 11:17:06');
INSERT INTO `town` VALUES ('306', '來義鄉', '17', '922', 'admin', '2016-06-22 11:17:31', '2016-06-22 11:17:34');
INSERT INTO `town` VALUES ('307', '萬巒鄉', '17', '923', 'admin', '2016-06-22 11:18:01', '2016-06-22 11:18:03');
INSERT INTO `town` VALUES ('308', '崁頂鄉', '17', '924', 'admin', '2016-06-22 11:18:27', '2016-06-22 11:18:29');
INSERT INTO `town` VALUES ('309', '新埤鄉', '17', '925', 'admin', '2016-06-22 11:18:54', '2016-06-22 11:18:56');
INSERT INTO `town` VALUES ('310', '南州鄉', '17', '926', 'admin', '2016-06-22 11:19:20', '2016-06-22 11:19:21');
INSERT INTO `town` VALUES ('311', '林邊鄉', '17', '927', 'admin', '2016-06-22 11:19:49', '2016-06-22 11:19:51');
INSERT INTO `town` VALUES ('312', '東港鎮', '17', '928', 'admin', '2016-06-22 11:20:14', '2016-06-22 11:20:17');
INSERT INTO `town` VALUES ('313', '佳冬鄉', '17', '931', 'admin', '2016-06-22 11:21:01', '2016-06-22 11:21:02');
INSERT INTO `town` VALUES ('314', '新園鄉', '17', '932', 'admin', '2016-06-22 11:21:28', '2016-06-22 11:21:31');
INSERT INTO `town` VALUES ('315', '枋寮鄉', '17', '940', 'admin', '2016-06-22 11:21:57', '2016-06-22 11:21:59');
INSERT INTO `town` VALUES ('316', '枋山鄉', '17', '941', 'admin', '2016-06-22 11:22:41', '2016-06-22 11:22:43');
INSERT INTO `town` VALUES ('317', '春日鄉', '17', '942', 'admin', '2016-06-22 11:23:07', '2016-06-22 11:23:09');
INSERT INTO `town` VALUES ('318', '獅子鄉', '17', '943', 'admin', '2016-06-22 11:23:34', '2016-06-22 11:23:37');
INSERT INTO `town` VALUES ('319', '車城鄉', '17', '944', 'admin', '2016-06-22 11:24:04', '2016-06-22 11:24:06');
INSERT INTO `town` VALUES ('320', '牡丹鄉', '17', '945', 'admin', '2016-06-22 11:24:31', '2016-06-22 11:24:33');
INSERT INTO `town` VALUES ('321', '恆春鎮', '17', '946', 'admin', '2016-06-22 11:25:02', '2016-06-22 11:25:04');
INSERT INTO `town` VALUES ('322', '滿州鄉', '17', '947', 'admin', '2016-06-22 11:25:32', '2016-06-22 11:25:34');
INSERT INTO `town` VALUES ('323', '台東市', '18', '950', 'admin', '2016-06-22 11:27:34', '2016-06-22 11:27:36');
INSERT INTO `town` VALUES ('324', '延平鄉', '18', '953', 'admin', '2016-06-22 11:28:03', '2016-06-22 11:28:05');
INSERT INTO `town` VALUES ('325', '卑南鄉', '18', '954', 'admin', '2016-06-22 11:28:30', '2016-06-22 11:28:32');
INSERT INTO `town` VALUES ('326', '鹿野鄉', '18', '955', 'admin', '2016-06-22 11:29:30', '2016-06-22 11:29:32');
INSERT INTO `town` VALUES ('327', '關山鎮', '18', '956', 'admin', '2016-06-22 11:29:58', '2016-06-22 11:30:00');
INSERT INTO `town` VALUES ('328', '海端鄉', '18', '957', 'admin', '2016-06-22 11:30:24', '2016-06-22 11:30:28');
INSERT INTO `town` VALUES ('329', '池上鄉', '18', '958', 'admin', '2016-06-22 11:34:45', '2016-06-22 11:34:47');
INSERT INTO `town` VALUES ('330', '東河鄉', '18', '959', 'admin', '2016-06-22 11:38:17', '2016-06-22 11:38:19');
INSERT INTO `town` VALUES ('331', '成功鎮', '18', '961', 'admin', '2016-06-22 11:38:53', '2016-06-22 11:38:55');
INSERT INTO `town` VALUES ('332', '長濱鄉', '18', '962', 'admin', '2016-06-22 11:39:26', '2016-06-22 11:39:28');
INSERT INTO `town` VALUES ('333', '太麻里', '18', '963', 'admin', '2016-06-22 11:40:00', '2016-06-22 11:40:02');
INSERT INTO `town` VALUES ('334', '金峰鄉', '18', '964', 'admin', '2016-06-22 11:42:34', '2016-06-22 11:42:36');
INSERT INTO `town` VALUES ('335', '大武鄉', '18', '965', 'admin', '2016-06-22 11:43:00', '2016-06-22 11:43:03');
INSERT INTO `town` VALUES ('336', '達仁鄉', '18', '966', 'admin', '2016-06-22 11:43:28', '2016-06-22 11:43:30');
INSERT INTO `town` VALUES ('337', '花蓮市', '19', '970', 'admin', '2016-06-22 11:44:54', '2016-06-22 11:44:56');
INSERT INTO `town` VALUES ('338', '新城鄉', '19', '971', 'admin', '2016-06-22 11:45:20', '2016-06-22 11:45:22');
INSERT INTO `town` VALUES ('339', '秀林鄉', '19', '972', 'admin', '2016-06-22 11:45:52', '2016-06-22 11:45:53');
INSERT INTO `town` VALUES ('340', '吉安鄉', '19', '973', 'admin', '2016-06-22 11:46:22', '2016-06-22 11:46:24');
INSERT INTO `town` VALUES ('341', '壽豐鄉', '19', '974', 'admin', '2016-06-22 11:49:05', '2016-06-22 11:49:07');
INSERT INTO `town` VALUES ('342', '鳳林鎮', '19', '975', 'admin', '2016-06-22 11:53:37', '2016-06-22 11:53:39');
INSERT INTO `town` VALUES ('343', '光復鄉', '19', '976', 'admin', '2016-06-22 11:54:04', '2016-06-22 11:54:06');
INSERT INTO `town` VALUES ('344', '豐濱鄉', '19', '977', 'admin', '2016-06-22 11:58:23', '2016-06-22 11:58:25');
INSERT INTO `town` VALUES ('345', '瑞穗鄉', '19', '978', 'admin', '2016-06-22 11:58:51', '2016-06-22 11:58:52');
INSERT INTO `town` VALUES ('346', '萬榮鄉', '19', '979', 'admin', '2016-06-22 11:59:33', '2016-06-22 11:59:35');
INSERT INTO `town` VALUES ('347', '玉里鎮', '19', '981', 'admin', '2016-06-22 12:00:03', '2016-06-22 12:00:05');
INSERT INTO `town` VALUES ('348', '卓溪鄉', '19', '982', 'admin', '2016-06-22 12:00:31', '2016-06-22 12:00:33');
INSERT INTO `town` VALUES ('349', '富里鄉', '19', '983', 'admin', '2016-06-22 12:00:59', '2016-06-22 12:01:01');
INSERT INTO `town` VALUES ('350', '金沙', '20', '890', 'admin', '2016-06-22 12:02:00', '2016-06-22 12:02:02');
INSERT INTO `town` VALUES ('351', '金湖', '20', '891', 'admin', '2016-06-22 12:02:42', '2016-06-22 12:02:44');
INSERT INTO `town` VALUES ('352', '金寧', '20', '892', 'admin', '2016-06-22 12:03:16', '2016-06-22 12:03:18');
INSERT INTO `town` VALUES ('353', '金城', '20', '893', 'admin', '2016-06-22 12:03:46', '2016-06-22 12:03:48');
INSERT INTO `town` VALUES ('354', '烈嶼', '20', '894', 'admin', '2016-06-22 12:04:18', '2016-06-22 12:04:20');
INSERT INTO `town` VALUES ('355', '烏坵', '20', '896', 'admin', '2016-06-22 12:05:01', '2016-06-22 12:05:06');
INSERT INTO `town` VALUES ('356', '南竿', '21', '209', 'admin', '2016-06-22 12:08:21', '2016-06-22 12:08:23');
INSERT INTO `town` VALUES ('357', '北竿', '21', '210', 'admin', '2016-06-22 12:08:50', '2016-06-22 12:08:52');
INSERT INTO `town` VALUES ('358', '莒光', '21', '211', 'admin', '2016-06-22 12:10:26', '2016-06-22 12:10:28');
INSERT INTO `town` VALUES ('359', '東引', '21', '212', 'admin', '2016-06-22 12:11:00', '2016-06-22 12:11:02');
INSERT INTO `town` VALUES ('360', '東沙', '22', '817', 'admin', '2016-06-22 12:11:33', '2016-06-22 12:11:35');
INSERT INTO `town` VALUES ('361', '南沙', '22', '819', 'admin', '2016-06-22 12:11:59', '2016-06-22 12:12:02');
INSERT INTO `town` VALUES ('362', '釣魚台列嶼', '22', '290', 'admin', '2016-06-22 12:12:46', '2016-06-22 12:12:48');

-- ----------------------------
-- Function structure for F_check_rent_status
-- ----------------------------
DROP FUNCTION IF EXISTS `F_check_rent_status`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `F_check_rent_status`(`V_borrow_id` int) RETURNS int(2)
BEGIN
	#Routine body goes here...
	DECLARE V_borrow_status INT DEFAULT 0;
DECLARE V_check_count INT DEFAULT 0;

		SELECT count(*) INTO V_check_count
		FROM borrow_record
		WHERE borrow_id = V_borrow_id AND reserve_date <= CURRENT_DATE()
		AND reserve_deadline >= date_sub(CURRENT_DATE(), interval 1 day) AND borrow_date is null 
		AND return_date is null AND givefine = 0 ;	  
IF V_check_count = 1 THEN
	SET V_borrow_status = 1;
ELSE
    SELECT count(*) INTO V_check_count
		FROM borrow_record 
		WHERE borrow_id = V_borrow_id AND reserve_deadline <= CURRENT_DATE() 
    AND borrow_date is null AND return_date is null AND givefine = 0 ;
		IF V_check_count = 1 THEN
		SET V_borrow_status = 2;
		ELSE
       SELECT count(*) INTO V_check_count
		    FROM borrow_record 
		    WHERE borrow_id = V_borrow_id AND borrow_date <= CURRENT_DATE() 
		    AND borrow_deadline >= date_sub(CURRENT_DATE(), interval 1 day)
		    AND  return_date is null AND givefine = 0 ;
				IF V_check_count = 1 THEN
				SET V_borrow_status = 3;
			ELSE
				SELECT count(*) INTO V_check_count 
		    FROM borrow_record 
		    WHERE borrow_id = V_borrow_id AND borrow_deadline <= CURRENT_DATE()  
		    AND return_date is null AND givefine = 0 ;
				IF V_check_count = 1 THEN
						SET V_borrow_status = 4;
			ELSE 
				SELECT count(*) INTO V_check_count
				FROM borrow_record
				WHERE borrow_id = V_borrow_id AND givefine = 1 ;
			IF V_check_count = 1 THEN
						SET V_borrow_status = 5;
			ELSE
						SET V_borrow_status = 0;
				          END IF;
              END IF;
					END IF;
			END IF;
	END IF;
RETURN V_borrow_status;
	RETURN 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for F_get_now_fine
-- ----------------------------
DROP FUNCTION IF EXISTS `F_get_now_fine`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `F_get_now_fine`(`V_borrow_id` int) RETURNS int(10)
BEGIN
	#Routine body goes here...
DECLARE V_borrow_fine INT DEFAULT 0;
DECLARE V_now_givefine INT DEFAULT 0;
DECLARE V_now_fine INT DEFAULT 0;
DECLARE V_borrow_status INT DEFAULT 0;
DECLARE V_reserve_deadline INT DEFAULT 0;
DECLARE V_borrow_deadline INT DEFAULT 0;

SELECT givefine,fine,F_check_rent_status(borrow_id),datediff(CURRENT_DATE(),reserve_deadline),datediff(CURRENT_DATE(),borrow_deadline)
INTO V_now_givefine,V_now_fine,V_borrow_status,V_reserve_deadline,V_borrow_deadline
FROM borrow_record
WHERE borrow_id = V_borrow_id ;
IF V_now_givefine = 1 THEN
	SET V_borrow_fine = V_now_fine;
ELSEIF V_borrow_status = 2 THEN
SET V_borrow_fine = 2 * (V_reserve_deadline - 1);
ELSEIF V_borrow_status = 4 THEN
SET V_borrow_fine = 2 * (V_borrow_deadline - 1);
ELSE
SET V_borrow_fine = 0;
END IF; 
	RETURN V_borrow_fine;
	RETURN 0;
END
;;
DELIMITER ;
