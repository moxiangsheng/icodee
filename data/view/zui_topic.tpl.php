<? if(!defined('IN_ASK2')) exit('Access Denied'); include template('header'); ?>
<div class="container   mar-b-1">
<div class="row">
<div class="col-md-2" >

   <div class="side-box" >
     <h3>站内文章分类</h3>
   
   <div class="side-content">
    <ul class="nav right-ul">
                    

   
        <? $categorylist=$this->fromcache('categorylist'); ?>                
<? if(is_array($categorylist)) { foreach($categorylist as $category1) { ?>
                <? $num=rand(0,$cout);$vpic=$arr[$num]; ?>         
               
                 
                  <li class="b-b-line"><a target="_blank" href="<?=SITE_URL?>?cat-<?=$category1['id']?>.html"><i class="<?=$vpic?>"></i><?=$category1['name']?></a></li>
                 
                
                   
<? } } ?>
            </ul>
   </div>
   </div>
</div>




<div class="col-sm-7 b-l-line side-box">
    <h3>最新文章</h3>
    <hr>
      <? if($topiclist==null) { ?>        
         <div id="msg_tabs_content" class="tab-boxs">

            <div class="box" style="display:block;">
            
                <p class="empty">站内还没有最新文章！
                
              
                 
                
                </p>
            </div>
            </div>
        <? } ?>          
<? if(is_array($topiclist)) { foreach($topiclist as $index => $topic) { ?>
          
  <div class="row mar-t-1 b-b-line" >
    <div class="col-sm-4" style="    height: 142px;overflow:hidden;">
    
       <a target="_blank" href="<?=SITE_URL?>?article-<?=$topic['id']?>.html">
                       <? $index=strpos($topic['image'],'http'); ?>                       <? if($index==0 ) { ?>                            
                             <img src="<?=$topic['image']?>" alt="">
                            <? } else { ?>                            <img   src="<?=SITE_URL?><?=$topic['image']?>" alt="">
                            
                            <? } ?>                    </a>
    </div>
    
    <div class="col-sm-8">
     <h3 class="font-15"><a target="_blank" href="<?=SITE_URL?>?article-<?=$topic['id']?>.html"><?=$topic['title']?></a></h3>
                <p  class="mar-t-05 mar-b-1 height-80 c-hui clear "><? echo cutstr(strip_tags(str_replace('&nbsp;','',$topic['describtion'])),150,'..'); ?><a class="text-success" href="<?=SITE_URL?>?article-<?=$topic['id']?>.html">查看更多</a></p>
                
                <p class="tag-info ">
                     <span class="tag pull-left">
                              <? if($user['grouptype']==1||$user['uid']==$topic['authorid']) { ?>                         <a class="mar-r-03" target="_blank" title="编辑文章" href="<?=SITE_URL?>?user/editxinzhi/<?=$topic['id']?>.html">编辑</a> 
                             <a target="_blank" title="删除文章" href="<?=SITE_URL?>?user/deletexinzhi/<?=$topic['id']?>.html">删除</a> 
                          <? } ?>         <? if($topic['tags']) { ?>  
                  
                        
<? if(is_array($topic['tags'])) { foreach($topic['tags'] as $tag) { ?>
<span ><a  target="_blank" title="<?=$tag?>" href="<?=SITE_URL?>?topictag-<?=$tag?>.html"><?=$tag?></a></span>
                
                
<? } } } else { } ?>                </span>
                <span class="pull-right">
               <?=$topic['views']?>浏览
                
                </span>
                </p>
    </div>
  
  </div>         
  
<? } } ?>
    <div class="pages"><?=$departstr?></div>    
        

</div>

<div class="col-md-3">
   <div class="side-box">
   <h3>站长推荐</h3>
   <hr>
   <div class="side-content">
    <ul class="nav right-ul">
                    <? $topiclist=$this->fromcache('hottopiclist'); ?>  
<? if(is_array($topiclist)) { foreach($topiclist as $nindex => $topic) { ?>
                       <li class="b-b-line"> <i class="quan"></i> <a target="_blank" href="<?=SITE_URL?>?article-<?=$topic['id']?>.html" text="<?=$topic['title']?>"><?=$topic['title']?></a></li>
                       
<? } } ?>
               


            </ul>
   </div>
</div>
</div>
</div>
</div>
<div id="bottom_ask" class="bottom-fixed" style="">
        <a class="bottom-close" href="javascript:void(0)"></a>
        <div class="bd">
            <i class="left"></i>
            <span class="center ">
           
               
                
                             <span class="text-danger font-18 bold">  来一篇原创,上千网友给你打赏，也许下一个作家就是你 </span>
                             
                  <a class="btn btn-danger" href="<?=SITE_URL?>?user/addxinzhi.html">我要发表</a>
              
             
            </span>
        </div>
    </div>

<script type="text/javascript">


$("#bottom_ask .bottom-close").click(function(){
document.getElementById('bottom_ask').style.display='none';
})

</script>
<? include template('footer'); ?>
