<?php

/**
 * 搜索页面
*/
class SearchAction extends HomeBaseAction {

	//搜索页
	public function index() {
		$keywords=trim(strip_tags($_POST['keywords']));
    	$this->assign('keywords', $keywords);
    	$this->display(":search");
	}
}
?>
