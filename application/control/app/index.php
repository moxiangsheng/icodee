<?php

!defined('IN_ASK2') && exit('Access Denied');

class app_indexcontrol extends base {

    function app_indexcontrol(& $get, & $post) {
        $this->base($get,$post);
      
    }

    function ondefault() {
      
    }
    function onlist(){
    	exit("5666");
    }

}

?>