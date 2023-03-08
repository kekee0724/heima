DROP TABLE IF EXISTS `vw_sys_account_sort`;
CREATE TABLE `vw_sys_account_sort`
(
    `id`                     BIGINT COMMENT 'id',
    `is_head_office`         BIT(1),
    `unit_sequence`          TINYINT,
    `unit_id`                BIGINT,
    `is_unit`                BIT(1),
    `dept_sequence`          TINYINT,
    `dept_id`                BIGINT,
    `position_user_sequence` TINYINT,
    `position_user_id`       BIGINT,
    PRIMARY KEY (`id`) USING BTREE,
    INDEX `id` (`id`) USING BTREE
)
    ENGINE = INNODB
    DEFAULT CHARSET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_account
-- ----------------------------
BEGIN;
INSERT INTO `sys_account` (`id`, `login_name`, `nick_name`, `real_name`, `gender`, `email`, `mobile`, `tel`, `homepage`, `avatar`, `birthday`, `latitude`, `longitude`, `precision`, `user_name`, `uid`, `open_platform`, `open_id`, `is_locked`, `is_valid`, `is_delete`, `is_primary`, `last_login_error`, `last_login_time`, `last_login_ip`, `inputer`, `inputer_id`, `input_time`, `input_ip`, `system_id`, `verification_code`, `verification_time`, `sequence`, `secret`, `expiration_time`, `security_policy`, `remarks`, `address`) VALUES (1, 'demo', '可可', '黄斌', 1, NULL, '17671736697', '', NULL, NULL, NULL, NULL, NULL, NULL, '17671736697', 'kekee', 0, NULL, b'0', b'1', b'0', b'1', 0, '2023-03-07 10:45:33', '0:0:0:0:0:0:0:1', NULL, NULL, '2022-04-01 11:33:00', NULL, NULL, '', NULL, NULL, 'F1A03F4AFC83CD918589D1D548E94D75CF871C25', NULL, NULL, NULL, NULL);
INSERT INTO `sys_account` (`id`, `login_name`, `nick_name`, `real_name`, `gender`, `email`, `mobile`, `tel`, `homepage`, `avatar`, `birthday`, `latitude`, `longitude`, `precision`, `user_name`, `uid`, `open_platform`, `open_id`, `is_locked`, `is_valid`, `is_delete`, `is_primary`, `last_login_error`, `last_login_time`, `last_login_ip`, `inputer`, `inputer_id`, `input_time`, `input_ip`, `system_id`, `verification_code`, `verification_time`, `sequence`, `secret`, `expiration_time`, `security_policy`, `remarks`, `address`) VALUES (2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-18 11:33:00', NULL, NULL, NULL, NULL, NULL, 'hjPhjNhj]hjLhjfhjGhiFhi>hi?hjL', NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Records of sys_attach
-- ----------------------------
BEGIN;
INSERT INTO `sys_attach` (`id`, `bind_table_name`, `bind_table_id`, `file_name`, `file_size`, `file_type`, `custom_type`, `file_path`, `file_unique_id`, `file_usage`, `sequence`, `is_delete`, `inputer_id`, `inputer`, `input_time`, `preview_url`, `preview_url_expire`) VALUES (833366894105858048, 'test1', 2248570568704100, 'vue.png', 3451, 'image/png', 0, '~/userFile/picture/test1/20220418/6bff7162-200e-4bc0-9c2d-531e0e97f214.png', '7210d742-3a27-4909-ad4e-c120c60196c5', ',,', 0, b'0', 1, '黄斌(可可)', '2022-04-18 10:49:54', NULL, NULL);
COMMIT;

