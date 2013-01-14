<#escape x as (x)!>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv=Content-Type content=text/html;charset=UTF-8>
<title>管理员信息管理</title>
<style type="text/css">
body {
	background-color: #FFFFFF;
}

table {
	margin-left: auto;
	margin-right: auto;
}

.main_title {
    background: none repeat scroll 0 0 #6795B4;
    color: #FFFFFF;
    font-family: Verdana,Arial,Helvetica,sans-serif;
    font-size: 13px;
    padding: 5px;
    text-align: left;
}

a{
    font-family: Verdana,Arial,Helvetica,sans-serif;
    font-size: 13px;
}
</style>
</head>

<body>
	<table border="1" width="90%">
		<tr class="main_title">
			<td height="30" align="center" style="font-size:16pt" colspan="6">管理员信息管理</td>
		</tr>
		<tr bgcolor="#FFFFFF" align="left" style="font-size:14px; height: 22pt;">
			<td colspan="6">
			<#if LOGIN_USER??&&LOGIN_USER.authority??&&LOGIN_USER.authority==1>
				<a href="javascript:void(0);" onclick="location.href='/master/add';return false;">添加管理员</a>
			</#if>
			</td>
		</tr>
		<tr bgcolor="#EEEEEE" align="center">
			<td>编号ID</td>
			<td>帐号</td>
			<td>地区(省/市)</td>
			<td>分公司</td>
			<td>权限</td>
			<td>操作</td>
		</tr>
	<#if masterList??>
	<#list masterList as master>
		<tr bgcolor="#FFFFFF" align="center">
			<td>${master.id!0}</td>
			<td>${master.account!}</td>
			<td>${master.province!}&nbsp;${master.city!}</td>
			<td>${master.company!}</td>
			<td><#if master.authority == 1>系统管理员<#elseif master.authority == 2>高级管理员<#elseif master.authority == 3>普通管理员<#else><font color="red">未分配</font></#if></td>
			<td>
			<#if master.id gt 1>
				<a href="javascript:void(0);" onclick="location.href='/master/edit?id=${master.id!0}';return false;">修改</a> | <a href="javascript:void(0);" onclick="if(confirm('确认要删除此用户？')){location.href='/master/del?id=${master.id!0}';return false;}">删除</a>
			<#else>
				<a style="color:green;">该管理员不能被修改</a>
			</#if>
			</td>
		</tr>
	</#list>
	</#if>
	</table>
</body>
</html>
</#escape>