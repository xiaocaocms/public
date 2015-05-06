<?php
class HezuoModel extends Model{
    public function __construct($name = '') {
        parent::__construct($name);
    }
    public function getCateList($where="",$order="",$limit=""){
        $pre = C("DB_PREFIX");
        return M()->table("{$pre}categorys")->where($where)->order($order)->limit($limit)->select();
    }
}