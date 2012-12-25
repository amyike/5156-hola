<#escape x as (x)!>
﻿<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注册嘉宾会员-知名演艺嘉宾网</title>
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
<div class="layer title_bar"><h2 class="reg_g_bar title_bar_h3">注册嘉宾会员</h2><a class="title_bar_more" href="/">返回首页</a></div>
<div class="bar_main">
<form action="/memberGuest/register" method="post">
   <h4 class="reg_g_title">此页部分内容不对外公开！</h4>
   <ul class="reg_g_ul">
      <li>
	     <em class="reg_g_lzi1">姓名：</em>
		 <input class="reg_g_input1" name="name" type="text" />
		 <em class="reg_g_lzi2">艺名：</em>
		 <input class="reg_g_input1" name="stageName" type="text" />
		 <em class="reg_g_lzi1">性别：</em>
		 <input type="hidden" name="sex" value="男">
		 <label style="float:left; margin:5px 20px 5px 5px;"><input type="radio" name="_sex" value="男" style=" margin-right:5px;" checked>男</label>
		 <label style="float:left; margin:5px 20px 5px 5px;"><input type="radio" name="_sex" value="女" style=" margin-right:5px;">女</label>
	  </li>
	  <li>
	     <em class="reg_g_lzi1">手机：</em>
		 <input class="reg_g_input4" name="tel" type="text" />
		 <em class="reg_g_lzi1">年龄：</em>
		 <input class="reg_g_input3" name="age" type="text" />
	  </li>
	  <li>
	     <em class="reg_g_lzi1">籍贯：</em>
		 <input class="reg_g_input4" name="nativePlace" type="text" />
		 <em class="reg_g_lzi1">QQ：</em>
		 <input class="reg_g_input3" name="qq" type="text" />
	  </li>
	  <li style="position:relative;">
	     <em class="reg_g_lzi1">节目类型：</em>
		 <dl class="select_dl select_dl1 select_dd">
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
		 <span class="reg_g_po" style=" padding:0px 6px 0px 141px">（歌手或杂技、魔术等）</span>
		 <em class="reg_g_lzi1">演出价格：</em>
		 <input class="m_g_input m_g_iww" style="width:40px;" name="priceMin" type="text" />
		 <span class="m_g_spanzi">-</span>
		 <input class="m_g_input m_g_iww" style="width:40px;" name="priceMax" type="text" />
	  </li>
	  <li>
	     <em class="reg_g_lzi1">演出范围：</em>
	     <input type="hidden" name="range" value="">
		 <label style="float:left; margin:5px 20px 5px 5px;"><input type="checkbox" name="_range" value="华东区" style=" margin-right:5px;">华东区</label>
		 <label style="float:left; margin:5px 20px 5px 5px;"><input type="checkbox" name="_range" value="华南区" style=" margin-right:5px;">华南区</label>
		 <label style="float:left; margin:5px 20px 5px 5px;"><input type="checkbox" name="_range" value="华西区" style=" margin-right:5px;">华西区</label>
		 <label style="float:left; margin:5px 20px 5px 5px;"><input type="checkbox" name="_range" value="华北区" style=" margin-right:5px;">华北区</label>
		 <label style="float:left; margin:5px 20px 5px 5px;"><input type="checkbox" name="_range" value="国外" style=" margin-right:5px;">国外</label>
	  </li>
	  <li>
	     <em class="reg_g_lzi1">设置密码：</em>
		 <input class="reg_g_input4" name="passwd" type="password" />
	  </li>
   </ul>
   <em class="reg_g_ti">简历：<i>（演出经历、演出特点和成绩）</i></em>
   <textarea class="reg_g_textarea" name="resume" cols="" rows=""></textarea>
   <em class="reg_g_ti">曾经演出过的场所：<i>（不低于10个）</em>
   <textarea class="reg_g_textarea" name="showedPlace" cols="" rows=""></textarea>
   <input class="bar_btn reg_g_btn" value="提&nbsp;交" type="submit" />
   <ul class="reg_g_zipoint">
       <li>说明：1、以上内容不对外公布。</li>
	   <li class="text_px45">2、以上内容资都为必填项。</li>
	   <li class="text_px45">3、对本站刊登的你的会员资料有何不妥请及时通过留言与本站联系改进。</li>
	   <li class="text_px45">4、将演出视频和照片发送到本站邮箱，邮箱地址：yyjiabin@126.com。</li>
   </ul>
</form>
</div>

<#include "/_include/buttom.ftl">

<script language="javascript" type="text/javascript" src="/js/jquery-1.4.2.min.js"></script>
<script language="javascript" type="text/javascript" src="/js/common.js"></script>
</body>
</html>
</#escape>