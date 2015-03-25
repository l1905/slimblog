
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `username` varchar(40) NOT NULL ,
    `email` varchar(40) NOT NULL,
    `password` varchar(50) NOT NUll,
    `telephone` varchar(20) NOT NULL,
    `nickname`  varchar(30) NOT NULL,
    `regdate` int(11) NOT NULL,
    `last_login_time` int(11) NOT NULL,
    `last_login_ip` varchar(20) NOT NULL,
    `status` tinyint(1) NOT NULL  COMMENT 'TODO:锁定，正常 通过审核， 没有权限',
    `connectid` varchar(30) NOT NULL COMMENT 'DOTO: 第三方登陆',
    `avatar` varchar(50) NOT NULL COMMENT 'DOTO: 头像',
    PRIMARY KEY (`id`)
)ENGINE='MyISAM' DEFAULT CHARSET='utf8';

DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `uid` int(11) NOT NULL,
    `uname` varchar(40) NOT NULL,
    `post_date` int(11) NOT NULL COMMENT '发布时间',
    `post_edit_date` int(11) NOT NULL COMMENT '修改时间',
    `post_title` varchar(50) NOT NULL COMMENT '标题',
    `post_cotent` text NOT NULL COMMENT '内容',
    `status`  tinyint(1) NOT NULL COMMENT '状态 1公开 2私密 3删除',
    PRIMARY KEY (`id`)
)ENGINE='MyISAM' DEFAULT CHARSET='utf8';

DROP TABLE IF EXISTS `post_tag`;
CREATE TABLE `post_tag` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `postid` int(11) NOT NULL,
    `postname` varchar(50) NOT NULL,
    `tag_id` int(11) NOT NULL,
    `tag_name` varchar(50) NOT NULL ,
    PRIMARY KEY (`id`)
)ENGINE='MyISAM' DEFAULT CHARSET='utf8';

DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `title` varchar(40) NOT NULL,
    `input_time` int(11) NOT NULL,
    PRIMARY KEY (`id`)
)ENGINE='MyISAM' DEFAULT CHARSET='utf8';
