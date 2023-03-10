

/*========= StdDgworkDept ==========*/

CREATE TABLE IF NOT EXISTS `std_dgwork_dept` ( 
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

CREATE TABLE IF NOT EXISTS `std_dgwork_dept_user` ( 
`id` bigint,
`user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`dept_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdDgworkUser ==========*/

CREATE TABLE IF NOT EXISTS `std_dgwork_user` ( 
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

CREATE TABLE IF NOT EXISTS `std_dingtalk_dept` ( 
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

CREATE TABLE IF NOT EXISTS `std_dingtalk_dept_user` ( 
`id` bigint,
`user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`dept_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdDingtalkUser ==========*/

CREATE TABLE IF NOT EXISTS `std_dingtalk_user` ( 
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

CREATE TABLE IF NOT EXISTS `sys_system` ( 
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

CREATE TABLE IF NOT EXISTS `sys_system_certificate` ( 
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

CREATE TABLE IF NOT EXISTS `sys_token` ( 
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

CREATE TABLE IF NOT EXISTS `vm_sys_account_access` ( 
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

CREATE TABLE IF NOT EXISTS `std_qq_user` ( 
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

CREATE TABLE IF NOT EXISTS `std_wechat_user` ( 
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

CREATE TABLE IF NOT EXISTS `std_wechatep_app` ( 
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

CREATE TABLE IF NOT EXISTS `std_wechatep_user` ( 
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

CREATE TABLE IF NOT EXISTS `std_wechatmp_template` ( 
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

CREATE TABLE IF NOT EXISTS `std_wechatmp_user` ( 
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

CREATE TABLE IF NOT EXISTS `std_weibo_user` ( 
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


/*========= StdFlow ==========*/

CREATE TABLE IF NOT EXISTS `std_flow` ( 
`id` bigint,
`catalogue_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`catalogue_id` bigint,
`process_type` int,
`scene_type` int,
`flow_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`flow_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`status` int,
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_built_in` bit(1),
`is_template` bit(1),
`display_mode` int,
`sequence` int,
`unit_id` bigint,
`is_delete` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdFlowAccess ==========*/

CREATE TABLE IF NOT EXISTS `std_flow_access` ( 
`id` bigint,
`flow_id` bigint,
`target_type` int,
`target_id` bigint,
`target_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdFlowAttach ==========*/

CREATE TABLE IF NOT EXISTS `std_flow_attach` ( 
`id` bigint,
`attach_id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdFlowAttachTemplate ==========*/

CREATE TABLE IF NOT EXISTS `std_flow_attach_template` ( 
`id` bigint,
`flow_id` bigint,
`flow_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`custom_type` int,
`is_required` bit(1),
`title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sequence` int,
`is_delete` bit(1),
`inputer_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`input_time` datetime,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdFlowBusinessData ==========*/

CREATE TABLE IF NOT EXISTS `std_flow_business_data` ( 
`id` bigint,
`flow_id` bigint,
`flow_content_id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_id` bigint,
`use_port` int,
`form_id` bigint,
`is_valid` bit(1),
`is_delete` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`component_json` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdFlowCatalogue ==========*/

CREATE TABLE IF NOT EXISTS `std_flow_catalogue` ( 
`id` bigint,
`catalogue_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`process_type` int,
`scene_type` int,
`unit_id` bigint,
`sequence` int,
`is_delete` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdFlowCatalogueField ==========*/

CREATE TABLE IF NOT EXISTS `std_flow_catalogue_field` ( 
`id` bigint,
`catalogue_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`catalogue_id` bigint,
`process_type` int,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`field_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`field_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`field_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_required` bit(1),
`is_visible` bit(1),
`is_editable` bit(1),
`default_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
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
`field_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdFlowCatalogueTag ==========*/

CREATE TABLE IF NOT EXISTS `std_flow_catalogue_tag` ( 
`id` bigint,
`catalogue_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`catalogue_id` bigint,
`process_type` int,
`tag_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`layer` int,
`parent_id` bigint,
`is_built_in` bit(1),
`is_valid` bit(1),
`sequence` int,
`tag_type` int,
`operation_type` int,
`operation_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`operation_explain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdFlowContent ==========*/

CREATE TABLE IF NOT EXISTS `std_flow_content` ( 
`id` bigint,
`flow_id` bigint,
`is_valid` bit(1),
`is_delete` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`content_json` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdFlowDataSource ==========*/

CREATE TABLE IF NOT EXISTS `std_flow_data_source` ( 
`id` bigint,
`flow_id` bigint,
`catalogue_id` bigint,
`process_type` int,
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`command_type` int,
`unit_id` bigint,
`is_page` bit(1),
`is_valid` bit(1),
`is_delete` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`command_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`params` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdFlowDelegate ==========*/

CREATE TABLE IF NOT EXISTS `std_flow_delegate` ( 
`id` bigint,
`summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`flow_names` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`owner_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`owner_user_id` bigint,
`delegate_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`delegate_user_id` bigint,
`start_date` datetime,
`end_date` datetime,
`status` int,
`is_delegate_not_end` bit(1),
`is_delete` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdFlowDelegateItem ==========*/

CREATE TABLE IF NOT EXISTS `std_flow_delegate_item` ( 
`id` bigint,
`delegate_id` bigint,
`flow_id` bigint,
`flow_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdFlowNumber ==========*/

CREATE TABLE IF NOT EXISTS `std_flow_number` ( 
`id` bigint,
`title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`flow_names` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`flow_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`yearly` int,
`monthly` int,
`cycle_rule` int,
`range_rule` int,
`unit_id` bigint,
`process_type` int,
`is_delete` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdFlowNumberRule ==========*/

CREATE TABLE IF NOT EXISTS `std_flow_number_rule` ( 
`id` bigint,
`flow_number_id` bigint,
`catalogue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`catalogue_id` int,
`catalogue_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`catalogue_value_ext` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`serial_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_delete` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdFlowProject ==========*/

CREATE TABLE IF NOT EXISTS `std_flow_project` ( 
`id` bigint,
`flow_id` bigint,
`parent_id` bigint,
`title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`serial_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`project_number` int,
`status` int,
`current_node` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`current_node_id` bigint,
`route_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`route_id` bigint,
`flow_type` int,
`start_time` datetime,
`finish_time` datetime,
`importance` int,
`open_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`audit_result` int,
`is_archive` bit(1),
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`inputer_dept` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_dept_id` bigint,
`input_time` datetime,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_id` bigint,
`is_delete` bit(1),
`unit_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdFlowProjectContent ==========*/

CREATE TABLE IF NOT EXISTS `std_flow_project_content` ( 
`id` bigint,
`flow_id` bigint,
`flow_project_id` bigint,
`flow_content_id` bigint,
`is_delete` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`component_data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdFlowProjectLog ==========*/

CREATE TABLE IF NOT EXISTS `std_flow_project_log` ( 
`id` bigint,
`flow_project_id` bigint,
`flow_project_content_id` bigint,
`current_node` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`current_node_id` bigint,
`route_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`route_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdFlowProjectOpinion ==========*/

CREATE TABLE IF NOT EXISTS `std_flow_project_opinion` ( 
`id` bigint,
`flow_project_id` bigint,
`task_id` bigint,
`current_node` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`opinion_component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sign_date` datetime,
`sign_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sign_encrypt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sign_type` int,
`is_delete` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdFlowProjectRelation ==========*/

CREATE TABLE IF NOT EXISTS `std_flow_project_relation` ( 
`id` bigint,
`flow_project_id` bigint,
`relation_flow_project_id` bigint,
`is_delete` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdFlowProjectSupervise ==========*/

CREATE TABLE IF NOT EXISTS `std_flow_project_supervise` ( 
`id` bigint,
`flow_project_id` bigint,
`flow_project_task_id` bigint,
`supervise_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`supervise_user_id` bigint,
`to_supervise_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`to_supervise_user_id` bigint,
`supervise_time` datetime,
`supervise_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdFlowProjectTask ==========*/

CREATE TABLE IF NOT EXISTS `std_flow_project_task` ( 
`id` bigint,
`flow_id` bigint,
`flow_project_id` bigint,
`status` int,
`flags` int,
`current_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`current_user_id` bigint,
`delegate_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`delegate_user_id` bigint,
`route_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`route_id` bigint,
`previous_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`previous_user_id` bigint,
`current_node` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`current_node_id` bigint,
`previous_node` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`previous_node_id` bigint,
`convey_time` datetime,
`read_time` datetime,
`finish_time` datetime,
`limit_time` datetime,
`finisher_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`readed_status` int,
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`importance` int,
`is_delegate` bit(1),
`is_read` bit(1),
`is_need_material` bit(1),
`is_be_return` bit(1),
`supervise_count` int,
`is_approve` int,
`merge_start_task_id` bigint,
`merge_node` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_active` bit(1),
`is_delete` bit(1),
`is_temp` bit(1),
`device` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`operate_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdFlowProjectTaskAttach ==========*/

CREATE TABLE IF NOT EXISTS `std_flow_project_task_attach` ( 
`id` bigint,
`flow_project_id` bigint,
`task_id` bigint,
`attach_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdFlowProjectTaskRelation ==========*/

CREATE TABLE IF NOT EXISTS `std_flow_project_task_relation` ( 
`id` bigint,
`flow_project_id` bigint,
`parent_id` bigint,
`current_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdFlowRule ==========*/

CREATE TABLE IF NOT EXISTS `std_flow_rule` ( 
`id` bigint,
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`catalogue_id` bigint,
`process_type` int,
`rule_type` int,
`status` bit(1),
`unit_id` bigint,
`is_delete` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`rule_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdFlowRuleTrigger ==========*/

CREATE TABLE IF NOT EXISTS `std_flow_rule_trigger` ( 
`id` bigint,
`flow_id` bigint,
`trigger_mode` int,
`current_nodes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`current_node_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`flow_rule` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`flow_rule_id` bigint,
`route_id` bigint,
`is_delete` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdFlowValidation ==========*/

CREATE TABLE IF NOT EXISTS `std_flow_validation` ( 
`id` bigint,
`rule_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`error_message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`validation_type` int,
`validation_args` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sequence` int,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdFormContent ==========*/

CREATE TABLE IF NOT EXISTS `std_form_content` ( 
`id` bigint,
`form_id` bigint,
`use_mode` int,
`use_port` int,
`is_delete` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`html_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= VwStdFlowDelegate ==========*/

CREATE TABLE IF NOT EXISTS `vw_std_flow_delegate` ( 
`id` bigint,
`delegate_user_id` bigint,
`owner_user_id` bigint,
`is_delegate_not_end` bit(1),
`start_date` datetime,
`flow_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdContactPersonal ==========*/

CREATE TABLE IF NOT EXISTS `std_contact_personal` ( 
`id` bigint,
`bind_table_id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`english_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tel_extend_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`fax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`qq` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`wechat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`gender` int,
`official_account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`micro_blog` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`birth_year` int,
`birth_month` int,
`birth_day` int,
`nation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`nation_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`native_place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`birth_place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`highest_education` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`highest_education_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`highest_degree` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`highest_degree_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`political_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`political_status_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`certificate_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`certificate_type_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`certificate_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`certificate_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`certificate_address_zip_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`country_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`province_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`city_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`district_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`zip_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`position_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`job_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`job_title_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`initial` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`idiograph` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`relation_contact_personal_id` bigint,
`is_default` bit(1),
`is_share` bit(1),
`unit_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
`marriage_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`marriage_status_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`interest` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`interest_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`research_area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`research_area_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdContactPersonalGroup ==========*/

CREATE TABLE IF NOT EXISTS `std_contact_personal_group` ( 
`id` bigint,
`business_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`group_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`parent_id` bigint,
`layer` int,
`path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sequence` int,
`is_built_in` bit(1),
`unit_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdContactPersonalGroupRelation ==========*/

CREATE TABLE IF NOT EXISTS `std_contact_personal_group_relation` ( 
`id` bigint,
`group_id` bigint,
`group_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`contact_personal_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdContactPersonalTag ==========*/

CREATE TABLE IF NOT EXISTS `std_contact_personal_tag` ( 
`id` bigint,
`contact_personal_id` bigint,
`tag_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_class_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdCompany ==========*/

CREATE TABLE IF NOT EXISTS `std_company` ( 
`id` bigint,
`customer_id` bigint,
`credit_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`legal_person` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`contact_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`register_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`insured_employee_number` bigint,
`business_issue_date` datetime,
`listed_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`regist_date` datetime,
`business_approval_date` datetime,
`registered_capital` decimal(20,4),
`registered_capital_unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`registered_capital_unit_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`registered_office` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`registered_office_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`registered_address_zip_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`registered_capital_to_rmb` decimal(20,4),
`actual_amount` decimal(20,4),
`actual_amount_unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`actual_amount_unit_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`actual_amount_to_rmb` decimal(20,4),
`business_date_start` datetime,
`business_date_end` datetime,
`business_date_tag_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`business_date_tag_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`business_years` int,
`business_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`business_address_zip_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`business_scope_permit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`state_tax_office` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`state_tax_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`local_tax_office` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`local_tax_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tax_paying_place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`technical_field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`technical_field_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`organizational` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`organizational_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`registration_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`registration_type_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`unit_nature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`unit_nature_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`operate_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`operate_mode_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`operate_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`operate_status_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`business_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`business_status_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tax_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tax_status_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tax_settle_date` datetime,
`employee_number` int,
`taxpay_scale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`taxpay_scale_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`assets_nature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`assets_nature_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`organization_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`taxpayer_identification_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
`registered_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`business_scope` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdCompanyBreakPromise ==========*/

CREATE TABLE IF NOT EXISTS `std_company_break_promise` ( 
`id` bigint comment '',
`customer_id` bigint comment '客户id',
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '被执行人姓名/名称',
`ownername` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '法定代表人/负责人姓名',
`orgno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '身份证号码/组织机构代码',
`org_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '组织类型名称',
`put_on_record_time` datetime comment '立案时间',
`publish_date` datetime comment '发布时间',
`reference_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '案号',
`execute_gov` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '执行法院',
`duty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '生效法律文书确定的义务',
`execute_unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '做出执行依据单位',
`execute_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '执行依据文号',
`province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '所在省份',
`age` int comment '年龄',
`gender` int comment '性别',
`performed_part` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '已履行',
`unperform_part` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '未履行',
`execute_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '被执行人的履行情况',
`action_remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '失信被执行人行为具体情形',
`is_delete` bit(1) comment '',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '',
`inputer_id` bigint comment '',
`input_time` datetime comment '',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '失信被执行人';

/*========= StdCompanyCopyright ==========*/

CREATE TABLE IF NOT EXISTS `std_company_copyright` ( 
`id` bigint,
`customer_id` bigint,
`copyright_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`short_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`copyright_owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`accept_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`regist_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`category_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`version_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`certificate_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`first_publicate_date` datetime,
`regist_date` datetime,
`approved_date` datetime,
`technology_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`technology_source_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdCompanyDeclareProject ==========*/

CREATE TABLE IF NOT EXISTS `std_company_declare_project` ( 
`id` bigint,
`customer_id` bigint,
`project_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`make_project_year` int,
`apply_year` int,
`start_date` datetime,
`end_date` datetime,
`invest_amount` bigint,
`subsidize_amount` bigint,
`subsidize_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`subsidize_type_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`apply_level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`apply_level_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`apply_unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`apply_unit_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`fund_manage_dept` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`project_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`project_status_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdCompanyEconomicContribution ==========*/

CREATE TABLE IF NOT EXISTS `std_company_economic_contribution` ( 
`id` bigint,
`customer_id` bigint,
`period_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`period_type_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`period` int,
`industrial_output` decimal(20,4),
`principal_revenue` decimal(20,4),
`research_staff_count` int,
`profit` decimal(20,4),
`asset` decimal(20,4),
`tax` decimal(20,4),
`research_investment` decimal(20,4),
`fixed_asset` decimal(20,4),
`export_value` decimal(20,4),
`energy_consumption` decimal(20,4),
`industrial_value_added` decimal(20,4),
`total_imports` decimal(20,4),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdCompanyEquity ==========*/

CREATE TABLE IF NOT EXISTS `std_company_equity` ( 
`id` bigint,
`customer_id` bigint,
`contact_personal_id` bigint,
`record_date` datetime,
`shareholder_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`shareholder_type_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`subscribed_amount` decimal(20,4),
`subscribed_capital_date` datetime,
`invest_rate` decimal(20,4),
`ultimate_beneficial_shares` decimal(20,4),
`office_comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdCompanyEquityCapital ==========*/

CREATE TABLE IF NOT EXISTS `std_company_equity_capital` ( 
`id` bigint,
`equity_id` bigint,
`periods` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`periods_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`total_capital` decimal(20,4),
`total_capital_date` datetime,
`currency_capital` decimal(20,4),
`in_kind_capital` decimal(20,4),
`ipr_capital` decimal(20,4),
`tenure_capital` decimal(20,4),
`equity_capital` decimal(20,4),
`invest_time` datetime,
`balance_deadline` datetime,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdCompanyFinancingPlan ==========*/

CREATE TABLE IF NOT EXISTS `std_company_financing_plan` ( 
`id` bigint,
`customer_id` bigint,
`financing_stage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`financing_stage_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`financing_amount` bigint,
`transfer_equity` decimal(20,4),
`financing_usage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdCompanyFinancingRecord ==========*/

CREATE TABLE IF NOT EXISTS `std_company_financing_record` ( 
`id` bigint,
`customer_id` bigint,
`financing_stage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`financing_stage_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`financing_amount` decimal(20,4),
`money_unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`money_unit_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`financing_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`financing_type_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`financing_usage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`financing_date` datetime,
`valuation` decimal(20,4),
`investor_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`investor_type_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`investor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`broker` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`investment_bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`accounting_firm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`law_firm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`payment_date` datetime,
`is_get_park_help` bit(1),
`future_financing_needs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdCompanyJudgmentDoc ==========*/

CREATE TABLE IF NOT EXISTS `std_company_judgment_doc` ( 
`id` bigint comment '',
`customer_id` bigint comment '',
`court` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '执行法院',
`case_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '裁判文书名字',
`case_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '裁判文书编号',
`case_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '裁判文书类型',
`submit_date` datetime comment '发布时间',
`judge_date` datetime comment '审判时间',
`is_prosecutor` bit(1) comment '是否原告',
`is_defendant` bit(1) comment '是否被告',
`case_role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '案件角色',
`court_date` datetime comment '开庭时间',
`court_level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '法院级别',
`case_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '案由',
`case_reason_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '案由类型',
`is_delete` bit(1) comment '',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '',
`inputer_id` bigint comment '',
`input_time` datetime comment '',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '裁判文书';

/*========= StdCompanyPatent ==========*/

CREATE TABLE IF NOT EXISTS `std_company_patent` ( 
`id` bigint,
`customer_id` bigint,
`patent_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`patent_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`patent_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`patent_type_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`apply_date` datetime,
`patent_owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`valid_date_start` datetime,
`valid_date_end` datetime,
`patent_area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`patent_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`accredit_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`authorized_date` datetime,
`technology_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`technology_source_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdCompanyTax ==========*/

CREATE TABLE IF NOT EXISTS `std_company_tax` ( 
`id` bigint,
`tax_regist_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`customer_id` bigint,
`customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`year_month` int,
`record_date` datetime,
`internal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`total_tax` bigint,
`vat` bigint,
`business_tax` bigint,
`corporate_income_tax` bigint,
`corporate_income_tax2` bigint,
`individual_income_tax` bigint,
`consumption_tax` bigint,
`building_tax` bigint,
`vehicle_tax` bigint,
`stamp_tax` bigint,
`slaughter_tax` bigint,
`urban_land_use_tax` bigint,
`unearned_increment_tax` bigint,
`construction_tax` bigint,
`business_to_vat` bigint,
`education_tax` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdCompanyTradeMark ==========*/

CREATE TABLE IF NOT EXISTS `std_company_trade_mark` ( 
`id` bigint,
`customer_id` bigint,
`trademark_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`apply_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`apply_date` datetime,
`accredit_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`accredit_date` datetime,
`fail_date` datetime,
`apply_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`apply_status_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`technology_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`technology_source_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdCustomer ==========*/

CREATE TABLE IF NOT EXISTS `std_customer` ( 
`id` bigint,
`customer_type` int,
`customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`customer_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`english_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`short_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`former_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`business_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`business_type_value` int,
`integrity` double precision,
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdCustomerAssignment ==========*/

CREATE TABLE IF NOT EXISTS `std_customer_assignment` ( 
`id` bigint,
`customer_id` bigint,
`park_id` bigint,
`unit_id` bigint,
`business_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`business_type_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`receiving_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`receiving_user_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdCustomerCertificate ==========*/

CREATE TABLE IF NOT EXISTS `std_customer_certificate` ( 
`id` bigint,
`customer_id` bigint,
`certificate_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`certificate_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`certification_authority` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`licence_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`expiry_date` datetime,
`issue_date` datetime,
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdCustomerExtendForm ==========*/

CREATE TABLE IF NOT EXISTS `std_customer_extend_form` ( 
`id` bigint,
`customer_id` bigint,
`category_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`category_type_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`unique_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`form_json` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdCustomerInPark ==========*/

CREATE TABLE IF NOT EXISTS `std_customer_in_park` ( 
`id` bigint comment '',
`customer_id` bigint not null comment '客户id',
`park_id` bigint comment '所属园区id',
`park_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci not null comment '所属园区名称',
`rating` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci not null comment '客户评级',
`rating_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci not null comment '客户评级value',
`introduction_date` datetime comment '引进日期',
`entry_date` datetime comment '入园日期',
`leave_date` datetime comment '离园日期',
`pause_date` datetime comment '搁置日期',
`settlement_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci not null comment '入驻方式',
`settlement_type_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci not null comment '入驻方式value',
`is_default` bit(1) not null comment '客户默认纳税归属',
`status` int not null comment '状态(0:离园1:在园)',
`unit_id` bigint comment '单位id',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人id',
`input_time` datetime comment '录入时间',
`is_delete` bit(1) comment '逻辑删除',
`is_valid` bit(1) comment '是否有效',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '客户的在园信息';

/*========= StdCustomerNameChangeRecord ==========*/

CREATE TABLE IF NOT EXISTS `std_customer_name_change_record` ( 
`id` bigint,
`customer_id` bigint,
`original_customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`current_customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`change_time` datetime,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdCustomerRelation ==========*/

CREATE TABLE IF NOT EXISTS `std_customer_relation` ( 
`id` bigint,
`customer_id` bigint,
`in_park_id` bigint,
`relation_customer_id` bigint,
`relation_customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdCustomerSettlement ==========*/

CREATE TABLE IF NOT EXISTS `std_customer_settlement` ( 
`id` bigint,
`customer_id` bigint,
`in_park_id` bigint,
`unit_id` bigint,
`property_project_id` bigint,
`property_project_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`building_id` bigint,
`building_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`room_id` bigint,
`room_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`space_id` bigint,
`space_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`space_fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_valid` bit(1),
`is_modifiable` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`input_time` datetime,
`inputer_id` bigint,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdCustomerTag ==========*/

CREATE TABLE IF NOT EXISTS `std_customer_tag` ( 
`id` bigint,
`customer_id` bigint,
`tag_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_class_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdTeam ==========*/

CREATE TABLE IF NOT EXISTS `std_team` ( 
`id` bigint,
`customer_id` bigint,
`principal_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`advantage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`personal_count` int,
`register_date` datetime,
`summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`operation_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`operation_state_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inpuer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiExceptionData ==========*/

CREATE TABLE IF NOT EXISTS `bi_exception_data` ( 
`id` bigint,
`bind_table_id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`exception_msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`exception_type` int,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '数据异常主表';

/*========= StdCompanyUserType ==========*/

CREATE TABLE IF NOT EXISTS `std_company_user_type` ( 
`id` bigint,
`unit_id` bigint,
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sequence` int,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_support_front_auth` bit(1),
`is_builtin` bit(1),
`input_time` datetime,
`inputer_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdMember ==========*/

CREATE TABLE IF NOT EXISTS `std_member` ( 
`id` bigint comment '会员id',
`account_id` bigint not null comment '账户id',
`current_park_id` bigint comment '当前所在园区id',
`current_park_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '当前所在园区',
`is_locked` bit(1) comment '是否锁定',
`is_valid` bit(1) comment '是否禁用',
`id_card` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '身份证号',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '创建人',
`inputer_id` bigint comment '创建人id',
`input_time` datetime comment '创建时间',
`update_time` datetime comment '更新时间',
`register_source` int comment '注册来源',
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '备注',
`is_delete` bit(1) comment '是否删除',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdMemberAuthentication ==========*/

CREATE TABLE IF NOT EXISTS `std_member_authentication` ( 
`id` bigint comment '认证id',
`account_id` bigint comment '账号id',
`member_id` bigint not null comment '会员id',
`park_id` bigint comment '园区id',
`park_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '园区名称',
`company_id` bigint comment '认证公司id',
`company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '认证公司名称',
`company_user_type_id` bigint comment '企业用户类型（认证身份）',
`company_user_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '企业用户类型名称',
`company_department` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '公司部门',
`status` int comment '认证状态',
`audit_time` datetime comment '审核时间',
`audit_user_id` bigint comment '审核人id',
`audit_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '审核人',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '创建人',
`inputer_id` bigint comment '创建人id',
`input_time` datetime comment '创建时间',
`update_time` datetime comment '更新时间',
`is_delete` bit(1) comment '是否删除',
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '备注',
`reject_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '拒绝原因',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdMemberAuthenticationRecord ==========*/

CREATE TABLE IF NOT EXISTS `std_member_authentication_record` ( 
`id` bigint,
`authentication_id` bigint,
`park_id` bigint,
`account_id` bigint,
`real_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`operate_content_type` int,
`current_status` int,
`company_id` bigint,
`company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`company_user_type_id` bigint,
`company_user_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`operate_source` int,
`reject_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`update_time` datetime,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdMemberBlacklist ==========*/

CREATE TABLE IF NOT EXISTS `std_member_blacklist` ( 
`id` bigint,
`mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdNewCompany ==========*/

CREATE TABLE IF NOT EXISTS `std_new_company` ( 
`id` bigint,
`park_id` bigint,
`park_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`credit_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`account_id` bigint,
`real_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`status` int,
`reject_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`audit_time` datetime,
`input_time` datetime,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdAdvertisingSpace ==========*/

CREATE TABLE IF NOT EXISTS `std_advertising_space` ( 
`id` bigint,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdBuilding ==========*/

CREATE TABLE IF NOT EXISTS `std_building` ( 
`id` bigint,
`building_area` decimal(20,4),
`underground_floor` int,
`ground_floor` int,
`total_floor` int,
`manage_area` decimal(20,4),
`decorate_status` int,
`under_floor_height` decimal(20,4),
`standard_floor_height` decimal(20,4),
`building_height` decimal(20,4),
`is_virtual` bit(1),
`start_use_time` datetime,
`end_use_time` datetime,
`hand_over_building_time` datetime,
`sequence` int,
`lng_and_lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdFloor ==========*/

CREATE TABLE IF NOT EXISTS `std_floor` ( 
`id` bigint,
`floor_height` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`floor_number` int,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdMeetingRoom ==========*/

CREATE TABLE IF NOT EXISTS `std_meeting_room` ( 
`id` bigint,
`floor_number` int,
`contact_person` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`contact_phonenumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`person_count` int,
`standard_service` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`optional_service` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`reservation_information` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdOfficeCubicle ==========*/

CREATE TABLE IF NOT EXISTS `std_office_cubicle` ( 
`id` bigint,
`status` int,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdParkInfo ==========*/

CREATE TABLE IF NOT EXISTS `std_park_info` ( 
`id` bigint,
`short_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`province_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`city_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`total_area` decimal(20,4),
`public_area` decimal(20,4),
`ground_area` decimal(20,4),
`underground_area` decimal(20,4),
`green_area` decimal(20,4),
`greening_rate` decimal(20,4),
`planning_floor_area_ratio` decimal(20,4),
`real_floor_area_ratio` decimal(20,4),
`house_efficient_rate` decimal(20,4),
`parking_space_count` int,
`start_build_time` datetime,
`end_build_time` datetime,
`investor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`total_investment` decimal(20,4),
`building_design_company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`property_type` int,
`is_has_sub` bit(1),
`contact_person` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`contact_phonenumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`customer_service_phonenumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`lng_and_lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sequence` int,
`summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdParkingLot ==========*/

CREATE TABLE IF NOT EXISTS `std_parking_lot` ( 
`id` bigint,
`business_model` int,
`building_area` decimal(20,4),
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`manage_time` datetime,
`is_delete` bit(1),
`status` int,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdParkingSpace ==========*/

CREATE TABLE IF NOT EXISTS `std_parking_space` ( 
`id` bigint,
`status` int,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdPropertyProject ==========*/

CREATE TABLE IF NOT EXISTS `std_property_project` ( 
`id` bigint,
`short_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`total_area` decimal(20,4),
`manage_area` decimal(20,4),
`ground_area` decimal(20,4),
`underground_area` decimal(20,4),
`green_area` decimal(20,4),
`greening_rate` decimal(20,4),
`planning_floor_area_ratio` decimal(20,4),
`real_floor_area_ratio` decimal(20,4),
`parking_space_count` int,
`start_build_time` datetime,
`end_build_time` datetime,
`investor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`total_investment` decimal(20,4),
`build_design_company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`property_manage_company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`lng_and_lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdRoom ==========*/

CREATE TABLE IF NOT EXISTS `std_room` ( 
`id` bigint,
`business_model` int,
`building_area` decimal(20,4),
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`manage_time` datetime,
`is_delete` bit(1),
`status` int,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdSpace ==========*/

CREATE TABLE IF NOT EXISTS `std_space` ( 
`id` bigint,
`space_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`space_fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`space_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`space_type` int,
`charging_area` decimal(20,4),
`parent_id` bigint,
`path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_valid` bit(1),
`is_virtual` bit(1),
`sequence` int,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
`park_id` bigint,
`project_id` bigint,
`building_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdSpaceCertificate ==========*/

CREATE TABLE IF NOT EXISTS `std_space_certificate` ( 
`id` bigint,
`code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`property_owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`floor_num` int,
`area` decimal(20,4),
`limit_year` int,
`start_time` datetime,
`end_time` datetime,
`summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdSpaceChangeRecord ==========*/

CREATE TABLE IF NOT EXISTS `std_space_change_record` ( 
`id` bigint,
`park_id` bigint,
`park_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`project_id` bigint,
`project_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`building_id` bigint,
`building_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`floor_id` bigint,
`floor_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`change_type` int,
`base_space_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`base_space_names` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`child_space_names` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`apply_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`apply_user_id` bigint,
`apply_time` datetime,
`audit_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`audit_user_id` bigint,
`audit_time` datetime,
`check_in_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`check_in_user_id` bigint,
`check_in_time` datetime,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`reject_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`status` int,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdSpaceChangeRecordChildRoom ==========*/

CREATE TABLE IF NOT EXISTS `std_space_change_record_child_room` ( 
`id` bigint,
`space_change_record_id` bigint,
`room_id` bigint,
`room_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`building_area` decimal(20,4),
`business_model` int,
`orientation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdSpaceExtend ==========*/

CREATE TABLE IF NOT EXISTS `std_space_extend` ( 
`id` bigint,
`is_delete` bit(1),
`extend_field_json` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdSpaceHotspot ==========*/

CREATE TABLE IF NOT EXISTS `std_space_hotspot` ( 
`id` bigint comment 'ID',
`space_id` bigint comment '空间id',
`space_type` int comment '空间类型',
`space_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '空间名称',
`parent_id` bigint comment '父空间id',
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '热点区域名字',
`spot_index` int comment '索引',
`spot_type` int comment '类型',
`method_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '创建方法名称',
`rgba` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment 'rgba',
`scale` int comment '缩放比例',
`points` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '点位',
`title_json` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '标题json',
`input_time` datetime comment '创建时间',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '创建人',
`inputer_id` bigint comment '创建人id',
`is_delete` bit(1) comment '是否删除',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '平面图';

/*========= StdSpaceLand ==========*/

CREATE TABLE IF NOT EXISTS `std_space_land` ( 
`id` bigint,
`land_area` decimal(20,4),
`use_limit_year` int,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdSpaceOccupyRecord ==========*/

CREATE TABLE IF NOT EXISTS `std_space_occupy_record` ( 
`id` bigint,
`park_id` bigint,
`project_id` bigint,
`building_id` bigint,
`space_id` bigint,
`bind_table_id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`occupy_type` int,
`start_time` datetime,
`end_time` datetime,
`is_final_occupy` bit(1),
`final_time` datetime,
`summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`status` int,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdSpacePrice ==========*/

CREATE TABLE IF NOT EXISTS `std_space_price` ( 
`id` bigint,
`space_price_record_id` bigint,
`space_id` bigint,
`bind_table_id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`before_change_rent_price` decimal(20,4),
`before_change_rent_price_type` int,
`rent_price` decimal(20,4),
`rent_price_type` int,
`min_rent_price` decimal(20,4),
`min_rent_price_type` int,
`before_change_sale_price` decimal(20,4),
`before_change_sale_price_type` int,
`sale_price` decimal(20,4),
`sale_price_type` int,
`min_sale_price` decimal(20,4),
`min_sale_price_type` int,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdSpacePriceRecord ==========*/

CREATE TABLE IF NOT EXISTS `std_space_price_record` ( 
`id` bigint,
`park_id` bigint,
`park_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`price_pattern` int,
`space_type` int,
`space_count` int,
`status` int,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`reject_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`apply_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`apply_user_id` bigint,
`apply_time` datetime,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`audit_user_id` bigint,
`audit_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`audit_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdSpaceReservation ==========*/

CREATE TABLE IF NOT EXISTS `std_space_reservation` ( 
`id` bigint,
`bind_table_id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`reservation_user_id` bigint,
`reservation_user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`space_type` int,
`park_id` bigint,
`park_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`area` decimal(20,4),
`start_time` datetime,
`end_time` datetime,
`reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_cancel` bit(1),
`cancel_time` datetime,
`cancel_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_occupy_room` bit(1),
`status` int,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
`space_fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`unit_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdSpaceTag ==========*/

CREATE TABLE IF NOT EXISTS `std_space_tag` ( 
`id` bigint,
`space_id` bigint,
`tag_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_class_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdSpaceUnit ==========*/

CREATE TABLE IF NOT EXISTS `std_space_unit` ( 
`id` bigint,
`space_id` bigint,
`unit_id` bigint,
`unit_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdVenue ==========*/

CREATE TABLE IF NOT EXISTS `std_venue` ( 
`id` bigint,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdPushBuffer ==========*/

CREATE TABLE IF NOT EXISTS `std_push_buffer` ( 
`id` bigint,
`msg_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`platform` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`topic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`routing_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`agent_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`target_user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`target_user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`msg_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`msg_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`raw_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`cover_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`msg_arguments` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`send_status` int,
`send_status_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`plat_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`plat_status_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`send_time` datetime,
`delivery_time` datetime,
`version` int,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`input_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_delete` bit(1),
`msg_hash` bigint,
`provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdUserMsgCount ==========*/

CREATE TABLE IF NOT EXISTS `std_user_msg_count` ( 
`id` bigint,
`topic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`agent_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`target_user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`count` int,
`data_day` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`version` int,
`input_time` datetime,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdUserRepeatMsg ==========*/

CREATE TABLE IF NOT EXISTS `std_user_repeat_msg` ( 
`id` bigint,
`topic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`agent_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`target_user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`data_day` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`md5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`input_time` datetime,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdDataTag ==========*/

CREATE TABLE IF NOT EXISTS `std_data_tag` ( 
`id` bigint comment 'id',
`tag_class_id` bigint comment '标签id',
`tag_class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '标签名称',
`tag_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '标签项',
`tag_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '标签code',
`tag_value` int comment '标签值',
`number` int comment '数量',
`sequence` int comment '排序',
`source` int comment '标签来源( 1.自动生成 2.手动添加)',
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '备注',
`is_builtin` bit(1) comment '是否内置',
`is_valid` bit(1) comment '是否有效',
`statistics_sql` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '统计sql语句',
`rate` decimal(20,4) comment '所占比例',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人id',
`input_time` datetime comment '录入时间',
`is_delete` bit(1) comment '是否删除',
`is_simulation` bit(1) comment '是否是模拟数据',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '数据标签项';

/*========= StdDataTagClass ==========*/

CREATE TABLE IF NOT EXISTS `std_data_tag_class` ( 
`id` bigint comment 'id',
`category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '标签类别',
`class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '标签名称',
`class_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '标签代码',
`tag_group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '标签分组',
`tag_group_id` bigint comment '标签分组id',
`tag_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '标签类型',
`tag_type_value` int comment '标签类型value:1-自定义 2-SQL计算',
`update_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '更新方式:1-定期 2-手动',
`update_mode_value` int comment '更新方式value',
`update_frequency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '更新频率',
`update_frequency_value` int comment '更新频率:1-天 2-周',
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '备注',
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '绑定表名',
`bind_table_column` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '绑定表字段',
`data_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '数据类型:1-数值 2-布尔值 3-日期 4-字符串',
`data_type_value` int comment '数据类型value',
`data_explain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '数据说明',
`statistics_sql` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '统计sql语句',
`statistics_column` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '统计字段',
`statistics_number` int comment '统计数量',
`is_builtin` bit(1) comment '是否内置',
`sequence` int comment '排序',
`last_update_time` datetime comment '最后更新时间',
`is_valid` bit(1) comment '是否有效',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人id',
`input_time` datetime comment '录入时间',
`is_delete` bit(1) comment '是否删除',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '数据标签';

/*========= StdDataTagGroup ==========*/

CREATE TABLE IF NOT EXISTS `std_data_tag_group` ( 
`id` bigint comment 'id',
`group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '分组名称',
`sequence` int comment '排序值',
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '备注',
`category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '标签分组类别',
`is_builtin` bit(1) comment '是否内置',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人id',
`input_time` datetime comment '录入时间',
`is_delete` bit(1) comment '是否删除',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '数据标签分组';

/*========= StdDataTagTarget ==========*/

CREATE TABLE IF NOT EXISTS `std_data_tag_target` ( 
`id` bigint comment 'id',
`tag_class_id` bigint comment '标签分类id',
`tag_id` bigint comment '标签项id',
`tag_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '标签项',
`bind_table_id` bigint comment '绑定业务id',
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '绑定表名',
`source` int comment '标签来源( 1.自动生成 2.手动添加)',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人id',
`input_time` datetime comment '录入时间',
`is_delete` bit(1) comment '是否删除',
`is_simulation` bit(1) comment '是否是模拟数据',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '数据标签与关联对象关系';

/*========= StdConsumer ==========*/

CREATE TABLE IF NOT EXISTS `std_consumer` ( 
`id` bigint comment 'id',
`account_id` bigint comment '账号id',
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '姓名(单位名称)',
`consumer_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '身份证号(社会信用代码)',
`contact_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '联系人手机',
`contact_tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '联系人电话',
`contact_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '联系人邮箱',
`contact_fox` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '联系人传真',
`contact_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '联系地址',
`tax_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '税务登记地址',
`tax_office_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '纳税税务所名称(标签)',
`tax_office_value` int comment '纳税税务所值(标签)',
`reg_amount` decimal(20,4) comment '注册资金',
`reg_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '注册地址',
`work_tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '单位电话',
`work_fax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '单位传真',
`staff_num` int comment '职工人数',
`set_date` datetime comment '成立时间',
`technical_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '技术领域名称(标签)',
`technical_value` int comment '技术领域值(标签)',
`unit_properties_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '单位性质名称(标签)',
`unit_properties_value` int comment '单位性质值',
`core_business` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '主营业务',
`legal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '法人',
`legal_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '法人身份号码',
`legal_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '法人手机',
`legal_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '法人邮箱',
`contact_personal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '联系人',
`contact_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '联系人身份证号码',
`bank_account_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '银行账户名称',
`bank_account_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '银行账号',
`bank_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '开户银行',
`last_revenue` decimal(20,4) comment '上年度营收(万元)',
`last_tax` decimal(20,4) comment '上年度税收(万元)',
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '备注',
`consumer_type` int comment '用户类型',
`is_complete` bit(1) comment '信息是否已完善',
`is_delete` bit(1) comment '是否删除',
`is_valid` bit(1) comment '是否启用',
`birth_day` datetime comment '出生日期',
`gender` int comment '性别',
`graduate_school` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '毕业学校',
`education_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '学历(标签)',
`education_value` int comment '学历值(标签)',
`work_specialty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '从事专业',
`study_specialty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '所学专业',
`technical_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '技术职称',
`know_subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '熟悉学科',
`society_part_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '社会兼职',
`is_academician` bit(1) comment '是否院士',
`is_judge_expert` bit(1) comment '是否担任评审专家',
`awards_num` int comment '奖项、荣誉数',
`project_num` int comment '主持重大项目数',
`opus_num` int comment '发布论著数',
`work_unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '工作单位',
`position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '职务',
`work_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '工作地址',
`work_post` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '工作邮编',
`second_unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '二级单位',
`home_post` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '家庭邮编',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人ID',
`input_time` datetime comment '录入时间',
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '更新人',
`updater_id` bigint comment '更新人id',
`update_time` datetime comment '更新时间',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '政策申报-用户管理';

/*========= StdConsumerAcademic ==========*/

CREATE TABLE IF NOT EXISTS `std_consumer_academic` ( 
`id` bigint comment 'id',
`consumer_id` bigint comment '政策申报用户id',
`qualification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '学历任职情况',
`research` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '主要研究方向',
`exchange` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '交流活动',
`appraise` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '评审情况',
`recruit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '收录文章',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '专家学术背景';

/*========= StdConsumerAchievement ==========*/

CREATE TABLE IF NOT EXISTS `std_consumer_achievement` ( 
`id` bigint comment 'id',
`consumer_id` bigint comment '政策申报用户id',
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '成果名称',
`domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '领域/类别',
`level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '等级',
`agency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '所属单位',
`finish_time` datetime comment '完成时间',
`finish_users` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '完成人顺序',
`evaluate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '评价水平',
`achieve_type` int comment '类型',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '研究成果';

/*========= StdConsumerOpus ==========*/

CREATE TABLE IF NOT EXISTS `std_consumer_opus` ( 
`id` bigint comment 'ID',
`consumer_id` bigint comment '政策申报用户id',
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '名称',
`domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '所属领域',
`juarnal_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '刊物名称/出版社',
`publish_time` datetime comment '出版日期',
`level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '刊物级别',
`finish_users` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '完成人顺序',
`opus_type` int comment '类别',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '著作/论文';

/*========= BiPolicy ==========*/

CREATE TABLE IF NOT EXISTS `bi_policy` ( 
`id` bigint,
`title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`publish_dept` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`publish_unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`policy_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`expiration_time` datetime,
`address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`accep_window` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`accep_starttime` datetime,
`accep_endtime` datetime,
`key_words` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sequence` int,
`views` int,
`source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`policy_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`policy_type_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`policy_rank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`policy_rank_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`publisher_id` bigint,
`is_top` bit(1),
`is_allow_declare` bit(1),
`declare_start_time` datetime,
`declare_end_time` datetime,
`publish_time` datetime,
`is_unscramble` bit(1),
`unscramble_time` datetime,
`has_implementation_detail` bit(1),
`implementation_detail_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`policy_consult` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`technology_consult` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`other_consult` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`update_time` datetime,
`is_simulation` bit(1),
`is_valid` bit(1),
`is_delete` bit(1),
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiPolicyCalculatorOperateLog ==========*/

CREATE TABLE IF NOT EXISTS `bi_policy_calculator_operate_log` ( 
`id` bigint,
`mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`customer_id` bigint,
`customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`operate_tag_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`match_detail_number` int,
`source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`source_value` int,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
`operate_tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`operate_tag_json` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiPolicyCalculatorOperateLogItem ==========*/

CREATE TABLE IF NOT EXISTS `bi_policy_calculator_operate_log_item` ( 
`id` bigint,
`operate_log_id` bigint,
`match_detail_id` bigint,
`match_degree` double precision,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiPolicyContent ==========*/

CREATE TABLE IF NOT EXISTS `bi_policy_content` ( 
`id` bigint,
`content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`support` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`conditions` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`process` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`documents` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`service` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`acquisition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`suit_condition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`prepare_condition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`policy_consult` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`technology_consult` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`other_consult` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiPolicyDeclare ==========*/

CREATE TABLE IF NOT EXISTS `bi_policy_declare` ( 
`id` bigint,
`declare_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`policy_id` bigint,
`policy_implementation_detail_id` bigint,
`policy_implementation_detail_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`real_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`customer_id` bigint,
`credit_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`status` int,
`park_id` bigint,
`park_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`auditer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`auditer_id` bigint,
`auditer_time` datetime,
`inputer_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiPolicyDeclareAttach ==========*/

CREATE TABLE IF NOT EXISTS `bi_policy_declare_attach` ( 
`id` bigint,
`policy_id` bigint,
`policy_implementation_detail_id` bigint,
`file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`attach_code` bigint,
`is_required` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiPolicyDeclareLog ==========*/

CREATE TABLE IF NOT EXISTS `bi_policy_declare_log` ( 
`id` bigint,
`declare_id` bigint,
`operation_value` int,
`operation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiPolicyImplementationDetail ==========*/

CREATE TABLE IF NOT EXISTS `bi_policy_implementation_detail` ( 
`id` bigint,
`policy_id` bigint,
`policy_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`implementation_detail_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`declare_start_time` datetime,
`declare_end_time` datetime,
`cash_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`cash_type_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`suit_object` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`suit_object_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`amount_subsidy` decimal(20,4),
`qualification_identification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`views` int,
`is_allow_declare` bit(1),
`is_publish` bit(1),
`is_valid` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiPolicyImplementationDetailCondition ==========*/

CREATE TABLE IF NOT EXISTS `bi_policy_implementation_detail_condition` ( 
`id` bigint,
`policy_id` bigint,
`implementation_detail_id` bigint,
`implementation_detail_group_id` bigint,
`implementation_detail_group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_id` bigint,
`tag_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`judge_type` int,
`data_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`data_type_value` int,
`tag_item_id` bigint,
`tag_item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_item_value` int,
`min_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`max_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_publish` bit(1),
`is_valid` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiPolicyImplementationDetailConditionGroup ==========*/

CREATE TABLE IF NOT EXISTS `bi_policy_implementation_detail_condition_group` ( 
`id` bigint,
`policy_id` bigint,
`implementation_detail_id` bigint,
`group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_publish` bit(1),
`is_valid` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiPolicyImplementationDetailContent ==========*/

CREATE TABLE IF NOT EXISTS `bi_policy_implementation_detail_content` ( 
`id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
`declare_object` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`declare_condition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`support_standard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiPolicyImplementationDetailTarget ==========*/

CREATE TABLE IF NOT EXISTS `bi_policy_implementation_detail_target` ( 
`id` bigint,
`policy_id` bigint,
`implementation_detail_id` bigint,
`bind_table_id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`match_degree` double precision,
`is_simulation` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
`match_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiPolicyMaterialization ==========*/

CREATE TABLE IF NOT EXISTS `bi_policy_materialization` ( 
`id` bigint,
`policy_id` bigint,
`policy_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`policy_implementation_detail_item_id` bigint,
`policy_implementation_detail_item_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`enterprise_id` bigint,
`enterprise_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`enterprise_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`suit_object` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`suit_object_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`materialization_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`materialization_type_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`declaration_time` datetime,
`materialization_time` datetime,
`materialization_money` decimal(20,4),
`materialization_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiPolicyRelation ==========*/

CREATE TABLE IF NOT EXISTS `bi_policy_relation` ( 
`id` bigint,
`policy_id` bigint,
`parent_policy_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiPolicySubscribe ==========*/

CREATE TABLE IF NOT EXISTS `bi_policy_subscribe` ( 
`id` bigint comment 'id',
`account_id` bigint comment '用户id',
`policy_subscribe_tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '政策原文订阅的标签名称',
`policy_subscribe_tag_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '政策原文订阅的标签id',
`implementation_subscribe_tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '实施细则订阅的标签名称',
`implementation_subscribe_tag_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '实施细则订阅的标签id',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人id',
`input_time` datetime comment '录入时间',
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '更新人',
`updater_id` bigint comment '更新人id',
`update_time` datetime comment '更新日期',
`is_delete` bit(1) comment '是否删除',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '政策订阅';

/*========= BiPolicySubscribeLog ==========*/

CREATE TABLE IF NOT EXISTS `bi_policy_subscribe_log` ( 
`id` bigint comment 'id',
`subscribe_id` bigint comment '订阅id',
`account_id` bigint comment '用户id',
`add_subscribe_tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '新增订阅的标签名称',
`add_subscribe_tag_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '新增订阅的标签id',
`remove_subscribe_tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '移除订阅的标签名称',
`remove_subscribe_tag_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '移除订阅的标签id',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人id',
`input_time` datetime comment '录入时间',
`is_delete` bit(1) comment '是否删除',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiPolicySupport ==========*/

CREATE TABLE IF NOT EXISTS `bi_policy_support` ( 
`id` bigint,
`policy_id` bigint,
`policy_support_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`priority` int,
`is_publish` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiPolicySupportCondition ==========*/

CREATE TABLE IF NOT EXISTS `bi_policy_support_condition` ( 
`id` bigint,
`policy_id` bigint,
`policy_support_id` bigint,
`policy_support_group_id` bigint,
`policy_support_group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_id` bigint,
`tag_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`judge_type` int,
`data_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`data_type_value` int,
`tag_item_id` bigint,
`tag_item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_item_value` int,
`min_value` bigint,
`max_value` bigint,
`is_publish` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiPolicySupportConditionGroup ==========*/

CREATE TABLE IF NOT EXISTS `bi_policy_support_condition_group` ( 
`id` bigint,
`policy_id` bigint,
`policy_support_id` bigint,
`group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_publish` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiPolicyTag ==========*/

CREATE TABLE IF NOT EXISTS `bi_policy_tag` ( 
`id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_id` bigint,
`tag_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_class_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_id` bigint,
`tag_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiPortraitGroup ==========*/

CREATE TABLE IF NOT EXISTS `bi_portrait_group` ( 
`id` bigint,
`group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sequence` int,
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`category` int,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiPortraitTag ==========*/

CREATE TABLE IF NOT EXISTS `bi_portrait_tag` ( 
`id` bigint,
`category` int,
`tag_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_group_id` bigint,
`tag_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_type_value` int,
`update_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`update_mode_value` int,
`update_frequency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`update_frequency_value` int,
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_column` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`data_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`data_type_value` int,
`data_explain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_class_id` bigint,
`tag_class_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sql` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`statistics_column` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`statistics_number` int,
`last_update_time` datetime,
`is_valid` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiPortraitTagItem ==========*/

CREATE TABLE IF NOT EXISTS `bi_portrait_tag_item` ( 
`id` bigint,
`tag_id` bigint,
`tag_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`number` int,
`rate` decimal(20,4),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
`is_simulation` bit(1),
`tag_item` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiPortraitTagItemTarget ==========*/

CREATE TABLE IF NOT EXISTS `bi_portrait_tag_item_target` ( 
`id` bigint,
`tag_id` bigint,
`tag_item_id` bigint,
`bind_table_id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
`is_simulation` bit(1),
`tag_item` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiSpecial ==========*/

CREATE TABLE IF NOT EXISTS `bi_special` ( 
`id` bigint comment 'id',
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '专项名称',
`code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '专项编号',
`short_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '专项简称',
`policy_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '政策名称',
`policy_id` bigint comment '政策id',
`policy_implementation_detail_id` bigint comment '政策实施细则id',
`policy_implementation_detail_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '政策实施细则title',
`start_date` datetime comment '开始时间',
`end_date` datetime comment '结束时间',
`acceptance_flow_id` bigint comment '验收流程id',
`contract_flow_id` bigint comment '合同流程id',
`inspection_flow_id` bigint comment '中期检查流程id',
`delay_flow_id` bigint comment '延期变更流程id',
`prepose_special_id` bigint comment '前置申请单',
`prepose_tip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '前置申请单提示',
`sequence` int comment '排序',
`frequency_type` int comment '频率类型',
`frequency` int comment '申报频率',
`letter_commit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '承诺书',
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '备注',
`unit_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '单位名称',
`unit_id` bigint comment '单位id',
`is_valid` bit(1) comment '是否发布',
`is_delete` bit(1) comment '是否删除',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人ID',
`input_time` datetime comment '录入时间',
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '更新人',
`updater_id` bigint comment '更新人id',
`update_time` datetime comment '更新时间',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '专项信息';

/*========= BiSpecialAppropriation ==========*/

CREATE TABLE IF NOT EXISTS `bi_special_appropriation` ( 
`id` bigint comment 'id',
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '专项资金名称',
`code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '批文号',
`special_id` bigint comment '专项id',
`special_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '专项名称',
`flow_id` bigint comment '流程id',
`is_delete` bit(1) comment '是否删除',
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '备注',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人ID',
`input_time` datetime comment '录入时间',
`auditer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '确认人',
`auditer_id` bigint comment '确认人id',
`auditer_time` datetime comment '确认时间',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '拨款单';

/*========= BiSpecialAppropriationItem ==========*/

CREATE TABLE IF NOT EXISTS `bi_special_appropriation_item` ( 
`id` bigint comment '0',
`appropriation_id` bigint comment '拨款单id',
`special_project_id` bigint comment '项目id',
`project_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '项目名称',
`project_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '项目编号',
`consumer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '用户名称',
`consumer_id` bigint comment '用户id',
`bank_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '开户银行',
`bank_account_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '银行账户名称',
`bank_account_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '银行账号',
`sponsor_money` decimal(20,4) comment '资助金额',
`funding_money` decimal(20,4) comment '已拨款金额',
`appropriation_money` decimal(20,4) comment '本次拨款金额',
`surplus_money` decimal(20,4) comment '剩余金额',
`is_delete` bit(1) comment '是否删除',
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '备注',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人ID',
`input_time` datetime comment '录入时间',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '拨款单详情';

/*========= BiSpecialFlow ==========*/

CREATE TABLE IF NOT EXISTS `bi_special_flow` ( 
`id` bigint comment 'id',
`special_id` bigint comment '专项id',
`flow_id` bigint comment '流程id',
`flow_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '流程名称',
`custom_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '自定义名称',
`sequence` int comment '排序',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人ID',
`input_time` datetime comment '录入时间',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '专项流程';

/*========= BiSpecialFlowNode ==========*/

CREATE TABLE IF NOT EXISTS `bi_special_flow_node` ( 
`id` bigint comment 'id',
`special_id` bigint comment '专项id',
`flow_id` bigint comment '流程id',
`node_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '节点名称',
`state_json` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '流程状态',
`state_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '流程状态id',
`count_state_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '统计状态id',
`sequence` int comment '排序',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人ID',
`input_time` datetime comment '录入时间',
`special_flow_id` bigint comment '专项流程id',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '专项流程节点';

/*========= BiSpecialFlowNodeAuthRange ==========*/

CREATE TABLE IF NOT EXISTS `bi_special_flow_node_auth_range` ( 
`id` bigint comment 'id',
`node_id` bigint comment '节点id',
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '绑定表名称',
`bind_table_id` bigint comment '绑定表id',
`bind_table_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '绑定表值',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人ID',
`input_time` datetime comment '录入时间',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '专项流程节点授权范围';

/*========= BiSpecialPermission ==========*/

CREATE TABLE IF NOT EXISTS `bi_special_permission` ( 
`id` bigint comment 'id',
`special_id` bigint comment '专项id',
`consumer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '用户名称',
`consumer_id` bigint comment '用户id',
`start_date` datetime comment '申报开始时间',
`end_date` datetime comment '申报结束时间',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人ID',
`input_time` datetime comment '录入时间',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '专项权限';

/*========= BiSpecialProject ==========*/

CREATE TABLE IF NOT EXISTS `bi_special_project` ( 
`id` bigint comment 'id',
`project_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '项目名称',
`project_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '项目编号',
`special_id` bigint comment '专项id',
`special_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '专项名称',
`flow_id` bigint comment '流程id',
`flow_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '流程名称',
`consumer_id` bigint comment '用户id',
`consumer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '用户名称',
`credit_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '统一信用代码',
`bank_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '开户银行',
`bank_account_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '银行账户名称',
`bank_account_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '银行账号',
`declare_money` decimal(20,4) comment '申报金额',
`sponsor_money` decimal(20,4) comment '资助金额',
`funding_money` decimal(20,4) comment '拨款金额',
`surplus_money` decimal(20,4) comment '剩余金额',
`public_start_time` datetime comment '公示开始时间',
`public_end_time` datetime comment '公示结束时间',
`contact_personal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '联系人',
`contact_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '联系人手机',
`contact_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '联系地址',
`is_establish` bit(1) comment '是否已立项',
`project_date` datetime comment '立项日期',
`flow_state_id` bigint comment '状态机id',
`acceptance_state_id` bigint comment '验收单id',
`contract_state_id` bigint comment '合同状态机id',
`contract_start_time` datetime comment '合同开始时间',
`contract_end_time` datetime comment '合同结束时间',
`inspection_state_id` bigint comment '中期检查状态机id',
`inspection_time` datetime comment '中期检查日期',
`inspection_remind_time` datetime comment '中期检查提醒日期',
`delay_state_id` bigint comment '延期变更状态机id',
`delay_time` datetime comment '延期变更时间',
`state` bigint comment '状态机状态值',
`state_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '状态机状态值',
`state_tag_value` int comment '状态标签值',
`state_tag_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '状态标签名称',
`reminder_time` datetime comment '验收提醒时间',
`acceptance_time` datetime comment '验收时间',
`project_start_time` datetime comment '项目开始日期',
`project_end_time` datetime comment '项目结束日期',
`is_delete` bit(1) comment '是否删除',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人ID',
`input_time` datetime comment '录入时间',
`unit_id` bigint comment '单位id',
`unit_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '单位名称',
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '更新人',
`updater_id` bigint comment '更新人id',
`update_time` datetime comment '更新时间',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '专项申报项目';

/*========= BiSpecialProjectAccountLog ==========*/

CREATE TABLE IF NOT EXISTS `bi_special_project_account_log` ( 
`id` bigint comment 'id',
`special_project_id` bigint comment '申报项目ID',
`project_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '项目名称',
`project_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '项目编号',
`project_date` datetime comment '申报时间',
`policy_id` bigint comment '政策id',
`policy_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '政策名称',
`policy_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '政策类型',
`policy_type_id` bigint comment '政策分类ID',
`old_account_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '原账户名称',
`old_bank_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '原开户银行',
`old_bank_account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '原银行账号',
`new_account_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '新账户名称',
`new_bank_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '新开户银行',
`new_bank_account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '新银行账号',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人id',
`input_time` datetime comment '录入时间',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '申报项目银行账户变更记录';

/*========= BiSpecialProjectBatch ==========*/

CREATE TABLE IF NOT EXISTS `bi_special_project_batch` ( 
`id` bigint comment 'id',
`batch_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '批次名称',
`batch_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '批次code',
`special_id` bigint comment '专项id',
`flow_id` bigint comment '流程id',
`is_appraise` bit(1) comment '是否评估',
`appraise_start_time` datetime comment '评估开始时间',
`appraise_end_time` datetime comment '评估结束时间',
`responsibler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '评估负责人',
`responsibler_id` bigint comment '评估负责人ID',
`review_type` int comment '评审方式',
`review_end_date` datetime comment '网上评审结束日期',
`status` int comment '批次阶段',
`review_summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '评估总结',
`leading_cadre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '评估负责人',
`leading_cadre_id` bigint comment '评估负责人ID',
`review_time` datetime comment '复核日期',
`review_confirm_time` datetime comment '复核确认日期',
`approval_confirm_time` datetime comment '立项确认日期',
`expert_assess_time` datetime comment '专家评审提交结果时间',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人ID',
`input_time` datetime comment '录入时间',
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '更新人',
`updater_id` bigint comment '更新人id',
`update_time` datetime comment '更新时间',
`is_delete` bit(1) comment '是否删除',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '专项审批批次';

/*========= BiSpecialProjectBatchGroup ==========*/

CREATE TABLE IF NOT EXISTS `bi_special_project_batch_group` ( 
`id` bigint comment 'id',
`batch_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '批次名称',
`batch_id` bigint comment '批次id',
`group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '分组名称',
`sequence` int comment '排序',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人ID',
`input_time` datetime comment '录入时间',
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '更新人',
`updater_id` bigint comment '更新人id',
`update_time` datetime comment '更新时间',
`is_delete` bit(1) comment '是否删除',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '专家评审分组';

/*========= BiSpecialProjectBatchGroupItem ==========*/

CREATE TABLE IF NOT EXISTS `bi_special_project_batch_group_item` ( 
`id` bigint comment 'id',
`batch_id` bigint comment '',
`group_id` bigint comment '分组ID',
`batch_item_id` bigint comment '批次明细ID',
`bind_table_id` bigint comment '绑定表ID',
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '绑定表名',
`bind_table_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '绑定表值',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人ID',
`input_time` datetime comment '录入时间',
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '更新人',
`updater_id` bigint comment '更新人id',
`update_time` datetime comment '更新时间',
`is_delete` bit(1) comment '是否删除',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '专家评审分组明细';

/*========= BiSpecialProjectBatchItem ==========*/

CREATE TABLE IF NOT EXISTS `bi_special_project_batch_item` ( 
`id` bigint comment 'id',
`batch_id` bigint comment '批次ID',
`project_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci not null comment '项目名称',
`project_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '项目编号',
`project_id` bigint comment '申报流程ID',
`is_review` bit(1) comment '是否已评审',
`project_approval_status` int comment '立项状态（0.默认状态 5.拟立项 -5.不予立项）',
`support_amount` decimal(20,4) comment '拟资助金额',
`support_amount_confirm` decimal(20,4) comment '资助金额',
`approval_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '发文编号',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人ID',
`input_time` datetime comment '录入时间',
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '更新人',
`updater_id` bigint comment '更新人id',
`update_time` datetime comment '更新时间',
`is_delete` bit(1) comment '是否删除',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '专项审批批次明细';

/*========= BiSpecialProjectBatchResult ==========*/

CREATE TABLE IF NOT EXISTS `bi_special_project_batch_result` ( 
`id` bigint comment 'id',
`batch_id` bigint comment '批次ID',
`batch_item_id` bigint comment '批次明细ID',
`group_id` bigint comment '分组ID',
`project_id` bigint comment '项目ID',
`project_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '项目名称',
`expert_id` bigint comment '专家ID',
`expert_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '专家名称',
`score` decimal(20,4) comment '评估分数',
`amount` decimal(20,4) comment '建议资助金额(万元)',
`opinion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '专家意见',
`is_valid` bit(1) comment '是否有效',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人ID',
`input_time` datetime comment '录入时间',
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '更新人',
`updater_id` bigint comment '更新人id',
`update_time` datetime comment '更新时间',
`is_delete` bit(1) comment '是否删除',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '专项审批批次评审结果';

/*========= BiSpecialProjectBatchResultItem ==========*/

CREATE TABLE IF NOT EXISTS `bi_special_project_batch_result_item` ( 
`id` bigint comment 'id',
`result_id` bigint comment '结果ID',
`target_id` bigint comment '评价指标ID',
`score` decimal(20,4) comment '得分',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '评审结果明细';

/*========= BiSpecialProjectBatchResultTarget ==========*/

CREATE TABLE IF NOT EXISTS `bi_special_project_batch_result_target` ( 
`id` bigint comment 'id',
`title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '标题',
`parent_id` bigint comment '父级ID',
`full_score` decimal(20,4) comment '满分',
`hign` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '高分区间',
`middle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '中等区间',
`low` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '低分区间',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '专家评审内容明细';

/*========= BiSpecialProjectLog ==========*/

CREATE TABLE IF NOT EXISTS `bi_special_project_log` ( 
`id` bigint comment 'id',
`special_project_id` bigint comment '项目id',
`state` bigint comment '类型',
`trigger_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '操作名称',
`trigger_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '操作代码',
`node_id` bigint comment '节点id',
`node_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '节点名称',
`is_state_log` bit(1) comment '是否状态机日期',
`reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '原因',
`description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '描述',
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '备注',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人ID',
`input_time` datetime comment '录入时间',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '专项申报项目日志';

/*========= BiActivity ==========*/

CREATE TABLE IF NOT EXISTS `bi_activity` ( 
`id` bigint,
`template_id` bigint,
`catalogue_id` bigint,
`catalogue_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`activity_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`article_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`cover_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`start_time` datetime,
`end_time` datetime,
`apply_start_time` datetime,
`apply_end_time` datetime,
`apply_min_number` int,
`apply_max_number` int,
`activity_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`activity_type_value` int,
`activity_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`activity_mode_value` int,
`activity_tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sequence` int,
`status` int,
`is_valid` bit(1),
`is_apply` bit(1),
`is_apply_audit` bit(1),
`is_apply_charge` bit(1),
`dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`parent_dept_id` bigint,
`dept_id` bigint,
`dept_dismiss_time` int,
`is_dismiss_dept` bit(1),
`dept_administrators` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`dept_administrators_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`apply_charge` double precision,
`is_apply_custom_fields` bit(1),
`is_apply_marketing` bit(1),
`is_show_attach` bit(1),
`is_support_attach_download` bit(1),
`is_top` bit(1),
`view_count` int,
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`update_time` datetime,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiActivityAccess ==========*/

CREATE TABLE IF NOT EXISTS `bi_activity_access` ( 
`id` bigint,
`activity_id` bigint,
`member_role_id` bigint,
`member_role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiActivityApply ==========*/

CREATE TABLE IF NOT EXISTS `bi_activity_apply` ( 
`id` bigint,
`activity_id` bigint,
`user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`apply_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`examine_status` int,
`examine_explain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`apply_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`apply_source_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiActivityApplyForm ==========*/

CREATE TABLE IF NOT EXISTS `bi_activity_apply_form` ( 
`id` bigint,
`activity_id` bigint,
`column_type` int,
`column_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`column_tip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`column_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`column_content_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`column_content_type_value` int,
`sequence` int,
`is_required` bit(1),
`selections` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`column_config` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_built_in` bit(1),
`parent_column_id` bigint,
`column_code_suffix` int,
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`update_time` datetime,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiActivityDetail ==========*/

CREATE TABLE IF NOT EXISTS `bi_activity_detail` ( 
`id` bigint,
`contact_person` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`contact_tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`programme` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`organizer_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`organizer_cooperate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`organizer_undertake` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`organizer_sponsor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`organizer_supporter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`organizer_media` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`min_cost` bigint,
`max_cost` bigint,
`participants` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`apply_way` int,
`marketing_remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
`apply_fields_json` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`activity_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiActivityQrcode ==========*/

CREATE TABLE IF NOT EXISTS `bi_activity_qrcode` ( 
`id` bigint,
`activity_id` bigint,
`template_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`organizer_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiActivitySignIn ==========*/

CREATE TABLE IF NOT EXISTS `bi_activity_sign_in` ( 
`id` bigint,
`activity_id` bigint,
`activity_apply_id` bigint,
`sign_in_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sign_in_place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sign_in_status` int,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiBusinessBill ==========*/

CREATE TABLE IF NOT EXISTS `bi_business_bill` ( 
`id` bigint comment '',
`bind_table_id` bigint comment '账单的归属表ID',
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '账单的归属表名',
`bind_table_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '账单的归属表表说明（例如合同编号、仪表编号）',
`customer_id` bigint comment '客户ID',
`customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '客户名称',
`bill_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '账单编号',
`charging_month` int comment '账单所属年月',
`start_date` datetime comment '开始时间',
`end_date` datetime comment '结束时间',
`actual_amount` decimal(20,4) comment '应收金额',
`balancing_amount` decimal(20,4) comment '实收金额',
`invoice_amount` decimal(20,4) comment '开票金额',
`pay_deadline_date` datetime comment '付款截止日期',
`payment_status` int comment '平账状态（ -1 ：欠费，0 ：未付清（未平账） ；999：已付清（已平账））',
`invoice_status` int comment '开票状态（0 ：未开票 ，10：未开完，999：已开完）',
`download_count` int comment '下载次数',
`room_full_names` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '账单所属物业位置',
`status` int comment '数据有效状态（无效：-999，有效：999）',
`source` int comment '账单来源(0. 手动录入 1.资管系统)',
`is_read` bit(1) comment '是否已读',
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '备注',
`operator_id` bigint comment '经办人ID',
`park_id` bigint comment '园区ID',
`unit_id` bigint comment '单位ID',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人ID',
`input_time` datetime comment '录入时间',
`is_delete` bit(1) comment '是否删除',
`bill_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '账单内容',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '企业账单';

/*========= BiBusinessBillItem ==========*/

CREATE TABLE IF NOT EXISTS `bi_business_bill_item` ( 
`id` bigint comment '',
`bill_id` bigint comment '账单id',
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '操作主表表名',
`bind_table_id` bigint comment '操作主表ID',
`subject_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '收费项目code',
`subject_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '收费项目名称',
`start_date` datetime comment '费用的计费开始日期',
`end_date` datetime comment '费用的计费结束日期',
`actual_amount` decimal(20,4) comment '应收金额',
`balancing_amount` decimal(20,4) comment '实收金额',
`payment_status` int comment '平账状态（ -1 ：欠费，0 ：未付清（未平账） ；999：已付清（已平账））',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人ID',
`input_time` datetime comment '录入时间',
`is_delete` bit(1) comment '是否删除',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '账单明细';

/*========= BiBusinessBillLog ==========*/

CREATE TABLE IF NOT EXISTS `bi_business_bill_log` ( 
`id` bigint comment '',
`bill_id` bigint comment '账单id',
`operation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '操作类型',
`operation_value` int comment '操作类型value',
`source` int comment '操作来源(1.后台 2.WEB 3.APP)',
`inputer_role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '操作人角色',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人ID',
`input_time` datetime comment '录入时间',
`is_delete` bit(1) comment '是否删除',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '企业账单日志';

/*========= BusinessbillPushVM ==========*/


/*========= BiCompanyHomePage ==========*/

CREATE TABLE IF NOT EXISTS `bi_company_home_page` ( 
`id` bigint,
`company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`company_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`company_industry_value` int,
`company_industry` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`company_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`finance_info_value` int,
`finance_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`company_size_value` int,
`company_size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`company_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`view_count` int,
`is_recommend` bit(1),
`recommend_sequence` int,
`sequence` int,
`park_id` bigint,
`park_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`change_type` int,
`post_status` int,
`audit_status` int,
`audit_remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`auditer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`auditer_id` bigint,
`audit_time` datetime,
`customer_id` bigint,
`customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`update_time` datetime,
`is_delete` bit(1),
`basic_introduce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`product_service` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`develop_course` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`parent_id` bigint,
`is_show` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiCompanyHomePageLog ==========*/

CREATE TABLE IF NOT EXISTS `bi_company_home_page_log` ( 
`id` bigint,
`company_id` bigint,
`operation_value` int,
`operation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiCompanyHomePageTag ==========*/

CREATE TABLE IF NOT EXISTS `bi_company_home_page_tag` ( 
`id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_id` bigint,
`tag_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_class_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_id` bigint,
`tag_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiCompanyRecruitment ==========*/

CREATE TABLE IF NOT EXISTS `bi_company_recruitment` ( 
`id` bigint,
`position_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`month_salary_value` int,
`month_salary_min` decimal(20,4),
`month_salary_max` decimal(20,4),
`recruitment_count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`work_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`work_experience_value` int,
`work_experience` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`degree_value` int,
`degree` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`work_nature_value` int,
`work_nature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`view_count` int,
`sequence` int,
`company_home_page_id` bigint,
`company_home_page_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`customer_id` bigint,
`customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`post_status` int,
`audit_status` int,
`audit_remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`auditer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`auditer_id` bigint,
`audit_time` datetime,
`inputer_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`update_time` datetime,
`is_delete` bit(1),
`work_requirements` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`work_responsibility` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`parent_id` bigint,
`is_show` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiCompanyRecruitmentLog ==========*/

CREATE TABLE IF NOT EXISTS `bi_company_recruitment_log` ( 
`id` bigint,
`recruitment_id` bigint,
`operation_value` int,
`operation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiCompanyRecruitmentRecommend ==========*/

CREATE TABLE IF NOT EXISTS `bi_company_recruitment_recommend` ( 
`id` bigint,
`company_home_page_id` bigint,
`company_home_page_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_recommend` bit(1),
`recommend_sequence` int,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiDingtalkTodo ==========*/

CREATE TABLE IF NOT EXISTS `bi_dingtalk_todo` ( 
`id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_id` bigint,
`bind_table_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`task_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`task_creator_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`task_user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`task_executorids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`status` int,
`inputer_id` bigint,
`input_time` datetime,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiOrder ==========*/

CREATE TABLE IF NOT EXISTS `bi_order` ( 
`id` bigint,
`customer_id` bigint,
`customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`member_id` bigint,
`member_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_id` bigint,
`subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`order_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`order_type` int,
`order_sub_type` int,
`contact_person` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`contact_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`contact_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`service_start_date` datetime,
`service_end_date` datetime,
`is_charge` bit(1),
`is_cash_pay` bit(1),
`is_commented` bit(1),
`quantity` decimal(20,4),
`price` decimal(20,4),
`price_unit` int,
`original_amount` decimal(20,4),
`total_amount` decimal(20,4),
`paid_amount` decimal(20,4),
`discount_amount` decimal(20,4),
`integral_amount` decimal(20,4),
`coupon_amount` decimal(20,4),
`order_status` int,
`views` int,
`park_id` bigint,
`is_delete` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiOrderItem ==========*/

CREATE TABLE IF NOT EXISTS `bi_order_item` ( 
`id` bigint,
`order_id` bigint,
`goods_id` bigint,
`sku_id` bigint,
`sku_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sku_type` int,
`quantity` decimal(20,4),
`price` decimal(20,4),
`price_unit` int,
`price_unit_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`total_amount` decimal(20,4),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiOrderLog ==========*/

CREATE TABLE IF NOT EXISTS `bi_order_log` ( 
`id` bigint,
`order_id` bigint,
`goods_id` bigint,
`sku_id` bigint,
`order_status` int,
`operate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiProblem ==========*/

CREATE TABLE IF NOT EXISTS `bi_problem` ( 
`id` bigint,
`question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`question_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`question_type_value` int,
`is_valid` bit(1),
`is_delete` bit(1),
`sequence` int,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiQuestion ==========*/

CREATE TABLE IF NOT EXISTS `bi_question` ( 
`id` bigint,
`questionnaire_id` bigint,
`logical_type` int,
`business_type` int,
`sequence` int,
`is_library` bit(1),
`is_builtin` bit(1),
`description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`input_time` datetime,
`update_time` datetime,
`is_delete` bit(1),
`title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiQuestionLogicJump ==========*/

CREATE TABLE IF NOT EXISTS `bi_question_logic_jump` ( 
`id` bigint,
`questionnaire_id` bigint,
`question_id` bigint,
`question_select_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`jump_question_id` bigint,
`inputer_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`input_time` datetime,
`update_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiQuestionLogicJumpSnapshot ==========*/

CREATE TABLE IF NOT EXISTS `bi_question_logic_jump_snapshot` ( 
`id` bigint,
`questionnaire_id` bigint,
`question_id` bigint,
`question_select_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`jump_question_id` bigint,
`inputer_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`input_time` datetime,
`update_time` datetime,
`is_delete` bit(1),
`questionnaire_snapshot_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiQuestionLogicShow ==========*/

CREATE TABLE IF NOT EXISTS `bi_question_logic_show` ( 
`id` bigint,
`questionnaire_id` bigint,
`question_id` bigint,
`associated_question_id` bigint,
`associated_question_option_id` bigint,
`logical_operate` int,
`logical_connector` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`input_time` datetime,
`update_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiQuestionLogicShowSnapshot ==========*/

CREATE TABLE IF NOT EXISTS `bi_question_logic_show_snapshot` ( 
`id` bigint,
`questionnaire_id` bigint,
`question_id` bigint,
`associated_question_id` bigint,
`associated_question_option_id` bigint,
`logical_operate` int,
`logical_connector` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`input_time` datetime,
`update_time` datetime,
`is_delete` bit(1),
`questionnaire_snapshot_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiQuestionnaire ==========*/

CREATE TABLE IF NOT EXISTS `bi_questionnaire` ( 
`id` bigint,
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`business_type` int,
`status` int,
`is_template` bit(1),
`park_id` bigint,
`park_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`start_time` datetime,
`end_time` datetime,
`target_count` int,
`is_anonymous` bit(1),
`publish_time` datetime,
`version` int,
`inputer_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`input_time` datetime,
`update_time` datetime,
`is_delete` bit(1),
`description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiQuestionnaireAnswer ==========*/

CREATE TABLE IF NOT EXISTS `bi_questionnaire_answer` ( 
`id` bigint,
`questionnaire_id` bigint,
`answer_user_id` bigint,
`answer_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`serial_number` int,
`address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`source_channel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`device` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`start_time` datetime,
`end_time` datetime,
`status` int,
`questionnaire_snapshot_id` bigint,
`inputer_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`input_time` datetime,
`update_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiQuestionnaireAnswerItem ==========*/

CREATE TABLE IF NOT EXISTS `bi_questionnaire_answer_item` ( 
`id` bigint,
`questionnaire_answer_id` bigint,
`questionnaire_id` bigint,
`question_id` bigint,
`question_option_id` bigint,
`answer_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`input_time` datetime,
`update_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiQuestionnaireFcSetting ==========*/

CREATE TABLE IF NOT EXISTS `bi_questionnaire_fc_setting` ( 
`id` bigint,
`questionnaire_id` bigint,
`switch_item` int,
`call_interval_type` int,
`max_call_count` int,
`inputer_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`input_time` datetime,
`update_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiQuestionnaireFcSettingSnapshot ==========*/

CREATE TABLE IF NOT EXISTS `bi_questionnaire_fc_setting_snapshot` ( 
`id` bigint,
`questionnaire_id` bigint,
`switch_item` int,
`call_interval_type` int,
`max_call_count` int,
`inputer_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`input_time` datetime,
`update_time` datetime,
`is_delete` bit(1),
`questionnaire_snapshot_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiQuestionnaireSnapshot ==========*/

CREATE TABLE IF NOT EXISTS `bi_questionnaire_snapshot` ( 
`id` bigint,
`questionnaire_id` bigint,
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`business_type` int,
`status` int,
`is_template` bit(1),
`park_id` bigint,
`park_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`start_time` datetime,
`end_time` datetime,
`target_count` int,
`is_anonymous` bit(1),
`publish_time` datetime,
`inputer_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`input_time` datetime,
`update_time` datetime,
`is_delete` bit(1),
`version` int,
`description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiQuestionnaireSwitch ==========*/

CREATE TABLE IF NOT EXISTS `bi_questionnaire_switch` ( 
`id` bigint,
`questionnaire_id` bigint,
`switch_item` int,
`is_on` bit(1),
`inputer_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`input_time` datetime,
`update_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiQuestionnaireSwitchSnapshot ==========*/

CREATE TABLE IF NOT EXISTS `bi_questionnaire_switch_snapshot` ( 
`id` bigint,
`questionnaire_id` bigint,
`switch_item` int,
`is_on` bit(1),
`inputer_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`input_time` datetime,
`update_time` datetime,
`is_delete` bit(1),
`questionnaire_snapshot_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiQuestionOption ==========*/

CREATE TABLE IF NOT EXISTS `bi_question_option` ( 
`id` bigint,
`questionnaire_id` bigint,
`question_id` bigint,
`title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sequence` int,
`description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`input_time` datetime,
`update_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiQuestionOptionSnapshot ==========*/

CREATE TABLE IF NOT EXISTS `bi_question_option_snapshot` ( 
`id` bigint,
`questionnaire_id` bigint,
`question_id` bigint,
`question_option_id` bigint,
`title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sequence` int,
`description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_required` bit(1),
`inputer_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`input_time` datetime,
`update_time` datetime,
`is_delete` bit(1),
`questionnaire_snapshot_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiQuestionRule ==========*/

CREATE TABLE IF NOT EXISTS `bi_question_rule` ( 
`id` bigint,
`questionnaire_id` bigint,
`question_id` bigint,
`question_option_id` bigint,
`rule_item` int,
`rule_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`rule_type` int,
`rule_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`input_time` datetime,
`update_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiQuestionRuleSnapshot ==========*/

CREATE TABLE IF NOT EXISTS `bi_question_rule_snapshot` ( 
`id` bigint,
`questionnaire_id` bigint,
`question_id` bigint,
`question_option_id` bigint,
`rule_item` int,
`rule_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`rule_type` int,
`rule_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`input_time` datetime,
`update_time` datetime,
`is_delete` bit(1),
`questionnaire_snapshot_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiQuestionSnapshot ==========*/

CREATE TABLE IF NOT EXISTS `bi_question_snapshot` ( 
`id` bigint,
`questionnaire_id` bigint,
`question_id` bigint,
`logical_type` int,
`business_type` int,
`sequence` int,
`is_library` bit(1),
`is_builtin` bit(1),
`description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_required` bit(1),
`inputer_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`input_time` datetime,
`update_time` datetime,
`is_delete` bit(1),
`questionnaire_snapshot_id` bigint,
`title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiResource ==========*/

CREATE TABLE IF NOT EXISTS `bi_resource` ( 
`id` bigint,
`resource_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`resource_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`resource_type` int,
`park_id` bigint,
`project_id` bigint,
`building_id` bigint,
`room_id` bigint,
`estimate_area` decimal(20,4),
`principal_users` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`principal_user_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`contact_person` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`contact_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`contact_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_charge` bit(1),
`price` decimal(20,4),
`price_unit` int,
`items` int,
`devices` int,
`sequence` int,
`is_valid` bit(1),
`is_highlight` bit(1),
`topics` int,
`follows` int,
`rate_times` int,
`rate_score` int,
`rate_avg_score` decimal(20,4),
`is_delete` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`no_respon_cancel_time` int,
`booking_day` int,
`integral_deduct_ratio` int,
`pay_countdown` int,
`is_sms_remind` bit(1),
`reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`notice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiResourceAccess ==========*/

CREATE TABLE IF NOT EXISTS `bi_resource_access` ( 
`id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_id` bigint,
`target_type` int,
`target_id` bigint,
`target_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiResourceAuditor ==========*/

CREATE TABLE IF NOT EXISTS `bi_resource_auditor` ( 
`id` bigint,
`resource_id` bigint,
`auditor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`auditor_id` bigint,
`auditor_contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_sms_remind` bit(1),
`is_dingding_remind` bit(1),
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiResourceBookPeriod ==========*/

CREATE TABLE IF NOT EXISTS `bi_resource_book_period` ( 
`id` bigint,
`resource_id` bigint,
`start_time` datetime,
`end_time` datetime,
`start_time_day` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`end_time_day` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_can_reserve` bit(1),
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiResourceConfig ==========*/

CREATE TABLE IF NOT EXISTS `bi_resource_config` ( 
`id` bigint,
`open_type` int,
`is_audit` bit(1),
`is_open_no_book_period` bit(1),
`is_open_blacklist` bit(1),
`max_single_booking` decimal(20,4),
`max_day_booking` decimal(20,4),
`max_day_booking_type` int,
`intended_scope` int,
`intended_scope_unit` int,
`min_booking_interval` decimal(20,4),
`is_integral_deduction` bit(1),
`is_coupon_deduction` bit(1),
`audit_notice_reach_canal` int,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiResourcePrice ==========*/

CREATE TABLE IF NOT EXISTS `bi_resource_price` ( 
`id` bigint,
`resource_id` bigint,
`time_interval` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`start_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`end_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`price` decimal(20,4),
`price_unit` int,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiResourceService ==========*/

CREATE TABLE IF NOT EXISTS `bi_resource_service` ( 
`id` bigint,
`resource_id` bigint,
`service_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`service_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`service_type` int,
`price` decimal(20,4),
`price_unit_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiResourceStatus ==========*/

CREATE TABLE IF NOT EXISTS `bi_resource_status` ( 
`id` bigint,
`park_id` bigint,
`project_id` bigint,
`building_id` bigint,
`room_id` bigint,
`item_id` bigint,
`resource_id` bigint,
`occupy_type` int,
`occupy_id` bigint,
`start_time` datetime,
`end_time` datetime,
`actual_start_time` datetime,
`actual_end_time` datetime,
`summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_valid` bit(1),
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiResourceType ==========*/

CREATE TABLE IF NOT EXISTS `bi_resource_type` ( 
`id` bigint,
`type_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`show_item` bit(1),
`sequence` int,
`service_start_date` decimal(20,4),
`service_end_date` decimal(20,4),
`price_unit` int,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiServiceAuditRecord ==========*/

CREATE TABLE IF NOT EXISTS `bi_service_audit_record` ( 
`id` bigint,
`bind_table_id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`audit_status` int,
`return_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiServiceExtension ==========*/

CREATE TABLE IF NOT EXISTS `bi_service_extension` ( 
`id` bigint,
`bind_table_id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
`detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiServiceInstitution ==========*/

CREATE TABLE IF NOT EXISTS `bi_service_institution` ( 
`id` bigint,
`institution_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`company_id` bigint,
`abbreviation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`park_id` bigint,
`park_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`setup_date` datetime,
`credit_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`taxpayer_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`service_case` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`client_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`handler_id` bigint,
`handler_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`status` int,
`is_confirmed` bit(1),
`sequence` int,
`is_top` bit(1),
`view_count` int,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`update_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiServiceInstitutionCategory ==========*/

CREATE TABLE IF NOT EXISTS `bi_service_institution_category` ( 
`id` bigint,
`institution_id` bigint,
`service_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`service_category_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiServiceInstitutionContactPersonChangeRecord ==========*/

CREATE TABLE IF NOT EXISTS `bi_service_institution_contact_person_change_record` ( 
`id` bigint,
`institution_id` bigint,
`origin_contact_person` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`origin_contact_person_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`current_contact_person` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`current_contact_person_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_available` bit(1),
`available_time` datetime,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiServiceProduct ==========*/

CREATE TABLE IF NOT EXISTS `bi_service_product` ( 
`id` bigint,
`institution_id` bigint,
`institution_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`park_id` bigint,
`park_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`service_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`service_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`service_category_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`charge_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`charge_mode_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`charge_min_price` int,
`charge_max_price` int,
`charge_unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`charge_unit_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`client_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`handler_id` bigint,
`handler_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`service_object` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`service_object_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sequence` int,
`summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`status` int,
`is_on_service` bit(1),
`view_count` int,
`on_service_time` datetime,
`out_service_time` datetime,
`inputer_customer_id` bigint,
`inputer_customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`update_time` datetime,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdCollection ==========*/

CREATE TABLE IF NOT EXISTS `std_collection` ( 
`id` bigint,
`bind_table_id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`collection_type` int,
`collection_type_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_top` bit(1),
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiCoupon ==========*/

CREATE TABLE IF NOT EXISTS `bi_coupon` ( 
`id` bigint,
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`park_id` bigint,
`park_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`denomination` decimal(20,4),
`min_useful_amount` decimal(20,4),
`use_type` int,
`scene` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`scene_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`total_number` int,
`expire_type` int,
`duration` int,
`start_time` datetime,
`end_time` datetime,
`is_show_in_voucher_center` bit(1),
`is_show_in_business_detail` bit(1),
`status` int,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`update_time` datetime,
`is_delete` bit(1),
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiCouponOperate ==========*/

CREATE TABLE IF NOT EXISTS `bi_coupon_operate` ( 
`id` bigint,
`bind_table_id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`owner_id` bigint,
`owner_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`operate_type` int,
`operate_number` int,
`explain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiCouponOperateItem ==========*/

CREATE TABLE IF NOT EXISTS `bi_coupon_operate_item` ( 
`id` bigint,
`operate_id` bigint,
`coupon_id` bigint,
`coupon_ticket_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiCouponTicket ==========*/

CREATE TABLE IF NOT EXISTS `bi_coupon_ticket` ( 
`id` bigint,
`coupon_id` bigint,
`coupon_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`coupon_batch` int,
`coupon_batch_number` int,
`owner_id` bigint,
`owner_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`obtain_source` int,
`start_time` datetime,
`end_time` datetime,
`use_time` datetime,
`status` int,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiCouponUseRange ==========*/

CREATE TABLE IF NOT EXISTS `bi_coupon_use_range` ( 
`id` bigint,
`coupon_id` bigint,
`item_id` bigint,
`item_category_id` bigint,
`shop_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= BiCouponVerification ==========*/

CREATE TABLE IF NOT EXISTS `bi_coupon_verification` ( 
`id` bigint,
`coupon_id` bigint,
`order_id` bigint,
`item_id` bigint,
`original_amount` decimal(20,4),
`deduction_amount` decimal(20,4),
`status` int,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdFollow ==========*/

CREATE TABLE IF NOT EXISTS `std_follow` ( 
`id` bigint,
`bind_table_id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`follow_type` int,
`is_notification` bit(1),
`intimacy` int,
`is_two_way_attention` bit(1),
`status` int,
`customer_id` bigint,
`customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_customer_id` bigint,
`inputer_customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= Report ==========*/

CREATE TABLE IF NOT EXISTS `report` ( 
`id` bigint,
`bind_table_id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`publisher_id` bigint,
`publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`status` int,
`type` int,
`park_id` bigint,
`park_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`source_value` int,
`is_user_delete` bit(1),
`audit_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`auditer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`auditer_id` bigint,
`audit_time` datetime,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
`content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= ReportTag ==========*/

CREATE TABLE IF NOT EXISTS `report_tag` ( 
`id` bigint,
`report_id` bigint,
`report_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`report_type_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdComment ==========*/

CREATE TABLE IF NOT EXISTS `std_comment` ( 
`id` bigint,
`bind_table_id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`reply_id` bigint,
`comment_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`publish_status` int,
`audit_status` int,
`is_public` bit(1),
`source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`source_value` int,
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_admin_reply` bit(1),
`is_user_delete` bit(1),
`park_id` bigint,
`park_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`customer_id` bigint,
`customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdPost ==========*/

CREATE TABLE IF NOT EXISTS `std_post` ( 
`id` bigint,
`topic_id` bigint,
`parent_id` bigint,
`layer` int,
`title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`publish_status` int,
`audit_status` int,
`is_public` bit(1),
`source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`source_value` int,
`park_id` bigint,
`park_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`customer_id` bigint,
`customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdPostContent ==========*/

CREATE TABLE IF NOT EXISTS `std_post_content` ( 
`id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
`post_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdRate ==========*/

CREATE TABLE IF NOT EXISTS `std_rate` ( 
`id` bigint,
`bind_table_id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`rate_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`score` int,
`publish_status` int,
`audit_status` int,
`is_public` bit(1),
`source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`source_value` int,
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_anonymous` bit(1),
`rate_type` int,
`park_id` bigint,
`park_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`customer_id` bigint,
`customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdRateRelation ==========*/

CREATE TABLE IF NOT EXISTS `std_rate_relation` ( 
`id` bigint,
`rate_id` bigint,
`bind_table_id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`park_id` bigint,
`park_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdRateTag ==========*/

CREATE TABLE IF NOT EXISTS `std_rate_tag` ( 
`id` bigint,
`rate_id` bigint,
`tag_id` bigint,
`tag_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_class_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdTopic ==========*/

CREATE TABLE IF NOT EXISTS `std_topic` ( 
`id` bigint,
`bind_table_id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`topic_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`topic_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`topic_category_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sequence` int,
`is_top` bit(1),
`publish_status` int,
`audit_status` int,
`is_public` bit(1),
`view_count` int,
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`update_time` datetime,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdTopicUser ==========*/

CREATE TABLE IF NOT EXISTS `std_topic_user` ( 
`id` bigint,
`topic_id` bigint,
`user_id` bigint,
`user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_topic_founder` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdAnalyticsDownload ==========*/

CREATE TABLE IF NOT EXISTS `std_analytics_download` ( 
`id` bigint,
`download_date` datetime,
`terminal_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`download_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdAnalyticsEvent ==========*/

CREATE TABLE IF NOT EXISTS `std_analytics_event` ( 
`id` bigint,
`parent_id` bigint,
`event_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`event_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`event_source` int,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdAnalyticsUserActive ==========*/

CREATE TABLE IF NOT EXISTS `std_analytics_user_active` ( 
`id` bigint,
`active_date` datetime,
`active_type` int,
`terminal_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`new_user` int,
`active_user` int,
`session_count` int,
`total_user` int,
`version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdAnalyticsUserDuration ==========*/

CREATE TABLE IF NOT EXISTS `std_analytics_user_duration` ( 
`id` bigint,
`duration_time` datetime,
`duration_type` int,
`duration_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`duration_value` int,
`terminal_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdAnalyticsUserRetain ==========*/

CREATE TABLE IF NOT EXISTS `std_analytics_user_retain` ( 
`id` bigint,
`repeat_date` datetime,
`terminal_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`d1_repeat_user` int,
`d2_repeat_user` int,
`d3_repeat_user` int,
`d4_repeat_user` int,
`d5_repeat_user` int,
`d6_repeat_user` int,
`d7_repeat_user` int,
`d14_repeat_user` int,
`d30_repeat_user` int,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdAnalyticsView ==========*/

CREATE TABLE IF NOT EXISTS `std_analytics_view` ( 
`id` bigint comment '',
`analysis_time` datetime comment '统计日期',
`view_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '统计名称',
`view_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '统计类型',
`value` int comment '统计值',
`user_count` int comment '用户数',
`terminal_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '渠道',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '统计原始数据';

/*========= StdOperationStatistics ==========*/

CREATE TABLE IF NOT EXISTS `std_operation_statistics` ( 
`id` bigint,
`bind_table_id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdAppAbmDistribute ==========*/

CREATE TABLE IF NOT EXISTS `std_app_abm_distribute` ( 
`id` bigint comment 'id',
`product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '产品名称',
`version_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '版本类型',
`exchange_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '兑换码',
`exchange_code_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '兑换码链接',
`exchange_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '兑换手机号码',
`exchange_time` datetime comment '兑换时间',
`status` int comment '状态',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人id',
`input_time` datetime comment '录入时间',
`is_delete` bit(1) comment '逻辑删除',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment 'abm分发';

/*========= StdAppAdvertisementPage ==========*/

CREATE TABLE IF NOT EXISTS `std_app_advertisement_page` ( 
`id` bigint comment 'id',
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '广告页名称',
`link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '广告页url',
`is_publish` bit(1) comment '是否发布',
`sequence` int comment '排序',
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '备注',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人id',
`input_time` datetime comment '录入时间',
`is_delete` bit(1) comment '是否删除',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '广告页设置';

/*========= StdAppArea ==========*/

CREATE TABLE IF NOT EXISTS `std_app_area` ( 
`id` bigint,
`area_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`area_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_id` bigint,
`parent_id` bigint,
`layer` int,
`path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`scene_type` int,
`owner_type` int,
`owner_id` bigint,
`reffer_id` bigint,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sequence` int,
`is_valid` bit(1),
`is_delete` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdAppAreaContent ==========*/

CREATE TABLE IF NOT EXISTS `std_app_area_content` ( 
`id` bigint,
`area_id` bigint,
`title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`catalog_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`cover_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_id` bigint,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sequence` int,
`is_valid` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdAppBanner ==========*/

CREATE TABLE IF NOT EXISTS `std_app_banner` ( 
`id` bigint comment 'id',
`banner_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment 'banner图片名称',
`terminal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment 'banner图片所属终端',
`terminal_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment 'banner图片所属终端value',
`has_link` bit(1) comment '是否有链接',
`link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '链接地址',
`sequence` int comment '排序',
`is_valid` bit(1) comment '是否有效',
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '备注',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人id',
`input_time` datetime comment '录入时间',
`is_delete` bit(1) comment '是否删除',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdAppConfig ==========*/

CREATE TABLE IF NOT EXISTS `std_app_config` ( 
`id` bigint,
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`href` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sequence` int,
`platform_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`update_time` datetime,
`is_delete` bit(1),
`section` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`section_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`section_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdAppModule ==========*/

CREATE TABLE IF NOT EXISTS `std_app_module` ( 
`id` bigint comment '',
`module_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '应用名称',
`module_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '应用code',
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '绑定表名',
`bind_table_id` bigint comment '绑定表ID',
`icon_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment 'icon',
`route_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '路由',
`mini_route_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '小程序路由',
`parent_id` bigint comment '上级分类id，默认为0',
`layer` int comment '当前所在层',
`path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '全路径',
`open_type` int comment '打开类型（0内嵌，1外部l浏览器，2内部浏览器）',
`scene_type` int comment '应用场景（1.PC端 2.移动端）',
`owner_type` int comment '所有者类型（1系统，2单位，3园区）',
`owner_id` bigint comment '所有者标识',
`reffer_id` bigint comment '引入的基准版ID',
`is_login` bit(1) comment '是否需要登录',
`is_authenticate` bit(1) comment '是否需要认证',
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '备注',
`sequence` int comment '排序',
`is_valid` bit(1) comment '是否有效',
`is_delete` bit(1) comment '是否删除',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '创建人',
`inputer_id` bigint comment '创建人的ID',
`input_time` datetime comment '请求时间',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '模块信息';

/*========= StdAppModuleAccess ==========*/

CREATE TABLE IF NOT EXISTS `std_app_module_access` ( 
`id` bigint comment 'id',
`bind_table_id` bigint comment '业务id',
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '业务表名',
`target_type` int comment '权限类别枚举',
`target_id` bigint comment '权限类别id',
`target_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '权限类别名称',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人id',
`input_time` datetime comment '录入时间',
`is_delete` bit(1) comment '是否删除',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdAppVersion ==========*/

CREATE TABLE IF NOT EXISTS `std_app_version` ( 
`id` bigint,
`file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`file_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`device_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`device_type_id` int,
`version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_must_update` bit(1),
`edition_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`edition_type_id` int,
`update_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`update_type_id` int,
`api_version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`api_version_id` bigint,
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_valid` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdAppWin ==========*/

CREATE TABLE IF NOT EXISTS `std_app_win` ( 
`id` bigint comment 'id',
`platform` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '平台',
`platform_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '平台枚举',
`app_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '应用名称',
`app_id` bigint comment '系统内应用id',
`app_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '应用类型(内部应用，外部应用)',
`app_type_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '应用类型值',
`inner_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '系统内url',
`outer_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '外部系统url',
`icon_background_picture_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '应用背景图片url',
`icon_class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '应用图标的class名',
`block_class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '应用块的class名',
`sequence` int comment '应用排序',
`is_valid` bit(1) comment '是否有效',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '创建人',
`inputer_id` bigint comment '创建人id',
`input_time` datetime comment '创建时间',
`is_delete` bit(1) comment '是否删除',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '未知对象';

/*========= StdArticle ==========*/

CREATE TABLE IF NOT EXISTS `std_article` ( 
`id` bigint,
`catalogue_id` bigint,
`catalogue_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`catalogue_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`article_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`cover_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`source_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`view_count` int,
`share_count` int,
`is_publish` bit(1),
`publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`publisher_id` bigint,
`publish_time` datetime,
`expiration_time` datetime,
`sequence` int,
`is_top` bit(1),
`status` int,
`flow_state_id` bigint,
`park_id` bigint,
`unit_id` bigint,
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`updater_time` datetime,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdArticleAccess ==========*/

CREATE TABLE IF NOT EXISTS `std_article_access` ( 
`id` bigint,
`article_id` bigint,
`target_type` int,
`target_id` bigint,
`target_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdArticleContent ==========*/

CREATE TABLE IF NOT EXISTS `std_article_content` ( 
`id` bigint,
`content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdArticleTag ==========*/

CREATE TABLE IF NOT EXISTS `std_article_tag` ( 
`id` bigint,
`article_id` bigint,
`tag_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_class_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tag_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdBrowser ==========*/

CREATE TABLE IF NOT EXISTS `std_browser` ( 
`id` bigint,
`bind_table_id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`user_id` bigint,
`user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`browser_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdCashInvoice ==========*/

CREATE TABLE IF NOT EXISTS `std_cash_invoice` ( 
`id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_id` bigint,
`bind_table_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`user_id` bigint,
`payment_id` bigint,
`payment_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`invoice_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`invoice_type` int,
`title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`register_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`register_tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tax_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bank_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bank_account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`total_amount` decimal(20,4),
`is_default` bit(1),
`invoice_status` int,
`cash_pay_id` bigint,
`sales_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sales_title_id` bigint,
`park_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`operator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`operator_id` bigint,
`operat_time` datetime,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdCashInvoiceTitle ==========*/

CREATE TABLE IF NOT EXISTS `std_cash_invoice_title` ( 
`id` bigint,
`company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`tax_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`cash_type` int,
`address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bank_account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdCashPay ==========*/

CREATE TABLE IF NOT EXISTS `std_cash_pay` ( 
`id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_id` bigint,
`user_id` bigint,
`source_trade_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`payment_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`payment_type` int,
`total_amount` decimal(20,4),
`paid_amount` decimal(20,4),
`commission_amount` decimal(20,4),
`subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`trade_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`trade_type` int,
`trade_channel` int,
`trade_status` int,
`order_type` int,
`order_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`order_amount` decimal(20,4),
`discount_amount` decimal(20,4),
`reconciliation_status` int,
`park_id` bigint,
`unit_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdCashPayDetail ==========*/

CREATE TABLE IF NOT EXISTS `std_cash_pay_detail` ( 
`id` bigint,
`cash_pay_id` bigint,
`seller_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`seller_bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`seller_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`buyer_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`buyer_bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`buyer_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sync_notify_time` datetime,
`sync_notify_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`async_notify_time` datetime,
`async_notify_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sync_notify_args` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sync_notify_msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`async_notify_args` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`async_notify_msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdCashPayFee ==========*/

CREATE TABLE IF NOT EXISTS `std_cash_pay_fee` ( 
`id` bigint,
`cash_pay_id` bigint,
`fee_type` int,
`fee_subject` int,
`fee_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`fee_amount` decimal(20,4),
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdCashPayItem ==========*/

CREATE TABLE IF NOT EXISTS `std_cash_pay_item` ( 
`id` bigint,
`cash_pay_id` bigint,
`content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`pcs` int,
`unit_price` decimal(20,4),
`unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdCashRefund ==========*/

CREATE TABLE IF NOT EXISTS `std_cash_refund` ( 
`id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_id` bigint,
`refund_type` int,
`refund_amount` decimal(20,4),
`pay_cash_id` bigint,
`refund_cash_id` bigint,
`contact_moblie` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`contact_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`refund_status` int,
`reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`audit_time` datetime,
`park_id` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdDataTracker ==========*/

CREATE TABLE IF NOT EXISTS `std_data_tracker` ( 
`id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_id` bigint,
`change_id` bigint,
`change_type` int,
`field_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`before_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`after_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdDataImportTask ==========*/

CREATE TABLE IF NOT EXISTS `std_data_import_task` ( 
`id` bigint comment 'id',
`import_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '导入类型',
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '绑定业务表名',
`file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '导入文件名',
`file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '文件存放地址',
`result_file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '导入结果文件地址',
`status` int comment '导入状态',
`success_num` int comment '导入成功数量',
`fail_num` int comment '导入失败数量',
`fail_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '失败原因',
`complete_time` datetime comment '导入完成时间',
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci comment '录入人',
`inputer_id` bigint comment '录入人id',
`input_time` datetime comment '录入时间',
`is_delete` bit(1) comment '逻辑删除',
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci comment '数据导入任务';

/*========= StdIntegral ==========*/

CREATE TABLE IF NOT EXISTS `std_integral` ( 
`id` bigint,
`set_id` bigint,
`dimension_id` bigint,
`dimension_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`dimension_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`current_point` decimal(20,4),
`rank_id` bigint,
`rank_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`update_time` datetime,
`is_delete` bit(1),
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdIntegralConfig ==========*/

CREATE TABLE IF NOT EXISTS `std_integral_config` ( 
`id` bigint,
`integral_worth` int,
`integral_obtain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`integral_use` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`integral_profile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdIntegralDimension ==========*/

CREATE TABLE IF NOT EXISTS `std_integral_dimension` ( 
`id` bigint,
`code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_show` bit(1),
`is_useable` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`update_time` datetime,
`is_delete` bit(1),
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdIntegralDimensionRank ==========*/

CREATE TABLE IF NOT EXISTS `std_integral_dimension_rank` ( 
`id` bigint,
`dimension_id` bigint,
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`type` int,
`min_point` bigint,
`max_point` bigint,
`star_count` int,
`avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`access_authority` int,
`administration_authority` int,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`update_time` datetime,
`is_delete` bit(1),
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdIntegralEvent ==========*/

CREATE TABLE IF NOT EXISTS `std_integral_event` ( 
`id` bigint,
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`rule_id` bigint,
`category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`category_id` bigint,
`event_type` int,
`times` int,
`app_route_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`app_icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`app_operation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`web_route_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`rule_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`event_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`frequency_unit` int,
`call_count_per_unit` int,
`start_time` datetime,
`end_time` datetime,
`is_valid` bit(1),
`bind_table_id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sequence` int,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`update_time` datetime,
`is_delete` bit(1),
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdIntegralEventDimension ==========*/

CREATE TABLE IF NOT EXISTS `std_integral_event_dimension` ( 
`id` bigint,
`event_id` bigint,
`dimension_id` bigint,
`dimension_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`reward_point` decimal(20,4),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdIntegralOperate ==========*/

CREATE TABLE IF NOT EXISTS `std_integral_operate` ( 
`id` bigint,
`set_id` bigint,
`rule_id` bigint,
`rule_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`rule_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`prefix` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`event_id` bigint,
`event_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`event_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`event_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`category_id` bigint,
`category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`park_id` bigint,
`park_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`times` int,
`account_id` bigint,
`member_id` bigint,
`member_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`member_real_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`member_telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`expiration_time` datetime,
`is_refund` bit(1),
`is_expiration` bit(1),
`event_type` int,
`company_id` bigint,
`company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_delete` bit(1),
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`update_time` datetime,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdIntegralOperateConsume ==========*/

CREATE TABLE IF NOT EXISTS `std_integral_operate_consume` ( 
`id` bigint,
`consume_id` bigint,
`consume_log_id` bigint,
`old_recharge_id` bigint,
`old_recharge_log_id` bigint,
`consume_point` decimal(20,4),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdIntegralOperateLog ==========*/

CREATE TABLE IF NOT EXISTS `std_integral_operate_log` ( 
`id` bigint,
`operate_id` bigint,
`dimension_id` bigint,
`dimension_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`reward_point` decimal(20,4),
`consume_point` decimal(20,4),
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdIntegralRule ==========*/

CREATE TABLE IF NOT EXISTS `std_integral_rule` ( 
`id` bigint,
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`prefix` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_refundable` bit(1),
`is_has_expiration_time` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`update_time` datetime,
`is_delete` bit(1),
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdIntegralRuleDimension ==========*/

CREATE TABLE IF NOT EXISTS `std_integral_rule_dimension` ( 
`id` bigint,
`rule_id` bigint,
`dimension_id` bigint,
`dimension_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`reward_point` decimal(20,4),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`update_time` datetime,
`is_delete` bit(1),
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdIntegralSet ==========*/

CREATE TABLE IF NOT EXISTS `std_integral_set` ( 
`id` bigint,
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`account_id` bigint,
`company_id` bigint,
`member_id` bigint,
`park_id` bigint,
`type` int,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`update_time` datetime,
`is_delete` bit(1),
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdInfoPushRecord ==========*/

CREATE TABLE IF NOT EXISTS `std_info_push_record` ( 
`id` bigint,
`push_subject_id` bigint,
`push_time` datetime,
`reach_canal` int,
`view_range` int,
`push_user_count` int,
`push_customer_count` int,
`title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`push_mode` int,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_id` bigint,
`bind_table_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`read_user_count` int,
`un_read_user_count` int,
`read_customer_count` int,
`un_read_customer_count` int,
`read_count` int,
`status` int,
`short_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`share_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`share_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`user_count` int,
`customer_count` int,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`attach_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`logo_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdInfoPushSubject ==========*/

CREATE TABLE IF NOT EXISTS `std_info_push_subject` ( 
`id` bigint,
`title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`push_mode` int,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_id` bigint,
`bind_table_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`read_user_count` int,
`un_read_user_count` int,
`read_customer_count` int,
`read_count` int,
`un_read_customer_count` int,
`status` int,
`short_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`share_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`share_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`share_logo_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`last_push_time` datetime,
`view_range` int,
`record_count` int,
`last_record_id` bigint,
`is_remind` bit(1),
`content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdInfoReachBlacklist ==========*/

CREATE TABLE IF NOT EXISTS `std_info_reach_blacklist` ( 
`id` bigint,
`mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdInfoReachChannel ==========*/

CREATE TABLE IF NOT EXISTS `std_info_reach_channel` ( 
`id` bigint,
`push_subject_id` bigint,
`channel_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`short_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`is_default` bit(1),
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdInfoReachObject ==========*/

CREATE TABLE IF NOT EXISTS `std_info_reach_object` ( 
`id` bigint,
`push_subject_id` bigint,
`record_id` bigint,
`user_id` bigint,
`user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`customer_id` bigint,
`customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`read_mode` int,
`read_canal` bigint,
`first_readtime` datetime,
`is_read` bit(1),
`user_type` bigint,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`reach_canal` int,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdInfoReachObjectLog ==========*/

CREATE TABLE IF NOT EXISTS `std_info_reach_object_log` ( 
`id` bigint,
`push_subject_id` bigint,
`object_id` bigint,
`user_id` bigint,
`user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`read_mode` int,
`read_canal` bigint,
`read_time` datetime,
`status` int,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`record_id` bigint,
`send_time` datetime,
`user_type` bigint,
`mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`short_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`reach_canal` int,
`error_message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdInfoReachReadedLog ==========*/

CREATE TABLE IF NOT EXISTS `std_info_reach_readed_log` ( 
`id` bigint,
`push_subject_id` bigint,
`record_id` bigint,
`request_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`reach_canal` int,
`channel_id` bigint,
`channel_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`customer_id` bigint,
`customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`object_log_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdInfoReachRegister ==========*/

CREATE TABLE IF NOT EXISTS `std_info_reach_register` ( 
`id` bigint,
`push_subject_id` bigint,
`record_id` bigint,
`user_id` bigint,
`user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`register_cannal` int,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdInfoReachUserRecord ==========*/

CREATE TABLE IF NOT EXISTS `std_info_reach_user_record` ( 
`id` bigint,
`push_subject_id` bigint,
`target_id` bigint,
`target_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`target_type` int,
`mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdSearcher ==========*/

CREATE TABLE IF NOT EXISTS `std_searcher` ( 
`id` bigint,
`searcher_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`searcher_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`primary_table` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`catalogue_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`catalogue_id` bigint,
`is_valid` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`template` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`config` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`ui` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdSearcherResult ==========*/

CREATE TABLE IF NOT EXISTS `std_searcher_result` ( 
`id` bigint,
`view_id` bigint,
`result_type` int,
`year` int,
`month` int,
`park_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`park_id` bigint,
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_valid` bit(1),
`is_delete` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`config` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdSearcherResultAccess ==========*/

CREATE TABLE IF NOT EXISTS `std_searcher_result_access` ( 
`id` bigint,
`result_id` bigint,
`is_read` bit(1),
`read_time` datetime,
`owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`owner_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdSearcherView ==========*/

CREATE TABLE IF NOT EXISTS `std_searcher_view` ( 
`id` bigint,
`view_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`catalogue_id` bigint,
`searcher_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`searcher_id` bigint,
`result_type` int,
`result_cron` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sequence` int,
`remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_valid` bit(1),
`is_delete` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`notification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`config` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdWorkorder ==========*/

CREATE TABLE IF NOT EXISTS `std_workorder` ( 
`id` bigint,
`customer_id` bigint,
`customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`member_id` bigint,
`member_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`bind_table_id` bigint,
`bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`principal_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`principal_user_id` bigint,
`order_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`catalogue_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`catalogue_id` bigint,
`catalogue_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`contact_person` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`contact_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`contact_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sources` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`sources_value` int,
`service_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`service_mode_value` int,
`status` int,
`is_charge` bit(1),
`is_commented` bit(1),
`is_auto_assignment` bit(1),
`is_history` bit(1),
`is_delete` bit(1),
`views` int,
`flow_state_id` bigint,
`flow_state_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`accept_time` datetime,
`distribute_time` datetime,
`complete_time` datetime,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`park_id` bigint,
`park_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`inputer_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`updater_id` bigint,
`update_time` datetime,
`description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`form_xml` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdWorkorderBill ==========*/

CREATE TABLE IF NOT EXISTS `std_workorder_bill` ( 
`id` bigint,
`order_id` bigint,
`fee_cost_id` bigint,
`fee_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`artificial_price` decimal(20,4),
`material_price` decimal(20,4),
`number` int,
`artificial_number` int,
`total_amount` decimal(20,4),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdWorkorderCost ==========*/

CREATE TABLE IF NOT EXISTS `std_workorder_cost` ( 
`id` bigint,
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`catalog_id` bigint,
`catalog_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`catalog_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`artificial_price` decimal(20,4),
`material_price` decimal(20,4),
`is_delete` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`park_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdWorkorderLog ==========*/

CREATE TABLE IF NOT EXISTS `std_workorder_log` ( 
`id` bigint,
`service_order_id` bigint,
`flag` int,
`description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdWorkorderReceiver ==========*/

CREATE TABLE IF NOT EXISTS `std_workorder_receiver` ( 
`id` bigint,
`catalog_id` bigint,
`catalog_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`catalog_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`receiver` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`receiver_tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`receiver_mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`receiver_id` bigint,
`dispatch_time` datetime,
`is_send_sms` bit(1),
`is_delete` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`rule_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= StdWorkorderRule ==========*/

CREATE TABLE IF NOT EXISTS `std_workorder_rule` ( 
`id` bigint,
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`rule_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`catalog_id` bigint,
`catalog_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`catalog_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`dispatch_time_set` int,
`status` bit(1),
`dispatch_type` int,
`remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`is_auto` bit(1),
`is_delete` bit(1),
`inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`inputer_id` bigint,
`input_time` datetime,
`unit_id` bigint,
`park_id` bigint,
`park_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`park_names` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysAttach ==========*/

CREATE TABLE IF NOT EXISTS `sys_attach` ( 
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

CREATE TABLE IF NOT EXISTS `sys_account` ( 
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

CREATE TABLE IF NOT EXISTS `sys_account_profile` ( 
`id` bigint,
`user_id` bigint,
`group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysApp ==========*/

CREATE TABLE IF NOT EXISTS `sys_app` ( 
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

CREATE TABLE IF NOT EXISTS `sys_app_access` ( 
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

CREATE TABLE IF NOT EXISTS `sys_app_catalog` ( 
`id` bigint,
`app_id` bigint,
`role_id` bigint,
`catalogs_id` bigint,
`catalogs_group` int,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysAppComponent ==========*/

CREATE TABLE IF NOT EXISTS `sys_app_component` ( 
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

CREATE TABLE IF NOT EXISTS `sys_app_page` ( 
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

CREATE TABLE IF NOT EXISTS `sys_app_page_container` ( 
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

CREATE TABLE IF NOT EXISTS `sys_app_resources` ( 
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

CREATE TABLE IF NOT EXISTS `sys_app_resources_group` ( 
`id` bigint,
`app_id` bigint,
`component_id` bigint,
`resources_id` bigint,
`resources_group` int,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysAppRoute ==========*/

CREATE TABLE IF NOT EXISTS `sys_app_route` ( 
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

CREATE TABLE IF NOT EXISTS `sys_data_catalog` ( 
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

CREATE TABLE IF NOT EXISTS `sys_data_resource` ( 
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

CREATE TABLE IF NOT EXISTS `sys_group` ( 
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

CREATE TABLE IF NOT EXISTS `sys_group_role` ( 
`id` bigint,
`group_id` bigint,
`role_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysGroupUser ==========*/

CREATE TABLE IF NOT EXISTS `sys_group_user` ( 
`id` bigint,
`group_id` bigint,
`user_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysProduct ==========*/

CREATE TABLE IF NOT EXISTS `sys_product` ( 
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

CREATE TABLE IF NOT EXISTS `sys_product_access` ( 
`id` bigint,
`product_id` bigint,
`app_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysRole ==========*/

CREATE TABLE IF NOT EXISTS `sys_role` ( 
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

CREATE TABLE IF NOT EXISTS `sys_role_user` ( 
`id` bigint,
`role_id` bigint,
`user_id` bigint,
`group_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= VwSysAppAccess ==========*/

CREATE TABLE IF NOT EXISTS `vw_sys_app_access` ( 
`id` bigint,
`app_id` bigint,
`component_id` bigint,
`role_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= VwSysAppCatalog ==========*/

CREATE TABLE IF NOT EXISTS `vw_sys_app_catalog` ( 
`id` bigint,
`app_id` bigint,
`role_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysAutoNumber ==========*/

CREATE TABLE IF NOT EXISTS `sys_auto_number` ( 
`id` bigint,
`table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`year_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
`number` int,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysLog ==========*/

CREATE TABLE IF NOT EXISTS `sys_log` ( 
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

CREATE TABLE IF NOT EXISTS `sys_log_data` ( 
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

CREATE TABLE IF NOT EXISTS `sys_metadata_api` ( 
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

CREATE TABLE IF NOT EXISTS `sys_metadata_api_service` ( 
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

CREATE TABLE IF NOT EXISTS `sys_metadata_column` ( 
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

CREATE TABLE IF NOT EXISTS `sys_metadata_source` ( 
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

CREATE TABLE IF NOT EXISTS `sys_metadata_storage` ( 
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

CREATE TABLE IF NOT EXISTS `sys_metadata_table` ( 
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

CREATE TABLE IF NOT EXISTS `sys_metadata_view` ( 
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

CREATE TABLE IF NOT EXISTS `sys_metadata_view_column` ( 
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

CREATE TABLE IF NOT EXISTS `sys_notification` ( 
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

CREATE TABLE IF NOT EXISTS `sys_notification_content` ( 
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

CREATE TABLE IF NOT EXISTS `sys_notification_delivery` ( 
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

CREATE TABLE IF NOT EXISTS `sys_notification_product` ( 
`id` bigint,
`product_id` bigint,
`scene_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysNotificationRecipient ==========*/

CREATE TABLE IF NOT EXISTS `sys_notification_recipient` ( 
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

CREATE TABLE IF NOT EXISTS `sys_notification_scene` ( 
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

CREATE TABLE IF NOT EXISTS `sys_notification_template` ( 
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

CREATE TABLE IF NOT EXISTS `sys_dept` ( 
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

CREATE TABLE IF NOT EXISTS `sys_dept_special_user` ( 
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

CREATE TABLE IF NOT EXISTS `sys_job` ( 
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

CREATE TABLE IF NOT EXISTS `sys_park` ( 
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

CREATE TABLE IF NOT EXISTS `sys_position` ( 
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

CREATE TABLE IF NOT EXISTS `sys_position_dept` ( 
`id` bigint,
`position_id` bigint,
`dept_id` bigint,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= SysPositionUser ==========*/

CREATE TABLE IF NOT EXISTS `sys_position_user` ( 
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

CREATE TABLE IF NOT EXISTS `sys_unit` ( 
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

CREATE TABLE IF NOT EXISTS `sys_unit_app` ( 
`id` bigint,
`unit_id` bigint,
`app_id` bigint,
`app_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
PRIMARY KEY (`id`) USING BTREE,
INDEX `id`(`id`) USING BTREE ) 
ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*========= VmSysParkCatalog ==========*/

CREATE TABLE IF NOT EXISTS `vm_sys_park_catalog` ( 
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

CREATE TABLE IF NOT EXISTS `vm_sys_unit_catalog` ( 
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

CREATE TABLE IF NOT EXISTS `sys_tag` ( 
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

CREATE TABLE IF NOT EXISTS `sys_tag_class` ( 
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