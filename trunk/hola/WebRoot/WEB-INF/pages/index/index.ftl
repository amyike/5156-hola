<#escape x as (x)!>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页-知名演艺嘉宾网</title>
<meta content="知名演艺嘉宾网" name="Keywords">
<meta content="知名演艺嘉宾网" name="Description">
<link rel="stylesheet" href="css/common.css" />
</head>

<body>
<#include "/_include/top.ftl">

<!--友情提示-->
<div class="prompt layer">
   <p class="prompt_zi">《知名演艺嘉宾网》是介绍安排嘉宾演出的桥梁，是嘉宾与演艺场所交流信息，切磋演艺的平台。真
诚而认真地为嘉宾服务，为演艺单位服务、是本站的宗旨。本站备有各类演艺嘉宾的演出视频、照片和资
料，欢迎浴场、花场、迪吧、大、中、小型各类纯演艺场所的总监朋友们，在这里选择您最喜欢的演艺嘉
宾和演艺明星！</p>
   <a class="prompt_aa" href="##" target="_blank">[更多内容]</a>
</div>

<!--第一大部分-->
<div class="layer">
   <div class="box_left">
      <div class="index_box">
	     <div class="index_box_title"><h3 class="index_box_h3 index_box_kefu">客服中心</h3><a class="index_box_more" href="##" target="_blank">更多&gt;&gt;</a></div>
		 <div class="box_qq" style="margin-top:17px;"><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=1792491852&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:1792491852:41" alt="点击这里给我发消息" title="点击这里给我发消息"></a>(嘉宾交谈)</div>
		 <div class="box_qq" style="margin-top:10px;"><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=1792491852&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:1792491852:41" alt="点击这里给我发消息" title="点击这里给我发消息"></a>(总监交谈)</div>
		 <ul class="content">
		    <li>监督手机：13739114471</li>
			<li>邮箱：yyjiabin@126.com</li>
			<li>网址：www.yyjiabin.com</li>
			<li>联系人：阿豪</li>
		 </ul>
	  </div>
	  
	  <div class="index_box">
	     <div class="index_box_title"><h3 class="index_box_h3 index_box_zhao">客服中心</h3><a class="index_box_more" href="/job" target="_blank">更多&gt;&gt;</a></div>
		 <ul class="index_box_ul">
		 <#if jobs??>
		 <#list jobs as job>
		    <li><a href="/job/${job.id!0}" target="_blank">${job.title!}</a></li>
		 </#list>
		 </#if>
		 </ul>
	  </div>
   </div>
   
   <div class="gal_all">
      <h2 class="gal_all_title">全国知名演艺嘉宾</h2>
	  <ul class="gal_all_ul">
	     <li>
		    <em class="gal_li gal_li1">华东区嘉宾</em>
			<span class="gal_li_l">&lt;</span>
			<dl class="gal_li_dl">
			   <dd>上海</dd>
			   <dd>江苏</dd>
			   <dd>浙江</dd>
			   <dd>安徽</dd>
			   <dd>福建</dd>
			   <dd>江西</dd>
			   <dd>湖南</dd>
			   <dd>湖北</dd>
			</dl>
			<span class="gal_li_r">&gt;</span>
			<input class="gal_li_btn on" value="点击进入" name="" type="button" />
		</li>
		<li>
		    <em class="gal_li gal_li2">华北区嘉宾</em>
			<span class="gal_li_l">&lt;</span>
			<dl class="gal_li_dl">
			   <dd>北京</dd>
			   <dd>天津</dd>
			   <dd>河北</dd>
			   <dd>山东</dd>
			   <dd>黑龙</dd>
			   <dd>辽宁</dd>
			   <dd>吉林</dd>
			   <dd>内蒙</dd>
			</dl>
			<span class="gal_li_r">&gt;</span>
			<input class="gal_li_btn on" value="点击进入" name="" type="button" />
		</li>
		<li>
		    <em class="gal_li gal_li3">华南区嘉宾</em>
			<span class="gal_li_l">&lt;</span>
			<dl class="gal_li_dl">
			   <dd>广东</dd>
			   <dd>广西</dd>
			   <dd>海南</dd>
			   <dd>港澳台</dd>
			   <dd>重庆</dd>
			   <dd>四川</dd>
			   <dd>云南</dd>
			   <dd>贵州</dd>
			</dl>
			<span class="gal_li_r">&gt;</span>
			<input class="gal_li_btn on" value="点击进入" name="" type="button" />
		</li>
		<li>
		    <em class="gal_li gal_li4">华西区嘉宾</em>
			<span class="gal_li_l">&lt;</span>
			<dl class="gal_li_dl">
			   <dd>河南</dd>
			   <dd>陕西</dd>
			   <dd>山西</dd>
			   <dd>宁夏</dd>
			   <dd>青藏</dd>
			   <dd>甘肃</dd>
			   <dd>新疆</dd>
			   <dd>西藏</dd>
			</dl>
			<span class="gal_li_r">&gt;</span>
			<input class="gal_li_btn on" value="点击进入" name="" type="button" />
		</li>
		<li>
		    <em class="gal_li gal_li5"></em>
			<em class="gal_li_tit">推荐嘉宾</em>
			<input class="gal_li_btn on" value="点击进入" name="" type="button" />
		</li>
		<li>
		    <em class="gal_li gal_li6"></em>
			<em class="gal_li_tit">明星嘉宾</em>
			<input class="gal_li_btn on" value="点击进入" name="" type="button" />
		</li>
		<li>
		    <em class="gal_li gal_li7"></em>
			<em class="gal_li_tit">班底人员</em>
			<input class="gal_li_btn ban" value="点击进入" name="" type="button" />
		</li>
	  </ul>
	  <ul class="gal_prompt">
	    <li>·本站免费刊登与介绍主持人、舞蹈队、音响、乐队、键盘、配戏等会员招聘与求职信息。</li>
		<li>·为提高效率和保障信息准确性一般通过“留言”、QQ、手机短信交流，尽量不用手机通话。</li>
	  </ul>
   </div>
   
   <div class="box_left">
      <div class="index_box">
	     <div class="index_box_title"><h2 class="index_box_h3 index_box_gong">本站公告</h2><a class="index_box_more" href="/notice" target="_blank">更多&gt;&gt;</a></div>
		 <ul class="index_box_ul">
		 <#if notices??>
		 <#list notices as notice>
		    <li><a href="/notice/${notice.id!}" target="_blank">${notice.title!}</a></li>
		 </#list>
		 </#if>
		 </ul>
	  </div>
	  
	  <div class="index_box">
	     <div class="index_box_title"><h2 class="index_box_h3 index_box_jing">经验交流</h2><a class="index_box_more" href="/experience" target="_blank">更多&gt;&gt;</a></div>
		 <ul class="index_box_ul">
		 <#if experiences??>
		 <#list experiences as experience>
		    <li><a href="/experience/${experience.id!}" target="_blank">${experience.title!}</a></li>
		 </#list>
		 </#if>
		 </ul>
	  </div>
   </div>
   
