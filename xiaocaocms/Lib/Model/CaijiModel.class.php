<?php
class CaijiModel extends CommonModel
{
	//采集阿里妈妈单品关键词列表
	//http://pub.alimama.com/pubauc/searchAuctionList.json?q=a&toPage=1&startCommrate=&startTotalnum=&endTotalnum=&startPrice=&endPrice=&startRatesum=&cat=50076934&t=1425518910200&_input_charset=utf-8
	//q=关键字
	//toPage=页数
	//sort=排序(单价：bid/_bid 收入比率：commrate/_commrate 30天推广量：totalnum/_totalnum 30天支出佣金：totalfee/_totalfee)
	//startCommrate=收入比率
	//startTotalnum=30天最小推广量
	//endTotalnum=30天最大推广量
	//startPrice=最小价格
	//endPrice=最大价格
	//startRatesum=卖家信用
	//cat=分类ID
	
	public function cookies_caiji($q='',$cat='',$sort = '',$topage=1,$startCommrate='',$startTotalnum='',$startPrice='',$endPrice='',$startRatesum='')
	{
		$url="http://pub.alimama.com/pubauc/searchAuctionList.json?q=".$q."&toPage=".$topage."&sort=".$sort."&startCommrate=".$startCommrate."&startTotalnum=".$startTotalnum."&endTotalnum=".$endTotalnum."&startPrice=".$startPrice."&endPrice=".$endPrice."&startRatesum=".$startRatesum."&cat=".$cat."&_input_charset=utf-8";
		$cookies = $this->cookies_get();
		$content = $this->get_content($url,$cookies);
		if($content){
			return $content;
		}else{
			return false;
		}
	}

	public function taoke_link($url)
	{
		$pidstr=C('TAOKE_PID');
		$pidlist=split('_',$pidstr);
		$url="http://pub.alimama.com/urltrans/urltrans.json?siteid=".$pidlist[2]."&adzoneid=".$pidlist[3]."&promotionURL=".urlencode($url)."&_input_charset=utf-8";
		$cookies = $this->cookies_get();
		$content = $this->get_content($url,$cookies);
		return $content;
	}

    // `goods_id` : 宝贝ID,
    // `goods_name` ：'宝贝名称',
    // `term_id`　：'分类名称',
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
    // `sclick_url` varchar(1000) NOT NULL DEFAULT '' COMMENT '店铺推广地址',
    // `goods_body` longtext NOT NULL COMMENT '宝贝内容',
    // `goods_state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态，1发布，0不发布',
    // `seo_title` varchar(255) DEFAULT NULL COMMENT 'seo标题',
    // `seo_keywords` varchar(255) DEFAULT NULL COMMENT 'seo关键字',
    // `seo_description` varchar(500) DEFAULT '',
    // `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间（时间戳）',
    // `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后一次修改时间（时间戳）',
	public function ruku_goods($item)
	{
		$goods=$goods_info=array();
		$goods_db=D("Goods");
		$item=$this->object_array(json_decode(htmlspecialchars_decode($item)));
        //获取淘宝客商品推广链接
        $sclick=$this->taoke_link($item['auctionUrl']);
        $sclick=$this->object_array(json_decode($sclick));
        //获取淘宝客店铺推广链接
        $shopclick=$this->taoke_link($item['shopUrl']);
        $shopclick=$this->object_array(json_decode($shopclick));
        $goods_info = $this->caiji_info($item['auctionUrl']);
        $goods['goods_name']=strip_tags($item['title']);
        $goods['goods_type']=$goods_info['type'];
        $goods['seller_name']=$item['nick'];
        $goods['seller_credit']=$goods_info['credit'];
        $goods['old_price']=$item['reservePrice'];
        $goods['goods_price']=$item['zkPrice'];
        $goods['brokerage']=$item['calCommission'];
        $goods['goods_PEG']=$item['zkRate'];
        $goods['goods_salesnum']=rand(20,3000);
        $goods['click_rate']=rand(40,10000);
        $goods['total_num']=$item['totalNum'];
        $goods['pic_url']=$item['pictUrl'];
		$goods['goods_url']=$item['auctionUrl'];
        $goods['click_url']=$sclick['data']['sclick'];
        $goods['sclick_url']=$shopclick['data']['sclick'];
        $goods['goods_body']=$goods_info['content'];
        $count = $goods_db->where(" goods_url LIKE '".$goods['goods_url']."'")->count();
        if($count > 0){
        	$goods['update_time']=time();
        	return $goods_db->where(" goods_url LIKE '".$goods['goods_url']."'")->save($goods);
        }else{
        	$goods['add_time']=time();
        	return $goods_db->add($goods);
        }
	}

