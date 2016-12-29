<? if(!defined('IN_ASK2')) exit('Access Denied'); include template('header'); ?>
<section class="am-container">

<p class="am-cf am-margin-bottom-0 am-margin-top-xs"><span class="am-fl">

      <? if($question['hidden']) { ?>               匿名
                    <? } elseif($question['authorid']==0) { ?>                  <? if($question['ip']) { ?><?=$question['ip']?><? } else { ?>游客<? } ?>                    <? } else { ?>                  <a  href="<?=SITE_URL?>?u-<?=$question['authorid']?>.html" target="_blank" ><?=$question['author']?></a>
                    <? } ?></span> <span class="am-fr"><?=$question['format_time']?></span></p>
<hr>
<h1 class="am-margin-0 am-text-lg"><?=$question['title']?></h1><? if($question['description']!='') { ?>    <p class="am-margin-0">
        <article data-am-widget="paragraph"
                 class="am-paragraph am-paragraph-default am-margin-0"

                 data-am-paragraph="{ tableScrollable: true, pureview: true }">

   <? echo replacewords($question['description']);     ?>          

            </article>
    </p>
    <ul class="am-list">
        
<? if(is_array($supplylist)) { foreach($supplylist as $supply) { ?>
        <li><span class="am-margin-right-sm">问题补充 : <?=$supply['format_time']?></span>
      
         <? echo replacewords($supply['content']);     ?>        </li>
        
<? } } ?>
    </ul><? } ?><hr data-am-widget="divider" style="" class="am-divider am-divider-dotted" />
    <p class="am-margin-0">
        <? if($taglist) { ?>        <span class="am-fl">标签：
             
<? if(is_array($taglist)) { foreach($taglist as $tag) { ?>
                <a target="_blank" title="<?=$tag?>" href="<?=SITE_URL?>?tag-<?=$tag?>.html"><?=$tag?></a>

                
<? } } ?>
        </span>
        <? } ?>        <span class="am-fr">浏览<?=$question['views']?>次</span>
    </p>

   <? if($bestanswer['id']>0) { ?>    <hr data-am-widget="divider" style="" class="am-divider am-divider-dotted" />
<div data-am-widget="titlebar" class="am-titlebar am-titlebar-default am-margin-0" >
    <h2 class="am-titlebar-title ">
        最佳答案
    </h2>


</div>
<div class="am-g">
    <div class="am-u-sm-2">

        <a target="_blank" href="<?=SITE_URL?>?u-<?=$bestanswer['authorid']?>.html"><img src="<?=$bestanswer['author_avartar']?>"></a>
    </div>
    <div class="am-u-sm-8">
        <div class="am-u-sm-12">
            <a target="_blank" href="<?=SITE_URL?>?u-<?=$bestanswer['authorid']?>.html" ><?=$bestanswer['author']?></a>

        </div>

    </div>

    <div class="am-u-sm-2"><img class="am-img-thumbnail bestimg" src="<?=SITE_URL?>static/css/amazeuiwap/assets/img/bestanswer.png"> </div>
    <div class="am-u-sm-12">

        <span>等级:<?=$bestanswer['author_groupname']?></span>
        <span class="span-line">|</span>
        <span>采纳率<?=$bestanswer['adoption_rate']?>%</span>
        <span class="span-line">|</span>
        <span>回答于 <?=$bestanswer['format_time']?></span>
    </div>
    <div class="am-u-sm-12">
       
  <? echo replacewords($bestanswer['content']);     ?>        
<? if(is_array($bestanswer['appends'])) { foreach($bestanswer['appends'] as $append) { ?>
        <? if($append['authorid']==$bestanswer['authorid']) { ?>        <blockquote>回答:<span class='time'><?=$append['format_time']?></span></blockquote>
        <? } else { ?>        <blockquote>追问:<span class='time'><?=$append['format_time']?></span></blockquote>

        <? } ?>        <blockquote> 
          <? echo replacewords($append['content']);     ?>       </blockquote>

        
<? } } ?>
    </div>
    <div class="am-u-sm-12 am-cf">
        <span class="am-fl" id="<?=$bestanswer['id']?>">
            <i  class="am-icon-thumbs-up button_agree"><?=$bestanswer['supports']?></i>
        </span>
         <span class="am-fr" onclick="show_comment('<?=$bestanswer['id']?>');" >
            评论(<?=$bestanswer['comments']?>)
        </span>
    </div>
    <div class="am-u-sm-12">


        <div class="comments-mod" style="display: none;" id="comment_<?=$bestanswer['id']?>">
            <div class="areabox clearfix">
                <input type="text"  class="am-form-field comment-input" name="content" />
                <input type='hidden' value='0' name='replyauthor' />
                <input type="button" value="评论"  class="am-btn am-btn-primary am-margin-top-sm" name="submit" onclick="addcomment(<?=$bestanswer['id']?>);"/>
            </div>
            <ul class="am-list">
                <li class="loading"><img src='<?=SITE_URL?>static/css/default/loading.gif' align='absmiddle' />&nbsp;加载中...</li>
            </ul>
        </div>
    </div>
</div>
   <? } ?><hr class="am-divider am-divider-dashed"><? if(!$already && $user['uid']!= $question['authorid']) { ?>    <div data-am-widget="titlebar" class="am-titlebar am-titlebar-default am-margin-0" >
        <h2 class="am-titlebar-title ">
            我还有其它答案
        </h2>


    </div>

   <form class="am-form"  name="answerForm" >
     <input type="hidden" value="<?=$question['id']?>" id="ans_qid" name="qid">
                <input type="hidden" value="<?=$question['title']?>" id="ans_title" name="title">


           <textarea name="content" id="anscontent" class="am-form-field am-input-lg am-margin-bottom-sm" placeholder="请输入评论内容"></textarea>


       <? if($setting['code_ask']) { ?>       <input type="text" onblur="check_code()" name="code" id="code" class="code-input" placeholder="请输入验证码">
     <span class="verifycode">
         <img id="verifycode" onclick="javascript:updatecode();" src="<?=SITE_URL?>?user/code.html">
     </span>
       <a class="changecode" href="javascript:updatecode();">&nbsp;换一个</a>
       <span id="codetip"></span>
       <? } ?>       <button type="button" id="answsubmit" name="submit"  class="am-btn am-btn-primary am-margin-top-sm">确定</button>
   </form>
   
   <script>
                
   $("#answsubmit").click(function(){
 var eidtor_content= $.trim($("#anscontent").val());
if(eidtor_content==''){

 alert('评论不能为空')
 return false;
}
  <? if($setting['code_ask']) { ?>  var data={
 			content:eidtor_content,
 			qid:$("#ans_qid").val(),
 			title:$("#ans_title").val(),
 			code:$("#code").val()
 	}
    <? } else { ?>var data={
   			content:eidtor_content,
   			qid:$("#ans_qid").val(),
     			title:$("#ans_title").val(),
   			
   	}
     <? } ?>  
    	 var el='';
$.ajax({
       //提交数据的类型 POST GET
       type:"POST",
       //提交的网址
       url:"<?=SITE_URL?>?question/ajaxanswer.html",
       //提交的数据
       data:data,
       //返回数据的格式
       datatype: "json",//"xml", "html", "script", "json", "jsonp", "text".
       //在请求之前调用的函数
       beforeSend:function(){
    	   
       },
       //成功返回之后调用的函数             
       success:function(data){
    	  
       	var data=eval("("+data+")");
          if(data.message=='ok'){
       	 
       
       	 alert('回答成功!');
       	   setTimeout(function(){
                  window.location.reload();
              },500);
          }else{
       	 
    
        alert(data.message);
          }
         
        
       }   ,
       //调用执行后调用的函数
       complete: function(XMLHttpRequest, textStatus){
    	  
       },
       //调用出错执行的函数
       error: function(){
           //请求出错处理
       }         
    });
return false;
})
                
                </script>
                
                <? } if($answerlist) { ?><div class="am-list-news-hd am-cf">

        <a href="javascript:void(0)">
            <h2>回答(<?=$rownum?>)</h2>

        </a>
    </div><? } if(is_array($answerlist)) { foreach($answerlist as $index => $answer) { ?>
    <article class="am-comment am-margin-top-sm"  id="comment_<?=$index?>">
        <a href="<?=SITE_URL?>?u-<?=$answer['authorid']?>.html">
            <img  alt="<?=$answer['author']?>" src="<?=$answer['author_avartar']?>" class="am-comment-avatar" width="48" height="48"/>
        </a>

        <div class="am-comment-main">
            <header class="am-comment-hd">
                <!--<h3 class="am-comment-title">评论标题</h3>-->
                <div class="am-comment-meta">
                    <a href="<?=SITE_URL?>?u-<?=$answer['authorid']?>.html" class="am-comment-author"><?=$answer['author']?></a>
                    评论于 <time datetime="<?=$answer['time']?>" ><?=$answer['time']?></time>
                </div>
            </header>

            <div class="am-comment-bd">
                <p>
                   <? echo replacewords($answer['content']);     ?>  
                </p>
                
<? if(is_array($answer['appends'])) { foreach($answer['appends'] as $append) { ?>
                    <? if($append['authorid']==$answer['authorid']) { ?>                    <blockquote>回答:<span class='time'><?=$append['format_time']?></span></blockquote>
                    <? } else { ?>                    <blockquote>追问:<span class='time'><?=$append['format_time']?></span></blockquote>

                    <? } ?>                    <blockquote> 
                       <? echo replacewords($append['content']);     ?>  
                   </blockquote>

                
<? } } ?>
            </div>
            <footer class="am-comment-footer">
                <div class="am-comment-actions am-cf">
                    <a href="javascript:void(0);"  id="<?=$answer['id']?>"><i  id="my-popover"  class="am-icon-thumbs-up button_agree"><?=$answer['supports']?></i></a>

                    <a href="javascript:void(0)" class="am-fr" asid="<?=$answer['id']?>" id="cm_<?=$answer['id']?>"   onclick="show_comment('<?=$answer['id']?>');"><i class="am-icon-comment"></i><?=$answer['comments']?></a>
                </div>
                <div class="comment" id="comment_<?=$answer['id']?>" style="display: none;">
                    <!--<div class="comm-arrow-label"></div> -->

                    <ul class="am-list ">

                    </ul>

                    <div class="comm-box zero-answer">


                        <textarea name="content" class="am-form-field am-input-lg am-margin-bottom-sm comment-input" placeholder="请输入评论内容"></textarea>



                    </div>
                    <div class="functions mt15 cf">



                        <input type='hidden' value='0' name='replyauthor' />
                        <button type="button" name="submit" onclick="addcomment(<?=$answer['id']?>);" class="am-btn am-btn-primary am-btn-block" >
                            发布评论
                        </button>

                    </div>
                </div>
            </footer>
        </div>
    </article>
<? } } ?>
<div class="am-modal am-modal-confirm" tabindex="-1" id="my-confirm">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">温馨提示</div>
        <div class="am-modal-bd">
            你，确定要删除这条记录吗？
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn" data-am-modal-cancel>取消</span>
            <span class="am-modal-btn" data-am-modal-confirm>确定</span>
        </div>
    </div>
