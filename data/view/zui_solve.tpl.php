<? if(!defined('IN_ASK2')) exit('Access Denied'); include template('header'); ?>
  <? $adlist = $this->fromcache("adlist"); ?>    <? if(0!=$user['uid']) { ?><script src="<?=SITE_URL?>static/js/neweditor/ueditor.config.js" type="text/javascript"></script> 
<script src="<?=SITE_URL?>static/js/neweditor/ueditor.all.min.js" type="text/javascript"></script> 

    <? } ?>   
      <link href="<?=SITE_URL?>static/css/dist/css/question.css" rel="stylesheet">
<div class="ask_wp container">
<div class="ask_sub_nav nomargin">
 
<? if(is_array($navlist)) { foreach($navlist as $nav) { ?>
    <a href="<?=SITE_URL?>?c-<?=$nav['id']?>.html"><?=$nav['name']?></a>
 <span>&gt;</span>
    
<? } } ?>
    

 <a href="<?=SITE_URL?>?q-<?=$question['id']?>.html" data-bn-ipg="" class="title_ellipsis">
      <?=$question['title']?> </a>
 </div>

<div class="row ask_item mt20">
<!-- 右侧导航 -->
<div class="ask_item_main ask_item_detail_bg  col-sm-8 col-xs-12 side-box nomargin">
<div class="ask_detail_item clearfix"> 
                                                                  
                <div class="ask_detail_content">
                    

                                        <div class="ui_headPort" alt="1429837">
                        <a class="avatar" href="<?=SITE_URL?>?u-<?=$question['authorid']?>.html" data-bn-ipg="7-1">
                            <img  onmouseover="pop_user_on(this, '<?=$question['authorid']?>', '');"  onmouseout="pop_user_out();" src="<?=$question['author_avartar']?>" width="80" height="80" alt="<?=$question['author']?>" >
                            
                        </a>
                    </div>
                    
                    <div class="ask_detail_content_tag">
                                        <? if($taglist) { ?>       
                                       
<? if(is_array($taglist)) { foreach($taglist as $tag) { ?>
                  <a href="<?=SITE_URL?>?tag-<?=$tag?>.html" class="ask_tag_add" data-bn-ipg="7-2"><strong class="ask_tag_strong"><?=$tag?></strong></a>
                                       
                
<? } } } else { } ?>                                        </div>
                    
                    <h2 class="ask_detail_content_title qyer_spam_text_filter"><?=$question['title']?></h2>
                    <div class="question-info clearfix mt10">
                        
                        <?=$question['format_time']?>
                                                    <span class="from-bbs cGray">
                                来自 <a title="<?=$question['author']?>" href="<?=SITE_URL?>?u-<?=$question['authorid']?>.html" data-bn-ipg="7-4"><?=$question['author']?></a> 的问题
                            </span>
                                                
                    </div>                   
                    <div class="ask_detail_content_text qyer_spam_text_filter">
                   <? echo replacewords($question['description']);     ?>     
                   <? if($supplylist) { ?>     
                       <ul class="nav">
                    
<? if(is_array($supplylist)) { foreach($supplylist as $supply) { ?>
                    <li><span class="time">问题补充 : <?=$supply['format_time']?></span>
                      <? echo replacewords($supply['content']);     ?>                    
                    </li>
                    
<? } } ?>
                </ul>
                <? } ?>                
                    </div>
                   
                    
                    <div class="clearfix mt10 ">

                        <div class="fl mt10">
                                                        <span class="fl"><i class="icon icon-eye-open" style="font-size:1.1em"></i> <?=$question['views']?>人浏览 </span>
                                                        <span class="line">|</span>
                                                        <span class="fl"><i class="icon icon-comments" style="font-size:1.1em"></i> <?=$question['answers']?> 个回答</span>
                                                        <span class="line">|</span>

                            <span class="fl"><i class="icon icon-star" style="font-size:1.1em"></i><?=$question['attentions']?>人关注 </span>

                            
                        </div>
                                                <span class="fr">
                           
                           
                                                         
  <? if($is_followed) { ?>                                          
   <a  href="javascript:;" id="attenttoquestion" value="2892089" class="button_followed ui_btn_big jsaddquestionatten" onclick="attentto_question(<?=$question['id']?>)" id="attenttoquestion" data-bn-ipg="ask-answer-follow">取消关注</a>
    
                    <? } else { ?>                    
                                        
   <a href="javascript:;"  value="2892089" class="button_attention ui_btn_big jsaddquestionatten" onclick="attentto_question(<?=$question['id']?>)" id="attenttoquestion" data-bn-ipg="ask-answer-follow">关注问题</a>
    
                    <? } ?>                                                                                   
                                                                                     
                                                      <? if(0!=$user['uid']) { ?>   <? if(!$already && $user['uid']!= $question['authorid']) { ?>                                
                                                        <input type="button" value="回答问题" class="ui_btn_big jsjumptoanswer" onclick="setFocus()" data-bn-ipg="ask-answer-answer">
                         <? } ?>                           <? } ?>                        </span>
                                            </div>
                </div>
                
                 <div class="row">
  <div class="col-sm-12">
  <div class="share-content" style="margin-left:25px;"><?=$setting['question_share']?></div>
  </div>
