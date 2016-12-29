<? if(!defined('IN_ASK2')) exit('Access Denied'); ?>


<!--相关标签，友情链接，关键词搜索-->

<div class="bg-white hidden-sm hidden-xs">

    <div class="container">



        <ul id="myTab2" class="nav nav-secondary">
        <? if($regular=='index/default') { ?>            <li class="active">
                <a href="#tab11" data-toggle="tab">友情链接</a>
            </li>
            <? } ?>               <li   <? if($regular!='index/default') { ?> class="active"<? } else { ?> class=""  <? } ?>>
                <a href="#tab33" data-toggle="tab">相关标签</a>
            </li>
            <li class="">
                <a href="#tab22" data-toggle="tab">问答搜索词</a>
            </li>
         

        </ul>
        <hr>
        <div class="tab-content">
         <? if($regular=='index/default') { ?>            <div class="tab-pane in active" id="tab11">
                <ul class="FLlist show">
                  <? $links=$this->fromcache('link'); ?>  
<? if(is_array($links)) { foreach($links as $link) { ?>
     <li id="foot_wdss_list" class="switchHide">
            <a target="_blank" href="<?=$link['url']?>" title="<?=$link['description']?>">
                <? if($link['logo']) { ?>                <img src="<?=$link['logo']?>" style="width:140px;height:50px" alt="<?=$link['name']?>" />
                <? } else { ?>                <?=$link['name']?>
                <? } ?>            </a>
              </li>
            
<? } } ?>
                 
                      
                  


                </ul>
            </div>
             <? } ?>              
           <div <? if($regular!='index/default') { ?> class="tab-pane in active" <? } else { ?> class="tab-pane" <? } ?> id="tab33">

               <ul class="FLlist show">
  <? $taglist=$this->fromcache('hosttaglist'); ?>                    
<? if(is_array($taglist)) { foreach($taglist as $tag) { ?>
                      <li id="foot_zxjh_list" class="switchHide">
                    <a target="_blank" title="<?=$tag['name']?>" href="<?=SITE_URL?>?tag-<?=$tag['name']?>.html"><?=$tag['name']?></a>
                     </li>
                    
<? } } ?>
                 
                 

               </ul>
           </div>
            
            <div class="tab-pane" id="tab22">
                <ul class="FLlist show">

 <? $wordslist=$this->fromcache('hotwords'); ?>                    
<? if(is_array($wordslist)) { foreach($wordslist as $word) { ?>
                      <li id="foot_zxjh_list" class="switchHide">
                    <a target="_blank" title="<?=$word['w']?>" href="<?=SITE_URL?>?q=<?=$word['w']?>.html"><?=$word['w']?></a>
                     </li>
                    
<? } } ?>
                    
                 

                </ul>
            </div>
           
        </div>

    </div>
</div>
<!-- 用户信息 -->
<div class="usercard" id="usercard"><div class="usercard_in clearfix"><div class="loading"><img src='<?=SITE_URL?>css/default/loading.gif' align='absmiddle' />&nbsp;加载中...</div></div></div>
<!-- 用户信息结束标签 -->

<!--友情链接，关键词结束标记-->


<!--页脚标签-->
<div class="web-footer bg-silver">

    <div class="container">
  <div class="row">
<div class="col-sm-8 col-sm-offset-2">
    <p class="mar-t-2 text-center">

        <p class="copyright text-center">Copyright    <a target="_blank" href="<?=SITE_URL?>"><?=$setting['site_name']?></a> 服务   
                 <a target="_blank" href="<?=SITE_URL?>?rss/list.html">RSS订阅</a>    &nbsp;<? if($setting['wap_domain']) { ?> <a target="_blank" href="http://<?=$setting['wap_domain']?>">手机版</a><? } ?>   &nbsp; &nbsp; &nbsp;<a target="_blank" href="<?=SITE_URL?>?tags.html">网站标签</a>           <a target="_blank" href="<?=SITE_URL?>?new.html">最新问题</a>       <a ><?=$setting['site_icp']?></a>
             <? if($setting['site_statcode']) { ?>           <a> <? echo str_replace('\\','',$setting['site_statcode']); ?></a>
            <? } ?>            </p>
    </p>
   
</div>

  </div>
   
    </div>

</div>

<!--页脚标签结束-->



<script src="<?=SITE_URL?>static/css/dist/js/zuicommon.js" type="text/javascript"></script>

</body>
</html>