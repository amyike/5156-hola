<!DOCTYPE>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>后台管理系统</title>
<link href="/css/public.css" rel="stylesheet" type="text/css">
<link href="/css/index.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class="index_left_menu_div" align="center">

<dl>
	<dt>系统管理</dt>
    <dd><a target="mainFrame" href="/memberArena/list" >演艺场所会员</a></dd>
    <dd><a target="mainFrame" href="/memberGuest/list" >嘉宾会员</a></dd>
    <dd><a target="mainFrame" href="/messageGuest/list" >嘉宾留言</a></dd>
    <dd><a target="mainFrame" href="/messageDirector/list" >总监留言</a></dd>
    <dd><a target="mainFrame" href="/notice/list" >公告信息</a></dd>
    <dd><a target="mainFrame" href="/job/list" >招聘信息</a></dd>
    <dd><a target="mainFrame" href="/experience/list" >经验交流</a></dd>
    
   	<dd><a target="mainFrame" href="/master/edit?id=${LOGIN_USER.id!0}">修改登录密码</a></dd>
</dl>
<#--
<dl>
	<dt default>内容管理</dt>
    <dd><a target="mainFrame" href="/member" >留言管理</a></dd>
</dl>
<dl>
	<dt>系统管理</dt>
	<#if LOGIN_USER??>
		<#if LOGIN_USER.authority??&&LOGIN_USER.authority==1>
	    <dd><a target="mainFrame" href="/master">管理员管理</a></dd>
	    <#else>
	    <dd><a target="mainFrame" href="/master/edit?id=${LOGIN_USER.id!0}">修改登录密码</a></dd>
		</#if>
	</#if>
</dl>
-->
<a target="_top" href="/logout" onclick="if(!confirm('确定退出系统')){return false;}">退出系统</a>
</div>

<script src="/js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script src="/js/index.js" type="text/javascript"></script>
</body>
</html>