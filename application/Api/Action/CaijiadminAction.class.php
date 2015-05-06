<?php
/**
 * 作    者：阿神
 * 功    能：商品采集
 * 修改日期：2015-3-4
 */

class CaijiadminAction extends Action {

	public function caiji_news(){
		require_once( SITE_PATH.'/plugins/convert/convert.php');
		require_once( SITE_PATH.'/plugins/caiji/Snoopy.class.php');
		$snoopy=new Snoopy();
		$snoopy->maxredirs = 0;
		$url=urldecode($_GET['url']);
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
			$return['img']=str_replace(array('_400x400.jpg'),'',$img[1]);
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
			$zk=0;
			preg_match('/<img[^>]*id="J_ImgBooth"[^r]*rc=\"([^"]*)\"[^>]*>/', $str_conent, $img);
			preg_match('/<title>([^<>]*)-/', $str_conent, $title);
			preg_match("/\"price\":\"(.+?)\",/ims",$str_conent,$price);
			preg_match("/sellerNick:\"(.+?)\"/ims",$str_conent,$seller_nickname);
			preg_match("/newrank\/s_(.+?)\.gif/ims",$str_conent,$credit);
			preg_match("/\"apiItemDesc\":\"(.*?)\"/ims",$str_conent,$content);
			$return['title']=zhconversion_hans(iconv('GBK','UTF-8',$title[1]));
			$return['img']=str_replace(array('_400x400.jpg'),'',$img[1]);
			$return['price']=floatval($price[1])/100;
			$return['store_name']=zhconversion_cn(iconv('GBK','UTF-8',$seller_nickname[1]));
			$return['type']="taobao";
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
			}
		}
		$this->ajaxReturn($return);
	}
}