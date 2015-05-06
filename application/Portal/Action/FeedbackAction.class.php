<?php

/**
 * 意见建议
 */
class FeedbackAction extends HomeBaseAction {
	
    //意见建议
	public function index() {
    	$feedback=array();
		$text='';
		$feedback['content'] = strip_tags($_POST['content']);
		$feedback['link'] = strip_tags($_POST['link']);
		$feedback['id']=$feedback['link']."_".time();
		$text=serialize($feedback);
		$html=$feedback['link']."的意见建议<br>";
		if($feedback['link']){
			$html .= " 联系方式：".$feedback['link']."<br>";
		}
		if($feedback['content']){
			$html .= " 意见建议：".$feedback['content']."<br>";
		}
		$send_result=sp_send_email($site_options['site_admin_email'], $feedback['link']."的意见建议", $html);
		file_put_contents( SITE_PATH."/jianyi/".$feedback['id'].'.txt', $text);
		$this->success("添加成功！",'/');
    }   

}

?>