</div>
            </div>
            
            
            <!-- 回答列表和回答编辑器 -->
            <div class="ask_detail_comment mt20">
                

                                
                                 
                 
                 

                 
   <? if($bestanswer['id']>0) { ?>   <div class="mod_discuss clearfix jsanswerbox" id='<?=$bestanswer['id']?>'>
      
    
            <a  data-placement="bottom" title="" data-toggle="tooltip" data-original-title="赞同回复" href="javascript:;" data-bn-ipg="8-1-1-8" class=" jsaskansweruseful useful_left  button_agree" value="3284423">
        <span class="upvote-count"><?=$bestanswer['supports']?></span>
        </a>
           
        
    

    
    <div class="mod_discuss_cnt">
        <!-- <div class="mod_discuss_cnt_triangle"></div> -->
        <div class="mod_discuss_box">
            <div class="jsanswercontent">
                <div class="mod_discuss_box_name">
                    <div class="mod_discuss_face">
                                                                            
                        <div class="ui_headPort" alt="2145180">
                            <a data-placement="bottom" title="" data-toggle="tooltip" data-original-title="<?=$bestanswer['author']?>" class="avatar ava40" data-bn-ipg="8-1-1-1" href="<?=SITE_URL?>?u-<?=$bestanswer['authorid']?>.html">
                                <img src="<?=$bestanswer['author_avartar']?>" width="80" height="80" class="ui_headPort_img" alt="<?=$bestanswer['author']?>" >
                                
                            </a>
                        </div>
                    </div>
                    <a data-bn-ipg="8-1-1-2" href="<?=SITE_URL?>?u-<?=$bestanswer['authorid']?>.html"><?=$bestanswer['author']?></a>
                                        <span class="text-danger">回答被采纳 </span> <span class="ico_point">.</span> <a href="" class="normal_text"><?=$bestanswer['format_time']?></a>                </div>
                <div class="mod_discuss_box_text qyer_spam_text_filter"> 
                 <? echo replacewords($bestanswer['content']);     ?>                    <div class="appendcontent font-12">
                    
<? if(is_array($bestanswer['appends'])) { foreach($bestanswer['appends'] as $append) { ?>
       
                    <div class="appendbox">
                        <? if($append['authorid']==$bestanswer['authorid']) { ?>                        <h4 class="appendanswer font-12">回答:<span class="time"><?=$append['format_time']?></span></h4>
                        <? } else { ?>                        <h4 class="appendask font-12">追问:<span class='time'><?=$append['format_time']?></span></h4>
                        <? } ?>                         <? echo replacewords($append['content']);     ?>                                                    
                    <div class="clr"></div>
                    </div>
                    
<? } } ?>
                </div>
                 </div>

                <div class="mod_discuss_box_tool clearfix">
                    <div class="mt5">

                        <span class=" fl">
                        <i class="icon icon-window-alt mar-y-05 font12"></i>
                                                <a onclick="show_comment('<?=$bestanswer['id']?>');"  data-bn-ipg="8-1-1-4" href="javascript:;" class="icon_discuss jsslideshowcomment" alt="3284423" value="0" rel="bestow07" isself="0"><span>
                               添加讨论(<?=$bestanswer['comments']?>)</span>
                        </a>
                                                </span>
                                                
                                                  <? if(1==$setting['openwxpay'] ) { ?>                                       
                                        <span class="hand operate label  mar-l-1">
<a class="shangke " data-placement="bottom" title="" data-toggle="tooltip" data-original-title="回答求赏" onclick="wxpay('aid',<?=$bestanswer['id']?>,<?=$bestanswer['authorid']?> );"><i class="icon icon-yen color-white"></i> <b class="count color-white">0.00</b></a>
</span><? } ?>                                                  <? if($user['grouptype']==1) { ?>                             <span class="span-line mar-ly-05">|</span>
                             <span class="admin"><a data-placement="bottom" title="" data-toggle="tooltip" data-original-title="重新编辑回复内容" href="<?=SITE_URL?>?question/editanswer/<?=$bestanswer['id']?>.html">编辑内容</a>
                            <? } ?>                        
                       

                                     
                     

                    </div>
                       
<div class="comments-mod "  style="display: none; float:none;padding-top:30px;" id="comment_<?=$bestanswer['id']?>">
                    <div class="areabox clearfix">
                        
                        
                  <div class="input-group">
             <input type="text" placeholder="请输入评论内容，不少于2个字" class="comment-input form-control" name="content" />
                        <input type='hidden' value='0' name='replyauthor' />
              <span class="input-group-btn"><input type="button" value="评论"  class="btn btn-green" name="submit" onclick="addcomment(<?=$bestanswer['id']?>);"/> </span>
            </div>
                  
                    </div>
                    <ul class="comments-list nav">
                        <li class="loading">
                        <img src='<?=SITE_URL?>static/css/default/loading.gif' align='absmiddle' />
                        &nbsp;加载中...
                        </li>
                    </ul>
                </div>
                </div>
            </div>

            <div class="stamp"></div>

            
        </div>
        <!-- 讨论开始 -->
   
        <!-- 讨论结束 -->
    </div>
</div> 
    <? } ?>                     
    
