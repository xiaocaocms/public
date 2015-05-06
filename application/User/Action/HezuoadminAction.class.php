<?php
/**
 * 专场管理
 */
class HezuoadminAction extends AdminbaseAction {
    public function __construct() {
        parent::__construct();
    }

    public function _initialize() {
        parent::_initialize();
        $this->cateDB = new HezuoModel;
        $this->db = M('categorys');
    }
    public function index(){
        exit;
    }
    public function cateList(){
        $catelist = $this->cateDB->getCateList();
        $this->assign('catelist',$catelist);
        $this->display();
    }
    public function addCate(){
        $this->display();
    }
    public function editCate(){
        $where['id'] = intval($_GET['id']);
        $category = M('categorys')->where($where)->find();
        $this->assign('category',$category);
        $this->display();
    }
    public function submitAddCate(){
        if(IS_POST){
            $_POST['ctime'] = time();
            if($this->db->create()){
                if($this->db->add()!==false){
                    $json['status'] = 1;
                    $json['info'] = "添加成功";
                }else{
                    $json['status'] = 0;
                    $json['info'] = "添加失败";
                }
            }
            $this->ajaxReturn($json);
        }
    }
    public function submitEditCate(){
        if(IS_POST){
            $_POST['ctime'] = time();
            if($this->db->create()){
                if($this->db->save($_POST)!==false){
                    $json['status'] = 1;
                    $json['info'] = "编辑成功";
                }else{
                    $json['status'] = 0;
                    $json['info'] = "编辑失败";
                }
            }
            $this->ajaxReturn($json);
        }
    }
}
?>
