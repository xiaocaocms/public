<?php

/**
 * 商品内页
 */
class GoodsAction extends HomeBaseAction {
    //文章内页
    public function index() {
    	$id=intval($_GET['id']);
    	$result=sp_sql_goods('goods_id:'.$id.";",'');
        $goods=$result[0];
        if(empty($goods['content'])){
            if(!empty($goods['click_url'])){
                header("Location: ".$goods['click_url']);
            }
        }
    	$termid=$goods['term_id'];
    	$term_obj= D("Terms");
    	$term=$term_obj->where("term_id='$termid'")->find();
    	
    	$goods_id=$goods['goods_id'];
    	
    	$should_change_goods_hits=sp_check_user_action("goods$goods_id",1,true);
    	if($should_change_goods_hits){
    		$goods_model=M("goods");
    		$goods_model->save(array("id"=>$goods_id,"goods_hits"=>array("exp","goods_hits+1")));
    	}
        //同类热卖
        $list=sp_sql_goods('cid:'.$goods['term_id'].";limit:5;order:listorder DESC,total_num DESC;field:goods_id,goods_name,goods_price,click_url,pic_url;",'');
    	$this->assign('list',$list);
    	$smeta=json_decode($goods['smeta'],true);
    	$content_data=sp_content_page($goods['goods_body']);
    	$goods['goods_body']=$content_data['content'];
    	$this->assign("page",$content_data['page']);
    	$this->assign($goods);
    	$this->assign("smeta",$smeta);
    	$this->assign("term",$term);
    	$this->assign("goods_id",$goods_id);
    	$tplname=$term["one_tpl"];
    	$tplname=sp_get_apphome_tpl($tplname, "goods");
    	$this->display(":$tplname");
    }

    public function goto()
    {
        $id=intval($_GET['id']);
        $result=sp_sql_goods('goods_id:'.$id.";",'');
        $goods=$result[0];
        if(!empty($goods['click_url'])){
            header("Location: ".$goods['click_url']);
        }else{
            preg_match('/id=(\d+)/', $goods['goods_url'], $u);
            $num_iid=$u[1];
            $this->assign("num_iid",$num_iid);
            $this->display(":goto");
        }
    }
    
    public function do_like(){
    	$this->check_login();
    	
    	$id=intval($_GET['id']);//goods表中id
    	
    	$goods_model=M("goods");
    	
    	$can_like=sp_check_user_action("goods$id",1);
    	
    	if($can_like){
    		$goods_model->save(array("id"=>$id,"goods_like"=>array("exp","goods_like+1")));
    		$this->success("赞好啦！");
    	}else{
    		$this->error("您已赞过啦！");
    	}
    	
    }
}
?>
