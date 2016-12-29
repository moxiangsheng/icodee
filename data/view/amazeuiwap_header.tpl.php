<? if(!defined('IN_ASK2')) exit('Access Denied'); ?>
<!DOCTYPE html>
<html>
 <? global $starttime,$querynum;$mtime = explode(' ', microtime());$runtime=number_format($mtime['1'] + $mtime['0'] - $starttime,6); $setting=$this->setting;$user=$this->user;$headernavlist=$this->nav;$regular=$this->regular;$toolbars="'".str_replace(",", "','", $setting['editor_toolbars'])."'"; ?><head >
    <meta charset="UTF-8">
   
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
   <? if(isset($seo_title)) { ?>        <title><?=$seo_title?></title> 
        <? } else { ?>        <title><? if($navtitle) { ?><?=$navtitle?> - <? } ?><?=$setting['site_name']?></title>
        <? } ?>        <? if(isset($seo_description)) { ?>        <meta name="description" content="<?=$navtitle?><?=$seo_title?><? echo cutstr($seo_description,160,'') ?>" />
        <? } else { ?>        <meta name="description" content="<?=$navtitle?><?=$seo_title?><?=$setting['site_name']?>" />
        <? } ?>        <meta name="keywords" content="<?=$navtitle?><?=$seo_title?><?=$seo_keywords?>" />
        <meta name="generator" content="Ask2 <?=ASK2_VERSION?> <?=ASK2_RELEASE?>" />
    <!-- Set render engine for 360 browser -->
    <meta name="renderer" content="webkit">

    <!-- No Baidu Siteapp-->
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <!-- Set render engine for 360 browser -->
    <meta name="renderer" content="webkit">
    <meta name="applicable-device" content="mobile">
    <!-- No Baidu Siteapp-->

    <meta property="qc:admins" content="6530126461332636" />
    <meta property="wb:webmaster" content="1386695dd73a7fdb" />
 


  <link href="<? if($setting['wap_domain']) { ?>http://<?=$setting['wap_domain']?>/<? } else { ?><?=SITE_URL?><? } ?>static/css/dist/css/zui.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<? if($setting['wap_domain']) { ?>http://<?=$setting['wap_domain']?>/<? } else { ?><?=SITE_URL?><? } ?>static/css/amazeuiwap/assets/css/amazeui.min.css">
       <link rel="stylesheet" href="<? if($setting['wap_domain']) { ?>http://<?=$setting['wap_domain']?>/<? } else { ?><?=SITE_URL?><? } ?>static/css/amazeuiwap/assets/css/app.css">
    <script src="<? if($setting['wap_domain']) { ?>http://<?=$setting['wap_domain']?>/<? } else { ?><?=SITE_URL?><? } ?>static/css/amazeuiwap/assets/js/jquery.min.js" type="text/javascript"></script>
    <script src="<? if($setting['wap_domain']) { ?>http://<?=$setting['wap_domain']?>/<? } else { ?><?=SITE_URL?><? } ?>static/css/amazeuiwap/assets/js/amazeui.min.js" type="text/javascript"></script>
    <script type="text/javascript">var g_site_url = "<? if($setting['wap_domain']) { ?>http://<?=$setting['wap_domain']?>/<? } else { ?><?=SITE_URL?><? } ?>";
            var g_site_name = "<?=$setting['site_name']?>";
            var g_prefix = "<?=$setting['seo_prefix']?>";
            var g_suffix = "<?=$setting['seo_suffix']?>";
            var g_uid = <?=$user['uid']?>;</script>
          
</head>
<body>
<header data-am-widget="header" class="am-header am-header-default">
    <div class="am-header-left am-header-nav" style="overflow:hidden;white-space:nowrap;">
        <a href="<?=SITE_URL?>" class="" style="min-width:auto;overflow:hidden;white-space:nowrap;">
            <i class="am-header-icon am-icon-home"></i>
            <?=$setting['site_name']?>
        </a>
    </div>

    <div class="am-header-right am-header-nav" style="min-width:auto;overflow:hidden;white-space:nowrap;">
    
     <? if(0!=$user['uid']) { ?>        <a href="<?=SITE_URL?>?user/default.html"><?=$user['username']?></a>
        <img src="<?=$user['avatar']?>" class="img-rounded" style="width:25px;height:25px;" />
        
       <? } else { ?>        <a href="<?=SITE_URL?>?user/login.html" class="btn btn-dafault "><span class="am-text-primary">登陆</span></a>
     
     <a href="<?=SITE_URL?>?user/register.html" class="btn btn-dafault am-text-primary"><span class="am-text-primary">注册</span></a>
          <? } ?>        
    
    </div>
</header><? if(0!=$user['uid']) { ?><!-- 侧边栏内容 -->
<div id="doc-oc-demo2" class="am-offcanvas">
    <div class="am-offcanvas-bar">
        <div class="am-offcanvas-content am-text-center">
            <center>欢迎<?=$user['username']?>登陆</center>
            <img width="80" height="80" src="<?=$user['avatar']?>">

            <ul class="am-list nav_user">

                <li class="am-margin-top-sm"><a href=" <?=SITE_URL?>?user/default.html" ><i class="am-icon-user am-margin-right-sm"></i><span>个人首页</span></a></li>
                  <li class="am-margin-top-sm"><a href=" <?=SITE_URL?>?user/recharge.html" ><i class="am-icon-user am-margin-right-sm"></i><span>积分充值</span></a></li>
                    
                <li class="am-margin-top-sm"><a href="<?=SITE_URL?>?message/personal.html" ><i class="am-icon-envelope am-margin-right-sm"></i><span>私人消息</span></a></li>
                <li class="am-margin-top-sm"><a href="<?=SITE_URL?>?message/system.html" ><i class="am-icon-envelope-o am-margin-right-sm"></i><span>系统消息</span></a></li>
                <li class="am-margin-top-sm"><a href="<?=SITE_URL?>?user/ask/2.html" ><i class="am-icon-edit am-margin-right-sm"></i><span>我的提问</span></a></li>
                <li class="am-margin-top-sm"><a href="<?=SITE_URL?>?user/answer/1.html" ><i class="am-icon-commenting am-margin-right-sm"></i><span>我的回答</span></a></li>
                <li class="am-margin-top-sm"><a href="<?=SITE_URL?>?user/logout.html" ><i class="am-icon-user-md am-margin-right-sm"></i><span>退出系统</span></a></li>

            </ul>
        </div>
    </div>
</div><? } else { } ?>