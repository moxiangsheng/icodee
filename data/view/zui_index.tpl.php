<? if(!defined('IN_ASK2')) exit('Access Denied'); include template('header'); include template('banner'); ?>
<!--内容部分--->
<div class="content-body bgcolor">
<div class="container  ">

<div class="row ask_item">

<div class="col-md-9 col-xs-12">
<h3 class=" f14 cGray ask_title">
            
            <span class="fr hide">
                <a href="javascript:void(0)" target="_blank">探路者<img src="http://static.qyer.com/static/ask/common/img/t_ico2x.png" width="40"></a>
            </span>
                        <span class="cGray xm-tags hand" data-tag="tag-nosolve" data-bn-ipg="ask-index-recent">最新问题</span>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="ask-index-hot xm-tags hand" data-tag="tag-score"  data-bn-ipg="ask-index-recent ">悬赏问题</span>
                       
                        &nbsp;&nbsp;&nbsp;&nbsp;
                     
                         <span class="ask-index-hot xm-tags hand" data-tag="tag-solvelist" data-bn-ipg="ask-index-noanswerask-index-noanswer ">已解决问题</span>
                    </h3>
                    
                    
                    <div class="ask_item_main fl">
                    
                    <div class="ask_item_main_item xm-tag tag-nosolve">
                    
                      <? $nosolvelist=$this->fromcache('nosolvelist'); ?>                
<? if(is_array($nosolvelist)) { foreach($nosolvelist as $index => $question) { ?>
                    <div class="ask_item_main_item_list clearfix">
                        <div class="ui_headPort" alt="6397320">
                    <a onmouseover="pop_user_on(this, '<?=$question['authorid']?>', 'text');"  onmouseout="pop_user_out();" class="avatar" href="<?=SITE_URL?>?u-<?=$question['authorid']?>.html" target="_blank">
            <img width="48" height="48" src="<?=$question['avatar']?>">
            
        </a>
        
                <a class="fn" href="<?=SITE_URL?>?u-<?=$question['authorid']?>.html" target="_blank"><?=$question['author']?></a>
        
                提了一个问题 <span class="ico_point">.</span> <?=$question['format_time']?>

    </div>
    <div class="ask_item_main_item_list_content">
        <h4 class="ask_item_main_item_list_title"><a href="<?=SITE_URL?>?q-<?=$question['id']?>.html" target="_blank" class="qyer_spam_text_filter" data-bn-ipg="ask-index-question"><?=$question['title']?></a></h4>
        <blockquote class="qyer_spam_text_filter"> <?=$question['description']?></blockquote>
        <div class="ask_item_main_item_list_tab">
            <div class="color-gray ask_item_bot_right ">
                <span> <i class="icon icon-comment"></i> <?=$question['answers']?> 个回答</span>
                                <span class="line">|</span>
                <span><i class="icon icon-eye-open"></i> <?=$question['views']?> 人浏览</span>
                                
            </div>
            <? if($question['tags']) { ?> 
            
<? if(is_array($question['tags'])) { foreach($question['tags'] as $tag) { ?>
                 <a href="<?=SITE_URL?>?tag-<?=$tag?>.html" class="ask_tag_add" target="_blank" data-bn-ipg="ask-index-questiontag"><strong class=""><?=$tag?></strong></a>
                       
                
<? } } ?>
                
                   <? } else { ?>                   
                     <a href="<?=SITE_URL?>?c-<?=$question['cid']?>.html" class="ask_tag_add" target="_blank" data-bn-ipg="ask-index-questiontag"><strong class=""><?=$question['category_name']?></strong></a>
                  
                   <? } ?>    
                                                                    
        </div>
        
        <div class="clear"></div>
    </div>
</div>
 
<? } } ?>
                    
                    </div>
                    
                      <div class="ask_item_main_item xm-tag tag-score hide">
                    
                       <? $nosolvelist=$this->fromcache('rewardlist'); ?>                