	public function plruku_goods($item)
	{
		$goods=$goods_info=array();
		$goods_db=D("Goods");
        //获取淘宝客商品推广链接
        $sclick=$this->taoke_link($item['auctionUrl']);
        $sclick=$this->object_array(json_decode($sclick));
        //获取淘宝客店铺推广链接
        $shopclick=$this->taoke_link($item['shopUrl']);
        $shopclick=$this->object_array(json_decode($shopclick));
        $goods_info = $this->caiji_info($item['auctionUrl']);
        $goods['term_id']=$item['term_id'];
        $goods['term_name']=$item['term_name'];
        $goods['goods_name']=strip_tags($item['title']);
        $goods['goods_type']=$goods_info['type'];
        $goods['seller_name']=$item['nick'];
        $goods['seller_credit']=$goods_info['credit'];
        $goods['old_price']=$item['reservePrice'];
        $goods['goods_price']=$item['zkPrice'];
        $goods['brokerage']=$item['calCommission'];
        $goods['goods_PEG']=$item['zkRate'];
        $goods['goods_salesnum']=rand(20,3000);
        $goods['click_rate']=rand(40,10000);
        $goods['pic_url']=$item['pictUrl'];
		$goods['goods_url']=$item['auctionUrl'];
        $goods['click_url']=$sclick['data']['sclick'];
        $goods['shop_url']=$item['shopUrl'];
        $goods['sclick_url']=$shopclick['data']['sclick'];
        $goods['goods_body']=$goods_info['content'];
        $count = $goods_db->where(" goods_url LIKE '".$goods['goods_url']."'")->count();
        if($count > 0){
        	$goods['update_time']=time();
        	return $goods_db->where(" goods_url LIKE '".$goods['goods_url']."'")->save($goods);
        }else{
        	$goods['add_time']=time();
        	$goods_id=$goods_db->add($goods);
        	return $goods_id;
        }
	}

