<#escape x as (x)!>
﻿<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>本站公告-知名演艺嘉宾网</title>
<meta content="知名演艺嘉宾网" name="Keywords">
<meta content="知名演艺嘉宾网" name="Description">
<link rel="stylesheet" href="/css/common.css" />
</head>

<body>
<!--头部-->
<div class="top">
   <div class="top_bg">
      <h1 class="logo" title="知名演艺嘉宾网"><a href="/">知名演艺嘉宾网</a></h1>
	  <div class="keep">
	     <a href="javascript:void(0);">设为首页</a>
		 <span class="k_line">|</span>
		 <a href="javascript:void(0);">加入收藏</a>
	  </div>
   </div>
   <ul class="nav">
      <li class="current"><a href="/">网站首页</a></li>
	  <li><a href="about.html">关于本站</a></li>
	  <li><a href="##">推荐嘉宾</a></li>
	  <li><a href="##">明星嘉宾</a></li>
	  <li><a href="##">班底人员</a></li>
	  <li><a href="##">演艺场所</a></li>
	  <li class="nav_message">
	     <a href="javascript:void(0);">在线留言</a>
		 <dl style="display:none;">
		    <dd><a href="message_guests.html">嘉宾留言</a></dd>
			<dd><a href="message_director.html">总监留言</a></dd>
		 </dl>
	  </li>
   </ul>
   <div class="search">
      <a href="reg_guests.html" class="reg_guests" title="注册嘉宾会员">注册嘉宾会员</a>
	  <a href="reg_arts.html" class="reg_arts" title="注册嘉宾会员">注册嘉宾会员</a>
	  <em class="s_title">搜索演艺嘉宾：</em>
	  <input class="s_input" value="请输入嘉宾编号" name="" type="text" />
	  <input class="s_btn" value="开始搜索" title="开始搜索" name="" type="submit" />
	  <a class="message_guests" href="message_guests.html" title="嘉宾留言">嘉宾留言</a>
	  <a class="message_director" href="message_director.html" title="总监留言">总监留言</a>
   </div>
</div>

<!--友情提示-->
<div class="prompt layer">
   <p class="prompt_zi">《知名演艺嘉宾网》是介绍安排嘉宾演出的桥梁，是嘉宾与演艺场所交流信息，切磋演艺的平台。真
诚而认真地为嘉宾服务，为演艺单位服务、是本站的宗旨。本站备有各类演艺嘉宾的演出视频、照片和资
料，欢迎浴场、花场、迪吧、大、中、小型各类纯演艺场所的总监朋友们，在这里选择您最喜欢的演艺嘉
宾和演艺明星！</p>
   <a class="prompt_aa" href="##" target="_blank">[更多内容]</a>
</div>

<!--列表-->
<div class="layer title_bar"><h2 class="bulletin_bar title_bar_h3">本站公告</h2><a class="title_bar_more" href="/">返回首页</a></div>
<div class="bar_main">
   <#if page??&&page.elements??>
   <ul class="bulletin_main">
   <#list page.elements as experience>
      <li><em>${experience.time?string("yyyy-MM-dd")}</em><a href="/experience/${experience.id!}">${experience.title!}</a></li>
   </#list>
   </ul>
   <div class="page">
   		<style type="text/css">
			.pageString ul{list-style:none;width:570px;height:30px;margin-left:10px;}
			.pageString ul li{float:left;padding:4px 8px; margin-left:2px; background:#fff;}
			.pageString ul li a{ color:#000;}
			.pageString ul li a:hover{ color:#000;}
			.pageString ul li.page_current{background:#666;}
			.pageString ul li.page_current a{color:#fff;}
			.pageString ul li.page_current a:hover{color:#fff;}
		</style>
		<div id="pageString" class="pageString">${page.pageString}</div>
   </div>
   </#if>
</div>

<!--友链-->
<div class="layer title_btn margint12"><h3 class="title_btn_link">合作伙伴</h3></div>
<div class="link_main">
   <a href="##" target="_blank">xxx链接</a>|
   <a href="##" target="_blank">xxxxx链接</a>|
   <a href="##" target="_blank">xxxxxx链接</a>|
   <a href="##" target="_blank">xxx链接</a>|
   <a href="##" target="_blank">xxxxx链接</a>|
   <a href="##" target="_blank">xxx链接</a>|
   <a href="##" target="_blank">xxxxx链接</a>|
   <a href="##" target="_blank">xxx链接</a>|
   <a href="##" target="_blank">xxxxxx链接</a>|
   <a href="##" target="_blank">xxx链接</a>|
   <a href="##" target="_blank">xxx链接</a>|
   <a href="##" target="_blank">xxxxxxx链接</a>|
   <a href="##" target="_blank">xxxx链接</a>|
   <a href="##" target="_blank">xxxxx链接</a>|
   <a href="##" target="_blank">xxxx链接</a>|
   <a href="##" target="_blank">xxxxxx链接</a>|
</div>

<!--底部信息-->
<div class="bottom">
   <ul class="bottom_main">
      <li class="bottom_aa">
	     <a href="/">网站首页</a>|
	     <a href="about.html">关于本站</a>|
	     <a href="##">推荐嘉宾</a>|
	     <a href="##">明星嘉宾</a>|
	     <a href="##">班底人员</a>|
	     <a href="##">演艺场所</a>|
	     <a href="message_guests.html">嘉宾留言</a>|
		 <a href="message_director.html">总监留言</a>
	  </li>
	  <li class="bottom_web">
	  Copyright &copy; 2012 演艺嘉宾网， All Rights Reserved.<br />
地址：xxx市xxx区xxx街xxx道xxx楼xxx号  电话：0000-88888888  传真：0000-88888888
	  </li>
   </ul>
</div>

<script language="javascript" type="text/javascript" src="/js/jquery-1.4.2.min.js"></script>
<script language="javascript" type="text/javascript" src="/js/common.js"></script>
</body>
</html>
</#escape>