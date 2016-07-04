-- Adminer 4.2.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `y_access`;
CREATE TABLE `y_access` (
  `nodes` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `y_admin`;
CREATE TABLE `y_admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `is_publish` int(1) DEFAULT '0',
  `create_time` int(11) unsigned DEFAULT '0',
  `update_time` int(11) unsigned DEFAULT '0',
  `last_login_time` int(11) unsigned DEFAULT '0',
  `login_count` int(11) unsigned DEFAULT '0',
  `username` varchar(50) DEFAULT '',
  `realname` varchar(50) DEFAULT '',
  `password` varchar(32) DEFAULT '',
  `last_login_ip` varchar(40) DEFAULT NULL,
  `email` varchar(50) DEFAULT '',
  `remark` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_admin` (`id`, `is_publish`, `create_time`, `update_time`, `last_login_time`, `login_count`, `username`, `realname`, `password`, `last_login_ip`, `email`, `remark`) VALUES
(2,	1,	1346841710,	1346841710,	1467636484,	413,	'admin',	'管理员',	'21232f297a57a5a743894a0e4a801fc3',	'127.0.0.1',	'',	'备注信息');

DROP TABLE IF EXISTS `y_advert`;
CREATE TABLE `y_advert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) unsigned DEFAULT NULL,
  `is_publish` int(1) DEFAULT '0',
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `ordernum` int(11) DEFAULT '999',
  `type` int(1) DEFAULT NULL,
  `begin_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `hardware` varchar(255) NOT NULL DEFAULT 'pc',
  `lang` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `flash_img2` varchar(255) DEFAULT NULL,
  `flash_img1` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `net_image` varchar(255) DEFAULT NULL,
  `flash` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `code` text,
  `target` varchar(10) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `content` text,
  `my_id` int(11) NOT NULL,
  `is_top` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_advert` (`id`, `category_id`, `is_publish`, `width`, `height`, `ordernum`, `type`, `begin_time`, `end_time`, `update_time`, `create_time`, `hardware`, `lang`, `title`, `flash_img2`, `flash_img1`, `image`, `net_image`, `flash`, `url`, `code`, `target`, `tag`, `content`, `my_id`, `is_top`) VALUES
(1,	1168,	1,	NULL,	NULL,	999,	2,	1378108563,	1378108563,	1378108563,	1378108563,	'pc',	'zh-cn',	'1',	NULL,	NULL,	'522444930cab2.jpg',	'',	NULL,	'',	'',	'_top',	NULL,	'',	0,	0),
(2,	1168,	1,	NULL,	NULL,	999,	2,	1378108552,	1378108552,	1378108552,	1378108552,	'pc',	'zh-cn',	'2',	NULL,	NULL,	'52244487aff28.jpg',	'',	NULL,	'',	'',	'_top',	NULL,	'',	0,	0),
(3,	1168,	1,	NULL,	NULL,	999,	2,	1378108543,	1378108543,	1378108543,	1378108543,	'pc',	'zh-cn',	'3',	NULL,	NULL,	'5224447ec7420.jpg',	'',	NULL,	'',	'',	'_top',	NULL,	'',	0,	0),
(4,	1168,	1,	NULL,	NULL,	999,	2,	1379325161,	1379325161,	1379325161,	1379325161,	'pc',	'zh-cn',	'04',	NULL,	NULL,	'5236d4e8d0d30.jpg',	'',	NULL,	'',	'',	'_top',	NULL,	'',	0,	0),
(5,	1542,	1,	NULL,	NULL,	999,	2,	1467640807,	1467640807,	1467640807,	1467640807,	'pc',	'zh-cn',	'1',	NULL,	NULL,	'577a6be6b476c.jpg',	'',	NULL,	'#',	'',	'_top',	NULL,	'11',	0,	0),
(6,	1542,	1,	NULL,	NULL,	999,	2,	1467640836,	1467640836,	1467640836,	1467640836,	'pc',	'zh-cn',	'2',	NULL,	NULL,	'577a6c0434b14.jpg',	'',	NULL,	'##',	'',	'_top',	NULL,	'2',	0,	0),
(7,	1542,	1,	NULL,	NULL,	999,	2,	1467640856,	1467640856,	1467640856,	1467640856,	'pc',	'zh-cn',	'3',	NULL,	NULL,	'577a6c1854497.jpg',	'',	NULL,	'##',	'',	'_top',	NULL,	'3',	0,	0);

DROP TABLE IF EXISTS `y_category`;
CREATE TABLE `y_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0',
  `is_publish` int(1) DEFAULT '1',
  `is_default` int(1) NOT NULL DEFAULT '0',
  `is_nav` int(1) NOT NULL DEFAULT '0',
  `is_comment` int(1) DEFAULT '0',
  `is_delete` int(1) DEFAULT '1',
  `is_fixed` int(1) DEFAULT '0',
  `ordernum` int(11) DEFAULT '50',
  `list_count` int(11) DEFAULT '1',
  `hardware` varchar(255) NOT NULL DEFAULT 'pc',
  `lang` varchar(10) NOT NULL,
  `levels` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '无标题',
  `image` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `module` varchar(255) NOT NULL,
  `color` varchar(10) NOT NULL,
  `burl` varchar(255) NOT NULL,
  `furl` varchar(255) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `tpl_one` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `my_id` int(11) NOT NULL,
  `is_mobile` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_category` (`id`, `pid`, `is_publish`, `is_default`, `is_nav`, `is_comment`, `is_delete`, `is_fixed`, `ordernum`, `list_count`, `hardware`, `lang`, `levels`, `title`, `image`, `alias`, `module`, `color`, `burl`, `furl`, `tag`, `tpl_one`, `description`, `my_id`, `is_mobile`) VALUES
(20,	12,	1,	0,	1,	0,	0,	1,	13,	36,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u4ea7\\u54c1\\u5c55\\u793a\"}}',	'',	'Goods',	'Goods',	'',	'',	'',	'',	'auto',	'',	20,	1),
(19,	12,	1,	0,	1,	0,	0,	1,	10,	19,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u65b0\\u95fb\\u52a8\\u6001\"}}',	'',	'News',	'News',	'',	'',	'',	'',	'auto',	'',	19,	1),
(36,	12,	1,	0,	1,	0,	0,	1,	14,	1,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u5173\\u4e8e\\u6211\\u4eec\"}}',	'',	'About',	'About',	'',	'',	'',	'',	'auto',	'',	36,	0),
(34,	30000,	0,	0,	0,	0,	0,	1,	46,	0,	'pc',	'zh-cn',	'12|30',	'邮箱设置',	'',	'Email',	'',	'',	'',	'',	'',	'',	'',	34000,	0),
(205,	27,	1,	0,	0,	0,	0,	0,	30,	2,	'pc',	'zh-cn',	'12|27',	'人才招聘',	'',	'Job/index',	'',	'',	'',	'',	'',	'list',	'',	205,	0),
(469,	22,	1,	0,	0,	0,	0,	0,	31,	6,	'pc',	'zh-cn',	'12|22',	'添加网点',	'',	'Market/index',	'',	'',	'',	'',	'',	'list',	'',	469,	1),
(21,	12,	1,	0,	1,	0,	0,	1,	9,	-7,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u5728\\u7ebf\\u7559\\u8a00\"}}',	'',	'Guestbook',	'Guestbook',	'',	'',	'',	'',	'auto',	'',	21,	1),
(220,	21,	1,	0,	0,	0,	0,	0,	30,	-6,	'pc',	'zh-cn',	'12|21',	'回复留言',	'',	'Guestbook/view',	'',	'',	'',	'',	'',	'list',	'',	220,	1),
(499,	497,	1,	0,	0,	0,	0,	1,	3,	0,	'pc',	'zh-cn',	'12|19|497',	'置顶',	'',	'news_istop',	'',	'',	'',	'',	'',	'list',	'',	499,	0),
(498,	497,	1,	0,	0,	0,	0,	1,	4,	0,	'pc',	'zh-cn',	'12|19|497',	'首页',	'',	'news_ishome',	'',	'',	'',	'',	'',	'list',	'',	498,	0),
(22,	12,	0,	0,	0,	0,	0,	1,	11,	31,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u670d\\u52a1\\u7f51\\u70b9\"}}',	'',	'Market',	'Market',	'',	'',	'',	'',	'auto',	'',	22,	1),
(467,	25,	1,	0,	0,	0,	0,	1,	30,	0,	'pc',	'zh-cn',	'12|25',	'加盟申请',	'',	'Join/apply',	'',	'',	'',	'',	'',	'list',	'',	467,	0),
(12,	0,	1,	0,	0,	0,	0,	1,	50,	127,	'pc',	'zh-cn',	'',	'网站后台',	'',	'Module',	'',	'',	'',	'',	'',	'auto',	'',	12,	1),
(500,	497,	1,	0,	0,	0,	0,	1,	2,	0,	'pc',	'zh-cn',	'12|19|497',	'已发布',	'',	'news_ispublish1',	'',	'',	'',	'',	'',	'list',	'',	500,	0),
(501,	497,	1,	0,	0,	0,	0,	1,	1,	0,	'pc',	'zh-cn',	'12|19|497',	'未发布',	'',	'news_ispublish0',	'',	'',	'',	'',	'',	'list',	'',	501,	0),
(1211,	23,	1,	0,	0,	0,	1,	0,	30,	4,	'mobile',	'zh-cn',	'12|23',	'首页多图片切换',	'',	'adv/m_list',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(513,	512,	1,	0,	0,	0,	0,	1,	3,	0,	'pc',	'zh-cn',	'12|20|512',	'置顶',	'',	'goods_istop',	'',	'',	'',	'',	'',	'list',	'',	513,	0),
(514,	512,	1,	0,	0,	0,	0,	1,	4,	0,	'pc',	'zh-cn',	'12|20|512',	'首页',	'',	'goods_ishome',	'',	'',	'',	'',	'',	'list',	'',	514,	0),
(515,	512,	1,	0,	0,	0,	0,	1,	2,	0,	'pc',	'zh-cn',	'12|20|512',	'已发布',	'',	'goods_ispublish1',	'',	'',	'',	'',	'',	'list',	'',	515,	0),
(516,	512,	1,	0,	0,	0,	0,	1,	1,	0,	'pc',	'zh-cn',	'12|20|512',	'未发布',	'',	'goods_ispublish0',	'',	'',	'',	'',	'',	'list',	'',	516,	0),
(11,	0,	1,	0,	0,	0,	0,	0,	50,	0,	'pc',	'zh-cn',	'',	'多语言',	'',	'Lang',	'',	'',	'',	'',	'',	'auto',	'',	11,	0),
(26,	12,	0,	0,	0,	0,	0,	1,	0,	1,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u4e0b\\u8f7d\\u6587\\u4ef6\"}}',	'',	'Download',	'Download',	'',	'',	'',	'',	'auto',	'',	26,	1),
(37,	12,	0,	0,	0,	0,	0,	1,	0,	21,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u89c6\\u9891\\u7ba1\\u7406\"}}',	'',	'Video',	'Video',	'',	'',	'',	'',	'auto',	'',	37,	1),
(1503,	28,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-cn',	'12|28',	'分公司',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(775,	35,	1,	0,	0,	0,	0,	1,	4,	0,	'pc',	'zh-cn',	'12|30|35',	'手机主题',	'',	'MobileTheme',	'',	'',	'Mobile/index',	'',	'',	'list',	'',	775,	0),
(749,	35,	1,	0,	0,	0,	0,	1,	1,	8,	'pc',	'zh-cn',	'12|30|35',	'联系方式',	'',	'MobileContact',	'',	'',	'Mobile/index',	'',	'',	'list',	'',	749,	0),
(750,	35,	1,	0,	0,	0,	0,	1,	5,	0,	'pc',	'zh-cn',	'12|30|35',	'基本信息',	'',	'MobileBase',	'',	'',	'Mobile/index',	'',	'',	'list',	'',	750,	0),
(751,	35,	1,	0,	0,	0,	0,	1,	2,	0,	'pc',	'zh-cn',	'12|30|35',	'移动SEO设置',	'',	'MobileSEO',	'',	'',	'Mobile/index',	'',	'',	'list',	'',	751,	0),
(774,	35,	1,	0,	0,	0,	0,	1,	3,	0,	'pc',	'zh-cn',	'12|30|35',	'多域名绑定',	'',	'MobileDomain',	'',	'',	'Mobile/index',	'',	'',	'list',	'',	774,	0),
(781,	4,	0,	1,	0,	0,	0,	1,	29,	0,	'mobile',	'zh-cn',	'4',	'简体',	'',	'zh-cn',	'',	'',	'',	'',	'',	'',	'',	781,	0),
(615,	469,	1,	0,	0,	0,	1,	0,	30,	10,	'pc',	'zh-cn',	'12|22|469',	'广东',	'512ade93dfa5a.jpg',	'Guangdong',	'',	'',	'',	'',	'',	'list',	'',	615,	0),
(618,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'青海',	'',	'Qinghai',	'',	'',	'',	'',	'',	'list',	'',	618,	1),
(619,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'甘肃',	'',	'Gansu',	'',	'',	'',	'',	'',	'list',	'',	619,	1),
(620,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'内蒙古',	'',	'InnerMongolia',	'',	'',	'',	'',	'',	'list',	'',	620,	1),
(621,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'宁夏',	'',	'Ningxia',	'',	'',	'',	'',	'',	'list',	'',	621,	1),
(622,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'陕西',	'',	'Shanxi',	'',	'',	'',	'',	'',	'list',	'',	622,	0),
(623,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'山西',	'',	'Shanxi2',	'',	'',	'',	'',	'',	'list',	'',	623,	0),
(624,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'河北',	'',	'Hebei',	'',	'',	'',	'',	'',	'list',	'',	624,	0),
(625,	469,	1,	0,	0,	0,	1,	0,	30,	4,	'pc',	'zh-cn',	'12|22|469',	'北京',	'',	'Beijing',	'',	'',	'',	'',	'',	'list',	'',	625,	0),
(626,	469,	1,	0,	0,	0,	1,	0,	30,	3,	'pc',	'zh-cn',	'12|22|469',	'天津',	'',	'Tianjin',	'',	'',	'',	'',	'',	'list',	'',	626,	0),
(627,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'辽宁',	'',	'Liaoning',	'',	'',	'',	'',	'',	'list',	'',	627,	0),
(628,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'吉林',	'',	'Jilin',	'',	'',	'',	'',	'',	'list',	'',	628,	0),
(629,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'黑龙江',	'',	'Heilongjiang',	'',	'',	'',	'',	'',	'list',	'',	629,	0),
(630,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'山东',	'',	'Shandong',	'',	'',	'',	'',	'',	'list',	'',	630,	0),
(631,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'河南',	'',	'Henan',	'',	'',	'',	'',	'',	'list',	'',	631,	0),
(632,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'云南',	'',	'Yunnan',	'',	'',	'',	'',	'',	'list',	'',	632,	0),
(633,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'广西',	'',	'Guangxi',	'',	'',	'',	'',	'',	'list',	'',	633,	0),
(634,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'海南',	'',	'Hainan',	'',	'',	'',	'',	'',	'list',	'',	634,	0),
(635,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'湖南',	'',	'Hunan',	'',	'',	'',	'',	'',	'list',	'',	635,	0),
(636,	469,	1,	0,	0,	0,	1,	0,	30,	3,	'pc',	'zh-cn',	'12|22|469',	'重庆',	'',	'Chongqing',	'',	'',	'',	'',	'',	'list',	'',	636,	0),
(637,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'安徽',	'',	'Anhui',	'',	'',	'',	'',	'',	'list',	'',	637,	0),
(638,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'江苏',	'',	'Jiangsu',	'',	'',	'',	'',	'',	'list',	'',	638,	0),
(639,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'上海',	'',	'Shanghai',	'',	'',	'',	'',	'',	'list',	'',	639,	0),
(640,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'台湾',	'',	'Taiwan',	'',	'',	'',	'',	'',	'list',	'',	640,	0),
(641,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'贵州',	'',	'Guizhou',	'',	'',	'',	'',	'',	'list',	'',	641,	0),
(642,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'湖北',	'',	'Hubei',	'',	'',	'',	'',	'',	'list',	'',	642,	0),
(643,	469,	1,	0,	0,	0,	1,	0,	30,	3,	'pc',	'zh-cn',	'12|22|469',	'四川',	'',	'Sichuan',	'',	'',	'',	'',	'',	'list',	'',	643,	0),
(644,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'福建',	'',	'Fujian',	'',	'',	'',	'',	'',	'list',	'',	644,	0),
(645,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'江西',	'',	'Jiangxi',	'',	'',	'',	'',	'',	'list',	'',	645,	0),
(17,	3,	1,	1,	0,	0,	0,	1,	29,	0,	'pc',	'zh-cn',	'3',	'简体',	'',	'zh-cn',	'',	'',	'',	'',	'',	'',	'',	17,	0),
(18,	3,	0,	0,	0,	0,	0,	1,	27,	0,	'pc',	'en-us',	'3',	'英文',	'',	'en-us',	'',	'',	'',	'',	'',	'',	'',	18,	0),
(428,	3,	0,	0,	0,	0,	0,	1,	28,	0,	'pc',	'zh-tw',	'3',	'繁体',	'',	'zh-tw',	'',	'',	'',	'',	'',	'',	'',	428,	0),
(429,	3,	0,	0,	0,	0,	0,	1,	26,	0,	'pc',	'ja-jp',	'3',	'日文',	'',	'ja-jp',	'',	'',	'',	'',	'',	'',	'',	429,	0),
(430,	3,	0,	0,	0,	0,	0,	1,	25,	0,	'pc',	'ko-kr',	'3',	'韩文',	'',	'ko-kr',	'',	'',	'',	'',	'',	'',	'',	430,	0),
(1191,	37,	1,	0,	0,	0,	1,	0,	30,	2,	'pc',	'zh-cn',	'12|37',	'视频列表',	'',	'Video/Index',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1168,	23,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|23',	'首页多图片切换',	'',	'index/adList',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1531,	12,	1,	0,	1,	0,	1,	0,	7,	1,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u5e7f\\u544a\\u7ba1\\u7406\"}}',	'',	'Advertisement',	'Advert',	'',	'',	'',	'',	'auto',	'',	0,	0),
(1532,	20,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-cn',	'12|20',	'五金部',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1207,	19,	1,	0,	0,	0,	1,	0,	30,	3,	'mobile',	'zh-cn',	'12|19',	'最新活动',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1169,	24,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|24',	'客服列表',	'',	'Link/info',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1170,	36,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|36',	'公司简介',	'',	'About/indexInfo',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1171,	36,	0,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|36',	'蒲记前景',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1172,	36,	0,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|36',	'蒲记定位',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1533,	20,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-cn',	'12|20',	'耗材部',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1198,	36,	1,	0,	0,	0,	1,	0,	30,	0,	'mobile',	'zh-cn',	'12|36',	'公司简介',	'',	'About/introduction',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1238,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-cn',	'12|36',	'经营理念',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1208,	19,	1,	0,	0,	0,	1,	0,	30,	3,	'mobile',	'zh-cn',	'12|19',	'公司新闻',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1209,	19,	1,	0,	0,	0,	1,	0,	30,	10,	'mobile',	'zh-cn',	'12|19',	'行业资讯',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1212,	22,	1,	0,	0,	0,	1,	0,	30,	25,	'mobile',	'zh-cn',	'12|22',	'添加网点',	'',	'Market/index',	'',	'',	'',	'',	'',	'auto',	'',	0,	0),
(1213,	1212,	1,	0,	0,	0,	1,	0,	30,	6,	'mobile',	'zh-cn',	'12|22|1212',	'广州分公司',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1214,	1212,	1,	0,	0,	0,	1,	0,	30,	6,	'mobile',	'zh-cn',	'12|22|1212',	'东莞分公司',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1215,	1212,	1,	0,	0,	0,	1,	0,	30,	5,	'mobile',	'zh-cn',	'12|22|1212',	'北京分公司',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1217,	27,	1,	0,	0,	0,	1,	0,	30,	7,	'mobile',	'zh-cn',	'12|27',	'人才招聘',	'',	'Job/index',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1218,	37,	1,	0,	0,	0,	1,	0,	30,	0,	'mobile',	'zh-cn',	'12|37',	'视频列表',	'',	'Video/Index',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1223,	21,	1,	0,	0,	0,	1,	0,	30,	-2,	'mobile',	'zh-cn',	'12|21',	'回复留言',	'',	'Guestbook/view',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1225,	1223,	1,	0,	0,	0,	1,	0,	30,	-3,	'mobile',	'zh-cn',	'12|21|1223',	'反馈',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1226,	1223,	1,	0,	0,	0,	1,	0,	30,	0,	'mobile',	'zh-cn',	'12|21|1223',	'建议',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1227,	1223,	1,	0,	0,	0,	1,	0,	30,	0,	'mobile',	'zh-cn',	'12|21|1223',	'咨询',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1253,	20,	1,	0,	0,	0,	1,	0,	30,	6,	'mobile',	'zh-cn',	'12|20',	'LED筒灯',	'',	'',	'',	'',	'',	'',	'',	'list',	'LED筒灯',	0,	0),
(1232,	25,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|25',	'加盟信息',	'',	'Join/index',	'',	'',	'',	'',	'',	'auto',	'',	0,	0),
(1233,	1232,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|25|1232',	'加盟支持',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1234,	1232,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|25|1232',	'加盟优势',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1235,	1232,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|25|1232',	'投资前景',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1237,	23,	1,	0,	0,	0,	1,	0,	30,	3,	'mobile',	'zh-cn',	'12|23',	'首页列表图片',	'',	'indexad/list',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1239,	1212,	1,	0,	0,	0,	1,	0,	30,	4,	'mobile',	'zh-cn',	'12|22|1212',	'深圳分公司',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1261,	36,	1,	0,	0,	0,	1,	0,	30,	0,	'mobile',	'zh-cn',	'12|36',	'荣誉资质',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1542,	1531,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-cn',	'12|1531',	'首页广告管理',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1251,	20,	1,	0,	0,	0,	1,	0,	30,	8,	'mobile',	'zh-cn',	'12|20',	'LED球泡灯',	'',	'',	'',	'',	'',	'',	'',	'list',	'LED球泡灯',	0,	0),
(1249,	20,	1,	0,	0,	0,	1,	0,	30,	4,	'mobile',	'zh-cn',	'12|20',	'LED日光管',	'',	'',	'',	'',	'',	'',	'',	'list',	'LED日光管',	0,	0),
(1255,	20,	1,	0,	0,	0,	1,	0,	30,	0,	'mobile',	'zh-cn',	'12|20',	'LED天花灯',	'',	'',	'',	'',	'',	'',	'',	'list',	'LED天花灯',	0,	0),
(1257,	20,	1,	0,	0,	0,	1,	0,	30,	0,	'mobile',	'zh-cn',	'12|20',	'LED豆胆灯',	'',	'',	'',	'',	'',	'',	'',	'list',	'LED豆胆灯',	0,	0),
(25,	12,	0,	0,	0,	0,	0,	1,	0,	0,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u5728\\u7ebf\\u52a0\\u76df\"},\"zh-tw\":{\"title\":\"\\u5728\\u7dda\\u52a0\\u76df\"},\"en-us\":{\"title\":\"Joinin\"},\"ja-jp\":{\"title\":\"\\u30aa\\u30f3\\u30e9\\u30a4\\u30f3\\u306e\\u52a0\\u76df\"},\"ko-kr\":{\"title\":\"\\uc628\\ub77c\\uc778 \\uc5d0 \\uc785\\ub2e8\"}}',	'',	'Joinin',	'Joinin',	'',	'',	'',	'',	'auto',	'',	25,	1),
(1262,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'新疆',	'',	'Xinjiang',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1263,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'西藏',	'',	'Tibet',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1264,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'浙江',	'',	'Zhejiang',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1,	0,	1,	0,	0,	0,	0,	0,	0,	0,	'',	'',	'',	'终端',	'',	'Hardware',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(3,	1,	1,	0,	0,	0,	0,	0,	0,	0,	'',	'',	'',	'电脑版',	'',	'pc',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(4,	1,	1,	0,	0,	0,	0,	0,	0,	0,	'',	'',	'',	'手机版',	'',	'mobile',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(27,	12,	0,	0,	0,	0,	0,	1,	10,	9,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u4eba\\u624d\\u62db\\u8058\"}}',	'',	'Job',	'Job',	'',	'',	'',	'',	'auto',	'',	27,	1),
(28,	12,	1,	0,	1,	0,	1,	0,	8,	1,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u8054\\u7cfb\\u6211\\u4eec\"}}',	'',	'Contact',	'About',	'',	'',	'',	'',	'auto',	'',	0,	0),
(29,	12,	0,	0,	0,	0,	1,	0,	7,	1,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u4f01\\u4e1a\\u5fae\\u535a\"}}',	'',	'Weibo',	'About',	'',	'System/index/cid/tertiarycode',	'',	'',	'auto',	'',	0,	0),
(1529,	12,	1,	0,	1,	0,	1,	0,	12,	1,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u751f\\u4ea7\\u8bbe\\u5907\"}}',	'',	'Equipment',	'News',	'',	'',	'',	'',	'auto',	'',	0,	0),
(1530,	12,	1,	0,	1,	0,	1,	0,	11,	1,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u6280\\u672f\\u670d\\u52a1\"}}',	'',	'Services',	'About',	'',	'',	'',	'',	'auto',	'',	0,	0),
(1391,	4,	0,	0,	0,	0,	1,	0,	28,	1,	'mobile',	'zh-tw',	'4',	'繁体',	'',	'zh-tw',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1392,	4,	0,	0,	0,	0,	1,	0,	27,	1,	'mobile',	'en-us',	'4',	'英文',	'',	'en-us',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1393,	4,	0,	0,	0,	0,	1,	0,	26,	1,	'mobile',	'ja-jp',	'4',	'日文',	'',	'ja-jp',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1394,	4,	0,	0,	0,	0,	1,	0,	25,	1,	'mobile',	'ko-kr',	'4',	'韩文',	'',	'ko-kr',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1395,	28,	1,	0,	0,	0,	1,	0,	31,	1,	'pc',	'zh-cn',	'12|28',	'联系方式',	'',	'Contact/mode',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1397,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'en-us',	'12|36',	'Company',	'',	'About/indexInfo',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1398,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'en-us',	'12|36',	'Honors',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1399,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'en-us',	'12|19',	'Company News',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1400,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'en-us',	'12|19',	'Industry News',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1401,	20,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'en-us',	'12|20',	'Category1',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1402,	20,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'en-us',	'12|20',	'Category2',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1403,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-tw',	'12|36',	'公司簡介',	'',	'About/indexInfo',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1404,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-tw',	'12|36',	'經營理念',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1405,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-tw',	'12|36',	'榮譽資質',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1406,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-tw',	'12|19',	'最新活動',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1407,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-tw',	'12|19',	'公司新聞',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1408,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-tw',	'12|19',	'公司新聞',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1409,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'pc',	'zh-tw',	'12|20',	'LED筒燈',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1410,	0,	1,	0,	0,	0,	1,	0,	50,	1,	'pc',	'',	'',	'无标题',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1411,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'pc',	'zh-tw',	'12|20',	'LED球泡燈',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1412,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'pc',	'zh-tw',	'12|20',	'LED日光管',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1413,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'pc',	'zh-tw',	'12|20',	'LED天花燈',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1414,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'pc',	'zh-tw',	'12|20',	'LED豆膽燈',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1415,	28,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-tw',	'12|28',	'電子地圖',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1416,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|36',	'会社の概要',	'',	'About/indexInfo',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1417,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|36',	'ビジネス哲学',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1418,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|36',	'優等',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1419,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|19',	'活動',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1420,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|19',	'企業ニュース',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1421,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|19',	'ニュース',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1422,	20,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|20',	'製品カテゴリ',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1423,	20,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|20',	'製品カテゴリ',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1424,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-tw',	'12|23',	'首頁多圖片切換',	'',	'index/adList',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1425,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-tw',	'12|23',	'內頁圖片廣告',	'',	'Inside/ad',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1426,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'en-us',	'12|23',	'home banner ',	'',	'index/adList',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1427,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'en-us',	'12|23',	'page ads',	'',	'Inside/ad',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1428,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|23',	'ホーム広告',	'',	'index/adList',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1429,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|23',	'広告のページの中の',	'',	'Inside/ad',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1430,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ko-kr',	'12|23',	'홈 스위치',	'',	'index/adList',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1431,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ko-kr',	'12|23',	'광고 페이지 내에',	'',	'Inside/ad',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1432,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ko-kr',	'12|36',	'회사 소개',	'',	'About/indexInfo',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1433,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ko-kr',	'12|36',	'경영 철학',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1434,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ko-kr',	'12|36',	'영예',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1435,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ko-kr',	'12|19',	'회사 소개',	'',	'News/company',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1436,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ko-kr',	'12|19',	'경영 철학',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1437,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ko-kr',	'12|19',	'영예',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1438,	27,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'en-us',	'12|27',	'Job',	'',	'Job/index',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1439,	27,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ko-kr',	'12|27',	'신병 모집',	'',	'Job/index',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1440,	27,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|27',	'募集',	'',	'Job/index',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1441,	27,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-tw',	'12|27',	'人才招聘',	'',	'Job/index',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1442,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-tw',	'12|23',	'首頁多圖片切換',	'',	'adv/m_list',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1443,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-tw',	'12|23',	'首頁列表圖片',	'',	'indexad/list',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1444,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'en-us',	'12|23',	'home banner',	'',	'adv/m_list',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1445,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'en-us',	'12|23',	'Page ads',	'',	'indexad/list',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1446,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ja-jp',	'12|23',	'ホーム広告',	'',	'adv/m_list',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1447,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ja-jp',	'12|23',	'広告のページの中の',	'',	'indexad/list',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1448,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ko-kr',	'12|23',	'광고 페이지 내에',	'',	'indexad/list',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1449,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ko-kr',	'12|23',	'홈 스위치',	'',	'adv/m_list',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1450,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-tw',	'12|36',	'公司簡介',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1451,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-tw',	'12|36',	'經營理念',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1452,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-tw',	'12|36',	'榮譽資質',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1453,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'en-us',	'12|36',	'Company',	'',	'About/introduction',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1454,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'en-us',	'12|36',	'Honors',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1455,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ja-jp',	'12|36',	'会社の概要',	'',	'About/introduction',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1456,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ja-jp',	'12|36',	'ビジネス哲学',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1457,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ko-kr',	'12|36',	'회사 소개',	'',	'About/introduction',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1458,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ko-kr',	'12|36',	'경영 철학',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1459,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ko-kr',	'12|36',	'영예',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1460,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-tw',	'12|19',	'最新活動',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1461,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-tw',	'12|19',	'公司新聞',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1462,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-tw',	'12|19',	'公司新聞',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1463,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'en-us',	'12|19',	'Company News',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1464,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'en-us',	'12|19',	' Industry News',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1465,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ja-jp',	'12|19',	'活動',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1466,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ja-jp',	'12|19',	'企業ニュース',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1467,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ja-jp',	'12|19',	'ニュース',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1541,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-cn',	'12|19',	'行业新闻',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1540,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-cn',	'12|19',	'公司新闻',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1539,	1530,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-cn',	'12|1530',	'技术服务',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1538,	1529,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-cn',	'12|1529',	'生产设备',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1537,	1534,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-cn',	'12|20|1534',	'设备系列',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1536,	1533,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-cn',	'12|20|1533',	'压铸耗材',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1535,	1532,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-cn',	'12|20|1532',	'压铸机配件',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1534,	20,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-cn',	'12|20',	'设备部',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1481,	27,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'en-us',	'12|27',	'Job',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1482,	27,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ja-jp',	'12|27',	'募集',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1483,	27,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ko-kr',	'12|27',	'신병 모집',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1490,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'pc',	'ko-kr',	'12|20',	'LED 전구',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1491,	22,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ja-jp',	'12|22',	'ブランチ',	'',	'Market/index',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1492,	22,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ko-kr',	'12|22',	'지사',	'',	'Market/index',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1493,	22,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'en-us',	'12|22',	'Branch',	'',	'Market/index',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1495,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ko-kr',	'12|19',	'활동',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1498,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ko-kr',	'12|19',	'기업 뉴스',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1497,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ko-kr',	'12|19',	'뉴스',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0);

DROP TABLE IF EXISTS `y_comment`;
CREATE TABLE `y_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `create_time` int(11) DEFAULT NULL,
  `reply` text,
  `reply_time` int(11) DEFAULT NULL,
  `my_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `y_common`;
CREATE TABLE `y_common` (
  `id` int(1) NOT NULL DEFAULT '1',
  `weibo_type` varchar(255) DEFAULT NULL,
  `weibo_plug` text,
  `is_share` int(1) DEFAULT NULL,
  `share_plug` text,
  `flow_code` text,
  `mobile_theme` varchar(255) DEFAULT NULL,
  `web_theme` varchar(255) DEFAULT NULL,
  `my_id` int(11) DEFAULT NULL,
  `is_customer` int(1) DEFAULT '0',
  `customer_code` text,
  `is_qq` int(1) DEFAULT '0',
  `qq_nums` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_common` (`id`, `weibo_type`, `weibo_plug`, `is_share`, `share_plug`, `flow_code`, `mobile_theme`, `web_theme`, `my_id`, `is_customer`, `customer_code`, `is_qq`, `qq_nums`) VALUES
(1,	'sina',	'<iframe width=\"100%\" height=\"550\" class=\"share_self\"  frameborder=\"0\" scrolling=\"no\" src=\"http://widget.weibo.com/weiboshow/index.php?language=&width=0&height=550&fansRow=1&ptype=1&speed=300&skin=1&isTitle=1&noborder=0&isWeibo=1&isFans=1&uid=2050491212&verifier=f583b339&dpc=1\"></iframe>',	1,	'',	'<img  style=\"CURSOR: pointer\" onclick=\"javascript:window.open(\'http://b.qq.com/webc.htm?new=0&sid=790005994&o=移动&q=7\', \'_blank\', \'height=502, width=644,toolbar=no,scrollbars=no,menubar=no,status=no\');\"  border=\"0\" SRC=http://wpa.qq.com/pa?p=1:790005994:1 alt=\"点击这里给我发消息\">',	'YM04001',	'YP30002',	0,	0,	NULL,	0,	NULL);

DROP TABLE IF EXISTS `y_domain`;
CREATE TABLE `y_domain` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `target` varchar(255) DEFAULT '',
  `domain_name` varchar(255) DEFAULT '',
  `remark` varchar(255) DEFAULT '',
  `my_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_domain` (`id`, `target`, `domain_name`, `remark`, `my_id`) VALUES
(1,	'手机',	'ASD',	'ASDASD',	0);

DROP TABLE IF EXISTS `y_download`;
CREATE TABLE `y_download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) unsigned DEFAULT NULL,
  `my_id` int(11) DEFAULT NULL,
  `is_publish` int(1) DEFAULT '0',
  `is_comment` int(1) DEFAULT NULL,
  `is_top` int(1) DEFAULT NULL,
  `is_home` int(1) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `ordernum` int(11) NOT NULL DEFAULT '999',
  `update_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) DEFAULT NULL,
  `imgwidth` varchar(20) DEFAULT NULL,
  `imgheight` varchar(20) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `downfile` varchar(255) NOT NULL DEFAULT '',
  `hardware` varchar(255) NOT NULL DEFAULT 'pc',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `y_goods`;
