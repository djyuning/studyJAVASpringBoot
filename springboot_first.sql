-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2019 年 02 月 25 日 09:29
-- 服务器版本: 5.5.53
-- PHP 版本: 5.4.45

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `springboot_first`
--

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父级ID',
  `name` varchar(128) DEFAULT NULL COMMENT '名称',
  `alias` varchar(128) DEFAULT NULL COMMENT '别名',
  `remark` varchar(256) NOT NULL COMMENT '备注',
  `created_at` varchar(19) NOT NULL COMMENT '创建日期',
  `update_at` varchar(19) NOT NULL COMMENT '更新日期',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分类' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(64) DEFAULT NULL COMMENT '用户名',
  `created_at` varchar(19) NOT NULL COMMENT '创建日期',
  `contents` varchar(512) DEFAULT NULL COMMENT '评论内容',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `rid` int(11) NOT NULL DEFAULT '0' COMMENT '回复ID',
  `aid` int(11) NOT NULL DEFAULT '0' COMMENT '回复ID',
  `email` varchar(256) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `contents`
--

CREATE TABLE IF NOT EXISTS `contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `cid` int(11) NOT NULL DEFAULT '0' COMMENT '分类ID',
  `title` varchar(128) DEFAULT NULL COMMENT '标题',
  `overview` varchar(256) NOT NULL COMMENT '概览',
  `aid` int(11) NOT NULL DEFAULT '0' COMMENT '作者ID',
  `cover` varchar(256) NOT NULL COMMENT '封面图',
  `contents` text NOT NULL COMMENT '正文内容',
  `created_at` varchar(19) NOT NULL COMMENT '创建日期',
  `update_ad` varchar(19) NOT NULL COMMENT '更新日期',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `password` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='内容' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `profile5`
--

CREATE TABLE IF NOT EXISTS `profile5` (
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `nickname` varchar(64) NOT NULL COMMENT '昵称',
  `avatar` varchar(256) NOT NULL COMMENT '头像',
  `signature` varchar(256) NOT NULL COMMENT '个性签名',
  `birth_date` varchar(19) NOT NULL COMMENT '出生日期',
  `website` varchar(256) NOT NULL COMMENT '个人网站',
  `qq` varchar(32) NOT NULL COMMENT 'QQ',
  `country` varchar(10) NOT NULL COMMENT '国家',
  `province` varchar(10) NOT NULL COMMENT '省市',
  `city` varchar(10) NOT NULL COMMENT '市区',
  `county` varchar(10) NOT NULL COMMENT '区县',
  `theme` tinyint(2) NOT NULL DEFAULT '1' COMMENT '主题ID'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户资料';

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(32) NOT NULL COMMENT '用户名',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `created_at` varchar(19) NOT NULL COMMENT '创建日期',
  `email` varchar(64) NOT NULL COMMENT '邮箱',
  `mobile` varchar(64) NOT NULL COMMENT '手机号',
  `gid` int(11) NOT NULL DEFAULT '0' COMMENT '用户组ID',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `last_login_at` varchar(19) NOT NULL COMMENT '最后登录日期',
  `last_login_ip` varchar(20) NOT NULL COMMENT '最后登录IP',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`email`,`mobile`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='用户' AUTO_INCREMENT=28 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `created_at`, `email`, `mobile`, `gid`, `status`, `last_login_at`, `last_login_ip`) VALUES
(1, 'admin', 'c8837b23ff8aaa8a2dde915473ce0991', '2019-02-25 09:26:18', 'admin@126.com', '13628447451', 1, 1, '2019-02-25 09:26:18', '255.255.255.255'),
(27, 'huluwa', '44462dab045759b4ea3cf91347fca841', '2019-02-25 14:48:44', 'huluwa@donghua.sh', '18246758421', 0, 0, '', ''),
(25, 'liyong', 'efa7d99da73629d5a54f251ad068e479', '2019-02-22 13:39:27', 'liyong@126.com', '13628445049', 0, 0, '', ''),
(19, 'xuyuzhong', '36301e0a99daa37c91a3de65a82d3d3f', '2019-02-22 12:05:46', 'xuyuzhong@haiermoney.com', '13628445044', 0, 0, '', ''),
(20, 'chenyishuai', 'ae3142e85e04609b1e3784be8bfc6f3b', '2019-02-22 12:06:04', 'chenyishuai@haiermoney.com', '13878451247', 0, 0, '', ''),
(21, 'zhouqiong', 'c732ba7143c69942a49cbff5b5710b92', '2019-02-22 12:06:23', 'zhouqiong@haiermoney.com', '13628445042', 0, 0, '', ''),
(23, 'liyifeng', '8dfee67e051668bfc8a6780a66634205', '2019-02-22 12:07:01', 'liyifeng@haiermoney.com', '18234784596', 0, 0, '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
