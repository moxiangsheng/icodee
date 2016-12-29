<? if(!defined('IN_ASK2')) exit('Access Denied'); include template('header'); include template('banner'); $adlist = $this->fromcache("adlist"); ?><!--内容部分--->
<div class="content-body">
<div class="container  ">

<div class="row">
<div class="col-sm-8 side-box">
<ol class="breadcrumb">
  <li><a class="first" href="<?=SITE_URL?>"><?=$setting['site_name']?></a></li>

  <li class="active">活跃用户</li>
</ol>


<hr>


   <!--广告位1-->
        <? if((isset($adlist['common']['left1']) && trim($adlist['common']['left1']))) { ?>        <div><?=$adlist['common']['left1']?></div>
        <? } ?>        
              <div class="userlist">
            <ul class="nav navbar-nav">
                
<? if(is_array($userlist)) { foreach($userlist as $activeuser) { ?>
                <li><a title="<?=$activeuser['username']?>" target="_blank" href="<?=SITE_URL?>?u-<?=$activeuser['uid']?>.html"><img width="50" height="50" class="img-rounded" src="<?=$activeuser['avatar']?>" onmouseout="pop_user_out();" onmouseover="pop_user_on(this, '<?=$activeuser['uid']?>', 'image_active');"></a><a class="name" title="<?=$activeuser['username']?>" target="_blank" href="<?=SITE_URL?>?u-<?=$activeuser['uid']?>.html"><?=$activeuser['username']?></a></li>
                
<? } } ?>
            </ul>
        </div>
        
         <div class="pages"><?=$departstr?></div>   
</div>


<div class="col-sm-4 b-l-line">
<!-- 回答榜 -->
<div class="side-box">
<h3 class="font-18 mar-t-05">
回答榜
</h3>
<hr class="clearfix">
     <ul  id="alltop" class="nav mar-b-1">
                
<? if(is_array($answertop)) { foreach($answertop as $index => $topuser) { ?>
              
                <li class="clearfix b-b-line">
               <a class="pull-left" title="<?=$topuser['name']?>" target="_blank" href="<?=SITE_URL?>?u-<?=$topuser['uid']?>.html"><i class="quan"></i><img width="35" height="35" class="img-rounded"  alt="<?=$topuser['username']?>" src="<?=$topuser['avatar']?>"  onmouseover="pop_user_on(this, '<?=$topuser['uid']?>', '');"  onmouseout="pop_user_out();"/></a>
                    <a class="pull-left mar-ly-1" onmouseout="pop_user_out();" onmouseover="pop_user_on(this, '<?=$topuser['uid']?>', 'text');" target="_blank" href="<?=SITE_URL?>?u-<?=$topuser['uid']?>.html"><?=$topuser['username']?><span class="label   mar-l-03"><?=$topuser['answers']?>回答</span></a>
                 
                </li>
                
<? } } ?>
            </ul>
            
           
        
        </div>
     
          <!--广告位2-->
        <? if((isset($adlist['common']['right1']) && trim($adlist['common']['right1']))) { ?>        <div class="mar-t-1 clearfix"><?=$adlist['common']['right1']?></div>
           <? } ?></div>
</div>


</div>

</div>
<? include template('footer'); ?>
