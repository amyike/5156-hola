<#escape x as (x)!>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>小区公告</title>
<link href="/css/public.css" rel="stylesheet" type="text/css" />
<link href="/css/citycommunity.css" rel="stylesheet" type="text/css">

</head>

<body>
<!--[if !IE]>网页顶部logo及导航<![endif]-->
<#include "/public/top.ftl">
<!--[if !IE]>网页顶部logo及导航(结束)<![endif]-->

<!--[if !IE]>大框架<![endif]-->
<div class="all_frame margint11 width907">

   <!--[if !IE]>左边<![endif]-->
   <div class="community_left">
   
         <!--[if !IE]>小区公告<![endif]-->
     	<#include "community_top.ftl">
         <!--[if !IE]>公告信息<![endif]-->
	   <#if xqNotices??>
	   <#list xqNotices as xqnotice>
	   <!--[if !IE]>小区主要内容<![endif]-->
	   <div class="community_main">
		   <div class="bulletin_name"><span class="bu_span1"><a href="#">${xqnotice.user.uname}</a></span><span class="bu_span2">${xqnotice.time?string("MM月dd日")}</span></div>
		   <!--[if !IE]>文章内容<![endif]-->
		   <div class="bulletin_content community_content">
		       <h3 class="bulletin_title"><a href="#">${xqnotice.title}</a></h3><p>${xqnotice.content}</p>
		   <#-- 是本人 -->
		   <#if user.uid==xqnotice.user.uid>
		   		<a class="community_del" href="javascript:void(0);" onclick="location='/community/bulletin/delete.htm?id=${xqnotice.id}'">删除</a>
		   		<a href="javascript:void(0);" onclick="location='/community/bulletin/publish.htm?id=${xqnotice.id}'">编辑</a>
		   </#if>
		   </div>
		   <!--[if !IE]>文章内容（结束）<![endif]-->
		   <!--[if !IE]>底部<![endif]-->
		   <div class="community_bottom"></div>
	   </div>
	   <!--[if !IE]>小区主要内容（结束）<![endif]-->
	   </#list>
	   </#if>
   </div>
   <!--[if !IE]>左边（结束）<![endif]-->
   
   <!--[if !IE]>右边<![endif]-->
   <#include "community_right.ftl">
   <!--[if !IE]>右边（结束）<![endif]-->
   
</div>
<!--[if !IE]>大框架(结束)<![endif]-->
</body>
<script language="javascript" type="text/javascript" src="/js/jquery-1.4.2.min.js"></script>
<script language="javascript" type="text/javascript" src="/js/public.js"></script>
</html>
</#escape>