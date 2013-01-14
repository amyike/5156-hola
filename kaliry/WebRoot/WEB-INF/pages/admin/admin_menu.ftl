<#escape x as (x)!>
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
    <dd><a target="mainFrame" href="/member" >会员管理</a></dd>
	<#if LOGIN_USER??>
		<#if LOGIN_USER.authority??&&LOGIN_USER.authority==1>
	    <dd><a target="mainFrame" href="/master">管理员管理</a></dd>
	    <#else>
	    <dd><a target="mainFrame" href="/master/edit?id=${LOGIN_USER.id!0}">修改登录密码</a></dd>
		</#if>
	</#if>
</dl>
<#--
<dl>
	<dt>统计</dt>
    <dd><a target="mainFrame" href="special.do">九月专题</a></dd>
    <dd ><a target="mainFrame" href="statistics/path/reg_user.do">用户注册</a></dd>
    <dd ><a target="mainFrame" href="statistics/path/weibo_list.do">微博统计</a></dd>
    <dd ><a target="mainFrame" href="statistics/path/share_top_user.do">分享TOP统计</a></dd>
    <dd ><a target="mainFrame" href="statistics/path/byshare_top_weibo.do">被分享TOP统计</a></dd>
    <dd ><a target="mainFrame" href="statistics/path/comment_top_user.do">评论TOP统计</a></dd>
    <dd ><a target="mainFrame" href="statistics/path/bycomment_top_weibo.do">被评论TOP统计</a></dd>
    <dd ><a target="mainFrame" href="statistics/path/sex.do">性别比例</a></dd>
</dl>
<dl>
	<dt default>筛选</dt>
    <dd><a target="mainFrame" href="sc.do">用户信息</a></dd>
</dl>
<dl>
	<dt >广告管理</dt>
    <dd ><a target="mainFrame" href="ad.do">广告列表</a></dd>
    <dd ><a target="mainFrame" href="ad/static/add.do">添加广告</a></dd>
</dl>
-->
<a target="_top" href="/logout" onclick="if(!confirm('确定退出系统')){return false;}">退出系统</a>

</div>

<script src="/js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script src="/js/index.js" type="text/javascript"></script>
</body>
</html>
</#escape>