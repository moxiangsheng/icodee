<? if(!defined('IN_ASK2')) exit('Access Denied'); ?>
<!DOCTYPE html>
<html><? global $starttime,$querynum;$mtime = explode(' ', microtime());$runtime=number_format($mtime['1'] + $mtime['0'] - $starttime,6); $setting=$this->setting;$user=$this->user;$headernavlist=$this->nav;$regular=$this->regular;$toolbars="'".str_replace(",", "','", $setting['editor_toolbars'])."'"; ?><head >
    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <? if(isset($seo_title)) { ?>    <title><?=$seo_title?></title>
    <? } else { ?>    <title><? if($navtitle) { ?><?=$navtitle?> - <? } ?><?=$setting['site_name']?></title>
    <? } ?>    <? if(isset($seo_description)) { ?>    <meta name="description" content="<?=$navtitle?><?=$seo_title?><? echo cutstr($seo_description,160,'') ?>" />
    <? } else { ?>    <meta name="description" content="<?=$navtitle?><?=$seo_title?><?=$setting['site_name']?>" />
    <? } ?>    <meta name="keywords" content="<?=$navtitle?><?=$seo_title?><?=$seo_keywords?>" />
    <meta name="generator" content="Ask2 <?=ASK2_VERSION?> <?=ASK2_RELEASE?>" />
    <!-- Set render engine for 360 browser -->
    <meta name="renderer" content="webkit">

    <!-- No Baidu Siteapp-->
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <!-- Set render engine for 360 browser -->
    <meta name="renderer" content="webkit">

    <!-- No Baidu Siteapp-->
    <meta http-equiv="Cache-Control" content="no-siteapp"/>

    <link rel="icon" type="image/png" href="<?=SITE_URL?>css/amazeuiwap/assets/i/favicon.png">

    <!-- Add to homescreen for Chrome on Android -->
    <meta name="mobile-web-app-capable" content="yes">
    <link rel="icon" sizes="192x192" href="<?=SITE_URL?>css/amazeuiwap/assets/i/app-icon72x72@2x.png">

    <!-- Add to homescreen for Safari on iOS -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="ask2问答系统"/>
    <link rel="apple-touch-icon-precomposed" href="<?=SITE_URL?>css/amazeuiwap/assets/i/app-icon72x72@2x.png">

    <!-- Tile icon for Win8 (144x144 + tile color) -->
    <meta name="msapplication-TileImage" content="<?=SITE_URL?>css/amazeuiwap/assets/i/app-icon72x72@2x.png">
    <meta name="msapplication-TileColor" content="#0e90d2">
    <!--
      <link rel="canonical" href="http://www.ask2.cn/">
      -->

    <link rel="stylesheet" href="<?=SITE_URL?>css/amazeuiwap/assets/css/amazeui.min.css">
    <link rel="stylesheet" href="<?=SITE_URL?>css/amazeuiwap/assets/css/app.css">
    <script src="<?=SITE_URL?>css/amazeuiwap/assets/js/jquery.min.js" type="text/javascript"></script>
    <script src="<?=SITE_URL?>css/amazeuiwap/assets/js/amazeui.min.js" type="text/javascript"></script>
    <script type="text/javascript">var g_site_url = "<?=SITE_URL?>";
    var g_site_name = "<?=$setting['site_name']?>";
    var g_prefix = "<?=$setting['seo_prefix']?>";
    var g_suffix = "<?=$setting['seo_suffix']?>";
    var g_uid = <?=$user['uid']?>;</script>

</head>
<body>
<header data-am-widget="header" class="am-header am-header-default ">
    <div class="am-g am-padding-top-xs">
        <form action="" class="am-form am-form-inline"  id="searchForm" name="searchform"  action="<?=SITE_URL?>?question/search.html" method="post">
        <div class="am-u-sm-10">

                <div class="am-form-group am-form-icon">
                    <i class="am-icon-search"></i>
                    <input type="text" class="am-form-field" onpropertychange="handle();" oninput="handle();" tabindex="1" name="word" id="search-kw" value="<?=$word?>" placeholder="输入关键词">
                </div>




        </div>
        <div class="am-u-sm-2">

            <a class="am-btn am-btn-primary am-btn-block" type="button" id="search_btn">
             取消
            </a>
        </div>
        </form>
    </div>
</header>

<section class="am-container" >
    <div data-am-widget="titlebar" class="am-titlebar am-titlebar-default " >
        <h2 class="am-titlebar-title ">
            近期热点
        </h2>


    </div>
    <div class="am-margin-top-sm am-margin-left-sm">


        <ul class="am-avg-sm-3 boxes">
            <? $taglist=$this->fromcache('hosttaglist'); ?>            
<? if(is_array($taglist)) { foreach($taglist as $index => $tag) { ?>
            <li class="box box-<?=$index?>">
                <a  href="<?=SITE_URL?>?q=<?=$tag['name']?>.html" title="<?=$tag['name']?>" ><?=$tag['name']?></a>

            </li>
            
<? } } ?>
        </ul>
    </div>

   </section>
<script>
    document.getElementById("search_btn").addEventListener("click",cancel,false);
    //当状态改变的时候执行的函数
    function handle()
    {



        if( $("#search-kw").val()!=''){
            $("#search_btn").html("确定");
            document.getElementById("search_btn").removeEventListener("click",cancel,false);
            document.getElementById("search_btn").addEventListener("click",tijiao,false);

        }else{
            $("#search_btn").html("取消");
            document.getElementById("search_btn").removeEventListener("click",tijiao,false);
            document.getElementById("search_btn").addEventListener("click",cancel,false);
        }


    }
    function tijiao(){
        var query = '?';

        document.searchform.action = g_site_url + '' + query + 'question/search/2' + g_suffix;
        document.searchform.submit();

    }
    function cancel(){

        window.history.go(-1);
    }
</script>
</body>
</html>