CREATE TABLE `y_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) unsigned NOT NULL,
  `is_publish` int(1) DEFAULT '0',
  `is_comment` int(1) DEFAULT '0',
  `is_top` int(1) DEFAULT '0',
  `is_home` int(1) DEFAULT '0',
  `ordernum` int(11) NOT NULL DEFAULT '999',
  `update_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `hardware` varchar(255) NOT NULL DEFAULT 'pc',
  `lang` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  `tag` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_keywords` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `content` text,
  `click_count` int(11) NOT NULL DEFAULT '1',
  `my_id` int(11) DEFAULT NULL,
  `imgwidth` int(11) DEFAULT NULL,
  `imgheight` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_goods` (`id`, `category_id`, `is_publish`, `is_comment`, `is_top`, `is_home`, `ordernum`, `update_time`, `create_time`, `hardware`, `lang`, `title`, `tag`, `image`, `summary`, `seo_title`, `seo_keywords`, `seo_description`, `content`, `click_count`, `my_id`, `imgwidth`, `imgheight`) VALUES
(1,	1535,	1,	0,	0,	0,	999,	1467475200,	1467475200,	'pc',	'zh-cn',	'压铸机配件',	'',	'577879260032e.png',	'',	'',	'',	'',	'&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;一、氟塑料材质采用美国杜邦（TEFLON）、日本大金株式会社（FLON）等进口原料制造。采用先进的制管设备及加工手段，对管束及法兰进行热熔性焊接，组装成换热器。氟塑料热交换器适用表面处理电镀中的镀铬、酸性镀锡、镀锌、电解、酸洗、化学镀、阳极氧化&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;及化工、医药、食品等腐蚀性溶液的加热、冷却、蒸发、浓缩。电镀表面处理中任何溶液的加热、&lt;br/&gt;冷却、蒸发、浓缩、瘁取。&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;二、 氟塑料换热器的性能：采用PFA、FEP、PVDF管材制作换热器材质后，比聚四氟乙烯（PTFE）换热器材质更加优异，并具有更高的热稳定性、柔软性、 抗裂性及透明性。产品适用温度范围在-180~260℃；中间耐温性极佳，可弯曲成任意形状，但曲率半径应≥150mm.优异的电绝缘性、不粘性、抗老化 性、不论在任何强腐蚀性气体，液体和长期暴露在恶劣的大气中，抗老化性均能长达10年以上。&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;三、氟塑料换热器分为管束式槽内或反应釜内的换热器，管壳式外循环换热设备、防静电套管式换&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;热器及蒸发器。&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;四、氟塑料换热器，采用管束集束而成。管径小，根数多、换热器面积大，承&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;受压力高、热流分散均匀，体积小，重量轻，安装维护方便，占用空间小，使换热器在今后的使&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;用得到更为广泛的应用前景。&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;五、产品采用(PTFE、FEP、PFA、)材料制作而成。根据客户的要求严格设计产品&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;材质，达到满足工艺的技术条件，产品采用管束（ø4.5、ø6………ø12）穿入&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;两端法兰组装而成，形成换热器进出口，并用（PP、PVC、PTFE、PVDF框架）组装固定，可防止工&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;件碰撞使换热器损坏。&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;1. &amp;nbsp; &amp;nbsp; 管道应安装限压阀≤0.4mpa。为防止管道系统内的杂质堵塞及划伤管束，应在换热器前安装维护方便的过滤器，出口安装疏水器。&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;2. &amp;nbsp; &amp;nbsp; 需要采用多组产品安装时，可采用并联连接。应考虑分汽箱集中供汽，各支路为独立供汽系统。&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;排汽也可以串联，但严禁与金属换热器出口相连接，以免造成换热器出口堵塞及管束胀裂。&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;3. &amp;nbsp; &amp;nbsp; 为防止工艺过程中工件、极板砸伤管束，应对产品制作相应的隔离装置。本厂可为用户加工制作保护装置，或按用户要求提供保护架制作图样。&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;4. &amp;nbsp; &amp;nbsp; 冬季温度在0℃以下，厂休息时请排净产品内的冷凝水，防止冰冻，造成管束破裂。&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;5. &amp;nbsp; &amp;nbsp; 管壳式换热器安装时请参照安装使用说明及技术协议，产品安装好试机时，请严格按照以下条件操作：&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;Ο1第一步打开氟塑料换热器管束内的腐蚀性液体循环泵，使用时流通压力≤0.45 mpa&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;Ο2第二步打开管壳式外循环加热（或冷却循环）水泵，压力≤0.4mpa&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;Ο3使用时，换热器管束式内压力始终≥管壳内加热及冷却循环水压力。防止管壳内大于管束内压力造成管束挤压。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',	4,	NULL,	NULL,	NULL),
(2,	1536,	1,	0,	0,	0,	999,	1467475200,	1467475200,	'pc',	'zh-cn',	'压铸耗材',	'',	'5778796200d8e.png',	'',	'',	'',	'',	'&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;力高、热流分散均匀，体积小，重量轻，安装维护方便，占用空间小，使换热器在今后的使&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;用得到更为广泛的应用前景。&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;五、产品采用(PTFE、FEP、PFA、)材料制作而成。根据客户的要求严格设计产品&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;材质，达到满足工艺的技术条件，产品采用管束（ø4.5、ø6………ø12）穿入&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;两端法兰组装而成，形成换热器进出口，并用（PP、PVC、PTFE、PVDF框架）组装固定，可防止工&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;件碰撞使换热器损坏。&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;1. &amp;nbsp; &amp;nbsp; 管道应安装限压阀≤0.4mpa。为防止管道系统内的杂质堵&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',	4,	NULL,	NULL,	NULL),
(3,	1537,	1,	0,	0,	0,	999,	1467475200,	1467475200,	'pc',	'zh-cn',	'设备系列',	'',	'5778797a072f0.png',	'',	'',	'',	'',	'&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;1. &amp;nbsp; &amp;nbsp; 管道应安装限压阀≤0.4mpa。为防止管道系统内的杂质堵塞及划伤管束，应在换热器前安装维护方便的过滤器，出口安装疏水器。&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;2. &amp;nbsp; &amp;nbsp; 需要采用多组产品安装时，可采用并联连接。应考虑分汽箱集中供汽，各支路为独立供汽系统。&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;排汽也可以串联，但严禁与金属换热器出口相连接，以免造成换热器出口堵塞及管束胀裂。&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;3. &amp;nbsp; &amp;nbsp; 为防止工艺过程中工件、极板砸伤管束，应对产品制作相应的隔离装置。本厂可为用户加工制作保护装置，或按用户要求提供保护架制作图样。&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;4. &amp;nbsp; &amp;nbsp; 冬季温度在0℃以下，厂休息时请排净产品内的冷凝水，防止冰冻，造成管束破裂。&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;5. &amp;nbsp; &amp;nbsp; 管壳式换热器安装时请参照安装使用说明及技术协议，产品安装好试机时，请严格按照以下条件操作：&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;Ο1第一步打开氟塑料换热器管束内的腐蚀性液体循环泵，使用时流通压力≤0.45 mpa&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;Ο2第二步打开管壳式外循环加热（或冷却循环）水泵，压力≤0.4mpa&lt;/p&gt;&lt;p style=&quot;line-height: 35px; color: rgb(102, 102, 102); font-size: 13px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; word-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;Ο3使用时，换热器管束式内压力始终≥管壳内加热及冷却循环水压力。防止管壳内大于管束内压力造成管束挤压。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',	8,	NULL,	NULL,	NULL),
(4,	1537,	1,	0,	0,	0,	999,	1467475200,	1467475200,	'pc',	'zh-cn',	'as',	'',	NULL,	'',	'',	'',	'',	'&lt;p&gt;213&lt;/p&gt;',	4,	NULL,	NULL,	NULL);

