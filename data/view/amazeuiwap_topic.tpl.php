<? if(!defined('IN_ASK2')) exit('Access Denied'); include template('header'); ?>
<section class="am-container" >
    <div data-am-widget="slider" class="am-slider am-slider-c1" data-am-slider='{&quot;directionNav&quot;:false}' >
        <ul class="am-slides">
            <? $topiclistinphone=$this->fromcache('topiclistinphone'); ?>            
<? if(is_array($topiclistinphone)) { foreach($topiclistinphone as $index => $topic) { ?>
            <li>
                <a href="<?=SITE_URL?>?article-<?=$topic['id']?>.html">

                    <? $index=strstr($topic['image'],'http'); ?>                       <? if($index ) { ?>                    <img src="<?=$topic['image']?>"width="375" height="241"  alt="<?=$topic['title']?>">
                    <? } else { ?>                    <img src="<?=SITE_URL?><?=$topic['image']?>" width="375" height="241"  alt="<?=$topic['title']?>">

                    <? } ?>                <div class="am-slider-desc"><?=$topic['title']?></div>
</a>
            </li>
            
<? } } ?>
        </ul>
    </div>
    <div data-am-widget="list_news" class="am-list-news am-list-news-default">
        <!--列表标题-->
        <div class="am-list-news-hd am-cf">
            <!--带更多链接-->
          
                <h2>最新文章推荐</h2>

         
        </div>
        <div class="am-list-news-bd">
            <ul class="am-list">
                <!--缩略图在标题上方-->

                
<? if(is_array($topiclist)) { foreach($topiclist as $index => $topic1) { ?>
                <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-top">
                    <div class="am-list-thumb am-col col-sm-12">
                        <a href="<?=SITE_URL?>?article-<?=$topic1['id']?>.html">

                            <? $index=strstr($topic1['image'],'http'); ?>                       <? if($index ) { ?>                            <img src="<?=$topic1['image']?>" alt="<?=$topic1['title']?>" />
                            <? } else { ?>                            <img src="<?=SITE_URL?><?=$topic1['image']?>" alt="<?=$topic1['title']?>" />

                            <? } ?>                        </a>
                    </div>
                    <div class="am-col am-list-main">
                        <h3 class="am-list-item-hd">
                            <a href="<?=SITE_URL?>?article-<?=$topic1['id']?>.html"><?=$topic1['title']?></a>
                        </h3>
                        <div class="am-list-item-text"><? echo strip_tags($topic1['describtion']); ?></div>
                    </div>
                </li>

                
<? } } ?>
            </ul>
        </div>
        <div class="pages"><?=$departstr?></div>
    </div>
   </section>
<? include template('footer'); ?>
