/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : cw

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 25/09/2021 14:16:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for acc_reg_num
-- ----------------------------
DROP TABLE IF EXISTS `acc_reg_num`;
CREATE TABLE `acc_reg_num`  (
  `account_id` int UNSIGNED NOT NULL DEFAULT 0,
  `key` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `index` int UNSIGNED NOT NULL DEFAULT 0,
  `value` bigint NOT NULL DEFAULT 0,
  PRIMARY KEY (`account_id`, `key`, `index`) USING BTREE,
  INDEX `account_id`(`account_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of acc_reg_num
-- ----------------------------

-- ----------------------------
-- Table structure for acc_reg_str
-- ----------------------------
DROP TABLE IF EXISTS `acc_reg_str`;
CREATE TABLE `acc_reg_str`  (
  `account_id` int UNSIGNED NOT NULL DEFAULT 0,
  `key` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `index` int UNSIGNED NOT NULL DEFAULT 0,
  `value` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`, `key`, `index`) USING BTREE,
  INDEX `account_id`(`account_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of acc_reg_str
-- ----------------------------

-- ----------------------------
-- Table structure for achievement
-- ----------------------------
DROP TABLE IF EXISTS `achievement`;
CREATE TABLE `achievement`  (
  `char_id` int UNSIGNED NOT NULL DEFAULT 0,
  `id` bigint UNSIGNED NOT NULL,
  `count1` int UNSIGNED NOT NULL DEFAULT 0,
  `count2` int UNSIGNED NOT NULL DEFAULT 0,
  `count3` int UNSIGNED NOT NULL DEFAULT 0,
  `count4` int UNSIGNED NOT NULL DEFAULT 0,
  `count5` int UNSIGNED NOT NULL DEFAULT 0,
  `count6` int UNSIGNED NOT NULL DEFAULT 0,
  `count7` int UNSIGNED NOT NULL DEFAULT 0,
  `count8` int UNSIGNED NOT NULL DEFAULT 0,
  `count9` int UNSIGNED NOT NULL DEFAULT 0,
  `count10` int UNSIGNED NOT NULL DEFAULT 0,
  `completed` datetime NULL DEFAULT NULL,
  `rewarded` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`char_id`, `id`) USING BTREE,
  INDEX `char_id`(`char_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of achievement
-- ----------------------------

-- ----------------------------
-- Table structure for atcommandlog
-- ----------------------------
DROP TABLE IF EXISTS `atcommandlog`;
CREATE TABLE `atcommandlog`  (
  `atcommand_id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT,
  `atcommand_date` datetime NOT NULL,
  `account_id` int UNSIGNED NOT NULL DEFAULT 0,
  `char_id` int UNSIGNED NOT NULL DEFAULT 0,
  `char_name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `map` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `command` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`atcommand_id`) USING BTREE,
  INDEX `account_id`(`account_id`) USING BTREE,
  INDEX `char_id`(`char_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of atcommandlog
-- ----------------------------

-- ----------------------------
-- Table structure for auction
-- ----------------------------
DROP TABLE IF EXISTS `auction`;
CREATE TABLE `auction`  (
  `auction_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `seller_id` int UNSIGNED NOT NULL DEFAULT 0,
  `seller_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `buyer_id` int UNSIGNED NOT NULL DEFAULT 0,
  `buyer_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `price` int UNSIGNED NOT NULL DEFAULT 0,
  `buynow` int UNSIGNED NOT NULL DEFAULT 0,
  `hours` smallint NOT NULL DEFAULT 0,
  `timestamp` int UNSIGNED NOT NULL DEFAULT 0,
  `nameid` int UNSIGNED NOT NULL DEFAULT 0,
  `item_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `type` smallint NOT NULL DEFAULT 0,
  `refine` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `attribute` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `card0` int UNSIGNED NOT NULL DEFAULT 0,
  `card1` int UNSIGNED NOT NULL DEFAULT 0,
  `card2` int UNSIGNED NOT NULL DEFAULT 0,
  `card3` int UNSIGNED NOT NULL DEFAULT 0,
  `option_id0` smallint NOT NULL DEFAULT 0,
  `option_val0` smallint NOT NULL DEFAULT 0,
  `option_parm0` tinyint NOT NULL DEFAULT 0,
  `option_id1` smallint NOT NULL DEFAULT 0,
  `option_val1` smallint NOT NULL DEFAULT 0,
  `option_parm1` tinyint NOT NULL DEFAULT 0,
  `option_id2` smallint NOT NULL DEFAULT 0,
  `option_val2` smallint NOT NULL DEFAULT 0,
  `option_parm2` tinyint NOT NULL DEFAULT 0,
  `option_id3` smallint NOT NULL DEFAULT 0,
  `option_val3` smallint NOT NULL DEFAULT 0,
  `option_parm3` tinyint NOT NULL DEFAULT 0,
  `option_id4` smallint NOT NULL DEFAULT 0,
  `option_val4` smallint NOT NULL DEFAULT 0,
  `option_parm4` tinyint NOT NULL DEFAULT 0,
  `unique_id` bigint UNSIGNED NOT NULL DEFAULT 0,
  `enchantgrade` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`auction_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auction
-- ----------------------------

-- ----------------------------
-- Table structure for bonus_script
-- ----------------------------
DROP TABLE IF EXISTS `bonus_script`;
CREATE TABLE `bonus_script`  (
  `char_id` int UNSIGNED NOT NULL,
  `script` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tick` bigint NOT NULL DEFAULT 0,
  `flag` smallint UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `icon` smallint NOT NULL DEFAULT -1,
  PRIMARY KEY (`char_id`, `type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bonus_script
-- ----------------------------

-- ----------------------------
-- Table structure for branchlog
-- ----------------------------
DROP TABLE IF EXISTS `branchlog`;
CREATE TABLE `branchlog`  (
  `branch_id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT,
  `branch_date` datetime NOT NULL,
  `account_id` int NOT NULL DEFAULT 0,
  `char_id` int NOT NULL DEFAULT 0,
  `char_name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `map` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`branch_id`) USING BTREE,
  INDEX `account_id`(`account_id`) USING BTREE,
  INDEX `char_id`(`char_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of branchlog
-- ----------------------------

-- ----------------------------
-- Table structure for buyingstore_items
-- ----------------------------
DROP TABLE IF EXISTS `buyingstore_items`;
CREATE TABLE `buyingstore_items`  (
  `buyingstore_id` int UNSIGNED NOT NULL,
  `index` smallint UNSIGNED NOT NULL,
  `item_id` int UNSIGNED NOT NULL,
  `amount` smallint UNSIGNED NOT NULL,
  `price` int UNSIGNED NOT NULL,
  PRIMARY KEY (`buyingstore_id`, `index`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of buyingstore_items
-- ----------------------------

-- ----------------------------
-- Table structure for buyingstores
-- ----------------------------
DROP TABLE IF EXISTS `buyingstores`;
CREATE TABLE `buyingstores`  (
  `id` int UNSIGNED NOT NULL,
  `account_id` int UNSIGNED NOT NULL,
  `char_id` int UNSIGNED NOT NULL,
  `sex` enum('F','M') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'M',
  `map` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `x` smallint UNSIGNED NOT NULL,
  `y` smallint UNSIGNED NOT NULL,
  `title` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `limit` int UNSIGNED NOT NULL,
  `body_direction` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '4',
  `head_direction` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  `sit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1',
  `autotrade` tinyint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of buyingstores
-- ----------------------------

-- ----------------------------
-- Table structure for cart_inventory
-- ----------------------------
DROP TABLE IF EXISTS `cart_inventory`;
CREATE TABLE `cart_inventory`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `char_id` int NOT NULL DEFAULT 0,
  `nameid` int UNSIGNED NOT NULL DEFAULT 0,
  `amount` int NOT NULL DEFAULT 0,
  `equip` int UNSIGNED NOT NULL DEFAULT 0,
  `identify` smallint NOT NULL DEFAULT 0,
  `refine` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `attribute` tinyint NOT NULL DEFAULT 0,
  `card0` int UNSIGNED NOT NULL DEFAULT 0,
  `card1` int UNSIGNED NOT NULL DEFAULT 0,
  `card2` int UNSIGNED NOT NULL DEFAULT 0,
  `card3` int UNSIGNED NOT NULL DEFAULT 0,
  `option_id0` smallint NOT NULL DEFAULT 0,
  `option_val0` smallint NOT NULL DEFAULT 0,
  `option_parm0` tinyint NOT NULL DEFAULT 0,
  `option_id1` smallint NOT NULL DEFAULT 0,
  `option_val1` smallint NOT NULL DEFAULT 0,
  `option_parm1` tinyint NOT NULL DEFAULT 0,
  `option_id2` smallint NOT NULL DEFAULT 0,
  `option_val2` smallint NOT NULL DEFAULT 0,
  `option_parm2` tinyint NOT NULL DEFAULT 0,
  `option_id3` smallint NOT NULL DEFAULT 0,
  `option_val3` smallint NOT NULL DEFAULT 0,
  `option_parm3` tinyint NOT NULL DEFAULT 0,
  `option_id4` smallint NOT NULL DEFAULT 0,
  `option_val4` smallint NOT NULL DEFAULT 0,
  `option_parm4` tinyint NOT NULL DEFAULT 0,
  `expire_time` int UNSIGNED NOT NULL DEFAULT 0,
  `bound` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `unique_id` bigint UNSIGNED NOT NULL DEFAULT 0,
  `enchantgrade` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `char_id`(`char_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of cart_inventory
-- ----------------------------

-- ----------------------------
-- Table structure for cashlog
-- ----------------------------
DROP TABLE IF EXISTS `cashlog`;
CREATE TABLE `cashlog`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `char_id` int NOT NULL DEFAULT 0,
  `type` enum('T','V','P','M','S','N','D','C','A','E','I','B','$') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'S',
  `cash_type` enum('O','K','C') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'O',
  `amount` int NOT NULL DEFAULT 0,
  `map` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cashlog
-- ----------------------------

-- ----------------------------
-- Table structure for char
-- ----------------------------
DROP TABLE IF EXISTS `char`;
CREATE TABLE `char`  (
  `char_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `account_id` int UNSIGNED NOT NULL DEFAULT 0,
  `char_num` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `class` smallint UNSIGNED NOT NULL DEFAULT 0,
  `base_level` smallint UNSIGNED NOT NULL DEFAULT 1,
  `job_level` smallint UNSIGNED NOT NULL DEFAULT 1,
  `base_exp` bigint UNSIGNED NOT NULL DEFAULT 0,
  `job_exp` bigint UNSIGNED NOT NULL DEFAULT 0,
  `zeny` int UNSIGNED NOT NULL DEFAULT 0,
  `str` smallint UNSIGNED NOT NULL DEFAULT 0,
  `agi` smallint UNSIGNED NOT NULL DEFAULT 0,
  `vit` smallint UNSIGNED NOT NULL DEFAULT 0,
  `int` smallint UNSIGNED NOT NULL DEFAULT 0,
  `dex` smallint UNSIGNED NOT NULL DEFAULT 0,
  `luk` smallint UNSIGNED NOT NULL DEFAULT 0,
  `max_hp` int UNSIGNED NOT NULL DEFAULT 0,
  `hp` int UNSIGNED NOT NULL DEFAULT 0,
  `max_sp` int UNSIGNED NOT NULL DEFAULT 0,
  `sp` int UNSIGNED NOT NULL DEFAULT 0,
  `status_point` int UNSIGNED NOT NULL DEFAULT 0,
  `skill_point` int UNSIGNED NOT NULL DEFAULT 0,
  `option` int NOT NULL DEFAULT 0,
  `karma` tinyint NOT NULL DEFAULT 0,
  `manner` smallint NOT NULL DEFAULT 0,
  `party_id` int UNSIGNED NOT NULL DEFAULT 0,
  `guild_id` int UNSIGNED NOT NULL DEFAULT 0,
  `pet_id` int UNSIGNED NOT NULL DEFAULT 0,
  `homun_id` int UNSIGNED NOT NULL DEFAULT 0,
  `elemental_id` int UNSIGNED NOT NULL DEFAULT 0,
  `hair` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `hair_color` smallint UNSIGNED NOT NULL DEFAULT 0,
  `clothes_color` smallint UNSIGNED NOT NULL DEFAULT 0,
  `body` smallint UNSIGNED NOT NULL DEFAULT 0,
  `weapon` smallint UNSIGNED NOT NULL DEFAULT 0,
  `shield` smallint UNSIGNED NOT NULL DEFAULT 0,
  `head_top` smallint UNSIGNED NOT NULL DEFAULT 0,
  `head_mid` smallint UNSIGNED NOT NULL DEFAULT 0,
  `head_bottom` smallint UNSIGNED NOT NULL DEFAULT 0,
  `robe` smallint UNSIGNED NOT NULL DEFAULT 0,
  `last_map` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `last_x` smallint UNSIGNED NOT NULL DEFAULT 53,
  `last_y` smallint UNSIGNED NOT NULL DEFAULT 111,
  `save_map` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `save_x` smallint UNSIGNED NOT NULL DEFAULT 53,
  `save_y` smallint UNSIGNED NOT NULL DEFAULT 111,
  `partner_id` int UNSIGNED NOT NULL DEFAULT 0,
  `online` tinyint NOT NULL DEFAULT 0,
  `father` int UNSIGNED NOT NULL DEFAULT 0,
  `mother` int UNSIGNED NOT NULL DEFAULT 0,
  `child` int UNSIGNED NOT NULL DEFAULT 0,
  `fame` int UNSIGNED NOT NULL DEFAULT 0,
  `rename` smallint UNSIGNED NOT NULL DEFAULT 0,
  `delete_date` int UNSIGNED NOT NULL DEFAULT 0,
  `moves` int UNSIGNED NOT NULL DEFAULT 0,
  `unban_time` int UNSIGNED NOT NULL DEFAULT 0,
  `font` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `uniqueitem_counter` int UNSIGNED NOT NULL DEFAULT 0,
  `sex` enum('M','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `hotkey_rowshift` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `hotkey_rowshift2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `clan_id` int UNSIGNED NOT NULL DEFAULT 0,
  `last_login` datetime NULL DEFAULT NULL,
  `title_id` int UNSIGNED NOT NULL DEFAULT 0,
  `show_equip` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`char_id`) USING BTREE,
  UNIQUE INDEX `name_key`(`name`) USING BTREE,
  INDEX `account_id`(`account_id`) USING BTREE,
  INDEX `party_id`(`party_id`) USING BTREE,
  INDEX `guild_id`(`guild_id`) USING BTREE,
  INDEX `online`(`online`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 150000 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of char
-- ----------------------------
INSERT INTO `char` VALUES (150000, 2000000, 0, 'Start', 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 40, 40, 11, 11, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'bat_room', 181, 175, 'prontera', 156, 191, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'M', 0, 0, 0, '2021-09-25 13:54:08', 0, 0);

-- ----------------------------
-- Table structure for char_reg_num
-- ----------------------------
DROP TABLE IF EXISTS `char_reg_num`;
CREATE TABLE `char_reg_num`  (
  `char_id` int UNSIGNED NOT NULL DEFAULT 0,
  `key` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `index` int UNSIGNED NOT NULL DEFAULT 0,
  `value` bigint NOT NULL DEFAULT 0,
  PRIMARY KEY (`char_id`, `key`, `index`) USING BTREE,
  INDEX `char_id`(`char_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of char_reg_num
-- ----------------------------

-- ----------------------------
-- Table structure for char_reg_str
-- ----------------------------
DROP TABLE IF EXISTS `char_reg_str`;
CREATE TABLE `char_reg_str`  (
  `char_id` int UNSIGNED NOT NULL DEFAULT 0,
  `key` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `index` int UNSIGNED NOT NULL DEFAULT 0,
  `value` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`, `key`, `index`) USING BTREE,
  INDEX `char_id`(`char_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of char_reg_str
-- ----------------------------

-- ----------------------------
-- Table structure for charlog
-- ----------------------------
DROP TABLE IF EXISTS `charlog`;
CREATE TABLE `charlog`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `char_msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'char select',
  `account_id` int NOT NULL DEFAULT 0,
  `char_num` tinyint NOT NULL DEFAULT 0,
  `name` varchar(23) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `str` int UNSIGNED NOT NULL DEFAULT 0,
  `agi` int UNSIGNED NOT NULL DEFAULT 0,
  `vit` int UNSIGNED NOT NULL DEFAULT 0,
  `int` int UNSIGNED NOT NULL DEFAULT 0,
  `dex` int UNSIGNED NOT NULL DEFAULT 0,
  `luk` int UNSIGNED NOT NULL DEFAULT 0,
  `hair` tinyint NOT NULL DEFAULT 0,
  `hair_color` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `account_id`(`account_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of charlog
-- ----------------------------
INSERT INTO `charlog` VALUES (1, '2021-09-25 13:44:52', 'make new char', 2000000, 0, 'Start', 1, 1, 1, 1, 1, 1, 1, 0);
INSERT INTO `charlog` VALUES (2, '2021-09-25 13:44:53', 'char select', 2000000, 0, 'Start', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (3, '2021-09-25 13:49:50', 'char select', 2000000, 0, 'Start', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (4, '2021-09-25 13:50:09', 'char select', 2000000, 0, 'Start', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (5, '2021-09-25 13:53:04', 'char select', 2000000, 0, 'Start', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (6, '2021-09-25 13:53:53', 'char select', 2000000, 0, 'Start', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (7, '2021-09-25 13:54:08', 'char select', 2000000, 0, 'Start', 0, 0, 0, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for chatlog
-- ----------------------------
DROP TABLE IF EXISTS `chatlog`;
CREATE TABLE `chatlog`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `type` enum('O','W','P','G','M','C') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'O',
  `type_id` int NOT NULL DEFAULT 0,
  `src_charid` int NOT NULL DEFAULT 0,
  `src_accountid` int NOT NULL DEFAULT 0,
  `src_map` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `src_map_x` smallint NOT NULL DEFAULT 0,
  `src_map_y` smallint NOT NULL DEFAULT 0,
  `dst_charname` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `message` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `src_accountid`(`src_accountid`) USING BTREE,
  INDEX `src_charid`(`src_charid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chatlog
-- ----------------------------

-- ----------------------------
-- Table structure for clan
-- ----------------------------
DROP TABLE IF EXISTS `clan`;
CREATE TABLE `clan`  (
  `clan_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `master` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `mapname` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `max_member` smallint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`clan_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of clan
-- ----------------------------

-- ----------------------------
-- Table structure for clan_alliance
-- ----------------------------
DROP TABLE IF EXISTS `clan_alliance`;
CREATE TABLE `clan_alliance`  (
  `clan_id` int UNSIGNED NOT NULL DEFAULT 0,
  `opposition` int UNSIGNED NOT NULL DEFAULT 0,
  `alliance_id` int UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`clan_id`, `alliance_id`) USING BTREE,
  INDEX `alliance_id`(`alliance_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of clan_alliance
-- ----------------------------

-- ----------------------------
-- Table structure for db_roulette
-- ----------------------------
DROP TABLE IF EXISTS `db_roulette`;
CREATE TABLE `db_roulette`  (
  `index` int NOT NULL DEFAULT 0,
  `level` smallint UNSIGNED NOT NULL,
  `item_id` int UNSIGNED NOT NULL,
  `amount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `flag` smallint UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`index`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of db_roulette
-- ----------------------------

-- ----------------------------
-- Table structure for elemental
-- ----------------------------
DROP TABLE IF EXISTS `elemental`;
CREATE TABLE `elemental`  (
  `ele_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `char_id` int NOT NULL,
  `class` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `mode` int UNSIGNED NOT NULL DEFAULT 1,
  `hp` int UNSIGNED NOT NULL DEFAULT 0,
  `sp` int UNSIGNED NOT NULL DEFAULT 0,
  `max_hp` int UNSIGNED NOT NULL DEFAULT 0,
  `max_sp` int UNSIGNED NOT NULL DEFAULT 0,
  `atk1` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `atk2` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `matk` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `aspd` smallint UNSIGNED NOT NULL DEFAULT 0,
  `def` smallint UNSIGNED NOT NULL DEFAULT 0,
  `mdef` smallint UNSIGNED NOT NULL DEFAULT 0,
  `flee` smallint UNSIGNED NOT NULL DEFAULT 0,
  `hit` smallint UNSIGNED NOT NULL DEFAULT 0,
  `life_time` bigint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ele_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of elemental
-- ----------------------------

-- ----------------------------
-- Table structure for feedinglog
-- ----------------------------
DROP TABLE IF EXISTS `feedinglog`;
CREATE TABLE `feedinglog`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `char_id` int NOT NULL,
  `target_id` int NOT NULL,
  `target_class` smallint NOT NULL,
  `type` enum('P','H','O') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `intimacy` int UNSIGNED NOT NULL,
  `item_id` int UNSIGNED NOT NULL,
  `map` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `x` smallint UNSIGNED NOT NULL,
  `y` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feedinglog
-- ----------------------------

-- ----------------------------
-- Table structure for friends
-- ----------------------------
DROP TABLE IF EXISTS `friends`;
CREATE TABLE `friends`  (
  `char_id` int NOT NULL DEFAULT 0,
  `friend_id` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`char_id`, `friend_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of friends
-- ----------------------------

-- ----------------------------
-- Table structure for global_acc_reg_num
-- ----------------------------
DROP TABLE IF EXISTS `global_acc_reg_num`;
CREATE TABLE `global_acc_reg_num`  (
  `account_id` int UNSIGNED NOT NULL DEFAULT 0,
  `key` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `index` int UNSIGNED NOT NULL DEFAULT 0,
  `value` bigint NOT NULL DEFAULT 0,
  PRIMARY KEY (`account_id`, `key`, `index`) USING BTREE,
  INDEX `account_id`(`account_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of global_acc_reg_num
-- ----------------------------

-- ----------------------------
-- Table structure for global_acc_reg_str
-- ----------------------------
DROP TABLE IF EXISTS `global_acc_reg_str`;
CREATE TABLE `global_acc_reg_str`  (
  `account_id` int UNSIGNED NOT NULL DEFAULT 0,
  `key` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `index` int UNSIGNED NOT NULL DEFAULT 0,
  `value` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`, `key`, `index`) USING BTREE,
  INDEX `account_id`(`account_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of global_acc_reg_str
-- ----------------------------

-- ----------------------------
-- Table structure for guild
-- ----------------------------
DROP TABLE IF EXISTS `guild`;
CREATE TABLE `guild`  (
  `guild_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `char_id` int UNSIGNED NOT NULL DEFAULT 0,
  `master` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `guild_lv` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `connect_member` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `max_member` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `average_lv` smallint UNSIGNED NOT NULL DEFAULT 1,
  `exp` bigint UNSIGNED NOT NULL DEFAULT 0,
  `next_exp` bigint UNSIGNED NOT NULL DEFAULT 0,
  `skill_point` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `mes1` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `mes2` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `emblem_len` int UNSIGNED NOT NULL DEFAULT 0,
  `emblem_id` int UNSIGNED NOT NULL DEFAULT 0,
  `emblem_data` blob NULL,
  `last_master_change` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`guild_id`, `char_id`) USING BTREE,
  UNIQUE INDEX `guild_id`(`guild_id`) USING BTREE,
  INDEX `char_id`(`char_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guild
-- ----------------------------

-- ----------------------------
-- Table structure for guild_alliance
-- ----------------------------
DROP TABLE IF EXISTS `guild_alliance`;
CREATE TABLE `guild_alliance`  (
  `guild_id` int UNSIGNED NOT NULL DEFAULT 0,
  `opposition` int UNSIGNED NOT NULL DEFAULT 0,
  `alliance_id` int UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`guild_id`, `alliance_id`) USING BTREE,
  INDEX `alliance_id`(`alliance_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guild_alliance
-- ----------------------------

-- ----------------------------
-- Table structure for guild_castle
-- ----------------------------
DROP TABLE IF EXISTS `guild_castle`;
CREATE TABLE `guild_castle`  (
  `castle_id` int UNSIGNED NOT NULL DEFAULT 0,
  `guild_id` int UNSIGNED NOT NULL DEFAULT 0,
  `economy` int UNSIGNED NOT NULL DEFAULT 0,
  `defense` int UNSIGNED NOT NULL DEFAULT 0,
  `triggerE` int UNSIGNED NOT NULL DEFAULT 0,
  `triggerD` int UNSIGNED NOT NULL DEFAULT 0,
  `nextTime` int UNSIGNED NOT NULL DEFAULT 0,
  `payTime` int UNSIGNED NOT NULL DEFAULT 0,
  `createTime` int UNSIGNED NOT NULL DEFAULT 0,
  `visibleC` int UNSIGNED NOT NULL DEFAULT 0,
  `visibleG0` int UNSIGNED NOT NULL DEFAULT 0,
  `visibleG1` int UNSIGNED NOT NULL DEFAULT 0,
  `visibleG2` int UNSIGNED NOT NULL DEFAULT 0,
  `visibleG3` int UNSIGNED NOT NULL DEFAULT 0,
  `visibleG4` int UNSIGNED NOT NULL DEFAULT 0,
  `visibleG5` int UNSIGNED NOT NULL DEFAULT 0,
  `visibleG6` int UNSIGNED NOT NULL DEFAULT 0,
  `visibleG7` int UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`castle_id`) USING BTREE,
  INDEX `guild_id`(`guild_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of guild_castle
-- ----------------------------

-- ----------------------------
-- Table structure for guild_expulsion
-- ----------------------------
DROP TABLE IF EXISTS `guild_expulsion`;
CREATE TABLE `guild_expulsion`  (
  `guild_id` int UNSIGNED NOT NULL DEFAULT 0,
  `account_id` int UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `mes` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`guild_id`, `name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guild_expulsion
-- ----------------------------

-- ----------------------------
-- Table structure for guild_member
-- ----------------------------
DROP TABLE IF EXISTS `guild_member`;
CREATE TABLE `guild_member`  (
  `guild_id` int UNSIGNED NOT NULL DEFAULT 0,
  `char_id` int UNSIGNED NOT NULL DEFAULT 0,
  `exp` bigint UNSIGNED NOT NULL DEFAULT 0,
  `position` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guild_id`, `char_id`) USING BTREE,
  INDEX `char_id`(`char_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of guild_member
-- ----------------------------

-- ----------------------------
-- Table structure for guild_position
-- ----------------------------
DROP TABLE IF EXISTS `guild_position`;
CREATE TABLE `guild_position`  (
  `guild_id` int UNSIGNED NOT NULL DEFAULT 0,
  `position` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `mode` smallint UNSIGNED NOT NULL DEFAULT 0,
  `exp_mode` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guild_id`, `position`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guild_position
-- ----------------------------

-- ----------------------------
-- Table structure for guild_skill
-- ----------------------------
DROP TABLE IF EXISTS `guild_skill`;
CREATE TABLE `guild_skill`  (
  `guild_id` int UNSIGNED NOT NULL DEFAULT 0,
  `id` smallint UNSIGNED NOT NULL DEFAULT 0,
  `lv` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guild_id`, `id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of guild_skill
-- ----------------------------

-- ----------------------------
-- Table structure for guild_storage
-- ----------------------------
DROP TABLE IF EXISTS `guild_storage`;
CREATE TABLE `guild_storage`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `guild_id` int UNSIGNED NOT NULL DEFAULT 0,
  `nameid` int UNSIGNED NOT NULL DEFAULT 0,
  `amount` int UNSIGNED NOT NULL DEFAULT 0,
  `equip` int UNSIGNED NOT NULL DEFAULT 0,
  `identify` smallint UNSIGNED NOT NULL DEFAULT 0,
  `refine` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `attribute` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `card0` int UNSIGNED NOT NULL DEFAULT 0,
  `card1` int UNSIGNED NOT NULL DEFAULT 0,
  `card2` int UNSIGNED NOT NULL DEFAULT 0,
  `card3` int UNSIGNED NOT NULL DEFAULT 0,
  `option_id0` smallint NOT NULL DEFAULT 0,
  `option_val0` smallint NOT NULL DEFAULT 0,
  `option_parm0` tinyint NOT NULL DEFAULT 0,
  `option_id1` smallint NOT NULL DEFAULT 0,
  `option_val1` smallint NOT NULL DEFAULT 0,
  `option_parm1` tinyint NOT NULL DEFAULT 0,
  `option_id2` smallint NOT NULL DEFAULT 0,
  `option_val2` smallint NOT NULL DEFAULT 0,
  `option_parm2` tinyint NOT NULL DEFAULT 0,
  `option_id3` smallint NOT NULL DEFAULT 0,
  `option_val3` smallint NOT NULL DEFAULT 0,
  `option_parm3` tinyint NOT NULL DEFAULT 0,
  `option_id4` smallint NOT NULL DEFAULT 0,
  `option_val4` smallint NOT NULL DEFAULT 0,
  `option_parm4` tinyint NOT NULL DEFAULT 0,
  `expire_time` int UNSIGNED NOT NULL DEFAULT 0,
  `bound` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `unique_id` bigint UNSIGNED NOT NULL DEFAULT 0,
  `enchantgrade` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `guild_id`(`guild_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of guild_storage
-- ----------------------------

-- ----------------------------
-- Table structure for guild_storage_log
-- ----------------------------
DROP TABLE IF EXISTS `guild_storage_log`;
CREATE TABLE `guild_storage_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `guild_id` int UNSIGNED NOT NULL DEFAULT 0,
  `time` datetime NOT NULL,
  `char_id` int NOT NULL DEFAULT 0,
  `name` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `nameid` int UNSIGNED NOT NULL DEFAULT 0,
  `amount` int NOT NULL DEFAULT 1,
  `identify` smallint NOT NULL DEFAULT 0,
  `refine` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `attribute` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `card0` int UNSIGNED NOT NULL DEFAULT 0,
  `card1` int UNSIGNED NOT NULL DEFAULT 0,
  `card2` int UNSIGNED NOT NULL DEFAULT 0,
  `card3` int UNSIGNED NOT NULL DEFAULT 0,
  `option_id0` smallint NOT NULL DEFAULT 0,
  `option_val0` smallint NOT NULL DEFAULT 0,
  `option_parm0` tinyint NOT NULL DEFAULT 0,
  `option_id1` smallint NOT NULL DEFAULT 0,
  `option_val1` smallint NOT NULL DEFAULT 0,
  `option_parm1` tinyint NOT NULL DEFAULT 0,
  `option_id2` smallint NOT NULL DEFAULT 0,
  `option_val2` smallint NOT NULL DEFAULT 0,
  `option_parm2` tinyint NOT NULL DEFAULT 0,
  `option_id3` smallint NOT NULL DEFAULT 0,
  `option_val3` smallint NOT NULL DEFAULT 0,
  `option_parm3` tinyint NOT NULL DEFAULT 0,
  `option_id4` smallint NOT NULL DEFAULT 0,
  `option_val4` smallint NOT NULL DEFAULT 0,
  `option_parm4` tinyint NOT NULL DEFAULT 0,
  `expire_time` int UNSIGNED NOT NULL DEFAULT 0,
  `unique_id` bigint UNSIGNED NOT NULL DEFAULT 0,
  `bound` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `enchantgrade` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `guild_id`(`guild_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guild_storage_log
-- ----------------------------

-- ----------------------------
-- Table structure for homunculus
-- ----------------------------
DROP TABLE IF EXISTS `homunculus`;
CREATE TABLE `homunculus`  (
  `homun_id` int NOT NULL AUTO_INCREMENT,
  `char_id` int NOT NULL,
  `class` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `prev_class` mediumint NOT NULL DEFAULT 0,
  `name` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `level` smallint NOT NULL DEFAULT 0,
  `exp` bigint UNSIGNED NOT NULL DEFAULT 0,
  `intimacy` int NOT NULL DEFAULT 0,
  `hunger` smallint NOT NULL DEFAULT 0,
  `str` smallint UNSIGNED NOT NULL DEFAULT 0,
  `agi` smallint UNSIGNED NOT NULL DEFAULT 0,
  `vit` smallint UNSIGNED NOT NULL DEFAULT 0,
  `int` smallint UNSIGNED NOT NULL DEFAULT 0,
  `dex` smallint UNSIGNED NOT NULL DEFAULT 0,
  `luk` smallint UNSIGNED NOT NULL DEFAULT 0,
  `hp` int UNSIGNED NOT NULL DEFAULT 0,
  `max_hp` int UNSIGNED NOT NULL DEFAULT 0,
  `sp` int NOT NULL DEFAULT 0,
  `max_sp` int NOT NULL DEFAULT 0,
  `skill_point` smallint UNSIGNED NOT NULL DEFAULT 0,
  `alive` tinyint NOT NULL DEFAULT 1,
  `rename_flag` tinyint NOT NULL DEFAULT 0,
  `vaporize` tinyint NOT NULL DEFAULT 0,
  `autofeed` tinyint NOT NULL DEFAULT 0,
  PRIMARY KEY (`homun_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of homunculus
-- ----------------------------

-- ----------------------------
-- Table structure for hotkey
-- ----------------------------
DROP TABLE IF EXISTS `hotkey`;
CREATE TABLE `hotkey`  (
  `char_id` int NOT NULL,
  `hotkey` tinyint UNSIGNED NOT NULL,
  `type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `itemskill_id` int UNSIGNED NOT NULL DEFAULT 0,
  `skill_lvl` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`char_id`, `hotkey`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of hotkey
-- ----------------------------

-- ----------------------------
-- Table structure for interlog
-- ----------------------------
DROP TABLE IF EXISTS `interlog`;
CREATE TABLE `interlog`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `log` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `time`(`time`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of interlog
-- ----------------------------

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `char_id` int UNSIGNED NOT NULL DEFAULT 0,
  `nameid` int UNSIGNED NOT NULL DEFAULT 0,
  `amount` int UNSIGNED NOT NULL DEFAULT 0,
  `equip` int UNSIGNED NOT NULL DEFAULT 0,
  `identify` smallint NOT NULL DEFAULT 0,
  `refine` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `attribute` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `card0` int UNSIGNED NOT NULL DEFAULT 0,
  `card1` int UNSIGNED NOT NULL DEFAULT 0,
  `card2` int UNSIGNED NOT NULL DEFAULT 0,
  `card3` int UNSIGNED NOT NULL DEFAULT 0,
  `option_id0` smallint NOT NULL DEFAULT 0,
  `option_val0` smallint NOT NULL DEFAULT 0,
  `option_parm0` tinyint NOT NULL DEFAULT 0,
  `option_id1` smallint NOT NULL DEFAULT 0,
  `option_val1` smallint NOT NULL DEFAULT 0,
  `option_parm1` tinyint NOT NULL DEFAULT 0,
  `option_id2` smallint NOT NULL DEFAULT 0,
  `option_val2` smallint NOT NULL DEFAULT 0,
  `option_parm2` tinyint NOT NULL DEFAULT 0,
  `option_id3` smallint NOT NULL DEFAULT 0,
  `option_val3` smallint NOT NULL DEFAULT 0,
  `option_parm3` tinyint NOT NULL DEFAULT 0,
  `option_id4` smallint NOT NULL DEFAULT 0,
  `option_val4` smallint NOT NULL DEFAULT 0,
  `option_parm4` tinyint NOT NULL DEFAULT 0,
  `expire_time` int UNSIGNED NOT NULL DEFAULT 0,
  `favorite` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `bound` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `unique_id` bigint UNSIGNED NOT NULL DEFAULT 0,
  `equip_switch` int UNSIGNED NOT NULL DEFAULT 0,
  `enchantgrade` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `char_id`(`char_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of inventory
-- ----------------------------

-- ----------------------------
-- Table structure for ipbanlist
-- ----------------------------
DROP TABLE IF EXISTS `ipbanlist`;
CREATE TABLE `ipbanlist`  (
  `list` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `btime` datetime NOT NULL,
  `rtime` datetime NOT NULL,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`list`, `btime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ipbanlist
-- ----------------------------

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login`  (
  `account_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `userid` varchar(23) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `user_pass` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `sex` enum('M','F','S') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'M',
  `email` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `group_id` tinyint NOT NULL DEFAULT 0,
  `state` int UNSIGNED NOT NULL DEFAULT 0,
  `unban_time` int UNSIGNED NOT NULL DEFAULT 0,
  `expiration_time` int UNSIGNED NOT NULL DEFAULT 0,
  `logincount` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `lastlogin` datetime NULL DEFAULT NULL,
  `last_ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `birthdate` date NULL DEFAULT NULL,
  `character_slots` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `pincode` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `pincode_change` int UNSIGNED NOT NULL DEFAULT 0,
  `vip_time` int UNSIGNED NOT NULL DEFAULT 0,
  `old_group` tinyint NOT NULL DEFAULT 0,
  `web_auth_token` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `web_auth_token_enabled` tinyint NOT NULL DEFAULT 0,
  PRIMARY KEY (`account_id`) USING BTREE,
  UNIQUE INDEX `web_auth_token_key`(`web_auth_token`) USING BTREE,
  INDEX `name`(`userid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2000000 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES (1, 'cwid', 'cwpw', 'S', 'athena@athena.com', 0, 0, 0, 0, 19, '2021-09-25 14:15:57', '127.0.0.1', NULL, 0, '', 0, 0, 0, NULL, 0);
INSERT INTO `login` VALUES (2000000, 'kaninhot004', '1', 'M', 'a@a.com', 99, 0, 0, 0, 5, '2021-09-25 13:54:08', '127.0.0.1', NULL, 15, '', 0, 0, 0, NULL, 0);

-- ----------------------------
-- Table structure for loginlog
-- ----------------------------
DROP TABLE IF EXISTS `loginlog`;
CREATE TABLE `loginlog`  (
  `time` datetime NOT NULL,
  `ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `user` varchar(23) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `rcode` tinyint NOT NULL DEFAULT 0,
  `log` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  INDEX `ip`(`ip`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of loginlog
-- ----------------------------
INSERT INTO `loginlog` VALUES ('2021-09-25 12:50:51', '0.0.0.0', 'login server', 100, 'login server started');
INSERT INTO `loginlog` VALUES ('2021-09-25 12:50:52', '127.0.0.1', 'cwid', 100, 'charserver - Castle Wars - RO@127.0.0.1:6121');
INSERT INTO `loginlog` VALUES ('2021-09-25 12:50:56', '0.0.0.0', 'login server', 100, 'login server shutdown');
INSERT INTO `loginlog` VALUES ('2021-09-25 12:51:15', '0.0.0.0', 'login server', 100, 'login server started');
INSERT INTO `loginlog` VALUES ('2021-09-25 12:51:17', '127.0.0.1', 'cwid', 100, 'charserver - Castle Wars - RO@127.0.0.1:6121');
INSERT INTO `loginlog` VALUES ('2021-09-25 12:51:50', '0.0.0.0', 'login server', 100, 'login server shutdown');
INSERT INTO `loginlog` VALUES ('2021-09-25 12:51:51', '0.0.0.0', 'login server', 100, 'login server started');
INSERT INTO `loginlog` VALUES ('2021-09-25 12:51:52', '127.0.0.1', 'cwid', 100, 'charserver - Castle Wars - RO@127.0.0.1:6121');
INSERT INTO `loginlog` VALUES ('2021-09-25 12:52:18', '0.0.0.0', 'login server', 100, 'login server started');
INSERT INTO `loginlog` VALUES ('2021-09-25 12:52:19', '127.0.0.1', 'cwid', 100, 'charserver - Castle Wars - RO@127.0.0.1:6121');
INSERT INTO `loginlog` VALUES ('2021-09-25 12:52:40', '0.0.0.0', 'login server', 100, 'login server started');
INSERT INTO `loginlog` VALUES ('2021-09-25 12:52:41', '127.0.0.1', 'cwid', 100, 'charserver - Castle Wars - RO@127.0.0.1:6121');
INSERT INTO `loginlog` VALUES ('2021-09-25 12:58:03', '0.0.0.0', 'login server', 100, 'login server started');
INSERT INTO `loginlog` VALUES ('2021-09-25 12:58:04', '127.0.0.1', 'cwid', 100, 'charserver - Castle Wars - RO@127.0.0.1:6121');
INSERT INTO `loginlog` VALUES ('2021-09-25 13:00:22', '0.0.0.0', 'login server', 100, 'login server started');
INSERT INTO `loginlog` VALUES ('2021-09-25 13:00:23', '127.0.0.1', 'cwid', 100, 'charserver - Castle Wars - RO@127.0.0.1:6121');
INSERT INTO `loginlog` VALUES ('2021-09-25 13:01:37', '0.0.0.0', 'login server', 100, 'login server started');
INSERT INTO `loginlog` VALUES ('2021-09-25 13:01:39', '127.0.0.1', 'cwid', 100, 'charserver - Castle Wars - RO@127.0.0.1:6121');
INSERT INTO `loginlog` VALUES ('2021-09-25 13:02:03', '0.0.0.0', 'login server', 100, 'login server started');
INSERT INTO `loginlog` VALUES ('2021-09-25 13:02:04', '127.0.0.1', 'cwid', 100, 'charserver - Castle Wars - RO@127.0.0.1:6121');
INSERT INTO `loginlog` VALUES ('2021-09-25 13:02:38', '0.0.0.0', 'login server', 100, 'login server started');
INSERT INTO `loginlog` VALUES ('2021-09-25 13:02:39', '127.0.0.1', 'cwid', 100, 'charserver - Castle Wars - RO@127.0.0.1:6121');
INSERT INTO `loginlog` VALUES ('2021-09-25 13:02:56', '0.0.0.0', 'login server', 100, 'login server started');
INSERT INTO `loginlog` VALUES ('2021-09-25 13:02:57', '127.0.0.1', 'cwid', 100, 'charserver - Castle Wars - RO@127.0.0.1:6121');
INSERT INTO `loginlog` VALUES ('2021-09-25 13:04:28', '0.0.0.0', 'login server', 100, 'login server started');
INSERT INTO `loginlog` VALUES ('2021-09-25 13:04:29', '127.0.0.1', 'cwid', 100, 'charserver - Castle Wars - RO@127.0.0.1:6121');
INSERT INTO `loginlog` VALUES ('2021-09-25 13:06:16', '0.0.0.0', 'login server', 100, 'login server started');
INSERT INTO `loginlog` VALUES ('2021-09-25 13:06:17', '127.0.0.1', 'cwid', 100, 'charserver - Castle Wars - RO@127.0.0.1:6121');
INSERT INTO `loginlog` VALUES ('2021-09-25 13:33:28', '0.0.0.0', 'login server', 100, 'login server started');
INSERT INTO `loginlog` VALUES ('2021-09-25 13:33:29', '127.0.0.1', 'cwid', 100, 'charserver - Castle Wars - RO@127.0.0.1:6121');
INSERT INTO `loginlog` VALUES ('2021-09-25 13:37:44', '0.0.0.0', 'login server', 100, 'login server started');
INSERT INTO `loginlog` VALUES ('2021-09-25 13:37:45', '127.0.0.1', 'cwid', 100, 'charserver - Castle Wars - RO@127.0.0.1:6121');
INSERT INTO `loginlog` VALUES ('2021-09-25 13:41:34', '0.0.0.0', 'login server', 100, 'login server started');
INSERT INTO `loginlog` VALUES ('2021-09-25 13:41:35', '127.0.0.1', 'cwid', 100, 'charserver - Castle Wars - RO@127.0.0.1:6121');
INSERT INTO `loginlog` VALUES ('2021-09-25 13:42:34', '0.0.0.0', 'login server', 100, 'login server started');
INSERT INTO `loginlog` VALUES ('2021-09-25 13:42:35', '127.0.0.1', 'cwid', 100, 'charserver - Castle Wars - RO@127.0.0.1:6121');
INSERT INTO `loginlog` VALUES ('2021-09-25 13:42:40', '0.0.0.0', 'login server', 100, 'login server started');
INSERT INTO `loginlog` VALUES ('2021-09-25 13:42:42', '127.0.0.1', 'cwid', 100, 'charserver - Castle Wars - RO@127.0.0.1:6121');
INSERT INTO `loginlog` VALUES ('2021-09-25 13:44:47', '127.0.0.1', 'kaninhot004', 100, 'login ok');
INSERT INTO `loginlog` VALUES ('2021-09-25 13:49:49', '127.0.0.1', 'kaninhot004', 100, 'login ok');
INSERT INTO `loginlog` VALUES ('2021-09-25 13:53:04', '127.0.0.1', 'kaninhot004', 100, 'login ok');
INSERT INTO `loginlog` VALUES ('2021-09-25 13:53:53', '127.0.0.1', 'kaninhot004', 100, 'login ok');
INSERT INTO `loginlog` VALUES ('2021-09-25 13:54:08', '127.0.0.1', 'kaninhot004', 100, 'login ok');
INSERT INTO `loginlog` VALUES ('2021-09-25 14:15:40', '0.0.0.0', 'login server', 100, 'login server shutdown');
INSERT INTO `loginlog` VALUES ('2021-09-25 14:15:56', '0.0.0.0', 'login server', 100, 'login server started');
INSERT INTO `loginlog` VALUES ('2021-09-25 14:15:57', '127.0.0.1', 'cwid', 100, 'charserver - Castle Wars - RO@127.0.0.1:6121');

-- ----------------------------
-- Table structure for mail
-- ----------------------------
DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `send_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `send_id` int UNSIGNED NOT NULL DEFAULT 0,
  `dest_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `dest_id` int UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `time` int UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint NOT NULL DEFAULT 0,
  `zeny` int UNSIGNED NOT NULL DEFAULT 0,
  `type` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mail
-- ----------------------------

-- ----------------------------
-- Table structure for mail_attachments
-- ----------------------------
DROP TABLE IF EXISTS `mail_attachments`;
CREATE TABLE `mail_attachments`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `index` smallint UNSIGNED NOT NULL DEFAULT 0,
  `nameid` int UNSIGNED NOT NULL DEFAULT 0,
  `amount` int UNSIGNED NOT NULL DEFAULT 0,
  `refine` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `attribute` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `identify` smallint NOT NULL DEFAULT 0,
  `card0` int UNSIGNED NOT NULL DEFAULT 0,
  `card1` int UNSIGNED NOT NULL DEFAULT 0,
  `card2` int UNSIGNED NOT NULL DEFAULT 0,
  `card3` int UNSIGNED NOT NULL DEFAULT 0,
  `option_id0` smallint NOT NULL DEFAULT 0,
  `option_val0` smallint NOT NULL DEFAULT 0,
  `option_parm0` tinyint NOT NULL DEFAULT 0,
  `option_id1` smallint NOT NULL DEFAULT 0,
  `option_val1` smallint NOT NULL DEFAULT 0,
  `option_parm1` tinyint NOT NULL DEFAULT 0,
  `option_id2` smallint NOT NULL DEFAULT 0,
  `option_val2` smallint NOT NULL DEFAULT 0,
  `option_parm2` tinyint NOT NULL DEFAULT 0,
  `option_id3` smallint NOT NULL DEFAULT 0,
  `option_val3` smallint NOT NULL DEFAULT 0,
  `option_parm3` tinyint NOT NULL DEFAULT 0,
  `option_id4` smallint NOT NULL DEFAULT 0,
  `option_val4` smallint NOT NULL DEFAULT 0,
  `option_parm4` tinyint NOT NULL DEFAULT 0,
  `unique_id` bigint UNSIGNED NOT NULL DEFAULT 0,
  `bound` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `enchantgrade` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`, `index`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of mail_attachments
-- ----------------------------

-- ----------------------------
-- Table structure for mapreg
-- ----------------------------
DROP TABLE IF EXISTS `mapreg`;
CREATE TABLE `mapreg`  (
  `varname` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `index` int UNSIGNED NOT NULL DEFAULT 0,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`varname`, `index`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mapreg
-- ----------------------------

-- ----------------------------
-- Table structure for market
-- ----------------------------
DROP TABLE IF EXISTS `market`;
CREATE TABLE `market`  (
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `nameid` int UNSIGNED NOT NULL,
  `price` int UNSIGNED NOT NULL,
  `amount` smallint UNSIGNED NOT NULL,
  `flag` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`, `nameid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of market
-- ----------------------------

-- ----------------------------
-- Table structure for memo
-- ----------------------------
DROP TABLE IF EXISTS `memo`;
CREATE TABLE `memo`  (
  `memo_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `char_id` int UNSIGNED NOT NULL DEFAULT 0,
  `map` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `x` smallint UNSIGNED NOT NULL DEFAULT 0,
  `y` smallint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`memo_id`) USING BTREE,
  INDEX `char_id`(`char_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of memo
-- ----------------------------

-- ----------------------------
-- Table structure for mercenary
-- ----------------------------
DROP TABLE IF EXISTS `mercenary`;
CREATE TABLE `mercenary`  (
  `mer_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `char_id` int NOT NULL,
  `class` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `hp` int UNSIGNED NOT NULL DEFAULT 0,
  `sp` int UNSIGNED NOT NULL DEFAULT 0,
  `kill_counter` int NOT NULL,
  `life_time` bigint NOT NULL DEFAULT 0,
  PRIMARY KEY (`mer_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of mercenary
-- ----------------------------

-- ----------------------------
-- Table structure for mercenary_owner
-- ----------------------------
DROP TABLE IF EXISTS `mercenary_owner`;
CREATE TABLE `mercenary_owner`  (
  `char_id` int NOT NULL,
  `merc_id` int NOT NULL DEFAULT 0,
  `arch_calls` int NOT NULL DEFAULT 0,
  `arch_faith` int NOT NULL DEFAULT 0,
  `spear_calls` int NOT NULL DEFAULT 0,
  `spear_faith` int NOT NULL DEFAULT 0,
  `sword_calls` int NOT NULL DEFAULT 0,
  `sword_faith` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`char_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of mercenary_owner
-- ----------------------------

-- ----------------------------
-- Table structure for mvplog
-- ----------------------------
DROP TABLE IF EXISTS `mvplog`;
CREATE TABLE `mvplog`  (
  `mvp_id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT,
  `mvp_date` datetime NOT NULL,
  `kill_char_id` int NOT NULL DEFAULT 0,
  `monster_id` smallint NOT NULL DEFAULT 0,
  `prize` int UNSIGNED NOT NULL DEFAULT 0,
  `mvpexp` bigint UNSIGNED NOT NULL DEFAULT 0,
  `map` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`mvp_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mvplog
-- ----------------------------

-- ----------------------------
-- Table structure for npclog
-- ----------------------------
DROP TABLE IF EXISTS `npclog`;
CREATE TABLE `npclog`  (
  `npc_id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT,
  `npc_date` datetime NOT NULL,
  `account_id` int UNSIGNED NOT NULL DEFAULT 0,
  `char_id` int UNSIGNED NOT NULL DEFAULT 0,
  `char_name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `map` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `mes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`npc_id`) USING BTREE,
  INDEX `account_id`(`account_id`) USING BTREE,
  INDEX `char_id`(`char_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of npclog
-- ----------------------------

-- ----------------------------
-- Table structure for party
-- ----------------------------
DROP TABLE IF EXISTS `party`;
CREATE TABLE `party`  (
  `party_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `exp` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `item` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `leader_id` int UNSIGNED NOT NULL DEFAULT 0,
  `leader_char` int UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`party_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of party
-- ----------------------------

-- ----------------------------
-- Table structure for pet
-- ----------------------------
DROP TABLE IF EXISTS `pet`;
CREATE TABLE `pet`  (
  `pet_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `class` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `account_id` int UNSIGNED NOT NULL DEFAULT 0,
  `char_id` int UNSIGNED NOT NULL DEFAULT 0,
  `level` smallint UNSIGNED NOT NULL DEFAULT 0,
  `egg_id` int UNSIGNED NOT NULL DEFAULT 0,
  `equip` int UNSIGNED NOT NULL DEFAULT 0,
  `intimate` smallint UNSIGNED NOT NULL DEFAULT 0,
  `hungry` smallint UNSIGNED NOT NULL DEFAULT 0,
  `rename_flag` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `incubate` int UNSIGNED NOT NULL DEFAULT 0,
  `autofeed` tinyint NOT NULL DEFAULT 0,
  PRIMARY KEY (`pet_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pet
-- ----------------------------

-- ----------------------------
-- Table structure for picklog
-- ----------------------------
DROP TABLE IF EXISTS `picklog`;
CREATE TABLE `picklog`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `char_id` int NOT NULL DEFAULT 0,
  `type` enum('M','P','L','T','V','S','N','C','A','R','G','E','B','O','I','X','D','U','$','F','Y','Z','Q','H') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'P',
  `nameid` int UNSIGNED NOT NULL DEFAULT 0,
  `amount` int NOT NULL DEFAULT 1,
  `refine` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `card0` int UNSIGNED NOT NULL DEFAULT 0,
  `card1` int UNSIGNED NOT NULL DEFAULT 0,
  `card2` int UNSIGNED NOT NULL DEFAULT 0,
  `card3` int UNSIGNED NOT NULL DEFAULT 0,
  `option_id0` smallint NOT NULL DEFAULT 0,
  `option_val0` smallint NOT NULL DEFAULT 0,
  `option_parm0` tinyint NOT NULL DEFAULT 0,
  `option_id1` smallint NOT NULL DEFAULT 0,
  `option_val1` smallint NOT NULL DEFAULT 0,
  `option_parm1` tinyint NOT NULL DEFAULT 0,
  `option_id2` smallint NOT NULL DEFAULT 0,
  `option_val2` smallint NOT NULL DEFAULT 0,
  `option_parm2` tinyint NOT NULL DEFAULT 0,
  `option_id3` smallint NOT NULL DEFAULT 0,
  `option_val3` smallint NOT NULL DEFAULT 0,
  `option_parm3` tinyint NOT NULL DEFAULT 0,
  `option_id4` smallint NOT NULL DEFAULT 0,
  `option_val4` smallint NOT NULL DEFAULT 0,
  `option_parm4` tinyint NOT NULL DEFAULT 0,
  `unique_id` bigint UNSIGNED NOT NULL DEFAULT 0,
  `map` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `bound` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `enchantgrade` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of picklog
-- ----------------------------

-- ----------------------------
-- Table structure for quest
-- ----------------------------
DROP TABLE IF EXISTS `quest`;
CREATE TABLE `quest`  (
  `char_id` int UNSIGNED NOT NULL DEFAULT 0,
  `quest_id` int UNSIGNED NOT NULL,
  `state` enum('0','1','2') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  `time` int UNSIGNED NOT NULL DEFAULT 0,
  `count1` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `count2` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `count3` mediumint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`char_id`, `quest_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of quest
-- ----------------------------

-- ----------------------------
-- Table structure for sales
-- ----------------------------
DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales`  (
  `nameid` int UNSIGNED NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `amount` int NOT NULL,
  PRIMARY KEY (`nameid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of sales
-- ----------------------------

-- ----------------------------
-- Table structure for sc_data
-- ----------------------------
DROP TABLE IF EXISTS `sc_data`;
CREATE TABLE `sc_data`  (
  `account_id` int UNSIGNED NOT NULL,
  `char_id` int UNSIGNED NOT NULL,
  `type` smallint UNSIGNED NOT NULL,
  `tick` bigint NOT NULL,
  `val1` int NOT NULL DEFAULT 0,
  `val2` int NOT NULL DEFAULT 0,
  `val3` int NOT NULL DEFAULT 0,
  `val4` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`char_id`, `type`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of sc_data
-- ----------------------------

-- ----------------------------
-- Table structure for skill
-- ----------------------------
DROP TABLE IF EXISTS `skill`;
CREATE TABLE `skill`  (
  `char_id` int UNSIGNED NOT NULL DEFAULT 0,
  `id` smallint UNSIGNED NOT NULL DEFAULT 0,
  `lv` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `flag` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`char_id`, `id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of skill
-- ----------------------------

-- ----------------------------
-- Table structure for skill_homunculus
-- ----------------------------
DROP TABLE IF EXISTS `skill_homunculus`;
CREATE TABLE `skill_homunculus`  (
  `homun_id` int NOT NULL,
  `id` int NOT NULL,
  `lv` smallint NOT NULL,
  PRIMARY KEY (`homun_id`, `id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of skill_homunculus
-- ----------------------------

-- ----------------------------
-- Table structure for skillcooldown
-- ----------------------------
DROP TABLE IF EXISTS `skillcooldown`;
CREATE TABLE `skillcooldown`  (
  `account_id` int UNSIGNED NOT NULL,
  `char_id` int UNSIGNED NOT NULL,
  `skill` smallint UNSIGNED NOT NULL DEFAULT 0,
  `tick` bigint NOT NULL,
  PRIMARY KEY (`char_id`, `skill`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of skillcooldown
-- ----------------------------

-- ----------------------------
-- Table structure for storage
-- ----------------------------
DROP TABLE IF EXISTS `storage`;
CREATE TABLE `storage`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `account_id` int UNSIGNED NOT NULL DEFAULT 0,
  `nameid` int UNSIGNED NOT NULL DEFAULT 0,
  `amount` smallint UNSIGNED NOT NULL DEFAULT 0,
  `equip` int UNSIGNED NOT NULL DEFAULT 0,
  `identify` smallint UNSIGNED NOT NULL DEFAULT 0,
  `refine` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `attribute` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `card0` int UNSIGNED NOT NULL DEFAULT 0,
  `card1` int UNSIGNED NOT NULL DEFAULT 0,
  `card2` int UNSIGNED NOT NULL DEFAULT 0,
  `card3` int UNSIGNED NOT NULL DEFAULT 0,
  `option_id0` smallint NOT NULL DEFAULT 0,
  `option_val0` smallint NOT NULL DEFAULT 0,
  `option_parm0` tinyint NOT NULL DEFAULT 0,
  `option_id1` smallint NOT NULL DEFAULT 0,
  `option_val1` smallint NOT NULL DEFAULT 0,
  `option_parm1` tinyint NOT NULL DEFAULT 0,
  `option_id2` smallint NOT NULL DEFAULT 0,
  `option_val2` smallint NOT NULL DEFAULT 0,
  `option_parm2` tinyint NOT NULL DEFAULT 0,
  `option_id3` smallint NOT NULL DEFAULT 0,
  `option_val3` smallint NOT NULL DEFAULT 0,
  `option_parm3` tinyint NOT NULL DEFAULT 0,
  `option_id4` smallint NOT NULL DEFAULT 0,
  `option_val4` smallint NOT NULL DEFAULT 0,
  `option_parm4` tinyint NOT NULL DEFAULT 0,
  `expire_time` int UNSIGNED NOT NULL DEFAULT 0,
  `bound` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `unique_id` bigint UNSIGNED NOT NULL DEFAULT 0,
  `enchantgrade` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `account_id`(`account_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of storage
-- ----------------------------

-- ----------------------------
-- Table structure for vending_items
-- ----------------------------
DROP TABLE IF EXISTS `vending_items`;
CREATE TABLE `vending_items`  (
  `vending_id` int UNSIGNED NOT NULL,
  `index` smallint UNSIGNED NOT NULL,
  `cartinventory_id` int UNSIGNED NOT NULL,
  `amount` smallint UNSIGNED NOT NULL,
  `price` int UNSIGNED NOT NULL,
  PRIMARY KEY (`vending_id`, `index`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of vending_items
-- ----------------------------

-- ----------------------------
-- Table structure for vendings
-- ----------------------------
DROP TABLE IF EXISTS `vendings`;
CREATE TABLE `vendings`  (
  `id` int UNSIGNED NOT NULL,
  `account_id` int UNSIGNED NOT NULL,
  `char_id` int UNSIGNED NOT NULL,
  `sex` enum('F','M') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'M',
  `map` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `x` smallint UNSIGNED NOT NULL,
  `y` smallint UNSIGNED NOT NULL,
  `title` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `body_direction` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '4',
  `head_direction` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  `sit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1',
  `autotrade` tinyint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vendings
-- ----------------------------

-- ----------------------------
-- Table structure for zenylog
-- ----------------------------
DROP TABLE IF EXISTS `zenylog`;
CREATE TABLE `zenylog`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `char_id` int NOT NULL DEFAULT 0,
  `src_id` int NOT NULL DEFAULT 0,
  `type` enum('T','V','P','M','S','N','D','C','A','E','I','B','K') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'S',
  `amount` int NOT NULL DEFAULT 0,
  `map` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zenylog
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