DROP TABLE IF EXISTS `y_goods_inquire`;
CREATE TABLE `y_goods_inquire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `ordernum` int(11) NOT NULL,
  `hardware` varchar(255) NOT NULL,
  `lang` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `linkman` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `content` text,
  `create_time` int(11) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT '未处理',
  `my_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `y_goods_photo`;
CREATE TABLE `y_goods_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) unsigned DEFAULT NULL,
  `is_publish` int(1) DEFAULT '0',
  `ordernum` int(11) DEFAULT '30',
  `lang` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `my_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_goods_photo` (`id`, `goods_id`, `is_publish`, `ordernum`, `lang`, `title`, `image`, `description`, `my_id`) VALUES
(1,	1,	0,	30,	NULL,	'',	'577879260032e.png',	NULL,	0),
(2,	2,	0,	30,	NULL,	'',	'5778796200d8e.png',	NULL,	0),
(3,	3,	0,	30,	NULL,	'',	'5778797a072f0.png',	NULL,	0);

DROP TABLE IF EXISTS `y_guestbook`;
CREATE TABLE `y_guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) unsigned NOT NULL DEFAULT '220',
  `is_top` int(1) DEFAULT '0',
  `is_publish` int(1) DEFAULT '0',
  `ordernum` int(11) NOT NULL DEFAULT '999',
  `create_time` int(11) DEFAULT NULL,
  `reply_time` int(11) DEFAULT NULL,
  `hardware` varchar(255) DEFAULT 'pc',
  `lang` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  `content` text,
  `reply` text,
  `email` varchar(255) DEFAULT NULL,
  `linkman` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `read` int(4) DEFAULT '0',
  `my_id` int(11) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL COMMENT '邮政编码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_guestbook` (`id`, `category_id`, `is_top`, `is_publish`, `ordernum`, `create_time`, `reply_time`, `hardware`, `lang`, `title`, `content`, `reply`, `email`, `linkman`, `mobile`, `tel`, `fax`, `read`, `my_id`, `sex`, `company_name`, `address`, `code`) VALUES
