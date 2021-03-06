/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50717
Source Host           : 127.0.0.1:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-07-07 18:43:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', '首页', 'fa-bar-chart', '/', null, '2018-07-07 10:16:57');
INSERT INTO `admin_menu` VALUES ('2', '0', '2', '系统管理', 'fa-tasks', null, null, '2018-07-07 10:16:31');
INSERT INTO `admin_menu` VALUES ('3', '2', '3', 'Users', 'fa-users', 'auth/users', null, null);
INSERT INTO `admin_menu` VALUES ('4', '2', '4', 'Roles', 'fa-user', 'auth/roles', null, null);
INSERT INTO `admin_menu` VALUES ('5', '2', '5', 'Permission', 'fa-ban', 'auth/permissions', null, null);
INSERT INTO `admin_menu` VALUES ('6', '0', '7', '菜单管理', 'fa-bars', 'auth/menu', null, '2018-07-07 10:16:18');
INSERT INTO `admin_menu` VALUES ('7', '2', '6', 'Operation log', 'fa-history', 'auth/logs', null, '2018-07-04 16:03:38');
INSERT INTO `admin_menu` VALUES ('8', '0', '8', '部门管理', 'fa-gg', 'departme', '2018-07-04 16:07:11', '2018-07-05 21:01:24');
INSERT INTO `admin_menu` VALUES ('9', '0', '9', '招聘管理', 'fa-drupal', 'position', '2018-07-05 20:52:13', '2018-07-07 10:20:24');
INSERT INTO `admin_menu` VALUES ('10', '9', '10', '招聘岗位', 'fa-bookmark', 'position', '2018-07-05 21:01:14', '2018-07-05 21:02:05');
INSERT INTO `admin_menu` VALUES ('11', '9', '11', '简历管理', 'fa-copy', 'resume', '2018-07-05 21:03:10', '2018-07-05 21:03:22');
INSERT INTO `admin_menu` VALUES ('12', '9', '12', '学历管理', 'fa-balance-scale', 'education', '2018-07-07 10:22:13', '2018-07-07 10:35:57');
INSERT INTO `admin_menu` VALUES ('13', '9', '13', '城市管理', 'fa-fort-awesome', 'city', '2018-07-07 10:37:54', '2018-07-07 10:56:30');
INSERT INTO `admin_menu` VALUES ('14', '9', '14', '职位类别管理', 'fa-server', 'position_type', '2018-07-07 10:56:03', '2018-07-07 10:56:30');

