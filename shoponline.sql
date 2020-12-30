/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : shoponline

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 30/12/2020 16:59:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for adminuser
-- ----------------------------
DROP TABLE IF EXISTS `adminuser`;
CREATE TABLE `adminuser`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adminuser
-- ----------------------------
INSERT INTO `adminuser` VALUES (1, 'admin', 'admin');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (2, '鞋包');
INSERT INTO `category` VALUES (4, '美妆');
INSERT INTO `category` VALUES (5, '百货');
INSERT INTO `category` VALUES (6, '食品');
INSERT INTO `category` VALUES (7, '女装');
INSERT INTO `category` VALUES (8, '男装');
INSERT INTO `category` VALUES (9, '电器');
INSERT INTO `category` VALUES (10, '果蔬');

-- ----------------------------
-- Table structure for categorysecond
-- ----------------------------
DROP TABLE IF EXISTS `categorysecond`;
CREATE TABLE `categorysecond`  (
  `csid` int(11) NOT NULL AUTO_INCREMENT,
  `csname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`csid`) USING BTREE,
  INDEX `FK936FCAF27631B398`(`cid`) USING BTREE,
  CONSTRAINT `FK936FCAF27631B398` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categorysecond
-- ----------------------------
INSERT INTO `categorysecond` VALUES (1, '裙装', 7);
INSERT INTO `categorysecond` VALUES (2, '衬衫', 7);
INSERT INTO `categorysecond` VALUES (3, '西装', 7);
INSERT INTO `categorysecond` VALUES (4, '棉服', 7);
INSERT INTO `categorysecond` VALUES (5, '夹克外套', 8);
INSERT INTO `categorysecond` VALUES (6, '休闲裤', 8);
INSERT INTO `categorysecond` VALUES (7, '牛仔裤', 8);
INSERT INTO `categorysecond` VALUES (8, 'T恤', 8);
INSERT INTO `categorysecond` VALUES (9, '空调', 9);
INSERT INTO `categorysecond` VALUES (10, '电视', 9);
INSERT INTO `categorysecond` VALUES (11, '洗衣机', 9);
INSERT INTO `categorysecond` VALUES (12, '厨房大电', 9);
INSERT INTO `categorysecond` VALUES (13, '热带水果', 10);
INSERT INTO `categorysecond` VALUES (14, '蔬菜大拼', 10);
INSERT INTO `categorysecond` VALUES (15, '海鲜水产', 10);
INSERT INTO `categorysecond` VALUES (16, '熟食凉菜', 10);
INSERT INTO `categorysecond` VALUES (17, '收纳整理', 5);
INSERT INTO `categorysecond` VALUES (18, '日用百货', 5);
INSERT INTO `categorysecond` VALUES (19, '洗护清洁', 5);
INSERT INTO `categorysecond` VALUES (20, '水杯餐具', 5);
INSERT INTO `categorysecond` VALUES (21, '男士护理', 4);
INSERT INTO `categorysecond` VALUES (22, '面部清洁', 4);
INSERT INTO `categorysecond` VALUES (23, '口红唇膏', 4);
INSERT INTO `categorysecond` VALUES (24, '水乳面霜', 4);
INSERT INTO `categorysecond` VALUES (25, '坚果蜜饯', 6);
INSERT INTO `categorysecond` VALUES (26, '茶叶', 6);
INSERT INTO `categorysecond` VALUES (27, '乳品冲饮', 6);
INSERT INTO `categorysecond` VALUES (28, '饼干糕点', 6);
INSERT INTO `categorysecond` VALUES (29, '鞋  子', 2);
INSERT INTO `categorysecond` VALUES (30, '包包', 2);

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem`  (
  `itemid` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) NULL DEFAULT NULL,
  `subtotal` double NULL DEFAULT NULL,
  `pid` int(11) NULL DEFAULT NULL,
  `oid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `FKE8B2AB61EE85435B`(`pid`) USING BTREE,
  INDEX `FKE8B2AB6140ACF87A`(`oid`) USING BTREE,
  CONSTRAINT `FKE8B2AB6140ACF87A` FOREIGN KEY (`oid`) REFERENCES `orders` (`oid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKE8B2AB61EE85435B` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 92 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES (39, 1, 12, 18, 904);
INSERT INTO `orderitem` VALUES (40, 1, 21, 24, 905);
INSERT INTO `orderitem` VALUES (41, 1, 15, 10, 906);
INSERT INTO `orderitem` VALUES (42, 1, 34, 28, 907);
INSERT INTO `orderitem` VALUES (43, 1, 20, 29, 908);
INSERT INTO `orderitem` VALUES (44, 1, 56, 19, 909);
INSERT INTO `orderitem` VALUES (45, 1, 140, 16, 910);
INSERT INTO `orderitem` VALUES (46, 1, 34, 28, 911);
INSERT INTO `orderitem` VALUES (47, 1, 20, 29, 912);
INSERT INTO `orderitem` VALUES (48, 2, 112, 19, 913);
INSERT INTO `orderitem` VALUES (49, 1, 22, 22, NULL);
INSERT INTO `orderitem` VALUES (50, 1, 12, 18, NULL);
INSERT INTO `orderitem` VALUES (51, 1, 34, 26, 915);
INSERT INTO `orderitem` VALUES (52, 1, 24, 27, 916);
INSERT INTO `orderitem` VALUES (53, 1, 34, 26, 917);
INSERT INTO `orderitem` VALUES (54, 1, 200, 14, 918);
INSERT INTO `orderitem` VALUES (55, 1, 24, 27, 919);
INSERT INTO `orderitem` VALUES (56, 1, 2456, 15, 920);
INSERT INTO `orderitem` VALUES (57, 1, 200, 14, 974);
INSERT INTO `orderitem` VALUES (58, 1, 140, 16, 974);
INSERT INTO `orderitem` VALUES (59, 2, 360, 12, 975);
INSERT INTO `orderitem` VALUES (60, 1, 200, 14, 975);
INSERT INTO `orderitem` VALUES (61, 1, 140, 16, 975);
INSERT INTO `orderitem` VALUES (62, 1, 2456, 15, 976);
INSERT INTO `orderitem` VALUES (63, 1, 56, 17, 977);
INSERT INTO `orderitem` VALUES (64, 1, 56, 20, 978);
INSERT INTO `orderitem` VALUES (65, 1, 109, 11, 978);
INSERT INTO `orderitem` VALUES (66, 2, 400, 14, 979);
INSERT INTO `orderitem` VALUES (67, 8, 192, 27, 980);
INSERT INTO `orderitem` VALUES (68, 1, 200, 14, 989);
INSERT INTO `orderitem` VALUES (69, 1, 24, 27, 994);
INSERT INTO `orderitem` VALUES (70, 1, 21, 24, 1020);
INSERT INTO `orderitem` VALUES (71, 1, 56, 17, 1021);
INSERT INTO `orderitem` VALUES (72, 1, 21, 24, 1024);
INSERT INTO `orderitem` VALUES (73, 1, 12, 18, 1025);
INSERT INTO `orderitem` VALUES (74, 1, 12, 18, 1026);
INSERT INTO `orderitem` VALUES (75, 1, 12, 18, 1027);
INSERT INTO `orderitem` VALUES (76, 1, 10, 13, 1028);
INSERT INTO `orderitem` VALUES (77, 2, 30, 10, 1029);
INSERT INTO `orderitem` VALUES (78, 1, 12, 18, 1030);
INSERT INTO `orderitem` VALUES (79, 1, 12, 18, 1031);
INSERT INTO `orderitem` VALUES (80, 1, 12, 18, 1032);
INSERT INTO `orderitem` VALUES (81, 2, 24, 18, 1033);
INSERT INTO `orderitem` VALUES (82, 1, 12, 50, 1035);
INSERT INTO `orderitem` VALUES (83, 1, 19, 49, 1036);
INSERT INTO `orderitem` VALUES (84, 1, 10, 52, 1037);
INSERT INTO `orderitem` VALUES (85, 1, 16, 46, 1038);
INSERT INTO `orderitem` VALUES (86, 1, 12, 50, 1039);
INSERT INTO `orderitem` VALUES (87, 1, 11, 51, 1040);
INSERT INTO `orderitem` VALUES (88, 1, 19, 49, 1041);
INSERT INTO `orderitem` VALUES (89, 1, 12, 50, 1043);
INSERT INTO `orderitem` VALUES (90, 1, 19, 49, 1045);
INSERT INTO `orderitem` VALUES (91, 1, 10, 13, 1047);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `total` double NULL DEFAULT NULL,
  `ordertime` datetime(0) NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`oid`) USING BTREE,
  INDEX `FKC3DF62E52BA96944`(`uid`) USING BTREE,
  CONSTRAINT `FKC3DF62E52BA96944` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1048 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (904, 12, '2020-11-23 11:07:43', 1, 'zs', '1673847522', '北京市 ', 10);
INSERT INTO `orders` VALUES (905, 21, '2020-11-23 11:26:44', 1, 'we', '1566777843', '武汉市', 10);
INSERT INTO `orders` VALUES (906, 15, '2020-11-23 11:50:44', 4, 'df41', '123456567678', '上海市徐汇区', 10);
INSERT INTO `orders` VALUES (907, 34, '2020-11-23 13:05:05', 1, 'df43', '15678934502', '广东惠州', 10);
INSERT INTO `orders` VALUES (908, 20, '2020-11-23 13:33:41', 2, '王金东', '1522323243', '河北省石家庄', 10);
INSERT INTO `orders` VALUES (909, 56, '2020-11-23 13:33:50', 1, 'df4', '183445677234', '河南南阳市', 10);
INSERT INTO `orders` VALUES (910, 140, '2020-11-23 13:34:07', 1, 'dfde', '18234563452', '上海松江', 10);
INSERT INTO `orders` VALUES (911, 34, '2020-11-23 13:34:24', 2, 'dfds', '18723456903', '北京朝阳', 10);
INSERT INTO `orders` VALUES (912, 20, '2020-11-23 13:37:05', 1, 'dfds', '12986432211', '广东深圳', NULL);
INSERT INTO `orders` VALUES (913, 112, '2020-11-23 16:33:38', 1, '李园园', '15290773282', '河南省郑州二七广场', 10);
INSERT INTO `orders` VALUES (915, 34, '2020-12-24 15:40:35', 1, '王金东', NULL, NULL, 9);
INSERT INTO `orders` VALUES (916, 24, '2020-12-24 15:48:48', 1, '王金东', NULL, NULL, 9);
INSERT INTO `orders` VALUES (917, 34, '2020-12-24 16:20:17', 1, '王金东', NULL, NULL, 9);
INSERT INTO `orders` VALUES (918, 200, '2020-12-24 19:23:24', 1, '王金东', NULL, NULL, 9);
INSERT INTO `orders` VALUES (919, 24, '2020-12-24 19:32:19', 1, '王金东', NULL, NULL, 9);
INSERT INTO `orders` VALUES (920, 2456, '2020-12-24 19:32:50', 1, '王金东', NULL, NULL, 9);
INSERT INTO `orders` VALUES (921, 0, '2020-12-24 19:35:04', 1, '王金东', NULL, NULL, 9);
INSERT INTO `orders` VALUES (922, 0, '2020-12-24 19:35:48', 1, '王金东', NULL, NULL, 9);
INSERT INTO `orders` VALUES (923, 0, '2020-12-24 19:36:08', 1, '王金东', NULL, NULL, 9);
INSERT INTO `orders` VALUES (924, 0, '2020-12-24 19:36:56', 1, '王金东', NULL, NULL, 9);
INSERT INTO `orders` VALUES (925, 0, '2020-12-24 19:36:57', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (926, 0, '2020-12-24 19:36:58', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (927, 0, '2020-12-24 19:37:14', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (928, 0, '2020-12-24 19:37:28', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (929, 0, '2020-12-24 19:37:35', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (930, 0, '2020-12-24 19:37:36', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (931, 0, '2020-12-24 19:37:48', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (932, 0, '2020-12-24 19:38:03', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (933, 0, '2020-12-24 19:38:21', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (935, 0, '2020-12-24 19:38:40', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (936, 0, '2020-12-24 19:39:34', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (937, 0, '2020-12-24 19:39:35', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (938, 0, '2020-12-24 19:39:45', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (939, 0, '2020-12-24 19:40:42', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (940, 0, '2020-12-24 19:41:46', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (941, 0, '2020-12-24 19:42:26', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (942, 0, '2020-12-24 19:42:46', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (943, 0, '2020-12-24 19:43:27', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (944, 0, '2020-12-24 19:43:49', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (945, 0, '2020-12-24 19:44:23', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (946, 0, '2020-12-24 19:44:35', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (947, 0, '2020-12-24 19:45:03', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (948, 0, '2020-12-24 19:45:34', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (949, 0, '2020-12-24 19:46:17', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (950, 0, '2020-12-24 19:47:13', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (951, 0, '2020-12-24 19:47:46', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (952, 0, '2020-12-24 19:48:02', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (953, 0, '2020-12-24 19:48:11', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (954, 0, '2020-12-24 19:48:36', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (955, 0, '2020-12-24 19:49:37', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (956, 0, '2020-12-24 19:49:55', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (957, 0, '2020-12-24 19:51:28', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (958, 0, '2020-12-24 19:52:53', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (959, 0, '2020-12-24 19:53:19', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (960, 0, '2020-12-24 19:53:38', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (961, 0, '2020-12-24 19:54:24', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (962, 0, '2020-12-24 19:54:56', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (963, 0, '2020-12-24 19:55:35', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (964, 0, '2020-12-24 19:55:51', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (965, 0, '2020-12-24 19:57:42', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (966, 0, '2020-12-24 19:58:26', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (967, 0, '2020-12-24 19:58:49', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (968, 0, '2020-12-24 19:59:16', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (969, 0, '2020-12-24 19:59:35', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (970, 0, '2020-12-24 19:59:50', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (971, 0, '2020-12-24 20:00:01', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (972, 0, '2020-12-24 20:00:22', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (973, 0, '2020-12-24 20:00:46', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (974, 340, '2020-12-24 22:32:05', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (975, 700, '2020-12-25 18:40:27', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (976, 2456, '2020-12-25 18:41:32', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (977, 56, '2020-12-25 18:45:07', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (978, 165, '2020-12-25 18:52:25', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (979, 400, '2020-12-25 19:56:34', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (980, 192, '2020-12-25 20:07:17', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (981, 0, '2020-12-25 20:09:49', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (982, 0, '2020-12-25 20:09:50', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (983, 0, '2020-12-25 20:10:45', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (984, 0, '2020-12-25 20:10:50', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (985, 0, '2020-12-25 20:11:05', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (986, 0, '2020-12-25 20:11:05', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (987, 0, '2020-12-25 20:11:56', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (988, 0, '2020-12-25 20:11:57', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (989, 200, '2020-12-25 20:12:41', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (990, 0, '2020-12-25 20:15:00', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (991, 0, '2020-12-25 20:17:46', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (992, 0, '2020-12-25 20:17:58', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (993, 0, '2020-12-25 20:18:05', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (994, 24, '2020-12-25 20:18:19', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (995, 0, '2020-12-25 20:22:52', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (996, 0, '2020-12-25 20:22:53', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (997, 0, '2020-12-25 20:22:54', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (998, 0, '2020-12-25 20:22:54', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (999, 0, '2020-12-25 20:22:55', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1000, 0, '2020-12-25 20:22:56', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1001, 0, '2020-12-25 20:22:57', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1002, 0, '2020-12-25 20:22:57', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1003, 0, '2020-12-25 20:22:57', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1004, 0, '2020-12-25 20:22:58', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1005, 0, '2020-12-25 20:22:58', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1006, 0, '2020-12-25 20:22:58', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1007, 0, '2020-12-25 20:22:59', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1008, 0, '2020-12-25 20:22:59', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1009, 0, '2020-12-25 20:22:59', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1010, 0, '2020-12-25 20:23:00', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1011, 0, '2020-12-25 20:23:00', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1012, 0, '2020-12-25 20:23:00', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1013, 0, '2020-12-25 20:23:00', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1014, 0, '2020-12-25 20:23:01', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1015, 0, '2020-12-25 20:23:01', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1016, 0, '2020-12-25 20:23:01', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1017, 0, '2020-12-25 20:23:02', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1018, 0, '2020-12-25 20:23:32', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1019, 0, '2020-12-25 20:23:53', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1020, 21, '2020-12-26 12:56:43', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1021, 56, '2020-12-26 13:03:51', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1022, 0, '2020-12-26 13:04:15', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1023, 0, '2020-12-26 13:04:21', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1024, 21, '2020-12-26 13:04:34', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1025, 12, '2020-12-26 13:06:53', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1026, 12, '2020-12-26 13:08:04', 3, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1027, 12, '2020-12-26 13:09:18', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1028, 10, '2020-12-26 13:41:00', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1029, 30, '2020-12-26 15:26:59', 2, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1030, 12, '2020-12-26 17:05:11', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1031, 12, '2020-12-26 19:14:51', 2, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1032, 12, '2020-12-26 19:17:15', 4, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1033, 24, '2020-12-27 15:08:45', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1034, 0, '2020-12-27 15:10:32', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1035, 12, '2020-12-28 14:43:27', 4, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1036, 19, '2020-12-29 11:26:21', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1037, 10, '2020-12-29 11:41:31', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1038, 16, '2020-12-29 11:42:30', 2, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1039, 12, '2020-12-29 11:43:15', 2, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1040, 11, '2020-12-29 13:57:11', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1041, 19, '2020-12-29 13:58:31', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1042, 0, '2020-12-29 14:22:23', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1043, 12, '2020-12-29 14:22:32', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1044, 0, '2020-12-29 14:24:41', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1045, 19, '2020-12-29 14:31:46', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1046, 0, '2020-12-29 14:32:14', 1, NULL, NULL, NULL, 9);
INSERT INTO `orders` VALUES (1047, 10, '2020-12-29 14:32:24', 2, NULL, NULL, NULL, 9);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `market_price` double NULL DEFAULT NULL,
  `shop_price` double NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pdesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_hot` int(11) NULL DEFAULT NULL,
  `pdate` datetime(0) NULL DEFAULT NULL,
  `csid` int(11) NULL DEFAULT NULL,
  `style` int(11) NULL DEFAULT NULL,
  `bimage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE,
  INDEX `FKED8DCCEF3DBE112D`(`csid`) USING BTREE,
  CONSTRAINT `FKED8DCCEF3DBE112D` FOREIGN KEY (`csid`) REFERENCES `categorysecond` (`csid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (9, '手戒', 45, 28, 'products/3757376_1900873371.png', '布灵布灵的闪闪发光的戒指，让你一眼就喜欢上了它', 1, '2020-11-22 22:27:17', 18, NULL, NULL);
INSERT INTO `product` VALUES (10, '芒果', 30, 15, 'products/15720897208_1347985885.220x220.jpg', '热带水果，芒果让你感受不同的夏天', 1, '2020-11-22 22:21:46', 13, NULL, NULL);
INSERT INTO `product` VALUES (11, '枫叶色口红', 110, 109, 'products/12149475138_1010364629.220x220.jpg', '你值得拥有，让你有暖暖的夏天', 1, '2020-11-22 22:27:12', 23, NULL, NULL);
INSERT INTO `product` VALUES (12, '鼠标', 200, 180, 'products/13017089797_1641166246.220x220.jpg', '无线鼠标，随时随地尽享', 1, '2020-11-22 22:25:54', 12, NULL, NULL);
INSERT INTO `product` VALUES (13, '手链', 23, 10, 'products/14470973459_961499071.220x220.jpg', '简单地款式', 1, '2020-11-22 22:27:06', 18, NULL, NULL);
INSERT INTO `product` VALUES (14, '平底鞋', 156, 200, 'products/18265390147_912816710.220x220.jpg', '酷酷酷的风格', 1, '2020-11-22 22:28:45', 29, NULL, NULL);
INSERT INTO `product` VALUES (15, '液晶电视', 1890, 2456, 'products/21915550110_114772516.220x220.jpg', '畅享无线', 1, '2020-11-22 22:29:38', 10, NULL, NULL);
INSERT INTO `product` VALUES (16, '套装', 120, 140, 'products/22163540257_535100167.220x220.jpg', '白色的加棉上衣，黑色的束腰短裙', 1, '2020-11-22 22:30:43', 1, NULL, NULL);
INSERT INTO `product` VALUES (17, '毛衣', 56, 56, 'products/21694285572_1852950053.220x220.jpg', '针织衬衫', 1, '2020-11-22 22:31:39', 2, NULL, NULL);
INSERT INTO `product` VALUES (18, '巧克力', 12, 12, 'products/22059452434_1492864784.220x220.jpg', '整颗的草莓巧克力', 1, '2020-11-22 22:33:09', 28, NULL, NULL);
INSERT INTO `product` VALUES (19, '斜挎包', 36, 56, 'products/15360844395_1924270016.220x220.jpg', '红色的包包', 1, '2020-11-22 22:35:47', 30, NULL, NULL);
INSERT INTO `product` VALUES (20, '洗面奶', 34, 56, 'products/13647375436_1456573769.220x220.jpg', '男士护理', 1, '2020-11-22 22:35:39', 24, NULL, NULL);
INSERT INTO `product` VALUES (21, '键盘', 243, 340, 'products/15529748365_1641166246.220x220.jpg', '黑色的键盘，样子简简单单，但很舒服', 1, '2020-11-22 22:37:53', 12, NULL, NULL);
INSERT INTO `product` VALUES (22, '水杯', 22, 22, 'products/19053703990_57529809.220x220.jpg', '带柄的水杯', 0, '2020-11-22 22:39:27', 20, NULL, NULL);
INSERT INTO `product` VALUES (23, '男士西装', 222, 342, 'products/cs50008.png', '贴身男士西装', 1, '2020-11-22 22:40:41', 3, NULL, NULL);
INSERT INTO `product` VALUES (24, '拖鞋', 12, 21, 'products/12467445870_456543732.220x220.jpg', '室内的棉拖鞋', 1, '2020-11-22 22:42:05', 29, NULL, NULL);
INSERT INTO `product` VALUES (25, '棉服', 123, 67, 'products/cs50007.png', '男士的棉服', 0, '2020-11-22 22:43:32', 4, NULL, NULL);
INSERT INTO `product` VALUES (26, '护肤品—乳', 45, 34, 'products/hf.jpg', '冬天保湿的良品', 0, '2020-11-22 22:45:12', 21, NULL, NULL);
INSERT INTO `product` VALUES (27, '牛奶', 34, 24, 'products/22196453743_413093165.220x220.jpg', '牛奶的味道，让你众享丝滑', 1, '2020-11-22 22:46:46', 27, NULL, NULL);
INSERT INTO `product` VALUES (28, '摆盘器', 45, 34, 'products/18959878398_256310071.220x220.jpg', '无', 0, '2020-11-22 22:59:16', 18, NULL, NULL);
INSERT INTO `product` VALUES (29, '保温杯', 23, 20, 'products/11687236916_19884658.220x220.jpg', '冬天的必备', 1, '2020-11-23 12:13:53', 20, NULL, NULL);
INSERT INTO `product` VALUES (35, '冬天棉服', NULL, NULL, '', NULL, 0, NULL, NULL, 4, 'lastig/222.jpg');
INSERT INTO `product` VALUES (36, '靴子', NULL, NULL, '', NULL, 0, NULL, NULL, 4, 'lastig/444.jpg');
INSERT INTO `product` VALUES (37, '羽绒股', NULL, NULL, '', NULL, 0, NULL, NULL, 4, 'lastig/333.jpg');
INSERT INTO `product` VALUES (38, '周大福金饰', NULL, NULL, 'products/zhou.jpg', NULL, 0, NULL, NULL, 4, 'lastig/111.jpg');
INSERT INTO `product` VALUES (39, '核桃', 89, 79, 'products/he.jpg', NULL, 0, NULL, NULL, 3, 'images/img1.jpg');
INSERT INTO `product` VALUES (40, '灯饰', 500, 356, 'products/deng.jpg', NULL, 0, NULL, NULL, 3, 'images/img2.jpg');
INSERT INTO `product` VALUES (41, '冰箱', 4311, 3210, 'products/bing.jpg', NULL, 0, NULL, NULL, 3, 'images/img3.jpg');
INSERT INTO `product` VALUES (42, 'BELLE暖冬靴', 145, 99, 'products/xue3.jpg', NULL, 0, NULL, NULL, 1, 'lastig/1.jpg');
INSERT INTO `product` VALUES (43, 'TATA冬靴', 243, 124, 'products/xue1.jpg', NULL, 0, NULL, NULL, 1, 'lastig/2.jpg');
INSERT INTO `product` VALUES (44, 'TEENMIX皮鞋', 123, 88, 'products/xue0.jpg', NULL, 0, NULL, NULL, 1, 'lastig/3.jpg');
INSERT INTO `product` VALUES (45, '柠檬茶', 10, 8, 'products/19603990789_1347985885.220x220.jpg', NULL, 0, NULL, NULL, 2, '');
INSERT INTO `product` VALUES (46, '香米', 15, 16, 'image/o.jpg', NULL, 0, NULL, NULL, 2, '');
INSERT INTO `product` VALUES (47, '柿饼', 21, 21, 'image/10.jpg', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (48, '芒果', 33, 23, 'products/15720897208_1347985885.220x220.jpg', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (49, '豆奶', 23, 19, 'image/k.jpg', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (50, '白菜', 15, 12, 'image/14.jpg', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (51, '香菜', 11, 11, 'image/b.jpg', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (52, '圣女果', 12, 10, 'image/7.jpg', NULL, 0, NULL, NULL, 2, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (7, '1111', '1111', '45353', 'bb@shoponline.com', '15389624531', '上海市松江区泗泾镇东方小区1330弄23号', 1, 'af61172d4a4e43a1a6cb156c369538b708d8bbbe3f2947da84b2c94c42cddfff');
INSERT INTO `user` VALUES (9, '2222', '2222', '王可可', 'bb@shoponline.com', '15234624531', '上海市松江区泗泾镇东方小区1330弄34号', 1, '22feaf7cc8514e47bbc478619af0d7bf97a9a35140fe4172b6f3998bab932977');
INSERT INTO `user` VALUES (10, 'lyy', '123456', '李园园', 'bb@shoponline.com', '15290773282', '河南省郑州二七广场', 1, NULL);

SET FOREIGN_KEY_CHECKS = 1;
