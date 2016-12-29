<? if(!defined('IN_ASK2')) exit('Access Denied'); $setting=$this->setting;$user=$this->user; ?><!--相关已解决--><? if(isset($userinfo)) { ?><div class="usercard_in clearfix row bg-white">
    <div class="usercard_c1 col-sm-12 clearfix">
    <div class="row mar-t-1 mar-l-03">
        <div class="usercard_c1_l col-sm-3"><a href="<?=SITE_URL?>?u-<?=$userinfo['uid']?>.html" class="avatar"><img src="<?=$userinfo['avatar']?>" alt="<?=$userinfo['username']?>"/></a></div>
        <div class="usercard_c1_r col-sm-9">
            <h2 class="tit font-12"><a class="tx_user" href="<?=SITE_URL?>?u-<?=$userinfo['uid']?>.html" title="<?=$userinfo['username']?>"><? echo cutstr($userinfo['username'],24,''); ?></a><? if($userinfo['gender']!=2) { ?><i class="icon_<?=$userinfo['gender']?>"></i><? } if($userinfo['expert']) { ?><i class="icon_expert" title='专家'></i><? } ?> <span class="tx_id">(<?=$userinfo_group['grouptitle']?>)</span><? if($userinfo['islogin']) { ?><span class="online">在线</span><? } else { ?><span class="offline">离线</span><? } ?></h2>
            <? if($userinfo['introduction']) { ?>            <p class="info mar-t-05"><?=$userinfo['introduction']?></p>
            <? } ?>            <? if($userinfo['category']) { ?>            <p class="info mar-t-05">擅长:
                
<? if(is_array($userinfo['category'])) { foreach($userinfo['category'] as $category) { ?>
                <i class="expert-field"><a target="_blank" href="<?=SITE_URL?>?c-<?=$category['cid']?>.html"><?=$category['categoryname']?></a></i>
                
<? } } ?>
            </p>
            <? } ?>            <p class="stats mar-t-05 text-danger">
            <?=$userinfo['answers']?>回答
            <span class="mar-l-05"></span>
          <?=$userinfo['supports']?>赞同
            
            <span class="mar-l-05"></span>
            <?=$userinfo['credit2']?>财富
            <span class="mar-l-05"></span>
             <?=$userinfo['followers']?>关注
           
            </p>
        </div>
        </div>
        
    </div>
    <hr>
    <div class="usercard_c2 col-sm-12 mar-l-1 mar-t-1 clearfix">
        <div class="usercard_c2_l ">
            <span class="gb_foed gb_fo1 ">
                <? if($user['uid']!=$userinfo['uid']) { ?>                <? if($is_followed) { ?>                <span class="label mar-ly-1  ">
                  <a href="javascript:attentto_user(<?=$userinfo['uid']?>)" id="attenttouser_<?=$userinfo['uid']?>" class=" button_followed s_btn" >取消关注</a>
               </span>
                <? } else { ?>                <span class="label mar-ly-1 ">
                <a href="javascript:attentto_user(<?=$userinfo['uid']?>)" id="attenttouser_<?=$userinfo['uid']?>" class=" button_attention s_btn" >关注</a>
           
                
                </span>
                <? } ?>                <span class="label mar-ly-1  color-white"><a  class=" mar-ly-1" href="<?=SITE_URL?>?question/add/<?=$userinfo['uid']?>.html" >提问</a></span>
                <span class="label mar-ly-1  color-white"><a class="" href="<?=SITE_URL?>?message/send/<?=$userinfo['uid']?>.html">私信</a></span>
                <? } ?>            </span>
        </div>
    </div>
  
</div><? } ?>