-- phpMyAdmin SQL Dump
-- version 3.5.0-rc1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2012 年 12 月 03 日 17:04
-- 服务器版本: 5.1.58
-- PHP 版本: 5.3.9-ZS5.6.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `kaliry`
--

-- --------------------------------------------------------

--
-- 表的结构 `tb_master`
--

CREATE TABLE IF NOT EXISTS `tb_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL COMMENT '地区',
  `city` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `authority` smallint(1) NOT NULL COMMENT '权限：1超级管理员；2高级管理员；3普通管理员；',
  `time` datetime NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `tb_master`
--

INSERT INTO `tb_master` (`id`, `account`, `password`, `province`, `city`, `company`, `authority`, `time`) VALUES
(1, 'admin', '4297F44B13955235245B2497399D7A93', '浙江', '杭州', '总部', 1, '2012-12-03 14:14:18'),
(5, 'asdf', '4297f44b13955235245b2497399d7a93', '浙江', '杭州', '武林', 3, '2012-12-03 14:22:20'),
(6, 'sdf', '4297f44b13955235245b2497399d7a93', '浙江', '杭州', '富阳', 3, '2012-12-03 14:23:33'),
(7, 'admin2', '4297f44b13955235245b2497399d7a93', '浙江', '杭州', '西湖', 1, '2012-12-03 16:53:01');

-- --------------------------------------------------------

--
-- 表的结构 `tb_member`
--

CREATE TABLE IF NOT EXISTS `tb_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '姓名',
  `idcard` varchar(18) NOT NULL COMMENT '身份证号码',
  `province` varchar(64) NOT NULL COMMENT '身份',
  `city` varchar(64) NOT NULL COMMENT '市',
  `company` varchar(255) NOT NULL,
  `open_way` smallint(1) NOT NULL COMMENT '会员卡开通方式',
  `tel` varchar(64) NOT NULL COMMENT '联系电话',
  `pickup_way` smallint(1) NOT NULL COMMENT '取货方式',
  `send_addr` varchar(255) NOT NULL COMMENT '送货地址',
  `purchase_intention` varchar(32) NOT NULL COMMENT '意向认购',
  `customer_signature` varchar(255) NOT NULL COMMENT '客户签名',
  `apply_time` datetime DEFAULT NULL COMMENT '申请日期',
  `servicer_id` int(11) NOT NULL COMMENT '服务专员编号',
  `servicer_name` varchar(255) NOT NULL COMMENT '服务专员名字',
  `is_accept` smallint(1) DEFAULT NULL COMMENT '是否受理',
  `entry_time` datetime DEFAULT NULL COMMENT '录入日期',
  `activate_time` datetime DEFAULT NULL COMMENT '激活生效时间',
  `assignees` varchar(255) DEFAULT NULL COMMENT '受理人',
  `cardno` decimal(14,0) DEFAULT NULL COMMENT '会员卡号',
  `signer` varchar(255) DEFAULT NULL COMMENT '签收人',
  `sign_time` datetime DEFAULT NULL COMMENT '签收日期',
  `credits` int(9) NOT NULL DEFAULT '0' COMMENT '积分',
  `state` smallint(1) NOT NULL COMMENT '状态:1激活;2弃用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- 表的结构 `tb_redeem_record`
--

CREATE TABLE IF NOT EXISTS `tb_redeem_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '物品名',
  `number` int(9) NOT NULL COMMENT '兑换数量',
  `time` datetime NOT NULL COMMENT '兑换时间',
  `member_id` int(11) NOT NULL COMMENT '会员ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tb_trade_record`
--

CREATE TABLE IF NOT EXISTS `tb_trade_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '物品名',
  `price` decimal(9,2) NOT NULL,
  `number` int(9) NOT NULL,
  `money` decimal(9,2) NOT NULL,
  `type` smallint(1) NOT NULL COMMENT '1购买记录;2退货记录',
  `time` datetime NOT NULL,
  `member_id` int(11) NOT NULL COMMENT '会员ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=9 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
