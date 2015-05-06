<?php
class AdminGoodsAction extends AdminbaseAction {
	protected $goods_obj;
	protected $terms_relationship;
	protected $terms_obj;
	
	function _initialize() {
		parent::_initialize();
		$this->goods_obj = D("Goods");
		$this->terms_obj = D("Terms");
		$this->terms_relationship = D("TermRelationships");
	}
	function index(){
		$this->_lists();
		$this->_getTree();
		$this->display();
	}
	
	function add(){
		$this->_getTree();
		$term_id = intval(I("get.term"));
		$term=$this->terms_obj->where("term_id=$term_id")->find();
		$this->assign("author","1");
		$this->assign("term",$term);
		$this->display();
	}
	
	function add_goods(){
		$this->_getTree();
		if (IS_POST) {
			$_POST['goods']['add_time']=date("Y-m-d H:i:s",time());
			$result=$this->goods_obj->add($_POST['goods']);
			if ($result) {
				$this->success("添加成功！");
			} else {
				$this->error("添加失败！");
			}
			 
		}
	}
	
	public function edit(){
		$this->_getTree();
		$id=  intval(I("get.id"));
		$term_id = intval(I("get.term"))?intval(I("get.term")):3;
		$term=$this->terms_obj->where("term_id=$term_id")->find();
		$goods=$this->goods_obj->where("goods_id=$id")->find();
		$this->assign("goods",$goods);
		$this->assign("pic_url",json_decode($goods['pic_url'],true));
		$this->assign("term",$term);
		$this->display();
	}
	
	public function edit_goods(){
		if (IS_POST) {
			unset($_POST['goods']['goods_author']);
			$result=$this->goods_obj->save($_POST['goods']);
			if ($result!==false) {
				$this->success("保存成功！");
			} else {
				$this->error("保存失败！");
			}
		}
	}
	
	private  function _lists(){
		$term_id=0;
		if(!empty($_REQUEST["term"])){
			$term_id=intval($_REQUEST["term"]);
			$term=$this->terms_obj->where("term_id=$term_id")->find();
			$this->assign("term",$term);
			$_GET['term']=$term_id;
		}
		$where_ands=empty($term_id)?array():array("term_id = $term_id");
		$catIDS=array();
		$terms=M("Terms")->field("term_id")->where("status=1 and (term_id=$term_id or path like '%-$term_id-%')")->order('term_id asc')->select();
		
		foreach($terms as $item){
			$catIDS[]=$item['term_id'];
		}
		if(!empty($catIDS)){
			$catIDS=implode(",", $catIDS);
			$where_ands=empty($term_id)?array():array("term_id in ($catIDS)");
		}
		
		
		$fields=array(
				'start_time'=> array("field"=>"add_time","operator"=>">"),
				'end_time'  => array("field"=>"add_time","operator"=>"<"),
				'keyword'  => array("field"=>"goods_name","operator"=>"like"),
		);

		if(IS_POST){
			foreach ($fields as $param =>$val){
				if (isset($_POST[$param]) && !empty($_POST[$param])) {
					$operator=$val['operator'];
					$field   =$val['field'];
					$get=$_POST[$param];
					$_GET[$param]=$get;
					if($operator=="like"){
						$get="%$get%";
					}
					array_push($where_ands, "$field $operator '$get'");
				}
			}
		}else{
			foreach ($fields as $param =>$val){
				if (isset($_GET[$param]) && !empty($_GET[$param])) {
					$operator=$val['operator'];
					$field   =$val['field'];
					$get=$_GET[$param];
					if($operator=="like"){
						$get="%$get%";
					}
					array_push($where_ands, "$field $operator '$get'");
				}
			}
		}
		
		$count=$this->goods_obj->where($where_ands)
		->count();
			
		$page = $this->page($count, 20);
			
		$goods=$this->goods_obj
		->limit($page->firstRow . ',' . $page->listRows)
		->order("goods_id DESC")->where($where_ands)->select();
		$users_obj = D("Users");
		$users_data=$users_obj->field("id,user_login,role_id")->where("user_status=1")->select();
		$users=array();
		foreach ($users_data as $u){
			$users[$u['id']]=$u;
		}
		$this->assign("users",$users);
		$this->assign("Page", $page->show('Admin'));
		$this->assign("current_page",$page->GetCurrentPage());
		unset($_GET[C('VAR_URL_PARAMS')]);
		$this->assign("formget",$_GET);
		$this->assign("goods",$goods);
	}
	
