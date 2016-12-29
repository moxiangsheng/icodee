<? if(!defined('IN_ASK2')) exit('Access Denied'); ?>

<footer data-am-widget="footer"
        class="am-footer am-footer-default"
        data-am-footer="{  }">
    <hr class="am-divider am-divider-dashed">
    <div data-am-widget="gotop" class="am-gotop am-gotop-fixed" >
        <a href="#top" title="">
            <i class="am-gotop-icon am-icon-hand-o-up"></i>
        </a>
    </div>

    <div class="am-footer-miscs ">

   
        <p>CopyRight©2016  <?=$setting['site_name']?></p>
      
    </div>
</footer>


<div data-am-widget="navbar" class="am-navbar am-cf am-navbar-default " id="">
       <ul class="am-navbar-nav am-cf am-avg-sm-4">
        <li>
            <a href="<?=SITE_URL?>" class="">
                <span class="am-icon-home"></span>
                <span class="am-navbar-label">首页</span>
            </a>
        </li>

        <li >
            <a href="<?=SITE_URL?>?topic/default.html"  class="">
                <span class="am-icon-newspaper-o"></span>
                <span class="am-navbar-label">新闻</span>
            </a>
        </li>
        <li >
            <a href="<?=SITE_URL?>?question/add.html" class="">
                <span class="am-icon-plus"></span>
                <span class="am-navbar-label">提问</span>
            </a>
        </li>
        <li >
            <a href="<?=SITE_URL?>?question/searchkey.html" class="">
                <span class="am-icon-search"></span>
                <span class="am-navbar-label">搜索</span>
            </a>
        </li>
        <li >
        
          <? if(0!=$user['uid']) { ?>            <a href="javascript:void(0)" data-am-offcanvas="{target: '#doc-oc-demo2', effect: 'push'}" class="">
                <span class="am-icon-user"></span>
                <span class="am-navbar-label">我</span>
            </a>

            <? } else { ?>  <a href="<?=SITE_URL?>?user/login.html" class="">
                <span class="am-icon-user"></span>
                <span class="am-navbar-label">我</span>
            </a>
            
            
            <? } ?>            
          
        </li>
    </ul>
  </div>


    <script src="<?=SITE_URL?>static/js/sowenda/common.js" type="text/javascript"></script>
   
</body>
</html>