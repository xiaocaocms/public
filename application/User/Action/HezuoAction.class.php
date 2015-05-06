<?php

/**
 * 商家产品报名系统
 */
class HezuoAction extends HomeBaseAction {
    //首页
    public function __construct() {
        parent::__construct();
        $this->cateModel = new HezuoModel;
    }
    public function index() {
        $home = M('shop')->where("uid={$this->user['id']}")->find();
        $order = 'id DESC';
        $where['status'] = 1;
        $cateList = $this->cateModel->getCateList($where,$order);
        $this->assign('cateList',$cateList);
        $this->display();
    }
    
    //活动专场详情页
    public function detail(){
        $where['id'] = intval($_GET['id']);
        $where['status'] = 1;
        $detail = M('categorys')->where($where)->find();
        $this->assign('detail',$detail);
        $this->display();   
    }
    //报名链接提交页面
    public function apply(){
        $this->check_login();
        $this->check_user();
        $cid = intval($_GET['id']);
        $cateName = M('categorys')->where("id=".$cid)->getField("cateName");
        $home = M('shop')->where("uid={$this->user['id']}")->find();
        $this->assign('home',$home);
        $this->assign('cateName',$cateName);
        $this->display();
    }
    
    //提交商品报名
    public function submitApply(){
        $this->check_login();
        $this->check_user();
        $num = M('shop')->where("uid='".$this->user['id']."'")->find();
        if($num['allNum']<=$num['useNum']) $this->error('剩余报名次数不足，无法报名');
        if(IS_POST){
            $is_auth = M('shop')->where("uid='".$this->user['id']."'")->getField('userAuth');
            if(!$is_auth) $this->error('请完成身份认证，才可报名商品',U('User/hezuo/userAuth'));
            $goodsUrl = filtStr($_POST['goods_url']);
            if(!$goodsUrl) $this->error('请填写商品链接');
            $goodsInfo = $this->getGoodsInfo($goodsUrl);
            if($goodsInfo){
                $db = M('goods_apply');
                $apply_info['uid'] = $this->user['id'];
                $apply_info['gid'] = $goodsInfo;
                $apply_info['sid'] = M('shop')->where("uid='".$this->user['id']."'")->getField('sid');
                $apply_info['cid'] = intval($_POST['cid']);
                $apply_info['url'] = $goodsUrl;
                $apply_info['ctime'] = $apply_info['etime'] = time();
                if($db->create($apply_info)){
                    if($db->add($apply_info)!==false){
                        M('shop')->where('uid='.$this->user['id'])->setInc('useNum',1);
                        $this->success('商品报名成功,等待审核');
                    }else{
                        $this->error('商品报名失败');
                    }
                }
            }else{
                $this->error('未获取到商品信息，商品报名失败');
            }
        }
    }
    
    public function userAuth(){
        $this->check_login();
        $this->check_user();
        $db = M('shop');
        $where = "uid={$this->user['id']}";
        $is_auth = $db->where($where)->getField('userAuth');
        if($is_auth) $this->error("您已认证成功，请勿重复认证",U('User/hezuo/index'));
        $verifyCode = getRandStr(6);
        $data['uid'] = $this->user['id'];
        $data['uname'] = $this->user['user_login'];
        $data['verifyCode'] = $verifyCode;
        $data['allNum'] = 10;
        $db->create($data);
        if($db->where($where)->count()){
            $db->where($where)->save($data);
        }else{
            $db->add($data);  
        }
        $this->assign("verifyCode",$verifyCode);
        $this->display();
    }
    public function submitShopAuth(){
        $this->check_login();
        $this->check_user();
        $shopInfo['storeName'] = filtStr($_POST['storeName']);
        $shopInfo['storeWW'] = filtStr($_POST['storeWW']);
        $shopInfo['storeType'] = filtStr($_POST['storeType']);
        $shopInfo['goodsType'] = filtStr($_POST['goodsType']);
        $shopInfo['storeUrl'] = filtStr($_POST['storeUrl']);
        $data['shopInfo'] = serialize($shopInfo);
        if($this->checkGoodsVerifyCode($shopInfo['storeUrl'],filtStr($_POST['goodsUrl']))){
            $db = M('shop');
            $where['uid'] = $this->user['id'];
            $data['userAuth'] = 1;
            $data['ctime'] = time();
            $data['status'] = 1;
            $data['verifyCode'] = "";
            if($db->create($data)){
                if($db->where($where)->save($data)!==false){
                    $this->success('认证成功',U('User/hezuo/index'));
                }else{
                    $this->error('认证失败');
                }
            }
        }else{
            $this->error('认证失败');
        }
        
    }
    
