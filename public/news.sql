/*
Navicat MySQL Data Transfer

Source Server         : 192.168.72.131_3306
Source Server Version : 50631
Source Host           : 192.168.72.131:3306
Source Database       : news

Target Server Type    : MYSQL
Target Server Version : 50631
File Encoding         : 65001

Date: 2016-09-29 22:14:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `newsId` varchar(11) NOT NULL COMMENT '新闻ID',
  `commentTitle` varchar(255) NOT NULL COMMENT '评论标题',
  `commentContent` varchar(255) NOT NULL COMMENT '新闻内容',
  `commentTime` int(11) NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('23', '5', '人员如图同意uy', '财富和官方机构和客户经理', '1475121029');
INSERT INTO `comment` VALUES ('28', '8', '分局回复客户了', 'ulkfkydyrtsgestgr', '1475131521');
INSERT INTO `comment` VALUES ('29', '1', '收到回复就会放过他经常看', '和客户经理会计和六级考了', '1475134754');
INSERT INTO `comment` VALUES ('30', '1', '预提uyouio；', '是任何人提及的体育课d', '1475134983');
INSERT INTO `comment` VALUES ('31', '1', '预提uyouio；', '是任何人提及的体育课d', '1475135088');
INSERT INTO `comment` VALUES ('32', '1', '我tees人员如图很讨厌', '但如果恢复回复大家已经', '1475135125');
INSERT INTO `comment` VALUES ('33', '1', '问题乳粉让用户添加护眼', '网特tyre一天如右图', '1475135270');
INSERT INTO `comment` VALUES ('34', '1', '发生的沟通方式的机构预付卡', '的好高房价一看福利了', '1475135304');
INSERT INTO `comment` VALUES ('35', '1', '看发挥了几个ij；和', '发货了几个垃圾垃圾和i', '1475135312');
INSERT INTO `comment` VALUES ('36', '6', '的人会幸福敢于解开封印了苦于', '电源开关理解咯好i', '1475135333');
INSERT INTO `comment` VALUES ('37', '10', '途径有空iiuyhlghiljkoljityhrtryhtr', '恢复工具就个好机会客户客户就ukji', '1475135348');
INSERT INTO `comment` VALUES ('38', '4', '太阳都快ilihyfjtdryd', '推荐钢结构焊接好高级客户空', '1475135368');
INSERT INTO `comment` VALUES ('39', '26', 'の润肺乌发greg赴日个人个人', '给对方如果vrgvb', '1475150010');
INSERT INTO `comment` VALUES ('40', '1', '43太vtytyy', '惯报5日本vtbjtybjtybu', '1475150088');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `newsTitle` varchar(255) NOT NULL COMMENT '新闻标题',
  `newsTime` int(11) NOT NULL COMMENT '时间',
  `newsContent` varchar(255) NOT NULL COMMENT '内容',
  `newsStatus` varchar(255) NOT NULL COMMENT '新闻状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '撒恶个人所以好人投诉', '1475133605', '<p>&nbsp; 二氧化碳人生突然警世通言就业推荐使用j&#39;k&#39;y&#39;j&#39;k&#39;y&#39;g&#39;k&#39;jj&#39;k&#39;y&#39;g&#39;k&#39;j&#39;g&#39;y&#39;k&#39;g&#39;yg就可以概括结果一看工业科技工业快个月酷酷酷酷酷酷酷酷酷酷酷酷酷酷酷酷喀喀喀 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &', '0');
INSERT INTO `news` VALUES ('2', '是vblsdkjvn；', '1475116122', '<p>&nbsp; 的vnlsd解放了让客户发上课 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', '已删除');
INSERT INTO `news` VALUES ('4', '的撒韩国进口居然发开户人护肤和尽快回复您jznbkafnva', '1475116139', '<p>&nbsp; 额网盘澳网；阿胶；偶问好茕茕；二货维克托verwujoerujtoi；文件和佩珀我还iphone日阿胶活泼ierhg &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', '0');
INSERT INTO `news` VALUES ('5', '危机哦；爱好咯说的话日渐恶化vs的内部；设计风格；肯定是妇女；地方涉及金额即佛额哦耳机热；热火为；好人利润为日画皮好撇火', '1475116163', '<p>&nbsp; 文革后了哦哎以后咯爱哦也会为危急关头；哦金额围绕共同；e肉【俄日竣工ihpoghierhg哦ierhjgoioierjoigdirgh &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', '0');
INSERT INTO `news` VALUES ('6', '文化节哦iahgkajhsdg ', '1475116172', '<p>&nbsp; &nbsp;;LSHG HALSGH HGF 哇哦；额好贵啊看韩国而口干哦烹饪价格二级过了让空间广阔的风格日批哦 哦irejpoierjhgip俄日哦人uj欸哦然后交给哦额日还有 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', '0');
INSERT INTO `news` VALUES ('7', '昂立独立访客和国家和政府的拉黑色戒哈佛', '1475116180', '<p>&nbsp;啊IJGHF ;OH ;FOAHLKJSDHBA；啊合格啊；护肤 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', '0');
INSERT INTO `news` VALUES ('8', '死了点卡好贵啊看来还是多个口红阿迪斯；黑楼孤魂aJH SKDLAHG 哦额好贵', '436357658', 'SLDHNvbal；g;oshwg ahig ; i', '0');
INSERT INTO `news` VALUES ('9', 'ewjf;iejng; jhg;iaehf ', '24356465', 'aklb撒客户啊还是个拉萨的后果看到了时间啊开始干活ask回复阿康回复', '已删除');
INSERT INTO `news` VALUES ('10', 'l.ELASD awli kalhsdg 带来丰厚烤地瓜啊雕刻时光', '34657', '奥； 阿斯利康韩国啊立刻大师傅阿克苏的回复阿斯蒂芬和', '0');
INSERT INTO `news` VALUES ('11', '阿里；奥法；阿娇了可是大家发上来看到', '346757658', '啊。少见多怪。肯定是经过考试的后果的开发机构和空间的风格哈客户；啊哦是个撒快点发货啊数量和上的考虑后果啊了几个是拉动机关了解更多', '已删除');
INSERT INTO `news` VALUES ('12', '饿死了；阿济格老规矩历史典故', '328954839', 'a/lsjfd苏丹皇宫考试的发挥看到就回个电话拉萨的好考试的发挥', '0');
INSERT INTO `news` VALUES ('19', '结婚DIHAWSHF KDHF LDSHF HF啦SKF', '1474877837', '看哪个v；的法律规定是多少呢科技股份身份空间的还高irjgherhjwejwe； 哦ihgeroirorhgiurhgirhg', '0');
INSERT INTO `news` VALUES ('20', 'sdfsdfsd', '1474941914', 'dgdgrfgfd', '已删除');
INSERT INTO `news` VALUES ('21', '4天涯(-｡-;)院5756868ioerst', '1474965302', '去啊问他额teary热啊液体乳乳同时水水水水水水水水水水水水水水水水水水水', '0');
INSERT INTO `news` VALUES ('24', 'asfseg22222222222', '1475050580', 'sdgfjh.l/.bvsfdghfjhgkhjl,jk.;lk/', '已删除');
INSERT INTO `news` VALUES ('26', '容易使人态度就低头一看', '1475139390', '<p>的眼光看ifuykluluifkshy</p>', '0');
