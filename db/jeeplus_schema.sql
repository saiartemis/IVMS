/*
Navicat MySQL Data Transfer

Source Server         : MySQL56
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : jeeplus_schema

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-03-10 09:44:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bill`
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  `pay` varchar(64) DEFAULT NULL COMMENT '支出',
  `income` varchar(64) DEFAULT NULL COMMENT '收入',
  `order_id` varchar(64) DEFAULT NULL COMMENT '订单编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='账单表';

-- ----------------------------
-- Records of bill
-- ----------------------------

-- ----------------------------
-- Table structure for `car`
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  `car_no` varchar(64) DEFAULT NULL COMMENT '车牌号',
  `driver` varchar(64) DEFAULT NULL COMMENT '司机',
  `driver_phone` varchar(64) DEFAULT NULL COMMENT '司机电话',
  `status` varchar(64) DEFAULT NULL COMMENT '车辆状态',
  `user_id` varchar(64) DEFAULT NULL COMMENT '用户ID',
  `travel_order_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车辆信息';

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('2f660f13400d41d78256c681786d35c7', '36543a9fcb054a5485c61572c099cf46', '2016-03-09 17:37:59', '36543a9fcb054a5485c61572c099cf46', '2016-03-09 17:37:59', '2', '0', '1', '1', '1', '0', '36543a9fcb054a5485c61572c099cf46', null);
INSERT INTO `car` VALUES ('7200c12c9adc4cb48e96af662ccd0fe4', '1', '2016-03-04 15:44:34', '1', '2016-03-04 15:44:34', '2', '0', '2', '2', '2', '1', '1', '4930131cc8eb442f9f3ad7d1e5771842');

-- ----------------------------
-- Table structure for `form_leave`
-- ----------------------------
DROP TABLE IF EXISTS `form_leave`;
CREATE TABLE `form_leave` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `user_id` varchar(64) DEFAULT NULL COMMENT '员工',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属部门',
  `area_id` varchar(64) DEFAULT NULL COMMENT '归属区域',
  `begin_date` datetime DEFAULT NULL COMMENT '请假开始日期',
  `end_date` datetime DEFAULT NULL COMMENT '请假结束日期',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='请假单';

-- ----------------------------
-- Records of form_leave
-- ----------------------------
INSERT INTO `form_leave` VALUES ('08ce7b9c63ec4b4fa91e4b836fcb0b4b', '0e01985207154708a01e53ca07965665', '6a642e140e40496a8d467c646b8e935e', '90ecd439eb3845db97a627d9242145e8', '2016-03-16 00:00:00', '2016-04-01 00:00:00', '1', '2016-03-01 17:25:18', '1', '2016-03-01 17:25:18', '', '0');
INSERT INTO `form_leave` VALUES ('7cfb16255b2b4966b2359acab7366c18', '0e01985207154708a01e53ca07965665', 'e0ef8af9cae6416f8bb359714a1b4244', '17e8e72326574a0ea94b15d6eeddbb6d', '2016-01-05 00:00:00', '2016-01-08 00:00:00', '1', '2016-01-11 23:12:48', '1', '2016-01-18 19:38:25', '请假2天', '0');

-- ----------------------------
-- Table structure for `gen_scheme`
-- ----------------------------
DROP TABLE IF EXISTS `gen_scheme`;
CREATE TABLE `gen_scheme` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `category` varchar(2000) DEFAULT NULL COMMENT '分类',
  `package_name` varchar(500) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `sub_module_name` varchar(30) DEFAULT NULL COMMENT '生成子模块名',
  `function_name` varchar(500) DEFAULT NULL COMMENT '生成功能名',
  `function_name_simple` varchar(100) DEFAULT NULL COMMENT '生成功能名（简写）',
  `function_author` varchar(100) DEFAULT NULL COMMENT '生成功能作者',
  `gen_table_id` varchar(200) DEFAULT NULL COMMENT '生成表编号',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_scheme_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='生成方案';

-- ----------------------------
-- Records of gen_scheme
-- ----------------------------
INSERT INTO `gen_scheme` VALUES ('000fbb2eef694532ab9df8c83632cba6', null, 'curd', 'com.thinkgem.jeesite.modules', 'test', 'test', 'test', 'test', 'test', '547be5f2504d4da8bf971ee0db0b625f', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-03 20:30:28', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-03 20:30:51', null, '0');
INSERT INTO `gen_scheme` VALUES ('11c16185e21a473b8dd961dfcddaa4c5', null, 'treeTable', 'com.jeeplus.modules', 'test', 'tree', '组织机构', '机构', 'liugf', 'bae082dbd74a4ca381c0ad24c886f991', '1', '2016-01-07 22:14:21', '1', '2016-01-15 00:10:17', null, '0');
INSERT INTO `gen_scheme` VALUES ('2917758f13eb4984934b2cbc9f94dc81', null, 'curd_many', 'com.thinkgem.jeesite', 'test', '', 'test', 'test', 'test', '73326f175c2d4a63b2d89820a79ba2eb', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-03 21:45:23', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-04 11:02:09', null, '0');
INSERT INTO `gen_scheme` VALUES ('35ba95c3d13c47fcb70b92247d38ca7a', null, 'curd', 'com.jeeplus.modules', 'test', 'one', '员工请假', '请假单', 'liugf', '0a8f05eb973b4942af37c45109bd2502', '1', '2016-01-11 22:59:26', '1', '2016-01-19 20:33:40', null, '0');
INSERT INTO `gen_scheme` VALUES ('3f9e9306626a4d62b0f42ec3dc25d2bb', null, 'curd', 'com.jeeplus.modules', 'travelOrder', '', '旅行单管理', '旅行单', 'zhangxian', '819dfc4b08574cb586781c3c208fd230', '1', '2016-03-01 14:22:44', '1', '2016-03-01 15:16:57', null, '0');
INSERT INTO `gen_scheme` VALUES ('505b3e23c7234df79c14c0dce24af75a', null, 'curd', 'com.thinkgem.jeesite.modules', 'test', 'test', 'test', 'test', 'test', '7612365ac0c645008661aaf479c45b82', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-03 20:27:12', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-03 20:28:48', null, '0');
INSERT INTO `gen_scheme` VALUES ('59e8ed66a96c4d7ab3c9e52106c26eb8', null, 'curd', 'com.jeeplus.modules', 'car', '', '车辆信息管理', '车辆信息', 'zhangxian', '0fc626b7ead046caa98618862a697728', '1', '2016-03-01 09:01:22', '1', '2016-03-01 09:24:19', null, '0');
INSERT INTO `gen_scheme` VALUES ('a93238d2954a4da0a0a7a3c551803913', null, 'curd_many', 'com.jeeplus.modules', 'test', 'onetomany', '票务代理', '票务代理', 'liugf', 'e08d6fbc393047748a2d45c98be42676', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-03 21:46:09', '1', '2016-01-15 00:13:30', null, '0');
INSERT INTO `gen_scheme` VALUES ('ffc66f4a85f242619903ec5a59c7b969', null, 'curd', 'com.jeeplus.modules', 'bill', '', '账单模块', '账单', 'zhangxian', 'd796341e30d94c1d9c39b72397cad8a7', '1', '2016-03-06 21:23:24', '1', '2016-03-06 21:23:24', null, '0');

-- ----------------------------
-- Table structure for `gen_table`
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `comments` varchar(500) DEFAULT NULL COMMENT '描述',
  `class_name` varchar(100) DEFAULT NULL COMMENT '实体类名称',
  `parent_table` varchar(200) DEFAULT NULL COMMENT '关联父表',
  `parent_table_fk` varchar(100) DEFAULT NULL COMMENT '关联父表外键',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  `issync` varchar(45) DEFAULT NULL COMMENT '同步',
  `table_type` varchar(45) DEFAULT NULL COMMENT '表类型',
  PRIMARY KEY (`id`),
  KEY `gen_table_name` (`name`),
  KEY `gen_table_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('0a8f05eb973b4942af37c45109bd2502', 'form_leave', '请假单', 'FormLeave', '', '', '1', '2016-01-11 22:32:01', '1', '2016-01-11 23:15:32', null, '0', '1', '0');
INSERT INTO `gen_table` VALUES ('0fc626b7ead046caa98618862a697728', 'car', '车辆信息', 'car', '', '', '1', '2016-02-29 17:32:50', '1', '2016-03-01 09:22:49', null, '0', '1', '0');
INSERT INTO `gen_table` VALUES ('3f7c20cfa7b840dc854d9ea27f4de539', 'test_data_child3', '汽车票', 'TestDataChild3', 'test_data_main', 'test_data_main', '1', '2016-01-14 23:12:14', null, '2016-01-15 00:13:22', null, '0', '1', '2');
INSERT INTO `gen_table` VALUES ('73326f175c2d4a63b2d89820a79ba2eb', 'test_data_child', '火车票', 'TestDataChild', 'test_data_main', 'test_data_main_id', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-03 21:44:06', '1', '2016-02-25 22:00:02', null, '0', '1', '2');
INSERT INTO `gen_table` VALUES ('819dfc4b08574cb586781c3c208fd230', 'travel_order', '旅游订单表', 'travelOrder', '', '', '1', '2016-03-01 14:19:24', null, '2016-03-01 15:16:40', null, '0', '1', '0');
INSERT INTO `gen_table` VALUES ('90d8fc88828d47a99fcbfeaa4f95f0db', 'test_data_child2', '飞机票', 'TestDataChild2', 'test_data_main', 'test_data_main', '1', '2016-01-04 18:48:19', null, '2016-01-15 00:13:11', null, '0', '1', '2');
INSERT INTO `gen_table` VALUES ('bae082dbd74a4ca381c0ad24c886f991', 'test_tree', '组织机构', 'TestTree', '', '', '1', '2016-01-06 23:49:45', '1', '2016-01-14 23:51:08', null, '0', '1', '3');
INSERT INTO `gen_table` VALUES ('d796341e30d94c1d9c39b72397cad8a7', 'bill', '账单表', 'bill', '', '', '1', '2016-03-06 21:22:17', null, '2016-03-06 21:22:17', null, '0', '1', '0');
INSERT INTO `gen_table` VALUES ('e08d6fbc393047748a2d45c98be42676', 'test_data_main', '票务代理', 'TestDataMain', '', '', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-03 21:44:00', null, '2016-01-14 22:53:41', null, '0', '1', '1');

-- ----------------------------
-- Table structure for `gen_table_column`
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `gen_table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `comments` varchar(500) DEFAULT NULL COMMENT '描述',
  `jdbc_type` varchar(100) DEFAULT NULL COMMENT '列的数据类型的字节长度',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键',
  `is_null` char(1) DEFAULT NULL COMMENT '是否可为空',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段',
  `query_type` varchar(200) DEFAULT NULL COMMENT '查询方式（等于、不等于、大于、小于、范围、左LIKE、右LIKE、左右LIKE）',
  `show_type` varchar(200) DEFAULT NULL COMMENT '字段生成方案（文本框、文本域、下拉框、复选框、单选框、字典选择、人员选择、部门选择、区域选择）',
  `dict_type` varchar(200) DEFAULT NULL COMMENT '字典类型',
  `settings` varchar(2000) DEFAULT NULL COMMENT '其它设置（扩展字段JSON）',
  `sort` decimal(10,0) DEFAULT NULL COMMENT '排序（升序）',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_table_column_table_id` (`gen_table_id`),
  KEY `gen_table_column_name` (`name`),
  KEY `gen_table_column_sort` (`sort`),
  KEY `gen_table_column_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('003ab0ebe5464d8790f0408d429d40f1', '90d8fc88828d47a99fcbfeaa4f95f0db', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '1', '0', '=', 'dateselect', '', null, '8', '1', '2016-01-15 00:13:11', '1', '2016-01-15 00:13:11', null, '0');
INSERT INTO `gen_table_column` VALUES ('00e65447f14c485783599604d2822441', '0fc626b7ead046caa98618862a697728', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', null, '2', '1', '2016-03-01 09:22:49', '1', '2016-03-01 09:22:49', null, '0');
INSERT INTO `gen_table_column` VALUES ('00f7ee8b27b84b4fabd74b3bafc7598a', '0a8f05eb973b4942af37c45109bd2502', 'user_id', '员工', 'varchar(64)', 'com.jeeplus.modules.sys.entity.User', 'user.id|name', '0', '0', '1', '1', '1', '1', '=', 'userselect', '', null, '1', '1', '2016-01-11 23:15:32', '1', '2016-01-11 23:15:32', null, '0');
INSERT INTO `gen_table_column` VALUES ('070ae2874f1242ec98f9168b15127737', '0fc626b7ead046caa98618862a697728', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', '', null, '1', '1', '2016-03-01 09:22:49', '1', '2016-03-01 09:22:49', null, '0');
INSERT INTO `gen_table_column` VALUES ('0868049bbeb64258b9221ae8a5597978', '819dfc4b08574cb586781c3c208fd230', 'start_time', '开始时间', 'datetime', 'String', 'startTime', '0', '1', '1', '1', '1', '1', '=', 'dateselect', '', null, '11', '1', '2016-03-01 15:16:40', '1', '2016-03-01 15:16:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('0e0143ac4c644b74a2027f664799544b', '73326f175c2d4a63b2d89820a79ba2eb', 'price', '代理价格', 'double', 'Double', 'price', '0', '0', '1', '1', '1', '0', '=', 'input', '', null, '3', '1', '2016-02-25 22:00:02', '1', '2016-02-25 22:00:02', null, '0');
INSERT INTO `gen_table_column` VALUES ('0e70ea47d73a45cdb091a50c3641cb3a', '73326f175c2d4a63b2d89820a79ba2eb', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', null, '6', '1', '2016-02-25 22:00:02', '1', '2016-02-25 22:00:02', null, '0');
INSERT INTO `gen_table_column` VALUES ('1011c770c2f24be5bfca9dbe8e726425', '3f7c20cfa7b840dc854d9ea27f4de539', 'remarks', '备注信息', 'nvarchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '9', '1', '2016-01-15 00:13:22', '1', '2016-01-15 00:13:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('15381b0443274cb88921b1e36c56b5ba', 'd796341e30d94c1d9c39b72397cad8a7', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '0', '0', '=', 'dateselect', '', null, '4', '1', '2016-03-06 21:22:17', '1', '2016-03-06 21:22:17', null, '0');
INSERT INTO `gen_table_column` VALUES ('1589003dc2234f3bb02c2945e541def1', '73326f175c2d4a63b2d89820a79ba2eb', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '1', '0', '=', 'dateselect', '', null, '8', '1', '2016-02-25 22:00:02', '1', '2016-02-25 22:00:02', null, '0');
INSERT INTO `gen_table_column` VALUES ('1c2570ded3da42e489c683775cb3c02a', '73326f175c2d4a63b2d89820a79ba2eb', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '7', '1', '2016-02-25 22:00:02', '1', '2016-02-25 22:00:02', null, '0');
INSERT INTO `gen_table_column` VALUES ('1c71b699a7ec44bbad511b26d5c7f68e', 'e08d6fbc393047748a2d45c98be42676', 'area_id', '归属区域', 'varchar(64)', 'String', 'area.id|name', '0', '0', '1', '1', '1', '0', '=', 'areaselect', '', null, '3', '1', '2016-01-14 22:53:41', '1', '2016-01-14 22:53:41', null, '0');
INSERT INTO `gen_table_column` VALUES ('243dcf560cc8494ea5d3589dbd8dd419', '90d8fc88828d47a99fcbfeaa4f95f0db', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '9', '1', '2016-01-15 00:13:11', '1', '2016-01-15 00:13:11', null, '0');
INSERT INTO `gen_table_column` VALUES ('2f43d76913894a8f8857781653c33513', '90d8fc88828d47a99fcbfeaa4f95f0db', 'del_flag', '逻辑删除标记（0：显示；1：隐藏）', 'varchar(64)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '10', '1', '2016-01-15 00:13:11', '1', '2016-01-15 00:13:11', null, '0');
INSERT INTO `gen_table_column` VALUES ('2fba393e90f141929358489afdf606f0', '3f7c20cfa7b840dc854d9ea27f4de539', 'start', '出发地', 'varchar(64)', 'com.jeeplus.modules.sys.entity.Area', 'start.id|name', '0', '0', '1', '1', '1', '1', '=', 'areaselect', '', null, '1', '1', '2016-01-15 00:13:22', '1', '2016-01-15 00:13:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('2fbe81d8140b4740aa26e5015871ffde', '819dfc4b08574cb586781c3c208fd230', 'people_num', '人数', 'varchar(64)', 'String', 'peopleNum', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '10', '1', '2016-03-01 15:16:40', '1', '2016-03-01 15:16:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('31b11402790a4ae8b3c8cad3263c6aa2', '819dfc4b08574cb586781c3c208fd230', 'remarks', '备注信息', 'nvarchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '5', '1', '2016-03-01 15:16:40', '1', '2016-03-01 15:16:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('32736b7bcd1849449adb1f8d2391ea71', '3f7c20cfa7b840dc854d9ea27f4de539', 'end', '目的地', 'varchar(64)', 'com.jeeplus.modules.sys.entity.Area', 'end.id|name', '0', '0', '1', '1', '1', '1', '=', 'areaselect', '', null, '2', '1', '2016-01-15 00:13:22', '1', '2016-01-15 00:13:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('3486ce1e5f4d4a47a74ee0de769a91de', 'd796341e30d94c1d9c39b72397cad8a7', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '3', '1', '2016-03-06 21:22:17', '1', '2016-03-06 21:22:17', null, '0');
INSERT INTO `gen_table_column` VALUES ('351be6aa79f24f518495b2f6254469ec', 'bae082dbd74a4ca381c0ad24c886f991', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', '', null, '5', '1', '2016-01-14 23:51:08', '1', '2016-01-14 23:51:08', null, '0');
INSERT INTO `gen_table_column` VALUES ('35b2fa200ffe42d087c87e12e6606bdd', '73326f175c2d4a63b2d89820a79ba2eb', 'start', '出发地', 'varchar(64)', 'com.jeeplus.modules.sys.entity.Area', 'start.id|name', '0', '0', '1', '1', '1', '1', '=', 'areaselect', '', null, '1', '1', '2016-02-25 22:00:02', '1', '2016-02-25 22:00:02', null, '0');
INSERT INTO `gen_table_column` VALUES ('3e4cb157cc8a43f7ac7073c022e703c8', '0fc626b7ead046caa98618862a697728', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '0', '0', '=', 'dateselect', '', null, '4', '1', '2016-03-01 09:22:49', '1', '2016-03-01 09:22:49', null, '0');
INSERT INTO `gen_table_column` VALUES ('446d75320b0149ac9116e3c4bc49373d', 'e08d6fbc393047748a2d45c98be42676', 'sex', '性别', 'char(1)', 'String', 'sex', '0', '0', '1', '1', '1', '1', '=', 'radiobox', 'sex', null, '5', '1', '2016-01-14 22:53:41', '1', '2016-01-14 22:53:41', null, '0');
INSERT INTO `gen_table_column` VALUES ('452017126afc4913901691b0e9b2af76', 'e08d6fbc393047748a2d45c98be42676', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '1', '1', '=', 'dateselect', '', null, '10', '1', '2016-01-14 22:53:41', '1', '2016-01-14 22:53:41', null, '0');
INSERT INTO `gen_table_column` VALUES ('4614ca3ba9674782b302f1fbdc1823a8', 'e08d6fbc393047748a2d45c98be42676', 'id', '编号', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '0', '1', '2016-01-14 22:53:41', '1', '2016-01-14 22:53:41', null, '0');
INSERT INTO `gen_table_column` VALUES ('4da93c0ef6214333893626080767675b', '90d8fc88828d47a99fcbfeaa4f95f0db', 'end', '目的地', 'varchar(64)', 'com.jeeplus.modules.sys.entity.Area', 'end.id|name', '0', '0', '1', '1', '1', '1', '=', 'areaselect', '', null, '2', '1', '2016-01-15 00:13:11', '1', '2016-01-15 00:13:11', null, '0');
INSERT INTO `gen_table_column` VALUES ('4ee61ab3c969477d8d658eca45530e8d', '0a8f05eb973b4942af37c45109bd2502', 'id', '主键', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '0', '1', '2016-01-11 23:15:32', '1', '2016-01-11 23:15:32', null, '0');
INSERT INTO `gen_table_column` VALUES ('53881921c4e647468facb01aec786cfe', '73326f175c2d4a63b2d89820a79ba2eb', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', '', null, '5', '1', '2016-02-25 22:00:02', '1', '2016-02-25 22:00:02', null, '0');
INSERT INTO `gen_table_column` VALUES ('53c9ad7e671d42468158835d2ff5ce14', '73326f175c2d4a63b2d89820a79ba2eb', 'end', '目的地', 'varchar(64)', 'com.jeeplus.modules.sys.entity.Area', 'end.id|name', '0', '0', '1', '1', '1', '1', '=', 'areaselect', '', null, '2', '1', '2016-02-25 22:00:02', '1', '2016-02-25 22:00:02', null, '0');
INSERT INTO `gen_table_column` VALUES ('53ff53e647f74d6da0bca921cbc858f8', '0a8f05eb973b4942af37c45109bd2502', 'remarks', '备注信息', 'nvarchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '10', '1', '2016-01-11 23:15:32', '1', '2016-01-11 23:15:32', null, '0');
INSERT INTO `gen_table_column` VALUES ('54c5485f02454367943182f45af94ae9', '0fc626b7ead046caa98618862a697728', 'driver_phone', '司机电话', 'varchar(64)', 'String', 'driverPhone', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '9', '1', '2016-03-01 09:22:49', '1', '2016-03-01 09:22:49', null, '0');
INSERT INTO `gen_table_column` VALUES ('574bea641f7b44c99cb6833bdcde81f5', 'd796341e30d94c1d9c39b72397cad8a7', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', '', null, '1', '1', '2016-03-06 21:22:17', '1', '2016-03-06 21:22:17', null, '0');
INSERT INTO `gen_table_column` VALUES ('582ff5b2d87848a997cdca72355ba2f4', '819dfc4b08574cb586781c3c208fd230', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', null, '2', '1', '2016-03-01 15:16:40', '1', '2016-03-01 15:16:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('58533761152d42d29239bcef86ef6f50', '0a8f05eb973b4942af37c45109bd2502', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '8', '1', '2016-01-11 23:15:32', '1', '2016-01-11 23:15:32', null, '0');
INSERT INTO `gen_table_column` VALUES ('5bea03e629224711b83d7c9778c427c8', 'e08d6fbc393047748a2d45c98be42676', 'in_date', '加入日期', 'date', 'java.util.Date', 'inDate', '0', '0', '1', '1', '1', '1', 'between', 'dateselect', '', null, '6', '1', '2016-01-14 22:53:41', '1', '2016-01-14 22:53:41', null, '0');
INSERT INTO `gen_table_column` VALUES ('5e9e23d21e5c4c9f8e66f13fccc94b00', 'bae082dbd74a4ca381c0ad24c886f991', 'del_flag', '逻辑删除标记（0：显示；1：隐藏）', 'varchar(64)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '10', '1', '2016-01-14 23:51:08', '1', '2016-01-14 23:51:08', null, '0');
INSERT INTO `gen_table_column` VALUES ('61776ea2d3624f258d0a8a0016ed9c67', 'e08d6fbc393047748a2d45c98be42676', 'office_id', '归属部门', 'varchar(64)', 'String', 'office.id|name', '0', '0', '1', '1', '1', '0', '=', 'officeselect', '', null, '2', '1', '2016-01-14 22:53:41', '1', '2016-01-14 22:53:41', null, '0');
INSERT INTO `gen_table_column` VALUES ('61b9e66dd1474136ba1cfdc527b0d5a1', 'bae082dbd74a4ca381c0ad24c886f991', 'sort', '排序', 'decimal(10,0)', 'Integer', 'sort', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '2', '1', '2016-01-14 23:51:08', '1', '2016-01-14 23:51:08', null, '0');
INSERT INTO `gen_table_column` VALUES ('65162403a536499d813f4743f299bb08', 'bae082dbd74a4ca381c0ad24c886f991', 'name', '名称', 'varchar(100)', 'String', 'name', '0', '0', '1', '1', '1', '1', 'like', 'input', '', null, '1', '1', '2016-01-14 23:51:08', '1', '2016-01-14 23:51:08', null, '0');
INSERT INTO `gen_table_column` VALUES ('6a06470770ad4ab29e6b93e0e4f4b840', '819dfc4b08574cb586781c3c208fd230', 'end_time', '结束时间', 'datetime', 'String', 'endTime', '0', '1', '1', '1', '1', '1', '=', 'dateselect', '', null, '12', '1', '2016-03-01 15:16:40', '1', '2016-03-01 15:16:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('6a2c4bd64199481399c033ed06721a71', 'd796341e30d94c1d9c39b72397cad8a7', 'remarks', '备注信息', 'nvarchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '5', '1', '2016-03-06 21:22:17', '1', '2016-03-06 21:22:17', null, '0');
INSERT INTO `gen_table_column` VALUES ('6c8b91f1904b4462969230de0add82c0', '0a8f05eb973b4942af37c45109bd2502', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '0', '0', '=', 'dateselect', '', null, '9', '1', '2016-01-11 23:15:32', '1', '2016-01-11 23:15:32', null, '0');
INSERT INTO `gen_table_column` VALUES ('719419c8e6894908a3e65848e9af3700', 'd796341e30d94c1d9c39b72397cad8a7', 'pay', '支出', 'varchar(64)', 'String', 'pay', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '7', '1', '2016-03-06 21:22:17', '1', '2016-03-06 21:22:17', null, '0');
INSERT INTO `gen_table_column` VALUES ('732b7665b7084040b4ccde305f8978fe', '0fc626b7ead046caa98618862a697728', 'remarks', '备注信息', 'nvarchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '5', '1', '2016-03-01 09:22:49', '1', '2016-03-01 09:22:49', null, '0');
INSERT INTO `gen_table_column` VALUES ('79a58b85ed514b3db213549105c9e0cc', '3f7c20cfa7b840dc854d9ea27f4de539', 'del_flag', '逻辑删除标记（0：显示；1：隐藏）', 'varchar(64)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '10', '1', '2016-01-15 00:13:22', '1', '2016-01-15 00:13:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('7b2eddb13f244912a616d0e5d8cf2cd7', 'bae082dbd74a4ca381c0ad24c886f991', 'parent_ids', '所有父级编号', 'varchar(2000)', 'String', 'parentIds', '0', '0', '1', '1', '0', '0', 'like', 'input', '', null, '4', '1', '2016-01-14 23:51:08', '1', '2016-01-14 23:51:08', null, '0');
INSERT INTO `gen_table_column` VALUES ('7f6e9fe76f634212bb4950011797efe0', '73326f175c2d4a63b2d89820a79ba2eb', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '9', '1', '2016-02-25 22:00:02', '1', '2016-02-25 22:00:02', null, '0');
INSERT INTO `gen_table_column` VALUES ('80306d19e2574f019617c2c2afa64312', '0fc626b7ead046caa98618862a697728', 'car_no', '车牌号', 'varchar(64)', 'String', 'carNo', '0', '1', '1', '1', '1', '1', 'like', 'input', '', null, '7', '1', '2016-03-01 09:22:49', '1', '2016-03-01 09:22:49', null, '0');
INSERT INTO `gen_table_column` VALUES ('81df389f3d9b49d08046a6e129900391', '3f7c20cfa7b840dc854d9ea27f4de539', 'id', '主键', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '0', '1', '2016-01-15 00:13:22', '1', '2016-01-15 00:13:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('847a98d72cbf40b0974261cc64f72bf2', '0a8f05eb973b4942af37c45109bd2502', 'office_id', '归属部门', 'varchar(64)', 'com.jeeplus.modules.sys.entity.Office', 'office.id|name', '0', '0', '1', '1', '1', '0', '=', 'officeselect', '', null, '2', '1', '2016-01-11 23:15:32', '1', '2016-01-11 23:15:32', null, '0');
INSERT INTO `gen_table_column` VALUES ('86ef0d48e3904bba9d4b1be095395160', '819dfc4b08574cb586781c3c208fd230', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '0', '0', '=', 'dateselect', '', null, '4', '1', '2016-03-01 15:16:40', '1', '2016-03-01 15:16:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('86f4ba2f1d084a4a9787d31db0ae2858', '819dfc4b08574cb586781c3c208fd230', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', '', null, '1', '1', '2016-03-01 15:16:40', '1', '2016-03-01 15:16:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('872a30c2256742c0acd76c5fb3c83e21', '90d8fc88828d47a99fcbfeaa4f95f0db', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', null, '6', '1', '2016-01-15 00:13:11', '1', '2016-01-15 00:13:11', null, '0');
INSERT INTO `gen_table_column` VALUES ('879a7f2e6b8547a1871ab52c1fa059dd', 'd796341e30d94c1d9c39b72397cad8a7', 'del_flag', '逻辑删除标记（0：显示；1：隐藏）', 'varchar(64)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '6', '1', '2016-03-06 21:22:17', '1', '2016-03-06 21:22:17', null, '0');
INSERT INTO `gen_table_column` VALUES ('884b8d5814ef4010a8c712402dda8d4c', 'bae082dbd74a4ca381c0ad24c886f991', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '9', '1', '2016-01-14 23:51:08', '1', '2016-01-14 23:51:08', null, '0');
INSERT INTO `gen_table_column` VALUES ('895cfd0298574e2ba71fbd96df5b12b1', '819dfc4b08574cb586781c3c208fd230', 'del_flag', '逻辑删除标记（0：显示；1：隐藏）', 'varchar(64)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '6', '1', '2016-03-01 15:16:40', '1', '2016-03-01 15:16:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('8d33bbcd4fe24e3092f8a29d4e947d35', '3f7c20cfa7b840dc854d9ea27f4de539', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', '', null, '5', '1', '2016-01-15 00:13:22', '1', '2016-01-15 00:13:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('8e2cf9d3e01948d2b8efc7de747fef0a', '0fc626b7ead046caa98618862a697728', 'driver', '司机', 'varchar(64)', 'String', 'driver', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '8', '1', '2016-03-01 09:22:49', '1', '2016-03-01 09:22:49', null, '0');
INSERT INTO `gen_table_column` VALUES ('979d48a6e2e948ccb3ad904a754ef010', 'bae082dbd74a4ca381c0ad24c886f991', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '0', '0', '=', 'dateselect', '', null, '8', '1', '2016-01-14 23:51:08', '1', '2016-01-14 23:51:08', null, '0');
INSERT INTO `gen_table_column` VALUES ('9805aafd37774f61aaec3882e1020290', '90d8fc88828d47a99fcbfeaa4f95f0db', 'id', '主键', 'varchar(64)', 'String', 'id', '1', '0', '0', '0', '0', '0', '=', 'input', '', null, '0', '1', '2016-01-15 00:13:11', '1', '2016-01-15 00:13:11', null, '0');
INSERT INTO `gen_table_column` VALUES ('9b6e8501885545aea6e8d0b98d88e9ae', '3f7c20cfa7b840dc854d9ea27f4de539', 'test_data_main', '外键', 'varchar(64)', 'String', 'testDataMain.id', '0', '0', '1', '1', '1', '0', '=', 'input', '', null, '4', '1', '2016-01-15 00:13:22', '1', '2016-01-15 00:13:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('a0410d5fd3214476b3a790dd89d9ae5a', '819dfc4b08574cb586781c3c208fd230', 'status', '状态', 'varchar(64)', 'String', 'status', '0', '1', '1', '1', '1', '1', '=', 'input', '', null, '13', '1', '2016-03-01 15:16:40', '1', '2016-03-01 15:16:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('a220be24db9141728d2fd4d7fb51c64a', '0fc626b7ead046caa98618862a697728', 'id', '主键', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '0', '1', '2016-03-01 09:22:49', '1', '2016-03-01 09:22:49', null, '0');
INSERT INTO `gen_table_column` VALUES ('a252b7f7525240c69fd2cbd115c80957', '819dfc4b08574cb586781c3c208fd230', 'end_address', '目的地', 'varchar(64)', 'String', 'endAddress', '0', '1', '1', '1', '1', '0', '=', 'areaselect', '', null, '9', '1', '2016-03-01 15:16:40', '1', '2016-03-01 15:16:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('a44b7ff54b40429d949b134a8d1831d9', '0fc626b7ead046caa98618862a697728', 'status', '车辆状态', 'varchar(64)', 'String', 'status', '0', '1', '1', '1', '1', '1', '=', 'select', '', null, '10', '1', '2016-03-01 09:22:49', '1', '2016-03-01 09:22:49', null, '0');
INSERT INTO `gen_table_column` VALUES ('aa63196cc78045b0a6f7a990230b8314', 'bae082dbd74a4ca381c0ad24c886f991', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', null, '6', '1', '2016-01-14 23:51:08', '1', '2016-01-14 23:51:08', null, '0');
INSERT INTO `gen_table_column` VALUES ('aaaa154a4fd242c58f86b59bd24fe37f', '3f7c20cfa7b840dc854d9ea27f4de539', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '7', '1', '2016-01-15 00:13:22', '1', '2016-01-15 00:13:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('aab4407dcf6a4f29b1e0cd574ffe6dc6', '819dfc4b08574cb586781c3c208fd230', 'order_name', '订单名称', 'varchar(64)', 'String', 'orderName', '0', '1', '1', '1', '1', '1', 'like', 'input', '', null, '7', '1', '2016-03-01 15:16:40', '1', '2016-03-01 15:16:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('ae0d84e41c7e4ba187c7a19b7fa601bd', '0a8f05eb973b4942af37c45109bd2502', 'begin_date', '请假开始日期', 'datetime', 'java.util.Date', 'beginDate', '0', '0', '1', '1', '1', '0', '=', 'dateselect', '', null, '4', '1', '2016-01-11 23:15:32', '1', '2016-01-11 23:15:32', null, '0');
INSERT INTO `gen_table_column` VALUES ('ae9d99791a9146fd9504a4900c13f340', 'e08d6fbc393047748a2d45c98be42676', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '1', '1', '0', '=', 'dateselect', '', null, '8', '1', '2016-01-14 22:53:41', '1', '2016-01-14 22:53:41', null, '0');
INSERT INTO `gen_table_column` VALUES ('b0a7164f21bd4866be085ffccd4f4f70', 'd796341e30d94c1d9c39b72397cad8a7', 'id', '主键', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '0', '1', '2016-03-06 21:22:17', '1', '2016-03-06 21:22:17', null, '0');
INSERT INTO `gen_table_column` VALUES ('bfcac8702ffc459d915f431d3afd6849', 'e08d6fbc393047748a2d45c98be42676', 'user_id', '归属用户', 'varchar(64)', 'String', 'user.id|name', '0', '0', '1', '1', '0', '0', '=', 'userselect', '', null, '1', '1', '2016-01-14 22:53:41', '1', '2016-01-14 22:53:41', null, '0');
INSERT INTO `gen_table_column` VALUES ('c0dde941dfdf47188d116adc3a5276e0', '90d8fc88828d47a99fcbfeaa4f95f0db', 'start', '出发地', 'varchar(64)', 'com.jeeplus.modules.sys.entity.Area', 'start.id|name', '0', '0', '1', '1', '1', '1', '=', 'areaselect', '', null, '1', '1', '2016-01-15 00:13:11', '1', '2016-01-15 00:13:11', null, '0');
INSERT INTO `gen_table_column` VALUES ('c1aafa2f594440b7a71f8b899814b4dd', '0a8f05eb973b4942af37c45109bd2502', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', null, '7', '1', '2016-01-11 23:15:32', '1', '2016-01-11 23:15:32', null, '0');
INSERT INTO `gen_table_column` VALUES ('c2c06343cef94a378fdb5deea73e22b9', '819dfc4b08574cb586781c3c208fd230', 'id', '主键', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '0', '1', '2016-03-01 15:16:40', '1', '2016-03-01 15:16:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('c3cd63f920f044b78d539f652116ad5a', '90d8fc88828d47a99fcbfeaa4f95f0db', 'price', '代理价格', 'double', 'Double', 'price', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '3', '1', '2016-01-15 00:13:11', '1', '2016-01-15 00:13:11', null, '0');
INSERT INTO `gen_table_column` VALUES ('c607efb3cb5b4f98bcea2bd5a99dbba0', '90d8fc88828d47a99fcbfeaa4f95f0db', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', '', null, '5', '1', '2016-01-15 00:13:11', '1', '2016-01-15 00:13:11', null, '0');
INSERT INTO `gen_table_column` VALUES ('c74a71d6da8c4f4993a2bb5d2d21d2bf', '73326f175c2d4a63b2d89820a79ba2eb', 'id', '编号', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '0', '1', '2016-02-25 22:00:02', '1', '2016-02-25 22:00:02', null, '0');
INSERT INTO `gen_table_column` VALUES ('c8978ef9a53843129bebf137ece755af', 'd796341e30d94c1d9c39b72397cad8a7', 'income', '收入', 'varchar(64)', 'String', 'income', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '8', '1', '2016-03-06 21:22:17', '1', '2016-03-06 21:22:17', null, '0');
INSERT INTO `gen_table_column` VALUES ('ca0bccb569ec40d4af5f766c69a7b1d7', '819dfc4b08574cb586781c3c208fd230', 'start_address', '出发地', 'varchar(64)', 'String', 'startAddress', '0', '1', '1', '1', '1', '0', '=', 'areaselect', '', null, '8', '1', '2016-03-01 15:16:40', '1', '2016-03-01 15:16:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('cfba463bdfaa4a4dbe6df26262f7a9f4', 'e08d6fbc393047748a2d45c98be42676', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '12', '1', '2016-01-14 22:53:41', '1', '2016-01-14 22:53:41', null, '0');
INSERT INTO `gen_table_column` VALUES ('d0458699eed04f87bdc48c8b05036ce4', 'd796341e30d94c1d9c39b72397cad8a7', 'order_id', '订单编号', 'varchar(64)', 'String', 'orderId', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '9', '1', '2016-03-06 21:22:17', '1', '2016-03-06 21:22:17', null, '0');
INSERT INTO `gen_table_column` VALUES ('d2ecc47b6e1843fd83abccdb439d7337', '3f7c20cfa7b840dc854d9ea27f4de539', 'price', '代理价格', 'double', 'Double', 'price', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '3', '1', '2016-01-15 00:13:22', '1', '2016-01-15 00:13:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('d3704e74d5f7464c95cb35eb21b34d12', '819dfc4b08574cb586781c3c208fd230', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '3', '1', '2016-03-01 15:16:40', '1', '2016-03-01 15:16:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('d37463e8a49941fba998e52364c399e1', '0fc626b7ead046caa98618862a697728', 'del_flag', '逻辑删除标记（0：显示；1：隐藏）', 'varchar(64)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '6', '1', '2016-03-01 09:22:49', '1', '2016-03-01 09:22:49', null, '0');
INSERT INTO `gen_table_column` VALUES ('d451c34d21214fe19d17103f2686feed', '0a8f05eb973b4942af37c45109bd2502', 'end_date', '请假结束日期', 'datetime', 'java.util.Date', 'endDate', '0', '0', '1', '1', '1', '0', '=', 'dateselect', '', null, '5', '1', '2016-01-11 23:15:32', '1', '2016-01-11 23:15:32', null, '0');
INSERT INTO `gen_table_column` VALUES ('d4e4ee68ea054b39a74c81b98b4e8535', '73326f175c2d4a63b2d89820a79ba2eb', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '10', '1', '2016-02-25 22:00:02', '1', '2016-02-25 22:00:02', null, '0');
INSERT INTO `gen_table_column` VALUES ('d78de24470b143ac89a388de1bd641e4', 'd796341e30d94c1d9c39b72397cad8a7', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', null, '2', '1', '2016-03-06 21:22:17', '1', '2016-03-06 21:22:17', null, '0');
INSERT INTO `gen_table_column` VALUES ('d7de5681415940178d026805e4dae92c', 'bae082dbd74a4ca381c0ad24c886f991', 'parent_id', '父级编号', 'varchar(64)', 'This', 'parent.id|name', '0', '0', '1', '1', '0', '0', '=', 'treeselect', '', null, '3', '1', '2016-01-14 23:51:08', '1', '2016-01-14 23:51:08', null, '0');
INSERT INTO `gen_table_column` VALUES ('d807bbe125e645ae85383517a6cc952b', '0a8f05eb973b4942af37c45109bd2502', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', '', null, '6', '1', '2016-01-11 23:15:32', '1', '2016-01-11 23:15:32', null, '0');
INSERT INTO `gen_table_column` VALUES ('da69bd8504ee4bab99b65666ddcedb6a', 'e08d6fbc393047748a2d45c98be42676', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '9', '1', '2016-01-14 22:53:41', '1', '2016-01-14 22:53:41', null, '0');
INSERT INTO `gen_table_column` VALUES ('e1e77f23d114457fbee57f2669af7877', '90d8fc88828d47a99fcbfeaa4f95f0db', 'test_data_main', '外键', 'varchar(64)', 'String', 'testDataMain.id', '0', '0', '1', '1', '1', '0', '=', 'input', '', null, '4', '1', '2016-01-15 00:13:11', '1', '2016-01-15 00:13:11', null, '0');
INSERT INTO `gen_table_column` VALUES ('e1f4b6dd969b44008b74de69105b7f82', 'e08d6fbc393047748a2d45c98be42676', 'name', '名称', 'varchar(100)', 'String', 'name', '0', '0', '1', '1', '1', '1', 'like', 'input', '', null, '4', '1', '2016-01-14 22:53:41', '1', '2016-01-14 22:53:41', null, '0');
INSERT INTO `gen_table_column` VALUES ('e447f2387a764adfb8d7a4cbeec3eb7d', '0a8f05eb973b4942af37c45109bd2502', 'del_flag', '逻辑删除标记（0：显示；1：隐藏）', 'varchar(64)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '11', '1', '2016-01-11 23:15:32', '1', '2016-01-11 23:15:32', null, '0');
INSERT INTO `gen_table_column` VALUES ('e72843f6c5834fce925e0bf6f43a2df2', 'bae082dbd74a4ca381c0ad24c886f991', 'id', '主键', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '0', '1', '2016-01-14 23:51:08', '1', '2016-01-14 23:51:08', null, '0');
INSERT INTO `gen_table_column` VALUES ('ea3b35f3ea754847be0cf12c14edcb3d', 'e08d6fbc393047748a2d45c98be42676', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '11', '1', '2016-01-14 22:53:41', '1', '2016-01-14 22:53:41', null, '0');
INSERT INTO `gen_table_column` VALUES ('ea6ab02268704e86ba9154d5f2937b2c', '3f7c20cfa7b840dc854d9ea27f4de539', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '0', '0', '=', 'dateselect', '', null, '8', '1', '2016-01-15 00:13:22', '1', '2016-01-15 00:13:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('ed31a959dd644f598f5a7c9f4211ada1', '90d8fc88828d47a99fcbfeaa4f95f0db', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '7', '1', '2016-01-15 00:13:11', '1', '2016-01-15 00:13:11', null, '0');
INSERT INTO `gen_table_column` VALUES ('ed792e4f3abb419898895c6558684987', '0fc626b7ead046caa98618862a697728', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '3', '1', '2016-03-01 09:22:49', '1', '2016-03-01 09:22:49', null, '0');
INSERT INTO `gen_table_column` VALUES ('ee3b7c3f41914068ad94f12c4ac09ac0', 'e08d6fbc393047748a2d45c98be42676', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', '', null, '7', '1', '2016-01-14 22:53:41', '1', '2016-01-14 22:53:41', null, '0');
INSERT INTO `gen_table_column` VALUES ('f292942aa43e44c58486a9de5c380c48', '3f7c20cfa7b840dc854d9ea27f4de539', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', null, '6', '1', '2016-01-15 00:13:22', '1', '2016-01-15 00:13:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('f66bf1caf9204f27a8a1c080d6487eb3', '73326f175c2d4a63b2d89820a79ba2eb', 'test_data_main_id', '业务主表ID', 'varchar(64)', 'String', 'testDataMain.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '4', '1', '2016-02-25 22:00:02', '1', '2016-02-25 22:00:02', null, '0');
INSERT INTO `gen_table_column` VALUES ('f91b8587c39d41d98339d9f5ce2d51bc', 'bae082dbd74a4ca381c0ad24c886f991', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '7', '1', '2016-01-14 23:51:08', '1', '2016-01-14 23:51:08', null, '0');
INSERT INTO `gen_table_column` VALUES ('f9aebdc337794183be1427bfcc815baa', '0a8f05eb973b4942af37c45109bd2502', 'area_id', '归属区域', 'varchar(64)', 'com.jeeplus.modules.sys.entity.Area', 'area.id|name', '0', '1', '1', '1', '1', '0', '=', 'areaselect', '', null, '3', '1', '2016-01-11 23:15:32', '1', '2016-01-11 23:15:32', null, '0');

-- ----------------------------
-- Table structure for `gen_template`
-- ----------------------------
DROP TABLE IF EXISTS `gen_template`;
CREATE TABLE `gen_template` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `category` varchar(2000) DEFAULT NULL COMMENT '分类',
  `file_path` varchar(500) DEFAULT NULL COMMENT '生成文件路径',
  `file_name` varchar(200) DEFAULT NULL COMMENT '生成文件名',
  `content` text COMMENT '内容',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_template_del_falg` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代码模板表';

-- ----------------------------
-- Records of gen_template
-- ----------------------------

-- ----------------------------
-- Table structure for `iim_chat_history`
-- ----------------------------
DROP TABLE IF EXISTS `iim_chat_history`;
CREATE TABLE `iim_chat_history` (
  `id` varchar(64) CHARACTER SET latin1 NOT NULL,
  `userid1` varchar(64) CHARACTER SET latin1 DEFAULT NULL,
  `userid2` varchar(64) CHARACTER SET latin1 DEFAULT NULL,
  `msg` varchar(1024) DEFAULT NULL,
  `status` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of iim_chat_history
-- ----------------------------
INSERT INTO `iim_chat_history` VALUES ('1cbb3b7c34f8435f9a20d59a810d4e34', 'admin', 'dzq', 'rrr', '0', '2016-01-18 19:53:11');
INSERT INTO `iim_chat_history` VALUES ('1f314293b1654406b621a7cd7e3a2cf7', 'admin', 'ym', 'www\n', '1', '2016-01-16 19:42:21');
INSERT INTO `iim_chat_history` VALUES ('1fcf1fee9e8d4e7a8af8c2558b6f6f43', 'ym', 'ym', '明天吃饭吧\n', '1', '2016-01-16 20:03:55');
INSERT INTO `iim_chat_history` VALUES ('2cd3a1d1f8e541e58cdd3e23f8062dfa', 'thinkgem', 'jn_zhb', 'sss', '0', '2016-01-08 22:35:20');
INSERT INTO `iim_chat_history` VALUES ('324f6f3d347043f19dedbc8b11e4802e', 'fbb', 'ym', '好的\n', '1', '2016-01-16 20:05:24');
INSERT INTO `iim_chat_history` VALUES ('53592851568c4c59abef074b4e3750e6', 'ym', 'fbb', '冰冰  明天一起\n吃饭吧？', '1', '2016-01-16 20:05:07');
INSERT INTO `iim_chat_history` VALUES ('66476e11e417476eb26b51159adca319', 'fbb', 'fbb', '555\n', '1', '2016-01-17 18:47:30');
INSERT INTO `iim_chat_history` VALUES ('6fdd0ee9dd654a55af2e46baac30107e', 'admin', 'admin', 'hello\n', '1', '2016-01-16 18:23:09');
INSERT INTO `iim_chat_history` VALUES ('7b869a263d0f4fdc9389e5a919039e4d', 'fbb', 'ym', '2222222222222\n', '0', '2016-01-17 18:11:03');
INSERT INTO `iim_chat_history` VALUES ('8df1f8f4008d4a6eabac3b64133be666', 'ym', 'zly', '你好 在吗 \n丽颖', '0', '2016-01-16 20:04:19');
INSERT INTO `iim_chat_history` VALUES ('93def2f93d204ba09bdc89f0aaafffb7', 'thinkgem', 'thinkgem', 'nihao\n', '1', '2016-01-10 19:02:07');
INSERT INTO `iim_chat_history` VALUES ('a2833abbbe624619873dc3d3dade8dfc', 'fbb', 'ym', '111\n', '0', '2016-01-17 18:11:01');
INSERT INTO `iim_chat_history` VALUES ('b00ab2f66bcf4e17ade246a8f30c548b', 'admin', 'admin', '111', '1', '2016-01-19 13:22:12');
INSERT INTO `iim_chat_history` VALUES ('b2ba1849cd1b48d0ad1cd41d43eb2070', 'admin', 'fbb', '吃', '0', '2016-01-19 14:35:35');
INSERT INTO `iim_chat_history` VALUES ('d37a73ef356e415195127485fa7a9b70', 'admin', 'zw', 'nihao\n', '0', '2016-01-16 18:23:15');
INSERT INTO `iim_chat_history` VALUES ('d81eb8af34994115a21ce4c95b6b3d2a', 'thinkgem', 'test2', 'rrr\n', '1', '2016-01-09 22:41:35');
INSERT INTO `iim_chat_history` VALUES ('dbffb2079ca14b739d0c1a5a9075aaa2', 'thinkgem', 'jn_zhb', '84\n', '0', '2016-01-08 23:51:54');
INSERT INTO `iim_chat_history` VALUES ('e153986319414782a40b8443059184d6', 'thinkgem', 'jn_zhb', '111\n', '0', '2016-01-10 18:31:16');
INSERT INTO `iim_chat_history` VALUES ('ea2d733a3732427391301c914ab63077', 'admin', 'admin', '11111211', '1', '2016-01-19 13:22:19');
INSERT INTO `iim_chat_history` VALUES ('fb3224b40acb42c884fb1ac18763e8f6', 'fbb', 'ym', '666\n', '1', '2016-01-16 19:56:10');

-- ----------------------------
-- Table structure for `iim_mail`
-- ----------------------------
DROP TABLE IF EXISTS `iim_mail`;
CREATE TABLE `iim_mail` (
  `id` varchar(64) NOT NULL,
  `title` varchar(128) DEFAULT NULL COMMENT '标题',
  `overview` varchar(128) DEFAULT NULL COMMENT '内容概要',
  `content` varchar(5096) DEFAULT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='邮件';

-- ----------------------------
-- Records of iim_mail
-- ----------------------------
INSERT INTO `iim_mail` VALUES ('00cbc8e9ad5a47309d5df667c60f5662', 'tes', 'teststs', 'teststs');
INSERT INTO `iim_mail` VALUES ('02a669d551b645cfa73e6a2af52abe09', '回复:回复:tew', '3333----------------', '&lt;br&gt;3333&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 00:02:47&lt;br&gt;收件人:admin&lt;br&gt;主题:回复:tew&lt;br&gt;\r\n   	  &lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-15 22:49:57&lt;br&gt;收件人:admin&lt;br&gt;主题:tew&lt;br&gt;\r\n   	  ssss');
INSERT INTO `iim_mail` VALUES ('06daeb120a504054adefb24b875f5489', '89999', 'wwwwwwwwwwwww', '&lt;span style=&quot;background-color: yellow;&quot;&gt;wwwwwwwwwwwww&lt;/span&gt;');
INSERT INTO `iim_mail` VALUES ('09eba00cf56549fc993e1a3e3f3f56fb', '回复:2', '------------------ 原', '&lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 02:05:43&lt;br&gt;收件人:admin&lt;br&gt;主题:2&lt;br&gt;\r\n   	  22');
INSERT INTO `iim_mail` VALUES ('0bc565e952bb4231858030835c6f1237', 'test', 'wewewwe', 'wewewwe');
INSERT INTO `iim_mail` VALUES ('1041ca173bb2483cacf9418be7a93ba8', '回复:回复:回复:tew', '------------', '&lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 00:07:22&lt;br&gt;收件人:admin&lt;br&gt;主题:回复:回复:tew&lt;br&gt;\r\n   	  &lt;br&gt;3333&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 00:02:47&lt;br&gt;收件人:admin&lt;br&gt;主题:回复:tew&lt;br&gt;\r\n   	  &lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-15 22:49:57&lt;br&gt;收件人:admin&lt;br&gt;主题:tew&lt;br&gt;\r\n   	  ssss');
INSERT INTO `iim_mail` VALUES ('14d19beac1004bfc8de4521c0c59d78d', '回复:回复:回复:回复:tew', '------------------ 原', '&lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 02:11:33&lt;br&gt;收件人:admin&lt;br&gt;主题:回复:回复:回复:tew&lt;br&gt;\r\n   	  &lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 00:07:22&lt;br&gt;收件人:admin&lt;br&gt;主题:回复:回复:tew&lt;br&gt;\r\n   	  &lt;br&gt;3333&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 00:02:47&lt;br&gt;收件人:admin&lt;br&gt;主题:回复:tew&lt;br&gt;\r\n   	  &lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-15 22:49:57&lt;br&gt;收件人:admin&lt;br&gt;主题:tew&lt;br&gt;\r\n   	  ssss');
INSERT INTO `iim_mail` VALUES ('196618fcd27b4edfbef0ffb5c2b519d2', '回复:', 'sss-----------------', '&lt;br&gt;sss&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:&lt;br&gt;发送时间:&lt;br&gt;收件人:&lt;br&gt;主题:&lt;br&gt;');
INSERT INTO `iim_mail` VALUES ('20371c25527a4c7a963441ef527eca8b', 'sss', 'ssss', 'ssss');
INSERT INTO `iim_mail` VALUES ('2046db4813804969bae3c6c54c388318', 'test', 'twtwtw', 'twtwtw');
INSERT INTO `iim_mail` VALUES ('22480aa1008c4343956307d931e023e9', '回复:回复:回复:回复:回复:tew', '333333--------------', '&lt;br&gt;333333&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 01:46:48&lt;br&gt;收件人:admin&lt;br&gt;主题:回复:回复:回复:回复:tew&lt;br&gt;\r\n   	  &lt;br&gt;&lt;span style=&quot;background-color: yellow;&quot;&gt;sss&lt;/span&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 00:13:28&lt;br&gt;收件人:admin&lt;br&gt;主题:回复:回复:回复:tew&lt;br&gt;\r\n   	  &lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 00:07:22&lt;br&gt;收件人:admin&lt;br&gt;主题:回复:回复:tew&lt;br&gt;\r\n   	  &lt;br&gt;3333&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 00:02:47&lt;br&gt;收件人:admin&lt;br&gt;主题:回复:tew&lt;br&gt;\r\n   	  &lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-15 22:49:57&lt;br&gt;收件人:admin&lt;br&gt;主题:tew&lt;br&gt;\r\n   	  ssss');
INSERT INTO `iim_mail` VALUES ('24bdf2345d4247adb051051096a3dfcb', '回复:tew', '------------------ 原', '&lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2015-11-24 17:35:42&lt;br&gt;收件人:admin&lt;br&gt;主题:tew&lt;br&gt;\r\n   	  sss');
INSERT INTO `iim_mail` VALUES ('2a728059ef8c427caec25be0fb4ee96b', 'rrr', 'rrrrr', 'rrrrr');
INSERT INTO `iim_mail` VALUES ('2c8d07503898492cb6969b7c7f0a64e6', '11', '111', '111');
INSERT INTO `iim_mail` VALUES ('2f4ba44722194a3aa1423a1c58b69021', 'ss', 'ssss', 'ssss');
INSERT INTO `iim_mail` VALUES ('30ae8bdc08fb4747922e16202eeb08b3', '回复:2', '------------------ 原', '&lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 02:05:43&lt;br&gt;收件人:admin&lt;br&gt;主题:2&lt;br&gt;\r\n   	  22');
INSERT INTO `iim_mail` VALUES ('3340f4a663f84ba48c9ebb80ce3acf5a', 'test', 'ssss', 'ssss');
INSERT INTO `iim_mail` VALUES ('35c90c17d6ec4c70a382f63090aa38bc', 'tew', 'sss', 'sss');
INSERT INTO `iim_mail` VALUES ('36b526b001d049d0b5b2f1bf1112f67e', 'tew', 'twtwtwt', 'twtwtwt');
INSERT INTO `iim_mail` VALUES ('38ac9700fdf649ff8cdc6e9f54c5afa9', '邀请函', '杨幂&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;我和李晨 ，五一结', '杨幂&lt;div&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;我和李晨 ，&lt;span style=&quot;background-color: yellow; font-weight: bold;&quot;&gt;五一结婚&lt;/span&gt;，希望你莅临参加。&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp;谢谢啦。&lt;/div&gt;');
INSERT INTO `iim_mail` VALUES ('3cf66a55aaff4965892b0ed8365a2d6d', 'test', 'stgss', 'stgss');
INSERT INTO `iim_mail` VALUES ('3db29dac7af542e8a36552ba410aad52', 'ww', 'wwww', 'wwww');
INSERT INTO `iim_mail` VALUES ('4ac7390232dc458baa01422d28b71133', 'tes', 'eeeee', 'eeeee');
INSERT INTO `iim_mail` VALUES ('525d380ce0e549d6bc36ceb41ad748e9', '明天吃饭', '大家好，明天晚上吃饭聚餐。', '大家好，明天晚上吃饭聚餐。');
INSERT INTO `iim_mail` VALUES ('549bab13681a43c98092bc9e5a5224fc', 'sss', 'sssssssssssssssss', 'sssssssssssssssss');
INSERT INTO `iim_mail` VALUES ('584ae69dbed14f29b0aa5fb305413f6f', '回复:回复:回复:回复:tew', 'sss-----------------', '&lt;br&gt;&lt;span style=&quot;background-color: yellow;&quot;&gt;sss&lt;/span&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 00:13:28&lt;br&gt;收件人:admin&lt;br&gt;主题:回复:回复:回复:tew&lt;br&gt;\r\n   	  &lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 00:07:22&lt;br&gt;收件人:admin&lt;br&gt;主题:回复:回复:tew&lt;br&gt;\r\n   	  &lt;br&gt;3333&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 00:02:47&lt;br&gt;收件人:admin&lt;br&gt;主题:回复:tew&lt;br&gt;\r\n   	  &lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-15 22:49:57&lt;br&gt;收件人:admin&lt;br&gt;主题:tew&lt;br&gt;\r\n   	  ssss');
INSERT INTO `iim_mail` VALUES ('5ce7267bd5d04dcb8e6db8764e6359fa', 'sss', 'ssss', 'ssss');
INSERT INTO `iim_mail` VALUES ('621d83545f1f4d9383c8d469c5ddbebe', 'sss', 'ssssssssssssssssssss', 'ssssssssssssssssssssssss');
INSERT INTO `iim_mail` VALUES ('6a6f4063c8664fe380928f3d0f0d518f', 'tew', 'ssss', 'ssss');
INSERT INTO `iim_mail` VALUES ('729bc8258c2547c3bb29aaea49d62535', 'test', '', '');
INSERT INTO `iim_mail` VALUES ('758a391585f145dbae465de92b215d41', 'ss', 'sss', 'sss');
INSERT INTO `iim_mail` VALUES ('763c4fc20a104270a31d00b1fed0cc69', '回复:2', '------------------ 原', '&lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 02:05:43&lt;br&gt;收件人:admin&lt;br&gt;主题:2&lt;br&gt;\r\n   	  22');
INSERT INTO `iim_mail` VALUES ('777a564bcc224fe4b8e34c68b3ea09d5', 'rr', 'rrrrrrr', 'rrrrrrr');
INSERT INTO `iim_mail` VALUES ('79a807f2db8d4e888a6cf114ecdbc880', '回复:2', '------------------ 原', '&lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 02:05:43&lt;br&gt;收件人:admin&lt;br&gt;主题:2&lt;br&gt;\r\n   	  22');
INSERT INTO `iim_mail` VALUES ('7dcaaabb3a4b44c69d989be34575de2f', '回复:rrr', '------------------ 原', '&lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2015-11-24 18:42:35&lt;br&gt;收件人:admin&lt;br&gt;主题:rrr&lt;br&gt;');
INSERT INTO `iim_mail` VALUES ('7fffe4ea711c487da9cd386181394bc0', '回复:2', '------------------ 原', '&lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 02:05:43&lt;br&gt;收件人:admin&lt;br&gt;主题:2&lt;br&gt;\r\n   	  22');
INSERT INTO `iim_mail` VALUES ('81416d60c0294a62b2c2acf206ad5ff0', '踏踏实实', '前期未完全按单位完全 v', '前期未完全按单位完全 v');
INSERT INTO `iim_mail` VALUES ('86c71b16e3ed49cfa2ecaae1bfb599f3', 'rrr', '', '');
INSERT INTO `iim_mail` VALUES ('87f0b7e501d741bfa94e78ea2a58e25c', '回复:2', '------------', '&lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 02:05:43&lt;br&gt;收件人:admin&lt;br&gt;主题:2&lt;br&gt;\r\n   	  22');
INSERT INTO `iim_mail` VALUES ('89852543c3964815a1b42bae1504c593', 'sss', 'sw', 'sw');
INSERT INTO `iim_mail` VALUES ('8a5acec624db46ceac178b1be69a09bc', 'sss', 'ssss', 'ssss');
INSERT INTO `iim_mail` VALUES ('8b77e11953804fd48d752539774ec9c6', '回复:回复:回复:tew', '------------------ 原', '&lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 00:07:22&lt;br&gt;收件人:admin&lt;br&gt;主题:回复:回复:tew&lt;br&gt;\r\n   	  &lt;br&gt;3333&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 00:02:47&lt;br&gt;收件人:admin&lt;br&gt;主题:回复:tew&lt;br&gt;\r\n   	  &lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-15 22:49:57&lt;br&gt;收件人:admin&lt;br&gt;主题:tew&lt;br&gt;\r\n   	  ssss');
INSERT INTO `iim_mail` VALUES ('8cb2079c9dbd41539bc52731b5c2a423', '回复:明天吃饭', '------------------ 原', '&lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2015-11-26 18:10:58&lt;br&gt;收件人:admin&lt;br&gt;主题:明天吃饭&lt;br&gt;\r\n   	  &lt;span style=&quot;background-color: yellow;&quot;&gt;你好 ：&lt;/span&gt;&lt;div&gt;&lt;span style=&quot;background-color: yellow;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;background-color: yellow;&quot;&gt;今晚吃饭&lt;/span&gt;&lt;/div&gt;');
INSERT INTO `iim_mail` VALUES ('9ccfffde4f6d487f859488eee4bee502', '回复:2', '------------------ 原', '&lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 02:05:43&lt;br&gt;收件人:admin&lt;br&gt;主题:2&lt;br&gt;\r\n   	  22');
INSERT INTO `iim_mail` VALUES ('9e257b5766f348e98abb8c271cb769ae', '回复:回复:tew', '------------------ 原', '&lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 00:02:47&lt;br&gt;收件人:admin&lt;br&gt;主题:回复:tew&lt;br&gt;\r\n   	  &lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-15 22:49:57&lt;br&gt;收件人:admin&lt;br&gt;主题:tew&lt;br&gt;\r\n   	  ssss');
INSERT INTO `iim_mail` VALUES ('a019f39fc2714e08801cae6e638a0f1b', 'tet', 'sss', 'sss');
INSERT INTO `iim_mail` VALUES ('a1564eb927fb4da1988cadce35a4f0b5', 'fe', 'eee', 'eee');
INSERT INTO `iim_mail` VALUES ('a85a03a77b08414ebdec3e950ed23494', '444', '4444', '4444');
INSERT INTO `iim_mail` VALUES ('aae8c10725574e12875dbe727cc1e5c1', '回复:tew', '------------------ 原', '&lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-15 22:49:57&lt;br&gt;收件人:admin&lt;br&gt;主题:tew&lt;br&gt;\r\n   	  ssss');
INSERT INTO `iim_mail` VALUES ('aaf2a947791349f8add8f773c821e116', '444', '', '');
INSERT INTO `iim_mail` VALUES ('b3ff003ae39a4c448f58b0633fe97e25', '回复:明天吃饭', '------------------ 原', '&lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2015-11-26 18:10:58&lt;br&gt;收件人:admin&lt;br&gt;主题:明天吃饭&lt;br&gt;\r\n   	  &lt;span style=&quot;background-color: yellow;&quot;&gt;你好 ：&lt;/span&gt;&lt;div&gt;&lt;span style=&quot;background-color: yellow;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;background-color: yellow;&quot;&gt;今晚吃饭&lt;/span&gt;&lt;/div&gt;');
INSERT INTO `iim_mail` VALUES ('b73ba9985a8b4a319cbcbabcc74cb245', 'test111', '212121', '212121');
INSERT INTO `iim_mail` VALUES ('bc0630b48eca49f6a8f125911316d745', '回复:2', '------------------ 原', '&lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 02:05:43&lt;br&gt;收件人:admin&lt;br&gt;主题:2&lt;br&gt;\r\n   	  22');
INSERT INTO `iim_mail` VALUES ('bd19ddfd2d994a6f95858bc6fc875a30', '明天吃饭', '你好 ：今晚吃饭', '&lt;span style=&quot;background-color: yellow;&quot;&gt;你好 ：&lt;/span&gt;&lt;div&gt;&lt;span style=&quot;background-color: yellow;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;background-color: yellow;&quot;&gt;今晚吃饭&lt;/span&gt;&lt;/div&gt;');
INSERT INTO `iim_mail` VALUES ('beb0827b7c514139b70d71bcfa66733b', 'tew', '', '');
INSERT INTO `iim_mail` VALUES ('bfea4902ace447c8aee9b4198c19a345', 'ss', 'sss', 'sss');
INSERT INTO `iim_mail` VALUES ('c187db5a2fd84325abeefc0465c46eea', 'tew', 'sss', 'sss');
INSERT INTO `iim_mail` VALUES ('caeff3e2169242d197404750bbe80256', '明晚吃饭', '大家好 ，明天晚上吃饭请，务必出席。', '&lt;span style=&quot;background-color: yellow;&quot;&gt;大家好 ，明天晚上吃饭请，务必出席。&lt;/span&gt;');
INSERT INTO `iim_mail` VALUES ('cd8af2da8df24f5797e4c6f0f2bcdf7e', '大家好啊', '呵呵呵', '呵呵呵');
INSERT INTO `iim_mail` VALUES ('d40829c0c7f24496886bd94f6b51ed53', 'sss', 'sssss', 'sssss');
INSERT INTO `iim_mail` VALUES ('d45436b28062401db5f480a278ba22bd', '回复:回复:tew', '333---------', '&lt;br&gt;333&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 00:02:47&lt;br&gt;收件人:admin&lt;br&gt;主题:回复:tew&lt;br&gt;\r\n   	  &lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-15 22:49:57&lt;br&gt;收件人:admin&lt;br&gt;主题:tew&lt;br&gt;\r\n   	  ssss');
INSERT INTO `iim_mail` VALUES ('e133c69c33eb4a018618b02513cc827a', '3333', 'rrrr', 'rrrr');
INSERT INTO `iim_mail` VALUES ('e8c264af3e394f0c88b2967bf381dd5b', '回复:回复:回复:tew', '------------------ 原', '&lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 00:07:22&lt;br&gt;收件人:admin&lt;br&gt;主题:回复:回复:tew&lt;br&gt;\r\n   	  &lt;br&gt;3333&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 00:02:47&lt;br&gt;收件人:admin&lt;br&gt;主题:回复:tew&lt;br&gt;\r\n   	  &lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-15 22:49:57&lt;br&gt;收件人:admin&lt;br&gt;主题:tew&lt;br&gt;\r\n   	  ssss');
INSERT INTO `iim_mail` VALUES ('e97f8af28ab748e1a0ddc1d3447fe62a', '2', '22', '22');
INSERT INTO `iim_mail` VALUES ('f3ae602054874277bc28395571dee10d', '回复:回复:tew', '------------------ 原', '&lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 00:02:47&lt;br&gt;收件人:admin&lt;br&gt;主题:回复:tew&lt;br&gt;\r\n   	  &lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-15 22:49:57&lt;br&gt;收件人:admin&lt;br&gt;主题:tew&lt;br&gt;\r\n   	  ssss');
INSERT INTO `iim_mail` VALUES ('f671e940380e436c8bfe28a7dfb29ff5', '回复:2', '------------------ 原', '&lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 02:05:43&lt;br&gt;收件人:admin&lt;br&gt;主题:2&lt;br&gt;\r\n   	  22');
INSERT INTO `iim_mail` VALUES ('fa87ed826ccd42f3a649ab0fe1598955', '回复:2', '------------------ 原', '&lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 02:05:43&lt;br&gt;收件人:admin&lt;br&gt;主题:2&lt;br&gt;\r\n   	  22');
INSERT INTO `iim_mail` VALUES ('fbd1c951b19b4452bf3a26b31d5b5649', '回复:回复:tew', '------------------ 原', '&lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-16 00:02:47&lt;br&gt;收件人:admin&lt;br&gt;主题:回复:tew&lt;br&gt;\r\n   	  &lt;br&gt;&lt;br&gt;&lt;br&gt;------------------ 原始邮件 ------------------&lt;br&gt;发件人:admin&lt;br&gt;发送时间:2016-01-15 22:49:57&lt;br&gt;收件人:admin&lt;br&gt;主题:tew&lt;br&gt;\r\n   	  ssss');

-- ----------------------------
-- Table structure for `iim_mail_box`
-- ----------------------------
DROP TABLE IF EXISTS `iim_mail_box`;
CREATE TABLE `iim_mail_box` (
  `id` varchar(64) NOT NULL,
  `readstatus` varchar(45) DEFAULT NULL COMMENT '状态 0 未读 1 已读',
  `senderId` varchar(64) DEFAULT NULL COMMENT '发件人',
  `receiverId` varchar(6400) DEFAULT NULL COMMENT '收件人',
  `sendtime` datetime DEFAULT NULL COMMENT '发送时间',
  `mailid` varchar(64) DEFAULT NULL COMMENT '邮件外键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收件箱';

-- ----------------------------
-- Records of iim_mail_box
-- ----------------------------
INSERT INTO `iim_mail_box` VALUES ('00b68c2919ec4a66add4bdfc3ad1b32f', '0', '1', 'dc9663e71aaa42f0a2634770896ec74c', '2016-01-16 02:17:45', 'd45436b28062401db5f480a278ba22bd');
INSERT INTO `iim_mail_box` VALUES ('00d2cb0766d14480890656303dff62a7', '0', '1', 'dc9663e71aaa42f0a2634770896ec74c', '2016-01-16 02:08:30', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('017cefb5d98a4f4e8f7e0ad2793490f0', '0', '1', '4', '2016-01-16 02:05:43', 'e97f8af28ab748e1a0ddc1d3447fe62a');
INSERT INTO `iim_mail_box` VALUES ('01c5ac3c1d984099bd5462a9f2123b40', '0', '1', '42f5435f943a4e8cbcd86ec07b1d922a', '2016-01-16 02:15:55', '14d19beac1004bfc8de4521c0c59d78d');
INSERT INTO `iim_mail_box` VALUES ('024daa906740457a9b306067f66bd44f', '0', '1', 'cb359e3089224f97adae46cf03c0ed94', '2016-01-16 02:08:30', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('032803f0577644c3aaa3baf2b24ac9db', '0', '1', 'd8de25a1f872404e82f669c04091685e', '2016-01-16 02:08:12', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('0391c486bb4c431288a5d93ac1174c38', '0', '1', '5091ca619fbf49209bce020859103ba5', '2016-01-15 23:52:08', 'cd8af2da8df24f5797e4c6f0f2bcdf7e');
INSERT INTO `iim_mail_box` VALUES ('03f927727e804a259b97813f984a0f77', '0', '1', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-16 02:18:00', '2c8d07503898492cb6969b7c7f0a64e6');
INSERT INTO `iim_mail_box` VALUES ('03fbde351d0642c9970a94cd0ecce54f', '0', '1', '9', '2016-01-15 21:48:28', '20371c25527a4c7a963441ef527eca8b');
INSERT INTO `iim_mail_box` VALUES ('040d73b7ce954ea9b2d746c80e18b37d', '0', '1', '7', '2016-01-15 22:49:57', '6a6f4063c8664fe380928f3d0f0d518f');
INSERT INTO `iim_mail_box` VALUES ('042ba3577d5b4d99af152432b9f3af7b', '0', '1', '4639f877ec7149258cadcf145b4182a7', '2016-01-15 21:35:20', '758a391585f145dbae465de92b215d41');
INSERT INTO `iim_mail_box` VALUES ('04bd8f22bbab4f288e0b483a19074cd4', '0', '1', '4', '2016-01-15 21:28:08', '549bab13681a43c98092bc9e5a5224fc');
INSERT INTO `iim_mail_box` VALUES ('04d2e424b29e4302a3ac35d56e55dc9d', '0', '1', '42f5435f943a4e8cbcd86ec07b1d922a', '2016-01-16 02:18:00', '2c8d07503898492cb6969b7c7f0a64e6');
INSERT INTO `iim_mail_box` VALUES ('05cb756043be4e7a80c83c401480912a', '0', '1', '4639f877ec7149258cadcf145b4182a7', '2016-01-15 21:37:48', '0bc565e952bb4231858030835c6f1237');
INSERT INTO `iim_mail_box` VALUES ('05f39a6fd5f643b9b5c2587327e1b79d', '0', '1', 'eca1a51b803449d59ce4e2a3b0f4f787', '2016-01-16 02:17:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('05f6c5d858e246898e51db55e80c0227', '0', '1', '4', '2015-11-15 21:38:17', '3340f4a663f84ba48c9ebb80ce3acf5a');
INSERT INTO `iim_mail_box` VALUES ('061914ece2b14a5da3fbe14bc7f2916b', '0', '1', 'cb359e3089224f97adae46cf03c0ed94', '2016-01-16 02:19:30', '89852543c3964815a1b42bae1504c593');
INSERT INTO `iim_mail_box` VALUES ('06866c5288684700bc0b352ee8781cc0', '0', '1', '95b3b09fa0b34ac6b95907237c744c55', '2016-01-15 21:26:08', '4ac7390232dc458baa01422d28b71133');
INSERT INTO `iim_mail_box` VALUES ('06d5f025550c42e281eb0ca387d6233e', '0', '1', '7', '2016-01-15 21:46:01', 'a019f39fc2714e08801cae6e638a0f1b');
INSERT INTO `iim_mail_box` VALUES ('06f5d5de79b441c1991545479d336da0', '0', '1', '5', '2015-11-17 20:20:09', 'aaf2a947791349f8add8f773c821e116');
INSERT INTO `iim_mail_box` VALUES ('07c6b3f53f934ddd9647d31e59c6548d', '0', '1', '3f7ef2d4761f445e946413ab9bea23db', '2016-01-16 02:08:12', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('07de6d5c04f84eaf946f4c8bca999ea9', '0', '1', '8', '2015-11-17 20:08:12', '621d83545f1f4d9383c8d469c5ddbebe');
INSERT INTO `iim_mail_box` VALUES ('07f4ac737c2545ecbc006e1084e6a18d', '0', '1', '8', '2016-01-16 02:18:00', '2c8d07503898492cb6969b7c7f0a64e6');
INSERT INTO `iim_mail_box` VALUES ('08516ee340534d71acf583315e09b740', '0', '1', 'dc9663e71aaa42f0a2634770896ec74c', '2016-01-13 23:33:35', '729bc8258c2547c3bb29aaea49d62535');
INSERT INTO `iim_mail_box` VALUES ('0860a275627341be86eab21aa88ae330', '0', '1', '4', '2015-11-24 17:36:02', 'beb0827b7c514139b70d71bcfa66733b');
INSERT INTO `iim_mail_box` VALUES ('0878021086f14e80ae83f0a5a6142b27', '0', '1', '7', '2015-11-17 20:07:51', '36b526b001d049d0b5b2f1bf1112f67e');
INSERT INTO `iim_mail_box` VALUES ('091e264ef7eb4422a935b4a05fc8e680', '0', '1', 'd355e9e6b4ad48a59fa0a983e8b7b583', '2016-01-15 21:29:53', '5ce7267bd5d04dcb8e6db8764e6359fa');
INSERT INTO `iim_mail_box` VALUES ('0921106462b1468fbaec0f84e788f733', '0', '1', 'd355e9e6b4ad48a59fa0a983e8b7b583', '2016-01-16 02:15:55', '14d19beac1004bfc8de4521c0c59d78d');
INSERT INTO `iim_mail_box` VALUES ('094c13471d484d55bac925c105d88eb1', '0', '1', 'da60c61cf2aa4cb2810c629c7045c538', '2015-11-17 13:17:19', '06daeb120a504054adefb24b875f5489');
INSERT INTO `iim_mail_box` VALUES ('097730834ac14a9080cdfb330e04c907', '0', '1', '4639f877ec7149258cadcf145b4182a7', '2016-01-15 21:25:57', '00cbc8e9ad5a47309d5df667c60f5662');
INSERT INTO `iim_mail_box` VALUES ('099773d1de8f4bdc9af0681bcd062520', '0', '1', '5091ca619fbf49209bce020859103ba5', '2016-01-15 21:47:05', '3cf66a55aaff4965892b0ed8365a2d6d');
INSERT INTO `iim_mail_box` VALUES ('09c92acf0aa14a459e3b70457ff39769', '0', '1', '9', '2015-11-17 20:18:50', '2f4ba44722194a3aa1423a1c58b69021');
INSERT INTO `iim_mail_box` VALUES ('0a9d17b6c065480ea1573c6677dee651', '0', '1', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-13 23:33:35', '729bc8258c2547c3bb29aaea49d62535');
INSERT INTO `iim_mail_box` VALUES ('0aad26c4d7ad4b79bad61dca3a063351', '0', '1', '7', '2015-11-24 17:26:23', '525d380ce0e549d6bc36ceb41ad748e9');
INSERT INTO `iim_mail_box` VALUES ('0ab98bac8fdc4c53826c67973a512b2a', '0', '1', '7', '2016-01-16 02:16:23', '196618fcd27b4edfbef0ffb5c2b519d2');
INSERT INTO `iim_mail_box` VALUES ('0aec07e0f77a464685ff9302ecb4f65b', '0', '1', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-16 02:17:45', 'd45436b28062401db5f480a278ba22bd');
INSERT INTO `iim_mail_box` VALUES ('0b46291be55344c19f609a7c97b7a0d3', '0', '0e01985207154708a01e53ca07965665', '45f8002c452d4a54a82f113379c7b853', '2016-01-16 20:08:11', '38ac9700fdf649ff8cdc6e9f54c5afa9');
INSERT INTO `iim_mail_box` VALUES ('0bada93dd497447bbb2418e4d496f0bc', '0', '1', '9', '2015-11-24 18:42:35', '86c71b16e3ed49cfa2ecaae1bfb599f3');
INSERT INTO `iim_mail_box` VALUES ('0bbe6727e84e41aeb3846f8cbeccfd76', '0', '1', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-15 21:48:57', 'bfea4902ace447c8aee9b4198c19a345');
INSERT INTO `iim_mail_box` VALUES ('0c4316bad7e2469d917508da455be97d', '0', '1', '3', '2015-11-25 10:35:53', '3db29dac7af542e8a36552ba410aad52');
INSERT INTO `iim_mail_box` VALUES ('0c6587dfeb764132b854f2f721cf9ce3', '0', '1', '3', '2015-11-24 18:42:35', '86c71b16e3ed49cfa2ecaae1bfb599f3');
INSERT INTO `iim_mail_box` VALUES ('0c8253c1f38941a984d740155ac20a04', '0', '1', '6', '2015-11-24 17:36:02', 'beb0827b7c514139b70d71bcfa66733b');
INSERT INTO `iim_mail_box` VALUES ('0c97503a0482489fa42dc0adab047e6d', '0', '1', 'd355e9e6b4ad48a59fa0a983e8b7b583', '2016-01-15 21:28:08', '549bab13681a43c98092bc9e5a5224fc');
INSERT INTO `iim_mail_box` VALUES ('0ce7a3b7d45143c59466746d45d7a710', '0', '1', 'cb359e3089224f97adae46cf03c0ed94', '2016-01-13 23:33:35', '729bc8258c2547c3bb29aaea49d62535');
INSERT INTO `iim_mail_box` VALUES ('0dd4543d110f439096621dcf971a8d2b', '0', '1', '42f5435f943a4e8cbcd86ec07b1d922a', '2016-01-15 21:37:48', '0bc565e952bb4231858030835c6f1237');
INSERT INTO `iim_mail_box` VALUES ('0e917d6a010e444a8a1a787252fa603c', '0', '1', '5', '2015-11-15 21:38:17', '3340f4a663f84ba48c9ebb80ce3acf5a');
INSERT INTO `iim_mail_box` VALUES ('0e9eaabf04b34640be7ede1b7ea38abb', '0', '1', 'da60c61cf2aa4cb2810c629c7045c538', '2015-11-17 13:28:15', '777a564bcc224fe4b8e34c68b3ea09d5');
INSERT INTO `iim_mail_box` VALUES ('0f313602dd9144d0a51911c24ec2007f', '0', '1', '5091ca619fbf49209bce020859103ba5', '2016-01-16 02:15:55', '14d19beac1004bfc8de4521c0c59d78d');
INSERT INTO `iim_mail_box` VALUES ('0f76865a62f24332833814c4a9873c21', '0', '1', '8', '2015-11-17 20:07:51', '36b526b001d049d0b5b2f1bf1112f67e');
INSERT INTO `iim_mail_box` VALUES ('0fba430a4fcc48ffac12c89582e0f223', '0', '1', 'f12330474f634e2897878e8f56a910ae', '2016-01-15 21:48:57', 'bfea4902ace447c8aee9b4198c19a345');
INSERT INTO `iim_mail_box` VALUES ('1061436ec73d475c8133c34be0c33c46', '0', '1', 'cb359e3089224f97adae46cf03c0ed94', '2016-01-16 02:18:00', '2c8d07503898492cb6969b7c7f0a64e6');
INSERT INTO `iim_mail_box` VALUES ('1073ef3aa39e460fb86844c21e2ed49e', '0', '1', '10', '2015-11-17 20:18:50', '2f4ba44722194a3aa1423a1c58b69021');
INSERT INTO `iim_mail_box` VALUES ('113e7d0327ed47a88f36052e56c5b0bd', '0', '1', '5091ca619fbf49209bce020859103ba5', '2016-01-15 21:29:53', '5ce7267bd5d04dcb8e6db8764e6359fa');
INSERT INTO `iim_mail_box` VALUES ('115ff83d28de4feba1200b8977a112c1', '0', '1', '4639f877ec7149258cadcf145b4182a7', '2016-01-16 02:08:30', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('117464e33a67405a829e1909768d4f83', '0', '1', '0e01985207154708a01e53ca07965665', '2016-01-19 13:23:53', '81416d60c0294a62b2c2acf206ad5ff0');
INSERT INTO `iim_mail_box` VALUES ('11ec438701974e9a98cdbb47a2d82b50', '0', '1', 'f12330474f634e2897878e8f56a910ae', '2016-01-15 21:47:05', '3cf66a55aaff4965892b0ed8365a2d6d');
INSERT INTO `iim_mail_box` VALUES ('123c9672ce9d4f75b6ba1bbd34f14a18', '0', '1', '5', '2015-11-17 20:07:51', '36b526b001d049d0b5b2f1bf1112f67e');
INSERT INTO `iim_mail_box` VALUES ('12459ad7acce45028372eae6e5adadff', '0', '1', '5091ca619fbf49209bce020859103ba5', '2016-01-16 02:18:00', '2c8d07503898492cb6969b7c7f0a64e6');
INSERT INTO `iim_mail_box` VALUES ('1254f927b08d41d89039ab3cc74d46d3', '0', '1', '42f5435f943a4e8cbcd86ec07b1d922a', '2016-01-15 23:52:08', 'cd8af2da8df24f5797e4c6f0f2bcdf7e');
INSERT INTO `iim_mail_box` VALUES ('128fbefb65b04cc8ad48d12873fd3fa9', '0', '1', '6', '2015-11-17 20:18:50', '2f4ba44722194a3aa1423a1c58b69021');
INSERT INTO `iim_mail_box` VALUES ('1315d06c6b9345b0868a0b465fbb0050', '0', '1', 'dc9663e71aaa42f0a2634770896ec74c', '2016-01-15 21:48:28', '20371c25527a4c7a963441ef527eca8b');
INSERT INTO `iim_mail_box` VALUES ('133be9b91f3f4790a315b71e4ca9b78f', '0', '1', 'eca1a51b803449d59ce4e2a3b0f4f787', '2016-01-15 21:48:28', '20371c25527a4c7a963441ef527eca8b');
INSERT INTO `iim_mail_box` VALUES ('146cdaf486bd492982a11b3b651165ac', '0', '1', 'd355e9e6b4ad48a59fa0a983e8b7b583', '2016-01-16 02:11:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('1526baf6ac954f5780e679bd7aecdaf3', '0', '1', '19e655ebcd844747aa0e46efe9870169', '2016-01-16 02:09:41', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('15b6db9d8fc44484880047396e33be7c', '0', '1', 'eca1a51b803449d59ce4e2a3b0f4f787', '2016-01-16 02:09:41', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('15bec00096184fbd9e83e1e52cd0284e', '0', '1', 'd355e9e6b4ad48a59fa0a983e8b7b583', '2016-01-16 02:09:02', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('161f9bf8e81149e7a09a0e40d1d9ecd1', '0', '1', '6', '2015-11-24 15:36:39', '8a5acec624db46ceac178b1be69a09bc');
INSERT INTO `iim_mail_box` VALUES ('1725a22f527d4011a23145c7d751dbdc', '0', '1', '9', '2016-01-13 23:33:35', '729bc8258c2547c3bb29aaea49d62535');
INSERT INTO `iim_mail_box` VALUES ('172a5f2bb58d439b8f936828b0b824a4', '0', '1', 'd355e9e6b4ad48a59fa0a983e8b7b583', '2016-01-15 21:47:05', '3cf66a55aaff4965892b0ed8365a2d6d');
INSERT INTO `iim_mail_box` VALUES ('17d2e2172c1a4becaba44e6894c049bc', '0', '1', '5', '2015-11-17 13:28:15', '777a564bcc224fe4b8e34c68b3ea09d5');
INSERT INTO `iim_mail_box` VALUES ('17e2034317a8479bbb3b79ce4d004d23', '0', '1', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-15 21:46:01', 'a019f39fc2714e08801cae6e638a0f1b');
INSERT INTO `iim_mail_box` VALUES ('17e5e18ead954aceadbcfb1faa785099', '0', '1', '2', '2015-11-17 20:08:12', '621d83545f1f4d9383c8d469c5ddbebe');
INSERT INTO `iim_mail_box` VALUES ('18762cb947ab4556b5e96f8c9c75ae38', '0', '1', '42f5435f943a4e8cbcd86ec07b1d922a', '2016-01-15 21:48:57', 'bfea4902ace447c8aee9b4198c19a345');
INSERT INTO `iim_mail_box` VALUES ('191a9e6d9d4b4998876fe94f63ecf360', '0', '1', '3', '2015-11-17 20:20:09', 'aaf2a947791349f8add8f773c821e116');
INSERT INTO `iim_mail_box` VALUES ('198bfcfba013464fbdaa00dbcfe3259e', '0', '1', '2', '2015-11-24 17:26:23', '525d380ce0e549d6bc36ceb41ad748e9');
INSERT INTO `iim_mail_box` VALUES ('19b6303e353c47d381ede067271e7c80', '0', '1', '95b3b09fa0b34ac6b95907237c744c55', '2016-01-16 02:17:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('1a1b852639574a5eae5ec4438cbb466a', '0', '1', '9', '2016-01-15 21:25:57', '00cbc8e9ad5a47309d5df667c60f5662');
INSERT INTO `iim_mail_box` VALUES ('1a626933ffcf447997fb48bf26efdae8', '0', '1', '10', '2015-11-24 17:35:41', 'c187db5a2fd84325abeefc0465c46eea');
INSERT INTO `iim_mail_box` VALUES ('1a87f1c81c8d42ffb06c6dbb9f94da22', '0', '1', '4639f877ec7149258cadcf145b4182a7', '2016-01-13 23:33:27', '2046db4813804969bae3c6c54c388318');
INSERT INTO `iim_mail_box` VALUES ('1ac42998263d42c99a0ad7aaf0b33473', '0', '1', '8', '2016-01-16 02:09:41', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('1ae33aa088344ca784e2a0807307c6e1', '0', '1', '7', '2016-01-15 21:37:48', '0bc565e952bb4231858030835c6f1237');
INSERT INTO `iim_mail_box` VALUES ('1afc5fd6387b4950b528250f5f3716cc', '0', '1', '11', '2015-11-17 20:08:12', '621d83545f1f4d9383c8d469c5ddbebe');
INSERT INTO `iim_mail_box` VALUES ('1c298693ea914e1ea3804287c5984798', '0', '1', '8', '2016-01-16 02:05:43', 'e97f8af28ab748e1a0ddc1d3447fe62a');
INSERT INTO `iim_mail_box` VALUES ('1c574038bf194cf8871bf0b1e41d3343', '0', '1', '3f7ef2d4761f445e946413ab9bea23db', '2016-01-15 21:47:05', '3cf66a55aaff4965892b0ed8365a2d6d');
INSERT INTO `iim_mail_box` VALUES ('1cd133b6c9aa4de2aeb5a0c993ba0a7a', '0', '1', 'd42378c9621b4551a0c4c63c82f0aa33', '2016-01-15 23:52:08', 'cd8af2da8df24f5797e4c6f0f2bcdf7e');
INSERT INTO `iim_mail_box` VALUES ('1d7a42185bc34bddbe2c79c59c3dbd6e', '0', '1', '5ad0d1f9efdc44b481b02c26b67e832e', '2016-01-16 02:17:45', 'd45436b28062401db5f480a278ba22bd');
INSERT INTO `iim_mail_box` VALUES ('1da8e5f8d4e74d4ba90c869e2d551bbd', '0', '1', '6d69972a880f4228b88f28254c3e417e', '2015-11-17 20:20:09', 'aaf2a947791349f8add8f773c821e116');
INSERT INTO `iim_mail_box` VALUES ('1e9d26460a7d48488f26d92c5f361953', '0', '1', 'cb359e3089224f97adae46cf03c0ed94', '2016-01-15 21:25:57', '00cbc8e9ad5a47309d5df667c60f5662');
INSERT INTO `iim_mail_box` VALUES ('1ead9489f1794bde8eb63b280fdf005b', '0', '1', '10', '2015-11-24 17:26:23', '525d380ce0e549d6bc36ceb41ad748e9');
INSERT INTO `iim_mail_box` VALUES ('1eae6b9186a04845a2369ea93a697624', '0', '1', '3f7ef2d4761f445e946413ab9bea23db', '2016-01-15 21:25:57', '00cbc8e9ad5a47309d5df667c60f5662');
INSERT INTO `iim_mail_box` VALUES ('1eb83e2e3ed04785ac558c52de71826e', '0', '1', '7', '2015-11-17 13:17:19', '06daeb120a504054adefb24b875f5489');
INSERT INTO `iim_mail_box` VALUES ('1eb88e4c81304d7ab5c6eb8be48c41e3', '0', '1', '8', '2016-01-16 02:08:12', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('1ee6e2d33ba3469ea5deeb218530e186', '0', '1', '4639f877ec7149258cadcf145b4182a7', '2016-01-16 02:16:23', '196618fcd27b4edfbef0ffb5c2b519d2');
INSERT INTO `iim_mail_box` VALUES ('1f6a68f75f564a9683a7a3cd49cec2fb', '0', '1', '3', '2015-11-24 15:36:39', '8a5acec624db46ceac178b1be69a09bc');
INSERT INTO `iim_mail_box` VALUES ('20b18cccb74c4d43beb66a59642adee5', '0', '1', '5ad0d1f9efdc44b481b02c26b67e832e', '2016-01-15 21:47:05', '3cf66a55aaff4965892b0ed8365a2d6d');
INSERT INTO `iim_mail_box` VALUES ('215db7fad5cf47e39886e145b3e71350', '0', '1', 'eca1a51b803449d59ce4e2a3b0f4f787', '2016-01-13 23:33:27', '2046db4813804969bae3c6c54c388318');
INSERT INTO `iim_mail_box` VALUES ('21ecd72b73da47569e4811d2ca29f7fb', '0', '1', '42f5435f943a4e8cbcd86ec07b1d922a', '2016-01-15 21:48:28', '20371c25527a4c7a963441ef527eca8b');
INSERT INTO `iim_mail_box` VALUES ('226f8631a32c4329956a7fb00e48f2c1', '0', '1', '4', '2016-01-16 02:15:55', '14d19beac1004bfc8de4521c0c59d78d');
INSERT INTO `iim_mail_box` VALUES ('230c065c634348d39c2ff6d064d14bd2', '0', '1', '42f5435f943a4e8cbcd86ec07b1d922a', '2016-01-13 23:33:35', '729bc8258c2547c3bb29aaea49d62535');
INSERT INTO `iim_mail_box` VALUES ('23d1792273264f908f720046e1e66688', '0', '1', 'd42378c9621b4551a0c4c63c82f0aa33', '2016-01-16 02:09:41', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('23f78043710b4198bb8c82bfe8a29484', '0', '1', '5', '2015-11-17 20:18:50', '2f4ba44722194a3aa1423a1c58b69021');
INSERT INTO `iim_mail_box` VALUES ('24ca82093dd64ae2af0fb80f071b17f1', '0', '1', '12', '2015-11-24 17:26:23', '525d380ce0e549d6bc36ceb41ad748e9');
INSERT INTO `iim_mail_box` VALUES ('25632ebc2e674bbe81e0bc84e0c31319', '0', '1', 'eca1a51b803449d59ce4e2a3b0f4f787', '2016-01-13 23:33:35', '729bc8258c2547c3bb29aaea49d62535');
INSERT INTO `iim_mail_box` VALUES ('257d7e6a98e44d489de1b911be8eeddf', '0', '1', 'f12330474f634e2897878e8f56a910ae', '2016-01-16 02:17:45', 'd45436b28062401db5f480a278ba22bd');
INSERT INTO `iim_mail_box` VALUES ('25df94166f9947409a2bd01152009e4f', '0', '1', '3f7ef2d4761f445e946413ab9bea23db', '2016-01-16 02:19:30', '89852543c3964815a1b42bae1504c593');
INSERT INTO `iim_mail_box` VALUES ('269a050321324ffcb4a47f8e42ecfaf5', '0', '1', '5ad0d1f9efdc44b481b02c26b67e832e', '2016-01-15 21:28:08', '549bab13681a43c98092bc9e5a5224fc');
INSERT INTO `iim_mail_box` VALUES ('26f1e15db71a43309db46a22ac3765e2', '0', '1', '7', '2015-11-17 20:18:50', '2f4ba44722194a3aa1423a1c58b69021');
INSERT INTO `iim_mail_box` VALUES ('273e20cadd7c4d6a93f26f72775c6188', '0', '1', '11', '2015-11-17 13:28:15', '777a564bcc224fe4b8e34c68b3ea09d5');
INSERT INTO `iim_mail_box` VALUES ('278d035ad86244d18cb8b690221b53fd', '0', '1', '5ad0d1f9efdc44b481b02c26b67e832e', '2016-01-15 21:48:28', '20371c25527a4c7a963441ef527eca8b');
INSERT INTO `iim_mail_box` VALUES ('27b99c0aeade4f3ea1116a38cd1a99a5', '0', '1', '2', '2015-11-17 20:07:51', '36b526b001d049d0b5b2f1bf1112f67e');
INSERT INTO `iim_mail_box` VALUES ('28564e6f482d406ba577ab5492226c75', '0', '1', '5091ca619fbf49209bce020859103ba5', '2016-01-15 21:48:28', '20371c25527a4c7a963441ef527eca8b');
INSERT INTO `iim_mail_box` VALUES ('2893e08086f94692b3085ec6991bba72', '0', '1', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-15 21:48:28', '20371c25527a4c7a963441ef527eca8b');
INSERT INTO `iim_mail_box` VALUES ('28cf6a61481d4916a5cccd64364f4f6a', '0', '1', '11', '2015-11-25 10:35:53', '3db29dac7af542e8a36552ba410aad52');
INSERT INTO `iim_mail_box` VALUES ('28e65305668c4ef79af5b3950fb596ac', '0', '1', 'd8de25a1f872404e82f669c04091685e', '2016-01-15 21:48:28', '20371c25527a4c7a963441ef527eca8b');
INSERT INTO `iim_mail_box` VALUES ('28f0e4fe493a45cfb1555ca8f36446ab', '0', '1', '9', '2015-11-24 17:36:02', 'beb0827b7c514139b70d71bcfa66733b');
INSERT INTO `iim_mail_box` VALUES ('2921f527c0164eb2873e9f43d07236b8', '0', '1', '11', '2015-11-24 17:36:02', 'beb0827b7c514139b70d71bcfa66733b');
INSERT INTO `iim_mail_box` VALUES ('293f1a4afb5c4a61a463663ef2fc0fff', '0', '1', 'bb81a0c098a444e69028380e80852d91', '2016-01-15 21:48:28', '20371c25527a4c7a963441ef527eca8b');
INSERT INTO `iim_mail_box` VALUES ('296b59a8734b437a9b6adb3b222edf3b', '0', '1', '8', '2016-01-15 21:35:20', '758a391585f145dbae465de92b215d41');
INSERT INTO `iim_mail_box` VALUES ('29fb2cf5a3eb4ff688ccb9bc769dfd30', '0', '1', 'd8de25a1f872404e82f669c04091685e', '2016-01-16 02:15:55', '14d19beac1004bfc8de4521c0c59d78d');
INSERT INTO `iim_mail_box` VALUES ('2a1669ca84234590bcc94eb7be90a6af', '0', '1', '6474fda3f35c4d1580b646a42f190cf7', '2016-01-15 21:26:08', '4ac7390232dc458baa01422d28b71133');
INSERT INTO `iim_mail_box` VALUES ('2a1cee670497497fb65ac78a93c39b87', '0', '1', '95b3b09fa0b34ac6b95907237c744c55', '2016-01-15 21:29:53', '5ce7267bd5d04dcb8e6db8764e6359fa');
INSERT INTO `iim_mail_box` VALUES ('2aadf723c526403cb848a6bf823a37b8', '0', '1', '42f5435f943a4e8cbcd86ec07b1d922a', '2016-01-15 21:26:08', '4ac7390232dc458baa01422d28b71133');
INSERT INTO `iim_mail_box` VALUES ('2ac0e7c7ff3a462189676f07efa44c95', '0', '1', '12', '2015-11-17 20:19:20', 'a85a03a77b08414ebdec3e950ed23494');
INSERT INTO `iim_mail_box` VALUES ('2add7e64151f43f6bc3d67ec3094d55c', '0', '1', 'cb359e3089224f97adae46cf03c0ed94', '2016-01-16 02:08:12', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('2b09c98ab7a243b49a279d543094e2f3', '0', '1', '9', '2015-11-17 20:07:51', '36b526b001d049d0b5b2f1bf1112f67e');
INSERT INTO `iim_mail_box` VALUES ('2b7cc25d6c724199a9a70bd1498f83a9', '0', '1', '4639f877ec7149258cadcf145b4182a7', '2016-01-13 23:33:35', '729bc8258c2547c3bb29aaea49d62535');
INSERT INTO `iim_mail_box` VALUES ('2c00b19a478c46a78ccdd499862cfd14', '0', '1', '5ad0d1f9efdc44b481b02c26b67e832e', '2016-01-15 21:29:53', '5ce7267bd5d04dcb8e6db8764e6359fa');
INSERT INTO `iim_mail_box` VALUES ('2c6589b5b7134feeb8df6d6e7f429182', '0', '1', '4639f877ec7149258cadcf145b4182a7', '2016-01-15 21:46:01', 'a019f39fc2714e08801cae6e638a0f1b');
INSERT INTO `iim_mail_box` VALUES ('2c94b5ab6af84af0ac21216e8d0c45f5', '0', '1', 'dc9663e71aaa42f0a2634770896ec74c', '2016-01-15 23:52:08', 'cd8af2da8df24f5797e4c6f0f2bcdf7e');
INSERT INTO `iim_mail_box` VALUES ('2d732cec26cb4eedb2b5e26ce8b198e2', '0', '1', '9', '2016-01-15 21:37:48', '0bc565e952bb4231858030835c6f1237');
INSERT INTO `iim_mail_box` VALUES ('2d824bf28709447f962ff14a7a4a6e85', '0', '1', '5', '2015-11-17 20:19:20', 'a85a03a77b08414ebdec3e950ed23494');
INSERT INTO `iim_mail_box` VALUES ('2dcbd41a9a8244ffa2b85d9dcdf8a20d', '0', '1', '5', '2015-11-24 17:07:23', 'caeff3e2169242d197404750bbe80256');
INSERT INTO `iim_mail_box` VALUES ('2f0527068f024f639435a327ff0faf35', '0', '1', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-16 02:11:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('2f4ada38068442cf82acd73d7490a4ca', '0', '1', 'f12330474f634e2897878e8f56a910ae', '2016-01-16 02:08:30', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('2fb92a3a376942389e8e686e506092a2', '0', '1', 'd42378c9621b4551a0c4c63c82f0aa33', '2016-01-15 21:35:20', '758a391585f145dbae465de92b215d41');
INSERT INTO `iim_mail_box` VALUES ('2fd2f1d9e0754e7bac1a41dd6c800fed', '0', '1', '5', '2015-11-24 15:36:39', '8a5acec624db46ceac178b1be69a09bc');
INSERT INTO `iim_mail_box` VALUES ('2ffcb37344904e74845259feae3ed5b3', '0', '1', '6d69972a880f4228b88f28254c3e417e', '2015-11-24 18:40:53', '2a728059ef8c427caec25be0fb4ee96b');
INSERT INTO `iim_mail_box` VALUES ('303d3142a034472fb95ccd0b643e4a83', '0', '1', '5091ca619fbf49209bce020859103ba5', '2016-01-15 21:26:08', '4ac7390232dc458baa01422d28b71133');
INSERT INTO `iim_mail_box` VALUES ('30a869fdf7a1466d99e6950c04ab077b', '0', '1', '3f7ef2d4761f445e946413ab9bea23db', '2016-01-15 23:52:08', 'cd8af2da8df24f5797e4c6f0f2bcdf7e');
INSERT INTO `iim_mail_box` VALUES ('30fdfac59ba9445f8f1b3abab965dc89', '0', '1', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-16 02:08:30', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('311e983d8696487a8a3c45f0d79a1fb8', '0', '1', 'f12330474f634e2897878e8f56a910ae', '2016-01-16 02:15:55', '14d19beac1004bfc8de4521c0c59d78d');
INSERT INTO `iim_mail_box` VALUES ('3128836892b84f08b71c677cc0204ab5', '0', '1', 'dc9663e71aaa42f0a2634770896ec74c', '2016-01-15 21:35:20', '758a391585f145dbae465de92b215d41');
INSERT INTO `iim_mail_box` VALUES ('3132d6e15dcc4c8f9e0eed398cbd406e', '0', '1', 'f12330474f634e2897878e8f56a910ae', '2016-01-13 23:33:27', '2046db4813804969bae3c6c54c388318');
INSERT INTO `iim_mail_box` VALUES ('31a62ce93fbe4464a1b28eea882fc20e', '0', '1', 'd355e9e6b4ad48a59fa0a983e8b7b583', '2016-01-15 21:26:08', '4ac7390232dc458baa01422d28b71133');
INSERT INTO `iim_mail_box` VALUES ('334b8d0e5b464ef3b037110ea6339f69', '0', '1', '3f7ef2d4761f445e946413ab9bea23db', '2016-01-16 02:05:43', 'e97f8af28ab748e1a0ddc1d3447fe62a');
INSERT INTO `iim_mail_box` VALUES ('3367184812574ce2af899672ddb83dfd', '0', '1', '6474fda3f35c4d1580b646a42f190cf7', '2016-01-16 02:18:00', '2c8d07503898492cb6969b7c7f0a64e6');
INSERT INTO `iim_mail_box` VALUES ('33b5d184316a4f5590cdec1728b2882f', '0', '1', '6474fda3f35c4d1580b646a42f190cf7', '2016-01-16 02:09:41', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('34338908fe054bdd9888164e1b05dda4', '0', '1', '8', '2015-11-17 20:20:09', 'aaf2a947791349f8add8f773c821e116');
INSERT INTO `iim_mail_box` VALUES ('34b2230a3c6543f8bb3e799264e98cbb', '0', '1', '8', '2015-11-24 15:36:39', '8a5acec624db46ceac178b1be69a09bc');
INSERT INTO `iim_mail_box` VALUES ('34e24bd036c64ec5b57ee142aca0e900', '0', '1', '95b3b09fa0b34ac6b95907237c744c55', '2016-01-16 02:17:45', 'd45436b28062401db5f480a278ba22bd');
INSERT INTO `iim_mail_box` VALUES ('35111f81d9bb4e65bd4d54f440f25364', '0', '1', '19e655ebcd844747aa0e46efe9870169', '2016-01-15 21:25:57', '00cbc8e9ad5a47309d5df667c60f5662');
INSERT INTO `iim_mail_box` VALUES ('353f382bb5b84ddba976fd26f31a5fbe', '0', '1', '42f5435f943a4e8cbcd86ec07b1d922a', '2016-01-15 21:25:57', '00cbc8e9ad5a47309d5df667c60f5662');
INSERT INTO `iim_mail_box` VALUES ('356037574fcb42178b459843ac43fc9b', '0', '1', 'd355e9e6b4ad48a59fa0a983e8b7b583', '2016-01-15 21:48:57', 'bfea4902ace447c8aee9b4198c19a345');
INSERT INTO `iim_mail_box` VALUES ('3607be2508434f069b0958fad7babbb0', '0', '1', '19e655ebcd844747aa0e46efe9870169', '2016-01-15 21:46:01', 'a019f39fc2714e08801cae6e638a0f1b');
INSERT INTO `iim_mail_box` VALUES ('3651df7cdce448ba9155b7589dcd9f1d', '0', '1', 'd8de25a1f872404e82f669c04091685e', '2016-01-15 21:26:08', '4ac7390232dc458baa01422d28b71133');
INSERT INTO `iim_mail_box` VALUES ('366cea3bb2ce4ed89cf850ee086109d2', '0', '1', 'dc9663e71aaa42f0a2634770896ec74c', '2016-01-16 02:16:23', '196618fcd27b4edfbef0ffb5c2b519d2');
INSERT INTO `iim_mail_box` VALUES ('36f184a715744b9a998b5052df0fc4c4', '0', '1', '5ad0d1f9efdc44b481b02c26b67e832e', '2016-01-16 02:16:23', '196618fcd27b4edfbef0ffb5c2b519d2');
INSERT INTO `iim_mail_box` VALUES ('3745979eaf7e4e4591f7b977d756de7f', '0', '1', 'cb359e3089224f97adae46cf03c0ed94', '2016-01-16 02:11:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('37726be05e074b49ab8c66f7097b1ded', '0', '1', 'dc9663e71aaa42f0a2634770896ec74c', '2016-01-15 22:49:57', '6a6f4063c8664fe380928f3d0f0d518f');
INSERT INTO `iim_mail_box` VALUES ('3792664e62dc4bcca01d3a2b4aed51dc', '0', '1', 'bb81a0c098a444e69028380e80852d91', '2016-01-15 22:49:57', '6a6f4063c8664fe380928f3d0f0d518f');
INSERT INTO `iim_mail_box` VALUES ('37b2bcf433ce4d32a22ba6526be65d3d', '0', '1', '19e655ebcd844747aa0e46efe9870169', '2016-01-16 02:18:00', '2c8d07503898492cb6969b7c7f0a64e6');
INSERT INTO `iim_mail_box` VALUES ('382967a64dd44e769993de14bd6c0131', '0', '1', '7', '2016-01-15 21:26:08', '4ac7390232dc458baa01422d28b71133');
INSERT INTO `iim_mail_box` VALUES ('3830f452e5b745679eb70453b557adb5', '0', '1', 'd355e9e6b4ad48a59fa0a983e8b7b583', '2016-01-16 02:05:43', 'e97f8af28ab748e1a0ddc1d3447fe62a');
INSERT INTO `iim_mail_box` VALUES ('391f7289fb224ef9b4b0c612649c3f63', '0', '1', '9', '2016-01-15 21:47:05', '3cf66a55aaff4965892b0ed8365a2d6d');
INSERT INTO `iim_mail_box` VALUES ('39890db672934c3996001445b4effeef', '0', '1', 'd355e9e6b4ad48a59fa0a983e8b7b583', '2016-01-16 02:16:23', '196618fcd27b4edfbef0ffb5c2b519d2');
INSERT INTO `iim_mail_box` VALUES ('3b8bd7ad0db7476587d2d0ebd8fba2ef', '0', '1', '4', '2016-01-16 02:19:30', '89852543c3964815a1b42bae1504c593');
INSERT INTO `iim_mail_box` VALUES ('3bbc099fa9a74eb1950820c768f19d13', '0', '1', '7', '2016-01-15 21:48:28', '20371c25527a4c7a963441ef527eca8b');
INSERT INTO `iim_mail_box` VALUES ('3bdfa65a694045e9a69fb25a143b9d01', '0', '1', 'd42378c9621b4551a0c4c63c82f0aa33', '2016-01-16 02:19:30', '89852543c3964815a1b42bae1504c593');
INSERT INTO `iim_mail_box` VALUES ('3be063a34d9948b8983147024fc50c10', '0', '1', 'f12330474f634e2897878e8f56a910ae', '2016-01-15 21:37:48', '0bc565e952bb4231858030835c6f1237');
INSERT INTO `iim_mail_box` VALUES ('3ddd8acd581e45baa27e9f9ac9651014', '0', '1', 'cb359e3089224f97adae46cf03c0ed94', '2016-01-15 21:37:48', '0bc565e952bb4231858030835c6f1237');
INSERT INTO `iim_mail_box` VALUES ('3e050f74840742f1baae7634c888ecb4', '0', '1', '7', '2015-11-24 15:36:39', '8a5acec624db46ceac178b1be69a09bc');
INSERT INTO `iim_mail_box` VALUES ('3e227d43433b49c8bfa99019f12558ac', '0', '1', '12', '2015-11-24 17:36:02', 'beb0827b7c514139b70d71bcfa66733b');
INSERT INTO `iim_mail_box` VALUES ('3e458bae1b0f42559a5301173cf228c7', '0', '1', '4', '2016-01-15 21:37:48', '0bc565e952bb4231858030835c6f1237');
INSERT INTO `iim_mail_box` VALUES ('3effd22fb3e94b4688c3769a229c72d4', '0', '1', '19e655ebcd844747aa0e46efe9870169', '2016-01-15 21:26:08', '4ac7390232dc458baa01422d28b71133');
INSERT INTO `iim_mail_box` VALUES ('3f7dcc784e5545e687003e9d0bcf34e6', '0', '1', '5ad0d1f9efdc44b481b02c26b67e832e', '2016-01-13 23:33:27', '2046db4813804969bae3c6c54c388318');
INSERT INTO `iim_mail_box` VALUES ('3f8c24f90c754264a2401f2a0285525c', '0', '1', '12', '2015-11-24 18:40:53', '2a728059ef8c427caec25be0fb4ee96b');
INSERT INTO `iim_mail_box` VALUES ('3f9bf43cf3944fdda657a75225f58c1a', '0', '1', '7', '2015-11-24 17:36:02', 'beb0827b7c514139b70d71bcfa66733b');
INSERT INTO `iim_mail_box` VALUES ('3fe89788c30f4647b79718acabf0d666', '0', '1', '95b3b09fa0b34ac6b95907237c744c55', '2016-01-15 21:46:01', 'a019f39fc2714e08801cae6e638a0f1b');
INSERT INTO `iim_mail_box` VALUES ('407d889aafad4fb9a5220bdfd18c4bc7', '0', '1', '4639f877ec7149258cadcf145b4182a7', '2016-01-15 21:47:05', '3cf66a55aaff4965892b0ed8365a2d6d');
INSERT INTO `iim_mail_box` VALUES ('4140edf23d984e3ebb187e7d90cb3d3c', '0', '1', '2', '2015-11-24 18:40:53', '2a728059ef8c427caec25be0fb4ee96b');
INSERT INTO `iim_mail_box` VALUES ('41ec82ec32244b419e3f1b2bd6084867', '0', '1', '6d69972a880f4228b88f28254c3e417e', '2015-11-17 20:18:50', '2f4ba44722194a3aa1423a1c58b69021');
INSERT INTO `iim_mail_box` VALUES ('422067db7091459f8a9a1ec596192e34', '0', '1', 'bb81a0c098a444e69028380e80852d91', '2016-01-15 21:46:01', 'a019f39fc2714e08801cae6e638a0f1b');
INSERT INTO `iim_mail_box` VALUES ('4228f2105d3e4e969d6b6b569e55111c', '0', '1', '4', '2015-11-17 20:08:12', '621d83545f1f4d9383c8d469c5ddbebe');
INSERT INTO `iim_mail_box` VALUES ('428077d428bb427c8f095042e70e8637', '0', '1', 'dc9663e71aaa42f0a2634770896ec74c', '2016-01-15 21:47:05', '3cf66a55aaff4965892b0ed8365a2d6d');
INSERT INTO `iim_mail_box` VALUES ('436493a6125b4e06850e45c6b26cb4b1', '0', '1', 'bb81a0c098a444e69028380e80852d91', '2016-01-15 21:35:20', '758a391585f145dbae465de92b215d41');
INSERT INTO `iim_mail_box` VALUES ('43a89a7ccda346b2886a98d735dd2632', '0', '1', '5091ca619fbf49209bce020859103ba5', '2016-01-16 02:08:12', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('43db0b0aac344a309916ab9b90d0a7d5', '0', '1', 'd355e9e6b4ad48a59fa0a983e8b7b583', '2016-01-16 02:08:12', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('450e35307cdf426abdf35e9267bf1efc', '0', '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-17 13:17:19', '06daeb120a504054adefb24b875f5489');
INSERT INTO `iim_mail_box` VALUES ('45750a8b4d71464d8dfb460aae6f7f36', '0', '1', 'dc9663e71aaa42f0a2634770896ec74c', '2016-01-13 23:33:27', '2046db4813804969bae3c6c54c388318');
INSERT INTO `iim_mail_box` VALUES ('45926d005b284717b1d91603ce2432e9', '0', '1', '95b3b09fa0b34ac6b95907237c744c55', '2016-01-15 22:49:57', '6a6f4063c8664fe380928f3d0f0d518f');
INSERT INTO `iim_mail_box` VALUES ('46cf2c14f1bf43428328d60633fff6b3', '0', '1', '42f5435f943a4e8cbcd86ec07b1d922a', '2016-01-16 02:08:12', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('46efaa5e27444a2384006298750118c8', '0', '1', '19e655ebcd844747aa0e46efe9870169', '2016-01-15 22:49:57', '6a6f4063c8664fe380928f3d0f0d518f');
INSERT INTO `iim_mail_box` VALUES ('4780c1a602e04011a76dfa6cb2b6e19f', '0', '1', '4639f877ec7149258cadcf145b4182a7', '2016-01-16 02:17:45', 'd45436b28062401db5f480a278ba22bd');
INSERT INTO `iim_mail_box` VALUES ('47be464352c84428ad2e70c6ac5abd38', '0', '1', '10', '2015-11-24 18:40:53', '2a728059ef8c427caec25be0fb4ee96b');
INSERT INTO `iim_mail_box` VALUES ('483507367e834643a4ce7e2111f53c92', '0', '1', 'd355e9e6b4ad48a59fa0a983e8b7b583', '2016-01-16 02:17:45', 'd45436b28062401db5f480a278ba22bd');
INSERT INTO `iim_mail_box` VALUES ('484b8b3512d44db788812f6fbc2df551', '0', '1', '7', '2016-01-16 02:18:00', '2c8d07503898492cb6969b7c7f0a64e6');
INSERT INTO `iim_mail_box` VALUES ('48964144308d461fa0aadbaf20078bd7', '0', '1', '7', '2015-11-17 20:19:20', 'a85a03a77b08414ebdec3e950ed23494');
INSERT INTO `iim_mail_box` VALUES ('48adb92760c94615b99b6b39d14561b6', '0', '1', '5', '2015-11-25 10:35:53', '3db29dac7af542e8a36552ba410aad52');
INSERT INTO `iim_mail_box` VALUES ('48d290151e5f497fa17616128b4f7478', '0', '1', 'd42378c9621b4551a0c4c63c82f0aa33', '2016-01-16 02:15:55', '14d19beac1004bfc8de4521c0c59d78d');
INSERT INTO `iim_mail_box` VALUES ('48d91c7e3855423199023bdcb7b46a3a', '0', '1', 'd42378c9621b4551a0c4c63c82f0aa33', '2016-01-16 02:16:23', '196618fcd27b4edfbef0ffb5c2b519d2');
INSERT INTO `iim_mail_box` VALUES ('48ea382e1c874f6d87a01fe5c54bcea8', '0', '1', '8', '2015-11-17 13:28:15', '777a564bcc224fe4b8e34c68b3ea09d5');
INSERT INTO `iim_mail_box` VALUES ('49563f8386094cb48e6a7a9f145585d7', '0', '1', 'd8de25a1f872404e82f669c04091685e', '2016-01-16 02:17:45', 'd45436b28062401db5f480a278ba22bd');
INSERT INTO `iim_mail_box` VALUES ('49923b39066044f6bab9cbdfdb163e6c', '0', '1', '7', '2015-11-15 21:38:17', '3340f4a663f84ba48c9ebb80ce3acf5a');
INSERT INTO `iim_mail_box` VALUES ('499742435eaf4d4a8cfaf18c8e884006', '0', '1', '9', '2016-01-16 02:05:43', 'e97f8af28ab748e1a0ddc1d3447fe62a');
INSERT INTO `iim_mail_box` VALUES ('49ab6f942f0c409c92aefae8d5bee6df', '0', '1', '3', '2015-11-24 17:35:41', 'c187db5a2fd84325abeefc0465c46eea');
INSERT INTO `iim_mail_box` VALUES ('4a08d89916e547f3a35fa73f3ac8c87e', '0', '1', 'dc9663e71aaa42f0a2634770896ec74c', '2016-01-16 02:15:55', '14d19beac1004bfc8de4521c0c59d78d');
INSERT INTO `iim_mail_box` VALUES ('4a44f1b7ba3e4c339906011cbe0953d0', '0', '1', '2', '2015-11-25 10:35:53', '3db29dac7af542e8a36552ba410aad52');
INSERT INTO `iim_mail_box` VALUES ('4a75bb7037ba49eaa16cf4b06727bd54', '0', '1', '6d69972a880f4228b88f28254c3e417e', '2015-11-24 17:35:42', '35c90c17d6ec4c70a382f63090aa38bc');
INSERT INTO `iim_mail_box` VALUES ('4ab63c2af13d482185f1180164ef3e02', '0', '1', '5091ca619fbf49209bce020859103ba5', '2016-01-16 02:19:30', '89852543c3964815a1b42bae1504c593');
INSERT INTO `iim_mail_box` VALUES ('4aba760e45484a7da75ba88670d76317', '0', '1', '4', '2015-11-17 20:19:20', 'a85a03a77b08414ebdec3e950ed23494');
INSERT INTO `iim_mail_box` VALUES ('4b64ba7c2e5245f29b4c902803d08064', '0', '1', '5', '2015-11-17 13:17:19', '06daeb120a504054adefb24b875f5489');
INSERT INTO `iim_mail_box` VALUES ('4b6bee002c5f4f35801ef41891500046', '0', '1', '5ad0d1f9efdc44b481b02c26b67e832e', '2016-01-16 02:09:02', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('4b728ccb5ce24f808cdcb5c751ced53c', '0', '1', '8', '2015-11-17 13:17:19', '06daeb120a504054adefb24b875f5489');
INSERT INTO `iim_mail_box` VALUES ('4bf47790e8824543988fd34de49fc22d', '0', '1', '5091ca619fbf49209bce020859103ba5', '2016-01-15 21:28:08', '549bab13681a43c98092bc9e5a5224fc');
INSERT INTO `iim_mail_box` VALUES ('4c15f07989d24f389d92fa0be5f15709', '0', '1', '3f7ef2d4761f445e946413ab9bea23db', '2016-01-15 21:35:20', '758a391585f145dbae465de92b215d41');
INSERT INTO `iim_mail_box` VALUES ('4d0577d0308946e7b2b74bb9ead3e24a', '0', '1', '6', '2015-11-24 18:40:53', '2a728059ef8c427caec25be0fb4ee96b');
INSERT INTO `iim_mail_box` VALUES ('4d20cf704bf945259d50e9349fb5f69f', '0', '1', 'd42378c9621b4551a0c4c63c82f0aa33', '2016-01-15 21:28:08', '549bab13681a43c98092bc9e5a5224fc');
INSERT INTO `iim_mail_box` VALUES ('4d5d7785948045629a18db07413eeceb', '0', '1', '10', '2015-11-15 21:38:17', '3340f4a663f84ba48c9ebb80ce3acf5a');
INSERT INTO `iim_mail_box` VALUES ('4d5faddbce5c4d5daa539739720c66ae', '0', '1', '4', '2016-01-16 02:08:12', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('4dc9fdd8d0424075a286a49acab1227a', '0', '1', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-16 02:17:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('4e06a9f10ac14d2287ac79e3ad13be17', '0', '1', '7', '2016-01-13 23:33:27', '2046db4813804969bae3c6c54c388318');
INSERT INTO `iim_mail_box` VALUES ('4e1adfb816044299802a181176b3c7a8', '0', '1', '6d69972a880f4228b88f28254c3e417e', '2015-11-25 10:35:53', '3db29dac7af542e8a36552ba410aad52');
INSERT INTO `iim_mail_box` VALUES ('4fb46316b13d4a08aa02eb43a9b49e97', '0', '1', 'd355e9e6b4ad48a59fa0a983e8b7b583', '2016-01-15 21:25:57', '00cbc8e9ad5a47309d5df667c60f5662');
INSERT INTO `iim_mail_box` VALUES ('5024c5a16041457f9d87693bd21c0e39', '0', '1', '19e655ebcd844747aa0e46efe9870169', '2016-01-13 23:33:35', '729bc8258c2547c3bb29aaea49d62535');
INSERT INTO `iim_mail_box` VALUES ('50d481c5986140468167b09ab1f4cc94', '0', '1', 'bb81a0c098a444e69028380e80852d91', '2016-01-16 02:18:00', '2c8d07503898492cb6969b7c7f0a64e6');
INSERT INTO `iim_mail_box` VALUES ('511b41ee347143c5904ef343256e124f', '0', '1', '9', '2015-11-17 20:20:09', 'aaf2a947791349f8add8f773c821e116');
INSERT INTO `iim_mail_box` VALUES ('51434a726e3c4cc989b62a26c489cd8a', '0', '1', 'd355e9e6b4ad48a59fa0a983e8b7b583', '2016-01-16 02:09:41', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('51dcf7e3276f414e9ce7a98c6eccab70', '0', '1', '19e655ebcd844747aa0e46efe9870169', '2016-01-16 02:17:45', 'd45436b28062401db5f480a278ba22bd');
INSERT INTO `iim_mail_box` VALUES ('51ddf443fa60487ab80775f4a6f625d9', '0', '1', 'd8de25a1f872404e82f669c04091685e', '2016-01-16 02:09:41', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('5359ae1adf3e4fb785421fbc447fe6c5', '0', '1', '9', '2016-01-15 21:35:20', '758a391585f145dbae465de92b215d41');
INSERT INTO `iim_mail_box` VALUES ('535e5a93801e49ec919ec72399a3d266', '0', '1', '19e655ebcd844747aa0e46efe9870169', '2016-01-15 21:28:08', '549bab13681a43c98092bc9e5a5224fc');
INSERT INTO `iim_mail_box` VALUES ('539e10c62803469daf95e28e2dbd6f68', '0', '1', 'dc9663e71aaa42f0a2634770896ec74c', '2016-01-16 02:19:30', '89852543c3964815a1b42bae1504c593');
INSERT INTO `iim_mail_box` VALUES ('54200594669b4271882101efe6caeb19', '0', '1', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-15 21:35:20', '758a391585f145dbae465de92b215d41');
INSERT INTO `iim_mail_box` VALUES ('542818b639514f3092d956dbf50f302c', '0', '1', 'dc9663e71aaa42f0a2634770896ec74c', '2016-01-16 02:17:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('5467115c67b249b8ad9fe4122f5f6b3a', '0', '1', '5091ca619fbf49209bce020859103ba5', '2016-01-16 02:17:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('5467bbab0f5443e49dd4d2a235a22d58', '0', '1', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-15 21:47:05', '3cf66a55aaff4965892b0ed8365a2d6d');
INSERT INTO `iim_mail_box` VALUES ('548266d5e8df4b889828551a37a158b9', '0', '1', '4', '2015-11-24 17:35:41', 'c187db5a2fd84325abeefc0465c46eea');
INSERT INTO `iim_mail_box` VALUES ('54b2c90578eb46ce97ebfc6d2354c111', '0', '1', '6d69972a880f4228b88f28254c3e417e', '2015-11-17 20:19:20', 'a85a03a77b08414ebdec3e950ed23494');
INSERT INTO `iim_mail_box` VALUES ('54ce021341404202962ef922fe52ac54', '0', '1', '7', '2016-01-16 02:11:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('54ed82574916404385bdcf6352007df6', '0', '1', '4', '2016-01-15 23:52:08', 'cd8af2da8df24f5797e4c6f0f2bcdf7e');
INSERT INTO `iim_mail_box` VALUES ('54f2d57ea7cd4a999f858f38d9ac37c0', '0', '1', 'd42378c9621b4551a0c4c63c82f0aa33', '2016-01-15 21:26:08', '4ac7390232dc458baa01422d28b71133');
INSERT INTO `iim_mail_box` VALUES ('54f36d32fc3f4a69beaccff79ac9fdab', '0', '1', '5ad0d1f9efdc44b481b02c26b67e832e', '2016-01-16 02:05:43', 'e97f8af28ab748e1a0ddc1d3447fe62a');
INSERT INTO `iim_mail_box` VALUES ('558cba88fc634495a9cbd794f28531b2', '0', '1', 'd8de25a1f872404e82f669c04091685e', '2016-01-15 21:47:05', '3cf66a55aaff4965892b0ed8365a2d6d');
INSERT INTO `iim_mail_box` VALUES ('5616915a80ad4e3fb535712b144d1846', '0', '1', 'd355e9e6b4ad48a59fa0a983e8b7b583', '2016-01-15 23:52:08', 'cd8af2da8df24f5797e4c6f0f2bcdf7e');
INSERT INTO `iim_mail_box` VALUES ('565a442406094ab9918cf19221c7f695', '0', '1', '2', '2015-11-24 11:55:16', 'e133c69c33eb4a018618b02513cc827a');
INSERT INTO `iim_mail_box` VALUES ('5672f05223b24782bd3a09085d0a8e1b', '0', '1', '9', '2016-01-15 21:29:53', '5ce7267bd5d04dcb8e6db8764e6359fa');
INSERT INTO `iim_mail_box` VALUES ('56b2b186eeaf4660a00796d824c62892', '0', '1', 'eca1a51b803449d59ce4e2a3b0f4f787', '2016-01-15 21:35:20', '758a391585f145dbae465de92b215d41');
INSERT INTO `iim_mail_box` VALUES ('5757ed1e6a8a4842a3b1d2b9b0693d7b', '0', '1', '95b3b09fa0b34ac6b95907237c744c55', '2016-01-15 21:47:05', '3cf66a55aaff4965892b0ed8365a2d6d');
INSERT INTO `iim_mail_box` VALUES ('5899b0cc9da6437aabfddffa50efa86c', '0', '1', '3f7ef2d4761f445e946413ab9bea23db', '2016-01-15 21:46:01', 'a019f39fc2714e08801cae6e638a0f1b');
INSERT INTO `iim_mail_box` VALUES ('58c198d60e53445889fc9a6f4539b0df', '0', '1', '8', '2016-01-16 02:15:55', '14d19beac1004bfc8de4521c0c59d78d');
INSERT INTO `iim_mail_box` VALUES ('58e23851614a4bdea338e47b60a0b739', '0', '1', '5091ca619fbf49209bce020859103ba5', '2016-01-16 02:05:43', 'e97f8af28ab748e1a0ddc1d3447fe62a');
INSERT INTO `iim_mail_box` VALUES ('5902a7c3e7824c15864070e639558890', '0', '1', 'd42378c9621b4551a0c4c63c82f0aa33', '2016-01-16 02:17:45', 'd45436b28062401db5f480a278ba22bd');
INSERT INTO `iim_mail_box` VALUES ('590d7d424217441689671afb3b2be64e', '0', '1', '9', '2016-01-16 02:18:00', '2c8d07503898492cb6969b7c7f0a64e6');
INSERT INTO `iim_mail_box` VALUES ('5936d05e0d5047daac277436eacbae0a', '0', '1', 'bb81a0c098a444e69028380e80852d91', '2016-01-15 21:47:05', '3cf66a55aaff4965892b0ed8365a2d6d');
INSERT INTO `iim_mail_box` VALUES ('594bb8b829d3458f9b761a299fb78679', '0', '1', 'dc9663e71aaa42f0a2634770896ec74c', '2016-01-15 21:25:57', '00cbc8e9ad5a47309d5df667c60f5662');
INSERT INTO `iim_mail_box` VALUES ('5956b89379184e5a8078c374dfea347c', '0', '1', '5091ca619fbf49209bce020859103ba5', '2016-01-16 02:09:02', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('59649c6338a342ed9b8b0b3bd680b5f8', '0', '1', '3f7ef2d4761f445e946413ab9bea23db', '2016-01-16 02:17:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('5a52f8e8a0e0499d91854afd5e76d966', '0', '1', '7', '2016-01-15 23:52:08', 'cd8af2da8df24f5797e4c6f0f2bcdf7e');
INSERT INTO `iim_mail_box` VALUES ('5a9cb0994f604422a40f9738122e6e72', '0', '1', 'da60c61cf2aa4cb2810c629c7045c538', '2015-11-25 10:35:53', '3db29dac7af542e8a36552ba410aad52');
INSERT INTO `iim_mail_box` VALUES ('5aae78f9299147fba6b3755271c67c8f', '0', '1', '4639f877ec7149258cadcf145b4182a7', '2016-01-15 21:48:28', '20371c25527a4c7a963441ef527eca8b');
INSERT INTO `iim_mail_box` VALUES ('5b31d31451e84fe2b2414b4d1859b9e0', '0', '1', '4', '2015-11-24 18:42:35', '86c71b16e3ed49cfa2ecaae1bfb599f3');
INSERT INTO `iim_mail_box` VALUES ('5b938ba9e7fe4c169cde9c60623c9086', '0', '1', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-16 02:15:55', '14d19beac1004bfc8de4521c0c59d78d');
INSERT INTO `iim_mail_box` VALUES ('5bd8804ba2db429aa344f7987190f87f', '0', '1', '4', '2015-11-17 20:07:51', '36b526b001d049d0b5b2f1bf1112f67e');
INSERT INTO `iim_mail_box` VALUES ('5c56e2eb7c434e33b6b3fd982db90171', '0', '1', '6', '2015-11-24 17:35:41', 'c187db5a2fd84325abeefc0465c46eea');
INSERT INTO `iim_mail_box` VALUES ('5caf37a52e744c1a8d5d0ad691f2355d', '0', '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-17 20:08:12', '621d83545f1f4d9383c8d469c5ddbebe');
INSERT INTO `iim_mail_box` VALUES ('5cb3c6bd22e24f699aa7d639646129fe', '0', '1', 'eca1a51b803449d59ce4e2a3b0f4f787', '2016-01-16 02:08:12', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('5cf6dadac2134fa4b404eea4d78375a6', '0', '1', '6', '2015-11-17 20:20:09', 'aaf2a947791349f8add8f773c821e116');
INSERT INTO `iim_mail_box` VALUES ('5d344545bc4446ff87c7b34d88f4a9d5', '0', '1', 'bb81a0c098a444e69028380e80852d91', '2016-01-16 02:19:30', '89852543c3964815a1b42bae1504c593');
INSERT INTO `iim_mail_box` VALUES ('5d487a06ef2b44638a089e31b178a37e', '0', '1', 'eca1a51b803449d59ce4e2a3b0f4f787', '2016-01-16 02:17:45', 'd45436b28062401db5f480a278ba22bd');
INSERT INTO `iim_mail_box` VALUES ('5d61514a9c2843d0982935eb5cc07e8a', '0', '1', 'bb81a0c098a444e69028380e80852d91', '2016-01-15 21:37:48', '0bc565e952bb4231858030835c6f1237');
INSERT INTO `iim_mail_box` VALUES ('5d7e3e20fecb4bc88f7e798a01791d03', '0', '1', '5091ca619fbf49209bce020859103ba5', '2016-01-15 21:25:57', '00cbc8e9ad5a47309d5df667c60f5662');
INSERT INTO `iim_mail_box` VALUES ('5da7c36a8a584aeb9e2f5bb018d9cd22', '0', '1', '4', '2016-01-16 02:08:30', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('5dc857ceee2242f7b16b40c4de867389', '0', '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-24 18:40:53', '2a728059ef8c427caec25be0fb4ee96b');
INSERT INTO `iim_mail_box` VALUES ('5dfda042005a45418d3b5460f355511c', '0', '1', '6474fda3f35c4d1580b646a42f190cf7', '2016-01-16 02:05:43', 'e97f8af28ab748e1a0ddc1d3447fe62a');
INSERT INTO `iim_mail_box` VALUES ('5e0b8f3f4f4d4e1db5b32036529ef417', '0', '1', '6', '2015-11-15 21:38:17', '3340f4a663f84ba48c9ebb80ce3acf5a');
INSERT INTO `iim_mail_box` VALUES ('601bcf4c1b2f4317b37d4afca9e17676', '0', '1', '8', '2016-01-16 02:19:30', '89852543c3964815a1b42bae1504c593');
INSERT INTO `iim_mail_box` VALUES ('603af84eb98f4de2ac678049b17398ec', '0', '1', '4', '2016-01-15 21:35:20', '758a391585f145dbae465de92b215d41');
INSERT INTO `iim_mail_box` VALUES ('6064c7540f2046b6b050cad9d6b9819d', '0', '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-17 20:07:51', '36b526b001d049d0b5b2f1bf1112f67e');
INSERT INTO `iim_mail_box` VALUES ('611031e31c0d4175ad8904568e8240e5', '0', '1', '9', '2016-01-16 02:08:12', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('617400b006994a0e8166cb2985e6db72', '0', '1', '2', '2015-11-15 21:38:17', '3340f4a663f84ba48c9ebb80ce3acf5a');
INSERT INTO `iim_mail_box` VALUES ('621aec4fb1e8441bb4f8a4902203d2ac', '0', '1', '42f5435f943a4e8cbcd86ec07b1d922a', '2016-01-16 02:11:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('62393f2fbd16451fa31b69bec9708967', '0', '1', 'cb359e3089224f97adae46cf03c0ed94', '2016-01-15 21:35:20', '758a391585f145dbae465de92b215d41');
INSERT INTO `iim_mail_box` VALUES ('6246c84baec54619a33837d49c75ccdf', '0', '1', '95b3b09fa0b34ac6b95907237c744c55', '2016-01-15 21:48:57', 'bfea4902ace447c8aee9b4198c19a345');
INSERT INTO `iim_mail_box` VALUES ('62ceb3fb5fe14d78b1a7ed74552d0757', '0', '1', '19e655ebcd844747aa0e46efe9870169', '2016-01-15 21:37:48', '0bc565e952bb4231858030835c6f1237');
INSERT INTO `iim_mail_box` VALUES ('62f9e5108810487392615679c44fbbb1', '0', '1', 'dc9663e71aaa42f0a2634770896ec74c', '2016-01-16 02:11:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('636295c72a0344b6a3c8f967326d4e11', '0', '1', '8', '2016-01-15 22:49:57', '6a6f4063c8664fe380928f3d0f0d518f');
INSERT INTO `iim_mail_box` VALUES ('642d262bd11c4f4391c411d5c9ade581', '0', '1', '4639f877ec7149258cadcf145b4182a7', '2016-01-16 02:19:30', '89852543c3964815a1b42bae1504c593');
INSERT INTO `iim_mail_box` VALUES ('645fe8e0f09e44dfaa419b9be42e8b91', '0', '1', '5', '2015-11-17 20:08:12', '621d83545f1f4d9383c8d469c5ddbebe');
INSERT INTO `iim_mail_box` VALUES ('6482fea49c3f49b4b27720536819a8ff', '0', '1', 'd42378c9621b4551a0c4c63c82f0aa33', '2016-01-16 02:08:12', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('65417976eb03478d91b7f84d05609ec4', '0', '1', '7', '2016-01-16 02:09:41', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('6566a61e8666400ab2699db6193c3d45', '0', '1', '19e655ebcd844747aa0e46efe9870169', '2016-01-16 02:08:30', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('6579f2e9d1784c66b8ae726eb4ff6dd6', '0', '1', 'd8de25a1f872404e82f669c04091685e', '2016-01-16 02:05:43', 'e97f8af28ab748e1a0ddc1d3447fe62a');
INSERT INTO `iim_mail_box` VALUES ('65d63911b51443c5aeba9d147f313db0', '0', '1', '9', '2016-01-15 21:26:08', '4ac7390232dc458baa01422d28b71133');
INSERT INTO `iim_mail_box` VALUES ('65f353bf292a46c2920372a245e26dc7', '0', '1', '5091ca619fbf49209bce020859103ba5', '2016-01-16 02:17:45', 'd45436b28062401db5f480a278ba22bd');
INSERT INTO `iim_mail_box` VALUES ('66034d75287542d7b60895ca2286fa38', '0', '1', '9', '2016-01-16 02:17:45', 'd45436b28062401db5f480a278ba22bd');
INSERT INTO `iim_mail_box` VALUES ('6638604df4d74c69b04801f327856156', '0', '1', 'bb81a0c098a444e69028380e80852d91', '2016-01-15 23:52:08', 'cd8af2da8df24f5797e4c6f0f2bcdf7e');
INSERT INTO `iim_mail_box` VALUES ('66455408b91a474e8d09e3bef7a2eb4b', '0', '1', '95b3b09fa0b34ac6b95907237c744c55', '2016-01-13 23:33:35', '729bc8258c2547c3bb29aaea49d62535');
INSERT INTO `iim_mail_box` VALUES ('66ae9e00c1514e0c81e00167fcb51f47', '0', '1', '8', '2016-01-15 21:47:05', '3cf66a55aaff4965892b0ed8365a2d6d');
INSERT INTO `iim_mail_box` VALUES ('677058bafbc64990bb9d768cdf3800fe', '0', '1', 'd42378c9621b4551a0c4c63c82f0aa33', '2016-01-15 21:37:48', '0bc565e952bb4231858030835c6f1237');
INSERT INTO `iim_mail_box` VALUES ('678238aeb4a14939aa4f6be9ba9a6a7b', '0', '1', '6474fda3f35c4d1580b646a42f190cf7', '2016-01-15 22:49:57', '6a6f4063c8664fe380928f3d0f0d518f');
INSERT INTO `iim_mail_box` VALUES ('67a172a289984a6b820131d8b2ff116e', '0', '1', '5091ca619fbf49209bce020859103ba5', '2016-01-15 22:49:57', '6a6f4063c8664fe380928f3d0f0d518f');
INSERT INTO `iim_mail_box` VALUES ('67d052b852ba40ea8cce027973d3c5e0', '0', '1', '7', '2016-01-16 02:17:45', 'd45436b28062401db5f480a278ba22bd');
INSERT INTO `iim_mail_box` VALUES ('67d05f7c07224c2ebb01bfecd064e1f7', '0', '1', 'bb81a0c098a444e69028380e80852d91', '2016-01-15 21:29:53', '5ce7267bd5d04dcb8e6db8764e6359fa');
INSERT INTO `iim_mail_box` VALUES ('67de42e24d6a425a8b006005b1a4f3b6', '0', '1', 'da60c61cf2aa4cb2810c629c7045c538', '2015-11-17 20:07:51', '36b526b001d049d0b5b2f1bf1112f67e');
INSERT INTO `iim_mail_box` VALUES ('68e6be29062d4270a309941fcda7dc2a', '0', '1', '7', '2016-01-16 02:15:55', '14d19beac1004bfc8de4521c0c59d78d');
INSERT INTO `iim_mail_box` VALUES ('68fa22effc694209b627223b3d6a84d9', '0', '1', '4639f877ec7149258cadcf145b4182a7', '2016-01-16 02:18:00', '2c8d07503898492cb6969b7c7f0a64e6');
INSERT INTO `iim_mail_box` VALUES ('6a22f0ea95604c76affe97a52d2be5a4', '0', '1', '95b3b09fa0b34ac6b95907237c744c55', '2016-01-16 02:15:55', '14d19beac1004bfc8de4521c0c59d78d');
INSERT INTO `iim_mail_box` VALUES ('6a2629ee45364186aeeff78658afbbb1', '0', '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-17 20:20:09', 'aaf2a947791349f8add8f773c821e116');
INSERT INTO `iim_mail_box` VALUES ('6aa53109a1784d78997a6b4058a5f494', '0', '1', '7', '2015-11-24 18:42:35', '86c71b16e3ed49cfa2ecaae1bfb599f3');
INSERT INTO `iim_mail_box` VALUES ('6bc5554086e9414090bd180f7ba72dbc', '0', '1', '95b3b09fa0b34ac6b95907237c744c55', '2016-01-13 23:33:27', '2046db4813804969bae3c6c54c388318');
INSERT INTO `iim_mail_box` VALUES ('6bdb34f8c69e4d309faee0b31ff90bd6', '0', '1', 'cb359e3089224f97adae46cf03c0ed94', '2016-01-16 02:09:02', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('6c35a72ed4fc4d1683da78492b7bcf72', '0', '1', '6474fda3f35c4d1580b646a42f190cf7', '2016-01-16 02:09:02', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('6c4c8226695940ba97c1b4a26dc920b6', '0', '1', 'da60c61cf2aa4cb2810c629c7045c538', '2015-11-24 17:07:23', 'caeff3e2169242d197404750bbe80256');
INSERT INTO `iim_mail_box` VALUES ('6cb507066d1d4c81a3c910c8ece8eccc', '0', '1', '5ad0d1f9efdc44b481b02c26b67e832e', '2016-01-16 02:15:55', '14d19beac1004bfc8de4521c0c59d78d');
INSERT INTO `iim_mail_box` VALUES ('6cce169c03a14f3abd002d754395f9c8', '0', '1', 'd355e9e6b4ad48a59fa0a983e8b7b583', '2016-01-15 21:35:20', '758a391585f145dbae465de92b215d41');
INSERT INTO `iim_mail_box` VALUES ('6d19fc3387474edf9697123b1f0d5de4', '0', '1', '19e655ebcd844747aa0e46efe9870169', '2016-01-16 02:16:23', '196618fcd27b4edfbef0ffb5c2b519d2');
INSERT INTO `iim_mail_box` VALUES ('6db02f5e7984439e8f16937d4ee2ca95', '0', '1', '42f5435f943a4e8cbcd86ec07b1d922a', '2016-01-16 02:17:45', 'd45436b28062401db5f480a278ba22bd');
INSERT INTO `iim_mail_box` VALUES ('6dba7198024a429cb7db597272b82d75', '0', '1', '10', '2015-11-17 20:20:09', 'aaf2a947791349f8add8f773c821e116');
INSERT INTO `iim_mail_box` VALUES ('6dd49c41ce2046f4b4f3451c3fb63bdf', '0', '1', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-16 02:05:43', 'e97f8af28ab748e1a0ddc1d3447fe62a');
INSERT INTO `iim_mail_box` VALUES ('6df5abdc281146418db6cae5c6ca8146', '0', '1', 'd355e9e6b4ad48a59fa0a983e8b7b583', '2016-01-16 02:17:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('6e185df1e3cb482db8f00a731fb66a38', '0', '1', '5', '2015-11-24 18:40:53', '2a728059ef8c427caec25be0fb4ee96b');
INSERT INTO `iim_mail_box` VALUES ('6e4fbf9ebf8d41ceae21e799499974c5', '0', '1', '6474fda3f35c4d1580b646a42f190cf7', '2016-01-15 21:37:48', '0bc565e952bb4231858030835c6f1237');
INSERT INTO `iim_mail_box` VALUES ('6e64e073a0e64487bee433e3a19d3cc0', '0', '1', '8', '2015-11-24 18:42:35', '86c71b16e3ed49cfa2ecaae1bfb599f3');
INSERT INTO `iim_mail_box` VALUES ('6e7ba92aa43b47568d69a205695a216c', '0', '1', '8', '2015-11-24 17:35:41', 'c187db5a2fd84325abeefc0465c46eea');
INSERT INTO `iim_mail_box` VALUES ('6ef84b49951a4308a721a068bd5acb90', '0', '1', 'f12330474f634e2897878e8f56a910ae', '2016-01-16 02:08:12', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('70a04462b9c7410296523fe6a626a70c', '0', '1', '7', '2015-11-17 20:20:09', 'aaf2a947791349f8add8f773c821e116');
INSERT INTO `iim_mail_box` VALUES ('70d798555d4f4fe48c508f71db583665', '0', '1', '3', '2015-11-24 17:36:02', 'beb0827b7c514139b70d71bcfa66733b');
INSERT INTO `iim_mail_box` VALUES ('70e1648450fc4915a5ed360c307fa6d7', '0', '1', '7', '2016-01-16 02:08:12', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('70f4498ced954c6899122792b109d201', '0', '1', '6474fda3f35c4d1580b646a42f190cf7', '2016-01-15 21:48:28', '20371c25527a4c7a963441ef527eca8b');
INSERT INTO `iim_mail_box` VALUES ('7107ba35b63143c7803e273d9554f8d3', '0', '1', '7', '2016-01-16 02:09:02', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('713746b7421245c0bd138aa763e6e934', '0', '1', 'da60c61cf2aa4cb2810c629c7045c538', '2015-11-17 20:20:09', 'aaf2a947791349f8add8f773c821e116');
INSERT INTO `iim_mail_box` VALUES ('71eabc531270497bb0739b06684d6b7f', '0', '1', 'da60c61cf2aa4cb2810c629c7045c538', '2015-11-17 20:08:12', '621d83545f1f4d9383c8d469c5ddbebe');
INSERT INTO `iim_mail_box` VALUES ('71f3b6e9cfa44ce78080cd76f5aa21e2', '0', '1', '7', '2016-01-15 21:29:53', '5ce7267bd5d04dcb8e6db8764e6359fa');
INSERT INTO `iim_mail_box` VALUES ('7218a6fe521f45e5808f3392f30ca6aa', '0', '1', '6474fda3f35c4d1580b646a42f190cf7', '2016-01-16 02:08:12', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('721f276c70c14db09657436194367ce9', '0', '1', 'd42378c9621b4551a0c4c63c82f0aa33', '2016-01-15 21:48:28', '20371c25527a4c7a963441ef527eca8b');
INSERT INTO `iim_mail_box` VALUES ('725b2762019e46b793d86ea10b4103ee', '0', '1', 'f12330474f634e2897878e8f56a910ae', '2016-01-16 02:16:23', '196618fcd27b4edfbef0ffb5c2b519d2');
INSERT INTO `iim_mail_box` VALUES ('727e59d849864d80bda150c21dc1062a', '0', '1', '9', '2015-11-25 10:35:53', '3db29dac7af542e8a36552ba410aad52');
INSERT INTO `iim_mail_box` VALUES ('734b3d1ad25a439f889bfc4189a9fc90', '0', '1', '9', '2016-01-15 21:48:57', 'bfea4902ace447c8aee9b4198c19a345');
INSERT INTO `iim_mail_box` VALUES ('7406052fc9d1445c99ffb821fb59b503', '0', '1', '4', '2016-01-15 21:47:05', '3cf66a55aaff4965892b0ed8365a2d6d');
INSERT INTO `iim_mail_box` VALUES ('740e56431a01401fa1f016b5a00c9e6e', '0', '1', 'eca1a51b803449d59ce4e2a3b0f4f787', '2016-01-15 21:26:08', '4ac7390232dc458baa01422d28b71133');
INSERT INTO `iim_mail_box` VALUES ('741e1c523d5445698b100a9f4b044e86', '0', '1', '11', '2015-11-17 20:20:09', 'aaf2a947791349f8add8f773c821e116');
INSERT INTO `iim_mail_box` VALUES ('749236e476924c4889af6979c4fe0a29', '0', '1', '95b3b09fa0b34ac6b95907237c744c55', '2016-01-15 21:35:20', '758a391585f145dbae465de92b215d41');
INSERT INTO `iim_mail_box` VALUES ('758d139dfa994a8ca6a6f62f74776131', '0', '1', 'd8de25a1f872404e82f669c04091685e', '2016-01-15 22:49:57', '6a6f4063c8664fe380928f3d0f0d518f');
INSERT INTO `iim_mail_box` VALUES ('75e8b9cb4ec04db393f2c96eb768aced', '0', '1', '11', '2015-11-24 18:40:53', '2a728059ef8c427caec25be0fb4ee96b');
INSERT INTO `iim_mail_box` VALUES ('762f8bd863794472aae942ea0a1cec39', '0', '1', '42f5435f943a4e8cbcd86ec07b1d922a', '2016-01-16 02:05:43', 'e97f8af28ab748e1a0ddc1d3447fe62a');
INSERT INTO `iim_mail_box` VALUES ('775a997a89a14909a4c0a881ed44f086', '0', '1', 'dc9663e71aaa42f0a2634770896ec74c', '2016-01-15 21:29:53', '5ce7267bd5d04dcb8e6db8764e6359fa');
INSERT INTO `iim_mail_box` VALUES ('7762d6806fc2483495ef3f6abd165b4b', '0', '1', '3f7ef2d4761f445e946413ab9bea23db', '2016-01-16 02:15:55', '14d19beac1004bfc8de4521c0c59d78d');
INSERT INTO `iim_mail_box` VALUES ('777759326b28431a90291f759c2e21c8', '0', '1', '42f5435f943a4e8cbcd86ec07b1d922a', '2016-01-15 21:29:53', '5ce7267bd5d04dcb8e6db8764e6359fa');
INSERT INTO `iim_mail_box` VALUES ('7780d6b979a74e07a3816859b88a6cde', '0', '1', '9', '2015-11-24 17:35:42', '35c90c17d6ec4c70a382f63090aa38bc');
INSERT INTO `iim_mail_box` VALUES ('77a5ed809a6d4b1ba1fc19425038b44c', '0', '1', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-15 22:49:57', '6a6f4063c8664fe380928f3d0f0d518f');
INSERT INTO `iim_mail_box` VALUES ('77ea01888bde41da8445c211266635b5', '0', '1', 'eca1a51b803449d59ce4e2a3b0f4f787', '2016-01-16 02:09:02', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('78241aa7d4c04cb987e2286d4b06804d', '0', '1', '7', '2016-01-15 21:25:57', '00cbc8e9ad5a47309d5df667c60f5662');
INSERT INTO `iim_mail_box` VALUES ('7829f47169314cc4a15c629db4f025a3', '0', '1', '2', '2015-11-17 13:17:19', '06daeb120a504054adefb24b875f5489');
INSERT INTO `iim_mail_box` VALUES ('783e5188e77f47fba74caa9f736c31a8', '0', '1', 'dc9663e71aaa42f0a2634770896ec74c', '2016-01-15 21:28:08', '549bab13681a43c98092bc9e5a5224fc');
INSERT INTO `iim_mail_box` VALUES ('78729eabe85b4218a41d8e1fe448213b', '0', '1', '8', '2016-01-15 21:48:57', 'bfea4902ace447c8aee9b4198c19a345');
INSERT INTO `iim_mail_box` VALUES ('789b7fd6ca7f4b019257a060739982e4', '0', '1', '5', '2015-11-24 17:36:02', 'beb0827b7c514139b70d71bcfa66733b');
INSERT INTO `iim_mail_box` VALUES ('78ac47a519c64892af46c6d00e468cf0', '0', '1', '6474fda3f35c4d1580b646a42f190cf7', '2016-01-16 02:15:55', '14d19beac1004bfc8de4521c0c59d78d');
INSERT INTO `iim_mail_box` VALUES ('793c2a0af38c4f2087544a537f7b3fe7', '0', '1', 'bb81a0c098a444e69028380e80852d91', '2016-01-16 02:09:41', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('79b16cf7d2f84434badbda1df92aae55', '0', '1', '95b3b09fa0b34ac6b95907237c744c55', '2016-01-15 21:28:08', '549bab13681a43c98092bc9e5a5224fc');
INSERT INTO `iim_mail_box` VALUES ('79c8aace0c4b4075b89dfba473f89a47', '0', '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-25 10:35:53', '3db29dac7af542e8a36552ba410aad52');
INSERT INTO `iim_mail_box` VALUES ('79cb8842709d46908a0a01aa52de3c5d', '0', '1', '6d69972a880f4228b88f28254c3e417e', '2015-11-17 20:07:51', '36b526b001d049d0b5b2f1bf1112f67e');
INSERT INTO `iim_mail_box` VALUES ('79d7833281d841bebc10b08cee4fe46f', '0', '1', '11', '2015-11-17 20:19:20', 'a85a03a77b08414ebdec3e950ed23494');
INSERT INTO `iim_mail_box` VALUES ('7a2807c6216641bdb2c6391dd667640b', '0', '1', '3f7ef2d4761f445e946413ab9bea23db', '2016-01-15 21:48:57', 'bfea4902ace447c8aee9b4198c19a345');
INSERT INTO `iim_mail_box` VALUES ('7a8c14a36c8641d1b99fc06cd8a39c41', '0', '1', '5ad0d1f9efdc44b481b02c26b67e832e', '2016-01-16 02:19:30', '89852543c3964815a1b42bae1504c593');
INSERT INTO `iim_mail_box` VALUES ('7ac18a7edc8e48fca82c89c1df4385a4', '0', '1', '8', '2015-11-17 20:18:50', '2f4ba44722194a3aa1423a1c58b69021');
INSERT INTO `iim_mail_box` VALUES ('7ac5beae290a4b98b3eb022ec50a9ce7', '0', '1', '2', '2015-11-24 17:35:41', 'c187db5a2fd84325abeefc0465c46eea');
INSERT INTO `iim_mail_box` VALUES ('7b13c5139d6843d8a0147df942a61d85', '0', '1', '8', '2015-11-17 20:19:20', 'a85a03a77b08414ebdec3e950ed23494');
INSERT INTO `iim_mail_box` VALUES ('7b6204b2b08747fd97ef708995c887fd', '0', '1', 'cb359e3089224f97adae46cf03c0ed94', '2016-01-16 02:15:55', '14d19beac1004bfc8de4521c0c59d78d');
INSERT INTO `iim_mail_box` VALUES ('7ba5f11c605c469e98165accec76fe43', '0', '1', '42f5435f943a4e8cbcd86ec07b1d922a', '2016-01-16 02:09:41', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('7c7ef7c9635244d9bffd7cd949a3fe13', '0', '1', '6d69972a880f4228b88f28254c3e417e', '2015-11-24 18:42:35', '86c71b16e3ed49cfa2ecaae1bfb599f3');
INSERT INTO `iim_mail_box` VALUES ('7cb84ff2e4234102bbb9964552fb2905', '0', '1', 'd8de25a1f872404e82f669c04091685e', '2016-01-16 02:18:00', '2c8d07503898492cb6969b7c7f0a64e6');
INSERT INTO `iim_mail_box` VALUES ('7ceab9a66d644a6db8613e32df5556a6', '0', '1', '5ad0d1f9efdc44b481b02c26b67e832e', '2016-01-16 02:17:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('7cfc87f9f711433d8bcbe91f399e53b0', '0', '1', 'eca1a51b803449d59ce4e2a3b0f4f787', '2016-01-15 21:28:08', '549bab13681a43c98092bc9e5a5224fc');
INSERT INTO `iim_mail_box` VALUES ('7d61c5cb43d44a4e8d9c27e06298a62e', '0', '1', '8', '2016-01-13 23:33:35', '729bc8258c2547c3bb29aaea49d62535');
INSERT INTO `iim_mail_box` VALUES ('7db187d8a9154e628586bd243229207e', '0', '1', '8', '2015-11-15 21:38:17', '3340f4a663f84ba48c9ebb80ce3acf5a');
INSERT INTO `iim_mail_box` VALUES ('7de1d25d6a81437b9004ea0b653bf3c1', '0', '1', '4', '2015-11-17 13:28:15', '777a564bcc224fe4b8e34c68b3ea09d5');
INSERT INTO `iim_mail_box` VALUES ('7e96671a53c743b2b6a9e8dc4101c45d', '0', '1', 'da60c61cf2aa4cb2810c629c7045c538', '2015-11-24 17:35:42', '35c90c17d6ec4c70a382f63090aa38bc');
INSERT INTO `iim_mail_box` VALUES ('7ef7352996f7404a8cc09d91fa10f877', '0', '1', '5', '2015-11-24 17:35:42', '35c90c17d6ec4c70a382f63090aa38bc');
INSERT INTO `iim_mail_box` VALUES ('7f334f7ccd53405ba2931669fac2db90', '0', '1', '3', '2015-11-17 20:19:20', 'a85a03a77b08414ebdec3e950ed23494');
INSERT INTO `iim_mail_box` VALUES ('7f4898d039c447a4a1478415a57d3d0a', '0', '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-17 20:18:50', '2f4ba44722194a3aa1423a1c58b69021');
INSERT INTO `iim_mail_box` VALUES ('7f8558b655aa4d3cbdf563fbc45a1e1c', '0', '1', 'f12330474f634e2897878e8f56a910ae', '2016-01-15 21:25:57', '00cbc8e9ad5a47309d5df667c60f5662');
INSERT INTO `iim_mail_box` VALUES ('7f88fef1dc0d4e158e82a3c90f5e8c2e', '0', '1', 'bb81a0c098a444e69028380e80852d91', '2016-01-15 21:28:08', '549bab13681a43c98092bc9e5a5224fc');
INSERT INTO `iim_mail_box` VALUES ('7fa078bf46074c27955887d3296bef2b', '0', '1', '5091ca619fbf49209bce020859103ba5', '2016-01-16 02:11:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('7fdcc98197be4920a1ae1c0e1b4e6cdd', '0', '1', '5ad0d1f9efdc44b481b02c26b67e832e', '2016-01-15 21:46:01', 'a019f39fc2714e08801cae6e638a0f1b');
INSERT INTO `iim_mail_box` VALUES ('8032c3f8da9840bea51304e6156af985', '0', '1', '7', '2016-01-15 21:28:08', '549bab13681a43c98092bc9e5a5224fc');
INSERT INTO `iim_mail_box` VALUES ('80c50c87acb5484f81c0cbca080b8975', '0', '1', '4639f877ec7149258cadcf145b4182a7', '2016-01-16 02:15:55', '14d19beac1004bfc8de4521c0c59d78d');
INSERT INTO `iim_mail_box` VALUES ('80ea286f8fbc4937817624e6a9cce705', '0', '1', '5ad0d1f9efdc44b481b02c26b67e832e', '2016-01-15 23:52:08', 'cd8af2da8df24f5797e4c6f0f2bcdf7e');
INSERT INTO `iim_mail_box` VALUES ('826f69248e84481d97a22924da2b97b4', '0', '1', '4', '2015-11-17 20:18:50', '2f4ba44722194a3aa1423a1c58b69021');
INSERT INTO `iim_mail_box` VALUES ('82d0cd61ecf4494f81c603e5b4f8a19b', '0', '1', '5091ca619fbf49209bce020859103ba5', '2016-01-16 02:08:30', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('83d423303fdc40deb7c7de25e3405b26', '0', '1', 'd8de25a1f872404e82f669c04091685e', '2016-01-15 23:52:08', 'cd8af2da8df24f5797e4c6f0f2bcdf7e');
INSERT INTO `iim_mail_box` VALUES ('83e16134562e4ed6b0f7923dc8cf006b', '0', '1', '42f5435f943a4e8cbcd86ec07b1d922a', '2016-01-15 21:47:05', '3cf66a55aaff4965892b0ed8365a2d6d');
INSERT INTO `iim_mail_box` VALUES ('841b1662f7fe45588112275d1e39f460', '0', '1', 'd42378c9621b4551a0c4c63c82f0aa33', '2016-01-16 02:17:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('84e69310a62e4ad1aafe3f3f93a9f2ad', '0', '1', '5091ca619fbf49209bce020859103ba5', '2016-01-16 02:16:23', '196618fcd27b4edfbef0ffb5c2b519d2');
INSERT INTO `iim_mail_box` VALUES ('852e0c78802444e7b376fe86836dceca', '0', '1', '5ad0d1f9efdc44b481b02c26b67e832e', '2016-01-13 23:33:35', '729bc8258c2547c3bb29aaea49d62535');
INSERT INTO `iim_mail_box` VALUES ('858ff4ea9b524c86b3e5a7df8114a0cb', '0', '1', '6474fda3f35c4d1580b646a42f190cf7', '2016-01-16 02:17:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('86356128b8804463a1cde1304972defc', '0', '1', '6474fda3f35c4d1580b646a42f190cf7', '2016-01-16 02:17:45', 'd45436b28062401db5f480a278ba22bd');
INSERT INTO `iim_mail_box` VALUES ('8658d592e1ee4a3b859e88fd4ade0b21', '0', '1', '6474fda3f35c4d1580b646a42f190cf7', '2016-01-15 21:29:53', '5ce7267bd5d04dcb8e6db8764e6359fa');
INSERT INTO `iim_mail_box` VALUES ('8680d05452424c7191ec4fb02b01572b', '0', '1', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-13 23:33:27', '2046db4813804969bae3c6c54c388318');
INSERT INTO `iim_mail_box` VALUES ('86c9679de39d480190e0a2513c807169', '0', '1', '9', '2016-01-16 02:19:30', '89852543c3964815a1b42bae1504c593');
INSERT INTO `iim_mail_box` VALUES ('86cf1f7019574ee2892d4cef588f4732', '0', '1', '5ad0d1f9efdc44b481b02c26b67e832e', '2016-01-15 21:35:20', '758a391585f145dbae465de92b215d41');
INSERT INTO `iim_mail_box` VALUES ('87034bf508324f3d965e0b447fd48a88', '0', '1', 'dc9663e71aaa42f0a2634770896ec74c', '2016-01-16 02:09:02', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('870e680c1f44402ebeee5ddb7b5b866d', '0', '1', '10', '2015-11-24 17:35:42', '35c90c17d6ec4c70a382f63090aa38bc');
INSERT INTO `iim_mail_box` VALUES ('8716fffca478454c80bc1838d9dee56d', '0', '1', '42f5435f943a4e8cbcd86ec07b1d922a', '2016-01-16 02:16:23', '196618fcd27b4edfbef0ffb5c2b519d2');
INSERT INTO `iim_mail_box` VALUES ('87c2ef17262a4ab88ab95378e03bdc2b', '0', '1', '6474fda3f35c4d1580b646a42f190cf7', '2016-01-16 02:19:30', '89852543c3964815a1b42bae1504c593');
INSERT INTO `iim_mail_box` VALUES ('881034495c934a7486667dec2a3136b6', '0', '1', 'cb359e3089224f97adae46cf03c0ed94', '2016-01-16 02:17:45', 'd45436b28062401db5f480a278ba22bd');
INSERT INTO `iim_mail_box` VALUES ('88917e00dc4c411e856dbe59801e5c4c', '0', '1', '4', '2016-01-15 21:25:57', '00cbc8e9ad5a47309d5df667c60f5662');
INSERT INTO `iim_mail_box` VALUES ('88b65d8c53bc4a37a6209b378a57d02d', '0', '1', '3', '2015-11-17 20:18:50', '2f4ba44722194a3aa1423a1c58b69021');
INSERT INTO `iim_mail_box` VALUES ('88d9e84ab6fa413eaf866be80998d2c6', '0', '1', '11', '2015-11-24 17:35:41', 'c187db5a2fd84325abeefc0465c46eea');
INSERT INTO `iim_mail_box` VALUES ('899b6e49eed64844847354a0c624f1f4', '0', '1', '4', '2016-01-16 02:17:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('89b93db0ec49418f843df6e1a2375f74', '0', '1', 'cb359e3089224f97adae46cf03c0ed94', '2016-01-15 21:48:28', '20371c25527a4c7a963441ef527eca8b');
INSERT INTO `iim_mail_box` VALUES ('8b8f95e0115b45399d5cf93d93d3b441', '0', '1', '9', '2015-11-24 15:36:39', '8a5acec624db46ceac178b1be69a09bc');
INSERT INTO `iim_mail_box` VALUES ('8b980e41230049f68f77dfd589b25758', '0', '1', '4', '2016-01-15 21:48:28', '20371c25527a4c7a963441ef527eca8b');
INSERT INTO `iim_mail_box` VALUES ('8bcd0e240c9c4554aceea240643fdf69', '0', '1', '3', '2015-11-17 20:07:51', '36b526b001d049d0b5b2f1bf1112f67e');
INSERT INTO `iim_mail_box` VALUES ('8bd5073c6da8442ea54296e63af82c3b', '0', '1', '7', '2016-01-15 21:48:57', 'bfea4902ace447c8aee9b4198c19a345');
INSERT INTO `iim_mail_box` VALUES ('8c4ba2238c5346c1ab1cf435d60cb666', '0', '1', '8', '2016-01-16 02:17:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('8c8f49d47e5a47069c6759597bbac98d', '0', '1', '8', '2016-01-16 02:08:30', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('8d47679cfc524f9c9938af8f47506acf', '0', '1', '7', '2015-11-24 17:35:42', '35c90c17d6ec4c70a382f63090aa38bc');
INSERT INTO `iim_mail_box` VALUES ('8d6eb3da0ac344949d00ee4ad5671c42', '0', '1', '95b3b09fa0b34ac6b95907237c744c55', '2016-01-16 02:11:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('8eeea88f9d9545e4947bc20f92ea4ca9', '0', '1', '4639f877ec7149258cadcf145b4182a7', '2016-01-16 02:09:02', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('90798fcdeb294714a15f7ba7bbcb4e57', '0', '1', '11', '2015-11-24 15:36:39', '8a5acec624db46ceac178b1be69a09bc');
INSERT INTO `iim_mail_box` VALUES ('9114f57f49d94e3d91baf3afe3171bf4', '0', '1', '4639f877ec7149258cadcf145b4182a7', '2016-01-16 02:08:12', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('914a35729de7418491df4689bda68f11', '0', '1', '19e655ebcd844747aa0e46efe9870169', '2016-01-16 02:19:30', '89852543c3964815a1b42bae1504c593');
INSERT INTO `iim_mail_box` VALUES ('91871688878446588a66e7c9aebab33e', '0', '1', 'eca1a51b803449d59ce4e2a3b0f4f787', '2016-01-16 02:18:00', '2c8d07503898492cb6969b7c7f0a64e6');
INSERT INTO `iim_mail_box` VALUES ('918dda587e924b9180c7614b1801caaf', '0', '1', 'd8de25a1f872404e82f669c04091685e', '2016-01-15 21:29:53', '5ce7267bd5d04dcb8e6db8764e6359fa');
INSERT INTO `iim_mail_box` VALUES ('9193348084bb46a1a54c03b7005b01ae', '0', '1', 'd8de25a1f872404e82f669c04091685e', '2016-01-16 02:08:30', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('91f53eb27a594cb9823fd87fedbb4128', '0', '1', '3f7ef2d4761f445e946413ab9bea23db', '2016-01-16 02:08:30', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('9260e70043dc4000801cd86641dbc525', '0', '1', 'd8de25a1f872404e82f669c04091685e', '2016-01-15 21:28:08', '549bab13681a43c98092bc9e5a5224fc');
INSERT INTO `iim_mail_box` VALUES ('927cdc7dca8e47eb98d995eba2b67bfa', '0', '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-17 20:19:20', 'a85a03a77b08414ebdec3e950ed23494');
INSERT INTO `iim_mail_box` VALUES ('92826154dcde4302994cd424359cffa0', '0', '1', '3', '2015-11-24 17:07:23', 'caeff3e2169242d197404750bbe80256');
INSERT INTO `iim_mail_box` VALUES ('92907923df47470da5eb85c7a0ab7b95', '0', '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-24 17:26:23', '525d380ce0e549d6bc36ceb41ad748e9');
INSERT INTO `iim_mail_box` VALUES ('92ae3b38e5ea44cb8bf7ebf083e50da5', '0', '1', '3f7ef2d4761f445e946413ab9bea23db', '2016-01-15 21:26:08', '4ac7390232dc458baa01422d28b71133');
INSERT INTO `iim_mail_box` VALUES ('92f14299824247c9b6ddee213cbc8e37', '0', '1', '9', '2016-01-16 02:09:02', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('934efc1d04884043ac093987fcd98e32', '0', '1', '19e655ebcd844747aa0e46efe9870169', '2016-01-16 02:15:55', '14d19beac1004bfc8de4521c0c59d78d');
INSERT INTO `iim_mail_box` VALUES ('939ce6e962ca42b4bf42745d6c4d4e69', '0', '1', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-15 23:52:08', 'cd8af2da8df24f5797e4c6f0f2bcdf7e');
INSERT INTO `iim_mail_box` VALUES ('93e42e71a9334fd4a2f199537b83778c', '0', '1', '6d69972a880f4228b88f28254c3e417e', '2015-11-24 17:36:02', 'beb0827b7c514139b70d71bcfa66733b');
INSERT INTO `iim_mail_box` VALUES ('946fbb22a08e4d2c8981f269e2826983', '0', '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-24 17:07:23', 'caeff3e2169242d197404750bbe80256');
INSERT INTO `iim_mail_box` VALUES ('94fdba02d96c45128103af973ef55352', '0', '1', '5ad0d1f9efdc44b481b02c26b67e832e', '2016-01-15 22:49:57', '6a6f4063c8664fe380928f3d0f0d518f');
INSERT INTO `iim_mail_box` VALUES ('952af80e986e47c49c1c1276dff57d99', '0', '1', '5091ca619fbf49209bce020859103ba5', '2016-01-16 02:09:41', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('95a3bd879a894533b18742a3522ba9da', '0', '1', '12', '2015-11-24 17:35:42', '35c90c17d6ec4c70a382f63090aa38bc');
INSERT INTO `iim_mail_box` VALUES ('95baf6868d2246aa846f3aa69fe655b4', '0', '1', '12', '2015-11-24 17:35:41', 'c187db5a2fd84325abeefc0465c46eea');
INSERT INTO `iim_mail_box` VALUES ('95f695d3b73643be9b8d55ed6d6e55a2', '0', '1', 'eca1a51b803449d59ce4e2a3b0f4f787', '2016-01-15 21:25:57', '00cbc8e9ad5a47309d5df667c60f5662');
INSERT INTO `iim_mail_box` VALUES ('9645833ed02444e39af356f5bffe3203', '0', '1', '5ad0d1f9efdc44b481b02c26b67e832e', '2016-01-16 02:08:30', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('968b7d99842e4d338e183bd9bade08bf', '0', '1', '42f5435f943a4e8cbcd86ec07b1d922a', '2016-01-15 22:49:57', '6a6f4063c8664fe380928f3d0f0d518f');
INSERT INTO `iim_mail_box` VALUES ('969a68e30c8f45c49862ccbf43860792', '0', '1', '12', '2015-11-17 20:20:09', 'aaf2a947791349f8add8f773c821e116');
INSERT INTO `iim_mail_box` VALUES ('96c8bd3717dc4fecbe91542a18279828', '0', '1', '19e655ebcd844747aa0e46efe9870169', '2016-01-15 21:48:57', 'bfea4902ace447c8aee9b4198c19a345');
INSERT INTO `iim_mail_box` VALUES ('97406ccd1bdb4eb5a7f1448e68bf6197', '0', '1', 'cb359e3089224f97adae46cf03c0ed94', '2016-01-16 02:05:43', 'e97f8af28ab748e1a0ddc1d3447fe62a');
INSERT INTO `iim_mail_box` VALUES ('9740d01a1c5d4877b40c71856b73580d', '0', '1', 'bb81a0c098a444e69028380e80852d91', '2016-01-16 02:08:30', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('978eb63ae67646bf8d4c804493d73115', '0', '1', '4639f877ec7149258cadcf145b4182a7', '2016-01-16 02:11:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('97c45791bd7f42d3b3eb0768f812083d', '0', '1', 'cb359e3089224f97adae46cf03c0ed94', '2016-01-16 02:09:41', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('981e20b758bb4cb89063f93c0dcebc7f', '0', '1', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-16 02:09:02', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('9866122b4fa84c409bb9046f6fef6bb3', '0', '1', 'bb81a0c098a444e69028380e80852d91', '2016-01-16 02:15:55', '14d19beac1004bfc8de4521c0c59d78d');
INSERT INTO `iim_mail_box` VALUES ('99262c62b0d247db901dee3ee7dc40dc', '0', '1', '8', '2016-01-16 02:16:23', '196618fcd27b4edfbef0ffb5c2b519d2');
INSERT INTO `iim_mail_box` VALUES ('99752810332c43228f5db818b94790a9', '0', '1', 'da60c61cf2aa4cb2810c629c7045c538', '2015-11-17 20:18:50', '2f4ba44722194a3aa1423a1c58b69021');
INSERT INTO `iim_mail_box` VALUES ('99c8916f8b6744128136218bd1eef7a1', '0', '1', '11', '2015-11-17 20:18:50', '2f4ba44722194a3aa1423a1c58b69021');
INSERT INTO `iim_mail_box` VALUES ('99e04f01d4384c5bba45a752eb7fde49', '0', '1', '6', '2015-11-17 13:17:19', '06daeb120a504054adefb24b875f5489');
INSERT INTO `iim_mail_box` VALUES ('9a8b691e9c234adda5ff11d26145f6b3', '0', '1', 'bb81a0c098a444e69028380e80852d91', '2016-01-15 21:25:57', '00cbc8e9ad5a47309d5df667c60f5662');
INSERT INTO `iim_mail_box` VALUES ('9abbbf153bdb4734845d482c3690b37f', '0', '1', '8', '2016-01-15 21:48:28', '20371c25527a4c7a963441ef527eca8b');
INSERT INTO `iim_mail_box` VALUES ('9b16da06eb864ab9b861a3b3da8e25a8', '0', '1', '4639f877ec7149258cadcf145b4182a7', '2016-01-15 21:26:08', '4ac7390232dc458baa01422d28b71133');
INSERT INTO `iim_mail_box` VALUES ('9b225fc144bd40c5979682687271a99e', '0', '1', 'cb359e3089224f97adae46cf03c0ed94', '2016-01-15 21:28:08', '549bab13681a43c98092bc9e5a5224fc');
INSERT INTO `iim_mail_box` VALUES ('9b594514855544a89d7dc06f3f56c5a1', '0', '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-24 18:42:35', '86c71b16e3ed49cfa2ecaae1bfb599f3');
INSERT INTO `iim_mail_box` VALUES ('9baa7af2dc1b4d89ba34689c35a0390e', '0', '1', 'f12330474f634e2897878e8f56a910ae', '2016-01-16 02:18:00', '2c8d07503898492cb6969b7c7f0a64e6');
INSERT INTO `iim_mail_box` VALUES ('9bdbea4475874dabb826e659e6b3a3d2', '0', '1', '6d69972a880f4228b88f28254c3e417e', '2015-11-24 17:07:23', 'caeff3e2169242d197404750bbe80256');
INSERT INTO `iim_mail_box` VALUES ('9c5b38b4baa947ebb0b86539a6dea9b8', '0', '1', '19e655ebcd844747aa0e46efe9870169', '2016-01-16 02:05:43', 'e97f8af28ab748e1a0ddc1d3447fe62a');
INSERT INTO `iim_mail_box` VALUES ('9d0c80fa7f6049bf8e0ccf1564afa14a', '0', '1', '4639f877ec7149258cadcf145b4182a7', '2016-01-15 21:29:53', '5ce7267bd5d04dcb8e6db8764e6359fa');
INSERT INTO `iim_mail_box` VALUES ('9d3b8f59d29b42d085aff260f97534cd', '0', '1', '7', '2015-11-17 13:28:15', '777a564bcc224fe4b8e34c68b3ea09d5');
INSERT INTO `iim_mail_box` VALUES ('9d528d80fe5e488fa4c802ba93af16a4', '0', '1', '9', '2016-01-16 02:11:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('9db947b9d11e491a9fea10fddb8461a0', '0', '1', '2', '2015-11-17 20:19:20', 'a85a03a77b08414ebdec3e950ed23494');
INSERT INTO `iim_mail_box` VALUES ('9dd3233efc274014ab8f36f4b12520ad', '0', '1', 'da60c61cf2aa4cb2810c629c7045c538', '2015-11-24 17:36:02', 'beb0827b7c514139b70d71bcfa66733b');
INSERT INTO `iim_mail_box` VALUES ('9e0b955b390f4ebfbea51be8028f8ab7', '0', '1', '4', '2016-01-16 02:16:23', '196618fcd27b4edfbef0ffb5c2b519d2');
INSERT INTO `iim_mail_box` VALUES ('9f55c4ab6ce04315a3a001e8feda8eb0', '0', '1', 'f12330474f634e2897878e8f56a910ae', '2016-01-13 23:33:35', '729bc8258c2547c3bb29aaea49d62535');
INSERT INTO `iim_mail_box` VALUES ('9fc9ebf2b63d4c8c963f57ebc1ae7fce', '0', '1', '3f7ef2d4761f445e946413ab9bea23db', '2016-01-13 23:33:27', '2046db4813804969bae3c6c54c388318');
INSERT INTO `iim_mail_box` VALUES ('a02a6d4a718a4d828a4e7bb3100d3891', '0', '1', 'd42378c9621b4551a0c4c63c82f0aa33', '2016-01-16 02:05:43', 'e97f8af28ab748e1a0ddc1d3447fe62a');
INSERT INTO `iim_mail_box` VALUES ('a05a65c628814ff682e859d0cc7e12fd', '0', '1', 'eca1a51b803449d59ce4e2a3b0f4f787', '2016-01-16 02:16:23', '196618fcd27b4edfbef0ffb5c2b519d2');
INSERT INTO `iim_mail_box` VALUES ('a0ccfc8acfd444f8b3b08db068be31ae', '0', '1', '5ad0d1f9efdc44b481b02c26b67e832e', '2016-01-15 21:48:57', 'bfea4902ace447c8aee9b4198c19a345');
INSERT INTO `iim_mail_box` VALUES ('a18117093b1b440db5502975c5dc4823', '0', '1', '2', '2015-11-24 17:07:23', 'caeff3e2169242d197404750bbe80256');
INSERT INTO `iim_mail_box` VALUES ('a1b0c738c5c648eba30d28fb436bbc5e', '0', '1', '9', '2015-11-15 21:38:17', '3340f4a663f84ba48c9ebb80ce3acf5a');
INSERT INTO `iim_mail_box` VALUES ('a207e95f3ce747f1b964791e1abaeaf4', '0', '1', '6d69972a880f4228b88f28254c3e417e', '2015-11-17 20:08:12', '621d83545f1f4d9383c8d469c5ddbebe');
INSERT INTO `iim_mail_box` VALUES ('a26bb8ea587e41df82a09226a3c60e60', '0', '1', 'bb81a0c098a444e69028380e80852d91', '2016-01-16 02:17:45', 'd45436b28062401db5f480a278ba22bd');
INSERT INTO `iim_mail_box` VALUES ('a2ec9f01a88249cc8cec5acf8c15c665', '0', '1', '3', '2015-11-17 13:28:15', '777a564bcc224fe4b8e34c68b3ea09d5');
INSERT INTO `iim_mail_box` VALUES ('a31837fa52e3489fb798d10a79e88961', '0', '1', '6', '2015-11-24 17:35:42', '35c90c17d6ec4c70a382f63090aa38bc');
INSERT INTO `iim_mail_box` VALUES ('a332951e0d7b400580fbcfadc9c4f6e5', '0', '1', '19e655ebcd844747aa0e46efe9870169', '2016-01-16 02:11:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('a35753e1e5d54e38a8ce363a420383fd', '0', '1', '11', '2015-11-17 20:07:51', '36b526b001d049d0b5b2f1bf1112f67e');
INSERT INTO `iim_mail_box` VALUES ('a36df9a659c8440fb9ebb7f7f3edfa86', '0', '1', 'd8de25a1f872404e82f669c04091685e', '2016-01-16 02:19:30', '89852543c3964815a1b42bae1504c593');
INSERT INTO `iim_mail_box` VALUES ('a3c4b3f0e942482dbd83f0e0321c4b4f', '0', '1', '4', '2015-11-24 18:40:53', '2a728059ef8c427caec25be0fb4ee96b');
INSERT INTO `iim_mail_box` VALUES ('a3ce74862f3242d5a4979279c11edcdc', '0', '1', '3f7ef2d4761f445e946413ab9bea23db', '2016-01-16 02:09:02', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('a3ed4ada0b204593b361ceeeb3c5615e', '0', '1', '3', '2015-11-24 17:26:23', '525d380ce0e549d6bc36ceb41ad748e9');
INSERT INTO `iim_mail_box` VALUES ('a3f59e2e378f4c7da8c02e438d8b774a', '0', '1', 'f12330474f634e2897878e8f56a910ae', '2016-01-15 21:28:08', '549bab13681a43c98092bc9e5a5224fc');
INSERT INTO `iim_mail_box` VALUES ('a42dba98c8204c439414be150268dee5', '0', '1', '8', '2015-11-24 17:36:02', 'beb0827b7c514139b70d71bcfa66733b');
INSERT INTO `iim_mail_box` VALUES ('a444fb548f8f40639662864f557263f6', '0', '1', '9', '2016-01-15 23:52:08', 'cd8af2da8df24f5797e4c6f0f2bcdf7e');
INSERT INTO `iim_mail_box` VALUES ('a4839a71a2d844f2acfdebd019961e26', '0', '1', '4', '2016-01-13 23:33:35', '729bc8258c2547c3bb29aaea49d62535');
INSERT INTO `iim_mail_box` VALUES ('a483fc0971cf42d1bead4e22018dedb6', '0', '1', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-16 02:16:23', '196618fcd27b4edfbef0ffb5c2b519d2');
INSERT INTO `iim_mail_box` VALUES ('a4c86bc56427405c856a2dd7b8cef80b', '0', '1', 'bb81a0c098a444e69028380e80852d91', '2016-01-16 02:05:43', 'e97f8af28ab748e1a0ddc1d3447fe62a');
INSERT INTO `iim_mail_box` VALUES ('a57a4ae6bceb436f989ee7ba3e8939c4', '0', '1', '4', '2016-01-15 22:49:57', '6a6f4063c8664fe380928f3d0f0d518f');
INSERT INTO `iim_mail_box` VALUES ('a58e1c37c67040239b01f69b5a8fba99', '0', '1', 'bb81a0c098a444e69028380e80852d91', '2016-01-16 02:09:02', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('a5d273b616ac46ffbf778993000513e0', '0', '1', 'bb81a0c098a444e69028380e80852d91', '2016-01-15 21:48:57', 'bfea4902ace447c8aee9b4198c19a345');
INSERT INTO `iim_mail_box` VALUES ('a5d6486cd3e644c9b73905a56745a936', '0', '1', '6474fda3f35c4d1580b646a42f190cf7', '2016-01-15 21:25:57', '00cbc8e9ad5a47309d5df667c60f5662');
INSERT INTO `iim_mail_box` VALUES ('a5e05ebbc566473e8fdde9aa1727f33a', '0', '1', 'dc9663e71aaa42f0a2634770896ec74c', '2016-01-15 21:48:57', 'bfea4902ace447c8aee9b4198c19a345');
INSERT INTO `iim_mail_box` VALUES ('a67b2d1c9a7e4b0f8d1983aca34148da', '0', '1', '6', '2015-11-24 17:26:23', '525d380ce0e549d6bc36ceb41ad748e9');
INSERT INTO `iim_mail_box` VALUES ('a691eb89f5054c599e42d54f0b0f37fa', '0', '1', '10', '2015-11-17 20:07:51', '36b526b001d049d0b5b2f1bf1112f67e');
INSERT INTO `iim_mail_box` VALUES ('a6b84de30ab6458baa39216bc41b2678', '0', '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-24 17:36:02', 'beb0827b7c514139b70d71bcfa66733b');
INSERT INTO `iim_mail_box` VALUES ('a704b92908ea46458f81a1b7909f3654', '0', '1', 'eca1a51b803449d59ce4e2a3b0f4f787', '2016-01-16 02:05:43', 'e97f8af28ab748e1a0ddc1d3447fe62a');
INSERT INTO `iim_mail_box` VALUES ('a708346e836048a78660f34566f559cf', '0', '1', 'bb81a0c098a444e69028380e80852d91', '2016-01-16 02:17:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('a73a8d300c22499090996a4dbdd123a0', '0', '1', '2', '2015-11-24 17:35:42', '35c90c17d6ec4c70a382f63090aa38bc');
INSERT INTO `iim_mail_box` VALUES ('a79376d6430e489aadc9776a8a6e4179', '0', '1', '6', '2015-11-17 13:28:15', '777a564bcc224fe4b8e34c68b3ea09d5');
INSERT INTO `iim_mail_box` VALUES ('a851a2b63cce4405ac0dd053ef48e34e', '0', '1', '8', '2016-01-15 21:26:08', '4ac7390232dc458baa01422d28b71133');
INSERT INTO `iim_mail_box` VALUES ('a873090305744e63a3738ddbcda6a10f', '0', '1', '10', '2015-11-17 13:17:19', '06daeb120a504054adefb24b875f5489');
INSERT INTO `iim_mail_box` VALUES ('a8789cd95d264f3199c3ff1f58f51a1c', '0', '1', 'eca1a51b803449d59ce4e2a3b0f4f787', '2016-01-15 21:29:53', '5ce7267bd5d04dcb8e6db8764e6359fa');
INSERT INTO `iim_mail_box` VALUES ('a95f1e3a626b4804899a5fe81d773852', '0', '1', 'eca1a51b803449d59ce4e2a3b0f4f787', '2016-01-16 02:08:30', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('a97947b324774f4599d52ec89c1d00af', '0', '1', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-15 21:28:08', '549bab13681a43c98092bc9e5a5224fc');
INSERT INTO `iim_mail_box` VALUES ('a9a28315f13f46cdb5c24546d5a5a3e2', '0', '1', '4', '2016-01-16 02:18:00', '2c8d07503898492cb6969b7c7f0a64e6');
INSERT INTO `iim_mail_box` VALUES ('aa3ee0d7099845c295a60a152e17044a', '0', '1', 'bb81a0c098a444e69028380e80852d91', '2016-01-16 02:16:23', '196618fcd27b4edfbef0ffb5c2b519d2');
INSERT INTO `iim_mail_box` VALUES ('ab6c5168a26746719325d7f5a344daff', '0', '1', '5ad0d1f9efdc44b481b02c26b67e832e', '2016-01-16 02:08:12', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('abab0d6cc6424e4081331b6d738aa434', '0', '1', 'bb81a0c098a444e69028380e80852d91', '2016-01-16 02:11:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('ac5dca9d07814cc68b11de0bb7cd7e01', '0', '1', '4639f877ec7149258cadcf145b4182a7', '2016-01-15 21:48:57', 'bfea4902ace447c8aee9b4198c19a345');
INSERT INTO `iim_mail_box` VALUES ('aceb98cacbb74d4887c548ebfac60868', '0', '1', '8', '2016-01-15 21:28:08', '549bab13681a43c98092bc9e5a5224fc');
INSERT INTO `iim_mail_box` VALUES ('ad10374449004880a70e34d5a1393286', '0', '1', 'bb81a0c098a444e69028380e80852d91', '2016-01-13 23:33:27', '2046db4813804969bae3c6c54c388318');
INSERT INTO `iim_mail_box` VALUES ('ad28f99ab43547c287fe484599629c23', '0', '1', 'eca1a51b803449d59ce4e2a3b0f4f787', '2016-01-16 02:19:30', '89852543c3964815a1b42bae1504c593');
INSERT INTO `iim_mail_box` VALUES ('ad3dbd68514d4fe4b4fc4db0cf438526', '0', '1', '4639f877ec7149258cadcf145b4182a7', '2016-01-15 23:52:08', 'cd8af2da8df24f5797e4c6f0f2bcdf7e');
INSERT INTO `iim_mail_box` VALUES ('ad4824a3e9b74284a2bf8f288ab469c8', '0', '1', '6', '2015-11-24 18:42:35', '86c71b16e3ed49cfa2ecaae1bfb599f3');
INSERT INTO `iim_mail_box` VALUES ('ad5267135ffe476282ad2cbba573e8da', '0', '1', 'd355e9e6b4ad48a59fa0a983e8b7b583', '2016-01-13 23:33:27', '2046db4813804969bae3c6c54c388318');
INSERT INTO `iim_mail_box` VALUES ('ada040b7d98541da9d2fa14fddd3411f', '0', '1', '5ad0d1f9efdc44b481b02c26b67e832e', '2016-01-15 21:25:57', '00cbc8e9ad5a47309d5df667c60f5662');
INSERT INTO `iim_mail_box` VALUES ('add1e57b24ed4fbba2f24b155913a3cc', '0', '1', '3f7ef2d4761f445e946413ab9bea23db', '2016-01-16 02:09:41', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('add420a37bf44e8dacdbee065b9a947d', '0', '1', '6474fda3f35c4d1580b646a42f190cf7', '2016-01-13 23:33:35', '729bc8258c2547c3bb29aaea49d62535');
INSERT INTO `iim_mail_box` VALUES ('adee38dce9034d3fa499455ee08c6143', '0', '1', 'dc9663e71aaa42f0a2634770896ec74c', '2016-01-15 21:37:48', '0bc565e952bb4231858030835c6f1237');
INSERT INTO `iim_mail_box` VALUES ('ae6bec0a290c47a7902c0c18054d74bf', '0', '1', '3', '2015-11-15 21:38:17', '3340f4a663f84ba48c9ebb80ce3acf5a');
INSERT INTO `iim_mail_box` VALUES ('aec8093601574d5585829e05999b9929', '0', '1', '7', '2015-11-17 20:08:12', '621d83545f1f4d9383c8d469c5ddbebe');
INSERT INTO `iim_mail_box` VALUES ('afd3b691ca4d47f28f818aaf26fd64c8', '0', '1', '5ad0d1f9efdc44b481b02c26b67e832e', '2016-01-16 02:09:41', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('afdce081e7d74fc294425e9f6c27396c', '0', '1', '9', '2016-01-16 02:15:55', '14d19beac1004bfc8de4521c0c59d78d');
INSERT INTO `iim_mail_box` VALUES ('affc34e000144efaab57379d6b95e028', '0', '1', 'bb81a0c098a444e69028380e80852d91', '2016-01-15 21:26:08', '4ac7390232dc458baa01422d28b71133');
INSERT INTO `iim_mail_box` VALUES ('b03b6ebd60a646f08bd793240602e9a9', '0', '1', '8', '2016-01-15 21:25:57', '00cbc8e9ad5a47309d5df667c60f5662');
INSERT INTO `iim_mail_box` VALUES ('b051bae03116457b91f9dc82b733903b', '0', '1', '4', '2016-01-13 23:33:27', '2046db4813804969bae3c6c54c388318');
INSERT INTO `iim_mail_box` VALUES ('b0b409804eda4eebbc561ba6e7b1f1c7', '0', '1', 'd42378c9621b4551a0c4c63c82f0aa33', '2016-01-16 02:18:00', '2c8d07503898492cb6969b7c7f0a64e6');
INSERT INTO `iim_mail_box` VALUES ('b0d0b3ded4374250a9d1137c95341b5e', '0', '1', '12', '2015-11-17 20:18:50', '2f4ba44722194a3aa1423a1c58b69021');
INSERT INTO `iim_mail_box` VALUES ('b14cea5c9669410aa70c03a4f2e0deaf', '0', '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-24 15:36:39', '8a5acec624db46ceac178b1be69a09bc');
INSERT INTO `iim_mail_box` VALUES ('b17037270d874dbf9e81b00fbbcebd83', '0', '1', '12', '2015-11-17 20:07:51', '36b526b001d049d0b5b2f1bf1112f67e');
INSERT INTO `iim_mail_box` VALUES ('b215b2d9697e4a7196a83a877e068ad0', '0', '1', 'dc9663e71aaa42f0a2634770896ec74c', '2016-01-16 02:05:43', 'e97f8af28ab748e1a0ddc1d3447fe62a');
INSERT INTO `iim_mail_box` VALUES ('b26f56be83ec4c0dbb82016aa15cdc11', '0', '1', '3f7ef2d4761f445e946413ab9bea23db', '2016-01-16 02:18:00', '2c8d07503898492cb6969b7c7f0a64e6');
INSERT INTO `iim_mail_box` VALUES ('b292185b5218459aa4854c28789d5b23', '0', '1', '9', '2015-11-17 13:17:19', '06daeb120a504054adefb24b875f5489');
INSERT INTO `iim_mail_box` VALUES ('b2928d08b4354cf091c5d159d400e740', '0', '1', 'eca1a51b803449d59ce4e2a3b0f4f787', '2016-01-16 02:11:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('b30549bfe2ce4b78aeb3fb218b5e0470', '0', '1', 'd8de25a1f872404e82f669c04091685e', '2016-01-15 21:46:01', 'a019f39fc2714e08801cae6e638a0f1b');
INSERT INTO `iim_mail_box` VALUES ('b33efec3c18b4933a3afec210da97cb6', '0', '1', '3f7ef2d4761f445e946413ab9bea23db', '2016-01-15 21:28:08', '549bab13681a43c98092bc9e5a5224fc');
INSERT INTO `iim_mail_box` VALUES ('b37d3df72ce14a06b715c5b21c5c6da5', '0', '1', '9', '2016-01-15 21:28:08', '549bab13681a43c98092bc9e5a5224fc');
INSERT INTO `iim_mail_box` VALUES ('b3a2c5f1f8034fbeb95492bc2db7f898', '0', '1', '6474fda3f35c4d1580b646a42f190cf7', '2016-01-16 02:11:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('b3c860634ee74c8e8c3949a092257c48', '0', '1', '10', '2015-11-17 20:19:20', 'a85a03a77b08414ebdec3e950ed23494');
INSERT INTO `iim_mail_box` VALUES ('b4388df9b759402390b4345b8edf53de', '0', '1', 'f12330474f634e2897878e8f56a910ae', '2016-01-16 02:11:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('b4ada0a5198a486f9e215c5ddee7e487', '0', '1', '8', '2016-01-16 02:11:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('b4f01c77145c41c883b397a161b20350', '0', '1', '95b3b09fa0b34ac6b95907237c744c55', '2016-01-15 21:48:28', '20371c25527a4c7a963441ef527eca8b');
INSERT INTO `iim_mail_box` VALUES ('b5437ea863864590b0dbbcbd29c4952a', '0', '1', '6474fda3f35c4d1580b646a42f190cf7', '2016-01-15 23:52:08', 'cd8af2da8df24f5797e4c6f0f2bcdf7e');
INSERT INTO `iim_mail_box` VALUES ('b5af32b4c0734a83abe7782bd7e23d16', '0', '1', '6474fda3f35c4d1580b646a42f190cf7', '2016-01-16 02:16:23', '196618fcd27b4edfbef0ffb5c2b519d2');
INSERT INTO `iim_mail_box` VALUES ('b5c558960c31450fb44ccc06539477b4', '0', '1', '9', '2016-01-15 21:46:01', 'a019f39fc2714e08801cae6e638a0f1b');
INSERT INTO `iim_mail_box` VALUES ('b5e8bee31f42496c9522589a24973d4f', '0', '1', '6474fda3f35c4d1580b646a42f190cf7', '2016-01-15 21:46:01', 'a019f39fc2714e08801cae6e638a0f1b');
INSERT INTO `iim_mail_box` VALUES ('b624d8fe3e634a0bbe06ebe5b4977bd5', '0', '1', '4639f877ec7149258cadcf145b4182a7', '2016-01-16 02:05:43', 'e97f8af28ab748e1a0ddc1d3447fe62a');
INSERT INTO `iim_mail_box` VALUES ('b642895518094ee4826dee8ebfbf346f', '0', '1', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-16 02:09:41', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('b6635460c5b540cf9e92bd46bc16623f', '0', '1', '4', '2015-11-24 17:26:23', '525d380ce0e549d6bc36ceb41ad748e9');
INSERT INTO `iim_mail_box` VALUES ('b6a36d87e1494432bc9746a224a31181', '0', '1', '9', '2015-11-24 18:40:53', '2a728059ef8c427caec25be0fb4ee96b');
INSERT INTO `iim_mail_box` VALUES ('b7dad04fa1764593834922155beb0ad1', '0', '1', '19e655ebcd844747aa0e46efe9870169', '2016-01-15 21:35:20', '758a391585f145dbae465de92b215d41');
INSERT INTO `iim_mail_box` VALUES ('b9108e56c68041d1badebd1205e4599a', '0', '1', '4639f877ec7149258cadcf145b4182a7', '2016-01-15 21:28:08', '549bab13681a43c98092bc9e5a5224fc');
INSERT INTO `iim_mail_box` VALUES ('b93492337ec64b0889c93f15bcc9d856', '0', '1', '5', '2015-11-24 17:35:41', 'c187db5a2fd84325abeefc0465c46eea');
INSERT INTO `iim_mail_box` VALUES ('b97148a8d82c4a15ab352e4c13ccd774', '0', '1', '19e655ebcd844747aa0e46efe9870169', '2016-01-15 21:47:05', '3cf66a55aaff4965892b0ed8365a2d6d');
INSERT INTO `iim_mail_box` VALUES ('b9765d65a1bb48ddb4c6611c9d1522d1', '0', '1', '10', '2015-11-25 10:35:53', '3db29dac7af542e8a36552ba410aad52');
INSERT INTO `iim_mail_box` VALUES ('b98942394b81424b864b3cd2e63da1fe', '0', '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-24 17:35:42', '35c90c17d6ec4c70a382f63090aa38bc');
INSERT INTO `iim_mail_box` VALUES ('b9a9fba8045c48eab3651fdfc84c6686', '0', '1', 'da60c61cf2aa4cb2810c629c7045c538', '2015-11-24 17:35:41', 'c187db5a2fd84325abeefc0465c46eea');
INSERT INTO `iim_mail_box` VALUES ('b9fb03686dfe44b0923e0a9e4af2b39d', '0', '1', '5091ca619fbf49209bce020859103ba5', '2016-01-15 21:48:57', 'bfea4902ace447c8aee9b4198c19a345');
INSERT INTO `iim_mail_box` VALUES ('b9fcb8b6c64345e19dc8e4de28315980', '0', '1', 'eca1a51b803449d59ce4e2a3b0f4f787', '2016-01-15 21:37:48', '0bc565e952bb4231858030835c6f1237');
INSERT INTO `iim_mail_box` VALUES ('ba14bb061c5b444fa226d3942556549b', '0', '1', '3f7ef2d4761f445e946413ab9bea23db', '2016-01-15 21:29:53', '5ce7267bd5d04dcb8e6db8764e6359fa');
INSERT INTO `iim_mail_box` VALUES ('bb35ccc607f24b69b13b35926393ede7', '0', '1', '12', '2015-11-17 13:28:15', '777a564bcc224fe4b8e34c68b3ea09d5');
INSERT INTO `iim_mail_box` VALUES ('bb3f48254f2c459fa909909298c1e188', '0', '1', 'cb359e3089224f97adae46cf03c0ed94', '2016-01-15 21:47:05', '3cf66a55aaff4965892b0ed8365a2d6d');
INSERT INTO `iim_mail_box` VALUES ('bb94e4f834b842b29e64a7cf7c66e1c4', '0', '1', '10', '2015-11-24 15:36:39', '8a5acec624db46ceac178b1be69a09bc');
INSERT INTO `iim_mail_box` VALUES ('bbf4dcf9b26543a5a356e1ffba88719d', '0', '1', 'd355e9e6b4ad48a59fa0a983e8b7b583', '2016-01-15 21:46:01', 'a019f39fc2714e08801cae6e638a0f1b');
INSERT INTO `iim_mail_box` VALUES ('bc3525888bb34d50bdc19f66c28e04b8', '0', '1', '95b3b09fa0b34ac6b95907237c744c55', '2016-01-16 02:09:02', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('bc65b53a41ca442fba445145d0e4547b', '0', '1', '3', '2015-11-17 20:08:12', '621d83545f1f4d9383c8d469c5ddbebe');
INSERT INTO `iim_mail_box` VALUES ('bcf679bdea954698ab7204ca5442b9f4', '0', '1', '12', '2015-11-24 15:36:39', '8a5acec624db46ceac178b1be69a09bc');
INSERT INTO `iim_mail_box` VALUES ('bd8a30df2bdb4b4cb017f79d5514a105', '0', '1', '95b3b09fa0b34ac6b95907237c744c55', '2016-01-16 02:08:30', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('bfec203b4b0e417389c78ae31e97759a', '0', '1', '9', '2015-11-17 20:19:20', 'a85a03a77b08414ebdec3e950ed23494');
INSERT INTO `iim_mail_box` VALUES ('c067bfcdbabe409a81da4ed7b0caa04e', '0', '1', 'd8de25a1f872404e82f669c04091685e', '2016-01-13 23:33:27', '2046db4813804969bae3c6c54c388318');
INSERT INTO `iim_mail_box` VALUES ('c093c8fe7c064b3e9aea0eb8d5ec9697', '0', '1', '8', '2015-11-24 17:35:42', '35c90c17d6ec4c70a382f63090aa38bc');
INSERT INTO `iim_mail_box` VALUES ('c0a4a25ae2f74fe9ac89440a7da7040e', '0', '1', '19e655ebcd844747aa0e46efe9870169', '2016-01-13 23:33:27', '2046db4813804969bae3c6c54c388318');
INSERT INTO `iim_mail_box` VALUES ('c0c18adb0b3d4d7c946be226a98638a6', '0', '1', '5ad0d1f9efdc44b481b02c26b67e832e', '2016-01-16 02:18:00', '2c8d07503898492cb6969b7c7f0a64e6');
INSERT INTO `iim_mail_box` VALUES ('c10a255fb6d34815b99d4bc86d8493f2', '0', '1', 'eca1a51b803449d59ce4e2a3b0f4f787', '2016-01-15 21:46:01', 'a019f39fc2714e08801cae6e638a0f1b');
INSERT INTO `iim_mail_box` VALUES ('c1410cfdba8d4daf84804366c37fe668', '0', '1', 'd355e9e6b4ad48a59fa0a983e8b7b583', '2016-01-13 23:33:35', '729bc8258c2547c3bb29aaea49d62535');
INSERT INTO `iim_mail_box` VALUES ('c16d8664136f4442b5d6329bcf854ade', '0', '1', 'dc9663e71aaa42f0a2634770896ec74c', '2016-01-15 21:46:01', 'a019f39fc2714e08801cae6e638a0f1b');
INSERT INTO `iim_mail_box` VALUES ('c172a51ddc3d40d18ca3602dbc7c3b5d', '0', '1', 'da60c61cf2aa4cb2810c629c7045c538', '2015-11-24 15:36:39', '8a5acec624db46ceac178b1be69a09bc');
INSERT INTO `iim_mail_box` VALUES ('c1b4259fd75e4598bbaf4fb1afb42371', '0', '1', '5091ca619fbf49209bce020859103ba5', '2016-01-15 21:37:48', '0bc565e952bb4231858030835c6f1237');
INSERT INTO `iim_mail_box` VALUES ('c1eed5943a7b40f289beb0a59b1cb499', '0', '1', 'cb359e3089224f97adae46cf03c0ed94', '2016-01-16 02:16:23', '196618fcd27b4edfbef0ffb5c2b519d2');
INSERT INTO `iim_mail_box` VALUES ('c27ce06dbeee4201a7f5d7a20d60543c', '0', '1', '6d69972a880f4228b88f28254c3e417e', '2015-11-24 15:36:39', '8a5acec624db46ceac178b1be69a09bc');
INSERT INTO `iim_mail_box` VALUES ('c2864d611b79468ebb1016550ef52cde', '0', '1', '8', '2016-01-16 02:09:02', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('c28ca8075a444adabb0a260ce15404b5', '0', '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-24 17:35:41', 'c187db5a2fd84325abeefc0465c46eea');
INSERT INTO `iim_mail_box` VALUES ('c319a486cc4346ec88f91c2e71de672c', '0', '1', '11', '2015-11-24 17:35:42', '35c90c17d6ec4c70a382f63090aa38bc');
INSERT INTO `iim_mail_box` VALUES ('c34aee8fed35465ca3a05e248b960251', '0', '1', '3', '2015-11-24 18:40:53', '2a728059ef8c427caec25be0fb4ee96b');
INSERT INTO `iim_mail_box` VALUES ('c386d31b854343e086dc17709645d7f6', '0', '1', '95b3b09fa0b34ac6b95907237c744c55', '2016-01-16 02:09:41', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('c39a5addc899457faca8036a0cbff3f3', '0', '1', '12', '2015-11-25 10:35:53', '3db29dac7af542e8a36552ba410aad52');
INSERT INTO `iim_mail_box` VALUES ('c3b9542b8bb8476b8511ff14b1ec0556', '0', '1', '95b3b09fa0b34ac6b95907237c744c55', '2016-01-15 21:25:57', '00cbc8e9ad5a47309d5df667c60f5662');
INSERT INTO `iim_mail_box` VALUES ('c404fc82b0944d3890a86dbed75cf8ac', '0', '1', '6474fda3f35c4d1580b646a42f190cf7', '2016-01-15 21:35:20', '758a391585f145dbae465de92b215d41');
INSERT INTO `iim_mail_box` VALUES ('c414a69336be47259bed098f37cc6b2c', '0', '1', '95b3b09fa0b34ac6b95907237c744c55', '2016-01-16 02:18:00', '2c8d07503898492cb6969b7c7f0a64e6');
INSERT INTO `iim_mail_box` VALUES ('c43a89787e144fae8fca72bfc97201b1', '0', '1', 'd42378c9621b4551a0c4c63c82f0aa33', '2016-01-16 02:11:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('c463839e13a14347aed07282581ed8eb', '0', '1', '4', '2016-01-16 02:17:45', 'd45436b28062401db5f480a278ba22bd');
INSERT INTO `iim_mail_box` VALUES ('c46c344f59e546f2a965171d7503adad', '0', '1', 'd355e9e6b4ad48a59fa0a983e8b7b583', '2016-01-15 21:48:28', '20371c25527a4c7a963441ef527eca8b');
INSERT INTO `iim_mail_box` VALUES ('c482aee1d4a5442386c283ce54288782', '0', '1', '3f7ef2d4761f445e946413ab9bea23db', '2016-01-16 02:11:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('c4ca035ecb8845d2a59786237c07e112', '0', '1', 'd8de25a1f872404e82f669c04091685e', '2016-01-15 21:25:57', '00cbc8e9ad5a47309d5df667c60f5662');
INSERT INTO `iim_mail_box` VALUES ('c4fda010af9f472fb3f7772c50c2bacd', '0', '1', '5ad0d1f9efdc44b481b02c26b67e832e', '2016-01-16 02:11:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('c516c5678a184e47b40d813a098fd730', '0', '1', '5091ca619fbf49209bce020859103ba5', '2016-01-13 23:33:27', '2046db4813804969bae3c6c54c388318');
INSERT INTO `iim_mail_box` VALUES ('c54f91b36dfb446dafc2aab7a9e6d26f', '0', '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-17 13:28:15', '777a564bcc224fe4b8e34c68b3ea09d5');
INSERT INTO `iim_mail_box` VALUES ('c57df35eb96d413281bd203a669a1ca4', '0', '1', '9', '2016-01-16 02:09:41', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('c58249453b514f21b5774a9e8d2bb0c9', '0', '1', '4', '2016-01-16 02:09:41', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('c5bc37f0d6e142f6b4e8f4c8c88bb1ad', '0', '1', '5091ca619fbf49209bce020859103ba5', '2016-01-15 21:46:01', 'a019f39fc2714e08801cae6e638a0f1b');
INSERT INTO `iim_mail_box` VALUES ('c6120daf867f499caa7b0e4c2a6b78a7', '0', '1', '7', '2015-11-24 17:35:41', 'c187db5a2fd84325abeefc0465c46eea');
INSERT INTO `iim_mail_box` VALUES ('c613fe57c240467cbdd036657eb4bb30', '0', '1', 'dc9663e71aaa42f0a2634770896ec74c', '2016-01-16 02:09:41', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('c61882c95ff14eb58755d51c9c7977b3', '0', '1', '8', '2016-01-15 21:46:01', 'a019f39fc2714e08801cae6e638a0f1b');
INSERT INTO `iim_mail_box` VALUES ('c6e622a8adbc4c4eb1229a961078f04e', '0', '1', 'd42378c9621b4551a0c4c63c82f0aa33', '2016-01-15 22:49:57', '6a6f4063c8664fe380928f3d0f0d518f');
INSERT INTO `iim_mail_box` VALUES ('c6ec941fd03b4a0ab966b3915418006e', '0', '1', '8', '2016-01-13 23:33:27', '2046db4813804969bae3c6c54c388318');
INSERT INTO `iim_mail_box` VALUES ('c6fa0718b61441b6a4dec22db710b6d1', '0', '1', 'eca1a51b803449d59ce4e2a3b0f4f787', '2016-01-15 22:49:57', '6a6f4063c8664fe380928f3d0f0d518f');
INSERT INTO `iim_mail_box` VALUES ('c774fa2d982146fc8111e41feebd22f1', '0', '1', 'd355e9e6b4ad48a59fa0a983e8b7b583', '2016-01-16 02:19:30', '89852543c3964815a1b42bae1504c593');
INSERT INTO `iim_mail_box` VALUES ('c785b594a585486baa471b59ad5a0c30', '0', '1', 'd8de25a1f872404e82f669c04091685e', '2016-01-16 02:11:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('c7b3e408688a4c9493b88eff7a8ce524', '0', '1', '42f5435f943a4e8cbcd86ec07b1d922a', '2016-01-16 02:17:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('c7c6e93fc47e4b33acc59484c6ec411a', '0', '1', 'da60c61cf2aa4cb2810c629c7045c538', '2015-11-24 18:40:53', '2a728059ef8c427caec25be0fb4ee96b');
INSERT INTO `iim_mail_box` VALUES ('c7df3676d90445e0b66a33aec1dbc0e2', '0', '1', '19e655ebcd844747aa0e46efe9870169', '2016-01-16 02:17:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('c899711ccf8d473189a8fdc65f9e634b', '0', '1', 'd355e9e6b4ad48a59fa0a983e8b7b583', '2016-01-16 02:08:30', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('c8e486940a3245cc8f964587f0ca3d79', '0', '1', 'd42378c9621b4551a0c4c63c82f0aa33', '2016-01-16 02:08:30', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('c8e5a0148b40478186af5a5380c35271', '0', '1', '8', '2016-01-15 21:29:53', '5ce7267bd5d04dcb8e6db8764e6359fa');
INSERT INTO `iim_mail_box` VALUES ('c914f037e351405cb42fadd566fe2091', '0', '1', '2', '2015-11-24 17:36:02', 'beb0827b7c514139b70d71bcfa66733b');
INSERT INTO `iim_mail_box` VALUES ('ca14e55daac94573a910a324e12e3d11', '0', '1', 'da60c61cf2aa4cb2810c629c7045c538', '2015-11-17 20:19:20', 'a85a03a77b08414ebdec3e950ed23494');
INSERT INTO `iim_mail_box` VALUES ('ca48b8cd2b98409d9812756b2bdc8da5', '0', '1', 'bb81a0c098a444e69028380e80852d91', '2016-01-16 02:08:12', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('cb5966c4aa414a309db5a33485ad8bc1', '0', '1', '6d69972a880f4228b88f28254c3e417e', '2015-11-17 13:17:19', '06daeb120a504054adefb24b875f5489');
INSERT INTO `iim_mail_box` VALUES ('cb5ea5b8c3a4449faa4863e2f9d057e4', '0', '1', '12', '2015-11-24 17:07:23', 'caeff3e2169242d197404750bbe80256');
INSERT INTO `iim_mail_box` VALUES ('cb6cb417a41a4d4280d7d32103b61552', '0', '1', 'f12330474f634e2897878e8f56a910ae', '2016-01-15 21:35:20', '758a391585f145dbae465de92b215d41');
INSERT INTO `iim_mail_box` VALUES ('cb8de912fcee44049f22fa06d6287fc3', '0', '1', '4639f877ec7149258cadcf145b4182a7', '2016-01-16 02:09:41', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('cbf7947378f04e7fbd914f5fdf36a358', '0', '1', 'bb81a0c098a444e69028380e80852d91', '2016-01-13 23:33:35', '729bc8258c2547c3bb29aaea49d62535');
INSERT INTO `iim_mail_box` VALUES ('cbf925a474f24adcb6e0f27250e19302', '0', '1', '2', '2015-11-17 13:28:15', '777a564bcc224fe4b8e34c68b3ea09d5');
INSERT INTO `iim_mail_box` VALUES ('cc8dc27d5c7048b9970149b63cd50611', '0', '1', '5', '2015-11-24 18:42:35', '86c71b16e3ed49cfa2ecaae1bfb599f3');
INSERT INTO `iim_mail_box` VALUES ('cc950859734f41c6a3e241d3ea6bca91', '0', '1', '95b3b09fa0b34ac6b95907237c744c55', '2016-01-15 21:37:48', '0bc565e952bb4231858030835c6f1237');
INSERT INTO `iim_mail_box` VALUES ('cc9c5cce06ec4a35867c70eb9330dcdb', '0', '1', '3f7ef2d4761f445e946413ab9bea23db', '2016-01-16 02:17:45', 'd45436b28062401db5f480a278ba22bd');
INSERT INTO `iim_mail_box` VALUES ('ccbc0aaea00549bd90f10f05666f620c', '0', '1', '4', '2016-01-16 02:09:02', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('cccc51d55cfd4690b09ac197abd5b5bc', '0', '1', '4', '2015-11-24 17:07:23', 'caeff3e2169242d197404750bbe80256');
INSERT INTO `iim_mail_box` VALUES ('ccfcd2310e0d4f3696cf9d7bd43f146d', '0', '1', '2', '2015-11-24 18:42:35', '86c71b16e3ed49cfa2ecaae1bfb599f3');
INSERT INTO `iim_mail_box` VALUES ('cd406702c2794296bd8264fad429b92a', '0', '1', '6d69972a880f4228b88f28254c3e417e', '2015-11-15 21:38:17', '3340f4a663f84ba48c9ebb80ce3acf5a');
INSERT INTO `iim_mail_box` VALUES ('cd407cb5321d421987c8aff926d1cb17', '0', '1', '9', '2016-01-16 02:17:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('cd8d96055e354c27a96042c8e0149f5a', '0', '1', '7', '2016-01-16 02:08:30', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('ce0ad1dd73974cf880d3df3a2a1112bc', '0', '1', '2', '2015-11-17 20:20:09', 'aaf2a947791349f8add8f773c821e116');
INSERT INTO `iim_mail_box` VALUES ('ce3a1b9cd0d448628d47af65994b2416', '0', '1', '4', '2016-01-15 21:48:57', 'bfea4902ace447c8aee9b4198c19a345');
INSERT INTO `iim_mail_box` VALUES ('cf16a56fd53c4312a4db3438153ea437', '0', '1', 'eca1a51b803449d59ce4e2a3b0f4f787', '2016-01-15 23:52:08', 'cd8af2da8df24f5797e4c6f0f2bcdf7e');
INSERT INTO `iim_mail_box` VALUES ('cf6eccac6c684985a9a228d09a5d6177', '0', '1', 'd42378c9621b4551a0c4c63c82f0aa33', '2016-01-15 21:25:57', '00cbc8e9ad5a47309d5df667c60f5662');
INSERT INTO `iim_mail_box` VALUES ('cf7c25fe7afe4d0ca404e149fcf3ec87', '0', '1', '42f5435f943a4e8cbcd86ec07b1d922a', '2016-01-15 21:46:01', 'a019f39fc2714e08801cae6e638a0f1b');
INSERT INTO `iim_mail_box` VALUES ('cfaabb1e2c3949ada9a9daae37edf433', '0', '1', '6474fda3f35c4d1580b646a42f190cf7', '2016-01-15 21:28:08', '549bab13681a43c98092bc9e5a5224fc');
INSERT INTO `iim_mail_box` VALUES ('cfbf0f419466406c940bde93a6c926f9', '0', '1', 'd355e9e6b4ad48a59fa0a983e8b7b583', '2016-01-15 22:49:57', '6a6f4063c8664fe380928f3d0f0d518f');
INSERT INTO `iim_mail_box` VALUES ('cfed4d5a9acb4f6abc303cd0292f7b61', '0', '1', 'cb359e3089224f97adae46cf03c0ed94', '2016-01-15 22:49:57', '6a6f4063c8664fe380928f3d0f0d518f');
INSERT INTO `iim_mail_box` VALUES ('d033ce53537a42678e75d7547b8e3a94', '0', '1', '42f5435f943a4e8cbcd86ec07b1d922a', '2016-01-15 21:35:20', '758a391585f145dbae465de92b215d41');
INSERT INTO `iim_mail_box` VALUES ('d0346ffecc334706a385a40cae992926', '0', '1', '19e655ebcd844747aa0e46efe9870169', '2016-01-16 02:08:12', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('d0b864165aae40c791d6d4d73dcbaa33', '0', '1', '8', '2016-01-15 23:52:08', 'cd8af2da8df24f5797e4c6f0f2bcdf7e');
INSERT INTO `iim_mail_box` VALUES ('d167f658ee3c438cb77b2df2fda22302', '0', '1', '4', '2015-11-24 17:35:42', '35c90c17d6ec4c70a382f63090aa38bc');
INSERT INTO `iim_mail_box` VALUES ('d16d5aafc1224af7a71c079f4f076383', '0', '1', 'd42378c9621b4551a0c4c63c82f0aa33', '2016-01-15 21:29:53', '5ce7267bd5d04dcb8e6db8764e6359fa');
INSERT INTO `iim_mail_box` VALUES ('d1a235db5cd742438e4914891ba80096', '0', '1', '7', '2015-11-24 18:40:53', '2a728059ef8c427caec25be0fb4ee96b');
INSERT INTO `iim_mail_box` VALUES ('d1d6d239a8624614a103fad6a600f045', '0', '1', 'cb359e3089224f97adae46cf03c0ed94', '2016-01-16 02:17:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('d1df14836e2b47aaa04382052dbb9a03', '0', '1', 'eca1a51b803449d59ce4e2a3b0f4f787', '2016-01-15 21:48:57', 'bfea4902ace447c8aee9b4198c19a345');
INSERT INTO `iim_mail_box` VALUES ('d29ad8a6f4c343ffa3251101f1af51b6', '0', '1', 'f12330474f634e2897878e8f56a910ae', '2016-01-16 02:17:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('d3494e3b0d854bbc8d4e813505c2a118', '0', '1', '5ad0d1f9efdc44b481b02c26b67e832e', '2016-01-15 21:37:48', '0bc565e952bb4231858030835c6f1237');
INSERT INTO `iim_mail_box` VALUES ('d385f3fade084f7caa3e458694da4bab', '0', '1', 'f12330474f634e2897878e8f56a910ae', '2016-01-15 21:29:53', '5ce7267bd5d04dcb8e6db8764e6359fa');
INSERT INTO `iim_mail_box` VALUES ('d3d0c7ce7e914204a48a935995258a62', '0', '1', '11', '2015-11-17 13:17:19', '06daeb120a504054adefb24b875f5489');
INSERT INTO `iim_mail_box` VALUES ('d3e26ff1626a4c65b0bc536b5b0a426f', '0', '1', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-15 21:25:57', '00cbc8e9ad5a47309d5df667c60f5662');
INSERT INTO `iim_mail_box` VALUES ('d445669866214f6eb244b9b43765d04d', '0', '1', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-15 21:26:08', '4ac7390232dc458baa01422d28b71133');
INSERT INTO `iim_mail_box` VALUES ('d4f56671524441d1a67cb34500614c11', '0', '1', '3', '2015-11-17 13:17:19', '06daeb120a504054adefb24b875f5489');
INSERT INTO `iim_mail_box` VALUES ('d503f0f962804405890a4353ea853ab6', '0', '1', 'd8de25a1f872404e82f669c04091685e', '2016-01-15 21:48:57', 'bfea4902ace447c8aee9b4198c19a345');
INSERT INTO `iim_mail_box` VALUES ('d5e2d64c0a714beb81541ef340a99c3f', '0', '1', 'f12330474f634e2897878e8f56a910ae', '2016-01-16 02:19:30', '89852543c3964815a1b42bae1504c593');
INSERT INTO `iim_mail_box` VALUES ('d5eafa8d71bb4907a972898f128b9ac9', '0', '1', '6d69972a880f4228b88f28254c3e417e', '2015-11-17 13:28:15', '777a564bcc224fe4b8e34c68b3ea09d5');
INSERT INTO `iim_mail_box` VALUES ('d619d457cb754ce1a3c1b16570ae75b4', '0', '1', '2', '2015-11-24 15:36:39', '8a5acec624db46ceac178b1be69a09bc');
INSERT INTO `iim_mail_box` VALUES ('d6cda0c2654b4c498694c2bb2c4778e3', '0', '1', '9', '2016-01-13 23:33:27', '2046db4813804969bae3c6c54c388318');
INSERT INTO `iim_mail_box` VALUES ('d760ab2d827946698d36c1252d5afbac', '0', '1', 'd42378c9621b4551a0c4c63c82f0aa33', '2016-01-15 21:46:01', 'a019f39fc2714e08801cae6e638a0f1b');
INSERT INTO `iim_mail_box` VALUES ('d78dc40635e0422f998a606c41f302dc', '0', '1', '4639f877ec7149258cadcf145b4182a7', '2016-01-15 22:49:57', '6a6f4063c8664fe380928f3d0f0d518f');
INSERT INTO `iim_mail_box` VALUES ('d813c1a520f64f888e4097bfb03b70a6', '0', '1', '9', '2016-01-15 22:49:57', '6a6f4063c8664fe380928f3d0f0d518f');
INSERT INTO `iim_mail_box` VALUES ('d8386551419f4f51b3a8f23ee1e1e5e2', '0', '1', '10', '2015-11-24 17:36:02', 'beb0827b7c514139b70d71bcfa66733b');
INSERT INTO `iim_mail_box` VALUES ('d83ff231c9fd4047a5826f738fc803a9', '0', '1', 'f12330474f634e2897878e8f56a910ae', '2016-01-15 22:49:57', '6a6f4063c8664fe380928f3d0f0d518f');
INSERT INTO `iim_mail_box` VALUES ('d87b44340c0c40539c227d35b36a77c5', '0', '1', '11', '2015-11-24 18:42:35', '86c71b16e3ed49cfa2ecaae1bfb599f3');
INSERT INTO `iim_mail_box` VALUES ('d9447b97f9f540a9b11338788726c129', '0', '1', 'd355e9e6b4ad48a59fa0a983e8b7b583', '2016-01-15 21:37:48', '0bc565e952bb4231858030835c6f1237');
INSERT INTO `iim_mail_box` VALUES ('da33ee0126684a8aa93363ffdc908c2c', '0', '1', 'd8de25a1f872404e82f669c04091685e', '2016-01-16 02:09:02', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('da3d2a4d9b0549478721258185117e64', '0', '1', 'd42378c9621b4551a0c4c63c82f0aa33', '2016-01-15 21:47:05', '3cf66a55aaff4965892b0ed8365a2d6d');
INSERT INTO `iim_mail_box` VALUES ('da9510c1b1f54294ad1c87802394193c', '0', '1', '6d69972a880f4228b88f28254c3e417e', '2015-11-24 17:35:41', 'c187db5a2fd84325abeefc0465c46eea');
INSERT INTO `iim_mail_box` VALUES ('daa7022e5dfc4061977608ba1a67fce7', '0', '1', 'dc9663e71aaa42f0a2634770896ec74c', '2016-01-15 21:26:08', '4ac7390232dc458baa01422d28b71133');
INSERT INTO `iim_mail_box` VALUES ('dc1d33cdd79742dcb1e1eb344dd049da', '0', '1', 'cb359e3089224f97adae46cf03c0ed94', '2016-01-15 21:48:57', 'bfea4902ace447c8aee9b4198c19a345');
INSERT INTO `iim_mail_box` VALUES ('dcabf2c02ab8425c83ce360a192fe46c', '0', '1', '6', '2015-11-17 20:19:20', 'a85a03a77b08414ebdec3e950ed23494');
INSERT INTO `iim_mail_box` VALUES ('dcac890e38ee402d97e610de88dff95d', '0', '1', '4639f877ec7149258cadcf145b4182a7', '2016-01-16 02:17:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('dd2adb4800a34266a15eff249651bbe9', '0', '1', '6', '2015-11-24 17:07:23', 'caeff3e2169242d197404750bbe80256');
INSERT INTO `iim_mail_box` VALUES ('ddd88447a1484349b0af06111d8fc497', '0', '1', '2', '2015-11-17 20:18:50', '2f4ba44722194a3aa1423a1c58b69021');
INSERT INTO `iim_mail_box` VALUES ('dde0daf3af5c4ee895685b4fa77e4512', '0', '1', '9', '2015-11-24 17:26:23', '525d380ce0e549d6bc36ceb41ad748e9');
INSERT INTO `iim_mail_box` VALUES ('de9cc68b999c42f890cd104651bc0ebc', '0', '1', '11', '2015-11-15 21:38:17', '3340f4a663f84ba48c9ebb80ce3acf5a');
INSERT INTO `iim_mail_box` VALUES ('debee2c1854f44b791c0dba7fb397d89', '0', '1', 'd42378c9621b4551a0c4c63c82f0aa33', '2016-01-13 23:33:27', '2046db4813804969bae3c6c54c388318');
INSERT INTO `iim_mail_box` VALUES ('df03833f7a624633859af3478b8c278d', '0', '1', '95b3b09fa0b34ac6b95907237c744c55', '2016-01-16 02:05:43', 'e97f8af28ab748e1a0ddc1d3447fe62a');
INSERT INTO `iim_mail_box` VALUES ('df546db8c6b040b89c4848f4888a3a59', '0', '1', 'da60c61cf2aa4cb2810c629c7045c538', '2015-11-24 18:42:35', '86c71b16e3ed49cfa2ecaae1bfb599f3');
INSERT INTO `iim_mail_box` VALUES ('df6e6ea0078f4571ad03e90724c64ddf', '0', '1', '5ad0d1f9efdc44b481b02c26b67e832e', '2016-01-15 21:26:08', '4ac7390232dc458baa01422d28b71133');
INSERT INTO `iim_mail_box` VALUES ('e030d905691f4b2fb0ecb783b8cbc3f9', '0', '1', '11', '2015-11-24 17:07:23', 'caeff3e2169242d197404750bbe80256');
INSERT INTO `iim_mail_box` VALUES ('e136ad11c5a44060b10e1e4ea9fdfe38', '0', '1', '5091ca619fbf49209bce020859103ba5', '2016-01-15 21:35:20', '758a391585f145dbae465de92b215d41');
INSERT INTO `iim_mail_box` VALUES ('e200afb93cb0417db2216ac8971ec8e6', '0', '1', 'f12330474f634e2897878e8f56a910ae', '2016-01-15 21:46:01', 'a019f39fc2714e08801cae6e638a0f1b');
INSERT INTO `iim_mail_box` VALUES ('e33048dbee384adab1600dca0ad261a7', '0', '1', '5091ca619fbf49209bce020859103ba5', '2016-01-13 23:33:35', '729bc8258c2547c3bb29aaea49d62535');
INSERT INTO `iim_mail_box` VALUES ('e3bf0dda4db44961add49bdbb00e370e', '0', '1', '9', '2015-11-24 17:35:41', 'c187db5a2fd84325abeefc0465c46eea');
INSERT INTO `iim_mail_box` VALUES ('e3d19abbf5f444aab808b32d6d1e482a', '0', '1', '9', '2015-11-24 17:07:23', 'caeff3e2169242d197404750bbe80256');
INSERT INTO `iim_mail_box` VALUES ('e47ba74da93e4f3d81a28b5ce47d023b', '0', '1', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-16 02:08:12', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('e48aa5c23567423983db9c9d1592010c', '0', '1', '6', '2015-11-25 10:35:53', '3db29dac7af542e8a36552ba410aad52');
INSERT INTO `iim_mail_box` VALUES ('e4b6b7e596064ea6a37962d7a2d05134', '0', '1', 'd42378c9621b4551a0c4c63c82f0aa33', '2016-01-15 21:48:57', 'bfea4902ace447c8aee9b4198c19a345');
INSERT INTO `iim_mail_box` VALUES ('e4b9c619138a4e829847a15f705c9e8c', '0', '1', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-15 21:29:53', '5ce7267bd5d04dcb8e6db8764e6359fa');
INSERT INTO `iim_mail_box` VALUES ('e4e405c4065148da93377f88accfb86e', '0', '1', '42f5435f943a4e8cbcd86ec07b1d922a', '2016-01-13 23:33:27', '2046db4813804969bae3c6c54c388318');
INSERT INTO `iim_mail_box` VALUES ('e5196af614204a0cab211f2fd28cd9d5', '0', '1', '6474fda3f35c4d1580b646a42f190cf7', '2016-01-13 23:33:27', '2046db4813804969bae3c6c54c388318');
INSERT INTO `iim_mail_box` VALUES ('e5519f6a0b7c4d5897721ba922e14ec8', '0', '1', 'da60c61cf2aa4cb2810c629c7045c538', '2015-11-24 17:26:23', '525d380ce0e549d6bc36ceb41ad748e9');
INSERT INTO `iim_mail_box` VALUES ('e5a4611579aa4240b1f631aa2b9dc953', '0', '1', 'f12330474f634e2897878e8f56a910ae', '2016-01-15 23:52:08', 'cd8af2da8df24f5797e4c6f0f2bcdf7e');
INSERT INTO `iim_mail_box` VALUES ('e5ac574b695949c9ac2fa4442a1513bc', '0', '1', 'd8de25a1f872404e82f669c04091685e', '2016-01-15 21:37:48', '0bc565e952bb4231858030835c6f1237');
INSERT INTO `iim_mail_box` VALUES ('e68cd9846ded4983ab98af4d9c0eafbf', '0', '1', '95b3b09fa0b34ac6b95907237c744c55', '2016-01-16 02:16:23', '196618fcd27b4edfbef0ffb5c2b519d2');
INSERT INTO `iim_mail_box` VALUES ('e6ad42306c9446f2a5ae63e0d6399846', '0', '1', '9', '2015-11-17 13:28:15', '777a564bcc224fe4b8e34c68b3ea09d5');
INSERT INTO `iim_mail_box` VALUES ('e6bb9810b07e4a5da0df83adaad784be', '0', '1', '8', '2016-01-15 21:37:48', '0bc565e952bb4231858030835c6f1237');
INSERT INTO `iim_mail_box` VALUES ('e71b3b3d457a4fe9b4991d25de9dd675', '0', '1', '6474fda3f35c4d1580b646a42f190cf7', '2016-01-16 02:08:30', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('e73e7f4b52b94b9bbe97d8e3bbe01dde', '0', '1', '19e655ebcd844747aa0e46efe9870169', '2016-01-16 02:09:02', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('e7d5f1615e97403899acf9d54681ee1f', '0', '1', '9', '2016-01-16 02:08:30', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('e8923a6a3e16485fbdb34d68a2c3d47f', '0', '1', '8', '2015-11-24 17:26:23', '525d380ce0e549d6bc36ceb41ad748e9');
INSERT INTO `iim_mail_box` VALUES ('e8c04f02be944fb185bdc8cccc90afb4', '0', '1', '4', '2015-11-17 20:20:09', 'aaf2a947791349f8add8f773c821e116');
INSERT INTO `iim_mail_box` VALUES ('e8d00b24370c466f88bf6df629d9a7cc', '0', '1', '19e655ebcd844747aa0e46efe9870169', '2016-01-15 21:48:28', '20371c25527a4c7a963441ef527eca8b');
INSERT INTO `iim_mail_box` VALUES ('e8d105223a244b1a9befaa0271600860', '0', '1', '12', '2015-11-15 21:38:17', '3340f4a663f84ba48c9ebb80ce3acf5a');
INSERT INTO `iim_mail_box` VALUES ('e8e4bb283e6246318a3a27933c84b825', '0', '1', '9', '2016-01-16 02:16:23', '196618fcd27b4edfbef0ffb5c2b519d2');
INSERT INTO `iim_mail_box` VALUES ('e92db84117c948a9b2448ff0d7d13867', '0', '1', 'cb359e3089224f97adae46cf03c0ed94', '2016-01-15 23:52:08', 'cd8af2da8df24f5797e4c6f0f2bcdf7e');
INSERT INTO `iim_mail_box` VALUES ('e981d1c362554c1eabbbf82094f5ec97', '0', '1', '3f7ef2d4761f445e946413ab9bea23db', '2016-01-13 23:33:35', '729bc8258c2547c3bb29aaea49d62535');
INSERT INTO `iim_mail_box` VALUES ('e9ecc0f4a0174f0cb329371fad2b9de5', '0', '1', '12', '2015-11-24 18:42:35', '86c71b16e3ed49cfa2ecaae1bfb599f3');
INSERT INTO `iim_mail_box` VALUES ('ea30cd3eb45c4c87a34f365e816d1d89', '0', '1', '5', '2015-11-24 17:26:23', '525d380ce0e549d6bc36ceb41ad748e9');
INSERT INTO `iim_mail_box` VALUES ('ea4c7526d7b6491881f8f4ffe2f9ff0b', '0', '1', 'dc9663e71aaa42f0a2634770896ec74c', '2016-01-16 02:18:00', '2c8d07503898492cb6969b7c7f0a64e6');
INSERT INTO `iim_mail_box` VALUES ('ea5d4eb326b942a59d30a4464b3364e8', '0', '1', '42f5435f943a4e8cbcd86ec07b1d922a', '2016-01-15 21:28:08', '549bab13681a43c98092bc9e5a5224fc');
INSERT INTO `iim_mail_box` VALUES ('ea62f8595d53460b9c3053a563b3d7bf', '0', '1', 'f12330474f634e2897878e8f56a910ae', '2016-01-16 02:09:02', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('eab4d8cc73444a92846eb98565879bba', '0', '1', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-15 21:37:48', '0bc565e952bb4231858030835c6f1237');
INSERT INTO `iim_mail_box` VALUES ('eb785608c32e4bc0aadaa55096dcb986', '0', '1', '4', '2016-01-16 02:11:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('ebde30b8f3ab4977b7d23e16e8995b37', '0', '1', '7', '2015-11-24 17:07:23', 'caeff3e2169242d197404750bbe80256');
INSERT INTO `iim_mail_box` VALUES ('ec041308ab72446dada4f0232df8593c', '0', '1', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-16 02:19:30', '89852543c3964815a1b42bae1504c593');
INSERT INTO `iim_mail_box` VALUES ('ec6c6d88becf4a239868da3a1cf6767a', '0', '1', '42f5435f943a4e8cbcd86ec07b1d922a', '2016-01-16 02:09:02', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('ec7a14e66e504a83871eb1cd0b3178ce', '0', '1', '4', '2016-01-15 21:26:08', '4ac7390232dc458baa01422d28b71133');
INSERT INTO `iim_mail_box` VALUES ('ec83c18db4d9406b97025e0d96c02c47', '0', '1', '10', '2015-11-17 13:28:15', '777a564bcc224fe4b8e34c68b3ea09d5');
INSERT INTO `iim_mail_box` VALUES ('ecd58cca0553455d8bad3d506dacbcca', '0', '1', '42f5435f943a4e8cbcd86ec07b1d922a', '2016-01-16 02:19:30', '89852543c3964815a1b42bae1504c593');
INSERT INTO `iim_mail_box` VALUES ('ed06c9df1e2744d6be790c4b21ac8eff', '0', '1', 'f12330474f634e2897878e8f56a910ae', '2016-01-16 02:05:43', 'e97f8af28ab748e1a0ddc1d3447fe62a');
INSERT INTO `iim_mail_box` VALUES ('ed86eb231d704f72a416354f2280fe88', '0', '1', 'd8de25a1f872404e82f669c04091685e', '2016-01-16 02:17:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('edb4558d508040f8b3e2d5d78b47d3b4', '0', '1', 'cb359e3089224f97adae46cf03c0ed94', '2016-01-13 23:33:27', '2046db4813804969bae3c6c54c388318');
INSERT INTO `iim_mail_box` VALUES ('edcd883f0e2343d88d56b5aee6915969', '0', '1', 'cb359e3089224f97adae46cf03c0ed94', '2016-01-15 21:46:01', 'a019f39fc2714e08801cae6e638a0f1b');
INSERT INTO `iim_mail_box` VALUES ('ee47ebdf07664e09ac4de77b7cd0f5ca', '0', '1', 'f12330474f634e2897878e8f56a910ae', '2016-01-16 02:09:41', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('ee4f2852f5c247bb9de453aaedfe03a5', '0', '1', '4', '2015-11-24 15:36:39', '8a5acec624db46ceac178b1be69a09bc');
INSERT INTO `iim_mail_box` VALUES ('ef0336e60bc143daa53eea5934cad3ef', '0', '1', 'd8de25a1f872404e82f669c04091685e', '2016-01-13 23:33:35', '729bc8258c2547c3bb29aaea49d62535');
INSERT INTO `iim_mail_box` VALUES ('ef0b2760ce414f3caadc2d44c3400892', '0', '1', '4', '2016-01-15 21:29:53', '5ce7267bd5d04dcb8e6db8764e6359fa');
INSERT INTO `iim_mail_box` VALUES ('ef85247b31c54e0e92c1026376a49d98', '0', '1', '8', '2015-11-24 17:07:23', 'caeff3e2169242d197404750bbe80256');
INSERT INTO `iim_mail_box` VALUES ('f017b490a41343778a73eb65f63a6607', '0', '1', '4', '2015-11-17 13:17:19', '06daeb120a504054adefb24b875f5489');
INSERT INTO `iim_mail_box` VALUES ('f076cf8897724d0c84207704e5c9eae0', '0', '1', 'da60c61cf2aa4cb2810c629c7045c538', '2015-11-15 21:38:17', '3340f4a663f84ba48c9ebb80ce3acf5a');
INSERT INTO `iim_mail_box` VALUES ('f102b8edff0b4a5fb25111743365708b', '0', '1', 'eca1a51b803449d59ce4e2a3b0f4f787', '2016-01-15 21:47:05', '3cf66a55aaff4965892b0ed8365a2d6d');
INSERT INTO `iim_mail_box` VALUES ('f14a968a8035461995c5c72249c57063', '0', '1', 'f12330474f634e2897878e8f56a910ae', '2016-01-15 21:48:28', '20371c25527a4c7a963441ef527eca8b');
INSERT INTO `iim_mail_box` VALUES ('f17b972ef7d849e08b1ffba113f638e5', '0', '1', 'd8de25a1f872404e82f669c04091685e', '2016-01-15 21:35:20', '758a391585f145dbae465de92b215d41');
INSERT INTO `iim_mail_box` VALUES ('f18a83fc2d6d46cbb46754d28dba29f9', '0', '1', '7', '2016-01-16 02:17:33', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('f1bd99305e794431a492ab9585c54a3e', '0', '1', '19e655ebcd844747aa0e46efe9870169', '2016-01-15 23:52:08', 'cd8af2da8df24f5797e4c6f0f2bcdf7e');
INSERT INTO `iim_mail_box` VALUES ('f1dbc6a349cb461082f86a7a9082e5a9', '0', '1', 'dc9663e71aaa42f0a2634770896ec74c', '2016-01-16 02:08:12', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('f203087100f14127a7a90300e52a688e', '0', '1', '10', '2015-11-24 17:07:23', 'caeff3e2169242d197404750bbe80256');
INSERT INTO `iim_mail_box` VALUES ('f2585e586e7a42f0a4a352261519a4b0', '0', '1', '7', '2015-11-25 10:35:53', '3db29dac7af542e8a36552ba410aad52');
INSERT INTO `iim_mail_box` VALUES ('f27580bf876b45a485f64d2f802ec09d', '0', '1', 'd42378c9621b4551a0c4c63c82f0aa33', '2016-01-16 02:09:02', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('f31aa108676c46ad8215e914fc91599e', '0', '1', 'f12330474f634e2897878e8f56a910ae', '2016-01-15 21:26:08', '4ac7390232dc458baa01422d28b71133');
INSERT INTO `iim_mail_box` VALUES ('f40e044e1a554e3db1970b2e49b1096e', '0', '1', '8', '2015-11-25 10:35:53', '3db29dac7af542e8a36552ba410aad52');
INSERT INTO `iim_mail_box` VALUES ('f52e907d8edf4c9783c72959fa94ccbf', '0', '1', '8', '2015-11-24 18:40:53', '2a728059ef8c427caec25be0fb4ee96b');
INSERT INTO `iim_mail_box` VALUES ('f579a001c1ec4d849586bc9bacc1cd43', '0', '1', '3f7ef2d4761f445e946413ab9bea23db', '2016-01-15 21:48:28', '20371c25527a4c7a963441ef527eca8b');
INSERT INTO `iim_mail_box` VALUES ('f59710d10e8c4711af4dce1c268992c2', '0', '1', '95b3b09fa0b34ac6b95907237c744c55', '2016-01-16 02:19:30', '89852543c3964815a1b42bae1504c593');
INSERT INTO `iim_mail_box` VALUES ('f5c74e3d5d52455693f26789ea18a4ba', '0', '1', 'd8de25a1f872404e82f669c04091685e', '2016-01-16 02:16:23', '196618fcd27b4edfbef0ffb5c2b519d2');
INSERT INTO `iim_mail_box` VALUES ('f670a12f21c1469282c4ec637a084bde', '0', '1', '95b3b09fa0b34ac6b95907237c744c55', '2016-01-16 02:08:12', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('f6835a37c90341398a6e7a25c58cebd2', '0', '1', '6', '2015-11-17 20:07:51', '36b526b001d049d0b5b2f1bf1112f67e');
INSERT INTO `iim_mail_box` VALUES ('f6b88752380f4230bb9eaaa685470a26', '0', '1', '10', '2015-11-24 18:42:35', '86c71b16e3ed49cfa2ecaae1bfb599f3');
INSERT INTO `iim_mail_box` VALUES ('f6c9476749ea4690b73f2c0f7ed3ea74', '0', '1', 'cb359e3089224f97adae46cf03c0ed94', '2016-01-15 21:26:08', '4ac7390232dc458baa01422d28b71133');
INSERT INTO `iim_mail_box` VALUES ('f70407f4053e4239b529dcca1439aaab', '0', '1', '4', '2015-11-25 10:35:53', '3db29dac7af542e8a36552ba410aad52');
INSERT INTO `iim_mail_box` VALUES ('f7afbebc8ec84b72a3d299fd310cc71e', '0', '1', '6', '2015-11-17 20:08:12', '621d83545f1f4d9383c8d469c5ddbebe');
INSERT INTO `iim_mail_box` VALUES ('f7be35ba105e4429aeba425cadcab629', '0', '1', '7', '2016-01-16 02:19:30', '89852543c3964815a1b42bae1504c593');
INSERT INTO `iim_mail_box` VALUES ('f7d3e344bf564f4fb68f286c4df2bbde', '0', '1', '19e655ebcd844747aa0e46efe9870169', '2016-01-15 21:29:53', '5ce7267bd5d04dcb8e6db8764e6359fa');
INSERT INTO `iim_mail_box` VALUES ('f7dea02bdb7d414199a263b8ffd01e80', '0', '1', '7', '2016-01-15 21:47:05', '3cf66a55aaff4965892b0ed8365a2d6d');
INSERT INTO `iim_mail_box` VALUES ('f88aab2ab96c447b8380b9fae1487f7a', '0', '1', '8', '2016-01-16 02:17:45', 'd45436b28062401db5f480a278ba22bd');
INSERT INTO `iim_mail_box` VALUES ('f9190e6e794646b6a7ee63df329217fc', '0', '1', 'cb359e3089224f97adae46cf03c0ed94', '2016-01-15 21:29:53', '5ce7267bd5d04dcb8e6db8764e6359fa');
INSERT INTO `iim_mail_box` VALUES ('f9fe9f90cab34c8e8cc08e32a5e99ac3', '0', '1', '12', '2015-11-17 13:17:19', '06daeb120a504054adefb24b875f5489');
INSERT INTO `iim_mail_box` VALUES ('fa20a18cdd024fffb82538ce1bd58b03', '0', '1', '3', '2015-11-24 17:35:42', '35c90c17d6ec4c70a382f63090aa38bc');
INSERT INTO `iim_mail_box` VALUES ('fac511fc761b4f19bec7982726ec93ce', '0', '1', '11', '2015-11-24 17:26:23', '525d380ce0e549d6bc36ceb41ad748e9');
INSERT INTO `iim_mail_box` VALUES ('fbb5d5f1cc7747559145168cee751ef2', '0', '1', '7', '2016-01-16 02:05:43', 'e97f8af28ab748e1a0ddc1d3447fe62a');
INSERT INTO `iim_mail_box` VALUES ('fc239191b4d2488c836b84b52f9ce9c6', '0', '1', 'd355e9e6b4ad48a59fa0a983e8b7b583', '2016-01-16 02:18:00', '2c8d07503898492cb6969b7c7f0a64e6');
INSERT INTO `iim_mail_box` VALUES ('fc583480e9694a7f8b8d716a5fcdbaee', '0', '1', '95b3b09fa0b34ac6b95907237c744c55', '2016-01-15 23:52:08', 'cd8af2da8df24f5797e4c6f0f2bcdf7e');
INSERT INTO `iim_mail_box` VALUES ('fc95cc1f5ee443018bb72c38f9061e34', '0', '1', '3f7ef2d4761f445e946413ab9bea23db', '2016-01-15 22:49:57', '6a6f4063c8664fe380928f3d0f0d518f');
INSERT INTO `iim_mail_box` VALUES ('fca6a80de3d34b3f95f4d76c96724bb3', '0', '1', '3f7ef2d4761f445e946413ab9bea23db', '2016-01-15 21:37:48', '0bc565e952bb4231858030835c6f1237');
INSERT INTO `iim_mail_box` VALUES ('fca90e184a3e4898b29e2ecf931ea740', '0', '1', '12', '2015-11-17 20:08:12', '621d83545f1f4d9383c8d469c5ddbebe');
INSERT INTO `iim_mail_box` VALUES ('fcd86666fbd4434fb47983d0bb0d66f7', '0', '1', 'd42378c9621b4551a0c4c63c82f0aa33', '2016-01-13 23:33:35', '729bc8258c2547c3bb29aaea49d62535');
INSERT INTO `iim_mail_box` VALUES ('fd00260215a643799b188fcc2596bbbe', '0', '1', '4', '2016-01-15 21:46:01', 'a019f39fc2714e08801cae6e638a0f1b');
INSERT INTO `iim_mail_box` VALUES ('fd5765f1daf94e8a936f30f2d68b5cb9', '0', '1', '7', '2016-01-15 21:35:20', '758a391585f145dbae465de92b215d41');
INSERT INTO `iim_mail_box` VALUES ('fd5f36c846454a6598f3c51f3a1df564', '0', '1', '6474fda3f35c4d1580b646a42f190cf7', '2016-01-15 21:47:05', '3cf66a55aaff4965892b0ed8365a2d6d');
INSERT INTO `iim_mail_box` VALUES ('fd8f4e01b6c74316817f0642c97281ee', '0', '1', '10', '2015-11-17 20:08:12', '621d83545f1f4d9383c8d469c5ddbebe');
INSERT INTO `iim_mail_box` VALUES ('fdcb8606b8a14aba9a5c485c5555520c', '0', '1', '3f7ef2d4761f445e946413ab9bea23db', '2016-01-16 02:16:23', '196618fcd27b4edfbef0ffb5c2b519d2');
INSERT INTO `iim_mail_box` VALUES ('fdd6c0eedbc84da0b9408c6691d0d7c1', '0', '1', '7', '2016-01-13 23:33:35', '729bc8258c2547c3bb29aaea49d62535');
INSERT INTO `iim_mail_box` VALUES ('fe05e0654bf24c0f978e436caaa92a5d', '0', '1', '42f5435f943a4e8cbcd86ec07b1d922a', '2016-01-16 02:08:30', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_box` VALUES ('fe4806b2e16b4807b57684076d938669', '0', '1', 'eca1a51b803449d59ce4e2a3b0f4f787', '2016-01-16 02:15:55', '14d19beac1004bfc8de4521c0c59d78d');
INSERT INTO `iim_mail_box` VALUES ('feec24907a224478be43e6acd2ed8f48', '0', '1', '9', '2015-11-17 20:08:12', '621d83545f1f4d9383c8d469c5ddbebe');
INSERT INTO `iim_mail_box` VALUES ('ff1d4b5d81c244899694768ff5ffe87d', '0', '1', '6474fda3f35c4d1580b646a42f190cf7', '2016-01-15 21:48:57', 'bfea4902ace447c8aee9b4198c19a345');
INSERT INTO `iim_mail_box` VALUES ('ffbaa91f84b14c6dbc7edf3675d381a1', '0', '1', '6d69972a880f4228b88f28254c3e417e', '2015-11-24 17:26:23', '525d380ce0e549d6bc36ceb41ad748e9');

-- ----------------------------
-- Table structure for `iim_mail_compose`
-- ----------------------------
DROP TABLE IF EXISTS `iim_mail_compose`;
CREATE TABLE `iim_mail_compose` (
  `id` varchar(64) NOT NULL,
  `status` varchar(45) DEFAULT NULL COMMENT '状态 0 草稿 1 已发送',
  `readstatus` varchar(45) DEFAULT NULL COMMENT '状态 0 未读 1 已读',
  `senderId` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiverId` varchar(6400) DEFAULT NULL COMMENT '接收者',
  `sendtime` datetime DEFAULT NULL COMMENT '发送时间',
  `mailId` varchar(64) DEFAULT NULL COMMENT '邮件id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='发件箱 草稿箱';

-- ----------------------------
-- Records of iim_mail_compose
-- ----------------------------
INSERT INTO `iim_mail_compose` VALUES ('1a61b5c736134477a6d8fdf5e5621fde', '0', null, '1', '1', '2016-01-16 12:57:07', '7fffe4ea711c487da9cd386181394bc0');
INSERT INTO `iim_mail_compose` VALUES ('24418a1beb4d4463824dd178b598bdc0', '1', null, '1', '5', '2015-11-24 17:07:23', 'caeff3e2169242d197404750bbe80256');
INSERT INTO `iim_mail_compose` VALUES ('253f2eab31e34223a56619d9c1c11c8b', '1', null, '1', '6d69972a880f4228b88f28254c3e417e', '2015-11-24 17:36:02', 'beb0827b7c514139b70d71bcfa66733b');
INSERT INTO `iim_mail_compose` VALUES ('25ebed781a074c379e64fffa083f2709', '1', null, '1', '2', '2015-11-17 20:20:09', 'aaf2a947791349f8add8f773c821e116');
INSERT INTO `iim_mail_compose` VALUES ('273b4bd3f5fc47f88371d78f093c7917', '1', null, '1', 'da60c61cf2aa4cb2810c629c7045c538', '2015-11-17 13:17:19', '06daeb120a504054adefb24b875f5489');
INSERT INTO `iim_mail_compose` VALUES ('28913ba2f0b64c82a74726a770d114c0', '1', null, '1', '6', '2015-11-17 20:19:20', 'a85a03a77b08414ebdec3e950ed23494');
INSERT INTO `iim_mail_compose` VALUES ('2946990acf024fddb1caf92a8ed3f53d', '1', null, '1', '0e01985207154708a01e53ca07965665', '2016-01-19 13:23:53', '81416d60c0294a62b2c2acf206ad5ff0');
INSERT INTO `iim_mail_compose` VALUES ('2aa711be5809423895241d1b8fe5bb8b', '1', null, '1', '5', '2015-11-24 17:36:02', 'beb0827b7c514139b70d71bcfa66733b');
INSERT INTO `iim_mail_compose` VALUES ('2ac31481461c4e2b85f319cb3f03d250', '1', null, '1', '9', '2015-11-24 18:42:35', '86c71b16e3ed49cfa2ecaae1bfb599f3');
INSERT INTO `iim_mail_compose` VALUES ('2b744ca464c34025ad6f8937a69558e3', '1', null, '1', '3', '2015-11-24 17:35:42', '35c90c17d6ec4c70a382f63090aa38bc');
INSERT INTO `iim_mail_compose` VALUES ('2ba981d2141b41e48b06bbcf08eb5223', '1', null, '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-24 17:07:23', 'caeff3e2169242d197404750bbe80256');
INSERT INTO `iim_mail_compose` VALUES ('2bf2e5ceca0f4e958ce69bc911e68b3b', '1', null, '1', '7', '2015-11-17 20:08:12', '621d83545f1f4d9383c8d469c5ddbebe');
INSERT INTO `iim_mail_compose` VALUES ('2d8b298888454a508af87af2851a4f22', '1', null, '1', '3', '2015-11-17 20:20:09', 'aaf2a947791349f8add8f773c821e116');
INSERT INTO `iim_mail_compose` VALUES ('2f2d087d0ff4431499cd2bd658d68996', '1', null, '1', '8', '2015-11-17 20:08:12', '621d83545f1f4d9383c8d469c5ddbebe');
INSERT INTO `iim_mail_compose` VALUES ('3011b0accb644aa4a4548a4b38f6c10d', '1', null, '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-17 13:28:15', '777a564bcc224fe4b8e34c68b3ea09d5');
INSERT INTO `iim_mail_compose` VALUES ('32651f766d0046b8aa5f92e45bbe8908', '1', null, '1', '6', '2015-11-24 17:35:42', '35c90c17d6ec4c70a382f63090aa38bc');
INSERT INTO `iim_mail_compose` VALUES ('329018e641ca41a7a8cfe5e34b654aaf', '1', null, '1', '10', '2015-11-24 18:40:53', '2a728059ef8c427caec25be0fb4ee96b');
INSERT INTO `iim_mail_compose` VALUES ('3394f5963c4341279da572e5133931bf', '1', null, '1', '3', '2015-11-24 15:36:39', '8a5acec624db46ceac178b1be69a09bc');
INSERT INTO `iim_mail_compose` VALUES ('34374dcf5e0c45ed8f524c975377dc87', '1', null, '1', '6', '2015-11-17 20:08:12', '621d83545f1f4d9383c8d469c5ddbebe');
INSERT INTO `iim_mail_compose` VALUES ('34aacfceeb02465db2b9d02ad436790b', '1', null, '1', '9', '2015-11-17 13:17:19', '06daeb120a504054adefb24b875f5489');
INSERT INTO `iim_mail_compose` VALUES ('3552b106c929413bb33496b9274bb8b3', '1', null, '1', '7', '2015-11-24 18:40:53', '2a728059ef8c427caec25be0fb4ee96b');
INSERT INTO `iim_mail_compose` VALUES ('356e8ca6b9c04e53b9203828e42051fc', '1', null, '1', '1', '2015-11-24 18:40:53', '2a728059ef8c427caec25be0fb4ee96b');
INSERT INTO `iim_mail_compose` VALUES ('357a78853efa44e7a7b42d069728e7f8', '1', null, '1', '7', '2015-11-17 13:28:15', '777a564bcc224fe4b8e34c68b3ea09d5');
INSERT INTO `iim_mail_compose` VALUES ('35dacdb19aa94cafbdbdb7646d9486b7', '1', null, '1', '9', '2015-11-17 20:20:09', 'aaf2a947791349f8add8f773c821e116');
INSERT INTO `iim_mail_compose` VALUES ('37f6b8653af44322addc9367e3c67075', '1', null, '1', '2', '2015-11-17 20:18:50', '2f4ba44722194a3aa1423a1c58b69021');
INSERT INTO `iim_mail_compose` VALUES ('38c0142cfcdf441aa0cca5ced5e0c50f', '1', null, '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-24 18:40:53', '2a728059ef8c427caec25be0fb4ee96b');
INSERT INTO `iim_mail_compose` VALUES ('390e701b890f460aa323128e4468e633', '1', null, '1', '10', '2015-11-24 15:36:39', '8a5acec624db46ceac178b1be69a09bc');
INSERT INTO `iim_mail_compose` VALUES ('3947c50d9fb44921bf50ef31ede3ccae', '1', null, '1', '10', '2015-11-24 18:42:35', '86c71b16e3ed49cfa2ecaae1bfb599f3');
INSERT INTO `iim_mail_compose` VALUES ('394af48946544882818d187cf78fc346', '1', null, '1', '7', '2015-11-24 17:26:23', '525d380ce0e549d6bc36ceb41ad748e9');
INSERT INTO `iim_mail_compose` VALUES ('3a28b0504af94b9792a6be6e9a305b6a', '0', null, '1', '1', '2016-01-16 12:57:08', 'fa87ed826ccd42f3a649ab0fe1598955');
INSERT INTO `iim_mail_compose` VALUES ('3ab59d63b81f4edbb0437763e2f4c1f8', '1', null, '1', '6d69972a880f4228b88f28254c3e417e', '2015-11-24 18:40:53', '2a728059ef8c427caec25be0fb4ee96b');
INSERT INTO `iim_mail_compose` VALUES ('3ac1ffa1d49142bd80deb8dcea0d0039', '1', null, '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-24 18:42:35', '86c71b16e3ed49cfa2ecaae1bfb599f3');
INSERT INTO `iim_mail_compose` VALUES ('3ad0033a2e024022b6bf352a786ccfd6', '1', null, '1', '8', '2015-11-17 13:28:15', '777a564bcc224fe4b8e34c68b3ea09d5');
INSERT INTO `iim_mail_compose` VALUES ('3b090c2d6e104e62abfc23eec59cc550', '1', null, '1', '3', '2015-11-15 21:38:17', '3340f4a663f84ba48c9ebb80ce3acf5a');
INSERT INTO `iim_mail_compose` VALUES ('3b5b7ba24a444fbb8ac56462399abf0b', '1', null, '1', '12', '2015-11-17 20:08:12', '621d83545f1f4d9383c8d469c5ddbebe');
INSERT INTO `iim_mail_compose` VALUES ('3cc377d787434712ab40e36ed8457534', '1', null, '1', '1', '2015-11-24 15:36:39', '8a5acec624db46ceac178b1be69a09bc');
INSERT INTO `iim_mail_compose` VALUES ('3e7b4cbd3ffd41a2ac6bced68aea9bf1', '1', null, '1', '3', '2015-11-24 17:35:41', 'c187db5a2fd84325abeefc0465c46eea');
INSERT INTO `iim_mail_compose` VALUES ('3f5f89e18dc34fc2a169a35575e368cf', '1', null, '1', '11', '2015-11-24 17:26:23', '525d380ce0e549d6bc36ceb41ad748e9');
INSERT INTO `iim_mail_compose` VALUES ('3fdd86346c9644889fc2d106c2187b3f', '1', null, '1', '1', '2015-11-24 18:45:58', '7dcaaabb3a4b44c69d989be34575de2f');
INSERT INTO `iim_mail_compose` VALUES ('4130e1eb21df4eccaabea0b703085e03', '1', null, '1', 'da60c61cf2aa4cb2810c629c7045c538', '2015-11-17 20:19:20', 'a85a03a77b08414ebdec3e950ed23494');
INSERT INTO `iim_mail_compose` VALUES ('4363393adbf849ee85ab132a00d1d6fd', '1', null, '1', '3', '2015-11-17 20:18:50', '2f4ba44722194a3aa1423a1c58b69021');
INSERT INTO `iim_mail_compose` VALUES ('46061de6344f4cc6adfa6fab48d0fc8b', '1', null, '1', '10', '2015-11-15 21:38:17', '3340f4a663f84ba48c9ebb80ce3acf5a');
INSERT INTO `iim_mail_compose` VALUES ('46b0fd1159cb41f69aa10f7ce2e87f49', '1', null, '1', '2', '2015-11-15 21:38:17', '3340f4a663f84ba48c9ebb80ce3acf5a');
INSERT INTO `iim_mail_compose` VALUES ('483f1994b3a944ceab5acc47476a8206', '1', null, '1', '5', '2015-11-17 20:07:51', '36b526b001d049d0b5b2f1bf1112f67e');
INSERT INTO `iim_mail_compose` VALUES ('4982e06371884322a4613a62e7a46b24', '1', null, '1', '2', '2015-11-24 17:35:42', '35c90c17d6ec4c70a382f63090aa38bc');
INSERT INTO `iim_mail_compose` VALUES ('4b4a3b7a98974486bbee552083a6c28c', '1', null, '1', '10', '2015-11-17 20:07:51', '36b526b001d049d0b5b2f1bf1112f67e');
INSERT INTO `iim_mail_compose` VALUES ('4b7ae702eefd420f8bc8080b6085b682', '1', null, '1', '2', '2015-11-24 17:07:23', 'caeff3e2169242d197404750bbe80256');
INSERT INTO `iim_mail_compose` VALUES ('4b7e0949317b4336a1a6fb4243fba0ab', '1', null, '1', '2', '2015-11-24 17:26:23', '525d380ce0e549d6bc36ceb41ad748e9');
INSERT INTO `iim_mail_compose` VALUES ('4d478e5e4f524141a02f3bcda5fbce6c', '1', null, '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-24 17:26:23', '525d380ce0e549d6bc36ceb41ad748e9');
INSERT INTO `iim_mail_compose` VALUES ('4dd950c5a48d43bb843694783f2c9cc1', '1', null, '1', '3', '2015-11-24 17:07:23', 'caeff3e2169242d197404750bbe80256');
INSERT INTO `iim_mail_compose` VALUES ('4fe61e81ef474129a3e5b1c3cce7e3bd', '1', null, '1', '9', '2015-11-24 17:35:42', '35c90c17d6ec4c70a382f63090aa38bc');
INSERT INTO `iim_mail_compose` VALUES ('52d5408079414ca2ab64c2d26d383474', '1', null, '1', '6', '2015-11-24 18:40:53', '2a728059ef8c427caec25be0fb4ee96b');
INSERT INTO `iim_mail_compose` VALUES ('5422736be8f04801bb61f41170be7566', '1', null, '1', '7', '2015-11-17 20:20:09', 'aaf2a947791349f8add8f773c821e116');
INSERT INTO `iim_mail_compose` VALUES ('54a11546d3a34a7f83ae44a3fae0ea4d', '1', null, '1', '4', '2015-11-24 17:07:23', 'caeff3e2169242d197404750bbe80256');
INSERT INTO `iim_mail_compose` VALUES ('54f1d61b5d79420f98b4f24be78c2674', '1', null, '1', '3', '2015-11-17 20:19:20', 'a85a03a77b08414ebdec3e950ed23494');
INSERT INTO `iim_mail_compose` VALUES ('59551e28cb9c493bb75dfa5bf4fbdb2d', '1', null, '1', '2', '2015-11-17 20:07:51', '36b526b001d049d0b5b2f1bf1112f67e');
INSERT INTO `iim_mail_compose` VALUES ('5aa75ddf3f4d400280548647b731bd1d', '1', null, '1', '5', '2015-11-24 18:40:53', '2a728059ef8c427caec25be0fb4ee96b');
INSERT INTO `iim_mail_compose` VALUES ('5b464a019c954b3da4816f04dc5c5529', '1', null, '1', '11', '2015-11-15 21:38:17', '3340f4a663f84ba48c9ebb80ce3acf5a');
INSERT INTO `iim_mail_compose` VALUES ('5bfc73aff48e42a68d3b1a3f7082d96b', '1', null, '1', '6d69972a880f4228b88f28254c3e417e', '2015-11-24 15:36:39', '8a5acec624db46ceac178b1be69a09bc');
INSERT INTO `iim_mail_compose` VALUES ('5c0afba8e4b74391bb37c470fdc79a5f', '1', null, '1', 'da60c61cf2aa4cb2810c629c7045c538', '2015-11-24 17:26:23', '525d380ce0e549d6bc36ceb41ad748e9');
INSERT INTO `iim_mail_compose` VALUES ('5c24cd8732a3485aa5d3dffa01be7b2c', '1', null, '1', '8', '2015-11-17 20:07:51', '36b526b001d049d0b5b2f1bf1112f67e');
INSERT INTO `iim_mail_compose` VALUES ('5c55099778ff4f92aa961e101f5d5e5b', '1', null, '1', '1', '2015-11-17 20:18:50', '2f4ba44722194a3aa1423a1c58b69021');
INSERT INTO `iim_mail_compose` VALUES ('5c5cb2b6d081481b8e31d8e6693c50aa', '1', null, '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-17 20:20:09', 'aaf2a947791349f8add8f773c821e116');
INSERT INTO `iim_mail_compose` VALUES ('5d29de0e09b248a6b85e1e0c7afe8e77', '1', null, '1', '9', '2015-11-24 15:36:39', '8a5acec624db46ceac178b1be69a09bc');
INSERT INTO `iim_mail_compose` VALUES ('5dba0bae1e3844118bf69b2f327a6757', '1', null, '1', '11', '2015-11-24 18:42:35', '86c71b16e3ed49cfa2ecaae1bfb599f3');
INSERT INTO `iim_mail_compose` VALUES ('608e46f765fd4e55bf17f219d44b4cb9', '0', null, '1', '1', '2016-01-16 12:57:06', '30ae8bdc08fb4747922e16202eeb08b3');
INSERT INTO `iim_mail_compose` VALUES ('6094d6fa58574433986cfe35f8fc0772', '1', null, '1', '10', '2015-11-17 20:08:12', '621d83545f1f4d9383c8d469c5ddbebe');
INSERT INTO `iim_mail_compose` VALUES ('61e7afbbfa6a4551804ff92047735e68', '1', null, '1', '11', '2015-11-24 17:36:02', 'beb0827b7c514139b70d71bcfa66733b');
INSERT INTO `iim_mail_compose` VALUES ('62e4b4fc4c9b4d858b343fcddd02f05d', '1', null, '1', '12', '2015-11-24 17:35:41', 'c187db5a2fd84325abeefc0465c46eea');
INSERT INTO `iim_mail_compose` VALUES ('654b668ee4ac46808d41822438cbcca4', '1', null, '1', '4', '2015-11-17 20:08:12', '621d83545f1f4d9383c8d469c5ddbebe');
INSERT INTO `iim_mail_compose` VALUES ('65b3a92f212f433894bbf181245f74df', '1', null, '1', '12', '2015-11-17 20:07:51', '36b526b001d049d0b5b2f1bf1112f67e');
INSERT INTO `iim_mail_compose` VALUES ('65ce711b23784f8ca4a45f36b02fb8ca', '1', null, '1', '11', '2015-11-24 18:40:53', '2a728059ef8c427caec25be0fb4ee96b');
INSERT INTO `iim_mail_compose` VALUES ('666508fdaae449cf8d35b26bce6ed19d', '1', null, '1', '2', '2015-11-17 20:19:20', 'a85a03a77b08414ebdec3e950ed23494');
INSERT INTO `iim_mail_compose` VALUES ('66752d696a6749139a0692b45394cd20', '1', null, '1', '1', '2015-11-17 20:19:20', 'a85a03a77b08414ebdec3e950ed23494');
INSERT INTO `iim_mail_compose` VALUES ('67189f8af9e74ffaa935df85327e8dfa', '1', null, '1', '2', '2015-11-24 18:42:35', '86c71b16e3ed49cfa2ecaae1bfb599f3');
INSERT INTO `iim_mail_compose` VALUES ('672a59a4dbdf478da39fd9fa408fdd06', '1', null, '1', '8', '2015-11-24 18:40:53', '2a728059ef8c427caec25be0fb4ee96b');
INSERT INTO `iim_mail_compose` VALUES ('67f4743c2cf34d05b3f4a94634c56b19', '1', null, '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-24 17:36:02', 'beb0827b7c514139b70d71bcfa66733b');
INSERT INTO `iim_mail_compose` VALUES ('682bde67fb2d464e9b7ed2ff53280c3f', '1', null, '1', '8', '2015-11-24 17:35:41', 'c187db5a2fd84325abeefc0465c46eea');
INSERT INTO `iim_mail_compose` VALUES ('6b18d0603325442b91c3a90a60348d4b', '1', null, '1', '8', '2015-11-24 18:42:35', '86c71b16e3ed49cfa2ecaae1bfb599f3');
INSERT INTO `iim_mail_compose` VALUES ('6da32b0d2d88473cbefc883a47de4d95', '1', null, '1', '11', '2015-11-17 20:08:12', '621d83545f1f4d9383c8d469c5ddbebe');
INSERT INTO `iim_mail_compose` VALUES ('6edf148b54bc4de18811d8b6d456906e', '1', null, '1', '1', '2015-11-17 20:08:12', '621d83545f1f4d9383c8d469c5ddbebe');
INSERT INTO `iim_mail_compose` VALUES ('705a8c1651784eed9c754794d316be50', '1', null, '1', '5', '2015-11-17 20:08:12', '621d83545f1f4d9383c8d469c5ddbebe');
INSERT INTO `iim_mail_compose` VALUES ('7136f9e20317415687ae819f756f5bb1', '1', null, '1', '9', '2015-11-17 20:07:51', '36b526b001d049d0b5b2f1bf1112f67e');
INSERT INTO `iim_mail_compose` VALUES ('74eb19e62354428dab4b41162ab71622', '1', null, '1', '12', '2015-11-24 17:36:02', 'beb0827b7c514139b70d71bcfa66733b');
INSERT INTO `iim_mail_compose` VALUES ('75c60170fcfe4b4faa46700cef96d3fa', '1', null, '1', '4', '2015-11-17 13:28:15', '777a564bcc224fe4b8e34c68b3ea09d5');
INSERT INTO `iim_mail_compose` VALUES ('75c6aab6784f4e27a9da58317b151d91', '1', null, '1', '7', '2015-11-24 18:42:35', '86c71b16e3ed49cfa2ecaae1bfb599f3');
INSERT INTO `iim_mail_compose` VALUES ('770f785680484dcdaa19e2b9f0e0ba01', '1', null, '1', '9', '2015-11-24 18:40:53', '2a728059ef8c427caec25be0fb4ee96b');
INSERT INTO `iim_mail_compose` VALUES ('7849765650a3403dacd8f2530e20940c', '1', null, '1', '6d69972a880f4228b88f28254c3e417e', '2015-11-17 20:19:20', 'a85a03a77b08414ebdec3e950ed23494');
INSERT INTO `iim_mail_compose` VALUES ('790485b88e064c9da98d75b82770abb8', '1', null, '1', '9', '2015-11-24 17:07:23', 'caeff3e2169242d197404750bbe80256');
INSERT INTO `iim_mail_compose` VALUES ('7d1e99ad49ef4533a4627adc227d270a', '1', null, '1', '9', '2015-11-17 20:18:50', '2f4ba44722194a3aa1423a1c58b69021');
INSERT INTO `iim_mail_compose` VALUES ('7d202e4215ee46bf8bcbfc72ad9d7721', '1', null, '1', '5', '2015-11-15 21:38:17', '3340f4a663f84ba48c9ebb80ce3acf5a');
INSERT INTO `iim_mail_compose` VALUES ('7f0f05c880f74b6a9ea0a99b0cb30231', '1', null, '1', '12', '2015-11-24 18:42:35', '86c71b16e3ed49cfa2ecaae1bfb599f3');
INSERT INTO `iim_mail_compose` VALUES ('8005dba87a194dfa869ee5992302e464', '1', null, '1', '6', '2015-11-24 17:36:02', 'beb0827b7c514139b70d71bcfa66733b');
INSERT INTO `iim_mail_compose` VALUES ('802b7bf237bb48b1914a0736d61302b1', '1', null, '1', '6d69972a880f4228b88f28254c3e417e', '2015-11-24 17:26:23', '525d380ce0e549d6bc36ceb41ad748e9');
INSERT INTO `iim_mail_compose` VALUES ('8469a3a4912a43ee815974ca968b5d39', '1', null, '1', '10', '2015-11-24 17:35:41', 'c187db5a2fd84325abeefc0465c46eea');
INSERT INTO `iim_mail_compose` VALUES ('84d06a08fb8b44db984a25900717c727', '1', null, '1', '8', '2015-11-24 17:36:02', 'beb0827b7c514139b70d71bcfa66733b');
INSERT INTO `iim_mail_compose` VALUES ('85d506b1b241407fbf41b3ea6f8bd914', '1', null, '1', '6d69972a880f4228b88f28254c3e417e', '2015-11-17 20:20:09', 'aaf2a947791349f8add8f773c821e116');
INSERT INTO `iim_mail_compose` VALUES ('899ba6a575f24f4eb96a99a652482b4a', '1', null, '1', '10', '2015-11-17 13:28:15', '777a564bcc224fe4b8e34c68b3ea09d5');
INSERT INTO `iim_mail_compose` VALUES ('8c144ff5d22a475aaaa355179278e211', '1', null, '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-24 15:36:39', '8a5acec624db46ceac178b1be69a09bc');
INSERT INTO `iim_mail_compose` VALUES ('8c249477dbb54cc88e31e212de54e8ab', '1', null, '1', '6d69972a880f4228b88f28254c3e417e', '2015-11-24 17:35:41', 'c187db5a2fd84325abeefc0465c46eea');
INSERT INTO `iim_mail_compose` VALUES ('8c5379a14165447c87d0ef724ac33b17', '1', null, '1', '12', '2015-11-17 20:18:50', '2f4ba44722194a3aa1423a1c58b69021');
INSERT INTO `iim_mail_compose` VALUES ('904d5d5d1e1c45589b8bcbf82dc1481e', '1', null, '1', '10', '2015-11-24 17:35:42', '35c90c17d6ec4c70a382f63090aa38bc');
INSERT INTO `iim_mail_compose` VALUES ('9054ece25f5e4aadbfc243957df81fb3', '1', null, '1', '8', '2015-11-17 20:18:50', '2f4ba44722194a3aa1423a1c58b69021');
INSERT INTO `iim_mail_compose` VALUES ('92b5ba73d0c24b0388a312e2be3cda0e', '1', null, '1', '5', '2015-11-24 17:35:42', '35c90c17d6ec4c70a382f63090aa38bc');
INSERT INTO `iim_mail_compose` VALUES ('933803324d084559a6e13d3d0d198d60', '1', null, '1', '6d69972a880f4228b88f28254c3e417e', '2015-11-24 17:35:42', '35c90c17d6ec4c70a382f63090aa38bc');
INSERT INTO `iim_mail_compose` VALUES ('94248ee96dac4cca9067dae3c9060421', '1', null, '1', '2', '2015-11-24 15:36:39', '8a5acec624db46ceac178b1be69a09bc');
INSERT INTO `iim_mail_compose` VALUES ('943db08e74dd4592baf3bdf8a8d1f503', '1', null, '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-17 20:07:51', '36b526b001d049d0b5b2f1bf1112f67e');
INSERT INTO `iim_mail_compose` VALUES ('94fdac4487554295ab165f9fd556ce61', '1', null, '1', '6d69972a880f4228b88f28254c3e417e', '2015-11-24 18:42:35', '86c71b16e3ed49cfa2ecaae1bfb599f3');
INSERT INTO `iim_mail_compose` VALUES ('9581ab0db8b5468dbb2226181ea0141b', '1', null, '1', '10', '2015-11-17 20:19:20', 'a85a03a77b08414ebdec3e950ed23494');
INSERT INTO `iim_mail_compose` VALUES ('95da8c8818704386ad940e9cb2984b19', '1', null, '1', '1', '2015-11-24 18:42:35', '86c71b16e3ed49cfa2ecaae1bfb599f3');
INSERT INTO `iim_mail_compose` VALUES ('967f623b7a514a729c9a2783a6d47c3b', '1', null, '1', '6', '2015-11-17 20:18:50', '2f4ba44722194a3aa1423a1c58b69021');
INSERT INTO `iim_mail_compose` VALUES ('975ce46f6a82444daacfa0e441a10d9d', '1', null, '1', '5', '2015-11-17 20:20:09', 'aaf2a947791349f8add8f773c821e116');
INSERT INTO `iim_mail_compose` VALUES ('97b60ff8e3ef4212b343af7b83d1ca38', '1', null, '1', '8', '2015-11-15 21:38:17', '3340f4a663f84ba48c9ebb80ce3acf5a');
INSERT INTO `iim_mail_compose` VALUES ('981c4a5aeeff40cebf1b505fd7f57fc2', '1', null, '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-17 20:18:50', '2f4ba44722194a3aa1423a1c58b69021');
INSERT INTO `iim_mail_compose` VALUES ('9936c55c27fc47ddb7348b43de668816', '1', null, '1', '5', '2015-11-17 20:18:50', '2f4ba44722194a3aa1423a1c58b69021');
INSERT INTO `iim_mail_compose` VALUES ('99e631d7a1af4ffaa4071f26642dad42', '1', null, '1', '11', '2015-11-24 17:35:41', 'c187db5a2fd84325abeefc0465c46eea');
INSERT INTO `iim_mail_compose` VALUES ('9b1c8c2eb69a491186fa39734f9a09b2', '1', null, '1', 'da60c61cf2aa4cb2810c629c7045c538', '2015-11-24 17:35:41', 'c187db5a2fd84325abeefc0465c46eea');
INSERT INTO `iim_mail_compose` VALUES ('9bae074790d5489b949aff2e1226ad3c', '1', null, '1', '7', '2015-11-24 17:35:41', 'c187db5a2fd84325abeefc0465c46eea');
INSERT INTO `iim_mail_compose` VALUES ('9bf475541fca4ebb917c6e52ed894b35', '1', null, '1', '11', '2015-11-24 15:36:39', '8a5acec624db46ceac178b1be69a09bc');
INSERT INTO `iim_mail_compose` VALUES ('9c792810965945feb7bd4ffceb514c08', '1', null, '1', '12', '2015-11-17 20:19:20', 'a85a03a77b08414ebdec3e950ed23494');
INSERT INTO `iim_mail_compose` VALUES ('9cd13064428a4f37919fb6499cb87349', '1', null, '1', '3', '2015-11-24 17:36:02', 'beb0827b7c514139b70d71bcfa66733b');
INSERT INTO `iim_mail_compose` VALUES ('9d47c09da83d4f0b9bf6b5c7d3e7ea3f', '1', null, '1', '1', '2015-11-24 17:26:23', '525d380ce0e549d6bc36ceb41ad748e9');
INSERT INTO `iim_mail_compose` VALUES ('9fe6a11cf64a4ae59b463d51f4e70d01', '1', null, '1', '12', '2015-11-17 13:28:15', '777a564bcc224fe4b8e34c68b3ea09d5');
INSERT INTO `iim_mail_compose` VALUES ('9ffe0f9b2b3643e1a555b8239a10b27d', '1', null, '1', 'da60c61cf2aa4cb2810c629c7045c538', '2015-11-24 15:36:39', '8a5acec624db46ceac178b1be69a09bc');
INSERT INTO `iim_mail_compose` VALUES ('a0867213a9564bb48b61f31dcf0f1937', '1', null, '1', '7', '2015-11-24 17:35:42', '35c90c17d6ec4c70a382f63090aa38bc');
INSERT INTO `iim_mail_compose` VALUES ('a1a37787996e4b109d61a0cf5d8807a1', '1', null, '1', 'da60c61cf2aa4cb2810c629c7045c538', '2015-11-17 13:28:15', '777a564bcc224fe4b8e34c68b3ea09d5');
INSERT INTO `iim_mail_compose` VALUES ('a274a13b21094145af29b9bda1dd3f6a', '1', null, '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-17 20:08:12', '621d83545f1f4d9383c8d469c5ddbebe');
INSERT INTO `iim_mail_compose` VALUES ('a4a2c786d61341cba624392f8067736d', '1', null, '1', '6', '2015-11-24 18:42:35', '86c71b16e3ed49cfa2ecaae1bfb599f3');
INSERT INTO `iim_mail_compose` VALUES ('a878ae1e1c5845a3b476b5af52bb6148', '1', null, '1', '5', '2015-11-24 17:35:41', 'c187db5a2fd84325abeefc0465c46eea');
INSERT INTO `iim_mail_compose` VALUES ('a8b2548f00c24537bcaf7b5f3609dd75', '1', null, '1', '6', '2015-11-24 17:07:23', 'caeff3e2169242d197404750bbe80256');
INSERT INTO `iim_mail_compose` VALUES ('aba7799bacb342db80482cf9ff0a1185', '1', null, '1', '7', '2015-11-17 20:07:51', '36b526b001d049d0b5b2f1bf1112f67e');
INSERT INTO `iim_mail_compose` VALUES ('ac400c7b4fa14ade9a32c4e33e083a18', '1', null, '1', '2', '2015-11-24 18:40:53', '2a728059ef8c427caec25be0fb4ee96b');
INSERT INTO `iim_mail_compose` VALUES ('ac69ac6272c74492b6478217e157f5dd', '1', null, '1', '12', '2015-11-24 18:40:53', '2a728059ef8c427caec25be0fb4ee96b');
INSERT INTO `iim_mail_compose` VALUES ('acf0851be64240a187521385f641265e', '1', null, '1', '7', '2015-11-17 13:17:19', '06daeb120a504054adefb24b875f5489');
INSERT INTO `iim_mail_compose` VALUES ('ad2a793834654d9f836d2f4203a94289', '1', null, '1', '7', '2015-11-24 17:36:02', 'beb0827b7c514139b70d71bcfa66733b');
INSERT INTO `iim_mail_compose` VALUES ('adfdd49d40cc4744bcdc4cb887a902fe', '1', null, '1', '6d69972a880f4228b88f28254c3e417e', '2015-11-24 17:07:23', 'caeff3e2169242d197404750bbe80256');
INSERT INTO `iim_mail_compose` VALUES ('afa2754bfc64414289cba4e441acc5c9', '1', null, '1', '5', '2015-11-17 13:28:15', '777a564bcc224fe4b8e34c68b3ea09d5');
INSERT INTO `iim_mail_compose` VALUES ('b126998cd871493e86a0554970e7db87', '1', null, '1', '3', '2015-11-24 18:40:53', '2a728059ef8c427caec25be0fb4ee96b');
INSERT INTO `iim_mail_compose` VALUES ('b1614536c5a44ed4821cdf67040ecb01', '1', null, '1', '6', '2015-11-17 13:17:19', '06daeb120a504054adefb24b875f5489');
INSERT INTO `iim_mail_compose` VALUES ('b20eddd44c82401584f1c98e3b6b07fd', '1', null, '1', '4', '2015-11-24 17:26:23', '525d380ce0e549d6bc36ceb41ad748e9');
INSERT INTO `iim_mail_compose` VALUES ('b2dc50637bdd4a6e8367effc0f4d3201', '1', null, '1', '7', '2015-11-17 20:19:20', 'a85a03a77b08414ebdec3e950ed23494');
INSERT INTO `iim_mail_compose` VALUES ('b3b76903372c4b78a93f21fd6db91ee2', '1', null, '1', '11', '2015-11-24 17:07:23', 'caeff3e2169242d197404750bbe80256');
INSERT INTO `iim_mail_compose` VALUES ('b453e17057d84337be4323c46f88338a', '1', null, '1', '2', '2015-11-24 11:55:16', 'e133c69c33eb4a018618b02513cc827a');
INSERT INTO `iim_mail_compose` VALUES ('b5c896c43ed046af8f82f60ffafb0881', '1', null, '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-24 17:35:42', '35c90c17d6ec4c70a382f63090aa38bc');
INSERT INTO `iim_mail_compose` VALUES ('b6f1800e9ee94423ae02e801833f74fd', '1', null, '1', '12', '2015-11-17 20:20:09', 'aaf2a947791349f8add8f773c821e116');
INSERT INTO `iim_mail_compose` VALUES ('b98a8ebd0e9f47bd8c3280b7e5b2ab79', '0', null, '1', '1', '2016-01-16 12:57:09', '87f0b7e501d741bfa94e78ea2a58e25c');
INSERT INTO `iim_mail_compose` VALUES ('bb2c130bdfe643f2b2587211381430b4', '1', null, '1', '6', '2015-11-17 20:07:51', '36b526b001d049d0b5b2f1bf1112f67e');
INSERT INTO `iim_mail_compose` VALUES ('bb3d9fb1979444c78962ee0ded74a560', '1', null, '1', '4', '2015-11-17 20:07:51', '36b526b001d049d0b5b2f1bf1112f67e');
INSERT INTO `iim_mail_compose` VALUES ('bb8bca3ef26c4592bf1b4d5dbba54dd1', '1', null, '1', '11', '2015-11-17 20:18:50', '2f4ba44722194a3aa1423a1c58b69021');
INSERT INTO `iim_mail_compose` VALUES ('bc0777dada9b492f8263eaf34cc15e36', '1', null, '1', 'da60c61cf2aa4cb2810c629c7045c538', '2015-11-17 20:08:12', '621d83545f1f4d9383c8d469c5ddbebe');
INSERT INTO `iim_mail_compose` VALUES ('bd8c468147c94acebdf76dd982800ae5', '1', null, '1', 'da60c61cf2aa4cb2810c629c7045c538', '2015-11-24 17:36:02', 'beb0827b7c514139b70d71bcfa66733b');
INSERT INTO `iim_mail_compose` VALUES ('bf16380cbbed4ee6878f2e0f79b75ae5', '0', null, '1', '1', '2016-01-16 12:57:09', 'f671e940380e436c8bfe28a7dfb29ff5');
INSERT INTO `iim_mail_compose` VALUES ('bfd7b77e56f74654b669e3bb2a521eb0', '1', null, '1', '10', '2015-11-24 17:26:23', '525d380ce0e549d6bc36ceb41ad748e9');
INSERT INTO `iim_mail_compose` VALUES ('c005a86264d6465ca238df2a38630843', '1', null, '1', '10', '2015-11-17 20:18:50', '2f4ba44722194a3aa1423a1c58b69021');
INSERT INTO `iim_mail_compose` VALUES ('c1278bdb013140b8a3a67a4c06c486a8', '1', null, '1', '6', '2015-11-24 15:36:39', '8a5acec624db46ceac178b1be69a09bc');
INSERT INTO `iim_mail_compose` VALUES ('c22db7b1baf04e3c951b4200f488284d', '1', null, '1', '3', '2015-11-17 20:08:12', '621d83545f1f4d9383c8d469c5ddbebe');
INSERT INTO `iim_mail_compose` VALUES ('c3e94495265f420993d6c91348ea5895', '1', null, '1', '1', '2015-11-24 17:35:42', '35c90c17d6ec4c70a382f63090aa38bc');
INSERT INTO `iim_mail_compose` VALUES ('c6a1c4c4ca084ff4967281f97671a7c5', '1', null, '1', '7', '2015-11-24 17:07:23', 'caeff3e2169242d197404750bbe80256');
INSERT INTO `iim_mail_compose` VALUES ('c8cb695f8ad5415288ea50c8b42eb3b5', '1', null, '1', '10', '2015-11-24 17:07:23', 'caeff3e2169242d197404750bbe80256');
INSERT INTO `iim_mail_compose` VALUES ('ca43a8818195425985e37647b493ab59', '1', null, '1', '5', '2015-11-24 15:36:39', '8a5acec624db46ceac178b1be69a09bc');
INSERT INTO `iim_mail_compose` VALUES ('ca464fe8b8574f258097cae8caf1111a', '1', null, '1', '2', '2015-11-17 20:08:12', '621d83545f1f4d9383c8d469c5ddbebe');
INSERT INTO `iim_mail_compose` VALUES ('ca5b8bc337e3405eb183d5e17624fd67', '1', null, '1', '8', '2015-11-24 17:07:23', 'caeff3e2169242d197404750bbe80256');
INSERT INTO `iim_mail_compose` VALUES ('caf3a9282cdd480bb18b69c8cf4b1907', '1', null, '1', '5', '2015-11-24 17:26:23', '525d380ce0e549d6bc36ceb41ad748e9');
INSERT INTO `iim_mail_compose` VALUES ('ceba5fb6737742cb96bb43a24a568120', '1', null, '1', '11', '2015-11-17 20:20:09', 'aaf2a947791349f8add8f773c821e116');
INSERT INTO `iim_mail_compose` VALUES ('cfb0d388908d41f6bbf4476a7ae2e067', '1', null, '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-17 13:17:19', '06daeb120a504054adefb24b875f5489');
INSERT INTO `iim_mail_compose` VALUES ('cfc1ac2c36b944769bc80ef3508c8b4e', '1', null, '1', '6d69972a880f4228b88f28254c3e417e', '2015-11-17 20:07:51', '36b526b001d049d0b5b2f1bf1112f67e');
INSERT INTO `iim_mail_compose` VALUES ('cfdc7f6b7501463a88a3570f54c517d3', '0', null, '1', '95b3b09fa0b34ac6b95907237c744c55', '2016-01-16 02:22:17', 'a1564eb927fb4da1988cadce35a4f0b5');
INSERT INTO `iim_mail_compose` VALUES ('d0047dbe60e94493837f2158a81dc71d', '1', null, '1', '5', '2015-11-17 20:19:20', 'a85a03a77b08414ebdec3e950ed23494');
INSERT INTO `iim_mail_compose` VALUES ('d0308b6abc3c499187d0e8bea20ed452', '1', null, '1', '9', '2015-11-17 20:08:12', '621d83545f1f4d9383c8d469c5ddbebe');
INSERT INTO `iim_mail_compose` VALUES ('d094b28751324d4598a74b8034482479', '1', null, '1', '4', '2015-11-17 13:17:19', '06daeb120a504054adefb24b875f5489');
INSERT INTO `iim_mail_compose` VALUES ('d0d6f05adb0c4e279799f3db32cb9ac7', '1', null, '1', '8', '2015-11-24 15:36:39', '8a5acec624db46ceac178b1be69a09bc');
INSERT INTO `iim_mail_compose` VALUES ('d13db5698dfa4fb49d81114a3ae9c1a3', '1', null, '1', 'da60c61cf2aa4cb2810c629c7045c538', '2015-11-17 20:07:51', '36b526b001d049d0b5b2f1bf1112f67e');
INSERT INTO `iim_mail_compose` VALUES ('d1f0cc85db524c8e946bc50e68ce9f33', '0', null, '1', '1', '2016-01-16 12:57:06', '09eba00cf56549fc993e1a3e3f3f56fb');
INSERT INTO `iim_mail_compose` VALUES ('d2b34bd426284e27a5baf59d8ad44d26', '1', null, '1', '2', '2015-11-17 13:17:19', '06daeb120a504054adefb24b875f5489');
INSERT INTO `iim_mail_compose` VALUES ('d4172a9b7912440bbcb2867d94fca9cd', '1', null, '1', '6d69972a880f4228b88f28254c3e417e', '2015-11-17 20:08:12', '621d83545f1f4d9383c8d469c5ddbebe');
INSERT INTO `iim_mail_compose` VALUES ('d465fdeef6d842a79c94f8dd472f3af8', '1', null, '1', '1', '2015-11-24 17:07:23', 'caeff3e2169242d197404750bbe80256');
INSERT INTO `iim_mail_compose` VALUES ('d724f45e2cac42f195e3e00c65ae6382', '1', null, '1', '1', '2015-11-15 21:38:17', '3340f4a663f84ba48c9ebb80ce3acf5a');
INSERT INTO `iim_mail_compose` VALUES ('d79e7e7a091e4925b3474a829c9019c6', '1', null, '1', '4', '2015-11-24 18:42:35', '86c71b16e3ed49cfa2ecaae1bfb599f3');
INSERT INTO `iim_mail_compose` VALUES ('d806a5c95ab74dd7bc4227de5cadf3f4', '1', null, '1', '11', '2015-11-17 13:28:15', '777a564bcc224fe4b8e34c68b3ea09d5');
INSERT INTO `iim_mail_compose` VALUES ('d834a51da1ef4dd4af404e63e0466658', '1', null, '1', '12', '2015-11-24 17:07:23', 'caeff3e2169242d197404750bbe80256');
INSERT INTO `iim_mail_compose` VALUES ('d8713026a82e498c8eda496efd3b0b04', '1', null, '0e01985207154708a01e53ca07965665', '45f8002c452d4a54a82f113379c7b853', '2016-01-16 20:08:11', '38ac9700fdf649ff8cdc6e9f54c5afa9');
INSERT INTO `iim_mail_compose` VALUES ('d8b4e7d1cb1d4769ae55fc198cdc954c', '1', null, '1', '9', '2015-11-24 17:26:23', '525d380ce0e549d6bc36ceb41ad748e9');
INSERT INTO `iim_mail_compose` VALUES ('dc841deae8ed49e19af4c76f3bb60007', '1', null, '1', '9', '2015-11-17 13:28:15', '777a564bcc224fe4b8e34c68b3ea09d5');
INSERT INTO `iim_mail_compose` VALUES ('de493b77515945b3b70cd65032642433', '1', null, '1', '8', '2015-11-17 13:17:19', '06daeb120a504054adefb24b875f5489');
INSERT INTO `iim_mail_compose` VALUES ('def130d3ff544cf28022095c5b8837a7', '1', null, '1', '8', '2015-11-24 17:35:42', '35c90c17d6ec4c70a382f63090aa38bc');
INSERT INTO `iim_mail_compose` VALUES ('e09b647301794526b788041cd22cf151', '1', null, '1', '6', '2015-11-17 13:28:15', '777a564bcc224fe4b8e34c68b3ea09d5');
INSERT INTO `iim_mail_compose` VALUES ('e0a80e8e70fe44b5957870055a2c3b15', '1', null, '1', '9', '2015-11-24 17:36:02', 'beb0827b7c514139b70d71bcfa66733b');
INSERT INTO `iim_mail_compose` VALUES ('e3fde1e33d0c49ec8070d0b6f6a0bcb1', '1', null, '1', '8', '2015-11-17 20:19:20', 'a85a03a77b08414ebdec3e950ed23494');
INSERT INTO `iim_mail_compose` VALUES ('e43c28822e1640e2956c8773acd45f58', '1', null, '1', '1', '2015-11-24 17:35:41', 'c187db5a2fd84325abeefc0465c46eea');
INSERT INTO `iim_mail_compose` VALUES ('e59622860af448eaae8e10575739f335', '1', null, '1', '11', '2015-11-17 13:17:19', '06daeb120a504054adefb24b875f5489');
INSERT INTO `iim_mail_compose` VALUES ('e5af1f98c4f04e68b01579db56d912fd', '1', null, '1', '2', '2015-11-24 17:36:02', 'beb0827b7c514139b70d71bcfa66733b');
INSERT INTO `iim_mail_compose` VALUES ('e7428479dea04543adeadefd2414d971', '1', null, '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-17 20:19:20', 'a85a03a77b08414ebdec3e950ed23494');
INSERT INTO `iim_mail_compose` VALUES ('e749896caac044c8a036d1d1032bfec1', '1', null, '1', '10', '2015-11-24 17:36:02', 'beb0827b7c514139b70d71bcfa66733b');
INSERT INTO `iim_mail_compose` VALUES ('e79f3d0c978443ebab64d706e04b913f', '1', null, '1', '4', '2015-11-15 21:38:17', '3340f4a663f84ba48c9ebb80ce3acf5a');
INSERT INTO `iim_mail_compose` VALUES ('e8de45a004724584bd473d03c79211d4', '1', null, '1', '12', '2015-11-24 17:35:42', '35c90c17d6ec4c70a382f63090aa38bc');
INSERT INTO `iim_mail_compose` VALUES ('e8f2e494db12421c98ddcc14741f046f', '1', null, '1', '10', '2015-11-17 13:17:19', '06daeb120a504054adefb24b875f5489');
INSERT INTO `iim_mail_compose` VALUES ('e94d393825214f0fbed3716efadbc33c', '1', null, '1', '6', '2015-11-17 20:20:09', 'aaf2a947791349f8add8f773c821e116');
INSERT INTO `iim_mail_compose` VALUES ('eb67a3966c9e4c61b9da8fe05bec3cb0', '1', null, '1', '4', '2015-11-17 20:18:50', '2f4ba44722194a3aa1423a1c58b69021');
INSERT INTO `iim_mail_compose` VALUES ('ece9159b3ecb4cd88caac0dafb650386', '0', null, '1', '1', '2016-01-16 12:57:09', '79a807f2db8d4e888a6cf114ecdbc880');
INSERT INTO `iim_mail_compose` VALUES ('eda8e81fdd5b49119a64b93645842b48', '1', null, '1', '8', '2015-11-24 17:26:23', '525d380ce0e549d6bc36ceb41ad748e9');
INSERT INTO `iim_mail_compose` VALUES ('ef17fc7d96ae4d9c93ca1cfe819b8dec', '1', null, '1', '11', '2015-11-17 20:07:51', '36b526b001d049d0b5b2f1bf1112f67e');
INSERT INTO `iim_mail_compose` VALUES ('f035d3f995424951842f7fa450fd0477', '1', null, '1', 'da60c61cf2aa4cb2810c629c7045c538', '2015-11-24 18:42:35', '86c71b16e3ed49cfa2ecaae1bfb599f3');
INSERT INTO `iim_mail_compose` VALUES ('f0d1dc1711fe427eb86d28919e8277b2', '1', null, '1', '6', '2015-11-15 21:38:17', '3340f4a663f84ba48c9ebb80ce3acf5a');
INSERT INTO `iim_mail_compose` VALUES ('f16c7db8cc114adc8289ad0809e0f3f9', '1', null, '1', '6d69972a880f4228b88f28254c3e417e', '2015-11-17 13:28:15', '777a564bcc224fe4b8e34c68b3ea09d5');
INSERT INTO `iim_mail_compose` VALUES ('f1ffdb3135054a7499a8bacc3684596a', '1', null, '1', '1', '2015-11-17 13:17:19', '06daeb120a504054adefb24b875f5489');
INSERT INTO `iim_mail_compose` VALUES ('f212301ad3b44d91a2202fe0dc64735f', '1', null, '1', '8', '2015-11-17 20:20:09', 'aaf2a947791349f8add8f773c821e116');
INSERT INTO `iim_mail_compose` VALUES ('f25f0215dcff4860899363648edc3fd6', '1', null, '1', '11', '2015-11-17 20:19:20', 'a85a03a77b08414ebdec3e950ed23494');
INSERT INTO `iim_mail_compose` VALUES ('f286acbc8a9a4f009fae9b87557f3b42', '1', null, '1', 'a91be50880744e4787a77e0f97f8dbb5', '2015-11-15 21:38:17', '3340f4a663f84ba48c9ebb80ce3acf5a');
INSERT INTO `iim_mail_compose` VALUES ('f511d33c7523473899d2a7f68641ebaf', '1', null, '1', '4', '2015-11-24 17:35:41', 'c187db5a2fd84325abeefc0465c46eea');
INSERT INTO `iim_mail_compose` VALUES ('f5d6440627944d1da393ec12920d41d0', '1', null, '1', '12', '2015-11-17 13:17:19', '06daeb120a504054adefb24b875f5489');
INSERT INTO `iim_mail_compose` VALUES ('f7af07a735cc4b1da64ef9c95146f350', '1', null, '1', '12', '2015-11-24 17:26:23', '525d380ce0e549d6bc36ceb41ad748e9');
INSERT INTO `iim_mail_compose` VALUES ('f8071dfc2932416fba67b5d04d76a51a', null, null, '1', '8', '2016-01-16 02:07:19', '1041ca173bb2483cacf9418be7a93ba8');
INSERT INTO `iim_mail_compose` VALUES ('fa02944a3b234c0abd0d42ace70cf0ab', '1', null, '1', '7', '2015-11-24 15:36:39', '8a5acec624db46ceac178b1be69a09bc');
INSERT INTO `iim_mail_compose` VALUES ('fa42f5e0541347218c4ffb52630c97c0', '1', null, '1', 'da60c61cf2aa4cb2810c629c7045c538', '2015-11-17 20:18:50', '2f4ba44722194a3aa1423a1c58b69021');
INSERT INTO `iim_mail_compose` VALUES ('fb48c775748f434a86c92806b5335bea', '1', null, '1', '6', '2015-11-24 17:35:41', 'c187db5a2fd84325abeefc0465c46eea');
INSERT INTO `iim_mail_compose` VALUES ('fbe62ccc81f9471abb193f60e34bb9cd', '1', null, '1', '4', '2015-11-24 17:35:42', '35c90c17d6ec4c70a382f63090aa38bc');
INSERT INTO `iim_mail_compose` VALUES ('fd4c3a121c8e4c408d31b8ecc091cee8', '1', null, '1', '7', '2015-11-15 21:38:17', '3340f4a663f84ba48c9ebb80ce3acf5a');
INSERT INTO `iim_mail_compose` VALUES ('fe399773bce747be849c0c33ea1c172e', '1', null, '1', '4', '2015-11-17 20:19:20', 'a85a03a77b08414ebdec3e950ed23494');
INSERT INTO `iim_mail_compose` VALUES ('ff6e909dde4e4e5380788ebc9d652199', '1', null, '1', 'da60c61cf2aa4cb2810c629c7045c538', '2015-11-15 21:38:17', '3340f4a663f84ba48c9ebb80ce3acf5a');
INSERT INTO `iim_mail_compose` VALUES ('fffab66046f34b128c5a5cbc06e5df93', '1', null, '1', '10', '2015-11-17 20:20:09', 'aaf2a947791349f8add8f773c821e116');

-- ----------------------------
-- Table structure for `oa_notify`
-- ----------------------------
DROP TABLE IF EXISTS `oa_notify`;
CREATE TABLE `oa_notify` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `type` char(1) DEFAULT NULL COMMENT '类型',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `content` varchar(2000) DEFAULT NULL COMMENT '内容',
  `files` varchar(2000) DEFAULT NULL COMMENT '附件',
  `status` char(1) DEFAULT NULL COMMENT '状态',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `oa_notify_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知通告';

-- ----------------------------
-- Records of oa_notify
-- ----------------------------
INSERT INTO `oa_notify` VALUES ('03da36624829477493bfc949f22efdec', '2', 'erere', '222222222222332', '|/HeartCare/userfiles/1/files/oa/notify/2015/10/profile_small.jpg', '1', '1', '2015-10-30 18:43:38', '1', '2015-10-30 18:43:38', null, '1');
INSERT INTO `oa_notify` VALUES ('07faef27eb744abe9b9d247a9b0765da', '1', '22', '222', '', '1', '1', '2015-11-03 14:19:09', '1', '2015-11-03 14:19:09', null, '1');
INSERT INTO `oa_notify` VALUES ('0f0f932cdbc14629aa94aba0bb333a06', '2', 'test', 'weew', '', '1', '1', '2015-11-02 16:13:09', '1', '2015-11-02 16:13:09', null, '1');
INSERT INTO `oa_notify` VALUES ('13d61fb791e64f41b94e856c3c446c1d', '2', '1212', '12121', '', '1', '1', '2015-11-05 10:50:45', '1', '2015-11-05 10:50:45', null, '1');
INSERT INTO `oa_notify` VALUES ('1a3428088ad347269b52ed50dfcb81c9', '2', 'ewww', 'wew', '', '1', '1', '2015-11-04 10:53:34', '1', '2015-11-04 10:53:34', null, '1');
INSERT INTO `oa_notify` VALUES ('1e4f735c49a844c6be507572a94d1bb1', '', '', '', '', null, '1', '2015-11-03 15:19:35', '1', '2015-11-03 15:19:35', null, '1');
INSERT INTO `oa_notify` VALUES ('2055ff60abd4465c9d3c0934a2c43ba9', '2', '2121', '212121', '', '1', '1', '2015-11-05 10:50:58', '1', '2015-11-05 10:50:58', null, '1');
INSERT INTO `oa_notify` VALUES ('227b389e540f4beb85a4448e00beac5d', '1', 'ss', 'ssss', '|/HeartCare/userfiles/1/files/oa/notify/2015/10/profile_small.jpg', '1', '1', '2015-11-03 16:25:53', '1', '2015-11-03 16:25:53', null, '1');
INSERT INTO `oa_notify` VALUES ('2757b0387e6c4449b3bac78ced1abf58', '2', 'e4re', 'e3434343', '', '1', '1', '2015-11-02 11:12:29', '1', '2015-11-02 11:12:29', null, '1');
INSERT INTO `oa_notify` VALUES ('28d2622a6e0a4ab485e1c082d30c75ef', '2', '22', '222', '', '1', '1', '2015-11-03 14:24:19', '1', '2015-11-03 14:38:56', null, '1');
INSERT INTO `oa_notify` VALUES ('39de39ff1ab74233bce9c5a913af2c9c', '2', 'test', '223', '', '1', '1', '2015-11-02 16:12:08', '1', '2015-11-02 16:12:08', null, '1');
INSERT INTO `oa_notify` VALUES ('4226f5d40009414d854569158e5bcc44', '1', '444', '4444', '', '0', '1', '2015-11-15 10:45:30', '1', '2015-11-15 10:45:30', null, '1');
INSERT INTO `oa_notify` VALUES ('46a635664fb5420ea1aa533969a08301', '2', 'test', '121212121', '', '1', '1', '2015-11-02 11:37:02', '1', '2015-11-02 11:37:02', null, '1');
INSERT INTO `oa_notify` VALUES ('48e71d295aed4d1c94eced78488abce1', '2', 'sss', 'ssswwww', '', '1', '1', '2015-11-03 12:04:56', '1', '2015-11-03 12:04:56', null, '1');
INSERT INTO `oa_notify` VALUES ('4e5f48bc8efe4ef3806bd6da18dccc57', '2', 'Highcharts Demo', 'pp', '', '1', '1', '2015-11-02 14:17:27', '1', '2015-11-02 14:17:27', null, '1');
INSERT INTO `oa_notify` VALUES ('530b93241fc9479f9c6bbadb32b65149', '3', 'test', '12345677', '', '1', '1', '2015-11-02 11:19:38', '1', '2015-11-02 11:19:38', null, '1');
INSERT INTO `oa_notify` VALUES ('5eb0dfee1de948348bbf7663c7c81854', '2', 'www', 'weewew', '', '1', '1', '2015-11-03 18:41:03', '1', '2015-11-03 18:41:03', null, '1');
INSERT INTO `oa_notify` VALUES ('69abb236d4a44bd3bb31cfedf273c031', '1', '99', '99', '', '1', '1', '2015-11-15 08:32:17', '1', '2015-11-15 09:41:37', null, '1');
INSERT INTO `oa_notify` VALUES ('7fe83bb7ca9a413bb37acac91215ea16', '3', 'eee', '45454', '', '1', '1', '2015-11-02 11:12:14', '1', '2015-11-02 11:12:14', null, '1');
INSERT INTO `oa_notify` VALUES ('88d32ebd5a5944ec92ebdf99cc00d356', '3', 'wewe', 'wewew', '', '1', '1', '2015-11-03 18:41:13', '1', '2015-11-03 18:41:13', null, '1');
INSERT INTO `oa_notify` VALUES ('8ae80eff98be40aa9acdd2a01e6920ef', '1', 'tew', 'sss', '', '1', '1', '2015-11-03 18:40:30', '1', '2015-11-03 18:40:30', null, '1');
INSERT INTO `oa_notify` VALUES ('8d67574047ed4d7790381fb5fc4019a8', '2', 'test', 'sfssf', '', '1', '1', '2015-11-02 18:38:57', '1', '2015-11-02 18:38:57', null, '1');
INSERT INTO `oa_notify` VALUES ('958a69bb33e54832b049f5e17bd9bbd3', '', '', '', '', null, '1', '2015-11-03 14:21:06', '1', '2015-11-03 14:21:06', null, '1');
INSERT INTO `oa_notify` VALUES ('9b73f6e4d0ae4d23b1d98f4f8ca6873a', '3', '免费体检了', 'sss', '', '1', '1', '2015-10-30 14:48:19', '1', '2015-10-30 14:48:19', null, '1');
INSERT INTO `oa_notify` VALUES ('c00f8c9d385042949724953f9a5faed9', '1', '大家头注意了', '哈哈哈哈', '|/HeartCare/userfiles/1/files/oa/notify/2015/10/profile_small.jpg', '1', '1', '2015-10-30 14:25:43', '1', '2015-10-30 14:25:43', null, '1');
INSERT INTO `oa_notify` VALUES ('c76b572ff8884896a16a42c08ff2da95', '2', '343', '3434334', '', '1', '1', '2015-11-02 11:33:37', '1', '2015-11-02 11:33:37', null, '1');
INSERT INTO `oa_notify` VALUES ('cc4ca4ce262247adb662c3ce2631a1db', '2', 'test', '23232', '', '1', '1', '2015-11-02 16:14:25', '1', '2015-11-02 16:14:25', null, '1');
INSERT INTO `oa_notify` VALUES ('cd96f7d2cffe4c268e1fe8b93940f97a', '2', '888', '48558', '', '1', '1', '2015-11-02 11:21:59', '1', '2015-11-02 11:21:59', null, '1');
INSERT INTO `oa_notify` VALUES ('d59f683455884cd18d412879d6f9d042', '1', '22', '22', '|/HeartCare/userfiles/1/files/oa/notify/2015/10/profile_small.jpg', '1', '1', '2015-11-05 17:14:27', '1', '2015-11-05 17:14:27', null, '1');
INSERT INTO `oa_notify` VALUES ('dba81703f6874b82935ca389317d6d19', '2', 'wwww', 'wwww', '', '1', '1', '2015-11-03 18:40:45', '1', '2015-11-03 18:40:45', null, '1');
INSERT INTO `oa_notify` VALUES ('e2ae2d875fda4f0d9e9db79954c05834', '1', '111', '11', '', '1', '1', '2015-11-05 10:50:30', '1', '2015-11-05 10:50:30', null, '1');
INSERT INTO `oa_notify` VALUES ('e422136885a3473aa85f9f0749c75a78', '1', 'test', 'sssssssssss', '', '0', '1', '2015-11-05 16:46:24', '1', '2015-11-05 16:46:24', null, '1');
INSERT INTO `oa_notify` VALUES ('e48bb0cd337947dcad57ed1ba5036c0a', '3', 'wewew', 'ewewew', '', '1', '1', '2015-11-03 18:41:23', '1', '2015-11-03 18:41:23', null, '1');
INSERT INTO `oa_notify` VALUES ('f3b7b7409d6642ac9e1249011915b65f', '3', '4444', '444', '|/HeartCare/userfiles/1/files/oa/notify/2015/10/profile_small.jpg', '1', '1', '2015-10-30 18:15:00', '1', '2015-10-30 18:15:00', null, '1');
INSERT INTO `oa_notify` VALUES ('f6781437795d48e5a74d6d43828208b0', '1', '11', '111', '', '0', '1', '2015-11-15 10:40:04', '1', '2015-11-15 10:40:04', null, '1');

-- ----------------------------
-- Table structure for `oa_notify_record`
-- ----------------------------
DROP TABLE IF EXISTS `oa_notify_record`;
CREATE TABLE `oa_notify_record` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `oa_notify_id` varchar(64) DEFAULT NULL COMMENT '通知通告ID',
  `user_id` varchar(64) DEFAULT NULL COMMENT '接受人',
  `read_flag` char(1) DEFAULT '0' COMMENT '阅读标记',
  `read_date` date DEFAULT NULL COMMENT '阅读时间',
  PRIMARY KEY (`id`),
  KEY `oa_notify_record_notify_id` (`oa_notify_id`),
  KEY `oa_notify_record_user_id` (`user_id`),
  KEY `oa_notify_record_read_flag` (`read_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知通告发送记录';

-- ----------------------------
-- Records of oa_notify_record
-- ----------------------------
INSERT INTO `oa_notify_record` VALUES ('002bdb88f7034cc1b847d7630cfd87c7', '51649ecc4891453886fe523ff106ca8b', 'da60c61cf2aa4cb2810c629c7045c538', '0', null);
INSERT INTO `oa_notify_record` VALUES ('0041be7b4c3b4f479caff6f818f3fde8', '28d2622a6e0a4ab485e1c082d30c75ef', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('0074402a7d784dee976dcb100dceffd3', '1a3428088ad347269b52ed50dfcb81c9', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('00d728f3ec1a452bbe2df993d699e60e', '88d32ebd5a5944ec92ebdf99cc00d356', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('01632d2547ab4f80baddc7dc53b9befe', 'dba81703f6874b82935ca389317d6d19', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('01d6d6d480234c5682bcc80489bbd708', '51649ecc4891453886fe523ff106ca8b', '95b3b09fa0b34ac6b95907237c744c55', '0', null);
INSERT INTO `oa_notify_record` VALUES ('01d7b8665dd6440081e7dd1377a5c9fb', 'e48bb0cd337947dcad57ed1ba5036c0a', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('01dbbe02d9e44fdaa290ef6ce6168054', 'e2ae2d875fda4f0d9e9db79954c05834', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('0202582ac32b4789a337141e6dae73f6', 'f0dff7a394e34f82a78a510fd0ceac02', '4639f877ec7149258cadcf145b4182a7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('027d8a82bd4840819033317d7a42d883', '393f25fd98c34992bcc72eea2929ea63', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('0358141106354561bb7994d6fd380a90', 'f0dff7a394e34f82a78a510fd0ceac02', 'd42378c9621b4551a0c4c63c82f0aa33', '0', null);
INSERT INTO `oa_notify_record` VALUES ('038223843d01450c926718f54606521f', 'c76b572ff8884896a16a42c08ff2da95', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('038656c834ee4ff1ad62daef6ce8951e', '69abb236d4a44bd3bb31cfedf273c031', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('03ca06eaf18d4bfb9fca532810f264c1', 'fcdd1348b7644afea196695b1eede954', '1', '1', '2015-12-29');
INSERT INTO `oa_notify_record` VALUES ('041cb519bcfa45909123ff46ba3aabe3', '51649ecc4891453886fe523ff106ca8b', '6474fda3f35c4d1580b646a42f190cf7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('045784a1f76343169e45a9b539c54104', 'cc4ca4ce262247adb662c3ce2631a1db', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('04881ba7acbd4164b0fa10e06be65b71', 'cd96f7d2cffe4c268e1fe8b93940f97a', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('04c81e9a36984ec79129c81123a1e82e', '8d67574047ed4d7790381fb5fc4019a8', '1', '1', '2015-11-03');
INSERT INTO `oa_notify_record` VALUES ('05c47727d8fc418f9cd360c43f35e666', '9b73f6e4d0ae4d23b1d98f4f8ca6873a', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('06257bc4ee7146f0a5b08f4af74ad8de', 'c76b572ff8884896a16a42c08ff2da95', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('06668825592a4482b37b645110882978', 'c76b572ff8884896a16a42c08ff2da95', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('06f5597b46454640be6ab03d2388de37', 'f3b7b7409d6642ac9e1249011915b65f', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('08ae96cd9c8b459680aa77b1d884490d', 'c3ac32da72644cd0805fa663bed26edf', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('08bf727263d0463ea0abfefe85dc2385', '69abb236d4a44bd3bb31cfedf273c031', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('08c09163d4964e8f8d07390f095e0032', '0191c8b6b276404881679e570778047e', '5ad0d1f9efdc44b481b02c26b67e832e', '0', null);
INSERT INTO `oa_notify_record` VALUES ('08e25250a0564623a8e74de3c51689f9', '0191c8b6b276404881679e570778047e', 'f12330474f634e2897878e8f56a910ae', '0', null);
INSERT INTO `oa_notify_record` VALUES ('08f7a46ee7ba4da9be3fe643b8060fba', 'cc4ca4ce262247adb662c3ce2631a1db', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('0922e5321bc941718b8355ea753ad969', 'fcdd1348b7644afea196695b1eede954', '5091ca619fbf49209bce020859103ba5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('0a046837ce4c4ba39a72244f54deff9d', '8a14c7e5c5e2486ea004765160ee1324', 'bb81a0c098a444e69028380e80852d91', '0', null);
INSERT INTO `oa_notify_record` VALUES ('0a5af3f03f914fd6b6c2b5188b5ee642', 'f0dff7a394e34f82a78a510fd0ceac02', 'f12330474f634e2897878e8f56a910ae', '0', null);
INSERT INTO `oa_notify_record` VALUES ('0a7d27288af14b45aa0deceb80227d4b', 'e2ae2d875fda4f0d9e9db79954c05834', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('0af491ed432642838bc76ff798e854b1', 'fcdd1348b7644afea196695b1eede954', 'dc9663e71aaa42f0a2634770896ec74c', '0', null);
INSERT INTO `oa_notify_record` VALUES ('0b21cfe6d24e40c685b41a865c596910', 'cc4ca4ce262247adb662c3ce2631a1db', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('0b5c07cbeb754e2996369c1616749dde', '14535c661515479f954cf3a192a6329f', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('0b683a9665fd4f01b80171d4f6b509f3', '51649ecc4891453886fe523ff106ca8b', '5091ca619fbf49209bce020859103ba5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('0b8838f612fc46688b9ae943bcea1c62', '530b93241fc9479f9c6bbadb32b65149', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('0b8e0769f72c4493949e4f897eb5774a', '39de39ff1ab74233bce9c5a913af2c9c', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('0baac962368746c898bd6275b51915fb', '4226f5d40009414d854569158e5bcc44', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('0cab13f7146a46d7b238329cf719b49f', '638da80f1e8f4fc28c421d8febc9a7fe', '6474fda3f35c4d1580b646a42f190cf7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('0cbd421f7e2a450bbadbc803f9085d12', 'e422136885a3473aa85f9f0749c75a78', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('0d2f34662b8046fd95f59d53ce5fa427', '8d67574047ed4d7790381fb5fc4019a8', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('0d5417a155954cffbd1427b8b1f62895', '8edf34dd574340a7aa2bc587b025eb92', '7e9cac2b269c4671a17c5121877b5ecd', '0', null);
INSERT INTO `oa_notify_record` VALUES ('0d700de7577d4d28b0c501911024bead', 'fcdd1348b7644afea196695b1eede954', '95b3b09fa0b34ac6b95907237c744c55', '0', null);
INSERT INTO `oa_notify_record` VALUES ('0d9c3f21a72a4f639b4dd42b9567f1b4', 'd59f683455884cd18d412879d6f9d042', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('0da7d0df28ad470aaff6d306fd82114f', '4226f5d40009414d854569158e5bcc44', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('0e19ddf40c9d4cb5840907aac2a97a84', 'f6781437795d48e5a74d6d43828208b0', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('0f176f91728e4e019ea0aaf80ab6b967', '638da80f1e8f4fc28c421d8febc9a7fe', 'dc9663e71aaa42f0a2634770896ec74c', '0', null);
INSERT INTO `oa_notify_record` VALUES ('0f86f1f0ff254a158f1288e19b55cd2b', '03da36624829477493bfc949f22efdec', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('108ffa30c07b46d5b8250bec4c26d864', 'c00f8c9d385042949724953f9a5faed9', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('11359bebb9a544e8a50c6f16c1dfbcb0', '0f0f932cdbc14629aa94aba0bb333a06', '1', '0', null);
INSERT INTO `oa_notify_record` VALUES ('1197d0ed166b4d8bb54e09adf588fa03', '393f25fd98c34992bcc72eea2929ea63', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('11f80d4af550427689d8a71ef8794470', '14535c661515479f954cf3a192a6329f', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('1238622f71f644a9958ff2044ceb79da', '8a14c7e5c5e2486ea004765160ee1324', '5ad0d1f9efdc44b481b02c26b67e832e', '0', null);
INSERT INTO `oa_notify_record` VALUES ('1256754d81c34892b1098c358eeb756a', 'e48bb0cd337947dcad57ed1ba5036c0a', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('127000ca70ae4b2eb1486657d6141568', 'e48bb0cd337947dcad57ed1ba5036c0a', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('127bfde828994fc1b5f43a847ab1f04b', 'dba81703f6874b82935ca389317d6d19', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('12d06baa2eaa4d04aa3334043a5a7e6f', '48e71d295aed4d1c94eced78488abce1', '1', '1', '2015-11-03');
INSERT INTO `oa_notify_record` VALUES ('12fcbea705f44851ab279fee5b9e4276', '0191c8b6b276404881679e570778047e', 'd42378c9621b4551a0c4c63c82f0aa33', '0', null);
INSERT INTO `oa_notify_record` VALUES ('138c5375cfdb4dd3821bfb298a8c4989', '227b389e540f4beb85a4448e00beac5d', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('1499bcad78f74b588c60bd71872d8add', '7fe83bb7ca9a413bb37acac91215ea16', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('14b08b78d3b84a7ca356b27dbada4ed6', 'd59f683455884cd18d412879d6f9d042', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('14b9a4e9a0934926be7048b41fe70c76', '8a14c7e5c5e2486ea004765160ee1324', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('151452421ba4400a83e42091f863fc77', '522ca59deba34f268077efd3c439eb3d', 'dc9663e71aaa42f0a2634770896ec74c', '0', null);
INSERT INTO `oa_notify_record` VALUES ('1528f7b583d14f11b68771e4c7b9558c', '48e71d295aed4d1c94eced78488abce1', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('1548aac269f44763b2f6f24edf7583a5', 'c3ac32da72644cd0805fa663bed26edf', 'da60c61cf2aa4cb2810c629c7045c538', '0', null);
INSERT INTO `oa_notify_record` VALUES ('1561a460eb7c4a029122924f219b232b', '5eb0dfee1de948348bbf7663c7c81854', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('15993d63c42e45919dc738f7678fc5de', 'cd96f7d2cffe4c268e1fe8b93940f97a', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('159f61bfeff1471dbb438cb971409f30', '8ae80eff98be40aa9acdd2a01e6920ef', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('15fa380af80643249ddfcda43233a42b', 'c76b572ff8884896a16a42c08ff2da95', '13', '0', null);
INSERT INTO `oa_notify_record` VALUES ('162cd3ee47df4671b4911c1de72337dd', '98d77ab7e8384d8894441a4079dea800', '1', '1', '2016-01-19');
INSERT INTO `oa_notify_record` VALUES ('16627ce05e6740d194c288f58d67d878', '9b73f6e4d0ae4d23b1d98f4f8ca6873a', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('167b4a5b2dc5438e8c40f298170c0d9f', '4e5f48bc8efe4ef3806bd6da18dccc57', '1', '1', '2015-11-02');
INSERT INTO `oa_notify_record` VALUES ('16f70a76e63f4750a66b119a43c7b8bf', '8a14c7e5c5e2486ea004765160ee1324', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('183e673f686e4eac88928d098fa29738', '4e5f48bc8efe4ef3806bd6da18dccc57', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('1901788f02bd412fb55cc4077cfe2185', 'e48bb0cd337947dcad57ed1ba5036c0a', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('1a0e250074484b02a749934432fdb6bb', '5eb0dfee1de948348bbf7663c7c81854', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('1bf0fb492b874ae098e603849d9d39b6', '522ca59deba34f268077efd3c439eb3d', 'bb81a0c098a444e69028380e80852d91', '0', null);
INSERT INTO `oa_notify_record` VALUES ('1c1e2da9540e4f24aecbb9dc2c9050ad', '4226f5d40009414d854569158e5bcc44', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('1d318d0b5f5f452a87c70f05655f5f7a', '2757b0387e6c4449b3bac78ced1abf58', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('1ed6c0e5395743bc9397a70e403441d6', '62f6b5c97cdf4f4b995c0a498b17e405', 'bb81a0c098a444e69028380e80852d91', '0', null);
INSERT INTO `oa_notify_record` VALUES ('1fb07a1cc1f644fc887170a1e285413a', '530b93241fc9479f9c6bbadb32b65149', '13', '0', null);
INSERT INTO `oa_notify_record` VALUES ('1fc0153eeea74403acd926cbbf5a5282', '522ca59deba34f268077efd3c439eb3d', '19e655ebcd844747aa0e46efe9870169', '0', null);
INSERT INTO `oa_notify_record` VALUES ('20101e45b87143b78054b1111e24b9e4', '2055ff60abd4465c9d3c0934a2c43ba9', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('217c236ddcfd4dba94653787c845d43e', '530b93241fc9479f9c6bbadb32b65149', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('21c357badd834c2db21549d46e9a9fdd', '46a635664fb5420ea1aa533969a08301', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('21f4dcdea15e467aa1f523316084a22f', '0f0f932cdbc14629aa94aba0bb333a06', '13', '0', null);
INSERT INTO `oa_notify_record` VALUES ('22464a7fa54a48f5a9e74da1d9d3cdc2', 'e48bb0cd337947dcad57ed1ba5036c0a', '1', '1', '2015-11-04');
INSERT INTO `oa_notify_record` VALUES ('22b99ef8a77f4c70b45aa76a946cc1f3', '9b73f6e4d0ae4d23b1d98f4f8ca6873a', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('232e9f78716940c79e0bee5b3a9d8406', '62f6b5c97cdf4f4b995c0a498b17e405', '8b454376c0434e2792a1dc57edf80dbd', '0', null);
INSERT INTO `oa_notify_record` VALUES ('237577173ce04db38053a92a00888f58', '13d61fb791e64f41b94e856c3c446c1d', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('23c50ce7e5524bdea69bd0d7667ec924', '522ca59deba34f268077efd3c439eb3d', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('2439587f5ae44f30875e35b747d6bf4f', 'f6781437795d48e5a74d6d43828208b0', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('2449319c22524954aa979965a97d711e', '13d61fb791e64f41b94e856c3c446c1d', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('25ca5042702749a5b152d45315c23128', '69abb236d4a44bd3bb31cfedf273c031', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('25eeb515142d4dfdacc68588f9aaab6e', '530b93241fc9479f9c6bbadb32b65149', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('268c6f9c90c4412da5f8100ff0ac4419', '28d2622a6e0a4ab485e1c082d30c75ef', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('269d16f7aba2448ca85fc839bddeb5aa', '5eb0dfee1de948348bbf7663c7c81854', '1', '0', null);
INSERT INTO `oa_notify_record` VALUES ('26a1c2e51b9b49e2a9c4f6898620401d', 'f0dff7a394e34f82a78a510fd0ceac02', '5091ca619fbf49209bce020859103ba5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('27420747148d486a83e0c97a510cf621', '51649ecc4891453886fe523ff106ca8b', 'eca1a51b803449d59ce4e2a3b0f4f787', '0', null);
INSERT INTO `oa_notify_record` VALUES ('27733aeefa474df1b45cf257d458d21b', '39de39ff1ab74233bce9c5a913af2c9c', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('279edd0668bf48419a5c7920f443b4e7', 'cd96f7d2cffe4c268e1fe8b93940f97a', '1', '1', '2015-11-02');
INSERT INTO `oa_notify_record` VALUES ('27a5b1b79c3b4340a11560ed248d3848', 'f0dff7a394e34f82a78a510fd0ceac02', 'd8de25a1f872404e82f669c04091685e', '0', null);
INSERT INTO `oa_notify_record` VALUES ('2897158b700f47c5a888a75b7cfd34f4', 'f0dff7a394e34f82a78a510fd0ceac02', '5ad0d1f9efdc44b481b02c26b67e832e', '0', null);
INSERT INTO `oa_notify_record` VALUES ('2970f13622244ad5abf8950642d5dd9c', '8d67574047ed4d7790381fb5fc4019a8', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('29f23238716946768c4601a72fddcd9f', '28d2622a6e0a4ab485e1c082d30c75ef', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('2a3b020701644609844aed49d076a633', 'fcdd1348b7644afea196695b1eede954', '42f5435f943a4e8cbcd86ec07b1d922a', '0', null);
INSERT INTO `oa_notify_record` VALUES ('2a4b18269a21439e8a901dbaf19c040a', '1a3428088ad347269b52ed50dfcb81c9', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('2a6d81a28793421c92c8a43fee13b34f', 'e422136885a3473aa85f9f0749c75a78', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('2a747d071f46478cb92696017e5a1f66', 'd59f683455884cd18d412879d6f9d042', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('2a94503e07474794a4fb8584c637bd74', '62f6b5c97cdf4f4b995c0a498b17e405', 'f12330474f634e2897878e8f56a910ae', '0', null);
INSERT INTO `oa_notify_record` VALUES ('2aa59f1aef3a45a28dd8981cae3fdd26', '393f25fd98c34992bcc72eea2929ea63', 'a91be50880744e4787a77e0f97f8dbb5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('2ba82910271b405d9b30a2af886282b9', 'e48bb0cd337947dcad57ed1ba5036c0a', '13', '0', null);
INSERT INTO `oa_notify_record` VALUES ('2c65cb7c19894f30afa5e5f5823a9cb4', 'c00f8c9d385042949724953f9a5faed9', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('2c82ea48eb3342778fe98e6ed4e0e1d3', 'dba81703f6874b82935ca389317d6d19', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('2d1d2c74d1f04089abff3584e240f7ce', '5eb0dfee1de948348bbf7663c7c81854', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('2daf8925d62f4f3e8065d4cad373fb1b', '0191c8b6b276404881679e570778047e', 'd8de25a1f872404e82f669c04091685e', '0', null);
INSERT INTO `oa_notify_record` VALUES ('2e02843ebc4445ea88cfc3849051c212', '393f25fd98c34992bcc72eea2929ea63', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('2e793dcd78484727aff7f316eddef1bf', '88d32ebd5a5944ec92ebdf99cc00d356', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('2e7e88746e7f4964acbfe18b03c768b7', '2b14a498414b44778cc100c2032e2c5a', '5ad0d1f9efdc44b481b02c26b67e832e', '0', null);
INSERT INTO `oa_notify_record` VALUES ('2e8539e546414258a957a6b6381ba2cf', '0191c8b6b276404881679e570778047e', 'eca1a51b803449d59ce4e2a3b0f4f787', '0', null);
INSERT INTO `oa_notify_record` VALUES ('2f11d95edf194079a54431cc532e49be', '51649ecc4891453886fe523ff106ca8b', '8b454376c0434e2792a1dc57edf80dbd', '0', null);
INSERT INTO `oa_notify_record` VALUES ('2f6398d02add49d3b6b7f5f95c0c76e9', '8a14c7e5c5e2486ea004765160ee1324', '5091ca619fbf49209bce020859103ba5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('2ff4d2f6c67442a49ee0d2aa3b7428ca', '69abb236d4a44bd3bb31cfedf273c031', '6d69972a880f4228b88f28254c3e417e', '0', null);
INSERT INTO `oa_notify_record` VALUES ('2ffe4f7f7b6a4c7a8a82a4e9de42b4b8', '0f0f932cdbc14629aa94aba0bb333a06', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('3020be690bc844b9b9e35318ff3a1687', 'e422136885a3473aa85f9f0749c75a78', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('307faab2d5ab4011a2914ba67dde62e4', '62f6b5c97cdf4f4b995c0a498b17e405', '6474fda3f35c4d1580b646a42f190cf7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('311da526bea74230b30d5c55b8104bb7', 'f0dff7a394e34f82a78a510fd0ceac02', '3f7ef2d4761f445e946413ab9bea23db', '0', null);
INSERT INTO `oa_notify_record` VALUES ('317cf30ce990477e828ea3751f451d96', '14535c661515479f954cf3a192a6329f', 'a91be50880744e4787a77e0f97f8dbb5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('32345dd46c454886895cccee8d8f751f', '2757b0387e6c4449b3bac78ced1abf58', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('32901be5326240d682547e52d59f1e10', 'f0dff7a394e34f82a78a510fd0ceac02', '8b454376c0434e2792a1dc57edf80dbd', '1', '2015-12-30');
INSERT INTO `oa_notify_record` VALUES ('338798d1b703474f9bbfd8553d3f19ba', '51649ecc4891453886fe523ff106ca8b', '1', '1', '2015-12-29');
INSERT INTO `oa_notify_record` VALUES ('33e464651eaf48c3bb59c1c7cc21cebf', '03da36624829477493bfc949f22efdec', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('3418319ca4ac4b578ffe35fbe2cd7a62', '522ca59deba34f268077efd3c439eb3d', 'd8de25a1f872404e82f669c04091685e', '0', null);
INSERT INTO `oa_notify_record` VALUES ('341e0fdecb1c4f4ea068022b00bb895d', 'e2ae2d875fda4f0d9e9db79954c05834', '1', '0', null);
INSERT INTO `oa_notify_record` VALUES ('343004d7fd7945dd976d1a2cf4a8fe30', 'e422136885a3473aa85f9f0749c75a78', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('3461e1303b8a4354880699d5a3ee5375', '39de39ff1ab74233bce9c5a913af2c9c', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('353b4871cf0d4617a25144f422f013c0', '8ae80eff98be40aa9acdd2a01e6920ef', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('35b746552e4a4f09909764f48fb1c60f', '4e5f48bc8efe4ef3806bd6da18dccc57', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('35c1bf047c6e4a4290f960cbdb94def1', '2757b0387e6c4449b3bac78ced1abf58', '13', '0', null);
INSERT INTO `oa_notify_record` VALUES ('3615368d503f42c484f2c1ce2a07dc9f', '8a14c7e5c5e2486ea004765160ee1324', '6474fda3f35c4d1580b646a42f190cf7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('361ec31d41124d1cab915e5ec0b6b8c2', '530b93241fc9479f9c6bbadb32b65149', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('36be1372b7724a8a98446e9bab4e8036', '2b14a498414b44778cc100c2032e2c5a', '5091ca619fbf49209bce020859103ba5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('36d7f28ceed64c7d909865591ec52776', 'd59f683455884cd18d412879d6f9d042', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('36ff9d8c226743bf8991de37b870b3c1', 'cc4ca4ce262247adb662c3ce2631a1db', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('3896f3b4510b43469f89154c961a923c', '7fe83bb7ca9a413bb37acac91215ea16', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('389b4660180d476b9c627ed1b55960fc', '8a14c7e5c5e2486ea004765160ee1324', '19e655ebcd844747aa0e46efe9870169', '0', null);
INSERT INTO `oa_notify_record` VALUES ('38e41df06ac244d3aa5130edd0a05860', '8d67574047ed4d7790381fb5fc4019a8', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('39198cfca8314a9c83d56601ab5be45e', '638da80f1e8f4fc28c421d8febc9a7fe', '95b3b09fa0b34ac6b95907237c744c55', '0', null);
INSERT INTO `oa_notify_record` VALUES ('3a88ec8423be4b158a5e3a92cd941739', 'fcdd1348b7644afea196695b1eede954', 'cb359e3089224f97adae46cf03c0ed94', '1', '2015-12-29');
INSERT INTO `oa_notify_record` VALUES ('3acabde7fda544c3ac54847f7303205e', '39de39ff1ab74233bce9c5a913af2c9c', '13', '0', null);
INSERT INTO `oa_notify_record` VALUES ('3bce6879db944107bc9e9cd18b409ab1', 'f6781437795d48e5a74d6d43828208b0', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('3bf00fb38999402c94863d29392a6c0d', '8d67574047ed4d7790381fb5fc4019a8', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('3ce7a1c4ecf74d059a82101221bf41da', '0191c8b6b276404881679e570778047e', '3f7ef2d4761f445e946413ab9bea23db', '0', null);
INSERT INTO `oa_notify_record` VALUES ('3d064a881d804414bd29169f4d863897', '51649ecc4891453886fe523ff106ca8b', '3f7ef2d4761f445e946413ab9bea23db', '0', null);
INSERT INTO `oa_notify_record` VALUES ('3d471f3d98454d05b1838c936e08a966', '13d61fb791e64f41b94e856c3c446c1d', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('3d5c1a31ec244b30b5fbfdc853e24b87', '0191c8b6b276404881679e570778047e', '1', '1', '2015-12-29');
INSERT INTO `oa_notify_record` VALUES ('3d5fc0647f0c4c28b39d6e2dd7eb0450', '14535c661515479f954cf3a192a6329f', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('3d8fc36c4eb5422aaf7fe862a133c3f7', '4226f5d40009414d854569158e5bcc44', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('3e4827a8666d480ab2bf1d6ff07ada72', '0191c8b6b276404881679e570778047e', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('3ed170c1a0fd4bb0a54fce8eb4f8bd87', '69abb236d4a44bd3bb31cfedf273c031', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('3f060ba3417f42059e87202299440b79', '638da80f1e8f4fc28c421d8febc9a7fe', 'da60c61cf2aa4cb2810c629c7045c538', '0', null);
INSERT INTO `oa_notify_record` VALUES ('3f668ebcef7a44e8bfb41d1c9a0afba0', 'f0dff7a394e34f82a78a510fd0ceac02', 'dc9663e71aaa42f0a2634770896ec74c', '0', null);
INSERT INTO `oa_notify_record` VALUES ('4006c5e40918462a82b9ec4c71bde096', '7fe83bb7ca9a413bb37acac91215ea16', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('40a8a7ffe0174214933f3371e8dc44fd', '638da80f1e8f4fc28c421d8febc9a7fe', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('40ba6246aeb2421cbf00478c56f49177', 'f6781437795d48e5a74d6d43828208b0', '6d69972a880f4228b88f28254c3e417e', '0', null);
INSERT INTO `oa_notify_record` VALUES ('40d9f26c9fc74e27a59b7cf9dc9b0754', '5eb0dfee1de948348bbf7663c7c81854', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('413a9f7aefae4e0285b85b227105a73a', '227b389e540f4beb85a4448e00beac5d', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('4162182718d34e77b7c7b75f1b589be5', '5eb0dfee1de948348bbf7663c7c81854', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('416c466cabf94d22ba9004d15e855ed5', 'cd96f7d2cffe4c268e1fe8b93940f97a', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('417db99fa1be43609ef8ec8c689a5ac1', '69abb236d4a44bd3bb31cfedf273c031', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('41aa771e12b640a7a5298856d931f509', '8ae80eff98be40aa9acdd2a01e6920ef', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('425ec366949a415e8442078ec724b984', '62f6b5c97cdf4f4b995c0a498b17e405', '5ad0d1f9efdc44b481b02c26b67e832e', '0', null);
INSERT INTO `oa_notify_record` VALUES ('4388767f6c764e1bab5212b13607c7f5', 'c76b572ff8884896a16a42c08ff2da95', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('43a38799e8a14753a2a982a5630b1b89', '227b389e540f4beb85a4448e00beac5d', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('44cdc8be0a8948128fba4893f5fb3a5b', 'e48bb0cd337947dcad57ed1ba5036c0a', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('450eaf08451e4a4794848d43401b9981', '03da36624829477493bfc949f22efdec', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('45ce15d94c054127b15cfb41efd96941', '2b14a498414b44778cc100c2032e2c5a', 'd8de25a1f872404e82f669c04091685e', '0', null);
INSERT INTO `oa_notify_record` VALUES ('45f3c5ce94064517a0d6e830b67609bd', '0f0f932cdbc14629aa94aba0bb333a06', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('463328a1ab9f41df96c8ff0a87247144', 'f3b7b7409d6642ac9e1249011915b65f', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('46433f11f8b7465eab48b4e811694b33', 'c3ac32da72644cd0805fa663bed26edf', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('46cd679cea0d4054ac8e4a8903f4d745', '51649ecc4891453886fe523ff106ca8b', '5ad0d1f9efdc44b481b02c26b67e832e', '0', null);
INSERT INTO `oa_notify_record` VALUES ('4833fde6fc8443f0b76ca50c832f2c1c', '62f6b5c97cdf4f4b995c0a498b17e405', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('48de75c163544a28ae932390be1adfd0', 'e422136885a3473aa85f9f0749c75a78', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('48ee859184cb406aa1c252af9d74c80e', '48e71d295aed4d1c94eced78488abce1', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('49eba45da2f9450c9e5463d9d55e2fe6', '227b389e540f4beb85a4448e00beac5d', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('4a1c1a2bec3244d59ff5708c5371ce84', '14535c661515479f954cf3a192a6329f', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('4ae08812cf9f45d2b235804ce36fab55', 'c3ac32da72644cd0805fa663bed26edf', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('4b56ebdbb410457ea46a4519de96f937', '39de39ff1ab74233bce9c5a913af2c9c', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('4bb40a80ddfe42338014f44bd9699bf3', '8edf34dd574340a7aa2bc587b025eb92', '45f8002c452d4a54a82f113379c7b853', '0', null);
INSERT INTO `oa_notify_record` VALUES ('4bc1914b12d34708987123ee6c971c9a', '88d32ebd5a5944ec92ebdf99cc00d356', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('4bc26730c5384df1b08113ebd5de6d12', '2b14a498414b44778cc100c2032e2c5a', '19e655ebcd844747aa0e46efe9870169', '0', null);
INSERT INTO `oa_notify_record` VALUES ('4bed33efd3644eff8f7b9ecfd6231a4d', 'cd96f7d2cffe4c268e1fe8b93940f97a', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('4c04c800c11e41dfaabe5a2a083128f4', '2b14a498414b44778cc100c2032e2c5a', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('4cb99ad6b0d6455692e64a02d4ed9965', 'cc4ca4ce262247adb662c3ce2631a1db', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('4cc6e7818efe4fc6bd54c1b7689d4cb6', '69abb236d4a44bd3bb31cfedf273c031', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('4cf31423094a4015b44cdb5e742b5cbc', '4226f5d40009414d854569158e5bcc44', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('4d4f54b5dba6466eaa7a456d81ee8c02', '0191c8b6b276404881679e570778047e', '6474fda3f35c4d1580b646a42f190cf7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('4d89673c81464514b8353093298183f5', '7fe83bb7ca9a413bb37acac91215ea16', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('4db762cce06648df8eb43678985e2d9b', 'e422136885a3473aa85f9f0749c75a78', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('4e1190423b664b57864fd2a26ecba10a', '88d32ebd5a5944ec92ebdf99cc00d356', '13', '0', null);
INSERT INTO `oa_notify_record` VALUES ('4ebcf28ce43449c0bc65e50f9bfd1336', 'f0dff7a394e34f82a78a510fd0ceac02', '42f5435f943a4e8cbcd86ec07b1d922a', '0', null);
INSERT INTO `oa_notify_record` VALUES ('4edd3bd42e4b41af873d085e68a577dc', '393f25fd98c34992bcc72eea2929ea63', '1', '1', '2015-11-25');
INSERT INTO `oa_notify_record` VALUES ('4f01ed52d8464503afbc65226afec24b', '51649ecc4891453886fe523ff106ca8b', 'f12330474f634e2897878e8f56a910ae', '0', null);
INSERT INTO `oa_notify_record` VALUES ('4fad66ba10a64fd48b0ad3462c99d149', '2055ff60abd4465c9d3c0934a2c43ba9', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('50ff85571d574987b07a2c44cf7853ca', '0191c8b6b276404881679e570778047e', '95b3b09fa0b34ac6b95907237c744c55', '0', null);
INSERT INTO `oa_notify_record` VALUES ('512938e286d5471db35224901108d7e4', '8a14c7e5c5e2486ea004765160ee1324', '95b3b09fa0b34ac6b95907237c744c55', '0', null);
INSERT INTO `oa_notify_record` VALUES ('512fa1b1ca314d00b682ae98c7848e60', '530b93241fc9479f9c6bbadb32b65149', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('5132f793fb4d4a1ba74eb25875d67726', 'f6781437795d48e5a74d6d43828208b0', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('5149a7b436184a83b2c2586ecada077e', '4e5f48bc8efe4ef3806bd6da18dccc57', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('521e2594726148bfa8c138f6e946c631', '1a3428088ad347269b52ed50dfcb81c9', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('5241ab188131470ea29dac046e43daf8', '2b14a498414b44778cc100c2032e2c5a', '95b3b09fa0b34ac6b95907237c744c55', '0', null);
INSERT INTO `oa_notify_record` VALUES ('52c835cebc2441d7bf8d7ca01176602b', '0f0f932cdbc14629aa94aba0bb333a06', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('52f5b3ad56434be29bfa91b4170f2b07', '46a635664fb5420ea1aa533969a08301', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('53562384f9ef450385e0f4297bd1699c', '28d2622a6e0a4ab485e1c082d30c75ef', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('535b945c7ca740ab80acaf8ea1ab8dd0', '51649ecc4891453886fe523ff106ca8b', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('53ea00e27c4142c5844f2026bcc78732', '0f0f932cdbc14629aa94aba0bb333a06', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('5422baf92b604aefba2d44bf35bd730b', '14535c661515479f954cf3a192a6329f', 'da60c61cf2aa4cb2810c629c7045c538', '0', null);
INSERT INTO `oa_notify_record` VALUES ('5517916299d5499da057d150fcddf81a', 'c76b572ff8884896a16a42c08ff2da95', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('55aa46a9e2dd405e9874985f0992f399', '8a14c7e5c5e2486ea004765160ee1324', 'd355e9e6b4ad48a59fa0a983e8b7b583', '0', null);
INSERT INTO `oa_notify_record` VALUES ('56614b3b7ae44ad392a294b65f8647f6', '2757b0387e6c4449b3bac78ced1abf58', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('5672621a91514c5eae1b7f31a6a0bd99', 'c76b572ff8884896a16a42c08ff2da95', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('56884d430e1a404296321da42e6fae46', 'cc4ca4ce262247adb662c3ce2631a1db', '1', '1', '2015-11-02');
INSERT INTO `oa_notify_record` VALUES ('568ba891f97e4b03bd451ec0fd78f451', '393f25fd98c34992bcc72eea2929ea63', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('56b951000fb74b85bc0f01ecfc41417a', '4e5f48bc8efe4ef3806bd6da18dccc57', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('57035b07bd9c4abbb2abd19c76f22cdb', 'f3b7b7409d6642ac9e1249011915b65f', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('577ab929dc96447cb18a74e44078558c', '03da36624829477493bfc949f22efdec', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('57fd0ecd6dc74880ba33257f49ec63e5', '39de39ff1ab74233bce9c5a913af2c9c', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('581102bbc6a24f23b6f405f22ed8863b', '393f25fd98c34992bcc72eea2929ea63', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('581a7e26f0514e499350dd1dfc1eaef0', 'c00f8c9d385042949724953f9a5faed9', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('5850d21b1edc4e25a35c3ab828ac4576', '2b14a498414b44778cc100c2032e2c5a', 'da60c61cf2aa4cb2810c629c7045c538', '0', null);
INSERT INTO `oa_notify_record` VALUES ('58f319630e8449b8b1764a75036f4370', '51649ecc4891453886fe523ff106ca8b', 'bb81a0c098a444e69028380e80852d91', '0', null);
INSERT INTO `oa_notify_record` VALUES ('5920c7f4bdde4f8f8a1415edb1cba648', '522ca59deba34f268077efd3c439eb3d', '3f7ef2d4761f445e946413ab9bea23db', '0', null);
INSERT INTO `oa_notify_record` VALUES ('59245e202fd34519ba4fdc026b0773db', '638da80f1e8f4fc28c421d8febc9a7fe', 'f12330474f634e2897878e8f56a910ae', '0', null);
INSERT INTO `oa_notify_record` VALUES ('5a9ceb8416a148f8903bfb67034d3277', '5eb0dfee1de948348bbf7663c7c81854', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('5b3515b607e34e98bfc890761b518a34', 'c3ac32da72644cd0805fa663bed26edf', '1', '0', null);
INSERT INTO `oa_notify_record` VALUES ('5ce4e28a776d4be7a1749eea91e0cc86', '62f6b5c97cdf4f4b995c0a498b17e405', '42f5435f943a4e8cbcd86ec07b1d922a', '0', null);
INSERT INTO `oa_notify_record` VALUES ('5d3d01defc544a02854772b15d2e3833', 'd59f683455884cd18d412879d6f9d042', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('5e5a8b89bf9a4f8fafaae4a43b26fee2', '14535c661515479f954cf3a192a6329f', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('5fe793461af040de9dbf4106ee7e2d03', '88d32ebd5a5944ec92ebdf99cc00d356', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('5fe97d5c00ee4939b7034ea09604af21', 'dba81703f6874b82935ca389317d6d19', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('601a567b43bd4b50b5ff2f0a44493ee3', 'c3ac32da72644cd0805fa663bed26edf', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('608f6b3bcbe14c078ecf3d6f2b47a92b', 'f3b7b7409d6642ac9e1249011915b65f', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('60d8e97334bc466abb7a0bbb6e1af211', 'c76b572ff8884896a16a42c08ff2da95', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('610470697e63452fb9949d102a198ff7', '0f0f932cdbc14629aa94aba0bb333a06', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('61301757b08c472aafcb1546c9027401', '530b93241fc9479f9c6bbadb32b65149', '1', '1', '2015-11-02');
INSERT INTO `oa_notify_record` VALUES ('63840ee62744455184f32f5113a83adf', '4226f5d40009414d854569158e5bcc44', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('63d4997a249d4072871ef306eb07f096', '2055ff60abd4465c9d3c0934a2c43ba9', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('63dff4dcb7b244d185c4046e2e84101a', 'e422136885a3473aa85f9f0749c75a78', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('64a18f8c903042a493ccd30ad0022ef4', '13d61fb791e64f41b94e856c3c446c1d', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('64aef030afb148dd8b266ad6a546c97c', '0191c8b6b276404881679e570778047e', 'da60c61cf2aa4cb2810c629c7045c538', '0', null);
INSERT INTO `oa_notify_record` VALUES ('6541da05751d41f2844854313ee1bb54', '03da36624829477493bfc949f22efdec', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('656f85ac84d7427b95eb830a1f778682', '522ca59deba34f268077efd3c439eb3d', '6474fda3f35c4d1580b646a42f190cf7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('65d36f48798b439085a6c5765907e574', '1a3428088ad347269b52ed50dfcb81c9', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('65d7ccedec614dadab164ab8a93b2324', 'f0dff7a394e34f82a78a510fd0ceac02', 'cb359e3089224f97adae46cf03c0ed94', '0', null);
INSERT INTO `oa_notify_record` VALUES ('669fecb01b864c1d9e8b8a84eaaaf614', '0191c8b6b276404881679e570778047e', 'dc9663e71aaa42f0a2634770896ec74c', '0', null);
INSERT INTO `oa_notify_record` VALUES ('66cd8e14bb2c4e2d986ea1e9f51d4018', 'fcdd1348b7644afea196695b1eede954', 'd355e9e6b4ad48a59fa0a983e8b7b583', '0', null);
INSERT INTO `oa_notify_record` VALUES ('66e6543cd7e84e33b5598e9dcc48521f', '8edf34dd574340a7aa2bc587b025eb92', '1690569548d2400b893e4348b5445468', '0', null);
INSERT INTO `oa_notify_record` VALUES ('66f666ee5c954284921372878a65b053', 'e2ae2d875fda4f0d9e9db79954c05834', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('6708fc9aea3e4f7fb130c45406642ed8', '638da80f1e8f4fc28c421d8febc9a7fe', 'd8de25a1f872404e82f669c04091685e', '0', null);
INSERT INTO `oa_notify_record` VALUES ('6766c88ba16c4dc897d30630cd977fe0', '4e5f48bc8efe4ef3806bd6da18dccc57', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('67caa45f8e1f4509bdba23a4d2b2f1a4', '522ca59deba34f268077efd3c439eb3d', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('68abdc34a85045b882929694d338aee0', '2b14a498414b44778cc100c2032e2c5a', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('68e77b6e76fd4c33b384f74790cf2f1e', 'f0dff7a394e34f82a78a510fd0ceac02', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('695bf65cdd3544d1904d7ffb7676d7dd', '14535c661515479f954cf3a192a6329f', '1', '1', '2015-12-01');
INSERT INTO `oa_notify_record` VALUES ('69fa50beff4345468dd6fc128e11c8b9', '69abb236d4a44bd3bb31cfedf273c031', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('6a07525fb76c493684b9ecdab28cafd7', 'f0dff7a394e34f82a78a510fd0ceac02', '95b3b09fa0b34ac6b95907237c744c55', '0', null);
INSERT INTO `oa_notify_record` VALUES ('6a49f47babe245f69893250e1fd12a63', '1a3428088ad347269b52ed50dfcb81c9', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('6a942589ff4945cea45add8425b9a80f', 'f0dff7a394e34f82a78a510fd0ceac02', 'd355e9e6b4ad48a59fa0a983e8b7b583', '0', null);
INSERT INTO `oa_notify_record` VALUES ('6ae4a85fd1a440a6a2d5f8b41d71434e', '62f6b5c97cdf4f4b995c0a498b17e405', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('6b0e0c8d96d74ee983049e9ee113800e', '13d61fb791e64f41b94e856c3c446c1d', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('6b1e1d7eba2e4b8aa08d20e1a09efad5', 'c3ac32da72644cd0805fa663bed26edf', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('6b7120852b9a4088973887a2949e7a40', '8a14c7e5c5e2486ea004765160ee1324', '5b61eb41f80f43c5b8e485866178f63d', '0', null);
INSERT INTO `oa_notify_record` VALUES ('6c32e84673a44621a495889b0a9d650f', '62f6b5c97cdf4f4b995c0a498b17e405', 'd355e9e6b4ad48a59fa0a983e8b7b583', '0', null);
INSERT INTO `oa_notify_record` VALUES ('6ca3628c80ae405b9bab275811a6821e', '8a14c7e5c5e2486ea004765160ee1324', 'dc9663e71aaa42f0a2634770896ec74c', '0', null);
INSERT INTO `oa_notify_record` VALUES ('6e1c509a80154f2eb23dd393eeb7f10c', 'e2ae2d875fda4f0d9e9db79954c05834', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('6e416c04f02d4ae0a9a7a797297f4267', '48e71d295aed4d1c94eced78488abce1', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('6e7bab211b124eb6a5568fc7da8e97c4', '9b73f6e4d0ae4d23b1d98f4f8ca6873a', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('6eb330d6028844e38449975d409e6da8', 'e422136885a3473aa85f9f0749c75a78', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('6ecc67f6716d464b8d0f8fc4b4803511', '522ca59deba34f268077efd3c439eb3d', '5ad0d1f9efdc44b481b02c26b67e832e', '0', null);
INSERT INTO `oa_notify_record` VALUES ('6ee84da951b24cf9b6bd06b8943cdc68', '2757b0387e6c4449b3bac78ced1abf58', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('6f391de4e20140008be560273c019b4a', '227b389e540f4beb85a4448e00beac5d', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('6f8693fc2ed94267be4822d739e482bf', '530b93241fc9479f9c6bbadb32b65149', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('6fdaf302c3c6401e98329f41c42dc79e', '8a14c7e5c5e2486ea004765160ee1324', 'd8de25a1f872404e82f669c04091685e', '0', null);
INSERT INTO `oa_notify_record` VALUES ('706c0c68703f4c38b02af365f70242bd', 'fcdd1348b7644afea196695b1eede954', '8b454376c0434e2792a1dc57edf80dbd', '0', null);
INSERT INTO `oa_notify_record` VALUES ('706c1e8c108846508c0ad01ee79ef0b0', 'f6781437795d48e5a74d6d43828208b0', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('70e80661bf424ab48a6ed9aeb41a1f72', '7fe83bb7ca9a413bb37acac91215ea16', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('712419847c7c4eb1b69a2983d945835b', 'cd96f7d2cffe4c268e1fe8b93940f97a', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('713b3f1697a0464c827b1866d1b23b47', '88d32ebd5a5944ec92ebdf99cc00d356', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('7154a93378be4a3fb7eb5e08ebca17c1', '2b14a498414b44778cc100c2032e2c5a', '4639f877ec7149258cadcf145b4182a7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('71f689059f7f4e2eafe7715e9e79f388', 'c00f8c9d385042949724953f9a5faed9', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('724eb2ce1b814180bb863255c28d769f', 'fcdd1348b7644afea196695b1eede954', '6474fda3f35c4d1580b646a42f190cf7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('73a34da0334c442cb14fdfe7d5a86607', '62f6b5c97cdf4f4b995c0a498b17e405', '95b3b09fa0b34ac6b95907237c744c55', '0', null);
INSERT INTO `oa_notify_record` VALUES ('7419da59b03e4d598b40f63946a62373', 'fcdd1348b7644afea196695b1eede954', 'da60c61cf2aa4cb2810c629c7045c538', '0', null);
INSERT INTO `oa_notify_record` VALUES ('7444ff91051847718c1c13cc01505086', '51649ecc4891453886fe523ff106ca8b', 'd42378c9621b4551a0c4c63c82f0aa33', '0', null);
INSERT INTO `oa_notify_record` VALUES ('74873fae448d409d8e1b349f5edc8d53', '0f0f932cdbc14629aa94aba0bb333a06', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('74d41bcb22f847769f4dba652a6b679b', '2b14a498414b44778cc100c2032e2c5a', 'eca1a51b803449d59ce4e2a3b0f4f787', '0', null);
INSERT INTO `oa_notify_record` VALUES ('75b418d60a3e489d8321ac79ce858a10', '88d32ebd5a5944ec92ebdf99cc00d356', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('7621db2bda3440b3bc090f6b481067c0', '522ca59deba34f268077efd3c439eb3d', '42f5435f943a4e8cbcd86ec07b1d922a', '0', null);
INSERT INTO `oa_notify_record` VALUES ('76c819e6e6524258b43221afe2e4706e', 'f6781437795d48e5a74d6d43828208b0', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('76cd8a83f9954c1a865414bb6fcb7520', '393f25fd98c34992bcc72eea2929ea63', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('76eaf39ea9334a1a9e1a1709de7de406', '2757b0387e6c4449b3bac78ced1abf58', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('778cc57bb2184e38a74c60c818f1bbbd', '0191c8b6b276404881679e570778047e', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('78140dff2a2d4eb287d8a9e3fd11fc12', '638da80f1e8f4fc28c421d8febc9a7fe', 'bb81a0c098a444e69028380e80852d91', '0', null);
INSERT INTO `oa_notify_record` VALUES ('78269df9b73341f394ac6ddfd6d8ed60', '0191c8b6b276404881679e570778047e', '8b454376c0434e2792a1dc57edf80dbd', '1', '2015-12-30');
INSERT INTO `oa_notify_record` VALUES ('7898efe914094ac3aba45a1ba92fb197', '48e71d295aed4d1c94eced78488abce1', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('79ea0462c97a4455b46ab585f42d01a6', '638da80f1e8f4fc28c421d8febc9a7fe', '5091ca619fbf49209bce020859103ba5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('7ad31142d0344ec38c61992bcd2546d0', '8edf34dd574340a7aa2bc587b025eb92', 'cb176ef0bce14c80ac5c2809861b560a', '0', null);
INSERT INTO `oa_notify_record` VALUES ('7ae530a74583460a839184e24fd06a8e', '48e71d295aed4d1c94eced78488abce1', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('7af21cb1379d493a87455c036f412ed5', '4e5f48bc8efe4ef3806bd6da18dccc57', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('7b89ebfcffd341508c4f5c1f78adb0d4', '4e5f48bc8efe4ef3806bd6da18dccc57', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('7b9837a645ae4673842590e0be89b8a9', '638da80f1e8f4fc28c421d8febc9a7fe', '1', '1', '2015-12-29');
INSERT INTO `oa_notify_record` VALUES ('7c37fb05d9d14211b7400263ddf7de11', '2757b0387e6c4449b3bac78ced1abf58', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('7ca3121ddb3743bfae53bf6b30ed8393', '39de39ff1ab74233bce9c5a913af2c9c', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('7d5466bcb26e42b7bc1c11e9c000991e', '522ca59deba34f268077efd3c439eb3d', '95b3b09fa0b34ac6b95907237c744c55', '0', null);
INSERT INTO `oa_notify_record` VALUES ('7ebc430668a5429987b77a3d2f0d73fb', 'cd96f7d2cffe4c268e1fe8b93940f97a', '13', '0', null);
INSERT INTO `oa_notify_record` VALUES ('7f4499dcc4b84b50b4225ca2329f4152', '8ae80eff98be40aa9acdd2a01e6920ef', '13', '0', null);
INSERT INTO `oa_notify_record` VALUES ('80837ebad4944f95b208e6e97b4f1339', '2b14a498414b44778cc100c2032e2c5a', 'd355e9e6b4ad48a59fa0a983e8b7b583', '0', null);
INSERT INTO `oa_notify_record` VALUES ('80a94cf8487b41d1b462786fdacb1233', '51649ecc4891453886fe523ff106ca8b', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('80f4190b09d64ba8a9252629945e1d37', '8a14c7e5c5e2486ea004765160ee1324', 'eca1a51b803449d59ce4e2a3b0f4f787', '0', null);
INSERT INTO `oa_notify_record` VALUES ('812a85731ccb452e896308c59043615e', '9b73f6e4d0ae4d23b1d98f4f8ca6873a', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('81a00fd99d02423295a2fb3e3fc76a19', 'e48bb0cd337947dcad57ed1ba5036c0a', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('81b4d981487e444a9b39dd0f440ca61e', '8d67574047ed4d7790381fb5fc4019a8', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('81f58f5abe754ba8a222c166c34a1ece', '2757b0387e6c4449b3bac78ced1abf58', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('8229e8f042964cb8a9c0bdc60a124dde', '98d77ab7e8384d8894441a4079dea800', '1690569548d2400b893e4348b5445468', '0', null);
INSERT INTO `oa_notify_record` VALUES ('830f034e34684495a98114b2a7dd9685', '48e71d295aed4d1c94eced78488abce1', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('833e6f4dd6a7460abac322406e275b91', 'cc4ca4ce262247adb662c3ce2631a1db', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('83b14099f3da4793ab0cf3328d0b343a', 'c00f8c9d385042949724953f9a5faed9', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('85848f47671d4105b07c3ed1b6eba68f', '69abb236d4a44bd3bb31cfedf273c031', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('8589646bb1ec4eb48ac33ad4949b6fa4', '4226f5d40009414d854569158e5bcc44', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('859f6d7f9a3f46fba44cb6dda39748db', 'e48bb0cd337947dcad57ed1ba5036c0a', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('860e085f2c4a445590e62f935cce2ac3', 'c3ac32da72644cd0805fa663bed26edf', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('866df98865584998bc8b4391524deca2', 'c00f8c9d385042949724953f9a5faed9', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('86b1eba867be4b58b8a166d57684a483', '393f25fd98c34992bcc72eea2929ea63', '6d69972a880f4228b88f28254c3e417e', '0', null);
INSERT INTO `oa_notify_record` VALUES ('870167924d014d90a4dd8cf1ebc0b8b3', '03da36624829477493bfc949f22efdec', '1', '1', '2015-11-02');
INSERT INTO `oa_notify_record` VALUES ('873290e045ff4ceaa19906bc3d95fbf6', '8ae80eff98be40aa9acdd2a01e6920ef', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('873b0ad5aef84258bbb8fb05137ed187', 'c76b572ff8884896a16a42c08ff2da95', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('879badfbf1df453b888c942ba6f3bf12', 'c3ac32da72644cd0805fa663bed26edf', 'a91be50880744e4787a77e0f97f8dbb5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('890d19ab048a4f3cb9db8e4282066f88', '638da80f1e8f4fc28c421d8febc9a7fe', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('893417a5b0ef44b0adf0607b5ffe3abf', 'cc4ca4ce262247adb662c3ce2631a1db', '13', '0', null);
INSERT INTO `oa_notify_record` VALUES ('89395dfda2054fa7a8676d70d1355f8c', 'fcdd1348b7644afea196695b1eede954', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('8a84c85a5ff445a09e78b5040c93e517', '530b93241fc9479f9c6bbadb32b65149', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('8a89abc54ea440f693b64576359adcd4', 'c00f8c9d385042949724953f9a5faed9', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('8baa938361644ee0b3d770bd47edecb4', '62f6b5c97cdf4f4b995c0a498b17e405', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('8bb1845d1d86428fb5934cd33e7899db', 'c00f8c9d385042949724953f9a5faed9', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('8c20d024720d419f8187f928781432c9', 'f3b7b7409d6642ac9e1249011915b65f', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('8c9c6f8723c54384be0b925b06f9cb83', 'cc4ca4ce262247adb662c3ce2631a1db', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('8cd770282c8b4a5ba6be9b97fd3c6e75', '8d67574047ed4d7790381fb5fc4019a8', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('8d0de484fa364d21a32b4cffc0510538', '51649ecc4891453886fe523ff106ca8b', '4639f877ec7149258cadcf145b4182a7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('8d5c617d85364b13abf4c846aa4557b6', 'f6781437795d48e5a74d6d43828208b0', '1', '0', null);
INSERT INTO `oa_notify_record` VALUES ('8deda12d044b4c098729256e9e147af3', '8d67574047ed4d7790381fb5fc4019a8', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('8e2f08eaf87643d1abe709d403f1b7e3', '393f25fd98c34992bcc72eea2929ea63', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('8e61a4b0bce949f28532d81946e9e073', 'c00f8c9d385042949724953f9a5faed9', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('8e7cf24b278e4b50b2a74855a4732348', '48e71d295aed4d1c94eced78488abce1', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('8f1d47eacea5458999d1a5e3f1d7744f', '7fe83bb7ca9a413bb37acac91215ea16', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('8f1e413a0c674d40bb8e77ec2a683dca', '2b14a498414b44778cc100c2032e2c5a', 'dc9663e71aaa42f0a2634770896ec74c', '0', null);
INSERT INTO `oa_notify_record` VALUES ('8f8ef225a4c44d54b2b0de7424356cef', '8a14c7e5c5e2486ea004765160ee1324', 'da60c61cf2aa4cb2810c629c7045c538', '0', null);
INSERT INTO `oa_notify_record` VALUES ('8f93f79e9fa84406be7db95e921f1eff', '51649ecc4891453886fe523ff106ca8b', '5b61eb41f80f43c5b8e485866178f63d', '0', null);
INSERT INTO `oa_notify_record` VALUES ('8fb33dc7a96f49108ec49df22b4c1c10', '03da36624829477493bfc949f22efdec', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('8fb6e938a5d649cf805781a57713d884', 'e2ae2d875fda4f0d9e9db79954c05834', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('904050c4d47445a2b43d70d813dc046d', '8a14c7e5c5e2486ea004765160ee1324', '1', '0', null);
INSERT INTO `oa_notify_record` VALUES ('907033fbc00845b593c93f98edc16910', '4e5f48bc8efe4ef3806bd6da18dccc57', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('91406f57ade64bf5938e070382e2572f', 'c76b572ff8884896a16a42c08ff2da95', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('914521f1479f4b7ca3a03cf4bb7394c3', 'fcdd1348b7644afea196695b1eede954', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('91c7cb4598f64463b20d302ffb98efd1', '522ca59deba34f268077efd3c439eb3d', 'eca1a51b803449d59ce4e2a3b0f4f787', '0', null);
INSERT INTO `oa_notify_record` VALUES ('9207ddeae4c441c2aaa257de50bb1f73', '88d32ebd5a5944ec92ebdf99cc00d356', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('92451d3270e945d18ee150ce9aff3a5b', '51649ecc4891453886fe523ff106ca8b', 'd8de25a1f872404e82f669c04091685e', '0', null);
INSERT INTO `oa_notify_record` VALUES ('924c40c7046b40e2b2afc2a81b50e7ef', '03da36624829477493bfc949f22efdec', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('92b73e2b46ba404e9e1d79a0113052e7', 'dba81703f6874b82935ca389317d6d19', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('93738b75636d433c956c2f8e81299bb2', 'dba81703f6874b82935ca389317d6d19', '13', '0', null);
INSERT INTO `oa_notify_record` VALUES ('93d11da075ab4e5eb33ff97e4a700396', '46a635664fb5420ea1aa533969a08301', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('93ebeae9b44744448e8bfcbba71d3d8d', '4e5f48bc8efe4ef3806bd6da18dccc57', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('948debc47d6f4b01b6b70e6655bc0e52', 'f0dff7a394e34f82a78a510fd0ceac02', '19e655ebcd844747aa0e46efe9870169', '0', null);
INSERT INTO `oa_notify_record` VALUES ('95531c9f86b4467ab8ad782f6f6be2c6', '0191c8b6b276404881679e570778047e', '4639f877ec7149258cadcf145b4182a7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('958fb34bb53a48a899bb4a061af5c27a', '2055ff60abd4465c9d3c0934a2c43ba9', '1', '1', '2015-11-06');
INSERT INTO `oa_notify_record` VALUES ('96630330da9444be8cd5e8b0c23fb1ee', '0f0f932cdbc14629aa94aba0bb333a06', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('96a3977ca4a145ba89c1006eac9162a8', '8d67574047ed4d7790381fb5fc4019a8', '13', '0', null);
INSERT INTO `oa_notify_record` VALUES ('970c7d463aff4fd98a084a9f8ff5bcc0', '88d32ebd5a5944ec92ebdf99cc00d356', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('97bfc585e3c749bcae0133543bf9f41e', '2055ff60abd4465c9d3c0934a2c43ba9', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('9887728824c8409b8173b0af757feee0', 'e422136885a3473aa85f9f0749c75a78', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('9897c896475345e8b8955d9b240144bb', '48e71d295aed4d1c94eced78488abce1', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('995d084ff2014a9d87198ab81d8a643a', '522ca59deba34f268077efd3c439eb3d', 'f12330474f634e2897878e8f56a910ae', '0', null);
INSERT INTO `oa_notify_record` VALUES ('99edaf1fef134e7090fa0786f78e0731', '0191c8b6b276404881679e570778047e', 'bb81a0c098a444e69028380e80852d91', '0', null);
INSERT INTO `oa_notify_record` VALUES ('9a60df47f1044ad38b6dd738e44b7346', '638da80f1e8f4fc28c421d8febc9a7fe', '8b454376c0434e2792a1dc57edf80dbd', '0', null);
INSERT INTO `oa_notify_record` VALUES ('9a975f1c379148fdb91c56c6441ab363', '227b389e540f4beb85a4448e00beac5d', '1', '1', '2015-11-03');
INSERT INTO `oa_notify_record` VALUES ('9adf517f7fe141f8b7544b677df1a3a4', '7fe83bb7ca9a413bb37acac91215ea16', '13', '0', null);
INSERT INTO `oa_notify_record` VALUES ('9b5d6138fe8b4bee8982a126441661a6', 'c3ac32da72644cd0805fa663bed26edf', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('9ba988c2ff8e44f586a61fc41186cfce', 'fcdd1348b7644afea196695b1eede954', '4639f877ec7149258cadcf145b4182a7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('9be2d79e58d343dcba12657a64331a66', '8a14c7e5c5e2486ea004765160ee1324', '3f7ef2d4761f445e946413ab9bea23db', '0', null);
INSERT INTO `oa_notify_record` VALUES ('9c0db4b5b9ee4e38a31acdc2f6710985', '1a3428088ad347269b52ed50dfcb81c9', '13', '0', null);
INSERT INTO `oa_notify_record` VALUES ('9c606f818e384a8299db561199bd2558', 'f0dff7a394e34f82a78a510fd0ceac02', '1', '1', '2015-12-30');
INSERT INTO `oa_notify_record` VALUES ('9c6fc908e1df4281bcfabd414e619821', '48e71d295aed4d1c94eced78488abce1', '13', '0', null);
INSERT INTO `oa_notify_record` VALUES ('9d1d9b59cd8a4ee8b54609a90bfb1db4', 'dba81703f6874b82935ca389317d6d19', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('9e506f59781c4a349a7488a6624c1393', '8edf34dd574340a7aa2bc587b025eb92', 'ef40b2bbae144c05a5be85b48669eea2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('9f08c8e5f690435ea5370fd803a9119a', '2055ff60abd4465c9d3c0934a2c43ba9', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('9f10896eeb664ae3843484c299cc8f2e', '69abb236d4a44bd3bb31cfedf273c031', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('a1150f9fea2a4100932a400fcb824d8e', '522ca59deba34f268077efd3c439eb3d', '8b454376c0434e2792a1dc57edf80dbd', '0', null);
INSERT INTO `oa_notify_record` VALUES ('a1d9880f68224e389f8825a68891f2ef', '638da80f1e8f4fc28c421d8febc9a7fe', '5b61eb41f80f43c5b8e485866178f63d', '0', null);
INSERT INTO `oa_notify_record` VALUES ('a1eae1d074e9448d95a10d4d53173510', '62f6b5c97cdf4f4b995c0a498b17e405', '3f7ef2d4761f445e946413ab9bea23db', '0', null);
INSERT INTO `oa_notify_record` VALUES ('a2484682b2644c5eba8db02c686c58b2', 'c00f8c9d385042949724953f9a5faed9', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('a28be5be1d5844428ae3b3213f6fb57c', 'd59f683455884cd18d412879d6f9d042', '1', '1', '2015-11-06');
INSERT INTO `oa_notify_record` VALUES ('a33b16cfceb640f181ccec592451dcba', 'f3b7b7409d6642ac9e1249011915b65f', '13', '0', null);
INSERT INTO `oa_notify_record` VALUES ('a37d8587a9294ab6bbdbf68c92c19cc0', '8d67574047ed4d7790381fb5fc4019a8', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('a4423d4a7a9f4acf945f6fad28935fc2', '2b14a498414b44778cc100c2032e2c5a', 'd42378c9621b4551a0c4c63c82f0aa33', '0', null);
INSERT INTO `oa_notify_record` VALUES ('a48ca1f3596c42b1a6e526e75dd29d20', '46a635664fb5420ea1aa533969a08301', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('a4c7ac7e2d3d406a8c91652f072537e6', '28d2622a6e0a4ab485e1c082d30c75ef', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('a4e57a23af064c6a9b1abf75b1f0b0c1', 'e48bb0cd337947dcad57ed1ba5036c0a', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('a50f290d894b44b28512b50a8be54016', '62f6b5c97cdf4f4b995c0a498b17e405', '4639f877ec7149258cadcf145b4182a7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('a5227dd005d44a33b9003088a32fc60a', 'd59f683455884cd18d412879d6f9d042', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('a54c275cf1db479fa1d52576a9b5b7c3', '69abb236d4a44bd3bb31cfedf273c031', '1', '0', null);
INSERT INTO `oa_notify_record` VALUES ('a57a43254dc9458da0be27c76499a025', '8ae80eff98be40aa9acdd2a01e6920ef', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('a58ab1be71b0463ba7ec624ad8e9333d', '88d32ebd5a5944ec92ebdf99cc00d356', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('a5ec41281132436ab71cd4c2cd1df0d4', '14535c661515479f954cf3a192a6329f', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('a62ede5803c64a76a5eac58a6ef2cd3a', '39de39ff1ab74233bce9c5a913af2c9c', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('a65af476501647e6ae04284490b6768a', '0191c8b6b276404881679e570778047e', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('a66ce5d3852440a4b4f03a35fb8dc0e7', 'e422136885a3473aa85f9f0749c75a78', '1', '0', null);
INSERT INTO `oa_notify_record` VALUES ('a68d7dd57a8b48f6b898eed8b47ebce9', '2b14a498414b44778cc100c2032e2c5a', '5b61eb41f80f43c5b8e485866178f63d', '0', null);
INSERT INTO `oa_notify_record` VALUES ('a6960834f54f41a4980e2399ceb4745c', 'dba81703f6874b82935ca389317d6d19', '1', '1', '2015-11-10');
INSERT INTO `oa_notify_record` VALUES ('a6bbf8ddbbc543cd853cd714d70cc876', '46a635664fb5420ea1aa533969a08301', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('a83b4087ed0540eba2fb6795172f2f6e', '7fe83bb7ca9a413bb37acac91215ea16', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('a86688d0d48e42429e786bfbc4988599', '69abb236d4a44bd3bb31cfedf273c031', 'da60c61cf2aa4cb2810c629c7045c538', '0', null);
INSERT INTO `oa_notify_record` VALUES ('a8b5e81543854d09840d2114c02be3be', '13d61fb791e64f41b94e856c3c446c1d', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('a8d749d3ffe640af945ef47d32b86da1', '4226f5d40009414d854569158e5bcc44', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('a91f52355c8f4c54bfcb0bd230c12008', 'f6781437795d48e5a74d6d43828208b0', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('a929ff8db87642ffa6b417e61048e192', 'f0dff7a394e34f82a78a510fd0ceac02', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('a9c1736e157345ccacd47e3867360abc', '522ca59deba34f268077efd3c439eb3d', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('aa32554c9d874dea828d538ce72f5220', '48e71d295aed4d1c94eced78488abce1', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('aa605b20026f45fcbdca0794122882a0', '8a14c7e5c5e2486ea004765160ee1324', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('aaf22d938c434606bb94fb50901774ea', '62f6b5c97cdf4f4b995c0a498b17e405', '19e655ebcd844747aa0e46efe9870169', '0', null);
INSERT INTO `oa_notify_record` VALUES ('aaf5b42072c44722bb7c409a7749dd7e', '8ae80eff98be40aa9acdd2a01e6920ef', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('ab06e5a26dea456785174c8c79c0b42b', '13d61fb791e64f41b94e856c3c446c1d', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('aba47a6e435445fe8da7f697275fffd6', '4e5f48bc8efe4ef3806bd6da18dccc57', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('ac11154f93664db0863e37a1db65b4d8', '28d2622a6e0a4ab485e1c082d30c75ef', '1', '0', null);
INSERT INTO `oa_notify_record` VALUES ('ac26984d05c640e8ab2e2f818f402532', 'fcdd1348b7644afea196695b1eede954', 'eca1a51b803449d59ce4e2a3b0f4f787', '0', null);
INSERT INTO `oa_notify_record` VALUES ('acb4576829d44a0789e7e1332c86bbbc', '62f6b5c97cdf4f4b995c0a498b17e405', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('ad53c7adec954418b2889f0e116bd49d', 'fcdd1348b7644afea196695b1eede954', '3f7ef2d4761f445e946413ab9bea23db', '0', null);
INSERT INTO `oa_notify_record` VALUES ('adf4665c7f1b4ff3adfca7a4a26733c7', 'e2ae2d875fda4f0d9e9db79954c05834', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('adf50ed98fe949ae835cc0f676052202', 'e2ae2d875fda4f0d9e9db79954c05834', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('ae22f625e8d643ef9f8af7b800fe7083', '62f6b5c97cdf4f4b995c0a498b17e405', 'cb359e3089224f97adae46cf03c0ed94', '0', null);
INSERT INTO `oa_notify_record` VALUES ('aed0fdb7651b447e9a6c5caf055398cf', '8ae80eff98be40aa9acdd2a01e6920ef', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('af8c5f5f187e40518cee6cb9dc3a796f', '4226f5d40009414d854569158e5bcc44', '1', '0', null);
INSERT INTO `oa_notify_record` VALUES ('afc50ce904bc4bf8b0daaa5355588faf', '0191c8b6b276404881679e570778047e', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('b011233c89e54da8a6abf4684a805e00', '88d32ebd5a5944ec92ebdf99cc00d356', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('b0431ec47b2844308b6ac84e613a0cb4', '69abb236d4a44bd3bb31cfedf273c031', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('b13fd8414a544bdca6b9c61263e3de26', '8ae80eff98be40aa9acdd2a01e6920ef', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('b156580f00284f0587a99c117cfab9e4', '393f25fd98c34992bcc72eea2929ea63', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('b1ae37dfe8374baf9abd16ea75121fa1', '98d77ab7e8384d8894441a4079dea800', '0e01985207154708a01e53ca07965665', '0', null);
INSERT INTO `oa_notify_record` VALUES ('b2b5ddee082d421bb197fde5649e7252', '638da80f1e8f4fc28c421d8febc9a7fe', 'd355e9e6b4ad48a59fa0a983e8b7b583', '0', null);
INSERT INTO `oa_notify_record` VALUES ('b354a8d671494195a90bcd8192c735f0', 'd59f683455884cd18d412879d6f9d042', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('b3ae34c1459540278f835df5f1d32622', '8d67574047ed4d7790381fb5fc4019a8', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('b3ec764f64ba40d1b8c927f433c502cf', '69abb236d4a44bd3bb31cfedf273c031', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('b3f750f5b6af4528a1d581881fee96d7', 'c3ac32da72644cd0805fa663bed26edf', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('b485ddea354649fda3a373eb5c62caff', '638da80f1e8f4fc28c421d8febc9a7fe', 'd42378c9621b4551a0c4c63c82f0aa33', '0', null);
INSERT INTO `oa_notify_record` VALUES ('b4ca354437ed4528ac61d5a6bc1b7781', 'cd96f7d2cffe4c268e1fe8b93940f97a', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('b56f9f1d5fc34ae4809481e01552efb1', '227b389e540f4beb85a4448e00beac5d', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('b5a37a6dc97b4feabc1a1c777448f10f', '2b14a498414b44778cc100c2032e2c5a', 'f12330474f634e2897878e8f56a910ae', '0', null);
INSERT INTO `oa_notify_record` VALUES ('b5cbbb2ac25a40cc93559195d1ad7cd8', '2757b0387e6c4449b3bac78ced1abf58', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('b5e72947b3dc4ecb9f0f8b98f15c2c41', 'f6781437795d48e5a74d6d43828208b0', 'da60c61cf2aa4cb2810c629c7045c538', '0', null);
INSERT INTO `oa_notify_record` VALUES ('b601ef12e0c845ad90fad44a3032f960', '7fe83bb7ca9a413bb37acac91215ea16', '1', '1', '2015-11-02');
INSERT INTO `oa_notify_record` VALUES ('b6381a630e88475d9f995c6fe4dbb66a', 'd59f683455884cd18d412879d6f9d042', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('b63ea90d0cad4866b1c80cd6174f864c', '0191c8b6b276404881679e570778047e', '5091ca619fbf49209bce020859103ba5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('b66dbe0433ac4ad9a49797910d7ea6db', '227b389e540f4beb85a4448e00beac5d', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('b6fdb76ccf914dd997832a1d29d7913d', '393f25fd98c34992bcc72eea2929ea63', 'da60c61cf2aa4cb2810c629c7045c538', '0', null);
INSERT INTO `oa_notify_record` VALUES ('b79a87472ebe4698b7bb913ed4c4249a', 'f0dff7a394e34f82a78a510fd0ceac02', '5b61eb41f80f43c5b8e485866178f63d', '0', null);
INSERT INTO `oa_notify_record` VALUES ('b7a4c1a8e1ae4b2c844e914f78de2d30', '638da80f1e8f4fc28c421d8febc9a7fe', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('b7b3096845774532a683786921161c4a', 'e2ae2d875fda4f0d9e9db79954c05834', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('b8147cfb7bf54c708edf4bdfe05f9ea4', '62f6b5c97cdf4f4b995c0a498b17e405', '1', '1', '2016-01-15');
INSERT INTO `oa_notify_record` VALUES ('b8f93db6cde04052885d3f92b4726ffc', '2b14a498414b44778cc100c2032e2c5a', '6474fda3f35c4d1580b646a42f190cf7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('b9121d3fe8654698896a7314e8c6daca', '5eb0dfee1de948348bbf7663c7c81854', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('b96409a9f8ff44c9baf86f452ff3ba1e', '8d67574047ed4d7790381fb5fc4019a8', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('b9d6546c41cd4f49b22c8fe6c6e9620e', '2055ff60abd4465c9d3c0934a2c43ba9', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('b9d8bd9ba5ba42069a398cedaa417b38', 'fcdd1348b7644afea196695b1eede954', 'd8de25a1f872404e82f669c04091685e', '0', null);
INSERT INTO `oa_notify_record` VALUES ('ba6b26c69e53440f8c2ec0a3f27ad5e0', '51649ecc4891453886fe523ff106ca8b', 'dc9663e71aaa42f0a2634770896ec74c', '0', null);
INSERT INTO `oa_notify_record` VALUES ('baa0ae72ed444750a5411a29bf799c74', '46a635664fb5420ea1aa533969a08301', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('bc0792efb0e14feca3e87ed5b60bf287', '4226f5d40009414d854569158e5bcc44', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('bc3589ab3cb14d89893b5dfa24cbe946', 'e2ae2d875fda4f0d9e9db79954c05834', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('bc393288eb474da1b5b7c28cf9c46e09', 'f6781437795d48e5a74d6d43828208b0', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('bc73430cbdeb432c9c2cb6cf8f5b9d5d', '2055ff60abd4465c9d3c0934a2c43ba9', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('bc88ddf4fe924fb897d93fb069e1bcc3', 'f0dff7a394e34f82a78a510fd0ceac02', '6474fda3f35c4d1580b646a42f190cf7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('bcb78bfbfb1c45569ab5f3867f5d9ebe', 'cc4ca4ce262247adb662c3ce2631a1db', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('bcf972eadc0e47038e9137ce9dce4aa2', '7fe83bb7ca9a413bb37acac91215ea16', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('bd9077c9154447dea2b1019290a6fe98', 'f0dff7a394e34f82a78a510fd0ceac02', 'da60c61cf2aa4cb2810c629c7045c538', '0', null);
INSERT INTO `oa_notify_record` VALUES ('bddc75cc8dcc420f8f6023a2a340f291', '28d2622a6e0a4ab485e1c082d30c75ef', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('be13b6c7d2ef4afb9629a3c32310bc68', 'd59f683455884cd18d412879d6f9d042', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('be19597554b94a6dacd76fd778c85174', '8a14c7e5c5e2486ea004765160ee1324', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('be95969ff93247c29d89392566fdf3f1', '51649ecc4891453886fe523ff106ca8b', 'd355e9e6b4ad48a59fa0a983e8b7b583', '0', null);
INSERT INTO `oa_notify_record` VALUES ('bef586d733cf4093a8f8e7f3cb0bb7f5', '46a635664fb5420ea1aa533969a08301', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('bf205161000c4a68988b91eeb586f05c', '13d61fb791e64f41b94e856c3c446c1d', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('c01f8fa7585e43b6ba15e881e8053e4e', '393f25fd98c34992bcc72eea2929ea63', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('c04451704997461a86a701fb85708ccc', 'f6781437795d48e5a74d6d43828208b0', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('c053c4945f0e48859e2d78f599c83f2d', '14535c661515479f954cf3a192a6329f', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('c0f96c418d79454e8d70aff77728d451', '4226f5d40009414d854569158e5bcc44', '6d69972a880f4228b88f28254c3e417e', '0', null);
INSERT INTO `oa_notify_record` VALUES ('c1988bf4eca34b2b83c804a1302276b9', '48e71d295aed4d1c94eced78488abce1', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('c224e47bc9e146acbb9715791d34794a', '9b73f6e4d0ae4d23b1d98f4f8ca6873a', '13', '0', null);
INSERT INTO `oa_notify_record` VALUES ('c22a47519b224b91bf5666542084bde1', '2757b0387e6c4449b3bac78ced1abf58', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('c2a76b8aae5f43c887b800cb220fffda', '46a635664fb5420ea1aa533969a08301', '1', '1', '2015-11-02');
INSERT INTO `oa_notify_record` VALUES ('c2cd380bd8f64a7cbbca04babc75b988', 'dba81703f6874b82935ca389317d6d19', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('c2faec835ad94bb9af8d991a4cac87b2', '03da36624829477493bfc949f22efdec', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('c384b5fc69ce4baf8dd42016be6ff43c', '62f6b5c97cdf4f4b995c0a498b17e405', 'd8de25a1f872404e82f669c04091685e', '0', null);
INSERT INTO `oa_notify_record` VALUES ('c3f7f1daf93047b48b7f6afbfc5b879c', '1a3428088ad347269b52ed50dfcb81c9', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('c3fa4e736005461e8d862f203b37b4a4', '46a635664fb5420ea1aa533969a08301', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('c4d92abddbe04f549ffeea2d2b14210a', 'fcdd1348b7644afea196695b1eede954', '5b61eb41f80f43c5b8e485866178f63d', '0', null);
INSERT INTO `oa_notify_record` VALUES ('c523385c3b61485fb4c47da3bffb455c', '638da80f1e8f4fc28c421d8febc9a7fe', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('c53bdb731d1e476d9c8428f0bff2bece', 'dba81703f6874b82935ca389317d6d19', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('c5b62b3a7ec541839928a5670af13555', '4226f5d40009414d854569158e5bcc44', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('c670586f2cfd426c9d229a1e38a089d1', '2757b0387e6c4449b3bac78ced1abf58', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('c7612230469b42288cbedd2133ea629a', '7fe83bb7ca9a413bb37acac91215ea16', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('c7614c06968944d69b3a5d3968342429', '2757b0387e6c4449b3bac78ced1abf58', '1', '1', '2015-11-02');
INSERT INTO `oa_notify_record` VALUES ('c768363447da4ac59f72df4db2dcc246', '5eb0dfee1de948348bbf7663c7c81854', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('c79df692db0a4b7dad3f66ce2bc72546', 'fcdd1348b7644afea196695b1eede954', '19e655ebcd844747aa0e46efe9870169', '0', null);
INSERT INTO `oa_notify_record` VALUES ('c7a62e585c9b4acab6d7ac1ffe15b581', '98d77ab7e8384d8894441a4079dea800', 'ef40b2bbae144c05a5be85b48669eea2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('c8d80a181a924ed48406555843376236', '98d77ab7e8384d8894441a4079dea800', '7e9cac2b269c4671a17c5121877b5ecd', '0', null);
INSERT INTO `oa_notify_record` VALUES ('c9d6f62797c144cd91b11fd5afb5a5a1', '51649ecc4891453886fe523ff106ca8b', '19e655ebcd844747aa0e46efe9870169', '0', null);
INSERT INTO `oa_notify_record` VALUES ('cb2064c0981d4a4fabde36ca8fb47eaa', 'c3ac32da72644cd0805fa663bed26edf', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('cb7b218088b14624a82bad3fb8220e36', '1a3428088ad347269b52ed50dfcb81c9', '1', '0', null);
INSERT INTO `oa_notify_record` VALUES ('cbe658001b0d4f08bd7005e777c371a9', 'cd96f7d2cffe4c268e1fe8b93940f97a', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('cbf64b39136e45f39d9602f3cbbc62a7', '5eb0dfee1de948348bbf7663c7c81854', '13', '0', null);
INSERT INTO `oa_notify_record` VALUES ('cc7ef76c3a4240b6b8507c50182f6c21', 'fcdd1348b7644afea196695b1eede954', '5ad0d1f9efdc44b481b02c26b67e832e', '0', null);
INSERT INTO `oa_notify_record` VALUES ('cd46f43bc4934d1b9a2bcb8fc607f560', 'fcdd1348b7644afea196695b1eede954', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('cd4a4399431b44599609115d26186512', '1a3428088ad347269b52ed50dfcb81c9', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('cd698972f50643e59680e305930e7035', 'fcdd1348b7644afea196695b1eede954', 'd42378c9621b4551a0c4c63c82f0aa33', '0', null);
INSERT INTO `oa_notify_record` VALUES ('ce06b41b4e094dd5b29921441400f55d', '98d77ab7e8384d8894441a4079dea800', '45f8002c452d4a54a82f113379c7b853', '0', null);
INSERT INTO `oa_notify_record` VALUES ('cee185522af948b4a43027519581ad26', '13d61fb791e64f41b94e856c3c446c1d', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('cee6b4e5e6464ed384ffe06279687331', 'f0dff7a394e34f82a78a510fd0ceac02', 'eca1a51b803449d59ce4e2a3b0f4f787', '0', null);
INSERT INTO `oa_notify_record` VALUES ('cee92afd7f654a6a8a98449f919f5de2', 'c00f8c9d385042949724953f9a5faed9', '1', '1', '2015-10-30');
INSERT INTO `oa_notify_record` VALUES ('cf08226f7c30409facdb0c5e642ba9f4', '1a3428088ad347269b52ed50dfcb81c9', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('cfdc4e48539845d98f4a8e418199cd4b', '227b389e540f4beb85a4448e00beac5d', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('d0ba28e957424124a123dcec2eef3a2e', '8ae80eff98be40aa9acdd2a01e6920ef', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('d0e035a993324c48b4ab54e65c6343e3', '8ae80eff98be40aa9acdd2a01e6920ef', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('d135d17cf5dd4de6ab78bd73e0f46fe3', '0191c8b6b276404881679e570778047e', 'd355e9e6b4ad48a59fa0a983e8b7b583', '0', null);
INSERT INTO `oa_notify_record` VALUES ('d1e91a6b04134332a17ff3acfea50e13', '39de39ff1ab74233bce9c5a913af2c9c', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('d1f4e65e05b2476e9e7b809590bca150', '03da36624829477493bfc949f22efdec', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('d20161629ae94f63aae91b3de9ca3210', 'f0dff7a394e34f82a78a510fd0ceac02', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('d2175c7c6ebc45ca85a011761b3d0045', '2757b0387e6c4449b3bac78ced1abf58', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('d21b81f2bc244e9a964722d7a84380fc', '0f0f932cdbc14629aa94aba0bb333a06', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('d21c190a84614fcea3d0bc03c23d5d19', '46a635664fb5420ea1aa533969a08301', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('d40effffe9e443e096664ec157f4a8fb', '530b93241fc9479f9c6bbadb32b65149', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('d4183fffcb7b4649ae077ed780698333', 'd59f683455884cd18d412879d6f9d042', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('d490484cb9fb46e9a41d561deab62aac', '227b389e540f4beb85a4448e00beac5d', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('d49801a4390e47d7b2c586d34169fb98', '2055ff60abd4465c9d3c0934a2c43ba9', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('d4a860d4693a419aae6c4eb6bab05b7f', '8edf34dd574340a7aa2bc587b025eb92', '1', '1', '2016-02-25');
INSERT INTO `oa_notify_record` VALUES ('d580e993de3a45aeb0117ec6b56a0d45', '39de39ff1ab74233bce9c5a913af2c9c', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('d5c89baf40754d338425eb8febaa0403', 'c00f8c9d385042949724953f9a5faed9', '13', '0', null);
INSERT INTO `oa_notify_record` VALUES ('d64416f1f98c4d85a630778bb6a808a3', '2b14a498414b44778cc100c2032e2c5a', '8b454376c0434e2792a1dc57edf80dbd', '0', null);
INSERT INTO `oa_notify_record` VALUES ('d65af4c12e5a483e9fbf55e3189b50d8', '8d67574047ed4d7790381fb5fc4019a8', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('d73fa9b775074d94bdff42749087cf13', '1a3428088ad347269b52ed50dfcb81c9', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('d7876494f5094d8885d382f417eb6513', 'e2ae2d875fda4f0d9e9db79954c05834', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('d799a474279e49bdae11e24ff90f5eca', 'f0dff7a394e34f82a78a510fd0ceac02', 'bb81a0c098a444e69028380e80852d91', '0', null);
INSERT INTO `oa_notify_record` VALUES ('d799c93869864a98ac8b1cde858d5de7', 'c3ac32da72644cd0805fa663bed26edf', '6d69972a880f4228b88f28254c3e417e', '0', null);
INSERT INTO `oa_notify_record` VALUES ('d8b661abfc9541c488d2836b1eb27ff5', '2b14a498414b44778cc100c2032e2c5a', '3f7ef2d4761f445e946413ab9bea23db', '0', null);
INSERT INTO `oa_notify_record` VALUES ('d9518871179e4b1680ca5d099859f23e', '62f6b5c97cdf4f4b995c0a498b17e405', 'd42378c9621b4551a0c4c63c82f0aa33', '0', null);
INSERT INTO `oa_notify_record` VALUES ('d962e3fd408e4941932a15e285625b80', '14535c661515479f954cf3a192a6329f', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('d9770d50c54e49dbac306679764c435b', '62f6b5c97cdf4f4b995c0a498b17e405', '5091ca619fbf49209bce020859103ba5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('d9ce8d88904949cebd9350efbe66e535', '522ca59deba34f268077efd3c439eb3d', '5091ca619fbf49209bce020859103ba5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('da96b798e02a42819b055c84bbdf73aa', '14535c661515479f954cf3a192a6329f', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('dac57037346f429f8c479a97744d0eea', '638da80f1e8f4fc28c421d8febc9a7fe', '19e655ebcd844747aa0e46efe9870169', '0', null);
INSERT INTO `oa_notify_record` VALUES ('dc0614d187bd44b4873df6187f318e05', 'e48bb0cd337947dcad57ed1ba5036c0a', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('dc66cfaf71674f72b4be47f039257941', '0191c8b6b276404881679e570778047e', '5b61eb41f80f43c5b8e485866178f63d', '0', null);
INSERT INTO `oa_notify_record` VALUES ('dcb7106651a74917b36c7f9598a9fbc4', '2b14a498414b44778cc100c2032e2c5a', '1', '0', null);
INSERT INTO `oa_notify_record` VALUES ('dcbb3ec285e04625af05ca9498021211', 'e48bb0cd337947dcad57ed1ba5036c0a', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('dce6d6e8ab3645f7ae2318bcbb37e9d7', '638da80f1e8f4fc28c421d8febc9a7fe', 'eca1a51b803449d59ce4e2a3b0f4f787', '0', null);
INSERT INTO `oa_notify_record` VALUES ('dce7c0e9254b4195850bcf75ce28f5f1', '14535c661515479f954cf3a192a6329f', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('dd599af2bad740068e312f54d588ab0a', '2b14a498414b44778cc100c2032e2c5a', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('dd5cb62c1c624740a67ceb54cd606317', '227b389e540f4beb85a4448e00beac5d', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('ddda86cd6b7a46cda2a14bf332149ca6', '48e71d295aed4d1c94eced78488abce1', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('ddf0caa9581d401b8aa45524aa61b105', '13d61fb791e64f41b94e856c3c446c1d', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('de04988cdfec4c7ba8105b63c3f5583f', '2055ff60abd4465c9d3c0934a2c43ba9', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('de26a7f1ab2646ad94194742535dc608', '4226f5d40009414d854569158e5bcc44', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('de7c3786b285492790bc3c592f0d4966', 'fcdd1348b7644afea196695b1eede954', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('de9c4009a28a4b4f9f37628f2a38fcaa', '2055ff60abd4465c9d3c0934a2c43ba9', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('df07298d754248ab9f4ba87b21ea68a4', '0191c8b6b276404881679e570778047e', '19e655ebcd844747aa0e46efe9870169', '0', null);
INSERT INTO `oa_notify_record` VALUES ('df3131a956e044cdb6288dbe555c4a40', 'cd96f7d2cffe4c268e1fe8b93940f97a', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('df96ae3bee0149f7adabab8e1b84bb16', '7fe83bb7ca9a413bb37acac91215ea16', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e02c9fb93e6e421ebbb8e08e578123bc', '39de39ff1ab74233bce9c5a913af2c9c', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e037f8fe57e649899aef38e4dc53cc57', '522ca59deba34f268077efd3c439eb3d', 'cb359e3089224f97adae46cf03c0ed94', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e079010bd03a47afa7001e706abe7b93', '530b93241fc9479f9c6bbadb32b65149', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e101e5fda5d840f1a22b83789e73e493', '7fe83bb7ca9a413bb37acac91215ea16', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e1215d40a0d94357ae9502079f46af3c', '5eb0dfee1de948348bbf7663c7c81854', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e13635002a534f2d92e9fb14cc6dc0a5', '13d61fb791e64f41b94e856c3c446c1d', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e1e593b37e8547789e37e6d5c6315d52', '8a14c7e5c5e2486ea004765160ee1324', '8b454376c0434e2792a1dc57edf80dbd', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e1e7968219644139a78f29db78b6a6b4', 'f6781437795d48e5a74d6d43828208b0', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e2b7f1c3417644c3877321e15c682510', '2055ff60abd4465c9d3c0934a2c43ba9', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e33900bcf3994b4c88af6f9a013b00cc', 'c76b572ff8884896a16a42c08ff2da95', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e35264ca816a46afaba9255bc561d3cf', '4e5f48bc8efe4ef3806bd6da18dccc57', '13', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e37d11789bd4489d8df7b4073bb2a2a0', '8a14c7e5c5e2486ea004765160ee1324', 'f12330474f634e2897878e8f56a910ae', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e3bb99c7f2644b5aa169313532e85aa0', '28d2622a6e0a4ab485e1c082d30c75ef', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e4723b5bf660481fa671089ff46afcc8', 'e48bb0cd337947dcad57ed1ba5036c0a', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e49627f6cad74b068ec669ded40c7614', '638da80f1e8f4fc28c421d8febc9a7fe', '3f7ef2d4761f445e946413ab9bea23db', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e4e9c3a4889b489da82353739b0e7e9a', '227b389e540f4beb85a4448e00beac5d', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e4f29bf9437f42a09976f7a6978daf33', '14535c661515479f954cf3a192a6329f', '6d69972a880f4228b88f28254c3e417e', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e5244ccfdde24b76a626e72adab0fbc3', '522ca59deba34f268077efd3c439eb3d', 'd355e9e6b4ad48a59fa0a983e8b7b583', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e53392a5e9d342f0a0fa592ec09c5500', '88d32ebd5a5944ec92ebdf99cc00d356', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e562754e38354a48ac5019156e64e4e6', '14535c661515479f954cf3a192a6329f', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e5628cd2f3744f19ade2d4de1ea1166e', '522ca59deba34f268077efd3c439eb3d', 'd42378c9621b4551a0c4c63c82f0aa33', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e588afe33c234575b811e5c5b56860c3', 'cd96f7d2cffe4c268e1fe8b93940f97a', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e5f545fb272e429ea00e40a7c0abb4bc', '393f25fd98c34992bcc72eea2929ea63', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e61494374ad9440da5d69eac1a3785a1', '98d77ab7e8384d8894441a4079dea800', '2e6214ad951548f09aa58c943a897240', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e722863b7c42446cb1d9126d59f9af12', '62f6b5c97cdf4f4b995c0a498b17e405', 'eca1a51b803449d59ce4e2a3b0f4f787', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e72dd6df344d40d884913383fff2e9ce', '28d2622a6e0a4ab485e1c082d30c75ef', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e7b8135c64404c7592aeb87f6fbe3429', '522ca59deba34f268077efd3c439eb3d', '4639f877ec7149258cadcf145b4182a7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e801730955104376a44c2cd5c5206fa5', 'e422136885a3473aa85f9f0749c75a78', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e82054e7858d4aa895af8c67c6209e04', '227b389e540f4beb85a4448e00beac5d', '13', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e83f630374a6418da685b9d5a63b1ca9', 'f6781437795d48e5a74d6d43828208b0', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e867d15b4b7b4eb589a7e45dba6ff1a6', '28d2622a6e0a4ab485e1c082d30c75ef', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e8e230d0277c4b92befeb4b4709a28be', '2b14a498414b44778cc100c2032e2c5a', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e8f0ed90496043f9ad41629946f68a2a', '51649ecc4891453886fe523ff106ca8b', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e905ea570ce14214b1dba65d05e091e1', 'c76b572ff8884896a16a42c08ff2da95', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e92623eff5f94b6cac014d948773fb67', '2b14a498414b44778cc100c2032e2c5a', 'bb81a0c098a444e69028380e80852d91', '0', null);
INSERT INTO `oa_notify_record` VALUES ('e995b307259c4461848d925bda3d8a31', '03da36624829477493bfc949f22efdec', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('ea4bcbe0fe804333a20b4101334a10fb', '0f0f932cdbc14629aa94aba0bb333a06', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('eab8e1402e4a4ea58517323a5f8f010f', '28d2622a6e0a4ab485e1c082d30c75ef', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('eac2393beb5c4224ab195e7524038620', 'fcdd1348b7644afea196695b1eede954', 'f12330474f634e2897878e8f56a910ae', '0', null);
INSERT INTO `oa_notify_record` VALUES ('eaf685c95903478c929b3faefb7547dd', '51649ecc4891453886fe523ff106ca8b', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('eb866519888d4a28b99c478ebf0a1b19', '4226f5d40009414d854569158e5bcc44', 'da60c61cf2aa4cb2810c629c7045c538', '0', null);
INSERT INTO `oa_notify_record` VALUES ('eb8730b9c1a04f23bf5da197ae9d5909', '13d61fb791e64f41b94e856c3c446c1d', '1', '1', '2015-11-10');
INSERT INTO `oa_notify_record` VALUES ('ec7013a4ecb641068a23beafec961b3e', '46a635664fb5420ea1aa533969a08301', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('eccdb1ae52c24c7fbee6866f8781bcd6', 'cc4ca4ce262247adb662c3ce2631a1db', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('ecd3a92cdf674277bbddac74713d5c2a', 'cc4ca4ce262247adb662c3ce2631a1db', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('ecdc6f385d324fca9f893f5d0b9fd42e', '8ae80eff98be40aa9acdd2a01e6920ef', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('ed9a70fb752d4323b4e731d0025383fe', '5eb0dfee1de948348bbf7663c7c81854', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('edcb74e386e64ddcb79387c7aa3ad914', '1a3428088ad347269b52ed50dfcb81c9', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('ee033d370b894169adcc502cdef72a7a', '28d2622a6e0a4ab485e1c082d30c75ef', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('ee2ddc87896b497a9c002347f253e1eb', '5eb0dfee1de948348bbf7663c7c81854', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('ee98ac4b1e724d1799688ca88fb62e5c', '98d77ab7e8384d8894441a4079dea800', 'cb176ef0bce14c80ac5c2809861b560a', '0', null);
INSERT INTO `oa_notify_record` VALUES ('eeb2bfe1168f4636aa431ddbc9de5c1a', '46a635664fb5420ea1aa533969a08301', '13', '0', null);
INSERT INTO `oa_notify_record` VALUES ('eed21f8a809648bc95426a7c3fc09223', '638da80f1e8f4fc28c421d8febc9a7fe', '4639f877ec7149258cadcf145b4182a7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('eefbef7e7eae4083a281002386b59e97', '530b93241fc9479f9c6bbadb32b65149', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('ef5183c128ad43cd82aaead5c9803134', 'cd96f7d2cffe4c268e1fe8b93940f97a', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('f0db0b07d4ec41e7b017c78ce30a18c8', '1a3428088ad347269b52ed50dfcb81c9', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('f0ed980b1cab492297def7b86d4f7432', 'e422136885a3473aa85f9f0749c75a78', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('f10a409a624e44838c06f2d7d3923990', 'f0dff7a394e34f82a78a510fd0ceac02', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('f12b0aeeef744dea993bcf54d6b10800', 'dba81703f6874b82935ca389317d6d19', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('f17ffcbe289949b7b1f93b153f871806', '62f6b5c97cdf4f4b995c0a498b17e405', 'dc9663e71aaa42f0a2634770896ec74c', '0', null);
INSERT INTO `oa_notify_record` VALUES ('f1a78dd218664eae8fdb87cbaf35fa7b', '28d2622a6e0a4ab485e1c082d30c75ef', '13', '0', null);
INSERT INTO `oa_notify_record` VALUES ('f25420b78ed84fa288252b8a28083962', 'dba81703f6874b82935ca389317d6d19', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('f4642143bb1a4da1a245f216e86174e9', '0f0f932cdbc14629aa94aba0bb333a06', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('f4c87bfc60374d15afb69a7d51677a17', 'cc4ca4ce262247adb662c3ce2631a1db', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('f4f16f3a27634ac7b9c236254ee712b4', 'fcdd1348b7644afea196695b1eede954', 'bb81a0c098a444e69028380e80852d91', '0', null);
INSERT INTO `oa_notify_record` VALUES ('f4f98c817c24485da07d8c2543f535de', '530b93241fc9479f9c6bbadb32b65149', '2', '0', null);
INSERT INTO `oa_notify_record` VALUES ('f50b9310c82941a684da97b9406eaf70', '393f25fd98c34992bcc72eea2929ea63', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('f5f92d9abe3b4b28a18e32625b8216fb', '8a14c7e5c5e2486ea004765160ee1324', 'd42378c9621b4551a0c4c63c82f0aa33', '0', null);
INSERT INTO `oa_notify_record` VALUES ('f6037272ff6f499b93af47e4131b7412', '4e5f48bc8efe4ef3806bd6da18dccc57', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('f658812e512f47cbba383dab24de83e3', '8edf34dd574340a7aa2bc587b025eb92', '2e6214ad951548f09aa58c943a897240', '0', null);
INSERT INTO `oa_notify_record` VALUES ('f65c31d42a1b4fb4b7b859edacc1f8e9', '8ae80eff98be40aa9acdd2a01e6920ef', '1', '1', '2015-11-10');
INSERT INTO `oa_notify_record` VALUES ('f6d9bca8a2b94c26974ccd3d11b13fd7', 'c3ac32da72644cd0805fa663bed26edf', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('f6f6364eae254a59ae49aa4441a916b3', 'c76b572ff8884896a16a42c08ff2da95', '1', '1', '2015-11-02');
INSERT INTO `oa_notify_record` VALUES ('f79ace9786fb4f85afe575bcd9578904', '0f0f932cdbc14629aa94aba0bb333a06', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('f7bf8f004ed84af5b584aff7cdbb0606', '39de39ff1ab74233bce9c5a913af2c9c', '3', '0', null);
INSERT INTO `oa_notify_record` VALUES ('f7c0d34f764d4319a293ee48c01e561d', '522ca59deba34f268077efd3c439eb3d', '9', '0', null);
INSERT INTO `oa_notify_record` VALUES ('f88293e176854317bb9c3c299ba9b840', '39de39ff1ab74233bce9c5a913af2c9c', '1', '1', '2015-11-02');
INSERT INTO `oa_notify_record` VALUES ('f88a35866e18436bb97867220b0b2345', 'f3b7b7409d6642ac9e1249011915b65f', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('f94dddcdc88744e5a503790ca8f3cddf', 'e2ae2d875fda4f0d9e9db79954c05834', '5', '0', null);
INSERT INTO `oa_notify_record` VALUES ('f9d35de186774cc09f5b0c06fd558ece', '03da36624829477493bfc949f22efdec', '12', '0', null);
INSERT INTO `oa_notify_record` VALUES ('f9f1434b2d154e3c8c16bab172321c62', 'c3ac32da72644cd0805fa663bed26edf', '6', '0', null);
INSERT INTO `oa_notify_record` VALUES ('fa663f950c09485f8c32b370069804e1', '46a635664fb5420ea1aa533969a08301', '8', '0', null);
INSERT INTO `oa_notify_record` VALUES ('fb5d4654922c4b28986c0bca0f2d3e30', 'cd96f7d2cffe4c268e1fe8b93940f97a', '11', '0', null);
INSERT INTO `oa_notify_record` VALUES ('fbb4504b2a39402780d96228d58a5782', 'c00f8c9d385042949724953f9a5faed9', '7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('fc1f320b407143efaf5e14ac980e0c98', 'd59f683455884cd18d412879d6f9d042', '4', '0', null);
INSERT INTO `oa_notify_record` VALUES ('fc368e5f262f49399171fa193f54f554', '522ca59deba34f268077efd3c439eb3d', '1', '1', '2016-01-13');
INSERT INTO `oa_notify_record` VALUES ('fcc7588d032944a5b4fdcc36333599fc', '88d32ebd5a5944ec92ebdf99cc00d356', '1', '1', '2015-11-06');
INSERT INTO `oa_notify_record` VALUES ('fcd4c1d6c14243fdb3d7feb0732d10d4', '8edf34dd574340a7aa2bc587b025eb92', '0e01985207154708a01e53ca07965665', '0', null);
INSERT INTO `oa_notify_record` VALUES ('fd195dc60f9f49f8aea5d5229848ab72', '03da36624829477493bfc949f22efdec', '13', '0', null);
INSERT INTO `oa_notify_record` VALUES ('fe2d00cd9edc40bd881ce884d72eea31', '9b73f6e4d0ae4d23b1d98f4f8ca6873a', '10', '0', null);
INSERT INTO `oa_notify_record` VALUES ('fea944dbcf464d63ad6ed7b7c0fd5f83', '638da80f1e8f4fc28c421d8febc9a7fe', '5ad0d1f9efdc44b481b02c26b67e832e', '0', null);
INSERT INTO `oa_notify_record` VALUES ('fec1a845003b428894777fede9df03d6', '8a14c7e5c5e2486ea004765160ee1324', '4639f877ec7149258cadcf145b4182a7', '0', null);
INSERT INTO `oa_notify_record` VALUES ('ffb53b7e968f43d49c566e67407920ab', 'dba81703f6874b82935ca389317d6d19', '5', '0', null);

-- ----------------------------
-- Table structure for `sys_area`
-- ----------------------------
DROP TABLE IF EXISTS `sys_area`;
CREATE TABLE `sys_area` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `type` char(1) DEFAULT NULL COMMENT '区域类型',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_area_parent_id` (`parent_id`),
  KEY `sys_area_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区域表';

-- ----------------------------
-- Records of sys_area
-- ----------------------------
INSERT INTO `sys_area` VALUES ('1', '0', '0,', '中国', '10', '100000', '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_area` VALUES ('17e8e72326574a0ea94b15d6eeddbb6d', '364a832bee8a42afa333e338813330de', '0,1,c11497c3311a4be29253f29bd59ab485,364a832bee8a42afa333e338813330de,', '软件大道', '30', '', '4', '1', '2016-01-11 23:09:38', '1', '2016-01-11 23:09:38', '', '0');
INSERT INTO `sys_area` VALUES ('19298dc65ecd45cc803a6da294d1ff60', '1', '0,1,', '北京', '30', '', '2', '1', '2016-01-15 19:55:09', '1', '2016-01-15 19:55:09', '', '0');
INSERT INTO `sys_area` VALUES ('364a832bee8a42afa333e338813330de', 'c11497c3311a4be29253f29bd59ab485', '0,1,c11497c3311a4be29253f29bd59ab485,', '南京', '30', '', '3', '1', '2015-12-24 21:38:02', '1', '2016-01-11 23:09:25', '', '0');
INSERT INTO `sys_area` VALUES ('90ecd439eb3845db97a627d9242145e8', '1', '0,1,', '上海', '30', '', '2', '1', '2016-01-15 19:54:55', '1', '2016-01-15 19:54:55', '', '0');
INSERT INTO `sys_area` VALUES ('c11497c3311a4be29253f29bd59ab485', '1', '0,1,', '江苏', '30', '', '2', '1', '2015-11-11 17:37:48', '1', '2015-11-11 17:38:14', '', '0');
INSERT INTO `sys_area` VALUES ('e418dc99691d4e29961d53ca218ece8b', '1', '0,1,', '福建', '30', '0100', '2', '1', '2016-01-15 19:54:30', '1', '2016-01-15 19:54:30', '', '0');
INSERT INTO `sys_area` VALUES ('ee38f91df4444529b00f093be5a07b7a', 'e418dc99691d4e29961d53ca218ece8b', '0,1,e418dc99691d4e29961d53ca218ece8b,', '福州', '30', '0200', '1', '1', '2016-01-15 19:54:44', '1', '2016-01-15 19:54:44', '', '0');

-- ----------------------------
-- Table structure for `sys_dict`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `value` varchar(100) NOT NULL COMMENT '数据值',
  `label` varchar(100) NOT NULL COMMENT '标签名',
  `type` varchar(100) NOT NULL COMMENT '类型',
  `description` varchar(100) NOT NULL COMMENT '描述',
  `sort` decimal(10,0) NOT NULL COMMENT '排序（升序）',
  `parent_id` varchar(64) DEFAULT '0' COMMENT '父级编号',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_dict_value` (`value`),
  KEY `sys_dict_label` (`label`),
  KEY `sys_dict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('0a22f3278a624882a822e0820f27efcb', '1', '主表', 'table_type', '表类型', '20', '0', '1', '2016-01-05 21:47:14', '1', '2016-01-05 21:53:34', '', '0');
INSERT INTO `sys_dict` VALUES ('1', '0', '正常', 'del_flag', '删除标记', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('10', 'yellow', '黄色', 'color', '颜色值', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('100', 'java.util.Date', 'Date', 'gen_java_type', 'Java类型', '50', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('101', 'com.thinkgem.jeesite.modules.sys.entity.User', 'User', 'gen_java_type', 'Java类型', '60', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('102', 'com.thinkgem.jeesite.modules.sys.entity.Office', 'Office', 'gen_java_type', 'Java类型', '70', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('103', 'com.thinkgem.jeesite.modules.sys.entity.Area', 'Area', 'gen_java_type', 'Java类型', '80', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('104', 'Custom', 'Custom', 'gen_java_type', 'Java类型', '90', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('105', '1', '会议通知', 'oa_notify_type', '通知通告类型', '10', '0', '1', '2013-11-08 08:00:00', '1', '2016-01-19 20:19:40', '', '0');
INSERT INTO `sys_dict` VALUES ('106', '2', '放假通知', 'oa_notify_type', '通知通告类型', '20', '0', '1', '2013-11-08 08:00:00', '1', '2016-01-19 20:19:51', '', '0');
INSERT INTO `sys_dict` VALUES ('107', '3', '部门通告', 'oa_notify_type', '通知通告类型', '30', '0', '1', '2013-11-08 08:00:00', '1', '2016-01-19 20:20:12', '', '0');
INSERT INTO `sys_dict` VALUES ('108', '0', '草稿', 'oa_notify_status', '通知通告状态', '10', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('109', '1', '发布', 'oa_notify_status', '通知通告状态', '20', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('11', 'orange', '橙色', 'color', '颜色值', '50', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('110', '0', '未读', 'oa_notify_read', '通知通告状态', '10', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('111', '1', '已读', 'oa_notify_read', '通知通告状态', '20', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('12', 'default', '默认主题', 'theme', '主题方案', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('13', 'cerulean', '天蓝主题', 'theme', '主题方案', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('14', 'readable', '橙色主题', 'theme', '主题方案', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('17', '1', '国家', 'sys_area_type', '区域类型', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('18', '2', '省份、直辖市', 'sys_area_type', '区域类型', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('19', '3', '地市', 'sys_area_type', '区域类型', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('1c0ac576c33d41fcb4c16602bf4fad5d', 'post', 'post', 'interface_type', '接口类型', '20', '0', '1', '2015-11-30 15:52:25', '1', '2015-11-30 15:52:39', '', '0');
INSERT INTO `sys_dict` VALUES ('2', '1', '删除', 'del_flag', '删除标记', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('20', '4', '区县', 'sys_area_type', '区域类型', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('21', '1', '公司', 'sys_office_type', '机构类型', '60', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('22', '2', '部门', 'sys_office_type', '机构类型', '70', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('221a918bd1e149239a17ab0fdeaf5ecd', 'get', 'get', 'interface_type', '接口类型', '10', '0', '1', '2015-11-30 15:51:56', '1', '2015-11-30 15:51:56', '', '0');
INSERT INTO `sys_dict` VALUES ('23', '3', '小组', 'sys_office_type', '机构类型', '80', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('24', '4', '其它', 'sys_office_type', '机构类型', '90', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('25', '1', '综合部', 'sys_office_common', '快捷通用部门', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('26', '2', '开发部', 'sys_office_common', '快捷通用部门', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('27', '3', '人力部', 'sys_office_common', '快捷通用部门', '50', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('28', '1', '一级', 'sys_office_grade', '机构等级', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('29', '2', '二级', 'sys_office_grade', '机构等级', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('3', '1', '显示', 'show_hide', '显示/隐藏', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('30', '3', '三级', 'sys_office_grade', '机构等级', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('31', '4', '四级', 'sys_office_grade', '机构等级', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('32', '1', '所有数据', 'sys_data_scope', '数据范围', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('33', '2', '所在公司及以下数据', 'sys_data_scope', '数据范围', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('34', '3', '所在公司数据', 'sys_data_scope', '数据范围', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('35', '4', '所在部门及以下数据', 'sys_data_scope', '数据范围', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('36', '5', '所在部门数据', 'sys_data_scope', '数据范围', '50', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('37', '8', '仅本人数据', 'sys_data_scope', '数据范围', '90', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('38', '9', '按明细设置', 'sys_data_scope', '数据范围', '100', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('39', '1', '系统管理', 'sys_user_type', '用户类型', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('4', '0', '隐藏', 'show_hide', '显示/隐藏', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('40', '2', '部门经理', 'sys_user_type', '用户类型', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('41', '3', '普通用户', 'sys_user_type', '用户类型', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('42', 'basic', '基础主题', 'cms_theme', '站点主题', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('43', 'blue', '蓝色主题', 'cms_theme', '站点主题', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('44', 'red', '红色主题', 'cms_theme', '站点主题', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('45', 'article', '文章模型', 'cms_module', '栏目模型', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('46', 'picture', '图片模型', 'cms_module', '栏目模型', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('47', 'download', '下载模型', 'cms_module', '栏目模型', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('48', 'link', '链接模型', 'cms_module', '栏目模型', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('49', 'special', '专题模型', 'cms_module', '栏目模型', '50', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('5', '1', '是', 'yes_no', '是/否', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('50', '0', '默认展现方式', 'cms_show_modes', '展现方式', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('51', '1', '首栏目内容列表', 'cms_show_modes', '展现方式', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('52', '2', '栏目第一条内容', 'cms_show_modes', '展现方式', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('53', '0', '发布', 'cms_del_flag', '内容状态', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('54', '1', '删除', 'cms_del_flag', '内容状态', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('55', '2', '审核', 'cms_del_flag', '内容状态', '15', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('56', '1', '首页焦点图', 'cms_posid', '推荐位', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('57', '2', '栏目页文章推荐', 'cms_posid', '推荐位', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('58', '1', '咨询', 'cms_guestbook', '留言板分类', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('59', '2', '建议', 'cms_guestbook', '留言板分类', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('5b899603552c48519e7ba8eb9da0b41f', '0', '单表', 'table_type', '表类型', '10', '0', '1', '2016-01-05 21:46:39', '1', '2016-01-05 21:53:50', '', '0');
INSERT INTO `sys_dict` VALUES ('6', '0', '否', 'yes_no', '是/否', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('60', '3', '投诉', 'cms_guestbook', '留言板分类', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('61', '4', '其它', 'cms_guestbook', '留言板分类', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('67', '1', '接入日志', 'sys_log_type', '日志类型', '30', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('68', '2', '异常日志', 'sys_log_type', '日志类型', '40', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('7', 'red', '红色', 'color', '颜色值', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('73', 'crud', '增删改查', 'gen_category', '代码生成分类', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('74', 'crud_many', '增删改查（包含从表）', 'gen_category', '代码生成分类', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('75', 'tree', '树结构', 'gen_category', '代码生成分类', '30', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('76', '=', '=', 'gen_query_type', '查询方式', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('77', '!=', '!=', 'gen_query_type', '查询方式', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('78', '&gt;', '&gt;', 'gen_query_type', '查询方式', '30', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('79', '&lt;', '&lt;', 'gen_query_type', '查询方式', '40', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('8', 'green', '绿色', 'color', '颜色值', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('80', 'between', 'Between', 'gen_query_type', '查询方式', '50', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('81', 'like', 'Like', 'gen_query_type', '查询方式', '60', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('82', 'left_like', 'Left Like', 'gen_query_type', '查询方式', '70', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('83', 'right_like', 'Right Like', 'gen_query_type', '查询方式', '80', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('84', 'input', '文本框', 'gen_show_type', '字段生成方案', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('85', 'textarea', '文本域', 'gen_show_type', '字段生成方案', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('86', 'select', '下拉框', 'gen_show_type', '字段生成方案', '30', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('87', 'checkbox', '复选框', 'gen_show_type', '字段生成方案', '40', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('88', 'radiobox', '单选框', 'gen_show_type', '字段生成方案', '50', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('89', 'dateselect', '日期选择', 'gen_show_type', '字段生成方案', '60', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('9', 'blue', '蓝色', 'color', '颜色值', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('90', 'userselect', '人员选择', 'gen_show_type', '字段生成方案', '70', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('91', 'officeselect', '部门选择', 'gen_show_type', '字段生成方案', '80', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('92', 'areaselect', '区域选择', 'gen_show_type', '字段生成方案', '90', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('93', 'String', 'String', 'gen_java_type', 'Java类型', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('94', 'Long', 'Long', 'gen_java_type', 'Java类型', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('95', 'dao', '仅持久层', 'gen_category', '代码生成分类\0\0\0\0', '40', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('96', '1', '男', 'sex', '性别', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('97', '2', '女', 'sex', '性别', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('98', 'Integer', 'Integer', 'gen_java_type', 'Java类型', '30', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('99', 'Double', 'Double', 'gen_java_type', 'Java类型', '40', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('bde6043665ef4571b85d0edab667cd15', '3', '树结构表', 'table_type', '表类型', '40', '0', '1', '2016-01-06 19:48:50', '1', '2016-01-06 19:48:50', '', '0');
INSERT INTO `sys_dict` VALUES ('cc94b0c5df554a46894991210a5fc486', '2', '附表', 'table_type', '表类型', '30', '0', '1', '2016-01-05 21:47:38', '1', '2016-01-05 21:53:44', '', '0');

-- ----------------------------
-- Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `type` char(1) DEFAULT '1' COMMENT '日志类型',
  `title` varchar(255) DEFAULT '' COMMENT '日志标题',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `remote_addr` varchar(255) DEFAULT NULL COMMENT '操作IP地址',
  `user_agent` varchar(255) DEFAULT NULL COMMENT '用户代理',
  `request_uri` varchar(255) DEFAULT NULL COMMENT '请求URI',
  `method` varchar(5) DEFAULT NULL COMMENT '操作方式',
  `params` text COMMENT '操作提交的数据',
  `exception` text COMMENT '异常信息',
  PRIMARY KEY (`id`),
  KEY `sys_log_create_by` (`create_by`),
  KEY `sys_log_request_uri` (`request_uri`),
  KEY `sys_log_type` (`type`),
  KEY `sys_log_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志表';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('3ebac2892dea40d992247804ae28b137', '1', '汽车管理-车辆信息', '1', '2016-03-10 09:38:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.81 Safari/537.36', '/IVMSSystem/a/car/car', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3f2883883b4648caa5586b8179869e04', '1', '系统设置-区域管理', '1', '2016-03-10 09:38:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.81 Safari/537.36', '/IVMSSystem/a/sys/area/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4df0fa91a6984817a977c4228d3ff9a8', '1', '日志查询-日志查询-删除', '1', '2016-03-10 09:38:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.81 Safari/537.36', '/IVMSSystem/a/sys/log/empty', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b7cc99f0f2b34815b19a7003709a9e14', '1', '系统设置-字典管理', '1', '2016-03-10 09:38:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.81 Safari/537.36', '/IVMSSystem/a/sys/dict/', 'GET', '', '');

-- ----------------------------
-- Table structure for `sys_mdict`
-- ----------------------------
DROP TABLE IF EXISTS `sys_mdict`;
CREATE TABLE `sys_mdict` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_mdict_parent_id` (`parent_id`),
  KEY `sys_mdict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='多级字典表';

-- ----------------------------
-- Records of sys_mdict
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `href` varchar(2000) DEFAULT NULL COMMENT '链接',
  `target` varchar(20) DEFAULT NULL COMMENT '目标',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `is_show` char(1) NOT NULL COMMENT '是否在菜单中显示',
  `permission` varchar(200) DEFAULT NULL COMMENT '权限标识',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_menu_parent_id` (`parent_id`),
  KEY `sys_menu_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('0787b03f8a7d46d2b398ddcc23545d31', '7ec930fe50fb41d0a9c7aeaa01804d16', '0,1,4d463414bc974236941a6a14dc53c73a,7ec930fe50fb41d0a9c7aeaa01804d16,', '增加', '120', '', '', '', '0', 'tools:testInterface:add', '1', '2016-01-07 13:42:33', '1', '2016-01-12 23:52:06', '', '0');
INSERT INTO `sys_menu` VALUES ('07f90eb4ad5848cba282a2e19bbebf60', '55a33ae3ec2d466682ba2d701bea6fd0', '0,1,79,3c92c17886944d0687e73e286cada573,55a33ae3ec2d466682ba2d701bea6fd0,', '增加', '60', '', '', '', '0', 'test:one:formLeave:add', '1', '2016-01-11 23:06:37', '1', '2016-01-14 23:38:01', '', '0');
INSERT INTO `sys_menu` VALUES ('0ca004d6b1bf4bcab9670a5060d82a55', '3c92c17886944d0687e73e286cada573', '0,1,79,3c92c17886944d0687e73e286cada573,', '组织结构(树结构)', '90', '/test/tree/testTree', '', '', '1', 'test:tree:testTree:list', '1', '2013-08-12 13:10:05', '1', '2016-01-14 23:40:18', '', '0');
INSERT INTO `sys_menu` VALUES ('1', '0', '0,', '功能菜单', '0', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('10', '3', '0,1,3,', '字典管理', '60', '/sys/dict/', '', 'th-list', '1', 'sys:dict:list', '1', '2013-05-27 08:00:00', '1', '2015-12-24 22:23:07', '', '0');
INSERT INTO `sys_menu` VALUES ('11', '10', '0,1,3,10,', '查看', '30', null, null, null, '0', 'sys:dict:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('1104d3ac2bfe42ccacaa7ddf5c92079f', '1', '0,1,', '账单管理', '15150', '', '', 'fa-cc-visa', '1', '', '1', '2016-03-07 08:54:52', '1', '2016-03-07 08:54:52', '', '0');
INSERT INTO `sys_menu` VALUES ('12', '10', '0,1,3,10,', '修改', '40', null, null, null, '0', 'sys:dict:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('14', '3', '0,1,3,', '区域管理', '50', '/sys/area/', '', 'th', '1', 'sys:area:list', '1', '2013-05-27 08:00:00', '1', '2015-12-24 21:35:11', '', '0');
INSERT INTO `sys_menu` VALUES ('15', '14', '0,1,3,14,', '查看', '30', null, null, null, '0', 'sys:area:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('16', '14', '0,1,3,14,', '修改', '40', null, null, null, '0', 'sys:area:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('17', '3', '0,1,3,', '机构管理', '40', '/sys/office/', '', 'th-large', '1', 'sys:office:index', '1', '2013-05-27 08:00:00', '1', '2015-12-20 21:32:26', '', '0');
INSERT INTO `sys_menu` VALUES ('18', '17', '0,1,3,17,', '查看', '30', null, null, null, '0', 'sys:office:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('19', '17', '0,1,3,17,', '修改', '40', null, null, null, '0', 'sys:office:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('20', '3', '0,1,3,', '用户管理', '30', '/sys/user/index', '', 'icon-adjust', '1', 'sys:user:index', '1', '2013-05-27 08:00:00', '1', '2015-12-19 21:46:20', '', '0');
INSERT INTO `sys_menu` VALUES ('21', '20', '0,1,3,20,', '查看', '30', null, null, null, '0', 'sys:user:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('22', '20', '0,1,3,20,', '修改', '40', null, null, null, '0', 'sys:user:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('247bcf278dfc40cca447f5c736c6d849', '55a33ae3ec2d466682ba2d701bea6fd0', '0,1,79,3c92c17886944d0687e73e286cada573,55a33ae3ec2d466682ba2d701bea6fd0,', '删除', '120', '', '', '', '0', 'test:one:formLeave:del', '1', '2016-01-11 23:07:26', '1', '2016-01-14 23:38:44', '', '0');
INSERT INTO `sys_menu` VALUES ('27', '1', '0,1,', '我的面板', '100', '', '', 'fa-columns', '1', '', '1', '2013-05-27 08:00:00', '1', '2015-12-13 20:18:41', '', '0');
INSERT INTO `sys_menu` VALUES ('27057ec14a9f456aac8bfa20a99cb27c', 'bf5d1705bcd146ab961ba8c33234936b', '0,1,8404bd96194746ad9a4ef73dd4e1a817,bf5d1705bcd146ab961ba8c33234936b,', '修改', '90', '', '', '', '0', 'travelorder:travelOrder:edit', '1', '2016-03-01 15:04:52', '1', '2016-03-01 15:04:52', '', '0');
INSERT INTO `sys_menu` VALUES ('28abe4b0cb3b4c8480f84c07a5dfaf06', '90', '0,1,62,90,', '增加', '60', '', '', '', '0', 'oa:oaNotify:add', '1', '2015-12-29 21:15:22', '1', '2015-12-29 21:15:22', '', '0');
INSERT INTO `sys_menu` VALUES ('29', '27', '0,1,27,', '个人信息', '30', '/sys/user/info', '', 'icon-adjust', '1', '', '1', '2013-05-27 08:00:00', '1', '2015-11-04 13:42:48', '', '0');
INSERT INTO `sys_menu` VALUES ('2a0f940fbe304a05a6b4040ddf6df279', '20', '0,1,3,20,', '增加', '70', '', '', '', '0', 'sys:user:add', '1', '2015-12-19 21:47:00', '1', '2015-12-19 21:47:00', '', '0');
INSERT INTO `sys_menu` VALUES ('3', '1', '0,1,', '系统设置', '500', '', '', 'fa-cog', '1', '', '1', '2013-05-27 08:00:00', '1', '2015-11-04 17:27:37', '', '0');
INSERT INTO `sys_menu` VALUES ('3052db0c082640e0bf7bc47d6a995a0b', 'a5e9cfcc6a8f4bd9980fbdafd2c145ef', '0,1,e227a99760354d25bd799fd79f8c20ea,a5e9cfcc6a8f4bd9980fbdafd2c145ef,', '新增', '60', '', '', '', '0', 'car:car:add', '1', '2016-03-01 09:15:24', '1', '2016-03-01 09:15:24', '', '0');
INSERT INTO `sys_menu` VALUES ('3c1c639c76f14f6f9903b0143371ea09', '7', '0,1,3,7,', '添加', '70', '', '', '', '0', 'sys:role:add', '1', '2015-12-23 21:35:08', '1', '2015-12-23 21:36:18', '', '0');
INSERT INTO `sys_menu` VALUES ('3c92c17886944d0687e73e286cada573', '79', '0,1,79,', '生成示例', '120', '', '', '', '1', '', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('4', '3', '0,1,3,', '菜单管理', '30', '/sys/menu/', '', 'list-alt', '1', 'sys:menu:list', '1', '2013-05-27 08:00:00', '1', '2015-12-20 18:59:32', '', '0');
INSERT INTO `sys_menu` VALUES ('4137034ecea94ba3a6dabb3dab7100f0', 'c0b3b81b1851433fb3e3c73902611967', '0,1,1104d3ac2bfe42ccacaa7ddf5c92079f,c0b3b81b1851433fb3e3c73902611967,', '增加', '30', '', '', '', '0', 'bill:bill:add', '1', '2016-03-07 08:57:01', '1', '2016-03-07 08:57:01', '', '0');
INSERT INTO `sys_menu` VALUES ('47e6ffafbcdc4a7eb70d6a99cd8e82cb', 'bf5d1705bcd146ab961ba8c33234936b', '0,1,8404bd96194746ad9a4ef73dd4e1a817,bf5d1705bcd146ab961ba8c33234936b,', '增加', '30', '', '', '', '0', 'travelorder:travelOrder:add', '1', '2016-03-01 15:04:00', '1', '2016-03-01 15:04:00', '', '0');
INSERT INTO `sys_menu` VALUES ('4855cf3b25c244fb8500a380db189d97', 'b1f6d1b86ba24365bae7fd86c5082317', '0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,', '查看', '30', '', '', '', '0', 'test:onetomany:testDataMain:view', '1', '2013-08-12 13:10:05', '1', '2016-01-14 23:44:21', '', '0');
INSERT INTO `sys_menu` VALUES ('4d463414bc974236941a6a14dc53c73a', '1', '0,1,', '接口测试', '15030', '', '', 'fa-circle-o-notch', '1', '', '1', '2015-11-10 18:49:21', '1', '2015-11-30 15:23:36', '', '0');
INSERT INTO `sys_menu` VALUES ('5', '4', '0,1,3,4,', '增加', '30', '', '', '', '0', 'sys:menu:add', '1', '2013-05-27 08:00:00', '1', '2015-12-20 19:00:22', '', '0');
INSERT INTO `sys_menu` VALUES ('5239527958e94d418997b584b85d8b80', '14', '0,1,3,14,', '删除', '100', '', '', '', '0', 'sys:area:del', '1', '2015-12-24 21:37:13', '1', '2015-12-24 21:37:13', '', '0');
INSERT INTO `sys_menu` VALUES ('552b31f68bfd4db6b86a6ac9bfd7f2c6', 'bf5d1705bcd146ab961ba8c33234936b', '0,1,8404bd96194746ad9a4ef73dd4e1a817,bf5d1705bcd146ab961ba8c33234936b,', '删除', '60', '', '', '', '0', 'travelorder:travelOrder:del', '1', '2016-03-01 15:04:27', '1', '2016-03-01 15:04:27', '', '0');
INSERT INTO `sys_menu` VALUES ('55a33ae3ec2d466682ba2d701bea6fd0', '3c92c17886944d0687e73e286cada573', '0,1,79,3c92c17886944d0687e73e286cada573,', '请假表单(单表）', '120', '/test/one/formLeave', '', '', '1', 'test:one:formLeave:list', '1', '2016-01-11 23:05:24', '1', '2016-01-14 23:37:07', '', '0');
INSERT INTO `sys_menu` VALUES ('56', '27', '0,1,27,', '文件管理', '90', '/../static/ckfinder/ckfinder.html', '', 'icon-zoom-out', '1', '', '1', '2013-05-27 08:00:00', '1', '2015-11-02 16:17:05', '', '0');
INSERT INTO `sys_menu` VALUES ('57', '56', '0,1,27,40,56,', '查看', '30', null, null, null, '0', 'cms:ckfinder:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('57f1f00d6cb14819bef388acd10e6f5a', '68', '0,1,67,68,', '删除', '60', '', '', '', '0', 'sys:log:del', '1', '2015-12-25 20:25:55', '1', '2015-12-25 20:25:55', '', '0');
INSERT INTO `sys_menu` VALUES ('58', '56', '0,1,27,40,56,', '上传', '40', null, null, null, '0', 'cms:ckfinder:upload', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('59', '56', '0,1,27,40,56,', '修改', '50', null, null, null, '0', 'cms:ckfinder:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('59f304d5312e4502930fef5dd8117b29', '55a33ae3ec2d466682ba2d701bea6fd0', '0,1,79,3c92c17886944d0687e73e286cada573,55a33ae3ec2d466682ba2d701bea6fd0,', '导入', '180', '', '', '', '0', 'test:one:formLeave:import', '1', '2016-01-14 23:48:09', '1', '2016-01-14 23:48:09', '', '0');
INSERT INTO `sys_menu` VALUES ('5e064f4b23714a1eb506e44f7ce5bb7d', 'c0b3b81b1851433fb3e3c73902611967', '0,1,1104d3ac2bfe42ccacaa7ddf5c92079f,c0b3b81b1851433fb3e3c73902611967,', '修改', '90', '', '', '', '0', 'bill:bill:edit', '1', '2016-03-07 08:58:14', '1', '2016-03-07 08:58:14', '', '0');
INSERT INTO `sys_menu` VALUES ('6', '4', '0,1,3,4,', '修改', '40', null, null, null, '0', 'sys:menu:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('62', '1', '0,1,', '在线办公', '200', '', '', 'fa-desktop', '1', '', '1', '2013-05-27 08:00:00', '1', '2015-12-13 20:17:41', '', '0');
INSERT INTO `sys_menu` VALUES ('6509eed6eb634030a46723a18814035c', '7', '0,1,3,7,', '分配用户', '100', '', '', '', '0', 'sys:role:assign', '1', '2015-12-23 21:35:37', '1', '2015-12-23 21:53:23', '', '0');
INSERT INTO `sys_menu` VALUES ('67', '1', '0,1,', '日志查询', '985', '', '', 'fa-sticky-note', '1', '', '1', '2013-06-03 08:00:00', '1', '2016-01-15 20:06:00', '', '0');
INSERT INTO `sys_menu` VALUES ('68', '67', '0,1,67,', '日志查询', '30', '/sys/log', '', 'pencil', '1', 'sys:log:list', '1', '2013-06-03 08:00:00', '1', '2015-12-25 20:26:16', '', '0');
INSERT INTO `sys_menu` VALUES ('6890f329854d41bd92d4857e18ce641d', 'b1f6d1b86ba24365bae7fd86c5082317', '0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,', '导出', '150', '', '', '', '0', 'test:onetomany:testDataMain:export', '1', '2016-01-14 23:45:59', '1', '2016-01-14 23:45:59', '', '0');
INSERT INTO `sys_menu` VALUES ('68f9151151174868ab436e11e03bf548', '4', '0,1,3,4,', '删除', '70', '', '', '', '0', 'sys:menu:del', '1', '2015-12-20 19:01:16', '1', '2015-12-20 19:03:05', '', '0');
INSERT INTO `sys_menu` VALUES ('6c672b854d2b4821b89297640df5fc26', '82', '0,1,79,82,', '同步数据库', '180', '', '', '', '0', 'gen:genTable:synchDb', '1', '2016-01-07 11:31:00', '1', '2016-01-07 11:32:23', '', '0');
INSERT INTO `sys_menu` VALUES ('6d3a6777693f47c98e9b3051cacbcfdb', '10', '0,1,3,10,', '增加', '70', '', '', '', '0', 'sys:dict:add', '1', '2015-12-24 22:23:39', '1', '2015-12-24 22:24:22', '', '0');
INSERT INTO `sys_menu` VALUES ('7', '3', '0,1,3,', '角色管理', '50', '/sys/role/', '', 'lock', '1', 'sys:role:list', '1', '2013-05-27 08:00:00', '1', '2015-12-23 21:33:46', '', '0');
INSERT INTO `sys_menu` VALUES ('70de7eac2f3e4632b1b7aa3cd536b35a', '4d463414bc974236941a6a14dc53c73a', '0,1,4d463414bc974236941a6a14dc53c73a,', '接口测试', '200', '/tools/testInterface/test', '', '', '1', 'tools:testInterface:test', '1', '2015-11-30 15:21:14', '1', '2016-01-13 00:05:29', '', '0');
INSERT INTO `sys_menu` VALUES ('71d50337d0ba46ce85e732248a6e12e3', 'c0b3b81b1851433fb3e3c73902611967', '0,1,1104d3ac2bfe42ccacaa7ddf5c92079f,c0b3b81b1851433fb3e3c73902611967,', '删除', '60', '', '', '', '0', 'bill:bill:del', '1', '2016-03-07 08:57:40', '1', '2016-03-07 09:01:18', '', '0');
INSERT INTO `sys_menu` VALUES ('79', '1', '0,1,', 'ONLINE开发', '20', '', '', 'fa-codepen', '1', '', '1', '2013-10-16 08:00:00', '1', '2016-01-15 20:04:24', '', '0');
INSERT INTO `sys_menu` VALUES ('79f0ffa47dbe43ffa8824d97612d344f', '4', '0,1,3,4,', '保存排序', '100', '', '', '', '0', 'sys:menu:updateSort', '1', '2015-12-20 19:02:08', '1', '2015-12-20 19:02:08', '', '0');
INSERT INTO `sys_menu` VALUES ('79fca849d3da4a82a4ade3f6b9f45126', '20', '0,1,3,20,', '删除', '100', '', '', '', '0', 'sys:user:del', '1', '2015-12-19 21:47:44', '1', '2015-12-19 21:48:52', '', '0');
INSERT INTO `sys_menu` VALUES ('7ec930fe50fb41d0a9c7aeaa01804d16', '4d463414bc974236941a6a14dc53c73a', '0,1,4d463414bc974236941a6a14dc53c73a,', '接口列表', '30', '/tools/testInterface', '', '', '1', 'tools:testInterface:list', '1', '2015-11-30 15:15:06', '1', '2016-01-12 23:50:52', '', '0');
INSERT INTO `sys_menu` VALUES ('8', '7', '0,1,3,7,', '查看', '30', null, null, null, '0', 'sys:role:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('82', '79', '0,1,79,', '表单配置', '20', '/gen/genTable', '', '', '1', 'gen:genTable:list', '1', '2013-10-16 08:00:00', '1', '2016-01-07 20:48:49', '', '0');
INSERT INTO `sys_menu` VALUES ('84', '67', '0,1,67,', '连接池监视', '40', '/../druid', null, null, '1', null, '1', '2013-10-18 08:00:00', '1', '2013-10-18 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('8404bd96194746ad9a4ef73dd4e1a817', '1', '0,1,', '旅游单管理', '15120', '', '', 'fa-plane', '1', '', '1', '2016-03-01 15:02:32', '1', '2016-03-06 12:49:01', '', '0');
INSERT INTO `sys_menu` VALUES ('8815c9a95cf54b19a39b0ce0ff4c32f8', 'b1f6d1b86ba24365bae7fd86c5082317', '0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,', '删除', '120', '', '', '', '0', 'test:onetomany:testDataMain:del', '1', '2016-01-04 15:50:07', '1', '2016-01-14 23:45:16', '', '0');
INSERT INTO `sys_menu` VALUES ('89', '62', '0,1,62,', '我的通告', '30', '/oa/oaNotify/self', '', '', '1', '', '1', '2013-11-08 08:00:00', '1', '2016-01-15 20:30:45', '', '0');
INSERT INTO `sys_menu` VALUES ('8926112d6acd4a18b5e5dcf99a1f7ff3', '7ec930fe50fb41d0a9c7aeaa01804d16', '0,1,4d463414bc974236941a6a14dc53c73a,7ec930fe50fb41d0a9c7aeaa01804d16,', '删除', '150', '', '', '', '0', 'tools:testInterface:del', '1', '2016-01-07 13:43:13', '1', '2016-01-12 23:52:21', '', '0');
INSERT INTO `sys_menu` VALUES ('8930e4aad1ba4a1c958d303968d8c442', '17', '0,1,3,17,', '删除', '100', '', '', '', '0', 'sys:office:del', '1', '2015-12-20 21:19:16', '1', '2015-12-20 21:19:16', '', '0');
INSERT INTO `sys_menu` VALUES ('8ff255c054e5467aac19eb9d5abf8859', '55a33ae3ec2d466682ba2d701bea6fd0', '0,1,79,3c92c17886944d0687e73e286cada573,55a33ae3ec2d466682ba2d701bea6fd0,', '查看', '30', '', '', '', '0', 'test:one:formLeave:view', '1', '2016-01-11 23:06:04', '1', '2016-01-14 23:37:42', '', '0');
INSERT INTO `sys_menu` VALUES ('9', '7', '0,1,3,7,', '修改', '40', null, null, null, '0', 'sys:role:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('90', '62', '0,1,62,', '通告管理', '50', '/oa/oaNotify', '', '', '1', 'oa:oaNotify:list', '1', '2013-11-08 08:00:00', '1', '2016-01-15 20:30:55', '', '0');
INSERT INTO `sys_menu` VALUES ('90d61e16e2524450a689ce3e78857993', 'a5e9cfcc6a8f4bd9980fbdafd2c145ef', '0,1,e227a99760354d25bd799fd79f8c20ea,a5e9cfcc6a8f4bd9980fbdafd2c145ef,', '修改', '90', '', '', '', '0', 'car:car:edit', '1', '2016-03-01 09:16:00', '1', '2016-03-01 09:16:00', '', '0');
INSERT INTO `sys_menu` VALUES ('91aa429a6cdc4a9b954d84ff1456934b', '68', '0,1,67,68,', '查看', '30', '', '', '', '0', 'sys:log:view', '1', '2015-12-25 20:25:25', '1', '2015-12-25 20:25:25', '', '0');
INSERT INTO `sys_menu` VALUES ('94fba05f58b644abbc5bacfeda356f0f', 'c0b3b81b1851433fb3e3c73902611967', '0,1,1104d3ac2bfe42ccacaa7ddf5c92079f,c0b3b81b1851433fb3e3c73902611967,', '查询', '120', '', '', '', '0', 'bill:bill:view', '1', '2016-03-07 08:59:54', '1', '2016-03-07 08:59:54', '', '0');
INSERT INTO `sys_menu` VALUES ('95a6a82dc5fc4d07b46e5df57a0606a3', '27', '0,1,27,', '信箱', '10000', '/iim/mailBox/list?orderBy=sendtime desc', '', '', '1', 'iim:mail:view', '1', '2015-11-14 11:14:30', '1', '2016-01-15 20:48:52', '', '0');
INSERT INTO `sys_menu` VALUES ('9bc1aa1053144a608b73f6fbd841d1c6', '10', '0,1,3,10,', '删除', '100', '', '', '', '0', 'sys:dict:del', '1', '2015-12-24 22:24:04', '1', '2015-12-24 22:24:31', '', '0');
INSERT INTO `sys_menu` VALUES ('9fdf5971a9e64fac8bbffec2825a5f97', '27', '0,1,27,', '常用联系人', '180', '/iim/contact/myFriends', '', '', '1', '', '1', '2015-12-28 22:10:06', '1', '2015-12-28 22:15:16', '', '0');
INSERT INTO `sys_menu` VALUES ('a4c3dcee6cbc4fc6a0bf617d8619edf3', '17', '0,1,3,17,', '增加', '70', '', '', '', '0', 'sys:office:add', '1', '2015-12-20 21:18:52', '1', '2015-12-20 21:18:52', '', '0');
INSERT INTO `sys_menu` VALUES ('a4cfc713c3c04c32a274fb59c71e34ed', '7ec930fe50fb41d0a9c7aeaa01804d16', '0,1,4d463414bc974236941a6a14dc53c73a,7ec930fe50fb41d0a9c7aeaa01804d16,', '编辑', '90', '', '', '', '0', 'tools:testInterface:edit', '1', '2015-11-30 16:08:40', '1', '2016-01-12 23:51:51', '', '0');
INSERT INTO `sys_menu` VALUES ('a5e9cfcc6a8f4bd9980fbdafd2c145ef', 'e227a99760354d25bd799fd79f8c20ea', '0,1,e227a99760354d25bd799fd79f8c20ea,', '车辆信息', '30', '/car/car', '', 'fa-bus', '1', 'car:car:list', '1', '2016-03-01 09:13:10', '1', '2016-03-06 12:51:08', '', '0');
INSERT INTO `sys_menu` VALUES ('af0a174b4f424bc09a8cc0db83a64105', '27', '0,1,27,', '通讯录', '120', '/iim/contact/index', '', '', '1', '', '1', '2015-11-11 16:49:02', '1', '2015-11-11 16:49:02', '', '0');
INSERT INTO `sys_menu` VALUES ('afab2db430e2457f9cf3a11feaa8b869', '0ca004d6b1bf4bcab9670a5060d82a55', '0,1,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,', '编辑', '60', '', '', '', '0', 'test:tree:testTree:edit', '1', '2013-08-12 13:10:05', '1', '2016-01-14 23:40:58', '', '0');
INSERT INTO `sys_menu` VALUES ('b1f6d1b86ba24365bae7fd86c5082317', '3c92c17886944d0687e73e286cada573', '0,1,79,3c92c17886944d0687e73e286cada573,', '票务代理(一对多）', '60', '/test/onetomany/testDataMain', '', '', '1', 'test:onetomany:testDataMain:list', '1', '2013-08-12 13:10:05', '1', '2016-01-14 23:43:25', '', '0');
INSERT INTO `sys_menu` VALUES ('b9a776f5d7194406bb466388e3af9d08', '20', '0,1,3,20,', '导出', '160', '', '', '', '0', 'sys:user:export', '1', '2015-12-19 21:48:34', '1', '2015-12-19 21:48:34', '', '0');
INSERT INTO `sys_menu` VALUES ('bf5d1705bcd146ab961ba8c33234936b', '8404bd96194746ad9a4ef73dd4e1a817', '0,1,8404bd96194746ad9a4ef73dd4e1a817,', '旅游单信息', '30', '/travelorder/travelOrder', '', 'fa-ship', '1', 'travelorder:travelOrder:list', '1', '2016-03-01 15:03:24', '1', '2016-03-06 12:49:57', '', '0');
INSERT INTO `sys_menu` VALUES ('c0b3b81b1851433fb3e3c73902611967', '1104d3ac2bfe42ccacaa7ddf5c92079f', '0,1,1104d3ac2bfe42ccacaa7ddf5c92079f,', '账单管理', '30', '/bill/bill', '', 'fa-cc-visa', '1', 'bill:bill:list', '1', '2016-03-07 08:55:29', '1', '2016-03-07 08:58:41', '', '0');
INSERT INTO `sys_menu` VALUES ('c2e4d9082a0b4386884a0b203afe2c5c', '0ca004d6b1bf4bcab9670a5060d82a55', '0,1,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,', '查看', '30', '', '', '', '0', 'test:tree:testTree:view', '1', '2013-08-12 13:10:05', '1', '2016-01-14 23:40:41', '', '0');
INSERT INTO `sys_menu` VALUES ('c3de25a76785419b8a6820db3935941d', '82', '0,1,79,82,', '导入', '150', '', '', '', '0', 'gen:genTable:importDb', '1', '2016-01-07 11:30:25', '1', '2016-01-07 11:30:25', '', '0');
INSERT INTO `sys_menu` VALUES ('c6d24345a3694bca8adb9e61f880ddea', 'bf5d1705bcd146ab961ba8c33234936b', '0,1,8404bd96194746ad9a4ef73dd4e1a817,bf5d1705bcd146ab961ba8c33234936b,', '查看', '120', '', '', '', '0', 'travelorder:travelOrder:view', '1', '2016-03-01 15:05:20', '1', '2016-03-01 15:05:20', '', '0');
INSERT INTO `sys_menu` VALUES ('c6e0080e06014abd9240f870aadf3200', '14', '0,1,3,14,', '增加', '70', '', '', '', '0', 'sys:area:add', '1', '2015-12-24 21:35:39', '1', '2015-12-24 21:35:39', '', '0');
INSERT INTO `sys_menu` VALUES ('c7fa36c7142f481397c2cc12e2bc828a', '90', '0,1,62,90,', '修改', '90', '', '', '', '0', 'oa:oaNotify:edit', '1', '2015-12-29 21:15:50', '1', '2015-12-29 21:15:50', '', '0');
INSERT INTO `sys_menu` VALUES ('c824b5c244cc4098853671e75858ca55', '55a33ae3ec2d466682ba2d701bea6fd0', '0,1,79,3c92c17886944d0687e73e286cada573,55a33ae3ec2d466682ba2d701bea6fd0,', '编辑', '90', '', '', '', '0', 'test:one:formLeave:edit', '1', '2016-01-11 23:07:05', '1', '2016-01-14 23:38:23', '', '0');
INSERT INTO `sys_menu` VALUES ('cac8d5931531427ca0ba7e55927dcdf2', '55a33ae3ec2d466682ba2d701bea6fd0', '0,1,79,3c92c17886944d0687e73e286cada573,55a33ae3ec2d466682ba2d701bea6fd0,', '导出', '150', '', '', '', '0', 'test:one:formLeave:export', '1', '2016-01-14 23:47:50', '1', '2016-01-14 23:47:50', '', '0');
INSERT INTO `sys_menu` VALUES ('d15ec45a4c5449c3bbd7a61d5f9dd1d2', 'b1f6d1b86ba24365bae7fd86c5082317', '0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,', '编辑', '60', '', '', '', '0', 'test:onetomany:testDataMain:edit', '1', '2013-08-12 13:10:05', '1', '2016-01-14 23:44:45', '', '0');
INSERT INTO `sys_menu` VALUES ('d3f1b6f292904ef5b95f7800cc777a48', '82', '0,1,79,82,', '查看', '30', '', '', '', '0', 'gen:genTable:view,gen:genTableColumn:view', '1', '2016-01-07 11:26:42', '1', '2016-01-07 11:26:42', '', '0');
INSERT INTO `sys_menu` VALUES ('d64d25d7b3014f9ba7736867cb2ffc43', '82', '0,1,79,82,', '生成代码', '210', '', '', '', '0', 'gen:genTable:genCode', '1', '2016-01-07 11:31:24', '1', '2016-01-07 11:31:24', '', '0');
INSERT INTO `sys_menu` VALUES ('d70961a8c7db43b78685f69222ea43f4', 'a5e9cfcc6a8f4bd9980fbdafd2c145ef', '0,1,e227a99760354d25bd799fd79f8c20ea,a5e9cfcc6a8f4bd9980fbdafd2c145ef,', '删除', '120', '', '', '', '0', 'car:car:del', '1', '2016-03-01 09:16:22', '1', '2016-03-01 09:16:22', '', '0');
INSERT INTO `sys_menu` VALUES ('d75f64438d994fc4830b1b3d138cde32', '82', '0,1,79,82,', '删除', '120', '', '', '', '0', 'gen:genTable:del', '1', '2016-01-07 11:29:23', '1', '2016-01-07 11:29:23', '', '0');
INSERT INTO `sys_menu` VALUES ('d78a0f0a6c8c48699e5d081f64014b99', 'b1f6d1b86ba24365bae7fd86c5082317', '0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,', '导入', '180', '', '', '', '0', 'test:onetomany:testDataMain:import', '1', '2016-01-14 23:46:22', '1', '2016-01-14 23:46:22', '', '0');
INSERT INTO `sys_menu` VALUES ('dae12251f0234673bd7b21fdd47a02b9', '0ca004d6b1bf4bcab9670a5060d82a55', '0,1,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,', '删除', '120', '', '', '', '0', 'test:tree:testTree:del', '1', '2016-01-06 22:50:25', '1', '2016-01-14 23:41:32', '', '0');
INSERT INTO `sys_menu` VALUES ('de7c50d276454f80881c41a096ecf55c', '7', '0,1,3,7,', '删除', '160', '', '', '', '0', 'sys:role:del', '1', '2015-12-23 21:59:46', '1', '2015-12-23 21:59:46', '', '0');
INSERT INTO `sys_menu` VALUES ('e03f8b6a5e454addb04fc08033b6f60b', '82', '0,1,79,82,', '增加', '90', '', '', '', '0', 'gen:genTable:add', '1', '2016-01-07 11:28:59', '1', '2016-01-07 11:28:59', '', '0');
INSERT INTO `sys_menu` VALUES ('e227a99760354d25bd799fd79f8c20ea', '1', '0,1,', '汽车管理', '15090', '', '', 'fa-bus', '1', '', '1', '2016-02-29 16:38:27', '1', '2016-02-29 16:38:27', '', '0');
INSERT INTO `sys_menu` VALUES ('e2efcf80fc3747329fe02d489dbfda95', '90', '0,1,62,90,', '删除', '120', '', '', '', '0', 'oa:oaNotify:del', '1', '2015-12-29 21:16:14', '1', '2015-12-29 21:16:14', '', '0');
INSERT INTO `sys_menu` VALUES ('e4e64e24aa134deaa9d69c3b9495c997', '1', '0,1,', '二维码测试', '15060', '/tools/TwoDimensionCodeController', '', 'fa-qrcode', '1', '', '1', '2015-12-10 13:03:43', '1', '2016-01-15 20:06:30', '', '0');
INSERT INTO `sys_menu` VALUES ('e824b7c20bb34c9ca9ad023e8873e67b', '82', '0,1,79,82,', '编辑', '60', '', '', '', '0', 'gen:genTable:edit,gen:genTableColumn:edit', '1', '2016-01-07 11:27:55', '1', '2016-01-07 11:31:46', '', '0');
INSERT INTO `sys_menu` VALUES ('ec7cf7a144a440cab217aabd4ffb7788', '4', '0,1,3,4,', '查看', '130', '', '', '', '0', 'sys:menu:view', '1', '2015-12-20 19:02:54', '1', '2015-12-20 19:02:54', '', '0');
INSERT INTO `sys_menu` VALUES ('ed2816031fca4724811a2b4e7ef3c756', 'a5e9cfcc6a8f4bd9980fbdafd2c145ef', '0,1,e227a99760354d25bd799fd79f8c20ea,a5e9cfcc6a8f4bd9980fbdafd2c145ef,', '查看', '30', '', '', '', '0', 'car:car:view', '1', '2016-03-01 09:15:02', '1', '2016-03-01 09:15:02', '', '0');
INSERT INTO `sys_menu` VALUES ('f34887a78fa245c1977603ca7dc98e11', '20', '0,1,3,20,', '导入', '130', '', '', '', '0', 'sys:user:import', '1', '2015-12-19 21:48:13', '1', '2015-12-19 21:48:44', '', '0');
INSERT INTO `sys_menu` VALUES ('f5b2028cfad9470085c7c846de33193a', '90', '0,1,62,90,', '查看', '30', '', '', '', '0', 'oa:oaNotify:view', '1', '2015-12-29 21:14:46', '1', '2015-12-29 21:14:46', '', '0');
INSERT INTO `sys_menu` VALUES ('f87f68e686974c12b4923a81df0dfa7c', '0ca004d6b1bf4bcab9670a5060d82a55', '0,1,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,', '添加', '90', '', '', '', '0', 'test:tree:testTree:add', '1', '2016-01-06 22:49:44', '1', '2016-01-14 23:41:15', '', '0');
INSERT INTO `sys_menu` VALUES ('f93f9a3a2226461dace3b8992cf055ba', '7', '0,1,3,7,', '权限设置', '130', '', '', '', '0', 'sys:role:auth', '1', '2015-12-23 21:36:06', '1', '2015-12-23 21:36:06', '', '0');
INSERT INTO `sys_menu` VALUES ('f9fe62186f0a4d7eada6c6827de79b26', '7ec930fe50fb41d0a9c7aeaa01804d16', '0,1,4d463414bc974236941a6a14dc53c73a,7ec930fe50fb41d0a9c7aeaa01804d16,', '查看', '30', '', '', '', '0', 'tools:testInterface:view', '1', '2015-11-30 16:08:14', '1', '2016-01-12 23:51:33', '', '0');
INSERT INTO `sys_menu` VALUES ('ff5af1be6f7544e2893b1c79dd6e0745', 'b1f6d1b86ba24365bae7fd86c5082317', '0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,', '添加', '90', '', '', '', '0', 'test:onetomany:testDataMain:add', '1', '2016-01-04 11:14:18', '1', '2016-01-14 23:45:01', '', '0');

-- ----------------------------
-- Table structure for `sys_office`
-- ----------------------------
DROP TABLE IF EXISTS `sys_office`;
CREATE TABLE `sys_office` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `area_id` varchar(64) NOT NULL COMMENT '归属区域',
  `code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `type` char(1) NOT NULL COMMENT '机构类型',
  `grade` char(1) NOT NULL COMMENT '机构等级',
  `address` varchar(255) DEFAULT NULL COMMENT '联系地址',
  `zip_code` varchar(100) DEFAULT NULL COMMENT '邮政编码',
  `master` varchar(100) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `fax` varchar(200) DEFAULT NULL COMMENT '传真',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `USEABLE` varchar(64) DEFAULT NULL COMMENT '是否启用',
  `PRIMARY_PERSON` varchar(64) DEFAULT NULL COMMENT '主负责人',
  `DEPUTY_PERSON` varchar(64) DEFAULT NULL COMMENT '副负责人',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_office_parent_id` (`parent_id`),
  KEY `sys_office_del_flag` (`del_flag`),
  KEY `sys_office_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='机构表';

-- ----------------------------
-- Records of sys_office
-- ----------------------------
INSERT INTO `sys_office` VALUES ('1', '0', '0,', '总公司', '10', '4d8ec70b0e0c4c97af07b97c9a906c40', '100000', '1', '1', '', '', '', '', '', '', '1', '', '', '1', '2013-05-27 08:00:00', '1', '2015-11-11 17:40:49', '', '0');
INSERT INTO `sys_office` VALUES ('4', '1', '0,1,', '财务部', '30', '17e8e72326574a0ea94b15d6eeddbb6d', '100003', '2', '1', '', '', '', '', '', '', '1', '', '', '1', '2013-05-27 08:00:00', '1', '2016-01-11 23:10:27', '', '0');
INSERT INTO `sys_office` VALUES ('5', '1', '0,1,', '技术部', '40', '2', '100004', '2', '1', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES ('6a642e140e40496a8d467c646b8e935e', '1', '0,1,', '市场部', '30', '17e8e72326574a0ea94b15d6eeddbb6d', '1000', '2', '1', '', '', '', '', '', '', '1', '', '', '1', '2015-12-03 18:10:13', '1', '2016-01-11 23:10:10', '', '0');
INSERT INTO `sys_office` VALUES ('e0ef8af9cae6416f8bb359714a1b4244', '1', '0,1,', '行政部', '30', '4d8ec70b0e0c4c97af07b97c9a906c40', '', '2', '1', '', '', '', '', '', '', '1', '', '', '1', '2015-11-11 17:41:41', '1', '2015-11-11 17:41:55', '', '0');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属机构',
  `name` varchar(100) NOT NULL COMMENT '角色名称',
  `enname` varchar(255) DEFAULT NULL COMMENT '英文名称',
  `role_type` varchar(255) DEFAULT NULL COMMENT '角色类型',
  `data_scope` char(1) DEFAULT NULL COMMENT '数据范围',
  `is_sys` varchar(64) DEFAULT NULL COMMENT '是否系统数据',
  `useable` varchar(64) DEFAULT NULL COMMENT '是否可用',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_role_del_flag` (`del_flag`),
  KEY `sys_role_enname` (`enname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '5', '管理员', 'system', 'security-role', '1', '1', '1', '1', '2015-11-11 15:59:43', '1', '2016-03-07 09:00:25', '', '0');
INSERT INTO `sys_role` VALUES ('91766cc228e34269a65f0564ba956bd7', '5', '一般用户', 'common', 'assignment', '8', '1', '1', '1', '2015-12-23 20:19:30', '1', '2016-03-06 21:38:02', '', '0');
INSERT INTO `sys_role` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '5', '部门管理员', 'tech', 'assignment', '1', '0', '1', '1', '2015-11-13 10:54:36', '1', '2016-01-16 19:40:19', '', '0');
INSERT INTO `sys_role` VALUES ('dace0cab49a7428584eb57c163f45082', '1', '总公司管理员', 'zgly', 'security-role', '2', '1', '1', '1', '2016-01-19 13:26:05', '1', '2016-01-19 13:26:05', '', '0');

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  `menu_id` varchar(64) NOT NULL COMMENT '菜单编号',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-菜单';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '0b2ebd4d639e4c2b83c2dd0764522f24');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '0ca004d6b1bf4bcab9670a5060d82a55');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '1');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '10');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '11');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '12');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '14');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '15');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '16');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '17');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '18');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '19');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '20');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '21');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '22');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '27');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '29');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '2a0f940fbe304a05a6b4040ddf6df279');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '3');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '30');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '3945952858c54ff6b928265e76416aa2');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '3c92c17886944d0687e73e286cada573');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '4');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '4855cf3b25c244fb8500a380db189d97');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '485c63cf6af1448880bb35b7b3f2bb1b');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '4d463414bc974236941a6a14dc53c73a');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '5');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '54afcfd125024b6eaeab9c5c3cea0009');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '56');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '57');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '58');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '59');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '5dfd09e5790b41388b8691ea9993eba5');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '6');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '62');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '63');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '64');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '65');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '66');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '67');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '68');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '68f9151151174868ab436e11e03bf548');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '69');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '7');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '70');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '70de7eac2f3e4632b1b7aa3cd536b35a');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '72');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '73');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '74');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '75');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '79');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '79f0ffa47dbe43ffa8824d97612d344f');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '79fca849d3da4a82a4ade3f6b9f45126');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '7bd4484bd13c441395e44ab86772da00');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '7ec930fe50fb41d0a9c7aeaa01804d16');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '8');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '80');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '81');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '82');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '83');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '84');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '86');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '87');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '88');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '89');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '8930e4aad1ba4a1c958d303968d8c442');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '9');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '90');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', '95a6a82dc5fc4d07b46e5df57a0606a3');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', 'a4c3dcee6cbc4fc6a0bf617d8619edf3');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', 'a4cfc713c3c04c32a274fb59c71e34ed');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', 'af0a174b4f424bc09a8cc0db83a64105');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', 'afab2db430e2457f9cf3a11feaa8b869');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', 'b1f6d1b86ba24365bae7fd86c5082317');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', 'b9a776f5d7194406bb466388e3af9d08');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', 'ba8092291b40482db8fe7fc006ea3d76');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', 'c2e4d9082a0b4386884a0b203afe2c5c');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', 'c99753f4ad0a4a458337b255c3b49095');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', 'd15ec45a4c5449c3bbd7a61d5f9dd1d2');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', 'df7ce823c5b24ff9bada43d992f373e2');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', 'e2565667b9a745eb870debfd0830c46f');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', 'e3e131bb489f43dd865280e4f5932b6d');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', 'e4e64e24aa134deaa9d69c3b9495c997');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', 'ec7cf7a144a440cab217aabd4ffb7788');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', 'f34887a78fa245c1977603ca7dc98e11');
INSERT INTO `sys_role_menu` VALUES ('03fcd9c5c28948eb827fcd3b852494a6', 'f9fe62186f0a4d7eada6c6827de79b26');
INSERT INTO `sys_role_menu` VALUES ('1', '0b2ebd4d639e4c2b83c2dd0764522f24');
INSERT INTO `sys_role_menu` VALUES ('1', '0ca004d6b1bf4bcab9670a5060d82a55');
INSERT INTO `sys_role_menu` VALUES ('1', '0fde32c6c8204f92a6846714821491f7');
INSERT INTO `sys_role_menu` VALUES ('1', '1');
INSERT INTO `sys_role_menu` VALUES ('1', '10');
INSERT INTO `sys_role_menu` VALUES ('1', '11');
INSERT INTO `sys_role_menu` VALUES ('1', '12');
INSERT INTO `sys_role_menu` VALUES ('1', '13');
INSERT INTO `sys_role_menu` VALUES ('1', '14');
INSERT INTO `sys_role_menu` VALUES ('1', '15');
INSERT INTO `sys_role_menu` VALUES ('1', '16');
INSERT INTO `sys_role_menu` VALUES ('1', '17');
INSERT INTO `sys_role_menu` VALUES ('1', '18');
INSERT INTO `sys_role_menu` VALUES ('1', '19');
INSERT INTO `sys_role_menu` VALUES ('1', '1dc794e30998444489db19eec02915c3');
INSERT INTO `sys_role_menu` VALUES ('1', '20');
INSERT INTO `sys_role_menu` VALUES ('1', '21');
INSERT INTO `sys_role_menu` VALUES ('1', '22');
INSERT INTO `sys_role_menu` VALUES ('1', '27');
INSERT INTO `sys_role_menu` VALUES ('1', '29');
INSERT INTO `sys_role_menu` VALUES ('1', '3');
INSERT INTO `sys_role_menu` VALUES ('1', '30');
INSERT INTO `sys_role_menu` VALUES ('1', '31');
INSERT INTO `sys_role_menu` VALUES ('1', '32');
INSERT INTO `sys_role_menu` VALUES ('1', '33');
INSERT INTO `sys_role_menu` VALUES ('1', '34');
INSERT INTO `sys_role_menu` VALUES ('1', '35');
INSERT INTO `sys_role_menu` VALUES ('1', '36');
INSERT INTO `sys_role_menu` VALUES ('1', '37');
INSERT INTO `sys_role_menu` VALUES ('1', '38');
INSERT INTO `sys_role_menu` VALUES ('1', '39');
INSERT INTO `sys_role_menu` VALUES ('1', '3c92c17886944d0687e73e286cada573');
INSERT INTO `sys_role_menu` VALUES ('1', '4');
INSERT INTO `sys_role_menu` VALUES ('1', '40');
INSERT INTO `sys_role_menu` VALUES ('1', '41');
INSERT INTO `sys_role_menu` VALUES ('1', '42');
INSERT INTO `sys_role_menu` VALUES ('1', '43');
INSERT INTO `sys_role_menu` VALUES ('1', '44');
INSERT INTO `sys_role_menu` VALUES ('1', '45');
INSERT INTO `sys_role_menu` VALUES ('1', '46');
INSERT INTO `sys_role_menu` VALUES ('1', '47');
INSERT INTO `sys_role_menu` VALUES ('1', '48');
INSERT INTO `sys_role_menu` VALUES ('1', '4855cf3b25c244fb8500a380db189d97');
INSERT INTO `sys_role_menu` VALUES ('1', '49');
INSERT INTO `sys_role_menu` VALUES ('1', '5');
INSERT INTO `sys_role_menu` VALUES ('1', '50');
INSERT INTO `sys_role_menu` VALUES ('1', '51');
INSERT INTO `sys_role_menu` VALUES ('1', '52');
INSERT INTO `sys_role_menu` VALUES ('1', '53');
INSERT INTO `sys_role_menu` VALUES ('1', '54');
INSERT INTO `sys_role_menu` VALUES ('1', '55');
INSERT INTO `sys_role_menu` VALUES ('1', '56');
INSERT INTO `sys_role_menu` VALUES ('1', '57');
INSERT INTO `sys_role_menu` VALUES ('1', '58');
INSERT INTO `sys_role_menu` VALUES ('1', '59');
INSERT INTO `sys_role_menu` VALUES ('1', '6');
INSERT INTO `sys_role_menu` VALUES ('1', '60');
INSERT INTO `sys_role_menu` VALUES ('1', '61');
INSERT INTO `sys_role_menu` VALUES ('1', '62');
INSERT INTO `sys_role_menu` VALUES ('1', '63');
INSERT INTO `sys_role_menu` VALUES ('1', '64');
INSERT INTO `sys_role_menu` VALUES ('1', '65');
INSERT INTO `sys_role_menu` VALUES ('1', '66');
INSERT INTO `sys_role_menu` VALUES ('1', '67');
INSERT INTO `sys_role_menu` VALUES ('1', '68');
INSERT INTO `sys_role_menu` VALUES ('1', '69');
INSERT INTO `sys_role_menu` VALUES ('1', '6d7e99b2edf44c96b8bbb9c1ef6dfe66');
INSERT INTO `sys_role_menu` VALUES ('1', '7');
INSERT INTO `sys_role_menu` VALUES ('1', '70');
INSERT INTO `sys_role_menu` VALUES ('1', '72');
INSERT INTO `sys_role_menu` VALUES ('1', '73');
INSERT INTO `sys_role_menu` VALUES ('1', '74');
INSERT INTO `sys_role_menu` VALUES ('1', '79');
INSERT INTO `sys_role_menu` VALUES ('1', '8');
INSERT INTO `sys_role_menu` VALUES ('1', '80');
INSERT INTO `sys_role_menu` VALUES ('1', '81');
INSERT INTO `sys_role_menu` VALUES ('1', '82');
INSERT INTO `sys_role_menu` VALUES ('1', '84');
INSERT INTO `sys_role_menu` VALUES ('1', '872d2edc3b61405eb1448355e8f2c556');
INSERT INTO `sys_role_menu` VALUES ('1', '88');
INSERT INTO `sys_role_menu` VALUES ('1', '89');
INSERT INTO `sys_role_menu` VALUES ('1', '9');
INSERT INTO `sys_role_menu` VALUES ('1', '90');
INSERT INTO `sys_role_menu` VALUES ('1', 'afab2db430e2457f9cf3a11feaa8b869');
INSERT INTO `sys_role_menu` VALUES ('1', 'b1f6d1b86ba24365bae7fd86c5082317');
INSERT INTO `sys_role_menu` VALUES ('1', 'ba8092291b40482db8fe7fc006ea3d76');
INSERT INTO `sys_role_menu` VALUES ('1', 'c2e4d9082a0b4386884a0b203afe2c5c');
INSERT INTO `sys_role_menu` VALUES ('1', 'd15ec45a4c5449c3bbd7a61d5f9dd1d2');
INSERT INTO `sys_role_menu` VALUES ('1', 'dcea8b88d08c4723878d372d2139448d');
INSERT INTO `sys_role_menu` VALUES ('1', 'df7ce823c5b24ff9bada43d992f373e2');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '0787b03f8a7d46d2b398ddcc23545d31');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '07f90eb4ad5848cba282a2e19bbebf60');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '0ca004d6b1bf4bcab9670a5060d82a55');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '1');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '10');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '11');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '1104d3ac2bfe42ccacaa7ddf5c92079f');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '12');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '14');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '15');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '16');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '17');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '18');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '19');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '20');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '21');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '22');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '247bcf278dfc40cca447f5c736c6d849');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '27');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '27057ec14a9f456aac8bfa20a99cb27c');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '28abe4b0cb3b4c8480f84c07a5dfaf06');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '29');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '2a0f940fbe304a05a6b4040ddf6df279');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '3');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '3052db0c082640e0bf7bc47d6a995a0b');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '3c1c639c76f14f6f9903b0143371ea09');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '3c92c17886944d0687e73e286cada573');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '4');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '4137034ecea94ba3a6dabb3dab7100f0');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '47e6ffafbcdc4a7eb70d6a99cd8e82cb');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '4855cf3b25c244fb8500a380db189d97');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '4d463414bc974236941a6a14dc53c73a');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '5');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '5239527958e94d418997b584b85d8b80');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '552b31f68bfd4db6b86a6ac9bfd7f2c6');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '55a33ae3ec2d466682ba2d701bea6fd0');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '56');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '57');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '57f1f00d6cb14819bef388acd10e6f5a');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '58');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '59');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '59f304d5312e4502930fef5dd8117b29');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '5e064f4b23714a1eb506e44f7ce5bb7d');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '6');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '62');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '6509eed6eb634030a46723a18814035c');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '67');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '68');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '6890f329854d41bd92d4857e18ce641d');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '68f9151151174868ab436e11e03bf548');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '6c672b854d2b4821b89297640df5fc26');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '6d3a6777693f47c98e9b3051cacbcfdb');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '7');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '70de7eac2f3e4632b1b7aa3cd536b35a');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '71d50337d0ba46ce85e732248a6e12e3');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '79');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '79f0ffa47dbe43ffa8824d97612d344f');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '79fca849d3da4a82a4ade3f6b9f45126');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '7ec930fe50fb41d0a9c7aeaa01804d16');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '8');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '82');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '84');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '8404bd96194746ad9a4ef73dd4e1a817');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '8815c9a95cf54b19a39b0ce0ff4c32f8');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '89');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '8926112d6acd4a18b5e5dcf99a1f7ff3');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '8930e4aad1ba4a1c958d303968d8c442');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '8ff255c054e5467aac19eb9d5abf8859');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '9');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '90');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '90d61e16e2524450a689ce3e78857993');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '91aa429a6cdc4a9b954d84ff1456934b');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '94fba05f58b644abbc5bacfeda356f0f');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '95a6a82dc5fc4d07b46e5df57a0606a3');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '9bc1aa1053144a608b73f6fbd841d1c6');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '9fdf5971a9e64fac8bbffec2825a5f97');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'a4c3dcee6cbc4fc6a0bf617d8619edf3');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'a4cfc713c3c04c32a274fb59c71e34ed');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'a5e9cfcc6a8f4bd9980fbdafd2c145ef');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'af0a174b4f424bc09a8cc0db83a64105');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'afab2db430e2457f9cf3a11feaa8b869');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'b1f6d1b86ba24365bae7fd86c5082317');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'b9a776f5d7194406bb466388e3af9d08');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'bf5d1705bcd146ab961ba8c33234936b');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'c0b3b81b1851433fb3e3c73902611967');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'c2e4d9082a0b4386884a0b203afe2c5c');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'c3de25a76785419b8a6820db3935941d');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'c6d24345a3694bca8adb9e61f880ddea');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'c6e0080e06014abd9240f870aadf3200');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'c7fa36c7142f481397c2cc12e2bc828a');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'c824b5c244cc4098853671e75858ca55');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'cac8d5931531427ca0ba7e55927dcdf2');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'd15ec45a4c5449c3bbd7a61d5f9dd1d2');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'd3f1b6f292904ef5b95f7800cc777a48');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'd64d25d7b3014f9ba7736867cb2ffc43');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'd70961a8c7db43b78685f69222ea43f4');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'd75f64438d994fc4830b1b3d138cde32');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'd78a0f0a6c8c48699e5d081f64014b99');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'dae12251f0234673bd7b21fdd47a02b9');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'de7c50d276454f80881c41a096ecf55c');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'e03f8b6a5e454addb04fc08033b6f60b');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'e227a99760354d25bd799fd79f8c20ea');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'e2efcf80fc3747329fe02d489dbfda95');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'e4e64e24aa134deaa9d69c3b9495c997');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'e824b7c20bb34c9ca9ad023e8873e67b');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'ec7cf7a144a440cab217aabd4ffb7788');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'ed2816031fca4724811a2b4e7ef3c756');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'f34887a78fa245c1977603ca7dc98e11');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'f5b2028cfad9470085c7c846de33193a');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'f87f68e686974c12b4923a81df0dfa7c');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'f93f9a3a2226461dace3b8992cf055ba');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'f9fe62186f0a4d7eada6c6827de79b26');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'ff5af1be6f7544e2893b1c79dd6e0745');
INSERT INTO `sys_role_menu` VALUES ('2', '0b2ebd4d639e4c2b83c2dd0764522f24');
INSERT INTO `sys_role_menu` VALUES ('2', '0ca004d6b1bf4bcab9670a5060d82a55');
INSERT INTO `sys_role_menu` VALUES ('2', '0fde32c6c8204f92a6846714821491f7');
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '10');
INSERT INTO `sys_role_menu` VALUES ('2', '11');
INSERT INTO `sys_role_menu` VALUES ('2', '12');
INSERT INTO `sys_role_menu` VALUES ('2', '13');
INSERT INTO `sys_role_menu` VALUES ('2', '14');
INSERT INTO `sys_role_menu` VALUES ('2', '15');
INSERT INTO `sys_role_menu` VALUES ('2', '16');
INSERT INTO `sys_role_menu` VALUES ('2', '17');
INSERT INTO `sys_role_menu` VALUES ('2', '18');
INSERT INTO `sys_role_menu` VALUES ('2', '19');
INSERT INTO `sys_role_menu` VALUES ('2', '1dc794e30998444489db19eec02915c3');
INSERT INTO `sys_role_menu` VALUES ('2', '20');
INSERT INTO `sys_role_menu` VALUES ('2', '21');
INSERT INTO `sys_role_menu` VALUES ('2', '22');
INSERT INTO `sys_role_menu` VALUES ('2', '27');
INSERT INTO `sys_role_menu` VALUES ('2', '29');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '30');
INSERT INTO `sys_role_menu` VALUES ('2', '31');
INSERT INTO `sys_role_menu` VALUES ('2', '32');
INSERT INTO `sys_role_menu` VALUES ('2', '33');
INSERT INTO `sys_role_menu` VALUES ('2', '34');
INSERT INTO `sys_role_menu` VALUES ('2', '35');
INSERT INTO `sys_role_menu` VALUES ('2', '36');
INSERT INTO `sys_role_menu` VALUES ('2', '37');
INSERT INTO `sys_role_menu` VALUES ('2', '38');
INSERT INTO `sys_role_menu` VALUES ('2', '39');
INSERT INTO `sys_role_menu` VALUES ('2', '3c92c17886944d0687e73e286cada573');
INSERT INTO `sys_role_menu` VALUES ('2', '4');
INSERT INTO `sys_role_menu` VALUES ('2', '40');
INSERT INTO `sys_role_menu` VALUES ('2', '41');
INSERT INTO `sys_role_menu` VALUES ('2', '42');
INSERT INTO `sys_role_menu` VALUES ('2', '43');
INSERT INTO `sys_role_menu` VALUES ('2', '44');
INSERT INTO `sys_role_menu` VALUES ('2', '45');
INSERT INTO `sys_role_menu` VALUES ('2', '46');
INSERT INTO `sys_role_menu` VALUES ('2', '47');
INSERT INTO `sys_role_menu` VALUES ('2', '48');
INSERT INTO `sys_role_menu` VALUES ('2', '4855cf3b25c244fb8500a380db189d97');
INSERT INTO `sys_role_menu` VALUES ('2', '49');
INSERT INTO `sys_role_menu` VALUES ('2', '5');
INSERT INTO `sys_role_menu` VALUES ('2', '50');
INSERT INTO `sys_role_menu` VALUES ('2', '51');
INSERT INTO `sys_role_menu` VALUES ('2', '52');
INSERT INTO `sys_role_menu` VALUES ('2', '53');
INSERT INTO `sys_role_menu` VALUES ('2', '54');
INSERT INTO `sys_role_menu` VALUES ('2', '55');
INSERT INTO `sys_role_menu` VALUES ('2', '56');
INSERT INTO `sys_role_menu` VALUES ('2', '57');
INSERT INTO `sys_role_menu` VALUES ('2', '58');
INSERT INTO `sys_role_menu` VALUES ('2', '59');
INSERT INTO `sys_role_menu` VALUES ('2', '6');
INSERT INTO `sys_role_menu` VALUES ('2', '60');
INSERT INTO `sys_role_menu` VALUES ('2', '61');
INSERT INTO `sys_role_menu` VALUES ('2', '62');
INSERT INTO `sys_role_menu` VALUES ('2', '63');
INSERT INTO `sys_role_menu` VALUES ('2', '64');
INSERT INTO `sys_role_menu` VALUES ('2', '65');
INSERT INTO `sys_role_menu` VALUES ('2', '66');
INSERT INTO `sys_role_menu` VALUES ('2', '67');
INSERT INTO `sys_role_menu` VALUES ('2', '68');
INSERT INTO `sys_role_menu` VALUES ('2', '69');
INSERT INTO `sys_role_menu` VALUES ('2', '6d7e99b2edf44c96b8bbb9c1ef6dfe66');
INSERT INTO `sys_role_menu` VALUES ('2', '7');
INSERT INTO `sys_role_menu` VALUES ('2', '70');
INSERT INTO `sys_role_menu` VALUES ('2', '72');
INSERT INTO `sys_role_menu` VALUES ('2', '73');
INSERT INTO `sys_role_menu` VALUES ('2', '74');
INSERT INTO `sys_role_menu` VALUES ('2', '79');
INSERT INTO `sys_role_menu` VALUES ('2', '8');
INSERT INTO `sys_role_menu` VALUES ('2', '80');
INSERT INTO `sys_role_menu` VALUES ('2', '81');
INSERT INTO `sys_role_menu` VALUES ('2', '82');
INSERT INTO `sys_role_menu` VALUES ('2', '84');
INSERT INTO `sys_role_menu` VALUES ('2', '85');
INSERT INTO `sys_role_menu` VALUES ('2', '88');
INSERT INTO `sys_role_menu` VALUES ('2', '89');
INSERT INTO `sys_role_menu` VALUES ('2', '9');
INSERT INTO `sys_role_menu` VALUES ('2', '90');
INSERT INTO `sys_role_menu` VALUES ('2', 'afab2db430e2457f9cf3a11feaa8b869');
INSERT INTO `sys_role_menu` VALUES ('2', 'b1f6d1b86ba24365bae7fd86c5082317');
INSERT INTO `sys_role_menu` VALUES ('2', 'ba8092291b40482db8fe7fc006ea3d76');
INSERT INTO `sys_role_menu` VALUES ('2', 'c2e4d9082a0b4386884a0b203afe2c5c');
INSERT INTO `sys_role_menu` VALUES ('2', 'd15ec45a4c5449c3bbd7a61d5f9dd1d2');
INSERT INTO `sys_role_menu` VALUES ('2', 'dcea8b88d08c4723878d372d2139448d');
INSERT INTO `sys_role_menu` VALUES ('2', 'df7ce823c5b24ff9bada43d992f373e2');
INSERT INTO `sys_role_menu` VALUES ('3', '0b2ebd4d639e4c2b83c2dd0764522f24');
INSERT INTO `sys_role_menu` VALUES ('3', '0ca004d6b1bf4bcab9670a5060d82a55');
INSERT INTO `sys_role_menu` VALUES ('3', '1');
INSERT INTO `sys_role_menu` VALUES ('3', '10');
INSERT INTO `sys_role_menu` VALUES ('3', '11');
INSERT INTO `sys_role_menu` VALUES ('3', '12');
INSERT INTO `sys_role_menu` VALUES ('3', '13');
INSERT INTO `sys_role_menu` VALUES ('3', '14');
INSERT INTO `sys_role_menu` VALUES ('3', '15');
INSERT INTO `sys_role_menu` VALUES ('3', '16');
INSERT INTO `sys_role_menu` VALUES ('3', '17');
INSERT INTO `sys_role_menu` VALUES ('3', '18');
INSERT INTO `sys_role_menu` VALUES ('3', '19');
INSERT INTO `sys_role_menu` VALUES ('3', '20');
INSERT INTO `sys_role_menu` VALUES ('3', '21');
INSERT INTO `sys_role_menu` VALUES ('3', '22');
INSERT INTO `sys_role_menu` VALUES ('3', '27');
INSERT INTO `sys_role_menu` VALUES ('3', '29');
INSERT INTO `sys_role_menu` VALUES ('3', '3');
INSERT INTO `sys_role_menu` VALUES ('3', '30');
INSERT INTO `sys_role_menu` VALUES ('3', '31');
INSERT INTO `sys_role_menu` VALUES ('3', '32');
INSERT INTO `sys_role_menu` VALUES ('3', '33');
INSERT INTO `sys_role_menu` VALUES ('3', '34');
INSERT INTO `sys_role_menu` VALUES ('3', '35');
INSERT INTO `sys_role_menu` VALUES ('3', '36');
INSERT INTO `sys_role_menu` VALUES ('3', '37');
INSERT INTO `sys_role_menu` VALUES ('3', '38');
INSERT INTO `sys_role_menu` VALUES ('3', '39');
INSERT INTO `sys_role_menu` VALUES ('3', '3c92c17886944d0687e73e286cada573');
INSERT INTO `sys_role_menu` VALUES ('3', '4');
INSERT INTO `sys_role_menu` VALUES ('3', '40');
INSERT INTO `sys_role_menu` VALUES ('3', '41');
INSERT INTO `sys_role_menu` VALUES ('3', '42');
INSERT INTO `sys_role_menu` VALUES ('3', '43');
INSERT INTO `sys_role_menu` VALUES ('3', '44');
INSERT INTO `sys_role_menu` VALUES ('3', '45');
INSERT INTO `sys_role_menu` VALUES ('3', '46');
INSERT INTO `sys_role_menu` VALUES ('3', '47');
INSERT INTO `sys_role_menu` VALUES ('3', '48');
INSERT INTO `sys_role_menu` VALUES ('3', '4855cf3b25c244fb8500a380db189d97');
INSERT INTO `sys_role_menu` VALUES ('3', '49');
INSERT INTO `sys_role_menu` VALUES ('3', '5');
INSERT INTO `sys_role_menu` VALUES ('3', '50');
INSERT INTO `sys_role_menu` VALUES ('3', '51');
INSERT INTO `sys_role_menu` VALUES ('3', '52');
INSERT INTO `sys_role_menu` VALUES ('3', '53');
INSERT INTO `sys_role_menu` VALUES ('3', '54');
INSERT INTO `sys_role_menu` VALUES ('3', '55');
INSERT INTO `sys_role_menu` VALUES ('3', '56');
INSERT INTO `sys_role_menu` VALUES ('3', '57');
INSERT INTO `sys_role_menu` VALUES ('3', '58');
INSERT INTO `sys_role_menu` VALUES ('3', '59');
INSERT INTO `sys_role_menu` VALUES ('3', '6');
INSERT INTO `sys_role_menu` VALUES ('3', '60');
INSERT INTO `sys_role_menu` VALUES ('3', '61');
INSERT INTO `sys_role_menu` VALUES ('3', '62');
INSERT INTO `sys_role_menu` VALUES ('3', '63');
INSERT INTO `sys_role_menu` VALUES ('3', '64');
INSERT INTO `sys_role_menu` VALUES ('3', '65');
INSERT INTO `sys_role_menu` VALUES ('3', '66');
INSERT INTO `sys_role_menu` VALUES ('3', '67');
INSERT INTO `sys_role_menu` VALUES ('3', '68');
INSERT INTO `sys_role_menu` VALUES ('3', '69');
INSERT INTO `sys_role_menu` VALUES ('3', '6d7e99b2edf44c96b8bbb9c1ef6dfe66');
INSERT INTO `sys_role_menu` VALUES ('3', '7');
INSERT INTO `sys_role_menu` VALUES ('3', '70');
INSERT INTO `sys_role_menu` VALUES ('3', '72');
INSERT INTO `sys_role_menu` VALUES ('3', '73');
INSERT INTO `sys_role_menu` VALUES ('3', '74');
INSERT INTO `sys_role_menu` VALUES ('3', '79');
INSERT INTO `sys_role_menu` VALUES ('3', '8');
INSERT INTO `sys_role_menu` VALUES ('3', '80');
INSERT INTO `sys_role_menu` VALUES ('3', '81');
INSERT INTO `sys_role_menu` VALUES ('3', '82');
INSERT INTO `sys_role_menu` VALUES ('3', '84');
INSERT INTO `sys_role_menu` VALUES ('3', '85');
INSERT INTO `sys_role_menu` VALUES ('3', '88');
INSERT INTO `sys_role_menu` VALUES ('3', '89');
INSERT INTO `sys_role_menu` VALUES ('3', '9');
INSERT INTO `sys_role_menu` VALUES ('3', '90');
INSERT INTO `sys_role_menu` VALUES ('3', 'afab2db430e2457f9cf3a11feaa8b869');
INSERT INTO `sys_role_menu` VALUES ('3', 'b1f6d1b86ba24365bae7fd86c5082317');
INSERT INTO `sys_role_menu` VALUES ('3', 'ba8092291b40482db8fe7fc006ea3d76');
INSERT INTO `sys_role_menu` VALUES ('3', 'c2e4d9082a0b4386884a0b203afe2c5c');
INSERT INTO `sys_role_menu` VALUES ('3', 'd15ec45a4c5449c3bbd7a61d5f9dd1d2');
INSERT INTO `sys_role_menu` VALUES ('3', 'dcea8b88d08c4723878d372d2139448d');
INSERT INTO `sys_role_menu` VALUES ('3', 'df7ce823c5b24ff9bada43d992f373e2');
INSERT INTO `sys_role_menu` VALUES ('5', '0b2ebd4d639e4c2b83c2dd0764522f24');
INSERT INTO `sys_role_menu` VALUES ('5', '0ca004d6b1bf4bcab9670a5060d82a55');
INSERT INTO `sys_role_menu` VALUES ('5', '1');
INSERT INTO `sys_role_menu` VALUES ('5', '10');
INSERT INTO `sys_role_menu` VALUES ('5', '11');
INSERT INTO `sys_role_menu` VALUES ('5', '12');
INSERT INTO `sys_role_menu` VALUES ('5', '14');
INSERT INTO `sys_role_menu` VALUES ('5', '15');
INSERT INTO `sys_role_menu` VALUES ('5', '16');
INSERT INTO `sys_role_menu` VALUES ('5', '17');
INSERT INTO `sys_role_menu` VALUES ('5', '18');
INSERT INTO `sys_role_menu` VALUES ('5', '19');
INSERT INTO `sys_role_menu` VALUES ('5', '20');
INSERT INTO `sys_role_menu` VALUES ('5', '21');
INSERT INTO `sys_role_menu` VALUES ('5', '22');
INSERT INTO `sys_role_menu` VALUES ('5', '27');
INSERT INTO `sys_role_menu` VALUES ('5', '29');
INSERT INTO `sys_role_menu` VALUES ('5', '2a0f940fbe304a05a6b4040ddf6df279');
INSERT INTO `sys_role_menu` VALUES ('5', '3');
INSERT INTO `sys_role_menu` VALUES ('5', '30');
INSERT INTO `sys_role_menu` VALUES ('5', '3c92c17886944d0687e73e286cada573');
INSERT INTO `sys_role_menu` VALUES ('5', '4');
INSERT INTO `sys_role_menu` VALUES ('5', '4855cf3b25c244fb8500a380db189d97');
INSERT INTO `sys_role_menu` VALUES ('5', '4d463414bc974236941a6a14dc53c73a');
INSERT INTO `sys_role_menu` VALUES ('5', '5');
INSERT INTO `sys_role_menu` VALUES ('5', '56');
INSERT INTO `sys_role_menu` VALUES ('5', '57');
INSERT INTO `sys_role_menu` VALUES ('5', '58');
INSERT INTO `sys_role_menu` VALUES ('5', '59');
INSERT INTO `sys_role_menu` VALUES ('5', '6');
INSERT INTO `sys_role_menu` VALUES ('5', '62');
INSERT INTO `sys_role_menu` VALUES ('5', '63');
INSERT INTO `sys_role_menu` VALUES ('5', '64');
INSERT INTO `sys_role_menu` VALUES ('5', '65');
INSERT INTO `sys_role_menu` VALUES ('5', '66');
INSERT INTO `sys_role_menu` VALUES ('5', '67');
INSERT INTO `sys_role_menu` VALUES ('5', '68');
INSERT INTO `sys_role_menu` VALUES ('5', '68f9151151174868ab436e11e03bf548');
INSERT INTO `sys_role_menu` VALUES ('5', '69');
INSERT INTO `sys_role_menu` VALUES ('5', '7');
INSERT INTO `sys_role_menu` VALUES ('5', '70');
INSERT INTO `sys_role_menu` VALUES ('5', '70de7eac2f3e4632b1b7aa3cd536b35a');
INSERT INTO `sys_role_menu` VALUES ('5', '72');
INSERT INTO `sys_role_menu` VALUES ('5', '73');
INSERT INTO `sys_role_menu` VALUES ('5', '74');
INSERT INTO `sys_role_menu` VALUES ('5', '75');
INSERT INTO `sys_role_menu` VALUES ('5', '79');
INSERT INTO `sys_role_menu` VALUES ('5', '79f0ffa47dbe43ffa8824d97612d344f');
INSERT INTO `sys_role_menu` VALUES ('5', '79fca849d3da4a82a4ade3f6b9f45126');
INSERT INTO `sys_role_menu` VALUES ('5', '7ec930fe50fb41d0a9c7aeaa01804d16');
INSERT INTO `sys_role_menu` VALUES ('5', '8');
INSERT INTO `sys_role_menu` VALUES ('5', '80');
INSERT INTO `sys_role_menu` VALUES ('5', '81');
INSERT INTO `sys_role_menu` VALUES ('5', '82');
INSERT INTO `sys_role_menu` VALUES ('5', '83');
INSERT INTO `sys_role_menu` VALUES ('5', '84');
INSERT INTO `sys_role_menu` VALUES ('5', '86');
INSERT INTO `sys_role_menu` VALUES ('5', '87');
INSERT INTO `sys_role_menu` VALUES ('5', '88');
INSERT INTO `sys_role_menu` VALUES ('5', '89');
INSERT INTO `sys_role_menu` VALUES ('5', '8930e4aad1ba4a1c958d303968d8c442');
INSERT INTO `sys_role_menu` VALUES ('5', '9');
INSERT INTO `sys_role_menu` VALUES ('5', '90');
INSERT INTO `sys_role_menu` VALUES ('5', '95a6a82dc5fc4d07b46e5df57a0606a3');
INSERT INTO `sys_role_menu` VALUES ('5', 'a4c3dcee6cbc4fc6a0bf617d8619edf3');
INSERT INTO `sys_role_menu` VALUES ('5', 'a4cfc713c3c04c32a274fb59c71e34ed');
INSERT INTO `sys_role_menu` VALUES ('5', 'af0a174b4f424bc09a8cc0db83a64105');
INSERT INTO `sys_role_menu` VALUES ('5', 'afab2db430e2457f9cf3a11feaa8b869');
INSERT INTO `sys_role_menu` VALUES ('5', 'b1f6d1b86ba24365bae7fd86c5082317');
INSERT INTO `sys_role_menu` VALUES ('5', 'b9a776f5d7194406bb466388e3af9d08');
INSERT INTO `sys_role_menu` VALUES ('5', 'ba8092291b40482db8fe7fc006ea3d76');
INSERT INTO `sys_role_menu` VALUES ('5', 'c2e4d9082a0b4386884a0b203afe2c5c');
INSERT INTO `sys_role_menu` VALUES ('5', 'd15ec45a4c5449c3bbd7a61d5f9dd1d2');
INSERT INTO `sys_role_menu` VALUES ('5', 'df7ce823c5b24ff9bada43d992f373e2');
INSERT INTO `sys_role_menu` VALUES ('5', 'e2565667b9a745eb870debfd0830c46f');
INSERT INTO `sys_role_menu` VALUES ('5', 'e4e64e24aa134deaa9d69c3b9495c997');
INSERT INTO `sys_role_menu` VALUES ('5', 'ec7cf7a144a440cab217aabd4ffb7788');
INSERT INTO `sys_role_menu` VALUES ('5', 'f34887a78fa245c1977603ca7dc98e11');
INSERT INTO `sys_role_menu` VALUES ('5', 'f9fe62186f0a4d7eada6c6827de79b26');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '0b2ebd4d639e4c2b83c2dd0764522f24');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '0ca004d6b1bf4bcab9670a5060d82a55');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '1');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '10');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '11');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '12');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '14');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '15');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '16');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '17');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '18');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '19');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '20');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '21');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '22');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '27');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '29');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '2a0f940fbe304a05a6b4040ddf6df279');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '3');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '30');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '3945952858c54ff6b928265e76416aa2');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '3c92c17886944d0687e73e286cada573');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '4');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '4855cf3b25c244fb8500a380db189d97');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '485c63cf6af1448880bb35b7b3f2bb1b');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '4d463414bc974236941a6a14dc53c73a');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '5');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '54afcfd125024b6eaeab9c5c3cea0009');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '56');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '57');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '58');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '59');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '5dfd09e5790b41388b8691ea9993eba5');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '6');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '62');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '63');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '64');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '65');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '66');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '67');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '68');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '68f9151151174868ab436e11e03bf548');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '69');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '7');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '70');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '70de7eac2f3e4632b1b7aa3cd536b35a');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '72');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '73');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '74');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '75');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '79');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '79f0ffa47dbe43ffa8824d97612d344f');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '79fca849d3da4a82a4ade3f6b9f45126');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '7bd4484bd13c441395e44ab86772da00');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '7ec930fe50fb41d0a9c7aeaa01804d16');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '8');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '80');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '81');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '82');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '83');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '84');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '85');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '86');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '87');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '88');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '89');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '8930e4aad1ba4a1c958d303968d8c442');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '9');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '90');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', '95a6a82dc5fc4d07b46e5df57a0606a3');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', 'a4c3dcee6cbc4fc6a0bf617d8619edf3');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', 'a4cfc713c3c04c32a274fb59c71e34ed');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', 'af0a174b4f424bc09a8cc0db83a64105');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', 'afab2db430e2457f9cf3a11feaa8b869');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', 'b1f6d1b86ba24365bae7fd86c5082317');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', 'b9a776f5d7194406bb466388e3af9d08');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', 'ba8092291b40482db8fe7fc006ea3d76');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', 'c2e4d9082a0b4386884a0b203afe2c5c');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', 'c99753f4ad0a4a458337b255c3b49095');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', 'd15ec45a4c5449c3bbd7a61d5f9dd1d2');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', 'df7ce823c5b24ff9bada43d992f373e2');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', 'e2565667b9a745eb870debfd0830c46f');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', 'e3e131bb489f43dd865280e4f5932b6d');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', 'e4e64e24aa134deaa9d69c3b9495c997');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', 'ec7cf7a144a440cab217aabd4ffb7788');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', 'f34887a78fa245c1977603ca7dc98e11');
INSERT INTO `sys_role_menu` VALUES ('78cf5521ff9e43ed80266adeff67d5ed', 'f9fe62186f0a4d7eada6c6827de79b26');
INSERT INTO `sys_role_menu` VALUES ('91766cc228e34269a65f0564ba956bd7', '0fa9f3a81fba48beafb5c6a594f53809');
INSERT INTO `sys_role_menu` VALUES ('91766cc228e34269a65f0564ba956bd7', '1');
INSERT INTO `sys_role_menu` VALUES ('91766cc228e34269a65f0564ba956bd7', '27');
INSERT INTO `sys_role_menu` VALUES ('91766cc228e34269a65f0564ba956bd7', '27057ec14a9f456aac8bfa20a99cb27c');
INSERT INTO `sys_role_menu` VALUES ('91766cc228e34269a65f0564ba956bd7', '29');
INSERT INTO `sys_role_menu` VALUES ('91766cc228e34269a65f0564ba956bd7', '3052db0c082640e0bf7bc47d6a995a0b');
INSERT INTO `sys_role_menu` VALUES ('91766cc228e34269a65f0564ba956bd7', '440b58c0dddc4a0b8f0ca997506f1341');
INSERT INTO `sys_role_menu` VALUES ('91766cc228e34269a65f0564ba956bd7', '478230a5611f48c6b9f4a882a89e49e2');
INSERT INTO `sys_role_menu` VALUES ('91766cc228e34269a65f0564ba956bd7', '47e6ffafbcdc4a7eb70d6a99cd8e82cb');
INSERT INTO `sys_role_menu` VALUES ('91766cc228e34269a65f0564ba956bd7', '552b31f68bfd4db6b86a6ac9bfd7f2c6');
INSERT INTO `sys_role_menu` VALUES ('91766cc228e34269a65f0564ba956bd7', '56');
INSERT INTO `sys_role_menu` VALUES ('91766cc228e34269a65f0564ba956bd7', '57');
INSERT INTO `sys_role_menu` VALUES ('91766cc228e34269a65f0564ba956bd7', '58');
INSERT INTO `sys_role_menu` VALUES ('91766cc228e34269a65f0564ba956bd7', '59');
INSERT INTO `sys_role_menu` VALUES ('91766cc228e34269a65f0564ba956bd7', '62');
INSERT INTO `sys_role_menu` VALUES ('91766cc228e34269a65f0564ba956bd7', '82cdd9a62a714dc997ae7c47f703ffb6');
INSERT INTO `sys_role_menu` VALUES ('91766cc228e34269a65f0564ba956bd7', '8404bd96194746ad9a4ef73dd4e1a817');
INSERT INTO `sys_role_menu` VALUES ('91766cc228e34269a65f0564ba956bd7', '89');
INSERT INTO `sys_role_menu` VALUES ('91766cc228e34269a65f0564ba956bd7', '90');
INSERT INTO `sys_role_menu` VALUES ('91766cc228e34269a65f0564ba956bd7', '90d61e16e2524450a689ce3e78857993');
INSERT INTO `sys_role_menu` VALUES ('91766cc228e34269a65f0564ba956bd7', '95a6a82dc5fc4d07b46e5df57a0606a3');
INSERT INTO `sys_role_menu` VALUES ('91766cc228e34269a65f0564ba956bd7', '9f1555068c454e4bbcad0a7d2886a5b2');
INSERT INTO `sys_role_menu` VALUES ('91766cc228e34269a65f0564ba956bd7', 'a5e9cfcc6a8f4bd9980fbdafd2c145ef');
INSERT INTO `sys_role_menu` VALUES ('91766cc228e34269a65f0564ba956bd7', 'af0a174b4f424bc09a8cc0db83a64105');
INSERT INTO `sys_role_menu` VALUES ('91766cc228e34269a65f0564ba956bd7', 'bf5d1705bcd146ab961ba8c33234936b');
INSERT INTO `sys_role_menu` VALUES ('91766cc228e34269a65f0564ba956bd7', 'c6d24345a3694bca8adb9e61f880ddea');
INSERT INTO `sys_role_menu` VALUES ('91766cc228e34269a65f0564ba956bd7', 'd70961a8c7db43b78685f69222ea43f4');
INSERT INTO `sys_role_menu` VALUES ('91766cc228e34269a65f0564ba956bd7', 'e227a99760354d25bd799fd79f8c20ea');
INSERT INTO `sys_role_menu` VALUES ('91766cc228e34269a65f0564ba956bd7', 'ed2816031fca4724811a2b4e7ef3c756');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '0b2ebd4d639e4c2b83c2dd0764522f24');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '0ca004d6b1bf4bcab9670a5060d82a55');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '0fde32c6c8204f92a6846714821491f7');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '1');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '10');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '11');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '12');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '13');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '14');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '15');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '16');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '17');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '18');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '19');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '1dc794e30998444489db19eec02915c3');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '20');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '21');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '22');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '27');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '29');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '3');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '30');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '31');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '32');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '33');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '34');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '35');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '36');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '37');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '38');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '39');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '3c92c17886944d0687e73e286cada573');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '4');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '40');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '41');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '42');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '43');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '44');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '45');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '46');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '47');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '48');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '4855cf3b25c244fb8500a380db189d97');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '49');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '4d463414bc974236941a6a14dc53c73a');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '5');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '50');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '51');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '52');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '53');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '54');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '55');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '56');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '57');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '58');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '59');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '5e72ae5a7d56478c8db2a7975883f367');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '6');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '60');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '61');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '62');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '63');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '64');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '65');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '66');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '67');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '68');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '69');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '6d7e99b2edf44c96b8bbb9c1ef6dfe66');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '7');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '70');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '70de7eac2f3e4632b1b7aa3cd536b35a');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '72');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '73');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '74');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '79');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '7ec930fe50fb41d0a9c7aeaa01804d16');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '8');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '80');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '81');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '82');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '84');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '88');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '89');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '9');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '90');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', '95a6a82dc5fc4d07b46e5df57a0606a3');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', 'a4cfc713c3c04c32a274fb59c71e34ed');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', 'af0a174b4f424bc09a8cc0db83a64105');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', 'afab2db430e2457f9cf3a11feaa8b869');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', 'b1f6d1b86ba24365bae7fd86c5082317');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', 'ba8092291b40482db8fe7fc006ea3d76');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', 'c2e4d9082a0b4386884a0b203afe2c5c');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', 'd15ec45a4c5449c3bbd7a61d5f9dd1d2');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', 'dcea8b88d08c4723878d372d2139448d');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', 'df7ce823c5b24ff9bada43d992f373e2');
INSERT INTO `sys_role_menu` VALUES ('a74b7da6e0e0458298316798e89e70ea', 'f9fe62186f0a4d7eada6c6827de79b26');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '0787b03f8a7d46d2b398ddcc23545d31');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '07f90eb4ad5848cba282a2e19bbebf60');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '0ca004d6b1bf4bcab9670a5060d82a55');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '1');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '10');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '11');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '12');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '14');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '15');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '16');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '17');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '18');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '19');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '20');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '20b1147d34e14580b88ed00dd5d3ef78');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '21');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '22');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '2209119856094953ba6ebc339b415887');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '247bcf278dfc40cca447f5c736c6d849');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '27');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '28abe4b0cb3b4c8480f84c07a5dfaf06');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '29');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '2a0f940fbe304a05a6b4040ddf6df279');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '2c6838e2f935453485342836efb63c1f');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '3');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '3518c0cfa3b645b09a6fa979ac641f41');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '3c1c639c76f14f6f9903b0143371ea09');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '3c92c17886944d0687e73e286cada573');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '4');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '456fea6a94114987b3f4d5b973a4f46b');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '4855cf3b25c244fb8500a380db189d97');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '487af8d5d1034c9d852007f1b3a27342');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '4d463414bc974236941a6a14dc53c73a');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '5');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '5239527958e94d418997b584b85d8b80');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '55a33ae3ec2d466682ba2d701bea6fd0');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '56');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '57');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '57f1f00d6cb14819bef388acd10e6f5a');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '58');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '59');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '59f304d5312e4502930fef5dd8117b29');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '5b1ca1d4aa5b4a56a6682093fafda4f5');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '5ca66750233b46699593dc083f87cd60');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '6');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '62');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '6509eed6eb634030a46723a18814035c');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '67');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '68');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '6890f329854d41bd92d4857e18ce641d');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '68f9151151174868ab436e11e03bf548');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '6c672b854d2b4821b89297640df5fc26');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '6d3a6777693f47c98e9b3051cacbcfdb');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '7');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '70de7eac2f3e4632b1b7aa3cd536b35a');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '70f867cb6f23489d8427e295e0e63a6f');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '7402c1aad68f46d99f3a0868737ca582');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '79');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '79f0ffa47dbe43ffa8824d97612d344f');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '79fca849d3da4a82a4ade3f6b9f45126');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '7ec930fe50fb41d0a9c7aeaa01804d16');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '8');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '82');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '8211dbd824ca422fb5baf1bade46696b');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '84');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '8815c9a95cf54b19a39b0ce0ff4c32f8');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '89');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '8926112d6acd4a18b5e5dcf99a1f7ff3');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '8930e4aad1ba4a1c958d303968d8c442');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '8f6d10c69f0247a0806f0f1db4caef16');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '8ff255c054e5467aac19eb9d5abf8859');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '9');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '90');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '91aa429a6cdc4a9b954d84ff1456934b');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '95a6a82dc5fc4d07b46e5df57a0606a3');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '9bc1aa1053144a608b73f6fbd841d1c6');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', '9fdf5971a9e64fac8bbffec2825a5f97');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'a4c3dcee6cbc4fc6a0bf617d8619edf3');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'a4cfc713c3c04c32a274fb59c71e34ed');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'ae4627d9a17c4593a171349a61ab6fcf');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'af0a174b4f424bc09a8cc0db83a64105');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'afab2db430e2457f9cf3a11feaa8b869');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'b051156518fd413794cf0316830aaf07');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'b1f6d1b86ba24365bae7fd86c5082317');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'b9a776f5d7194406bb466388e3af9d08');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'c2e4d9082a0b4386884a0b203afe2c5c');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'c3de25a76785419b8a6820db3935941d');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'c6e0080e06014abd9240f870aadf3200');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'c7fa36c7142f481397c2cc12e2bc828a');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'c824b5c244cc4098853671e75858ca55');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'cac8d5931531427ca0ba7e55927dcdf2');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'd15ec45a4c5449c3bbd7a61d5f9dd1d2');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'd3f1b6f292904ef5b95f7800cc777a48');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'd64d25d7b3014f9ba7736867cb2ffc43');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'd75f64438d994fc4830b1b3d138cde32');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'd78a0f0a6c8c48699e5d081f64014b99');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'dae12251f0234673bd7b21fdd47a02b9');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'de7c50d276454f80881c41a096ecf55c');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'e03f8b6a5e454addb04fc08033b6f60b');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'e2565667b9a745eb870debfd0830c46f');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'e2efcf80fc3747329fe02d489dbfda95');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'e4e64e24aa134deaa9d69c3b9495c997');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'e824b7c20bb34c9ca9ad023e8873e67b');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'ec7cf7a144a440cab217aabd4ffb7788');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'f34887a78fa245c1977603ca7dc98e11');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'f5b2028cfad9470085c7c846de33193a');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'f87f68e686974c12b4923a81df0dfa7c');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'f93f9a3a2226461dace3b8992cf055ba');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'f9fe62186f0a4d7eada6c6827de79b26');
INSERT INTO `sys_role_menu` VALUES ('caacf61017114120bcf7bf1049b6d4c3', 'ff5af1be6f7544e2893b1c79dd6e0745');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '0b2ebd4d639e4c2b83c2dd0764522f24');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '0ca004d6b1bf4bcab9670a5060d82a55');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '0fde32c6c8204f92a6846714821491f7');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '1');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '10');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '11');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '12');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '13');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '14');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '15');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '16');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '17');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '18');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '19');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '1dc794e30998444489db19eec02915c3');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '20');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '21');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '22');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '27');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '29');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '3');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '30');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '31');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '32');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '33');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '34');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '35');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '36');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '37');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '38');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '39');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '3c92c17886944d0687e73e286cada573');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '4');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '40');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '41');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '42');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '43');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '44');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '45');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '46');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '47');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '48');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '4855cf3b25c244fb8500a380db189d97');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '49');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '4d463414bc974236941a6a14dc53c73a');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '5');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '50');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '51');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '52');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '53');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '54');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '55');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '56');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '57');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '58');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '59');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '6');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '60');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '61');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '62');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '63');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '64');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '65');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '66');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '67');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '68');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '69');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '6d7e99b2edf44c96b8bbb9c1ef6dfe66');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '7');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '70');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '72');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '73');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '74');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '79');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '8');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '80');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '81');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '82');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '84');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '88');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '89');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '9');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', '90');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', 'af0a174b4f424bc09a8cc0db83a64105');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', 'afab2db430e2457f9cf3a11feaa8b869');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', 'b1f6d1b86ba24365bae7fd86c5082317');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', 'ba8092291b40482db8fe7fc006ea3d76');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', 'c2e4d9082a0b4386884a0b203afe2c5c');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', 'd15ec45a4c5449c3bbd7a61d5f9dd1d2');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', 'dcea8b88d08c4723878d372d2139448d');
INSERT INTO `sys_role_menu` VALUES ('f6d2f215ed734cc09273928acab6e136', 'df7ce823c5b24ff9bada43d992f373e2');

-- ----------------------------
-- Table structure for `sys_role_office`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_office`;
CREATE TABLE `sys_role_office` (
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  `office_id` varchar(64) NOT NULL COMMENT '机构编号',
  PRIMARY KEY (`role_id`,`office_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-机构';

-- ----------------------------
-- Records of sys_role_office
-- ----------------------------
INSERT INTO `sys_role_office` VALUES ('7', '10');
INSERT INTO `sys_role_office` VALUES ('7', '11');
INSERT INTO `sys_role_office` VALUES ('7', '12');
INSERT INTO `sys_role_office` VALUES ('7', '13');
INSERT INTO `sys_role_office` VALUES ('7', '14');
INSERT INTO `sys_role_office` VALUES ('7', '15');
INSERT INTO `sys_role_office` VALUES ('7', '16');
INSERT INTO `sys_role_office` VALUES ('7', '17');
INSERT INTO `sys_role_office` VALUES ('7', '18');
INSERT INTO `sys_role_office` VALUES ('7', '19');
INSERT INTO `sys_role_office` VALUES ('7', '20');
INSERT INTO `sys_role_office` VALUES ('7', '21');
INSERT INTO `sys_role_office` VALUES ('7', '22');
INSERT INTO `sys_role_office` VALUES ('7', '23');
INSERT INTO `sys_role_office` VALUES ('7', '24');
INSERT INTO `sys_role_office` VALUES ('7', '25');
INSERT INTO `sys_role_office` VALUES ('7', '26');
INSERT INTO `sys_role_office` VALUES ('7', '7');
INSERT INTO `sys_role_office` VALUES ('7', '8');
INSERT INTO `sys_role_office` VALUES ('7', '9');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `company_id` varchar(64) DEFAULT NULL COMMENT '归属公司',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属部门',
  `login_name` varchar(100) DEFAULT NULL COMMENT '登录名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `no` varchar(100) DEFAULT NULL COMMENT '工号',
  `name` varchar(100) DEFAULT NULL COMMENT '姓名',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `mobile` varchar(200) DEFAULT NULL COMMENT '手机',
  `user_type` char(1) DEFAULT NULL COMMENT '用户类型',
  `photo` varchar(1000) DEFAULT NULL COMMENT '用户头像',
  `login_ip` varchar(100) DEFAULT NULL COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `login_flag` varchar(64) DEFAULT NULL COMMENT '是否可登录',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标记',
  `qrcode` varchar(1000) DEFAULT NULL COMMENT '二维码',
  PRIMARY KEY (`id`),
  KEY `sys_user_office_id` (`office_id`),
  KEY `sys_user_login_name` (`login_name`),
  KEY `sys_user_company_id` (`company_id`),
  KEY `sys_user_update_date` (`update_date`),
  KEY `sys_user_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '1', '5', 'admin', '826d48589ff9f810dc42c089c21ee41d0d91ebe9593465dd1659042f', '0001', 'admin', '117575171@qq.com', '02583191633', '18951655371', '', '/jeeplus/userfiles/1/images/222.jpg', '0:0:0:0:0:0:0:1', '2016-03-10 09:31:53', '1', '1', '2013-05-27 08:00:00', '1', '2016-03-03 17:25:07', 'test', '0', '/jeeplus/userfiles/1/qrcode/test.png');

-- ----------------------------
-- Table structure for `sys_user_friend`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_friend`;
CREATE TABLE `sys_user_friend` (
  `id` varchar(64) NOT NULL,
  `userId` varchar(64) NOT NULL,
  `friendId` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_user_friend
-- ----------------------------
INSERT INTO `sys_user_friend` VALUES ('0725eea71b504a188e24a66e58f65cf9', '8b454376c0434e2792a1dc57edf80dbd', 'cb359e3089224f97adae46cf03c0ed94');
INSERT INTO `sys_user_friend` VALUES ('08cba404e7b24e42992a49999b4de91a', '45f8002c452d4a54a82f113379c7b853', '0e01985207154708a01e53ca07965665');
INSERT INTO `sys_user_friend` VALUES ('0ed41b44291c487c925e58fa5a504664', '8b454376c0434e2792a1dc57edf80dbd', '42f5435f943a4e8cbcd86ec07b1d922a');
INSERT INTO `sys_user_friend` VALUES ('1005559436d043c8a2209a746ac53bca', '8b454376c0434e2792a1dc57edf80dbd', '5ad0d1f9efdc44b481b02c26b67e832e');
INSERT INTO `sys_user_friend` VALUES ('1379a552537645448db985c2fb1d3953', '1', '2e6214ad951548f09aa58c943a897240');
INSERT INTO `sys_user_friend` VALUES ('1cdeea5042bb4a0cbba8902d9c0732c4', '8b454376c0434e2792a1dc57edf80dbd', 'd355e9e6b4ad48a59fa0a983e8b7b583');
INSERT INTO `sys_user_friend` VALUES ('1cf35e13c27a4750803f73098b886553', '8b454376c0434e2792a1dc57edf80dbd', '95b3b09fa0b34ac6b95907237c744c55');
INSERT INTO `sys_user_friend` VALUES ('2186c3bc23db4a009bdbd65b50bb8ef3', '8b454376c0434e2792a1dc57edf80dbd', '3f7ef2d4761f445e946413ab9bea23db');
INSERT INTO `sys_user_friend` VALUES ('2852d80e36ec4c0193092d8093315a3c', '1', '0e01985207154708a01e53ca07965665');
INSERT INTO `sys_user_friend` VALUES ('2a1eb5760e4548ecaee92f378a43fdce', '8b454376c0434e2792a1dc57edf80dbd', '6');
INSERT INTO `sys_user_friend` VALUES ('2cbf8cc396044ca7a95282c6c9684516', '8b454376c0434e2792a1dc57edf80dbd', '4639f877ec7149258cadcf145b4182a7');
INSERT INTO `sys_user_friend` VALUES ('2d5876dd4a174c139270ca7b4ee51b74', '45f8002c452d4a54a82f113379c7b853', '1690569548d2400b893e4348b5445468');
INSERT INTO `sys_user_friend` VALUES ('410e5a8c33f4499faaf6c55674fb295b', '8b454376c0434e2792a1dc57edf80dbd', '8');
INSERT INTO `sys_user_friend` VALUES ('598950c23ae147b7b360fb5b4311120a', '8b454376c0434e2792a1dc57edf80dbd', '19e655ebcd844747aa0e46efe9870169');
INSERT INTO `sys_user_friend` VALUES ('6493d5c972934bb38fef91cc54e969d1', '8b454376c0434e2792a1dc57edf80dbd', 'f12330474f634e2897878e8f56a910ae');
INSERT INTO `sys_user_friend` VALUES ('67f951fc7c8440a49a1af90f4aed5ac9', '1', '45f8002c452d4a54a82f113379c7b853');
INSERT INTO `sys_user_friend` VALUES ('6df3fc9c46724da4a56c72ffb85b67b3', '8b454376c0434e2792a1dc57edf80dbd', 'dc9663e71aaa42f0a2634770896ec74c');
INSERT INTO `sys_user_friend` VALUES ('734946756a6340aaad71cfa621d1a493', '8b454376c0434e2792a1dc57edf80dbd', '7');
INSERT INTO `sys_user_friend` VALUES ('79a5ca003e6a4ef6bc1a43c4a085551f', '0e01985207154708a01e53ca07965665', '45f8002c452d4a54a82f113379c7b853');
INSERT INTO `sys_user_friend` VALUES ('83f29f5ff3aa4fc2be00bfd45212fb2a', '8b454376c0434e2792a1dc57edf80dbd', '13');
INSERT INTO `sys_user_friend` VALUES ('8a1b8abb1f134bd687b3368166546d6b', '8b454376c0434e2792a1dc57edf80dbd', '3');
INSERT INTO `sys_user_friend` VALUES ('8c0edfb9670a426d9bfa9a951bda919f', '8b454376c0434e2792a1dc57edf80dbd', '6474fda3f35c4d1580b646a42f190cf7');
INSERT INTO `sys_user_friend` VALUES ('8c2c5518bc1d4033a6090305d6fc3b16', '8b454376c0434e2792a1dc57edf80dbd', 'eca1a51b803449d59ce4e2a3b0f4f787');
INSERT INTO `sys_user_friend` VALUES ('8f4c71c74c28416c85553c139764c7d1', '45f8002c452d4a54a82f113379c7b853', '45f8002c452d4a54a82f113379c7b853');
INSERT INTO `sys_user_friend` VALUES ('9872f6791ad44a4eb036db1c4e72bf15', '1', '1690569548d2400b893e4348b5445468');
INSERT INTO `sys_user_friend` VALUES ('a1e6bfbb44a14fb1be1d09c5615daa94', '1', '7e9cac2b269c4671a17c5121877b5ecd');
INSERT INTO `sys_user_friend` VALUES ('b40660a8b3ac49d9a46b424ad64ba264', '8b454376c0434e2792a1dc57edf80dbd', 'bb81a0c098a444e69028380e80852d91');
INSERT INTO `sys_user_friend` VALUES ('b73b147471c24ae8865b924d877b5512', '8b454376c0434e2792a1dc57edf80dbd', '5b61eb41f80f43c5b8e485866178f63d');
INSERT INTO `sys_user_friend` VALUES ('ba870cd0d5d443c9a9e239c06d13b0d5', '8b454376c0434e2792a1dc57edf80dbd', '1');
INSERT INTO `sys_user_friend` VALUES ('ba8f1dc4433d4c5b9259922f25b1234b', '8b454376c0434e2792a1dc57edf80dbd', '9');
INSERT INTO `sys_user_friend` VALUES ('c84a1d30344f4833811356d9b2c3c50e', '8b454376c0434e2792a1dc57edf80dbd', 'da60c61cf2aa4cb2810c629c7045c538');
INSERT INTO `sys_user_friend` VALUES ('cdf3216c5fa6472d9007d5dd6ccefc49', '45f8002c452d4a54a82f113379c7b853', '2e6214ad951548f09aa58c943a897240');
INSERT INTO `sys_user_friend` VALUES ('ce37fa05072e45fcb82590420965f918', '8b454376c0434e2792a1dc57edf80dbd', 'd8de25a1f872404e82f669c04091685e');
INSERT INTO `sys_user_friend` VALUES ('d45d0c14f1c8473d8ff9687784851519', '8b454376c0434e2792a1dc57edf80dbd', '5091ca619fbf49209bce020859103ba5');
INSERT INTO `sys_user_friend` VALUES ('d96b32e6663a4d25b2de7496c4d7b6b8', '8b454376c0434e2792a1dc57edf80dbd', '4');
INSERT INTO `sys_user_friend` VALUES ('d96f5fade2444ffbb819076d19bfc47c', '1', 'cb359e3089224f97adae46cf03c0ed94');
INSERT INTO `sys_user_friend` VALUES ('dbaf20aefb9b45a2bafd91c0eeb43d8f', '8b454376c0434e2792a1dc57edf80dbd', '8b454376c0434e2792a1dc57edf80dbd');
INSERT INTO `sys_user_friend` VALUES ('e8d118adbca24591bcee16a11b87c125', '8b454376c0434e2792a1dc57edf80dbd', 'd42378c9621b4551a0c4c63c82f0aa33');
INSERT INTO `sys_user_friend` VALUES ('e9cc167bb4d440e19cda94d65866198e', '1', 'f12330474f634e2897878e8f56a910ae');
INSERT INTO `sys_user_friend` VALUES ('ed45cb60c47040ae8ad4b703cd282f4c', '1', 'dc9663e71aaa42f0a2634770896ec74c');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` varchar(64) NOT NULL COMMENT '用户编号',
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户-角色';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('0e01985207154708a01e53ca07965665', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('0f7017853ec24648872e01fe9c930969', 'caacf61017114120bcf7bf1049b6d4c3');
INSERT INTO `sys_user_role` VALUES ('1', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('1', 'caacf61017114120bcf7bf1049b6d4c3');
INSERT INTO `sys_user_role` VALUES ('10', 'f6d2f215ed734cc09273928acab6e136');
INSERT INTO `sys_user_role` VALUES ('11', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('12', 'f6d2f215ed734cc09273928acab6e136');
INSERT INTO `sys_user_role` VALUES ('13', '5');
INSERT INTO `sys_user_role` VALUES ('14', '6');
INSERT INTO `sys_user_role` VALUES ('1690569548d2400b893e4348b5445468', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('19e655ebcd844747aa0e46efe9870169', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('19e655ebcd844747aa0e46efe9870169', '5');
INSERT INTO `sys_user_role` VALUES ('19e655ebcd844747aa0e46efe9870169', '91766cc228e34269a65f0564ba956bd7');
INSERT INTO `sys_user_role` VALUES ('19e655ebcd844747aa0e46efe9870169', 'caacf61017114120bcf7bf1049b6d4c3');
INSERT INTO `sys_user_role` VALUES ('2', 'f6d2f215ed734cc09273928acab6e136');
INSERT INTO `sys_user_role` VALUES ('2e6214ad951548f09aa58c943a897240', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('2e6214ad951548f09aa58c943a897240', '91766cc228e34269a65f0564ba956bd7');
INSERT INTO `sys_user_role` VALUES ('3', 'caacf61017114120bcf7bf1049b6d4c3');
INSERT INTO `sys_user_role` VALUES ('3', 'f6d2f215ed734cc09273928acab6e136');
INSERT INTO `sys_user_role` VALUES ('36543a9fcb054a5485c61572c099cf46', '91766cc228e34269a65f0564ba956bd7');
INSERT INTO `sys_user_role` VALUES ('3f7ef2d4761f445e946413ab9bea23db', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('4', 'caacf61017114120bcf7bf1049b6d4c3');
INSERT INTO `sys_user_role` VALUES ('42f5435f943a4e8cbcd86ec07b1d922a', 'caacf61017114120bcf7bf1049b6d4c3');
INSERT INTO `sys_user_role` VALUES ('45f8002c452d4a54a82f113379c7b853', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('45f8002c452d4a54a82f113379c7b853', '91766cc228e34269a65f0564ba956bd7');
INSERT INTO `sys_user_role` VALUES ('4639f877ec7149258cadcf145b4182a7', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('4639f877ec7149258cadcf145b4182a7', 'caacf61017114120bcf7bf1049b6d4c3');
INSERT INTO `sys_user_role` VALUES ('5', 'f6d2f215ed734cc09273928acab6e136');
INSERT INTO `sys_user_role` VALUES ('5091ca619fbf49209bce020859103ba5', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('5091ca619fbf49209bce020859103ba5', 'caacf61017114120bcf7bf1049b6d4c3');
INSERT INTO `sys_user_role` VALUES ('51938e17b432476bbe489a2c523183a4', 'caacf61017114120bcf7bf1049b6d4c3');
INSERT INTO `sys_user_role` VALUES ('5ad0d1f9efdc44b481b02c26b67e832e', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('5ad0d1f9efdc44b481b02c26b67e832e', 'caacf61017114120bcf7bf1049b6d4c3');
INSERT INTO `sys_user_role` VALUES ('5b61eb41f80f43c5b8e485866178f63d', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('6', 'f6d2f215ed734cc09273928acab6e136');
INSERT INTO `sys_user_role` VALUES ('619c00b435e84fc98ec83a784d77428f', '91766cc228e34269a65f0564ba956bd7');
INSERT INTO `sys_user_role` VALUES ('6474fda3f35c4d1580b646a42f190cf7', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('6d69972a880f4228b88f28254c3e417e', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('7', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('7', 'caacf61017114120bcf7bf1049b6d4c3');
INSERT INTO `sys_user_role` VALUES ('794fec024e444d56ab257b52892d77bd', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('7e9cac2b269c4671a17c5121877b5ecd', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('7e9cac2b269c4671a17c5121877b5ecd', '91766cc228e34269a65f0564ba956bd7');
INSERT INTO `sys_user_role` VALUES ('8', 'caacf61017114120bcf7bf1049b6d4c3');
INSERT INTO `sys_user_role` VALUES ('8b454376c0434e2792a1dc57edf80dbd', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('9', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('9', 'caacf61017114120bcf7bf1049b6d4c3');
INSERT INTO `sys_user_role` VALUES ('95b3b09fa0b34ac6b95907237c744c55', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('a68dfe143da9485b9b6c0335c3a70618', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('a68dfe143da9485b9b6c0335c3a70618', 'caacf61017114120bcf7bf1049b6d4c3');
INSERT INTO `sys_user_role` VALUES ('a91be50880744e4787a77e0f97f8dbb5', '03fcd9c5c28948eb827fcd3b852494a6');
INSERT INTO `sys_user_role` VALUES ('a91be50880744e4787a77e0f97f8dbb5', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('a91be50880744e4787a77e0f97f8dbb5', 'caacf61017114120bcf7bf1049b6d4c3');
INSERT INTO `sys_user_role` VALUES ('a91be50880744e4787a77e0f97f8dbb5', 'f6d2f215ed734cc09273928acab6e136');
INSERT INTO `sys_user_role` VALUES ('bb81a0c098a444e69028380e80852d91', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('bb81a0c098a444e69028380e80852d91', 'caacf61017114120bcf7bf1049b6d4c3');
INSERT INTO `sys_user_role` VALUES ('cb176ef0bce14c80ac5c2809861b560a', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('cb176ef0bce14c80ac5c2809861b560a', '91766cc228e34269a65f0564ba956bd7');
INSERT INTO `sys_user_role` VALUES ('cb359e3089224f97adae46cf03c0ed94', 'caacf61017114120bcf7bf1049b6d4c3');
INSERT INTO `sys_user_role` VALUES ('d355e9e6b4ad48a59fa0a983e8b7b583', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('d42378c9621b4551a0c4c63c82f0aa33', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('d42378c9621b4551a0c4c63c82f0aa33', '91766cc228e34269a65f0564ba956bd7');
INSERT INTO `sys_user_role` VALUES ('d42378c9621b4551a0c4c63c82f0aa33', 'caacf61017114120bcf7bf1049b6d4c3');
INSERT INTO `sys_user_role` VALUES ('d8de25a1f872404e82f669c04091685e', 'caacf61017114120bcf7bf1049b6d4c3');
INSERT INTO `sys_user_role` VALUES ('da60c61cf2aa4cb2810c629c7045c538', '91766cc228e34269a65f0564ba956bd7');
INSERT INTO `sys_user_role` VALUES ('dc9663e71aaa42f0a2634770896ec74c', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('dc9663e71aaa42f0a2634770896ec74c', 'caacf61017114120bcf7bf1049b6d4c3');
INSERT INTO `sys_user_role` VALUES ('eca1a51b803449d59ce4e2a3b0f4f787', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('eca1a51b803449d59ce4e2a3b0f4f787', 'caacf61017114120bcf7bf1049b6d4c3');
INSERT INTO `sys_user_role` VALUES ('eedf59cb73cd413cbb14c42c2f797482', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('ef40b2bbae144c05a5be85b48669eea2', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('ef40b2bbae144c05a5be85b48669eea2', '91766cc228e34269a65f0564ba956bd7');
INSERT INTO `sys_user_role` VALUES ('f12330474f634e2897878e8f56a910ae', '1c54e003c1fc4dcd9b087ef8d48abac3');

-- ----------------------------
-- Table structure for `test_data`
-- ----------------------------
DROP TABLE IF EXISTS `test_data`;
CREATE TABLE `test_data` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `user_id` varchar(64) DEFAULT NULL COMMENT '归属用户',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属部门',
  `area_id` varchar(64) DEFAULT NULL COMMENT '归属区域',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `in_date` date DEFAULT NULL COMMENT '加入日期',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_data_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务数据表';

-- ----------------------------
-- Records of test_data
-- ----------------------------

-- ----------------------------
-- Table structure for `test_data_child`
-- ----------------------------
DROP TABLE IF EXISTS `test_data_child`;
CREATE TABLE `test_data_child` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '编号',
  `start` varchar(64) DEFAULT NULL COMMENT '出发地',
  `end` varchar(64) DEFAULT NULL COMMENT '目的地',
  `price` double DEFAULT NULL COMMENT '代理价格',
  `test_data_main_id` varchar(64) DEFAULT NULL COMMENT '业务主表ID',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='火车票';

-- ----------------------------
-- Records of test_data_child
-- ----------------------------

-- ----------------------------
-- Table structure for `test_data_child2`
-- ----------------------------
DROP TABLE IF EXISTS `test_data_child2`;
CREATE TABLE `test_data_child2` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `start` varchar(64) DEFAULT NULL COMMENT '出发地',
  `end` varchar(64) DEFAULT NULL COMMENT '目的地',
  `price` double DEFAULT NULL COMMENT '代理价格',
  `test_data_main` varchar(64) DEFAULT NULL COMMENT '外键',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='飞机票';

-- ----------------------------
-- Records of test_data_child2
-- ----------------------------

-- ----------------------------
-- Table structure for `test_data_child3`
-- ----------------------------
DROP TABLE IF EXISTS `test_data_child3`;
CREATE TABLE `test_data_child3` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `start` varchar(64) DEFAULT NULL COMMENT '出发地',
  `end` varchar(64) DEFAULT NULL COMMENT '目的地',
  `price` double DEFAULT NULL COMMENT '代理价格',
  `test_data_main` varchar(64) DEFAULT NULL COMMENT '外键',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='汽车票';

-- ----------------------------
-- Records of test_data_child3
-- ----------------------------

-- ----------------------------
-- Table structure for `test_data_main`
-- ----------------------------
DROP TABLE IF EXISTS `test_data_main`;
CREATE TABLE `test_data_main` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '编号',
  `user_id` varchar(64) DEFAULT NULL COMMENT '归属用户',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属部门',
  `area_id` varchar(64) DEFAULT NULL COMMENT '归属区域',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `in_date` date DEFAULT NULL COMMENT '加入日期',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='票务代理';

-- ----------------------------
-- Records of test_data_main
-- ----------------------------

-- ----------------------------
-- Table structure for `test_interface`
-- ----------------------------
DROP TABLE IF EXISTS `test_interface`;
CREATE TABLE `test_interface` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `type` varchar(16) DEFAULT NULL COMMENT '接口类型',
  `url` varchar(256) DEFAULT NULL COMMENT '请求URL',
  `body` varchar(2048) DEFAULT NULL COMMENT '请求body',
  `successmsg` varchar(512) DEFAULT NULL COMMENT '成功时返回消息',
  `errormsg` varchar(512) DEFAULT NULL COMMENT '失败时返回消息',
  `comment` varchar(512) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) CHARACTER SET latin1 DEFAULT '0' COMMENT '删除标记',
  `name` varchar(1024) DEFAULT NULL COMMENT '接口名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='接口列表';

-- ----------------------------
-- Records of test_interface
-- ----------------------------
INSERT INTO `test_interface` VALUES ('02c5ad21ab604baba5aaa9795815d769', 'post', 'http://localhost:8080/jeeplus/a/sys/user/infoEdit;JSESSIONID=21a65e45a78f415c9c21f9376df9c1d3?__ajax=true&amp;mobileLogin=true', 'name=lily&amp;email=117575171@qq.com&amp;phone=025-83191633&amp;mobile=18951655371&amp;remarks=备注信息', '', '', '调用该接口请先登录', '0', '完善用户信息');
INSERT INTO `test_interface` VALUES ('0bd7170af4b94464ad3dbfa4d8d2dd5d', 'post', 'http://localhost:8080/jeeplus/a/iim/contact/addFriend;JSESSIONID=21a65e45a78f415c9c21f9376df9c1d3?__ajax', 'friendName=用户登录名', '', '', '', '0', '添加常用联系人');
INSERT INTO `test_interface` VALUES ('35a8a587b68a4996b935ab7feefdcb13', 'post', 'http://localhost:8080/jeeplus/a/sys/register/registerUser', 'mobileLogin=true&amp;loginName=thinkgem1&amp;roleName=system&amp;password=fnst1234&amp;mobile=18951655371&amp;randomCode=1234', '{&quot;success&quot;:false,&quot;msg&quot;:&quot;手机验证码不正确!&quot;}', '', 'roleName 参数值请使用英文的角色名，注册用户即拥有该角色。调用该接口请先获取手机验证码', '0', '用户注册');
INSERT INTO `test_interface` VALUES ('45fa62a43e0f4570890d701c59258217', 'post', 'http://localhost:8080/jeeplus/a/iim/contact/deleteFriend;JSESSIONID=21a65e45a78f415c9c21f9376df9c1d3?__ajax', 'friendName=用户登录名', '', '', '', '0', '删除常用联系人');
INSERT INTO `test_interface` VALUES ('48418888f8d7469c8460e7ff48e33673', 'post', 'http://localhost:8080/jeeplus/a/login?__ajax', 'username=admin&amp;password=admin&amp;mobileLogin=true', '{&quot;username&quot;:&quot;thinkgem&quot;,&quot;name&quot;:&quot;admin&quot;,&quot;mobileLogin&quot;:true,&quot;JSESSIONID&quot;:&quot;bc2587ecbc9c454c923232cbdb69da2a&quot;,&quot;success&quot;:true,&quot;msg&quot;:&quot;登录成功!&quot;}', '', '', '0', '登录');
INSERT INTO `test_interface` VALUES ('54cdba711dec4aadb80e8ecf7f450f4c', 'get', 'http://192.168.1.100:8080/HeartCare/a/sys/user/validateLoginName?loginName=thinkgem', '', 'true', 'false', '用户名在数据库中已存在，返回false', '1', '用户名是否已经被注册');
INSERT INTO `test_interface` VALUES ('5ed6916a54b94acd899373f7d5ec2912', 'post', 'http://localhost:8080/jeeplus/a/sys/user/imageUpload;JSESSIONID=21a65e45a78f415c9c21f9376df9c1d3?__ajax', 'file', '', '', '请使用multipart类型', '0', '上传头像');
INSERT INTO `test_interface` VALUES ('64b77cbdf2044070ae6f6c09785754a4', 'get', 'http://192.168.1.100:8080/HeartCare/a/sys/user/validateMobile?mobile=18951655371', '', 'true', 'false', '手机号已被注册时，返回false，可用返回true.', '1', '手机号是否已被注册');
INSERT INTO `test_interface` VALUES ('9a8a0b374df24714a485d3b18c9ebc56', 'post', 'http://localhost:8080/HeartCare/a/login?__ajax', 'username=thinkgem&amp;password=admin&amp;clientLogin=true', '', '', '', '1', 'C#客户端登录');
INSERT INTO `test_interface` VALUES ('a9d14c5d30be405fb34d64eb0c2c0818', 'get', 'http://localhost:8080/jeeplus/a/sys/user/resetPassword?mobile=18951655371', '', '', '', '参数是手机号，手机会收到新的密码。', '0', '重置密码');
INSERT INTO `test_interface` VALUES ('af79dec2a3134632a8b6f1b363c9aba9', 'get', 'http://localhost:8080/jeeplus/a/sys/user/infoData;JSESSIONID=21a65e45a78f415c9c21f9376df9c1d3?__ajax=true&amp;mobileLogin=true', '', '', '{&quot;error&quot;:&quot;0&quot;,&quot;msg&quot;:&quot;没有登录&quot;}', 'JSESSIONID是登录成功后返回的JSESSIONID', '0', '获取登录用户信息');
INSERT INTO `test_interface` VALUES ('e94c27c961a44212b584dd04c6352adf', 'get', 'http://localhost:8080/jeeplus/a/sys/register/getRegisterCode?mobile=18951655371', '', '', '{&quot;success&quot;:false,&quot;msg&quot;:&quot;因未知原因导致短信发送失败，请联系管理员。&quot;}', '', '0', '短信接口');
INSERT INTO `test_interface` VALUES ('fcd8bddd2f2c4f5d9e333cb014f1938b', 'get', 'http://192.168.1.100:8080/HeartCare/a/logout;JSESSIONID=b6b486a8919e4fc196358e10b6a82a2b?__ajax=true', '', '1  {&quot;success&quot;:&quot;1&quot;,&quot;msg&quot;:&quot;退出成功&quot;}', '', '', '0', '退出');

-- ----------------------------
-- Table structure for `test_tree`
-- ----------------------------
DROP TABLE IF EXISTS `test_tree`;
CREATE TABLE `test_tree` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  `parent_id` varchar(64) DEFAULT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) DEFAULT NULL COMMENT '所有父级编号',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `sort` decimal(10,0) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='组织机构';

-- ----------------------------
-- Records of test_tree
-- ----------------------------
INSERT INTO `test_tree` VALUES ('42182fd111634793ac1b994d4f87b8d8', '1', '2016-01-14 23:50:22', '1', '2016-01-14 23:50:22', '44', '0', '0', '0,', '22', '30');
INSERT INTO `test_tree` VALUES ('ad7a60adcfb445ada6e86c464cb23ee7', '1', '2016-02-26 09:15:42', '1', '2016-02-26 09:15:42', '', '0', '42182fd111634793ac1b994d4f87b8d8', '0,42182fd111634793ac1b994d4f87b8d8,', '33', '30');

-- ----------------------------
-- Table structure for `travel_order`
-- ----------------------------
DROP TABLE IF EXISTS `travel_order`;
CREATE TABLE `travel_order` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  `order_name` varchar(64) DEFAULT NULL COMMENT '订单名称',
  `start_address` varchar(640) DEFAULT NULL COMMENT '出发地',
  `end_address` varchar(640) DEFAULT NULL COMMENT '目的地',
  `people_num` varchar(64) DEFAULT NULL COMMENT '人数',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `status` varchar(64) DEFAULT NULL COMMENT '状态',
  `car_id` varchar(64) DEFAULT NULL,
  `user_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='旅游订单表';

-- ----------------------------
-- Records of travel_order
-- ----------------------------
INSERT INTO `travel_order` VALUES ('4930131cc8eb442f9f3ad7d1e5771842', '1', '2016-03-04 15:44:49', '1', '2016-03-04 15:44:49', '2', '0', '2', '90ecd439eb3845db97a627d9242145e8', '19298dc65ecd45cc803a6da294d1ff60', '2', '2016-03-04 00:00:00', '2016-03-11 00:00:00', '1', '7200c12c9adc4cb48e96af662ccd0fe4', '1');
