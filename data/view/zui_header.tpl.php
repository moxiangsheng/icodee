<? if(!defined('IN_ASK2')) exit('Access Denied'); ?>
<!DOCTYPE html>

<html lang="zh-cn">
  <? global $starttime,$querynum;$mtime = explode(' ', microtime());$runtime=number_format($mtime['1'] + $mtime['0'] - $starttime,6); $setting=$this->setting;$user=$this->user;$headernavlist=$this->nav;$regular=$this->regular;$toolbars="'".str_replace(",", "','", $setting['editor_toolbars'])."'"; $statistics=$this->fromcache('statistics'); ?><head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <? if(isset($seo_title)) { ?>        <title><?=$seo_title?></title>
        <? } else { ?>        <title><? if($navtitle) { ?><?=$navtitle?> - <? } ?><?=$setting['site_name']?></title>
        <? } ?>        <? if(isset($seo_description)) { ?>        <meta name="description" content="<?=$seo_description?>" />
        <? } else { ?>        <meta name="description" content="<?=$setting['site_name']?>" />
        <? } ?>        <meta name="keywords" content="<?=$seo_keywords?>" />
        <meta name="generator" content="Ask2 <?=ASK2_VERSION?> <?=ASK2_RELEASE?>" />
        <meta name="author" content="Ask2 Team" />
        <meta name="copyright" content="2016 ask2.cn" />
        <meta name="robots" content="index, follow">
        <meta name="googlebot" content="index, follow" />
      <meta name="applicable-device" content="pc"/>
      <meta http-equiv='Cache-Control' content='no-transform'/>
      
    <link href="<?=SITE_URL?>static/css/dist/css/normalize.css" rel="stylesheet">
    <!-- zui -->
    <link href="<?=SITE_URL?>static/css/dist/css/zui.min.css" rel="stylesheet">
    <link href="<?=SITE_URL?>static/css/dist/css/animate.min.css" rel="stylesheet">

    <link href="<?=SITE_URL?>static/css/dist/css/main.css" rel="stylesheet">
    <!-- jQuery -->
<script src="<?=SITE_URL?>static/js/jquery-1.11.3.min.js" type="text/javascript"></script>

<!-- ZUI Javascript组件 -->
<script src="<?=SITE_URL?>static/css/dist/js/zui.min.js" type="text/javascript"></script>
    <!--[if lt IE 9]>
    <script src="<?=SITE_URL?>static/css/dist/lib/ieonly/html5shiv.js" type="text/javascript"></script>
    <script src="<?=SITE_URL?>static/css/dist/lib/ieonly/respond.js" type="text/javascript"></script>
    <![endif]-->

        <script type="text/javascript">var g_site_url = "<?=SITE_URL?>";
            var g_site_name = "<?=$setting['site_name']?>";
            var g_prefix = "<?=$setting['seo_prefix']?>";
            var g_suffix = "<?=$setting['seo_suffix']?>";
            var g_uid = <?=$user['uid']?>;
            </script>
</head>
<body class="bgcolor">
<!--[if lt IE 8]>
<div class="alert alert-danger">您正在使用 <strong>过时的</strong> 浏览器. 是时候 <a href="http://browsehappy.com/">更换一个更好的浏览器</a>
    来提升用户体验.
</div>
<![endif]-->

<!-- 外链+登录，注册 -->
<div class="linkbanner hidden-sm hidden-xs">
   <div class="container ">
      <div class="row">
       <div class="col-sm-8">
       <p class="b_p1 pull-left">
<span class="b_home2"> <a href="<?=SITE_URL?>"><i class="icon icon-home"></i>问答首页</a></span>
</p>
      <p class="b_p1_1">
        <? $headernavlist = $this->fromcache("headernavlist"); ?>                        
