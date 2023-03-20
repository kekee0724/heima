/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80032 (8.0.32)
 Source Host           : localhost:3306
 Source Schema         : reco_upms

 Target Server Type    : MySQL
 Target Server Version : 80032 (8.0.32)
 File Encoding         : 65001

 Date: 20/03/2023 21:34:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bi_level
-- ----------------------------
DROP TABLE IF EXISTS `bi_level`;
CREATE TABLE `bi_level` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '闯关标题',
  `content` varchar(255) DEFAULT NULL COMMENT '闯关内容',
  `cover` varchar(255) DEFAULT NULL COMMENT '封面图片',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `retain_time` bigint DEFAULT NULL COMMENT '挑战时间',
  `is_current` tinyint NOT NULL DEFAULT '0' COMMENT '是否为当前关卡',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='等级';

-- ----------------------------
-- Records of bi_level
-- ----------------------------
BEGIN;
INSERT INTO `bi_level` (`id`, `title`, `content`, `cover`, `start_time`, `end_time`, `retain_time`, `is_current`) VALUES (1, '第一关  Java对对碰', NULL, 'assets/covers/1.jpg', '2021-05-25 00:00:00', '2022-08-12 23:59:59', 360, 1);
INSERT INTO `bi_level` (`id`, `title`, `content`, `cover`, `start_time`, `end_time`, `retain_time`, `is_current`) VALUES (2, '第二关  Spring天地', NULL, 'assets/covers/2.jpg', '2021-05-25 00:00:00', '2023-08-13 23:59:59', 360, 0);
INSERT INTO `bi_level` (`id`, `title`, `content`, `cover`, `start_time`, `end_time`, `retain_time`, `is_current`) VALUES (3, '第三关  Vue的前世今生', NULL, 'assets/covers/3.jpg', '2021-05-25 00:00:00', '2023-07-25 23:59:59', 360, 0);
INSERT INTO `bi_level` (`id`, `title`, `content`, `cover`, `start_time`, `end_time`, `retain_time`, `is_current`) VALUES (4, '第四关  云的时代', NULL, 'assets/covers/4.jpg', '2021-05-25 00:00:00', '2023-07-25 23:59:59', 360, 0);
COMMIT;

-- ----------------------------
-- Table structure for bi_log
-- ----------------------------
DROP TABLE IF EXISTS `bi_log`;
CREATE TABLE `bi_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '信息',
  `crete_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of bi_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bi_question
-- ----------------------------
DROP TABLE IF EXISTS `bi_question`;
CREATE TABLE `bi_question` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `type` int DEFAULT NULL COMMENT '题型 1 单选，2多选',
  `content` text COMMENT '题目',
  `answer` varchar(255) DEFAULT NULL COMMENT '答案',
  `options` text COMMENT '选项 JSON存储',
  `score` int unsigned DEFAULT '0' COMMENT '分值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=989 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='题目';

