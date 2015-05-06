<?php
/**
 * 采集
 */
class IndexadminAction extends AdminbaseAction {
    protected $goods_obj;
    protected $terms_relationship;
    protected $terms_obj;
    
    function _initialize() {
        parent::_initialize();
        $this->goods_obj = D("Goods");
        $this->terms_obj = D("Terms");
        $this->terms_relationship = D("TermRelationships");
    }
    public function index(){
        $list_json=$keyword='';
        $list=array();
        $caiji_model=D("Caiji");
        $search['keyword']=I("post.q");
        $search['cid']=I("post.cid")?I("post.cid"):'';
        $search['order']=I("post.order")?I("post.order"):'';
        $search['page']=I("post.page")?I("post.page"):1;
        $this->assign("search",$search);
        //获取阿里妈妈列表页json数据
        if(empty($search['keyword'])) $search['keyword']="女装";
        $list_json=$caiji_model->cookies_caiji($search['keyword'],$search['cid'],$search['order'],$search['page']);
        if($list_json){
            $list_obj=json_decode($list_json);
            $list=$this->object_array($list_obj);
            $this->assign("list",$list);
            $this->display(":index");
        }else{
            $cookies=$caiji_model->cookies_get();
            $this->assign("cookies",$cookies);
            $this->display(":setcookies");
        }
    }
    
    public function cookies_pl(){
        set_time_limit(0);
        $list_json=$keyword='';
        $list=array();
        $caiji_model=D("Caiji");
        $search['keyword']=I("get.q")?I("get.q"):'女装';
        $search['cid']=I("get.cid")?I("get.cid"):'';
        $search['order']=I("get.order")?I("get.order"):'';
        $search['page']=I("get.p")?I("get.p"):1;
        $search['pages']=intval(I("get.pages")) > 0?intval(I("get.pages")):1;
        $this->assign("search",$search);

        $terms=array();
        $terms['name']=$search['keyword'];
        $terms['taxonomy']='goods';
        $terms['list_tpl']="list_goods";
        $terms['one_tpl']="goods";
        $terms['parent']=3;

        //根据关键词建立分类
        $count = $this->terms_obj->where(" name LIKE '".$search['keyword']."'")->count();
        if($count > 0){
            $this->terms_obj->where(" name LIKE '".$search['keyword']."'")->save($terms);
            $term=$this->terms_obj->where(" name LIKE '".$search['keyword']."'")->find();
            $term_id=$term['term_id'];
        }else{
            $term_id=$this->terms_obj->add($terms);
        }
        if($search['page'] > $search['pages']){
             echo "<p style='color:green'>全部采集完毕</p>";
             exit;
        }
        $caiji_model=D("Caiji");
        echo "<p style='color:green'>========================</p>";
        echo "<p style='color:green'>正在导入第".$search['page']."页</p>";
        echo "<p style='color:green'>========================</p>";
        $list_json=$caiji_model->cookies_caiji($search['keyword'],$search['cid'],$search['order'],$search['page']);
        if($list_json){
            $list_obj=json_decode($list_json);
            $list=$this->object_array($list_obj);
            $num=1;
            foreach ($list['data']['pagelist'] as $key => $value) {
                $value['term_id']=$term_id;
                $value['term_name']=$search['keyword'];
                ob_flush();
                $goods_id=$caiji_model->plruku_goods($value);
                if($goods_id>0){
                    echo "<p style='color:green'>".$key.".".$value['title']."---------采集成功</p>";
                }else{
                    echo "<p style='color:red;'>".$key.".".$value['title']."---------采集失败</p>";
                }
                flush();
                sleep(1);
                $num++;
                if($num >40){
                    echo "<meta http-equiv=\"refresh\" content=\"1;url=index.php?g=caiji&m=indexadmin&a=cookies_pl&q=".$search['keyword']."&cid=".$search['cid']."&order=".$search['order']."&num=".$num."&p=".($search['page']+1)."\" />";
                    exit();
                }
            }
        }else{
            echo "<p style='color:red'>cookies失效，请重新获取cookies</p>";exit;
        }
    }
    public function setcookies()
    {
        $caiji_model=D("Caiji");
        $cookies=I("post.cookies");
        $caiji_model->cookies_set($cookies);
        $this->success("修改成功！", U("indexadmin/index"));
    }
    public function caijixinxi(){
        $caiji_model=D("Caiji");
        $item=I("post.item");
        $goods_id=$caiji_model->ruku_goods($item);
        if($goods_id>0){
            echo "success";
        }
    }

    //幻化为数组
    public function object_array(&$object) {
        $object = json_decode(json_encode($object),true);
        return $object;
    }
}
?>
