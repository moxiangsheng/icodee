<?php

!defined('IN_ASK2') && exit('Access Denied');
class weixin_settingmodel {

    var $db;
    var $base;
  

    function weixin_settingmodel(&$base) {
        $this->base = $base;
        $this->db = $base->db;
    }

   function get() {
         $wxsetting =  $this->db->fetch_first("SELECT * FROM " . DB_TABLEPRE . "weixin_setting limit 0,1");
        
       
        return $wxsetting;
    }

    function add($wxname,$wxid,$weixin,$appid,$appsecret,$winxintype) {
    	
    	  $this->db->query("DELETE FROM `" . DB_TABLEPRE . "weixin_setting` ");
    	  
    	//  echo "INSERT INTO " . DB_TABLEPRE . "weixin_setting(wxname,wxid,weixin,appid,appsecret,winxintype) values ('$wxname','$wxid','$weixin','$appid','$appsecret','$winxintype')";
    	//  exit();
       $this->db->query("INSERT INTO " . DB_TABLEPRE . "weixin_setting(wxname,wxid,weixin,appid,appsecret,winxintype) values ('$wxname','$wxid','$weixin','$appid','$appsecret','$winxintype')");
        return $this->db->insert_id();
    }

}

?>
