/*
 Navicat Premium Data Transfer

 Source Server         : he
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : qiqu

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 30/10/2018 19:11:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bikedetails
-- ----------------------------
DROP TABLE IF EXISTS `bikedetails`;
CREATE TABLE `bikedetails`  (
  `cNo` int(11) NOT NULL AUTO_INCREMENT,
  `rNo` int(11) NOT NULL,
  `cName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cPrice` int(11) NULL DEFAULT NULL,
  `cNumber` int(11) NULL DEFAULT NULL,
  `cBigimg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cSmallimg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cImg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cIntr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cPsize` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cPname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cPfeatures` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cPmodel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cpayNumber` int(11) NULL DEFAULT NULL,
  `speed` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `size` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cSystem` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cNo`) USING BTREE,
  INDEX `fk_zm_table_z_table1_idx`(`rNo`) USING BTREE,
  INDEX `cNo`(`cNo`) USING BTREE,
  INDEX `cNo_2`(`cNo`) USING BTREE,
  INDEX `cNo_3`(`cNo`) USING BTREE,
  INDEX `cNo_4`(`cNo`) USING BTREE,
  INDEX `cNo_5`(`cNo`) USING BTREE,
  INDEX `cNo_6`(`cNo`) USING BTREE,
  INDEX `cNo_7`(`cNo`) USING BTREE,
  INDEX `cNo_8`(`cNo`) USING BTREE,
  INDEX `cNo_9`(`cNo`) USING BTREE,
  INDEX `cNo_10`(`cNo`) USING BTREE,
  INDEX `cNo_11`(`cNo`) USING BTREE,
  INDEX `cNo_12`(`cNo`) USING BTREE,
  INDEX `cNo_13`(`cNo`) USING BTREE,
  INDEX `cNo_14`(`cNo`) USING BTREE,
  INDEX `cNo_15`(`cNo`) USING BTREE,
  INDEX `cNo_16`(`cNo`) USING BTREE,
  INDEX `cNo_17`(`cNo`) USING BTREE,
  INDEX `cNo_18`(`cNo`) USING BTREE,
  CONSTRAINT `fk_zm_table_z_table1` FOREIGN KEY (`rNo`) REFERENCES `bikeindex` (`rno`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bikedetails
-- ----------------------------
INSERT INTO `bikedetails` VALUES (11, 1, '捷安特ARX 3变速山地车', 5298, 6, 'https://img.alicdn.com/imgextra/i2/1810404213/TB1H7i7kiCYBuNkHFCcXXcHtVXa_!!0-item_pic.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i1/1810404213/TB2_ANcaHAaBuNjt_igXXb5ApXa_!!1810404213.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i3/1810404213/TB2UrhXdNolyKJjSZFDXXbNfpXa_!!1810404213.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i4/1810404213/TB1F5lFSFXXXXbkXFXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg', 'http://img.alicdn.com/imgextra/i2/1810404213/TB1H7i7kiCYBuNkHFCcXXcHtVXa_!!0-item_pic.jpg_60x60q90.jpg,//img.alicdn.com/imgextra/i1/1810404213/TB2_ANcaHAaBuNjt_igXXb5ApXa_!!1810404213.jpg_60x60q90.jpg,//img.alicdn.com/imgextra/i3/1810404213/TB2UrhXdNolyKJjSZFDXXbNfpXa_!!1810404213.jpg_60x60q90.jpg,//img.alicdn.com/imgextra/i4/1810404213/TB1F5lFSFXXXXbkXFXXXXXXXXXX_!!0-item_pic.jpg_60x60q90.jpg', 'https://img.alicdn.com/imgextra/i4/1810404213/TB2zGdadQ7myKJjSZFgXXcT9XXa-1810404213.jpg,https://img.alicdn.com/imgextra/i3/1810404213/TB2FxGJzER1BeNjy0FmXXb0wVXa_!!1810404213.jpg,https://img.alicdn.com/imgextra/i4/1810404213/TB2AxLjbVokyKJjy1zbXXXZfVXa-1810404213.jpg,https://img.alicdn.com/imgextra/i4/1810404213/TB2OCglbWZPyuJjSspmXXX2IXXa-1810404213.jpg,https://img.alicdn.com/imgextra/i4/1810404213/TB2raUfb1IPyuJjSspcXXXiApXa-1810404213.jpg,https://img.alicdn.com/imgextra/i4/1810404213/TB2DeXddTAlyKJjSZFhXXc8XFXa-1810404213.jpg', '\r\n捷安特全避震山地车', '27.5英寸', '无避震硬叉', '铝合金', '硬车架', 85416, '21速', '26英寸', '双碟刹');
INSERT INTO `bikedetails` VALUES (12, 1, '捷安特Giant Yukon越野车', 2998, 4, 'https://gd1.alicdn.com/imgextra/i3/2363208047/TB2CDhJnnqWBKNjSZFAXXanSpXa_!!2363208047.jpg_400x400.jpg,http://gd2.alicdn.com/imgextra/i2/2363208047/TB2IsvJm.OWBKNjSZKzXXXfWFXa_!!2363208047.jpg,//gd1.alicdn.com/imgextra/i1/2363208047/TB2j441niAnBKNjSZFvXXaTKXXa_!!2363208047.jpg,http://gd1.alicdn.com/imgextra/i1/2363208047/TB2j441niAnBKNjSZFvXXaTKXXa_!!2363208047.jpg,http://gd1.alicdn.com/imgextra/i1/2363208047/TB2dvignb3nBKNjSZFMXXaUSFXa_!!2363208047.jpg', '', 'https://img.alicdn.com/imgextra/i2/2363208047/TB2xcWenbZnBKNjSZFhXXc.oXXa_!!2363208047.jpg,https://img.alicdn.com/imgextra/i4/2363208047/TB2XZehnb3nBKNjSZFMXXaUSFXa_!!2363208047.jpg,<img width=\"750\" height=\"624\" align=\"absmiddle\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/2363208047/TB2r.V_nfImBKNjSZFlXXc43FXa_!!2363208047.jpg\" data-spm-anchor-id=\"2013.1.0.i3.5cca1cb7Er1C2H,https://img.alicdn.com/imgextra/i2/2363208047/TB239adniMnBKNjSZFzXXc_qVXa_!!2363208047.jpg', '捷安特山地车', '28英寸', '碳纤前叉', '铝合金', 'Giant aluxx', 85417, '单速', '28英寸', '钳形叉');
INSERT INTO `bikedetails` VALUES (13, 1, '捷安特Giant Talon山地车', 2498, 5, 'https://img.alicdn.com/imgextra/i3/1810404213/O1CN011gzb5mnYB5P2Khr-1810404213.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i2/1810404213/TB2RD2UaXXXXXabXXXXXXXXXXXX-1810404213.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i3/1810404213/TB2woHVaXXXXXX1XXXXXXXXXXXX-1810404213.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i2/1810404213/TB2pXjPaXXXXXXiXpXXXXXXXXXX-1810404213.jpg_430x430q90.jpg', NULL, 'https://img.alicdn.com/imgextra/i3/1810404213/TB2bOAmqFXXXXc1XXXXXXXXXXXX-1810404213.jpg,https://img.alicdn.com/imgextra/i2/1810404213/TB2Bn2RqFXXXXcwXpXXXXXXXXXX-1810404213.jpg,https://img.alicdn.com/imgextra/i3/1810404213/TB2QoLRqFXXXXc8XpXXXXXXXXXX-1810404213.jpg,https://img.alicdn.com/imgextra/i3/1810404213/TB26tsXbodnpuFjSZPhXXbChpXa-1810404213.jpg', '捷安特山地车', '29英寸', '铁前叉', '铝合金', '碳纤维', 85418, '变速', '29英寸', '铝合金v刹');
INSERT INTO `bikedetails` VALUES (14, 1, '捷安特Giant Talon山地车', 3398, 23, 'https://img.alicdn.com/imgextra/i2/1810404213/O1CN011gzb5UB5o4czXe9_!!0-item_pic.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i2/1810404213/O1CN011gzb5DHJCB9ydgz_!!1810404213.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i2/1810404213/O1CN011gzb5D2XGWLY7BJ_!!1810404213.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i1/1810404213/O1CN011gzb5DQCH17SGMP_!!1810404213.jpg_430x430q90.jpg', '1', 'https://img.alicdn.com/imgextra/i2/1810404213/O1CN011gzb5CXWf8d39XB_!!1810404213.jpg,https://img.alicdn.com/imgextra/i3/1810404213/O1CN011gzb5Bf0yL3g3Ye_!!1810404213.jpg,https://img.alicdn.com/imgextra/i4/1810404213/O1CN011gzb5C5p1RHUJza_!!1810404213.jpg,https://img.alicdn.com/imgextra/i2/1810404213/O1CN011gzb5735b9blfEF_!!1810404213.jpg', '捷安特山地车', '26英寸', '避震前叉', '铝合金', '铝合金车架', 85419, '24速', '26英寸', '机械碟刹');
INSERT INTO `bikedetails` VALUES (15, 1, '捷安特Giant XTC自行车', 1999, 23, 'https://img.alicdn.com/imgextra/i4/1810404213/O1CN011gzb5KnlxeatlRm_!!1810404213.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i3/1810404213/O1CN011gzb5KZlVLgwkzR_!!1810404213.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i1/1810404213/O1CN011gzb5IGZD3blYz1_!!1810404213.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i4/1810404213/O1CN011gzb5JbNmZ8XVkA_!!1810404213.jpg_430x430q90.jpg', NULL, 'https://img.alicdn.com/imgextra/i3/1810404213/O1CN011gzb5JbgNhEcZGi_!!1810404213.jpg,https://img.alicdn.com/imgextra/i3/1810404213/O1CN011gzb5Jbh3FLTHCD_!!1810404213.jpg,https://img.alicdn.com/imgextra/i2/1810404213/O1CN011gzb5K0RJ5Wp7v9_!!1810404213.jpg,https://img.alicdn.com/imgextra/i1/1810404213/O1CN011gzb5J1GKCe4Y7I_!!1810404213.jpg', '\r\n捷安特儿童/青少年车', '24英寸', '弹簧叉', '铝合金', '硬车架', 85420, '22速', '24英寸', '单碟刹');
INSERT INTO `bikedetails` VALUES (16, 1, '捷安特Giant XTC山地车', 6298, 10, 'https://img.alicdn.com/imgextra/i4/1810404213/TB1vj3VspuWBuNjSszbXXcS7FXa_!!0-item_pic.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i4/1810404213/TB2dJZpkfuSBuNkHFqDXXXfhVXa_!!1810404213.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i3/1810404213/TB1OqpFSFXXXXbtXFXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i2/1810404213/TB2966hbVgkyKJjSspfXXcj1XXa_!!1810404213.jpg_430x430q90.jpg', NULL, 'https://img.alicdn.com/imgextra/i3/1810404213/TB2LZgub7UOyuJjy1XdXXXlkXXa-1810404213.jpg,https://img.alicdn.com/imgextra/i1/1810404213/TB2JwBfdPZnyKJjSZFxXXabIpXa-1810404213.jpg,https://img.alicdn.com/imgextra/i1/1810404213/TB2c.JhdTIlyKJjSZFrXXXn2VXa-1810404213.jpg,https://img.alicdn.com/imgextra/i2/1810404213/TB2fqxbdHAlyKJjSZFwXXXtqpXa-1810404213.jpg', '捷安特山地车', '26英寸', '油簧叉', '铝合金', '硬车架', 85421, '27速', '26英寸', '油压碟刹');
INSERT INTO `bikedetails` VALUES (17, 2, '迪卡侬伯爵M5山地车', 1798, 30, 'https://img.alicdn.com/imgextra/i2/TB10PGqSXXXXXbmXXXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i1/352469034/TB2H45cx25TBuNjSspcXXbnGFXa_!!352469034.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i2/352469034/TB2TwhopRyWBuNkSmFPXXXguVXa_!!352469034.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i1/352469034/TB2BrGPx7CWBuNjy0FaXXXUlXXa_!!352469034.png_430x430q90.jpg', NULL, 'https://img.alicdn.com/imgextra/i3/352469034/TB2JF9Sn7SWBuNjSszdXXbeSpXa_!!352469034.jpg,https://img.alicdn.com/imgextra/i1/352469034/TB2RDwgxWmWBuNjy1XaXXXCbXXa_!!352469034.jpg,https://img.alicdn.com/imgextra/i3/352469034/TB2cguviVooBKNjSZFPXXXa2XXa_!!352469034.jpg,https://img.alicdn.com/imgextra/i3/352469034/TB2cguviVooBKNjSZFPXXXa2XXa_!!352469034.jpg', '\r\n美利达山地车', '25英寸', '油簧叉', '铝合金', '铝合金车架', 85422, '26速', '25英寸', '双碟刹');
INSERT INTO `bikedetails` VALUES (18, 2, '迪卡侬公爵800 山地车', 2798, 40, 'https://img.alicdn.com/imgextra/i1/TB17NCmSXXXXXahXpXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i4/352469034/TB285KRiyMnBKNjSZFoXXbOSFXa_!!352469034.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i1/352469034/TB2fqnix29TBuNjy1zbXXXpepXa_!!352469034.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i4/352469034/TB28qzix29TBuNjy1zbXXXpepXa_!!352469034.png_430x430q90.jpg', NULL, 'https://img.alicdn.com/imgextra/i3/352469034/TB27uySc7fb_uJkHFNRXXc3vpXa_!!352469034.jpg,https://img.alicdn.com/imgextra/i3/352469034/TB2R2rqiHXlpuFjy1zbXXb_qpXa_!!352469034.jpg,https://img.alicdn.com/imgextra/i2/352469034/TB2hXBHkypnpuFjSZFIXXXh2VXa_!!352469034.jpg,https://img.alicdn.com/imgextra/i3/352469034/TB2Y8yhe5C9MuFjSZFoXXbUzFXa_!!352469034.jpg', '美利达山地车', '26英寸', '避震前叉', '铝合金', '硬车架', 85423, '24速', '26英寸', '机械碟刹');
INSERT INTO `bikedetails` VALUES (19, 2, '迪卡侬元素M女士变速车', 1498, 50, 'https://img.alicdn.com/imgextra/i2/352469034/TB1ky77qWmWBuNjy1XaXXXCbXXa_!!0-item_pic.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i2/352469034/TB25N5ufDqWBKNjSZFAXXanSpXa_!!352469034.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i1/352469034/TB2w52nqL5TBuNjSspcXXbnGFXa_!!352469034.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i2/352469034/TB2aO2nqQ9WBuNjSspeXXaz5VXa_!!352469034.jpg_430x430q90.jpg', NULL, 'https://img.alicdn.com/imgextra/i3/352469034/TB2uE67fxSYBuNjSsphXXbGvVXa_!!352469034.jpg,https://img.alicdn.com/imgextra/i1/352469034/TB2nAZLfr9YBuNjy0FgXXcxcXXa_!!352469034.jpg,https://img.alicdn.com/imgextra/i2/352469034/TB2l4L6fwaTBuNjSszfXXXgfpXa_!!352469034.jpg,https://img.alicdn.com/imgextra/i2/352469034/TB2fuBKbrZnBKNjSZFGXXbt3FXa_!!352469034.jpg', '美利达女士车', '28英寸', '铁前叉', '铝合金', '铝合金车架', 85424, '24速', '28英寸', '铝合金v刹');
INSERT INTO `bikedetails` VALUES (20, 2, '迪卡侬元 Z女士自行车', 1098, 24, 'https://img.alicdn.com/imgextra/i4/TB1mQxQSXXXXXamaXXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i2/352469034/TB2ghPBywaTBuNjSszfXXXgfpXa_!!352469034.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i2/352469034/O1CN012GbcWdGqRFY5Iim_!!352469034.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i4/352469034/TB2uLz_e.lnpuFjSZFjXXXTaVXa_!!352469034.jpg_430x430q90.jpg', NULL, 'https://img.alicdn.com/imgextra/i1/352469034/TB2zWgdktrJ8KJjSspaXXXuKpXa_!!352469034.jpg,https://img.alicdn.com/imgextra/i1/352469034/TB2j6Nkea8lpuFjy0FpXXaGrpXa_!!352469034.jpg,https://img.alicdn.com/imgextra/i3/352469034/TB2NoBCwA9WBuNjSspeXXaz5VXa_!!352469034.jpg,https://img.alicdn.com/imgextra/i3/352469034/TB2U3g2n98YBeNkSnb4XXaevFXa_!!352469034.jpg', '美利达女士车', '24英寸', '碳纤前叉', '铝合金', '铝合金车架', 85425, '27速', '24英寸', '钳形叉');
INSERT INTO `bikedetails` VALUES (21, 2, '迪卡侬蜥蜴BMX小轮车', 1598, 26, 'https://img.alicdn.com/imgextra/i1/TB1wd1pSXXXXXbJXXXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i3/352469034/O1CN012GbcWhD3MSrCAEx_!!352469034.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i4/352469034/TB2ITb3yuGSBuNjSspbXXciipXa_!!352469034.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i4/352469034/TB2SgoEdY0kpuFjy0FjXXcBbVXa_!!352469034.jpg_430x430q90.jpg', NULL, 'https://img.alicdn.com/imgextra/i4/352469034/TB245.Nd90jpuFjy0FlXXc0bpXa_!!352469034.jpg,https://img.alicdn.com/imgextra/i3/352469034/TB2FoPYeYJmpuFjSZFwXXaE4VXa_!!352469034.jpg,https://img.alicdn.com/imgextra/i4/352469034/TB2w._hhA7mBKNjSZFyXXbydFXa_!!352469034.jpg,https://img.alicdn.com/imgextra/i4/352469034/TB2OlbnvuuSBuNjSsziXXbq8pXa_!!352469034.jpg', '美利达单速车', '29英寸', '避震前叉', '铝合金', '硬车架', 85426, '21速', '29英寸', '单碟刹');
INSERT INTO `bikedetails` VALUES (22, 2, '迪卡侬元木S粉红自行车', 998, 28, 'https://img.alicdn.com/imgextra/i2/352469034/TB1n4xtXyGezuRkSO8gXXaanFXa_!!0-item_pic.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i4/352469034/TB29AN7XsXIxuRkSRThXXcgupXa_!!352469034.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i1/352469034/TB2RAmXXsXIxuRkSO1fXXbYaFXa_!!352469034.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i4/352469034/TB2QlR7XsXIxuRkSRThXXcgupXa_!!352469034.png_430x430q90.jpg', NULL, 'https://img.alicdn.com/imgextra/i4/352469034/TB2KEyqmZj_B1NjSZFHXXaDWpXa_!!352469034.jpg,https://img.alicdn.com/imgextra/i1/352469034/TB2VJzrmYsrBKNjSZFpXXcXhFXa_!!352469034.jpg,https://img.alicdn.com/imgextra/i2/352469034/TB2EllyXD1lzuRkSO8hXXXsbVXa_!!352469034.jpg,https://img.alicdn.com/imgextra/i3/352469034/TB2J8JMnYZnBKNjSZFKXXcGOVXa_!!352469034.jpg', '美利达女士车', '22英寸', '无避震硬叉', '铝合金', '铝合金车架', 85427, '21速', '22英寸', '机械碟刹');

-- ----------------------------
-- Table structure for bikeevaluate
-- ----------------------------
DROP TABLE IF EXISTS `bikeevaluate`;
CREATE TABLE `bikeevaluate`  (
  `eNo` int(11) NOT NULL AUTO_INCREMENT,
  `mId` int(11) NOT NULL,
  `cNo` int(11) NOT NULL,
  `eContent` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `etime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `eTotalContent` int(50) NULL DEFAULT NULL,
  PRIMARY KEY (`eNo`) USING BTREE,
  INDEX `fk_md_table_myInfo1_idx`(`mId`) USING BTREE,
  INDEX `fk_bikeEvaluate_bikeDetails1_idx`(`cNo`) USING BTREE,
  CONSTRAINT `fk_bikeEvaluate_bikeDetails1` FOREIGN KEY (`cNo`) REFERENCES `bikedetails` (`cno`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_md_table_myInfo1` FOREIGN KEY (`mId`) REFERENCES `myinfo` (`mid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bikeevaluate
-- ----------------------------
INSERT INTO `bikeevaluate` VALUES (43, 1, 11, '这辆自行车很酷', '2018-10-25-10', NULL);

-- ----------------------------
-- Table structure for bikeindex
-- ----------------------------
DROP TABLE IF EXISTS `bikeindex`;
CREATE TABLE `bikeindex`  (
  `rNo` int(11) NOT NULL AUTO_INCREMENT,
  `rContent` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rClassify` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`rNo`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
-- Table structure for commentary
-- ----------------------------
DROP TABLE IF EXISTS `commentary`;
CREATE TABLE `commentary`  (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `security_id` int(11) NULL DEFAULT NULL,
  `com_txt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`com_id`) USING BTREE,
  INDEX `security_id`(`security_id`) USING BTREE,
  CONSTRAINT `security_id` FOREIGN KEY (`security_id`) REFERENCES `security` (`security_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of commentary
-- ----------------------------
INSERT INTO `commentary` VALUES (1, 1, '写的很好啦', '张三', 'http://10.40.4.24:3000/myPic/tox120181026161047.jpg', '2018年10月27日 11:06:7');
INSERT INTO `commentary` VALUES (2, 1, '刚刚才看到这个', '王五', 'http://10.40.4.24:3000/myPic/tox20181028171066.jpg', '2018年10月27日 11:06:7');
INSERT INTO `commentary` VALUES (3, 1, '棒极了', '钱七', 'http://10.40.4.24:3000/myPic/tox120181026161047.jpg', '2018年10月27日 11:06:7');
INSERT INTO `commentary` VALUES (4, 1, '我看过这个啦', '小明', 'http://10.40.4.24:3000/myPic/tox20181028171066.jpg', '2018年10月27日 11:06:7');
INSERT INTO `commentary` VALUES (5, 1, '好可怕哦', 'rose', 'http://10.40.4.24:3000/myPic/tox20181028171066.jpg', '2018年10月27日 11:06:7');
INSERT INTO `commentary` VALUES (6, 2, '好文章', 'rose', 'http://10.40.4.24:3000/myPic/tox20181028171066.jpg', '2018年10月27日 13:06:34');
INSERT INTO `commentary` VALUES (7, 22, '哈哈哈哈', 'rose', 'http://10.40.4.24:3000/myPic/tox20181028171066.jpg', '2018年10月27日 16:17:6');

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for information
-- ----------------------------
DROP TABLE IF EXISTS `information`;
CREATE TABLE `information`  (
  `zId` int(11) NOT NULL AUTO_INCREMENT,
  `zTitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zTime` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zFrom` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zType` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zCheck` int(11) NULL DEFAULT NULL,
  `sTime` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zdContent` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zdImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`zId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of information
-- ----------------------------
INSERT INTO `information` VALUES (1, '《骑趣快讯》骑车有多烧钱？天空车队一年烧2.7亿', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/news/bikenews/2018-08-31/d844be90343c8a6d3d710910b3a13b2d.jpg', '环西第六赛段：拳王自我救赎，皮凯风中凌乱。FOX发布全新智能避震系统，爬坡不泄力，下坡爽歪歪。天空车队到底多有钱？每年预算好几个亿。', '2018-10-18 00:00:00.000000', '作者：骑趣网', '热门资讯', 2, NULL, '环西第六赛段：拳王自我救赎，皮凯风中凌乱。FOX发布全新智能避震系统，爬坡不泄力，下坡爽歪歪。天空车队到底多有钱？每年预算好几个亿。', 'http://c2.biketo.com/d/file/news/bikenews/2018-10-10/af952ba62472e9dcb5ce2672412d3d5c.jpg,http://www.biketo.com/d/file/news/bikenews/2018-07-20/3656221e653f625512e5c2c8f50804ae.jpg');
INSERT INTO `information` VALUES (2, '自行车和配件要涨价了？美国加征10%进口税', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/news/international/2018-09-20/250d57061e4386f386735a26adff8afe.jpg', '中国进口至美国的（电动）自行车及零配件加征税的政策将于下周一开始实施，届时直到年底都将加征10%进口税，并于明年开始征收25%税。', '2018-10-19 00:00:00.000000', '作者：Jack Oortwijn（吴芳仪译）', '热门资讯', 4, NULL, '川普政府针对自中国进口至美国的（电动）自行车及零配件加征税的政策将于9月24日（下周一）开始实施。届时直到年底都将加征10%进口税，并于明年开始征收25%税。\r\n\r\n美国贸易媒体Bicycle Retailer & Industry News报导，川普政府加征税的商品清单价值高达2000亿美元，自行车产品约占10亿美元。官方声明中表示，有部分类别不被列在商品清单中，例如安全相关产品，因此自行车灯与安全帽将不列在25%关税商品清单中。中国（电动）自行车及马达刚于八月被征收25%关税。该美国媒体也提到，美国总统川普在这场美中贸易战的棋步尚未走完，他已预告中国的报复性征税将导致美对中价值2670亿美元的额外商品征税。美国产业表示已与政府进行磋商，且不赞成对中国自行车产品征税。据美国最大自行车进口商Huffy Corporation表示，这将影响到自行车销售并重创整个产业。\r\n\r\n', 'http://c2.biketo.com/d/file/news/international/2018-09-20/6023ed5c11112cdc49bde36d3b925ee0.jpg,http://c2.biketo.com/d/file/news/bikenews/2018-10-12/69ab27937f9f66edb79547765b870040.jpg');
INSERT INTO `information` VALUES (3, '处处可见骑行元素  华为麦芒7与年轻人加速前行', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/tour/life/2018-09-12/a7faa3f36b048bb23802c8c112f28d25.jpg', '2018年9月12日，华为在广州举办了主题为“生而无畏，加速前行”的麦芒新品发布会，华为消费者业务手机产品线总裁何刚向公众发布了最新的华为麦芒7。一...', '2018-10-20 00:00:00.000000', '作者：骑趣编辑中心', '热门资讯', 2, NULL, '2018年9月12日，华为在广州举办了主题为“生而无畏，加速前行”的麦芒新品发布会，华为消费者业务手机产品线总裁何刚向公众发布了最新的华为麦芒7。一路走来，麦芒品牌始终坚持麦芒系列特有的“无畏生长”的品牌精神，延续做工精致、配置出众、性能均衡的设计理念，时刻紧跟年轻消费者的需求。特别是本次新品——华为麦芒7在速度与性能上进行了较大的提升，将为年轻人消费群体提供更加畅快淋漓的使用体验。\r\n\r\n华为麦芒7传承麦芒品牌“年轻、无畏、坚持”的麦芒精神，这与骑行运动“挑战自我、坚持前行”的精神内核不谋而合，在发布会现场，同样处处可见骑行元素，也处处体现出麦芒7所传承的麦芒精神。发布会的开场，由“逃跑计划”乐队演唱的《夜空中最亮的星》展现了麦芒初心不变、无畏生长的品牌信念。年轻时尚的现场装饰、骑行运动元素都展现出麦芒系列积极向上、加速向前的品牌内涵。尤其是，麦芒色的7号站牌，彰显着麦芒7第七代产品的身份，透露出麦芒品牌“生而无畏”的自信与坚持。2013年第一代麦芒产品诞生以来，“为年轻人定制，树立全新的年轻价值观”的品牌定位就鞭策着麦芒系列产品不断突破自我，创造非凡。从“青春是一种刺”到如今的“生而无畏，加速前行”，麦芒精神不断丰富，麦芒手机不断进步，每一代麦芒产品都融合新时代的麦芒精神和创新技术，满足年轻消费者的最新需求。', 'http://c2.biketo.com/d/file/tour/life/2018-09-12/22f30a2fb30d221d7230be199c163573.jpg,http://c2.biketo.com/d/file/tour/life/2018-09-12/19462f6fa8f9824812b918a455c210d7.jpg');
INSERT INTO `information` VALUES (4, '安踏有意收购亚玛芬体育 报价46亿欧元', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/industry/business/2018-09-12/29dbb38f8df05ceed73f91f9cee6dfdb.jpg', '安踏体育已向亚玛芬体育发出无约束力的初步意向，按每股40欧元的价格以现金方式收购亚玛芬体育的全部股份。', '2018-10-25 00:00:00.000000', '作者：knightof1', '今日资讯', 3, NULL, '安踏体育已向亚玛芬体育发出无约束力的初步意向，按每股40欧元的价格以现金方式收购亚玛芬体育的全部股份。\r\n\r\n近日媒体讨论关于收购的消息，先后得到双方的确认。亚玛芬体育在9月11日承认收到来自安踏体育的收购意向；安踏体育（港交所：2020）则在12日发布了相关公告。根据公告内容，这笔交易的总额约为46亿欧元（折合约366亿元人民币）。目前暂时没有更多关于交易的详细信息。\r\n\r\n亚玛芬体育来自芬兰，目前在纳斯达克北欧旗下的赫尔辛基证券交易所上市，目前最新股价约为每股34欧元。亚玛芬体育拥有萨洛蒙（Salomon）、始祖鸟（Arcteryx）、威尔胜（Wilson）、颂拓（Suunto）等知名运动品牌；在自行车领域，MAVIC和ENVE两个以轮组出名的品牌均隶属芬兰企业。', 'http://c2.biketo.com/d/file/industry/business/2018-09-12/c43f584f80ff6beb80faed3e720a7e37.jpg,http://c2.biketo.com/d/file/racing/column/2018-04-09/e43dc07fef057db4a1e35723527ead65.jpg');
INSERT INTO `information` VALUES (5, '保险不保什么？销售绝不会告诉你的3个秘密', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/news/bikenews/2018-09-03/3122b12f223905b35bf3fec3abe4ad4d.jpg', '“揭短”一些户外常用的保险，不能保什么！！！', '2018-10-25 00:00:00.000000', '作者：保险君', '今日资讯', 3, '2018-10-17', '今天我在想保险软文的时候，一直在纠结要聊些什么话题，好像很多都聊过了，那我就来“揭短”一些户外常用的保险，不能保什么吧！\r\n\r\n1、不能保牙齿\r\n\r\n条款中的表述是这样的：被保险人移植人工器官、洗牙、洁齿、牙齿治疗或手术及镶补所产生的费用免赔，但因意外伤害引起的一般牙齿治疗或手术除外；\r\n\r\n磕掉牙齿是自行车摔车事故里很经常发生的伤害，但是在一般的意外保险里，牙齿的事后种植、补牙等，都是不赔的，还有就是假如被保险人摔到某些脏器，需要移植器官才行，移植器官的费用也是不赔的，赔的是一般的止血治疗，手术费用等。\r\n\r\n2、有一些意外险里会有行李物品损失或户外装备丢失这类条款，那么是不是我们丢的，或者是摔坏的东西都能赔呢？答案是否定的。\r\n\r\n不赔（包括但不限于）：现金、手机、电脑、珠宝、自己摔坏的自行车、头盔等等。\r\n\r\n赔： 被保险人在境内或境外进行以户外运动为目的的旅行时，因第三方盗抢、火灾、公共交通承运人的责任而丢失或损坏被保险人合法拥有的户外装备，并于事故发生之时起的二十四小时内向事故发生地海关、警方或其他有关部门报案并领取其出具的事故证明。如果被保险人的户外装备损失可以从公共承运人或其他任何第三方获得赔偿，保险人仅负责补偿剩余部分。\r\n\r\n通俗来说就是，假如是一辆的自行车在户外运动的时候被抢或被偷了，或运输时被弄坏了，要报警，然后警方出责任认定书，然后责任方赔了钱之后，保险赔剩余部分。私了的话，没有事故证明，保险不赔。3、已经从公费医疗、社会基本医疗保险、商业性保险等报销过的医疗费用是不能再报销了的。\r\n\r\n有时候会有客户问我，那我从这个公司买一份保险，那个再买一份，是不是我两个都能报销？治疗两万，报出四万？答案是否定的。凡是这种报销型的医疗条款，都要提供发票原件去进行报销，所以不能报大数，只能一家报销，不然，就拿上一家保险公司的分割单据去下一家报销剩余部分。但是，假如是残疾，甚至是身故，因为是赔偿型的条款，只要符合赔偿范围，两份保险是不同保险公司的，就两家都要赔。', 'http://c2.biketo.com/d/file/news/bikenews/2018-08-31/c77b65288434a5c6a24c558bbfdac37f.jpg,http://c2.biketo.com/d/file/news/bikenews/2018-10-12/44c7653213fb06a638a6be3c5a04d9a7.jpg');
INSERT INTO `information` VALUES (6, 'ofo拖欠上海凤凰6800万货款遭起诉', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/industry/business/2017-05-07/d6c1e876e9030630f8cf02feaea9fa81.jpg', '因拖欠6800余万元货款，ofo日前被合作伙伴、自行车生产企业上海凤凰企业（集团）股份有限公司告上了法庭，要求其支付欠款及逾期违约损失等共计7000余万...', '2018-10-25 00:00:00.000000', '作者：温婧', '今日资讯', 3, '2018-01-03', '因拖欠6800余万元货款，ofo日前被合作伙伴、自行车生产企业上海凤凰企业（集团）股份有限公司告上了法庭，要求其支付欠款及逾期违约损失等共计7000余万元。\r\n\r\n对此，ofo方面不予置评。根据上海凤凰自行车公司的公告，2017 年，凤凰自行车与东峡大通签订了《自行车采购框架协议》后，凤凰自行车与东峡大通签订了多份采购合同。经双方核对，截至起诉之日，东峡大通仍欠凤凰自行车货款人民币 6815.11 万元。根据采购合同，东峡大通拖欠货款及费用的行为严重违约，凤凰自行车已于近日向北京市第一中级人民法院提起诉讼。上海凤凰方面要求被告支付货款 6815.11 万元，并赔偿原告逾期付款违约损失 186.52 万元、支付原告律师费、担保费等 20万元（暂计）等，共计7000余万元的费用。东峡大通公司为ofo的全资子公司，ofo创始人戴威为其法定代表人。2017年5月，共享单车风头正旺，上海凤凰自行车与ofo签订战略合作协议。其中规定，自签署该协议之日起，东峡大通或其关联公司在12个月内，向凤凰自行车提供总量不少于500万辆的采购计划，凤凰方面表示，“若按照公司2016年度运行情况，协议约定的500万辆采购量将给凤凰自行车带来约4000万元的收益。”不过，时隔一年，今年5月凤凰的公告显示，凤凰仅向ofo的运营方东峡大通及其关联公司提供自行车产品186.16万辆，实现销售收入6.37亿元。从交易量来估算，双方实际交易仅为这份协议预期的不到4成，据此估算，凤凰方面的收益仅有1000万元出头。在其拖欠货款7000万元的基础上，凤凰方面会形成较大亏损。', 'http://c2.biketo.com/d/file/industry/business/2017-05-07/d10c7e8072b8eedcd8d3e202484a6276.jpg,http://c2.biketo.com/d/file/industry/business/2017-05-07/e986508a61965133abc93e95d49c14fb.jpg');
INSERT INTO `information` VALUES (7, '自行车界失去了一位伟大的艺术家 Dario Pegoretti逝世', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/news/bikenews/2018-08-28/b1239ba3b163838d77579eb854abde15.jpg', '上周四晚，达里奥·佩戈雷帝（Dario Pegoretti）去世，自行车界少了一位伟大的艺术家。	', '2018-10-2000:00:00.000000', '作者：骑趣编辑中心', '骑闻', 3, '2000-01-01', '上周四晚，达里奥·佩戈雷帝（Dario Pegoretti）去世，自行车界少了一位伟大的艺术家。达里奥在2007年确诊患有淋巴瘤，在与病魔斗争的过程中他依旧热爱生活，从未停止艺术创作。\r\n\r\n在高端定制自行车领域，没有人不认识达里奥。这位1956年出生的意大利人，不仅在车架制造上技艺惊人，更是把车架的涂装艺术发挥到极致，被国内外很多高端定制自行车爱好者所崇拜。他年少师从意大利车架制造大师——Luigino Milani，并且了引领了TIG焊接的潮流，奇波里泥、潘塔尼等明星车手也都曾是达里奥的客户。在他手上诞生的自行车都是行走的艺术品，大概是他的大脑中有星辰大海才能创作出这样天马行空的作品。虽然达里奥先生已经离去，但是他关于自行车与艺术的思想会在自行车手艺人中代代传承，他也将成为自行车历史上的代表人物。', 'http://c2.biketo.com/d/file/news/bikenews/2018-08-28/b815b2da0ae74e9d98d6bf0c79e57775.jpg,http://c2.biketo.com/d/file/news/bikenews/2018-08-28/d4fc817f3d2f2e932292227de22eff32.jpg');
INSERT INTO `information` VALUES (8, '剁手清单：西安城苗妹纸的运动生活', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/product/equipment/2018-10-08/9be3c0cdca62445751a6b34e9172b7f3.jpg', '单车，滑雪，徒步，游泳，四大运动项目是我平日最爱。目前我使用的自行车是SPECIALIZED SAGAN TARMAC\r', '2018-10-19 00:00:00.000000', '作者：骑趣编辑中心', '骑闻', 4, NULL, '如果说喜欢一个人没有理由，那么喜欢骑行也不需要任何理由。高中时期爱上单车，便一发不可收拾，同也结识到很多爱好相同的小伙伴，小伙伴们除了骑行还有很多各自的爱好，这也让我有机会接触其它的运动。单车骑行，是我青春美好记忆里的全部。\r\n\r\n高中时代第一辆捷安特山地车的嘻嘻闹闹，到后来骑游党升级慢慢入了坑。15年偶然机会参加了人生第一场自行车骑行活动：怕不怕不间断骑行200KM，顺利安全完赛虽然很累，但是非常开心。2016年底开始参加女子业余山地、公路的比赛。2017年底加入西安本土车队－西安重點车队。单车带我走了很多没有去过的地方，每到周末或者天气好的时候就会约上三五好友出去骑车。\r\n\r\n', 'http://c2.biketo.com/d/file/product/equipment/2018-10-08/4a59b696a2a351232ef169be7392d79c.jpg,http://c2.biketo.com/d/file/product/equipment/2018-10-14/a9301f391457932d9d16e01e365a90be.jpg');
INSERT INTO `information` VALUES (9, '阳光、公益、千人狂欢——直击2018 TREK100上海站', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/news/activity/2018-09-16/36e3d5346a1f3e9a6702ff2b05f44515.jpg', '比上班早高峰更人山人海的场面在这里。', '2018-10-18 00:00:00.000000', '作者：梦莎', '骑闻', 2, NULL, '别说你见过最人山人海的场面，只有上班早高峰。\r\n\r\n2018年9月16日，TREK100上海站在浦东新区的东方体育中心广场开启周末狂欢。TREK100是圈内较为少见的慈善骑行系列活动，由TREK自行车公司与美国MACC基金会联合创办于1990年，至今已成功举办29届。TREK100的传统骑行距离为100公里，旨在传递健康、运动、阳光的生活方式，并且通过骑行者的力量，为公益事业做出贡献。\r\n\r\n2016年，TREK100首次登陆中国，2017年在上海，北京，成都和广东惠州成功举办四站活动。今天的上海站，作为2018年杭州站和大连站后的第三站，113km全程组和60km半程组共吸引了来自长三角各地的1300位车手前来挑战，而家庭骑趣会共吸引了50个家庭参加。\r\n\r\n2018年，TREK会将所得报名费用，用于支持中国大学生体育协会自行车分会在全国各高校中推广、普及、开展自行车运动。\r\n\r\n本次活动由美国自行车品牌TREK携手一汽-大众 “C-TREK蔚领”，为自行车爱好者们带来丰富多彩的骑行体验，推广独特的自行车文化。虽然挑战路线没有全程封路，但出发后部分路段由交警实施交通管制。今年为避免给市政道路增加过多的压力，提高安全系数，活动组织方采用了分批出发的方式。TREK中国总经理赵大勇先生 、一汽-大众销售有限责任公司华东区销售事业部市场与公关总监滕洪波先生、上海久事体育产业发展（集团）有限公司东体场馆分公司总经理王舒炜先生共同为活动发车鸣枪。', 'http://c2.biketo.com/d/file/news/activity/2018-09-16/826838c8e7ad0cd6c51adec6b19f022f.jpg,http://c2.biketo.com/d/file/news/activity/2018-09-16/5a39e261411fb70befce5a5f46c42189.jpg');
INSERT INTO `information` VALUES (10, '《骑趣快讯》没有牙盘链条还能骑得飞快？这辆折叠车要逆天', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/news/bikenews/2018-09-07/d3d906c6dd2cd5ccce2f2e126f7132b3.jpg', '环西第十二赛段：热尼耶小集团冲刺获胜；无链条无牙盘，老外发明真·脚踏车；NYPD的自行车巡警小分队，中央公园都是他们的地盘……', '2018-10-17 00:00:00.000000', '作者：Fun倪', '其它', 3, NULL, '环西第十二赛段：热尼耶小集团冲刺获胜；无链条无牙盘，老外发明真·脚踏车；NYPD的自行车巡警小分队，中央公园都是他们的地盘……', 'http://c2.biketo.com/d/file/news/bikenews/2018-10-12/7e5cbc2f8f64275fd924437a7a8ec680.jpg,http://www.biketo.com/d/file/news/bikenews/2018-07-20/3b87afd111a4062c1f67ffd8cea336a4.jpg');
INSERT INTO `information` VALUES (11, '《骑趣快讯》用上这款9个摄像头的无人机 菜鸟也能变大神', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/news/bikenews/2018-08-24/d049f8278a84f72ee4f79d114c5805b8.jpg', '复古大轮子自行车骑上街是什么感受？把哈苏装在无人机上，还怼上9个摄像头？16岁女孩患未知疾病，自行车让她……', '2018-10-17 00:00:00.000000', '作者：Fun倪', '其它', 6, NULL, '复古大轮子自行车骑上街是什么感受？把哈苏装在无人机上，还怼上9个摄像头，大疆要逆天啊……16岁女孩患未知疾病，需要外挂装置维持生命，却爱上了自行车。', 'http://c2.biketo.com/d/file/news/bikenews/2018-09-12/1c569009874f1870b9bbe872a5aa7c02.png,http://c2.biketo.com/d/file/news/bikenews/2018-10-12/adb32b20b762cfa37665aa54f0effc3e.jpg');
INSERT INTO `information` VALUES (12, '《骑趣快讯》被推倒？冲进小树林？环法为何意外频发', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/news/bikenews/2018-07-27/62ce3c5e11eb3ad35cc221123c456b25.jpg', '年年环法有意外，偏偏今年特别多，弗鲁姆被拽倒、萨甘摔车、辣椒喷雾攻击……', '2018-10-16 00:00:00.000000', '作者：Fun倪', '其它', 2, NULL, '本期内容提要：环法第十八赛段，德玛尔赢来首胜。年年环法有意外，偏偏今年特别多，弗鲁姆被拽倒、萨甘摔车、辣椒喷雾攻击……意大利Vento项目，探讨自行车与旅游业的融合方式。', 'http://c2.biketo.com/d/file/news/international/2018-09-12/0dc87b4e00a715e4da4b6da626f95c19.jpg,http://c2.biketo.com/d/file/news/bikenews/2018-10-12/33fba6c77d6e063b979f04a462c0ff73.jpg');
INSERT INTO `information` VALUES (13, '剁手清单：“钛毒”女骑士的钛合金山地车', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/news/bikenews/2018-10-13/51dd21f30d7dffb85fc52954cb67dfb8.jpg', '不要求性价比，不在乎价格，这样装出来的钛合金山地车是什么样？', '2018-10-13 00:00:00.000000', '作者：山川骑手', '热门资讯', 6, NULL, '工欲善其事必先利其器，发烧车友装豪车：整车落地39522元。车友女身高165cm，装车要求高档配件，不要求性价比，不在乎价格，经典的山地车，就是不骑放到家里也是一辆好车。1.车架是山地车的基础\r\n\r\n美国Lynskey（林斯基）Ridgeline-650b VF山脊钛合金山地车架27.5寸 S码，Ridgeline的车架用多形，冷成型管材，非常稀有，做工近乎完美。2.前叉是山地车的灵魂\r\n\r\n精挑细选淘到了经典老款前叉：2016款油控Rockshox SID WorldCup 碳纤维前叉 WC 27.5钛合金阻尼，这款前叉包含了SID WORLDCUP世界杯版本一直延续的精髓，包括各种高成本的内在，比如油控锁死（油压控制锁死），BLACKBOX技术碳纤维的上管与叉桥。在今年新出的SID WC上已经看不到了，新款的SID WC已经全部是普通线控的锁死了，碳纤维叉桥也取消了，只剩下1根上管是碳纤维的，所以现在新款的SID WC如此便宜。\r\n\r\n2016经典款永远定格在了那里，是真正卖懂行人的前叉了。特氟龙黑色图层按压感奇润无比，轻量铝合金叉筒，1426克。3.轮组是山地车精髓\r\n\r\n山地车的三大件，一定要耐造、润滑、可靠。花鼓选择了美国原产CHRIS KING陶瓷ISO花鼓，车圈选择了美国原产Easton ARC 24  27.5 650B 山地 AM Enduro 轻量车圈 ，辐条选择了瑞士原产DT竞赛辐条。4.套件\r\n\r\n考虑到是女骑士，因此选择了变速轻巧顺畅的Shimano XTR9000套件。我们这里山多，出城就是山，所以牙盘选择了双片36-26T 170曲柄，塔轮40T。', 'http://c2.biketo.com/d/file/news/bikenews/2018-10-13/e71ec155382eb4beb9ddfa44d240e223.jpg,http://c2.biketo.com/d/file/news/bikenews/2018-10-17/150b2788d6ec310e14094c081bea483d.jpg');
INSERT INTO `information` VALUES (14, '剁手清单：一名“车手”的大学时光 从单车烧到相机', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/news/bikenews/2018-10-09/6037fe7a89e6c33685f34b4cea8e30f3.jpg', '从单车到相机，花费在自己喜欢事物上的时间使我的大学生活逐渐充实，感谢那些年带我入坑的学长！', '2018-10-18 00:00:00.000000', '作者：AS郭郭', '热门资讯', 7, NULL, '大一刚入学的时候，怀着满腔热血加入了学校的自行车协会，想着大学就应该多出去走走而不是老宅在寝室。然后周末就经常跟着学长学姐们一起出去骑车，看看风景美滋滋。开始大家基本都是骑着入门山地车耍，然后慢慢了解到更多的自行车知识后再加上PRO们的疯狂洗脑，同学们都开始追求更好的骑行体验，梦想有朝一日能够在赛场上吃皮。三年时光，我从一个骑行小白变成了现在的夕阳红骑游车手。\r\n\r\n写这篇文章主要是想纪念一下自己的大学时光，有关单车和生活的一些玩物。大学的第一辆山地车，陪我去了很多地方。后面慢慢地改了单盘、变速、刹车和轮组这些，一直念叨说要换个SID或者 FOX 的前叉，但又不舍得花这个钱。路上吃过很多次泥，不过每次回来都会花上一两个小时洗得干干净净。\r\n\r\n改装和拆洗的过程也让我对自行车的有了进一 步的认识， 也算是一种很不错的学习方式。周末骑游或者参加一些小比赛玩都能应付，铝合金的车架也不用担心摔坏。最后迫于生活压力把车出给了学弟，车协精神一脉相承哈哈。大二的时候大家都陆续从山地转型公路，去越野的人越来越少，大家都不愿意骑着山地车压马路。当时就想着山地卖了换公路，之后就开始存钱，一年后才把这辆车组起来。关于这辆车还有很多话想瞎比比的，毕竟是花费了大量心（学）血（费）。\r\n\r\n架子是某鱼上买来的，第一眼相中的是它的天蓝色队版涂装，价格看着合适就拿下了。车架刹车和变速的开孔都集中在头管一小部分位置，所以走线看起来十分简洁，治愈了一部分没钱上电变的强迫症患者。坐管夹的位置要比一般车型的要高一些，然后车架不支持现在主流的直装式前拨所以还要另外买个夹环来转接 。架子几何相对于顶火架子来说没有那么激进，对于我这种骑游选手来说比较友好。从单车到相机，花费在自己喜欢事物上的时间使我的大学生活逐渐充实。感谢那些年带我入坑的学长，虽然我们都不能像从前一起骑车，但是希望大家都能够保持对单车的这份热情。', 'http://c2.biketo.com/d/file/news/bikenews/2018-09-29/ff05efe4c16f6171232b0b12a03317f2.jpg,http://c2.biketo.com/d/file/news/bikenews/2018-10-17/e52bff48c766ba96fb88f584db4820d9.jpg');
INSERT INTO `information` VALUES (15, '《骑趣快讯》从南到北1500公里 带你穿越英国“318”', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/news/bikenews/2018-09-21/6dfb75b25e6b22f926ead23bea92ed48.jpg', '2018环西结束 西蒙·耶茨夺冠，英国人卫冕三大环赛。GoPro发布新一代运动相机Hero 7，真正稳如狗。从海角到天涯，英国“318”带你领略不一样的腐国风光...', '2018-10-18 00:00:00.000000', '作者：Fun倪', '热门资讯', 6, NULL, '2018环西结束 西蒙·耶茨夺冠，英国人卫冕三大环赛。GoPro发布新一代运动相机Hero 7，真正稳如狗。从海角到天涯，英国“318”带你领略不一样的腐国风光。', 'http://c2.biketo.com/d/file/news/bikenews/2018-10-11/a5968403a7ce3954d27302981645f2ea.jpg,http://c2.biketo.com/d/file/news/bikenews/2018-10-17/584089e528149cd711c4dbd45e7ef7ac.jpg');
INSERT INTO `information` VALUES (16, '徐刚首秀！IRONMAN 70.3上海崇明站明星见面会', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/racing/news/2018-10-21/e84cf08573bcc0b08a8adabd7e3c4603.jpg', '在上海嘉定土生土长的前职业运动员徐刚，首次挑战70.3距离铁人三项赛事。', '2018-10-21 00:00:00.000000', '作者：梦莎', '热门资讯', 4, NULL, '10月21日上午，2018华夏银行IRONMAN 70.3上海崇明站明星见面会在上海市崇明区明珠湖公园举办。参会明星主要由职业组的选手构成：男职业选手有来自澳大利亚的David Dellow、Sam Betten、来自意大利的Domenico Passuello、来自美国的Justin Metzler、来自日本的户原开人，女职业选手包括来自南非的Jeanni Seymour、来自瑞士的Caroline Steffen、Imogen Simmonds、来自中国香港的司徒兆殷。还有一位特殊的选手：在上海嘉定土生土长的前职业运动员徐刚。', 'http://c2.biketo.com/d/file/racing/news/2018-10-21/d25ea292e5fb809ab5946fe352e7b44c.jpg,http://c2.biketo.com/d/file/racing/news/2018-10-21/15b4c073621fd831bd2f8e4be8f7c984.jpg');
INSERT INTO `information` VALUES (17, '粤港澳儿童平衡车大赛Day1：骑车又骑马 爸妈还暴走', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/racing/news/2018-10-20/5f147880eb8a3b0a26324f950430b41c.jpg', '现场惊现亚运会冠军黄金宝？《破风》原型现身当主持？首个沙滩平衡车道具赛？这届比赛简直不能更棒。', '2018-10-21 00:00:00.000000', '作者：Fun倪', '热门资讯', 4, NULL, '10月20日上午，首届佳兆业杯杯粤港澳儿童平衡车大赛在深圳佳兆业金沙湾国际乐园开幕。为期两天的比赛一共有十个组别，涵盖了1～6岁的朋友，还有十分有趣的成人滑步车等多种亲子活动。这也是骑行者儿童会打造的儿童平衡车赛事2.0版首次亮相，更注重乐趣及体现小朋友的全面能力。本次比赛所在的金沙湾沙滩被《中国国家地理》评为中国最美的八大海岸之一，总长约3公里，是深圳东部海岸水质最好、景色最美、海域最广阔的区域。', 'http://c2.biketo.com/d/file/racing/news/2018-10-20/27243695a9386a2fa0f417cf82169c5b.jpg,http://c2.biketo.com/d/file/racing/news/2018-10-20/6aa7661afe5d8bba6b41d2e9b49d5009.jpg');
INSERT INTO `information` VALUES (18, '粤港澳儿童平衡车大赛Day2：世界冠军来打call', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/news/activity/2018-10-21/a502f45240241ec337134add44d61d20.jpg', '世界冠军带你玩转首届佳兆业杯粤港澳儿童平衡车大赛，阳光、沙滩还有……', '2018-10-22 00:00:00.000000', '作者：Fun倪', '热门资讯', 14, NULL, '10月21日，为期两天的首届佳兆业杯粤港澳儿童平衡车大赛完美落幕。第二天的比赛包括三岁男子组、三岁女子组、四岁男子组、四岁女子组和一岁组，其中三岁男子组的参赛人数多达234位，参赛总人数更是接近800人，紧凑的赛程对于小朋友和家长来说都是不小的考验。由于今天的参赛宝宝众多，比赛时间开始时间提前到9点30分，家长们也带着宝宝们早早地来到现场。没有了乌云的遮挡，阳光来得更加猛烈，今天的比赛也如烈日般刺激。\r\n\r\n', 'http://c2.biketo.com/d/file/news/activity/2018-10-21/8a99c3c57c9b4953e01c7306345c5db3.jpg,http://www.biketo.com/d/file/news/activity/2018-10-21/db38c9f0910b4eb63bf08e45a1f5df64.jpg');
INSERT INTO `information` VALUES (19, '美国冠军之选 Specialized Allez Sprint Disc', 'http://c2.biketo.com/d/imagecache/in/130x75/d/file/product/bikes/news/2018-10-17/fec079233165533560402b257bb5280a.jpg', '美国冠军之选 Specialized Allez Sprint Disc', '2018-10-25 00:00:00.000000', '作者：骑趣编辑中心', '今日资讯', 5, NULL, '一直服役于Hagens Berman-Axeon洲际职业车队Jonny Brown，骑乘车队队车Specialized Allez Sprint铝合金公路车驰聘于今年（2018年）的美国国家锦标赛，在比赛193公里的倒数70公里处进入了四人的突围集团，最后强力地个人单飞了20公里赢下国家锦标赛，穿上“美国队长战袍”，成为美国历史上最年轻的精英公路大组赛冠军。', 'http://c2.biketo.com/d/file/product/bikes/news/2018-10-17/ee18776bfdfccba4a0fa074a3a51e394.jpg,http://c2.biketo.com/d/file/product/bikes/news/2018-10-17/27581b7377c8bcdac448e6cec7bf3bca.jpg');
INSERT INTO `information` VALUES (20, '湿身雨战 格力“女子世巡赛-环广西”', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/racing/news/2018-10-24/c0df5d355dd5562e2fa6d4e8b140ba18.jpg', '2018格力-环广西公路自行车世界巡回赛收官战的当天，格力-环广西女子公路自行车世界巡回赛在“山青、水秀、洞奇、石美”的桂林冒雨上演。在去年成功举...	', '2018-10-24', '作者：KzMe', '赛事', 2, NULL, '2018格力-环广西公路自行车世界巡回赛收官战的当天，格力-环广西女子公路自行车世界巡回赛在“山青、水秀、洞奇、石美”的桂林冒雨上演。在去年成功举办女子公路自行车精英挑战赛的完美铺垫下，今年的女子赛破格升级成为世界女子职业公路车赛制级别最顶级的世界巡回赛级别。本届赛事有15支世界顶级女子车队参赛，分别来自20个国家和地区，作为本年度女子世巡赛体系最后一场比赛，本届格力-环广西女子公路自行车世界巡回赛将最终决出女子世巡总积分冠军及青年总积分冠军。大集团最终在中心广场展开冲刺角逐，最终阿斯塔纳女子车队阿伦尼斯•西耶拉（Arlenis Sierra）拔得头筹。同样来自阿斯塔纳女子车队的索菲亚·贝蒂佐洛（Sofia Bertizzolo）获得UCI Women\'s World Tour 积分青年最佳。', 'http://c2.biketo.com/d/file/racing/news/2018-10-23/d9d7d5794803de3ac1f86f53bf62451e.jpg,http://c2.biketo.com/d/file/racing/news/2018-10-23/796a0198230ad6f284add90dce9aca0b.jpg');
INSERT INTO `information` VALUES (21, '“绿地杯”西安国际骑行大会精彩开赛', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/racing/news/2018-10-23/453a13440496a2985dc098a7482920bb.jpg', '“喜迎十四运 铁马青春行”——“绿地杯”2018西安国际骑行大会，10月21日在西安市渭河南岸全民健身长廊精彩开赛。本次赛事吸引国际国内1200余名俱乐部...', '2018-10-23', '作者：骑趣网', '赛事', 3, NULL, '“喜迎十四运 铁马青春行”——“绿地杯”2018西安国际骑行大会，10月21日在西安市渭河南岸全民健身长廊精彩开赛。本次赛事吸引国际国内1200余名俱乐部车手和骑行爱好者参加。\r\n\r\n服务全运会筹办，十四运新闻报道（西安）培训会也结合骑行大会举行，来自全国各地的体育记者齐聚西安交流学习。\r\n\r\n“绿地杯”2018西安国际骑行大会及十四运新闻报道（西安）培训会由中国体育报业总社、中国体育新闻工作者协会、西安市体育局共同主办，中国自行车运动协会、陕西省体育局大力支持，西安市委宣传部、西安市公安局、西安市水务局协办，中体联（北京）投资有限公司承办，陕西省自行车运动协会为竞赛指导单位，冠军之家体育俱乐部推广运营，绿地控股集团荣誉冠名。\r\n\r\n时尚健康的自行车户外运动在西安越来越流行，本届骑行大会共分男子公路精英组、男子山地青年组、男子山地大师组、女子山地组、健身骑行组五个组别，赛道全程 45 公里。报名平台开放一周时间，各组别名额纷纷报满。比赛当日，1200多名选手分组出发，将渭河健身长廊西安段的美丽风景尽数饱览，充分感受了西安的生态治理新成果和骑行乐趣。中国体育新闻工作者协会主席涂晓东，人民日报体育部主任、中国体育新闻工作者协会副主席李中文，中国体育报业总社副社长李志全，陕西省体育局副巡视员吴予兴，西安市人民政府副秘书长黄晓华，西安市体育局局长冯艳阳，西安市体育局副局长邵芳，西安市水务局总工程师党占奎，绿地集团西北事业部总经理助理李昱，贵人鸟股份有限公司副总裁兼贵人鸟品牌总经理巨伟军，中国著名相声艺术家张大礼，自由式滑雪空中技巧世界冠军、北京申冬奥形象大使李妮娜，伦敦奥运会场地自行车女子凯林赛银牌、第十三届全运会女子场地凯林赛冠军郭爽等，来到骑行大会，并与50多名参加十四运新闻报道西安培训会的记者一起骑行交流，共同向全世界推介生态美丽、青春活力的大西安。未来，绿地集团将充分彰显大型国有企业的社会责任与担当，充分发挥区域优势和品牌影响力，以“绿地杯”西安国际骑行大会等项目为例，一如既往地支持西安市体育事业的发展，积极参与到“运动西安、健康西安”和“大西安”建设之中，为城市发展注入新的活力。', 'http://c2.biketo.com/d/file/racing/news/2018-10-23/ab8887e0f974dcdb9b03678ba68edbf4.jpg,http://c2.biketo.com/d/file/racing/news/2018-10-23/e2c89a94bc10e23004f6e2898923a886.jpg');
INSERT INTO `information` VALUES (22, '“碧桂园杯”2018第十三届环岛赛观赛指南：20支豪强角逐史上最难环岛赛', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/racing/herald/2018-10-22/cfc7b4a8db26c4c60a408a6e549f2d34.jpg', '今年环岛赛将是史上最难环岛赛！', '2018-10-22', '作者：环岛赛', '赛事', 1, NULL, '“碧桂园杯”2018第十三届环海南岛国际公路自行车赛（以下简称环岛赛）即将在10月23日－10月31日举行。今年比赛最大的亮点莫过于环岛赛首次设置了山顶终点。在第八赛段，赛道以梅保岭为终点，这个爬坡最后定为HC级爬坡，这也是环岛赛历史上首个山顶终点，这一赛段也将对今年总冠军的争夺起决定性的作用。除此之外，过往的皇后赛段——五指山阿驼铃赛段依旧保留，今年环岛赛可谓是史上最难环岛赛。\r\n\r\n参赛车队方面，今年有20支参赛队参赛，其中包括7支洲际职业队、12支洲际队以及1支国家队参赛。下面我们一起来看看本届环岛赛的参赛指南，我们将为大家分析本届赛事的赛道线路。\r\n\r\n\r\n\r\n2018环岛赛的线路延续已往12届的历史传统，整体线路形成绕海南岛环线。今年环岛赛从儋州出发，顺时针绕行海南岛，最后一个赛段各支车队将从昌江回到儋州。第二赛段 儋州—临高—澄迈（139.6公里）环岛赛第二赛段，由儋州出发到澄迈，全场139.6公里。在本赛段67.3公里出现了第一个爬坡点，这也意味着拿下这个爬坡点的车手将能率先穿上圆点衫，并且把圆点衫保持至第5赛段。第三赛段：澄迈—海口—定安—琼海（231.8公里）环岛赛三赛段从澄迈出发，途经海口，然后直奔东部沿海城市琼海。这是一条全新的赛道。赛道海拔高度一路递减，最后终点海拔接近零海拔。在比赛末段有接近30公里的海边骑行，海风可能会对比赛的进程产生一定的影响。本赛段全长为231.8公里，这也是本届环岛赛最长的赛段。第四赛段：琼海—万宁（142km）环岛赛第四赛段，从琼海出发到万宁。万宁作为环岛赛连续三年的“大”起终点，在今年依然赛事的重要一站。全程142公里，这是今年环岛赛最靠近海边的线路。而这个赛段之后，环岛赛将进入山地赛段。第五赛段：万宁—琼中—陵水（178.4km）经过了前四赛段的热身之后，环岛赛在第五赛段开始进入山地赛段。万宁到陵水站，全长178.4公里，大集团将面对4个爬坡点，包括3个三级爬坡和一个1个一级爬坡。其中3个主要爬坡点集中在赛段中段的30公里，均属于吊罗岭。这也给突围车手很大的机会，争取赛段冠军甚至总成绩领骑衫。若要争胜，108.6公里的二级爬坡和随后的下坡将会是关键。但是冲刺手在这个赛段依然有机会，因为后半段以平路为主，大约距离终点有50公里的平路。倘若大集团齐心，突围车手想一走高飞并不是易事。第六赛段：陵水—保亭—五指山（193.2km）环岛赛最经典的线路，五指山赛段将出现在第6赛段。作为环岛赛最经典的线路，大本岭和阿陀岭2个一级爬坡将会奠定总成绩排名。不过，今年五指山赛段并非皇后赛段，因此整体车队的策略以及战术或许跟往年相比会有点不一样的地方。第七赛段：五指山—保亭—三亚（125.2km）环岛赛第7赛段，五指山到三亚赛段。比赛全程125.2公里，途中有1个三级爬坡点和1个二级爬坡点。经过前一个赛段的艰苦争夺之后，对于争夺今年环岛赛总冠军的车队而言，将会是休养生息的赛段。因为在第二天，他们将会迎来皇后赛段的争夺。第八赛段：乐东（龙沐湾）—东方—昌江 （197.2km）环岛赛第8赛段，最大的亮点这里这里将出现环岛赛历史以来首个山顶终点。经过长途的消耗，等待大集团的是一个HC级爬坡终点。坡度总长为7.5公里，海拔爬升达到576米，平均坡度达到了7.7%。各支想争夺总成绩冠军和赛段冠军的车队都需要在进入爬坡前做好排兵布阵。而最后7.5公里的殊死搏斗，将会决定2018年环岛赛冠军的最终归属。第九赛段：昌江—白沙—洋浦—儋州（181.9km）2018年环岛赛的收官之战——昌江至儋州赛段，总长为181.9公里。经过皇后赛段的争夺，大集团将会倍感疲惫。而在收官之战，比赛也并不轻松。这个赛段的长度也位居于今年环岛赛赛段的第四位。整体赛段会有所起伏，但是并不会影响总成绩的排名。兔子和冲刺手均有机会拿下收官赛段的胜利。作为环岛赛的收官赛段，将会再次成为冲刺手的囊中之物。但是经历漫长的征程，在最后一战的比赛中，各支车队未免会有一些精神上的懈怠；部分非热门的车手都希望在这赛段争得一胜并为之付出所有，这也让环岛赛最后一个赛段会成为爆冷的温床。去年环岛赛收官之战，由新西兰国家冠军约瑟夫·库珀爆冷取胜；2015年环岛赛收官之战则由德拉帕克车队的布兰顿·琼斯赢得，也充分印证了这一点。', 'http://c2.biketo.com/d/file/racing/herald/2018-10-22/63ffee48858c5981d1858e6022a8be58.jpg,http://c2.biketo.com/d/file/racing/herald/2018-10-22/158a32c97e6b95bf63915e5c5d17dd39.jpg');
INSERT INTO `information` VALUES (23, '2018中国山地车公开赛（总决赛）浙江·常山站发布会', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/racing/news/2018-10-19/f4bd27435e12ad75ad6b89513c682b94.jpg', '2018年10月19日下午，在浙江省常山县东方大酒店，隆重举行2018中国山地自行车公开赛总决赛（浙江·常山站）新闻发布暨招商推介会，参加本次新闻发布暨...	', '2018-10-19', '作者：骑趣网', '赛事', 2, NULL, '2018年10月19日下午，在浙江省常山县东方大酒店，隆重举行2018中国山地自行车公开赛总决赛（浙江·常山站）新闻发布暨招商推介会，参加本次新闻发布暨招商推介会的有常山县委、县政府等有关单位领导。发布会由常山县人民政府郑金仙副县长主持。2018中国山地自行车公开赛（总决赛）浙江·常山站暨2018年中国青少年自行车U系列赛—山地自行车全国青少年锦标赛赛事，将于11月22日至25日在常山国际慢城山地自行车主题公园举行。本场赛事是参与人数最多的专业与业余相融合的国家级专项赛事，同时也是全国青少年山地自行车顶级赛事。除了赛事规模较去年更大外，在赛前将开展一系列精彩活动，如“以爱为名 乐骑常山“自行车趣味运动会、“定向寻宝”、“慢城之约”等活动，激发全民参与热情，集聚赛事宣传效应，营造赛事整体氛围。中共常山县委常委宣传部长余风在致辞中提出，2018中国山地自行车公开赛（总决赛）浙江·常山站暨2018年中国青少年自行车U系列赛—山地自行车全国青少年锦标赛赛事，是对常山体育+旅游产业发展的一次全面检阅，也是对常山城市建设与管理的一次全面检阅，必将为常山经济发展注入新的动力和活力。\r\n\r\n常山县继2016、2017年成功举办中国山地自行车公开赛后，今年是第三年赛事落户常山，对打造常山城市名片，提升常山知名度和影响力，促进常山社会经济发展都具有积极作用。', 'http://c2.biketo.com/d/file/racing/news/2018-10-19/c46429a3eda1bb4ded59960a95a70d68.jpg,http://c2.biketo.com/d/file/racing/news/2018-10-19/77e7abb49893ac1daba191e575aee999.jpg');
INSERT INTO `information` VALUES (24, '乌兰发话：明年再来参加环广西', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/racing/news/2018-10-23/1f1c000c103000b051b649778df344ba.jpg', '在环广西比赛结束之后，英孚教育邀请了车队的三名著名车手乌兰、休·卡锡、范马克，与英孚教育中国首席执行官杜兰和车队的创始人和首席运营官乔纳森·...	', '2018-10-23', '作者：Nel', '赛事', 0, NULL, '去年，知名的外语教育机构英孚教育宣布成为了佳能戴尔－德拉帕克车队的冠名赞助商。外语教育如何会跟自行车运动走在一起，也成为很多人的疑问。\r\n\r\n在环广西比赛结束之后，英孚教育邀请了车队的三名著名车手乌兰、休·卡锡、范马克，与英孚教育中国首席执行官杜兰和车队的创始人和首席运营官乔纳森·沃特斯 （Jonathan Vaughters）举行了媒体见面会，让媒体可以面对面接触这三位车坛明星以及了解英孚教育赞助车队的幕后故事。乌兰，作为车队最著名的车手，当然也是成为媒体追访的对象。为了稳固总成绩榜前五的位置，乌兰参与了第五赛段的冲刺，不过却不幸卷入到了冲刺前的摔车意外。不过，乌兰并没有因此退赛，在收官赛段冒着大雨完成了赛事，最终以第六名的成绩完成了本届环广西的旅途。乌兰谈到第五赛段的摔车时表示自己身体比较瘦小，不够强壮，如果换成范马克就不会卷入摔车了。而谈到明年的计划，他把家乡的赛事——环哥伦比亚以及环法列入重点，而当然数次来中国参赛的乌兰也发话表示明年一定会回来参加环广西。至于对于环广西的比赛，今年沃特斯先生派出了乌兰、范马克等车队多名主力出战。他今年其实希望能赢得环广西的总冠军，但由于车队主将迈克尔·伍兹要当伴郎未能前来参赛。明年环广西，或许英孚教育-德拉帕克车队能给大家带来更好的成绩。', 'http://c2.biketo.com/d/file/racing/news/2018-10-22/e7e91aa41fdd9007c74ed3ff0e686662.jpg,http://c2.biketo.com/d/file/racing/news/2018-10-23/a00d9d2835e134a116c3ba7039510e2a.jpeg');
INSERT INTO `information` VALUES (25, '2019环意路线偷跑 三场ITT左右总冠军归属', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/racing/news/2018-10-19/40b94882f42e6659149543748d0e0b23.jpg', '2019年环意全部21个赛段的路线已经确定。	', '2018-10-19', '作者：knightof1', '赛事', 0, NULL, '根据意大利《新闻报》报道，2019年环意全部21个赛段的路线已经确定。\r\n\r\n环意已经在早前宣布将从博洛尼亚出发。比赛之后沿西海岸一路向南，再掉头沿东海岸向北回到艾米利亚大区，然后从西北到东北绕意大利北部山区一圈，最后在维罗纳结束。在地图上看，整个路线呈“8”字形行进。其中，终点站维罗纳引人注目。第二十一赛段预计是一个15公里的个人计时赛，终点设在著名的维罗纳竞技场内。算上已经公开的第一赛段和第九赛段，明年环意将有三个ITT赛段，总长接近60公里。另外，明年正值考皮的百年诞辰，比赛有相应活动纪念这位传奇车手。第十一赛段的终点在考皮的家乡诺维利古里亚。第十二赛段库内奥-皮内洛罗，则是复刻了考皮在1949年大败宿敌巴尔塔利的经典战役。', 'http://c2.biketo.com/d/file/racing/news/2018-10-19/66a59626ac27ccfb8afd9d9331325620.jpg,http://c2.biketo.com/d/file/racing/column/2018-05-28/c745edf3d8b1c383d38154764b615b1f.jpg');
INSERT INTO `information` VALUES (26, 'TOYBOX超级杯赛-CHINA 2018萌动完赛', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/news/bikenews/2018-09-26/cdd9d7be9f73e6a686207c748a4488e3.jpg', '09月22日，玩具盒子超级杯赛-中国2018暨TOYBOX亲子骑行嘉年华在中国·天津·新城市中心广场萌力开赛！', '2018-09-26', '作者：骑趣网编辑中心', '骑闻', 1, NULL, 'TOYBOX SUPER-CUP RACING-CHINA 2018/玩具盒子超级杯赛-中国2018暨TOYBOX亲子骑行嘉年华，于09月22日，在中国·天津·新城市中心广场萌力开赛！本次TOYBOX超级杯赛-CHINA 2018儿童平衡车赛事由TOYBOX中国承办。\r\n\r\n针对2-6岁宝宝及宝爸宝妈，特设置为竞赛单元、团体竞技、女子组三个赛程安排，竞赛单元为分组竞速的方式，共分为A组2岁+、B组3岁+、C组4岁+、D组5岁+、E组6岁+共五个组别竞速赛程设置。赛制安排为初赛、复活赛、半决赛、决赛的分别设置。\r\n\r\nTOYBOX超级杯赛-CHINA 2018，不但为每一名顺利完赛的宝宝们准备了精美的完赛奖牌与完赛证书，而且为每一名分组胜出的宝宝准备了非常正式的冠亚季军奖杯、冠亚季军荣誉衫（定制版）与精美礼品奖励。本次赛事的意义在于，通过竞赛场景的营造，让孩子早期通过自己的努力获得成功，有利于宝宝早期建立自信与勇气，改善并提升宝宝的社交能力的同时塑造宝宝独立的人格魅力，释放最真实的自己。\r\n\r\nTOYBOX中国，是一家专业从事儿童平衡车滑步车产品研发与品牌营销的专业机构，业务范围涵盖产品销售SALES/教育培训EDUCATION/活动赛事EVENTS三大业务模块。TOYBOX创立之初，一直秉承着“快乐骑行Happy Cycling”的文化理念，以“#让父母陪孩子一起玩着长大！”为宗旨，让更多父母与孩子保持好事业与生活&工作与家庭之间的平衡。TOYBOX #TO KEEP YOUR BALANCE。\r\n\r\nTOYBOX儿童平衡车运动（Balance-Bike）——风靡欧美燃爆级的儿童极限运动。有利于2-6岁，身高90-120cm的宝宝锻炼身体平衡力与协调力，提高宝宝的注意力，促进骨骼生长及健美腿型！儿童平衡车运动能够帮助宝宝早早建立自信与勇气，有助于宝宝建立坚定的独立人格特征！', 'http://www.biketo.com/d/file/news/bikenews/2018-09-26/41e2ea11fdfcc0933a1daaa3024aa6ed.jpg,http://www.biketo.com/d/file/news/bikenews/2018-09-26/d429456843ec12af15a7286b3969fd06.jpg');
INSERT INTO `information` VALUES (27, '挑战草原天路！“奥伦达部落杯”五色天路·士博途车队赛', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/racing/news/2018-09-25/1a5c29e0acc92927ef68227f95082ae8.png', '9月23日由世界级草原运动小镇-奥伦达部落·五色天路项目联合张北战海乡政府，奥伦达部落会员部，北京英仕搏体育发展有限公司（北京士博途）等单位在张...	', '2018-09-25', '作者：骑趣网编辑中心', '骑闻', 2, NULL, '2018年9月23日，广西靖西2018磨房200公里骑行活动于靖西市体育馆盛大启动，并获得圆满成功。逾3000名骑友中秋节前夕从八方而来，齐聚广西靖西，共度磨房200公里骑行十周年庆典，再创金色骑迹，开启新征程。\r\n\r\n本次活动以“益骑靖西·与爱同行”为主题，邀请八方骑友怀揣公益之心走进靖西，感受公益骑行的乐趣。磨房200公里骑行活动于2009年发起，从最初的百人参与，到如今踏足3省12市，单场活动达万人的规模，磨房200公里骑行已成为海内外骑友不可错过的骑行盛会。值此十周年之际，磨房200公里骑行首次发起春秋两季活动，同时，首度融入公益元素，号召骑友用两个车轮，“益”起驱动靖西，不断革新和丰富磨房200公里骑行的内涵。本次活动，执委会精心串联靖西胜景，以靖西市体育馆为起终点，途经渠洋湖、二郎瀑布、爱布瀑布、鹅泉、旧州等靖西知名景区，将靖西优质的自然风光和独特的人文景观展示给骑友，引导广大骑友以骑游的方式感受靖西经典的喀斯特地貌和绝美的山水。为号召更多热心人士传递社会关爱和温暖，执委会在此次公益活动中设置鼓励性回馈，凡成功认捐靖西骑游导航系统指示牌的爱心人士/车队/企业，均可留名指示牌。公益行动将持续到2018年11月21日，期待更多心系贫困边民的爱心天使伸出援助之手，助力靖西变输血为造血，逐步形成贫困地区转型发展的新引擎！', 'http://c2.biketo.com/d/file/news/activity/2018-09-23/9cae5eb2d6b479449294c65ad7fb3ae9.jpg,http://c2.biketo.com/d/file/news/activity/2018-09-23/a194f5bb461ccc4188cc38c5b20274e5.jpg');
INSERT INTO `information` VALUES (28, '《骑趣快讯》黑科技头戴显示器 戴上骑车就能爽翻天', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/news/bikenews/2018-09-28/10f4eefd0f64efcff78ed9c986314739.jpg', '2018公路世锦赛ITT青少年组，零零后霸场。黑科技头戴显示器，从此骑车不用低头看码表。同样都是自行车，多伦多小伙拿来作画成为顶级艺术家。	', '2018-09-28', '作者：骑趣编辑中心', '其它', 1, NULL, '本期内容提要：2018公路世锦赛ITT青少年组，零零后霸场。黑科技头戴显示器，从此骑车不用低头看码表。同样都是自行车，多伦多小伙拿来作画成为顶级艺术家。', 'http://c2.biketo.com/d/file/product/bikes/news/2018-10-23/ec410adaebacdd3d077a97bbd714892d.jpg,http://c2.biketo.com/d/file/product/bikes/news/2018-10-23/97a228810fd54d9b1db664b3186dcec2.jpg');
INSERT INTO `information` VALUES (29, '《骑趣快讯》36寸轮径的公路车？未来的自行车可能长这样', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/product/bikes/news/2018-10-22/b311bd2c72b45b42e959e32e49ae4a6d.jpg', '36er公路车？气动旅行车？国外设计师展示自行车未来可能的样貌，让人大开眼界。	', '2018-10-22', '作者：骑趣编辑中心', '其它', 3, NULL, '36寸轮径？也许真的会出现这款车是以3T Exploro为原型的36er公路车，虽然很怪异，但还是阻止不了我们对它的喜爱。Daniel对车架进行了重新设计，尽管有着巨大的轮子，但整车的角度看起来还是十分和谐的。Daniel借鉴了LOOK和Canyon Grail的把立设计方法，将把立整合入车架上管中，让上管和把立连成一条直线。\r\n\r\nDaniel承认，过大的轮径可能并不适合各种类型的自行车，但这并不影响它作为一种非常迷人的概念车形式而存在。', 'http://c2.biketo.com/d/file/product/bikes/news/2018-10-22/5a7abc2832468553eeb4b0eb9de27fb7.jpg,http://c2.biketo.com/d/file/product/bikes/news/2018-10-22/be56e77c921713bc4a2f4715c5ae0385.jpg');
INSERT INTO `information` VALUES (30, '阳光、公益、千人狂欢——直击2018 TREK100上海站', 'http://www.zjchewang.com/userfiles/image/20180916/162326443d833a6ed34510.jpg', '2018年9月16日，TREK100上海站在浦东新区的东方体育中心广场开启周末狂欢。TREK100是圈内较为少见的慈善骑行系列活动，由TREK自行车公司与美国MACC基金会联合创办于1990年，至今已成功举办29届。TREK100的传统骑行距离为100公里，旨在传递健康、运动、阳光的生活方式，并且通过骑行者的力量，为公益事业做出贡献。', '2018-10-18 00:00:00.000000', '作者：梦莎', '骑趣推荐', 11, NULL, '别说你见过最人山人海的场面，只有上班早高峰。\r\n\r\n2018年9月16日，TREK100上海站在浦东新区的东方体育中心广场开启周末狂欢。TREK100是圈内较为少见的慈善骑行系列活动，由TREK自行车公司与美国MACC基金会联合创办于1990年，至今已成功举办29届。TREK100的传统骑行距离为100公里，旨在传递健康、运动、阳光的生活方式，并且通过骑行者的力量，为公益事业做出贡献。\r\n\r\n2016年，TREK100首次登陆中国，2017年在上海，北京，成都和广东惠州成功举办四站活动。今天的上海站，作为2018年杭州站和大连站后的第三站，113km全程组和60km半程组共吸引了来自长三角各地的1300位车手前来挑战，而家庭骑趣会共吸引了50个家庭参加。\r\n\r\n2018年，TREK会将所得报名费用，用于支持中国大学生体育协会自行车分会在全国各高校中推广、普及、开展自行车运动。\r\n\r\n本次活动由美国自行车品牌TREK携手一汽-大众 “C-TREK蔚领”，为自行车爱好者们带来丰富多彩的骑行体验，推广独特的自行车文化。虽然挑战路线没有全程封路，但出发后部分路段由交警实施交通管制。今年为避免给市政道路增加过多的压力，提高安全系数，活动组织方采用了分批出发的方式。TREK中国总经理赵大勇先生 、一汽-大众销售有限责任公司华东区销售事业部市场与公关总监滕洪波先生、上海久事体育产业发展（集团）有限公司东体场馆分公司总经理王舒炜先生共同为活动发车鸣枪。', 'http://c2.biketo.com/d/file/news/activity/2018-09-16/826838c8e7ad0cd6c51adec6b19f022f.jpg,http://c2.biketo.com/d/file/news/activity/2018-09-16/5a39e261411fb70befce5a5f46c42189.jpg');

-- ----------------------------
-- Table structure for myinfo
-- ----------------------------
DROP TABLE IF EXISTS `myinfo`;
CREATE TABLE `myinfo`  (
  `mId` int(11) NOT NULL AUTO_INCREMENT,
  `mLogin` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mName` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mSex` int(11) NULL DEFAULT NULL,
  `mCity` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mAge` int(10) NULL DEFAULT NULL,
  `mHeight` int(11) NULL DEFAULT NULL,
  `mWigth` int(11) NULL DEFAULT NULL,
  `mPassword` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mImg` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mPlace` int(1) NULL DEFAULT NULL,
  `mGxqm` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`mId`) USING BTREE,
  INDEX `mId`(`mId`) USING BTREE,
  INDEX `mId_2`(`mId`) USING BTREE,
  INDEX `mId_3`(`mId`) USING BTREE,
  INDEX `mId_4`(`mId`) USING BTREE,
  INDEX `mId_5`(`mId`) USING BTREE,
  INDEX `mId_6`(`mId`) USING BTREE,
  INDEX `mId_7`(`mId`) USING BTREE,
  INDEX `mId_8`(`mId`) USING BTREE,
  INDEX `mId_9`(`mId`) USING BTREE,
  INDEX `mId_10`(`mId`) USING BTREE,
  INDEX `mId_11`(`mId`) USING BTREE,
  INDEX `mId_12`(`mId`) USING BTREE,
  INDEX `mId_13`(`mId`) USING BTREE,
  INDEX `mId_14`(`mId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of myinfo
-- ----------------------------
INSERT INTO `myinfo` VALUES (1, '15279705590', '鸣人', 1, '江西', 21, 170, 52, 'e10adc3949ba59abbe56e057f20f883e', '/myPic/tox120181026161047.jpg', 0, '每一步都超越曾经的自己，加油！');
INSERT INTO `myinfo` VALUES (2, '18370862019', 'mitu', 1, '江苏', 20, 168, 50, '871719514c2ea70a444434822fb23820', '/myPic/tox20181028171066.jpg', 0, '只想踩着单车，携一缕清香，延一条越走越远的路，伴着西去如血的夕阳……');
INSERT INTO `myinfo` VALUES (3, '15279705591', 'xiao', 1, '苏州', 20, 170, 55, 'e10adc3949ba59abbe56e057f20f883e', NULL, 1, '你走出千万人群独行,往柳暗花明山穷水尽去');
INSERT INTO `myinfo` VALUES (4, '15279705592', '张三', 1, '上海', 20, 175, 52, 'e10adc3949ba59abbe56e057f20f883e', NULL, 1, '身未动，心已远');
INSERT INTO `myinfo` VALUES (5, '15279705593', 'mary', 0, '北京', 20, 160, 49, 'e10adc3949ba59abbe56e057f20f883e', NULL, 1, '骑行在路上，风景在心中');
INSERT INTO `myinfo` VALUES (6, '15279705594', 'jack', 0, '杭州', 20, 170, 60, 'e10adc3949ba59abbe56e057f20f883e', NULL, 1, '我已在路上，只有心知道');
INSERT INTO `myinfo` VALUES (7, '15279705595', NULL, NULL, NULL, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL);
INSERT INTO `myinfo` VALUES (8, '15279705598', NULL, NULL, NULL, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL);
INSERT INTO `myinfo` VALUES (9, '18914006360', NULL, NULL, NULL, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL);
INSERT INTO `myinfo` VALUES (10, '15893397605', NULL, NULL, NULL, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', '/myPic/920181026111054.png', NULL, NULL);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `oNo` int(11) NOT NULL AUTO_INCREMENT,
  `mId` int(11) NOT NULL,
  `sAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sTotal` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sphoneNumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sName` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`oNo`) USING BTREE,
  INDEX `fk_order_myInfo1_idx`(`mId`) USING BTREE,
  INDEX `oNo`(`oNo`) USING BTREE,
  INDEX `oNo_2`(`oNo`) USING BTREE,
  CONSTRAINT `fk_order_myInfo1` FOREIGN KEY (`mId`) REFERENCES `myinfo` (`mid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (1, 1, '香港', '', '18370862019', '哈哈', '2018-10-24 00:00:00');
INSERT INTO `order` VALUES (2, 1, '上海', NULL, '15736837984', '小海', '2018-10-28 00:00:00');
INSERT INTO `order` VALUES (31, 2, '11', NULL, '33', '22', '2018-10-28 19:43:27');
INSERT INTO `order` VALUES (32, 2, 'w', NULL, '12345678901', 'w', '2018-10-29 09:37:40');

-- ----------------------------
-- Table structure for orderdetails
-- ----------------------------
DROP TABLE IF EXISTS `orderdetails`;
CREATE TABLE `orderdetails`  (
  `pNo` int(11) NOT NULL AUTO_INCREMENT,
  `mId` int(11) NOT NULL,
  `cNo` int(11) NOT NULL,
  `oNum` int(11) NULL DEFAULT NULL,
  `oName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `oPrice` int(10) NULL DEFAULT NULL,
  `oImg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pNo`) USING BTREE,
  INDEX `fk_order_order1_idx`(`mId`) USING BTREE,
  INDEX `fk_order_bikeDetails1_idx`(`cNo`) USING BTREE,
  CONSTRAINT `fk_order_bikeDetails1` FOREIGN KEY (`cNo`) REFERENCES `bikedetails` (`cno`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_order_order1` FOREIGN KEY (`mId`) REFERENCES `myinfo` (`mid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderdetails
-- ----------------------------
INSERT INTO `orderdetails` VALUES (26, 2, 12, 1, '捷安特山地车', 2998, 'https://gd1.alicdn.com/imgextra/i3/2363208047/TB2CDhJnnqWBKNjSZFAXXanSpXa_!!2363208047.jpg_400x400.jpg,http://gd2.alicdn.com/imgextra/i2/2363208047/TB2IsvJm.OWBKNjSZKzXXXfWFXa_!!2363208047.jpg,//gd1.alicdn.com/imgextra/i1/2363208047/TB2j441niAnBKNjSZFvXXaTKXXa_!!2363208047.jpg,http://gd1.alicdn.com/imgextra/i1/2363208047/TB2j441niAnBKNjSZFvXXaTKXXa_!!2363208047.jpg,http://gd1.alicdn.com/imgextra/i1/2363208047/TB2dvignb3nBKNjSZFMXXaUSFXa_!!2363208047.jpg');
INSERT INTO `orderdetails` VALUES (27, 2, 13, 1, '捷安特山地车', 2498, 'https://img.alicdn.com/imgextra/i3/1810404213/O1CN011gzb5mnYB5P2Khr-1810404213.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i2/1810404213/TB2RD2UaXXXXXabXXXXXXXXXXXX-1810404213.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i3/1810404213/TB2woHVaXXXXXX1XXXXXXXXXXXX-1810404213.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i2/1810404213/TB2pXjPaXXXXXXiXpXXXXXXXXXX-1810404213.jpg_430x430q90.jpg');

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply`  (
  `reply_id` int(255) NOT NULL AUTO_INCREMENT,
  `com_id` int(255) NULL DEFAULT NULL,
  `reply_txt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reply_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`reply_id`) USING BTREE,
  INDEX `com_id`(`com_id`) USING BTREE,
  CONSTRAINT `com_id` FOREIGN KEY (`com_id`) REFERENCES `commentary` (`com_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES (1, 1, ' 是的呀 ', '李四', 'http://10.40.4.24:3000/myPic/tox120181026161047.jpg', '2018年10月27日 11:06:7');
INSERT INTO `reply` VALUES (2, 2, '哈哈哈', '张三', 'http://10.40.4.24:3000/myPic/tox20181028171066.jpg', '2018年10月27日 11:06:7');
INSERT INTO `reply` VALUES (3, 2, '我也是哦', '马六', 'http://10.40.4.24:3000/myPic/tox20181028171066.jpg', '2018年10月27日 11:06:7');
INSERT INTO `reply` VALUES (4, 2, '很巧', '王五', 'http://10.40.4.24:3000/myPic/tox20181028171066.jpg', '2018年10月27日 11:06:7');
INSERT INTO `reply` VALUES (6, 3, '嗯嗯嗯', '张三', 'http://10.40.4.24:3000/myPic/tox120181026161047.jpg', '2018年10月27日 11:06:7');
INSERT INTO `reply` VALUES (7, 2, '对对对', 'rose', 'http://10.40.4.24:3000/myPic/tox20181028171066.jpg', '2018年10月27日 11:06:7');
INSERT INTO `reply` VALUES (8, 4, '哈哈哈哈', 'rose', 'http://10.40.4.24:3000/myPic/tox20181028171066.jpg', '2018年10月27日 11:19:47');
INSERT INTO `reply` VALUES (9, 5, '哈哈哈哈哈', 'rose', 'http://10.40.4.24:3000/myPic/tox20181028171066.jpg', '2018年10月27日 11:21:32');
INSERT INTO `reply` VALUES (10, 1, '嗯嗯嗯嗯嗯嗯嗯', 'rose', 'http://10.40.4.24:3000/myPic/tox20181028171066.jpg', '2018年10月27日 12:35:9');
INSERT INTO `reply` VALUES (11, 3, '嗯嗯嗯嗯嗯嗯嗯', 'rose', 'http://10.40.4.24:3000/myPic/tox20181028171066.jpg', '2018年10月27日 12:35:9');

-- ----------------------------
-- Table structure for security
-- ----------------------------
DROP TABLE IF EXISTS `security`;
CREATE TABLE `security`  (
  `security_id` int(100) NOT NULL AUTO_INCREMENT,
  `security_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `security_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `security_content` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`security_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of security
-- ----------------------------
INSERT INTO `security` VALUES (1, '自行车运动冬训该做什么，怎么做？', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/tour/notes/2018-09-18/f8b9d2da23aa14040d7cbedabff40a2e.jpg', '冬训字面上的意思好像是说冬天做的训练，不过，在自行车的领域里面有些不同。主要是由于在国外，冬天会下大雪，很多赛事无法进行，严重时连骑车都有困难。于是乎趁这段时间，进行跟以往不同的训练，以应付来年的赛季。\r\n\r\n住在热带国家的我们没有这种问题，冬天只要穿着得当，骑车还是很舒服的。因此对我们而言，冬训指的是＂非赛季(OffSeason)时的训练方式。\r\n\r\n那么，冬训该做什么呢？主要是下列几件事：\r\n\r\n1.休息：\r\n\r\n一般而言赛季过后，选手会休息两周左右不等(甚至更长)，主要是让赛季时身体累积的疲劳，可以彻底的恢复过来。\r\n\r\n要切记：身体恢复的越好，才能在下次的训练中做出越高的强度，进而得到更好的成效。如果身体一直处在疲劳状态，只是拖着沉重的身体去练习，在我们习用语就叫做＂赚累的＂，对你的成长一点帮助也没有。\r\n\r\n2.强化身体结构与力量：\r\n\r\n你不会在比赛的前几天去做重训，把自己搞到全身酸痛，因为那会直接影响比赛的表现。所以赛季时，选手不做太劳累的训练。\r\n\r\n然而冬训因为不比赛，所以你有大把的时间可以把自己搞残废。那此时不练，更待何时？趁这时候好好的强化自己的核心肌肉还有其他骑车会用到的肌肉，是绝佳的机会。\r\n\r\n3.维持足够的耐力：\r\n\r\n如果目标是4HR内完成武岭的车友，遇到假日还是出去骑个3.5HR吧，强度请维持中等就好。以免操劳降低了免疫力。当然穿插个几次8-10秒的小小烟火，是无伤大雅的。但尽量不要费力去爬山，如果真的想爬，也请\"慢慢的\"爬上去就好，登山车是个不错的主意，挂上34T的大飞轮慢慢的爬。\r\n\r\n4.提升踩踏效率与技巧：\r\n\r\n这是冬训的要项，因为第二项的肌力训练，会破坏你原本踩踏的协调性。所以在冬训期间，必须不断的进行踩踏技巧的训练与摸索。这可以在室内训练台上进行，也可以在户外做。\r\n\r\n但是千万要记住：时间不要长。这种踩踏效率的训练，时间一长，人就因为疲劳而破功，而在疲劳下会有两个大缺点：一是疲劳下的运动非常容易导致关节受伤。二是身体到最后只会记住\"破功\"的踩踏，导致你\"白练\"。\r\n\r\n所以，我在今年做的冬训项目中，关于踩踏的训练（有很多是单脚踩踏）几乎都是1分钟以内的间歇，就是为了让你在不要破功的情况下能提升踩踏的效率。\r\n\r\n5.提升自己的摄氧能力（心肺）：\r\n\r\n耐力运动需要消耗大量的氧气，所以运动员需要足够的摄氧能力才能有好的表现。而摄氧能力的养成，需要\"持续\"的进行有氧耐力运动才能做到。因此冬训时，请尽可能的维持每周3次，每次40分钟以上的有氧运动。借以提升身体的摄氧能力。\r\n\r\n健身房有许多心肺训练机，不妨选个两三台，各玩个20分钟。怎么玩才能有效率的提升摄氧能力，可以多去搜寻看看相关的网站。\r\n\r\n综合以上＂耐力＂、＂肌力＂、＂技巧＂、＂心肺＂四个训练主项，在冬训（12-16周）完成后，你应该各具备了相当的基础，这时候我们进入春训拉强度。就会有以下的结果：＂有足够的心肺能力支持你的肌肉进行有力而且技巧良好的踩踏，能持续相当的时间。＂四项基础在春训期间整合起来，进步就会是\"理所当然\"的事。');
INSERT INTO `security` VALUES (2, '发生骑行事故时如何有效应对', 'https://imgsa.baidu.com/forum/w%3D580/sign=640930b9c31b9d168ac79a69c3dfb4eb/63a44410b912c8fcd10154abf1039245d7882190.jpg?tdsourcetag=s_pctim_aiomsg&qq-pf-to=pcqq.c2c', '骑行爱好者会明白一个道理“常在河边走，哪能不湿鞋”，外出骑车会让自己轻松愉快，很多放松警惕的时候伴随而来的很可能就是意外。\r\n\r\n在外出前我们都应该做好准备减少自己在骑行中受到事故伤害，而且在紧要关头可能会救了你。\r\n\r\n1、请不要低调出行\r\n如果你要单飞，先花几秒钟传个讯息给亲人或好友，告知对方你往哪骑、大约何时返回。\r\n\r\n一般车友都想骑一趟车可能二、三十公里，不需要特别交代，但如果没有人知道你去哪就很难找到你，尤其是骑车的路线比较偏僻留下讯息就会更显重要。\r\n\r\n2、明确个人信息\r\n将自己的基本信息、紧急连络人电话写成一张小卡片上放在车包或和手机放一起。\r\n\r\n当无法避免的意外降临之后，你需要做足以下步骤来自保：\r\n\r\n1）保护你的头\r\n骑车一定要戴头盔来保护头部安全。如果摔车，要特别注意头部受伤区域，尤其是有些人在摔车跌倒撞到头后刚开始没有出现不适的情况，紧接着可能开始觉得不舒服，有时会发生大脑出血的状况，甚至可能导致死亡。\r\n\r\n如果有以下状况，应该赶快打电话叫救护车或尽快求医：\r\n头盔破裂，这就意味着头部受到重击。\r\n开始头痛，不但没有减缓，反而越来越严重\r\n起身后感觉看不清，需要马上就医检查。\r\n失去意识……\r\n\r\n2）做一个深呼吸\r\n骑车受伤很常见的问题，就是胸口受到车把撞击一般没有外伤，因此很多人都认为没什么问题，这时不妨试试做深呼吸。如果呼吸有困难、会痛，肯定有问题！\r\n\r\n因为你可能肋骨有裂,裂开的肋骨可能会有锋利的边缘,这个时候一旦移动就可能刺伤肺部。\r\n\r\n3）给自己做腹部检查\r\n在我们的腹部里有很多的软组织和器官,同样可能会被车把碰撞或刺伤,因此自行用手触摸腹部做个简单的检查。如果有部位触感异常的软，可能是内部有受伤。又如果腹部变得涨或硬，有可能是内脏出血的症兆。\r\n\r\n4）小心移动脊椎\r\n颈部和背部受伤都是很严重的，通常你可以移动手指和脚指，来断定状况是否良好。\r\n\r\n如果有麻木或刺痛的感觉就是可能脊椎损伤，头部也可以慢慢向左、向右转动45度，如果觉得不舒服，尽快就医。\r\n\r\n5）快速止血\r\n如果身体有伤口流血，不要像电影里那样绕肢体止血，冒险如此做可能带来更大伤害，这个时候做基本的急救措施就好。你唯一要做的就是用干净的东西对伤口直接加压止血，冷静地等待救援。');
INSERT INTO `security` VALUES (3, '在户外避免迷路的黄金法则', 'http://image1.8264.com/wen/public/20180712/153136599163.jpg!t3w825h0', '户外活动的时候迷路本身并不可怕，可怕的是迷路之后因处置不当而导致的滑坠、失温、受伤、饥饿等事故。\r\n\r\n其实，只要有正确的处置方法，上述情况完全可以在最大限度上避免发生。\r\n\r\n在迷路后，很多人往往慌不择路，平时不敢走或不能走的地方，为了急于摆脱困境，也会冒险尝试，安全事故往往就发生在这个时候。\r\n\r\n在迷路后，最需要做的首先就是让自己平静下来，冷静下来，要知道，慌乱中很少有人能做出正确的决定，只能徒增危险，既然慌乱解决不了问题，那么就一定告诫自己遇事要冷静。冷静下来之后，需要对自己现时的方位和来时的路线做一个分析和回忆。\r\n\r\n关于寻路，下面几个经验希望会对你有所帮助。\r\n\r\n1.走大不走小:择主干道而行\r\n\r\n顾名思义就是在山区的各条道路中择主要干道而行。\r\n\r\n这有两个注意事项：\r\n\r\n首先，一般山区里的道路，只要沿着大路走，就一定能找到人家。所谓的大路，不一定指公路或者机耕道，也有可能是山间小道或者是田埂。其次，在农村山地，不必完全拘泥于某一条道路，只要大方向对，顶多走点冤枉路而已，最终都能走到目的地。2.走低不走高:低处有人家\r\n\r\n央视播过一个纪录片，其中一个片段讲的是几个没有户外经验的大学生去穿秦岭太白，迷路之后领队和他的女朋友不顾大家反对，执意要往高处攀爬以便能获得更好的视野和寻找出路，结果一个队伍一分为二，其他人朝山下走获得了救助，而该领队和女友最终一死一失踪，为其错误决策付出了惨重代价。\r\n\r\n一般来讲，山地里的人家大多数都是住在山腰或者山脚，少有住在山顶的。要想在迷路后找到人家，获得救助，那么往山下走，往地势低的地方走无疑是明智的。找到人家后，吃喝拉撒不用愁，还担心什么呢?\r\n\r\n3.走明不走暗\r\n\r\n白天赶路，不走夜路\r\n\r\n明，指的是白天，暗，指的是夜晚。\r\n\r\n换句话说，迷路后尽量不要走夜路，一方面是因为不熟悉路况，走夜路很容易发生安全事故。\r\n\r\n另一方面，夜晚的时候走路，因为看不清周围的参照物，往往会让自己迷失得更彻底。所以，无论如何，一旦迷路，一旦天快要黑，必须就地扎营，以确保安全。\r\n\r\n4.走水不走旱:水可保命，人延水而居\r\n\r\n如果在迷路后，完全没有道路可循，那么小溪或者河流就是最好的向导。\r\n\r\n一方面，只要有水就可以有效延续生命，另一方面因为山民往往逐水而居，住家周围不远都会有水源，即使附近没有水源，农家也会用一根细细的橡胶管从山上引水入户。沿着溪流的流向行进，并且注意观察地面是否有细细的橡皮管，找到人家的可能性是很大的。\r\n\r\n必须说明的是，所谓的走水不走旱，并不是说要严格沿着水岸行走，更不是要求在水里涉水前行，而只是沿着溪流或者河流流向的大方向行走。山区溪流往往岸边非常陡峻，并且很容易在天气恶劣环境下发生诸如山洪等灾害，要是涉水而行风险极大，切忌切忌！\r\n\r\n5.走平不走险:不要将自己置身险地\r\n\r\n在迷路之后往往会比较着急，希望能够找到一些捷径尽快摆脱危险，所以很多人在遇到一些危险地段时候往往会做出一些冒险的行为从而导致发生事故。有相当多迷路后导致伤亡的事件跟危险地段坠亡有关。\r\n\r\n所以寻路的时候遇上危险地形，尽量不要冒险去做冒险攀爬或类似的事情，除非是迫不得已没有其他选择。宁可多走一些冤枉路，多耗费一些体力，也不要将自己置身险地。走大不走小，走低不走高\r\n\r\n走明不走暗，走水不走旱\r\n\r\n走平不走险\r\n\r\n记住这25字黄金法则，关键时刻能保你一命！\r\n\r\n务必牢记于心！');
INSERT INTO `security` VALUES (4, '一位老友介绍的遇到危险保命所需物品', 'https://mpt.135editor.com/mmbiz_jpg/ECtALyOWEH62oFPh4Et59UYj6YpomntickW0w69d3ibZEibjOaMHlIfZg23mf8AYM2W7YKB8yXN4JzBM3KHcPoqsg/640?wx_fmt=jpeg', '在野外穿越过程中，如果你对路线不是特别的熟悉，最好行进于队伍中间。\r\n一般来说，一支穿越的队伍会被领队指派有“先锋”（走在队伍最前面的，负责带路、探路、开路的人）和“收尾”（走在队伍最后面的，大部分时间能用对讲机与先锋联系，保证所有队员都走在自己与先锋中间）。\r\n走在队伍中间，有时会遇到前后都看不到队友的情况，这次刮风就是遇到了这种情况。\r\n此时如果没有十足的把握能追上前队，那么最好的办法就是原地等候后队上来。万不可自己去摸路！\r\n队伍行进中，新驴的安全准则：\r\n1.行进过程中，不要超过“先锋”。有时“先锋”会故意放慢速度，那一般是为了等候后队上来，不想把队伍拉得过长。此时经常会有体能较好的驴友嫌速度太慢，不耐烦，不愿意等候，而是继续充满自信的向前走。在不太熟悉的线路，这样做是有很大的风险的。\r\n2.不要落后于“收队”，一般来说收队都是很负责任的等候那些徒步速度较慢的驴友，但经常有驴友对自己没有信心，对收队说：“我没事，你先走吧，做好路标......”。这样较容易造成自己迷路。要靠坚强的毅力走下去，走路速度慢点没关系，但不要总是停下来休息。\r\n3.发现前后无人时，停下来等候。通常“收队”就在你后面不远处，等一等后面的队友，一起走。除非你有十足的把握能追上前面的队伍，最好是原地等候，不要太自信，一旦你走错一个路口，就可能酿成大错！\r\n总结2.\r\n迷路后怎么办；等待救援时应该做些什么。\r\n从前面不刮风的叙述中，大家可以看出：已经感觉到自己迷路了，但还继续偏离正确的航线。\r\n所以，发现自己孤独了、迷路了（有时会是几个人一起迷路），最好的办法是：\r\n1.大声呼喊。好让其他队友辨别你（或你们）的方向\r\n2.如果能记清来路，最好原路返回至曾经走过的主道上。等候前面的人呼唤指引，或回来搜寻。如果已经记不清来时的路，无法原路返回，或者没有自信原路返回，只能原地等候，继续大声呼喊，等待搜寻。\r\n3.如果迷路的时间已经很长，已经走出了比较远的距离，那么最好的办法就是往高处走，上山梁或者山头，到视野开阔的地方，让其他队友更容易发现你。\r\n等待救援时，要做以下几件事情：\r\n1.在救援人员发现你之前，必须每隔半分钟呼喊一次，以引起别人的注意。\r\n2.白天的时候可以把比较醒目颜色的背包罩、帐篷外帐等高举挥舞，或挂在较高的树枝上。\r\n3.晚上的时候可以打灯光信号，比如照相机闪光灯强制闪光，或者把头灯向四处闪烁。\r\n4.在保证安全的前提下，点火生烟。（注意切勿引燃山火）\r\n如果很长时间没有等到救援人员的到来，就要做熬夜的准备了，一方面继续采取以上措施吸引救援人员的注意，一方面要向刮风学习：（建议大家再看一遍刮风的叙述）\r\n1.先冷静下来，要相信天无绝人之路，静心等待就能迎来曙光。\r\n2.找寻一处能避风的地方。千万不要在黑夜里乱跑，山地处处都有危险。\r\n3.清点自己随身物品，判断哪些能用的上，哪些必须省着用。\r\n4.趁天还没黑的时候，准备足够的柴火，晚上取暖用。（夏季就不用了，夏季主要考虑防雨、防蚊虫）\r\n5.照相机随时拿在手里，如果有野兽靠近，除了燃烧着的火堆之外，闪光也许是一种吓退野兽的办法。（理论而已，没尝试过）\r\n总结3.一些和安全相关的必备物品。\r\n现在说的只是腰包里面能装的小东西，建议每次活动都随身携带的。\r\n1.照明\r\n越来越多的救援活动让我们意识到，照明装备是极为重要的。一个高量度的头灯或手电，不但能够帮助被困者发送求救信号，也能帮助救援者进行搜寻。充足的备用电池也比较重要。\r\n这次救援行动以后，我就马上购进了一支超强光的LED战术手电。也不太贵，一二百元而已，照射距离数百米。和头灯相比，专业的LED战术手电亮度高的多。体积小，更便于携带，可以随身装在口袋里，以备不时之需。（战术手电的意思是：由于有极高亮度的光束，可以在夜间战斗时装在枪上，搜寻并瞄准敌人，其高亮度也可以在漆黑的夜里遭遇敌人时，照射对方的眼睛，瞬间致盲，让对手减弱还手之力）利用这种强光线，我们可用于发求救信号、搜寻、以及对付野兽。\r\n还有，这次不刮风的照相机闪光灯也起到了很大的作用：1.白天的时候，在沙皇的提醒下，不刮风通过强制闪光，让我们精确的找到了他所在的位置。2.晚上的时候，闪光灯可以吓退小动物和其他的一些东西，也可以为自己壮胆。\r\n请大家切记：即使是一日游的活动，也一定要带上头灯或手电！！！\r\n2.求生毯\r\n7年前刚开始玩带露营装备的户外活动的时候，我们比较重视这个东西，后来不知怎么的，大家都慢慢的把它忘记了，现在的新驴几乎都不知道求生毯是什么东东了。\r\n求生毯其实就是一层很轻很薄的薄膜，镀有反光金属膜。重量大约只有一两，叠起来和一包面巾纸差不多大，我记忆中，价格好像要一二十元\r\n别看它又轻又薄，在被困的时候，作用却很大：\r\n1.保暖：由于表面镀亮膜，在寒冷的时候，用它包裹住自己，亮膜可以内反射一部分身体散发的热量。\r\n2.遮风挡雨：它是不透水的，包裹住自己可以完全阻挡风雨雪。\r\n3.求救：由于表面镀反光亮膜，所以在丛林中比较显眼，而且可以反射搜索光线，有助于救援人员发现自己。\r\n3.打火机：打火机的重要作用不用说了，不管你抽不抽烟都应该带一个。不刮风问过我：生火的时候什么东西引火效果更好？大尉做出了回答：一小截蜡烛。\r\n我曾经买过一些固体蜡，也不错，很小一块可以燃烧十多分钟。不过现在买不到了。\r\n还有卖专门的喷枪的，但体积大，还得要气罐。不适合腰包携带。\r\n4.食品：腰包里最好带着二块压缩饼干和一些巧克力、水果糖或牛奶糖。');
INSERT INTO `security` VALUES (5, '求救，别只知道SOS！', 'https://mpt.135editor.com/mmbiz_jpg/ECtALyOWEH62oFPh4Et59UYj6YpomnticEWGMib9JSiapUiciaTobweu8ePjKQVTZcZMjD5OnyhyEeQVia6sm2zlelXA/640?wx_fmt=jpeg', '如果在户外发生危险，\r\n\r\n一定要用你能想到的任何方式，\r\n\r\n发出求救信号，\r\n\r\n这将有助于你摆脱困境。\r\n\r\n下文讲授几种常用求救方法，\r\n\r\n以备不时之需。一般来说野外的生存环境比较恶劣，对被困人员来说，及时了解自己所面临的困境，尽可能通过各种方式与他人取得联系，且发出的信号足以引起人们注意，是非常重要的。\r\n\r\n01烟火信号\r\n\r\n火光作为联络信号是十分有效的：白天可在火堆上放些枯叶、青嫩树枝、橡胶、塑料等使之产生浓烟；晚上可放些干柴，使火焰升高。燃放三堆火焰是国际通行的求救信号。将火堆摆成三角形，每堆之间的间隔要基本相等。\r\n\r\n选择的燃烧物一定要易于燃烧。在白天，烟雾是良好的定位器，所以火堆上要添加散发烟雾的材料。\r\n\r\n02 \r\n地面标志求救\r\n\r\n在比较开阔的地面，如草地 、海滩、雪地上，可以制作地面标志。例如把青草割成标志，或在雪地上踩出标志；也可以用树枝、青草等拼成标志；从而与空中取得联络。\r\n\r\n03反光信号求救\r\n\r\n利用阳光和一个反射镜即可射出信号光。任何明亮的材料都可加以利用，如罐头盒盖、玻璃、金属片。有面镜子当然更加理想。持续的反射将规律性地产生一条长线和一个圆点，这是莫尔斯代码的一种。即使不懂莫尔斯代码，随意反照，也会引起注意。无论如何，至少应掌握SOS代码。\r\n\r\n即使距离相当遥远，也能让别人察觉到一条反射光线信号。在求救时，注意环视天空，如果有飞机靠近，就快速反射出信号光。这种光线可能会使营救人员目眩，所以一旦确定自己已被发现，应立刻停止反射光线。\r\n\r\n04旗语信号\r\n\r\n把一面旗子或一块色泽亮艳的布料系在木棒上，大力挥动，左侧长划，右侧短划，做8字形运动。如果双方距离较近，可不必8字形运动。在右边短划一次，前者应比后者用时稍长。\r\n\r\n05留下信息\r\n\r\n当离开危险地时，要留下一些信号物，以备让救援人员发现。地面信号物使营救者能了解你的位置或者过去的位置，方向指示标有助于他们寻找你的行动路径。\r\n\r\n一路上，要不断留下指示标，这样做不仅可以让救援人员追寻而至，在自己希望返回时，也能起到导向作用，不至迷路。');
INSERT INTO `security` VALUES (6, '户外遇险时巧用装备脱离困境的10条原则', 'http://image1.8264.com/portal/201608/23/165009swawni5oz65if858.jpg!x9m2', '原则1：提前做好准备\r\n\r\n作为一个户外爱好者，你要花点时间学习户外知识、生存技能、装备使用等，这样，你至少能在野外不那么狼狈，并且能长时间待下去。\r\n\r\n生存主义者知道，如何在野外生存，并且提前准备，这也是保证你在野外安全活动的前提。\r\n\r\n你不会知道什么时候，你就会去野外参加活动，所以提前买些户外装备，的确很必要，并且这些装备，会一路陪伴你的户外成长之路。\r\n\r\n在野外，你需要一些小工具生火、砍柴、伐木来建造庇护所、净化饮用水、为手机充电等等，这些东西在户外商店或网上都能买到，货比三家，最好选择合适的买。原则2：制定具体计划\r\n\r\n一旦你确定你有哪装备，下一步是如何才能让它们最好地为你服务，例如，如果你决定接下来最好的选择是寻求帮助，你下面要做的就是，让你的手机能够正常工作（野外最好带上手机）。\r\n\r\n如果你迷路了，也不要慌张，你必须提前做好准备，评估自己的身体状况，能否走继续很长的路。\r\n\r\n如果行不通，你必须集中所有工具和材料，搭建一个住所，然后用一些其他的生存技能使你能够安全健康地活下去。原则3：尽量带足装备\r\n\r\n想想你储存的装备，无论它多小多不起眼。衣物、手机、钱和其他随身物品可以干好多事，包括生火，制造武器，照明等等。\r\n\r\n调查你周围的环境也将帮助你找到有用的物品，如木头可以当柴烧、树皮当麻绳用，干树叶和树枝可以建造一个住所。\r\n\r\n提前知道每样物品，能如何帮助你的生存，这样，你就可以在野外把这些知识学以致用。原则4：确定位置方向\r\n\r\n在野外，不管你决定要安营扎寨，还是继续前进的时候，你都需要估计你的大概位置，并确定北在哪。如果你没有指南针或者GPS手机，也没有任何参考，这时，你将需要随机应变。原则5：搭建临时住所\r\n\r\n在野外，有一个安全的坚固的住处至关重要，你可以选择找到一个现成的住处，或用身边的材料，如树枝，树叶，岩石和其他东西建造一个。\r\n\r\n学会用你拥有的材料，在野外建立庇护所的技术，如用油布或几十种不同的方法用天然材料建造一个住所。原则6：寻找安全水源\r\n\r\n人在正常情况下，只能3-7天不喝水，你所处的环境和你的体质，决定你脱水的速度，这就是为什么，要尽快找到一个干净安全的水源。\r\n\r\n凭借灵敏的听觉器官，多注意山脚、山涧、断崖、盆地、谷底等，是否有山溪或瀑布的流水声，有无蛙声和水鸟的叫声等。\r\n\r\n如果能听到这些声音，说明你已经离有水源的地方不远了，并可证明这几的水源是流动的活水，可以直接饮用。但要特别注意的是，不要把风吹树叶的“哗哗”声当做流水的声音。 \r\n\r\n用鼻子，尽可能地嗅到潮湿气味，或因刮风带过来的泥土腥昧及水草的味道。然后沿气味的方向寻找水源，当然这要有一定经验积累。原则7：努力寻找食物\r\n\r\n一旦在野外遇险，必须立即寻找食物，即使科学家已经证明，人可以30天不吃东西，但是如果你要生存一段时间，必须找到食物来源。\r\n\r\n能吃的有浆果、能吃的草、树根、坚果和野菜，或者昆虫等等。吃之前一定要确保这东西无毒无害。蛋白质也是必不可少，可以搭陷阱、捕猎、钓鱼或者掏鸟窝。原则8：学会野外生火\r\n\r\n如果天气很冷，或者你全身湿透了，那么生火是你的首要任务，火在生存中扮演着非常重要的角色，为您提供做饭的燃料，带来温暖，还能吓跑野兽。原则9：战胜内心恐惧\r\n\r\n恐惧和害怕，是户外生存的大忌，慢下来，保持冷静！野外求生确实很难，尤其是对那些整日都活在现代城市里的我们。\r\n\r\n在野外，危机四伏，想活下去，你必须大开脑洞，运用智慧与大自然对抗。\r\n\r\n你要面对的是整日觅食，钻木取火，用原始材料搭建庇护所，并且整天都在为生存做斗争。原则10：制作自卫武器\r\n\r\n在野外，你可能会遇到野兽的攻击，做一些简易武器用来防身，如弓和箭，用削尖的木棒做矛，也可以在营地周围建筑高墙或者地沟，以防止威胁接近。\r\n\r\n在野外生存需要创造力、应变能力和大量的知识，通过知识武装自己，认清自己需要做什么，可以大大提高你的生存机会。\r\n');
INSERT INTO `security` VALUES (7, '面对这8种伤害，户外人应掌握的简易救治办法', 'http://image1.8264.com/wen/public/20180712/153136599256.jpg!t3w825h0', '无论是灾难来临还是户外运动，我们最不愿看到的就是受伤。一旦受伤，及时、正确的处理可以最大可能避免伤害的加剧。\r\n今天就和大家分享一下几种常见伤害的简易救治办法，希望在必要时为大家提供参考。\r\n一、流血\r\n皮肤破损造成的轻微流血，只须按紧伤口约五分钟即可止血。其他流血则会令伤者有潜在的生命危险。\r\n致命情况：\r\n伤口喷出大量血液；\r\n流血持续超过五分钟，或者多次按住伤口五分钟後都未能止血；\r\n身体已经流失了超过二百五十毫升(约一杯)的血液。\r\n处理方法：\r\n当流血十分严重时，让伤者躺下。\r\n用乾净的布垫按伤口。\r\n用绷带或其他乾净的布把布垫包紧在伤口上。\r\n若血液浸透了绷带，不要拆去那绷带，只须在伤口上加上另一个布垫及扎上新绷带即可。\r\n注意若伤口未能止血或流血很多的时候，应立即打120、999或自行到急症室求医。二、怀疑骨折\r\n跌倒、被外物撞倒或被重物压伤，都可令骨头折断，而处理方法最好的方法是让伤者安稳地躺下，等待医疗人员到场协助。\r\n治疗：\r\n假如伤者严重流血，可以尝试止血。\r\n若骨骼外露出伤口，可以厚的东西包裹伤口，减少伤口受外界感染的机会。\r\n把骨折部位固定，例於断脚可以固定在另一只脚上，断手可以固定在胸部、坚硬的木板上等等。\r\n若怀疑是脊骨受伤，则切勿移动伤者或让其他人移动他。\r\n若伤者在马路中间，应该指挥汽车驶开而不应移动伤者，否则可能令伤者更伤。三、昏迷\r\n人会因很多原因而失去知觉，包括：头部受伤、糖尿病、中毒（如一氧化碳）、癫痫症、心脏病发、严重流血等\r\n治疗：\r\n呼唤伤者的名字及弄痛他，确定伤者是否清醒。\r\n假如伤者有反应，情况就不算严重，可以送伤者到医院。\r\n假如伤者没有反应，检查伤者有没有心跳及呼吸，若没有心跳的话则要施行心肺复苏法（懂急救的才可使用）。四、刀伤\r\n我们日常接触很多利器，不小心便会被割伤，造成流血事件。不幸遇到这种情况，其实不用太惊恐。\r\n治疗：\r\n用乾净的清水轻轻清洗伤口，并用乾净的布或纸抹乾；\r\n用清洁的钳子清除任何在伤口内的异物；\r\n用清洁的棉垫按伤口数分钟去止血，亦可以用清洁的纱布、手帕或毛巾去止血；\r\n涂上抗感染的药膏；\r\n可以不包扎小伤口，因为这样会更快愈合；\r\n若是大伤口，则需要敷药。');
INSERT INTO `security` VALUES (8, '面对这8种伤害，户外人应掌握的简易救治办法', 'http://c2.biketo.com/d/file/racing/Events/2018-10-27/f2f93dfea40fca1e44e80cd8c3fe04eb.jpg', '无论是灾难来临还是户外运动，我们最不愿看到的就是受伤。一旦受伤，及时、正确的处理可以最大可能避免伤害的加剧。\r\n今天就和大家分享一下几种常见伤害的简易救治办法，希望在必要时为大家提供参考。\r\n一、流血\r\n皮肤破损造成的轻微流血，只须按紧伤口约五分钟即可止血。其他流血则会令伤者有潜在的生命危险。\r\n致命情况：\r\n伤口喷出大量血液；\r\n流血持续超过五分钟，或者多次按住伤口五分钟後都未能止血；\r\n身体已经流失了超过二百五十毫升(约一杯)的血液。\r\n处理方法：\r\n当流血十分严重时，让伤者躺下。\r\n用乾净的布垫按伤口。\r\n用绷带或其他乾净的布把布垫包紧在伤口上。\r\n若血液浸透了绷带，不要拆去那绷带，只须在伤口上加上另一个布垫及扎上新绷带即可。\r\n注意若伤口未能止血或流血很多的时候，应立即打120、999或自行到急症室求医。二、怀疑骨折\r\n跌倒、被外物撞倒或被重物压伤，都可令骨头折断，而处理方法最好的方法是让伤者安稳地躺下，等待医疗人员到场协助。\r\n治疗：\r\n假如伤者严重流血，可以尝试止血。\r\n若骨骼外露出伤口，可以厚的东西包裹伤口，减少伤口受外界感染的机会。\r\n把骨折部位固定，例於断脚可以固定在另一只脚上，断手可以固定在胸部、坚硬的木板上等等。\r\n若怀疑是脊骨受伤，则切勿移动伤者或让其他人移动他。\r\n若伤者在马路中间，应该指挥汽车驶开而不应移动伤者，否则可能令伤者更伤。三、昏迷\r\n人会因很多原因而失去知觉，包括：头部受伤、糖尿病、中毒（如一氧化碳）、癫痫症、心脏病发、严重流血等\r\n治疗：\r\n呼唤伤者的名字及弄痛他，确定伤者是否清醒。\r\n假如伤者有反应，情况就不算严重，可以送伤者到医院。\r\n假如伤者没有反应，检查伤者有没有心跳及呼吸，若没有心跳的话则要施行心肺复苏法（懂急救的才可使用）。四、刀伤\r\n我们日常接触很多利器，不小心便会被割伤，造成流血事件。不幸遇到这种情况，其实不用太惊恐。\r\n治疗：\r\n用乾净的清水轻轻清洗伤口，并用乾净的布或纸抹乾；\r\n用清洁的钳子清除任何在伤口内的异物；\r\n用清洁的棉垫按伤口数分钟去止血，亦可以用清洁的纱布、手帕或毛巾去止血；\r\n涂上抗感染的药膏；\r\n可以不包扎小伤口，因为这样会更快愈合；\r\n若是大伤口，则需要敷药。五、遇溺\r\n淹溺，是指人淹没于水中，由于水吸入肺内（湿淹溺90%）或喉挛（干淹溺10%）所至窒息。淹溺引起全身缺氧可导致脑水肿。肺部进入污水可发生肺部感染。\r\n治疗：\r\n把遇溺者带到地面。\r\n假如遇溺者没有呼吸但仍有脉搏，用口对口人工呼吸恢复他的呼吸。\r\n假如没有呼吸及脉搏，便要用心肺复苏法（懂急救的才可使用）。\r\n假如呼吸正常，可以按复原卧式让伤者伏在地上。六、触电\r\n我们日常生活非常依赖电器，但使用不当则可能有触电的危险，在行雷时站在空旷的地方，亦有机会因雷击而触电。人体被强力的电流通过，会出现昏迷及严重烧伤的现象，甚至会停止呼吸及心跳，可取人性命。\r\n由於人体能过电，除非肯定电流已经被切断，否则第三者千万不要接触伤者，否则电流会经过伤者通向第三者，波及拯救者。\r\n治疗：\r\n一定要确定电流已经被切断。\r\n若电流无法切断，可尝试把电力总闸关上，或者拔掉插头，又或者用不导电的东西把伤者与电流分开。\r\n适合的不导电物件，如木质、胶质、或纸质的东西，千万不要用任何金属器具或徒手进行。七、眼外伤\r\n每年超过一万人，因眼部受外伤而要往医院急症室求诊，病例包括被利器所伤、化学烧伤和有异物入眼等，虽然大部分个案都很轻徵，但当中约5%的病人视力受到损害。因此，眼外伤後，施行正确的急救是挽救视力一个重要的环节，对於下一步治疗起关键的作用，并可防止视力丧失。\r\n眼内异物：当有异物（如眼睫毛、微尘、碎玻璃）入眼，轻者可以随眨眼或清眼水分泌而排出，千万不要用手擦眼睛，否则异物会嵌入或刮伤眼角膜。如果异物仍留在眼内，应闭上眼，然後延医诊治。八、中毒\r\n不小心吃了有问题的食物，或未经医生处方服用药物，以至一些工业意外，均会引发中毒的危机。\r\n治疗：\r\n处理中毒者的方法因应中毒者的神智及毒药种类而有所不同，但一般而言，急救步骤可按下而行：\r\n带中毒者到附近的医院求医，若乘车的话，尽量把中毒者按复原卧式伏下。\r\n找人打电话通知医院将有中毒病人求医，并旧能告知中毒者服食了哪种毒药、服了多少、病徵及服毒的时间等资料。把盛载毒药的容器或残余的毒药一并带到医院，将有助医生找出解毒剂。');
INSERT INTO `security` VALUES (9, '高原肺水肿和脑水肿的急救方法', 'http://c2.biketo.com/d/file/tour/notes/2018-10-18/309db8c4717975cf8e13f17c3d7ffa75.jpg', '高原肺水肿或脑水肿是极为严重的高山症，它们相伴的症状常是致命的（发病率相对来说极低，但不可小视）。其症状包括连续干咳，出现带有血丝之粉红色泡沫痰液，长时间严重头痛，意识混淆，失忆，出现幻觉，昏迷等。肺水肿的主要症状：严重的头痛、胸闷，极度呼吸困难，不能平卧，阵发性咳嗽，伴有带血丝之粉红色泡沫痰液。\r\n\r\n脑水肿的主要症状：运动失调，是因脑部不能正常工作而影响到四肢的协调。为了测试是否运动失调，以一足跟紧贴另一脚尖，一下一下“丈量”，正常情况下，动作应该很顺畅。严重的话，患者连系鞋带等小动作甚至拿水杯都有困难。\r\n\r\n肺水肿的急救方法：让病人坐位或半卧位休息，两腿下垂，立即充分吸氧，最好是含有50%-70%酒精的氧气，流量4-8升/分；立刻口服呋塞米（速尿）40毫克/日，注意开始用量不要过大，根据情况可加至80毫克，2次/日。硝苯地平10毫克含服，地塞米松4毫克（仅口服一次）。\r\n\r\n注意：保暖，严禁大量饮水。\r\n脑水肿的急救方法：\r\n如果在野外，最能做到的就是降低身体的代谢，特别是脑的代谢。在高原地区多有冰雪，使用头巾或者帽子包入冰雪，制成简易冰帽，降低脑部的温度亦如冬眠，则脑细胞的代谢会降低，水肿的速度也会降低。\r\n\r\n注意：小心搬运病人，变动时注意同时抬头抬脚切忌拖动。脑水肿的脱水药物一般选择甘露醇，急性重症患者可使用静脉推注甘露醇，没有甘露醇的话也可以使用糖皮质激素（地塞米松）皮下注射。\r\n\r\n高原肺水肿和高原脑水肿虽然极为罕见，但却是足以致命的急性高山症，学习简单的判断和急救方法在紧急时刻可以救命！');
INSERT INTO `security` VALUES (10, '“沾花惹草”，小心中毒！', 'http://image1.8264.com/wen/public/20180827/153535015539.jpg!t3w825h0', '户外活动须防毒花草，更不能因好奇而误食了有毒的花果，在常见的花卉中有50多个品种含有毒物质。有些人在花丛前呆久了，还会出现头昏脑胀，咽喉肿痛等症状。有些花会释放对人体有害的气体，有的花粉含毒碱，久与花伴会造成慢性中毒。有些花看似漂亮\r\n\r\n实则危险\r\n\r\n颜色越鲜艳，潜藏的危机可能性越大\r\n\r\n另外，有一些触摸就有害的植物，\r\n\r\n也要引起注意哦！\r\n\r\n泽漆：叶茎会有白色液汁，触 摸会引起斑疹，食用会恶心下痢\r\n\r\n山漆：触摸即引起斑疹\r\n\r\n野漆树：触摸即引起班疹\r\n\r\n野葛：毒性强，触摸即引起斑疹\r\n\r\n荨麻：有小刺，会刺痛人\r\n\r\n豕草：花粉易引起过敏和气喘\r\n\r\n在野外的环境中因误食了有毒野花怎么办，中毒后的急救的原则和目的通常是排毒和解毒，临时简便的操作方法如下：\r\n\r\n1、催吐：可用手指触及咽喉，直至吐出清水为止。\r\n\r\n2、导泻：最方便的是直接喝肥皂水，此法还同时除去已到肠内的毒物。\r\n\r\n3、洗胃：喝下大量的凉的浓茶水，起到洗胃的作用。\r\n\r\n4、解毒：最简便的自制通用解毒剂：烧木炭研末，寻找野山梨或柿子榨汁和水灌下，其主要作用是吸附或中和生物碱、重金属和酸类等毒物。\r\n\r\n当然，最好的办法，就是尽快送医了！');
INSERT INTO `security` VALUES (11, '必看！！如何应对高原反应', 'http://c2.biketo.com/d/file/racing/Events/2018-10-27/a6479cf0a5454836a14ebc82e1d69faf.jpg', '→足量饮水\r\n\r\n之所以把“饮水”提在这个位置，目的是要大家认识到在它高原适应中的重要性。\r\n人到达高海拔后，脊髓会很快产生大量新红血球，以提高血液携氧能力，这些新红血球使血液变得粘稠；同时，由于空气干燥稀薄，呼吸加速，使体内水分丧失比平原快，这种脱水更加剧了血液粘稠。\r\n\r\n一般来说，在高原海拔每天至少应当喝4-5升水，并注意电解质平衡。水分补充合理与否，可以由尿量是否充分、尿液是否清澈、至少浅黄色为判断标准。\r\n\r\n→保持良好的心态\r\n\r\n保持良好的心态、乐观的情绪、坚强的自信心，对于减弱高原反应带来的身心不适十分重要。\r\n\r\n要有一副平常心，既不要过于紧张，也不要过于兴奋。不要过于兴奋、冲动。初上高原的朋友，尤其是乘飞机快速到达者，切忌看到高原、雪山，就心潮澎湃、激动万分、大喊大叫、奔跑跳跃。这只会导致内分泌失衡、增加心肺负担，加重高原反应。\r\n\r\n→注意防寒保暖\r\n\r\n高原天气特点是：气温低，一般海拔每上升1000米，气温下降5-6℃；早晚、昼夜温差大，有些地区早晚温差可达15-20℃；天气变化快，刚刚还艳阳高照，很快就可能狂风大作，雷雨冰雹。因此，在高原一定要注意防寒保暖，谨防感冒。感冒会增加身体的耗氧量，有感冒就不要去高原地区。\r\n\r\n→合理膳食\r\n\r\n在高原缺氧环境，人体新陈代谢受到影响，因而胃、肠、肝、胆等消化系统功能较平原地区减弱，对食物的消化、吸收能力降低。在高原不宜吃得过饱,最好保持“七分饱”状态。如果中间饿了，可以加餐或吃些有营养、易消化的零食。\r\n\r\n→适当运动\r\n\r\n初上高原，最好的适应方式，既不是原地不动，蒙头大睡，也不是大运动量到处活动，而应该保持一定的活动量，积极主动地自我调整。\r\n\r\n比如，可以在驻地附近轻松散步等。 刚到高原时运动节奏、幅度、频率以及运动量一定要控制好，轻举缓动，海拔越高越要注意。登山运动员的动作常常看起来像慢镜头一样就是这道理。\r\n\r\n→备好应急用品\r\n\r\n现在预防高原反应普遍提倡三位一体，提前服用红景天（提前5到10天连续服用效果最佳）背包备上速达养做快速应急，无需提前服用，快速缓解高反的同时，有利于帮助高原睡眠。最后不得已再上氧气瓶，吸氧有利于快速缓解高原缺氧，但容易产生依赖性。');
INSERT INTO `security` VALUES (12, '户外活动突遇塌方、泥石流如何避险？', 'http://www.netyoume.cn/bbs/data/post-img/200907/28/12193838.jpg', '初秋季节，山区因持续降雨原因较易发生地质灾害，户外徒步中，尤其是在断崖、泥土松散、山体崎岖的地带，遇到大雨、暴雨天气，周围就有发生塌方或泥石流的可能，我们这次来说说遇到此种情况如何应对吧。\r\n\r\n分析山路的地势也是很必要的，行前对当地的山体状况，包括植被是否丰富、是否曾经发生过塌方或泥石流等情况做到了如指掌，对处理突发灾害是有帮助的。预防手段\r\n为防泥石流及塌方事件发生，行前一定要特别注意天气状况。雨季进山游玩，一定要查看前一周和后一周的天气情况，连续下雨的天气，切忌进山。\r\n可雇佣当地熟悉山路的向导，借鉴当地人的经验。避免自驾车出行，以防对路况不熟陷入险情。\r\n\r\n建议携带滑板盔，这个比登山盔更轻便易携带，且硬度过关。可防止头部被落物砸伤，紧急情况下，戴上亮色的滑板盔还容易引起注意，让自己及时得到救援。\r\n\r\n塌方\r\n\r\n斜坡底部或疏水孔有大量泥水溢出时，显示斜坡内水分已饱和，斜坡中断或顶部有裂纹或新形成的阶梯状，露出新鲜泥土，都是塌方的先兆，应尽快远离。\r\n\r\n泥石流\r\n\r\n正常流水突然断流或突然增大，并夹杂较多的草木；\r\n深谷内传来类似火车轰鸣或闷雷声，就算很微小，也应判定泥石流已形成，迅速撤离；\r\n\r\n河谷溪谷深处突然变昏暗并伴有塌方现象，不是山洪就是泥石流。\r\n\r\n处理方法\r\n塌方\r\n\r\n如果遇到塌方，应远离塌方地段，立即打电话报警或联系有关部门请求救援。遇到山中无信号的情况下，可借助身上醒目的衣服、口哨等求援。\r\n\r\n如有人被崩塌物击中，先运送伤员到安全地带再施救。\r\n\r\n若有人被山泥崩塌淹没，切勿尝试自行拯救，避免更多伤亡。\r\n\r\n泥石流\r\n\r\n如果遇到泥石流，立即向与泥石流成垂直方向的山坡爬，切忌向泥石流的流动方向上方或下方跑。来不及跑的情况下，就近抱住树木往上爬，越高越好。躲到大的岩石或者树木茂密的地方，可以减少伤害。\r\n\r\n不要惊慌哭喊消耗体力，要想办法引起注意，等待救援。一旦受伤，先固定受伤部位、止血，不要轻举妄动。\r\n\r\n特别提示：在山路上开车也要格外谨慎，不但要留意前方的情况，还应留意途中可供避险的场所，如旅店、岗亭等，带上一个熟悉山路的向导是最好的选择。');
INSERT INTO `security` VALUES (13, '在野外谁都可能会迷路，记住这些，关键时刻找对方向', 'http://image1.8264.com/portal/201611/03/174922sv4e4wjfc4ms0xuu.jpg!w227h157', '相信大家也常常看到一些户外事故的新闻，可能留下了户外活动很危险的印象，其实只要加以防范，很多危险是可以避免的，比如户外事故最主要的原因之一——迷路。\r\n并不是只有方向感很差的“路痴”才会在野外迷路，很多经常玩户外活动的“老驴友”也会有迷失方向走错路的时候。\r\n\r\n在自然环境中，尤其是陌生的新环境中，迷路发生概率非常大，比如灌木丛生的树林里或遍布大石头的地方，容易因看不清楚足迹而不知不觉中迷路；有时也可能在雨中、雾中或傍晚时分因视野不好而迷路；还有在面对渡河点、由开阔环境钻进密林的地点、峡谷中分叉的沟口等情况时也容易迷路。\r\n\r\n因为在野外迷路被困，很多不可预知的危险便接踵而来，所以如果我们能够避免迷路，或者在迷路时能正确的处理，便可安全归来。\r\n那么如何避免迷路呢？\r\n\r\n首先在出发前要做好万全准备，提前查看天气预报，提前搜集当地的地理信息，提前准备好指北针、地形图和GPS。这里要说一下，有些地方是没有手机信号的，可以使用下载好的手机导航。还有带个可以对外联络的对讲机也是很有必要的，以便迷路时求救。\r\n\r\n在途中最好沿路径和成熟路线走，避免自行开路，独辟蹊径，或擅自改变行动计划；对不确定的区域做好路标和标记；判断不准方向时绝不要盲目前进。\r\n如果你做了最大的努力，结果还是迷路了怎么办呢？\r\n\r\n这时候就要停止前进，尽快冷静下来，切勿贸然行进或盲目行事，一定要记住“STOP”法则。\r\n\r\nS即Stay（待在原地）：这是保证冷静的首要步骤。就近停下来把背包卸掉，节省体力，不要做无谓的消耗。\r\n\r\nT即Think（思考）：自问一些关键问题，有助于分析目前所处的状况，比如，“我刚才经过了哪些地点？”，“距离天黑还有多长时间？”\r\n\r\nO即Observe（观察）：仔细观察四周，尽量找到一些地标物，例如溪流、岩石、洞穴、公路。分辨四周声音，如流水声、车声等，这些声音可以帮你找到安全区域。\r\n\r\nP即Plan（计划）：如果确定天黑之前走不出去，提前寻好露营地点非常重要。天黑之前，需要找到生火要用的木材。\r\n\r\n迷路后，最困难的一件事情是承认自己迷路了！做出这个判断一定不要有侥幸心理，抱着“再找找路”的心态，其结果往往事与愿违。\r\n确认自己迷路后可以分析判断一下是否可以自行处理，比如确定当前的位置，测算走错路的距离。\r\n\r\n如果可以确定位置，并知道方向，要对现在的位置及路线做好标记，以便返回重新找路。\r\n\r\n如果不知道该往哪走，可以向警察或当地救援队求救，求救时尽量提供全面的信息。然后保持体力，积极等待，夜晚可以点一小堆火取暖。\r\n\r\n可以用手电筒向天空反复照射或者打开头灯上的红色救援信号灯，向救援人员发信号，以便对方尽快找到你。\r\n\r\n最后想跟大家说，户外活动并不可怕，可怕的没有基本的户外安全知识，遇到问题不能正确处理，希望大家重视户外安全教育，保证安全才能享受自然。');
INSERT INTO `security` VALUES (14, '母牛都能被吹上天！ 户外遭遇龙卷风怎么办？', 'http://image1.8264.com/portal/201708/16/0838122cd5vtiiz5uu4mkf.jpg!x9m2', '户外怎么样防范龙卷风？\r\n1、最安全的地方是由混凝土建筑的地下室。龙卷风有跳跃性前行的特点，往往是一会儿着地又一会儿腾空。人们还发现，龙卷风过后会留下一条狭窄的破坏带，在破坏带旁边的物体即使近在咫尺也安然无恙，所以人们在遇到龙卷风时，要镇定自若，积极想法躲避，切莫惊慌失措。要知道混凝土建筑的地下室才是最安全的地方。人应尽量往低处走，尤其不能呆在楼房上面。另外相对来说，小房屋和密室要比大房间安全。\r\n2、寻找与龙卷风路径垂直方向的低洼区藏身。有人如果正巧乘汽车在野外遇到了龙卷风，那是非常危险的。因为龙卷风不仅可以将沿途的汽车和人吸起“吞食”，还能使汽车内外产生很大的气压差而引起爆炸，所以这时车上的人应火速弃车奔向附近的掩蔽处。倘若已经来不及逃远，也应当机立断，迅速找一个与龙卷风路径垂直方向的低洼区(如田沟)隐身。龙卷风总是“直来直去”，好像百米冲刺的运动员一样，它要急转弯是十分困难的。\r\n3、跑进靠近大树的房屋内躲避。人们只见到大树被龙卷风连根拔起或拦腰折断而未发现被“抛”到远处，这大概是树木有一定的挡风作用吧。1985年6月27日，内蒙古农民丁凤霞家一棵直径1米多粗、高10多米的大树被龙卷风连根拔起，附近另两棵大树也被折断，而距离大树3米远的房屋却秋毫无损，但距离她家30米远处的6间新盖砖瓦房因旁边未植树而遭毁。由此可见，房前屋后多植树可抵御龙卷风袭击。\r\n如何预防龙卷风袭击：牢记简单4条建议\r\n(1)在家时，务必远离门、窗和房屋的外围墙壁，躲到与龙卷风方向相反的墙壁或小房间内抱头蹲下。躲避龙卷风最安全的地方是地下室或半地下室。\r\n(2)在电杆倒、房屋塌的紧急情况下，应及时切断电源，以防止电击人体或引起火灾。\r\n(3)在野外遇龙卷风时，应就近寻找低洼地伏于地面，但要远离大树、电杆，以免被砸、被压和触电。\r\n(4)汽车外出遇到龙卷风时，千万不能开车躲避，也不要在汽车中躲避，因为汽车对龙卷风几乎没有防御能力，应立即离开汽车，到低洼地躲避。\r\n龙卷风确实非常难以预测，而一些发达国家在该领域做了大量的研究，也只是能够提前做到几分钟以内的预警。');
INSERT INTO `security` VALUES (15, '户外急救包≠家庭小药箱，专业急救包应该放这些', 'http://image1.8264.com/portal/201701/12/150011i47nyunlzlrz4r4t.jpg!x9m2', '户外游玩、自驾旅行，一定谨记“安全第一”，除了掌握必要的急救知识，正确准备一个急救包才是救援的基础。急救包所携带的品项与数量，则跟队伍的人数与天数有关，当日郊山行程与长线行程，其急救包的品项与数量，当然有很大的差别，因此设置急救包，必须考虑活动难易度、环境、人数等。\r\n\r\n1|赤热地带\r\n在埃及的沙漠里，一定要准备防暑药。去热带雨林，药品则需要防止蚊虫叮咬，同时又要防暑。所以藿香正气丸、仁丹片、清凉油、驱蚊油都是不错的选择。另外，口服补液盐能补充出汗流失的盐分。\r\n\r\n2|密林大山\r\n深山老林是毒蛇出没最频繁的地方，所以带上解毒药、弹性绷带是上上之策。万一被蛇咬到，原地不动，掏出绷带在伤口上方位置扎紧，防止毒液扩散，把你身上的刀放在打火机上烧（消毒），然后在伤口处划一条长约1厘米、深0.5厘米的刀口，用嘴将毒液吸出，马上服用蛇药，待情况稳定，赶紧去医院就诊。\r\n\r\n3|高原地带\r\n去高原地区旅行，一定不要忘了带上一些抗高原反应的药，如：高原安、红景天等。另外，还可以准备一些降低高原反应强度的药，如安眠药、止痛药、晕车药、速效感冒药、阿司匹林，以及口服葡萄糖等。任何程度的野外急救课程，对户外活动者都有所帮助，就跟买保险的概念一样。更有价值的是，野外急救技术能在第一时间把风险降低。\r\n\r\n急救包的内容物要与您的野外急救知识相称:首先，急救包装的品项必须是自己懂得使用的东西，如果您不懂得或是不确定如何使用。那麽，越大的急救包甚至急救箱对你而言，反而是越大的负担。\r\n\r\n事实上，在野外急救的领域中，正确判断患者症状的轻重缓急反而是更重要的技能，而这样的能力则必须透过野外急救课程达成，所以接受野外急救训练是户外活动者从事活动时的最佳保障。至于参与野外急救课程的程度，就要视您参与野外活动的程度而定了。在户外，没有人能够预料发生什么事情。一个急救箱可以延长你的生命，务必随身携带。\r\n\r\n户外急救包毕竟是药品有限\r\n只能够做一个第一时间的急救\r\n在紧急处理完将患者交给医师之前\r\n需对患者进行保暖，\r\n避免他消耗体力，以使症状恶化\r\n让我们重视户外急救包的作用\r\n一起安全的开展户外活动！');
INSERT INTO `security` VALUES (16, '户外足部受伤的应急措施和预防', 'http://www.uhut.com/uploads/image/20150415/20150415104637_94386.jpg', '户外爱好者都经历过菜鸟时期，在过程中受到一些伤害是不可避免的，而其中足部遇到的麻烦是最常见的。\r\n\r\n双脚起水泡恐怕是户外运动最常见的状况了。新鞋磨合期、长途跋涉等都会导致双脚出现水泡。如果真的在户外运动中遇到双脚起泡的麻烦，并且没有条件让你有足够长时间进行休息，那就要将水泡用干净的尖物刺破，把水泡中的水挤出，贴上创可贴即可。一定要忍着疼把水挤干净，否则第二天将十分痛苦。建议大家在长时间徒步前一定要与户外鞋有充分的磨合，并且这个磨合并不是穿着户外鞋在城市中溜达，而是起码要爬过几次山才可以。另外户外鞋配上合适的鞋垫也是十分有效的方式。\r\n\r\n其实导致双脚起泡的因素，不论是新鞋磨合期还是长距离跋涉，原理其实都是一样的：长时间的行走使脚部热量增加，双脚无论是遇到外界水的侵袭还是来自鞋内部双脚的汗气，这些潮湿都会造成脚底皮肤变软，再经过一定程度摩擦后，脚部真皮下的积水就会形成水泡，继续行走将疼痛难忍，而这个过程都是在户外鞋的小空间内发生的。由此可见，户外鞋的性能将直接影响你双脚的安全，如果你的户外鞋具有阻挡外界水进入，并能使双脚的汗气迅速排出，则可以在很大程度上避免脚部起泡。');
INSERT INTO `security` VALUES (17, '户外中常见花草的毒性', 'https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=4158534404,1103769909&fm=173&s=A8502EC2EAE3BE4D7B4D48BC0300C042&w=640&h=427&img.JPEG', '野外求生须防花毒，更不能因好奇而误食了有毒的花果，有些人在花丛前呆久了，还会出现头昏脑胀，咽喉肿痛等症状。有些花会释放一种对人体有害的废气，有的花粉含毒碱，久与花伴会造成慢性中毒。有关中药师和花卉学者研究发现，在常见的花卉中有50多个品种含有毒物质，人如果接触不当，容易产生某些疾病。\r\n\r\n1、杜鹃花：杜鹃花又叫映山红，在南方的一些山上，一到开春的时节，漫山遍野地开著红的、黄的杜鹃花。其中黄色杜鹃花中含有四环二类毒素，中毒后会引起呕吐，呼吸困难，四脚麻木等症状。\r\n\r\n2、万年青：能导致皮肤瘙痒。虽然观赏价值较高。其叶色先绿后红，但有毒，尤以果实毒性大。\r\n\r\n3、夹竹桃：该花花朵鲜艳，极易栽培。但其叶、皮、花果中，均含有一种叫竹桃菌的剧毒物质，若接触过多容易诱发呼吸道、消化繫统的病症。\r\n\r\n4、含羞草：之所以一触即“羞”，是由于其体内含有一种含羞草碱，这是一种毒性很强的有机物，人体过分接触，会使人头发脱落或引起周身不适。\r\n\r\n5、水仙花：不可误食。水仙花虽然具有较高药用和观赏价值。但其花中含有一种叫“拉可丁”的有毒物质，人畜万一误食，能引起呕吐、腹泻等症状。\r\n\r\n6、夜来香：忌放室内。该花香味在夜间十分浓厚，有人以此来驱赶室内的蚊子，但是该香味中含有的有害物质同样对人不利，尤其是高血压和心葬病患者闻后会产生憋闷难受感觉，从而促发该病复发。因此，在其盛开时，不宜放在卧室内。\r\n\r\n7、此外，像马蹄莲、鼕珊瑚、龟背竹、一品红、石蒜、百合花等，都含有不同的有毒物质。\r\n\r\n因此，观赏鲜花时务必弄清有关花卉的特性和毒副作用，不要随意触摸，以防毒素入口。少数过敏体质的人对一些花（如玫瑰）散发出来的气味十分敏感，从而产生过敏反应，这类也是野外生存者应该注意的问题。');
INSERT INTO `security` VALUES (18, '户外运动受伤后如何正确包扎', 'http://image1.8264.com/forum/201807/19/1334108x9geoal2r1wvoks.jpeg!t3w825h0', '运动包扎使用无弹性的纱布和有弹性的绷带对受伤的部位进行包扎的技术方法。包扎作为韧带、肌健、肌肉的辅助和固定，起着预防运动损伤再次发生的作用。即使已经受伤，通过包扎也可以减缓伤势。包扎即不是医治运动损伤的药物，也不是治疗运动损伤的方法，只是通过包扎可以减轻疼痛和受伤害的程度，减少受伤的机率。\r\n\r\n包扎是与美国的美式足球同步发展起来的，当时美式足球之外的运动项目，也使用其他的包扎方法。但由于在运动中错误的包扎方法所带来的危害，最终使是美式足球的运动包扎方法在各运动项目中得以推广。虽说再好的包扎也不能完全防止运动损伤的发生，但这对于运动员来说，已经非常重要。另外，即使包扎，方法上也有很大的区别，对受伤部位固定得过紧或过松，都有可能引起相反的效果。为此，应该正确地判断伤势和处置，正确地使用包扎方法要根据操作程度安排练习计划。\r\n\r\n包扎不是教条的搬用，要因人而异，灵活运用。根据每一个运动员身体、训练情况、肌肉皮肤特点、心理承受、运动项目（例如：登山、攀岩、越野、马术、漂流……）。100名运动员会有100种包扎方法。这就是说，一名队医在绷带的使用上要适应于不同的运动员，要在理解包扎部位的解剖知识、运动项目的竞技特点、受伤状况的基础上，对受伤的运动员进行处置，不同的运动员、不同的情况，包扎的方法也不会相同。本书将对解剖学的运动损伤的基础知识、包扎方法以及简单的训练加以介绍。请读者一方面看书，一方面用心的进行绷带的实际操作。还要对基本的包扎方法进行组合，变化包扎的牵引方向，根据使用绷带的数量和种类，调节包扎的强度和限制动作的范围，并根据自己的判断动手对受伤者进行包扎。要成为运动包扎的好手，必须进行反复的练习。\r\n\r\n包扎的目的和效果\r\n\r\n1．外伤预防\r\n\r\n根据各运动项目的竞技特点和技术动作特点，确定容易引起损伤的部位，并对该部位进行包扎以加强其支撑力量，产生预防运动操作的效果。\r\n\r\n2．预防损伤的再发生\r\n\r\n因为受伤而疼痛的韧带、肌腱和肌肉，力量会相对减弱。通过包扎增强其支撑力量，减轻其运动时所承受的负担，有预防运动损伤再次发生的效果。\r\n\r\n3．应急处置\r\n\r\n轻度扭伤和拉伤等轻度损伤，受伤后立刻进行包扎做应急处置，可以固定受伤部位以限制其活动，压迫患部减轻肿胀，缓解伤势的恶化和疼痛。\r\n\r\n4．轻度外伤后的注意\r\n\r\n较轻的扭伤、肌肉拉伤等轻度受伤后，要注意不能像正常情况那样，继续增加受伤部位的负担，应该通过包扎以利于伤势的恢复。');
INSERT INTO `security` VALUES (19, '为什么我这么坚持骑行！看完本文你就明白了', 'http://image1.8264.com/forum/201806/13/0650039rzxkkbhzfkw12co.jpeg!t3w825h0', '每当去骑车，去感受那清风迎面的舒适感。\r\n骑车3公里的运动量，与慢跑1公里相同。但是慢跑少了骑行的快感，并且膝盖、脚踝等关节处容易有运动伤害发生，骑车则多了清风扑面的凉爽感，比慢跑还舒服！\r\n练到后面，体力与耐力的悄然增加。\r\n每天骑10公里，和每天举重一小时的人相比，他们的体力及耐力一定是骑车的骑士更胜一筹。\r\n腿部肌肉很发达，老了爬几层楼也不腿疼腰疼\r\n时速15-20公里/小时行车，可以增进腿部肌肉发达，又能够消除多余的皮下脂肪，不会因为锻炼过度而造成小腿过粗。这点对女骑士而言，优势显著。\r\n我的心肺是健康的\r\n能提高心肺功能，锻炼下肢肌力和增强全身耐力。骑自行车运动对内脏器官的耐力锻炼效果与游泳和跑步相同。\r\n骑行不仅使下肢髋、膝、踝3对关节和26对肌肉受益，而且还可使颈、背、臂、腹、腰、腹股沟、臀部等处的肌肉。关节、韧带也得到相应的锻炼。\r\n肌肉锻炼，骑车更速度\r\n如果志在锻炼的骑友，要让心跳有170bpm（时速约28公里/小时以上）的行车速度或爬长坡，才能达到锻炼肌肉的效果。\r\n不过，夜骑的骑友需要注意的是，夜间能见度不佳，一定要选择在有路灯照明及优良的路段骑车。\r\n心情不爽去骑车，总能排忧解闷\r\n骑自行车，接触户外生活，享受清新自然的洗礼。脑中会分泌出可解除忧郁的内吗啡，让人心情愉悦，解除精神上的忧郁，消除体内的闷气，拥有更健康的品质生活。');
INSERT INTO `security` VALUES (20, '你最关心的关于健身车/动感单车的20个问题都在这了！', 'http://image1.8264.com/wen/public/20180806/153354314054.jpg!t3w825h0', '健身车/动感单车在健身房是常见的健身器材，很多健身新手都喜欢尝试，但大家在骑健身车/动感单车时找对balance了嘛？今天这些问题一次解决你所有疑惑！\r\n\r\n1、骑健身车/动感单车小腿会不会粗？\r\n\r\n很多新手都担心骑车会让自己的小腿变粗，实际上骑行方式正确，骑一段时间后，小腿脂肪会减少，肌肉增加，小腿会变细。但脂肪消减后继续锻炼，就会加强肌肉，腿会慢慢变粗。所以骑行瘦腿，是先减脂，后变粗，一定要控制好每天骑行的运动量。\r\n\r\n2、骑健身车/动感单车能不能减小腹？\r\n\r\n骑健身车/动感单车的踩踏动作和站姿骑行对腹部肌肉有刺激作用，同时骑行时要求腹部收紧，就能锻炼腹部肌肉，燃烧腹部脂肪，从而减去肚子上的赘肉，再配合其他有氧运动就可以练出马甲线哟。\r\n\r\n3、骑健身车/动感单车减肥效果如何？\r\n\r\n绝对是快速燃脂的健身方式，骑行45分钟的话，全身80%的肌肉和关节都会同时参加运动，热量就高达400-500千卡，减脂减肥效果很理想了。当然如果你的体力支撑不了45分钟，也可以循序渐进的练习，坚持一段时间就会看到减肥效果。\r\n\r\n4、骑健身车/动感单车主要瘦哪部分？\r\n\r\n健身车/动感单车不是局部的瘦身，而是全身性燃烧脂肪，腿部、臀部、腰部、腹部减脂比较明显，你在骑行的时候，一定有感受到全身都在发热，那就是在燃脂啦。\r\n5、骑健身车/动感单车会伤膝盖吗？\r\n\r\n看到很多骑行爱好者抱怨，自己骑健身车/动感单车导致膝盖受伤。实际上这是因为骑行方式不正确才出现的问题。所以你骑行的时候，不要身体左右摆动，不要上下跳跃幅度过大，也不要骑行速度太快，这些都是伤害膝盖的元凶“动作”。\r\n\r\n6、骑健身车/动感单车需要做热身运动吗\r\n\r\n做任何运动之前都要做下热身的，健身车/动感单车自然也不例外，骑行前可以压一下腿，做下腿部伸展、膝关节环绕等动作，动作强度不用太难，能让身体兴奋起来就好，这样在后面骑行才不会出现问题。\r\n\r\n7、什么样的人不能骑健身车/动感单车？\r\n\r\n最重要的一个就是膝盖有伤的人不能用健身车/动感单车健身，本身骑行就对膝盖伤害很大，膝盖有伤还要骑行，只会伤上加伤，这个可是不能逞强的。心脏病和高血压患者也最好不要参与健身车/动感单车，以免在高强度训练中发生危险。\r\n\r\n8、健身车/动感单车天天骑可以吗？\r\n\r\n骑健身车/动感单车对全身染指都有好处，就是长时间骑行会对膝关节软骨有一定的磨损，你看专业自行车运动员几乎都有膝盖问题，但只是骑行健身还是可以天天骑的，尽量不要骑行太长时间。建议新手先给自己一段适应期，并多做一些深蹲来强化膝关节周围的肌肉，就不会有太大问题了。\r\n\r\n9、健身车/动感单车会有噪音吗，会不会吵\r\n\r\n这就是要看你使用的健身车/动感单车了，一些质量比较差的健身车/动感单车会和地产生摩擦，就会产生噪音，声音虽然不大，但是会让运动的心情变差。所以是否有噪音也是检验健身车好坏的标准之一。\r\n\r\n10、骑完健身车/动感单车后，如何拉伸\r\n\r\n热身运动重要，骑行后的腿部放松也同样重要，否则你的腿会酸胀疼痛，最后变粗，变粗，变粗，这是重点啊，所以一定要拉伸。可以做“下肢拉伸”运动，网络上有相关教程，可以跟着学习，让腿部放松。\r\n\r\n11、饭后能骑健身车/动感单车吗\r\n\r\n肯定是不可以的，饭后急忙运动会造成胃下垂等问题，可以先休息一下，大概30-45分钟后再进行运动。\r\n\r\n12、骑健身车/动感单车听什么音乐比较好\r\n\r\n运动+音乐是很好的cp，热身和运动后的拉伸运动可以听一些慢一点的音乐，热身后的骑行可以听节奏快一点或者轻松一点的音乐，至于具体的音乐，就看你们的喜好了。\r\n\r\n13、女性月经期间可以骑健身车/动感单车吗\r\n\r\n不只是骑健身车/动感单车，女性月经期间尽量不要剧烈运动，可能会造成月经紊乱等问题。但简单的舒缓运动还是可以的。\r\n\r\n14、健身车/动感单车对男性健康有影响吗\r\n\r\n长时间骑行会对男性的前列腺不太好，当然这是在长时间骑行并运动姿势不对的情况下，正常骑行是没有问题的。\r\n\r\n15、骑健身车/动感单车每天骑多久比较合适\r\n\r\n作为新手，建议每天骑行时间不要太长，而是根据身体情况不断增加运动量，等适应后可以保持在一定时间，如果想减肥每天要骑行30-45min，这样才能做到燃脂。\r\n\r\n16、骑健身车/动感单车时，速度保持多少比较好\r\n\r\n每次骑行之前要有10分钟左右的低速热身，使身体微微出汗即可。正式骑行时，普通人每分钟的蹬踏频率在60至80次左右，也可以自己掌握速度，或者借助智能健身车的帮助，像KM1930智能车会提醒骑行者不要超速。但无论哪种方式，千万记得不要为了速度而骑得太快，对心肺和膝盖都不好。\r\n\r\n17、是跑步减肥效果好，还是骑健身车/动感单车？\r\n\r\n只要坚持运动都能减肥，就看能否坚持。对于新人来说，跑步不容易跑太长时间，容易枯燥；而骑健身车/动感单车相对坚持一下，比较适合减肥意志力比较低的人。\r\n\r\n18、骑健身车/动感单车怎么监测心率\r\n\r\n对于骑行爱好者来说，监测心率等运动数据是非常重要的，它能够非常灵敏的反映体内代谢情况，在骑行时心率是不能超过自己最大心率的50%-60%。普通的健身车/动感单车自身肯定是不能监测心率的，但是可以使用一些辅助的仪器，比如心率监测智能手环；或者直接选择智能健身车，这样的健身车不仅可以监测心率数据，还可以监测呼吸率、热量消耗等数据，监测更加全面。比如KM1930实景智能健身车在这方面做的就不错，能实时监测数据，而且通过采集和分析这些数据，可以生成含有心率区间、呼吸数据等数据的可视化报表，提供个性化运动方案，让骑行者指导在训练中知道如何调整自己的状态。\r\n\r\n19、购买什么样的健身车/动感单车比较好\r\n\r\n如果要求不是特别高，只是想简单骑车，买普通的健身车就可以，但如果想认真锻炼，最好还是买好些的健身车。现在智能健身车已经成为趋势，在健身馆、企业健身房等都可以看到它们的身影了，主要是这类健身车可以根据健身者的情况进行调整，更加科学。\r\n\r\n20、什么品牌的健身车/动感单车比较好\r\n\r\n刚刚提到智能健身车已经是种趋势，很多品牌都有推出自家的智能车，比如Peloton Cycle，Zwift，KM1930智能健身车等等。其中KM1930的功能更多样些，有多人互联的社交体验，邀请异地好友一同骑行锻炼；有数据管理，可以提供运动数据和运动方案；有模拟户外实景路线，一共六个主题路线，并有智能阻力调节功能，可以体验户外骑行的感受。一辆车有多种体验，骑行也不枯燥。\r\n\r\n所以骑健身车/动感单车并不难，用正确的姿势，把控好节奏，就不会出现问题，你一定会爱上这项运动，还会拥有健康的身体！');
INSERT INTO `security` VALUES (21, '骑行呼吸大法 到底该用嘴还是用鼻子呼吸？', 'http://img.qibuluo.com/2017/0913/20170913083503437.jpg', '在骑行时，有这样一个问题困扰着不少骑友：有时候就算不累也气喘吁吁、脚使不上劲儿，这到底是为什么呢？其实，这往往是你的呼吸方式不对造成的。那正确的呼吸方式是怎样的？特别是现在正值冬季，到底是该用嘴呼吸还是用鼻子呼吸？\r\n\r\n一般情况下，上述提及的状况通常是因为呼吸供氧量不足而导致肌肉的耗氧量不能及时就补充而造成的。而至于到底该用嘴呼吸还是用鼻子呼吸，这需要具体情况具体分析。以下将分为三个方面来说一说：\r\n\r\n1.骑行前：鼻吸口呼\r\n\r\n在出发之前，首先要通过鼻吸口呼的方式调整呼吸，以使身体提前适应运动节奏。\r\n\r\n方法解析：先闭上嘴用鼻子深深地、慢慢地吸气，直到不能再吸气为止，再张开嘴将气慢慢吐出，吐完之后，闭上嘴接着用鼻子深深地吸气......如此连续重复9次上述操作。做完之后，用鼻子自然呼吸几次就可以出发了。\r\n\r\n2.平路骑行：腹式呼吸\r\n\r\n开始骑行时，身体的耗氧量会增大，采用腹式呼吸能吸入更多空气，从而提高吸氧量。\r\n\r\n方法解析：闭上嘴，将舌头上卷顶住上颚，以免空气过多停留在口腔。然后用鼻子深吸气，此时明显感觉到腹部在往里收缩；呼气时应尽量把气都吐出来，此时的腹部应该是往外突出的。一开始不习惯也没关系，有意识地去练习就会慢慢习惯了。\r\n\r\n3.爬坡时：急吸快吐\r\n\r\n相比平路骑行，爬坡时需要耗费更多体力，因此也需要更多氧气来为肌肉供能。此时，虽然腹式呼吸的吸氧量大，然而这样比较缓慢的呼吸节奏是无法满足需求的，这时候就要转换呼吸方式了。\r\n\r\n方法解析：刚开始上坡时，可以采用出发之前时那种鼻吸口呼的方式；注意一定要慢慢地吸气呼气。当你发现呼吸越来越急促的时候，就要加快呼吸节奏——闭上嘴巴，用鼻子快速吸气，再用嘴快速吐气。如果呼吸越来越急促，不妨停下来推车，调整呼吸。\r\n\r\n注意，这个过程中，不论是在骑行还是下来推车，一定不要用嘴吸气，否则会影响身体健康。一方面，因为用嘴吸气虽然吸氧量比较大，但是这样很容易就会吸进虫子等污物，并且吸入冷空气往往会引起咳嗽，甚至腹泻等，非常影响骑行体验。另一方面，鼻子本身就具备过滤空气的能力，同时，空气通过鼻腔之后，会变得温暖潮湿。相比之下，用鼻子吸气对身体更有利。');
INSERT INTO `security` VALUES (22, '\r\n夜骑注意事项 妹子告诉你夜骑山地车要注意什么', 'http://img.qibuluo.com/2017/0913/20170913083444749.jpg', '很多骑行爱好者喜欢夜骑自行车，白天忙得团团转没有时间，夜骑自行车路上车少，气温较为凉爽，悠闲骑车的骑起来也较为畅快，选择夜骑肯定也会有一些疑问单车夜骑好吗？来看看骑部落总结的夜骑自行车大好处吧，或许你就喜欢上了夜骑单车。\r\n\r\n骑友总结的夜骑自行车7大好处\r\n\r\n1、骑自行车强身健体\r\n\r\n骑行是一种有氧运动，不但可以减肥，还可使身材变得更加匀称。骑行可以强化心脏功能，能加速血液循环，增强肺活量。\r\n\r\n2、夜骑自行车能欣赏美丽夜景\r\n\r\n灯光亮起，夜幕降临的城市开始放慢它的速度，显现出它的媚态来，虽然中国的大城市的风光都默契地出现局部雷同，不可否认的是每个人所在的城市仍然有着独特之处，这番美景，当然是骑车去寻觅。\r\n\r\n骑友总结的夜骑自行车7大好处\r\n\r\n3、夜骑自行车人少，马路不堵车\r\n\r\n夜间的马路车手人少，尾气少了，空气要比白天加几个优，正适合自行车出行，四下空旷，你会发现两轮要比四轮来得爽快多了，人人开车，唯我骑车。\r\n\r\n骑友总结的夜骑自行车7大好处\r\n\r\n4、夜骑自行车能体会到自由自在的飞驰感\r\n\r\n骑自行车的人很难不为拂面的风所倾倒，自行车上的自由感令人久久回味，夜骑尤其如此，车少人少，你还可以加速起来，尽享高度飞驰的畅快。\r\n\r\n骑友总结的夜骑自行车7大好处\r\n\r\n5、夜骑能够释放压力\r\n\r\n城市人白天工作繁重，只有夜间才是属于自己的时光。夜骑有助于骑行者从白天的紧张情绪中释放出来，在轻松的运动中找到生活的平衡，释放压力。\r\n\r\n6、和亲爱的他（她）享受二人世界\r\n\r\n白天各自忙碌事业的小情侣夜间一起骑车享受二人世界，也是一件不错的事情，最浪漫的事，就是和你一起慢慢变瘦，在这个号召减肥的时代也颇跟得上潮流。一边慢慢骑车，一边谈谈心事。\r\n\r\n骑友总结的夜骑自行车7大好处\r\n\r\n7、夜骑者抱团相聚\r\n\r\n不少夜骑者会组成一个骑行团队穿街走巷，独乐乐有时不如众乐乐，一群人出游既可在路上相互照应，也可互相切磋一下技艺，而且还不时能出现一些搞怪的闹剧，如果你带上相机，随时可抓拍到种种表情，时刻诞生表情帝。\r\n\r\n夜骑如此精彩，心动吗？赶快带上你的自行车和骑部落一起行动吧！');
INSERT INTO `security` VALUES (23, '55条户外摄影金句，学会你就是高手了', 'http://image1.8264.com/forum/201808/31/0525526ly1flq9gg00kijt.jpg!t3w825h0', '走过很多路，见过很多人，拍过很多片，一些户外摄影方面的经验与感悟，与大家分享。\r\n户外摄影师，我的理解是首重户外。\r\n在户外活动中，限于各种条件的限制，每次拍片都是匆忙间按下快门，没有更多的时间去等待与构思，所以更多的是以记录为主。\r\n户外因摄影而流传，摄影因户外更精彩。 \r\n1.心未动，身先动。\r\n大部分户外线路，都需要体力的支撑，户外摄影师会比队友更累，良好的体能才能确保你的出片，所以平常多运动呀。\r\n\r\n这张片在8264户外摄影论坛小有名气，当我拍完后，图中最后一名队友两个半小时以后才爬上来。\r\n\r\n▽ 狼塔天路\r\n\r\n\r\n\r\n\r\n2.器材很重要，但它不是全部。\r\n再好的相机，也不一定就能拍出好片。\r\n\r\n我一直认为器材，合适就行，需要综合考虑经济实力、用途、场景。\r\n\r\n旅行镜头，推荐变焦镜头，一镜走天下就好，条件允许的话，再加个长焦吧。\r\n\r\n这张片是我用了多年的尼康D7000拍摄，于武功山。\r\n\r\n▽ 云端营地\r\n\r\n\r\n\r\n\r\n3.不要轻易去动别人的相机，不要轻易去看别人的照片。\r\n摄影师都非常看重自己的相机，在出片之前，也不太愿意将未经筛选的原片呈现出来，除非别人主动给你看。\r\n\r\n这跟女神也有灰暗的一面并且不愿展现道理是一样的:）\r\n\r\n▽ 穿越乌孙古道\r\n\r\n\r\n\r\n\r\n4.用RAW格式拍摄。\r\n\r\nRAW格式是相机的传感器在曝光时记录的未修改的数据汇编，是照片的原始数码源。\r\n\r\n当你用JPEG格式拍摄时，似乎看起来和使用RAW格式没什么不同，但你进行图像编辑时，你就会发现用JPEG格式拍摄的图像缺失了很多数据。\r\n\r\nRAW文件还有一个好处就是，待你后期水平提高后，可以对RAW文件再次调片。\r\n\r\n▽ 划桨入秘境\r\n\r\n\r\n\r\n\r\n5.基本的photoshop后期技能也是必需的。\r\n不要再强调我是jpg格式直出，是原图，没有p过的。你的语气越骄傲，越发证明你不懂。一张照片，本身就是前期与后期的综合体。这张照片如果没有后期处理jpg直出的话，由于光比太强，效果就会大打折扣。\r\n▽ 行走天地间\r\n\r\n\r\n\r\n\r\n6.户外摄影，随遇而安，不要害怕坏天气。\r\n每一种天气都有它独特的魅力，别沮丧，用心去拍。云海总在风雨后、星空常在暴晒天、多云会有好光影......这是电闪雷鸣暴雨后出现的彩虹，撑伞摄于武功山。\r\n▽ 雨后见彩虹\r\n\r\n\r\n\r\n\r\n7.户外风光摄影，建议用人衬景，点亮画面。\r\n当然，既然是衬托景，那就只能是小小的人儿，否则就不是户外风光片了。这张图如果没有抓住同伴的背影，无疑就缺了点睛，少了灵动。\r\n▽ 红星海子\r\n\r\n\r\n\r\n\r\n8.低角度拍摄，经常有惊喜。\r\n无人机的上帝角度固然恢宏大气，但是实在受限，只有蹲下来比较方便，而且往往有意想不到的效果。这是我在徒步行进时，蹲下来将相机贴近地面拍的片。\r\n▽ 戈壁滩上鲜花香\r\n\r\n\r\n\r\n\r\n9.抓拍永远比摆拍更有趣，户外摄影，随时保持你的相机处于待机状态。\r\n这是抓拍黄小然过河的场景，岸上队友的表情亮了。\r\n▽ 冰河水花\r\n\r\n\r\n\r\n\r\n10.户外摄影，尝试找到自然光，那是最好的礼物。\r\n阳光洒在她的脸上，有桂花般的香。');
INSERT INTO `security` VALUES (24, '学会救护！游泳呛水了怎么办？把水吞下呼吸', 'http://image1.8264.com/portal/201706/21/0259039u6chpeocmlxdyjh.jpg!w227h157', '夏天来了，游泳成为暑期许多孩子的选择，在没有家长的陪伴下，游泳伴随安全意外。学习掌握一些游泳自救急救小技巧，对自己和家人的生命负责。\r\n\r\n有人溺水怎么救？\r\n\r\n专家:呼叫救生员，借用延伸物，切不可拉手救人\r\n\r\n厦门红十字会救护培训中心培训老师郭志辉告诉记者，掌握急救知识的同时，最重要的是安全防范的教育。他列出以下游泳时常见安全隐患供大家参考。\r\n\r\n“有人溺水怎么办?”\r\n\r\n赶紧呼叫救生员或大人帮忙，再呼叫110寻求帮助，借助身边可用的漂浮物、延伸物，通过抛过去、伸过去帮助溺水者，切不可手拉手救人。\r\n\r\n呛水了该怎么办呢？\r\n\r\n应该把水吞进去，只有吞进去才能机会进行第二次呼吸。\r\n\r\n遇到抽筋了该怎么办？\r\n\r\n立即呼叫、举手求救；抓住泳道线，抱住救生浮标；反向拉伸抽筋部位。\r\n\r\n意外落水时衣服要不要脱掉？\r\n\r\n不要脱掉，防止热能散失，也可以增加浮力。鞋子和牛仔裤可以脱掉。\r\n\r\n看到有人落水了要不要救？\r\n\r\n一定要救，但是不能贸然下水施救。应该赶紧呼叫救生员或大人帮忙，再呼叫110寻求帮助，借助身边可用的漂浮物、延伸物，通过抛过去、伸过去帮助溺水者，切不可手拉手救人。\r\n\r\n溺水导致窒息怎么办？\r\n\r\n专家:第一时间供氧，5次人工呼吸加胸外按压30次\r\n\r\n由于溺水是因窒息缺氧性导致心脏骤停，因此立即供氧是首要目标。溺水者复苏，人工呼吸很关键。如果被救上岸的溺水者已昏迷（无呼吸有脉搏），此时需要马上抬起他（她）的下巴，清理口腔异物开放气道、准备做口对口的人工呼吸。\r\n\r\n据新英格兰医学杂志介绍，关于溺水的循证医学推荐先进行5次人工呼吸，再进行胸外按压30次，随后2次人工呼吸，继之30次胸外按压。目的就是为了在第一时间提供给患者充足的氧合。\r\n\r\n以前溺水急救类似腹部冲击、倒挂、倒背着跑等控水法，都是误区。其实控水法基本控出的是胃内容和胃内水，反而增加了误吸风险。肺内的水很难控出来，却拖延复苏抢救时间。因此，对于溺水心脏骤停者，控水法是无用有害的，甚至增加死亡率。');
INSERT INTO `security` VALUES (25, '如何在刮风天气中骑行', 'http://image1.8264.com/portal/201701/13/134730dhyyyyh1ydpqep2q.jpg!w227h157', '对单车手来说，刮风是不是比下雨还要糟呢?很难说，但唯一能确定的是，这两种状况让人很不好受。逆风而行注定会让车速大幅减慢，这对单车手来说，一定是很难接受的!\r\n\r\n那该怎么办呢?虽然我们无法完全避免风的影响—除非我们决定坐在家裡看电视—但还是有办法能把影响减到最低。下面就让我们来看看几个重要的影响因素和解决的撇步吧!\r\n\r\n牵引气流(slipstream)效应\r\n\r\n牵引气流俗称「弹弓效应」。意思是说，当物体在空气中移动时，物体后方会产生ㄧ股气流。如果骑车时在某位车手的正后方，因弹弓效应产生的牵引气流会带出ㄧ股拉力，可以节省高达30%的踩踏动能。\r\n\r\n如果想完全利用弹弓效应，必须要相当靠近前方单车的后轮，可能得花点时间练习ㄧ下，但这是打败风阻的最好方式。\r\n\r\n避免重档位\r\n\r\n一般车手有个很奇怪的现象，就是面对强风时很喜欢用重档位，可是其实节省能量最好的方法，就是将逆风的平路当作坡段来骑。\r\n\r\n高转速的低档位会让你踩踏时更有效率。当然，用重齿比硬吃或许很帅气，但是可能会骑到晚上10点才回家!\r\n\r\n预测风向\r\n\r\n预测风向，说的比做的容易。正确的预测风向需要经验及对自然地形的了解。如果赛段以平路为主，预测风向的能力更显重要。如果此时风迎头吹来，前方刚好有个右弯，逆风将转为侧风，这时候必须将自己的位置调整在其他车手的内侧，才能不受风的影响。\r\n\r\n单骑突围时，预测风向的能力也很重要。在毫无防备下，突然吹起ㄧ阵强风可是会让人重心不稳，甚至摔车。\r\n\r\n别太依赖自然物体\r\n\r\n所谓的自然物体，指的是在路中或路旁可以挡风的物体。例如，前方有ㄧ辆停在路旁的车，想利用车体躲避阵风。此时，请确定车门不会突然打开，免得跟下车的驾驶撞个正着。\r\n\r\n同时，请注意，不要因为想骑在树荫下，而太靠近路边。路边通常是最脏乱的区域，所以越容易造成爆胎。\r\n\r\n最后，请注意房屋或商店间的小巷。从建筑物间流过的风，就如同山谷间的风ㄧ样，通常特别强劲，必须特别小心。\r\n\r\n顺风是回家最快的路\r\n\r\n出门时遇到逆风可能会觉得很呕，但只要路线规画得宜，又能预测风向，这也代表回家时ㄧ路都会是顺风!能在平地顺风骑车，会产生无比的自信，很少有比这更令人愉悦的事情了!，说不定还会想像，大概只要ㄧ年的时间自己就能成为职业车手了!');
INSERT INTO `security` VALUES (26, '牛奶对骑行者有什么好处', 'http://image1.8264.com/portal/201609/30/1623035mwnvlwnkvvgjw5z.jpg!w227h157', '当心脏外科医生Shyam Kolvekar在2012年提出黄油和全脂牛奶造成英国青少年的动脉阻塞，每年有3500多人丧命。这个说法被错误（简单粗暴）地理解为牛奶是有害的。\r\n\r\n他真正要表达的是我们应该转而摄入低脂的食物如人造黄油或脱脂牛奶。这个观点被后来的研究证实，脱脂牛奶仍然是骑行时的最佳饮品。\r\n\r\n“我们的研究旨在研究牛奶对运动员的潜在功能，主要关注耐力水平以及紧张训练后的恢复。”拉夫堡大学的运动营养学家Phil Watson教授解释道。\r\n\r\n“最引人瞩目的结果是训练过后喝牛奶有助高效补充身体流失的水分，快速补充训练过程中消耗的糖分，补充人体所需的碳水化合物。”\r\n\r\n运动后补充碳水化合物是非常重要的，理想的情况是同时补充蛋白质帮助肌肉修复。牛奶富含这两类物质，因此它是骑行过后的绝佳饮品。\r\n\r\n全脂及脱脂牛奶均含有电解质和矿物质，一般而言，脱脂牛奶更为可口解渴。而且全脂牛奶中的脂肪可能导致不太舒适的饱腹感（患有乳糖不耐症的人感觉更难受）。\r\n\r\n“食物能量越高，胃部消化越久。因此脱脂牛奶不像全脂奶那样容易引起胃肠道不适或腹胀。”Watson医生表示。\r\n\r\nStuart Phillips，加拿大麦克马斯特大学运动代谢研究组的研究员，同样就运动过后牛奶的吸收进行研究。他在研究中发现，运动过后喝牛奶补充水分的效率比喝一般的运动饮料高8%。\r\n\r\n“牛奶中的蛋白质似乎更适合肌肉修复。乳清和酪蛋白中的氨基酸与肌肉蛋白相似。它同样含有我们人体所需的矿物质。”\r\n\r\n牛奶中含有什么？\r\n\r\n100ML的脱脂牛奶\r\n\r\n35卡路里 热量：计量单位为卡路里，是实现运动重要的成分。\r\n1.7g 蛋白质：加强机体修复肌肉\r\n4.5g 碳水化合物：骑行所需的能量，碳水化合物可转化为糖原存储在肝脏和肌肉中。\r\n0.3g 脂肪：提供维生素和必需脂肪酸，过量会引起肥胖。\r\n核黄素：促使皮肤、指甲、毛发的正常生长，增进视力，减轻眼睛的疲劳，同时也有助于类固醇和红血细胞的产生。\r\n维生素B12：以辅酶的形式存在，可以增加叶酸的利用率，促进碳水化合物、脂肪和蛋白质的代谢，促进红血细胞生成，维护神经系统健康。\r\n维生素C：组织生长和修复所需\r\n钙：减少体内脂肪的积累\r\n\r\n是不是所有的奶都能喝？\r\n\r\n实在抱歉，如果你是乳糖不耐症患者，平常的牛奶并不适合你，而你喝的豆奶可能并没有那么好。\r\n\r\n“豆奶是难以与牛奶比拟的，因为所含的蛋白质就完全不同，其他营养物质也是简单混合而成。我们的研究结果显示，大豆蛋白不如牛奶中所含的蛋白那样促进肌肉增生以及肌肉蛋白的合成。”麦克马斯特大学的Stuart Phillips如是说。\r\n\r\n巧克力奶\r\n\r\n但如果你只是不喜欢某种口味的牛奶，那倒是小事一桩。据2013年的一项研究表明，巧克力口味的牛奶可能更适合。该项研究的数据来自13个大学的足球爱好者，数据显示，喝巧克力牛奶的运动员体内的肌酸激酶含量更低，肌酸激酶是肌肉分解的标识。');
INSERT INTO `security` VALUES (27, '山野医学：失温，一种容易被“救”死的病', 'http://5b0988e595225.cdn.sohucs.com/images/20171205/bcd1d90ac61d414da9848466aff3582f.jpeg', '失温，也叫低体温症，但并不意味着只有在寒冷气候才会出现，事实上在低于20℃时，失温就开始威胁着徒步者了，根据北美的事故报告，在0至10摄氏度是失温症的高发区间。\r\n\r\n在户外，湿气和风是最大的杀手。在冰点以上，我们容易被环境温度所麻痹，有些人不自觉的就让自己走的大汗淋漓，这时湿掉的内衣增加了身体热量传导速度，是干内衣的5倍之快。除此之外，风寒效应、湿度都会加剧体温的散失，这些资料许多户外知识的文章里都有详细介绍，本文就不再啰嗦。\r\n\r\n在本文中，我主要说一下几个容易被忽视的细节，以及几个致命错误。\r\n\r\n在此之前，先列一下失温的各个阶段和表现。\r\n\r\n一级，轻度失温：33-37°C\r\n\r\n颤抖、心律升高、排尿变多、呼吸频次升高、肌肉不协调、蹒跚、行为异常。\r\n\r\n二级，中度失温：29-33°C\r\n\r\n恍惚、颤抖减少甚至消失、虚弱、思维麻木、智商降低、口齿不清、记忆障碍、视觉障碍、心律不齐、瞳孔放大。\r\n\r\n三级，严重失温：22-29°C\r\n\r\n昏迷、神经反射消失（对疼痛没有反应）、呼吸频率和心律极低、低血压、可能出现心室纤颤、患者无法自主调节体温。\r\n\r\n四级，致命阶段：低于22°C\r\n\r\n肌肉僵硬，很少能觉察到心跳或者呼吸、很容易出现心室纤颤然后真正死亡。\r\n\r\n关于对失温的判断\r\n\r\n对于失温的判断看似很复杂，很多文章中会讲利用走直线法观察，有些还要问算术题。。。其实，对于失温的判断很简单，只要是在寒冷环境中，出现行为和言语异常的队员，应立即怀疑其已经得失温症，例如许多2级失温患者希望自己在后面慢慢走，他们最经常说的一句话是：“你们先走，我慢慢追你们。”这就像是一个刚失恋的人告诉你“我很好”一样，千万别当真。“我很好，不用管我”\r\n\r\n还能动的失温患者，说明在1级或者2级失温，应立即寻找庇护所、避风处、休息、换掉湿衣服、增加保暖、进食碳水化合物，如有条件最好生一堆火。不要剧烈活动，防止四肢冰冷血液回流进一步降低核心体温。\r\n\r\n如果已经失去自我行动能力，意味着进入了3级失温状态，那么首先要替换掉湿衣服，将患者用隔热层包裹起来，用布包住热水瓶对患者腋窝、腹股沟、脖子进行回温，然后立即将患者向医院转运，在此期间其他队员应当制作一个简易担架，如果患者呼吸低于6次每分钟，要用口对口人工呼吸给提升至12-13次每分钟，如果出现心博骤停，应立即采取CPR（心肺复苏术）。CPR一定要去专门学习，只看书往往是不够的，不正规的手法容易把人“按死”。\r\n\r\n记住，一定要在早期控制失温，永远不要让你的队员独自面对失温，哪怕是1级失温！');
INSERT INTO `security` VALUES (28, '野外求生漫谈之十八——野外求生与野菜', 'http://image1.8264.com/forum/201803/22/102220uaiwd1qq15yahu6y.JPG!t3w825h0', '野外求生本身是一门维持生命的艺术（严格来说应该是技能），食物当然是其中核心的要素之一。不管是国内还是国外，不管是书本还是节目，总有介绍到各种各样的食物以及五花八门的烹饪方法。问题是怎么获得这些食物，那可就另当别论了。对于普通的求生者来说，想要在野外弄到点像样的猎物，还是相当的有难度的。当然抓只蝗虫、蚯蚓什么的就不要算了，即使抓到了你也不见得能咽下去，所以至少得是条鱼吧。就算是鱼也还是问题的，我们之所以自称为文明人，就是放弃了先人这些茹毛饮血的生活方式，习惯了“食不厌精，脍不厌细”的我们，对于生吞活剥的饮食方式大多数人会反感（那种无法下咽的感觉），这里边还存在着许多致命病菌的危险，所以如果没有正经地学习如何打猎和处理猎物，那还是先别想着吃香的喝辣的，能找点野菜野果子充充饥，你就算是比较机灵的了。至于贝尔那一种吃的方式，坐在电视机前看看就好，当真你就输了。野菜和野果是在野外求生时比较容易获取的食物，也应该是我们寻找食物时主要的目标，原因很简单：\r\n一、\r\n\r\n植物可不会跑来跑去，也不会躲起来。这就意味着你不需要耗费大量的精力去寻找、等待、获取。二、生长在大自然里的植物，只要是可以食用的，就不会存在什么大的风险，吃点野菜和野果，对于正常的人来说只会获得营养和能量，不存在着寄生虫和病菌之类的问题。偶尔会有例外，有些人对一些植物会产生过敏性反应，但那也是极少数的特例，对一般身体健康的人来说是不会有问题的。三、如果你有过独自远行或探险的体验，或者曾经独自穿行在丛林荒野中，你也许就会有跟我一样的感觉：当走在一个陌生的远方，饥寒交迫，举步维艰的时候，你坐在路边，茫然四顾，来来往往都是漠然的人群，这时候如果你在路边看见一朵认识的野花，就算是最最普通的蒲公英，那种亲切的感觉也会油然而生，你会把它当作朋友，这不起眼的小花会让你感到温暖，会驱散你的孤独，会给你前行的力量！');
INSERT INTO `security` VALUES (29, '长途骑行如何保护你的膝盖', 'http://image1.8264.com/portal/201610/21/175821fx2pn4cz2enocnp4.jpg!x9m2', '在平常的骑行中，我们经常会因为错误的姿势或者较低的坐垫高度而对膝关节造成损伤，膝盖对于自行车爱好者来说至关重要，一副健康的膝盖会让你免受疼痛之苦，正确的骑行方法是不会损伤膝关节的，所以保持正确的踩踏姿势和调整好适合自己高度和角度的坐垫对保护膝盖很有帮助。\r\n\r\n\r\n\r\n首先，保护膝盖最重要的是“预防”：一般来说膝关节受伤大多都是因为软骨、半月板之类不容易再生的组织受损，这些组织不像肌肉那样可以快速恢复或生长，而如果想促进软骨或半月板的康复可以适当摄取Glucosamine Sulfate (氨基葡萄糖硫酸盐)，但是也不宜摄入过多。\r\n\r\n像软骨，半月板这样的组织在几年甚至更长的时间内都被认为是不可再生的，所以做一些针对性的肌肉锻炼对膝关节组织的康复和养护有一定的帮助。不过许多热爱骑行并经常背着硕大的行李包的人因为高强度的骑行、沉重的负荷以及错误的骑姿让自己的膝盖饱受折磨，而最终由此落下病根。那我们该如何在长途骑行中保护好我们脆弱的膝盖呢？接下来的四条忠告请各位仔细阅读。\r\n\r\n1、保持正确的骑姿\r\n\r\n如果用高踏频，每次蹬踏的时候膝盖的受力将会减轻，从而有效的保护膝关节。有的朋友自恃体力好，在爬坡时为了展现更快的速度，就使尽全力蹬车，但人的膝关节强度毕竟有限，长时间大强度的踩踏对膝关节造成损伤一点也不奇怪。所以，膝关节损害严重的一般都是那些体力较好的人。\r\n\r\n2、将坐垫调到合适的高度\r\n\r\n骑自行车时膝盖越弯曲，压力就越大。然而一般人为求安全感，骑车时把车座调的很低，为的是出现问题时可以用脚撑住地，但过低的骑姿直接造成了对膝盖的巨大的压力，可以这么说，如果总是保持这样的骑姿，膝关节很快就会出现问题。正确的坐垫高度是：你在骑车时，腿把踏板蹬到底后，你的腿几乎是蹬直的，但还有一点弯，便于回旋。\r\n\r\n3、踩踏时膝盖要在一个水平面上垂直运动\r\n\r\n膝盖的运动方式也不是像铰链一样单纯一个平面上的运动，而是在一定的活动范围内有轻微的转动，举例来说，骑车时你可以注意下你的膝盖骨，如果它是垂直的上下运动，而没有前后的晃动，那么膝盖所受的压力是极少的，但是如果你的膝盖骨是呈一个8字形或者S字形运动(从侧面看)，那么就有可能造成膝盖的受伤。\r\n\r\n4、多做腿部肌肉锻炼\r\n\r\n锻炼柔软有力的肌肉需要多做腿部肌肉锻炼，平时尽量减少膝盖的承受力。要预防膝关节的运动伤害，可以每周抽出三四天做伸展运动与重量训练，这能有效锻炼股四头肌(大腿前部)和股二头肌（大腿后部），如果大腿有力，膝盖也会更加强壮，也就不容易受伤了。\r\n\r\n有意识地加强对股四头肌和十字韧带的锻炼，增强股四头肌内侧及大腿肌肉力量(比方说负重深蹲)，结合采用肌肉伸展拉长，步行，马步或贴墙练习等方法，为髌骨在股骨槽内平稳运动铺好道路。\r\n\r\n肌肉就像橡皮筋一样，如果很有弹性，怎么拉都不会断；如果僵硬，可能一拉就断。而温度越高，肌肉会越软，就易被拉松，所以在骑车时要注意保暖，否则冷空气会让肌肉变得僵硬，从而容易造成伤害。在日常生活中我们可以用双手手指揉搓膝盖下边缘，促进“润滑液”对膝盖的养护。\r\n\r\n爬坡对于膝盖的负荷同样很大\r\n\r\n我们在骑车时一定要加倍防止这类问题的发生，如果一旦因为错误的骑行习惯或骑姿对膝盖造成永久性损伤，那我们就只能后悔莫及了，所以为了避免这类问题的出现，请谨记以上的四条忠告。');

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop`  (
  `sId` int(11) NOT NULL AUTO_INCREMENT,
  `mId` int(11) NOT NULL,
  `cNo` int(11) NOT NULL,
  `num` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`sId`) USING BTREE,
  INDEX `fk_shop_myInfo1_idx`(`mId`) USING BTREE,
  INDEX `fk_shop_bikeDetails1_idx`(`cNo`) USING BTREE,
  CONSTRAINT `fk_shop_bikeDetails1` FOREIGN KEY (`cNo`) REFERENCES `bikedetails` (`cno`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_shop_myInfo1` FOREIGN KEY (`mId`) REFERENCES `myinfo` (`mid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES (31, 2, 11, NULL);
INSERT INTO `shop` VALUES (32, 2, 11, NULL);
INSERT INTO `shop` VALUES (33, 2, 12, NULL);
INSERT INTO `shop` VALUES (34, 2, 12, NULL);
INSERT INTO `shop` VALUES (35, 2, 12, NULL);
INSERT INTO `shop` VALUES (36, 2, 13, NULL);
INSERT INTO `shop` VALUES (37, 2, 12, NULL);
INSERT INTO `shop` VALUES (38, 1, 11, NULL);
INSERT INTO `shop` VALUES (39, 2, 12, NULL);

-- ----------------------------
-- Table structure for strategy
-- ----------------------------
DROP TABLE IF EXISTS `strategy`;
CREATE TABLE `strategy`  (
  `sId` int(11) NOT NULL AUTO_INCREMENT,
  `sTitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sIntro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sTime` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sFrom` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sType` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `smCheck` int(11) NULL DEFAULT NULL,
  `smIntro` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `smImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of strategy
-- ----------------------------
INSERT INTO `strategy` VALUES (1, '青春无畏 无限美好 麦芒永不止步：香格里拉大环线骑行DAY7', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/tour/notes/2018-09-19/7df6a5bbd687c99d7e70ec3207a21c01.jpg', '不知不觉，麦芒香格里拉环线骑行挑战接近终章。骑行第七天，无畏青年们从“世界高城”理塘出发，正式偏离318国道，转向217省道，前进……\r', '2018-10-22 00:00:00.000000', '作者：KzMe', '路线', 3, '不知不觉，麦芒香格里拉环线骑行挑战接近终章。骑行第七天，无畏青年们从“世界高城”理塘出发，正式偏离318国道，转向217省道，前进“最后的香格里拉”稻城县。\r\n\r\n昨天在318国道上远远眺望巍峨的海子山和山脚下平静清澈的姊妹湖，无畏青年们就想走近感受真实的海子山，触摸到黑硬的岩石，感受时间带给大自然的沧桑巨变。今天的路线正好要翻过海子山腹地，无畏青年将在平均海拔4000米的高原挑战极限，坚持到底。海子山是世界上最大的古冰体遗迹，以“稻城古冰帽”著称于世。此时乌云密布，压抑着遍野荒山，压抑着每个人。连续爬坡4公里征服扎嘎神山之后，走向兔儿山、海子山，才发现山上竟然是如此的荒凉萧瑟。\r\n\r\n怪石嶙峋，山脚下的还被野草覆盖，山坡上的巨石则已裸露在昏暗的天空下。这里像是巨大的采石场，又像是干涸的海底世界，放眼望去，一望无际的乱石错落在每个角落，如同火星撞地球之后的末日世界，又仿佛来到了另外一个未知的星球。\r\n\r\n来到这里的每个人都会惊叹大自然的鬼斧神工，同时也情不自禁地好奇：这些散落在海子山的石头到底从哪里来的呢？生长在一洼又一洼海子湖畔石头夹缝的黄绿野草，在石缝里拼命地向上，要汲取养分，要艰难呼吸，要触摸阳光，要茁壮成长。这不就是“无畏生长”的麦芒精神吗？\r\n\r\n', 'http://c2.biketo.com/d/file/tour/notes/2018-09-19/14d5ed44e83e74b5b99fefa23d4e165f.jpg,http://c2.biketo.com/d/file/tour/notes/2018-09-15/1835a7dc6fa079929d33fac78bac00f6.jpg');
INSERT INTO `strategy` VALUES (2, '云上之巅，终遇雪山：香格里拉大环线骑行DAY6', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/tour/notes/2018-09-18/f8b9d2da23aa14040d7cbedabff40a2e.jpg', '我为什么要爬这么多的坡？为什么要去走那黑乎乎的隧道？为什么要在这里受这种苦？……最终爬升到海拔4014米的“世界高城”理塘。', '2018-10-23 00:00:00.000000', '作者：KzMe', '路线', 2, '川藏线上有无数条曲折的道路，巴塘到理塘的道路则是川藏线上蜿蜒曲折的典范，一路上高原托举着山脉，山脉避让着深谷，深谷畏惧着雪山，沿着金沙江峡谷反骑318，除了爬坡就是爬坡，让人回想起前天在滇藏线被爬坡支配的恐惧，而如今在318川藏南线无畏青年又一次被无尽的爬坡安排得明明白白。在波峰浪谷中穿行，穿越葱葱郁郁的原始森林，公路一直蜿蜒向上，一会儿被推上高高的峰顶，渐渐的，一会儿又滑向深深的峡谷，大山就像波涛一样涌向天际。\r\n\r\n脚下的踩踏越来越缓慢，呼吸也愈加急促。不断攀升的海拔，让今天的骑行愈加困难。比爬坡更艰难的，则是内心的恐惧。在长达3公里的超长隧道里骑行，没有距离感，没有方向感，什么也看不见，什么也听不见，只能追随着车前灯微小的光，小心翼翼地往前走。恐惧的魔鬼在黑暗的隧道无处不在，就像是一次令人恐惧的漫长心理素质考验，是接受神山审判前煎熬般的漫长等待。\r\n\r\n穿出隧道，耀眼的阳光则刺痛着每个人的眼球，稀薄的空气带来高强的紫外线辐射，一路的大风吹得人嘴唇干裂，脸色发白。串串已经喝了3瓶水了，可还是止不住干燥，摸一把脸，没想到才一会儿的功夫，太阳已经把脸皮晒到皲裂。\r\n\r\n看山要缘分，看神山更加需要运气，无畏青年此番骑行香格里拉环线，错过了白马雪山，错过了梅里十三峰，在最艰难的红拉山垭口依然没能见到神圣的雪山。“转山转水转佛塔，不为修来世，只为途中与你相见。”在无尽的爬坡之后，今天终于看到了海子山巍峨的雪顶。历经千辛万苦，终于见得神山真面目！', 'http://c2.biketo.com/d/file/tour/notes/2018-09-18/129fac7a575ee3ae54beefd2c2d86f82.jpg,http://c2.biketo.com/d/file/tour/notes/2018-09-15/aca472c771f1a2700929e3166ba9bd8b.jpg');
INSERT INTO `strategy` VALUES (3, '宁当有故事的青年，不过无趣的人生：麦芒来到香格里拉', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/tour/life/2018-09-13/dadaed5f1b3b493e2172e21e44636931.jpg', '九月，阳光正好秋意正浓，去香格里拉骑车吧，去朝圣。我们要不停地去探索，我们想知道这个世界的奥秘，我们想一辈子都不停下来。', '2018-09-21 00:00:00.000000', '作者：KzMe', '路线', 5, '永远做不完的工作，永无休止的加班，日复一日的三点一线……何时才能冲破城市的桎梏，抛开世俗的纷扰，找回年轻时的冲劲？是时候来一场说走就走的旅行了，路上或许有答案。\r\n\r\n挑选目的地并没有耗费过多时间，长久以来我们都渴望来一场“都市出走”，可以去山谷，可以去丛林，可以去川脊，可以去平原，可以去远离都市的一切地方。于是，我们一致相中香格里拉作为旅行的开端。\r\n\r\n九月，阳光正好秋意正浓，那就从这里开始吧，去朝圣。这次的骑行是巧合，却又是注定。\r\n\r\n我们一直想去这样一条路线，所以在华为麦芒7新机发布之际，看见主题“生而无畏，加速前行”，不由得眼睛放光，还有比香格里拉环线骑行挑战更适合这个主题的吗？\r\n\r\n这次，我们只想从心出发，不管有多么大的光环，是不是职业选手，不管获得过多大的成就，我们只想来一次纯粹的都市逃亡之旅。我们可以出发在朝霞下，可以出发在露水中，可以出发在雪山里，可以出发在风雨中；可我们不想拥挤在早高峰，不想沉睡在地铁里，不想再奔跑向最后一班晚班车。这是懦弱者的逃离吗？不，这是勇敢者的冒险。接下来新的每一天，都是一场重新出发。\r\n\r\n即将出发的，是有着相同的兴趣，而又个性迥异的四个年轻人。最有趣的是，他们都把自己定义为“无畏青年”，那好啊，那就启程吧，看看是不是办公室里的都市妄言，看看这场和自然的亲密博弈之中，谁才能笑到最后。', 'http://c2.biketo.com/d/file/tour/life/2018-09-13/c9db29124e784ed9449fd5ab6980cafd.jpg,http://c2.biketo.com/d/file/tour/life/2018-09-13/4033aaa4b8669777f2e642b7eb6622cd.jpg');
INSERT INTO `strategy` VALUES (4, '小明不死奇遇记：在人口密度最低的国家骑行（上）', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/tour/notes/2018-08-31/259a0fc8547486055f284803176e9049.jpg', '在世界上人口密度最小的国家——蒙古骑行会是种怎样的体验呢？	', '2018-10-18 00:00:00.000000', '作者：小明', '骑行课堂', 6, '关于蒙古\r\n\r\n如果没有任何指向性的说出“蒙古”这个专有名词的话，我想99%的人都会理解成“内蒙古”，而紧邻中国北部做为一个独立主权国家存在着的“蒙古”我们了解的好像并不是很多。由于平时接触到的相关信息较少，让这个如此之近的邻国（国境距北京仅600多公里）和我们走的越来越远。\r\n\r\n蒙古首都\r\n\r\n蒙古国土面积为150万平方公里，是世界第19大国家，但蒙古人口仅为300万人，更不可思议的是这300万人口中的45%都居住在首都乌兰巴托！北京仅仅一个城市就承载了七个蒙古国的总人口，所以蒙古当之无愧的成为了世界上人口密度最小的国家！而这100多万的乌兰巴托人中74%的又是青年，所以乌兰巴托还是世界上最年轻的城市之一。其他城市\r\n\r\n近年来乌兰巴托发展迅速，在成吉思汗广场附近的购物中心甚至出现了一线奢侈品品牌店，但人口基数少，其他城市的发展就十分缓慢了，如蒙古第二大城市额尔登特的人口就迅速降为了8万人。中国二手的市政设施在蒙古城市中十分常见，比如小区的公共游乐设施，甚至垃圾桶上都印着中文。', 'http://c2.biketo.com/d/file/tour/notes/2018-08-31/5ed089f35e6078d242ed38d0e32c3e11.jpg,http://c2.biketo.com/d/file/product/equipment/2018-10-14/39c839a5ac7ba5f23b73562c5e13221b.jpg');
INSERT INTO `strategy` VALUES (5, '摔车后如何处理伤口 简单4步不留疤', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/edge/health/2018-08-13/10bd69ce754b98cefb374d976c0da520.jpg', '简单4步，把伤口安排的明明白白！', '2018-10-21 00:00:00.000000', '作者：Molly Hurford(张天霁译)', '骑行课堂', 6, '俗话说，常在河边走，哪有不湿鞋。骑车时你总会尽你最大的努力来防止摔车事故的发生，但有时，事故实在是躲不开。在这种情况下，能否妥当地处理你摔车造成的擦伤，可能意味着要么快速地恢复，要么留下永久的疤痕。以下给大家带来广大骑友在摔伤后要遵循的四个关键步骤。\r\n\r\n1.正常清洗伤口\r\n\r\n亚伦·戈德堡(Aaron Goldberg)是一名曾在职业自行车车队做过队医的急救医师。戈德堡建议，在摔伤后的第一件事就是用清水来清洗伤口，用瓶装水或附近水源获取的水都可以。如果伤口实在太脏了，尽快使用Skintegrity Wound Cleaner或Shur-clens等清洁剂来清理（译者注：两者均为专业医用外伤清洁剂，用生理盐水冲洗也可以）。不要使用过氧化物，也不要太用力擦洗。“如果你都能肉眼看到脂肪液滴了，或者伤口显然已经很深很深了，那你可能需要缝针了，别犹豫，赶快去急诊室吧。”戈德堡说。2.及时包扎伤口\r\n\r\n对于轻微的擦伤，戈德堡建议抹上一层厚厚的抗生素软膏，比如新斯波林软膏（译者注：多粘菌素的一种，外伤常用药。在国内可以用百多邦代替），然后用不带粘性的敷料和一段纱布（他本人比较喜欢网状格子的纱布作为绷带）来固定住你选择的敷料。每天重新拆开然后换上新的布料来包扎，直到患处彻底痊愈。\r\n\r\n对于中等深度的伤口，戈德堡推荐在伤口中央处涂上一层薄薄的抗生素软膏，然后用Tegaderm（译者注：3M公司的一种透明伤口敷料）这样的敷料盖住，并用纱布覆盖以确保安全。这次你可以把绷带多固定上几天。当你更换敷料时，记得要轻轻地清洗一下伤口。\r\n\r\n对于较深的伤口，戈德堡说，只要直接在伤口上盖上一层完全密封的敷料绷带包扎，并尽可能地盖住伤口的边缘部位，然后用药物来固定住就可以了。敷料下面的药物会变成一种凝胶状的保护层，这一涂层可以保持一个星期左右。戈德堡说：“如果几天的时间里这块密封层漏了，一定要用纱布重新包扎好，以免药物流出弄脏衣服。”\r\n\r\n3.时刻关注你的愈合过程\r\n\r\n在你的伤口愈合的过程中，疼痛感应该一天比一天减弱才对。出现任何剧烈疼痛、肿胀发红或分泌异味物质都可能是感染的迹象。戈德堡认为：“这种情况下一定要去看医生，因为你可能需要使用一些抗生素并重新包扎好伤口。”\r\n\r\n4.别留下疤痕\r\n\r\n无论在什么情况下，只要你弄伤了你的皮肤，都有留下疤痕的危险。为了将风险降到最低，在伤口愈合后，最好用保湿霜给你的伤口进行轻柔的按摩。铁人三项运动员、外科整形护士专家罗兹•麦金蒂(Roz McGinty)建议每天做两次恢复按摩，每次要持续几分钟。她说:“这种按摩有助于分解疤痕组织，滋润新皮肤。”麦金蒂还建议在受伤后使用皮肤霜、皮肤凝胶或肌能带治疗两到四个月。对此她表示：“它对褐色的、红色或凸起的疤痕特别有效。”\r\n\r\n如果你不想让你的伤疤看上去太明显，就要尽量避免阳光——紫外线会增加色素沉着，让你的疤痕看起来更严重。“理想情况下，受伤后的一年到一年半里都得这样做（避开阳光），”麦金蒂说，“这对广大骑友来说是一个比较严苛的要求，因为不让他们出去骑车会憋坏的。因此，我们中的许多人都在身上留下了不少\'荣誉勋章\'，这也就不足为奇了。”', 'http://c2.biketo.com/d/file/edge/health/2018-08-13/41a716301d28d50a7d81050595f7f12c.jpg,http://c2.biketo.com/d/file/edge/health/2018-08-13/792a92012389109c6494aca6ce5b12c8.jpg');
INSERT INTO `strategy` VALUES (6, '来自最成功的山地自行车车队经理的训练秘诀', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/racing/column/2018-07-24/1deb89cf0946b8ab75035bc453ae8a4d.jpg', 'Scott-SRAM车队的 Thomas Frischknecht或人们更亲切的称他Frischi，他是近几年骑行界最成功的山地车队背后的团队支持的关键人物。他同时曾经多次在不同...', '2018-10-19 00:00:00.000000', '作者：Thomas Frischknecht', '骑行课堂', 6, '黄金第一准则就是此类赛事一定是以团队为基础：你与你的搭档的速度要保持一致。非常重要的一点是你一定要认清你所设定赛事的目标与实际情况以及这次的参赛主要目的是让大家最大的享受赛事所带来的乐趣。尊敬你的搭档，因为选手在多日赛里的相互关系更多的是像一场“一周的短期婚姻”，但是这一周的骑行环境会非常艰苦。每一队或多或少都会出现各种各样的关系危机，所以提前在心理上和现实中为这一刻做好准备显得尤为重要。\r\n\r\n在每场开赛前仔细阅读与了解赛段信息，赛前了解到每场赛事将会有多少的爬升以及里程细节是一个非常好的想法，但是同时不要忘记更多的时候我们需要实际去感受比赛，有时候从赛事简介的数据上看这将是一场非常轻松的路段，而实际上的感受却是一场非常艰难的赛段。这是因为“节奏”在作怪，找到属于自己的节奏非常重要！\r\n\r\n长距离的耐力骑行，你将会从此类型的训练中收益最大化。当然这种训练会花费你很多时间，但他会教你在长距离骑行中找到节奏的重要性。如果你能够有一个连续一周的训练营（每日骑行），那将会对你赛事前的体能准备有非常大的帮助。\r\n\r\n训练（前期准备）应该是整个赛事体验的一大部分，同时你应该享受这个过程。如果你无法去享受为备赛而来训练，那么你也无法在真正的比赛中享受赛事所带来的乐趣。所以当你在为Perskindol Swiss Epic赛事准备训练时，应该确保你可以花一些时间在周边的山地路线训练，同时去细细享受大自然带来的壮丽景观。\r\n\r\n所需要的山地自行车技巧来自于练习！尽可能多的去尝试不同的路型，走出自己的训练甜区，尤其去一些非常需要技巧的技术路段训练，这将会提高你对于不同路面的自信！\r\n\r\nThe Perskindol Swiss Epic可能在赛程上会比Absa Cape Epic路段要短，但是他将会更多的海拔爬升和下降。如果能够在前期训练时多加强长距离爬坡练习将会非常好，同时也可以优化和提升下坡的技巧。\r\n\r\n这是一场关于“节奏”的赛事，尤其在长距离爬坡段。找到合适自己的正确节奏，通常我们会觉得速度慢，但那正是对于在长距离爬坡段生存下来的秘诀。最佳的恢复就是“不停的补给”，尤其是在一天高强度的赛事后或者训练课时后。有时候在一场激烈的比赛后，进食犹如另一场战斗，情况变非常困难，眼前的美食变得难以下咽。但是建议此时及时开始“补给”，将师傅分成一小份一小份的方式慢慢食用。谢天谢地，The Perskindol Swiss Epic有提供超棒的肌肉恢复按摩服务，同时如果能在河流以及小溪流中来一个“冰水浴”也将是另一个非常推荐的缓解肌肉疲劳的方式。', 'http://c2.biketo.com/d/file/racing/column/2018-07-24/820343cd10e69f4ef4a8a2767d2fc7f6.jpg,http://c2.biketo.com/d/file/product/buyguide/2018-06-06/b35b4d7438bce926b55dd8cc381fa065.jpg');
INSERT INTO `strategy` VALUES (7, '干货分享：铁人两项赛高原备战全攻略（上）', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/racing/cover/2018-06-28/7d467c9f8ac8b8efef381fec33d3edac.jpg', '在一个月前的香格里拉铁人两项赛中，厦门铁人陈家栋以绝对的优势打破记录，成功挑战这项海拔最高的骑跑赛事。赛后美骑记者就关于骑跑两项高原备战的若...	', '2018-10-24 00:00:00.000000', '作者：陈家栋', '推荐文章', 5, '在一个月前的香格里拉铁人两项赛中，厦门铁人陈家栋以绝对的优势打破记录，成功挑战这项海拔最高的骑跑赛事。赛后美骑记者就关于骑跑两项高原备战的若干问题向陈家栋进行了采访。他也分享了自己从备战、到参赛以及赛后恢复等全方位的“独家秘诀”，下面一起来看看吧！\r\n\r\n装备篇铁人两项要兼顾骑车和跑步两项耐力运动，因此和一般的公路赛或马拉松赛事有着细微的区别。除了骑行装备、跑步装备也必不可少，同时多带几件易损零件备用以防万一。\r\n\r\n陈家栋向我们分享他的骑跑两项主要装备：铁三服一套、自行车头盔、锁鞋、眼镜、跑鞋、空顶帽、备胎、CO2气瓶等。出行篇:外出参赛，最怕器材的损坏。因此无论是选择飞机、高铁、火车、大巴等出行方式，都要牢记保护好自己的器材装备。\r\n\r\n其中飞机托运较为暴力，陈家栋建议大家使用铁三专用装车包。并且记得在打包过程中，拆去后拨防止暴力运输过程中尾勾变形（同时建议多带一个备用尾勾以防万一，经常能遇到小伙伴托运过程中尾勾变形的情况发生）。训练篇:谈起日常训练，陈家栋颇有心得，个人对休赛期、赛季中都有针对性的训练计划，其中间歇训练法是他提高成绩的“秘密武器”。他说：“根据自身时间来进行骑跑训练的安排，我本身是爱好自行车，在自行车训练方面投入的时间占了骑跑训练的70%。在休赛期主要以低功率长距离跑量为主，将功率控制在二区，骑足3-5小时的时间，打下有氧耐力基础，一周大约进行2到3次的有氧跑量。', 'http://c2.biketo.com/d/file/racing/cover/2018-06-27/0213b4d9aea0c5c0b90dddeb5484a787.jpg,http://c2.biketo.com/d/file/racing/cover/2018-06-27/8d89a6ef655f7db29e9f65a38b72fdad.jpg');
INSERT INTO `strategy` VALUES (8, '拒绝悲剧 自行车维修保养十大注意事项', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/edge/repair/2018-09-25/ef1dcfb8c7b147e9350a6e65f49e032b.jpg', '我们鼓励老鸟们尝试一些简单的自行车维护工作，今天在这里给大家列举一下单车维护中的十个注意事项。', '2018-10-22 00:00:00.000000', '作者：George Ramelkamp', '推荐文章', 4, '首先你需要这些工具\r\n\r\n辐条扳手；\r\n\r\n润滑油脂；\r\n\r\n3、4、5毫米的内六角扳手；\r\n\r\n链条工具；\r\n\r\n打气筒，气压表；\r\n\r\n脚踏扳手。一、不要将座管长久的插入在车架中如果你的座管长时间不拿出来，是很容易卡在那个位置的，除非你花费大价钱维修，否则这会让你的座管失去调节能力，导致不好出二手。\r\n\r\n即使你已经给它上过油，随着时间的推移，润滑脂也会分解，并最终氧化挥发掉，因为实际上水分子进入车架内部是无法避免的。\r\n\r\n无论你的座杆和车架是碳还是金属的，或者是任意一组合，座管仍然又被卡住的风险。\r\n\r\n如果是金属座管，清拔出后应该及时清洁安装部位，之后要在安装区域涂上大量油脂，确保没有砂砾混入。二、切勿忽视轮圈上的磨损极限标识如果你使用的是圈刹，就一定不要忽略轮圈上标识的磨损极限，否者后果很可能是致命的。\r\n\r\n许多轮圈制造商提供某种类型的磨损量规，例如沿着圆周制动表面划出一圈浅沟槽或在特定位置钻出一个小浅孔。但是通常来说厂家会用标签表示。你需要找到这些标记并定期检查它们。一旦它们消失，就意味着你需要更换轮圈了。三、不要使用错误的方式拧紧碗组调整碗组并不是一个简单的工作，甚至你首先需要了解碗组的工作原理并知晓正确调整的步骤。\r\n\r\n首先，在没有松开把立螺丝的情况下千万不要拧紧顶部的碗组盖，因为这样只会损坏位于转向管内的阀盖和星形垫圈或膨胀花芯的盖。最起码，要先将膨胀花芯从转向管顶部拉出，防止进一步的位移。\r\n\r\n如果是这种情况，重新定位膨胀花芯，并确保把立的顶部（或把立上方垫片的顶部）在转向器边缘上方突出约5mm。四、使用紧固工具的时候注意正确的用力和个人防护使用紧固工具的时候不要仓促用力，否则很容易发生意外导致受伤。\r\n\r\n当拧紧和松开任何类型的螺栓时，一定要注意手放的位置。同时要判断如果工具或螺丝突然松动或者打滑的时候，你的指关节会碰到什么。五、给脚踏的螺栓上涂上润滑脂安装脚踏前，不要忽略在脚踏的螺纹上涂上润滑脂，否则当你要将其拆下的时候会很头痛的。而且如果你拧的太紧，也可能会导致你无法自行拆卸下来。\r\n\r\n此外，一旦踏板的螺纹发生了锈蚀，这些锈蚀会将踏板与牙盘像胶水一样“粘接”在一起。当你下次拆下踏板时，这些螺纹表面就会变脆甚至发生剥离。\r\n\r\n因此，踏板的螺纹处需要涂抹大量的润滑脂，若踏板上没有保护翼片还需要装上保护垫圈，不要过于用力拧紧，力矩大概在30N/M左右。六、使用正确的方法安装车轮为了防止出现意外，每次骑行前请务必确保正确锁上了你的快拆或桶轴。\r\n\r\n在拆装车轮过程中常见的错误是将快拆锁那一端当作旋紧螺帽来进行旋紧。实际上除了一些防盗机构或者DT SWISS快拆轴产品之外，务必使用螺帽一端进行旋紧。七、使用合适的力矩拧紧螺丝在当今这个轻质碳纤维零部件和微型5毫米钛合金内六角螺栓普遍使用的时代，拧紧车子上的螺丝时一定要格外小心。\r\n\r\n可以考虑买一把配备适当力矩范围以及搭配合适内六角尺寸的力矩扳手：10Nm不嫌多，5Nm不嫌小，这通常是安装座杆，转向杆等组件时推荐使用的扭矩范围。八、不要错误的调整车轮辐条如果你准备自己调整车轮，切记不要以为只是简单的拧紧辐条，因为这很容易拧紧过度。\r\n\r\n常见的错误是在没有完全理解调试过程和后果的情况下尝试调整轮圈。 虽然学习的唯一方法就是自己尝试，我们还是鼓励在学习和掌握了足够的知识之后再去尝试自己调整。九、不要忽视胎压谁也不想骑出去的时候才发现自己的车胎没气了，气压不足的轮胎能显著影响你的最高速度，而那种软绵无力的输出只会持续摧残着你的精神。\r\n\r\n所以出门前一定要检查轮胎，因为即使你不骑车，胎压也会发生自然的损失，一些较薄的内胎可能每天损失5到20PSI。十、经常检查你的链条事实上链条在安装过程是是非常容易被损坏的，哪怕是整车生产商或是车店技师来安装都很难避免。很多时候你会无视这种损坏，假装它还能保持正常工作。然而这其实是一厢情愿的想法，因为大多数链条在短暂的使用寿命中一直处在这种不正常的情况下。\r\n\r\n链条的损坏将终导致灾难性故障并可能伤害到自身，所以一定不要忽视链条。', 'http://c2.biketo.com/d/file/edge/repair/2018-09-25/d5394699cab935a9a5d546d03b631430.jpg,http://c2.biketo.com/d/file/edge/repair/2018-01-08/8344e861882ec278fe9154d39b59f39c.jpg');
INSERT INTO `strategy` VALUES (9, '新手如何突破200km大关？', 'https://c2.biketo.com/d/imagecache/in/220x124/d/file/news/bikenews/2018-09-20/d42e61c219ceca6b60020b5060467093.jpg', '如果我想挑战人生的第一个200km，我需要做些什么呢？', '2018-10-23 00:00:00.000000', '作者：张鲁姆', '推荐文章', 7, '大多数的车店和俱乐部举办的周末骑游活动，单次的里程控制在100-140km之间，因为这样一个难度老少咸宜，具有挑战性的同时又不是难以完成。因此，很多加入骑行已有一段时间的车友，个人单日最高里程还是保持在150km以内。那么问题来了：如果我想挑战人生的第一个200km，我需要做些什么呢？1、有足够的100+km骑行经验\r\n\r\n 罗马城不是一天建成的，200km也不是第一天骑车的人就能完成的。要想完成一天骑完200km的“壮举”，事先要有3次以上的100-150km左右的骑行经历。在这个距离上，你可以清楚地知道你的身体到底能够承受什么强度的骑行，能承受多久；如果完成150km已经非常吃力了的话，贸然尝试200km显然是不合适的，因为随着距离的增长，身体机能的下降绝对不是均匀的，而是一种断崖式的。2、研究一下路线\r\n\r\n关于路线，现在绝大多数的骑行挑战活动会事先把行者/黑鸟/兔子app的路书编号提供给各位车友，因此大家事先下载到自己的手机里即可。提前一天拿出十分钟的时间了解一下路线情况，把重要的岔路口和折返点在心中留个印象，以免到了实地，身边又没人提醒的时候走错路。一旦走错路，不光会损失宝贵的体力，更会让你变得焦躁不安。3、检查好你的车辆和相关器材！\r\n\r\n对器材的检查也是很重要的方面。至少提前一天对自己的车辆进行检查，确保刹车、变速的流畅运行和其他部件的完好，是你完成挑战的重大助力。4、吃饱也要吃好！\r\n\r\n饮食方面，我建议在头一天的晚上摄入足够的能量。吃饱，但不要吃得太撑！米饭和意大利面含有丰富的碳水化合物，但吃得太多会让你的双腿发沉。在骑行过程当中你也要不断地进食和饮水，准备的食物至少是你平时一日三餐的1.5倍。如果没有能量胶，小面包、香蕉都是不错的选择，你可以每隔25分钟补充一次水分，每隔一个小时或两个小时就进食一次，如果忘记了饮水或进食，带来的饥饿感将会是断崖式的。5、最好能找个伴儿\r\n\r\n这个的意义就不用我多说了，进可轮流领风省力，退可聊天解闷转移注意，毕竟好几个小时的骑行当中总有一段时间是无聊的。而到了150km之后就是从未挑战过的附加部分，这段未知的旅程你不知道自己的身体会是怎样的状态，因此有同伴互相鼓励，会成为完成挑战的重要因素。6、相信自己，意志要坚定！\r\n\r\n你熬过了漫长的190公里，离终点只剩10公里了。双腿发沉，头昏脑胀，可能水壶里也没水了，口袋里也没有吃的了。一股困意袭来，你巴不得把车一扔躺在路边睡一觉。在这个时候，内心强大的人会告诉自己：坚持下去，你能行！潜意识里的斗志一旦被激发，就能提供一种看不见摸不着的感觉，这种感觉在不经意间保持了你双腿的蹬踏，让你得以继续前进。终点拱门出现在眼前的时候，你会觉得这一切都值得的。就这样，你在以前最多只骑过150km的情况下，完成了人生中第一个200km。完赛后可能你一时半会没心思回味这艰难的一天，而是更想坐下来吃一碗热腾腾的面条；但当几周以后你回想起这次难忘的旅程，或是和朋友分享你的经历的时候，不免会露出自豪而欣慰的笑容。', 'http://www.biketo.com/d/file/news/bikenews/2018-09-04/6c8e63af50715afff55f1b69daf8939e.jpg,http://c2.biketo.com/d/file/news/activity/2018-09-23/22f120527c37117c5c4eed0106b04e3e.jpg');
INSERT INTO `strategy` VALUES (10, '公路越野澜沧江：香格里拉大环线骑行DAY3', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/tour/notes/2018-09-15/e60e4d8895768b6f4352962c0920e178.jpg', '一路上塌方和泥石流的痕迹随处可见，散落在路中间的碎石让人痛苦不堪，咬紧牙关，冲过去吧！', '2018-10-20 00:00:00.000000', '作者：KzMe', '路线', 7, '无畏青年的香格里拉大环线骑行第三天从弥漫的大雾开始，从山顶大峡谷一路俯冲，来到澎湃咆哮、奔腾不息的澜沧江边，无畏向前冲，最终到达云南与西藏交界处的盐井乡。\r\n\r\n据说看到“日照金山”的人与佛有缘，一整年都会得到神灵的庇护。为此无畏青年们夜宿飞来寺，更顾不得前日的疲惫，早早来到飞来寺观景台，希望有幸能够揭开梅里雪山的神秘面纱。很遗憾，山间大雾始终将远处神圣的梅里雪山十三峰藏得严严实实，我们期待着浓雾的散开，却久久等不到风来。原有的计划又一次被不配合的天气打乱，那就换一种方式去欣赏好了。拍不到美丽的风景，就拍下自己的笑颜吧。毕竟求而不可得也是人生的常态。一、二、三，微笑！卡瓦博格，我们下次再约！“峡高江面缩，石叠濑声雄。”在神秘而陡峭的峡谷，澜沧江环绕盘卧，奔腾万壑，缭绕千峰。四位无畏青年则在其中自由穿梭。电影《极盗者》中有句台词：“大自然总能找到办法让人觉得渺小。”接近这苍茫壮丽的澜沧江，才知道自己如沧海之一栗。', 'http://c2.biketo.com/d/file/tour/notes/2018-09-15/8b3e4c6b0b0c3b4f99db5b4980392a44.jpg,http://c2.biketo.com/d/file/tour/notes/2018-09-15/a446c09decb55b3b95be63a5b3a36207.jpg');
INSERT INTO `strategy` VALUES (11, '登上好莱坞之巅 洛杉矶终极骑行之旅', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/tour/routes/2018-09-05/31e018132334441634f634e8a5828e62.jpg', '如果你要来洛杉矶骑公路车旅行，让我推荐一条不错的路线的话，那一定是去往好莱坞标志的这条路线！', '2018-10-19 00:00:00.000000', '作者：佚名', '路线', 3, '如果你要来洛杉矶骑公路车旅行，让我推荐一条不错的路线的话，我不用想就可以回答你：那一定是去往好莱坞标志的这条路线！事实证明，就算你是骑行者，你也会像那些非骑行者和普通游客一样，难逃“观光”一劫，沦为赶往各个标志性建筑前打卡的“观光客”。你也别不承认了，这就是你来LA的原因之一不是吗？不过，好莱坞标志以及骑来这里的路线，和中国剧院、星光大道等其他热门景点有一个很大的不同：你必须非常努力，才能爬上山，骑到离好莱坞标志足够近的地方。\r\n\r\n好莱坞有个老笑话，出自约翰尼·卡森（美国著名节目主持人）和贝蒂·戴维斯（美国电影、舞台剧女演员）的对话。卡森问戴维斯：一个胸怀有志的新星想要进入好莱坞，有什么最快的办法？戴维斯一点没带犹豫的回答说：走喷泉大街呀！喷泉大街是连接银湖和西好莱坞的一条东西向路线，与日落大道和圣莫尼卡大道平行——这是两条非常拥堵的主干道，骑自行车很危险，特别是在高峰时段。相比之下，喷泉大街对自行车相当友好。一路上你会经过咖啡馆，农贸市场，一开始是双向车道，当你到达好莱坞的时候道路会变宽。这里整条路上都有提醒机动车要和骑行者共用车道的标识。所以当一辆排气管砰砰作响的马沙拉蒂以每小时80英里（约128.7公里）的速度从你身旁开过时，你也不必惊讶。\r\n\r\n如果你刚好住在附近，或者你需要拿一条内胎或一些零食，或者也许你想要在出发前来几个劲头满满的击掌，你都可以来金鞍车行或学者咖啡，这里是我们每周五早晨的TGSCIF骑行（Thank Golden Saddle Cyclery It’s Friday！是由TGIF即Thank God It’s Friday演变而来）的出发地，碰巧这些照片也是在这儿拍的！可以将这里做为起点，走喷泉大街进入好来坞。在穿越尼科尔斯峡谷之前，这一段平缓的路可以让你轻松地完成热身，紧接着爬一段多风的缓坡，到达传说中的穆赫兰大道，真正陡峭的地方便从这里开始了。但是好在，海拔徒然升高没多久，在围绕好莱坞水库的一个转弯的地方，坡度会放缓。这时可以走一条只有当地人熟悉的小路，再次回到穆赫兰大道上。其实，就像谷歌地图上标注的一样，它有点像是一条沙地路面的单行线。当你终于从这条绵软的沙地小路里骑出来，准备好迎接密密麻麻的人群吧！很多游客、摄影师们，还有当地居民混杂在一起。你要试着通过这条让你行动缓慢的蜿蜒街道，同时当心那些被交通状况搞的心烦意乱的司机。距离爬到李山（Mt. Lee）已经不远了，那里便是好莱坞标志座落的地方。它一年到头都被监控保护，还围着一个10英尺高（约3米）的铁丝网。如果遇到视线清晰的好天气，这里可以360度全景观赏LA！从海岸线到山区，以及中间所有的建筑物都可以尽收眼底！\r\n\r\n从这里穿过人群原路返回，再骑到格里菲斯公园基地。最后可以一路巡航回到金鞍车行。别忘了和大家分享你的旅途趣事！', 'http://c2.biketo.com/d/file/tour/routes/2018-09-05/8b28b342fa4bda11a671dcdf0ff6438e.png,http://c2.biketo.com/d/file/tour/routes/2018-09-05/f84b9a224262464f5ae67929ceaa225c.jpg');
INSERT INTO `strategy` VALUES (12, '圆梦伊斯坦布尔 追梦中年少女的骑游攻略', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/tour/notes/2018-08-13/51ca59e6d78c22bef1e440a11d7e5ffe.jpg', '走过了很多地方，我来到伊斯坦堡，就像是童话故事，有教堂有城堡～她和小布在伊斯坦布尔实现了少女时的梦想……', '2018-10-18 00:00:00.000000', '作者：binny', '路线', 4, '第一次知道伊斯坦堡，当然是因为杰伦。那时候还没有坐过飞机，在因为拥有一部sony的随身听（既然暴露了年龄，那么不知道随身听是什么东西的小朋友们，自己去百度吧……）而感到无比风光的初中校园里，被杰伦种下了这颗草。\r\n\r\n很多年来，对伊斯坦堡的印象，一直是歌里的那句“就像是童话故事，有教堂有城堡”。后来有几年，感觉身边所有的人听杰伦的歌越来越少了。两年多前我刚到北京，和多年未见的闺蜜一起吃饭，她的手机突然来电，铃声前奏刚响我就脱口而出“伊斯坦堡”，她笑着说现在还能这么快说出这歌名的也就你这种老牌杰迷了。我在伊斯坦布尔呆了十天。我跟朋友说，伊斯坦布尔总让我想起青岛。无法辨别方向的弯曲小路，上坡下坡，不知道在哪里该转弯，一不小心就会迷路。我一度对这样结构的城市十分着迷，虽然我一直在抱怨伊斯坦布尔的交通很混乱——公共交通换乘起来总体不方便，地铁里没有手机信号，没有wifi，马路上塞车严重，汽车在街上不让行人，还会冲行人呜笛。\r\n\r\n可是抛开这些，他们确实也为自行车做了很多让人感动涕零的努力。虽然很多上下坡，但这里依然不缺少骑车的人。见到好多旅骑的人驼着大包小包，一样往坡上爬。\r\n\r\n这所有的一切都让我迫不及待要骑车出来探索这个城市。更何况博斯普鲁斯海峡两岸美景，如果不骑车，要怎么好好欣赏它？', 'http://c2.biketo.com/d/file/tour/notes/2018-08-14/baa6197b508c067bf7a8ae2cd58e26bf.jpg,http://c2.biketo.com/d/file/tour/notes/2018-08-13/8dee9918d8d8c1290a38548b1c7bb4ab.jpg');
INSERT INTO `strategy` VALUES (13, '在珠峰骑山地车是什么体验？ 尼泊尔EBC穿越之旅', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/tour/notes/2018-10-19/ea902829ea1b07650988a13adb7e55e5.jpg', '世界上最壮美和受欢迎的一条神秘小径：尼泊尔EBC神秘小径，从5300米的珠峰大本营向下狂飙，山地车应有的精神。', '2018-10-22 00:00:00.000000', '作者：骑趣编辑中心', '路线', 2, '尼泊尔EBC徒步路线，或许是世界上最壮美和受欢迎的一条神秘小径，以LUKLA为起点沿着峡谷逐步深入萨加玛塔国家公园，海拔从2600米一路上升到5300米的珠峰大本营（EVEREST BASE camp），沿途溪瀑、茂林、草甸、雪河、冰川、雪顶琳琅满目应接不暇，多座八千米以上的雪山矗立云间足以震撼到你视觉极限。', 'http://c2.biketo.com/d/file/tour/notes/2018-10-18/f3b8a7b5d483eec4cc5ede6ea47066e7.jpg,http://c2.biketo.com/d/file/tour/notes/2018-10-18/aabcc80d70a74213995b3605b5f4ec6b.jpg');
INSERT INTO `strategy` VALUES (14, ' 五百市民参加伴艾骑行武汉站 共同为艾滋发声', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/industry/business/2018-10-23/1cee189d79db9f7d805a7c3cd86dc4f0.jpg', '“伴艾骑行”是一项于2015年由公开身份的艾滋病病毒感染者刘九龙先生发起的公益活动。', '2018-10-23 00:00:00.000000', '作者：骑趣编辑中心', '路线', 4, '10月21日下午，2018年“伴艾骑行”武汉站公益活动在东湖绿道落霞归雁景区举行。本次活动由爱德基金会支持、武汉市青彩防艾志愿者服务中心主办，湖北省疾控中心、湖北省红十字基金会、武汉市民政局、武汉市疾控中心相关代表以及近500名来自高校、企业和骑行俱乐部的市民参加了本次活动。\r\n\r\n据了解本次活动从东湖绿道落霞归雁景区出发，在蝴蝶谷折返，共骑行10公里。参与者只要完成“艾滋知识问答”“为艾代言”两个趣味关卡，即可获得主办方颁发的“防艾大使”荣誉证书。\r\n\r\n同时，本次活动还得到了网易春风、虎牙直播、哈啰单车、道森媒体、得意生活等爱心企业的支持。现场，虎牙直播开展了全程网络直播，近2万名网友通过虎牙直播平台在线观看了“伴艾骑行”这一公益活动。“伴艾骑行”是一项于2015年由公开身份的艾滋病病毒感染者刘九龙先生发起的公益活动。该活动旨在通过全民参与的自行车体育运动的方式关注艾滋病防治问题，号召全社会了解艾滋病、认识艾滋病、减少对艾滋病的歧视和误解。\r\n\r\n今年“伴艾骑行”公益活动已经于5月20日在江西南昌成功举办，本次武汉站结束后还将于12月1日世界艾滋病日在长沙举行。', 'http://c2.biketo.com/d/file/industry/business/2018-10-23/47b33639ee88c204ecc95ff17a1fd8ea.jpg,http://c2.biketo.com/d/file/industry/business/2018-10-23/1cee189d79db9f7d805a7c3cd86dc4f0.jpg');
INSERT INTO `strategy` VALUES (15, '小知识：骑自行车时如何应对流鼻涕？', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/product/buyguide/2018-06-06/26c73a28ee93cee63cb7f7c37e5703e2.jpg', '当你骑车骑的很快，但是鼻涕又流个不停的时候···这似乎很有趣～	', '2018-10-20', '作者：骑趣网编辑中心', '骑行课堂', 2, '骑车时，总有些车手会流鼻涕或是鼻塞\r\n\r\n如果你在气温变化剧烈的时节出门跑步或是骑车，可能会引起血管性运动鼻炎。\r\n\r\n血管性运动鼻炎会导致你鼻塞、流鼻涕甚至头晕等症状，毫无疑问，以上症状会让你的骑行体验大打折扣。解决办法：\r\n\r\n1.避免或去除诱发因素调整心态，合理设定比赛档期和成绩心理预期，不宜太过奔波劳累，安排好休息时间，充分休息恢复，多与朋友交流。\r\n\r\n2.药物治疗\r\n\r\n（1）鼻减充血剂对以鼻塞为主要症状者可选用。但在应用时要注意药物性鼻炎的发生。可采取间断性或交替性给药。三磷酸腺苷钠（ATP）对缓解鼻塞有显著疗效。\r\n\r\n（2）抗组胺药不少非免疫性因素可引起肥大细胞释放组胺，故抗组胺药对不少病例仍有较好疗效，对鼻痒和喷嚏症状明显者可首先选用。（3）抗胆碱药适用于以鼻溢为主要症状的患者。溴化异丙托品气雾剂，可有效地控制鼻溢。\r\n\r\n（4）肾上腺皮质激素皮质激素在细胞内外各水平上发挥非特异性抗炎作用，故对血管运动性鼻炎的一些喷嚏症状明显、水样鼻涕较多且鼻黏膜水肿明显的病例，有显著疗效。\r\n\r\n对于车手来说，很遗憾的是，以上药物几乎全是世界反兴奋剂机构禁药。\r\n\r\n通气鼻贴用于感冒、鼻炎、过敏引起的鼻塞，可扩张鼻腔通道，提高通气量，从而使呼吸更顺畅。\r\n\r\n从安全比赛出发，通气鼻贴也是能起到一定帮助的。', 'http://c2.biketo.com/d/file/product/buyguide/2018-06-06/b35b4d7438bce926b55dd8cc381fa065.jpg,http://c2.biketo.com/d/file/product/buyguide/2018-06-06/a9d5f3be0a15a21096ec215403c300f7.jpg');
INSERT INTO `strategy` VALUES (16, '学会这5招 日行160公里不是梦', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/news/bikenews/2018-04-08/ff0a5642eef429a7be9cb85ca7a1cee4.jpg', '骑个100公里就感觉身体被掏空？为什么别人可以日行160公里不带喘的？学会这5招你也可以……', '2018-10-21', '作者：Rob Mortlock', '骑行课堂', 3, '对于许多公路车手来说，集中精力完成160km不间断的骑行，虽然听起来有些困难，但也不算太难，单飞或者组队都是不错的选择。\r\n\r\n对于能力稍强的车手来说，160km的骑行不过是他们每周日都会进行的常规活动。但对于能力稍弱的车手，一次骑行160km就是对体能的极大挑战，往往难以承受。\r\n\r\n当然，大部分骑友的能力介于这两者之间，认为80km-100km是比较舒适并易于接受的骑行距离，他们并不满足于此，也想骑得更远。接下来介绍的训练指南就是为这些车手量身打造的。\r\n\r\n从100km到160km的跨度有多大？你或许能轻易的完成，又或许只能带着淡淡的忧伤回家，谁知道呢？现在让我们来看看影响你延长骑行里程数的因素，了解这些能让你更好地为160km的骑行做好充足的准备，让它成为一个令人愉快并可以实现的目标。我们整理出了五个部分，这对你突破距离阻碍有很大帮助。\r\n\r\n一、为160km的目标做训练在人们有了新的目标的时候，普遍的都会关注身体训练，还有很多人认为在两周内骑得越多越好。但这并不是最好的办法，我们需要的是更加“智能”地训练。这意味着我们要在正确的时间做正确的事，寻求达到训练效果最大化的方法。二、努力接近160km的目标无论现在你的目标仅仅是追求距离增加4km，又或者是下定决心完成整段旅程，你的努力和付出都将是最重要的。\r\n\r\n在160km的骑行中，你不能将自己的全部力气过早使出来，那样的话最后1/3就很悲催了。你可以整个码表看看自己的速度和心率，以便了解自己的舒适区。当然，只靠自己的感觉也是可以的。\r\n\r\n在心里面给自己定一个小目标也是一个好主意，比如说“我必须要在150分钟之内完成64km的骑行”，这样不仅可以激励你，也可以防止你爆发得过早。但你的目标不能太过懒散，避免错过到达目的地的宝贵时间。三、进入160km的区域我们都知道精神的力量，可能会对我们的表现造成积极或消极的影响。当你独自骑行了160km，精神既可以成为对我们有益的伙伴，也可以成为具有破坏能力的害虫。想要享受骑行，就要学会在训练中将自我与不适的感觉相分离的技能。\r\n\r\n尝试将注意力转移到其他事物上，比如说沿途的风景，你踩踏的技巧，又或者是保持一个较为气动的姿势。在你的步调策略中，设置一些小的“过程目标”，有助于将你头脑中的旅程分解，更易于管理。四、补充能量如何正确地补充能量是很重要的一点，它对你的身体健康和将要进行的骑行计划影响非常之大。骑行之前：在160km骑行的前一天，营养补充方面你必须要严肃对待，你可能听说过“碳水化合物的摄入”，在这里最简单的建议是，吃一顿健康，均衡的膳食，包括新鲜蔬菜和低糖的食品。\r\n\r\n在入睡前两小时吃一碗谷物食品，这也是非常有帮助的，同时不要喝太多的酒、汽水和水。早上吃一些麦片和水果，在出发前喝至少500毫升的水。\r\n\r\n骑行中：不能吃大量的能量胶，能量胶的设计用途主要是在公路赛最后几公里，为车手们补充能量而准备的。骑行之后：骑行后，你的肌肉需要补充糖原，所以，现在喝一些果汁，这是帮助你恢复的好时机。这些糖分能在20分钟之内转化成为你身体所需的糖原。甚至，你也可以喝一些汽水，或吃适量的糖果。记住，多补充水分，然后坐下来好好地吃一顿富含蛋白质的食物（一小时之内）。五、为骑行做一个fitting对于专业的自行车来说，fitting能提高骑乘的性能和舒适性，减轻疲倦以及对身体的伤害。不仅如此，fitting还能让你在骑行中拥有稳定的上身，平坦的后背，以及更为气动的位置。同时，你的踩踏将变得更加高效灵活。\r\n\r\n如果你需要的话，你可以听取fitting专家的建议。但是用一次长距离骑行为你私自调整的新位置做实验，这是非常不值得的。', 'http://c2.biketo.com/d/file/news/bikenews/2018-03-31/c8c2c3c2351147eca56e52065d4f56a4.jpg,http://c2.biketo.com/d/file/news/bikenews/2018-03-31/dea6b8f60f8c21513b790cfdf39cc91b.jpg');
INSERT INTO `strategy` VALUES (17, '训练百年史：从“多骑就是王道”到“无功率不骑行”', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/racing/column/2018-02-07/ca46b70f9a57ff5837c30dc130fec629.jpg', '回到几十年前，在那个没有GPS、没有功率计、甚至没有心率计的时代，车手们依旧骑得飞快，他们是怎么训练的呢？	', '2018-10-20', '作者：Feynman', '骑行课堂', 1, '在如今的顶级车队，运动生理学家、顶级教练、专业的营养师和机械师如同众星拱月一般围绕着明星车手，帮助他们进行更加有效地训练，在竞赛的时候达到体能和状态的巅峰。\r\n\r\n然而回到几十年前，在那个没有GPS、没有功率计、甚至没有心率计的时代，车手们依旧骑得飞快，他们是怎么训练的呢？训练的方式在这一百年内变化良多，然而有一个准则一直没有变化，那就是车王莫克斯所说的：“多骑就是王道。”这个准则在上个世纪初期开始发酵，到如今仍有它的指导意义。“一周训练16个小时，每周如是。你在这16个小时里面怎么骑的并不重要，日复一日，你将越来越快。”——英国国家队的教练\r\n\r\n为何大的训练量对于车手如此有效？研究表明，适量的训练量能让车手产生生理适应性，巩固和提高体能。从微观层面来说，训练能提升血容量、红细胞总数、提升有氧输出能力，提升肌肉的输氧能力和线粒体浓度。\r\n\r\n换句话说，持之以恒地训练虽然很无聊，但也很有效。', 'http://c2.biketo.com/d/file/racing/news/2017-07-01/75399f23aff1da6988d06266eb58a9e2.jpg,http://c2.biketo.com/d/file/racing/column/2017-07-30/0170ad508f85d3fb67ea1e69fd33797f.jpg');
INSERT INTO `strategy` VALUES (18, '平路高速武器 新款Zipp 404 Firecrest轮组 评测', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/product/geartest/2018-10-25/f0e7bb0c9d8c23ac17f23f1e119492e4.jpg', '一说到Zipp，大家第一个想到的总是404，404一直以来都是Zipp这个“气动大户”的招牌、拳头产品，又或是说信仰一般的存在。近期，Zipp对跑量主力Firecrest系列进行了更新，将大量NSW系列的技术下放。', '2018-10-25', '作者：Avalon', '推荐文章', 2, '一说到Zipp，大家第一个想到的总是404，404一直以来都是Zipp这个“气动大户”的招牌、拳头产品，又或是说信仰一般的存在。在小编刚开始骑车那个年代，车友们都是以拥有404或者BORA为荣，就算砸锅卖铁都要上一对，也间接导致了淘宝上那些Zipp贴纸的热销……近期，Zipp对跑量主力Firecrest系列进行了更新，将大量NSW系列的技术下放。虽说新款轮圈使用了NSW下放而来的技术，但也只是部分，例如Logo仍沿用传统的大白标贴纸，并未使用NSW上那个追求极致性能的IMPRESS™点阵印花Logo。虽然使用贴纸会重上那么一点点，以及会覆盖部分高尔夫球坑，“影响高尔夫球坑正常工作”，但也在外观上有着“风骚系数”的加成，大老远就能看到这是对Zipp；并且原厂已提供各种颜色的贴纸方便用户配色，具有一定的定制空间。上一代轮组上的“火鸡”贴纸和Zipp钢印Logo在这一代被取消，取而代之的是一张简单粗暴的404 Firecrest贴纸，虽然损失了一些静态的“哔”格，但小编还是那句话，转起来后没人看得到的……Zipp嘛，自然少不了ABLC™（Aerodynamic Boundary Layer Control）高尔夫球面处理（众人：那你之前评的302算什么鬼），高尔夫球坑表面的样式与排布并无多大变动，主要是加入了从NSW下放而来的SAWTOOTH™技术锯齿纹路，就像454 NSW波谷与波峰的缺口被填上了一样。\r\n\r\n它的具体作用是在骑乘速度达到32Km/H及以上时，轮圈便开始以50hz的频率切开迎面气流。同时，SAWTOOTH™锯齿纹通过在轮框表面高频率地产生小数量的空气旋涡，从而减小轮圈侧面的层流气泡效应，降低轮组在大偏航角时的空气阻力，换来侧风吹袭下更优秀的操控稳定性，这算是这么多年来一直属于“空气动力玄学”级别的设计了吧……同时，NSW上用于加速并导流空气的HyperFoil™条纹技术也并没有下放至Firecrest。总的来说，新款404 Firecrest最大的升级就是加入了Showstopper™刹车边，317道鱼钩状沟槽可以有效刮走刹车粉尘或雨水，令轮组在各种环境下都有着优秀的刹车力。由于Showstopper™刹车边的加入，现在404 Firecrest也可以享受到NSW那媲美线碟的刹车力。体重不轻的小编使用同款刹车边的303 NSW经历过一次堪比XC的短陡坡下坡后，彻底被这恐怖的刹车力所折服，在这种工况下Showstopper™刹车边可以将小编轻松地带回山脚，主要在平路环境下使用的404自然是毫无压力。', 'http://c2.biketo.com/d/file/product/geartest/2018-10-25/3ae1fb5fe32a8070236925d109cdb05b.jpg,http://c2.biketo.com/d/file/product/geartest/2018-10-25/324f8196b69d8b3b3464356f0bc7e095.jpg');
INSERT INTO `strategy` VALUES (19, '骑行在天地间 海子山下的姊妹湖', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/daily/2018-10-25/d7114063f30f872d9907b2664ae7b841.jpg', '川藏线上一颗耀眼的明珠——海子山姊妹湖。', '2018-10-21', '作者：骑趣网', '推荐文章', 2, '海子山姊妹湖是川藏线上一颗耀眼的明珠——海子山自然保护区位于巴塘和理塘的中间，是青藏高原最大的古冰川遗迹，以“稻城古冰帽”著称于世。', 'http://c2.biketo.com/d/file/daily/2018-10-25/b89d2894ff0b209dd64991b6afa4d50e.jpg,http://www.biketo.com/d/file/news/bikenews/2018-10-18/e2bb0868f769e5b850383adc5b92c7b5.jpg');
INSERT INTO `strategy` VALUES (20, '火山湖上的绝美秋色 吉林龙湾群4+2游记', 'http://c2.biketo.com/d/file/news/bikenews/2018-09-http://c2.biketo.com/d/imagecache/in/220x124/d/file/news/bikenews/2018-10-04/0855e8f7e38b598eec5bcfceba2796f0.jpg', '每逢入秋，这些位于高纬度地区的葱葱林海，便会因巨大的昼夜温差，以及霜露的浸染，华丽变身为一幅色彩斑斓的画卷。', '2018-10-23', '作者：骑趣网', '大图', 11, '通观吉林省的地形图，我们会发现西北部地势低平，东南部则山峦起伏，也正是这些连绵不绝的山峦，造就了茫茫林海。\r\n\r\n每逢入秋，这些位于高纬度地区（以我国为参考）的葱葱林海，便会因巨大的昼夜温差，以及霜露的浸染，华丽变身为一幅色彩斑斓的画卷。无论是自驾还是骑行，绝对是绕不开的绝佳去处。今天，我将以吉林龙湾群国家森林公园为核心，唠唠4+2出行赏秋色的点点滴滴。开篇先插播一点科普知识。许多人可能会问：“龙湾是什么？”其实这是当地人对火口湖的称谓，在火山地质研究中，一般称它们为玛珥湖（玛珥湖的英文“Maar”来源于拉丁文“mare”，即沼泽或湖的意思，是居住在德国莱茵地区的人们对当地有水的湖泊、沼泽的称呼）。龙湾群则是由多个火口湖组成的一个火口湖群，也是我国最大的火口湖群。\r\n\r\n吉林龙湾群国家森林公园的核心区域位于吉林省辉南县东南部的金川镇。自驾或者骑行，从东西南北哪个方向都可以抵达金川镇，并直奔核心景区开始游览。我今天要谈的是4+2出行，就是既能一脚油门快速临近景区（开车），又能放慢脚步赏心悦目地游览沿途景色（骑车），还可以形成环线，完成4+2的完美衔接，我想我们应该选择一条最优的线路。最后嘱咐几句。\r\n\r\n1.装备选择：走常规环线公路车可行，如果想来个“不走寻常路”，最好山地车或者旅行车，1.5寸以上胎宽的折叠车也将就。\r\n\r\n2.线路辨识：主要线路有非常明确的指示标牌，轻松找到。但是东龙湾、南龙湾、二龙湾、小龙湾这些偏僻且未开发的龙湾，在依托导航的基础上，勤问路，省的走冤枉路。\r\n\r\n3.骑行难度：我认为，与美景相比，在龙湾群骑行应该说没有什么难度（硬要说挑战，那就是爬千八百米的坡）。\r\n\r\n4.天气情况：东北的秋天昼夜温差非常大，上下差20度，毫不奇怪，可能早上冻得哆嗦，中午则晒得肉疼。因此，一定要备好衣物，免得被老天折磨。\r\n\r\n5.餐饮补给：沿途有人家，有商店，不用太多顾虑。\r\n\r\n最后提醒大家，一定注意安全，景区道路狭窄，千万不要飙车，切记“上坡比快，下坡比慢”。', 'http://c2.biketo.com/d/file/news/bikenews/2018-09-26/0ed8e1be0a43116e92c53d72e987a03c.jpg,http://c2.biketo.com/d/file/news/bikenews/2018-09-26/fa7aeffd428704fca40b3c25ae65add6.jpg');
INSERT INTO `strategy` VALUES (21, '敬畏自然 公路车穿越“蜀山之王”贡嘎雪山', 'http://c2.biketo.com/d/imagecache/in/220x124/d/file/news/bikenews/2018-10-16/3e04eeb4b077b387efb3eaab5faaca41.jpg', '浮躁的社会里仿佛少了儿时的乐趣去山里野，我们去寻找最真的自己。', '2018-10-21', '作者：骑趣网', '大图', 6, '在这纸醉金迷，浮躁的社会里，仿佛少了儿时的乐趣。我们要去山里，寻找最真的自己。虽然人们常说，说走就走的旅行。但是我认为一场奇妙无比的行程，都是好好规划后的结果。首先选择一个地方，开始查找攻略，出发前车辆的调试，装备，补给，药品……这一切的一切都是为了呈现出一场空前绝后的视觉盛宴。', 'http://c2.biketo.com/d/file/news/bikenews/2018-10-16/5819436d7144124206309b941efd9543.jpg,http://c2.biketo.com/d/file/news/bikenews/2018-10-16/7a649f4744aadbe8a8cf371962dcb048.jpg');

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
-- Procedure structure for getgameInfo
-- ----------------------------
DROP PROCEDURE IF EXISTS `getgameInfo`;
delimiter ;;
CREATE PROCEDURE `getgameInfo`()
BEGIN
		SELECT zId,zTitle,zImg,zContent,zTime,zFrom,zCheck,zType FROM `information` 
                where zType="赛事" order by zTime desc,zCheck desc;

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
-- Procedure structure for getrecommendInfo
-- ----------------------------
DROP PROCEDURE IF EXISTS `getrecommendInfo`;
delimiter ;;
CREATE PROCEDURE `getrecommendInfo`()
BEGIN
	SELECT zId,zTitle,zImg,zContent,zTime,zFrom,zCheck,zType FROM `information` 
                where zType="骑趣推荐" order by zTime desc,zCheck desc;
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
            where zType="今日资讯" order by zCheck desc;
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
