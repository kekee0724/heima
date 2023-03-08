

/*========= BiOrder ==========*/
DROP TABLE IF EXISTS `bi_order`; 
CREATE TABLE `bi_order` ( 
`id` bigint comment 'id',
`app_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment 'appName',
`app_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment 'appCode',
`module_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment 'moduleUrl',
`have_nav` bit(1) comment 'haveNav',
`nav_type` int comment 'navType',
`is_built_in` bit(1) comment 'isBuiltIn',
`is_virtual` bit(1) comment 'isVirtual',
`icon_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment 'iconUrl',
`is_valid` bit(1) comment 'isValid',
`sequence` int comment 'sequence',
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment 'remarks',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment 'inputer',
`inputer_id` bigint comment 'inputerId',
`input_time` datetime comment 'inputTime',
`badge_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment 'badgeUrl',
`badge_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment 'badgeCode',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '测试对象';

/*========= SysAttach ==========*/
DROP TABLE IF EXISTS `sys_attach`; 
CREATE TABLE `sys_attach` ( 
`id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_id` bigint,
`file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`file_size` int,
`file_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`custom_type` int,
`file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`file_unique_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`file_usage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sequence` int,
`is_delete` bit(1),
`inputer_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`input_time` datetime,
`preview_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`preview_url_expire` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysAccount ==========*/
DROP TABLE IF EXISTS `sys_account`; 
CREATE TABLE `sys_account` ( 
`id` bigint,
`login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`real_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`gender` int,
`email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`homepage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`birthday` datetime,
`latitude` decimal(20,4),
`longitude` decimal(20,4),
`precision` decimal(20,4),
`user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`open_platform` int,
`open_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_locked` bit(1),
`is_valid` bit(1),
`is_delete` bit(1),
`is_primary` bit(1),
`last_login_error` int,
`last_login_time` datetime,
`last_login_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`input_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`system_id` bigint,
`verification_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`verification_time` datetime,
`sequence` int,
`secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`expiration_time` datetime,
`security_policy` int,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysAccountProfile ==========*/
DROP TABLE IF EXISTS `sys_account_profile`; 
CREATE TABLE `sys_account_profile` ( 
`id` bigint,
`user_id` bigint,
`group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysApp ==========*/
DROP TABLE IF EXISTS `sys_app`; 
CREATE TABLE `sys_app` ( 
`id` bigint,
`app_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`app_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`module_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`have_nav` bit(1),
`nav_type` int,
`is_built_in` bit(1),
`is_virtual` bit(1),
`icon_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_valid` bit(1),
`sequence` int,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`badge_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`badge_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysAppAccess ==========*/
DROP TABLE IF EXISTS `sys_app_access`; 
CREATE TABLE `sys_app_access` ( 
`id` bigint,
`app_id` bigint,
`component_id` bigint,
`resources_id` bigint,
`role_id` bigint,
`resources_group` int,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysAppCatalog ==========*/
DROP TABLE IF EXISTS `sys_app_catalog`; 
CREATE TABLE `sys_app_catalog` ( 
`id` bigint,
`app_id` bigint,
`role_id` bigint,
`catalogs_id` bigint,
`catalogs_group` int,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysAppComponent ==========*/
DROP TABLE IF EXISTS `sys_app_component`; 
CREATE TABLE `sys_app_component` ( 
`id` bigint,
`app_id` bigint,
`route_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`component_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`strategy_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`module_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`icon_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_show` bit(1),
`is_valid` bit(1),
`sequence` int,
`route_params` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`expand_module_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`startup_module_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`component_type` int,
`badge_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`badge_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysAppPage ==========*/
DROP TABLE IF EXISTS `sys_app_page`; 
CREATE TABLE `sys_app_page` ( 
`id` bigint,
`app_id` bigint,
`view_id` bigint,
`page_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`page_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`page_type` int,
`is_valid` bit(1),
`sequence` int,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`config` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysAppPageContainer ==========*/
DROP TABLE IF EXISTS `sys_app_page_container`; 
CREATE TABLE `sys_app_page_container` ( 
`id` bigint,
`app_id` bigint,
`view_id` bigint,
`page_id` bigint,
`container_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`container_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`container_type` int,
`is_valid` bit(1),
`sequence` int,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`config` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysAppResources ==========*/
DROP TABLE IF EXISTS `sys_app_resources`; 
CREATE TABLE `sys_app_resources` ( 
`id` bigint,
`app_id` bigint,
`component_id` bigint,
`resources_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`resources_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`resources_type` int,
`strategy_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`parent_id` bigint,
`layer` int,
`path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`icon_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_valid` bit(1),
`sequence` int,
`route_params` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`route_exact` bit(1),
`reffer_id` bigint,
`badge_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`badge_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysAppResourcesGroup ==========*/
DROP TABLE IF EXISTS `sys_app_resources_group`; 
CREATE TABLE `sys_app_resources_group` ( 
`id` bigint,
`app_id` bigint,
`component_id` bigint,
`resources_id` bigint,
`resources_group` int,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysAppRoute ==========*/
DROP TABLE IF EXISTS `sys_app_route`; 
CREATE TABLE `sys_app_route` ( 
`id` bigint,
`app_id` bigint,
`component_id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_id` bigint,
`route_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`container_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_valid` bit(1),
`sequence` int,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysDataCatalog ==========*/
DROP TABLE IF EXISTS `sys_data_catalog`; 
CREATE TABLE `sys_data_catalog` ( 
`id` bigint,
`app_id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_id` bigint,
`catalog_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`catalog_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`parent_id` bigint,
`layer` int,
`path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sequence` int,
`is_valid` bit(1),
`is_delete` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysDataResource ==========*/
DROP TABLE IF EXISTS `sys_data_resource`; 
CREATE TABLE `sys_data_resource` ( 
`id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_id` bigint,
`target_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`target_table_id` bigint,
`catalog_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysGroup ==========*/
DROP TABLE IF EXISTS `sys_group`; 
CREATE TABLE `sys_group` ( 
`id` bigint,
`group_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_id` bigint,
`unit_id` bigint,
`sequence` int,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_valid` bit(1),
`is_delete` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_built_in` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysGroupRole ==========*/
DROP TABLE IF EXISTS `sys_group_role`; 
CREATE TABLE `sys_group_role` ( 
`id` bigint,
`group_id` bigint,
`role_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysGroupUser ==========*/
DROP TABLE IF EXISTS `sys_group_user`; 
CREATE TABLE `sys_group_user` ( 
`id` bigint,
`group_id` bigint,
`user_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysProduct ==========*/
DROP TABLE IF EXISTS `sys_product`; 
CREATE TABLE `sys_product` ( 
`id` bigint,
`product_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_valid` bit(1),
`sequence` int,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysProductAccess ==========*/
DROP TABLE IF EXISTS `sys_product_access`; 
CREATE TABLE `sys_product_access` ( 
`id` bigint,
`product_id` bigint,
`app_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysRole ==========*/
DROP TABLE IF EXISTS `sys_role`; 
CREATE TABLE `sys_role` ( 
`id` bigint,
`app_id` bigint,
`role_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`role_flag_id` int,
`is_built_in` bit(1),
`sequence` int,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_id` bigint,
`parent_id` bigint,
`layer` int,
`path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysRoleUser ==========*/
DROP TABLE IF EXISTS `sys_role_user`; 
CREATE TABLE `sys_role_user` ( 
`id` bigint,
`role_id` bigint,
`user_id` bigint,
`group_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= VwSysAppAccess ==========*/
DROP TABLE IF EXISTS `vw_sys_app_access`; 
CREATE TABLE `vw_sys_app_access` ( 
`id` bigint,
`app_id` bigint,
`component_id` bigint,
`role_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= VwSysAppCatalog ==========*/
DROP TABLE IF EXISTS `vw_sys_app_catalog`; 
CREATE TABLE `vw_sys_app_catalog` ( 
`id` bigint,
`app_id` bigint,
`role_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysAutoNumber ==========*/
DROP TABLE IF EXISTS `sys_auto_number`; 
CREATE TABLE `sys_auto_number` ( 
`id` bigint,
`table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`year_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`number` int,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysLog ==========*/
DROP TABLE IF EXISTS `sys_log`; 
CREATE TABLE `sys_log` ( 
`id` bigint,
`entity_module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`entity_id` bigint,
`entity_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`operate_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`user_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`user_id` bigint,
`create_time` datetime,
`log_level` int,
`log_type` int,
`platform` int,
`snapshoot` bit(1),
`operate_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysLogData ==========*/
DROP TABLE IF EXISTS `sys_log_data`; 
CREATE TABLE `sys_log_data` ( 
`id` bigint,
`entity_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`entity_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`operate_summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`operate_detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`attrs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysMetadataApi ==========*/
DROP TABLE IF EXISTS `sys_metadata_api`; 
CREATE TABLE `sys_metadata_api` ( 
`id` bigint,
`api_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`api_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`refresh_interval` int,
`sequence` int,
`is_valid` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`layout_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysMetadataApiService ==========*/
DROP TABLE IF EXISTS `sys_metadata_api_service`; 
CREATE TABLE `sys_metadata_api_service` ( 
`id` bigint,
`api_id` bigint,
`service_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`service_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`source_type` int,
`prefetch` bit(1),
`sequence` int,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`layout_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`source_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysMetadataColumn ==========*/
DROP TABLE IF EXISTS `sys_metadata_column`; 
CREATE TABLE `sys_metadata_column` ( 
`id` bigint,
`table_id` bigint,
`table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`column_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`column_id` int,
`data_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`data_length` int,
`data_precision` int,
`data_scale` int,
`is_nullable` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`field_type` int,
`field_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`field_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`storage_type` int,
`is_primary_key` bit(1),
`is_foreign_key` bit(1),
`foreign_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`display_type` int,
`display_width` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`display_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`default_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`filter_type` int,
`source_id` bigint,
`source_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`source_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`source_type` int,
`source_control` int,
`source_text_field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`source_value_field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sequence` int,
`is_valid` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`column_default` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`comments` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tooltip_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`validation_rule` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`filter_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`source_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysMetadataSource ==========*/
DROP TABLE IF EXISTS `sys_metadata_source`; 
CREATE TABLE `sys_metadata_source` ( 
`id` bigint,
`table_id` bigint,
`source_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`source_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`source_type` int,
`source_control` int,
`source_text_field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`source_value_field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_valid` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`source_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysMetadataStorage ==========*/
DROP TABLE IF EXISTS `sys_metadata_storage`; 
CREATE TABLE `sys_metadata_storage` ( 
`id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_id` bigint,
`ext_field1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`ext_field2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`ext_field3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`ext_field4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`ext_field5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`ext_field6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`ext_field7` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`ext_field8` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`ext_field9` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`ext_field10` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysMetadataTable ==========*/
DROP TABLE IF EXISTS `sys_metadata_table`; 
CREATE TABLE `sys_metadata_table` ( 
`id` bigint,
`app_id` bigint,
`table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`entity_type` int,
`entity_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`entity_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`entity_flag` int,
`sequence` int,
`is_built_in` bit(1),
`is_valid` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`comments` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysMetadataView ==========*/
DROP TABLE IF EXISTS `sys_metadata_view`; 
CREATE TABLE `sys_metadata_view` ( 
`id` bigint,
`app_id` bigint,
`view_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`view_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`primary_table_id` bigint,
`sequence` int,
`is_built_in` bit(1),
`is_valid` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysMetadataViewColumn ==========*/
DROP TABLE IF EXISTS `sys_metadata_view_column`; 
CREATE TABLE `sys_metadata_view_column` ( 
`id` bigint,
`view_id` bigint,
`table_id` bigint,
`table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`column_id` bigint,
`column_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`field_type` int,
`field_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`field_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`storage_type` int,
`is_primary_key` bit(1),
`is_foreign_key` bit(1),
`foreign_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`display_type` int,
`display_width` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`display_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`default_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`filter_type` int,
`source_id` bigint,
`source_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`source_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`source_type` int,
`source_control` int,
`source_text_field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`source_value_field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sequence` int,
`is_valid` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`tooltip_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`validation_rule` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`filter_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`source_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysNotification ==========*/
DROP TABLE IF EXISTS `sys_notification`; 
CREATE TABLE `sys_notification` ( 
`id` bigint,
`subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`external_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`scene_id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_id` bigint,
`bind_table_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`reply_to` bigint,
`priority` int,
`has_attach` bit(1),
`request_receipt` bit(1),
`sender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sender_id` bigint,
`send_time` datetime,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`notification_type` int,
`template_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysNotificationContent ==========*/
DROP TABLE IF EXISTS `sys_notification_content`; 
CREATE TABLE `sys_notification_content` ( 
`id` bigint,
`is_body_html` bit(1),
`raw_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`cover_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`body` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_args` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysNotificationDelivery ==========*/
DROP TABLE IF EXISTS `sys_notification_delivery`; 
CREATE TABLE `sys_notification_delivery` ( 
`id` bigint,
`message_id` bigint,
`mailbox` int,
`is_star` bit(1),
`is_read` bit(1),
`is_replied` bit(1),
`read_time` datetime,
`owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`owner_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysNotificationProduct ==========*/
DROP TABLE IF EXISTS `sys_notification_product`; 
CREATE TABLE `sys_notification_product` ( 
`id` bigint,
`product_id` bigint,
`scene_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysNotificationRecipient ==========*/
DROP TABLE IF EXISTS `sys_notification_recipient`; 
CREATE TABLE `sys_notification_recipient` ( 
`id` bigint,
`message_id` bigint,
`recipient_type` int,
`recipient_id` bigint,
`recipient_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`send_type` int,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysNotificationScene ==========*/
DROP TABLE IF EXISTS `sys_notification_scene`; 
CREATE TABLE `sys_notification_scene` ( 
`id` bigint,
`scene_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`scene_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`app_id` bigint,
`icon_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sequence` int,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysNotificationTemplate ==========*/
DROP TABLE IF EXISTS `sys_notification_template`; 
CREATE TABLE `sys_notification_template` ( 
`id` bigint,
`template_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`template_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`scene_id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`notification_type` int,
`subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`external_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_body_html` bit(1),
`raw_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`cover_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_valid` bit(1),
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`body` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`notification_args` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysDept ==========*/
DROP TABLE IF EXISTS `sys_dept`; 
CREATE TABLE `sys_dept` ( 
`id` bigint,
`dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`short_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`dept_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`parent_id` bigint,
`layer` int,
`path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sequence` int,
`is_enabled` bit(1),
`is_unit` bit(1),
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`input_time` datetime,
`is_delete` bit(1),
`unit_id` bigint,
`unit_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysDeptSpecialUser ==========*/
DROP TABLE IF EXISTS `sys_dept_special_user`; 
CREATE TABLE `sys_dept_special_user` ( 
`id` bigint,
`dept_id` bigint,
`dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`unit_id` bigint,
`unit_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`role_id` int,
`role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`user_id` bigint,
`user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`input_time` datetime,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysJob ==========*/
DROP TABLE IF EXISTS `sys_job`; 
CREATE TABLE `sys_job` ( 
`id` bigint,
`job_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`job_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`rank` int,
`is_valid` bit(1),
`unit_id` bigint,
`sequence` int,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`parent_id` bigint,
`layer` int,
`path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysPark ==========*/
DROP TABLE IF EXISTS `sys_park`; 
CREATE TABLE `sys_park` ( 
`id` bigint,
`park_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`park_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci not null,
`short_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sequence` int,
`is_valid` bit(1),
`is_delete` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysPosition ==========*/
DROP TABLE IF EXISTS `sys_position`; 
CREATE TABLE `sys_position` ( 
`id` bigint,
`dept_id` bigint,
`job_id` bigint,
`job_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`position_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`position_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`parent_id` bigint,
`path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`layer` int,
`sequence` int,
`is_valid` bit(1),
`unit_id` bigint,
`is_delete` bit(1),
`input_time` datetime,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_public` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysPositionDept ==========*/
DROP TABLE IF EXISTS `sys_position_dept`; 
CREATE TABLE `sys_position_dept` ( 
`id` bigint,
`position_id` bigint,
`dept_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysPositionUser ==========*/
DROP TABLE IF EXISTS `sys_position_user`; 
CREATE TABLE `sys_position_user` ( 
`id` bigint,
`position_id` bigint,
`position_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`user_id` bigint,
`user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`dept_id` bigint,
`dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`leader_id` bigint,
`leader_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sequence` int,
`is_valid` bit(1),
`is_delete` bit(1),
`is_part_time` bit(1),
`job_id` bigint,
`unit_id` bigint,
`unit_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysUnit ==========*/
DROP TABLE IF EXISTS `sys_unit`; 
CREATE TABLE `sys_unit` ( 
`id` bigint,
`unit_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`short_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`unit_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`parent_id` bigint not null,
`layer` int,
`path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sequence` int,
`is_enabled` bit(1),
`is_head_office` bit(1),
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysUnitApp ==========*/
DROP TABLE IF EXISTS `sys_unit_app`; 
CREATE TABLE `sys_unit_app` ( 
`id` bigint,
`unit_id` bigint,
`app_id` bigint,
`app_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= VmSysParkCatalog ==========*/
DROP TABLE IF EXISTS `vm_sys_park_catalog`; 
CREATE TABLE `vm_sys_park_catalog` ( 
`role_id` bigint,
`park_id` bigint,
`id` bigint,
`catalog_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`app_id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_id` bigint,
`catalog_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`catalog_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`parent_id` bigint,
`layer` int,
`path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sequence` int,
`is_valid` bit(1),
`is_delete` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= VmSysUnitCatalog ==========*/
DROP TABLE IF EXISTS `vm_sys_unit_catalog`; 
CREATE TABLE `vm_sys_unit_catalog` ( 
`role_id` bigint,
`unit_id` bigint,
`id` bigint,
`catalog_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`app_id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_id` bigint,
`catalog_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`catalog_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`parent_id` bigint,
`layer` int,
`path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sequence` int,
`is_valid` bit(1),
`is_delete` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysTag ==========*/
DROP TABLE IF EXISTS `sys_tag`; 
CREATE TABLE `sys_tag` ( 
`id` bigint,
`app_id` bigint,
`tag_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_class_id` bigint,
`tag_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`layer` int,
`parent_id` bigint,
`is_built_in` bit(1),
`is_valid` bit(1),
`sequence` int,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysTagClass ==========*/
DROP TABLE IF EXISTS `sys_tag_class`; 
CREATE TABLE `sys_tag_class` ( 
`id` bigint,
`app_id` bigint,
`class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`class_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`class_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`display_level` int,
`is_built_in` bit(1),
`is_valid` bit(1),
`sequence` int,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`class_flag_id` int,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_id` bigint,
`parent_id` bigint,
`layer` int,
`path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdDgworkDept ==========*/
DROP TABLE IF EXISTS `std_dgwork_dept`; 
CREATE TABLE `std_dgwork_dept` ( 
`id` bigint,
`dept_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`parent_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`create_dept_group` bit(1),
`auto_add_user` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdDgworkDeptUser ==========*/
DROP TABLE IF EXISTS `std_dgwork_dept_user`; 
CREATE TABLE `std_dgwork_dept_user` ( 
`id` bigint,
`user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`dept_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdDgworkUser ==========*/
DROP TABLE IF EXISTS `std_dgwork_user`; 
CREATE TABLE `std_dgwork_user` ( 
`id` bigint,
`user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`work_place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`active` bit(1),
`is_admin` bit(1),
`is_boss` bit(1),
`open_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`union_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_hide` bit(1),
`position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`job_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`account_id` bigint,
`input_time` datetime,
`input_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`update_time` datetime,
`update_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= DgWorkUserVM ==========*/


/*========= StdDingtalkDept ==========*/
DROP TABLE IF EXISTS `std_dingtalk_dept`; 
CREATE TABLE `std_dingtalk_dept` ( 
`id` bigint,
`dept_id` bigint,
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`parent_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`create_dept_group` bit(1),
`auto_add_user` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdDingtalkDeptUser ==========*/
DROP TABLE IF EXISTS `std_dingtalk_dept_user`; 
CREATE TABLE `std_dingtalk_dept_user` ( 
`id` bigint,
`user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`dept_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdDingtalkUser ==========*/
DROP TABLE IF EXISTS `std_dingtalk_user`; 
CREATE TABLE `std_dingtalk_user` ( 
`id` bigint,
`user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`work_place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`active` bit(1),
`is_admin` bit(1),
`is_boss` bit(1),
`open_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`union_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_hide` bit(1),
`position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`job_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`account_id` bigint,
`input_time` datetime,
`input_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`update_time` datetime,
`update_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= DingTalkUserVM ==========*/


/*========= SysSystem ==========*/
DROP TABLE IF EXISTS `sys_system`; 
CREATE TABLE `sys_system` ( 
`id` bigint,
`system_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`system_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`system_version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`provider_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`provider_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`icon_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sequence` int,
`status` int,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysSystemCertificate ==========*/
DROP TABLE IF EXISTS `sys_system_certificate`; 
CREATE TABLE `sys_system_certificate` ( 
`id` bigint,
`system_id` bigint,
`certificate_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`api_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_valid` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`access_level` int,
`platform` int,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysToken ==========*/
DROP TABLE IF EXISTS `sys_token`; 
CREATE TABLE `sys_token` ( 
`id` bigint,
`access_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`refresh_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`account_id` bigint,
`certificate_id` bigint,
`uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`expires_in` datetime,
`scope` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`request_time` datetime,
`request_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= VmSysAccountAccess ==========*/
DROP TABLE IF EXISTS `vm_sys_account_access`; 
CREATE TABLE `vm_sys_account_access` ( 
`id` bigint,
`account_id` bigint,
`open_platform` bigint,
`open_platform_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`open_platform_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`open_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`real_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= TokenAccountVO ==========*/


/*========= StdQqUser ==========*/
DROP TABLE IF EXISTS `std_qq_user`; 
CREATE TABLE `std_qq_user` ( 
`id` bigint,
`open_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`account_id` bigint,
`nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`figureurl_qq1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`figureurl_qq2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`input_time` datetime,
`input_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`update_time` datetime,
`update_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= QQUserVM ==========*/


/*========= StdWechatUser ==========*/
DROP TABLE IF EXISTS `std_wechat_user`; 
CREATE TABLE `std_wechat_user` ( 
`id` bigint,
`open_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`account_id` bigint,
`union_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sex` int,
`province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`head_img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`input_time` datetime,
`input_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`update_time` datetime,
`update_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= WechatUserVM ==========*/


/*========= StdWechatepApp ==========*/
DROP TABLE IF EXISTS `std_wechatep_app`; 
CREATE TABLE `std_wechatep_app` ( 
`id` bigint,
`agent_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`agent_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`agent_id` int,
`secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`callback_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`callback_aes_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`menu_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`welcome_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`error_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdWechatepUser ==========*/
DROP TABLE IF EXISTS `std_wechatep_user`; 
CREATE TABLE `std_wechatep_user` ( 
`id` bigint,
`user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`english_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`account_id` bigint,
`alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`gender` int,
`email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`isleader` bit(1),
`avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`status` int,
`enable` int,
`input_time` datetime,
`input_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`update_time` datetime,
`update_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= WechatEPUserVM ==========*/


/*========= WechatEPAppVO ==========*/


/*========= StdWechatmpTemplate ==========*/
DROP TABLE IF EXISTS `std_wechatmp_template`; 
CREATE TABLE `std_wechatmp_template` ( 
`id` bigint,
`template_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`primary_industry` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`deputy_industry` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`example` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdWechatmpUser ==========*/
DROP TABLE IF EXISTS `std_wechatmp_user`; 
CREATE TABLE `std_wechatmp_user` ( 
`id` bigint,
`open_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`account_id` bigint,
`union_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sex` int,
`province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`head_img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`input_time` datetime,
`input_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`update_time` datetime,
`update_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= WechatMPUserVM ==========*/


/*========= StdWeiboUser ==========*/
DROP TABLE IF EXISTS `std_weibo_user`; 
CREATE TABLE `std_weibo_user` ( 
`id` bigint,
`uid` bigint,
`idstr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`account_id` bigint,
`screen_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`province` int,
`city` int,
`location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`profile_image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`profile_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`weihao` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`followers_count` int,
`friends_count` int,
`statuses_count` int,
`favourites_count` int,
`created_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`following` bit(1),
`allow_all_act_msg` bit(1),
`geo_enabled` bit(1),
`verified` bit(1),
`verified_type` int,
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`allow_all_comment` bit(1),
`avatar_large` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`avatar_hd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`verified_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`follow_me` bit(1),
`online_status` int,
`bi_followers_count` int,
`lang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`input_time` datetime,
`input_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`update_time` datetime,
`update_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= WeiboUserVM ==========*/