(1,	220,	0,	1,	999,	1376117703,	1376117721,	'pc',	'zh-cn',	'热烈祝贺',	'热烈祝贺贵网站正式上线',	'谢谢',	'88888@qq.com',	'小袁',	'13665236698',	'13665232215',	'020-88888888',	1,	0,	'先生',	'xxx工作室',	'广东省广州市天河北..',	'52400'),
(2,	220,	0,	1,	999,	1467636464,	NULL,	'pc',	'zh-cn',	'热烈祝贺',	'热烈祝贺内容',	NULL,	'88@qq.com',	'DD',	NULL,	'13660253365',	NULL,	1,	NULL,	NULL,	NULL,	'湖南省长沙市开福区芙蓉中路564号 泊富国际18楼（湖南省妇幼保健院斜对面）',	NULL);

DROP TABLE IF EXISTS `y_job`;
CREATE TABLE `y_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_publish` int(1) DEFAULT NULL,
  `is_top` int(1) DEFAULT NULL,
  `is_home` int(1) DEFAULT NULL,
  `category_id` int(11) unsigned DEFAULT NULL,
  `position_id` int(11) DEFAULT '0',
  `department` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `ordernum` int(11) DEFAULT '999',
  `number` int(11) DEFAULT NULL,
  `begin_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `hardware` varchar(255) NOT NULL DEFAULT 'pc',
  `lang` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT '',
  `ask` text,
  `content` text,
  `my_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_job` (`id`, `is_publish`, `is_top`, `is_home`, `category_id`, `position_id`, `department`, `education`, `salary`, `ordernum`, `number`, `begin_time`, `end_time`, `create_time`, `hardware`, `lang`, `title`, `site`, `ask`, `content`, `my_id`) VALUES
(1,	1,	NULL,	NULL,	205,	0,	'市场部',	'大专',	'面议',	999,	1,	1351180800,	1351180800,	1351180800,	'pc',	'zh-cn',	'市场公关专员',	'广州',	'',	'&lt;p&gt;&lt;strong&gt;&lt;span style=&quot;font-size:18px;color:#FF0000;&quot;&gt;更新此内容登录后台选择：互易移动&amp;nbsp;&amp;gt;&amp;nbsp;人才招聘&amp;nbsp;&amp;gt;&amp;nbsp;人才招聘&lt;/span&gt;&lt;/strong&gt;&lt;br /&gt;&lt;/p&gt;&lt;p&gt;职位信息：&lt;/p&gt;&lt;p&gt;1、协助进行市场公关活动执行；&lt;/p&gt;&lt;p&gt;2、针对公司的活动及日常宣传需要，撰写新闻稿，并对外发布；&lt;/p&gt;&lt;p&gt;3、建立和维护媒体关系，负责媒体公关活动的策划和实施；&lt;/p&gt;&lt;p&gt;4、能够对合作项目进行有效的内外部跟踪，保证项目进度达成。&amp;nbsp;&lt;/p&gt;&lt;p&gt;任职资格：：&lt;/p&gt;&lt;p&gt;1、大专以上学历，形象气质佳；&lt;/p&gt;&lt;p&gt;2、有一年以上市场策划及市场公关工作经验；&lt;/p&gt;&lt;p&gt;3、具备一定的沟通和协调能力，工作积极主动；&lt;/p&gt;&lt;p&gt;4、具备良好的文案功底，文字表达能力强；&lt;/p&gt;&lt;p&gt;5、熟悉广东省媒体，有媒体相关工作经验者优先。&lt;/p&gt;',	0),
(2,	1,	NULL,	NULL,	1217,	0,	'市场部',	'大专',	'面议',	999,	1,	1351180800,	1351180800,	1351180800,	'mobile',	'zh-cn',	'市场公关专员',	'广州',	'',	'&lt;p&gt;职位信息：&lt;/p&gt;&lt;p&gt;1、协助进行市场公关活动执行；&lt;/p&gt;&lt;p&gt;2、针对公司的活动及日常宣传需要，撰写新闻稿，并对外发布；&lt;/p&gt;&lt;p&gt;3、建立和维护媒体关系，负责媒体公关活动的策划和实施；&lt;/p&gt;&lt;p&gt;4、能够对合作项目进行有效的内外部跟踪，保证项目进度达成。&amp;nbsp;&lt;/p&gt;&lt;p&gt;任职资格：：&lt;/p&gt;&lt;p&gt;1、大专以上学历，形象气质佳；&lt;/p&gt;&lt;p&gt;2、有一年以上市场策划及市场公关工作经验；&lt;/p&gt;&lt;p&gt;3、具备一定的沟通和协调能力，工作积极主动；&lt;/p&gt;&lt;p&gt;4、具备良好的文案功底，文字表达能力强；&lt;/p&gt;&lt;p&gt;5、熟悉广东省媒体，有媒体相关工作经验者优先。&lt;/p&gt;',	0),
(3,	1,	NULL,	NULL,	205,	0,	'法务部',	'本科',	'面议',	999,	1,	1351180800,	1351180800,	1351180800,	'pc',	'zh-cn',	'专利推广经理',	'广州',	'',	'&lt;p&gt;职位信息：&lt;/p&gt;&lt;p&gt;1、参与知识产权专利业务的发展策略规划，提供知识产权专利专业咨询服务和解决方案；&lt;/p&gt;&lt;p&gt;2、开展对销售团队知识产权专利方面的知识培训，提高其理论知识和专业度；&lt;/p&gt;&lt;p&gt;3、与知识产权专利局保持紧密沟通，及时掌握国家有关知识产权专利政策和动向；&lt;/p&gt;&lt;p&gt;4、协助处理分公司在当地的专利诉讼案件。&amp;nbsp;&lt;/p&gt;&lt;p&gt;任职资格：：&lt;/p&gt;&lt;p&gt;1、本科以上学历，3年以上工作经验，有专利处理实战经验为佳；&lt;/p&gt;&lt;p&gt;2、熟悉专利相关法律、法规和业务流程；&lt;/p&gt;&lt;p&gt;3、具知识产权市场敏锐的嗅觉，出色的分析与研究能力；&lt;/p&gt;&lt;p&gt;4、良好的个人品德和职业操守，优秀的执行力和沟通协调技巧；&lt;/p&gt;&lt;p&gt;5、工作富激情，能承受较大的工作压力，适应快节奏的工作环境；&lt;/p&gt;&lt;p&gt;6、具大型知识产权代理公司相关工作经验者优先。&lt;/p&gt;',	0),
(4,	1,	NULL,	NULL,	1217,	0,	'法务部',	'本科',	'面议',	999,	1,	1351180800,	1351180800,	1351180800,	'mobile',	'zh-cn',	'专利推广经理',	'广州',	'',	'&lt;p&gt;职位信息：&lt;/p&gt;&lt;p&gt;1、参与知识产权专利业务的发展策略规划，提供知识产权专利专业咨询服务和解决方案；&lt;/p&gt;&lt;p&gt;2、开展对销售团队知识产权专利方面的知识培训，提高其理论知识和专业度；&lt;/p&gt;&lt;p&gt;3、与知识产权专利局保持紧密沟通，及时掌握国家有关知识产权专利政策和动向；&lt;/p&gt;&lt;p&gt;4、协助处理分公司在当地的专利诉讼案件。&amp;nbsp;&lt;/p&gt;&lt;p&gt;任职资格：：&lt;/p&gt;&lt;p&gt;1、本科以上学历，3年以上工作经验，有专利处理实战经验为佳；&lt;/p&gt;&lt;p&gt;2、熟悉专利相关法律、法规和业务流程；&lt;/p&gt;&lt;p&gt;3、具知识产权市场敏锐的嗅觉，出色的分析与研究能力；&lt;/p&gt;&lt;p&gt;4、良好的个人品德和职业操守，优秀的执行力和沟通协调技巧；&lt;/p&gt;&lt;p&gt;5、工作富激情，能承受较大的工作压力，适应快节奏的工作环境；&lt;/p&gt;&lt;p&gt;6、具大型知识产权代理公司相关工作经验者优先。&lt;/p&gt;',	0);

DROP TABLE IF EXISTS `y_job_resume`;
CREATE TABLE `y_job_resume` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) unsigned DEFAULT NULL,
  `position_id` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `linkname` varchar(255) NOT NULL DEFAULT '',
  `sex` char(1) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `intro` text,
  `my_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_job_resume` (`id`, `job_id`, `position_id`, `create_time`, `linkname`, `sex`, `age`, `email`, `phone`, `address`, `file`, `intro`, `my_id`) VALUES
(1,	1,	0,	1350980513,	'yyyy',	'男',	NULL,	'13123@qq.com',	'132432413213',	'13213212',	'',	'3213213213',	0),
(4,	4,	0,	1351511875,	'张三',	'男',	NULL,	'888888@qq.com',	'020-8888888',	'地址',	NULL,	'联系内容',	0),
(5,	NULL,	0,	1351622619,	'',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0),
(8,	1,	0,	1352947854,	'测试',	'男',	18,	'45452452@qq.com',	'158202369',	'测试地址',	'50a4588e3d154.docx',	'简历',	0),
(7,	1,	0,	1352366676,	'tttt',	'男',	12,	'1213425@qq.com',	'132435434',	'地址',	'509b7a54d43b9.doc',	'dszfdsfdsfsfd',	0);

DROP TABLE IF EXISTS `y_joinin`;
CREATE TABLE `y_joinin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) DEFAULT NULL,
  `linkman` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `registered_capital` varchar(255) DEFAULT NULL,
  `employee_number` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `read` tinyint(4) DEFAULT '0',
  `content` text,
  `my_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `y_link`;
CREATE TABLE `y_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT '1169',
  `my_id` int(11) DEFAULT NULL,
  `is_publish` int(1) DEFAULT '0',
  `is_home` int(1) DEFAULT '0',
  `is_top` int(1) DEFAULT '0',
  `ordernum` int(11) DEFAULT '30',
  `update_time` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  `tag` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `hardware` varchar(255) DEFAULT 'pc',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_link` (`id`, `category_id`, `my_id`, `is_publish`, `is_home`, `is_top`, `ordernum`, `update_time`, `create_time`, `lang`, `title`, `tag`, `image`, `url`, `hardware`) VALUES
(1,	1169,	0,	1,	0,	0,	30,	1379008380,	1379008380,	'zh-cn',	'小欣',	NULL,	NULL,	'49906963',	'pc'),
(2,	1169,	0,	1,	0,	0,	30,	1379008362,	1379008362,	'zh-cn',	'小燕',	NULL,	NULL,	'867827398',	'pc'),
(3,	1169,	0,	1,	0,	0,	30,	1379008326,	1379008326,	'zh-cn',	'小邓',	NULL,	NULL,	'49906963',	'pc');

DROP TABLE IF EXISTS `y_market`;
CREATE TABLE `y_market` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `is_publish` int(1) NOT NULL DEFAULT '0',
  `is_top` int(11) NOT NULL DEFAULT '0',
  `is_home` int(11) NOT NULL DEFAULT '0',
  `ordernum` int(11) NOT NULL DEFAULT '999',
  `create_time` int(11) DEFAULT NULL,
  `hardware` varchar(255) DEFAULT 'pc',
  `lang` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `linkman` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `mapcode` varchar(255) DEFAULT NULL,
  `content` text,
  `content_type` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `imgwidth` varchar(20) DEFAULT NULL,
  `imgheight` varchar(20) DEFAULT NULL,
  `traffic1` varchar(255) DEFAULT NULL,
  `traffic2` varchar(255) DEFAULT NULL,
  `office_location` varchar(255) DEFAULT NULL,
  `point_x` varchar(255) DEFAULT NULL,
  `point_y` varchar(255) DEFAULT NULL,
  `address_title` varchar(255) DEFAULT NULL,
  `address_content` varchar(255) DEFAULT NULL,
  `email_title` varchar(255) DEFAULT NULL,
  `email_content` varchar(255) DEFAULT NULL,
  `tel_title` varchar(255) DEFAULT NULL,
  `tel_content` varchar(255) DEFAULT NULL,
  `weibo_title` varchar(255) DEFAULT NULL,
  `weibo_content` varchar(255) DEFAULT NULL,
  `fax_title` varchar(255) DEFAULT NULL,
  `fax_content` varchar(255) DEFAULT NULL,
  `sms_title` varchar(255) DEFAULT NULL,
  `sms_content` varchar(255) DEFAULT NULL,
  `contact_title` varchar(255) DEFAULT NULL,
  `code_content` varchar(255) DEFAULT NULL,
  `other_title` varchar(255) DEFAULT NULL,
  `code_title` varchar(255) DEFAULT NULL,
  `web_content` varchar(255) DEFAULT NULL,
  `contact_content` varchar(255) DEFAULT NULL,
  `web_title` varchar(255) DEFAULT NULL,
  `other_content` varchar(255) DEFAULT NULL,
  `my_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_market` (`id`, `category_id`, `is_publish`, `is_top`, `is_home`, `ordernum`, `create_time`, `hardware`, `lang`, `title`, `tag`, `email`, `linkman`, `tel`, `fax`, `postcode`, `address`, `mapcode`, `content`, `content_type`, `image`, `imgwidth`, `imgheight`, `traffic1`, `traffic2`, `office_location`, `point_x`, `point_y`, `address_title`, `address_content`, `email_title`, `email_content`, `tel_title`, `tel_content`, `weibo_title`, `weibo_content`, `fax_title`, `fax_content`, `sms_title`, `sms_content`, `contact_title`, `code_content`, `other_title`, `code_title`, `web_content`, `contact_content`, `web_title`, `other_content`, `my_id`) VALUES
(2,	615,	1,	0,	0,	999,	1351233718,	'pc',	'zh-cn',	'广州办事处',	NULL,	'chen@domain.com',	'陈先生',	'020-88888888',	'020-88888887',	'510610',	'广东省广州市天河区天河北路366号',	'',	'负责分公司业务销售。',	NULL,	'',	'300',	'300',	'',	'',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0),
(3,	615,	1,	0,	0,	999,	1351233706,	'pc',	'zh-cn',	'深圳办事处',	NULL,	'lili@domain.com',	'李先生',	'18688888888',	'075525981888',	'510610',	'罗湖区深南东路4003号世界金融中心1楼',	'',	'负责分公司业务销售。',	NULL,	'',	'300',	'300',	'',	'',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0),
(4,	615,	1,	0,	0,	999,	1351233842,	'pc',	'zh-cn',	'东莞办事处',	NULL,	'chen126@domain.com',	'陈先生',	'07692039888',	'07692039887',	'',	'广东省东莞市东城中路达鑫创富中心',	'',	'',	NULL,	'',	'300',	'300',	'',	'',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0),
(5,	625,	1,	0,	0,	999,	1351234364,	'pc',	'zh-cn',	'北京办事处',	NULL,	'lilis@domain.com',	'李先生',	'01084047312',	'01084047388',	'',	'北京市东城区隆福寺街95号',	'',	'',	NULL,	'',	'300',	'300',	'',	'',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0),
(26,	1215,	1,	0,	0,	999,	1362044617,	'mobile',	'zh-tw',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'',	'',	'',	'cxvcxv',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	NULL),
(25,	1215,	1,	0,	0,	999,	1362044606,	'mobile',	'zh-cn',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'',	'',	'',	'gffgdg',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	NULL),
(24,	1214,	1,	0,	0,	999,	1362044068,	'mobile',	'zh-tw',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'',	'',	'',	'繁.....',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	NULL),
(23,	1213,	1,	0,	0,	999,	1362043678,	'mobile',	'zh-tw',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'ffff广东省广州市天河客运站',	'113.349508',	'23.17719',	'hgghgjhg地址标题',	'地址内容',	'邮箱标题',	'邮箱内容',	'电话标题',	'电话内容',	'微博标题',	'微博内容',	'传真标题',	'传真内容',	'短信标题',	'短信内容',	'联系人标题',	'编码内容',	'其他标题',	'邮政编码',	'网站详情',	'联系人详情',	'网站主页',	'ggg其他信息',	NULL),
(22,	1214,	1,	0,	0,	999,	1367328158,	'mobile',	'zh-cn',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'',	'',	'',	'东莞',	'东莞公司地址',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	NULL),
(21,	1213,	1,	0,	0,	999,	1362042894,	'mobile',	'zh-cn',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'广东省广州市天河客运站',	'113.349508',	'23.17719',	'地址标题',	'地址内容',	'邮箱标题',	'邮箱内容',	'电话标题',	'电话内容',	'微博标题',	'微博内容',	'传真标题',	'传真内容',	'短信标题',	'短信内容',	'联系人标题',	'编码内容',	'其他标题',	'邮政编码',	'网站详情',	'联系人详情',	'网站主页',	'其他信息',	NULL);

DROP TABLE IF EXISTS `y_member`;
CREATE TABLE `y_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `is_publish` int(1) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `last_login_time` int(11) DEFAULT NULL,
  `ordernum` int(11) DEFAULT NULL,
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `realname` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `face` varchar(255) DEFAULT NULL,
  `last_login_ip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `y_mobile_contact`;
CREATE TABLE `y_mobile_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `is_home` int(1) DEFAULT NULL,
  `is_contact` int(1) DEFAULT NULL,
  `is_publish` int(1) DEFAULT NULL,
  `hardware` varchar(255) NOT NULL DEFAULT 'pc',
  `lang` varchar(255) DEFAULT NULL,
  `address_title` varchar(255) DEFAULT NULL,
  `address_content` varchar(255) DEFAULT NULL,
  `office_location` varchar(255) DEFAULT NULL,
  `point_x` varchar(255) DEFAULT NULL,
  `point_y` varchar(255) DEFAULT NULL,
  `email_title` varchar(255) DEFAULT NULL,
  `email_content` varchar(255) DEFAULT NULL,
  `tel_title` varchar(255) DEFAULT NULL,
  `tel_content` varchar(255) DEFAULT NULL,
  `weibo_title` varchar(255) DEFAULT NULL,
  `weibo_content` varchar(255) DEFAULT NULL,
  `fax_title` varchar(255) DEFAULT NULL,
  `fax_content` varchar(255) DEFAULT NULL,
  `sms_title` varchar(255) DEFAULT NULL,
  `sms_content` varchar(255) DEFAULT NULL,
  `contact_title` varchar(255) DEFAULT NULL,
  `contact_content` varchar(255) DEFAULT NULL,
  `web_content` varchar(255) DEFAULT NULL,
  `web_title` varchar(255) DEFAULT NULL,
  `other_content` varchar(255) DEFAULT NULL,
  `other_title` varchar(255) DEFAULT NULL,
  `code_content` varchar(255) DEFAULT NULL,
  `code_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_mobile_contact` (`id`, `category_id`, `is_home`, `is_contact`, `is_publish`, `hardware`, `lang`, `address_title`, `address_content`, `office_location`, `point_x`, `point_y`, `email_title`, `email_content`, `tel_title`, `tel_content`, `weibo_title`, `weibo_content`, `fax_title`, `fax_content`, `sms_title`, `sms_content`, `contact_title`, `contact_content`, `web_content`, `web_title`, `other_content`, `other_title`, `code_content`, `code_title`) VALUES
