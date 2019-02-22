-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2019 年 02 月 22 日 09:31
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
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(32) NOT NULL COMMENT '用户名',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `created_at` varchar(19) NOT NULL COMMENT '创建日期',
  `email` varchar(64) NOT NULL COMMENT '邮箱',
  `mobile` varchar(64) NOT NULL COMMENT '手机号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`email`,`mobile`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='用户' AUTO_INCREMENT=26 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `created_at`, `email`, `mobile`) VALUES
(25, 'liyong', 'efa7d99da73629d5a54f251ad068e479', '2019-02-22 13:39:27', 'liyong@126.com', '13628445049'),
(19, 'xuyuzhong', '36301e0a99daa37c91a3de65a82d3d3f', '2019-02-22 12:05:46', 'xuyuzhong@haiermoney.com', '13628445044'),
(20, 'chenyishuai', 'ae3142e85e04609b1e3784be8bfc6f3b', '2019-02-22 12:06:04', 'chenyishuai@haiermoney.com', '13878451247'),
(21, 'zhouqiong', 'c732ba7143c69942a49cbff5b5710b92', '2019-02-22 12:06:23', 'zhouqiong@haiermoney.com', '13628445042'),
(23, 'liyifeng', '8dfee67e051668bfc8a6780a66634205', '2019-02-22 12:07:01', 'liyifeng@haiermoney.com', '18234784596'),
(24, '18007701', '2fb0e87e8298adeb533f8d76b5c4056b', '2019-02-22 13:28:11', '18007701@126.com', '13658745623');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
