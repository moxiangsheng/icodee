<?php

!defined('IN_ASK2') && exit('Access Denied');

class topiccontrol extends base {
var $whitelist;
    function topiccontrol(& $get, & $post) {
        $this->base($get, $post);
        $this->load('topic');
  $this->load('topic_tag');
  
          $this->load('category');
            $this->load('question');
            
            $this->whitelist="getuserarticles,getnewlist,getbycatidanduid";
    }

   
    function onsearch() {
    	

         
        $type="topic";
        $word =urldecode($this->get[2]);
        $word = str_replace(array("\\","'"," ","/","&"),"", $word);
        $word = strip_tags($word);
        $word = htmlspecialchars($word);
        $word = taddslashes($word, 1);
        (!$word) && $this->message("搜索关键词不能为空!", 'BACK');
        $navtitle = $word ;
        @$page = max(1, intval($this->get[4]));
        $pagesize = $this->setting['list_default'];
        $startindex = ($page - 1) * $pagesize;
          $seo_description=$word;
     $seo_keywords= $word;
        $topiclist=null;//定义空文章数组
       $rownum = $_ENV['topic']->rownum_by_tag($word);
   
            $topiclist = $_ENV['topic']->list_by_tag($word, $startindex, $pagesize);
           if($topiclist==null){
           	
           	
               $rownum = $this->db->fetch_total('topic'," title like '%$word%' or describtion like '%$word%' ");
   
            $topiclist = $_ENV['topic']->get_bylikename($word, $startindex, $pagesize);
           }
 
foreach ($topiclist as $key=>$val){
	

	   $taglist = $_ENV['topic_tag']->get_by_aid($val['id']);

	$topiclist[$key]['tags']=$taglist;
        
	
}

        $departstr = page($rownum, $pagesize, $page, "topictag-$word");
        include template('topictag');
    }
    function oncancelhot(){
    	
    	$id=intval($this->get[2]);
    	$_ENV['topic']->updatetopichot($id,'0');
    	$this->message("取消顶置成功!",urlmap('topic/hotlist'));
    }
    function onpushhot(){
    	
    	$id=intval($this->get[2]);
    	$_ENV['topic']->updatetopichot($id,'1');
    	$this->message("推荐到首页成功!",urlmap('topic/hotlist'));
    }
    function onhotlist(){
    	 $navtitle = "最新文章推荐";
        $seo_description= "推荐问答最新文章，图文展示文章内容。";
        $seo_keywords= "问答文章";
        @$page = max(1, intval($this->get[2]));
        $pagesize = $this->setting['list_default'];
        $startindex = ($page - 1) * $pagesize;
        $rownum = $this->db->fetch_total('topic','ispc=1');
  
    	$topiclist= $_ENV['topic']->get_hotlist(1,  $startindex, $pagesize, 12);
    	 $departstr = page($rownum, $pagesize, $page, "topic/hotlist");
    	 
    	   include template('topichot');
    }
   
    //获取最新文章
    function ongetnewlist(){
    	 @$page = max(1, intval($this->get[2]));
        $pagesize = 6;
        $startindex = ($page - 1) * $pagesize;
        $wzrownum = $this->db->fetch_total('topic');
        $topiclist = $_ENV['topic']->get_list(2, $startindex, $pagesize);
        
        echo json_encode($topiclist);
        exit();
    }
    
    function ongetbycatidanduid(){
    	 $pagesize = 6;
    	 $muid=intval($this->get[2]);
    	 
    	 @$page = max(1, intval($this->get[4]));
    	 $startindex = ($page - 1) * $pagesize;
    	 if($this->get[3]=='all'){
    	 	
    	 	$topiclist=$_ENV['topic']->get_list_byuid($muid,$startindex, $pagesize);
    	 echo json_encode($topiclist);
    	exit();
    	 }
    	$cid=intval($this->get[3]);
    	
    	$topiclist = $_ENV['topic']->get_list_bycidanduid($cid,$muid,$startindex, $pagesize);
    	
    	echo json_encode($topiclist);
    	exit();
    	
    	
    }
    
