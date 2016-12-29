<?php

!defined('IN_ASK2') && exit('Access Denied');

class admin_weixincontrol extends base {

    function admin_weixincontrol(& $get, & $post) {
        $this->base($get, $post);
         $this->load('weixin_info');
          $this->load('weixin_setting');
            $this->load('setting');
    }
       function onsetting() {
      
        if (isset($this->post['submit'])) {
        	
        	$wxname=strip_tags($this->post['wxname']);
        	$wxid=strip_tags($this->post['wxid']);
        	$weixin=strip_tags($this->post['weixin']);
        	$appid=strip_tags($this->post['appid']);
        	$appsecret=strip_tags($this->post['appsecret']);
        	$winxintype=strip_tags($this->post['winxintype']);
        	$id= $_ENV['weixin_setting']->add($wxname,$wxid,$weixin,$appid,$appsecret,$winxintype);
        	
        	if($id>0){
        		  $message = '公众号设置成功!';
        	}
        }
     $wx=$_ENV['weixin_setting']->get();
     include template('weixin_set', 'admin');
       }
       function ondel(){
     
       	  if (isset($this->post['id'])) {
       	  	 $ids = implode(",", $this->post['id']);
       	  	
       	  	$_ENV['weixin_info']->remove_by_id($ids);
       	  	 $message = '删除成功!';
       	  }else{
       	  	$message = '您没选择需要删除的像!';
       	  }
       	  	 $keywordlist=$_ENV['weixin_info']->getkeywords();
       	 
       	 
       	 include template('weixin_keywords', 'admin');
       }
  function ondeltuwen(){
     
       	  if (isset($this->post['id'])) {
       	  	 $ids = implode(",", $this->post['id']);
       	  	
       	  	 $_array_id=$this->post['id'];
       	  	
       	  	 $count=count($this->post['id']);
       	  	
       	  	 $_tmp_tid=Array();
       	  	 $this->load("topic");
       	  	 for($i=0;$i<$count;$i++){
       	  	
       	  	 	$model=$_ENV['weixin_info']->getid($_array_id[$i]);
       	  	   
       	  	    unlink(ASK2_ROOT.$model['fmtu']);
       	  	     array_push($_tmp_tid, $model['wzid']);
       	  	 }
       	  	$_str_tid=implode(',', $_tmp_tid);
       	  	 
       	  		$_ENV['topic']->remove($_str_tid);
       	  	$_ENV['weixin_info']->remove_by_id($ids);
       	  	 $message = '删除成功!';
       	  }else{
       	  	$message = '您没选择需要删除的像!';
       	  }
       	  	 $keywordlist=$_ENV['weixin_info']->gettuwenkeywords();
       	 
       	 $this->load('category');
       	   $categoryjs = $_ENV['category']->get_js();
       	 include template('weixin_tuwen', 'admin');
       }
       
