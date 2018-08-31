/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : 127.0.0.1:3306
Source Database       : my

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-08-31 11:05:51
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of my_banner
-- ----------------------------
INSERT INTO `my_banner` VALUES ('1', '1', '1', '1343', '23', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `my_banner` VALUES ('2', '1', '2', '1859', 'http://tx.com/admin/banner/index.html', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_banner` VALUES ('3', '2', '1', '1860', '', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_banner` VALUES ('4', '1', '1', '1862', 'http://tx.com/admin/banner/index.html', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_banner` VALUES ('5', '2', '1', '1867', '', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_banner` VALUES ('6', '1', '1', '2187', 'http://tx.com/admin/banner/index.html', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_banner` VALUES ('7', '1', '1', '2188', 'http://tx.com/admin/banner/index.html', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_banner` VALUES ('8', '1', '1', '2189', 'http://tx.com/admin/banner/index.html', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_banner` VALUES ('9', '1', '1', '2190', 'http://tx.com/admin/banner/index.html', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_banner` VALUES ('10', '1', '1', '2191', 'http://tx.com/admin/banner/index.html', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_banner` VALUES ('11', '2', '1', '2192', '', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_banner` VALUES ('18', '1', '2', '2413', 'http://taixing.zlhuiyun.com/admin/banner/index.html', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_banner` VALUES ('19', '1', '3', '2415', 'http://taixing.zlhuiyun.com/admin/banner/index.html', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_banner` VALUES ('20', '1', '4', '2416', 'http://taixing.zlhuiyun.com/admin/banner/index.html', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_banner` VALUES ('21', '1', '2', '2417', 'http://taixing.zlhuiyun.com/admin/banner/index.html', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_banner` VALUES ('22', '1', '1', '2418', 'http://taixing.zlhuiyun.com/admin/banner/index.html', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_banner` VALUES ('23', '1', '1', '2419', 'http://taixing.zlhuiyun.com/admin/banner/index.html', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_banner` VALUES ('24', '1', '1', '2420', 'http://taixing.zlhuiyun.com/admin/banner/index.html', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_banner` VALUES ('25', '1', '1', '2491', 'http://self.com/admin/banner/index.html', '0', '2018-08-23 14:25:37', '2018-08-23 14:25:37', '0');

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
  `source` tinyint(3) DEFAULT NULL COMMENT '来源(1web 2 admin 3app)',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态 (1 正常 2冻结)',
  `isDelete` tinyint(2) DEFAULT '0',
  `user_id` int(11) DEFAULT '0',
  `update_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  `create_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=547 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='客户表';

-- ----------------------------
-- Records of my_customer
-- ----------------------------
INSERT INTO `my_customer` VALUES ('389', '1', '海信家电有限公司', '18888888888', '46cc468df60c961d8da2326337c7aa58', '1', '2', '0', '910', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `my_customer` VALUES ('545', '2', '', '15961019696', '46cc468df60c961d8da2326337c7aa58', '2', '2', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `my_customer` VALUES ('546', '1', '', '18888888777', '46cc468df60c961d8da2326337c7aa58', '1', '1', '0', '0', '2018-08-29 15:57:09', '2018-08-29 15:57:09');

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
  `is_delete` tinyint(2) DEFAULT '0' COMMENT '是否删除',
  `update_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  `create_time` datetime NOT NULL COMMENT '注册时间',
  `user_id` int(11) DEFAULT '0' COMMENT '11',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of my_news
-- ----------------------------
INSERT INTO `my_news` VALUES ('2', '45645645', '1', '1982', '<span style=\"font-weight: bold;\">6768678678</span>', '2', null, null, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_news` VALUES ('3', '534534534', '1', '2437', '我是新设置的banner&nbsp;', '2', null, null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_news` VALUES ('4', '56756756', '1', '2062', '图图图与', '2', null, null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_news` VALUES ('5', '111', '1', '2194', '12312312312313', '2', null, null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_news` VALUES ('6', '222', '1', '2195', '2222222', '2', null, null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_news` VALUES ('7', '333', '1', '2196', '3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333', '2', null, null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_news` VALUES ('8', '444', '1', '2406', '<p><span style=\"font-weight: bold; text-decoration-line: underline;\">444464564564564564646456456</span></p><p><span style=\"font-weight: 700; text-decoration-line: underline;\">444464564564564564646456456</span></p><p><span style=\"font-weight: 700; text-decoration-line: underline;\">444464564564564564646456456</span></p><hr><hr><hr><hr><span style=\"font-weight: 700; text-decoration-line: underline;\">444464564564564564646456456</span><span style=\"font-weight: 700; text-decoration-line: underline;\">444464564564564564646456456</span><span style=\"font-weight: 700; text-decoration-line: underline;\">444464564564564564646456456</span><span style=\"font-weight: 700; text-decoration-line: underline;\">444464564564564564646456456</span><span style=\"font-weight: 700; text-decoration-line: underline;\">444464564564564564646456456</span><span style=\"font-weight: 700; text-decoration-line: underline;\">444464564564564564646456456</span><p><span style=\"font-weight: bold; text-decoration-line: underline;\"><br></span></p>', '2', null, null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_news` VALUES ('9', '砍死法老', '1', '2410', '<p><span style=\"font-weight: 700;\">你想杀了我吗？朋友</span></p><p><span style=\"font-weight: bold;\"></span><img src=\"/files/richText/2-1533371338-15193.jpg\" data-filename=\"image name\" style=\"width: 805px;\"><span style=\"font-weight: bold;\"><br></span></p><p><span style=\"font-weight: bold;\"><br></span><span style=\"font-style: italic;\"></span></p>', '2', null, null, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_news` VALUES ('10', '重大新闻', '1', '2387', '我不能为空', '1', null, null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_news` VALUES ('11', '暖新闻丨10年，这个爱心团队涌现898名造血干细胞捐献志愿者有很多', '0', '2681', '<p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">光明网记者 李政葳 庞聪 范子川7月5日，多氟多化工股份有限公司运营部的任抗战，收到了中国红十字总会寄来的《优秀红十字志愿者》证书，表彰他为造血干细胞捐献所做的贡献。像任抗战这样的职工，在这家爱心企业里还有很多。王晓亮，河南省第五百五十二位造血干细胞捐献者;曹红卫，河南省第六百位造血干细胞捐献者，韩琛洁，焦作市年龄最小的捐献者……10年里，从最初任抗战一个人到一群人，这家爱心企业已有898名员工成为造血干细胞捐献志愿者，目前共有8人成功捐献“生命种子”，为白血病患者送去生命的希望，创造了“生命奇迹”。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">为什么这里涌现出这么多富有爱心的员工?“生命奇迹”背后有着怎样感人的故事?</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\"><strong>“平凡善举，能救人一命，我骄傲”</strong></p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">谦和、真诚，是任抗战留给的第一印象。“第一次无偿献血是在1998年，那时还在读大三。后面，几乎每隔半年就献一次血。”在任抗战看来，虽然自己献出的血量有限，但希望能起到带头作用，号召更多人都能献出一点爱心。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\"><img src=\"http://p2.qhimgs4.com/t01d6fb05b702b29ae2.webp\" style=\"border-width: initial; border-style: none; display: block; margin: 7px auto; max-width: 100%; width: 450px;\"></p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">造血干细胞捐献者任抗战正在和同事乒乓球比赛(李政葳/摄)</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">曾经有人这样计算，截止到2015年7月，任抗战就已累计献血13800毫升，相当于一个成年人全身换血两次多。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">时隔15年，任抗战依然清晰记得当时加入中华骨髓库成为志愿者时的场景。那是在2003年3月，任抗战与妻子在焦作市东方红广场看到宣传义务捐献造血干细胞，“现场停了5辆采血车，围了很多人，自己还是从广场后门才挤了进去。”</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">任抗战没想到，任抗战获得了这种概率只有十几万分之一的配型成功机会。在2007年12月26日，在郑州市肿瘤医院向远在福建的白血病患者--一名年仅19岁的边防兵捐献了造血干细胞，成功地挽救了这位战士的生命。他也因此成为中国第839位、河南省第69位、焦作市第5位造血干细胞捐献者。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">“家人都很支持，母亲从小就教育我多为别人着想，帮助别人也是帮助自己。”在任抗战看来，这个平凡的善举，却能救人一命，觉得很幸运，也很骄傲。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">因为有爱，各项荣誉也纷至沓来。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">2011年，任抗战成为河南省红十字优秀志愿者，并先后荣获全国无偿献血奉献奖金奖、无偿捐献造血干细胞奉献奖，也成为焦作市唯一一个获得两项国家献血奖的市民;还在2011年11月入选了“中国好人榜”。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\"><strong>从一个人的爱心故事，到一群人的爱心义举</strong></p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">榜样的力量是无穷的。一个人、一段话、一个故事,这些看似平凡简单,却能点燃更多人心中向善的火焰。无疑，作为这个企业里第一位捐献者的任抗战，就是大家身边的榜样。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">“‘捐献对身体有没有害’‘我可不可以捐’，捐献后回来上班，领导见我第一面就问了这两个问题……”在捐献造血干细胞成功后，任抗战的行为在不知不觉中，影响了周围许多同事。这也让他更加清楚地认识到捐献造血干细胞的重要性，也发现很多人对捐献造血干细胞采集并不了解。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">后面，多氟多成立了以任抗战为主、众多员工参加的造血干细胞捐献志愿服务队。任抗战也做起了义务宣传员，利用企业内部刊物将自己捐献造血干细胞的过程宣传出去，让更多人了解并愿意捐献造血干细胞。“或许里面的每一句话，都有可能救活一个人。”任抗战说。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">2008年5月底的一个场景，让河南焦作红会工作人员李玉梅印象深刻:当天他们来多氟多进行造血干细胞采样，准备了100份样品，没想到到现场后发现，参加采样的人越来越多，整个礼堂都站满了人。“很快就采完了98份，带来的样品根本不够。”李玉梅说。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"microsoft=\"\" yahei\",=\"\" \"wenquanyi=\"\" micro=\"\" hei\",=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" letter-spacing:=\"\" 0.5px;\"=\"\">更令人惊喜的是，在这98份样品中，已经有一份样品在2010年4月初与一名白血病人初配配型成功，并成功挽救了一个17岁学生的生命，爱心传奇又一次续写。</p>', '2', null, null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_news` VALUES ('12', '土耳其律师要求逮捕美空军指挥官：他们参与了政变', '1', '2683', '<p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">海外网<strong>8月12日电</strong>土耳其律师呼吁当局逮捕在因吉尔利克(Incirlik)空军基地的美国士兵及其指挥官,声称他们与2016年政变企图背后的运动有关。律师们期望法庭颁发令状搜查这间基地,阻止该基地班机离开土耳其。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\"><img src=\"http://p1.qhimgs4.com/t018b93120315e09f3f.webp\" style=\"border-width: initial; border-style: none; display: block; margin: 7px auto; max-width: 100%; width: 660px;\"></p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">图为美军因吉尔利克基地(东方IC)</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">据《今日俄罗斯》(RT)消息,随着安卡拉和华盛顿之间的政治争端愈演愈烈,土耳其亲政府组织——社会公正和援助协会的律师要求“逮捕因吉尔利克基地士兵的上司、美国空军指挥官”。律师们表示,美空军指挥官“在2016年7月15日的失败政变中扮演重要角色。”</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">据报道,在阿达纳的首席检察官办公室提交的法庭文件中,这些要求的细节获得证实。土耳其律师指控,美国军方试图通过他们与法土拉·葛兰的勾结活动以破坏土耳其宪法秩序。安卡拉声称,在2016年7月15日未遂的政变企图背后操控者正是法土拉·葛兰。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">社会正义与援助协会主席穆罕默德·格姆克(MuhammedGmük)告诉媒体,他们要求逮捕的美国士兵与FETO(葛兰运动)或全球美国恐怖组织有密切关系。随后,格姆克指出美军士兵中的12名“可疑人员”。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">格姆克表示,“我们相信所有的责任都皆真实可靠,我们提供的证据绝对非常有力。”格姆克说,调查可能牵涉到许多美国官员,包括士兵、大使馆和领事馆工作人员,甚至包括前美国大使约翰·巴斯(JohnBass),因为,根据视频记录他当时“正在与政变团队聊天”。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">除了拘留之外,律师们还要求当局下达对美军基地的搜查和扣押令,以便收集证据。律师们要求扣留从基地起飞的所有出境的美国航班。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">当被问及期待华盛顿会对此有什么样的回应时,格姆克表示其反应“并不重要”,因为土耳其不需要尊重美国。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">据了解,因吉尔利克是美军在土耳其重要基地,该基地被用作打击“伊斯兰国”作战行动,拥有约2,200名美国人常年驻守。</p>', '2', null, null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `my_news` VALUES ('13', '山东高密：“标准化”让党群服务更贴心', '1', '2690', '<p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">在高密市党群服务中心红色课堂上,党员正接受党性教育。“红色课堂”共分为誓词教育、党史教育、全面从严治党教育、党的十九大精神学习四大部分,是一处党性党史教育基地。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">在高密市党群服务中心院内,原本有一处闲置的车库,经工作人员精心“打扮”后变为爱心驿站,在炎热的夏日里为高密市区的环卫工人送去了一丝“凉意”。“以往我们都是自己从家里捎水,还没等下班水就喝光了。现在好了,可以来这里喝绿豆汤解解暑。这么热的天,有个爱心场所休息很不错。”8月3日,接过爱心驿站工作人员递过来的绿豆汤,60岁的环卫工人李玉芳说。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">爱心驿站是高密市党群服务中心最新推出的便民功能。从2017年10月开工建设,到今年5月份正式投入使用,高密市党群服务中心的运行,标志着高密市打造了覆盖市、镇、社区、村的“15分钟党群服务圈”。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">“我们顺应服务型创新型党组织建设要求,满足广大党员群众就近获得服务、参加活动的需要,聚焦党群服务,整合优质资源,以市党群服务中心、非公企业党群服务中心、社会组织党群服务中心为龙头,建成区域性党群服务中心8处、镇街区党群服务中心15处、社区党群服务中心109处、村级党群服务站947处,打造了覆盖全市的‘15分钟党群服务圈’。”高密市委常委、组织部长孙业宗告诉记者。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\"><strong>(一)</strong></p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">从“展板式”到“功能式”转变,是高密市打造党群服务中心的一大亮点。在高密看来,党群服务中心不应只局限于“展板”式、走马观花式宣教,而应该真正为党员、群众服务,以此提升党组织的凝聚力、向心力。</p><p style=\"margin-bottom: 26px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; letter-spacing: 0.5px;\">据高密市委组织部副部长、“两新”组织工委书记冯玉庆介绍,建筑面积2500平方米的高密市党群服务中心是该市党群服务的核心和枢纽,集服务、活动、教育、培训、示范等功能于一体,按照“六红一家一长廊”功能布局,规划建设了红色驿站、红色益苑、红色书屋、红色e厅、红色氧吧、红色课堂、流动党员之家、党内法规制度知识长廊八大功能区。中心对外开放后已有126批次、5118名党员群众进行了参观学习和党性教育等。</p>', '2', null, null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=2494 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='上传文件记录表';

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
INSERT INTO `my_user` VALUES ('10', '超级管理员', '1', '18888888888', '46cc468df60c961d8da2326337c7aa58', '1', null, '1', null, '', '2018-08-31 09:11:51', '7', '2018-08-31 09:11:51', '2018-08-24 13:51:09', '0');
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
) ENGINE=InnoDB AUTO_INCREMENT=293 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色菜单表';

-- ----------------------------
-- Records of my_user_menu
-- ----------------------------
INSERT INTO `my_user_menu` VALUES ('1', '工作台', 'admin', '0', '1', 'fa-dashboard', '5000', 'admin/index/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('2', '服务管理', 'admin', '0', '1', 'fa-server', '5000', '', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('3', '空间管理', 'admin', '0', '1', 'fa-building-o', '5000', '', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('5', '平台管理', 'admin', '0', '1', 'fa-desktop', '5000', '', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('6', '投资管理', 'admin', '0', '1', 'fa-credit-card', '5000', 'admin/invest/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('7', '系统管理', 'admin', '0', '1', 'fa-gears', '5000', '', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('58', '档案库', 'admin', '7', '2', null, '5000', 'admin/archive/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('59', '企业库', 'admin', '7', '2', null, '5000', 'admin/company/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('60', '用户管理', 'admin', '7', '2', null, '5000', 'admin/user/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('61', '人力资源管理', 'admin', '7', '2', null, '5000', 'admin/staff/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('62', '大事记', 'admin', '7', '2', null, '5000', 'admin/memorabilia/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('63', '咨询服务', 'admin', '2', '2', null, '5000', 'admin/consult/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('64', '工商注册', 'admin', '2', '2', null, '5000', 'admin/business/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('65', '商标注册', 'admin', '2', '2', null, '5000', 'admin/brand/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('66', '商务秘书', 'admin', '2', '2', null, '5000', 'admin/secretary/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('67', '股权服务', 'admin', '2', '2', null, '5000', 'admin/stock/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('68', '定制服务', 'admin', '2', '2', null, '5000', 'admin/customize/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('69', '服务缴费管理', 'admin', '2', '2', null, '5000', 'admin/service_pay_log/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('70', '合同管理', 'admin', '3', '2', null, '5000', '', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('71', '孵化空间管理', 'admin', '3', '2', null, '5000', 'admin/iqbt/iqbtlist', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('75', 'banner设置', 'admin', '5', '2', null, '5000', 'admin/banner/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('76', '会员管理', 'admin', '5', '2', null, '5000', 'admin/vip/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('77', '第三方服务管理', 'admin', '5', '2', null, '5000', 'admin/etprs_service/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('78', '信息中心', 'admin', '5', '2', null, '5000', 'admin/message/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('79', '新闻资讯', 'admin', '5', '2', null, '5000', 'admin/news/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('80', '活动管理', 'admin', '5', '2', null, '5000', 'admin/activity/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('81', '平台用户管理', 'admin', '5', '2', null, '5000', 'admin/customer/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('82', '添加新角色', 'admin', '60', '3', null, '5000', 'admin/role/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('83', '编辑角色', 'admin', '60', '3', null, '5000', 'admin/role/edit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('84', '删除角色', 'admin', '60', '3', null, '5000', 'admin/role/delete', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('85', '添加用户', 'admin', '60', '3', null, '5000', 'admin/user/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('86', '重置密码', 'admin', '60', '3', null, '5000', 'admin/user/resetdftpwd', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('87', '冻结用户', 'admin', '60', '3', null, '5000', 'admin/user/frzy', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('88', '解冻用户', 'admin', '60', '3', null, '5000', 'admin/user/unfrzy', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('89', '编辑用户', 'admin', '60', '3', null, '5000', 'admin/user/edit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('90', '导入', 'admin', '59', '3', null, '5000', 'admin/company/import', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('91', '新增', 'admin', '61', '3', null, '5000', 'admin/staff/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('93', '导入', 'admin', '61', '3', null, '5000', 'admin/staff/import', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('94', '导出', 'admin', '61', '3', null, '5000', 'admin/staff/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('95', '编辑', 'admin', '61', '3', null, '5000', 'admin/staff/edit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('97', '新增', 'admin', '62', '3', null, '5000', 'admin/memorabilia/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('99', '查看', 'admin', '62', '3', null, '5000', 'admin/memorabilia/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('100', '编辑', 'admin', '62', '3', null, '5000', 'admin/memorabilia/edit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('102', '新增', 'admin', '6', '3', null, '5000', 'admin/invest/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('103', '查看', 'admin', '6', '3', null, '5000', 'admin/invest/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('104', '编辑', 'admin', '6', '3', null, '5000', 'admin/invest/edit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('105', '新增', 'admin', '64', '3', null, '5000', 'admin/business/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('106', '服务设置', 'admin', '64', '3', null, '5000', 'admin/service/index', 'id=1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('107', '查看', 'admin', '64', '3', null, '5000', 'admin/business/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('108', '新增', 'admin', '63', '3', null, '5000', 'admin/consult/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('109', '查看', 'admin', '63', '3', null, '5000', 'admin/consult/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('110', '服务设置', 'admin', '65', '3', null, '5000', 'admin/service/index', 'id=2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('111', '新增', 'admin', '65', '3', null, '5000', 'admin/brand/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('112', '查看', 'admin', '65', '3', null, '5000', 'admin/brand/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('114', '新增', 'admin', '67', '3', null, '5000', 'admin/stock/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('115', '查看', 'admin', '67', '3', null, '5000', 'admin/stock/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('116', '服务设置', 'admin', '67', '3', null, '5000', 'admin/service/index', 'id=4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('119', '导出', 'admin', '67', '3', null, '5000', 'admin/stock/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('120', '新增', 'admin', '68', '3', null, '5000', 'admin/customize/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('121', '查看', 'admin', '68', '3', null, '5000', 'admin/customize/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('122', '服务设置', 'admin', '68', '3', null, '5000', 'admin/service/index', 'id=5', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('123', '合同管理', 'admin', '2', '2', null, '5000', 'admin/service_pact/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('124', '新增', 'admin', '66', '3', null, '5000', 'admin/secretary/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('125', '服务设置', 'admin', '66', '3', null, '5000', 'admin/service/index', 'id=3', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('126', '查看', 'admin', '66', '3', null, '5000', 'admin/secretary/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('127', '纳税管理', 'admin', '66', '3', null, '5000', 'admin/tax/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('128', '数据统计', 'admin', '127', '4', null, '5000', 'admin/tax/statistic', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('129', '年报管理', 'admin', '66', '3', null, '5000', 'admin/year_report/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('130', '上传', 'admin', '58', '3', null, '3', 'admin/archive/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('131', '导出', 'admin', '58', '3', null, '2', 'admin/archive/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('132', '下载', 'admin', '58', '3', null, '1', 'admin/archive/downloadcheck', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('133', '新增', 'admin', '59', '3', null, '5000', 'admin/company/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('134', '查看', 'admin', '59', '3', null, '5000', 'admin/company/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('136', '导出', 'admin', '59', '3', null, '5000', 'admin/company/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('137', '编辑', 'admin', '59', '3', null, '5000', 'admin/company/edit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('138', '导出', 'admin', '6', '3', null, '5000', 'admin/invest/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('139', '导出', 'admin', '63', '3', null, '5000', 'admin/consult/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('140', '分配', 'admin', '63', '3', null, '5000', 'admin/consult/operator', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('141', '导出', 'admin', '64', '3', null, '5000', 'admin/service/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('142', '导出', 'admin', '65', '3', null, '5000', 'admin/brand/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('143', '导出', 'admin', '66', '3', null, '5000', 'admin/secretary/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('144', '导出', 'admin', '68', '3', null, '5000', 'admin/customize/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('145', '导出', 'admin', '69', '3', null, '5000', 'admin/service_pay_log/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('146', '编辑', 'admin', '69', '3', null, '5000', 'admin/service_pay_log/edit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('147', '上传', 'admin', '123', '3', null, '5000', 'admin/service_pact/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('148', '导出', 'admin', '123', '3', null, '5000', 'admin/service_pact/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('149', '编辑', 'admin', '123', '3', null, '5000', 'admin/service_pact/edit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('150', '新增banner', 'admin', '75', '3', null, '5000', 'admin/banner/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('151', '删除', 'admin', '75', '3', null, '5000', 'admin/banner/delete', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('152', '房间管理', 'admin', '3', '2', null, '5000', 'admin/room/roominfo?buildId=0&iqbtId=0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('153', '新增', 'admin', '152', '3', null, '5000', 'admin/room/addroomnew', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('154', '编辑', 'admin', '152', '3', null, '5000', 'admin/room/editnew', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('155', '删除', 'admin', '152', '3', null, '5000', 'admin/room/delRoom', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('156', '导出', 'admin', '152', '3', null, '5000', 'admin/room/exportRooms', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('157', '新增', 'admin', '76', '3', null, '5000', 'admin/vip/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('158', '导出', 'admin', '76', '3', null, '5000', 'admin/vip/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('159', '查看', 'admin', '76', '3', null, '5000', 'admin/vip/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('160', '会员设置', 'admin', '76', '3', null, '5000', 'admin/vip_setting/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('161', '会员收款明细', 'admin', '76', '3', null, '5000', 'admin/vip_pay_log/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('162', '新增', 'admin', '161', '4', null, '5000', 'admin/vip_pay_log/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('163', '导入', 'admin', '161', '4', null, '5000', 'admin/vip_pay_log/import', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('164', '导出', 'admin', '161', '4', null, '5000', 'admin/vip_pay_log/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('165', '导入', 'admin', '127', '4', null, '5000', 'admin/tax/import', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('166', '导出', 'admin', '127', '4', null, '5000', 'admin/tax/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('167', '上报', 'admin', '127', '4', null, '5000', 'admin/tax/report', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('168', '导入', 'admin', '129', '4', null, '5000', 'admin/year_report/import', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('169', '导出', 'admin', '129', '4', null, '5000', 'admin/year_report/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('170', '查看', 'admin', '77', '3', null, '5000', 'admin/etprs_service/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('171', '下线', 'admin', '77', '3', null, '5000', 'admin/etprs_service/off', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('172', '删除', 'admin', '77', '3', null, '5000', 'admin/etprs_service/delete', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('173', '服务类型管理', 'admin', '77', '3', null, '5000', 'admin/etprs_service_category/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('174', '新增', 'admin', '173', '4', null, '5000', 'admin/etprs_service_category/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('175', '编辑', 'admin', '173', '4', null, '5000', 'admin/etprs_service_category/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('176', '预约参观', 'admin', '1', '3', null, '5000', 'admin/work/visit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('177', '确认', 'admin', '176', '4', null, '5000', 'admin/work/addCstm', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('178', '查看', 'admin', '176', '4', null, '5000', 'admin/work/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('180', '活动报名', 'admin', '1', '3', null, '5000', 'admin/work/actapl', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('182', '通过', 'admin', '180', '4', null, '5000', 'admin/activity/saveSign', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('183', '拒绝', 'admin', '180', '4', null, '5000', 'admin/activity/saveSign', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('186', '新增', 'admin', '78', '3', null, '5000', 'admin/message/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('187', '导出', 'admin', '78', '3', null, '5000', 'admin/message/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('188', '查看', 'admin', '78', '3', null, '5000', 'admin/message/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('189', '下线', 'admin', '78', '3', null, '5000', 'admin/message/off', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('190', '申请入驻', 'admin', '1', '3', null, '5000', 'admin/work/etprslist', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('191', '查看', 'admin', '190', '4', null, '5000', 'admin/Etprs/etprsdetail', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('192', '编辑', 'admin', '78', '3', null, '5000', 'admin/message/edit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('193', '服务订单', 'admin', '1', '3', null, '5000', 'admin/work/serviceorderlist', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('194', '新增', 'admin', '79', '3', null, '5000', 'admin/news/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('195', '查看', 'admin', '79', '3', null, '5000', 'admin/news/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('196', '编辑', 'admin', '79', '3', null, '5000', 'admin/news/edit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('197', '导出', 'admin', '79', '3', null, '5000', 'admin/news/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('198', '设置banner', 'admin', '79', '3', null, '5000', 'admin/news/banner', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('199', '删除', 'admin', '79', '3', null, '5000', 'admin/news/delete', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('200', '导入', 'admin', '81', '3', null, '5000', 'admin/company_plat/import', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('201', '导出', 'admin', '81', '3', null, '5000', 'admin/company_plat/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('202', '新增', 'admin', '81', '3', null, '5000', 'admin/company_plat/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('203', '重置密码', 'admin', '81', '3', null, '5000', 'admin/company_plat/reset', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('204', '冻结', 'admin', '81', '3', null, '5000', 'admin/company_plat/freeze', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('205', '解冻', 'admin', '81', '3', null, '5000', 'admin/company_plat/unfreeze', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('207', '新增', 'admin', '72', '3', null, '5000', 'admin/customer/addCustomer', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('208', '导入', 'admin', '72', '3', null, '5000', 'admin/index/customerXlsData', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('209', '编辑', 'admin', '72', '3', null, '5000', 'admin/customer/editcustomer', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('210', '跟进', 'admin', '72', '3', null, '5000', 'admin/customer/addflow', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('211', '导出', 'admin', '72', '3', null, '5000', 'admin/customer/exportCus', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('212', '发起入驻', 'admin', '73', '3', null, '5000', 'admin/etprs/enter', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('213', '导入', 'admin', '73', '3', null, '5000', 'admin/index/etprsXlsData', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('214', '导出', 'admin', '73', '3', null, '5000', 'admin/etprs/exportEtprs', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('215', '企业信息', 'admin', '73', '3', null, '5000', 'admin/etprs/etprsdetail', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('216', '退出', 'admin', '73', '3', null, '5000', 'admin/etprs/backCus', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('217', '毕业', 'admin', '73', '3', null, '5000', 'admin/etprs/saveQuit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('218', '上传', 'admin', '74', '3', null, '5000', 'admin/pact/savePact', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('219', '导出', 'admin', '74', '3', null, '5000', 'admin/pact/exportEtprs', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('220', '编辑', 'admin', '74', '3', null, '5000', 'admin/pact/edit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('221', '新增空间', 'admin', '71', '3', null, '5000', 'admin/iqbt/addiqbt', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('222', '查看', 'admin', '71', '3', null, '5000', 'admin/iqbt/iqbtInfo', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('223', '楼座管理', 'admin', '71', '3', null, '5000', 'admin/room/buildlist', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('224', '编辑', 'admin', '71', '3', null, '5000', 'admin/iqbt/editIqbt', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('225', '导出', 'admin', '80', '3', null, '5000', 'admin/activity/exportAct', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('226', '发布活动', 'admin', '80', '3', null, '5000', 'admin/activity/addact', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('227', '查看', 'admin', '80', '3', null, '5000', 'admin/activity/actinfo', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('228', '编辑', 'admin', '80', '3', null, '5000', 'admin/activity/editact', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('229', '上传活动总结', 'admin', '80', '3', null, '5000', 'admin/activity/summary', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('230', '查看活动总结', 'admin', '80', '3', null, '5000', 'admin/activity/suminfo', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('231', '编辑活动总结', 'admin', '80', '3', null, '5000', 'admin/activity/summary', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('232', '报名管理', 'admin', '80', '3', null, '5000', 'admin/activity/signmanage', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('233', '导入', 'admin', '232', '4', null, '5000', 'admin/index/actapplyxlsdata', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('234', '导出', 'admin', '232', '4', null, '5000', 'admin/activity/exportSign', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('235', '通过', 'admin', '232', '4', null, '5000', 'admin/activity/saveSign', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('236', '拒绝', 'admin', '232', '4', null, '5000', 'admin/activity/saveSign', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('237', '确认订单', 'admin', '64', '3', null, '5000', 'admin/business/changeStatus', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('238', '确认订单', 'admin', '65', '3', null, '5000', 'admin/brand/changeStatus', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('239', '确认订单', 'admin', '66', '3', null, '5000', 'admin/secretary/changeStatus', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('240', '确认订单', 'admin', '67', '3', null, '5000', 'admin/stock/changeStatus', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('241', '确认订单', 'admin', '68', '3', null, '5000', 'admin/customize/changeStatus', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('242', '编辑', 'admin', '215', '4', null, '5000', 'admin/etprs/saveEditEtprs', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('243', '拒绝', 'admin', '215', '4', null, '5000', 'admin/etprs/changeVipStatus', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('244', '通过', 'admin', '215', '4', null, '5000', 'admin/etprs/changeVipStatus', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('245', '确认入驻', 'admin', '190', '4', null, '5000', 'admin/etprs/changeStatus', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('246', '保存', 'admin', '176', '4', null, '5000', 'admin/work/saveVisit', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('247', '首页', 'frontend', '0', '1', 'fa-dashboard', '5000', 'customer/index/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('248', '服务管理', 'frontend', '0', '1', 'fa-server', '5000', '', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('249', '服务列表', 'frontend', '248', '2', null, '5000', 'customer/etprs_service/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('250', '我的订单', 'frontend', '248', '2', null, '5000', 'customer/etprs_order/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('251', '我的需求', 'frontend', '248', '2', null, '5000', 'customer/requests/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('252', '基础服务订单', 'frontend', '0', '1', 'fa-credit-card', '5000', 'customer/service/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('253', '活动管理', 'frontend', '0', '1', 'fa-group', '5000', 'customer/activity/etprsactlist', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('254', '信息中心', 'frontend', '0', '1', 'fa-envelope-o', '5000', 'customer/message/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('255', '查看', 'frontend', '249', '3', null, '5000', 'customer/etprs_service/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('256', '新增', 'frontend', '249', '3', null, '5000', 'customer/etprs_service/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('257', '签约入驻.', 'admin', '73', '3', null, '5000', 'admin/etprs/roomAllo', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('258', '签约入驻', 'admin', '73', '3', null, '5000', 'admin/etprs/roomallochange', 'id=1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('259', '变更', 'admin', '73', '3', null, '5000', 'admin/etprs/roomallochange', 'id=2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('260', '续约', 'admin', '73', '3', null, '5000', 'admin/etprs/roomallochange', 'id=3', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('262', '查看', 'frontend', '251', '3', null, '5000', 'customer/requests/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('263', '查看', 'frontend', '250', '3', null, '5000', 'customer/etprs_order/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('264', '导出', 'frontend', '250', '3', null, '5000', 'customer/etprs_order/export', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('265', '我的需求', 'customer', '0', '1', 'fa-server', '5000', 'customer/requests/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('266', '查看', 'customer', '265', '3', null, '5000', 'customer/requests/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('267', '基础服务订单', 'customer', '0', '1', 'fa-credit-card', '5000', 'customer/service/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('268', '查看', 'frontend', '252', '3', null, '5000', 'customer/service/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('269', '查看', 'customer', '267', '3', null, '5000', 'customer/service/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('270', '活动管理', 'customer', '0', '1', 'fa-group', '5000', 'customer/activity/etprsactlist', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('272', '活动详情', 'frontend', '253', '3', null, '5000', 'customer/activity/actinfo', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('274', '我的需求', 'vip', '0', '1', 'fa-server', '5000', 'customer/requests/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('275', '基础服务订单', 'vip', '0', '1', 'fa-credit-card', '5000', 'customer/service/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('276', '活动管理', 'vip', '0', '1', 'fa-group', '5000', 'customer/activity/etprsactlist', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('277', '信息中心', 'vip', '0', '1', 'fa-envelope-o', '5000', 'customer/message/index', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('278', '查看', 'vip', '274', '3', null, '5000', 'customer/requests/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('279', '查看', 'vip', '267', '3', null, '5000', 'customer/service/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('281', '活动详情', 'customer', '270', '3', null, '5000', 'customer/activity/actinfo', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('282', '活动详情', 'vip', '276', '3', null, '5000', 'customer/activity/actinfo', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('283', '发布信息', 'frontend', '254', '3', null, '5000', 'customer/message/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('284', '发布信息', 'vip', '277', '3', null, '5000', 'customer/message/create', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('285', '查看', 'frontend', '254', '3', null, '5000', 'customer/message/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('286', '查看', 'vip', '277', '3', null, '5000', 'customer/message/show', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('287', '资料管理', 'customer', '0', '3', null, '5000', 'customer/customer/editcustomer', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('288', '资料管理', 'frontend', '0', '3', null, '5000', 'customer/customer/editcustomer', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('289', '资料管理', 'vip', '0', '3', null, '5000', 'customer/customer/editcustomer', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('290', '资料管理', 'custome', '0', '3', null, '5000', 'customer/customer/enter', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('291', '资料管理', 'frontend', '0', '3', null, '5000', 'customer/customer/enter', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `my_user_menu` VALUES ('292', '资料管理', 'vip', '0', '3', null, '5000', 'customer/customer/enter', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '1');

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