    //获取用户相关的文章数和关注数
 function ongetuserarticles(){
    	 @$page = max(1, intval($this->get[2]));
        $pagesize = 8;
        $startindex = ($page - 1) * $pagesize;
        $userrownum =  $_ENV['topic']->rownum_by_user_article();
  
    	$topiclist= $_ENV['topic']->get_user_articles( $startindex, $pagesize);
    	echo json_encode($topiclist);
    	exit();
    	
    }
    function ondefault() {
         $navtitle = "最新文章专栏推荐";
        $seo_description= "推荐问答最新文章专栏，热门文章和最新文章推荐。";
        $seo_keywords= "问答文章专栏";
        @$page = max(1, intval($this->get[2]));
        $pagesize = $this->setting['list_default'];
        $startindex = ($page - 1) * $pagesize;
        $rownum = $this->db->fetch_total('topic');
        $topiclist = $_ENV['topic']->get_list(2, $startindex, $pagesize);
    foreach ($topiclist as $key=>$val){
	

	   $taglist = $_ENV['topic_tag']->get_by_aid($val['id']);

	$topiclist[$key]['tags']=$taglist;
        
	
}
        $departstr = page($rownum, $pagesize, $page, "topic/default");
        $metakeywords = $navtitle;
        $metadescription = '精彩推荐列表';
       // $topiclist1 = $_ENV['topic']->get_list(2, 0);
        //$topiclist2 = $_ENV['topic']->get_list(2, 5);
        //  $topiclist3 = $_ENV['topic']->get_list(2, 10);
        //$arr=array('pc','food','health','cosm','feeling','game','job','live','sports');
       // $cout=count($arr);
//      
//----------------- 
//$this->load('topic');
//        $pagesize = 6;
//       
//        $wzrownum = $this->db->fetch_total('topic');
//      
//        
//	 $pages = @ceil($wzrownum / $pagesize);
//	
//	 if($pages>=2){
//	 	 $page=rand(1, $pages-1);
//	 }else{
//	 	$page=1;
//	 }
//	
//	  $startindex = ($page - 1) * $pagesize;
//	  $topiclist = $_ENV['topic']->get_list(2, $startindex, $pagesize);
//	  
//	  
//	 
//        $tpagesize = 8;
//       
//        $userrownum =  $_ENV['topic']->rownum_by_user_article();
//         $tpages = @ceil($userrownum / $tpagesize);
// if($tpages>=2){
//	 	 $tpage=rand(1, $tpages-1);
//	 }else{
//	 	$tpage=1;
//	 }
//   $tstartindex = ($tpage - 1) * $tpagesize;
//    	$topicusers= $_ENV['topic']->get_user_articles( $tstartindex, $tpagesize);
    	//----------------------
    	//if(is_mobile()){
    	
    	//}else{
    		// include template('zhuanlan_index');
    	//}
	
        include template('topic');
    }
    function oncatlist(){
    
    	$catid=$this->get[2];
    	 
    	 @$page = max(1, intval($this->get[3]));
    	 $catmodel=$_ENV['category']->get($catid);
    	 	$navtitle=$catmodel['name'];
    	 	  $cids=array();
    	 if($catmodel['pid']==0){
    	 	
    	 $catlist=	$_ENV['category']->list_by_pid($catid);
    	
    	   array_push($cids, $catid);
    	   foreach ($catlist as $key=>$val){
         	
          array_push($cids, $val['id']);
         }
        
    	 }else{
    	 	
    	 	array_push($cids, $catid);
    	 	 $catlist=$_ENV['category']->list_by_pid($catmodel['pid']);
    	 	  $catmodel=$_ENV['category']->get($catmodel['pid']);
    	 }
        
    	
       
         $cid=implode(',', $cids);
       
        $pagesize = $this->setting['list_default'];
        $startindex = ($page - 1) * $pagesize;
         $rownum = $this->db->fetch_total('topic',"articleclassid in($cid)");
        $topiclist = $_ENV['topic']->get_bycatid($cid, $startindex, $pagesize);
        

foreach ($topiclist as $key=>$val){
	

	   $taglist = $_ENV['topic_tag']->get_by_aid($val['id']);

	$topiclist[$key]['tags']=$taglist;
        
	
}
        $departstr = page($rownum, $pagesize, $page, "topic/catlist/$catid");
        
         /* SEO */
         $seo_keywords=$navtitle;
         $seo_description=$this->setting['site_name'].$navtitle.'频道，提供'.$navtitle.'相关文章。';
        if ($this->setting['seo_category_title']) {
            $seo_title = str_replace("{wzmc}", $this->setting['site_name'], $this->setting['seo_category_title']);
            $seo_title = str_replace("{flmc}", $navtitle, $seo_title);
            if($page==1){
            	
            }else{
            	 $seo_title=$seo_title.'_第'.$page."页";
            }
            
        }else{
          if($page==1){
            	
            }else{
            	$navtitle=$navtitle.'_第'.$page."页";
            }
        	
        }
        
        if ($this->setting['seo_category_description']) {
            $seo_description = str_replace("{wzmc}", $this->setting['site_name'], $this->setting['seo_category_description']);
            $seo_description = str_replace("{flmc}", $navtitle, $seo_description);
        }
        if ($this->setting['seo_category_keywords']) {
            $seo_keywords = str_replace("{wzmc}", $this->setting['site_name'], $this->setting['seo_category_keywords']);
            $seo_keywords = str_replace("{flmc}", $navtitle, $seo_keywords);
        }
        	
        
        include template('catlist');
    
    }