<? if(is_array($answerlist)) { foreach($answerlist as $index => $answer) { ?>
                  
<div class="mod_discuss clearfix jsanswerbox" id='<?=$answer['id']?>'>
      
    
            <a  data-placement="bottom" title="" data-toggle="tooltip" data-original-title="赞同回复" href="javascript:;" data-bn-ipg="8-1-1-8" class=" button_agree jsaskansweruseful useful_left  " value="3284423">
        <span class="upvote-count"><?=$answer['supports']?></span>
        </a>
           
        
    

    
    <div class="mod_discuss_cnt">
        <!-- <div class="mod_discuss_cnt_triangle"></div> -->
        <div class="mod_discuss_box">
            <div class="jsanswercontent">
                <div class="mod_discuss_box_name">
                    <div class="mod_discuss_face">
                                                                            
                        <div class="ui_headPort" alt="2145180">
                            <a data-placement="bottom" title="" data-toggle="tooltip" data-original-title="<?=$answer['author']?>" class="avatar ava40" data-bn-ipg="8-1-1-1" href="<?=SITE_URL?>?u-<?=$answer['authorid']?>.html">
                                <img src="<?=$answer['author_avartar']?>" width="80" height="80" class="ui_headPort_img" alt="<?=$answer['author']?>">
                                
                            </a>
                        </div>
                    </div>
                    <a data-bn-ipg="8-1-1-2" href="<?=SITE_URL?>?u-<?=$answer['authorid']?>.html"><?=$answer['author']?></a>
                                        回答了问题 <span class="ico_point">.</span> <a href="" class="normal_text"><?=$answer['time']?></a>                </div>
                <div class="mod_discuss_box_text qyer_spam_text_filter">
                <? echo replacewords($answer['content']);     ?>                
                 <div class="appendcontent">
                                
<? if(is_array($answer['appends'])) { foreach($answer['appends'] as $append) { ?>
       
                                <div class="appendbox">
                                    <? if($append['authorid']==$answer['authorid']) { ?>                                    <h4 class="appendanswer font-15">回答:<span class="time">
                                    <?=$append['format_time']?></span></h4>
                                    <? } else { ?>                                    <h4 class="appendask font-15">追问:<span class='time'><?=$append['format_time']?></span></h4>
                                    <? } ?>                                          <? echo replacewords($append['content']);     ?>                                                                
                                <div class="clr"></div>
                                </div>
                                
<? } } ?>
                        </div>
                
                </div>

                <div class="mod_discuss_box_tool clearfix">
                    <div class="mt5">

                        <span class=" fl">
                        <i class="icon icon-window-alt mar-y-05"></i>
                                                <a onclick="show_comment('<?=$answer['id']?>');" data-bn-ipg="8-1-1-4" href="javascript:;" class="icon_discuss jsslideshowcomment" alt="3284423" value="0" rel="bestow07" isself="0"><span>
                               添加讨论(<?=$answer['comments']?>)</span>
                        </a>
                                                </span>
                        
                      <? if(1==$setting['openwxpay'] ) { ?>                                       
                                        <span class="hand operate label  mar-l-1">
<a class="shangke " data-placement="bottom" title="" data-toggle="tooltip" data-original-title="回答求赏" onclick="wxpay('aid',<?=$answer['id']?>,<?=$answer['authorid']?> );"><i class="icon icon-yen color-white"></i> <b class="count color-white">0.00</b></a>
</span><? } ?>     
                                
      <? if($user['uid']>0) { ?>      
         <? if(1==$user['grouptype'] ||$user['uid']==$question['authorid']) { ?>                                <a class="text-danger mar-l-05" data-placement="bottom" title="" data-toggle="tooltip" data-original-title="采纳回答" href="javascript:void(0);" onclick="adoptanswer(<?=$answer['id']?>);" >采纳为满意回答</a>
                                <? } ?>                                
                          <? if($user['uid']==$question['authorid']) { ?>          
         
            
            <a data-placement="bottom" title="" data-toggle="tooltip" data-original-title="继续回答问题" href="<?=SITE_URL?>?answer/append/<?=$question['id']?>/<?=$answer['id']?>.html" class="text-green mar-l-1 operate jsjubaoanswer mr10 fl"  > 继续追问</a>     
              
              <? } elseif($user['uid']==$answer['authorid']) { ?>               
            <a data-placement="bottom" title="" data-toggle="tooltip" data-original-title="修改自己答案" class="mar-l-1 text-green" href="<?=SITE_URL?>?question/editanswer/<?=$answer['id']?>.html">修改答案</a>
               
              <a data-placement="bottom" title="" data-toggle="tooltip" data-original-title="继续回答问题" class="mar-l-1 text-green" href="<?=SITE_URL?>?answer/append/<?=$question['id']?>/<?=$answer['id']?>.html">继续回答</a>
               <? } ?>                <? } ?>                
                   
                     
                
                    </div>
             
                 
        <div class="comments-mod " style="display: none; float:none;padding-top:30px;" id="comment_<?=$answer['id']?>">
                            <div class="areabox clearfix" >
                               
                               <div class="input-group">
             <input type="text" placeholder="请输入评论内容，不少于2个字" class="comment-input form-control" name="content" />
                        <input type='hidden' value='0' name='replyauthor' />
              <span class="input-group-btn"><input type="button" value="评论"  class="btn btn-green" name="submit" onclick="addcomment(<?=$answer['id']?>);"/> </span>
            </div>
                          
                            </div>
                            <ul class="comments-list nav">
                                <li class="loading text-left"><img src='<?=SITE_URL?>static/css/default/loading.gif' align='absmiddle' />&nbsp;加载中...</li>
                            </ul>
                        </div>
                </div>
            </div>

            <div class="stamp"></div>

            
        </div>
        <!-- 讨论开始 -->
   
        <!-- 讨论结束 -->
    </div>
</div> 
                                                
      
<? } } ?>
           
 <div class="pages" style="padding-left:30px;"><?=$departstr?></div>                

                                                <a name="questionanswer" id="questionanswer" style="margin-top: -150px; position: absolute;">&nbsp;</a>                
                                                  <? if(0!=$user['uid']) { ?>   <? if(!$already && $user['uid']!= $question['authorid']) { ?>   
   <? if($setting['register_on']==1&&$user['active']!=1) { ?>    <p class="mar-t-1">由于网站设置，需要设置邮箱并且激活邮箱才能提问,回答，发布文章等一系列操作,<a class="text-danger" href="<?=SITE_URL?>?user/editemail.html"> 激活邮箱走起!</a></p>
       <? } else { ?>       
       
                                <div class="mod_discuss clearfix mt10">
                    <div class="mod_discuss_face ui_headPort" alt="8572777">
                           <a href="<?=SITE_URL?>?u-<?=$user['uid']?>.html" class="fl" data-bn-ipg="9-1"><img src="<?=$user['avatar']?>" width="80" height="80" alt="<?=$user['username']?>"></a>                    </div>
                    <div class="mod_discuss_cnt mod_noborder">

       <form id="huidaform"  name="answerForm"  method="post">
<div class="row comment-form">

  
    <div class="col-sm-12 ">
       <div class="your-answer">
                    <script type="text/plain" id="anscontent" name="content" style="height: 122px;"></script>
                   <script type="text/javascript">  
              
               
            var editor = UE.getEditor('anscontent',{  
                //这里可以选择自己需要的工具按钮名称,此处仅选择如下五个  
                toolbars:[[<?=$setting['editor_toolbars']?>]],
               
                //focus时自动清空初始化时的内容  
                autoClearinitialContent:true,  
                //关闭字数统计  
                wordCount:false,  
                //关闭elementPath  
                elementPathEnabled:false,  
                //默认的编辑区域高度  
                initialFrameHeight:150  
                //更多其他参数，请参考ueditor.config.js中的配置项  
                //更多其他参数，请参考ueditor.config.js中的配置项  
            });  
        </script> 
                </div>
    </div>
    <div class="col-sm-12 mar-t-05">
  
        <div class="row">
            <div class="col-sm-10">
              <? if($setting['code_ask']) { ?>                <div class="row">
                    <div class="col-sm-4">
                        <span class="">验证码</span>
                        <input onblur="check_code()" autocomplete="OFF" name="code" id="code" type="text" class="input-code">
                    </div>

                    <div class="col-sm-8">
                        <span class="verifycode"><img class="hand" id="verifycode" onclick="javascript:updatecode();" src="<?=SITE_URL?>?user/code.html"></span>
                        <a href="javascript:updatecode();" class="changecode">&nbsp;换一个</a>
                        <span id="codetip" class="input_error alert alert-warning hide"></span>
                    </div>
                </div>
                   <? } ?>            </div>
            <div class="col-sm-2">
             <input type="hidden" value="<?=$question['id']?>" id="ans_qid" name="qid">
                <input type="hidden" value="<?=$question['title']?>" id="ans_title" name="title">
                <button type="button" id="answsubmit" class="btn btn-success pull-right">

                    提交
                </button>
            </div>
        </div>
      
    </div>
</div>

  </form>
  

 
                    </div>
                </div>
                <script>
                
                $("#answsubmit").click(function(){
                	 var eidtor_content= editor.getContent();
                	
                	  <? if($setting['code_ask']) { ?>                	  var data={
                  			content:eidtor_content,
                  			qid:$("#ans_qid").val(),
                  			title:$("#ans_title").val(),
                  			code:$("#code").val()
                  	}
                	    <? } else { ?>                		var data={
                    			content:eidtor_content,
                    			qid:$("#ans_qid").val(),
                      			title:$("#ans_title").val(),
                    			
                    	}
                	     <? } ?>                	  
                
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
                        beforeSend:function(){},
                        //成功返回之后调用的函数             
                        success:function(data){
                        	var data=eval("("+data+")");
                           if(data.message=='ok'){
                        	   new $.zui.Messager('回答成功!', {
                        		   type: 'success',
                        		   close: true,
                           	    placement: 'center' // 定义显示位置
                           	}).show();
                        	   setTimeout(function(){
                                   window.location.reload();
                               },1500);
                           }else{
                        	   new $.zui.Messager(data.message, {
                            	   close: true,
                            	    placement: 'center' // 定义显示位置
                            	}).show();
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
                })
                
                
                </script>
                  <? } ?>                       <? } ?>    
  
   <? } else { ?>   
  <p class="text-left " style="padding-left:25px;"> <a class="text-danger" href="<?=SITE_URL?>?user/login.html">登录</a> 或者   <a class="text-danger" href="<?=SITE_URL?>?user/login.html">注册</a> 后回答问题
     <? } ?>                        
</p>

       <!--广告位1-->
            <? if((isset($adlist['question_view']['inner1']) && trim($adlist['question_view']['inner1']))) { ?>            <div style="margin-top:5px;"><?=$adlist['question_view']['inner1']?></div>
            <? } ?>            </div>
</div>

<!-- 左侧导航 -->
<div class="silderight col-sm-4 col-xs-12">


     <? if(0!=$question['authorid'] && ($question['authorid']==$user['uid'])) { ?>      <div class="side-box nomargin">
   <!-- 操作 -->
    <div class="row mt10">
    <div class="col-sm-12 mar-t-1">
    
    
                <h4  class="f14 fb cGray">处理问题：</h4>
                <p> 如果已获得满意的回答，请及时采纳，感谢回答者。若还没有满意的回答，可以尝试以下操作：</p>
          
              
              
               
           
           
           <div class="row">
    <div class="col-xs-4">
      <span><button type="button" title="补充提问细节，以得到更准确的答案" class="btn btn-success" name="supply_question" value="问题补充" onclick="javascript:document.location = '<?=SITE_URL?>?question/supply/<?=$question['id']?>.html'">问题补充</button></span>

</div>

  <div class="col-xs-4">
    <span><button type="button" title="提高悬赏，以提高问题的关注度" class="btn btn-success" name="append_score" onclick="append_score();" >提高悬赏</button></span>
  </div>
  
   <div class="col-xs-4">
    <span><button type="button" class="btn btn-success" title="修改问题标签" onclick="edittag();" >添加标签</button></span>
  </div>
  
   <div class="col-xs-4">
   <span><button type="button" title="无满意答案的回答，可以直接结束提问，关闭问题" class="btn btn-success" name="close_question"  onclick="close_question();">关闭问题</button></span>
  </div>
  
   <div class="col-xs-4">
    <span><button type="button" class="btn btn-success mar-b-03" id="delete_question">删除问题</button></span>
   </div>
</div>
            </div>
            </div>
           </div>
      <? } ?>      
      <? if(1==$user['grouptype'] && $user['uid']) { ?>         <div class="side-box nomargin">
<h4 class="f14 fb cGray">
问题管理
</h4>
 <hr>
<div class="row">
    <div class="col-xs-4">
<button type="button" class="btn btn-success mar-b-03" onclick="javascript:document.location = '<?=SITE_URL?>?question/edit/<?=$question['id']?>.html'">编辑内容</button>

</div>
<div class="col-xs-4">

 <button type="button" class="btn btn-success mar-b-03"  onclick="edittag();" >修改标签</button>

</div>
<div class="col-xs-4">

  <button type="button" class="btn btn-success mar-b-03"  id="changecategory" data-toggle="modal" data-target="#catedialog" >移动分类</button>

</div>
<div class="col-xs-4">


<button type="button" class="btn btn-success mar-b-03"   id="close_question">关闭问题</button>

</div>
<div class="col-xs-4">

<button type="button" class="btn btn-success mar-b-03" id="delete_question">删除问题</button>

</div>
</div>
 


 


</div>

      
      
      
     
        <? } ?>   
       <!--广告位5-->
        <? if((isset($adlist['question_view']['right1']) && trim($adlist['question_view']['right1']))) { ?>        <div class="row">
    <div class="col-sm-12 ">
        <div class="side-box"><?=$adlist['question_view']['right1']?></div>
            </div>
</div>
        <? } ?>        <? if($expertlist) { ?>          <div class="side-box nomargin">
  <h4 class="f14 fb cGray">
推荐专家
</h4>
<hr>

      
      
            <ul class="nav mar-b-1">
                
<? if(is_array($expertlist)) { foreach($expertlist as $expert) { ?>
             
                
                     <li class="b-b-line mar-t-1">
                <div class="row mar-b-1">
               
                <div class="col-sm-12 ">
                  <div class="pic pull-left"><a title="<?=$expert['name']?>" target="_blank" href="<?=SITE_URL?>?u-<?=$expert['uid']?>.html"><img width="35" height="35" class="img-rounded" alt="<?=$expert['username']?>" src="<?=$expert['avatar']?>"  onmouseover="pop_user_on(this, '<?=$expert['uid']?>', '');"  onmouseout="pop_user_out();"/></a></div>
                 <p class="pull-left mar-l-1">
                 <a title="<?=$expert['name']?>" class="block" target="_blank" href="<?=SITE_URL?>?u-<?=$expert['uid']?>.html" ><?=$expert['username']?></a>
                 
                 
                 </p>
                    <p class="pull-right mar-t-05"><a href="<?=SITE_URL?>?question/add/<?=$expert['uid']?>.html" class="text-danger">向TA求助</a></p>
                  
                   
                </div>
                
                </div>
                   
                   
                   
                </li>
                
                
<? } } ?>
            </ul>
</div>
        <? } ?>      
     <? if($solvelist) { ?><div class="ask_detail_do mt20 side-box">
                <h4 class="f14 fb cGray">相关问题</h4>
                 <hr>
                <ul class="mt5 clearfix">
                
  
<? if(is_array($solvelist)) { foreach($solvelist as $solve) { ?>
   <li class="b-b-line">
  <i class="quan"></i>
   <span>
   <a title=" <?=$solve['title']?>" href="<?=SITE_URL?>?q-<?=$solve['id']?>.html" data-bn-ipg="ask-answer-relatedquestion">
   <?=$solve['title']?>
   </a>
   </span>
   </li>
 


  
<? } } ?>
                                                                                                               
                </ul>
            </div>
                <? } ?>     
              <? if($topiclist) { ?>            <div class="ask_detail_do mt20 side-box">
                <h4 class="f14 fb cGray">相关文章</h4>
                 <hr>
                <ul class="mt5 clearfix">
                
  
<? if(is_array($topiclist)) { foreach($topiclist as $index => $article) { ?>
   <li class="b-b-line">
  <i class="quan"></i>
   <span>
   <a title=" <?=$article['title']?>" href="<?=SITE_URL?>?article-<?=$article['id']?>.html" data-bn-ipg="ask-answer-relatedquestion">
<?=$article['title']?>
   </a>
   </span>
   </li>
 


  
<? } } ?>
                                                                                                               
                </ul>
            </div>
               <? } ?>      
            
</div>

</div>


<div class="modal fade" id="dialog_tag">
<div class="modal-dialog">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">关闭</span></button>
      <h4 class="modal-title">编辑标签</h4>
    </div>
    <div class="modal-body">
    
    <form  class="form-horizontal"  name="edittagForm"  action="<?=SITE_URL?>?question/edittag.html" method="post" >
        <input type="hidden"  value="<?=$question['id']?>" name="qid"/>
        <table class="table ">
         <tr valign="top">
                <td>多个标签请以空格隔开!</td>
            </tr>
            <tr>            
                <td>
                    <div class="inputbox mt15">
                        <input type="text" placeholder="多个标签请以空格隔开" class="form-control"  name="qtags" value="<? echo implode(' ',$taglist) ?>"/>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                <button type="submit" class="btn btn-success">保存</button>
                 <button type="button" class="btn btn-success" data-dismiss="modal">关闭</button>
    
                </td>
            </tr>
        </table>
    </form>

    </div>
   
  </div>
</div>
</div>

<div class="modal fade" id="dialogadopt">
<div class="modal-dialog">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">关闭</span></button>
      <h4 class="modal-title">采纳回答</h4>
    </div>
    <div class="modal-body">
    
     <form class="form-horizontal"  name="editanswerForm"  method="post" >
        <input type="hidden"  value="<?=$question['id']?>" id="adopt_qid" name="qid"/>
        <input type="hidden" id="adopt_answer" value="0" name="aid"/>
        <table  class="table ">
            <tr valign="top">
                <td>向帮助了您的知道网友说句感谢的话吧!</td>
            </tr>
            <tr>            
                <td>
                    <div class="inputbox mt15">
                        <textarea class="form-control" id="adopt_txtcontent"  name="content">非常感谢!</textarea>
                    </div>
                </td>
            </tr>
            <tr>
                <td><button type="button" id="adoptbtn" class="btn btn-success" >确&nbsp;认</button></td>
            </tr>
        </table>
    </form>

    </div>
   
  </div>
</div>

<script>
$("#adoptbtn").click(function(){
  var data={
    			content:$("#adopt_txtcontent").val(),
    			qid:$("#adopt_qid").val(),
    			aid:$("#adopt_answer").val()
    			
    	}

$.ajax({
    //提交数据的类型 POST GET
    type:"POST",
    //提交的网址
    url:"<?=SITE_URL?>?question/ajaxadopt.html",
    //提交的数据
    data:data,
    //返回数据的格式
    datatype: "json",//"xml", "html", "script", "json", "jsonp", "text".
    //在请求之前调用的函数
    beforeSend:function(){},
    //成功返回之后调用的函数             
    success:function(data){
    	var data=eval("("+data+")");
       if(data.message=='ok'){
    	   new $.zui.Messager('回答成功!', {
    		   type: 'success',
    		   close: true,
       	    placement: 'center' // 定义显示位置
       	}).show();
    	   setTimeout(function(){
               window.location.reload();
           },1500);
       }else{
    	   new $.zui.Messager(data.message, {
        	   close: true,
        	    placement: 'center' // 定义显示位置
        	}).show();
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
})

</script>
</div>

<div class="modal fade" id="append_score">
<div class="modal-dialog">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">关闭</span></button>
      <h4 class="modal-title">提高悬赏</h4>
    </div>
    <div class="modal-body">
    
    <form class="form-horizontal" name="addscoreForm"  action="<?=SITE_URL?>?question/addscore.html" method="post" >
        <input type="hidden" value="<?=$question['id']?>" name="qid">
        <table class="table ">
            <tr valign="top">
                <td>提问期内，追加悬赏一次，可延长问题的有效期3天。悬赏越高，会吸引到越多的关注。</td>
            </tr>
            <tr>            
                <td>
                    <div class="inputbox mt15">
                        追加悬赏:&nbsp;<select name="score" id="addscore" class="normal_select">
                            <option value="5" selected="selected">5</option>
                            <option value="10">10</option>
                            <option value="15">15</option>
                            <option value="20">20</option>
                            <option value="30">30</option>
                            <option value="40">40</option>
                            <option value="50">50</option>
                        </select>&nbsp;分
                    </div>
                </td>
            </tr>
           <tr>
                <td><button type="submit" class="btn btn-success" >确&nbsp;认</button></td>
            </tr>
        </table>
    </form>

    </div>
   
  </div>
</div>
</div>

 <? if(1==$user['grouptype'] && $user['uid']) { ?><div class="modal fade" id="catedialog">
<div class="modal-dialog">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">关闭</span></button>
      <h4 class="modal-title">修改分类</h4>
    </div>
    <div class="modal-body">
    
      <div id="dialogcate">
        <form class="form-horizontal"  name="editcategoryForm" action="<?=SITE_URL?>?question/movecategory.html" method="post">
            <input type="hidden" name="qid" value="<?=$question['id']?>" />
            <input type="hidden" name="category" id="categoryid" />
            <input type="hidden" name="selectcid1" id="selectcid1" value="<?=$question['cid1']?>" />
            <input type="hidden" name="selectcid2" id="selectcid2" value="<?=$question['cid2']?>" />
            <input type="hidden" name="selectcid3" id="selectcid3" value="<?=$question['cid3']?>" />
            <table class="table ">
                <tr valign="top">
                    <td >
                        <select  id="category1" class="catselect" size="8" name="category1" ></select>
                    </td>
                    <td align="center" valign="middle" ><div style="display: none;" id="jiantou1">>></div></td>
                    <td >                                        
                        <select  id="category2"  class="catselect" size="8" name="category2" style="display:none"></select>                                        
                    </td>
                    <td align="center" valign="middle" ><div style="display: none;" id="jiantou2">>>&nbsp;</div></td>
                    <td >
                        <select id="category3"  class="catselect" size="8"  name="category3" style="display:none"></select>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                   
                   
                <span>
                    <input  type="submit" class="btn btn-success" value="确&nbsp;认" onclick="change_category();"/></span>
                    <span>
                    <button type="button" class="btn btn-success" data-dismiss="modal">关闭</button>
                    </span>
                
              
                    </td>
                </tr>
            </table>
        </form>
    </div>

    </div>
   
  </div>
</div>
</div>
  <? } ?></div>

 <script>
if(typeof($(".ask_detail_comment .mod_discuss_box_text img").attr("data-original"))!="undefined"){
var imgurl=$(".ask_detail_comment .mod_discuss_box_text img").attr("data-original");
$(".ask_detail_comment .mod_discuss_box_text img").attr("src",imgurl);
}
$(".ask_detail_comment .mod_discuss_box_text img").attr("data-toggle","lightbox");
$(".ask_detail_comment .mod_discuss_box_text img").attr("class","img-thumbnail");

</script>
<script type="text/javascript">
                                var category1 = <?=$categoryjs['category1']?>;
                                var category2 = <?=$categoryjs['category2']?>;
                                var category3 = <?=$categoryjs['category3']?>;
                                var selectedcid = "<?=$question['cid1']?>,<?=$question['cid2']?>,<?=$question['cid2']?>";
                                $(document).ready(function() {
                        initcategory(category1);
                                fillcategory(category2, $("#category1 option:selected").val(), "category2");
                                fillcategory(category3, $("#category2 option:selected").val(), "category3");
                                //关闭问题
                                $("#close_question").click(function() {
                        if (confirm('确定关闭该问题?') === true) {
                        document.location.href = "<?=SITE_URL?>?question/close/<?=$question['id']?>.html";
                        }
                        });
                                //删除问题
                                $("#delete_question").click(function() {
                        if (confirm('确定删除问题？该操作不可返回！') === true) {
                        document.location.href = "<?=SITE_URL?>?question/delete/<?=$question['id']?>.html";
                        }
                        });
                                $(".anscontent img,.description img,.mainbox img,.qa-content img").each(function(i) {
                        var img = $(this);
                                $.ajax({
                                type: "POST",
                                        url: "<?=SITE_URL?>?index/ajaxchkimg.html",
                                        async: true,
                                        data: "imgsrc=" + img.attr("src"),
                                        success: function(status) {
                                        if ('1' == status) {
                                        img.wrap("<a href='" + img.attr("src") + "' title='" + img.attr("title") + "' data-lightbox='comment'></a>");
                                        }
                                        }
                                });
                        });

                                $(".button_agree").hover(function(){
                        var answerid = $(this).parent().attr("id");
                                var supportobj = $(this);
                                $.ajax({
                                type: "GET",
                                        url:"<?=SITE_URL?>index.php?answer/ajaxhassupport/" + answerid,
                                        cache: false,
                                        success: function(hassupport){
                                        if (hassupport == '1'){
                                        supportobj.attr("data-original-title","已赞同");
                                        } else{
                                        supportobj.attr("data-original-title","赞同回复");
                                        }
                                        }
                                });
                                $(this).css("font-weight", "normal");
                        }, function(){
                        var answerid = $(this).parent().attr("id");
                                var supportobj = $(this);
                           
                              
                        });
                                $(".button_agree").click(function(){
                        var supportobj = $(this);
                                var answerid = $(this).parent().attr("id");
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
                                                        	
                                                        supportobj.find(".upvote-count").html(comments);
                                                        }
                                                });
                                        }
                                        }
                                });
                        });
                               // SyntaxHighlighter.all();
                        });
                                function show_comment(answerid) {
                                if ($("#comment_" + answerid).css("display") === "none") {
                                load_comment(answerid);
                                        $("#comment_" + answerid).slideDown();
                                } else {
                                $("#comment_" + answerid).slideUp();
                                }
                                }

                        function change_category() {
                        var category1 = $("#category1 option:selected").val();
                                var category2 = $("#category2 option:selected").val();
                                var category3 = $("#category3 option:selected").val();
                                if (category1 > 0) {
                        $("#categoryid").val(category1);
                        }
                        if (category2 > 0) {
                        $("#categoryid").val(category2);
                        }
                        if (category3 > 0) {
                        $("#categoryid").val(category3);
                        }
                        $("#catedialog").model("hide");
                                $("form[name='editcategoryForm']").submit();
                        }

                        function adoptanswer(aid) {
                     
                                $("#adopt_answer").val(aid);
                            
                                $('#dialogadopt').modal('show');
                        }
                        function edittag() {
                        	 $('#dialog_tag').modal('show');
                             
                        }

                        //提高悬赏
                        function append_score() {
                    
                                $("#append_score").modal('show');
                        }
                        function close_question() {
                        if (confirm('确定关闭该问题?') === true) {
                        document.location.href = "<?=SITE_URL?>?question/close/<?=$question['id']?>.html";
                        }
                        }

                        //添加评论
                        function addcomment(answerid) {
                        var content = $("#comment_" + answerid + " input[name='content']").val();
                        var replyauthor = $("#comment_" + answerid + " input[name='replyauthor']").val();
                        if (g_uid == 0){
                            login();
                            return false;
                        }
                        if (bytes($.trim(content)) < 5){
                        alert("评论内容不能少于5字");
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
                        if (!confirm("确认删除该评论?")) {
                        return false;
                        }
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
                        }
                        function load_comment(answerid){
                        $.ajax({
                        type: "GET",
                                cache:false,
                                url: "<?=SITE_URL?>index.php?answer/ajaxviewcomment/" + answerid,
                                success: function(comments) {
                                $("#comment_" + answerid + " .comments-list").html(comments);
                                }
                        });
                        }
                        
                        function replycomment(commentauthorid,answerid){
                            var comment_author = $("#comment_author_"+commentauthorid).attr("title");
                            $("#comment_"+answerid+" .comment-input").focus();
                            $("#comment_"+answerid+" .comment-input").val("回复 "+comment_author+" :");
                            $("#comment_" + answerid + " input[name='replyauthor']").val(commentauthorid);
                        }
                        //检举
                        function inform(name, type) {
                        var content = name + '的回答';
                                if (type == 1) {
                        content = name + '的提问';
                        }
                        $("#append_score").dialog({
                        autoOpen: false,
                                width: 480,
                                modal: true,
                                resizable: false
                        });
                                $("#append_score").dialog("open");
                        }
                        function setFocus() {
                        	   location.hash="#huidaform";  
                            UE.getEditor('anscontent').focus();
                        }

</script>
 <script src="https://cdn.rawgit.com/google/code-prettify/master/loader/run_prettify.js" type="text/javascript"></script>
 <<script type="text/javascript">

window.prettyPrint();

</script>
<? include template('footer'); ?>
