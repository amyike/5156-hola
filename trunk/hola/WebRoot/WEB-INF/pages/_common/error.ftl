<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>提示: 出现错误了。。</title>
<!--<meta http-equiv="refresh" CONTENT="5; url=/" />-->
</head>

<body align="center">
	<H2>错误信息信息:</H2>
		<div style="color:red"><#if message??>${message}<#else>无</#if></div>
		
		<div style="color:red"><#if localMessage??>${localMessage}<#else>无</#if></div>
		<a href="/">快速跳至首页</a>
</body>
</html>