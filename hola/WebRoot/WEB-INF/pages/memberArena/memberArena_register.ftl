<#escape x as (x)!>
﻿<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注册演艺场所会员-知名演艺嘉宾网</title>
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

<!--注册嘉宾会员-->
<div class="layer title_bar"><h2 class="reg_d_bar title_bar_h3">注册演艺场所会员</h2><a class="title_bar_more" href="/">返回首页</a></div>
<div class="bar_main">
<form action="/memberArena/register" method="post">
   <h4 class="reg_d_title">此页内容不对外公开！</h4>
   <ul class="reg_d_ul">
      <li>
	     <em class="m_g_name">演艺场所名称：</em>
		 <input class="reg_g_input4" name="place" type="text" />
	  </li>
	  <li>
	     <em class="m_g_name">设置密码：</em>
		 <input class="reg_g_input4" name="passwd" type="password" />
	  </li>
	  <li>
	     <em class="m_g_name">地址：</em>
		 <input class="reg_g_input4" name="addr" type="text" />
	  </li>
	  <li>
	     <em class="m_g_name">档期：</em>
		 <input class="reg_g_input4" name="schedule" style=" width:250px;" type="text" />
		 <span class="m_g_spanzi">天</span>
	  </li>
	  <li>
	     <em class="m_g_name">价为范围：</em>
		 <input class="m_g_input m_g_iww" name="priceMin" type="text" />
		 <span class="m_g_spanzi">-</span>
		 <input class="m_g_input m_g_iww" name="priceMax" type="text" />
	  </li>
	  <li>
	     <em class="m_g_name">负责人姓名：</em>
		 <input class="reg_g_input4" name="charge" type="text" />
	  </li>
	  <li>
	     <em class="m_g_name">职务：</em>
		 <input class="reg_g_input4" name="post" type="text" />
	  </li>
	  <li>
	     <em class="m_g_name">手机：</em>
		 <input class="reg_g_input4" name="tel" type="text" />
	  </li>
	  <li>
	     <em class="m_g_name">QQ：</em>
		 <input class="reg_g_input4" name="qq" type="text" />
	  </li>
   </ul>
   <em class="reg_g_ti">说明：<i>（演出场所基本情况、演出价格、对嘉宾要求等）</i></em>
   <textarea class="reg_d_textarea" name="describe" cols="" rows=""></textarea>
   <input class="bar_btn reg_g_btn" value="提&nbsp;交" type="submit" />
   <ul class="reg_g_zipoint">
       <li>说明：1、以上内容资料不对外公布。</li>
	   <li class="text_px45">2、以上内容资都为必填项。</li>
	   <li class="text_px45">3、对本站刊登的你的会员资料有何不妥请及时通过留言与本站联系改进。</li>
   </ul>
</form>
</div>

<#include "/_include/buttom.ftl">

<script language="javascript" type="text/javascript" src="/js/jquery-1.4.2.min.js"></script>
<script language="javascript" type="text/javascript" src="/js/common.js"></script>
</body>
</html>
</#escape>