    function ongetone(){
    	
     
    	
    	
     $menu="topic";
    	$topicone = $_ENV['topic']->get(intval($this->get[2]));
    	$topicone['describtion']=checkwordsglobal($topicone['describtion']);
    	$cat_model=$_ENV['category']->get($topicone['articleclassid']);
     $taglist = $_ENV['topic_tag']->get_by_aid($topicone['id']);
     $cid=$topicone['articleclassid'];
     $category = $this->category[$cid]; //得到分类信息
         $ctopiclist = $_ENV['topic']->get_bycatid($cid);  
            $cfield = 'cid' . $category['grade'];
     // $questionlist=$_ENV['question']->list_by_condition(" ");
        $questionlist = $_ENV['question']->list_by_cfield_cvalue_status($cfield, $cid, 'all', 0, 8); //问题列表数据
           $topicone['tags']=$taglist;
    	$topicone['views']=$topicone['views']+1;
    	 $_ENV['topic']->updatetopic($topicone['id'], $topicone['title'], $topicone['describtion'],$topicone['image'],$topicone['isphone'],$topicone['views'],$topicone['articleclassid'],$topicone['ispc']);
    	 $navtitle = $topicone['title'];
   	  
    	 $metakeywords = $navtitle;
        $metadescription = $topicone['title'];
        
         $member = $_ENV['user']->get_by_uid($topicone['authorid'], 2);
             $is_followed = $_ENV['user']->is_followed($member['uid'], $this->user['uid']);
          $topiclist1 = $_ENV['topic']->get_list_byuid($member['uid'],0,8);
           $topiclist3 = $_ENV['topic']->get_list(1, 8);
          
    //if(is_mobile()){
        	// include template('getonetopic','wap');
       // }else{

        	// include template('topicone');
     
   // if(is_mobile()){
    		include template('topicone');
    //	}else{
    		// include template('zhuanlan_detail');
    	//}
       // }
    }
    function onuserxinzhi(){
    	$uid=$this->get[2];
    	if($uid==null){
    		exit("非法操作");
    	}
    	 $member = $_ENV['user']->get_by_uid($uid, 2);
    	  $is_followed = $_ENV['user']->is_followed($member['uid'], $this->user['uid']);
    $navtitle = $member['username'].'的专栏列表';
        
        @$page = max(1, intval($this->get[3]));
        $pagesize = 5;//$this->setting['list_default'];
        $startindex = ($page - 1) * $pagesize;
        $rownum = $this->db->fetch_total('topic',"authorid=$uid");
        $topiclist = $_ENV['topic']->get_list_byuid($uid, $startindex, $pagesize);
        	 $pages = @ceil($rownum / $pagesize);
        $catags= $_ENV['topic']->get_article_by_uid($uid);
foreach ($topiclist as $key=>$val){
	

	   $taglist = $_ENV['topic_tag']->get_by_aid($val['id']);

	$topiclist[$key]['tags']=$taglist;
        
	
}
        $departstr = page($rownum, 5, $page, "topic/userxinzhi/$uid");
        $metakeywords = $navtitle;
        $metadescription = $member['username'].'的专栏列表';
      
        
  //   if(is_mobile()){
    		include template('userxinzhi');
    	//}else{
    		//  include template('zhuanlan_author');
    //	}
             
       
    }

}

?>