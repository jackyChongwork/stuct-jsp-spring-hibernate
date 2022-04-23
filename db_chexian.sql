/*
 Navicat Premium Data Transfer

 Source Server         : mysql8-local
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : db_chexian

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 25/04/2021 17:30:06
*/
create database if not exists db_chexian;
use db_chexian;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin`  (
  `userId` int(11) NOT NULL,
  `userName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userPw` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES (1, 'admin ', 'e10adc3949ba59abbe56e057f20f883e');

-- ----------------------------
-- Table structure for t_baodan
-- ----------------------------
DROP TABLE IF EXISTS `t_baodan`;
CREATE TABLE `t_baodan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kehuID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kehuName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `baodanName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bxje` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kaishishijian` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jieshushijian` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `con` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tuikuanje` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tuikuanriqi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chepai` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qicheppai` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qichexinghao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_baodan
-- ----------------------------
INSERT INTO `t_baodan` VALUES (1, '1', '张贤', '未知', NULL, '2019-5-5', '2020-5-5', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_baodan` VALUES (2, '1', NULL, '测试表单', '5000', '2021-04-25', '2022-04-25', '说明详情......', '生效中', NULL, NULL, '闽A3456', '上海大众', 'AD2381422');
INSERT INTO `t_baodan` VALUES (3, '2', NULL, '测试保单2', '5000', '2021-04-25', '2022-04-25', '详细说明......', '生效中', NULL, NULL, '闽A3456', '上海大众', 'AD2381422');

-- ----------------------------
-- Table structure for t_baodandetail
-- ----------------------------
DROP TABLE IF EXISTS `t_baodandetail`;
CREATE TABLE `t_baodandetail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baodanID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `baodanName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `leixing` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `je` double(255, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_baodandetail
-- ----------------------------
INSERT INTO `t_baodandetail` VALUES (1, '1', '测试保单1', '未知', 1000);

-- ----------------------------
-- Table structure for t_kehu
-- ----------------------------
DROP TABLE IF EXISTS `t_kehu`;
CREATE TABLE `t_kehu`  (
  `kehu_id` int(11) NOT NULL,
  `kehu_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kehu_sex` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kehu_age` int(11) NULL DEFAULT NULL,
  `kehu_xueli` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kehu_zhiwei` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kehu_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kehu_tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kehu_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kehu_qq` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kehu_login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kehu_login_Pw` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kehu_org_id` int(11) NULL DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `del` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`kehu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_kehu
-- ----------------------------
INSERT INTO `t_kehu` VALUES (1, '张贤', '男', 32, '博士', '未知', '福建福州', '19957892263', '2330998238@qq.com', '530780199307122501', 'test', 'e10adc3949ba59abbe56e057f20f883e', 0, 'kehu', 'no');
INSERT INTO `t_kehu` VALUES (2, '用户2', '男', 30, '博士', '未知', '福建福州', '19957892264', '2348921782@qq.com', '530780199307122500', 'test2', 'e10adc3949ba59abbe56e057f20f883e', 0, 'kehu', 'no');
INSERT INTO `t_kehu` VALUES (3, '用户3', '女', 33, '博士', '未知', '福建福州', '19957892265', '2348921783@qq.com', '530780199307122502', 'test3', 'e10adc3949ba59abbe56e057f20f883e', 0, 'kehu', 'no');
INSERT INTO `t_kehu` VALUES (4, '用户4', '男', 33, '本科', '未知', '福建福州', '19957892266', '2348921784@qq.com', '530780199307122503', 'test4', 'e10adc3949ba59abbe56e057f20f883e', 0, 'kehu', 'no');
INSERT INTO `t_kehu` VALUES (5, '用户1', '女', 33, '本科', '未知', '福建福州', '19957892267', '2348921785@qq.com', '530780199307122504', 'test1', 'e10adc3949ba59abbe56e057f20f883e', 0, 'kehu', 'no');

-- ----------------------------
-- Table structure for t_lipei
-- ----------------------------
DROP TABLE IF EXISTS `t_lipei`;
CREATE TABLE `t_lipei`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kehuname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sfz` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `riqi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `con` varchar(2550) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fujian` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lipaiqingkuang` varchar(2550) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jinge` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `khid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_lipei
-- ----------------------------
INSERT INTO `t_lipei` VALUES (1, '张贤', '2330998238', '2021-04-25', '车损险', '详细说明......', '/upload/1619336876186.jpg', NULL, NULL, '1');

-- ----------------------------
-- Table structure for t_organization
-- ----------------------------
DROP TABLE IF EXISTS `t_organization`;
CREATE TABLE `t_organization`  (
  `org_id` int(11) NOT NULL,
  `org_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `org_sn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `org_description` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_org_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`org_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_organization
-- ----------------------------
INSERT INTO `t_organization` VALUES (0, '未知', NULL, NULL, 1);

-- ----------------------------
-- Table structure for t_qiyexinxi
-- ----------------------------
DROP TABLE IF EXISTS `t_qiyexinxi`;
CREATE TABLE `t_qiyexinxi`  (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fenlei` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dizhi` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lianxiren` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
