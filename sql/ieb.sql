/*
 Navicat Premium Data Transfer

 Source Server         : gitlab.kekee.com_3307
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : gitlab.kekee.com:3307
 Source Schema         : ieb

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 06/03/2023 01:45:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bi_order
-- ----------------------------
DROP TABLE IF EXISTS `bi_order`;
CREATE TABLE `bi_order` (
  `id` bigint NOT NULL,
  `app_name` varchar(255) DEFAULT NULL,
  `app_code` varchar(255) DEFAULT NULL,
  `module_url` varchar(255) DEFAULT NULL,
  `have_nav` bit(1) DEFAULT NULL,
  `nav_type` int DEFAULT NULL,
  `is_built_in` bit(1) DEFAULT NULL,
  `is_virtual` bit(1) DEFAULT NULL,
  `icon_url` varchar(255) DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `inputer` varchar(255) DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` timestamp NULL DEFAULT NULL,
  `badge_url` varchar(255) DEFAULT NULL,
  `badge_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of bi_order
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for std_app_version
-- ----------------------------
DROP TABLE IF EXISTS `std_app_version`;
CREATE TABLE `std_app_version` (
  `id` bigint NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `device_type` varchar(255) DEFAULT NULL,
  `device_type_id` int DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `is_must_update` bit(1) DEFAULT NULL,
  `edition_type` varchar(255) DEFAULT NULL,
  `edition_type_id` int DEFAULT NULL,
  `update_type` varchar(255) DEFAULT NULL,
  `update_type_id` int DEFAULT NULL,
  `api_version` varchar(255) DEFAULT NULL,
  `api_version_id` bigint DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `inputer` varchar(255) DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of std_app_version
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_account
-- ----------------------------
DROP TABLE IF EXISTS `sys_account`;
CREATE TABLE `sys_account` (
  `id` bigint NOT NULL,
  `login_name` varchar(255) DEFAULT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `gender` int DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `homepage` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `birthday` timestamp NULL DEFAULT NULL,
  `latitude` decimal(10,0) DEFAULT NULL,
  `longitude` decimal(10,0) DEFAULT NULL,
  `precision` decimal(10,0) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `open_platform` int DEFAULT NULL,
  `open_id` varchar(255) DEFAULT NULL,
  `is_locked` bit(1) DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `is_delete` bit(1) DEFAULT NULL,
  `is_primary` bit(1) DEFAULT NULL,
  `last_login_error` int DEFAULT NULL,
  `last_login_time` timestamp NULL DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  `inputer` varchar(255) DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` timestamp NULL DEFAULT NULL,
  `input_ip` varchar(255) DEFAULT NULL,
  `system_id` bigint DEFAULT NULL,
  `verification_code` varchar(255) DEFAULT NULL,
  `verification_time` timestamp NULL DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `secret` varchar(255) DEFAULT NULL,
  `expiration_time` timestamp NULL DEFAULT NULL,
  `security_policy` int DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_account
-- ----------------------------
BEGIN;
INSERT INTO `sys_account` VALUES (1, 'demo', '可可', '黄斌', 1, NULL, '17671736697', '', NULL, NULL, NULL, NULL, NULL, NULL, '17671736697', 'kekee', 0, NULL, b'0', b'1', b'0', b'1', 0, '2022-04-18 06:28:05', '0:0:0:0:0:0:0:1', NULL, NULL, '2022-04-01 11:33:00', NULL, NULL, '', NULL, NULL, 'F1A03F4AFC83CD918589D1D548E94D75CF871C25', NULL, NULL, NULL, NULL);
INSERT INTO `sys_account` VALUES (2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-18 11:33:00', NULL, NULL, NULL, NULL, NULL, 'hjPhjNhj]hjLhjfhjGhiFhi>hi?hjL', NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_account_profile
-- ----------------------------
DROP TABLE IF EXISTS `sys_account_profile`;
CREATE TABLE `sys_account_profile` (
  `id` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `group` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_account_profile
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_app
-- ----------------------------
DROP TABLE IF EXISTS `sys_app`;
CREATE TABLE `sys_app` (
  `id` bigint NOT NULL,
  `app_name` varchar(255) DEFAULT NULL,
  `app_code` varchar(255) DEFAULT NULL,
  `module_url` varchar(255) DEFAULT NULL,
  `have_nav` bit(1) DEFAULT NULL,
  `nav_type` int DEFAULT NULL,
  `is_built_in` bit(1) DEFAULT NULL,
  `is_virtual` bit(1) DEFAULT NULL,
  `icon_url` varchar(255) DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `inputer` varchar(255) DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` timestamp NULL DEFAULT NULL,
  `badge_url` varchar(255) DEFAULT NULL,
  `badge_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_app
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_app_access
-- ----------------------------
DROP TABLE IF EXISTS `sys_app_access`;
CREATE TABLE `sys_app_access` (
  `id` bigint NOT NULL,
  `app_id` bigint DEFAULT NULL,
  `component_id` bigint DEFAULT NULL,
  `resources_id` bigint DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  `resources_group` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_app_access
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_app_component
-- ----------------------------
DROP TABLE IF EXISTS `sys_app_component`;
CREATE TABLE `sys_app_component` (
  `id` bigint NOT NULL,
  `app_id` bigint DEFAULT NULL,
  `route_key` varchar(255) DEFAULT NULL,
  `component_name` varchar(255) DEFAULT NULL,
  `strategy_code` varchar(255) DEFAULT NULL,
  `module_url` varchar(255) DEFAULT NULL,
  `icon_url` varchar(255) DEFAULT NULL,
  `is_show` bit(1) DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `route_params` varchar(255) DEFAULT NULL,
  `expand_module_url` varchar(255) DEFAULT NULL,
  `startup_module_url` varchar(255) DEFAULT NULL,
  `component_type` int DEFAULT NULL,
  `badge_url` varchar(255) DEFAULT NULL,
  `badge_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_app_component
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_app_resources
-- ----------------------------
DROP TABLE IF EXISTS `sys_app_resources`;
CREATE TABLE `sys_app_resources` (
  `id` bigint NOT NULL,
  `app_id` bigint DEFAULT NULL,
  `component_id` bigint DEFAULT NULL,
  `resources_code` varchar(255) DEFAULT NULL,
  `resources_name` varchar(255) DEFAULT NULL,
  `resources_type` int DEFAULT NULL,
  `strategy_code` varchar(255) DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  `layer` int DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `icon_url` varchar(255) DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `route_params` varchar(255) DEFAULT NULL,
  `route_exact` bit(1) DEFAULT NULL,
  `reffer_id` bigint DEFAULT NULL,
  `badge_url` varchar(255) DEFAULT NULL,
  `badge_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_app_resources
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_app_resources_group
-- ----------------------------
DROP TABLE IF EXISTS `sys_app_resources_group`;
CREATE TABLE `sys_app_resources_group` (
  `id` bigint NOT NULL,
  `app_id` bigint DEFAULT NULL,
  `component_id` bigint DEFAULT NULL,
  `resources_id` bigint DEFAULT NULL,
  `resources_group` int DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_app_resources_group
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_attach
-- ----------------------------
DROP TABLE IF EXISTS `sys_attach`;
CREATE TABLE `sys_attach` (
  `id` bigint NOT NULL,
  `bind_table_name` varchar(255) DEFAULT NULL,
  `bind_table_id` bigint DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_size` int DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `custom_type` int DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `file_unique_id` varchar(255) DEFAULT NULL,
  `file_usage` varchar(255) DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `is_delete` bit(1) DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `inputer` varchar(255) DEFAULT NULL,
  `input_time` timestamp NULL DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `preview_url_expire` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_attach
-- ----------------------------
BEGIN;
INSERT INTO `sys_attach` VALUES (833366894105858048, 'test1', 2248570568704100, 'vue.png', 3451, 'image/png', 0, '~/userFile/picture/test1/20220418/6bff7162-200e-4bc0-9c2d-531e0e97f214.png', '7210d742-3a27-4909-ad4e-c120c60196c5', ',,', 0, b'0', 1, '黄斌(可可)', '2022-04-18 10:49:54', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `id` bigint NOT NULL,
  `dept_name` varchar(255) DEFAULT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `dept_code` varchar(255) DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  `layer` int DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `is_enabled` bit(1) DEFAULT NULL,
  `is_unit` bit(1) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `input_time` timestamp NULL DEFAULT NULL,
  `is_delete` bit(1) DEFAULT NULL,
  `unit_id` bigint DEFAULT NULL,
  `unit_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_notification_template
-- ----------------------------
DROP TABLE IF EXISTS `sys_notification_template`;
CREATE TABLE `sys_notification_template` (
  `id` bigint NOT NULL,
  `template_name` varchar(255) DEFAULT NULL,
  `template_code` varchar(255) DEFAULT NULL,
  `scene_id` bigint DEFAULT NULL,
  `bind_table_name` varchar(255) DEFAULT NULL,
  `notification_type` int DEFAULT NULL,
  `SUBJECT` varchar(255) DEFAULT NULL,
  `external_url` varchar(255) DEFAULT NULL,
  `is_body_html` bit(1) DEFAULT NULL,
  `raw_url` varchar(255) DEFAULT NULL,
  `cover_url` varchar(255) DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `inputer` varchar(255) DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` timestamp NULL DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `notification_args` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_notification_template
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_position_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_position_user`;
CREATE TABLE `sys_position_user` (
  `id` bigint NOT NULL,
  `position_id` bigint DEFAULT NULL,
  `position_name` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `dept_id` bigint DEFAULT NULL,
  `dept_name` varchar(255) DEFAULT NULL,
  `leader_id` bigint DEFAULT NULL,
  `leader_name` varchar(255) DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `is_delete` bit(1) DEFAULT NULL,
  `is_part_time` bit(1) DEFAULT NULL,
  `job_id` bigint DEFAULT NULL,
  `unit_id` bigint DEFAULT NULL,
  `unit_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_position_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint NOT NULL,
  `app_id` bigint DEFAULT NULL,
  `role_code` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `role_flag_id` int DEFAULT NULL,
  `is_built_in` bit(1) DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `inputer` varchar(255) DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` timestamp NULL DEFAULT NULL,
  `bind_table_name` varchar(255) DEFAULT NULL,
  `bind_table_id` bigint DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  `layer` int DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user` (
  `id` bigint NOT NULL,
  `role_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `group_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_system_certificate
-- ----------------------------
DROP TABLE IF EXISTS `sys_system_certificate`;
CREATE TABLE `sys_system_certificate` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `system_id` bigint DEFAULT NULL,
  `certificate_name` varchar(255) DEFAULT NULL,
  `api_key` varchar(255) DEFAULT NULL,
  `secret` varchar(255) DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `inputer` varchar(255) DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` timestamp NULL DEFAULT NULL,
  `access_level` int DEFAULT NULL,
  `platform` int DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_system_certificate
-- ----------------------------
BEGIN;
INSERT INTO `sys_system_certificate` VALUES (1, NULL, NULL, 'Bitech\\H5', 'vgkEeveppBwCzPHr', b'1', NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_token
-- ----------------------------
DROP TABLE IF EXISTS `sys_token`;
CREATE TABLE `sys_token` (
  `id` bigint NOT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  `account_id` bigint DEFAULT NULL,
  `certificate_id` bigint DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `expires_in` timestamp NULL DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `request_time` timestamp NULL DEFAULT NULL,
  `request_ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_token
-- ----------------------------
BEGIN;
INSERT INTO `sys_token` VALUES (833009879735078912, 'b8f721272801000', 'b8f721273001000', NULL, 1, NULL, '2022-04-24 11:03:52', 'common', '2022-04-17 11:03:52', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` VALUES (833020227343093760, 'b8f7b7bb4001000', 'b8f7b7bb4001001', NULL, 1, NULL, '2022-04-24 11:44:59', 'common', '2022-04-17 11:44:59', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` VALUES (833020301422891008, 'b8f7b8cf3801000', 'b8f7b8cf3801001', NULL, 1, NULL, '2022-04-24 11:45:17', 'common', '2022-04-17 11:45:17', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` VALUES (833226056566575104, 'b9036aefd801000', 'b9036aeff401000', NULL, 1, NULL, '2022-04-25 01:22:52', 'common', '2022-04-18 01:22:52', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` VALUES (833275580081246208, 'b9063b9a3001000', 'b9063b9a3401000', 1, 1, 'kekee', '2022-04-25 04:39:40', 'common,regular', '2022-04-18 04:39:40', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` VALUES (833277507657535488, 'b90657a66801000', 'b90657a66801001', 1, 1, 'kekee', '2022-04-25 04:47:19', 'common,regular', '2022-04-18 04:47:19', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` VALUES (833278689608208384, 'b90668d8bc01000', 'b90668d8bc01001', 1, 1, 'kekee', '2022-04-25 04:52:01', 'common,regular', '2022-04-18 04:52:01', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` VALUES (833279507065475072, 'b90674bea401000', 'b90674bea401001', 1, 1, 'kekee', '2022-04-25 04:55:16', 'common,regular', '2022-04-18 04:55:16', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` VALUES (833280192318279680, 'b9067eb36c01000', 'b9067eb36c01001', 1, 1, 'kekee', '2022-04-25 04:57:59', 'common,regular', '2022-04-18 04:57:59', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` VALUES (833281675734552576, 'b90693b29801000', 'b90693b29801001', 1, 1, 'kekee', '2022-04-25 05:03:53', 'common,regular', '2022-04-18 05:03:43', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` VALUES (833282720523096064, 'b906a381c401000', 'b906a381c401001', 1, 1, 'kekee', '2022-04-25 05:08:02', 'common,regular', '2022-04-18 05:08:02', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` VALUES (833283537086976000, 'b906af648401000', 'b906af648401001', 1, 1, 'kekee', '2022-04-25 05:11:17', 'common,regular', '2022-04-18 05:11:17', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` VALUES (833285638668161024, 'b906cdf8e401000', 'b906cdf8e401001', 1, 1, 'kekee', '2022-04-25 05:19:38', 'common,regular', '2022-04-18 05:19:38', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` VALUES (833286067854512128, 'b906d4383801000', 'b906d4384001000', 1, 1, 'kekee', '2022-04-25 05:21:20', 'common,regular', '2022-04-18 05:21:20', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` VALUES (833298470994448384, 'b90788b58001000', 'b90788b58001001', NULL, 1, NULL, '2022-04-25 06:10:37', 'common', '2022-04-18 06:10:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` VALUES (833302506153971712, 'b907c36c3001000', 'b907c36c3c01000', 1, 1, 'kekee', '2022-04-25 06:26:39', 'common,regular', '2022-04-18 06:26:39', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` VALUES (833302867950440448, 'b907c8b14001000', 'b907c8b14001001', 1, 1, 'kekee', '2022-04-25 06:28:06', 'common,regular', '2022-04-18 06:28:06', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` VALUES (833302957146509312, 'b907c9fde801000', 'b907c9fde801001', NULL, 1, NULL, '2022-04-25 06:28:27', 'common', '2022-04-18 06:28:27', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` VALUES (833304576437260288, 'b907e18e3401000', 'b907e18e3401001', NULL, 1, NULL, '2022-04-25 06:34:53', 'common', '2022-04-18 06:34:53', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` VALUES (833311455720771584, 'b90845a96801000', 'b90845a96801001', NULL, 1, NULL, '2022-04-25 07:02:13', 'common', '2022-04-18 07:02:13', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` VALUES (833316500176637952, 'b9088f112c01000', 'b9088f112c01001', NULL, 1, NULL, '2022-04-25 07:22:16', 'common', '2022-04-18 07:22:16', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` VALUES (833322921639284736, 'b908ec836401000', 'b908ec836401001', NULL, 1, NULL, '2022-04-25 07:47:47', 'common', '2022-04-18 07:47:47', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` VALUES (833364563108827136, 'b90b4a78bc01000', 'b90b4a78bc01001', NULL, 1, NULL, '2022-04-25 10:33:15', 'common', '2022-04-18 10:33:15', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` VALUES (833366046680289280, 'b90b60109401000', 'b90b60109401001', NULL, 1, NULL, '2022-04-25 10:39:09', 'common', '2022-04-18 10:39:09', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` VALUES (833370583692480512, 'b90ba2161801000', 'b90ba2161801001', NULL, 1, NULL, '2022-04-25 10:57:10', 'common', '2022-04-18 10:57:10', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` VALUES (833372716051468288, 'b90bc11ddc01000', 'b90bc11ddc01001', NULL, 1, NULL, '2022-04-25 11:05:39', 'common', '2022-04-18 11:05:39', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` VALUES (833372716839997440, 'b90bc120d801000', 'b90bc120d801001', 1, 1, 'kekee', '2022-04-25 11:05:39', 'common,regular', '2022-04-18 11:05:39', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` VALUES (833372717594972160, 'b90bc123d801000', 'b90bc123d801001', NULL, 1, NULL, '2022-04-25 11:05:39', 'common', '2022-04-18 11:05:39', '0:0:0:0:0:0:0:1');
COMMIT;

-- ----------------------------
-- Table structure for vm_sys_account_access
-- ----------------------------
DROP TABLE IF EXISTS `vm_sys_account_access`;
CREATE TABLE `vm_sys_account_access` (
  `id` bigint NOT NULL,
  `account_id` bigint DEFAULT NULL,
  `open_platform` bigint DEFAULT NULL,
  `open_platform_code` varchar(255) DEFAULT NULL,
  `open_platform_name` varchar(255) DEFAULT NULL,
  `open_id` varchar(255) DEFAULT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of vm_sys_account_access
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