-- ----------------------------
-- Table structure for `admin_operation_log`
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1013 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-04 11:28:11', '2018-07-04 11:28:11');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 11:28:16', '2018-07-04 11:28:16');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 11:28:22', '2018-07-04 11:28:22');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 11:28:27', '2018-07-04 11:28:27');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 11:28:29', '2018-07-04 11:28:29');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 11:28:35', '2018-07-04 11:28:35');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 11:28:51', '2018-07-04 11:28:51');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 11:29:22', '2018-07-04 11:29:22');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-04 11:29:27', '2018-07-04 11:29:27');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 11:33:45', '2018-07-04 11:33:45');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 11:33:49', '2018-07-04 11:33:49');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 11:33:58', '2018-07-04 11:33:58');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 11:34:05', '2018-07-04 11:34:05');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 11:34:10', '2018-07-04 11:34:10');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 11:34:21', '2018-07-04 11:34:21');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 11:34:23', '2018-07-04 11:34:23');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 11:34:27', '2018-07-04 11:34:27');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 11:34:28', '2018-07-04 11:34:28');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"\\u8d22\\u52a1\\u90e8\\u7ecf\\u7406\",\"name\":\"\\u8d22\\u52a1\\u90e8\\u7ecf\\u7406\",\"permissions\":[null],\"_token\":\"gGRtmpm5mFEn1s08DHpHnS9RpBWrKjcRPORfWeBi\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/roles\"}', '2018-07-04 11:35:05', '2018-07-04 11:35:05');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-07-04 11:35:05', '2018-07-04 11:35:05');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 11:35:10', '2018-07-04 11:35:10');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 11:35:22', '2018-07-04 11:35:22');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 11:35:25', '2018-07-04 11:35:25');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 11:36:29', '2018-07-04 11:36:29');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 11:37:37', '2018-07-04 11:37:37');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-04 13:39:11', '2018-07-04 13:39:11');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"e7IQDZsyGZ5ChiFwdh8pPosA9E1ZOAN5kjTm3SOw\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2018-07-04 13:39:13', '2018-07-04 13:39:13');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 13:39:15', '2018-07-04 13:39:15');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"e7IQDZsyGZ5ChiFwdh8pPosA9E1ZOAN5kjTm3SOw\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2018-07-04 13:39:20', '2018-07-04 13:39:20');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 13:39:21', '2018-07-04 13:39:21');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-04 15:44:15', '2018-07-04 15:44:15');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 15:44:30', '2018-07-04 15:44:30');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 15:44:45', '2018-07-04 15:44:45');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 15:44:58', '2018-07-04 15:44:58');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 15:45:09', '2018-07-04 15:45:09');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 15:45:15', '2018-07-04 15:45:15');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 15:45:24', '2018-07-04 15:45:24');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2018-07-04 15:47:32', '2018-07-04 15:47:32');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2018-07-04 15:48:33', '2018-07-04 15:48:33');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 15:49:00', '2018-07-04 15:49:00');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 15:49:04', '2018-07-04 15:49:04');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 15:49:13', '2018-07-04 15:49:13');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 15:49:43', '2018-07-04 15:49:43');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 15:51:56', '2018-07-04 15:51:56');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-07-04 15:57:14', '2018-07-04 15:57:14');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-07-04 15:57:23', '2018-07-04 15:57:23');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 15:58:30', '2018-07-04 15:58:30');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 15:58:37', '2018-07-04 15:58:37');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 16:00:04', '2018-07-04 16:00:04');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 16:00:06', '2018-07-04 16:00:06');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 16:00:09', '2018-07-04 16:00:09');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 16:01:36', '2018-07-04 16:01:36');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 16:01:52', '2018-07-04 16:01:52');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin/auth/permissions/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 16:02:00', '2018-07-04 16:02:00');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 16:02:15', '2018-07-04 16:02:15');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 16:02:23', '2018-07-04 16:02:23');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 16:02:28', '2018-07-04 16:02:28');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 16:03:19', '2018-07-04 16:03:19');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"WafZyQkpHhXzDhbFhNNrAAdJ6Ykl3bzfEKRBFG90\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":7}]},{\\\"id\\\":6}]\"}', '2018-07-04 16:03:38', '2018-07-04 16:03:38');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 16:03:39', '2018-07-04 16:03:39');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-04 16:03:45', '2018-07-04 16:03:45');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 16:03:47', '2018-07-04 16:03:47');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-04 16:04:56', '2018-07-04 16:04:56');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 16:04:57', '2018-07-04 16:04:57');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 16:04:59', '2018-07-04 16:04:59');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":null,\"icon\":\"fa-gg\",\"uri\":\"departme\",\"roles\":[\"2\",null],\"_token\":\"WafZyQkpHhXzDhbFhNNrAAdJ6Ykl3bzfEKRBFG90\"}', '2018-07-04 16:06:07', '2018-07-04 16:06:07');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-04 16:06:07', '2018-07-04 16:06:07');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u90e8\\u95e8\\u7ba1\\u7406\",\"icon\":\"fa-gg\",\"uri\":\"departme\",\"roles\":[\"2\",null],\"_token\":\"WafZyQkpHhXzDhbFhNNrAAdJ6Ykl3bzfEKRBFG90\"}', '2018-07-04 16:07:11', '2018-07-04 16:07:11');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-04 16:07:11', '2018-07-04 16:07:11');
INSERT INTO `admin_operation_log` VALUES ('70', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-04 16:07:18', '2018-07-04 16:07:18');
INSERT INTO `admin_operation_log` VALUES ('71', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 16:09:39', '2018-07-04 16:09:39');
INSERT INTO `admin_operation_log` VALUES ('72', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 16:15:06', '2018-07-04 16:15:06');
INSERT INTO `admin_operation_log` VALUES ('73', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 16:24:09', '2018-07-04 16:24:09');
INSERT INTO `admin_operation_log` VALUES ('74', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 16:37:59', '2018-07-04 16:37:59');
INSERT INTO `admin_operation_log` VALUES ('75', '1', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 16:42:24', '2018-07-04 16:42:24');
INSERT INTO `admin_operation_log` VALUES ('76', '1', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 16:44:50', '2018-07-04 16:44:50');
INSERT INTO `admin_operation_log` VALUES ('77', '1', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 16:45:25', '2018-07-04 16:45:25');
INSERT INTO `admin_operation_log` VALUES ('78', '1', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 16:46:20', '2018-07-04 16:46:20');
INSERT INTO `admin_operation_log` VALUES ('79', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 16:48:18', '2018-07-04 16:48:18');
INSERT INTO `admin_operation_log` VALUES ('80', '1', 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 16:48:45', '2018-07-04 16:48:45');
INSERT INTO `admin_operation_log` VALUES ('81', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 16:48:51', '2018-07-04 16:48:51');
INSERT INTO `admin_operation_log` VALUES ('82', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 16:50:13', '2018-07-04 16:50:13');
INSERT INTO `admin_operation_log` VALUES ('83', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-07-04 17:05:04', '2018-07-04 17:05:04');
INSERT INTO `admin_operation_log` VALUES ('84', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 17:05:06', '2018-07-04 17:05:06');
INSERT INTO `admin_operation_log` VALUES ('85', '1', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 17:07:09', '2018-07-04 17:07:09');
INSERT INTO `admin_operation_log` VALUES ('86', '1', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 17:07:27', '2018-07-04 17:07:27');
INSERT INTO `admin_operation_log` VALUES ('87', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"departme_name\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-07-04 17:07:30', '2018-07-04 17:07:30');
INSERT INTO `admin_operation_log` VALUES ('88', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"departme_name\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2018-07-04 17:07:33', '2018-07-04 17:07:33');
INSERT INTO `admin_operation_log` VALUES ('89', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"departme_name\",\"type\":\"asc\"}}', '2018-07-04 17:08:22', '2018-07-04 17:08:22');
INSERT INTO `admin_operation_log` VALUES ('90', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"departme_name\",\"type\":\"asc\"}}', '2018-07-04 17:09:13', '2018-07-04 17:09:13');
INSERT INTO `admin_operation_log` VALUES ('91', '1', 'admin/departme/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"WafZyQkpHhXzDhbFhNNrAAdJ6Ykl3bzfEKRBFG90\"}', '2018-07-04 17:09:23', '2018-07-04 17:09:23');
INSERT INTO `admin_operation_log` VALUES ('92', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"departme_name\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2018-07-04 17:09:24', '2018-07-04 17:09:24');
INSERT INTO `admin_operation_log` VALUES ('93', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"departme_name\",\"type\":\"asc\"}}', '2018-07-04 17:09:29', '2018-07-04 17:09:29');
INSERT INTO `admin_operation_log` VALUES ('94', '1', 'admin/departme/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 17:10:25', '2018-07-04 17:10:25');
INSERT INTO `admin_operation_log` VALUES ('95', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"departme_name\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2018-07-04 17:11:24', '2018-07-04 17:11:24');
INSERT INTO `admin_operation_log` VALUES ('96', '1', 'admin/departme/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 17:12:04', '2018-07-04 17:12:04');
INSERT INTO `admin_operation_log` VALUES ('97', '1', 'admin/departme/3/edit', 'GET', '127.0.0.1', '[]', '2018-07-04 17:13:01', '2018-07-04 17:13:01');
INSERT INTO `admin_operation_log` VALUES ('98', '1', 'admin/departme/3/edit', 'GET', '127.0.0.1', '[]', '2018-07-04 17:14:01', '2018-07-04 17:14:01');
INSERT INTO `admin_operation_log` VALUES ('99', '1', 'admin/departme/3', 'PUT', '127.0.0.1', '{\"departme_name\":null,\"_token\":\"WafZyQkpHhXzDhbFhNNrAAdJ6Ykl3bzfEKRBFG90\",\"_method\":\"PUT\"}', '2018-07-04 17:14:12', '2018-07-04 17:14:12');
INSERT INTO `admin_operation_log` VALUES ('100', '1', 'admin/departme/3/edit', 'GET', '127.0.0.1', '[]', '2018-07-04 17:14:12', '2018-07-04 17:14:12');
INSERT INTO `admin_operation_log` VALUES ('101', '1', 'admin/departme/3/edit', 'GET', '127.0.0.1', '[]', '2018-07-04 17:14:38', '2018-07-04 17:14:38');
INSERT INTO `admin_operation_log` VALUES ('102', '1', 'admin/departme/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 17:15:26', '2018-07-04 17:15:26');
INSERT INTO `admin_operation_log` VALUES ('103', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"departme_name\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2018-07-04 17:15:29', '2018-07-04 17:15:29');
INSERT INTO `admin_operation_log` VALUES ('104', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"departme_name\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-07-04 17:15:30', '2018-07-04 17:15:30');
INSERT INTO `admin_operation_log` VALUES ('105', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 17:15:35', '2018-07-04 17:15:35');
INSERT INTO `admin_operation_log` VALUES ('106', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 17:15:40', '2018-07-04 17:15:40');
INSERT INTO `admin_operation_log` VALUES ('107', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 17:15:57', '2018-07-04 17:15:57');
INSERT INTO `admin_operation_log` VALUES ('108', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 17:16:02', '2018-07-04 17:16:02');
INSERT INTO `admin_operation_log` VALUES ('109', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 17:16:06', '2018-07-04 17:16:06');
INSERT INTO `admin_operation_log` VALUES ('110', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"page:1\"}', '2018-07-04 17:16:11', '2018-07-04 17:16:11');
INSERT INTO `admin_operation_log` VALUES ('111', '1', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 17:23:14', '2018-07-04 17:23:14');
INSERT INTO `admin_operation_log` VALUES ('112', '1', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 17:24:56', '2018-07-04 17:24:56');
INSERT INTO `admin_operation_log` VALUES ('113', '1', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 17:28:10', '2018-07-04 17:28:10');
INSERT INTO `admin_operation_log` VALUES ('114', '1', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 17:28:42', '2018-07-04 17:28:42');
INSERT INTO `admin_operation_log` VALUES ('115', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-04 19:13:08', '2018-07-04 19:13:08');
INSERT INTO `admin_operation_log` VALUES ('116', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 19:13:17', '2018-07-04 19:13:17');
INSERT INTO `admin_operation_log` VALUES ('117', '1', 'admin/departme/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 19:13:21', '2018-07-04 19:13:21');
INSERT INTO `admin_operation_log` VALUES ('118', '1', 'admin/departme/3/edit', 'GET', '127.0.0.1', '[]', '2018-07-04 19:13:44', '2018-07-04 19:13:44');
INSERT INTO `admin_operation_log` VALUES ('119', '1', 'admin/departme/3/edit', 'GET', '127.0.0.1', '[]', '2018-07-04 19:13:45', '2018-07-04 19:13:45');
INSERT INTO `admin_operation_log` VALUES ('120', '1', 'admin/departme/3/edit', 'GET', '127.0.0.1', '[]', '2018-07-04 19:13:46', '2018-07-04 19:13:46');
INSERT INTO `admin_operation_log` VALUES ('121', '1', 'admin/departme/3/edit', 'GET', '127.0.0.1', '[]', '2018-07-04 19:14:03', '2018-07-04 19:14:03');
INSERT INTO `admin_operation_log` VALUES ('122', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 19:14:12', '2018-07-04 19:14:12');
INSERT INTO `admin_operation_log` VALUES ('123', '1', 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 19:14:15', '2018-07-04 19:14:15');
INSERT INTO `admin_operation_log` VALUES ('124', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 19:14:23', '2018-07-04 19:14:23');
INSERT INTO `admin_operation_log` VALUES ('125', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 19:14:26', '2018-07-04 19:14:26');
INSERT INTO `admin_operation_log` VALUES ('126', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2018-07-04 19:16:55', '2018-07-04 19:16:55');
INSERT INTO `admin_operation_log` VALUES ('127', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2018-07-04 19:16:57', '2018-07-04 19:16:57');
INSERT INTO `admin_operation_log` VALUES ('128', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2018-07-04 19:17:40', '2018-07-04 19:17:40');
INSERT INTO `admin_operation_log` VALUES ('129', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2018-07-04 19:20:10', '2018-07-04 19:20:10');
INSERT INTO `admin_operation_log` VALUES ('130', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2018-07-04 19:20:46', '2018-07-04 19:20:46');
INSERT INTO `admin_operation_log` VALUES ('131', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2018-07-04 19:21:48', '2018-07-04 19:21:48');
INSERT INTO `admin_operation_log` VALUES ('132', '1', 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"gdchen\",\"name\":\"chenguodong\",\"password\":\"123456789\",\"password_confirmation\":\"123456789\",\"departme\":[\"shichangbu\",\"dongnanya\",null],\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"WafZyQkpHhXzDhbFhNNrAAdJ6Ykl3bzfEKRBFG90\"}', '2018-07-04 19:25:37', '2018-07-04 19:25:37');
INSERT INTO `admin_operation_log` VALUES ('133', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2018-07-04 19:25:38', '2018-07-04 19:25:38');
INSERT INTO `admin_operation_log` VALUES ('134', '1', 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"gdchen\",\"name\":\"chenguodong\",\"password\":\"123456789\",\"password_confirmation\":\"123456789\",\"departme\":[\"shichangbu\",\"dongnanya\",null],\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"WafZyQkpHhXzDhbFhNNrAAdJ6Ykl3bzfEKRBFG90\"}', '2018-07-04 19:26:32', '2018-07-04 19:26:32');
INSERT INTO `admin_operation_log` VALUES ('135', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2018-07-04 19:26:33', '2018-07-04 19:26:33');
INSERT INTO `admin_operation_log` VALUES ('136', '1', 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"gdchen\",\"name\":\"chenguodong\",\"password\":\"123456789\",\"password_confirmation\":\"123456789\",\"departme\":[\"shichangbu\",\"dongnanya\",null],\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"WafZyQkpHhXzDhbFhNNrAAdJ6Ykl3bzfEKRBFG90\"}', '2018-07-04 19:27:25', '2018-07-04 19:27:25');
INSERT INTO `admin_operation_log` VALUES ('137', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2018-07-04 19:27:25', '2018-07-04 19:27:25');
INSERT INTO `admin_operation_log` VALUES ('138', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2018-07-04 19:28:55', '2018-07-04 19:28:55');
INSERT INTO `admin_operation_log` VALUES ('139', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2018-07-04 19:29:59', '2018-07-04 19:29:59');
INSERT INTO `admin_operation_log` VALUES ('140', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2018-07-04 19:30:23', '2018-07-04 19:30:23');
INSERT INTO `admin_operation_log` VALUES ('141', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2018-07-04 19:30:44', '2018-07-04 19:30:44');
INSERT INTO `admin_operation_log` VALUES ('142', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2018-07-04 19:32:45', '2018-07-04 19:32:45');
INSERT INTO `admin_operation_log` VALUES ('143', '1', 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"gdchen\",\"name\":\"chenguodong\",\"password\":\"123456789\",\"password_confirmation\":\"123456789\",\"departme\":\"dongnanya\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"WafZyQkpHhXzDhbFhNNrAAdJ6Ykl3bzfEKRBFG90\"}', '2018-07-04 19:33:16', '2018-07-04 19:33:16');
INSERT INTO `admin_operation_log` VALUES ('144', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-07-04 19:33:16', '2018-07-04 19:33:16');
INSERT INTO `admin_operation_log` VALUES ('145', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 19:33:21', '2018-07-04 19:33:21');
INSERT INTO `admin_operation_log` VALUES ('146', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2018-07-04 19:34:33', '2018-07-04 19:34:33');
INSERT INTO `admin_operation_log` VALUES ('147', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2018-07-04 19:34:42', '2018-07-04 19:34:42');
INSERT INTO `admin_operation_log` VALUES ('148', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2018-07-04 19:34:48', '2018-07-04 19:34:48');
INSERT INTO `admin_operation_log` VALUES ('149', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 19:36:21', '2018-07-04 19:36:21');
INSERT INTO `admin_operation_log` VALUES ('150', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 19:36:24', '2018-07-04 19:36:24');
INSERT INTO `admin_operation_log` VALUES ('151', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 19:36:27', '2018-07-04 19:36:27');
INSERT INTO `admin_operation_log` VALUES ('152', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 19:36:40', '2018-07-04 19:36:40');
INSERT INTO `admin_operation_log` VALUES ('153', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 19:39:15', '2018-07-04 19:39:15');
INSERT INTO `admin_operation_log` VALUES ('154', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 19:39:18', '2018-07-04 19:39:18');
INSERT INTO `admin_operation_log` VALUES ('155', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 19:39:28', '2018-07-04 19:39:28');
INSERT INTO `admin_operation_log` VALUES ('156', '1', 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 19:39:31', '2018-07-04 19:39:31');
INSERT INTO `admin_operation_log` VALUES ('157', '1', 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '[]', '2018-07-04 19:39:43', '2018-07-04 19:39:43');
INSERT INTO `admin_operation_log` VALUES ('158', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 19:39:46', '2018-07-04 19:39:46');
INSERT INTO `admin_operation_log` VALUES ('159', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 19:40:14', '2018-07-04 19:40:14');
INSERT INTO `admin_operation_log` VALUES ('160', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-07-04 19:43:40', '2018-07-04 19:43:40');
INSERT INTO `admin_operation_log` VALUES ('161', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-07-04 19:43:47', '2018-07-04 19:43:47');
INSERT INTO `admin_operation_log` VALUES ('162', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-07-04 19:44:19', '2018-07-04 19:44:19');
INSERT INTO `admin_operation_log` VALUES ('163', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-07-04 19:44:24', '2018-07-04 19:44:24');
INSERT INTO `admin_operation_log` VALUES ('164', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-07-04 19:52:23', '2018-07-04 19:52:23');
INSERT INTO `admin_operation_log` VALUES ('165', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-07-04 19:52:38', '2018-07-04 19:52:38');
INSERT INTO `admin_operation_log` VALUES ('166', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-07-04 19:55:54', '2018-07-04 19:55:54');
INSERT INTO `admin_operation_log` VALUES ('167', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-07-04 19:56:23', '2018-07-04 19:56:23');
INSERT INTO `admin_operation_log` VALUES ('168', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-07-04 19:56:53', '2018-07-04 19:56:53');
INSERT INTO `admin_operation_log` VALUES ('169', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-07-04 19:57:02', '2018-07-04 19:57:02');
INSERT INTO `admin_operation_log` VALUES ('170', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-07-04 19:58:09', '2018-07-04 19:58:09');
INSERT INTO `admin_operation_log` VALUES ('171', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-07-04 19:58:27', '2018-07-04 19:58:27');
INSERT INTO `admin_operation_log` VALUES ('172', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-07-04 19:59:48', '2018-07-04 19:59:48');
INSERT INTO `admin_operation_log` VALUES ('173', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-07-04 19:59:50', '2018-07-04 19:59:50');
INSERT INTO `admin_operation_log` VALUES ('174', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-07-04 20:00:39', '2018-07-04 20:00:39');
INSERT INTO `admin_operation_log` VALUES ('175', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:01:46', '2018-07-04 20:01:46');
INSERT INTO `admin_operation_log` VALUES ('176', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:01:51', '2018-07-04 20:01:51');
INSERT INTO `admin_operation_log` VALUES ('177', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:01:57', '2018-07-04 20:01:57');
INSERT INTO `admin_operation_log` VALUES ('178', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2018-07-04 20:02:22', '2018-07-04 20:02:22');
INSERT INTO `admin_operation_log` VALUES ('179', '1', 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"dongnanya\",\"name\":\"\\u9996\\u9875\",\"http_method\":[\"GET\",null],\"http_path\":\"auth\\/users\",\"_token\":\"WafZyQkpHhXzDhbFhNNrAAdJ6Ykl3bzfEKRBFG90\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/permissions\"}', '2018-07-04 20:02:38', '2018-07-04 20:02:38');
INSERT INTO `admin_operation_log` VALUES ('180', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-07-04 20:02:38', '2018-07-04 20:02:38');
INSERT INTO `admin_operation_log` VALUES ('181', '1', 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:03:21', '2018-07-04 20:03:21');
INSERT INTO `admin_operation_log` VALUES ('182', '1', 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"dongnanya\",\"name\":\"\\u9996\\u9875\",\"http_method\":[\"GET\",null],\"http_path\":\"\\/auth\\/users\",\"_token\":\"WafZyQkpHhXzDhbFhNNrAAdJ6Ykl3bzfEKRBFG90\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/permissions\"}', '2018-07-04 20:03:26', '2018-07-04 20:03:26');
INSERT INTO `admin_operation_log` VALUES ('183', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-07-04 20:03:26', '2018-07-04 20:03:26');
INSERT INTO `admin_operation_log` VALUES ('184', '1', 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:03:44', '2018-07-04 20:03:44');
INSERT INTO `admin_operation_log` VALUES ('185', '1', 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"dongnanya.show\",\"name\":\"\\u9996\\u9875\",\"http_method\":[\"GET\",null],\"http_path\":\"\\/auth\\/users\",\"_token\":\"WafZyQkpHhXzDhbFhNNrAAdJ6Ykl3bzfEKRBFG90\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/permissions\"}', '2018-07-04 20:03:52', '2018-07-04 20:03:52');
INSERT INTO `admin_operation_log` VALUES ('186', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-07-04 20:03:53', '2018-07-04 20:03:53');
INSERT INTO `admin_operation_log` VALUES ('187', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:04:43', '2018-07-04 20:04:43');
INSERT INTO `admin_operation_log` VALUES ('188', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-07-04 20:04:44', '2018-07-04 20:04:44');
INSERT INTO `admin_operation_log` VALUES ('189', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-07-04 20:05:06', '2018-07-04 20:05:06');
INSERT INTO `admin_operation_log` VALUES ('190', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:05:18', '2018-07-04 20:05:18');
INSERT INTO `admin_operation_log` VALUES ('191', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-07-04 20:06:12', '2018-07-04 20:06:12');
INSERT INTO `admin_operation_log` VALUES ('192', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-07-04 20:06:15', '2018-07-04 20:06:15');
INSERT INTO `admin_operation_log` VALUES ('193', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:06:21', '2018-07-04 20:06:21');
INSERT INTO `admin_operation_log` VALUES ('194', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-04 20:06:32', '2018-07-04 20:06:32');
INSERT INTO `admin_operation_log` VALUES ('195', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-04 20:06:37', '2018-07-04 20:06:37');
INSERT INTO `admin_operation_log` VALUES ('196', '2', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:06:51', '2018-07-04 20:06:51');
INSERT INTO `admin_operation_log` VALUES ('197', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:06:54', '2018-07-04 20:06:54');
INSERT INTO `admin_operation_log` VALUES ('198', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:07:14', '2018-07-04 20:07:14');
INSERT INTO `admin_operation_log` VALUES ('199', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:07:22', '2018-07-04 20:07:22');
INSERT INTO `admin_operation_log` VALUES ('200', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2018-07-04 20:07:26', '2018-07-04 20:07:26');
INSERT INTO `admin_operation_log` VALUES ('201', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2018-07-04 20:07:35', '2018-07-04 20:07:35');
INSERT INTO `admin_operation_log` VALUES ('202', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:07:44', '2018-07-04 20:07:44');
INSERT INTO `admin_operation_log` VALUES ('203', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2018-07-04 20:07:47', '2018-07-04 20:07:47');
INSERT INTO `admin_operation_log` VALUES ('204', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2018-07-04 20:07:47', '2018-07-04 20:07:47');
INSERT INTO `admin_operation_log` VALUES ('205', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2018-07-04 20:07:48', '2018-07-04 20:07:48');
INSERT INTO `admin_operation_log` VALUES ('206', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2018-07-04 20:07:48', '2018-07-04 20:07:48');
INSERT INTO `admin_operation_log` VALUES ('207', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2018-07-04 20:07:48', '2018-07-04 20:07:48');
INSERT INTO `admin_operation_log` VALUES ('208', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2018-07-04 20:07:49', '2018-07-04 20:07:49');
INSERT INTO `admin_operation_log` VALUES ('209', '2', 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:07:59', '2018-07-04 20:07:59');
INSERT INTO `admin_operation_log` VALUES ('210', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-04 20:08:07', '2018-07-04 20:08:07');
INSERT INTO `admin_operation_log` VALUES ('211', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:08:17', '2018-07-04 20:08:17');
INSERT INTO `admin_operation_log` VALUES ('212', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-04 20:08:48', '2018-07-04 20:08:48');
INSERT INTO `admin_operation_log` VALUES ('213', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:08:52', '2018-07-04 20:08:52');
INSERT INTO `admin_operation_log` VALUES ('214', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:08:57', '2018-07-04 20:08:57');
INSERT INTO `admin_operation_log` VALUES ('215', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:09:07', '2018-07-04 20:09:07');
INSERT INTO `admin_operation_log` VALUES ('216', '1', 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:09:09', '2018-07-04 20:09:09');
INSERT INTO `admin_operation_log` VALUES ('217', '1', 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"\\u8d22\\u52a1\\u90e8\\u7ecf\\u7406\",\"name\":\"\\u8d22\\u52a1\\u90e8\\u7ecf\\u7406\",\"permissions\":[\"3\",\"6\",null],\"_token\":\"pMwxXSMHiLnuRJOahm7URLw1AKXhLRj9e0koAN6e\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/roles\"}', '2018-07-04 20:09:24', '2018-07-04 20:09:24');
INSERT INTO `admin_operation_log` VALUES ('218', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-07-04 20:09:24', '2018-07-04 20:09:24');
INSERT INTO `admin_operation_log` VALUES ('219', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:09:31', '2018-07-04 20:09:31');
INSERT INTO `admin_operation_log` VALUES ('220', '1', 'admin/auth/permissions/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:09:46', '2018-07-04 20:09:46');
INSERT INTO `admin_operation_log` VALUES ('221', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:09:49', '2018-07-04 20:09:49');
INSERT INTO `admin_operation_log` VALUES ('222', '1', 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:09:58', '2018-07-04 20:09:58');
INSERT INTO `admin_operation_log` VALUES ('223', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:10:01', '2018-07-04 20:10:01');
INSERT INTO `admin_operation_log` VALUES ('224', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:10:04', '2018-07-04 20:10:04');
INSERT INTO `admin_operation_log` VALUES ('225', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-04 20:10:10', '2018-07-04 20:10:10');
INSERT INTO `admin_operation_log` VALUES ('226', '2', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:10:12', '2018-07-04 20:10:12');
INSERT INTO `admin_operation_log` VALUES ('227', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:10:17', '2018-07-04 20:10:17');
INSERT INTO `admin_operation_log` VALUES ('228', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 20:10:25', '2018-07-04 20:10:25');
INSERT INTO `admin_operation_log` VALUES ('229', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 20:10:26', '2018-07-04 20:10:26');
INSERT INTO `admin_operation_log` VALUES ('230', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:10:37', '2018-07-04 20:10:37');
INSERT INTO `admin_operation_log` VALUES ('231', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-04 20:10:53', '2018-07-04 20:10:53');
INSERT INTO `admin_operation_log` VALUES ('232', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:10:58', '2018-07-04 20:10:58');
INSERT INTO `admin_operation_log` VALUES ('233', '1', 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:11:13', '2018-07-04 20:11:13');
INSERT INTO `admin_operation_log` VALUES ('234', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:12:03', '2018-07-04 20:12:03');
INSERT INTO `admin_operation_log` VALUES ('235', '1', 'admin/auth/permissions/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:12:07', '2018-07-04 20:12:07');
INSERT INTO `admin_operation_log` VALUES ('236', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:12:15', '2018-07-04 20:12:15');
INSERT INTO `admin_operation_log` VALUES ('237', '1', 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:12:18', '2018-07-04 20:12:18');
INSERT INTO `admin_operation_log` VALUES ('238', '1', 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '[]', '2018-07-04 20:12:30', '2018-07-04 20:12:30');
INSERT INTO `admin_operation_log` VALUES ('239', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:12:33', '2018-07-04 20:12:33');
INSERT INTO `admin_operation_log` VALUES ('240', '1', 'admin/departme/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:12:44', '2018-07-04 20:12:44');
INSERT INTO `admin_operation_log` VALUES ('241', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:12:58', '2018-07-04 20:12:58');
INSERT INTO `admin_operation_log` VALUES ('242', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:13:02', '2018-07-04 20:13:02');
INSERT INTO `admin_operation_log` VALUES ('243', '1', 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:13:25', '2018-07-04 20:13:25');
INSERT INTO `admin_operation_log` VALUES ('244', '1', 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"departme.dongnanya.show\",\"name\":\"\\u9996\\u9875\",\"http_method\":[null],\"http_path\":\"\\/admin\\/departme\",\"_token\":\"1PqYMAN9SZuUvgMJpQvsL74RsneXgGRky1BPIeGa\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/permissions\"}', '2018-07-04 20:13:42', '2018-07-04 20:13:42');
INSERT INTO `admin_operation_log` VALUES ('245', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-07-04 20:13:42', '2018-07-04 20:13:42');
INSERT INTO `admin_operation_log` VALUES ('246', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:13:50', '2018-07-04 20:13:50');
INSERT INTO `admin_operation_log` VALUES ('247', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-04 20:13:57', '2018-07-04 20:13:57');
INSERT INTO `admin_operation_log` VALUES ('248', '2', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:14:02', '2018-07-04 20:14:02');
INSERT INTO `admin_operation_log` VALUES ('249', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:14:05', '2018-07-04 20:14:05');
INSERT INTO `admin_operation_log` VALUES ('250', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:14:12', '2018-07-04 20:14:12');
INSERT INTO `admin_operation_log` VALUES ('251', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:14:14', '2018-07-04 20:14:14');
INSERT INTO `admin_operation_log` VALUES ('252', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:14:15', '2018-07-04 20:14:15');
INSERT INTO `admin_operation_log` VALUES ('253', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:14:19', '2018-07-04 20:14:19');
INSERT INTO `admin_operation_log` VALUES ('254', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-04 20:14:23', '2018-07-04 20:14:23');
INSERT INTO `admin_operation_log` VALUES ('255', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:14:27', '2018-07-04 20:14:27');
INSERT INTO `admin_operation_log` VALUES ('256', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:14:38', '2018-07-04 20:14:38');
INSERT INTO `admin_operation_log` VALUES ('257', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:14:44', '2018-07-04 20:14:44');
INSERT INTO `admin_operation_log` VALUES ('258', '1', 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:14:48', '2018-07-04 20:14:48');
INSERT INTO `admin_operation_log` VALUES ('259', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:15:01', '2018-07-04 20:15:01');
INSERT INTO `admin_operation_log` VALUES ('260', '1', 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:15:05', '2018-07-04 20:15:05');
INSERT INTO `admin_operation_log` VALUES ('261', '1', 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"departme.dongnanya.show\",\"name\":\"\\u90e8\\u95e8\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/admin\\/departme\",\"_token\":\"O9nJ7FcPwB1SqkBlnhY1EhE53dTfyTQPGq0yohBr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/permissions\"}', '2018-07-04 20:15:14', '2018-07-04 20:15:14');
INSERT INTO `admin_operation_log` VALUES ('262', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-07-04 20:15:15', '2018-07-04 20:15:15');
INSERT INTO `admin_operation_log` VALUES ('263', '1', 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '[]', '2018-07-04 20:15:27', '2018-07-04 20:15:27');
INSERT INTO `admin_operation_log` VALUES ('264', '1', 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"\\u8d22\\u52a1\\u90e8\\u7ecf\\u7406\",\"name\":\"\\u8d22\\u52a1\\u90e8\\u7ecf\\u7406\",\"permissions\":[\"2\",\"3\",\"6\",null],\"_token\":\"O9nJ7FcPwB1SqkBlnhY1EhE53dTfyTQPGq0yohBr\",\"_method\":\"PUT\"}', '2018-07-04 20:16:09', '2018-07-04 20:16:09');
INSERT INTO `admin_operation_log` VALUES ('265', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-07-04 20:16:10', '2018-07-04 20:16:10');
INSERT INTO `admin_operation_log` VALUES ('266', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:16:21', '2018-07-04 20:16:21');
INSERT INTO `admin_operation_log` VALUES ('267', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:16:27', '2018-07-04 20:16:27');
INSERT INTO `admin_operation_log` VALUES ('268', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-04 20:16:32', '2018-07-04 20:16:32');
INSERT INTO `admin_operation_log` VALUES ('269', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:16:36', '2018-07-04 20:16:36');
INSERT INTO `admin_operation_log` VALUES ('270', '2', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:17:12', '2018-07-04 20:17:12');
INSERT INTO `admin_operation_log` VALUES ('271', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:17:15', '2018-07-04 20:17:15');
INSERT INTO `admin_operation_log` VALUES ('272', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-04 20:17:20', '2018-07-04 20:17:20');
INSERT INTO `admin_operation_log` VALUES ('273', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:17:26', '2018-07-04 20:17:26');
INSERT INTO `admin_operation_log` VALUES ('274', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:17:31', '2018-07-04 20:17:31');
INSERT INTO `admin_operation_log` VALUES ('275', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:17:39', '2018-07-04 20:17:39');
INSERT INTO `admin_operation_log` VALUES ('276', '1', 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:17:52', '2018-07-04 20:17:52');
INSERT INTO `admin_operation_log` VALUES ('277', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:17:58', '2018-07-04 20:17:58');
INSERT INTO `admin_operation_log` VALUES ('278', '1', 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:18:33', '2018-07-04 20:18:33');
INSERT INTO `admin_operation_log` VALUES ('279', '1', 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"departme\",\"name\":\"\\u90e8\\u95e8\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/admin\\/departme\",\"_token\":\"PIF6vAdqmUFXS9cfAnQbnERD5dZpxoTugtIdlVpk\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/permissions\"}', '2018-07-04 20:18:40', '2018-07-04 20:18:40');
INSERT INTO `admin_operation_log` VALUES ('280', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-07-04 20:18:40', '2018-07-04 20:18:40');
INSERT INTO `admin_operation_log` VALUES ('281', '1', 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:18:50', '2018-07-04 20:18:50');
INSERT INTO `admin_operation_log` VALUES ('282', '1', 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"dongnanya.departme.show\",\"name\":\"\\u90e8\\u95e8\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/departme\",\"_token\":\"PIF6vAdqmUFXS9cfAnQbnERD5dZpxoTugtIdlVpk\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/permissions\"}', '2018-07-04 20:19:20', '2018-07-04 20:19:20');
INSERT INTO `admin_operation_log` VALUES ('283', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-07-04 20:19:21', '2018-07-04 20:19:21');
INSERT INTO `admin_operation_log` VALUES ('284', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:19:32', '2018-07-04 20:19:32');
INSERT INTO `admin_operation_log` VALUES ('285', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-04 20:19:39', '2018-07-04 20:19:39');
INSERT INTO `admin_operation_log` VALUES ('286', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:19:42', '2018-07-04 20:19:42');
INSERT INTO `admin_operation_log` VALUES ('287', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 20:20:37', '2018-07-04 20:20:37');
INSERT INTO `admin_operation_log` VALUES ('288', '2', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-07-04 20:21:06', '2018-07-04 20:21:06');
INSERT INTO `admin_operation_log` VALUES ('289', '2', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-07-04 20:21:07', '2018-07-04 20:21:07');
INSERT INTO `admin_operation_log` VALUES ('290', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 20:21:11', '2018-07-04 20:21:11');
INSERT INTO `admin_operation_log` VALUES ('291', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 20:21:12', '2018-07-04 20:21:12');
INSERT INTO `admin_operation_log` VALUES ('292', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 20:21:58', '2018-07-04 20:21:58');
INSERT INTO `admin_operation_log` VALUES ('293', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 20:21:59', '2018-07-04 20:21:59');
INSERT INTO `admin_operation_log` VALUES ('294', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 20:23:30', '2018-07-04 20:23:30');
INSERT INTO `admin_operation_log` VALUES ('295', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 20:24:04', '2018-07-04 20:24:04');
INSERT INTO `admin_operation_log` VALUES ('296', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 20:24:28', '2018-07-04 20:24:28');
INSERT INTO `admin_operation_log` VALUES ('297', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 20:25:01', '2018-07-04 20:25:01');
INSERT INTO `admin_operation_log` VALUES ('298', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 20:25:17', '2018-07-04 20:25:17');
INSERT INTO `admin_operation_log` VALUES ('299', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 20:26:34', '2018-07-04 20:26:34');
INSERT INTO `admin_operation_log` VALUES ('300', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:26:55', '2018-07-04 20:26:55');
INSERT INTO `admin_operation_log` VALUES ('301', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-04 20:27:01', '2018-07-04 20:27:01');
INSERT INTO `admin_operation_log` VALUES ('302', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:27:04', '2018-07-04 20:27:04');
INSERT INTO `admin_operation_log` VALUES ('303', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:27:09', '2018-07-04 20:27:09');
INSERT INTO `admin_operation_log` VALUES ('304', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-04 20:27:15', '2018-07-04 20:27:15');
INSERT INTO `admin_operation_log` VALUES ('305', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:27:17', '2018-07-04 20:27:17');
INSERT INTO `admin_operation_log` VALUES ('306', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 20:28:00', '2018-07-04 20:28:00');
INSERT INTO `admin_operation_log` VALUES ('307', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 20:28:02', '2018-07-04 20:28:02');
INSERT INTO `admin_operation_log` VALUES ('308', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 20:35:21', '2018-07-04 20:35:21');
INSERT INTO `admin_operation_log` VALUES ('309', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 20:37:05', '2018-07-04 20:37:05');
INSERT INTO `admin_operation_log` VALUES ('310', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 20:37:09', '2018-07-04 20:37:09');
INSERT INTO `admin_operation_log` VALUES ('311', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 20:37:19', '2018-07-04 20:37:19');
INSERT INTO `admin_operation_log` VALUES ('312', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 20:37:25', '2018-07-04 20:37:25');
INSERT INTO `admin_operation_log` VALUES ('313', '2', 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:37:35', '2018-07-04 20:37:35');
INSERT INTO `admin_operation_log` VALUES ('314', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 20:37:53', '2018-07-04 20:37:53');
INSERT INTO `admin_operation_log` VALUES ('315', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 20:37:54', '2018-07-04 20:37:54');
INSERT INTO `admin_operation_log` VALUES ('316', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:38:27', '2018-07-04 20:38:27');
INSERT INTO `admin_operation_log` VALUES ('317', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-04 20:38:30', '2018-07-04 20:38:30');
INSERT INTO `admin_operation_log` VALUES ('318', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:38:34', '2018-07-04 20:38:34');
INSERT INTO `admin_operation_log` VALUES ('319', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:38:51', '2018-07-04 20:38:51');
INSERT INTO `admin_operation_log` VALUES ('320', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:38:56', '2018-07-04 20:38:56');
INSERT INTO `admin_operation_log` VALUES ('321', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-04 20:39:02', '2018-07-04 20:39:02');
INSERT INTO `admin_operation_log` VALUES ('322', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-04 20:39:03', '2018-07-04 20:39:03');
INSERT INTO `admin_operation_log` VALUES ('323', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 20:39:44', '2018-07-04 20:39:44');
INSERT INTO `admin_operation_log` VALUES ('324', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 20:39:46', '2018-07-04 20:39:46');
INSERT INTO `admin_operation_log` VALUES ('325', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 20:40:25', '2018-07-04 20:40:25');
INSERT INTO `admin_operation_log` VALUES ('326', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 20:40:50', '2018-07-04 20:40:50');
INSERT INTO `admin_operation_log` VALUES ('327', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-04 20:41:13', '2018-07-04 20:41:13');
INSERT INTO `admin_operation_log` VALUES ('328', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 16:26:08', '2018-07-05 16:26:08');
INSERT INTO `admin_operation_log` VALUES ('329', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 16:26:12', '2018-07-05 16:26:12');
INSERT INTO `admin_operation_log` VALUES ('330', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2018-07-05 16:26:16', '2018-07-05 16:26:16');
INSERT INTO `admin_operation_log` VALUES ('331', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2018-07-05 16:26:18', '2018-07-05 16:26:18');
INSERT INTO `admin_operation_log` VALUES ('332', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 16:26:27', '2018-07-05 16:26:27');
INSERT INTO `admin_operation_log` VALUES ('333', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 18:12:51', '2018-07-05 18:12:51');
INSERT INTO `admin_operation_log` VALUES ('334', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 18:12:57', '2018-07-05 18:12:57');
INSERT INTO `admin_operation_log` VALUES ('335', '2', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 18:12:59', '2018-07-05 18:12:59');
INSERT INTO `admin_operation_log` VALUES ('336', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 18:14:32', '2018-07-05 18:14:32');
INSERT INTO `admin_operation_log` VALUES ('337', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 18:14:36', '2018-07-05 18:14:36');
INSERT INTO `admin_operation_log` VALUES ('338', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 18:14:40', '2018-07-05 18:14:40');
INSERT INTO `admin_operation_log` VALUES ('339', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 18:21:02', '2018-07-05 18:21:02');
INSERT INTO `admin_operation_log` VALUES ('340', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 18:22:03', '2018-07-05 18:22:03');
INSERT INTO `admin_operation_log` VALUES ('341', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 18:22:21', '2018-07-05 18:22:21');
INSERT INTO `admin_operation_log` VALUES ('342', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-07-05 18:22:57', '2018-07-05 18:22:57');
INSERT INTO `admin_operation_log` VALUES ('343', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 18:23:04', '2018-07-05 18:23:04');
INSERT INTO `admin_operation_log` VALUES ('344', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 18:23:28', '2018-07-05 18:23:28');
INSERT INTO `admin_operation_log` VALUES ('345', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 18:23:42', '2018-07-05 18:23:42');
INSERT INTO `admin_operation_log` VALUES ('346', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 18:23:54', '2018-07-05 18:23:54');
INSERT INTO `admin_operation_log` VALUES ('347', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 18:24:36', '2018-07-05 18:24:36');
INSERT INTO `admin_operation_log` VALUES ('348', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 18:24:49', '2018-07-05 18:24:49');
INSERT INTO `admin_operation_log` VALUES ('349', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 18:24:53', '2018-07-05 18:24:53');
INSERT INTO `admin_operation_log` VALUES ('350', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 18:25:47', '2018-07-05 18:25:47');
INSERT INTO `admin_operation_log` VALUES ('351', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 18:27:31', '2018-07-05 18:27:31');
INSERT INTO `admin_operation_log` VALUES ('352', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 18:27:34', '2018-07-05 18:27:34');
INSERT INTO `admin_operation_log` VALUES ('353', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 18:30:42', '2018-07-05 18:30:42');
INSERT INTO `admin_operation_log` VALUES ('354', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 18:31:15', '2018-07-05 18:31:15');
INSERT INTO `admin_operation_log` VALUES ('355', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 18:32:54', '2018-07-05 18:32:54');
INSERT INTO `admin_operation_log` VALUES ('356', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 18:34:56', '2018-07-05 18:34:56');
INSERT INTO `admin_operation_log` VALUES ('357', '2', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 18:35:07', '2018-07-05 18:35:07');
INSERT INTO `admin_operation_log` VALUES ('358', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 18:35:10', '2018-07-05 18:35:10');
INSERT INTO `admin_operation_log` VALUES ('359', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-05 18:36:35', '2018-07-05 18:36:35');
INSERT INTO `admin_operation_log` VALUES ('360', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-05 18:36:56', '2018-07-05 18:36:56');
INSERT INTO `admin_operation_log` VALUES ('361', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-05 18:37:04', '2018-07-05 18:37:04');
INSERT INTO `admin_operation_log` VALUES ('362', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-05 18:41:39', '2018-07-05 18:41:39');
INSERT INTO `admin_operation_log` VALUES ('363', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-05 18:43:02', '2018-07-05 18:43:02');
INSERT INTO `admin_operation_log` VALUES ('364', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-05 18:43:33', '2018-07-05 18:43:33');
INSERT INTO `admin_operation_log` VALUES ('365', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2018-07-05 18:50:48', '2018-07-05 18:50:48');
INSERT INTO `admin_operation_log` VALUES ('366', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 18:50:50', '2018-07-05 18:50:50');
INSERT INTO `admin_operation_log` VALUES ('367', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 18:50:54', '2018-07-05 18:50:54');
INSERT INTO `admin_operation_log` VALUES ('368', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 18:50:57', '2018-07-05 18:50:57');
INSERT INTO `admin_operation_log` VALUES ('369', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 18:51:03', '2018-07-05 18:51:03');
INSERT INTO `admin_operation_log` VALUES ('370', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 18:51:05', '2018-07-05 18:51:05');
INSERT INTO `admin_operation_log` VALUES ('371', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 18:51:54', '2018-07-05 18:51:54');
INSERT INTO `admin_operation_log` VALUES ('372', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 18:52:58', '2018-07-05 18:52:58');
INSERT INTO `admin_operation_log` VALUES ('373', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 18:53:06', '2018-07-05 18:53:06');
INSERT INTO `admin_operation_log` VALUES ('374', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 18:53:10', '2018-07-05 18:53:10');
INSERT INTO `admin_operation_log` VALUES ('375', '1', 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 18:53:14', '2018-07-05 18:53:14');
INSERT INTO `admin_operation_log` VALUES ('376', '1', 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"dongnanya.departmecontroller.index\",\"name\":\"\\u90e8\\u95e8\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/departme\",\"_token\":\"SV4pw8uQmmjSoaqMJdPzfxXSN1BuxanMg6FfK0Wt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/permissions\"}', '2018-07-05 18:53:45', '2018-07-05 18:53:45');
INSERT INTO `admin_operation_log` VALUES ('377', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-07-05 18:53:45', '2018-07-05 18:53:45');
INSERT INTO `admin_operation_log` VALUES ('378', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-07-05 18:54:54', '2018-07-05 18:54:54');
INSERT INTO `admin_operation_log` VALUES ('379', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-07-05 18:54:59', '2018-07-05 18:54:59');
INSERT INTO `admin_operation_log` VALUES ('380', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 18:55:39', '2018-07-05 18:55:39');
INSERT INTO `admin_operation_log` VALUES ('381', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 18:55:45', '2018-07-05 18:55:45');
INSERT INTO `admin_operation_log` VALUES ('382', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 18:55:50', '2018-07-05 18:55:50');
INSERT INTO `admin_operation_log` VALUES ('383', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-05 18:56:03', '2018-07-05 18:56:03');
INSERT INTO `admin_operation_log` VALUES ('384', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 18:56:07', '2018-07-05 18:56:07');
INSERT INTO `admin_operation_log` VALUES ('385', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 18:56:15', '2018-07-05 18:56:15');
INSERT INTO `admin_operation_log` VALUES ('386', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 18:56:25', '2018-07-05 18:56:25');
INSERT INTO `admin_operation_log` VALUES ('387', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-05 18:57:33', '2018-07-05 18:57:33');
INSERT INTO `admin_operation_log` VALUES ('388', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-05 18:57:36', '2018-07-05 18:57:36');
INSERT INTO `admin_operation_log` VALUES ('389', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-05 18:57:38', '2018-07-05 18:57:38');
INSERT INTO `admin_operation_log` VALUES ('390', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-05 18:59:41', '2018-07-05 18:59:41');
INSERT INTO `admin_operation_log` VALUES ('391', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-05 19:00:17', '2018-07-05 19:00:17');
INSERT INTO `admin_operation_log` VALUES ('392', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:01:44', '2018-07-05 19:01:44');
INSERT INTO `admin_operation_log` VALUES ('393', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 19:01:48', '2018-07-05 19:01:48');
INSERT INTO `admin_operation_log` VALUES ('394', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:01:54', '2018-07-05 19:01:54');
INSERT INTO `admin_operation_log` VALUES ('395', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:01:57', '2018-07-05 19:01:57');
INSERT INTO `admin_operation_log` VALUES ('396', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:02:05', '2018-07-05 19:02:05');
INSERT INTO `admin_operation_log` VALUES ('397', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:02:08', '2018-07-05 19:02:08');
INSERT INTO `admin_operation_log` VALUES ('398', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:02:12', '2018-07-05 19:02:12');
INSERT INTO `admin_operation_log` VALUES ('399', '1', 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"shichangbu\",\"name\":\"\\u5e02\\u573a\\u90e8\",\"permissions\":[null],\"_token\":\"rOryVOH2HwU72bif8OSz2GdCD8C4j6jQZdan68hl\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/roles\"}', '2018-07-05 19:02:29', '2018-07-05 19:02:29');
INSERT INTO `admin_operation_log` VALUES ('400', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-07-05 19:02:29', '2018-07-05 19:02:29');
INSERT INTO `admin_operation_log` VALUES ('401', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:02:35', '2018-07-05 19:02:35');
INSERT INTO `admin_operation_log` VALUES ('402', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:02:56', '2018-07-05 19:02:56');
INSERT INTO `admin_operation_log` VALUES ('403', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2018-07-05 19:03:27', '2018-07-05 19:03:27');
INSERT INTO `admin_operation_log` VALUES ('404', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:03:29', '2018-07-05 19:03:29');
INSERT INTO `admin_operation_log` VALUES ('405', '1', 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"shichangbu.departmecontroller.index\",\"name\":\"\\u5e02\\u573a\\u90e8\\u6743\\u9650\",\"http_method\":[null],\"http_path\":\"\\/admin\\/departme\",\"_token\":\"rOryVOH2HwU72bif8OSz2GdCD8C4j6jQZdan68hl\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/permissions\"}', '2018-07-05 19:03:35', '2018-07-05 19:03:35');
INSERT INTO `admin_operation_log` VALUES ('406', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-07-05 19:03:35', '2018-07-05 19:03:35');
INSERT INTO `admin_operation_log` VALUES ('407', '1', 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:03:54', '2018-07-05 19:03:54');
INSERT INTO `admin_operation_log` VALUES ('408', '1', 'admin/auth/permissions/7', 'PUT', '127.0.0.1', '{\"slug\":\"shichangbu.departmecontroller.index\",\"name\":\"\\u5e02\\u573a\\u90e8\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/admin\\/departme\",\"_token\":\"rOryVOH2HwU72bif8OSz2GdCD8C4j6jQZdan68hl\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/permissions\"}', '2018-07-05 19:03:59', '2018-07-05 19:03:59');
INSERT INTO `admin_operation_log` VALUES ('409', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-07-05 19:03:59', '2018-07-05 19:03:59');
INSERT INTO `admin_operation_log` VALUES ('410', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:04:05', '2018-07-05 19:04:05');
INSERT INTO `admin_operation_log` VALUES ('411', '1', 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:04:10', '2018-07-05 19:04:10');
INSERT INTO `admin_operation_log` VALUES ('412', '1', 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"shichangbu\",\"name\":\"\\u5e02\\u573a\\u90e8\\u7ecf\\u7406\",\"permissions\":[\"6\",\"7\",null],\"_token\":\"rOryVOH2HwU72bif8OSz2GdCD8C4j6jQZdan68hl\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/roles\"}', '2018-07-05 19:04:20', '2018-07-05 19:04:20');
INSERT INTO `admin_operation_log` VALUES ('413', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-07-05 19:04:21', '2018-07-05 19:04:21');
INSERT INTO `admin_operation_log` VALUES ('414', '1', 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:04:38', '2018-07-05 19:04:38');
INSERT INTO `admin_operation_log` VALUES ('415', '1', 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"shichangbu\",\"name\":\"\\u5e02\\u573a\\u90e8\\u7ecf\\u7406\",\"permissions\":[\"2\",\"3\",null],\"_token\":\"rOryVOH2HwU72bif8OSz2GdCD8C4j6jQZdan68hl\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/roles\"}', '2018-07-05 19:04:49', '2018-07-05 19:04:49');
INSERT INTO `admin_operation_log` VALUES ('416', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-07-05 19:04:50', '2018-07-05 19:04:50');
INSERT INTO `admin_operation_log` VALUES ('417', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:05:05', '2018-07-05 19:05:05');
INSERT INTO `admin_operation_log` VALUES ('418', '1', 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:05:22', '2018-07-05 19:05:22');
INSERT INTO `admin_operation_log` VALUES ('419', '1', 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"dongnanya.departmecontroller.index\",\"name\":\"\\u4e1c\\u5357\\u4e9a\\u90e8\\u95e8\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/departme\",\"_token\":\"rOryVOH2HwU72bif8OSz2GdCD8C4j6jQZdan68hl\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/permissions\"}', '2018-07-05 19:05:28', '2018-07-05 19:05:28');
INSERT INTO `admin_operation_log` VALUES ('420', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-07-05 19:05:29', '2018-07-05 19:05:29');
INSERT INTO `admin_operation_log` VALUES ('421', '1', 'admin/auth/permissions/7', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"rOryVOH2HwU72bif8OSz2GdCD8C4j6jQZdan68hl\"}', '2018-07-05 19:05:45', '2018-07-05 19:05:45');
INSERT INTO `admin_operation_log` VALUES ('422', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:05:47', '2018-07-05 19:05:47');
INSERT INTO `admin_operation_log` VALUES ('423', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:05:50', '2018-07-05 19:05:50');
INSERT INTO `admin_operation_log` VALUES ('424', '1', 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:05:56', '2018-07-05 19:05:56');
INSERT INTO `admin_operation_log` VALUES ('425', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:05:59', '2018-07-05 19:05:59');
INSERT INTO `admin_operation_log` VALUES ('426', '1', 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:06:03', '2018-07-05 19:06:03');
INSERT INTO `admin_operation_log` VALUES ('427', '1', 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"\\u5e02\\u573a\\u90e8\\u7ecf\\u7406\",\"name\":\"\\u5e02\\u573a\\u90e8\\u7ecf\\u7406\",\"permissions\":[\"2\",\"3\",null],\"_token\":\"rOryVOH2HwU72bif8OSz2GdCD8C4j6jQZdan68hl\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/roles\"}', '2018-07-05 19:06:06', '2018-07-05 19:06:06');
INSERT INTO `admin_operation_log` VALUES ('428', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-07-05 19:06:06', '2018-07-05 19:06:06');
INSERT INTO `admin_operation_log` VALUES ('429', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:06:10', '2018-07-05 19:06:10');
INSERT INTO `admin_operation_log` VALUES ('430', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:06:13', '2018-07-05 19:06:13');
INSERT INTO `admin_operation_log` VALUES ('431', '1', 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"gdchen\",\"name\":\"chenguodong\",\"password\":\"$2y$10$w4CEgIn9Udn6XCbftj9hYeDKn2HD2mMMQUgNhJrG4.kIbRqGqN1cS\",\"password_confirmation\":\"$2y$10$w4CEgIn9Udn6XCbftj9hYeDKn2HD2mMMQUgNhJrG4.kIbRqGqN1cS\",\"departme\":\"dongnanya\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"rOryVOH2HwU72bif8OSz2GdCD8C4j6jQZdan68hl\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/users\"}', '2018-07-05 19:06:19', '2018-07-05 19:06:19');
INSERT INTO `admin_operation_log` VALUES ('432', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-07-05 19:06:20', '2018-07-05 19:06:20');
INSERT INTO `admin_operation_log` VALUES ('433', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2018-07-05 19:06:27', '2018-07-05 19:06:27');
INSERT INTO `admin_operation_log` VALUES ('434', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-07-05 19:06:31', '2018-07-05 19:06:31');
INSERT INTO `admin_operation_log` VALUES ('435', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:06:36', '2018-07-05 19:06:36');
INSERT INTO `admin_operation_log` VALUES ('436', '1', 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"gdchen\",\"name\":\"chenguodong\",\"password\":\"$2y$10$w4CEgIn9Udn6XCbftj9hYeDKn2HD2mMMQUgNhJrG4.kIbRqGqN1cS\",\"password_confirmation\":\"$2y$10$w4CEgIn9Udn6XCbftj9hYeDKn2HD2mMMQUgNhJrG4.kIbRqGqN1cS\",\"departme\":\"dongnanya\",\"roles\":[\"2\",\"3\",null],\"permissions\":[null],\"_token\":\"QDBj2p4GhNxHC7dEAr81HIHUSEyXqv41B5MooGDA\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/users\"}', '2018-07-05 19:06:43', '2018-07-05 19:06:43');
INSERT INTO `admin_operation_log` VALUES ('437', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-07-05 19:06:44', '2018-07-05 19:06:44');
INSERT INTO `admin_operation_log` VALUES ('438', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:06:50', '2018-07-05 19:06:50');
INSERT INTO `admin_operation_log` VALUES ('439', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 19:06:55', '2018-07-05 19:06:55');
INSERT INTO `admin_operation_log` VALUES ('440', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:06:57', '2018-07-05 19:06:57');
INSERT INTO `admin_operation_log` VALUES ('441', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-05 19:12:28', '2018-07-05 19:12:28');
INSERT INTO `admin_operation_log` VALUES ('442', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-05 19:12:33', '2018-07-05 19:12:33');
INSERT INTO `admin_operation_log` VALUES ('443', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:21:39', '2018-07-05 19:21:39');
INSERT INTO `admin_operation_log` VALUES ('444', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:21:52', '2018-07-05 19:21:52');
INSERT INTO `admin_operation_log` VALUES ('445', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 19:21:56', '2018-07-05 19:21:56');
INSERT INTO `admin_operation_log` VALUES ('446', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:21:58', '2018-07-05 19:21:58');
INSERT INTO `admin_operation_log` VALUES ('447', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:22:00', '2018-07-05 19:22:00');
INSERT INTO `admin_operation_log` VALUES ('448', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:22:27', '2018-07-05 19:22:27');
INSERT INTO `admin_operation_log` VALUES ('449', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 19:22:35', '2018-07-05 19:22:35');
INSERT INTO `admin_operation_log` VALUES ('450', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:23:48', '2018-07-05 19:23:48');
INSERT INTO `admin_operation_log` VALUES ('451', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:25:21', '2018-07-05 19:25:21');
INSERT INTO `admin_operation_log` VALUES ('452', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 19:25:27', '2018-07-05 19:25:27');
INSERT INTO `admin_operation_log` VALUES ('453', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:25:31', '2018-07-05 19:25:31');
INSERT INTO `admin_operation_log` VALUES ('454', '1', 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:25:35', '2018-07-05 19:25:35');
INSERT INTO `admin_operation_log` VALUES ('455', '1', 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"dongnanya.departmecontroller\",\"name\":\"\\u4e1c\\u5357\\u4e9a\\u90e8\\u95e8\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/departme\",\"_token\":\"SoqzxB6ng2r9dC4h8xXztCZrHxi3t9loDVURnU9O\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/permissions\"}', '2018-07-05 19:25:42', '2018-07-05 19:25:42');
INSERT INTO `admin_operation_log` VALUES ('456', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-07-05 19:25:42', '2018-07-05 19:25:42');
INSERT INTO `admin_operation_log` VALUES ('457', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-07-05 19:32:02', '2018-07-05 19:32:02');
INSERT INTO `admin_operation_log` VALUES ('458', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:32:11', '2018-07-05 19:32:11');
INSERT INTO `admin_operation_log` VALUES ('459', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 19:32:15', '2018-07-05 19:32:15');
INSERT INTO `admin_operation_log` VALUES ('460', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:32:30', '2018-07-05 19:32:30');
INSERT INTO `admin_operation_log` VALUES ('461', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 19:32:35', '2018-07-05 19:32:35');
INSERT INTO `admin_operation_log` VALUES ('462', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:32:37', '2018-07-05 19:32:37');
INSERT INTO `admin_operation_log` VALUES ('463', '2', 'admin/departme/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:32:39', '2018-07-05 19:32:39');
INSERT INTO `admin_operation_log` VALUES ('464', '2', 'admin/departme/create', 'GET', '127.0.0.1', '[]', '2018-07-05 19:33:37', '2018-07-05 19:33:37');
INSERT INTO `admin_operation_log` VALUES ('465', '2', 'admin/departme/create', 'GET', '127.0.0.1', '[]', '2018-07-05 19:33:57', '2018-07-05 19:33:57');
INSERT INTO `admin_operation_log` VALUES ('466', '2', 'admin/departme/create', 'GET', '127.0.0.1', '[]', '2018-07-05 19:34:11', '2018-07-05 19:34:11');
INSERT INTO `admin_operation_log` VALUES ('467', '2', 'admin/departme/create', 'GET', '127.0.0.1', '[]', '2018-07-05 19:34:13', '2018-07-05 19:34:13');
INSERT INTO `admin_operation_log` VALUES ('468', '2', 'admin/departme/create', 'GET', '127.0.0.1', '[]', '2018-07-05 19:34:31', '2018-07-05 19:34:31');
INSERT INTO `admin_operation_log` VALUES ('469', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:34:46', '2018-07-05 19:34:46');
INSERT INTO `admin_operation_log` VALUES ('470', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 19:34:49', '2018-07-05 19:34:49');
INSERT INTO `admin_operation_log` VALUES ('471', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:34:52', '2018-07-05 19:34:52');
INSERT INTO `admin_operation_log` VALUES ('472', '1', 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:35:58', '2018-07-05 19:35:58');
INSERT INTO `admin_operation_log` VALUES ('473', '1', 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"dongnanya.departmecontroller\",\"name\":\"\\u4e1c\\u5357\\u4e9a\\u90e8\\u95e8\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/departme\\/\",\"_token\":\"O1eIjyDjFvTIs4gG3GINBEPqi2lYxjg75g9PYRWV\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/permissions\"}', '2018-07-05 19:36:05', '2018-07-05 19:36:05');
INSERT INTO `admin_operation_log` VALUES ('474', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-07-05 19:36:05', '2018-07-05 19:36:05');
INSERT INTO `admin_operation_log` VALUES ('475', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:36:14', '2018-07-05 19:36:14');
INSERT INTO `admin_operation_log` VALUES ('476', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 19:36:20', '2018-07-05 19:36:20');
INSERT INTO `admin_operation_log` VALUES ('477', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:36:22', '2018-07-05 19:36:22');
INSERT INTO `admin_operation_log` VALUES ('478', '2', 'admin/departme/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:36:23', '2018-07-05 19:36:23');
INSERT INTO `admin_operation_log` VALUES ('479', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:36:27', '2018-07-05 19:36:27');
INSERT INTO `admin_operation_log` VALUES ('480', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 19:36:33', '2018-07-05 19:36:33');
INSERT INTO `admin_operation_log` VALUES ('481', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:36:36', '2018-07-05 19:36:36');
INSERT INTO `admin_operation_log` VALUES ('482', '1', 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:36:45', '2018-07-05 19:36:45');
INSERT INTO `admin_operation_log` VALUES ('483', '1', 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"dongnanya.departmecontroller\",\"name\":\"\\u4e1c\\u5357\\u4e9a\\u90e8\\u95e8\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/departme*\",\"_token\":\"0xWy2LGXLHmmD9zz2eysU0wdaxmUfwYG2TSZT6RG\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/permissions\"}', '2018-07-05 19:36:51', '2018-07-05 19:36:51');
INSERT INTO `admin_operation_log` VALUES ('484', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-07-05 19:36:51', '2018-07-05 19:36:51');
INSERT INTO `admin_operation_log` VALUES ('485', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:36:59', '2018-07-05 19:36:59');
INSERT INTO `admin_operation_log` VALUES ('486', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 19:37:13', '2018-07-05 19:37:13');
INSERT INTO `admin_operation_log` VALUES ('487', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:37:16', '2018-07-05 19:37:16');
INSERT INTO `admin_operation_log` VALUES ('488', '2', 'admin/departme/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:37:19', '2018-07-05 19:37:19');
INSERT INTO `admin_operation_log` VALUES ('489', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:37:29', '2018-07-05 19:37:29');
INSERT INTO `admin_operation_log` VALUES ('490', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:37:33', '2018-07-05 19:37:33');
INSERT INTO `admin_operation_log` VALUES ('491', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 19:37:40', '2018-07-05 19:37:40');
INSERT INTO `admin_operation_log` VALUES ('492', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:37:43', '2018-07-05 19:37:43');
INSERT INTO `admin_operation_log` VALUES ('493', '1', 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:37:45', '2018-07-05 19:37:45');
INSERT INTO `admin_operation_log` VALUES ('494', '1', 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"dongnanya.departmecontroller\",\"name\":\"\\u4e1c\\u5357\\u4e9a\\u90e8\\u95e8\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/departme\\/*\",\"_token\":\"q0ElmiiVA6bDiuupWPiI14p8luHKNfiQl5Xqj8pI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/permissions\"}', '2018-07-05 19:37:50', '2018-07-05 19:37:50');
INSERT INTO `admin_operation_log` VALUES ('495', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-07-05 19:37:50', '2018-07-05 19:37:50');
INSERT INTO `admin_operation_log` VALUES ('496', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:37:55', '2018-07-05 19:37:55');
INSERT INTO `admin_operation_log` VALUES ('497', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 19:38:00', '2018-07-05 19:38:00');
INSERT INTO `admin_operation_log` VALUES ('498', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:38:03', '2018-07-05 19:38:03');
INSERT INTO `admin_operation_log` VALUES ('499', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:38:08', '2018-07-05 19:38:08');
INSERT INTO `admin_operation_log` VALUES ('500', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 19:38:13', '2018-07-05 19:38:13');
INSERT INTO `admin_operation_log` VALUES ('501', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:38:20', '2018-07-05 19:38:20');
INSERT INTO `admin_operation_log` VALUES ('502', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 19:38:25', '2018-07-05 19:38:25');
INSERT INTO `admin_operation_log` VALUES ('503', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:38:28', '2018-07-05 19:38:28');
INSERT INTO `admin_operation_log` VALUES ('504', '1', 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:38:30', '2018-07-05 19:38:30');
INSERT INTO `admin_operation_log` VALUES ('505', '1', 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"dongnanya.departmecontroller\",\"name\":\"\\u4e1c\\u5357\\u4e9a\\u90e8\\u95e8\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/departme*\",\"_token\":\"2XHViMNJtinsdBprEqtiplR8y3eaa211bSxReKfP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/permissions\"}', '2018-07-05 19:38:36', '2018-07-05 19:38:36');
INSERT INTO `admin_operation_log` VALUES ('506', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-07-05 19:38:36', '2018-07-05 19:38:36');
INSERT INTO `admin_operation_log` VALUES ('507', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:38:47', '2018-07-05 19:38:47');
INSERT INTO `admin_operation_log` VALUES ('508', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 19:38:52', '2018-07-05 19:38:52');
INSERT INTO `admin_operation_log` VALUES ('509', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:38:55', '2018-07-05 19:38:55');
INSERT INTO `admin_operation_log` VALUES ('510', '2', 'admin/departme/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:38:57', '2018-07-05 19:38:57');
INSERT INTO `admin_operation_log` VALUES ('511', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:39:05', '2018-07-05 19:39:05');
INSERT INTO `admin_operation_log` VALUES ('512', '2', 'admin/departme/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:39:11', '2018-07-05 19:39:11');
INSERT INTO `admin_operation_log` VALUES ('513', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:39:19', '2018-07-05 19:39:19');
INSERT INTO `admin_operation_log` VALUES ('514', '2', 'admin/departme/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:39:22', '2018-07-05 19:39:22');
INSERT INTO `admin_operation_log` VALUES ('515', '2', 'admin/departme', 'POST', '127.0.0.1', '{\"departme_name\":\"\\u4ea7\\u54c1\\u90e8\",\"alias\":\"chanpinbu\",\"_token\":\"LJ8aABH4urHJo9LqUgz1XUCe6QSFdOdnuZQpWBSO\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/departme\"}', '2018-07-05 19:39:32', '2018-07-05 19:39:32');
INSERT INTO `admin_operation_log` VALUES ('516', '2', 'admin/departme/create', 'GET', '127.0.0.1', '[]', '2018-07-05 19:39:33', '2018-07-05 19:39:33');
INSERT INTO `admin_operation_log` VALUES ('517', '2', 'admin/departme', 'POST', '127.0.0.1', '{\"departme_name\":\"\\u4ea7\\u54c1\\u90e8\",\"alias\":\"chanpinbu\",\"_token\":\"LJ8aABH4urHJo9LqUgz1XUCe6QSFdOdnuZQpWBSO\"}', '2018-07-05 19:41:38', '2018-07-05 19:41:38');
INSERT INTO `admin_operation_log` VALUES ('518', '2', 'admin/departme/create', 'GET', '127.0.0.1', '[]', '2018-07-05 19:41:39', '2018-07-05 19:41:39');
INSERT INTO `admin_operation_log` VALUES ('519', '2', 'admin/departme', 'POST', '127.0.0.1', '{\"departme_name\":\"\\u4ea7\\u54c1\\u90e8\",\"alias\":\"chanpinbu\",\"_token\":\"LJ8aABH4urHJo9LqUgz1XUCe6QSFdOdnuZQpWBSO\"}', '2018-07-05 19:43:43', '2018-07-05 19:43:43');
INSERT INTO `admin_operation_log` VALUES ('520', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-05 19:43:44', '2018-07-05 19:43:44');
INSERT INTO `admin_operation_log` VALUES ('521', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-05 19:44:24', '2018-07-05 19:44:24');
INSERT INTO `admin_operation_log` VALUES ('522', '2', 'admin/departme/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:44:28', '2018-07-05 19:44:28');
INSERT INTO `admin_operation_log` VALUES ('523', '2', 'admin/departme/5', 'PUT', '127.0.0.1', '{\"departme_name\":\"\\u4ea7\\u54c1\\u90e8\",\"alias\":\"chanpinbu\",\"_token\":\"LJ8aABH4urHJo9LqUgz1XUCe6QSFdOdnuZQpWBSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/departme\"}', '2018-07-05 19:44:31', '2018-07-05 19:44:31');
INSERT INTO `admin_operation_log` VALUES ('524', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-05 19:44:31', '2018-07-05 19:44:31');
INSERT INTO `admin_operation_log` VALUES ('525', '2', 'admin/departme/5', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"LJ8aABH4urHJo9LqUgz1XUCe6QSFdOdnuZQpWBSO\"}', '2018-07-05 19:44:36', '2018-07-05 19:44:36');
INSERT INTO `admin_operation_log` VALUES ('526', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:44:37', '2018-07-05 19:44:37');
INSERT INTO `admin_operation_log` VALUES ('527', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:44:42', '2018-07-05 19:44:42');
INSERT INTO `admin_operation_log` VALUES ('528', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:45:23', '2018-07-05 19:45:23');
INSERT INTO `admin_operation_log` VALUES ('529', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 19:56:13', '2018-07-05 19:56:13');
INSERT INTO `admin_operation_log` VALUES ('530', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-05 20:36:30', '2018-07-05 20:36:30');
INSERT INTO `admin_operation_log` VALUES ('531', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:36:34', '2018-07-05 20:36:34');
INSERT INTO `admin_operation_log` VALUES ('532', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 20:36:39', '2018-07-05 20:36:39');
INSERT INTO `admin_operation_log` VALUES ('533', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:36:44', '2018-07-05 20:36:44');
INSERT INTO `admin_operation_log` VALUES ('534', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:50:35', '2018-07-05 20:50:35');
INSERT INTO `admin_operation_log` VALUES ('535', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u804c\\u4f4d\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"position\",\"roles\":[null],\"_token\":\"V6LGfKzgyPiQ9plmQoEJaCAhPvi4rHUBzlhZpdrr\"}', '2018-07-05 20:52:13', '2018-07-05 20:52:13');
INSERT INTO `admin_operation_log` VALUES ('536', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-05 20:52:14', '2018-07-05 20:52:14');
INSERT INTO `admin_operation_log` VALUES ('537', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:52:24', '2018-07-05 20:52:24');
INSERT INTO `admin_operation_log` VALUES ('538', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:52:28', '2018-07-05 20:52:28');
INSERT INTO `admin_operation_log` VALUES ('539', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:52:31', '2018-07-05 20:52:31');
INSERT INTO `admin_operation_log` VALUES ('540', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:53:20', '2018-07-05 20:53:20');
INSERT INTO `admin_operation_log` VALUES ('541', '1', 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:53:32', '2018-07-05 20:53:32');
INSERT INTO `admin_operation_log` VALUES ('542', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:53:36', '2018-07-05 20:53:36');
INSERT INTO `admin_operation_log` VALUES ('543', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:53:40', '2018-07-05 20:53:40');
INSERT INTO `admin_operation_log` VALUES ('544', '1', 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u90e8\\u95e8\\u7ba1\\u7406\",\"icon\":\"fa-gg\",\"uri\":\"departme\",\"roles\":[null],\"_token\":\"V6LGfKzgyPiQ9plmQoEJaCAhPvi4rHUBzlhZpdrr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/menu\"}', '2018-07-05 20:53:44', '2018-07-05 20:53:44');
INSERT INTO `admin_operation_log` VALUES ('545', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-05 20:53:44', '2018-07-05 20:53:44');
INSERT INTO `admin_operation_log` VALUES ('546', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:53:56', '2018-07-05 20:53:56');
INSERT INTO `admin_operation_log` VALUES ('547', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:54:00', '2018-07-05 20:54:00');
INSERT INTO `admin_operation_log` VALUES ('548', '1', 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"gdchen\",\"name\":\"chenguodong\",\"password\":\"$2y$10$w4CEgIn9Udn6XCbftj9hYeDKn2HD2mMMQUgNhJrG4.kIbRqGqN1cS\",\"password_confirmation\":\"$2y$10$w4CEgIn9Udn6XCbftj9hYeDKn2HD2mMMQUgNhJrG4.kIbRqGqN1cS\",\"departme\":\"dongnanya\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"V6LGfKzgyPiQ9plmQoEJaCAhPvi4rHUBzlhZpdrr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/users\"}', '2018-07-05 20:54:06', '2018-07-05 20:54:06');
INSERT INTO `admin_operation_log` VALUES ('549', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-07-05 20:54:07', '2018-07-05 20:54:07');
INSERT INTO `admin_operation_log` VALUES ('550', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:54:10', '2018-07-05 20:54:10');
INSERT INTO `admin_operation_log` VALUES ('551', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:54:23', '2018-07-05 20:54:23');
INSERT INTO `admin_operation_log` VALUES ('552', '1', 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u804c\\u4f4d\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"position\",\"roles\":[\"2\",null],\"_token\":\"V6LGfKzgyPiQ9plmQoEJaCAhPvi4rHUBzlhZpdrr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/menu\"}', '2018-07-05 20:54:30', '2018-07-05 20:54:30');
INSERT INTO `admin_operation_log` VALUES ('553', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-05 20:54:30', '2018-07-05 20:54:30');
INSERT INTO `admin_operation_log` VALUES ('554', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:54:37', '2018-07-05 20:54:37');
INSERT INTO `admin_operation_log` VALUES ('555', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:54:41', '2018-07-05 20:54:41');
INSERT INTO `admin_operation_log` VALUES ('556', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:54:43', '2018-07-05 20:54:43');
INSERT INTO `admin_operation_log` VALUES ('557', '1', 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u804c\\u4f4d\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"position\",\"roles\":[\"3\",null],\"_token\":\"V6LGfKzgyPiQ9plmQoEJaCAhPvi4rHUBzlhZpdrr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/menu\"}', '2018-07-05 20:54:48', '2018-07-05 20:54:48');
INSERT INTO `admin_operation_log` VALUES ('558', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-05 20:54:48', '2018-07-05 20:54:48');
INSERT INTO `admin_operation_log` VALUES ('559', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:54:55', '2018-07-05 20:54:55');
INSERT INTO `admin_operation_log` VALUES ('560', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 20:55:01', '2018-07-05 20:55:01');
INSERT INTO `admin_operation_log` VALUES ('561', '2', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:55:06', '2018-07-05 20:55:06');
INSERT INTO `admin_operation_log` VALUES ('562', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:55:10', '2018-07-05 20:55:10');
INSERT INTO `admin_operation_log` VALUES ('563', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:55:13', '2018-07-05 20:55:13');
INSERT INTO `admin_operation_log` VALUES ('564', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 20:55:17', '2018-07-05 20:55:17');
INSERT INTO `admin_operation_log` VALUES ('565', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:55:26', '2018-07-05 20:55:26');
INSERT INTO `admin_operation_log` VALUES ('566', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:55:29', '2018-07-05 20:55:29');
INSERT INTO `admin_operation_log` VALUES ('567', '1', 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u804c\\u4f4d\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"position\",\"roles\":[\"2\",null],\"_token\":\"kb5DrHWvcNjpJv0gCGR3CqcyJbeP6CLNpG3yzQgI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/menu\"}', '2018-07-05 20:55:34', '2018-07-05 20:55:34');
INSERT INTO `admin_operation_log` VALUES ('568', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-05 20:55:34', '2018-07-05 20:55:34');
INSERT INTO `admin_operation_log` VALUES ('569', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:55:39', '2018-07-05 20:55:39');
INSERT INTO `admin_operation_log` VALUES ('570', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 20:55:44', '2018-07-05 20:55:44');
INSERT INTO `admin_operation_log` VALUES ('571', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:55:52', '2018-07-05 20:55:52');
INSERT INTO `admin_operation_log` VALUES ('572', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 20:55:57', '2018-07-05 20:55:57');
INSERT INTO `admin_operation_log` VALUES ('573', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:56:00', '2018-07-05 20:56:00');
INSERT INTO `admin_operation_log` VALUES ('574', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:56:03', '2018-07-05 20:56:03');
INSERT INTO `admin_operation_log` VALUES ('575', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:56:08', '2018-07-05 20:56:08');
INSERT INTO `admin_operation_log` VALUES ('576', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:56:12', '2018-07-05 20:56:12');
INSERT INTO `admin_operation_log` VALUES ('577', '1', 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u804c\\u4f4d\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"position\",\"roles\":[null],\"_token\":\"oQtmGG9yJjNqybzutdhlTDDDyw1P3EsEhxzZKdt8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/menu\"}', '2018-07-05 20:56:16', '2018-07-05 20:56:16');
INSERT INTO `admin_operation_log` VALUES ('578', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-05 20:56:16', '2018-07-05 20:56:16');
INSERT INTO `admin_operation_log` VALUES ('579', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:56:22', '2018-07-05 20:56:22');
INSERT INTO `admin_operation_log` VALUES ('580', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 20:56:28', '2018-07-05 20:56:28');
INSERT INTO `admin_operation_log` VALUES ('581', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:56:34', '2018-07-05 20:56:34');
INSERT INTO `admin_operation_log` VALUES ('582', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-05 20:56:38', '2018-07-05 20:56:38');
INSERT INTO `admin_operation_log` VALUES ('583', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:57:00', '2018-07-05 20:57:00');
INSERT INTO `admin_operation_log` VALUES ('584', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:57:04', '2018-07-05 20:57:04');
INSERT INTO `admin_operation_log` VALUES ('585', '1', 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u804c\\u4f4d\\u7ba1\\u7406\",\"icon\":\"fa-drupal\",\"uri\":\"position\",\"roles\":[null],\"_token\":\"Q2SI1QjHWG62eSTKkXiD88tzxrmluuFZmOsJegM9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/menu\"}', '2018-07-05 20:57:54', '2018-07-05 20:57:54');
INSERT INTO `admin_operation_log` VALUES ('586', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-05 20:57:54', '2018-07-05 20:57:54');
INSERT INTO `admin_operation_log` VALUES ('587', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-05 20:57:57', '2018-07-05 20:57:57');
INSERT INTO `admin_operation_log` VALUES ('588', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:58:12', '2018-07-05 20:58:12');
INSERT INTO `admin_operation_log` VALUES ('589', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:58:14', '2018-07-05 20:58:14');
INSERT INTO `admin_operation_log` VALUES ('590', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:58:26', '2018-07-05 20:58:26');
INSERT INTO `admin_operation_log` VALUES ('591', '1', 'admin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:58:34', '2018-07-05 20:58:34');
INSERT INTO `admin_operation_log` VALUES ('592', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 20:58:47', '2018-07-05 20:58:47');
INSERT INTO `admin_operation_log` VALUES ('593', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 21:00:52', '2018-07-05 21:00:52');
INSERT INTO `admin_operation_log` VALUES ('594', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 21:00:56', '2018-07-05 21:00:56');
INSERT INTO `admin_operation_log` VALUES ('595', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 21:01:00', '2018-07-05 21:01:00');
INSERT INTO `admin_operation_log` VALUES ('596', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 21:01:04', '2018-07-05 21:01:04');
INSERT INTO `admin_operation_log` VALUES ('597', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u62db\\u8058\\u5c97\\u4f4d\",\"icon\":\"fa-bars\",\"uri\":\"position\",\"roles\":[null],\"_token\":\"Q2SI1QjHWG62eSTKkXiD88tzxrmluuFZmOsJegM9\"}', '2018-07-05 21:01:14', '2018-07-05 21:01:14');
INSERT INTO `admin_operation_log` VALUES ('598', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-05 21:01:14', '2018-07-05 21:01:14');
INSERT INTO `admin_operation_log` VALUES ('599', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"Q2SI1QjHWG62eSTKkXiD88tzxrmluuFZmOsJegM9\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":7}]},{\\\"id\\\":6},{\\\"id\\\":8},{\\\"id\\\":9,\\\"children\\\":[{\\\"id\\\":10}]}]\"}', '2018-07-05 21:01:24', '2018-07-05 21:01:24');
INSERT INTO `admin_operation_log` VALUES ('600', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 21:01:25', '2018-07-05 21:01:25');
INSERT INTO `admin_operation_log` VALUES ('601', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 21:01:30', '2018-07-05 21:01:30');
INSERT INTO `admin_operation_log` VALUES ('602', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 21:01:38', '2018-07-05 21:01:38');
INSERT INTO `admin_operation_log` VALUES ('603', '1', 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 21:01:51', '2018-07-05 21:01:51');
INSERT INTO `admin_operation_log` VALUES ('604', '1', 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u62db\\u8058\\u5c97\\u4f4d\",\"icon\":\"fa-bookmark\",\"uri\":\"position\",\"roles\":[null],\"_token\":\"Q2SI1QjHWG62eSTKkXiD88tzxrmluuFZmOsJegM9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/menu\"}', '2018-07-05 21:02:05', '2018-07-05 21:02:05');
INSERT INTO `admin_operation_log` VALUES ('605', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-05 21:02:05', '2018-07-05 21:02:05');
INSERT INTO `admin_operation_log` VALUES ('606', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-05 21:02:11', '2018-07-05 21:02:11');
INSERT INTO `admin_operation_log` VALUES ('607', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7b80\\u5386\\u7ba1\\u7406\",\"icon\":\"fa-copy\",\"uri\":\"resume\",\"roles\":[null],\"_token\":\"Q2SI1QjHWG62eSTKkXiD88tzxrmluuFZmOsJegM9\"}', '2018-07-05 21:03:10', '2018-07-05 21:03:10');
INSERT INTO `admin_operation_log` VALUES ('608', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-05 21:03:11', '2018-07-05 21:03:11');
INSERT INTO `admin_operation_log` VALUES ('609', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"Q2SI1QjHWG62eSTKkXiD88tzxrmluuFZmOsJegM9\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":7}]},{\\\"id\\\":6},{\\\"id\\\":8},{\\\"id\\\":9,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":11}]}]\"}', '2018-07-05 21:03:22', '2018-07-05 21:03:22');
INSERT INTO `admin_operation_log` VALUES ('610', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-05 21:03:24', '2018-07-05 21:03:24');
INSERT INTO `admin_operation_log` VALUES ('611', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-05 21:03:25', '2018-07-05 21:03:25');
INSERT INTO `admin_operation_log` VALUES ('612', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-06 11:56:11', '2018-07-06 11:56:11');
INSERT INTO `admin_operation_log` VALUES ('613', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-06 11:56:21', '2018-07-06 11:56:21');
INSERT INTO `admin_operation_log` VALUES ('614', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-06 11:58:17', '2018-07-06 11:58:17');
INSERT INTO `admin_operation_log` VALUES ('615', '1', 'admin/position', 'GET', '127.0.0.1', '[]', '2018-07-06 12:07:35', '2018-07-06 12:07:35');
INSERT INTO `admin_operation_log` VALUES ('616', '1', 'admin/position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-06 13:21:54', '2018-07-06 13:21:54');
INSERT INTO `admin_operation_log` VALUES ('617', '1', 'admin/position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-06 13:22:05', '2018-07-06 13:22:05');
INSERT INTO `admin_operation_log` VALUES ('618', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 13:24:50', '2018-07-06 13:24:50');
INSERT INTO `admin_operation_log` VALUES ('619', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 13:25:31', '2018-07-06 13:25:31');
INSERT INTO `admin_operation_log` VALUES ('620', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":null,\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 13:25:33', '2018-07-06 13:25:33');
INSERT INTO `admin_operation_log` VALUES ('621', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 13:25:33', '2018-07-06 13:25:33');
INSERT INTO `admin_operation_log` VALUES ('622', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 13:28:11', '2018-07-06 13:28:11');
INSERT INTO `admin_operation_log` VALUES ('623', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 13:37:48', '2018-07-06 13:37:48');
INSERT INTO `admin_operation_log` VALUES ('624', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 13:39:22', '2018-07-06 13:39:22');
INSERT INTO `admin_operation_log` VALUES ('625', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 13:43:29', '2018-07-06 13:43:29');
INSERT INTO `admin_operation_log` VALUES ('626', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 13:43:42', '2018-07-06 13:43:42');
INSERT INTO `admin_operation_log` VALUES ('627', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 13:45:36', '2018-07-06 13:45:36');
INSERT INTO `admin_operation_log` VALUES ('628', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 13:47:09', '2018-07-06 13:47:09');
INSERT INTO `admin_operation_log` VALUES ('629', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 13:48:22', '2018-07-06 13:48:22');
INSERT INTO `admin_operation_log` VALUES ('630', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 13:49:21', '2018-07-06 13:49:21');
INSERT INTO `admin_operation_log` VALUES ('631', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":null,\"experience\":null,\"education\":null,\"type\":null,\"departme\":null,\"position\":null,\"num\":\"0\",\"publish\":\"off\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 13:49:23', '2018-07-06 13:49:23');
INSERT INTO `admin_operation_log` VALUES ('632', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 13:49:23', '2018-07-06 13:49:23');
INSERT INTO `admin_operation_log` VALUES ('633', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":\"2222222222\",\"experience\":\"Smith\",\"education\":\"Kate\",\"type\":\"2\",\"departme\":\"dongnanya\",\"position\":\"Smith\",\"num\":null,\"publish\":\"off\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 13:49:48', '2018-07-06 13:49:48');
INSERT INTO `admin_operation_log` VALUES ('634', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 13:49:48', '2018-07-06 13:49:48');
INSERT INTO `admin_operation_log` VALUES ('635', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 13:53:18', '2018-07-06 13:53:18');
INSERT INTO `admin_operation_log` VALUES ('636', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":\"1111\",\"experience\":\"Smith\",\"education\":\"Smith\",\"type\":\"2\",\"departme\":\"dongnanya\",\"position\":\"Smith\",\"num\":\"0\",\"publish\":\"off\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 13:53:29', '2018-07-06 13:53:29');
INSERT INTO `admin_operation_log` VALUES ('637', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 13:53:30', '2018-07-06 13:53:30');
INSERT INTO `admin_operation_log` VALUES ('638', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 13:56:19', '2018-07-06 13:56:19');
INSERT INTO `admin_operation_log` VALUES ('639', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":\"1111\",\"experience\":\"2\",\"education\":\"2\",\"type\":\"2\",\"departme\":\"dongnanya\",\"position\":\"2\",\"num\":\"0\",\"publish\":\"off\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 13:56:31', '2018-07-06 13:56:31');
INSERT INTO `admin_operation_log` VALUES ('640', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 13:56:32', '2018-07-06 13:56:32');
INSERT INTO `admin_operation_log` VALUES ('641', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 13:57:24', '2018-07-06 13:57:24');
INSERT INTO `admin_operation_log` VALUES ('642', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":\"111\",\"experience\":\"2\",\"education\":\"2\",\"type\":\"2\",\"departme\":\"4\",\"position\":\"2\",\"num\":\"0\",\"publish\":\"off\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 13:57:35', '2018-07-06 13:57:35');
INSERT INTO `admin_operation_log` VALUES ('643', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 13:57:36', '2018-07-06 13:57:36');
INSERT INTO `admin_operation_log` VALUES ('644', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 14:00:09', '2018-07-06 14:00:09');
INSERT INTO `admin_operation_log` VALUES ('645', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 14:01:21', '2018-07-06 14:01:21');
INSERT INTO `admin_operation_log` VALUES ('646', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 14:01:28', '2018-07-06 14:01:28');
INSERT INTO `admin_operation_log` VALUES ('647', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 14:03:18', '2018-07-06 14:03:18');
INSERT INTO `admin_operation_log` VALUES ('648', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 14:04:13', '2018-07-06 14:04:13');
INSERT INTO `admin_operation_log` VALUES ('649', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 14:35:46', '2018-07-06 14:35:46');
INSERT INTO `admin_operation_log` VALUES ('650', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 14:38:53', '2018-07-06 14:38:53');
INSERT INTO `admin_operation_log` VALUES ('651', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 14:44:02', '2018-07-06 14:44:02');
INSERT INTO `admin_operation_log` VALUES ('652', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 14:47:02', '2018-07-06 14:47:02');
INSERT INTO `admin_operation_log` VALUES ('653', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 14:48:38', '2018-07-06 14:48:38');
INSERT INTO `admin_operation_log` VALUES ('654', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 14:51:42', '2018-07-06 14:51:42');
INSERT INTO `admin_operation_log` VALUES ('655', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 14:52:14', '2018-07-06 14:52:14');
INSERT INTO `admin_operation_log` VALUES ('656', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 14:52:37', '2018-07-06 14:52:37');
INSERT INTO `admin_operation_log` VALUES ('657', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 14:53:13', '2018-07-06 14:53:13');
INSERT INTO `admin_operation_log` VALUES ('658', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 14:53:35', '2018-07-06 14:53:35');
INSERT INTO `admin_operation_log` VALUES ('659', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 14:53:42', '2018-07-06 14:53:42');
INSERT INTO `admin_operation_log` VALUES ('660', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 14:53:57', '2018-07-06 14:53:57');
INSERT INTO `admin_operation_log` VALUES ('661', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 14:54:01', '2018-07-06 14:54:01');
INSERT INTO `admin_operation_log` VALUES ('662', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 14:57:04', '2018-07-06 14:57:04');
INSERT INTO `admin_operation_log` VALUES ('663', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 14:59:37', '2018-07-06 14:59:37');
INSERT INTO `admin_operation_log` VALUES ('664', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:05:06', '2018-07-06 15:05:06');
INSERT INTO `admin_operation_log` VALUES ('665', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:05:46', '2018-07-06 15:05:46');
INSERT INTO `admin_operation_log` VALUES ('666', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:06:08', '2018-07-06 15:06:08');
INSERT INTO `admin_operation_log` VALUES ('667', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:06:54', '2018-07-06 15:06:54');
INSERT INTO `admin_operation_log` VALUES ('668', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:07:31', '2018-07-06 15:07:31');
INSERT INTO `admin_operation_log` VALUES ('669', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:08:45', '2018-07-06 15:08:45');
INSERT INTO `admin_operation_log` VALUES ('670', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:09:37', '2018-07-06 15:09:37');
INSERT INTO `admin_operation_log` VALUES ('671', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:10:01', '2018-07-06 15:10:01');
INSERT INTO `admin_operation_log` VALUES ('672', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:10:24', '2018-07-06 15:10:24');
INSERT INTO `admin_operation_log` VALUES ('673', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:11:18', '2018-07-06 15:11:18');
INSERT INTO `admin_operation_log` VALUES ('674', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:13:28', '2018-07-06 15:13:28');
INSERT INTO `admin_operation_log` VALUES ('675', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:13:53', '2018-07-06 15:13:53');
INSERT INTO `admin_operation_log` VALUES ('676', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:14:06', '2018-07-06 15:14:06');
INSERT INTO `admin_operation_log` VALUES ('677', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:33:51', '2018-07-06 15:33:51');
INSERT INTO `admin_operation_log` VALUES ('678', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:34:20', '2018-07-06 15:34:20');
INSERT INTO `admin_operation_log` VALUES ('679', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:35:04', '2018-07-06 15:35:04');
INSERT INTO `admin_operation_log` VALUES ('680', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:35:45', '2018-07-06 15:35:45');
INSERT INTO `admin_operation_log` VALUES ('681', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:35:46', '2018-07-06 15:35:46');
INSERT INTO `admin_operation_log` VALUES ('682', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:36:51', '2018-07-06 15:36:51');
INSERT INTO `admin_operation_log` VALUES ('683', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:36:52', '2018-07-06 15:36:52');
INSERT INTO `admin_operation_log` VALUES ('684', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:36:53', '2018-07-06 15:36:53');
INSERT INTO `admin_operation_log` VALUES ('685', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:36:54', '2018-07-06 15:36:54');
INSERT INTO `admin_operation_log` VALUES ('686', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:37:40', '2018-07-06 15:37:40');
INSERT INTO `admin_operation_log` VALUES ('687', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:37:47', '2018-07-06 15:37:47');
INSERT INTO `admin_operation_log` VALUES ('688', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:37:57', '2018-07-06 15:37:57');
INSERT INTO `admin_operation_log` VALUES ('689', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:38:16', '2018-07-06 15:38:16');
INSERT INTO `admin_operation_log` VALUES ('690', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:39:04', '2018-07-06 15:39:04');
INSERT INTO `admin_operation_log` VALUES ('691', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:39:39', '2018-07-06 15:39:39');
INSERT INTO `admin_operation_log` VALUES ('692', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:40:29', '2018-07-06 15:40:29');
INSERT INTO `admin_operation_log` VALUES ('693', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:41:04', '2018-07-06 15:41:04');
INSERT INTO `admin_operation_log` VALUES ('694', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:41:08', '2018-07-06 15:41:08');
INSERT INTO `admin_operation_log` VALUES ('695', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:42:16', '2018-07-06 15:42:16');
INSERT INTO `admin_operation_log` VALUES ('696', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:43:15', '2018-07-06 15:43:15');
INSERT INTO `admin_operation_log` VALUES ('697', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":\"PHP\\u5de5\\u7a0b\\u5e08\",\"experience\":\"2\",\"education\":\"2\",\"type\":\"2\",\"departme\":\"4\",\"position\":\"2\",\"num\":\"1\",\"publish\":\"on\",\"description\":\"<p>\\u804c\\u4f4d\\u63cf\\u8ff0<\\/p>\",\"claim\":\"<p>\\u5c97\\u4f4d\\u9700\\u6c42<\\/p>\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 15:44:03', '2018-07-06 15:44:03');
INSERT INTO `admin_operation_log` VALUES ('698', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:44:04', '2018-07-06 15:44:04');
INSERT INTO `admin_operation_log` VALUES ('699', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:44:19', '2018-07-06 15:44:19');
INSERT INTO `admin_operation_log` VALUES ('700', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:45:01', '2018-07-06 15:45:01');
INSERT INTO `admin_operation_log` VALUES ('701', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":\"PHP\\u9ad8\\u7ea7\\u5de5\\u7a0b\\u5e08\",\"experience\":\"2\",\"education\":\"2\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\",\"district\":\"\\u4e1c\\u57ce\\u533a\",\"type\":\"2\",\"departme\":\"4\",\"position\":\"2\",\"num\":\"8\",\"publish\":\"on\",\"description\":\"<p>\\u804c\\u4f4d\\u63cf\\u8ff0<\\/p>\",\"claim\":\"<p>\\u5c97\\u4f4d\\u8981\\u6c42<\\/p>\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 15:45:32', '2018-07-06 15:45:32');
INSERT INTO `admin_operation_log` VALUES ('702', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:45:32', '2018-07-06 15:45:32');
INSERT INTO `admin_operation_log` VALUES ('703', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:56:43', '2018-07-06 15:56:43');
INSERT INTO `admin_operation_log` VALUES ('704', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":\"\\u62db\\u8058\\u5c97\\u4f4d\",\"experience\":\"2\",\"education\":\"2\",\"province\":\"\\u6cb3\\u5317\\u7701\",\"city\":\"\\u77f3\\u5bb6\\u5e84\\u5e02\",\"district\":\"\\u957f\\u5b89\\u533a\",\"type\":\"1\",\"departme\":\"3\",\"position\":\"2\",\"num\":\"4\",\"publish\":\"on\",\"description\":\"<p>111111111<\\/p>\",\"claim\":\"<p>222222222<\\/p>\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 15:57:01', '2018-07-06 15:57:01');
INSERT INTO `admin_operation_log` VALUES ('705', '1', 'admin/position', 'GET', '127.0.0.1', '[]', '2018-07-06 15:57:01', '2018-07-06 15:57:01');
INSERT INTO `admin_operation_log` VALUES ('706', '1', 'admin/position', 'GET', '127.0.0.1', '[]', '2018-07-06 15:57:21', '2018-07-06 15:57:21');
INSERT INTO `admin_operation_log` VALUES ('707', '1', 'admin/position', 'GET', '127.0.0.1', '[]', '2018-07-06 15:57:23', '2018-07-06 15:57:23');
INSERT INTO `admin_operation_log` VALUES ('708', '1', 'admin/position', 'GET', '127.0.0.1', '[]', '2018-07-06 15:57:31', '2018-07-06 15:57:31');
INSERT INTO `admin_operation_log` VALUES ('709', '1', 'admin/position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-06 15:57:34', '2018-07-06 15:57:34');
INSERT INTO `admin_operation_log` VALUES ('710', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:57:53', '2018-07-06 15:57:53');
INSERT INTO `admin_operation_log` VALUES ('711', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":\"editor\",\"experience\":\"2\",\"education\":\"2\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\",\"district\":\"\\u4e1c\\u57ce\\u533a\",\"type\":\"2\",\"departme\":\"3\",\"position\":\"2\",\"num\":\"2\",\"publish\":\"on\",\"description\":\"<p>111111<\\/p>\",\"claim\":\"<p>1111112<\\/p>\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 15:58:16', '2018-07-06 15:58:16');
INSERT INTO `admin_operation_log` VALUES ('712', '1', 'admin/position', 'GET', '127.0.0.1', '[]', '2018-07-06 15:59:09', '2018-07-06 15:59:09');
INSERT INTO `admin_operation_log` VALUES ('713', '1', 'admin/position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-06 15:59:15', '2018-07-06 15:59:15');
INSERT INTO `admin_operation_log` VALUES ('714', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 15:59:18', '2018-07-06 15:59:18');
INSERT INTO `admin_operation_log` VALUES ('715', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":\"\\u62db\\u8058\\u5c97\\u4f4d\",\"experience\":\"2\",\"education\":\"2\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\",\"district\":\"\\u4e1c\\u57ce\\u533a\",\"type\":\"2\",\"departme\":\"4\",\"position\":\"2\",\"num\":\"4\",\"publish\":\"on\",\"description\":\"<p>1111<\\/p>\",\"claim\":\"<p>222<\\/p>\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 15:59:39', '2018-07-06 15:59:39');
INSERT INTO `admin_operation_log` VALUES ('716', '1', 'admin/position', 'GET', '127.0.0.1', '[]', '2018-07-06 16:00:01', '2018-07-06 16:00:01');
INSERT INTO `admin_operation_log` VALUES ('717', '1', 'admin/position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-06 16:00:03', '2018-07-06 16:00:03');
INSERT INTO `admin_operation_log` VALUES ('718', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 16:00:06', '2018-07-06 16:00:06');
INSERT INTO `admin_operation_log` VALUES ('719', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 16:06:33', '2018-07-06 16:06:33');
INSERT INTO `admin_operation_log` VALUES ('720', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":\"\\u62db\\u8058\\u5c97\\u4f4d\",\"experience\":\"2\",\"education\":\"2\",\"province\":\"\\u5185\\u8499\\u53e4\\u81ea\\u6cbb\\u533a\",\"city\":\"\\u547c\\u548c\\u6d69\\u7279\\u5e02\",\"district\":\"\\u65b0\\u57ce\\u533a\",\"type\":\"2\",\"departme\":\"3\",\"position\":\"2\",\"num\":\"4\",\"publish\":\"on\",\"description\":\"<p>1111111<\\/p>\",\"claim\":\"<p>111222222<\\/p>\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 16:06:56', '2018-07-06 16:06:56');
INSERT INTO `admin_operation_log` VALUES ('721', '1', 'admin/position', 'GET', '127.0.0.1', '[]', '2018-07-06 16:07:46', '2018-07-06 16:07:46');
INSERT INTO `admin_operation_log` VALUES ('722', '1', 'admin/position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-06 16:07:49', '2018-07-06 16:07:49');
INSERT INTO `admin_operation_log` VALUES ('723', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 16:07:51', '2018-07-06 16:07:51');
INSERT INTO `admin_operation_log` VALUES ('724', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":\"\\u62db\\u8058\\u5c97\\u4f4d\",\"experience\":\"2\",\"education\":\"1\",\"province\":\"\\u5185\\u8499\\u53e4\\u81ea\\u6cbb\\u533a\",\"city\":\"\\u547c\\u548c\\u6d69\\u7279\\u5e02\",\"district\":\"\\u65b0\\u57ce\\u533a\",\"type\":\"2\",\"departme\":\"4\",\"position\":\"2\",\"num\":\"3\",\"publish\":\"on\",\"description\":\"<p>1111111<\\/p>\",\"claim\":\"<p>222222<\\/p>\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 16:08:07', '2018-07-06 16:08:07');
INSERT INTO `admin_operation_log` VALUES ('725', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 16:08:08', '2018-07-06 16:08:08');
INSERT INTO `admin_operation_log` VALUES ('726', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 16:08:36', '2018-07-06 16:08:36');
INSERT INTO `admin_operation_log` VALUES ('727', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":\"\\u62db\\u8058\\u5c97\\u4f4d\",\"experience\":\"2\",\"education\":\"2\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\",\"district\":\"\\u4e1c\\u57ce\\u533a\",\"type\":\"2\",\"departme\":\"3\",\"position\":\"2\",\"num\":\"2\",\"publish\":\"on\",\"description\":\"<p>11111111<\\/p>\",\"claim\":\"<p>22222222<\\/p>\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 16:08:56', '2018-07-06 16:08:56');
INSERT INTO `admin_operation_log` VALUES ('728', '1', 'admin/position', 'GET', '127.0.0.1', '[]', '2018-07-06 16:08:56', '2018-07-06 16:08:56');
INSERT INTO `admin_operation_log` VALUES ('729', '1', 'admin/position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-06 16:09:37', '2018-07-06 16:09:37');
INSERT INTO `admin_operation_log` VALUES ('730', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 16:09:39', '2018-07-06 16:09:39');
INSERT INTO `admin_operation_log` VALUES ('731', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":\"\\u62db\\u8058\\u5c97\\u4f4d\",\"experience\":\"2\",\"education\":\"3\",\"province\":\"\\u5c71\\u897f\\u7701\",\"city\":\"\\u592a\\u539f\\u5e02\",\"district\":\"\\u5c0f\\u5e97\\u533a\",\"type\":\"2\",\"departme\":\"3\",\"position\":\"2\",\"num\":\"2\",\"publish\":\"on\",\"description\":\"<p>11111111111<\\/p>\",\"claim\":\"<p>333333333<\\/p>\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 16:09:55', '2018-07-06 16:09:55');
INSERT INTO `admin_operation_log` VALUES ('732', '1', 'admin/position', 'GET', '127.0.0.1', '[]', '2018-07-06 16:12:53', '2018-07-06 16:12:53');
INSERT INTO `admin_operation_log` VALUES ('733', '1', 'admin/position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-06 16:12:55', '2018-07-06 16:12:55');
INSERT INTO `admin_operation_log` VALUES ('734', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 16:12:58', '2018-07-06 16:12:58');
INSERT INTO `admin_operation_log` VALUES ('735', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":\"\\u62db\\u8058\\u5c97\\u4f4d\",\"experience\":\"2\",\"education\":\"1\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\",\"district\":\"\\u4e1c\\u57ce\\u533a\",\"type\":\"2\",\"departme\":\"4\",\"position\":\"2\",\"num\":\"4\",\"publish\":\"on\",\"description\":\"<p>1111111111111<\\/p>\",\"claim\":\"<p>111111111111<\\/p>\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 16:13:15', '2018-07-06 16:13:15');
INSERT INTO `admin_operation_log` VALUES ('736', '1', 'admin/position', 'GET', '127.0.0.1', '[]', '2018-07-06 16:14:41', '2018-07-06 16:14:41');
INSERT INTO `admin_operation_log` VALUES ('737', '1', 'admin/position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-06 16:14:42', '2018-07-06 16:14:42');
INSERT INTO `admin_operation_log` VALUES ('738', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 16:14:44', '2018-07-06 16:14:44');
INSERT INTO `admin_operation_log` VALUES ('739', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":\"\\u62db\\u8058\\u5c97\\u4f4d\",\"experience\":\"2\",\"education\":\"2\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\",\"district\":\"\\u4e1c\\u57ce\\u533a\",\"type\":\"1\",\"departme\":\"4\",\"position\":\"2\",\"num\":\"3\",\"publish\":\"on\",\"description\":\"<p>1111111<\\/p>\",\"claim\":\"<p>2222222<\\/p>\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 16:14:59', '2018-07-06 16:14:59');
INSERT INTO `admin_operation_log` VALUES ('740', '1', 'admin/position', 'GET', '127.0.0.1', '[]', '2018-07-06 16:17:10', '2018-07-06 16:17:10');
INSERT INTO `admin_operation_log` VALUES ('741', '1', 'admin/position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-06 16:17:12', '2018-07-06 16:17:12');
INSERT INTO `admin_operation_log` VALUES ('742', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 16:17:14', '2018-07-06 16:17:14');
INSERT INTO `admin_operation_log` VALUES ('743', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":\"\\u62db\\u8058\\u5c97\\u4f4d\",\"experience\":\"2\",\"education\":\"2\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\",\"district\":\"\\u4e1c\\u57ce\\u533a\",\"type\":\"2\",\"departme\":\"4\",\"position\":\"2\",\"num\":\"3\",\"publish\":\"on\",\"description\":\"<p>111111111111<\\/p>\",\"claim\":\"<p>222222222<\\/p>\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 16:17:27', '2018-07-06 16:17:27');
INSERT INTO `admin_operation_log` VALUES ('744', '1', 'admin/position', 'GET', '127.0.0.1', '[]', '2018-07-06 16:28:05', '2018-07-06 16:28:05');
INSERT INTO `admin_operation_log` VALUES ('745', '1', 'admin/position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-06 16:28:09', '2018-07-06 16:28:09');
INSERT INTO `admin_operation_log` VALUES ('746', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 16:28:11', '2018-07-06 16:28:11');
INSERT INTO `admin_operation_log` VALUES ('747', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":\"\\u62db\\u8058\\u5c97\\u4f4d\",\"experience\":\"2\",\"education\":\"2\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\",\"district\":\"\\u4e1c\\u57ce\\u533a\",\"type\":\"2\",\"departme\":\"4\",\"position\":\"2\",\"num\":\"3\",\"publish\":\"on\",\"description\":\"<p>111111<\\/p>\",\"claim\":\"<p>3333333<\\/p>\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 16:28:27', '2018-07-06 16:28:27');
INSERT INTO `admin_operation_log` VALUES ('748', '1', 'admin/position', 'GET', '127.0.0.1', '[]', '2018-07-06 16:28:28', '2018-07-06 16:28:28');
INSERT INTO `admin_operation_log` VALUES ('749', '1', 'admin/position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-06 16:28:37', '2018-07-06 16:28:37');
INSERT INTO `admin_operation_log` VALUES ('750', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 16:28:38', '2018-07-06 16:28:38');
INSERT INTO `admin_operation_log` VALUES ('751', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":\"editor\",\"experience\":\"2\",\"education\":\"2\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\",\"district\":\"\\u4e1c\\u57ce\\u533a\",\"type\":\"1\",\"departme\":\"3\",\"position\":\"1\",\"num\":\"4\",\"publish\":\"on\",\"description\":\"<p>22222222<\\/p>\",\"claim\":\"<p>22222222222222<\\/p>\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 16:28:56', '2018-07-06 16:28:56');
INSERT INTO `admin_operation_log` VALUES ('752', '1', 'admin/position', 'GET', '127.0.0.1', '[]', '2018-07-06 16:29:41', '2018-07-06 16:29:41');
INSERT INTO `admin_operation_log` VALUES ('753', '1', 'admin/position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-06 16:29:42', '2018-07-06 16:29:42');
INSERT INTO `admin_operation_log` VALUES ('754', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 16:29:51', '2018-07-06 16:29:51');
INSERT INTO `admin_operation_log` VALUES ('755', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":\"\\u62db\\u8058\\u5c97\\u4f4d\",\"experience\":\"2\",\"education\":\"2\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\",\"district\":\"\\u4e1c\\u57ce\\u533a\",\"type\":\"2\",\"departme\":\"4\",\"position\":null,\"num\":\"3\",\"publish\":\"on\",\"description\":\"<p>111111111<\\/p>\",\"claim\":\"<p>2222222222<\\/p>\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 16:30:12', '2018-07-06 16:30:12');
INSERT INTO `admin_operation_log` VALUES ('756', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 16:30:12', '2018-07-06 16:30:12');
INSERT INTO `admin_operation_log` VALUES ('757', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 16:30:24', '2018-07-06 16:30:24');
INSERT INTO `admin_operation_log` VALUES ('758', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":\"\\u62db\\u8058\\u5c97\\u4f4d\",\"experience\":\"2\",\"education\":\"2\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\",\"district\":\"\\u4e1c\\u57ce\\u533a\",\"type\":\"2\",\"departme\":\"4\",\"position\":\"2\",\"num\":\"4\",\"publish\":\"on\",\"description\":\"<p>222222222<\\/p>\",\"claim\":\"<p>2222222222222<\\/p>\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 16:30:40', '2018-07-06 16:30:40');
INSERT INTO `admin_operation_log` VALUES ('759', '1', 'admin/position', 'GET', '127.0.0.1', '[]', '2018-07-06 16:31:00', '2018-07-06 16:31:00');
INSERT INTO `admin_operation_log` VALUES ('760', '1', 'admin/position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-06 16:31:02', '2018-07-06 16:31:02');
INSERT INTO `admin_operation_log` VALUES ('761', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 16:31:04', '2018-07-06 16:31:04');
INSERT INTO `admin_operation_log` VALUES ('762', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":\"\\u62db\\u8058\\u5c97\\u4f4d\",\"experience\":\"1\",\"education\":\"2\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\",\"district\":\"\\u4e1c\\u57ce\\u533a\",\"type\":\"2\",\"departme\":\"4\",\"position\":\"2\",\"num\":\"3\",\"publish\":\"on\",\"description\":\"<p>2<\\/p>\",\"claim\":\"<p>2222222222222<\\/p>\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 16:31:18', '2018-07-06 16:31:18');
INSERT INTO `admin_operation_log` VALUES ('763', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 16:31:18', '2018-07-06 16:31:18');
INSERT INTO `admin_operation_log` VALUES ('764', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 16:31:54', '2018-07-06 16:31:54');
INSERT INTO `admin_operation_log` VALUES ('765', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 16:31:55', '2018-07-06 16:31:55');
INSERT INTO `admin_operation_log` VALUES ('766', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":\"\\u62db\\u8058\\u5c97\\u4f4d\",\"experience\":\"2\",\"education\":\"2\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\",\"district\":\"\\u4e1c\\u57ce\\u533a\",\"type\":\"2\",\"departme\":\"4\",\"position\":\"2\",\"num\":\"2\",\"publish\":\"on\",\"description\":\"<p>111111111<\\/p>\",\"claim\":\"<p>222222222<\\/p>\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 16:32:10', '2018-07-06 16:32:10');
INSERT INTO `admin_operation_log` VALUES ('767', '1', 'admin/position', 'GET', '127.0.0.1', '[]', '2018-07-06 16:32:19', '2018-07-06 16:32:19');
INSERT INTO `admin_operation_log` VALUES ('768', '1', 'admin/position', 'GET', '127.0.0.1', '[]', '2018-07-06 16:32:37', '2018-07-06 16:32:37');
INSERT INTO `admin_operation_log` VALUES ('769', '1', 'admin/position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-06 16:32:39', '2018-07-06 16:32:39');
INSERT INTO `admin_operation_log` VALUES ('770', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 16:32:41', '2018-07-06 16:32:41');
INSERT INTO `admin_operation_log` VALUES ('771', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":\"\\u62db\\u8058\\u5c97\\u4f4d\",\"experience\":\"2\",\"education\":\"2\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\",\"district\":\"\\u4e1c\\u57ce\\u533a\",\"type\":\"1\",\"departme\":\"4\",\"position\":\"2\",\"num\":\"3\",\"publish\":\"on\",\"description\":\"<p>111111111<\\/p>\",\"claim\":\"<p>22222222<\\/p>\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 16:32:56', '2018-07-06 16:32:56');
INSERT INTO `admin_operation_log` VALUES ('772', '1', 'admin/position', 'GET', '127.0.0.1', '[]', '2018-07-06 16:33:23', '2018-07-06 16:33:23');
INSERT INTO `admin_operation_log` VALUES ('773', '1', 'admin/position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-06 16:33:26', '2018-07-06 16:33:26');
INSERT INTO `admin_operation_log` VALUES ('774', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 16:33:28', '2018-07-06 16:33:28');
INSERT INTO `admin_operation_log` VALUES ('775', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":\"\\u62db\\u8058\\u5c97\\u4f4d\",\"experience\":\"2\",\"education\":\"2\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\",\"district\":\"\\u4e1c\\u57ce\\u533a\",\"type\":\"2\",\"departme\":null,\"position\":\"2\",\"num\":\"3\",\"publish\":\"on\",\"description\":\"<p>111111<\\/p>\",\"claim\":\"<p>11111111<\\/p>\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 16:33:40', '2018-07-06 16:33:40');
INSERT INTO `admin_operation_log` VALUES ('776', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 16:33:41', '2018-07-06 16:33:41');
INSERT INTO `admin_operation_log` VALUES ('777', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 16:33:45', '2018-07-06 16:33:45');
INSERT INTO `admin_operation_log` VALUES ('778', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 16:33:47', '2018-07-06 16:33:47');
INSERT INTO `admin_operation_log` VALUES ('779', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":\"editor\",\"experience\":\"2\",\"education\":\"2\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\",\"district\":\"\\u4e1c\\u57ce\\u533a\",\"type\":\"1\",\"departme\":\"4\",\"position\":\"2\",\"num\":\"3\",\"publish\":\"on\",\"description\":\"<p>1111<\\/p>\",\"claim\":\"<p>222222<\\/p>\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 16:34:18', '2018-07-06 16:34:18');
INSERT INTO `admin_operation_log` VALUES ('780', '1', 'admin/position', 'GET', '127.0.0.1', '[]', '2018-07-06 16:35:00', '2018-07-06 16:35:00');
INSERT INTO `admin_operation_log` VALUES ('781', '1', 'admin/position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-06 16:35:03', '2018-07-06 16:35:03');
INSERT INTO `admin_operation_log` VALUES ('782', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 16:35:06', '2018-07-06 16:35:06');
INSERT INTO `admin_operation_log` VALUES ('783', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":\"\\u62db\\u8058\\u5c97\\u4f4d\",\"experience\":\"2\",\"education\":\"2\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\",\"district\":\"\\u4e1c\\u57ce\\u533a\",\"type\":\"2\",\"departme\":\"3\",\"position\":\"2\",\"num\":\"3\",\"publish\":\"on\",\"description\":\"<p>11111111111<\\/p>\",\"claim\":\"<p>2222222222222<\\/p>\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 16:35:28', '2018-07-06 16:35:28');
INSERT INTO `admin_operation_log` VALUES ('784', '1', 'admin/position', 'GET', '127.0.0.1', '[]', '2018-07-06 16:35:28', '2018-07-06 16:35:28');
INSERT INTO `admin_operation_log` VALUES ('785', '1', 'admin/position', 'GET', '127.0.0.1', '[]', '2018-07-06 16:35:53', '2018-07-06 16:35:53');
INSERT INTO `admin_operation_log` VALUES ('786', '1', 'admin/position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-06 16:37:05', '2018-07-06 16:37:05');
INSERT INTO `admin_operation_log` VALUES ('787', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 16:37:06', '2018-07-06 16:37:06');
INSERT INTO `admin_operation_log` VALUES ('788', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 16:37:47', '2018-07-06 16:37:47');
INSERT INTO `admin_operation_log` VALUES ('789', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":null,\"experience\":\"2\",\"education\":\"3\",\"area\":\"2\",\"type\":\"2\",\"departme\":\"4\",\"position\":\"2\",\"num\":\"4\",\"publish\":\"on\",\"description\":\"<p>111111111<\\/p>\",\"claim\":\"<p>2222222222222<\\/p>\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 16:38:09', '2018-07-06 16:38:09');
INSERT INTO `admin_operation_log` VALUES ('790', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 16:38:09', '2018-07-06 16:38:09');
INSERT INTO `admin_operation_log` VALUES ('791', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":\"PHP\\u9ad8\\u7ea7\\u5de5\\u7a0b\\u5e08\",\"experience\":\"2\",\"education\":\"3\",\"area\":\"2\",\"type\":\"2\",\"departme\":\"4\",\"position\":\"2\",\"num\":\"4\",\"publish\":\"on\",\"description\":\"<p>111111111<\\/p>\",\"claim\":\"<p>2222222222222<\\/p>\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 16:38:20', '2018-07-06 16:38:20');
INSERT INTO `admin_operation_log` VALUES ('792', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 16:38:21', '2018-07-06 16:38:21');
INSERT INTO `admin_operation_log` VALUES ('793', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 16:39:10', '2018-07-06 16:39:10');
INSERT INTO `admin_operation_log` VALUES ('794', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":\"PHP\\u9ad8\\u7ea7\\u5de5\\u7a0b\\u5e08\",\"experience\":\"1\",\"education\":\"1\",\"city\":\"2\",\"type\":null,\"departme\":\"4\",\"position\":\"2\",\"num\":\"3\",\"publish\":\"on\",\"description\":\"<p>111111111111<\\/p>\",\"claim\":\"<p>22222222222<\\/p>\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 16:39:30', '2018-07-06 16:39:30');
INSERT INTO `admin_operation_log` VALUES ('795', '1', 'admin/position/create', 'GET', '127.0.0.1', '[]', '2018-07-06 16:39:31', '2018-07-06 16:39:31');
INSERT INTO `admin_operation_log` VALUES ('796', '1', 'admin/position', 'POST', '127.0.0.1', '{\"title\":\"PHP\\u9ad8\\u7ea7\\u5de5\\u7a0b\\u5e08\",\"experience\":\"1\",\"education\":\"1\",\"city\":\"2\",\"type\":\"1\",\"departme\":\"4\",\"position\":\"2\",\"num\":\"3\",\"publish\":\"on\",\"description\":\"<p>111111111111<\\/p>\",\"claim\":\"<p>22222222222<\\/p>\",\"_token\":\"6U8KExwSmy3RYCXtkdPN8xVjOvgwxUlydGbDUqLO\"}', '2018-07-06 16:39:35', '2018-07-06 16:39:35');
INSERT INTO `admin_operation_log` VALUES ('797', '1', 'admin/position', 'GET', '127.0.0.1', '[]', '2018-07-06 16:39:35', '2018-07-06 16:39:35');
INSERT INTO `admin_operation_log` VALUES ('798', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-07 09:11:16', '2018-07-07 09:11:16');
INSERT INTO `admin_operation_log` VALUES ('799', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:11:22', '2018-07-07 09:11:22');
INSERT INTO `admin_operation_log` VALUES ('800', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:21:47', '2018-07-07 09:21:47');
INSERT INTO `admin_operation_log` VALUES ('801', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:22:12', '2018-07-07 09:22:12');
INSERT INTO `admin_operation_log` VALUES ('802', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:22:26', '2018-07-07 09:22:26');
INSERT INTO `admin_operation_log` VALUES ('803', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-07 09:22:33', '2018-07-07 09:22:33');
INSERT INTO `admin_operation_log` VALUES ('804', '2', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:22:38', '2018-07-07 09:22:38');
INSERT INTO `admin_operation_log` VALUES ('805', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:22:41', '2018-07-07 09:22:41');
INSERT INTO `admin_operation_log` VALUES ('806', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:23:11', '2018-07-07 09:23:11');
INSERT INTO `admin_operation_log` VALUES ('807', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-07 09:23:15', '2018-07-07 09:23:15');
INSERT INTO `admin_operation_log` VALUES ('808', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:23:18', '2018-07-07 09:23:18');
INSERT INTO `admin_operation_log` VALUES ('809', '1', 'admin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:23:22', '2018-07-07 09:23:22');
INSERT INTO `admin_operation_log` VALUES ('810', '1', 'admin/auth/menu/6', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Menu\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[\"1\",null],\"_token\":\"7gLogDLtqHESTaxy1mkMwAPNCLQvHkvIeNzqT2Xf\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/menu\"}', '2018-07-07 09:23:33', '2018-07-07 09:23:33');
INSERT INTO `admin_operation_log` VALUES ('811', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-07 09:23:34', '2018-07-07 09:23:34');
INSERT INTO `admin_operation_log` VALUES ('812', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:23:54', '2018-07-07 09:23:54');
INSERT INTO `admin_operation_log` VALUES ('813', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-07 09:24:00', '2018-07-07 09:24:00');
INSERT INTO `admin_operation_log` VALUES ('814', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:24:11', '2018-07-07 09:24:11');
INSERT INTO `admin_operation_log` VALUES ('815', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-07 09:25:09', '2018-07-07 09:25:09');
INSERT INTO `admin_operation_log` VALUES ('816', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:25:18', '2018-07-07 09:25:18');
INSERT INTO `admin_operation_log` VALUES ('817', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-07 09:26:12', '2018-07-07 09:26:12');
INSERT INTO `admin_operation_log` VALUES ('818', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-07 09:26:31', '2018-07-07 09:26:31');
INSERT INTO `admin_operation_log` VALUES ('819', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:26:39', '2018-07-07 09:26:39');
INSERT INTO `admin_operation_log` VALUES ('820', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:26:41', '2018-07-07 09:26:41');
INSERT INTO `admin_operation_log` VALUES ('821', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:27:18', '2018-07-07 09:27:18');
INSERT INTO `admin_operation_log` VALUES ('822', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-07 09:27:24', '2018-07-07 09:27:24');
INSERT INTO `admin_operation_log` VALUES ('823', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:27:26', '2018-07-07 09:27:26');
INSERT INTO `admin_operation_log` VALUES ('824', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-07 09:27:48', '2018-07-07 09:27:48');
INSERT INTO `admin_operation_log` VALUES ('825', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-07 09:28:50', '2018-07-07 09:28:50');
INSERT INTO `admin_operation_log` VALUES ('826', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-07 09:28:59', '2018-07-07 09:28:59');
INSERT INTO `admin_operation_log` VALUES ('827', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-07 09:30:33', '2018-07-07 09:30:33');
INSERT INTO `admin_operation_log` VALUES ('828', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-07 09:30:55', '2018-07-07 09:30:55');
INSERT INTO `admin_operation_log` VALUES ('829', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-07 09:33:26', '2018-07-07 09:33:26');
INSERT INTO `admin_operation_log` VALUES ('830', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-07 09:39:08', '2018-07-07 09:39:08');
INSERT INTO `admin_operation_log` VALUES ('831', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-07 09:39:37', '2018-07-07 09:39:37');
INSERT INTO `admin_operation_log` VALUES ('832', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"id\":\"4\",\"departme_name\":null,\"alias\":null,\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:39:47', '2018-07-07 09:39:47');
INSERT INTO `admin_operation_log` VALUES ('833', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:39:54', '2018-07-07 09:39:54');
INSERT INTO `admin_operation_log` VALUES ('834', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-07 09:40:04', '2018-07-07 09:40:04');
INSERT INTO `admin_operation_log` VALUES ('835', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:40:09', '2018-07-07 09:40:09');
INSERT INTO `admin_operation_log` VALUES ('836', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:40:13', '2018-07-07 09:40:13');
INSERT INTO `admin_operation_log` VALUES ('837', '1', 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"gdchen\",\"name\":\"chenguodong\",\"password\":\"$2y$10$w4CEgIn9Udn6XCbftj9hYeDKn2HD2mMMQUgNhJrG4.kIbRqGqN1cS\",\"password_confirmation\":\"$2y$10$w4CEgIn9Udn6XCbftj9hYeDKn2HD2mMMQUgNhJrG4.kIbRqGqN1cS\",\"departme\":\"dongnanya\",\"roles\":[\"2\",\"3\",null],\"permissions\":[null],\"_token\":\"n9ljGG3Bd3xfQpCzLkx4oyVpT98Yw127FD7wHzHe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/users\"}', '2018-07-07 09:40:25', '2018-07-07 09:40:25');
INSERT INTO `admin_operation_log` VALUES ('838', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-07-07 09:40:26', '2018-07-07 09:40:26');
INSERT INTO `admin_operation_log` VALUES ('839', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:40:31', '2018-07-07 09:40:31');
INSERT INTO `admin_operation_log` VALUES ('840', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-07 09:40:37', '2018-07-07 09:40:37');
INSERT INTO `admin_operation_log` VALUES ('841', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:40:41', '2018-07-07 09:40:41');
INSERT INTO `admin_operation_log` VALUES ('842', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-07 09:41:12', '2018-07-07 09:41:12');
INSERT INTO `admin_operation_log` VALUES ('843', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-07 09:41:22', '2018-07-07 09:41:22');
INSERT INTO `admin_operation_log` VALUES ('844', '2', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-07 09:43:07', '2018-07-07 09:43:07');
INSERT INTO `admin_operation_log` VALUES ('845', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:43:09', '2018-07-07 09:43:09');
INSERT INTO `admin_operation_log` VALUES ('846', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-07 09:43:14', '2018-07-07 09:43:14');
INSERT INTO `admin_operation_log` VALUES ('847', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:43:16', '2018-07-07 09:43:16');
INSERT INTO `admin_operation_log` VALUES ('848', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:45:12', '2018-07-07 09:45:12');
INSERT INTO `admin_operation_log` VALUES ('849', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:45:23', '2018-07-07 09:45:23');
INSERT INTO `admin_operation_log` VALUES ('850', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:47:31', '2018-07-07 09:47:31');
INSERT INTO `admin_operation_log` VALUES ('851', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:47:46', '2018-07-07 09:47:46');
INSERT INTO `admin_operation_log` VALUES ('852', '1', 'admin/position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:48:00', '2018-07-07 09:48:00');
INSERT INTO `admin_operation_log` VALUES ('853', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:48:10', '2018-07-07 09:48:10');
INSERT INTO `admin_operation_log` VALUES ('854', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-07 09:48:15', '2018-07-07 09:48:15');
INSERT INTO `admin_operation_log` VALUES ('855', '2', 'admin/position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:48:21', '2018-07-07 09:48:21');
INSERT INTO `admin_operation_log` VALUES ('856', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:48:24', '2018-07-07 09:48:24');
INSERT INTO `admin_operation_log` VALUES ('857', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-07 09:48:30', '2018-07-07 09:48:30');
INSERT INTO `admin_operation_log` VALUES ('858', '1', 'admin/position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:59:07', '2018-07-07 09:59:07');
INSERT INTO `admin_operation_log` VALUES ('859', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:59:14', '2018-07-07 09:59:14');
INSERT INTO `admin_operation_log` VALUES ('860', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 09:59:17', '2018-07-07 09:59:17');
INSERT INTO `admin_operation_log` VALUES ('861', '1', 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:01:48', '2018-07-07 10:01:48');
INSERT INTO `admin_operation_log` VALUES ('862', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:01:58', '2018-07-07 10:01:58');
INSERT INTO `admin_operation_log` VALUES ('863', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:06:10', '2018-07-07 10:06:10');
INSERT INTO `admin_operation_log` VALUES ('864', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:06:14', '2018-07-07 10:06:14');
INSERT INTO `admin_operation_log` VALUES ('865', '1', 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"yuexiage\",\"name\":\"yuexiage\",\"password\":\"123456789\",\"password_confirmation\":\"123456789\",\"departme\":\"shichangbu\",\"roles\":[\"3\",null],\"permissions\":[null],\"_token\":\"TtHWPyyjwVmr552KVQmteFqPfMHiUzGaIA2WK1Gr\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/users\"}', '2018-07-07 10:06:52', '2018-07-07 10:06:52');
INSERT INTO `admin_operation_log` VALUES ('866', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-07-07 10:06:53', '2018-07-07 10:06:53');
INSERT INTO `admin_operation_log` VALUES ('867', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:07:00', '2018-07-07 10:07:00');
INSERT INTO `admin_operation_log` VALUES ('868', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:07:22', '2018-07-07 10:07:22');
INSERT INTO `admin_operation_log` VALUES ('869', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:07:32', '2018-07-07 10:07:32');
INSERT INTO `admin_operation_log` VALUES ('870', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:07:45', '2018-07-07 10:07:45');
INSERT INTO `admin_operation_log` VALUES ('871', '1', 'admin/departme/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:07:49', '2018-07-07 10:07:49');
INSERT INTO `admin_operation_log` VALUES ('872', '1', 'admin/departme/4', 'PUT', '127.0.0.1', '{\"departme_name\":\"\\u8d22\\u52a1\\u90e8\",\"alias\":\"caiwubu\",\"_token\":\"TtHWPyyjwVmr552KVQmteFqPfMHiUzGaIA2WK1Gr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/departme\"}', '2018-07-07 10:08:04', '2018-07-07 10:08:04');
INSERT INTO `admin_operation_log` VALUES ('873', '1', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-07 10:08:05', '2018-07-07 10:08:05');
INSERT INTO `admin_operation_log` VALUES ('874', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:08:10', '2018-07-07 10:08:10');
INSERT INTO `admin_operation_log` VALUES ('875', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:08:15', '2018-07-07 10:08:15');
INSERT INTO `admin_operation_log` VALUES ('876', '1', 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"gdchen\",\"name\":\"chenguodong\",\"password\":\"$2y$10$w4CEgIn9Udn6XCbftj9hYeDKn2HD2mMMQUgNhJrG4.kIbRqGqN1cS\",\"password_confirmation\":\"$2y$10$w4CEgIn9Udn6XCbftj9hYeDKn2HD2mMMQUgNhJrG4.kIbRqGqN1cS\",\"departme\":\"caiwubu\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"TtHWPyyjwVmr552KVQmteFqPfMHiUzGaIA2WK1Gr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/users\"}', '2018-07-07 10:08:23', '2018-07-07 10:08:23');
INSERT INTO `admin_operation_log` VALUES ('877', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-07-07 10:08:24', '2018-07-07 10:08:24');
INSERT INTO `admin_operation_log` VALUES ('878', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:08:31', '2018-07-07 10:08:31');
INSERT INTO `admin_operation_log` VALUES ('879', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:08:35', '2018-07-07 10:08:35');
INSERT INTO `admin_operation_log` VALUES ('880', '2', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-07 10:08:42', '2018-07-07 10:08:42');
INSERT INTO `admin_operation_log` VALUES ('881', '2', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:08:45', '2018-07-07 10:08:45');
INSERT INTO `admin_operation_log` VALUES ('882', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:08:49', '2018-07-07 10:08:49');
INSERT INTO `admin_operation_log` VALUES ('883', '3', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-07 10:08:59', '2018-07-07 10:08:59');
INSERT INTO `admin_operation_log` VALUES ('884', '3', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:09:03', '2018-07-07 10:09:03');
INSERT INTO `admin_operation_log` VALUES ('885', '3', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:09:11', '2018-07-07 10:09:11');
INSERT INTO `admin_operation_log` VALUES ('886', '3', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-07 10:09:38', '2018-07-07 10:09:38');
INSERT INTO `admin_operation_log` VALUES ('887', '3', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:10:08', '2018-07-07 10:10:08');
INSERT INTO `admin_operation_log` VALUES ('888', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-07 10:10:13', '2018-07-07 10:10:13');
INSERT INTO `admin_operation_log` VALUES ('889', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:10:17', '2018-07-07 10:10:17');
INSERT INTO `admin_operation_log` VALUES ('890', '1', 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:10:28', '2018-07-07 10:10:28');
INSERT INTO `admin_operation_log` VALUES ('891', '1', 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"\\u5e02\\u573a\\u90e8\\u7ecf\\u7406\",\"name\":\"\\u5e02\\u573a\\u90e8\\u7ecf\\u7406\",\"permissions\":[\"2\",\"3\",\"6\",null],\"_token\":\"Ultx5jNBSXbbJMW1RmdSkJYC1tQSFWm31cZil3ay\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/roles\"}', '2018-07-07 10:10:34', '2018-07-07 10:10:34');
INSERT INTO `admin_operation_log` VALUES ('892', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-07-07 10:10:35', '2018-07-07 10:10:35');
INSERT INTO `admin_operation_log` VALUES ('893', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:10:40', '2018-07-07 10:10:40');
INSERT INTO `admin_operation_log` VALUES ('894', '1', 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:10:43', '2018-07-07 10:10:43');
INSERT INTO `admin_operation_log` VALUES ('895', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:10:54', '2018-07-07 10:10:54');
INSERT INTO `admin_operation_log` VALUES ('896', '1', 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:11:04', '2018-07-07 10:11:04');
INSERT INTO `admin_operation_log` VALUES ('897', '1', 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"departme\",\"name\":\"\\u90e8\\u95e8\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/departme*\",\"_token\":\"Ultx5jNBSXbbJMW1RmdSkJYC1tQSFWm31cZil3ay\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/permissions\"}', '2018-07-07 10:11:15', '2018-07-07 10:11:15');
INSERT INTO `admin_operation_log` VALUES ('898', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-07-07 10:11:15', '2018-07-07 10:11:15');
INSERT INTO `admin_operation_log` VALUES ('899', '1', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:11:24', '2018-07-07 10:11:24');
INSERT INTO `admin_operation_log` VALUES ('900', '1', 'admin/departme', 'GET', '127.0.0.1', '[]', '2018-07-07 10:11:58', '2018-07-07 10:11:58');
INSERT INTO `admin_operation_log` VALUES ('901', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:12:06', '2018-07-07 10:12:06');
INSERT INTO `admin_operation_log` VALUES ('902', '3', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-07 10:12:10', '2018-07-07 10:12:10');
INSERT INTO `admin_operation_log` VALUES ('903', '3', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:12:14', '2018-07-07 10:12:14');
INSERT INTO `admin_operation_log` VALUES ('904', '3', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":\"4\",\"departme_name\":null,\"alias\":null}', '2018-07-07 10:12:40', '2018-07-07 10:12:40');
INSERT INTO `admin_operation_log` VALUES ('905', '3', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"departme_name\":null,\"alias\":null}', '2018-07-07 10:12:50', '2018-07-07 10:12:50');
INSERT INTO `admin_operation_log` VALUES ('906', '3', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:12:53', '2018-07-07 10:12:53');
INSERT INTO `admin_operation_log` VALUES ('907', '3', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":\"3\",\"departme_name\":null,\"alias\":null}', '2018-07-07 10:12:59', '2018-07-07 10:12:59');
INSERT INTO `admin_operation_log` VALUES ('908', '3', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":\"4\",\"departme_name\":null,\"alias\":null}', '2018-07-07 10:13:04', '2018-07-07 10:13:04');
INSERT INTO `admin_operation_log` VALUES ('909', '3', 'admin/departme', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:13:06', '2018-07-07 10:13:06');
INSERT INTO `admin_operation_log` VALUES ('910', '3', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:13:19', '2018-07-07 10:13:19');
INSERT INTO `admin_operation_log` VALUES ('911', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-07 10:13:25', '2018-07-07 10:13:25');
INSERT INTO `admin_operation_log` VALUES ('912', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:13:28', '2018-07-07 10:13:28');
INSERT INTO `admin_operation_log` VALUES ('913', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:13:35', '2018-07-07 10:13:35');
INSERT INTO `admin_operation_log` VALUES ('914', '1', 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"position\",\"name\":\"\\u804c\\u4f4d\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/admin\\/position*\",\"_token\":\"QpK38pgaW7NEEbUR35rdgU8iysKBtDmTcwPaeKOK\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/permissions\"}', '2018-07-07 10:14:03', '2018-07-07 10:14:03');
INSERT INTO `admin_operation_log` VALUES ('915', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-07-07 10:14:04', '2018-07-07 10:14:04');
INSERT INTO `admin_operation_log` VALUES ('916', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:14:14', '2018-07-07 10:14:14');
INSERT INTO `admin_operation_log` VALUES ('917', '1', 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:14:19', '2018-07-07 10:14:19');
INSERT INTO `admin_operation_log` VALUES ('918', '1', 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"\\u8d22\\u52a1\\u90e8\\u7ecf\\u7406\",\"name\":\"\\u8d22\\u52a1\\u90e8\\u7ecf\\u7406\",\"permissions\":[\"2\",\"3\",\"6\",\"7\",null],\"_token\":\"QpK38pgaW7NEEbUR35rdgU8iysKBtDmTcwPaeKOK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/roles\"}', '2018-07-07 10:14:23', '2018-07-07 10:14:23');
INSERT INTO `admin_operation_log` VALUES ('919', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-07-07 10:14:23', '2018-07-07 10:14:23');
INSERT INTO `admin_operation_log` VALUES ('920', '1', 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:14:25', '2018-07-07 10:14:25');
INSERT INTO `admin_operation_log` VALUES ('921', '1', 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"\\u5e02\\u573a\\u90e8\\u7ecf\\u7406\",\"name\":\"\\u5e02\\u573a\\u90e8\\u7ecf\\u7406\",\"permissions\":[\"2\",\"3\",\"6\",\"7\",null],\"_token\":\"QpK38pgaW7NEEbUR35rdgU8iysKBtDmTcwPaeKOK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/roles\"}', '2018-07-07 10:14:31', '2018-07-07 10:14:31');
INSERT INTO `admin_operation_log` VALUES ('922', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-07-07 10:14:31', '2018-07-07 10:14:31');
INSERT INTO `admin_operation_log` VALUES ('923', '1', 'admin/position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:14:36', '2018-07-07 10:14:36');
INSERT INTO `admin_operation_log` VALUES ('924', '1', 'admin/position', 'GET', '127.0.0.1', '[]', '2018-07-07 10:15:26', '2018-07-07 10:15:26');
INSERT INTO `admin_operation_log` VALUES ('925', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:16:08', '2018-07-07 10:16:08');
INSERT INTO `admin_operation_log` VALUES ('926', '1', 'admin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:16:11', '2018-07-07 10:16:11');
INSERT INTO `admin_operation_log` VALUES ('927', '1', 'admin/auth/menu/6', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u83dc\\u5355\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[\"1\",null],\"_token\":\"QpK38pgaW7NEEbUR35rdgU8iysKBtDmTcwPaeKOK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/menu\"}', '2018-07-07 10:16:18', '2018-07-07 10:16:18');
INSERT INTO `admin_operation_log` VALUES ('928', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-07 10:16:19', '2018-07-07 10:16:19');
INSERT INTO `admin_operation_log` VALUES ('929', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:16:24', '2018-07-07 10:16:24');
INSERT INTO `admin_operation_log` VALUES ('930', '1', 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"QpK38pgaW7NEEbUR35rdgU8iysKBtDmTcwPaeKOK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/menu\"}', '2018-07-07 10:16:31', '2018-07-07 10:16:31');
INSERT INTO `admin_operation_log` VALUES ('931', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-07 10:16:32', '2018-07-07 10:16:32');
INSERT INTO `admin_operation_log` VALUES ('932', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:16:38', '2018-07-07 10:16:38');
INSERT INTO `admin_operation_log` VALUES ('933', '1', 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"_token\":\"QpK38pgaW7NEEbUR35rdgU8iysKBtDmTcwPaeKOK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/menu\"}', '2018-07-07 10:16:56', '2018-07-07 10:16:56');
INSERT INTO `admin_operation_log` VALUES ('934', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-07 10:16:57', '2018-07-07 10:16:57');
INSERT INTO `admin_operation_log` VALUES ('935', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-07 10:17:00', '2018-07-07 10:17:00');
INSERT INTO `admin_operation_log` VALUES ('936', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:17:08', '2018-07-07 10:17:08');
INSERT INTO `admin_operation_log` VALUES ('937', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-07 10:18:12', '2018-07-07 10:18:12');
INSERT INTO `admin_operation_log` VALUES ('938', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:18:17', '2018-07-07 10:18:17');
INSERT INTO `admin_operation_log` VALUES ('939', '1', 'admin/position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:18:24', '2018-07-07 10:18:24');
INSERT INTO `admin_operation_log` VALUES ('940', '1', 'admin/position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:18:26', '2018-07-07 10:18:26');
INSERT INTO `admin_operation_log` VALUES ('941', '1', 'admin/position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:19:19', '2018-07-07 10:19:19');
INSERT INTO `admin_operation_log` VALUES ('942', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:19:24', '2018-07-07 10:19:24');
INSERT INTO `admin_operation_log` VALUES ('943', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:20:14', '2018-07-07 10:20:14');
INSERT INTO `admin_operation_log` VALUES ('944', '1', 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u62db\\u8058\\u7ba1\\u7406\",\"icon\":\"fa-drupal\",\"uri\":\"position\",\"roles\":[null],\"_token\":\"QpK38pgaW7NEEbUR35rdgU8iysKBtDmTcwPaeKOK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/menu\"}', '2018-07-07 10:20:23', '2018-07-07 10:20:23');
INSERT INTO `admin_operation_log` VALUES ('945', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-07 10:20:24', '2018-07-07 10:20:24');
INSERT INTO `admin_operation_log` VALUES ('946', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-07 10:20:27', '2018-07-07 10:20:27');
INSERT INTO `admin_operation_log` VALUES ('947', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5b66\\u5386\\u7ba1\\u7406\",\"icon\":\"fa-balance-scale\",\"uri\":\"education\",\"roles\":[null],\"_token\":\"QpK38pgaW7NEEbUR35rdgU8iysKBtDmTcwPaeKOK\"}', '2018-07-07 10:22:13', '2018-07-07 10:22:13');
INSERT INTO `admin_operation_log` VALUES ('948', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-07 10:22:13', '2018-07-07 10:22:13');
INSERT INTO `admin_operation_log` VALUES ('949', '1', 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:22:17', '2018-07-07 10:22:17');
INSERT INTO `admin_operation_log` VALUES ('950', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:22:20', '2018-07-07 10:22:20');
INSERT INTO `admin_operation_log` VALUES ('951', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"QpK38pgaW7NEEbUR35rdgU8iysKBtDmTcwPaeKOK\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":7}]},{\\\"id\\\":6},{\\\"id\\\":8},{\\\"id\\\":9,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12}]}]\"}', '2018-07-07 10:35:57', '2018-07-07 10:35:57');
INSERT INTO `admin_operation_log` VALUES ('952', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"QpK38pgaW7NEEbUR35rdgU8iysKBtDmTcwPaeKOK\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":7}]},{\\\"id\\\":6},{\\\"id\\\":8},{\\\"id\\\":9,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12}]}]\"}', '2018-07-07 10:35:58', '2018-07-07 10:35:58');
INSERT INTO `admin_operation_log` VALUES ('953', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:35:58', '2018-07-07 10:35:58');
INSERT INTO `admin_operation_log` VALUES ('954', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:35:59', '2018-07-07 10:35:59');
INSERT INTO `admin_operation_log` VALUES ('955', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u57ce\\u5e02\\u7ba1\\u7406\",\"icon\":\"fa-fort-awesome\",\"uri\":\"city\",\"roles\":[null],\"_token\":\"QpK38pgaW7NEEbUR35rdgU8iysKBtDmTcwPaeKOK\"}', '2018-07-07 10:37:54', '2018-07-07 10:37:54');
INSERT INTO `admin_operation_log` VALUES ('956', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-07 10:37:55', '2018-07-07 10:37:55');
INSERT INTO `admin_operation_log` VALUES ('957', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u804c\\u4f4d\\u7c7b\\u522b\\u7ba1\\u7406\",\"icon\":\"fa-server\",\"uri\":\"position_type\",\"roles\":[null],\"_token\":\"QpK38pgaW7NEEbUR35rdgU8iysKBtDmTcwPaeKOK\"}', '2018-07-07 10:56:03', '2018-07-07 10:56:03');
INSERT INTO `admin_operation_log` VALUES ('958', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-07 10:56:04', '2018-07-07 10:56:04');
INSERT INTO `admin_operation_log` VALUES ('959', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":null,\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"_token\":\"QpK38pgaW7NEEbUR35rdgU8iysKBtDmTcwPaeKOK\"}', '2018-07-07 10:56:22', '2018-07-07 10:56:22');
INSERT INTO `admin_operation_log` VALUES ('960', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-07 10:56:22', '2018-07-07 10:56:22');
INSERT INTO `admin_operation_log` VALUES ('961', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"QpK38pgaW7NEEbUR35rdgU8iysKBtDmTcwPaeKOK\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":7}]},{\\\"id\\\":6},{\\\"id\\\":8},{\\\"id\\\":9,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":13},{\\\"id\\\":14}]}]\"}', '2018-07-07 10:56:30', '2018-07-07 10:56:30');
INSERT INTO `admin_operation_log` VALUES ('962', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 10:56:32', '2018-07-07 10:56:32');
INSERT INTO `admin_operation_log` VALUES ('963', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-07 10:57:54', '2018-07-07 10:57:54');
INSERT INTO `admin_operation_log` VALUES ('964', '3', 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '[]', '2018-07-07 17:21:11', '2018-07-07 17:21:11');
INSERT INTO `admin_operation_log` VALUES ('965', '3', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 17:21:19', '2018-07-07 17:21:19');
INSERT INTO `admin_operation_log` VALUES ('966', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-07 17:21:25', '2018-07-07 17:21:25');
INSERT INTO `admin_operation_log` VALUES ('967', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 17:21:30', '2018-07-07 17:21:30');
INSERT INTO `admin_operation_log` VALUES ('968', '1', 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 17:21:34', '2018-07-07 17:21:34');
INSERT INTO `admin_operation_log` VALUES ('969', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 17:21:43', '2018-07-07 17:21:43');
INSERT INTO `admin_operation_log` VALUES ('970', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 17:21:54', '2018-07-07 17:21:54');
INSERT INTO `admin_operation_log` VALUES ('971', '1', 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 17:22:03', '2018-07-07 17:22:03');
INSERT INTO `admin_operation_log` VALUES ('972', '1', 'admin/auth/permissions/7', 'PUT', '127.0.0.1', '{\"slug\":\"position\",\"name\":\"\\u804c\\u4f4d\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"position*\",\"_token\":\"fWQg2j5U9VPQQ9kZ9DZDPBGZ1XiFVrquw4wIhYo4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/permissions\"}', '2018-07-07 17:22:10', '2018-07-07 17:22:10');
INSERT INTO `admin_operation_log` VALUES ('973', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-07-07 17:22:10', '2018-07-07 17:22:10');
INSERT INTO `admin_operation_log` VALUES ('974', '1', 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '[]', '2018-07-07 17:22:33', '2018-07-07 17:22:33');
INSERT INTO `admin_operation_log` VALUES ('975', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 17:22:38', '2018-07-07 17:22:38');
INSERT INTO `admin_operation_log` VALUES ('976', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 17:22:40', '2018-07-07 17:22:40');
INSERT INTO `admin_operation_log` VALUES ('977', '1', 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 17:22:47', '2018-07-07 17:22:47');
INSERT INTO `admin_operation_log` VALUES ('978', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 17:22:51', '2018-07-07 17:22:51');
INSERT INTO `admin_operation_log` VALUES ('979', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 17:22:55', '2018-07-07 17:22:55');
INSERT INTO `admin_operation_log` VALUES ('980', '1', 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 17:23:01', '2018-07-07 17:23:01');
INSERT INTO `admin_operation_log` VALUES ('981', '1', 'admin/auth/permissions/7', 'PUT', '127.0.0.1', '{\"slug\":\"position\",\"name\":\"\\u804c\\u4f4d\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/position*\",\"_token\":\"fWQg2j5U9VPQQ9kZ9DZDPBGZ1XiFVrquw4wIhYo4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/permissions\"}', '2018-07-07 17:23:06', '2018-07-07 17:23:06');
INSERT INTO `admin_operation_log` VALUES ('982', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-07-07 17:23:07', '2018-07-07 17:23:07');
INSERT INTO `admin_operation_log` VALUES ('983', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 17:23:13', '2018-07-07 17:23:13');
INSERT INTO `admin_operation_log` VALUES ('984', '1', 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"education\",\"name\":\"\\u5b66\\u5386\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"education\",\"_token\":\"fWQg2j5U9VPQQ9kZ9DZDPBGZ1XiFVrquw4wIhYo4\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/permissions\"}', '2018-07-07 17:23:26', '2018-07-07 17:23:26');
INSERT INTO `admin_operation_log` VALUES ('985', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-07-07 17:23:26', '2018-07-07 17:23:26');
INSERT INTO `admin_operation_log` VALUES ('986', '1', 'admin/auth/permissions/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 17:23:33', '2018-07-07 17:23:33');
INSERT INTO `admin_operation_log` VALUES ('987', '1', 'admin/auth/permissions/8', 'PUT', '127.0.0.1', '{\"slug\":\"education\",\"name\":\"\\u5b66\\u5386\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/education*\",\"_token\":\"fWQg2j5U9VPQQ9kZ9DZDPBGZ1XiFVrquw4wIhYo4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/auth\\/permissions\"}', '2018-07-07 17:23:40', '2018-07-07 17:23:40');
INSERT INTO `admin_operation_log` VALUES ('988', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-07-07 17:23:40', '2018-07-07 17:23:40');
INSERT INTO `admin_operation_log` VALUES ('989', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-07-07 18:16:13', '2018-07-07 18:16:13');
INSERT INTO `admin_operation_log` VALUES ('990', '1', 'admin/education', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 18:16:18', '2018-07-07 18:16:18');
INSERT INTO `admin_operation_log` VALUES ('991', '1', 'admin/education', 'GET', '127.0.0.1', '[]', '2018-07-07 18:28:25', '2018-07-07 18:28:25');
INSERT INTO `admin_operation_log` VALUES ('992', '1', 'admin/education', 'GET', '127.0.0.1', '[]', '2018-07-07 18:28:47', '2018-07-07 18:28:47');
INSERT INTO `admin_operation_log` VALUES ('993', '1', 'admin/education/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 18:28:50', '2018-07-07 18:28:50');
INSERT INTO `admin_operation_log` VALUES ('994', '1', 'admin/education/create', 'GET', '127.0.0.1', '[]', '2018-07-07 18:33:15', '2018-07-07 18:33:15');
INSERT INTO `admin_operation_log` VALUES ('995', '1', 'admin/education', 'POST', '127.0.0.1', '{\"name\":\"\\u5927\\u4e13\",\"_token\":\"fWQg2j5U9VPQQ9kZ9DZDPBGZ1XiFVrquw4wIhYo4\"}', '2018-07-07 18:33:22', '2018-07-07 18:33:22');
INSERT INTO `admin_operation_log` VALUES ('996', '1', 'admin/education', 'GET', '127.0.0.1', '[]', '2018-07-07 18:33:22', '2018-07-07 18:33:22');
INSERT INTO `admin_operation_log` VALUES ('997', '1', 'admin/education/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 18:33:26', '2018-07-07 18:33:26');
INSERT INTO `admin_operation_log` VALUES ('998', '1', 'admin/education/1/edit', 'GET', '127.0.0.1', '[]', '2018-07-07 18:33:44', '2018-07-07 18:33:44');
INSERT INTO `admin_operation_log` VALUES ('999', '1', 'admin/education/1/edit', 'GET', '127.0.0.1', '[]', '2018-07-07 18:34:06', '2018-07-07 18:34:06');
INSERT INTO `admin_operation_log` VALUES ('1000', '1', 'admin/education', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 18:34:56', '2018-07-07 18:34:56');
INSERT INTO `admin_operation_log` VALUES ('1001', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 18:35:00', '2018-07-07 18:35:00');
INSERT INTO `admin_operation_log` VALUES ('1002', '1', 'admin/education', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 18:35:05', '2018-07-07 18:35:05');
INSERT INTO `admin_operation_log` VALUES ('1003', '1', 'admin/education', 'GET', '127.0.0.1', '[]', '2018-07-07 18:35:11', '2018-07-07 18:35:11');
INSERT INTO `admin_operation_log` VALUES ('1004', '1', 'admin/education/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 18:35:17', '2018-07-07 18:35:17');
INSERT INTO `admin_operation_log` VALUES ('1005', '1', 'admin/education', 'POST', '127.0.0.1', '{\"name\":\"\\u5927\\u672c\",\"_token\":\"fWQg2j5U9VPQQ9kZ9DZDPBGZ1XiFVrquw4wIhYo4\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/education\"}', '2018-07-07 18:35:28', '2018-07-07 18:35:28');
INSERT INTO `admin_operation_log` VALUES ('1006', '1', 'admin/education', 'GET', '127.0.0.1', '[]', '2018-07-07 18:35:28', '2018-07-07 18:35:28');
INSERT INTO `admin_operation_log` VALUES ('1007', '1', 'admin/education/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 18:35:31', '2018-07-07 18:35:31');
INSERT INTO `admin_operation_log` VALUES ('1008', '1', 'admin/education', 'POST', '127.0.0.1', '{\"name\":\"\\u535a\\u58eb\",\"_token\":\"fWQg2j5U9VPQQ9kZ9DZDPBGZ1XiFVrquw4wIhYo4\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/education\"}', '2018-07-07 18:35:36', '2018-07-07 18:35:36');
INSERT INTO `admin_operation_log` VALUES ('1009', '1', 'admin/education', 'GET', '127.0.0.1', '[]', '2018-07-07 18:35:36', '2018-07-07 18:35:36');
INSERT INTO `admin_operation_log` VALUES ('1010', '1', 'admin/education/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-07 18:35:37', '2018-07-07 18:35:37');
INSERT INTO `admin_operation_log` VALUES ('1011', '1', 'admin/education', 'POST', '127.0.0.1', '{\"name\":\"\\u7855\\u58eb\",\"_token\":\"fWQg2j5U9VPQQ9kZ9DZDPBGZ1XiFVrquw4wIhYo4\",\"_previous_\":\"http:\\/\\/t.com\\/admin\\/education\"}', '2018-07-07 18:35:45', '2018-07-07 18:35:45');
INSERT INTO `admin_operation_log` VALUES ('1012', '1', 'admin/education', 'GET', '127.0.0.1', '[]', '2018-07-07 18:35:45', '2018-07-07 18:35:45');

-- ----------------------------
-- Table structure for `admin_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);
INSERT INTO `admin_permissions` VALUES ('6', '部门管理', 'departme', '', '/departme*', '2018-07-04 20:02:38', '2018-07-07 10:11:15');
INSERT INTO `admin_permissions` VALUES ('7', '职位管理', 'position', '', '/position*', '2018-07-07 10:14:03', '2018-07-07 17:23:06');
INSERT INTO `admin_permissions` VALUES ('8', '学历管理', 'education', '', '/education*', '2018-07-07 17:23:26', '2018-07-07 17:23:40');

-- ----------------------------
-- Table structure for `admin_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '6', null, null);

-- ----------------------------
-- Table structure for `admin_role_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '3', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '6', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '2', null, null);
INSERT INTO `admin_role_permissions` VALUES ('3', '2', null, null);
INSERT INTO `admin_role_permissions` VALUES ('3', '3', null, null);
INSERT INTO `admin_role_permissions` VALUES ('3', '6', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '7', null, null);
INSERT INTO `admin_role_permissions` VALUES ('3', '7', null, null);

-- ----------------------------
-- Table structure for `admin_role_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);
INSERT INTO `admin_role_users` VALUES ('2', '2', null, null);
INSERT INTO `admin_role_users` VALUES ('3', '3', null, null);

-- ----------------------------
-- Table structure for `admin_roles`
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2018-07-04 11:27:30', '2018-07-04 11:27:30');
INSERT INTO `admin_roles` VALUES ('2', '财务部经理', '财务部经理', '2018-07-04 11:35:05', '2018-07-04 11:35:05');
INSERT INTO `admin_roles` VALUES ('3', '市场部经理', '市场部经理', '2018-07-05 19:02:29', '2018-07-05 19:06:06');

-- ----------------------------
-- Table structure for `admin_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `admin_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departme` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '部门',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$DqDiulvJRfwgXSWIV4LhPubYIh2vhyhHGHnbMIH0ysT2rIF8o.geS', 'Administrator', null, '0msusHvNYqUR61I8gjXl7caQVHGyhjlh6oC1rtRV8sJlOa5yAXqdrojsJ39X', null, '2018-07-04 11:27:30', '2018-07-04 11:27:30');
INSERT INTO `admin_users` VALUES ('2', 'gdchen', '$2y$10$w4CEgIn9Udn6XCbftj9hYeDKn2HD2mMMQUgNhJrG4.kIbRqGqN1cS', 'chenguodong', null, 'r3PynCBGNqny9Z7qwJysaroVUIANvo44DyApJ1oK302Rqa511hwhFWefVefa', 'caiwubu', '2018-07-04 19:33:16', '2018-07-07 10:08:23');
INSERT INTO `admin_users` VALUES ('3', 'yuexiage', '$2y$10$WEGWEI3g55HiNz8fMuiZt.7Z5E2kRx56XARizRbwpa5HP9zVI2eEe', 'yuexiage', null, 'aOIaAGtNivB8I0XitAHxTYa3PCEMJ5U7Uzp8tQyimgSVItjyl229Wu4kKQJd', 'shichangbu', '2018-07-07 10:06:52', '2018-07-07 10:06:52');

-- ----------------------------
-- Table structure for `departme`
-- ----------------------------
DROP TABLE IF EXISTS `departme`;
CREATE TABLE `departme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `departme_name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `alias` varchar(50) DEFAULT NULL COMMENT '别名',
  `level` smallint(10) DEFAULT NULL COMMENT '级别',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of departme
-- ----------------------------
INSERT INTO `departme` VALUES ('3', '市场部', 'shichangbu', '1', '2018-07-05 19:43:39', '2018-07-05 19:43:39');
INSERT INTO `departme` VALUES ('4', '财务部', 'caiwubu', '1', '2018-07-07 10:08:04', '2018-07-07 10:08:04');

-- ----------------------------
-- Table structure for `education`
-- ----------------------------
DROP TABLE IF EXISTS `education`;
CREATE TABLE `education` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '学历名称',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of education
-- ----------------------------
INSERT INTO `education` VALUES ('1', '大专', '2018-07-07 18:33:22', '2018-07-07 18:33:22');
INSERT INTO `education` VALUES ('2', '大本', '2018-07-07 18:35:28', '2018-07-07 18:35:28');
INSERT INTO `education` VALUES ('3', '博士', '2018-07-07 18:35:36', '2018-07-07 18:35:36');
INSERT INTO `education` VALUES ('4', '硕士', '2018-07-07 18:35:45', '2018-07-07 18:35:45');

-- ----------------------------
-- Table structure for `failed_jobs`
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for `jobs`
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of jobs
-- ----------------------------
INSERT INTO `jobs` VALUES ('93', 'default', '{\"displayName\":\"App\\\\Events\\\\OrderShipped\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":7:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\OrderShipped\\\":2:{s:5:\\\"order\\\";s:16:\\\"418221610@qq.com\\\";s:6:\\\"socket\\\";N;}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', '0', null, '1528702947', '1528702947');
INSERT INTO `jobs` VALUES ('94', 'default', '{\"displayName\":\"App\\\\Listeners\\\\SendShipmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":7:{s:5:\\\"class\\\";s:38:\\\"App\\\\Listeners\\\\SendShipmentNotification\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\OrderShipped\\\":2:{s:5:\\\"order\\\";s:16:\\\"418221610@qq.com\\\";s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:9:\\\"timeoutAt\\\";N;s:7:\\\"timeout\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;}\"}}', '0', null, '1528702947', '1528702947');
INSERT INTO `jobs` VALUES ('95', 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendReminderEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendReminderEmail\",\"command\":\"O:26:\\\"App\\\\Jobs\\\\SendReminderEmail\\\":7:{s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', '0', null, '1528702947', '1528702947');

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_06_01_000001_create_oauth_auth_codes_table', '2');
INSERT INTO `migrations` VALUES ('4', '2016_06_01_000002_create_oauth_access_tokens_table', '2');
INSERT INTO `migrations` VALUES ('5', '2016_06_01_000003_create_oauth_refresh_tokens_table', '2');
INSERT INTO `migrations` VALUES ('6', '2016_06_01_000004_create_oauth_clients_table', '2');
INSERT INTO `migrations` VALUES ('7', '2016_06_01_000005_create_oauth_personal_access_clients_table', '2');
INSERT INTO `migrations` VALUES ('8', '2018_06_11_064137_create_jobs_table', '3');
INSERT INTO `migrations` VALUES ('9', '2018_06_11_065149_create_failed_jobs_table', '4');
INSERT INTO `migrations` VALUES ('10', '2018_06_15_103501_create_goods_table', '5');
INSERT INTO `migrations` VALUES ('11', '2016_01_04_173148_create_admin_tables', '6');
INSERT INTO `migrations` VALUES ('13', '2018_07_06_121524_create_position_table', '7');
INSERT INTO `migrations` VALUES ('14', '2018_07_07_181413_create_education_table', '8');

-- ----------------------------
-- Table structure for `oauth_access_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('0c83060d9d5a9032bfd5e18eed3efe1abafb75613c0ebbe4f8ed4e273e22bea9f7b9422ada481d43', '1', '3', null, '[]', '0', '2018-06-07 07:58:07', '2018-06-07 07:58:07', '2019-06-07 07:58:07');
INSERT INTO `oauth_access_tokens` VALUES ('4f67263db4849a0502063dc9fc1abbda835cb1906d8d8980feb8204444f68b094a6311ae18841cb0', '1', '3', null, '[]', '0', '2018-06-07 07:00:42', '2018-06-07 07:00:42', '2019-06-07 07:00:42');
INSERT INTO `oauth_access_tokens` VALUES ('673ebfdbae69602dade15d97708bd9578d0f637eecd1f6a9d09df3cee524b6c930bbe411812d82ad', '1', '3', null, '[]', '0', '2018-06-07 08:01:42', '2018-06-07 08:01:42', '2019-06-07 08:01:42');
INSERT INTO `oauth_access_tokens` VALUES ('801d1e47edf287dc6efdd65496465d346455e220a8d501d31e0804ae681182ef66cc6bae62ac9e6d', '1', '3', null, '[]', '0', '2018-06-07 07:56:28', '2018-06-07 07:56:28', '2019-06-07 07:56:28');

-- ----------------------------
-- Table structure for `oauth_auth_codes`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_auth_codes
-- ----------------------------
INSERT INTO `oauth_auth_codes` VALUES ('056d50ed7161da2dc896a5b59fca4985d3f92efdd2fe566019786c76ecd0c6ddb59174c3e8debef3', '1', '3', '[]', '0', '2018-06-07 04:20:50');
INSERT INTO `oauth_auth_codes` VALUES ('092e81fd09618ac08444df2127504621808fc1c865b1eb017a8072bbceb062e1f42c46406e6d9b50', '1', '3', '[]', '0', '2018-06-07 07:08:33');
INSERT INTO `oauth_auth_codes` VALUES ('105e46f0cd650da32f95e07734b04e1ca8568db9881d9ac1f079db7858bb7372fe5944decb456933', '1', '3', '[]', '1', '2018-06-07 08:11:03');
INSERT INTO `oauth_auth_codes` VALUES ('253d0bad1633748ef1092ffb3112ae1d39280af649e887fcd317fa2b50fd6dbe15b6501944dcc926', '1', '3', '[]', '1', '2018-06-07 07:10:09');
INSERT INTO `oauth_auth_codes` VALUES ('25c4423872674a487dc424e4798342bdf3d3eb12f515d5ca0dad2d71e1fbd11e6a75f84aa5c7c09c', '1', '3', '[]', '0', '2018-06-07 07:55:13');
INSERT INTO `oauth_auth_codes` VALUES ('66bcaa2079c9c7a5c918da698985792cef87ce53e8f3b7c8556c34671cab08760cf40226b56d8797', '1', '3', '[]', '0', '2018-06-07 04:40:47');
INSERT INTO `oauth_auth_codes` VALUES ('6bbc67070faf87cca985b6a529d8c3aee7a76634b3c6b11d7c3b878cbc9309e1134d3ce10bf07bb4', '1', '3', '[]', '0', '2018-06-07 04:49:40');
INSERT INTO `oauth_auth_codes` VALUES ('710a1b9442a0dc979f5a896be9a81d7dd395f6a73f850cd09c9e936829691a0f3655886ae9daf2d2', '1', '3', '[]', '0', '2018-06-07 07:52:12');
INSERT INTO `oauth_auth_codes` VALUES ('7f40d52b8abdde396953544000b482a786a5c639361f5215279a332c67df1676946d99146220e572', '1', '3', '[]', '1', '2018-06-07 08:05:26');
INSERT INTO `oauth_auth_codes` VALUES ('8200a36c8c4ce60995f6cdc087fb332d7716f587d65d70158e74eace735818e0684d0c901e5268b5', '1', '3', '[]', '0', '2018-06-07 07:50:32');
INSERT INTO `oauth_auth_codes` VALUES ('9e4010515f70e6d8c4f9b1e60dc5d9cae62d5828e998690d7130c8ac7ab803fea2ace11e25c7bf13', '1', '3', '[]', '0', '2018-06-07 04:38:32');
INSERT INTO `oauth_auth_codes` VALUES ('b8db8c92dc521d06fe096fc2e6a61cbc78ba1c98639e1d16b8f6fec70f670b777f6324ac2b4e0535', '1', '3', '[]', '0', '2018-06-07 07:41:50');
INSERT INTO `oauth_auth_codes` VALUES ('bbbf67afe57103790406c0ca9c2d2867fe339e094c448430625e08be6df00bc3557bc5e1b50e5395', '1', '3', '[]', '0', '2018-06-07 08:03:37');
INSERT INTO `oauth_auth_codes` VALUES ('c7c874a532163d620fc768d9cf448ab7ac6e54426078b9c6d7deef3dc227e59843f21163edaf5143', '1', '3', '[]', '1', '2018-06-07 08:07:59');

-- ----------------------------
-- Table structure for `oauth_clients`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES ('1', null, 'Laravel Personal Access Client', '8mMdE6wGEAoGGSsIvpAPZ6bNFFrZpBmHkFcRg4ZP', 'http://t.com', '1', '0', '0', '2018-06-07 02:41:45', '2018-06-07 02:41:45');
INSERT INTO `oauth_clients` VALUES ('2', null, 'Laravel Password Grant Client', 'L0o2q2gFWfI7eb47KIQLmbOL5DzrHh5mojb6i88u', 'http://t.com', '0', '1', '0', '2018-06-07 02:41:45', '2018-06-07 02:41:45');
INSERT INTO `oauth_clients` VALUES ('3', '1', 'app', 'IRfcBYG15waDivYN5aEia3IT1BE2RPXKZ8sv8ZlC', 'http://t.com/getcode', '0', '0', '0', '2018-06-07 03:52:49', '2018-06-07 03:52:49');

-- ----------------------------
-- Table structure for `oauth_personal_access_clients`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES ('1', '1', '2018-06-07 02:41:45', '2018-06-07 02:41:45');

-- ----------------------------
-- Table structure for `oauth_refresh_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------
INSERT INTO `oauth_refresh_tokens` VALUES ('23c58dfd8094e38cd73971c6d13373afaa1424b26c28efad8546ed37edec2892284ac5a36decec9b', '673ebfdbae69602dade15d97708bd9578d0f637eecd1f6a9d09df3cee524b6c930bbe411812d82ad', '0', '2019-06-07 08:01:42');
INSERT INTO `oauth_refresh_tokens` VALUES ('64d2ee0d87c17b0920a67fe56438460638d75742a86d98cb7f6992813542663b21027d80312fd485', '0c83060d9d5a9032bfd5e18eed3efe1abafb75613c0ebbe4f8ed4e273e22bea9f7b9422ada481d43', '0', '2019-06-07 07:58:07');
INSERT INTO `oauth_refresh_tokens` VALUES ('a89528ac843b6ffdfb5cfcded490abc276482e18413a4fb94f9f80e14a24b4638d68cb15acc1e33a', '4f67263db4849a0502063dc9fc1abbda835cb1906d8d8980feb8204444f68b094a6311ae18841cb0', '0', '2019-06-07 07:00:43');
INSERT INTO `oauth_refresh_tokens` VALUES ('f2681a0691192c36e6247703c5f6844ae052a7e1492bfc8ddb038d81df98023ed223b82bc519afc8', '801d1e47edf287dc6efdd65496465d346455e220a8d501d31e0804ae681182ef66cc6bae62ac9e6d', '0', '2019-06-07 07:56:28');

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `position`
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `city` int(11) NOT NULL COMMENT '城市',
  `experience` tinyint(4) NOT NULL COMMENT '工作经验',
  `education` tinyint(4) NOT NULL COMMENT '学历',
  `publish` tinyint(4) NOT NULL COMMENT '发布？1:发布,0未发布',
  `type` tinyint(4) NOT NULL DEFAULT '2' COMMENT '工作类型1:兼职,2:全职',
  `num` smallint(6) NOT NULL COMMENT '招聘人数',
  `departme` smallint(6) NOT NULL COMMENT '招聘部门',
  `position_type` smallint(6) NOT NULL COMMENT '职位类别',
  `description` text COLLATE utf8_unicode_ci NOT NULL COMMENT '职位描述',
  `claim` text COLLATE utf8_unicode_ci NOT NULL COMMENT '岗位要求',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES ('1', 'PHP高级工程师', '2', '1', '1', '1', '1', '3', '4', '2', '<p>111111111111</p>', '<p>22222222222</p>', '2018-07-06 16:39:35', '2018-07-06 16:39:35');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'yuexiage', '418221610@qq.com', '$2y$10$bvIK/D5V3o41RgPYyfVuu.qerlH0kUAaGyN66mB/9NQawXwL61RtC', '5Tk33gdPyto7In29UVZnkSTt9hkMaPMekbrXRx9pNCdiw9ECClahMvC36KeC', '2018-06-07 02:29:28', '2018-06-07 02:29:28');
INSERT INTO `users` VALUES ('2', 'Elinore Ferry', 'chasity.romaguera@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'nAM0lx8uwe', '2018-06-15 10:24:16', '2018-06-15 10:24:16');
INSERT INTO `users` VALUES ('3', 'Ahmed Robel PhD', 'lillian45@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '1Bd9RRkdKC', '2018-06-15 10:24:16', '2018-06-15 10:24:16');
INSERT INTO `users` VALUES ('4', 'Lesley Luettgen I', 'yerdman@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'X6gANZCcpQ', '2018-06-15 10:24:16', '2018-06-15 10:24:16');
INSERT INTO `users` VALUES ('5', 'Prof. Susie Nader', 'stiedemann.adela@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'qkfwwBaTEX', '2018-06-15 10:24:16', '2018-06-15 10:24:16');
INSERT INTO `users` VALUES ('6', 'Elise Pollich MD', 'audie09@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '5o6AwGWOOH', '2018-06-15 10:24:16', '2018-06-15 10:24:16');
INSERT INTO `users` VALUES ('7', 'Janick Dooley', 'icie.moore@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'FeMpN7JcdO', '2018-06-15 10:24:16', '2018-06-15 10:24:16');
INSERT INTO `users` VALUES ('8', 'Priscilla Turner', 'yzulauf@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'zvnAcoNgQl', '2018-06-15 10:24:16', '2018-06-15 10:24:16');
INSERT INTO `users` VALUES ('9', 'Garfield Kris', 'zack39@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'qPt18kQn5p', '2018-06-15 10:24:16', '2018-06-15 10:24:16');
INSERT INTO `users` VALUES ('10', 'Luigi Berge V', 'tbruen@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '8DuwKGk9h5', '2018-06-15 10:24:16', '2018-06-15 10:24:16');
INSERT INTO `users` VALUES ('11', 'Mable Beatty', 'ubaumbach@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ApOp2cPaDj', '2018-06-15 10:24:16', '2018-06-15 10:24:16');
INSERT INTO `users` VALUES ('12', 'Dr. Abner Hilll', 'hilda88@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9Pl2hQsX2V', '2018-06-15 10:24:16', '2018-06-15 10:24:16');
INSERT INTO `users` VALUES ('13', 'Mr. Abelardo Wiza', 'bret64@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'AfPg6RvLxy', '2018-06-15 10:24:16', '2018-06-15 10:24:16');
INSERT INTO `users` VALUES ('14', 'Prof. Ismael Pfannerstill', 'tony26@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '3eh2PyhslQ', '2018-06-15 10:24:16', '2018-06-15 10:24:16');
INSERT INTO `users` VALUES ('15', 'Mr. Randall Stark', 'raheem.west@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'WvLsgzsAUQ', '2018-06-15 10:24:16', '2018-06-15 10:24:16');
INSERT INTO `users` VALUES ('16', 'Antwan Waters', 'zgusikowski@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'XReYaosLEH', '2018-06-15 10:24:16', '2018-06-15 10:24:16');
INSERT INTO `users` VALUES ('17', 'Marjolaine Wiza', 'mosciski.else@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'CS7JV4DJ5m', '2018-06-15 10:24:16', '2018-06-15 10:24:16');
INSERT INTO `users` VALUES ('18', 'Barry Bauch', 'qhaley@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'wrDyxE2U8c', '2018-06-15 10:24:16', '2018-06-15 10:24:16');
INSERT INTO `users` VALUES ('19', 'Janice Nader', 'kilback.queenie@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'nYlo1s4iyJ', '2018-06-15 10:24:16', '2018-06-15 10:24:16');
INSERT INTO `users` VALUES ('20', 'Dr. Al Boyer III', 'elsa67@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'jB75iZjUhU', '2018-06-15 10:24:16', '2018-06-15 10:24:16');
INSERT INTO `users` VALUES ('21', 'Miss Damaris Turcotte Jr.', 'bethany.kilback@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'F23kMBj34X', '2018-06-15 10:24:16', '2018-06-15 10:24:16');
INSERT INTO `users` VALUES ('22', 'Jalyn Boyer', 'adele.swift@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '5XlSq31JmB', '2018-06-15 10:24:16', '2018-06-15 10:24:16');
INSERT INTO `users` VALUES ('23', 'Genevieve Johnson', 'orn.ashley@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'FK9BX7TnlU', '2018-06-15 10:24:16', '2018-06-15 10:24:16');
INSERT INTO `users` VALUES ('24', 'Selina Jenkins', 'emmet04@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'PZkd1VwGFd', '2018-06-15 10:24:17', '2018-06-15 10:24:17');
INSERT INTO `users` VALUES ('25', 'Tina Farrell', 'ledner.prince@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'u7rPkAl5f5', '2018-06-15 10:24:17', '2018-06-15 10:24:17');
INSERT INTO `users` VALUES ('26', 'Mr. Richie Pouros MD', 'tanner.rodriguez@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'CR6dw8w3dK', '2018-06-15 10:24:17', '2018-06-15 10:24:17');
INSERT INTO `users` VALUES ('27', 'Ellsworth Kulas', 'kasey.dare@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '8dfkYekgOt', '2018-06-15 10:24:17', '2018-06-15 10:24:17');
INSERT INTO `users` VALUES ('28', 'Mr. Luigi Terry', 'zelda.nader@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '1Il9JU0Jtn', '2018-06-15 10:24:17', '2018-06-15 10:24:17');
INSERT INTO `users` VALUES ('29', 'Briana Mante III', 'lenny80@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'OS7oEAxaJ2', '2018-06-15 10:24:17', '2018-06-15 10:24:17');
INSERT INTO `users` VALUES ('30', 'Dr. Leopold Keeling II', 'ludwig24@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'TC5mZOU7F0', '2018-06-15 10:24:17', '2018-06-15 10:24:17');
INSERT INTO `users` VALUES ('31', 'Erich Conn', 'pfeffer.jules@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'rianj0AVsy', '2018-06-15 10:24:17', '2018-06-15 10:24:17');
INSERT INTO `users` VALUES ('32', 'Dr. Weldon Murray', 'gjenkins@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Oln9CJPfkF', '2018-06-15 10:24:17', '2018-06-15 10:24:17');
INSERT INTO `users` VALUES ('33', 'Rosalinda Kuhlman', 'jaiden62@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'DLan9V85Ak', '2018-06-15 10:24:17', '2018-06-15 10:24:17');
INSERT INTO `users` VALUES ('34', 'Era Bins', 'jodie17@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'QhhXj7vnQn', '2018-06-15 10:24:17', '2018-06-15 10:24:17');
INSERT INTO `users` VALUES ('35', 'Maxime Abbott', 'koss.gayle@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'mFXQ6E9pB0', '2018-06-15 10:24:17', '2018-06-15 10:24:17');
INSERT INTO `users` VALUES ('36', 'Gustave Kub Sr.', 'jonas30@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0btLRhlCj4', '2018-06-15 10:24:17', '2018-06-15 10:24:17');
INSERT INTO `users` VALUES ('37', 'Miss Sonia DuBuque I', 'tgislason@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'irtmkQEUmy', '2018-06-15 10:24:17', '2018-06-15 10:24:17');
INSERT INTO `users` VALUES ('38', 'Mr. Devan Murazik I', 'issac49@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'b8EDkWdtWh', '2018-06-15 10:24:17', '2018-06-15 10:24:17');
INSERT INTO `users` VALUES ('39', 'Lionel Jones', 'hmohr@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'F4slqUhWW1', '2018-06-15 10:24:17', '2018-06-15 10:24:17');
INSERT INTO `users` VALUES ('40', 'Dr. Elliot Langworth PhD', 'lafayette.berge@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '6S982IqDCN', '2018-06-15 10:24:17', '2018-06-15 10:24:17');
INSERT INTO `users` VALUES ('41', 'Dr. Sienna Balistreri DDS', 'ima.hand@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'xdGS0m37PU', '2018-06-15 10:24:17', '2018-06-15 10:24:17');
INSERT INTO `users` VALUES ('42', 'Jamal D\'Amore', 'vbogan@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 't7UDX1frBH', '2018-06-15 10:24:17', '2018-06-15 10:24:17');
INSERT INTO `users` VALUES ('43', 'Mr. Devyn Beier MD', 'eritchie@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'fDlXkSx62W', '2018-06-15 10:24:17', '2018-06-15 10:24:17');
INSERT INTO `users` VALUES ('44', 'Estefania Hilll', 'elsa.barton@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'qDwpt9QqOp', '2018-06-15 10:24:17', '2018-06-15 10:24:17');
INSERT INTO `users` VALUES ('45', 'Rickie Hansen V', 'deon.roob@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'UtiYiNjnfy', '2018-06-15 10:24:17', '2018-06-15 10:24:17');
INSERT INTO `users` VALUES ('46', 'Lauren Jaskolski MD', 'king.penelope@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 't3QvvMh99e', '2018-06-15 10:24:17', '2018-06-15 10:24:17');
INSERT INTO `users` VALUES ('47', 'Dr. Joey Lockman II', 'rohan.bernita@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'hsa10qdbKK', '2018-06-15 10:24:17', '2018-06-15 10:24:17');
INSERT INTO `users` VALUES ('48', 'Ashton Steuber Sr.', 'april.schoen@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'wRj8bl9XWP', '2018-06-15 10:24:17', '2018-06-15 10:24:17');
INSERT INTO `users` VALUES ('49', 'Moses Lemke', 'ulices.lockman@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'BlJ4ix7LEA', '2018-06-15 10:24:17', '2018-06-15 10:24:17');
INSERT INTO `users` VALUES ('50', 'Gabrielle Lind', 'eloise96@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'xJpx8zOIyy', '2018-06-15 10:24:17', '2018-06-15 10:24:17');
INSERT INTO `users` VALUES ('51', 'Prof. Cynthia Beatty', 'darien06@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'LmSDTodbWv', '2018-06-15 10:24:17', '2018-06-15 10:24:17');
