<?php
class MemberbaseAction extends HomeBaseAction{
	
	function _initialize() {
		parent::_initialize();
		
		$this->check_login();
		$this->check_user();
		
	}
	
}