-- ----------------------------
-- Records of bi_question
-- ----------------------------
BEGIN;
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (1, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (2, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (3, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (4, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (5, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (6, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (7, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (8, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (9, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (10, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (11, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (12, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (13, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (14, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (15, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (16, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (17, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (18, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (19, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (20, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (21, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (22, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (23, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (24, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (25, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (26, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (27, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (28, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (29, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (30, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (31, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (32, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (33, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (34, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (35, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (36, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (37, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (38, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (39, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (40, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (41, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (42, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (43, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (44, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (45, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (46, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (47, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (48, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (49, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (50, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (51, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (52, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (53, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (54, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (55, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (56, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (57, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (58, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (59, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (60, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (61, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (62, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (63, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (64, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (65, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (66, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (67, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (68, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (69, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (70, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (71, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (72, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (73, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (74, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (75, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (76, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (77, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (78, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (79, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (80, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (81, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (82, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (83, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (84, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (85, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (86, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (87, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (88, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (89, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (90, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (91, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (92, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (93, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (94, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (95, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (96, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (97, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (98, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (99, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (100, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (101, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (102, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (103, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (104, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (105, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (106, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (107, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (108, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (109, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (110, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (111, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (112, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (113, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (114, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (115, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (116, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (117, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (118, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (119, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (120, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (121, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (122, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (123, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (124, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (125, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (126, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (127, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (128, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (129, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (130, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (131, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (132, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (133, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (134, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (135, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (136, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (137, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (138, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (139, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (140, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (141, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (142, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (143, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (144, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (145, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (146, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (147, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (148, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (149, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (150, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (151, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (152, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (153, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (154, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (155, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (156, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (157, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (158, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (159, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (160, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (161, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (162, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (163, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (164, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (165, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (166, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (167, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (168, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (169, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (170, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (171, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (172, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (173, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (174, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (175, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (176, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (177, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (178, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (179, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (180, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (181, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (182, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (183, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (184, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (185, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (186, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (187, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (188, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (189, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (190, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (191, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (192, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (193, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (194, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (195, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (196, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (197, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (198, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (199, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (200, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (201, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (202, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (203, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (204, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (205, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (206, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (207, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (208, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (209, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (210, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (211, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (212, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (213, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (214, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (215, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (216, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (217, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (218, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (219, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (220, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (221, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (222, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (223, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (224, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (225, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (226, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (227, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (228, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (229, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (230, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (231, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (232, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (233, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (234, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (235, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (236, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (237, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (238, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (239, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (240, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (241, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (242, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (243, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (244, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (245, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (246, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (247, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (248, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (249, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (250, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (251, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (252, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (253, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (254, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (255, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (256, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (257, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (258, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (259, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (260, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (261, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (262, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (263, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (264, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (265, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (266, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (267, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (268, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (269, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (270, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (271, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (272, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (273, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (274, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (275, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (276, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (277, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (278, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (279, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (280, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (281, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (282, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (283, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (284, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (285, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (286, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (287, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (288, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (289, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (290, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (291, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (292, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (293, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (294, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (295, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (296, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (297, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (298, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (299, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (300, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (301, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (302, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (303, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (304, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (305, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (306, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (307, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (308, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (309, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (310, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (311, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (312, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (313, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (314, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (315, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (316, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (317, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (318, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (319, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (320, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (321, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (322, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (323, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (324, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (325, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (326, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (327, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (328, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (329, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (330, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (331, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (332, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (333, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (334, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (335, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (336, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (337, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (338, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (339, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (340, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (341, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (342, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (343, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (344, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (345, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (346, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (347, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (348, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (349, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (350, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (351, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (352, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (353, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (354, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (355, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (356, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (357, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (358, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (359, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (360, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (361, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (362, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (363, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (364, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (365, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (366, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (367, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (368, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (369, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (370, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (371, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (372, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (373, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (374, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (375, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (376, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (377, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (378, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (379, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (380, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (381, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (382, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (383, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (384, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (385, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (386, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (387, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (388, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (389, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (390, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (391, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (392, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (393, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (394, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (395, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (396, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (397, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (398, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (399, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (400, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (401, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (402, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (403, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (404, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (405, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (406, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (407, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (408, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (409, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (410, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (411, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (412, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (413, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (414, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (415, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (416, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (417, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (418, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (419, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (420, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (421, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (422, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (423, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (424, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (425, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (426, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (427, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (428, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (429, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (430, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (431, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (432, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (433, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (434, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (435, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (436, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (437, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (438, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (439, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (440, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (441, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (442, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (443, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (444, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (445, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (446, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (447, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (448, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (449, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (450, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (451, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (452, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (453, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (454, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (455, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (456, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (457, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (458, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (459, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (460, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (461, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (462, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (463, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (464, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (465, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (466, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (467, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (468, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (469, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (470, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (471, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (472, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (473, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (474, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (475, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (476, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (477, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (478, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (479, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (480, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (481, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (482, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (483, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (484, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (485, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (486, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (487, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (488, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (489, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (490, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (491, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (492, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (493, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (494, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (495, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (496, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (497, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (498, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (499, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (500, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (501, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (502, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (503, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (504, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (505, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (506, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (507, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (508, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (509, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (510, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (511, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (512, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (513, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (514, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (515, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (516, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (517, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (518, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (519, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (520, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (521, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (522, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (523, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (524, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (525, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (526, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (527, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (528, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (529, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (530, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (531, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (532, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (533, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (534, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (535, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (536, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (537, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (538, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (539, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (540, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (541, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (542, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (543, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (544, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (545, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (546, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (547, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (548, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (549, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (550, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (551, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (552, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (553, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (554, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (555, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (556, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (557, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (558, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (559, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (560, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (561, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (562, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (563, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (564, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (565, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (566, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (567, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (568, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (569, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (570, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (571, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (572, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (573, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (574, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (575, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (576, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (577, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (578, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (579, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (580, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (581, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (582, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (583, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (584, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (585, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (586, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (587, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (588, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (589, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (590, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (591, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (592, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (593, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (594, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (595, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (596, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (597, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (598, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (599, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (600, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (601, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (602, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (603, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (604, 2, '构建中国特色社会主义社会管理体系，要做到（  ）', 'ABCD', '[{\"value\":\"加快形成党委领导、政府负责、社会协同、公众参与、法治保障的社会管理体制\",\"key\":\"A\"},{\"value\":\"加快形成政府主导、覆盖城乡、可持续的基本公共服务体系\",\"key\":\"B\"},{\"value\":\"加快形成政社分开、权责明确、依法自治的现代社会组织体制\",\"key\":\"C\"},{\"value\":\"加快形成源头治理、动态管理、应急处置相结合的社会管理机制\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (605, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (606, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (607, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (608, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (609, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (610, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (611, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (612, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (613, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (614, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (615, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (616, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (617, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (618, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (619, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (620, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (621, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (622, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (623, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (624, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (625, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (626, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (627, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (628, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (629, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (630, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (631, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (632, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (633, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (634, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (635, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (636, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (637, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (638, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (639, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (640, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (641, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (642, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (643, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (644, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (645, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (646, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (647, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (648, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (649, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (650, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (651, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (652, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (653, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (654, 2, '习近平强调，中国共产党是世界上最大的政党。大就要有大的样子。 中国共产党所做的一切（  ），就是我们要把自己的事情做好，这本身就是对构建人类命运共同体的贡献。', 'ABD', '[{\"value\":\"为中国人民谋幸福\",\"key\":\"A\"},{\"value\":\"为中华民族谋复兴\",\"key\":\"B\"},{\"value\":\"为经济谋发展\",\"key\":\"C\"},{\"value\":\"为人类谋和平与发展\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (655, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (656, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (657, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (658, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (659, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (660, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (661, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (662, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (663, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (664, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (665, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (666, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (667, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (668, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (669, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (670, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (671, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (672, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (673, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (674, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (675, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (676, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (677, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (678, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (679, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (680, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (681, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (682, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (683, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (684, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (685, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (686, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (687, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (688, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (689, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (690, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (691, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (692, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (693, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (694, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (695, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (696, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (697, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (698, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (699, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (700, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (701, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (702, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (703, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (704, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (705, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (706, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (707, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (708, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (709, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (710, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (711, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (712, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (713, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (714, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (715, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (716, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (717, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (718, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (719, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (720, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (721, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (722, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (723, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (724, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (725, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (726, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (727, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (728, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (729, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (730, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (731, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (732, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (733, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (734, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (735, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (736, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (737, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (738, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (739, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (740, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (741, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (742, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (743, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (744, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (745, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (746, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (747, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (748, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (749, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (750, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (751, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (752, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (753, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (754, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (755, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (756, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (757, 2, '构建中国特色社会主义社会管理体系，要做到（  ）', 'ABCD', '[{\"value\":\"加快形成党委领导、政府负责、社会协同、公众参与、法治保障的社会管理体制\",\"key\":\"A\"},{\"value\":\"加快形成政府主导、覆盖城乡、可持续的基本公共服务体系\",\"key\":\"B\"},{\"value\":\"加快形成政社分开、权责明确、依法自治的现代社会组织体制\",\"key\":\"C\"},{\"value\":\"加快形成源头治理、动态管理、应急处置相结合的社会管理机制\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (758, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (759, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (760, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (761, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (762, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (763, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (764, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (765, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (766, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (767, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (768, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (769, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (770, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (771, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (772, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (773, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (774, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (775, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (776, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (777, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (778, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (779, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (780, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (781, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (782, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (783, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (784, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (785, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (786, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (787, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (788, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (789, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (790, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (791, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (792, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (793, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (794, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (795, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (796, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (797, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (798, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (799, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (800, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (801, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (802, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (803, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (804, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (805, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (806, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (807, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (808, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (809, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (810, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (811, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (812, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (813, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (814, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (815, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (816, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (817, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (818, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (819, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (820, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (821, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (822, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (823, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (824, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (825, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (826, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (827, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (828, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (829, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (830, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (831, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (832, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (833, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (834, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (835, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (836, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (837, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (838, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (839, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (840, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (841, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (842, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (843, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (844, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (845, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (846, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (847, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (848, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (849, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (850, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (851, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (852, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (853, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (854, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (855, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (856, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (857, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (858, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (859, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (860, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (861, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (862, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (863, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (864, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (865, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (866, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (867, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (868, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (869, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (870, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (871, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (872, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (873, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (874, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (875, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (876, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (877, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (878, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (879, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (880, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (881, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (882, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (883, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (884, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (885, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (886, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (887, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (888, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (889, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (890, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (891, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (892, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (893, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (894, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (895, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (896, 2, '习近平强调，中国共产党是世界上最大的政党。大就要有大的样子。 中国共产党所做的一切（  ），就是我们要把自己的事情做好，这本身就是对构建人类命运共同体的贡献。', 'ABD', '[{\"value\":\"为中国人民谋幸福\",\"key\":\"A\"},{\"value\":\"为中华民族谋复兴\",\"key\":\"B\"},{\"value\":\"为经济谋发展\",\"key\":\"C\"},{\"value\":\"为人类谋和平与发展\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (897, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (898, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (899, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (900, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (901, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (902, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (903, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (904, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (905, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (906, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (907, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (908, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (909, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (910, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (911, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (912, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (913, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (914, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (915, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (916, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (917, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (918, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (919, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (920, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (921, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (922, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (923, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (924, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (925, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (926, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (927, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (928, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (929, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (930, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (931, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (932, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (933, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (934, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (935, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (936, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (937, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (938, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (939, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (940, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (941, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (942, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (943, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (944, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (945, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (946, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (947, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (948, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (949, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (950, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (951, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (952, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (953, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (954, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (955, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (956, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (957, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (958, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (959, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (960, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (961, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (962, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (963, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (964, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (965, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (966, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (967, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (968, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (969, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (970, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (971, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (972, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (973, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (974, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (975, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (976, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (977, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (978, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (979, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (980, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (981, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (982, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (983, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (984, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (985, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (986, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (987, 2, '下面有关servlet的层级结构和常用的类，说法正确的有?', 'ABCD', '[{\"value\":\"GenericServlet类：抽象类，定义一个通用的、独立于底层协议的Servlet。\",\"key\":\"A\"},{\"value\":\"大多数Servlet通过从GenericServlet或HttpServlet类进行扩展来实现\",\"key\":\"B\"},{\"value\":\"ServletConfig接口定义了在Servlet初始化的过程中由Servlet容器传递给Servlet得配置信息对象\",\"key\":\"C\"},{\"value\":\"HttpServletRequest接口扩展ServletRequest接口，为HTTP Servlet提供HTTP请求信息\",\"key\":\"D\"}]', 4);
INSERT INTO `bi_question` (`id`, `type`, `content`, `answer`, `options`, `score`) VALUES (988, 1, '类声明中，声明抽象类的关键字是\n ( )', 'B', '[{\"value\":\"public\",\"key\":\"A\"},{\"value\":\"abstract\",\"key\":\"B\"},{\"value\":\"final\",\"key\":\"C\"},{\"value\":\"class\",\"key\":\"D\"}]', 4);
COMMIT;

-- ----------------------------
-- Table structure for bi_question_level
-- ----------------------------
DROP TABLE IF EXISTS `bi_question_level`;
CREATE TABLE `bi_question_level` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question_id` bigint NOT NULL COMMENT '问题id',
  `level_id` bigint NOT NULL COMMENT '关卡id',
  PRIMARY KEY (`id`,`question_id`,`level_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=989 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='题目等级';

-- ----------------------------
-- Records of bi_question_level
-- ----------------------------
BEGIN;
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (1, 1, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (2, 2, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (3, 3, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (4, 4, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (5, 5, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (6, 6, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (7, 7, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (8, 8, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (9, 9, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (10, 10, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (11, 11, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (12, 12, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (13, 13, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (14, 14, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (15, 15, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (16, 16, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (17, 17, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (18, 18, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (19, 19, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (20, 20, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (21, 21, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (22, 22, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (23, 23, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (24, 24, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (25, 25, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (26, 26, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (27, 27, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (28, 28, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (29, 29, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (30, 30, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (31, 31, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (32, 32, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (33, 33, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (34, 34, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (35, 35, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (36, 36, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (37, 37, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (38, 38, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (39, 39, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (40, 40, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (41, 41, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (42, 42, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (43, 43, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (44, 44, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (45, 45, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (46, 46, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (47, 47, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (48, 48, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (49, 49, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (50, 50, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (51, 51, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (52, 52, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (53, 53, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (54, 54, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (55, 55, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (56, 56, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (57, 57, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (58, 58, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (59, 59, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (60, 60, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (61, 61, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (62, 62, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (63, 63, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (64, 64, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (65, 65, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (66, 66, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (67, 67, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (68, 68, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (69, 69, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (70, 70, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (71, 71, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (72, 72, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (73, 73, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (74, 74, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (75, 75, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (76, 76, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (77, 77, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (78, 78, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (79, 79, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (80, 80, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (81, 81, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (82, 82, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (83, 83, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (84, 84, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (85, 85, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (86, 86, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (87, 87, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (88, 88, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (89, 89, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (90, 90, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (91, 91, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (92, 92, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (93, 93, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (94, 94, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (95, 95, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (96, 96, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (97, 97, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (98, 98, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (99, 99, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (100, 100, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (101, 101, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (102, 102, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (103, 103, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (104, 104, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (105, 105, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (106, 106, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (107, 107, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (108, 108, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (109, 109, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (110, 110, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (111, 111, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (112, 112, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (113, 113, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (114, 114, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (115, 115, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (116, 116, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (117, 117, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (118, 118, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (119, 119, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (120, 120, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (121, 121, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (122, 122, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (123, 123, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (124, 124, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (125, 125, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (126, 126, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (127, 127, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (128, 128, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (129, 129, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (130, 130, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (131, 131, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (132, 132, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (133, 133, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (134, 134, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (135, 135, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (136, 136, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (137, 137, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (138, 138, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (139, 139, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (140, 140, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (141, 141, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (142, 142, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (143, 143, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (144, 144, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (145, 145, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (146, 146, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (147, 147, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (148, 148, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (149, 149, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (150, 150, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (151, 151, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (152, 152, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (153, 153, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (154, 154, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (155, 155, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (156, 156, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (157, 157, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (158, 158, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (159, 159, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (160, 160, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (161, 161, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (162, 162, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (163, 163, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (164, 164, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (165, 165, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (166, 166, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (167, 167, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (168, 168, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (169, 169, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (170, 170, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (171, 171, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (172, 172, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (173, 173, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (174, 174, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (175, 175, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (176, 176, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (177, 177, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (178, 178, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (179, 179, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (180, 180, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (181, 181, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (182, 182, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (183, 183, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (184, 184, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (185, 185, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (186, 186, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (187, 187, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (188, 188, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (189, 189, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (190, 190, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (191, 191, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (192, 192, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (193, 193, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (194, 194, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (195, 195, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (196, 196, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (197, 197, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (198, 198, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (199, 199, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (200, 200, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (201, 201, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (202, 202, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (203, 203, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (204, 204, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (205, 205, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (206, 206, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (207, 207, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (208, 208, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (209, 209, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (210, 210, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (211, 211, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (212, 212, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (213, 213, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (214, 214, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (215, 215, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (216, 216, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (217, 217, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (218, 218, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (219, 219, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (220, 220, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (221, 221, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (222, 222, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (223, 223, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (224, 224, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (225, 225, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (226, 226, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (227, 227, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (228, 228, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (229, 229, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (230, 230, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (231, 231, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (232, 232, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (233, 233, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (234, 234, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (235, 235, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (236, 236, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (237, 237, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (238, 238, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (239, 239, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (240, 240, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (241, 241, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (242, 242, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (243, 243, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (244, 244, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (245, 245, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (246, 246, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (247, 247, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (248, 248, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (249, 249, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (250, 250, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (251, 251, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (252, 252, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (253, 253, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (254, 254, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (255, 255, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (256, 256, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (257, 257, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (258, 258, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (259, 259, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (260, 260, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (261, 261, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (262, 262, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (263, 263, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (264, 264, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (265, 265, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (266, 266, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (267, 267, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (268, 268, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (269, 269, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (270, 270, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (271, 271, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (272, 272, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (273, 273, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (274, 274, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (275, 275, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (276, 276, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (277, 277, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (278, 278, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (279, 279, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (280, 280, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (281, 281, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (282, 282, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (283, 283, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (284, 284, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (285, 285, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (286, 286, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (287, 287, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (288, 288, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (289, 289, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (290, 290, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (291, 291, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (292, 292, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (293, 293, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (294, 294, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (295, 295, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (296, 296, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (297, 297, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (298, 298, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (299, 299, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (300, 300, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (301, 301, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (302, 302, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (303, 303, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (304, 304, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (305, 305, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (306, 306, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (307, 307, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (308, 308, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (309, 309, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (310, 310, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (311, 311, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (312, 312, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (313, 313, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (314, 314, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (315, 315, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (316, 316, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (317, 317, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (318, 318, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (319, 319, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (320, 320, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (321, 321, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (322, 322, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (323, 323, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (324, 324, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (325, 325, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (326, 326, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (327, 327, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (328, 328, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (329, 329, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (330, 330, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (331, 331, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (332, 332, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (333, 333, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (334, 334, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (335, 335, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (336, 336, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (337, 337, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (338, 338, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (339, 339, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (340, 340, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (341, 341, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (342, 342, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (343, 343, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (344, 344, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (345, 345, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (346, 346, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (347, 347, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (348, 348, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (349, 349, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (350, 350, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (351, 351, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (352, 352, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (353, 353, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (354, 354, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (355, 355, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (356, 356, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (357, 357, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (358, 358, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (359, 359, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (360, 360, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (361, 361, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (362, 362, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (363, 363, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (364, 364, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (365, 365, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (366, 366, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (367, 367, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (368, 368, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (369, 369, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (370, 370, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (371, 371, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (372, 372, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (373, 373, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (374, 374, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (375, 375, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (376, 376, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (377, 377, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (378, 378, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (379, 379, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (380, 380, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (381, 381, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (382, 382, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (383, 383, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (384, 384, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (385, 385, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (386, 386, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (387, 387, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (388, 388, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (389, 389, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (390, 390, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (391, 391, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (392, 392, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (393, 393, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (394, 394, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (395, 395, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (396, 396, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (397, 397, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (398, 398, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (399, 399, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (400, 400, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (401, 401, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (402, 402, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (403, 403, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (404, 404, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (405, 405, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (406, 406, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (407, 407, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (408, 408, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (409, 409, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (410, 410, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (411, 411, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (412, 412, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (413, 413, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (414, 414, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (415, 415, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (416, 416, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (417, 417, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (418, 418, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (419, 419, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (420, 420, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (421, 421, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (422, 422, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (423, 423, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (424, 424, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (425, 425, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (426, 426, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (427, 427, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (428, 428, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (429, 429, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (430, 430, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (431, 431, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (432, 432, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (433, 433, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (434, 434, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (435, 435, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (436, 436, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (437, 437, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (438, 438, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (439, 439, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (440, 440, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (441, 441, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (442, 442, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (443, 443, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (444, 444, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (445, 445, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (446, 446, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (447, 447, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (448, 448, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (449, 449, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (450, 450, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (451, 451, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (452, 452, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (453, 453, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (454, 454, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (455, 455, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (456, 456, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (457, 457, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (458, 458, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (459, 459, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (460, 460, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (461, 461, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (462, 462, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (463, 463, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (464, 464, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (465, 465, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (466, 466, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (467, 467, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (468, 468, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (469, 469, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (470, 470, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (471, 471, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (472, 472, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (473, 473, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (474, 474, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (475, 475, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (476, 476, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (477, 477, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (478, 478, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (479, 479, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (480, 480, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (481, 481, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (482, 482, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (483, 483, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (484, 484, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (485, 485, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (486, 486, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (487, 487, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (488, 488, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (489, 489, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (490, 490, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (491, 491, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (492, 492, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (493, 493, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (494, 494, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (495, 495, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (496, 496, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (497, 497, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (498, 498, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (499, 499, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (500, 500, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (501, 501, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (502, 502, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (503, 503, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (504, 504, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (505, 505, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (506, 506, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (507, 507, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (508, 508, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (509, 509, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (510, 510, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (511, 511, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (512, 512, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (513, 513, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (514, 514, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (515, 515, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (516, 516, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (517, 517, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (518, 518, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (519, 519, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (520, 520, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (521, 521, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (522, 522, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (523, 523, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (524, 524, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (525, 525, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (526, 526, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (527, 527, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (528, 528, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (529, 529, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (530, 530, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (531, 531, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (532, 532, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (533, 533, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (534, 534, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (535, 535, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (536, 536, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (537, 537, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (538, 538, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (539, 539, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (540, 540, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (541, 541, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (542, 542, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (543, 543, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (544, 544, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (545, 545, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (546, 546, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (547, 547, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (548, 548, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (549, 549, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (550, 550, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (551, 551, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (552, 552, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (553, 553, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (554, 554, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (555, 555, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (556, 556, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (557, 557, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (558, 558, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (559, 559, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (560, 560, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (561, 561, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (562, 562, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (563, 563, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (564, 564, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (565, 565, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (566, 566, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (567, 567, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (568, 568, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (569, 569, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (570, 570, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (571, 571, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (572, 572, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (573, 573, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (574, 574, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (575, 575, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (576, 576, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (577, 577, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (578, 578, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (579, 579, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (580, 580, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (581, 581, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (582, 582, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (583, 583, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (584, 584, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (585, 585, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (586, 586, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (587, 587, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (588, 588, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (589, 589, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (590, 590, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (591, 591, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (592, 592, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (593, 593, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (594, 594, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (595, 595, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (596, 596, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (597, 597, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (598, 598, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (599, 599, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (600, 600, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (601, 601, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (602, 602, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (603, 603, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (604, 604, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (605, 605, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (606, 606, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (607, 607, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (608, 608, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (609, 609, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (610, 610, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (611, 611, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (612, 612, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (613, 613, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (614, 614, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (615, 615, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (616, 616, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (617, 617, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (618, 618, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (619, 619, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (620, 620, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (621, 621, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (622, 622, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (623, 623, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (624, 624, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (625, 625, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (626, 626, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (627, 627, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (628, 628, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (629, 629, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (630, 630, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (631, 631, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (632, 632, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (633, 633, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (634, 634, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (635, 635, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (636, 636, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (637, 637, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (638, 638, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (639, 639, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (640, 640, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (641, 641, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (642, 642, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (643, 643, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (644, 644, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (645, 645, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (646, 646, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (647, 647, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (648, 648, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (649, 649, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (650, 650, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (651, 651, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (652, 652, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (653, 653, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (654, 654, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (655, 655, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (656, 656, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (657, 657, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (658, 658, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (659, 659, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (660, 660, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (661, 661, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (662, 662, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (663, 663, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (664, 664, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (665, 665, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (666, 666, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (667, 667, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (668, 668, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (669, 669, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (670, 670, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (671, 671, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (672, 672, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (673, 673, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (674, 674, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (675, 675, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (676, 676, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (677, 677, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (678, 678, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (679, 679, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (680, 680, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (681, 681, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (682, 682, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (683, 683, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (684, 684, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (685, 685, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (686, 686, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (687, 687, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (688, 688, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (689, 689, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (690, 690, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (691, 691, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (692, 692, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (693, 693, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (694, 694, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (695, 695, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (696, 696, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (697, 697, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (698, 698, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (699, 699, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (700, 700, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (701, 701, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (702, 702, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (703, 703, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (704, 704, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (705, 705, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (706, 706, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (707, 707, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (708, 708, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (709, 709, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (710, 710, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (711, 711, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (712, 712, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (713, 713, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (714, 714, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (715, 715, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (716, 716, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (717, 717, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (718, 718, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (719, 719, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (720, 720, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (721, 721, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (722, 722, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (723, 723, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (724, 724, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (725, 725, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (726, 726, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (727, 727, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (728, 728, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (729, 729, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (730, 730, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (731, 731, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (732, 732, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (733, 733, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (734, 734, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (735, 735, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (736, 736, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (737, 737, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (738, 738, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (739, 739, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (740, 740, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (741, 741, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (742, 742, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (743, 743, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (744, 744, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (745, 745, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (746, 746, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (747, 747, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (748, 748, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (749, 749, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (750, 750, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (751, 751, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (752, 752, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (753, 753, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (754, 754, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (755, 755, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (756, 756, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (757, 757, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (758, 758, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (759, 759, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (760, 760, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (761, 761, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (762, 762, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (763, 763, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (764, 764, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (765, 765, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (766, 766, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (767, 767, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (768, 768, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (769, 769, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (770, 770, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (771, 771, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (772, 772, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (773, 773, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (774, 774, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (775, 775, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (776, 776, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (777, 777, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (778, 778, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (779, 779, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (780, 780, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (781, 781, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (782, 782, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (783, 783, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (784, 784, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (785, 785, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (786, 786, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (787, 787, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (788, 788, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (789, 789, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (790, 790, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (791, 791, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (792, 792, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (793, 793, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (794, 794, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (795, 795, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (796, 796, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (797, 797, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (798, 798, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (799, 799, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (800, 800, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (801, 801, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (802, 802, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (803, 803, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (804, 804, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (805, 805, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (806, 806, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (807, 807, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (808, 808, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (809, 809, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (810, 810, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (811, 811, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (812, 812, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (813, 813, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (814, 814, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (815, 815, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (816, 816, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (817, 817, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (818, 818, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (819, 819, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (820, 820, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (821, 821, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (822, 822, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (823, 823, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (824, 824, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (825, 825, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (826, 826, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (827, 827, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (828, 828, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (829, 829, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (830, 830, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (831, 831, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (832, 832, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (833, 833, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (834, 834, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (835, 835, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (836, 836, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (837, 837, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (838, 838, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (839, 839, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (840, 840, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (841, 841, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (842, 842, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (843, 843, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (844, 844, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (845, 845, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (846, 846, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (847, 847, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (848, 848, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (849, 849, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (850, 850, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (851, 851, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (852, 852, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (853, 853, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (854, 854, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (855, 855, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (856, 856, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (857, 857, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (858, 858, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (859, 859, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (860, 860, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (861, 861, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (862, 862, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (863, 863, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (864, 864, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (865, 865, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (866, 866, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (867, 867, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (868, 868, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (869, 869, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (870, 870, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (871, 871, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (872, 872, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (873, 873, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (874, 874, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (875, 875, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (876, 876, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (877, 877, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (878, 878, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (879, 879, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (880, 880, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (881, 881, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (882, 882, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (883, 883, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (884, 884, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (885, 885, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (886, 886, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (887, 887, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (888, 888, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (889, 889, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (890, 890, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (891, 891, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (892, 892, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (893, 893, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (894, 894, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (895, 895, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (896, 896, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (897, 897, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (898, 898, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (899, 899, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (900, 900, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (901, 901, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (902, 902, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (903, 903, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (904, 904, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (905, 905, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (906, 906, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (907, 907, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (908, 908, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (909, 909, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (910, 910, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (911, 911, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (912, 912, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (913, 913, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (914, 914, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (915, 915, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (916, 916, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (917, 917, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (918, 918, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (919, 919, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (920, 920, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (921, 921, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (922, 922, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (923, 923, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (924, 924, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (925, 925, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (926, 926, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (927, 927, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (928, 928, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (929, 929, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (930, 930, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (931, 931, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (932, 932, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (933, 933, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (934, 934, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (935, 935, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (936, 936, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (937, 937, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (938, 938, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (939, 939, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (940, 940, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (941, 941, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (942, 942, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (943, 943, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (944, 944, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (945, 945, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (946, 946, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (947, 947, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (948, 948, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (949, 949, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (950, 950, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (951, 951, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (952, 952, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (953, 953, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (954, 954, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (955, 955, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (956, 956, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (957, 957, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (958, 958, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (959, 959, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (960, 960, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (961, 961, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (962, 962, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (963, 963, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (964, 964, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (965, 965, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (966, 966, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (967, 967, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (968, 968, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (969, 969, 3);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (970, 970, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (971, 971, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (972, 972, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (973, 973, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (974, 974, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (975, 975, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (976, 976, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (977, 977, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (978, 978, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (979, 979, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (980, 980, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (981, 981, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (982, 982, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (983, 983, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (984, 984, 1);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (985, 985, 2);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (986, 986, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (987, 987, 0);
INSERT INTO `bi_question_level` (`id`, `question_id`, `level_id`) VALUES (988, 988, 2);
COMMIT;

-- ----------------------------
-- Table structure for bi_record
-- ----------------------------
DROP TABLE IF EXISTS `bi_record`;
CREATE TABLE `bi_record` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` bigint DEFAULT NULL COMMENT '用户id',
  `level_id` bigint DEFAULT NULL COMMENT '关卡id',
  `pass` int DEFAULT '-1' COMMENT '淘汰状态， -1 未到关卡淘汰，0 通过，1 淘汰',
  `correct_rate` float(255,4) DEFAULT NULL COMMENT '正确率',
  `score` int DEFAULT '0' COMMENT '关卡得分',
  `details` text COMMENT '答题详情',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `level_time` bigint DEFAULT NULL COMMENT '闯关时间',
  `retain_time` bigint DEFAULT NULL COMMENT '剩余时间',
  `cur_question` int DEFAULT NULL COMMENT '当前问题索引',
  `status` int DEFAULT '-1' COMMENT '提交状态 -1未提交， 0 正常提交， 1缓存未提交， 2 缓存提交 3 时间到强制提交',
  `gmt_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_create` varchar(255) DEFAULT NULL COMMENT '创建人',
  `gmt_update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `gmt_update` varchar(255) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='答题记录';

-- ----------------------------
-- Records of bi_record
-- ----------------------------
BEGIN;
INSERT INTO `bi_record` (`id`, `user_id`, `level_id`, `pass`, `correct_rate`, `score`, `details`, `start_time`, `level_time`, `retain_time`, `cur_question`, `status`, `gmt_create_time`, `gmt_create`, `gmt_update_time`, `gmt_update`) VALUES (1, 1, 2, -1, NULL, 0, NULL, '2021-06-02 10:07:05', 360, 360, 1, -1, '2021-06-02 10:07:05', 'shinelymi', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for bi_system_param
-- ----------------------------
DROP TABLE IF EXISTS `bi_system_param`;
CREATE TABLE `bi_system_param` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `param_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'key值',
  `param_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'value值',
  `gmt_create` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '创建人',
  `gmt_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `gmt_update` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '修改人',
  `gmt_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='系统参数';

-- ----------------------------
-- Records of bi_system_param
-- ----------------------------
BEGIN;
INSERT INTO `bi_system_param` (`id`, `param_key`, `param_value`, `gmt_create`, `gmt_update_time`, `gmt_update`, `gmt_create_time`) VALUES (1, 'registerEnd', '2222-12-31', 'shinelymi', NULL, NULL, '2021-05-24 10:45:23');
COMMIT;

-- ----------------------------
-- Table structure for bi_team
-- ----------------------------
DROP TABLE IF EXISTS `bi_team`;
CREATE TABLE `bi_team` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `team_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '团队名',
  `team_org` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '团队机构',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='团队';

-- ----------------------------
-- Records of bi_team
-- ----------------------------
BEGIN;
INSERT INTO `bi_team` (`id`, `team_name`, `team_org`) VALUES (1, '第一队', '90001');
INSERT INTO `bi_team` (`id`, `team_name`, `team_org`) VALUES (2, '第二队', '90002');
COMMIT;

-- ----------------------------
-- Table structure for bi_team_rank
-- ----------------------------
DROP TABLE IF EXISTS `bi_team_rank`;
CREATE TABLE `bi_team_rank` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `level_id` bigint NOT NULL COMMENT '等级id',
  `team_id` bigint NOT NULL COMMENT '团队id',
  `participants` int NOT NULL COMMENT '已参与人数',
  `total_user` int DEFAULT NULL COMMENT '总人数',
  `total_score` bigint DEFAULT NULL COMMENT '总分数',
  `total_time` bigint DEFAULT NULL COMMENT '总时间',
  `average_score` float(255,2) DEFAULT '0.00' COMMENT '团队平均分等于团队所有答题总分除以团队人员总数',
  `party_rate` float(255,2) DEFAULT '0.00' COMMENT '参与率等于参与人数除以团队人数',
  `average_time` float(255,2) DEFAULT '0.00' COMMENT '平均答题时间等于团队总时间除以参与人数',
  `rank_num` int NOT NULL DEFAULT '0' COMMENT '排名数',
  `is_out` int DEFAULT '0' COMMENT '是否已被淘汰 0-正常， 1-被淘汰',
  PRIMARY KEY (`id`,`participants`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='团队排行榜';

-- ----------------------------
-- Records of bi_team_rank
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bi_user
-- ----------------------------
DROP TABLE IF EXISTS `bi_user`;
CREATE TABLE `bi_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '密码',
  `nick` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '昵称',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '邮箱',
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '手机',
  `team` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '团队',
  `money` decimal(10,2) DEFAULT NULL COMMENT '余额',
  `deleted` bit(1) DEFAULT b'0' COMMENT '删除',
  `version` int DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='用户';

-- ----------------------------
-- Records of bi_user
-- ----------------------------
BEGIN;
INSERT INTO `bi_user` (`id`, `username`, `password`, `nick`, `email`, `phone`, `team`, `money`, `deleted`, `version`) VALUES (1, 'shinelymi', '01256ac09b16475d26e941bb64d21c5d', 'meshine', '', '', '1', 16.00, b'0', 1);
INSERT INTO `bi_user` (`id`, `username`, `password`, `nick`, `email`, `phone`, `team`, `money`, `deleted`, `version`) VALUES (2, 'admin', 'f5252bb1fdacf77141ec16cbdc051815', '可可', '', '', '1', 20.00, b'0', 1);
INSERT INTO `bi_user` (`id`, `username`, `password`, `nick`, `email`, `phone`, `team`, `money`, `deleted`, `version`) VALUES (3, 'Jerry', 'jerry888', 'Jock999', '', '', '2', 60.00, b'0', 4);
INSERT INTO `bi_user` (`id`, `username`, `password`, `nick`, `email`, `phone`, `team`, `money`, `deleted`, `version`) VALUES (4, '', 'itheima', '黑马程序员', '', '4006184000', '12', NULL, b'1', 1);
INSERT INTO `bi_user` (`id`, `username`, `password`, `nick`, `email`, `phone`, `team`, `money`, `deleted`, `version`) VALUES (5, '', 'itheima', '黑马程序员', '', '4006184000', '12', NULL, b'1', 1);
INSERT INTO `bi_user` (`id`, `username`, `password`, `nick`, `email`, `phone`, `team`, `money`, `deleted`, `version`) VALUES (6, '', 'itheima', '黑马程序员', '', '4006184000', '12', NULL, b'0', 1);
COMMIT;

-- ----------------------------
-- Table structure for bi_user_level
-- ----------------------------
DROP TABLE IF EXISTS `bi_user_level`;
CREATE TABLE `bi_user_level` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` bigint DEFAULT NULL COMMENT '用户id',
  `level_id` bigint DEFAULT NULL COMMENT '关卡id',
  `questions` text COMMENT '问题id集合',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='用户等级';

-- ----------------------------
-- Records of bi_user_level
-- ----------------------------
BEGIN;
INSERT INTO `bi_user_level` (`id`, `user_id`, `level_id`, `questions`) VALUES (1, 1, 2, '[\"a3a8c0ad-52ed-4403-84a9-2b60421b7539\",\"59ddcb77-0e72-41d9-9d9e-11fed8c5f6f1\",\"2ea023a5-f867-45de-82ff-1681eec63a0b\",\"7fd7a047-adcd-43f1-a30a-f676c55fa765\",\"b9fb3f1e-1f97-4d7d-b779-e50366806ff8\",\"dab5be83-196a-448e-8645-f52418516319\",\"31487022-ffe2-4296-8b70-87ed2d665fcd\",\"34cb4415-441c-4d57-857e-0245d5990ad2\",\"9ed7893f-dadd-43cd-9013-f232743e1f56\",\"becb8e8c-3791-4acb-9dea-9dd37baca2b4\",\"4e033630-c76b-45d3-9c84-017c40ac9837\",\"ca5498fa-8dd8-4df9-b858-7056dc272e4b\",\"a98b0050-1c03-4c0e-84bd-f07141d3fab0\",\"0d1b8d49-bdf9-4d16-b3cb-ffbf05fcc09d\",\"236d4709-0b62-4a38-8d80-83d0ced9f086\",\"9f2952a8-6eb6-4aee-bf67-2b87c5ae3955\",\"ccf29275-5d8a-4e64-9379-324c392592af\",\"cc4a7196-0db2-4d77-a267-a7bbd7c12a98\",\"55cdafe8-ef12-4bc5-bd01-d72f6301a095\",\"0c9cfd15-1b5f-4e61-8ac5-d2cb15817d65\",\"a134c845-f227-441c-989f-cf44b4589829\",\"fa03ab6d-b0b6-4505-a34b-f677cda0b62b\",\"98835fab-9c39-47dd-9181-62f32f5ae5dc\",\"ac6ae5e0-1c76-45c5-bc5c-5e6c2fdb6402\",\"33f1db0e-4986-46b9-bab7-9bd0503e77c8\"]');
COMMIT;

-- ----------------------------
-- Table structure for bi_user_position
-- ----------------------------
DROP TABLE IF EXISTS `bi_user_position`;
CREATE TABLE `bi_user_position` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(255) DEFAULT NULL COMMENT '姓名',
  `lat` varchar(255) DEFAULT NULL COMMENT '纬度',
  `lng` varchar(255) DEFAULT NULL COMMENT '经度',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='用户定位';

-- ----------------------------
-- Records of bi_user_position
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bi_user_rank
-- ----------------------------
DROP TABLE IF EXISTS `bi_user_rank`;
CREATE TABLE `bi_user_rank` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `level_id` bigint NOT NULL COMMENT '等级id',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `score` int NOT NULL DEFAULT '0' COMMENT '分数',
  `used_time` bigint NOT NULL DEFAULT '0' COMMENT '用时',
  `team_id` bigint NOT NULL COMMENT '团队id',
  `rank_num` int NOT NULL DEFAULT '0' COMMENT '排名数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='个人排行榜';

-- ----------------------------
-- Records of bi_user_rank
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for std_dgwork_dept
-- ----------------------------
DROP TABLE IF EXISTS `std_dgwork_dept`;
CREATE TABLE `std_dgwork_dept` (
  `id` bigint NOT NULL,
  `dept_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `parent_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `create_dept_group` bit(1) DEFAULT NULL,
  `auto_add_user` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of std_dgwork_dept
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for std_dgwork_dept_user
-- ----------------------------
DROP TABLE IF EXISTS `std_dgwork_dept_user`;
CREATE TABLE `std_dgwork_dept_user` (
  `id` bigint NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `dept_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of std_dgwork_dept_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for std_dgwork_user
-- ----------------------------
DROP TABLE IF EXISTS `std_dgwork_user`;
CREATE TABLE `std_dgwork_user` (
  `id` bigint NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `work_place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `is_admin` bit(1) DEFAULT NULL,
  `is_boss` bit(1) DEFAULT NULL,
  `open_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `union_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `is_hide` bit(1) DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `job_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `account_id` bigint DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `input_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of std_dgwork_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for std_dingtalk_dept
-- ----------------------------
DROP TABLE IF EXISTS `std_dingtalk_dept`;
CREATE TABLE `std_dingtalk_dept` (
  `id` bigint NOT NULL,
  `dept_id` bigint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `parent_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `create_dept_group` bit(1) DEFAULT NULL,
  `auto_add_user` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of std_dingtalk_dept
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for std_dingtalk_dept_user
-- ----------------------------
DROP TABLE IF EXISTS `std_dingtalk_dept_user`;
CREATE TABLE `std_dingtalk_dept_user` (
  `id` bigint NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `dept_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of std_dingtalk_dept_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for std_dingtalk_user
-- ----------------------------
DROP TABLE IF EXISTS `std_dingtalk_user`;
CREATE TABLE `std_dingtalk_user` (
  `id` bigint NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `work_place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `is_admin` bit(1) DEFAULT NULL,
  `is_boss` bit(1) DEFAULT NULL,
  `open_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `union_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `is_hide` bit(1) DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `job_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `account_id` bigint DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `input_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of std_dingtalk_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for std_qq_user
-- ----------------------------
DROP TABLE IF EXISTS `std_qq_user`;
CREATE TABLE `std_qq_user` (
  `id` bigint NOT NULL,
  `open_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `account_id` bigint DEFAULT NULL,
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `figureurl_qq1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `figureurl_qq2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `input_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of std_qq_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for std_wechat_user
-- ----------------------------
DROP TABLE IF EXISTS `std_wechat_user`;
CREATE TABLE `std_wechat_user` (
  `id` bigint NOT NULL,
  `open_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `account_id` bigint DEFAULT NULL,
  `union_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sex` int DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `head_img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `input_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of std_wechat_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for std_wechatep_app
-- ----------------------------
DROP TABLE IF EXISTS `std_wechatep_app`;
CREATE TABLE `std_wechatep_app` (
  `id` bigint NOT NULL,
  `agent_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `agent_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `agent_id` int DEFAULT NULL,
  `secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `callback_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `callback_aes_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `menu_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `welcome_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `error_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of std_wechatep_app
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for std_wechatep_user
-- ----------------------------
DROP TABLE IF EXISTS `std_wechatep_user`;
CREATE TABLE `std_wechatep_user` (
  `id` bigint NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `english_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `account_id` bigint DEFAULT NULL,
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gender` int DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `isleader` bit(1) DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `enable` int DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `input_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of std_wechatep_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for std_wechatmp_template
-- ----------------------------
DROP TABLE IF EXISTS `std_wechatmp_template`;
CREATE TABLE `std_wechatmp_template` (
  `id` bigint NOT NULL,
  `template_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `primary_industry` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `deputy_industry` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `example` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of std_wechatmp_template
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for std_wechatmp_user
-- ----------------------------
DROP TABLE IF EXISTS `std_wechatmp_user`;
CREATE TABLE `std_wechatmp_user` (
  `id` bigint NOT NULL,
  `open_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `account_id` bigint DEFAULT NULL,
  `union_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sex` int DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `head_img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `input_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of std_wechatmp_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for std_weibo_user
-- ----------------------------
DROP TABLE IF EXISTS `std_weibo_user`;
CREATE TABLE `std_weibo_user` (
  `id` bigint NOT NULL,
  `uid` bigint DEFAULT NULL,
  `idstr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `account_id` bigint DEFAULT NULL,
  `screen_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `province` int DEFAULT NULL,
  `city` int DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `profile_image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `profile_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `weihao` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `followers_count` int DEFAULT NULL,
  `friends_count` int DEFAULT NULL,
  `statuses_count` int DEFAULT NULL,
  `favourites_count` int DEFAULT NULL,
  `created_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `following` bit(1) DEFAULT NULL,
  `allow_all_act_msg` bit(1) DEFAULT NULL,
  `geo_enabled` bit(1) DEFAULT NULL,
  `verified` bit(1) DEFAULT NULL,
  `verified_type` int DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `allow_all_comment` bit(1) DEFAULT NULL,
  `avatar_large` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `avatar_hd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `verified_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `follow_me` bit(1) DEFAULT NULL,
  `online_status` int DEFAULT NULL,
  `bi_followers_count` int DEFAULT NULL,
  `lang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `input_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of std_weibo_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_account
-- ----------------------------
DROP TABLE IF EXISTS `sys_account`;
CREATE TABLE `sys_account` (
  `id` bigint NOT NULL,
  `login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `real_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gender` int DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `homepage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `latitude` decimal(20,4) DEFAULT NULL,
  `longitude` decimal(20,4) DEFAULT NULL,
  `precision` decimal(20,4) DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `open_platform` int DEFAULT NULL,
  `open_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `is_locked` bit(1) DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `is_delete` bit(1) DEFAULT NULL,
  `is_primary` bit(1) DEFAULT NULL,
  `last_login_error` int DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `last_login_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `input_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `system_id` bigint DEFAULT NULL,
  `verification_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `verification_time` datetime DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `expiration_time` datetime DEFAULT NULL,
  `security_policy` int DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_account
-- ----------------------------
BEGIN;
INSERT INTO `sys_account` (`id`, `login_name`, `nick_name`, `real_name`, `gender`, `email`, `mobile`, `tel`, `homepage`, `avatar`, `birthday`, `latitude`, `longitude`, `precision`, `user_name`, `uid`, `open_platform`, `open_id`, `is_locked`, `is_valid`, `is_delete`, `is_primary`, `last_login_error`, `last_login_time`, `last_login_ip`, `inputer`, `inputer_id`, `input_time`, `input_ip`, `system_id`, `verification_code`, `verification_time`, `sequence`, `secret`, `expiration_time`, `security_policy`, `remarks`, `address`) VALUES (1, 'demo', '可可', '黄斌', 1, NULL, '17671736697', '', NULL, NULL, NULL, NULL, NULL, NULL, '17671736697', 'kekee', 0, NULL, b'0', b'1', b'0', b'1', 0, '2023-03-11 23:12:51', '0:0:0:0:0:0:0:1', NULL, NULL, '2022-04-01 11:33:00', NULL, NULL, '', NULL, NULL, 'F1A03F4AFC83CD918589D1D548E94D75CF871C25', NULL, NULL, NULL, NULL);
INSERT INTO `sys_account` (`id`, `login_name`, `nick_name`, `real_name`, `gender`, `email`, `mobile`, `tel`, `homepage`, `avatar`, `birthday`, `latitude`, `longitude`, `precision`, `user_name`, `uid`, `open_platform`, `open_id`, `is_locked`, `is_valid`, `is_delete`, `is_primary`, `last_login_error`, `last_login_time`, `last_login_ip`, `inputer`, `inputer_id`, `input_time`, `input_ip`, `system_id`, `verification_code`, `verification_time`, `sequence`, `secret`, `expiration_time`, `security_policy`, `remarks`, `address`) VALUES (2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-18 11:33:00', NULL, NULL, NULL, NULL, NULL, 'hjPhjNhj]hjLhjfhjGhiFhi>hi?hjL', NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_account_profile
-- ----------------------------
DROP TABLE IF EXISTS `sys_account_profile`;
CREATE TABLE `sys_account_profile` (
  `id` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
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
  `app_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `app_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `module_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `have_nav` bit(1) DEFAULT NULL,
  `nav_type` int DEFAULT NULL,
  `is_built_in` bit(1) DEFAULT NULL,
  `is_virtual` bit(1) DEFAULT NULL,
  `icon_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `badge_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `badge_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_app_access
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_app_catalog
-- ----------------------------
DROP TABLE IF EXISTS `sys_app_catalog`;
CREATE TABLE `sys_app_catalog` (
  `id` bigint NOT NULL,
  `app_id` bigint DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  `catalogs_id` bigint DEFAULT NULL,
  `catalogs_group` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_app_catalog
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
  `route_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `component_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `strategy_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `module_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `icon_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `is_show` bit(1) DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `route_params` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `expand_module_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `startup_module_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `component_type` int DEFAULT NULL,
  `badge_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `badge_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_app_component
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_app_page
-- ----------------------------
DROP TABLE IF EXISTS `sys_app_page`;
CREATE TABLE `sys_app_page` (
  `id` bigint NOT NULL,
  `app_id` bigint DEFAULT NULL,
  `view_id` bigint DEFAULT NULL,
  `page_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `page_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `page_type` int DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `config` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_app_page
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_app_page_container
-- ----------------------------
DROP TABLE IF EXISTS `sys_app_page_container`;
CREATE TABLE `sys_app_page_container` (
  `id` bigint NOT NULL,
  `app_id` bigint DEFAULT NULL,
  `view_id` bigint DEFAULT NULL,
  `page_id` bigint DEFAULT NULL,
  `container_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `container_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `container_type` int DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `config` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_app_page_container
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
  `resources_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `resources_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `resources_type` int DEFAULT NULL,
  `strategy_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  `layer` int DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `icon_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `route_params` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `route_exact` bit(1) DEFAULT NULL,
  `reffer_id` bigint DEFAULT NULL,
  `badge_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `badge_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_app_resources_group
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_app_route
-- ----------------------------
DROP TABLE IF EXISTS `sys_app_route`;
CREATE TABLE `sys_app_route` (
  `id` bigint NOT NULL,
  `app_id` bigint DEFAULT NULL,
  `component_id` bigint DEFAULT NULL,
  `bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `bind_table_id` bigint DEFAULT NULL,
  `route_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `container_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_app_route
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_attach
-- ----------------------------
DROP TABLE IF EXISTS `sys_attach`;
CREATE TABLE `sys_attach` (
  `id` bigint NOT NULL,
  `bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `bind_table_id` bigint DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `file_size` int DEFAULT NULL,
  `file_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `custom_type` int DEFAULT NULL,
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `file_unique_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `file_usage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `is_delete` bit(1) DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `preview_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `preview_url_expire` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_attach
-- ----------------------------
BEGIN;
INSERT INTO `sys_attach` (`id`, `bind_table_name`, `bind_table_id`, `file_name`, `file_size`, `file_type`, `custom_type`, `file_path`, `file_unique_id`, `file_usage`, `sequence`, `is_delete`, `inputer_id`, `inputer`, `input_time`, `preview_url`, `preview_url_expire`) VALUES (833366894105858048, 'test1', 2248570568704100, 'vue.png', 3451, 'image/png', 0, '~/userFile/picture/test1/20220418/6bff7162-200e-4bc0-9c2d-531e0e97f214.png', '7210d742-3a27-4909-ad4e-c120c60196c5', ',,', 0, b'0', 1, '黄斌(可可)', '2022-04-18 10:49:54', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_auto_number
-- ----------------------------
DROP TABLE IF EXISTS `sys_auto_number`;
CREATE TABLE `sys_auto_number` (
  `id` bigint NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `year_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `number` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_auto_number
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_data_catalog
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_catalog`;
CREATE TABLE `sys_data_catalog` (
  `id` bigint NOT NULL,
  `app_id` bigint DEFAULT NULL,
  `bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `bind_table_id` bigint DEFAULT NULL,
  `catalog_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `catalog_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  `layer` int DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `is_delete` bit(1) DEFAULT NULL,
  `inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_data_catalog
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_data_resource
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_resource`;
CREATE TABLE `sys_data_resource` (
  `id` bigint NOT NULL,
  `bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `bind_table_id` bigint DEFAULT NULL,
  `target_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `target_table_id` bigint DEFAULT NULL,
  `catalog_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_data_resource
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `id` bigint NOT NULL,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `short_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `dept_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  `layer` int DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `is_enabled` bit(1) DEFAULT NULL,
  `is_unit` bit(1) DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `is_delete` bit(1) DEFAULT NULL,
  `unit_id` bigint DEFAULT NULL,
  `unit_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_dept_special_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept_special_user`;
CREATE TABLE `sys_dept_special_user` (
  `id` bigint NOT NULL,
  `dept_id` bigint DEFAULT NULL,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `unit_id` bigint DEFAULT NULL,
  `unit_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_dept_special_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_group
-- ----------------------------
DROP TABLE IF EXISTS `sys_group`;
CREATE TABLE `sys_group` (
  `id` bigint NOT NULL,
  `group_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `bind_table_id` bigint DEFAULT NULL,
  `unit_id` bigint DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `is_delete` bit(1) DEFAULT NULL,
  `inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `is_built_in` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_group
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_group_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_group_role`;
CREATE TABLE `sys_group_role` (
  `id` bigint NOT NULL,
  `group_id` bigint DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_group_role
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_group_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_group_user`;
CREATE TABLE `sys_group_user` (
  `id` bigint NOT NULL,
  `group_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_group_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `id` bigint NOT NULL,
  `job_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `job_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rank` int DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `unit_id` bigint DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  `layer` int DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint NOT NULL,
  `entity_module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `entity_id` bigint DEFAULT NULL,
  `entity_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `operate_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `log_level` int DEFAULT NULL,
  `log_type` int DEFAULT NULL,
  `platform` int DEFAULT NULL,
  `snapshoot` bit(1) DEFAULT NULL,
  `operate_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_log_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_log_data`;
CREATE TABLE `sys_log_data` (
  `id` bigint NOT NULL,
  `entity_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `entity_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `operate_summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `operate_detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `attrs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_log_data
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_metadata_api
-- ----------------------------
DROP TABLE IF EXISTS `sys_metadata_api`;
CREATE TABLE `sys_metadata_api` (
  `id` bigint NOT NULL,
  `api_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `api_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `refresh_interval` int DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `layout_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_metadata_api
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_metadata_api_service
-- ----------------------------
DROP TABLE IF EXISTS `sys_metadata_api_service`;
CREATE TABLE `sys_metadata_api_service` (
  `id` bigint NOT NULL,
  `api_id` bigint DEFAULT NULL,
  `service_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `service_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `source_type` int DEFAULT NULL,
  `prefetch` bit(1) DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `layout_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `source_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_metadata_api_service
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_metadata_column
-- ----------------------------
DROP TABLE IF EXISTS `sys_metadata_column`;
CREATE TABLE `sys_metadata_column` (
  `id` bigint NOT NULL,
  `table_id` bigint DEFAULT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `column_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `column_id` int DEFAULT NULL,
  `data_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `data_length` int DEFAULT NULL,
  `data_precision` int DEFAULT NULL,
  `data_scale` int DEFAULT NULL,
  `is_nullable` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `field_type` int DEFAULT NULL,
  `field_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `field_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `storage_type` int DEFAULT NULL,
  `is_primary_key` bit(1) DEFAULT NULL,
  `is_foreign_key` bit(1) DEFAULT NULL,
  `foreign_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `display_type` int DEFAULT NULL,
  `display_width` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `display_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `default_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `filter_type` int DEFAULT NULL,
  `source_id` bigint DEFAULT NULL,
  `source_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `source_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `source_type` int DEFAULT NULL,
  `source_control` int DEFAULT NULL,
  `source_text_field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `source_value_field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `column_default` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `comments` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tooltip_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `validation_rule` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `filter_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `source_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_metadata_column
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_metadata_source
-- ----------------------------
DROP TABLE IF EXISTS `sys_metadata_source`;
CREATE TABLE `sys_metadata_source` (
  `id` bigint NOT NULL,
  `table_id` bigint DEFAULT NULL,
  `source_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `source_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `source_type` int DEFAULT NULL,
  `source_control` int DEFAULT NULL,
  `source_text_field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `source_value_field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `source_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_metadata_source
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_metadata_storage
-- ----------------------------
DROP TABLE IF EXISTS `sys_metadata_storage`;
CREATE TABLE `sys_metadata_storage` (
  `id` bigint NOT NULL,
  `bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `bind_table_id` bigint DEFAULT NULL,
  `ext_field1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ext_field2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ext_field3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ext_field4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ext_field5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ext_field6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ext_field7` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ext_field8` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ext_field9` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ext_field10` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_metadata_storage
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_metadata_table
-- ----------------------------
DROP TABLE IF EXISTS `sys_metadata_table`;
CREATE TABLE `sys_metadata_table` (
  `id` bigint NOT NULL,
  `app_id` bigint DEFAULT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `entity_type` int DEFAULT NULL,
  `entity_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `entity_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `entity_flag` int DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `is_built_in` bit(1) DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `comments` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_metadata_table
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_metadata_view
-- ----------------------------
DROP TABLE IF EXISTS `sys_metadata_view`;
CREATE TABLE `sys_metadata_view` (
  `id` bigint NOT NULL,
  `app_id` bigint DEFAULT NULL,
  `view_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `view_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `primary_table_id` bigint DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `is_built_in` bit(1) DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_metadata_view
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_metadata_view_column
-- ----------------------------
DROP TABLE IF EXISTS `sys_metadata_view_column`;
CREATE TABLE `sys_metadata_view_column` (
  `id` bigint NOT NULL,
  `view_id` bigint DEFAULT NULL,
  `table_id` bigint DEFAULT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `column_id` bigint DEFAULT NULL,
  `column_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `field_type` int DEFAULT NULL,
  `field_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `field_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `storage_type` int DEFAULT NULL,
  `is_primary_key` bit(1) DEFAULT NULL,
  `is_foreign_key` bit(1) DEFAULT NULL,
  `foreign_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `display_type` int DEFAULT NULL,
  `display_width` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `display_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `default_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `filter_type` int DEFAULT NULL,
  `source_id` bigint DEFAULT NULL,
  `source_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `source_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `source_type` int DEFAULT NULL,
  `source_control` int DEFAULT NULL,
  `source_text_field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `source_value_field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `tooltip_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `validation_rule` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `filter_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `source_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_metadata_view_column
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_notification
-- ----------------------------
DROP TABLE IF EXISTS `sys_notification`;
CREATE TABLE `sys_notification` (
  `id` bigint NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `external_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `scene_id` bigint DEFAULT NULL,
  `bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `bind_table_id` bigint DEFAULT NULL,
  `bind_table_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `reply_to` bigint DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `has_attach` bit(1) DEFAULT NULL,
  `request_receipt` bit(1) DEFAULT NULL,
  `sender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sender_id` bigint DEFAULT NULL,
  `send_time` datetime DEFAULT NULL,
  `inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `notification_type` int DEFAULT NULL,
  `template_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_notification
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_notification_content
-- ----------------------------
DROP TABLE IF EXISTS `sys_notification_content`;
CREATE TABLE `sys_notification_content` (
  `id` bigint NOT NULL,
  `is_body_html` bit(1) DEFAULT NULL,
  `raw_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `cover_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `body` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `bind_args` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_notification_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_notification_delivery
-- ----------------------------
DROP TABLE IF EXISTS `sys_notification_delivery`;
CREATE TABLE `sys_notification_delivery` (
  `id` bigint NOT NULL,
  `message_id` bigint DEFAULT NULL,
  `mailbox` int DEFAULT NULL,
  `is_star` bit(1) DEFAULT NULL,
  `is_read` bit(1) DEFAULT NULL,
  `is_replied` bit(1) DEFAULT NULL,
  `read_time` datetime DEFAULT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `owner_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_notification_delivery
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_notification_product
-- ----------------------------
DROP TABLE IF EXISTS `sys_notification_product`;
CREATE TABLE `sys_notification_product` (
  `id` bigint NOT NULL,
  `product_id` bigint DEFAULT NULL,
  `scene_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_notification_product
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_notification_recipient
-- ----------------------------
DROP TABLE IF EXISTS `sys_notification_recipient`;
CREATE TABLE `sys_notification_recipient` (
  `id` bigint NOT NULL,
  `message_id` bigint DEFAULT NULL,
  `recipient_type` int DEFAULT NULL,
  `recipient_id` bigint DEFAULT NULL,
  `recipient_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `send_type` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_notification_recipient
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_notification_scene
-- ----------------------------
DROP TABLE IF EXISTS `sys_notification_scene`;
CREATE TABLE `sys_notification_scene` (
  `id` bigint NOT NULL,
  `scene_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `scene_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `app_id` bigint DEFAULT NULL,
  `icon_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_notification_scene
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_notification_template
-- ----------------------------
DROP TABLE IF EXISTS `sys_notification_template`;
CREATE TABLE `sys_notification_template` (
  `id` bigint NOT NULL,
  `template_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `template_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `scene_id` bigint DEFAULT NULL,
  `bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `notification_type` int DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `external_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `is_body_html` bit(1) DEFAULT NULL,
  `raw_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `cover_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `body` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `notification_args` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_notification_template
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_park
-- ----------------------------
DROP TABLE IF EXISTS `sys_park`;
CREATE TABLE `sys_park` (
  `id` bigint NOT NULL,
  `park_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `park_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `short_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `is_delete` bit(1) DEFAULT NULL,
  `inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_park
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_position
-- ----------------------------
DROP TABLE IF EXISTS `sys_position`;
CREATE TABLE `sys_position` (
  `id` bigint NOT NULL,
  `dept_id` bigint DEFAULT NULL,
  `job_id` bigint DEFAULT NULL,
  `job_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `position_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `position_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `layer` int DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `unit_id` bigint DEFAULT NULL,
  `is_delete` bit(1) DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `is_public` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_position
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_position_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_position_dept`;
CREATE TABLE `sys_position_dept` (
  `id` bigint NOT NULL,
  `position_id` bigint DEFAULT NULL,
  `dept_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_position_dept
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
  `position_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `dept_id` bigint DEFAULT NULL,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `leader_id` bigint DEFAULT NULL,
  `leader_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `is_delete` bit(1) DEFAULT NULL,
  `is_part_time` bit(1) DEFAULT NULL,
  `job_id` bigint DEFAULT NULL,
  `unit_id` bigint DEFAULT NULL,
  `unit_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_position_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_product
-- ----------------------------
DROP TABLE IF EXISTS `sys_product`;
CREATE TABLE `sys_product` (
  `id` bigint NOT NULL,
  `product_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_product
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_product_access
-- ----------------------------
DROP TABLE IF EXISTS `sys_product_access`;
CREATE TABLE `sys_product_access` (
  `id` bigint NOT NULL,
  `product_id` bigint DEFAULT NULL,
  `app_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_product_access
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
  `role_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `role_flag_id` int DEFAULT NULL,
  `is_built_in` bit(1) DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `bind_table_id` bigint DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  `layer` int DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_system
-- ----------------------------
DROP TABLE IF EXISTS `sys_system`;
CREATE TABLE `sys_system` (
  `id` bigint NOT NULL,
  `system_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `system_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `system_version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `provider_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `provider_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `icon_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_system
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_system_certificate
-- ----------------------------
DROP TABLE IF EXISTS `sys_system_certificate`;
CREATE TABLE `sys_system_certificate` (
  `id` bigint NOT NULL,
  `system_id` bigint DEFAULT NULL,
  `certificate_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `api_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `access_level` int DEFAULT NULL,
  `platform` int DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_system_certificate
-- ----------------------------
BEGIN;
INSERT INTO `sys_system_certificate` (`id`, `system_id`, `certificate_name`, `api_key`, `secret`, `is_valid`, `inputer`, `inputer_id`, `input_time`, `access_level`, `platform`, `remarks`) VALUES (1, NULL, NULL, 'Bitech\\H5', 'vgkEeveppBwCzPHr', b'1', NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_tag
-- ----------------------------
DROP TABLE IF EXISTS `sys_tag`;
CREATE TABLE `sys_tag` (
  `id` bigint NOT NULL,
  `app_id` bigint DEFAULT NULL,
  `tag_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tag_class_id` bigint DEFAULT NULL,
  `tag_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tag_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tag_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `layer` int DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  `is_built_in` bit(1) DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_tag
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_tag_class
-- ----------------------------
DROP TABLE IF EXISTS `sys_tag_class`;
CREATE TABLE `sys_tag_class` (
  `id` bigint NOT NULL,
  `app_id` bigint DEFAULT NULL,
  `class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `class_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `class_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `display_level` int DEFAULT NULL,
  `is_built_in` bit(1) DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `class_flag_id` int DEFAULT NULL,
  `bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `bind_table_id` bigint DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  `layer` int DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_tag_class
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_token
-- ----------------------------
DROP TABLE IF EXISTS `sys_token`;
CREATE TABLE `sys_token` (
  `id` bigint NOT NULL,
  `access_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `refresh_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `account_id` bigint DEFAULT NULL,
  `certificate_id` bigint DEFAULT NULL,
  `uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `expires_in` datetime DEFAULT NULL,
  `scope` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `request_time` datetime DEFAULT NULL,
  `request_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
INSERT INTO `sys_token` (`id`, `access_token`, `refresh_token`, `account_id`, `certificate_id`, `uid`, `expires_in`, `scope`, `request_time`, `request_ip`) VALUES (952071655339855872, 'd3670204c801000', 'd3670204c801001', 1, 1, 'kekee', '2023-03-19 00:12:51', 'common,regular', '2023-03-11 23:12:51', '0:0:0:0:0:0:0:1');
COMMIT;

-- ----------------------------
-- Table structure for sys_unit
-- ----------------------------
DROP TABLE IF EXISTS `sys_unit`;
CREATE TABLE `sys_unit` (
  `id` bigint NOT NULL,
  `unit_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `short_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `unit_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `parent_id` bigint NOT NULL,
  `layer` int DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `is_enabled` bit(1) DEFAULT NULL,
  `is_head_office` bit(1) DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `is_delete` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_unit
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_unit_app
-- ----------------------------
DROP TABLE IF EXISTS `sys_unit_app`;
CREATE TABLE `sys_unit_app` (
  `id` bigint NOT NULL,
  `unit_id` bigint DEFAULT NULL,
  `app_id` bigint DEFAULT NULL,
  `app_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_unit_app
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for vm_sys_account_access
-- ----------------------------
DROP TABLE IF EXISTS `vm_sys_account_access`;
CREATE TABLE `vm_sys_account_access` (
  `id` bigint NOT NULL,
  `account_id` bigint DEFAULT NULL,
  `open_platform` bigint DEFAULT NULL,
  `open_platform_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `open_platform_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `open_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `real_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of vm_sys_account_access
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for vm_sys_park_catalog
-- ----------------------------
DROP TABLE IF EXISTS `vm_sys_park_catalog`;
CREATE TABLE `vm_sys_park_catalog` (
  `role_id` bigint DEFAULT NULL,
  `park_id` bigint DEFAULT NULL,
  `id` bigint NOT NULL,
  `catalog_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `app_id` bigint DEFAULT NULL,
  `bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `bind_table_id` bigint DEFAULT NULL,
  `catalog_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `catalog_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  `layer` int DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `is_delete` bit(1) DEFAULT NULL,
  `inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of vm_sys_park_catalog
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for vm_sys_unit_catalog
-- ----------------------------
DROP TABLE IF EXISTS `vm_sys_unit_catalog`;
CREATE TABLE `vm_sys_unit_catalog` (
  `role_id` bigint DEFAULT NULL,
  `unit_id` bigint DEFAULT NULL,
  `id` bigint NOT NULL,
  `catalog_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `app_id` bigint DEFAULT NULL,
  `bind_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `bind_table_id` bigint DEFAULT NULL,
  `catalog_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `catalog_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  `layer` int DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `is_delete` bit(1) DEFAULT NULL,
  `inputer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inputer_id` bigint DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of vm_sys_unit_catalog
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for vw_sys_account_sort
-- ----------------------------
DROP TABLE IF EXISTS `vw_sys_account_sort`;
CREATE TABLE `vw_sys_account_sort` (
  `id` bigint NOT NULL COMMENT 'id',
  `is_head_office` bit(1) DEFAULT NULL,
  `unit_sequence` tinyint DEFAULT NULL,
  `unit_id` bigint DEFAULT NULL,
  `is_unit` bit(1) DEFAULT NULL,
  `dept_sequence` tinyint DEFAULT NULL,
  `dept_id` bigint DEFAULT NULL,
  `position_user_sequence` tinyint DEFAULT NULL,
  `position_user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of vw_sys_account_sort
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for vw_sys_app_access
-- ----------------------------
DROP TABLE IF EXISTS `vw_sys_app_access`;
CREATE TABLE `vw_sys_app_access` (
  `id` bigint NOT NULL,
  `app_id` bigint DEFAULT NULL,
  `component_id` bigint DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of vw_sys_app_access
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for vw_sys_app_catalog
-- ----------------------------
DROP TABLE IF EXISTS `vw_sys_app_catalog`;
CREATE TABLE `vw_sys_app_catalog` (
  `id` bigint NOT NULL,
  `app_id` bigint DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of vw_sys_app_catalog
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