	private function _getTree(){
		$term_id=empty($_REQUEST['term'])?0:intval($_REQUEST['term']);
		$result = $this->terms_obj->where("taxonomy like 'goods'")->order(array("listorder"=>"asc"))->select();
		
		$tree = new Tree();
		$tree->icon = array('&nbsp;&nbsp;&nbsp;│ ', '&nbsp;&nbsp;&nbsp;├─ ', '&nbsp;&nbsp;&nbsp;└─ ');
		$tree->nbsp = '&nbsp;&nbsp;&nbsp;';
		foreach ($result as $r) {
			$r['str_manage'] = '<a href="' . U("AdminTerm/add", array("parent" => $r['term_id'])) . '">添加子类</a> | <a href="' . U("AdminTerm/edit", array("id" => $r['term_id'])) . '">修改</a> | <a class="J_ajax_del" href="' . U("AdminTerm/delete", array("id" => $r['term_id'])) . '">删除</a> ';
			$r['visit'] = "<a href='#'>访问</a>";
			$r['taxonomys'] = $this->taxonomys[$r['taxonomy']];
			$r['id']=$r['term_id'];
			$r['parentid']=$r['parent'];
			$r['selected']=$term_id==$r['term_id']?"selected":"";
			$array[] = $r;
		}
		
		$tree->init($array);
		$str="<option value='\$id' \$selected>\$spacer\$name</option>";
		$taxonomys = $tree->get_tree(0, $str);
		$this->assign("taxonomys", $taxonomys);
	}
	
	function delete(){
		if(isset($_GET['goods_id'])){
			$goods_id = intval(I("get.goods_id"));
			if ($this->goods_obj->where("goods_id=$goods_id")->delete()) {
				$this->success("删除成功！");
			} else {
				$this->error("删除失败！");
			}
		}
		if(isset($_POST['ids'])){
			$goods_ids=join(",",$_POST['ids']);
			if ($this->goods_obj->where("goods_id in ($goods_ids)")->delete()) {
				$this->success("删除成功！");
			} else {
				$this->error("删除失败！");
			}
		}
	}
	
	
	function move(){
		if(IS_POST){
			if(isset($_GET['ids']) && isset($_POST['term_id'])){
				$goods_ids=$_GET['ids'];
				if ( $this->goods_obj->where("goods_obj in ($goods_ids)")->save($_POST)) {
					$this->success("移动成功！");
				} else {
					$this->error("移动失败！");
				}
			}
		}else{
			$parentid = intval(I("get.parent"));
			$tree = new PathTree();
			$tree->icon = array('&nbsp;&nbsp;&nbsp;│ ', '&nbsp;&nbsp;&nbsp;├─ ', '&nbsp;&nbsp;&nbsp;└─ ');
			$tree->nbsp = '---';
			$result =$this->terms_obj->order(array("path"=>"asc"))->select();
			$tree->init($result);
			$tree=$tree->get_tree();
			$this->assign("terms",$tree);
			
			$this->display();
		}
	}
	
	//排序
	public function listorders() {
		$status = parent::_listorders($this->goods_obj);
		if ($status) {
			$this->success("排序更新成功！");
		} else {
			$this->error("排序更新失败！");
		}
	}
	
	function recyclebin(){
		$this->_lists(0);
		$this->_getTree();
		$this->display();
	}
	
	function clean(){
		if(isset($_POST['ids'])){
			$ids = implode(",", $_POST['ids']);
			$tids= implode(",", array_keys($_POST['ids']));
			$data=array("goods_status"=>"0");
			$status=$this->terms_relationship->where("tid in ($tids)")->delete();
			if($status!==false){
				$status=$this->goods_obj->where("id in ($ids)")->delete();
			}
			
			if ($status!==false) {
				$this->success("删除成功！");
			} else {
				$this->error("删除失败！");
			}
		}else{
			if(isset($_GET['id'])){
				$id = intval(I("get.id"));
				$tid = intval(I("get.tid"));
				$status=$this->terms_relationship->where("tid = $tid")->delete();
				if($status!==false){
					$status=$this->goods_obj->where("id=$id")->delete();
				}
				if ($status!==false) {
					$this->success("删除成功！");
				} else {
					$this->error("删除失败！");
				}
			}
		}
	}
	
}