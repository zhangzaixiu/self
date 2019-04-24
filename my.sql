/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : 127.0.0.1:3306
Source Database       : my

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-04-24 17:00:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for my_address
-- ----------------------------
DROP TABLE IF EXISTS `my_address`;
CREATE TABLE `my_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `province` int(11) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `district` int(11) DEFAULT NULL COMMENT '区域',
  `address` varchar(255) DEFAULT '' COMMENT '详细地址',
  `linkman` varchar(30) DEFAULT NULL COMMENT '联系人',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别',
  `mobile` varchar(11) DEFAULT NULL COMMENT '联系方式',
  `label` tinyint(1) DEFAULT NULL COMMENT '标签',
  `is_default` tinyint(1) DEFAULT '0' COMMENT '是否默认',
  `user_id` int(11) DEFAULT '0',
  `update_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  `create_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of my_address
-- ----------------------------
INSERT INTO `my_address` VALUES ('2', '389', '11', '1101', '110102', '324243', '567', null, '15467865432', null, '0', '0', '2018-12-24 13:46:00', '2018-12-24 13:46:00');
INSERT INTO `my_address` VALUES ('3', '389', '11', '1101', '110102', 'werwe', '435', null, '15054252535', null, '0', '0', '2018-12-24 13:48:28', '2018-12-24 13:48:28');
INSERT INTO `my_address` VALUES ('4', '389', '11', '1101', '110102', '23423', 'wr', null, '14534545432', null, '0', '0', '2018-12-24 13:52:27', '2018-12-24 13:52:27');
INSERT INTO `my_address` VALUES ('5', '389', '11', '1401', '140106', '342342', '111', null, '15054223320', null, '0', '0', '2018-12-24 13:57:01', '2018-12-24 13:57:01');
INSERT INTO `my_address` VALUES ('6', '389', '14', '1401', '140105', '23423', '3423', null, '15054258596', null, '0', '0', '2018-12-24 14:27:17', '2018-12-24 14:27:17');
INSERT INTO `my_address` VALUES ('7', '389', '0', '14', '140106', '尔特热特瑞有人土土于一体岩土体育u', 'T认识', null, '15054223320', null, '1', '0', '2018-12-24 14:47:57', '2018-12-24 14:47:57');
INSERT INTO `my_address` VALUES ('8', '389', '13', '1302', '130202', 'ertert', 'qqq', null, '15554856253', null, '0', '0', '2018-12-24 15:18:25', '2018-12-24 15:18:25');

-- ----------------------------
-- Table structure for my_banner
-- ----------------------------
DROP TABLE IF EXISTS `my_banner`;
CREATE TABLE `my_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) DEFAULT NULL COMMENT '1图片 2视频',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `file_id` int(11) DEFAULT NULL COMMENT '文件id',
  `link_url` varchar(255) DEFAULT NULL COMMENT '链接',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除',
  `update_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '最后修改时间',
  `create_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '注册时间',
  `user_id` int(11) DEFAULT '0' COMMENT '11',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of my_banner
-- ----------------------------
INSERT INTO `my_banner` VALUES ('26', '1', '1', '2567', 'http://self.com/admin/banner/index.html', '0', '2018-09-05 17:25:23', '2018-09-05 17:25:23', '0');
INSERT INTO `my_banner` VALUES ('27', '1', '1', '2568', 'http://self.com/admin/banner/index.html', '0', '2018-09-05 17:25:34', '2018-09-05 17:25:34', '0');

-- ----------------------------
-- Table structure for my_cart
-- ----------------------------
DROP TABLE IF EXISTS `my_cart`;
CREATE TABLE `my_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL COMMENT '产品id',
  `customer_id` int(11) DEFAULT NULL COMMENT '会员ID',
  `count` int(11) DEFAULT NULL COMMENT '数量',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='购物车';

-- ----------------------------
-- Records of my_cart
-- ----------------------------
INSERT INTO `my_cart` VALUES ('4', '9', '389', '2', '2018-12-24 16:42:46', '2018-12-24 16:42:46');
INSERT INTO `my_cart` VALUES ('9', '11', '389', '2', '2019-04-24 09:30:20', '2019-04-24 09:30:20');
INSERT INTO `my_cart` VALUES ('11', '7', '389', '1', '2019-04-24 09:32:48', '2019-04-24 09:32:48');

-- ----------------------------
-- Table structure for my_comment
-- ----------------------------
DROP TABLE IF EXISTS `my_comment`;
CREATE TABLE `my_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `order_attr_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `score` tinyint(2) DEFAULT '5',
  `comment` text,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of my_comment
-- ----------------------------

-- ----------------------------
-- Table structure for my_company
-- ----------------------------
DROP TABLE IF EXISTS `my_company`;
CREATE TABLE `my_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '公司名称',
  `linkman` varchar(20) DEFAULT NULL COMMENT '联系人',
  `mobile` char(12) DEFAULT NULL COMMENT 'l联系方式',
  `category_id` int(11) DEFAULT '0' COMMENT '所属行业分类',
  `logo` int(11) DEFAULT NULL COMMENT 'logo路径',
  `license` int(11) DEFAULT NULL COMMENT '营业执照',
  `introduce` text COMMENT '简介',
  `audit_status` tinyint(3) DEFAULT '1' COMMENT '1 待审核 2 已通过 3已拒绝 ',
  `status` tinyint(3) DEFAULT '1' COMMENT '1正常 2停止',
  `start_time` datetime DEFAULT NULL COMMENT '合作开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '合作结束时间',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of my_company
-- ----------------------------
INSERT INTO `my_company` VALUES ('1', '自营', '65756', '15563995229', '2', '2585', '2586', '<p>567567</p>', '1', '1', null, null, '0', '2018-09-25 15:58:34', '2018-09-25 15:58:34');

-- ----------------------------
-- Table structure for my_company_contract
-- ----------------------------
DROP TABLE IF EXISTS `my_company_contract`;
CREATE TABLE `my_company_contract` (
  `company_id` int(11) NOT NULL,
  `file_id` int(11) DEFAULT NULL,
  `type` tinyint(3) DEFAULT '1' COMMENT '文件类型 1签约合同',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公司合作合同文件对应表';

-- ----------------------------
-- Records of my_company_contract
-- ----------------------------

-- ----------------------------
-- Table structure for my_coupon
-- ----------------------------
DROP TABLE IF EXISTS `my_coupon`;
CREATE TABLE `my_coupon` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '优惠券名称',
  `coupon` decimal(10,0) DEFAULT '0' COMMENT '优惠券金额',
  `price` decimal(10,2) DEFAULT '0.00' COMMENT '满减额度',
  `product_category_id` int(11) DEFAULT NULL,
  `start_time` date DEFAULT NULL COMMENT '开始时间',
  `end_time` date DEFAULT NULL COMMENT '结束时间',
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='优惠券表';

-- ----------------------------
-- Records of my_coupon
-- ----------------------------
INSERT INTO `my_coupon` VALUES ('1', '注册优惠券', '10', '10.00', null, '2018-12-19', '2018-12-29', '2018-12-18 15:32:21', '2018-12-25 15:32:25');
INSERT INTO `my_coupon` VALUES ('2', '海鲜类优惠券', '20', '150.00', '19', '2018-12-18', '2019-01-18', '2018-12-19 15:33:35', '2019-01-03 15:33:40');
INSERT INTO `my_coupon` VALUES ('3', '测试过期优惠券', '15', '20.00', null, '2018-12-19', '2018-12-20', null, null);

-- ----------------------------
-- Table structure for my_customer
-- ----------------------------
DROP TABLE IF EXISTS `my_customer`;
CREATE TABLE `my_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) DEFAULT '1' COMMENT '用户类型 1普通用户 2 vip',
  `name` varchar(50) DEFAULT '' COMMENT '客户名称',
  `mobile` varchar(15) DEFAULT '0' COMMENT '联系电话',
  `password` varchar(255) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL COMMENT '小程序openid',
  `source` tinyint(3) DEFAULT NULL COMMENT '来源(1web 2 admin 3app)',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态 (1 正常 2冻结)',
  `start_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '会员开始时间',
  `end_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '会员结束时间',
  `isDelete` tinyint(2) DEFAULT '0',
  `token` varchar(255) DEFAULT NULL COMMENT 'token',
  `user_id` int(11) DEFAULT '0',
  `update_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  `create_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=547 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='客户表';

-- ----------------------------
-- Records of my_customer
-- ----------------------------
INSERT INTO `my_customer` VALUES ('389', '1', '18888888888', '18888888888', '21218cca77804d2ba1922c33e0151105', 'owTnm5cYCaG8TsywwW-G3LJUzbnU', '1', '2', null, null, '0', '$2y$10$2CIyJFytW9GsYl6cNTGI.uf5rhtC3L3SX58/wTRsE/XMsbWN.sjMS', '910', '2019-04-24 16:21:58', '0000-00-00 00:00:00');
INSERT INTO `my_customer` VALUES ('545', '2', '15961019696', '15961019696', '21218cca77804d2ba1922c33e0151105', null, '2', '2', null, null, '0', '$2y$10$zesDjADDxpPhqIGhTSjv5.cF/.JHHUCkUM.ogiCJKC5ar01CctjCK', '0', '2018-12-27 15:49:07', '0000-00-00 00:00:00');
INSERT INTO `my_customer` VALUES ('546', '1', '18888888777', '18888888777', '21218cca77804d2ba1922c33e0151105', null, '1', '1', null, null, '0', '3453', '0', '2018-08-29 15:57:09', '2018-08-29 15:57:09');

-- ----------------------------
-- Table structure for my_customer_coupon
-- ----------------------------
DROP TABLE IF EXISTS `my_customer_coupon`;
CREATE TABLE `my_customer_coupon` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '1未使用 2已使用',
  `use_time` datetime DEFAULT NULL COMMENT '使用时间',
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户优惠券表';

-- ----------------------------
-- Records of my_customer_coupon
-- ----------------------------
INSERT INTO `my_customer_coupon` VALUES ('1', '389', '1', '1', null, '2018-11-26 15:34:01', '2019-01-04 15:34:04');
INSERT INTO `my_customer_coupon` VALUES ('2', '389', '2', '1', null, '2018-12-10 15:35:03', '2018-12-19 15:35:06');
INSERT INTO `my_customer_coupon` VALUES ('3', '389', '3', '1', null, null, null);

-- ----------------------------
-- Table structure for my_enter_category
-- ----------------------------
DROP TABLE IF EXISTS `my_enter_category`;
CREATE TABLE `my_enter_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `img` int(11) DEFAULT NULL,
  `is_show` tinyint(1) DEFAULT '1' COMMENT '1是 2否',
  `sort` int(11) DEFAULT '1' COMMENT '排序',
  `step` text COMMENT '入驻步骤',
  `require` text COMMENT '入驻要求',
  `cost` text COMMENT '费用说明',
  `question` text COMMENT '常见问题',
  `delete_time` datetime DEFAULT NULL COMMENT '删除时间',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of my_enter_category
-- ----------------------------
INSERT INTO `my_enter_category` VALUES ('6', '567567', '2603', '1', '1', '<p>567</p>', '<p>567</p>', '<p>567567</p>', '<p>567567</p>', '0000-00-00 00:00:00', '2018-10-13 15:49:17', '2018-10-13 15:52:00');
INSERT INTO `my_enter_category` VALUES ('7', '111', '2604', '1', '1', '<p>231</p>', '<p>12123</p>', '<p>213123</p>', '<p>123123</p>', null, '2018-10-13 15:57:28', '2018-10-13 15:57:28');

-- ----------------------------
-- Table structure for my_frontend_message
-- ----------------------------
DROP TABLE IF EXISTS `my_frontend_message`;
CREATE TABLE `my_frontend_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `category_id` varchar(10) DEFAULT NULL COMMENT '消息类型',
  `region_id` int(11) DEFAULT NULL COMMENT '地区',
  `region` varchar(255) DEFAULT NULL COMMENT '省市区',
  `address` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `linkman` varchar(30) DEFAULT NULL COMMENT '联系人',
  `mobile` char(15) DEFAULT NULL COMMENT '联系方式',
  `img` int(11) DEFAULT NULL COMMENT '封面图片',
  `detail` text COMMENT '详情',
  `status` tinyint(1) DEFAULT '1' COMMENT '1草稿 2发布 3下线',
  `area` decimal(10,2) DEFAULT NULL COMMENT '面积',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `unit` varchar(10) DEFAULT NULL COMMENT '单位',
  `number` int(11) DEFAULT NULL COMMENT '数量',
  `update_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '最后修改时间',
  `create_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '注册时间',
  `user_id` int(11) DEFAULT '0' COMMENT '11',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='信息中心';

-- ----------------------------
-- Records of my_frontend_message
-- ----------------------------
INSERT INTO `my_frontend_message` VALUES ('1', '人同意让他一人同意让他一人', '3', '340304', null, '43534', '345', '18888888888', '1976', '4353453454645645', '2', '345.00', '789789.00', '元/月', '2344', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_frontend_message` VALUES ('2', '67867867', '5', '3402', null, '678678', '678678', '15563995229', '1977', '867867', '1', '67867.00', '678678.00', '元/月', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_frontend_message` VALUES ('3', '79797', '2', '450304', null, '678678', '67868', '18888888888', '2350', '67867867', '2', null, '678.00', null, '678', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_frontend_message` VALUES ('4', '57567', '5', '340311', null, '567567', '234234', '15054223320', '2350', '<p><span style=\"font-weight: bold;\">op[[op[poo90-90</span></p>', '2', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_frontend_message` VALUES ('5', '厂房信息标题1', '1', '340304', null, '山东路', '郭孝东', '13730928677', '2350', '<p>大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神大神<img style=\"width: 700px;\" src=\"/files/richText/910-1533101930-11463.jpg\" data-filename=\"image name\"></p>', '2', '100.00', '10000.00', '元/平', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '910');
INSERT INTO `my_frontend_message` VALUES ('6', '厂房信息标题2', '1', '500101', null, '山东路', '郭孝东', '13730921234', '2352', '得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格得风格', '2', '10000.00', '2000.00', '元/平', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '910');
INSERT INTO `my_frontend_message` VALUES ('7', '技术信息标题', '4', '340203', null, '山东路', '郭孝东', '13730928572', '2353', '技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及技术技术及', '2', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_frontend_message` VALUES ('8', '京东618 ', '3', '370213', null, '中央大道', '国鹏飞', '18369727789', '2494', '我是详细内容', '1', null, '3.00', '元/月', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_frontend_message` VALUES ('9', '查看草稿状态页面下的按钮', '1', '450803', null, '火炬路100号', '国鹏飞', '15599988877', '2386', '我是详细内容', '3', '3.00', '2.00', '元', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_frontend_message` VALUES ('13', '会员发布。', '3', '340000', null, '山东路', '孝东', '13730911111', '2396', '就好看了就立刻就好看了就立刻就好看了就立刻就好看了就立刻就好看了就立刻就好看了就立刻就好看了就立刻就好看了就立刻', '2', null, '1000.00', '元/月', '10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `my_frontend_message` VALUES ('14', '用工信息-081001', '3', '450204', null, '456456', '67867', '15054223320', '2538', 'etrt<span style=\"color: rgb(62, 62, 62); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">南京66岁的刘大姐，年年都要吃海参，今年老同学给她推荐了一位家住大连，和海参打了二十多年交道的老参农微信号， 原本要花上7千多才能买一斤的辽刺参，刘大姐愣是只花了“白菜价”！本想着加上微信，从这个老实本分的参农那里了解 了解海参知识，没想到聊一聊竟然捡了个大便宜，“白菜价”买海参！刘大姐的儿子担心妈妈贪便宜吃亏上当，买到假海参、 劣质海参，第二天就拿着海燕家海参到当地质检部门去检查，结果报告出来，确实是正宗的淡干辽刺参……</span><p style=\"margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;=\"\" line-height:=\"\" 2em;=\"\" word-wrap:=\"\" break-word=\"\" !important;\"=\"\">老同学知道了这件事，他和刘大姐开玩笑：“你这是咸吃萝卜淡操心，你说的那个郭海燕，她家在大连捞海参卖海 参二十多年了，为人本本分分，从来不会弄虚作假，她家的海参，价格实在，品质有保证，在当地口碑特别好，我认识好几年了， 每年都从她那儿拿海参，从来没出过差错，她家的海参泡发出来，个头能涨十多倍，肉壁厚实有弹性，参足密，参筋白，参刺长， 吃起来口感特别好，这样的好海参，没有认识人，你去大连也买不到。”</p>', '2', null, '500000.00', '元/月', '90', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_frontend_message` VALUES ('15', '测试信息中心搜索跳转测试信息中心搜索跳转', '1', '340203', null, '详细地址详细地址详细地址详细地址详细地址详细地址详细地址详细地址详细地址详细地址详细地址1', '张武武', '18512343212', '2606', '<p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">中国驻叙利亚大使馆：不实，系叙利亚媒体曲解。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">　　据中国驻叙利亚大使馆官网8月9日消息，就《祖国报》8月1日第2955期有关中国驻叙利亚大使齐前进、武官王瑞正表示“中国军队拟以某种形式参与叙政府军对伊德利卜战役”的报道，《祖国报》收到中国驻叙利亚使馆澄清如下：</p><div style=\"color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\"><img src=\"https://p0.ssl.qhimgs4.com/t018029e134565bff5c.webp\" alt=\"t018029e134565bff5c.jpg?size=697x449\" style=\"border-width: initial; border-style: none; display: block; margin: 7px auto; max-width: 100%; width: 660px;\"></div><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">　　谨告知上述报道不属实，系对齐前进大使和王瑞正武官有关表态的曲解。众所周知，中国坚定支持通过政治途径和平解决叙利亚危机。中国从未向叙利亚派遣军事力量参与叙政府军的任何军事行动，今后也不会这样做。中国支持叙利亚反对恐怖主义这一全球痼疾的斗争，呼吁国际社会共同努力，用统一标准根除恐怖主义。</p>', '2', '30000.00', '10000.00', '元', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_frontend_message` VALUES ('16', '测试信息中心搜索跳转2', '1', '340203', null, '11', '11', '18311111111', '2607', '测试信息中心搜索跳转测试信息中心搜索跳转测试信息中心搜索跳转测试信息中心搜索跳转测试信息中心搜索跳转', '2', '1.00', '1111.00', '元/平', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_frontend_message` VALUES ('17', '测试信息中心搜索跳转3', '1', '340203', null, '1111', '1', '18500000000', '2608', '1111111111', '2', '11.00', '1.00', '元/平', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_frontend_message` VALUES ('18', '测试信息中心搜索跳转4', '1', '340203', null, '111111111', '1111111', '18544444444', '2609', '<span style=\"font-size: 14px;\">测试信息中心搜索跳转</span>', '2', '1111.00', '11111111.00', '元/平', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_frontend_message` VALUES ('19', '测试信息中心搜索跳转5', '1', '34', null, '22222', '22', '18577777777', '2610', '&nbsp; &nbsp;', '2', '11111.00', '11111.00', '元/平', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_frontend_message` VALUES ('20', '拜访企业【zz科技】', '1', '340203', null, '11', '1', '18577777777', '2611', '111', '2', '1.00', '11.00', '元/平', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_frontend_message` VALUES ('21', '后台发布-08140951', '4', '45', null, '火炬路', '国鹏飞', '18369727782', '2725', '&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;', '1', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_frontend_message` VALUES ('22', '博客', '3', '340203', null, '567', '56765', '18888888888', '2571', '<p>56757</p>', '1', '567.00', '0.00', '元/平', '0', '2018-09-07 15:27:04', '2018-09-07 15:27:04', '0');
INSERT INTO `my_frontend_message` VALUES ('24', '111144444', '4', '500105', '重庆市/重庆市/江北区', '1312312', '1312', '18888888888', '2575', '<p><span style=\"font-weight: bold;\">435435</span></p><p><span style=\"font-weight: bold; font-family: Arial;\">t<span style=\"text-decoration-line: line-through; color: rgb(194, 79, 74);\">utyutu</span></span></p>', '2', '12.00', '31.00', '元/平', '0', '2018-09-12 11:19:29', '2018-09-12 11:19:29', '0');
INSERT INTO `my_frontend_message` VALUES ('25', '人', '4', '340203', '安徽省/芜湖市/弋江区', '让他一人同意', 'ertytry', '15563995229', '2576', '<p>345345345</p>', '1', '53.00', '0.00', '元/平', '35', '2018-09-12 15:24:22', '2018-09-12 15:24:22', '0');

-- ----------------------------
-- Table structure for my_frontend_message_category
-- ----------------------------
DROP TABLE IF EXISTS `my_frontend_message_category`;
CREATE TABLE `my_frontend_message_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '分类名称',
  `level` int(11) DEFAULT NULL COMMENT '级别',
  `parent_id` int(11) DEFAULT NULL,
  `is_show` tinyint(1) DEFAULT '1' COMMENT '是否显示 1是 0否',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='信息分类表';

-- ----------------------------
-- Records of my_frontend_message_category
-- ----------------------------
INSERT INTO `my_frontend_message_category` VALUES ('1', '564', '1', null, '1', null, null, '1');
INSERT INTO `my_frontend_message_category` VALUES ('2', '34534', null, null, '1', '2018-09-07 09:02:20', '2018-09-07 09:02:20', '34');
INSERT INTO `my_frontend_message_category` VALUES ('3', '34534534534534534534', null, null, '1', '2018-09-07 09:02:36', '2018-09-07 09:02:36', '9');
INSERT INTO `my_frontend_message_category` VALUES ('4', '5567567567', null, null, '1', '2018-09-07 09:05:26', '2018-09-07 09:05:26', '567');

-- ----------------------------
-- Table structure for my_news
-- ----------------------------
DROP TABLE IF EXISTS `my_news`;
CREATE TABLE `my_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `is_banner` varchar(255) DEFAULT NULL COMMENT '是否banner',
  `img` varchar(255) DEFAULT NULL COMMENT '封面图片',
  `content` text COMMENT '详情',
  `status` tinyint(1) DEFAULT '1' COMMENT '1草稿 2发布',
  `type` tinyint(3) DEFAULT NULL COMMENT '类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `update_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  `create_time` datetime NOT NULL COMMENT '注册时间',
  `user_id` int(11) DEFAULT '0' COMMENT '11',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of my_news
-- ----------------------------
INSERT INTO `my_news` VALUES ('2', '45645645', '1', '1982', '<span style=\"font-weight: bold;\">6768678678</span>', '2', null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_news` VALUES ('3', '534534534', '1', '2437', '我是新设置的banner&nbsp;', '2', null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_news` VALUES ('4', '56756756', '1', '2062', '图图图与', '2', null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_news` VALUES ('5', '111', '1', '2194', '12312312312313', '2', null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_news` VALUES ('6', '222', '1', '2195', '2222222', '2', null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_news` VALUES ('9', '砍死法老', '1', '2410', '<p><span style=\"font-weight: 700;\">你想杀了我吗？朋友</span></p><p><span style=\"font-weight: bold;\"></span><img src=\"/files/richText/2-1533371338-15193.jpg\" data-filename=\"image name\" style=\"width: 805px;\"><span style=\"font-weight: bold;\"><br></span></p><p><span style=\"font-weight: bold;\"><br></span><span style=\"font-style: italic;\"></span></p>', '2', null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_news` VALUES ('10', '重大新闻', '1', '2387', '我不能为空', '1', null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_news` VALUES ('11', '暖新闻丨10年，这个爱心团队涌现898名造血干细胞捐献志愿者有很多', '0', '2681', '<p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">光明网记者 李政葳 庞聪 范子川7月5日，多氟多化工股份有限公司运营部的任抗战，收到了中国红十字总会寄来的《优秀红十字志愿者》证书，表彰他为造血干细胞捐献所做的贡献。像任抗战这样的职工，在这家爱心企业里还有很多。王晓亮，河南省第五百五十二位造血干细胞捐献者;曹红卫，河南省第六百位造血干细胞捐献者，韩琛洁，焦作市年龄最小的捐献者……10年里，从最初任抗战一个人到一群人，这家爱心企业已有898名员工成为造血干细胞捐献志愿者，目前共有8人成功捐献“生命种子”，为白血病患者送去生命的希望，创造了“生命奇迹”。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">为什么这里涌现出这么多富有爱心的员工?“生命奇迹”背后有着怎样感人的故事?</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\"><strong>“平凡善举，能救人一命，我骄傲”</strong></p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">谦和、真诚，是任抗战留给的第一印象。“第一次无偿献血是在1998年，那时还在读大三。后面，几乎每隔半年就献一次血。”在任抗战看来，虽然自己献出的血量有限，但希望能起到带头作用，号召更多人都能献出一点爱心。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\"><img src=\"http://p2.qhimgs4.com/t01d6fb05b702b29ae2.webp\" style=\"border-width: initial; border-style: none; display: block; margin: 7px auto; max-width: 100%; width: 450px;\"></p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">造血干细胞捐献者任抗战正在和同事乒乓球比赛(李政葳/摄)</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">曾经有人这样计算，截止到2015年7月，任抗战就已累计献血13800毫升，相当于一个成年人全身换血两次多。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">时隔15年，任抗战依然清晰记得当时加入中华骨髓库成为志愿者时的场景。那是在2003年3月，任抗战与妻子在焦作市东方红广场看到宣传义务捐献造血干细胞，“现场停了5辆采血车，围了很多人，自己还是从广场后门才挤了进去。”</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">任抗战没想到，任抗战获得了这种概率只有十几万分之一的配型成功机会。在2007年12月26日，在郑州市肿瘤医院向远在福建的白血病患者--一名年仅19岁的边防兵捐献了造血干细胞，成功地挽救了这位战士的生命。他也因此成为中国第839位、河南省第69位、焦作市第5位造血干细胞捐献者。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">“家人都很支持，母亲从小就教育我多为别人着想，帮助别人也是帮助自己。”在任抗战看来，这个平凡的善举，却能救人一命，觉得很幸运，也很骄傲。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">因为有爱，各项荣誉也纷至沓来。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">2011年，任抗战成为河南省红十字优秀志愿者，并先后荣获全国无偿献血奉献奖金奖、无偿捐献造血干细胞奉献奖，也成为焦作市唯一一个获得两项国家献血奖的市民;还在2011年11月入选了“中国好人榜”。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\"><strong>从一个人的爱心故事，到一群人的爱心义举</strong></p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">榜样的力量是无穷的。一个人、一段话、一个故事,这些看似平凡简单,却能点燃更多人心中向善的火焰。无疑，作为这个企业里第一位捐献者的任抗战，就是大家身边的榜样。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">“‘捐献对身体有没有害’‘我可不可以捐’，捐献后回来上班，领导见我第一面就问了这两个问题……”在捐献造血干细胞成功后，任抗战的行为在不知不觉中，影响了周围许多同事。这也让他更加清楚地认识到捐献造血干细胞的重要性，也发现很多人对捐献造血干细胞采集并不了解。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">后面，多氟多成立了以任抗战为主、众多员工参加的造血干细胞捐献志愿服务队。任抗战也做起了义务宣传员，利用企业内部刊物将自己捐献造血干细胞的过程宣传出去，让更多人了解并愿意捐献造血干细胞。“或许里面的每一句话，都有可能救活一个人。”任抗战说。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">2008年5月底的一个场景，让河南焦作红会工作人员李玉梅印象深刻:当天他们来多氟多进行造血干细胞采样，准备了100份样品，没想到到现场后发现，参加采样的人越来越多，整个礼堂都站满了人。“很快就采完了98份，带来的样品根本不够。”李玉梅说。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">更令人惊喜的是，在这98份样品中，已经有一份样品在2010年4月初与一名白血病人初配配型成功，并成功挽救了一个17岁学生的生命，爱心传奇又一次续写。</p>', '2', null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_news` VALUES ('12', '土耳其律师要求逮捕美空军指挥官：他们参与了政变', '1', '2683', '<p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">海外网<strong>8月12日电</strong>土耳其律师呼吁当局逮捕在因吉尔利克(Incirlik)空军基地的美国士兵及其指挥官,声称他们与2016年政变企图背后的运动有关。律师们期望法庭颁发令状搜查这间基地,阻止该基地班机离开土耳其。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\"><img src=\"http://p1.qhimgs4.com/t018b93120315e09f3f.webp\" style=\"border-width: initial; border-style: none; display: block; margin: 7px auto; max-width: 100%; width: 660px;\"></p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">图为美军因吉尔利克基地(东方IC)</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">据《今日俄罗斯》(RT)消息,随着安卡拉和华盛顿之间的政治争端愈演愈烈,土耳其亲政府组织——社会公正和援助协会的律师要求“逮捕因吉尔利克基地士兵的上司、美国空军指挥官”。律师们表示,美空军指挥官“在2016年7月15日的失败政变中扮演重要角色。”</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">据报道,在阿达纳的首席检察官办公室提交的法庭文件中,这些要求的细节获得证实。土耳其律师指控,美国军方试图通过他们与法土拉·葛兰的勾结活动以破坏土耳其宪法秩序。安卡拉声称,在2016年7月15日未遂的政变企图背后操控者正是法土拉·葛兰。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">社会正义与援助协会主席穆罕默德·格姆克(MuhammedGmük)告诉媒体,他们要求逮捕的美国士兵与FETO(葛兰运动)或全球美国恐怖组织有密切关系。随后,格姆克指出美军士兵中的12名“可疑人员”。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">格姆克表示,“我们相信所有的责任都皆真实可靠,我们提供的证据绝对非常有力。”格姆克说,调查可能牵涉到许多美国官员,包括士兵、大使馆和领事馆工作人员,甚至包括前美国大使约翰·巴斯(JohnBass),因为,根据视频记录他当时“正在与政变团队聊天”。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">除了拘留之外,律师们还要求当局下达对美军基地的搜查和扣押令,以便收集证据。律师们要求扣留从基地起飞的所有出境的美国航班。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">当被问及期待华盛顿会对此有什么样的回应时,格姆克表示其反应“并不重要”,因为土耳其不需要尊重美国。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">据了解,因吉尔利克是美军在土耳其重要基地,该基地被用作打击“伊斯兰国”作战行动,拥有约2,200名美国人常年驻守。</p>', '2', null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_news` VALUES ('13', '山东高密：“标准化”让党群服务更贴心', '1', '2690', '<p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">在高密市党群服务中心红色课堂上,党员正接受党性教育。“红色课堂”共分为誓词教育、党史教育、全面从严治党教育、党的十九大精神学习四大部分,是一处党性党史教育基地。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">在高密市党群服务中心院内,原本有一处闲置的车库,经工作人员精心“打扮”后变为爱心驿站,在炎热的夏日里为高密市区的环卫工人送去了一丝“凉意”。“以往我们都是自己从家里捎水,还没等下班水就喝光了。现在好了,可以来这里喝绿豆汤解解暑。这么热的天,有个爱心场所休息很不错。”8月3日,接过爱心驿站工作人员递过来的绿豆汤,60岁的环卫工人李玉芳说。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">爱心驿站是高密市党群服务中心最新推出的便民功能。从2017年10月开工建设,到今年5月份正式投入使用,高密市党群服务中心的运行,标志着高密市打造了覆盖市、镇、社区、村的“15分钟党群服务圈”。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">“我们顺应服务型创新型党组织建设要求,满足广大党员群众就近获得服务、参加活动的需要,聚焦党群服务,整合优质资源,以市党群服务中心、非公企业党群服务中心、社会组织党群服务中心为龙头,建成区域性党群服务中心8处、镇街区党群服务中心15处、社区党群服务中心109处、村级党群服务站947处,打造了覆盖全市的‘15分钟党群服务圈’。”高密市委常委、组织部长孙业宗告诉记者。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\"><strong>(一)</strong></p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">从“展板式”到“功能式”转变,是高密市打造党群服务中心的一大亮点。在高密看来,党群服务中心不应只局限于“展板”式、走马观花式宣教,而应该真正为党员、群众服务,以此提升党组织的凝聚力、向心力。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">据高密市委组织部副部长、“两新”组织工委书记冯玉庆介绍,建筑面积2500平方米的高密市党群服务中心是该市党群服务的核心和枢纽,集服务、活动、教育、培训、示范等功能于一体,按照“六红一家一长廊”功能布局,规划建设了红色驿站、红色益苑、红色书屋、红色e厅、红色氧吧、红色课堂、流动党员之家、党内法规制度知识长廊八大功能区。中心对外开放后已有126批次、5118名党员群众进行了参观学习和党性教育等。</p>', '2', null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_news` VALUES ('14', '453453', '1', '2563', '<p>345345</p>', '1', null, null, '2018-09-03 17:04:07', '2018-09-03 17:04:07', '0');
INSERT INTO `my_news` VALUES ('15', 'erter', '0', '2564', '<p>erterte</p>', '1', null, null, '2018-09-03 17:05:10', '2018-09-03 17:05:10', '0');
INSERT INTO `my_news` VALUES ('16', '789789', '1', '2565', '<p>789<span style=\"font-weight: bold;\">78</span></p>', '2', null, null, '2018-09-03 17:05:33', '2018-09-03 17:05:33', '0');
INSERT INTO `my_news` VALUES ('17', 'qqqqq', '1', '2566', '<p><span style=\"font-weight: bold; font-style: italic; text-decoration-line: underline line-through; color: rgb(139, 170, 74);\">456456</span></p>', '2', null, null, '2018-09-05 14:07:49', '2018-09-05 14:07:49', '0');

-- ----------------------------
-- Table structure for my_order
-- ----------------------------
DROP TABLE IF EXISTS `my_order`;
CREATE TABLE `my_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(255) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL COMMENT '地址id',
  `total_price` decimal(10,2) DEFAULT NULL COMMENT '合计金额',
  `product_price` decimal(10,2) DEFAULT NULL COMMENT '商品价格',
  `postage_price` decimal(10,2) DEFAULT NULL COMMENT '邮费',
  `coupon_id` int(11) DEFAULT NULL COMMENT '优惠券id',
  `pay_type` tinyint(2) DEFAULT '2' COMMENT '支付方式 1支付宝 2微信',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `pay_sn` varchar(255) DEFAULT NULL COMMENT '支付单号',
  `status` tinyint(2) DEFAULT '1' COMMENT '订单状态 1待支付 2已支付 3待处理 4处理中 5已完成',
  `note` varchar(255) DEFAULT NULL COMMENT '买家备注信息',
  `end_time` datetime DEFAULT NULL COMMENT '交易完成时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of my_order
-- ----------------------------
INSERT INTO `my_order` VALUES ('14', '201904231505104075', '389', '6', '181.00', '181.00', '0.00', '0', '2', '2019-04-23 15:05:10', null, '2', null, null, '2019-04-23 15:05:10', '2019-04-23 15:05:10');
INSERT INTO `my_order` VALUES ('15', '201904231510253822', '389', '7', '458.00', '458.00', '0.00', '0', '2', '2019-04-15 15:10:25', null, '2', null, null, '2019-04-23 15:10:25', '2019-04-23 15:10:25');
INSERT INTO `my_order` VALUES ('16', '201904231510482565', '389', '7', '458.00', '458.00', '0.00', '0', '2', '2019-04-23 15:10:48', null, '2', null, null, '2019-04-23 15:10:48', '2019-04-23 15:10:48');
INSERT INTO `my_order` VALUES ('17', '201904231510587482', '389', '7', '458.00', '458.00', '0.00', '0', '2', '2019-04-23 15:10:58', null, '2', null, null, '2019-04-23 15:10:58', '2019-04-23 15:10:58');
INSERT INTO `my_order` VALUES ('18', '201904231511337515', '389', '7', '458.00', '458.00', '0.00', '0', '2', '2019-04-16 15:11:33', null, '2', null, null, '2019-04-23 15:11:33', '2019-04-23 15:11:33');
INSERT INTO `my_order` VALUES ('19', '201904231511387599', '389', '7', '458.00', '458.00', '0.00', '0', '2', '2019-04-23 15:11:38', null, '2', null, null, '2019-04-23 15:11:38', '2019-04-23 15:11:38');
INSERT INTO `my_order` VALUES ('20', '201904231512098432', '389', '7', '458.00', '458.00', '0.00', '0', '2', '2019-04-23 15:12:09', null, '2', null, null, '2019-04-23 15:12:09', '2019-04-23 15:12:09');
INSERT INTO `my_order` VALUES ('21', '201904241101362607', '389', '7', '90.00', '90.00', '0.00', '0', '2', '2019-04-24 11:01:36', null, '2', null, null, '2019-04-24 11:01:36', '2019-04-24 11:01:36');

-- ----------------------------
-- Table structure for my_order_attr
-- ----------------------------
DROP TABLE IF EXISTS `my_order_attr`;
CREATE TABLE `my_order_attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL COMMENT '商品id',
  `count` int(11) DEFAULT NULL,
  `category_id` varchar(50) DEFAULT NULL,
  `product_name` varchar(50) DEFAULT NULL COMMENT '商品名称',
  `abstract` varchar(255) DEFAULT NULL COMMENT '简介',
  `img` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `product_attr` text COMMENT '商品属性',
  `price` decimal(10,2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='订单商品表';

-- ----------------------------
-- Records of my_order_attr
-- ----------------------------
INSERT INTO `my_order_attr` VALUES ('20', '14', '8', '3', '19', '东江湖蜜桔500g', '轻咬即化 自带4D环绕橘香', '/files/default/10-1542694168-54169.jpg', 'a:1:{s:6:\"产地\";s:6:\"中国\";}', '45.00', '2019-04-23 15:05:10', '2019-04-23 15:05:10');
INSERT INTO `my_order_attr` VALUES ('21', '14', '9', '2', '19', '鲜水果玉米两根', '一口咬下去 嘴里爆出来甜浆', '/files/default/10-1542694032-25488.jpg', 'a:1:{s:6:\"产地\";s:6:\"中国\";}', '23.00', '2019-04-23 15:05:10', '2019-04-23 15:05:10');
INSERT INTO `my_order_attr` VALUES ('22', '15', '8', '2', '19', '东江湖蜜桔500g', '轻咬即化 自带4D环绕橘香', '/files/default/10-1542694168-54169.jpg', 'a:1:{s:6:\"产地\";s:6:\"中国\";}', '45.00', '2019-04-23 15:10:25', '2019-04-23 15:10:25');
INSERT INTO `my_order_attr` VALUES ('23', '15', '9', '1', '19', '鲜水果玉米两根', '一口咬下去 嘴里爆出来甜浆', '/files/default/10-1542694032-25488.jpg', 'a:1:{s:6:\"产地\";s:6:\"中国\";}', '23.00', '2019-04-23 15:10:25', '2019-04-23 15:10:25');
INSERT INTO `my_order_attr` VALUES ('24', '15', '7', '1', '18', '进口香蕉1斤*1袋', '跟鲜花一起运过来的香蕉', '/files/default/10-1542694183-3530.jpg', 'a:1:{s:6:\"产地\";s:6:\"美国\";}', '345.00', '2019-04-23 15:10:25', '2019-04-23 15:10:25');
INSERT INTO `my_order_attr` VALUES ('25', '16', '8', '2', '19', '东江湖蜜桔500g', '轻咬即化 自带4D环绕橘香', '/files/default/10-1542694168-54169.jpg', 'a:1:{s:6:\"产地\";s:6:\"中国\";}', '45.00', '2019-04-23 15:10:48', '2019-04-23 15:10:48');
INSERT INTO `my_order_attr` VALUES ('26', '16', '9', '1', '19', '鲜水果玉米两根', '一口咬下去 嘴里爆出来甜浆', '/files/default/10-1542694032-25488.jpg', 'a:1:{s:6:\"产地\";s:6:\"中国\";}', '23.00', '2019-04-23 15:10:48', '2019-04-23 15:10:48');
INSERT INTO `my_order_attr` VALUES ('27', '16', '7', '1', '18', '进口香蕉1斤*1袋', '跟鲜花一起运过来的香蕉', '/files/default/10-1542694183-3530.jpg', 'a:1:{s:6:\"产地\";s:6:\"美国\";}', '345.00', '2019-04-23 15:10:48', '2019-04-23 15:10:48');
INSERT INTO `my_order_attr` VALUES ('28', '17', '8', '2', '19', '东江湖蜜桔500g', '轻咬即化 自带4D环绕橘香', '/files/default/10-1542694168-54169.jpg', 'a:1:{s:6:\"产地\";s:6:\"中国\";}', '45.00', '2019-04-23 15:10:58', '2019-04-23 15:10:58');
INSERT INTO `my_order_attr` VALUES ('29', '17', '9', '1', '19', '鲜水果玉米两根', '一口咬下去 嘴里爆出来甜浆', '/files/default/10-1542694032-25488.jpg', 'a:1:{s:6:\"产地\";s:6:\"中国\";}', '23.00', '2019-04-23 15:10:58', '2019-04-23 15:10:58');
INSERT INTO `my_order_attr` VALUES ('30', '17', '7', '1', '18', '进口香蕉1斤*1袋', '跟鲜花一起运过来的香蕉', '/files/default/10-1542694183-3530.jpg', 'a:1:{s:6:\"产地\";s:6:\"美国\";}', '345.00', '2019-04-23 15:10:58', '2019-04-23 15:10:58');
INSERT INTO `my_order_attr` VALUES ('31', '18', '8', '2', '19', '东江湖蜜桔500g', '轻咬即化 自带4D环绕橘香', '/files/default/10-1542694168-54169.jpg', 'a:1:{s:6:\"产地\";s:6:\"中国\";}', '45.00', '2019-04-23 15:11:33', '2019-04-23 15:11:33');
INSERT INTO `my_order_attr` VALUES ('32', '18', '9', '1', '19', '鲜水果玉米两根', '一口咬下去 嘴里爆出来甜浆', '/files/default/10-1542694032-25488.jpg', 'a:1:{s:6:\"产地\";s:6:\"中国\";}', '23.00', '2019-04-23 15:11:33', '2019-04-23 15:11:33');
INSERT INTO `my_order_attr` VALUES ('33', '18', '7', '1', '18', '进口香蕉1斤*1袋', '跟鲜花一起运过来的香蕉', '/files/default/10-1542694183-3530.jpg', 'a:1:{s:6:\"产地\";s:6:\"美国\";}', '345.00', '2019-04-23 15:11:33', '2019-04-23 15:11:33');
INSERT INTO `my_order_attr` VALUES ('34', '19', '8', '2', '19', '东江湖蜜桔500g', '轻咬即化 自带4D环绕橘香', '/files/default/10-1542694168-54169.jpg', 'a:1:{s:6:\"产地\";s:6:\"中国\";}', '45.00', '2019-04-23 15:11:38', '2019-04-23 15:11:38');
INSERT INTO `my_order_attr` VALUES ('35', '19', '9', '1', '19', '鲜水果玉米两根', '一口咬下去 嘴里爆出来甜浆', '/files/default/10-1542694032-25488.jpg', 'a:1:{s:6:\"产地\";s:6:\"中国\";}', '23.00', '2019-04-23 15:11:38', '2019-04-23 15:11:38');
INSERT INTO `my_order_attr` VALUES ('36', '19', '7', '1', '18', '进口香蕉1斤*1袋', '跟鲜花一起运过来的香蕉', '/files/default/10-1542694183-3530.jpg', 'a:1:{s:6:\"产地\";s:6:\"美国\";}', '345.00', '2019-04-23 15:11:38', '2019-04-23 15:11:38');
INSERT INTO `my_order_attr` VALUES ('37', '20', '8', '2', '19', '东江湖蜜桔500g', '轻咬即化 自带4D环绕橘香', '/files/default/10-1542694168-54169.jpg', 'a:1:{s:6:\"产地\";s:6:\"中国\";}', '45.00', '2019-04-23 15:12:09', '2019-04-23 15:12:09');
INSERT INTO `my_order_attr` VALUES ('38', '20', '9', '1', '19', '鲜水果玉米两根', '一口咬下去 嘴里爆出来甜浆', '/files/default/10-1542694032-25488.jpg', 'a:1:{s:6:\"产地\";s:6:\"中国\";}', '23.00', '2019-04-23 15:12:09', '2019-04-23 15:12:09');
INSERT INTO `my_order_attr` VALUES ('39', '20', '7', '1', '18', '进口香蕉1斤*1袋', '跟鲜花一起运过来的香蕉', '/files/default/10-1542694183-3530.jpg', 'a:1:{s:6:\"产地\";s:6:\"美国\";}', '345.00', '2019-04-23 15:12:09', '2019-04-23 15:12:09');
INSERT INTO `my_order_attr` VALUES ('40', '21', '8', '2', '19', '东江湖蜜桔500g', '轻咬即化 自带4D环绕橘香', '/files/default/10-1542694168-54169.jpg', 'a:1:{s:6:\"产地\";s:6:\"中国\";}', '45.00', '2019-04-24 11:01:36', '2019-04-24 11:01:36');

-- ----------------------------
-- Table structure for my_order_pay_log
-- ----------------------------
DROP TABLE IF EXISTS `my_order_pay_log`;
CREATE TABLE `my_order_pay_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '1' COMMENT '1购买 2退款',
  `note` varchar(50) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单支付流水';

-- ----------------------------
-- Records of my_order_pay_log
-- ----------------------------

-- ----------------------------
-- Table structure for my_product
-- ----------------------------
DROP TABLE IF EXISTS `my_product`;
CREATE TABLE `my_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '产品名称',
  `abstract` varchar(20) DEFAULT NULL COMMENT '简介',
  `label` varchar(255) DEFAULT NULL COMMENT '标签',
  `category_id` int(11) DEFAULT NULL COMMENT '分类id',
  `company_id` int(11) DEFAULT NULL COMMENT '公司id',
  `cover` varchar(255) DEFAULT NULL COMMENT '封面图片',
  `img` varchar(255) DEFAULT NULL COMMENT '图片',
  `detail` text COMMENT '详情',
  `stock` int(11) DEFAULT NULL COMMENT '库存',
  `line_price` decimal(10,2) DEFAULT NULL COMMENT '划线价',
  `vip_price` decimal(10,2) DEFAULT '0.00' COMMENT '会员价',
  `price` decimal(10,2) DEFAULT '0.00',
  `status` tinyint(1) DEFAULT '1' COMMENT '1上架 2下架',
  `sort` int(11) DEFAULT '1' COMMENT '排序',
  `is_recommend` tinyint(1) DEFAULT '2' COMMENT '是否推荐 1推荐2不推荐',
  `delete_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of my_product
-- ----------------------------
INSERT INTO `my_product` VALUES ('7', '进口香蕉1斤*1袋', '跟鲜花一起运过来的香蕉', '34', '18', '1', null, '/files/default/10-1542694183-3530.jpg', '<p>沃尔沃二 一口吃不完的强烈满足感</p>', '2', '34.00', '335.00', '345.00', '1', null, '2', null, '2018-11-15 13:20:28', '2018-11-15 13:20:28');
INSERT INTO `my_product` VALUES ('8', '东江湖蜜桔500g', '轻咬即化 自带4D环绕橘香', '34', '19', '1', null, '/files/default/10-1542694168-54169.jpg', '<p>蜜桔皮薄肉嫩 香甜微酸 入口即化</p><p>富含维生素C 柠檬酸与膳食纤维</p><p><br></p>', '0', '34.00', '38.00', '45.00', '1', null, '1', null, '2018-11-15 13:21:24', '2019-04-24 11:01:36');
INSERT INTO `my_product` VALUES ('9', '鲜水果玉米两根', '一口咬下去 嘴里爆出来甜浆', '11', '19', '1', null, '/files/default/10-1542694032-25488.jpg', '<p>水果玉米是适合生吃的超甜玉米 薄薄的表皮一咬就破</p>', '2', '34.00', '12.00', '23.00', '1', '1', '1', null, '2018-11-20 14:07:42', '2018-11-20 14:07:42');
INSERT INTO `my_product` VALUES ('10', '测试库存', '简介简介', '1278978987', '14', '1', null, '/files/default/10-1556004792-86527.jpg,/files/default/10-1556004793-40146.jpg,/files/default/10-1556004793-15637.jpg', '<p><span style=\"font-weight: bold; text-decoration-line: underline;\">445654</span></p><p><span style=\"font-weight: bold; text-decoration-line: underline;\">谁发的发生放散阀岁数大</span></p><p><span style=\"font-weight: bold; text-decoration-line: underline;\">大概多少国防生的轨道上飞哥</span></p>', '2', '34.00', '34.00', '34.60', '1', '1', '1', null, '2019-04-23 15:33:33', '2019-04-23 15:33:33');
INSERT INTO `my_product` VALUES ('11', '456', '4564564', '456456', '17', '1', null, '/files/default/10-1556004985-15099.jpg', '<p>45645654</p>', '2', '34.00', '45.00', '456.00', '1', '1', '1', null, '2019-04-23 15:39:47', '2019-04-23 15:39:47');
INSERT INTO `my_product` VALUES ('12', '45656', '546', '456', '13', '1', null, '/files/default/10-1556006448-15606.jpg', '<p>456456</p>', '2', '34.00', '54.00', '45.00', '1', '1', '1', null, '2019-04-23 16:01:29', '2019-04-23 16:01:29');
INSERT INTO `my_product` VALUES ('13', '435345', '345', '45', '14', '1', null, '/files/default/10-1556006610-3665.jpg', '<p>尔特瑞特人</p>', '2', '34.00', '5.00', '45.00', '1', '1', '1', null, '2019-04-23 16:03:36', '2019-04-23 16:03:36');
INSERT INTO `my_product` VALUES ('15', '546', '546', '456', '11', '1', null, '/files/default/10-1556007123-61671.jpg', '<p>45645654</p>', '2', '34.00', '46.00', '46.00', '1', '1', '1', null, '2019-04-23 16:13:28', '2019-04-23 16:13:28');
INSERT INTO `my_product` VALUES ('16', '345', '345', '3453', '12', '1', null, '/files/default/10-1556008221-21439.jpg,/files/default/10-1556008221-8317.jpg', '<p>沃尔沃二</p>', '2', '333.00', '435.00', '345.00', '1', '1', '1', null, '2019-04-23 16:30:26', '2019-04-23 16:30:26');

-- ----------------------------
-- Table structure for my_product_attr
-- ----------------------------
DROP TABLE IF EXISTS `my_product_attr`;
CREATE TABLE `my_product_attr` (
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `category_attr_id` int(11) NOT NULL COMMENT '属性',
  `value` varchar(255) NOT NULL DEFAULT '' COMMENT '属性值',
  PRIMARY KEY (`product_id`,`category_attr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of my_product_attr
-- ----------------------------
INSERT INTO `my_product_attr` VALUES ('5', '26', '11111111111111');
INSERT INTO `my_product_attr` VALUES ('5', '27', '3345');
INSERT INTO `my_product_attr` VALUES ('5', '28', '34534');
INSERT INTO `my_product_attr` VALUES ('7', '34', '美国');
INSERT INTO `my_product_attr` VALUES ('8', '35', '中国');
INSERT INTO `my_product_attr` VALUES ('9', '42', '中国');
INSERT INTO `my_product_attr` VALUES ('10', '35', '456');
INSERT INTO `my_product_attr` VALUES ('11', '40', '456');
INSERT INTO `my_product_attr` VALUES ('12', '34', '46');
INSERT INTO `my_product_attr` VALUES ('13', '35', '尔特');
INSERT INTO `my_product_attr` VALUES ('15', '36', '456');
INSERT INTO `my_product_attr` VALUES ('16', '38', 'wer');

-- ----------------------------
-- Table structure for my_product_category
-- ----------------------------
DROP TABLE IF EXISTS `my_product_category`;
CREATE TABLE `my_product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT '1' COMMENT '层级',
  `sort` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `is_show` tinyint(1) DEFAULT '1' COMMENT '1显示 2不显示',
  `label` char(4) DEFAULT NULL COMMENT '标签',
  `user_id` int(11) DEFAULT '0',
  `delete_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  `create_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of my_product_category
-- ----------------------------
INSERT INTO `my_product_category` VALUES ('11', '火锅香锅', '2655', '1', '1', '0', '1', null, '0', null, '2018-11-14 17:28:38', '2018-11-14 17:28:38');
INSERT INTO `my_product_category` VALUES ('12', '水果', '2655', '1', '1', '0', '1', null, '0', null, '2018-11-14 17:29:15', '2018-11-14 17:29:15');
INSERT INTO `my_product_category` VALUES ('13', '蔬菜', null, '1', '1', '0', '1', null, '0', null, '2018-11-15 09:20:52', '2018-11-15 09:20:52');
INSERT INTO `my_product_category` VALUES ('14', '肉蛋', null, '1', '1', '0', '1', null, '0', null, '2018-11-15 09:22:43', '2018-11-15 09:22:43');
INSERT INTO `my_product_category` VALUES ('15', '粮油', null, '1', '1', '0', '1', null, '0', null, '2018-11-15 09:23:33', '2018-11-15 09:23:33');
INSERT INTO `my_product_category` VALUES ('16', '日百', null, '1', '1', '0', '1', null, '0', null, '2018-11-15 09:25:00', '2018-11-15 09:25:00');
INSERT INTO `my_product_category` VALUES ('17', '调料底料', '2668', '2', '1', '11', '1', null, '0', null, '2018-11-15 09:31:26', '2018-11-15 09:31:26');
INSERT INTO `my_product_category` VALUES ('18', '肉类', '2653', '2', '1', '11', '1', null, '0', null, '2018-11-15 09:32:01', '2018-11-15 09:32:01');
INSERT INTO `my_product_category` VALUES ('19', '海鲜区', '2667', '2', '1', '11', '1', null, '0', null, '2018-11-15 09:32:18', '2018-11-15 09:32:18');

-- ----------------------------
-- Table structure for my_product_category_attr
-- ----------------------------
DROP TABLE IF EXISTS `my_product_category_attr`;
CREATE TABLE `my_product_category_attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `sort` int(11) DEFAULT '1' COMMENT '排序',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of my_product_category_attr
-- ----------------------------
INSERT INTO `my_product_category_attr` VALUES ('34', '13', '产地', '1', '2018-11-15 09:20:53', '2018-11-15 09:20:53');
INSERT INTO `my_product_category_attr` VALUES ('35', '14', '产地', '1', '2018-11-15 09:22:43', '2018-11-15 09:22:43');
INSERT INTO `my_product_category_attr` VALUES ('36', '11', '产地', '1', '2018-11-15 09:23:14', '2018-11-15 09:23:14');
INSERT INTO `my_product_category_attr` VALUES ('37', '15', '产地', '1', '2018-11-15 09:23:33', '2018-11-15 09:23:33');
INSERT INTO `my_product_category_attr` VALUES ('38', '12', '产地', '1', '2018-11-15 09:23:54', '2018-11-15 09:23:54');
INSERT INTO `my_product_category_attr` VALUES ('39', '16', '产地', '1', '2018-11-15 09:25:00', '2018-11-15 09:25:00');
INSERT INTO `my_product_category_attr` VALUES ('40', '17', '产地', '1', '2018-11-15 09:31:26', '2018-11-15 09:31:26');
INSERT INTO `my_product_category_attr` VALUES ('41', '18', '产地', '1', '2018-11-15 09:32:01', '2018-11-15 09:32:01');
INSERT INTO `my_product_category_attr` VALUES ('42', '19', '产地', '1', '2018-11-15 09:32:18', '2018-11-15 09:32:18');
INSERT INTO `my_product_category_attr` VALUES ('43', '20', '产地', '1', '2018-11-15 09:35:13', '2018-11-15 09:35:13');
INSERT INTO `my_product_category_attr` VALUES ('44', '21', '产地', '1', '2018-11-15 09:38:27', '2018-11-15 09:38:27');
INSERT INTO `my_product_category_attr` VALUES ('45', '22', '产地', '1', '2018-11-15 09:39:01', '2018-11-15 09:39:01');

-- ----------------------------
-- Table structure for my_region
-- ----------------------------
DROP TABLE IF EXISTS `my_region`;
CREATE TABLE `my_region` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) DEFAULT '',
  `level` varchar(128) DEFAULT '',
  `provinceid` varchar(128) DEFAULT '',
  `cityid` varchar(128) DEFAULT '',
  `parentid` varchar(128) DEFAULT '',
  `isDelete` tinyint(2) DEFAULT '0',
  `haierId` int(11) DEFAULT '0',
  `code` varchar(50) DEFAULT '',
  `alsname` varchar(128) DEFAULT '' COMMENT '省的别名，为了跟地图对应',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `region_isdelete` (`isDelete`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='区域表';

-- ----------------------------
-- Records of my_region
-- ----------------------------
INSERT INTO `my_region` VALUES ('11', '北京市', '1', '11', '0', '0', '0', '18', '', '北京');
INSERT INTO `my_region` VALUES ('12', '天津市', '1', '12', '0', '0', '0', '323', '', '天津');
INSERT INTO `my_region` VALUES ('13', '河北省', '1', '13', '0', '0', '0', null, '', '河北');
INSERT INTO `my_region` VALUES ('14', '山西省', '1', '14', '0', '0', '0', null, '', '山西');
INSERT INTO `my_region` VALUES ('15', '内蒙古自治区', '1', '15', '0', '0', '0', null, '', '内蒙古');
INSERT INTO `my_region` VALUES ('21', '辽宁省', '1', '21', '0', '0', '0', null, '', '辽宁');
INSERT INTO `my_region` VALUES ('22', '吉林省', '1', '22', '0', '0', '0', null, '', '吉林');
INSERT INTO `my_region` VALUES ('23', '黑龙江省', '1', '23', '0', '0', '0', null, '', '黑龙江');
INSERT INTO `my_region` VALUES ('31', '上海市', '1', '31', '0', '0', '0', '283', '', '上海');
INSERT INTO `my_region` VALUES ('32', '江苏省', '1', '32', '0', '0', '0', null, '', '江苏');
INSERT INTO `my_region` VALUES ('33', '浙江省', '1', '33', '0', '0', '0', null, '', '浙江');
INSERT INTO `my_region` VALUES ('34', '安徽省', '1', '34', '0', '0', '0', null, '', '安徽');
INSERT INTO `my_region` VALUES ('35', '福建省', '1', '35', '0', '0', '0', null, '', '福建');
INSERT INTO `my_region` VALUES ('36', '江西省', '1', '36', '0', '0', '0', null, '', '江西');
INSERT INTO `my_region` VALUES ('37', '山东省', '1', '37', '0', '0', '0', null, '', '山东');
INSERT INTO `my_region` VALUES ('41', '河南省', '1', '41', '0', '0', '0', null, '', '河南');
INSERT INTO `my_region` VALUES ('42', '湖北省', '1', '42', '0', '0', '0', null, '', '湖北');
INSERT INTO `my_region` VALUES ('43', '湖南省', '1', '43', '0', '0', '0', null, '', '湖南');
INSERT INTO `my_region` VALUES ('44', '广东省', '1', '44', '0', '0', '0', null, '', '广东');
INSERT INTO `my_region` VALUES ('45', '广西壮族自治区', '1', '45', '0', '0', '0', null, '', '广西');
INSERT INTO `my_region` VALUES ('46', '海南省', '1', '46', '0', '0', '0', null, '', '海南');
INSERT INTO `my_region` VALUES ('50', '重庆市', '1', '50', '0', '0', '0', '390', '', '重庆');
INSERT INTO `my_region` VALUES ('51', '四川省', '1', '51', '0', '0', '0', null, '', '四川');
INSERT INTO `my_region` VALUES ('52', '贵州省', '1', '52', '0', '0', '0', null, '', '贵州');
INSERT INTO `my_region` VALUES ('53', '云南省', '1', '53', '0', '0', '0', null, '', '云南');
INSERT INTO `my_region` VALUES ('54', '西藏自治区', '1', '54', '0', '0', '0', null, '', '西藏');
INSERT INTO `my_region` VALUES ('61', '陕西省', '1', '61', '0', '0', '0', null, '', '陕西');
INSERT INTO `my_region` VALUES ('62', '甘肃省', '1', '62', '0', '0', '0', null, '', '甘肃');
INSERT INTO `my_region` VALUES ('63', '青海省', '1', '63', '0', '0', '0', null, '', '青海');
INSERT INTO `my_region` VALUES ('64', '宁夏回族自治区', '1', '64', '0', '0', '0', null, '', '宁夏');
INSERT INTO `my_region` VALUES ('65', '新疆维吾尔自治区', '1', '65', '0', '0', '0', null, '', '新疆');
INSERT INTO `my_region` VALUES ('71', '台湾省', '1', '71', '0', '0', '0', null, '', '台湾');
INSERT INTO `my_region` VALUES ('81', '香港特别行政区', '1', '81', '0', '0', '0', null, '', '香港');
INSERT INTO `my_region` VALUES ('82', '澳门', '1', '82', '0', '0', '0', null, '', '澳门');
INSERT INTO `my_region` VALUES ('1101', '北京市', '2', '11', '1101', '11', '0', null, '', '');
INSERT INTO `my_region` VALUES ('1201', '天津市', '2', '12', '1201', '12', '0', null, '', '');
INSERT INTO `my_region` VALUES ('1301', '石家庄市', '2', '13', '1301', '13', '0', '112', '', '');
INSERT INTO `my_region` VALUES ('1302', '唐山市', '2', '13', '1302', '13', '0', '113', '', '');
INSERT INTO `my_region` VALUES ('1303', '秦皇岛市', '2', '13', '1303', '13', '0', '111', '', '');
INSERT INTO `my_region` VALUES ('1304', '邯郸市', '2', '13', '1304', '13', '0', '108', '', '');
INSERT INTO `my_region` VALUES ('1305', '邢台市', '2', '13', '1305', '13', '0', '114', '', '');
INSERT INTO `my_region` VALUES ('1306', '保定市', '2', '13', '1306', '13', '0', '105', '', '');
INSERT INTO `my_region` VALUES ('1307', '张家口市', '2', '13', '1307', '13', '0', '115', '', '');
INSERT INTO `my_region` VALUES ('1308', '承德市', '2', '13', '1308', '13', '0', '107', '', '');
INSERT INTO `my_region` VALUES ('1309', '沧州市', '2', '13', '1309', '13', '0', '106', '', '');
INSERT INTO `my_region` VALUES ('1310', '廊坊市', '2', '13', '1310', '13', '0', '110', '', '');
INSERT INTO `my_region` VALUES ('1311', '衡水市', '2', '13', '1311', '13', '0', '109', '', '');
INSERT INTO `my_region` VALUES ('1390', '省直辖县级行政区划', '2', '13', '1390', '13', '0', null, '', '');
INSERT INTO `my_region` VALUES ('1401', '太原市', '2', '14', '1401', '14', '0', '269', '', '');
INSERT INTO `my_region` VALUES ('1402', '大同市', '2', '14', '1402', '14', '0', '263', '', '');
INSERT INTO `my_region` VALUES ('1403', '阳泉市', '2', '14', '1403', '14', '0', '271', '', '');
INSERT INTO `my_region` VALUES ('1404', '长治市', '2', '14', '1404', '14', '0', '262', '', '');
INSERT INTO `my_region` VALUES ('1405', '晋城市', '2', '14', '1405', '14', '0', '264', '', '');
INSERT INTO `my_region` VALUES ('1406', '朔州市', '2', '14', '1406', '14', '0', '268', '', '');
INSERT INTO `my_region` VALUES ('1407', '晋中市', '2', '14', '1407', '14', '0', '265', '', '');
INSERT INTO `my_region` VALUES ('1408', '运城市', '2', '14', '1408', '14', '0', '272', '', '');
INSERT INTO `my_region` VALUES ('1409', '忻州市', '2', '14', '1409', '14', '0', '270', '', '');
INSERT INTO `my_region` VALUES ('1410', '临汾市', '2', '14', '1410', '14', '0', '266', '', '');
INSERT INTO `my_region` VALUES ('1411', '吕梁市', '2', '14', '1411', '14', '0', '267', '', '');
INSERT INTO `my_region` VALUES ('1501', '呼和浩特市', '2', '15', '1501', '15', '0', '225', '', '');
INSERT INTO `my_region` VALUES ('1502', '包头市', '2', '15', '1502', '15', '0', '222', '', '');
INSERT INTO `my_region` VALUES ('1503', '乌海市', '2', '15', '1503', '15', '0', '228', '', '');
INSERT INTO `my_region` VALUES ('1504', '赤峰市', '2', '15', '1504', '15', '0', '223', '', '');
INSERT INTO `my_region` VALUES ('1505', '通辽市', '2', '15', '1505', '15', '0', '227', '', '');
INSERT INTO `my_region` VALUES ('1506', '鄂尔多斯市', '2', '15', '1506', '15', '0', '224', '', '');
INSERT INTO `my_region` VALUES ('1507', '呼伦贝尔市', '2', '15', '1507', '15', '0', '226', '', '');
INSERT INTO `my_region` VALUES ('1508', '巴彦淖尔市', '2', '15', '1508', '15', '0', '221', '', '');
INSERT INTO `my_region` VALUES ('1509', '乌兰察布市', '2', '15', '1509', '15', '0', '229', '', '');
INSERT INTO `my_region` VALUES ('1522', '兴安盟', '2', '15', '1522', '15', '0', '231', '', '');
INSERT INTO `my_region` VALUES ('1525', '锡林郭勒盟', '2', '15', '1525', '15', '0', '230', '', '');
INSERT INTO `my_region` VALUES ('1529', '阿拉善盟', '2', '15', '1529', '15', '0', '220', '', '');
INSERT INTO `my_region` VALUES ('2101', '沈阳市', '2', '21', '2101', '21', '0', '217', '', '');
INSERT INTO `my_region` VALUES ('2102', '大连市', '2', '21', '2102', '21', '0', '209', '', '');
INSERT INTO `my_region` VALUES ('2103', '鞍山市', '2', '21', '2103', '21', '0', '206', '', '');
INSERT INTO `my_region` VALUES ('2104', '抚顺市', '2', '21', '2104', '21', '0', '211', '', '');
INSERT INTO `my_region` VALUES ('2105', '本溪市', '2', '21', '2105', '21', '0', '207', '', '');
INSERT INTO `my_region` VALUES ('2106', '丹东市', '2', '21', '2106', '21', '0', '210', '', '');
INSERT INTO `my_region` VALUES ('2107', '锦州市', '2', '21', '2107', '21', '0', '214', '', '');
INSERT INTO `my_region` VALUES ('2108', '营口市', '2', '21', '2108', '21', '0', '219', '', '');
INSERT INTO `my_region` VALUES ('2109', '阜新市', '2', '21', '2109', '21', '0', '212', '', '');
INSERT INTO `my_region` VALUES ('2110', '辽阳市', '2', '21', '2110', '21', '0', '215', '', '');
INSERT INTO `my_region` VALUES ('2111', '盘锦市', '2', '21', '2111', '21', '0', '216', '', '');
INSERT INTO `my_region` VALUES ('2112', '铁岭市', '2', '21', '2112', '21', '0', '218', '', '');
INSERT INTO `my_region` VALUES ('2113', '朝阳市', '2', '21', '2113', '21', '0', '208', '', '');
INSERT INTO `my_region` VALUES ('2114', '葫芦岛市', '2', '21', '2114', '21', '0', '213', '', '');
INSERT INTO `my_region` VALUES ('2201', '长春市', '2', '22', '2201', '22', '0', '175', '', '');
INSERT INTO `my_region` VALUES ('2202', '吉林市', '2', '22', '2202', '22', '0', '176', '', '');
INSERT INTO `my_region` VALUES ('2203', '四平市', '2', '22', '2203', '22', '0', '178', '', '');
INSERT INTO `my_region` VALUES ('2204', '辽源市', '2', '22', '2204', '22', '0', '177', '', '');
INSERT INTO `my_region` VALUES ('2205', '通化市', '2', '22', '2205', '22', '0', '180', '', '');
INSERT INTO `my_region` VALUES ('2206', '白山市', '2', '22', '2206', '22', '0', '174', '', '');
INSERT INTO `my_region` VALUES ('2207', '松原市', '2', '22', '2207', '22', '0', '179', '', '');
INSERT INTO `my_region` VALUES ('2208', '白城市', '2', '22', '2208', '22', '0', '173', '', '');
INSERT INTO `my_region` VALUES ('2224', '延边朝鲜族自治州', '2', '22', '2224', '22', '0', '181', '', '');
INSERT INTO `my_region` VALUES ('2301', '哈尔滨市', '2', '23', '2301', '23', '0', '135', '', '');
INSERT INTO `my_region` VALUES ('2302', '齐齐哈尔市', '2', '23', '2302', '23', '0', '142', '', '');
INSERT INTO `my_region` VALUES ('2303', '鸡西市', '2', '23', '2303', '23', '0', '138', '', '');
INSERT INTO `my_region` VALUES ('2304', '鹤岗市', '2', '23', '2304', '23', '0', '136', '', '');
INSERT INTO `my_region` VALUES ('2305', '双鸭山市', '2', '23', '2305', '23', '0', '143', '', '');
INSERT INTO `my_region` VALUES ('2306', '大庆市', '2', '23', '2306', '23', '0', '133', '', '');
INSERT INTO `my_region` VALUES ('2307', '伊春市', '2', '23', '2307', '23', '0', '145', '', '');
INSERT INTO `my_region` VALUES ('2308', '佳木斯市', '2', '23', '2308', '23', '0', '139', '', '');
INSERT INTO `my_region` VALUES ('2309', '七台河市', '2', '23', '2309', '23', '0', '141', '', '');
INSERT INTO `my_region` VALUES ('2310', '牡丹江市', '2', '23', '2310', '23', '0', '140', '', '');
INSERT INTO `my_region` VALUES ('2311', '黑河市', '2', '23', '2311', '23', '0', '137', '', '');
INSERT INTO `my_region` VALUES ('2312', '绥化市', '2', '23', '2312', '23', '0', '144', '', '');
INSERT INTO `my_region` VALUES ('2327', '大兴安岭地区', '2', '23', '2327', '23', '0', '134', '', '');
INSERT INTO `my_region` VALUES ('3101', '上海市', '2', '31', '3101', '31', '0', null, '', '');
INSERT INTO `my_region` VALUES ('3201', '南京市', '2', '32', '3201', '32', '0', '185', '', '');
INSERT INTO `my_region` VALUES ('3202', '无锡市', '2', '32', '3202', '32', '0', '190', '', '');
INSERT INTO `my_region` VALUES ('3203', '徐州市', '2', '32', '3203', '32', '0', '191', '', '');
INSERT INTO `my_region` VALUES ('3204', '常州市', '2', '32', '3204', '32', '0', '182', '', '');
INSERT INTO `my_region` VALUES ('3205', '苏州市', '2', '32', '3205', '32', '0', '187', '', '');
INSERT INTO `my_region` VALUES ('3206', '南通市', '2', '32', '3206', '32', '0', '186', '', '');
INSERT INTO `my_region` VALUES ('3207', '连云港市', '2', '32', '3207', '32', '0', '184', '', '');
INSERT INTO `my_region` VALUES ('3208', '淮安市', '2', '32', '3208', '32', '0', '183', '', '');
INSERT INTO `my_region` VALUES ('3209', '盐城市', '2', '32', '3209', '32', '0', '192', '', '');
INSERT INTO `my_region` VALUES ('3210', '扬州市', '2', '32', '3210', '32', '0', '193', '', '');
INSERT INTO `my_region` VALUES ('3211', '镇江市', '2', '32', '3211', '32', '0', '194', '', '');
INSERT INTO `my_region` VALUES ('3212', '泰州市', '2', '32', '3212', '32', '0', '189', '', '');
INSERT INTO `my_region` VALUES ('3213', '宿迁市', '2', '32', '3213', '32', '0', '188', '', '');
INSERT INTO `my_region` VALUES ('3301', '杭州市', '2', '33', '3301', '33', '0', '379', '', '');
INSERT INTO `my_region` VALUES ('3302', '宁波市', '2', '33', '3302', '33', '0', '384', '', '');
INSERT INTO `my_region` VALUES ('3303', '温州市', '2', '33', '3303', '33', '0', '387', '', '');
INSERT INTO `my_region` VALUES ('3304', '嘉兴市', '2', '33', '3304', '33', '0', '381', '', '');
INSERT INTO `my_region` VALUES ('3305', '湖州市', '2', '33', '3305', '33', '0', '380', '', '');
INSERT INTO `my_region` VALUES ('3306', '绍兴市', '2', '33', '3306', '33', '0', '385', '', '');
INSERT INTO `my_region` VALUES ('3307', '金华市', '2', '33', '3307', '33', '0', '382', '', '');
INSERT INTO `my_region` VALUES ('3308', '衢州市', '2', '33', '3308', '33', '0', '389', '', '');
INSERT INTO `my_region` VALUES ('3309', '舟山市', '2', '33', '3309', '33', '0', '388', '', '');
INSERT INTO `my_region` VALUES ('3310', '台州市', '2', '33', '3310', '33', '0', '386', '', '');
INSERT INTO `my_region` VALUES ('3311', '丽水市', '2', '33', '3311', '33', '0', '383', '', '');
INSERT INTO `my_region` VALUES ('3401', '合肥市', '2', '34', '3401', '34', '0', '7', '', '');
INSERT INTO `my_region` VALUES ('3402', '芜湖市', '2', '34', '3402', '34', '0', '15', '', '');
INSERT INTO `my_region` VALUES ('3403', '蚌埠市', '2', '34', '3403', '34', '0', '2', '', '');
INSERT INTO `my_region` VALUES ('3404', '淮南市', '2', '34', '3404', '34', '0', '9', '', '');
INSERT INTO `my_region` VALUES ('3405', '马鞍山市', '2', '34', '3405', '34', '0', '12', '', '');
INSERT INTO `my_region` VALUES ('3406', '淮北市', '2', '34', '3406', '34', '0', '8', '', '');
INSERT INTO `my_region` VALUES ('3407', '铜陵市', '2', '34', '3407', '34', '0', '14', '', '');
INSERT INTO `my_region` VALUES ('3408', '安庆市', '2', '34', '3408', '34', '0', '1', '', '');
INSERT INTO `my_region` VALUES ('3410', '黄山市', '2', '34', '3410', '34', '0', '10', '', '');
INSERT INTO `my_region` VALUES ('3411', '滁州市', '2', '34', '3411', '34', '0', '5', '', '');
INSERT INTO `my_region` VALUES ('3412', '阜阳市', '2', '34', '3412', '34', '0', '6', '', '');
INSERT INTO `my_region` VALUES ('3413', '宿州市', '2', '34', '3413', '34', '0', '13', '', '');
INSERT INTO `my_region` VALUES ('3415', '六安市', '2', '34', '3415', '34', '0', '11', '', '');
INSERT INTO `my_region` VALUES ('3416', '亳州市', '2', '34', '3416', '34', '0', '17', '', '');
INSERT INTO `my_region` VALUES ('3417', '池州市', '2', '34', '3417', '34', '0', '4', '', '');
INSERT INTO `my_region` VALUES ('3418', '宣城市', '2', '34', '3418', '34', '0', '16', '', '');
INSERT INTO `my_region` VALUES ('3501', '福州市', '2', '35', '3501', '35', '0', '36', '', '');
INSERT INTO `my_region` VALUES ('3502', '厦门市', '2', '35', '3502', '35', '0', '43', '', '');
INSERT INTO `my_region` VALUES ('3503', '莆田市', '2', '35', '3503', '35', '0', '40', '', '');
INSERT INTO `my_region` VALUES ('3504', '三明市', '2', '35', '3504', '35', '0', '42', '', '');
INSERT INTO `my_region` VALUES ('3505', '泉州市', '2', '35', '3505', '35', '0', '41', '', '');
INSERT INTO `my_region` VALUES ('3506', '漳州市', '2', '35', '3506', '35', '0', '44', '', '');
INSERT INTO `my_region` VALUES ('3507', '南平市', '2', '35', '3507', '35', '0', '38', '', '');
INSERT INTO `my_region` VALUES ('3508', '龙岩市', '2', '35', '3508', '35', '0', '37', '', '');
INSERT INTO `my_region` VALUES ('3509', '宁德市', '2', '35', '3509', '35', '0', '39', '', '');
INSERT INTO `my_region` VALUES ('3601', '南昌市', '2', '36', '3601', '36', '0', '200', '', '');
INSERT INTO `my_region` VALUES ('3602', '景德镇市', '2', '36', '3602', '36', '0', '198', '', '');
INSERT INTO `my_region` VALUES ('3603', '萍乡市', '2', '36', '3603', '36', '0', '201', '', '');
INSERT INTO `my_region` VALUES ('3604', '九江市', '2', '36', '3604', '36', '0', '199', '', '');
INSERT INTO `my_region` VALUES ('3605', '新余市', '2', '36', '3605', '36', '0', '203', '', '');
INSERT INTO `my_region` VALUES ('3606', '鹰潭市', '2', '36', '3606', '36', '0', '205', '', '');
INSERT INTO `my_region` VALUES ('3607', '赣州市', '2', '36', '3607', '36', '0', '196', '', '');
INSERT INTO `my_region` VALUES ('3608', '吉安市', '2', '36', '3608', '36', '0', '197', '', '');
INSERT INTO `my_region` VALUES ('3609', '宜春市', '2', '36', '3609', '36', '0', '204', '', '');
INSERT INTO `my_region` VALUES ('3610', '抚州市', '2', '36', '3610', '36', '0', '195', '', '');
INSERT INTO `my_region` VALUES ('3611', '上饶市', '2', '36', '3611', '36', '0', '202', '', '');
INSERT INTO `my_region` VALUES ('3701', '济南市', '2', '37', '3701', '37', '0', '249', '', '');
INSERT INTO `my_region` VALUES ('3702', '青岛市', '2', '37', '3702', '37', '0', '254', '', '');
INSERT INTO `my_region` VALUES ('3703', '淄博市', '2', '37', '3703', '37', '0', '261', '', '');
INSERT INTO `my_region` VALUES ('3704', '枣庄市', '2', '37', '3704', '37', '0', '260', '', '');
INSERT INTO `my_region` VALUES ('3705', '东营市', '2', '37', '3705', '37', '0', '247', '', '');
INSERT INTO `my_region` VALUES ('3706', '烟台市', '2', '37', '3706', '37', '0', '259', '', '');
INSERT INTO `my_region` VALUES ('3707', '潍坊市', '2', '37', '3707', '37', '0', '258', '', '');
INSERT INTO `my_region` VALUES ('3708', '济宁市', '2', '37', '3708', '37', '0', '250', '', '');
INSERT INTO `my_region` VALUES ('3709', '泰安市', '2', '37', '3709', '37', '0', '256', '', '');
INSERT INTO `my_region` VALUES ('3710', '威海市', '2', '37', '3710', '37', '0', '257', '', '');
INSERT INTO `my_region` VALUES ('3711', '日照市', '2', '37', '3711', '37', '0', '255', '', '');
INSERT INTO `my_region` VALUES ('3712', '莱芜市', '2', '37', '3712', '37', '0', '251', '', '');
INSERT INTO `my_region` VALUES ('3713', '临沂市', '2', '37', '3713', '37', '0', '253', '', '');
INSERT INTO `my_region` VALUES ('3714', '德州市', '2', '37', '3714', '37', '0', '246', '', '');
INSERT INTO `my_region` VALUES ('3715', '聊城市', '2', '37', '3715', '37', '0', '252', '', '');
INSERT INTO `my_region` VALUES ('3716', '滨州市', '2', '37', '3716', '37', '0', '245', '', '');
INSERT INTO `my_region` VALUES ('3717', '菏泽市', '2', '37', '3717', '37', '0', '248', '', '');
INSERT INTO `my_region` VALUES ('4101', '郑州市', '2', '41', '4101', '41', '0', '128', '', '');
INSERT INTO `my_region` VALUES ('4102', '开封市', '2', '41', '4102', '41', '0', '119', '', '');
INSERT INTO `my_region` VALUES ('4103', '洛阳市', '2', '41', '4103', '41', '0', '120', '', '');
INSERT INTO `my_region` VALUES ('4104', '平顶山市', '2', '41', '4104', '41', '0', '122', '', '');
INSERT INTO `my_region` VALUES ('4105', '安阳市', '2', '41', '4105', '41', '0', '116', '', '');
INSERT INTO `my_region` VALUES ('4106', '鹤壁市', '2', '41', '4106', '41', '0', '117', '', '');
INSERT INTO `my_region` VALUES ('4107', '新乡市', '2', '41', '4107', '41', '0', '125', '', '');
INSERT INTO `my_region` VALUES ('4108', '焦作市', '2', '41', '4108', '41', '0', '118', '', '');
INSERT INTO `my_region` VALUES ('4109', '濮阳市', '2', '41', '4109', '41', '0', '132', '', '');
INSERT INTO `my_region` VALUES ('4110', '许昌市', '2', '41', '4110', '41', '0', '127', '', '');
INSERT INTO `my_region` VALUES ('4111', '漯河市', '2', '41', '4111', '41', '0', '131', '', '');
INSERT INTO `my_region` VALUES ('4112', '三门峡市', '2', '41', '4112', '41', '0', '123', '', '');
INSERT INTO `my_region` VALUES ('4113', '南阳市', '2', '41', '4113', '41', '0', '121', '', '');
INSERT INTO `my_region` VALUES ('4114', '商丘市', '2', '41', '4114', '41', '0', '124', '', '');
INSERT INTO `my_region` VALUES ('4115', '信阳市', '2', '41', '4115', '41', '0', '126', '', '');
INSERT INTO `my_region` VALUES ('4116', '周口市', '2', '41', '4116', '41', '0', '129', '', '');
INSERT INTO `my_region` VALUES ('4117', '驻马店市', '2', '41', '4117', '41', '0', '130', '', '');
INSERT INTO `my_region` VALUES ('4190', '省直辖县级行政区划', '2', '41', '4190', '41', '0', null, '', '');
INSERT INTO `my_region` VALUES ('4201', '武汉市', '2', '42', '4201', '42', '0', '154', '', '');
INSERT INTO `my_region` VALUES ('4202', '黄石市', '2', '42', '4202', '42', '0', '149', '', '');
INSERT INTO `my_region` VALUES ('4203', '十堰市', '2', '42', '4203', '42', '0', '152', '', '');
INSERT INTO `my_region` VALUES ('4205', '宜昌市', '2', '42', '4205', '42', '0', '158', '', '');
INSERT INTO `my_region` VALUES ('4206', '襄阳市', '2', '42', '4206', '42', '0', null, '', '');
INSERT INTO `my_region` VALUES ('4207', '鄂州市', '2', '42', '4207', '42', '0', '146', '', '');
INSERT INTO `my_region` VALUES ('4208', '荆门市', '2', '42', '4208', '42', '0', '150', '', '');
INSERT INTO `my_region` VALUES ('4209', '孝感市', '2', '42', '4209', '42', '0', '157', '', '');
INSERT INTO `my_region` VALUES ('4210', '荆州市', '2', '42', '4210', '42', '0', '151', '', '');
INSERT INTO `my_region` VALUES ('4211', '黄冈市', '2', '42', '4211', '42', '0', '148', '', '');
INSERT INTO `my_region` VALUES ('4212', '咸宁市', '2', '42', '4212', '42', '0', '155', '', '');
INSERT INTO `my_region` VALUES ('4213', '随州市', '2', '42', '4213', '42', '0', '153', '', '');
INSERT INTO `my_region` VALUES ('4228', '恩施土家族苗族自治州', '2', '42', '4228', '42', '0', '147', '', '');
INSERT INTO `my_region` VALUES ('4290', '省直辖县级行政区划', '2', '42', '4290', '42', '0', null, '', '');
INSERT INTO `my_region` VALUES ('4301', '长沙市', '2', '43', '4301', '43', '0', '160', '', '');
INSERT INTO `my_region` VALUES ('4302', '株洲市', '2', '43', '4302', '43', '0', '172', '', '');
INSERT INTO `my_region` VALUES ('4303', '湘潭市', '2', '43', '4303', '43', '0', '166', '', '');
INSERT INTO `my_region` VALUES ('4304', '衡阳市', '2', '43', '4304', '43', '0', '162', '', '');
INSERT INTO `my_region` VALUES ('4305', '邵阳市', '2', '43', '4305', '43', '0', '165', '', '');
INSERT INTO `my_region` VALUES ('4306', '岳阳市', '2', '43', '4306', '43', '0', '170', '', '');
INSERT INTO `my_region` VALUES ('4307', '常德市', '2', '43', '4307', '43', '0', '159', '', '');
INSERT INTO `my_region` VALUES ('4308', '张家界市', '2', '43', '4308', '43', '0', '171', '', '');
INSERT INTO `my_region` VALUES ('4309', '益阳市', '2', '43', '4309', '43', '0', '168', '', '');
INSERT INTO `my_region` VALUES ('4310', '郴州市', '2', '43', '4310', '43', '0', '161', '', '');
INSERT INTO `my_region` VALUES ('4311', '永州市', '2', '43', '4311', '43', '0', '169', '', '');
INSERT INTO `my_region` VALUES ('4312', '怀化市', '2', '43', '4312', '43', '0', '163', '', '');
INSERT INTO `my_region` VALUES ('4313', '娄底市', '2', '43', '4313', '43', '0', '164', '', '');
INSERT INTO `my_region` VALUES ('4331', '湘西土家族苗族自治州', '2', '43', '4331', '43', '0', '167', '', '');
INSERT INTO `my_region` VALUES ('4401', '广州市', '2', '44', '4401', '44', '0', '62', '', '');
INSERT INTO `my_region` VALUES ('4402', '韶关市', '2', '44', '4402', '44', '0', '72', '', '');
INSERT INTO `my_region` VALUES ('4403', '深圳市', '2', '44', '4403', '44', '0', '73', '', '');
INSERT INTO `my_region` VALUES ('4404', '珠海市', '2', '44', '4404', '44', '0', '79', '', '');
INSERT INTO `my_region` VALUES ('4405', '汕头市', '2', '44', '4405', '44', '0', '70', '', '');
INSERT INTO `my_region` VALUES ('4406', '佛山市', '2', '44', '4406', '44', '0', '61', '', '');
INSERT INTO `my_region` VALUES ('4407', '江门市', '2', '44', '4407', '44', '0', '65', '', '');
INSERT INTO `my_region` VALUES ('4408', '湛江市', '2', '44', '4408', '44', '0', '76', '', '');
INSERT INTO `my_region` VALUES ('4409', '茂名市', '2', '44', '4409', '44', '0', '67', '', '');
INSERT INTO `my_region` VALUES ('4412', '肇庆市', '2', '44', '4412', '44', '0', '77', '', '');
INSERT INTO `my_region` VALUES ('4413', '惠州市', '2', '44', '4413', '44', '0', '64', '', '');
INSERT INTO `my_region` VALUES ('4414', '梅州市', '2', '44', '4414', '44', '0', '68', '', '');
INSERT INTO `my_region` VALUES ('4415', '汕尾市', '2', '44', '4415', '44', '0', '71', '', '');
INSERT INTO `my_region` VALUES ('4416', '河源市', '2', '44', '4416', '44', '0', '63', '', '');
INSERT INTO `my_region` VALUES ('4417', '阳江市', '2', '44', '4417', '44', '0', '74', '', '');
INSERT INTO `my_region` VALUES ('4418', '清远市', '2', '44', '4418', '44', '0', '69', '', '');
INSERT INTO `my_region` VALUES ('4419', '东莞市', '2', '44', '4419', '44', '0', '60', '', '');
INSERT INTO `my_region` VALUES ('4420', '中山市', '2', '44', '4420', '44', '0', '78', '', '');
INSERT INTO `my_region` VALUES ('4451', '潮州市', '2', '44', '4451', '44', '0', '59', '', '');
INSERT INTO `my_region` VALUES ('4452', '揭阳市', '2', '44', '4452', '44', '0', '66', '', '');
INSERT INTO `my_region` VALUES ('4453', '云浮市', '2', '44', '4453', '44', '0', '75', '', '');
INSERT INTO `my_region` VALUES ('4501', '南宁市', '2', '45', '4501', '45', '0', '90', '', '');
INSERT INTO `my_region` VALUES ('4502', '柳州市', '2', '45', '4502', '45', '0', '89', '', '');
INSERT INTO `my_region` VALUES ('4503', '桂林市', '2', '45', '4503', '45', '0', '84', '', '');
INSERT INTO `my_region` VALUES ('4504', '梧州市', '2', '45', '4504', '45', '0', '92', '', '');
INSERT INTO `my_region` VALUES ('4505', '北海市', '2', '45', '4505', '45', '0', '81', '', '');
INSERT INTO `my_region` VALUES ('4506', '防城港市', '2', '45', '4506', '45', '0', '83', '', '');
INSERT INTO `my_region` VALUES ('4507', '钦州市', '2', '45', '4507', '45', '0', '91', '', '');
INSERT INTO `my_region` VALUES ('4508', '贵港市', '2', '45', '4508', '45', '0', '85', '', '');
INSERT INTO `my_region` VALUES ('4509', '玉林市', '2', '45', '4509', '45', '0', '93', '', '');
INSERT INTO `my_region` VALUES ('4510', '百色市', '2', '45', '4510', '45', '0', '80', '', '');
INSERT INTO `my_region` VALUES ('4511', '贺州市', '2', '45', '4511', '45', '0', '87', '', '');
INSERT INTO `my_region` VALUES ('4512', '河池市', '2', '45', '4512', '45', '0', '86', '', '');
INSERT INTO `my_region` VALUES ('4513', '来宾市', '2', '45', '4513', '45', '0', '88', '', '');
INSERT INTO `my_region` VALUES ('4514', '崇左市', '2', '45', '4514', '45', '0', '82', '', '');
INSERT INTO `my_region` VALUES ('4601', '海口市', '2', '46', '4601', '46', '0', '103', '', '');
INSERT INTO `my_region` VALUES ('4602', '三亚市', '2', '46', '4602', '46', '0', '104', '', '');
INSERT INTO `my_region` VALUES ('4603', '三沙市', '2', '46', '4603', '46', '0', null, '', '');
INSERT INTO `my_region` VALUES ('4604', '儋州市', '2', '46', '4604', '46', '0', null, '', '');
INSERT INTO `my_region` VALUES ('4690', '省直辖县级行政区划', '2', '46', '4690', '46', '0', null, '', '');
INSERT INTO `my_region` VALUES ('5001', '重庆市', '2', '50', '5001', '50', '0', null, '', '');
INSERT INTO `my_region` VALUES ('5002', '县', '2', '50', '5002', '50', '0', null, '', '');
INSERT INTO `my_region` VALUES ('5101', '成都市', '2', '51', '5101', '51', '0', '304', '', '');
INSERT INTO `my_region` VALUES ('5103', '自贡市', '2', '51', '5103', '51', '0', '321', '', '');
INSERT INTO `my_region` VALUES ('5104', '攀枝花市', '2', '51', '5104', '51', '0', '316', '', '');
INSERT INTO `my_region` VALUES ('5105', '泸州市', '2', '51', '5105', '51', '0', '322', '', '');
INSERT INTO `my_region` VALUES ('5106', '德阳市', '2', '51', '5106', '51', '0', '306', '', '');
INSERT INTO `my_region` VALUES ('5107', '绵阳市', '2', '51', '5107', '51', '0', '313', '', '');
INSERT INTO `my_region` VALUES ('5108', '广元市', '2', '51', '5108', '51', '0', '309', '', '');
INSERT INTO `my_region` VALUES ('5109', '遂宁市', '2', '51', '5109', '51', '0', '317', '', '');
INSERT INTO `my_region` VALUES ('5110', '内江市', '2', '51', '5110', '51', '0', '315', '', '');
INSERT INTO `my_region` VALUES ('5111', '乐山市', '2', '51', '5111', '51', '0', '310', '', '');
INSERT INTO `my_region` VALUES ('5113', '南充市', '2', '51', '5113', '51', '0', '314', '', '');
INSERT INTO `my_region` VALUES ('5114', '眉山市', '2', '51', '5114', '51', '0', '312', '', '');
INSERT INTO `my_region` VALUES ('5115', '宜宾市', '2', '51', '5115', '51', '0', '319', '', '');
INSERT INTO `my_region` VALUES ('5116', '广安市', '2', '51', '5116', '51', '0', '308', '', '');
INSERT INTO `my_region` VALUES ('5117', '达州市', '2', '51', '5117', '51', '0', '305', '', '');
INSERT INTO `my_region` VALUES ('5118', '雅安市', '2', '51', '5118', '51', '0', '318', '', '');
INSERT INTO `my_region` VALUES ('5119', '巴中市', '2', '51', '5119', '51', '0', '303', '', '');
INSERT INTO `my_region` VALUES ('5120', '资阳市', '2', '51', '5120', '51', '0', '320', '', '');
INSERT INTO `my_region` VALUES ('5132', '阿坝藏族羌族自治州', '2', '51', '5132', '51', '0', '302', '', '');
INSERT INTO `my_region` VALUES ('5133', '甘孜藏族自治州', '2', '51', '5133', '51', '0', '307', '', '');
INSERT INTO `my_region` VALUES ('5134', '凉山彝族自治州', '2', '51', '5134', '51', '0', '311', '', '');
INSERT INTO `my_region` VALUES ('5201', '贵阳市', '2', '52', '5201', '52', '0', '96', '', '');
INSERT INTO `my_region` VALUES ('5202', '六盘水市', '2', '52', '5202', '52', '0', '97', '', '');
INSERT INTO `my_region` VALUES ('5203', '遵义市', '2', '52', '5203', '52', '0', '102', '', '');
INSERT INTO `my_region` VALUES ('5204', '安顺市', '2', '52', '5204', '52', '0', '94', '', '');
INSERT INTO `my_region` VALUES ('5205', '毕节市', '2', '52', '5205', '52', '0', null, '', '');
INSERT INTO `my_region` VALUES ('5206', '铜仁市', '2', '52', '5206', '52', '0', null, '', '');
INSERT INTO `my_region` VALUES ('5223', '黔西南布依族苗族自治州', '2', '52', '5223', '52', '0', '100', '', '');
INSERT INTO `my_region` VALUES ('5226', '黔东南苗族侗族自治州', '2', '52', '5226', '52', '0', '98', '', '');
INSERT INTO `my_region` VALUES ('5227', '黔南布依族苗族自治州', '2', '52', '5227', '52', '0', '99', '', '');
INSERT INTO `my_region` VALUES ('5301', '昆明市', '2', '53', '5301', '53', '0', '369', '', '');
INSERT INTO `my_region` VALUES ('5303', '曲靖市', '2', '53', '5303', '53', '0', '373', '', '');
INSERT INTO `my_region` VALUES ('5304', '玉溪市', '2', '53', '5304', '53', '0', '377', '', '');
INSERT INTO `my_region` VALUES ('5305', '保山市', '2', '53', '5305', '53', '0', '363', '', '');
INSERT INTO `my_region` VALUES ('5306', '昭通市', '2', '53', '5306', '53', '0', '378', '', '');
INSERT INTO `my_region` VALUES ('5307', '丽江市', '2', '53', '5307', '53', '0', '370', '', '');
INSERT INTO `my_region` VALUES ('5308', '普洱市', '2', '53', '5308', '53', '0', null, '', '');
INSERT INTO `my_region` VALUES ('5309', '临沧市', '2', '53', '5309', '53', '0', '371', '', '');
INSERT INTO `my_region` VALUES ('5323', '楚雄彝族自治州', '2', '53', '5323', '53', '0', '364', '', '');
INSERT INTO `my_region` VALUES ('5325', '红河哈尼族彝族自治州', '2', '53', '5325', '53', '0', '368', '', '');
INSERT INTO `my_region` VALUES ('5326', '文山壮族苗族自治州', '2', '53', '5326', '53', '0', '375', '', '');
INSERT INTO `my_region` VALUES ('5328', '西双版纳傣族自治州', '2', '53', '5328', '53', '0', '376', '', '');
INSERT INTO `my_region` VALUES ('5329', '大理白族自治州', '2', '53', '5329', '53', '0', '365', '', '');
INSERT INTO `my_region` VALUES ('5331', '德宏傣族景颇族自治州', '2', '53', '5331', '53', '0', '366', '', '');
INSERT INTO `my_region` VALUES ('5333', '怒江傈僳族自治州', '2', '53', '5333', '53', '0', '372', '', '');
INSERT INTO `my_region` VALUES ('5334', '迪庆藏族自治州', '2', '53', '5334', '53', '0', '367', '', '');
INSERT INTO `my_region` VALUES ('5401', '拉萨市', '2', '54', '5401', '54', '0', '343', '', '');
INSERT INTO `my_region` VALUES ('5402', '日喀则市', '2', '54', '5402', '54', '0', null, '', '');
INSERT INTO `my_region` VALUES ('5403', '昌都市', '2', '54', '5403', '54', '0', null, '', '');
INSERT INTO `my_region` VALUES ('5404', '林芝市', '2', '54', '5404', '54', '0', null, '', '');
INSERT INTO `my_region` VALUES ('5405', '山南市', '2', '54', '5405', '54', '0', null, '', '');
INSERT INTO `my_region` VALUES ('5424', '那曲地区', '2', '54', '5424', '54', '0', '345', '', '');
INSERT INTO `my_region` VALUES ('5425', '阿里地区', '2', '54', '5425', '54', '0', '341', '', '');
INSERT INTO `my_region` VALUES ('6101', '西安市', '2', '61', '6101', '61', '0', '279', '', '');
INSERT INTO `my_region` VALUES ('6102', '铜川市', '2', '61', '6102', '61', '0', '277', '', '');
INSERT INTO `my_region` VALUES ('6103', '宝鸡市', '2', '61', '6103', '61', '0', '274', '', '');
INSERT INTO `my_region` VALUES ('6104', '咸阳市', '2', '61', '6104', '61', '0', '280', '', '');
INSERT INTO `my_region` VALUES ('6105', '渭南市', '2', '61', '6105', '61', '0', '278', '', '');
INSERT INTO `my_region` VALUES ('6106', '延安市', '2', '61', '6106', '61', '0', '281', '', '');
INSERT INTO `my_region` VALUES ('6107', '汉中市', '2', '61', '6107', '61', '0', '275', '', '');
INSERT INTO `my_region` VALUES ('6108', '榆林市', '2', '61', '6108', '61', '0', '282', '', '');
INSERT INTO `my_region` VALUES ('6109', '安康市', '2', '61', '6109', '61', '0', '273', '', '');
INSERT INTO `my_region` VALUES ('6110', '商洛市', '2', '61', '6110', '61', '0', '276', '', '');
INSERT INTO `my_region` VALUES ('6201', '兰州市', '2', '62', '6201', '62', '0', '51', '', '');
INSERT INTO `my_region` VALUES ('6202', '嘉峪关市', '2', '62', '6202', '62', '0', '48', '', '');
INSERT INTO `my_region` VALUES ('6203', '金昌市', '2', '62', '6203', '62', '0', '49', '', '');
INSERT INTO `my_region` VALUES ('6204', '白银市', '2', '62', '6204', '62', '0', '45', '', '');
INSERT INTO `my_region` VALUES ('6205', '天水市', '2', '62', '6205', '62', '0', '56', '', '');
INSERT INTO `my_region` VALUES ('6206', '武威市', '2', '62', '6206', '62', '0', '57', '', '');
INSERT INTO `my_region` VALUES ('6207', '张掖市', '2', '62', '6207', '62', '0', '58', '', '');
INSERT INTO `my_region` VALUES ('6208', '平凉市', '2', '62', '6208', '62', '0', '54', '', '');
INSERT INTO `my_region` VALUES ('6209', '酒泉市', '2', '62', '6209', '62', '0', '50', '', '');
INSERT INTO `my_region` VALUES ('6210', '庆阳市', '2', '62', '6210', '62', '0', '55', '', '');
INSERT INTO `my_region` VALUES ('6211', '定西市', '2', '62', '6211', '62', '0', '46', '', '');
INSERT INTO `my_region` VALUES ('6212', '陇南市', '2', '62', '6212', '62', '0', '53', '', '');
INSERT INTO `my_region` VALUES ('6229', '临夏回族自治州', '2', '62', '6229', '62', '0', '52', '', '');
INSERT INTO `my_region` VALUES ('6230', '甘南藏族自治州', '2', '62', '6230', '62', '0', '47', '', '');
INSERT INTO `my_region` VALUES ('6301', '西宁市', '2', '63', '6301', '63', '0', '243', '', '');
INSERT INTO `my_region` VALUES ('6302', '海东市', '2', '63', '6302', '63', '0', null, '', '');
INSERT INTO `my_region` VALUES ('6322', '海北藏族自治州', '2', '63', '6322', '63', '0', '238', '', '');
INSERT INTO `my_region` VALUES ('6323', '黄南藏族自治州', '2', '63', '6323', '63', '0', '242', '', '');
INSERT INTO `my_region` VALUES ('6325', '海南藏族自治州', '2', '63', '6325', '63', '0', '240', '', '');
INSERT INTO `my_region` VALUES ('6326', '果洛藏族自治州', '2', '63', '6326', '63', '0', '237', '', '');
INSERT INTO `my_region` VALUES ('6327', '玉树藏族自治州', '2', '63', '6327', '63', '0', '244', '', '');
INSERT INTO `my_region` VALUES ('6328', '海西蒙古族藏族自治州', '2', '63', '6328', '63', '0', '241', '', '');
INSERT INTO `my_region` VALUES ('6401', '银川市', '2', '64', '6401', '64', '0', '235', '', '');
INSERT INTO `my_region` VALUES ('6402', '石嘴山市', '2', '64', '6402', '64', '0', '233', '', '');
INSERT INTO `my_region` VALUES ('6403', '吴忠市', '2', '64', '6403', '64', '0', '234', '', '');
INSERT INTO `my_region` VALUES ('6404', '固原市', '2', '64', '6404', '64', '0', '232', '', '');
INSERT INTO `my_region` VALUES ('6405', '中卫市', '2', '64', '6405', '64', '0', '236', '', '');
INSERT INTO `my_region` VALUES ('6501', '乌鲁木齐市', '2', '65', '6501', '65', '0', '361', '', '');
INSERT INTO `my_region` VALUES ('6502', '克拉玛依市', '2', '65', '6502', '65', '0', '356', '', '');
INSERT INTO `my_region` VALUES ('6504', '吐鲁番市', '2', '65', '6504', '65', '0', null, '', '');
INSERT INTO `my_region` VALUES ('6505', '哈密市', '2', '65', '6505', '65', '0', null, '', '');
INSERT INTO `my_region` VALUES ('6523', '昌吉回族自治州', '2', '65', '6523', '65', '0', '352', '', '');
INSERT INTO `my_region` VALUES ('6527', '博尔塔拉蒙古自治州', '2', '65', '6527', '65', '0', '351', '', '');
INSERT INTO `my_region` VALUES ('6528', '巴音郭楞蒙古自治州', '2', '65', '6528', '65', '0', '350', '', '');
INSERT INTO `my_region` VALUES ('6529', '阿克苏地区', '2', '65', '6529', '65', '0', '348', '', '');
INSERT INTO `my_region` VALUES ('6530', '克孜勒苏柯尔克孜自治州', '2', '65', '6530', '65', '0', '357', '', '');
INSERT INTO `my_region` VALUES ('6531', '喀什地区', '2', '65', '6531', '65', '0', '355', '', '');
INSERT INTO `my_region` VALUES ('6532', '和田地区', '2', '65', '6532', '65', '0', '354', '', '');
INSERT INTO `my_region` VALUES ('6540', '伊犁哈萨克自治州', '2', '65', '6540', '65', '0', '362', '', '');
INSERT INTO `my_region` VALUES ('6542', '塔城地区', '2', '65', '6542', '65', '0', '359', '', '');
INSERT INTO `my_region` VALUES ('6543', '阿勒泰地区', '2', '65', '6543', '65', '0', '349', '', '');
INSERT INTO `my_region` VALUES ('6590', '自治区直辖县级行政区划', '2', '65', '6590', '65', '0', null, '', '');
INSERT INTO `my_region` VALUES ('110101', '东城区', '3', '11', '1101', '1101', '0', '562', '', '');
INSERT INTO `my_region` VALUES ('110102', '西城区', '3', '11', '1101', '1101', '0', '551', '', '');
INSERT INTO `my_region` VALUES ('110105', '朝阳区', '3', '11', '1101', '1101', '0', '565', '', '');
INSERT INTO `my_region` VALUES ('110106', '丰台区', '3', '11', '1101', '1101', '0', '560', '', '');
INSERT INTO `my_region` VALUES ('110107', '石景山区', '3', '11', '1101', '1101', '0', '554', '', '');
INSERT INTO `my_region` VALUES ('110108', '海淀区', '3', '11', '1101', '1101', '0', '559', '', '');
INSERT INTO `my_region` VALUES ('110109', '门头沟区', '3', '11', '1101', '1101', '0', '557', '', '');
INSERT INTO `my_region` VALUES ('110111', '房山区', '3', '11', '1101', '1101', '0', '561', '', '');
INSERT INTO `my_region` VALUES ('110112', '通州区', '3', '11', '1101', '1101', '0', '552', '', '');
INSERT INTO `my_region` VALUES ('110113', '顺义区', '3', '11', '1101', '1101', '0', '553', '', '');
INSERT INTO `my_region` VALUES ('110114', '昌平区', '3', '11', '1101', '1101', '0', '566', '', '');
INSERT INTO `my_region` VALUES ('110115', '大兴区', '3', '11', '1101', '1101', '0', '563', '', '');
INSERT INTO `my_region` VALUES ('110116', '怀柔区', '3', '11', '1101', '1101', '0', '558', '', '');
INSERT INTO `my_region` VALUES ('110117', '平谷区', '3', '11', '1101', '1101', '0', '555', '', '');
INSERT INTO `my_region` VALUES ('110118', '密云区', '3', '11', '1101', '1101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('110119', '延庆区', '3', '11', '1101', '1101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('120101', '和平区', '3', '12', '1201', '1201', '0', '543', '', '');
INSERT INTO `my_region` VALUES ('120102', '河东区', '3', '12', '1201', '1201', '0', '541', '', '');
INSERT INTO `my_region` VALUES ('120103', '河西区', '3', '12', '1201', '1201', '0', '540', '', '');
INSERT INTO `my_region` VALUES ('120104', '南开区', '3', '12', '1201', '1201', '0', '534', '', '');
INSERT INTO `my_region` VALUES ('120105', '河北区', '3', '12', '1201', '1201', '0', '542', '', '');
INSERT INTO `my_region` VALUES ('120106', '红桥区', '3', '12', '1201', '1201', '0', '539', '', '');
INSERT INTO `my_region` VALUES ('120110', '东丽区', '3', '12', '1201', '1201', '0', '545', '', '');
INSERT INTO `my_region` VALUES ('120111', '西青区', '3', '12', '1201', '1201', '0', '531', '', '');
INSERT INTO `my_region` VALUES ('120112', '津南区', '3', '12', '1201', '1201', '0', '537', '', '');
INSERT INTO `my_region` VALUES ('120113', '北辰区', '3', '12', '1201', '1201', '0', '547', '', '');
INSERT INTO `my_region` VALUES ('120114', '武清区', '3', '12', '1201', '1201', '0', '532', '', '');
INSERT INTO `my_region` VALUES ('120115', '宝坻区', '3', '12', '1201', '1201', '0', '548', '', '');
INSERT INTO `my_region` VALUES ('120116', '滨海新区', '3', '12', '1201', '1201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('120117', '宁河区', '3', '12', '1201', '1201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('120118', '静海区', '3', '12', '1201', '1201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('120119', '蓟州区', '3', '12', '1201', '1201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130101', '市辖区', '3', '13', '1301', '1301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130102', '长安区', '3', '13', '1301', '1301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130104', '桥西区', '3', '13', '1301', '1301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130105', '新华区', '3', '13', '1301', '1301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130107', '井陉矿区', '3', '13', '1301', '1301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130108', '裕华区', '3', '13', '1301', '1301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130109', '藁城区', '3', '13', '1301', '1301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130110', '鹿泉区', '3', '13', '1301', '1301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130111', '栾城区', '3', '13', '1301', '1301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130121', '井陉县', '3', '13', '1301', '1301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130123', '正定县', '3', '13', '1301', '1301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130125', '行唐县', '3', '13', '1301', '1301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130126', '灵寿县', '3', '13', '1301', '1301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130127', '高邑县', '3', '13', '1301', '1301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130128', '深泽县', '3', '13', '1301', '1301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130129', '赞皇县', '3', '13', '1301', '1301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130130', '无极县', '3', '13', '1301', '1301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130131', '平山县', '3', '13', '1301', '1301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130132', '元氏县', '3', '13', '1301', '1301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130133', '赵县', '3', '13', '1301', '1301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130183', '晋州市', '3', '13', '1301', '1301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130184', '新乐市', '3', '13', '1301', '1301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130201', '市辖区', '3', '13', '1302', '1302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130202', '路南区', '3', '13', '1302', '1302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130203', '路北区', '3', '13', '1302', '1302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130204', '古冶区', '3', '13', '1302', '1302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130205', '开平区', '3', '13', '1302', '1302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130207', '丰南区', '3', '13', '1302', '1302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130208', '丰润区', '3', '13', '1302', '1302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130209', '曹妃甸区', '3', '13', '1302', '1302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130223', '滦县', '3', '13', '1302', '1302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130224', '滦南县', '3', '13', '1302', '1302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130225', '乐亭县', '3', '13', '1302', '1302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130227', '迁西县', '3', '13', '1302', '1302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130229', '玉田县', '3', '13', '1302', '1302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130281', '遵化市', '3', '13', '1302', '1302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130283', '迁安市', '3', '13', '1302', '1302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130301', '市辖区', '3', '13', '1303', '1303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130302', '海港区', '3', '13', '1303', '1303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130303', '山海关区', '3', '13', '1303', '1303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130304', '北戴河区', '3', '13', '1303', '1303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130306', '抚宁区', '3', '13', '1303', '1303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130321', '青龙满族自治县', '3', '13', '1303', '1303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130322', '昌黎县', '3', '13', '1303', '1303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130324', '卢龙县', '3', '13', '1303', '1303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130401', '市辖区', '3', '13', '1304', '1304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130402', '邯山区', '3', '13', '1304', '1304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130403', '丛台区', '3', '13', '1304', '1304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130404', '复兴区', '3', '13', '1304', '1304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130406', '峰峰矿区', '3', '13', '1304', '1304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130421', '邯郸县', '3', '13', '1304', '1304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130423', '临漳县', '3', '13', '1304', '1304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130424', '成安县', '3', '13', '1304', '1304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130425', '大名县', '3', '13', '1304', '1304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130426', '涉县', '3', '13', '1304', '1304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130427', '磁县', '3', '13', '1304', '1304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130428', '肥乡县', '3', '13', '1304', '1304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130429', '永年县', '3', '13', '1304', '1304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130430', '邱县', '3', '13', '1304', '1304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130431', '鸡泽县', '3', '13', '1304', '1304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130432', '广平县', '3', '13', '1304', '1304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130433', '馆陶县', '3', '13', '1304', '1304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130434', '魏县', '3', '13', '1304', '1304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130435', '曲周县', '3', '13', '1304', '1304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130481', '武安市', '3', '13', '1304', '1304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130501', '市辖区', '3', '13', '1305', '1305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130502', '桥东区', '3', '13', '1305', '1305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130503', '桥西区', '3', '13', '1305', '1305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130521', '邢台县', '3', '13', '1305', '1305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130522', '临城县', '3', '13', '1305', '1305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130523', '内丘县', '3', '13', '1305', '1305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130524', '柏乡县', '3', '13', '1305', '1305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130525', '隆尧县', '3', '13', '1305', '1305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130526', '任县', '3', '13', '1305', '1305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130527', '南和县', '3', '13', '1305', '1305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130528', '宁晋县', '3', '13', '1305', '1305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130529', '巨鹿县', '3', '13', '1305', '1305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130530', '新河县', '3', '13', '1305', '1305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130531', '广宗县', '3', '13', '1305', '1305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130532', '平乡县', '3', '13', '1305', '1305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130533', '威县', '3', '13', '1305', '1305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130534', '清河县', '3', '13', '1305', '1305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130535', '临西县', '3', '13', '1305', '1305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130581', '南宫市', '3', '13', '1305', '1305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130582', '沙河市', '3', '13', '1305', '1305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130601', '市辖区', '3', '13', '1306', '1306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130602', '竞秀区', '3', '13', '1306', '1306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130606', '莲池区', '3', '13', '1306', '1306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130607', '满城区', '3', '13', '1306', '1306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130608', '清苑区', '3', '13', '1306', '1306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130609', '徐水区', '3', '13', '1306', '1306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130623', '涞水县', '3', '13', '1306', '1306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130624', '阜平县', '3', '13', '1306', '1306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130626', '定兴县', '3', '13', '1306', '1306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130627', '唐县', '3', '13', '1306', '1306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130628', '高阳县', '3', '13', '1306', '1306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130629', '容城县', '3', '13', '1306', '1306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130630', '涞源县', '3', '13', '1306', '1306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130631', '望都县', '3', '13', '1306', '1306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130632', '安新县', '3', '13', '1306', '1306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130633', '易县', '3', '13', '1306', '1306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130634', '曲阳县', '3', '13', '1306', '1306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130635', '蠡县', '3', '13', '1306', '1306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130636', '顺平县', '3', '13', '1306', '1306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130637', '博野县', '3', '13', '1306', '1306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130638', '雄县', '3', '13', '1306', '1306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130681', '涿州市', '3', '13', '1306', '1306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130683', '安国市', '3', '13', '1306', '1306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130684', '高碑店市', '3', '13', '1306', '1306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130701', '市辖区', '3', '13', '1307', '1307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130702', '桥东区', '3', '13', '1307', '1307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130703', '桥西区', '3', '13', '1307', '1307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130705', '宣化区', '3', '13', '1307', '1307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130706', '下花园区', '3', '13', '1307', '1307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130708', '万全区', '3', '13', '1307', '1307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130709', '崇礼区', '3', '13', '1307', '1307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130722', '张北县', '3', '13', '1307', '1307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130723', '康保县', '3', '13', '1307', '1307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130724', '沽源县', '3', '13', '1307', '1307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130725', '尚义县', '3', '13', '1307', '1307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130726', '蔚县', '3', '13', '1307', '1307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130727', '阳原县', '3', '13', '1307', '1307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130728', '怀安县', '3', '13', '1307', '1307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130730', '怀来县', '3', '13', '1307', '1307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130731', '涿鹿县', '3', '13', '1307', '1307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130732', '赤城县', '3', '13', '1307', '1307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130801', '市辖区', '3', '13', '1308', '1308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130802', '双桥区', '3', '13', '1308', '1308', '0', '492', '', '');
INSERT INTO `my_region` VALUES ('130803', '双滦区', '3', '13', '1308', '1308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130804', '鹰手营子矿区', '3', '13', '1308', '1308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130821', '承德县', '3', '13', '1308', '1308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130822', '兴隆县', '3', '13', '1308', '1308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130823', '平泉县', '3', '13', '1308', '1308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130824', '滦平县', '3', '13', '1308', '1308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130825', '隆化县', '3', '13', '1308', '1308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130826', '丰宁满族自治县', '3', '13', '1308', '1308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130827', '宽城满族自治县', '3', '13', '1308', '1308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130828', '围场满族蒙古族自治县', '3', '13', '1308', '1308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130901', '市辖区', '3', '13', '1309', '1309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130902', '新华区', '3', '13', '1309', '1309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130903', '运河区', '3', '13', '1309', '1309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130921', '沧县', '3', '13', '1309', '1309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130922', '青县', '3', '13', '1309', '1309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130923', '东光县', '3', '13', '1309', '1309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130924', '海兴县', '3', '13', '1309', '1309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130925', '盐山县', '3', '13', '1309', '1309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130926', '肃宁县', '3', '13', '1309', '1309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130927', '南皮县', '3', '13', '1309', '1309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130928', '吴桥县', '3', '13', '1309', '1309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130929', '献县', '3', '13', '1309', '1309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130930', '孟村回族自治县', '3', '13', '1309', '1309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130981', '泊头市', '3', '13', '1309', '1309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130982', '任丘市', '3', '13', '1309', '1309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130983', '黄骅市', '3', '13', '1309', '1309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('130984', '河间市', '3', '13', '1309', '1309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('131001', '市辖区', '3', '13', '1310', '1310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('131002', '安次区', '3', '13', '1310', '1310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('131003', '广阳区', '3', '13', '1310', '1310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('131022', '固安县', '3', '13', '1310', '1310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('131023', '永清县', '3', '13', '1310', '1310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('131024', '香河县', '3', '13', '1310', '1310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('131025', '大城县', '3', '13', '1310', '1310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('131026', '文安县', '3', '13', '1310', '1310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('131028', '大厂回族自治县', '3', '13', '1310', '1310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('131081', '霸州市', '3', '13', '1310', '1310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('131082', '三河市', '3', '13', '1310', '1310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('131101', '市辖区', '3', '13', '1311', '1311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('131102', '桃城区', '3', '13', '1311', '1311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('131103', '冀州区', '3', '13', '1311', '1311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('131121', '枣强县', '3', '13', '1311', '1311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('131122', '武邑县', '3', '13', '1311', '1311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('131123', '武强县', '3', '13', '1311', '1311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('131124', '饶阳县', '3', '13', '1311', '1311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('131125', '安平县', '3', '13', '1311', '1311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('131126', '故城县', '3', '13', '1311', '1311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('131127', '景县', '3', '13', '1311', '1311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('131128', '阜城县', '3', '13', '1311', '1311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('131182', '深州市', '3', '13', '1311', '1311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('139001', '定州市', '3', '13', '1390', '1390', '0', null, '', '');
INSERT INTO `my_region` VALUES ('139002', '辛集市', '3', '13', '1390', '1390', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140101', '市辖区', '3', '14', '1401', '1401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140105', '小店区', '3', '14', '1401', '1401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140106', '迎泽区', '3', '14', '1401', '1401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140107', '杏花岭区', '3', '14', '1401', '1401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140108', '尖草坪区', '3', '14', '1401', '1401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140109', '万柏林区', '3', '14', '1401', '1401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140110', '晋源区', '3', '14', '1401', '1401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140121', '清徐县', '3', '14', '1401', '1401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140122', '阳曲县', '3', '14', '1401', '1401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140123', '娄烦县', '3', '14', '1401', '1401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140181', '古交市', '3', '14', '1401', '1401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140201', '市辖区', '3', '14', '1402', '1402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140202', '城区', '3', '14', '1402', '1402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140203', '矿区', '3', '14', '1402', '1402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140211', '南郊区', '3', '14', '1402', '1402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140212', '新荣区', '3', '14', '1402', '1402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140221', '阳高县', '3', '14', '1402', '1402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140222', '天镇县', '3', '14', '1402', '1402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140223', '广灵县', '3', '14', '1402', '1402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140224', '灵丘县', '3', '14', '1402', '1402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140225', '浑源县', '3', '14', '1402', '1402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140226', '左云县', '3', '14', '1402', '1402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140227', '大同县', '3', '14', '1402', '1402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140301', '市辖区', '3', '14', '1403', '1403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140302', '城区', '3', '14', '1403', '1403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140303', '矿区', '3', '14', '1403', '1403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140311', '郊区', '3', '14', '1403', '1403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140321', '平定县', '3', '14', '1403', '1403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140322', '盂县', '3', '14', '1403', '1403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140401', '市辖区', '3', '14', '1404', '1404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140402', '城区', '3', '14', '1404', '1404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140411', '郊区', '3', '14', '1404', '1404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140421', '长治县', '3', '14', '1404', '1404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140423', '襄垣县', '3', '14', '1404', '1404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140424', '屯留县', '3', '14', '1404', '1404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140425', '平顺县', '3', '14', '1404', '1404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140426', '黎城县', '3', '14', '1404', '1404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140427', '壶关县', '3', '14', '1404', '1404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140428', '长子县', '3', '14', '1404', '1404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140429', '武乡县', '3', '14', '1404', '1404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140430', '沁县', '3', '14', '1404', '1404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140431', '沁源县', '3', '14', '1404', '1404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140481', '潞城市', '3', '14', '1404', '1404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140501', '市辖区', '3', '14', '1405', '1405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140502', '城区', '3', '14', '1405', '1405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140521', '沁水县', '3', '14', '1405', '1405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140522', '阳城县', '3', '14', '1405', '1405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140524', '陵川县', '3', '14', '1405', '1405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140525', '泽州县', '3', '14', '1405', '1405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140581', '高平市', '3', '14', '1405', '1405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140601', '市辖区', '3', '14', '1406', '1406', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140602', '朔城区', '3', '14', '1406', '1406', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140603', '平鲁区', '3', '14', '1406', '1406', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140621', '山阴县', '3', '14', '1406', '1406', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140622', '应县', '3', '14', '1406', '1406', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140623', '右玉县', '3', '14', '1406', '1406', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140624', '怀仁县', '3', '14', '1406', '1406', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140701', '市辖区', '3', '14', '1407', '1407', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140702', '榆次区', '3', '14', '1407', '1407', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140721', '榆社县', '3', '14', '1407', '1407', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140722', '左权县', '3', '14', '1407', '1407', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140723', '和顺县', '3', '14', '1407', '1407', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140724', '昔阳县', '3', '14', '1407', '1407', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140725', '寿阳县', '3', '14', '1407', '1407', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140726', '太谷县', '3', '14', '1407', '1407', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140727', '祁县', '3', '14', '1407', '1407', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140728', '平遥县', '3', '14', '1407', '1407', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140729', '灵石县', '3', '14', '1407', '1407', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140781', '介休市', '3', '14', '1407', '1407', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140801', '市辖区', '3', '14', '1408', '1408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140802', '盐湖区', '3', '14', '1408', '1408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140821', '临猗县', '3', '14', '1408', '1408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140822', '万荣县', '3', '14', '1408', '1408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140823', '闻喜县', '3', '14', '1408', '1408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140824', '稷山县', '3', '14', '1408', '1408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140825', '新绛县', '3', '14', '1408', '1408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140826', '绛县', '3', '14', '1408', '1408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140827', '垣曲县', '3', '14', '1408', '1408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140828', '夏县', '3', '14', '1408', '1408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140829', '平陆县', '3', '14', '1408', '1408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140830', '芮城县', '3', '14', '1408', '1408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140881', '永济市', '3', '14', '1408', '1408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140882', '河津市', '3', '14', '1408', '1408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140901', '市辖区', '3', '14', '1409', '1409', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140902', '忻府区', '3', '14', '1409', '1409', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140921', '定襄县', '3', '14', '1409', '1409', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140922', '五台县', '3', '14', '1409', '1409', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140923', '代县', '3', '14', '1409', '1409', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140924', '繁峙县', '3', '14', '1409', '1409', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140925', '宁武县', '3', '14', '1409', '1409', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140926', '静乐县', '3', '14', '1409', '1409', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140927', '神池县', '3', '14', '1409', '1409', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140928', '五寨县', '3', '14', '1409', '1409', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140929', '岢岚县', '3', '14', '1409', '1409', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140930', '河曲县', '3', '14', '1409', '1409', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140931', '保德县', '3', '14', '1409', '1409', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140932', '偏关县', '3', '14', '1409', '1409', '0', null, '', '');
INSERT INTO `my_region` VALUES ('140981', '原平市', '3', '14', '1409', '1409', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141001', '市辖区', '3', '14', '1410', '1410', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141002', '尧都区', '3', '14', '1410', '1410', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141021', '曲沃县', '3', '14', '1410', '1410', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141022', '翼城县', '3', '14', '1410', '1410', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141023', '襄汾县', '3', '14', '1410', '1410', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141024', '洪洞县', '3', '14', '1410', '1410', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141025', '古县', '3', '14', '1410', '1410', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141026', '安泽县', '3', '14', '1410', '1410', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141027', '浮山县', '3', '14', '1410', '1410', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141028', '吉县', '3', '14', '1410', '1410', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141029', '乡宁县', '3', '14', '1410', '1410', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141030', '大宁县', '3', '14', '1410', '1410', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141031', '隰县', '3', '14', '1410', '1410', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141032', '永和县', '3', '14', '1410', '1410', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141033', '蒲县', '3', '14', '1410', '1410', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141034', '汾西县', '3', '14', '1410', '1410', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141081', '侯马市', '3', '14', '1410', '1410', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141082', '霍州市', '3', '14', '1410', '1410', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141101', '市辖区', '3', '14', '1411', '1411', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141102', '离石区', '3', '14', '1411', '1411', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141121', '文水县', '3', '14', '1411', '1411', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141122', '交城县', '3', '14', '1411', '1411', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141123', '兴县', '3', '14', '1411', '1411', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141124', '临县', '3', '14', '1411', '1411', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141125', '柳林县', '3', '14', '1411', '1411', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141126', '石楼县', '3', '14', '1411', '1411', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141127', '岚县', '3', '14', '1411', '1411', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141128', '方山县', '3', '14', '1411', '1411', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141129', '中阳县', '3', '14', '1411', '1411', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141130', '交口县', '3', '14', '1411', '1411', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141181', '孝义市', '3', '14', '1411', '1411', '0', null, '', '');
INSERT INTO `my_region` VALUES ('141182', '汾阳市', '3', '14', '1411', '1411', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150101', '市辖区', '3', '15', '1501', '1501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150102', '新城区', '3', '15', '1501', '1501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150103', '回民区', '3', '15', '1501', '1501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150104', '玉泉区', '3', '15', '1501', '1501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150105', '赛罕区', '3', '15', '1501', '1501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150121', '土默特左旗', '3', '15', '1501', '1501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150122', '托克托县', '3', '15', '1501', '1501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150123', '和林格尔县', '3', '15', '1501', '1501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150124', '清水河县', '3', '15', '1501', '1501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150125', '武川县', '3', '15', '1501', '1501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150201', '市辖区', '3', '15', '1502', '1502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150202', '东河区', '3', '15', '1502', '1502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150203', '昆都仑区', '3', '15', '1502', '1502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150204', '青山区', '3', '15', '1502', '1502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150205', '石拐区', '3', '15', '1502', '1502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150206', '白云鄂博矿区', '3', '15', '1502', '1502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150207', '九原区', '3', '15', '1502', '1502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150221', '土默特右旗', '3', '15', '1502', '1502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150222', '固阳县', '3', '15', '1502', '1502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150223', '达尔罕茂明安联合旗', '3', '15', '1502', '1502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150301', '市辖区', '3', '15', '1503', '1503', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150302', '海勃湾区', '3', '15', '1503', '1503', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150303', '海南区', '3', '15', '1503', '1503', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150304', '乌达区', '3', '15', '1503', '1503', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150401', '市辖区', '3', '15', '1504', '1504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150402', '红山区', '3', '15', '1504', '1504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150403', '元宝山区', '3', '15', '1504', '1504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150404', '松山区', '3', '15', '1504', '1504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150421', '阿鲁科尔沁旗', '3', '15', '1504', '1504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150422', '巴林左旗', '3', '15', '1504', '1504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150423', '巴林右旗', '3', '15', '1504', '1504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150424', '林西县', '3', '15', '1504', '1504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150425', '克什克腾旗', '3', '15', '1504', '1504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150426', '翁牛特旗', '3', '15', '1504', '1504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150428', '喀喇沁旗', '3', '15', '1504', '1504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150429', '宁城县', '3', '15', '1504', '1504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150430', '敖汉旗', '3', '15', '1504', '1504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150501', '市辖区', '3', '15', '1505', '1505', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150502', '科尔沁区', '3', '15', '1505', '1505', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150521', '科尔沁左翼中旗', '3', '15', '1505', '1505', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150522', '科尔沁左翼后旗', '3', '15', '1505', '1505', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150523', '开鲁县', '3', '15', '1505', '1505', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150524', '库伦旗', '3', '15', '1505', '1505', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150525', '奈曼旗', '3', '15', '1505', '1505', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150526', '扎鲁特旗', '3', '15', '1505', '1505', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150581', '霍林郭勒市', '3', '15', '1505', '1505', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150601', '市辖区', '3', '15', '1506', '1506', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150602', '东胜区', '3', '15', '1506', '1506', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150603', '康巴什区', '3', '15', '1506', '1506', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150621', '达拉特旗', '3', '15', '1506', '1506', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150622', '准格尔旗', '3', '15', '1506', '1506', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150623', '鄂托克前旗', '3', '15', '1506', '1506', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150624', '鄂托克旗', '3', '15', '1506', '1506', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150625', '杭锦旗', '3', '15', '1506', '1506', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150626', '乌审旗', '3', '15', '1506', '1506', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150627', '伊金霍洛旗', '3', '15', '1506', '1506', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150701', '市辖区', '3', '15', '1507', '1507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150702', '海拉尔区', '3', '15', '1507', '1507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150703', '扎赉诺尔区', '3', '15', '1507', '1507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150721', '阿荣旗', '3', '15', '1507', '1507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150722', '莫力达瓦达斡尔族自治旗', '3', '15', '1507', '1507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150723', '鄂伦春自治旗', '3', '15', '1507', '1507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150724', '鄂温克族自治旗', '3', '15', '1507', '1507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150725', '陈巴尔虎旗', '3', '15', '1507', '1507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150726', '新巴尔虎左旗', '3', '15', '1507', '1507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150727', '新巴尔虎右旗', '3', '15', '1507', '1507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150781', '满洲里市', '3', '15', '1507', '1507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150782', '牙克石市', '3', '15', '1507', '1507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150783', '扎兰屯市', '3', '15', '1507', '1507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150784', '额尔古纳市', '3', '15', '1507', '1507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150785', '根河市', '3', '15', '1507', '1507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150801', '市辖区', '3', '15', '1508', '1508', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150802', '临河区', '3', '15', '1508', '1508', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150821', '五原县', '3', '15', '1508', '1508', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150822', '磴口县', '3', '15', '1508', '1508', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150823', '乌拉特前旗', '3', '15', '1508', '1508', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150824', '乌拉特中旗', '3', '15', '1508', '1508', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150825', '乌拉特后旗', '3', '15', '1508', '1508', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150826', '杭锦后旗', '3', '15', '1508', '1508', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150901', '市辖区', '3', '15', '1509', '1509', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150902', '集宁区', '3', '15', '1509', '1509', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150921', '卓资县', '3', '15', '1509', '1509', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150922', '化德县', '3', '15', '1509', '1509', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150923', '商都县', '3', '15', '1509', '1509', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150924', '兴和县', '3', '15', '1509', '1509', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150925', '凉城县', '3', '15', '1509', '1509', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150926', '察哈尔右翼前旗', '3', '15', '1509', '1509', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150927', '察哈尔右翼中旗', '3', '15', '1509', '1509', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150928', '察哈尔右翼后旗', '3', '15', '1509', '1509', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150929', '四子王旗', '3', '15', '1509', '1509', '0', null, '', '');
INSERT INTO `my_region` VALUES ('150981', '丰镇市', '3', '15', '1509', '1509', '0', null, '', '');
INSERT INTO `my_region` VALUES ('152201', '乌兰浩特市', '3', '15', '1522', '1522', '0', null, '', '');
INSERT INTO `my_region` VALUES ('152202', '阿尔山市', '3', '15', '1522', '1522', '0', null, '', '');
INSERT INTO `my_region` VALUES ('152221', '科尔沁右翼前旗', '3', '15', '1522', '1522', '0', null, '', '');
INSERT INTO `my_region` VALUES ('152222', '科尔沁右翼中旗', '3', '15', '1522', '1522', '0', null, '', '');
INSERT INTO `my_region` VALUES ('152223', '扎赉特旗', '3', '15', '1522', '1522', '0', null, '', '');
INSERT INTO `my_region` VALUES ('152224', '突泉县', '3', '15', '1522', '1522', '0', null, '', '');
INSERT INTO `my_region` VALUES ('152501', '二连浩特市', '3', '15', '1525', '1525', '0', null, '', '');
INSERT INTO `my_region` VALUES ('152502', '锡林浩特市', '3', '15', '1525', '1525', '0', null, '', '');
INSERT INTO `my_region` VALUES ('152522', '阿巴嘎旗', '3', '15', '1525', '1525', '0', null, '', '');
INSERT INTO `my_region` VALUES ('152523', '苏尼特左旗', '3', '15', '1525', '1525', '0', null, '', '');
INSERT INTO `my_region` VALUES ('152524', '苏尼特右旗', '3', '15', '1525', '1525', '0', null, '', '');
INSERT INTO `my_region` VALUES ('152525', '东乌珠穆沁旗', '3', '15', '1525', '1525', '0', null, '', '');
INSERT INTO `my_region` VALUES ('152526', '西乌珠穆沁旗', '3', '15', '1525', '1525', '0', null, '', '');
INSERT INTO `my_region` VALUES ('152527', '太仆寺旗', '3', '15', '1525', '1525', '0', null, '', '');
INSERT INTO `my_region` VALUES ('152528', '镶黄旗', '3', '15', '1525', '1525', '0', null, '', '');
INSERT INTO `my_region` VALUES ('152529', '正镶白旗', '3', '15', '1525', '1525', '0', null, '', '');
INSERT INTO `my_region` VALUES ('152530', '正蓝旗', '3', '15', '1525', '1525', '0', null, '', '');
INSERT INTO `my_region` VALUES ('152531', '多伦县', '3', '15', '1525', '1525', '0', null, '', '');
INSERT INTO `my_region` VALUES ('152921', '阿拉善左旗', '3', '15', '1529', '1529', '0', null, '', '');
INSERT INTO `my_region` VALUES ('152922', '阿拉善右旗', '3', '15', '1529', '1529', '0', null, '', '');
INSERT INTO `my_region` VALUES ('152923', '额济纳旗', '3', '15', '1529', '1529', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210101', '市辖区', '3', '21', '2101', '2101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210102', '和平区', '3', '21', '2101', '2101', '0', '543', '', '');
INSERT INTO `my_region` VALUES ('210103', '沈河区', '3', '21', '2101', '2101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210104', '大东区', '3', '21', '2101', '2101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210105', '皇姑区', '3', '21', '2101', '2101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210106', '铁西区', '3', '21', '2101', '2101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210111', '苏家屯区', '3', '21', '2101', '2101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210112', '浑南区', '3', '21', '2101', '2101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210113', '沈北新区', '3', '21', '2101', '2101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210114', '于洪区', '3', '21', '2101', '2101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210115', '辽中区', '3', '21', '2101', '2101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210123', '康平县', '3', '21', '2101', '2101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210124', '法库县', '3', '21', '2101', '2101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210181', '新民市', '3', '21', '2101', '2101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210201', '市辖区', '3', '21', '2102', '2102', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210202', '中山区', '3', '21', '2102', '2102', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210203', '西岗区', '3', '21', '2102', '2102', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210204', '沙河口区', '3', '21', '2102', '2102', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210211', '甘井子区', '3', '21', '2102', '2102', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210212', '旅顺口区', '3', '21', '2102', '2102', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210213', '金州区', '3', '21', '2102', '2102', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210214', '普兰店区', '3', '21', '2102', '2102', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210224', '长海县', '3', '21', '2102', '2102', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210281', '瓦房店市', '3', '21', '2102', '2102', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210283', '庄河市', '3', '21', '2102', '2102', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210301', '市辖区', '3', '21', '2103', '2103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210302', '铁东区', '3', '21', '2103', '2103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210303', '铁西区', '3', '21', '2103', '2103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210304', '立山区', '3', '21', '2103', '2103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210311', '千山区', '3', '21', '2103', '2103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210321', '台安县', '3', '21', '2103', '2103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210323', '岫岩满族自治县', '3', '21', '2103', '2103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210381', '海城市', '3', '21', '2103', '2103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210401', '市辖区', '3', '21', '2104', '2104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210402', '新抚区', '3', '21', '2104', '2104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210403', '东洲区', '3', '21', '2104', '2104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210404', '望花区', '3', '21', '2104', '2104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210411', '顺城区', '3', '21', '2104', '2104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210421', '抚顺县', '3', '21', '2104', '2104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210422', '新宾满族自治县', '3', '21', '2104', '2104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210423', '清原满族自治县', '3', '21', '2104', '2104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210501', '市辖区', '3', '21', '2105', '2105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210502', '平山区', '3', '21', '2105', '2105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210503', '溪湖区', '3', '21', '2105', '2105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210504', '明山区', '3', '21', '2105', '2105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210505', '南芬区', '3', '21', '2105', '2105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210521', '本溪满族自治县', '3', '21', '2105', '2105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210522', '桓仁满族自治县', '3', '21', '2105', '2105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210601', '市辖区', '3', '21', '2106', '2106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210602', '元宝区', '3', '21', '2106', '2106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210603', '振兴区', '3', '21', '2106', '2106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210604', '振安区', '3', '21', '2106', '2106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210624', '宽甸满族自治县', '3', '21', '2106', '2106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210681', '东港市', '3', '21', '2106', '2106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210682', '凤城市', '3', '21', '2106', '2106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210701', '市辖区', '3', '21', '2107', '2107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210702', '古塔区', '3', '21', '2107', '2107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210703', '凌河区', '3', '21', '2107', '2107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210711', '太和区', '3', '21', '2107', '2107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210726', '黑山县', '3', '21', '2107', '2107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210727', '义县', '3', '21', '2107', '2107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210781', '凌海市', '3', '21', '2107', '2107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210782', '北镇市', '3', '21', '2107', '2107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210801', '市辖区', '3', '21', '2108', '2108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210802', '站前区', '3', '21', '2108', '2108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210803', '西市区', '3', '21', '2108', '2108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210804', '鲅鱼圈区', '3', '21', '2108', '2108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210811', '老边区', '3', '21', '2108', '2108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210881', '盖州市', '3', '21', '2108', '2108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210882', '大石桥市', '3', '21', '2108', '2108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210901', '市辖区', '3', '21', '2109', '2109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210902', '海州区', '3', '21', '2109', '2109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210903', '新邱区', '3', '21', '2109', '2109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210904', '太平区', '3', '21', '2109', '2109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210905', '清河门区', '3', '21', '2109', '2109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210911', '细河区', '3', '21', '2109', '2109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210921', '阜新蒙古族自治县', '3', '21', '2109', '2109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('210922', '彰武县', '3', '21', '2109', '2109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211001', '市辖区', '3', '21', '2110', '2110', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211002', '白塔区', '3', '21', '2110', '2110', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211003', '文圣区', '3', '21', '2110', '2110', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211004', '宏伟区', '3', '21', '2110', '2110', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211005', '弓长岭区', '3', '21', '2110', '2110', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211011', '太子河区', '3', '21', '2110', '2110', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211021', '辽阳县', '3', '21', '2110', '2110', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211081', '灯塔市', '3', '21', '2110', '2110', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211101', '市辖区', '3', '21', '2111', '2111', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211102', '双台子区', '3', '21', '2111', '2111', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211103', '兴隆台区', '3', '21', '2111', '2111', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211104', '大洼区', '3', '21', '2111', '2111', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211122', '盘山县', '3', '21', '2111', '2111', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211201', '市辖区', '3', '21', '2112', '2112', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211202', '银州区', '3', '21', '2112', '2112', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211204', '清河区', '3', '21', '2112', '2112', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211221', '铁岭县', '3', '21', '2112', '2112', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211223', '西丰县', '3', '21', '2112', '2112', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211224', '昌图县', '3', '21', '2112', '2112', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211281', '调兵山市', '3', '21', '2112', '2112', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211282', '开原市', '3', '21', '2112', '2112', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211301', '市辖区', '3', '21', '2113', '2113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211302', '双塔区', '3', '21', '2113', '2113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211303', '龙城区', '3', '21', '2113', '2113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211321', '朝阳县', '3', '21', '2113', '2113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211322', '建平县', '3', '21', '2113', '2113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211324', '喀喇沁左翼蒙古族自治县', '3', '21', '2113', '2113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211381', '北票市', '3', '21', '2113', '2113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211382', '凌源市', '3', '21', '2113', '2113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211401', '市辖区', '3', '21', '2114', '2114', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211402', '连山区', '3', '21', '2114', '2114', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211403', '龙港区', '3', '21', '2114', '2114', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211404', '南票区', '3', '21', '2114', '2114', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211421', '绥中县', '3', '21', '2114', '2114', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211422', '建昌县', '3', '21', '2114', '2114', '0', null, '', '');
INSERT INTO `my_region` VALUES ('211481', '兴城市', '3', '21', '2114', '2114', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220101', '市辖区', '3', '22', '2201', '2201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220102', '南关区', '3', '22', '2201', '2201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220103', '宽城区', '3', '22', '2201', '2201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220104', '朝阳区', '3', '22', '2201', '2201', '0', '565', '', '');
INSERT INTO `my_region` VALUES ('220105', '二道区', '3', '22', '2201', '2201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220106', '绿园区', '3', '22', '2201', '2201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220112', '双阳区', '3', '22', '2201', '2201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220113', '九台区', '3', '22', '2201', '2201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220122', '农安县', '3', '22', '2201', '2201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220182', '榆树市', '3', '22', '2201', '2201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220183', '德惠市', '3', '22', '2201', '2201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220201', '市辖区', '3', '22', '2202', '2202', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220202', '昌邑区', '3', '22', '2202', '2202', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220203', '龙潭区', '3', '22', '2202', '2202', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220204', '船营区', '3', '22', '2202', '2202', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220211', '丰满区', '3', '22', '2202', '2202', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220221', '永吉县', '3', '22', '2202', '2202', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220281', '蛟河市', '3', '22', '2202', '2202', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220282', '桦甸市', '3', '22', '2202', '2202', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220283', '舒兰市', '3', '22', '2202', '2202', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220284', '磐石市', '3', '22', '2202', '2202', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220301', '市辖区', '3', '22', '2203', '2203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220302', '铁西区', '3', '22', '2203', '2203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220303', '铁东区', '3', '22', '2203', '2203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220322', '梨树县', '3', '22', '2203', '2203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220323', '伊通满族自治县', '3', '22', '2203', '2203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220381', '公主岭市', '3', '22', '2203', '2203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220382', '双辽市', '3', '22', '2203', '2203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220401', '市辖区', '3', '22', '2204', '2204', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220402', '龙山区', '3', '22', '2204', '2204', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220403', '西安区', '3', '22', '2204', '2204', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220421', '东丰县', '3', '22', '2204', '2204', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220422', '东辽县', '3', '22', '2204', '2204', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220501', '市辖区', '3', '22', '2205', '2205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220502', '东昌区', '3', '22', '2205', '2205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220503', '二道江区', '3', '22', '2205', '2205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220521', '通化县', '3', '22', '2205', '2205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220523', '辉南县', '3', '22', '2205', '2205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220524', '柳河县', '3', '22', '2205', '2205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220581', '梅河口市', '3', '22', '2205', '2205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220582', '集安市', '3', '22', '2205', '2205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220601', '市辖区', '3', '22', '2206', '2206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220602', '浑江区', '3', '22', '2206', '2206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220605', '江源区', '3', '22', '2206', '2206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220621', '抚松县', '3', '22', '2206', '2206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220622', '靖宇县', '3', '22', '2206', '2206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220623', '长白朝鲜族自治县', '3', '22', '2206', '2206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220681', '临江市', '3', '22', '2206', '2206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220701', '市辖区', '3', '22', '2207', '2207', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220702', '宁江区', '3', '22', '2207', '2207', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220721', '前郭尔罗斯蒙古族自治县', '3', '22', '2207', '2207', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220722', '长岭县', '3', '22', '2207', '2207', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220723', '乾安县', '3', '22', '2207', '2207', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220781', '扶余市', '3', '22', '2207', '2207', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220801', '市辖区', '3', '22', '2208', '2208', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220802', '洮北区', '3', '22', '2208', '2208', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220821', '镇赉县', '3', '22', '2208', '2208', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220822', '通榆县', '3', '22', '2208', '2208', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220881', '洮南市', '3', '22', '2208', '2208', '0', null, '', '');
INSERT INTO `my_region` VALUES ('220882', '大安市', '3', '22', '2208', '2208', '0', null, '', '');
INSERT INTO `my_region` VALUES ('222401', '延吉市', '3', '22', '2224', '2224', '0', null, '', '');
INSERT INTO `my_region` VALUES ('222402', '图们市', '3', '22', '2224', '2224', '0', null, '', '');
INSERT INTO `my_region` VALUES ('222403', '敦化市', '3', '22', '2224', '2224', '0', null, '', '');
INSERT INTO `my_region` VALUES ('222404', '珲春市', '3', '22', '2224', '2224', '0', null, '', '');
INSERT INTO `my_region` VALUES ('222405', '龙井市', '3', '22', '2224', '2224', '0', null, '', '');
INSERT INTO `my_region` VALUES ('222406', '和龙市', '3', '22', '2224', '2224', '0', null, '', '');
INSERT INTO `my_region` VALUES ('222424', '汪清县', '3', '22', '2224', '2224', '0', null, '', '');
INSERT INTO `my_region` VALUES ('222426', '安图县', '3', '22', '2224', '2224', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230101', '市辖区', '3', '23', '2301', '2301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230102', '道里区', '3', '23', '2301', '2301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230103', '南岗区', '3', '23', '2301', '2301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230104', '道外区', '3', '23', '2301', '2301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230108', '平房区', '3', '23', '2301', '2301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230109', '松北区', '3', '23', '2301', '2301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230110', '香坊区', '3', '23', '2301', '2301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230111', '呼兰区', '3', '23', '2301', '2301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230112', '阿城区', '3', '23', '2301', '2301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230113', '双城区', '3', '23', '2301', '2301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230123', '依兰县', '3', '23', '2301', '2301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230124', '方正县', '3', '23', '2301', '2301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230125', '宾县', '3', '23', '2301', '2301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230126', '巴彦县', '3', '23', '2301', '2301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230127', '木兰县', '3', '23', '2301', '2301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230128', '通河县', '3', '23', '2301', '2301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230129', '延寿县', '3', '23', '2301', '2301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230183', '尚志市', '3', '23', '2301', '2301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230184', '五常市', '3', '23', '2301', '2301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230201', '市辖区', '3', '23', '2302', '2302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230202', '龙沙区', '3', '23', '2302', '2302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230203', '建华区', '3', '23', '2302', '2302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230204', '铁锋区', '3', '23', '2302', '2302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230205', '昂昂溪区', '3', '23', '2302', '2302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230206', '富拉尔基区', '3', '23', '2302', '2302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230207', '碾子山区', '3', '23', '2302', '2302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230208', '梅里斯达斡尔族区', '3', '23', '2302', '2302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230221', '龙江县', '3', '23', '2302', '2302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230223', '依安县', '3', '23', '2302', '2302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230224', '泰来县', '3', '23', '2302', '2302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230225', '甘南县', '3', '23', '2302', '2302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230227', '富裕县', '3', '23', '2302', '2302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230229', '克山县', '3', '23', '2302', '2302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230230', '克东县', '3', '23', '2302', '2302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230231', '拜泉县', '3', '23', '2302', '2302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230281', '讷河市', '3', '23', '2302', '2302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230301', '市辖区', '3', '23', '2303', '2303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230302', '鸡冠区', '3', '23', '2303', '2303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230303', '恒山区', '3', '23', '2303', '2303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230304', '滴道区', '3', '23', '2303', '2303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230305', '梨树区', '3', '23', '2303', '2303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230306', '城子河区', '3', '23', '2303', '2303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230307', '麻山区', '3', '23', '2303', '2303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230321', '鸡东县', '3', '23', '2303', '2303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230381', '虎林市', '3', '23', '2303', '2303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230382', '密山市', '3', '23', '2303', '2303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230401', '市辖区', '3', '23', '2304', '2304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230402', '向阳区', '3', '23', '2304', '2304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230403', '工农区', '3', '23', '2304', '2304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230404', '南山区', '3', '23', '2304', '2304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230405', '兴安区', '3', '23', '2304', '2304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230406', '东山区', '3', '23', '2304', '2304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230407', '兴山区', '3', '23', '2304', '2304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230421', '萝北县', '3', '23', '2304', '2304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230422', '绥滨县', '3', '23', '2304', '2304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230501', '市辖区', '3', '23', '2305', '2305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230502', '尖山区', '3', '23', '2305', '2305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230503', '岭东区', '3', '23', '2305', '2305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230505', '四方台区', '3', '23', '2305', '2305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230506', '宝山区', '3', '23', '2305', '2305', '0', '490', '', '');
INSERT INTO `my_region` VALUES ('230521', '集贤县', '3', '23', '2305', '2305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230522', '友谊县', '3', '23', '2305', '2305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230523', '宝清县', '3', '23', '2305', '2305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230524', '饶河县', '3', '23', '2305', '2305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230601', '市辖区', '3', '23', '2306', '2306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230602', '萨尔图区', '3', '23', '2306', '2306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230603', '龙凤区', '3', '23', '2306', '2306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230604', '让胡路区', '3', '23', '2306', '2306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230605', '红岗区', '3', '23', '2306', '2306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230606', '大同区', '3', '23', '2306', '2306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230621', '肇州县', '3', '23', '2306', '2306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230622', '肇源县', '3', '23', '2306', '2306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230623', '林甸县', '3', '23', '2306', '2306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230624', '杜尔伯特蒙古族自治县', '3', '23', '2306', '2306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230701', '市辖区', '3', '23', '2307', '2307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230702', '伊春区', '3', '23', '2307', '2307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230703', '南岔区', '3', '23', '2307', '2307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230704', '友好区', '3', '23', '2307', '2307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230705', '西林区', '3', '23', '2307', '2307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230706', '翠峦区', '3', '23', '2307', '2307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230707', '新青区', '3', '23', '2307', '2307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230708', '美溪区', '3', '23', '2307', '2307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230709', '金山屯区', '3', '23', '2307', '2307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230710', '五营区', '3', '23', '2307', '2307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230711', '乌马河区', '3', '23', '2307', '2307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230712', '汤旺河区', '3', '23', '2307', '2307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230713', '带岭区', '3', '23', '2307', '2307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230714', '乌伊岭区', '3', '23', '2307', '2307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230715', '红星区', '3', '23', '2307', '2307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230716', '上甘岭区', '3', '23', '2307', '2307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230722', '嘉荫县', '3', '23', '2307', '2307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230781', '铁力市', '3', '23', '2307', '2307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230801', '市辖区', '3', '23', '2308', '2308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230803', '向阳区', '3', '23', '2308', '2308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230804', '前进区', '3', '23', '2308', '2308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230805', '东风区', '3', '23', '2308', '2308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230811', '郊区', '3', '23', '2308', '2308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230822', '桦南县', '3', '23', '2308', '2308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230826', '桦川县', '3', '23', '2308', '2308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230828', '汤原县', '3', '23', '2308', '2308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230881', '同江市', '3', '23', '2308', '2308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230882', '富锦市', '3', '23', '2308', '2308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230883', '抚远市', '3', '23', '2308', '2308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230901', '市辖区', '3', '23', '2309', '2309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230902', '新兴区', '3', '23', '2309', '2309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230903', '桃山区', '3', '23', '2309', '2309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230904', '茄子河区', '3', '23', '2309', '2309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('230921', '勃利县', '3', '23', '2309', '2309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('231001', '市辖区', '3', '23', '2310', '2310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('231002', '东安区', '3', '23', '2310', '2310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('231003', '阳明区', '3', '23', '2310', '2310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('231004', '爱民区', '3', '23', '2310', '2310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('231005', '西安区', '3', '23', '2310', '2310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('231025', '林口县', '3', '23', '2310', '2310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('231081', '绥芬河市', '3', '23', '2310', '2310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('231083', '海林市', '3', '23', '2310', '2310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('231084', '宁安市', '3', '23', '2310', '2310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('231085', '穆棱市', '3', '23', '2310', '2310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('231086', '东宁市', '3', '23', '2310', '2310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('231101', '市辖区', '3', '23', '2311', '2311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('231102', '爱辉区', '3', '23', '2311', '2311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('231121', '嫩江县', '3', '23', '2311', '2311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('231123', '逊克县', '3', '23', '2311', '2311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('231124', '孙吴县', '3', '23', '2311', '2311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('231181', '北安市', '3', '23', '2311', '2311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('231182', '五大连池市', '3', '23', '2311', '2311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('231201', '市辖区', '3', '23', '2312', '2312', '0', null, '', '');
INSERT INTO `my_region` VALUES ('231202', '北林区', '3', '23', '2312', '2312', '0', null, '', '');
INSERT INTO `my_region` VALUES ('231221', '望奎县', '3', '23', '2312', '2312', '0', null, '', '');
INSERT INTO `my_region` VALUES ('231222', '兰西县', '3', '23', '2312', '2312', '0', null, '', '');
INSERT INTO `my_region` VALUES ('231223', '青冈县', '3', '23', '2312', '2312', '0', null, '', '');
INSERT INTO `my_region` VALUES ('231224', '庆安县', '3', '23', '2312', '2312', '0', null, '', '');
INSERT INTO `my_region` VALUES ('231225', '明水县', '3', '23', '2312', '2312', '0', null, '', '');
INSERT INTO `my_region` VALUES ('231226', '绥棱县', '3', '23', '2312', '2312', '0', null, '', '');
INSERT INTO `my_region` VALUES ('231281', '安达市', '3', '23', '2312', '2312', '0', null, '', '');
INSERT INTO `my_region` VALUES ('231282', '肇东市', '3', '23', '2312', '2312', '0', null, '', '');
INSERT INTO `my_region` VALUES ('231283', '海伦市', '3', '23', '2312', '2312', '0', null, '', '');
INSERT INTO `my_region` VALUES ('232721', '呼玛县', '3', '23', '2327', '2327', '0', null, '', '');
INSERT INTO `my_region` VALUES ('232722', '塔河县', '3', '23', '2327', '2327', '0', null, '', '');
INSERT INTO `my_region` VALUES ('232723', '漠河县', '3', '23', '2327', '2327', '0', null, '', '');
INSERT INTO `my_region` VALUES ('310101', '黄浦区', '3', '31', '3101', '3101', '0', '485', '', '');
INSERT INTO `my_region` VALUES ('310104', '徐汇区', '3', '31', '3101', '3101', '0', '475', '', '');
INSERT INTO `my_region` VALUES ('310105', '长宁区', '3', '31', '3101', '3101', '0', '489', '', '');
INSERT INTO `my_region` VALUES ('310106', '静安区', '3', '31', '3101', '3101', '0', '482', '', '');
INSERT INTO `my_region` VALUES ('310107', '普陀区', '3', '31', '3101', '3101', '0', '479', '', '');
INSERT INTO `my_region` VALUES ('310109', '虹口区', '3', '31', '3101', '3101', '0', '486', '', '');
INSERT INTO `my_region` VALUES ('310110', '杨浦区', '3', '31', '3101', '3101', '0', '474', '', '');
INSERT INTO `my_region` VALUES ('310112', '闵行区', '3', '31', '3101', '3101', '0', '472', '', '');
INSERT INTO `my_region` VALUES ('310113', '宝山区', '3', '31', '3101', '3101', '0', '490', '', '');
INSERT INTO `my_region` VALUES ('310114', '嘉定区', '3', '31', '3101', '3101', '0', '484', '', '');
INSERT INTO `my_region` VALUES ('310115', '浦东新区', '3', '31', '3101', '3101', '0', '478', '', '');
INSERT INTO `my_region` VALUES ('310116', '金山区', '3', '31', '3101', '3101', '0', '483', '', '');
INSERT INTO `my_region` VALUES ('310117', '松江区', '3', '31', '3101', '3101', '0', '476', '', '');
INSERT INTO `my_region` VALUES ('310118', '青浦区', '3', '31', '3101', '3101', '0', '477', '', '');
INSERT INTO `my_region` VALUES ('310120', '奉贤区', '3', '31', '3101', '3101', '0', '487', '', '');
INSERT INTO `my_region` VALUES ('310151', '崇明区', '3', '31', '3101', '3101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320101', '市辖区', '3', '32', '3201', '3201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320102', '玄武区', '3', '32', '3201', '3201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320104', '秦淮区', '3', '32', '3201', '3201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320105', '建邺区', '3', '32', '3201', '3201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320106', '鼓楼区', '3', '32', '3201', '3201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320111', '浦口区', '3', '32', '3201', '3201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320113', '栖霞区', '3', '32', '3201', '3201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320114', '雨花台区', '3', '32', '3201', '3201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320115', '江宁区', '3', '32', '3201', '3201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320116', '六合区', '3', '32', '3201', '3201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320117', '溧水区', '3', '32', '3201', '3201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320118', '高淳区', '3', '32', '3201', '3201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320201', '市辖区', '3', '32', '3202', '3202', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320205', '锡山区', '3', '32', '3202', '3202', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320206', '惠山区', '3', '32', '3202', '3202', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320211', '滨湖区', '3', '32', '3202', '3202', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320213', '梁溪区', '3', '32', '3202', '3202', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320214', '新吴区', '3', '32', '3202', '3202', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320281', '江阴市', '3', '32', '3202', '3202', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320282', '宜兴市', '3', '32', '3202', '3202', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320301', '市辖区', '3', '32', '3203', '3203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320302', '鼓楼区', '3', '32', '3203', '3203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320303', '云龙区', '3', '32', '3203', '3203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320305', '贾汪区', '3', '32', '3203', '3203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320311', '泉山区', '3', '32', '3203', '3203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320312', '铜山区', '3', '32', '3203', '3203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320321', '丰县', '3', '32', '3203', '3203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320322', '沛县', '3', '32', '3203', '3203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320324', '睢宁县', '3', '32', '3203', '3203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320381', '新沂市', '3', '32', '3203', '3203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320382', '邳州市', '3', '32', '3203', '3203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320401', '市辖区', '3', '32', '3204', '3204', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320402', '天宁区', '3', '32', '3204', '3204', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320404', '钟楼区', '3', '32', '3204', '3204', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320411', '新北区', '3', '32', '3204', '3204', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320412', '武进区', '3', '32', '3204', '3204', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320413', '金坛区', '3', '32', '3204', '3204', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320481', '溧阳市', '3', '32', '3204', '3204', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320501', '市辖区', '3', '32', '3205', '3205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320505', '虎丘区', '3', '32', '3205', '3205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320506', '吴中区', '3', '32', '3205', '3205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320507', '相城区', '3', '32', '3205', '3205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320508', '姑苏区', '3', '32', '3205', '3205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320509', '吴江区', '3', '32', '3205', '3205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320581', '常熟市', '3', '32', '3205', '3205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320582', '张家港市', '3', '32', '3205', '3205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320583', '昆山市', '3', '32', '3205', '3205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320585', '太仓市', '3', '32', '3205', '3205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320601', '市辖区', '3', '32', '3206', '3206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320602', '崇川区', '3', '32', '3206', '3206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320611', '港闸区', '3', '32', '3206', '3206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320612', '通州区', '3', '32', '3206', '3206', '0', '552', '', '');
INSERT INTO `my_region` VALUES ('320621', '海安县', '3', '32', '3206', '3206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320623', '如东县', '3', '32', '3206', '3206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320681', '启东市', '3', '32', '3206', '3206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320682', '如皋市', '3', '32', '3206', '3206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320684', '海门市', '3', '32', '3206', '3206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320701', '市辖区', '3', '32', '3207', '3207', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320703', '连云区', '3', '32', '3207', '3207', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320706', '海州区', '3', '32', '3207', '3207', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320707', '赣榆区', '3', '32', '3207', '3207', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320722', '东海县', '3', '32', '3207', '3207', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320723', '灌云县', '3', '32', '3207', '3207', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320724', '灌南县', '3', '32', '3207', '3207', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320801', '市辖区', '3', '32', '3208', '3208', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320803', '淮安区', '3', '32', '3208', '3208', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320804', '淮阴区', '3', '32', '3208', '3208', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320812', '清江浦区', '3', '32', '3208', '3208', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320813', '洪泽区', '3', '32', '3208', '3208', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320826', '涟水县', '3', '32', '3208', '3208', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320830', '盱眙县', '3', '32', '3208', '3208', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320831', '金湖县', '3', '32', '3208', '3208', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320901', '市辖区', '3', '32', '3209', '3209', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320902', '亭湖区', '3', '32', '3209', '3209', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320903', '盐都区', '3', '32', '3209', '3209', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320904', '大丰区', '3', '32', '3209', '3209', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320921', '响水县', '3', '32', '3209', '3209', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320922', '滨海县', '3', '32', '3209', '3209', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320923', '阜宁县', '3', '32', '3209', '3209', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320924', '射阳县', '3', '32', '3209', '3209', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320925', '建湖县', '3', '32', '3209', '3209', '0', null, '', '');
INSERT INTO `my_region` VALUES ('320981', '东台市', '3', '32', '3209', '3209', '0', null, '', '');
INSERT INTO `my_region` VALUES ('321001', '市辖区', '3', '32', '3210', '3210', '0', null, '', '');
INSERT INTO `my_region` VALUES ('321002', '广陵区', '3', '32', '3210', '3210', '0', null, '', '');
INSERT INTO `my_region` VALUES ('321003', '邗江区', '3', '32', '3210', '3210', '0', null, '', '');
INSERT INTO `my_region` VALUES ('321012', '江都区', '3', '32', '3210', '3210', '0', null, '', '');
INSERT INTO `my_region` VALUES ('321023', '宝应县', '3', '32', '3210', '3210', '0', null, '', '');
INSERT INTO `my_region` VALUES ('321081', '仪征市', '3', '32', '3210', '3210', '0', null, '', '');
INSERT INTO `my_region` VALUES ('321084', '高邮市', '3', '32', '3210', '3210', '0', null, '', '');
INSERT INTO `my_region` VALUES ('321101', '市辖区', '3', '32', '3211', '3211', '0', null, '', '');
INSERT INTO `my_region` VALUES ('321102', '京口区', '3', '32', '3211', '3211', '0', null, '', '');
INSERT INTO `my_region` VALUES ('321111', '润州区', '3', '32', '3211', '3211', '0', null, '', '');
INSERT INTO `my_region` VALUES ('321112', '丹徒区', '3', '32', '3211', '3211', '0', null, '', '');
INSERT INTO `my_region` VALUES ('321181', '丹阳市', '3', '32', '3211', '3211', '0', null, '', '');
INSERT INTO `my_region` VALUES ('321182', '扬中市', '3', '32', '3211', '3211', '0', null, '', '');
INSERT INTO `my_region` VALUES ('321183', '句容市', '3', '32', '3211', '3211', '0', null, '', '');
INSERT INTO `my_region` VALUES ('321201', '市辖区', '3', '32', '3212', '3212', '0', null, '', '');
INSERT INTO `my_region` VALUES ('321202', '海陵区', '3', '32', '3212', '3212', '0', null, '', '');
INSERT INTO `my_region` VALUES ('321203', '高港区', '3', '32', '3212', '3212', '0', null, '', '');
INSERT INTO `my_region` VALUES ('321204', '姜堰区', '3', '32', '3212', '3212', '0', null, '', '');
INSERT INTO `my_region` VALUES ('321281', '兴化市', '3', '32', '3212', '3212', '0', null, '', '');
INSERT INTO `my_region` VALUES ('321282', '靖江市', '3', '32', '3212', '3212', '0', null, '', '');
INSERT INTO `my_region` VALUES ('321283', '泰兴市', '3', '32', '3212', '3212', '0', null, '', '');
INSERT INTO `my_region` VALUES ('321301', '市辖区', '3', '32', '3213', '3213', '0', null, '', '');
INSERT INTO `my_region` VALUES ('321302', '宿城区', '3', '32', '3213', '3213', '0', null, '', '');
INSERT INTO `my_region` VALUES ('321311', '宿豫区', '3', '32', '3213', '3213', '0', null, '', '');
INSERT INTO `my_region` VALUES ('321322', '沭阳县', '3', '32', '3213', '3213', '0', null, '', '');
INSERT INTO `my_region` VALUES ('321323', '泗阳县', '3', '32', '3213', '3213', '0', null, '', '');
INSERT INTO `my_region` VALUES ('321324', '泗洪县', '3', '32', '3213', '3213', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330101', '市辖区', '3', '33', '3301', '3301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330102', '上城区', '3', '33', '3301', '3301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330103', '下城区', '3', '33', '3301', '3301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330104', '江干区', '3', '33', '3301', '3301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330105', '拱墅区', '3', '33', '3301', '3301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330106', '西湖区', '3', '33', '3301', '3301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330108', '滨江区', '3', '33', '3301', '3301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330109', '萧山区', '3', '33', '3301', '3301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330110', '余杭区', '3', '33', '3301', '3301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330111', '富阳区', '3', '33', '3301', '3301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330122', '桐庐县', '3', '33', '3301', '3301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330127', '淳安县', '3', '33', '3301', '3301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330182', '建德市', '3', '33', '3301', '3301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330185', '临安市', '3', '33', '3301', '3301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330201', '市辖区', '3', '33', '3302', '3302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330203', '海曙区', '3', '33', '3302', '3302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330204', '江东区', '3', '33', '3302', '3302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330205', '江北区', '3', '33', '3302', '3302', '0', '504', '', '');
INSERT INTO `my_region` VALUES ('330206', '北仑区', '3', '33', '3302', '3302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330211', '镇海区', '3', '33', '3302', '3302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330212', '鄞州区', '3', '33', '3302', '3302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330225', '象山县', '3', '33', '3302', '3302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330226', '宁海县', '3', '33', '3302', '3302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330281', '余姚市', '3', '33', '3302', '3302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330282', '慈溪市', '3', '33', '3302', '3302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330283', '奉化市', '3', '33', '3302', '3302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330301', '市辖区', '3', '33', '3303', '3303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330302', '鹿城区', '3', '33', '3303', '3303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330303', '龙湾区', '3', '33', '3303', '3303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330304', '瓯海区', '3', '33', '3303', '3303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330305', '洞头区', '3', '33', '3303', '3303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330324', '永嘉县', '3', '33', '3303', '3303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330326', '平阳县', '3', '33', '3303', '3303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330327', '苍南县', '3', '33', '3303', '3303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330328', '文成县', '3', '33', '3303', '3303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330329', '泰顺县', '3', '33', '3303', '3303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330381', '瑞安市', '3', '33', '3303', '3303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330382', '乐清市', '3', '33', '3303', '3303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330401', '市辖区', '3', '33', '3304', '3304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330402', '南湖区', '3', '33', '3304', '3304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330411', '秀洲区', '3', '33', '3304', '3304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330421', '嘉善县', '3', '33', '3304', '3304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330424', '海盐县', '3', '33', '3304', '3304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330481', '海宁市', '3', '33', '3304', '3304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330482', '平湖市', '3', '33', '3304', '3304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330483', '桐乡市', '3', '33', '3304', '3304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330501', '市辖区', '3', '33', '3305', '3305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330502', '吴兴区', '3', '33', '3305', '3305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330503', '南浔区', '3', '33', '3305', '3305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330521', '德清县', '3', '33', '3305', '3305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330522', '长兴县', '3', '33', '3305', '3305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330523', '安吉县', '3', '33', '3305', '3305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330601', '市辖区', '3', '33', '3306', '3306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330602', '越城区', '3', '33', '3306', '3306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330603', '柯桥区', '3', '33', '3306', '3306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330604', '上虞区', '3', '33', '3306', '3306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330624', '新昌县', '3', '33', '3306', '3306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330681', '诸暨市', '3', '33', '3306', '3306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330683', '嵊州市', '3', '33', '3306', '3306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330701', '市辖区', '3', '33', '3307', '3307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330702', '婺城区', '3', '33', '3307', '3307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330703', '金东区', '3', '33', '3307', '3307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330723', '武义县', '3', '33', '3307', '3307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330726', '浦江县', '3', '33', '3307', '3307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330727', '磐安县', '3', '33', '3307', '3307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330781', '兰溪市', '3', '33', '3307', '3307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330782', '义乌市', '3', '33', '3307', '3307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330783', '东阳市', '3', '33', '3307', '3307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330784', '永康市', '3', '33', '3307', '3307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330801', '市辖区', '3', '33', '3308', '3308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330802', '柯城区', '3', '33', '3308', '3308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330803', '衢江区', '3', '33', '3308', '3308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330822', '常山县', '3', '33', '3308', '3308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330824', '开化县', '3', '33', '3308', '3308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330825', '龙游县', '3', '33', '3308', '3308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330881', '江山市', '3', '33', '3308', '3308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330901', '市辖区', '3', '33', '3309', '3309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330902', '定海区', '3', '33', '3309', '3309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330903', '普陀区', '3', '33', '3309', '3309', '0', '479', '', '');
INSERT INTO `my_region` VALUES ('330921', '岱山县', '3', '33', '3309', '3309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('330922', '嵊泗县', '3', '33', '3309', '3309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('331001', '市辖区', '3', '33', '3310', '3310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('331002', '椒江区', '3', '33', '3310', '3310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('331003', '黄岩区', '3', '33', '3310', '3310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('331004', '路桥区', '3', '33', '3310', '3310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('331021', '玉环县', '3', '33', '3310', '3310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('331022', '三门县', '3', '33', '3310', '3310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('331023', '天台县', '3', '33', '3310', '3310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('331024', '仙居县', '3', '33', '3310', '3310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('331081', '温岭市', '3', '33', '3310', '3310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('331082', '临海市', '3', '33', '3310', '3310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('331101', '市辖区', '3', '33', '3311', '3311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('331102', '莲都区', '3', '33', '3311', '3311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('331121', '青田县', '3', '33', '3311', '3311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('331122', '缙云县', '3', '33', '3311', '3311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('331123', '遂昌县', '3', '33', '3311', '3311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('331124', '松阳县', '3', '33', '3311', '3311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('331125', '云和县', '3', '33', '3311', '3311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('331126', '庆元县', '3', '33', '3311', '3311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('331127', '景宁畲族自治县', '3', '33', '3311', '3311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('331181', '龙泉市', '3', '33', '3311', '3311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340101', '市辖区', '3', '34', '3401', '3401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340102', '瑶海区', '3', '34', '3401', '3401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340103', '庐阳区', '3', '34', '3401', '3401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340104', '蜀山区', '3', '34', '3401', '3401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340111', '包河区', '3', '34', '3401', '3401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340121', '长丰县', '3', '34', '3401', '3401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340122', '肥东县', '3', '34', '3401', '3401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340123', '肥西县', '3', '34', '3401', '3401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340124', '庐江县', '3', '34', '3401', '3401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340181', '巢湖市', '3', '34', '3401', '3401', '0', '3', '', '');
INSERT INTO `my_region` VALUES ('340201', '市辖区', '3', '34', '3402', '3402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340202', '镜湖区', '3', '34', '3402', '3402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340203', '弋江区', '3', '34', '3402', '3402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340207', '鸠江区', '3', '34', '3402', '3402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340208', '三山区', '3', '34', '3402', '3402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340221', '芜湖县', '3', '34', '3402', '3402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340222', '繁昌县', '3', '34', '3402', '3402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340223', '南陵县', '3', '34', '3402', '3402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340225', '无为县', '3', '34', '3402', '3402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340301', '市辖区', '3', '34', '3403', '3403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340302', '龙子湖区', '3', '34', '3403', '3403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340303', '蚌山区', '3', '34', '3403', '3403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340304', '禹会区', '3', '34', '3403', '3403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340311', '淮上区', '3', '34', '3403', '3403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340321', '怀远县', '3', '34', '3403', '3403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340322', '五河县', '3', '34', '3403', '3403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340323', '固镇县', '3', '34', '3403', '3403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340401', '市辖区', '3', '34', '3404', '3404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340402', '大通区', '3', '34', '3404', '3404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340403', '田家庵区', '3', '34', '3404', '3404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340404', '谢家集区', '3', '34', '3404', '3404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340405', '八公山区', '3', '34', '3404', '3404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340406', '潘集区', '3', '34', '3404', '3404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340421', '凤台县', '3', '34', '3404', '3404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340422', '寿县', '3', '34', '3404', '3404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340501', '市辖区', '3', '34', '3405', '3405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340503', '花山区', '3', '34', '3405', '3405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340504', '雨山区', '3', '34', '3405', '3405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340506', '博望区', '3', '34', '3405', '3405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340521', '当涂县', '3', '34', '3405', '3405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340522', '含山县', '3', '34', '3405', '3405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340523', '和县', '3', '34', '3405', '3405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340601', '市辖区', '3', '34', '3406', '3406', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340602', '杜集区', '3', '34', '3406', '3406', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340603', '相山区', '3', '34', '3406', '3406', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340604', '烈山区', '3', '34', '3406', '3406', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340621', '濉溪县', '3', '34', '3406', '3406', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340701', '市辖区', '3', '34', '3407', '3407', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340705', '铜官区', '3', '34', '3407', '3407', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340706', '义安区', '3', '34', '3407', '3407', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340711', '郊区', '3', '34', '3407', '3407', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340722', '枞阳县', '3', '34', '3407', '3407', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340801', '市辖区', '3', '34', '3408', '3408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340802', '迎江区', '3', '34', '3408', '3408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340803', '大观区', '3', '34', '3408', '3408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340811', '宜秀区', '3', '34', '3408', '3408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340822', '怀宁县', '3', '34', '3408', '3408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340824', '潜山县', '3', '34', '3408', '3408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340825', '太湖县', '3', '34', '3408', '3408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340826', '宿松县', '3', '34', '3408', '3408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340827', '望江县', '3', '34', '3408', '3408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340828', '岳西县', '3', '34', '3408', '3408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('340881', '桐城市', '3', '34', '3408', '3408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341001', '市辖区', '3', '34', '3410', '3410', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341002', '屯溪区', '3', '34', '3410', '3410', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341003', '黄山区', '3', '34', '3410', '3410', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341004', '徽州区', '3', '34', '3410', '3410', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341021', '歙县', '3', '34', '3410', '3410', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341022', '休宁县', '3', '34', '3410', '3410', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341023', '黟县', '3', '34', '3410', '3410', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341024', '祁门县', '3', '34', '3410', '3410', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341101', '市辖区', '3', '34', '3411', '3411', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341102', '琅琊区', '3', '34', '3411', '3411', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341103', '南谯区', '3', '34', '3411', '3411', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341122', '来安县', '3', '34', '3411', '3411', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341124', '全椒县', '3', '34', '3411', '3411', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341125', '定远县', '3', '34', '3411', '3411', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341126', '凤阳县', '3', '34', '3411', '3411', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341181', '天长市', '3', '34', '3411', '3411', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341182', '明光市', '3', '34', '3411', '3411', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341201', '市辖区', '3', '34', '3412', '3412', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341202', '颍州区', '3', '34', '3412', '3412', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341203', '颍东区', '3', '34', '3412', '3412', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341204', '颍泉区', '3', '34', '3412', '3412', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341221', '临泉县', '3', '34', '3412', '3412', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341222', '太和县', '3', '34', '3412', '3412', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341225', '阜南县', '3', '34', '3412', '3412', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341226', '颍上县', '3', '34', '3412', '3412', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341282', '界首市', '3', '34', '3412', '3412', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341301', '市辖区', '3', '34', '3413', '3413', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341302', '埇桥区', '3', '34', '3413', '3413', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341321', '砀山县', '3', '34', '3413', '3413', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341322', '萧县', '3', '34', '3413', '3413', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341323', '灵璧县', '3', '34', '3413', '3413', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341324', '泗县', '3', '34', '3413', '3413', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341501', '市辖区', '3', '34', '3415', '3415', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341502', '金安区', '3', '34', '3415', '3415', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341503', '裕安区', '3', '34', '3415', '3415', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341504', '叶集区', '3', '34', '3415', '3415', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341522', '霍邱县', '3', '34', '3415', '3415', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341523', '舒城县', '3', '34', '3415', '3415', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341524', '金寨县', '3', '34', '3415', '3415', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341525', '霍山县', '3', '34', '3415', '3415', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341601', '市辖区', '3', '34', '3416', '3416', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341602', '谯城区', '3', '34', '3416', '3416', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341621', '涡阳县', '3', '34', '3416', '3416', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341622', '蒙城县', '3', '34', '3416', '3416', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341623', '利辛县', '3', '34', '3416', '3416', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341701', '市辖区', '3', '34', '3417', '3417', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341702', '贵池区', '3', '34', '3417', '3417', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341721', '东至县', '3', '34', '3417', '3417', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341722', '石台县', '3', '34', '3417', '3417', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341723', '青阳县', '3', '34', '3417', '3417', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341801', '市辖区', '3', '34', '3418', '3418', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341802', '宣州区', '3', '34', '3418', '3418', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341821', '郎溪县', '3', '34', '3418', '3418', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341822', '广德县', '3', '34', '3418', '3418', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341823', '泾县', '3', '34', '3418', '3418', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341824', '绩溪县', '3', '34', '3418', '3418', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341825', '旌德县', '3', '34', '3418', '3418', '0', null, '', '');
INSERT INTO `my_region` VALUES ('341881', '宁国市', '3', '34', '3418', '3418', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350101', '市辖区', '3', '35', '3501', '3501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350102', '鼓楼区', '3', '35', '3501', '3501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350103', '台江区', '3', '35', '3501', '3501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350104', '仓山区', '3', '35', '3501', '3501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350105', '马尾区', '3', '35', '3501', '3501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350111', '晋安区', '3', '35', '3501', '3501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350121', '闽侯县', '3', '35', '3501', '3501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350122', '连江县', '3', '35', '3501', '3501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350123', '罗源县', '3', '35', '3501', '3501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350124', '闽清县', '3', '35', '3501', '3501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350125', '永泰县', '3', '35', '3501', '3501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350128', '平潭县', '3', '35', '3501', '3501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350181', '福清市', '3', '35', '3501', '3501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350182', '长乐市', '3', '35', '3501', '3501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350201', '市辖区', '3', '35', '3502', '3502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350203', '思明区', '3', '35', '3502', '3502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350205', '海沧区', '3', '35', '3502', '3502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350206', '湖里区', '3', '35', '3502', '3502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350211', '集美区', '3', '35', '3502', '3502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350212', '同安区', '3', '35', '3502', '3502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350213', '翔安区', '3', '35', '3502', '3502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350301', '市辖区', '3', '35', '3503', '3503', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350302', '城厢区', '3', '35', '3503', '3503', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350303', '涵江区', '3', '35', '3503', '3503', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350304', '荔城区', '3', '35', '3503', '3503', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350305', '秀屿区', '3', '35', '3503', '3503', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350322', '仙游县', '3', '35', '3503', '3503', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350401', '市辖区', '3', '35', '3504', '3504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350402', '梅列区', '3', '35', '3504', '3504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350403', '三元区', '3', '35', '3504', '3504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350421', '明溪县', '3', '35', '3504', '3504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350423', '清流县', '3', '35', '3504', '3504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350424', '宁化县', '3', '35', '3504', '3504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350425', '大田县', '3', '35', '3504', '3504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350426', '尤溪县', '3', '35', '3504', '3504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350427', '沙县', '3', '35', '3504', '3504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350428', '将乐县', '3', '35', '3504', '3504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350429', '泰宁县', '3', '35', '3504', '3504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350430', '建宁县', '3', '35', '3504', '3504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350481', '永安市', '3', '35', '3504', '3504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350501', '市辖区', '3', '35', '3505', '3505', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350502', '鲤城区', '3', '35', '3505', '3505', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350503', '丰泽区', '3', '35', '3505', '3505', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350504', '洛江区', '3', '35', '3505', '3505', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350505', '泉港区', '3', '35', '3505', '3505', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350521', '惠安县', '3', '35', '3505', '3505', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350524', '安溪县', '3', '35', '3505', '3505', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350525', '永春县', '3', '35', '3505', '3505', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350526', '德化县', '3', '35', '3505', '3505', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350527', '金门县', '3', '35', '3505', '3505', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350581', '石狮市', '3', '35', '3505', '3505', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350582', '晋江市', '3', '35', '3505', '3505', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350583', '南安市', '3', '35', '3505', '3505', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350601', '市辖区', '3', '35', '3506', '3506', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350602', '芗城区', '3', '35', '3506', '3506', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350603', '龙文区', '3', '35', '3506', '3506', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350622', '云霄县', '3', '35', '3506', '3506', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350623', '漳浦县', '3', '35', '3506', '3506', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350624', '诏安县', '3', '35', '3506', '3506', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350625', '长泰县', '3', '35', '3506', '3506', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350626', '东山县', '3', '35', '3506', '3506', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350627', '南靖县', '3', '35', '3506', '3506', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350628', '平和县', '3', '35', '3506', '3506', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350629', '华安县', '3', '35', '3506', '3506', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350681', '龙海市', '3', '35', '3506', '3506', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350701', '市辖区', '3', '35', '3507', '3507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350702', '延平区', '3', '35', '3507', '3507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350703', '建阳区', '3', '35', '3507', '3507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350721', '顺昌县', '3', '35', '3507', '3507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350722', '浦城县', '3', '35', '3507', '3507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350723', '光泽县', '3', '35', '3507', '3507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350724', '松溪县', '3', '35', '3507', '3507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350725', '政和县', '3', '35', '3507', '3507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350781', '邵武市', '3', '35', '3507', '3507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350782', '武夷山市', '3', '35', '3507', '3507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350783', '建瓯市', '3', '35', '3507', '3507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350801', '市辖区', '3', '35', '3508', '3508', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350802', '新罗区', '3', '35', '3508', '3508', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350803', '永定区', '3', '35', '3508', '3508', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350821', '长汀县', '3', '35', '3508', '3508', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350823', '上杭县', '3', '35', '3508', '3508', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350824', '武平县', '3', '35', '3508', '3508', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350825', '连城县', '3', '35', '3508', '3508', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350881', '漳平市', '3', '35', '3508', '3508', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350901', '市辖区', '3', '35', '3509', '3509', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350902', '蕉城区', '3', '35', '3509', '3509', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350921', '霞浦县', '3', '35', '3509', '3509', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350922', '古田县', '3', '35', '3509', '3509', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350923', '屏南县', '3', '35', '3509', '3509', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350924', '寿宁县', '3', '35', '3509', '3509', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350925', '周宁县', '3', '35', '3509', '3509', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350926', '柘荣县', '3', '35', '3509', '3509', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350981', '福安市', '3', '35', '3509', '3509', '0', null, '', '');
INSERT INTO `my_region` VALUES ('350982', '福鼎市', '3', '35', '3509', '3509', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360101', '市辖区', '3', '36', '3601', '3601', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360102', '东湖区', '3', '36', '3601', '3601', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360103', '西湖区', '3', '36', '3601', '3601', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360104', '青云谱区', '3', '36', '3601', '3601', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360105', '湾里区', '3', '36', '3601', '3601', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360111', '青山湖区', '3', '36', '3601', '3601', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360112', '新建区', '3', '36', '3601', '3601', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360121', '南昌县', '3', '36', '3601', '3601', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360123', '安义县', '3', '36', '3601', '3601', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360124', '进贤县', '3', '36', '3601', '3601', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360201', '市辖区', '3', '36', '3602', '3602', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360202', '昌江区', '3', '36', '3602', '3602', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360203', '珠山区', '3', '36', '3602', '3602', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360222', '浮梁县', '3', '36', '3602', '3602', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360281', '乐平市', '3', '36', '3602', '3602', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360301', '市辖区', '3', '36', '3603', '3603', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360302', '安源区', '3', '36', '3603', '3603', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360313', '湘东区', '3', '36', '3603', '3603', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360321', '莲花县', '3', '36', '3603', '3603', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360322', '上栗县', '3', '36', '3603', '3603', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360323', '芦溪县', '3', '36', '3603', '3603', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360401', '市辖区', '3', '36', '3604', '3604', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360402', '濂溪区', '3', '36', '3604', '3604', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360403', '浔阳区', '3', '36', '3604', '3604', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360421', '九江县', '3', '36', '3604', '3604', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360423', '武宁县', '3', '36', '3604', '3604', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360424', '修水县', '3', '36', '3604', '3604', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360425', '永修县', '3', '36', '3604', '3604', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360426', '德安县', '3', '36', '3604', '3604', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360428', '都昌县', '3', '36', '3604', '3604', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360429', '湖口县', '3', '36', '3604', '3604', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360430', '彭泽县', '3', '36', '3604', '3604', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360481', '瑞昌市', '3', '36', '3604', '3604', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360482', '共青城市', '3', '36', '3604', '3604', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360483', '庐山市', '3', '36', '3604', '3604', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360501', '市辖区', '3', '36', '3605', '3605', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360502', '渝水区', '3', '36', '3605', '3605', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360521', '分宜县', '3', '36', '3605', '3605', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360601', '市辖区', '3', '36', '3606', '3606', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360602', '月湖区', '3', '36', '3606', '3606', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360622', '余江县', '3', '36', '3606', '3606', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360681', '贵溪市', '3', '36', '3606', '3606', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360701', '市辖区', '3', '36', '3607', '3607', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360702', '章贡区', '3', '36', '3607', '3607', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360703', '南康区', '3', '36', '3607', '3607', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360721', '赣县', '3', '36', '3607', '3607', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360722', '信丰县', '3', '36', '3607', '3607', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360723', '大余县', '3', '36', '3607', '3607', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360724', '上犹县', '3', '36', '3607', '3607', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360725', '崇义县', '3', '36', '3607', '3607', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360726', '安远县', '3', '36', '3607', '3607', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360727', '龙南县', '3', '36', '3607', '3607', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360728', '定南县', '3', '36', '3607', '3607', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360729', '全南县', '3', '36', '3607', '3607', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360730', '宁都县', '3', '36', '3607', '3607', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360731', '于都县', '3', '36', '3607', '3607', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360732', '兴国县', '3', '36', '3607', '3607', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360733', '会昌县', '3', '36', '3607', '3607', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360734', '寻乌县', '3', '36', '3607', '3607', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360735', '石城县', '3', '36', '3607', '3607', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360781', '瑞金市', '3', '36', '3607', '3607', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360801', '市辖区', '3', '36', '3608', '3608', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360802', '吉州区', '3', '36', '3608', '3608', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360803', '青原区', '3', '36', '3608', '3608', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360821', '吉安县', '3', '36', '3608', '3608', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360822', '吉水县', '3', '36', '3608', '3608', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360823', '峡江县', '3', '36', '3608', '3608', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360824', '新干县', '3', '36', '3608', '3608', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360825', '永丰县', '3', '36', '3608', '3608', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360826', '泰和县', '3', '36', '3608', '3608', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360827', '遂川县', '3', '36', '3608', '3608', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360828', '万安县', '3', '36', '3608', '3608', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360829', '安福县', '3', '36', '3608', '3608', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360830', '永新县', '3', '36', '3608', '3608', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360881', '井冈山市', '3', '36', '3608', '3608', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360901', '市辖区', '3', '36', '3609', '3609', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360902', '袁州区', '3', '36', '3609', '3609', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360921', '奉新县', '3', '36', '3609', '3609', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360922', '万载县', '3', '36', '3609', '3609', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360923', '上高县', '3', '36', '3609', '3609', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360924', '宜丰县', '3', '36', '3609', '3609', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360925', '靖安县', '3', '36', '3609', '3609', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360926', '铜鼓县', '3', '36', '3609', '3609', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360981', '丰城市', '3', '36', '3609', '3609', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360982', '樟树市', '3', '36', '3609', '3609', '0', null, '', '');
INSERT INTO `my_region` VALUES ('360983', '高安市', '3', '36', '3609', '3609', '0', null, '', '');
INSERT INTO `my_region` VALUES ('361001', '市辖区', '3', '36', '3610', '3610', '0', null, '', '');
INSERT INTO `my_region` VALUES ('361002', '临川区', '3', '36', '3610', '3610', '0', null, '', '');
INSERT INTO `my_region` VALUES ('361021', '南城县', '3', '36', '3610', '3610', '0', null, '', '');
INSERT INTO `my_region` VALUES ('361022', '黎川县', '3', '36', '3610', '3610', '0', null, '', '');
INSERT INTO `my_region` VALUES ('361023', '南丰县', '3', '36', '3610', '3610', '0', null, '', '');
INSERT INTO `my_region` VALUES ('361024', '崇仁县', '3', '36', '3610', '3610', '0', null, '', '');
INSERT INTO `my_region` VALUES ('361025', '乐安县', '3', '36', '3610', '3610', '0', null, '', '');
INSERT INTO `my_region` VALUES ('361026', '宜黄县', '3', '36', '3610', '3610', '0', null, '', '');
INSERT INTO `my_region` VALUES ('361027', '金溪县', '3', '36', '3610', '3610', '0', null, '', '');
INSERT INTO `my_region` VALUES ('361028', '资溪县', '3', '36', '3610', '3610', '0', null, '', '');
INSERT INTO `my_region` VALUES ('361029', '东乡县', '3', '36', '3610', '3610', '0', null, '', '');
INSERT INTO `my_region` VALUES ('361030', '广昌县', '3', '36', '3610', '3610', '0', null, '', '');
INSERT INTO `my_region` VALUES ('361101', '市辖区', '3', '36', '3611', '3611', '0', null, '', '');
INSERT INTO `my_region` VALUES ('361102', '信州区', '3', '36', '3611', '3611', '0', null, '', '');
INSERT INTO `my_region` VALUES ('361103', '广丰区', '3', '36', '3611', '3611', '0', null, '', '');
INSERT INTO `my_region` VALUES ('361121', '上饶县', '3', '36', '3611', '3611', '0', null, '', '');
INSERT INTO `my_region` VALUES ('361123', '玉山县', '3', '36', '3611', '3611', '0', null, '', '');
INSERT INTO `my_region` VALUES ('361124', '铅山县', '3', '36', '3611', '3611', '0', null, '', '');
INSERT INTO `my_region` VALUES ('361125', '横峰县', '3', '36', '3611', '3611', '0', null, '', '');
INSERT INTO `my_region` VALUES ('361126', '弋阳县', '3', '36', '3611', '3611', '0', null, '', '');
INSERT INTO `my_region` VALUES ('361127', '余干县', '3', '36', '3611', '3611', '0', null, '', '');
INSERT INTO `my_region` VALUES ('361128', '鄱阳县', '3', '36', '3611', '3611', '0', null, '', '');
INSERT INTO `my_region` VALUES ('361129', '万年县', '3', '36', '3611', '3611', '0', null, '', '');
INSERT INTO `my_region` VALUES ('361130', '婺源县', '3', '36', '3611', '3611', '0', null, '', '');
INSERT INTO `my_region` VALUES ('361181', '德兴市', '3', '36', '3611', '3611', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370101', '市辖区', '3', '37', '3701', '3701', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370102', '历下区', '3', '37', '3701', '3701', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370103', '市中区', '3', '37', '3701', '3701', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370104', '槐荫区', '3', '37', '3701', '3701', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370105', '天桥区', '3', '37', '3701', '3701', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370112', '历城区', '3', '37', '3701', '3701', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370113', '长清区', '3', '37', '3701', '3701', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370124', '平阴县', '3', '37', '3701', '3701', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370125', '济阳县', '3', '37', '3701', '3701', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370126', '商河县', '3', '37', '3701', '3701', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370181', '章丘市', '3', '37', '3701', '3701', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370201', '市辖区', '3', '37', '3702', '3702', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370202', '市南区', '3', '37', '3702', '3702', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370203', '市北区', '3', '37', '3702', '3702', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370211', '黄岛区', '3', '37', '3702', '3702', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370212', '崂山区', '3', '37', '3702', '3702', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370213', '李沧区', '3', '37', '3702', '3702', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370214', '城阳区', '3', '37', '3702', '3702', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370281', '胶州市', '3', '37', '3702', '3702', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370282', '即墨市', '3', '37', '3702', '3702', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370283', '平度市', '3', '37', '3702', '3702', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370285', '莱西市', '3', '37', '3702', '3702', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370301', '市辖区', '3', '37', '3703', '3703', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370302', '淄川区', '3', '37', '3703', '3703', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370303', '张店区', '3', '37', '3703', '3703', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370304', '博山区', '3', '37', '3703', '3703', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370305', '临淄区', '3', '37', '3703', '3703', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370306', '周村区', '3', '37', '3703', '3703', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370321', '桓台县', '3', '37', '3703', '3703', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370322', '高青县', '3', '37', '3703', '3703', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370323', '沂源县', '3', '37', '3703', '3703', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370401', '市辖区', '3', '37', '3704', '3704', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370402', '市中区', '3', '37', '3704', '3704', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370403', '薛城区', '3', '37', '3704', '3704', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370404', '峄城区', '3', '37', '3704', '3704', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370405', '台儿庄区', '3', '37', '3704', '3704', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370406', '山亭区', '3', '37', '3704', '3704', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370481', '滕州市', '3', '37', '3704', '3704', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370501', '市辖区', '3', '37', '3705', '3705', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370502', '东营区', '3', '37', '3705', '3705', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370503', '河口区', '3', '37', '3705', '3705', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370505', '垦利区', '3', '37', '3705', '3705', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370522', '利津县', '3', '37', '3705', '3705', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370523', '广饶县', '3', '37', '3705', '3705', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370601', '市辖区', '3', '37', '3706', '3706', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370602', '芝罘区', '3', '37', '3706', '3706', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370611', '福山区', '3', '37', '3706', '3706', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370612', '牟平区', '3', '37', '3706', '3706', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370613', '莱山区', '3', '37', '3706', '3706', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370634', '长岛县', '3', '37', '3706', '3706', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370681', '龙口市', '3', '37', '3706', '3706', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370682', '莱阳市', '3', '37', '3706', '3706', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370683', '莱州市', '3', '37', '3706', '3706', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370684', '蓬莱市', '3', '37', '3706', '3706', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370685', '招远市', '3', '37', '3706', '3706', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370686', '栖霞市', '3', '37', '3706', '3706', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370687', '海阳市', '3', '37', '3706', '3706', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370701', '市辖区', '3', '37', '3707', '3707', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370702', '潍城区', '3', '37', '3707', '3707', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370703', '寒亭区', '3', '37', '3707', '3707', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370704', '坊子区', '3', '37', '3707', '3707', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370705', '奎文区', '3', '37', '3707', '3707', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370724', '临朐县', '3', '37', '3707', '3707', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370725', '昌乐县', '3', '37', '3707', '3707', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370781', '青州市', '3', '37', '3707', '3707', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370782', '诸城市', '3', '37', '3707', '3707', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370783', '寿光市', '3', '37', '3707', '3707', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370784', '安丘市', '3', '37', '3707', '3707', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370785', '高密市', '3', '37', '3707', '3707', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370786', '昌邑市', '3', '37', '3707', '3707', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370801', '市辖区', '3', '37', '3708', '3708', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370811', '任城区', '3', '37', '3708', '3708', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370812', '兖州区', '3', '37', '3708', '3708', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370826', '微山县', '3', '37', '3708', '3708', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370827', '鱼台县', '3', '37', '3708', '3708', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370828', '金乡县', '3', '37', '3708', '3708', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370829', '嘉祥县', '3', '37', '3708', '3708', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370830', '汶上县', '3', '37', '3708', '3708', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370831', '泗水县', '3', '37', '3708', '3708', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370832', '梁山县', '3', '37', '3708', '3708', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370881', '曲阜市', '3', '37', '3708', '3708', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370883', '邹城市', '3', '37', '3708', '3708', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370901', '市辖区', '3', '37', '3709', '3709', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370902', '泰山区', '3', '37', '3709', '3709', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370911', '岱岳区', '3', '37', '3709', '3709', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370921', '宁阳县', '3', '37', '3709', '3709', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370923', '东平县', '3', '37', '3709', '3709', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370982', '新泰市', '3', '37', '3709', '3709', '0', null, '', '');
INSERT INTO `my_region` VALUES ('370983', '肥城市', '3', '37', '3709', '3709', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371001', '市辖区', '3', '37', '3710', '3710', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371002', '环翠区', '3', '37', '3710', '3710', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371003', '文登区', '3', '37', '3710', '3710', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371082', '荣成市', '3', '37', '3710', '3710', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371083', '乳山市', '3', '37', '3710', '3710', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371101', '市辖区', '3', '37', '3711', '3711', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371102', '东港区', '3', '37', '3711', '3711', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371103', '岚山区', '3', '37', '3711', '3711', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371121', '五莲县', '3', '37', '3711', '3711', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371122', '莒县', '3', '37', '3711', '3711', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371201', '市辖区', '3', '37', '3712', '3712', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371202', '莱城区', '3', '37', '3712', '3712', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371203', '钢城区', '3', '37', '3712', '3712', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371301', '市辖区', '3', '37', '3713', '3713', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371302', '兰山区', '3', '37', '3713', '3713', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371311', '罗庄区', '3', '37', '3713', '3713', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371312', '河东区', '3', '37', '3713', '3713', '0', '541', '', '');
INSERT INTO `my_region` VALUES ('371321', '沂南县', '3', '37', '3713', '3713', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371322', '郯城县', '3', '37', '3713', '3713', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371323', '沂水县', '3', '37', '3713', '3713', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371324', '兰陵县', '3', '37', '3713', '3713', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371325', '费县', '3', '37', '3713', '3713', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371326', '平邑县', '3', '37', '3713', '3713', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371327', '莒南县', '3', '37', '3713', '3713', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371328', '蒙阴县', '3', '37', '3713', '3713', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371329', '临沭县', '3', '37', '3713', '3713', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371401', '市辖区', '3', '37', '3714', '3714', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371402', '德城区', '3', '37', '3714', '3714', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371403', '陵城区', '3', '37', '3714', '3714', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371422', '宁津县', '3', '37', '3714', '3714', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371423', '庆云县', '3', '37', '3714', '3714', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371424', '临邑县', '3', '37', '3714', '3714', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371425', '齐河县', '3', '37', '3714', '3714', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371426', '平原县', '3', '37', '3714', '3714', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371427', '夏津县', '3', '37', '3714', '3714', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371428', '武城县', '3', '37', '3714', '3714', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371481', '乐陵市', '3', '37', '3714', '3714', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371482', '禹城市', '3', '37', '3714', '3714', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371501', '市辖区', '3', '37', '3715', '3715', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371502', '东昌府区', '3', '37', '3715', '3715', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371521', '阳谷县', '3', '37', '3715', '3715', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371522', '莘县', '3', '37', '3715', '3715', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371523', '茌平县', '3', '37', '3715', '3715', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371524', '东阿县', '3', '37', '3715', '3715', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371525', '冠县', '3', '37', '3715', '3715', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371526', '高唐县', '3', '37', '3715', '3715', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371581', '临清市', '3', '37', '3715', '3715', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371601', '市辖区', '3', '37', '3716', '3716', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371602', '滨城区', '3', '37', '3716', '3716', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371603', '沾化区', '3', '37', '3716', '3716', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371621', '惠民县', '3', '37', '3716', '3716', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371622', '阳信县', '3', '37', '3716', '3716', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371623', '无棣县', '3', '37', '3716', '3716', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371625', '博兴县', '3', '37', '3716', '3716', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371626', '邹平县', '3', '37', '3716', '3716', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371701', '市辖区', '3', '37', '3717', '3717', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371702', '牡丹区', '3', '37', '3717', '3717', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371703', '定陶区', '3', '37', '3717', '3717', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371721', '曹县', '3', '37', '3717', '3717', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371722', '单县', '3', '37', '3717', '3717', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371723', '成武县', '3', '37', '3717', '3717', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371724', '巨野县', '3', '37', '3717', '3717', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371725', '郓城县', '3', '37', '3717', '3717', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371726', '鄄城县', '3', '37', '3717', '3717', '0', null, '', '');
INSERT INTO `my_region` VALUES ('371728', '东明县', '3', '37', '3717', '3717', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410101', '市辖区', '3', '41', '4101', '4101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410102', '中原区', '3', '41', '4101', '4101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410103', '二七区', '3', '41', '4101', '4101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410104', '管城回族区', '3', '41', '4101', '4101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410105', '金水区', '3', '41', '4101', '4101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410106', '上街区', '3', '41', '4101', '4101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410108', '惠济区', '3', '41', '4101', '4101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410122', '中牟县', '3', '41', '4101', '4101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410181', '巩义市', '3', '41', '4101', '4101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410182', '荥阳市', '3', '41', '4101', '4101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410183', '新密市', '3', '41', '4101', '4101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410184', '新郑市', '3', '41', '4101', '4101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410185', '登封市', '3', '41', '4101', '4101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410201', '市辖区', '3', '41', '4102', '4102', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410202', '龙亭区', '3', '41', '4102', '4102', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410203', '顺河回族区', '3', '41', '4102', '4102', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410204', '鼓楼区', '3', '41', '4102', '4102', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410205', '禹王台区', '3', '41', '4102', '4102', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410211', '金明区', '3', '41', '4102', '4102', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410212', '祥符区', '3', '41', '4102', '4102', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410221', '杞县', '3', '41', '4102', '4102', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410222', '通许县', '3', '41', '4102', '4102', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410223', '尉氏县', '3', '41', '4102', '4102', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410225', '兰考县', '3', '41', '4102', '4102', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410301', '市辖区', '3', '41', '4103', '4103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410302', '老城区', '3', '41', '4103', '4103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410303', '西工区', '3', '41', '4103', '4103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410304', '瀍河回族区', '3', '41', '4103', '4103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410305', '涧西区', '3', '41', '4103', '4103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410306', '吉利区', '3', '41', '4103', '4103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410311', '洛龙区', '3', '41', '4103', '4103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410322', '孟津县', '3', '41', '4103', '4103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410323', '新安县', '3', '41', '4103', '4103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410324', '栾川县', '3', '41', '4103', '4103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410325', '嵩县', '3', '41', '4103', '4103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410326', '汝阳县', '3', '41', '4103', '4103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410327', '宜阳县', '3', '41', '4103', '4103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410328', '洛宁县', '3', '41', '4103', '4103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410329', '伊川县', '3', '41', '4103', '4103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410381', '偃师市', '3', '41', '4103', '4103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410401', '市辖区', '3', '41', '4104', '4104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410402', '新华区', '3', '41', '4104', '4104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410403', '卫东区', '3', '41', '4104', '4104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410404', '石龙区', '3', '41', '4104', '4104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410411', '湛河区', '3', '41', '4104', '4104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410421', '宝丰县', '3', '41', '4104', '4104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410422', '叶县', '3', '41', '4104', '4104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410423', '鲁山县', '3', '41', '4104', '4104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410425', '郏县', '3', '41', '4104', '4104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410481', '舞钢市', '3', '41', '4104', '4104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410482', '汝州市', '3', '41', '4104', '4104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410501', '市辖区', '3', '41', '4105', '4105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410502', '文峰区', '3', '41', '4105', '4105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410503', '北关区', '3', '41', '4105', '4105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410505', '殷都区', '3', '41', '4105', '4105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410506', '龙安区', '3', '41', '4105', '4105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410522', '安阳县', '3', '41', '4105', '4105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410523', '汤阴县', '3', '41', '4105', '4105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410526', '滑县', '3', '41', '4105', '4105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410527', '内黄县', '3', '41', '4105', '4105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410581', '林州市', '3', '41', '4105', '4105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410601', '市辖区', '3', '41', '4106', '4106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410602', '鹤山区', '3', '41', '4106', '4106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410603', '山城区', '3', '41', '4106', '4106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410611', '淇滨区', '3', '41', '4106', '4106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410621', '浚县', '3', '41', '4106', '4106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410622', '淇县', '3', '41', '4106', '4106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410701', '市辖区', '3', '41', '4107', '4107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410702', '红旗区', '3', '41', '4107', '4107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410703', '卫滨区', '3', '41', '4107', '4107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410704', '凤泉区', '3', '41', '4107', '4107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410711', '牧野区', '3', '41', '4107', '4107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410721', '新乡县', '3', '41', '4107', '4107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410724', '获嘉县', '3', '41', '4107', '4107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410725', '原阳县', '3', '41', '4107', '4107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410726', '延津县', '3', '41', '4107', '4107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410727', '封丘县', '3', '41', '4107', '4107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410728', '长垣县', '3', '41', '4107', '4107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410781', '卫辉市', '3', '41', '4107', '4107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410782', '辉县市', '3', '41', '4107', '4107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410801', '市辖区', '3', '41', '4108', '4108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410802', '解放区', '3', '41', '4108', '4108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410803', '中站区', '3', '41', '4108', '4108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410804', '马村区', '3', '41', '4108', '4108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410811', '山阳区', '3', '41', '4108', '4108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410821', '修武县', '3', '41', '4108', '4108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410822', '博爱县', '3', '41', '4108', '4108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410823', '武陟县', '3', '41', '4108', '4108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410825', '温县', '3', '41', '4108', '4108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410882', '沁阳市', '3', '41', '4108', '4108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410883', '孟州市', '3', '41', '4108', '4108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410901', '市辖区', '3', '41', '4109', '4109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410902', '华龙区', '3', '41', '4109', '4109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410922', '清丰县', '3', '41', '4109', '4109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410923', '南乐县', '3', '41', '4109', '4109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410926', '范县', '3', '41', '4109', '4109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410927', '台前县', '3', '41', '4109', '4109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('410928', '濮阳县', '3', '41', '4109', '4109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411001', '市辖区', '3', '41', '4110', '4110', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411002', '魏都区', '3', '41', '4110', '4110', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411023', '许昌县', '3', '41', '4110', '4110', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411024', '鄢陵县', '3', '41', '4110', '4110', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411025', '襄城县', '3', '41', '4110', '4110', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411081', '禹州市', '3', '41', '4110', '4110', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411082', '长葛市', '3', '41', '4110', '4110', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411101', '市辖区', '3', '41', '4111', '4111', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411102', '源汇区', '3', '41', '4111', '4111', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411103', '郾城区', '3', '41', '4111', '4111', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411104', '召陵区', '3', '41', '4111', '4111', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411121', '舞阳县', '3', '41', '4111', '4111', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411122', '临颍县', '3', '41', '4111', '4111', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411201', '市辖区', '3', '41', '4112', '4112', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411202', '湖滨区', '3', '41', '4112', '4112', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411203', '陕州区', '3', '41', '4112', '4112', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411221', '渑池县', '3', '41', '4112', '4112', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411224', '卢氏县', '3', '41', '4112', '4112', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411281', '义马市', '3', '41', '4112', '4112', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411282', '灵宝市', '3', '41', '4112', '4112', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411301', '市辖区', '3', '41', '4113', '4113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411302', '宛城区', '3', '41', '4113', '4113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411303', '卧龙区', '3', '41', '4113', '4113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411321', '南召县', '3', '41', '4113', '4113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411322', '方城县', '3', '41', '4113', '4113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411323', '西峡县', '3', '41', '4113', '4113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411324', '镇平县', '3', '41', '4113', '4113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411325', '内乡县', '3', '41', '4113', '4113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411326', '淅川县', '3', '41', '4113', '4113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411327', '社旗县', '3', '41', '4113', '4113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411328', '唐河县', '3', '41', '4113', '4113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411329', '新野县', '3', '41', '4113', '4113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411330', '桐柏县', '3', '41', '4113', '4113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411381', '邓州市', '3', '41', '4113', '4113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411401', '市辖区', '3', '41', '4114', '4114', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411402', '梁园区', '3', '41', '4114', '4114', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411403', '睢阳区', '3', '41', '4114', '4114', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411421', '民权县', '3', '41', '4114', '4114', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411422', '睢县', '3', '41', '4114', '4114', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411423', '宁陵县', '3', '41', '4114', '4114', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411424', '柘城县', '3', '41', '4114', '4114', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411425', '虞城县', '3', '41', '4114', '4114', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411426', '夏邑县', '3', '41', '4114', '4114', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411481', '永城市', '3', '41', '4114', '4114', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411501', '市辖区', '3', '41', '4115', '4115', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411502', '浉河区', '3', '41', '4115', '4115', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411503', '平桥区', '3', '41', '4115', '4115', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411521', '罗山县', '3', '41', '4115', '4115', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411522', '光山县', '3', '41', '4115', '4115', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411523', '新县', '3', '41', '4115', '4115', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411524', '商城县', '3', '41', '4115', '4115', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411525', '固始县', '3', '41', '4115', '4115', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411526', '潢川县', '3', '41', '4115', '4115', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411527', '淮滨县', '3', '41', '4115', '4115', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411528', '息县', '3', '41', '4115', '4115', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411601', '市辖区', '3', '41', '4116', '4116', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411602', '川汇区', '3', '41', '4116', '4116', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411621', '扶沟县', '3', '41', '4116', '4116', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411622', '西华县', '3', '41', '4116', '4116', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411623', '商水县', '3', '41', '4116', '4116', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411624', '沈丘县', '3', '41', '4116', '4116', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411625', '郸城县', '3', '41', '4116', '4116', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411626', '淮阳县', '3', '41', '4116', '4116', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411627', '太康县', '3', '41', '4116', '4116', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411628', '鹿邑县', '3', '41', '4116', '4116', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411681', '项城市', '3', '41', '4116', '4116', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411701', '市辖区', '3', '41', '4117', '4117', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411702', '驿城区', '3', '41', '4117', '4117', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411721', '西平县', '3', '41', '4117', '4117', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411722', '上蔡县', '3', '41', '4117', '4117', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411723', '平舆县', '3', '41', '4117', '4117', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411724', '正阳县', '3', '41', '4117', '4117', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411725', '确山县', '3', '41', '4117', '4117', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411726', '泌阳县', '3', '41', '4117', '4117', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411727', '汝南县', '3', '41', '4117', '4117', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411728', '遂平县', '3', '41', '4117', '4117', '0', null, '', '');
INSERT INTO `my_region` VALUES ('411729', '新蔡县', '3', '41', '4117', '4117', '0', null, '', '');
INSERT INTO `my_region` VALUES ('419001', '济源市', '3', '41', '4190', '4190', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420101', '市辖区', '3', '42', '4201', '4201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420102', '江岸区', '3', '42', '4201', '4201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420103', '江汉区', '3', '42', '4201', '4201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420104', '硚口区', '3', '42', '4201', '4201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420105', '汉阳区', '3', '42', '4201', '4201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420106', '武昌区', '3', '42', '4201', '4201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420107', '青山区', '3', '42', '4201', '4201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420111', '洪山区', '3', '42', '4201', '4201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420112', '东西湖区', '3', '42', '4201', '4201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420113', '汉南区', '3', '42', '4201', '4201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420114', '蔡甸区', '3', '42', '4201', '4201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420115', '江夏区', '3', '42', '4201', '4201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420116', '黄陂区', '3', '42', '4201', '4201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420117', '新洲区', '3', '42', '4201', '4201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420201', '市辖区', '3', '42', '4202', '4202', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420202', '黄石港区', '3', '42', '4202', '4202', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420203', '西塞山区', '3', '42', '4202', '4202', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420204', '下陆区', '3', '42', '4202', '4202', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420205', '铁山区', '3', '42', '4202', '4202', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420222', '阳新县', '3', '42', '4202', '4202', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420281', '大冶市', '3', '42', '4202', '4202', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420301', '市辖区', '3', '42', '4203', '4203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420302', '茅箭区', '3', '42', '4203', '4203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420303', '张湾区', '3', '42', '4203', '4203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420304', '郧阳区', '3', '42', '4203', '4203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420322', '郧西县', '3', '42', '4203', '4203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420323', '竹山县', '3', '42', '4203', '4203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420324', '竹溪县', '3', '42', '4203', '4203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420325', '房县', '3', '42', '4203', '4203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420381', '丹江口市', '3', '42', '4203', '4203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420501', '市辖区', '3', '42', '4205', '4205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420502', '西陵区', '3', '42', '4205', '4205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420503', '伍家岗区', '3', '42', '4205', '4205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420504', '点军区', '3', '42', '4205', '4205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420505', '猇亭区', '3', '42', '4205', '4205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420506', '夷陵区', '3', '42', '4205', '4205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420525', '远安县', '3', '42', '4205', '4205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420526', '兴山县', '3', '42', '4205', '4205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420527', '秭归县', '3', '42', '4205', '4205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420528', '长阳土家族自治县', '3', '42', '4205', '4205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420529', '五峰土家族自治县', '3', '42', '4205', '4205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420581', '宜都市', '3', '42', '4205', '4205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420582', '当阳市', '3', '42', '4205', '4205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420583', '枝江市', '3', '42', '4205', '4205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420601', '市辖区', '3', '42', '4206', '4206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420602', '襄城区', '3', '42', '4206', '4206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420606', '樊城区', '3', '42', '4206', '4206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420607', '襄州区', '3', '42', '4206', '4206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420624', '南漳县', '3', '42', '4206', '4206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420625', '谷城县', '3', '42', '4206', '4206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420626', '保康县', '3', '42', '4206', '4206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420682', '老河口市', '3', '42', '4206', '4206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420683', '枣阳市', '3', '42', '4206', '4206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420684', '宜城市', '3', '42', '4206', '4206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420701', '市辖区', '3', '42', '4207', '4207', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420702', '梁子湖区', '3', '42', '4207', '4207', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420703', '华容区', '3', '42', '4207', '4207', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420704', '鄂城区', '3', '42', '4207', '4207', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420801', '市辖区', '3', '42', '4208', '4208', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420802', '东宝区', '3', '42', '4208', '4208', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420804', '掇刀区', '3', '42', '4208', '4208', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420821', '京山县', '3', '42', '4208', '4208', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420822', '沙洋县', '3', '42', '4208', '4208', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420881', '钟祥市', '3', '42', '4208', '4208', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420901', '市辖区', '3', '42', '4209', '4209', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420902', '孝南区', '3', '42', '4209', '4209', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420921', '孝昌县', '3', '42', '4209', '4209', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420922', '大悟县', '3', '42', '4209', '4209', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420923', '云梦县', '3', '42', '4209', '4209', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420981', '应城市', '3', '42', '4209', '4209', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420982', '安陆市', '3', '42', '4209', '4209', '0', null, '', '');
INSERT INTO `my_region` VALUES ('420984', '汉川市', '3', '42', '4209', '4209', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421001', '市辖区', '3', '42', '4210', '4210', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421002', '沙市区', '3', '42', '4210', '4210', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421003', '荆州区', '3', '42', '4210', '4210', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421022', '公安县', '3', '42', '4210', '4210', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421023', '监利县', '3', '42', '4210', '4210', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421024', '江陵县', '3', '42', '4210', '4210', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421081', '石首市', '3', '42', '4210', '4210', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421083', '洪湖市', '3', '42', '4210', '4210', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421087', '松滋市', '3', '42', '4210', '4210', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421101', '市辖区', '3', '42', '4211', '4211', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421102', '黄州区', '3', '42', '4211', '4211', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421121', '团风县', '3', '42', '4211', '4211', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421122', '红安县', '3', '42', '4211', '4211', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421123', '罗田县', '3', '42', '4211', '4211', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421124', '英山县', '3', '42', '4211', '4211', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421125', '浠水县', '3', '42', '4211', '4211', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421126', '蕲春县', '3', '42', '4211', '4211', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421127', '黄梅县', '3', '42', '4211', '4211', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421181', '麻城市', '3', '42', '4211', '4211', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421182', '武穴市', '3', '42', '4211', '4211', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421201', '市辖区', '3', '42', '4212', '4212', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421202', '咸安区', '3', '42', '4212', '4212', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421221', '嘉鱼县', '3', '42', '4212', '4212', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421222', '通城县', '3', '42', '4212', '4212', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421223', '崇阳县', '3', '42', '4212', '4212', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421224', '通山县', '3', '42', '4212', '4212', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421281', '赤壁市', '3', '42', '4212', '4212', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421301', '市辖区', '3', '42', '4213', '4213', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421303', '曾都区', '3', '42', '4213', '4213', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421321', '随县', '3', '42', '4213', '4213', '0', null, '', '');
INSERT INTO `my_region` VALUES ('421381', '广水市', '3', '42', '4213', '4213', '0', null, '', '');
INSERT INTO `my_region` VALUES ('422801', '恩施市', '3', '42', '4228', '4228', '0', null, '', '');
INSERT INTO `my_region` VALUES ('422802', '利川市', '3', '42', '4228', '4228', '0', null, '', '');
INSERT INTO `my_region` VALUES ('422822', '建始县', '3', '42', '4228', '4228', '0', null, '', '');
INSERT INTO `my_region` VALUES ('422823', '巴东县', '3', '42', '4228', '4228', '0', null, '', '');
INSERT INTO `my_region` VALUES ('422825', '宣恩县', '3', '42', '4228', '4228', '0', null, '', '');
INSERT INTO `my_region` VALUES ('422826', '咸丰县', '3', '42', '4228', '4228', '0', null, '', '');
INSERT INTO `my_region` VALUES ('422827', '来凤县', '3', '42', '4228', '4228', '0', null, '', '');
INSERT INTO `my_region` VALUES ('422828', '鹤峰县', '3', '42', '4228', '4228', '0', null, '', '');
INSERT INTO `my_region` VALUES ('429004', '仙桃市', '3', '42', '4290', '4290', '0', null, '', '');
INSERT INTO `my_region` VALUES ('429005', '潜江市', '3', '42', '4290', '4290', '0', null, '', '');
INSERT INTO `my_region` VALUES ('429006', '天门市', '3', '42', '4290', '4290', '0', null, '', '');
INSERT INTO `my_region` VALUES ('429021', '神农架林区', '3', '42', '4290', '4290', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430101', '市辖区', '3', '43', '4301', '4301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430102', '芙蓉区', '3', '43', '4301', '4301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430103', '天心区', '3', '43', '4301', '4301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430104', '岳麓区', '3', '43', '4301', '4301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430105', '开福区', '3', '43', '4301', '4301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430111', '雨花区', '3', '43', '4301', '4301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430112', '望城区', '3', '43', '4301', '4301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430121', '长沙县', '3', '43', '4301', '4301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430124', '宁乡县', '3', '43', '4301', '4301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430181', '浏阳市', '3', '43', '4301', '4301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430201', '市辖区', '3', '43', '4302', '4302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430202', '荷塘区', '3', '43', '4302', '4302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430203', '芦淞区', '3', '43', '4302', '4302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430204', '石峰区', '3', '43', '4302', '4302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430211', '天元区', '3', '43', '4302', '4302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430221', '株洲县', '3', '43', '4302', '4302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430223', '攸县', '3', '43', '4302', '4302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430224', '茶陵县', '3', '43', '4302', '4302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430225', '炎陵县', '3', '43', '4302', '4302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430281', '醴陵市', '3', '43', '4302', '4302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430301', '市辖区', '3', '43', '4303', '4303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430302', '雨湖区', '3', '43', '4303', '4303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430304', '岳塘区', '3', '43', '4303', '4303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430321', '湘潭县', '3', '43', '4303', '4303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430381', '湘乡市', '3', '43', '4303', '4303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430382', '韶山市', '3', '43', '4303', '4303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430401', '市辖区', '3', '43', '4304', '4304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430405', '珠晖区', '3', '43', '4304', '4304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430406', '雁峰区', '3', '43', '4304', '4304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430407', '石鼓区', '3', '43', '4304', '4304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430408', '蒸湘区', '3', '43', '4304', '4304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430412', '南岳区', '3', '43', '4304', '4304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430421', '衡阳县', '3', '43', '4304', '4304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430422', '衡南县', '3', '43', '4304', '4304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430423', '衡山县', '3', '43', '4304', '4304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430424', '衡东县', '3', '43', '4304', '4304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430426', '祁东县', '3', '43', '4304', '4304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430481', '耒阳市', '3', '43', '4304', '4304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430482', '常宁市', '3', '43', '4304', '4304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430501', '市辖区', '3', '43', '4305', '4305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430502', '双清区', '3', '43', '4305', '4305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430503', '大祥区', '3', '43', '4305', '4305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430511', '北塔区', '3', '43', '4305', '4305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430521', '邵东县', '3', '43', '4305', '4305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430522', '新邵县', '3', '43', '4305', '4305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430523', '邵阳县', '3', '43', '4305', '4305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430524', '隆回县', '3', '43', '4305', '4305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430525', '洞口县', '3', '43', '4305', '4305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430527', '绥宁县', '3', '43', '4305', '4305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430528', '新宁县', '3', '43', '4305', '4305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430529', '城步苗族自治县', '3', '43', '4305', '4305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430581', '武冈市', '3', '43', '4305', '4305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430601', '市辖区', '3', '43', '4306', '4306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430602', '岳阳楼区', '3', '43', '4306', '4306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430603', '云溪区', '3', '43', '4306', '4306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430611', '君山区', '3', '43', '4306', '4306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430621', '岳阳县', '3', '43', '4306', '4306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430623', '华容县', '3', '43', '4306', '4306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430624', '湘阴县', '3', '43', '4306', '4306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430626', '平江县', '3', '43', '4306', '4306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430681', '汨罗市', '3', '43', '4306', '4306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430682', '临湘市', '3', '43', '4306', '4306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430701', '市辖区', '3', '43', '4307', '4307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430702', '武陵区', '3', '43', '4307', '4307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430703', '鼎城区', '3', '43', '4307', '4307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430721', '安乡县', '3', '43', '4307', '4307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430722', '汉寿县', '3', '43', '4307', '4307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430723', '澧县', '3', '43', '4307', '4307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430724', '临澧县', '3', '43', '4307', '4307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430725', '桃源县', '3', '43', '4307', '4307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430726', '石门县', '3', '43', '4307', '4307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430781', '津市市', '3', '43', '4307', '4307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430801', '市辖区', '3', '43', '4308', '4308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430802', '永定区', '3', '43', '4308', '4308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430811', '武陵源区', '3', '43', '4308', '4308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430821', '慈利县', '3', '43', '4308', '4308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430822', '桑植县', '3', '43', '4308', '4308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430901', '市辖区', '3', '43', '4309', '4309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430902', '资阳区', '3', '43', '4309', '4309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430903', '赫山区', '3', '43', '4309', '4309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430921', '南县', '3', '43', '4309', '4309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430922', '桃江县', '3', '43', '4309', '4309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430923', '安化县', '3', '43', '4309', '4309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('430981', '沅江市', '3', '43', '4309', '4309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431001', '市辖区', '3', '43', '4310', '4310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431002', '北湖区', '3', '43', '4310', '4310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431003', '苏仙区', '3', '43', '4310', '4310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431021', '桂阳县', '3', '43', '4310', '4310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431022', '宜章县', '3', '43', '4310', '4310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431023', '永兴县', '3', '43', '4310', '4310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431024', '嘉禾县', '3', '43', '4310', '4310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431025', '临武县', '3', '43', '4310', '4310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431026', '汝城县', '3', '43', '4310', '4310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431027', '桂东县', '3', '43', '4310', '4310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431028', '安仁县', '3', '43', '4310', '4310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431081', '资兴市', '3', '43', '4310', '4310', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431101', '市辖区', '3', '43', '4311', '4311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431102', '零陵区', '3', '43', '4311', '4311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431103', '冷水滩区', '3', '43', '4311', '4311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431121', '祁阳县', '3', '43', '4311', '4311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431122', '东安县', '3', '43', '4311', '4311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431123', '双牌县', '3', '43', '4311', '4311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431124', '道县', '3', '43', '4311', '4311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431125', '江永县', '3', '43', '4311', '4311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431126', '宁远县', '3', '43', '4311', '4311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431127', '蓝山县', '3', '43', '4311', '4311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431128', '新田县', '3', '43', '4311', '4311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431129', '江华瑶族自治县', '3', '43', '4311', '4311', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431201', '市辖区', '3', '43', '4312', '4312', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431202', '鹤城区', '3', '43', '4312', '4312', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431221', '中方县', '3', '43', '4312', '4312', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431222', '沅陵县', '3', '43', '4312', '4312', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431223', '辰溪县', '3', '43', '4312', '4312', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431224', '溆浦县', '3', '43', '4312', '4312', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431225', '会同县', '3', '43', '4312', '4312', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431226', '麻阳苗族自治县', '3', '43', '4312', '4312', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431227', '新晃侗族自治县', '3', '43', '4312', '4312', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431228', '芷江侗族自治县', '3', '43', '4312', '4312', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431229', '靖州苗族侗族自治县', '3', '43', '4312', '4312', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431230', '通道侗族自治县', '3', '43', '4312', '4312', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431281', '洪江市', '3', '43', '4312', '4312', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431301', '市辖区', '3', '43', '4313', '4313', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431302', '娄星区', '3', '43', '4313', '4313', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431321', '双峰县', '3', '43', '4313', '4313', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431322', '新化县', '3', '43', '4313', '4313', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431381', '冷水江市', '3', '43', '4313', '4313', '0', null, '', '');
INSERT INTO `my_region` VALUES ('431382', '涟源市', '3', '43', '4313', '4313', '0', null, '', '');
INSERT INTO `my_region` VALUES ('433101', '吉首市', '3', '43', '4331', '4331', '0', null, '', '');
INSERT INTO `my_region` VALUES ('433122', '泸溪县', '3', '43', '4331', '4331', '0', null, '', '');
INSERT INTO `my_region` VALUES ('433123', '凤凰县', '3', '43', '4331', '4331', '0', null, '', '');
INSERT INTO `my_region` VALUES ('433124', '花垣县', '3', '43', '4331', '4331', '0', null, '', '');
INSERT INTO `my_region` VALUES ('433125', '保靖县', '3', '43', '4331', '4331', '0', null, '', '');
INSERT INTO `my_region` VALUES ('433126', '古丈县', '3', '43', '4331', '4331', '0', null, '', '');
INSERT INTO `my_region` VALUES ('433127', '永顺县', '3', '43', '4331', '4331', '0', null, '', '');
INSERT INTO `my_region` VALUES ('433130', '龙山县', '3', '43', '4331', '4331', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440101', '市辖区', '3', '44', '4401', '4401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440103', '荔湾区', '3', '44', '4401', '4401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440104', '越秀区', '3', '44', '4401', '4401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440105', '海珠区', '3', '44', '4401', '4401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440106', '天河区', '3', '44', '4401', '4401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440111', '白云区', '3', '44', '4401', '4401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440112', '黄埔区', '3', '44', '4401', '4401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440113', '番禺区', '3', '44', '4401', '4401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440114', '花都区', '3', '44', '4401', '4401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440115', '南沙区', '3', '44', '4401', '4401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440117', '从化区', '3', '44', '4401', '4401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440118', '增城区', '3', '44', '4401', '4401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440201', '市辖区', '3', '44', '4402', '4402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440203', '武江区', '3', '44', '4402', '4402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440204', '浈江区', '3', '44', '4402', '4402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440205', '曲江区', '3', '44', '4402', '4402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440222', '始兴县', '3', '44', '4402', '4402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440224', '仁化县', '3', '44', '4402', '4402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440229', '翁源县', '3', '44', '4402', '4402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440232', '乳源瑶族自治县', '3', '44', '4402', '4402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440233', '新丰县', '3', '44', '4402', '4402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440281', '乐昌市', '3', '44', '4402', '4402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440282', '南雄市', '3', '44', '4402', '4402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440301', '市辖区', '3', '44', '4403', '4403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440303', '罗湖区', '3', '44', '4403', '4403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440304', '福田区', '3', '44', '4403', '4403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440305', '南山区', '3', '44', '4403', '4403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440306', '宝安区', '3', '44', '4403', '4403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440307', '龙岗区', '3', '44', '4403', '4403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440308', '盐田区', '3', '44', '4403', '4403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440401', '市辖区', '3', '44', '4404', '4404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440402', '香洲区', '3', '44', '4404', '4404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440403', '斗门区', '3', '44', '4404', '4404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440404', '金湾区', '3', '44', '4404', '4404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440501', '市辖区', '3', '44', '4405', '4405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440507', '龙湖区', '3', '44', '4405', '4405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440511', '金平区', '3', '44', '4405', '4405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440512', '濠江区', '3', '44', '4405', '4405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440513', '潮阳区', '3', '44', '4405', '4405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440514', '潮南区', '3', '44', '4405', '4405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440515', '澄海区', '3', '44', '4405', '4405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440523', '南澳县', '3', '44', '4405', '4405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440601', '市辖区', '3', '44', '4406', '4406', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440604', '禅城区', '3', '44', '4406', '4406', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440605', '南海区', '3', '44', '4406', '4406', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440606', '顺德区', '3', '44', '4406', '4406', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440607', '三水区', '3', '44', '4406', '4406', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440608', '高明区', '3', '44', '4406', '4406', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440701', '市辖区', '3', '44', '4407', '4407', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440703', '蓬江区', '3', '44', '4407', '4407', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440704', '江海区', '3', '44', '4407', '4407', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440705', '新会区', '3', '44', '4407', '4407', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440781', '台山市', '3', '44', '4407', '4407', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440783', '开平市', '3', '44', '4407', '4407', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440784', '鹤山市', '3', '44', '4407', '4407', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440785', '恩平市', '3', '44', '4407', '4407', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440801', '市辖区', '3', '44', '4408', '4408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440802', '赤坎区', '3', '44', '4408', '4408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440803', '霞山区', '3', '44', '4408', '4408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440804', '坡头区', '3', '44', '4408', '4408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440811', '麻章区', '3', '44', '4408', '4408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440823', '遂溪县', '3', '44', '4408', '4408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440825', '徐闻县', '3', '44', '4408', '4408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440881', '廉江市', '3', '44', '4408', '4408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440882', '雷州市', '3', '44', '4408', '4408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440883', '吴川市', '3', '44', '4408', '4408', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440901', '市辖区', '3', '44', '4409', '4409', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440902', '茂南区', '3', '44', '4409', '4409', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440904', '电白区', '3', '44', '4409', '4409', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440981', '高州市', '3', '44', '4409', '4409', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440982', '化州市', '3', '44', '4409', '4409', '0', null, '', '');
INSERT INTO `my_region` VALUES ('440983', '信宜市', '3', '44', '4409', '4409', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441201', '市辖区', '3', '44', '4412', '4412', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441202', '端州区', '3', '44', '4412', '4412', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441203', '鼎湖区', '3', '44', '4412', '4412', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441204', '高要区', '3', '44', '4412', '4412', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441223', '广宁县', '3', '44', '4412', '4412', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441224', '怀集县', '3', '44', '4412', '4412', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441225', '封开县', '3', '44', '4412', '4412', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441226', '德庆县', '3', '44', '4412', '4412', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441284', '四会市', '3', '44', '4412', '4412', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441301', '市辖区', '3', '44', '4413', '4413', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441302', '惠城区', '3', '44', '4413', '4413', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441303', '惠阳区', '3', '44', '4413', '4413', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441322', '博罗县', '3', '44', '4413', '4413', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441323', '惠东县', '3', '44', '4413', '4413', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441324', '龙门县', '3', '44', '4413', '4413', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441401', '市辖区', '3', '44', '4414', '4414', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441402', '梅江区', '3', '44', '4414', '4414', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441403', '梅县区', '3', '44', '4414', '4414', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441422', '大埔县', '3', '44', '4414', '4414', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441423', '丰顺县', '3', '44', '4414', '4414', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441424', '五华县', '3', '44', '4414', '4414', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441426', '平远县', '3', '44', '4414', '4414', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441427', '蕉岭县', '3', '44', '4414', '4414', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441481', '兴宁市', '3', '44', '4414', '4414', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441501', '市辖区', '3', '44', '4415', '4415', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441502', '城区', '3', '44', '4415', '4415', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441521', '海丰县', '3', '44', '4415', '4415', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441523', '陆河县', '3', '44', '4415', '4415', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441581', '陆丰市', '3', '44', '4415', '4415', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441601', '市辖区', '3', '44', '4416', '4416', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441602', '源城区', '3', '44', '4416', '4416', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441621', '紫金县', '3', '44', '4416', '4416', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441622', '龙川县', '3', '44', '4416', '4416', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441623', '连平县', '3', '44', '4416', '4416', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441624', '和平县', '3', '44', '4416', '4416', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441625', '东源县', '3', '44', '4416', '4416', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441701', '市辖区', '3', '44', '4417', '4417', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441702', '江城区', '3', '44', '4417', '4417', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441704', '阳东区', '3', '44', '4417', '4417', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441721', '阳西县', '3', '44', '4417', '4417', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441781', '阳春市', '3', '44', '4417', '4417', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441801', '市辖区', '3', '44', '4418', '4418', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441802', '清城区', '3', '44', '4418', '4418', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441803', '清新区', '3', '44', '4418', '4418', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441821', '佛冈县', '3', '44', '4418', '4418', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441823', '阳山县', '3', '44', '4418', '4418', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441825', '连山壮族瑶族自治县', '3', '44', '4418', '4418', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441826', '连南瑶族自治县', '3', '44', '4418', '4418', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441881', '英德市', '3', '44', '4418', '4418', '0', null, '', '');
INSERT INTO `my_region` VALUES ('441882', '连州市', '3', '44', '4418', '4418', '0', null, '', '');
INSERT INTO `my_region` VALUES ('445101', '市辖区', '3', '44', '4451', '4451', '0', null, '', '');
INSERT INTO `my_region` VALUES ('445102', '湘桥区', '3', '44', '4451', '4451', '0', null, '', '');
INSERT INTO `my_region` VALUES ('445103', '潮安区', '3', '44', '4451', '4451', '0', null, '', '');
INSERT INTO `my_region` VALUES ('445122', '饶平县', '3', '44', '4451', '4451', '0', null, '', '');
INSERT INTO `my_region` VALUES ('445201', '市辖区', '3', '44', '4452', '4452', '0', null, '', '');
INSERT INTO `my_region` VALUES ('445202', '榕城区', '3', '44', '4452', '4452', '0', null, '', '');
INSERT INTO `my_region` VALUES ('445203', '揭东区', '3', '44', '4452', '4452', '0', null, '', '');
INSERT INTO `my_region` VALUES ('445222', '揭西县', '3', '44', '4452', '4452', '0', null, '', '');
INSERT INTO `my_region` VALUES ('445224', '惠来县', '3', '44', '4452', '4452', '0', null, '', '');
INSERT INTO `my_region` VALUES ('445281', '普宁市', '3', '44', '4452', '4452', '0', null, '', '');
INSERT INTO `my_region` VALUES ('445301', '市辖区', '3', '44', '4453', '4453', '0', null, '', '');
INSERT INTO `my_region` VALUES ('445302', '云城区', '3', '44', '4453', '4453', '0', null, '', '');
INSERT INTO `my_region` VALUES ('445303', '云安区', '3', '44', '4453', '4453', '0', null, '', '');
INSERT INTO `my_region` VALUES ('445321', '新兴县', '3', '44', '4453', '4453', '0', null, '', '');
INSERT INTO `my_region` VALUES ('445322', '郁南县', '3', '44', '4453', '4453', '0', null, '', '');
INSERT INTO `my_region` VALUES ('445381', '罗定市', '3', '44', '4453', '4453', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450101', '市辖区', '3', '45', '4501', '4501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450102', '兴宁区', '3', '45', '4501', '4501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450103', '青秀区', '3', '45', '4501', '4501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450105', '江南区', '3', '45', '4501', '4501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450107', '西乡塘区', '3', '45', '4501', '4501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450108', '良庆区', '3', '45', '4501', '4501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450109', '邕宁区', '3', '45', '4501', '4501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450110', '武鸣区', '3', '45', '4501', '4501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450123', '隆安县', '3', '45', '4501', '4501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450124', '马山县', '3', '45', '4501', '4501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450125', '上林县', '3', '45', '4501', '4501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450126', '宾阳县', '3', '45', '4501', '4501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450127', '横县', '3', '45', '4501', '4501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450201', '市辖区', '3', '45', '4502', '4502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450202', '城中区', '3', '45', '4502', '4502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450203', '鱼峰区', '3', '45', '4502', '4502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450204', '柳南区', '3', '45', '4502', '4502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450205', '柳北区', '3', '45', '4502', '4502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450206', '柳江区', '3', '45', '4502', '4502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450222', '柳城县', '3', '45', '4502', '4502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450223', '鹿寨县', '3', '45', '4502', '4502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450224', '融安县', '3', '45', '4502', '4502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450225', '融水苗族自治县', '3', '45', '4502', '4502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450226', '三江侗族自治县', '3', '45', '4502', '4502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450301', '市辖区', '3', '45', '4503', '4503', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450302', '秀峰区', '3', '45', '4503', '4503', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450303', '叠彩区', '3', '45', '4503', '4503', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450304', '象山区', '3', '45', '4503', '4503', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450305', '七星区', '3', '45', '4503', '4503', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450311', '雁山区', '3', '45', '4503', '4503', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450312', '临桂区', '3', '45', '4503', '4503', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450321', '阳朔县', '3', '45', '4503', '4503', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450323', '灵川县', '3', '45', '4503', '4503', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450324', '全州县', '3', '45', '4503', '4503', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450325', '兴安县', '3', '45', '4503', '4503', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450326', '永福县', '3', '45', '4503', '4503', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450327', '灌阳县', '3', '45', '4503', '4503', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450328', '龙胜各族自治县', '3', '45', '4503', '4503', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450329', '资源县', '3', '45', '4503', '4503', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450330', '平乐县', '3', '45', '4503', '4503', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450331', '荔浦县', '3', '45', '4503', '4503', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450332', '恭城瑶族自治县', '3', '45', '4503', '4503', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450401', '市辖区', '3', '45', '4504', '4504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450403', '万秀区', '3', '45', '4504', '4504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450405', '长洲区', '3', '45', '4504', '4504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450406', '龙圩区', '3', '45', '4504', '4504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450421', '苍梧县', '3', '45', '4504', '4504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450422', '藤县', '3', '45', '4504', '4504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450423', '蒙山县', '3', '45', '4504', '4504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450481', '岑溪市', '3', '45', '4504', '4504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450501', '市辖区', '3', '45', '4505', '4505', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450502', '海城区', '3', '45', '4505', '4505', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450503', '银海区', '3', '45', '4505', '4505', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450512', '铁山港区', '3', '45', '4505', '4505', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450521', '合浦县', '3', '45', '4505', '4505', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450601', '市辖区', '3', '45', '4506', '4506', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450602', '港口区', '3', '45', '4506', '4506', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450603', '防城区', '3', '45', '4506', '4506', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450621', '上思县', '3', '45', '4506', '4506', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450681', '东兴市', '3', '45', '4506', '4506', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450701', '市辖区', '3', '45', '4507', '4507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450702', '钦南区', '3', '45', '4507', '4507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450703', '钦北区', '3', '45', '4507', '4507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450721', '灵山县', '3', '45', '4507', '4507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450722', '浦北县', '3', '45', '4507', '4507', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450801', '市辖区', '3', '45', '4508', '4508', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450802', '港北区', '3', '45', '4508', '4508', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450803', '港南区', '3', '45', '4508', '4508', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450804', '覃塘区', '3', '45', '4508', '4508', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450821', '平南县', '3', '45', '4508', '4508', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450881', '桂平市', '3', '45', '4508', '4508', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450901', '市辖区', '3', '45', '4509', '4509', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450902', '玉州区', '3', '45', '4509', '4509', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450903', '福绵区', '3', '45', '4509', '4509', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450921', '容县', '3', '45', '4509', '4509', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450922', '陆川县', '3', '45', '4509', '4509', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450923', '博白县', '3', '45', '4509', '4509', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450924', '兴业县', '3', '45', '4509', '4509', '0', null, '', '');
INSERT INTO `my_region` VALUES ('450981', '北流市', '3', '45', '4509', '4509', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451001', '市辖区', '3', '45', '4510', '4510', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451002', '右江区', '3', '45', '4510', '4510', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451021', '田阳县', '3', '45', '4510', '4510', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451022', '田东县', '3', '45', '4510', '4510', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451023', '平果县', '3', '45', '4510', '4510', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451024', '德保县', '3', '45', '4510', '4510', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451026', '那坡县', '3', '45', '4510', '4510', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451027', '凌云县', '3', '45', '4510', '4510', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451028', '乐业县', '3', '45', '4510', '4510', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451029', '田林县', '3', '45', '4510', '4510', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451030', '西林县', '3', '45', '4510', '4510', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451031', '隆林各族自治县', '3', '45', '4510', '4510', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451081', '靖西市', '3', '45', '4510', '4510', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451101', '市辖区', '3', '45', '4511', '4511', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451102', '八步区', '3', '45', '4511', '4511', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451103', '平桂区', '3', '45', '4511', '4511', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451121', '昭平县', '3', '45', '4511', '4511', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451122', '钟山县', '3', '45', '4511', '4511', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451123', '富川瑶族自治县', '3', '45', '4511', '4511', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451201', '市辖区', '3', '45', '4512', '4512', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451202', '金城江区', '3', '45', '4512', '4512', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451221', '南丹县', '3', '45', '4512', '4512', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451222', '天峨县', '3', '45', '4512', '4512', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451223', '凤山县', '3', '45', '4512', '4512', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451224', '东兰县', '3', '45', '4512', '4512', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451225', '罗城仫佬族自治县', '3', '45', '4512', '4512', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451226', '环江毛南族自治县', '3', '45', '4512', '4512', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451227', '巴马瑶族自治县', '3', '45', '4512', '4512', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451228', '都安瑶族自治县', '3', '45', '4512', '4512', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451229', '大化瑶族自治县', '3', '45', '4512', '4512', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451281', '宜州市', '3', '45', '4512', '4512', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451301', '市辖区', '3', '45', '4513', '4513', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451302', '兴宾区', '3', '45', '4513', '4513', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451321', '忻城县', '3', '45', '4513', '4513', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451322', '象州县', '3', '45', '4513', '4513', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451323', '武宣县', '3', '45', '4513', '4513', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451324', '金秀瑶族自治县', '3', '45', '4513', '4513', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451381', '合山市', '3', '45', '4513', '4513', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451401', '市辖区', '3', '45', '4514', '4514', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451402', '江州区', '3', '45', '4514', '4514', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451421', '扶绥县', '3', '45', '4514', '4514', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451422', '宁明县', '3', '45', '4514', '4514', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451423', '龙州县', '3', '45', '4514', '4514', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451424', '大新县', '3', '45', '4514', '4514', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451425', '天等县', '3', '45', '4514', '4514', '0', null, '', '');
INSERT INTO `my_region` VALUES ('451481', '凭祥市', '3', '45', '4514', '4514', '0', null, '', '');
INSERT INTO `my_region` VALUES ('460101', '市辖区', '3', '46', '4601', '4601', '0', null, '', '');
INSERT INTO `my_region` VALUES ('460105', '秀英区', '3', '46', '4601', '4601', '0', null, '', '');
INSERT INTO `my_region` VALUES ('460106', '龙华区', '3', '46', '4601', '4601', '0', null, '', '');
INSERT INTO `my_region` VALUES ('460107', '琼山区', '3', '46', '4601', '4601', '0', null, '', '');
INSERT INTO `my_region` VALUES ('460108', '美兰区', '3', '46', '4601', '4601', '0', null, '', '');
INSERT INTO `my_region` VALUES ('460201', '市辖区', '3', '46', '4602', '4602', '0', null, '', '');
INSERT INTO `my_region` VALUES ('460202', '海棠区', '3', '46', '4602', '4602', '0', null, '', '');
INSERT INTO `my_region` VALUES ('460203', '吉阳区', '3', '46', '4602', '4602', '0', null, '', '');
INSERT INTO `my_region` VALUES ('460204', '天涯区', '3', '46', '4602', '4602', '0', null, '', '');
INSERT INTO `my_region` VALUES ('460205', '崖州区', '3', '46', '4602', '4602', '0', null, '', '');
INSERT INTO `my_region` VALUES ('469001', '五指山市', '3', '46', '4690', '4690', '0', null, '', '');
INSERT INTO `my_region` VALUES ('469002', '琼海市', '3', '46', '4690', '4690', '0', null, '', '');
INSERT INTO `my_region` VALUES ('469005', '文昌市', '3', '46', '4690', '4690', '0', null, '', '');
INSERT INTO `my_region` VALUES ('469006', '万宁市', '3', '46', '4690', '4690', '0', null, '', '');
INSERT INTO `my_region` VALUES ('469007', '东方市', '3', '46', '4690', '4690', '0', null, '', '');
INSERT INTO `my_region` VALUES ('469021', '定安县', '3', '46', '4690', '4690', '0', null, '', '');
INSERT INTO `my_region` VALUES ('469022', '屯昌县', '3', '46', '4690', '4690', '0', null, '', '');
INSERT INTO `my_region` VALUES ('469023', '澄迈县', '3', '46', '4690', '4690', '0', null, '', '');
INSERT INTO `my_region` VALUES ('469024', '临高县', '3', '46', '4690', '4690', '0', null, '', '');
INSERT INTO `my_region` VALUES ('469025', '白沙黎族自治县', '3', '46', '4690', '4690', '0', null, '', '');
INSERT INTO `my_region` VALUES ('469026', '昌江黎族自治县', '3', '46', '4690', '4690', '0', null, '', '');
INSERT INTO `my_region` VALUES ('469027', '乐东黎族自治县', '3', '46', '4690', '4690', '0', null, '', '');
INSERT INTO `my_region` VALUES ('469028', '陵水黎族自治县', '3', '46', '4690', '4690', '0', null, '', '');
INSERT INTO `my_region` VALUES ('469029', '保亭黎族苗族自治县', '3', '46', '4690', '4690', '0', null, '', '');
INSERT INTO `my_region` VALUES ('469030', '琼中黎族苗族自治县', '3', '46', '4690', '4690', '0', null, '', '');
INSERT INTO `my_region` VALUES ('500101', '万州区', '3', '50', '5001', '5001', '0', '517', '', '');
INSERT INTO `my_region` VALUES ('500102', '涪陵区', '3', '50', '5001', '5001', '0', '506', '', '');
INSERT INTO `my_region` VALUES ('500103', '渝中区', '3', '50', '5001', '5001', '0', '525', '', '');
INSERT INTO `my_region` VALUES ('500104', '大渡口区', '3', '50', '5001', '5001', '0', '511', '', '');
INSERT INTO `my_region` VALUES ('500105', '江北区', '3', '50', '5001', '5001', '0', '504', '', '');
INSERT INTO `my_region` VALUES ('500106', '沙坪坝区', '3', '50', '5001', '5001', '0', '494', '', '');
INSERT INTO `my_region` VALUES ('500107', '九龙坡区', '3', '50', '5001', '5001', '0', '502', '', '');
INSERT INTO `my_region` VALUES ('500108', '南岸区', '3', '50', '5001', '5001', '0', '499', '', '');
INSERT INTO `my_region` VALUES ('500109', '北碚区', '3', '50', '5001', '5001', '0', '514', '', '');
INSERT INTO `my_region` VALUES ('500110', '綦江区', '3', '50', '5001', '5001', '0', null, '', '');
INSERT INTO `my_region` VALUES ('500111', '大足区', '3', '50', '5001', '5001', '0', null, '', '');
INSERT INTO `my_region` VALUES ('500112', '渝北区', '3', '50', '5001', '5001', '0', '524', '', '');
INSERT INTO `my_region` VALUES ('500113', '巴南区', '3', '50', '5001', '5001', '0', '515', '', '');
INSERT INTO `my_region` VALUES ('500114', '黔江区', '3', '50', '5001', '5001', '0', '496', '', '');
INSERT INTO `my_region` VALUES ('500115', '长寿区', '3', '50', '5001', '5001', '0', '513', '', '');
INSERT INTO `my_region` VALUES ('500116', '江津区', '3', '50', '5001', '5001', '0', '503', '', '');
INSERT INTO `my_region` VALUES ('500117', '合川区', '3', '50', '5001', '5001', '0', '505', '', '');
INSERT INTO `my_region` VALUES ('500118', '永川区', '3', '50', '5001', '5001', '0', '522', '', '');
INSERT INTO `my_region` VALUES ('500119', '南川区', '3', '50', '5001', '5001', '0', '498', '', '');
INSERT INTO `my_region` VALUES ('500120', '璧山区', '3', '50', '5001', '5001', '0', null, '', '');
INSERT INTO `my_region` VALUES ('500151', '铜梁区', '3', '50', '5001', '5001', '0', null, '', '');
INSERT INTO `my_region` VALUES ('500152', '潼南区', '3', '50', '5001', '5001', '0', null, '', '');
INSERT INTO `my_region` VALUES ('500153', '荣昌区', '3', '50', '5001', '5001', '0', null, '', '');
INSERT INTO `my_region` VALUES ('500154', '开州区', '3', '50', '5001', '5001', '0', null, '', '');
INSERT INTO `my_region` VALUES ('500228', '梁平县', '3', '50', '5002', '5002', '0', '500', '', '');
INSERT INTO `my_region` VALUES ('500229', '城口县', '3', '50', '5002', '5002', '0', '512', '', '');
INSERT INTO `my_region` VALUES ('500230', '丰都县', '3', '50', '5002', '5002', '0', '508', '', '');
INSERT INTO `my_region` VALUES ('500231', '垫江县', '3', '50', '5002', '5002', '0', '510', '', '');
INSERT INTO `my_region` VALUES ('500232', '武隆县', '3', '50', '5002', '5002', '0', '520', '', '');
INSERT INTO `my_region` VALUES ('500233', '忠县', '3', '50', '5002', '5002', '0', '527', '', '');
INSERT INTO `my_region` VALUES ('500235', '云阳县', '3', '50', '5002', '5002', '0', '526', '', '');
INSERT INTO `my_region` VALUES ('500236', '奉节县', '3', '50', '5002', '5002', '0', '507', '', '');
INSERT INTO `my_region` VALUES ('500237', '巫山县', '3', '50', '5002', '5002', '0', '518', '', '');
INSERT INTO `my_region` VALUES ('500238', '巫溪县', '3', '50', '5002', '5002', '0', '519', '', '');
INSERT INTO `my_region` VALUES ('500240', '石柱土家族自治县', '3', '50', '5002', '5002', '0', '493', '', '');
INSERT INTO `my_region` VALUES ('500241', '秀山土家族苗族自治县', '3', '50', '5002', '5002', '0', '521', '', '');
INSERT INTO `my_region` VALUES ('500242', '酉阳土家族苗族自治县', '3', '50', '5002', '5002', '0', '523', '', '');
INSERT INTO `my_region` VALUES ('500243', '彭水苗族土家族自治县', '3', '50', '5002', '5002', '0', '497', '', '');
INSERT INTO `my_region` VALUES ('510101', '市辖区', '3', '51', '5101', '5101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510104', '锦江区', '3', '51', '5101', '5101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510105', '青羊区', '3', '51', '5101', '5101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510106', '金牛区', '3', '51', '5101', '5101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510107', '武侯区', '3', '51', '5101', '5101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510108', '成华区', '3', '51', '5101', '5101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510112', '龙泉驿区', '3', '51', '5101', '5101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510113', '青白江区', '3', '51', '5101', '5101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510114', '新都区', '3', '51', '5101', '5101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510115', '温江区', '3', '51', '5101', '5101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510116', '双流区', '3', '51', '5101', '5101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510121', '金堂县', '3', '51', '5101', '5101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510124', '郫县', '3', '51', '5101', '5101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510129', '大邑县', '3', '51', '5101', '5101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510131', '蒲江县', '3', '51', '5101', '5101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510132', '新津县', '3', '51', '5101', '5101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510181', '都江堰市', '3', '51', '5101', '5101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510182', '彭州市', '3', '51', '5101', '5101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510183', '邛崃市', '3', '51', '5101', '5101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510184', '崇州市', '3', '51', '5101', '5101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510185', '简阳市', '3', '51', '5101', '5101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510301', '市辖区', '3', '51', '5103', '5103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510302', '自流井区', '3', '51', '5103', '5103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510303', '贡井区', '3', '51', '5103', '5103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510304', '大安区', '3', '51', '5103', '5103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510311', '沿滩区', '3', '51', '5103', '5103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510321', '荣县', '3', '51', '5103', '5103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510322', '富顺县', '3', '51', '5103', '5103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510401', '市辖区', '3', '51', '5104', '5104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510402', '东区', '3', '51', '5104', '5104', '0', '432', '', '');
INSERT INTO `my_region` VALUES ('510403', '西区', '3', '51', '5104', '5104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510411', '仁和区', '3', '51', '5104', '5104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510421', '米易县', '3', '51', '5104', '5104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510422', '盐边县', '3', '51', '5104', '5104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510501', '市辖区', '3', '51', '5105', '5105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510502', '江阳区', '3', '51', '5105', '5105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510503', '纳溪区', '3', '51', '5105', '5105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510504', '龙马潭区', '3', '51', '5105', '5105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510521', '泸县', '3', '51', '5105', '5105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510522', '合江县', '3', '51', '5105', '5105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510524', '叙永县', '3', '51', '5105', '5105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510525', '古蔺县', '3', '51', '5105', '5105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510601', '市辖区', '3', '51', '5106', '5106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510603', '旌阳区', '3', '51', '5106', '5106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510623', '中江县', '3', '51', '5106', '5106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510626', '罗江县', '3', '51', '5106', '5106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510681', '广汉市', '3', '51', '5106', '5106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510682', '什邡市', '3', '51', '5106', '5106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510683', '绵竹市', '3', '51', '5106', '5106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510701', '市辖区', '3', '51', '5107', '5107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510703', '涪城区', '3', '51', '5107', '5107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510704', '游仙区', '3', '51', '5107', '5107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510705', '安州区', '3', '51', '5107', '5107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510722', '三台县', '3', '51', '5107', '5107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510723', '盐亭县', '3', '51', '5107', '5107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510725', '梓潼县', '3', '51', '5107', '5107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510726', '北川羌族自治县', '3', '51', '5107', '5107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510727', '平武县', '3', '51', '5107', '5107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510781', '江油市', '3', '51', '5107', '5107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510801', '市辖区', '3', '51', '5108', '5108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510802', '利州区', '3', '51', '5108', '5108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510811', '昭化区', '3', '51', '5108', '5108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510812', '朝天区', '3', '51', '5108', '5108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510821', '旺苍县', '3', '51', '5108', '5108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510822', '青川县', '3', '51', '5108', '5108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510823', '剑阁县', '3', '51', '5108', '5108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510824', '苍溪县', '3', '51', '5108', '5108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510901', '市辖区', '3', '51', '5109', '5109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510903', '船山区', '3', '51', '5109', '5109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510904', '安居区', '3', '51', '5109', '5109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510921', '蓬溪县', '3', '51', '5109', '5109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510922', '射洪县', '3', '51', '5109', '5109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('510923', '大英县', '3', '51', '5109', '5109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511001', '市辖区', '3', '51', '5110', '5110', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511002', '市中区', '3', '51', '5110', '5110', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511011', '东兴区', '3', '51', '5110', '5110', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511024', '威远县', '3', '51', '5110', '5110', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511025', '资中县', '3', '51', '5110', '5110', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511028', '隆昌县', '3', '51', '5110', '5110', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511101', '市辖区', '3', '51', '5111', '5111', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511102', '市中区', '3', '51', '5111', '5111', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511111', '沙湾区', '3', '51', '5111', '5111', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511112', '五通桥区', '3', '51', '5111', '5111', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511113', '金口河区', '3', '51', '5111', '5111', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511123', '犍为县', '3', '51', '5111', '5111', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511124', '井研县', '3', '51', '5111', '5111', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511126', '夹江县', '3', '51', '5111', '5111', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511129', '沐川县', '3', '51', '5111', '5111', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511132', '峨边彝族自治县', '3', '51', '5111', '5111', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511133', '马边彝族自治县', '3', '51', '5111', '5111', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511181', '峨眉山市', '3', '51', '5111', '5111', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511301', '市辖区', '3', '51', '5113', '5113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511302', '顺庆区', '3', '51', '5113', '5113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511303', '高坪区', '3', '51', '5113', '5113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511304', '嘉陵区', '3', '51', '5113', '5113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511321', '南部县', '3', '51', '5113', '5113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511322', '营山县', '3', '51', '5113', '5113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511323', '蓬安县', '3', '51', '5113', '5113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511324', '仪陇县', '3', '51', '5113', '5113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511325', '西充县', '3', '51', '5113', '5113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511381', '阆中市', '3', '51', '5113', '5113', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511401', '市辖区', '3', '51', '5114', '5114', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511402', '东坡区', '3', '51', '5114', '5114', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511403', '彭山区', '3', '51', '5114', '5114', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511421', '仁寿县', '3', '51', '5114', '5114', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511423', '洪雅县', '3', '51', '5114', '5114', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511424', '丹棱县', '3', '51', '5114', '5114', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511425', '青神县', '3', '51', '5114', '5114', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511501', '市辖区', '3', '51', '5115', '5115', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511502', '翠屏区', '3', '51', '5115', '5115', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511503', '南溪区', '3', '51', '5115', '5115', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511521', '宜宾县', '3', '51', '5115', '5115', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511523', '江安县', '3', '51', '5115', '5115', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511524', '长宁县', '3', '51', '5115', '5115', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511525', '高县', '3', '51', '5115', '5115', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511526', '珙县', '3', '51', '5115', '5115', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511527', '筠连县', '3', '51', '5115', '5115', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511528', '兴文县', '3', '51', '5115', '5115', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511529', '屏山县', '3', '51', '5115', '5115', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511601', '市辖区', '3', '51', '5116', '5116', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511602', '广安区', '3', '51', '5116', '5116', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511603', '前锋区', '3', '51', '5116', '5116', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511621', '岳池县', '3', '51', '5116', '5116', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511622', '武胜县', '3', '51', '5116', '5116', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511623', '邻水县', '3', '51', '5116', '5116', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511681', '华蓥市', '3', '51', '5116', '5116', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511701', '市辖区', '3', '51', '5117', '5117', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511702', '通川区', '3', '51', '5117', '5117', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511703', '达川区', '3', '51', '5117', '5117', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511722', '宣汉县', '3', '51', '5117', '5117', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511723', '开江县', '3', '51', '5117', '5117', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511724', '大竹县', '3', '51', '5117', '5117', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511725', '渠县', '3', '51', '5117', '5117', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511781', '万源市', '3', '51', '5117', '5117', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511801', '市辖区', '3', '51', '5118', '5118', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511802', '雨城区', '3', '51', '5118', '5118', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511803', '名山区', '3', '51', '5118', '5118', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511822', '荥经县', '3', '51', '5118', '5118', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511823', '汉源县', '3', '51', '5118', '5118', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511824', '石棉县', '3', '51', '5118', '5118', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511825', '天全县', '3', '51', '5118', '5118', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511826', '芦山县', '3', '51', '5118', '5118', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511827', '宝兴县', '3', '51', '5118', '5118', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511901', '市辖区', '3', '51', '5119', '5119', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511902', '巴州区', '3', '51', '5119', '5119', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511903', '恩阳区', '3', '51', '5119', '5119', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511921', '通江县', '3', '51', '5119', '5119', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511922', '南江县', '3', '51', '5119', '5119', '0', null, '', '');
INSERT INTO `my_region` VALUES ('511923', '平昌县', '3', '51', '5119', '5119', '0', null, '', '');
INSERT INTO `my_region` VALUES ('512001', '市辖区', '3', '51', '5120', '5120', '0', null, '', '');
INSERT INTO `my_region` VALUES ('512002', '雁江区', '3', '51', '5120', '5120', '0', null, '', '');
INSERT INTO `my_region` VALUES ('512021', '安岳县', '3', '51', '5120', '5120', '0', null, '', '');
INSERT INTO `my_region` VALUES ('512022', '乐至县', '3', '51', '5120', '5120', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513201', '马尔康市', '3', '51', '5132', '5132', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513221', '汶川县', '3', '51', '5132', '5132', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513222', '理县', '3', '51', '5132', '5132', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513223', '茂县', '3', '51', '5132', '5132', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513224', '松潘县', '3', '51', '5132', '5132', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513225', '九寨沟县', '3', '51', '5132', '5132', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513226', '金川县', '3', '51', '5132', '5132', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513227', '小金县', '3', '51', '5132', '5132', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513228', '黑水县', '3', '51', '5132', '5132', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513230', '壤塘县', '3', '51', '5132', '5132', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513231', '阿坝县', '3', '51', '5132', '5132', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513232', '若尔盖县', '3', '51', '5132', '5132', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513233', '红原县', '3', '51', '5132', '5132', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513301', '康定市', '3', '51', '5133', '5133', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513322', '泸定县', '3', '51', '5133', '5133', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513323', '丹巴县', '3', '51', '5133', '5133', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513324', '九龙县', '3', '51', '5133', '5133', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513325', '雅江县', '3', '51', '5133', '5133', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513326', '道孚县', '3', '51', '5133', '5133', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513327', '炉霍县', '3', '51', '5133', '5133', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513328', '甘孜县', '3', '51', '5133', '5133', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513329', '新龙县', '3', '51', '5133', '5133', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513330', '德格县', '3', '51', '5133', '5133', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513331', '白玉县', '3', '51', '5133', '5133', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513332', '石渠县', '3', '51', '5133', '5133', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513333', '色达县', '3', '51', '5133', '5133', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513334', '理塘县', '3', '51', '5133', '5133', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513335', '巴塘县', '3', '51', '5133', '5133', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513336', '乡城县', '3', '51', '5133', '5133', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513337', '稻城县', '3', '51', '5133', '5133', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513338', '得荣县', '3', '51', '5133', '5133', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513401', '西昌市', '3', '51', '5134', '5134', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513422', '木里藏族自治县', '3', '51', '5134', '5134', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513423', '盐源县', '3', '51', '5134', '5134', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513424', '德昌县', '3', '51', '5134', '5134', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513425', '会理县', '3', '51', '5134', '5134', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513426', '会东县', '3', '51', '5134', '5134', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513427', '宁南县', '3', '51', '5134', '5134', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513428', '普格县', '3', '51', '5134', '5134', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513429', '布拖县', '3', '51', '5134', '5134', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513430', '金阳县', '3', '51', '5134', '5134', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513431', '昭觉县', '3', '51', '5134', '5134', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513432', '喜德县', '3', '51', '5134', '5134', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513433', '冕宁县', '3', '51', '5134', '5134', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513434', '越西县', '3', '51', '5134', '5134', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513435', '甘洛县', '3', '51', '5134', '5134', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513436', '美姑县', '3', '51', '5134', '5134', '0', null, '', '');
INSERT INTO `my_region` VALUES ('513437', '雷波县', '3', '51', '5134', '5134', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520101', '市辖区', '3', '52', '5201', '5201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520102', '南明区', '3', '52', '5201', '5201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520103', '云岩区', '3', '52', '5201', '5201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520111', '花溪区', '3', '52', '5201', '5201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520112', '乌当区', '3', '52', '5201', '5201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520113', '白云区', '3', '52', '5201', '5201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520115', '观山湖区', '3', '52', '5201', '5201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520121', '开阳县', '3', '52', '5201', '5201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520122', '息烽县', '3', '52', '5201', '5201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520123', '修文县', '3', '52', '5201', '5201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520181', '清镇市', '3', '52', '5201', '5201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520201', '钟山区', '3', '52', '5202', '5202', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520203', '六枝特区', '3', '52', '5202', '5202', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520221', '水城县', '3', '52', '5202', '5202', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520222', '盘县', '3', '52', '5202', '5202', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520301', '市辖区', '3', '52', '5203', '5203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520302', '红花岗区', '3', '52', '5203', '5203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520303', '汇川区', '3', '52', '5203', '5203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520304', '播州区', '3', '52', '5203', '5203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520322', '桐梓县', '3', '52', '5203', '5203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520323', '绥阳县', '3', '52', '5203', '5203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520324', '正安县', '3', '52', '5203', '5203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520325', '道真仡佬族苗族自治县', '3', '52', '5203', '5203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520326', '务川仡佬族苗族自治县', '3', '52', '5203', '5203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520327', '凤冈县', '3', '52', '5203', '5203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520328', '湄潭县', '3', '52', '5203', '5203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520329', '余庆县', '3', '52', '5203', '5203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520330', '习水县', '3', '52', '5203', '5203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520381', '赤水市', '3', '52', '5203', '5203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520382', '仁怀市', '3', '52', '5203', '5203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520401', '市辖区', '3', '52', '5204', '5204', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520402', '西秀区', '3', '52', '5204', '5204', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520403', '平坝区', '3', '52', '5204', '5204', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520422', '普定县', '3', '52', '5204', '5204', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520423', '镇宁布依族苗族自治县', '3', '52', '5204', '5204', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520424', '关岭布依族苗族自治县', '3', '52', '5204', '5204', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520425', '紫云苗族布依族自治县', '3', '52', '5204', '5204', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520501', '市辖区', '3', '52', '5205', '5205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520502', '七星关区', '3', '52', '5205', '5205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520521', '大方县', '3', '52', '5205', '5205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520522', '黔西县', '3', '52', '5205', '5205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520523', '金沙县', '3', '52', '5205', '5205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520524', '织金县', '3', '52', '5205', '5205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520525', '纳雍县', '3', '52', '5205', '5205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520526', '威宁彝族回族苗族自治县', '3', '52', '5205', '5205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520527', '赫章县', '3', '52', '5205', '5205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520601', '市辖区', '3', '52', '5206', '5206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520602', '碧江区', '3', '52', '5206', '5206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520603', '万山区', '3', '52', '5206', '5206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520621', '江口县', '3', '52', '5206', '5206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520622', '玉屏侗族自治县', '3', '52', '5206', '5206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520623', '石阡县', '3', '52', '5206', '5206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520624', '思南县', '3', '52', '5206', '5206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520625', '印江土家族苗族自治县', '3', '52', '5206', '5206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520626', '德江县', '3', '52', '5206', '5206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520627', '沿河土家族自治县', '3', '52', '5206', '5206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('520628', '松桃苗族自治县', '3', '52', '5206', '5206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522301', '兴义市', '3', '52', '5223', '5223', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522322', '兴仁县', '3', '52', '5223', '5223', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522323', '普安县', '3', '52', '5223', '5223', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522324', '晴隆县', '3', '52', '5223', '5223', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522325', '贞丰县', '3', '52', '5223', '5223', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522326', '望谟县', '3', '52', '5223', '5223', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522327', '册亨县', '3', '52', '5223', '5223', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522328', '安龙县', '3', '52', '5223', '5223', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522601', '凯里市', '3', '52', '5226', '5226', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522622', '黄平县', '3', '52', '5226', '5226', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522623', '施秉县', '3', '52', '5226', '5226', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522624', '三穗县', '3', '52', '5226', '5226', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522625', '镇远县', '3', '52', '5226', '5226', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522626', '岑巩县', '3', '52', '5226', '5226', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522627', '天柱县', '3', '52', '5226', '5226', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522628', '锦屏县', '3', '52', '5226', '5226', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522629', '剑河县', '3', '52', '5226', '5226', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522630', '台江县', '3', '52', '5226', '5226', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522631', '黎平县', '3', '52', '5226', '5226', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522632', '榕江县', '3', '52', '5226', '5226', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522633', '从江县', '3', '52', '5226', '5226', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522634', '雷山县', '3', '52', '5226', '5226', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522635', '麻江县', '3', '52', '5226', '5226', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522636', '丹寨县', '3', '52', '5226', '5226', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522701', '都匀市', '3', '52', '5227', '5227', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522702', '福泉市', '3', '52', '5227', '5227', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522722', '荔波县', '3', '52', '5227', '5227', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522723', '贵定县', '3', '52', '5227', '5227', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522725', '瓮安县', '3', '52', '5227', '5227', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522726', '独山县', '3', '52', '5227', '5227', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522727', '平塘县', '3', '52', '5227', '5227', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522728', '罗甸县', '3', '52', '5227', '5227', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522729', '长顺县', '3', '52', '5227', '5227', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522730', '龙里县', '3', '52', '5227', '5227', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522731', '惠水县', '3', '52', '5227', '5227', '0', null, '', '');
INSERT INTO `my_region` VALUES ('522732', '三都水族自治县', '3', '52', '5227', '5227', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530101', '市辖区', '3', '53', '5301', '5301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530102', '五华区', '3', '53', '5301', '5301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530103', '盘龙区', '3', '53', '5301', '5301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530111', '官渡区', '3', '53', '5301', '5301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530112', '西山区', '3', '53', '5301', '5301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530113', '东川区', '3', '53', '5301', '5301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530114', '呈贡区', '3', '53', '5301', '5301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530122', '晋宁县', '3', '53', '5301', '5301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530124', '富民县', '3', '53', '5301', '5301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530125', '宜良县', '3', '53', '5301', '5301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530126', '石林彝族自治县', '3', '53', '5301', '5301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530127', '嵩明县', '3', '53', '5301', '5301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530128', '禄劝彝族苗族自治县', '3', '53', '5301', '5301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530129', '寻甸回族彝族自治县', '3', '53', '5301', '5301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530181', '安宁市', '3', '53', '5301', '5301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530301', '市辖区', '3', '53', '5303', '5303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530302', '麒麟区', '3', '53', '5303', '5303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530303', '沾益区', '3', '53', '5303', '5303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530321', '马龙县', '3', '53', '5303', '5303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530322', '陆良县', '3', '53', '5303', '5303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530323', '师宗县', '3', '53', '5303', '5303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530324', '罗平县', '3', '53', '5303', '5303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530325', '富源县', '3', '53', '5303', '5303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530326', '会泽县', '3', '53', '5303', '5303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530381', '宣威市', '3', '53', '5303', '5303', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530401', '市辖区', '3', '53', '5304', '5304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530402', '红塔区', '3', '53', '5304', '5304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530403', '江川区', '3', '53', '5304', '5304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530422', '澄江县', '3', '53', '5304', '5304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530423', '通海县', '3', '53', '5304', '5304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530424', '华宁县', '3', '53', '5304', '5304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530425', '易门县', '3', '53', '5304', '5304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530426', '峨山彝族自治县', '3', '53', '5304', '5304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530427', '新平彝族傣族自治县', '3', '53', '5304', '5304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530428', '元江哈尼族彝族傣族自治县', '3', '53', '5304', '5304', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530501', '市辖区', '3', '53', '5305', '5305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530502', '隆阳区', '3', '53', '5305', '5305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530521', '施甸县', '3', '53', '5305', '5305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530523', '龙陵县', '3', '53', '5305', '5305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530524', '昌宁县', '3', '53', '5305', '5305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530581', '腾冲市', '3', '53', '5305', '5305', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530601', '市辖区', '3', '53', '5306', '5306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530602', '昭阳区', '3', '53', '5306', '5306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530621', '鲁甸县', '3', '53', '5306', '5306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530622', '巧家县', '3', '53', '5306', '5306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530623', '盐津县', '3', '53', '5306', '5306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530624', '大关县', '3', '53', '5306', '5306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530625', '永善县', '3', '53', '5306', '5306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530626', '绥江县', '3', '53', '5306', '5306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530627', '镇雄县', '3', '53', '5306', '5306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530628', '彝良县', '3', '53', '5306', '5306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530629', '威信县', '3', '53', '5306', '5306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530630', '水富县', '3', '53', '5306', '5306', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530701', '市辖区', '3', '53', '5307', '5307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530702', '古城区', '3', '53', '5307', '5307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530721', '玉龙纳西族自治县', '3', '53', '5307', '5307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530722', '永胜县', '3', '53', '5307', '5307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530723', '华坪县', '3', '53', '5307', '5307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530724', '宁蒗彝族自治县', '3', '53', '5307', '5307', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530801', '市辖区', '3', '53', '5308', '5308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530802', '思茅区', '3', '53', '5308', '5308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530821', '宁洱哈尼族彝族自治县', '3', '53', '5308', '5308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530822', '墨江哈尼族自治县', '3', '53', '5308', '5308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530823', '景东彝族自治县', '3', '53', '5308', '5308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530824', '景谷傣族彝族自治县', '3', '53', '5308', '5308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530825', '镇沅彝族哈尼族拉祜族自治县', '3', '53', '5308', '5308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530826', '江城哈尼族彝族自治县', '3', '53', '5308', '5308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530827', '孟连傣族拉祜族佤族自治县', '3', '53', '5308', '5308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530828', '澜沧拉祜族自治县', '3', '53', '5308', '5308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530829', '西盟佤族自治县', '3', '53', '5308', '5308', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530901', '市辖区', '3', '53', '5309', '5309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530902', '临翔区', '3', '53', '5309', '5309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530921', '凤庆县', '3', '53', '5309', '5309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530922', '云县', '3', '53', '5309', '5309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530923', '永德县', '3', '53', '5309', '5309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530924', '镇康县', '3', '53', '5309', '5309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530925', '双江拉祜族佤族布朗族傣族自治县', '3', '53', '5309', '5309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530926', '耿马傣族佤族自治县', '3', '53', '5309', '5309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('530927', '沧源佤族自治县', '3', '53', '5309', '5309', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532301', '楚雄市', '3', '53', '5323', '5323', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532322', '双柏县', '3', '53', '5323', '5323', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532323', '牟定县', '3', '53', '5323', '5323', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532324', '南华县', '3', '53', '5323', '5323', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532325', '姚安县', '3', '53', '5323', '5323', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532326', '大姚县', '3', '53', '5323', '5323', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532327', '永仁县', '3', '53', '5323', '5323', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532328', '元谋县', '3', '53', '5323', '5323', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532329', '武定县', '3', '53', '5323', '5323', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532331', '禄丰县', '3', '53', '5323', '5323', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532501', '个旧市', '3', '53', '5325', '5325', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532502', '开远市', '3', '53', '5325', '5325', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532503', '蒙自市', '3', '53', '5325', '5325', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532504', '弥勒市', '3', '53', '5325', '5325', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532523', '屏边苗族自治县', '3', '53', '5325', '5325', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532524', '建水县', '3', '53', '5325', '5325', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532525', '石屏县', '3', '53', '5325', '5325', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532527', '泸西县', '3', '53', '5325', '5325', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532528', '元阳县', '3', '53', '5325', '5325', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532529', '红河县', '3', '53', '5325', '5325', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532530', '金平苗族瑶族傣族自治县', '3', '53', '5325', '5325', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532531', '绿春县', '3', '53', '5325', '5325', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532532', '河口瑶族自治县', '3', '53', '5325', '5325', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532601', '文山市', '3', '53', '5326', '5326', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532622', '砚山县', '3', '53', '5326', '5326', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532623', '西畴县', '3', '53', '5326', '5326', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532624', '麻栗坡县', '3', '53', '5326', '5326', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532625', '马关县', '3', '53', '5326', '5326', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532626', '丘北县', '3', '53', '5326', '5326', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532627', '广南县', '3', '53', '5326', '5326', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532628', '富宁县', '3', '53', '5326', '5326', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532801', '景洪市', '3', '53', '5328', '5328', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532822', '勐海县', '3', '53', '5328', '5328', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532823', '勐腊县', '3', '53', '5328', '5328', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532901', '大理市', '3', '53', '5329', '5329', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532922', '漾濞彝族自治县', '3', '53', '5329', '5329', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532923', '祥云县', '3', '53', '5329', '5329', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532924', '宾川县', '3', '53', '5329', '5329', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532925', '弥渡县', '3', '53', '5329', '5329', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532926', '南涧彝族自治县', '3', '53', '5329', '5329', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532927', '巍山彝族回族自治县', '3', '53', '5329', '5329', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532928', '永平县', '3', '53', '5329', '5329', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532929', '云龙县', '3', '53', '5329', '5329', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532930', '洱源县', '3', '53', '5329', '5329', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532931', '剑川县', '3', '53', '5329', '5329', '0', null, '', '');
INSERT INTO `my_region` VALUES ('532932', '鹤庆县', '3', '53', '5329', '5329', '0', null, '', '');
INSERT INTO `my_region` VALUES ('533102', '瑞丽市', '3', '53', '5331', '5331', '0', null, '', '');
INSERT INTO `my_region` VALUES ('533103', '芒市', '3', '53', '5331', '5331', '0', null, '', '');
INSERT INTO `my_region` VALUES ('533122', '梁河县', '3', '53', '5331', '5331', '0', null, '', '');
INSERT INTO `my_region` VALUES ('533123', '盈江县', '3', '53', '5331', '5331', '0', null, '', '');
INSERT INTO `my_region` VALUES ('533124', '陇川县', '3', '53', '5331', '5331', '0', null, '', '');
INSERT INTO `my_region` VALUES ('533301', '泸水市', '3', '53', '5333', '5333', '0', null, '', '');
INSERT INTO `my_region` VALUES ('533323', '福贡县', '3', '53', '5333', '5333', '0', null, '', '');
INSERT INTO `my_region` VALUES ('533324', '贡山独龙族怒族自治县', '3', '53', '5333', '5333', '0', null, '', '');
INSERT INTO `my_region` VALUES ('533325', '兰坪白族普米族自治县', '3', '53', '5333', '5333', '0', null, '', '');
INSERT INTO `my_region` VALUES ('533401', '香格里拉市', '3', '53', '5334', '5334', '0', null, '', '');
INSERT INTO `my_region` VALUES ('533422', '德钦县', '3', '53', '5334', '5334', '0', null, '', '');
INSERT INTO `my_region` VALUES ('533423', '维西傈僳族自治县', '3', '53', '5334', '5334', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540101', '市辖区', '3', '54', '5401', '5401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540102', '城关区', '3', '54', '5401', '5401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540103', '堆龙德庆区', '3', '54', '5401', '5401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540121', '林周县', '3', '54', '5401', '5401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540122', '当雄县', '3', '54', '5401', '5401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540123', '尼木县', '3', '54', '5401', '5401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540124', '曲水县', '3', '54', '5401', '5401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540126', '达孜县', '3', '54', '5401', '5401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540127', '墨竹工卡县', '3', '54', '5401', '5401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540202', '桑珠孜区', '3', '54', '5402', '5402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540221', '南木林县', '3', '54', '5402', '5402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540222', '江孜县', '3', '54', '5402', '5402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540223', '定日县', '3', '54', '5402', '5402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540224', '萨迦县', '3', '54', '5402', '5402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540225', '拉孜县', '3', '54', '5402', '5402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540226', '昂仁县', '3', '54', '5402', '5402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540227', '谢通门县', '3', '54', '5402', '5402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540228', '白朗县', '3', '54', '5402', '5402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540229', '仁布县', '3', '54', '5402', '5402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540230', '康马县', '3', '54', '5402', '5402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540231', '定结县', '3', '54', '5402', '5402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540232', '仲巴县', '3', '54', '5402', '5402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540233', '亚东县', '3', '54', '5402', '5402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540234', '吉隆县', '3', '54', '5402', '5402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540235', '聂拉木县', '3', '54', '5402', '5402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540236', '萨嘎县', '3', '54', '5402', '5402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540237', '岗巴县', '3', '54', '5402', '5402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540302', '卡若区', '3', '54', '5403', '5403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540321', '江达县', '3', '54', '5403', '5403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540322', '贡觉县', '3', '54', '5403', '5403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540323', '类乌齐县', '3', '54', '5403', '5403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540324', '丁青县', '3', '54', '5403', '5403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540325', '察雅县', '3', '54', '5403', '5403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540326', '八宿县', '3', '54', '5403', '5403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540327', '左贡县', '3', '54', '5403', '5403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540328', '芒康县', '3', '54', '5403', '5403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540329', '洛隆县', '3', '54', '5403', '5403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540330', '边坝县', '3', '54', '5403', '5403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540402', '巴宜区', '3', '54', '5404', '5404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540421', '工布江达县', '3', '54', '5404', '5404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540422', '米林县', '3', '54', '5404', '5404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540423', '墨脱县', '3', '54', '5404', '5404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540424', '波密县', '3', '54', '5404', '5404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540425', '察隅县', '3', '54', '5404', '5404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540426', '朗县', '3', '54', '5404', '5404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540501', '市辖区', '3', '54', '5405', '5405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540502', '乃东区', '3', '54', '5405', '5405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540521', '扎囊县', '3', '54', '5405', '5405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540522', '贡嘎县', '3', '54', '5405', '5405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540523', '桑日县', '3', '54', '5405', '5405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540524', '琼结县', '3', '54', '5405', '5405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540525', '曲松县', '3', '54', '5405', '5405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540526', '措美县', '3', '54', '5405', '5405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540527', '洛扎县', '3', '54', '5405', '5405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540528', '加查县', '3', '54', '5405', '5405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540529', '隆子县', '3', '54', '5405', '5405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540530', '错那县', '3', '54', '5405', '5405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('540531', '浪卡子县', '3', '54', '5405', '5405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('542421', '那曲县', '3', '54', '5424', '5424', '0', null, '', '');
INSERT INTO `my_region` VALUES ('542422', '嘉黎县', '3', '54', '5424', '5424', '0', null, '', '');
INSERT INTO `my_region` VALUES ('542423', '比如县', '3', '54', '5424', '5424', '0', null, '', '');
INSERT INTO `my_region` VALUES ('542424', '聂荣县', '3', '54', '5424', '5424', '0', null, '', '');
INSERT INTO `my_region` VALUES ('542425', '安多县', '3', '54', '5424', '5424', '0', null, '', '');
INSERT INTO `my_region` VALUES ('542426', '申扎县', '3', '54', '5424', '5424', '0', null, '', '');
INSERT INTO `my_region` VALUES ('542427', '索县', '3', '54', '5424', '5424', '0', null, '', '');
INSERT INTO `my_region` VALUES ('542428', '班戈县', '3', '54', '5424', '5424', '0', null, '', '');
INSERT INTO `my_region` VALUES ('542429', '巴青县', '3', '54', '5424', '5424', '0', null, '', '');
INSERT INTO `my_region` VALUES ('542430', '尼玛县', '3', '54', '5424', '5424', '0', null, '', '');
INSERT INTO `my_region` VALUES ('542431', '双湖县', '3', '54', '5424', '5424', '0', null, '', '');
INSERT INTO `my_region` VALUES ('542521', '普兰县', '3', '54', '5425', '5425', '0', null, '', '');
INSERT INTO `my_region` VALUES ('542522', '札达县', '3', '54', '5425', '5425', '0', null, '', '');
INSERT INTO `my_region` VALUES ('542523', '噶尔县', '3', '54', '5425', '5425', '0', null, '', '');
INSERT INTO `my_region` VALUES ('542524', '日土县', '3', '54', '5425', '5425', '0', null, '', '');
INSERT INTO `my_region` VALUES ('542525', '革吉县', '3', '54', '5425', '5425', '0', null, '', '');
INSERT INTO `my_region` VALUES ('542526', '改则县', '3', '54', '5425', '5425', '0', null, '', '');
INSERT INTO `my_region` VALUES ('542527', '措勤县', '3', '54', '5425', '5425', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610101', '市辖区', '3', '61', '6101', '6101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610102', '新城区', '3', '61', '6101', '6101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610103', '碑林区', '3', '61', '6101', '6101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610104', '莲湖区', '3', '61', '6101', '6101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610111', '灞桥区', '3', '61', '6101', '6101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610112', '未央区', '3', '61', '6101', '6101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610113', '雁塔区', '3', '61', '6101', '6101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610114', '阎良区', '3', '61', '6101', '6101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610115', '临潼区', '3', '61', '6101', '6101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610116', '长安区', '3', '61', '6101', '6101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610117', '高陵区', '3', '61', '6101', '6101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610122', '蓝田县', '3', '61', '6101', '6101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610124', '周至县', '3', '61', '6101', '6101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610125', '户县', '3', '61', '6101', '6101', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610201', '市辖区', '3', '61', '6102', '6102', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610202', '王益区', '3', '61', '6102', '6102', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610203', '印台区', '3', '61', '6102', '6102', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610204', '耀州区', '3', '61', '6102', '6102', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610222', '宜君县', '3', '61', '6102', '6102', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610301', '市辖区', '3', '61', '6103', '6103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610302', '渭滨区', '3', '61', '6103', '6103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610303', '金台区', '3', '61', '6103', '6103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610304', '陈仓区', '3', '61', '6103', '6103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610322', '凤翔县', '3', '61', '6103', '6103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610323', '岐山县', '3', '61', '6103', '6103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610324', '扶风县', '3', '61', '6103', '6103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610326', '眉县', '3', '61', '6103', '6103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610327', '陇县', '3', '61', '6103', '6103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610328', '千阳县', '3', '61', '6103', '6103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610329', '麟游县', '3', '61', '6103', '6103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610330', '凤县', '3', '61', '6103', '6103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610331', '太白县', '3', '61', '6103', '6103', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610401', '市辖区', '3', '61', '6104', '6104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610402', '秦都区', '3', '61', '6104', '6104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610403', '杨陵区', '3', '61', '6104', '6104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610404', '渭城区', '3', '61', '6104', '6104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610422', '三原县', '3', '61', '6104', '6104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610423', '泾阳县', '3', '61', '6104', '6104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610424', '乾县', '3', '61', '6104', '6104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610425', '礼泉县', '3', '61', '6104', '6104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610426', '永寿县', '3', '61', '6104', '6104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610427', '彬县', '3', '61', '6104', '6104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610428', '长武县', '3', '61', '6104', '6104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610429', '旬邑县', '3', '61', '6104', '6104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610430', '淳化县', '3', '61', '6104', '6104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610431', '武功县', '3', '61', '6104', '6104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610481', '兴平市', '3', '61', '6104', '6104', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610501', '市辖区', '3', '61', '6105', '6105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610502', '临渭区', '3', '61', '6105', '6105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610503', '华州区', '3', '61', '6105', '6105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610522', '潼关县', '3', '61', '6105', '6105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610523', '大荔县', '3', '61', '6105', '6105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610524', '合阳县', '3', '61', '6105', '6105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610525', '澄城县', '3', '61', '6105', '6105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610526', '蒲城县', '3', '61', '6105', '6105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610527', '白水县', '3', '61', '6105', '6105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610528', '富平县', '3', '61', '6105', '6105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610581', '韩城市', '3', '61', '6105', '6105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610582', '华阴市', '3', '61', '6105', '6105', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610601', '市辖区', '3', '61', '6106', '6106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610602', '宝塔区', '3', '61', '6106', '6106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610603', '安塞区', '3', '61', '6106', '6106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610621', '延长县', '3', '61', '6106', '6106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610622', '延川县', '3', '61', '6106', '6106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610623', '子长县', '3', '61', '6106', '6106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610625', '志丹县', '3', '61', '6106', '6106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610626', '吴起县', '3', '61', '6106', '6106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610627', '甘泉县', '3', '61', '6106', '6106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610628', '富县', '3', '61', '6106', '6106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610629', '洛川县', '3', '61', '6106', '6106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610630', '宜川县', '3', '61', '6106', '6106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610631', '黄龙县', '3', '61', '6106', '6106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610632', '黄陵县', '3', '61', '6106', '6106', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610701', '市辖区', '3', '61', '6107', '6107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610702', '汉台区', '3', '61', '6107', '6107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610721', '南郑县', '3', '61', '6107', '6107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610722', '城固县', '3', '61', '6107', '6107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610723', '洋县', '3', '61', '6107', '6107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610724', '西乡县', '3', '61', '6107', '6107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610725', '勉县', '3', '61', '6107', '6107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610726', '宁强县', '3', '61', '6107', '6107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610727', '略阳县', '3', '61', '6107', '6107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610728', '镇巴县', '3', '61', '6107', '6107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610729', '留坝县', '3', '61', '6107', '6107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610730', '佛坪县', '3', '61', '6107', '6107', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610801', '市辖区', '3', '61', '6108', '6108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610802', '榆阳区', '3', '61', '6108', '6108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610803', '横山区', '3', '61', '6108', '6108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610821', '神木县', '3', '61', '6108', '6108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610822', '府谷县', '3', '61', '6108', '6108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610824', '靖边县', '3', '61', '6108', '6108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610825', '定边县', '3', '61', '6108', '6108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610826', '绥德县', '3', '61', '6108', '6108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610827', '米脂县', '3', '61', '6108', '6108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610828', '佳县', '3', '61', '6108', '6108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610829', '吴堡县', '3', '61', '6108', '6108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610830', '清涧县', '3', '61', '6108', '6108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610831', '子洲县', '3', '61', '6108', '6108', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610901', '市辖区', '3', '61', '6109', '6109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610902', '汉滨区', '3', '61', '6109', '6109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610921', '汉阴县', '3', '61', '6109', '6109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610922', '石泉县', '3', '61', '6109', '6109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610923', '宁陕县', '3', '61', '6109', '6109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610924', '紫阳县', '3', '61', '6109', '6109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610925', '岚皋县', '3', '61', '6109', '6109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610926', '平利县', '3', '61', '6109', '6109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610927', '镇坪县', '3', '61', '6109', '6109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610928', '旬阳县', '3', '61', '6109', '6109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('610929', '白河县', '3', '61', '6109', '6109', '0', null, '', '');
INSERT INTO `my_region` VALUES ('611001', '市辖区', '3', '61', '6110', '6110', '0', null, '', '');
INSERT INTO `my_region` VALUES ('611002', '商州区', '3', '61', '6110', '6110', '0', null, '', '');
INSERT INTO `my_region` VALUES ('611021', '洛南县', '3', '61', '6110', '6110', '0', null, '', '');
INSERT INTO `my_region` VALUES ('611022', '丹凤县', '3', '61', '6110', '6110', '0', null, '', '');
INSERT INTO `my_region` VALUES ('611023', '商南县', '3', '61', '6110', '6110', '0', null, '', '');
INSERT INTO `my_region` VALUES ('611024', '山阳县', '3', '61', '6110', '6110', '0', null, '', '');
INSERT INTO `my_region` VALUES ('611025', '镇安县', '3', '61', '6110', '6110', '0', null, '', '');
INSERT INTO `my_region` VALUES ('611026', '柞水县', '3', '61', '6110', '6110', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620101', '市辖区', '3', '62', '6201', '6201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620102', '城关区', '3', '62', '6201', '6201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620103', '七里河区', '3', '62', '6201', '6201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620104', '西固区', '3', '62', '6201', '6201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620105', '安宁区', '3', '62', '6201', '6201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620111', '红古区', '3', '62', '6201', '6201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620121', '永登县', '3', '62', '6201', '6201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620122', '皋兰县', '3', '62', '6201', '6201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620123', '榆中县', '3', '62', '6201', '6201', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620201', '市辖区', '3', '62', '6202', '6202', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620301', '市辖区', '3', '62', '6203', '6203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620302', '金川区', '3', '62', '6203', '6203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620321', '永昌县', '3', '62', '6203', '6203', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620401', '市辖区', '3', '62', '6204', '6204', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620402', '白银区', '3', '62', '6204', '6204', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620403', '平川区', '3', '62', '6204', '6204', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620421', '靖远县', '3', '62', '6204', '6204', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620422', '会宁县', '3', '62', '6204', '6204', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620423', '景泰县', '3', '62', '6204', '6204', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620501', '市辖区', '3', '62', '6205', '6205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620502', '秦州区', '3', '62', '6205', '6205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620503', '麦积区', '3', '62', '6205', '6205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620521', '清水县', '3', '62', '6205', '6205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620522', '秦安县', '3', '62', '6205', '6205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620523', '甘谷县', '3', '62', '6205', '6205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620524', '武山县', '3', '62', '6205', '6205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620525', '张家川回族自治县', '3', '62', '6205', '6205', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620601', '市辖区', '3', '62', '6206', '6206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620602', '凉州区', '3', '62', '6206', '6206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620621', '民勤县', '3', '62', '6206', '6206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620622', '古浪县', '3', '62', '6206', '6206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620623', '天祝藏族自治县', '3', '62', '6206', '6206', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620701', '市辖区', '3', '62', '6207', '6207', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620702', '甘州区', '3', '62', '6207', '6207', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620721', '肃南裕固族自治县', '3', '62', '6207', '6207', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620722', '民乐县', '3', '62', '6207', '6207', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620723', '临泽县', '3', '62', '6207', '6207', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620724', '高台县', '3', '62', '6207', '6207', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620725', '山丹县', '3', '62', '6207', '6207', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620801', '市辖区', '3', '62', '6208', '6208', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620802', '崆峒区', '3', '62', '6208', '6208', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620821', '泾川县', '3', '62', '6208', '6208', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620822', '灵台县', '3', '62', '6208', '6208', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620823', '崇信县', '3', '62', '6208', '6208', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620824', '华亭县', '3', '62', '6208', '6208', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620825', '庄浪县', '3', '62', '6208', '6208', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620826', '静宁县', '3', '62', '6208', '6208', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620901', '市辖区', '3', '62', '6209', '6209', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620902', '肃州区', '3', '62', '6209', '6209', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620921', '金塔县', '3', '62', '6209', '6209', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620922', '瓜州县', '3', '62', '6209', '6209', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620923', '肃北蒙古族自治县', '3', '62', '6209', '6209', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620924', '阿克塞哈萨克族自治县', '3', '62', '6209', '6209', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620981', '玉门市', '3', '62', '6209', '6209', '0', null, '', '');
INSERT INTO `my_region` VALUES ('620982', '敦煌市', '3', '62', '6209', '6209', '0', null, '', '');
INSERT INTO `my_region` VALUES ('621001', '市辖区', '3', '62', '6210', '6210', '0', null, '', '');
INSERT INTO `my_region` VALUES ('621002', '西峰区', '3', '62', '6210', '6210', '0', null, '', '');
INSERT INTO `my_region` VALUES ('621021', '庆城县', '3', '62', '6210', '6210', '0', null, '', '');
INSERT INTO `my_region` VALUES ('621022', '环县', '3', '62', '6210', '6210', '0', null, '', '');
INSERT INTO `my_region` VALUES ('621023', '华池县', '3', '62', '6210', '6210', '0', null, '', '');
INSERT INTO `my_region` VALUES ('621024', '合水县', '3', '62', '6210', '6210', '0', null, '', '');
INSERT INTO `my_region` VALUES ('621025', '正宁县', '3', '62', '6210', '6210', '0', null, '', '');
INSERT INTO `my_region` VALUES ('621026', '宁县', '3', '62', '6210', '6210', '0', null, '', '');
INSERT INTO `my_region` VALUES ('621027', '镇原县', '3', '62', '6210', '6210', '0', null, '', '');
INSERT INTO `my_region` VALUES ('621101', '市辖区', '3', '62', '6211', '6211', '0', null, '', '');
INSERT INTO `my_region` VALUES ('621102', '安定区', '3', '62', '6211', '6211', '0', null, '', '');
INSERT INTO `my_region` VALUES ('621121', '通渭县', '3', '62', '6211', '6211', '0', null, '', '');
INSERT INTO `my_region` VALUES ('621122', '陇西县', '3', '62', '6211', '6211', '0', null, '', '');
INSERT INTO `my_region` VALUES ('621123', '渭源县', '3', '62', '6211', '6211', '0', null, '', '');
INSERT INTO `my_region` VALUES ('621124', '临洮县', '3', '62', '6211', '6211', '0', null, '', '');
INSERT INTO `my_region` VALUES ('621125', '漳县', '3', '62', '6211', '6211', '0', null, '', '');
INSERT INTO `my_region` VALUES ('621126', '岷县', '3', '62', '6211', '6211', '0', null, '', '');
INSERT INTO `my_region` VALUES ('621201', '市辖区', '3', '62', '6212', '6212', '0', null, '', '');
INSERT INTO `my_region` VALUES ('621202', '武都区', '3', '62', '6212', '6212', '0', null, '', '');
INSERT INTO `my_region` VALUES ('621221', '成县', '3', '62', '6212', '6212', '0', null, '', '');
INSERT INTO `my_region` VALUES ('621222', '文县', '3', '62', '6212', '6212', '0', null, '', '');
INSERT INTO `my_region` VALUES ('621223', '宕昌县', '3', '62', '6212', '6212', '0', null, '', '');
INSERT INTO `my_region` VALUES ('621224', '康县', '3', '62', '6212', '6212', '0', null, '', '');
INSERT INTO `my_region` VALUES ('621225', '西和县', '3', '62', '6212', '6212', '0', null, '', '');
INSERT INTO `my_region` VALUES ('621226', '礼县', '3', '62', '6212', '6212', '0', null, '', '');
INSERT INTO `my_region` VALUES ('621227', '徽县', '3', '62', '6212', '6212', '0', null, '', '');
INSERT INTO `my_region` VALUES ('621228', '两当县', '3', '62', '6212', '6212', '0', null, '', '');
INSERT INTO `my_region` VALUES ('622901', '临夏市', '3', '62', '6229', '6229', '0', null, '', '');
INSERT INTO `my_region` VALUES ('622921', '临夏县', '3', '62', '6229', '6229', '0', null, '', '');
INSERT INTO `my_region` VALUES ('622922', '康乐县', '3', '62', '6229', '6229', '0', null, '', '');
INSERT INTO `my_region` VALUES ('622923', '永靖县', '3', '62', '6229', '6229', '0', null, '', '');
INSERT INTO `my_region` VALUES ('622924', '广河县', '3', '62', '6229', '6229', '0', null, '', '');
INSERT INTO `my_region` VALUES ('622925', '和政县', '3', '62', '6229', '6229', '0', null, '', '');
INSERT INTO `my_region` VALUES ('622926', '东乡族自治县', '3', '62', '6229', '6229', '0', null, '', '');
INSERT INTO `my_region` VALUES ('622927', '积石山保安族东乡族撒拉族自治县', '3', '62', '6229', '6229', '0', null, '', '');
INSERT INTO `my_region` VALUES ('623001', '合作市', '3', '62', '6230', '6230', '0', null, '', '');
INSERT INTO `my_region` VALUES ('623021', '临潭县', '3', '62', '6230', '6230', '0', null, '', '');
INSERT INTO `my_region` VALUES ('623022', '卓尼县', '3', '62', '6230', '6230', '0', null, '', '');
INSERT INTO `my_region` VALUES ('623023', '舟曲县', '3', '62', '6230', '6230', '0', null, '', '');
INSERT INTO `my_region` VALUES ('623024', '迭部县', '3', '62', '6230', '6230', '0', null, '', '');
INSERT INTO `my_region` VALUES ('623025', '玛曲县', '3', '62', '6230', '6230', '0', null, '', '');
INSERT INTO `my_region` VALUES ('623026', '碌曲县', '3', '62', '6230', '6230', '0', null, '', '');
INSERT INTO `my_region` VALUES ('623027', '夏河县', '3', '62', '6230', '6230', '0', null, '', '');
INSERT INTO `my_region` VALUES ('630101', '市辖区', '3', '63', '6301', '6301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('630102', '城东区', '3', '63', '6301', '6301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('630103', '城中区', '3', '63', '6301', '6301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('630104', '城西区', '3', '63', '6301', '6301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('630105', '城北区', '3', '63', '6301', '6301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('630121', '大通回族土族自治县', '3', '63', '6301', '6301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('630122', '湟中县', '3', '63', '6301', '6301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('630123', '湟源县', '3', '63', '6301', '6301', '0', null, '', '');
INSERT INTO `my_region` VALUES ('630202', '乐都区', '3', '63', '6302', '6302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('630203', '平安区', '3', '63', '6302', '6302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('630222', '民和回族土族自治县', '3', '63', '6302', '6302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('630223', '互助土族自治县', '3', '63', '6302', '6302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('630224', '化隆回族自治县', '3', '63', '6302', '6302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('630225', '循化撒拉族自治县', '3', '63', '6302', '6302', '0', null, '', '');
INSERT INTO `my_region` VALUES ('632221', '门源回族自治县', '3', '63', '6322', '6322', '0', null, '', '');
INSERT INTO `my_region` VALUES ('632222', '祁连县', '3', '63', '6322', '6322', '0', null, '', '');
INSERT INTO `my_region` VALUES ('632223', '海晏县', '3', '63', '6322', '6322', '0', null, '', '');
INSERT INTO `my_region` VALUES ('632224', '刚察县', '3', '63', '6322', '6322', '0', null, '', '');
INSERT INTO `my_region` VALUES ('632321', '同仁县', '3', '63', '6323', '6323', '0', null, '', '');
INSERT INTO `my_region` VALUES ('632322', '尖扎县', '3', '63', '6323', '6323', '0', null, '', '');
INSERT INTO `my_region` VALUES ('632323', '泽库县', '3', '63', '6323', '6323', '0', null, '', '');
INSERT INTO `my_region` VALUES ('632324', '河南蒙古族自治县', '3', '63', '6323', '6323', '0', null, '', '');
INSERT INTO `my_region` VALUES ('632521', '共和县', '3', '63', '6325', '6325', '0', null, '', '');
INSERT INTO `my_region` VALUES ('632522', '同德县', '3', '63', '6325', '6325', '0', null, '', '');
INSERT INTO `my_region` VALUES ('632523', '贵德县', '3', '63', '6325', '6325', '0', null, '', '');
INSERT INTO `my_region` VALUES ('632524', '兴海县', '3', '63', '6325', '6325', '0', null, '', '');
INSERT INTO `my_region` VALUES ('632525', '贵南县', '3', '63', '6325', '6325', '0', null, '', '');
INSERT INTO `my_region` VALUES ('632621', '玛沁县', '3', '63', '6326', '6326', '0', null, '', '');
INSERT INTO `my_region` VALUES ('632622', '班玛县', '3', '63', '6326', '6326', '0', null, '', '');
INSERT INTO `my_region` VALUES ('632623', '甘德县', '3', '63', '6326', '6326', '0', null, '', '');
INSERT INTO `my_region` VALUES ('632624', '达日县', '3', '63', '6326', '6326', '0', null, '', '');
INSERT INTO `my_region` VALUES ('632625', '久治县', '3', '63', '6326', '6326', '0', null, '', '');
INSERT INTO `my_region` VALUES ('632626', '玛多县', '3', '63', '6326', '6326', '0', null, '', '');
INSERT INTO `my_region` VALUES ('632701', '玉树市', '3', '63', '6327', '6327', '0', null, '', '');
INSERT INTO `my_region` VALUES ('632722', '杂多县', '3', '63', '6327', '6327', '0', null, '', '');
INSERT INTO `my_region` VALUES ('632723', '称多县', '3', '63', '6327', '6327', '0', null, '', '');
INSERT INTO `my_region` VALUES ('632724', '治多县', '3', '63', '6327', '6327', '0', null, '', '');
INSERT INTO `my_region` VALUES ('632725', '囊谦县', '3', '63', '6327', '6327', '0', null, '', '');
INSERT INTO `my_region` VALUES ('632726', '曲麻莱县', '3', '63', '6327', '6327', '0', null, '', '');
INSERT INTO `my_region` VALUES ('632801', '格尔木市', '3', '63', '6328', '6328', '0', null, '', '');
INSERT INTO `my_region` VALUES ('632802', '德令哈市', '3', '63', '6328', '6328', '0', null, '', '');
INSERT INTO `my_region` VALUES ('632821', '乌兰县', '3', '63', '6328', '6328', '0', null, '', '');
INSERT INTO `my_region` VALUES ('632822', '都兰县', '3', '63', '6328', '6328', '0', null, '', '');
INSERT INTO `my_region` VALUES ('632823', '天峻县', '3', '63', '6328', '6328', '0', null, '', '');
INSERT INTO `my_region` VALUES ('640101', '市辖区', '3', '64', '6401', '6401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('640104', '兴庆区', '3', '64', '6401', '6401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('640105', '西夏区', '3', '64', '6401', '6401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('640106', '金凤区', '3', '64', '6401', '6401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('640121', '永宁县', '3', '64', '6401', '6401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('640122', '贺兰县', '3', '64', '6401', '6401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('640181', '灵武市', '3', '64', '6401', '6401', '0', null, '', '');
INSERT INTO `my_region` VALUES ('640201', '市辖区', '3', '64', '6402', '6402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('640202', '大武口区', '3', '64', '6402', '6402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('640205', '惠农区', '3', '64', '6402', '6402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('640221', '平罗县', '3', '64', '6402', '6402', '0', null, '', '');
INSERT INTO `my_region` VALUES ('640301', '市辖区', '3', '64', '6403', '6403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('640302', '利通区', '3', '64', '6403', '6403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('640303', '红寺堡区', '3', '64', '6403', '6403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('640323', '盐池县', '3', '64', '6403', '6403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('640324', '同心县', '3', '64', '6403', '6403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('640381', '青铜峡市', '3', '64', '6403', '6403', '0', null, '', '');
INSERT INTO `my_region` VALUES ('640401', '市辖区', '3', '64', '6404', '6404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('640402', '原州区', '3', '64', '6404', '6404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('640422', '西吉县', '3', '64', '6404', '6404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('640423', '隆德县', '3', '64', '6404', '6404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('640424', '泾源县', '3', '64', '6404', '6404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('640425', '彭阳县', '3', '64', '6404', '6404', '0', null, '', '');
INSERT INTO `my_region` VALUES ('640501', '市辖区', '3', '64', '6405', '6405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('640502', '沙坡头区', '3', '64', '6405', '6405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('640521', '中宁县', '3', '64', '6405', '6405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('640522', '海原县', '3', '64', '6405', '6405', '0', null, '', '');
INSERT INTO `my_region` VALUES ('650101', '市辖区', '3', '65', '6501', '6501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('650102', '天山区', '3', '65', '6501', '6501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('650103', '沙依巴克区', '3', '65', '6501', '6501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('650104', '新市区', '3', '65', '6501', '6501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('650105', '水磨沟区', '3', '65', '6501', '6501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('650106', '头屯河区', '3', '65', '6501', '6501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('650107', '达坂城区', '3', '65', '6501', '6501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('650109', '米东区', '3', '65', '6501', '6501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('650121', '乌鲁木齐县', '3', '65', '6501', '6501', '0', null, '', '');
INSERT INTO `my_region` VALUES ('650201', '市辖区', '3', '65', '6502', '6502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('650202', '独山子区', '3', '65', '6502', '6502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('650203', '克拉玛依区', '3', '65', '6502', '6502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('650204', '白碱滩区', '3', '65', '6502', '6502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('650205', '乌尔禾区', '3', '65', '6502', '6502', '0', null, '', '');
INSERT INTO `my_region` VALUES ('650402', '高昌区', '3', '65', '6504', '6504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('650421', '鄯善县', '3', '65', '6504', '6504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('650422', '托克逊县', '3', '65', '6504', '6504', '0', null, '', '');
INSERT INTO `my_region` VALUES ('650502', '伊州区', '3', '65', '6505', '6505', '0', null, '', '');
INSERT INTO `my_region` VALUES ('650521', '巴里坤哈萨克自治县', '3', '65', '6505', '6505', '0', null, '', '');
INSERT INTO `my_region` VALUES ('650522', '伊吾县', '3', '65', '6505', '6505', '0', null, '', '');
INSERT INTO `my_region` VALUES ('652301', '昌吉市', '3', '65', '6523', '6523', '0', null, '', '');
INSERT INTO `my_region` VALUES ('652302', '阜康市', '3', '65', '6523', '6523', '0', null, '', '');
INSERT INTO `my_region` VALUES ('652323', '呼图壁县', '3', '65', '6523', '6523', '0', null, '', '');
INSERT INTO `my_region` VALUES ('652324', '玛纳斯县', '3', '65', '6523', '6523', '0', null, '', '');
INSERT INTO `my_region` VALUES ('652325', '奇台县', '3', '65', '6523', '6523', '0', null, '', '');
INSERT INTO `my_region` VALUES ('652327', '吉木萨尔县', '3', '65', '6523', '6523', '0', null, '', '');
INSERT INTO `my_region` VALUES ('652328', '木垒哈萨克自治县', '3', '65', '6523', '6523', '0', null, '', '');
INSERT INTO `my_region` VALUES ('652701', '博乐市', '3', '65', '6527', '6527', '0', null, '', '');
INSERT INTO `my_region` VALUES ('652702', '阿拉山口市', '3', '65', '6527', '6527', '0', null, '', '');
INSERT INTO `my_region` VALUES ('652722', '精河县', '3', '65', '6527', '6527', '0', null, '', '');
INSERT INTO `my_region` VALUES ('652723', '温泉县', '3', '65', '6527', '6527', '0', null, '', '');
INSERT INTO `my_region` VALUES ('652801', '库尔勒市', '3', '65', '6528', '6528', '0', null, '', '');
INSERT INTO `my_region` VALUES ('652822', '轮台县', '3', '65', '6528', '6528', '0', null, '', '');
INSERT INTO `my_region` VALUES ('652823', '尉犁县', '3', '65', '6528', '6528', '0', null, '', '');
INSERT INTO `my_region` VALUES ('652824', '若羌县', '3', '65', '6528', '6528', '0', null, '', '');
INSERT INTO `my_region` VALUES ('652825', '且末县', '3', '65', '6528', '6528', '0', null, '', '');
INSERT INTO `my_region` VALUES ('652826', '焉耆回族自治县', '3', '65', '6528', '6528', '0', null, '', '');
INSERT INTO `my_region` VALUES ('652827', '和静县', '3', '65', '6528', '6528', '0', null, '', '');
INSERT INTO `my_region` VALUES ('652828', '和硕县', '3', '65', '6528', '6528', '0', null, '', '');
INSERT INTO `my_region` VALUES ('652829', '博湖县', '3', '65', '6528', '6528', '0', null, '', '');
INSERT INTO `my_region` VALUES ('652901', '阿克苏市', '3', '65', '6529', '6529', '0', null, '', '');
INSERT INTO `my_region` VALUES ('652922', '温宿县', '3', '65', '6529', '6529', '0', null, '', '');
INSERT INTO `my_region` VALUES ('652923', '库车县', '3', '65', '6529', '6529', '0', null, '', '');
INSERT INTO `my_region` VALUES ('652924', '沙雅县', '3', '65', '6529', '6529', '0', null, '', '');
INSERT INTO `my_region` VALUES ('652925', '新和县', '3', '65', '6529', '6529', '0', null, '', '');
INSERT INTO `my_region` VALUES ('652926', '拜城县', '3', '65', '6529', '6529', '0', null, '', '');
INSERT INTO `my_region` VALUES ('652927', '乌什县', '3', '65', '6529', '6529', '0', null, '', '');
INSERT INTO `my_region` VALUES ('652928', '阿瓦提县', '3', '65', '6529', '6529', '0', null, '', '');
INSERT INTO `my_region` VALUES ('652929', '柯坪县', '3', '65', '6529', '6529', '0', null, '', '');
INSERT INTO `my_region` VALUES ('653001', '阿图什市', '3', '65', '6530', '6530', '0', null, '', '');
INSERT INTO `my_region` VALUES ('653022', '阿克陶县', '3', '65', '6530', '6530', '0', null, '', '');
INSERT INTO `my_region` VALUES ('653023', '阿合奇县', '3', '65', '6530', '6530', '0', null, '', '');
INSERT INTO `my_region` VALUES ('653024', '乌恰县', '3', '65', '6530', '6530', '0', null, '', '');
INSERT INTO `my_region` VALUES ('653101', '喀什市', '3', '65', '6531', '6531', '0', null, '', '');
INSERT INTO `my_region` VALUES ('653121', '疏附县', '3', '65', '6531', '6531', '0', null, '', '');
INSERT INTO `my_region` VALUES ('653122', '疏勒县', '3', '65', '6531', '6531', '0', null, '', '');
INSERT INTO `my_region` VALUES ('653123', '英吉沙县', '3', '65', '6531', '6531', '0', null, '', '');
INSERT INTO `my_region` VALUES ('653124', '泽普县', '3', '65', '6531', '6531', '0', null, '', '');
INSERT INTO `my_region` VALUES ('653125', '莎车县', '3', '65', '6531', '6531', '0', null, '', '');
INSERT INTO `my_region` VALUES ('653126', '叶城县', '3', '65', '6531', '6531', '0', null, '', '');
INSERT INTO `my_region` VALUES ('653127', '麦盖提县', '3', '65', '6531', '6531', '0', null, '', '');
INSERT INTO `my_region` VALUES ('653128', '岳普湖县', '3', '65', '6531', '6531', '0', null, '', '');
INSERT INTO `my_region` VALUES ('653129', '伽师县', '3', '65', '6531', '6531', '0', null, '', '');
INSERT INTO `my_region` VALUES ('653130', '巴楚县', '3', '65', '6531', '6531', '0', null, '', '');
INSERT INTO `my_region` VALUES ('653131', '塔什库尔干塔吉克自治县', '3', '65', '6531', '6531', '0', null, '', '');
INSERT INTO `my_region` VALUES ('653201', '和田市', '3', '65', '6532', '6532', '0', null, '', '');
INSERT INTO `my_region` VALUES ('653221', '和田县', '3', '65', '6532', '6532', '0', null, '', '');
INSERT INTO `my_region` VALUES ('653222', '墨玉县', '3', '65', '6532', '6532', '0', null, '', '');
INSERT INTO `my_region` VALUES ('653223', '皮山县', '3', '65', '6532', '6532', '0', null, '', '');
INSERT INTO `my_region` VALUES ('653224', '洛浦县', '3', '65', '6532', '6532', '0', null, '', '');
INSERT INTO `my_region` VALUES ('653225', '策勒县', '3', '65', '6532', '6532', '0', null, '', '');
INSERT INTO `my_region` VALUES ('653226', '于田县', '3', '65', '6532', '6532', '0', null, '', '');
INSERT INTO `my_region` VALUES ('653227', '民丰县', '3', '65', '6532', '6532', '0', null, '', '');
INSERT INTO `my_region` VALUES ('654002', '伊宁市', '3', '65', '6540', '6540', '0', null, '', '');
INSERT INTO `my_region` VALUES ('654003', '奎屯市', '3', '65', '6540', '6540', '0', null, '', '');
INSERT INTO `my_region` VALUES ('654004', '霍尔果斯市', '3', '65', '6540', '6540', '0', null, '', '');
INSERT INTO `my_region` VALUES ('654021', '伊宁县', '3', '65', '6540', '6540', '0', null, '', '');
INSERT INTO `my_region` VALUES ('654022', '察布查尔锡伯自治县', '3', '65', '6540', '6540', '0', null, '', '');
INSERT INTO `my_region` VALUES ('654023', '霍城县', '3', '65', '6540', '6540', '0', null, '', '');
INSERT INTO `my_region` VALUES ('654024', '巩留县', '3', '65', '6540', '6540', '0', null, '', '');
INSERT INTO `my_region` VALUES ('654025', '新源县', '3', '65', '6540', '6540', '0', null, '', '');
INSERT INTO `my_region` VALUES ('654026', '昭苏县', '3', '65', '6540', '6540', '0', null, '', '');
INSERT INTO `my_region` VALUES ('654027', '特克斯县', '3', '65', '6540', '6540', '0', null, '', '');
INSERT INTO `my_region` VALUES ('654028', '尼勒克县', '3', '65', '6540', '6540', '0', null, '', '');
INSERT INTO `my_region` VALUES ('654201', '塔城市', '3', '65', '6542', '6542', '0', null, '', '');
INSERT INTO `my_region` VALUES ('654202', '乌苏市', '3', '65', '6542', '6542', '0', null, '', '');
INSERT INTO `my_region` VALUES ('654221', '额敏县', '3', '65', '6542', '6542', '0', null, '', '');
INSERT INTO `my_region` VALUES ('654223', '沙湾县', '3', '65', '6542', '6542', '0', null, '', '');
INSERT INTO `my_region` VALUES ('654224', '托里县', '3', '65', '6542', '6542', '0', null, '', '');
INSERT INTO `my_region` VALUES ('654225', '裕民县', '3', '65', '6542', '6542', '0', null, '', '');
INSERT INTO `my_region` VALUES ('654226', '和布克赛尔蒙古自治县', '3', '65', '6542', '6542', '0', null, '', '');
INSERT INTO `my_region` VALUES ('654301', '阿勒泰市', '3', '65', '6543', '6543', '0', null, '', '');
INSERT INTO `my_region` VALUES ('654321', '布尔津县', '3', '65', '6543', '6543', '0', null, '', '');
INSERT INTO `my_region` VALUES ('654322', '富蕴县', '3', '65', '6543', '6543', '0', null, '', '');
INSERT INTO `my_region` VALUES ('654323', '福海县', '3', '65', '6543', '6543', '0', null, '', '');
INSERT INTO `my_region` VALUES ('654324', '哈巴河县', '3', '65', '6543', '6543', '0', null, '', '');
INSERT INTO `my_region` VALUES ('654325', '青河县', '3', '65', '6543', '6543', '0', null, '', '');
INSERT INTO `my_region` VALUES ('654326', '吉木乃县', '3', '65', '6543', '6543', '0', null, '', '');
INSERT INTO `my_region` VALUES ('659001', '石河子市', '3', '65', '6590', '6590', '0', '358', '', '');
INSERT INTO `my_region` VALUES ('659002', '阿拉尔市', '3', '65', '6590', '6590', '0', null, '', '');
INSERT INTO `my_region` VALUES ('659003', '图木舒克市', '3', '65', '6590', '6590', '0', null, '', '');
INSERT INTO `my_region` VALUES ('659004', '五家渠市', '3', '65', '6590', '6590', '0', null, '', '');
INSERT INTO `my_region` VALUES ('659006', '铁门关市', '3', '65', '6590', '6590', '0', null, '', '');

-- ----------------------------
-- Table structure for my_setting
-- ----------------------------
DROP TABLE IF EXISTS `my_setting`;
CREATE TABLE `my_setting` (
  `name` varchar(20) DEFAULT NULL COMMENT '名称',
  `key` varchar(30) NOT NULL COMMENT '键',
  `value` varchar(255) DEFAULT NULL COMMENT '值',
  `tip` varchar(255) DEFAULT NULL COMMENT '提示符',
  `user_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统设置表';

-- ----------------------------
-- Records of my_setting
-- ----------------------------
INSERT INTO `my_setting` VALUES ('是否使用会员模式', 'vip_module', '1', '1使用 0不使用', '10', '2019-03-04 15:25:01', '2019-04-24 16:43:20');

-- ----------------------------
-- Table structure for my_sys_file
-- ----------------------------
DROP TABLE IF EXISTS `my_sys_file`;
CREATE TABLE `my_sys_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(512) DEFAULT NULL COMMENT '文件名称',
  `save_name` varchar(512) DEFAULT NULL COMMENT '保存名称',
  `save_path` varchar(512) DEFAULT NULL,
  `exts` varchar(50) DEFAULT NULL COMMENT '文件类型',
  `size` char(20) DEFAULT '' COMMENT '大小',
  `user_id` int(11) DEFAULT '0' COMMENT '上传用户ID',
  `create_time` datetime DEFAULT NULL COMMENT '上传时间',
  `is_delete` int(2) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `file_isdelete` (`is_delete`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2683 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='上传文件记录表';

-- ----------------------------
-- Records of my_sys_file
-- ----------------------------
INSERT INTO `my_sys_file` VALUES ('2484', 'banner.jpg', '-1535004520-93507.jpg', '/files/default/-1535004520-93507.jpg', 'jpg', '219916', '0', '2018-08-23 14:08:40', '0');
INSERT INTO `my_sys_file` VALUES ('2485', '2-1531387039-46763 (1).jpg', '-1535004602-36425.jpg', '/files/default/-1535004602-36425.jpg', 'jpg', '1093909', null, '2018-08-23 14:10:02', '0');
INSERT INTO `my_sys_file` VALUES ('2486', '2-1531387039-46763 (1).jpg', '-1535004784-16103.jpg', '/files/default/-1535004784-16103.jpg', 'jpg', '1093909', null, '2018-08-23 14:13:04', '0');
INSERT INTO `my_sys_file` VALUES ('2487', '2-1531387039-46763 (1).jpg', '-1535005026-34393.jpg', '/files/default/-1535005026-34393.jpg', 'jpg', '1093909', null, '2018-08-23 14:17:06', '0');
INSERT INTO `my_sys_file` VALUES ('2488', '2-1531387039-46763 (1).jpg', '-1535005105-69353.jpg', '/files/default/-1535005105-69353.jpg', 'jpg', '1093909', null, '2018-08-23 14:18:25', '0');
INSERT INTO `my_sys_file` VALUES ('2489', 'banner.jpg', '-1535005108-8789.jpg', '/files/default/-1535005108-8789.jpg', 'jpg', '219916', null, '2018-08-23 14:18:28', '0');
INSERT INTO `my_sys_file` VALUES ('2490', '2-1531387039-46763 (1).jpg', '-1535005199-62304.jpg', '/files/default/-1535005199-62304.jpg', 'jpg', '1093909', null, '2018-08-23 14:19:59', '0');
INSERT INTO `my_sys_file` VALUES ('2491', '2-1531387039-46763.jpg', '-1535005529-81965.jpg', '/files/default/-1535005529-81965.jpg', 'jpg', '1093909', null, '2018-08-23 14:25:29', '0');
INSERT INTO `my_sys_file` VALUES ('2492', 'banner3.jpg', '-1535005653-47683.jpg', '/files/default/-1535005653-47683.jpg', 'jpg', '184805', null, '2018-08-23 14:27:33', '0');
INSERT INTO `my_sys_file` VALUES ('2493', '2-1531387039-46763 (1).jpg', '10-1535527115-64638.jpg', '/files/default/10-1535527115-64638.jpg', 'jpg', '1093909', '10', '2018-08-29 15:18:35', '0');
INSERT INTO `my_sys_file` VALUES ('2494', 'banner.jpg', '10-1535704359-14916.jpg', '/files/default/10-1535704359-14916.jpg', 'jpg', '219916', '10', '2018-08-31 16:32:39', '0');
INSERT INTO `my_sys_file` VALUES ('2500', 'b5569230f08ed52abc43f24df2306aab.jpg', '10-1535705819-84871.jpg', '/files/default/10-1535705819-84871.jpg', 'jpg', '1070777', '10', '2018-08-31 16:56:59', '0');
INSERT INTO `my_sys_file` VALUES ('2501', 'banner.jpg', '10-1535705819-84871.jpg', '/files/default/10-1535705819-84871.jpg', 'jpg', '219916', '10', '2018-08-31 16:56:59', '0');
INSERT INTO `my_sys_file` VALUES ('2504', 'banner1.jpg', '10-1535706734-23352.jpg', '/files/rich_text/10-1535706734-23352.jpg', 'jpg', '171839', '10', '2018-08-31 17:12:14', '0');
INSERT INTO `my_sys_file` VALUES ('2508', 'banner1.jpg', '10-1535706881-91656.jpg', '/files/rich_text/10-1535706881-91656.jpg', 'jpg', '171839', '10', '2018-08-31 17:14:41', '0');
INSERT INTO `my_sys_file` VALUES ('2518', '2-1531387039-46763.jpg', '10-1535707355-16771.jpg', '/files/rich_text/10-1535707355-16771.jpg', 'jpg', '1093909', '10', '2018-08-31 17:22:35', '0');
INSERT INTO `my_sys_file` VALUES ('2519', 'banner2.jpg', '10-1535707370-69811.jpg', '/files/rich_text/10-1535707370-69811.jpg', 'jpg', '135918', '10', '2018-08-31 17:22:50', '0');
INSERT INTO `my_sys_file` VALUES ('2520', 'banner1.jpg', '10-1535707370-69811.jpg', '/files/rich_text/10-1535707370-69811.jpg', 'jpg', '171839', '10', '2018-08-31 17:22:50', '0');
INSERT INTO `my_sys_file` VALUES ('2521', 'b5569230f08ed52abc43f24df2306aab.jpg', '10-1535707390-97227.jpg', '/files/rich_text/10-1535707390-97227.jpg', 'jpg', '1070777', '10', '2018-08-31 17:23:10', '0');
INSERT INTO `my_sys_file` VALUES ('2522', 'banner.jpg', '10-1535707390-97227.jpg', '/files/rich_text/10-1535707390-97227.jpg', 'jpg', '219916', '10', '2018-08-31 17:23:10', '0');
INSERT INTO `my_sys_file` VALUES ('2523', 'b5569230f08ed52abc43f24df2306aab.jpg', '10-1535707407-95080.jpg', '/files/rich_text/10-1535707407-95080.jpg', 'jpg', '1070777', '10', '2018-08-31 17:23:27', '0');
INSERT INTO `my_sys_file` VALUES ('2524', 'banner.jpg', '10-1535707407-95080.jpg', '/files/rich_text/10-1535707407-95080.jpg', 'jpg', '219916', '10', '2018-08-31 17:23:27', '0');
INSERT INTO `my_sys_file` VALUES ('2525', 'banner.jpg', '10-1535707475-63173.jpg', '/files/rich_text/10-1535707475-63173.jpg', 'jpg', '219916', '10', '2018-08-31 17:24:35', '0');
INSERT INTO `my_sys_file` VALUES ('2526', 'b5569230f08ed52abc43f24df2306aab.jpg', '10-1535707488-3702.jpg', '/files/rich_text/10-1535707488-3702.jpg', 'jpg', '1070777', '10', '2018-08-31 17:24:48', '0');
INSERT INTO `my_sys_file` VALUES ('2527', 'banner.jpg', '10-1535707488-3702.jpg', '/files/rich_text/10-1535707488-3702.jpg', 'jpg', '219916', '10', '2018-08-31 17:24:48', '0');
INSERT INTO `my_sys_file` VALUES ('2528', 'b5569230f08ed52abc43f24df2306aab.jpg', '10-1535707509-47324.jpg', '/files/rich_text/10-1535707509-47324.jpg', 'jpg', '1070777', '10', '2018-08-31 17:25:09', '0');
INSERT INTO `my_sys_file` VALUES ('2529', 'banner.jpg', '10-1535707509-47324.jpg', '/files/rich_text/10-1535707509-47324.jpg', 'jpg', '219916', '10', '2018-08-31 17:25:09', '0');
INSERT INTO `my_sys_file` VALUES ('2544', 'b5569230f08ed52abc43f24df2306aab.jpg', '10-1535708165-44717.jpg', '/files/rich_text/10-1535708165-44717.jpg', 'jpg', '1070777', '10', '2018-08-31 17:36:05', '0');
INSERT INTO `my_sys_file` VALUES ('2545', 'banner.jpg', '10-1535708165-12655.jpg', '/files/rich_text/10-1535708165-12655.jpg', 'jpg', '219916', '10', '2018-08-31 17:36:05', '0');
INSERT INTO `my_sys_file` VALUES ('2546', 'banner2.jpg', '10-1535708175-10315.jpg', '/files/rich_text/10-1535708175-10315.jpg', 'jpg', '135918', '10', '2018-08-31 17:36:15', '0');
INSERT INTO `my_sys_file` VALUES ('2547', 'b5569230f08ed52abc43f24df2306aab.jpg', '10-1535708182-59330.jpg', '/files/rich_text/10-1535708182-59330.jpg', 'jpg', '1070777', '10', '2018-08-31 17:36:22', '0');
INSERT INTO `my_sys_file` VALUES ('2548', 'banner.jpg', '10-1535708182-148.jpg', '/files/rich_text/10-1535708182-148.jpg', 'jpg', '219916', '10', '2018-08-31 17:36:22', '0');
INSERT INTO `my_sys_file` VALUES ('2549', 'banner1.jpg', '10-1535708182-44171.jpg', '/files/rich_text/10-1535708182-44171.jpg', 'jpg', '171839', '10', '2018-08-31 17:36:22', '0');
INSERT INTO `my_sys_file` VALUES ('2550', '2-1531387039-46763.jpg', '10-1535964240-98470.jpg', '/files/default/10-1535964240-98470.jpg', 'jpg', '1093909', '10', '2018-09-03 16:44:00', '0');
INSERT INTO `my_sys_file` VALUES ('2551', 'banner.jpg', '10-1535964325-25864.jpg', '/files/default/10-1535964325-25864.jpg', 'jpg', '219916', '10', '2018-09-03 16:45:25', '0');
INSERT INTO `my_sys_file` VALUES ('2552', 'banner2.jpg', '10-1535964361-25013.jpg', '/files/default/10-1535964361-25013.jpg', 'jpg', '135918', '10', '2018-09-03 16:46:01', '0');
INSERT INTO `my_sys_file` VALUES ('2553', '2-1531387039-46763 (1).jpg', '10-1535964379-94017.jpg', '/files/default/10-1535964379-94017.jpg', 'jpg', '1093909', '10', '2018-09-03 16:46:19', '0');
INSERT INTO `my_sys_file` VALUES ('2554', '2-1531387039-46763 (1).jpg', '10-1535964413-53228.jpg', '/files/default/10-1535964413-53228.jpg', 'jpg', '1093909', '10', '2018-09-03 16:46:53', '0');
INSERT INTO `my_sys_file` VALUES ('2555', '2-1531387039-46763.jpg', '10-1535964441-75386.jpg', '/files/default/10-1535964441-75386.jpg', 'jpg', '1093909', '10', '2018-09-03 16:47:21', '0');
INSERT INTO `my_sys_file` VALUES ('2556', '2-1531387039-46763 (1).jpg', '10-1535964467-57855.jpg', '/files/default/10-1535964467-57855.jpg', 'jpg', '1093909', '10', '2018-09-03 16:47:47', '0');
INSERT INTO `my_sys_file` VALUES ('2557', '2-1531387039-46763 (1).jpg', '10-1535964598-93455.jpg', '/files/default/10-1535964598-93455.jpg', 'jpg', '1093909', '10', '2018-09-03 16:49:58', '0');
INSERT INTO `my_sys_file` VALUES ('2558', '2-1531387039-46763.jpg', '10-1535964770-44123.jpg', '/files/default/10-1535964770-44123.jpg', 'jpg', '1093909', '10', '2018-09-03 16:52:50', '0');
INSERT INTO `my_sys_file` VALUES ('2559', '2-1531387039-46763 (1).jpg', '10-1535965130-30232.jpg', '/files/default/10-1535965130-30232.jpg', 'jpg', '1093909', '10', '2018-09-03 16:58:50', '0');
INSERT INTO `my_sys_file` VALUES ('2560', 'banner3.jpg', '10-1535965222-17137.jpg', '/files/default/10-1535965222-17137.jpg', 'jpg', '184805', '10', '2018-09-03 17:00:22', '0');
INSERT INTO `my_sys_file` VALUES ('2561', 'banner3.jpg', '10-1535965255-27600.jpg', '/files/default/10-1535965255-27600.jpg', 'jpg', '184805', '10', '2018-09-03 17:00:55', '0');
INSERT INTO `my_sys_file` VALUES ('2562', '2-1531387039-46763 (1).jpg', '10-1535965342-39020.jpg', '/files/default/10-1535965342-39020.jpg', 'jpg', '1093909', '10', '2018-09-03 17:02:22', '0');
INSERT INTO `my_sys_file` VALUES ('2563', 'banner3.jpg', '10-1535965445-23230.jpg', '/files/default/10-1535965445-23230.jpg', 'jpg', '184805', '10', '2018-09-03 17:04:05', '0');
INSERT INTO `my_sys_file` VALUES ('2564', 'banner3.jpg', '10-1535965507-40506.jpg', '/files/default/10-1535965507-40506.jpg', 'jpg', '184805', '10', '2018-09-03 17:05:07', '0');
INSERT INTO `my_sys_file` VALUES ('2565', 'banner1.jpg', '10-1535965529-12628.jpg', '/files/default/10-1535965529-12628.jpg', 'jpg', '171839', '10', '2018-09-03 17:05:29', '0');
INSERT INTO `my_sys_file` VALUES ('2566', 'banner3.jpg', '10-1536127667-81919.jpg', '/files/default/10-1536127667-81919.jpg', 'jpg', '184805', '10', '2018-09-05 14:07:47', '0');
INSERT INTO `my_sys_file` VALUES ('2567', 'banner.jpg', '10-1536139508-78045.jpg', '/files/default/10-1536139508-78045.jpg', 'jpg', '219916', '10', '2018-09-05 17:25:08', '0');
INSERT INTO `my_sys_file` VALUES ('2568', 'banner3.jpg', '10-1536139530-97424.jpg', '/files/default/10-1536139530-97424.jpg', 'jpg', '184805', '10', '2018-09-05 17:25:30', '0');
INSERT INTO `my_sys_file` VALUES ('2569', '2-1531387039-46763 (1).jpg', '10-1536305094-75712.jpg', '/files/default/10-1536305094-75712.jpg', 'jpg', '1093909', '10', '2018-09-07 15:24:54', '0');
INSERT INTO `my_sys_file` VALUES ('2570', '2-1531387039-46763 (1).jpg', '10-1536305153-53113.jpg', '/files/default/10-1536305153-53113.jpg', 'jpg', '1093909', '10', '2018-09-07 15:25:53', '0');
INSERT INTO `my_sys_file` VALUES ('2571', 'banner2.jpg', '10-1536305217-83345.jpg', '/files/default/10-1536305217-83345.jpg', 'jpg', '135918', '10', '2018-09-07 15:26:57', '0');
INSERT INTO `my_sys_file` VALUES ('2572', '2-1531387039-46763 (1).jpg', '10-1536309180-28198.jpg', '/files/default/10-1536309180-28198.jpg', 'jpg', '1093909', '10', '2018-09-07 16:33:00', '0');
INSERT INTO `my_sys_file` VALUES ('2573', '2-1531387039-46763 (1).jpg', '10-1536310794-70689.jpg', '/files/default/10-1536310794-70689.jpg', 'jpg', '1093909', '10', '2018-09-07 16:59:54', '0');
INSERT INTO `my_sys_file` VALUES ('2574', 'banner3.jpg', '10-1536311638-44779.jpg', '/files/default/10-1536311638-44779.jpg', 'jpg', '184805', '10', '2018-09-07 17:13:58', '0');
INSERT INTO `my_sys_file` VALUES ('2575', 'b5569230f08ed52abc43f24df2306aab.jpg', '10-1536722353-97337.jpg', '/files/default/10-1536722353-97337.jpg', 'jpg', '1070777', '10', '2018-09-12 11:19:13', '0');
INSERT INTO `my_sys_file` VALUES ('2576', 'banner.jpg', '10-1536737058-49224.jpg', '/files/default/10-1536737058-49224.jpg', 'jpg', '219916', '10', '2018-09-12 15:24:18', '0');
INSERT INTO `my_sys_file` VALUES ('2577', 'banner.jpg', '10-1537003496-96139.jpg', '/files/default/10-1537003496-96139.jpg', 'jpg', '219916', '10', '2018-09-15 17:24:56', '0');
INSERT INTO `my_sys_file` VALUES ('2578', 'banner.jpg', '10-1537003571-27946.jpg', '/files/default/10-1537003571-27946.jpg', 'jpg', '219916', '10', '2018-09-15 17:26:11', '0');
INSERT INTO `my_sys_file` VALUES ('2579', 'banner1.jpg', '10-1537004107-79911.jpg', '/files/default/10-1537004107-79911.jpg', 'jpg', '171839', '10', '2018-09-15 17:35:07', '0');
INSERT INTO `my_sys_file` VALUES ('2580', 'banner.jpg', '10-1537433623-12099.jpg', '/files/default/10-1537433623-12099.jpg', 'jpg', '219916', '10', '2018-09-20 16:53:43', '0');
INSERT INTO `my_sys_file` VALUES ('2581', 'b5569230f08ed52abc43f24df2306aab.jpg', '10-1537861353-94104.jpg', '/files/default/10-1537861353-94104.jpg', 'jpg', '1070777', '10', '2018-09-25 15:42:33', '0');
INSERT INTO `my_sys_file` VALUES ('2582', 'banner3.jpg', '10-1537861355-40560.jpg', '/files/default/10-1537861355-40560.jpg', 'jpg', '184805', '10', '2018-09-25 15:42:35', '0');
INSERT INTO `my_sys_file` VALUES ('2583', 'banner.jpg', '10-1537862027-11018.jpg', '/files/default/10-1537862027-11018.jpg', 'jpg', '219916', '10', '2018-09-25 15:53:47', '0');
INSERT INTO `my_sys_file` VALUES ('2584', 'b5569230f08ed52abc43f24df2306aab.jpg', '10-1537862030-66321.jpg', '/files/default/10-1537862030-66321.jpg', 'jpg', '1070777', '10', '2018-09-25 15:53:50', '0');
INSERT INTO `my_sys_file` VALUES ('2585', 'b5569230f08ed52abc43f24df2306aab.jpg', '10-1537862309-12066.jpg', '/files/default/10-1537862309-12066.jpg', 'jpg', '1070777', '10', '2018-09-25 15:58:29', '0');
INSERT INTO `my_sys_file` VALUES ('2586', 'banner2.jpg', '10-1537862312-49254.jpg', '/files/default/10-1537862312-49254.jpg', 'jpg', '135918', '10', '2018-09-25 15:58:32', '0');
INSERT INTO `my_sys_file` VALUES ('2587', 'b5569230f08ed52abc43f24df2306aab.jpg', '10-1537863476-50506.jpg', '/files/default/10-1537863476-50506.jpg', 'jpg', '1070777', '10', '2018-09-25 16:17:56', '0');
INSERT INTO `my_sys_file` VALUES ('2588', 'banner3.jpg', '10-1537863478-34685.jpg', '/files/default/10-1537863478-34685.jpg', 'jpg', '184805', '10', '2018-09-25 16:17:58', '0');
INSERT INTO `my_sys_file` VALUES ('2589', '2-1531387039-46763.jpg', '10-1537864702-35723.jpg', '/files/default/10-1537864702-35723.jpg', 'jpg', '1093909', '10', '2018-09-25 16:38:22', '0');
INSERT INTO `my_sys_file` VALUES ('2590', 'banner3.jpg', '10-1537864704-38818.jpg', '/files/default/10-1537864704-38818.jpg', 'jpg', '184805', '10', '2018-09-25 16:38:24', '0');
INSERT INTO `my_sys_file` VALUES ('2591', '2-1531387039-46763.jpg', '10-1538296942-96127.jpg', '/files/default/10-1538296942-96127.jpg', 'jpg', '1093909', '10', '2018-09-30 16:42:22', '0');
INSERT INTO `my_sys_file` VALUES ('2592', 'banner1.jpg', '10-1538968984-32434.jpg', '/files/default/10-1538968984-32434.jpg', 'jpg', '171839', '10', '2018-10-08 11:23:04', '0');
INSERT INTO `my_sys_file` VALUES ('2593', 'banner.jpg', '10-1538970249-93653.jpg', '/files/default/10-1538970249-93653.jpg', 'jpg', '219916', '10', '2018-10-08 11:44:09', '0');
INSERT INTO `my_sys_file` VALUES ('2594', 'banner.jpg', '10-1538970327-24648.jpg', '/files/default/10-1538970327-24648.jpg', 'jpg', '219916', '10', '2018-10-08 11:45:27', '0');
INSERT INTO `my_sys_file` VALUES ('2595', 'banner.jpg', '10-1538970380-41054.jpg', '/files/default/10-1538970380-41054.jpg', 'jpg', '219916', '10', '2018-10-08 11:46:20', '0');
INSERT INTO `my_sys_file` VALUES ('2596', 'b5569230f08ed52abc43f24df2306aab.jpg', '10-1538970560-77414.jpg', '/files/default/10-1538970560-77414.jpg', 'jpg', '1070777', '10', '2018-10-08 11:49:20', '0');
INSERT INTO `my_sys_file` VALUES ('2597', 'b5569230f08ed52abc43f24df2306aab.jpg', '10-1538988593-81852.jpg', '/files/default/10-1538988593-81852.jpg', 'jpg', '1070777', '10', '2018-10-08 16:49:53', '0');
INSERT INTO `my_sys_file` VALUES ('2598', 'banner.jpg', '10-1538989579-56459.jpg', '/files/default/10-1538989579-56459.jpg', 'jpg', '219916', '10', '2018-10-08 17:06:19', '0');
INSERT INTO `my_sys_file` VALUES ('2599', 'banner.jpg', '10-1538990016-47611.jpg', '/files/default/10-1538990016-47611.jpg', 'jpg', '219916', '10', '2018-10-08 17:13:36', '0');
INSERT INTO `my_sys_file` VALUES ('2600', 'b5569230f08ed52abc43f24df2306aab.jpg', '10-1539249431-69668.jpg', '/files/default/10-1539249431-69668.jpg', 'jpg', '1070777', '10', '2018-10-11 17:17:11', '0');
INSERT INTO `my_sys_file` VALUES ('2601', '2-1531387039-46763.jpg', '10-1539415878-64582.jpg', '/files/default/10-1539415878-64582.jpg', 'jpg', '1093909', '10', '2018-10-13 15:31:20', '0');
INSERT INTO `my_sys_file` VALUES ('2602', 'banner1.jpg', '10-1539416924-36199.jpg', '/files/default/10-1539416924-36199.jpg', 'jpg', '171839', '10', '2018-10-13 15:48:44', '0');
INSERT INTO `my_sys_file` VALUES ('2603', 'banner1.jpg', '10-1539416951-20095.jpg', '/files/default/10-1539416951-20095.jpg', 'jpg', '171839', '10', '2018-10-13 15:49:11', '0');
INSERT INTO `my_sys_file` VALUES ('2604', 'banner1.jpg', '10-1539417440-82033.jpg', '/files/default/10-1539417440-82033.jpg', 'jpg', '171839', '10', '2018-10-13 15:57:20', '0');
INSERT INTO `my_sys_file` VALUES ('2605', 'banner2.jpg', '10-1542246480-62741.jpg', '/files/default/10-1542246480-62741.jpg', 'jpg', '135918', '10', '2018-11-15 09:48:00', '0');
INSERT INTO `my_sys_file` VALUES ('2606', '2-1531387039-46763.jpg', '10-1542253316-30808.jpg', '/files/default/10-1542253316-30808.jpg', 'jpg', '1093909', '10', '2018-11-15 11:41:56', '0');
INSERT INTO `my_sys_file` VALUES ('2607', '2-1531387039-46763 (1).jpg', '10-1542253388-79406.jpg', '/files/default/10-1542253388-79406.jpg', 'jpg', '1093909', '10', '2018-11-15 11:43:08', '0');
INSERT INTO `my_sys_file` VALUES ('2608', '2-1531387039-46763 (1).jpg', '10-1542253447-22235.jpg', '/files/default/10-1542253447-22235.jpg', 'jpg', '1093909', '10', '2018-11-15 11:44:07', '0');
INSERT INTO `my_sys_file` VALUES ('2609', 'banner.jpg', '10-1542253528-26859.jpg', '/files/default/10-1542253528-26859.jpg', 'jpg', '219916', '10', '2018-11-15 11:45:28', '0');
INSERT INTO `my_sys_file` VALUES ('2610', 'b5569230f08ed52abc43f24df2306aab.jpg', '10-1542253529-35587.jpg', '/files/default/10-1542253529-35587.jpg', 'jpg', '1070777', '10', '2018-11-15 11:45:29', '0');
INSERT INTO `my_sys_file` VALUES ('2611', 'banner.jpg', '10-1542253585-76896.jpg', '/files/default/10-1542253585-76896.jpg', 'jpg', '219916', '10', '2018-11-15 11:46:25', '0');
INSERT INTO `my_sys_file` VALUES ('2612', '2-1531387039-46763 (1).jpg', '10-1542253586-51966.jpg', '/files/default/10-1542253586-51966.jpg', 'jpg', '1093909', '10', '2018-11-15 11:46:26', '0');
INSERT INTO `my_sys_file` VALUES ('2613', 'banner1.jpg', '10-1542253700-6742.jpg', '/files/default/10-1542253700-6742.jpg', 'jpg', '171839', '10', '2018-11-15 11:48:20', '0');
INSERT INTO `my_sys_file` VALUES ('2614', 'banner2.jpg', '10-1542253701-74776.jpg', '/files/default/10-1542253701-74776.jpg', 'jpg', '135918', '10', '2018-11-15 11:48:21', '0');
INSERT INTO `my_sys_file` VALUES ('2615', '2-1531387039-46763.jpg', '10-1542253709-17320.jpg', '/files/default/10-1542253709-17320.jpg', 'jpg', '1093909', '10', '2018-11-15 11:48:29', '0');
INSERT INTO `my_sys_file` VALUES ('2616', 'banner.jpg', '10-1542258687-60262.jpg', '/files/default/10-1542258687-60262.jpg', 'jpg', '219916', '10', '2018-11-15 13:11:27', '0');
INSERT INTO `my_sys_file` VALUES ('2617', 'b5569230f08ed52abc43f24df2306aab.jpg', '10-1542258688-73332.jpg', '/files/default/10-1542258688-73332.jpg', 'jpg', '1070777', '10', '2018-11-15 13:11:28', '0');
INSERT INTO `my_sys_file` VALUES ('2618', '2-1531387039-46763 (1).jpg', '10-1542259049-97490.jpg', '/files/default/10-1542259049-97490.jpg', 'jpg', '1093909', '10', '2018-11-15 13:17:29', '0');
INSERT INTO `my_sys_file` VALUES ('2619', 'banner.jpg', '10-1542259092-14312.jpg', '/files/default/10-1542259092-14312.jpg', 'jpg', '219916', '10', '2018-11-15 13:18:12', '0');
INSERT INTO `my_sys_file` VALUES ('2620', 'banner.jpg', '10-1542259138-97726.jpg', '/files/default/10-1542259138-97726.jpg', 'jpg', '219916', '10', '2018-11-15 13:18:58', '0');
INSERT INTO `my_sys_file` VALUES ('2621', '2-1531387039-46763 (1).jpg', '10-1542259140-31433.jpg', '/files/default/10-1542259140-31433.jpg', 'jpg', '1093909', '10', '2018-11-15 13:19:00', '0');
INSERT INTO `my_sys_file` VALUES ('2622', 'banner.jpg', '10-1542259221-72680.jpg', '/files/default/10-1542259221-72680.jpg', 'jpg', '219916', '10', '2018-11-15 13:20:21', '0');
INSERT INTO `my_sys_file` VALUES ('2623', 'b5569230f08ed52abc43f24df2306aab.jpg', '10-1542259222-36882.jpg', '/files/default/10-1542259222-36882.jpg', 'jpg', '1070777', '10', '2018-11-15 13:20:22', '0');
INSERT INTO `my_sys_file` VALUES ('2624', 'banner.jpg', '10-1542259273-53211.jpg', '/files/default/10-1542259273-53211.jpg', 'jpg', '219916', '10', '2018-11-15 13:21:13', '0');
INSERT INTO `my_sys_file` VALUES ('2625', '2-1531387039-46763.jpg', '10-1542259274-82162.jpg', '/files/default/10-1542259274-82162.jpg', 'jpg', '1093909', '10', '2018-11-15 13:21:14', '0');
INSERT INTO `my_sys_file` VALUES ('2626', 'banner.jpg', '10-1542259331-60476.jpg', '/files/default/10-1542259331-60476.jpg', 'jpg', '219916', '10', '2018-11-15 13:22:11', '0');
INSERT INTO `my_sys_file` VALUES ('2627', 'b5569230f08ed52abc43f24df2306aab.jpg', '10-1542259332-61397.jpg', '/files/default/10-1542259332-61397.jpg', 'jpg', '1070777', '10', '2018-11-15 13:22:12', '0');
INSERT INTO `my_sys_file` VALUES ('2628', 'b5569230f08ed52abc43f24df2306aab.jpg', '10-1542260559-4667.jpg', '/files/default/10-1542260559-4667.jpg', 'jpg', '1070777', '10', '2018-11-15 13:42:39', '0');
INSERT INTO `my_sys_file` VALUES ('2629', 'banner1.jpg', '10-1542260601-76167.jpg', '/files/default/10-1542260601-76167.jpg', 'jpg', '171839', '10', '2018-11-15 13:43:21', '0');
INSERT INTO `my_sys_file` VALUES ('2630', 'banner.jpg', '10-1542260602-4389.jpg', '/files/default/10-1542260602-4389.jpg', 'jpg', '219916', '10', '2018-11-15 13:43:22', '0');
INSERT INTO `my_sys_file` VALUES ('2631', 'b5569230f08ed52abc43f24df2306aab.jpg', '10-1542260602-66784.jpg', '/files/default/10-1542260602-66784.jpg', 'jpg', '1070777', '10', '2018-11-15 13:43:22', '0');
INSERT INTO `my_sys_file` VALUES ('2632', 'banner.jpg', '10-1542260696-30005.jpg', '/files/default/10-1542260696-30005.jpg', 'jpg', '219916', '10', '2018-11-15 13:44:56', '0');
INSERT INTO `my_sys_file` VALUES ('2633', 'banner.jpg', '10-1542260790-85156.jpg', '/files/default/10-1542260790-85156.jpg', 'jpg', '219916', '10', '2018-11-15 13:46:30', '0');
INSERT INTO `my_sys_file` VALUES ('2634', 'banner1.jpg', '10-1542260790-44053.jpg', '/files/default/10-1542260790-44053.jpg', 'jpg', '171839', '10', '2018-11-15 13:46:30', '0');
INSERT INTO `my_sys_file` VALUES ('2635', 'banner.jpg', '10-1542260945-86219.jpg', '/files/default/10-1542260945-86219.jpg', 'jpg', '219916', '10', '2018-11-15 13:49:05', '0');
INSERT INTO `my_sys_file` VALUES ('2636', 'banner1.jpg', '10-1542260946-18593.jpg', '/files/default/10-1542260946-18593.jpg', 'jpg', '171839', '10', '2018-11-15 13:49:06', '0');
INSERT INTO `my_sys_file` VALUES ('2637', 'banner2.jpg', '10-1542260946-10830.jpg', '/files/default/10-1542260946-10830.jpg', 'jpg', '135918', '10', '2018-11-15 13:49:06', '0');
INSERT INTO `my_sys_file` VALUES ('2638', 'banner.jpg', '10-1542261012-33603.jpg', '/files/default/10-1542261012-33603.jpg', 'jpg', '219916', '10', '2018-11-15 13:50:12', '0');
INSERT INTO `my_sys_file` VALUES ('2639', 'b5569230f08ed52abc43f24df2306aab.jpg', '10-1542261012-57507.jpg', '/files/default/10-1542261012-57507.jpg', 'jpg', '1070777', '10', '2018-11-15 13:50:12', '0');
INSERT INTO `my_sys_file` VALUES ('2640', 'banner3.jpg', '10-1542261025-37103.jpg', '/files/default/10-1542261025-37103.jpg', 'jpg', '184805', '10', '2018-11-15 13:50:25', '0');
INSERT INTO `my_sys_file` VALUES ('2641', 'banner.jpg', '10-1542261027-39150.jpg', '/files/default/10-1542261027-39150.jpg', 'jpg', '219916', '10', '2018-11-15 13:50:27', '0');
INSERT INTO `my_sys_file` VALUES ('2642', 'banner.jpg', '10-1542261084-6290.jpg', '/files/default/10-1542261084-6290.jpg', 'jpg', '219916', '10', '2018-11-15 13:51:24', '0');
INSERT INTO `my_sys_file` VALUES ('2643', 'banner1.jpg', '10-1542261085-97627.jpg', '/files/default/10-1542261085-97627.jpg', 'jpg', '171839', '10', '2018-11-15 13:51:25', '0');
INSERT INTO `my_sys_file` VALUES ('2644', 'b5569230f08ed52abc43f24df2306aab.jpg', '10-1542261085-83135.jpg', '/files/default/10-1542261085-83135.jpg', 'jpg', '1070777', '10', '2018-11-15 13:51:25', '0');
INSERT INTO `my_sys_file` VALUES ('2645', 'b5569230f08ed52abc43f24df2306aab.jpg', '10-1542329438-33354.jpg', '/files/default/10-1542329438-33354.jpg', 'jpg', '1070777', '10', '2018-11-16 08:50:38', '0');
INSERT INTO `my_sys_file` VALUES ('2646', 'banner1.jpg', '10-1542329443-37794.jpg', '/files/default/10-1542329443-37794.jpg', 'jpg', '171839', '10', '2018-11-16 08:50:43', '0');
INSERT INTO `my_sys_file` VALUES ('2647', 'banner.jpg', '10-1542329543-79075.jpg', '/files/default/10-1542329543-79075.jpg', 'jpg', '219916', '10', '2018-11-16 08:52:23', '0');
INSERT INTO `my_sys_file` VALUES ('2648', 'banner.jpg', '10-1542329597-2915.jpg', '/files/default/10-1542329597-2915.jpg', 'jpg', '219916', '10', '2018-11-16 08:53:17', '0');
INSERT INTO `my_sys_file` VALUES ('2649', 'banner.jpg', '10-1542329654-93808.jpg', '/files/default/10-1542329654-93808.jpg', 'jpg', '219916', '10', '2018-11-16 08:54:14', '0');
INSERT INTO `my_sys_file` VALUES ('2650', 'banner.jpg', '10-1542332799-11167.jpg', '/files/default/10-1542332799-11167.jpg', 'jpg', '219916', '10', '2018-11-16 09:46:39', '0');
INSERT INTO `my_sys_file` VALUES ('2651', 'banner.jpg', '10-1542332849-77308.jpg', '/files/default/10-1542332849-77308.jpg', 'jpg', '219916', '10', '2018-11-16 09:47:29', '0');
INSERT INTO `my_sys_file` VALUES ('2652', 'b5569230f08ed52abc43f24df2306aab.jpg', '10-1542332857-58228.jpg', '/files/default/10-1542332857-58228.jpg', 'jpg', '1070777', '10', '2018-11-16 09:47:37', '0');
INSERT INTO `my_sys_file` VALUES ('2653', 'b5569230f08ed52abc43f24df2306aab.jpg', '10-1542333362-91131.jpg', '/files/default/10-1542333362-91131.jpg', 'jpg', '1070777', '10', '2018-11-16 09:56:02', '0');
INSERT INTO `my_sys_file` VALUES ('2654', 'banner1.jpg', '10-1542333375-25225.jpg', '/files/default/10-1542333375-25225.jpg', 'jpg', '171839', '10', '2018-11-16 09:56:15', '0');
INSERT INTO `my_sys_file` VALUES ('2655', 'b5569230f08ed52abc43f24df2306aab.jpg', '10-1542333434-40195.jpg', '/files/default/10-1542333434-40195.jpg', 'jpg', '1070777', '10', '2018-11-16 09:57:14', '0');
INSERT INTO `my_sys_file` VALUES ('2656', 'banner3.jpg', '10-1542333491-7262.jpg', '/files/default/10-1542333491-7262.jpg', 'jpg', '184805', '10', '2018-11-16 09:58:11', '0');
INSERT INTO `my_sys_file` VALUES ('2657', 'veer-164374587.jpg', '10-1542359201-44729.jpg', '/files/default/10-1542359201-44729.jpg', 'jpg', '100502', '10', '2018-11-16 17:06:41', '0');
INSERT INTO `my_sys_file` VALUES ('2658', 'veer-159841571.jpg', '10-1542359220-21811.jpg', '/files/default/10-1542359220-21811.jpg', 'jpg', '28984', '10', '2018-11-16 17:07:00', '0');
INSERT INTO `my_sys_file` VALUES ('2659', 'veer-142390493.jpg', '10-1542359221-22538.jpg', '/files/default/10-1542359221-22538.jpg', 'jpg', '35774', '10', '2018-11-16 17:07:01', '0');
INSERT INTO `my_sys_file` VALUES ('2660', 'veer-164374587.jpg', '10-1542359234-48612.jpg', '/files/default/10-1542359234-48612.jpg', 'jpg', '100502', '10', '2018-11-16 17:07:14', '0');
INSERT INTO `my_sys_file` VALUES ('2661', 'b5569230f08ed52abc43f24df2306aab.jpg', '10-1542682769-87087.jpg', '/files/default/10-1542682769-87087.jpg', 'jpg', '1070777', '10', '2018-11-20 10:59:29', '0');
INSERT INTO `my_sys_file` VALUES ('2662', 'banner1.jpg', '10-1542682791-8085.jpg', '/files/default/10-1542682791-8085.jpg', 'jpg', '171839', '10', '2018-11-20 10:59:51', '0');
INSERT INTO `my_sys_file` VALUES ('2663', 'u=3483578874,4226865514&fm=26&gp=0.jpg', '10-1542694032-25488.jpg', '/files/default/10-1542694032-25488.jpg', 'jpg', '42252', '10', '2018-11-20 14:07:12', '0');
INSERT INTO `my_sys_file` VALUES ('2664', 'u=260819863,250595682&fm=26&gp=0.jpg', '10-1542694168-54169.jpg', '/files/default/10-1542694168-54169.jpg', 'jpg', '37250', '10', '2018-11-20 14:09:28', '0');
INSERT INTO `my_sys_file` VALUES ('2665', 'u=82853784,4186447219&fm=27&gp=0.jpg', '10-1542694183-3530.jpg', '/files/default/10-1542694183-3530.jpg', 'jpg', '12027', '10', '2018-11-20 14:09:43', '0');
INSERT INTO `my_sys_file` VALUES ('2666', 'u=3333503780,1861771238&fm=26&gp=0.jpg', '10-1542694451-62766.jpg', '/files/default/10-1542694451-62766.jpg', 'jpg', '32634', '10', '2018-11-20 14:14:11', '0');
INSERT INTO `my_sys_file` VALUES ('2667', 'u=161889380,1267810110&fm=26&gp=0.jpg', '10-1542694514-30331.jpg', '/files/default/10-1542694514-30331.jpg', 'jpg', '38688', '10', '2018-11-20 14:15:14', '0');
INSERT INTO `my_sys_file` VALUES ('2668', 'u=2643736692,1871861997&fm=26&gp=0.jpg', '10-1542694581-17484.jpg', '/files/default/10-1542694581-17484.jpg', 'jpg', '42265', '10', '2018-11-20 14:16:21', '0');
INSERT INTO `my_sys_file` VALUES ('2669', '9faa061ba8eedcc40df82f4b53d6554a.png', '10-1545268986-88511.png', '/files/default/10-1545268986-88511.png', 'png', '11819', '10', '2018-12-20 09:23:06', '0');
INSERT INTO `my_sys_file` VALUES ('2670', '6bde65526e422dd547ced490bca94a90.png', '10-1545268987-22494.png', '/files/default/10-1545268987-22494.png', 'png', '334768', '10', '2018-12-20 09:23:07', '0');
INSERT INTO `my_sys_file` VALUES ('2671', '8af174b55a714a3b14bf45c973efc4b8.png', '10-1545268987-41369.png', '/files/default/10-1545268987-41369.png', 'png', '561574', '10', '2018-12-20 09:23:07', '0');
INSERT INTO `my_sys_file` VALUES ('2672', 'banner.jpg', '10-1556004489-79350.jpg', '/files/default/10-1556004489-79350.jpg', 'jpg', '219916', '10', '2019-04-23 15:28:09', '0');
INSERT INTO `my_sys_file` VALUES ('2673', '2-1531387039-46763.jpg', '10-1556004490-10424.jpg', '/files/default/10-1556004490-10424.jpg', 'jpg', '1093909', '10', '2019-04-23 15:28:10', '0');
INSERT INTO `my_sys_file` VALUES ('2674', '2-1531387039-46763.jpg', '10-1556004792-86527.jpg', '/files/default/10-1556004792-86527.jpg', 'jpg', '1093909', '10', '2019-04-23 15:33:12', '0');
INSERT INTO `my_sys_file` VALUES ('2675', 'u=2643736692,1871861997&fm=26&gp=0.jpg', '10-1556004793-40146.jpg', '/files/default/10-1556004793-40146.jpg', 'jpg', '42265', '10', '2019-04-23 15:33:13', '0');
INSERT INTO `my_sys_file` VALUES ('2676', 'u=260819863,250595682&fm=26&gp=0.jpg', '10-1556004793-15637.jpg', '/files/default/10-1556004793-15637.jpg', 'jpg', '37250', '10', '2019-04-23 15:33:13', '0');
INSERT INTO `my_sys_file` VALUES ('2677', 'banner1.jpg', '10-1556004985-15099.jpg', '/files/default/10-1556004985-15099.jpg', 'jpg', '171839', '10', '2019-04-23 15:36:25', '0');
INSERT INTO `my_sys_file` VALUES ('2678', 'u=3333503780,1861771238&fm=26&gp=0.jpg', '10-1556006448-15606.jpg', '/files/default/10-1556006448-15606.jpg', 'jpg', '32634', '10', '2019-04-23 16:00:48', '0');
INSERT INTO `my_sys_file` VALUES ('2679', '2-1531387039-46763 (1).jpg', '10-1556006610-3665.jpg', '/files/default/10-1556006610-3665.jpg', 'jpg', '1093909', '10', '2019-04-23 16:03:30', '0');
INSERT INTO `my_sys_file` VALUES ('2680', '2-1531387039-46763.jpg', '10-1556007123-61671.jpg', '/files/default/10-1556007123-61671.jpg', 'jpg', '1093909', '10', '2019-04-23 16:12:03', '0');
INSERT INTO `my_sys_file` VALUES ('2681', '2-1531387039-46763.jpg', '10-1556008221-21439.jpg', '/files/default/10-1556008221-21439.jpg', 'jpg', '1093909', '10', '2019-04-23 16:30:21', '0');
INSERT INTO `my_sys_file` VALUES ('2682', 'b5569230f08ed52abc43f24df2306aab.jpg', '10-1556008221-8317.jpg', '/files/default/10-1556008221-8317.jpg', 'jpg', '1070777', '10', '2019-04-23 16:30:21', '0');

-- ----------------------------
-- Table structure for my_user
-- ----------------------------
DROP TABLE IF EXISTS `my_user`;
CREATE TABLE `my_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '' COMMENT '登录名（默认为手机号）',
  `role_id` int(11) unsigned DEFAULT '0' COMMENT '对应role表ID ',
  `mobile` varchar(15) DEFAULT '' COMMENT '联系电话',
  `password` varchar(128) DEFAULT '',
  `is_all_data` tinyint(1) DEFAULT '1' COMMENT '是否查看所有数据',
  `data_id` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '用户状态 1正常 2冻结',
  `avatar` int(11) DEFAULT NULL COMMENT '头像',
  `last_login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `last_login_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '最后登录时间',
  `login_times` int(11) DEFAULT '0' COMMENT '登录次数',
  `update_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '最后修改时间',
  `create_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '注册时间',
  `user_id` int(11) DEFAULT '0' COMMENT '11',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户表';

-- ----------------------------
-- Records of my_user
-- ----------------------------
INSERT INTO `my_user` VALUES ('10', '超级管理员', '1', '18888888888', '46cc468df60c961d8da2326337c7aa58', '1', null, '1', null, '', '2019-04-24 08:56:32', '44', '2019-04-24 08:56:32', '2018-08-24 13:51:09', '0');
INSERT INTO `my_user` VALUES ('11', '123', '21', '15054223320', '46cc468df60c961d8da2326337c7aa58', '1', null, '1', null, '', '0000-00-00 00:00:00', '0', '2018-08-28 16:38:40', '2018-08-28 16:38:40', '10');

-- ----------------------------
-- Table structure for my_user_data
-- ----------------------------
DROP TABLE IF EXISTS `my_user_data`;
CREATE TABLE `my_user_data` (
  `user_id` int(11) NOT NULL,
  `data_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of my_user_data
-- ----------------------------

-- ----------------------------
-- Table structure for my_user_menu
-- ----------------------------
DROP TABLE IF EXISTS `my_user_menu`;
CREATE TABLE `my_user_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '' COMMENT '菜单名称',
  `model` varchar(30) DEFAULT '' COMMENT '模块名称',
  `parent_id` int(11) DEFAULT '0' COMMENT '父菜单ID',
  `level` int(2) DEFAULT '1' COMMENT '菜单级别',
  `icon` varchar(50) DEFAULT NULL COMMENT 'icon图表',
  `sort` int(5) DEFAULT '1' COMMENT '排序 数字越大越靠前',
  `url` varchar(256) DEFAULT '' COMMENT '地址',
  `param` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '最后修改时间',
  `update_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '注册时间',
  `user_id` int(11) DEFAULT '0' COMMENT '11',
  `is_show` tinyint(2) DEFAULT '1' COMMENT '显示隐藏（隐藏的不必授权）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=278 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色菜单表';

-- ----------------------------
-- Records of my_user_menu
-- ----------------------------
INSERT INTO `my_user_menu` VALUES ('1', '工作台', 'admin', '0', '1', 'fa-dashboard', '6000', 'admin/index/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('5', '网站平台', 'admin', '0', '1', 'fa-desktop', '4200', '', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('7', '系统管理', 'admin', '0', '1', 'fa-gears', '4000', '', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('59', '企业库', 'admin', '7', '2', null, '5000', 'admin/company/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `my_user_menu` VALUES ('60', '管理员管理', 'admin', '7', '2', null, '5000', 'admin/user/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('75', 'banner设置', 'admin', '5', '2', null, '5000', 'admin/banner/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('76', '会员管理', 'admin', '5', '2', null, '5000', 'admin/vip/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `my_user_menu` VALUES ('78', '信息中心', 'admin', '5', '2', null, '5000', 'admin/frontend_message/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('79', '新闻资讯', 'admin', '5', '2', null, '5000', 'admin/news/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('81', '用户管理', 'admin', '263', '2', '', '5000', 'admin/customer/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('82', '添加新角色', 'admin', '60', '3', null, '5000', 'admin/role/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('83', '编辑角色', 'admin', '60', '3', null, '5000', 'admin/role/edit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('84', '删除角色', 'admin', '60', '3', null, '5000', 'admin/role/delete', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('85', '添加用户', 'admin', '60', '3', null, '5000', 'admin/user/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('86', '重置密码', 'admin', '60', '3', null, '5000', 'admin/user/resetdftpwd', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('87', '冻结用户', 'admin', '60', '3', null, '5000', 'admin/user/frzy', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('88', '解冻用户', 'admin', '60', '3', null, '5000', 'admin/user/unfrzy', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('89', '编辑用户', 'admin', '60', '3', null, '5000', 'admin/user/edit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('133', '新增', 'admin', '272', '3', null, '5000', 'admin/company/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('134', '查看', 'admin', '272', '3', null, '5000', 'admin/company/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('137', '编辑', 'admin', '272', '3', null, '5000', 'admin/company/edit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('150', '新增banner', 'admin', '75', '3', null, '5000', 'admin/banner/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('151', '删除', 'admin', '75', '3', null, '5000', 'admin/banner/delete', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('173', '信息分类', 'admin', '77', '3', null, '5000', 'admin/etprs_service_category/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('174', '新增', 'admin', '173', '4', null, '5000', 'admin/etprs_service_category/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('175', '编辑', 'admin', '173', '4', null, '5000', 'admin/etprs_service_category/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('186', '新增', 'admin', '78', '3', null, '5000', 'admin/frontend_message/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('187', '导出', 'admin', '78', '3', null, '5000', 'admin/message/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('188', '查看', 'admin', '78', '3', null, '5000', 'admin/frontend_message/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('189', '下线', 'admin', '78', '3', null, '5000', 'admin/frontend_message/off', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('192', '编辑', 'admin', '78', '3', null, '5000', 'admin/frontend_message/edit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('194', '新增', 'admin', '79', '3', null, '5000', 'admin/news/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('195', '查看', 'admin', '79', '3', null, '5000', 'admin/news/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('196', '编辑', 'admin', '79', '3', null, '5000', 'admin/news/edit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('197', '导出', 'admin', '79', '3', null, '5000', 'admin/news/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('198', '设置banner', 'admin', '79', '3', null, '5000', 'admin/news/banner', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('199', '删除', 'admin', '79', '3', null, '5000', 'admin/news/delete', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('207', '新增', 'admin', '72', '3', null, '5000', 'admin/customer/addCustomer', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('261', '信息分类', 'admin', '78', '3', null, '5000', 'admin/frontend_message_category/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('263', '用户管理', 'admin', '0', '1', 'fa-users', '4100', '', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('265', '商品管理', 'admin', '0', '1', 'fa-tags', '5000', '', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('266', '商品分类', 'admin', '265', '2', null, '1', 'admin/product_category/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('267', '商品管理', 'admin', '265', '2', null, '1', 'admin/product/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('269', '入驻品类', 'admin', '265', '2', null, '1', 'admin/enter_category/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `my_user_menu` VALUES ('270', '订单管理', 'admin', '271', '2', null, '1', 'admin/order/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('271', '订单管理', 'admin', '0', '1', 'fa-credit-card', '4500', '', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('272', '入驻商家', 'admin', '0', '1', 'fa-building-o', '4900', 'admin/company/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('273', '订单详情', 'admin', '270', '3', null, '1', 'admin/order/detail', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('274', '添加商品', 'admin', '267', '3', null, '1', 'admin/product/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('275', '商品详情', 'admin', '267', '3', null, '1', 'admin/product/detail', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('276', '用户详情', 'admin', '263', '3', null, '1', 'admin/customer/detail', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('277', '系统参数', 'admin', '7', '2', null, '1', 'admin/setting/edit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');

-- ----------------------------
-- Table structure for my_user_menu_copy
-- ----------------------------
DROP TABLE IF EXISTS `my_user_menu_copy`;
CREATE TABLE `my_user_menu_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '' COMMENT '菜单名称',
  `model` varchar(30) DEFAULT '' COMMENT '模块名称',
  `parent_id` int(11) DEFAULT '0' COMMENT '父菜单ID',
  `level` int(2) DEFAULT '1' COMMENT '菜单级别',
  `icon` varchar(50) DEFAULT NULL COMMENT 'icon图表',
  `sort` int(5) DEFAULT '1' COMMENT '排序 数字越大越靠前',
  `url` varchar(256) DEFAULT '' COMMENT '地址',
  `param` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '最后修改时间',
  `update_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '注册时间',
  `user_id` int(11) DEFAULT '0' COMMENT '11',
  `is_show` tinyint(2) DEFAULT '1' COMMENT '显示隐藏（隐藏的不必授权）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色菜单表';

-- ----------------------------
-- Records of my_user_menu_copy
-- ----------------------------
INSERT INTO `my_user_menu_copy` VALUES ('1', '工作台', 'admin', '0', '1', 'fa-dashboard', '5000', 'admin/index/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('2', '服务管理', 'admin', '0', '1', 'fa-server', '5000', '', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('3', '空间管理', 'admin', '0', '1', 'fa-building-o', '5000', '', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('5', '平台管理', 'admin', '0', '1', 'fa-desktop', '5000', '', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('6', '投资管理', 'admin', '0', '1', 'fa-credit-card', '5000', 'admin/invest/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `my_user_menu_copy` VALUES ('7', '系统管理', 'admin', '0', '1', 'fa-gears', '4999', '', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('58', '档案库', 'admin', '7', '2', null, '5000', 'admin/archive/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `my_user_menu_copy` VALUES ('59', '企业库', 'admin', '7', '2', null, '5000', 'admin/company/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `my_user_menu_copy` VALUES ('60', '用户管理', 'admin', '7', '2', null, '5000', 'admin/user/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('61', '人力资源管理', 'admin', '7', '2', null, '5000', 'admin/staff/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `my_user_menu_copy` VALUES ('62', '大事记', 'admin', '7', '2', null, '5000', 'admin/memorabilia/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `my_user_menu_copy` VALUES ('63', '咨询服务', 'admin', '2', '2', null, '5000', 'admin/consult/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('64', '工商注册', 'admin', '2', '2', null, '5000', 'admin/business/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('65', '商标注册', 'admin', '2', '2', null, '5000', 'admin/brand/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('66', '商务秘书', 'admin', '2', '2', null, '5000', 'admin/secretary/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('67', '股权服务', 'admin', '2', '2', null, '5000', 'admin/stock/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('68', '定制服务', 'admin', '2', '2', null, '5000', 'admin/customize/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('69', '服务缴费管理', 'admin', '2', '2', null, '5000', 'admin/service_pay_log/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('70', '合同管理', 'admin', '3', '2', null, '5000', '', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('71', '孵化空间管理', 'admin', '3', '2', null, '5000', 'admin/iqbt/iqbtlist', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('75', 'banner设置', 'admin', '5', '2', null, '5000', 'admin/banner/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('76', '会员管理', 'admin', '5', '2', null, '5000', 'admin/vip/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `my_user_menu_copy` VALUES ('77', '第三方服务管理', 'admin', '5', '2', null, '5000', 'admin/etprs_service/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `my_user_menu_copy` VALUES ('78', '信息中心', 'admin', '5', '2', null, '5000', 'admin/frontend_message/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('79', '新闻资讯', 'admin', '5', '2', null, '5000', 'admin/news/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('80', '活动管理', 'admin', '5', '2', null, '5000', 'admin/activity/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `my_user_menu_copy` VALUES ('81', '用户管理', 'admin', '263', '2', '', '5000', 'admin/customer/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('82', '添加新角色', 'admin', '60', '3', null, '5000', 'admin/role/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('83', '编辑角色', 'admin', '60', '3', null, '5000', 'admin/role/edit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('84', '删除角色', 'admin', '60', '3', null, '5000', 'admin/role/delete', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('85', '添加用户', 'admin', '60', '3', null, '5000', 'admin/user/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('86', '重置密码', 'admin', '60', '3', null, '5000', 'admin/user/resetdftpwd', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('87', '冻结用户', 'admin', '60', '3', null, '5000', 'admin/user/frzy', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('88', '解冻用户', 'admin', '60', '3', null, '5000', 'admin/user/unfrzy', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('89', '编辑用户', 'admin', '60', '3', null, '5000', 'admin/user/edit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('90', '导入', 'admin', '59', '3', null, '5000', 'admin/company/import', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('91', '新增', 'admin', '61', '3', null, '5000', 'admin/staff/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('93', '导入', 'admin', '61', '3', null, '5000', 'admin/staff/import', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('94', '导出', 'admin', '61', '3', null, '5000', 'admin/staff/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('95', '编辑', 'admin', '61', '3', null, '5000', 'admin/staff/edit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('97', '新增', 'admin', '62', '3', null, '5000', 'admin/memorabilia/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('99', '查看', 'admin', '62', '3', null, '5000', 'admin/memorabilia/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('100', '编辑', 'admin', '62', '3', null, '5000', 'admin/memorabilia/edit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('102', '新增', 'admin', '6', '3', null, '5000', 'admin/invest/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('103', '查看', 'admin', '6', '3', null, '5000', 'admin/invest/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('104', '编辑', 'admin', '6', '3', null, '5000', 'admin/invest/edit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('105', '新增', 'admin', '64', '3', null, '5000', 'admin/business/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('106', '服务设置', 'admin', '64', '3', null, '5000', 'admin/service/index', 'id=1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('107', '查看', 'admin', '64', '3', null, '5000', 'admin/business/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('108', '新增', 'admin', '63', '3', null, '5000', 'admin/consult/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('109', '查看', 'admin', '63', '3', null, '5000', 'admin/consult/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('110', '服务设置', 'admin', '65', '3', null, '5000', 'admin/service/index', 'id=2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('111', '新增', 'admin', '65', '3', null, '5000', 'admin/brand/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('112', '查看', 'admin', '65', '3', null, '5000', 'admin/brand/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('114', '新增', 'admin', '67', '3', null, '5000', 'admin/stock/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('115', '查看', 'admin', '67', '3', null, '5000', 'admin/stock/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('116', '服务设置', 'admin', '67', '3', null, '5000', 'admin/service/index', 'id=4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('119', '导出', 'admin', '67', '3', null, '5000', 'admin/stock/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('120', '新增', 'admin', '68', '3', null, '5000', 'admin/customize/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('121', '查看', 'admin', '68', '3', null, '5000', 'admin/customize/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('122', '服务设置', 'admin', '68', '3', null, '5000', 'admin/service/index', 'id=5', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('123', '合同管理', 'admin', '2', '2', null, '5000', 'admin/service_pact/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('124', '新增', 'admin', '66', '3', null, '5000', 'admin/secretary/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('125', '服务设置', 'admin', '66', '3', null, '5000', 'admin/service/index', 'id=3', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('126', '查看', 'admin', '66', '3', null, '5000', 'admin/secretary/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('127', '纳税管理', 'admin', '66', '3', null, '5000', 'admin/tax/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('128', '数据统计', 'admin', '127', '4', null, '5000', 'admin/tax/statistic', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('129', '年报管理', 'admin', '66', '3', null, '5000', 'admin/year_report/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('130', '上传', 'admin', '58', '3', null, '3', 'admin/archive/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('131', '导出', 'admin', '58', '3', null, '2', 'admin/archive/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('132', '下载', 'admin', '58', '3', null, '1', 'admin/archive/downloadcheck', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('133', '新增', 'admin', '59', '3', null, '5000', 'admin/company/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('134', '查看', 'admin', '59', '3', null, '5000', 'admin/company/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('136', '导出', 'admin', '59', '3', null, '5000', 'admin/company/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('137', '编辑', 'admin', '59', '3', null, '5000', 'admin/company/edit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('138', '导出', 'admin', '6', '3', null, '5000', 'admin/invest/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('139', '导出', 'admin', '63', '3', null, '5000', 'admin/consult/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('140', '分配', 'admin', '63', '3', null, '5000', 'admin/consult/operator', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('141', '导出', 'admin', '64', '3', null, '5000', 'admin/service/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('142', '导出', 'admin', '65', '3', null, '5000', 'admin/brand/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('143', '导出', 'admin', '66', '3', null, '5000', 'admin/secretary/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('144', '导出', 'admin', '68', '3', null, '5000', 'admin/customize/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('145', '导出', 'admin', '69', '3', null, '5000', 'admin/service_pay_log/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('146', '编辑', 'admin', '69', '3', null, '5000', 'admin/service_pay_log/edit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('147', '上传', 'admin', '123', '3', null, '5000', 'admin/service_pact/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('148', '导出', 'admin', '123', '3', null, '5000', 'admin/service_pact/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('149', '编辑', 'admin', '123', '3', null, '5000', 'admin/service_pact/edit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('150', '新增banner', 'admin', '75', '3', null, '5000', 'admin/banner/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('151', '删除', 'admin', '75', '3', null, '5000', 'admin/banner/delete', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('152', '房间管理', 'admin', '3', '2', null, '5000', 'admin/room/roominfo?buildId=0&iqbtId=0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('153', '新增', 'admin', '152', '3', null, '5000', 'admin/room/addroomnew', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('154', '编辑', 'admin', '152', '3', null, '5000', 'admin/room/editnew', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('155', '删除', 'admin', '152', '3', null, '5000', 'admin/room/delRoom', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('156', '导出', 'admin', '152', '3', null, '5000', 'admin/room/exportRooms', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('157', '新增', 'admin', '76', '3', null, '5000', 'admin/vip/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('158', '导出', 'admin', '76', '3', null, '5000', 'admin/vip/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('159', '查看', 'admin', '76', '3', null, '5000', 'admin/vip/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('160', '会员设置', 'admin', '76', '3', null, '5000', 'admin/vip_setting/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('161', '会员收款明细', 'admin', '76', '3', null, '5000', 'admin/vip_pay_log/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('162', '新增', 'admin', '161', '4', null, '5000', 'admin/vip_pay_log/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('163', '导入', 'admin', '161', '4', null, '5000', 'admin/vip_pay_log/import', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('164', '导出', 'admin', '161', '4', null, '5000', 'admin/vip_pay_log/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('165', '导入', 'admin', '127', '4', null, '5000', 'admin/tax/import', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('166', '导出', 'admin', '127', '4', null, '5000', 'admin/tax/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('167', '上报', 'admin', '127', '4', null, '5000', 'admin/tax/report', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('168', '导入', 'admin', '129', '4', null, '5000', 'admin/year_report/import', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('169', '导出', 'admin', '129', '4', null, '5000', 'admin/year_report/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('170', '查看', 'admin', '77', '3', null, '5000', 'admin/etprs_service/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('171', '下线', 'admin', '77', '3', null, '5000', 'admin/etprs_service/off', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('172', '删除', 'admin', '77', '3', null, '5000', 'admin/etprs_service/delete', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('173', '服务类型管理', 'admin', '77', '3', null, '5000', 'admin/etprs_service_category/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('174', '新增', 'admin', '173', '4', null, '5000', 'admin/etprs_service_category/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('175', '编辑', 'admin', '173', '4', null, '5000', 'admin/etprs_service_category/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('176', '预约参观', 'admin', '1', '3', null, '5000', 'admin/work/visit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('177', '确认', 'admin', '176', '4', null, '5000', 'admin/work/addCstm', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('178', '查看', 'admin', '176', '4', null, '5000', 'admin/work/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('180', '活动报名', 'admin', '1', '3', null, '5000', 'admin/work/actapl', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('182', '通过', 'admin', '180', '4', null, '5000', 'admin/activity/saveSign', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('183', '拒绝', 'admin', '180', '4', null, '5000', 'admin/activity/saveSign', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('186', '新增', 'admin', '78', '3', null, '5000', 'admin/frontend_message/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('187', '导出', 'admin', '78', '3', null, '5000', 'admin/message/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('188', '查看', 'admin', '78', '3', null, '5000', 'admin/frontend_message/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('189', '下线', 'admin', '78', '3', null, '5000', 'admin/frontend_message/off', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('190', '申请入驻', 'admin', '1', '3', null, '5000', 'admin/work/etprslist', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('191', '查看', 'admin', '190', '4', null, '5000', 'admin/Etprs/etprsdetail', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('192', '编辑', 'admin', '78', '3', null, '5000', 'admin/frontend_message/edit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('193', '服务订单', 'admin', '1', '3', null, '5000', 'admin/work/serviceorderlist', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('194', '新增', 'admin', '79', '3', null, '5000', 'admin/news/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('195', '查看', 'admin', '79', '3', null, '5000', 'admin/news/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('196', '编辑', 'admin', '79', '3', null, '5000', 'admin/news/edit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('197', '导出', 'admin', '79', '3', null, '5000', 'admin/news/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('198', '设置banner', 'admin', '79', '3', null, '5000', 'admin/news/banner', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('199', '删除', 'admin', '79', '3', null, '5000', 'admin/news/delete', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('200', '导入', 'admin', '81', '3', null, '5000', 'admin/company_plat/import', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('201', '导出', 'admin', '81', '3', null, '5000', 'admin/company_plat/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('202', '新增', 'admin', '81', '3', null, '5000', 'admin/company_plat/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('203', '重置密码', 'admin', '81', '3', null, '5000', 'admin/company_plat/reset', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('204', '冻结', 'admin', '81', '3', null, '5000', 'admin/company_plat/freeze', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('205', '解冻', 'admin', '81', '3', null, '5000', 'admin/company_plat/unfreeze', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('207', '新增', 'admin', '72', '3', null, '5000', 'admin/customer/addCustomer', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('208', '导入', 'admin', '72', '3', null, '5000', 'admin/index/customerXlsData', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('209', '编辑', 'admin', '72', '3', null, '5000', 'admin/customer/editcustomer', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('210', '跟进', 'admin', '72', '3', null, '5000', 'admin/customer/addflow', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('211', '导出', 'admin', '72', '3', null, '5000', 'admin/customer/exportCus', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('212', '发起入驻', 'admin', '73', '3', null, '5000', 'admin/etprs/enter', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('213', '导入', 'admin', '73', '3', null, '5000', 'admin/index/etprsXlsData', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('214', '导出', 'admin', '73', '3', null, '5000', 'admin/etprs/exportEtprs', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('215', '企业信息', 'admin', '5', '3', null, '5000', 'admin/etprs/etprsdetail', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('216', '退出', 'admin', '73', '3', null, '5000', 'admin/etprs/backCus', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('217', '毕业', 'admin', '73', '3', null, '5000', 'admin/etprs/saveQuit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('218', '上传', 'admin', '74', '3', null, '5000', 'admin/pact/savePact', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('219', '导出', 'admin', '74', '3', null, '5000', 'admin/pact/exportEtprs', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('220', '编辑', 'admin', '74', '3', null, '5000', 'admin/pact/edit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('221', '新增空间', 'admin', '71', '3', null, '5000', 'admin/iqbt/addiqbt', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('222', '查看', 'admin', '71', '3', null, '5000', 'admin/iqbt/iqbtInfo', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('223', '楼座管理', 'admin', '71', '3', null, '5000', 'admin/room/buildlist', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('224', '编辑', 'admin', '71', '3', null, '5000', 'admin/iqbt/editIqbt', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('225', '导出', 'admin', '80', '3', null, '5000', 'admin/activity/exportAct', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('226', '发布活动', 'admin', '80', '3', null, '5000', 'admin/activity/addact', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('227', '查看', 'admin', '80', '3', null, '5000', 'admin/activity/actinfo', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('228', '编辑', 'admin', '80', '3', null, '5000', 'admin/activity/editact', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('229', '上传活动总结', 'admin', '80', '3', null, '5000', 'admin/activity/summary', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('230', '查看活动总结', 'admin', '80', '3', null, '5000', 'admin/activity/suminfo', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('231', '编辑活动总结', 'admin', '80', '3', null, '5000', 'admin/activity/summary', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('232', '报名管理', 'admin', '80', '3', null, '5000', 'admin/activity/signmanage', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('233', '导入', 'admin', '232', '4', null, '5000', 'admin/index/actapplyxlsdata', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('234', '导出', 'admin', '232', '4', null, '5000', 'admin/activity/exportSign', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('235', '通过', 'admin', '232', '4', null, '5000', 'admin/activity/saveSign', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('236', '拒绝', 'admin', '232', '4', null, '5000', 'admin/activity/saveSign', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('237', '确认订单', 'admin', '64', '3', null, '5000', 'admin/business/changeStatus', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('238', '确认订单', 'admin', '65', '3', null, '5000', 'admin/brand/changeStatus', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('239', '确认订单', 'admin', '66', '3', null, '5000', 'admin/secretary/changeStatus', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('240', '确认订单', 'admin', '67', '3', null, '5000', 'admin/stock/changeStatus', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('241', '确认订单', 'admin', '68', '3', null, '5000', 'admin/customize/changeStatus', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('242', '编辑', 'admin', '215', '4', null, '5000', 'admin/etprs/saveEditEtprs', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('243', '拒绝', 'admin', '215', '4', null, '5000', 'admin/etprs/changeVipStatus', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('244', '通过', 'admin', '215', '4', null, '5000', 'admin/etprs/changeVipStatus', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('245', '确认入驻', 'admin', '190', '4', null, '5000', 'admin/etprs/changeStatus', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('246', '保存', 'admin', '176', '4', null, '5000', 'admin/work/saveVisit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('257', '签约入驻', 'admin', '73', '3', null, '5000', 'admin/etprs/roomAllo', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('258', '签约入驻', 'admin', '73', '3', null, '5000', 'admin/etprs/roomallochange', 'id=1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('259', '变更', 'admin', '73', '3', null, '5000', 'admin/etprs/roomallochange', 'id=2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('260', '续约', 'admin', '73', '3', null, '5000', 'admin/etprs/roomallochange', 'id=3', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('261', '信息分类', 'admin', '78', '3', null, '5000', 'admin/frontend_message_category/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('263', '会员管理', 'admin', '0', '1', 'fa-users', '5000', '', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('265', '分类管理', 'admin', '0', '1', 'fa-tags', '5000', '', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('266', '商品分类', 'admin', '265', '2', null, '1', 'admin/product_category/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('267', '商品管理', 'admin', '265', '2', null, '1', 'admin/product/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('268', '商家入驻', 'admin', '265', '2', null, '1', 'admin/company/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('269', '入驻品类', 'admin', '265', '2', null, '1', 'admin/enter_category/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu_copy` VALUES ('270', '订单管理', 'admin', '265', '2', null, '1', 'admin/order/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');

-- ----------------------------
-- Table structure for my_user_role
-- ----------------------------
DROP TABLE IF EXISTS `my_user_role`;
CREATE TABLE `my_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `menu_ids` text COMMENT '菜单ID字符串 多个ID之间用 , 隔开',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `sort` int(5) DEFAULT '0' COMMENT '排序',
  `update_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '最后修改时间',
  `create_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '注册时间',
  `user_id` int(11) DEFAULT '0' COMMENT '11',
  `is_lock` tinyint(2) DEFAULT '0' COMMENT '是否锁定  锁定之后不能修改',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色表';

-- ----------------------------
-- Records of my_user_role
-- ----------------------------
INSERT INTO `my_user_role` VALUES ('1', '超级管理员', '', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_role` VALUES ('4', '系统维护员', '5,80,232,233,234,236,235,1,176,178,177', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `my_user_role` VALUES ('8', '测试0', '', null, '0', '2018-08-18 11:20:36', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `my_user_role` VALUES ('13', '运营管理者', '', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '821', '0');
INSERT INTO `my_user_role` VALUES ('14', '招商管理员', '36,3,4,50,51,54', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '854', '0');
INSERT INTO `my_user_role` VALUES ('15', '企业服务管理员', '35,30,38,9,10,25', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '854', '0');
INSERT INTO `my_user_role` VALUES ('21', '任天野544', '5,75,76,77,78,79,80,81,150,151,157,158,159,160,161,162,163,164,170,171,172,173,174,175,186,187,188,189,192,194,195,196,197,198,199,200,201,202,203,204,205,225,226,227,228,229,230,231,232,233,234,235,236', null, '0', '2018-08-28 16:38:25', '2018-08-18 10:21:10', '0', '0');

-- ----------------------------
-- Table structure for my_vip_pay_log
-- ----------------------------
DROP TABLE IF EXISTS `my_vip_pay_log`;
CREATE TABLE `my_vip_pay_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `pay_type` tinyint(1) DEFAULT NULL COMMENT '1微信 2支付宝 2其他',
  `pay_sn` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员支付流水表';

-- ----------------------------
-- Records of my_vip_pay_log
-- ----------------------------