-- ----------------------------
-- Records of sys_system_certificate
-- ----------------------------
BEGIN;
INSERT INTO `sys_system_certificate` (`id`, `system_id`, `certificate_name`, `api_key`, `secret`, `is_valid`, `inputer`, `inputer_id`, `input_time`, `access_level`, `platform`, `remarks`) VALUES (1, NULL, NULL, 'Bitech\\H5', 'vgkEeveppBwCzPHr', b'1', NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Records of sys_token
-- ----------------------------
BEGIN;
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (833009879735078912, 'b8f721272801000', 'b8f721273001000', NULL, 1, NULL, '2022-04-24 11:03:52', 'common', '2022-04-17 11:03:52', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (833020227343093760, 'b8f7b7bb4001000', 'b8f7b7bb4001001', NULL, 1, NULL, '2022-04-24 11:44:59', 'common', '2022-04-17 11:44:59', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (833020301422891008, 'b8f7b8cf3801000', 'b8f7b8cf3801001', NULL, 1, NULL, '2022-04-24 11:45:17', 'common', '2022-04-17 11:45:17', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (833226056566575104, 'b9036aefd801000', 'b9036aeff401000', NULL, 1, NULL, '2022-04-25 01:22:52', 'common', '2022-04-18 01:22:52', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (833275580081246208, 'b9063b9a3001000', 'b9063b9a3401000', 1, 1, 'kekee', '2022-04-25 04:39:40', 'common,regular', '2022-04-18 04:39:40', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (833277507657535488, 'b90657a66801000', 'b90657a66801001', 1, 1, 'kekee', '2022-04-25 04:47:19', 'common,regular', '2022-04-18 04:47:19', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (833278689608208384, 'b90668d8bc01000', 'b90668d8bc01001', 1, 1, 'kekee', '2022-04-25 04:52:01', 'common,regular', '2022-04-18 04:52:01', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (833279507065475072, 'b90674bea401000', 'b90674bea401001', 1, 1, 'kekee', '2022-04-25 04:55:16', 'common,regular', '2022-04-18 04:55:16', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (833280192318279680, 'b9067eb36c01000', 'b9067eb36c01001', 1, 1, 'kekee', '2022-04-25 04:57:59', 'common,regular', '2022-04-18 04:57:59', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (833281675734552576, 'b90693b29801000', 'b90693b29801001', 1, 1, 'kekee', '2022-04-25 05:03:53', 'common,regular', '2022-04-18 05:03:43', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (833282720523096064, 'b906a381c401000', 'b906a381c401001', 1, 1, 'kekee', '2022-04-25 05:08:02', 'common,regular', '2022-04-18 05:08:02', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (833283537086976000, 'b906af648401000', 'b906af648401001', 1, 1, 'kekee', '2022-04-25 05:11:17', 'common,regular', '2022-04-18 05:11:17', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (833285638668161024, 'b906cdf8e401000', 'b906cdf8e401001', 1, 1, 'kekee', '2022-04-25 05:19:38', 'common,regular', '2022-04-18 05:19:38', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (833286067854512128, 'b906d4383801000', 'b906d4384001000', 1, 1, 'kekee', '2022-04-25 05:21:20', 'common,regular', '2022-04-18 05:21:20', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (833298470994448384, 'b90788b58001000', 'b90788b58001001', NULL, 1, NULL, '2022-04-25 06:10:37', 'common', '2022-04-18 06:10:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (833302506153971712, 'b907c36c3001000', 'b907c36c3c01000', 1, 1, 'kekee', '2022-04-25 06:26:39', 'common,regular', '2022-04-18 06:26:39', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (833302867950440448, 'b907c8b14001000', 'b907c8b14001001', 1, 1, 'kekee', '2022-04-25 06:28:06', 'common,regular', '2022-04-18 06:28:06', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (833302957146509312, 'b907c9fde801000', 'b907c9fde801001', NULL, 1, NULL, '2022-04-25 06:28:27', 'common', '2022-04-18 06:28:27', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (833304576437260288, 'b907e18e3401000', 'b907e18e3401001', NULL, 1, NULL, '2022-04-25 06:34:53', 'common', '2022-04-18 06:34:53', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (833311455720771584, 'b90845a96801000', 'b90845a96801001', NULL, 1, NULL, '2022-04-25 07:02:13', 'common', '2022-04-18 07:02:13', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (833316500176637952, 'b9088f112c01000', 'b9088f112c01001', NULL, 1, NULL, '2022-04-25 07:22:16', 'common', '2022-04-18 07:22:16', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (833322921639284736, 'b908ec836401000', 'b908ec836401001', NULL, 1, NULL, '2022-04-25 07:47:47', 'common', '2022-04-18 07:47:47', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (833364563108827136, 'b90b4a78bc01000', 'b90b4a78bc01001', NULL, 1, NULL, '2022-04-25 10:33:15', 'common', '2022-04-18 10:33:15', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (833366046680289280, 'b90b60109401000', 'b90b60109401001', NULL, 1, NULL, '2022-04-25 10:39:09', 'common', '2022-04-18 10:39:09', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (833370583692480512, 'b90ba2161801000', 'b90ba2161801001', NULL, 1, NULL, '2022-04-25 10:57:10', 'common', '2022-04-18 10:57:10', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (833372716051468288, 'b90bc11ddc01000', 'b90bc11ddc01001', NULL, 1, NULL, '2022-04-25 11:05:39', 'common', '2022-04-18 11:05:39', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (833372716839997440, 'b90bc120d801000', 'b90bc120d801001', 1, 1, 'kekee', '2022-04-25 11:05:39', 'common,regular', '2022-04-18 11:05:39', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (833372717594972160, 'b90bc123d801000', 'b90bc123d801001', NULL, 1, NULL, '2022-04-25 11:05:39', 'common', '2022-04-18 11:05:39', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (950398543007322112, 'd307e707a801000', 'd307e707a801001', 1, 1, 'kekee', '2023-03-14 09:24:30', 'common,regular', '2023-03-07 08:24:30', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (950429208172040192, 'd309a5446c01000', 'd309a5446c01001', 1, 1, 'kekee', '2023-03-14 11:26:21', 'common,regular', '2023-03-07 10:26:21', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (950433319290408960, 'd309e1177401000', 'd309e1177401001', 1, 1, 'kekee', '2023-03-14 11:42:42', 'common,regular', '2023-03-07 10:42:42', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (950434038156365824, 'd309eb8d7401000', 'd309eb8d7401001', 1, 1, 'kekee', '2023-03-14 11:45:33', 'common,regular', '2023-03-07 10:45:33', '0:0:0:0:0:0:0:1');
COMMIT;