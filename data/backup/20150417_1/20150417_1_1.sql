-- TuanPhp SQL Dump Program
-- 
-- DATE : 2015-04-17 13:57:03
-- Vol : 1
DROP TABLE IF EXISTS `sp_access`;
CREATE TABLE `sp_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `g` varchar(20) NOT NULL COMMENT '项目',
  `m` varchar(20) NOT NULL COMMENT '模块',
  `a` varchar(20) NOT NULL COMMENT '方法',
  KEY `groupId` (`role_id`),
  KEY `gma` (`g`,`m`,`a`,`role_id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_access ( `role_id`, `g`, `m`, `a` ) VALUES  ('2','Admin','Content','default');
INSERT INTO sp_access ( `role_id`, `g`, `m`, `a` ) VALUES  ('2','Portal','AdminPost','add');
INSERT INTO sp_access ( `role_id`, `g`, `m`, `a` ) VALUES  ('2','Portal','AdminPost','add_post');
INSERT INTO sp_access ( `role_id`, `g`, `m`, `a` ) VALUES  ('2','Portal','AdminPost','check');
INSERT INTO sp_access ( `role_id`, `g`, `m`, `a` ) VALUES  ('2','Portal','AdminPost','delete');
INSERT INTO sp_access ( `role_id`, `g`, `m`, `a` ) VALUES  ('2','Portal','AdminPost','edit');
INSERT INTO sp_access ( `role_id`, `g`, `m`, `a` ) VALUES  ('2','Portal','AdminPost','edit_post');
INSERT INTO sp_access ( `role_id`, `g`, `m`, `a` ) VALUES  ('2','Portal','AdminPost','index');
INSERT INTO sp_access ( `role_id`, `g`, `m`, `a` ) VALUES  ('2','Portal','AdminPost','listorders');
INSERT INTO sp_access ( `role_id`, `g`, `m`, `a` ) VALUES  ('2','Portal','AdminPost','move');
DROP TABLE IF EXISTS `sp_ad`;
CREATE TABLE `sp_ad` (
  `ad_id` bigint(20) NOT NULL auto_increment COMMENT '广告id',
  `ad_name` varchar(255) NOT NULL,
  `ad_content` text,
  `status` int(2) NOT NULL default '1' COMMENT '状态，1显示，0不显示',
  PRIMARY KEY  (`ad_id`),
  KEY `ad_name` (`ad_name`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_asset`;
CREATE TABLE `sp_asset` (
  `aid` bigint(20) NOT NULL auto_increment,
  `unique` varchar(14) NOT NULL,
  `filename` varchar(50) default NULL,
  `filesize` int(11) default NULL,
  `filepath` varchar(200) NOT NULL,
  `uploadtime` int(11) NOT NULL,
  `status` int(2) NOT NULL default '1',
  `meta` text,
  `suffix` varchar(50) default NULL,
  `download_times` int(6) NOT NULL,
  PRIMARY KEY  (`aid`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_categorys`;
CREATE TABLE `sp_categorys` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `cateName` varchar(255) NOT NULL COMMENT '分类名称',
  `intro` varchar(255) NOT NULL COMMENT '简介',
  `cateImg` varchar(255) NOT NULL COMMENT '图片',
  `aboutTime` varchar(255) NOT NULL COMMENT '活动时间描述（审核时间、截止时间...）',
  `shopConditions` varchar(255) NOT NULL COMMENT '店铺要求',
  `priceConditions` varchar(255) NOT NULL COMMENT '价格要求',
  `applyConditions` text NOT NULL COMMENT '报名条件',
  `ctime` int(10) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_categorys ( `id`, `cateName`, `intro`, `cateImg`, `aboutTime`, `shopConditions`, `priceConditions`, `applyConditions`, `ctime`, `status` ) VALUES  ('1','春夏装专场','这是春夏装专场，全场折扣，跳楼大甩卖','','审核时间：2015年04月20日
活动开始时间：2015年04月30日','淘宝店铺、天猫店铺、无投诉记录','原价80%以下','<table width=\"937\" style=\"width: 853px;\"><tbody><tr class=\"firstRow\"><th style=\"margin: 0px; padding: 0px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); height: 38px; line-height: 38px; background: rgb(244, 255, 255);\">标准</th><th style=\"margin: 0px; padding: 0px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); height: 38px; line-height: 38px; background: rgb(244, 255, 255);\">淘宝卖家</th><th style=\"margin: 0px; padding: 0px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); height: 38px; line-height: 38px; background: rgb(244, 255, 255);\">天猫卖家</th></tr><tr><td align=\"right\" style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">开店时间</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">90天及以上</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">90天及以上</td></tr><tr><td align=\"right\" style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">店铺要求</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">仅限于护肤、彩妆一级类目的集市商家</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">天猫商家</td></tr><tr><td align=\"right\" style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">消费者保障计划</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">七天无理由退换货服务</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">七天无理由退换货服务</td></tr><tr><td align=\"right\" style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">品牌要求</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">各类国际、国内知名品牌（含知名淘品牌）</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">各类国际、国内知名品牌（含知名淘品牌）</td></tr><tr><td align=\"right\" style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">实物交易占比</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">95%及以上</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">80%及以上</td></tr><tr><td align=\"right\" style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">宝贝描述DSR</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">4.8分及以上</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">4.6分及以上</td></tr><tr><td align=\"right\" style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">卖家服务态度DSR</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">4.8分及以上</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">4.6分及以上</td></tr><tr><td align=\"right\" style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">卖家发货速度DSR</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">4.8分及以上</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">4.5分及以上</td></tr><tr><td align=\"right\" style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">有效动态评分（近半年）</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">店铺有效评价次数5000个及以上</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">店铺有效评价次数300个及以上</td></tr><tr><td align=\"right\" style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">店铺A类扣分</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">4.8分及以上</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">4.6分及以上</td></tr><tr><td align=\"right\" style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">店铺B类扣分</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">无B类扣分</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">无B类扣分</td></tr></tbody></table><p><br/></p>','1428975273','1');
INSERT INTO sp_categorys ( `id`, `cateName`, `intro`, `cateImg`, `aboutTime`, `shopConditions`, `priceConditions`, `applyConditions`, `ctime`, `status` ) VALUES  ('2','凉鞋专场','凉鞋专场，夏款男女凉鞋，厂家直销','','开始时间2015年5月1日','淘宝天猫店铺均可','原价10%以下','<table width=\"937\" style=\"width: 853px;\"><tbody><tr class=\"firstRow\"><th style=\"margin: 0px; padding: 0px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); height: 38px; line-height: 38px; background: rgb(244, 255, 255);\">标准</th><th style=\"margin: 0px; padding: 0px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); height: 38px; line-height: 38px; background: rgb(244, 255, 255);\">集市卖家</th><th style=\"margin: 0px; padding: 0px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); height: 38px; line-height: 38px; background: rgb(244, 255, 255);\">天猫卖家</th></tr><tr><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px; text-align: center;\" height=\"18\">信誉等级</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">1钻以上</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">不限</td></tr><tr><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px; text-align: center;\" height=\"18\">动态评分</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">同行持平及以上</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">同行持平及以上</td></tr><tr><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px; text-align: center;\" height=\"18\">报名数量</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">≥200件</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">≥200件</td></tr><tr><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px; text-align: center;\" height=\"18\">商品评价</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">不限</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">不限</td></tr><tr><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px; text-align: center;\" height=\"18\">是否样品</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">酌情收取</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">酌情收取</td></tr><tr><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px; text-align: center;\" height=\"18\">发货速度</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">1-3日发货</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">1-3日发货</td></tr><tr><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px; text-align: center;\" height=\"18\">历史价格</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">&gt;本期活动价</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">&gt;本期活动价</td></tr><tr><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px; text-align: center;\" height=\"18\">审核周期</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">15个工作日</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">15个工作日</td></tr><tr><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px; text-align: center;\" height=\"18\">预告方式</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">需预告、无预告</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">需预告、无预告</td></tr><tr><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px; text-align: center;\" height=\"18\">重复周期</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">15天后</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">15天后</td></tr><tr><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px; text-align: center;\" height=\"18\">店内客服</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">必须在线</td><td style=\"margin: 0px; padding-top: 10px; padding-bottom: 10px; border-bottom-color: rgb(226, 226, 226); border-right-color: rgb(226, 226, 226); line-height: 18px;\" height=\"18\">必须在线</td></tr></tbody></table><p><br/></p>','1428977766','1');
DROP TABLE IF EXISTS `sp_comments`;
CREATE TABLE `sp_comments` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `post_table` varchar(100) NOT NULL COMMENT '评论内容所在表，不带表前缀',
  `post_id` int(11) unsigned NOT NULL default '0',
  `url` varchar(255) default NULL COMMENT '原文地址',
  `uid` int(11) NOT NULL default '0' COMMENT '发表评论的用户id',
  `to_uid` int(11) NOT NULL default '0' COMMENT '被评论的用户id',
  `full_name` varchar(50) default NULL COMMENT '评论者昵称',
  `email` varchar(255) default NULL COMMENT '评论者邮箱',
  `createtime` datetime NOT NULL default '0000-00-00 00:00:00',
  `content` text NOT NULL COMMENT '评论内容',
  `type` smallint(1) NOT NULL default '1' COMMENT '评论类型；1实名评论',
  `parentid` bigint(20) unsigned NOT NULL default '0' COMMENT '被回复的评论id',
  `path` varchar(255) default NULL,
  `status` smallint(1) NOT NULL default '1' COMMENT '状态，1已审核，0未审核',
  PRIMARY KEY  (`id`),
  KEY `comment_post_ID` (`post_id`),
  KEY `comment_approved_date_gmt` (`status`),
  KEY `comment_parent` (`parentid`),
  KEY `table_id_status` (`post_table`,`post_id`,`status`),
  KEY `createtime` (`createtime`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_comments ( `id`, `post_table`, `post_id`, `url`, `uid`, `to_uid`, `full_name`, `email`, `createtime`, `content`, `type`, `parentid`, `path`, `status` ) VALUES  ('1','posts','20','index.php/Portal/article/index/id/4','4','0','大豆','dadou87@126.com','2015-04-16 14:32:48','kajsdl ksjdf;lajsd ;flkjads ;klfjas;dlk jfa;sdlk jf;asdkl jf;alsk ','1','0','0-1','1');
DROP TABLE IF EXISTS `sp_common_action_log`;
CREATE TABLE `sp_common_action_log` (
  `id` int(11) NOT NULL auto_increment,
  `user` bigint(20) default '0' COMMENT '用户id',
  `object` varchar(100) default NULL COMMENT '访问对象的id,格式：不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) default NULL COMMENT '操作名称；格式规定为：应用名+控制器+操作名；也可自己定义格式只要不发生冲突且惟一；',
  `count` int(11) default '0' COMMENT '访问次数',
  `last_time` int(11) default '0' COMMENT '最后访问的时间戳',
  `ip` varchar(15) default NULL COMMENT '访问者最后访问ip',
  PRIMARY KEY  (`id`),
  KEY `user_object_action` (`user`,`object`,`action`),
  KEY `user_object_action_ip` (`user`,`object`,`action`,`ip`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1','0','posts1','Portal-Article-index','22','1426644382','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('2','2','posts1','Portal-Article-do_like','1','1425256981','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('3','2','posts1','Portal-Article-index','2','1425259094','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('4','0','posts2','Portal-Article-index','20','1427435916','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('5','0','posts12','Portal-Article-index','2','1426120078','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('6','0','posts','Portal-Article-index','3','1427692976','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('7','2','posts12','Portal-Article-index','1','1427337957','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('8','2','posts','Portal-Article-index','2','1427337957','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('9','0','goods','Portal-Goods-index','16','1427783940','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('10','0','posts20','Portal-Article-index','3','1427695692','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('11','0','goods2943','Portal-Goods-index','54','1427783532','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('12','0','goods3077','Portal-Goods-index','8','1427785191','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('13','0','goods3067','Portal-Goods-index','5','1427785203','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('14','0','goods3078','Portal-Goods-index','27','1427787536','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('15','0','goods3063','Portal-Goods-index','1','1427785212','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('16','0','goods3069','Portal-Goods-index','1','1427785217','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('17','0','goods3062','Portal-Goods-index','1','1427785226','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('18','0','goods5','Portal-Goods-index','5','1427787992','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('19','0','goods3044','Portal-Goods-index','7','1427789189','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('20','0','goods119','Portal-Goods-index','1','1427795077','117.87.7.157');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('21','0','goods107','Portal-Goods-index','1','1427795282','117.87.7.157');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('22','0','goods7','Portal-Goods-index','1','1427795291','117.87.7.157');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('23','0','goods83','Portal-Goods-index','1','1427795336','117.87.7.157');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('24','0','goods83','Portal-Goods-index','1','1427796062','101.226.66.179');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('25','0','goods186','Portal-Goods-index','1','1427796598','117.87.7.157');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('26','0','goods194','Portal-Goods-index','1','1427796635','117.87.7.157');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('27','0','goods175','Portal-Goods-index','1','1427796765','117.87.7.157');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('28','0','goods175','Portal-Goods-index','1','1427796766','112.64.235.247');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('29','0','goods174','Portal-Goods-index','1','1427796776','117.87.7.157');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('30','0','goods186','Portal-Goods-index','1','1427797169','101.226.51.228');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('31','0','goods174','Portal-Goods-index','1','1427797313','180.153.206.16');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('32','0','goods203','Portal-Goods-index','1','1427827008','31.205.38.112');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('33','0','goods203','Portal-Goods-index','1','1427827009','180.153.163.209');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('34','0','goods33','Portal-Goods-index','1','1427847976','117.87.0.14');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('35','0','goods33','Portal-Goods-index','1','1427847976','180.153.214.181');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('36','0','goods217','Portal-Goods-index','2','1427868915','117.87.0.14');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('37','0','goods217','Portal-Goods-index','1','1427848480','180.153.206.38');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('38','0','goods49','Portal-Goods-index','1','1427854253','117.87.0.14');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('39','0','goods49','Portal-Goods-index','1','1427854254','180.153.163.206');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('40','0','goods166','Portal-Goods-index','2','1427878766','117.87.0.14');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('41','0','goods236','Portal-Goods-index','1','1427941228','49.81.160.155');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('42','0','goods236','Portal-Goods-index','1','1427941229','180.153.206.13');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('43','0','goods235','Portal-Goods-index','1','1428021888','117.87.6.110');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('44','0','goods235','Portal-Goods-index','1','1428021888','101.226.33.238');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('45','0','goods236','Portal-Goods-index','1','1428021896','117.87.6.110');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('46','0','goods4','Portal-Goods-index','1','1428030477','117.87.6.110');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('47','0','goods4','Portal-Goods-index','1','1428031279','180.153.201.216');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('48','0','goods218','Portal-Goods-index','1','1428040398','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('49','0','goods220','Portal-Goods-index','3','1428674819','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('50','0','goods200','Portal-Goods-index','4','1428830508','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('51','0','goods199','Portal-Goods-index','3','1428682489','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('52','0','goods235','Portal-Goods-index','2','1428180912','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('53','0','goods203','Portal-Goods-index','1','1428040426','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('54','0','goods226','Portal-Goods-index','2','1428676393','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('55','0','goods233','Portal-Goods-index','1','1428040438','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('56','0','goods234','Portal-Goods-index','1','1428040443','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('57','0','goods207','Portal-Goods-index','1','1428040449','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('58','0','goods230','Portal-Goods-index','2','1428671124','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('59','0','goods205','Portal-Goods-index','2','1428680534','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('60','0','goods217','Portal-Goods-index','2','1428682722','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('61','0','goods213','Portal-Goods-index','2','1428676878','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('62','0','goods212','Portal-Goods-index','2','1428183412','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('63','0','goods197','Portal-Goods-index','3','1428675665','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('64','0','goods225','Portal-Goods-index','4','1428637114','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('65','0','goods215','Portal-Goods-index','2','1428408361','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('66','0','goods208','Portal-Goods-index','1','1428040500','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('67','0','goods224','Portal-Goods-index','2','1428382574','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('68','0','goods209','Portal-Goods-index','3','1428698843','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('69','0','goods219','Portal-Goods-index','3','1428685533','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('70','0','goods201','Portal-Goods-index','2','1428674073','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('71','0','goods228','Portal-Goods-index','2','1428185686','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('72','0','goods204','Portal-Goods-index','3','1428774147','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('73','0','goods229','Portal-Goods-index','2','1428784946','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('74','0','goods211','Portal-Goods-index','3','1428677356','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('75','0','goods210','Portal-Goods-index','3','1428685106','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('76','0','goods227','Portal-Goods-index','2','1428186823','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('77','0','goods236','Portal-Goods-index','3','1428772797','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('78','0','goods216','Portal-Goods-index','1','1428040568','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('79','0','goods232','Portal-Goods-index','2','1428604438','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('80','0','goods214','Portal-Goods-index','2','1428681810','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('81','0','goods223','Portal-Goods-index','3','1428841045','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('82','0','goods202','Portal-Goods-index','1','1428040591','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('83','0','goods222','Portal-Goods-index','3','1429128326','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('84','0','goods198','Portal-Goods-index','2','1428677906','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('85','0','goods206','Portal-Goods-index','3','1429129818','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('86','0','goods221','Portal-Goods-index','2','1429129204','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('87','0','goods231','Portal-Goods-index','2','1428685959','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('88','0','goods196','Portal-Goods-index','4','1428688379','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('89','0','goods4','Portal-Goods-index','1','1428040655','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('90','0','goods9','Portal-Goods-index','1','1428040656','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('91','0','goods3','Portal-Goods-index','2','1428200919','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('92','0','goods5','Portal-Goods-index','2','1428201146','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('93','0','goods6','Portal-Goods-index','2','1428201374','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('94','0','goods8','Portal-Goods-index','2','1428201601','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('95','0','goods2','Portal-Goods-index','1','1428040755','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('96','0','goods7','Portal-Goods-index','4','1428725797','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('97','0','goods1','Portal-Goods-index','2','1428202283','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('98','0','goods17','Portal-Goods-index','1','1428040802','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('99','0','goods20','Portal-Goods-index','1','1428040817','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('100','0','goods11','Portal-Goods-index','2','1428202965','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('101','0','goods14','Portal-Goods-index','2','1428675059','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('102','0','goods38','Portal-Goods-index','2','1428203420','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('103','0','goods22','Portal-Goods-index','1','1428040880','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('104','0','goods16','Portal-Goods-index','1','1428040896','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('105','0','goods27','Portal-Goods-index','2','1428204330','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('106','0','goods2','Portal-Goods-index','1','1428041474','117.87.6.110');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('107','0','goods2','Portal-Goods-index','1','1428042288','101.226.65.108');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('108','0','goods123','Portal-Goods-index','1','1428052513','117.87.6.110');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('109','0','goods39','Portal-Goods-index','1','1428052562','117.87.6.110');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('110','0','goods39','Portal-Goods-index','1','1428053376','180.153.161.217');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('111','0','goods205','Portal-Goods-index','1','1428057068','36.62.11.224');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('112','0','goods230','Portal-Goods-index','1','1428069377','218.104.173.142');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('113','0','goods235','Portal-Goods-index','1','1428163927','125.84.78.110');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('114','0','goods218','Portal-Goods-index','1','1428180002','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('115','0','goods203','Portal-Goods-index','3','1428687209','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('116','0','goods226','Portal-Goods-index','1','1428181366','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('117','0','goods233','Portal-Goods-index','2','1428675545','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('118','0','goods234','Portal-Goods-index','1','1428181821','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('119','0','goods207','Portal-Goods-index','2','1428680841','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('120','0','goods230','Portal-Goods-index','1','1428182276','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('121','0','goods205','Portal-Goods-index','1','1428182730','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('122','0','goods217','Portal-Goods-index','1','1428182958','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('123','0','goods213','Portal-Goods-index','1','1428183185','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('124','0','goods215','Portal-Goods-index','3','1428784773','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('125','0','goods208','Portal-Goods-index','2','1428360496','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('126','0','goods224','Portal-Goods-index','2','1428674100','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('127','0','goods209','Portal-Goods-index','1','1428184777','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('128','0','goods201','Portal-Goods-index','2','1428356197','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('129','0','goods229','Portal-Goods-index','1','1428186141','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('130','0','goods236','Portal-Goods-index','1','1428187050','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('131','0','goods216','Portal-Goods-index','1','1428187277','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('132','0','goods232','Portal-Goods-index','1','1428187505','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('133','0','goods214','Portal-Goods-index','2','1428680777','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('134','0','goods223','Portal-Goods-index','2','1428675787','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('135','0','goods202','Portal-Goods-index','1','1428188187','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('136','0','goods222','Portal-Goods-index','1','1428188414','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('137','0','goods198','Portal-Goods-index','1','1428188641','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('138','0','goods221','Portal-Goods-index','1','1428189096','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('139','0','goods231','Portal-Goods-index','1','1428189324','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('140','0','goods138','Portal-Goods-index','1','1428192279','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('141','0','goods4','Portal-Goods-index','1','1428200464','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('142','0','goods9','Portal-Goods-index','1','1428200692','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('143','0','goods2','Portal-Goods-index','1','1428201828','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('144','0','goods7','Portal-Goods-index','1','1428202057','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('145','0','goods17','Portal-Goods-index','1','1428202512','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('146','0','goods20','Portal-Goods-index','1','1428202738','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('147','0','goods14','Portal-Goods-index','1','1428203193','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('148','0','goods22','Portal-Goods-index','1','1428203647','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('149','0','goods16','Portal-Goods-index','1','1428203875','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('150','0','goods21','Portal-Goods-index','1','1428204557','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('151','0','goods28','Portal-Goods-index','1','1428204784','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('152','0','goods40','Portal-Goods-index','1','1428205012','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('153','0','goods26','Portal-Goods-index','1','1428205240','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('154','0','goods25','Portal-Goods-index','1','1428205466','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('155','0','goods24','Portal-Goods-index','1','1428205694','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('156','0','goods30','Portal-Goods-index','1','1428205921','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('157','0','goods32','Portal-Goods-index','1','1428206148','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('158','0','goods13','Portal-Goods-index','1','1428206376','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('159','0','goods23','Portal-Goods-index','1','1428206603','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('160','0','goods12','Portal-Goods-index','1','1428206830','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('161','0','goods18','Portal-Goods-index','1','1428207058','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('162','0','goods31','Portal-Goods-index','2','1428673740','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('163','0','goods34','Portal-Goods-index','1','1428207513','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('164','0','goods36','Portal-Goods-index','1','1428207740','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('165','0','goods39','Portal-Goods-index','1','1428207968','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('166','0','goods19','Portal-Goods-index','1','1428208195','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('167','0','goods15','Portal-Goods-index','1','1428208422','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('168','0','goods29','Portal-Goods-index','1','1428208877','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('169','0','goods35','Portal-Goods-index','1','1428209104','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('170','0','goods37','Portal-Goods-index','1','1428209332','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('171','0','goods10','Portal-Goods-index','2','1428676029','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('172','0','goods234','Portal-Goods-index','1','1428219176','218.104.173.26');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('173','0','goods91','Portal-Goods-index','1','1428222518','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('174','0','goods98','Portal-Goods-index','3','1428841894','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('175','0','goods72','Portal-Goods-index','1','1428222973','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('176','0','goods78','Portal-Goods-index','1','1428223201','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('177','0','goods59','Portal-Goods-index','1','1428223428','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('178','0','goods55','Portal-Goods-index','1','1428223655','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('179','0','goods49','Portal-Goods-index','1','1428223883','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('180','0','goods75','Portal-Goods-index','1','1428224110','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('181','0','goods73','Portal-Goods-index','1','1428224341','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('182','0','goods63','Portal-Goods-index','2','1428758408','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('183','0','goods48','Portal-Goods-index','2','1428684822','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('184','0','goods99','Portal-Goods-index','1','1428225019','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('185','0','goods61','Portal-Goods-index','2','1428614419','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('186','0','goods77','Portal-Goods-index','2','1428675301','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('187','0','goods65','Portal-Goods-index','1','1428225702','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('188','0','goods86','Portal-Goods-index','1','1428225929','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('189','0','goods71','Portal-Goods-index','1','1428226157','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('190','0','goods82','Portal-Goods-index','1','1428226384','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('191','0','goods93','Portal-Goods-index','1','1428226611','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('192','0','goods96','Portal-Goods-index','1','1428226839','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('193','0','goods44','Portal-Goods-index','1','1428227066','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('194','0','goods92','Portal-Goods-index','1','1428227293','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('195','0','goods52','Portal-Goods-index','2','1428700935','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('196','0','goods85','Portal-Goods-index','1','1428227748','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('197','0','goods42','Portal-Goods-index','1','1428227976','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('198','0','goods64','Portal-Goods-index','1','1428228203','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('199','0','goods97','Portal-Goods-index','2','1428618906','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('200','0','goods41','Portal-Goods-index','1','1428228657','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('201','0','goods58','Portal-Goods-index','1','1428228887','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('202','0','goods43','Portal-Goods-index','1','1428229112','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('203','0','goods69','Portal-Goods-index','1','1428229340','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('204','0','goods47','Portal-Goods-index','1','1428229568','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('205','0','goods74','Portal-Goods-index','1','1428229794','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('206','0','goods70','Portal-Goods-index','1','1428230249','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('207','0','goods81','Portal-Goods-index','2','1428709196','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('208','0','goods51','Portal-Goods-index','1','1428230703','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('209','0','goods83','Portal-Goods-index','1','1428230931','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('210','0','goods50','Portal-Goods-index','1','1428231158','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('211','0','goods95','Portal-Goods-index','1','1428231386','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('212','0','goods80','Portal-Goods-index','1','1428231613','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('213','0','goods46','Portal-Goods-index','2','1428743764','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('214','0','goods79','Portal-Goods-index','1','1428232295','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('215','0','goods60','Portal-Goods-index','1','1428232522','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('216','0','goods87','Portal-Goods-index','1','1428232750','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('217','0','goods66','Portal-Goods-index','1','1428232978','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('218','0','goods57','Portal-Goods-index','1','1428233205','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('219','0','goods88','Portal-Goods-index','1','1428233432','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('220','0','goods68','Portal-Goods-index','1','1428233793','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('221','0','goods53','Portal-Goods-index','1','1428233887','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('222','0','goods62','Portal-Goods-index','1','1428234114','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('223','0','goods56','Portal-Goods-index','1','1428234345','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('224','0','goods45','Portal-Goods-index','1','1428234569','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('225','0','goods90','Portal-Goods-index','1','1428234797','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('226','0','goods76','Portal-Goods-index','1','1428235025','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('227','0','goods89','Portal-Goods-index','1','1428235251','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('228','0','goods84','Portal-Goods-index','1','1428235479','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('229','0','goods67','Portal-Goods-index','1','1428235706','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('230','0','goods54','Portal-Goods-index','1','1428235933','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('231','0','goods94','Portal-Goods-index','1','1428236161','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('232','0','goods185','Portal-Goods-index','1','1428236388','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('233','0','goods195','Portal-Goods-index','1','1428236615','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('234','0','goods192','Portal-Goods-index','1','1428236843','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('235','0','goods182','Portal-Goods-index','1','1428237070','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('236','0','goods166','Portal-Goods-index','1','1428237297','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('237','0','goods33','Portal-Goods-index','1','1428237752','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('238','0','goods164','Portal-Goods-index','1','1428237979','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('239','0','goods149','Portal-Goods-index','1','1428238207','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('240','0','goods120','Portal-Goods-index','1','1428238435','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('241','0','goods160','Portal-Goods-index','1','1428238662','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('242','0','goods194','Portal-Goods-index','1','1428238889','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('243','0','goods165','Portal-Goods-index','1','1428239116','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('244','0','goods180','Portal-Goods-index','1','1428239343','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('245','0','goods162','Portal-Goods-index','1','1428239571','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('246','0','goods114','Portal-Goods-index','1','1428240026','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('247','0','goods235','Portal-Goods-index','1','1428240102','110.152.226.48');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('248','0','goods233','Portal-Goods-index','1','1428240112','110.152.226.48');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('249','0','goods153','Portal-Goods-index','1','1428240253','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('250','0','goods40','Portal-Goods-index','1','1428240296','110.152.226.48');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('251','0','goods39','Portal-Goods-index','1','1428240306','110.152.226.48');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('252','0','goods30','Portal-Goods-index','1','1428240312','110.152.226.48');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('253','0','goods219','Portal-Goods-index','1','1428240435','110.152.226.48');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('254','0','goods158','Portal-Goods-index','1','1428240480','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('255','0','goods102','Portal-Goods-index','1','1428240708','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('256','0','goods129','Portal-Goods-index','1','1428240935','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('257','0','goods183','Portal-Goods-index','1','1428241162','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('258','0','goods124','Portal-Goods-index','1','1428241390','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('259','0','goods170','Portal-Goods-index','1','1428241618','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('260','0','goods191','Portal-Goods-index','1','1428241844','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('261','0','goods184','Portal-Goods-index','1','1428242074','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('262','0','goods161','Portal-Goods-index','1','1428242299','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('263','0','goods131','Portal-Goods-index','1','1428242526','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('264','0','goods123','Portal-Goods-index','1','1428242754','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('265','0','goods119','Portal-Goods-index','1','1428242981','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('266','0','goods151','Portal-Goods-index','1','1428243208','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('267','0','goods181','Portal-Goods-index','1','1428244346','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('268','0','goods186','Portal-Goods-index','1','1428244573','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('269','0','goods110','Portal-Goods-index','1','1428244800','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('270','0','goods207','Portal-Goods-index','1','1428244831','110.184.221.118');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('271','0','goods139','Portal-Goods-index','1','1428245028','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('272','0','goods169','Portal-Goods-index','1','1428245255','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('273','0','goods103','Portal-Goods-index','1','1428245482','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('274','0','goods167','Portal-Goods-index','1','1428245713','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('275','0','goods147','Portal-Goods-index','1','1428245937','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('276','0','goods178','Portal-Goods-index','1','1428246164','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('277','0','goods152','Portal-Goods-index','1','1428246394','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('278','0','goods111','Portal-Goods-index','1','1428246619','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('279','0','goods122','Portal-Goods-index','1','1428246846','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('280','0','goods172','Portal-Goods-index','1','1428247077','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('281','0','goods171','Portal-Goods-index','1','1428247528','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('282','0','goods116','Portal-Goods-index','1','1428247758','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('283','0','goods133','Portal-Goods-index','1','1428247983','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('284','0','goods148','Portal-Goods-index','1','1428248211','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('285','0','goods135','Portal-Goods-index','1','1428248438','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('286','0','goods126','Portal-Goods-index','1','1428248665','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('287','0','goods155','Portal-Goods-index','1','1428248893','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('288','0','goods154','Portal-Goods-index','1','1428249348','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('289','0','goods117','Portal-Goods-index','1','1428249575','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('290','0','goods107','Portal-Goods-index','1','1428249802','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('291','0','goods130','Portal-Goods-index','1','1428250034','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('292','0','goods145','Portal-Goods-index','1','1428250257','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('293','0','goods146','Portal-Goods-index','1','1428250484','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('294','0','goods174','Portal-Goods-index','1','1428250712','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('295','0','goods100','Portal-Goods-index','1','1428250939','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('296','0','goods127','Portal-Goods-index','1','1428251166','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('297','0','goods159','Portal-Goods-index','1','1428251851','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('298','0','goods125','Portal-Goods-index','1','1428252076','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('299','0','goods109','Portal-Goods-index','1','1428252531','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('300','0','goods137','Portal-Goods-index','1','1428252758','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('301','0','goods150','Portal-Goods-index','1','1428252990','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('302','0','goods168','Portal-Goods-index','1','1428253213','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('303','0','goods134','Portal-Goods-index','1','1428253440','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('304','0','goods173','Portal-Goods-index','1','1428253667','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('305','0','goods197','Portal-Goods-index','1','1428253827','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('306','0','goods198','Portal-Goods-index','1','1428253830','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('307','0','goods199','Portal-Goods-index','1','1428253834','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('308','0','goods200','Portal-Goods-index','1','1428253844','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('309','0','goods201','Portal-Goods-index','1','1428253850','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('310','0','goods202','Portal-Goods-index','1','1428253856','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('311','0','goods203','Portal-Goods-index','1','1428253861','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('312','0','goods204','Portal-Goods-index','1','1428253871','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('313','0','goods205','Portal-Goods-index','1','1428253884','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('314','0','goods206','Portal-Goods-index','1','1428253887','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('315','0','goods207','Portal-Goods-index','1','1428253895','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('316','0','goods108','Portal-Goods-index','1','1428253897','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('317','0','goods208','Portal-Goods-index','1','1428253902','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('318','0','goods209','Portal-Goods-index','1','1428253908','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('319','0','goods210','Portal-Goods-index','1','1428253913','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('320','0','goods211','Portal-Goods-index','1','1428253916','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('321','0','goods212','Portal-Goods-index','1','1428253921','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('322','0','goods213','Portal-Goods-index','1','1428253925','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('323','0','goods214','Portal-Goods-index','1','1428253930','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('324','0','goods215','Portal-Goods-index','1','1428253933','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('325','0','goods216','Portal-Goods-index','1','1428253939','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('326','0','goods217','Portal-Goods-index','1','1428253941','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('327','0','goods218','Portal-Goods-index','1','1428253945','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('328','0','goods219','Portal-Goods-index','1','1428253953','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('329','0','goods220','Portal-Goods-index','1','1428253958','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('330','0','goods221','Portal-Goods-index','1','1428253967','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('331','0','goods222','Portal-Goods-index','1','1428253973','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('332','0','goods223','Portal-Goods-index','1','1428253976','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('333','0','goods224','Portal-Goods-index','1','1428253982','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('334','0','goods225','Portal-Goods-index','1','1428253985','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('335','0','goods226','Portal-Goods-index','1','1428253988','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('336','0','goods227','Portal-Goods-index','1','1428253993','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('337','0','goods228','Portal-Goods-index','1','1428254002','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('338','0','goods229','Portal-Goods-index','1','1428254016','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('339','0','goods230','Portal-Goods-index','1','1428254022','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('340','0','goods231','Portal-Goods-index','1','1428254030','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('341','0','goods232','Portal-Goods-index','1','1428254036','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('342','0','goods233','Portal-Goods-index','1','1428254043','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('343','0','goods234','Portal-Goods-index','1','1428254047','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('344','0','goods235','Portal-Goods-index','1','1428254055','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('345','0','goods236','Portal-Goods-index','1','1428254060','195.154.97.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('346','0','goods101','Portal-Goods-index','1','1428254123','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('347','0','goods190','Portal-Goods-index','1','1428254349','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('348','0','goods175','Portal-Goods-index','1','1428254577','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('349','0','goods112','Portal-Goods-index','1','1428254804','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('350','0','goods179','Portal-Goods-index','1','1428255031','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('351','0','goods104','Portal-Goods-index','1','1428255259','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('352','0','goods142','Portal-Goods-index','1','1428255486','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('353','0','goods176','Portal-Goods-index','1','1428255713','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('354','0','goods106','Portal-Goods-index','1','1428255941','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('355','0','goods143','Portal-Goods-index','1','1428256168','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('356','0','goods144','Portal-Goods-index','1','1428256396','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('357','0','goods113','Portal-Goods-index','1','1428256623','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('358','0','goods156','Portal-Goods-index','1','1428256850','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('359','0','goods118','Portal-Goods-index','1','1428257078','66.249.64.92');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('360','0','goods121','Portal-Goods-index','1','1428257305','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('361','0','goods136','Portal-Goods-index','1','1428257532','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('362','0','goods141','Portal-Goods-index','1','1428257760','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('363','0','goods132','Portal-Goods-index','1','1428258215','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('364','0','goods177','Portal-Goods-index','1','1428258442','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('365','0','goods105','Portal-Goods-index','1','1428258669','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('366','0','goods140','Portal-Goods-index','1','1428258897','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('367','0','goods187','Portal-Goods-index','1','1428259124','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('368','0','goods163','Portal-Goods-index','1','1428259579','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('369','0','goods128','Portal-Goods-index','1','1428259806','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('370','0','goods157','Portal-Goods-index','1','1428260033','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('371','0','goods193','Portal-Goods-index','1','1428260488','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('372','0','goods115','Portal-Goods-index','1','1428260715','66.249.64.148');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('373','0','goods188','Portal-Goods-index','1','1428260943','66.249.64.140');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('374','0','goods189','Portal-Goods-index','1','1428261171','66.249.64.144');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('375','0','goods202','Portal-Goods-index','1','1428292000','42.120.161.46');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('376','0','goods215','Portal-Goods-index','1','1428292003','42.120.160.46');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('377','0','goods207','Portal-Goods-index','1','1428292042','42.156.137.46');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('378','0','goods201','Portal-Goods-index','1','1428292073','42.156.138.46');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('379','0','goods216','Portal-Goods-index','1','1428292074','42.156.136.46');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('380','0','goods198','Portal-Goods-index','1','1428292079','42.156.139.46');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('381','0','goods221','Portal-Goods-index','1','1428292259','42.120.161.46');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('382','0','goods1','Portal-Goods-index','1','1428332450','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('383','0','goods10','Portal-Goods-index','1','1428332472','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('384','0','goods100','Portal-Goods-index','1','1428332493','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('385','0','goods101','Portal-Goods-index','1','1428332496','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('386','0','goods102','Portal-Goods-index','1','1428332499','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('387','0','goods103','Portal-Goods-index','1','1428332502','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('388','0','goods105','Portal-Goods-index','1','1428332553','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('389','0','goods135','Portal-Goods-index','1','1428332556','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('390','0','goods136','Portal-Goods-index','1','1428332581','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('391','0','goods137','Portal-Goods-index','1','1428332585','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('392','0','goods138','Portal-Goods-index','1','1428332591','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('393','0','goods139','Portal-Goods-index','1','1428332593','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('394','0','goods14','Portal-Goods-index','1','1428332605','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('395','0','goods140','Portal-Goods-index','1','1428332607','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('396','0','goods141','Portal-Goods-index','1','1428332632','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('397','0','goods142','Portal-Goods-index','1','1428332638','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('398','0','goods143','Portal-Goods-index','1','1428332687','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('399','0','goods144','Portal-Goods-index','1','1428332730','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('400','0','goods145','Portal-Goods-index','1','1428332748','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('401','0','goods146','Portal-Goods-index','1','1428332801','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('402','0','goods147','Portal-Goods-index','1','1428332822','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('403','0','goods148','Portal-Goods-index','1','1428332872','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('404','0','goods149','Portal-Goods-index','1','1428332892','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('405','0','goods150','Portal-Goods-index','1','1428332897','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('406','0','goods151','Portal-Goods-index','1','1428332918','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('407','0','goods152','Portal-Goods-index','1','1428332926','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('408','0','goods153','Portal-Goods-index','1','1428332946','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('409','0','goods154','Portal-Goods-index','1','1428332964','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('410','0','goods155','Portal-Goods-index','1','1428332986','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('411','0','goods162','Portal-Goods-index','1','1428333006','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('412','0','goods163','Portal-Goods-index','1','1428333009','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('413','0','goods164','Portal-Goods-index','1','1428333019','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('414','0','goods165','Portal-Goods-index','1','1428333029','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('415','0','goods166','Portal-Goods-index','1','1428333049','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('416','0','goods167','Portal-Goods-index','1','1428333054','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('417','0','goods168','Portal-Goods-index','1','1428333098','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('418','0','goods236','Portal-Goods-index','1','1428340052','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('419','0','goods169','Portal-Goods-index','1','1428340860','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('420','0','goods17','Portal-Goods-index','1','1428340962','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('421','0','goods170','Portal-Goods-index','1','1428341002','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('422','0','goods171','Portal-Goods-index','1','1428341075','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('423','0','goods172','Portal-Goods-index','1','1428341112','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('424','0','goods173','Portal-Goods-index','1','1428341195','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('425','0','goods174','Portal-Goods-index','1','1428341214','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('426','0','goods175','Portal-Goods-index','1','1428341220','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('427','0','goods176','Portal-Goods-index','1','1428341225','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('428','0','goods177','Portal-Goods-index','1','1428341243','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('429','0','goods178','Portal-Goods-index','1','1428341246','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('430','0','goods179','Portal-Goods-index','1','1428341251','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('431','0','goods18','Portal-Goods-index','1','1428341255','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('432','0','goods180','Portal-Goods-index','1','1428341258','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('433','0','goods181','Portal-Goods-index','1','1428341269','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('434','0','goods182','Portal-Goods-index','1','1428341286','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('435','0','goods183','Portal-Goods-index','1','1428341295','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('436','0','goods184','Portal-Goods-index','1','1428341304','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('437','0','goods185','Portal-Goods-index','1','1428341316','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('438','0','goods186','Portal-Goods-index','1','1428341328','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('439','0','goods187','Portal-Goods-index','1','1428341337','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('440','0','goods188','Portal-Goods-index','1','1428341345','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('441','0','goods189','Portal-Goods-index','1','1428341348','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('442','0','goods19','Portal-Goods-index','1','1428341425','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('443','0','goods190','Portal-Goods-index','1','1428341428','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('444','0','goods191','Portal-Goods-index','1','1428341475','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('445','0','goods192','Portal-Goods-index','2','1428341609','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('446','0','goods193','Portal-Goods-index','1','1428341620','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('447','0','goods194','Portal-Goods-index','2','1428341686','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('448','0','goods196','Portal-Goods-index','1','1428341818','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('449','0','goods109','Portal-Goods-index','1','1428341831','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('450','0','goods11','Portal-Goods-index','1','1428341854','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('451','0','goods111','Portal-Goods-index','1','1428341868','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('452','0','goods112','Portal-Goods-index','1','1428341873','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('453','0','goods113','Portal-Goods-index','1','1428341889','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('454','0','goods114','Portal-Goods-index','1','1428341895','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('455','0','goods115','Portal-Goods-index','1','1428341900','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('456','0','goods2','Portal-Goods-index','1','1428341901','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('457','0','goods116','Portal-Goods-index','1','1428341909','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('458','0','goods117','Portal-Goods-index','1','1428341913','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('459','0','goods118','Portal-Goods-index','1','1428341917','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('460','0','goods119','Portal-Goods-index','1','1428341931','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('461','0','goods12','Portal-Goods-index','1','1428341940','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('462','0','goods120','Portal-Goods-index','1','1428341952','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('463','0','goods20','Portal-Goods-index','1','1428341965','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('464','0','goods121','Portal-Goods-index','1','1428341968','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('465','0','goods122','Portal-Goods-index','1','1428341972','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('466','0','goods123','Portal-Goods-index','1','1428341976','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('467','0','goods124','Portal-Goods-index','1','1428341981','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('468','0','goods125','Portal-Goods-index','1','1428341984','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('469','0','goods126','Portal-Goods-index','1','1428341988','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('470','0','goods127','Portal-Goods-index','1','1428341999','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('471','0','goods128','Portal-Goods-index','1','1428342005','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('472','0','goods21','Portal-Goods-index','1','1428342006','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('473','0','goods129','Portal-Goods-index','1','1428342010','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('474','0','goods13','Portal-Goods-index','1','1428342014','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('475','0','goods130','Portal-Goods-index','1','1428342018','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('476','0','goods131','Portal-Goods-index','1','1428342021','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('477','0','goods132','Portal-Goods-index','1','1428342027','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('478','0','goods133','Portal-Goods-index','1','1428342031','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('479','0','goods134','Portal-Goods-index','1','1428342043','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('480','0','goods15','Portal-Goods-index','1','1428342067','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('481','0','goods22','Portal-Goods-index','1','1428342071','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('482','0','goods156','Portal-Goods-index','1','1428342074','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('483','0','goods157','Portal-Goods-index','1','1428342077','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('484','0','goods23','Portal-Goods-index','1','1428342089','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('485','0','goods24','Portal-Goods-index','1','1428342151','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('486','0','goods25','Portal-Goods-index','1','1428342168','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('487','0','goods26','Portal-Goods-index','1','1428342183','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('488','0','goods27','Portal-Goods-index','1','1428342246','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('489','0','goods28','Portal-Goods-index','1','1428342308','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('490','0','goods29','Portal-Goods-index','1','1428342312','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('491','0','goods3','Portal-Goods-index','1','1428342404','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('492','0','goods30','Portal-Goods-index','1','1428342441','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('493','0','goods31','Portal-Goods-index','1','1428342473','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('494','0','goods32','Portal-Goods-index','1','1428342499','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('495','0','goods33','Portal-Goods-index','2','1428342606','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('496','0','goods34','Portal-Goods-index','2','1428342681','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('497','0','goods36','Portal-Goods-index','1','1428342805','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('498','0','goods37','Portal-Goods-index','1','1428342837','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('499','0','goods38','Portal-Goods-index','1','1428342850','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('500','0','goods39','Portal-Goods-index','1','1428342900','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('501','0','goods4','Portal-Goods-index','1','1428342918','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('502','0','goods40','Portal-Goods-index','1','1428342920','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('503','0','goods41','Portal-Goods-index','1','1428342923','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('504','0','goods42','Portal-Goods-index','1','1428342926','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('505','0','goods43','Portal-Goods-index','1','1428342929','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('506','0','goods44','Portal-Goods-index','1','1428342940','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('507','0','goods45','Portal-Goods-index','1','1428342947','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('508','0','goods46','Portal-Goods-index','1','1428342950','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('509','0','goods47','Portal-Goods-index','1','1428342964','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('510','0','goods48','Portal-Goods-index','1','1428342972','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('511','0','goods49','Portal-Goods-index','1','1428342991','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('512','0','goods5','Portal-Goods-index','1','1428342994','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('513','0','goods50','Portal-Goods-index','1','1428342997','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('514','0','goods51','Portal-Goods-index','1','1428343000','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('515','0','goods52','Portal-Goods-index','1','1428343003','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('516','0','goods53','Portal-Goods-index','1','1428343026','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('517','0','goods54','Portal-Goods-index','1','1428343031','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('518','0','goods55','Portal-Goods-index','1','1428343043','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('519','0','goods56','Portal-Goods-index','1','1428343050','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('520','0','goods57','Portal-Goods-index','1','1428343055','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('521','0','goods58','Portal-Goods-index','1','1428343065','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('522','0','goods59','Portal-Goods-index','1','1428343088','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('523','0','goods6','Portal-Goods-index','1','1428343094','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('524','0','goods60','Portal-Goods-index','1','1428343100','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('525','0','goods61','Portal-Goods-index','1','1428343124','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('526','0','goods62','Portal-Goods-index','1','1428343130','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('527','0','goods63','Portal-Goods-index','1','1428343133','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('528','0','goods64','Portal-Goods-index','1','1428343136','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('529','0','goods65','Portal-Goods-index','1','1428343144','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('530','0','goods66','Portal-Goods-index','1','1428343148','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('531','0','goods67','Portal-Goods-index','1','1428343151','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('532','0','goods68','Portal-Goods-index','1','1428343154','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('533','0','goods69','Portal-Goods-index','1','1428343157','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('534','0','goods7','Portal-Goods-index','1','1428343160','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('535','0','goods70','Portal-Goods-index','1','1428343166','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('536','0','goods71','Portal-Goods-index','1','1428343177','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('537','0','goods72','Portal-Goods-index','1','1428343179','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('538','0','goods73','Portal-Goods-index','1','1428343183','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('539','0','goods74','Portal-Goods-index','1','1428343190','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('540','0','goods75','Portal-Goods-index','1','1428343196','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('541','0','goods76','Portal-Goods-index','1','1428343198','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('542','0','goods77','Portal-Goods-index','1','1428343202','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('543','0','goods78','Portal-Goods-index','1','1428343207','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('544','0','goods79','Portal-Goods-index','1','1428343210','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('545','0','goods8','Portal-Goods-index','1','1428343223','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('546','0','goods80','Portal-Goods-index','1','1428343241','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('547','0','goods81','Portal-Goods-index','1','1428343244','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('548','0','goods82','Portal-Goods-index','1','1428343247','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('549','0','goods83','Portal-Goods-index','1','1428343253','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('550','0','goods84','Portal-Goods-index','1','1428343259','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('551','0','goods85','Portal-Goods-index','1','1428343262','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('552','0','goods86','Portal-Goods-index','1','1428343284','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('553','0','goods87','Portal-Goods-index','1','1428343290','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('554','0','goods88','Portal-Goods-index','1','1428343293','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('555','0','goods89','Portal-Goods-index','1','1428343297','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('556','0','goods9','Portal-Goods-index','1','1428343300','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('557','0','goods90','Portal-Goods-index','1','1428343303','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('558','0','goods91','Portal-Goods-index','1','1428343308','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('559','0','goods92','Portal-Goods-index','1','1428343330','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('560','0','goods93','Portal-Goods-index','1','1428343333','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('561','0','goods94','Portal-Goods-index','1','1428343336','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('562','0','goods95','Portal-Goods-index','1','1428343342','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('563','0','goods96','Portal-Goods-index','1','1428343364','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('564','0','goods97','Portal-Goods-index','1','1428343367','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('565','0','goods98','Portal-Goods-index','1','1428343379','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('566','0','goods99','Portal-Goods-index','1','1428343392','148.251.183.105');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('567','0','goods158','Portal-Goods-index','1','1428344136','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('568','0','goods159','Portal-Goods-index','1','1428344140','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('569','0','goods16','Portal-Goods-index','1','1428344143','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('570','0','goods160','Portal-Goods-index','1','1428344149','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('571','0','goods161','Portal-Goods-index','1','1428344152','69.64.41.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('572','0','goods198','Portal-Goods-index','1','1428362056','31.205.38.112');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('573','0','goods198','Portal-Goods-index','1','1428362056','101.226.33.240');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('574','0','goods220','Portal-Goods-index','1','1428364866','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('575','0','goods234','Portal-Goods-index','1','1428368365','219.144.130.62');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('576','0','goods233','Portal-Goods-index','1','1428368380','219.144.130.62');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('577','0','goods236','Portal-Goods-index','1','1428368400','219.144.130.62');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('578','0','goods206','Portal-Goods-index','1','1428381179','42.156.139.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('579','0','goods232','Portal-Goods-index','1','1428381216','42.120.161.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('580','0','goods196','Portal-Goods-index','1','1428381243','42.156.136.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('581','0','goods211','Portal-Goods-index','1','1428381329','42.156.136.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('582','0','goods208','Portal-Goods-index','1','1428381330','42.156.137.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('583','0','goods219','Portal-Goods-index','1','1428381333','42.120.160.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('584','0','goods35','Portal-Goods-index','1','1428386408','113.205.47.31');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('585','0','goods34','Portal-Goods-index','1','1428386423','113.205.47.31');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('586','0','goods235','Portal-Goods-index','1','1428396041','58.48.10.161');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('587','0','goods231','Portal-Goods-index','1','1428397917','171.110.181.118');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('588','1','goods235','Portal-Goods-index','1','1428398710','171.110.181.118');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('589','1','goods228','Portal-Goods-index','1','1428398753','171.110.181.118');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('590','0','goods235','Portal-Goods-index','2','1428399741','222.182.157.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('591','0','goods236','Portal-Goods-index','1','1428399375','218.6.244.126');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('592','0','goods204','Portal-Goods-index','1','1428407338','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('593','0','goods210','Portal-Goods-index','1','1428407348','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('594','0','goods218','Portal-Goods-index','1','1428407360','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('595','0','goods232','Portal-Goods-index','1','1428407364','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('596','0','goods202','Portal-Goods-index','1','1428407369','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('597','0','goods235','Portal-Goods-index','1','1428407370','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('598','0','goods200','Portal-Goods-index','1','1428407374','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('599','0','goods217','Portal-Goods-index','1','1428407381','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('600','0','goods197','Portal-Goods-index','1','1428407384','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('601','0','goods199','Portal-Goods-index','1','1428407389','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('602','0','goods216','Portal-Goods-index','1','1428407398','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('603','0','goods198','Portal-Goods-index','1','1428407416','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('604','0','goods206','Portal-Goods-index','1','1428407801','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('605','0','goods233','Portal-Goods-index','1','1428409970','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('606','0','goods234','Portal-Goods-index','1','1428410944','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('607','0','goods235','Portal-Goods-index','1','1428411543','123.163.26.44');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('608','0','goods200','Portal-Goods-index','1','1428417800','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('609','0','goods231','Portal-Goods-index','1','1428417876','112.111.221.220');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('610','0','goods227','Portal-Goods-index','1','1428418299','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('611','0','goods226','Portal-Goods-index','1','1428419850','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('612','0','goods197','Portal-Goods-index','1','1428422603','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('613','0','goods104','Portal-Goods-index','1','1428426596','198.245.62.10');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('614','0','goods106','Portal-Goods-index','1','1428426599','198.245.62.10');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('615','0','goods110','Portal-Goods-index','1','1428426603','198.245.62.10');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('616','0','goods107','Portal-Goods-index','1','1428429062','198.245.62.10');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('617','0','goods108','Portal-Goods-index','1','1428429066','198.245.62.10');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('618','0','goods215','Portal-Goods-index','1','1428432509','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('619','0','goods211','Portal-Goods-index','1','1428434193','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('620','0','goods223','Portal-Goods-index','1','1428434349','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('621','0','goods212','Portal-Goods-index','1','1428438373','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('622','0','goods196','Portal-Goods-index','1','1428438504','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('623','0','goods228','Portal-Goods-index','1','1428439904','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('624','0','goods203','Portal-Goods-index','1','1428453961','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('625','0','goods229','Portal-Goods-index','2','1428676757','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('626','0','goods230','Portal-Goods-index','1','1428455377','110.202.70.234');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('627','0','goods230','Portal-Goods-index','1','1428459314','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('628','0','goods200','Portal-Goods-index','1','1428464927','42.120.161.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('629','0','goods213','Portal-Goods-index','1','1428464990','42.156.137.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('630','0','goods197','Portal-Goods-index','1','1428465010','42.120.161.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('631','0','goods227','Portal-Goods-index','1','1428465035','42.120.160.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('632','0','goods204','Portal-Goods-index','1','1428465041','42.156.138.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('633','0','goods228','Portal-Goods-index','1','1428465046','42.120.160.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('634','0','goods224','Portal-Goods-index','1','1428465049','42.156.139.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('635','0','goods214','Portal-Goods-index','1','1428465053','42.156.136.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('636','0','goods199','Portal-Goods-index','1','1428465087','42.156.138.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('637','0','goods207','Portal-Goods-index','1','1428471802','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('638','0','goods220','Portal-Goods-index','1','1428472883','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('639','0','goods108','Portal-Goods-index','1','1428481250','117.87.3.66');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('640','0','goods108','Portal-Goods-index','1','1428481251','101.226.66.187');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('641','0','goods78','Portal-Goods-index','1','1428481294','117.87.3.66');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('642','0','goods208','Portal-Goods-index','1','1428483722','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('643','0','goods214','Portal-Goods-index','1','1428494487','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('644','0','goods201','Portal-Goods-index','1','1428498161','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('645','0','goods209','Portal-Goods-index','1','1428537185','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('646','0','goods218','Portal-Goods-index','1','1428548670','49.84.117.81');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('647','0','goods197','Portal-Goods-index','1','1428548679','49.84.117.81');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('648','0','goods235','Portal-Goods-index','1','1428548686','116.1.82.99');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('649','0','goods223','Portal-Goods-index','1','1428548688','49.84.117.81');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('650','0','goods146','Portal-Goods-index','1','1428548698','49.84.117.81');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('651','0','goods35','Portal-Goods-index','1','1428548708','49.84.117.81');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('652','0','goods14','Portal-Goods-index','1','1428548714','49.84.117.81');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('653','0','goods1','Portal-Goods-index','3','1428559677','49.84.117.81');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('654','0','goods4','Portal-Goods-index','3','1428559666','49.84.117.81');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('655','0','goods7','Portal-Goods-index','1','1428548737','49.84.117.81');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('656','0','goods3','Portal-Goods-index','1','1428548742','116.1.82.99');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('657','0','goods2','Portal-Goods-index','1','1428548752','49.84.117.81');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('658','0','goods2','Portal-Goods-index','1','1428548752','112.64.235.247');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('659','0','goods39','Portal-Goods-index','1','1428548789','116.1.82.99');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('660','0','goods3','Portal-Goods-index','1','1428548892','49.84.117.81');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('661','0','goods3','Portal-Goods-index','1','1428548892','101.226.89.123');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('662','0','goods209','Portal-Goods-index','1','1428552184','110.52.135.21');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('663','0','goods209','Portal-Goods-index','1','1428552235','106.120.160.109');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('664','0','goods209','Portal-Goods-index','1','1428552292','101.199.108.54');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('665','0','goods223','Portal-Goods-index','1','1428555391','42.156.138.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('666','0','goods46','Portal-Goods-index','1','1428555392','42.156.137.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('667','0','goods203','Portal-Goods-index','1','1428555392','42.156.136.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('668','0','goods229','Portal-Goods-index','1','1428555402','42.120.161.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('669','0','goods70','Portal-Goods-index','1','1428555405','42.156.138.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('670','0','goods147','Portal-Goods-index','1','1428555406','42.120.161.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('671','0','goods74','Portal-Goods-index','1','1428555413','42.156.137.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('672','0','goods84','Portal-Goods-index','1','1428555415','42.156.139.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('673','0','goods113','Portal-Goods-index','1','1428555427','42.156.137.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('674','0','goods134','Portal-Goods-index','1','1428555433','42.156.139.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('675','0','goods71','Portal-Goods-index','1','1428555435','42.156.138.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('676','0','goods234','Portal-Goods-index','1','1428555440','42.156.136.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('677','0','goods65','Portal-Goods-index','1','1428555448','42.156.137.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('678','0','goods210','Portal-Goods-index','1','1428555455','42.156.138.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('679','0','goods230','Portal-Goods-index','1','1428555467','42.156.136.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('680','0','goods13','Portal-Goods-index','1','1428555490','42.120.161.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('681','0','goods12','Portal-Goods-index','1','1428555496','42.156.139.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('682','0','goods112','Portal-Goods-index','1','1428555503','42.156.137.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('683','0','goods127','Portal-Goods-index','1','1428555511','42.120.160.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('684','0','goods116','Portal-Goods-index','1','1428555514','42.156.139.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('685','0','goods205','Portal-Goods-index','1','1428557930','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('686','0','goods236','Portal-Goods-index','2','1428569925','49.84.117.81');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('687','0','goods236','Portal-Goods-index','1','1428559617','180.153.206.33');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('688','0','goods235','Portal-Goods-index','1','1428559621','49.84.117.81');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('689','0','goods16','Portal-Goods-index','1','1428559658','49.84.117.81');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('690','0','goods32','Portal-Goods-index','1','1428570002','49.84.117.81');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('691','3','goods235','Portal-Goods-index','1','1428570387','49.84.117.81');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('692','0','goods236','Portal-Goods-index','1','1428571134','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('693','0','goods229','Portal-Goods-index','1','1428572427','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('694','0','goods225','Portal-Goods-index','1','1428581840','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('695','0','goods222','Portal-Goods-index','1','1428583768','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('696','0','goods235','Portal-Goods-index','1','1428586364','60.181.45.163');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('697','0','goods97','Portal-Goods-index','1','1428596396','66.249.75.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('698','0','goods217','Portal-Goods-index','1','1428602752','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('699','0','goods212','Portal-Goods-index','2','1428682606','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('700','0','goods210','Portal-Goods-index','1','1428613127','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('701','0','goods85','Portal-Goods-index','2','1428694529','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('702','0','goods223','Portal-Goods-index','1','1428621889','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('703','0','goods105','Portal-Goods-index','2','1428687383','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('704','0','goods29','Portal-Goods-index','2','1428688095','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('705','0','goods89','Portal-Goods-index','2','1429129116','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('706','0','goods235','Portal-Goods-index','1','1428628120','118.78.153.11');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('707','0','goods224','Portal-Goods-index','1','1428630220','171.119.250.107');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('708','0','goods203','Portal-Goods-index','1','1428630563','218.76.37.3');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('709','0','goods226','Portal-Goods-index','1','1428630846','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('710','0','goods221','Portal-Goods-index','1','1428633623','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('711','2','goods235','Portal-Goods-index','1','1428635608','180.125.245.152');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('712','0','goods199','Portal-Goods-index','1','1428637610','125.70.155.243');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('713','0','goods37','Portal-Goods-index','1','1428643461','125.70.155.243');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('714','0','goods234','Portal-Goods-index','1','1428645322','125.70.155.243');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('715','0','goods233','Portal-Goods-index','1','1428645348','125.70.155.243');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('716','0','goods228','Portal-Goods-index','1','1428645352','125.70.155.243');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('717','0','goods38','Portal-Goods-index','1','1428645368','125.70.155.243');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('718','0','goods','Portal-Goods-index','2','1428646739','125.70.155.243');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('719','0','goods237','Portal-Goods-index','3','1428649534','180.125.245.152');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('720','0','goods238','Portal-Goods-index','1','1428649455','180.125.245.152');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('721','0','goods237','Portal-Goods-index','1','1428649737','112.64.235.90');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('722','0','goods238','Portal-Goods-index','1','1428650701','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('723','0','goods39','Portal-Goods-index','1','1428654020','125.70.155.243');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('724','0','posts20','Portal-Article-index','1','1428654721','125.70.155.243');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('725','0','goods277','Portal-Goods-index','1','1428654799','125.70.155.243');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('726','0','goods102','Portal-Goods-index','1','1428655572','66.249.73.135');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('727','0','goods78','Portal-Goods-index','3','1428761676','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('728','0','goods272','Portal-Goods-index','1','1428659488','125.70.155.243');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('729','0','goods90','Portal-Goods-index','1','1428666136','42.156.138.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('730','0','goods225','Portal-Goods-index','1','1428666151','42.120.161.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('731','0','goods81','Portal-Goods-index','1','1428666152','42.156.137.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('732','0','goods212','Portal-Goods-index','1','1428666154','42.120.160.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('733','0','goods57','Portal-Goods-index','1','1428666174','42.120.161.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('734','0','goods131','Portal-Goods-index','1','1428666176','42.156.136.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('735','0','goods123','Portal-Goods-index','1','1428666178','42.156.137.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('736','0','goods8','Portal-Goods-index','1','1428666180','42.120.160.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('737','0','goods38','Portal-Goods-index','1','1428666190','42.120.161.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('738','0','goods236','Portal-Goods-index','1','1428666196','42.156.137.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('739','0','goods92','Portal-Goods-index','1','1428666222','42.156.138.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('740','0','goods44','Portal-Goods-index','1','1428666225','42.156.136.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('741','0','goods42','Portal-Goods-index','1','1428666235','42.156.139.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('742','0','goods233','Portal-Goods-index','1','1428666241','42.120.161.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('743','0','goods9','Portal-Goods-index','1','1428666241','42.156.136.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('744','0','goods40','Portal-Goods-index','1','1428666241','42.156.137.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('745','0','goods82','Portal-Goods-index','1','1428666247','42.156.137.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('746','0','goods33','Portal-Goods-index','1','1428666253','42.156.138.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('747','0','goods4','Portal-Goods-index','1','1428666257','42.120.161.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('748','0','goods231','Portal-Goods-index','1','1428666258','42.156.136.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('749','0','goods20','Portal-Goods-index','1','1428666272','42.156.137.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('750','0','goods32','Portal-Goods-index','1','1428666281','42.120.160.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('751','0','goods98','Portal-Goods-index','1','1428666286','42.156.139.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('752','0','goods153','Portal-Goods-index','1','1428666315','42.156.138.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('753','0','goods209','Portal-Goods-index','1','1428666332','42.120.161.57');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('754','0','goods255','Portal-Goods-index','2','1429129555','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('755','0','goods240','Portal-Goods-index','2','1428746989','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('756','0','goods100','Portal-Goods-index','1','1428673858','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('757','0','goods232','Portal-Goods-index','1','1428673979','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('758','0','goods202','Portal-Goods-index','2','1428761301','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('759','0','goods208','Portal-Goods-index','1','1428677683','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('760','0','goods106','Portal-Goods-index','1','1428678957','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('761','0','goods222','Portal-Goods-index','1','1428679928','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('762','0','goods63','Portal-Goods-index','1','1428681481','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('763','0','goods89','Portal-Goods-index','1','1428681813','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('764','0','goods37','Portal-Goods-index','1','1428681928','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('765','0','goods18','Portal-Goods-index','1','1428682036','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('766','0','goods228','Portal-Goods-index','1','1428682375','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('767','0','goods204','Portal-Goods-index','1','1428682840','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('768','0','goods209','Portal-Goods-index','1','1428682957','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('769','0','goods61','Portal-Goods-index','1','1428683793','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('770','0','goods103','Portal-Goods-index','1','1428684245','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('771','0','goods37','Portal-Goods-index','1','1428684291','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('772','0','goods33','Portal-Goods-index','1','1428684590','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('773','0','goods156','Portal-Goods-index','1','1428684706','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('774','0','goods221','Portal-Goods-index','1','1428684964','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('775','0','goods','Portal-Goods-index','1','1428685262','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('776','0','goods234','Portal-Goods-index','1','1428685391','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('777','0','goods227','Portal-Goods-index','1','1428685675','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('778','0','goods206','Portal-Goods-index','1','1428685817','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('779','0','goods44','Portal-Goods-index','1','1428686671','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('780','0','goods94','Portal-Goods-index','2','1429129643','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('781','0','goods98','Portal-Goods-index','2','1428700303','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('782','0','goods46','Portal-Goods-index','2','1428809626','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('783','0','goods110','Portal-Goods-index','2','1428845493','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('784','0','goods90','Portal-Goods-index','1','1428688664','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('785','0','goods110','Portal-Goods-index','1','1428688667','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('786','0','goods22','Portal-Goods-index','1','1428688806','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('787','0','goods92','Portal-Goods-index','1','1428688948','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('788','0','goods80','Portal-Goods-index','1','1428689091','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('789','0','goods84','Portal-Goods-index','1','1428689233','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('790','0','goods88','Portal-Goods-index','2','1428772604','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('791','0','goods113','Portal-Goods-index','2','1428747404','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('792','0','goods106','Portal-Goods-index','1','1428690134','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('793','0','goods88','Portal-Goods-index','1','1428691593','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('794','0','goods100','Portal-Goods-index','1','1428693940','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('795','0','goods133','Portal-Goods-index','1','1428694232','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('796','0','goods49','Portal-Goods-index','1','1428694380','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('797','0','goods14','Portal-Goods-index','2','1428743592','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('798','0','goods102','Portal-Goods-index','1','1428695068','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('799','0','goods50','Portal-Goods-index','1','1428697265','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('800','0','goods235','Portal-Goods-index','1','1428697381','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('801','0','goods81','Portal-Goods-index','1','1428697407','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('802','0','goods54','Portal-Goods-index','2','1428737949','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('803','0','goods207','Portal-Goods-index','1','1428703226','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('804','0','goods186','Portal-Goods-index','1','1428703679','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('805','0','goods126','Portal-Goods-index','3','1428853932','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('806','0','goods266','Portal-Goods-index','1','1428705729','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('807','0','goods247','Portal-Goods-index','1','1428706409','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('808','0','goods260','Portal-Goods-index','1','1428706635','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('809','0','goods261','Portal-Goods-index','1','1428706863','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('810','0','goods241','Portal-Goods-index','1','1428707100','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('811','0','goods245','Portal-Goods-index','1','1428707318','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('812','0','goods45','Portal-Goods-index','1','1428707396','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('813','0','goods264','Portal-Goods-index','1','1428707545','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('814','0','goods273','Portal-Goods-index','1','1428707773','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('815','0','goods263','Portal-Goods-index','1','1428708000','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('816','0','goods267','Portal-Goods-index','1','1428708227','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('817','0','goods259','Portal-Goods-index','2','1429129380','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('818','0','goods244','Portal-Goods-index','1','1428708682','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('819','0','goods269','Portal-Goods-index','1','1428708909','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('820','0','goods275','Portal-Goods-index','1','1428709137','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('821','0','goods268','Portal-Goods-index','1','1428709364','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('822','0','goods251','Portal-Goods-index','1','1428709591','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('823','0','goods278','Portal-Goods-index','1','1428709819','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('824','0','goods258','Portal-Goods-index','1','1428710046','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('825','0','goods277','Portal-Goods-index','2','1429128972','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('826','0','goods147','Portal-Goods-index','1','1428710396','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('827','0','goods272','Portal-Goods-index','1','1428710501','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('828','0','goods249','Portal-Goods-index','2','1429129467','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('829','0','goods112','Portal-Goods-index','1','1428710796','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('830','0','goods252','Portal-Goods-index','1','1428710956','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('831','0','goods248','Portal-Goods-index','1','1428711186','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('832','0','goods256','Portal-Goods-index','1','1428711410','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('833','0','goods253','Portal-Goods-index','1','1428711638','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('834','0','goods276','Portal-Goods-index','1','1428711865','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('835','0','goods242','Portal-Goods-index','1','1428712093','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('836','0','goods200','Portal-Goods-index','1','1428712126','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('837','0','goods274','Portal-Goods-index','2','1429128286','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('838','0','goods257','Portal-Goods-index','1','1428712775','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('839','0','goods76','Portal-Goods-index','1','1428712996','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('840','0','goods262','Portal-Goods-index','1','1428713002','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('841','0','goods116','Portal-Goods-index','1','1428713197','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('842','0','goods250','Portal-Goods-index','1','1428713230','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('843','0','goods39','Portal-Goods-index','1','1428713256','60.222.98.63');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('844','0','goods278','Portal-Goods-index','1','1428713340','60.222.98.63');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('845','0','goods52','Portal-Goods-index','1','1428713396','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('846','0','goods271','Portal-Goods-index','1','1428713684','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('847','0','goods246','Portal-Goods-index','1','1428713912','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('848','0','goods265','Portal-Goods-index','1','1428714139','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('849','0','goods270','Portal-Goods-index','1','1428714366','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('850','0','goods','Portal-Goods-index','1','1428714594','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('851','0','goods243','Portal-Goods-index','1','1428720961','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('852','0','goods112','Portal-Goods-index','1','1428721997','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('853','0','goods147','Portal-Goods-index','1','1428722597','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('854','0','goods103','Portal-Goods-index','1','1428724397','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('855','0','goods48','Portal-Goods-index','1','1428724597','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('856','0','goods215','Portal-Goods-index','1','1428729664','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('857','0','goods239','Portal-Goods-index','1','1428735968','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('858','0','goods277','Portal-Goods-index','1','1428738359','114.97.210.168');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('859','0','goods276','Portal-Goods-index','1','1428738402','114.97.210.168');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('860','0','goods50','Portal-Goods-index','1','1428740338','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('861','0','goods94','Portal-Goods-index','1','1428742677','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('862','0','goods277','Portal-Goods-index','1','1428758215','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('863','0','goods90','Portal-Goods-index','1','1428758600','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('864','0','goods108','Portal-Goods-index','1','1428759181','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('865','0','goods78','Portal-Goods-index','1','1428772639','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('866','0','goods198','Portal-Goods-index','1','1428784830','182.118.22.239');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('867','0','goods197','Portal-Goods-index','1','1428784863','101.226.167.221');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('868','0','goods202','Portal-Goods-index','1','1428784916','101.226.168.252');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('869','0','goods201','Portal-Goods-index','1','1428784998','101.226.167.198');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('870','0','goods253','Portal-Goods-index','1','1428785043','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('871','0','goods208','Portal-Goods-index','1','1428785111','101.226.168.225');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('872','0','goods212','Portal-Goods-index','1','1428785131','101.226.169.228');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('873','0','goods210','Portal-Goods-index','1','1428785163','101.226.168.230');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('874','0','goods213','Portal-Goods-index','1','1428785247','101.226.168.225');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('875','0','goods214','Portal-Goods-index','1','1428785300','182.118.25.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('876','0','goods207','Portal-Goods-index','1','1428785355','182.118.20.211');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('877','0','goods219','Portal-Goods-index','1','1428785389','101.226.169.229');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('878','0','goods203','Portal-Goods-index','1','1428785389','182.118.22.201');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('879','0','goods211','Portal-Goods-index','1','1428785444','101.226.167.232');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('880','0','goods199','Portal-Goods-index','1','1428785476','101.226.168.242');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('881','0','goods216','Portal-Goods-index','1','1428785560','182.118.22.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('882','0','goods200','Portal-Goods-index','1','1428785573','101.226.169.201');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('883','0','goods215','Portal-Goods-index','1','1428785613','182.118.21.234');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('884','0','goods204','Portal-Goods-index','1','1428785696','101.226.166.240');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('885','0','goods225','Portal-Goods-index','1','1428785699','182.118.20.217');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('886','0','goods218','Portal-Goods-index','1','1428785747','101.226.167.198');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('887','0','goods230','Portal-Goods-index','1','1428785780','182.118.21.224');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('888','0','goods220','Portal-Goods-index','1','1428785848','182.118.20.231');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('889','0','goods205','Portal-Goods-index','1','1428785852','182.118.20.226');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('890','0','goods231','Portal-Goods-index','1','1428785859','101.226.168.253');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('891','0','goods234','Portal-Goods-index','1','1428785862','182.118.21.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('892','0','goods217','Portal-Goods-index','1','1428785869','101.226.166.251');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('893','0','goods226','Portal-Goods-index','1','1428785880','101.226.166.248');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('894','0','goods209','Portal-Goods-index','1','1428786329','182.118.20.170');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('895','0','goods232','Portal-Goods-index','1','1428786459','101.226.166.226');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('896','0','goods236','Portal-Goods-index','1','1428786487','182.118.20.224');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('897','0','goods222','Portal-Goods-index','1','1428786488','182.118.20.170');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('898','0','goods229','Portal-Goods-index','1','1428786523','101.226.168.196');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('899','0','goods228','Portal-Goods-index','1','1428786525','182.118.21.209');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('900','0','goods223','Portal-Goods-index','1','1428786550','182.118.20.171');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('901','0','goods224','Portal-Goods-index','1','1428786565','101.226.166.212');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('902','0','goods227','Portal-Goods-index','1','1428786599','182.118.20.224');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('903','0','goods278','Portal-Goods-index','1','1428801758','218.6.244.126');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('904','0','goods252','Portal-Goods-index','1','1428809260','180.158.178.8');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('905','0','goods252','Portal-Goods-index','1','1428809260','180.153.201.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('906','0','goods56','Portal-Goods-index','2','1428818889','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('907','0','goods242','Portal-Goods-index','2','1428818710','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('908','0','goods257','Portal-Goods-index','2','1428819781','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('909','0','goods265','Portal-Goods-index','1','1428813928','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('910','0','goods266','Portal-Goods-index','1','1428814195','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('911','0','goods258','Portal-Goods-index','2','1428853534','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('912','0','goods244','Portal-Goods-index','2','1428819424','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('913','0','goods243','Portal-Goods-index','1','1428814552','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('914','0','goods266','Portal-Goods-index','1','1428817529','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('915','0','goods54','Portal-Goods-index','1','1428818353','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('916','0','goods243','Portal-Goods-index','2','1429128501','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('917','0','goods258','Portal-Goods-index','1','1428819513','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('918','0','goods197','Portal-Goods-index','1','1428819848','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('919','0','goods265','Portal-Goods-index','1','1428819870','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('920','0','goods213','Portal-Goods-index','1','1428830168','68.180.228.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('921','0','goods28','Portal-Goods-index','1','1428831104','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('922','0','goods113','Portal-Goods-index','1','1428835137','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('923','0','goods277','Portal-Goods-index','1','1428845704','36.42.224.5');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('924','0','goods246','Portal-Goods-index','2','1429128063','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('925','0','goods81','Portal-Goods-index','2','1429129906','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('926','0','goods257','Portal-Goods-index','1','1428852322','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('927','0','goods94','Portal-Goods-index','1','1428860090','66.249.67.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('928','0','goods258','Portal-Goods-index','1','1428862606','66.249.67.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('929','0','goods37','Portal-Goods-index','1','1428863232','66.249.67.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('930','0','goods56','Portal-Goods-index','1','1428865790','66.249.67.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('931','0','goods240','Portal-Goods-index','1','1428868969','66.249.67.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('932','0','goods204','Portal-Goods-index','1','1428872148','66.249.67.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('933','0','goods248','Portal-Goods-index','1','1428876410','66.249.67.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('934','0','goods243','Portal-Goods-index','1','1428878515','66.249.67.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('935','0','goods261','Portal-Goods-index','1','1428880427','66.249.67.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('936','0','goods239','Portal-Goods-index','1','1428881034','182.118.22.210');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('937','0','goods242','Portal-Goods-index','1','1428881034','182.118.25.216');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('938','0','goods243','Portal-Goods-index','1','1428881198','182.118.21.246');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('939','0','goods244','Portal-Goods-index','1','1428881222','182.118.20.203');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('940','0','goods245','Portal-Goods-index','1','1428881248','182.118.22.243');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('941','0','goods246','Portal-Goods-index','1','1428881262','101.226.167.243');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('942','0','goods250','Portal-Goods-index','1','1428881284','182.118.21.208');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('943','0','goods258','Portal-Goods-index','1','1428881307','182.118.20.206');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('944','0','goods255','Portal-Goods-index','1','1428881427','101.226.168.233');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('945','0','goods241','Portal-Goods-index','1','1428881447','101.226.166.229');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('946','0','goods256','Portal-Goods-index','1','1428881546','182.118.25.228');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('947','0','goods247','Portal-Goods-index','1','1428881562','182.118.25.210');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('948','0','goods257','Portal-Goods-index','1','1428881569','182.118.20.164');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('949','0','goods260','Portal-Goods-index','1','1428881570','182.118.22.141');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('950','0','goods252','Portal-Goods-index','1','1428881588','101.226.168.228');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('951','0','goods269','Portal-Goods-index','1','1428881654','101.226.169.214');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('952','0','goods248','Portal-Goods-index','1','1428881701','182.118.20.171');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('953','0','goods265','Portal-Goods-index','1','1428881703','182.118.25.217');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('954','0','goods264','Portal-Goods-index','1','1428881721','66.249.67.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('955','0','goods263','Portal-Goods-index','1','1428881738','182.118.22.210');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('956','0','goods266','Portal-Goods-index','1','1428881747','182.118.20.162');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('957','0','goods253','Portal-Goods-index','1','1428881780','101.226.166.204');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('958','0','goods254','Portal-Goods-index','1','1428881844','101.226.169.230');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('959','0','goods277','Portal-Goods-index','1','1428881858','101.226.169.210');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('960','0','goods273','Portal-Goods-index','1','1428881941','182.118.20.217');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('961','0','goods259','Portal-Goods-index','1','1428881950','101.226.166.203');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('962','0','goods272','Portal-Goods-index','1','1428881952','182.118.22.217');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('963','0','goods262','Portal-Goods-index','1','1428881989','182.118.20.235');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('964','0','goods268','Portal-Goods-index','1','1428882071','182.118.20.169');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('965','0','goods274','Portal-Goods-index','1','1428882071','182.118.22.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('966','0','goods276','Portal-Goods-index','1','1428882092','101.226.168.198');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('967','0','goods275','Portal-Goods-index','1','1428882134','182.118.20.173');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('968','0','goods264','Portal-Goods-index','1','1428882260','101.226.166.231');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('969','0','goods270','Portal-Goods-index','1','1428882322','182.118.25.228');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('970','0','goods249','Portal-Goods-index','1','1428882332','182.118.20.174');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('971','0','goods271','Portal-Goods-index','1','1428882493','182.118.20.226');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('972','0','goods278','Portal-Goods-index','1','1428882599','182.118.20.163');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('973','0','goods214','Portal-Goods-index','1','1428886692','66.249.67.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('974','0','goods250','Portal-Goods-index','1','1428886776','66.249.67.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('975','0','goods202','Portal-Goods-index','1','1428886903','66.249.67.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('976','0','goods256','Portal-Goods-index','1','1428890393','66.249.67.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('977','0','goods39','Portal-Goods-index','1','1428894874','121.233.125.122');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('978','0','goods277','Portal-Goods-index','1','1428894882','121.233.125.122');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('979','0','goods277','Portal-Goods-index','1','1428894883','101.226.33.237');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('980','0','goods275','Portal-Goods-index','1','1428894887','121.233.125.122');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('981','0','goods275','Portal-Goods-index','1','1428894888','101.226.33.216');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('982','0','goods260','Portal-Goods-index','1','1428894892','121.233.125.122');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('983','0','goods245','Portal-Goods-index','1','1428894897','121.233.125.122');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('984','0','goods245','Portal-Goods-index','1','1428894897','112.65.193.15');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('985','0','goods270','Portal-Goods-index','1','1428894907','121.233.125.122');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('986','0','goods231','Portal-Goods-index','1','1428894916','121.233.125.122');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('987','0','goods231','Portal-Goods-index','1','1428894916','180.153.201.216');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('988','0','goods7','Portal-Goods-index','1','1428895010','121.233.125.122');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('989','0','goods7','Portal-Goods-index','1','1428895010','101.226.33.237');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('990','0','goods260','Portal-Goods-index','1','1428895705','180.153.205.254');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('991','0','goods270','Portal-Goods-index','1','1428895713','101.226.66.180');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('992','0','goods100','Portal-Goods-index','1','1428897425','66.249.67.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('993','0','goods253','Portal-Goods-index','1','1428900654','66.249.67.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('994','0','goods224','Portal-Goods-index','1','1428901905','66.249.67.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('995','0','goods108','Portal-Goods-index','1','1428904714','66.249.67.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('996','0','goods226','Portal-Goods-index','1','1428904899','66.249.67.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('997','0','goods217','Portal-Goods-index','1','1428906748','66.249.67.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('998','0','goods276','Portal-Goods-index','1','1428908592','66.249.67.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('999','0','goods63','Portal-Goods-index','1','1428908597','42.156.137.98');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1000','0','goods277','Portal-Goods-index','1','1428908616','183.93.241.55');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1001','0','goods3','Portal-Goods-index','1','1428908644','42.156.139.98');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1002','0','goods222','Portal-Goods-index','1','1428908768','66.249.67.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1003','0','goods207','Portal-Goods-index','1','1428910391','66.249.67.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1004','0','goods29','Portal-Goods-index','1','1428910806','66.249.67.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1005','0','goods265','Portal-Goods-index','1','1428911821','66.249.67.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1006','0','goods212','Portal-Goods-index','1','1428912363','66.249.67.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1007','0','goods217','Portal-Goods-index','1','1428912771','66.249.67.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1008','0','goods245','Portal-Goods-index','1','1428913008','66.249.67.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1009','0','goods52','Portal-Goods-index','1','1428914853','66.249.67.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1010','0','goods200','Portal-Goods-index','1','1428915774','66.249.67.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1011','3','goods278','Portal-Goods-index','1','1428916588','121.233.125.122');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1012','0','goods241','Portal-Goods-index','2','1428924239','66.249.67.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1013','0','goods251','Portal-Goods-index','1','1428920900','66.249.67.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1014','0','goods262','Portal-Goods-index','2','1428924344','66.249.67.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1015','0','goods272','Portal-Goods-index','1','1428921213','66.249.67.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1016','0','goods263','Portal-Goods-index','1','1428921318','66.249.67.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1017','0','goods278','Portal-Goods-index','1','1428921422','66.249.67.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1018','0','goods273','Portal-Goods-index','1','1428921526','66.249.67.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1019','0','goods221','Portal-Goods-index','1','1428922966','66.249.67.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1020','0','goods251','Portal-Goods-index','2','1428926532','66.249.67.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1021','0','goods255','Portal-Goods-index','1','1428924545','66.249.67.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1022','0','goods273','Portal-Goods-index','1','1428926533','66.249.67.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1023','0','goods197','Portal-Goods-index','14','1429210809','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1024','0','goods81','Portal-Goods-index','14','1429236524','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1025','0','goods22','Portal-Goods-index','1','1428927476','42.156.136.98');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1026','0','goods83','Portal-Goods-index','1','1428927491','42.156.138.98');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1027','0','goods49','Portal-Goods-index','1','1428927556','42.120.160.98');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1028','0','goods111','Portal-Goods-index','1','1428927572','42.156.137.98');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1029','0','goods110','Portal-Goods-index','1','1428927589','42.156.136.98');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1030','0','goods89','Portal-Goods-index','1','1428927603','42.120.161.98');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1031','0','goods119','Portal-Goods-index','1','1428927665','42.156.136.98');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1032','0','goods2','Portal-Goods-index','1','1428927684','42.156.136.98');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1033','0','goods41','Portal-Goods-index','1','1428927685','42.120.160.98');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1034','0','goods272','Portal-Goods-index','18','1429214339','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1035','0','goods263','Portal-Goods-index','12','1429237909','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1036','0','goods278','Portal-Goods-index','9','1429244929','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1037','0','goods198','Portal-Goods-index','9','1429230489','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1038','0','goods113','Portal-Goods-index','13','1429165544','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1039','0','goods228','Portal-Goods-index','3','1429185763','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1040','0','goods278','Portal-Goods-index','7','1429190505','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1041','0','goods197','Portal-Goods-index','10','1429181548','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1042','0','goods81','Portal-Goods-index','12','1429241201','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1043','0','goods273','Portal-Goods-index','13','1429234045','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1044','0','goods255','Portal-Goods-index','10','1429180304','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1045','0','goods258','Portal-Goods-index','16','1429241539','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1046','0','goods84','Portal-Goods-index','1','1428934384','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1047','0','goods113','Portal-Goods-index','13','1429244014','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1048','0','goods273','Portal-Goods-index','12','1429216428','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1049','0','goods263','Portal-Goods-index','19','1429247894','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1050','0','goods215','Portal-Goods-index','15','1429250089','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1051','0','goods85','Portal-Goods-index','2','1429067656','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1052','0','goods258','Portal-Goods-index','18','1429198480','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1053','0','goods272','Portal-Goods-index','10','1429247806','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1054','0','goods103','Portal-Goods-index','1','1428938034','182.118.21.241');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1055','0','goods107','Portal-Goods-index','1','1428938068','182.118.20.201');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1056','0','goods105','Portal-Goods-index','1','1428938085','182.118.25.206');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1057','0','goods108','Portal-Goods-index','1','1428938104','182.118.25.245');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1058','0','goods106','Portal-Goods-index','1','1428938147','101.226.166.245');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1059','0','goods101','Portal-Goods-index','1','1428938171','101.226.166.226');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1060','0','goods109','Portal-Goods-index','1','1428938220','182.118.22.232');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1061','0','goods104','Portal-Goods-index','1','1428938240','182.118.25.233');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1062','0','goods10','Portal-Goods-index','1','1428938252','101.226.169.213');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1063','0','goods102','Portal-Goods-index','1','1428938351','182.118.21.230');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1064','0','goods119','Portal-Goods-index','1','1428938566','101.226.168.210');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1065','0','goods100','Portal-Goods-index','1','1428938652','101.226.168.239');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1066','0','goods114','Portal-Goods-index','1','1428938663','101.226.169.225');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1067','0','goods113','Portal-Goods-index','1','1428938728','101.226.168.204');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1068','0','goods115','Portal-Goods-index','1','1428938754','182.118.20.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1069','0','goods110','Portal-Goods-index','1','1428938757','182.118.20.253');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1070','0','goods11','Portal-Goods-index','1','1428938764','182.118.25.211');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1071','0','goods118','Portal-Goods-index','1','1428938768','101.226.167.224');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1072','0','goods111','Portal-Goods-index','1','1428938769','101.226.167.235');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1073','0','goods116','Portal-Goods-index','1','1428938770','101.226.166.246');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1074','0','goods129','Portal-Goods-index','1','1428938896','182.118.22.228');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1075','0','goods12','Portal-Goods-index','1','1428938954','182.118.25.234');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1076','0','goods117','Portal-Goods-index','1','1428938962','101.226.166.230');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1077','0','goods125','Portal-Goods-index','1','1428938982','101.226.166.200');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1078','0','goods128','Portal-Goods-index','1','1428939044','182.118.25.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1079','0','goods127','Portal-Goods-index','1','1428939048','101.226.168.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1080','0','goods120','Portal-Goods-index','1','1428939070','182.118.22.230');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1081','0','goods126','Portal-Goods-index','1','1428939076','101.226.166.244');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1082','0','goods121','Portal-Goods-index','1','1428939112','101.226.169.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1083','0','goods112','Portal-Goods-index','1','1428939181','101.226.168.240');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1084','0','goods135','Portal-Goods-index','1','1428939196','101.226.166.201');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1085','0','goods124','Portal-Goods-index','1','1428939200','101.226.167.253');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1086','0','goods123','Portal-Goods-index','1','1428939206','101.226.167.210');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1087','0','goods138','Portal-Goods-index','1','1428939212','182.118.20.251');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1088','0','goods133','Portal-Goods-index','1','1428939212','101.226.166.201');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1089','0','goods130','Portal-Goods-index','1','1428939289','182.118.22.230');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1090','0','goods13','Portal-Goods-index','1','1428939295','101.226.168.243');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1091','0','goods136','Portal-Goods-index','1','1428939401','182.118.20.228');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1092','0','goods122','Portal-Goods-index','1','1428939425','101.226.166.228');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1093','0','goods14','Portal-Goods-index','1','1428939426','101.226.168.213');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1094','0','goods131','Portal-Goods-index','1','1428939494','182.118.21.210');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1095','0','goods149','Portal-Goods-index','1','1428939497','182.118.20.218');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1096','0','goods139','Portal-Goods-index','1','1428939517','182.118.20.224');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1097','0','goods132','Portal-Goods-index','1','1428939545','182.118.21.229');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1098','0','goods134','Portal-Goods-index','1','1428939578','182.118.20.212');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1099','0','goods141','Portal-Goods-index','1','1428939625','182.118.20.163');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1100','0','goods146','Portal-Goods-index','1','1428939656','101.226.166.210');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1101','0','goods152','Portal-Goods-index','1','1428939689','101.226.166.211');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1102','0','goods142','Portal-Goods-index','1','1428939716','182.118.20.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1103','0','goods147','Portal-Goods-index','1','1428939738','101.226.167.240');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1104','0','goods15','Portal-Goods-index','1','1428939740','101.226.166.226');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1105','0','goods143','Portal-Goods-index','1','1428939853','101.226.167.237');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1106','0','goods153','Portal-Goods-index','1','1428939885','182.118.22.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1107','0','goods16','Portal-Goods-index','1','1428939894','182.118.20.225');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1108','0','goods160','Portal-Goods-index','1','1428939920','182.118.21.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1109','0','goods162','Portal-Goods-index','1','1428939928','101.226.167.241');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1110','0','goods165','Portal-Goods-index','1','1428939981','101.226.166.224');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1111','0','goods145','Portal-Goods-index','1','1428939993','182.118.21.214');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1112','0','goods150','Portal-Goods-index','1','1428940012','101.226.166.234');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1113','0','goods164','Portal-Goods-index','1','1428940023','182.118.25.214');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1114','0','goods157','Portal-Goods-index','1','1428940032','101.226.167.216');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1115','0','goods161','Portal-Goods-index','1','1428940037','101.226.168.204');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1116','0','goods171','Portal-Goods-index','1','1428940099','182.118.20.225');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1117','0','goods158','Portal-Goods-index','1','1428940127','101.226.166.233');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1118','0','goods156','Portal-Goods-index','1','1428940139','182.118.22.221');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1119','0','goods18','Portal-Goods-index','1','1428940165','182.118.25.203');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1120','0','goods169','Portal-Goods-index','1','1428940166','182.118.25.217');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1121','0','goods172','Portal-Goods-index','1','1428940191','182.118.20.167');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1122','0','goods175','Portal-Goods-index','1','1428940255','101.226.168.204');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1123','0','goods179','Portal-Goods-index','1','1428940256','182.118.25.219');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1124','0','goods154','Portal-Goods-index','1','1428940283','101.226.166.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1125','0','goods166','Portal-Goods-index','1','1428940401','101.226.168.235');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1126','0','goods176','Portal-Goods-index','1','1428940438','182.118.20.170');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1127','0','goods168','Portal-Goods-index','1','1428940438','101.226.167.240');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1128','0','goods190','Portal-Goods-index','1','1428940465','182.118.21.252');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1129','0','goods182','Portal-Goods-index','1','1428940465','182.118.21.235');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1130','0','goods17','Portal-Goods-index','1','1428940471','182.118.21.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1131','0','goods19','Portal-Goods-index','1','1428940472','182.118.25.201');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1132','0','goods191','Portal-Goods-index','1','1428940488','101.226.168.229');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1133','0','goods183','Portal-Goods-index','1','1428940511','101.226.166.205');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1134','0','goods193','Portal-Goods-index','1','1428940565','182.118.22.249');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1135','0','goods188','Portal-Goods-index','1','1428940568','101.226.169.196');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1136','0','goods177','Portal-Goods-index','1','1428940572','182.118.22.221');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1137','0','goods180','Portal-Goods-index','1','1428940604','101.226.167.235');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1138','0','goods186','Portal-Goods-index','1','1428940665','182.118.20.237');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1139','0','goods187','Portal-Goods-index','1','1428940690','182.118.20.231');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1140','0','goods202','Portal-Goods-index','1','1428940721','101.226.166.248');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1141','0','goods203','Portal-Goods-index','1','1428940725','101.226.166.247');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1142','0','goods184','Portal-Goods-index','1','1428940759','101.226.166.252');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1143','0','goods262','Portal-Goods-index','15','1429225003','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1144','0','goods275','Portal-Goods-index','16','1429243047','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1145','0','goods267','Portal-Goods-index','14','1429175544','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1146','0','goods195','Portal-Goods-index','1','1428941271','101.226.167.216');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1147','0','goods254','Portal-Goods-index','7','1429046755','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1148','0','goods274','Portal-Goods-index','13','1429210721','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1149','0','goods201','Portal-Goods-index','1','1428941377','182.118.20.229');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1150','0','goods199','Portal-Goods-index','1','1428941385','182.118.22.220');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1151','0','goods247','Portal-Goods-index','11','1429174000','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1152','0','goods209','Portal-Goods-index','1','1428941445','101.226.167.195');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1153','0','goods239','Portal-Goods-index','15','1429250002','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1154','0','goods211','Portal-Goods-index','1','1428941502','101.226.168.247');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1155','0','goods207','Portal-Goods-index','1','1428941534','182.118.22.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1156','0','goods2','Portal-Goods-index','1','1428941542','101.226.166.224');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1157','0','goods268','Portal-Goods-index','15','1429235714','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1158','0','goods197','Portal-Goods-index','1','1428941546','101.226.168.211');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1159','0','goods21','Portal-Goods-index','1','1428941567','101.226.168.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1160','0','goods198','Portal-Goods-index','1','1428941572','101.226.169.217');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1161','0','goods208','Portal-Goods-index','1','1428941604','101.226.169.202');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1162','0','goods214','Portal-Goods-index','1','1428941621','101.226.169.228');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1163','0','goods205','Portal-Goods-index','1','1428941624','101.226.168.201');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1164','0','goods200','Portal-Goods-index','1','1428941632','182.118.22.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1165','0','goods269','Portal-Goods-index','11','1429205870','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1166','0','goods204','Portal-Goods-index','1','1428941650','182.118.22.231');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1167','0','goods212','Portal-Goods-index','1','1428941660','182.118.22.228');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1168','0','goods194','Portal-Goods-index','1','1428941724','182.118.21.212');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1169','0','goods258','Portal-Goods-index','10','1429228733','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1170','0','goods219','Portal-Goods-index','1','1428941737','101.226.169.226');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1171','0','goods210','Portal-Goods-index','1','1428941744','182.118.20.230');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1172','0','goods217','Portal-Goods-index','1','1428941765','101.226.166.197');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1173','0','goods213','Portal-Goods-index','1','1428941851','182.118.25.210');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1174','0','goods220','Portal-Goods-index','1','1428941886','101.226.168.226');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1175','0','goods218','Portal-Goods-index','1','1428941893','182.118.25.218');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1176','0','goods20','Portal-Goods-index','1','1428941911','182.118.20.166');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1177','0','goods227','Portal-Goods-index','1','1428941995','101.226.168.228');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1178','0','goods223','Portal-Goods-index','1','1428942023','182.118.21.239');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1179','0','goods23','Portal-Goods-index','1','1428942081','101.226.167.226');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1180','0','goods216','Portal-Goods-index','1','1428942081','101.226.167.226');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1181','0','goods25','Portal-Goods-index','1','1428942139','182.118.21.252');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1182','0','goods39','Portal-Goods-index','1','1428942151','101.226.167.240');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1183','0','goods234','Portal-Goods-index','1','1428942154','101.226.168.198');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1184','0','goods228','Portal-Goods-index','1','1428942238','101.226.167.234');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1185','0','goods251','Portal-Goods-index','6','1429092826','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1186','0','goods236','Portal-Goods-index','1','1428942313','182.118.20.169');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1187','0','goods36','Portal-Goods-index','1','1428942319','101.226.168.251');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1188','0','goods24','Portal-Goods-index','1','1428942331','101.226.167.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1189','0','goods37','Portal-Goods-index','1','1428942332','182.118.21.220');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1190','0','goods229','Portal-Goods-index','1','1428942359','182.118.20.168');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1191','0','goods241','Portal-Goods-index','13','1429157161','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1192','0','goods232','Portal-Goods-index','1','1428942416','101.226.169.200');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1193','0','goods230','Portal-Goods-index','1','1428942417','182.118.20.228');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1194','0','goods26','Portal-Goods-index','1','1428942438','101.226.167.220');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1195','0','goods3','Portal-Goods-index','1','1428942446','101.226.168.196');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1196','0','goods29','Portal-Goods-index','1','1428942454','101.226.167.245');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1197','0','goods51','Portal-Goods-index','1','1428942473','182.118.20.254');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1198','0','goods28','Portal-Goods-index','1','1428942504','182.118.22.208');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1199','0','goods43','Portal-Goods-index','1','1428942508','101.226.168.228');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1200','0','goods42','Portal-Goods-index','1','1428942519','182.118.25.203');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1201','0','goods46','Portal-Goods-index','1','1428942523','182.118.25.202');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1202','0','goods33','Portal-Goods-index','1','1428942532','101.226.168.198');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1203','0','goods231','Portal-Goods-index','1','1428942533','182.118.20.173');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1204','0','goods50','Portal-Goods-index','1','1428942551','182.118.22.141');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1205','0','goods61','Portal-Goods-index','1','1428942643','182.118.22.203');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1206','0','goods47','Portal-Goods-index','1','1428942644','182.118.25.226');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1207','0','goods32','Portal-Goods-index','1','1428942646','182.118.20.203');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1208','0','goods35','Portal-Goods-index','1','1428942655','182.118.21.211');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1209','0','goods62','Portal-Goods-index','1','1428942672','101.226.168.211');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1210','0','goods48','Portal-Goods-index','1','1428942676','182.118.21.204');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1211','0','goods81','Portal-Goods-index','12','1429209272','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1212','0','goods40','Portal-Goods-index','1','1428942705','101.226.166.248');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1213','0','goods31','Portal-Goods-index','1','1428942733','101.226.166.241');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1214','0','goods55','Portal-Goods-index','1','1428942755','101.226.169.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1215','0','goods4','Portal-Goods-index','1','1428942778','101.226.168.240');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1216','0','goods58','Portal-Goods-index','1','1428942803','182.118.25.222');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1217','0','goods44','Portal-Goods-index','1','1428942830','182.118.21.245');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1218','0','goods69','Portal-Goods-index','1','1428942852','101.226.168.251');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1219','0','goods77','Portal-Goods-index','1','1428942887','101.226.166.202');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1220','0','goods65','Portal-Goods-index','1','1428942892','182.118.25.208');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1221','0','goods54','Portal-Goods-index','1','1428942926','182.118.22.221');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1222','0','goods272','Portal-Goods-index','14','1429228381','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1223','0','goods5','Portal-Goods-index','1','1428942987','182.118.20.166');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1224','0','goods73','Portal-Goods-index','1','1428943004','182.118.20.253');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1225','0','goods59','Portal-Goods-index','1','1428943067','182.118.22.228');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1226','0','goods60','Portal-Goods-index','1','1428943084','101.226.166.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1227','0','goods74','Portal-Goods-index','1','1428943090','101.226.166.196');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1228','0','goods7','Portal-Goods-index','1','1428943103','101.226.168.211');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1229','0','goods66','Portal-Goods-index','1','1428943147','182.118.25.208');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1230','0','goods85','Portal-Goods-index','1','1428943151','101.226.166.221');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1231','0','goods53','Portal-Goods-index','1','1428943153','182.118.21.233');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1232','0','goods78','Portal-Goods-index','1','1428943224','101.226.169.230');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1233','0','goods255','Portal-Goods-index','10','1429220942','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1234','0','goods57','Portal-Goods-index','1','1428943281','182.118.22.229');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1235','0','goods88','Portal-Goods-index','1','1428943320','182.118.25.204');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1236','0','goods76','Portal-Goods-index','1','1428943356','182.118.21.217');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1237','0','goods87','Portal-Goods-index','1','1428943371','101.226.166.216');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1238','0','goods64','Portal-Goods-index','1','1428943375','182.118.21.234');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1239','0','goods70','Portal-Goods-index','1','1428943386','101.226.166.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1240','0','goods84','Portal-Goods-index','1','1428943398','101.226.169.202');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1241','0','goods80','Portal-Goods-index','1','1428943415','101.226.169.228');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1242','0','goods89','Portal-Goods-index','1','1428943450','182.118.25.202');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1243','0','goods83','Portal-Goods-index','1','1428943480','101.226.168.195');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1244','0','goods72','Portal-Goods-index','1','1428943542','182.118.21.235');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1245','0','goods96','Portal-Goods-index','1','1428943550','101.226.166.226');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1246','0','goods90','Portal-Goods-index','1','1428943662','182.118.21.244');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1247','0','goods67','Portal-Goods-index','1','1428943671','182.118.20.169');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1248','0','goods8','Portal-Goods-index','1','1428943757','182.118.21.217');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1249','0','goods81','Portal-Goods-index','1','1428943775','182.118.20.166');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1250','0','goods240','Portal-Goods-index','23','1429235011','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1251','0','goods94','Portal-Goods-index','1','1428943885','182.118.20.235');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1252','0','goods268','Portal-Goods-index','10','1429205168','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1253','0','goods91','Portal-Goods-index','1','1428943956','182.118.22.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1254','0','goods267','Portal-Goods-index','14','1429244702','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1255','0','goods99','Portal-Goods-index','1','1428944055','101.226.166.249');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1256','0','goods274','Portal-Goods-index','16','1429250177','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1257','0','goods92','Portal-Goods-index','1','1428944156','182.118.21.216');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1258','0','goods95','Portal-Goods-index','1','1428944182','182.118.20.232');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1259','0','goods254','Portal-Goods-index','10','1429217690','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1260','0','goods259','Portal-Goods-index','14','1429226392','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1261','0','goods270','Portal-Goods-index','14','1429224388','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1262','0','goods252','Portal-Goods-index','7','1429240919','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1263','0','goods271','Portal-Goods-index','16','1429220146','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1264','0','goods260','Portal-Goods-index','15','1429220379','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1265','0','goods98','Portal-Goods-index','1','1428944856','182.118.20.171');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1266','0','goods247','Portal-Goods-index','10','1429244248','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1267','0','goods249','Portal-Goods-index','13','1429221397','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1268','0','goods63','Portal-Goods-index','9','1429248772','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1269','0','goods251','Portal-Goods-index','13','1429234835','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1270','0','goods239','Portal-Goods-index','10','1429202635','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1271','0','goods270','Portal-Goods-index','15','1429198678','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1272','0','goods241','Portal-Goods-index','10','1429171884','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1273','0','goods260','Portal-Goods-index','17','1429216156','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1274','0','goods268','Portal-Goods-index','10','1429249035','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1275','0','goods273','Portal-Goods-index','10','1429247287','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1276','0','goods275','Portal-Goods-index','13','1429190775','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1277','0','goods267','Portal-Goods-index','9','1429177582','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1278','0','goods252','Portal-Goods-index','11','1429243970','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1279','0','goods247','Portal-Goods-index','11','1429174376','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1280','0','goods29','Portal-Goods-index','2','1429078967','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1281','0','goods240','Portal-Goods-index','11','1429226212','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1282','0','goods10','Portal-Goods-index','4','1429212652','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1283','0','goods18','Portal-Goods-index','7','1429217657','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1284','0','goods262','Portal-Goods-index','12','1429211424','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1285','0','goods196','Portal-Goods-index','1','1428952243','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1286','0','goods246','Portal-Goods-index','11','1429220245','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1287','0','goods33','Portal-Goods-index','2','1429148053','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1288','0','goods239','Portal-Goods-index','14','1429228820','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1289','0','goods22','Portal-Goods-index','2','1429044324','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1290','0','goods14','Portal-Goods-index','1','1428953557','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1291','0','goods7','Portal-Goods-index','1','1428953940','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1292','0','goods249','Portal-Goods-index','8','1429239225','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1293','0','goods278','Portal-Goods-index','19','1429175456','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1294','0','goods225','Portal-Goods-index','17','1429244058','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1295','0','goods222','Portal-Goods-index','9','1429242590','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1296','0','goods259','Portal-Goods-index','15','1429240793','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1297','0','goods31','Portal-Goods-index','1','1428955257','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1298','0','goods199','Portal-Goods-index','2','1429165105','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1299','0','goods215','Portal-Goods-index','13','1429213786','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1300','0','goods271','Portal-Goods-index','13','1429249914','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1301','0','goods44','Portal-Goods-index','2','1429133097','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1302','0','goods198','Portal-Goods-index','15','1429244760','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1303','0','goods49','Portal-Goods-index','8','1429193760','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1304','0','goods52','Portal-Goods-index','2','1429103613','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1305','0','goods94','Portal-Goods-index','12','1429241445','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1306','0','goods63','Portal-Goods-index','10','1429231543','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1307','0','goods256','Portal-Goods-index','2','1429233738','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1308','0','goods254','Portal-Goods-index','6','1429073428','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1309','0','goods249','Portal-Goods-index','11','1429229347','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1310','0','goods221','Portal-Goods-index','12','1429236905','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1311','0','goods92','Portal-Goods-index','1','1428968185','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1312','0','goods89','Portal-Goods-index','11','1429223865','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1313','0','goods106','Portal-Goods-index','2','1429242059','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1314','0','goods105','Portal-Goods-index','2','1429082579','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1315','0','goods77','Portal-Goods-index','2','1429196201','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1316','0','goods277','Portal-Goods-index','8','1429238348','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1317','0','goods80','Portal-Goods-index','1','1428968675','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1318','0','goods116','Portal-Goods-index','1','1428968771','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1319','0','goods275','Portal-Goods-index','18','1429219903','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1320','0','goods244','Portal-Goods-index','13','1429195456','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1321','0','goods88','Portal-Goods-index','2','1429219416','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1322','0','goods78','Portal-Goods-index','2','1429235099','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1323','0','goods112','Portal-Goods-index','1','1428969344','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1324','0','goods102','Portal-Goods-index','1','1428969440','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1325','0','goods103','Portal-Goods-index','2','1429199242','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1326','0','goods90','Portal-Goods-index','1','1428969727','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1327','0','goods63','Portal-Goods-index','9','1429216792','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1328','0','goods108','Portal-Goods-index','2','1429248069','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1329','0','goods1','Portal-Goods-index','1','1428971003','101.226.167.212');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1330','0','goods270','Portal-Goods-index','12','1429238260','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1331','0','goods277','Portal-Goods-index','21','1429210633','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1332','0','goods76','Portal-Goods-index','1','1428972702','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1333','0','goods252','Portal-Goods-index','12','1429226801','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1334','0','goods46','Portal-Goods-index','1','1428973084','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1335','0','goods244','Portal-Goods-index','12','1429249825','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1336','0','goods222','Portal-Goods-index','19','1429217042','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1337','0','goods262','Portal-Goods-index','12','1429238435','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1338','0','goods197','Portal-Goods-index','13','1429237536','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1339','0','goods255','Portal-Goods-index','11','1429239142','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1340','0','goods206','Portal-Goods-index','15','1429205431','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1341','0','goods210','Portal-Goods-index','12','1429224652','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1342','0','goods94','Portal-Goods-index','9','1429236241','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1343','0','goods241','Portal-Goods-index','11','1429179340','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1344','0','goods225','Portal-Goods-index','8','1429248246','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1345','0','goods263','Portal-Goods-index','16','1429223422','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1346','0','goods274','Portal-Goods-index','10','1429171445','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1347','0','goods113','Portal-Goods-index','14','1429201465','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1348','0','goods221','Portal-Goods-index','15','1429217227','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1349','0','goods260','Portal-Goods-index','4','1429242854','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1350','0','goods250','Portal-Goods-index','7','1429243820','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1351','0','goods206','Portal-Goods-index','11','1429247501','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1352','0','goods240','Portal-Goods-index','8','1429247367','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1353','0','goods250','Portal-Goods-index','13','1429247201','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1354','0','goods210','Portal-Goods-index','14','1429244409','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1355','0','goods244','Portal-Goods-index','10','1429233927','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1356','0','goods271','Portal-Goods-index','7','1429234327','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1357','0','goods253','Portal-Goods-index','13','1429242147','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1358','0','goods251','Portal-Goods-index','8','1429247543','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1359','0','goods269','Portal-Goods-index','16','1429241709','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1360','0','goods215','Portal-Goods-index','9','1429234748','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1361','0','goods221','Portal-Goods-index','10','1429243025','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1362','0','goods206','Portal-Goods-index','11','1429238699','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1363','0','goods250','Portal-Goods-index','10','1429236945','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1364','0','goods94','Portal-Goods-index','10','1429234708','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1365','0','goods259','Portal-Goods-index','11','1429244848','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1366','0','goods225','Portal-Goods-index','12','1429223182','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1367','0','goods202','Portal-Goods-index','1','1428994238','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1368','0','goods277','Portal-Goods-index','7','1429224488','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1369','0','goods198','Portal-Goods-index','9','1429240857','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1370','1','goods277','Portal-Goods-index','1','1428996052','180.125.241.188');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1371','0','goods249','Portal-Goods-index','1','1428997059','42.156.137.98');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1372','0','goods183','Portal-Goods-index','1','1428997070','42.156.138.98');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1373','0','goods256','Portal-Goods-index','1','1428997074','42.156.139.98');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1374','0','goods171','Portal-Goods-index','1','1428997074','42.156.136.98');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1375','0','goods278','Portal-Goods-index','1','1428997133','42.120.160.98');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1376','0','goods261','Portal-Goods-index','1','1428997137','42.156.137.98');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1377','0','goods243','Portal-Goods-index','1','1428997149','42.156.138.98');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1378','0','goods263','Portal-Goods-index','1','1428997164','42.156.139.98');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1379','0','goods252','Portal-Goods-index','1','1428997165','42.156.136.98');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1380','0','goods247','Portal-Goods-index','1','1428997185','42.120.161.98');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1381','0','goods268','Portal-Goods-index','1','1428997205','42.120.160.98');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1382','0','goods222','Portal-Goods-index','8','1429228118','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1383','0','goods249','Portal-Goods-index','1','1428997581','42.120.160.98');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1384','0','goods43','Portal-Goods-index','11','1429227942','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1385','0','goods107','Portal-Goods-index','9','1429202986','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1386','0','goods243','Portal-Goods-index','13','1429227416','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1387','0','goods253','Portal-Goods-index','10','1429226537','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1388','0','goods56','Portal-Goods-index','2','1429185939','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1389','0','goods67','Portal-Goods-index','2','1429087154','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1390','0','goods204','Portal-Goods-index','4','1429167582','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1391','0','goods147','Portal-Goods-index','1','1429004537','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1392','0','goods211','Portal-Goods-index','1','1429008017','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1393','0','goods220','Portal-Goods-index','1','1429008063','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1394','0','goods233','Portal-Goods-index','1','1429008103','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1395','0','goods230','Portal-Goods-index','1','1429008146','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1396','0','goods208','Portal-Goods-index','2','1429165368','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1397','0','goods203','Portal-Goods-index','1','1429008232','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1398','0','goods205','Portal-Goods-index','1','1429008275','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1399','0','goods213','Portal-Goods-index','2','1429237549','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1400','0','goods232','Portal-Goods-index','1','1429008451','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1401','0','goods','Portal-Goods-index','44','1429234711','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1402','0','goods234','Portal-Goods-index','3','1429228030','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1403','0','goods227','Portal-Goods-index','2','1429209931','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1404','0','goods219','Portal-Goods-index','2','1429234331','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1405','0','goods231','Portal-Goods-index','1','1429008878','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1406','0','goods266','Portal-Goods-index','11','1429201048','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1407','0','goods223','Portal-Goods-index','1','1429009136','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1408','0','goods209','Portal-Goods-index','1','1429009222','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1409','0','goods236','Portal-Goods-index','1','1429009480','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1410','0','goods229','Portal-Goods-index','1','1429009566','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1411','0','goods20','Portal-Goods-index','2','1429154440','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1412','0','goods246','Portal-Goods-index','8','1429235453','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1413','0','goods','Portal-Goods-index','31','1429233359','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1414','0','goods43','Portal-Goods-index','10','1429241095','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1415','0','goods','Portal-Goods-index','25','1429233352','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1416','0','goods50','Portal-Goods-index','1','1429015717','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1417','0','goods266','Portal-Goods-index','13','1429244145','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1418','0','goods243','Portal-Goods-index','6','1429242412','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1419','0','goods210','Portal-Goods-index','12','1429238786','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1420','0','goods245','Portal-Goods-index','8','1429244936','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1421','0','goods253','Portal-Goods-index','11','1429209316','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1422','0','goods271','Portal-Goods-index','1','1429022542','123.95.68.228');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1423','0','goods107','Portal-Goods-index','12','1429214939','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1424','0','goods269','Portal-Goods-index','10','1429237045','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1425','0','goods88','Portal-Goods-index','2','1429073341','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1426','0','goods245','Portal-Goods-index','10','1429210018','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1427','0','goods28','Portal-Goods-index','1','1429036351','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1428','0','goods121','Portal-Goods-index','1','1429036463','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1429','0','goods204','Portal-Goods-index','13','1429248333','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1430','0','goods246','Portal-Goods-index','10','1429248421','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1431','0','goods257','Portal-Goods-index','8','1429227770','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1432','0','goods242','Portal-Goods-index','1','1429041155','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1433','0','goods276','Portal-Goods-index','1','1429041229','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1434','0','goods107','Portal-Goods-index','17','1429241886','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1435','0','goods196','Portal-Goods-index','1','1429041676','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1436','0','goods49','Portal-Goods-index','8','1429204992','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1437','0','goods243','Portal-Goods-index','9','1429194660','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1438','0','goods56','Portal-Goods-index','1','1429044021','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1439','0','goods22','Portal-Goods-index','1','1429044342','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1440','0','goods49','Portal-Goods-index','15','1429249657','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1441','0','goods202','Portal-Goods-index','2','1429048568','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1442','0','goods228','Portal-Goods-index','1','1429049878','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1443','0','goods228','Portal-Goods-index','1','1429049880','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1444','0','goods245','Portal-Goods-index','9','1429230664','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1445','0','goods204','Portal-Goods-index','9','1429225350','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1446','0','goods266','Portal-Goods-index','12','1429247058','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1447','0','goods265','Portal-Goods-index','2','1429095948','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1448','0','goods200','Portal-Goods-index','10','1429219623','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1449','0','goods200','Portal-Goods-index','10','1429229523','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1450','0','goods257','Portal-Goods-index','8','1429242502','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1451','0','goods279','Portal-Goods-index','5','1429093361','121.233.125.233');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1452','0','goods279','Portal-Goods-index','1','1429058874','112.64.235.253');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1453','0','goods','Portal-Goods-index','6','1429058878','112.64.235.253');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1454','0','goods276','Portal-Goods-index','1','1429059726','121.233.125.233');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1455','0','goods276','Portal-Goods-index','1','1429059727','101.226.66.193');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1456','0','goods','Portal-Goods-index','6','1429059730','101.226.66.193');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1457','0','goods','Portal-Goods-index','1','1429062163','121.233.125.233');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1458','0','goods','Portal-Goods-index','7','1429062167','180.153.214.182');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1459','0','goods61','Portal-Goods-index','2','1429185412','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1460','0','goods61','Portal-Goods-index','3','1429225102','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1461','0','goods274','Portal-Goods-index','1','1429064290','121.233.125.233');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1462','0','goods274','Portal-Goods-index','1','1429064617','101.226.33.219');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1463','0','goods','Portal-Goods-index','6','1429064621','101.226.33.219');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1464','0','goods103','Portal-Goods-index','2','1429212125','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1465','0','goods200','Portal-Goods-index','11','1429233923','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1466','0','goods257','Portal-Goods-index','10','1429216516','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1467','0','goods14','Portal-Goods-index','1','1429076946','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1468','0','goods278','Portal-Goods-index','1','1429077577','112.90.37.222');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1469','0','goods278','Portal-Goods-index','2','1429077581','180.153.214.176');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1470','0','goods','Portal-Goods-index','6','1429077586','180.153.214.176');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1471','0','goods29','Portal-Goods-index','1','1429079402','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1472','0','goods80','Portal-Goods-index','1','1429082319','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1473','0','goods7','Portal-Goods-index','1','1429082406','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1474','0','goods254','Portal-Goods-index','1','1429083016','123.125.71.86');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1475','0','goods92','Portal-Goods-index','1','1429084560','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1476','0','goods92','Portal-Goods-index','1','1429084562','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1477','0','goods268','Portal-Goods-index','1','1429085016','220.181.108.114');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1478','0','goods248','Portal-Goods-index','1','1429087016','220.181.108.121');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1479','0','goods67','Portal-Goods-index','1','1429087148','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1480','0','goods275','Portal-Goods-index','1','1429087473','163.204.82.146');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1481','0','goods275','Portal-Goods-index','1','1429088280','101.226.33.204');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1482','0','goods','Portal-Goods-index','7','1429088294','101.226.33.204');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1483','0','goods261','Portal-Goods-index','1','1429088941','101.226.166.239');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1484','0','goods247','Portal-Goods-index','1','1429089016','220.181.108.104');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1485','0','goods170','Portal-Goods-index','1','1429089821','182.118.22.225');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1486','0','goods155','Portal-Goods-index','1','1429089844','101.226.168.202');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1487','0','goods151','Portal-Goods-index','1','1429089868','101.226.166.201');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1488','0','goods167','Portal-Goods-index','1','1429089877','182.118.20.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1489','0','goods148','Portal-Goods-index','1','1429089909','182.118.22.203');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1490','0','goods90','Portal-Goods-index','3','1429193402','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1491','0','goods140','Portal-Goods-index','1','1429089975','182.118.22.219');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1492','0','goods163','Portal-Goods-index','1','1429090005','101.226.169.209');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1493','0','goods22','Portal-Goods-index','1','1429090050','182.118.21.205');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1494','0','goods137','Portal-Goods-index','1','1429090063','182.118.20.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1495','0','goods235','Portal-Goods-index','1','1429090114','182.118.22.216');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1496','0','goods189','Portal-Goods-index','1','1429090126','182.118.25.234');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1497','0','goods196','Portal-Goods-index','1','1429090175','101.226.169.222');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1498','0','goods181','Portal-Goods-index','1','1429090214','182.118.22.218');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1499','0','goods192','Portal-Goods-index','1','1429090246','182.118.22.222');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1500','0','goods221','Portal-Goods-index','1','1429090251','101.226.169.216');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1501','0','goods233','Portal-Goods-index','1','1429090305','182.118.25.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1502','0','goods144','Portal-Goods-index','1','1429090312','182.118.21.210');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1503','0','goods185','Portal-Goods-index','1','1429090429','182.118.25.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1504','0','goods206','Portal-Goods-index','1','1429090429','182.118.25.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1505','0','goods63','Portal-Goods-index','1','1429090435','182.118.25.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1506','0','goods49','Portal-Goods-index','1','1429090451','182.118.22.201');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1507','0','goods27','Portal-Goods-index','1','1429090454','101.226.169.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1508','0','goods38','Portal-Goods-index','1','1429090484','101.226.168.199');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1509','0','goods30','Portal-Goods-index','1','1429090494','182.118.20.203');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1510','0','goods174','Portal-Goods-index','1','1429090498','101.226.166.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1511','0','goods6','Portal-Goods-index','1','1429090515','182.118.20.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1512','0','goods178','Portal-Goods-index','1','1429090571','182.118.20.171');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1513','0','goods159','Portal-Goods-index','1','1429090582','101.226.167.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1514','0','goods45','Portal-Goods-index','1','1429090607','101.226.166.233');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1515','0','goods56','Portal-Goods-index','1','1429090652','182.118.22.217');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1516','0','goods34','Portal-Goods-index','1','1429090711','182.118.22.220');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1517','0','goods86','Portal-Goods-index','1','1429090826','182.118.25.210');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1518','0','goods68','Portal-Goods-index','1','1429090842','182.118.22.206');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1519','0','goods82','Portal-Goods-index','1','1429090851','182.118.25.209');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1520','0','goods71','Portal-Goods-index','1','1429090871','101.226.166.228');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1521','0','goods93','Portal-Goods-index','1','1429090903','182.118.20.164');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1522','0','goods79','Portal-Goods-index','1','1429090945','182.118.25.206');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1523','0','goods9','Portal-Goods-index','1','1429090956','182.118.20.167');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1524','0','goods253','Portal-Goods-index','1','1429091016','123.125.71.40');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1525','0','goods75','Portal-Goods-index','1','1429091289','101.226.167.253');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1526','0','goods52','Portal-Goods-index','1','1429091447','101.226.168.235');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1527','0','goods41','Portal-Goods-index','1','1429091447','101.226.168.242');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1528','0','goods97','Portal-Goods-index','1','1429091760','101.226.168.214');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1529','0','goods198','Portal-Goods-index','1','1429092851','121.233.125.233');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1530','0','goods249','Portal-Goods-index','1','1429093015','220.181.108.157');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1531','0','goods156','Portal-Goods-index','1','1429093857','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1532','0','goods261','Portal-Goods-index','1','1429095015','123.125.71.42');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1533','0','goods265','Portal-Goods-index','1','1429095877','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1534','0','goods108','Portal-Goods-index','1','1429096155','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1535','0','goods276','Portal-Goods-index','1','1429097015','123.125.71.47');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1536','0','goods89','Portal-Goods-index','4','1429237300','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1537','0','goods89','Portal-Goods-index','6','1429248860','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1538','0','goods90','Portal-Goods-index','1','1429097901','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1539','0','goods279','Portal-Goods-index','2','1429099904','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1540','0','goods248','Portal-Goods-index','1','1429099679','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1541','0','goods248','Portal-Goods-index','1','1429099682','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1542','0','goods31','Portal-Goods-index','1','1429100442','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1543','0','goods269','Portal-Goods-index','1','1429101015','220.181.108.141');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1544','0','goods257','Portal-Goods-index','1','1429101178','27.10.159.240');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1545','0','goods257','Portal-Goods-index','1','1429101202','180.153.201.217');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1546','0','goods','Portal-Goods-index','7','1429101247','180.153.201.217');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1547','0','goods36','Portal-Goods-index','1','1429101957','118.81.8.217');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1548','0','goods263','Portal-Goods-index','1','1429103015','220.181.108.186');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1549','0','goods42','Portal-Goods-index','1','1429106904','182.118.20.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1550','0','goods271','Portal-Goods-index','1','1429106994','101.226.169.196');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1551','0','goods274','Portal-Goods-index','1','1429107015','220.181.108.100');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1552','0','goods276','Portal-Goods-index','1','1429107054','182.118.25.228');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1553','0','goods48','Portal-Goods-index','1','1429107054','182.118.20.217');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1554','0','goods274','Portal-Goods-index','1','1429107112','101.226.167.244');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1555','0','goods36','Portal-Goods-index','1','1429107137','101.226.167.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1556','0','goods74','Portal-Goods-index','1','1429107184','182.118.20.218');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1557','0','goods62','Portal-Goods-index','1','1429107185','182.118.25.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1558','0','goods78','Portal-Goods-index','1','1429107197','182.118.20.225');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1559','0','goods33','Portal-Goods-index','1','1429107199','182.118.22.216');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1560','0','goods46','Portal-Goods-index','1','1429107201','182.118.21.211');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1561','0','goods4','Portal-Goods-index','1','1429107235','101.226.168.250');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1562','0','goods60','Portal-Goods-index','1','1429107269','182.118.20.225');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1563','0','goods72','Portal-Goods-index','1','1429107288','182.118.22.204');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1564','0','goods66','Portal-Goods-index','1','1429107302','101.226.166.219');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1565','0','goods69','Portal-Goods-index','1','1429107314','182.118.25.240');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1566','0','goods51','Portal-Goods-index','1','1429107322','101.226.167.213');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1567','0','goods57','Portal-Goods-index','1','1429107353','182.118.21.221');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1568','0','goods80','Portal-Goods-index','1','1429107361','101.226.166.243');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1569','0','goods3','Portal-Goods-index','1','1429107368','182.118.21.210');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1570','0','goods28','Portal-Goods-index','1','1429107377','101.226.169.212');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1571','0','goods92','Portal-Goods-index','1','1429107473','182.118.25.212');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1572','0','goods54','Portal-Goods-index','1','1429107508','101.226.169.212');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1573','0','goods90','Portal-Goods-index','1','1429107557','182.118.25.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1574','0','goods87','Portal-Goods-index','1','1429107608','101.226.169.214');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1575','0','goods84','Portal-Goods-index','1','1429107643','101.226.166.244');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1576','0','goods96','Portal-Goods-index','1','1429107667','101.226.167.216');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1577','0','goods99','Portal-Goods-index','1','1429108920','101.226.166.212');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1578','0','goods256','Portal-Goods-index','1','1429113015','220.181.108.143');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1579','0','goods43','Portal-Goods-index','5','1429244672','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1580','0','goods264','Portal-Goods-index','1','1429115015','123.125.71.51');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1581','0','goods63','Portal-Goods-index','1','1429116204','66.249.64.90');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1582','0','goods18','Portal-Goods-index','7','1429241270','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1583','0','goods18','Portal-Goods-index','1','1429117800','203.208.60.202');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1584','0','goods276','Portal-Goods-index','1','1429118798','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1585','0','goods279','Portal-Goods-index','1','1429119015','123.125.71.69');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1586','0','goods276','Portal-Goods-index','2','1429201859','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1587','0','goods244','Portal-Goods-index','1','1429121015','123.125.71.55');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1588','0','goods265','Portal-Goods-index','1','1429123015','220.181.108.122');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1589','0','goods10','Portal-Goods-index','1','1429126965','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1590','0','goods278','Portal-Goods-index','1','1429127015','123.125.71.43');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1591','0','goods267','Portal-Goods-index','1','1429128414','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1592','0','goods43','Portal-Goods-index','1','1429128677','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1593','0','goods245','Portal-Goods-index','1','1429129009','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1594','0','goods259','Portal-Goods-index','1','1429129015','123.125.71.48');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1595','0','goods225','Portal-Goods-index','1','1429129996','66.249.73.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1596','0','goods49','Portal-Goods-index','1','1429130082','66.249.73.223');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1597','0','goods250','Portal-Goods-index','1','1429130170','66.249.73.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1598','0','goods234','Portal-Goods-index','1','1429130609','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1599','0','goods106','Portal-Goods-index','1','1429130697','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1600','0','goods105','Portal-Goods-index','1','1429130961','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1601','0','goods272','Portal-Goods-index','1','1429133015','220.181.108.142');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1602','0','goods260','Portal-Goods-index','1','1429135014','123.125.71.34');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1603','0','goods258','Portal-Goods-index','1','1429137014','123.125.71.47');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1604','0','goods280','Portal-Goods-index','1','1429139014','220.181.108.181');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1605','0','goods244','Portal-Goods-index','1','1429139017','203.208.60.209');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1606','0','goods266','Portal-Goods-index','1','1429141015','123.125.71.26');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1607','0','goods273','Portal-Goods-index','1','1429143014','123.125.71.77');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1608','0','goods267','Portal-Goods-index','1','1429145014','220.181.108.121');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1609','0','goods217','Portal-Goods-index','1','1429145416','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1610','0','goods18','Portal-Goods-index','4','1429226458','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1611','0','goods275','Portal-Goods-index','1','1429147014','220.181.108.123');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1612','0','goods31','Portal-Goods-index','1','1429148313','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1613','0','goods33','Portal-Goods-index','2','1429241621','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1614','4','goods279','Portal-Goods-index','11','1429165827','180.125.240.77');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1615','4','goods278','Portal-Goods-index','1','1429149977','180.125.240.77');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1616','4','goods236','Portal-Goods-index','2','1429151415','180.125.240.77');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1617','4','goods267','Portal-Goods-index','3','1429150944','180.125.240.77');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1618','0','goods253','Portal-Goods-index','1','1429150783','203.208.60.205');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1619','0','goods243','Portal-Goods-index','1','1429151014','220.181.108.118');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1620','4','goods','Portal-Goods-index','9','1429153184','180.125.240.77');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1621','0','goods275','Portal-Goods-index','2','1429152854','180.125.240.77');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1622','0','goods274','Portal-Goods-index','1','1429152858','180.125.240.77');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1623','0','goods271','Portal-Goods-index','1','1429152873','180.125.240.77');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1624','0','goods266','Portal-Goods-index','1','1429152878','180.125.240.77');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1625','0','goods259','Portal-Goods-index','1','1429152881','180.125.240.77');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1626','0','goods250','Portal-Goods-index','1','1429153014','220.181.108.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1627','0','goods242','Portal-Goods-index','1','1429153109','123.125.71.111');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1628','4','goods280','Portal-Goods-index','2','1429154578','180.125.240.77');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1629','4','goods1','Portal-Goods-index','1','1429153367','180.125.240.77');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1630','0','goods260','Portal-Goods-index','1','1429154098','203.208.60.196');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1631','0','goods272','Portal-Goods-index','1','1429154167','114.253.209.236');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1632','4','goods276','Portal-Goods-index','1','1429154371','180.125.240.77');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1633','4','goods256','Portal-Goods-index','1','1429154587','180.125.240.77');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1634','0','goods255','Portal-Goods-index','1','1429155109','123.125.71.24');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1635','4','goods281','Portal-Goods-index','1','1429155377','180.125.240.77');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1636','0','posts20','Portal-Article-index','5','1429176340','180.125.240.77');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1637','0','goods257','Portal-Goods-index','1','1429157117','123.125.71.15');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1638','0','goods246','Portal-Goods-index','1','1429159117','123.125.71.44');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1639','0','goods20','Portal-Goods-index','1','1429160715','66.249.79.128');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1640','0','goods272','Portal-Goods-index','1','1429161154','66.249.79.128');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1641','0','goods243','Portal-Goods-index','1','1429161329','66.249.79.128');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1642','0','goods246','Portal-Goods-index','1','1429161592','66.249.79.136');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1643','0','goods18','Portal-Goods-index','1','1429161768','66.249.79.136');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1644','0','goods245','Portal-Goods-index','1','1429163117','220.181.108.143');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1645','0','goods122','Portal-Goods-index','1','1429163644','180.125.240.77');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1646','0','goods122','Portal-Goods-index','1','1429164456','112.65.193.14');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1647','0','goods','Portal-Goods-index','6','1429164459','112.65.193.14');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1648','0','goods','Portal-Goods-index','3','1429167381','180.125.240.77');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1649','0','goods','Portal-Goods-index','7','1429165864','180.153.206.36');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1650','4','posts20','Portal-Article-index','2','1429165970','180.125.240.77');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1651','0','goods102','Portal-Goods-index','1','1429167318','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1652','0','goods281','Portal-Goods-index','3','1429168536','180.125.240.77');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1653','0','goods44','Portal-Goods-index','1','1429171117','123.125.71.23');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1654','0','goods43','Portal-Goods-index','1','1429173117','220.181.108.168');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1655','0','goods42','Portal-Goods-index','1','1429175117','123.125.71.72');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1656','0','goods41','Portal-Goods-index','1','1429177117','123.125.71.99');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1657','0','goods49','Portal-Goods-index','1','1429181117','123.125.71.28');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1658','0','goods279','Portal-Goods-index','3','1429182146','121.238.239.82');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1659','0','goods112','Portal-Goods-index','1','1429182339','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1660','0','goods236','Portal-Goods-index','1','1429185117','220.181.108.170');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1661','0','goods209','Portal-Goods-index','1','1429190153','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1662','0','goods107','Portal-Goods-index','1','1429191537','101.226.166.208');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1663','0','goods11','Portal-Goods-index','1','1429191561','182.118.25.241');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1664','0','goods116','Portal-Goods-index','1','1429191638','101.226.169.195');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1665','0','goods120','Portal-Goods-index','1','1429191649','101.226.167.221');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1666','0','goods105','Portal-Goods-index','1','1429191672','182.118.22.225');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1667','0','goods111','Portal-Goods-index','1','1429191696','182.118.21.245');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1668','0','goods123','Portal-Goods-index','1','1429191760','101.226.168.233');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1669','0','goods152','Portal-Goods-index','1','1429191879','182.118.25.221');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1670','0','goods138','Portal-Goods-index','1','1429191894','182.118.25.203');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1671','0','goods134','Portal-Goods-index','1','1429191915','101.226.169.218');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1672','0','goods132','Portal-Goods-index','1','1429191950','182.118.22.208');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1673','0','goods13','Portal-Goods-index','1','1429191991','182.118.25.208');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1674','0','goods14','Portal-Goods-index','1','1429192056','182.118.25.201');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1675','0','goods142','Portal-Goods-index','1','1429192121','182.118.20.162');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1676','0','goods16','Portal-Goods-index','1','1429192143','182.118.22.230');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1677','0','goods184','Portal-Goods-index','1','1429192242','101.226.168.234');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1678','0','goods156','Portal-Goods-index','1','1429192282','101.226.166.204');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1679','0','goods187','Portal-Goods-index','1','1429192305','182.118.20.171');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1680','0','goods180','Portal-Goods-index','1','1429192323','182.118.20.203');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1681','0','goods179','Portal-Goods-index','1','1429192334','182.118.22.225');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1682','0','goods168','Portal-Goods-index','1','1429192454','182.118.21.215');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1683','0','goods208','Portal-Goods-index','1','1429192472','101.226.166.254');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1684','0','goods190','Portal-Goods-index','1','1429192481','182.118.20.219');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1685','0','goods199','Portal-Goods-index','1','1429192511','101.226.168.254');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1686','0','goods20','Portal-Goods-index','1','1429192536','182.118.21.239');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1687','0','goods197','Portal-Goods-index','1','1429192546','182.118.22.245');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1688','0','goods21','Portal-Goods-index','1','1429192547','182.118.25.232');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1689','0','goods202','Portal-Goods-index','1','1429192611','182.118.22.213');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1690','0','goods125','Portal-Goods-index','1','1429192615','101.226.166.222');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1691','0','goods114','Portal-Goods-index','1','1429192713','101.226.169.213');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1692','0','goods241','Portal-Goods-index','1','1429192764','101.226.167.197');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1693','0','goods23','Portal-Goods-index','1','1429192787','182.118.25.243');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1694','0','goods220','Portal-Goods-index','1','1429192796','182.118.22.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1695','0','goods236','Portal-Goods-index','1','1429192797','101.226.166.205');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1696','0','goods228','Portal-Goods-index','1','1429193113','182.118.25.206');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1697','0','goods218','Portal-Goods-index','1','1429193154','182.118.20.170');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1698','0','goods248','Portal-Goods-index','1','1429193218','182.118.20.228');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1699','0','goods258','Portal-Goods-index','1','1429193236','182.118.25.228');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1700','0','goods243','Portal-Goods-index','1','1429193295','101.226.169.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1701','0','goods26','Portal-Goods-index','1','1429193310','182.118.22.213');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1702','0','goods253','Portal-Goods-index','1','1429193319','182.118.21.201');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1703','0','goods261','Portal-Goods-index','1','1429193345','182.118.21.248');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1704','0','goods251','Portal-Goods-index','1','1429193393','182.118.22.208');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1705','0','goods232','Portal-Goods-index','1','1429193408','101.226.166.210');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1706','0','goods240','Portal-Goods-index','1','1429193408','101.226.166.233');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1707','0','goods263','Portal-Goods-index','1','1429193410','182.118.22.226');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1708','0','goods175','Portal-Goods-index','1','1429193454','101.226.169.209');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1709','0','goods267','Portal-Goods-index','1','1429193523','182.118.20.163');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1710','0','goods269','Portal-Goods-index','1','1429193523','182.118.21.235');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1711','0','goods128','Portal-Goods-index','1','1429193595','101.226.167.207');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1712','0','goods265','Portal-Goods-index','1','1429193686','101.226.169.230');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1713','0','goods255','Portal-Goods-index','1','1429193696','101.226.166.233');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1714','0','goods146','Portal-Goods-index','1','1429193750','101.226.168.244');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1715','0','goods264','Portal-Goods-index','1','1429193945','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1716','0','goods171','Portal-Goods-index','1','1429193948','101.226.166.249');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1717','0','goods161','Portal-Goods-index','1','1429193948','101.226.166.244');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1718','0','goods214','Portal-Goods-index','1','1429194131','101.226.168.225');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1719','0','goods212','Portal-Goods-index','1','1429194233','101.226.168.250');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1720','0','goods149','Portal-Goods-index','1','1429194250','101.226.167.229');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1721','0','goods204','Portal-Goods-index','1','1429194357','101.226.167.234');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1722','0','goods246','Portal-Goods-index','1','1429195252','101.226.167.250');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1723','0','goods193','Portal-Goods-index','1','1429195252','101.226.167.253');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1724','0','goods264','Portal-Goods-index','1','1429195655','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1725','0','goods43','Portal-Goods-index','1','1429196281','203.208.60.201');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1726','0','goods81','Portal-Goods-index','1','1429200461','203.208.60.201');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1727','0','goods281','Portal-Goods-index','1','1429201116','220.181.108.176');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1728','0','goods76','Portal-Goods-index','1','1429202459','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1729','0','goods98','Portal-Goods-index','1','1429202722','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1730','0','goods212','Portal-Goods-index','2','1429227064','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1731','0','goods214','Portal-Goods-index','1','1429214057','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1732','0','goods52','Portal-Goods-index','1','1429214408','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1733','0','goods203','Portal-Goods-index','2','1429227855','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1734','0','goods98','Portal-Goods-index','1','1429216955','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1735','0','posts20','Portal-Article-index','1','1429217245','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1736','0','goods217','Portal-Goods-index','1','1429217833','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1737','0','goods280','Portal-Goods-index','1','1429217920','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1738','0','goods281','Portal-Goods-index','1','1429218548','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1739','0','goods230','Portal-Goods-index','1','1429219250','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1740','0','goods49','Portal-Goods-index','1','1429223985','203.208.60.205');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1741','0','goods232','Portal-Goods-index','1','1429226889','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1742','0','goods220','Portal-Goods-index','1','1429229698','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1743','0','goods78','Portal-Goods-index','1','1429229874','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1744','0','goods61','Portal-Goods-index','1','1429230401','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1745','0','goods48','Portal-Goods-index','2','1429249299','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1746','0','goods279','Portal-Goods-index','5','1429249702','180.124.104.169');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1747','0','goods32','Portal-Goods-index','1','1429235050','180.124.104.169');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1748','0','goods40','Portal-Goods-index','10','1429235587','180.124.104.169');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1749','0','goods281','Portal-Goods-index','1','1429235518','180.124.104.169');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1750','0','goods280','Portal-Goods-index','5','1429235621','180.124.104.169');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1751','0','goods20','Portal-Goods-index','1','1429235801','66.249.79.88');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1752','0','goods33','Portal-Goods-index','1','1429235889','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1753','0','posts20','Portal-Article-index','3','1429237843','180.124.104.169');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1754','5','posts20','Portal-Article-do_like','1','1429239277','180.124.104.169');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1755','0','goods212','Portal-Goods-index','1','1429242859','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1756','0','goods108','Portal-Goods-index','1','1429243113','66.249.79.96');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1757','0','goods133','Portal-Goods-index','1','1429248508','66.249.79.80');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1758','0','goods263','Portal-Goods-index','1','1429249648','223.145.46.227');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1759','0','goods106','Portal-Goods-index','1','1429249738','66.249.79.96');
DROP TABLE IF EXISTS `sp_goods`;
CREATE TABLE `sp_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL auto_increment,
  `goods_name` varchar(200) NOT NULL default '' COMMENT '宝贝名称',
  `goods_type` varchar(255) NOT NULL COMMENT '商品类型',
  `term_id` mediumint(8) NOT NULL default '0' COMMENT '宝贝名称',
  `term_name` varchar(32) NOT NULL default '' COMMENT '分类名称',
  `seller_name` varchar(32) NOT NULL default '' COMMENT '卖家名称',
  `seller_credit` varchar(32) NOT NULL default '' COMMENT '卖家信用',
  `old_price` decimal(11,2) NOT NULL default '0.00' COMMENT '原价',
  `goods_price` decimal(11,2) NOT NULL default '0.00' COMMENT '现价',
  `total_num` int(10) NOT NULL default '0' COMMENT '30天推广数量',
  `brokerage` decimal(11,2) NOT NULL default '0.00' COMMENT '佣金',
  `goods_PEG` decimal(11,2) NOT NULL default '0.00' COMMENT '收入比率',
  `goods_salesnum` int(10) NOT NULL default '0' COMMENT '宝贝销量',
  `click_rate` int(10) NOT NULL default '0' COMMENT '点击量',
  `comment_count` int(10) NOT NULL,
  `pic_url` varchar(255) NOT NULL COMMENT '图片地址',
  `goods_url` varchar(255) NOT NULL default '' COMMENT '宝贝地址',
  `click_url` text NOT NULL COMMENT '推广地址',
  `shop_url` text NOT NULL COMMENT '店铺地址',
  `sclick_url` text NOT NULL COMMENT '店铺推广链接',
  `goods_body` longtext NOT NULL COMMENT '宝贝内容',
  `goods_state` tinyint(1) NOT NULL default '1' COMMENT '状态，1审核通过，0未审核',
  `seo_title` varchar(255) default NULL COMMENT 'seo标题',
  `seo_keywords` varchar(255) default NULL COMMENT 'seo关键字',
  `seo_description` varchar(255) default NULL,
  `add_time` int(11) NOT NULL default '0' COMMENT '添加时间（时间戳）',
  `update_time` int(11) NOT NULL default '0' COMMENT '最后一次修改时间（时间戳）',
  `listorder` int(10) NOT NULL COMMENT '排序',
  `goods_hits` int(11) NOT NULL default '0' COMMENT '商品点击数',
  `goods_like` int(11) NOT NULL default '0' COMMENT '商品赞数',
  PRIMARY KEY  (`goods_id`),
  KEY `goods_name` (`goods_name`),
  KEY `goods_url` (`goods_url`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_goods_apply`;
CREATE TABLE `sp_goods_apply` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'id',
  `gid` int(10) unsigned NOT NULL COMMENT '商品id（对应goods表的id）',
  `sid` int(10) unsigned NOT NULL COMMENT '店铺id(对应shop表)',
  `cid` int(10) unsigned NOT NULL COMMENT '分类id（categorys表中所在专场id）',
  `url` varchar(255) NOT NULL COMMENT '商品链接（淘宝链接）',
  `state` tinyint(1) NOT NULL COMMENT '状态  -1：审核未通过  0：待审核 1：审核通过  2：已下架 ',
  `ctime` int(10) unsigned NOT NULL COMMENT '提交时间',
  `etime` int(10) unsigned NOT NULL COMMENT '最后编辑时间',
  `listorder` int(10) NOT NULL COMMENT '排序',
  `info` varchar(255) NOT NULL COMMENT '备注',
  `uid` int(10) NOT NULL COMMENT '用户id',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_guestbook`;
CREATE TABLE `sp_guestbook` (
  `id` int(11) NOT NULL auto_increment,
  `full_name` varchar(50) NOT NULL COMMENT '留言者姓名',
  `email` varchar(100) NOT NULL COMMENT '留言者邮箱',
  `title` varchar(255) default NULL COMMENT '留言标题',
  `msg` text NOT NULL COMMENT '留言内容',
  `createtime` datetime NOT NULL,
  `status` smallint(2) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_links`;
CREATE TABLE `sp_links` (
  `link_id` bigint(20) unsigned NOT NULL auto_increment,
  `link_url` varchar(255) NOT NULL COMMENT '友情链接地址',
  `link_name` varchar(255) NOT NULL COMMENT '友情链接名称',
  `link_image` varchar(255) default NULL COMMENT '友情链接图标',
  `link_target` varchar(25) NOT NULL default '_blank' COMMENT '友情链接打开方式',
  `link_description` text NOT NULL COMMENT '友情链接描述',
  `link_status` int(2) NOT NULL default '1',
  `link_rating` int(11) NOT NULL default '0' COMMENT '友情链接评级',
  `link_rel` varchar(255) default '',
  `listorder` int(10) NOT NULL default '0' COMMENT '排序',
  PRIMARY KEY  (`link_id`),
  KEY `link_visible` (`link_status`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_links ( `link_id`, `link_url`, `link_name`, `link_image`, `link_target`, `link_description`, `link_status`, `link_rating`, `link_rel`, `listorder` ) VALUES  ('1','http://www.xiaocaocms.com','XiaocaoCMS','','_blank','','1','0','','0');
DROP TABLE IF EXISTS `sp_menu`;
CREATE TABLE `sp_menu` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `parentid` smallint(6) unsigned NOT NULL default '0',
  `app` char(20) NOT NULL COMMENT '应用名称app',
  `model` char(20) NOT NULL COMMENT '控制器',
  `action` char(20) NOT NULL COMMENT '操作名称',
  `data` char(50) NOT NULL COMMENT '额外参数',
  `type` tinyint(1) NOT NULL default '0' COMMENT '菜单类型  1：权限认证+菜单；0：只作为菜单',
  `status` tinyint(1) unsigned NOT NULL default '0' COMMENT '状态，1显示，0不显示',
  `name` varchar(50) NOT NULL COMMENT '菜单名称',
  `icon` varchar(50) default NULL COMMENT '菜单图标',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `listorder` smallint(6) unsigned NOT NULL default '0' COMMENT '排序ID',
  PRIMARY KEY  (`id`),
  KEY `status` (`status`),
  KEY `parentid` (`parentid`),
  KEY `model` (`model`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('239','0','Admin','Setting','default','','0','1','设置','cogs','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('51','0','Admin','Content','default','','0','1','内容管理','th','','10');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('245','51','Portal','AdminTerm','index','','0','1','分类管理','','','2');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('299','260','Api','Oauthadmin','setting','','1','1','第三方登陆','leaf','','4');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('252','239','Admin','Setting','userdefault','','0','1','个人信息','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('253','252','Admin','User','userinfo','','1','1','修改信息','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('254','252','Admin','Setting','password','','1','1','修改密码','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('260','0','Admin','Extension','default','','0','1','扩展工具','cloud','','30');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('262','260','Admin','Slide','default','','1','1','幻灯片','','','1');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('264','262','Admin','Slide','index','','1','1','幻灯片管理','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('265','260','Admin','Ad','index','','1','1','网站广告','','','2');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('268','262','Admin','Slidecat','index','','1','1','幻灯片分类','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('270','260','Admin','Link','index','','0','1','友情链接','','','3');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('277','51','Portal','AdminPage','index','','1','1','页面管理','','','3');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('301','300','Portal','AdminPage','recyclebin','','1','1','页面回收','','','1');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('302','300','Portal','AdminPost','recyclebin','','1','1','文章回收','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('300','51','Admin','Recycle','default','','1','1','回收站','','','6');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('284','239','Admin','Setting','site','','1','1','网站信息','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('285','51','Portal','AdminPost','index','','1','1','文章管理','','','1');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('286','0','User','Indexadmin','default','','1','1','用户管理','group','','1');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('287','289','User','Indexadmin','index','','1','1','本站用户','leaf','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('288','289','User','Oauthadmin','index','','1','1','第三方用户','leaf','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('289','286','User','Indexadmin','default1','','1','1','用户组','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('290','286','User','Indexadmin','default3','','1','1','管理组','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('291','290','Admin','Rbac','index','','1','1','角色管理','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('292','290','Admin','User','index','','1','1','管理员','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('293','0','Admin','Menu','default','','1','1','菜单管理','list','','2');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('294','293','Admin','Navcat','default1','','1','1','前台菜单','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('295','294','Admin','Nav','index','','1','1','菜单管理','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('296','294','Admin','Navcat','index','','1','1','菜单分类','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('297','293','Admin','Menu','index','','1','1','后台菜单','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('298','239','Admin','Setting','clearcache','','1','1','清除缓存','','','1');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('319','260','Admin','Backup','default','','1','1','备份管理','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('480','292','Admin','User','delete','','1','0','删除管理员','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('479','292','Admin','User','edit','','1','0','管理员编辑','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('478','292','Admin','User','add','','1','0','管理员添加','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('477','245','Portal','AdminTerm','delete','','1','0','删除分类','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('476','245','Portal','AdminTerm','edit','','1','0','编辑分类','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('475','245','Portal','AdminTerm','add','','1','0','添加分类','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('474','268','Admin','Slidecat','delete','','1','0','删除分类','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('473','268','Admin','Slidecat','edit','','1','0','编辑分类','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('472','268','Admin','Slidecat','add','','1','0','添加分类','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('471','264','Admin','Slide','delete','','1','0','删除幻灯片','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('470','264','Admin','Slide','edit','','1','0','编辑幻灯片','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('469','264','Admin','Slide','add','','1','0','添加幻灯片','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('467','291','Admin','Rbac','member','','1','0','成员管理','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('465','291','Admin','Rbac','authorize','','1','0','权限设置','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('464','291','Admin','Rbac','roleedit','','1','0','编辑角色','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('463','291','Admin','Rbac','roledelete','','1','1','删除角色','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('462','291','Admin','Rbac','roleadd','','1','1','添加角色','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('458','302','Portal','AdminPost','restore','','1','0','文章还原','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('457','302','Portal','AdminPost','clean','','1','0','彻底删除','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('456','285','Portal','AdminPost','move','','1','0','批量移动','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('455','285','Portal','AdminPost','check','','1','0','文章审核','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('454','285','Portal','AdminPost','delete','','1','0','删除文章','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('452','285','Portal','AdminPost','edit','','1','0','编辑文章','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('451','285','Portal','AdminPost','add','','1','0','添加文章','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('450','301','Portal','AdminPage','clean','','1','0','彻底删除','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('449','301','Portal','AdminPage','restore','','1','0','页面还原','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('448','277','Portal','AdminPage','delete','','1','0','删除页面','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('446','277','Portal','AdminPage','edit','','1','0','编辑页面','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('445','277','Portal','AdminPage','add','','1','0','添加页面','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('444','296','Admin','Navcat','delete','','1','0','删除分类','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('443','296','Admin','Navcat','edit','','1','0','编辑分类','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('442','296','Admin','Navcat','add','','1','0','添加分类','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('441','295','Admin','Nav','delete','','1','0','删除菜单','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('440','295','Admin','Nav','edit','','1','0','编辑菜单','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('439','295','Admin','Nav','add','','1','0','添加菜单','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('436','297','Admin','Menu','export_menu','','1','0','菜单备份','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('434','297','Admin','Menu','edit','','1','0','编辑菜单','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('433','297','Admin','Menu','delete','','1','0','删除菜单','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('432','297','Admin','Menu','lists','','1','0','所有菜单','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('430','270','Admin','Link','delete','','1','0','删除友情链接','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('429','270','Admin','Link','edit','','1','0','编辑友情链接','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('428','270','Admin','Link','add','','1','0','添加友情链接','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('424','319','Admin','Backup','download','','1','0','下载备份','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('423','319','Admin','Backup','del_backup','','1','0','删除备份','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('422','319','Admin','Backup','import','','1','0','数据备份导入','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('421','319','Admin','Backup','restore','','1','1','数据还原','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('420','265','Admin','Ad','delete','','1','0','删除广告','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('419','265','Admin','Ad','edit','','1','0','编辑广告','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('418','265','Admin','Ad','add','','1','0','添加广告','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('496','319','Admin','Backup','index','','1','1','数据备份','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('497','418','Admin','Ad','add_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('498','419','Admin','Ad','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('499','428','Admin','Link','add_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('500','429','Admin','Link','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('501','536','Admin','Menu','add_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('502','434','Admin','Menu','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('503','439','Admin','Nav','add_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('504','440','Admin','Nav','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('505','442','Admin','Navcat','add_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('506','443','Admin','Navcat','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('507','445','Portal','AdminPage','add_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('508','446','Portal','AdminPage','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('509','451','Portal','AdminPost','add_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('510','452','Portal','AdminPost','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('511','462','Admin','Rbac','roleadd_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('512','464','Admin','Rbac','roleedit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('513','465','Admin','Rbac','authorize_post','','1','0','提交设置','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('514','284','Admin','Setting','site_post','','1','0','提交修改','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('515','254','Admin','Setting','password_post','','1','0','提交修改','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('516','469','Admin','Slide','add_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('517','470','Admin','Slide','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('518','472','Admin','Slidecat','add_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('519','473','Admin','Slidecat','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('520','475','Portal','AdminTerm','add_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('521','476','Portal','AdminTerm','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('522','478','Admin','User','add_post','','1','0','添加提交','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('523','479','Admin','User','edit_post','','1','0','编辑提交','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('524','253','Admin','User','userinfo_post','','1','0','修改信息提交','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('525','299','Api','Oauthadmin','setting_post','','1','0','提交设置','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('526','533','Admin','Mailer','index','','1','1','SMTP配置','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('527','526','Admin','Mailer','index_post','','1','0','提交配置','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('528','533','Admin','Mailer','active','','1','1','邮件模板','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('529','528','Admin','Mailer','active_post','','1','0','提交模板','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('533','239','Admin','Mailer','default','','1','1','邮箱配置','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('536','297','Admin','Menu','add','','1','0','添加菜单','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('546','496','Admin','Backup','index_post','','1','0','提交数据备份','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('547','270','Admin','Link','listorders','','1','0','友情链接排序','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('548','297','Admin','Menu','listorders','','1','0','后台菜单排序','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('549','295','Admin','Nav','listorders','','1','0','前台导航排序','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('550','277','Portal','AdminPage','listorders','','1','0','页面排序','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('551','285','Portal','AdminPost','listorders','','1','0','文章排序','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('552','264','Admin','Slide','listorders','','1','0','幻灯片排序','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('553','245','Portal','AdminTerm','listorders','','1','0','文章分类排序','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('554','51','Api','Guestbookadmin','index','','1','1','所有留言','','','5');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('555','554','Api','Guestbookadmin','delete','','1','0','删除网站留言','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('557','51','Comment','Commentadmin','index','','1','1','评论管理','','','4');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('559','557','Comment','Commentadmin','delete','','1','0','删除评论','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('560','557','Comment','Commentadmin','check','','1','0','评论审核','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('561','287','User','Indexadmin','ban','','1','0','拉黑会员','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('562','287','User','Indexadmin','cancelban','','1','0','启用会员','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('563','288','User','Oauthadmin','delete','','1','0','第三方用户解绑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('564','284','Admin','Route','index','','1','0','路由列表','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('565','284','Admin','Route','add','','1','0','路由添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('566','565','Admin','Route','add_post','','1','0','路由添加提交','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('567','284','Admin','Route','edit','','1','0','路由编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('568','567','Admin','Route','edit_post','','1','0','路由编辑提交','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('569','284','Admin','Route','delete','','1','0','路由删除','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('572','284','Admin','Route','ban','','1','0','路由禁止','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('573','284','Admin','Route','open','','1','0','路由启用','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('574','284','Admin','Route','listorders','','1','0','路由排序','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('575','51','Portal','AdminGoods','index','','1','1','商品管理','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('576','0','Caiji','indexadmin','default','','1','1','采集管理','','','3');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('577','576','Caiji','indexadmin','index','','1','1','cookies采集','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('579','0','Scoremall','indexadmin','index','','1','1','积分商城','gavel','','20');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('580','579','Scoremall','Indexadmin','scoreGoodsList','','1','1','商品管理','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('581','579','Scoremall','indexadmin','goodstypelist','','1','1','商品类型','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('582','579','Scoremall','indexadmin','scoreLog','','1','1','积分日志','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('583','579','Scoremall','indexadmin','scoreOrder','','1','1','积分订单','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('584','0','Storehome','Indexadmin','index','','1','1','商家报名','edit','','11');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('585','584','Storehome','Indexadmin','applyList','','1','1','审核列表','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('586','0','User','Hezuoadmin','index','','1','1','活动专场','bullhorn','','12');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('587','586','User','Hezuoadmin','cateList','','1','1','专场管理','','','0');
DROP TABLE IF EXISTS `sp_nav`;
CREATE TABLE `sp_nav` (
  `id` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `target` varchar(50) default NULL,
  `href` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `status` int(2) NOT NULL default '1',
  `listorder` int(6) default '0',
  `path` varchar(255) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('1','1','0','首页','','home','','1','0','0-1');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('2','1','0','文章中心','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"7\";}}','','1','3','0-2');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('4','1','0','9.9包邮','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"6\";}}','','0','44','0-4');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('7','2','0','主页导航2','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"13\";}}','','1','0','0-7');
DROP TABLE IF EXISTS `sp_nav_cat`;
CREATE TABLE `sp_nav_cat` (
  `navcid` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `active` int(1) NOT NULL default '1',
  `remark` text,
  PRIMARY KEY  (`navcid`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_nav_cat ( `navcid`, `name`, `active`, `remark` ) VALUES  ('1','主导航','1','主导航');
INSERT INTO sp_nav_cat ( `navcid`, `name`, `active`, `remark` ) VALUES  ('2','主页导航2','0','阿萨德看见啦空间的绿卡就拉开手机');
DROP TABLE IF EXISTS `sp_oauth_user`;
CREATE TABLE `sp_oauth_user` (
  `id` int(20) NOT NULL auto_increment,
  `from` varchar(20) NOT NULL COMMENT '用户来源key',
  `name` varchar(30) NOT NULL COMMENT '第三方昵称',
  `head_img` varchar(200) NOT NULL COMMENT '头像',
  `uid` int(20) NOT NULL COMMENT '关联的本站用户id',
  `create_time` datetime NOT NULL COMMENT '绑定时间',
  `last_login_time` datetime NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(16) NOT NULL COMMENT '最后登录ip',
  `login_times` int(6) NOT NULL COMMENT '登录次数',
  `status` tinyint(2) NOT NULL,
  `access_token` varchar(60) NOT NULL,
  `expires_date` int(12) NOT NULL COMMENT 'access_token过期时间',
  `openid` varchar(40) NOT NULL COMMENT '第三方用户id',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_oauth_user ( `id`, `from`, `name`, `head_img`, `uid`, `create_time`, `last_login_time`, `last_login_ip`, `login_times`, `status`, `access_token`, `expires_date`, `openid` ) VALUES  ('1','sina','aQaaaaaaa','http://tp2.sinaimg.cn/2067433761/180/0/1','5','2015-04-17 10:53:22','2015-04-17 10:53:22','180.124.104.169','1','1','2.00pxjuPChjpyBEb5f4f6e4a7zAGkAB','1586919201','2067433761');
DROP TABLE IF EXISTS `sp_options`;
CREATE TABLE `sp_options` (
  `option_id` bigint(20) unsigned NOT NULL auto_increment,
  `option_name` varchar(64) NOT NULL default '',
  `option_value` longtext NOT NULL,
  `autoload` int(2) NOT NULL default '1',
  PRIMARY KEY  (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_options ( `option_id`, `option_name`, `option_value`, `autoload` ) VALUES  ('1','member_email_active','{\"title\":\"XiaocaoCMS\\u90ae\\u4ef6\\u6fc0\\u6d3b\\u901a\\u77e5.\",\"template\":\"<p>\\u672c\\u90ae\\u4ef6\\u6765\\u81ea<a href=\\\"http:\\/\\/www.xiaocaocms.com\\\">XiaocaoCMS<\\/a><br\\/><br\\/>&nbsp; &nbsp;<strong>---------------<\\/strong><br\\/>&nbsp; &nbsp;<strong>\\u5e10\\u53f7\\u6fc0\\u6d3b\\u8bf4\\u660e<\\/strong><br\\/>&nbsp; &nbsp;<strong>---------------<\\/strong><br\\/><br\\/>&nbsp; &nbsp; \\u5c0a\\u656c\\u7684<span style=\\\"FONT-SIZE: 16px; FONT-FAMILY: Arial; COLOR: rgb(51,51,51); LINE-HEIGHT: 18px; BACKGROUND-COLOR: rgb(255,255,255)\\\">#username#\\uff0c\\u60a8\\u597d\\u3002<\\/span>\\u5982\\u679c\\u60a8\\u662fXiaocaoCMS\\u7684\\u65b0\\u7528\\u6237\\uff0c\\u6216\\u5728\\u4fee\\u6539\\u60a8\\u7684\\u6ce8\\u518cEmail\\u65f6\\u4f7f\\u7528\\u4e86\\u672c\\u5730\\u5740\\uff0c\\u6211\\u4eec\\u9700\\u8981\\u5bf9\\u60a8\\u7684\\u5730\\u5740\\u6709\\u6548\\u6027\\u8fdb\\u884c\\u9a8c\\u8bc1\\u4ee5\\u907f\\u514d\\u5783\\u573e\\u90ae\\u4ef6\\u6216\\u5730\\u5740\\u88ab\\u6ee5\\u7528\\u3002<br\\/>&nbsp; &nbsp; \\u60a8\\u53ea\\u9700\\u70b9\\u51fb\\u4e0b\\u9762\\u7684\\u94fe\\u63a5\\u5373\\u53ef\\u6fc0\\u6d3b\\u60a8\\u7684\\u5e10\\u53f7\\uff1a<br\\/>&nbsp; &nbsp; <a title=\\\"\\\" href=\\\"http:\\/\\/#link#\\\" target=\\\"_self\\\">http:\\/\\/#link#<\\/a><br\\/>&nbsp; &nbsp; (\\u5982\\u679c\\u4e0a\\u9762\\u4e0d\\u662f\\u94fe\\u63a5\\u5f62\\u5f0f\\uff0c\\u8bf7\\u5c06\\u8be5\\u5730\\u5740\\u624b\\u5de5\\u7c98\\u8d34\\u5230\\u6d4f\\u89c8\\u5668\\u5730\\u5740\\u680f\\u518d\\u8bbf\\u95ee)<br\\/>&nbsp; &nbsp; \\u611f\\u8c22\\u60a8\\u7684\\u8bbf\\u95ee\\uff0c\\u795d\\u60a8\\u4f7f\\u7528\\u6109\\u5feb\\uff01<br\\/><br\\/>&nbsp; &nbsp; \\u6b64\\u81f4<br\\/>&nbsp; &nbsp; XiaocaoCMS \\u7ba1\\u7406\\u56e2\\u961f.<\\/p>\"}','1');
INSERT INTO sp_options ( `option_id`, `option_name`, `option_value`, `autoload` ) VALUES  ('2','site_options','{\"site_name\":\"\\u5c0f\\u8349\\u6dd8\\u5b9d\\u5ba2..\",\"site_host\":\"http:\\/\\/demo.xiaocaocms.com\\/\",\"taoke_pid\":\"mm_17608458_7070676_25470140\",\"taodianjin\":\"\",\"site_root\":\"\\/\",\"site_tpl\":\"simplebootx\",\"site_adminstyle\":\"flat\",\"site_icp\":\"\",\"site_admin_email\":\"88482528@qq.com\",\"site_tongji\":\"\",\"site_copyright\":\"\",\"site_seo_title\":\"XiaocaoCMS\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6\",\"site_seo_keywords\":\"\",\"site_seo_description\":\"XiaocaoCMS\\u662f\\u5c0f\\u8349\\u7f51\\u7edc\\u79d1\\u6280\\u53d1\\u5e03\\u7684\\u4e00\\u6b3e\\u7528\\u4e8e\\u5feb\\u901f\\u5f00\\u53d1\\u7684\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6\",\"urlmode\":\"1\",\"html_suffix\":\"\",\"signScore\":\"3\",\"signScoreNum\":\"12\"}','1');
INSERT INTO sp_options ( `option_id`, `option_name`, `option_value`, `autoload` ) VALUES  ('3','cmf_settings','{\"banned_usernames\":\"\"}','1');
DROP TABLE IF EXISTS `sp_posts`;
CREATE TABLE `sp_posts` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `post_author` bigint(20) unsigned default '0' COMMENT '发表者id',
  `post_keywords` varchar(150) NOT NULL COMMENT 'seo keywords',
  `post_date` datetime default '0000-00-00 00:00:00' COMMENT 'post创建日期，永久不变，一般不显示给用户',
  `post_content` longtext COMMENT 'post内容',
  `post_title` text COMMENT 'post标题',
  `post_excerpt` text COMMENT 'post摘要',
  `post_status` int(2) default '1' COMMENT 'post状态，1已审核，0未审核',
  `comment_status` int(2) default '1' COMMENT '评论状态，1允许，0不允许',
  `post_modified` datetime default '0000-00-00 00:00:00' COMMENT 'post更新时间，可在前台修改，显示给用户',
  `post_content_filtered` longtext,
  `post_parent` bigint(20) unsigned default '0' COMMENT 'post的父级post id,表示post层级关系',
  `post_type` int(2) default NULL,
  `post_mime_type` varchar(100) default '',
  `comment_count` bigint(20) default '0',
  `smeta` text COMMENT 'post的扩展字段，保存相关扩展属性，如缩略图；格式为json',
  `post_hits` int(11) default '0' COMMENT 'post点击数，查看数',
  `post_like` int(11) default '0' COMMENT 'post赞数',
  PRIMARY KEY  (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`id`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `post_date` USING BTREE (`post_date`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like` ) VALUES  ('1','1','sadfsda','2015-02-27 15:44:22','<p>asdfsadf<br/></p>','sdafsdf','sdaf','1','1','2015-02-27 15:44:15','','0','','','0','{\"thumb\":\"54f3ba4b706c9.jpg\",\"photo\":[{\"url\":\"54f3ba2556bae.jpg\",\"alt\":\"psb\"},{\"url\":\"54f3ba3352a4e.jpg\",\"alt\":\"psb\"}]}','2','1');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like` ) VALUES  ('2','1','123','2015-03-02 17:36:56','<p>123123<br/></p>','123123','123123','1','1','2015-03-02 17:36:26','','0','','','0','{\"thumb\":\"54f42f344a893.jpg\",\"photo\":[{\"url\":\"54f42f2d89218.jpg\",\"alt\":\"psb\"}]}','1','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like` ) VALUES  ('6','1','123123','2015-03-11 13:47:11','<p>123123<br/></p>','123123','123123','1','1','2015-03-11 13:46:54','','0','','','0','{\"thumb\":\"\"}','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like` ) VALUES  ('7','1','123123','2015-03-11 13:47:18','<p>123123撒旦法撒旦法<br/></p>','123123','123123','1','1','2015-03-11 13:46:54','','0','','','0','{\"thumb\":\"\"}','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like` ) VALUES  ('8','1','123123','2015-03-11 13:47:19','<p>123123撒旦法撒旦法<br/></p>','123123','123123','1','1','2015-03-11 13:46:54','','0','','','0','{\"thumb\":\"\"}','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like` ) VALUES  ('9','1','123123','2015-03-11 13:47:19','<p>123123撒旦法撒旦法<br/></p>','123123','123123','1','1','2015-03-11 13:46:54','','0','','','0','{\"thumb\":\"\"}','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like` ) VALUES  ('10','1','123123','2015-03-11 13:47:19','<p>123123撒旦法撒旦法<br/></p>','123123','123123','1','1','2015-03-11 13:46:54','','0','','','0','{\"thumb\":\"\"}','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like` ) VALUES  ('11','1','123123','2015-03-11 13:47:25','<p>123123撒旦法撒旦法<br/></p>','123123','123123','1','1','2015-03-11 13:46:54','','0','','','0','{\"thumb\":\"\"}','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like` ) VALUES  ('12','1','123123','2015-03-11 13:48:10','<p>123123撒旦法撒旦法<br/></p>','123123','123123','1','1','2015-03-11 13:46:54','','0','','','0','{\"thumb\":\"\"}','2','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like` ) VALUES  ('13','1','关于我们','2015-03-23 16:33:10','<link href=\"/tpl/simplebootx/Public/css/about.css\" rel=\"stylesheet\" />
<div class=\"main\">
    <div class=\"piece about\">
        <div class=\"white_top\">
            <div class=\"white_top_left\"></div>
            <div class=\"white_top_middle\"></div>
            <div class=\"white_top_right\"></div>
        </div>
        <div class=\"white_bg\">
            <!-- 导航 -->
            <div class=\"about_menu\">
                <ul>
                    <li class=\"about-one\">
                        <dl>
                            <dt class=\"cur\"><a href=\"/index.php/about/xiaocao\">关于小草</a>
                            </dt>
                            <dd>
                                <a href=\"/index.php/about/xiaocao\" class=\"active\">关于小草<em class=\"right-icon\"></em></a>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt><a href=\"/index.php/about/partner\">携手小草</a>
                            </dt>
                            <dd>
                                <a href=\"/index.php/about/partner\">商务合作</a>
                            </dd>
                            <dd>
                                <a href=\"/index.php/about/links\">友情链接</a>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt><a target=\"_blank\" href=\"/index.php/help/xiaobao\">服务保障</a>
                            </dt>
                            <dd><a target=\"_blank\" href=\"/index.php/help/xiaobao\">消费保障</a>
                            </dd>
                            <dd><a rel=\"nofollow\" href=\"/index.php/about/service\">在线客服</a>
                            </dd>
                        </dl>
                    </li>
                    <li class=\"last\">
                        <dt><a target=\"_blank\" href=\"/index.php/help\">帮助中心</a>
                        </dt>
                    </li>
                    <li class=\"menu-bg\"></li>
                </ul>
            </div>
            <div class=\"about_contain\">
                <div class=\"about_content\">
                    <h3 class=\"about_tit about_tit_us\">关于小草</h3>
                    <div class=\"about_uspic\">
                        <p class=\"txt\">小草网是一家专注网购折扣省钱的国内领先的折扣精品特卖网站。每日通过汇聚各大电商平台的丰富独家优质折扣精品，以更低的折扣优惠，严格的样品质检和活动监督，为广大的用户提供最便捷省钱的方式，购买到最实惠的商品和完整的服务。</p>
                        <p class=\"txt\">小草网立志为用户节省更多的购物开支并降低消费成本，创造一种更经济绿色的网上购物省钱模式，竭力为每位用户带来超值优质省钱的购物体验。</p>
                    </div>
                </div>

                <div class=\"about_content about_content_1\">
                    <h3 class=\"about_tit about_tit_us\">小草，独家折扣1折起</h3>
                    <div class=\"about_uspic about_uspic_1\">
                        <ul>
                            <li>
                                <span class=\"postage\">全场包邮</span>
                                <div class=\"about_tips\">
                                    <h2>全场包邮</h2>
                                    <p>小草职业买手对商品进行轮番砍价，冰点价格，独家折扣！全场1折包邮，9.9包邮起！</p>
                                </div>
                            </li>

                            <li>
                                <span class=\"discount\">独家折扣</span>
                                <div class=\"about_tips\">
                                    <h2>独家折扣</h2>
                                    <p>每天10：00点开抢，涵盖女装、男装、鞋包、母婴、居家、美容化妆品、数码、美食、文体等。淘宝、天猫独家折扣低至1折包邮！</p>
                                </div>
                            </li>

                            <li>
                                <span class=\"testing\">商品质检</span>
                                <div class=\"about_tips\">
                                    <h2>商品质检</h2>
                                    <p>小草会先对每一位商家进行严格的审核，最终筛选合作商家； 再对商家所售的商品样品进行全方位、深度质检，包装、细节、样品试用等所有项目都通过质检合格后才能与小草合作。确保为消费者提供优质的商品和服务！
                                    </p>
                                </div>
                            </li>

                            <li>
                                <span class=\"sale\">售后保障</span>
                                <div class=\"about_tips\">
                                    <h2>售后保障</h2>
                                    <p>小草网天猫商家支持7天无理由退换货，淘宝商家提供消费者保障服务。小草网为每一位用户提供完整的售后保障服务，放心购物每一天！</p>
                                </div>
                            </li>

                        </ul>
                    </div>
                </div>


                <div class=\"about_content\">
                    <h3 class=\"about_tit about_tit_us\">联系小草</h3>
                    <div class=\"about_uspic\">
                        <p>小草网络科技有限公司</p>
                        <p>公司地址：xxxxxxxxxxxxxxxxxxxxxxx</p>
                        <p>联系电话：xxx-xxxxxxxx</p>
                        <p>邮编：xxxxxx</p>
                    </div>
                </div>

            </div>
        </div>
        <div class=\"white_bottom\">
            <div class=\"white_bottom_left\"></div>
            <div class=\"white_bottom_middle\"></div>
            <div class=\"white_bottom_right\"></div>
        </div>
    </div>
</div>
','关于我们','关于我们','1','1','2015-03-23 16:32:46','','0','2','','0','{\"thumb\":\"\",\"template\":\"empty\"}','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like` ) VALUES  ('15','1','','2015-03-26 16:45:11','<link href=\"/tpl/simplebootx/Public/css/about.css\" rel=\"stylesheet\"/>
<div class=\"main\">
    <div class=\"piece about\">
        <div class=\"white_top\">
            <div class=\"white_top_left\"></div>
            <div class=\"white_top_middle\"></div>
            <div class=\"white_top_right\"></div>
        </div>
        <div class=\"white_bg\">
            <!-- 导航 -->
            <div class=\"about_menu\">
                <ul>
                    <li class=\"about-one\">
                        <dl>
                            <dt class=\"cur\">
                                <a href=\"/index.php/about/xiaocao\">关于小草</a>
                            </dt>
                            <dd>
                                <a href=\"/index.php/about/xiaocao\">关于小草</a>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt>
                                <a href=\"/index.php/about/partner\">携手小草</a>
                            </dt>
                            <dd>
                                <a href=\"/index.php/about/partner\" class=\"active\">商务合作<em class=\"right-icon\"></em></a>
                            </dd>
                            <dd>
                                <a href=\"/index.php/about/links\">友情链接</a>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt>
                                <a target=\"_blank\" href=\"/index.php/help/xiaobao\">服务保障</a>
                            </dt>
                            <dd>
                                <a target=\"_blank\" href=\"/index.php/help/xiaobao\">消费保障</a>
                            </dd>
                            <dd>
                                <a rel=\"nofollow\" href=\"/index.php/about/service\">在线客服</a>
                            </dd>
                        </dl>
                    </li>
                    <li class=\"last\">
                        <dt>
                            <a target=\"_blank\" href=\"/index.php/help\">帮助中心</a>
                        </dt>
                    </li>
                </ul>
            </div>
            <div class=\"about_contain\">
                <div class=\"about_tit\">
                  <em></em>
                    商务合作
                </div>
                <div class=\"about_line\"></div>
                <div class=\"about_ad\">
                    <div class=\"about_ad_piece piece_good\">
                        <div>
                            <p>
                                <strong>卖家合作报名</strong>
                            </p>
                            <p>
                                商家可以免费报名以下活动，推广自己的商品，通过活动短时间聚集人气，冲爆销量，推广品牌。
                            </p>
                            <p>
                                活动包括：九块邮、卷皮折扣、品牌折扣、积分兑换。
                            </p>
                            <p>
                                <a target=\"_blank\" href=\"#\">去商家中心报名&gt;&gt;</a>
                            </p>
                        </div>
                    </div>
                    <div class=\"about_ad_piece piece_act\">
                        <div>
                            <p>
                                <strong>商务合作</strong>
                            </p>
                            <p>
                                如果想洽谈资源互换、商务合作请联系：<a href=\"mailto:88482528@qq.com\">88482528@qq.com</a>
                            </p>
                        </div>
                    </div>
                    <div class=\"about_ad_piece piece_act\">
                        <div>
                            <p>
                                <strong>媒体联系</strong>
                            </p>
                            <p>
                                如果您是媒体采访请联系：<a href=\"mailto:88482528@qq.com\">88482528@qq.com</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class=\"white_bottom\">
            <div class=\"white_bottom_left\"></div>
            <div class=\"white_bottom_middle\"></div>
            <div class=\"white_bottom_right\"></div>
        </div>
    </div>
</div>','商务合作','','1','1','2015-03-26 16:44:48','','0','2','','0','{\"thumb\":\"\",\"template\":\"empty\"}','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like` ) VALUES  ('14','1','','2015-03-26 16:29:44','','友情链接','','1','1','2015-03-26 16:29:31','','0','2','','0','{\"thumb\":\"\",\"template\":\"links\"}','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like` ) VALUES  ('16','1','','2015-03-26 16:55:28','<link href=\"/tpl/simplebootx/Public/css/consumer.css\" rel=\"stylesheet\"/>
<div class=\"consumer-main\">
    <div class=\"img-show h360\"></div>
    <div class=\"consumer01\">
        <div class=\"xiaobao\">
            <div class=\"xb_icon xb_cons\">
                <a class=\"xb_s1\" href=\"#consumer02\">商家审核</a><a class=\"xb_s2\" href=\"#consumer03\">买手砍价</a><a class=\"xb_s3\" href=\"#consumer04\">验货质检</a><a class=\"xb_s4\" href=\"#consumer05\">价格监控</a><a class=\"xb_s5\" href=\"#consumer06\">全国包邮 </a><a class=\"xb_s6\" href=\"#consumer07\">七天退换</a><a class=\"xb_s7\" href=\"#consumer08\">闪电发货</a>
            </div>
        </div>
    </div>
    <div class=\"img-show consumer02\"><a name=\"consumer02\">商家审核</a></div>
    <div class=\"img-show consumer03\"><a name=\"consumer03\">买手砍价</a></div>
    <div class=\"img-show consumer04\"><a name=\"consumer04\">验货质检</a></div>
    <div class=\"img-show consumer05\"><a name=\"consumer05\">价格监控</a></div>
    <div class=\"img-show consumer06\"><a name=\"consumer06\">全国包邮</a></div>
    <div class=\"img-show consumer07\"><a name=\"consumer07\">七天退换</a></div>
    <div class=\"img-show consumer08\"><a name=\"consumer08\">闪电发货</a></div>
    <div class=\"img-show consumer09\"></div>
</div>','消费保障','','1','1','2015-03-26 16:55:07','','0','2','','0','{\"thumb\":\"\",\"template\":\"empty\"}','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like` ) VALUES  ('17','1','','2015-03-26 17:30:02','<link href=\"/tpl/simplebootx/Public/css/about.css\" rel=\"stylesheet\"/>
<div class=\"main\">
    <div class=\"piece about\">
        <div class=\"white_top\">
            <div class=\"white_top_left\"></div>
            <div class=\"white_top_middle\"></div>
            <div class=\"white_top_right\"></div>
        </div>
        <div class=\"white_bg\">
            <!-- 导航 -->
            <div class=\"about_menu\">
                <ul>
                    <li class=\"about-one\">
                        <dl>
                            <dt class=\"cur\">
                                <a href=\"/index.php/about/xiaocao\">关于小草</a>
                            </dt>
                            <dd>
                                <a href=\"/index.php/about/xiaocao\">关于小草</a>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt>
                                <a href=\"/index.php/about/partner\">携手小草</a>
                            </dt>
                            <dd>
                                <a href=\"/index.php/about/partner\">商务合作</a>
                            </dd>
                            <dd>
                                <a href=\"/index.php/about/links\">友情链接</a>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt>
                                <a target=\"_blank\" href=\"/index.php/help/xiaobao\">服务保障</a>
                            </dt>
                            <dd>
                                <a target=\"_blank\" href=\"/index.php/help/xiaobao\">消费保障</a>
                            </dd>
                            <dd>
                                <a rel=\"nofollow\" href=\"/index.php/about/service\" class=\"active\">在线客服<em class=\"right-icon\"></em></a>
                            </dd>
                        </dl>
                    </li>
                    <li class=\"last\">
                        <dt>
                            <a target=\"_blank\" href=\"/index.php/help\">帮助中心</a>
                        </dt>
                    </li>
                </ul>
            </div>
            <div class=\"about_contain\">
                <div class=\"about_tit\"><em></em>在线客服</div>
                    <div class=\"about_line\"></div>
                    <div class=\"about_content\">
                        <div class=\"about_tip\"><span class=\"green\">温馨提示：</span> <br>因客服咨询量较大，为了节省您的宝贵时间，建议您多看帮助教程自助解决哦~<br>
                            如刚刚使用卷皮网，请查看 <a href=\"/index.php/help\">帮助中心</a>！</div>
                        <p class=\"online_kefu\"><span class=\"online_kefu\">在线客服</span>在线时间：周一至周六 9:00-22:00 </p>
                        <div class=\"hr\"></div>
                        <p class=\"size_padding\">客服ＱＱ：<a href=\"http://wpa.qq.com/msgrd?v=3&amp;uin=1776188377&amp;site=qq&amp;menu=yes\" target=\"_blank\"><img border=\"0\" alt=\"点这里给我发消息\" src=\"http://wpa.qq.com/pa?p=2:1776188377:1\"></a>（QQ：1776188377）</p>
                        <p class=\"size_padding\">如果是非工作时间，您可以在下边提交您的问题，我们将在最短的时间内给予答复！</p>
                        <p class=\"size_padding\"><a href=\"/index.php/about/suggest\" style=\"color:#0009b6\">提交您的问题 &gt;&gt;</a></p>
                    </div>
                </div>
        </div>
        <div class=\"white_bottom\">
            <div class=\"white_bottom_left\"></div>
            <div class=\"white_bottom_middle\"></div>
            <div class=\"white_bottom_right\"></div>
        </div>
    </div>
</div>','在线客服','','1','1','2015-03-26 17:14:54','','0','2','','0','{\"thumb\":\"\",\"template\":\"empty\"}','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like` ) VALUES  ('18','1','','2015-03-26 17:43:09','<link href=\"/tpl/simplebootx/Public/css/about.css\" rel=\"stylesheet\"/><div class=\"main\"><div class=\"piece fanli\"><div class=\"white_top\"><div class=\"white_top_left\"></div><div class=\"white_top_middle\"></div><div class=\"white_top_right\"></div></div><div class=\"white_bg\"><div class=\"privacy banquan\"><center><strong><span style=\"font-size:24px\">小草网网络服务协议</span></strong></center><p class=\"pt mt14\">加入和使用小草网网站表明您已经阅读并同意本使用条款，您的会员活动会遵从本使用条款。本协议由您与小草网络科技有限公司共同缔结，本协议具有合同效力。</p><p class=\"pt mt14\">本协议中协议双方合称协议方，小草网络科技有限公司在协议中亦称为“小草网”。域名xiaocaocms.com。</p><h4 class=\"f14 mt14\">一、协议内容及签署</h4><p class=\"pt mt14\">1、本协议内容包括协议正文及所有小草网已经发布的或将来可能发布的各类规则，包括但不仅限于网站公告及帮助在内的官方声明。所有规则为本协议不可分割的组成部分，与协议正文具有同等法律效力。除另行明确声明外，任何小草网及其关联公司提供的服务均受本协议约束。</p><p class=\"pt mt14\">2、您应当在使用小草网服务之前认真阅读全部协议内容，如您对协议有任何疑问的，应向小草网咨询。但无论您事实上是否在使用小草网服务之前认真阅读了本协议内容，只要您使用小草网服务，则本协议即对您产生约束，届时您不应以未阅读本协议的内容或者未获得小草网对您问询的解答等理由，主张本协议无效，或要求撤销本协议。</p><p class=\"pt mt14\">3、小草网有权根据需要不时地制订、修改本协议及/或各类规则，并以网站公示的方式进行公告，不再单独通知您。变更后的协议和规则一经在网站公布后，立即自动生效。修改后的使用协议一旦在网页上公布即有效代替原来的使用协议。此外，当您使用小草网特殊服务时，您和小草网应遵守小草网随时公布的与该服务相关的指引、公告以及规则。前述所有的指引、公告以及规则，均构成本使用协议的一部分。如您不同意相关变更，应当立即停止使用小草网服务。您继续使用小草网服务的，即表示您接受经修订的协议和规则。</p><p class=\"pt mt14\">4、您应当是具备完全民事权利能力和完全民事行为能力的自然人、法人或其他组织。若您不具备前述主体资格，则您及您的监护人应承担因此而导致的一切后果，且小草网有权注销（永久冻结）您的小草网账户，并向您及您的监护人索偿。</p><p class=\"pt mt14\">5、您承诺接受并遵守本协议的约定。如果您不同意本协议的约定，您应立即停止注册程序或停止使用小草网服务。您一旦使用小草网服务，即视为您已了解并完全同意本使用协议各项内容，包括小草网对使用协议随时所做的任何修改，并成为小草网用户（以下简称“用户”）。</p><h4 class=\"f14 mt14\">二、服务说明</h4><p class=\"pt mt14\">小草网用户（以下简称“用户”）可以通过按照指引、公告或者规则提供的正确方式，点击小草网所提供的商家、广告、搜索结果等产生网上购物行为，享受购物后返回现金的服务；发布并分享返利以及网购经验；求推荐网购商品，收藏网购商品和店铺；在小草网中发布商品分享，上传图片。</p><p class=\"pt mt14\">1、用户注册成为小草网的会员之后，即刻享有小草网提供的服务。</p><p class=\"pt mt14\">2、返利结算：小草网收到合作商家返回的返利数据后，将按照网站中约定的相应金额打入用户在小草网的虚拟帐户，用户收到返利后满10元即可申请10元整倍数的支付宝、银行转账等网站支持的方式提现，小草网收到申请后1个工作日内完成提现工作（周末以及节假日情况顺延）。</p><p class=\"pt mt14\">3、返利方式：小草网提供支付宝和银联转账等几种方式，如果会员没有出现违规情况，小草网将按照规定支付返利金额。</p><p class=\"pt mt14\">4、通过小草网及其关联公司提供的小草网服务和其它服务，会员可在小草网上查询商品、发布网购信息、和服务信息、对其他用户分享信息进行评价、参加小草网组织的活动以及使用其它信息服务及技术服务。</p><p class=\"pt mt14\">5、您在小草网的使用过程中与其他会员发生交易纠纷时，一旦您或其它会员任一方或双方共同提交小草网要求调处，则小草网有权根据单方判断做出调处决定，您了解并同意接受小草网的判断和调处决定。该决定将对您具有法律约束力。</p><p class=\"pt mt14\">除非本使用协议另有其它明示规定，增加或强化目前本服务的任何新功能，包括所推出的新产品，均受到本使用协议之规范。您了解并同意，本服务仅依其当前所呈现的状况提供，对于任何用户信息或个人化设定之时效、删除、传递错误、未予储存或其它任何问题，小草网均不承担任何责任。小草网保留不经事先通知为维修保养、升级或其它目的暂停本服务任何部分的权利。</p><h4 class=\"f14 mt14\">三、小草网服务使用规范</h4><p class=\"pt mt14\">1、遵守法律</p><p class=\"pt\">您同意遵守中华人民共和国相关法律法规的所有规定，并对以任何方式使用您的密码和您的账号使用本服务的任何行为及其结果承担全部责任。如您的行为违反国家法律和法规的任何规定，有可能构成犯罪的，将被追究刑事责任，并由您承担全部法律责任。</p><p class=\"pt\">同时如果小草网有理由认为您的任何行为，包括但不限于您的任何言论和其它行为违反或可能违反国家法律和法规的任何规定，小草网可在任何时候不经任何事先通知终止向您提供服务。</p><p class=\"pt mt14\">2、您的注册义务</p><p class=\"pt\">为了能使用本服务，您同意以下事项：依本服务注册提示请您填写正确的注册邮箱、密码和名号，并确保今后更新的登录邮箱、名号、头像等资料的有效性和合法性。若您提供任何违法、不道德或小草网认为不适合在小草网上展示的资料；或者小草网有理由怀疑您的资料属于程序或恶意操作，小草网有权暂停或终止您的账号，并拒绝您于现在和未来使用本服务之全部或任何部分。</p><p class=\"pt\">小草网无须对任何用户的任何登记资料承担任何责任，包括但不限于鉴别、核实任何登记资料的真实性、正确性、完整性、适用性及/或是否为最新资料的责任。</p><p class=\"pt mt14\">3、用户账号、密码及安全</p><p class=\"pt\">完成本服务的注册程序并成功注册之后，您可使用您的账号和密码，登录到您在小草网的帐户（下称“账号”）。保护您的账号安全，是您的责任。</p><p class=\"pt\">您应对所有使用您的密码及账号的活动负完全的责任。您同意：</p><p class=\"pt\">1）您的小草网账号遭到未获授权的使用，或者发生其它任何安全问题时，您将立即通知小草网；</p><p class=\"pt\">2）如果您未保管好自己的账号和密码，因此而产生的任何损失或损害，小草网无法也不承担任何责任；</p><p class=\"pt\">3）每个用户都要对其账号中的所有行为和事件负全责。如果您未保管好自己的账号和密码而对您、小草网或第三方造成了损害，您将负全部责任。</p><p class=\"pt mt14\">4、小草网隐私权政策</p><p class=\"pt\">您提供的登记资料及小草网保留的有关您的若干其它资料将受到中国有关隐私的法律和本公司《隐私声明》之规范。</p><p class=\"pt mt14\">5、提供者之责任</p><p class=\"pt\">根据有关法律法规，小草网在此郑重提醒您注意，任何经由本服务而发布、上传的文字、资讯、资料、照片、图形、视讯、信息或其它资料（以下简称“内容
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;”），无论是公开还是私下传送，均由内容提供者承担责任。小草网仅为用户提供内容存储空间，无法控制经由本服务传送之内容，因此不保证内容的正确性、完整性或品质。您已预知使用本服务时，可能会接触到令人不快、不适当或令人厌恶之内容。在任何情况下，小草网均不为任何内容负责，但小草网有权依法停止传输任何前述内容并采取相应行动，包括但不限于暂停用户使用本服务的全部或部分，保存有关记录，并向有关机关报告。</p><p class=\"pt mt14\">6、用户行为</p><p class=\"pt\">用户同意将不会利用本服务进行任何违法或不正当的活动，包括但不限于下列行为∶</p><p class=\"pt\">1）用户不得发布或以其它方式传送含有下列内容之一的信息：</p><p class=\"pt\">* 反对宪法所确定的基本原则的；</p><p class=\"pt\">* 危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；</p><p class=\"pt\">* 损害国家荣誉和利益的；</p><p class=\"pt\">* 煽动民族仇恨、民族歧视、破坏民族团结的；</p><p class=\"pt\">* 破坏国家宗教政策，宣扬邪教和封建迷信的；</p><p class=\"pt\">* 散布谣言，扰乱社会秩序，破坏社会稳定的；</p><p class=\"pt\">* 散布淫秽、色情、赌博、暴力、凶杀、恐怖、吸毒或者教唆犯罪的；</p><p class=\"pt\">* 侮辱或者诽谤他人，侵害他人合法权利的；</p><p class=\"pt\">*
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;含有虚假、诈骗、有害、胁迫、侵害他人隐私、骚扰、侵害、中伤、粗俗、猥亵、或其它道德上令人反感的内容；</p><p class=\"pt\">* 含有中国法律、法规、规章、条例以及任何具有法律效力之规范所限制或禁止的其它内容的；</p><p class=\"pt\">* 含有小草网认为不适合在小草网展示的内容；</p><p class=\"pt\">2）用户不得出现恶意注册恶意点击等行为。严禁通过购买产品恶意取消订单等非法手段来提高个人收入，一经发现，小草网有权取消会员的资格，并追回已经支付的全部佣金，同时该用户必须承担由此给小草网带来的所有损失。小草网严禁各种针对小草网活动的作弊行为。对于查实的作弊行为，我们将收回该账号全部的邀请奖励、取消邀请资格，给予一定处罚，并列入小草网黑名单账户。作弊行为包括但不限于：使用相同的电脑、相同的IP地址在同一天内注册多个账号，以骗取奖励邀请的行为、以注册送钱或注册送奖励等利益诱导来骗取注册的行为。</p><p class=\"pt\">3）用户不得以任何方式危害他人的合法权益；冒充其他任何人或机构，或以虚假不实的方式陈述或谎称与任何人或机构有关发布或以其它方式传送相关内容；</p><p class=\"pt\">4）将依据任何法律或合约或法定关系（例如由于雇佣关系和依据保密合约所得知或揭露之内部资料、专属及机密资料）知悉但无权传送之任何内容加以发布、发送电子邮件或以其它方式传送；</p><p class=\"pt\">5）将侵害他人著作权、专利权、商标权、商业秘密、或其它专属权利（以下简称“专属权利”）之内容加以发布或以其它方式传送；</p><p class=\"pt\">6）将任何广告信函、促销资料、“垃圾邮件”、““滥发信件”、“连锁信件”、“直销”或其它任何形式的劝诱资料加以发布、发送或以其它方式传送；</p><p class=\"pt\">7）将设计目的在于干扰、破坏或限制任何计算机软件、硬件或通讯设备功能之计算机病毒（包括但不限于木马程序（trojan
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;horses）、蠕虫（worms）、定时炸弹、删除蝇（cancelbots）（以下简称“病毒”）或其它计算机代码、档案和程序之任何资料，加以发布、发送或以其它方式传送；</p><p class=\"pt\">8）干扰或破坏本服务或与本服务相连线之服务器和网络，或违反任何关于本服务连线网络之规定、程序、政策或规范；</p><p class=\"pt\">9）跟踪、人肉搜索或以其它方式骚扰他人；</p><p class=\"pt\">10）故意或非故意地违反任何适用的当地、国家法律，以及任何具有法律效力的规则；</p><p class=\"pt\">11）未经合法授权而截获、篡改、收集、储存或删除他人个人信息、站内邮件或其它数据资料，或将获知的此类资料用于任何非法或不正当目的。</p><p class=\"pt\">您已认可小草网未对用户的使用行为进行全面控制，您使用任何内容时，包括依赖前述内容之正确性、完整性或实用性时，您同意将自行加以判断并承担所有风险，而不依赖于小草网。您同意小草网依其自行之考虑，删除可经由本服务提供之违反本条款的或其它引起小草网反感的任何内容。</p><p class=\"pt\">您了解并同意，小草网依据法律法规的要求，或基于诚信为了以下目的或在合理必要范围内，认定必须将内容加以保存或揭露时，得加以保存或揭露：</p><p class=\"pt\">a）遵守法律程序；</p><p class=\"pt\">b）执行本使用协议；</p><p class=\"pt\">c）回应任何第三人提出的权利主张；</p><p class=\"pt\">d）保护小草网、其用户及公众之权利、财产或个人安全；</p><p class=\"pt\">e）其它小草网认为有必要的情况。</p><p class=\"pt mt14\">7、国际使用之特别警告</p><p class=\"pt\">您已了解国际互联网的无国界性，同意遵守当地所有关于网上行为及内容之法律法规。您特别同意遵守有关从中国或您所在国家或地区输出信息之传输的所有适用法律法规。</p><p class=\"pt mt14\">8、在小草网发布的公开信息</p><p class=\"pt\">1）在本使用协议中，“本服务公开使用区域”系指一般公众可以使用的区域；</p><p class=\"pt\">2）用户在小草网上传或发布的内容，用户应保证其为著作权人或已取得合法授权，并且该内容不会侵犯任何第三方的合法权益，用户同意授予小草网所有上述内容在全球范围内的免费、不可撤销的、永久的、可再许或可转让的独家使用权许可，据该许可小草网将有权以展示、推广及其他不为法律所禁止的方式使用前述内容。</p><p class=\"pt mt14\">9、赔偿</p><p class=\"pt\">由于您通过本服务提供、发布或传送之内容、您与本服务连线、您违反本使用协议、或您侵害他人任何权利因而衍生或导致任何第三人提出任何索赔或请求，包括合理的律师费，您同意赔偿小草网及其关联企业、职员、代理人、品牌共有人或其它合作伙伴及员工，并使其免受损害，并承担由此引发的全部法律责任。</p><p class=\"pt mt14\">10、关于使用及储存之一般措施</p><p class=\"pt\">您承认关于本服务的使用小草网有权制订基本措施及限制，包含但不限于本服务将保留所发布内容或其它发布内容之最长期间，以及一定期间内您使用本服务之次数上限（及每次使用时间之上限）。通过本服务发布或传送之任何信息、通讯资料和其它内容，如被删除或未予储存，您同意小草网毋须承担任何责任。您也同意，小草网有权依其自行之考虑，不论通知与否，随时变更这些一般措施及限制。</p><h4 class=\"f14 mt14\">四、责任范围和责任限制</h4><p class=\"pt mt14\">1、小草网负责按&quot;现状&quot;和&quot;可得到&quot;的状态向您提供服务。但对服务不作任何明示或暗示的保证，包括但不限于小草网服务的适用性、没有错误或疏漏、持续性、准确性、可靠性、适用于某一特定用途。同时，小草网也不对服务所涉及的技术及信息的有效性、准确性、正确性、可靠性、质量、稳定、完整和及时性作出任何承诺和保证。</p><p class=\"pt mt14\">2、与广告商及其他第三方进行交易</p><p class=\"pt\">您通过本网站与合作者或间接合作者及其他第三方进行任何形式的通讯或商业往来，或参与促销活动，包含相关商品或服务之付款及交付，以及达成的其它任何相关条款、条件、保证或声明，完全为您与合作者或间接合作者及其他第三方之间之行为。您因前述任何交易或前述合作者或间接合作者及其他第三方而遭受的任何性质的损失或损害，小草网对此不负任何法律责任。</p><p class=\"pt\">您了解并同意小草网上的信息是用户自行发布，且可能存在风险和瑕疵。小草网仅作为交易地点。小草网仅作为您获取物品或服务信息、物色交易对象、就物品和/或服务的交易进行协商及开展交易的场所，但小草网无法控制交易所涉及的物品的质量、安全或合法性，商贸信息的真实性或准确性，以及交易各方履行其在贸易协议中各项义务的能力。您应自行谨慎判断确定相关物品及/或信息的真实性、合法性和有效性，并自行承担因此产生的责任与损失。</p><p class=\"pt mt14\">3、除非法律法规明确要求，或出现以下情况，否则，小草网没有义务对所有用户的注册数据、商品（服务）信息、交易行为以及与交易有关的其它事项进行事先审查：</p><p class=\"pt\">a) 小草网有合理的理由认为特定会员及具体交易事项可能存在重大违法或违约情形。</p><p class=\"pt\">b) 小草网有合理的理由认为用户在返利网的行为涉嫌违法或不当。</p><p class=\"pt mt14\">4、小草网及其关联公司有权受理您与其他会员因交易产生的争议，并有权单方判断与该争议相关的事实及应适用的规则，进而作出处理决定。该处理决定对您有约束力。如您未在限期内执行处理决定的，则小草网及其关联公司有权利（但无义务）直接使用您小草网账户内的款项。应及时弥补小草网及其关联公司的损失，否则小草网及其关联公司有权直接抵减您在其它合同项下的权益，并有权继续追偿。</p><p class=\"pt\">您理解并同意，小草网及其关联公司并非司法机构，仅能以普通人的身份对证据进行鉴别，小草网及其关联公司对争议的调处完全是基于您的委托，小草网及其关联公司无法保证争议处理结果符合您的期望，也不对争议调处结论承担任何责任。如您因此遭受损失，您同意自行向受益人索偿。</p><p class=\"pt mt14\">5、您了解并同意，小草网不对因下述任一情况而导致您的任何损害赔偿承担责任，包括但不限于利润、商誉、使用、数据等方面的损失或其它无形损失的损害赔偿
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(无论小草网是否已被告知该损害赔偿的可能性) ：</p><p class=\"pt\">a) 使用或未能使用小草网服务。</p><p class=\"pt\">b) 第三方未经批准的使用您的账户或更改您的数据；您的传输或数据遭到未获授权的存取或变更。</p><p class=\"pt\">c) 通过小草网服务购买或获取任何商品、样品、数据、信息或进行交易等行为或替代行为产生的费用及损失。</p><p class=\"pt\">d) 您对小草网服务的误解，与本服务相关的其它事宜，但本使用协议有明确规定的除外。</p><p class=\"pt\">e) 任何第三方在本服务中所作之声明或行为；
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;任何非因小草网的原因而引起的与小草网服务有关的其它损失。</p><p class=\"pt mt14\">6、不论在何种情况下，小草网均不对由于信息网络正常的设备维护，信息网络连接故障，电脑、通讯或其他系统的故障，电力故障，罢工，劳动争议，暴乱，起义，骚乱，生产力或生产资料不足，火灾，洪水，风暴，爆炸，战争，政府行为，司法行政机关的命令或第三方的不作为而造成的不能服务或延迟服务承担责任。</p><p class=\"pt mt14\">7、小草网之专属权利</p><p class=\"pt\">您了解并同意，本服务及本服务所使用之相关软件（以下简称“软件”）含有受到相关知识产权及其它法律保护之专有保密资料。您也了解并同意，经由本服务合作者或间接合作者及其他第三方或向您呈现之赞助广告或信息所包含之内容，亦受到著作权、商标权、服务商标、专利权或其它专属权利之法律保护。未经小草网或合作者或间接合作者及其他第三方明示授权，您不得修改、出租、出借、出售、散布本服务或软件之任何部份或全部，或据以制作衍生著作，使用擅自修改后的软件，包括但不限于为了未经授权而使用本服务之目的。小草网仅授予您个人、不可移转及非专属之使用权，使您得于单机计算机使用其软件之目的码，但您不得（并不得允许任何第三人）复制、修改、创作衍生著作、进行还原工程、反向组译，或以其它方式发现原始码，或出售、转让、再授权或提供软件设定担保，或以其它方式移转软件之任何权利。您同意将通过由小草网所提供的界面而非任何其它途径使用本服务。</p><p class=\"pt mt14\">8、用户专属权利</p><p class=\"pt\">小草网尊重他人知识产权，呼吁用户也要同样尊重知识产权。如果您对他人的知识产权或其他人身权利造成了侵害，小草网将依国家法律法规的规定，或在适当的情形下，将依其服务条款或其相关规范性规定，删除特定内容或以至终止您对账户的使用。</p><h4 class=\"f14 mt14\">五、协议终止</h4><p class=\"pt mt14\">1、您了解并同意小草网有权自行全权决定以任何理由不经事先通知的中止、终止向您提供部分或全部小草网平台服务，暂时冻结或永久冻结（注销）您的账户，且无须为此向您或任何第三方承担任何责任。您同意小草网基于其自行之考虑，因任何理由，包含但不限于缺乏使用，或小草网认为您已经违反本使用协议的文字及精神，终止您的账号或本服务之使用（或服务之任何部分），并将您在本服务内任何内容加以移除并删除。您同意依本使用协议任何规定提供之本服务，无需进行事先通知即可中断或终止，您承认并同意，小草网可立即关闭或删除您的账号及您账号中所有相关信息及文件，及/或禁止继续使用前述文件或本服务。此外，您同意若本服务之使用被中断或终止或您的账号及相关信息和文件被关闭或删除，小草网对您或任何第三人均不承担任何责任。</p><p class=\"pt mt14\">2、出现以下情况时，小草网有权直接以注销账户的方式终止本协议:</p><p class=\"pt\">a) 小草网终止向您提供服务后，您涉嫌再一次直接或间接或以他人名义注册为小草网用户的；</p><p class=\"pt\">b)
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;您提供的电子邮箱不存在或无法接收电子邮件，且没有其他方式可以与您进行联系，或小草网以其它联系方式通知您更改电子邮件信息,而您在小草网通知后三个工作日内仍未更改为有效的电子邮箱的。</p><p class=\"pt\">c) 您注册信息中的主要内容不真实或不准确或不及时或不完整。</p><p class=\"pt\">d) 本协议（含规则及上述其他）变更时，您明示并通知小草网不愿接受新的服务协议的；</p><p class=\"pt\">e) 其它小草网认为应当终止服务的情况。</p><p class=\"pt mt14\">3、您有权向小草网要求注销您的账户，经小草网审核同意的，小草网注销（永久冻结）您的账户，届时，您与小草网基于本协议的合同关系即终止。您的账户被注销（永久冻结）后，小草网没有义务为您保留或向您披露您账户中的任何信息，也没有义务向您或第三方转发任何您未曾阅读或发送过的信息。</p><p class=\"pt mt14\">4、您了解并同意您与小草网的合同关系终止后，小草网仍享有下列权利</p><p class=\"pt\">a) 继续保存您的注册信息及您使用小草网服务期间的所有交易信息。</p><p class=\"pt\">b)
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;您在使用小草网服务期间存在违法行为或违反本协议和/或规则的行为的，小草网仍可依据本协议向您主张权利。</p><p class=\"pt mt14\">5、小草网中止或终止向您提供服务后，对于您在服务中止或终止之前的交易行为依下列原则处理，您应独力处理并完全承担进行以下处理所产生的任何争议、损失或增加的任何费用，并应确保小草网免于因此产生任何损失或承担任何费用：</p><p class=\"pt\">a)
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;您在服务中止或终止之前已经上传至小草网的物品尚未交易的，小草网有权在中止或终止服务的同时删除此项物品的相关信息；</p><p class=\"pt\">b)
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;您在服务中止或终止之前已经与其他会员达成买卖合同，但合同尚未实际履行的，小草网有权删除该买卖合同及其交易物品的相关信息；</p><p class=\"pt\">c)
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;您在服务中止或终止之前已经与其他会员达成买卖合同且已部分履行的，小草网可以不删除该项交易，但小草网有权在中止或终止服务的同时将相关情形通知您的交易对方。</p><h4 class=\"f14 mt14\">六、一般条款</h4><p class=\"pt mt14\">1）本使用协议、网站公告、帮助中心和免责声明构成您与小草网之全部协议，并规范您对于本服务之使用行为。在您使用相关服务、使用第三方提供的内容或软件时，亦应遵从所适用之附加条款及条件；</p><p class=\"pt mt14\">2）本使用协议及您与小草网之关系，均受到中华人民共和国法律管辖。本协议之效力、解释、变更、执行与争议解决均适用中华人民共和国法律，如无相关法律规定的，则应参照通用国际商业惯例和（或）行业惯例。您与小草网就本服务、本使用协议或其它有关事项发生的争议，应首先友好协商解决，协商不成时应提请中国国际经济贸易仲裁委员会仲裁，仲裁裁决是终局性的，对双方均有约束力；</p><p class=\"pt mt14\">3）小草网未行使或执行本使用协议任何权利或规定，不构成对前述权利或权利之放弃；</p><p class=\"pt mt14\">4）倘本使用协议之任何规定因与中华人民共和国法律抵触而无效，您依然同意应依照法律，努力使该规定所反映之当事人意向具备效力，且本使用协议其它规定仍应具有完整的效力及效果；</p><p class=\"pt mt14\">6) 只要您登录了小草网，就代表您认可以上所有协议。</p><p class=\"pt mt14\">7）小草网对本使用协议享有最终解释权。</p></div></div><div class=\"white_bottom\"><div class=\"white_bottom_left\"></div><div class=\"white_bottom_middle\"></div><div class=\"white_bottom_right\"></div></div></div></div>','用户协议','','1','1','2015-03-26 17:42:45','','0','2','','0','{\"thumb\":\"\",\"template\":\"empty\"}','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like` ) VALUES  ('19','1','','2015-03-27 11:22:12','','意见建议','','1','1','2015-03-27 11:21:55','','0','2','','0','{\"thumb\":\"\",\"template\":\"feedback\"}','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like` ) VALUES  ('20','1','test','2015-03-30 13:56:13','<p><img src=\"http://demo.xiaocaocms.com/data/upload/ueditor/552f305f19575.png\" title=\"关羽300_300.png\"/>lsdjfl sjdl sjdljs d</p><p>lsjdlf sjdl jsldkfj s&nbsp;</p><p>sldjf lsdj flksjd lksjdl kfjslkd j</p>','test','test','1','1','2015-03-30 13:55:59','','0','','','1','{\"thumb\":\"552f303b084c2.jpg\",\"photo\":[{\"url\":\"552f307690821.png\",\"alt\":\"bg1\"},{\"url\":\"552f308525001.png\",\"alt\":\"bg2\"},{\"url\":\"552f308a6006f.png\",\"alt\":\"bg4\"}]}','6','1');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like` ) VALUES  ('21','1','1231231','2015-04-16 11:50:15','<p>1231123123132</p>','111111111111','23123','1','1','2015-04-16 11:49:25','','0','','','0','{\"thumb\":\"\"}','0','0');
DROP TABLE IF EXISTS `sp_role`;
CREATE TABLE `sp_role` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `name` varchar(20) NOT NULL default '角色名称',
  `pid` smallint(6) default NULL COMMENT '父角色ID',
  `status` tinyint(1) unsigned default NULL COMMENT '状态',
  `remark` varchar(255) default NULL COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL COMMENT '更新时间',
  `listorder` int(3) NOT NULL default '0' COMMENT '排序字段',
  PRIMARY KEY  (`id`),
  KEY `parentId` (`pid`),
  KEY `status` (`status`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_role ( `id`, `name`, `pid`, `status`, `remark`, `create_time`, `update_time`, `listorder` ) VALUES  ('1','超级管理员','0','1','拥有网站最高管理员权限！','1329633709','1329633709','0');
INSERT INTO sp_role ( `id`, `name`, `pid`, `status`, `remark`, `create_time`, `update_time`, `listorder` ) VALUES  ('2','123','','1','','0','0','0');
DROP TABLE IF EXISTS `sp_role_user`;
CREATE TABLE `sp_role_user` (
  `role_id` mediumint(9) unsigned default NULL,
  `user_id` char(32) default NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_route`;
CREATE TABLE `sp_route` (
  `id` int(11) NOT NULL auto_increment COMMENT '路由id',
  `full_url` varchar(255) default NULL COMMENT '完整url， 如：portal/list/index?id=1',
  `url` varchar(255) default NULL COMMENT '实际显示的url',
  `listorder` int(5) default '0' COMMENT '排序，优先级，越小优先级越高',
  `status` tinyint(1) default '1' COMMENT '状态，1：启用 ;0：不启用',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_route ( `id`, `full_url`, `url`, `listorder`, `status` ) VALUES  ('1','portal/list/index?id=6','jiukuaijiu','0','1');
INSERT INTO sp_route ( `id`, `full_url`, `url`, `listorder`, `status` ) VALUES  ('2','portal/page/index?id=13','about/xiaocao','0','1');
INSERT INTO sp_route ( `id`, `full_url`, `url`, `listorder`, `status` ) VALUES  ('3','portal/page/index?id=14','about/links','0','1');
INSERT INTO sp_route ( `id`, `full_url`, `url`, `listorder`, `status` ) VALUES  ('4','portal/page/index?id=15','about/partner','0','1');
INSERT INTO sp_route ( `id`, `full_url`, `url`, `listorder`, `status` ) VALUES  ('5','portal/page/index?id=16','help/xiaobao','0','1');
INSERT INTO sp_route ( `id`, `full_url`, `url`, `listorder`, `status` ) VALUES  ('6','portal/page/index?id=17','about/service','0','1');
INSERT INTO sp_route ( `id`, `full_url`, `url`, `listorder`, `status` ) VALUES  ('7','portal/page/index?id=18','about/liences','0','1');
INSERT INTO sp_route ( `id`, `full_url`, `url`, `listorder`, `status` ) VALUES  ('8','portal/list/index','list/:id','0','1');
INSERT INTO sp_route ( `id`, `full_url`, `url`, `listorder`, `status` ) VALUES  ('9','portal/goods/index','goods/:id','0','1');
DROP TABLE IF EXISTS `sp_score_goods`;
CREATE TABLE `sp_score_goods` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `goodsName` varchar(255) NOT NULL COMMENT '商品名',
  `type` int(10) unsigned NOT NULL,
  `price` int(10) unsigned NOT NULL COMMENT '所需积分',
  `money` float(10,2) NOT NULL default '0.00',
  `num` int(10) unsigned NOT NULL COMMENT '总量',
  `selled_num` int(10) unsigned NOT NULL default '0' COMMENT '已售数量',
  `goodsImg` varchar(255) default NULL COMMENT '商品图',
  `intro` varchar(255) NOT NULL COMMENT '描述',
  `detail` text NOT NULL COMMENT '积分商品详情',
  `status` tinyint(1) unsigned NOT NULL default '1' COMMENT '状态',
  `ctime` int(10) unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_score_goods ( `id`, `goodsName`, `type`, `price`, `money`, `num`, `selled_num`, `goodsImg`, `intro`, `detail`, `status`, `ctime` ) VALUES  ('7','小草积分商城','4','15','0.00','5','0','/data/upload/552c6a69485bd.jpg','这是小菜积分商城商品简介','<p>这是小菜积分商城商品详情</p><p><img src=\"http://demo.xiaocaocms.com/data/upload/ueditor/552c6a81e6c97.png\" style=\"float:none;\" title=\"QQ截图20150227105225.png\"/></p><p>这是详情，好评如潮，品质有保证，假一赔十</p><p><img src=\"http://img.baidu.com/hi/jx2/j_0004.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0075.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0058.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0040.gif\"/></p><p><img src=\"http://demo.xiaocaocms.com/data/upload/ueditor/552c6a8255914.jpg\" style=\"float:none;\" title=\"5527a19087188_400x400.jpg_285x285.jpg\"/></p><p><br/></p>','1','1428974253');
INSERT INTO sp_score_goods ( `id`, `goodsName`, `type`, `price`, `money`, `num`, `selled_num`, `goodsImg`, `intro`, `detail`, `status`, `ctime` ) VALUES  ('8','大豆测试','5','1000','20.00','10','0','/data/upload/552f27f7a442c.png','数量肯定积分；路上可点击','<p>阿萨德浪费空间拉萨肯德基就f垃圾收到了卡死了看<img src=\"http://demo.xiaocaocms.com/data/upload/ueditor/552f282c0743f.png\" title=\"关羽300_300.png\"/>健康就喜欢</p>','1','1429153844');
DROP TABLE IF EXISTS `sp_score_log`;
CREATE TABLE `sp_score_log` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `userid` varchar(255) NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `score` int(10) NOT NULL,
  `info` varchar(255) NOT NULL COMMENT '备注信息',
  `ctime` int(10) unsigned NOT NULL,
  `uname` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_score_log ( `id`, `userid`, `order_id`, `score`, `info`, `ctime`, `uname` ) VALUES  ('1','1','1','10','','1427094284','');
INSERT INTO sp_score_log ( `id`, `userid`, `order_id`, `score`, `info`, `ctime`, `uname` ) VALUES  ('2','1','2','10','','1427094355','');
INSERT INTO sp_score_log ( `id`, `userid`, `order_id`, `score`, `info`, `ctime`, `uname` ) VALUES  ('3','1','3','10','','1427094569','');
INSERT INTO sp_score_log ( `id`, `userid`, `order_id`, `score`, `info`, `ctime`, `uname` ) VALUES  ('4','1','4','10','','1427096312','');
INSERT INTO sp_score_log ( `id`, `userid`, `order_id`, `score`, `info`, `ctime`, `uname` ) VALUES  ('5','1','5','80','','1427096384','');
INSERT INTO sp_score_log ( `id`, `userid`, `order_id`, `score`, `info`, `ctime`, `uname` ) VALUES  ('6','1','6','80','','1427096544','');
INSERT INTO sp_score_log ( `id`, `userid`, `order_id`, `score`, `info`, `ctime`, `uname` ) VALUES  ('7','1','7','10','','1427096605','');
INSERT INTO sp_score_log ( `id`, `userid`, `order_id`, `score`, `info`, `ctime`, `uname` ) VALUES  ('8','1','8','200','','1427096613','');
INSERT INTO sp_score_log ( `id`, `userid`, `order_id`, `score`, `info`, `ctime`, `uname` ) VALUES  ('9','1','9','10','','1427099139','');
INSERT INTO sp_score_log ( `id`, `userid`, `order_id`, `score`, `info`, `ctime`, `uname` ) VALUES  ('10','1','10','10','','1427099205','admin');
INSERT INTO sp_score_log ( `id`, `userid`, `order_id`, `score`, `info`, `ctime`, `uname` ) VALUES  ('11','1','11','80','','1427099211','admin');
INSERT INTO sp_score_log ( `id`, `userid`, `order_id`, `score`, `info`, `ctime`, `uname` ) VALUES  ('12','1','12','10','','1427099228','admin');
INSERT INTO sp_score_log ( `id`, `userid`, `order_id`, `score`, `info`, `ctime`, `uname` ) VALUES  ('13','1','13','10','','1427101337','admin');
INSERT INTO sp_score_log ( `id`, `userid`, `order_id`, `score`, `info`, `ctime`, `uname` ) VALUES  ('14','1','14','10','','1427101418','admin');
INSERT INTO sp_score_log ( `id`, `userid`, `order_id`, `score`, `info`, `ctime`, `uname` ) VALUES  ('15','1','15','10','','1427101440','admin');
INSERT INTO sp_score_log ( `id`, `userid`, `order_id`, `score`, `info`, `ctime`, `uname` ) VALUES  ('16','2','16','80','','1427334534','123123');
INSERT INTO sp_score_log ( `id`, `userid`, `order_id`, `score`, `info`, `ctime`, `uname` ) VALUES  ('17','2','17','80','','1428635234','123123');
INSERT INTO sp_score_log ( `id`, `userid`, `order_id`, `score`, `info`, `ctime`, `uname` ) VALUES  ('18','2','18','80','','1428916354','123123');
DROP TABLE IF EXISTS `sp_score_order`;
CREATE TABLE `sp_score_order` (
  `order_id` int(10) unsigned NOT NULL auto_increment,
  `goods_id` int(10) unsigned NOT NULL,
  `goods_name` varchar(255) NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `userid` int(10) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL default '0',
  `ctime` int(10) unsigned NOT NULL,
  `info` text NOT NULL,
  PRIMARY KEY  (`order_id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_score_order ( `order_id`, `goods_id`, `goods_name`, `price`, `userid`, `status`, `ctime`, `info` ) VALUES  ('1','4','','10','1','2','1427094284','a:3:{s:5:\"uname\";s:5:\"admin\";s:6:\"mobile\";s:11:\"18766034151\";s:7:\"address\";s:9:\"云龙区\";}');
INSERT INTO sp_score_order ( `order_id`, `goods_id`, `goods_name`, `price`, `userid`, `status`, `ctime`, `info` ) VALUES  ('2','4','','10','1','1','1427094355','a:3:{s:5:\"uname\";s:5:\"admin\";s:6:\"mobile\";s:11:\"18766034151\";s:7:\"address\";s:9:\"云龙区\";}');
INSERT INTO sp_score_order ( `order_id`, `goods_id`, `goods_name`, `price`, `userid`, `status`, `ctime`, `info` ) VALUES  ('3','4','','10','1','2','1427094569','a:3:{s:5:\"uname\";s:5:\"admin\";s:6:\"mobile\";s:11:\"18766034151\";s:7:\"address\";s:9:\"云龙区\";}');
INSERT INTO sp_score_order ( `order_id`, `goods_id`, `goods_name`, `price`, `userid`, `status`, `ctime`, `info` ) VALUES  ('4','4','','10','1','2','1427096312','a:3:{s:5:\"uname\";s:5:\"admin\";s:6:\"mobile\";s:11:\"18766034151\";s:7:\"address\";s:9:\"云龙区\";}');
INSERT INTO sp_score_order ( `order_id`, `goods_id`, `goods_name`, `price`, `userid`, `status`, `ctime`, `info` ) VALUES  ('5','5','','80','1','0','1427096384','a:3:{s:5:\"uname\";s:5:\"admin\";s:6:\"mobile\";s:11:\"18766034151\";s:7:\"address\";s:9:\"云龙区\";}');
INSERT INTO sp_score_order ( `order_id`, `goods_id`, `goods_name`, `price`, `userid`, `status`, `ctime`, `info` ) VALUES  ('6','5','','80','1','1','1427096544','a:3:{s:5:\"uname\";s:5:\"admin\";s:6:\"mobile\";s:11:\"18766034151\";s:7:\"address\";s:9:\"云龙区\";}');
INSERT INTO sp_score_order ( `order_id`, `goods_id`, `goods_name`, `price`, `userid`, `status`, `ctime`, `info` ) VALUES  ('7','4','','10','1','0','1427096605','a:3:{s:5:\"uname\";s:5:\"admin\";s:6:\"mobile\";s:11:\"18766034151\";s:7:\"address\";s:9:\"云龙区\";}');
INSERT INTO sp_score_order ( `order_id`, `goods_id`, `goods_name`, `price`, `userid`, `status`, `ctime`, `info` ) VALUES  ('8','3','','200','1','0','1427096613','a:3:{s:5:\"uname\";s:5:\"admin\";s:6:\"mobile\";s:11:\"18766034151\";s:7:\"address\";s:9:\"云龙区\";}');
INSERT INTO sp_score_order ( `order_id`, `goods_id`, `goods_name`, `price`, `userid`, `status`, `ctime`, `info` ) VALUES  ('9','4','','10','1','0','1427099139','a:3:{s:5:\"uname\";s:5:\"admin\";s:6:\"mobile\";s:11:\"18766034151\";s:7:\"address\";s:9:\"云龙区\";}');
INSERT INTO sp_score_order ( `order_id`, `goods_id`, `goods_name`, `price`, `userid`, `status`, `ctime`, `info` ) VALUES  ('10','4','','10','1','2','1427099205','a:3:{s:5:\"uname\";s:5:\"admin\";s:6:\"mobile\";s:11:\"18766034151\";s:7:\"address\";s:9:\"云龙区\";}');
INSERT INTO sp_score_order ( `order_id`, `goods_id`, `goods_name`, `price`, `userid`, `status`, `ctime`, `info` ) VALUES  ('11','5','','80','1','0','1427099211','a:3:{s:5:\"uname\";s:5:\"admin\";s:6:\"mobile\";s:11:\"18766034151\";s:7:\"address\";s:9:\"云龙区\";}');
INSERT INTO sp_score_order ( `order_id`, `goods_id`, `goods_name`, `price`, `userid`, `status`, `ctime`, `info` ) VALUES  ('12','4','','10','1','1','1427099228','a:3:{s:5:\"uname\";s:5:\"admin\";s:6:\"mobile\";s:11:\"18766034151\";s:7:\"address\";s:9:\"云龙区\";}');
INSERT INTO sp_score_order ( `order_id`, `goods_id`, `goods_name`, `price`, `userid`, `status`, `ctime`, `info` ) VALUES  ('13','4','','10','1','0','1427101337','a:3:{s:5:\"uname\";s:5:\"admin\";s:6:\"mobile\";s:11:\"18766034151\";s:7:\"address\";s:9:\"云龙区\";}');
INSERT INTO sp_score_order ( `order_id`, `goods_id`, `goods_name`, `price`, `userid`, `status`, `ctime`, `info` ) VALUES  ('14','4','饰品','10','1','1','1427101418','a:3:{s:5:\"uname\";s:5:\"admin\";s:6:\"mobile\";s:11:\"18766034151\";s:7:\"address\";s:9:\"云龙区\";}');
INSERT INTO sp_score_order ( `order_id`, `goods_id`, `goods_name`, `price`, `userid`, `status`, `ctime`, `info` ) VALUES  ('15','4','饰品','10','1','1','1427101440','a:3:{s:5:\"uname\";s:5:\"admin\";s:6:\"mobile\";s:11:\"18766034151\";s:7:\"address\";s:9:\"云龙区\";}');
INSERT INTO sp_score_order ( `order_id`, `goods_id`, `goods_name`, `price`, `userid`, `status`, `ctime`, `info` ) VALUES  ('16','5','..妈妈说标题长了别人才能注意到我来看看是不是真的','80','2','0','1427334534','a:3:{s:5:\"uname\";s:6:\"123123\";s:6:\"mobile\";s:3:\"123\";s:7:\"address\";s:3:\"123\";}');
INSERT INTO sp_score_order ( `order_id`, `goods_id`, `goods_name`, `price`, `userid`, `status`, `ctime`, `info` ) VALUES  ('17','5','..妈妈说标题长了别人才能注意到我来看看是不是真的','80','2','0','1428635234','a:3:{s:5:\"uname\";s:6:\"123123\";s:6:\"mobile\";s:5:\"12312\";s:7:\"address\";s:4:\"3123\";}');
INSERT INTO sp_score_order ( `order_id`, `goods_id`, `goods_name`, `price`, `userid`, `status`, `ctime`, `info` ) VALUES  ('18','5','..妈妈说标题长了别人才能注意到我来看看是不是真的','80','2','0','1428916354','a:3:{s:5:\"uname\";s:6:\"123123\";s:6:\"mobile\";s:11:\"13013962752\";s:7:\"address\";s:3:\"123\";}');
DROP TABLE IF EXISTS `sp_scoregoods_type`;
CREATE TABLE `sp_scoregoods_type` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `typeName` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `ctime` int(10) unsigned NOT NULL,
  `goodsNum` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_scoregoods_type ( `id`, `typeName`, `status`, `ctime`, `goodsNum` ) VALUES  ('4','积分精品商品','1','1428975062','0');
INSERT INTO sp_scoregoods_type ( `id`, `typeName`, `status`, `ctime`, `goodsNum` ) VALUES  ('5','大豆测试分类','1','1429153629','0');
DROP TABLE IF EXISTS `sp_shop`;
CREATE TABLE `sp_shop` (
  `sid` int(10) unsigned NOT NULL auto_increment,
  `uid` int(10) unsigned NOT NULL COMMENT '用户ID',
  `uname` varchar(255) NOT NULL COMMENT '用户名',
  `shopInfo` varchar(255) NOT NULL COMMENT '店铺信息',
  `mobile` char(11) NOT NULL COMMENT '手机认证',
  `email` varchar(255) NOT NULL COMMENT '邮箱认证',
  `userAuth` tinyint(3) unsigned NOT NULL default '0' COMMENT '是否身份认证',
  `allNum` int(10) unsigned NOT NULL COMMENT '报名总次数',
  `useNum` int(10) unsigned NOT NULL COMMENT '已使用报名次数',
  `verifyCode` varchar(10) default NULL COMMENT '验证码',
  `ctime` int(10) unsigned NOT NULL COMMENT '创建时间',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  PRIMARY KEY  (`sid`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_shop ( `sid`, `uid`, `uname`, `shopInfo`, `mobile`, `email`, `userAuth`, `allNum`, `useNum`, `verifyCode`, `ctime`, `status` ) VALUES  ('1','1','admin','a:5:{s:9:\"storeName\";s:12:\"刺客的店\";s:7:\"storeWW\";s:6:\"123456\";s:9:\"storeType\";s:6:\"淘宝\";s:9:\"goodsType\";s:12:\"电脑数码\";s:8:\"storeUrl\";s:16:\"http://tmall.com\";}','','','1','10','0','','1429001019','1');
INSERT INTO sp_shop ( `sid`, `uid`, `uname`, `shopInfo`, `mobile`, `email`, `userAuth`, `allNum`, `useNum`, `verifyCode`, `ctime`, `status` ) VALUES  ('2','3','cxz_vip','','','','0','10','0','2X4TBS','0','0');
INSERT INTO sp_shop ( `sid`, `uid`, `uname`, `shopInfo`, `mobile`, `email`, `userAuth`, `allNum`, `useNum`, `verifyCode`, `ctime`, `status` ) VALUES  ('3','2','123123','','','','0','10','0','LBTINV','0','0');
DROP TABLE IF EXISTS `sp_sign`;
CREATE TABLE `sp_sign` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `uid` int(10) unsigned NOT NULL,
  `signTime` int(10) unsigned NOT NULL,
  `getScore` smallint(4) unsigned NOT NULL,
  `type` tinyint(1) unsigned NOT NULL COMMENT '签到类型',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_sign ( `id`, `uid`, `signTime`, `getScore`, `type` ) VALUES  ('1','1','1428995091','1','3');
INSERT INTO sp_sign ( `id`, `uid`, `signTime`, `getScore`, `type` ) VALUES  ('2','3','1428995743','7','3');
INSERT INTO sp_sign ( `id`, `uid`, `signTime`, `getScore`, `type` ) VALUES  ('3','1','1429058607','9','3');
INSERT INTO sp_sign ( `id`, `uid`, `signTime`, `getScore`, `type` ) VALUES  ('4','4','1429149262','0','3');
INSERT INTO sp_sign ( `id`, `uid`, `signTime`, `getScore`, `type` ) VALUES  ('5','5','1429239218','11','3');
DROP TABLE IF EXISTS `sp_slide`;
CREATE TABLE `sp_slide` (
  `slide_id` bigint(20) unsigned NOT NULL auto_increment,
  `slide_cid` bigint(20) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_pic` varchar(255) default NULL,
  `slide_url` varchar(255) default NULL,
  `slide_des` varchar(255) default NULL,
  `slide_content` text,
  `slide_status` int(2) NOT NULL default '1',
  `listorder` int(10) default '0',
  PRIMARY KEY  (`slide_id`),
  KEY `slide_cid` (`slide_cid`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_slide ( `slide_id`, `slide_cid`, `slide_name`, `slide_pic`, `slide_url`, `slide_des`, `slide_content`, `slide_status`, `listorder` ) VALUES  ('1','2','123123','http://demo.xiaocaocms.com/tpl/simplebootx/Public/images/demo/1.jpg','','','','1','0');
INSERT INTO sp_slide ( `slide_id`, `slide_cid`, `slide_name`, `slide_pic`, `slide_url`, `slide_des`, `slide_content`, `slide_status`, `listorder` ) VALUES  ('2','2','234','http://demo.xiaocaocms.com/tpl/simplebootx/Public/images/demo/2.jpg','','','','1','0');
INSERT INTO sp_slide ( `slide_id`, `slide_cid`, `slide_name`, `slide_pic`, `slide_url`, `slide_des`, `slide_content`, `slide_status`, `listorder` ) VALUES  ('3','2','345','552f53f9dab08.jpg','http://www.etuan.com','拉萨肯德基法律开始就到了克氏棘豆老是','两款手机代理费可节省登录开飞机上来的可节省了肯定结束了看的j数量的肌肤
路上看见对方路上看见的卢克索酒店螺蛳粉
裸四口当减肥绿色健康的法律开始就到了看','1','0');
INSERT INTO sp_slide ( `slide_id`, `slide_cid`, `slide_name`, `slide_pic`, `slide_url`, `slide_des`, `slide_content`, `slide_status`, `listorder` ) VALUES  ('4','1','111','552f52e5b2fb5.jpg','','','','1','0');
INSERT INTO sp_slide ( `slide_id`, `slide_cid`, `slide_name`, `slide_pic`, `slide_url`, `slide_des`, `slide_content`, `slide_status`, `listorder` ) VALUES  ('5','1','2222','552f5304875ae.jpg','','','','1','0');
DROP TABLE IF EXISTS `sp_slide_cat`;
CREATE TABLE `sp_slide_cat` (
  `cid` bigint(20) NOT NULL auto_increment,
  `cat_name` varchar(255) NOT NULL,
  `cat_idname` varchar(255) NOT NULL,
  `cat_remark` text,
  `cat_status` int(2) NOT NULL default '1',
  PRIMARY KEY  (`cid`),
  KEY `cat_idname` (`cat_idname`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_slide_cat ( `cid`, `cat_name`, `cat_idname`, `cat_remark`, `cat_status` ) VALUES  ('1',' 	手机端幻灯','mobile_index','','1');
INSERT INTO sp_slide_cat ( `cid`, `cat_name`, `cat_idname`, `cat_remark`, `cat_status` ) VALUES  ('2','首页幻灯片','portal_index','','1');
DROP TABLE IF EXISTS `sp_term_relationships`;
CREATE TABLE `sp_term_relationships` (
  `tid` bigint(20) NOT NULL auto_increment,
  `object_id` bigint(20) unsigned NOT NULL default '0' COMMENT 'posts表里文章id',
  `term_id` bigint(20) unsigned NOT NULL default '0' COMMENT '分类id',
  `listorder` int(10) NOT NULL default '0' COMMENT '排序',
  `status` int(2) NOT NULL default '1' COMMENT '状态，1发布，0不发布',
  PRIMARY KEY  (`tid`),
  KEY `term_taxonomy_id` (`term_id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('1','1','3','2','0');
INSERT INTO sp_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('2','2','2','20','0');
INSERT INTO sp_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('3','12','1','434','0');
INSERT INTO sp_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('4','20','7','0','1');
INSERT INTO sp_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('5','21','6','0','0');
DROP TABLE IF EXISTS `sp_terms`;
CREATE TABLE `sp_terms` (
  `term_id` bigint(20) unsigned NOT NULL auto_increment COMMENT '分类id',
  `name` varchar(200) default NULL COMMENT '分类名称',
  `slug` varchar(200) default '',
  `taxonomy` varchar(32) default NULL COMMENT '分类类型',
  `description` longtext COMMENT '分类描述',
  `parent` bigint(20) unsigned default '0' COMMENT '分类父id',
  `count` bigint(20) default '0' COMMENT '分类文章数',
  `path` varchar(255) default NULL COMMENT '分类层级关系路径',
  `seo_title` varchar(255) default NULL,
  `seo_keywords` varchar(255) default NULL,
  `seo_description` varchar(255) default NULL,
  `list_tpl` varchar(50) default NULL COMMENT '分类列表模板',
  `one_tpl` varchar(50) default NULL COMMENT '分类文章页模板',
  `listorder` int(5) NOT NULL default '0' COMMENT '排序',
  `status` int(2) NOT NULL default '1' COMMENT '状态，1发布，0不发布',
  PRIMARY KEY  (`term_id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('7','文章列表','','article','','0','0','0-7','','','','list','article','0','1');
INSERT INTO sp_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('3','商品列表','','goods','','0','0','0-3','','','','list_goods','goods','0','1');
INSERT INTO sp_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('4','女装','','goods','','3','0','0-3-4','','','','list_goods','goods','0','1');
INSERT INTO sp_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('5','男装','','goods','','3','0','0-3-5','','','','list_goods','goods','0','1');
INSERT INTO sp_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('8','蕾丝','','goods','','3','0','0-3-8','','','','list_goods','goods','0','1');
INSERT INTO sp_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('6','9.9包邮','','goods','','3','0','0-3-6','','','','list_goods','goods','0','1');
INSERT INTO sp_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('9','家居','','goods','','3','0','0-3-9','','','','list_goods','goods','0','1');
DROP TABLE IF EXISTS `sp_user_favorites`;
CREATE TABLE `sp_user_favorites` (
  `id` int(11) NOT NULL auto_increment,
  `uid` bigint(20) default NULL,
  `title` varchar(255) default NULL COMMENT '收藏内容的标题',
  `url` varchar(255) default NULL COMMENT '收藏内容的原文地址，不带域名',
  `description` varchar(255) default NULL COMMENT '收藏内容的描述',
  `table` varchar(50) default NULL COMMENT '收藏实体以前所在表，不带前缀',
  `object_id` int(11) default NULL COMMENT '收藏内容原来的主键id',
  `createtime` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_user_favorites ( `id`, `uid`, `title`, `url`, `description`, `table`, `object_id`, `createtime` ) VALUES  ('1','2','sdafsdf','/index.php?g=portal&amp;m=article&amp;a=index&amp;id=1','','posts','1','1425256984');
INSERT INTO sp_user_favorites ( `id`, `uid`, `title`, `url`, `description`, `table`, `object_id`, `createtime` ) VALUES  ('2','5','test','/index.php/portal/article/index/id/4','','posts','20','1429239305');
DROP TABLE IF EXISTS `sp_users`;
CREATE TABLE `sp_users` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `user_login` varchar(60) NOT NULL default '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL default '' COMMENT '登录密码；sp_password加密',
  `user_nicename` varchar(50) NOT NULL default '' COMMENT '用户美名',
  `user_email` varchar(100) NOT NULL default '' COMMENT '登录邮箱',
  `user_url` varchar(100) NOT NULL default '' COMMENT '用户个人网站',
  `avatar` varchar(255) default NULL COMMENT '用户头像，相对于upload/avatar目录',
  `sex` smallint(1) default '0' COMMENT '性别；0：保密，1：男；2：女',
  `birthday` date default NULL COMMENT '生日',
  `signature` varchar(255) default NULL COMMENT '个性签名',
  `last_login_ip` varchar(16) NOT NULL COMMENT '最后登录ip',
  `last_login_time` datetime NOT NULL COMMENT '最后登录时间',
  `create_time` datetime NOT NULL default '0000-00-00 00:00:00' COMMENT '注册时间',
  `user_activation_key` varchar(60) NOT NULL default '' COMMENT '激活码',
  `user_status` int(11) NOT NULL default '1' COMMENT '用户状态 0：禁用； 1：正常 ；2：未验证',
  `role_id` smallint(6) default NULL COMMENT '用户角色id',
  `score` int(11) NOT NULL default '0' COMMENT '用户积分',
  `user_type` smallint(1) default '1' COMMENT '用户类型，1:admin ;2:会员',
  PRIMARY KEY  (`id`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_users ( `id`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `avatar`, `sex`, `birthday`, `signature`, `last_login_ip`, `last_login_time`, `create_time`, `user_activation_key`, `user_status`, `role_id`, `score`, `user_type` ) VALUES  ('1','admin','c535018ee94621232f297a57a5a743894a0e4a801fc389af','admin','5507892@qq.com','','','0','','','180.124.104.169','2015-04-17 11:44:39','2015-02-27 03:30:31','','1','1','10','1');
INSERT INTO sp_users ( `id`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `avatar`, `sex`, `birthday`, `signature`, `last_login_ip`, `last_login_time`, `create_time`, `user_activation_key`, `user_status`, `role_id`, `score`, `user_type` ) VALUES  ('2','123123','c535018ee9464297f44b13955235245b2497399d7a9389af','123123','553773593@qq.com','','','0','','','121.233.125.233','2015-04-15 11:35:24','2015-03-02 08:42:54','081e6990f42dda78cb21efac7dbe97d7','1','','760','2');
INSERT INTO sp_users ( `id`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `avatar`, `sex`, `birthday`, `signature`, `last_login_ip`, `last_login_time`, `create_time`, `user_activation_key`, `user_status`, `role_id`, `score`, `user_type` ) VALUES  ('3','cxz_vip','c535018ee94646f94c8de14fb36680850768ff1b7f2a89af','cxz_vip','1113484046@qq.com','','','0','','','180.125.241.188','2015-04-14 17:27:02','2015-04-09 17:05:33','','1','','7','2');
INSERT INTO sp_users ( `id`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `avatar`, `sex`, `birthday`, `signature`, `last_login_ip`, `last_login_time`, `create_time`, `user_activation_key`, `user_status`, `role_id`, `score`, `user_type` ) VALUES  ('4','大豆','c535018ee94646f94c8de14fb36680850768ff1b7f2a89af','大豆','dadou87@126.com','','552f182100474.png','1','2015-04-16','绿色空间的法律圣诞节法律上空间发的','180.125.240.77','2015-04-16 09:54:05','2015-04-15 18:28:38','','1','','0','2');
INSERT INTO sp_users ( `id`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `avatar`, `sex`, `birthday`, `signature`, `last_login_ip`, `last_login_time`, `create_time`, `user_activation_key`, `user_status`, `role_id`, `score`, `user_type` ) VALUES  ('5','','','aQaaaaaaa','','','http://tp2.sinaimg.cn/2067433761/180/0/1','0','','','180.124.104.169','2015-04-17 10:53:22','2015-04-17 10:53:22','','1','','11','2');
