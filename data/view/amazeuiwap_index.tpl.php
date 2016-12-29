<? if(!defined('IN_ASK2')) exit('Access Denied'); include template('header'); ?>
<section class="am-container">
  <!--待解决问题-->
    <div data-am-widget="list_news" class="am-list-news am-list-news-default">
        <!--列表标题-->
        <div class="am-list-news-hd am-cf">
            <!--带更多链接-->
            <a href="###">
                <h2>帮助Ta们</h2>
               <a href="<?=SITE_URL?>?c-all/1.html"> <span class="am-list-news-more am-fr">更多 &raquo;</span></a>
            </a>
        </div>
        <div class="am-list-news-bd">
            <ul class="am-list">
            
              
                
<? if(is_array($nosolvelist)) { foreach($nosolvelist as $index => $question) { ?>
                <li class="am-g am-list-item-desced">
                    <a title="<?=$question['title']?>" href="<?=SITE_URL?>?q-<?=$question['id']?>.html" class="am-list-item-hd am-text-default"><?=$question['title']?></a>
                   
                    <div class="am-cf">
                        <small>  <span class="am-fl am-text-top">
                        <img width="25" height="25"   src="<?=$question['avatar']?>"/> <?=$question['author']?>
                        </span>
                        
                         <span class="am-fr"><?=$question['format_time']?></span></small>
                       </div>
                </li>
                    
<? } } ?>
              
            </ul>
        </div>
    </div>
    <div data-am-widget="list_news" class="am-list-news am-list-news-default">
        <!--列表标题-->
        <div class="am-list-news-hd am-cf">
            <!--带更多链接-->
            <a href="###">
                <h2>最新文章推荐</h2>
              <a href="<?=SITE_URL?>?topic/default.html"  ><span class="am-list-news-more am-fr">更多 &raquo;</span></a>
            </a>
        </div>
        <div class="am-list-news-bd">
            <ul class="am-list">
                <!--缩略图在标题上方-->
             
 
<? if(is_array($topiclist)) { foreach($topiclist as $index => $topic) { ?>
 <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-top">
              
                    <div class="am-col am-list-main">
                        <h3 class="am-list-item-hd">
                            <a class="am-text-black" href="<?=SITE_URL?>?article-<?=$topic['id']?>.html"><?=$topic['title']?></a>
                        </h3>
                       
                    </div>
                </li>
 
<? } } ?>
               
              
            </ul>
        </div>
    </div>
  
</section>
<? include template('footer'); ?>
