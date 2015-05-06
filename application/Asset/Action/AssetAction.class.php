<?php

/**
 * 附件上传
 */
class AssetAction extends AdminbaseAction {


    function _initialize() {
       import('CloudUploadFile');
        //默认图片类型
        $this->imgext = array('jpg', 'gif', 'png', 'bmp', 'jpeg');
        //当前登陆用户名 0 表示游客
    }

    /**
     * swfupload 上传 
     */
    public function swfupload() {
        if (IS_POST) {
			
            //上传处理类
            $config=array(
				'allowExts' => array('jpg','gif','png'),
				'savePath' => './'. C("UPLOADPATH"),
				'maxSize' => 11048576,
				'saveRule' => 'uniqid',
			);
			$upload = new UploadFile($config);
            
            //开始上传
            if ($upload->upload()) {
                //上传成功
                $info = $upload->getUploadFileInfo();
                //写入附件数据库信息
				echo "1," . C("TMPL_PARSE_STRING.__UPLOAD__").$info[0]['savename'].",".'1,'.$info[0]['name'];
				exit;
            } else {
                //上传失败，返回错误
                exit("0," . $upload->getErrorMsg());
            }
        } else {
            $this->display();
        }
    }

}

?>
