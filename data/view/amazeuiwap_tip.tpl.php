<? if(!defined('IN_ASK2')) exit('Access Denied'); include template('header'); ?>
<section class="am-container" >
<div class="tipcontent mt30">
    <div class="am-center am-text-center"><?=$message?></div>
    <div class="am-center am-text-center">
        <? if($redirect == 'BACK') { ?>        <a  href="javascript:history.go(-1);">返回原处</a>&nbsp;&nbsp;
        <a  href="<?=SITE_URL?>?user/ask.html">我的提问</a>&nbsp;&nbsp;
        <a  href="<?=SITE_URL?>">回到首页</a>  
        <? } elseif($redirect!='STOP') { ?>        页面将在<span id="seconds">3</span>秒后自动跳转到下一页，你也可以直接点 <a href="<?=$redirect?>" >立即跳转</a>。
        <script type="text/javascript">
            var seconds = 3;
            window.setInterval(function() {
                seconds--;
                if (seconds == 1) {
                    window.location = "<?=$redirect?>";
                }
                $("#seconds").html(seconds);
            }, 1000);
        </script>
        <? } ?>    </div>
</div>
   </section>
<? include template('footer'); ?>