(19,	1,	NULL,	NULL,	1,	'mobile',	'zh-cn',	'地址标题gggg',	'地址详细内容',	'广东省广州市天河客运站',	'113.349508',	'23.17719',	'邮箱标题',	'邮箱内容',	'电话标题',	'电话内容',	'微博标题',	'微博内容',	'传真标题',	'传真内容',	'短信标题',	'短信内容',	'联系人标题',	'联系人详情',	'网站详情',	'网站标题',	'其他内容',	'其他标题',	'邮政内容',	'邮政标题'),
(20,	1,	NULL,	NULL,	1,	'mobile',	'zh-tw',	't地址标题gfgfgfgf',	'tt地址详细内容',	'ttt广东省广州市天河客运站',	'113.349508',	'23.17719',	'邮箱标题',	'邮箱内容',	'电话标题',	'电话内容',	'微博标题',	'微博内容',	'传真标题',	'传真内容',	'短信标题',	'短信内容',	'联系人标题',	'联系人详情',	'网站详情',	'网站标题',	'其他内容',	'其他标题',	'邮政内容',	'邮政标题');

DROP TABLE IF EXISTS `y_news`;
CREATE TABLE `y_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) unsigned NOT NULL,
  `is_publish` int(1) DEFAULT '0',
  `is_comment` int(1) DEFAULT '0',
  `is_top` int(1) DEFAULT '0',
  `is_home` int(1) DEFAULT '0',
  `click_count` int(11) DEFAULT '1',
  `ordernum` int(11) DEFAULT '999',
  `update_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `hardware` varchar(255) NOT NULL DEFAULT 'pc',
  `lang` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_keywords` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `content` text,
  `my_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_news` (`id`, `category_id`, `is_publish`, `is_comment`, `is_top`, `is_home`, `click_count`, `ordernum`, `update_time`, `create_time`, `hardware`, `lang`, `title`, `tag`, `image`, `author`, `source`, `summary`, `seo_title`, `seo_keywords`, `seo_description`, `content`, `my_id`) VALUES
(1,	1170,	1,	0,	0,	0,	10,	999,	1467510566,	1467510566,	'pc',	'zh-cn',	'关于我们',	NULL,	NULL,	NULL,	NULL,	'',	'',	'',	'',	'&lt;p style=&quot;text-align:center;line-height: 33px; color: rgb(51, 51, 51); font-size: 26px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; font-weight: bold; background-color: rgb(255, 255, 255);&quot;&gt;&lt;strong&gt;昆山金联鑫精密五金制品厂&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;text-align:center;line-height: 33px; color: rgb(51, 51, 51); font-size: 20px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; font-weight: bold; background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;text-align:center;line-height: 33px; color: rgb(51, 51, 51); font-size: 20px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; font-weight: bold; background-color: rgb(255, 255, 255);&quot;&gt;&lt;img src=&quot;/Public/ueditor/themes/default/images/spacer.gif&quot; data-bd-imgshare-binded=&quot;1&quot; style=&quot;background:url(/Public/ueditor/lang/zh-cn/images/localimage.png) no-repeat center center;border:1px solid #ddd&quot; word_img=&quot;file:///C:/Users/Administrator/Desktop/GH/%E6%98%86%E5%B1%B1%E9%87%91%E8%81%94%E9%91%AB%E7%B2%BE%E5%AF%86%E4%BA%94%E9%87%91%E5%88%B6%E5%93%81%E5%8E%82/html/images/img4.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;昆山金联鑫精密五金制品厂创立于2007年3月，是精密五金和电热配件及周边设备的专业制造商。&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;总部于广东东莞,厂房建筑面积2000㎡。本公司已于2007年12月通过了ISO9001:2000质量管理体系。经过多年的艰苦创业，依靠科学管理，聚集一批从事精密五金及电热科研开发的专业技术人员和高素质的市场销售人员，保证我公司产品可靠及稳定的质量，可以满足客户不断发展的需求，为客户提供优质及完善的产品售后服务。本公司位于江苏省昆山市石牌镇新澄路78号，公司地理位置便利。&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;压铸机配件：（铝、镁合金）压铸机料管（料杯）、柱塞头（冲头）、连接杆（压射杆）、连接头、 压铸机料壶（鹅颈）、射咀头、射咀身（射料管）、合金锤头、（料锤）、钢令（活塞环）等。&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;五金电热配件：特氟龙喷涂、铁氟龙热交换器、不锈钢换热器、各种加热饼、加热套、热电偶、不锈钢清洗篮、硅片清洗篮等。&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;设备类：自动流水线，隧道烘炉，喷涂设备。&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;本公司始终坚持以品質、创新、求精、服务为宗旨，创优质品牌，致力于打造中国光伏、半导体、PCB设备配件第一品牌，为客户提供一站式采购服务。&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;金联鑫人在此感谢广大用户对我司的大力支持与信赖。&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;主要客户：富士康集团公司、伟创力、赫比、比亚迪、华晨力华、毅华科技、华孚中镁等。&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',	NULL),
(2,	1538,	1,	0,	0,	0,	9,	999,	1467475200,	1467475200,	'pc',	'zh-cn',	'生产设备-CN加工中心',	NULL,	'57788c8f52d4e.png',	'',	'',	'',	'',	'',	'',	'&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 35px;  background-color: rgb(255, 255, 255);&quot;&gt;中心3臺，龍門銑，車床等&lt;/span&gt;&lt;/p&gt;',	NULL),
(3,	1539,	1,	0,	0,	0,	8,	999,	1467518716,	1467518716,	'pc',	'zh-cn',	'技术服务',	NULL,	NULL,	NULL,	NULL,	'',	'',	'',	'',	'&lt;p style=&quot;text-align:center;line-height: 33px; color: rgb(51, 51, 51); font-size: 26px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; font-weight: bold; background-color: rgb(255, 255, 255);&quot;&gt;&lt;strong&gt;耐磨冲头性能特点&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;text-align:center;line-height: 33px; color: rgb(51, 51, 51); font-size: 20px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; font-weight: bold; background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;text-align:center;line-height: 33px; color: rgb(51, 51, 51); font-size: 20px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; font-weight: bold; background-color: rgb(255, 255, 255);&quot;&gt;&lt;img src=&quot;/Public/ueditor/themes/default/images/spacer.gif&quot; data-bd-imgshare-binded=&quot;1&quot; style=&quot;background:url(/Public/ueditor/lang/zh-cn/images/localimage.png) no-repeat center center;border:1px solid #ddd&quot; word_img=&quot;file:///C:/Users/Administrator/Desktop/GH/%E6%98%86%E5%B1%B1%E9%87%91%E8%81%94%E9%91%AB%E7%B2%BE%E5%AF%86%E4%BA%94%E9%87%91%E5%88%B6%E5%93%81%E5%8E%82/html/images/img5.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align:center;line-height: 33px; color: rgb(51, 51, 51); font-size: 20px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; font-weight: bold; background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;耐磨冲头，是采用在特殊钢材为基体的表面上烧结一层耐磨材料而成。表面强化HRC38~45，对熔杯起到很好的保护作用(硬度较低不至于损害熔杯)。直径80以上的正常使用下寿命在2万多模次。&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;耐磨冲头的三大特点及优势：　　&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;1、耐磨冲头使用寿命是普通球铁冲头的20倍以上，性价比高普通球铁冲头平均使用寿命是一班一个(8小时)，而耐磨冲头平均使用寿命是一周以上(170小时)，耐磨冲头的使用寿命是普通球铁冲头的20倍以上。&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;2、耐磨冲头更换频率低，生产效率显著提升普通球铁冲头更换时间每班需15分钟，而耐磨冲头更换时间每周才需15分钟。耐磨冲头每周节省更换时间5个小时，增加5个小时的生产量，节省5个小时的能源，生产效率得以显著提升。&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;3、大大降低废品率&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;球铁冲头磨损后喷铝需更换冲头造成每班一个废品，耐磨冲头磨损后喷铝需更换冲头造成每周一个废品，每周可减少铸件废品20余件；球铁冲头更换冲头预热每班2件废品(慢压射不给增压)，耐磨冲头更换冲头预热每周2件废品(慢压射不给增压)，每周可减少预热废品40余件。例：以每件成品10元计算，每周可节省600元，一年可节省31200元。&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;使用说明：　　&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;1.确保冲头、压室、浇口套三者之间有良好的同心度、良好的配合公差，避免冲头表面拉伤、划伤或单边磨损。　　&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;2.确保冲头有良好的冷却、良好的润滑，避免因热疲劳而开裂或表面拉伤。　　&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;3.熔杯与模具浇口套相配合内孔不得错位，否则会出现冲头单边磨损、镍钴冲头端面因受剪力而剥落、拉伤等现象。　　&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;4.冲头安装好后，需用熔融铝合金预热5~10次，使冲头、熔杯、浇口套同时预热到200ºC左右，冲头受力膨胀，确保冲头与熔杯的配合间隙理想化。联接轴配合示意图：　&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;img src=&quot;http://localhost.pbc.com/html/html/images/2015031371732929.jpg&quot; width=&quot;327&quot; height=&quot;154&quot; data-bd-imgshare-binded=&quot;1&quot; style=&quot;border: 0px;&quot;/&gt;　&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;友情提示：用户最好能采用系列表内的规格，这样供货及时。如联接螺纹与我公司提供的规格存在出入，用户可以自行加工联接轴(用40cr材料调质)与压射头、压射杆相配 。配合方式如以上示意图。用户可以通过对N值的调整来调节冲头的长短要求。　　&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;标准压射头规格尺寸：&lt;br/&gt;直径(mm)Ø40Ø50Ø60Ø70Ø80Ø90Ø100Ø110Ø120Ø130Ø140长度(mm)90909090100120140140180180180螺纹M27X2M27X2M27X2M36X3M36X3M48X3M60X4M60X4M60X4M60X4M60X4&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;备注：耐磨冲头一般可根据用户提供的图纸加工制作。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',	NULL),
(4,	1395,	1,	0,	0,	0,	13,	999,	1467519146,	1467519146,	'pc',	'zh-cn',	'联系方式',	NULL,	NULL,	NULL,	NULL,	'',	'',	'',	'',	'&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;公司：昆山金联鑫精密五金制品厂&lt;/p&gt;&lt;p&gt;电话：0512-36904178&lt;/p&gt;&lt;p&gt;传真：0512-36904187&lt;/p&gt;&lt;p&gt;手机：廖先生 13915763883&lt;/p&gt;&lt;p&gt;24小时售后热线：13915763883&lt;/p&gt;&lt;p&gt;邮箱：liaoshuiqing@pcb-jlx.com&lt;/p&gt;&lt;p&gt;MSN : liaoshuiqing@hotmail.com&lt;/p&gt;&lt;p&gt;网址 : www.pcb-jlx.com&lt;/p&gt;&lt;p&gt;地址：江苏省昆山市周市镇海鹏路37号&lt;/p&gt;',	NULL),
(5,	1541,	1,	0,	0,	0,	3,	999,	1467475200,	1467475200,	'pc',	'zh-cn',	'行业新闻',	NULL,	'577895ed3a38e.png',	'',	'',	'行业新闻v行业新闻行业新闻行业新闻',	'',	'',	'',	'&lt;p&gt;&lt;span style=&quot;font-family: 宋体; font-size: 12px;  background-color: rgb(254, 254, 254);&quot;&gt;行业新闻&lt;/span&gt;&lt;/p&gt;',	NULL),
(6,	1540,	1,	0,	0,	1,	2,	999,	1467561600,	1467561600,	'pc',	'zh-cn',	'如何保养压铸机配件？',	NULL,	'577a760e74026.jpg',	'',	'',	'压铸机配件放置在干燥的地方，避免浸水破裂。压铸机配件之料勺的操做调养 ：料勺等工具应停止少时分浸泡正在开金液内，以减少开金液对工具的腐蚀',	'',	'',	'',	'&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 30px;  background-color: rgb(255, 255, 255);&quot;&gt;压铸机配件放置在干燥的地方，避免浸水破裂。压铸机配件之料勺的操做调养 ：料勺等工具应停止少时分浸泡正在开金液内，以减少开金液对工具的腐蚀&lt;/span&gt;&lt;/p&gt;',	NULL),
(7,	1540,	1,	0,	0,	1,	1,	999,	1467561600,	1467561600,	'pc',	'zh-cn',	'如何保养压铸机配件？',	NULL,	'577a76452c16f.jpg',	'',	'',	'压铸机配件放置在干燥的地方，避免浸水破裂。压铸机配件之料勺的操做调养 ：料勺等工具应停止少时分浸泡正在开金液内，以减少开金液对工具的腐蚀..',	'',	'',	'',	'&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 30px;  background-color: rgb(255, 255, 255);&quot;&gt;压铸机配件放置在干燥的地方，避免浸水破裂。压铸机配件之料勺的操做调养 ：料勺等工具应停止少时分浸泡正在开金液内，以减少开金液对工具的腐蚀..&lt;/span&gt;&lt;/p&gt;',	NULL),
(8,	1541,	1,	0,	0,	1,	1,	999,	1467561600,	1467561600,	'pc',	'zh-cn',	'如何保养压铸机配件？',	NULL,	'577a766764861.jpg',	'',	'',	'压铸机配件放置在干燥的地方，避免浸水破裂。压铸机配件之料勺的操做调养 ：料勺等工具应停止少时分浸泡正在开金液内，以减少开金液对工具的腐蚀.',	'',	'',	'',	'&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 30px;  background-color: rgb(255, 255, 255);&quot;&gt;压铸机配件放置在干燥的地方，避免浸水破裂。压铸机配件之料勺的操做调养 ：料勺等工具应停止少时分浸泡正在开金液内，以减少开金液对工具的腐蚀.&lt;/span&gt;&lt;/p&gt;',	NULL);

DROP TABLE IF EXISTS `y_part`;
CREATE TABLE `y_part` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `orderNum` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `is_publish` int(11) NOT NULL DEFAULT '0',
  `nowModule` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `y_part` (`id`, `pid`, `orderNum`, `lang`, `title`, `url`, `description`, `is_publish`, `nowModule`, `alias`) VALUES
(17,	0,	10,	'zh-cn',	'网站首页',	'__APP__',	'',	1,	'',	''),
(18,	0,	10,	'zh-cn',	'企业简介',	'__APP__/About',	'',	1,	'',	''),
(19,	0,	10,	'zh-cn',	'新闻动态',	'__APP__/News',	'',	1,	'',	''),
(20,	0,	10,	'zh-cn',	'产品展示',	'__APP__/Goods',	'',	1,	'',	''),
(21,	0,	10,	'zh-cn',	'服务网点',	'__APP__/Market',	'',	1,	'',	''),
(22,	0,	10,	'zh-cn',	'人才招聘',	'__APP__/Job/show',	'',	1,	'Job',	''),
(23,	0,	10,	'zh-cn',	'招商加盟',	'__APP__/Join',	'',	0,	'',	''),
(24,	0,	10,	'zh-cn',	'在线留言',	'__APP__/Guestbook',	'',	1,	'',	''),
(25,	0,	10,	'zh-cn',	'联系我们',	'__APP__/Contact',	'',	1,	'',	''),
(26,	0,	10,	'zh-cn',	'经营理念',	'/index.php/About/index/cid/1171.html',	'',	0,	'',	''),
(27,	0,	10,	'mobile',	'关于我们',	'__APP__/About',	'',	1,	'',	'About/index'),
(29,	0,	10,	'mobile',	'产品展示',	'__APP__/Goods',	'',	1,	'',	'Goods/index'),
(30,	0,	10,	'mobile',	'新闻动态',	'__APP__/News',	'',	1,	'',	'News/index'),
(31,	0,	10,	'mobile',	'营销网络',	'__APP__/Market',	'',	1,	'',	''),
(32,	0,	10,	'mobile',	'在线留言',	'__APP__/Message',	'',	1,	'',	''),
(33,	0,	10,	'mobile',	'联系方式',	'__APP__/Contact',	'',	1,	'',	''),
(34,	0,	10,	'mobile',	'企业微博',	'__APP__/Weibo',	'',	1,	'',	''),
(35,	0,	10,	'zh-cn',	'企业微博',	'__APP__/Weibo',	'',	1,	'',	''),
(37,	0,	10,	'mobile',	'人才招聘',	'__APP__/Job',	'',	1,	'',	'');

DROP TABLE IF EXISTS `y_survey`;
CREATE TABLE `y_survey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) unsigned DEFAULT NULL,
  `pid` int(11) DEFAULT '0',
  `my_id` int(11) DEFAULT NULL,
  `issue_type` int(1) DEFAULT NULL,
  `validity_time` int(11) DEFAULT NULL,
  `ordernum` int(11) NOT NULL DEFAULT '999',
  `lang` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `ques_num` int(11) NOT NULL DEFAULT '0',
  `is_publish` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `y_survey_answer`;