    public function home(){
        $this->check_login();
        $this->check_user();
        $home = M('shop')->where("uid={$this->user['id']}")->find();
        $home['mobile'] = checkIsMobile($home['mobile'])?$home['mobile']:"";
        $home['email'] = checkIsEmail($home['email'])?$home['email']:"";
        if(!$home) $this->error('请完成身份认证',U('User/hezuo/userAuth'));
        $home['shopInfo'] = unserialize($home['shopInfo']);
        $this->assign('home',$home);
        $this->display();
    }
    
    public function goods(){
        $this->check_login();
        $this->check_user();
        $ApplyGoodsModel = D("Storehome/ApplyGoods");
        $where = "a.uid=".$this->user['id'];
        $where_count = "uid=".$this->user['id'];
        if(isset($_REQUEST['state']) && $_REQUEST['state']!=""){
            $where .= " AND a.state=".filtStr($_REQUEST['state']);
            $where_count .=" AND state=".filtStr($_REQUEST['state']);
        }
        if(isset($_REQUEST['cid']) && $_REQUEST['cid']!=""){
            $where .= " AND a.cid=".intval($_REQUEST['cid']);
            $where_count .= " AND cid=".intval($_REQUEST['cid']);
        }
        if(isset($_REQUEST['url']) && $_REQUEST['url']!=""){
            $where .= " AND a.url like '%".filtStr($_REQUEST['url'])."%'";
            $where_count .= " AND url like '%".filtStr($_REQUEST['url'])."%'";
        }
        $count = M('goods_apply')->where($where_count)->count();
        $page = new Page($count);
        $limit = $page->firstRow.",".$page->listRows;
        $list = $ApplyGoodsModel->getApplyGoodsList($where,$order,$limit);
        $cateList = M('categorys')->where('status=1')->select();
        $this->assign('page',$page->show());
        $this->assign("goodsList",$list);
        $this->assign("cateList",$cateList);
        $this->display();
    }
    public function editShopInfo(){
        $this->check_login();
        $this->check_user();
        $shopInfo = unserialize(M('shop')->where("uid={$this->user['id']}")->getField('shopInfo'));
        $this->assign('shopInfo',$shopInfo);
        $this->display();
    }
    public function subEditShopInfo(){
        $this->check_login();
        $this->check_user();
        if(IS_POST){
            $shopInfo['storeName'] = filtStr($_POST['storeName']);
            $shopInfo['storeWW'] = filtStr($_POST['storeWW']);
            $shopInfo['storeType'] = filtStr($_POST['storeType']);
            $shopInfo['goodsType'] = filtStr($_POST['goodsType']);
            $shopInfo['storeUrl'] = filtStr($_POST['storeUrl']);
            $data['shopInfo'] = serialize($shopInfo);
            $db = M('shop');
            if($db->create($data)){
                if($db->where("uid={$this->user['id']}")->save($data)!==false){
                    $this->success('店铺信息修改成功');
                }else{
                    $this->error('修改失败');
                }
            }
        }
    }
    public function mobileVerify(){
        $this->check_login();
        $this->check_user();
        $this->display();
    }
    public function emailVerify(){
        $this->check_login();
        $this->check_user();
        $this->display();
    }
    public function otherVerify(){
        $this->check_login();
        $this->check_user();
        if(IS_POST){
            $db = M('shop');
            $way = filtStr($_POST['way']);
            $target = filtStr($_POST['target']);
            $where = "uid=".$this->user['id'];
            $save[$way]=$target;
            $codeInDb = $db->where($where)->getField($way);
            $submitCode = filtStr($_POST['verifyCode']);
            if(strlen($submitCode)!==6) $this->error('验证码长度不合法');
            if($way=='mobile' && !checkIsMobile(filtStr($_POST['target']))){
                $this->error("手机号格式错误");
            }else if($way=='email' && !checkIsEmail(filtStr($_POST['target']))){
                $this->error('邮箱格式错误');
            }else if(!in_array($way,array('mobile','email'))){
                $this->error('非法提交');
            }
            if($submitCode==$codeInDb){
                $db->where($where)->save($save);
                $this->success('认证成功');
            }else{
                $db->where($where)->setField($way,'');
                $this->error('验证码错误，请重新获取'); 
            }
        }
    }
    public function getVerifyCode(){
        $this->check_login();
        $this->check_user();
        $way = filtStr($_POST['way']);
        $target = filtStr($_POST['target']);
        $db = M('shop');
        $where = 'uid='.$this->user['id'];
        if(!$target || !$way){
            $data['info'] = '填写信息不全';
            $this->ajaxReturn ($data);
        }
        $verifyCode = getRandStr(6);
        $save[$way] = $verifyCode;
        $msg = '您的验证码:'.$verifyCode;
        if($way=='mobile'){
            if(!checkIsMobile($target)){
                $data['info'] = '手机号格式错误';
                $this->ajaxReturn ($data);
            }
            if(sendSms($msg,$target,$setting)){
                $db->where($where)->save($save);
                $data['info']='验证码发送成功';
            }else{
                $data['info']='验证码发送失败';
            }
        }else if($way=='email'){
            if(!checkIsEmail($target)){
                $data['info'] = '邮箱格式错误';
                $this->ajaxReturn ($data);
            }
            $send_result=sp_send_email($target, "邮箱认证", $msg);
            if($send_result['error']){
                $data['info']='验证码发送失败';
            }else{
                $data['info']='验证码发送成功';
            }
        }else{
            $data['info'] = "非法请求";
        }
        M('shop')->where('uid='.$this->user['id'])->setField($way,$verifyCode);
        $this->ajaxReturn($data);
    }
    //返回 goods_id
    private function getGoodsInfo($goodsUrl){
        $this->check_login();
        $this->check_user();
        $caiji_model=D("Caiji");
        $goods=$goods_info=array();
        $goods_info=$caiji_model->caiji_info($goodsUrl);
        $goods['goods_url']=$goodsUrl;
        $goods['goods_name']=strip_tags($goods_info['title']);
        $goods['goods_type']=$goods_info['type'];
        $goods['seller_name']=$goods_info['store_name'];
        $goods['goods_price']=$goods_info['price'];
        $goods['goods_salesnum']=rand(20,3000);
        $goods['click_rate']=rand(40,10000);
        $goods['pic_url']=$goods_info['img'];
        $goods['goods_body']=$goods_info['content'];
        $goods_db=D("Goods");
        $count = $goods_db->where(" goods_url LIKE '".$goods['goods_url']."'")->count();
        if($count > 0){
            $goods['update_time']=time();
            return $goods_db->where(" goods_url LIKE '".$goods['goods_url']."'")->save($goods);
        }else{
            $goods['add_time']=time();
            return $goods_db->add($goods);
        }
    }
    //验证商品验证码
    private function checkGoodsVerifyCode($storeUrl,$goodsUrl){
        $this->check_login();
        $this->check_user();
        $where = "uid={$this->user['id']}";
        $verifyCode = M('shop')->where($where)->getField("verifyCode");
        $goodsTitle = $this->getGoodsTitle($storeUrl,$goodsUrl);
        return stripos($goodsTitle,$verifyCode)?true:false;
    }
    
    //返回商品标题
    private function getGoodsTitle($storeUrl,$goodsUrl){//判断商品是否属于该店铺，并抓取商品标题
        $this->check_login();
        $this->check_user();
        $caiji_model=D("Caiji");
        $goods_info=$caiji_model->caiji_info($goodsUrl);
        return $goods_info['title'];
    }
}
?>
