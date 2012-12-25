<#escape x as (x)!>
﻿<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><#if notice??>${notice.title!} - </#if>知名演艺嘉宾网</title>
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

<!--详细页-->
<div class="layer title_bar"><h2 class="title_bar_h3" style="text-indent:0px; width:800px">本站公告</h2><a class="title_bar_more" href="/">返回首页</a></div>
<div class="bar_main" style="padding-bottom:40px;">
  <div class="about_main">
	<p><#if notice??>${notice.content!}</#if></p>
  </div>
</div>

<#include "/_include/buttom.ftl">

<script language="javascript" type="text/javascript" src="/js/jquery-1.4.2.min.js"></script>
<script language="javascript" type="text/javascript" src="/js/common.js"></script>
</body>
</html>
</#escape>