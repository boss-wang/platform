/*
 Navicat Premium Data Transfer

 Source Server         : ubuntu
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : 111.231.244.96:3306
 Source Schema         : platformdb

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 23/04/2019 12:41:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for client
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client` (
  `clientId` varchar(64) NOT NULL,
  `companyName` varchar(64) NOT NULL COMMENT '客户公司名',
  `companyAddress` text COMMENT '客户公司地址',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '0：表示删除 1：正常',
  `createTime` datetime DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  PRIMARY KEY (`clientId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of client
-- ----------------------------
BEGIN;
INSERT INTO `client` VALUES ('1', '阿里巴巴网络技术有限公司', '中国杭州市余杭区 文一西路969号 (31112', 1, '2019-02-09 21:58:48', '2019-02-09 21:59:51');
INSERT INTO `client` VALUES ('10', '南京江宁科技有限公司', '南京市江宁区', 1, '2019-02-09 21:58:48', '2019-02-09 21:59:51');
INSERT INTO `client` VALUES ('11', '中国航天技术有限公司', '南京中央门', 0, '2019-02-09 21:58:48', '2019-02-09 21:59:51');
INSERT INTO `client` VALUES ('152c7e06c52848959d6b9518b5f29b35', 'abc', 'aaa', 1, '2019-02-09 08:02:02', '2019-02-09 08:02:02');
INSERT INTO `client` VALUES ('2', '深圳市腾讯计算机系统有限公司', '深圳市南山区高新科技园中区一路腾讯大厦', 1, '2019-02-09 21:58:48', '2019-02-09 21:59:51');
INSERT INTO `client` VALUES ('3', '百度', '中国北京海淀区上地十街10号百度大厦一楼', 1, '2019-02-09 21:58:48', '2019-02-09 21:59:51');
INSERT INTO `client` VALUES ('3e2487ef0068441ebe7dc4262ec93b14', 'abc', 'aaa', 0, '2019-02-09 08:01:52', '2019-02-09 08:01:52');
INSERT INTO `client` VALUES ('4', '北京京东世纪贸易有限公司', '中国北京市朝阳区北辰西路8号北辰世纪中心A座907-6二楼有个茶水间', 1, '2019-02-09 21:58:48', '2019-02-09 21:59:51');
INSERT INTO `client` VALUES ('5', '苏宁云商集团股份有限公司', '南京市山西路8号金山大厦1-5层', 1, '2019-02-09 21:58:48', '2019-02-09 21:59:51');
INSERT INTO `client` VALUES ('6', '网易公司', '广州市天河区科韵路16号广州信息港E栋网易大厦', 1, '2019-02-09 21:58:48', '2019-02-09 21:59:51');
INSERT INTO `client` VALUES ('7', '江苏绿联有限公司', '南京雨花台', 0, '2019-02-09 21:58:48', '2019-02-09 21:59:51');
INSERT INTO `client` VALUES ('8', '江苏赵振国际有限公司', '南京雨花台', 1, '2019-02-09 21:58:48', '2019-02-09 21:59:51');
INSERT INTO `client` VALUES ('9', '南京中博科技', '南京重要吗', 0, '2019-02-09 21:58:48', '2019-02-09 21:59:51');
INSERT INTO `client` VALUES ('a31523ab24d9436eadef413889fd0232', 'ccc', 'lll', 0, '2019-02-09 21:58:48', '2019-02-09 21:59:51');
INSERT INTO `client` VALUES ('fe8c2403566a46e1ad347bdd30e58fad', 'abc', 'aaa', 0, '2019-02-09 21:58:48', '2019-02-09 21:59:51');
COMMIT;

-- ----------------------------
-- Table structure for clientcontact
-- ----------------------------
DROP TABLE IF EXISTS `clientcontact`;
CREATE TABLE `clientcontact` (
  `id` varchar(64) NOT NULL,
  `clientId` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL COMMENT '联系人姓名',
  `tel` varchar(64) DEFAULT NULL COMMENT '联系人电话',
  `email` varchar(64) DEFAULT NULL COMMENT '联系人邮箱',
  `qq` varchar(64) DEFAULT NULL COMMENT '联系人QQ',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '0：表示删除 1：表示正常',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clientcontact
-- ----------------------------
BEGIN;
INSERT INTO `clientcontact` VALUES ('1', '1', '马云', '1310000000', 'mayun@alibaba.com', '11', 0);
INSERT INTO `clientcontact` VALUES ('10', '2', '王超', '15195570280', '261668497@qq.com', NULL, 1);
INSERT INTO `clientcontact` VALUES ('11', '3', '王峥', '15620581197', '', NULL, 1);
INSERT INTO `clientcontact` VALUES ('12', '4', '王超', '15195570280', '261668497@qq.com', NULL, 1);
INSERT INTO `clientcontact` VALUES ('13', '5', '圆圆', '1898776262', '222222@qq.com', '', 0);
INSERT INTO `clientcontact` VALUES ('14', '6', '中国人', '122112222', '323232@qq.com', '', 0);
INSERT INTO `clientcontact` VALUES ('15', '7', '宗思瑶', '18652977248', '', NULL, 1);
INSERT INTO `clientcontact` VALUES ('16', '8', '王康', '221122121', '', '', 1);
INSERT INTO `clientcontact` VALUES ('17', '9', '忘年交', '13998988888', '133377@qq.com', '3223328328', 0);
INSERT INTO `clientcontact` VALUES ('18', '10', 'Ljfe', '182827', '23322@qq.com', '3222323', 0);
INSERT INTO `clientcontact` VALUES ('19', '11', '代理人', NULL, NULL, NULL, 1);
INSERT INTO `clientcontact` VALUES ('2', '3', '马化腾', '1311111111', 'mahuateng@qq.com', '10001', 0);
INSERT INTO `clientcontact` VALUES ('3', '1', '李彦宏', '1312222222', 'liyanhong@baidu.com', '20001', 1);
INSERT INTO `clientcontact` VALUES ('4', '2', '刘强东', '1313333333', 'liuqiangdong@jd.com', NULL, 0);
INSERT INTO `clientcontact` VALUES ('5', '3', '张近东', '1314444444', 'zhangjindong@suning.com', NULL, 1);
INSERT INTO `clientcontact` VALUES ('6', '4', '丁聪华', '1861111111', 'dingconghua@qq.com', '88331111', 1);
INSERT INTO `clientcontact` VALUES ('7', '5', '韩松', '1863333333', 'hansong@baidu.com', NULL, 1);
INSERT INTO `clientcontact` VALUES ('8', '6', '丁磊', '1315555555', 'dinglei@163.com', NULL, 1);
INSERT INTO `clientcontact` VALUES ('9', '7', '孙秀玉', '1867777777', 'sunxiuyu@163.com', NULL, 1);
COMMIT;

-- ----------------------------
-- Table structure for clienttemp
-- ----------------------------
DROP TABLE IF EXISTS `clienttemp`;
CREATE TABLE `clienttemp` (
  `clientId` int(5) NOT NULL AUTO_INCREMENT,
  `clientName` varchar(50) NOT NULL,
  `clientAddress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`clientId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clienttemp
-- ----------------------------
BEGIN;
INSERT INTO `clienttemp` VALUES (1, '江苏赵振国际有限公司', '南京雨花台');
INSERT INTO `clienttemp` VALUES (2, '阿里巴巴网络技术有限公司', '中国杭州市余杭区 文一西路969号 (31112');
INSERT INTO `clienttemp` VALUES (3, '阿里巴巴网络技术有限公司', '中国杭州市余杭区 文一西路969号 (31112');
INSERT INTO `clienttemp` VALUES (4, '阿里巴巴网络技术有限公司', '中国杭州市余杭区 文一西路969号 (31112');
INSERT INTO `clienttemp` VALUES (6, '南京江宁科技有限公司', '南京市江宁区');
COMMIT;

-- ----------------------------
-- Table structure for clienttemp_customer
-- ----------------------------
DROP TABLE IF EXISTS `clienttemp_customer`;
CREATE TABLE `clienttemp_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) NOT NULL,
  `clientId` int(11) NOT NULL,
  `clientExists` int(5) DEFAULT NULL COMMENT '客户名是否已经存在 0表示不在 1表示存在',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clienttemp_customer
-- ----------------------------
BEGIN;
INSERT INTO `clienttemp_customer` VALUES (5, 1, 4, 1);
INSERT INTO `clienttemp_customer` VALUES (7, 8, 6, 1);
COMMIT;

-- ----------------------------
-- Table structure for coststatus
-- ----------------------------
DROP TABLE IF EXISTS `coststatus`;
CREATE TABLE `coststatus` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coststatus
-- ----------------------------
BEGIN;
INSERT INTO `coststatus` VALUES (1, '未开票-未付款');
INSERT INTO `coststatus` VALUES (2, '已开票-未付款');
INSERT INTO `coststatus` VALUES (3, '已开票-已付款');
COMMIT;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户Id',
  `loginName` varchar(255) NOT NULL COMMENT '用户名',
  `loginPwd` varchar(255) NOT NULL COMMENT '用户登陆密码',
  `tel` varchar(255) NOT NULL COMMENT '手机',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `statusId` int(11) NOT NULL,
  `realName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
BEGIN;
INSERT INTO `customer` VALUES (1, 'wangchao', '11111111', '15195570280', '261668497@qq.com', 3, '王超');
INSERT INTO `customer` VALUES (2, 'wangzheng', '12345678', '15620581197', '815743480@qq.com', 2, '王峥');
INSERT INTO `customer` VALUES (3, 'zhaozheng', '11111111', '18512509575', '996322650@qq.com', 2, '赵振');
INSERT INTO `customer` VALUES (4, 'wulizheng', '11111111', '18651234387', NULL, 2, '吴立正');
INSERT INTO `customer` VALUES (5, 'liujianlou', '11111111', '18360716526', NULL, 2, '刘健楼');
INSERT INTO `customer` VALUES (6, 'mima1', '11111111', '15151771965', NULL, 2, '绩效天');
INSERT INTO `customer` VALUES (7, 'zhangyi', '11111111', '18816209938', '', 2, NULL);
INSERT INTO `customer` VALUES (8, 'zongsiyao', '11111111', '18652977248', '', 3, '宗思瑶');
COMMIT;

-- ----------------------------
-- Table structure for customer_client
-- ----------------------------
DROP TABLE IF EXISTS `customer_client`;
CREATE TABLE `customer_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) NOT NULL,
  `clientId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer_client
-- ----------------------------
BEGIN;
INSERT INTO `customer_client` VALUES (4, 1, 1);
INSERT INTO `customer_client` VALUES (6, 8, 10);
COMMIT;

-- ----------------------------
-- Table structure for customerstatus
-- ----------------------------
DROP TABLE IF EXISTS `customerstatus`;
CREATE TABLE `customerstatus` (
  `statusId` int(11) NOT NULL AUTO_INCREMENT COMMENT '状态Id',
  `statusName` varchar(255) NOT NULL COMMENT '状态名',
  PRIMARY KEY (`statusId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customerstatus
-- ----------------------------
BEGIN;
INSERT INTO `customerstatus` VALUES (1, '审核中');
INSERT INTO `customerstatus` VALUES (2, '未绑定公司');
INSERT INTO `customerstatus` VALUES (3, '已绑定公司');
INSERT INTO `customerstatus` VALUES (4, '审核未通过');
COMMIT;

-- ----------------------------
-- Table structure for customsstatus
-- ----------------------------
DROP TABLE IF EXISTS `customsstatus`;
CREATE TABLE `customsstatus` (
  `id` int(5) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customsstatus
-- ----------------------------
BEGIN;
INSERT INTO `customsstatus` VALUES (0, '未退');
INSERT INTO `customsstatus` VALUES (1, '已退-等待寄出');
INSERT INTO `customsstatus` VALUES (2, '已寄');
COMMIT;

-- ----------------------------
-- Table structure for leavemessage
-- ----------------------------
DROP TABLE IF EXISTS `leavemessage`;
CREATE TABLE `leavemessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phoneNum` varchar(11) NOT NULL,
  `message` varchar(555) NOT NULL,
  `messageTime` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1:未删，0：已删',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leavemessage
-- ----------------------------
BEGIN;
INSERT INTO `leavemessage` VALUES (10, 'wz', '13032559558', '尊敬的领导们，你们好，打扰你们请见谅。我想问每年的低保都是怎么选的，为什么农民工没有发言权，只有争夺权。一切都是当地政府定夺吗？那为什么有的家庭比我家经济和各种条件好几倍的任享有低保。甚至有的一家几口都享有低保？那么请问我们一家几口母亲有精神分裂症多年，今年开始在治疗，但效果并不理想。其继父脑子不好使，家中没有经济来源，我虽然是家中的唯一劳动力。但这几年收入不稳定。有时根本支撑不下去。母亲一人享有国家低保。前两年刚修完四件房屋。一年四季只要下雨下雪就往下渗水。里面也没有装修。只因经济条件有限。我想问国家给予农民工最低保障就没有规律吗？农民工为什么没有决定权和发言权？请到当地村镇政府和村大队实地上门调查。', '2018-03-01 09:46:49', 0);
INSERT INTO `leavemessage` VALUES (11, 'wz', '13032559558', '尊敬的领导们，你们好，打扰你们请见谅。我想问每年的低保都是怎么选的，为什么农民工没有发言权，只有争夺权。一切都是当地政府定夺吗？那为什么有的家庭比我家经济和各种条件好几倍的任享有低保。甚至有的一家几口都享有低保？那么请问我们一家几口母亲有精神分裂症多年，今年开始在治疗，但效果并不理想。其继父脑子不好使，家中没有经济来源，我虽然是家中的唯一劳动力。但这几年收入不稳定。有时根本支撑不下去。母亲一人享有国家低保。前两年刚修完四件房屋。一年四季只要下雨下雪就往下渗水。里面也没有装修。只因经济条件有限。我想问国家给予农民工最低保障就没有规律吗？农民工为什么没有决定权和发言权？请到当地村镇政府和村大队实地上门调查。', '2018-02-09 09:46:52', 1);
INSERT INTO `leavemessage` VALUES (12, 'wz', '13032559558', '尊敬的领导们，你们好，打扰你们请见谅。我想问每年的低保都是怎么选的，为什么农民工没有发言权，只有争夺权。一切都是当地政府定夺吗？那为什么有的家庭比我家经济和各种条件好几倍的任享有低保。甚至有的一家几口都享有低保？那么请问我们一家几口母亲有精神分裂症多年，今年开始在治疗，但效果并不理想。其继父脑子不好使，家中没有经济来源，我虽然是家中的唯一劳动力。但这几年收入不稳定。有时根本支撑不下去。母亲一人享有国家低保。前两年刚修完四件房屋。一年四季只要下雨下雪就往下渗水。里面也没有装修。只因经济条件有限。我想问国家给予农民工最低保障就没有规律吗？农民工为什么没有决定权和发言权？请到当地村镇政府和村大队实地上门调查。', '2018-02-02 09:46:56', 1);
INSERT INTO `leavemessage` VALUES (13, 'wz', '13032559558', '尊敬的领导们，你们好，打扰你们请见谅。我想问每年的低保都是怎么选的，为什么农民工没有发言权，只有争夺权。一切都是当地政府定夺吗？那为什么有的家庭比我家经济和各种条件好几倍的任享有低保。甚至有的一家几口都享有低保？那么请问我们一家几口母亲有精神分裂症多年，今年开始在治疗，但效果并不理想。其继父脑子不好使，家中没有经济来源，我虽然是家中的唯一劳动力。但这几年收入不稳定。有时根本支撑不下去。母亲一人享有国家低保。前两年刚修完四件房屋。一年四季只要下雨下雪就往下渗水。里面也没有装修。只因经济条件有限。我想问国家给予农民工最低保障就没有规律吗？农民工为什么没有决定权和发言权？请到当地村镇政府和村大队实地上门调查。', '2018-01-04 09:47:09', 1);
INSERT INTO `leavemessage` VALUES (15, '张华', '13343869957', '尊敬的领导们，你们好，打扰你们请见谅。我想问每年的低保都是怎么选的，为什么农民工没有发言权，只有争夺权。一切都是当地政府定夺吗？那为什么有的家庭比我家经济和各种条件好几倍的任享有低保。甚至有的一家几口都享有低保？那么请问我们一家几口母亲有精神分裂症多年，今年开始在治疗，但效果并不理想。其继父脑子不好使，家中没有经济来源，我虽然是家中的唯一劳动力。但这几年收入不稳定。有时根本支撑不下去。母亲一人享有国家低保。前两年刚修完四件房屋。一年四季只要下雨下雪就往下渗水。里面也没有装修。只因经济条件有限。我想问国家给予农民工最低保障就没有规律吗？农民工为什么没有决定权和发言权？请到当地村镇政府和村大队实地上门调查。', '2018-03-03 09:51:58', 1);
INSERT INTO `leavemessage` VALUES (16, '赵四', '15833022289', '尊敬的领导们，你们好，打扰你们请见谅。我想问每年的低保都是怎么选的，为什么农民工没有发言权，只有争夺权。一切都是当地政府定夺吗？那为什么有的家庭比我家经济和各种条件好几倍的任享有低保。甚至有的一家几口都享有低保？那么请问我们一家几口母亲有精神分裂症多年，今年开始在治疗，但效果并不理想。其继父脑子不好使，家中没有经济来源，我虽然是家中的唯一劳动力。但这几年收入不稳定。有时根本支撑不下去。母亲一人享有国家低保。前两年刚修完四件房屋。一年四季只要下雨下雪就往下渗水。里面也没有装修。只因经济条件有限。我想问国家给予农民工最低保障就没有规律吗？农民工为什么没有决定权和发言权？请到当地村镇政府和村大队实地上门调查。', '2018-03-03 10:45:33', 1);
INSERT INTO `leavemessage` VALUES (17, '王超', '15195578090', '今天天际不错\r\n', '2018-03-07 16:40:13', 1);
INSERT INTO `leavemessage` VALUES (18, '瓦尼', '18787777777', '今天天气很好', '2018-03-08 09:50:42', 1);
COMMIT;

-- ----------------------------
-- Table structure for operation
-- ----------------------------
DROP TABLE IF EXISTS `operation`;
CREATE TABLE `operation` (
  `operationId` int(5) NOT NULL AUTO_INCREMENT COMMENT '自增',
  `operationName` varchar(50) NOT NULL COMMENT '操作名',
  PRIMARY KEY (`operationId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation
-- ----------------------------
BEGIN;
INSERT INTO `operation` VALUES (1, '添加员工');
INSERT INTO `operation` VALUES (2, '修改员工角色');
INSERT INTO `operation` VALUES (3, '删除员工');
INSERT INTO `operation` VALUES (4, '添加客户');
INSERT INTO `operation` VALUES (5, '修改客户信息');
INSERT INTO `operation` VALUES (6, '删除客户');
INSERT INTO `operation` VALUES (7, '新建订单');
INSERT INTO `operation` VALUES (8, '查看所有人订单');
INSERT INTO `operation` VALUES (9, '修改订单');
INSERT INTO `operation` VALUES (10, '删除订单');
INSERT INTO `operation` VALUES (11, '查看订单');
COMMIT;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `orderId` int(5) NOT NULL AUTO_INCREMENT COMMENT '自增',
  `clientId` int(5) DEFAULT NULL COMMENT '客户id',
  `orderNo` varchar(20) DEFAULT NULL COMMENT '业务编号',
  `systemNo` varchar(20) DEFAULT NULL COMMENT '系统号',
  `mawbNo` varchar(50) DEFAULT NULL COMMENT '主单号',
  `hawbNo` varchar(50) DEFAULT NULL COMMENT '分单号',
  `flightNo` varchar(20) DEFAULT NULL COMMENT '航班号',
  `departDate` date DEFAULT NULL COMMENT '航班日期',
  `arriveDate` date DEFAULT NULL COMMENT '到港日期',
  `destination` varchar(50) DEFAULT NULL COMMENT '目的港',
  `cargoPiece` varchar(10) DEFAULT NULL COMMENT '货物件数',
  `cargoWeight` double(10,1) DEFAULT NULL COMMENT '货物重量',
  `chargeWeight` double(10,1) DEFAULT NULL COMMENT '计费重量',
  `cargoVolume` double(8,3) DEFAULT NULL COMMENT '货物体积',
  `customsNo` varchar(20) DEFAULT NULL COMMENT '报关单号',
  `customsStatus` int(2) NOT NULL DEFAULT '0' COMMENT '报关单状态（0:未退,1:已退,2:已寄）默认为0',
  `statusId` int(2) NOT NULL DEFAULT '6' COMMENT '订单状态 默认为0',
  `updateTime` datetime DEFAULT NULL COMMENT '最近修改时间 默认为now',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注内容',
  `userId` int(5) NOT NULL DEFAULT '0' COMMENT '用户id',
  `termsId` int(5) DEFAULT NULL,
  `loadingPort` varchar(50) DEFAULT NULL,
  `orderClientContactId` int(5) DEFAULT '0' COMMENT '订单联系人，0表示未填写',
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
BEGIN;
INSERT INTO `order` VALUES (20, 3, 'YAP1803C155', 'QT32323', '020-89898388', 'HGAWB', 'EY32', '2018-03-07', '2018-03-08', 'FAE', '21', 2121.0, 12221.0, 22.000, '', 1, 0, '2018-03-07 04:32:41', '', 2, 2, 'NKG', 3);
INSERT INTO `order` VALUES (21, 1, 'YAP1803C289', NULL, NULL, NULL, NULL, '2018-03-07', NULL, 'ee', '32', 23.0, NULL, 32.000, NULL, 0, 6, '2018-03-07 04:34:59', NULL, 0, 4, 'fe', 12);
INSERT INTO `order` VALUES (22, 1, 'YAP1803C19', NULL, NULL, NULL, NULL, '2018-03-08', NULL, 'af', '231', 3232.0, NULL, 32.000, NULL, 0, 0, '2018-03-07 04:35:28', NULL, 0, 1, 'fe', 11);
INSERT INTO `order` VALUES (23, 1, 'YAP1803C278', '', '', '', '', NULL, NULL, '', '', NULL, NULL, NULL, '', 0, 0, '2018-03-07 10:27:49', '', 2, 1, '', 1);
INSERT INTO `order` VALUES (24, 9, 'YAP1803C392', '', '', '', '', NULL, NULL, '', '', NULL, NULL, NULL, '', 0, 0, '2018-03-08 09:25:25', '', 2, 1, '', 13);
INSERT INTO `order` VALUES (25, 10, 'YAP1803C159', NULL, NULL, NULL, NULL, '2018-03-08', NULL, 'fee', '32', 32322.0, NULL, 22.000, NULL, 0, 8, '2018-03-08 10:09:07', NULL, 0, 2, 'fee', 15);
INSERT INTO `order` VALUES (26, 10, 'YAP1803C341', NULL, NULL, NULL, NULL, '2018-03-09', NULL, 'afe', '32', 3232.0, NULL, 23.000, NULL, 0, 0, '2018-03-08 10:09:40', NULL, 0, 4, 'fea', 15);
INSERT INTO `order` VALUES (27, 3, 'YAP1803C450', '', '', '', '', '2018-03-09', NULL, '', '', NULL, NULL, NULL, '', 0, 0, '2018-03-08 11:00:58', '', 2, 1, '', 3);
COMMIT;

-- ----------------------------
-- Table structure for order_cost
-- ----------------------------
DROP TABLE IF EXISTS `order_cost`;
CREATE TABLE `order_cost` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '自增',
  `orderId` int(5) NOT NULL COMMENT '订单id',
  `clientId` int(5) NOT NULL COMMENT '应收客户id',
  `cost` double(11,2) DEFAULT NULL COMMENT '应收费用',
  `invoiceNo` varchar(10) DEFAULT NULL COMMENT '发票号',
  `costStatus` int(2) NOT NULL DEFAULT '1' COMMENT '收款状态（1:未开票2:已开票3:已付款）默认为1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_cost
-- ----------------------------
BEGIN;
INSERT INTO `order_cost` VALUES (7, 20, 3, 1231.00, '', 1);
INSERT INTO `order_cost` VALUES (8, 20, 1, 122.00, '3232323', 2);
INSERT INTO `order_cost` VALUES (9, 22, 1, 11.00, '', 2);
INSERT INTO `order_cost` VALUES (10, 26, 10, 625.00, '832838', 3);
INSERT INTO `order_cost` VALUES (11, 26, 10, 212.00, '', 3);
INSERT INTO `order_cost` VALUES (12, 27, 3, 32121.00, '', 1);
COMMIT;

-- ----------------------------
-- Table structure for order_pay
-- ----------------------------
DROP TABLE IF EXISTS `order_pay`;
CREATE TABLE `order_pay` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '自增',
  `orderId` int(5) NOT NULL COMMENT '订单id',
  `supplierId` int(5) NOT NULL COMMENT '应付供应商id',
  `unitPrice` double(5,0) DEFAULT NULL COMMENT '应付单价',
  `otherPrice` double(5,0) DEFAULT NULL COMMENT '应付杂费',
  `totalPrice` double(11,0) DEFAULT NULL COMMENT '应付总价',
  `invoiceNo` varchar(10) DEFAULT NULL COMMENT '发票号',
  `payStatus` int(2) NOT NULL DEFAULT '1' COMMENT '付款状态（1:未开票2:已开票3:已付款）默认为1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_pay
-- ----------------------------
BEGIN;
INSERT INTO `order_pay` VALUES (4, 20, 3, 121, 3232, 3121, '', 1);
INSERT INTO `order_pay` VALUES (5, 22, 2, 11, NULL, 2112, '', 1);
COMMIT;

-- ----------------------------
-- Table structure for orderstatus
-- ----------------------------
DROP TABLE IF EXISTS `orderstatus`;
CREATE TABLE `orderstatus` (
  `statusId` int(5) NOT NULL,
  `statusDescription` varchar(255) NOT NULL,
  PRIMARY KEY (`statusId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderstatus
-- ----------------------------
BEGIN;
INSERT INTO `orderstatus` VALUES (0, '已接单-等待进仓');
INSERT INTO `orderstatus` VALUES (1, '货进仓-等待报关');
INSERT INTO `orderstatus` VALUES (2, '已报关-等待起飞');
INSERT INTO `orderstatus` VALUES (3, '已起飞-等待到港');
INSERT INTO `orderstatus` VALUES (4, '已到港-等待提货');
INSERT INTO `orderstatus` VALUES (5, '已完成');
INSERT INTO `orderstatus` VALUES (6, '审核中');
INSERT INTO `orderstatus` VALUES (7, '已取消');
INSERT INTO `orderstatus` VALUES (8, '审核未通过');
COMMIT;

-- ----------------------------
-- Table structure for power
-- ----------------------------
DROP TABLE IF EXISTS `power`;
CREATE TABLE `power` (
  `powerId` int(5) NOT NULL AUTO_INCREMENT COMMENT '自增',
  `powerName` varchar(50) NOT NULL COMMENT '权限名',
  PRIMARY KEY (`powerId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of power
-- ----------------------------
BEGIN;
INSERT INTO `power` VALUES (1, '员工管理');
INSERT INTO `power` VALUES (2, '客户管理');
INSERT INTO `power` VALUES (3, '所有订单管理');
INSERT INTO `power` VALUES (4, '本人订单管理');
COMMIT;

-- ----------------------------
-- Table structure for power_operation
-- ----------------------------
DROP TABLE IF EXISTS `power_operation`;
CREATE TABLE `power_operation` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '自增',
  `powerId` int(5) NOT NULL COMMENT '权限id',
  `operationId` int(5) NOT NULL COMMENT '操作id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of power_operation
-- ----------------------------
BEGIN;
INSERT INTO `power_operation` VALUES (1, 1, 1);
INSERT INTO `power_operation` VALUES (2, 1, 2);
INSERT INTO `power_operation` VALUES (3, 1, 3);
INSERT INTO `power_operation` VALUES (4, 2, 4);
INSERT INTO `power_operation` VALUES (5, 2, 5);
INSERT INTO `power_operation` VALUES (6, 2, 6);
INSERT INTO `power_operation` VALUES (7, 3, 7);
INSERT INTO `power_operation` VALUES (8, 3, 8);
INSERT INTO `power_operation` VALUES (9, 3, 9);
INSERT INTO `power_operation` VALUES (10, 3, 10);
INSERT INTO `power_operation` VALUES (11, 4, 7);
INSERT INTO `power_operation` VALUES (12, 4, 9);
INSERT INTO `power_operation` VALUES (13, 4, 10);
INSERT INTO `power_operation` VALUES (14, 4, 11);
COMMIT;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `roleId` varchar(10) NOT NULL COMMENT '自增',
  `roleName` varchar(50) NOT NULL COMMENT '角色名',
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
BEGIN;
INSERT INTO `role` VALUES ('1', '员工');
INSERT INTO `role` VALUES ('2', '主管');
INSERT INTO `role` VALUES ('3', '管理员');
COMMIT;

-- ----------------------------
-- Table structure for role_power
-- ----------------------------
DROP TABLE IF EXISTS `role_power`;
CREATE TABLE `role_power` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '自增',
  `roleId` int(5) NOT NULL COMMENT '角色id',
  `powerId` int(5) NOT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_power
-- ----------------------------
BEGIN;
INSERT INTO `role_power` VALUES (1, 1, 1);
INSERT INTO `role_power` VALUES (2, 1, 2);
INSERT INTO `role_power` VALUES (3, 2, 3);
INSERT INTO `role_power` VALUES (4, 3, 4);
COMMIT;

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `supplierId` int(5) NOT NULL AUTO_INCREMENT COMMENT '自增',
  `supplierName` varchar(50) NOT NULL COMMENT '供应商名',
  `supplierAddress` varchar(255) DEFAULT NULL COMMENT '供应商地址',
  PRIMARY KEY (`supplierId`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supplier
-- ----------------------------
BEGIN;
INSERT INTO `supplier` VALUES (1, '中国远洋物流有限公司 ', '北京市朝阳区八里庄北里220号中远物流大厦1da');
INSERT INTO `supplier` VALUES (2, '中国远洋运输（集团）总公司', '北京市复兴门内大街158号远洋大厦F11-12');
INSERT INTO `supplier` VALUES (3, '联邦快递(中国)有限公司', '北京市顺义区天竺空港工业区天柱路12号');
INSERT INTO `supplier` VALUES (4, '中邮物流有限责任公司', '北京市西城区金融大街3号');
INSERT INTO `supplier` VALUES (5, '中铁现代物流科技股份有限公司', '北京市海淀区皂君庙14号院1号楼201.202室16楼');
INSERT INTO `supplier` VALUES (20, '和5个人', '︿(￣︶￣)︿');
INSERT INTO `supplier` VALUES (22, '那你呢', '你');
INSERT INTO `supplier` VALUES (27, 'fejife', 'fjei ');
COMMIT;

-- ----------------------------
-- Table structure for supplier_suppliercontact
-- ----------------------------
DROP TABLE IF EXISTS `supplier_suppliercontact`;
CREATE TABLE `supplier_suppliercontact` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '自增',
  `supplierId` int(5) NOT NULL COMMENT '供应商id',
  `supplierContactId` int(5) NOT NULL COMMENT '联系人id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supplier_suppliercontact
-- ----------------------------
BEGIN;
INSERT INTO `supplier_suppliercontact` VALUES (26, 4, 26);
INSERT INTO `supplier_suppliercontact` VALUES (27, 3, 27);
INSERT INTO `supplier_suppliercontact` VALUES (32, 22, 32);
INSERT INTO `supplier_suppliercontact` VALUES (33, 20, 33);
INSERT INTO `supplier_suppliercontact` VALUES (36, 22, 36);
INSERT INTO `supplier_suppliercontact` VALUES (37, 5, 37);
INSERT INTO `supplier_suppliercontact` VALUES (38, 1, 38);
INSERT INTO `supplier_suppliercontact` VALUES (41, 27, 41);
INSERT INTO `supplier_suppliercontact` VALUES (42, 2, 42);
COMMIT;

-- ----------------------------
-- Table structure for suppliercontact
-- ----------------------------
DROP TABLE IF EXISTS `suppliercontact`;
CREATE TABLE `suppliercontact` (
  `supplierContactId` int(5) NOT NULL AUTO_INCREMENT COMMENT '自增',
  `supplierContactName` varchar(50) NOT NULL COMMENT '联系人姓名',
  `supplierContactTel` varchar(50) DEFAULT NULL COMMENT '联系人电话',
  `supplierContactEmail` varchar(50) DEFAULT NULL COMMENT '联系人邮箱',
  `supplierContactQQ` varchar(20) DEFAULT NULL COMMENT '联系人QQ',
  PRIMARY KEY (`supplierContactId`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of suppliercontact
-- ----------------------------
BEGIN;
INSERT INTO `suppliercontact` VALUES (26, '分机', '计费放假诶哦', '2@qq.com', '');
INSERT INTO `suppliercontact` VALUES (27, '王峥', '21121121', '', '');
INSERT INTO `suppliercontact` VALUES (32, '宝宝', '323232', '43212@qq.com', '222');
INSERT INTO `suppliercontact` VALUES (33, 'rfrr', 'fefe', '', '234');
INSERT INTO `suppliercontact` VALUES (36, 'fds', 'fdas', '', '111333');
INSERT INTO `suppliercontact` VALUES (37, 'fdfdea', 'feafea', '', '341431');
INSERT INTO `suppliercontact` VALUES (38, '︿(￣︶￣)︿额', '3232', '', '');
INSERT INTO `suppliercontact` VALUES (41, 'fefewa', 'feafae', '', '565ew');
INSERT INTO `suppliercontact` VALUES (42, '赵振', '233289', '32328@qq.com', '3232239329');
COMMIT;

-- ----------------------------
-- Table structure for terms
-- ----------------------------
DROP TABLE IF EXISTS `terms`;
CREATE TABLE `terms` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of terms
-- ----------------------------
BEGIN;
INSERT INTO `terms` VALUES (1, 'CIF', 'CIF：成本、保险费加运费', '是指卖方必须在合同规定的装运期内在装运港将货物交至运往指定目的港的船上，负担货物越过船舷以前为止的一切费用和货物灭失或损坏的风险并办理货运保险，支付保险费，以及负责租船订舱，支付从装运港到目的港的正常运费。');
INSERT INTO `terms` VALUES (2, 'FOB', 'FOB：船上交货', '该术语规定卖方必须在合同规定的装运期内在指定的装运港将货物交至买方指定的船上，并负担货物越过船舷以前为止的一切费用和货物灭失或损坏的风险。');
INSERT INTO `terms` VALUES (3, 'EXW', 'EXW：工厂交货', '是指卖方将货物从工厂（或仓库）交付给买方，除非另有规定，卖方不负责将货物装上买方安排的车或船上，也不办理出口报关手续。买方负担自卖方工厂交付后至最终目的地的一切费用和风险。');
INSERT INTO `terms` VALUES (4, 'DDU', 'DDU：未完税交货', '是指卖方将货物运至进口国指定的目的地交付给买方，不办理进口手续，也不从交货的运输工具上将货物卸下，即完成交货。卖方应该承担货物运至指定目的地为止的一切费用与风险，不包括在需要办理海关手续时在目的地进口应缴纳的任何“税费”（包括办理海关手续的责任和风险，以及交纳手续费、关税、税款和其他费用）。买方必须承担此项“税费”和因其未能及时办理货物进口清关手续而引起的费用和风险');
INSERT INTO `terms` VALUES (5, 'DDP', 'DDP：进口国完税后交货', '是指卖方将货物运至进口国指定地点，将在交货运输工具上尚未卸下的货物交付给买方，卖方负责办理进口报关手续，交付在需要办理海关手续时在目的地应缴纳的任何进口“税费”。卖方负担将货物交付给买方前的一切费用和风险。如卖方无法直接或间接的取得进口许可证时不宜采用该术语。DDP是卖方责任最大的贸易术语。');
INSERT INTO `terms` VALUES (6, 'DAP', 'DAP：目的地交货', '是指卖方已经用运输工具把货物运送到达买方指定的目的地后，将装在运输工具上的货物（不用卸载）交由买方处置，即完成交货。该术语出自INCOTERMS 2010。');
COMMIT;

-- ----------------------------
-- Table structure for user_base
-- ----------------------------
DROP TABLE IF EXISTS `user_base`;
CREATE TABLE `user_base` (
  `userId` varchar(64) NOT NULL COMMENT '自增',
  `userAccount` varchar(64) NOT NULL COMMENT '用户登录帐号',
  `userPwd` varchar(64) NOT NULL COMMENT '用户登陆密码',
  `userName` varchar(64) NOT NULL COMMENT '用户姓名',
  `userSex` char(3) DEFAULT NULL COMMENT '用户性别',
  `userStatus` int(1) NOT NULL DEFAULT '1' COMMENT '0：离职；1：在职',
  `showPicPath` varchar(255) DEFAULT NULL,
  `roleId` int(255) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_base
-- ----------------------------
BEGIN;
INSERT INTO `user_base` VALUES ('1', 'zongsiyao', 'ﾼ￫￧ﾽ￨￩ﾼﾸ￯￧￨﾿￪￩￫￦￯￧￯ﾻ￪￬ﾸ￩￨￨￩￮ﾽﾻﾼ﾿', '宗思遥', '男', 1, 'img/headsculpture/view.jpg', 2);
INSERT INTO `user_base` VALUES ('10', 'chaoge', '￦￯ﾺﾽ￧ﾼﾺﾼ￫￬ﾺ￮￪ﾺﾽ￬￮￮￭￨ﾺﾼﾺ￦￭￯￭ﾻﾺ￮￫￫', '王老板', '男', 1, 'img/headsculpture/view.jpg', 2);
INSERT INTO `user_base` VALUES ('11', 'wang', '￪﾿￩ﾺ￯ﾻﾺ￪￯￪￪￩￪ﾻ￪￮￭￭﾿ﾽ￬￧ﾽﾽﾼ￦￨￫￭ﾺ￧ﾼ', '问你', '男', 1, 'img/headsculpture/view.jpg', 2);
INSERT INTO `user_base` VALUES ('2', 'wangchao', '123', '王超', '男', 1, 'img/headsculpture/profile-pic.jpg', 1);
INSERT INTO `user_base` VALUES ('4', 'wangzheng', 'ﾼ￫￧ﾽ￨￩ﾼﾸ￯￧￨﾿￪￩￫￦￯￧￯ﾻ￪￬ﾸ￩￨￨￩￮ﾽﾻﾼ﾿', '王峥', '男', 1, 'img/headsculpture/cars.jpg', 3);
INSERT INTO `user_base` VALUES ('402847686866cc5c016866f657970000', 'eafea', '222', 'feafea', '男', 1, NULL, 3);
INSERT INTO `user_base` VALUES ('40284e816550e326016550e3991e0000', 'ww', '123', 'bb', '男', 1, NULL, 1);
INSERT INTO `user_base` VALUES ('40284e81655295b90165529634280000', '123', '123', '1234', '男', 1, NULL, 1);
INSERT INTO `user_base` VALUES ('40284e81655295b9016552966b6f0001', 'DFA', '123', '1234', '男', 1, NULL, 1);
INSERT INTO `user_base` VALUES ('40284e81655295b9016552967add0002', 'FEA', '123', '1234', '男', 1, NULL, 1);
INSERT INTO `user_base` VALUES ('40284e81655295b90165529688350003', 'FEAAZ', '123', '1234', '男', 0, NULL, 1);
INSERT INTO `user_base` VALUES ('40284e81655295b901655296942a0004', 'FEAAZEEE', '123', '1234', '男', 1, NULL, 1);
INSERT INTO `user_base` VALUES ('40284e81655295b9016552969fc10005', 'FEAAZEEEZZ', '123', '1234', '男', 1, NULL, 1);
INSERT INTO `user_base` VALUES ('40284e81655295b901655296ac760006', 'FEAAZEEEZZN N', '123', '1234', '男', 1, NULL, 1);
INSERT INTO `user_base` VALUES ('40284e81655295b901655296ca5e0007', 'FEAZ', '123', '1234', '男', 0, NULL, 1);
INSERT INTO `user_base` VALUES ('40284e81655295b90165529780b40008', 'RE', 'EE', 'E', '男', 1, NULL, 1);
INSERT INTO `user_base` VALUES ('40284e81655295b9016552978a500009', 'BB', 'EE', 'E', '男', 1, NULL, 1);
INSERT INTO `user_base` VALUES ('40284e81655295b90165529795c9000a', 'ZE', 'EE', 'E', '男', 1, NULL, 1);
INSERT INTO `user_base` VALUES ('40284e81655295b9016552979f03000b', 'NB', 'EE', 'E', '男', 1, NULL, 1);
INSERT INTO `user_base` VALUES ('40284e81655295b901655297a6de000c', 'EEE', 'EE', 'E', '男', 1, NULL, 1);
INSERT INTO `user_base` VALUES ('40284e81655295b901655297b424000d', 'FEFEEA', 'EE', 'E', '男', 1, NULL, 1);
INSERT INTO `user_base` VALUES ('40284e81655295b901655297c305000e', 'CCER', 'EE', 'E', '男', 1, NULL, 1);
INSERT INTO `user_base` VALUES ('40284e81655295b901655297cdbb000f', 'FEFEEZZ', 'EE', 'E', '男', 1, NULL, 1);
INSERT INTO `user_base` VALUES ('40284e81655295b901655297d7240010', 'NTHG', 'EE', 'E', '男', 1, NULL, 1);
INSERT INTO `user_base` VALUES ('40284e81655295b901655297e20a0011', 'NRER', 'EE', 'E', '男', 1, NULL, 1);
INSERT INTO `user_base` VALUES ('40284e81655295b901655297f3570012', 'FVV', 'EE', 'E', '男', 1, NULL, 1);
INSERT INTO `user_base` VALUES ('40284e81655295b901655297fce90013', 'EEDD', 'EE', 'E', '男', 1, NULL, 1);
INSERT INTO `user_base` VALUES ('40284e8165624b30016562502c8c0000', 'FDA', 'A', 'EA', '男', 1, NULL, 1);
INSERT INTO `user_base` VALUES ('40284e8165624b300165625311310001', 'A', 'FE', 'E', '男', 0, NULL, 3);
INSERT INTO `user_base` VALUES ('40284e8165624b3001656253d5b50002', 'FE', 'AE', 'EFA', '男', 1, NULL, 1);
INSERT INTO `user_base` VALUES ('40284e8165624b3001656254b59a0003', 'ww2', '21', 'WA', '男', 1, NULL, 1);
INSERT INTO `user_base` VALUES ('40284e8165676d9a0165676f299b0000', 'faaf', 'fe', 'fea', '女', 0, NULL, 1);
INSERT INTO `user_base` VALUES ('40284e81656772ba0165677335eb0000', '123456', '123', '赵振', '女', 1, NULL, 2);
INSERT INTO `user_base` VALUES ('6', 'liujianlou', 'ﾼ￫￧ﾽ￨￩ﾼﾸ￯￧￨﾿￪￩￫￦￯￧￯ﾻ￪￬ﾸ￩￨￨￩￮ﾽﾻﾼ﾿', '刘建楼', '男', 1, 'img/headsculpture/view.jpg', 3);
INSERT INTO `user_base` VALUES ('7', 'ffeji', 'ﾼ￫￧ﾽ￨￩ﾼﾸ￯￧￨﾿￪￩￫￦￯￧￯ﾻ￪￬ﾸ￩￨￨￩￮ﾽﾻﾼ﾿', 'ejji', '男', 0, 'img/headsculpture/view.jpg', 2);
INSERT INTO `user_base` VALUES ('8', 'wc', 'ﾼ￫￧ﾽ￨￩ﾼﾸ￯￧￨﾿￪￩￫￦￯￧￯ﾻ￪￬ﾸ￩￨￨￩￮ﾽﾻﾼ﾿', '冲啊', '男', 0, 'img/headsculpture/view.jpg', 3);
INSERT INTO `user_base` VALUES ('9', 'llnnn', 'ﾼ￫￧ﾽ￨￩ﾼﾸ￯￧￨﾿￪￩￫￦￯￧￯ﾻ￪￬ﾸ￩￨￨￩￮ﾽﾻﾼ﾿', '334', '男', 0, 'img/headsculpture/view.jpg', 2);
COMMIT;

-- ----------------------------
-- Table structure for userheadsculpture
-- ----------------------------
DROP TABLE IF EXISTS `userheadsculpture`;
CREATE TABLE `userheadsculpture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `picturepath` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userheadsculpture
-- ----------------------------
BEGIN;
INSERT INTO `userheadsculpture` VALUES (1, 2, 'img/headsculpture/profile-pic.jpg');
INSERT INTO `userheadsculpture` VALUES (2, 1, 'img/headsculpture/view.jpg');
INSERT INTO `userheadsculpture` VALUES (3, 4, 'img/headsculpture/cars.jpg');
INSERT INTO `userheadsculpture` VALUES (4, 6, 'img/headsculpture/view.jpg');
INSERT INTO `userheadsculpture` VALUES (13, 2, 'img/headsculpture/view.jpg');
INSERT INTO `userheadsculpture` VALUES (21, 7, 'img/headsculpture/view.jpg');
INSERT INTO `userheadsculpture` VALUES (23, 2, 'img/headsculpture/cars.jpg');
INSERT INTO `userheadsculpture` VALUES (24, 2, 'img/headsculpture/view2.jpg');
INSERT INTO `userheadsculpture` VALUES (25, 9, 'img/headsculpture/view.jpg');
INSERT INTO `userheadsculpture` VALUES (26, 10, 'img/headsculpture/view.jpg');
INSERT INTO `userheadsculpture` VALUES (27, 2, 'img/headsculpture/1520415615563.jpg');
INSERT INTO `userheadsculpture` VALUES (28, 2, 'img/headsculpture/1520415625233.jpg');
INSERT INTO `userheadsculpture` VALUES (29, 11, 'img/headsculpture/view.jpg');
INSERT INTO `userheadsculpture` VALUES (30, 2, 'img/headsculpture/1520477995382.jpg');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
