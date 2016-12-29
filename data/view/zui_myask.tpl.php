<? if(!defined('IN_ASK2')) exit('Access Denied'); include template('header'); ?>
<!--用户中心大背景--->
<div class="row nopadding nomargin">
  
<? include template('user_banner'); ?>
</div>


<!--用户中心大背景结束标记-->

<!--用户中心-->

<div class="user-home bg-white">
    <div class="container">

        <div class="row ">
            <div class="col-sm-9">
            <!-- 用户title部分导航 -->
              
<? include template('user_title'); ?>
             <!-- title结束标记 -->
       <!-- 内容页面 -->  
    <div class="row">
                 <div class="col-sm-12">
                     <div class="dongtai">
                         <p>
                             <strong class="font-18">我的提问</strong>
                         </p>
                         <ul class="nav nav-secondary">
        <li <? if($status==1) { ?>class="active"<? } ?> >
          <a href="<?=SITE_URL?>?user/ask/1.html">待解决</a>
        </li>
        <li <? if($status==2) { ?>class="active"<? } ?>>
          <a href="<?=SITE_URL?>?user/ask/2.html">已解决</a>
        </li>
        <li <? if($status==0) { ?>class="active"<? } ?>>
          <a href="<?=SITE_URL?>?user/ask/0.html">已审核</a>
        </li>
       <li <? if($status==9) { ?>class="active"<? } ?>>
          <a href="<?=SITE_URL?>?user/ask/9.html">已过期</a>
        </li>
      </ul>
                         <hr>
                      

                     
                    
                    <? if($questionlist) { ?>   
    <ul class="main_con_qiangda_list clearfix">
  
            
<? if(is_array($questionlist)) { foreach($questionlist as $question) { ?>
                
        <li>
            <a target="_blank" href="<?=SITE_URL?>?q-<?=$question['id']?>.html" title="<?=$question['title']?>">
                <div class="left"><?=$question['answers']?><br>回答</div>
                <div class="uright">
                    <p class="otw text-nowrap "> <i class="icon icon-dollar text-danger mar-r-03"><?=$question['price']?></i><?=$question['title']?></p>
                    <span><?=$question['format_time']?></span>
                </div>
            </a>
        </li>
         
<? } } ?>
      

    </ul>
    
    
 <div class="pagination" id="list-page">
                        <p class="pages">
                           <?=$departstr?>
                        </p>
                    </div>
   <? } else { ?>   <div class="row">
   
                            <div class="col-sm-12">
                            

                             <p>    <span>暂无问题！快去点此</span><a href="<?=SITE_URL?>?question/add.html">向亿万网友提问吧</a></p>
                            </div>
                        </div>
    <? } ?>                              

                      
                     </div>
                 </div>


             </div>
            </div>
           
            <!--右侧栏目-->
            <div class="col-sm-3 mar-t-2">


              

                <!--导航列表-->

               
<? include template('user_menu'); ?>
                <!--结束导航标记-->


                <div>

                </div>


            </div>

        </div>

    </div>

</div>


<!--用户中心结束-->
<? include template('footer'); ?>