CREATE TABLE `y_survey_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ques_id` int(11) NOT NULL DEFAULT '0',
  `ordernum` int(11) NOT NULL DEFAULT '999',
  `answer_type` tinyint(3) NOT NULL DEFAULT '0',
  `answer_title` varchar(250) NOT NULL DEFAULT '0',
  `my_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `y_survey_question`;
CREATE TABLE `y_survey_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_id` int(11) NOT NULL DEFAULT '0',
  `ordernum` int(11) NOT NULL DEFAULT '0',
  `answer_type` tinyint(3) NOT NULL DEFAULT '0',
  `ques_title` varchar(255) NOT NULL DEFAULT '',
  `text_answer` varchar(255) NOT NULL DEFAULT '',
  `answer_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `y_survey_result`;
CREATE TABLE `y_survey_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_id` int(11) NOT NULL DEFAULT '0',
  `ques_id` int(11) NOT NULL DEFAULT '0',
  `answer_type` tinyint(4) NOT NULL DEFAULT '0',
  `answer_id` int(11) NOT NULL DEFAULT '0',
  `answer_text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `y_system`;
CREATE TABLE `y_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(255) DEFAULT NULL,
  `hardware` varchar(255) NOT NULL DEFAULT 'pc',
  `lang` varchar(255) DEFAULT NULL,
  `linkman` varchar(255) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `app_logo` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `copyright` varchar(50) DEFAULT NULL,
  `credible` varchar(255) DEFAULT NULL,
  `icpnumber` varchar(255) DEFAULT NULL,
  `seo_title` varchar(100) DEFAULT NULL,
  `seo_keywords` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `email_smtp_host` varchar(20) DEFAULT NULL,
  `email_smtp_port` varchar(10) DEFAULT NULL,
  `email_username` varchar(20) DEFAULT NULL,
  `email_password` varchar(20) DEFAULT NULL,
  `email_subject` varchar(255) DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `email_auto` varchar(50) DEFAULT NULL,
  `is_twoCode` int(11) DEFAULT '1',
  `my_id` int(11) DEFAULT NULL,
  `sina_wb_url` varchar(255) DEFAULT NULL,
  `qq_wb_url` varchar(255) DEFAULT NULL,
  `weibo_type` int(11) DEFAULT NULL,
  `is_share` int(11) DEFAULT NULL,
  `share_plug` text,
  `weibo_plug` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_system` (`id`, `theme`, `hardware`, `lang`, `linkman`, `company`, `telephone`, `fax`, `postcode`, `address`, `image`, `app_logo`, `email`, `website`, `domain`, `copyright`, `credible`, `icpnumber`, `seo_title`, `seo_keywords`, `seo_description`, `email_smtp_host`, `email_smtp_port`, `email_username`, `email_password`, `email_subject`, `email_address`, `email_auto`, `is_twoCode`, `my_id`, `sina_wb_url`, `qq_wb_url`, `weibo_type`, `is_share`, `share_plug`, `weibo_plug`) VALUES
(1,	NULL,	'pc',	'zh-cn',	'廖先生',	'昆山金联鑫精密五金制品厂',	'13915763883',	'0512-36904187',	'',	'江苏省昆山市石牌镇京坂路1199号',	'577a6a2d41e04.png',	NULL,	'liaoshuiqing@pcb-jlx.com',	'',	'',	'昆山金联鑫精密五金制品厂',	'',	'',	'昆山金联鑫精密五金制品厂',	'压铸机配件/料壶/锤头/冲头/料管/射嘴身/射嘴头/钢令/力劲/宇部/东芝/东洋',	'昆山金联鑫精密五金制品厂创立于2007年，是压铸机配件及周边设备的专业制造商。',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL);

DROP TABLE IF EXISTS `y_theme`;
CREATE TABLE `y_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pc` int(11) DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL,
  `ipad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `y_theme` (`id`, `pc`, `mobile`, `ipad`) VALUES