</div>
<div class="pages">
    <?=$departstr?>
</div>
<!--相关已解决问题-->
<div data-am-widget="list_news" class="am-list-news am-list-news-default">
    <!--列表标题-->
    <div class="am-list-news-hd am-cf">
        <!--带更多链接-->
        <a href="<?=SITE_URL?>?c-<?=$question['cid']?>/all/1.html">
            <h2>相似已解决问题</h2>

            <a href="<?=SITE_URL?>?c-<?=$question['cid']?>/all/1.html"> <span class="am-list-news-more am-fr">更多 &raquo;</span></a>
        </a>
    </div>
    <div class="am-list-news-bd">
        <ul class="am-list">
            
<? if(is_array($solvelist)) { foreach($solvelist as $index => $solve) { ?>
            <li class="am-g am-list-item-desced">
                <a title="<?=$solve['title']?>" href="<?=SITE_URL?>?q-<?=$solve['id']?>.html" class="am-list-item-hd"><?=$solve['title']?></a>
             
                <div class="am-cf">
                    <small>  <span class="am-fl am-text-top">
                              <img width="25" height="25"   src="<?=$solve['avatar']?>"/>
                            <?=$solve['author']?></span> <span class="am-fr"><?=$solve['format_time']?></span></small>
                </div>
            </li>
            
<? } } ?>
        </ul>
    </div>
