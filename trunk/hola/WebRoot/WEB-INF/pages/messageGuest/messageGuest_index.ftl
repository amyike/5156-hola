<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>嘉宾留言-知名演艺嘉宾网</title>
<meta content="知名演艺嘉宾网" name="Keywords">
<meta content="知名演艺嘉宾网" name="Description">
<link rel="stylesheet" href="/css/common.css" />
</head>

<body>
<#include "/_include/top.ftl">

<!--友情提示-->
<div class="prompt layer">
   <p class="prompt_zi">《知名演艺嘉宾网》是介绍安排嘉宾演出的桥梁，是嘉宾与演艺场所交流信息，切磋演艺的平台。真
诚而认真地为嘉宾服务，为演艺单位服务、是本站的宗旨。本站备有各类演艺嘉宾的演出视频、照片和资
料，欢迎浴场、花场、迪吧、大、中、小型各类纯演艺场所的总监朋友们，在这里选择您最喜欢的演艺嘉
宾和演艺明星！</p>
</div>

<!--嘉宾留言-->
<div class="layer title_bar"><h2 class="m_g_bar title_bar_h3">在线留言</h2><a class="title_bar_more" href="/">返回首页</a></div>
<div class="bar_main">
<form action="/messageGuest/submit" method="post">
   <h3 class="m_g_title">嘉宾留言</h3>
   <ul class="m_g_ul">
      <li>
	     <em class="m_g_name">姓名：</em>
		 <input class="m_g_input" name="name" type="text" />
		 <em class="m_g_point"><i>*</i>（或艺名）</em>
	  </li>
	  <li>
	     <em class="m_g_name">编号：</em>
		 <input class="m_g_input" name="number" type="text" />
		 <em class="m_g_point"><i>&nbsp;</i>（尚未编号不填）</em>
	  </li>
	  <li>
	     <em class="m_g_name">手机：</em>
		 <input class="m_g_input" name="tel" type="text" />
		 <em class="m_g_point"><i>*</i></em>
	  </li>
	  <li>
	     <em class="m_g_name">QQ：</em>
		 <input class="m_g_input" name="qq" type="text" />
	  </li>
	  <li style="position:relative;">
	     <em class="m_g_name">节目类型：</em>
		 <dl class="select_dl select_dd">
		    <dt><input class="select_dl_ii" name="style" onKeyDown="return false" onKeyUp="return false" type="text" /></dt>
			<dd>歌手</dd>
			<dd>摇滚</dd>
			<dd>魔术</dd>
			<dd>杂技</dd>
			<dd>二人转</dd>
			<dd>搞笑</dd>
			<dd>反串</dd>
			<dd>特技</dd>
			<dd>特色</dd>
			<dd>模仿秀</dd>
			<dd>小品</dd>
			<dd>武术</dd>
			<dd>相声</dd>
			<dd>外籍</dd>
			<dd>书画家</dd>
		 </dl>
		 <em class="m_g_point" style="padding-left:233px;"><i>*</i>（歌手、魔术、杂技等）</em>
	  </li>
   </ul>
   <dl class="m_g_text">
      <dt>留言内容：</dt>
	  <dd style=" position:relative;"><textarea class="text_iiii" name="content" cols="" rows=""></textarea><span class="m_d_iiii">留言内容必填喔~</span></dd>
   </dl>
   <input class="bar_btn m_g_btn" value="提&nbsp;交" name="" type="submit" />
</form>
</div>

<#include "/_include/buttom.ftl">

<script language="javascript" type="text/javascript" src="/js/jquery-1.4.2.min.js"></script>
<script language="javascript" type="text/javascript" src="/js/common.js"></script>
</body>
</html>