<? if(is_array($nosolvelist)) { foreach($nosolvelist as $index => $question) { ?>
                    <div class="ask_item_main_item_list clearfix">
                        <div class="ui_headPort" alt="6397320">
                    <a onmouseover="pop_user_on(this, '<?=$question['authorid']?>', 'text');"  onmouseout="pop_user_out();" class="avatar" href="<?=SITE_URL?>?u-<?=$question['authorid']?>.html" target="_blank">
            <img width="48" height="48" src="<?=$question['avatar']?>">
            
        </a>
        
                <a class="fn" href="<?=SITE_URL?>?u-<?=$question['authorid']?>.html" target="_blank"><?=$question['author']?></a>
        
                提了一个问题 <span class="ico_point">.</span> <?=$question['format_time']?>

    </div>
    <div class="ask_item_main_item_list_content">
        <h4 class="ask_item_main_item_list_title"><a href="<?=SITE_URL?>?q-<?=$question['id']?>.html" target="_blank" class="qyer_spam_text_filter" data-bn-ipg="ask-index-question"><?=$question['title']?></a></h4>
        <blockquote class="qyer_spam_text_filter"> <?=$question['description']?></blockquote>
        <div class="ask_item_main_item_list_tab">
            <div class="color-gray ask_item_bot_right ">
                <span> <i class="icon icon-comment"></i> <?=$question['answers']?> 个回答</span>
                                <span class="line">|</span>
                <span><i class="icon icon-eye-open"></i> <?=$question['views']?> 人浏览</span>
                                
            </div>
            <? if($question['tags']) { ?> 
            
<? if(is_array($question['tags'])) { foreach($question['tags'] as $tag) { ?>
                 <a href="<?=SITE_URL?>?tag-<?=$tag?>.html" class="ask_tag_add" target="_blank" data-bn-ipg="ask-index-questiontag"><strong class=""><?=$tag?></strong></a>
                       
                
<? } } ?>
                
                   <? } else { ?>                   
                     <a href="<?=SITE_URL?>?c-<?=$question['cid']?>.html" class="ask_tag_add" target="_blank" data-bn-ipg="ask-index-questiontag"><strong class=""><?=$question['category_name']?></strong></a>
                  
                   <? } ?>    
                                                                    
        </div>
        
        <div class="clear"></div>
    </div>
</div>
 
<? } } ?>
                    
                    </div>
                     <div class="ask_item_main_item  xm-tag tag-solvelist hide">
                    
                       <? $solvelist=$this->fromcache('solvelist'); ?>                
<? if(is_array($solvelist)) { foreach($solvelist as $index => $question) { ?>
                    <div class="ask_item_main_item_list clearfix">
                        <div class="ui_headPort" alt="6397320">
                    <a onmouseover="pop_user_on(this, '<?=$question['authorid']?>', 'text');"  onmouseout="pop_user_out();" class="avatar" href="<?=SITE_URL?>?u-<?=$question['authorid']?>.html" target="_blank">
            <img width="48" height="48" src="<?=$question['avatar']?>">
            
        </a>
        
                <a class="fn" href="<?=SITE_URL?>?u-<?=$question['authorid']?>.html" target="_blank"><?=$question['author']?></a>
        
                提了一个问题 <span class="ico_point">.</span> <?=$question['format_time']?>

    </div>
    <div class="ask_item_main_item_list_content">
        <h4 class="ask_item_main_item_list_title"><a href="<?=SITE_URL?>?q-<?=$question['id']?>.html" target="_blank" class="qyer_spam_text_filter" data-bn-ipg="ask-index-question"><?=$question['title']?></a></h4>
        <blockquote class="qyer_spam_text_filter"> <?=$question['description']?></blockquote>
        <div class="ask_item_main_item_list_tab">
            <div class="color-gray ask_item_bot_right ">
                <span> <i class="icon icon-comment"></i> <?=$question['answers']?> 个回答</span>
                                <span class="line">|</span>
                <span><i class="icon icon-eye-open"></i> <?=$question['views']?> 人浏览</span>
                                
            </div>
            <? if($question['tags']) { ?> 
            
<? if(is_array($question['tags'])) { foreach($question['tags'] as $tag) { ?>
                 <a href="<?=SITE_URL?>?tag-<?=$tag?>.html" class="ask_tag_add" target="_blank" data-bn-ipg="ask-index-questiontag"><strong class=""><?=$tag?></strong></a>
                       
                
<? } } ?>
                
                   <? } else { ?>                   
                     <a href="<?=SITE_URL?>?c-<?=$question['cid']?>.html" class="ask_tag_add" target="_blank" data-bn-ipg="ask-index-questiontag"><strong class=""><?=$question['category_name']?></strong></a>
                  
                   <? } ?>    
                                                                    
        </div>
        
        <div class="clear"></div>
    </div>
</div>
 
<? } } ?>
                    
                    </div>
                    
                    </div>