</div>

<!--嘉宾展示-->
<div class="layer title_btn margint10">
   <h3 class="title_btn_guest">嘉宾展示</h3>
   <a class="title_btn_more" href="##" target="_blank">更多&gt;&gt;</a>
</div>
<ul class="guest_main">
  <li>
     <em class="guest_m_img"><a href="##" target="_blank"><img src="images/111.jpg" width="164" height="128" alt="嘉宾1" /></a></em>
	 <em class="guest_m_title"><a href="##" target="_blank">摇滚：2线-021号</a></em>
  </li>
  <li>
     <em class="guest_m_img"><a href="##" target="_blank"><img src="images/111.jpg" width="164" height="128" alt="嘉宾1" /></a></em>
	 <em class="guest_m_title"><a href="##" target="_blank">摇滚：2线-021号</a></em>
  </li>
  <li>
     <em class="guest_m_img"><a href="##" target="_blank"><img src="images/111.jpg" width="164" height="128" alt="嘉宾1" /></a></em>
	 <em class="guest_m_title"><a href="##" target="_blank">摇滚：2线-021号</a></em>
  </li>
  <li>
     <em class="guest_m_img"><a href="##" target="_blank"><img src="images/111.jpg" width="164" height="128" alt="嘉宾1" /></a></em>
	 <em class="guest_m_title"><a href="##" target="_blank">摇滚：2线-021号</a></em>
  </li>
  <li>
     <em class="guest_m_img"><a href="##" target="_blank"><img src="images/111.jpg" width="164" height="128" alt="嘉宾1" /></a></em>
	 <em class="guest_m_title"><a href="##" target="_blank">摇滚：2线-021号</a></em>
  </li>
</ul>

<#include "/_include/buttom.ftl">

<script language="javascript" type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script language="javascript" type="text/javascript" src="js/common.js"></script>
</body>
</html>

</#escape>