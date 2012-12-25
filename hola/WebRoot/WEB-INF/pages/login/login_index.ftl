<#escape x as (x)!>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>嘉宾网后台管理系统 - 登录</title>
<link href="/css/public.css" rel="stylesheet" type="text/css">
<style type="text/css">
.input {
	margin: 0 5px 0 5px;
}
</style>
<script type="text/javascript" src="/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="/js/login.js"></script>
</head>
<body>
	<div align="center" style="width: 100%; margin-top: 25%;">
		<div>
			<form target="_top" action="/login" method="post">
				账号:<input class="input" name="account" msg="帐号">
				密码:<input class="input" type="password" name="password" msg="密码">
				<input type="submit" value="  登  录  ">
			</form>
		</div>
	</div>
</body>
</html>
</#escape>