(1,	2,	1,	1);

DROP TABLE IF EXISTS `y_video`;
CREATE TABLE `y_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) unsigned NOT NULL,
  `is_publish` int(11) unsigned DEFAULT '0',
  `is_comment` int(11) unsigned DEFAULT NULL,
  `is_top` int(11) unsigned DEFAULT NULL,
  `is_home` int(11) unsigned DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `ordernum` int(11) unsigned DEFAULT '999',
  `update_time` int(11) unsigned DEFAULT NULL,
  `create_time` int(11) unsigned DEFAULT NULL,
  `hardware` varchar(255) NOT NULL DEFAULT 'pc',
  `lang` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `imgwidth` varchar(255) DEFAULT NULL,
  `imgheight` varchar(255) DEFAULT NULL,
  `downfile` varchar(255) DEFAULT NULL,
  `url` text,
  `tag` varchar(255) DEFAULT NULL,
  `is_show` int(11) DEFAULT '0',
  `is_online` int(11) DEFAULT NULL,
  `y_or_t` int(11) DEFAULT NULL,
  `vWidth` varchar(255) DEFAULT NULL,
  `vHeight` varchar(255) DEFAULT NULL,
  `is_phone` int(11) DEFAULT NULL,
  `my_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- 2016-07-04 14:54:28
