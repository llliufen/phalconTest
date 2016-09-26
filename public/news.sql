/*
Navicat MySQL Data Transfer

Source Server         : 192.168.72.131_3306
Source Server Version : 50631
Source Host           : 192.168.72.131:3306
Source Database       : news

Target Server Type    : MYSQL
Target Server Version : 50631
File Encoding         : 65001

Date: 2016-09-26 18:24:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for information
-- ----------------------------
DROP TABLE IF EXISTS `information`;
CREATE TABLE `information` (
  `id` int(11) NOT NULL COMMENT 'Id',
  `newsId` int(11) NOT NULL COMMENT '新闻ID',
  `title` varchar(255) NOT NULL COMMENT '评论标题',
  `content` varchar(255) NOT NULL COMMENT '新闻内容',
  `time` int(11) NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of information
-- ----------------------------

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) NOT NULL COMMENT '新闻标题',
  `time` int(11) NOT NULL COMMENT '时间',
  `content` varchar(255) NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '撒恶个人所以好人投诉', '1474880116', '二氧化碳人生突然警世通言就业推荐使用j\'k\'y\'j\'k\'y\'g\'k\'jj\'k\'y\'g\'k\'j\'g\'y\'k\'g\'yg就可以概括结果一看工业科技工业快个月酷酷酷酷酷酷酷酷酷酷酷酷酷酷酷酷喀喀喀');
INSERT INTO `news` VALUES ('2', '是vblsdkjvn；', '243236435', '的vnlsd解放了让客户发上课');
INSERT INTO `news` VALUES ('3', '额忘记你发；了 人接我回复可见评价他哦额如今突破额我vmtoerw【额哦人家ijupooph', '34574357', '登山；号放假了客人快捷回复立刻就会大幅');
INSERT INTO `news` VALUES ('4', '的撒韩国进口居然发开户人护肤和尽快回复您jznbkafnva', '21476294', '额网盘澳网；阿胶；偶问好茕茕；二货维克托verwujoerujtoi；文件和佩珀我还iphone日阿胶活泼ierhg');
INSERT INTO `news` VALUES ('5', '危机哦；爱好咯说的话日渐恶化vs的内部；设计风格；肯定是妇女；地方涉及金额即佛额哦耳机热；热火为；好人利润为日画皮好撇火', '247353485', '文革后了哦哎以后咯爱哦也会为危急关头；哦金额围绕共同；e肉【俄日竣工ihpoghierhg哦ierhjgoioierjoigdirgh');
INSERT INTO `news` VALUES ('6', '文化节哦iahgkajhsdg ', '1254346', ';LSHG HALSGH HGF 哇哦；额好贵啊看韩国而口干哦烹饪价格二级过了让空间广阔的风格日批哦 哦irejpoierjhgip俄日哦人uj欸哦然后交给哦额日还有 ');
INSERT INTO `news` VALUES ('7', '昂立独立访客和国家和政府的拉黑色戒哈佛', '34785489', '啊IJGHF ;OH ;FOAHLKJSDHBA；啊合格啊；护肤');
INSERT INTO `news` VALUES ('8', '死了点卡好贵啊看来还是多个口红阿迪斯；黑楼孤魂aJH SKDLAHG 哦额好贵', '436357658', 'SLDHNvbal；g;oshwg ahig ; i');
INSERT INTO `news` VALUES ('9', 'ewjf;iejng; jhg;iaehf ', '24356465', 'aklb撒客户啊还是个拉萨的后果看到了时间啊开始干活ask回复阿康回复');
INSERT INTO `news` VALUES ('10', 'l.ELASD awli kalhsdg 带来丰厚烤地瓜啊雕刻时光', '34657', '奥； 阿斯利康韩国啊立刻大师傅阿克苏的回复阿斯蒂芬和');
INSERT INTO `news` VALUES ('11', '阿里；奥法；阿娇了可是大家发上来看到', '346757658', '啊。少见多怪。肯定是经过考试的后果的开发机构和空间的风格哈客户；啊哦是个撒快点发货啊数量和上的考虑后果啊了几个是拉动机关了解更多');
INSERT INTO `news` VALUES ('12', '饿死了；阿济格老规矩历史典故', '328954839', 'a/lsjfd苏丹皇宫考试的发挥看到就回个电话拉萨的好考试的发挥');
INSERT INTO `news` VALUES ('19', '结婚DIHAWSHF KDHF LDSHF HF啦SKF', '1474877837', '看哪个v；的法律规定是多少呢科技股份身份空间的还高irjgherhjwejwe； 哦ihgeroirorhgiurhgirhg');