       function ongetuserinfo(){
       	$wx=$this->fromcache('cweixin');
       	  	 if(empty($wx['appsecret'])||empty($wx['appid'])){
       	 	exit("公众号配置中 appid和appsecret没有填写，创建菜单必须认证公众号!");
       	 }
       	       
       	        $openid=strip_tags($this->post['openid']);
       	        $appid = $wx['appid'];
                $appsecret = $wx['appsecret'];
                 	 require ASK2_ROOT . '/lib/php/jssdk.php';
          $model = new JSSDK($appid, $appsecret);
         $userinfo=  $model->get_user_info($openid);
        
       if ($userinfo['openid']) {
                  $model=$_ENV['weixin_info']->f_get($userinfo['openid']);
                  if($model){
                  	$_ENV['weixin_info']->f_update($userinfo);
                  }else{
                  	$_ENV['weixin_info']->f_insert($userinfo);
                  }
                   //打印用户信息
                  exit($userinfo['nickname']."更新成功");
                }else{
                   exit('授权出错,请重新授权!');
                }
       }
       function onaddwelcome(){
       	  if (isset($this->post['submit'])) {
       	  	
       	  	$unword=strip_tags($this->post['unword']);
       		 	   $this->setting['unword'] = $unword;
       		 	 $_ENV['setting']->update($this->setting);
                 
                  
                  
       	  	$wxword=strip_tags($this->post['word']);
       	  
       	  	$id= $_ENV['weixin_info']->add($wxword);
       	  	if($id>0){
        		  $message = '关注回复设置成功!';
        	}
       	  }
       	$wx=$_ENV['weixin_info']->get();
     include template('weixin_welcome', 'admin');
       }
       //获取粉丝数
       function ongetfollowers(){
       	if($this->post['updatefensi']){
       		
       
      
       	 require ASK2_ROOT . '/lib/php/jssdk.php';
       	 
       	  	 $wx=$_ENV['weixin_setting']->get();
       	 
       	 if(empty($wx['appsecret'])||empty($wx['appid'])){
       	 	exit("公众号配置中 appid和appsecret没有填写，创建菜单必须认证公众号!");
       	 }
       	       
       	        
       	        $appid = $wx['appid'];
                $appsecret = $wx['appsecret'];
                
                       $model = new JSSDK($appid, $appsecret);
                      
               $users= $model->getuserlist();
              
                echo  json_encode($users);
                exit();
       		}
       		 
       		   
       		    @$page = max(1, intval($this->get[2]));
        $pagesize = $this->setting['list_default'];
        $startindex = ($page - 1) * $pagesize;
        $rownum = $this->db->fetch_total('weixin_follower');
         $muserlist = $_ENV['weixin_info']->f_list( $startindex, $pagesize);
       
        $departstr = page($rownum, $pagesize, $page, "admin_weixin/getfollowers");
       
               include template('weixin_fensi', 'admin');     
       }
       function onaddtext(){
      
       	  	  if (isset($this->post['btnup'])) {
       
       	  	  		$caozuo=$this->post['caozuo'];
       	  	  		$showtype=$this->post['showtype'];
       	  	  			$systype=$this->post['systype'];
       	  	  	$name=$this->post['txtname'];
       	  	  		$content=$this->post['txtcontent'];
       	  	  		$id=$_ENV['weixin_info']->addkeywords($name,$content,$systype,$showtype);
       	  	  	if($id>0){
        		  $message = '关键词插入成功!';
        	}
       	  	  }
       	 $keywordlist=$_ENV['weixin_info']->getkeywords();
       	 
       	 
       	 include template('weixin_keywords', 'admin');
       }
  function onaddtuwen(){
      
       	  	  if (isset($this->post['btnup'])) {
       
       	  	  	
       	  	  		$caozuo=$this->post['caozuo'];
       	  	  		$showtype=$this->post['showtype'];
       	  	  			$systype=$this->post['systype'];
       	  	  	      $name=$this->post['txtname'];
       	  	  	        $title=$this->post['title'];
       	  	  		$content=$this->post['txtcontent'];
       	  	  		$neirong=$this->post['content'];
       	  	  		$wburl=$this->post['wburl'];
       	  	  			$topicclass=$this->post['topicclass'];
       	  	  	
       	  	   $imgname = strtolower($_FILES['fmtu']['name']);
            if ('' == $title || '' == $content) {
            	 
            	  $this->ondefault('请完整填写专题相关参数!', 'errormsg');
                exit;
               
                
            }
           
            $type = substr(strrchr($imgname, '.'), 1);
            if (!isimage($type)) {
            	
                $this->ondefault('当前图片图片格式不支持，目前仅支持jpg、png格式！', 'errormsg');
                exit;
            }
          
            $_name=random(6, 0) ;
               $upload_tmp_file = ASK2_ROOT . '/data/tmp/topic_fmtu_' . $_name . '.' . $type;
               
                    $filepath = '/data/attach/topic/topic_fmtu_' . $_name . '.' . $type;
                  forcemkdir(ASK2_ROOT . '/data/attach/topic');
                      if (move_uploaded_file($_FILES['fmtu']['tmp_name'], $upload_tmp_file)) {
                            image_resize($upload_tmp_file, ASK2_ROOT . $filepath, 360, 240);
                            if(!strstr($wburl,'http:')){
                            	$this->load("topic");
                              $aid= $_ENV['topic']->addtopic($title, $neirong, $filepath,$this->user['username'],$this->user['uid'],1,$topicclass);
                            	
                            }
                              
                            
                            
                      	$id=$_ENV['weixin_info']->addtuwen($name,$content,$systype,$showtype,$title,$neirong,$filepath,$wburl,$aid);
       	  	  	if($id>0){
        		  $message = '图文添加成功!';
        	}
                      }else{
                      	$message = '图文添加失败!';
                      }
       	  	  		
       	  	  }
       	 $keywordlist=$_ENV['weixin_info']->gettuwenkeywords();
       	 
       	 $this->load('category');
       	   $categoryjs = $_ENV['category']->get_js();
       	 include template('weixin_tuwen', 'admin');
       }
       function onaddnav(){
       		
       	  	
       	  if (isset($this->post['menu_name'])) {
       	     $menu_name=strip_tags($this->post['menu_name']);
       	       $menu_type=strip_tags($this->post['menu_type']);
       	        $menu_pid=intval($this->post['menu_pid']);
       	         $menu_keyword=strip_tags($this->post['menu_keyword']);
       	           $menu_link=strip_tags($this->post['menu_link']);
       	           
       	          $id=$_ENV['weixin_info']->addmenu($menu_name,$menu_pid,$menu_type,$menu_keyword,$menu_link);
       	    	if($id>0){
        		  $message = '操作成功!';
        	}
       	  }
       	   $menulist=$_ENV['weixin_info']->get_parentmenu();//一级菜单
       	    $modellist=$_ENV['weixin_info']->get_menulist();//全部菜单
       	    
       	   
       	  include template('weixin_addnav', 'admin');
       }
       function onsavetoken(){
       	if($this->post['submit']){
       		
       		   	  	$openwxpay=strip_tags($this->post['openwxpay']);
       		 	   $this->setting['openwxpay'] = $openwxpay;
       		 	 $_ENV['setting']->update($this->setting);
       		 	 
       		 	 
       		 	$token=strip_tags($this->post['wxtoken']);
       		 	   $this->setting['wxtoken'] = $token;
       		 	 $_ENV['setting']->update($this->setting);
                  $message = 'Token设置更新成功！';
       		 	
       	}
       
           include template('weixin_set', 'admin');
       }
       function ondelmenu(){
       	
       	      $id=intval($this->get[2]);
       	      if($id>0){
       	        $_ENV['weixin_info']->removemenu_by_id($id);
       	       $message = '操作成功!';
       	      }
       	  
       	         $modellist=$_ENV['weixin_info']->get_menulist();//全部菜单
       	      $menulist=$_ENV['weixin_info']->get_parentmenu();
       		 include template('weixin_addnav', 'admin');
       }
       function onmakemenu(){
       	 $wx=$_ENV['weixin_setting']->get();
       	 
       	 if(empty($wx['appsecret'])||empty($wx['appid'])){
       	 	exit("公众号配置中 appid和appsecret没有填写，创建菜单必须认证公众号!");
       	 }
       	        $modellist=$_ENV['weixin_info']->get_menulist();//全部菜单
       	        
       	        $appid = $wx['appid'];
$appsecret = $wx['appsecret'];
$url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=$appid&secret=$appsecret";

$output = $this->https_request($url);
$jsoninfo = json_decode($output, true);

$access_token = $jsoninfo["access_token"];
       	        
    $jsonmenu =$this->getmenus($modellist);
    
 

//echo $jsonmenu;
$url = "https://api.weixin.qq.com/cgi-bin/menu/create?access_token=".$access_token;
$result = $this->https_request($url, $jsonmenu);

   	   if(strstr($result,'ok')){
   	   	exit("菜单生成成功!");
   	   }else{
   	   
   	   	 	exit("菜单生成失败，请检查微信公众号配置!");
   	   }     
       }
       function getmenus($models){
       
       	$menu='{ "button":[';
       	foreach($models as $key=>$val){
       		$sub=$models[$key]['sublist'];
       		if(isset($sub)&&count($sub)>0){
       			$menu.='{"name":"'.$models[$key]['menu_name'].'",'.'"sub_button":[';
       			$temmenu="";
       			$tmpsubmodels=$models[$key]['sublist'];
       			foreach($tmpsubmodels as $k=>$v){
       			if($tmpsubmodels[$k]['menu_type']=='CLICK'){
       				$temmenu.='{"type":"click","name":"'.$tmpsubmodels[$k]['menu_name'].'","key":"'.$tmpsubmodels[$k]['menu_keyword'].'"},';
       			}
       				if($tmpsubmodels[$k]['menu_type']=='VIEW'){
       				$temmenu.='{"type":"view","name":"'.$tmpsubmodels[$k]['menu_name'].'","url":"'.$tmpsubmodels[$k]['menu_link'].'"},';
       			}
       			}
       			$temmenu=trim($temmenu,',');
       			$menu.=$temmenu.']}';
       		}else{
       			if($models[$key]['menu_type']=='VIEW'){
       				$menu.='{"type":"view","name":"'.$models[$key]['menu_name'].'","url":"'.$models[$key]['menu_link'].'"},';
       			}
       		if($models[$key]['menu_type']=='CLICK'){
       				$menu.='{"type":"click","name":"'.$models[$key]['menu_name'].'","key":"'.$models[$key]['menu_keyword'].'"},';
       			}
       		
       		}
       	}
       		$menu=trim($menu,',');
       	$menu.="]}";
       	$menu=str_replace('"button":[,','"button":[', $menu);
       
       	return $menu;
       }
function https_request($url,$data = null){
    $curl = curl_init();
    curl_setopt($curl, CURLOPT_URL, $url);
    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
    curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
    if (!empty($data)){
        curl_setopt($curl, CURLOPT_POST, 1);
        curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
    }
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
    $output = curl_exec($curl);
    curl_close($curl);
    return $output;
}
}