<? if(!defined('IN_ASK2')) exit('Access Denied'); ?>
 <div class="row">
         
                <div class="col-sm-3">
                    
 <a target="_blank" href="<?=SITE_URL?>?user/editimg.html" title="点击修改头像" class="pic">
                          <img src="<?=$user['avatar']?>" width="150" height="150"
                         class="img-circle user-avatar"/>
                        </a>
                </div>
                <div class="col-sm-9">
                    <h1 class="tutor-name mar-t-1 text-center" data-tutor_id="84794273"><?=$user['username']?></h1>

                    <p class="tutor-title text-center mar-t-05" id="tutorTitle"><?=$user['signature']?></p>

                    <div class="user-statics mar-t-05 text-center text-danger">
                        <ul class="tutor-detail tutorDetail">
                            <li class="detail">
                                <span class="icon icon-comment"></span>

                                <span class="highlight"><?=$user['answers']?></span>回答

                            </li>
                            <li class="detail"><span class="icon icon-question-sign"></span>
                                <span class="highlight"><?=$user['questions']?></span>提问
                            </li>
                            <li class="detail"><span class="icon icon-heart"></span>

                                <span class="highlight"><?=$user['followers']?></span>粉丝

                            </li>


                            <li class="detail detail-more"><span class="highlight">高</span>接受率</li>





                            <li><span class="icon icon-go btn-folding foldingBtn"></span></li>


                        </ul>
                    </div>

                    <p class="text-center mar-t-05">
                       <ol class="breadcrumb text-center">
                       
                       
                    <li> 擅长:</li>
                    
                     
<? if(is_array($user['category'])) { foreach($user['category'] as $category) { ?>
                      <li><a href="<?=SITE_URL?>?c-<?=$category['cid']?>.html"><?=$category['categoryname']?></a></li>
                       
                
<? } } ?>
                <li>
                         <a href="<?=SITE_URL?>?user/mycategory.html"><i class="icon icon-plus text-danger"></i>擅长设置</a>
                       </li>
                  


                </ol>
                    </p>

                </div>
</div>