	public function caiji_info($url){
		require_once( SITE_PATH.'/plugins/convert/convert.php');
		require_once( SITE_PATH.'/plugins/caiji/Snoopy.class.php');
		$snoopy=new Snoopy();
		$snoopy->referer=$url;
		$snoopy->agent = "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko/20100101 Firefox/37.0"; //伪装浏览器
		preg_match('/id=(\d+)/', $url, $u);
		$return['id']=$u[1];
		if(strpos($url,'tmall.com')){
			$result=$snoopy->fetch("http://detail.tmall.com/item.htm?id=".$u[1]);
			if($result){
				$str_conent = $snoopy->results;
			}
			preg_match('/<img[^>]*id="J_ImgBooth"[^r]*rc=\"([^"]*)\"[^>]*>/', $str_conent, $img);
			preg_match('/<title>([^<>]*)-/', $str_conent, $title);
			preg_match("/\"price\":\"(.+?)\",/ims",$str_conent,$price);
			preg_match("/\"seller_nickname\" value=\"(.+?)\"/ims",$str_conent,$seller_nickname);
			preg_match("/\"descUrl\":\"(.*?)\"/ims",$str_conent,$content);
			$return['title']=zhconversion_cn(iconv('GBK','UTF-8',$title[1]));
			$return['img']=$img[1];
			$return['price']=floatval($price[1]);
			$return['store_name']=zhconversion_cn(iconv('GBK','UTF-8',$seller_nickname[1]));
			$return['credit']=21;
			$return['type']="tmall";
			$return['content']=zhconversion_cn(iconv('GBK','UTF-8',str_replace(array('var desc=\'','\';'),'',file_get_contents($content[1]))));
		}
		if(strpos($url,'taobao.com')){
			$result=$snoopy->fetch("http://item.taobao.com/item.htm?id=".$u[1]);
			if($result){
				$str_conent = $snoopy->results;
			}
			if(empty($str_conent)){
				$result=$snoopy->fetch("http://detail.tmall.com/item.htm?id=".$u[1]);
				if($result){
					$str_conent = $snoopy->results;
				}
			}
			preg_match('/<img[^>]*id="J_ImgBooth"[^r]*rc=\"([^"]*)\"[^>]*>/', $str_conent, $img);
			preg_match('/<title>([^<>]*)-/', $str_conent, $title);
			preg_match("/\"price\":\"(.+?)\",/ims",$str_conent,$price);
			preg_match("/newrank\/s_(.+?)\.gif/ims",$str_conent,$credit);
			preg_match("/<h1 id=\"mallLogo\"(.+?)\",/ims",$str_conent,$type);
			if($type[0]){
				$return['type']='tmall';
				preg_match("/\"descUrl\":\"(.*?)\"/ims",$str_conent,$content);
				preg_match("/\"seller_nickname\" value=\"(.+?)\"/ims",$str_conent,$seller_nickname);
			}else{
				$return['type']='taobao';
				preg_match("/\"apiItemDesc\":\"(.*?)\"/ims",$str_conent,$content);
				preg_match("/sellerNick:\"(.+?)\"/ims",$str_conent,$seller_nickname);
			}
			$return['title']=zhconversion_hans(iconv('GBK','UTF-8',$title[1]));
			$return['img']=$img[1];
			$return['price']=floatval($price[1])/100;
			$return['store_name']=zhconversion_cn(iconv('GBK','UTF-8',$seller_nickname[1]));
			$return['content']=zhconversion_cn(iconv('GBK','UTF-8',str_replace(array('var desc=\'','\';'),'',file_get_contents($content[1]))));
			switch ($credit[1]) {
				case 'red_1':
			        $return['credit']=1;
			        break;
			    case 'red_2':
			        $return['credit']=2;
			        break;
			    case 'red_3':
			        $return['credit']=3;
			        break;
			    case 'red_4':
			        $return['credit']=4;
			        break;
			    case 'red_5':
			        $return['credit']=5;
			        break;
			    case 'blue_1':
			        $return['credit']=6;
			        break;
			    case 'blue_2':
			        $return['credit']=7;
			        break;
			    case 'blue_3':
			        $return['credit']=8;
			        break;
			    case 'blue_4':
			        $return['credit']=9;
			        break;
			    case 'blue_5':
			        $return['credit']=10;
			        break;
			    case 'cap_1':
			        $return['credit']=11;
			        break;
			    case 'cap_2':
			        $return['credit']=12;
			        break;
			    case 'cap_3':
			        $return['credit']=13;
			        break;
			    case 'cap_4':
			        $return['credit']=14;
			        break;
			    case 'cap_5':
			        $return['credit']=15;
			        break;
			    case 'crown_1':
			        $return['credit']=16;
			        break;
			    case 'crown_2':
			        $return['credit']=17;
			        break;
			    case 'crown_3':
			        $return['credit']=18;
			        break;
			    case 'crown_4':
			        $return['credit']=19;
			        break;
			    case 'crown_5':
			        $return['credit']=20;
			        break;  
			default:
				$return['credit']=20;
			    break;  
			}
		}
		return $return;
	}

 	//幻化为数组
    public function object_array(&$object) {
        $object = json_decode(json_encode($object),true);
        return $object;

    }

	//cookies获取
	public function cookies_get($filename='alimama_cookies')
	{
		return file_get_contents($filename.'.txt');
	}