<? if(is_array($headernavlist)) { foreach($headernavlist as $nav1) { ?>
                        <? if($nav1['type']==2 && $nav1['available']) { ?>                                                  
                            <a  title="<?=$nav1['title']?>" href="<?=$nav1['url']?>"  <? if($nav1['target']) { ?>target="_blank"<? } ?>><?=$nav1['name']?></a>
                      
      |
   
                        <? } ?>                        
<? } } ?>
     
      
      </p>
       
       </div>
         <div class="col-sm-4">
         
           <? if(0!=$user['uid']) { ?>           
            <div class="b_p2">
<span class="b_span3"></span><span class="b_span4" id="topSpan1"><a title="<?=$user['username']?>" href="<?=SITE_URL?>?user/default.html"><?=$user['username']?></a></span><span class="b_span5"></span>
<span class="b_span6 color-white" id="topSpan2"><a class="color-white" href="<?=SITE_URL?>?message/personal.html">消息</a></span>


<span class="b_span8"> 
<a class="dropdown-toggle color-white " data-toggle="dropdown" href="javascript:void(0);">管理中心<i class="icon icon-caret-down"></i></a>

 <ul class="dropdown-menu pull-right">
        
         <? if($user['groupid']<=3) { ?>          <li class="b-r-line"><a href="<?=SITE_URL?>index.php?admin_main"><i class="icon icon-diamond text-success mar-ly-05"></i>后台管理</a></li>
                                  
                                    <? } ?> 
                                    
           
            <li class="b-r-line"><a href="<?=SITE_URL?>?user/default.html"><i class="icon icon-user text-success mar-ly-05"></i>个人主页</a></li>
            <li class="b-r-line"><a href="<?=SITE_URL?>?message/system.html"><i class="icon icon-inbox text-success mar-ly-05"></i>系统信息</a></li>
            <li class="b-r-line"><a href="<?=SITE_URL?>?user/recommend.html"><i class="icon icon-rss text-success mar-ly-05"></i>向我推荐</a></li>
            <li class="b-r-line"><a href="<?=SITE_URL?>?user/ask/1.html"><i class="icon icon-question-sign text-success mar-ly-05"></i>我的问题</a></li>
            <li class="b-r-line"><a href="<?=SITE_URL?>?user/answer/1.html"><i class="icon icon-comment text-success mar-ly-05"></i>我的回答</a></li>
            <li class="b-r-line"><a href="<?=SITE_URL?>?user/follower.html"><i class="icon icon-info-sign text-success mar-ly-05"></i>我的关注</a></li>
            <li class="b-r-line"><a href="<?=SITE_URL?>?favorite/default.html"><i class="icon icon-asterisk text-success mar-ly-05"></i>我的收藏</a></li>

                 <li class="b-r-line">   <a href="<?=SITE_URL?>?ut-<?=$user['uid']?>.html">                      <i class="icon icon-stack  text-success mar-ly-05"></i>  我的文章                </a></li>
             <li><a href="<?=SITE_URL?>?user/logout.html" ><i class="icon icon-signout text-success mar-ly-05"></i>退出网站</a></li>
        </ul>

</span>
  

</div>
           
              <? } else { ?>              
               <div class="b_p2">
<span class="b_span3"></span><span class="b_span4" id="topSpan1"><a href="javascript:login();">登录</a></span><span class="b_span5"></span>
<span class="b_span6 color-white" id="topSpan2"><a class="color-white" href="<?=SITE_URL?>?user/register.html">免费注册</a></span>


</div>
                 <? } ?>                 
        
         
         </div>
      </div>
   </div>
</div>

<!-- 搜索和logo -->
<div class="search-part bg-white hidden-sm hidden-xs">
<div class="container  ">
<div class="row">
  <div class="col-md-5">
   <a class="navbar-brand slideInLeft animated pull-left" href="<?=SITE_URL?>">
   <? if($setting['site_logo'] ) { ?>   
   <img src="<?=$setting['site_logo']?>">
   
   <? } else { ?> 
    <img src="<?=SITE_URL?>static/css/soso/logo.png">
   <? } ?> 
  
   
   </a>
   <p class="pull-left mar-l-1 logo-tip ">
 
   <? if(isset($setting['title_description']) ) { ?><?=$setting['title_description']?>
   <? } else { ?>     知名专家为您解答
   <? } ?> 
   
   </p>
  </div>
  <div class="col-md-7">
  <div class="search">
<div class="i_s_t">
<ul class="tag_ul">
<li class="i_s_current">全部</li>
<li class="">问题</li>
<li class="">文章</li>
<li class="">标签</li>
<li>用户</li>

</ul>

</div><!--i_s_t end-->

<!--全部 begin-->
<div class="i_s_c">
   <form class="sh-form" name="searchform" action="<?=SITE_URL?>?question/search.html" method="post">
<p><span class="i_s_text1">全部</span> <i class="icon icon-chevron-right text-success"></i></p>
<input  oninput="OnInput (event)" onpropertychange="OnPropChanged (event)" type="text" class="i_text1" autocomplete="off" maxlength="100" placeholder="<?=$setting['search_placeholder']?>"  tabindex="1" name="word" id="search-kw" value="<?=$word?>" >
<button type="submit"  id="search_btn" class="btnup" >搜 索</button>

  <? if(0!=$user['uid']) { ?><button type="button" id="ask_btn" onclick="window.location.href='<?=SITE_URL?>?question/add.html'" class="clear btnquestion" >提问</button>
  <? } else { ?>  <button type="button" id="ask_btn" onclick="login()" class="clear btnquestion" >提问</button>
    <? } ?>  </form>
   <ul class="nav search-list hide">
              
                     
                    </ul>
</div><!--i_s_c end-->
<!--end-->

<div class="clear"></div>
<div class="kfdh">

</div>
<div class="clear"></div>
</div>
  </div>
</div>
</div>
</div>
<!-- 导航 -->
<div class="nav_list hidden-sm hidden-xs">
<div class="nav2 container">
<ul>


                    
<? if(is_array($headernavlist)) { foreach($headernavlist as $headernav) { ?>
                    <? if($headernav['type']==1 && $headernav['available']) { ?>                   
                    
                    <li <? if(strstr($headernav['url'],$regular)) { ?> class="nav2_current"<? } ?>><a title="<?=$headernav['title']?>" href="<?=$headernav['format_url']?>"><?=$headernav['name']?></a></li>
                    <? } ?>                    
<? } } ?>
                    
</ul>

</div>
</div>