</div>
<div class="col-md-3 col-xs-12 slide_right mt10">
<div class="site_notes side-box ">
<h3 class="nopadding">站内公告</h3>
<hr>
 <ul class="nav right-ul">
                <? $notelist=$this->fromcache('notelist'); ?> 
<? if(is_array($notelist)) { foreach($notelist as $nindex => $note) { ?>
       <li class="b-b-line">   <i class="quan"></i> <a target="_blank" title="<?=$note['title']?>" <? if($note['url']) { ?>href="<?=$note['url']?>"<? } else { ?>href="<?=SITE_URL?>?note/view/<?=$note['id']?>.html"<? } ?>>
       <? echo cutstr($note['title'],40,''); ?>       </a></li>
        
       
       
        
<? } } ?>
               


            </ul>
</div>
<div class="ask_sidebar_star mt10 side-box">
<div class="titles">


<h3>冠军排行榜</h3>
</div>
<div class="know_star">



<ul class="clearfix js_top_user_all      " >
        <p class="desc">总冠军 - 最有实力的领先者</p>
         <? $weekuserlist=$this->fromcache('alluserlist'); ?>                
<? if(is_array($weekuserlist)) { foreach($weekuserlist as $index => $alluser) { ?>
                 <? $index++; ?><li class="b-b-line number<?=$index?>">
<span class="ic_num"><?=$index?></span>
<a href="<?=SITE_URL?>?u-<?=$alluser['uid']?>.html" class="img" target="_blank" data-bn-ipg="21-2-1-1" onmouseover="pop_user_on(this, '<?=$alluser['uid']?>', 'text');"  onmouseout="pop_user_out();"><img width="30" height="30" src="<?=$alluser['avatar']?>" alt="<?=$alluser['username']?>" title="<?=$alluser['username']?>"></a>
<a href="<?=SITE_URL?>?u-<?=$alluser['uid']?>.html" class="text" target="_blank" data-bn-ipg="21-2-1-2"><?=$alluser['username']?></a>
<span class="nm"><em><?=$alluser['credit2']?></em>分</span><p></p>

</li>
 
<? } } ?>
</ul>
</div>
</div>



</div>

</div>





</div>
</div>

<script src="<?=SITE_URL?>static/js/run_prettify.js" type="text/javascript"></script>
 <<script type="text/javascript">

window.prettyPrint();

</script>
<script>
var _imgs=$(".qyer_spam_text_filter").find("img");
_imgs.each(function(){
var _width=$(this).width();
var _height=$(this).height();
$(this).css({"width":_width/2+"px","height":_height/2+"px"});
});
if(typeof($(".qyer_spam_text_filter").find("img").attr("data-original"))!="undefined"){
var imgurl=$(".qyer_spam_text_filter").find("img").attr("data-original");
$(".qyer_spam_text_filter").find("img").attr("src",imgurl);
}
$(".qyer_spam_text_filter").find("img").attr("data-toggle","lightbox");
$(".qyer_spam_text_filter").find("img").attr("class","img-thumbnail");
</script>
<? include template('footer'); ?>
