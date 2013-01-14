<#escape x as (x)!>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv=Content-Type content=text/html;charset=UTF-8>
<title>管理员信息修改</title>
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
</style>
</head>
<#assign isSystemMaster = LOGIN_USER??&&LOGIN_USER.authority??&&LOGIN_USER.authority==1>
<body>
<form action="/master/edit" method="post" autocomplete = "off">
	<input type="hidden" name="id" value="${master.id}">
	<table border="1" width="500pt;">
		<tr class="main_title">
			<td height="30" align="center" style="font-size:16px" colspan="4">管理员信息修改</td>
		</tr>
		<tr bgcolor="#EEEEEE" align="center">
			<td>编号ID</td>
			<td>${master.id!}</td>
		</tr>
		<tr bgcolor="#EEEEEE" align="center">
			<td>帐号</td>
			<td>
				${master.account!}
				<#--
				<#if isSystemMaster>
					<input name="account" value="${master.account!}" autocomplete = "off">
				<#else>
				</#if>
				-->
			</td>
		</tr>
		<tr bgcolor="#EEEEEE" align="center">
			<td>密码</td>
			<td>
				<input type="password" name="password">
				<input type="hidden" name="oldPwd" value="${master.password!}">
			</td>
		</tr>
	<#-- 非系统管理员 -->
	<#if !isSystemMaster>
		<tr bgcolor="#EEEEEE" align="center">
			<td>提示</td>
			<td>
				<font color="red" style="font-family: 宋体;font-size: 12px;">密码修改成功后，系统将自动退出，请使用新密码登录系统！</font>
			</td>
		</tr>
	<#else>
		<tr bgcolor="#EEEEEE" align="center">
			<td>地区</td>
			<td><input name="province" size="8" maxlength="15" value="${master.province!}">省<input name="city" size="8" maxlength="15" value="${master.city!}">市<input name="company" size="16" maxlength="15" value="${master.company!}">分公司</td>
		</tr>
		<tr bgcolor="#EEEEEE" align="center">
			<td>权限</td>
			<td>
				<select name="authority">
					<option value="1" <#if master.authority == 1>selected</#if>>系统管理员</option>
					<option value="2" <#if master.authority == 2>selected</#if>>高级管理员</option>
					<option value="3" <#if master.authority == 3>selected</#if>>普通管理员</option>
				</select>
			</td>
		</tr>
	</#if>
		<tr bgcolor="#FFFFFF" align="center">
			<td colspan="4">
				<input type="submit" value="提交">&nbsp;
				<input type="reset" value="返回" onclick="history.back();">
			</td>
		</tr>
	</table>
</form>
</body>
</html>
</#escape>