	//cookies设置
	public function cookies_set($cookies,$filename='alimama_cookies')
	{
		$filename = $filename.'.txt';
		$file = fopen($filename, 'w+');
		fwrite($file,$cookies);
		fclose($file);
	}

	//抓取内容
	public function get_content($url, $cookies) {
		header("Content-type:text/html;Charset=utf8"); 
	    $ch =curl_init();  
		curl_setopt($ch,CURLOPT_URL,$url);
		$header = array();
		curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);  
		curl_setopt($ch,CURLOPT_HEADER,fasle);
		curl_setopt($ch,CURLOPT_HTTPHEADER,$header);  
		curl_setopt($ch,CURLOPT_COOKIE,$cookies);
		$content = curl_exec($ch); //执行cURL抓取页面内容 
	    curl_close($ch);
	    return $content; 
	}

	//抓取内容2
	public function get_content2($url) {
		header("Content-type:text/html;Charset=utf8"); 
	    $ch =curl_init();  
		curl_setopt($ch,CURLOPT_URL,$url);
		$header = array();
		curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (compatible; MSIE 5.01; Windows NT 5.0)');
		curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);  
		curl_setopt($ch,CURLOPT_HEADER,1);
		curl_setopt($ch,CURLOPT_HTTPHEADER,$header);
		curl_setopt($ch,CURLOPT_FOLLOWLOCATION,1);
		$content = curl_exec($ch); //执行cURL抓取页面内容 
	    curl_close($ch);
	    return $content; 
	}
	/**
     * curl 多线程
     *
     * @param array $array 并行网址
     * @param int $timeout 超时时间
     * @return mix
     */
	public function curl_http($array,$timeout='15', $cookies){
	    $res = array();

	    $mh = curl_multi_init();//创建多个curl语柄

	    foreach($array as $k=>$url){
	        $conn[$k]=curl_init($url);//初始化

	        curl_setopt($conn[$k], CURLOPT_TIMEOUT, $timeout);//设置超时时间
	        curl_setopt($conn[$k], CURLOPT_USERAGENT, 'Mozilla/5.0 (compatible; MSIE 5.01; Windows NT 5.0)');
	        curl_setopt($conn[$k], CURLOPT_MAXREDIRS, 7);//HTTp定向级别 ，7最高
	        curl_setopt($conn[$k], CURLOPT_HEADER, false);//这里不要header，加块效率
	        curl_setopt($conn[$k], CURLOPT_FOLLOWLOCATION, 1); // 302 redirect
	        curl_setopt($conn[$k], CURLOPT_RETURNTRANSFER,1);//要求结果为字符串且输出到屏幕上
			curl_setopt($conn[$k], CURLOPT_HTTPGET, true);
			curl_setopt($conn[$k],CURLOPT_COOKIE,$cookies);
	        curl_multi_add_handle ($mh,$conn[$k]);
	    }
	     //防止死循环耗死cpu 这段是根据网上的写法
	        do {
	            $mrc = curl_multi_exec($mh,$active);//当无数据，active=true
	        } while ($mrc == CURLM_CALL_MULTI_PERFORM);//当正在接受数据时
	        while ($active and $mrc == CURLM_OK) {//当无数据时或请求暂停时，active=true
	            if (curl_multi_select($mh) != -1) {
	                do {
	                    $mrc = curl_multi_exec($mh, $active);
	                } while ($mrc == CURLM_CALL_MULTI_PERFORM);
	            }
	        }

	    foreach ($array as $k => $url) {
	          if(!curl_errno($conn[$k])){
	          	$data[$k]=curl_multi_getcontent($conn[$k]);//数据转换为array
	          	$header[$k]=curl_getinfo($conn[$k]);//返回http头信息
	          	curl_close($conn[$k]);//关闭语柄
	          	curl_multi_remove_handle($mh  , $conn[$k]);   //释放资源
	          }else{
	          	unset($k,$url);
	          }
	        }

	        curl_multi_close($mh);

	        return $data;

	}

	protected function _before_write(&$data) {
		parent::_before_write($data);
	}
	
}

?>