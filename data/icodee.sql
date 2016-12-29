-- phpMyAdmin SQL Dump
-- version 2.7.0-pl1
-- http://www.phpmyadmin.net
-- 
-- 主机: localhost
-- 生成日期: 2016 年 12 月 29 日 16:08
-- 服务器版本: 5.0.96
-- PHP 版本: 5.2.17
-- 
-- 数据库: `a1210175507`
-- 

-- --------------------------------------------------------

-- 
-- 表的结构 `ask_ad`
-- 

CREATE TABLE `ask_ad` (
  `html` text,
  `page` varchar(50) NOT NULL default '',
  `position` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`page`,`position`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `ask_ad`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_answer`
-- 

CREATE TABLE `ask_answer` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `qid` int(10) unsigned NOT NULL default '0',
  `title` char(50) NOT NULL,
  `author` varchar(15) NOT NULL default '',
  `authorid` mediumint(8) unsigned NOT NULL default '0',
  `time` int(10) unsigned NOT NULL default '0',
  `adopttime` int(10) unsigned NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `comments` int(10) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL default '1',
  `ip` varchar(20) default NULL,
  `supports` int(10) NOT NULL default '0',
  `reward` int(10) default '0',
  PRIMARY KEY  (`id`),
  KEY `qid` (`qid`),
  KEY `authorid` (`authorid`),
  KEY `adopttime` (`adopttime`),
  KEY `time` (`time`)
) ENGINE=MyISAM AUTO_INCREMENT=332 DEFAULT CHARSET=utf8 AUTO_INCREMENT=332 ;

-- 
-- 导出表中的数据 `ask_answer`
-- 

INSERT INTO `ask_answer` VALUES (1, 1, 'Html5 Canvas是做什么的，清除屏幕可以做吗?', '梦与毁毁于梦', 4, 1482991648, 1482992787, '任何药都有副反映，但都是身体健康的人能承受的，美满霉素（米诺环素）、阿奇霉素主要表现为胃肠不是，如果能耐受，最好口服美满霉素（米诺环素），他对痤疮效果好，但痤疮最好以外用药为主，有严重感染的情况下，才用口服消炎药。 忌辛辣食品，忌油炸及高脂肪等油腻食品，勤洗脸，可用碱性的洗涤用品，不要外用化妆品。用红霉素粉针和75%的酒精配成红霉素酊剂，每天三次外用于患处后，涂抹维胺脂维E乳膏，必要时口服美满霉素胶囊50毫克，日两次口服。', 1, 1, '120.84.10.168', 30, 0);
INSERT INTO `ask_answer` VALUES (2, 2, '急急急！composer install  遇到问题', 'admin', 2, 1482992030, 0, '<p><a href="https://segmentfault.com/q/1010000002811672">传送门</a></p>', 0, 1, '120.84.10.168', 37, 0);
INSERT INTO `ask_answer` VALUES (3, 2, '急急急！composer install  遇到问题', 'mayun', 3, 1482992090, 0, '<p>提示都写得这么明白了，你居然还看不懂，我只能建议你....</p>', 0, 1, '120.84.10.168', 31, 0);
INSERT INTO `ask_answer` VALUES (4, 2, '急急急！composer install  遇到问题', 'rzld100', 1, 1482992270, 1482992928, '<p>马上使用百度全文翻译！<br>【<a href="http://fanyi.baidu.com">http://fanyi.baidu.com</a>】</p>', 1, 1, '120.84.10.168', 70, 0);
INSERT INTO `ask_answer` VALUES (5, 3, '请问jquery或者js里怎么获取ul下的多个li元素的宽度总和？', 'admin', 2, 1482992692, 1482992930, '<p>是宽度吗？还是高度？li的宽度和高度是一样的吗</p>', 1, 1, '120.84.10.168', 55, 0);
INSERT INTO `ask_answer` VALUES (6, 4, '为什么要用Node,AJAX就可以访问后台APIS接口了？', '', 5, 1482992813, 0, '<p>可能是为了跨域</p>', 0, 1, '120.84.10.168', 31, 0);
INSERT INTO `ask_answer` VALUES (7, 4, '为什么要用Node,AJAX就可以访问后台APIS接口了？', '梦与毁毁于梦', 4, 1482992333, 1482992932, '<p>node中间层可以看作为拦截器，把你的请求兰姐过来，做一些处理之后，再转发给后台，可能会用在处理安全性问题上面，或者一种对外暴露接口的时候用到。</p>', 1, 1, '120.84.10.168', 40, 0);
INSERT INTO `ask_answer` VALUES (8, 4, '为什么要用Node,AJAX就可以访问后台APIS接口了？', 'mayun', 3, 1482991853, 0, '<p>楼下说得对，也可能为了跨域，选择node中间件作为第三方服务器进行跨域</p>', 0, 1, '120.84.10.168', 59, 0);
INSERT INTO `ask_answer` VALUES (9, 6, '怎么使用js或js库关闭文件选择窗口？', 'rzld100', 1, 1482992593, 0, '<p>js本质是调用运行环境提供的接口 而不是创造接口。 按你的需求你的运行环境是浏览器。浏览器没有提供的功能就无法实现。<br>举个例子 你希望js执行后你桌上的咖啡杯自动碎裂 ，这可能吗？</p>', 0, 1, '120.84.10.168', 71, 0);
INSERT INTO `ask_answer` VALUES (10, 6, '怎么使用js或js库关闭文件选择窗口？', '梦与毁毁于梦', 4, 1482991993, 0, '<p>谢邀~</p>', 0, 1, '120.84.10.168', 56, 0);
INSERT INTO `ask_answer` VALUES (11, 6, '怎么使用js或js库关闭文件选择窗口？', '梦与毁毁于梦', 4, 1482992173, 0, '<p>不明为什么要自动关闭. 打开了系统选文件接口目的不就是为了选择一个文件吗?</p>', 1, 1, '120.84.10.168', 31, 0);
INSERT INTO `ask_answer` VALUES (12, 6, '怎么使用js或js库关闭文件选择窗口？', '梦与毁毁于梦', 4, 1482992173, 0, '<p>为什么要不选就给关了???</p>', 0, 1, '120.84.10.168', 64, 0);
INSERT INTO `ask_answer` VALUES (13, 6, '怎么使用js或js库关闭文件选择窗口？', 'mayun', 3, 1482992713, 0, '<p>浏览器没有提供这样的接口给js来调用，所以无法实现</p>', 0, 1, '120.84.10.168', 69, 0);
INSERT INTO `ask_answer` VALUES (14, 6, '怎么使用js或js库关闭文件选择窗口？', 'admin', 2, 1482992893, 0, '<p>安全一点的做法是通过调用后台接口时判断是否超时来跳转到登录页面</p>', 0, 1, '120.84.10.168', 65, 0);
INSERT INTO `ask_answer` VALUES (15, 0, 'controller之间共享数据的问题', '梦与毁毁于梦', 4, 1482992534, 0, '<p>这是时候不是应该用 <code>broadcast</code> 和 <code>emit</code> 吗</p>', 0, 1, '120.84.10.168', 79, 0);
INSERT INTO `ask_answer` VALUES (16, 0, 'controller之间共享数据的问题', 'rzld100', 1, 1482992774, 0, '<p><a href="https://segmentfault.com/q/1010000007886333/a-1020000007889040">有人问过了，参考</a></p>', 0, 1, '120.84.10.168', 56, 0);
INSERT INTO `ask_answer` VALUES (17, 0, 'controller之间共享数据的问题', '梦与毁毁于梦', 4, 1482992234, 0, '<p>你在setPage这个函数试着打印一下pageNum.num，应该该是pageNum.page.num吧？</p>', 0, 1, '120.84.10.168', 26, 0);
INSERT INTO `ask_answer` VALUES (18, 7, '链接数据库查询 while 循环时 为false 但是明明能查出来数据。代码如下', 'admin', 2, 1482991936, 1482993075, '<p>你调用了一下<code>next</code>方法，游标往下走了，只有一条的情况下，<code>while</code>肯定不走了。。</p>', 1, 1, '120.84.10.168', 29, 0);
INSERT INTO `ask_answer` VALUES (19, 7, '链接数据库查询 while 循环时 为false 但是明明能查出来数据。代码如下', 'admin', 2, 1482992896, 0, '<p>数据库编码问题！</p>', 0, 1, '120.84.10.168', 25, 0);
INSERT INTO `ask_answer` VALUES (20, 8, '魅族下微信浏览器点击input和textarea不会自动弹上去，被键盘盖住', 'admin', 2, 1482992777, 0, '<p>昨天刚好接触到这个问题，可以试试scrollIntoView。我只是看到这个API，不知道有没有坑。<br><a href="https://developer.mozilla.org/zh-CN/docs/Web/API/Element/scrollIntoView">https://developer.mozilla.org...</a></p>', 0, 1, '120.84.10.168', 48, 0);
INSERT INTO `ask_answer` VALUES (21, 8, '魅族下微信浏览器点击input和textarea不会自动弹上去，被键盘盖住', 'admin', 2, 1482992957, 1482993077, '<p>微信浏览器就是移动端的ie6，试试把resize绑定在document上,我一般都是用下面这个方式判断的</p>', 1, 1, '120.84.10.168', 53, 0);
INSERT INTO `ask_answer` VALUES (22, 9, '提示框有时模糊有时清晰是这么回事？', '梦与毁毁于梦', 4, 1482993019, 0, '<p>textLayer.contentsScale = [UIScreen mainScreen].scale;<br>UIScree根据对应分辨率改即可@1x. @2x. @3x .</p>', 0, 1, '120.84.10.168', 62, 0);
INSERT INTO `ask_answer` VALUES (23, 10, 'zepto中tap事件触发的时机?', '梦与毁毁于梦', 4, 1482992960, 0, '<p>小伙伴，你可以贴下代码和测试结果吗？我想了解下你说的问题。</p>', 0, 1, '120.84.10.168', 44, 0);
INSERT INTO `ask_answer` VALUES (24, 10, 'zepto中tap事件触发的时机?', '梦与毁毁于梦', 4, 1482991880, 1482993079, '<p>zepto的tap是绑在document上的，事件从当前位置冒泡过去……所以如果没有复杂点击需求的话，建议用FastClick.</p>', 1, 1, '120.84.10.168', 53, 0);
INSERT INTO `ask_answer` VALUES (25, 10, 'zepto中tap事件触发的时机?', 'mayun', 3, 1482992000, 0, '<p>移动端做点击事件推荐使用fastclick.js</p>', 0, 1, '120.84.10.168', 75, 0);
INSERT INTO `ask_answer` VALUES (26, 11, '这是一个关于Mui框架的问题', '', 5, 1482991942, 1482993080, '<p>你这个应该是要考虑用模板了，Mui本身没有模板和块的设定，它应该算是一个控件库，<br>现在大部份人都在用vue等集成到里面做模板的。个人意见，供参考。</p>', 1, 1, '120.84.10.168', 79, 0);
INSERT INTO `ask_answer` VALUES (27, 0, '正则表达式匹配“xa0”的问题', '', 5, 1482991945, 0, '<p>用strip()去掉首尾空格</p>', 0, 1, '120.84.10.168', 53, 0);
INSERT INTO `ask_answer` VALUES (28, 0, '正则表达式匹配“xa0”的问题', '梦与毁毁于梦', 4, 1482992185, 0, '<p><code>数量：(S+)</code></p>', 1, 1, '120.84.10.168', 50, 0);
INSERT INTO `ask_answer` VALUES (29, 0, '原生JS和jQuery的一个问题', '梦与毁毁于梦', 4, 1482992139, 0, '<p>jquery获取value是用<code>$().val()</code>,当然你也可以<code>$("#input")[0].value</code>~<br>还可以 <code>$("#input").get(0).value</code>;<br>因为jquery包住的对象是封装好的对象，要想直接拿到dom那就后面两种</p>', 1, 1, '120.84.10.168', 31, 0);
INSERT INTO `ask_answer` VALUES (30, 0, '原生JS和jQuery的一个问题', 'mayun', 3, 1482993039, 0, '<p>$("#input").value应该是$("#input").val()</p>', 0, 1, '120.84.10.168', 21, 0);
INSERT INTO `ask_answer` VALUES (31, 0, '原生JS和jQuery的一个问题', '梦与毁毁于梦', 4, 1482992499, 0, '<p>$("#input").val()</p>', 0, 1, '120.84.10.168', 41, 0);
INSERT INTO `ask_answer` VALUES (32, 0, '原生JS和jQuery的一个问题', 'mayun', 3, 1482992559, 0, '<p>$("#input").value应该是$("#input").val()</p>', 0, 1, '120.84.10.168', 47, 0);
INSERT INTO `ask_answer` VALUES (33, 0, '原生JS和jQuery的一个问题', '梦与毁毁于梦', 4, 1482992079, 0, '<p>可以看下jq的文档</p>', 0, 1, '120.84.10.168', 22, 0);
INSERT INTO `ask_answer` VALUES (34, 0, '原生JS和jQuery的一个问题', 'rzld100', 1, 1482992019, 0, '<p><a href="http://www.w3school.com.cn/jquery/jquery_ref_manipulation.asp">http://www.w3school.com.cn/jq...</a></p>', 0, 1, '120.84.10.168', 43, 0);
INSERT INTO `ask_answer` VALUES (35, 12, '关于jquery easyUI combobox的问题？', 'rzld100', 1, 1482992203, 0, '<p>是这意思吗,还可以这样写</p>', 0, 1, '120.84.10.168', 51, 0);
INSERT INTO `ask_answer` VALUES (36, 13, 'PyQt中，树形结构QtreeView中，单击节点获取其绝对路径', '', 5, 1482992925, 0, '<p>最近也在使用pyqt,233~<br>不知道你的文件是指什么,但是如果你的文件和你的py文件在同一目录下，那这个就很好办了。</p>', 0, 1, '120.84.10.168', 42, 0);
INSERT INTO `ask_answer` VALUES (37, 13, 'PyQt中，树形结构QtreeView中，单击节点获取其绝对路径', 'admin', 2, 1482992745, 0, '<p>下面代码只是个大概</p>', 0, 1, '120.84.10.168', 24, 0);
INSERT INTO `ask_answer` VALUES (38, 13, 'PyQt中，树形结构QtreeView中，单击节点获取其绝对路径', 'rzld100', 1, 1482992925, 0, '<p>首先你先获取你所点击的节点的文件名</p>', 0, 1, '120.84.10.168', 70, 0);
INSERT INTO `ask_answer` VALUES (39, 13, 'PyQt中，树形结构QtreeView中，单击节点获取其绝对路径', 'rzld100', 1, 1482992745, 0, '<p>获取绝对路径，然后和文件名拼接就得到了文件的绝对路径</p>', 0, 1, '120.84.10.168', 55, 0);
INSERT INTO `ask_answer` VALUES (40, 13, 'PyQt中，树形结构QtreeView中，单击节点获取其绝对路径', 'rzld100', 1, 1482992385, 0, '<p>如果能解决问题，麻烦采纳~~~</p>', 0, 1, '120.84.10.168', 51, 0);
INSERT INTO `ask_answer` VALUES (41, 16, 'express+jade写的个人博客，怎么用react重构？', 'rzld100', 1, 1482991912, 0, '<p>react服务端渲染</p>', 0, 1, '120.84.10.168', 36, 0);
INSERT INTO `ask_answer` VALUES (42, 16, 'express+jade写的个人博客，怎么用react重构？', 'rzld100', 1, 1482993052, 0, '<p>前后端分离，</p>', 0, 1, '120.84.10.168', 62, 0);
INSERT INTO `ask_answer` VALUES (43, 16, 'express+jade写的个人博客，怎么用react重构？', 'admin', 2, 1482992152, 0, '<p>前后端分离，不用模板引擎，后端只给数据，前端处理数据。</p>', 0, 1, '120.84.10.168', 66, 0);
INSERT INTO `ask_answer` VALUES (44, 0, 'angular-ueditor使用中，插入图片，加载完成后不更新angularmodel的问题；', 'mayun', 3, 1482992813, 0, '<p>自己回到吧；<br>方法一：在配置中 config取消单张图片上传，使用多张图片上传代替；<br>方法二：修改ueditor.all.js中简单上传函数<br>在图片上传完成后修改loading图的src属性，展示真实图片后，在末尾插入一个空字符串来出发$apply；</p>', 1, 1, '120.84.10.168', 57, 0);
INSERT INTO `ask_answer` VALUES (45, 0, 'angular-ueditor使用中，插入图片，加载完成后不更新angularmodel的问题；', 'mayun', 3, 1482992093, 0, '<p><img data-src="/img/bVHyc0?w=1217&amp;h=368"></p>', 0, 1, '120.84.10.168', 29, 0);
INSERT INTO `ask_answer` VALUES (46, 17, 'django的项目要如何部署呢？', 'rzld100', 1, 1482991915, 0, '<p>使用virtualenv+supervisor。<br>virtualenv用来创建单独的python执行环境，supervisor用来控制进程在后台运行。</p>', 0, 1, '120.84.10.168', 27, 0);
INSERT INTO `ask_answer` VALUES (47, 17, 'django的项目要如何部署呢？', 'mayun', 3, 1482992155, 1482993114, '<p><a href="http://www.cnblogs.com/fnng/p/4119712.html">http://www.cnblogs.com/fnng/p...</a> 可以去看一看</p>', 1, 1, '120.84.10.168', 61, 0);
INSERT INTO `ask_answer` VALUES (48, 17, 'django的项目要如何部署呢？', '梦与毁毁于梦', 4, 1482991915, 0, '<p>Python 2.x: Virtualenv + Supervisor + Nginx + Gunicorn</p>', 0, 1, '120.84.10.168', 35, 0);
INSERT INTO `ask_answer` VALUES (49, 17, 'django的项目要如何部署呢？', 'rzld100', 1, 1482992215, 0, '<p>Python 3.x: Viatuelenv + Circus + Nginx</p>', 0, 1, '120.84.10.168', 75, 0);
INSERT INTO `ask_answer` VALUES (50, 18, 'npm install bower -g  安装失败', 'rzld100', 1, 1482992096, 0, '<p><strong>npm安装报错一般都是：</strong><br><strong>1、网络问题，请使用cnpm安装</strong><br><strong>2、缺少python2.7(很多不支持python3,需安装2.7)</strong><br><strong>3、缺少VS、VS、winsdk，请去微软官网下载安装</strong></p>', 0, 1, '120.84.10.168', 55, 0);
INSERT INTO `ask_answer` VALUES (51, 18, 'npm install bower -g  安装失败', 'admin', 2, 1482992036, 0, '<p>我换了淘宝镜像之后  就正常安装了 </p>', 0, 1, '120.84.10.168', 26, 0);
INSERT INTO `ask_answer` VALUES (52, 18, 'npm install bower -g  安装失败', 'admin', 2, 1482992516, 1482993115, '<p>修改npm目录下的npmrc文件</p>', 1, 1, '120.84.10.168', 38, 0);
INSERT INTO `ask_answer` VALUES (53, 18, 'npm install bower -g  安装失败', 'mayun', 3, 1482992396, 0, '<p>添加如下代码<br> registry = <a href="http://registry.npm.taobao.org">http://registry.npm.taobao.org</a></p>', 0, 1, '120.84.10.168', 49, 0);
INSERT INTO `ask_answer` VALUES (54, 18, 'npm install bower -g  安装失败', '梦与毁毁于梦', 4, 1482991976, 0, '<p>这个提示校验文件失败，明显是网络的原因。重新下载或者更新镜像就可以了。没有楼上说的那么神。</p>', 0, 1, '120.84.10.168', 56, 0);
INSERT INTO `ask_answer` VALUES (55, 19, 'AngularJS v1.5.8 在IE9中出现灰屏，不启动的问题。', 'rzld100', 1, 1482992518, 0, '<p>发现是console的问题，在IE9中如果不开始调试工具的话，代码一运行到console就停止了；</p>', 0, 1, '120.84.10.168', 31, 0);
INSERT INTO `ask_answer` VALUES (56, 19, 'AngularJS v1.5.8 在IE9中出现灰屏，不启动的问题。', 'admin', 2, 1482992458, 0, '<p>没想到。。。</p>', 0, 1, '120.84.10.168', 45, 0);
INSERT INTO `ask_answer` VALUES (57, 19, 'AngularJS v1.5.8 在IE9中出现灰屏，不启动的问题。', '梦与毁毁于梦', 4, 1482992638, 0, '<p>谢邀啊。<br>你这代码什么都没有，angular版本也没说，让我怎么复现啊。。。要不你现整个可复现的例子，我们再继续debug 吧</p>', 0, 1, '120.84.10.168', 32, 0);
INSERT INTO `ask_answer` VALUES (58, 19, 'AngularJS v1.5.8 在IE9中出现灰屏，不启动的问题。', '梦与毁毁于梦', 4, 1482992758, 0, '<p>如果不能稳定重现就很难找到问题。</p>', 0, 1, '120.84.10.168', 59, 0);
INSERT INTO `ask_answer` VALUES (59, 19, 'AngularJS v1.5.8 在IE9中出现灰屏，不启动的问题。', 'mayun', 3, 1482992398, 0, '<p>要不你试试，把估计有问题的组件先注释掉，一个个试，先找找看是哪个引起的这个问题</p>', 0, 1, '120.84.10.168', 21, 0);
INSERT INTO `ask_answer` VALUES (60, 19, 'AngularJS v1.5.8 在IE9中出现灰屏，不启动的问题。', 'mayun', 3, 1482991918, 0, '<p>好像和meta有关，你加入</p>', 0, 1, '120.84.10.168', 54, 0);
INSERT INTO `ask_answer` VALUES (61, 19, 'AngularJS v1.5.8 在IE9中出现灰屏，不启动的问题。', 'mayun', 3, 1482992218, 0, '<p>再试试？</p>', 0, 1, '120.84.10.168', 50, 0);
INSERT INTO `ask_answer` VALUES (62, 20, '网站上的付费资源(小说,视频)如何防止爬虫抓取的?', '梦与毁毁于梦', 4, 1482992459, 1482993118, '<p>1 限制同一IP请求数量，如果请求数不正常 ban掉<br>2 干扰码 <br>3 请补充</p>', 1, 1, '120.84.10.168', 72, 0);
INSERT INTO `ask_answer` VALUES (63, 20, '网站上的付费资源(小说,视频)如何防止爬虫抓取的?', '梦与毁毁于梦', 4, 1482992939, 0, '<p>怎么防止的肯定不会在这里细说吧，而说个思路或者方法百度不是很多吗？</p>', 0, 1, '120.84.10.168', 73, 0);
INSERT INTO `ask_answer` VALUES (64, 21, '两个for循环的问题', '', 5, 1482991921, 0, '<p>这种Low的写法真的不忍心写出来</p>', 0, 1, '120.84.10.168', 48, 0);
INSERT INTO `ask_answer` VALUES (65, 21, '两个for循环的问题', 'mayun', 3, 1482993061, 0, '<p>把j通过全局变量传到第一个循环里，或者用闭包</p>', 0, 1, '120.84.10.168', 42, 0);
INSERT INTO `ask_answer` VALUES (66, 22, 'css3 translated实现的无缝轮播图原理？', 'mayun', 3, 1482992162, 0, '<p>这是因为在播放到最后一张图的时候需要拉回到最开始那张图重新轮播，如果没有那张重复的图，给人的视觉就是直接到达第一张图，没有无缝轮播的效果，用了这张重复的图之后，到了最后一张图，给人视觉上的欺骗，直接拉回到那张重复的图，用户眼睛看到的是最后一张，实际上已经重新开始轮播了，这样做到无缝滚动。</p>', 0, 1, '120.84.10.168', 67, 0);
INSERT INTO `ask_answer` VALUES (67, 22, 'css3 translated实现的无缝轮播图原理？', 'rzld100', 1, 1482992522, 0, '<p>能看得明白吗，描述的不是很清楚，希望能帮到你</p>', 0, 1, '120.84.10.168', 78, 0);
INSERT INTO `ask_answer` VALUES (68, 22, 'css3 translated实现的无缝轮播图原理？', 'rzld100', 1, 1482992882, 0, '<p>无缝切换布局：</p>', 0, 1, '120.84.10.168', 28, 0);
INSERT INTO `ask_answer` VALUES (69, 22, 'css3 translated实现的无缝轮播图原理？', 'mayun', 3, 1482992702, 1482993121, '<p>切换过程（点击下一张按钮）：</p>', 1, 1, '120.84.10.168', 40, 0);
INSERT INTO `ask_answer` VALUES (70, 22, 'css3 translated实现的无缝轮播图原理？', 'mayun', 3, 1482992702, 0, '<p>因此才要这样布局....</p>', 0, 1, '120.84.10.168', 28, 0);
INSERT INTO `ask_answer` VALUES (71, 23, 'react-native 中，怎么将得到的图片uri转换为base64的编码？', 'admin', 2, 1482992043, 0, '<p>在线转码base64或者用自动化工具webpack、gulp等等，转完之后拿到base64码</p>', 0, 1, '120.84.10.168', 69, 0);
INSERT INTO `ask_answer` VALUES (72, 23, 'react-native 中，怎么将得到的图片uri转换为base64的编码？', '梦与毁毁于梦', 4, 1482992763, 0, '<p>&lt;img src="" data:image/png;base64,在这里粘贴你的base64码/&gt;</p>', 0, 1, '120.84.10.168', 67, 0);
INSERT INTO `ask_answer` VALUES (73, 23, 'react-native 中，怎么将得到的图片uri转换为base64的编码？', '梦与毁毁于梦', 4, 1482992403, 1482993122, '<p>这个应该没有兼容性的</p>', 1, 1, '120.84.10.168', 32, 0);
INSERT INTO `ask_answer` VALUES (74, 23, 'react-native 中，怎么将得到的图片uri转换为base64的编码？', 'rzld100', 1, 1482992343, 0, '<p>希望可以帮到你</p>', 0, 1, '120.84.10.168', 29, 0);
INSERT INTO `ask_answer` VALUES (75, 24, 'echarts地图样式', '梦与毁毁于梦', 4, 1482992345, 1482993124, '<p><a href="http://gallery.echartsjs.com/editor.html?c=xBJ2t7aM-l">http://gallery.echartsjs.com/...</a></p>', 1, 1, '120.84.10.168', 72, 0);
INSERT INTO `ask_answer` VALUES (76, 25, 'JDK6中String的subString方法内存泄露及溢出问题', 'rzld100', 1, 1482992046, 0, '<p>你需要先把<code>java SubMain sub = new SubMain();</code>提到for循环外面初始化。<br>因为你每次for循环都在堆上创建SubMain，每个SubMain都至少占用了100k，你重复1000000次，这得需要100G的堆空间。同时list里面保存了SubMain的引用，gc和full gc都无法回收，肯定会内存溢出！</p>', 0, 1, '120.84.10.168', 48, 0);
INSERT INTO `ask_answer` VALUES (77, 25, 'JDK6中String的subString方法内存泄露及溢出问题', 'admin', 2, 1482992826, 0, '<p>同时，讨论内存分配，至少要把虚拟机配置的-Xms，-Xmx, -Xmn, -XX:SurvivorRatio提供出来啊！</p>', 0, 1, '120.84.10.168', 44, 0);
INSERT INTO `ask_answer` VALUES (78, 25, 'JDK6中String的subString方法内存泄露及溢出问题', 'rzld100', 1, 1482992526, 0, '<p>这个问题蛮有意思，我特意查了一下, 学习了，楼主的理解是subString最多导致原来的string内存没被回收，list的循环最多也就每次增加一点点内存。后来我仔细看了下程序：</p>', 0, 1, '120.84.10.168', 22, 0);
INSERT INTO `ask_answer` VALUES (79, 25, 'JDK6中String的subString方法内存泄露及溢出问题', 'rzld100', 1, 1482992047, 0, '<p>因为strings是SubMain的实例变量，而SubMain又被循环实例化了1000000次，结果可想而知...</p>', 0, 1, '120.84.10.168', 43, 0);
INSERT INTO `ask_answer` VALUES (80, 25, 'JDK6中String的subString方法内存泄露及溢出问题', 'mayun', 3, 1482992107, 0, '<p>另外， 这个问题再JDK7 update6已经被修复了。<br>如果是老版本JDK，可以用这样的方式：</p>', 0, 1, '120.84.10.168', 25, 0);
INSERT INTO `ask_answer` VALUES (81, 25, 'JDK6中String的subString方法内存泄露及溢出问题', '梦与毁毁于梦', 4, 1482992587, 0, '<p>死劲的往堆内存中放数据 list一直保留堆内存的引用 肯定gc不回收喽 你的内存必须溢出</p>', 0, 1, '120.84.10.168', 20, 0);
INSERT INTO `ask_answer` VALUES (82, 25, 'JDK6中String的subString方法内存泄露及溢出问题', 'admin', 2, 1482992047, 0, '<p>前面的童鞋也讲的很明白了，即使是jdk1.6的方式也不会存在你所说的内存泄露问题。<br>导致你内存不足的原因是因为你本身就没有足够的内存申请<code>1000000</code>个<code>new String(new byte[100000])</code>对象。</p>', 0, 1, '120.84.10.168', 52, 0);
INSERT INTO `ask_answer` VALUES (83, 25, 'JDK6中String的subString方法内存泄露及溢出问题', '梦与毁毁于梦', 4, 1482992827, 0, '<p>还有，按照你的逻辑来实现的话，<code>JDK1.6</code>的实现方式绝对是占用更少内存的，因为<code>array</code>是引用类型。即便你循环<code>1000000</code>次<code>substring</code>，在<code>String</code>对象中的<code>char[] value</code>也是同一个对象，而<code>JDK1.7</code>使用<code>Arrays.copy</code>的方式实现，那你每一次<code>substring</code>就将会生成一个新的<code>char[] value</code>实例。</p>', 0, 1, '120.84.10.168', 40, 0);
INSERT INTO `ask_answer` VALUES (84, 26, '为什么html里面的onclick函数后面要加()，而js里面不需要？', 'mayun', 3, 1482992108, 0, '<p>我刚才自己做了一下测试，大概知道是为什么了。</p>', 0, 1, '120.84.10.168', 60, 0);
INSERT INTO `ask_answer` VALUES (85, 26, '为什么html里面的onclick函数后面要加()，而js里面不需要？', 'rzld100', 1, 1482992048, 0, '<p><img data-src="/img/bVHxWt?w=938&amp;h=227"></p>', 0, 1, '120.84.10.168', 37, 0);
INSERT INTO `ask_answer` VALUES (86, 26, '为什么html里面的onclick函数后面要加()，而js里面不需要？', 'admin', 2, 1482992468, 0, '<p><img data-src="/img/bVHxWA?w=346&amp;h=78"></p>', 0, 1, '120.84.10.168', 46, 0);
INSERT INTO `ask_answer` VALUES (87, 26, '为什么html里面的onclick函数后面要加()，而js里面不需要？', 'rzld100', 1, 1482993068, 0, '<p>当在html里面写onclick的时候，实际上fn()是在一个onclick函数里面。<br><strong>这个时候浏览器的console控制台打印出来的是function onclick(){ fn(); }</strong>  <br>所以当你点击按钮的时候，onclick函数会执行，然后onclick里面的是fn()，所以执行onclick函数的时候，fn函数也执行了，但是如果这时候onclick="fn"的话，就是function onclick(){ fn }，这样就算执行了onclick，fn也就不会执行了。</p>', 0, 1, '120.84.10.168', 26, 0);
INSERT INTO `ask_answer` VALUES (88, 26, '为什么html里面的onclick函数后面要加()，而js里面不需要？', 'admin', 2, 1482992888, 0, '<p><img data-src="/img/bVHxWF?w=996&amp;h=230"></p>', 0, 1, '120.84.10.168', 35, 0);
INSERT INTO `ask_answer` VALUES (89, 26, '为什么html里面的onclick函数后面要加()，而js里面不需要？', '梦与毁毁于梦', 4, 1482992348, 0, '<p><img data-src="/img/bVHxWT?w=879&amp;h=69"></p>', 0, 1, '120.84.10.168', 42, 0);
INSERT INTO `ask_answer` VALUES (90, 26, '为什么html里面的onclick函数后面要加()，而js里面不需要？', '梦与毁毁于梦', 4, 1482992228, 0, '<p>当用DOM0级事件的时候，onclick实际上就是你赋值的那个函数，在上面代码里面，onclick就是fn函数，所以当你触发onclick的时候，onclick执行，其实就是fn函数执行，如果你换成fn()，不用触发onclick就会直接执行。</p>', 0, 1, '120.84.10.168', 55, 0);
INSERT INTO `ask_answer` VALUES (91, 26, '为什么html里面的onclick函数后面要加()，而js里面不需要？', '梦与毁毁于梦', 4, 1482992468, 0, '<p>前者是引用后者是函数本身</p>', 0, 1, '120.84.10.168', 76, 0);
INSERT INTO `ask_answer` VALUES (92, 26, '为什么html里面的onclick函数后面要加()，而js里面不需要？', 'admin', 2, 1482992348, 0, '<p>本质在这里 <a href="https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/Event_attributes">https://developer.mozilla.org...</a></p>', 0, 1, '120.84.10.168', 69, 0);
INSERT INTO `ask_answer` VALUES (93, 26, '为什么html里面的onclick函数后面要加()，而js里面不需要？', 'rzld100', 1, 1482992228, 0, '<p>注意第一句话</p>', 0, 1, '120.84.10.168', 25, 0);
INSERT INTO `ask_answer` VALUES (94, 26, '为什么html里面的onclick函数后面要加()，而js里面不需要？', 'mayun', 3, 1482992528, 0, '<p>Every HTML element has a set of attributes that allow for the<br>execution of JavaScript when certain events happen</p>', 0, 1, '120.84.10.168', 80, 0);
INSERT INTO `ask_answer` VALUES (95, 26, '为什么html里面的onclick函数后面要加()，而js里面不需要？', 'rzld100', 1, 1482992048, 0, '<p>意思就是 html上直接用的 onclick 里面的“” 相当于一段js代码，直接执行的，所以作为函数调用，当然要有()，要不执行什么？？</p>', 0, 1, '120.84.10.168', 63, 0);
INSERT INTO `ask_answer` VALUES (96, 26, '为什么html里面的onclick函数后面要加()，而js里面不需要？', '梦与毁毁于梦', 4, 1482992048, 0, '<p>js里面的onclick 实际走的 EventTarget.addEventListener() 这个你应该懂的。</p>', 0, 1, '120.84.10.168', 26, 0);
INSERT INTO `ask_answer` VALUES (97, 26, '为什么html里面的onclick函数后面要加()，而js里面不需要？', '梦与毁毁于梦', 4, 1482992348, 0, '<p><strong>调用函数</strong></p>', 0, 1, '120.84.10.168', 30, 0);
INSERT INTO `ask_answer` VALUES (98, 27, '页面初始化的数据怎么获得', '梦与毁毁于梦', 4, 1482992410, 0, '<p>如果后端是 node.js，可以考虑 SSR 后端渲染，如果是其他后端服务器，可以考虑首屏前后端模板杂揉，比如 jsp 文件中将 后端的数据插入标签（好久不玩 java，不清楚是什么标签，不举例了） 放到 script 标签里，或者 php 里 script 标签里 <code>var serverSideData = &lt;?php echo json_encode($items); ?&gt;</code></p>', 0, 1, '120.84.10.168', 63, 0);
INSERT INTO `ask_answer` VALUES (99, 29, '请问：怎么将这串字符串只是以单竖线分隔开分成两部分"A|bbbbb||CCCCC"？', 'mayun', 3, 1482992714, 0, '<p>Java版</p>', 0, 1, '120.84.10.168', 41, 0);
INSERT INTO `ask_answer` VALUES (100, 29, '请问：怎么将这串字符串只是以单竖线分隔开分成两部分"A|bbbbb||CCCCC"？', '梦与毁毁于梦', 4, 1482992534, 0, '<p><code>preg_split(/(?&lt;!|)|(?!|)/, "A|bbbbb||CCCCC");</code></p>', 0, 1, '120.84.10.168', 62, 0);
INSERT INTO `ask_answer` VALUES (101, 31, 'vue2.0 在mounted时不能获取到$route.query的值？', 'admin', 2, 1482992777, 0, '<p>这个你可以看看vue的生命周期。</p>', 0, 1, '120.84.10.168', 59, 0);
INSERT INTO `ask_answer` VALUES (102, 31, 'vue2.0 在mounted时不能获取到$route.query的值？', 'admin', 2, 1482992837, 0, '<p>所以可能出现你的情况，组件及其上的方法没在dom中，加个延时，渲染好了，然后你的打印就有东西</p>', 0, 1, '120.84.10.168', 45, 0);
INSERT INTO `ask_answer` VALUES (103, 31, 'vue2.0 在mounted时不能获取到$route.query的值？', '梦与毁毁于梦', 4, 1482992177, 0, '<p>那就beforeMount</p>', 0, 1, '120.84.10.168', 47, 0);
INSERT INTO `ask_answer` VALUES (104, 31, 'vue2.0 在mounted时不能获取到$route.query的值？', '梦与毁毁于梦', 4, 1482992057, 0, '<p>写到 created() 里？</p>', 0, 1, '120.84.10.168', 42, 0);
INSERT INTO `ask_answer` VALUES (105, 31, 'vue2.0 在mounted时不能获取到$route.query的值？', '梦与毁毁于梦', 4, 1482991997, 1482993136, '<p><strong>bold</strong></p>', 1, 1, '120.84.10.168', 64, 0);
INSERT INTO `ask_answer` VALUES (106, 32, 'Tp5+ajax返回数据后,处理json的问题', 'rzld100', 1, 1482992658, 0, '<p>你这返回的应该是json字符串<br>用JSON.parse()方法转换一下</p>', 0, 1, '120.84.10.168', 20, 0);
INSERT INTO `ask_answer` VALUES (107, 32, 'Tp5+ajax返回数据后,处理json的问题', 'rzld100', 1, 1482992358, 1482993137, '<p>var json=JSON.parse(msg.topic_search_info);<br>然后在console.log(json);<br>看看打印的是不是json对象</p>', 1, 1, '120.84.10.168', 41, 0);
INSERT INTO `ask_answer` VALUES (108, 32, 'Tp5+ajax返回数据后,处理json的问题', 'rzld100', 1, 1482993018, 0, '<p>var json=JSON.parse(msg.topic_search_info);</p>', 0, 1, '120.84.10.168', 28, 0);
INSERT INTO `ask_answer` VALUES (109, 32, 'Tp5+ajax返回数据后,处理json的问题', 'rzld100', 1, 1482992718, 0, '<p><img data-src="/img/bVHx3t?w=702&amp;h=129"><br>这里的json_encode去掉</p>', 0, 1, '120.84.10.168', 53, 0);
INSERT INTO `ask_answer` VALUES (110, 0, '让父层中的两列div同高', 'mayun', 3, 1482992360, 0, '<p>你的需求是这样吗？height：100%; 最简单易懂。<br><img data-src="/img/bVHx2X?w=1914&amp;h=658"></p>', 0, 1, '120.84.10.168', 75, 0);
INSERT INTO `ask_answer` VALUES (111, 0, '让父层中的两列div同高', 'rzld100', 1, 1482992420, 0, '<p>直接给你的div设置height啊</p>', 0, 1, '120.84.10.168', 62, 0);
INSERT INTO `ask_answer` VALUES (112, 0, '让父层中的两列div同高', 'rzld100', 1, 1482992300, 0, '<p>你那table都设height了</p>', 0, 1, '120.84.10.168', 59, 0);
INSERT INTO `ask_answer` VALUES (113, 0, '让父层中的两列div同高', 'mayun', 3, 1482992900, 0, '<p>把第一个div设height，里面的元素display：inie-block</p>', 0, 1, '120.84.10.168', 51, 0);
INSERT INTO `ask_answer` VALUES (114, 0, '让父层中的两列div同高', 'admin', 2, 1482992900, 0, '<p>父元素：line-height：//你的height</p>', 0, 1, '120.84.10.168', 53, 0);
INSERT INTO `ask_answer` VALUES (115, 0, '让父层中的两列div同高', '梦与毁毁于梦', 4, 1482992480, 0, '<p>关键字：padding补偿法</p>', 0, 1, '120.84.10.168', 41, 0);
INSERT INTO `ask_answer` VALUES (116, 33, 'Unity3D项目怎么上传到github?', '', 5, 1482992781, 0, '<p>自己搭建一个或者买个收费的！</p>', 0, 1, '120.84.10.168', 49, 0);
INSERT INTO `ask_answer` VALUES (117, 33, 'Unity3D项目怎么上传到github?', 'rzld100', 1, 1482992841, 0, '<p>github 限制在1G，单个文件不能超过100M，有50M的文件，就会警告了。</p>', 0, 1, '120.84.10.168', 22, 0);
INSERT INTO `ask_answer` VALUES (118, 33, 'Unity3D项目怎么上传到github?', 'mayun', 3, 1482992781, 0, '<p>所以在上传代码时要记得把一些大的tag文件去掉，如SourceInsight工程文件</p>', 0, 1, '120.84.10.168', 28, 0);
INSERT INTO `ask_answer` VALUES (119, 33, 'Unity3D项目怎么上传到github?', 'admin', 2, 1482993081, 0, '<p>ctags等</p>', 0, 1, '120.84.10.168', 51, 0);
INSERT INTO `ask_answer` VALUES (120, 33, 'Unity3D项目怎么上传到github?', 'admin', 2, 1482992541, 0, '<p>可通过以下命令查找超过100M的文件</p>', 0, 1, '120.84.10.168', 63, 0);
INSERT INTO `ask_answer` VALUES (121, 33, 'Unity3D项目怎么上传到github?', '梦与毁毁于梦', 4, 1482992361, 0, '<p>find ./ -type f -size +102400k</p>', 0, 1, '120.84.10.168', 62, 0);
INSERT INTO `ask_answer` VALUES (122, 34, 'H5移动端网页可以调用本地app实现分享功能吗？', '梦与毁毁于梦', 4, 1482992302, 0, '<p>如果你这个是webapp，在浏览器里跑的，那么这几个分享要分情况讨论：</p>', 0, 1, '120.84.10.168', 47, 0);
INSERT INTO `ask_answer` VALUES (123, 34, 'H5移动端网页可以调用本地app实现分享功能吗？', 'rzld100', 1, 1482992542, 0, '<p>1 平台暴露有分享api的，直接用js调用分享api就可以了。比如你看下<a href="http://overtrue.me/share.js/">http://overtrue.me/share.js/</a>这个项目的源码：</p>', 0, 1, '120.84.10.168', 79, 0);
INSERT INTO `ask_answer` VALUES (124, 34, 'H5移动端网页可以调用本地app实现分享功能吗？', '梦与毁毁于梦', 4, 1482992062, 0, '<p>2 没有暴露有分享api的，比如分享到微信和朋友圈，那就要自己去找解决方案。在微信自带的浏览器和uc浏览器里都可以做到这两个，前者调用微信官方的jssdk，后者可能是uc自己封装了app层的分享方法。</p>', 0, 1, '120.84.10.168', 50, 0);
INSERT INTO `ask_answer` VALUES (125, 34, 'H5移动端网页可以调用本地app实现分享功能吗？', 'mayun', 3, 1482992662, 0, '<p>如果是hybrid app，那么在app层调用人家给的分享sdk，然后暴露给h5（就像uc一样。）ps：这一块我没怎么做过，仅供参考</p>', 0, 1, '120.84.10.168', 26, 0);
INSERT INTO `ask_answer` VALUES (126, 34, 'H5移动端网页可以调用本地app实现分享功能吗？', 'mayun', 3, 1482992842, 0, '<p>pps：一旦要做到微信的分享就头疼不已。</p>', 0, 1, '120.84.10.168', 74, 0);
INSERT INTO `ask_answer` VALUES (127, 35, '移动端rem布局 和 meta标签  content="width=750"里面用px布局的区别？', 'admin', 2, 1482992303, 1482993142, '<p>width=750px我理解为强行把各个浏览器的宽都变成750px，在切页面的时候全部都是取设计稿的实际像素值，也就是说一般固定750px之后给你的设计稿宽度也应该是750px，比如元素用定位的时候设计稿中元素左边是多少像素那left就是多少像素。rem则可以通过less来编译，我也是个新手，就我目前用下来的情况就是rem做那种元素铺满整个屏幕的情况下比较实用，固定宽在做项目的时候由于每个手机屏幕的高度不同需要有一个最小的内容区域，而rem则不需要。</p>', 1, 1, '120.84.10.168', 69, 0);
INSERT INTO `ask_answer` VALUES (128, 0, 'ajax错误信息 {readyState: 4, status: 200, statusText:', 'admin', 2, 1482992965, 0, '<p>把你的ajax代码贴出来看一下什么原因</p>', 0, 1, '120.84.10.168', 53, 0);
INSERT INTO `ask_answer` VALUES (129, 0, 'ajax错误信息 {readyState: 4, status: 200, statusText:', '梦与毁毁于梦', 4, 1482991945, 0, '<p><a href="http://stackoverflow.com/questions/14713489/error-callback-with-readystate4-status200-statustextsuccess">http://stackoverflow.com/ques...</a></p>', 1, 1, '120.84.10.168', 65, 0);
INSERT INTO `ask_answer` VALUES (130, 0, 'ajax错误信息 {readyState: 4, status: 200, statusText:', '梦与毁毁于梦', 4, 1482992125, 0, '<p>That suggests that the HTTP request was successful but the attempt to parse the data was not.</p>', 0, 1, '120.84.10.168', 75, 0);
INSERT INTO `ask_answer` VALUES (131, 0, 'ajax错误信息 {readyState: 4, status: 200, statusText:', 'rzld100', 1, 1482992005, 0, '<p>i.e. that the data was not formatted as JSONP.</p>', 0, 1, '120.84.10.168', 45, 0);
INSERT INTO `ask_answer` VALUES (132, 37, 'echarts 地图样式', 'mayun', 3, 1482992487, 0, '<p><a href="http://echarts.baidu.com/option.html#geo">http://echarts.baidu.com/opti...</a><br>请自行学习</p>', 0, 1, '120.84.10.168', 25, 0);
INSERT INTO `ask_answer` VALUES (133, 38, '文件内容读取：读取从指定值到文件末尾的内容', '', 5, 1482992850, 0, '<p>可以这样：</p>', 0, 1, '120.84.10.168', 49, 0);
INSERT INTO `ask_answer` VALUES (134, 39, 'vue新手，通过路由切换两个静态组件，如何互相传值？', '梦与毁毁于梦', 4, 1482992732, 0, '<p>可以用 <code>EventBus</code> ，詳細內容和例子請看我之前的回答：<a href="https://segmentfault.com/q/1010000007879907/a-1020000007886896">vue2 eventbus 求解惑</a></p>', 0, 1, '120.84.10.168', 72, 0);
INSERT INTO `ask_answer` VALUES (135, 39, 'vue新手，通过路由切换两个静态组件，如何互相传值？', 'rzld100', 1, 1482992672, 1482993151, '<p>或是用很簡單的 <code>Store Pattern</code> 來實現共享數據：</p>', 1, 1, '120.84.10.168', 26, 0);
INSERT INTO `ask_answer` VALUES (136, 39, 'vue新手，通过路由切换两个静态组件，如何互相传值？', 'rzld100', 1, 1482992252, 0, '<p>推荐你看看<strong>vuex</strong><br><a href="http://www.tuicool.com/articles/jyM32mA">vue组件传值常用方法</a></p>', 0, 1, '120.84.10.168', 49, 0);
INSERT INTO `ask_answer` VALUES (137, 39, 'vue新手，通过路由切换两个静态组件，如何互相传值？', 'admin', 2, 1482992912, 0, '<p>官方推荐使用 Vuex 集中管理应用状态。</p>', 0, 1, '120.84.10.168', 76, 0);
INSERT INTO `ask_answer` VALUES (138, 39, 'vue新手，通过路由切换两个静态组件，如何互相传值？', '梦与毁毁于梦', 4, 1482991952, 0, '<p>初级上手demo 拿走不谢～ <a href="http://vue.tigerb.cn/">http://vue.tigerb.cn/</a></p>', 0, 1, '120.84.10.168', 38, 0);
INSERT INTO `ask_answer` VALUES (139, 40, 'android 适配问题', 'admin', 2, 1482992914, 1482993152, '<p>给你推荐一篇文章<a href="http://www.jianshu.com/p/f188259d9cfe"></a><a href="http://www.jianshu.com/p/f188259d9cfe">http://www.jianshu.com/p/f188...</a></p>', 1, 1, '120.84.10.168', 47, 0);
INSERT INTO `ask_answer` VALUES (140, 40, 'android 适配问题', 'admin', 2, 1482992074, 0, '<p>这是道送分题啊同志<br>就算是ios产品之间分辨率相差都很大，更别说有几万种机器的android了<br>你写个500px宽的控件，在2k屏上只有三分之一，但在720*1280机器上已经占超过三分之二宽度，ui都没法看了</p>', 0, 1, '120.84.10.168', 40, 0);
INSERT INTO `ask_answer` VALUES (141, 40, 'android 适配问题', 'admin', 2, 1482992614, 0, '<p>我建议用相同比率来适配不同的屏幕.<br>举个栗子:<strong>160px</strong>为单位.<br>写好对应的drawable.<br><strong>如果在320px的那么就是0.5</strong><br><strong>如果在640px的那么就是0.25</strong><br>以此类推. 直接写上PX可以适配大部分的屏幕. 这也是参考CSDN上面洪样的博客里面的写法.但是比较麻烦的就是维护的drawable比较多.  适配主流屏幕就可以了.可以试试.望采纳!</p>', 0, 1, '120.84.10.168', 22, 0);
INSERT INTO `ask_answer` VALUES (142, 40, 'android 适配问题', 'rzld100', 1, 1482993034, 0, '<p>dp=px*160/dpi<br>dpi=160的设备上  160dp=160px=1inch<br>dpi=320的设备上  160dp=320px=1inch</p>', 0, 1, '120.84.10.168', 77, 0);
INSERT INTO `ask_answer` VALUES (143, 40, 'android 适配问题', 'mayun', 3, 1482992134, 0, '<p>用dp保证了在什么分辨率上 160dp的视觉效果都是1英寸的长度</p>', 0, 1, '120.84.10.168', 75, 0);
INSERT INTO `ask_answer` VALUES (144, 40, 'android 适配问题', '梦与毁毁于梦', 4, 1482992134, 0, '<p>必须推荐一下我翻译的官方文档：<a href="http://blog.csdn.net/wzy_1988/article/details/52932875"></a><a href="http://blog.csdn.net/wzy_1988/article/details/52932875">http://blog.csdn.net/wzy_1988...</a></p>', 0, 1, '120.84.10.168', 59, 0);
INSERT INTO `ask_answer` VALUES (145, 41, 'php大量访问数据库问题', 'rzld100', 1, 1482992498, 0, '<p>简单用nosql缓存一下？后台更新url再更新对应的缓存</p>', 0, 1, '120.84.10.168', 55, 0);
INSERT INTO `ask_answer` VALUES (146, 42, '有两个a，b页面，然后从a超链接进入b，然后想b页面的值传到a页面，然后关掉b页面，刷新a页面？', '梦与毁毁于梦', 4, 1482992201, 0, '<p>要是不涉及安全行的话，可以用cookie存储一样，所有页面都能读到数据了</p>', 0, 1, '120.84.10.168', 32, 0);
INSERT INTO `ask_answer` VALUES (147, 42, '有两个a，b页面，然后从a超链接进入b，然后想b页面的值传到a页面，然后关掉b页面，刷新a页面？', 'admin', 2, 1482992861, 0, '<p>前几天有一个bug，可以让b对a（opener）进行完全控制，可以自己搜搜看，但是既然是bug，修复了也就没法用了；<br>除此以外也可以使用cookie；或者postMessage进行通讯</p>', 0, 1, '120.84.10.168', 26, 0);
INSERT INTO `ask_answer` VALUES (148, 42, '有两个a，b页面，然后从a超链接进入b，然后想b页面的值传到a页面，然后关掉b页面，刷新a页面？', 'rzld100', 1, 1482992081, 0, '<p>还可以用localstorage 或 sessionStorage</p>', 0, 1, '120.84.10.168', 77, 0);
INSERT INTO `ask_answer` VALUES (149, 42, '有两个a，b页面，然后从a超链接进入b，然后想b页面的值传到a页面，然后关掉b页面，刷新a页面？', 'mayun', 3, 1482992081, 0, '<p>如果是说要自己刷新a页面的话,可以侦听localStrong的事件,具体可以查看下面的连接</p>', 0, 1, '120.84.10.168', 27, 0);
INSERT INTO `ask_answer` VALUES (150, 42, '有两个a，b页面，然后从a超链接进入b，然后想b页面的值传到a页面，然后关掉b页面，刷新a页面？', 'admin', 2, 1482992981, 0, '<p><a href="http://javascript.ruanyifeng.com/bom/webstorage.html#toc5">链接</a></p>', 0, 1, '120.84.10.168', 39, 0);
INSERT INTO `ask_answer` VALUES (151, 42, '有两个a，b页面，然后从a超链接进入b，然后想b页面的值传到a页面，然后关掉b页面，刷新a页面？', 'admin', 2, 1482992321, 0, '<p><strong>刚在本地测试过</strong></p>', 0, 1, '120.84.10.168', 37, 0);
INSERT INTO `ask_answer` VALUES (152, 42, '有两个a，b页面，然后从a超链接进入b，然后想b页面的值传到a页面，然后关掉b页面，刷新a页面？', 'mayun', 3, 1482992261, 0, '<p><strong>a页面</strong></p>', 0, 1, '120.84.10.168', 59, 0);
INSERT INTO `ask_answer` VALUES (153, 42, '有两个a，b页面，然后从a超链接进入b，然后想b页面的值传到a页面，然后关掉b页面，刷新a页面？', 'mayun', 3, 1482992081, 0, '<p><img data-src="/img/bVHxTO?w=321&amp;h=330"></p>', 0, 1, '120.84.10.168', 58, 0);
INSERT INTO `ask_answer` VALUES (154, 42, '有两个a，b页面，然后从a超链接进入b，然后想b页面的值传到a页面，然后关掉b页面，刷新a页面？', 'admin', 2, 1482993041, 1482993160, '<p><strong>b页面</strong></p>', 1, 1, '120.84.10.168', 30, 0);
INSERT INTO `ask_answer` VALUES (155, 43, 'click事件如何让其点击的是该元素而并非子元素？', 'mayun', 3, 1482992442, 0, '<p>如果是vue2.0的话,可以尝试添加.native修饰符</p>', 0, 1, '120.84.10.168', 75, 0);
INSERT INTO `ask_answer` VALUES (156, 43, 'click事件如何让其点击的是该元素而并非子元素？', 'mayun', 3, 1482992742, 1482993161, '<p>如果保證是父子關係的話，直接取得 <code>parentNode</code> 就可以了：</p>', 1, 1, '120.84.10.168', 44, 0);
INSERT INTO `ask_answer` VALUES (157, 0, 'jquery版本从1.8.3更换到1.9.0后删除效果失效？', '', 5, 1482992567, 0, '<p>好像jquery 从 1.8.3 到 1.9.0 的after方法有变化。</p>', 1, 1, '120.84.10.168', 23, 0);
INSERT INTO `ask_answer` VALUES (158, 46, 'Vue用v-for循环渲染数组数据，数据更新了，视图并没更新', '', 5, 1482992391, 0, '<p>请先看是否遇到了vue文档说的注意的事项</p>', 0, 1, '120.84.10.168', 26, 0);
INSERT INTO `ask_answer` VALUES (159, 46, 'Vue用v-for循环渲染数组数据，数据更新了，视图并没更新', 'admin', 2, 1482992091, 0, '<p>注意事项</p>', 0, 1, '120.84.10.168', 43, 0);
INSERT INTO `ask_answer` VALUES (160, 46, 'Vue用v-for循环渲染数组数据，数据更新了，视图并没更新', 'rzld100', 1, 1482992511, 0, '<p>由于 JavaScript 的限制， Vue 不能检测以下变动的数组：<br>当你利用索引直接设置一个项时，例如： vm.items[indexOfItem] = newValue<br>当你修改数组的长度时，例如： vm.items.length = newLength<br>为了避免第一种情况，以下两种方式将达到像 vm.items[indexOfItem] = newValue 的效果， 同时也将触发状态更新：</p>', 0, 1, '120.84.10.168', 29, 0);
INSERT INTO `ask_answer` VALUES (161, 46, 'Vue用v-for循环渲染数组数据，数据更新了，视图并没更新', 'admin', 2, 1482992991, 0, '<p>避免第二种情况，使用 splice：</p>', 0, 1, '120.84.10.168', 64, 0);
INSERT INTO `ask_answer` VALUES (162, 46, 'Vue用v-for循环渲染数组数据，数据更新了，视图并没更新', '梦与毁毁于梦', 4, 1482992031, 0, '<p><a href="http://cn.vuejs.org/v2/guide/list.html#%E6%B3%A8%E6%84%8F%E4%BA%8B%E9%A1%B9">注意事项</a></p>', 0, 1, '120.84.10.168', 72, 0);
INSERT INTO `ask_answer` VALUES (163, 47, 'thinkphp 模板中输出图片地址失效', 'mayun', 3, 1482992152, 0, '<p>图片不输出，肯定就是路径不对 ，仔细排查下，不行的话换绝对路径再试试</p>', 0, 1, '120.84.10.168', 45, 0);
INSERT INTO `ask_answer` VALUES (164, 47, 'thinkphp 模板中输出图片地址失效', 'admin', 2, 1482992872, 0, '<p>文件管理器 看下有没这图片</p>', 0, 1, '120.84.10.168', 50, 0);
INSERT INTO `ask_answer` VALUES (165, 47, 'thinkphp 模板中输出图片地址失效', 'rzld100', 1, 1482992932, 0, '<p>首先确认文件是否确实存在对应文件夹下</p>', 0, 1, '120.84.10.168', 54, 0);
INSERT INTO `ask_answer` VALUES (166, 47, 'thinkphp 模板中输出图片地址失效', 'mayun', 3, 1482992392, 0, '<p>使用相对路径是和你项目的根目录相对而言的</p>', 0, 1, '120.84.10.168', 25, 0);
INSERT INTO `ask_answer` VALUES (167, 47, 'thinkphp 模板中输出图片地址失效', 'admin', 2, 1482993112, 0, '<p>建议你尝试绝对路径，最好自己配制一个静态服务器专门存放图片</p>', 0, 1, '120.84.10.168', 52, 0);
INSERT INTO `ask_answer` VALUES (168, 49, 'Python内部是如何存储GC引用变量的计数的？', 'mayun', 3, 1482993115, 1482993174, '<p>这个比较容易理解，GIL保证python byte code在进程内同时只有一个native thread在运<br>行。但byte code自身的逻辑仍然需要加锁/互斥等保证线程可重入，因为byte code运行<br>过程中任意点都可能被打断并切换到另外的线程。</p>', 1, 1, '120.84.10.168', 55, 0);
INSERT INTO `ask_answer` VALUES (169, 49, 'Python内部是如何存储GC引用变量的计数的？', 'rzld100', 1, 1482992455, 0, '<p>举个简单的例子：<br>一段计数器的代码：<br>// Step 1<br>counter = get_counter()<br>// Step 2<br>counter += 1<br>// Step 3<br>set_counter(counter)</p>', 0, 1, '120.84.10.168', 51, 0);
INSERT INTO `ask_answer` VALUES (170, 49, 'Python内部是如何存储GC引用变量的计数的？', 'mayun', 3, 1482992215, 0, '<p>假设初始Counter为0，在不做任何同步的情况下两个线程同时执行这段Python代码，<br>期望结果应该是两个线程都做了计数，最终Counter应该为2:</p>', 0, 1, '120.84.10.168', 33, 0);
INSERT INTO `ask_answer` VALUES (171, 49, 'Python内部是如何存储GC引用变量的计数的？', 'admin', 2, 1482992995, 0, '<p>但由于没有进行加锁/互斥导致执行情形如下：</p>', 0, 1, '120.84.10.168', 43, 0);
INSERT INTO `ask_answer` VALUES (172, 49, 'Python内部是如何存储GC引用变量的计数的？', 'admin', 2, 1482992815, 0, '<p>线程A执行完Step1时取得counter为0，这是切换到线程B</p>', 0, 1, '120.84.10.168', 31, 0);
INSERT INTO `ask_answer` VALUES (173, 49, 'Python内部是如何存储GC引用变量的计数的？', 'mayun', 3, 1482992275, 0, '<p>线程B顺利执行完Step1,2,3，现在Counter为1，然后切换到A</p>', 0, 1, '120.84.10.168', 46, 0);
INSERT INTO `ask_answer` VALUES (174, 49, 'Python内部是如何存储GC引用变量的计数的？', 'admin', 2, 1482992695, 0, '<p>线程A继续执行完Step2得到counter为1，然后Step3设置Counter为1。</p>', 0, 1, '120.84.10.168', 29, 0);
INSERT INTO `ask_answer` VALUES (175, 49, 'Python内部是如何存储GC引用变量的计数的？', 'admin', 2, 1482991975, 0, '<p>最终结果为1.</p>', 0, 1, '120.84.10.168', 48, 0);
INSERT INTO `ask_answer` VALUES (176, 51, '键盘遮挡RecyclerView', '梦与毁毁于梦', 4, 1482992939, 0, '<p>标题栏被顶起来应该是你布局文件没写对，我需要知道你xml怎么写的，另外，还有可能其实不是被遮挡，而且RecyclerView没有滑动到最底部而已</p>', 0, 1, '120.84.10.168', 72, 0);
INSERT INTO `ask_answer` VALUES (177, 51, '键盘遮挡RecyclerView', 'mayun', 3, 1482993119, 1482993178, '<p>对于RecyclerView来说，你需要两个配置，一是，<code>android:windowSoftInputMode="adjustResize"</code>，再就是代码初始化RecyclerView的时候加上这个</p>', 1, 1, '120.84.10.168', 25, 0);
INSERT INTO `ask_answer` VALUES (178, 51, '键盘遮挡RecyclerView', 'rzld100', 1, 1482992999, 0, '<p>代码不全，请补全</p>', 0, 1, '120.84.10.168', 48, 0);
INSERT INTO `ask_answer` VALUES (179, 0, '关于CI的一个问题', '梦与毁毁于梦', 4, 1482992520, 0, '<p>因为需要对比的 不只有一个版本， version_compare 只是比较你此次需要比较的版本</p>', 1, 1, '120.84.10.168', 72, 0);
INSERT INTO `ask_answer` VALUES (180, 52, '酷市场应用管理的重叠toolbar是怎么实现的？', 'rzld100', 1, 1482993002, 1482993181, '<p>如图所示</p>', 1, 1, '120.84.10.168', 47, 0);
INSERT INTO `ask_answer` VALUES (181, 52, '酷市场应用管理的重叠toolbar是怎么实现的？', 'rzld100', 1, 1482992882, 0, '<p><img data-src="/img/bVHxMX?w=1119&amp;h=830"></p>', 0, 1, '120.84.10.168', 29, 0);
INSERT INTO `ask_answer` VALUES (182, 55, 'spring mvc邮箱激活功能', 'mayun', 3, 1482992949, 0, '<p><img data-src="/img/bVHxKj?w=806&amp;h=549"><br>&lt;?xml version="1.0" encoding="UTF-8"?&gt;<br>&lt;beans xmlns="http://www.springframework.org/schema/beans" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:context="http://www.springframework.org/schema/context"</p>', 0, 1, '120.84.10.168', 74, 0);
INSERT INTO `ask_answer` VALUES (183, 55, 'spring mvc邮箱激活功能', 'mayun', 3, 1482992229, 1482993187, '<p>&lt;/beans&gt;</p>', 1, 1, '120.84.10.168', 57, 0);
INSERT INTO `ask_answer` VALUES (184, 55, 'spring mvc邮箱激活功能', 'admin', 2, 1482992949, 0, '<p>数据库成你可以有一个标记 如果是1就激活成功 当你点击了邮件的链接（包含用户的用户唯一信息）即可激活</p>', 0, 1, '120.84.10.168', 67, 0);
INSERT INTO `ask_answer` VALUES (185, 56, '手机端预览的比例不对', 'admin', 2, 1482992410, 0, '<p>你那是81%吧……</p>', 0, 1, '120.84.10.168', 54, 0);
INSERT INTO `ask_answer` VALUES (186, 56, '手机端预览的比例不对', 'rzld100', 1, 1482993010, 0, '<p>设置的是 <code>width = 780px</code>，实际是 <code>980px</code>。</p>', 0, 1, '120.84.10.168', 34, 0);
INSERT INTO `ask_answer` VALUES (187, 56, '手机端预览的比例不对', 'mayun', 3, 1482993130, 0, '<p>估计你的计算宽度的方法错了。</p>', 0, 1, '120.84.10.168', 70, 0);
INSERT INTO `ask_answer` VALUES (188, 56, '手机端预览的比例不对', 'admin', 2, 1482992590, 1482993189, '<p>下面是正确的计算方式，你看下：</p>', 1, 1, '120.84.10.168', 37, 0);
INSERT INTO `ask_answer` VALUES (189, 56, '手机端预览的比例不对', 'admin', 2, 1482992530, 0, '<p>解决了，head里加一句这个就可以了呢<br>&lt;meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/&gt;<br>原文解释<a href="http://www.xingbell.com/news-n609.html">http://www.xingbell.com/news-...</a></p>', 0, 1, '120.84.10.168', 46, 0);
INSERT INTO `ask_answer` VALUES (190, 57, 'vue-reource 的请求问题', '', 5, 1482992532, 0, '<p>get貌似就是url传参吧？换http method？</p>', 0, 1, '120.84.10.168', 63, 0);
INSERT INTO `ask_answer` VALUES (191, 58, 'android开发中VideoView 控件播放内存占用很高，且偶尔遇到黑屏现象？', '', 5, 1482993073, 1482993192, '<p>观察下来，连续播放不同文件，在达到一个峰值之后不会继续往上升。</p>', 1, 1, '120.84.10.168', 48, 0);
INSERT INTO `ask_answer` VALUES (192, 59, 'Android多个activity之间传递/共享对象的处理', 'admin', 2, 1482992414, 0, '<p>我觉得你还是应该实现Parcelable接口，然后通过Intent.putExtra()传递即可。Google通过Parcelable对对象做序列化的性能比你想的要高的多，不可能成为你当前程序性能的瓶颈。</p>', 0, 1, '120.84.10.168', 74, 0);
INSERT INTO `ask_answer` VALUES (193, 59, 'Android多个activity之间传递/共享对象的处理', 'rzld100', 1, 1482992894, 0, '<p>如果Intent的参数超size，可以考虑将大对象序列化到本地文件，然后传递URI过去。类似的存储中介还有ShreadPreference和SQLite。</p>', 0, 1, '120.84.10.168', 38, 0);
INSERT INTO `ask_answer` VALUES (194, 59, 'Android多个activity之间传递/共享对象的处理', 'rzld100', 1, 1482992354, 0, '<p>同时，使用静态类去存储大量数据也是可行的，主要考虑好并发写和同步读取的问题。</p>', 0, 1, '120.84.10.168', 55, 0);
INSERT INTO `ask_answer` VALUES (195, 59, 'Android多个activity之间传递/共享对象的处理', '梦与毁毁于梦', 4, 1482993074, 0, '<p>弄一个application下的setter和getter就能达到你的要求，就不用静态变量了，组件之间不建议使用静态变量传值。组件间应该考虑数据的交换传递而不是对象引用，要降低耦合度。</p>', 0, 1, '120.84.10.168', 46, 0);
INSERT INTO `ask_answer` VALUES (196, 59, 'Android多个activity之间传递/共享对象的处理', 'admin', 2, 1482992774, 0, '<p>可以使用 Eventbus</p>', 0, 1, '120.84.10.168', 42, 0);
INSERT INTO `ask_answer` VALUES (197, 59, 'Android多个activity之间传递/共享对象的处理', 'rzld100', 1, 1482992654, 0, '<p>不知道你遇到的“大小和性能的限制”   限制在何处<br>传个对象什么的RxBus 好顶赞</p>', 0, 1, '120.84.10.168', 30, 0);
INSERT INTO `ask_answer` VALUES (198, 0, 'label标签勾选问题', '梦与毁毁于梦', 4, 1482992302, 0, '<p>你这是模版数据循环吧</p>', 0, 1, '120.84.10.168', 28, 0);
INSERT INTO `ask_answer` VALUES (199, 0, 'label标签勾选问题', 'admin', 2, 1482992002, 0, '<p>这样写的话岂不是每一个循环对象都带有<code>active</code>类,建议<del>active</del></p>', 0, 1, '120.84.10.168', 68, 0);
INSERT INTO `ask_answer` VALUES (200, 0, 'label标签勾选问题', '梦与毁毁于梦', 4, 1482992902, 0, '<p>因为没有全部代码不能看到实际的效果图，只能按代码逻辑来写了</p>', 0, 1, '120.84.10.168', 28, 0);
INSERT INTO `ask_answer` VALUES (201, 0, 'label标签勾选问题', 'rzld100', 1, 1482992902, 0, '<p>还是两个都默认钩上的<a href="/u/qiuyinong">@秋意浓</a></p>', 0, 1, '120.84.10.168', 53, 0);
INSERT INTO `ask_answer` VALUES (202, 62, 'button状态改变问题', '', 5, 1482992963, 1482993202, '<p>不应该是这样么<br>self.btn.selected = !self.btn.selected;</p>', 1, 1, '120.84.10.168', 20, 0);
INSERT INTO `ask_answer` VALUES (203, 0, 'php 如何只输出最后生成的那个值？？', '', 5, 1482992604, 0, '<p>弄个变量。。。 跳出循环后输出</p>', 0, 1, '120.84.10.168', 30, 0);
INSERT INTO `ask_answer` VALUES (204, 0, 'php 如何只输出最后生成的那个值？？', 'rzld100', 1, 1482992184, 0, '<p>这不就行了么？</p>', 0, 1, '120.84.10.168', 41, 0);
INSERT INTO `ask_answer` VALUES (205, 0, 'php 如何只输出最后生成的那个值？？', '梦与毁毁于梦', 4, 1482992604, 0, '<p>加个判断不就好了。如下你试试看</p>', 0, 1, '120.84.10.168', 31, 0);
INSERT INTO `ask_answer` VALUES (206, 0, 'php 如何只输出最后生成的那个值？？', 'rzld100', 1, 1482993024, 0, '<p>你如果是要弄那种页面的数字 1=》2=》3=》4 这样跳的话用js来写</p>', 0, 1, '120.84.10.168', 69, 0);
INSERT INTO `ask_answer` VALUES (207, 0, 'php 如何只输出最后生成的那个值？？', '梦与毁毁于梦', 4, 1482992484, 0, '<p>设置个头就行了, 服务器推技术就是这样的:</p>', 0, 1, '120.84.10.168', 22, 0);
INSERT INTO `ask_answer` VALUES (208, 0, 'php 如何只输出最后生成的那个值？？', 'mayun', 3, 1482992064, 0, '<p>目测只有firefox浏览器支持, 其他的浏览器只能显示个方框</p>', 0, 1, '120.84.10.168', 21, 0);
INSERT INTO `ask_answer` VALUES (209, 0, 'php 如何只输出最后生成的那个值？？', 'rzld100', 1, 1482992604, 0, '<p>这个显示进度不是这样实现的，不是通过多次服务端的返回获取的，服务端也不会在一次请求里多次返回。</p>', 0, 1, '120.84.10.168', 22, 0);
INSERT INTO `ask_answer` VALUES (210, 0, 'php 如何只输出最后生成的那个值？？', '梦与毁毁于梦', 4, 1482992484, 0, '<p>几乎全靠客户端：</p>', 0, 1, '120.84.10.168', 45, 0);
INSERT INTO `ask_answer` VALUES (211, 0, 'php 如何只输出最后生成的那个值？？', 'rzld100', 1, 1482992604, 0, '<p><a href="https://coderwall.com/p/je3uww/get-progress-of-an-ajax-request">https://coderwall.com/p/je3uw...</a></p>', 0, 1, '120.84.10.168', 77, 0);
INSERT INTO `ask_answer` VALUES (212, 0, 'php 如何只输出最后生成的那个值？？', 'admin', 2, 1482992844, 0, '<p><a href="http://php.net/manual/en/ref.outcontrol.php">Output Control Functions</a></p>', 0, 1, '120.84.10.168', 29, 0);
INSERT INTO `ask_answer` VALUES (213, 63, 'vue.js unable to verify the first certificate', '梦与毁毁于梦', 4, 1482992186, 0, '<p>是不是要翻墙</p>', 0, 1, '120.84.10.168', 56, 0);
INSERT INTO `ask_answer` VALUES (214, 63, 'vue.js unable to verify the first certificate', 'rzld100', 1, 1482992486, 1482993205, '<p>网络问题，你需要科学上网。</p>', 1, 1, '120.84.10.168', 58, 0);
INSERT INTO `ask_answer` VALUES (215, 63, 'vue.js unable to verify the first certificate', 'admin', 2, 1482993086, 0, '<p>谢邀~~~</p>', 0, 1, '120.84.10.168', 23, 0);
INSERT INTO `ask_answer` VALUES (216, 63, 'vue.js unable to verify the first certificate', '梦与毁毁于梦', 4, 1482993086, 0, '<p>推荐试一下yarn</p>', 0, 1, '120.84.10.168', 70, 0);
INSERT INTO `ask_answer` VALUES (217, 63, 'vue.js unable to verify the first certificate', 'mayun', 3, 1482992246, 0, '<p><a href="https://yarnpkg.com/en/docs/install">yarn安装</a><br><a href="https://yarnpkg.com/en/docs/usage">yarn使用</a><br>替换yarn源为淘宝</p>', 0, 1, '120.84.10.168', 62, 0);
INSERT INTO `ask_answer` VALUES (218, 64, '关于gem的问题', 'mayun', 3, 1482992427, 0, '<p>首先你要清楚知道错误的提示，使用者经常出现的错误有如下几个：<br>请检查<br>1.安装rails需要sqlite3和sqlite3-dev<br>2.需要zlib和zlib-dev<br>3.编译安装的话需要安装完整的编译工具，make、gcc，gcc-c++等</p>', 0, 1, '120.84.10.168', 61, 0);
INSERT INTO `ask_answer` VALUES (219, 64, '关于gem的问题', 'rzld100', 1, 1482992607, 0, '<p>一般来说，提问的时候要专注一个问题，而且要把错误提示贴出来。</p>', 0, 1, '120.84.10.168', 57, 0);
INSERT INTO `ask_answer` VALUES (220, 64, '关于gem的问题', 'admin', 2, 1482992067, 0, '<p>这么粗略地发问，我也不知道该怎么回答。<br>干脆你别学了。</p>', 0, 1, '120.84.10.168', 33, 0);
INSERT INTO `ask_answer` VALUES (221, 66, '对ruby感兴趣，打算学习一下，结果刚开始就遇到了问题。。。', 'mayun', 3, 1482992790, 0, '<p>看上去是你的环境问题. 或者是路径中带有 GBK 编码. Rails最佳实践请在 Linux | Mac 开发, 不要舍本逐末的花时间在这样的事情上</p>', 0, 1, '120.84.10.168', 46, 0);
INSERT INTO `ask_answer` VALUES (222, 66, '对ruby感兴趣，打算学习一下，结果刚开始就遇到了问题。。。', 'admin', 2, 1482993090, 0, '<p>用MAC呀</p>', 0, 1, '120.84.10.168', 35, 0);
INSERT INTO `ask_answer` VALUES (223, 66, '对ruby感兴趣，打算学习一下，结果刚开始就遇到了问题。。。', 'mayun', 3, 1482992250, 0, '<p>我用的rubymine一步到位。。。。。。</p>', 0, 1, '120.84.10.168', 71, 0);
INSERT INTO `ask_answer` VALUES (224, 66, '对ruby感兴趣，打算学习一下，结果刚开始就遇到了问题。。。', 'admin', 2, 1482992190, 0, '<p>忠告：</p>', 0, 1, '120.84.10.168', 45, 0);
INSERT INTO `ask_answer` VALUES (225, 66, '对ruby感兴趣，打算学习一下，结果刚开始就遇到了问题。。。', 'rzld100', 1, 1482993030, 1482993208, '<p>win 上面用 rubymine 非常麻烦  不建议用win  可以用linux 或者mac  我自己也是用win  喜欢rubymine  用rubymine 安装gems 有什么经常失败  通常是这个问题解决了 ，另外一个问题又出来了 这样时间都浪费在问题上面</p>', 1, 1, '120.84.10.168', 72, 0);
INSERT INTO `ask_answer` VALUES (226, 66, '对ruby感兴趣，打算学习一下，结果刚开始就遇到了问题。。。', 'admin', 2, 1482992250, 0, '<p>不要用Windows<br>不要用包括rubymine在内的任何IDE工具。</p>', 0, 1, '120.84.10.168', 48, 0);
INSERT INTO `ask_answer` VALUES (227, 0, 'controller之间共享数据的问题', 'rzld100', 1, 1482993160, 0, '<p>这是时候不是应该用 <code>broadcast</code> 和 <code>emit</code> 吗</p>', 1, 1, '120.84.10.168', 74, 0);
INSERT INTO `ask_answer` VALUES (228, 0, 'controller之间共享数据的问题', 'rzld100', 1, 1482993100, 0, '<p><a href="https://segmentfault.com/q/1010000007886333/a-1020000007889040">有人问过了，参考</a></p>', 0, 1, '120.84.10.168', 35, 0);
INSERT INTO `ask_answer` VALUES (229, 0, 'controller之间共享数据的问题', 'admin', 2, 1482993100, 0, '<p>你在setPage这个函数试着打印一下pageNum.num，应该该是pageNum.page.num吧？</p>', 0, 1, '120.84.10.168', 26, 0);
INSERT INTO `ask_answer` VALUES (230, 0, '正则表达式匹配“xa0”的问题', 'mayun', 3, 1482992029, 0, '<p>用strip()去掉首尾空格</p>', 0, 1, '120.84.10.168', 51, 0);
INSERT INTO `ask_answer` VALUES (231, 0, '正则表达式匹配“xa0”的问题', 'rzld100', 1, 1482992089, 0, '<p><code>数量：(S+)</code></p>', 1, 1, '120.84.10.168', 35, 0);
INSERT INTO `ask_answer` VALUES (232, 0, '原生JS和jQuery的一个问题', 'admin', 2, 1482992750, 0, '<p>jquery获取value是用<code>$().val()</code>,当然你也可以<code>$("#input")[0].value</code>~<br>还可以 <code>$("#input").get(0).value</code>;<br>因为jquery包住的对象是封装好的对象，要想直接拿到dom那就后面两种</p>', 0, 1, '120.84.10.168', 59, 0);
INSERT INTO `ask_answer` VALUES (233, 0, '原生JS和jQuery的一个问题', '梦与毁毁于梦', 4, 1482992210, 0, '<p>$("#input").value应该是$("#input").val()</p>', 0, 1, '120.84.10.168', 39, 0);
INSERT INTO `ask_answer` VALUES (234, 0, '原生JS和jQuery的一个问题', 'admin', 2, 1482992330, 0, '<p>$("#input").val()</p>', 0, 1, '120.84.10.168', 35, 0);
INSERT INTO `ask_answer` VALUES (235, 0, '原生JS和jQuery的一个问题', 'rzld100', 1, 1482992570, 0, '<p>$("#input").value应该是$("#input").val()</p>', 0, 1, '120.84.10.168', 34, 0);
INSERT INTO `ask_answer` VALUES (236, 0, '原生JS和jQuery的一个问题', '梦与毁毁于梦', 4, 1482992510, 0, '<p>可以看下jq的文档</p>', 1, 1, '120.84.10.168', 71, 0);
INSERT INTO `ask_answer` VALUES (237, 0, '原生JS和jQuery的一个问题', 'admin', 2, 1482992570, 0, '<p><a href="http://www.w3school.com.cn/jquery/jquery_ref_manipulation.asp">http://www.w3school.com.cn/jq...</a></p>', 0, 1, '120.84.10.168', 39, 0);
INSERT INTO `ask_answer` VALUES (238, 0, 'angular-ueditor使用中，插入图片，加载完成后不更新angularmodel的问题；', 'rzld100', 1, 1482993059, 0, '<p>自己回到吧；<br>方法一：在配置中 config取消单张图片上传，使用多张图片上传代替；<br>方法二：修改ueditor.all.js中简单上传函数<br>在图片上传完成后修改loading图的src属性，展示真实图片后，在末尾插入一个空字符串来出发$apply；</p>', 1, 1, '120.84.10.168', 57, 0);
INSERT INTO `ask_answer` VALUES (239, 0, 'angular-ueditor使用中，插入图片，加载完成后不更新angularmodel的问题；', 'mayun', 3, 1482992219, 0, '<p><img data-src="/img/bVHyc0?w=1217&amp;h=368"></p>', 0, 1, '120.84.10.168', 37, 0);
INSERT INTO `ask_answer` VALUES (240, 67, '请问：怎么将这串字符串只是以单竖线分隔开分成两部分"A|bbbbb||CCCCC"？', 'admin', 2, 1482992300, 0, '<p>Java版</p>', 0, 1, '120.84.10.168', 71, 0);
INSERT INTO `ask_answer` VALUES (241, 67, '请问：怎么将这串字符串只是以单竖线分隔开分成两部分"A|bbbbb||CCCCC"？', 'rzld100', 1, 1482993200, 0, '<p><code>preg_split(/(?&lt;!|)|(?!|)/, "A|bbbbb||CCCCC");</code></p>', 0, 1, '120.84.10.168', 24, 0);
INSERT INTO `ask_answer` VALUES (242, 0, '让父层中的两列div同高', '梦与毁毁于梦', 4, 1482992964, 0, '<p>你的需求是这样吗？height：100%; 最简单易懂。<br><img data-src="/img/bVHx2X?w=1914&amp;h=658"></p>', 0, 1, '120.84.10.168', 34, 0);
INSERT INTO `ask_answer` VALUES (243, 0, '让父层中的两列div同高', 'mayun', 3, 1482992544, 0, '<p>直接给你的div设置height啊</p>', 0, 1, '120.84.10.168', 79, 0);
INSERT INTO `ask_answer` VALUES (244, 0, '让父层中的两列div同高', 'mayun', 3, 1482992604, 0, '<p>你那table都设height了</p>', 1, 1, '120.84.10.168', 76, 0);
INSERT INTO `ask_answer` VALUES (245, 0, '让父层中的两列div同高', 'rzld100', 1, 1482992304, 0, '<p>把第一个div设height，里面的元素display：inie-block</p>', 0, 1, '120.84.10.168', 33, 0);
INSERT INTO `ask_answer` VALUES (246, 0, '让父层中的两列div同高', 'admin', 2, 1482992964, 0, '<p>父元素：line-height：//你的height</p>', 0, 1, '120.84.10.168', 25, 0);
INSERT INTO `ask_answer` VALUES (247, 0, '让父层中的两列div同高', 'mayun', 3, 1482992304, 0, '<p>关键字：padding补偿法</p>', 0, 1, '120.84.10.168', 71, 0);
INSERT INTO `ask_answer` VALUES (248, 68, '移动端rem布局 和 meta标签  content="width=750"里面用px布局的区别？', '梦与毁毁于梦', 4, 1482992968, 0, '<p>width=750px我理解为强行把各个浏览器的宽都变成750px，在切页面的时候全部都是取设计稿的实际像素值，也就是说一般固定750px之后给你的设计稿宽度也应该是750px，比如元素用定位的时候设计稿中元素左边是多少像素那left就是多少像素。rem则可以通过less来编译，我也是个新手，就我目前用下来的情况就是rem做那种元素铺满整个屏幕的情况下比较实用，固定宽在做项目的时候由于每个手机屏幕的高度不同需要有一个最小的内容区域，而rem则不需要。</p>', 0, 1, '120.84.10.168', 38, 0);
INSERT INTO `ask_answer` VALUES (249, 0, 'ajax错误信息 {readyState: 4, status: 200, statusText:', 'mayun', 3, 1482992669, 0, '<p>把你的ajax代码贴出来看一下什么原因</p>', 0, 1, '120.84.10.168', 56, 0);
INSERT INTO `ask_answer` VALUES (250, 0, 'ajax错误信息 {readyState: 4, status: 200, statusText:', '梦与毁毁于梦', 4, 1482992549, 0, '<p><a href="http://stackoverflow.com/questions/14713489/error-callback-with-readystate4-status200-statustextsuccess">http://stackoverflow.com/ques...</a></p>', 0, 1, '120.84.10.168', 71, 0);
INSERT INTO `ask_answer` VALUES (251, 0, 'ajax错误信息 {readyState: 4, status: 200, statusText:', '梦与毁毁于梦', 4, 1482992669, 0, '<p>That suggests that the HTTP request was successful but the attempt to parse the data was not.</p>', 1, 1, '120.84.10.168', 41, 0);
INSERT INTO `ask_answer` VALUES (252, 0, 'ajax错误信息 {readyState: 4, status: 200, statusText:', '梦与毁毁于梦', 4, 1482993149, 0, '<p>i.e. that the data was not formatted as JSONP.</p>', 0, 1, '120.84.10.168', 48, 0);
INSERT INTO `ask_answer` VALUES (253, 0, 'jquery版本从1.8.3更换到1.9.0后删除效果失效？', '梦与毁毁于梦', 4, 1482992568, 0, '<p>好像jquery 从 1.8.3 到 1.9.0 的after方法有变化。</p>', 1, 1, '120.84.10.168', 33, 0);
INSERT INTO `ask_answer` VALUES (254, 0, '关于CI的一个问题', '', 5, 1482992461, 0, '<p>因为需要对比的 不只有一个版本， version_compare 只是比较你此次需要比较的版本</p>', 1, 1, '120.84.10.168', 79, 0);
INSERT INTO `ask_answer` VALUES (255, 0, 'js实现的长按事件，与a链接如何共存？', '梦与毁毁于梦', 4, 1482995068, 0, '<p>结贴！！！</p>', 1, 1, '120.84.10.168', 53, 0);
INSERT INTO `ask_answer` VALUES (256, 0, 'js实现的长按事件，与a链接如何共存？', 'mayun', 3, 1482994469, 0, '<p><a href="http://blog.csdn.net/small_rice_/article/details/21205537">参考链接</a></p>', 0, 1, '120.84.10.168', 75, 0);
INSERT INTO `ask_answer` VALUES (257, 0, 'js实现的长按事件，与a链接如何共存？', 'rzld100', 1, 1482995189, 0, '<p>参考这个实现即可，很简单。</p>', 0, 1, '120.84.10.168', 63, 0);
INSERT INTO `ask_answer` VALUES (258, 0, 'js实现的长按事件，与a链接如何共存？', 'admin', 2, 1482994465, 0, '<p>结贴！！！</p>', 0, 1, '120.84.10.168', 53, 0);
INSERT INTO `ask_answer` VALUES (259, 0, 'js实现的长按事件，与a链接如何共存？', 'admin', 2, 1482995305, 0, '<p><a href="http://blog.csdn.net/small_rice_/article/details/21205537">参考链接</a></p>', 0, 1, '120.84.10.168', 48, 0);
INSERT INTO `ask_answer` VALUES (260, 0, 'js实现的长按事件，与a链接如何共存？', '梦与毁毁于梦', 4, 1482994765, 0, '<p>参考这个实现即可，很简单。</p>', 0, 1, '120.84.10.168', 23, 0);
INSERT INTO `ask_answer` VALUES (261, 73, '参数有问题？{data,handleChange}', '梦与毁毁于梦', 4, 1482995547, 1482995605, '<p><code>({data,handleChange})</code> --&gt; (data,handleChange)</p>', 1, 1, '120.84.10.168', 57, 0);
INSERT INTO `ask_answer` VALUES (262, 0, 'js实现的长按事件，与a链接如何共存？', '梦与毁毁于梦', 4, 1482995692, 0, '<p>结贴！！！</p>', 0, 1, '120.84.10.168', 66, 0);
INSERT INTO `ask_answer` VALUES (263, 0, 'js实现的长按事件，与a链接如何共存？', '梦与毁毁于梦', 4, 1482995752, 0, '<p><a href="http://blog.csdn.net/small_rice_/article/details/21205537">参考链接</a></p>', 0, 1, '120.84.10.168', 46, 0);
INSERT INTO `ask_answer` VALUES (264, 0, 'js实现的长按事件，与a链接如何共存？', 'mayun', 3, 1482995452, 0, '<p>参考这个实现即可，很简单。</p>', 0, 1, '120.84.10.168', 28, 0);
INSERT INTO `ask_answer` VALUES (265, 0, 'js实现的长按事件，与a链接如何共存？', 'mayun', 3, 1482995932, 0, '<p>感觉你已经写出来了啊 改下就行</p>', 0, 1, '120.84.10.168', 59, 0);
INSERT INTO `ask_answer` VALUES (266, 0, 'js实现的长按事件，与a链接如何共存？', 'mayun', 3, 1482995692, 0, '<p>现在外面定义var click = false;</p>', 0, 1, '120.84.10.168', 40, 0);
INSERT INTO `ask_answer` VALUES (267, 0, 'js实现的长按事件，与a链接如何共存？', '梦与毁毁于梦', 4, 1482995812, 0, '<p>touchstart的时候设置 click = false;//每次点击都设置一次</p>', 0, 1, '120.84.10.168', 59, 0);
INSERT INTO `ask_answer` VALUES (268, 0, 'js实现的长按事件，与a链接如何共存？', 'rzld100', 1, 1482995332, 0, '<p>setTimeout执行后就把click设为true;//0.8秒过去了就是true</p>', 0, 1, '120.84.10.168', 63, 0);
INSERT INTO `ask_answer` VALUES (269, 0, 'js实现的长按事件，与a链接如何共存？', 'mayun', 3, 1482995152, 0, '<p>touchend的时候查询这个click 如果是true 就是长按0.8秒了 执行长按的对应方法</p>', 0, 1, '120.84.10.168', 42, 0);
INSERT INTO `ask_answer` VALUES (270, 0, 'js实现的长按事件，与a链接如何共存？', 'mayun', 3, 1482995452, 0, '<p>如果是false 就说明没有长按 就 clearTimeout清除掉长按的计时，走单击</p>', 0, 1, '120.84.10.168', 21, 0);
INSERT INTO `ask_answer` VALUES (271, 0, '名字显示不出来其他都可以', '梦与毁毁于梦', 4, 1482995351, 0, '<p>sql表中没有这个name字段</p>', 0, 1, '120.84.10.168', 57, 0);
INSERT INTO `ask_answer` VALUES (272, 0, '名字显示不出来其他都可以', 'rzld100', 1, 1482995351, 0, '<p>改成</p>', 0, 1, '120.84.10.168', 31, 0);
INSERT INTO `ask_answer` VALUES (273, 0, '名字显示不出来其他都可以', 'mayun', 3, 1482995711, 0, '<p>没有<code>name</code>这个字段，当然显示不出来。你直接打印<code>var_dump($row)</code>看看就知道了</p>', 1, 1, '120.84.10.168', 71, 0);
INSERT INTO `ask_answer` VALUES (274, 0, '名字显示不出来其他都可以', 'rzld100', 1, 1482995310, 0, '<p>sql表中没有这个name字段</p>', 1, 1, '120.84.10.168', 20, 0);
INSERT INTO `ask_answer` VALUES (275, 0, '名字显示不出来其他都可以', 'admin', 2, 1482996030, 0, '<p>改成</p>', 0, 1, '120.84.10.168', 33, 0);
INSERT INTO `ask_answer` VALUES (276, 0, '名字显示不出来其他都可以', 'mayun', 3, 1482996030, 0, '<p>没有<code>name</code>这个字段，当然显示不出来。你直接打印<code>var_dump($row)</code>看看就知道了</p>', 0, 1, '120.84.10.168', 31, 0);
INSERT INTO `ask_answer` VALUES (277, 91, '程序要长时间在后台运行service该怎么做？ 帮帮忙，谢啦。', '海蓝水晶', 6, 1482996133, 1482997264, '<div class="other-ans-cnt"><p>让服务器一直开着呗！</p></div>', 1, 1, '120.84.10.168', 80, 0);
INSERT INTO `ask_answer` VALUES (278, 92, '任务栏异常，', '匿名网友 ', 7, 1482996376, 0, '<div class="other-ans-cnt"><p>建议使用正版<br></p></div>', 0, 1, '120.84.10.168', 45, 0);
INSERT INTO `ask_answer` VALUES (279, 92, '任务栏异常，', '.旧巷.', 8, 1482996916, 0, '<div class="other-ans-cnt"><p>　　利用如下操作进行处理，尝试解决：<br>　　1、系统分区磁盘查错。Ctrl+Shift+Esc--文件--Ctrl+鼠标单击“新(建)任务”；黑窗中键入 chkdsk &nbsp;/r &nbsp;%systemdrive% 回车，如提示计划下次重启检查此卷？选择“y”并重启电脑进行检查。时间较长。<br>　　2、打开360人工服务：输入“开始菜单无法设置”查找方案修复；输入“资源管理器总是崩溃”查找方案修复；输入“任务栏按钮显示异常”查找方案修复。<br></p></div>', 0, 1, '120.84.10.168', 56, 0);
INSERT INTO `ask_answer` VALUES (280, 93, 'toggleable怎么控制', 'rqwg_2106', 9, 1482996983, 1482997462, '<div class="other-ans-cnt"><p>$(&quot;#btn3&quot;).toggle(function(){$(&quot;#div2&quot;).animate({left:0},300);},function(){$(&quot;#div2&quot;).animate({left:-260},300);});toggle(fn,...$（“#&nbsp;BTN3”）。切换（function()&nbsp;{&nbsp;$（“#&nbsp;DIV2”）。动画（{左：0&nbsp;}，300）；}，function()&nbsp;{&nbsp;$（“#&nbsp;DIV2”）。动画（{左：260&nbsp;}，300）；}）；切换（FN，…</p></div>', 1, 1, '120.84.10.168', 35, 0);
INSERT INTO `ask_answer` VALUES (281, 94, 'java创建对象时会自动生成对象的引用this，什么时候this会消失，因为看到垃圾回收是说', '殇丶善若水', 10, 1482996564, 1482997464, '<div class="other-ans-cnt"><p>this是指向本类的对象，你所说的对象A是一个类B中的属性，而类B对本身的引用是this，这样调用this.A就是B类中的A属性，所以这个this是相对包含该对象的类而言的。比如String s = &quot;abc&quot;;你说的this就是String这个类的引用，调用的时候用的this代表的是包含s的那个类。<br></p></div>', 1, 1, '120.84.10.168', 39, 0);
INSERT INTO `ask_answer` VALUES (282, 94, 'java创建对象时会自动生成对象的引用this，什么时候this会消失，因为看到垃圾回收是说', '匿名网友 ', 7, 1482997165, 0, '<div class="other-ans-cnt"><p>this应该不会失效，因为构造函数过程中，对象在没有生成之前，只通过this来访问成员变量&nbsp;构造器传入参数为什么使用&nbsp;&nbsp;this.xx&nbsp;=&nbsp;xx;&nbsp;&nbsp;如果&nbsp;this被销毁了，那么在你没创建对象的时候，</p><p>构造器是如何使用&nbsp;this呢，对象不存在肯定报错啊</p></div>', 0, 1, '120.84.10.168', 41, 0);
INSERT INTO `ask_answer` VALUES (283, 95, 'java中主线程结束子线程会跟着结束吗。或者主线程要等到所有子线程结束才能结束？', '土城城', 13, 1482996268, 0, '<div class="other-ans-cnt">不一定，但是可以设定</div>', 0, 1, '120.84.10.168', 52, 0);
INSERT INTO `ask_answer` VALUES (284, 95, 'java中主线程结束子线程会跟着结束吗。或者主线程要等到所有子线程结束才能结束？', '匿名网友 ', 7, 1482996628, 0, '<div class="other-ans-cnt"><p>不会&nbsp;不会&nbsp;不会</p></div>', 0, 1, '120.84.10.168', 79, 0);
INSERT INTO `ask_answer` VALUES (285, 95, 'java中主线程结束子线程会跟着结束吗。或者主线程要等到所有子线程结束才能结束？', '木木洞', 14, 1482996808, 0, '<div class="other-ans-cnt"><p>不会&nbsp;&nbsp;比如&nbsp;你在main函数里面&nbsp;写一个线程&nbsp;阻塞1分钟&nbsp;main函数&nbsp;早结束了&nbsp;但是这个线程一分钟才结束不是吗</p></div>', 0, 1, '120.84.10.168', 45, 0);
INSERT INTO `ask_answer` VALUES (286, 96, '请问哪里可以下载sketchup5中文版，谢谢！', '东方大表哥科技', 15, 1482996689, 0, '<div class="other-ans-cnt"><p>360软件管家就可以下载。<br></p></div>', 0, 1, '120.84.10.168', 72, 0);
INSERT INTO `ask_answer` VALUES (287, 0, '这些程序要怎么设置，电脑点了图标也打不开', '梭子蟹', 16, 1482996270, 0, '<div class="other-ans-cnt"><p>这个是CMOS设置界面，要在开机的时候进入才行。一般是按ESC，F2,F12,DEL之类的就可以</p></div>', 0, 1, '120.84.10.168', 58, 0);
INSERT INTO `ask_answer` VALUES (288, 0, '这些程序要怎么设置，电脑点了图标也打不开', '匿名网友 ', 7, 1482996571, 0, '<div class="other-ans-cnt"><p>这些都不是程序，这些是bios设置项目，不懂是什么东西就别动，会吧机器搞乱的</p></div>', 1, 1, '120.84.10.168', 45, 0);
INSERT INTO `ask_answer` VALUES (289, 97, '任务栏异常', '.旧巷.', 8, 1482996512, 0, '<div class="other-ans-cnt"><p>360方案修复：打开360人工服务，输入“任务栏按钮显示异常”查找方案修复。<br></p></div>', 0, 1, '120.84.10.168', 28, 0);
INSERT INTO `ask_answer` VALUES (290, 97, '任务栏异常', '四面环山', 17, 1482996692, 0, '<div class="other-ans-cnt"><p>把系统修复一下看看<br></p></div>', 0, 1, '120.84.10.168', 45, 0);
INSERT INTO `ask_answer` VALUES (291, 97, '任务栏异常', 'possible1024', 18, 1482996872, 1482997471, '<div class="other-ans-cnt"><p>你右键任务栏，把【锁定任务栏】勾选上，再看看是否正常显示。</p></div>', 1, 1, '120.84.10.168', 53, 0);
INSERT INTO `ask_answer` VALUES (292, 98, '我上传到腾迅申查的视频能限定只让朋友看而不想让其它更多人看吗？', '匿名网友 ', 7, 1482996753, 1482997472, '<div class="other-ans-cnt"><p>如果是微信平台，只能在所加的朋友圈内看到。</p></div>', 1, 1, '120.84.10.168', 54, 0);
INSERT INTO `ask_answer` VALUES (293, 99, '微信后台收不到信息，要打开微信才知道有人发信息给我，怎么办？', '无穷点', 19, 1482996814, 0, '<div class="other-ans-cnt"><p>应该是你微信设置的问题<br></p></div>', 0, 1, '120.84.10.168', 68, 0);
INSERT INTO `ask_answer` VALUES (294, 101, '为什么要编程序', '随意的一天', 20, 1482997177, 0, '<div class="other-ans-cnt"><p><a href="http://wenda.so.com/index/verifyUrl?url=http%3A%2F%2Fwww.51zxw.net%2Fstudy.asp%3Fvip%3D13230334&sg=040d6fca" target="_blank">http://www.51zxw.net/study.asp?vip=13230334</a></p><p>我要自学网（www.51zxw.net)<br></p></div>', 0, 1, '120.84.10.168', 45, 0);
INSERT INTO `ask_answer` VALUES (295, 101, '为什么要编程序', '匿名网友 ', 7, 1482997177, 0, '<div class="other-ans-cnt"><p>用来实现各种功能</p></div>', 0, 1, '120.84.10.168', 60, 0);
INSERT INTO `ask_answer` VALUES (296, 0, '这里有一道Java题。', 'soul丶亮', 21, 1482997178, 0, '<div class="other-ans-cnt"><p>public class MyTriangle {</p><p>public static boolean isValid(double s1, double s2, double s3){</p><p>if (s1 + s2 &gt; s3 && s1 + s3 &gt; s2 && s2 + s3 &gt; s1){</p><p>return true;</p><p>}else{</p><p>return false;</p><p>}</p><p>}</p><p>public static double area(double s1,double s2,double s3){</p><p>double s ;</p><p>double result;</p><p>s = (s1 + s2 + s3)/2;</p><p>result = Math.pow(s*(s - s1)*(s - s2)*(s - s3),0.5);</p><p>return result;</p><p><br></p><p>}</p><p>public static void main (String args[]){</p><p>double result = 0;</p><p>if(isValid(3,4,5)){</p><p>result = area(3,4,5);</p><p>}else{</p><p>System.out.println(&quot;不是三角形&quot;);</p><p>}</p><p>System.out.println(result);</p><p>}</p><p>}</p><p><br></p></div>', 1, 1, '120.84.10.168', 65, 0);
INSERT INTO `ask_answer` VALUES (297, 0, '这里有一道Java题。', 'o0O小角色o0O', 11, 1482997178, 0, '<div class="other-ans-cnt"><p>// 原来的</p><p>result = Math.pow(s*(s-side1)(s-side1)(s-side1), 0.5);</p><p><br></p><p>// 修改后</p><p>result = Math.pow(s*(s-side1)*(s-side1)*(s-side1), 0.5);</p><p><br></p><p>缺少乘法运算符. 希望能帮助你</p></div>', 0, 1, '120.84.10.168', 78, 0);
INSERT INTO `ask_answer` VALUES (298, 102, '哪里有虚拟机下裁', 'kele169', 22, 1482996999, 1482997479, '<div class="other-ans-cnt"><p>下载的网站很多，如PC6下载站就有下载。<a href="http://wenda.so.com/index/verifyUrl?url=http%3A%2F%2Fwww.pc6.com%2Fsoftview%2FSoftView_128.html&sg=9823abeb" target="_blank">http://www.pc6.com/softview/SoftView_128.html</a>这是下载的网页，点后边的下载地址保存到电脑就可以了。<br></p></div>', 1, 1, '120.84.10.168', 37, 0);
INSERT INTO `ask_answer` VALUES (299, 102, '哪里有虚拟机下裁', 'o0O小角色o0O', 11, 1482997060, 0, '<div class="other-ans-cnt"><p>VMware: <a href="http://wenda.so.com/index/verifyUrl?url=http%3A%2F%2Fwww.baidu.com%2Flink%3Furl%3Dc04t1Pvj7uiJC-FM80OmxnSAFVKJPTifCQHPIg2VmHIQKbnV99uprS0rKrg_q43ppapSAv-eHJn2u0_MidCOSt2bvaQUe-XmKSFr3CVwMM_%26wd%3D%26eqid%3Ddb9f5fef0001087900000005583563ce&sg=dc1fd527" target="_blank">http://www.baidu.com/link?url=c04t1Pvj7uiJC-FM80OmxnSAFVKJPTifCQHPIg2VmHIQKbnV99uprS0rKrg_q43ppapSAv-eHJn2u0_MidCOSt2bvaQUe-XmKSFr3CVwMM_&wd=&eqid=db9f5fef0001087900000005583563ce</a></p><p><br></p><p>希望能帮助你</p></div>', 0, 1, '120.84.10.168', 31, 0);
INSERT INTO `ask_answer` VALUES (300, 103, '基于h5语言民俗文化网站的设计与实现的内容简介怎么写？', '英雄侠义化身', 23, 1482996401, 1482997480, '<div class="other-ans-cnt"><p>用你的构思写</p></div>', 1, 1, '120.84.10.168', 78, 0);
INSERT INTO `ask_answer` VALUES (301, 104, 'MyEclipse做Web项目出问题了，又不报错，网页也打不开，tomcat应该没问题', '邪者归来', 24, 1482997428, 1482997847, '<div class="other-ans-cnt"><p>你按F12 看看浏览器控制台看看有没有报错 <br></p></div>', 1, 1, '120.84.10.168', 68, 0);
INSERT INTO `ask_answer` VALUES (302, 104, 'MyEclipse做Web项目出问题了，又不报错，网页也打不开，tomcat应该没问题', '辣的咖啡', 25, 1482997488, 0, '<div class="other-ans-cnt"><p>看看控制台有没有报错 &nbsp;F12<br></p></div>', 0, 1, '120.84.10.168', 32, 0);
INSERT INTO `ask_answer` VALUES (303, 104, 'MyEclipse做Web项目出问题了，又不报错，网页也打不开，tomcat应该没问题', '女神小灰灰', 26, 1482997669, 0, '<div class="other-ans-cnt"><p>点&nbsp;&nbsp;console看看有没有错误</p></div>', 0, 1, '120.84.10.168', 69, 0);
INSERT INTO `ask_answer` VALUES (304, 105, 'eclipse写java代码时查看源码选中类名按f3没效果（已经关联了原码）', 'paul008', 27, 1482996830, 0, '<div class="other-ans-cnt"><p>看看是不是和其他软件的快捷键冲突了</p></div>', 0, 1, '120.84.10.168', 26, 0);
INSERT INTO `ask_answer` VALUES (305, 105, 'eclipse写java代码时查看源码选中类名按f3没效果（已经关联了原码）', '雨落錵台', 28, 1482996950, 1482997849, '<div class="other-ans-cnt"><p>是不是快捷键冲突了<br></p></div>', 1, 1, '120.84.10.168', 60, 0);
INSERT INTO `ask_answer` VALUES (306, 105, 'eclipse写java代码时查看源码选中类名按f3没效果（已经关联了原码）', '狂仙_2012', 29, 1482996950, 0, '<div class="other-ans-cnt"><p>应该是快捷键冲突，可能已经被其他软件占用了，他就失效了，你可以打开软件设置，手动修改一下快捷按键，比如改成F4试试</p></div>', 0, 1, '120.84.10.168', 79, 0);
INSERT INTO `ask_answer` VALUES (307, 105, 'eclipse写java代码时查看源码选中类名按f3没效果（已经关联了原码）', '邪者归来', 24, 1482997490, 0, '<div class="other-ans-cnt"><p>打开控制面板 &nbsp;叫英特尔什么的 &nbsp; 就是显卡管理工具 &nbsp; &nbsp;进入选项和支持 &nbsp;找到快捷键 然后 禁用 &nbsp; &nbsp;<br></p></div>', 0, 1, '120.84.10.168', 75, 0);
INSERT INTO `ask_answer` VALUES (308, 106, '向程序发送命令时出现问题', '叼你老X', 30, 1482996832, 1482997851, '<div class="other-ans-cnt"><p>那么只能解决问题了</p></div>', 1, 1, '120.84.10.168', 47, 0);
INSERT INTO `ask_answer` VALUES (309, 108, '以下java方法如何调用类内:类外', 'o0O小角色o0O', 11, 1482996776, 1482997915, '<div class="other-ans-cnt"><p>1.1 非静态方法属于实例对象, 只能通过对象调用, 可以在主方法中通过this关键字查询到可以调用的非静态方法(包括从父类继承来的可见方法)</p><p><br></p><p>1.2 非静态方法调用静态方法, 调用时不能通过this关键字查询, 而是使用类名.静态方法名的方式调用</p><p><br></p><p>2.1 静态方法调用非静态方法, 不可以!!!! 静态方法加载时, 非静态方法所依附的实例并不存在, 因此不能调用..</p><p><br></p><p>2.2 静态方法调用静态方法, 与非静态方法调用静态方法一样, 使用类名.方法名:Math.random()</p><p><br></p><p>最后, 类的外部不能写Java逻辑代码, 所有的代码必须依附于类方法或代码块, 所以不存在类外调用方法或编写代码的说法!!</p><p><br></p><p>希望能帮助你</p></div>', 1, 1, '120.84.10.168', 44, 0);
INSERT INTO `ask_answer` VALUES (310, 0, 'JAVA有个代码需要一个符号不知道怎么打，求解。', '小卢_001', 31, 1482997829, 0, '<div class="other-ans-cnt"><p>那个就是英文状态的[],[ &nbsp; ]</p></div>', 0, 1, '120.84.10.168', 64, 0);
INSERT INTO `ask_answer` VALUES (311, 0, 'JAVA有个代码需要一个符号不知道怎么打，求解。', '其乐无穷2016', 32, 1482996992, 0, '<div class="other-ans-cnt"><p>哦，那个是方括号，只要先用shift，切换成英文，然后打左方括号和右方块号就好了<br></p></div>', 0, 1, '120.84.10.168', 63, 0);
INSERT INTO `ask_answer` VALUES (312, 0, 'JAVA有个代码需要一个符号不知道怎么打，求解。', '360U574763972', 33, 1482997893, 0, '<div class="other-ans-cnt"><p>这个是正、反中括号</p></div>', 0, 1, '120.84.10.168', 49, 0);
INSERT INTO `ask_answer` VALUES (313, 0, 'JAVA有个代码需要一个符号不知道怎么打，求解。', 'poorandrich_xj', 34, 1482997113, 0, '<div class="other-ans-cnt"><p>这是数组的定义方式，是String[]，一对方括号</p></div>', 0, 1, '120.84.10.168', 46, 0);
INSERT INTO `ask_answer` VALUES (314, 0, 'JAVA有个代码需要一个符号不知道怎么打，求解。', 'o0O小角色o0O', 11, 1482996813, 0, '<div class="other-ans-cnt"><p>英文半角的中括号 []</p><p>不是全角的【】</p><p><br></p><p>希望能帮助你</p></div>', 0, 1, '120.84.10.168', 73, 0);
INSERT INTO `ask_answer` VALUES (315, 0, 'JAVA有个代码需要一个符号不知道怎么打，求解。', '匿名网友 ', 7, 1482996873, 0, '<div class="other-ans-cnt"><p>先看看书可以吗</p></div>', 0, 1, '120.84.10.168', 39, 0);
INSERT INTO `ask_answer` VALUES (316, 0, 'JAVA有个代码需要一个符号不知道怎么打，求解。', '问仙指路', 35, 1482996933, 0, '<div class="other-ans-cnt"><p>中文为：【】</p><p>英文为：[]</p></div>', 0, 1, '120.84.10.168', 34, 0);
INSERT INTO `ask_answer` VALUES (317, 109, '我想搭建一个maven管理的spring+struts2+mybatisd的框架，有点蒙圈，求大神指', '匿名网友 ', 7, 1482997414, 0, '<div class="other-ans-cnt"><p>记得在maven的官网有教程，建议参考了解。<br></p></div>', 0, 1, '120.84.10.168', 48, 0);
INSERT INTO `ask_answer` VALUES (318, 109, '我想搭建一个maven管理的spring+struts2+mybatisd的框架，有点蒙圈，求大神指', '破马张飞奔你家', 12, 1482996754, 0, '<div class="other-ans-cnt"><p>m2e连上国内比较大的中央库，例如阿里云然后建maven项目，在pom.xml中导包，maven自动帮你检测冲突。</p></div>', 0, 1, '120.84.10.168', 29, 0);
INSERT INTO `ask_answer` VALUES (319, 110, 'java不同类之间的请求调用，', 'whoami1978', 36, 1482997595, 1482997954, '<div class="other-ans-cnt"><p>给你个参考:</p><p><br>public class hello<br>{<br> &nbsp; &nbsp;public static void main(String arg[]) &nbsp;{<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; test t =new test();<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; t.test1();<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; t.test1();<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; t.test1();<br> &nbsp; &nbsp; &nbsp;<br> &nbsp; &nbsp;}<br>}<br>class test {<br> &nbsp; static int x=0;<br> &nbsp; void test1()<br> &nbsp; &nbsp;{<br> &nbsp; &nbsp; &nbsp; &nbsp;x++;<br> &nbsp; &nbsp; &nbsp; &nbsp;switch(x) {<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; case 1:<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; System.out.println(&quot;第一次调用&quot;);<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;///你要做的事<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; break;<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;case 2:<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; System.out.println(&quot;第二次调用&quot;);<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;///你要做的事<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; break;<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; case 3:<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;System.out.println(&quot;第三次调用&quot;);<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ///你要做的事<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; break;<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br> &nbsp; &nbsp; &nbsp; &nbsp;}<br> &nbsp; &nbsp; &nbsp; &nbsp;<br> &nbsp; &nbsp;}<br> &nbsp; <br>} &nbsp; <br></p></div>', 1, 1, '120.84.10.168', 45, 0);
INSERT INTO `ask_answer` VALUES (320, 110, 'java不同类之间的请求调用，', '007叫爸爸', 37, 1482997595, 0, '<div class="other-ans-cnt"><p>你这个第二次请求时再次运行程序还是二次调用？？？</p><p>二次调用楼上的就可以了</p></div>', 0, 1, '120.84.10.168', 80, 0);
INSERT INTO `ask_answer` VALUES (321, 112, '项目中引入Spring目的是什么？', '扛不住咋整', 38, 1483002871, 0, '<div class="other-ans-cnt"><p>应该是赢利为目的</p></div>', 0, 1, '120.84.10.168', 58, 0);
INSERT INTO `ask_answer` VALUES (322, 112, '项目中引入Spring目的是什么？', '淡淡的风1111', 39, 1483002691, 0, '<div class="other-ans-cnt"><p>获取更大的经济效益。</p></div>', 0, 1, '120.84.10.168', 23, 0);
INSERT INTO `ask_answer` VALUES (323, 112, '项目中引入Spring目的是什么？', '匿名网友 ', 7, 1483002452, 0, '<div class="other-ans-cnt"><p>便于分工以及后期维护和升级<br></p></div>', 0, 1, '120.84.10.168', 51, 0);
INSERT INTO `ask_answer` VALUES (324, 112, '项目中引入Spring目的是什么？', '伱灬不懂', 40, 1483001972, 0, '<div class="other-ans-cnt"><p>便于项目管理简化开发</p></div>', 0, 1, '120.84.10.168', 37, 0);
INSERT INTO `ask_answer` VALUES (325, 112, '项目中引入Spring目的是什么？', '雨落錵台', 28, 1483001915, 0, '<div class="other-ans-cnt"><p>提高效率，简化开发<br></p></div>', 0, 1, '120.84.10.168', 51, 0);
INSERT INTO `ask_answer` VALUES (326, 112, '项目中引入Spring目的是什么？', '易兮_', 41, 1483002095, 0, '<div class="other-ans-cnt"><p>1.提高效率</p><p>2.增加耦合度</p><p>3.Spring耦合的效率特别高</p></div>', 0, 1, '120.84.10.168', 31, 0);
INSERT INTO `ask_answer` VALUES (327, 113, '怎样生成大量的唯一随机数', '匿名网友 ', 7, 1483002276, 0, '<div class="other-ans-cnt"><p>public static void main(String[] args) {</p><p>int max=2000;//最大的范围</p><p>&nbsp;</p><p> &nbsp; &nbsp; &nbsp; &nbsp;Random random = new Random();</p><p> &nbsp; &nbsp; &nbsp; &nbsp;int s = random.nextInt(max);//最大的范围</p><p> &nbsp; &nbsp; &nbsp; &nbsp;System.out.println(s);//打印出来</p><p>}</p><p>兄弟，只能帮到你这里了</p><p><br></p></div>', 0, 1, '120.84.10.168', 37, 0);
INSERT INTO `ask_answer` VALUES (328, 113, '怎样生成大量的唯一随机数', '易兮_', 41, 1483002996, 1483003115, '<div class="other-ans-cnt"><p>GUID是一个128位长的数字，一般用16进制表示。算法的核心思想是结合机器的网卡、当地时间、一个随机数来生成GUID。从理论上讲，如果一台机器每秒产生10000000个GUID，则可以保证（概率意义上）3240年不重复。</p></div>', 1, 1, '120.84.10.168', 32, 0);
INSERT INTO `ask_answer` VALUES (329, 114, 'Java Socket如何发送解析自定义数包', '匿名网友 ', 7, 1483001977, 1483003116, '<div class="other-ans-cnt"><p>将自定义的数据组装成一段内存发送即可，接收时再还原数据即可<br></p></div>', 1, 1, '120.84.10.168', 64, 0);
INSERT INTO `ask_answer` VALUES (330, 0, '跪求Java语言程序设计作    者：丁振凡出 版 社：清华大学出版社的课后答案', '山寨总书记', 42, 1483002398, 1483003117, '<div class="other-ans-cnt"><p>新华书店都有卖的</p></div>', 1, 1, '120.84.10.168', 74, 0);
INSERT INTO `ask_answer` VALUES (331, 115, '网络编程写软件指定服务怎样绑定指定端口？', '饕餮幸福', 43, 1483002819, 0, '<div class="other-ans-cnt"><p>哦，那是需要做一定的指定。</p></div>', 0, 1, '120.84.10.168', 79, 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `ask_answer_append`
-- 

CREATE TABLE `ask_answer_append` (
  `appendanswerid` int(10) NOT NULL auto_increment,
  `answerid` int(10) NOT NULL,
  `author` varchar(20) NOT NULL,
  `authorid` int(10) NOT NULL,
  `content` text NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY  (`appendanswerid`),
  KEY `answerid` (`answerid`),
  KEY `authorid` (`authorid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `ask_answer_append`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_answer_comment`
-- 

CREATE TABLE `ask_answer_comment` (
  `id` int(10) NOT NULL auto_increment,
  `aid` int(10) NOT NULL,
  `authorid` int(10) NOT NULL,
  `author` char(18) NOT NULL,
  `content` varchar(100) NOT NULL,
  `time` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

-- 
-- 导出表中的数据 `ask_answer_comment`
-- 

INSERT INTO `ask_answer_comment` VALUES (1, 1, 2, 'admin', '谢谢你', 1482992787);
INSERT INTO `ask_answer_comment` VALUES (2, 4, 4, '梦与毁毁于梦', '高手留个联系方式吧', 1482992928);
INSERT INTO `ask_answer_comment` VALUES (3, 5, 3, 'mayun', '谢谢你', 1482992930);
INSERT INTO `ask_answer_comment` VALUES (4, 7, 3, 'mayun', '谢谢你', 1482992932);
INSERT INTO `ask_answer_comment` VALUES (5, 18, 4, '梦与毁毁于梦', '你真的帮了我大忙', 1482993075);
INSERT INTO `ask_answer_comment` VALUES (6, 21, 3, 'mayun', '真给力', 1482993077);
INSERT INTO `ask_answer_comment` VALUES (7, 24, 2, 'admin', '非常感谢你', 1482993079);
INSERT INTO `ask_answer_comment` VALUES (8, 26, 3, 'mayun', '真给力', 1482993080);
INSERT INTO `ask_answer_comment` VALUES (9, 28, 4, '梦与毁毁于梦', '你真是个大好人', 1482993082);
INSERT INTO `ask_answer_comment` VALUES (10, 29, 1, 'rzld100', '高手留个联系方式吧', 1482993088);
INSERT INTO `ask_answer_comment` VALUES (11, 44, 2, 'admin', '真给力', 1482993112);
INSERT INTO `ask_answer_comment` VALUES (12, 47, 2, 'admin', '高手留个联系方式吧', 1482993114);
INSERT INTO `ask_answer_comment` VALUES (13, 52, 5, '', '你真是个大好人', 1482993115);
INSERT INTO `ask_answer_comment` VALUES (14, 62, 3, 'mayun', '大神......', 1482993118);
INSERT INTO `ask_answer_comment` VALUES (15, 69, 2, 'admin', '非常感谢你', 1482993121);
INSERT INTO `ask_answer_comment` VALUES (16, 73, 5, '', '高手留个联系方式吧', 1482993122);
INSERT INTO `ask_answer_comment` VALUES (17, 75, 1, 'rzld100', '你真是个大好人', 1482993124);
INSERT INTO `ask_answer_comment` VALUES (18, 105, 3, 'mayun', '大神......', 1482993136);
INSERT INTO `ask_answer_comment` VALUES (19, 107, 5, '', '谢谢你', 1482993137);
INSERT INTO `ask_answer_comment` VALUES (20, 127, 1, 'rzld100', '大神......', 1482993142);
INSERT INTO `ask_answer_comment` VALUES (21, 129, 4, '梦与毁毁于梦', '谢谢你', 1482993144);
INSERT INTO `ask_answer_comment` VALUES (22, 135, 4, '梦与毁毁于梦', '真给力', 1482993151);
INSERT INTO `ask_answer_comment` VALUES (23, 139, 3, 'mayun', '非常感谢你', 1482993152);
INSERT INTO `ask_answer_comment` VALUES (24, 154, 4, '梦与毁毁于梦', '非常感谢你', 1482993160);
INSERT INTO `ask_answer_comment` VALUES (25, 156, 5, '', '你真是个大好人', 1482993161);
INSERT INTO `ask_answer_comment` VALUES (26, 157, 5, '', '非常感谢你', 1482993166);
INSERT INTO `ask_answer_comment` VALUES (27, 168, 2, 'admin', '谢谢你', 1482993174);
INSERT INTO `ask_answer_comment` VALUES (28, 177, 4, '梦与毁毁于梦', '大神......', 1482993178);
INSERT INTO `ask_answer_comment` VALUES (29, 179, 2, 'admin', '大神......', 1482993179);
INSERT INTO `ask_answer_comment` VALUES (30, 180, 3, 'mayun', '高手留个联系方式吧', 1482993181);
INSERT INTO `ask_answer_comment` VALUES (31, 183, 1, 'rzld100', '大神......', 1482993187);
INSERT INTO `ask_answer_comment` VALUES (32, 188, 4, '梦与毁毁于梦', '你真的帮了我大忙', 1482993189);
INSERT INTO `ask_answer_comment` VALUES (33, 191, 5, '', '大神......', 1482993192);
INSERT INTO `ask_answer_comment` VALUES (34, 202, 3, 'mayun', '你真的帮了我大忙', 1482993202);
INSERT INTO `ask_answer_comment` VALUES (35, 214, 1, 'rzld100', '真给力', 1482993205);
INSERT INTO `ask_answer_comment` VALUES (36, 225, 5, '', '高手留个联系方式吧', 1482993208);
INSERT INTO `ask_answer_comment` VALUES (37, 227, 3, 'mayun', '大神......', 1482993219);
INSERT INTO `ask_answer_comment` VALUES (38, 231, 3, 'mayun', '非常感谢你', 1482993228);
INSERT INTO `ask_answer_comment` VALUES (39, 236, 3, 'mayun', '你真是个大好人', 1482993229);
INSERT INTO `ask_answer_comment` VALUES (40, 238, 5, '', '你真是个大好人', 1482993238);
INSERT INTO `ask_answer_comment` VALUES (41, 244, 5, '', '高手留个联系方式吧', 1482993263);
INSERT INTO `ask_answer_comment` VALUES (42, 251, 1, 'rzld100', '谢谢你', 1482993268);
INSERT INTO `ask_answer_comment` VALUES (43, 253, 3, 'mayun', '你真的帮了我大忙', 1482993288);
INSERT INTO `ask_answer_comment` VALUES (44, 254, 4, '梦与毁毁于梦', '你真是个大好人', 1482993300);
INSERT INTO `ask_answer_comment` VALUES (45, 255, 2, 'admin', '非常感谢你', 1482995547);
INSERT INTO `ask_answer_comment` VALUES (46, 261, 5, '', '高手留个联系方式吧', 1482995605);
INSERT INTO `ask_answer_comment` VALUES (47, 273, 4, '梦与毁毁于梦', '真给力', 1482996306);
INSERT INTO `ask_answer_comment` VALUES (48, 274, 1, 'rzld100', '谢谢你', 1482996389);
INSERT INTO `ask_answer_comment` VALUES (49, 277, 1, 'rzld100', '高手留个联系方式吧', 1482997264);
INSERT INTO `ask_answer_comment` VALUES (50, 280, 5, '', '你真是个大好人', 1482997462);
INSERT INTO `ask_answer_comment` VALUES (51, 281, 8, '.旧巷.', '你真是个大好人', 1482997464);
INSERT INTO `ask_answer_comment` VALUES (52, 11, 4, '梦与毁毁于梦', '谢谢你', 1482997465);
INSERT INTO `ask_answer_comment` VALUES (53, 288, 13, '土城城', '你真是个大好人', 1482997470);
INSERT INTO `ask_answer_comment` VALUES (54, 291, 16, '梭子蟹', '谢谢你', 1482997471);
INSERT INTO `ask_answer_comment` VALUES (55, 292, 13, '土城城', '谢谢你', 1482997472);
INSERT INTO `ask_answer_comment` VALUES (56, 296, 19, '无穷点', '谢谢你', 1482997477);
INSERT INTO `ask_answer_comment` VALUES (57, 298, 11, 'o0O小角色o0O', '你真是个大好人', 1482997479);
INSERT INTO `ask_answer_comment` VALUES (58, 300, 12, '破马张飞奔你家', '高手留个联系方式吧', 1482997480);
INSERT INTO `ask_answer_comment` VALUES (59, 301, 12, '破马张飞奔你家', '真给力', 1482997847);
INSERT INTO `ask_answer_comment` VALUES (60, 305, 15, '东方大表哥科技', '非常感谢你', 1482997849);
INSERT INTO `ask_answer_comment` VALUES (61, 308, 25, '辣的咖啡', '大神......', 1482997851);
INSERT INTO `ask_answer_comment` VALUES (62, 309, 21, 'soul丶亮', '谢谢你', 1482997915);
INSERT INTO `ask_answer_comment` VALUES (63, 319, 25, '辣的咖啡', '真给力', 1482997954);
INSERT INTO `ask_answer_comment` VALUES (64, 328, 29, '狂仙_2012', '真给力', 1483003115);
INSERT INTO `ask_answer_comment` VALUES (65, 329, 27, 'paul008', '高手留个联系方式吧', 1483003116);
INSERT INTO `ask_answer_comment` VALUES (66, 330, 40, '伱灬不懂', '真给力', 1483003117);

-- --------------------------------------------------------

-- 
-- 表的结构 `ask_answer_support`
-- 

CREATE TABLE `ask_answer_support` (
  `sid` char(16) NOT NULL,
  `aid` int(10) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY  (`sid`,`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `ask_answer_support`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_attach`
-- 

CREATE TABLE `ask_attach` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `time` int(10) unsigned NOT NULL default '0',
  `filename` char(100) NOT NULL default '',
  `filetype` char(50) NOT NULL default '',
  `filesize` int(10) unsigned NOT NULL default '0',
  `location` char(100) NOT NULL default '',
  `downloads` mediumint(8) NOT NULL default '0',
  `isimage` tinyint(1) NOT NULL default '0',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`),
  KEY `time` (`time`,`isimage`,`downloads`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `ask_attach`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_badword`
-- 

CREATE TABLE `ask_badword` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `admin` varchar(15) NOT NULL default '',
  `find` varchar(255) NOT NULL default '',
  `replacement` varchar(255) NOT NULL default '',
  `findpattern` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `find` (`find`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- 导出表中的数据 `ask_badword`
-- 

INSERT INTO `ask_badword` VALUES (4, 'admin', '习近平', '小习', '');
INSERT INTO `ask_badword` VALUES (3, 'admin', '汉语', '中国话', '');

-- --------------------------------------------------------

-- 
-- 表的结构 `ask_banned`
-- 

CREATE TABLE `ask_banned` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `ip1` char(3) NOT NULL,
  `ip2` char(3) NOT NULL,
  `ip3` char(3) NOT NULL,
  `ip4` char(3) NOT NULL,
  `admin` varchar(15) NOT NULL,
  `time` int(10) unsigned NOT NULL default '0',
  `expiration` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `ask_banned`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_category`
-- 

CREATE TABLE `ask_category` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `name` char(30) NOT NULL,
  `dir` char(30) NOT NULL,
  `pid` smallint(5) unsigned NOT NULL default '0',
  `grade` tinyint(1) unsigned NOT NULL default '0',
  `displayorder` tinyint(3) NOT NULL default '0',
  `questions` int(10) unsigned NOT NULL default '0',
  `alias` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

-- 
-- 导出表中的数据 `ask_category`
-- 

INSERT INTO `ask_category` VALUES (25, '电脑网络', '', 23, 2, 0, 0, '');
INSERT INTO `ask_category` VALUES (26, '编程', '', 23, 2, 1, 148, '');
INSERT INTO `ask_category` VALUES (22, '默认', '', 0, 1, 0, 25, '');
INSERT INTO `ask_category` VALUES (24, 'java', '', 22, 2, 2, 5, '爱代码编程社区123525850');
INSERT INTO `ask_category` VALUES (30, 'java', '', 0, 1, 0, 6, '');
INSERT INTO `ask_category` VALUES (27, 'C#', '', 0, 1, 3, 0, '');
INSERT INTO `ask_category` VALUES (28, 'php', '', 0, 1, 4, 0, '');
INSERT INTO `ask_category` VALUES (29, '编程', '', 0, 1, 1, 0, '');

-- --------------------------------------------------------

-- 
-- 表的结构 `ask_category_admin`
-- 

CREATE TABLE `ask_category_admin` (
  `id` int(11) NOT NULL auto_increment,
  `categoryid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `ask_category_admin`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_chexingku`
-- 

CREATE TABLE `ask_chexingku` (
  `id` int(10) NOT NULL auto_increment,
  `shouzimu` varchar(200) NOT NULL,
  `pinpai` varchar(200) NOT NULL,
  `chexing` varchar(200) NOT NULL,
  `jiaqian` varchar(200) NOT NULL,
  `jiebie` varchar(200) NOT NULL,
  `chexingjiegou` varchar(200) NOT NULL,
  `fadongji` varchar(200) NOT NULL,
  `biansuxiang` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `ask_chexingku`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_credit`
-- 

CREATE TABLE `ask_credit` (
  `id` int(10) NOT NULL auto_increment,
  `uid` int(10) unsigned NOT NULL,
  `time` int(10) unsigned NOT NULL default '0',
  `operation` varchar(100) NOT NULL default '',
  `credit1` smallint(6) NOT NULL default '0',
  `credit2` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- 导出表中的数据 `ask_credit`
-- 

INSERT INTO `ask_credit` VALUES (1, 0, 1482947181, 'api_user/loginapi', 2, 0);
INSERT INTO `ask_credit` VALUES (2, 2, 1482948036, 'api_user/registerapi', 20, 20);
INSERT INTO `ask_credit` VALUES (3, 0, 1482949818, 'api_user/loginapi', 2, 0);
INSERT INTO `ask_credit` VALUES (4, 3, 1482955538, 'api_user/registerapi', 20, 20);
INSERT INTO `ask_credit` VALUES (5, 0, 1482989758, 'api_user/loginapi', 2, 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `ask_crontab`
-- 

CREATE TABLE `ask_crontab` (
  `id` int(6) unsigned NOT NULL auto_increment,
  `available` tinyint(1) NOT NULL default '0',
  `type` enum('user','system') NOT NULL default 'user',
  `name` char(50) NOT NULL default '',
  `method` varchar(50) NOT NULL default '',
  `lastrun` int(10) unsigned NOT NULL default '0',
  `nextrun` int(10) unsigned NOT NULL default '0',
  `weekday` tinyint(1) NOT NULL default '0',
  `day` tinyint(2) NOT NULL default '0',
  `hour` tinyint(2) NOT NULL default '0',
  `minute` char(36) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `nextrun` (`available`,`nextrun`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `ask_crontab`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_datacall`
-- 

CREATE TABLE `ask_datacall` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `title` varchar(50) NOT NULL default '',
  `expression` text NOT NULL,
  `time` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `ask_datacall`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_doing`
-- 

CREATE TABLE `ask_doing` (
  `doingid` bigint(20) NOT NULL auto_increment,
  `authorid` int(10) NOT NULL,
  `author` varchar(20) NOT NULL,
  `action` tinyint(1) NOT NULL,
  `questionid` int(10) NOT NULL,
  `content` text,
  `referid` int(10) NOT NULL default '0',
  `refer_authorid` int(10) NOT NULL default '0',
  `refer_content` tinytext,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY  (`doingid`),
  KEY `authorid` (`authorid`,`author`),
  KEY `sourceid` (`questionid`),
  KEY `createtime` (`createtime`),
  KEY `referid` (`referid`)
) ENGINE=MyISAM AUTO_INCREMENT=751 DEFAULT CHARSET=utf8 AUTO_INCREMENT=751 ;

-- 
-- 导出表中的数据 `ask_doing`
-- 

INSERT INTO `ask_doing` VALUES (1, 1, 'rzld100', 4, 1, '', 0, 0, '', 1482992787);
INSERT INTO `ask_doing` VALUES (2, 3, 'mayun', 4, 1, '', 0, 0, '', 1482992787);
INSERT INTO `ask_doing` VALUES (3, 2, 'admin', 4, 1, '', 0, 0, '', 1482992787);
INSERT INTO `ask_doing` VALUES (4, 1, 'rzld100', 4, 1, '', 0, 0, '', 1482992787);
INSERT INTO `ask_doing` VALUES (5, 2, 'admin', 1, 1, '', 0, 0, '', 1482992787);
INSERT INTO `ask_doing` VALUES (6, 2, 'admin', 8, 1, '谢谢你', 1, 4, '任何药都有副反映，但都是身体健康的人能承受的，美满霉素（米诺环素）、阿奇霉素主要表现为胃肠不是，如果能耐受，最好口服美满霉素（米诺环素），他对痤疮效果好，但痤疮最好以外用', 1482992787);
INSERT INTO `ask_doing` VALUES (7, 4, '梦与毁毁于梦', 4, 2, '', 0, 0, '', 1482992928);
INSERT INTO `ask_doing` VALUES (8, 2, 'admin', 4, 2, '', 0, 0, '', 1482992928);
INSERT INTO `ask_doing` VALUES (9, 3, 'mayun', 4, 2, '', 0, 0, '', 1482992928);
INSERT INTO `ask_doing` VALUES (10, 4, '梦与毁毁于梦', 1, 2, '', 0, 0, '', 1482992928);
INSERT INTO `ask_doing` VALUES (11, 4, '梦与毁毁于梦', 8, 2, '高手留个联系方式吧', 4, 1, '马上使用百度全文翻译！【http://fanyi.baidu.com】', 1482992928);
INSERT INTO `ask_doing` VALUES (12, 5, '', 4, 3, '', 0, 0, '', 1482992930);
INSERT INTO `ask_doing` VALUES (13, 1, 'rzld100', 4, 3, '', 0, 0, '', 1482992930);
INSERT INTO `ask_doing` VALUES (14, 3, 'mayun', 4, 3, '', 0, 0, '', 1482992930);
INSERT INTO `ask_doing` VALUES (15, 4, '梦与毁毁于梦', 4, 3, '', 0, 0, '', 1482992930);
INSERT INTO `ask_doing` VALUES (16, 3, 'mayun', 1, 3, '', 0, 0, '', 1482992930);
INSERT INTO `ask_doing` VALUES (17, 3, 'mayun', 8, 3, '谢谢你', 5, 2, '是宽度吗？还是高度？li的宽度和高度是一样的吗', 1482992930);
INSERT INTO `ask_doing` VALUES (18, 2, 'admin', 4, 4, '', 0, 0, '', 1482992932);
INSERT INTO `ask_doing` VALUES (19, 3, 'mayun', 4, 4, '', 0, 0, '', 1482992932);
INSERT INTO `ask_doing` VALUES (20, 5, '', 4, 4, '', 0, 0, '', 1482992932);
INSERT INTO `ask_doing` VALUES (21, 1, 'rzld100', 4, 4, '', 0, 0, '', 1482992932);
INSERT INTO `ask_doing` VALUES (22, 3, 'mayun', 1, 4, '', 0, 0, '', 1482992932);
INSERT INTO `ask_doing` VALUES (23, 3, 'mayun', 8, 4, '谢谢你', 7, 4, 'node中间层可以看作为拦截器，把你的请求兰姐过来，做一些处理之后，再转发给后台，可能会用在处理安全性问题上面，或者一种对外暴露接口的时候用到。', 1482992932);
INSERT INTO `ask_doing` VALUES (24, 5, '', 4, 5, '', 0, 0, '', 1482993070);
INSERT INTO `ask_doing` VALUES (25, 1, 'rzld100', 4, 5, '', 0, 0, '', 1482993070);
INSERT INTO `ask_doing` VALUES (26, 4, '梦与毁毁于梦', 4, 5, '', 0, 0, '', 1482993070);
INSERT INTO `ask_doing` VALUES (27, 2, 'admin', 4, 5, '', 0, 0, '', 1482993070);
INSERT INTO `ask_doing` VALUES (28, 3, 'mayun', 4, 5, '', 0, 0, '', 1482993070);
INSERT INTO `ask_doing` VALUES (29, 4, '梦与毁毁于梦', 1, 5, '', 0, 0, '', 1482993070);
INSERT INTO `ask_doing` VALUES (30, 5, '', 4, 6, '', 0, 0, '', 1482993072);
INSERT INTO `ask_doing` VALUES (31, 3, 'mayun', 4, 6, '', 0, 0, '', 1482993072);
INSERT INTO `ask_doing` VALUES (32, 1, 'rzld100', 4, 6, '', 0, 0, '', 1482993072);
INSERT INTO `ask_doing` VALUES (33, 4, '梦与毁毁于梦', 4, 6, '', 0, 0, '', 1482993072);
INSERT INTO `ask_doing` VALUES (34, 2, 'admin', 1, 6, '', 0, 0, '', 1482993072);
INSERT INTO `ask_doing` VALUES (35, 4, '梦与毁毁于梦', 4, 0, '', 0, 0, '', 1482993073);
INSERT INTO `ask_doing` VALUES (36, 2, 'admin', 4, 0, '', 0, 0, '', 1482993073);
INSERT INTO `ask_doing` VALUES (37, 1, 'rzld100', 4, 0, '', 0, 0, '', 1482993073);
INSERT INTO `ask_doing` VALUES (38, 5, '', 4, 0, '', 0, 0, '', 1482993073);
INSERT INTO `ask_doing` VALUES (39, 4, '梦与毁毁于梦', 1, 0, '', 0, 0, '', 1482993073);
INSERT INTO `ask_doing` VALUES (40, 1, 'rzld100', 4, 7, '', 0, 0, '', 1482993075);
INSERT INTO `ask_doing` VALUES (41, 5, '', 4, 7, '', 0, 0, '', 1482993075);
INSERT INTO `ask_doing` VALUES (42, 2, 'admin', 4, 7, '', 0, 0, '', 1482993075);
INSERT INTO `ask_doing` VALUES (43, 4, '梦与毁毁于梦', 1, 7, '', 0, 0, '', 1482993075);
INSERT INTO `ask_doing` VALUES (44, 4, '梦与毁毁于梦', 8, 7, '你真的帮了我大忙', 18, 2, '你调用了一下next方法，游标往下走了，只有一条的情况下，while肯定不走了。。', 1482993075);
INSERT INTO `ask_doing` VALUES (45, 2, 'admin', 4, 8, '', 0, 0, '', 1482993077);
INSERT INTO `ask_doing` VALUES (46, 4, '梦与毁毁于梦', 4, 8, '', 0, 0, '', 1482993077);
INSERT INTO `ask_doing` VALUES (47, 3, 'mayun', 4, 8, '', 0, 0, '', 1482993077);
INSERT INTO `ask_doing` VALUES (48, 3, 'mayun', 1, 8, '', 0, 0, '', 1482993077);
INSERT INTO `ask_doing` VALUES (49, 3, 'mayun', 8, 8, '真给力', 21, 2, '微信浏览器就是移动端的ie6，试试把resize绑定在document上,我一般都是用下面这个方式判断的', 1482993077);
INSERT INTO `ask_doing` VALUES (50, 2, 'admin', 4, 9, '', 0, 0, '', 1482993078);
INSERT INTO `ask_doing` VALUES (51, 1, 'rzld100', 4, 9, '', 0, 0, '', 1482993078);
INSERT INTO `ask_doing` VALUES (52, 5, '', 4, 9, '', 0, 0, '', 1482993078);
INSERT INTO `ask_doing` VALUES (53, 4, '梦与毁毁于梦', 4, 9, '', 0, 0, '', 1482993078);
INSERT INTO `ask_doing` VALUES (54, 5, '', 1, 9, '', 0, 0, '', 1482993078);
INSERT INTO `ask_doing` VALUES (55, 3, 'mayun', 4, 10, '', 0, 0, '', 1482993079);
INSERT INTO `ask_doing` VALUES (56, 2, 'admin', 4, 10, '', 0, 0, '', 1482993079);
INSERT INTO `ask_doing` VALUES (57, 4, '梦与毁毁于梦', 4, 10, '', 0, 0, '', 1482993079);
INSERT INTO `ask_doing` VALUES (58, 2, 'admin', 1, 10, '', 0, 0, '', 1482993079);
INSERT INTO `ask_doing` VALUES (59, 2, 'admin', 8, 10, '非常感谢你', 24, 4, 'zepto的tap是绑在document上的，事件从当前位置冒泡过去……所以如果没有复杂点击需求的话，建议用FastClick.', 1482993079);
INSERT INTO `ask_doing` VALUES (60, 5, '', 4, 11, '', 0, 0, '', 1482993080);
INSERT INTO `ask_doing` VALUES (61, 4, '梦与毁毁于梦', 4, 11, '', 0, 0, '', 1482993080);
INSERT INTO `ask_doing` VALUES (62, 1, 'rzld100', 4, 11, '', 0, 0, '', 1482993080);
INSERT INTO `ask_doing` VALUES (63, 3, 'mayun', 4, 11, '', 0, 0, '', 1482993080);
INSERT INTO `ask_doing` VALUES (64, 3, 'mayun', 4, 11, '', 0, 0, '', 1482993080);
INSERT INTO `ask_doing` VALUES (65, 3, 'mayun', 1, 11, '', 0, 0, '', 1482993080);
INSERT INTO `ask_doing` VALUES (66, 3, 'mayun', 8, 11, '真给力', 26, 5, '你这个应该是要考虑用模板了，Mui本身没有模板和块的设定，它应该算是一个控件库，现在大部份人都在用vue等集成到里面做模板的。个人意见，供参考。', 1482993080);
INSERT INTO `ask_doing` VALUES (67, 2, 'admin', 4, 0, '', 0, 0, '', 1482993082);
INSERT INTO `ask_doing` VALUES (68, 1, 'rzld100', 4, 0, '', 0, 0, '', 1482993082);
INSERT INTO `ask_doing` VALUES (69, 4, '梦与毁毁于梦', 4, 0, '', 0, 0, '', 1482993082);
INSERT INTO `ask_doing` VALUES (70, 4, '梦与毁毁于梦', 1, 0, '', 0, 0, '', 1482993082);
INSERT INTO `ask_doing` VALUES (71, 4, '梦与毁毁于梦', 8, 0, '你真是个大好人', 28, 4, '数量：(S+)', 1482993082);
INSERT INTO `ask_doing` VALUES (72, 3, 'mayun', 4, 0, '', 0, 0, '', 1482993088);
INSERT INTO `ask_doing` VALUES (73, 2, 'admin', 4, 0, '', 0, 0, '', 1482993088);
INSERT INTO `ask_doing` VALUES (74, 1, 'rzld100', 1, 0, '', 0, 0, '', 1482993088);
INSERT INTO `ask_doing` VALUES (75, 1, 'rzld100', 8, 0, '高手留个联系方式吧', 29, 4, 'jquery获取value是用$().val(),当然你也可以$("#input")[0].value~还可以 $("#input").get(0).value;因为jquery包住的对象是封装好的对象，要想直接拿到dom那就后面两种', 1482993088);
INSERT INTO `ask_doing` VALUES (76, 5, '', 4, 12, '', 0, 0, '', 1482993100);
INSERT INTO `ask_doing` VALUES (77, 1, 'rzld100', 4, 12, '', 0, 0, '', 1482993100);
INSERT INTO `ask_doing` VALUES (78, 2, 'admin', 4, 12, '', 0, 0, '', 1482993100);
INSERT INTO `ask_doing` VALUES (79, 3, 'mayun', 4, 12, '', 0, 0, '', 1482993100);
INSERT INTO `ask_doing` VALUES (80, 3, 'mayun', 1, 12, '', 0, 0, '', 1482993100);
INSERT INTO `ask_doing` VALUES (81, 2, 'admin', 4, 13, '', 0, 0, '', 1482993103);
INSERT INTO `ask_doing` VALUES (82, 4, '梦与毁毁于梦', 4, 13, '', 0, 0, '', 1482993103);
INSERT INTO `ask_doing` VALUES (83, 5, '', 4, 13, '', 0, 0, '', 1482993103);
INSERT INTO `ask_doing` VALUES (84, 3, 'mayun', 1, 13, '', 0, 0, '', 1482993103);
INSERT INTO `ask_doing` VALUES (85, 3, 'mayun', 4, 14, '', 0, 0, '', 1482993108);
INSERT INTO `ask_doing` VALUES (86, 5, '', 4, 14, '', 0, 0, '', 1482993108);
INSERT INTO `ask_doing` VALUES (87, 3, 'mayun', 4, 14, '', 0, 0, '', 1482993108);
INSERT INTO `ask_doing` VALUES (88, 2, 'admin', 4, 14, '', 0, 0, '', 1482993108);
INSERT INTO `ask_doing` VALUES (89, 3, 'mayun', 1, 14, '', 0, 0, '', 1482993108);
INSERT INTO `ask_doing` VALUES (90, 4, '梦与毁毁于梦', 4, 15, '', 0, 0, '', 1482993109);
INSERT INTO `ask_doing` VALUES (91, 3, 'mayun', 4, 15, '', 0, 0, '', 1482993109);
INSERT INTO `ask_doing` VALUES (92, 4, '梦与毁毁于梦', 4, 15, '', 0, 0, '', 1482993109);
INSERT INTO `ask_doing` VALUES (93, 5, '', 4, 15, '', 0, 0, '', 1482993109);
INSERT INTO `ask_doing` VALUES (94, 1, 'rzld100', 1, 15, '', 0, 0, '', 1482993109);
INSERT INTO `ask_doing` VALUES (95, 5, '', 4, 16, '', 0, 0, '', 1482993111);
INSERT INTO `ask_doing` VALUES (96, 2, 'admin', 4, 16, '', 0, 0, '', 1482993111);
INSERT INTO `ask_doing` VALUES (97, 1, 'rzld100', 4, 16, '', 0, 0, '', 1482993111);
INSERT INTO `ask_doing` VALUES (98, 3, 'mayun', 4, 16, '', 0, 0, '', 1482993111);
INSERT INTO `ask_doing` VALUES (99, 3, 'mayun', 1, 16, '', 0, 0, '', 1482993111);
INSERT INTO `ask_doing` VALUES (100, 5, '', 4, 0, '', 0, 0, '', 1482993112);
INSERT INTO `ask_doing` VALUES (101, 2, 'admin', 1, 0, '', 0, 0, '', 1482993112);
INSERT INTO `ask_doing` VALUES (102, 2, 'admin', 8, 0, '真给力', 44, 3, '自己回到吧；方法一：在配置中 config取消单张图片上传，使用多张图片上传代替；方法二：修改ueditor.all.js中简单上传函数在图片上传完成后修改loading图的src属性，展示真实图片后，在末尾插', 1482993112);
INSERT INTO `ask_doing` VALUES (103, 5, '', 4, 17, '', 0, 0, '', 1482993114);
INSERT INTO `ask_doing` VALUES (104, 3, 'mayun', 4, 17, '', 0, 0, '', 1482993114);
INSERT INTO `ask_doing` VALUES (105, 1, 'rzld100', 4, 17, '', 0, 0, '', 1482993114);
INSERT INTO `ask_doing` VALUES (106, 4, '梦与毁毁于梦', 4, 17, '', 0, 0, '', 1482993114);
INSERT INTO `ask_doing` VALUES (107, 4, '梦与毁毁于梦', 4, 17, '', 0, 0, '', 1482993114);
INSERT INTO `ask_doing` VALUES (108, 2, 'admin', 1, 17, '', 0, 0, '', 1482993114);
INSERT INTO `ask_doing` VALUES (109, 2, 'admin', 8, 17, '高手留个联系方式吧', 47, 3, 'http://www.cnblogs.com/fnng/p... 可以去看一看', 1482993114);
INSERT INTO `ask_doing` VALUES (110, 1, 'rzld100', 4, 18, '', 0, 0, '', 1482993115);
INSERT INTO `ask_doing` VALUES (111, 5, '', 4, 18, '', 0, 0, '', 1482993115);
INSERT INTO `ask_doing` VALUES (112, 1, 'rzld100', 4, 18, '', 0, 0, '', 1482993115);
INSERT INTO `ask_doing` VALUES (113, 5, '', 4, 18, '', 0, 0, '', 1482993115);
INSERT INTO `ask_doing` VALUES (114, 5, '', 1, 18, '', 0, 0, '', 1482993115);
INSERT INTO `ask_doing` VALUES (115, 5, '', 8, 18, '你真是个大好人', 52, 2, '修改npm目录下的npmrc文件', 1482993115);
INSERT INTO `ask_doing` VALUES (116, 2, 'admin', 4, 19, '', 0, 0, '', 1482993116);
INSERT INTO `ask_doing` VALUES (117, 3, 'mayun', 4, 19, '', 0, 0, '', 1482993116);
INSERT INTO `ask_doing` VALUES (118, 1, 'rzld100', 4, 19, '', 0, 0, '', 1482993116);
INSERT INTO `ask_doing` VALUES (119, 1, 'rzld100', 1, 19, '', 0, 0, '', 1482993116);
INSERT INTO `ask_doing` VALUES (120, 3, 'mayun', 4, 20, '', 0, 0, '', 1482993118);
INSERT INTO `ask_doing` VALUES (121, 5, '', 4, 20, '', 0, 0, '', 1482993118);
INSERT INTO `ask_doing` VALUES (122, 4, '梦与毁毁于梦', 4, 20, '', 0, 0, '', 1482993118);
INSERT INTO `ask_doing` VALUES (123, 2, 'admin', 4, 20, '', 0, 0, '', 1482993118);
INSERT INTO `ask_doing` VALUES (124, 3, 'mayun', 1, 20, '', 0, 0, '', 1482993118);
INSERT INTO `ask_doing` VALUES (125, 3, 'mayun', 8, 20, '大神......', 62, 4, '1 限制同一IP请求数量，如果请求数不正常 ban掉2 干扰码 3 请补充', 1482993118);
INSERT INTO `ask_doing` VALUES (126, 5, '', 4, 21, '', 0, 0, '', 1482993120);
INSERT INTO `ask_doing` VALUES (127, 4, '梦与毁毁于梦', 4, 21, '', 0, 0, '', 1482993120);
INSERT INTO `ask_doing` VALUES (128, 1, 'rzld100', 4, 21, '', 0, 0, '', 1482993120);
INSERT INTO `ask_doing` VALUES (129, 3, 'mayun', 4, 21, '', 0, 0, '', 1482993120);
INSERT INTO `ask_doing` VALUES (130, 1, 'rzld100', 1, 21, '', 0, 0, '', 1482993120);
INSERT INTO `ask_doing` VALUES (131, 4, '梦与毁毁于梦', 4, 22, '', 0, 0, '', 1482993121);
INSERT INTO `ask_doing` VALUES (132, 3, 'mayun', 4, 22, '', 0, 0, '', 1482993121);
INSERT INTO `ask_doing` VALUES (133, 2, 'admin', 4, 22, '', 0, 0, '', 1482993121);
INSERT INTO `ask_doing` VALUES (134, 2, 'admin', 4, 22, '', 0, 0, '', 1482993121);
INSERT INTO `ask_doing` VALUES (135, 2, 'admin', 1, 22, '', 0, 0, '', 1482993121);
INSERT INTO `ask_doing` VALUES (136, 2, 'admin', 8, 22, '非常感谢你', 69, 3, '切换过程（点击下一张按钮）：', 1482993121);
INSERT INTO `ask_doing` VALUES (137, 4, '梦与毁毁于梦', 4, 23, '', 0, 0, '', 1482993122);
INSERT INTO `ask_doing` VALUES (138, 3, 'mayun', 4, 23, '', 0, 0, '', 1482993122);
INSERT INTO `ask_doing` VALUES (139, 5, '', 4, 23, '', 0, 0, '', 1482993122);
INSERT INTO `ask_doing` VALUES (140, 1, 'rzld100', 4, 23, '', 0, 0, '', 1482993122);
INSERT INTO `ask_doing` VALUES (141, 2, 'admin', 4, 23, '', 0, 0, '', 1482993122);
INSERT INTO `ask_doing` VALUES (142, 5, '', 1, 23, '', 0, 0, '', 1482993122);
INSERT INTO `ask_doing` VALUES (143, 5, '', 8, 23, '高手留个联系方式吧', 73, 4, '这个应该没有兼容性的', 1482993122);
INSERT INTO `ask_doing` VALUES (144, 4, '梦与毁毁于梦', 4, 24, '', 0, 0, '', 1482993124);
INSERT INTO `ask_doing` VALUES (145, 3, 'mayun', 4, 24, '', 0, 0, '', 1482993124);
INSERT INTO `ask_doing` VALUES (146, 1, 'rzld100', 4, 24, '', 0, 0, '', 1482993124);
INSERT INTO `ask_doing` VALUES (147, 1, 'rzld100', 1, 24, '', 0, 0, '', 1482993124);
INSERT INTO `ask_doing` VALUES (148, 1, 'rzld100', 8, 24, '你真是个大好人', 75, 4, 'http://gallery.echartsjs.com/...', 1482993124);
INSERT INTO `ask_doing` VALUES (149, 2, 'admin', 4, 25, '', 0, 0, '', 1482993125);
INSERT INTO `ask_doing` VALUES (150, 1, 'rzld100', 4, 25, '', 0, 0, '', 1482993125);
INSERT INTO `ask_doing` VALUES (151, 2, 'admin', 1, 25, '', 0, 0, '', 1482993125);
INSERT INTO `ask_doing` VALUES (152, 1, 'rzld100', 4, 26, '', 0, 0, '', 1482993127);
INSERT INTO `ask_doing` VALUES (153, 4, '梦与毁毁于梦', 4, 26, '', 0, 0, '', 1482993127);
INSERT INTO `ask_doing` VALUES (154, 2, 'admin', 4, 26, '', 0, 0, '', 1482993127);
INSERT INTO `ask_doing` VALUES (155, 5, '', 1, 26, '', 0, 0, '', 1482993127);
INSERT INTO `ask_doing` VALUES (156, 2, 'admin', 4, 27, '', 0, 0, '', 1482993128);
INSERT INTO `ask_doing` VALUES (157, 5, '', 4, 27, '', 0, 0, '', 1482993128);
INSERT INTO `ask_doing` VALUES (158, 4, '梦与毁毁于梦', 4, 27, '', 0, 0, '', 1482993128);
INSERT INTO `ask_doing` VALUES (159, 1, 'rzld100', 4, 27, '', 0, 0, '', 1482993128);
INSERT INTO `ask_doing` VALUES (160, 4, '梦与毁毁于梦', 1, 27, '', 0, 0, '', 1482993128);
INSERT INTO `ask_doing` VALUES (161, 4, '梦与毁毁于梦', 4, 0, '', 0, 0, '', 1482993131);
INSERT INTO `ask_doing` VALUES (162, 1, 'rzld100', 4, 0, '', 0, 0, '', 1482993131);
INSERT INTO `ask_doing` VALUES (163, 2, 'admin', 4, 0, '', 0, 0, '', 1482993131);
INSERT INTO `ask_doing` VALUES (164, 4, '梦与毁毁于梦', 4, 0, '', 0, 0, '', 1482993131);
INSERT INTO `ask_doing` VALUES (165, 5, '', 4, 0, '', 0, 0, '', 1482993131);
INSERT INTO `ask_doing` VALUES (166, 3, 'mayun', 1, 0, '', 0, 0, '', 1482993131);
INSERT INTO `ask_doing` VALUES (167, 2, 'admin', 4, 28, '', 0, 0, '', 1482993132);
INSERT INTO `ask_doing` VALUES (168, 4, '梦与毁毁于梦', 4, 28, '', 0, 0, '', 1482993132);
INSERT INTO `ask_doing` VALUES (169, 5, '', 4, 28, '', 0, 0, '', 1482993132);
INSERT INTO `ask_doing` VALUES (170, 1, 'rzld100', 4, 28, '', 0, 0, '', 1482993132);
INSERT INTO `ask_doing` VALUES (171, 5, '', 1, 28, '', 0, 0, '', 1482993132);
INSERT INTO `ask_doing` VALUES (172, 3, 'mayun', 4, 29, '', 0, 0, '', 1482993133);
INSERT INTO `ask_doing` VALUES (173, 4, '梦与毁毁于梦', 4, 29, '', 0, 0, '', 1482993133);
INSERT INTO `ask_doing` VALUES (174, 5, '', 4, 29, '', 0, 0, '', 1482993133);
INSERT INTO `ask_doing` VALUES (175, 3, 'mayun', 1, 29, '', 0, 0, '', 1482993133);
INSERT INTO `ask_doing` VALUES (176, 1, 'rzld100', 4, 30, '', 0, 0, '', 1482993135);
INSERT INTO `ask_doing` VALUES (177, 2, 'admin', 4, 30, '', 0, 0, '', 1482993135);
INSERT INTO `ask_doing` VALUES (178, 3, 'mayun', 4, 30, '', 0, 0, '', 1482993135);
INSERT INTO `ask_doing` VALUES (179, 5, '', 1, 30, '', 0, 0, '', 1482993135);
INSERT INTO `ask_doing` VALUES (180, 4, '梦与毁毁于梦', 4, 31, '', 0, 0, '', 1482993136);
INSERT INTO `ask_doing` VALUES (181, 1, 'rzld100', 4, 31, '', 0, 0, '', 1482993136);
INSERT INTO `ask_doing` VALUES (182, 4, '梦与毁毁于梦', 4, 31, '', 0, 0, '', 1482993136);
INSERT INTO `ask_doing` VALUES (183, 2, 'admin', 4, 31, '', 0, 0, '', 1482993136);
INSERT INTO `ask_doing` VALUES (184, 3, 'mayun', 1, 31, '', 0, 0, '', 1482993136);
INSERT INTO `ask_doing` VALUES (185, 3, 'mayun', 8, 31, '大神......', 105, 4, 'bold', 1482993136);
INSERT INTO `ask_doing` VALUES (186, 2, 'admin', 4, 32, '', 0, 0, '', 1482993137);
INSERT INTO `ask_doing` VALUES (187, 5, '', 4, 32, '', 0, 0, '', 1482993137);
INSERT INTO `ask_doing` VALUES (188, 3, 'mayun', 4, 32, '', 0, 0, '', 1482993137);
INSERT INTO `ask_doing` VALUES (189, 5, '', 4, 32, '', 0, 0, '', 1482993137);
INSERT INTO `ask_doing` VALUES (190, 5, '', 1, 32, '', 0, 0, '', 1482993137);
INSERT INTO `ask_doing` VALUES (191, 5, '', 8, 32, '谢谢你', 107, 1, 'var json=JSON.parse(msg.topic_search_info);然后在console.log(json);看看打印的是不是json对象', 1482993137);
INSERT INTO `ask_doing` VALUES (192, 2, 'admin', 4, 0, '', 0, 0, '', 1482993138);
INSERT INTO `ask_doing` VALUES (193, 3, 'mayun', 4, 0, '', 0, 0, '', 1482993138);
INSERT INTO `ask_doing` VALUES (194, 1, 'rzld100', 1, 0, '', 0, 0, '', 1482993138);
INSERT INTO `ask_doing` VALUES (195, 4, '梦与毁毁于梦', 4, 33, '', 0, 0, '', 1482993140);
INSERT INTO `ask_doing` VALUES (196, 1, 'rzld100', 4, 33, '', 0, 0, '', 1482993140);
INSERT INTO `ask_doing` VALUES (197, 2, 'admin', 4, 33, '', 0, 0, '', 1482993140);
INSERT INTO `ask_doing` VALUES (198, 3, 'mayun', 4, 33, '', 0, 0, '', 1482993140);
INSERT INTO `ask_doing` VALUES (199, 1, 'rzld100', 4, 33, '', 0, 0, '', 1482993140);
INSERT INTO `ask_doing` VALUES (200, 2, 'admin', 1, 33, '', 0, 0, '', 1482993140);
INSERT INTO `ask_doing` VALUES (201, 4, '梦与毁毁于梦', 4, 34, '', 0, 0, '', 1482993141);
INSERT INTO `ask_doing` VALUES (202, 1, 'rzld100', 4, 34, '', 0, 0, '', 1482993141);
INSERT INTO `ask_doing` VALUES (203, 2, 'admin', 4, 34, '', 0, 0, '', 1482993141);
INSERT INTO `ask_doing` VALUES (204, 5, '', 4, 34, '', 0, 0, '', 1482993141);
INSERT INTO `ask_doing` VALUES (205, 2, 'admin', 1, 34, '', 0, 0, '', 1482993141);
INSERT INTO `ask_doing` VALUES (206, 4, '梦与毁毁于梦', 4, 35, '', 0, 0, '', 1482993142);
INSERT INTO `ask_doing` VALUES (207, 1, 'rzld100', 4, 35, '', 0, 0, '', 1482993142);
INSERT INTO `ask_doing` VALUES (208, 2, 'admin', 4, 35, '', 0, 0, '', 1482993142);
INSERT INTO `ask_doing` VALUES (209, 5, '', 4, 35, '', 0, 0, '', 1482993142);
INSERT INTO `ask_doing` VALUES (210, 3, 'mayun', 4, 35, '', 0, 0, '', 1482993142);
INSERT INTO `ask_doing` VALUES (211, 1, 'rzld100', 1, 35, '', 0, 0, '', 1482993142);
INSERT INTO `ask_doing` VALUES (212, 1, 'rzld100', 8, 35, '大神......', 127, 2, 'width=750px我理解为强行把各个浏览器的宽都变成750px，在切页面的时候全部都是取设计稿的实际像素值，也就是说一般固定750px之后给你的设计稿宽度也应该是750px，比如元素用定位的时候设计稿', 1482993142);
INSERT INTO `ask_doing` VALUES (213, 1, 'rzld100', 4, 0, '', 0, 0, '', 1482993144);
INSERT INTO `ask_doing` VALUES (214, 2, 'admin', 4, 0, '', 0, 0, '', 1482993144);
INSERT INTO `ask_doing` VALUES (215, 4, '梦与毁毁于梦', 1, 0, '', 0, 0, '', 1482993144);
INSERT INTO `ask_doing` VALUES (216, 4, '梦与毁毁于梦', 8, 0, '谢谢你', 129, 4, 'http://stackoverflow.com/ques...', 1482993144);
INSERT INTO `ask_doing` VALUES (217, 2, 'admin', 4, 36, '', 0, 0, '', 1482993145);
INSERT INTO `ask_doing` VALUES (218, 1, 'rzld100', 4, 36, '', 0, 0, '', 1482993145);
INSERT INTO `ask_doing` VALUES (219, 4, '梦与毁毁于梦', 4, 36, '', 0, 0, '', 1482993145);
INSERT INTO `ask_doing` VALUES (220, 5, '', 4, 36, '', 0, 0, '', 1482993145);
INSERT INTO `ask_doing` VALUES (221, 2, 'admin', 1, 36, '', 0, 0, '', 1482993145);
INSERT INTO `ask_doing` VALUES (222, 3, 'mayun', 4, 37, '', 0, 0, '', 1482993146);
INSERT INTO `ask_doing` VALUES (223, 5, '', 4, 37, '', 0, 0, '', 1482993146);
INSERT INTO `ask_doing` VALUES (224, 4, '梦与毁毁于梦', 4, 37, '', 0, 0, '', 1482993146);
INSERT INTO `ask_doing` VALUES (225, 4, '梦与毁毁于梦', 1, 37, '', 0, 0, '', 1482993146);
INSERT INTO `ask_doing` VALUES (226, 4, '梦与毁毁于梦', 4, 0, '', 0, 0, '', 1482993148);
INSERT INTO `ask_doing` VALUES (227, 5, '', 4, 0, '', 0, 0, '', 1482993148);
INSERT INTO `ask_doing` VALUES (228, 1, 'rzld100', 1, 0, '', 0, 0, '', 1482993148);
INSERT INTO `ask_doing` VALUES (229, 1, 'rzld100', 4, 38, '', 0, 0, '', 1482993149);
INSERT INTO `ask_doing` VALUES (230, 4, '梦与毁毁于梦', 4, 38, '', 0, 0, '', 1482993149);
INSERT INTO `ask_doing` VALUES (231, 3, 'mayun', 4, 38, '', 0, 0, '', 1482993149);
INSERT INTO `ask_doing` VALUES (232, 2, 'admin', 4, 38, '', 0, 0, '', 1482993149);
INSERT INTO `ask_doing` VALUES (233, 4, '梦与毁毁于梦', 1, 38, '', 0, 0, '', 1482993149);
INSERT INTO `ask_doing` VALUES (234, 3, 'mayun', 4, 39, '', 0, 0, '', 1482993151);
INSERT INTO `ask_doing` VALUES (235, 5, '', 4, 39, '', 0, 0, '', 1482993151);
INSERT INTO `ask_doing` VALUES (236, 4, '梦与毁毁于梦', 4, 39, '', 0, 0, '', 1482993151);
INSERT INTO `ask_doing` VALUES (237, 4, '梦与毁毁于梦', 1, 39, '', 0, 0, '', 1482993151);
INSERT INTO `ask_doing` VALUES (238, 4, '梦与毁毁于梦', 8, 39, '真给力', 135, 1, '或是用很簡單的 Store Pattern 來實現共享數據：', 1482993151);
INSERT INTO `ask_doing` VALUES (239, 3, 'mayun', 4, 40, '', 0, 0, '', 1482993152);
INSERT INTO `ask_doing` VALUES (240, 5, '', 4, 40, '', 0, 0, '', 1482993152);
INSERT INTO `ask_doing` VALUES (241, 2, 'admin', 4, 40, '', 0, 0, '', 1482993152);
INSERT INTO `ask_doing` VALUES (242, 1, 'rzld100', 4, 40, '', 0, 0, '', 1482993152);
INSERT INTO `ask_doing` VALUES (243, 3, 'mayun', 1, 40, '', 0, 0, '', 1482993152);
INSERT INTO `ask_doing` VALUES (244, 3, 'mayun', 8, 40, '非常感谢你', 139, 2, '给你推荐一篇文章http://www.jianshu.com/p/f188...', 1482993152);
INSERT INTO `ask_doing` VALUES (245, 3, 'mayun', 4, 41, '', 0, 0, '', 1482993157);
INSERT INTO `ask_doing` VALUES (246, 5, '', 4, 41, '', 0, 0, '', 1482993157);
INSERT INTO `ask_doing` VALUES (247, 1, 'rzld100', 4, 41, '', 0, 0, '', 1482993157);
INSERT INTO `ask_doing` VALUES (248, 5, '', 1, 41, '', 0, 0, '', 1482993157);
INSERT INTO `ask_doing` VALUES (249, 3, 'mayun', 4, 0, '', 0, 0, '', 1482993158);
INSERT INTO `ask_doing` VALUES (250, 2, 'admin', 4, 0, '', 0, 0, '', 1482993158);
INSERT INTO `ask_doing` VALUES (251, 2, 'admin', 1, 0, '', 0, 0, '', 1482993158);
INSERT INTO `ask_doing` VALUES (252, 4, '梦与毁毁于梦', 4, 42, '', 0, 0, '', 1482993160);
INSERT INTO `ask_doing` VALUES (253, 3, 'mayun', 4, 42, '', 0, 0, '', 1482993160);
INSERT INTO `ask_doing` VALUES (254, 3, 'mayun', 4, 42, '', 0, 0, '', 1482993160);
INSERT INTO `ask_doing` VALUES (255, 4, '梦与毁毁于梦', 1, 42, '', 0, 0, '', 1482993160);
INSERT INTO `ask_doing` VALUES (256, 4, '梦与毁毁于梦', 8, 42, '非常感谢你', 154, 2, 'b页面', 1482993160);
INSERT INTO `ask_doing` VALUES (257, 1, 'rzld100', 4, 43, '', 0, 0, '', 1482993161);
INSERT INTO `ask_doing` VALUES (258, 1, 'rzld100', 4, 43, '', 0, 0, '', 1482993161);
INSERT INTO `ask_doing` VALUES (259, 5, '', 4, 43, '', 0, 0, '', 1482993161);
INSERT INTO `ask_doing` VALUES (260, 2, 'admin', 4, 43, '', 0, 0, '', 1482993161);
INSERT INTO `ask_doing` VALUES (261, 5, '', 1, 43, '', 0, 0, '', 1482993161);
INSERT INTO `ask_doing` VALUES (262, 5, '', 8, 43, '你真是个大好人', 156, 3, '如果保證是父子關係的話，直接取得 parentNode 就可以了：', 1482993161);
INSERT INTO `ask_doing` VALUES (263, 4, '梦与毁毁于梦', 4, 44, '', 0, 0, '', 1482993165);
INSERT INTO `ask_doing` VALUES (264, 2, 'admin', 4, 44, '', 0, 0, '', 1482993165);
INSERT INTO `ask_doing` VALUES (265, 3, 'mayun', 4, 44, '', 0, 0, '', 1482993165);
INSERT INTO `ask_doing` VALUES (266, 1, 'rzld100', 1, 44, '', 0, 0, '', 1482993165);
INSERT INTO `ask_doing` VALUES (267, 4, '梦与毁毁于梦', 4, 0, '', 0, 0, '', 1482993166);
INSERT INTO `ask_doing` VALUES (268, 3, 'mayun', 4, 0, '', 0, 0, '', 1482993166);
INSERT INTO `ask_doing` VALUES (269, 1, 'rzld100', 4, 0, '', 0, 0, '', 1482993166);
INSERT INTO `ask_doing` VALUES (270, 5, '', 1, 0, '', 0, 0, '', 1482993166);
INSERT INTO `ask_doing` VALUES (271, 5, '', 8, 0, '非常感谢你', 157, 5, '好像jquery 从 1.8.3 到 1.9.0 的after方法有变化。', 1482993166);
INSERT INTO `ask_doing` VALUES (272, 5, '', 4, 45, '', 0, 0, '', 1482993168);
INSERT INTO `ask_doing` VALUES (273, 2, 'admin', 4, 45, '', 0, 0, '', 1482993168);
INSERT INTO `ask_doing` VALUES (274, 3, 'mayun', 4, 45, '', 0, 0, '', 1482993168);
INSERT INTO `ask_doing` VALUES (275, 1, 'rzld100', 4, 45, '', 0, 0, '', 1482993168);
INSERT INTO `ask_doing` VALUES (276, 5, '', 1, 45, '', 0, 0, '', 1482993168);
INSERT INTO `ask_doing` VALUES (277, 1, 'rzld100', 4, 0, '', 0, 0, '', 1482993169);
INSERT INTO `ask_doing` VALUES (278, 2, 'admin', 4, 0, '', 0, 0, '', 1482993169);
INSERT INTO `ask_doing` VALUES (279, 4, '梦与毁毁于梦', 1, 0, '', 0, 0, '', 1482993169);
INSERT INTO `ask_doing` VALUES (280, 2, 'admin', 4, 46, '', 0, 0, '', 1482993170);
INSERT INTO `ask_doing` VALUES (281, 5, '', 4, 46, '', 0, 0, '', 1482993170);
INSERT INTO `ask_doing` VALUES (282, 3, 'mayun', 4, 46, '', 0, 0, '', 1482993170);
INSERT INTO `ask_doing` VALUES (283, 1, 'rzld100', 4, 46, '', 0, 0, '', 1482993170);
INSERT INTO `ask_doing` VALUES (284, 2, 'admin', 1, 46, '', 0, 0, '', 1482993170);
INSERT INTO `ask_doing` VALUES (285, 5, '', 4, 47, '', 0, 0, '', 1482993171);
INSERT INTO `ask_doing` VALUES (286, 2, 'admin', 4, 47, '', 0, 0, '', 1482993171);
INSERT INTO `ask_doing` VALUES (287, 2, 'admin', 4, 47, '', 0, 0, '', 1482993171);
INSERT INTO `ask_doing` VALUES (288, 1, 'rzld100', 1, 47, '', 0, 0, '', 1482993171);
INSERT INTO `ask_doing` VALUES (289, 4, '梦与毁毁于梦', 4, 48, '', 0, 0, '', 1482993173);
INSERT INTO `ask_doing` VALUES (290, 5, '', 4, 48, '', 0, 0, '', 1482993173);
INSERT INTO `ask_doing` VALUES (291, 2, 'admin', 4, 48, '', 0, 0, '', 1482993173);
INSERT INTO `ask_doing` VALUES (292, 1, 'rzld100', 4, 48, '', 0, 0, '', 1482993173);
INSERT INTO `ask_doing` VALUES (293, 3, 'mayun', 1, 48, '', 0, 0, '', 1482993173);
INSERT INTO `ask_doing` VALUES (294, 4, '梦与毁毁于梦', 4, 49, '', 0, 0, '', 1482993174);
INSERT INTO `ask_doing` VALUES (295, 5, '', 4, 49, '', 0, 0, '', 1482993174);
INSERT INTO `ask_doing` VALUES (296, 2, 'admin', 4, 49, '', 0, 0, '', 1482993174);
INSERT INTO `ask_doing` VALUES (297, 2, 'admin', 1, 49, '', 0, 0, '', 1482993174);
INSERT INTO `ask_doing` VALUES (298, 2, 'admin', 8, 49, '谢谢你', 168, 3, '这个比较容易理解，GIL保证python byte code在进程内同时只有一个native thread在运行。但byte code自身的逻辑仍然需要加锁/互斥等保证线程可重入，因为byte code运行过程中任意点都可能被打断并切换到', 1482993174);
INSERT INTO `ask_doing` VALUES (299, 1, 'rzld100', 4, 50, '', 0, 0, '', 1482993175);
INSERT INTO `ask_doing` VALUES (300, 3, 'mayun', 4, 50, '', 0, 0, '', 1482993175);
INSERT INTO `ask_doing` VALUES (301, 5, '', 4, 50, '', 0, 0, '', 1482993175);
INSERT INTO `ask_doing` VALUES (302, 1, 'rzld100', 1, 50, '', 0, 0, '', 1482993175);
INSERT INTO `ask_doing` VALUES (303, 1, 'rzld100', 4, 51, '', 0, 0, '', 1482993178);
INSERT INTO `ask_doing` VALUES (304, 5, '', 4, 51, '', 0, 0, '', 1482993178);
INSERT INTO `ask_doing` VALUES (305, 4, '梦与毁毁于梦', 4, 51, '', 0, 0, '', 1482993178);
INSERT INTO `ask_doing` VALUES (306, 2, 'admin', 4, 51, '', 0, 0, '', 1482993178);
INSERT INTO `ask_doing` VALUES (307, 4, '梦与毁毁于梦', 1, 51, '', 0, 0, '', 1482993178);
INSERT INTO `ask_doing` VALUES (308, 4, '梦与毁毁于梦', 8, 51, '大神......', 177, 3, '对于RecyclerView来说，你需要两个配置，一是，android:windowSoftInputMode="adjustResize"，再就是代码初始化RecyclerView的时候加上这个', 1482993178);
INSERT INTO `ask_doing` VALUES (309, 4, '梦与毁毁于梦', 4, 0, '', 0, 0, '', 1482993179);
INSERT INTO `ask_doing` VALUES (310, 5, '', 4, 0, '', 0, 0, '', 1482993179);
INSERT INTO `ask_doing` VALUES (311, 2, 'admin', 1, 0, '', 0, 0, '', 1482993179);
INSERT INTO `ask_doing` VALUES (312, 2, 'admin', 8, 0, '大神......', 179, 4, '因为需要对比的 不只有一个版本， version_compare 只是比较你此次需要比较的版本', 1482993179);
INSERT INTO `ask_doing` VALUES (313, 2, 'admin', 4, 52, '', 0, 0, '', 1482993181);
INSERT INTO `ask_doing` VALUES (314, 5, '', 4, 52, '', 0, 0, '', 1482993181);
INSERT INTO `ask_doing` VALUES (315, 1, 'rzld100', 4, 52, '', 0, 0, '', 1482993181);
INSERT INTO `ask_doing` VALUES (316, 4, '梦与毁毁于梦', 4, 52, '', 0, 0, '', 1482993181);
INSERT INTO `ask_doing` VALUES (317, 3, 'mayun', 1, 52, '', 0, 0, '', 1482993181);
INSERT INTO `ask_doing` VALUES (318, 3, 'mayun', 8, 52, '高手留个联系方式吧', 180, 1, '如图所示', 1482993181);
INSERT INTO `ask_doing` VALUES (319, 4, '梦与毁毁于梦', 4, 53, '', 0, 0, '', 1482993182);
INSERT INTO `ask_doing` VALUES (320, 5, '', 4, 53, '', 0, 0, '', 1482993182);
INSERT INTO `ask_doing` VALUES (321, 1, 'rzld100', 4, 53, '', 0, 0, '', 1482993182);
INSERT INTO `ask_doing` VALUES (322, 4, '梦与毁毁于梦', 4, 53, '', 0, 0, '', 1482993182);
INSERT INTO `ask_doing` VALUES (323, 4, '梦与毁毁于梦', 1, 53, '', 0, 0, '', 1482993182);
INSERT INTO `ask_doing` VALUES (324, 3, 'mayun', 4, 0, '', 0, 0, '', 1482993183);
INSERT INTO `ask_doing` VALUES (325, 4, '梦与毁毁于梦', 4, 0, '', 0, 0, '', 1482993183);
INSERT INTO `ask_doing` VALUES (326, 2, 'admin', 4, 0, '', 0, 0, '', 1482993183);
INSERT INTO `ask_doing` VALUES (327, 4, '梦与毁毁于梦', 1, 0, '', 0, 0, '', 1482993183);
INSERT INTO `ask_doing` VALUES (328, 5, '', 4, 54, '', 0, 0, '', 1482993185);
INSERT INTO `ask_doing` VALUES (329, 4, '梦与毁毁于梦', 4, 54, '', 0, 0, '', 1482993185);
INSERT INTO `ask_doing` VALUES (330, 1, 'rzld100', 4, 54, '', 0, 0, '', 1482993185);
INSERT INTO `ask_doing` VALUES (331, 5, '', 1, 54, '', 0, 0, '', 1482993185);
INSERT INTO `ask_doing` VALUES (332, 2, 'admin', 4, 55, '', 0, 0, '', 1482993187);
INSERT INTO `ask_doing` VALUES (333, 5, '', 4, 55, '', 0, 0, '', 1482993187);
INSERT INTO `ask_doing` VALUES (334, 3, 'mayun', 4, 55, '', 0, 0, '', 1482993187);
INSERT INTO `ask_doing` VALUES (335, 1, 'rzld100', 4, 55, '', 0, 0, '', 1482993187);
INSERT INTO `ask_doing` VALUES (336, 1, 'rzld100', 1, 55, '', 0, 0, '', 1482993187);
INSERT INTO `ask_doing` VALUES (337, 1, 'rzld100', 8, 55, '大神......', 183, 3, '&lt;/beans&gt;', 1482993187);
INSERT INTO `ask_doing` VALUES (338, 3, 'mayun', 4, 56, '', 0, 0, '', 1482993189);
INSERT INTO `ask_doing` VALUES (339, 5, '', 4, 56, '', 0, 0, '', 1482993189);
INSERT INTO `ask_doing` VALUES (340, 4, '梦与毁毁于梦', 4, 56, '', 0, 0, '', 1482993189);
INSERT INTO `ask_doing` VALUES (341, 3, 'mayun', 4, 56, '', 0, 0, '', 1482993189);
INSERT INTO `ask_doing` VALUES (342, 4, '梦与毁毁于梦', 1, 56, '', 0, 0, '', 1482993189);
INSERT INTO `ask_doing` VALUES (343, 4, '梦与毁毁于梦', 8, 56, '你真的帮了我大忙', 188, 2, '下面是正确的计算方式，你看下：', 1482993189);
INSERT INTO `ask_doing` VALUES (344, 3, 'mayun', 4, 57, '', 0, 0, '', 1482993191);
INSERT INTO `ask_doing` VALUES (345, 4, '梦与毁毁于梦', 4, 57, '', 0, 0, '', 1482993191);
INSERT INTO `ask_doing` VALUES (346, 3, 'mayun', 4, 57, '', 0, 0, '', 1482993191);
INSERT INTO `ask_doing` VALUES (347, 3, 'mayun', 1, 57, '', 0, 0, '', 1482993191);
INSERT INTO `ask_doing` VALUES (348, 2, 'admin', 4, 58, '', 0, 0, '', 1482993192);
INSERT INTO `ask_doing` VALUES (349, 4, '梦与毁毁于梦', 4, 58, '', 0, 0, '', 1482993192);
INSERT INTO `ask_doing` VALUES (350, 1, 'rzld100', 4, 58, '', 0, 0, '', 1482993192);
INSERT INTO `ask_doing` VALUES (351, 5, '', 1, 58, '', 0, 0, '', 1482993192);
INSERT INTO `ask_doing` VALUES (352, 5, '', 8, 58, '大神......', 191, 5, '观察下来，连续播放不同文件，在达到一个峰值之后不会继续往上升。', 1482993192);
INSERT INTO `ask_doing` VALUES (353, 1, 'rzld100', 4, 59, '', 0, 0, '', 1482993193);
INSERT INTO `ask_doing` VALUES (354, 2, 'admin', 4, 59, '', 0, 0, '', 1482993193);
INSERT INTO `ask_doing` VALUES (355, 4, '梦与毁毁于梦', 4, 59, '', 0, 0, '', 1482993193);
INSERT INTO `ask_doing` VALUES (356, 3, 'mayun', 4, 59, '', 0, 0, '', 1482993193);
INSERT INTO `ask_doing` VALUES (357, 1, 'rzld100', 4, 59, '', 0, 0, '', 1482993193);
INSERT INTO `ask_doing` VALUES (358, 2, 'admin', 1, 59, '', 0, 0, '', 1482993193);
INSERT INTO `ask_doing` VALUES (359, 4, '梦与毁毁于梦', 4, 60, '', 0, 0, '', 1482993197);
INSERT INTO `ask_doing` VALUES (360, 5, '', 4, 60, '', 0, 0, '', 1482993197);
INSERT INTO `ask_doing` VALUES (361, 2, 'admin', 4, 60, '', 0, 0, '', 1482993197);
INSERT INTO `ask_doing` VALUES (362, 4, '梦与毁毁于梦', 1, 60, '', 0, 0, '', 1482993197);
INSERT INTO `ask_doing` VALUES (363, 4, '梦与毁毁于梦', 4, 61, '', 0, 0, '', 1482993200);
INSERT INTO `ask_doing` VALUES (364, 1, 'rzld100', 4, 61, '', 0, 0, '', 1482993200);
INSERT INTO `ask_doing` VALUES (365, 4, '梦与毁毁于梦', 1, 61, '', 0, 0, '', 1482993200);
INSERT INTO `ask_doing` VALUES (366, 5, '', 4, 0, '', 0, 0, '', 1482993201);
INSERT INTO `ask_doing` VALUES (367, 1, 'rzld100', 4, 0, '', 0, 0, '', 1482993201);
INSERT INTO `ask_doing` VALUES (368, 3, 'mayun', 1, 0, '', 0, 0, '', 1482993201);
INSERT INTO `ask_doing` VALUES (369, 2, 'admin', 4, 62, '', 0, 0, '', 1482993202);
INSERT INTO `ask_doing` VALUES (370, 1, 'rzld100', 4, 62, '', 0, 0, '', 1482993202);
INSERT INTO `ask_doing` VALUES (371, 4, '梦与毁毁于梦', 4, 62, '', 0, 0, '', 1482993202);
INSERT INTO `ask_doing` VALUES (372, 3, 'mayun', 4, 62, '', 0, 0, '', 1482993202);
INSERT INTO `ask_doing` VALUES (373, 3, 'mayun', 1, 62, '', 0, 0, '', 1482993202);
INSERT INTO `ask_doing` VALUES (374, 3, 'mayun', 8, 62, '你真的帮了我大忙', 202, 5, '不应该是这样么self.btn.selected = !self.btn.selected;', 1482993202);
INSERT INTO `ask_doing` VALUES (375, 4, '梦与毁毁于梦', 4, 0, '', 0, 0, '', 1482993203);
INSERT INTO `ask_doing` VALUES (376, 3, 'mayun', 4, 0, '', 0, 0, '', 1482993203);
INSERT INTO `ask_doing` VALUES (377, 2, 'admin', 4, 0, '', 0, 0, '', 1482993203);
INSERT INTO `ask_doing` VALUES (378, 4, '梦与毁毁于梦', 1, 0, '', 0, 0, '', 1482993203);
INSERT INTO `ask_doing` VALUES (379, 1, 'rzld100', 4, 63, '', 0, 0, '', 1482993205);
INSERT INTO `ask_doing` VALUES (380, 4, '梦与毁毁于梦', 4, 63, '', 0, 0, '', 1482993205);
INSERT INTO `ask_doing` VALUES (381, 3, 'mayun', 4, 63, '', 0, 0, '', 1482993205);
INSERT INTO `ask_doing` VALUES (382, 1, 'rzld100', 1, 63, '', 0, 0, '', 1482993205);
INSERT INTO `ask_doing` VALUES (383, 1, 'rzld100', 8, 63, '真给力', 214, 1, '网络问题，你需要科学上网。', 1482993205);
INSERT INTO `ask_doing` VALUES (384, 5, '', 4, 64, '', 0, 0, '', 1482993206);
INSERT INTO `ask_doing` VALUES (385, 3, 'mayun', 4, 64, '', 0, 0, '', 1482993206);
INSERT INTO `ask_doing` VALUES (386, 1, 'rzld100', 4, 64, '', 0, 0, '', 1482993206);
INSERT INTO `ask_doing` VALUES (387, 4, '梦与毁毁于梦', 4, 64, '', 0, 0, '', 1482993206);
INSERT INTO `ask_doing` VALUES (388, 3, 'mayun', 1, 64, '', 0, 0, '', 1482993206);
INSERT INTO `ask_doing` VALUES (389, 3, 'mayun', 4, 65, '', 0, 0, '', 1482993207);
INSERT INTO `ask_doing` VALUES (390, 4, '梦与毁毁于梦', 4, 65, '', 0, 0, '', 1482993207);
INSERT INTO `ask_doing` VALUES (391, 1, 'rzld100', 4, 65, '', 0, 0, '', 1482993207);
INSERT INTO `ask_doing` VALUES (392, 2, 'admin', 4, 65, '', 0, 0, '', 1482993207);
INSERT INTO `ask_doing` VALUES (393, 1, 'rzld100', 4, 65, '', 0, 0, '', 1482993207);
INSERT INTO `ask_doing` VALUES (394, 5, '', 1, 65, '', 0, 0, '', 1482993207);
INSERT INTO `ask_doing` VALUES (395, 4, '梦与毁毁于梦', 4, 66, '', 0, 0, '', 1482993208);
INSERT INTO `ask_doing` VALUES (396, 1, 'rzld100', 4, 66, '', 0, 0, '', 1482993208);
INSERT INTO `ask_doing` VALUES (397, 5, '', 4, 66, '', 0, 0, '', 1482993208);
INSERT INTO `ask_doing` VALUES (398, 2, 'admin', 4, 66, '', 0, 0, '', 1482993208);
INSERT INTO `ask_doing` VALUES (399, 5, '', 1, 66, '', 0, 0, '', 1482993208);
INSERT INTO `ask_doing` VALUES (400, 5, '', 8, 66, '高手留个联系方式吧', 225, 1, 'win 上面用 rubymine 非常麻烦  不建议用win  可以用linux 或者mac  我自己也是用win  喜欢rubymine  用rubymine 安装gems 有什么经常失败  通常是这个问题解决了 ，另外一个问题又出来了 这样时间都浪费在', 1482993208);
INSERT INTO `ask_doing` VALUES (401, 5, '', 4, 0, '', 0, 0, '', 1482993219);
INSERT INTO `ask_doing` VALUES (402, 4, '梦与毁毁于梦', 4, 0, '', 0, 0, '', 1482993219);
INSERT INTO `ask_doing` VALUES (403, 3, 'mayun', 1, 0, '', 0, 0, '', 1482993219);
INSERT INTO `ask_doing` VALUES (404, 3, 'mayun', 8, 0, '大神......', 227, 1, '这是时候不是应该用 broadcast 和 emit 吗', 1482993219);
INSERT INTO `ask_doing` VALUES (405, 4, '梦与毁毁于梦', 4, 0, '', 0, 0, '', 1482993228);
INSERT INTO `ask_doing` VALUES (406, 3, 'mayun', 4, 0, '', 0, 0, '', 1482993228);
INSERT INTO `ask_doing` VALUES (407, 3, 'mayun', 1, 0, '', 0, 0, '', 1482993228);
INSERT INTO `ask_doing` VALUES (408, 3, 'mayun', 8, 0, '非常感谢你', 231, 1, '数量：(S+)', 1482993228);
INSERT INTO `ask_doing` VALUES (409, 1, 'rzld100', 4, 0, '', 0, 0, '', 1482993229);
INSERT INTO `ask_doing` VALUES (410, 4, '梦与毁毁于梦', 4, 0, '', 0, 0, '', 1482993229);
INSERT INTO `ask_doing` VALUES (411, 1, 'rzld100', 4, 0, '', 0, 0, '', 1482993229);
INSERT INTO `ask_doing` VALUES (412, 3, 'mayun', 1, 0, '', 0, 0, '', 1482993229);
INSERT INTO `ask_doing` VALUES (413, 3, 'mayun', 8, 0, '你真是个大好人', 236, 4, '可以看下jq的文档', 1482993229);
INSERT INTO `ask_doing` VALUES (414, 2, 'admin', 4, 0, '', 0, 0, '', 1482993238);
INSERT INTO `ask_doing` VALUES (415, 5, '', 4, 0, '', 0, 0, '', 1482993238);
INSERT INTO `ask_doing` VALUES (416, 5, '', 4, 0, '', 0, 0, '', 1482993238);
INSERT INTO `ask_doing` VALUES (417, 5, '', 1, 0, '', 0, 0, '', 1482993238);
INSERT INTO `ask_doing` VALUES (418, 5, '', 8, 0, '你真是个大好人', 238, 1, '自己回到吧；方法一：在配置中 config取消单张图片上传，使用多张图片上传代替；方法二：修改ueditor.all.js中简单上传函数在图片上传完成后修改loading图的src属性，展示真实图片后，在末尾插', 1482993238);
INSERT INTO `ask_doing` VALUES (419, 1, 'rzld100', 4, 0, '', 0, 0, '', 1482993256);
INSERT INTO `ask_doing` VALUES (420, 3, 'mayun', 4, 0, '', 0, 0, '', 1482993256);
INSERT INTO `ask_doing` VALUES (421, 5, '', 1, 0, '', 0, 0, '', 1482993256);
INSERT INTO `ask_doing` VALUES (422, 1, 'rzld100', 4, 67, '', 0, 0, '', 1482993258);
INSERT INTO `ask_doing` VALUES (423, 3, 'mayun', 4, 67, '', 0, 0, '', 1482993258);
INSERT INTO `ask_doing` VALUES (424, 5, '', 4, 67, '', 0, 0, '', 1482993258);
INSERT INTO `ask_doing` VALUES (425, 2, 'admin', 4, 67, '', 0, 0, '', 1482993258);
INSERT INTO `ask_doing` VALUES (426, 5, '', 1, 67, '', 0, 0, '', 1482993258);
INSERT INTO `ask_doing` VALUES (427, 3, 'mayun', 4, 0, '', 0, 0, '', 1482993263);
INSERT INTO `ask_doing` VALUES (428, 5, '', 1, 0, '', 0, 0, '', 1482993263);
INSERT INTO `ask_doing` VALUES (429, 5, '', 8, 0, '高手留个联系方式吧', 244, 3, '你那table都设height了', 1482993263);
INSERT INTO `ask_doing` VALUES (430, 5, '', 4, 68, '', 0, 0, '', 1482993267);
INSERT INTO `ask_doing` VALUES (431, 3, 'mayun', 4, 68, '', 0, 0, '', 1482993267);
INSERT INTO `ask_doing` VALUES (432, 1, 'rzld100', 4, 68, '', 0, 0, '', 1482993267);
INSERT INTO `ask_doing` VALUES (433, 2, 'admin', 4, 68, '', 0, 0, '', 1482993267);
INSERT INTO `ask_doing` VALUES (434, 3, 'mayun', 1, 68, '', 0, 0, '', 1482993267);
INSERT INTO `ask_doing` VALUES (435, 2, 'admin', 4, 0, '', 0, 0, '', 1482993268);
INSERT INTO `ask_doing` VALUES (436, 3, 'mayun', 4, 0, '', 0, 0, '', 1482993268);
INSERT INTO `ask_doing` VALUES (437, 1, 'rzld100', 1, 0, '', 0, 0, '', 1482993268);
INSERT INTO `ask_doing` VALUES (438, 1, 'rzld100', 8, 0, '谢谢你', 251, 4, 'That suggests that the HTTP request was successful but the attempt to parse the data was not.', 1482993268);
INSERT INTO `ask_doing` VALUES (439, 5, '', 4, 0, '', 0, 0, '', 1482993272);
INSERT INTO `ask_doing` VALUES (440, 2, 'admin', 4, 0, '', 0, 0, '', 1482993272);
INSERT INTO `ask_doing` VALUES (441, 3, 'mayun', 4, 0, '', 0, 0, '', 1482993272);
INSERT INTO `ask_doing` VALUES (442, 3, 'mayun', 1, 0, '', 0, 0, '', 1482993272);
INSERT INTO `ask_doing` VALUES (443, 4, '梦与毁毁于梦', 4, 0, '', 0, 0, '', 1482993279);
INSERT INTO `ask_doing` VALUES (444, 4, '梦与毁毁于梦', 4, 0, '', 0, 0, '', 1482993279);
INSERT INTO `ask_doing` VALUES (445, 2, 'admin', 1, 0, '', 0, 0, '', 1482993279);
INSERT INTO `ask_doing` VALUES (446, 3, 'mayun', 4, 0, '', 0, 0, '', 1482993288);
INSERT INTO `ask_doing` VALUES (447, 1, 'rzld100', 4, 0, '', 0, 0, '', 1482993288);
INSERT INTO `ask_doing` VALUES (448, 2, 'admin', 4, 0, '', 0, 0, '', 1482993288);
INSERT INTO `ask_doing` VALUES (449, 5, '', 4, 0, '', 0, 0, '', 1482993288);
INSERT INTO `ask_doing` VALUES (450, 3, 'mayun', 1, 0, '', 0, 0, '', 1482993288);
INSERT INTO `ask_doing` VALUES (451, 3, 'mayun', 8, 0, '你真的帮了我大忙', 253, 4, '好像jquery 从 1.8.3 到 1.9.0 的after方法有变化。', 1482993288);
INSERT INTO `ask_doing` VALUES (452, 4, '梦与毁毁于梦', 4, 0, '', 0, 0, '', 1482993290);
INSERT INTO `ask_doing` VALUES (453, 1, 'rzld100', 4, 0, '', 0, 0, '', 1482993290);
INSERT INTO `ask_doing` VALUES (454, 1, 'rzld100', 1, 0, '', 0, 0, '', 1482993290);
INSERT INTO `ask_doing` VALUES (455, 3, 'mayun', 4, 0, '', 0, 0, '', 1482993300);
INSERT INTO `ask_doing` VALUES (456, 5, '', 4, 0, '', 0, 0, '', 1482993300);
INSERT INTO `ask_doing` VALUES (457, 4, '梦与毁毁于梦', 1, 0, '', 0, 0, '', 1482993300);
INSERT INTO `ask_doing` VALUES (458, 4, '梦与毁毁于梦', 8, 0, '你真是个大好人', 254, 5, '因为需要对比的 不只有一个版本， version_compare 只是比较你此次需要比较的版本', 1482993300);
INSERT INTO `ask_doing` VALUES (459, 3, 'mayun', 4, 0, '', 0, 0, '', 1482993307);
INSERT INTO `ask_doing` VALUES (460, 4, '梦与毁毁于梦', 4, 0, '', 0, 0, '', 1482993307);
INSERT INTO `ask_doing` VALUES (461, 2, 'admin', 4, 0, '', 0, 0, '', 1482993307);
INSERT INTO `ask_doing` VALUES (462, 2, 'admin', 1, 0, '', 0, 0, '', 1482993307);
INSERT INTO `ask_doing` VALUES (463, 2, 'admin', 4, 69, '', 0, 0, '', 1482995133);
INSERT INTO `ask_doing` VALUES (464, 1, 'rzld100', 4, 69, '', 0, 0, '', 1482995133);
INSERT INTO `ask_doing` VALUES (465, 4, '梦与毁毁于梦', 4, 69, '', 0, 0, '', 1482995133);
INSERT INTO `ask_doing` VALUES (466, 5, '', 4, 69, '', 0, 0, '', 1482995133);
INSERT INTO `ask_doing` VALUES (467, 3, 'mayun', 1, 69, '', 0, 0, '', 1482995133);
INSERT INTO `ask_doing` VALUES (468, 2, 'admin', 4, 70, '', 0, 0, '', 1482995170);
INSERT INTO `ask_doing` VALUES (469, 1, 'rzld100', 4, 70, '', 0, 0, '', 1482995170);
INSERT INTO `ask_doing` VALUES (470, 4, '梦与毁毁于梦', 4, 70, '', 0, 0, '', 1482995170);
INSERT INTO `ask_doing` VALUES (471, 1, 'rzld100', 4, 70, '', 0, 0, '', 1482995170);
INSERT INTO `ask_doing` VALUES (472, 3, 'mayun', 1, 70, '', 0, 0, '', 1482995170);
INSERT INTO `ask_doing` VALUES (473, 5, '', 4, 71, '', 0, 0, '', 1482995172);
INSERT INTO `ask_doing` VALUES (474, 2, 'admin', 4, 71, '', 0, 0, '', 1482995172);
INSERT INTO `ask_doing` VALUES (475, 3, 'mayun', 4, 71, '', 0, 0, '', 1482995172);
INSERT INTO `ask_doing` VALUES (476, 4, '梦与毁毁于梦', 4, 71, '', 0, 0, '', 1482995172);
INSERT INTO `ask_doing` VALUES (477, 2, 'admin', 1, 71, '', 0, 0, '', 1482995172);
INSERT INTO `ask_doing` VALUES (478, 2, 'admin', 4, 72, '', 0, 0, '', 1482995173);
INSERT INTO `ask_doing` VALUES (479, 4, '梦与毁毁于梦', 4, 72, '', 0, 0, '', 1482995173);
INSERT INTO `ask_doing` VALUES (480, 5, '', 4, 72, '', 0, 0, '', 1482995173);
INSERT INTO `ask_doing` VALUES (481, 2, 'admin', 1, 72, '', 0, 0, '', 1482995173);
INSERT INTO `ask_doing` VALUES (482, 2, 'admin', 4, 0, '', 0, 0, '', 1482995547);
INSERT INTO `ask_doing` VALUES (483, 4, '梦与毁毁于梦', 4, 0, '', 0, 0, '', 1482995547);
INSERT INTO `ask_doing` VALUES (484, 1, 'rzld100', 4, 0, '', 0, 0, '', 1482995547);
INSERT INTO `ask_doing` VALUES (485, 2, 'admin', 1, 0, '', 0, 0, '', 1482995547);
INSERT INTO `ask_doing` VALUES (486, 2, 'admin', 8, 0, '非常感谢你', 255, 4, '结贴！！！', 1482995547);
INSERT INTO `ask_doing` VALUES (487, 3, 'mayun', 4, 0, '', 0, 0, '', 1482995604);
INSERT INTO `ask_doing` VALUES (488, 2, 'admin', 4, 0, '', 0, 0, '', 1482995604);
INSERT INTO `ask_doing` VALUES (489, 5, '', 1, 0, '', 0, 0, '', 1482995604);
INSERT INTO `ask_doing` VALUES (490, 4, '梦与毁毁于梦', 4, 73, '', 0, 0, '', 1482995605);
INSERT INTO `ask_doing` VALUES (491, 5, '', 4, 73, '', 0, 0, '', 1482995605);
INSERT INTO `ask_doing` VALUES (492, 4, '梦与毁毁于梦', 4, 73, '', 0, 0, '', 1482995605);
INSERT INTO `ask_doing` VALUES (493, 5, '', 1, 73, '', 0, 0, '', 1482995605);
INSERT INTO `ask_doing` VALUES (494, 5, '', 8, 73, '高手留个联系方式吧', 261, 4, '({data,handleChange}) --&gt; (data,handleChange)', 1482995605);
INSERT INTO `ask_doing` VALUES (495, 2, 'admin', 4, 0, '', 0, 0, '', 1482996288);
INSERT INTO `ask_doing` VALUES (496, 4, '梦与毁毁于梦', 4, 0, '', 0, 0, '', 1482996288);
INSERT INTO `ask_doing` VALUES (497, 1, 'rzld100', 1, 0, '', 0, 0, '', 1482996288);
INSERT INTO `ask_doing` VALUES (498, 3, 'mayun', 4, 0, '', 0, 0, '', 1482996306);
INSERT INTO `ask_doing` VALUES (499, 2, 'admin', 4, 0, '', 0, 0, '', 1482996306);
INSERT INTO `ask_doing` VALUES (500, 1, 'rzld100', 4, 0, '', 0, 0, '', 1482996306);
INSERT INTO `ask_doing` VALUES (501, 4, '梦与毁毁于梦', 1, 0, '', 0, 0, '', 1482996306);
INSERT INTO `ask_doing` VALUES (502, 4, '梦与毁毁于梦', 8, 0, '真给力', 273, 3, '没有name这个字段，当然显示不出来。你直接打印var_dump($row)看看就知道了', 1482996306);
INSERT INTO `ask_doing` VALUES (503, 4, '梦与毁毁于梦', 4, 0, '', 0, 0, '', 1482996389);
INSERT INTO `ask_doing` VALUES (504, 2, 'admin', 4, 0, '', 0, 0, '', 1482996389);
INSERT INTO `ask_doing` VALUES (505, 1, 'rzld100', 1, 0, '', 0, 0, '', 1482996389);
INSERT INTO `ask_doing` VALUES (506, 1, 'rzld100', 8, 0, '谢谢你', 274, 1, 'sql表中没有这个name字段', 1482996389);
INSERT INTO `ask_doing` VALUES (507, 1, 'rzld100', 4, 74, '', 0, 0, '', 1482996390);
INSERT INTO `ask_doing` VALUES (508, 4, '梦与毁毁于梦', 4, 74, '', 0, 0, '', 1482996390);
INSERT INTO `ask_doing` VALUES (509, 2, 'admin', 4, 74, '', 0, 0, '', 1482996390);
INSERT INTO `ask_doing` VALUES (510, 1, 'rzld100', 4, 74, '', 0, 0, '', 1482996390);
INSERT INTO `ask_doing` VALUES (511, 2, 'admin', 1, 74, '', 0, 0, '', 1482996390);
INSERT INTO `ask_doing` VALUES (512, 2, 'admin', 4, 75, '', 0, 0, '', 1482996711);
INSERT INTO `ask_doing` VALUES (513, 1, 'rzld100', 4, 75, '', 0, 0, '', 1482996711);
INSERT INTO `ask_doing` VALUES (514, 4, '梦与毁毁于梦', 4, 75, '', 0, 0, '', 1482996711);
INSERT INTO `ask_doing` VALUES (515, 3, 'mayun', 4, 75, '', 0, 0, '', 1482996711);
INSERT INTO `ask_doing` VALUES (516, 1, 'rzld100', 1, 75, '', 0, 0, '', 1482996711);
INSERT INTO `ask_doing` VALUES (517, 2, 'admin', 4, 76, '', 0, 0, '', 1482996712);
INSERT INTO `ask_doing` VALUES (518, 5, '', 4, 76, '', 0, 0, '', 1482996712);
INSERT INTO `ask_doing` VALUES (519, 1, 'rzld100', 4, 76, '', 0, 0, '', 1482996712);
INSERT INTO `ask_doing` VALUES (520, 3, 'mayun', 4, 76, '', 0, 0, '', 1482996712);
INSERT INTO `ask_doing` VALUES (521, 4, '梦与毁毁于梦', 1, 76, '', 0, 0, '', 1482996712);
INSERT INTO `ask_doing` VALUES (522, 5, '', 4, 77, '', 0, 0, '', 1482996715);
INSERT INTO `ask_doing` VALUES (523, 2, 'admin', 4, 77, '', 0, 0, '', 1482996715);
INSERT INTO `ask_doing` VALUES (524, 3, 'mayun', 4, 77, '', 0, 0, '', 1482996715);
INSERT INTO `ask_doing` VALUES (525, 4, '梦与毁毁于梦', 4, 77, '', 0, 0, '', 1482996715);
INSERT INTO `ask_doing` VALUES (526, 1, 'rzld100', 1, 77, '', 0, 0, '', 1482996715);
INSERT INTO `ask_doing` VALUES (527, 4, '梦与毁毁于梦', 4, 78, '', 0, 0, '', 1482996717);
INSERT INTO `ask_doing` VALUES (528, 5, '', 4, 78, '', 0, 0, '', 1482996717);
INSERT INTO `ask_doing` VALUES (529, 2, 'admin', 4, 78, '', 0, 0, '', 1482996717);
INSERT INTO `ask_doing` VALUES (530, 1, 'rzld100', 1, 78, '', 0, 0, '', 1482996717);
INSERT INTO `ask_doing` VALUES (531, 5, '', 4, 79, '', 0, 0, '', 1482996718);
INSERT INTO `ask_doing` VALUES (532, 1, 'rzld100', 4, 79, '', 0, 0, '', 1482996718);
INSERT INTO `ask_doing` VALUES (533, 2, 'admin', 4, 79, '', 0, 0, '', 1482996718);
INSERT INTO `ask_doing` VALUES (534, 5, '', 1, 79, '', 0, 0, '', 1482996718);
INSERT INTO `ask_doing` VALUES (535, 1, 'rzld100', 4, 80, '', 0, 0, '', 1482996721);
INSERT INTO `ask_doing` VALUES (536, 5, '', 4, 80, '', 0, 0, '', 1482996721);
INSERT INTO `ask_doing` VALUES (537, 3, 'mayun', 4, 80, '', 0, 0, '', 1482996721);
INSERT INTO `ask_doing` VALUES (538, 5, '', 1, 80, '', 0, 0, '', 1482996721);
INSERT INTO `ask_doing` VALUES (539, 1, 'rzld100', 4, 81, '', 0, 0, '', 1482996726);
INSERT INTO `ask_doing` VALUES (540, 2, 'admin', 4, 81, '', 0, 0, '', 1482996726);
INSERT INTO `ask_doing` VALUES (541, 5, '', 4, 81, '', 0, 0, '', 1482996726);
INSERT INTO `ask_doing` VALUES (542, 1, 'rzld100', 1, 81, '', 0, 0, '', 1482996726);
INSERT INTO `ask_doing` VALUES (543, 5, '', 4, 82, '', 0, 0, '', 1482996730);
INSERT INTO `ask_doing` VALUES (544, 1, 'rzld100', 4, 82, '', 0, 0, '', 1482996730);
INSERT INTO `ask_doing` VALUES (545, 3, 'mayun', 4, 82, '', 0, 0, '', 1482996730);
INSERT INTO `ask_doing` VALUES (546, 3, 'mayun', 1, 82, '', 0, 0, '', 1482996730);
INSERT INTO `ask_doing` VALUES (547, 5, '', 4, 83, '', 0, 0, '', 1482996736);
INSERT INTO `ask_doing` VALUES (548, 2, 'admin', 4, 83, '', 0, 0, '', 1482996736);
INSERT INTO `ask_doing` VALUES (549, 3, 'mayun', 4, 83, '', 0, 0, '', 1482996736);
INSERT INTO `ask_doing` VALUES (550, 4, '梦与毁毁于梦', 1, 83, '', 0, 0, '', 1482996736);
INSERT INTO `ask_doing` VALUES (551, 3, 'mayun', 4, 84, '', 0, 0, '', 1482996737);
INSERT INTO `ask_doing` VALUES (552, 1, 'rzld100', 4, 84, '', 0, 0, '', 1482996737);
INSERT INTO `ask_doing` VALUES (553, 3, 'mayun', 4, 84, '', 0, 0, '', 1482996737);
INSERT INTO `ask_doing` VALUES (554, 5, '', 4, 84, '', 0, 0, '', 1482996737);
INSERT INTO `ask_doing` VALUES (555, 2, 'admin', 1, 84, '', 0, 0, '', 1482996737);
INSERT INTO `ask_doing` VALUES (556, 4, '梦与毁毁于梦', 4, 85, '', 0, 0, '', 1482996746);
INSERT INTO `ask_doing` VALUES (557, 3, 'mayun', 4, 85, '', 0, 0, '', 1482996746);
INSERT INTO `ask_doing` VALUES (558, 1, 'rzld100', 4, 85, '', 0, 0, '', 1482996746);
INSERT INTO `ask_doing` VALUES (559, 1, 'rzld100', 1, 85, '', 0, 0, '', 1482996746);
INSERT INTO `ask_doing` VALUES (560, 4, '梦与毁毁于梦', 4, 86, '', 0, 0, '', 1482996756);
INSERT INTO `ask_doing` VALUES (561, 1, 'rzld100', 4, 86, '', 0, 0, '', 1482996756);
INSERT INTO `ask_doing` VALUES (562, 2, 'admin', 1, 86, '', 0, 0, '', 1482996756);
INSERT INTO `ask_doing` VALUES (563, 3, 'mayun', 4, 87, '', 0, 0, '', 1482996757);
INSERT INTO `ask_doing` VALUES (564, 1, 'rzld100', 4, 87, '', 0, 0, '', 1482996757);
INSERT INTO `ask_doing` VALUES (565, 1, 'rzld100', 4, 87, '', 0, 0, '', 1482996757);
INSERT INTO `ask_doing` VALUES (566, 1, 'rzld100', 1, 87, '', 0, 0, '', 1482996757);
INSERT INTO `ask_doing` VALUES (567, 4, '梦与毁毁于梦', 4, 88, '', 0, 0, '', 1482996760);
INSERT INTO `ask_doing` VALUES (568, 4, '梦与毁毁于梦', 4, 88, '', 0, 0, '', 1482996760);
INSERT INTO `ask_doing` VALUES (569, 2, 'admin', 1, 88, '', 0, 0, '', 1482996760);
INSERT INTO `ask_doing` VALUES (570, 3, 'mayun', 4, 89, '', 0, 0, '', 1482996761);
INSERT INTO `ask_doing` VALUES (571, 2, 'admin', 4, 89, '', 0, 0, '', 1482996761);
INSERT INTO `ask_doing` VALUES (572, 1, 'rzld100', 4, 89, '', 0, 0, '', 1482996761);
INSERT INTO `ask_doing` VALUES (573, 4, '梦与毁毁于梦', 1, 89, '', 0, 0, '', 1482996761);
INSERT INTO `ask_doing` VALUES (574, 1, 'rzld100', 4, 90, '', 0, 0, '', 1482996919);
INSERT INTO `ask_doing` VALUES (575, 3, 'mayun', 4, 90, '', 0, 0, '', 1482996919);
INSERT INTO `ask_doing` VALUES (576, 2, 'admin', 4, 90, '', 0, 0, '', 1482996919);
INSERT INTO `ask_doing` VALUES (577, 4, '梦与毁毁于梦', 4, 90, '', 0, 0, '', 1482996919);
INSERT INTO `ask_doing` VALUES (578, 4, '梦与毁毁于梦', 1, 90, '', 0, 0, '', 1482996919);
INSERT INTO `ask_doing` VALUES (579, 3, 'mayun', 4, 91, '', 0, 0, '', 1482997264);
INSERT INTO `ask_doing` VALUES (580, 5, '', 4, 91, '', 0, 0, '', 1482997264);
INSERT INTO `ask_doing` VALUES (581, 4, '梦与毁毁于梦', 4, 91, '', 0, 0, '', 1482997264);
INSERT INTO `ask_doing` VALUES (582, 2, 'admin', 4, 91, '', 0, 0, '', 1482997264);
INSERT INTO `ask_doing` VALUES (583, 1, 'rzld100', 1, 91, '', 0, 0, '', 1482997264);
INSERT INTO `ask_doing` VALUES (584, 1, 'rzld100', 8, 91, '高手留个联系方式吧', 277, 6, '让服务器一直开着呗！', 1482997264);
INSERT INTO `ask_doing` VALUES (585, 2, 'admin', 4, 92, '', 0, 0, '', 1482997335);
INSERT INTO `ask_doing` VALUES (586, 3, 'mayun', 4, 92, '', 0, 0, '', 1482997335);
INSERT INTO `ask_doing` VALUES (587, 6, '海蓝水晶', 4, 92, '', 0, 0, '', 1482997335);
INSERT INTO `ask_doing` VALUES (588, 3, 'mayun', 1, 92, '', 0, 0, '', 1482997335);
INSERT INTO `ask_doing` VALUES (589, 1, 'rzld100', 4, 93, '', 0, 0, '', 1482997462);
INSERT INTO `ask_doing` VALUES (590, 8, '.旧巷.', 4, 93, '', 0, 0, '', 1482997462);
INSERT INTO `ask_doing` VALUES (591, 3, 'mayun', 4, 93, '', 0, 0, '', 1482997462);
INSERT INTO `ask_doing` VALUES (592, 5, '', 4, 93, '', 0, 0, '', 1482997462);
INSERT INTO `ask_doing` VALUES (593, 5, '', 1, 93, '', 0, 0, '', 1482997462);
INSERT INTO `ask_doing` VALUES (594, 5, '', 8, 93, '你真是个大好人', 280, 9, '$(&quot;#btn3&quot;).toggle(function(){$(&quot;#div2&quot;).animate({left:0},300);},function(){$(&quot;#div2&quot;).animate({left:-260},300);});toggle(fn,...$（“#&nbsp;BTN3”）。切换（function()&nbsp;{&nbsp;$（“#&nbsp;DIV2”）。动画（{', 1482997462);
INSERT INTO `ask_doing` VALUES (595, 9, 'rqwg_2106', 4, 94, '', 0, 0, '', 1482997464);
INSERT INTO `ask_doing` VALUES (596, 4, '梦与毁毁于梦', 4, 94, '', 0, 0, '', 1482997464);
INSERT INTO `ask_doing` VALUES (597, 2, 'admin', 4, 94, '', 0, 0, '', 1482997464);
INSERT INTO `ask_doing` VALUES (598, 6, '海蓝水晶', 4, 94, '', 0, 0, '', 1482997464);
INSERT INTO `ask_doing` VALUES (599, 5, '', 4, 94, '', 0, 0, '', 1482997464);
INSERT INTO `ask_doing` VALUES (600, 8, '.旧巷.', 1, 94, '', 0, 0, '', 1482997464);
INSERT INTO `ask_doing` VALUES (601, 8, '.旧巷.', 8, 94, '你真是个大好人', 281, 10, 'this是指向本类的对象，你所说的对象A是一个类B中的属性，而类B对本身的引用是this，这样调用this.A就是B类中的A属性，所以这个this是相对包含该对象的类而言的。比如String s = &quot;abc&quot;;你说', 1482997464);
INSERT INTO `ask_doing` VALUES (602, 2, 'admin', 4, 0, '', 0, 0, '', 1482997465);
INSERT INTO `ask_doing` VALUES (603, 3, 'mayun', 4, 0, '', 0, 0, '', 1482997465);
INSERT INTO `ask_doing` VALUES (604, 9, 'rqwg_2106', 4, 0, '', 0, 0, '', 1482997465);
INSERT INTO `ask_doing` VALUES (605, 4, '梦与毁毁于梦', 1, 0, '', 0, 0, '', 1482997465);
INSERT INTO `ask_doing` VALUES (606, 4, '梦与毁毁于梦', 8, 0, '谢谢你', 11, 11, '就喜欢这样的问题, ', 1482997465);
INSERT INTO `ask_doing` VALUES (607, 10, '殇丶善若水', 4, 95, '', 0, 0, '', 1482997467);
INSERT INTO `ask_doing` VALUES (608, 11, 'o0O小角色o0O', 4, 95, '', 0, 0, '', 1482997467);
INSERT INTO `ask_doing` VALUES (609, 12, '破马张飞奔你家', 4, 95, '', 0, 0, '', 1482997467);
INSERT INTO `ask_doing` VALUES (610, 7, '匿名网友', 4, 95, '', 0, 0, '', 1482997467);
INSERT INTO `ask_doing` VALUES (611, 5, '', 4, 95, '', 0, 0, '', 1482997467);
INSERT INTO `ask_doing` VALUES (612, 3, 'mayun', 1, 95, '', 0, 0, '', 1482997467);
INSERT INTO `ask_doing` VALUES (613, 5, '', 4, 96, '', 0, 0, '', 1482997468);
INSERT INTO `ask_doing` VALUES (614, 11, 'o0O小角色o0O', 4, 96, '', 0, 0, '', 1482997468);
INSERT INTO `ask_doing` VALUES (615, 4, '梦与毁毁于梦', 4, 96, '', 0, 0, '', 1482997468);
INSERT INTO `ask_doing` VALUES (616, 6, '海蓝水晶', 4, 96, '', 0, 0, '', 1482997468);
INSERT INTO `ask_doing` VALUES (617, 8, '.旧巷.', 1, 96, '', 0, 0, '', 1482997468);
INSERT INTO `ask_doing` VALUES (618, 12, '破马张飞奔你家', 4, 0, '', 0, 0, '', 1482997470);
INSERT INTO `ask_doing` VALUES (619, 13, '土城城', 4, 0, '', 0, 0, '', 1482997470);
INSERT INTO `ask_doing` VALUES (620, 15, '东方大表哥科技', 4, 0, '', 0, 0, '', 1482997470);
INSERT INTO `ask_doing` VALUES (621, 13, '土城城', 1, 0, '', 0, 0, '', 1482997470);
INSERT INTO `ask_doing` VALUES (622, 13, '土城城', 8, 0, '你真是个大好人', 288, 7, '这些都不是程序，这些是bios设置项目，不懂是什么东西就别动，会吧机器搞乱的', 1482997470);
INSERT INTO `ask_doing` VALUES (623, 11, 'o0O小角色o0O', 4, 97, '', 0, 0, '', 1482997471);
INSERT INTO `ask_doing` VALUES (624, 15, '东方大表哥科技', 4, 97, '', 0, 0, '', 1482997471);
INSERT INTO `ask_doing` VALUES (625, 5, '', 4, 97, '', 0, 0, '', 1482997471);
INSERT INTO `ask_doing` VALUES (626, 5, '', 4, 97, '', 0, 0, '', 1482997471);
INSERT INTO `ask_doing` VALUES (627, 16, '梭子蟹', 1, 97, '', 0, 0, '', 1482997471);
INSERT INTO `ask_doing` VALUES (628, 16, '梭子蟹', 8, 97, '谢谢你', 291, 18, '你右键任务栏，把【锁定任务栏】勾选上，再看看是否正常显示。', 1482997471);
INSERT INTO `ask_doing` VALUES (629, 13, '土城城', 4, 98, '', 0, 0, '', 1482997472);
INSERT INTO `ask_doing` VALUES (630, 6, '海蓝水晶', 4, 98, '', 0, 0, '', 1482997472);
INSERT INTO `ask_doing` VALUES (631, 11, 'o0O小角色o0O', 4, 98, '', 0, 0, '', 1482997472);
INSERT INTO `ask_doing` VALUES (632, 7, '匿名网友', 4, 98, '', 0, 0, '', 1482997472);
INSERT INTO `ask_doing` VALUES (633, 9, 'rqwg_2106', 4, 98, '', 0, 0, '', 1482997472);
INSERT INTO `ask_doing` VALUES (634, 13, '土城城', 1, 98, '', 0, 0, '', 1482997472);
INSERT INTO `ask_doing` VALUES (635, 13, '土城城', 8, 98, '谢谢你', 292, 7, '如果是微信平台，只能在所加的朋友圈内看到。', 1482997472);
INSERT INTO `ask_doing` VALUES (636, 13, '土城城', 4, 99, '', 0, 0, '', 1482997474);
INSERT INTO `ask_doing` VALUES (637, 15, '东方大表哥科技', 4, 99, '', 0, 0, '', 1482997474);
INSERT INTO `ask_doing` VALUES (638, 6, '海蓝水晶', 4, 99, '', 0, 0, '', 1482997474);
INSERT INTO `ask_doing` VALUES (639, 5, '', 4, 99, '', 0, 0, '', 1482997474);
INSERT INTO `ask_doing` VALUES (640, 11, 'o0O小角色o0O', 1, 99, '', 0, 0, '', 1482997474);
INSERT INTO `ask_doing` VALUES (641, 16, '梭子蟹', 4, 100, '', 0, 0, '', 1482997475);
INSERT INTO `ask_doing` VALUES (642, 14, '木木洞', 4, 100, '', 0, 0, '', 1482997475);
INSERT INTO `ask_doing` VALUES (643, 6, '海蓝水晶', 4, 100, '', 0, 0, '', 1482997475);
INSERT INTO `ask_doing` VALUES (644, 12, '破马张飞奔你家', 4, 100, '', 0, 0, '', 1482997475);
INSERT INTO `ask_doing` VALUES (645, 7, '匿名网友', 1, 100, '', 0, 0, '', 1482997475);
INSERT INTO `ask_doing` VALUES (646, 5, '', 4, 101, '', 0, 0, '', 1482997476);
INSERT INTO `ask_doing` VALUES (647, 11, 'o0O小角色o0O', 4, 101, '', 0, 0, '', 1482997476);
INSERT INTO `ask_doing` VALUES (648, 13, '土城城', 4, 101, '', 0, 0, '', 1482997476);
INSERT INTO `ask_doing` VALUES (649, 8, '.旧巷.', 1, 101, '', 0, 0, '', 1482997476);
INSERT INTO `ask_doing` VALUES (650, 18, 'possible1024', 4, 0, '', 0, 0, '', 1482997477);
INSERT INTO `ask_doing` VALUES (651, 7, '匿名网友', 4, 0, '', 0, 0, '', 1482997477);
INSERT INTO `ask_doing` VALUES (652, 8, '.旧巷.', 4, 0, '', 0, 0, '', 1482997477);
INSERT INTO `ask_doing` VALUES (653, 6, '海蓝水晶', 4, 0, '', 0, 0, '', 1482997477);
INSERT INTO `ask_doing` VALUES (654, 19, '无穷点', 1, 0, '', 0, 0, '', 1482997477);
INSERT INTO `ask_doing` VALUES (655, 19, '无穷点', 8, 0, '谢谢你', 296, 21, 'public class MyTriangle {public static boolean isValid(double s1, double s2, double s3){if (s1 + s2 &gt; s3 && s1 + s3 &gt; s2 && s2 + s3 &gt; s1){return true;}else{return false;}}public static double area(double s1,double s2,double s3){double s ;double r', 1482997477);
INSERT INTO `ask_doing` VALUES (656, 12, '破马张飞奔你家', 4, 102, '', 0, 0, '', 1482997479);
INSERT INTO `ask_doing` VALUES (657, 9, 'rqwg_2106', 4, 102, '', 0, 0, '', 1482997479);
INSERT INTO `ask_doing` VALUES (658, 15, '东方大表哥科技', 4, 102, '', 0, 0, '', 1482997479);
INSERT INTO `ask_doing` VALUES (659, 9, 'rqwg_2106', 4, 102, '', 0, 0, '', 1482997479);
INSERT INTO `ask_doing` VALUES (660, 11, 'o0O小角色o0O', 1, 102, '', 0, 0, '', 1482997479);
INSERT INTO `ask_doing` VALUES (661, 11, 'o0O小角色o0O', 8, 102, '你真是个大好人', 298, 22, '下载的网站很多，如PC6下载站就有下载。http://www.pc6.com/softview/SoftView_128.html这是下载的网页，点后边的下载地址保存到电脑就可以了。', 1482997479);
INSERT INTO `ask_doing` VALUES (662, 13, '土城城', 4, 103, '', 0, 0, '', 1482997480);
INSERT INTO `ask_doing` VALUES (663, 17, '四面环山', 4, 103, '', 0, 0, '', 1482997480);
INSERT INTO `ask_doing` VALUES (664, 20, '随意的一天', 4, 103, '', 0, 0, '', 1482997480);
INSERT INTO `ask_doing` VALUES (665, 10, '殇丶善若水', 4, 103, '', 0, 0, '', 1482997480);
INSERT INTO `ask_doing` VALUES (666, 12, '破马张飞奔你家', 1, 103, '', 0, 0, '', 1482997480);
INSERT INTO `ask_doing` VALUES (667, 12, '破马张飞奔你家', 8, 103, '高手留个联系方式吧', 300, 23, '用你的构思写', 1482997480);
INSERT INTO `ask_doing` VALUES (668, 21, 'soul丶亮', 4, 104, '', 0, 0, '', 1482997847);
INSERT INTO `ask_doing` VALUES (669, 19, '无穷点', 4, 104, '', 0, 0, '', 1482997847);
INSERT INTO `ask_doing` VALUES (670, 11, 'o0O小角色o0O', 4, 104, '', 0, 0, '', 1482997847);
INSERT INTO `ask_doing` VALUES (671, 12, '破马张飞奔你家', 1, 104, '', 0, 0, '', 1482997847);
INSERT INTO `ask_doing` VALUES (672, 12, '破马张飞奔你家', 8, 104, '真给力', 301, 24, '你按F12 看看浏览器控制台看看有没有报错 ', 1482997847);
INSERT INTO `ask_doing` VALUES (673, 20, '随意的一天', 4, 105, '', 0, 0, '', 1482997849);
INSERT INTO `ask_doing` VALUES (674, 14, '木木洞', 4, 105, '', 0, 0, '', 1482997849);
INSERT INTO `ask_doing` VALUES (675, 21, 'soul丶亮', 4, 105, '', 0, 0, '', 1482997849);
INSERT INTO `ask_doing` VALUES (676, 22, 'kele169', 4, 105, '', 0, 0, '', 1482997849);
INSERT INTO `ask_doing` VALUES (677, 19, '无穷点', 4, 105, '', 0, 0, '', 1482997849);
INSERT INTO `ask_doing` VALUES (678, 15, '东方大表哥科技', 1, 105, '', 0, 0, '', 1482997849);
INSERT INTO `ask_doing` VALUES (679, 15, '东方大表哥科技', 8, 105, '非常感谢你', 305, 28, '是不是快捷键冲突了', 1482997849);
INSERT INTO `ask_doing` VALUES (680, 18, 'possible1024', 4, 106, '', 0, 0, '', 1482997851);
INSERT INTO `ask_doing` VALUES (681, 16, '梭子蟹', 4, 106, '', 0, 0, '', 1482997851);
INSERT INTO `ask_doing` VALUES (682, 20, '随意的一天', 4, 106, '', 0, 0, '', 1482997851);
INSERT INTO `ask_doing` VALUES (683, 19, '无穷点', 4, 106, '', 0, 0, '', 1482997851);
INSERT INTO `ask_doing` VALUES (684, 27, 'paul008', 4, 106, '', 0, 0, '', 1482997851);
INSERT INTO `ask_doing` VALUES (685, 25, '辣的咖啡', 1, 106, '', 0, 0, '', 1482997851);
INSERT INTO `ask_doing` VALUES (686, 25, '辣的咖啡', 8, 106, '大神......', 308, 30, '那么只能解决问题了', 1482997851);
INSERT INTO `ask_doing` VALUES (721, 32, '其乐无穷2016', 4, 111, '', 0, 0, '', 1483003109);
INSERT INTO `ask_doing` VALUES (720, 30, '叼你老X', 4, 111, '', 0, 0, '', 1483003109);
INSERT INTO `ask_doing` VALUES (719, 28, '雨落錵台', 4, 111, '', 0, 0, '', 1483003109);
INSERT INTO `ask_doing` VALUES (718, 35, '问仙指路', 4, 111, '', 0, 0, '', 1483003109);
INSERT INTO `ask_doing` VALUES (691, 20, '随意的一天', 4, 0, '', 0, 0, '', 1482997890);
INSERT INTO `ask_doing` VALUES (692, 21, 'soul丶亮', 4, 0, '', 0, 0, '', 1482997890);
INSERT INTO `ask_doing` VALUES (693, 22, 'kele169', 4, 0, '', 0, 0, '', 1482997890);
INSERT INTO `ask_doing` VALUES (694, 25, '辣的咖啡', 4, 0, '', 0, 0, '', 1482997890);
INSERT INTO `ask_doing` VALUES (695, 17, '四面环山', 4, 0, '', 0, 0, '', 1482997890);
INSERT INTO `ask_doing` VALUES (696, 30, '叼你老X', 4, 0, '', 0, 0, '', 1482997890);
INSERT INTO `ask_doing` VALUES (697, 18, 'possible1024', 1, 0, '', 0, 0, '', 1482997890);
INSERT INTO `ask_doing` VALUES (698, 16, '梭子蟹', 4, 108, '', 0, 0, '', 1482997915);
INSERT INTO `ask_doing` VALUES (699, 26, '女神小灰灰', 4, 108, '', 0, 0, '', 1482997915);
INSERT INTO `ask_doing` VALUES (700, 22, 'kele169', 4, 108, '', 0, 0, '', 1482997915);
INSERT INTO `ask_doing` VALUES (701, 21, 'soul丶亮', 1, 108, '', 0, 0, '', 1482997915);
INSERT INTO `ask_doing` VALUES (702, 21, 'soul丶亮', 8, 108, '谢谢你', 309, 11, '1.1 非静态方法属于实例对象, 只能通过对象调用, 可以在主方法中通过this关键字查询到可以调用的非静态方法(包括从父类继承来的可见方法)1.2 非静态方法调用静态方法, 调用时不能通过this关键', 1482997915);
INSERT INTO `ask_doing` VALUES (703, 28, '雨落錵台', 4, 0, '', 0, 0, '', 1482997945);
INSERT INTO `ask_doing` VALUES (704, 25, '辣的咖啡', 4, 0, '', 0, 0, '', 1482997945);
INSERT INTO `ask_doing` VALUES (705, 27, 'paul008', 4, 0, '', 0, 0, '', 1482997945);
INSERT INTO `ask_doing` VALUES (706, 25, '辣的咖啡', 1, 0, '', 0, 0, '', 1482997945);
INSERT INTO `ask_doing` VALUES (707, 28, '雨落錵台', 4, 109, '', 0, 0, '', 1482997953);
INSERT INTO `ask_doing` VALUES (708, 29, '狂仙_2012', 4, 109, '', 0, 0, '', 1482997953);
INSERT INTO `ask_doing` VALUES (709, 27, 'paul008', 4, 109, '', 0, 0, '', 1482997953);
INSERT INTO `ask_doing` VALUES (710, 24, '邪者归来', 4, 109, '', 0, 0, '', 1482997953);
INSERT INTO `ask_doing` VALUES (711, 34, 'poorandrich_xj', 1, 109, '', 0, 0, '', 1482997953);
INSERT INTO `ask_doing` VALUES (712, 31, '小卢_001', 4, 110, '', 0, 0, '', 1482997954);
INSERT INTO `ask_doing` VALUES (713, 24, '邪者归来', 4, 110, '', 0, 0, '', 1482997954);
INSERT INTO `ask_doing` VALUES (714, 25, '辣的咖啡', 4, 110, '', 0, 0, '', 1482997954);
INSERT INTO `ask_doing` VALUES (715, 30, '叼你老X', 4, 110, '', 0, 0, '', 1482997954);
INSERT INTO `ask_doing` VALUES (716, 25, '辣的咖啡', 1, 110, '', 0, 0, '', 1482997954);
INSERT INTO `ask_doing` VALUES (717, 25, '辣的咖啡', 8, 110, '真给力', 319, 36, '给你个参考:public class hello{ &nbsp; &nbsp;public static void main(String arg[]) &nbsp;{ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; test t =new test(); &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; t.test1(); &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; t.test1(); &nbsp; &nbsp;', 1482997954);
INSERT INTO `ask_doing` VALUES (722, 27, 'paul008', 1, 111, '', 0, 0, '', 1483003109);
INSERT INTO `ask_doing` VALUES (723, 32, '其乐无穷2016', 4, 112, '', 0, 0, '', 1483003110);
INSERT INTO `ask_doing` VALUES (724, 23, '英雄侠义化身', 4, 112, '', 0, 0, '', 1483003110);
INSERT INTO `ask_doing` VALUES (725, 36, 'whoami1978', 4, 112, '', 0, 0, '', 1483003110);
INSERT INTO `ask_doing` VALUES (726, 26, '女神小灰灰', 4, 112, '', 0, 0, '', 1483003110);
INSERT INTO `ask_doing` VALUES (727, 30, '叼你老X', 1, 112, '', 0, 0, '', 1483003110);
INSERT INTO `ask_doing` VALUES (728, 37, '007叫爸爸', 4, 113, '', 0, 0, '', 1483003115);
INSERT INTO `ask_doing` VALUES (729, 29, '狂仙_2012', 4, 113, '', 0, 0, '', 1483003115);
INSERT INTO `ask_doing` VALUES (730, 38, '扛不住咋整', 4, 113, '', 0, 0, '', 1483003115);
INSERT INTO `ask_doing` VALUES (731, 22, 'kele169', 4, 113, '', 0, 0, '', 1483003115);
INSERT INTO `ask_doing` VALUES (732, 40, '伱灬不懂', 4, 113, '', 0, 0, '', 1483003115);
INSERT INTO `ask_doing` VALUES (733, 29, '狂仙_2012', 1, 113, '', 0, 0, '', 1483003115);
INSERT INTO `ask_doing` VALUES (734, 29, '狂仙_2012', 8, 113, '真给力', 328, 41, 'GUID是一个128位长的数字，一般用16进制表示。算法的核心思想是结合机器的网卡、当地时间、一个随机数来生成GUID。从理论上讲，如果一台机器每秒产生10000000个GUID，则可以保证（概率意义上', 1483003115);
INSERT INTO `ask_doing` VALUES (735, 38, '扛不住咋整', 4, 114, '', 0, 0, '', 1483003116);
INSERT INTO `ask_doing` VALUES (736, 35, '问仙指路', 4, 114, '', 0, 0, '', 1483003116);
INSERT INTO `ask_doing` VALUES (737, 28, '雨落錵台', 4, 114, '', 0, 0, '', 1483003116);
INSERT INTO `ask_doing` VALUES (738, 29, '狂仙_2012', 4, 114, '', 0, 0, '', 1483003116);
INSERT INTO `ask_doing` VALUES (739, 36, 'whoami1978', 4, 114, '', 0, 0, '', 1483003116);
INSERT INTO `ask_doing` VALUES (740, 27, 'paul008', 1, 114, '', 0, 0, '', 1483003116);
INSERT INTO `ask_doing` VALUES (741, 27, 'paul008', 8, 114, '高手留个联系方式吧', 329, 7, '将自定义的数据组装成一段内存发送即可，接收时再还原数据即可', 1483003116);
INSERT INTO `ask_doing` VALUES (742, 38, '扛不住咋整', 4, 0, '', 0, 0, '', 1483003117);
INSERT INTO `ask_doing` VALUES (743, 36, 'whoami1978', 4, 0, '', 0, 0, '', 1483003117);
INSERT INTO `ask_doing` VALUES (744, 40, '伱灬不懂', 1, 0, '', 0, 0, '', 1483003117);
INSERT INTO `ask_doing` VALUES (745, 40, '伱灬不懂', 8, 0, '真给力', 330, 42, '新华书店都有卖的', 1483003117);
INSERT INTO `ask_doing` VALUES (746, 26, '女神小灰灰', 4, 115, '', 0, 0, '', 1483003118);
INSERT INTO `ask_doing` VALUES (747, 37, '007叫爸爸', 4, 115, '', 0, 0, '', 1483003118);
INSERT INTO `ask_doing` VALUES (748, 35, '问仙指路', 4, 115, '', 0, 0, '', 1483003118);
INSERT INTO `ask_doing` VALUES (749, 42, '山寨总书记', 4, 115, '', 0, 0, '', 1483003118);
INSERT INTO `ask_doing` VALUES (750, 31, '小卢_001', 1, 115, '', 0, 0, '', 1483003118);

-- --------------------------------------------------------

-- 
-- 表的结构 `ask_editor`
-- 

CREATE TABLE `ask_editor` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `available` tinyint(1) NOT NULL default '1',
  `tag` varchar(100) NOT NULL default '',
  `icon` varchar(255) NOT NULL default '',
  `code` text NOT NULL,
  `displayorder` smallint(3) unsigned NOT NULL default '0',
  `description` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `ask_editor`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_expert`
-- 

CREATE TABLE `ask_expert` (
  `uid` int(10) NOT NULL,
  `cid` int(10) NOT NULL,
  PRIMARY KEY  (`uid`,`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `ask_expert`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_famous`
-- 

CREATE TABLE `ask_famous` (
  `id` int(10) NOT NULL auto_increment,
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `reason` char(50) default NULL,
  `time` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `ask_famous`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_favorite`
-- 

CREATE TABLE `ask_favorite` (
  `id` int(10) NOT NULL auto_increment,
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `qid` mediumint(10) unsigned NOT NULL default '0',
  `time` int(10) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`),
  KEY `qid` (`qid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `ask_favorite`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_gift`
-- 

CREATE TABLE `ask_gift` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `title` varchar(80) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(250) NOT NULL,
  `credit` int(10) NOT NULL default '0',
  `time` int(11) NOT NULL,
  `available` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `ask_gift`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_giftlog`
-- 

CREATE TABLE `ask_giftlog` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `uid` int(10) unsigned NOT NULL,
  `username` char(20) NOT NULL,
  `realname` char(20) NOT NULL,
  `gid` int(10) NOT NULL,
  `giftname` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `postcode` char(10) NOT NULL,
  `phone` char(15) NOT NULL,
  `qq` char(15) NOT NULL,
  `email` varchar(30) NOT NULL default '',
  `notes` text NOT NULL,
  `credit` int(10) NOT NULL,
  `time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `ask_giftlog`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_inform`
-- 

CREATE TABLE `ask_inform` (
  `id` int(10) NOT NULL auto_increment,
  `username` varchar(200) NOT NULL,
  `uid` int(10) NOT NULL,
  `qtitle` varchar(200) NOT NULL,
  `qid` int(100) NOT NULL,
  `aid` int(11) NOT NULL,
  `content` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `keywords` varchar(100) NOT NULL,
  `counts` int(11) NOT NULL default '1',
  `time` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `ask_inform`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_keywords`
-- 

CREATE TABLE `ask_keywords` (
  `id` int(10) NOT NULL auto_increment,
  `find` varchar(200) NOT NULL,
  `replacement` varchar(200) NOT NULL,
  `admin` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- 导出表中的数据 `ask_keywords`
-- 

INSERT INTO `ask_keywords` VALUES (1, 'java', '', 'rzld100');
INSERT INTO `ask_keywords` VALUES (2, 'C#', '', 'rzld100');

-- --------------------------------------------------------

-- 
-- 表的结构 `ask_link`
-- 

CREATE TABLE `ask_link` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `displayorder` tinyint(3) NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `description` mediumtext NOT NULL,
  `logo` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- 导出表中的数据 `ask_link`
-- 

INSERT INTO `ask_link` VALUES (2, 0, 'google', 'https://www.google.com.hk/', '', '');
INSERT INTO `ask_link` VALUES (3, 0, '百度', 'www.baidu.com', '', '');
INSERT INTO `ask_link` VALUES (4, 0, 'jar包下载', 'http://cn.jarfire.org/', '', '');
INSERT INTO `ask_link` VALUES (5, 0, 'github', 'https://github.com/', '', '');
INSERT INTO `ask_link` VALUES (6, 0, 'CSDN', 'http://bbs.csdn.net/home', '', '');
INSERT INTO `ask_link` VALUES (7, 0, '博客园', 'http://www.cnblogs.com/', '', '');
INSERT INTO `ask_link` VALUES (8, 0, 'w3school', 'http://www.w3school.com.cn/', '', '');
INSERT INTO `ask_link` VALUES (9, 0, '我要自学网', 'http://www.51zxw.net/', '', '');
INSERT INTO `ask_link` VALUES (10, 0, '有道翻译', 'http://fanyi.youdao.com/', '', '');

-- --------------------------------------------------------

-- 
-- 表的结构 `ask_login_auth`
-- 

CREATE TABLE `ask_login_auth` (
  `uid` int(10) NOT NULL,
  `type` enum('qq','sina') NOT NULL,
  `token` varchar(50) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `time` int(10) NOT NULL default '0',
  PRIMARY KEY  (`uid`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `ask_login_auth`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_message`
-- 

CREATE TABLE `ask_message` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `from` varchar(15) NOT NULL default '',
  `fromuid` mediumint(8) unsigned NOT NULL default '0',
  `touid` mediumint(8) unsigned NOT NULL default '0',
  `new` tinyint(1) NOT NULL default '1',
  `subject` varchar(75) NOT NULL default '',
  `time` int(10) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  `status` tinyint(2) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `touid` (`touid`,`time`),
  KEY `fromuid` (`fromuid`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `ask_message`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_nav`
-- 

CREATE TABLE `ask_nav` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `name` char(50) NOT NULL,
  `title` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `target` tinyint(1) NOT NULL default '0',
  `available` tinyint(1) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  `displayorder` tinyint(3) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- 导出表中的数据 `ask_nav`
-- 

INSERT INTO `ask_nav` VALUES (1, '首页', '问答首页', 'index/default', 0, 1, 1, 0);
INSERT INTO `ask_nav` VALUES (2, '发现', '问答动态', 'doing/default', 0, 0, 1, 1);
INSERT INTO `ask_nav` VALUES (3, '问题库', '分类大全', 'category/view/all', 0, 1, 1, 2);
INSERT INTO `ask_nav` VALUES (5, '专栏', '知识专题', 'topic/default', 0, 0, 1, 4);
INSERT INTO `ask_nav` VALUES (6, '用户', '活跃用户', 'user/activelist', 0, 1, 1, 5);
INSERT INTO `ask_nav` VALUES (7, '商城', '财富商城', 'gift/default', 0, 0, 1, 6);
INSERT INTO `ask_nav` VALUES (8, '公告', '站内公告', 'note/list', 0, 0, 1, 7);

-- --------------------------------------------------------

-- 
-- 表的结构 `ask_note`
-- 

CREATE TABLE `ask_note` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `authorid` int(10) NOT NULL default '0',
  `author` char(18) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `time` int(10) unsigned NOT NULL default '0',
  `comments` int(10) NOT NULL default '0',
  `views` int(10) NOT NULL default '0',
  `url` varchar(250) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `ask_note`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_note_comment`
-- 

CREATE TABLE `ask_note_comment` (
  `id` int(10) NOT NULL auto_increment,
  `noteid` int(10) NOT NULL,
  `authorid` int(10) NOT NULL,
  `author` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `ask_note_comment`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_question`
-- 

CREATE TABLE `ask_question` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `cid` smallint(5) unsigned NOT NULL default '0',
  `cid1` smallint(5) unsigned NOT NULL default '0',
  `cid2` smallint(5) unsigned NOT NULL default '0',
  `cid3` smallint(5) unsigned NOT NULL default '0',
  `price` smallint(6) unsigned NOT NULL default '0',
  `author` char(15) NOT NULL default '',
  `authorid` mediumint(8) unsigned NOT NULL default '0',
  `title` char(50) NOT NULL,
  `description` text NOT NULL,
  `supply` text NOT NULL,
  `time` int(10) unsigned NOT NULL default '0',
  `endtime` int(10) unsigned NOT NULL default '0',
  `hidden` tinyint(1) unsigned NOT NULL default '0',
  `answers` smallint(5) unsigned NOT NULL default '0',
  `attentions` int(10) NOT NULL default '0',
  `goods` mediumint(8) unsigned NOT NULL default '0',
  `status` tinyint(1) unsigned NOT NULL default '1',
  `ip` varchar(20) default NULL COMMENT 'ipåœ°å€',
  `views` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `cid1` (`cid1`),
  KEY `cid2` (`cid2`),
  KEY `cid3` (`cid3`),
  KEY `time` (`time`),
  KEY `price` (`price`),
  KEY `answers` (`answers`),
  KEY `authorid` (`authorid`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 AUTO_INCREMENT=116 ;

-- 
-- 导出表中的数据 `ask_question`
-- 

INSERT INTO `ask_question` VALUES (1, 29, 29, 0, 0, 11, 'admin', 2, 'Html5 Canvas是做什么的，清除屏幕可以做吗?', '', '', 1482990747, 1482992787, 0, 1, 2, 0, 2, '120.84.10.168', 193);
INSERT INTO `ask_question` VALUES (2, 29, 29, 0, 0, 82, '梦与毁毁于梦', 4, '急急急！composer install  遇到问题', '<div class="question fmt" data-id="1010000007957349">                                                             <p>Composer could not find the config file: C:ProgramDataComposerSetupbin<br>To initialize a project, please create a composer.json file as described in the<br><a href="https://getcomposer.org/">https://getcomposer.org/</a> "Getting Started" section</p>                                                      </div>', '', 1482990768, 1482992928, 0, 3, 2, 0, 2, '120.84.10.168', 122);
INSERT INTO `ask_question` VALUES (3, 30, 30, 0, 0, 5, 'mayun', 3, '请问jquery或者js里怎么获取ul下的多个li元素的宽度总和？', '<div class="question fmt" data-id="1010000007957740">                                                             <p>请问jquery或者js里怎么获取ul下的多个li元素的宽度总和？</p>                                                      </div>', '', 1482990891, 1482992930, 0, 1, 2, 0, 2, '120.84.10.168', 53);
INSERT INTO `ask_question` VALUES (4, 30, 30, 0, 0, 89, 'mayun', 3, '为什么要用Node,AJAX就可以访问后台APIS接口了？', '<div class="question fmt" data-id="1010000007955896">                                                             <pre><code> **现在的项目中用的是Express+Jquery,如果页面需要请求数据，就通过$.ajax()（jquery的异步方法）请求,被express router 匹配到的 controller 处理后，再通过$http 调用后台接口请求后台数据。这种通过node中间层 和 直接 使用$ajax 有什么区别？**</code></pre>                                                      </div>', '', 1482991912, 1482992932, 0, 3, 3, 0, 2, '120.84.10.168', 38);
INSERT INTO `ask_question` VALUES (5, 30, 30, 0, 0, 49, '梦与毁毁于梦', 4, 'MySQL 关联查询中使用 on 和 where 子句有什么区别？', '<div class="question fmt" data-id="1010000007957674">                                                             <p>MySQL 关联查询中使用 on 和 where 子句有什么区别？</p>                                                      </div>', '', 1482991870, 1488175870, 0, 0, 4, 0, 1, '120.84.10.168', 34);
INSERT INTO `ask_question` VALUES (6, 30, 30, 0, 0, 97, 'admin', 2, '怎么使用js或js库关闭文件选择窗口？', '<div class="question fmt" data-id="1010000007829058">                                                             <html><body> <p>代码如下：</p> <pre><code>&lt;input type="file" name="data" id="inFile" style="display: none"/&gt; &lt;button type="button" name="btn" onClick="browse()"&gt;Choose file&lt;/button&gt;  &lt;script&gt; var timeout; function browse(){     var fileElem = document.getElementById("inFile");     fileElem.click();     timeout = setTimeout(closeWindow, 5000); }  function closeWindow(){     // 在这里做关闭文件选择窗口的操作 } &lt;/script&gt; </code></pre> <p>文件选择窗口如下：<br><img data-src="/img/bVG0Q2?w=704&amp;h=440"></p> </body></html>                                                      </div>', '', 1482991212, 1488175212, 0, 6, 2, 0, 1, '120.84.10.168', 164);
INSERT INTO `ask_question` VALUES (7, 29, 29, 0, 0, 34, '梦与毁毁于梦', 4, '链接数据库查询 while 循环时 为false 但是明明能查出来数据。代码如下', '<div class="question fmt" data-id="1010000007437943">                                                              <p>我把sql语句在数据库里面查过了 能查出来数据</p> <pre><code> ps = con.prepareStatement("select * from  position where name=+pos+");                 re = ps.executeQuery();                 System.out.println(re.next()); // 为false                 while (re.next()) {                     position = new Position();                     position.setId(re.getInt("id"));                     position.setNumber(re.getString("number"));                     position.setName(re.getString("name"));                     position.setLongitude(re.getString("longitude"));                     position.setLatitude(re.getString("latitude"));                     position.setLdatetime(re.getString("ldatetime"));                     positionl.add(position);                     System.out.println(positionl.size());                 }                 </code></pre> <p>查询的条件是一个数组，是循环的，但是每循环一次只有一条符合条件  。但是走到while(){}<br>就进不去 显示false。难道只有一条数据进不去吗?不可能吧， 以前没有遇到过这种情况。。</p>                                                       </div>', '', 1482990855, 1482993075, 0, 2, 2, 0, 2, '120.84.10.168', 150);
INSERT INTO `ask_question` VALUES (8, 30, 30, 0, 0, 92, 'mayun', 3, '魅族下微信浏览器点击input和textarea不会自动弹上去，被键盘盖住', '<div class="question fmt" data-id="1010000007193512">                                                             <p>点击input后键盘直接盖住了固定在底部的input，而且没有触发resize事件，用scrollIntoViewIfNeeded()方法也没有用。而且试过在魅族自带浏览器和qq浏览器中又是正常的，只有微信下打开会有问题，想问下大家有什么办法可以解决吗？</p>                                                      </div>', '', 1482993017, 1482993077, 0, 2, 2, 0, 2, '120.84.10.168', 36);
INSERT INTO `ask_question` VALUES (9, 30, 30, 0, 0, 50, '', 5, '提示框有时模糊有时清晰是这么回事？', '<div class="question fmt" data-id="1010000007957237">                                                             <html><body> <p>提示框有时模糊有时清晰是这么回事？<br>图片提示为layer弹窗<br><img data-src="/img/bVHycx?w=419&amp;h=351"></p> <p><img data-src="/img/bVHycz?w=328&amp;h=332"></p> </body></html>                                                      </div>', '', 1482989658, 1488173658, 0, 1, 4, 0, 1, '120.84.10.168', 119);
INSERT INTO `ask_question` VALUES (10, 30, 30, 0, 0, 39, 'admin', 2, 'zepto中tap事件触发的时机?', '<div class="question fmt" data-id="1010000007791286">                                                              <h3>zepto中tap事件触发的时机?</h3> <p>在使用zepto插件的tap事件做移动web时,发现tap事件触发的时间比touchend还晚,正常不应该是tap事件结束后才触发touchend 吗?又试了一下,比click事件还晚,这是怎么回事,是zepto插件的tap事件原本就这样吗?封装tap事件不是因为click有延迟吗,现在比click还晚,不太明白,求解???</p>                                                       </div>', '', 1482990979, 1482993079, 0, 3, 1, 0, 2, '120.84.10.168', 179);
INSERT INTO `ask_question` VALUES (11, 30, 30, 0, 0, 58, 'mayun', 3, '这是一个关于Mui框架的问题', '<div class="question fmt" data-id="1010000007956114">                                                             <p>如何在新建的一个页面中加载几个子页面,这样是否可行,望大神指教</p>                                                      </div>', '', 1482991100, 1482993080, 0, 1, 4, 0, 2, '120.84.10.168', 66);
INSERT INTO `ask_question` VALUES (12, 30, 30, 0, 0, 59, 'mayun', 3, '关于jquery easyUI combobox的问题？', '<div class="question fmt" data-id="1010000007954234">                                                             <html><body> <p><img data-src="/img/bVHxpL?w=252&amp;h=218"></p> <p>请问我该怎样获取所选择行的行号，也就是选择的第几行数据？<br>谢谢!</p> </body></html>                                                      </div>', '', 1482989920, 1488173920, 0, 1, 3, 0, 1, '120.84.10.168', 194);
INSERT INTO `ask_question` VALUES (13, 30, 30, 0, 0, 43, 'mayun', 3, 'PyQt中，树形结构QtreeView中，单击节点获取其绝对路径', '<div class="question fmt" data-id="1010000007938892">                                                              <p>刚刚接触pyqt这块，现在想做个界面，左半部分是tree（整个根目录的索引），右半部分我是想我在tree中点一下那个文件，右半部分就可以显示文件内容，那么这样的话我肯定要获取这个文件的绝对路径。</p> <p>搞了很久，终于把单击事件函数搞定了，现在单击一下treeview中的某个文件节点，会触发这个函数，但是不知道如何获取这个文件的绝对路径，网上貌似这块资料很少，现在只知道要用model里面的某个方法还是什么？跪求大神指导</p>                                                       </div>', '', 1482992743, 1488176743, 0, 5, 2, 0, 1, '120.84.10.168', 20);
INSERT INTO `ask_question` VALUES (14, 26, 23, 26, 0, 13, 'mayun', 3, 'explode怎么不能分割空格呢？', '<div class="question fmt" data-id="1010000007957308">                                                              <p>我使用textarea的表单提交的数据，textarea提交的数据是分行若干条，提交之后，$_POST 接收结果是把textarea原来的换行符换成了空格</p> <p>接下来我要用explode分割这个字符为数组，但是始终不成功，除了空格分割意外，其他标点分割结果都没问题，只有explode空格的时候，没有任何作用，空格还是空格，分不开</p>                                                       </div>', '', 1482992268, 1488176268, 0, 0, 3, 0, 1, '120.84.10.168', 84);
INSERT INTO `ask_question` VALUES (15, 29, 29, 0, 0, 89, 'rzld100', 1, 'mysql sql联合查询如何无缝使用limit翻页', '<div class="question fmt" data-id="1010000007957291">                                                              <p>现在 我有个业务逻辑 一个专题表 一个文章表<br>zhuan 专题表 有专题名<br>Post 文章表 有文章名</p> <p>我想无缝对接 根据时间排序进行翻页 是否可以实现 </p> <p>(select id,title from zhuan order by id limit 0,2) union all (select id,title from post order by id limit 0,3)</p> <p>这样写的话 不能达到无缝翻页啊 ？ 求个思路</p>                                                       </div>', '', 1482990529, 1488174529, 0, 0, 2, 0, 1, '120.84.10.168', 131);
INSERT INTO `ask_question` VALUES (16, 29, 29, 0, 0, 72, 'mayun', 3, 'express+jade写的个人博客，怎么用react重构？', '<div class="question fmt" data-id="1010000007950928">                                                             <p>就是前端使用的jade模板引擎，后台用的是express，数据库用的mongodoDB，我现在想用react+express重新写一遍，但是发现有些无从下手，首先在express里面可以直接render一个jade页面，但是怎么渲染一个react页面呢？还有express的视图助手locals，在react里面该怎么用？</p>                                                      </div>', '', 1482990351, 1488174351, 0, 3, 2, 0, 1, '120.84.10.168', 12);
INSERT INTO `ask_question` VALUES (17, 29, 29, 0, 0, 13, 'admin', 2, 'django的项目要如何部署呢？', '<div class="question fmt" data-id="1010000007956173">                                                             <p>刚写了个项目，部署文章都太乱了，没头绪，求大神写好的文档。</p>                                                      </div>', '', 1482990474, 1482993114, 0, 4, 4, 0, 2, '120.84.10.168', 37);
INSERT INTO `ask_question` VALUES (18, 26, 23, 26, 0, 52, '', 5, 'npm install bower -g  安装失败', '<div class="question fmt" data-id="1010000007912353">                                                             <html><body> <p><img data-src="/img/bVHmwu?w=997&amp;h=605"></p> <p>各位朋友以上内容 是报错信息  </p> <p>这是什么原因呢？</p> </body></html>                                                      </div>', '', 1482992095, 1482993115, 0, 5, 2, 0, 2, '120.84.10.168', 39);
INSERT INTO `ask_question` VALUES (19, 30, 30, 0, 0, 86, 'rzld100', 1, 'AngularJS v1.5.8 在IE9中出现灰屏，不启动的问题。', '<div class="question fmt" data-id="1010000007677067">                                                             <html><body> <p>使用IE10浏览器可以正常查看，但是一模拟IE9就会出现灰屏现象，app都不启动，如图：</p> <p><img data-src="/img/bVGnju?w=1920&amp;h=1041"><br>这个是360兼容模式下的  IE下的 没截到图，都是一样的，title都没有解析出来，<br>但是很奇怪的是 IE中开启控制台，再刷新就能正常显示，控制台也没有报任何错误，求大神有没有遇到这种情况？</p> <p>注：之前发现过这种情况，由于控制器某一个值未定义导致angular报错；<br>但是现在实在找不到哪里有这个现象。</p> <p>查看IE调试工具中发现，网络请求了CSS文件，但是到JS的时候就停止了？</p> <p><img data-src="/img/bVGrYI?w=722&amp;h=685"></p> <p><img data-src="/img/bVGrYK?w=1865&amp;h=293"></p> </body></html>                                                      </div>', '', 1482991136, 1488175136, 0, 7, 2, 0, 1, '120.84.10.168', 54);
INSERT INTO `ask_question` VALUES (20, 29, 29, 0, 0, 69, 'mayun', 3, '网站上的付费资源(小说,视频)如何防止爬虫抓取的?', '<div class="question fmt" data-id="1010000007956623">                                                             <p>网站上的付费资源(小说,视频)如何防止爬虫抓取的?<br>1.京东上的商品价格是如何防止别人抓取的?<br>2.爱奇艺上的电影资源收费的,如何防止抓取的?</p>                                                      </div>', '', 1482990778, 1482993118, 0, 2, 2, 0, 2, '120.84.10.168', 197);
INSERT INTO `ask_question` VALUES (21, 30, 30, 0, 0, 20, 'rzld100', 1, '两个for循环的问题', '<div class="question fmt" data-id="1010000007956076">                                                              <p>我想在oBtn1[i].onclick的函数里面引用第二个for循环的键名<code>j</code>  怎样才能获取到呢 这两个for循环都不能拆开 必须这样写</p> <pre><code>for(i=0;i&lt;oBtn1.length;i++){                   oBtn1[i].index=i;                   oBtn1[i].onclick=function(){                                        }                 } for(j=0;j&lt;oSpan.length;j++){                   oSpan[j].index=j;                   oSpan[j].onclick=function(){                                        }                 }</code></pre>                                                       </div>', '', 1482991740, 1488175740, 0, 2, 2, 0, 1, '120.84.10.168', 14);
INSERT INTO `ask_question` VALUES (22, 26, 23, 26, 0, 87, 'admin', 2, 'css3 translated实现的无缝轮播图原理？', '<div class="question fmt" data-id="1010000007956769">                                                             <html><body> <p>在别的网站上看到的css3 translated实现的无缝轮播图，为什么4组图片轮换的时候，要多写两个一样的轮播容器呢？这是基于什么原理？？？</p> <p><img data-src="/img/bVHx40?w=1025&amp;h=526"></p> </body></html>                                                      </div>', '', 1482992281, 1482993121, 0, 5, 3, 0, 2, '120.84.10.168', 78);
INSERT INTO `ask_question` VALUES (23, 29, 29, 0, 0, 11, '', 5, 'react-native 中，怎么将得到的图片uri转换为base64的编码？', '<div class="question fmt" data-id="1010000007956943">                                                             <p>我需要将本地的照片转成base64，上传到服务器<br>需要兼容Ios和Android</p>                                                      </div>', '', 1482990602, 1482993122, 0, 4, 4, 0, 2, '120.84.10.168', 79);
INSERT INTO `ask_question` VALUES (24, 26, 23, 26, 0, 16, 'rzld100', 1, 'echarts地图样式', '<div class="question fmt" data-id="1010000007955819">                                                             <html><body><p>ech<img data-src="/img/bVHxCj?w=576&amp;h=392">arts3里怎么实现数据成彩色圆形圈的样式!要用echarts3的js</p></body></html>                                                      </div>', '', 1482992344, 1482993124, 0, 1, 1, 0, 2, '120.84.10.168', 89);
INSERT INTO `ask_question` VALUES (25, 30, 30, 0, 0, 35, 'admin', 2, 'JDK6中String的subString方法内存泄露及溢出问题', '<div class="question fmt" data-id="1010000007953379">                                                              <p><code>JDK6</code>中的<code>subString</code>方法会存在内存<code>泄露</code>问题，是由于源字符串中的<code>value</code>数组不会被<code>GC</code>回收。<br>看到一篇文章（<a href="http://www.cnblogs.com/hxy520/p/5450893.html">http://www.cnblogs.com/hxy520...</a>），里面有如下代码，说在<code>JDK6</code>下会报内存<code>溢出</code>的错误。请问下，为什么会产生？<code>list</code>的每次<code>add</code>不是只加一点点内存占用么？</p> <pre><code>public class SubMain {    private String strs = new String(new byte[100000]);    String getString() {     return this.strs.substring(0, 2);   }    public static void main(String[] args) {     List&lt;String&gt; list = new ArrayList&lt;String&gt;();     SubMain sub = new SubMain();     for (int i = 0; i &lt; 1000000; i++) {       list.add(sub.getString());     }   }  }  /*Exception in thread "main" java.lang.OutOfMemoryError: Java heap space     at java.lang.StringCoding$StringDecoder.decode(StringCoding.java:133)     at java.lang.StringCoding.decode(StringCoding.java:173)     at java.lang.StringCoding.decode(StringCoding.java:185)     at java.lang.String.&lt;init&gt;(String.java:570)     at java.lang.String.&lt;init&gt;(String.java:593)     at com.jd.o2o.substring.SubMain.&lt;init&gt;(SubMain.java:8)     at com.jd.o2o.substring.SubMain.main(SubMain.java:18)*/</code></pre> <p>其他参考文章：<a href="http://blog.csdn.net/longzuyuan/article/details/17436195">http://blog.csdn.net/longzuyu...</a>，<br><a href="http://www.wtoutiao.com/p/jfckIu.html">http://www.wtoutiao.com/p/jfc...</a></p>                                                       </div>', '', 1482989945, 1488173945, 0, 8, 0, 0, 1, '120.84.10.168', 153);
INSERT INTO `ask_question` VALUES (26, 29, 29, 0, 0, 69, '', 5, '为什么html里面的onclick函数后面要加()，而js里面不需要？', '<div class="question fmt" data-id="1010000007955542">                                                             <html><body> <p><img data-src="/img/bVHxK0?w=702&amp;h=102"></p> <p><img data-src="/img/bVHxK6?w=484&amp;h=40"><br>这两个本质区别是什么？</p> </body></html>                                                      </div>', '', 1482990487, 1488174487, 0, 14, 2, 0, 1, '120.84.10.168', 186);
INSERT INTO `ask_question` VALUES (27, 30, 30, 0, 0, 1, '梦与毁毁于梦', 4, '页面初始化的数据怎么获得', '<div class="question fmt" data-id="1010000007956843">                                                             <p>用VUE，VUE-resource做了个项目。页面刚加载的时候有很多从数据库获得数据初始化在页面上。页面中用了很多的this.$http.get()。请问下都需要这样很多get去获取数据么。会影响页面加载速度吧，有什么好的解决办法么</p>                                                      </div>', '', 1482991208, 1488175208, 0, 1, 3, 0, 1, '120.84.10.168', 128);
INSERT INTO `ask_question` VALUES (28, 30, 30, 0, 0, 24, '', 5, '关于IOS页面布局。希望大神给个思路。', '<div class="question fmt" data-id="1010000007956822">                                                             <html><body> <p><img data-src="/img/bVHx5w?w=324&amp;h=515"></p> <pre><code>如图。请教大神。这个页面该怎么布局。</code></pre> </body></html>                                                      </div>', '', 1482991632, 1488175632, 0, 0, 2, 0, 1, '120.84.10.168', 71);
INSERT INTO `ask_question` VALUES (29, 30, 30, 0, 0, 24, 'mayun', 3, '请问：怎么将这串字符串只是以单竖线分隔开分成两部分&quot;A|bbbbb||CCCCC&quot', '<div class="question fmt" data-id="1010000007956244">                                                             <pre><code>最后的结果是"A","bbbbb||CCCCC"; 谢谢~ 很感谢各位的回答~~</code></pre>                                                      </div>', '', 1482991153, 1488175153, 0, 2, 2, 0, 1, '120.84.10.168', 72);
INSERT INTO `ask_question` VALUES (30, 30, 30, 0, 0, 9, '', 5, 'udp本机回环传输大量数据的时候丢包！', '<div class="question fmt" data-id="1010000007956793">                                                             <p>大量数据的话采用拆包成1472之内的包，然后偶尔会出现丢包情况，我把读写缓冲区都调的好大，可是好像并没有改善，还是会有丢包现象，请问可能会是什么原因？如何解决？</p>                                                      </div>', '', 1482990255, 1488174255, 0, 0, 1, 0, 1, '120.84.10.168', 197);
INSERT INTO `ask_question` VALUES (31, 29, 29, 0, 0, 33, 'mayun', 3, 'vue2.0 在mounted时不能获取到$route.query的值？', '<div class="question fmt" data-id="1010000007947258">                                                              <pre><code>mounted() {     //直接打印不到     this.setUserInfo();          //加一定的延时就可以打印出来     let _this = this;     setTimeout(function() {         _this.setUserInfo();     }, 100)      },  methods: {     //将url传递过来的参数存入LocalStorage     setUserInfo: function() {         let userInfo = this.$route.query;         console.log(userInfo)     } },</code></pre> <p>如上，直接在mounted时打印不到this.$route.query的值。加一个延时就好了。是什么原因呢？</p>                                                       </div>', '', 1482990316, 1482993136, 0, 5, 2, 0, 2, '120.84.10.168', 108);
INSERT INTO `ask_question` VALUES (32, 30, 30, 0, 0, 71, '', 5, 'Tp5+ajax返回数据后,处理json的问题', '<div class="question fmt" data-id="1010000007956484">                                                             <html><body> <p>直接上图，大家请看，我的Json经过乱码处理后已经成功返回到了视图，<br>可是在Jq处理Json的这个环节中，遇到了一个难以理解的问题，<br>通常遍历Json或者打印json的各种方法我试了不少种，就是不能成功地处理json，<br>大家有时间可以帮忙看一下问题出在哪里，感激不尽！<br><img data-src="/img/bVHx0n?w=867&amp;h=357"><br><img data-src="/img/bVHx0p?w=1112&amp;h=418"></p> <p><img data-src="/img/bVHx0x?w=793&amp;h=438"></p> </body></html>                                                      </div>', '', 1482991457, 1482993137, 0, 4, 3, 0, 2, '120.84.10.168', 71);
INSERT INTO `ask_question` VALUES (33, 29, 29, 0, 0, 13, 'admin', 2, 'Unity3D项目怎么上传到github?', '<div class="question fmt" data-id="1010000007956570">                                                              <p>我最近在学习Unity3D游戏开发，我新建一个项目之后从assets store下载了几个资源，把prefab拖到自己的场景用到项目里面去之后发现把原来从assets store 下载的资源删除了场景里面的用到的prefab就没有material了。而不删除的话想上传到github备份居然项目文件能到300MB左右，我看光一个png图片都有10MB左右。</p> <pre><code>github这么大的文件每次都不能上传成功，各位大神是怎么搞的，能给个建议不？</code></pre>                                                       </div>', '', 1482990740, 1488174740, 0, 6, 4, 0, 1, '120.84.10.168', 47);
INSERT INTO `ask_question` VALUES (34, 30, 30, 0, 0, 73, 'admin', 2, 'H5移动端网页可以调用本地app实现分享功能吗？', '<div class="question fmt" data-id="1010000007955649">                                                             <html><body> <p><img data-src="/img/bVHxMN?w=308&amp;h=565"></p> <p>点击我要分享弹出这个面板，点击过后可以分享到app</p> </body></html>                                                      </div>', '', 1482989721, 1488173721, 0, 5, 2, 0, 1, '120.84.10.168', 124);
INSERT INTO `ask_question` VALUES (35, 30, 30, 0, 0, 5, 'rzld100', 1, '移动端rem布局 和 meta标签  content=&quot;width=750&quot;里面', '<div class="question fmt" data-id="1010000007956101">                                                              <p>meta 标签里面 <code>content="width=750"</code> 里面用 px 布局也可以自动缩放，rem 布局也可以，两者有什么区别？怎么可以看到效果，淘宝用 rem 肯定是有原因的。</p> <p>今天被要求 content 写成 750 里面用 px 直接写，这样会出现什么问题？</p>                                                       </div>', '', 1482989782, 1482993142, 0, 1, 4, 0, 2, '120.84.10.168', 137);
INSERT INTO `ask_question` VALUES (36, 30, 30, 0, 0, 4, 'admin', 2, 'TURN服务器为什么监听的端口是一个区间？', '<div class="question fmt" data-id="1010000007956416">                                                             <p>中继服务器类似coturn，在启动后监听设置有<br>min-port和max-port<br>为什么要这样设置？应用程序如何访问？</p>                                                      </div>', '', 1482990865, 1488174865, 0, 0, 3, 0, 1, '120.84.10.168', 138);
INSERT INTO `ask_question` VALUES (37, 30, 30, 0, 0, 31, '梦与毁毁于梦', 4, 'echarts 地图样式', '<div class="question fmt" data-id="1010000007954995">                                                             <html><body><p><img data-src="/img/bVHxCj?w=576&amp;h=392">echarts3里怎么实现数据成彩色圆形圈的样式!要用echarts3的js</p></body></html>                                                      </div>', '', 1482990926, 1488174926, 0, 1, 1, 0, 1, '120.84.10.168', 14);
INSERT INTO `ask_question` VALUES (38, 29, 29, 0, 0, 94, '梦与毁毁于梦', 4, '文件内容读取：读取从指定值到文件末尾的内容', '<div class="question fmt" data-id="1010000007956228">                                                              <p>例如有一个日志文件log.log，每行开头是这样的时间格式 2016-12-29 11:41:53,370</p> <p>我现在需要读取时间大于或等于这个值的所有行</p> <p>比如用下面这个，只是抓取当前值的行</p> <p>cat log.log | grep "2016-12-29 11:41:53,370"</p> <p>用tail 参数则是指定行数的。</p> <p>我想要的是该值2016-12-29 11:41:53,370对应的行到末尾的内容</p> <p>各位大大指导下吧~</p>                                                       </div>', '', 1482990449, 1488174449, 0, 1, 3, 0, 1, '120.84.10.168', 169);
INSERT INTO `ask_question` VALUES (39, 30, 30, 0, 0, 28, '梦与毁毁于梦', 4, 'vue新手，通过路由切换两个静态组件，如何互相传值？', '<div class="question fmt" data-id="1010000007954406">                                                             <html><body> <p><img data-src="/img/bVHxrX?w=526&amp;h=224"></p> <p><img data-src="/img/bVHxr2?w=617&amp;h=58"></p> <p><img data-src="/img/bVHxse?w=1278&amp;h=326"></p> <p>很急，在线等回复，这样写 其他都没报错，本人用的是VUE2.0，</p> </body></html>                                                      </div>', '', 1482991291, 1482993151, 0, 5, 1, 0, 2, '120.84.10.168', 120);
INSERT INTO `ask_question` VALUES (40, 30, 30, 0, 0, 62, 'mayun', 3, 'android 适配问题', '<div class="question fmt" data-id="1010000007946036">                                                             <p>在布局的时候px明显更适合适配，不用考虑像素密度，只需要知道分辨率就可以,为什么官方还推荐dp呢</p>                                                      </div>', '', 1482991892, 1482993152, 0, 6, 3, 0, 2, '120.84.10.168', 115);
INSERT INTO `ask_question` VALUES (41, 29, 29, 0, 0, 50, '', 5, 'php大量访问数据库问题', '<div class="question fmt" data-id="1010000007955735">                                                              <p>我的需求是目前需要定义两个URL变量A和B</p> <p>当用户访问时候，默认是访问url=A</p> <p>此时我们从后台修改了url=B，用户将访问到B链接</p> <hr> <p>目前我处理的办法就是每次访问查询一次mysql数据库，去判断url的值是A还是B，并修改切换</p> <p>存在问题： 但是当大范围的访问量开始攀升之后，每天好几十万次的访问量来说，意味着每天好几十万次的数据库查询请求，这样的的服务器压力变得很大，不知如何做优化呢？</p> <p>或者有没有其他方案实现后台动态切换用户访问url的办法，如果有其他不用数据库的办法更好，如果从稳定和性能方面考虑必须使用数据库的话，如何做好这个优化，减少mysql查询请求</p>                                                       </div>', '', 1482990337, 1488174337, 0, 1, 2, 0, 1, '120.84.10.168', 104);
INSERT INTO `ask_question` VALUES (42, 26, 23, 26, 0, 72, '梦与毁毁于梦', 4, '有两个a，b页面，然后从a超链接进入b，然后想b页面的值传到a页面，然后关掉b页面，刷新a页面？', '<div class="question fmt" data-id="1010000007955400">                                                             <p>有两个a，b页面，然后从a超链接进入b，然后想b页面的值传到a页面，然后关掉b页面，刷新a页面？用jq有没有办法实现这样的过程？求救大神！！！！！！</p>                                                      </div>', '', 1482991960, 1482993160, 0, 9, 1, 0, 2, '120.84.10.168', 110);
INSERT INTO `ask_question` VALUES (43, 30, 30, 0, 0, 83, '', 5, 'click事件如何让其点击的是该元素而并非子元素？', '<div class="question fmt" data-id="1010000007955704">                                                              <pre><code>&lt;li&gt;     &lt;a href="#" @click.self="longPress($event)"&gt;         &lt;img :src="$store.state.lazyload" data-src="/topic/green.png" onload="lzld(this)"&gt;     &lt;/a&gt; &lt;/li&gt;</code></pre> <pre><code>longPress: function (e) {     console.log(e.target.tagName); // IMG }</code></pre> <pre><code>.list li{     width: (139rem/$num);     height: (160rem/$num);     border-radius: (5rem/$num);     display: inline-block;     text-align: center;     font-size: (20rem/$num);   }   .list li a{     color: #787878;     display: block;   }   .list li img{     width: (100rem/$num);     height: (100rem/$num);     margin: 0 auto (10rem/$num);   }</code></pre> <p>如何让longpress事件点击到的是a？</p>                                                       </div>', '', 1482991781, 1482993161, 0, 2, 2, 0, 2, '120.84.10.168', 35);
INSERT INTO `ask_question` VALUES (44, 30, 30, 0, 0, 58, 'rzld100', 1, '两个resolver怎么都执行', '<div class="question fmt" data-id="1010000007956025">                                                              <p>定义了两个resolver，配置如下：</p> <pre><code>&lt;mvc:annotation-driven&gt;     &lt;!-- 自定义参数处理 --&gt;     &lt;mvc:argument-resolvers&gt;          &lt;bean class="com.zkzong.filter.CustRequestParamMethodArgumentResolver"&gt;&lt;/bean&gt;         &lt;bean class="com.zkzong.filter.RequestBodyFormResolver"&gt;             &lt;property name="mapper" ref="objectMapper"/&gt;         &lt;/bean&gt;      &lt;/mvc:argument-resolvers&gt; &lt;/mvc:annotation-driven&gt;</code></pre> <p>一个请求怎么使先使用CustRequestParamMethodArgumentResolver，再使用RequestBodyFormResolver解析参数？</p>                                                       </div>', '', 1482992505, 1488176505, 0, 0, 2, 0, 1, '120.84.10.168', 116);
INSERT INTO `ask_question` VALUES (45, 29, 29, 0, 0, 19, '', 5, '在laravel中如何使用vue遍历php 返回的json', '<div class="question fmt" data-id="1010000007955973">                                                             <html><body><p><img data-src="/img/bVHxSi?w=892&amp;h=938"></p></body></html>                                                      </div>', '', 1482990348, 1488174348, 0, 0, 3, 0, 1, '120.84.10.168', 189);
INSERT INTO `ask_question` VALUES (46, 29, 29, 0, 0, 7, 'admin', 2, 'Vue用v-for循环渲染数组数据，数据更新了，视图并没更新', '<div class="question fmt" data-id="1010000007955527">                                                             <html><body> <p>Vue用v-for循环渲染数组数据，数组数据更新时，视图没有更新<img data-src="/img/bVHwGZ?w=710&amp;h=268">以上是Html代码</p> <p><img data-src="/img/bVHwGY?w=307&amp;h=152"></p> <p>以上是JS代码，当我groupArr数据更新时，todos数据也更新了，但是视图并不渲染，只有第一次渲染，以后数据改变也不会渲染<br>希望各位帮忙解决一下这个问题</p> </body></html>                                                      </div>', '', 1482990770, 1488174770, 0, 5, 3, 0, 1, '120.84.10.168', 156);
INSERT INTO `ask_question` VALUES (47, 30, 30, 0, 0, 92, 'rzld100', 1, 'thinkphp 模板中输出图片地址失效', '<div class="question fmt" data-id="1010000007949003">                                                             <html><body> <p>thinkPHP 3.2.3 在模板中输出图片相对路径，图片不输出，图片地址直接打开的话找不到public模块</p> <p><img data-src="/img/bVHv3F?w=682&amp;h=23"></p> <p><img data-src="/img/bVHv3R?w=931&amp;h=620"></p> </body></html>                                                      </div>', '', 1482992871, 1488176871, 0, 5, 0, 0, 1, '120.84.10.168', 103);
INSERT INTO `ask_question` VALUES (48, 29, 29, 0, 0, 32, 'mayun', 3, '【Windows x64】 npm install bcrypt 安装问题', '<div class="question fmt" data-id="1010000007955860">                                                              <ol><li><p>npm install bcrypt --save</p></li></ol> <p>报错代码</p> <pre><code> ![图片描述][1]  报错代码 </code></pre> <p>2.python-2.7.13.amd64 安装完成后再 npm install bcrypt --save</p> <p>报错代码</p> <pre><code>![图片描述][2] </code></pre>                                                       </div>', '', 1482990593, 1488174593, 0, 0, 2, 0, 1, '120.84.10.168', 192);
INSERT INTO `ask_question` VALUES (49, 30, 30, 0, 0, 21, 'admin', 2, 'Python内部是如何存储GC引用变量的计数的？', '<div class="question fmt" data-id="1010000007914920">                                                             <html><body> <p>这段时间一直在想一个问题，为什么Python有了GIL依然还要对变量加锁。Google的过程中查看一些东西，有了新的困惑。</p> <p>一个说法说Python内部保存了一个用户空间和一个内核空间。用户空间通常就是我们自己编写程序的对象(变量)。而GIL控制的就是内核空间，内核空间保存了比如GC对于变量的计数，而内核空间是由GIL控制的。</p> <p><a href="https://www.zhihu.com/question/23030421">引用知乎的一个回答</a>请问下面说的这段话的意思中的维护的这个字典是不是就是上面所说的内核空间？难道是globals()查出的字典，应该不是，字典中好像找不到变量的引用？</p> <blockquote><p>因为, 有了GIL, 提供并发就变得很容易. 解释器只要计算每个线程的运行时间就好了，时间一到, 将这个线程冻结, 内存管理很简单.等等, 你还是没解释, 如果我已经给线程上了锁, 为什么还是要被GIL限制?一向符合人类直觉的Python, 有个很反直觉的机制.Py的变量a其实不是C系编译语言的变量.<strong>Python维护着一个字典, 储存着a和对应数值的指针.用某黑Python的大牛的话说, Python企图用字典装下世界.</strong>.如果变成真多线程对于这个字典的维护将会很复杂.多个线程真正同时操作一个字典, Python引以为傲的字典性能, 估计就没那么强了.就是说, Python字典的性能强大,是建立在线程不安全的基础上.而字典在Python中的位置又是如此重要, 一个缓慢的字典, 会严重拖慢Python的解释速度.多线程操作多个独立字典. 那样还是要同步.那为什么不采用多进程呢? 这就社区主流的看法.虽然理论上线程成本更低, 但是那样代码就改成面目全非了..</p></blockquote> <p>ps: 对于上面这段引用，拜托大神解释一下，感觉作者不是说的那么直接！</p> <p><img data-src="/img/bVHncE?w=600&amp;h=287"></p> </body></html>                                                      </div>', '', 1482991554, 1482993174, 0, 8, 2, 0, 2, '120.84.10.168', 198);
INSERT INTO `ask_question` VALUES (50, 26, 23, 26, 0, 1, 'rzld100', 1, 'windows10怎么在git bash中使用nvmw?', '<div class="question fmt" data-id="1010000007955796">                                                             <p>提示：“bash: nvmw: command not found”；</p>                                                      </div>', '', 1482992455, 1488176455, 0, 0, 1, 0, 1, '120.84.10.168', 40);
INSERT INTO `ask_question` VALUES (51, 30, 30, 0, 0, 79, '梦与毁毁于梦', 4, '键盘遮挡RecyclerView', '<div class="question fmt" data-id="1010000007938774">                                                             <html><body> <p>问题描述：<br>我使用 RecyclerView 来做消息列表，但是在软键盘弹起时会遮挡住 RecyclerView，而不是将 RecyclerView 与输入框一起顶上去。<br>清单文件里的 android:windowSoftInputMode 我设置为 adjustResize没效果。试过设置为 adjustPan，但是会将 标题栏也顶出布局外面。</p> <p>问：该怎样才能做到像微信那样弹出软键盘会将 RecyclerView 顶上去？<br><img data-src="/img/bVHuCW?w=721&amp;h=740"></p> </body></html>                                                      </div>', '', 1482990058, 1482993178, 0, 3, 2, 0, 2, '120.84.10.168', 82);
INSERT INTO `ask_question` VALUES (52, 29, 29, 0, 0, 22, 'mayun', 3, '酷市场应用管理的重叠toolbar是怎么实现的？', '<div class="question fmt" data-id="1010000007952064">                                                              <p>酷安管理app的时候，可以长按，这时候会渐变出一个新的toolbar<br>但好想是不能同时使用两个toolbar吧<br>我想到的就是就是外面设置一个FrameLayout</p> <p>第一个位置放toolbar<br>第二个位置放我用relatelayout仿写的toolbar</p> <p>但我看酷安的新出来的toolbar 长按图标都是显示的圆形背景（和原生的toolbar一样），而我自己放上去的图标，长按背景都是方形的。<br>请问库安那样的重叠toolbar是怎样实现的呢？</p>                                                       </div>', '', 1482990841, 1482993181, 0, 2, 4, 0, 2, '120.84.10.168', 191);
INSERT INTO `ask_question` VALUES (53, 29, 29, 0, 0, 75, '梦与毁毁于梦', 4, '使用ueditor上传视频文件时，传输时间不能超过30s？', '<div class="question fmt" data-id="1010000007955633">                                                             <html><body> <p>最近需要使用ueditor上传视频文件，但是小视频还好，一旦视频上传的时间超过30s，就会提示上传失败。</p> <p><img data-src="/img/bVHxKc?w=1190&amp;h=74"></p> <p><img data-src="/img/bVHxKl?w=1188&amp;h=103"></p> <p>考虑过是ueditor或者nginx或者php的配置有问题，但是修改了相关配置，如：<br><code>nginx:</code><br><code>keepalive_timeout:60</code></p> <p><code>php:</code><br><code>max_input_time=300</code><br><code>max_execution_time=300</code><br><code>post_max_size=300M</code><br><code>upload_max_filesize=300M</code><br><code>default_socket_timeout=60</code></p> <p><code>ueditor:</code><br><code>没有见到有时间相关的配置项</code></p> <p>请问这是什么原因？</p> </body></html>                                                      </div>', '', 1482990782, 1488174782, 0, 0, 2, 0, 1, '120.84.10.168', 200);
INSERT INTO `ask_question` VALUES (54, 30, 30, 0, 0, 89, '', 5, 'React Redux源码中,Subscription为什么都是把listeners绑定到上一级？', '<div class="question fmt" data-id="1010000007955570">                                                              <p>版本是5.0.1, 先贴上源代码：</p> <pre><code class="javascript">export default class Subscription {   constructor(store, parentSub) {     this.store = store     this.parentSub = parentSub     this.unsubscribe = null     this.listeners = nullListeners   }    addNestedSub(listener) {     this.trySubscribe()     return this.listeners.subscribe(listener)   }    notifyNestedSubs() {     this.listeners.notify()   }    isSubscribed() {     return Boolean(this.unsubscribe)   }    trySubscribe() {     if (!this.unsubscribe) {       // this.onStateChange is set by connectAdvanced.initSubscription()       this.unsubscribe = this.parentSub         ? this.parentSub.addNestedSub(this.onStateChange)         : this.store.subscribe(this.onStateChange)         this.listeners = createListenerCollection()     }   }    tryUnsubscribe() {     if (this.unsubscribe) {       this.unsubscribe()       this.unsubscribe = null       this.listeners.clear()       this.listeners = nullListeners     }   } }</code></pre> <p>在trySubscribe方法里面，是绑定到上一级(parentSub)或者store上面的。<br><strong>我想问的是：</strong> 这种<strong>绑定到上一级，然后一级一级向下传</strong>的方法 和 <strong>直接把所有的都绑定到store上面</strong> 有什么区别？</p>                                                       </div>', '', 1482992645, 1488176645, 0, 0, 2, 0, 1, '120.84.10.168', 168);
INSERT INTO `ask_question` VALUES (55, 29, 29, 0, 0, 61, 'rzld100', 1, 'spring mvc邮箱激活功能', '<div class="question fmt" data-id="1010000007955307">                                                             <p>想做个邮箱激活功能模块，但是不知道从哪里下手，框架为spring spring mvc  mybaits。   请大牛分析思路，有demo最好。</p>                                                      </div>', '', 1482990367, 1482993187, 0, 3, 3, 0, 2, '120.84.10.168', 38);
INSERT INTO `ask_question` VALUES (56, 30, 30, 0, 0, 94, '梦与毁毁于梦', 4, '手机端预览的比例不对', '<div class="question fmt" data-id="1010000007948974">                                                             <html><body> <p>浏览器直接缩小是可以的!如图宽度750px和实际一样图（1</p> <p>），但是控制台设置到750px宽度，实际却是980px，如图（2）</p> <p><img data-src="/img/bVHv2V?w=797&amp;h=901"></p> <p>但是控制台设置到750px宽度，实际却是980px，如图<br><a href="/img/bVHv23">图片描述</a></p> </body></html>                                                      </div>', '', 1482989889, 1482993189, 0, 5, 3, 0, 2, '120.84.10.168', 185);
INSERT INTO `ask_question` VALUES (57, 30, 30, 0, 0, 50, 'mayun', 3, 'vue-reource 的请求问题', '<div class="question fmt" data-id="1010000007955360">                                                             <p>get请求是否可以直接添加对象作为参数而不是拼接在url后面?每次都要序列化感觉好麻烦啊 有没有同学有好的办法</p>                                                      </div>', '', 1482992591, 1488176591, 0, 1, 2, 0, 1, '120.84.10.168', 17);
INSERT INTO `ask_question` VALUES (58, 30, 30, 0, 0, 7, '', 5, 'android开发中VideoView 控件播放内存占用很高，且偶尔遇到黑屏现象？', '<div class="question fmt" data-id="1010000007652227">                                                              <p>1.在使用videoview播放本地scared下的视频的时候，打开android studio的monitor，会发现随着播放时间越久，内存占用越高，有遇到类似问题的朋友吗？</p> <p>2.在播放视频的时候，机器偶尔会出现黑屏的状况，和videoview这个空间有关吗？</p> <p>麻烦有遇到相同问题的朋友帮忙分析回答下，求解决，求分析，谢谢</p>                                                       </div>', '', 1482991032, 1482993192, 0, 1, 2, 0, 2, '120.84.10.168', 31);
INSERT INTO `ask_question` VALUES (59, 26, 23, 26, 0, 12, 'admin', 2, 'Android多个activity之间传递/共享对象的处理', '<div class="question fmt" data-id="1010000007942153">                                                              <p>在android的开发过程中经常会遇到在activity之间传递数据的情况，如果只是基础类型或者String，直接放入intent就可以，这个没什么问题，但如果是对象呢？<br>用intent的话，无论parcelable还是serializable，都是一个copy，有大小和性能的限制，而且我现在想传递的是同一个对象。<br>现在我能想到的只有通过静态变量传递，大概是这样的写法：</p> <pre><code>public Constant{ public static TestObject object;  public static void setTemp(TestObject object){     this.object = object; }  public static TestObject getTemp(){     TestObject temp = object;     object = null;     return temp; } } </code></pre> <p>大家认为这样的写法有什么缺点，或者有其他办法可以实现吗？</p>                                                       </div>', '', 1482992473, 1488176473, 0, 6, 4, 0, 1, '120.84.10.168', 31);
INSERT INTO `ask_question` VALUES (60, 30, 30, 0, 0, 17, '梦与毁毁于梦', 4, 'INSERT ON DUPLICATE KEY 是如何判断重复key的?', '<div class="question fmt" data-id="1010000007955329">                                                              <p>使用INSERT的时候 有表T(id,A,B,C,D) </p> <p>插入的时候希望通过A,B索引唯一记录 ，有重复的时候更新C,D</p> <p>INSERT INTO T(A,B,C,D) VALUES (a,b,c,d) ON DUPLICATE KEY UPDATE C=C+1，D=d <br>居然是可用的</p> <p>INSERT 和UPDATE都是正常的</p> <p>只是不知道有没有其他问题</p> <p>所以 MySQL到底是如何判断DUPLICATE KEY的？</p>                                                       </div>', '', 1482989777, 1488173777, 0, 0, 1, 0, 1, '120.84.10.168', 50);
INSERT INTO `ask_question` VALUES (61, 30, 30, 0, 0, 7, '梦与毁毁于梦', 4, 'opencv的ios版（3.2版）找不到C++的文件怎么办？', '<div class="question fmt" data-id="1010000007955285">                                                             <html><body><p>在工程中集成了最新的opencv框架（3.2版本，xcode是8.0），结果提示‘climits’ file not found。  我查了一下，climits应该是C++11标准库里的文件。 我看了一下，buildingsetting里面的设置，C++ language dialect是GNU++11,C++standardLibrary 是libc++，不知道是哪里的问题。  我还显性的引入了libc++.tbd的库，但是还是会报错。不知道是哪的问题？<br><img data-src="/img/bVHxG9?w=600&amp;h=76"></p></body></html>                                                      </div>', '', 1482992480, 1488176480, 0, 0, 0, 0, 1, '120.84.10.168', 65);
INSERT INTO `ask_question` VALUES (62, 29, 29, 0, 0, 8, 'mayun', 3, 'button状态改变问题', '<div class="question fmt" data-id="1010000007953031">                                                             <p>button原始selected为no,前面判断语句也显示其为no，当点击这个按钮的时候，self.btn.selected = !=self.btn,selected,再次判断判断这个btn还是no，再点一次才为selected，变为normal也要点两次，什么原因，大神求解</p>                                                      </div>', '', 1482990802, 1482993202, 0, 1, 4, 0, 2, '120.84.10.168', 138);
INSERT INTO `ask_question` VALUES (63, 30, 30, 0, 0, 24, 'rzld100', 1, 'vue.js unable to verify the first certificate', '<div class="question fmt" data-id="1010000007953827">                                                              <p>$ vue init webpack my-project</p> <p>This will install Vue 2.x version of the template.</p> <p>For Vue 1.x use: vue init webpack#1.0 my-project</p> <p>vue-cli · Failed to download repo vuejs-templates/webpack: unable to verify<br>the first certificate</p>                                                       </div>', '', 1482989785, 1482993205, 0, 5, 2, 0, 2, '120.84.10.168', 171);
INSERT INTO `ask_question` VALUES (64, 30, 30, 0, 0, 26, 'mayun', 3, '关于gem的问题', '<div class="question fmt" data-id="1010000007827846">                                                             <p>看网上说ruby不适合在windows下开发 会有很多问题 确实我遇到了几个不明原因跟的问题，还解决不了  就装了ubuntu16.04来试试ruby 然而依旧有各种问题 不管我从源码自编译 还是 sudo apt-get安装ruby gem install rails 都会失败 同时也试过rvm  但是不知道什么时候开始  不管怎么重装ruby 我gem env 和 gem source l的里面都是我改过的配置 重装不会把gem的配置还原 我想知道 gem的配置文件在哪 我好删掉 估计gem的配置有问题 导致rails装不上</p>                                                      </div>', '', 1482992666, 1488176666, 0, 3, 3, 0, 1, '120.84.10.168', 71);
INSERT INTO `ask_question` VALUES (65, 30, 30, 0, 0, 16, '', 5, 'php对查询数据做排名??', '<div class="question fmt" data-id="1010000007954919">                                                             <p>数据查出来做排名...比对某个字段相同就排名一致<br>比如:<br>两个第一名，第三位排第三名,两个第N名那么第N+2名排N+2<br>M个第N名那么第N+M就该排N+M名.....应该是这个规律...思路就没有<br>麻烦来人提点一下...谢谢了</p>                                                      </div>', '', 1482992907, 1488176907, 0, 0, 4, 0, 1, '120.84.10.168', 12);
INSERT INTO `ask_question` VALUES (66, 30, 30, 0, 0, 36, '', 5, '对ruby感兴趣，打算学习一下，结果刚开始就遇到了问题。。。', '<div class="question fmt" data-id="1010000007729131">                                                             <html><body> <p><img data-src="/img/bVGAQA?w=777&amp;h=460"><br>使用rubymine创建项目 关于rails template 我就找了好久不知道该选什么，  后来偶然看到<a href="http://snails.github.io/2012/06/04/Modify-the-Gemfile-Template/">http://snails.github.io/2012/...</a> 估计就是这里提到的template了 不知道对不对 接着 create<br>可是<img data-src="/img/bVGASg?w=1180&amp;h=582"><br>接着就出现了这些问题该怎么解决啊</p> <p><img data-src="/img/bVGARO?w=1037&amp;h=682"></p> <p>直接在cmd中使用rails new app 是成功的<br><img data-src="/img/bVGBAF?w=1037&amp;h=682"><br><img data-src="/img/bVGBAI?w=1037&amp;h=682"></p> </body></html>                                                      </div>', '', 1482991768, 1482993208, 0, 6, 2, 0, 2, '120.84.10.168', 31);
INSERT INTO `ask_question` VALUES (67, 30, 30, 0, 0, 1, '', 5, '请问：怎么将这串字符串只是以单竖线分隔开分成两部分&quot;A|bbbbb||CCCCC&quot', '<div class="question fmt" data-id="1010000007956244">                                                             <pre><code>最后的结果是"A","bbbbb||CCCCC"; 谢谢~ 很感谢各位的回答~~</code></pre>                                                      </div>', '', 1482992898, 1488176898, 0, 2, 3, 0, 1, '120.84.10.168', 110);
INSERT INTO `ask_question` VALUES (68, 30, 30, 0, 0, 11, 'mayun', 3, '移动端rem布局 和 meta标签  content=&quot;width=750&quot;里面', '<div class="question fmt" data-id="1010000007956101">                                                              <p>meta 标签里面 <code>content="width=750"</code> 里面用 px 布局也可以自动缩放，rem 布局也可以，两者有什么区别？怎么可以看到效果，淘宝用 rem 肯定是有原因的。</p> <p>今天被要求 content 写成 750 里面用 px 直接写，这样会出现什么问题？</p>                                                       </div>', '', 1482992787, 1488176787, 0, 1, 2, 0, 1, '120.84.10.168', 47);
INSERT INTO `ask_question` VALUES (69, 30, 30, 0, 0, 25, 'mayun', 3, ' 用C#备份sql数据库，添加的消息弹窗显示成功但是在备份目录下没有备份文件 备份语句在sql中运行', 'private void button3_Click(object sender, EventArgs e)\r\n        {\r\n            &#47;&#47;1\r\n\r\n            string connetstring = &quot;Data Source=.;Initial Catalog=汽车装具公司管理系统.MDF;Integrated Security=True&quot;; &#47;&#47;创建连接字符串\r\n            SqlConnection MyConnection = new SqlConnection(connetstring);\r\n            MyConnection.Open();\r\n            string databaseName = @&quot;D:&#92;14信1班11号 张梓钊&#92;112.bak&quot;; &#47;&#47;指定数据库名称(完整路径)  \r\n\r\n            string bakSQL1 = @&quot;backup database 汽车装具公司管理系统.MDF to disk=N&#39;D:&#92;14信1班11号 张梓钊&#92;112.bak&#39;&quot;;     &#47;&#47;数据库备份SQL语句             \r\n            try\r\n            {\r\n                SqlCommand cmd1 = new SqlCommand(bakSQL1, MyConnection);\r\n                cmd1.CommandType = CommandType.Text;\r\n                cmd1.Parameters.AddWithValue(&quot;汽车装具公司管理系统.MDF&quot;, databaseName);  &#47;&#47;参数  \r\n                &#47;&#47;cmd1.ExecuteNonQuery();\r\n                MessageBox.Show(&quot;添加功&quot;);\r\n            }\r\n            catch (Exception ee)\r\n            {\r\n                Console.WriteLine(ee);\r\n                MessageBox.Show(&quot;添加功&quot;);\r\n            }  \r\n            &#47;&#47;6\r\n        }', '', 1482992673, 1488176673, 0, 0, 2, 0, 1, '120.84.10.168', 74);
INSERT INTO `ask_question` VALUES (70, 30, 30, 0, 0, 91, 'mayun', 3, ' 用C#备份sql数据库，添加的消息弹窗显示成功但是在备份目录下没有备份文件 备份语句在sql中运行', 'private void button3_Click(object sender, EventArgs e)\r\n        {\r\n            &#47;&#47;1\r\n\r\n            string connetstring = &quot;Data Source=.;Initial Catalog=汽车装具公司管理系统.MDF;Integrated Security=True&quot;; &#47;&#47;创建连接字符串\r\n            SqlConnection MyConnection = new SqlConnection(connetstring);\r\n            MyConnection.Open();\r\n            string databaseName = @&quot;D:&#92;14信1班11号 张梓钊&#92;112.bak&quot;; &#47;&#47;指定数据库名称(完整路径)  \r\n\r\n            string bakSQL1 = @&quot;backup database 汽车装具公司管理系统.MDF to disk=N&#39;D:&#92;14信1班11号 张梓钊&#92;112.bak&#39;&quot;;     &#47;&#47;数据库备份SQL语句             \r\n            try\r\n            {\r\n                SqlCommand cmd1 = new SqlCommand(bakSQL1, MyConnection);\r\n                cmd1.CommandType = CommandType.Text;\r\n                cmd1.Parameters.AddWithValue(&quot;汽车装具公司管理系统.MDF&quot;, databaseName);  &#47;&#47;参数  \r\n                &#47;&#47;cmd1.ExecuteNonQuery();\r\n                MessageBox.Show(&quot;添加功&quot;);\r\n            }\r\n            catch (Exception ee)\r\n            {\r\n                Console.WriteLine(ee);\r\n                MessageBox.Show(&quot;添加功&quot;);\r\n            }  \r\n            &#47;&#47;6\r\n        }', '', 1482993250, 1488177250, 0, 0, 2, 0, 1, '120.84.10.168', 157);
INSERT INTO `ask_question` VALUES (71, 30, 30, 0, 0, 23, 'admin', 2, ' 用C#备份sql数据库，添加的消息弹窗显示成功但是在备份目录下没有备份文件 备份语句在sql中运行', 'private void button3_Click(object sender, EventArgs e)\r\n        {\r\n            &#47;&#47;1\r\n\r\n            string connetstring = &quot;Data Source=.;Initial Catalog=汽车装具公司管理系统.MDF;Integrated Security=True&quot;; &#47;&#47;创建连接字符串\r\n            SqlConnection MyConnection = new SqlConnection(connetstring);\r\n            MyConnection.Open();\r\n            string databaseName = @&quot;D:&#92;14信1班11号 张梓钊&#92;112.bak&quot;; &#47;&#47;指定数据库名称(完整路径)  \r\n\r\n            string bakSQL1 = @&quot;backup database 汽车装具公司管理系统.MDF to disk=N&#39;D:&#92;14信1班11号 张梓钊&#92;112.bak&#39;&quot;;     &#47;&#47;数据库备份SQL语句             \r\n            try\r\n            {\r\n                SqlCommand cmd1 = new SqlCommand(bakSQL1, MyConnection);\r\n                cmd1.CommandType = CommandType.Text;\r\n                cmd1.Parameters.AddWithValue(&quot;汽车装具公司管理系统.MDF&quot;, databaseName);  &#47;&#47;参数  \r\n                &#47;&#47;cmd1.ExecuteNonQuery();\r\n                MessageBox.Show(&quot;添加功&quot;);\r\n            }\r\n            catch (Exception ee)\r\n            {\r\n                Console.WriteLine(ee);\r\n                MessageBox.Show(&quot;添加功&quot;);\r\n            }  \r\n            &#47;&#47;6\r\n        }', '', 1482993792, 1488177792, 0, 0, 4, 0, 1, '120.84.10.168', 19);
INSERT INTO `ask_question` VALUES (72, 30, 30, 0, 0, 82, 'admin', 2, ' 求助，导航这是什么情况？', '<div class="line mt-5 q-content" accuse="qContent"><p>求助<img class="word-replace" src="https://zhidao.baidu.com/api/getdecpic?picenc=0a00636f6d6d610000">导航<img class="word-replace" src="https://zhidao.baidu.com/api/getdecpic?picenc=0a007a68650000"><img class="word-replace" src="https://zhidao.baidu.com/api/getdecpic?picenc=0a007368690000"><img class="word-replace" src="https://zhidao.baidu.com/api/getdecpic?picenc=0a007368656e0000"><img class="word-replace" src="https://zhidao.baidu.com/api/getdecpic?picenc=0a006d650000">情况<img class="word-replace" src="https://zhidao.baidu.com/api/getdecpic?picenc=0a007175657374696f6e0000">求助求助求助求助<img class="word-replace" src="https://zhidao.baidu.com/api/getdecpic?picenc=0a0073746f700000"></p><p><a href="https://gss0.baidu.com/-fo3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/d0c8a786c9177f3e69c36c6979cf3bc79e3d56da.jpg" target="_blank" title="点击查看<img class=">图" class="ikqb_img_alink"><img class="ikqb_img" src="https://gss0.baidu.com/-fo3dSag_xI4khGko9WTAnF6hhy/zhidao/wh%3D600%2C800/sign=049f164de2c4b74534c1bf10ffcc322f/d0c8a786c9177f3e69c36c6979cf3bc79e3d56da.jpg" esrc="https://gss0.baidu.com/-fo3dSag_xI4khGko9WTAnF6hhy/zhidao/wh%3D450%2C600/sign=8cec6aa817178a82ce6977a4c3335fbb/d0c8a786c9177f3e69c36c6979cf3bc79e3d56da.jpg" /></a></p></div>', '', 1482993373, 1488177373, 0, 0, 1, 0, 1, '120.84.10.168', 58);
INSERT INTO `ask_question` VALUES (73, 30, 30, 0, 0, 0, '', 5, '参数有问题？{data,handleChange}', '<div class="question fmt" data-id="1010000007958265">                                                             <pre><code>let Chilid = ({data,handleChange}) =&gt;     &lt;div onClick={handleChange}&gt;{data.name}&lt;/div&gt;</code></pre>                                                      </div>', '', 1482994405, 1482995605, 0, 1, 1, 0, 2, '120.84.10.168', 194);
INSERT INTO `ask_question` VALUES (74, 30, 30, 0, 0, 4, 'admin', 2, 'angular 监听不到嵌套子页面的鼠标滚动事件', '<div class="question fmt" data-id="1010000007958042">                                                             <html><body> <p><img data-src="/img/bVHylQ?w=869&amp;h=465"><br>如图，右边的滚动条可以滚动，左边的滚动条可以拉动，但鼠标滚动页面岿然不动。<br>使用得angular-ui-router嵌套路由。<br>整个是一个主页，左边内容不变一直存在，右边是一个嵌套子页面，地址后面部分为“/#/main/dynamicNew/”。<br>在main页面，嵌套子页面的代码为：</p> <pre><code> &lt;div class="chatBox" ui-view&gt;    &lt;/div&gt;</code></pre> <pre><code class="css">.chatBox {overflow:auto}</code></pre> <p>调试发现去掉overflow属性，页面就能滚动，但布局乱了，子页面就不受父标签控制了。<br>现在决得是路由得问题，导致子页面监听不到鼠标滚动事件，但不知道怎么排查。</p> </body></html>                                                      </div>', '', 1482995610, 1488179610, 0, 0, 2, 0, 1, '120.84.10.168', 61);
INSERT INTO `ask_question` VALUES (75, 30, 30, 0, 0, 59, 'rzld100', 1, 'sql中用户和用户负责事项是不是多对多？', '', '', 1482995931, 1488179931, 0, 0, 2, 0, 1, '120.84.10.168', 37);
INSERT INTO `ask_question` VALUES (76, 30, 30, 0, 0, 10, '梦与毁毁于梦', 4, 'java 中  Component 与 JComponent 的区别是什么，分别在什么情况下使用', '', '', 1482993952, 1488177952, 0, 0, 4, 0, 1, '120.84.10.168', 33);
INSERT INTO `ask_question` VALUES (77, 30, 30, 0, 0, 86, 'rzld100', 1, '用Java编写一个简单的计算器', '', '', 1482994375, 1488178375, 0, 0, 4, 0, 1, '120.84.10.168', 117);
INSERT INTO `ask_question` VALUES (78, 30, 30, 0, 0, 55, 'rzld100', 1, '用Java编写一个班级的管理信息系统', '', '', 1482993177, 1488177177, 0, 0, 2, 0, 1, '120.84.10.168', 24);
INSERT INTO `ask_question` VALUES (79, 30, 30, 0, 0, 70, '', 5, 'JAVA好不好学呢', '', '', 1482995758, 1488179758, 0, 0, 0, 0, 1, '120.84.10.168', 153);
INSERT INTO `ask_question` VALUES (80, 30, 30, 0, 0, 44, '', 5, '程序题,求解答', '', '', 1482993721, 1488177721, 0, 0, 2, 0, 1, '120.84.10.168', 169);
INSERT INTO `ask_question` VALUES (81, 30, 30, 0, 0, 82, 'rzld100', 1, '缺失msvcr110.dll', '', '', 1482995106, 1488179106, 0, 0, 2, 0, 1, '120.84.10.168', 178);
INSERT INTO `ask_question` VALUES (82, 30, 30, 0, 0, 89, 'mayun', 3, '鼠标移上禁用按钮之后，禁用按钮颜色变淡并显示禁用图标，怎么做呢？', '', '', 1482994270, 1488178270, 0, 0, 1, 0, 1, '120.84.10.168', 193);
INSERT INTO `ask_question` VALUES (83, 30, 30, 0, 0, 46, '梦与毁毁于梦', 4, '一个c程序必须有printf函数吗？还有如果变量不负值编译运行的结果是什么？', '', '', 1482994816, 1488178816, 0, 0, 2, 0, 1, '120.84.10.168', 115);
INSERT INTO `ask_question` VALUES (84, 30, 30, 0, 0, 79, 'admin', 2, '用java编写程序编写银行类，含有银行名称、取款存款费率、借款费率、转账手续率等成员属性。', '', '', 1482996017, 1488180017, 0, 0, 2, 0, 1, '120.84.10.168', 38);
INSERT INTO `ask_question` VALUES (85, 30, 30, 0, 0, 9, 'rzld100', 1, '虚拟机网络', '', '', 1482993266, 1488177266, 0, 0, 2, 0, 1, '120.84.10.168', 194);
INSERT INTO `ask_question` VALUES (86, 30, 30, 0, 0, 81, 'admin', 2, '求解c++试题啊！选a还是c？', '', '', 1482993756, 1488177756, 0, 0, 0, 0, 1, '120.84.10.168', 164);
INSERT INTO `ask_question` VALUES (87, 30, 30, 0, 0, 1, 'rzld100', 1, '请问谁可以发下blank space ？？', '', '', 1482996337, 1488180337, 0, 0, 2, 0, 1, '120.84.10.168', 38);
INSERT INTO `ask_question` VALUES (88, 30, 30, 0, 0, 30, 'admin', 2, '不会英语编程给变量起名字头疼怎么办？', '', '', 1482996040, 1488180040, 0, 0, 0, 0, 1, '120.84.10.168', 144);
INSERT INTO `ask_question` VALUES (89, 30, 30, 0, 0, 15, '梦与毁毁于梦', 4, 'stdio.h怎么读音 刚学编程不会读', '', '', 1482993821, 1488177821, 0, 0, 0, 0, 1, '120.84.10.168', 142);
INSERT INTO `ask_question` VALUES (90, 30, 30, 0, 0, 66, '梦与毁毁于梦', 4, 'CRM按钮是什么？', '', '', 1482995539, 1488179539, 0, 0, 3, 0, 1, '120.84.10.168', 98);
INSERT INTO `ask_question` VALUES (91, 30, 30, 0, 0, 19, 'rzld100', 1, '程序要长时间在后台运行service该怎么做？ 帮帮忙，谢啦。', '<div class="q-cnt">应用程序长时间在后台运行service应该怎么做？</div>', '', 1482996124, 1482997264, 0, 1, 2, 0, 2, '120.84.10.168', 102);
INSERT INTO `ask_question` VALUES (92, 30, 30, 0, 0, 93, 'mayun', 3, '任务栏异常，', '<div class="q-cnt"><p>左键点击开始菜单栏没有反应；</p><p>任务管理器经常没有反应<br></p></div>', '', 1482996915, 1488180915, 0, 2, 2, 0, 1, '120.84.10.168', 29);
INSERT INTO `ask_question` VALUES (93, 30, 30, 0, 0, 12, '', 5, 'toggleable怎么控制', '<div class="q-cnt"><p>怎么让这个标签 是“+” 也就是不展开的状态？？</p><p>找了好多资料没找到的</p></div>', '', 1482995062, 1482997462, 0, 1, 3, 0, 2, '120.84.10.168', 123);
INSERT INTO `ask_question` VALUES (94, 30, 30, 0, 0, 70, '.旧巷.', 8, 'java创建对象时会自动生成对象的引用this，什么时候this会消失，因为看到垃圾回收是说', '<div class="q-cnt">java创建对象时会自动生成对象的引用this，什么时候this会消失，因为看到垃圾回收是说等到对象的引用次数为0时对象就成为了垃圾。所以我想问this这个引用变量在什么情况下会失效</div>', '', 1482994464, 1482997464, 0, 2, 4, 0, 2, '120.84.10.168', 59);
INSERT INTO `ask_question` VALUES (95, 30, 30, 0, 0, 42, 'mayun', 3, 'java中主线程结束子线程会跟着结束吗。或者主线程要等到所有子线程结束才能结束？', '<div class="q-cnt">java中主线程结束子线程会跟着结束吗。或者主线程要等到所有子线程结束才能结束？</div>', '', 1482996267, 1488180267, 0, 3, 4, 0, 1, '120.84.10.168', 99);
INSERT INTO `ask_question` VALUES (96, 30, 30, 0, 0, 49, '.旧巷.', 8, '请问哪里可以下载sketchup5中文版，谢谢！', '<div class="q-cnt">请问哪里可以下载sketchup5 中文版？可以导入CAD的，谢谢！</div>', '', 1482995488, 1488179488, 0, 1, 4, 0, 1, '120.84.10.168', 172);
INSERT INTO `ask_question` VALUES (97, 30, 30, 0, 0, 48, '梭子蟹', 16, '任务栏异常', '<div class="q-cnt"><p><img src="http://p2.qhimg.com/t0163b42ce739dfaadf.png"></p><p>图标跑到中间&nbsp;&nbsp;弄不好了</p></div>', '', 1482996691, 1482997471, 0, 3, 3, 0, 2, '120.84.10.168', 45);
INSERT INTO `ask_question` VALUES (98, 30, 30, 0, 0, 37, '土城城', 13, '我上传到腾迅申查的视频能限定只让朋友看而不想让其它更多人看吗？', '', '', 1482996393, 1482997472, 0, 1, 4, 0, 2, '120.84.10.168', 195);
INSERT INTO `ask_question` VALUES (99, 30, 30, 0, 0, 65, 'o0O小角色o0O', 11, '微信后台收不到信息，要打开微信才知道有人发信息给我，怎么办？', '<div class="q-cnt">苹果手机微信后台别人发信息给我不会弹框，打开微信才知道，从后台退出几分钟内别人发来还是会弹框出来，但是过一会别人发来就没反应了需要打开微信才知道有信心，，查了设置都是有打开的，之前好好的，前几天突然就不会弹框了，别人发视频聊天，语音聊天给我我都不知道的，卸载了重新下载还是一样，怎么办吧？哪位好心人，大神，求指教</div>', '', 1482996634, 1488180634, 0, 1, 4, 0, 1, '120.84.10.168', 117);
INSERT INTO `ask_question` VALUES (100, 30, 30, 0, 0, 85, '匿名网友', 7, 'IO设备是(1011101.11)的二进制等于()十进制', '', '', 1482995795, 1488179795, 0, 0, 4, 0, 1, '120.84.10.168', 199);
INSERT INTO `ask_question` VALUES (101, 30, 30, 0, 0, 65, '.旧巷.', 8, '为什么要编程序', '', '', 1482996876, 1488180876, 0, 2, 0, 0, 1, '120.84.10.168', 163);
INSERT INTO `ask_question` VALUES (102, 30, 30, 0, 0, 71, 'o0O小角色o0O', 11, '哪里有虚拟机下裁', '<div class="q-cnt">哪里有虚拟机下裁</div>', '', 1482995799, 1482997479, 0, 2, 3, 0, 2, '120.84.10.168', 146);
INSERT INTO `ask_question` VALUES (103, 30, 30, 0, 0, 68, '破马张飞奔你家', 12, '基于h5语言民俗文化网站的设计与实现的内容简介怎么写？', '<div class="q-cnt">用UI设计</div>', '', 1482995800, 1482997480, 0, 1, 4, 0, 2, '120.84.10.168', 67);
INSERT INTO `ask_question` VALUES (104, 30, 30, 0, 0, 32, '破马张飞奔你家', 12, 'MyEclipse做Web项目出问题了，又不报错，网页也打不开，tomcat应该没问题', '<div class="q-cnt"><p><img src="http://p2.qhimg.com/t010164e36d25788e10.png"></p><p><img src="http://p4.qhimg.com/t01eea7e7d1d5e6a89d.png"></p><p><br></p></div>', '', 1482996707, 1482997847, 0, 3, 2, 0, 2, '120.84.10.168', 37);
INSERT INTO `ask_question` VALUES (105, 30, 30, 0, 0, 27, '东方大表哥科技', 15, 'eclipse写java代码时查看源码选中类名按f3没效果（已经关联了原码）', '<div class="q-cnt">ecli​pse写java代码时查看源码选中类名按f3没效果（已经关联了原码） ctrl+点击类名: 这个方式可以看到源码，但是选中类名按F3不行</div>', '', 1482994789, 1482997849, 0, 4, 4, 0, 2, '120.84.10.168', 36);
INSERT INTO `ask_question` VALUES (106, 30, 30, 0, 0, 47, '辣的咖啡', 25, '向程序发送命令时出现问题', '<div class="q-cnt"><p>向程序发送命令时出现问题<br></p></div>', '', 1482996231, 1482997851, 0, 1, 5, 0, 2, '120.84.10.168', 87);
INSERT INTO `ask_question` VALUES (111, 30, 30, 0, 0, 38, 'paul008', 27, 'Java中out.in in=new out().new in();和out.in in=new o', '<div class="q-cnt"><p>学内部类时遇到的问题。</p></div>', '', 1482999869, 1508919869, 0, 0, 3, 0, 1, '120.84.10.168', 98);
INSERT INTO `ask_question` VALUES (112, 30, 30, 0, 0, 70, '叼你老X', 30, '项目中引入Spring目的是什么？', '', '', 1483001430, 1508921430, 0, 6, 4, 0, 1, '120.84.10.168', 94);
INSERT INTO `ask_question` VALUES (113, 30, 30, 0, 0, 1, '狂仙_2012', 29, '怎样生成大量的唯一随机数', '<div class="q-cnt"><p>想要做一个网站，其中用户id要求定长八位唯一随机数，商品期号要求定长九位唯一随机数，随机数生成很简单，可是怎样能保证他的唯一性呢，求大神指教<br></p></div>', '', 1483001315, 1483003115, 0, 2, 4, 0, 2, '120.84.10.168', 133);
INSERT INTO `ask_question` VALUES (114, 30, 30, 0, 0, 35, 'paul008', 27, 'Java Socket如何发送解析自定义数包', '<div class="q-cnt">Java Socket如何发送解析自定义数据包，自定义数据包如何创建</div>', '', 1482999876, 1483003116, 0, 1, 5, 0, 2, '120.84.10.168', 17);
INSERT INTO `ask_question` VALUES (115, 30, 30, 0, 0, 11, '小卢_001', 31, '网络编程写软件指定服务怎样绑定指定端口？', '', '', 1482999758, 1508919758, 0, 1, 4, 0, 1, '120.84.10.168', 162);
INSERT INTO `ask_question` VALUES (108, 30, 30, 0, 0, 12, 'soul丶亮', 21, '以下java方法如何调用类内:类外', '<div class="q-cnt">分别对下列方法调用进行填写并解释说明 类内:1.非静态方法中调用①非静态方法:?                                              ②静态方法:?           2.静态方法中调用①非静态方法:?                                           ②静态方法:? 类外:</div>', '', 1482995635, 1482997915, 0, 1, 2, 0, 2, '120.84.10.168', 184);
INSERT INTO `ask_question` VALUES (109, 30, 30, 0, 0, 62, 'poorandrich_xj', 34, '我想搭建一个maven管理的spring+struts2+mybatisd的框架，有点蒙圈，求大神指', '', '', 1482995133, 1488179133, 0, 2, 3, 0, 1, '120.84.10.168', 20);
INSERT INTO `ask_question` VALUES (110, 30, 30, 0, 0, 87, '辣的咖啡', 25, 'java不同类之间的请求调用，', '<div class="q-cnt">在一个类中。想调用另外一个类的方法。第一次请求时执行一个语句。第二次请求时执行第二个语句。在调用过程中没有传递任何参数。怎么实现。求大神</div>', '', 1482995134, 1482997954, 0, 2, 4, 0, 2, '120.84.10.168', 177);

-- --------------------------------------------------------

-- 
-- 表的结构 `ask_question_attention`
-- 

CREATE TABLE `ask_question_attention` (
  `qid` int(10) NOT NULL,
  `followerid` int(10) NOT NULL,
  `follower` char(18) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY  (`qid`,`followerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `ask_question_attention`
-- 

INSERT INTO `ask_question_attention` VALUES (1, 2, 'admin', 1482992787);
INSERT INTO `ask_question_attention` VALUES (1, 1, 'rzld100', 1482992787);
INSERT INTO `ask_question_attention` VALUES (2, 4, '梦与毁毁于梦', 1482992928);
INSERT INTO `ask_question_attention` VALUES (4, 3, 'mayun', 1482992932);
INSERT INTO `ask_question_attention` VALUES (2, 3, 'mayun', 1482992928);
INSERT INTO `ask_question_attention` VALUES (3, 1, 'rzld100', 1482992930);
INSERT INTO `ask_question_attention` VALUES (3, 3, 'mayun', 1482992930);
INSERT INTO `ask_question_attention` VALUES (4, 5, '', 1482992932);
INSERT INTO `ask_question_attention` VALUES (4, 1, 'rzld100', 1482992932);
INSERT INTO `ask_question_attention` VALUES (5, 1, 'rzld100', 1482993070);
INSERT INTO `ask_question_attention` VALUES (5, 4, '梦与毁毁于梦', 1482993070);
INSERT INTO `ask_question_attention` VALUES (5, 2, 'admin', 1482993070);
INSERT INTO `ask_question_attention` VALUES (5, 3, 'mayun', 1482993070);
INSERT INTO `ask_question_attention` VALUES (6, 5, '', 1482993072);
INSERT INTO `ask_question_attention` VALUES (8, 4, '梦与毁毁于梦', 1482993077);
INSERT INTO `ask_question_attention` VALUES (6, 1, 'rzld100', 1482993072);
INSERT INTO `ask_question_attention` VALUES (17, 3, 'mayun', 1482993114);
INSERT INTO `ask_question_attention` VALUES (7, 5, '', 1482993075);
INSERT INTO `ask_question_attention` VALUES (17, 1, 'rzld100', 1482993114);
INSERT INTO `ask_question_attention` VALUES (7, 2, 'admin', 1482993075);
INSERT INTO `ask_question_attention` VALUES (8, 3, 'mayun', 1482993077);
INSERT INTO `ask_question_attention` VALUES (9, 2, 'admin', 1482993078);
INSERT INTO `ask_question_attention` VALUES (9, 1, 'rzld100', 1482993078);
INSERT INTO `ask_question_attention` VALUES (9, 5, '', 1482993078);
INSERT INTO `ask_question_attention` VALUES (9, 4, '梦与毁毁于梦', 1482993078);
INSERT INTO `ask_question_attention` VALUES (10, 3, 'mayun', 1482993079);
INSERT INTO `ask_question_attention` VALUES (11, 4, '梦与毁毁于梦', 1482993080);
INSERT INTO `ask_question_attention` VALUES (11, 5, '', 1482993080);
INSERT INTO `ask_question_attention` VALUES (11, 1, 'rzld100', 1482993080);
INSERT INTO `ask_question_attention` VALUES (11, 3, 'mayun', 1482993080);
INSERT INTO `ask_question_attention` VALUES (12, 5, '', 1482993100);
INSERT INTO `ask_question_attention` VALUES (17, 5, '', 1482993114);
INSERT INTO `ask_question_attention` VALUES (14, 5, '', 1482993108);
INSERT INTO `ask_question_attention` VALUES (12, 2, 'admin', 1482993100);
INSERT INTO `ask_question_attention` VALUES (12, 3, 'mayun', 1482993100);
INSERT INTO `ask_question_attention` VALUES (13, 4, '梦与毁毁于梦', 1482993103);
INSERT INTO `ask_question_attention` VALUES (13, 5, '', 1482993103);
INSERT INTO `ask_question_attention` VALUES (14, 3, 'mayun', 1482993108);
INSERT INTO `ask_question_attention` VALUES (14, 2, 'admin', 1482993108);
INSERT INTO `ask_question_attention` VALUES (15, 3, 'mayun', 1482993109);
INSERT INTO `ask_question_attention` VALUES (15, 4, '梦与毁毁于梦', 1482993109);
INSERT INTO `ask_question_attention` VALUES (16, 5, '', 1482993111);
INSERT INTO `ask_question_attention` VALUES (16, 1, 'rzld100', 1482993111);
INSERT INTO `ask_question_attention` VALUES (17, 4, '梦与毁毁于梦', 1482993114);
INSERT INTO `ask_question_attention` VALUES (18, 1, 'rzld100', 1482993115);
INSERT INTO `ask_question_attention` VALUES (18, 5, '', 1482993115);
INSERT INTO `ask_question_attention` VALUES (20, 4, '梦与毁毁于梦', 1482993118);
INSERT INTO `ask_question_attention` VALUES (19, 3, 'mayun', 1482993116);
INSERT INTO `ask_question_attention` VALUES (19, 1, 'rzld100', 1482993116);
INSERT INTO `ask_question_attention` VALUES (21, 5, '', 1482993120);
INSERT INTO `ask_question_attention` VALUES (20, 2, 'admin', 1482993118);
INSERT INTO `ask_question_attention` VALUES (21, 3, 'mayun', 1482993120);
INSERT INTO `ask_question_attention` VALUES (22, 4, '梦与毁毁于梦', 1482993121);
INSERT INTO `ask_question_attention` VALUES (22, 3, 'mayun', 1482993121);
INSERT INTO `ask_question_attention` VALUES (22, 2, 'admin', 1482993121);
INSERT INTO `ask_question_attention` VALUES (23, 4, '梦与毁毁于梦', 1482993122);
INSERT INTO `ask_question_attention` VALUES (23, 3, 'mayun', 1482993122);
INSERT INTO `ask_question_attention` VALUES (23, 5, '', 1482993122);
INSERT INTO `ask_question_attention` VALUES (23, 2, 'admin', 1482993122);
INSERT INTO `ask_question_attention` VALUES (24, 4, '梦与毁毁于梦', 1482993124);
INSERT INTO `ask_question_attention` VALUES (26, 1, 'rzld100', 1482993127);
INSERT INTO `ask_question_attention` VALUES (26, 4, '梦与毁毁于梦', 1482993127);
INSERT INTO `ask_question_attention` VALUES (27, 2, 'admin', 1482993128);
INSERT INTO `ask_question_attention` VALUES (27, 5, '', 1482993128);
INSERT INTO `ask_question_attention` VALUES (33, 2, 'admin', 1482993140);
INSERT INTO `ask_question_attention` VALUES (27, 1, 'rzld100', 1482993128);
INSERT INTO `ask_question_attention` VALUES (33, 4, '梦与毁毁于梦', 1482993140);
INSERT INTO `ask_question_attention` VALUES (55, 2, 'admin', 1482993187);
INSERT INTO `ask_question_attention` VALUES (43, 1, 'rzld100', 1482993161);
INSERT INTO `ask_question_attention` VALUES (28, 1, 'rzld100', 1482993132);
INSERT INTO `ask_question_attention` VALUES (28, 4, '梦与毁毁于梦', 1482993132);
INSERT INTO `ask_question_attention` VALUES (29, 3, 'mayun', 1482993133);
INSERT INTO `ask_question_attention` VALUES (29, 5, '', 1482993133);
INSERT INTO `ask_question_attention` VALUES (31, 4, '梦与毁毁于梦', 1482993136);
INSERT INTO `ask_question_attention` VALUES (31, 2, 'admin', 1482993136);
INSERT INTO `ask_question_attention` VALUES (30, 3, 'mayun', 1482993135);
INSERT INTO `ask_question_attention` VALUES (32, 2, 'admin', 1482993137);
INSERT INTO `ask_question_attention` VALUES (32, 3, 'mayun', 1482993137);
INSERT INTO `ask_question_attention` VALUES (32, 5, '', 1482993137);
INSERT INTO `ask_question_attention` VALUES (42, 3, 'mayun', 1482993160);
INSERT INTO `ask_question_attention` VALUES (33, 3, 'mayun', 1482993140);
INSERT INTO `ask_question_attention` VALUES (33, 1, 'rzld100', 1482993140);
INSERT INTO `ask_question_attention` VALUES (34, 5, '', 1482993141);
INSERT INTO `ask_question_attention` VALUES (34, 1, 'rzld100', 1482993141);
INSERT INTO `ask_question_attention` VALUES (35, 2, 'admin', 1482993142);
INSERT INTO `ask_question_attention` VALUES (35, 1, 'rzld100', 1482993142);
INSERT INTO `ask_question_attention` VALUES (35, 5, '', 1482993142);
INSERT INTO `ask_question_attention` VALUES (35, 3, 'mayun', 1482993142);
INSERT INTO `ask_question_attention` VALUES (37, 5, '', 1482993146);
INSERT INTO `ask_question_attention` VALUES (36, 1, 'rzld100', 1482993145);
INSERT INTO `ask_question_attention` VALUES (36, 4, '梦与毁毁于梦', 1482993145);
INSERT INTO `ask_question_attention` VALUES (36, 5, '', 1482993145);
INSERT INTO `ask_question_attention` VALUES (38, 1, 'rzld100', 1482993149);
INSERT INTO `ask_question_attention` VALUES (38, 2, 'admin', 1482993149);
INSERT INTO `ask_question_attention` VALUES (38, 3, 'mayun', 1482993149);
INSERT INTO `ask_question_attention` VALUES (39, 5, '', 1482993151);
INSERT INTO `ask_question_attention` VALUES (40, 3, 'mayun', 1482993152);
INSERT INTO `ask_question_attention` VALUES (41, 3, 'mayun', 1482993157);
INSERT INTO `ask_question_attention` VALUES (40, 2, 'admin', 1482993152);
INSERT INTO `ask_question_attention` VALUES (40, 1, 'rzld100', 1482993152);
INSERT INTO `ask_question_attention` VALUES (44, 2, 'admin', 1482993165);
INSERT INTO `ask_question_attention` VALUES (41, 1, 'rzld100', 1482993157);
INSERT INTO `ask_question_attention` VALUES (43, 2, 'admin', 1482993161);
INSERT INTO `ask_question_attention` VALUES (44, 3, 'mayun', 1482993165);
INSERT INTO `ask_question_attention` VALUES (0, 1, 'rzld100', 1482996306);
INSERT INTO `ask_question_attention` VALUES (97, 11, 'o0O小角色o0O', 1482997471);
INSERT INTO `ask_question_attention` VALUES (45, 2, 'admin', 1482993168);
INSERT INTO `ask_question_attention` VALUES (45, 3, 'mayun', 1482993168);
INSERT INTO `ask_question_attention` VALUES (45, 1, 'rzld100', 1482993168);
INSERT INTO `ask_question_attention` VALUES (46, 1, 'rzld100', 1482993170);
INSERT INTO `ask_question_attention` VALUES (46, 5, '', 1482993170);
INSERT INTO `ask_question_attention` VALUES (46, 3, 'mayun', 1482993170);
INSERT INTO `ask_question_attention` VALUES (49, 2, 'admin', 1482993174);
INSERT INTO `ask_question_attention` VALUES (48, 5, '', 1482993173);
INSERT INTO `ask_question_attention` VALUES (49, 4, '梦与毁毁于梦', 1482993174);
INSERT INTO `ask_question_attention` VALUES (48, 1, 'rzld100', 1482993173);
INSERT INTO `ask_question_attention` VALUES (50, 3, 'mayun', 1482993175);
INSERT INTO `ask_question_attention` VALUES (51, 2, 'admin', 1482993178);
INSERT INTO `ask_question_attention` VALUES (51, 5, '', 1482993178);
INSERT INTO `ask_question_attention` VALUES (52, 2, 'admin', 1482993181);
INSERT INTO `ask_question_attention` VALUES (52, 5, '', 1482993181);
INSERT INTO `ask_question_attention` VALUES (52, 1, 'rzld100', 1482993181);
INSERT INTO `ask_question_attention` VALUES (52, 4, '梦与毁毁于梦', 1482993181);
INSERT INTO `ask_question_attention` VALUES (53, 5, '', 1482993182);
INSERT INTO `ask_question_attention` VALUES (53, 4, '梦与毁毁于梦', 1482993182);
INSERT INTO `ask_question_attention` VALUES (62, 2, 'admin', 1482993202);
INSERT INTO `ask_question_attention` VALUES (54, 4, '梦与毁毁于梦', 1482993185);
INSERT INTO `ask_question_attention` VALUES (54, 1, 'rzld100', 1482993185);
INSERT INTO `ask_question_attention` VALUES (56, 4, '梦与毁毁于梦', 1482993189);
INSERT INTO `ask_question_attention` VALUES (55, 3, 'mayun', 1482993187);
INSERT INTO `ask_question_attention` VALUES (55, 1, 'rzld100', 1482993187);
INSERT INTO `ask_question_attention` VALUES (56, 5, '', 1482993189);
INSERT INTO `ask_question_attention` VALUES (56, 3, 'mayun', 1482993189);
INSERT INTO `ask_question_attention` VALUES (57, 4, '梦与毁毁于梦', 1482993191);
INSERT INTO `ask_question_attention` VALUES (57, 3, 'mayun', 1482993191);
INSERT INTO `ask_question_attention` VALUES (58, 2, 'admin', 1482993192);
INSERT INTO `ask_question_attention` VALUES (58, 4, '梦与毁毁于梦', 1482993192);
INSERT INTO `ask_question_attention` VALUES (59, 4, '梦与毁毁于梦', 1482993193);
INSERT INTO `ask_question_attention` VALUES (59, 2, 'admin', 1482993193);
INSERT INTO `ask_question_attention` VALUES (59, 3, 'mayun', 1482993193);
INSERT INTO `ask_question_attention` VALUES (59, 1, 'rzld100', 1482993193);
INSERT INTO `ask_question_attention` VALUES (69, 5, '', 1482995133);
INSERT INTO `ask_question_attention` VALUES (62, 1, 'rzld100', 1482993202);
INSERT INTO `ask_question_attention` VALUES (60, 2, 'admin', 1482993197);
INSERT INTO `ask_question_attention` VALUES (62, 4, '梦与毁毁于梦', 1482993202);
INSERT INTO `ask_question_attention` VALUES (62, 3, 'mayun', 1482993202);
INSERT INTO `ask_question_attention` VALUES (63, 1, 'rzld100', 1482993205);
INSERT INTO `ask_question_attention` VALUES (63, 4, '梦与毁毁于梦', 1482993205);
INSERT INTO `ask_question_attention` VALUES (64, 5, '', 1482993206);
INSERT INTO `ask_question_attention` VALUES (64, 3, 'mayun', 1482993206);
INSERT INTO `ask_question_attention` VALUES (64, 1, 'rzld100', 1482993206);
INSERT INTO `ask_question_attention` VALUES (65, 3, 'mayun', 1482993207);
INSERT INTO `ask_question_attention` VALUES (65, 4, '梦与毁毁于梦', 1482993207);
INSERT INTO `ask_question_attention` VALUES (65, 1, 'rzld100', 1482993207);
INSERT INTO `ask_question_attention` VALUES (65, 2, 'admin', 1482993207);
INSERT INTO `ask_question_attention` VALUES (67, 1, 'rzld100', 1482993258);
INSERT INTO `ask_question_attention` VALUES (66, 1, 'rzld100', 1482993208);
INSERT INTO `ask_question_attention` VALUES (68, 3, 'mayun', 1482993267);
INSERT INTO `ask_question_attention` VALUES (66, 2, 'admin', 1482993208);
INSERT INTO `ask_question_attention` VALUES (67, 3, 'mayun', 1482993258);
INSERT INTO `ask_question_attention` VALUES (67, 5, '', 1482993258);
INSERT INTO `ask_question_attention` VALUES (68, 2, 'admin', 1482993267);
INSERT INTO `ask_question_attention` VALUES (75, 4, '梦与毁毁于梦', 1482996711);
INSERT INTO `ask_question_attention` VALUES (70, 2, 'admin', 1482995170);
INSERT INTO `ask_question_attention` VALUES (69, 4, '梦与毁毁于梦', 1482995133);
INSERT INTO `ask_question_attention` VALUES (71, 5, '', 1482995172);
INSERT INTO `ask_question_attention` VALUES (70, 1, 'rzld100', 1482995170);
INSERT INTO `ask_question_attention` VALUES (71, 2, 'admin', 1482995172);
INSERT INTO `ask_question_attention` VALUES (71, 3, 'mayun', 1482995172);
INSERT INTO `ask_question_attention` VALUES (71, 4, '梦与毁毁于梦', 1482995172);
INSERT INTO `ask_question_attention` VALUES (73, 4, '梦与毁毁于梦', 1482995605);
INSERT INTO `ask_question_attention` VALUES (72, 4, '梦与毁毁于梦', 1482995173);
INSERT INTO `ask_question_attention` VALUES (74, 2, 'admin', 1482996390);
INSERT INTO `ask_question_attention` VALUES (74, 1, 'rzld100', 1482996390);
INSERT INTO `ask_question_attention` VALUES (75, 3, 'mayun', 1482996711);
INSERT INTO `ask_question_attention` VALUES (76, 2, 'admin', 1482996712);
INSERT INTO `ask_question_attention` VALUES (76, 5, '', 1482996712);
INSERT INTO `ask_question_attention` VALUES (76, 1, 'rzld100', 1482996712);
INSERT INTO `ask_question_attention` VALUES (76, 3, 'mayun', 1482996712);
INSERT INTO `ask_question_attention` VALUES (77, 5, '', 1482996715);
INSERT INTO `ask_question_attention` VALUES (77, 2, 'admin', 1482996715);
INSERT INTO `ask_question_attention` VALUES (77, 3, 'mayun', 1482996715);
INSERT INTO `ask_question_attention` VALUES (77, 4, '梦与毁毁于梦', 1482996715);
INSERT INTO `ask_question_attention` VALUES (78, 4, '梦与毁毁于梦', 1482996717);
INSERT INTO `ask_question_attention` VALUES (78, 2, 'admin', 1482996717);
INSERT INTO `ask_question_attention` VALUES (80, 5, '', 1482996721);
INSERT INTO `ask_question_attention` VALUES (81, 5, '', 1482996726);
INSERT INTO `ask_question_attention` VALUES (80, 3, 'mayun', 1482996721);
INSERT INTO `ask_question_attention` VALUES (81, 2, 'admin', 1482996726);
INSERT INTO `ask_question_attention` VALUES (83, 2, 'admin', 1482996736);
INSERT INTO `ask_question_attention` VALUES (82, 3, 'mayun', 1482996730);
INSERT INTO `ask_question_attention` VALUES (83, 3, 'mayun', 1482996736);
INSERT INTO `ask_question_attention` VALUES (84, 5, '', 1482996737);
INSERT INTO `ask_question_attention` VALUES (84, 3, 'mayun', 1482996737);
INSERT INTO `ask_question_attention` VALUES (85, 4, '梦与毁毁于梦', 1482996746);
INSERT INTO `ask_question_attention` VALUES (87, 3, 'mayun', 1482996757);
INSERT INTO `ask_question_attention` VALUES (85, 1, 'rzld100', 1482996746);
INSERT INTO `ask_question_attention` VALUES (87, 1, 'rzld100', 1482996757);
INSERT INTO `ask_question_attention` VALUES (90, 1, 'rzld100', 1482996919);
INSERT INTO `ask_question_attention` VALUES (90, 2, 'admin', 1482996919);
INSERT INTO `ask_question_attention` VALUES (90, 4, '梦与毁毁于梦', 1482996919);
INSERT INTO `ask_question_attention` VALUES (92, 3, 'mayun', 1482997335);
INSERT INTO `ask_question_attention` VALUES (91, 2, 'admin', 1482997264);
INSERT INTO `ask_question_attention` VALUES (91, 4, '梦与毁毁于梦', 1482997264);
INSERT INTO `ask_question_attention` VALUES (92, 6, '海蓝水晶', 1482997335);
INSERT INTO `ask_question_attention` VALUES (93, 8, '.旧巷.', 1482997462);
INSERT INTO `ask_question_attention` VALUES (93, 3, 'mayun', 1482997462);
INSERT INTO `ask_question_attention` VALUES (93, 5, '', 1482997462);
INSERT INTO `ask_question_attention` VALUES (94, 9, 'rqwg_2106', 1482997464);
INSERT INTO `ask_question_attention` VALUES (94, 4, '梦与毁毁于梦', 1482997464);
INSERT INTO `ask_question_attention` VALUES (97, 15, '东方大表哥科技', 1482997471);
INSERT INTO `ask_question_attention` VALUES (94, 6, '海蓝水晶', 1482997464);
INSERT INTO `ask_question_attention` VALUES (94, 5, '', 1482997464);
INSERT INTO `ask_question_attention` VALUES (0, 9, 'rqwg_2106', 1482997465);
INSERT INTO `ask_question_attention` VALUES (95, 5, '', 1482997467);
INSERT INTO `ask_question_attention` VALUES (95, 11, 'o0O小角色o0O', 1482997467);
INSERT INTO `ask_question_attention` VALUES (95, 12, '破马张飞奔你家', 1482997467);
INSERT INTO `ask_question_attention` VALUES (95, 7, '匿名网友', 1482997467);
INSERT INTO `ask_question_attention` VALUES (96, 5, '', 1482997468);
INSERT INTO `ask_question_attention` VALUES (96, 11, 'o0O小角色o0O', 1482997468);
INSERT INTO `ask_question_attention` VALUES (96, 4, '梦与毁毁于梦', 1482997468);
INSERT INTO `ask_question_attention` VALUES (96, 6, '海蓝水晶', 1482997468);
INSERT INTO `ask_question_attention` VALUES (0, 7, '匿名网友', 1482997477);
INSERT INTO `ask_question_attention` VALUES (0, 13, '土城城', 1482997470);
INSERT INTO `ask_question_attention` VALUES (0, 15, '东方大表哥科技', 1482997470);
INSERT INTO `ask_question_attention` VALUES (97, 5, '', 1482997471);
INSERT INTO `ask_question_attention` VALUES (98, 13, '土城城', 1482997472);
INSERT INTO `ask_question_attention` VALUES (98, 6, '海蓝水晶', 1482997472);
INSERT INTO `ask_question_attention` VALUES (98, 11, 'o0O小角色o0O', 1482997472);
INSERT INTO `ask_question_attention` VALUES (98, 9, 'rqwg_2106', 1482997472);
INSERT INTO `ask_question_attention` VALUES (99, 13, '土城城', 1482997474);
INSERT INTO `ask_question_attention` VALUES (99, 15, '东方大表哥科技', 1482997474);
INSERT INTO `ask_question_attention` VALUES (99, 6, '海蓝水晶', 1482997474);
INSERT INTO `ask_question_attention` VALUES (99, 5, '', 1482997474);
INSERT INTO `ask_question_attention` VALUES (100, 16, '梭子蟹', 1482997475);
INSERT INTO `ask_question_attention` VALUES (100, 14, '木木洞', 1482997475);
INSERT INTO `ask_question_attention` VALUES (100, 6, '海蓝水晶', 1482997475);
INSERT INTO `ask_question_attention` VALUES (100, 12, '破马张飞奔你家', 1482997475);
INSERT INTO `ask_question_attention` VALUES (115, 26, '女神小灰灰', 1483003118);
INSERT INTO `ask_question_attention` VALUES (0, 8, '.旧巷.', 1482997477);
INSERT INTO `ask_question_attention` VALUES (0, 6, '海蓝水晶', 1482997477);
INSERT INTO `ask_question_attention` VALUES (102, 12, '破马张飞奔你家', 1482997479);
INSERT INTO `ask_question_attention` VALUES (102, 15, '东方大表哥科技', 1482997479);
INSERT INTO `ask_question_attention` VALUES (102, 9, 'rqwg_2106', 1482997479);
INSERT INTO `ask_question_attention` VALUES (103, 13, '土城城', 1482997480);
INSERT INTO `ask_question_attention` VALUES (103, 17, '四面环山', 1482997480);
INSERT INTO `ask_question_attention` VALUES (103, 20, '随意的一天', 1482997480);
INSERT INTO `ask_question_attention` VALUES (103, 10, '殇丶善若水', 1482997480);
INSERT INTO `ask_question_attention` VALUES (104, 21, 'soul丶亮', 1482997847);
INSERT INTO `ask_question_attention` VALUES (105, 20, '随意的一天', 1482997849);
INSERT INTO `ask_question_attention` VALUES (104, 11, 'o0O小角色o0O', 1482997847);
INSERT INTO `ask_question_attention` VALUES (105, 14, '木木洞', 1482997849);
INSERT INTO `ask_question_attention` VALUES (106, 18, 'possible1024', 1482997851);
INSERT INTO `ask_question_attention` VALUES (105, 22, 'kele169', 1482997849);
INSERT INTO `ask_question_attention` VALUES (105, 19, '无穷点', 1482997849);
INSERT INTO `ask_question_attention` VALUES (106, 16, '梭子蟹', 1482997851);
INSERT INTO `ask_question_attention` VALUES (106, 20, '随意的一天', 1482997851);
INSERT INTO `ask_question_attention` VALUES (106, 19, '无穷点', 1482997851);
INSERT INTO `ask_question_attention` VALUES (106, 27, 'paul008', 1482997851);
INSERT INTO `ask_question_attention` VALUES (107, 20, '随意的一天', 1482997889);
INSERT INTO `ask_question_attention` VALUES (107, 21, 'soul丶亮', 1482997889);
INSERT INTO `ask_question_attention` VALUES (0, 20, '随意的一天', 1482997890);
INSERT INTO `ask_question_attention` VALUES (0, 21, 'soul丶亮', 1482997890);
INSERT INTO `ask_question_attention` VALUES (0, 22, 'kele169', 1482997890);
INSERT INTO `ask_question_attention` VALUES (0, 27, 'paul008', 1482997945);
INSERT INTO `ask_question_attention` VALUES (0, 17, '四面环山', 1482997890);
INSERT INTO `ask_question_attention` VALUES (0, 30, '叼你老X', 1482997890);
INSERT INTO `ask_question_attention` VALUES (108, 16, '梭子蟹', 1482997915);
INSERT INTO `ask_question_attention` VALUES (108, 22, 'kele169', 1482997915);
INSERT INTO `ask_question_attention` VALUES (0, 28, '雨落錵台', 1482997945);
INSERT INTO `ask_question_attention` VALUES (109, 24, '邪者归来', 1482997953);
INSERT INTO `ask_question_attention` VALUES (109, 29, '狂仙_2012', 1482997953);
INSERT INTO `ask_question_attention` VALUES (109, 27, 'paul008', 1482997953);
INSERT INTO `ask_question_attention` VALUES (110, 31, '小卢_001', 1482997954);
INSERT INTO `ask_question_attention` VALUES (110, 24, '邪者归来', 1482997954);
INSERT INTO `ask_question_attention` VALUES (110, 25, '辣的咖啡', 1482997954);
INSERT INTO `ask_question_attention` VALUES (110, 30, '叼你老X', 1482997954);
INSERT INTO `ask_question_attention` VALUES (112, 32, '其乐无穷2016', 1483003110);
INSERT INTO `ask_question_attention` VALUES (111, 28, '雨落錵台', 1483003109);
INSERT INTO `ask_question_attention` VALUES (111, 30, '叼你老X', 1483003109);
INSERT INTO `ask_question_attention` VALUES (111, 32, '其乐无穷2016', 1483003109);
INSERT INTO `ask_question_attention` VALUES (112, 23, '英雄侠义化身', 1483003110);
INSERT INTO `ask_question_attention` VALUES (112, 36, 'whoami1978', 1483003110);
INSERT INTO `ask_question_attention` VALUES (112, 26, '女神小灰灰', 1483003110);
INSERT INTO `ask_question_attention` VALUES (113, 37, '007叫爸爸', 1483003115);
INSERT INTO `ask_question_attention` VALUES (113, 29, '狂仙_2012', 1483003115);
INSERT INTO `ask_question_attention` VALUES (114, 38, '扛不住咋整', 1483003116);
INSERT INTO `ask_question_attention` VALUES (113, 22, 'kele169', 1483003115);
INSERT INTO `ask_question_attention` VALUES (113, 40, '伱灬不懂', 1483003115);
INSERT INTO `ask_question_attention` VALUES (114, 35, '问仙指路', 1483003116);
INSERT INTO `ask_question_attention` VALUES (114, 28, '雨落錵台', 1483003116);
INSERT INTO `ask_question_attention` VALUES (114, 29, '狂仙_2012', 1483003116);
INSERT INTO `ask_question_attention` VALUES (114, 36, 'whoami1978', 1483003116);
INSERT INTO `ask_question_attention` VALUES (0, 38, '扛不住咋整', 1483003117);
INSERT INTO `ask_question_attention` VALUES (115, 37, '007叫爸爸', 1483003118);
INSERT INTO `ask_question_attention` VALUES (115, 35, '问仙指路', 1483003118);
INSERT INTO `ask_question_attention` VALUES (115, 42, '山寨总书记', 1483003118);

-- --------------------------------------------------------

-- 
-- 表的结构 `ask_question_supply`
-- 

CREATE TABLE `ask_question_supply` (
  `id` int(4) NOT NULL auto_increment,
  `qid` int(10) NOT NULL,
  `content` text NOT NULL,
  `time` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `time` (`time`),
  KEY `qid` (`qid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `ask_question_supply`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_question_tag`
-- 

CREATE TABLE `ask_question_tag` (
  `qid` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `time` int(10) NOT NULL default '0',
  PRIMARY KEY  (`qid`,`name`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `ask_question_tag`
-- 

INSERT INTO `ask_question_tag` VALUES (1, '做什么', 1482992787);
INSERT INTO `ask_question_tag` VALUES (3, 'jquery', 1482992930);
INSERT INTO `ask_question_tag` VALUES (3, '元素', 1482992930);
INSERT INTO `ask_question_tag` VALUES (4, '接口', 1482992932);
INSERT INTO `ask_question_tag` VALUES (5, 'where', 1482993070);
INSERT INTO `ask_question_tag` VALUES (7, '数据库查询', 1482993075);
INSERT INTO `ask_question_tag` VALUES (7, 'false', 1482993075);
INSERT INTO `ask_question_tag` VALUES (8, '浏览器', 1482993077);
INSERT INTO `ask_question_tag` VALUES (8, '键盘', 1482993077);
INSERT INTO `ask_question_tag` VALUES (29, '字符串', 1482993133);
INSERT INTO `ask_question_tag` VALUES (12, 'jquery', 1482993100);
INSERT INTO `ask_question_tag` VALUES (15, 'mysql', 1482993109);
INSERT INTO `ask_question_tag` VALUES (15, '联合', 1482993109);
INSERT INTO `ask_question_tag` VALUES (15, '如何', 1482993109);
INSERT INTO `ask_question_tag` VALUES (16, '博客', 1482993111);
INSERT INTO `ask_question_tag` VALUES (39, '如何', 1482993151);
INSERT INTO `ask_question_tag` VALUES (17, '如何', 1482993114);
INSERT INTO `ask_question_tag` VALUES (17, '项目', 1482993114);
INSERT INTO `ask_question_tag` VALUES (20, '小说', 1482993118);
INSERT INTO `ask_question_tag` VALUES (20, '如何', 1482993118);
INSERT INTO `ask_question_tag` VALUES (20, '网站', 1482993118);
INSERT INTO `ask_question_tag` VALUES (20, '资源', 1482993118);
INSERT INTO `ask_question_tag` VALUES (23, '图片', 1482993122);
INSERT INTO `ask_question_tag` VALUES (29, 'bbbbb', 1482993133);
INSERT INTO `ask_question_tag` VALUES (33, '项目', 1482993140);
INSERT INTO `ask_question_tag` VALUES (34, '网页', 1482993141);
INSERT INTO `ask_question_tag` VALUES (35, 'content', 1482993142);
INSERT INTO `ask_question_tag` VALUES (35, '标签', 1482993142);
INSERT INTO `ask_question_tag` VALUES (40, 'android', 1482993152);
INSERT INTO `ask_question_tag` VALUES (67, '字符串', 1482993258);
INSERT INTO `ask_question_tag` VALUES (36, '服务器', 1482993145);
INSERT INTO `ask_question_tag` VALUES (41, '数据库', 1482993157);
INSERT INTO `ask_question_tag` VALUES (42, '超链接', 1482993160);
INSERT INTO `ask_question_tag` VALUES (43, '如何', 1482993161);
INSERT INTO `ask_question_tag` VALUES (43, '元素', 1482993161);
INSERT INTO `ask_question_tag` VALUES (45, '如何', 1482993168);
INSERT INTO `ask_question_tag` VALUES (47, '图片', 1482993171);
INSERT INTO `ask_question_tag` VALUES (48, 'Windows', 1482993173);
INSERT INTO `ask_question_tag` VALUES (49, '如何', 1482993174);
INSERT INTO `ask_question_tag` VALUES (51, '键盘', 1482993178);
INSERT INTO `ask_question_tag` VALUES (55, 'spring', 1482993187);
INSERT INTO `ask_question_tag` VALUES (55, '邮箱', 1482993187);
INSERT INTO `ask_question_tag` VALUES (56, '手机', 1482993189);
INSERT INTO `ask_question_tag` VALUES (58, 'android', 1482993192);
INSERT INTO `ask_question_tag` VALUES (58, '开发', 1482993192);
INSERT INTO `ask_question_tag` VALUES (59, 'Android', 1482993193);
INSERT INTO `ask_question_tag` VALUES (59, 'activity', 1482993193);
INSERT INTO `ask_question_tag` VALUES (60, '如何', 1482993197);
INSERT INTO `ask_question_tag` VALUES (62, 'button', 1482993202);
INSERT INTO `ask_question_tag` VALUES (63, 'verify', 1482993205);
INSERT INTO `ask_question_tag` VALUES (69, 'sql数据库', 1482995133);
INSERT INTO `ask_question_tag` VALUES (67, 'bbbbb', 1482993258);
INSERT INTO `ask_question_tag` VALUES (68, 'content', 1482993267);
INSERT INTO `ask_question_tag` VALUES (68, '标签', 1482993267);
INSERT INTO `ask_question_tag` VALUES (70, 'sql数据库', 1482995170);
INSERT INTO `ask_question_tag` VALUES (71, 'sql数据库', 1482995172);
INSERT INTO `ask_question_tag` VALUES (75, '用户', 1482996711);
INSERT INTO `ask_question_tag` VALUES (76, 'java', 1482996712);
INSERT INTO `ask_question_tag` VALUES (77, '计算器', 1482996715);
INSERT INTO `ask_question_tag` VALUES (77, 'Java', 1482996715);
INSERT INTO `ask_question_tag` VALUES (78, 'Java', 1482996717);
INSERT INTO `ask_question_tag` VALUES (78, '信息', 1482996717);
INSERT INTO `ask_question_tag` VALUES (79, 'JAVA', 1482996718);
INSERT INTO `ask_question_tag` VALUES (80, '程序', 1482996721);
INSERT INTO `ask_question_tag` VALUES (83, 'c程序', 1482996736);
INSERT INTO `ask_question_tag` VALUES (84, '编写程序', 1482996737);
INSERT INTO `ask_question_tag` VALUES (84, 'java', 1482996737);
INSERT INTO `ask_question_tag` VALUES (85, '虚拟机', 1482996746);
INSERT INTO `ask_question_tag` VALUES (85, '网络', 1482996746);
INSERT INTO `ask_question_tag` VALUES (87, 'blank', 1482996757);
INSERT INTO `ask_question_tag` VALUES (88, '不会英语', 1482996760);
INSERT INTO `ask_question_tag` VALUES (88, '起名字', 1482996760);
INSERT INTO `ask_question_tag` VALUES (89, '学编程', 1482996761);
INSERT INTO `ask_question_tag` VALUES (91, '后台运行', 1482997264);
INSERT INTO `ask_question_tag` VALUES (91, 'service', 1482997264);
INSERT INTO `ask_question_tag` VALUES (91, '程序', 1482997264);
INSERT INTO `ask_question_tag` VALUES (92, '任务栏', 1482997335);
INSERT INTO `ask_question_tag` VALUES (94, '垃圾回收', 1482997464);
INSERT INTO `ask_question_tag` VALUES (94, 'java', 1482997464);
INSERT INTO `ask_question_tag` VALUES (95, 'java', 1482997467);
INSERT INTO `ask_question_tag` VALUES (96, '中文版', 1482997468);
INSERT INTO `ask_question_tag` VALUES (102, '虚拟机', 1482997479);
INSERT INTO `ask_question_tag` VALUES (97, '任务栏', 1482997471);
INSERT INTO `ask_question_tag` VALUES (98, '腾迅', 1482997472);
INSERT INTO `ask_question_tag` VALUES (98, '朋友', 1482997472);
INSERT INTO `ask_question_tag` VALUES (99, '信息', 1482997474);
INSERT INTO `ask_question_tag` VALUES (100, '二进制', 1482997475);
INSERT INTO `ask_question_tag` VALUES (100, '十进制', 1482997475);
INSERT INTO `ask_question_tag` VALUES (101, '程序', 1482997476);
INSERT INTO `ask_question_tag` VALUES (103, '网站', 1482997480);
INSERT INTO `ask_question_tag` VALUES (104, '网页', 1482997847);
INSERT INTO `ask_question_tag` VALUES (104, '项目', 1482997847);
INSERT INTO `ask_question_tag` VALUES (105, 'java', 1482997849);
INSERT INTO `ask_question_tag` VALUES (106, '程序', 1482997851);
INSERT INTO `ask_question_tag` VALUES (109, '视频分享', 1482997953);
INSERT INTO `ask_question_tag` VALUES (0, '清华大学', 1483003117);
INSERT INTO `ask_question_tag` VALUES (108, 'java', 1482997915);
INSERT INTO `ask_question_tag` VALUES (108, '如何', 1482997915);
INSERT INTO `ask_question_tag` VALUES (110, 'java', 1482997954);
INSERT INTO `ask_question_tag` VALUES (111, 'Java', 1483003109);
INSERT INTO `ask_question_tag` VALUES (112, '项目', 1483003110);
INSERT INTO `ask_question_tag` VALUES (114, 'Socket', 1483003116);
INSERT INTO `ask_question_tag` VALUES (114, 'Java', 1483003116);
INSERT INTO `ask_question_tag` VALUES (114, '如何', 1483003116);
INSERT INTO `ask_question_tag` VALUES (0, '程序设计', 1483003117);
INSERT INTO `ask_question_tag` VALUES (0, '出版社', 1483003117);
INSERT INTO `ask_question_tag` VALUES (0, 'Java', 1483003117);
INSERT INTO `ask_question_tag` VALUES (115, '网络编程', 1483003118);
INSERT INTO `ask_question_tag` VALUES (115, '软件', 1483003118);

-- --------------------------------------------------------

-- 
-- 表的结构 `ask_recommend`
-- 

CREATE TABLE `ask_recommend` (
  `qid` int(10) unsigned NOT NULL default '0',
  `cid` smallint(5) unsigned NOT NULL default '0',
  `title` char(50) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `time` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`qid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `ask_recommend`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_session`
-- 

CREATE TABLE `ask_session` (
  `sid` char(16) NOT NULL default '',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `code` char(4) NOT NULL default '',
  `islogin` tinyint(1) NOT NULL default '0',
  `ip` varchar(20) default NULL COMMENT 'ip地址',
  `time` int(10) unsigned NOT NULL default '0',
  UNIQUE KEY `sid` (`sid`),
  KEY `uid` (`uid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `ask_session`
-- 

INSERT INTO `ask_session` VALUES ('764ed0a3b76208fa', 0, '', 0, '180.153.214.182', 1482997728);
INSERT INTO `ask_session` VALUES ('4d88bf5bb7a1f215', 3, 'gfs5', 1, NULL, 1482955759);
INSERT INTO `ask_session` VALUES ('ad69a505fdd2fe7f', 0, '', 0, '101.226.99.195', 1482997708);
INSERT INTO `ask_session` VALUES ('b506f9026c309660', 0, '', 0, '180.153.201.15', 1482997695);
INSERT INTO `ask_session` VALUES ('8b8c5429911d27b5', 0, '', 0, '183.57.53.177', 1482997684);
INSERT INTO `ask_session` VALUES ('41a5a0b3de0c05c5', 0, '', 0, '101.226.64.174', 1482997674);
INSERT INTO `ask_session` VALUES ('2f43b9984c599732', 0, '', 0, '101.226.99.196', 1482993686);
INSERT INTO `ask_session` VALUES ('1d0c604fb51da9f4', 2, '', 1, '120.84.10.168', 1482948212);
INSERT INTO `ask_session` VALUES ('02deb37316b538ab', 1, '', 1, '120.84.10.168', 1482950205);
INSERT INTO `ask_session` VALUES ('3051a34c77aa29d0', 0, '', 0, '101.226.89.123', 1482993678);
INSERT INTO `ask_session` VALUES ('913e9749975e0230', 0, '', 0, '101.226.125.16', 1482993678);
INSERT INTO `ask_session` VALUES ('25ad2c543bf177c2', 0, '', 0, '101.226.65.107', 1482993678);
INSERT INTO `ask_session` VALUES ('7278e66428cae5ae', 0, '', 0, '101.226.68.215', 1482993669);
INSERT INTO `ask_session` VALUES ('86d7bddffaa646da', 0, '', 0, '101.226.51.229', 1482993653);
INSERT INTO `ask_session` VALUES ('0c0986135aaab10a', 0, '', 0, '180.163.2.118', 1482993615);
INSERT INTO `ask_session` VALUES ('e505687a9b3875d7', 0, '', 0, '183.57.53.222', 1482993601);
INSERT INTO `ask_session` VALUES ('f1fee08737b1f2d2', 0, '', 0, '180.153.205.254', 1482993237);
INSERT INTO `ask_session` VALUES ('b7052145e3bfc483', 0, '', 0, '180.153.214.188', 1482993203);
INSERT INTO `ask_session` VALUES ('50cbea6fbd26ec1f', 0, '', 0, '101.226.68.215', 1482993185);
INSERT INTO `ask_session` VALUES ('eefd6319c703d80b', 0, '', 0, '120.84.10.168', 1483002216);
INSERT INTO `ask_session` VALUES ('dad704473749fe5b', 1, '', 2, '120.84.10.168', 1483006792);
INSERT INTO `ask_session` VALUES ('281356c95106e93e', 0, '', 0, '101.226.33.238', 1482985676);
INSERT INTO `ask_session` VALUES ('9349b25a99176ea5', 0, '', 0, '183.57.53.222', 1482985658);
INSERT INTO `ask_session` VALUES ('6fd40e87bec7dafe', 0, '', 0, '123.125.71.85', 1482974963);
INSERT INTO `ask_session` VALUES ('9bee968d3bcdfc46', 0, '', 0, '180.153.214.197', 1482955814);
INSERT INTO `ask_session` VALUES ('c2f24cd0844b81dd', 0, 'pbum', 0, NULL, 1483009968);
INSERT INTO `ask_session` VALUES ('8c97511f77e10de9', 0, '', 0, '112.90.82.218', 1482997730);
INSERT INTO `ask_session` VALUES ('be4e75cdeba2efcc', 0, '', 0, '101.226.69.246', 1482997740);
INSERT INTO `ask_session` VALUES ('d9de439424dcf4cb', 0, '', 0, '183.57.53.197', 1482998003);
INSERT INTO `ask_session` VALUES ('d3b9a2e79ed354e2', 0, '', 0, '180.153.205.253', 1482998018);
INSERT INTO `ask_session` VALUES ('b9bcdc65a6d1d8d6', 0, '', 0, '112.90.82.218', 1482998061);
INSERT INTO `ask_session` VALUES ('0a6c7a9d6cf1789d', 0, '', 0, '119.147.207.158', 1482998078);
INSERT INTO `ask_session` VALUES ('3835d641adce0ec3', 0, '', 0, '180.153.206.24', 1482998081);
INSERT INTO `ask_session` VALUES ('52269f047c5814dc', 0, '', 0, '183.57.53.177', 1482998083);
INSERT INTO `ask_session` VALUES ('8265cc7b9c158bec', 0, '', 0, '101.226.64.177', 1482998094);
INSERT INTO `ask_session` VALUES ('2a15e5b23ea0d1dd', 0, '', 0, '101.226.33.200', 1482998100);
INSERT INTO `ask_session` VALUES ('b78881ff9d1e77d5', 0, '', 0, '101.226.89.120', 1482998147);
INSERT INTO `ask_session` VALUES ('063cbe235c85b4a5', 0, '', 0, '111.13.102.135', 1483000111);
INSERT INTO `ask_session` VALUES ('98bb247b2fd10a0f', 0, '', 0, '111.13.102.6', 1483000114);
INSERT INTO `ask_session` VALUES ('a100e28df613d49c', 0, '', 0, '61.135.165.43', 1483000931);
INSERT INTO `ask_session` VALUES ('d6f71f6fa9c33052', 0, '', 0, '61.135.169.43', 1483000937);
INSERT INTO `ask_session` VALUES ('7e1654a0133a073e', 0, '', 0, '61.135.169.40', 1483000952);
INSERT INTO `ask_session` VALUES ('e9e01694840a91fb', 0, '', 0, '120.84.10.168', 1483002653);
INSERT INTO `ask_session` VALUES ('3d5a55beb02b1dcf', 0, '', 0, '120.84.10.168', 1483002742);
INSERT INTO `ask_session` VALUES ('ebcc632c6feadaf2', 0, '', 0, '120.84.10.168', 1483019340);
INSERT INTO `ask_session` VALUES ('9c7600b7c3023ad4', 0, '', 0, '183.57.53.177', 1483003694);
INSERT INTO `ask_session` VALUES ('e1102413a789e1c4', 0, '', 0, '183.57.53.196', 1483006959);
INSERT INTO `ask_session` VALUES ('77310aed1b9bb679', 0, '', 0, '101.226.33.201', 1483006976);
INSERT INTO `ask_session` VALUES ('5dc17cd32aec3b99', 0, '', 0, '101.226.33.218', 1483009810);
INSERT INTO `ask_session` VALUES ('919bdcbe8ae8647d', 0, '', 0, '180.153.214.198', 1483009869);
INSERT INTO `ask_session` VALUES ('5abe08a19b40acb2', 0, '', 0, '112.90.82.218', 1483009927);
INSERT INTO `ask_session` VALUES ('c29a710214386252', 0, '', 0, '101.226.33.204', 1483009943);
INSERT INTO `ask_session` VALUES ('385996aa82419efa', 0, '', 0, '183.57.53.222', 1483009966);
INSERT INTO `ask_session` VALUES ('6e977430be297a10', 0, '', 0, '61.151.226.202', 1483009976);

-- --------------------------------------------------------

-- 
-- 表的结构 `ask_setting`
-- 

CREATE TABLE `ask_setting` (
  `k` varchar(32) NOT NULL default '',
  `v` text NOT NULL,
  PRIMARY KEY  (`k`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `ask_setting`
-- 

INSERT INTO `ask_setting` VALUES ('site_name', '爱代码-编程社区');
INSERT INTO `ask_setting` VALUES ('meta_description', 'ask2问答系统');
INSERT INTO `ask_setting` VALUES ('meta_keywords', 'php问答系统,百度知道程序');
INSERT INTO `ask_setting` VALUES ('cookie_domain', '');
INSERT INTO `ask_setting` VALUES ('cookie_pre', 'ask_');
INSERT INTO `ask_setting` VALUES ('seo_prefix', '?');
INSERT INTO `ask_setting` VALUES ('seo_suffix', '.html');
INSERT INTO `ask_setting` VALUES ('date_format', 'Y/m/d');
INSERT INTO `ask_setting` VALUES ('time_format', 'H:i');
INSERT INTO `ask_setting` VALUES ('time_offset', '8');
INSERT INTO `ask_setting` VALUES ('time_diff', '0');
INSERT INTO `ask_setting` VALUES ('site_icp', '粤ICP备123525850号-1');
INSERT INTO `ask_setting` VALUES ('site_statcode', '');
INSERT INTO `ask_setting` VALUES ('banner_color', '#858c96');
INSERT INTO `ask_setting` VALUES ('banner_img', 'http://www.icodee.com/data/attach/banner/sitebanner.png');
INSERT INTO `ask_setting` VALUES ('allow_register', '1');
INSERT INTO `ask_setting` VALUES ('access_email', '');
INSERT INTO `ask_setting` VALUES ('censor_email', '');
INSERT INTO `ask_setting` VALUES ('censor_username', '');
INSERT INTO `ask_setting` VALUES ('maildefault', 'vip@domain.com');
INSERT INTO `ask_setting` VALUES ('mailsend', '1');
INSERT INTO `ask_setting` VALUES ('mailserver', 'smtp.domain.com');
INSERT INTO `ask_setting` VALUES ('mailport', '25');
INSERT INTO `ask_setting` VALUES ('mailauth', '0');
INSERT INTO `ask_setting` VALUES ('mailfrom', 'vip <vip@domain.com>');
INSERT INTO `ask_setting` VALUES ('mailauth_username', 'vip@domain.com');
INSERT INTO `ask_setting` VALUES ('mailauth_password', '123456');
INSERT INTO `ask_setting` VALUES ('maildelimiter', '0');
INSERT INTO `ask_setting` VALUES ('mailusername', '1');
INSERT INTO `ask_setting` VALUES ('mailsilent', '0');
INSERT INTO `ask_setting` VALUES ('credit1_register', '20');
INSERT INTO `ask_setting` VALUES ('credit2_register', '20');
INSERT INTO `ask_setting` VALUES ('credit1_login', '2');
INSERT INTO `ask_setting` VALUES ('credit2_login', '0');
INSERT INTO `ask_setting` VALUES ('credit1_ask', '5');
INSERT INTO `ask_setting` VALUES ('credit2_ask', '0');
INSERT INTO `ask_setting` VALUES ('credit1_answer', '2');
INSERT INTO `ask_setting` VALUES ('credit2_answer', '1');
INSERT INTO `ask_setting` VALUES ('credit1_message', '-1');
INSERT INTO `ask_setting` VALUES ('credit2_message', '0');
INSERT INTO `ask_setting` VALUES ('credit1_adopt', '5');
INSERT INTO `ask_setting` VALUES ('credit2_adopt', '2');
INSERT INTO `ask_setting` VALUES ('list_indexnosolve', '10');
INSERT INTO `ask_setting` VALUES ('list_indexcommend', '10');
INSERT INTO `ask_setting` VALUES ('list_indexreward', '8');
INSERT INTO `ask_setting` VALUES ('list_indexnote', '10');
INSERT INTO `ask_setting` VALUES ('list_indexhottag', '20');
INSERT INTO `ask_setting` VALUES ('list_indexexpert', '4');
INSERT INTO `ask_setting` VALUES ('list_indexallscore', '8');
INSERT INTO `ask_setting` VALUES ('list_indexweekscore', '8');
INSERT INTO `ask_setting` VALUES ('list_default', '20');
INSERT INTO `ask_setting` VALUES ('rss_ttl', '60');
INSERT INTO `ask_setting` VALUES ('code_register', '0');
INSERT INTO `ask_setting` VALUES ('code_login', '0');
INSERT INTO `ask_setting` VALUES ('code_ask', '1');
INSERT INTO `ask_setting` VALUES ('code_message', '1');
INSERT INTO `ask_setting` VALUES ('passport_type', '0');
INSERT INTO `ask_setting` VALUES ('passport_open', '0');
INSERT INTO `ask_setting` VALUES ('passport_key', '');
INSERT INTO `ask_setting` VALUES ('passport_client', '');
INSERT INTO `ask_setting` VALUES ('passport_server', '');
INSERT INTO `ask_setting` VALUES ('passport_login', 'login.php');
INSERT INTO `ask_setting` VALUES ('passport_logout', 'login.php?action=quit');
INSERT INTO `ask_setting` VALUES ('passport_register', 'register.php');
INSERT INTO `ask_setting` VALUES ('passport_expire', '3600');
INSERT INTO `ask_setting` VALUES ('passport_credit1', '0');
INSERT INTO `ask_setting` VALUES ('passport_credit2', '0');
INSERT INTO `ask_setting` VALUES ('overdue_days', '300');
INSERT INTO `ask_setting` VALUES ('ucenter_open', '0');
INSERT INTO `ask_setting` VALUES ('seo_title', '');
INSERT INTO `ask_setting` VALUES ('seo_keywords', '');
INSERT INTO `ask_setting` VALUES ('seo_description', '');
INSERT INTO `ask_setting` VALUES ('seo_headers', '爱代码-编程社区123525850');
INSERT INTO `ask_setting` VALUES ('notify_mail', '0');
INSERT INTO `ask_setting` VALUES ('notify_message', '1');
INSERT INTO `ask_setting` VALUES ('tpl_dir', 'zui');
INSERT INTO `ask_setting` VALUES ('verify_question', '0');
INSERT INTO `ask_setting` VALUES ('index_life', '10');
INSERT INTO `ask_setting` VALUES ('msgtpl', 'a:4:{i:0;a:2:{s:5:"title";s:36:"您的问题{wtbt}有了新回答！";s:7:"content";s:51:"你在{wzmc}上的提出的问题有了新回答！";}i:1;a:2:{s:5:"title";s:54:"恭喜，您对问题{wtbt}的回答已经被采纳！";s:7:"content";s:42:"你在{wzmc}上的回答内容被采纳！";}i:2;a:2:{s:5:"title";s:78:"抱歉，您的问题{wtbt}由于长时间没有处理，现已过期关闭！";s:7:"content";s:69:"您的问题{wtbt}由于长时间没有处理，现已过期关闭！";}i:3;a:2:{s:5:"title";s:42:"您对{wtbt}的回答有了新的评分！";s:7:"content";s:36:"您的回答{hdnr}有了新评分！";}}');
INSERT INTO `ask_setting` VALUES ('allow_outer', '3');
INSERT INTO `ask_setting` VALUES ('stopcopy_on', '0');
INSERT INTO `ask_setting` VALUES ('stopcopy_allowagent', 'webkit\r\nopera\r\nmsie\r\ncompatible\r\nbaiduspider\r\ngoogle\r\nsoso\r\nsogou\r\ngecko\r\nmozilla');
INSERT INTO `ask_setting` VALUES ('stopcopy_stopagent', '');
INSERT INTO `ask_setting` VALUES ('stopcopy_maxnum', '60');
INSERT INTO `ask_setting` VALUES ('editor_wordcount', 'false');
INSERT INTO `ask_setting` VALUES ('editor_elementpath', 'false');
INSERT INTO `ask_setting` VALUES ('editor_toolbars', '''source'',''Undo'', ''Redo'',''bold'',''simpleupload'', ''scrawl'', ''attachment'' ,''removeformat'',''fullscreen''');
INSERT INTO `ask_setting` VALUES ('gift_range', 'a:3:{i:0;s:2:"50";i:50;s:3:"100";i:100;s:3:"300";}');
INSERT INTO `ask_setting` VALUES ('usernamepre', 'ask_');
INSERT INTO `ask_setting` VALUES ('usercount', '0');
INSERT INTO `ask_setting` VALUES ('sum_onlineuser_time', '30');
INSERT INTO `ask_setting` VALUES ('sum_category_time', '60');
INSERT INTO `ask_setting` VALUES ('del_tmp_crontab', '1440');
INSERT INTO `ask_setting` VALUES ('allow_credit3', '0');
INSERT INTO `ask_setting` VALUES ('apend_question_num', '5');
INSERT INTO `ask_setting` VALUES ('time_friendly', '1');
INSERT INTO `ask_setting` VALUES ('register_clause', '');
INSERT INTO `ask_setting` VALUES ('tpl_wapdir', 'amazeuiwap');
INSERT INTO `ask_setting` VALUES ('wap_domain', '');
INSERT INTO `ask_setting` VALUES ('auth_key', '8BdS0M5Y5M1L6p8LdleedOcF0rb97Y6NfH9RatcOeV7Dd306c9e71Maq184j2Tew');
INSERT INTO `ask_setting` VALUES ('admin_email', 'webmaster@domain.com');
INSERT INTO `ask_setting` VALUES ('seo_index_title', '爱代码-编程社区123525850');
INSERT INTO `ask_setting` VALUES ('seo_index_keywords', '爱代码-编程社区123525850');
INSERT INTO `ask_setting` VALUES ('seo_index_description', '爱代码-编程社区123525850');
INSERT INTO `ask_setting` VALUES ('seo_question_title', '爱代码-编程社区123525850');
INSERT INTO `ask_setting` VALUES ('seo_question_keywords', '爱代码-编程社区123525850');
INSERT INTO `ask_setting` VALUES ('seo_question_description', '爱代码-编程社区123525850');
INSERT INTO `ask_setting` VALUES ('seo_category_title', '爱代码-编程社区123525850');
INSERT INTO `ask_setting` VALUES ('seo_category_keywords', '爱代码-编程社区123525850');
INSERT INTO `ask_setting` VALUES ('seo_category_description', '爱代码-编程社区123525850');
INSERT INTO `ask_setting` VALUES ('question_share', '');
INSERT INTO `ask_setting` VALUES ('qqlogin_avatar', '1');
INSERT INTO `ask_setting` VALUES ('site_alias', 'ask2问答系统');
INSERT INTO `ask_setting` VALUES ('maxindex_keywords', '4');
INSERT INTO `ask_setting` VALUES ('pagemaxindex_keywords', '4');
INSERT INTO `ask_setting` VALUES ('openweixin', '');
INSERT INTO `ask_setting` VALUES ('baidu_api', ' http://data.zz.baidu.com/urls?site=www.icodee.com&token=ksXHtKGFTDRFvzwr');
INSERT INTO `ask_setting` VALUES ('wxtoken', '3546060ff4d14gab024g4200');
INSERT INTO `ask_setting` VALUES ('unword', '主人，我不知道你要说什么。');
INSERT INTO `ask_setting` VALUES ('duoshuoname', '');
INSERT INTO `ask_setting` VALUES ('zl_domain', '');
INSERT INTO `ask_setting` VALUES ('allow_expert', '0');
INSERT INTO `ask_setting` VALUES ('qqlogin_open', '1');
INSERT INTO `ask_setting` VALUES ('qqlogin_appid', '43243244');
INSERT INTO `ask_setting` VALUES ('qqlogin_key', 'fdsf');
INSERT INTO `ask_setting` VALUES ('site_logo', 'http://www.icodee.com/data/tmp/sitelogo.png');
INSERT INTO `ask_setting` VALUES ('site_qrcode', '');
INSERT INTO `ask_setting` VALUES ('register_on', '0');
INSERT INTO `ask_setting` VALUES ('hot_on', '1');
INSERT INTO `ask_setting` VALUES ('title_description', '官方Q群:123525850');
INSERT INTO `ask_setting` VALUES ('search_shownum', '5');
INSERT INTO `ask_setting` VALUES ('search_placeholder', '搜搜就粗来啦！');
INSERT INTO `ask_setting` VALUES ('ucenter_url', '');
INSERT INTO `ask_setting` VALUES ('list_hot_words', '');
INSERT INTO `ask_setting` VALUES ('hot_words', 'a:1:{i:0;a:2:{s:1:"w";s:0:"";s:3:"qid";i:0;}}');
INSERT INTO `ask_setting` VALUES ('xunsearch_open', '0');
INSERT INTO `ask_setting` VALUES ('xunsearch_sdk_file', '');
INSERT INTO `ask_setting` VALUES ('seo_on', '0');

-- --------------------------------------------------------

-- 
-- 表的结构 `ask_site_log`
-- 

CREATE TABLE `ask_site_log` (
  `id` int(10) NOT NULL auto_increment,
  `guize` varchar(200) NOT NULL,
  `miaoshu` varchar(200) default NULL,
  `uid` int(10) default NULL,
  `username` varchar(200) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 AUTO_INCREMENT=126 ;

-- 
-- 导出表中的数据 `ask_site_log`
-- 

INSERT INTO `ask_site_log` VALUES (1, '', '', 1, 'admin', 1481191128);
INSERT INTO `ask_site_log` VALUES (2, 'admin_main', '', 1, 'admin', 1481191131);
INSERT INTO `ask_site_log` VALUES (3, 'admin_main/login', '', 1, 'admin', 1481191139);
INSERT INTO `ask_site_log` VALUES (4, 'admin_setting/base', '', 1, 'admin', 1481191143);
INSERT INTO `ask_site_log` VALUES (5, 'admin_setting/caiji', '', 1, 'admin', 1481191155);
INSERT INTO `ask_site_log` VALUES (6, 'admin_setting/ajaxpostpage', '', 1, 'admin', 1481191166);
INSERT INTO `ask_site_log` VALUES (7, 'admin_user', '', 1, 'admin', 1481191196);
INSERT INTO `ask_site_log` VALUES (8, 'admin_question', '', 1, 'admin', 1481191202);
INSERT INTO `ask_site_log` VALUES (9, 'question/view/1', '', 1, 'admin', 1481191207);
INSERT INTO `ask_site_log` VALUES (10, 'admin_question/delete', '', 1, 'admin', 1481191220);
INSERT INTO `ask_site_log` VALUES (11, 'admin_question/searchanswer', '', 1, 'admin', 1481191224);
INSERT INTO `ask_site_log` VALUES (12, 'admin_user/add', '', 1, 'admin', 1481191227);
INSERT INTO `ask_site_log` VALUES (13, 'admin_user/add', '', 1, 'admin', 1481191236);
INSERT INTO `ask_site_log` VALUES (14, 'admin_link', '', 1, 'admin', 1481191251);
INSERT INTO `ask_site_log` VALUES (15, 'api_user/loginapi', '', 1, 'admin', 1481262552);
INSERT INTO `ask_site_log` VALUES (16, '', '', 1, 'admin', 1481262555);
INSERT INTO `ask_site_log` VALUES (17, 'user/ajaxuserinfo/2', '', 1, 'admin', 1481262564);
INSERT INTO `ask_site_log` VALUES (18, 'user/space/2', '', 1, 'admin', 1481262564);
INSERT INTO `ask_site_log` VALUES (19, 'user/ajaxuserinfo/2', '', 1, 'admin', 1481262565);
INSERT INTO `ask_site_log` VALUES (20, 'user/ajaxuserinfo/2', '', 1, 'admin', 1481262571);
INSERT INTO `ask_site_log` VALUES (21, 'user/ajaxuserinfo/2', '', 1, 'admin', 1481262572);
INSERT INTO `ask_site_log` VALUES (22, 'message/send/2', '', 1, 'admin', 1481262574);
INSERT INTO `ask_site_log` VALUES (23, 'message/send/2', '', 1, 'admin', 1481262585);
INSERT INTO `ask_site_log` VALUES (24, 'message/send/2', '', 1, 'admin', 1481262633);
INSERT INTO `ask_site_log` VALUES (25, 'message/send/2', '', 1, 'admin', 1481262743);
INSERT INTO `ask_site_log` VALUES (26, 'message/send/2', '', 1, 'admin', 1481262749);
INSERT INTO `ask_site_log` VALUES (27, 'message/send/2', '', 1, 'admin', 1481264291);
INSERT INTO `ask_site_log` VALUES (28, 'admin_main', '', 1, 'admin', 1481264379);
INSERT INTO `ask_site_log` VALUES (29, 'admin_main/login', '', 1, 'admin', 1481264381);
INSERT INTO `ask_site_log` VALUES (30, 'admin_main/login', '', 1, 'admin', 1481264389);
INSERT INTO `ask_site_log` VALUES (31, 'admin_editor/setting', '', 1, 'admin', 1481264395);
INSERT INTO `ask_site_log` VALUES (32, 'admin_editor/setting', '', 1, 'admin', 1481264434);
INSERT INTO `ask_site_log` VALUES (33, 'admin_editor/setting', '', 1, 'admin', 1481264437);
INSERT INTO `ask_site_log` VALUES (34, 'admin_setting/cache', '', 1, 'admin', 1481264441);
INSERT INTO `ask_site_log` VALUES (35, '', '', 1, 'admin', 1481264446);
INSERT INTO `ask_site_log` VALUES (36, 'user/ajaxuserinfo/2', '', 1, 'admin', 1481264449);
INSERT INTO `ask_site_log` VALUES (37, 'user/ajaxuserinfo/2', '', 1, 'admin', 1481264450);
INSERT INTO `ask_site_log` VALUES (38, 'message/send/2', '', 1, 'admin', 1481264452);
INSERT INTO `ask_site_log` VALUES (39, 'user/ajaxuserinfo/2', '', 1, 'admin', 1481264452);
INSERT INTO `ask_site_log` VALUES (40, '', '', 1, 'admin', 1481265979);
INSERT INTO `ask_site_log` VALUES (41, 'user/ajaxuserinfo/2', '', 1, 'admin', 1481265997);
INSERT INTO `ask_site_log` VALUES (42, 'user/ajaxuserinfo/2', '', 1, 'admin', 1481265998);
INSERT INTO `ask_site_log` VALUES (43, 'message/send/2', '', 1, 'admin', 1481266000);
INSERT INTO `ask_site_log` VALUES (44, 'user/ajaxuserinfo/2', '', 1, 'admin', 1481266000);
INSERT INTO `ask_site_log` VALUES (45, 'update', '', 1, 'admin', 1481266016);
INSERT INTO `ask_site_log` VALUES (46, 'admin_editor/setting', '', 1, 'admin', 1481267804);
INSERT INTO `ask_site_log` VALUES (47, 'admin_editor/setting', '', 1, 'admin', 1481267899);
INSERT INTO `ask_site_log` VALUES (48, 'admin_main/stat', '', 1, 'admin', 1481268064);
INSERT INTO `ask_site_log` VALUES (49, 'admin_main/stat', '', 1, 'admin', 1481268194);
INSERT INTO `ask_site_log` VALUES (50, 'admin_main/stat', '', 1, 'admin', 1481268265);
INSERT INTO `ask_site_log` VALUES (51, 'admin_main/stat', '', 1, 'admin', 1481268292);
INSERT INTO `ask_site_log` VALUES (52, 'admin_main/stat', '', 1, 'admin', 1481268304);
INSERT INTO `ask_site_log` VALUES (53, 'admin_main/stat', '', 1, 'admin', 1481268417);
INSERT INTO `ask_site_log` VALUES (54, 'admin_main/stat', '', 1, 'admin', 1481268896);
INSERT INTO `ask_site_log` VALUES (55, 'admin_topic', '', 1, 'admin', 1481269729);
INSERT INTO `ask_site_log` VALUES (56, 'admin_setting/caiji', '', 1, 'admin', 1481269867);
INSERT INTO `ask_site_log` VALUES (57, 'admin_setting/ajaxpostpage', '', 1, 'admin', 1481269873);
INSERT INTO `ask_site_log` VALUES (58, 'admin_user', '', 1, 'admin', 1481269884);
INSERT INTO `ask_site_log` VALUES (59, 'admin_user', '', 1, 'admin', 1481270085);
INSERT INTO `ask_site_log` VALUES (60, 'admin_question', '', 1, 'admin', 1481270168);
INSERT INTO `ask_site_log` VALUES (61, 'question/view/4', '', 1, 'admin', 1481270171);
INSERT INTO `ask_site_log` VALUES (62, 'question/view/5', '', 1, 'admin', 1481270179);
INSERT INTO `ask_site_log` VALUES (63, 'admin_user', '', 1, 'admin', 1481270407);
INSERT INTO `ask_site_log` VALUES (64, '', '', 1, 'admin', 1481272904);
INSERT INTO `ask_site_log` VALUES (65, 'admin_main', '', 1, 'admin', 1481272907);
INSERT INTO `ask_site_log` VALUES (66, 'admin_main/login', '', 1, 'admin', 1481272915);
INSERT INTO `ask_site_log` VALUES (67, 'admin_setting/base', '', 1, 'admin', 1481272926);
INSERT INTO `ask_site_log` VALUES (68, 'admin_setting/base', '', 1, 'admin', 1481272931);
INSERT INTO `ask_site_log` VALUES (69, '', '', 1, 'admin', 1481272941);
INSERT INTO `ask_site_log` VALUES (70, '', '', 1, 'admin', 1481272946);
INSERT INTO `ask_site_log` VALUES (71, 'question/add', '', 1, 'admin', 1481272950);
INSERT INTO `ask_site_log` VALUES (72, 'question/ajaxgetcat', '', 1, 'admin', 1481272951);
INSERT INTO `ask_site_log` VALUES (73, 'question/ajaxgetcat', '', 1, 'admin', 1481272967);
INSERT INTO `ask_site_log` VALUES (74, 'question/add', '', 1, 'admin', 1481272997);
INSERT INTO `ask_site_log` VALUES (75, 'question/ajaxgetcat', '', 1, 'admin', 1481272998);
INSERT INTO `ask_site_log` VALUES (76, 'question/add', '', 1, 'admin', 1481273070);
INSERT INTO `ask_site_log` VALUES (77, 'question/ajaxgetcat', '', 1, 'admin', 1481273072);
INSERT INTO `ask_site_log` VALUES (78, 'question/ajaxgetcat', '', 1, 'admin', 1481273087);
INSERT INTO `ask_site_log` VALUES (79, 'question/ajaxadd', '', 1, 'admin', 1481273090);
INSERT INTO `ask_site_log` VALUES (80, 'question/ajaxadd', '', 1, 'admin', 1481273091);
INSERT INTO `ask_site_log` VALUES (81, 'question/add', '', 1, 'admin', 1481273143);
INSERT INTO `ask_site_log` VALUES (82, 'question/ajaxgetcat', '', 1, 'admin', 1481273144);
INSERT INTO `ask_site_log` VALUES (83, 'question/ajaxadd', '', 1, 'admin', 1481273150);
INSERT INTO `ask_site_log` VALUES (84, 'question/ajaxgetcat', '', 1, 'admin', 1481273159);
INSERT INTO `ask_site_log` VALUES (85, 'question/ajaxadd', '', 1, 'admin', 1481273160);
INSERT INTO `ask_site_log` VALUES (86, 'question/view/6', '', 1, 'admin', 1481273163);
INSERT INTO `ask_site_log` VALUES (87, 'question/view/6', '', 1, 'admin', 1481273193);
INSERT INTO `ask_site_log` VALUES (88, 'user/logout', '', 1, 'admin', 1481273213);
INSERT INTO `ask_site_log` VALUES (89, '', '', 1, 'admin', 1481273240);
INSERT INTO `ask_site_log` VALUES (90, 'user/logout', '', 1, 'admin', 1481273246);
INSERT INTO `ask_site_log` VALUES (91, 'user/default', '', 8, 'vvvvv', 1481274498);
INSERT INTO `ask_site_log` VALUES (92, 'user/logout', '', 8, 'vvvvv', 1481274768);
INSERT INTO `ask_site_log` VALUES (93, '', '', 1, 'admin', 1481274815);
INSERT INTO `ask_site_log` VALUES (94, '', '', 1, 'admin', 1481274834);
INSERT INTO `ask_site_log` VALUES (95, '', '', 1, 'admin', 1481274841);
INSERT INTO `ask_site_log` VALUES (96, 'admin_main', '', 1, 'admin', 1481274860);
INSERT INTO `ask_site_log` VALUES (97, 'admin_main/login', '', 1, 'admin', 1481274866);
INSERT INTO `ask_site_log` VALUES (98, 'admin_setting/base', '', 1, 'admin', 1481274870);
INSERT INTO `ask_site_log` VALUES (99, '', '', 1, 'admin', 1481274877);
INSERT INTO `ask_site_log` VALUES (100, '', '', 1, 'admin', 1481275407);
INSERT INTO `ask_site_log` VALUES (101, '', '', 1, 'admin', 1481275411);
INSERT INTO `ask_site_log` VALUES (102, 'question/view/4', '', 1, 'admin', 1481275413);
INSERT INTO `ask_site_log` VALUES (103, 'question/answer', '', 1, 'admin', 1481275418);
INSERT INTO `ask_site_log` VALUES (104, 'question/answer', '', 1, 'admin', 1481275441);
INSERT INTO `ask_site_log` VALUES (105, 'question/view/4', '', 1, 'admin', 1481275442);
INSERT INTO `ask_site_log` VALUES (106, 'question/view/4', '', 1, 'admin', 1481275445);
INSERT INTO `ask_site_log` VALUES (107, 'question/view/4', '', 1, 'admin', 1481275459);
INSERT INTO `ask_site_log` VALUES (108, 'question/view/4', '', 1, 'admin', 1481275537);
INSERT INTO `ask_site_log` VALUES (109, 'question/ajaxanswer', '', 1, 'admin', 1481275541);
INSERT INTO `ask_site_log` VALUES (110, 'question/ajaxanswer', '', 1, 'admin', 1481275547);
INSERT INTO `ask_site_log` VALUES (111, 'question/view/4', '', 1, 'admin', 1481275550);
INSERT INTO `ask_site_log` VALUES (112, 'question/view/4', '', 1, 'admin', 1481275791);
INSERT INTO `ask_site_log` VALUES (113, 'question/add', '', 1, 'admin', 1481275796);
INSERT INTO `ask_site_log` VALUES (114, 'admin_main', '', 1, 'admin', 1481275868);
INSERT INTO `ask_site_log` VALUES (115, 'admin_editor/setting', '', 1, 'admin', 1481275872);
INSERT INTO `ask_site_log` VALUES (116, 'admin_editor/setting', '', 1, 'admin', 1481275890);
INSERT INTO `ask_site_log` VALUES (117, '', '', 1, 'admin', 1481275895);
INSERT INTO `ask_site_log` VALUES (118, 'question/add', '', 1, 'admin', 1481275898);
INSERT INTO `ask_site_log` VALUES (119, 'question/add', '', 1, 'admin', 1481276001);
INSERT INTO `ask_site_log` VALUES (120, 'question/add', '', 1, 'admin', 1481276721);
INSERT INTO `ask_site_log` VALUES (121, 'question/add', '', 1, 'admin', 1481276837);
INSERT INTO `ask_site_log` VALUES (122, 'question/add', '', 1, 'admin', 1481276877);
INSERT INTO `ask_site_log` VALUES (123, 'question/add', '', 1, 'admin', 1481276900);
INSERT INTO `ask_site_log` VALUES (124, '', '', 1, 'admin', 1481528601);
INSERT INTO `ask_site_log` VALUES (125, 'question/add', '', 1, 'admin', 1481528606);

-- --------------------------------------------------------

-- 
-- 表的结构 `ask_tid_qid`
-- 

CREATE TABLE `ask_tid_qid` (
  `tid` int(10) NOT NULL default '0',
  `qid` int(10) NOT NULL default '0',
  PRIMARY KEY  (`tid`,`qid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `ask_tid_qid`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_topic`
-- 

CREATE TABLE `ask_topic` (
  `id` int(10) NOT NULL auto_increment,
  `title` varchar(50) default NULL,
  `describtion` text,
  `image` varchar(100) default NULL,
  `displayorder` int(10) NOT NULL default '0',
  `author` varchar(200) NOT NULL,
  `authorid` int(10) NOT NULL,
  `views` int(10) NOT NULL,
  `articleclassid` int(10) NOT NULL,
  `isphone` int(10) NOT NULL,
  `viewtime` int(10) unsigned NOT NULL,
  `ispc` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `ask_topic`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_topic_tag`
-- 

CREATE TABLE `ask_topic_tag` (
  `aid` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY  (`aid`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `ask_topic_tag`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_topicclass`
-- 

CREATE TABLE `ask_topicclass` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(200) NOT NULL,
  `dir` varchar(200) NOT NULL,
  `pid` int(10) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `articles` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `ask_topicclass`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_user`
-- 

CREATE TABLE `ask_user` (
  `uid` mediumint(8) unsigned NOT NULL auto_increment,
  `username` char(18) NOT NULL,
  `password` char(32) default NULL,
  `email` varchar(40) default NULL,
  `groupid` tinyint(3) unsigned NOT NULL default '7',
  `credits` int(10) NOT NULL default '0',
  `credit1` int(10) NOT NULL default '0',
  `credit2` int(10) NOT NULL default '0',
  `credit3` int(10) NOT NULL default '0',
  `regip` char(15) default NULL,
  `regtime` int(10) NOT NULL default '0',
  `lastlogin` int(10) unsigned NOT NULL default '0',
  `gender` tinyint(1) unsigned NOT NULL default '0',
  `bday` date default NULL,
  `phone` varchar(30) default NULL,
  `qq` varchar(15) default NULL,
  `msn` varchar(40) default NULL,
  `authstr` varchar(25) default NULL,
  `signature` mediumtext,
  `introduction` varchar(200) default NULL,
  `questions` int(10) unsigned NOT NULL default '0',
  `answers` int(10) unsigned NOT NULL default '0',
  `adopts` int(10) unsigned NOT NULL default '0',
  `supports` int(10) NOT NULL default '0',
  `followers` int(10) NOT NULL default '0',
  `attentions` int(10) NOT NULL default '0',
  `isnotify` tinyint(1) unsigned NOT NULL default '7',
  `elect` int(10) NOT NULL default '0',
  `expert` tinyint(2) NOT NULL default '0',
  `chuli` int(10) NOT NULL,
  `bankcard` varchar(200) default NULL,
  `activecode` varchar(200) default NULL,
  `active` int(10) default '0',
  `mypay` int(10) default '0',
  `fromsite` int(10) default '0',
  `isblack` int(10) default '0',
  PRIMARY KEY  (`uid`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

-- 
-- 导出表中的数据 `ask_user`
-- 

INSERT INTO `ask_user` VALUES (1, 'rzld100', '123342c78a1a73c95a83aa9e1490edd8', '80598592@qq.com', 1, 200, 100, 100, 0, '120.84.10.168', 0, 1482989773, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 69, 10, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 0, 0);
INSERT INTO `ask_user` VALUES (2, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '360649012@qq.com', 7, 0, 20, 20, 0, '120.84.10.168', 1482948036, 1482948036, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 65, 8, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 0, 0);
INSERT INTO `ask_user` VALUES (3, 'mayun', 'e10adc3949ba59abbe56e057f20f883e', '66666@qq.com', 7, 0, 20, 20, 0, '117.136.31.138', 1482955538, 1482955538, 2, '1911-01-01', '', '', '', NULL, '', '', 30, 63, 9, 0, 0, 0, 3, 0, 0, 0, NULL, NULL, 0, 0, 0, 0);
INSERT INTO `ask_user` VALUES (4, '梦与毁毁于梦', 'e10adc3949ba59abbe56e057f20f883e', '15177307@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482992787, 1482992787, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, 76, 17, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (5, '', 'e10adc3949ba59abbe56e057f20f883e', '68092278@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482992928, 1482992928, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 15, 5, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (6, '海蓝水晶', 'e10adc3949ba59abbe56e057f20f883e', '13994310@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997264, 1482997264, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (7, '匿名网友', 'e10adc3949ba59abbe56e057f20f883e', '53153923@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997335, 1482997335, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 11, 3, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (8, '.旧巷.', 'e10adc3949ba59abbe56e057f20f883e', '44643588@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997335, 1482997335, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2, 0, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (9, 'rqwg_2106', 'e10adc3949ba59abbe56e057f20f883e', '1415913@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997462, 1482997462, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (10, '殇丶善若水', 'e10adc3949ba59abbe56e057f20f883e', '48237847@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997464, 1482997464, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (11, 'o0O小角色o0O', 'e10adc3949ba59abbe56e057f20f883e', '97640041@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997465, 1482997465, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 5, 1, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (12, '破马张飞奔你家', 'e10adc3949ba59abbe56e057f20f883e', '59974263@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997465, 1482997465, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 0, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (13, '土城城', 'e10adc3949ba59abbe56e057f20f883e', '11839565@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997467, 1482997467, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 0, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (14, '木木洞', 'e10adc3949ba59abbe56e057f20f883e', '16375393@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997467, 1482997467, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (15, '东方大表哥科技', 'e10adc3949ba59abbe56e057f20f883e', '64854125@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997468, 1482997468, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (16, '梭子蟹', 'e10adc3949ba59abbe56e057f20f883e', '14238755@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997470, 1482997470, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (17, '四面环山', 'e10adc3949ba59abbe56e057f20f883e', '19749348@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997471, 1482997471, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (18, 'possible1024', 'e10adc3949ba59abbe56e057f20f883e', '57750108@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997471, 1482997471, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (19, '无穷点', 'e10adc3949ba59abbe56e057f20f883e', '42171969@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997474, 1482997474, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (20, '随意的一天', 'e10adc3949ba59abbe56e057f20f883e', '52538282@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997476, 1482997476, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (21, 'soul丶亮', 'e10adc3949ba59abbe56e057f20f883e', '6757507@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997477, 1482997477, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (22, 'kele169', 'e10adc3949ba59abbe56e057f20f883e', '57541876@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997479, 1482997479, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (23, '英雄侠义化身', 'e10adc3949ba59abbe56e057f20f883e', '60411851@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997480, 1482997480, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (24, '邪者归来', 'e10adc3949ba59abbe56e057f20f883e', '61987169@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997847, 1482997847, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 1, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (25, '辣的咖啡', 'e10adc3949ba59abbe56e057f20f883e', '54862026@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997847, 1482997847, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, 0, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (26, '女神小灰灰', 'e10adc3949ba59abbe56e057f20f883e', '48639221@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997847, 1482997847, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (27, 'paul008', 'e10adc3949ba59abbe56e057f20f883e', '75464884@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997849, 1482997849, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 0, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (28, '雨落錵台', 'e10adc3949ba59abbe56e057f20f883e', '27695346@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997849, 1482997849, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 1, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (29, '狂仙_2012', 'e10adc3949ba59abbe56e057f20f883e', '30716213@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997849, 1482997849, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (30, '叼你老X', 'e10adc3949ba59abbe56e057f20f883e', '71979268@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997851, 1482997851, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 1, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (31, '小卢_001', 'e10adc3949ba59abbe56e057f20f883e', '52707282@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997945, 1482997945, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (32, '其乐无穷2016', 'e10adc3949ba59abbe56e057f20f883e', '76083543@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997945, 1482997945, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (33, '360U574763972', 'e10adc3949ba59abbe56e057f20f883e', '61818169@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997945, 1482997945, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (34, 'poorandrich_xj', 'e10adc3949ba59abbe56e057f20f883e', '85662197@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997945, 1482997945, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (35, '问仙指路', 'e10adc3949ba59abbe56e057f20f883e', '31205105@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997945, 1482997945, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (36, 'whoami1978', 'e10adc3949ba59abbe56e057f20f883e', '43032056@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997954, 1482997954, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (37, '007叫爸爸', 'e10adc3949ba59abbe56e057f20f883e', '61323242@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1482997954, 1482997954, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (38, '扛不住咋整', 'e10adc3949ba59abbe56e057f20f883e', '93405999@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1483003110, 1483003110, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (39, '淡淡的风1111', 'e10adc3949ba59abbe56e057f20f883e', '16619839@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1483003110, 1483003110, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (40, '伱灬不懂', 'e10adc3949ba59abbe56e057f20f883e', '50793965@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1483003110, 1483003110, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (41, '易兮_', 'e10adc3949ba59abbe56e057f20f883e', '55049133@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1483003110, 1483003110, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 1, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (42, '山寨总书记', 'e10adc3949ba59abbe56e057f20f883e', '11688673@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1483003117, 1483003117, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `ask_user` VALUES (43, '饕餮幸福', 'e10adc3949ba59abbe56e057f20f883e', '83413899@qq.com', 7, 0, 0, 0, 0, '120.84.10.168', 1483003118, 1483003118, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 7, 0, 0, 0, NULL, NULL, 0, 0, 1, 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `ask_user_attention`
-- 

CREATE TABLE `ask_user_attention` (
  `uid` int(10) NOT NULL,
  `followerid` int(10) NOT NULL,
  `follower` char(18) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY  (`uid`,`followerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `ask_user_attention`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_user_category`
-- 

CREATE TABLE `ask_user_category` (
  `uid` int(10) NOT NULL,
  `cid` int(4) NOT NULL,
  PRIMARY KEY  (`uid`,`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `ask_user_category`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_user_readlog`
-- 

CREATE TABLE `ask_user_readlog` (
  `uid` int(10) NOT NULL,
  `qid` int(10) NOT NULL,
  PRIMARY KEY  (`uid`,`qid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `ask_user_readlog`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_userbank`
-- 

CREATE TABLE `ask_userbank` (
  `id` int(10) NOT NULL,
  `fromuid` int(10) NOT NULL,
  `touid` int(10) NOT NULL,
  `operation` varchar(200) NOT NULL,
  `money` int(10) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `ask_userbank`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_usergroup`
-- 

CREATE TABLE `ask_usergroup` (
  `groupid` smallint(6) unsigned NOT NULL auto_increment,
  `level` int(4) NOT NULL default '1' COMMENT '用户级别',
  `grouptitle` char(30) NOT NULL default '',
  `grouptype` tinyint(1) NOT NULL default '2',
  `creditslower` int(10) NOT NULL,
  `creditshigher` int(10) NOT NULL default '0',
  `questionlimits` int(10) NOT NULL default '0',
  `answerlimits` int(10) NOT NULL default '0',
  `credit3limits` int(10) NOT NULL default '0',
  `regulars` text NOT NULL,
  `doarticle` int(10) default '0',
  `articlelimits` int(10) default '1',
  PRIMARY KEY  (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

-- 
-- 导出表中的数据 `ask_usergroup`
-- 

INSERT INTO `ask_usergroup` VALUES (1, 0, '超级管理员', 1, 0, 1, 0, 0, 0, 'user/qqlogin,user/register,index/default,category/view,category/list,question/view,category/recommend,note/list,note/view,rss/category,rss/list,rss/question,user/space,user/scorelist,question/search,question/add,gift/default,gift/search,gift/add\r\n', 0, 1);
INSERT INTO `ask_usergroup` VALUES (2, 0, '管理员', 1, 0, 1, 0, 0, 0, 'user/qqlogin,user/register,index/default,category/view,category/list,question/view,category/recommend,note/list,note/view,rss/category,rss/list,rss/question,user/space,user/scorelist,question/search,question/add,gift/default,gift/search,gift/add\r\n,user/sendcheckmail,user/editemail,user/sendcheckmail,user/editemail', 0, 1);
INSERT INTO `ask_usergroup` VALUES (3, 0, '分类员', 1, 0, 1, 0, 0, 0, 'user/qqlogin,user/register,index/default,category/view,category/list,question/view,category/recommend,note/list,note/view,rss/category,rss/list,rss/question,user/space,user/scorelist,question/search,question/add,gift/default,gift/search,gift/add\r\n,user/sendcheckmail,user/editemail,user/sendcheckmail,user/editemail', 0, 1);
INSERT INTO `ask_usergroup` VALUES (6, 0, '游客', 3, 0, 1, 0, 0, 0, 'user/register,user/editimg,index/default,category/view,category/list,question/view,topic/default,note/list,note/view,rss/category,rss/list,rss/question,user/scorelist,user/activelist,expert/default,user/qqlogin,gift/default,gift/search,gift/add,question/search,user/space_ask,user/space_answer,user/space', 0, 1);
INSERT INTO `ask_usergroup` VALUES (7, 1, '书童', 2, 0, 80, 3, 3, 5, 'user/register,user/editimg,index/default,category/view,category/list,question/view,question/follow,topic/default,note/list,note/view,rss/category,rss/list,rss/question,user/scorelist,user/activelist,expert/default,user/qqlogin,gift/default,gift/search,gift/add,question/search,question/add,question/answer,doing/default,user/space_ask,user/space_answer,user/space,answer/append,answer/addcomment,question/edittag,favorite/add,inform/add,question/answercomment,note/addcomment,question/attentto,user/attentto,user/register,user/recommend,user/default,user/score,user/recharge,ebank/aliapyback,ebank/aliapytransfer,user/ask,user/answer,user/follower,user/attention,favorite/default,favorite/delete,question/addfavorite,user/profile,user/uppass,user/editimg,user/saveimg,user/mycategory,user/unchainauth,user/level,attach/uploadimage,question/adopt,question/close,question/supply,question/addscore,question/editanswer,question/search,message/send,message/new,message/personal,message/system,message/outbox,message/view,message/remove,message/removedialog,user/sendcheckmail,user/editemail,user/sendcheckmail,user/editemail', 0, 1);
INSERT INTO `ask_usergroup` VALUES (8, 2, '书生', 2, 80, 400, 5, 5, 8, 'user/register,user/editimg,index/default,category/view,category/list,question/view,question/follow,topic/default,note/list,note/view,rss/category,rss/list,rss/question,user/scorelist,user/activelist,expert/default,user/qqlogin,gift/default,gift/search,gift/add,question/search,question/add,question/answer,doing/default,user/space_ask,user/space_answer,user/space,answer/append,answer/addcomment,question/edittag,favorite/add,inform/add,question/answercomment,note/addcomment,question/attentto,user/attentto,user/register,user/recommend,user/default,user/score,user/recharge,ebank/aliapyback,ebank/aliapytransfer,user/ask,user/answer,user/follower,user/attention,favorite/default,favorite/delete,question/addfavorite,user/profile,user/uppass,user/editimg,user/saveimg,user/mycategory,user/unchainauth,user/level,attach/uploadimage,question/adopt,question/close,question/supply,question/addscore,question/editanswer,question/search,message/send,message/new,message/personal,message/system,message/outbox,message/view,message/remove,message/removedialog,user/sendcheckmail,user/editemail,user/sendcheckmail,user/editemail', 0, 1);
INSERT INTO `ask_usergroup` VALUES (9, 3, '秀才', 2, 400, 800, 10, 10, 10, 'user/register,user/editimg,index/default,category/view,category/list,question/view,question/follow,topic/default,note/list,note/view,rss/category,rss/list,rss/question,user/scorelist,user/activelist,expert/default,user/qqlogin,gift/default,gift/search,gift/add,question/search,question/add,question/answer,doing/default,user/space_ask,user/space_answer,user/space,answer/append,answer/addcomment,question/edittag,favorite/add,inform/add,question/answercomment,note/addcomment,question/attentto,user/attentto,user/register,user/recommend,user/default,user/score,user/recharge,ebank/aliapyback,ebank/aliapytransfer,user/ask,user/answer,user/follower,user/attention,favorite/default,favorite/delete,question/addfavorite,user/profile,user/uppass,user/editimg,user/saveimg,user/mycategory,user/unchainauth,user/level,attach/uploadimage,question/adopt,question/close,question/supply,question/addscore,question/editanswer,question/search,message/send,message/new,message/personal,message/system,message/outbox,message/view,message/remove,message/removedialog,user/sendcheckmail,user/editemail,user/sendcheckmail,user/editemail', 0, 1);
INSERT INTO `ask_usergroup` VALUES (10, 4, '举人', 2, 800, 2000, 15, 15, 12, 'user/register,user/editimg,index/default,category/view,category/list,question/view,question/follow,topic/default,note/list,note/view,rss/category,rss/list,rss/question,user/scorelist,user/activelist,expert/default,user/qqlogin,gift/default,gift/search,gift/add,question/search,question/add,question/answer,doing/default,user/space_ask,user/space_answer,user/space,answer/append,answer/addcomment,question/edittag,favorite/add,inform/add,question/answercomment,note/addcomment,question/attentto,user/attentto,user/register,user/recommend,user/default,user/score,user/recharge,ebank/aliapyback,ebank/aliapytransfer,user/ask,user/answer,user/follower,user/attention,favorite/default,favorite/delete,question/addfavorite,user/profile,user/uppass,user/editimg,user/saveimg,user/mycategory,user/unchainauth,user/level,attach/uploadimage,question/adopt,question/close,question/supply,question/addscore,question/editanswer,question/search,message/send,message/new,message/personal,message/system,message/outbox,message/view,message/remove,message/removedialog,user/sendcheckmail,user/editemail,user/sendcheckmail,user/editemail', 0, 1);
INSERT INTO `ask_usergroup` VALUES (11, 5, '解元', 2, 2000, 4000, 10, 10, 10, 'user/register,user/editimg,index/default,category/view,category/list,question/view,question/follow,topic/default,note/list,note/view,rss/category,rss/list,rss/question,user/scorelist,user/activelist,expert/default,user/qqlogin,gift/default,gift/search,gift/add,question/search,question/add,question/answer,doing/default,user/space_ask,user/space_answer,user/space,answer/append,answer/addcomment,question/edittag,favorite/add,inform/add,question/answercomment,note/addcomment,question/attentto,user/attentto,user/register,user/recommend,user/default,user/score,user/recharge,ebank/aliapyback,ebank/aliapytransfer,user/ask,user/answer,user/follower,user/attention,favorite/default,favorite/delete,question/addfavorite,user/profile,user/uppass,user/editimg,user/saveimg,user/mycategory,user/unchainauth,user/level,attach/uploadimage,question/adopt,question/close,question/supply,question/addscore,question/editanswer,question/search,message/send,message/new,message/personal,message/system,message/outbox,message/view,message/remove,message/removedialog,user/sendcheckmail,user/editemail,user/sendcheckmail,user/editemail', 0, 1);
INSERT INTO `ask_usergroup` VALUES (12, 6, '贡士', 2, 4000, 7000, 15, 15, 20, 'user/register,user/editimg,index/default,category/view,category/list,question/view,question/follow,topic/default,note/list,note/view,rss/category,rss/list,rss/question,user/scorelist,user/activelist,expert/default,user/qqlogin,gift/default,gift/search,gift/add,question/search,question/add,question/answer,doing/default,user/space_ask,user/space_answer,user/space,answer/append,answer/addcomment,question/edittag,favorite/add,inform/add,question/answercomment,note/addcomment,question/attentto,user/attentto,user/register,user/recommend,user/default,user/score,user/recharge,ebank/aliapyback,ebank/aliapytransfer,user/ask,user/answer,user/follower,user/attention,favorite/default,favorite/delete,question/addfavorite,user/profile,user/uppass,user/editimg,user/saveimg,user/mycategory,user/unchainauth,user/level,attach/uploadimage,question/adopt,question/close,question/supply,question/addscore,question/editanswer,question/search,message/send,message/new,message/personal,message/system,message/outbox,message/view,message/remove,message/removedialog,user/sendcheckmail,user/editemail,user/sendcheckmail,user/editemail', 0, 1);
INSERT INTO `ask_usergroup` VALUES (13, 7, '会元', 2, 7000, 10000, 15, 15, 20, 'user/register,user/editimg,index/default,category/view,category/list,question/view,question/follow,topic/default,note/list,note/view,rss/category,rss/list,rss/question,user/scorelist,user/activelist,expert/default,user/qqlogin,gift/default,gift/search,gift/add,question/search,question/add,question/answer,doing/default,user/space_ask,user/space_answer,user/space,answer/append,answer/addcomment,question/edittag,favorite/add,inform/add,question/answercomment,note/addcomment,question/attentto,user/attentto,user/register,user/recommend,user/default,user/score,user/recharge,ebank/aliapyback,ebank/aliapytransfer,user/ask,user/answer,user/follower,user/attention,favorite/default,favorite/delete,question/addfavorite,user/profile,user/uppass,user/editimg,user/saveimg,user/mycategory,user/unchainauth,user/level,attach/uploadimage,question/adopt,question/close,question/supply,question/addscore,question/editanswer,question/search,message/send,message/new,message/personal,message/system,message/outbox,message/view,message/remove,message/removedialog,user/sendcheckmail,user/editemail,user/sendcheckmail,user/editemail', 0, 1);
INSERT INTO `ask_usergroup` VALUES (14, 8, '同进士出身', 2, 10000, 14000, 0, 0, 0, 'user/register,user/editimg,index/default,category/view,category/list,question/view,question/follow,topic/default,note/list,note/view,rss/category,rss/list,rss/question,user/scorelist,user/activelist,expert/default,user/qqlogin,gift/default,gift/search,gift/add,question/search,question/add,question/answer,doing/default,user/space_ask,user/space_answer,user/space,answer/append,answer/addcomment,question/edittag,favorite/add,inform/add,question/answercomment,note/addcomment,question/attentto,user/attentto,user/register,user/recommend,user/default,user/score,user/recharge,ebank/aliapyback,ebank/aliapytransfer,user/ask,user/answer,user/follower,user/attention,favorite/default,favorite/delete,question/addfavorite,user/profile,user/uppass,user/editimg,user/saveimg,user/mycategory,user/unchainauth,user/level,attach/uploadimage,question/adopt,question/close,question/supply,question/addscore,question/editanswer,question/search,message/send,message/new,message/personal,message/system,message/outbox,message/view,message/remove,message/removedialog,user/sendcheckmail,user/editemail,user/sendcheckmail,user/editemail', 0, 1);
INSERT INTO `ask_usergroup` VALUES (15, 9, '大学士', 2, 14000, 18000, 0, 0, 0, 'user/register,user/editimg,index/default,category/view,category/list,question/view,question/follow,topic/default,note/list,note/view,rss/category,rss/list,rss/question,user/scorelist,user/activelist,expert/default,user/qqlogin,gift/default,gift/search,gift/add,question/search,question/add,question/answer,doing/default,user/space_ask,user/space_answer,user/space,answer/append,answer/addcomment,question/edittag,favorite/add,inform/add,question/answercomment,note/addcomment,question/attentto,user/attentto,user/register,user/recommend,user/default,user/score,user/recharge,ebank/aliapyback,ebank/aliapytransfer,user/ask,user/answer,user/follower,user/attention,favorite/default,favorite/delete,question/addfavorite,user/profile,user/uppass,user/editimg,user/saveimg,user/mycategory,user/unchainauth,user/level,attach/uploadimage,question/adopt,question/close,question/supply,question/addscore,question/editanswer,question/search,message/send,message/new,message/personal,message/system,message/outbox,message/view,message/remove,message/removedialog,user/sendcheckmail,user/editemail,user/sendcheckmail,user/editemail', 0, 1);
INSERT INTO `ask_usergroup` VALUES (16, 10, '探花', 2, 18000, 22000, 0, 0, 0, 'user/register,user/editimg,index/default,category/view,category/list,question/view,question/follow,topic/default,note/list,note/view,rss/category,rss/list,rss/question,user/scorelist,user/activelist,expert/default,user/qqlogin,gift/default,gift/search,gift/add,question/search,question/add,question/answer,doing/default,user/space_ask,user/space_answer,user/space,answer/append,answer/addcomment,question/edittag,favorite/add,inform/add,question/answercomment,note/addcomment,question/attentto,user/attentto,user/register,user/recommend,user/default,user/score,user/recharge,ebank/aliapyback,ebank/aliapytransfer,user/ask,user/answer,user/follower,user/attention,favorite/default,favorite/delete,question/addfavorite,user/profile,user/uppass,user/editimg,user/saveimg,user/mycategory,user/unchainauth,user/level,attach/uploadimage,question/adopt,question/close,question/supply,question/addscore,question/editanswer,question/search,message/send,message/new,message/personal,message/system,message/outbox,message/view,message/remove,message/removedialog,user/sendcheckmail,user/editemail,user/sendcheckmail,user/editemail', 0, 1);
INSERT INTO `ask_usergroup` VALUES (17, 11, '榜眼', 2, 22000, 32000, 0, 0, 0, 'user/register,user/editimg,index/default,category/view,category/list,question/view,question/follow,topic/default,note/list,note/view,rss/category,rss/list,rss/question,user/scorelist,user/activelist,expert/default,user/qqlogin,gift/default,gift/search,gift/add,question/search,question/add,question/answer,doing/default,user/space_ask,user/space_answer,user/space,answer/append,answer/addcomment,question/edittag,favorite/add,inform/add,question/answercomment,note/addcomment,question/attentto,user/attentto,user/register,user/recommend,user/default,user/score,user/recharge,ebank/aliapyback,ebank/aliapytransfer,user/ask,user/answer,user/follower,user/attention,favorite/default,favorite/delete,question/addfavorite,user/profile,user/uppass,user/editimg,user/saveimg,user/mycategory,user/unchainauth,user/level,attach/uploadimage,question/adopt,question/close,question/supply,question/addscore,question/editanswer,question/search,message/send,message/new,message/personal,message/system,message/outbox,message/view,message/remove,message/removedialog,user/sendcheckmail,user/editemail,user/sendcheckmail,user/editemail', 0, 1);
INSERT INTO `ask_usergroup` VALUES (18, 12, '状元', 2, 32000, 45000, 0, 0, 0, 'user/register,user/editimg,index/default,category/view,category/list,question/view,question/follow,topic/default,note/list,note/view,rss/category,rss/list,rss/question,user/scorelist,user/activelist,expert/default,user/qqlogin,gift/default,gift/search,gift/add,question/search,question/add,question/answer,doing/default,user/space_ask,user/space_answer,user/space,answer/append,answer/addcomment,question/edittag,favorite/add,inform/add,question/answercomment,note/addcomment,question/attentto,user/attentto,user/register,user/recommend,user/default,user/score,user/recharge,ebank/aliapyback,ebank/aliapytransfer,user/ask,user/answer,user/follower,user/attention,favorite/default,favorite/delete,question/addfavorite,user/profile,user/uppass,user/editimg,user/saveimg,user/mycategory,user/unchainauth,user/level,attach/uploadimage,question/adopt,question/close,question/supply,question/addscore,question/editanswer,question/search,message/send,message/new,message/personal,message/system,message/outbox,message/view,message/remove,message/removedialog,user/sendcheckmail,user/editemail,user/sendcheckmail,user/editemail', 0, 1);
INSERT INTO `ask_usergroup` VALUES (19, 13, '编修', 2, 45000, 60000, 0, 0, 0, 'user/register,user/editimg,index/default,category/view,category/list,question/view,question/follow,topic/default,note/list,note/view,rss/category,rss/list,rss/question,user/scorelist,user/activelist,expert/default,user/qqlogin,gift/default,gift/search,gift/add,question/search,question/add,question/answer,doing/default,user/space_ask,user/space_answer,user/space,answer/append,answer/addcomment,question/edittag,favorite/add,inform/add,question/answercomment,note/addcomment,question/attentto,user/attentto,user/register,user/recommend,user/default,user/score,user/recharge,ebank/aliapyback,ebank/aliapytransfer,user/ask,user/answer,user/follower,user/attention,favorite/default,favorite/delete,question/addfavorite,user/profile,user/uppass,user/editimg,user/saveimg,user/mycategory,user/unchainauth,user/level,attach/uploadimage,question/adopt,question/close,question/supply,question/addscore,question/editanswer,question/search,message/send,message/new,message/personal,message/system,message/outbox,message/view,message/remove,message/removedialog,user/sendcheckmail,user/editemail,user/sendcheckmail,user/editemail', 0, 1);
INSERT INTO `ask_usergroup` VALUES (20, 14, '府丞', 2, 60000, 100000, 0, 0, 0, 'user/register,user/editimg,index/default,category/view,category/list,question/view,question/follow,topic/default,note/list,note/view,rss/category,rss/list,rss/question,user/scorelist,user/activelist,expert/default,user/qqlogin,gift/default,gift/search,gift/add,question/search,question/add,question/answer,doing/default,user/space_ask,user/space_answer,user/space,answer/append,answer/addcomment,question/edittag,favorite/add,inform/add,question/answercomment,note/addcomment,question/attentto,user/attentto,user/register,user/recommend,user/default,user/score,user/recharge,ebank/aliapyback,ebank/aliapytransfer,user/ask,user/answer,user/follower,user/attention,favorite/default,favorite/delete,question/addfavorite,user/profile,user/uppass,user/editimg,user/saveimg,user/mycategory,user/unchainauth,user/level,attach/uploadimage,question/adopt,question/close,question/supply,question/addscore,question/editanswer,question/search,message/send,message/new,message/personal,message/system,message/outbox,message/view,message/remove,message/removedialog,user/sendcheckmail,user/editemail,user/sendcheckmail,user/editemail', 0, 1);
INSERT INTO `ask_usergroup` VALUES (21, 15, '翰林学士', 2, 100000, 150000, 0, 0, 0, 'user/register,user/editimg,index/default,category/view,category/list,question/view,question/follow,topic/default,note/list,note/view,rss/category,rss/list,rss/question,user/scorelist,user/activelist,expert/default,user/qqlogin,gift/default,gift/search,gift/add,question/search,question/add,question/answer,doing/default,user/space_ask,user/space_answer,user/space,answer/append,answer/addcomment,question/edittag,favorite/add,inform/add,question/answercomment,note/addcomment,question/attentto,user/attentto,user/register,user/recommend,user/default,user/score,user/recharge,ebank/aliapyback,ebank/aliapytransfer,user/ask,user/answer,user/follower,user/attention,favorite/default,favorite/delete,question/addfavorite,user/profile,user/uppass,user/editimg,user/saveimg,user/mycategory,user/unchainauth,user/level,attach/uploadimage,question/adopt,question/close,question/supply,question/addscore,question/editanswer,question/search,message/send,message/new,message/personal,message/system,message/outbox,message/view,message/remove,message/removedialog,user/sendcheckmail,user/editemail,user/sendcheckmail,user/editemail', 0, 1);
INSERT INTO `ask_usergroup` VALUES (22, 16, '御史中丞', 2, 150000, 250000, 0, 0, 0, 'user/register,user/editimg,index/default,category/view,category/list,question/view,question/follow,topic/default,note/list,note/view,rss/category,rss/list,rss/question,user/scorelist,user/activelist,expert/default,user/qqlogin,gift/default,gift/search,gift/add,question/search,question/add,question/answer,doing/default,user/space_ask,user/space_answer,user/space,answer/append,answer/addcomment,question/edittag,favorite/add,inform/add,question/answercomment,note/addcomment,question/attentto,user/attentto,user/register,user/recommend,user/default,user/score,user/recharge,ebank/aliapyback,ebank/aliapytransfer,user/ask,user/answer,user/follower,user/attention,favorite/default,favorite/delete,question/addfavorite,user/profile,user/uppass,user/editimg,user/saveimg,user/mycategory,user/unchainauth,user/level,attach/uploadimage,question/adopt,question/close,question/supply,question/addscore,question/editanswer,question/search,message/send,message/new,message/personal,message/system,message/outbox,message/view,message/remove,message/removedialog,user/sendcheckmail,user/editemail,user/sendcheckmail,user/editemail', 0, 1);
INSERT INTO `ask_usergroup` VALUES (23, 17, '詹士', 2, 250000, 400000, 0, 0, 0, 'user/register,user/editimg,index/default,category/view,category/list,question/view,question/follow,topic/default,note/list,note/view,rss/category,rss/list,rss/question,user/scorelist,user/activelist,expert/default,user/qqlogin,gift/default,gift/search,gift/add,question/search,question/add,question/answer,doing/default,user/space_ask,user/space_answer,user/space,answer/append,answer/addcomment,question/edittag,favorite/add,inform/add,question/answercomment,note/addcomment,question/attentto,user/attentto,user/register,user/recommend,user/default,user/score,user/recharge,ebank/aliapyback,ebank/aliapytransfer,user/ask,user/answer,user/follower,user/attention,favorite/default,favorite/delete,question/addfavorite,user/profile,user/uppass,user/editimg,user/saveimg,user/mycategory,user/unchainauth,user/level,attach/uploadimage,question/adopt,question/close,question/supply,question/addscore,question/editanswer,question/search,message/send,message/new,message/personal,message/system,message/outbox,message/view,message/remove,message/removedialog,user/sendcheckmail,user/editemail,user/sendcheckmail,user/editemail', 0, 1);
INSERT INTO `ask_usergroup` VALUES (24, 18, '侍郎', 2, 400000, 700000, 0, 0, 0, 'user/register,user/editimg,index/default,category/view,category/list,question/view,question/follow,topic/default,note/list,note/view,rss/category,rss/list,rss/question,user/scorelist,user/activelist,expert/default,user/qqlogin,gift/default,gift/search,gift/add,question/search,question/add,question/answer,doing/default,user/space_ask,user/space_answer,user/space,answer/append,answer/addcomment,question/edittag,favorite/add,inform/add,question/answercomment,note/addcomment,question/attentto,user/attentto,user/register,user/recommend,user/default,user/score,user/recharge,ebank/aliapyback,ebank/aliapytransfer,user/ask,user/answer,user/follower,user/attention,favorite/default,favorite/delete,question/addfavorite,user/profile,user/uppass,user/editimg,user/saveimg,user/mycategory,user/unchainauth,user/level,attach/uploadimage,question/adopt,question/close,question/supply,question/addscore,question/editanswer,question/search,message/send,message/new,message/personal,message/system,message/outbox,message/view,message/remove,message/removedialog,user/sendcheckmail,user/editemail,user/sendcheckmail,user/editemail', 0, 1);
INSERT INTO `ask_usergroup` VALUES (25, 19, '大学士', 2, 700000, 1000000, 0, 0, 0, 'user/register,user/editimg,index/default,category/view,category/list,question/view,question/follow,topic/default,note/list,note/view,rss/category,rss/list,rss/question,user/scorelist,user/activelist,expert/default,user/qqlogin,gift/default,gift/search,gift/add,question/search,question/add,question/answer,doing/default,user/space_ask,user/space_answer,user/space,answer/append,answer/addcomment,question/edittag,favorite/add,inform/add,question/answercomment,note/addcomment,question/attentto,user/attentto,user/register,user/recommend,user/default,user/score,user/recharge,ebank/aliapyback,ebank/aliapytransfer,user/ask,user/answer,user/follower,user/attention,favorite/default,favorite/delete,question/addfavorite,user/profile,user/uppass,user/editimg,user/saveimg,user/mycategory,user/unchainauth,user/level,attach/uploadimage,question/adopt,question/close,question/supply,question/addscore,question/editanswer,question/search,message/send,message/new,message/personal,message/system,message/outbox,message/view,message/remove,message/removedialog,user/sendcheckmail,user/editemail,user/sendcheckmail,user/editemail', 0, 1);
INSERT INTO `ask_usergroup` VALUES (26, 20, '文曲星', 2, 1000000, 999999999, 0, 0, 0, 'user/register,user/editimg,index/default,category/view,category/list,question/view,question/follow,topic/default,note/list,note/view,rss/category,rss/list,rss/question,user/scorelist,user/activelist,expert/default,user/qqlogin,gift/default,gift/search,gift/add,question/search,question/add,question/answer,doing/default,user/space_ask,user/space_answer,user/space,answer/append,answer/addcomment,question/edittag,favorite/add,inform/add,question/answercomment,note/addcomment,question/attentto,user/attentto,user/register,user/recommend,user/default,user/score,user/recharge,ebank/aliapyback,ebank/aliapytransfer,user/ask,user/answer,user/follower,user/attention,favorite/default,favorite/delete,question/addfavorite,user/profile,user/uppass,user/editimg,user/saveimg,user/mycategory,user/unchainauth,user/level,attach/uploadimage,question/adopt,question/close,question/supply,question/addscore,question/editanswer,question/search,message/send,message/new,message/personal,message/system,message/outbox,message/view,message/remove,message/removedialog,user/sendcheckmail,user/editemail,user/sendcheckmail,user/editemail', 0, 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `ask_userlog`
-- 

CREATE TABLE `ask_userlog` (
  `id` int(10) NOT NULL auto_increment,
  `sid` varchar(10) NOT NULL default '',
  `type` enum('login','ask','answer') NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `sid` (`sid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `ask_userlog`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ask_visit`
-- 

CREATE TABLE `ask_visit` (
  `ip` varchar(15) NOT NULL,
  `time` int(10) NOT NULL default '0',
  KEY `ip` (`ip`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `ask_visit`
-- 

