<?php
class GoodsModel extends CommonModel {
	//表结构
	// `goods_id` : 宝贝ID,
	// `goods_name` ：'宝贝名称',
	// `term_id`　：'宝贝名称',
	// `term_name` varchar(32) NOT NULL DEFAULT '' COMMENT '分类名称',
	// `seller_name` varchar(32) NOT NULL DEFAULT '' COMMENT '卖家名称',
	// `seller_credit` varchar(32) NOT NULL DEFAULT '' COMMENT '卖家信用',
	// `old_price` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '原价',
	// `goods_price` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '现价',
	// `brokerage` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '佣金',
	// `goods_PEG` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '收入比率',
	// `goods_salesnum` int(10) NOT NULL DEFAULT '0' COMMENT '宝贝销量',
	// `click_rate` int(10) NOT NULL DEFAULT '0' COMMENT '点击量',
	// `pic_url` varchar(500) NOT NULL DEFAULT '' COMMENT '图片地址',
	// `goods_url` varchar(255) NOT NULL DEFAULT '' COMMENT '宝贝地址',
	// `click_url` varchar(1000) NOT NULL DEFAULT '' COMMENT '推广地址',
	// `goods_body` longtext NOT NULL COMMENT '宝贝内容',
	// `goods_state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态，1发布，0不发布',
	// `seo_title` varchar(255) DEFAULT NULL COMMENT 'seo标题',
	// `seo_keywords` varchar(255) DEFAULT NULL COMMENT 'seo关键字',
	// `seo_description` varchar(500) DEFAULT '',
	// `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间（时间戳）',
	// `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后一次修改时间（时间戳）',

	protected $_auto = array (
		array ('add_time', 'mGetDate', 1, 'callback' ), 	// 增加的时候调用回调函数
	);
	// 获取当前时间
	function mGetDate() {
		return date ( 'Y-m-d H:i:s' );
	}
	
	protected function _before_write(&$data) {
		parent::_before_write($data);
	}
}