</div>

    <!--待解决问题-->
    <div data-am-widget="list_news" class="am-list-news am-list-news-default">
        <!--列表标题-->
        <div class="am-list-news-hd am-cf">
            <!--带更多链接-->
            <a href="<?=SITE_URL?>?c-all.html">
                <h2>帮助Ta们</h2>
                <span class="am-list-news-more am-fr">更多 &raquo;</span>
            </a>
        </div>
        <div class="am-list-news-bd">
            <ul class="am-list">
                <? $nosolvelist=$this->fromcache('nosolvelist'); ?>                
<? if(is_array($nosolvelist)) { foreach($nosolvelist as $index => $question) { ?>
                <li class="am-g am-list-item-desced">
                    <a title="<?=$question['title']?>" href="<?=SITE_URL?>?q-<?=$question['id']?>.html" class="am-list-item-hd am-text-default"><?=$question['title']?></a>
                   
                    <div class="am-cf">
                        <small>  <span class="am-fl"><?=$question['author']?></span> <span class="am-fr"><?=$question['format_time']?></span></small>
                    </div>
                </li>
                
<? } } ?>
            </ul>
        </div>
    </div>


</section>





<script type="text/javascript">

    $(document).ready(function() {




        $(".button_agree").click(function(){
            var supportobj = $(this);
            var answerid = $(this).parent().attr("id");
            var valcount= $(this).html();

            $.ajax({
                type: "GET",
                url:"<?=SITE_URL?>index.php?answer/ajaxhassupport/" + answerid,
                cache: false,
                success: function(hassupport){

                    if (hassupport != '1'){

                        $.ajax({
                            type: "GET",
                            cache:false,
                            url: "<?=SITE_URL?>index.php?answer/ajaxaddsupport/" + answerid,
                            success: function(comments) {
                                valcount=parseInt(valcount)+1;
                                // supportobj.val(valcount);
                                supportobj.html(valcount);
                            }
                        });



                    }else{

                        $('#my-popover').popover({
                            content: '您已经赞过'
                        }).show(1000,function(){
                            $('#my-popover').popover('close');
                        });

                    }
                }
            });
        });

    });
    $(".add-comment").click(function(){
        var id=$(this).attr("asid");

        show_comment(id);
    });
    function show_comment(answerid) {

        if ($("#comment_" + answerid).css("display") === "none") {

            load_comment(answerid);
            $("#comment_" + answerid).slideDown();
        } else {
            $("#comment_" + answerid).slideUp();
        }
    }







    //添加评论
    function addcomment(answerid) {
        var content = $("#comment_" + answerid + " .comment-input").val();

        var replyauthor = $("#comment_" + answerid + " input[name='replyauthor']").val();

        if (g_uid == 0){
            window.location.href='<?=SITE_URL?>?user/login.html';
            return false;
        }
        if (bytes($.trim(content)) < 2){
            alert("评论内容不能少于2字");
            return false;
        }

        $.ajax({
            type: "POST",
            url: "<?=SITE_URL?>?answer/addcomment.html",
            data: "content=" + content + "&answerid=" + answerid+"&replyauthor="+replyauthor,
            success: function(status) {
                if (status == '1') {
                    $("#comment_" + answerid + " input[name='content']").val("");
                    load_comment(answerid);
                }
            }
        });
    }

    //删除评论
    function deletecomment(commentid, answerid) {
      //  if (!confirm("确认删除该评论?")) {
       //     return false;
      //  }
        $('#my-confirm').modal({
            relatedTarget: this,
            onConfirm: function(options) {

                $.ajax({
                    type: "POST",
                    url: "<?=SITE_URL?>?answer/deletecomment.html",
                    data: "commentid=" + commentid + "&answerid=" + answerid,
                    success: function(status) {
                        if (status == '1') {
                            load_comment(answerid);
                        }
                    }
                });
            },
            // closeOnConfirm: false,
            onCancel: function() {

            }
        });
        return false;

    }
    function load_comment(answerid){
        $.ajax({
            type: "GET",
            cache:false,
            url: "<?=SITE_URL?>index.php?answer/ajaxviewcomment/" + answerid,
            success: function(comments) {
                $("#comment_" + answerid + " .am-list").html(comments);
                $(comments+"*").addClass("am-margin-0");
                $(comments+"img").addClass("am-margin-top-sm");
                var len= $("#comment_" + answerid + " .am-list").find("li").length;
                $("#cm_"+answerid).html("<i class='am-icon-comment'></i><em>"+len+"<em>");
            }
        });
    }
    function bytes(str) {
        var len = 0;
        for (var i = 0; i < str.length; i++) {
            if (str.charCodeAt(i) > 127) {
                len++;
            }
            len++;
        }
        return len;
    }
    function replycomment(commentauthorid,answerid){
        var comment_author = $("#comment_author_"+commentauthorid).attr("title");
        $("#comment_"+answerid+" .comment-input").focus();
        $("#comment_"+answerid+" .comment-input").val("回复 "+comment_author+" :");
        $("#comment_" + answerid + " input[name='replyauthor']").val(commentauthorid);
    }



</script>
<? include template('footer'); ?>
