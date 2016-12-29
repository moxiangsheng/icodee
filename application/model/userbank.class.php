<?php

!defined('IN_ASK2') && exit('Access Denied');

class userbankmodel {

    var $db;
    var $base;

    function userbankmodel(&$base) {
        $this->base = $base;
        $this->db = $base->db;
    }
    function getlistbytouid($touid,$start,$limit){
    	$recargelist = array();
        $query = $this->db->query("SELECT * FROM " . DB_TABLEPRE . "userbank where touid=$touid ORDER BY time DESC LIMIT $start,$limit");
        while ($money = $this->db->fetch_array($query)) {
        	$fromuser=$this->getuser($money['fromuid']);
        	
            $money['fromusername'] =$fromuser['username'];
             $money['format_time']=tdate($money['time']);
            
            $recargelist[] = $money;
        }
        return $recargelist;
    }
    function getuser($uid){
    	  $user = $this->db->fetch_first("SELECT * FROM " . DB_TABLEPRE . "user WHERE uid='$uid'");
    	  return $user;
    }
    function getsummoneybytouid($touid){
    	
    	$mrmb = $this->db->fetch_first("SELECT sum(money) as rmb FROM " . DB_TABLEPRE . "userbank WHERE touid=$touid ");
        return $mrmb;
    	
    }
}