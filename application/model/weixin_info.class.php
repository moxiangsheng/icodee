<?php

!defined('IN_ASK2') && exit('Access Denied');
class weixin_infomodel {

    var $db;
    var $base;
  

    function weixin_infomodel(&$base) {
        $this->base = $base;
        $this->db = $base->db;
    }

 
function get() {
         $wxinfo =  $this->db->fetch_first("SELECT * FROM " . DB_TABLEPRE . "weixin_info limit 0,1");
        
       
        return $wxinfo;
    }
    function getid($id){
    	
    	  $model=  $this->db->fetch_first("SELECT * FROM " . DB_TABLEPRE . "weixin_keywords WHERE id=$id");
        
       
        return $model;
    }
    function add($name) {
    	
    	  $this->db->query("DELETE FROM `" . DB_TABLEPRE . "weixin_info` ");
    	  	
        $this->db->query('INSERT INTO ' . DB_TABLEPRE . "weixin_info(msg) values ('$name')");
        return $this->db->insert_id();
    }
    function addkeywords($name,$content,$type,$showtype=0){
    	 $this->db->query('REPLACE INTO `'.DB_TABLEPRE."weixin_keywords`(`txtname`,`txtcontent`,`txttype`,`showtype`) values ('$name','$content','$type',$showtype)");
        return $this->db->insert_id();
    }
 function addtuwen($name,$content,$type,$showtype,$title,$neirong,$fmtu,$wburl,$aid){
    	 $this->db->query('REPLACE INTO `'.DB_TABLEPRE."weixin_keywords`(`txtname`,`txtcontent`,`txttype`,`showtype`,`title`,`content`,`fmtu`,`wburl`,`wzid`) values ('$name','$content','$type',$showtype,'$title','$neirong','$fmtu','$wburl','$aid')");
        return $this->db->insert_id();
    }
    
    function getkeywords($start=0, $limit=1000){
    	       $modellist = array();
        $query = $this->db->query("SELECT * FROM " . DB_TABLEPRE . "weixin_keywords where title='' or title is null order by id desc LIMIT $start,$limit");
        while ($model = $this->db->fetch_array($query)) {
           
            $modellist[] = $model;
        }
        return $modellist;
    }
  function gettuwenkeywords($start=0, $limit=1000){
    	       $modellist = array();
        $query = $this->db->query("SELECT * FROM " . DB_TABLEPRE . "weixin_keywords where title!='' order by id desc LIMIT $start,$limit");
        while ($model = $this->db->fetch_array($query)) {
           
            $modellist[] = $model;
        }
        return $modellist;
    }
 function update($name,$content='',$type='',$showtype='',$id) {
        $this->db->query('UPDATE  `'.DB_TABLEPRE."weixin_keywords`  set `txtname`='$name',`txtcontent`='$content',`txttype`='$type',`showtype`='$showtype' where id=$id ");
    }

    function remove_by_id($ids) {
        $this->db->query("DELETE FROM `".DB_TABLEPRE."weixin_keywords` WHERE `id` IN ($ids)");
        
    }
    function addmenu($menuname,$menupid,$menutype,$menukeyword,$menulink){
    	 $this->db->query('REPLACE INTO `'.DB_TABLEPRE."weixin_menu`(`menu_name`,`menu_pid`,`menu_type`,`menu_keyword`,`menu_link`) values ('$menuname',$menupid,'$menutype','$menukeyword','$menulink')");
        return $this->db->insert_id();
    }
     function removemenu_by_id($id) {
        $this->db->query("DELETE FROM `".DB_TABLEPRE."weixin_menu` WHERE `id`=$id");
    }
    function get_parentmenu($start=0, $limit=1000){
    	$modellist = array();
        $query = $this->db->query("SELECT * FROM " . DB_TABLEPRE . "weixin_menu where menu_pid=0 order by id desc LIMIT $start,$limit");
        while ($model = $this->db->fetch_array($query)) {
           
            $modellist[] = $model;
        }
        return $modellist;
    }
    function get_menulist($start=0, $limit=1000){
         $categorylist = array();
        $query = $this->db->query("select * from " . DB_TABLEPRE . "weixin_menu where menu_pid=0 order by id desc");
        while ($category1 = $this->db->fetch_array($query)) {
            $query2 = $this->db->query("select * from " . DB_TABLEPRE . "weixin_menu where menu_pid=$category1[id]  order by id desc");
            $category1['sublist'] = array();
            while ($category2 = $this->db->fetch_array($query2)) {
                $category1['sublist'][] = $category2;
            }
            $categorylist[] = $category1;
        }
        return $categorylist;
    }
    //更新粉丝表------
    //f_代表 weixin_follower表的简称
    //获取一条粉丝记录
function f_get($openid) {
         $model =  $this->db->fetch_first("SELECT * FROM " . DB_TABLEPRE . "weixin_follower where openid='$openid' limit 0,1");
        
       
        return $model;
    }
    
    function f_update($model){
    		$model['sex']=$model['sex']=='1'? '男':'女';
    			$model['privilege']=json_encode($model['privilege']);
    			$sql= "UPDATE  `".DB_TABLEPRE."weixin_follower`  set `nickname`='".$model['nickname']."',`sex`='".$model['sex']."',`language`='".$model['language']."',`city`='".$model['city']."',`province`='".$model['province']."',`country`='".$model['country']."',`headimgurl`='".$model['headimgurl']."',`privilege`='".$model['privilege']."',`unionid`='".$model['unionid']."' where `openid`='".$model['openid']."' ";
    	return $this->db->query($sql);
    }
 function f_list( $start=0, $limit=20) {
        $modellist = array();
        $query = $this->db->query("SELECT * FROM " . DB_TABLEPRE . "weixin_follower  order by id asc LIMIT $start,$limit");
        while ($model = $this->db->fetch_array($query)) {
       
            $modellist[] = $model;
        }
        return $modellist;
    }
    function f_insert($model){
    	$openid=$model['openid'];
    	$nickname=$model['nickname'];
    	$sex=$model['sex']=='1'? '男':'女';
    	$language=$model['language'];
    	$city=$model['city'];
    	$province=$model['province'];
    	$country=$model['country'];
    		$headimgurl=$model['headimgurl'];
    			$privilege=json_encode($model['privilege']);
    				$unionid=$model['unionid'];
    	 $this->db->query("INSERT INTO " . DB_TABLEPRE . "weixin_follower SET openid='$openid',sex='$sex',language='$language',nickname='$nickname',city='$city',province='$province',country='$country',headimgurl='$headimgurl',privilege='$privilege',unionid='$unionid'");
        $id = $this->db->insert_id();
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //更新粉丝表-----------
}

?>
