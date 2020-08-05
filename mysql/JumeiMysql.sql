/*
 Navicat Premium Data Transfer

 Source Server         : chen
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : web14

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 05/08/2020 23:20:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tab_collage
-- ----------------------------
DROP TABLE IF EXISTS `tab_collage`;
CREATE TABLE `tab_collage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comment` varchar(20) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `num` varchar(20) DEFAULT NULL,
  `functionl` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `desp` varchar(100) DEFAULT NULL,
  `discount` double(10,0) DEFAULT NULL,
  `originalPr` double(10,0) DEFAULT NULL,
  `purchase` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_collage
-- ----------------------------
BEGIN;
INSERT INTO `tab_collage` VALUES (1, '1962条评论', 'images/4422562_1000_1000.jpg', '[2人团]', '[手机专享]', 'Dr.Jart+蒂佳婷黑色药丸清洁面膜2盒装', 88, 290, '去开团');
INSERT INTO `tab_collage` VALUES (2, '388条评论', 'images/4966848_1000_1000.jpg', '[2人团]', '[手机专享]', '珂润（Curel）润浸保湿面霜40g', 129, 188, '去开团');
INSERT INTO `tab_collage` VALUES (3, '1962条评论', 'images/4439546_1000_1000.jpg', '[2人团]', '[手机专享]', '[24小时内发货]it\'s skin尹思晶钻蜗牛清爽泡沫洗面奶', 55, 168, '去开团');
INSERT INTO `tab_collage` VALUES (4, '164条评论', 'images/5099314_1000_1000.jpg', '[2人团]', '[手机专享]', '菲诗小铺隔离霜妆前乳 保湿遮瑕', 27, 49, '去开团');
COMMIT;

-- ----------------------------
-- Table structure for tab_famousbrand
-- ----------------------------
DROP TABLE IF EXISTS `tab_famousbrand`;
CREATE TABLE `tab_famousbrand` (
  `id` int NOT NULL AUTO_INCREMENT,
  `desp` varchar(100) DEFAULT NULL,
  `bigimg` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `smallimg` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_famousbrand
-- ----------------------------
BEGIN;
INSERT INTO `tab_famousbrand` VALUES (1, '低至19元 全场包邮', 'images/5ee87054c2284_2048_1024.jpg', '精彩内衣夏季特卖', '剩余2天0时', 'images/13885.jpg');
INSERT INTO `tab_famousbrand` VALUES (2, '泡腾片仅需89', 'images/5eec7be79ef6a_2048_1024.jpg', '营养研究美茶馆', '剩余2天0时', 'images/26708.jpg');
INSERT INTO `tab_famousbrand` VALUES (3, '49元2件起 满199元减20元', 'images/5ee9ad7aed77c_2048_1024.jpg', '618 狂欢不停歇', '剩余2天0时', 'images/19258.jpg');
INSERT INTO `tab_famousbrand` VALUES (4, '49元2件 79元2件', 'images/5ee9866c14b0b_2048_1024.jpg', '夏季新品 全场钜惠', '剩余2天0时', 'images/17730.jpg');
INSERT INTO `tab_famousbrand` VALUES (5, '低至9元起', 'images/5eeadbf83be6c_2048_1024.jpg', '曲线之美 玲珑有致', '剩余2天0时', 'images/19606.jpg');
INSERT INTO `tab_famousbrand` VALUES (6, '内衣2件29元包邮', 'images/5eeb33bf1f40a_2048_1024.jpg', '茜樱思品牌特卖', '剩余2天0时', 'images/20712.jpg');
INSERT INTO `tab_famousbrand` VALUES (7, '低至9元起', 'images/5ee839aca63c6_2048_1024.jpg', '情趣是生活最美好的调剂', '剩余2天0时', 'images/19604.jpg');
INSERT INTO `tab_famousbrand` VALUES (8, '满128减10不封顶', 'images/5ee727016d15e_2048_1024.jpg', '跨洋夏季运动鞋专场', '剩余2天0时', 'images/18730.jpg');
INSERT INTO `tab_famousbrand` VALUES (9, '全场商品9.9元起', 'images/5ee1ef35848ca_2048_1024.jpg', '植护护养，天生滋润', '剩余2天0时', 'images/15334.jpg');
COMMIT;

-- ----------------------------
-- Table structure for tab_groupbuy
-- ----------------------------
DROP TABLE IF EXISTS `tab_groupbuy`;
CREATE TABLE `tab_groupbuy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `presentPr` double(10,0) DEFAULT NULL,
  `originalPr` double(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_groupbuy
-- ----------------------------
BEGIN;
INSERT INTO `tab_groupbuy` VALUES (1, 'images/4208174_1000_1000.jpg', '【下单立减60元】日本版安耐晒黄金防晒', 259, 478);
INSERT INTO `tab_groupbuy` VALUES (2, 'images/4136956_1000_1000.jpg', '【效期至2021年3月】日本版安耐晒黄金水钻防晒', 129, 298);
INSERT INTO `tab_groupbuy` VALUES (3, 'images/2766900_1000_1000.jpg', '【效期至2020年11月1日】AGE20\'S红宝石水光遮瑕精华七点粉底膏', 49, 240);
INSERT INTO `tab_groupbuy` VALUES (4, 'images/2009849_1000_1000.jpg', '【效期至2021年5月】城野医生毛孔对策收敛水', 55, 130);
INSERT INTO `tab_groupbuy` VALUES (5, 'images/2113809_1000_1000.jpg', '【效期至2021年1月】黛珂天然植物薄荷紫苏化妆水', 299, 530);
INSERT INTO `tab_groupbuy` VALUES (6, 'images/3921130_1000_1000.jpg', '资生堂限量款心机蜜粉25g', 289, 498);
COMMIT;

-- ----------------------------
-- Table structure for tab_groupbuydetails
-- ----------------------------
DROP TABLE IF EXISTS `tab_groupbuydetails`;
CREATE TABLE `tab_groupbuydetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `presentPr` double(10,0) DEFAULT NULL,
  `originalPr` double(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_groupbuydetails
-- ----------------------------
BEGIN;
INSERT INTO `tab_groupbuydetails` VALUES (1, 'images/4208174_1000_1000.jpg', '【下单立减60元】日本版安耐晒黄金防晒', 259, 478);
INSERT INTO `tab_groupbuydetails` VALUES (2, 'images/4136956_1000_1000.jpg', '【效期至2021年3月】日本版安耐晒黄金水钻防晒', 129, 298);
INSERT INTO `tab_groupbuydetails` VALUES (3, 'images/2766900_1000_1000.jpg', '【效期至2020年11月1日】AGE20\'S红宝石水光遮瑕精华七点粉底膏', 49, 240);
INSERT INTO `tab_groupbuydetails` VALUES (4, 'images/2009849_1000_1000.jpg', '【效期至2021年5月】城野医生毛孔对策收敛水', 55, 130);
INSERT INTO `tab_groupbuydetails` VALUES (5, 'images/2113809_1000_1000.jpg', '【效期至2021年1月】黛珂天然植物薄荷紫苏化妆水', 299, 530);
INSERT INTO `tab_groupbuydetails` VALUES (6, 'images/3921130_1000_1000.jpg', '资生堂限量款心机蜜粉25g', 289, 498);
COMMIT;

-- ----------------------------
-- Table structure for tab_hotactivities
-- ----------------------------
DROP TABLE IF EXISTS `tab_hotactivities`;
CREATE TABLE `tab_hotactivities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `desp` varchar(100) DEFAULT NULL,
  `bigimg` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `smallimg` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_hotactivities
-- ----------------------------
BEGIN;
INSERT INTO `tab_hotactivities` VALUES (1, '内裤满288减68', 'images/5eeaccec34cfd_2048_1024.jpg', '维密品牌专场', '剩余2天0时', 'images/9307.jpg');
INSERT INTO `tab_hotactivities` VALUES (2, '全场3.6折起', 'images/5eeb23376240d_2048_1024.jpg', 'MCM品牌专场', '剩余2天0时', 'images/8714.jpg');
INSERT INTO `tab_hotactivities` VALUES (3, '8.5折起', 'images/5eeabc09dfd5f_2048_1024.jpg', 'YURITAN新品上架', '剩余2天0时', 'images/28168.jpg');
INSERT INTO `tab_hotactivities` VALUES (4, '全场2.3折起', 'images/5ee9e2f4c2826_2048_1024.jpg', 'katespate&tory箱包品牌团', '剩余2天0时', 'images/1164.jpg');
INSERT INTO `tab_hotactivities` VALUES (5, '全场5折起', 'images/5ee9d8a55828f_2048_1024.jpg', 'DIOR ARMANI彩妆品牌团', '剩余2天0时', 'images/25758.jpg');
INSERT INTO `tab_hotactivities` VALUES (6, '全场4.5折起', 'images/5ee9d9d334c76_2048_1024.jpg', '肌肤之钥资生堂品牌专场', '剩余2天0时', 'images/25782.jpg');
INSERT INTO `tab_hotactivities` VALUES (7, '全场2.5折起', 'images/5eeadbb575274_2048_1024.jpg', 'PANDORA时尚饰品专场', '剩余2天0时', 'images/9061.jpg');
INSERT INTO `tab_hotactivities` VALUES (8, '全场3.5折起', 'images/5eeadd972dac9_2048_1024.jpg', 'Ferragamo全品类专场', '剩余2天0时', 'images/6772.jpg');
INSERT INTO `tab_hotactivities` VALUES (9, '全场4.8折起', 'images/5eeb39e8b3fb3_2048_1024.jpg', '日系美妆混场', '剩余2天0时', 'images/26198.jpg');
INSERT INTO `tab_hotactivities` VALUES (10, '全场4.4折起', 'images/5eec344e3d8bc_2048_1024.jpg', 'JIMMYCH女鞋专场', '剩余2天0时', 'images/8409.jpg');
COMMIT;

-- ----------------------------
-- Table structure for tab_index
-- ----------------------------
DROP TABLE IF EXISTS `tab_index`;
CREATE TABLE `tab_index` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `presentPr` double(20,0) DEFAULT NULL,
  `originalPr` double(20,0) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_index
-- ----------------------------
BEGIN;
INSERT INTO `tab_index` VALUES (1, 'images/4879066_dx_1154_400 (1).jpg', '李佳琦推荐UNNY遮瑕笔遮瑕膏遮盖斑点痘印遮瑕液7.5g', 49, 99, '339条评论');
INSERT INTO `tab_index` VALUES (2, 'images/4909522_dx_1154_400.jpg', 'The ordinary 10%壬二酸杜鹃花精华液 收缩无孔', 85, 159, '17条评论');
INSERT INTO `tab_index` VALUES (3, 'images/4992726_dx_1154_400.jpg', 'Hairfinity发际线笔7ml', 109, 336, '3条评论');
INSERT INTO `tab_index` VALUES (4, 'images/4917738_dx_1154_400.jpg', '普斯', 49, 99, '339条评论');
INSERT INTO `tab_index` VALUES (5, 'images/4872268_dx_1154_400.jpg', '官方授权中国台湾·欣兰多媚卡雅黑冻膜225g', 99, 148, '339条评论');
INSERT INTO `tab_index` VALUES (6, 'images/5176226_dx_1154_400.jpg', '李佳琦推荐韩国acwell艾珂薇N4舒缓保湿急救面霜', 69, 298, '339条评论');
INSERT INTO `tab_index` VALUES (7, 'images/4876270_dx_1154_400.jpg', 'UNNY悠宜卸妆水500ml拥有护肤般卸妆体验', 52, 89, '339条评论');
COMMIT;

-- ----------------------------
-- Table structure for tab_phoneuser
-- ----------------------------
DROP TABLE IF EXISTS `tab_phoneuser`;
CREATE TABLE `tab_phoneuser` (
  `id` int NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_phoneuser
-- ----------------------------
BEGIN;
INSERT INTO `tab_phoneuser` VALUES (1, '18792228962', 'admin', '123', '123@qq.com');
INSERT INTO `tab_phoneuser` VALUES (2, '13988884908', 'user1', '456', '456@qq.com');
INSERT INTO `tab_phoneuser` VALUES (5, '13789046582', 'user9', '123', '123@qq.com');
INSERT INTO `tab_phoneuser` VALUES (6, '13966173761', 'user8', '123', '123@qq.com');
COMMIT;

-- ----------------------------
-- Table structure for tab_rushbuy
-- ----------------------------
DROP TABLE IF EXISTS `tab_rushbuy`;
CREATE TABLE `tab_rushbuy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `desp` varchar(100) DEFAULT NULL,
  `bigimg` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `smallimg` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_rushbuy
-- ----------------------------
BEGIN;
INSERT INTO `tab_rushbuy` VALUES (1, '全场最高3件7折', 'images/5ee9df3ddc667_1024_512.jpg', '舒贝怡品牌专场', '剩余2天0时', 'images/16216.jpg');
INSERT INTO `tab_rushbuy` VALUES (2, '全场低至49元2件', 'images/5ef1eeb9e2e8b_2048_1024.jpg', '纯棉童装专场', '剩余2天0时', 'images/28434.jpg');
INSERT INTO `tab_rushbuy` VALUES (3, '单包低至75元', 'images/5eeb32f7ef29f_1024_512.jpg', 'moony纸尿裤专场', '剩余2天0时', 'images/23880.jpg');
INSERT INTO `tab_rushbuy` VALUES (4, '满199减100', 'images/5dbe7cf208fd9_1024_512.jpg', '澳兰黛品牌专场', '剩余2天0时', 'images/17182.jpg');
INSERT INTO `tab_rushbuy` VALUES (5, '护舒宝 全场包邮', 'images/5eb3cd97a01c4_1024_512.jpg', '护舒宝品牌专场', '剩余2天0时', 'images/27284.jpg');
INSERT INTO `tab_rushbuy` VALUES (6, '最高满199-100', 'images/5db3c79c85dac_1024_512.jpg', '好孩子品牌专场', '剩余2天0时', 'images/16214.jpg');
INSERT INTO `tab_rushbuy` VALUES (7, '两件五折', 'images/5ef2f21b902c3_1024_512.jpg', '韩朵专场买二付一', '剩余2天0时', 'images/24940.jpg');
INSERT INTO `tab_rushbuy` VALUES (8, '满199减100元', 'images/5edc7e5b69ad8_1024_512.jpg', '辣妈护肤季', '剩余2天0时', 'images/24208.jpg');
INSERT INTO `tab_rushbuy` VALUES (9, '最高3件6.5折', 'images/5ef05b760a635_1024_512.jpg', '贝壳家族品牌专场', '剩余2天0时', 'images/13088.jpg');
INSERT INTO `tab_rushbuy` VALUES (10, '最高满199-100', 'images/5eec5bf8ce87f_1024_512.jpg', '日本潘思莉品牌专场', '剩余2天0时', 'images/23106.jpg');
COMMIT;

-- ----------------------------
-- Table structure for tab_user
-- ----------------------------
DROP TABLE IF EXISTS `tab_user`;
CREATE TABLE `tab_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_user
-- ----------------------------
BEGIN;
INSERT INTO `tab_user` VALUES (1, 'admin', '123', '123@qq.com');
INSERT INTO `tab_user` VALUES (2, 'user1', '456', '123@qq.com');
INSERT INTO `tab_user` VALUES (3, 'user2', '123', '456@qq.com');
INSERT INTO `tab_user` VALUES (4, 'user3', '456', '123@qq.com');
INSERT INTO `tab_user` VALUES (5, 'user4', '789', '123@qq.com');
INSERT INTO `tab_user` VALUES (6, 'user5', '819', '2314@qq.com');
INSERT INTO `tab_user` VALUES (7, 'user6', '1231', '1301@qq.com');
INSERT INTO `tab_user` VALUES (25, 'user7', '3211', '321414@qq.com');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
