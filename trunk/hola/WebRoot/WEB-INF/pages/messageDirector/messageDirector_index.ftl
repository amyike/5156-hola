<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>总监留言-知名演艺嘉宾网</title>
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
<form action="/messageDirector/submit" method="post">
   <h3 class="m_d_title">总监留言</h3>
   <ul class="m_g_ul m_d_ul m_dd_ul">
      <li>
	     <em class="m_g_name">演艺场所名称：</em>
		 <input class="m_g_input" name="arena" type="text" />
		 <em class="m_g_point"><i>*</i></em>
	  </li>
	  <li>
	     <em class="m_g_name">地址：</em>
		 <input class="m_g_input m_dd_addr" name="addr" type="text" />
		 <em class="m_g_point"><i>*</i></em>
	  </li>
	  <li>
	     <em class="m_g_name">负责人姓名：</em>
		 <input class="m_g_input" name="charge" type="text" />
		 <em class="m_g_point"><i>*</i></em>
	  </li>
	  <li  class="m_dd_li">
	     <em class="m_g_name">手机：</em>
		 <input class="m_g_input" name="tel" type="text" />
		 <em class="m_g_point"><i>*</i></em>
	  </li>
	  <li class="m_dd_li">
	     <em class="m_g_name m_dd_zi1">QQ：</em>
		 <input class="m_g_input" style="width:195px;" name="qq" type="text" />
	  </li>
	  <li class="m_dd_li">
	     <em class="m_g_name">演出档期：</em>
		 <input class="m_g_input" style="width:200px;" name="schedule" type="text" />
		 <span class="m_g_spanzi">天</span>
		 <em class="m_g_point"><i>*</i></em>
	  </li>
	  <li class="m_dd_li">
	     <em class="m_g_name m_dd_zi1">价位范围：</em>
		 <input class="m_g_input m_g_iww" name="priceMin" type="text" />
		 <span class="m_g_spanzi">-</span>
		 <input class="m_g_input m_g_iww" name="priceMax" type="text" />
		 <em class="m_g_point"><i>*</i></em>
	  </li>
   </ul>
   <dl class="m_d_text">
      <dt>留言内容：</dt>
	  <dd style=" position:relative;"><textarea class="text_iiii" name="content" cols="" rows=""></textarea><span class="m_d_iiii">留言内容必填喔~</span></dd>
   </dl>
   <input class="m_d_btn" value="提&nbsp;交" name="" type="submit" />
</form>
</div>

<#include "/_include/buttom.ftl">

<script language="javascript" type="text/javascript" src="/js/jquery-1.4.2.min.js"></script>
<script language="javascript" type="text/javascript" src="/js/common.js"></script>
</body>
</html>
