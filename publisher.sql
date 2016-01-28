/*
Navicat MySQL Data Transfer

Source Server         : localhost3309
Source Server Version : 50528
Source Host           : localhost:3309
Source Database       : publisher

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2016-01-28 17:21:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `user_name` varchar(255) NOT NULL COMMENT '管理员用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '管理员密码',
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('a', 'a');

-- ----------------------------
-- Table structure for `assets_balance`
-- ----------------------------
DROP TABLE IF EXISTS `assets_balance`;
CREATE TABLE `assets_balance` (
  `id` varchar(255) NOT NULL COMMENT '资金编号',
  `department_id` varchar(255) DEFAULT NULL COMMENT '科目编号',
  `department_title` varchar(255) DEFAULT NULL COMMENT '科目名称',
  `customer_name` varchar(255) DEFAULT NULL COMMENT '客户名称',
  `account_scale` varchar(255) DEFAULT NULL COMMENT '核算单位',
  `original_balance` double DEFAULT NULL COMMENT '初期余额',
  `debit_total` double DEFAULT NULL COMMENT '借方累计',
  `credit_total` double DEFAULT NULL COMMENT '贷方累计',
  `final_balance` double DEFAULT NULL COMMENT '期末余额',
  `balance_total` double DEFAULT NULL COMMENT '总计',
  `bank_name` varchar(255) DEFAULT NULL COMMENT '银行',
  `record_creator` varchar(255) DEFAULT NULL COMMENT '制单人',
  `record_create_date` varchar(255) DEFAULT NULL COMMENT '表单制作日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of assets_balance
-- ----------------------------
INSERT INTO `assets_balance` VALUES ('ZJ0001', 'KM0001', '总管科室', '孙客户', '万', '45.67', '12.54', '34.56', '65.32', '76.23', '中国工商银行', '王制单', '2014-08-23');
INSERT INTO `assets_balance` VALUES ('ZJ0002', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0003', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0004', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0005', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0006', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0007', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0008', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0009', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0010', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0011', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0012', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0013', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0014', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0015', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0016', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0017', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0018', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0019', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0020', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0021', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0022', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0023', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0024', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0025', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0026', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0027', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0028', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0029', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0030', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0031', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0032', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0033', 'aaa', 'aaa', 'aaa', 'aaa', '234', '0', '0', '3245', '345', 'aaa', 'aaa', '2016-01-28');

-- ----------------------------
-- Table structure for `assets_balance_export`
-- ----------------------------
DROP TABLE IF EXISTS `assets_balance_export`;
CREATE TABLE `assets_balance_export` (
  `资金编号` varchar(255) NOT NULL COMMENT '资金编号',
  `科目编号` varchar(255) DEFAULT NULL COMMENT '科目编号',
  `科目名称` varchar(255) DEFAULT NULL COMMENT '科目名称',
  `客户名称` varchar(255) DEFAULT NULL COMMENT '客户名称',
  `核算单位` varchar(255) DEFAULT NULL COMMENT '核算单位',
  `初期余额` double DEFAULT NULL COMMENT '初期余额',
  `借方累计` double DEFAULT NULL COMMENT '借方累计',
  `贷方累计` double DEFAULT NULL COMMENT '贷方累计',
  `期末余额` double DEFAULT NULL COMMENT '期末余额',
  `总计` double DEFAULT NULL COMMENT '总计',
  `银行` varchar(255) DEFAULT NULL COMMENT '银行',
  `制单人` varchar(255) DEFAULT NULL COMMENT '制单人',
  `表单制作日期` varchar(255) DEFAULT NULL COMMENT '表单制作日期',
  PRIMARY KEY (`资金编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of assets_balance_export
-- ----------------------------
INSERT INTO `assets_balance_export` VALUES ('ZJ0001', 'KM0001', '总管科室', '孙客户', '万', '45.67', '12.54', '34.56', '65.32', '76.23', '中国工商银行', '王制单', '2014-08-23');
INSERT INTO `assets_balance_export` VALUES ('ZJ0002', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0003', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0004', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0005', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0006', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0007', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0008', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0009', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0010', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0011', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0012', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0013', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0014', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0015', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0016', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0017', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0018', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0019', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0020', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0021', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0022', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0023', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0024', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0025', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0026', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0027', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0028', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0029', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0030', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0031', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0032', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0033', 'aaa', 'aaa', 'aaa', 'aaa', '234', '0', '0', '3245', '345', 'aaa', 'aaa', '2016-01-28');

-- ----------------------------
-- Table structure for `bian_shen`
-- ----------------------------
DROP TABLE IF EXISTS `bian_shen`;
CREATE TABLE `bian_shen` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编审编号',
  `book_id` varchar(255) DEFAULT NULL COMMENT '书号',
  `book_name` varchar(255) DEFAULT NULL COMMENT '书名',
  `sub_book_name` varchar(255) DEFAULT NULL COMMENT '丛书名',
  `original_author` varchar(255) DEFAULT NULL COMMENT '原著作者',
  `original_press` varchar(255) DEFAULT NULL COMMENT '原出版社',
  `primary_author` varchar(255) DEFAULT NULL COMMENT '主要作者',
  `other_author` varchar(255) DEFAULT NULL COMMENT '其他署名作者',
  `ze_ren_editor` varchar(255) DEFAULT NULL COMMENT '责任编辑',
  `wen_zi_editor` varchar(255) DEFAULT NULL COMMENT '文字编辑',
  `mei_shu_editor` varchar(255) DEFAULT NULL COMMENT '美术编辑',
  `proofreader` varchar(255) DEFAULT NULL COMMENT '校对',
  `bian_shen_status` int(11) DEFAULT NULL COMMENT '编审状态',
  `fu_yin_date` varchar(255) DEFAULT NULL COMMENT '付印日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bian_shen
-- ----------------------------
INSERT INTO `bian_shen` VALUES ('1', 'B0001', '第一本书', '丛书', '柳三变', '古代出版社', '柳三变', '万年青', '柳青', '常回家', '赵宏', '靳东', '1', '2014-07-07');
INSERT INTO `bian_shen` VALUES ('2', 'B0002', '第二本书', '丛书是什么', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '2', '2014-08-08');
INSERT INTO `bian_shen` VALUES ('3', 'B0003', '英雄传说', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '2', '2014-07-08');
INSERT INTO `bian_shen` VALUES ('4', 'B0004', '四季', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '4', '2014-07-08');
INSERT INTO `bian_shen` VALUES ('5', 'B0005', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '赵文字', '韦一笑', '殷天正', '4', '2014-07-09');
INSERT INTO `bian_shen` VALUES ('6', 'B0006', '第二本书1', '什么叫丛书', '张翠山', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '4', '2014-07-08');
INSERT INTO `bian_shen` VALUES ('7', 'B0007', '七武士', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '2', '2014-07-08');
INSERT INTO `bian_shen` VALUES ('8', 'B0008', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '1', '2014-07-08');
INSERT INTO `bian_shen` VALUES ('9', 'B0009', '文艺青年', '什么叫丛书', '张文艺', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '2', '2014-07-08');
INSERT INTO `bian_shen` VALUES ('10', 'B0010', '十个刺客', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '黄渤', '范瑶', '韦一笑', '殷天正', '2', '2014-07-12');
INSERT INTO `bian_shen` VALUES ('11', 'B0011', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '1', '2014-07-08');
INSERT INTO `bian_shen` VALUES ('12', 'B0012', '左小祖咒', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '2', '2014-07-13');
INSERT INTO `bian_shen` VALUES ('13', 'B0013', '幸运十三', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '小坏', '范瑶', '韦一笑', '殷天正', '4', '2014-07-08');
INSERT INTO `bian_shen` VALUES ('14', 'B0014', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '2', '2014-07-08');
INSERT INTO `bian_shen` VALUES ('15', 'B0015', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范伟', '韦一笑', '殷天正', '3', '2014-07-08');
INSERT INTO `bian_shen` VALUES ('16', 'B0016', '超人不会飞', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '2', '2014-07-08');
INSERT INTO `bian_shen` VALUES ('17', 'B0017', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '1', '2014-07-08');
INSERT INTO `bian_shen` VALUES ('18', 'B0018', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '2', '2014-07-08');
INSERT INTO `bian_shen` VALUES ('19', 'B0019', '鸡飞蛋打', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '2', '2014-07-08');
INSERT INTO `bian_shen` VALUES ('20', 'B0020', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '2', '2014-07-08');
INSERT INTO `bian_shen` VALUES ('21', 'B0021', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '3', '2014-07-08');
INSERT INTO `bian_shen` VALUES ('22', 'B0022', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '2', '2014-07-08');
INSERT INTO `bian_shen` VALUES ('23', 'B0023', '爱心社团', '什么叫丛书', '张团长', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '1', '2014-07-08');
INSERT INTO `bian_shen` VALUES ('24', 'B0024', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '2', '2014-07-08');
INSERT INTO `bian_shen` VALUES ('25', 'B0025', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '3', '2014-07-08');
INSERT INTO `bian_shen` VALUES ('26', 'B0026', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '2', '2014-07-08');
INSERT INTO `bian_shen` VALUES ('27', 'B0027', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '2', '2014-07-08');
INSERT INTO `bian_shen` VALUES ('28', 'B0028', '他会爱上谁', '什么叫丛书', '张媛媛', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '2', '2014-07-08');
INSERT INTO `bian_shen` VALUES ('29', 'B0029', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '2', '2014-07-08');
INSERT INTO `bian_shen` VALUES ('30', 'B0030', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '2', '2014-07-08');
INSERT INTO `bian_shen` VALUES ('31', 'B0031', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '2', '2014-07-08');
INSERT INTO `bian_shen` VALUES ('32', 'B0032', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '2', '2014-07-08');
INSERT INTO `bian_shen` VALUES ('33', 'B0033', '33号书本', '还是丛书', '王丛书', '丛书出版社', '张丛书', '李丛书', '邱丛书', '刘文字', '编辑', '舰队', '4', '2014-03-10');
INSERT INTO `bian_shen` VALUES ('34', 'B0034', '一本好书', '又是丛书', '李某某', '王某某', '刘锦荣', '王安培', '肖圣汗', '汗了', '囧了', '还有校对', '1', '2014-03-14');
INSERT INTO `bian_shen` VALUES ('35', 'B0035', '书名', '112', '213', '123', '123', '123', '123', '13', '32', '13', '3', '2016-01-18');
INSERT INTO `bian_shen` VALUES ('36', 'B0036', '唐诗三百首', null, '圣人', '超凡出版社', '刘强', '刘敏', '刘汉', '汉字', '汉子', '刘校对', '1', '2014-03-03');
INSERT INTO `bian_shen` VALUES ('37', 'B0037', '宋词鉴赏', '无', '贷方', '凤凰出版社', '防守打法', 'sadf', 'sdf', 'da', 'fdsa', 'da', '2', '2015-01-14');

-- ----------------------------
-- Table structure for `bian_shen_export`
-- ----------------------------
DROP TABLE IF EXISTS `bian_shen_export`;
CREATE TABLE `bian_shen_export` (
  `编审编号` int(11) NOT NULL DEFAULT '0' COMMENT '编审编号',
  `书号` varchar(255) DEFAULT NULL COMMENT '书号',
  `书名` varchar(255) DEFAULT NULL COMMENT '书名',
  `丛书名` varchar(255) DEFAULT NULL COMMENT '丛书名',
  `原著作者` varchar(255) DEFAULT NULL COMMENT '原著作者',
  `原出版社` varchar(255) DEFAULT NULL COMMENT '原出版社',
  `主要作者` varchar(255) DEFAULT NULL COMMENT '主要作者',
  `其他署名作者` varchar(255) DEFAULT NULL COMMENT '其他署名作者',
  `责任编辑` varchar(255) DEFAULT NULL COMMENT '责任编辑',
  `文字编辑` varchar(255) DEFAULT NULL COMMENT '文字编辑',
  `美术编辑` varchar(255) DEFAULT NULL COMMENT '美术编辑',
  `校对` varchar(255) DEFAULT NULL COMMENT '校对',
  `编审状态` varchar(255) DEFAULT NULL COMMENT '编审状态',
  `付印日期` varchar(255) DEFAULT NULL COMMENT '付印日期',
  PRIMARY KEY (`编审编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bian_shen_export
-- ----------------------------
INSERT INTO `bian_shen_export` VALUES ('1', 'B0001', '第一本书', '丛书', '柳三变', '古代出版社', '柳三变', '万年青', '柳青', '常回家', '赵宏', '靳东', '未审核', '2014-07-07');
INSERT INTO `bian_shen_export` VALUES ('2', 'B0002', '第二本书', '丛书是什么', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-08-08');
INSERT INTO `bian_shen_export` VALUES ('3', 'B0003', '英雄传说', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('4', 'B0004', '四季', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '三审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('5', 'B0005', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '赵文字', '韦一笑', '殷天正', '三审通过', '2014-07-09');
INSERT INTO `bian_shen_export` VALUES ('6', 'B0006', '第二本书1', '什么叫丛书', '张翠山', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '三审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('7', 'B0007', '七武士', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('8', 'B0008', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '未审核', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('9', 'B0009', '文艺青年', '什么叫丛书', '张文艺', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('10', 'B0010', '十个刺客', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '黄渤', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-12');
INSERT INTO `bian_shen_export` VALUES ('11', 'B0011', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '未审核', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('12', 'B0012', '左小祖咒', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-13');
INSERT INTO `bian_shen_export` VALUES ('13', 'B0013', '幸运十三', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '小坏', '范瑶', '韦一笑', '殷天正', '三审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('14', 'B0014', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('15', 'B0015', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范伟', '韦一笑', '殷天正', '二审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('16', 'B0016', '超人不会飞', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('17', 'B0017', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '未审核', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('18', 'B0018', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('19', 'B0019', '鸡飞蛋打', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('20', 'B0020', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('21', 'B0021', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '二审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('22', 'B0022', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('23', 'B0023', '爱心社团', '什么叫丛书', '张团长', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '未审核', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('24', 'B0024', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('25', 'B0025', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '二审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('26', 'B0026', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('27', 'B0027', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('28', 'B0028', '他会爱上谁', '什么叫丛书', '张媛媛', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('29', 'B0029', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('30', 'B0030', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('31', 'B0031', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('32', 'B0032', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('33', 'B0033', '33号书本', '还是丛书', '王丛书', '丛书出版社', '张丛书', '李丛书', '邱丛书', '刘文字', '编辑', '舰队', '三审通过', '2014-03-10');
INSERT INTO `bian_shen_export` VALUES ('34', 'B0034', '一本好书', '又是丛书', '李某某', '王某某', '刘锦荣', '王安培', '肖圣汗', '汗了', '囧了', '还有校对', '未审核', '2014-03-14');
INSERT INTO `bian_shen_export` VALUES ('35', 'B0035', '书名', '112', '213', '123', '123', '123', '123', '13', '32', '13', '二审通过', '2016-01-18');
INSERT INTO `bian_shen_export` VALUES ('36', 'B0036', '唐诗三百首', null, '圣人', '超凡出版社', '刘强', '刘敏', '刘汉', '汉字', '汉子', '刘校对', '未审核', '2014-03-03');
INSERT INTO `bian_shen_export` VALUES ('37', 'B0037', '宋词鉴赏', '无', '贷方', '凤凰出版社', '防守打法', 'sadf', 'sdf', 'da', 'fdsa', 'da', '一审通过', '2015-01-14');

-- ----------------------------
-- Table structure for `bian_shen_status`
-- ----------------------------
DROP TABLE IF EXISTS `bian_shen_status`;
CREATE TABLE `bian_shen_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `content` varchar(255) DEFAULT NULL COMMENT '编审状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bian_shen_status
-- ----------------------------
INSERT INTO `bian_shen_status` VALUES ('1', '未审核');
INSERT INTO `bian_shen_status` VALUES ('2', '一审通过');
INSERT INTO `bian_shen_status` VALUES ('3', '二审通过');
INSERT INTO `bian_shen_status` VALUES ('4', '三审通过');

-- ----------------------------
-- Table structure for `book_specs`
-- ----------------------------
DROP TABLE IF EXISTS `book_specs`;
CREATE TABLE `book_specs` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `content` varchar(255) DEFAULT NULL COMMENT '图书规格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book_specs
-- ----------------------------
INSERT INTO `book_specs` VALUES ('1', '32开');
INSERT INTO `book_specs` VALUES ('2', '大32开');
INSERT INTO `book_specs` VALUES ('3', '16开');
INSERT INTO `book_specs` VALUES ('4', '大16开');
INSERT INTO `book_specs` VALUES ('5', '8开');
INSERT INTO `book_specs` VALUES ('6', '其他');

-- ----------------------------
-- Table structure for `chu_ku`
-- ----------------------------
DROP TABLE IF EXISTS `chu_ku`;
CREATE TABLE `chu_ku` (
  `id` varchar(255) NOT NULL COMMENT '发书编号',
  `deliver_date` varchar(255) DEFAULT NULL COMMENT '发书日期',
  `customer_id` varchar(255) DEFAULT NULL COMMENT '客户编号',
  `customer_name` varchar(255) DEFAULT NULL COMMENT '客户名称',
  `book_owner_id` varchar(255) DEFAULT NULL COMMENT '货主编号',
  `book_owner_name` varchar(255) DEFAULT NULL COMMENT '货主名称',
  `deliver_man` varchar(255) DEFAULT NULL COMMENT '发货人',
  `deliver_contact_phone` varchar(255) DEFAULT NULL COMMENT '发货人电话',
  `book_name` varchar(255) DEFAULT NULL COMMENT '书名',
  `revision` int(11) DEFAULT NULL COMMENT '版次',
  `quantity` int(11) DEFAULT NULL COMMENT '数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `fixed_price` varchar(255) DEFAULT NULL COMMENT '码洋',
  `discount` float DEFAULT NULL COMMENT '折扣',
  `discounted_price` varchar(255) DEFAULT NULL COMMENT '实样',
  `crate_id` varchar(255) DEFAULT NULL COMMENT '所在箱序号',
  `deliver_address` varchar(255) DEFAULT NULL COMMENT '送货地址',
  `postcode` varchar(255) DEFAULT NULL COMMENT '邮编',
  `transportation` int(11) DEFAULT NULL COMMENT '运输方式',
  `site_arrived` varchar(255) DEFAULT NULL COMMENT '到站',
  `contact_person` varchar(255) DEFAULT NULL COMMENT '联系人',
  `contact_phone` varchar(255) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chu_ku
-- ----------------------------
INSERT INTO `chu_ku` VALUES ('CK0001', '2014-09-13', 'KH0001', '金三顺', 'HZ0001', '佟大为', '老枪', '13788776655', '第一本书', '3', '200', '23.6', '4000', '0.9', '3600', '8', '青浦区', '200098', '1', '欣欣小区', '李欣雨', '13987654321');
INSERT INTO `chu_ku` VALUES ('CK0002', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0003', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0004', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0005', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0006', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0007', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0008', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0009', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0010', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0011', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0012', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0013', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0014', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0015', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0016', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0017', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0018', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0019', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0020', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0021', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0022', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0023', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0024', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0025', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0026', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0027', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0028', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0029', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0030', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0031', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0032', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0033', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '2', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku` VALUES ('CK0034', '2016-01-26', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', '4', '400', '34.5', '3000', '0.7', '2100', 'aaa', 'aaaaa', 'aaa', '1', 'aaa', 'aaa', 'aaa');

-- ----------------------------
-- Table structure for `chu_ku_export`
-- ----------------------------
DROP TABLE IF EXISTS `chu_ku_export`;
CREATE TABLE `chu_ku_export` (
  `发书编号` varchar(255) NOT NULL COMMENT '发书编号',
  `发书日期` varchar(255) DEFAULT NULL COMMENT '发书日期',
  `客户编号` varchar(255) DEFAULT NULL COMMENT '客户编号',
  `客户名称` varchar(255) DEFAULT NULL COMMENT '客户名称',
  `货主编号` varchar(255) DEFAULT NULL COMMENT '货主编号',
  `货主名称` varchar(255) DEFAULT NULL COMMENT '货主名称',
  `发货人` varchar(255) DEFAULT NULL COMMENT '发货人',
  `发货人电话` varchar(255) DEFAULT NULL COMMENT '发货人电话',
  `书名` varchar(255) DEFAULT NULL COMMENT '书名',
  `版次` int(11) DEFAULT NULL COMMENT '版次',
  `数量` int(11) DEFAULT NULL COMMENT '数量',
  `单价` float DEFAULT NULL COMMENT '单价',
  `码洋` varchar(255) DEFAULT NULL COMMENT '码洋',
  `折扣` float DEFAULT NULL COMMENT '折扣',
  `实样` varchar(255) DEFAULT NULL COMMENT '实样',
  `所在箱序号` varchar(255) DEFAULT NULL COMMENT '所在箱序号',
  `送货地址` varchar(255) DEFAULT NULL COMMENT '送货地址',
  `邮编` varchar(255) DEFAULT NULL COMMENT '邮编',
  `运输方式` varchar(255) DEFAULT NULL COMMENT '运输方式',
  `到站` varchar(255) DEFAULT NULL COMMENT '到站',
  `联系人` varchar(255) DEFAULT NULL COMMENT '联系人',
  `联系方式` varchar(255) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`发书编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chu_ku_export
-- ----------------------------
INSERT INTO `chu_ku_export` VALUES ('CK0001', '2014-09-13', 'KH0001', '金三顺', 'HZ0001', '佟大为', '老枪', '13788776655', '第一本书', '3', '200', '23.6', '4000', '0.9', '3600', '8', '青浦区', '200098', '公路运输', '欣欣小区', '李欣雨', '13987654321');
INSERT INTO `chu_ku_export` VALUES ('CK0002', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0003', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0004', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0005', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0006', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0007', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0008', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0009', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0010', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0011', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0012', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0013', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0014', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0015', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0016', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0017', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0018', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0019', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0020', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0021', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0022', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0023', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0024', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0025', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0026', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0027', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0028', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0029', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0030', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0031', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0032', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0033', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0034', '2016-01-26', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', '4', '400', '34.5', '3000', '0.7', '2100', 'aaa', 'aaaaa', 'aaa', '公路运输', 'aaa', 'aaa', 'aaa');

-- ----------------------------
-- Table structure for `chu_shen_comments`
-- ----------------------------
DROP TABLE IF EXISTS `chu_shen_comments`;
CREATE TABLE `chu_shen_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `content` varchar(255) DEFAULT NULL COMMENT '初审意见',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chu_shen_comments
-- ----------------------------
INSERT INTO `chu_shen_comments` VALUES ('1', '优良');
INSERT INTO `chu_shen_comments` VALUES ('2', '一般');
INSERT INTO `chu_shen_comments` VALUES ('3', '须修改');

-- ----------------------------
-- Table structure for `fa_xing`
-- ----------------------------
DROP TABLE IF EXISTS `fa_xing`;
CREATE TABLE `fa_xing` (
  `id` varchar(255) NOT NULL COMMENT '发行编号',
  `invoice_title` varchar(255) DEFAULT NULL COMMENT '发票名称',
  `customer_title` varchar(255) DEFAULT NULL COMMENT '客户代号',
  `invoice_address` varchar(255) DEFAULT NULL COMMENT '发票地址',
  `create_date` varchar(255) DEFAULT NULL COMMENT '开单日期',
  `book_id` varchar(255) DEFAULT NULL COMMENT '书号',
  `book_name` varchar(255) DEFAULT NULL COMMENT '书名',
  `price` float DEFAULT NULL COMMENT '单价',
  `quantity` int(11) DEFAULT NULL COMMENT '数量',
  `fixed_price` int(11) DEFAULT NULL COMMENT '码洋',
  `discount` float DEFAULT NULL COMMENT '折扣',
  `warehouse_location` varchar(255) DEFAULT NULL COMMENT '库位',
  `shi_pei` varchar(255) DEFAULT NULL COMMENT '实配',
  `order_receipt` varchar(255) DEFAULT NULL COMMENT '订书依据',
  `site` varchar(255) DEFAULT NULL COMMENT '站点',
  `contact_person` varchar(255) DEFAULT NULL COMMENT '联系人',
  `contact_phone` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `deliver_account` varchar(255) DEFAULT NULL COMMENT '发货户名',
  `postcode` varchar(255) DEFAULT NULL COMMENT '邮编',
  `deliver_address` varchar(255) DEFAULT NULL COMMENT '发货地址',
  `bank_name` varchar(255) DEFAULT NULL COMMENT '开户行',
  `bank_account` varchar(255) DEFAULT NULL COMMENT '账号',
  `pei_shu_person` varchar(255) DEFAULT NULL COMMENT '配书',
  `fu_he_person` varchar(255) DEFAULT NULL COMMENT '复核',
  `da_bao_person` varchar(255) DEFAULT NULL COMMENT '打包',
  `comments` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fa_xing
-- ----------------------------
INSERT INTO `fa_xing` VALUES ('FX0001', '发票1', '客户代号', '杨浦区', '2014-03-04', 'B0001', '第一本书', '23.5', '300', '3400', '0.9', '第一库9号位', '实配', '详细的订书依据', '农村站', '皇太极', '13459876456', '接收人', '200345', '虹口区', '中国建设银行', '1234345', '配书信息', '复核信息', '打包信息', '这里是备注。');
INSERT INTO `fa_xing` VALUES ('FX0002', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0003', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0004', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0005', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0006', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0007', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0008', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0009', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0010', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0011', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0012', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0013', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0014', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0015', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0016', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0017', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0018', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0019', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0020', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0021', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0022', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0023', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0024', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0025', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0026', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0027', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0028', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0029', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0030', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0031', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0032', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0033', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0034', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing` VALUES ('FX0035', 'aaa', 'aaa', 'aaa', '2014-09-09', 'aaa', 'aaa', '45.7', '300', '4567', '8.8', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaaaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa');

-- ----------------------------
-- Table structure for `fa_xing_export`
-- ----------------------------
DROP TABLE IF EXISTS `fa_xing_export`;
CREATE TABLE `fa_xing_export` (
  `发行编号` varchar(255) NOT NULL COMMENT '发行编号',
  `发票名称` varchar(255) DEFAULT NULL COMMENT '发票名称',
  `客户代号` varchar(255) DEFAULT NULL COMMENT '客户代号',
  `发票地址` varchar(255) DEFAULT NULL COMMENT '发票地址',
  `开单日期` varchar(255) DEFAULT NULL COMMENT '开单日期',
  `书号` varchar(255) DEFAULT NULL COMMENT '书号',
  `书名` varchar(255) DEFAULT NULL COMMENT '书名',
  `单价` float DEFAULT NULL COMMENT '单价',
  `数量` int(11) DEFAULT NULL COMMENT '数量',
  `码洋` int(11) DEFAULT NULL COMMENT '码洋',
  `折扣` float DEFAULT NULL COMMENT '折扣',
  `库位` varchar(255) DEFAULT NULL COMMENT '库位',
  `实配` varchar(255) DEFAULT NULL COMMENT '实配',
  `订书依据` varchar(255) DEFAULT NULL COMMENT '订书依据',
  `站点` varchar(255) DEFAULT NULL COMMENT '站点',
  `联系人` varchar(255) DEFAULT NULL COMMENT '联系人',
  `联系电话` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `发货户名` varchar(255) DEFAULT NULL COMMENT '发货户名',
  `邮编` varchar(255) DEFAULT NULL COMMENT '邮编',
  `发货地址` varchar(255) DEFAULT NULL COMMENT '发货地址',
  `开户行` varchar(255) DEFAULT NULL COMMENT '开户行',
  `账号` varchar(255) DEFAULT NULL COMMENT '账号',
  `配书` varchar(255) DEFAULT NULL COMMENT '配书',
  `复核` varchar(255) DEFAULT NULL COMMENT '复核',
  `打包` varchar(255) DEFAULT NULL COMMENT '打包',
  `备注` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`发行编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fa_xing_export
-- ----------------------------
INSERT INTO `fa_xing_export` VALUES ('FX0001', '发票1', '客户代号', '杨浦区', '2014-03-04', 'B0001', '第一本书', '23.5', '300', '3400', '0.9', '第一库9号位', '实配', '详细的订书依据', '农村站', '皇太极', '13459876456', '接收人', '200345', '虹口区', '中国建设银行', '1234345', '配书信息', '复核信息', '打包信息', '这里是备注。');
INSERT INTO `fa_xing_export` VALUES ('FX0002', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0003', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0004', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0005', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0006', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0007', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0008', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0009', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0010', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0011', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0012', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0013', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0014', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0015', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0016', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0017', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0018', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0019', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0020', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0021', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0022', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0023', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0024', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0025', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0026', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0027', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0028', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0029', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0030', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0031', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0032', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0033', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0034', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0035', 'aaa', 'aaa', 'aaa', '2014-09-09', 'aaa', 'aaa', '45.7', '300', '4567', '8.8', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaaaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa');

-- ----------------------------
-- Table structure for `gao_jian_source`
-- ----------------------------
DROP TABLE IF EXISTS `gao_jian_source`;
CREATE TABLE `gao_jian_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `content` varchar(255) DEFAULT NULL COMMENT '稿件来源',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gao_jian_source
-- ----------------------------
INSERT INTO `gao_jian_source` VALUES ('1', '自发投稿');
INSERT INTO `gao_jian_source` VALUES ('2', '编辑组稿');
INSERT INTO `gao_jian_source` VALUES ('3', '公司项目');
INSERT INTO `gao_jian_source` VALUES ('4', '其他');

-- ----------------------------
-- Table structure for `print_quality`
-- ----------------------------
DROP TABLE IF EXISTS `print_quality`;
CREATE TABLE `print_quality` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `content` varchar(255) DEFAULT NULL COMMENT '印刷质量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of print_quality
-- ----------------------------
INSERT INTO `print_quality` VALUES ('1', '优良');
INSERT INTO `print_quality` VALUES ('2', '一般');
INSERT INTO `print_quality` VALUES ('3', '较差');
INSERT INTO `print_quality` VALUES ('4', '需返工');

-- ----------------------------
-- Table structure for `print_status`
-- ----------------------------
DROP TABLE IF EXISTS `print_status`;
CREATE TABLE `print_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `content` varchar(255) DEFAULT NULL COMMENT '印刷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of print_status
-- ----------------------------
INSERT INTO `print_status` VALUES ('1', '已下单');
INSERT INTO `print_status` VALUES ('2', '印刷中');
INSERT INTO `print_status` VALUES ('3', '装订中');
INSERT INTO `print_status` VALUES ('4', '施工完毕');

-- ----------------------------
-- Table structure for `ru_ku`
-- ----------------------------
DROP TABLE IF EXISTS `ru_ku`;
CREATE TABLE `ru_ku` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `ru_ku_date` varchar(255) DEFAULT NULL COMMENT '入库时间',
  `order_id` varchar(255) DEFAULT NULL COMMENT '单号',
  `order_create_date` varchar(255) DEFAULT NULL COMMENT '开单时间',
  `publish_company` varchar(255) DEFAULT NULL COMMENT '出版单位',
  `deliver_company` varchar(255) DEFAULT NULL COMMENT '送书单位',
  `receive_company` varchar(255) DEFAULT NULL COMMENT '收书单位',
  `store_center` varchar(255) DEFAULT NULL COMMENT '储运中心',
  `book_name` varchar(255) DEFAULT NULL COMMENT '书名',
  `revision` int(11) DEFAULT NULL COMMENT '版次',
  `quantity` int(11) DEFAULT NULL COMMENT '数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `fixed_price` int(11) DEFAULT NULL COMMENT '码洋',
  `check_man` varchar(255) DEFAULT NULL COMMENT '验书人',
  `receive_man` varchar(255) DEFAULT NULL COMMENT '收书人',
  `comments` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ru_ku
-- ----------------------------
INSERT INTO `ru_ku` VALUES ('1', '2014-06-06', 'od0001', '2014-06-13', '出版单位', '松鼠单位', '大收书单位', '很大的储运中心', '第一本书', '2', '100', '45.7', '30000', '石破天', '破天石', '这里是备注。');
INSERT INTO `ru_ku` VALUES ('2', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('3', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('4', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('5', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('6', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('7', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('8', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('9', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('10', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('11', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('12', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('13', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('14', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('15', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('16', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('17', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('18', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('19', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('20', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('21', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('22', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('23', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('24', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('25', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('26', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('27', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('28', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('29', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('30', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('31', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('32', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku` VALUES ('33', '2016-01-25', 'aaa', '2016-01-25', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', '2', '300', '34.5', '20000', 'aaa', 'aaa', 'aaa');

-- ----------------------------
-- Table structure for `ru_ku_export`
-- ----------------------------
DROP TABLE IF EXISTS `ru_ku_export`;
CREATE TABLE `ru_ku_export` (
  `序号` int(11) NOT NULL DEFAULT '0' COMMENT '序号',
  `入库时间` varchar(255) DEFAULT NULL COMMENT '入库时间',
  `单号` varchar(255) DEFAULT NULL COMMENT '单号',
  `开单时间` varchar(255) DEFAULT NULL COMMENT '开单时间',
  `出版单位` varchar(255) DEFAULT NULL COMMENT '出版单位',
  `送书单位` varchar(255) DEFAULT NULL COMMENT '送书单位',
  `收书单位` varchar(255) DEFAULT NULL COMMENT '收书单位',
  `储运中心` varchar(255) DEFAULT NULL COMMENT '储运中心',
  `书名` varchar(255) DEFAULT NULL COMMENT '书名',
  `版次` int(11) DEFAULT NULL COMMENT '版次',
  `数量` int(11) DEFAULT NULL COMMENT '数量',
  `单价` float DEFAULT NULL COMMENT '单价',
  `码洋` int(11) DEFAULT NULL COMMENT '码洋',
  `验书人` varchar(255) DEFAULT NULL COMMENT '验书人',
  `收书人` varchar(255) DEFAULT NULL COMMENT '收书人',
  `备注` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`序号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ru_ku_export
-- ----------------------------
INSERT INTO `ru_ku_export` VALUES ('1', '2014-06-06', 'od0001', '2014-06-13', '出版单位', '松鼠单位', '大收书单位', '很大的储运中心', '第一本书', '2', '100', '45.7', '30000', '石破天', '破天石', '这里是备注。');
INSERT INTO `ru_ku_export` VALUES ('2', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('3', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('4', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('5', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('6', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('7', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('8', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('9', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('10', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('11', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('12', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('13', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('14', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('15', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('16', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('17', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('18', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('19', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('20', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('21', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('22', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('23', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('24', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('25', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('26', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('27', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('28', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('29', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('30', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('31', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('32', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('33', '2016-01-25', 'aaa', '2016-01-25', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', '2', '300', '34.5', '20000', 'aaa', 'aaa', 'aaa');

-- ----------------------------
-- Table structure for `transportation`
-- ----------------------------
DROP TABLE IF EXISTS `transportation`;
CREATE TABLE `transportation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `content` varchar(255) DEFAULT NULL COMMENT '运输方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of transportation
-- ----------------------------
INSERT INTO `transportation` VALUES ('1', '公路运输');
INSERT INTO `transportation` VALUES ('2', '航空运输');
INSERT INTO `transportation` VALUES ('3', '其他');

-- ----------------------------
-- Table structure for `xuan_ti`
-- ----------------------------
DROP TABLE IF EXISTS `xuan_ti`;
CREATE TABLE `xuan_ti` (
  `id` varchar(255) NOT NULL COMMENT '选题编号',
  `type` varchar(255) DEFAULT NULL COMMENT '选题类型',
  `year` varchar(255) DEFAULT NULL COMMENT '选题年度',
  `season` int(11) DEFAULT NULL COMMENT '选题季度',
  `book_name` varchar(255) DEFAULT NULL COMMENT '书名',
  `sub_book_name` varchar(255) DEFAULT NULL COMMENT '丛书名',
  `department` varchar(255) DEFAULT NULL COMMENT '部门',
  `originator` varchar(255) DEFAULT NULL COMMENT '申报人',
  `source` int(11) DEFAULT NULL COMMENT '稿件来源',
  `first_comments` int(11) DEFAULT NULL COMMENT '初审意见',
  `status` int(11) DEFAULT NULL COMMENT '选题状态',
  `ISBN` varchar(255) DEFAULT NULL COMMENT 'ISBN',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xuan_ti
-- ----------------------------
INSERT INTO `xuan_ti` VALUES ('XT0001', '论文', '2000', '2', '生死疲劳', '无', '疲劳部门', '李逍遥', '1', '1', '1', 'isbn9876');
INSERT INTO `xuan_ti` VALUES ('XT0002', '杂文', '2014', '3', '人生苦短', '', '人生组', '赵钱孙', '1', '1', '1', 'isbn12345');
INSERT INTO `xuan_ti` VALUES ('XT0003', '美术', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '1', '1', '1', 'isbn1245');
INSERT INTO `xuan_ti` VALUES ('XT0004', '散文', '2013', '3', '倚天屠龙记', '丛书', '高效部门', '王重阳', '3', '3', '3', 'isbn1245');
INSERT INTO `xuan_ti` VALUES ('XT0005', '论文', '2013', '3', '一生所爱', '丛书', '高效部门', '王重阳', '3', '3', '3', 'isbn1245');
INSERT INTO `xuan_ti` VALUES ('XT0006', '论文', '2014', '3', '神雕侠侣', '丛书', '高效部门', '王重阳', '3', '3', '3', 'isbn1245');
INSERT INTO `xuan_ti` VALUES ('XT0007', '论文', '2013', '3', '青苹果乐园', '丛书', '高效部门', '王重阳', '1', '1', '1', 'isbn1245');
INSERT INTO `xuan_ti` VALUES ('XT0008', '论文', '2013', '1', '射雕英雄传', '丛书', '高效部门', '王重阳', '1', '1', '1', 'isbn1245');
INSERT INTO `xuan_ti` VALUES ('XT0009', '理论教学', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '3', '3', '3', '');
INSERT INTO `xuan_ti` VALUES ('XT0010', '论文', '2013', '3', '左手右手', '丛书', '高能部门', '王重阳', '3', '3', '3', 'isbn1245');
INSERT INTO `xuan_ti` VALUES ('XT0011', '论文', '2013', '3', '射雕英雄传', '丛书', '高端部门', '王重阳', '3', '3', '3', 'isbn1245');
INSERT INTO `xuan_ti` VALUES ('XT0012', '论文', '2013', '3', '射雕英雄传', '丛书', '并没有部门', '王重阳', '3', '3', '3', 'isbn45245');
INSERT INTO `xuan_ti` VALUES ('XT0013', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '3', '3', '3', 'isbn1245');
INSERT INTO `xuan_ti` VALUES ('XT0014', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '3', '3', '3', 'isbn1245');
INSERT INTO `xuan_ti` VALUES ('XT0015', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '3', '3', '3', 'isbn1245');
INSERT INTO `xuan_ti` VALUES ('XT0016', '论文', '2002', '3', '张飞吃血', '丛书', '高效部门', '王重阳', '3', '3', '3', 'isbn9945');
INSERT INTO `xuan_ti` VALUES ('XT0017', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '3', '3', '3', 'isbn1245');
INSERT INTO `xuan_ti` VALUES ('XT0018', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '3', '3', '3', 'isbn1245');
INSERT INTO `xuan_ti` VALUES ('XT0019', '论文', '2003', '3', '英雄联盟', '丛书', '高效部门', '王重阳', '3', '3', '3', 'isbn1245');
INSERT INTO `xuan_ti` VALUES ('XT0020', '论文', '2005', '3', '生死狙击', '丛书', '高效部门', '王重阳', '3', '3', '3', 'isbn1245');
INSERT INTO `xuan_ti` VALUES ('XT0021', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '3', '1', '3', 'isbn1245');
INSERT INTO `xuan_ti` VALUES ('XT0022', '论文', '2012', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '3', '1', '3', 'isbn1245');
INSERT INTO `xuan_ti` VALUES ('XT0023', '论文', '2002', '3', '暴力摩托', '丛书', '高效部门', '王重阳', '3', '3', '3', 'isbn1245');
INSERT INTO `xuan_ti` VALUES ('XT0024', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '4', '3', '3', 'isbn1245');
INSERT INTO `xuan_ti` VALUES ('XT0025', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '3', '3', '3', 'isbn1245');
INSERT INTO `xuan_ti` VALUES ('XT0026', '论文', '2010', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '1', '3', '3', 'isbn1245');
INSERT INTO `xuan_ti` VALUES ('XT0027', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '3', '3', '3', 'isbn1245');
INSERT INTO `xuan_ti` VALUES ('XT0028', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '3', '3', '3', 'isbn1245');
INSERT INTO `xuan_ti` VALUES ('XT0029', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '3', '3', '3', 'isbn1245');
INSERT INTO `xuan_ti` VALUES ('XT0030', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '3', '3', '3', 'isbn1245');
INSERT INTO `xuan_ti` VALUES ('XT0031', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '3', '3', '3', 'isbn1245');
INSERT INTO `xuan_ti` VALUES ('XT0032', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '3', '3', '3', 'isbn1245');
INSERT INTO `xuan_ti` VALUES ('XT0033', '论文', '2013', '3', '射雕英雄传1', '丛书', '高效部门', '王重阳', '3', '3', '3', 'isbn1245');
INSERT INTO `xuan_ti` VALUES ('XT0034', '论文', '2013', '3', '射雕英雄传4', '丛书', '高效部门', '王重阳', '3', '3', '3', 'isbn1245');
INSERT INTO `xuan_ti` VALUES ('XT0035', '论文', '2001', '1', '小李飞刀', '李寻欢的故事', '李园', '刘某某', '2', '1', '3', 'isbn1222');
INSERT INTO `xuan_ti` VALUES ('XT0036', '论文', '2001', '2', '红尘旧梦', '旧梦', '虚空部门', '14K虚空', '1', '1', '1', 'isbn11');
INSERT INTO `xuan_ti` VALUES ('XT0037', '论文', '2001', '2', '不想玩了', '其实想玩', '三国之刃', '灰太狼', '4', '1', '1', 'isbn111');
INSERT INTO `xuan_ti` VALUES ('XT0038', '论文', '2016', '3', '诗歌三百首', '无', '图书', '哇哈哈', '1', '1', '1', '');

-- ----------------------------
-- Table structure for `xuan_ti_export`
-- ----------------------------
DROP TABLE IF EXISTS `xuan_ti_export`;
CREATE TABLE `xuan_ti_export` (
  `选题编号` varchar(255) NOT NULL COMMENT '选题编号',
  `选题类型` varchar(255) DEFAULT NULL COMMENT '选题类型',
  `选题年度` varchar(255) DEFAULT NULL COMMENT '选题年度',
  `选题季度` int(11) DEFAULT NULL COMMENT '选题季度',
  `书名` varchar(255) DEFAULT NULL COMMENT '书名',
  `丛书名` varchar(255) DEFAULT NULL COMMENT '丛书名',
  `部门` varchar(255) DEFAULT NULL COMMENT '部门',
  `申报人` varchar(255) DEFAULT NULL COMMENT '申报人',
  `稿件来源` varchar(255) DEFAULT NULL COMMENT '稿件来源',
  `初审意见` varchar(255) DEFAULT NULL COMMENT '初审意见',
  `选题状态` varchar(255) DEFAULT NULL COMMENT '选题状态',
  `ISBN` varchar(255) DEFAULT NULL COMMENT 'ISBN',
  PRIMARY KEY (`选题编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xuan_ti_export
-- ----------------------------
INSERT INTO `xuan_ti_export` VALUES ('XT0001', '论文', '2000', '2', '生死疲劳', '无', '疲劳部门', '李逍遥', '自发投稿', '优良', '待审核', 'isbn9876');
INSERT INTO `xuan_ti_export` VALUES ('XT0002', '杂文', '2014', '3', '人生苦短', '', '人生组', '赵钱孙', '自发投稿', '优良', '待审核', 'isbn12345');
INSERT INTO `xuan_ti_export` VALUES ('XT0003', '美术', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '自发投稿', '优良', '待审核', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0004', '散文', '2013', '3', '倚天屠龙记', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0005', '论文', '2013', '3', '一生所爱', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0006', '论文', '2014', '3', '神雕侠侣', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0007', '论文', '2013', '3', '青苹果乐园', '丛书', '高效部门', '王重阳', '自发投稿', '优良', '待审核', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0008', '论文', '2013', '1', '射雕英雄传', '丛书', '高效部门', '王重阳', '自发投稿', '优良', '待审核', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0009', '理论教学', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', '');
INSERT INTO `xuan_ti_export` VALUES ('XT0010', '论文', '2013', '3', '左手右手', '丛书', '高能部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0011', '论文', '2013', '3', '射雕英雄传', '丛书', '高端部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0012', '论文', '2013', '3', '射雕英雄传', '丛书', '并没有部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn45245');
INSERT INTO `xuan_ti_export` VALUES ('XT0013', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0014', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0015', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0016', '论文', '2002', '3', '张飞吃血', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn9945');
INSERT INTO `xuan_ti_export` VALUES ('XT0017', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0018', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0019', '论文', '2003', '3', '英雄联盟', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0020', '论文', '2005', '3', '生死狙击', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0021', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '公司项目', '优良', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0022', '论文', '2012', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '公司项目', '优良', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0023', '论文', '2002', '3', '暴力摩托', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0024', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '其他', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0025', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0026', '论文', '2010', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '自发投稿', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0027', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0028', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0029', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0030', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0031', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0032', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0033', '论文', '2013', '3', '射雕英雄传1', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0034', '论文', '2013', '3', '射雕英雄传4', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0035', '论文', '2001', '1', '小李飞刀', '李寻欢的故事', '李园', '刘某某', '编辑组稿', '优良', '未通过', 'isbn1222');
INSERT INTO `xuan_ti_export` VALUES ('XT0036', '论文', '2001', '2', '红尘旧梦', '旧梦', '虚空部门', '14K虚空', '自发投稿', '优良', '待审核', 'isbn11');
INSERT INTO `xuan_ti_export` VALUES ('XT0037', '论文', '2001', '2', '不想玩了', '其实想玩', '三国之刃', '灰太狼', '其他', '优良', '待审核', 'isbn111');
INSERT INTO `xuan_ti_export` VALUES ('XT0038', '论文', '2016', '3', '诗歌三百首', '无', '图书', '哇哈哈', '自发投稿', '优良', '待审核', '');

-- ----------------------------
-- Table structure for `xuan_ti_status`
-- ----------------------------
DROP TABLE IF EXISTS `xuan_ti_status`;
CREATE TABLE `xuan_ti_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `content` varchar(255) DEFAULT NULL COMMENT '选题状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xuan_ti_status
-- ----------------------------
INSERT INTO `xuan_ti_status` VALUES ('1', '待审核');
INSERT INTO `xuan_ti_status` VALUES ('2', '已通过');
INSERT INTO `xuan_ti_status` VALUES ('3', '未通过');

-- ----------------------------
-- Table structure for `yin_wu`
-- ----------------------------
DROP TABLE IF EXISTS `yin_wu`;
CREATE TABLE `yin_wu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '印务编号',
  `start_date` varchar(255) DEFAULT NULL COMMENT '起始日期',
  `end_date` varchar(255) DEFAULT NULL COMMENT '终止日期',
  `publish_company` varchar(255) DEFAULT NULL COMMENT '出版单位',
  `print_company` varchar(255) DEFAULT NULL COMMENT '印刷单位',
  `book_name` varchar(255) DEFAULT NULL COMMENT '图书名称',
  `book_specs` int(11) DEFAULT NULL COMMENT '图书规格',
  `yin_zhang` int(11) DEFAULT NULL COMMENT '印章',
  `revision` int(11) DEFAULT NULL COMMENT '版次',
  `print_quantity` int(11) DEFAULT NULL COMMENT '印刷数',
  `ISBN` varchar(255) DEFAULT NULL COMMENT 'ISBN',
  `ze_ren_editor` varchar(255) DEFAULT NULL COMMENT '责任编辑',
  `ze_ren_department` varchar(255) DEFAULT NULL COMMENT '责任部门',
  `print_status` int(11) DEFAULT NULL COMMENT '印刷状态',
  `print_quality` int(11) DEFAULT NULL COMMENT '印刷质量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yin_wu
-- ----------------------------
INSERT INTO `yin_wu` VALUES ('1', '2014-03-14', '2014-04-14', '我是出版单位', '我是印刷单位', '逍遥叹', '1', '1', '1', '100', 'isbnjhoen', '李寻欢', '李园', '1', '1');
INSERT INTO `yin_wu` VALUES ('2', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '人生的过客', '2', '2', '2', '200', 'isbn879', '张三丰', '张三丰', '2', '2');
INSERT INTO `yin_wu` VALUES ('3', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '3', '2', '2', '200', 'isbn879', '张三丰', '武当', '1', '2');
INSERT INTO `yin_wu` VALUES ('4', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '1', '2', '2', '200', 'isbn879', '张三丰', '武当', '2', '4');
INSERT INTO `yin_wu` VALUES ('5', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '4', '2', '2', '200', 'isbn879', '张三丰', '武当', '2', '2');
INSERT INTO `yin_wu` VALUES ('6', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '1', '4', '2', '200', 'isbn879', '张三丰', '武当', '2', '4');
INSERT INTO `yin_wu` VALUES ('7', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '3', '2', '2', '200', 'isbn879', '张三丰', '武当', '2', '2');
INSERT INTO `yin_wu` VALUES ('8', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '2', '2', '2', '200', 'isbn879', '张三丰', '武当', '2', '2');
INSERT INTO `yin_wu` VALUES ('9', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '1', '2', '2', '200', 'isbn879', '张三丰', '武当', '2', '2');
INSERT INTO `yin_wu` VALUES ('10', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '2', '2', '2', '200', 'isbn879', '张三丰', '武当', '2', '2');
INSERT INTO `yin_wu` VALUES ('11', '2014-05-23', '2014-06-23', '超人出版社', '沙漏印刷社', '刘涛的一生', '2', '4', '2', '200', 'isbn879', '张三丰', '武当', '2', '2');
INSERT INTO `yin_wu` VALUES ('12', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '2', '2', '2', '200', 'isbn879', '张三丰', '武当', '2', '2');
INSERT INTO `yin_wu` VALUES ('13', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '2', '4', '2', '200', 'isbn879', '张三丰', '武当', '4', '2');
INSERT INTO `yin_wu` VALUES ('14', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '4', '2', '2', '200', 'isbn879', '张三丰', '武当', '2', '2');
INSERT INTO `yin_wu` VALUES ('15', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '4', '4', '2', '200', 'isbn879', '张三丰', '武当', '4', '2');
INSERT INTO `yin_wu` VALUES ('16', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '4', '2', '2', '200', 'isbn879', '张三丰', '武当', '2', '2');
INSERT INTO `yin_wu` VALUES ('17', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '2', '4', '2', '200', 'isbn879', '张三丰', '武当', '4', '2');
INSERT INTO `yin_wu` VALUES ('18', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '2', '2', '2', '200', 'isbn879', '张三丰', '武当', '2', '2');
INSERT INTO `yin_wu` VALUES ('19', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '3', '2', '2', '200', 'isbn879', '张三丰', '武当', '3', '2');
INSERT INTO `yin_wu` VALUES ('20', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '3', '1', '2', '200', 'isbn879', '张三丰', '武当', '2', '2');
INSERT INTO `yin_wu` VALUES ('21', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '2', '2', '2', '200', 'isbn879', '张三丰', '武当', '3', '2');
INSERT INTO `yin_wu` VALUES ('22', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '3', '3', '2', '200', 'isbn879', '张三丰', '武当', '3', '2');
INSERT INTO `yin_wu` VALUES ('23', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '2', '2', '2', '200', 'isbn879', '张三丰', '武当', '2', '2');
INSERT INTO `yin_wu` VALUES ('24', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '2', '2', '2', '200', 'isbn879', '张三丰', '武当', '2', '2');
INSERT INTO `yin_wu` VALUES ('25', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '2', '2', '2', '200', 'isbn879', '张三丰', '武当', '2', '1');
INSERT INTO `yin_wu` VALUES ('26', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '2', '2', '2', '200', 'isbn879', '张三丰', '武当', '2', '2');
INSERT INTO `yin_wu` VALUES ('27', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '2', '2', '2', '200', 'isbn879', '张三丰', '武当', '2', '2');
INSERT INTO `yin_wu` VALUES ('28', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '2', '2', '2', '200', 'isbn879', '张三丰', '武当', '2', '1');
INSERT INTO `yin_wu` VALUES ('29', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '2', '2', '2', '200', 'isbn879', '张三丰', '武当', '2', '2');
INSERT INTO `yin_wu` VALUES ('30', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '2', '2', '2', '200', 'isbn879', '张三丰', '武当', '2', '2');
INSERT INTO `yin_wu` VALUES ('31', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '2', '2', '2', '200', 'isbn879', '张三丰', '武当', '2', '2');
INSERT INTO `yin_wu` VALUES ('32', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '2', '2', '2', '200', 'isbn879', '张三丰', '武当', '2', '2');
INSERT INTO `yin_wu` VALUES ('33', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '2', '2', '2', '200', 'isbn879', '张三丰', '武当', '2', '2');
INSERT INTO `yin_wu` VALUES ('34', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '2', '2', '2', '200', 'isbn879', '张三丰', '武当', '2', '2');
INSERT INTO `yin_wu` VALUES ('35', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '2', '2', '2', '200', 'isbn879', '张三丰', '武当', '2', '2');
INSERT INTO `yin_wu` VALUES ('36', '2016-01-24', '2016-01-30', '凤凰出版社', '至尊印刷厂', '谁是英雄', '1', '45', '4', '200', 'tgdhjk', '李逍遥', '逍遥部门', '3', '1');

-- ----------------------------
-- Table structure for `yin_wu_export`
-- ----------------------------
DROP TABLE IF EXISTS `yin_wu_export`;
CREATE TABLE `yin_wu_export` (
  `印务编号` int(11) NOT NULL DEFAULT '0' COMMENT '印务编号',
  `起始日期` varchar(255) DEFAULT NULL COMMENT '起始日期',
  `终止日期` varchar(255) DEFAULT NULL COMMENT '终止日期',
  `出版单位` varchar(255) DEFAULT NULL COMMENT '出版单位',
  `印刷单位` varchar(255) DEFAULT NULL COMMENT '印刷单位',
  `图书名称` varchar(255) DEFAULT NULL COMMENT '图书名称',
  `图书规格` varchar(255) DEFAULT NULL COMMENT '图书规格',
  `印章` int(11) DEFAULT NULL COMMENT '印章',
  `版次` int(11) DEFAULT NULL COMMENT '版次',
  `印刷数` int(11) DEFAULT NULL COMMENT '印刷数',
  `ISBN` varchar(255) DEFAULT NULL COMMENT 'ISBN',
  `责任编辑` varchar(255) DEFAULT NULL COMMENT '责任编辑',
  `责任部门` varchar(255) DEFAULT NULL COMMENT '责任部门',
  `印刷状态` varchar(255) DEFAULT NULL COMMENT '印刷状态',
  `印刷质量` varchar(255) DEFAULT NULL COMMENT '印刷质量',
  PRIMARY KEY (`印务编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yin_wu_export
-- ----------------------------
INSERT INTO `yin_wu_export` VALUES ('1', '2014-03-14', '2014-04-14', '我是出版单位', '我是印刷单位', '逍遥叹', '32开', '1', '1', '100', 'isbnjhoen', '李寻欢', '李园', '已下单', '优良');
INSERT INTO `yin_wu_export` VALUES ('2', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '人生的过客', '大32开', '2', '2', '200', 'isbn879', '张三丰', '张三丰', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('3', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '16开', '2', '2', '200', 'isbn879', '张三丰', '武当', '已下单', '一般');
INSERT INTO `yin_wu_export` VALUES ('4', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '需返工');
INSERT INTO `yin_wu_export` VALUES ('5', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大16开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('6', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '32开', '4', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '需返工');
INSERT INTO `yin_wu_export` VALUES ('7', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '16开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('8', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('9', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('10', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('11', '2014-05-23', '2014-06-23', '超人出版社', '沙漏印刷社', '刘涛的一生', '大32开', '4', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('12', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('13', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '4', '2', '200', 'isbn879', '张三丰', '武当', '施工完毕', '一般');
INSERT INTO `yin_wu_export` VALUES ('14', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大16开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('15', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大16开', '4', '2', '200', 'isbn879', '张三丰', '武当', '施工完毕', '一般');
INSERT INTO `yin_wu_export` VALUES ('16', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大16开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('17', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '4', '2', '200', 'isbn879', '张三丰', '武当', '施工完毕', '一般');
INSERT INTO `yin_wu_export` VALUES ('18', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('19', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '16开', '2', '2', '200', 'isbn879', '张三丰', '武当', '装订中', '一般');
INSERT INTO `yin_wu_export` VALUES ('20', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '16开', '1', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('21', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '装订中', '一般');
INSERT INTO `yin_wu_export` VALUES ('22', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '16开', '3', '2', '200', 'isbn879', '张三丰', '武当', '装订中', '一般');
INSERT INTO `yin_wu_export` VALUES ('23', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('24', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('25', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '优良');
INSERT INTO `yin_wu_export` VALUES ('26', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('27', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('28', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '优良');
INSERT INTO `yin_wu_export` VALUES ('29', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('30', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('31', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('32', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('33', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('34', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('35', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('36', '2016-01-24', '2016-01-30', '凤凰出版社', '至尊印刷厂', '谁是英雄', '32开', '45', '4', '200', 'tgdhjk', '李逍遥', '逍遥部门', '装订中', '优良');
