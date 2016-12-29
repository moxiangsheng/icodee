<?php

!defined('IN_ASK2') && exit('Access Denied');

class rsscontrol extends base {

	
    function rsscontrol(& $get,& $post) {
        $this->base($get,$post);
        $this->load('category');
        $this->load('question');
        $this->load('answer');
        $this->load("tag");
         $this->load("topic");
       
    }
    
    /*
	分类下的RSS
	rss/category/1/1
    */
    function oncategory() {
    	
        $cid=$this->get[2];
        $status=isset($this->get[3])?$this->get[3]:'all';
        $category=$_ENV['category']->get($cid); //得到分类信息
        $cfield='cid'.$category['grade'];	//查询条件
        $questionlist=$_ENV['question']->list_by_cfield_cvalue_status($cfield,$cid,$status,0,20);//问题列表数据
        $this->writerss($questionlist,'分类'.$category['name'].$this->statusarray[$status].'问题');
    }
    /*
	列表下的RSS
	rss/list/1
    */
    function onlist() {
        $status=isset($this->get[2])?$this->get[2]:'all';
        $questionlist=$_ENV['question']->list_by_cfield_cvalue_status('',0,$status,0,50);//问题列表数据
        $this->writerss2($questionlist,$this->statusarray[$status].'问题');
    }

    
    /*
	查看一个未解决问题的RSS
	rss/question/1
    */
    function onquestion() {
        $qid=$this->get[2];
        $question=$_ENV['question']->get($qid);
        $question['category_name']=$this->category[$question['cid']];
        $answerlistarray=$_ENV['answer']->list_by_qid($qid);
        $answerlist=$answerlistarray[0];
        $items=array();
        foreach($answerlist as $answer) {
            $item['id']=$answer['qid'];
            $item['title']=$question['title'];
            $item['description']=$answer['content'];
            $item['category_name']=$question['category_name'];
            $item['author']=$answer['author'];
            $item['time']=$answer['time'];
            $items[]=$item;
        }
        $this->writerss($items,$question['title'].'所有回答');
    }


    function writerss($items,$title) {
    	
        header("Content-type: application/xml");
        $suffix='?';
        if( $this->setting['seo_on']){
        	$suffix='';
        }
        $fix= $this->setting['seo_suffix'];
        echo "<?xml version=\"1.0\" encoding=\"".ASK2_CHARSET."\"?>\n".
                "<rss version=\"2.0\">\n".
                "  <channel>\n".
                "    <title>".$this->setting['site_name']."</title>\n".
                "    <link>".SITE_URL."</link>\n".
                "    <description>".$title."</description>\n".
                "    <copyright>Copyright(C) ".$this->setting['site_name']."</copyright>\n".
                "    <generator>Tulipask ! Powered by Tulipsoft Inc .</generator>\n".
                "    <lastBuildDate>".gmdate('r', $this->time)."</lastBuildDate>\n".
                "    <ttl>".$this->setting['rss_ttl']."</ttl>\n".
                "    <image>\n".
                "      <url>".SITE_URL."/css/default/logo.png</url>\n".
                "      <title>".$this->setting['site_name']."</title>\n".
                "      <link>".SITE_URL."</link>\n".
                "    </image>\n";

        foreach($items as $item) {
            echo "    <item>\n".
                    "      <title>".htmlspecialchars($item['title'])."</title>\n".
                    "      <link>".SITE_URL.$suffix."q-$item[id]$fix</link>\n".
                    "      <description><![CDATA[$item[description]]]></description>\n".
                    "      <category>".htmlspecialchars($item['category_name'])."</category>\n".
                    "      <author>".htmlspecialchars($item['author'])."</author>\n".
                    "      <pubDate>".@gmdate('r', $item['time'])."</pubDate>\n".
                    "    </item>\n";
        }

        echo 	"  </channel>\n".
                "</rss>";
    }
 function writerss2($items,$title) {
      	 header("Content-type: application/xml");
        $suffix='?';
        if( $this->setting['seo_on']){
        	$suffix='';
        }
        $fix= $this->setting['seo_suffix'];
        
        echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n".
         "<urlset>\n";
            foreach($items as $item) {
            	 $viewurl = urlmap('question/view/' . $item['id'], 2);
            	 $mpurl = SITE_URL . $this->setting['seo_prefix'] . $viewurl.$this->setting['seo_suffix'];
            	echo " <url>".
            	"  <loc><![CDATA[".$mpurl."]]></loc>\n".
            	"  <lastmod>".@gmdate('Y-n-j H:i', $item['time'])."</lastmod>\n".
            	" <changefreq>always</changefreq>\n".
            	"  <priority>1.0</priority>\n".
            	"  <data>\n".
            	"  <display>\n";
            	 $navlist = $_ENV['category']->get_navigation($item['cid'], true);
            	 echo "<breadcrumb>\n";
            	  foreach($navlist as $nav) {
            	  	echo $nav['name'].">";
            	  }
            	echo "</breadcrumb>\n";
            	echo "<name>".htmlspecialchars($item['title'])."</name>\n".
            	 "<description><![CDATA[$item[description]]]></description>\n".
            	" <url><![CDATA[".$mpurl."]]></url>\n".
            	"<genre>站内问答</genre>\n".
            	" <provider>\n".
            	" <name>".$item['author']."</name>\n".
            	" <url>".SITE_URL.$suffix."u-$item[authorid]$fix</url>\n".
            	" </provider>\n".
            	"<collectCount>$item[attentions]</collectCount>\n".
            	"<likeCount>$item[goods]</likeCount>\n".
            	"<commentCount>$item[answers]</commentCount>\n";
            	 $taglist = $_ENV['tag']->get_by_qid($item['id']);
            	  echo "<keywords>\n";
            	 foreach($taglist as $tag) {
            	 	echo $tag.",";
            	 	
            	 }
            	  echo "</keywords>\n";
            	  
            	  echo " <downloadUrl>".$mpurl."</downloadUrl>\n".
            	  "<aggregateRating>\n".
            	  "<ratingValue>3</ratingValue>\n".
            	  "<bestRating>5</bestRating>\n".
            	  "<ratingCount>50</ratingCount>\n".
            	  " </aggregateRating>\n";
            	      $answerlistarray=$_ENV['answer']->list_by_qid($item[id]);
        $answerlist=$answerlistarray[0];
        $items=array();
        foreach($answerlist as $answer) {
        	echo "<comment>\n".



        //	"<commentText><![CDATA[$answer[content]]]></commentText>\n".
		"<commentText><![CDATA[".preg_replace("/\<.*?\>/","",$answer['content'])."]]></commentText>\n".
        	" <creator>".$answer['author']."</creator>\n".
        	"<commentTime>".$answer['time']."</commentTime>\n".
        	" </comment>\n";
        }
          	  echo " </display>\n".
          	    " </data>\n".
          	    " </url>\n";
            }
         echo "</urlset>\n";
        
      }


}
?>