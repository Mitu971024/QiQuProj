/*
 Navicat Premium Data Transfer

 Source Server         : myServer
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : qiqu

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 21/10/2018 18:28:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bikedetails
-- ----------------------------
DROP TABLE IF EXISTS `bikedetails`;
CREATE TABLE `bikedetails`  (
  `cNo` int(11) NOT NULL AUTO_INCREMENT,
  `crId` int(11) NOT NULL,
  `cName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cPrice` int(11) NULL DEFAULT NULL,
  `cNumber` int(11) NULL DEFAULT NULL,
  `cBigimg` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cSmallimg` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cDetail` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cEvaluate` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cImg` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cIntr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cPconfig` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cPname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cPfeatures` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cPmodel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cPmaxweight` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cPsize` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cPspace` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rpayNumber` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`cNo`) USING BTREE,
  INDEX `fk_zm_table_z_table1_idx`(`crId`) USING BTREE,
  CONSTRAINT `fk_zm_table_z_table1` FOREIGN KEY (`crId`) REFERENCES `bikeindex` (`cno`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bikeevaluate
-- ----------------------------
DROP TABLE IF EXISTS `bikeevaluate`;
CREATE TABLE `bikeevaluate`  (
  `eNo` int(11) NOT NULL AUTO_INCREMENT,
  `bmNo` int(11) NOT NULL,
  `cbNo` int(11) NOT NULL,
  `eContent` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`eNo`) USING BTREE,
  INDEX `fk_md_table_myInfo1_idx`(`bmNo`) USING BTREE,
  INDEX `fk_bikeEvaluate_bikeDetails1_idx`(`cbNo`) USING BTREE,
  CONSTRAINT `fk_bikeEvaluate_bikeDetails1` FOREIGN KEY (`cbNo`) REFERENCES `bikedetails` (`cno`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_md_table_myInfo1` FOREIGN KEY (`bmNo`) REFERENCES `myinfo` (`mid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bikeindex
-- ----------------------------
DROP TABLE IF EXISTS `bikeindex`;
CREATE TABLE `bikeindex`  (
  `cNo` int(11) NOT NULL AUTO_INCREMENT,
  `rContent` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rClassify` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cNo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cardinfo
-- ----------------------------
DROP TABLE IF EXISTS `cardinfo`;
CREATE TABLE `cardinfo`  (
  `cId` int(11) NOT NULL AUTO_INCREMENT,
  `cContent` varchar(180) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cTime` date NULL DEFAULT NULL,
  `cCheck` int(11) NULL DEFAULT NULL,
  `cCollection` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `myId` int(11) NOT NULL,
  PRIMARY KEY (`cId`) USING BTREE,
  INDEX `fk_cardInfo_myInfo1_idx`(`myId`) USING BTREE,
  CONSTRAINT `fk_cardInfo_myInfo1` FOREIGN KEY (`myId`) REFERENCES `myinfo` (`mid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for check
-- ----------------------------
DROP TABLE IF EXISTS `check`;
CREATE TABLE `check`  (
  `chId` int(11) NOT NULL AUTO_INCREMENT,
  `cId` int(11) NOT NULL,
  `cdId` int(11) NOT NULL,
  PRIMARY KEY (`chId`) USING BTREE,
  INDEX `fk_check_cardInfo1_idx`(`cId`) USING BTREE,
  INDEX `fk_check_myInfo1_idx`(`cdId`) USING BTREE,
  CONSTRAINT `fk_check_cardInfo1` FOREIGN KEY (`cId`) REFERENCES `cardinfo` (`cid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_check_myInfo1` FOREIGN KEY (`cdId`) REFERENCES `myinfo` (`mid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection`  (
  `scId` int(11) NOT NULL AUTO_INCREMENT,
  `cId` int(11) NOT NULL,
  `scdId` int(11) NOT NULL,
  PRIMARY KEY (`scId`) USING BTREE,
  INDEX `fk_check_cardInfo1_idx`(`cId`) USING BTREE,
  INDEX `fk_Collection_myInfo1_idx`(`scdId`) USING BTREE,
  CONSTRAINT `fk_Collection_myInfo1` FOREIGN KEY (`scdId`) REFERENCES `myinfo` (`mid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_check_cardInfo10` FOREIGN KEY (`cId`) REFERENCES `cardinfo` (`cid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `pId` int(11) NOT NULL,
  `mypId` int(11) NOT NULL,
  `pcId` int(11) NOT NULL,
  `pTime` date NULL DEFAULT NULL,
  `pContent` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pId`) USING BTREE,
  INDEX `fk_comment_cardInfo1_idx`(`pcId`) USING BTREE,
  INDEX `fk_comment_myInfo1_idx`(`mypId`) USING BTREE,
  CONSTRAINT `fk_comment_cardInfo1` FOREIGN KEY (`pcId`) REFERENCES `cardinfo` (`cid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_comment_myInfo1` FOREIGN KEY (`mypId`) REFERENCES `myinfo` (`mid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for content
-- ----------------------------
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content`  (
  `pId` int(11) NOT NULL AUTO_INCREMENT,
  `mypId` int(11) NOT NULL,
  `mcId` int(11) NOT NULL,
  `mContent` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mTime` date NULL DEFAULT NULL,
  PRIMARY KEY (`pId`) USING BTREE,
  INDEX `fk_content_myInfo1_idx`(`mcId`) USING BTREE,
  INDEX `fk_content_comment1_idx`(`mypId`) USING BTREE,
  CONSTRAINT `fk_content_comment1` FOREIGN KEY (`mypId`) REFERENCES `comment` (`pid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_content_myInfo1` FOREIGN KEY (`mcId`) REFERENCES `myinfo` (`mid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for follow
-- ----------------------------
DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow`  (
  `gId` int(11) NOT NULL AUTO_INCREMENT,
  `myId` int(11) NOT NULL,
  `cId` int(11) NOT NULL,
  PRIMARY KEY (`gId`) USING BTREE,
  INDEX `fk_follow_myInfo1_idx`(`myId`) USING BTREE,
  INDEX `fk_follow_myInfo2_idx`(`cId`) USING BTREE,
  CONSTRAINT `fk_follow_myInfo1` FOREIGN KEY (`myId`) REFERENCES `myinfo` (`mid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_follow_myInfo2` FOREIGN KEY (`cId`) REFERENCES `myinfo` (`mid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for information
-- ----------------------------
DROP TABLE IF EXISTS `information`;
CREATE TABLE `information`  (
  `zId` int(11) NOT NULL AUTO_INCREMENT,
  `zTitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zTime` date NULL DEFAULT NULL,
  `zFrom` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zType` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zCheck` int(11) NULL DEFAULT NULL,
  `sTime` date NULL DEFAULT NULL,
  `zdContent` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zdImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`zId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of information
-- ----------------------------
INSERT INTO `information` VALUES (1, '《骑趣快讯》骑车有多烧钱？天空车队一年烧2.7亿', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/news/bikenews/2018-08-31/d844be90343c8a6d3d710910b3a13b2d.jpg', '环西第六赛段：拳王自我救赎，皮凯风中凌乱。FOX发布全新智能避震系统，爬坡不泄力，下坡爽歪歪。天空车队到底多有钱？每年预算好几个亿。', '2018-10-13', '作者：骑趣网', '热门资讯', 5, NULL, '环西第六赛段：拳王自我救赎，皮凯风中凌乱。FOX发布全新智能避震系统，爬坡不泄力，下坡爽歪歪。天空车队到底多有钱？每年预算好几个亿。', 'http://c2.biketo.com/d/file/news/bikenews/2018-10-10/af952ba62472e9dcb5ce2672412d3d5c.jpg,http://www.biketo.com/d/file/news/bikenews/2018-07-20/3656221e653f625512e5c2c8f50804ae.jpg');
INSERT INTO `information` VALUES (2, '自行车和配件要涨价了？美国加征10%进口税', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/news/international/2018-09-20/250d57061e4386f386735a26adff8afe.jpg', '中国进口至美国的（电动）自行车及零配件加征税的政策将于下周一开始实施，届时直到年底都将加征10%进口税，并于明年开始征收25%税。', '2018-10-15', '作者：Jack Oortwijn（吴芳仪译）', '热门资讯', 8, NULL, '川普政府针对自中国进口至美国的（电动）自行车及零配件加征税的政策将于9月24日（下周一）开始实施。届时直到年底都将加征10%进口税，并于明年开始征收25%税。\r\n\r\n美国贸易媒体Bicycle Retailer & Industry News报导，川普政府加征税的商品清单价值高达2000亿美元，自行车产品约占10亿美元。官方声明中表示，有部分类别不被列在商品清单中，例如安全相关产品，因此自行车灯与安全帽将不列在25%关税商品清单中。中国（电动）自行车及马达刚于八月被征收25%关税。该美国媒体也提到，美国总统川普在这场美中贸易战的棋步尚未走完，他已预告中国的报复性征税将导致美对中价值2670亿美元的额外商品征税。美国产业表示已与政府进行磋商，且不赞成对中国自行车产品征税。据美国最大自行车进口商Huffy Corporation表示，这将影响到自行车销售并重创整个产业。\r\n\r\n', 'http://c2.biketo.com/d/file/news/international/2018-09-20/6023ed5c11112cdc49bde36d3b925ee0.jpg,http://c2.biketo.com/d/file/news/bikenews/2018-10-12/69ab27937f9f66edb79547765b870040.jpg');
INSERT INTO `information` VALUES (3, '处处可见骑行元素  华为麦芒7与年轻人加速前行', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/tour/life/2018-09-12/a7faa3f36b048bb23802c8c112f28d25.jpg', '2018年9月12日，华为在广州举办了主题为“生而无畏，加速前行”的麦芒新品发布会，华为消费者业务手机产品线总裁何刚向公众发布了最新的华为麦芒7。一...', '2018-09-12', '作者：骑趣编辑中心', '热门资讯', 1, NULL, '2018年9月12日，华为在广州举办了主题为“生而无畏，加速前行”的麦芒新品发布会，华为消费者业务手机产品线总裁何刚向公众发布了最新的华为麦芒7。一路走来，麦芒品牌始终坚持麦芒系列特有的“无畏生长”的品牌精神，延续做工精致、配置出众、性能均衡的设计理念，时刻紧跟年轻消费者的需求。特别是本次新品——华为麦芒7在速度与性能上进行了较大的提升，将为年轻人消费群体提供更加畅快淋漓的使用体验。\r\n\r\n华为麦芒7传承麦芒品牌“年轻、无畏、坚持”的麦芒精神，这与骑行运动“挑战自我、坚持前行”的精神内核不谋而合，在发布会现场，同样处处可见骑行元素，也处处体现出麦芒7所传承的麦芒精神。发布会的开场，由“逃跑计划”乐队演唱的《夜空中最亮的星》展现了麦芒初心不变、无畏生长的品牌信念。年轻时尚的现场装饰、骑行运动元素都展现出麦芒系列积极向上、加速向前的品牌内涵。尤其是，麦芒色的7号站牌，彰显着麦芒7第七代产品的身份，透露出麦芒品牌“生而无畏”的自信与坚持。2013年第一代麦芒产品诞生以来，“为年轻人定制，树立全新的年轻价值观”的品牌定位就鞭策着麦芒系列产品不断突破自我，创造非凡。从“青春是一种刺”到如今的“生而无畏，加速前行”，麦芒精神不断丰富，麦芒手机不断进步，每一代麦芒产品都融合新时代的麦芒精神和创新技术，满足年轻消费者的最新需求。', 'http://c2.biketo.com/d/file/tour/life/2018-09-12/22f30a2fb30d221d7230be199c163573.jpg,http://c2.biketo.com/d/file/tour/life/2018-09-12/19462f6fa8f9824812b918a455c210d7.jpg');
INSERT INTO `information` VALUES (4, '安踏有意收购亚玛芬体育 报价46亿欧元', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/industry/business/2018-09-12/29dbb38f8df05ceed73f91f9cee6dfdb.jpg', '安踏体育已向亚玛芬体育发出无约束力的初步意向，按每股40欧元的价格以现金方式收购亚玛芬体育的全部股份。', '2018-10-21', '作者：knightof1', '今日资讯', 2, NULL, '安踏体育已向亚玛芬体育发出无约束力的初步意向，按每股40欧元的价格以现金方式收购亚玛芬体育的全部股份。\r\n\r\n近日媒体讨论关于收购的消息，先后得到双方的确认。亚玛芬体育在9月11日承认收到来自安踏体育的收购意向；安踏体育（港交所：2020）则在12日发布了相关公告。根据公告内容，这笔交易的总额约为46亿欧元（折合约366亿元人民币）。目前暂时没有更多关于交易的详细信息。\r\n\r\n亚玛芬体育来自芬兰，目前在纳斯达克北欧旗下的赫尔辛基证券交易所上市，目前最新股价约为每股34欧元。亚玛芬体育拥有萨洛蒙（Salomon）、始祖鸟（Arcteryx）、威尔胜（Wilson）、颂拓（Suunto）等知名运动品牌；在自行车领域，MAVIC和ENVE两个以轮组出名的品牌均隶属芬兰企业。', 'http://c2.biketo.com/d/file/industry/business/2018-09-12/c43f584f80ff6beb80faed3e720a7e37.jpg,http://c2.biketo.com/d/file/racing/column/2018-04-09/e43dc07fef057db4a1e35723527ead65.jpg');
INSERT INTO `information` VALUES (5, '保险不保什么？销售绝不会告诉你的3个秘密', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/news/bikenews/2018-09-03/3122b12f223905b35bf3fec3abe4ad4d.jpg', '“揭短”一些户外常用的保险，不能保什么！！！', '2018-10-21', '作者：保险君', '今日资讯', 5, '2018-10-17', '今天我在想保险软文的时候，一直在纠结要聊些什么话题，好像很多都聊过了，那我就来“揭短”一些户外常用的保险，不能保什么吧！\r\n\r\n1、不能保牙齿\r\n\r\n条款中的表述是这样的：被保险人移植人工器官、洗牙、洁齿、牙齿治疗或手术及镶补所产生的费用免赔，但因意外伤害引起的一般牙齿治疗或手术除外；\r\n\r\n磕掉牙齿是自行车摔车事故里很经常发生的伤害，但是在一般的意外保险里，牙齿的事后种植、补牙等，都是不赔的，还有就是假如被保险人摔到某些脏器，需要移植器官才行，移植器官的费用也是不赔的，赔的是一般的止血治疗，手术费用等。\r\n\r\n2、有一些意外险里会有行李物品损失或户外装备丢失这类条款，那么是不是我们丢的，或者是摔坏的东西都能赔呢？答案是否定的。\r\n\r\n不赔（包括但不限于）：现金、手机、电脑、珠宝、自己摔坏的自行车、头盔等等。\r\n\r\n赔： 被保险人在境内或境外进行以户外运动为目的的旅行时，因第三方盗抢、火灾、公共交通承运人的责任而丢失或损坏被保险人合法拥有的户外装备，并于事故发生之时起的二十四小时内向事故发生地海关、警方或其他有关部门报案并领取其出具的事故证明。如果被保险人的户外装备损失可以从公共承运人或其他任何第三方获得赔偿，保险人仅负责补偿剩余部分。\r\n\r\n通俗来说就是，假如是一辆的自行车在户外运动的时候被抢或被偷了，或运输时被弄坏了，要报警，然后警方出责任认定书，然后责任方赔了钱之后，保险赔剩余部分。私了的话，没有事故证明，保险不赔。3、已经从公费医疗、社会基本医疗保险、商业性保险等报销过的医疗费用是不能再报销了的。\r\n\r\n有时候会有客户问我，那我从这个公司买一份保险，那个再买一份，是不是我两个都能报销？治疗两万，报出四万？答案是否定的。凡是这种报销型的医疗条款，都要提供发票原件去进行报销，所以不能报大数，只能一家报销，不然，就拿上一家保险公司的分割单据去下一家报销剩余部分。但是，假如是残疾，甚至是身故，因为是赔偿型的条款，只要符合赔偿范围，两份保险是不同保险公司的，就两家都要赔。', 'http://c2.biketo.com/d/file/news/bikenews/2018-08-31/c77b65288434a5c6a24c558bbfdac37f.jpg,http://c2.biketo.com/d/file/news/bikenews/2018-10-12/44c7653213fb06a638a6be3c5a04d9a7.jpg');
INSERT INTO `information` VALUES (6, 'ofo拖欠上海凤凰6800万货款遭起诉', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/industry/business/2017-05-07/d6c1e876e9030630f8cf02feaea9fa81.jpg', '因拖欠6800余万元货款，ofo日前被合作伙伴、自行车生产企业上海凤凰企业（集团）股份有限公司告上了法庭，要求其支付欠款及逾期违约损失等共计7000余万...', '2018-10-21', '作者：温婧', '今日资讯', 2, '2018-01-03', '因拖欠6800余万元货款，ofo日前被合作伙伴、自行车生产企业上海凤凰企业（集团）股份有限公司告上了法庭，要求其支付欠款及逾期违约损失等共计7000余万元。\r\n\r\n对此，ofo方面不予置评。根据上海凤凰自行车公司的公告，2017 年，凤凰自行车与东峡大通签订了《自行车采购框架协议》后，凤凰自行车与东峡大通签订了多份采购合同。经双方核对，截至起诉之日，东峡大通仍欠凤凰自行车货款人民币 6815.11 万元。根据采购合同，东峡大通拖欠货款及费用的行为严重违约，凤凰自行车已于近日向北京市第一中级人民法院提起诉讼。上海凤凰方面要求被告支付货款 6815.11 万元，并赔偿原告逾期付款违约损失 186.52 万元、支付原告律师费、担保费等 20万元（暂计）等，共计7000余万元的费用。东峡大通公司为ofo的全资子公司，ofo创始人戴威为其法定代表人。2017年5月，共享单车风头正旺，上海凤凰自行车与ofo签订战略合作协议。其中规定，自签署该协议之日起，东峡大通或其关联公司在12个月内，向凤凰自行车提供总量不少于500万辆的采购计划，凤凰方面表示，“若按照公司2016年度运行情况，协议约定的500万辆采购量将给凤凰自行车带来约4000万元的收益。”不过，时隔一年，今年5月凤凰的公告显示，凤凰仅向ofo的运营方东峡大通及其关联公司提供自行车产品186.16万辆，实现销售收入6.37亿元。从交易量来估算，双方实际交易仅为这份协议预期的不到4成，据此估算，凤凰方面的收益仅有1000万元出头。在其拖欠货款7000万元的基础上，凤凰方面会形成较大亏损。', 'http://c2.biketo.com/d/file/industry/business/2017-05-07/d10c7e8072b8eedcd8d3e202484a6276.jpg,http://c2.biketo.com/d/file/industry/business/2017-05-07/e986508a61965133abc93e95d49c14fb.jpg');
INSERT INTO `information` VALUES (7, '自行车界失去了一位伟大的艺术家 Dario Pegoretti逝世', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/news/bikenews/2018-08-28/b1239ba3b163838d77579eb854abde15.jpg', '上周四晚，达里奥·佩戈雷帝（Dario Pegoretti）去世，自行车界少了一位伟大的艺术家。	', '2018-10-16', '作者：骑趣编辑中心', '骑闻', 1, '2000-01-01', '上周四晚，达里奥·佩戈雷帝（Dario Pegoretti）去世，自行车界少了一位伟大的艺术家。达里奥在2007年确诊患有淋巴瘤，在与病魔斗争的过程中他依旧热爱生活，从未停止艺术创作。\r\n\r\n在高端定制自行车领域，没有人不认识达里奥。这位1956年出生的意大利人，不仅在车架制造上技艺惊人，更是把车架的涂装艺术发挥到极致，被国内外很多高端定制自行车爱好者所崇拜。他年少师从意大利车架制造大师——Luigino Milani，并且了引领了TIG焊接的潮流，奇波里泥、潘塔尼等明星车手也都曾是达里奥的客户。在他手上诞生的自行车都是行走的艺术品，大概是他的大脑中有星辰大海才能创作出这样天马行空的作品。虽然达里奥先生已经离去，但是他关于自行车与艺术的思想会在自行车手艺人中代代传承，他也将成为自行车历史上的代表人物。', 'http://c2.biketo.com/d/file/news/bikenews/2018-08-28/b815b2da0ae74e9d98d6bf0c79e57775.jpg,http://c2.biketo.com/d/file/news/bikenews/2018-08-28/d4fc817f3d2f2e932292227de22eff32.jpg');
INSERT INTO `information` VALUES (8, '剁手清单：西安城苗妹纸的运动生活', 'https://c2.biketo.com/d/imagecache/in/130x75/d/file/product/equipment/2018-10-08/9be3c0cdca62445751a6b34e9172b7f3.jpg', '单车，滑雪，徒步，游泳，四大运动项目是我平日最爱。目前我使用的自行车是SPECIALIZED SAGAN TARMAC\r', '2018-10-14', '作者：骑趣编辑中心', '骑闻', 2, NULL, '如果说喜欢一个人没有理由，那么喜欢骑行也不需要任何理由。高中时期爱上单车，便一发不可收拾，同也结识到很多爱好相同的小伙伴，小伙伴们除了骑行还有很多各自的爱好，这也让我有机会接触其它的运动。单车骑行，是我青春美好记忆里的全部。\r\n\r\n高中时代第一辆捷安特山地车的嘻嘻闹闹，到后来骑游党升级慢慢入了坑。15年偶然机会参加了人生第一场自行车骑行活动：怕不怕不间断骑行200KM，顺利安全完赛虽然很累，但是非常开心。2016年底开始参加女子业余山地、公路的比赛。2017年底加入西安本土车队－西安重點车队。单车带我走了很多没有去过的地方，每到周末或者天气好的时候就会约上三五好友出去骑车。\r\n\r\n', 'http://c2.biketo.com/d/file/product/equipment/2018-10-08/4a59b696a2a351232ef169be7392d79c.jpg,http://c2.biketo.com/d/file/product/equipment/2018-10-14/a9301f391457932d9d16e01e365a90be.jpg');
INSERT INTO `information` VALUES (9, '阳光、公益、千人狂欢——直击2018 TREK100上海站', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/news/activity/2018-09-16/36e3d5346a1f3e9a6702ff2b05f44515.jpg', '比上班早高峰更人山人海的场面在这里。', '2018-10-16', '作者：梦莎', '骑闻', 3, NULL, '别说你见过最人山人海的场面，只有上班早高峰。\r\n\r\n2018年9月16日，TREK100上海站在浦东新区的东方体育中心广场开启周末狂欢。TREK100是圈内较为少见的慈善骑行系列活动，由TREK自行车公司与美国MACC基金会联合创办于1990年，至今已成功举办29届。TREK100的传统骑行距离为100公里，旨在传递健康、运动、阳光的生活方式，并且通过骑行者的力量，为公益事业做出贡献。\r\n\r\n2016年，TREK100首次登陆中国，2017年在上海，北京，成都和广东惠州成功举办四站活动。今天的上海站，作为2018年杭州站和大连站后的第三站，113km全程组和60km半程组共吸引了来自长三角各地的1300位车手前来挑战，而家庭骑趣会共吸引了50个家庭参加。\r\n\r\n2018年，TREK会将所得报名费用，用于支持中国大学生体育协会自行车分会在全国各高校中推广、普及、开展自行车运动。\r\n\r\n本次活动由美国自行车品牌TREK携手一汽-大众 “C-TREK蔚领”，为自行车爱好者们带来丰富多彩的骑行体验，推广独特的自行车文化。虽然挑战路线没有全程封路，但出发后部分路段由交警实施交通管制。今年为避免给市政道路增加过多的压力，提高安全系数，活动组织方采用了分批出发的方式。TREK中国总经理赵大勇先生 、一汽-大众销售有限责任公司华东区销售事业部市场与公关总监滕洪波先生、上海久事体育产业发展（集团）有限公司东体场馆分公司总经理王舒炜先生共同为活动发车鸣枪。', 'http://c2.biketo.com/d/file/news/activity/2018-09-16/826838c8e7ad0cd6c51adec6b19f022f.jpg,http://c2.biketo.com/d/file/news/activity/2018-09-16/5a39e261411fb70befce5a5f46c42189.jpg');
INSERT INTO `information` VALUES (10, '《骑趣快讯》没有牙盘链条还能骑得飞快？这辆折叠车要逆天', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/news/bikenews/2018-09-07/d3d906c6dd2cd5ccce2f2e126f7132b3.jpg', '环西第十二赛段：热尼耶小集团冲刺获胜；无链条无牙盘，老外发明真·脚踏车；NYPD的自行车巡警小分队，中央公园都是他们的地盘……', '2018-10-12', '作者：Fun倪', '其它', 4, NULL, '环西第十二赛段：热尼耶小集团冲刺获胜；无链条无牙盘，老外发明真·脚踏车；NYPD的自行车巡警小分队，中央公园都是他们的地盘……', 'http://c2.biketo.com/d/file/news/bikenews/2018-10-12/7e5cbc2f8f64275fd924437a7a8ec680.jpg,http://www.biketo.com/d/file/news/bikenews/2018-07-20/3b87afd111a4062c1f67ffd8cea336a4.jpg');
INSERT INTO `information` VALUES (11, '《骑趣快讯》用上这款9个摄像头的无人机 菜鸟也能变大神', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/news/bikenews/2018-08-24/d049f8278a84f72ee4f79d114c5805b8.jpg', '复古大轮子自行车骑上街是什么感受？把哈苏装在无人机上，还怼上9个摄像头？16岁女孩患未知疾病，自行车让她……', '2018-10-13', '作者：Fun倪', '其它', 3, NULL, '复古大轮子自行车骑上街是什么感受？把哈苏装在无人机上，还怼上9个摄像头，大疆要逆天啊……16岁女孩患未知疾病，需要外挂装置维持生命，却爱上了自行车。', 'http://c2.biketo.com/d/file/news/bikenews/2018-09-12/1c569009874f1870b9bbe872a5aa7c02.png,http://c2.biketo.com/d/file/news/bikenews/2018-10-12/adb32b20b762cfa37665aa54f0effc3e.jpg');
INSERT INTO `information` VALUES (12, '《骑趣快讯》被推倒？冲进小树林？环法为何意外频发', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/news/bikenews/2018-07-27/62ce3c5e11eb3ad35cc221123c456b25.jpg', '年年环法有意外，偏偏今年特别多，弗鲁姆被拽倒、萨甘摔车、辣椒喷雾攻击……', '2018-09-12', '作者：Fun倪', '其它', 1, NULL, '本期内容提要：环法第十八赛段，德玛尔赢来首胜。年年环法有意外，偏偏今年特别多，弗鲁姆被拽倒、萨甘摔车、辣椒喷雾攻击……意大利Vento项目，探讨自行车与旅游业的融合方式。', 'http://c2.biketo.com/d/file/news/international/2018-09-12/0dc87b4e00a715e4da4b6da626f95c19.jpg,http://c2.biketo.com/d/file/news/bikenews/2018-10-12/33fba6c77d6e063b979f04a462c0ff73.jpg');
INSERT INTO `information` VALUES (13, '剁手清单：“钛毒”女骑士的钛合金山地车', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/news/bikenews/2018-10-13/51dd21f30d7dffb85fc52954cb67dfb8.jpg', '不要求性价比，不在乎价格，这样装出来的钛合金山地车是什么样？', '2018-10-13', '作者：山川骑手', '热门资讯', 4, NULL, '工欲善其事必先利其器，发烧车友装豪车：整车落地39522元。车友女身高165cm，装车要求高档配件，不要求性价比，不在乎价格，经典的山地车，就是不骑放到家里也是一辆好车。1.车架是山地车的基础\r\n\r\n美国Lynskey（林斯基）Ridgeline-650b VF山脊钛合金山地车架27.5寸 S码，Ridgeline的车架用多形，冷成型管材，非常稀有，做工近乎完美。2.前叉是山地车的灵魂\r\n\r\n精挑细选淘到了经典老款前叉：2016款油控Rockshox SID WorldCup 碳纤维前叉 WC 27.5钛合金阻尼，这款前叉包含了SID WORLDCUP世界杯版本一直延续的精髓，包括各种高成本的内在，比如油控锁死（油压控制锁死），BLACKBOX技术碳纤维的上管与叉桥。在今年新出的SID WC上已经看不到了，新款的SID WC已经全部是普通线控的锁死了，碳纤维叉桥也取消了，只剩下1根上管是碳纤维的，所以现在新款的SID WC如此便宜。\r\n\r\n2016经典款永远定格在了那里，是真正卖懂行人的前叉了。特氟龙黑色图层按压感奇润无比，轻量铝合金叉筒，1426克。3.轮组是山地车精髓\r\n\r\n山地车的三大件，一定要耐造、润滑、可靠。花鼓选择了美国原产CHRIS KING陶瓷ISO花鼓，车圈选择了美国原产Easton ARC 24  27.5 650B 山地 AM Enduro 轻量车圈 ，辐条选择了瑞士原产DT竞赛辐条。4.套件\r\n\r\n考虑到是女骑士，因此选择了变速轻巧顺畅的Shimano XTR9000套件。我们这里山多，出城就是山，所以牙盘选择了双片36-26T 170曲柄，塔轮40T。', 'http://c2.biketo.com/d/file/news/bikenews/2018-10-13/e71ec155382eb4beb9ddfa44d240e223.jpg,http://c2.biketo.com/d/file/news/bikenews/2018-10-17/150b2788d6ec310e14094c081bea483d.jpg');
INSERT INTO `information` VALUES (14, '剁手清单：一名“车手”的大学时光 从单车烧到相机', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/news/bikenews/2018-10-09/6037fe7a89e6c33685f34b4cea8e30f3.jpg', '从单车到相机，花费在自己喜欢事物上的时间使我的大学生活逐渐充实，感谢那些年带我入坑的学长！', '2018-10-15', '作者：AS郭郭', '热门资讯', 6, NULL, '大一刚入学的时候，怀着满腔热血加入了学校的自行车协会，想着大学就应该多出去走走而不是老宅在寝室。然后周末就经常跟着学长学姐们一起出去骑车，看看风景美滋滋。开始大家基本都是骑着入门山地车耍，然后慢慢了解到更多的自行车知识后再加上PRO们的疯狂洗脑，同学们都开始追求更好的骑行体验，梦想有朝一日能够在赛场上吃皮。三年时光，我从一个骑行小白变成了现在的夕阳红骑游车手。\r\n\r\n写这篇文章主要是想纪念一下自己的大学时光，有关单车和生活的一些玩物。大学的第一辆山地车，陪我去了很多地方。后面慢慢地改了单盘、变速、刹车和轮组这些，一直念叨说要换个SID或者 FOX 的前叉，但又不舍得花这个钱。路上吃过很多次泥，不过每次回来都会花上一两个小时洗得干干净净。\r\n\r\n改装和拆洗的过程也让我对自行车的有了进一 步的认识， 也算是一种很不错的学习方式。周末骑游或者参加一些小比赛玩都能应付，铝合金的车架也不用担心摔坏。最后迫于生活压力把车出给了学弟，车协精神一脉相承哈哈。大二的时候大家都陆续从山地转型公路，去越野的人越来越少，大家都不愿意骑着山地车压马路。当时就想着山地卖了换公路，之后就开始存钱，一年后才把这辆车组起来。关于这辆车还有很多话想瞎比比的，毕竟是花费了大量心（学）血（费）。\r\n\r\n架子是某鱼上买来的，第一眼相中的是它的天蓝色队版涂装，价格看着合适就拿下了。车架刹车和变速的开孔都集中在头管一小部分位置，所以走线看起来十分简洁，治愈了一部分没钱上电变的强迫症患者。坐管夹的位置要比一般车型的要高一些，然后车架不支持现在主流的直装式前拨所以还要另外买个夹环来转接 。架子几何相对于顶火架子来说没有那么激进，对于我这种骑游选手来说比较友好。从单车到相机，花费在自己喜欢事物上的时间使我的大学生活逐渐充实。感谢那些年带我入坑的学长，虽然我们都不能像从前一起骑车，但是希望大家都能够保持对单车的这份热情。', 'http://c2.biketo.com/d/file/news/bikenews/2018-09-29/ff05efe4c16f6171232b0b12a03317f2.jpg,http://c2.biketo.com/d/file/news/bikenews/2018-10-17/e52bff48c766ba96fb88f584db4820d9.jpg');
INSERT INTO `information` VALUES (15, '《骑趣快讯》从南到北1500公里 带你穿越英国“318”', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/news/bikenews/2018-09-21/6dfb75b25e6b22f926ead23bea92ed48.jpg', '2018环西结束 西蒙·耶茨夺冠，英国人卫冕三大环赛。GoPro发布新一代运动相机Hero 7，真正稳如狗。从海角到天涯，英国“318”带你领略不一样的腐国风光...', '2018-09-21', '作者：Fun倪', '热门资讯', 5, NULL, '2018环西结束 西蒙·耶茨夺冠，英国人卫冕三大环赛。GoPro发布新一代运动相机Hero 7，真正稳如狗。从海角到天涯，英国“318”带你领略不一样的腐国风光。', 'http://c2.biketo.com/d/file/news/bikenews/2018-10-11/a5968403a7ce3954d27302981645f2ea.jpg,http://c2.biketo.com/d/file/news/bikenews/2018-10-17/584089e528149cd711c4dbd45e7ef7ac.jpg');

-- ----------------------------
-- Table structure for myinfo
-- ----------------------------
DROP TABLE IF EXISTS `myinfo`;
CREATE TABLE `myinfo`  (
  `mId` int(11) NOT NULL AUTO_INCREMENT,
  `mAccount` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mName` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mSex` int(11) NULL DEFAULT NULL,
  `mCity` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mAge` bit(1) NULL DEFAULT NULL,
  `mHeight` int(11) NULL DEFAULT NULL,
  `mWigth` int(11) NULL DEFAULT NULL,
  `mPassword` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mImg` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mPlace` bit(1) NULL DEFAULT NULL,
  `mGxqm` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`mId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `oNo` int(11) NOT NULL AUTO_INCREMENT,
  `oId` int(11) NULL DEFAULT NULL,
  `oWaitDeliver` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `oWaitReceive` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `oWaitPay` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `aFinished` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`oNo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for orderdetails
-- ----------------------------
DROP TABLE IF EXISTS `orderdetails`;
CREATE TABLE `orderdetails`  (
  `payNo` int(11) NOT NULL AUTO_INCREMENT,
  `sNo` int(11) NULL DEFAULT NULL,
  `sId` int(11) NULL DEFAULT NULL,
  `sAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sWay` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sExpress` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sMessage` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sTotal` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_oNo` int(11) NOT NULL,
  `myInfo_mId` int(11) NOT NULL,
  PRIMARY KEY (`payNo`) USING BTREE,
  INDEX `fk_orderDetails_order1_idx`(`order_oNo`) USING BTREE,
  INDEX `fk_orderDetails_myInfo1_idx`(`myInfo_mId`) USING BTREE,
  CONSTRAINT `fk_orderDetails_myInfo1` FOREIGN KEY (`myInfo_mId`) REFERENCES `myinfo` (`mid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_orderDetails_order1` FOREIGN KEY (`order_oNo`) REFERENCES `order` (`ono`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for strategy
-- ----------------------------
DROP TABLE IF EXISTS `strategy`;
CREATE TABLE `strategy`  (
  `sId` int(11) NOT NULL AUTO_INCREMENT,
  `sTitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sIntro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sTime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sFrom` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sType` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `smCheck` int(11) NULL DEFAULT NULL,
  `smIntro` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `smImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of strategy
-- ----------------------------
INSERT INTO `strategy` VALUES (1, '青春无畏 无限美好 麦芒永不止步：香格里拉大环线骑行DAY7', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/tour/notes/2018-09-19/7df6a5bbd687c99d7e70ec3207a21c01.jpg', '不知不觉，麦芒香格里拉环线骑行挑战接近终章。骑行第七天，无畏青年们从“世界高城”理塘出发，正式偏离318国道，转向217省道，前进……\r', '2018-10-13', '作者：KzMe', '路线', 7, '不知不觉，麦芒香格里拉环线骑行挑战接近终章。骑行第七天，无畏青年们从“世界高城”理塘出发，正式偏离318国道，转向217省道，前进“最后的香格里拉”稻城县。\r\n\r\n昨天在318国道上远远眺望巍峨的海子山和山脚下平静清澈的姊妹湖，无畏青年们就想走近感受真实的海子山，触摸到黑硬的岩石，感受时间带给大自然的沧桑巨变。今天的路线正好要翻过海子山腹地，无畏青年将在平均海拔4000米的高原挑战极限，坚持到底。海子山是世界上最大的古冰体遗迹，以“稻城古冰帽”著称于世。此时乌云密布，压抑着遍野荒山，压抑着每个人。连续爬坡4公里征服扎嘎神山之后，走向兔儿山、海子山，才发现山上竟然是如此的荒凉萧瑟。\r\n\r\n怪石嶙峋，山脚下的还被野草覆盖，山坡上的巨石则已裸露在昏暗的天空下。这里像是巨大的采石场，又像是干涸的海底世界，放眼望去，一望无际的乱石错落在每个角落，如同火星撞地球之后的末日世界，又仿佛来到了另外一个未知的星球。\r\n\r\n来到这里的每个人都会惊叹大自然的鬼斧神工，同时也情不自禁地好奇：这些散落在海子山的石头到底从哪里来的呢？生长在一洼又一洼海子湖畔石头夹缝的黄绿野草，在石缝里拼命地向上，要汲取养分，要艰难呼吸，要触摸阳光，要茁壮成长。这不就是“无畏生长”的麦芒精神吗？\r\n\r\n', 'http://c2.biketo.com/d/file/tour/notes/2018-09-19/14d5ed44e83e74b5b99fefa23d4e165f.jpg,http://c2.biketo.com/d/file/tour/notes/2018-09-15/1835a7dc6fa079929d33fac78bac00f6.jpg');
INSERT INTO `strategy` VALUES (2, '云上之巅，终遇雪山：香格里拉大环线骑行DAY6', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/tour/notes/2018-09-18/f8b9d2da23aa14040d7cbedabff40a2e.jpg', '我为什么要爬这么多的坡？为什么要去走那黑乎乎的隧道？为什么要在这里受这种苦？……最终爬升到海拔4014米的“世界高城”理塘。', '2018-10-12', '作者：KzMe', '路线', 8, '川藏线上有无数条曲折的道路，巴塘到理塘的道路则是川藏线上蜿蜒曲折的典范，一路上高原托举着山脉，山脉避让着深谷，深谷畏惧着雪山，沿着金沙江峡谷反骑318，除了爬坡就是爬坡，让人回想起前天在滇藏线被爬坡支配的恐惧，而如今在318川藏南线无畏青年又一次被无尽的爬坡安排得明明白白。在波峰浪谷中穿行，穿越葱葱郁郁的原始森林，公路一直蜿蜒向上，一会儿被推上高高的峰顶，渐渐的，一会儿又滑向深深的峡谷，大山就像波涛一样涌向天际。\r\n\r\n脚下的踩踏越来越缓慢，呼吸也愈加急促。不断攀升的海拔，让今天的骑行愈加困难。比爬坡更艰难的，则是内心的恐惧。在长达3公里的超长隧道里骑行，没有距离感，没有方向感，什么也看不见，什么也听不见，只能追随着车前灯微小的光，小心翼翼地往前走。恐惧的魔鬼在黑暗的隧道无处不在，就像是一次令人恐惧的漫长心理素质考验，是接受神山审判前煎熬般的漫长等待。\r\n\r\n穿出隧道，耀眼的阳光则刺痛着每个人的眼球，稀薄的空气带来高强的紫外线辐射，一路的大风吹得人嘴唇干裂，脸色发白。串串已经喝了3瓶水了，可还是止不住干燥，摸一把脸，没想到才一会儿的功夫，太阳已经把脸皮晒到皲裂。\r\n\r\n看山要缘分，看神山更加需要运气，无畏青年此番骑行香格里拉环线，错过了白马雪山，错过了梅里十三峰，在最艰难的红拉山垭口依然没能见到神圣的雪山。“转山转水转佛塔，不为修来世，只为途中与你相见。”在无尽的爬坡之后，今天终于看到了海子山巍峨的雪顶。历经千辛万苦，终于见得神山真面目！', 'http://c2.biketo.com/d/file/tour/notes/2018-09-18/129fac7a575ee3ae54beefd2c2d86f82.jpg,http://c2.biketo.com/d/file/tour/notes/2018-09-15/aca472c771f1a2700929e3166ba9bd8b.jpg');
INSERT INTO `strategy` VALUES (3, '宁当有故事的青年，不过无趣的人生：麦芒来到香格里拉', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/tour/life/2018-09-13/dadaed5f1b3b493e2172e21e44636931.jpg', '九月，阳光正好秋意正浓，去香格里拉骑车吧，去朝圣。我们要不停地去探索，我们想知道这个世界的奥秘，我们想一辈子都不停下来。', '2018-09-13', '作者：KzMe', '路线', 4, '永远做不完的工作，永无休止的加班，日复一日的三点一线……何时才能冲破城市的桎梏，抛开世俗的纷扰，找回年轻时的冲劲？是时候来一场说走就走的旅行了，路上或许有答案。\r\n\r\n挑选目的地并没有耗费过多时间，长久以来我们都渴望来一场“都市出走”，可以去山谷，可以去丛林，可以去川脊，可以去平原，可以去远离都市的一切地方。于是，我们一致相中香格里拉作为旅行的开端。\r\n\r\n九月，阳光正好秋意正浓，那就从这里开始吧，去朝圣。这次的骑行是巧合，却又是注定。\r\n\r\n我们一直想去这样一条路线，所以在华为麦芒7新机发布之际，看见主题“生而无畏，加速前行”，不由得眼睛放光，还有比香格里拉环线骑行挑战更适合这个主题的吗？\r\n\r\n这次，我们只想从心出发，不管有多么大的光环，是不是职业选手，不管获得过多大的成就，我们只想来一次纯粹的都市逃亡之旅。我们可以出发在朝霞下，可以出发在露水中，可以出发在雪山里，可以出发在风雨中；可我们不想拥挤在早高峰，不想沉睡在地铁里，不想再奔跑向最后一班晚班车。这是懦弱者的逃离吗？不，这是勇敢者的冒险。接下来新的每一天，都是一场重新出发。\r\n\r\n即将出发的，是有着相同的兴趣，而又个性迥异的四个年轻人。最有趣的是，他们都把自己定义为“无畏青年”，那好啊，那就启程吧，看看是不是办公室里的都市妄言，看看这场和自然的亲密博弈之中，谁才能笑到最后。', 'http://c2.biketo.com/d/file/tour/life/2018-09-13/c9db29124e784ed9449fd5ab6980cafd.jpg,http://c2.biketo.com/d/file/tour/life/2018-09-13/4033aaa4b8669777f2e642b7eb6622cd.jpg');
INSERT INTO `strategy` VALUES (4, '小明不死奇遇记：在人口密度最低的国家骑行（上）', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/tour/notes/2018-08-31/259a0fc8547486055f284803176e9049.jpg', '在世界上人口密度最小的国家——蒙古骑行会是种怎样的体验呢？	', '2018-10-12', '作者：小明', '骑行课堂', 5, '关于蒙古\r\n\r\n如果没有任何指向性的说出“蒙古”这个专有名词的话，我想99%的人都会理解成“内蒙古”，而紧邻中国北部做为一个独立主权国家存在着的“蒙古”我们了解的好像并不是很多。由于平时接触到的相关信息较少，让这个如此之近的邻国（国境距北京仅600多公里）和我们走的越来越远。\r\n\r\n蒙古首都\r\n\r\n蒙古国土面积为150万平方公里，是世界第19大国家，但蒙古人口仅为300万人，更不可思议的是这300万人口中的45%都居住在首都乌兰巴托！北京仅仅一个城市就承载了七个蒙古国的总人口，所以蒙古当之无愧的成为了世界上人口密度最小的国家！而这100多万的乌兰巴托人中74%的又是青年，所以乌兰巴托还是世界上最年轻的城市之一。其他城市\r\n\r\n近年来乌兰巴托发展迅速，在成吉思汗广场附近的购物中心甚至出现了一线奢侈品品牌店，但人口基数少，其他城市的发展就十分缓慢了，如蒙古第二大城市额尔登特的人口就迅速降为了8万人。中国二手的市政设施在蒙古城市中十分常见，比如小区的公共游乐设施，甚至垃圾桶上都印着中文。', 'http://c2.biketo.com/d/file/tour/notes/2018-08-31/5ed089f35e6078d242ed38d0e32c3e11.jpg,http://c2.biketo.com/d/file/product/equipment/2018-10-14/39c839a5ac7ba5f23b73562c5e13221b.jpg');
INSERT INTO `strategy` VALUES (5, '摔车后如何处理伤口 简单4步不留疤', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/edge/health/2018-08-13/10bd69ce754b98cefb374d976c0da520.jpg', '简单4步，把伤口安排的明明白白！', '2018-10-15', '作者：Molly Hurford(张天霁译)', '骑行课堂', 2, '俗话说，常在河边走，哪有不湿鞋。骑车时你总会尽你最大的努力来防止摔车事故的发生，但有时，事故实在是躲不开。在这种情况下，能否妥当地处理你摔车造成的擦伤，可能意味着要么快速地恢复，要么留下永久的疤痕。以下给大家带来广大骑友在摔伤后要遵循的四个关键步骤。\r\n\r\n1.正常清洗伤口\r\n\r\n亚伦·戈德堡(Aaron Goldberg)是一名曾在职业自行车车队做过队医的急救医师。戈德堡建议，在摔伤后的第一件事就是用清水来清洗伤口，用瓶装水或附近水源获取的水都可以。如果伤口实在太脏了，尽快使用Skintegrity Wound Cleaner或Shur-clens等清洁剂来清理（译者注：两者均为专业医用外伤清洁剂，用生理盐水冲洗也可以）。不要使用过氧化物，也不要太用力擦洗。“如果你都能肉眼看到脂肪液滴了，或者伤口显然已经很深很深了，那你可能需要缝针了，别犹豫，赶快去急诊室吧。”戈德堡说。2.及时包扎伤口\r\n\r\n对于轻微的擦伤，戈德堡建议抹上一层厚厚的抗生素软膏，比如新斯波林软膏（译者注：多粘菌素的一种，外伤常用药。在国内可以用百多邦代替），然后用不带粘性的敷料和一段纱布（他本人比较喜欢网状格子的纱布作为绷带）来固定住你选择的敷料。每天重新拆开然后换上新的布料来包扎，直到患处彻底痊愈。\r\n\r\n对于中等深度的伤口，戈德堡推荐在伤口中央处涂上一层薄薄的抗生素软膏，然后用Tegaderm（译者注：3M公司的一种透明伤口敷料）这样的敷料盖住，并用纱布覆盖以确保安全。这次你可以把绷带多固定上几天。当你更换敷料时，记得要轻轻地清洗一下伤口。\r\n\r\n对于较深的伤口，戈德堡说，只要直接在伤口上盖上一层完全密封的敷料绷带包扎，并尽可能地盖住伤口的边缘部位，然后用药物来固定住就可以了。敷料下面的药物会变成一种凝胶状的保护层，这一涂层可以保持一个星期左右。戈德堡说：“如果几天的时间里这块密封层漏了，一定要用纱布重新包扎好，以免药物流出弄脏衣服。”\r\n\r\n3.时刻关注你的愈合过程\r\n\r\n在你的伤口愈合的过程中，疼痛感应该一天比一天减弱才对。出现任何剧烈疼痛、肿胀发红或分泌异味物质都可能是感染的迹象。戈德堡认为：“这种情况下一定要去看医生，因为你可能需要使用一些抗生素并重新包扎好伤口。”\r\n\r\n4.别留下疤痕\r\n\r\n无论在什么情况下，只要你弄伤了你的皮肤，都有留下疤痕的危险。为了将风险降到最低，在伤口愈合后，最好用保湿霜给你的伤口进行轻柔的按摩。铁人三项运动员、外科整形护士专家罗兹•麦金蒂(Roz McGinty)建议每天做两次恢复按摩，每次要持续几分钟。她说:“这种按摩有助于分解疤痕组织，滋润新皮肤。”麦金蒂还建议在受伤后使用皮肤霜、皮肤凝胶或肌能带治疗两到四个月。对此她表示：“它对褐色的、红色或凸起的疤痕特别有效。”\r\n\r\n如果你不想让你的伤疤看上去太明显，就要尽量避免阳光——紫外线会增加色素沉着，让你的疤痕看起来更严重。“理想情况下，受伤后的一年到一年半里都得这样做（避开阳光），”麦金蒂说，“这对广大骑友来说是一个比较严苛的要求，因为不让他们出去骑车会憋坏的。因此，我们中的许多人都在身上留下了不少\'荣誉勋章\'，这也就不足为奇了。”', 'http://c2.biketo.com/d/file/edge/health/2018-08-13/41a716301d28d50a7d81050595f7f12c.jpg,http://c2.biketo.com/d/file/edge/health/2018-08-13/792a92012389109c6494aca6ce5b12c8.jpg');
INSERT INTO `strategy` VALUES (6, '来自最成功的山地自行车车队经理的训练秘诀', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/racing/column/2018-07-24/1deb89cf0946b8ab75035bc453ae8a4d.jpg', 'Scott-SRAM车队的 Thomas Frischknecht或人们更亲切的称他Frischi，他是近几年骑行界最成功的山地车队背后的团队支持的关键人物。他同时曾经多次在不同...', '2018-10-15', '作者：Thomas Frischknecht', '骑行课堂', 4, '黄金第一准则就是此类赛事一定是以团队为基础：你与你的搭档的速度要保持一致。非常重要的一点是你一定要认清你所设定赛事的目标与实际情况以及这次的参赛主要目的是让大家最大的享受赛事所带来的乐趣。尊敬你的搭档，因为选手在多日赛里的相互关系更多的是像一场“一周的短期婚姻”，但是这一周的骑行环境会非常艰苦。每一队或多或少都会出现各种各样的关系危机，所以提前在心理上和现实中为这一刻做好准备显得尤为重要。\r\n\r\n在每场开赛前仔细阅读与了解赛段信息，赛前了解到每场赛事将会有多少的爬升以及里程细节是一个非常好的想法，但是同时不要忘记更多的时候我们需要实际去感受比赛，有时候从赛事简介的数据上看这将是一场非常轻松的路段，而实际上的感受却是一场非常艰难的赛段。这是因为“节奏”在作怪，找到属于自己的节奏非常重要！\r\n\r\n长距离的耐力骑行，你将会从此类型的训练中收益最大化。当然这种训练会花费你很多时间，但他会教你在长距离骑行中找到节奏的重要性。如果你能够有一个连续一周的训练营（每日骑行），那将会对你赛事前的体能准备有非常大的帮助。\r\n\r\n训练（前期准备）应该是整个赛事体验的一大部分，同时你应该享受这个过程。如果你无法去享受为备赛而来训练，那么你也无法在真正的比赛中享受赛事所带来的乐趣。所以当你在为Perskindol Swiss Epic赛事准备训练时，应该确保你可以花一些时间在周边的山地路线训练，同时去细细享受大自然带来的壮丽景观。\r\n\r\n所需要的山地自行车技巧来自于练习！尽可能多的去尝试不同的路型，走出自己的训练甜区，尤其去一些非常需要技巧的技术路段训练，这将会提高你对于不同路面的自信！\r\n\r\nThe Perskindol Swiss Epic可能在赛程上会比Absa Cape Epic路段要短，但是他将会更多的海拔爬升和下降。如果能够在前期训练时多加强长距离爬坡练习将会非常好，同时也可以优化和提升下坡的技巧。\r\n\r\n这是一场关于“节奏”的赛事，尤其在长距离爬坡段。找到合适自己的正确节奏，通常我们会觉得速度慢，但那正是对于在长距离爬坡段生存下来的秘诀。最佳的恢复就是“不停的补给”，尤其是在一天高强度的赛事后或者训练课时后。有时候在一场激烈的比赛后，进食犹如另一场战斗，情况变非常困难，眼前的美食变得难以下咽。但是建议此时及时开始“补给”，将师傅分成一小份一小份的方式慢慢食用。谢天谢地，The Perskindol Swiss Epic有提供超棒的肌肉恢复按摩服务，同时如果能在河流以及小溪流中来一个“冰水浴”也将是另一个非常推荐的缓解肌肉疲劳的方式。', 'http://c2.biketo.com/d/file/racing/column/2018-07-24/820343cd10e69f4ef4a8a2767d2fc7f6.jpg,http://c2.biketo.com/d/file/product/buyguide/2018-06-06/b35b4d7438bce926b55dd8cc381fa065.jpg');
INSERT INTO `strategy` VALUES (7, '干货分享：铁人两项赛高原备战全攻略（上）', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/racing/cover/2018-06-28/7d467c9f8ac8b8efef381fec33d3edac.jpg', '在一个月前的香格里拉铁人两项赛中，厦门铁人陈家栋以绝对的优势打破记录，成功挑战这项海拔最高的骑跑赛事。赛后美骑记者就关于骑跑两项高原备战的若...	', '2018-10-14', '作者：陈家栋', '推荐文章', 2, '在一个月前的香格里拉铁人两项赛中，厦门铁人陈家栋以绝对的优势打破记录，成功挑战这项海拔最高的骑跑赛事。赛后美骑记者就关于骑跑两项高原备战的若干问题向陈家栋进行了采访。他也分享了自己从备战、到参赛以及赛后恢复等全方位的“独家秘诀”，下面一起来看看吧！\r\n\r\n装备篇铁人两项要兼顾骑车和跑步两项耐力运动，因此和一般的公路赛或马拉松赛事有着细微的区别。除了骑行装备、跑步装备也必不可少，同时多带几件易损零件备用以防万一。\r\n\r\n陈家栋向我们分享他的骑跑两项主要装备：铁三服一套、自行车头盔、锁鞋、眼镜、跑鞋、空顶帽、备胎、CO2气瓶等。出行篇:外出参赛，最怕器材的损坏。因此无论是选择飞机、高铁、火车、大巴等出行方式，都要牢记保护好自己的器材装备。\r\n\r\n其中飞机托运较为暴力，陈家栋建议大家使用铁三专用装车包。并且记得在打包过程中，拆去后拨防止暴力运输过程中尾勾变形（同时建议多带一个备用尾勾以防万一，经常能遇到小伙伴托运过程中尾勾变形的情况发生）。训练篇:谈起日常训练，陈家栋颇有心得，个人对休赛期、赛季中都有针对性的训练计划，其中间歇训练法是他提高成绩的“秘密武器”。他说：“根据自身时间来进行骑跑训练的安排，我本身是爱好自行车，在自行车训练方面投入的时间占了骑跑训练的70%。在休赛期主要以低功率长距离跑量为主，将功率控制在二区，骑足3-5小时的时间，打下有氧耐力基础，一周大约进行2到3次的有氧跑量。', 'http://c2.biketo.com/d/file/racing/cover/2018-06-27/0213b4d9aea0c5c0b90dddeb5484a787.jpg,http://c2.biketo.com/d/file/racing/cover/2018-06-27/8d89a6ef655f7db29e9f65a38b72fdad.jpg');
INSERT INTO `strategy` VALUES (8, '拒绝悲剧 自行车维修保养十大注意事项', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/edge/repair/2018-09-25/ef1dcfb8c7b147e9350a6e65f49e032b.jpg', '我们鼓励老鸟们尝试一些简单的自行车维护工作，今天在这里给大家列举一下单车维护中的十个注意事项。', '2018-10-13', '作者：George Ramelkamp', '推荐文章', 1, '首先你需要这些工具\r\n\r\n辐条扳手；\r\n\r\n润滑油脂；\r\n\r\n3、4、5毫米的内六角扳手；\r\n\r\n链条工具；\r\n\r\n打气筒，气压表；\r\n\r\n脚踏扳手。一、不要将座管长久的插入在车架中,如果你的座管长时间不拿出来，是很容易卡在那个位置的，除非你花费大价钱维修，否则这会让你的座管失去调节能力，导致不好出二手。\r\n\r\n即使你已经给它上过油，随着时间的推移，润滑脂也会分解，并最终氧化挥发掉，因为实际上水分子进入车架内部是无法避免的。\r\n\r\n无论你的座杆和车架是碳还是金属的，或者是任意一组合，座管仍然又被卡住的风险。\r\n\r\n如果是金属座管，清拔出后应该及时清洁安装部位，之后要在安装区域涂上大量油脂，确保没有砂砾混入。\r\n\r\n对于碳坐杆，可以使用专门的装配用涂抹套装，例如Finish Line 或者Pace牌子的产品，电商有售。二、切勿忽视轮圈上的磨损极限标识:如果你使用的是圈刹，就一定不要忽略轮圈上标识的磨损极限，否者后果很可能是致命的。\r\n\r\n许多轮圈制造商提供某种类型的磨损量规，例如沿着圆周制动表面划出一圈浅沟槽或在特定位置钻出一个小浅孔。但是通常来说厂家会用标签表示。你需要找到这些标记并定期检查它们。一旦它们消失，就意味着你需要更换轮圈了。三、不要使用错误的方式拧紧碗组\r\n\r\n:调整碗组并不是一个简单的工作，甚至你首先需要了解碗组的工作原理并知晓正确调整的步骤。\r\n\r\n首先，在没有松开把立螺丝的情况下千万不要拧紧顶部的碗组盖，因为这样只会损坏位于转向管内的阀盖和星形垫圈或膨胀花芯的盖。最起码，要先将膨胀花芯从转向管顶部拉出，防止进一步的位移。\r\n\r\n如果是这种情况，重新定位膨胀花芯，并确保把立的顶部（或把立上方垫片的顶部）在转向器边缘上方突出约5mm。四、使用紧固工具的时候注意正确的用力和个人防护:使用紧固工具的时候不要仓促用力，否则很容易发生意外导致受伤。\r\n\r\n当拧紧和松开任何类型的螺栓时，一定要注意手放的位置。同时要判断如果工具或螺丝突然松动或者打滑的时候，你的指关节会碰到什么。', 'http://c2.biketo.com/d/file/edge/repair/2018-09-25/d5394699cab935a9a5d546d03b631430.jpg,http://c2.biketo.com/d/file/edge/repair/2018-01-08/8344e861882ec278fe9154d39b59f39c.jpg');
INSERT INTO `strategy` VALUES (9, '新手如何突破200km大关？', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/news/bikenews/2018-09-20/d42e61c219ceca6b60020b5060467093.jpg', '如果我想挑战人生的第一个200km，我需要做些什么呢？', '2018-10-12', '作者：张鲁姆', '推荐文章', 2, '大多数的车店和俱乐部举办的周末骑游活动，单次的里程控制在100-140km之间，因为这样一个难度老少咸宜，具有挑战性的同时又不是难以完成。因此，很多加入骑行已有一段时间的车友，个人单日最高里程还是保持在150km以内。\r\n\r\n而近年来，越来越多的骑行挑战赛在各地茁壮成长（如美骑挑战者营地、PBP不间断挑战），有的赛事会开设200km甚至300km组别，对突破自身极限的渴望，使越来越多的人愿意选择报名全程组。那么问题来了：如果我想挑战人生的第一个200km，我需要做些什么呢？接下来希望我在2017年3月参加京津冀PBP的经验，能够帮助到想要首次尝试200km的车友；水平实在有限，绝不敢自诩“宝典”之类，也希望各路长途旅行、日行300km的大神多多提出宝贵建议。\r\n\r\n1、有足够的100+km骑行经验\r\n\r\n 罗马城不是一天建成的，200km也不是第一天骑车的人就能完成的。要想完成一天骑完200km的“壮举”，事先要有3次以上的100-150km左右的骑行经历。在这个距离上，你可以清楚地知道你的身体到底能够承受什么强度的骑行，能承受多久；如果完成150km已经非常吃力了的话，贸然尝试200km显然是不合适的，因为随着距离的增长，身体机能的下降绝对不是均匀的，而是一种断崖式的。这一点我后面还会介绍到。\r\n\r\n2、研究一下路线\r\n\r\n关于路线，现在绝大多数的骑行挑战活动会事先把行者/黑鸟/兔子app的路书编号提供给各位车友，因此大家事先下载到自己的手机里即可。提前一天拿出十分钟的时间了解一下路线情况，把重要的岔路口和折返点在心中留个印象，以免到了实地，身边又没人提醒的时候走错路。一旦走错路，不光会损失宝贵的体力，更会让你变得焦躁不安。3、检查好你的车辆和相关器材！\r\n\r\n对器材的检查也是很重要的方面。至少提前一天对自己的车辆进行检查，确保刹车、变速的流畅运行和其他部件的完好，是你完成挑战的重大助力。在我第一次挑战200km的过程中，就不幸发生了爆胎的事故。由于没有携带备胎和气筒，导致我在路边滞留了将近40分钟的时间；绝望和自责的负面情绪也开始占据我的头脑。与主办方也沟通无果，就在我即将选择退赛之时，驾驶后援车路过的北京平谷UCC专卖店老板为我伸出了援助之手，将一只闲置的前轮借给了我，我由此得以继续前进。这个经历是想告诫各位骑友，一定要检查好车辆，并携带备胎和修补工具。如果速度较慢或参加300km的车友，在日出之前就要出发或日落之前无法抵达的话，要自行配备前后车灯和反光背心哦～\r\n\r\n4、吃饱也要吃好！\r\n\r\n饮食方面，我建议在头一天的晚上摄入足够的能量。吃饱，但不要吃得太撑！米饭和意大利面含有丰富的碳水化合物，但吃得太多会让你的双腿发沉。在骑行过程当中你也要不断地进食和饮水，准备的食物至少是你平时一日三餐的1.5倍。如果没有能量胶，小面包、香蕉都是不错的选择，你可以每隔25分钟补充一次水分，每隔一个小时或两个小时就进食一次，如果忘记了饮水或进食，带来的饥饿感将会是断崖式的。', 'http://www.biketo.com/d/file/news/bikenews/2018-09-04/6c8e63af50715afff55f1b69daf8939e.jpg,http://c2.biketo.com/d/file/news/activity/2018-09-23/22f120527c37117c5c4eed0106b04e3e.jpg');
INSERT INTO `strategy` VALUES (10, '公路越野澜沧江：香格里拉大环线骑行DAY3', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/tour/notes/2018-09-15/e60e4d8895768b6f4352962c0920e178.jpg', '一路上塌方和泥石流的痕迹随处可见，散落在路中间的碎石让人痛苦不堪，咬紧牙关，冲过去吧！', '2018-10-14', '作者：KzMe', '路线', 5, '无畏青年的香格里拉大环线骑行第三天从弥漫的大雾开始，从山顶大峡谷一路俯冲，来到澎湃咆哮、奔腾不息的澜沧江边，无畏向前冲，最终到达云南与西藏交界处的盐井乡。\r\n\r\n据说看到“日照金山”的人与佛有缘，一整年都会得到神灵的庇护。为此无畏青年们夜宿飞来寺，更顾不得前日的疲惫，早早来到飞来寺观景台，希望有幸能够揭开梅里雪山的神秘面纱。很遗憾，山间大雾始终将远处神圣的梅里雪山十三峰藏得严严实实，我们期待着浓雾的散开，却久久等不到风来。原有的计划又一次被不配合的天气打乱，那就换一种方式去欣赏好了。拍不到美丽的风景，就拍下自己的笑颜吧。毕竟求而不可得也是人生的常态。一、二、三，微笑！卡瓦博格，我们下次再约！“峡高江面缩，石叠濑声雄。”在神秘而陡峭的峡谷，澜沧江环绕盘卧，奔腾万壑，缭绕千峰。四位无畏青年则在其中自由穿梭。电影《极盗者》中有句台词：“大自然总能找到办法让人觉得渺小。”接近这苍茫壮丽的澜沧江，才知道自己如沧海之一栗。', 'http://c2.biketo.com/d/file/tour/notes/2018-09-15/8b3e4c6b0b0c3b4f99db5b4980392a44.jpg,http://c2.biketo.com/d/file/tour/notes/2018-09-15/a446c09decb55b3b95be63a5b3a36207.jpg');
INSERT INTO `strategy` VALUES (11, '登上好莱坞之巅 洛杉矶终极骑行之旅', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/tour/routes/2018-09-05/31e018132334441634f634e8a5828e62.jpg', '如果你要来洛杉矶骑公路车旅行，让我推荐一条不错的路线的话，那一定是去往好莱坞标志的这条路线！', '2018-10-13', '作者：佚名', '路线', 4, '如果你要来洛杉矶骑公路车旅行，让我推荐一条不错的路线的话，我不用想就可以回答你：那一定是去往好莱坞标志的这条路线！事实证明，就算你是骑行者，你也会像那些非骑行者和普通游客一样，难逃“观光”一劫，沦为赶往各个标志性建筑前打卡的“观光客”。你也别不承认了，这就是你来LA的原因之一不是吗？不过，好莱坞标志以及骑来这里的路线，和中国剧院、星光大道等其他热门景点有一个很大的不同：你必须非常努力，才能爬上山，骑到离好莱坞标志足够近的地方。\r\n\r\n好莱坞有个老笑话，出自约翰尼·卡森（美国著名节目主持人）和贝蒂·戴维斯（美国电影、舞台剧女演员）的对话。卡森问戴维斯：一个胸怀有志的新星想要进入好莱坞，有什么最快的办法？戴维斯一点没带犹豫的回答说：走喷泉大街呀！喷泉大街是连接银湖和西好莱坞的一条东西向路线，与日落大道和圣莫尼卡大道平行——这是两条非常拥堵的主干道，骑自行车很危险，特别是在高峰时段。相比之下，喷泉大街对自行车相当友好。一路上你会经过咖啡馆，农贸市场，一开始是双向车道，当你到达好莱坞的时候道路会变宽。这里整条路上都有提醒机动车要和骑行者共用车道的标识。所以当一辆排气管砰砰作响的马沙拉蒂以每小时80英里（约128.7公里）的速度从你身旁开过时，你也不必惊讶。\r\n\r\n如果你刚好住在附近，或者你需要拿一条内胎或一些零食，或者也许你想要在出发前来几个劲头满满的击掌，你都可以来金鞍车行或学者咖啡，这里是我们每周五早晨的TGSCIF骑行（Thank Golden Saddle Cyclery It’s Friday！是由TGIF即Thank God It’s Friday演变而来）的出发地，碰巧这些照片也是在这儿拍的！可以将这里做为起点，走喷泉大街进入好来坞。在穿越尼科尔斯峡谷之前，这一段平缓的路可以让你轻松地完成热身，紧接着爬一段多风的缓坡，到达传说中的穆赫兰大道，真正陡峭的地方便从这里开始了。但是好在，海拔徒然升高没多久，在围绕好莱坞水库的一个转弯的地方，坡度会放缓。这时可以走一条只有当地人熟悉的小路，再次回到穆赫兰大道上。其实，就像谷歌地图上标注的一样，它有点像是一条沙地路面的单行线。当你终于从这条绵软的沙地小路里骑出来，准备好迎接密密麻麻的人群吧！很多游客、摄影师们，还有当地居民混杂在一起。你要试着通过这条让你行动缓慢的蜿蜒街道，同时当心那些被交通状况搞的心烦意乱的司机。距离爬到李山（Mt. Lee）已经不远了，那里便是好莱坞标志座落的地方。它一年到头都被监控保护，还围着一个10英尺高（约3米）的铁丝网。如果遇到视线清晰的好天气，这里可以360度全景观赏LA！从海岸线到山区，以及中间所有的建筑物都可以尽收眼底！\r\n\r\n从这里穿过人群原路返回，再骑到格里菲斯公园基地。最后可以一路巡航回到金鞍车行。别忘了和大家分享你的旅途趣事！', 'http://c2.biketo.com/d/file/tour/routes/2018-09-05/8b28b342fa4bda11a671dcdf0ff6438e.png,http://c2.biketo.com/d/file/tour/routes/2018-09-05/f84b9a224262464f5ae67929ceaa225c.jpg');
INSERT INTO `strategy` VALUES (12, '圆梦伊斯坦布尔 追梦中年少女的骑游攻略', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/tour/notes/2018-08-13/51ca59e6d78c22bef1e440a11d7e5ffe.jpg', '走过了很多地方，我来到伊斯坦堡，就像是童话故事，有教堂有城堡～她和小布在伊斯坦布尔实现了少女时的梦想……', '2018-10-12', '作者：binny', '路线', 2, '（一）走过了很多地方，我来到伊斯坦堡\r\n\r\n第一次知道伊斯坦堡，当然是因为杰伦。那时候还没有坐过飞机，在因为拥有一部sony的随身听（既然暴露了年龄，那么不知道随身听是什么东西的小朋友们，自己去百度吧……）而感到无比风光的初中校园里，被杰伦种下了这颗草。\r\n\r\n很多年来，对伊斯坦堡的印象，一直是歌里的那句“就像是童话故事，有教堂有城堡”。后来有几年，感觉身边所有的人听杰伦的歌越来越少了。两年多前我刚到北京，和多年未见的闺蜜一起吃饭，她的手机突然来电，铃声前奏刚响我就脱口而出“伊斯坦堡”，她笑着说现在还能这么快说出这歌名的也就你这种老牌杰迷了。我在伊斯坦布尔呆了十天。我跟朋友说，伊斯坦布尔总让我想起青岛。无法辨别方向的弯曲小路，上坡下坡，不知道在哪里该转弯，一不小心就会迷路。我一度对这样结构的城市十分着迷，虽然我一直在抱怨伊斯坦布尔的交通很混乱——公共交通换乘起来总体不方便，地铁里没有手机信号，没有wifi，马路上塞车严重，汽车在街上不让行人，还会冲行人呜笛。\r\n\r\n可是抛开这些，他们确实也为自行车做了很多让人感动涕零的努力。虽然很多上下坡，但这里依然不缺少骑车的人。见到好多旅骑的人驼着大包小包，一样往坡上爬。\r\n\r\n这所有的一切都让我迫不及待要骑车出来探索这个城市。更何况博斯普鲁斯海峡两岸美景，如果不骑车，要怎么好好欣赏它？', 'http://c2.biketo.com/d/file/tour/notes/2018-08-14/baa6197b508c067bf7a8ae2cd58e26bf.jpg,http://c2.biketo.com/d/file/tour/notes/2018-08-13/8dee9918d8d8c1290a38548b1c7bb4ab.jpg');

-- ----------------------------
-- Procedure structure for getclassstrate
-- ----------------------------
DROP PROCEDURE IF EXISTS `getclassstrate`;
delimiter ;;
CREATE PROCEDURE `getclassstrate`()
BEGIN
	SELECT sId,sTitle,sImg,sIntro,sTime,sFrom,sType,smCheck FROM strategy 
            where sType="骑行课堂" order by sTime DESC,smCheck desc;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for gethotinformation
-- ----------------------------
DROP PROCEDURE IF EXISTS `gethotinformation`;
delimiter ;;
CREATE PROCEDURE `gethotinformation`()
BEGIN
	SELECT zId,zTitle,zImg,zContent,zTime,zFrom,zCheck,zType FROM `information` 
                where zType="热门资讯" order by zTime desc,zCheck desc;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for getnewsInfo
-- ----------------------------
DROP PROCEDURE IF EXISTS `getnewsInfo`;
delimiter ;;
CREATE PROCEDURE `getnewsInfo`()
BEGIN
	SELECT zId,zTitle,zImg,zContent,zTime,zFrom,zCheck,zType FROM `information` 
            where zType="骑闻" order by zTime desc,zCheck desc;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for getotherInfo
-- ----------------------------
DROP PROCEDURE IF EXISTS `getotherInfo`;
delimiter ;;
CREATE PROCEDURE `getotherInfo`()
BEGIN
	SELECT zId,zTitle,zImg,zContent,zTime,zFrom,zCheck,zType FROM `information` 
            where zType="其它" order by zTime desc,zCheck desc;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for getrecstrate
-- ----------------------------
DROP PROCEDURE IF EXISTS `getrecstrate`;
delimiter ;;
CREATE PROCEDURE `getrecstrate`()
BEGIN
	SELECT sId,sTitle,sImg,sIntro,sTime,sFrom,sType,smCheck FROM strategy 
            where sType="推荐文章" order by sTime DESC,smCheck desc;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for gettodayInfo
-- ----------------------------
DROP PROCEDURE IF EXISTS `gettodayInfo`;
delimiter ;;
CREATE PROCEDURE `gettodayInfo`()
BEGIN
	SELECT zId,zTitle,zImg,zContent,zTime,zFrom,zCheck,zType FROM `information` 
            where zType="今日资讯" order by zTime desc,zCheck desc;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for getwaystrate
-- ----------------------------
DROP PROCEDURE IF EXISTS `getwaystrate`;
delimiter ;;
CREATE PROCEDURE `getwaystrate`()
BEGIN
	SELECT sId,sTitle,sImg,sIntro,sTime,sFrom,sType,smCheck FROM strategy 
            where sType="路线" order by sTime DESC,smCheck desc;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for infoDetails
-- ----------------------------
DROP PROCEDURE IF EXISTS `infoDetails`;
delimiter ;;
CREATE PROCEDURE `infoDetails`(IN `p_zId` int)
BEGIN
	select zId,zTitle,zTime,zdImg,zCheck,zdContent from information where zId=p_zId;
	
	update information set zCheck=zCheck+1 where zId=p_zId;
	

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for strateDetails
-- ----------------------------
DROP PROCEDURE IF EXISTS `strateDetails`;
delimiter ;;
CREATE PROCEDURE `strateDetails`(IN `p_sId` int)
BEGIN
	select sId,sTitle,sTime,sFrom,smCheck,smImg,smIntro from strategy where sId=p_sId;
	update strategy set smCheck=smCheck+1 where sId=p_sId;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
