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
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like` ) VALUES  ('18','1','','2015-03-26 17:43:09','<link href=\"/tpl/simplebootx/Public/css/about.css\" rel=\"stylesheet\"/><div class=\"main\"><div class=\"piece fanli\"><div class=\"white_top\"><div class=\"white_top_left\"></div><div class=\"white_top_middle\"></div><div class=\"white_top_right\"></div></div><div class=\"white_bg\"><div class=\"privacy banquan\"><center><strong><span style=\"font-size:24px\">小草网网络服务协议</span></strong></center><p class=\"pt mt14\">加入和使用小草网网站表明您已经阅读并同意本使用条款，您的会员活动会遵从本使用条款。本协议由您与武汉奇米网络科技有限公司共同缔结，本协议具有合同效力。</p><p class=\"pt mt14\">本协议中协议双方合称协议方，武汉奇米网络科技有限公司在协议中亦称为“小草网”。域名juanpi.com。</p><h4 class=\"f14 mt14\">一、协议内容及签署</h4><p class=\"pt mt14\">1、本协议内容包括协议正文及所有小草网已经发布的或将来可能发布的各类规则，包括但不仅限于网站公告及帮助在内的官方声明。所有规则为本协议不可分割的组成部分，与协议正文具有同等法律效力。除另行明确声明外，任何小草网及其关联公司提供的服务均受本协议约束。</p><p class=\"pt mt14\">2、您应当在使用小草网服务之前认真阅读全部协议内容，如您对协议有任何疑问的，应向小草网咨询。但无论您事实上是否在使用小草网服务之前认真阅读了本协议内容，只要您使用小草网服务，则本协议即对您产生约束，届时您不应以未阅读本协议的内容或者未获得小草网对您问询的解答等理由，主张本协议无效，或要求撤销本协议。</p><p class=\"pt mt14\">3、小草网有权根据需要不时地制订、修改本协议及/或各类规则，并以网站公示的方式进行公告，不再单独通知您。变更后的协议和规则一经在网站公布后，立即自动生效。修改后的使用协议一旦在网页上公布即有效代替原来的使用协议。此外，当您使用小草网特殊服务时，您和小草网应遵守小草网随时公布的与该服务相关的指引、公告以及规则。前述所有的指引、公告以及规则，均构成本使用协议的一部分。如您不同意相关变更，应当立即停止使用小草网服务。您继续使用小草网服务的，即表示您接受经修订的协议和规则。</p><p class=\"pt mt14\">4、您应当是具备完全民事权利能力和完全民事行为能力的自然人、法人或其他组织。若您不具备前述主体资格，则您及您的监护人应承担因此而导致的一切后果，且小草网有权注销（永久冻结）您的小草网账户，并向您及您的监护人索偿。</p><p class=\"pt mt14\">5、您承诺接受并遵守本协议的约定。如果您不同意本协议的约定，您应立即停止注册程序或停止使用小草网服务。您一旦使用小草网服务，即视为您已了解并完全同意本使用协议各项内容，包括小草网对使用协议随时所做的任何修改，并成为小草网用户（以下简称“用户”）。</p><h4 class=\"f14 mt14\">二、服务说明</h4><p class=\"pt mt14\">小草网用户（以下简称“用户”）可以通过按照指引、公告或者规则提供的正确方式，点击小草网所提供的商家、广告、搜索结果等产生网上购物行为，享受购物后返回现金的服务；发布并分享返利以及网购经验；求推荐网购商品，收藏网购商品和店铺；在小草网中发布商品分享，上传图片。</p><p class=\"pt mt14\">1、用户注册成为小草网的会员之后，即刻享有小草网提供的服务。</p><p class=\"pt mt14\">2、返利结算：小草网收到合作商家返回的返利数据后，将按照网站中约定的相应金额打入用户在小草网的虚拟帐户，用户收到返利后满10元即可申请10元整倍数的支付宝、银行转账等网站支持的方式提现，小草网收到申请后1个工作日内完成提现工作（周末以及节假日情况顺延）。</p><p class=\"pt mt14\">3、返利方式：小草网提供支付宝和银联转账等几种方式，如果会员没有出现违规情况，小草网将按照规定支付返利金额。</p><p class=\"pt mt14\">4、通过小草网及其关联公司提供的小草网服务和其它服务，会员可在小草网上查询商品、发布网购信息、和服务信息、对其他用户分享信息进行评价、参加小草网组织的活动以及使用其它信息服务及技术服务。</p><p class=\"pt mt14\">5、您在小草网的使用过程中与其他会员发生交易纠纷时，一旦您或其它会员任一方或双方共同提交小草网要求调处，则小草网有权根据单方判断做出调处决定，您了解并同意接受小草网的判断和调处决定。该决定将对您具有法律约束力。</p><p class=\"pt mt14\">除非本使用协议另有其它明示规定，增加或强化目前本服务的任何新功能，包括所推出的新产品，均受到本使用协议之规范。您了解并同意，本服务仅依其当前所呈现的状况提供，对于任何用户信息或个人化设定之时效、删除、传递错误、未予储存或其它任何问题，小草网均不承担任何责任。小草网保留不经事先通知为维修保养、升级或其它目的暂停本服务任何部分的权利。</p><h4 class=\"f14 mt14\">三、小草网服务使用规范</h4><p class=\"pt mt14\">1、遵守法律</p><p class=\"pt\">您同意遵守中华人民共和国相关法律法规的所有规定，并对以任何方式使用您的密码和您的账号使用本服务的任何行为及其结果承担全部责任。如您的行为违反国家法律和法规的任何规定，有可能构成犯罪的，将被追究刑事责任，并由您承担全部法律责任。</p><p class=\"pt\">同时如果小草网有理由认为您的任何行为，包括但不限于您的任何言论和其它行为违反或可能违反国家法律和法规的任何规定，小草网可在任何时候不经任何事先通知终止向您提供服务。</p><p class=\"pt mt14\">2、您的注册义务</p><p class=\"pt\">为了能使用本服务，您同意以下事项：依本服务注册提示请您填写正确的注册邮箱、密码和名号，并确保今后更新的登录邮箱、名号、头像等资料的有效性和合法性。若您提供任何违法、不道德或小草网认为不适合在小草网上展示的资料；或者小草网有理由怀疑您的资料属于程序或恶意操作，小草网有权暂停或终止您的账号，并拒绝您于现在和未来使用本服务之全部或任何部分。</p><p class=\"pt\">小草网无须对任何用户的任何登记资料承担任何责任，包括但不限于鉴别、核实任何登记资料的真实性、正确性、完整性、适用性及/或是否为最新资料的责任。</p><p class=\"pt mt14\">3、用户账号、密码及安全</p><p class=\"pt\">完成本服务的注册程序并成功注册之后，您可使用您的账号和密码，登录到您在小草网的帐户（下称“账号”）。保护您的账号安全，是您的责任。</p><p class=\"pt\">您应对所有使用您的密码及账号的活动负完全的责任。您同意：</p><p class=\"pt\">1）您的小草网账号遭到未获授权的使用，或者发生其它任何安全问题时，您将立即通知小草网；</p><p class=\"pt\">2）如果您未保管好自己的账号和密码，因此而产生的任何损失或损害，小草网无法也不承担任何责任；</p><p class=\"pt\">3）每个用户都要对其账号中的所有行为和事件负全责。如果您未保管好自己的账号和密码而对您、小草网或第三方造成了损害，您将负全部责任。</p><p class=\"pt mt14\">4、小草网隐私权政策</p><p class=\"pt\">您提供的登记资料及小草网保留的有关您的若干其它资料将受到中国有关隐私的法律和本公司《隐私声明》之规范。</p><p class=\"pt mt14\">5、提供者之责任</p><p class=\"pt\">根据有关法律法规，小草网在此郑重提醒您注意，任何经由本服务而发布、上传的文字、资讯、资料、照片、图形、视讯、信息或其它资料（以下简称“内容
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
INSERT INTO sp_route ( `id`, `full_url`, `url`, `listorder`, `status` ) VALUES  ('10','portal/index/index','all','0','1');
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
INSERT INTO sp_slide ( `slide_id`, `slide_cid`, `slide_name`, `slide_pic`, `slide_url`, `slide_des`, `slide_content`, `slide_status`, `listorder` ) VALUES  ('3','2','345','http://demo.xiaocaocms.com/tpl/simplebootx/Public/images/demo/3.jpg','http://www.xiaocaocms.com','','','1','0');
INSERT INTO sp_slide ( `slide_id`, `slide_cid`, `slide_name`, `slide_pic`, `slide_url`, `slide_des`, `slide_content`, `slide_status`, `listorder` ) VALUES  ('4','1','111','http://demo.xiaocaocms.com//data/upload/552f52e5b2fb5.jpg','','','','1','0');
INSERT INTO sp_slide ( `slide_id`, `slide_cid`, `slide_name`, `slide_pic`, `slide_url`, `slide_des`, `slide_content`, `slide_status`, `listorder` ) VALUES  ('5','1','2222','http://demo.xiaocaocms.com//data/upload/552f5304875ae.jpg','','','','1','0');
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
INSERT INTO sp_slide_cat ( `cid`, `cat_name`, `cat_idname`, `cat_remark`, `cat_status` ) VALUES  ('1','   手机端幻灯','mobile_index','','1');
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