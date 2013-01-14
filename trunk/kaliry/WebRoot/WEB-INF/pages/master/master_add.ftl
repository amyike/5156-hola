<#escape x as (x)!>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv=Content-Type content=text/html;charset=UTF-8>
<title>添加管理员</title>
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

<body>
<form name="mainForm" action="/master/add" method="post" onsubmit="return checkForm(this);" autocomplete = "off">
	<table border="0" width="800pt;">
		<tr class="main_title">
			<td height="30" align="center" style="font-size:16px" colspan="3">添加管理员信息管理</td>
		</tr>
		<tr bgcolor="#EEEEEE" align="center">
			<td>编号ID</td>
			<td>${master.id!}</td>
			<td><font color="green" style="font-family: 宋体;font-size: 12px;">编号ID - 系统自动生成不可修改</font></td>
		</tr>
		<tr bgcolor="#EEEEEE" align="center">
			<td><font color="red">*</font>帐号</td>
			<td><input name="account" autocomplete="off" value="${master.account!}" onchange="checkNameExists(this.value);"></td>
			<td>
				<font id="warn_account_exists" color="red" style="font-family: 宋体;font-size: 12px; display: none;">此帐号已经存在</font><nobr>
				<font id="warn_account" color="green" style="font-family: 宋体;font-size: 12px;">登录帐号(3位到10位),只能是英文或英文和数字的组合</font>
			</td>
		</tr>
		<tr bgcolor="#EEEEEE" align="center">
			<td><font color="red">*</font>密码</td>
			<td><input type="password" name="password"></td>
			<td><font id="warn_password" color="green" style="font-family: 宋体;font-size: 12px;">登录密码长度需要在6-15之间</font></td>
		</tr>
		<tr bgcolor="#EEEEEE" align="center">
			<td><font color="red">*</font>地区</td>
			<td><input name="province" size="5" maxlength="15">省<input name="city" size="5" maxlength="15">市<input name="company" size="16" maxlength="15">分公司</td>
			<td><font id="warn_region" color="green" style="font-family: 宋体;font-size: 12px;">地区用于管理本地区会员信息</font></td>
		</tr>
		<tr bgcolor="#EEEEEE" align="center">
			<td><font color="red">*</font>权限</td>
			<td>
				<select name="authority">
					<option value="1" <#if master.authority == 1>selected</#if>>系统管理员</option>
					<option value="2" <#if master.authority == 2>selected</#if>>高级管理员</option>
					<option value="3" <#if master.authority == 3>selected</#if>>普通管理员</option>
				</select>
			</td>
			<td><font color="green" style="font-family: 宋体;font-size: 12px;">更高级权限将拥有系统全部权限，请谨慎选择</font></td>
		</tr>
		<tr bgcolor="#EEEEEE" align="center">
			<td colspan="4">
				<input type="submit" value="提交">&nbsp;
				<input type="reset" value="返回" onclick="history.back();">
			</td>
		</tr>
	</table>
</form>
<script src="/js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script src="/js/edit.js" type="text/javascript"></script>
<script type="text/javascript">
	//检查表单
	function checkForm(form){
		var account = $.trim($("input[name='account']").val());
		if(!account || account.length < 3 || account.length > 10){
			$("#warn_account").css("color", "red");
			return false;
		}else{
			$("#warn_account").css("color", "green");
		}
		var password = $.trim($("input[name='password']").val());
		if(!password || password.length < 6 || password.length > 15){
			$("#warn_password").css("color", "red");
			return false;
		}else{
			$("#warn_password").css("color", "green");
		}
		var province = $.trim($("input[name='province']").val());
		var city = $.trim($("input[name='city']").val());
		if(!province || !city){
			$("#warn_region").css("color", "red");
			return false;
		}else{
			$("#warn_region").css("color", "green");
		}
		return true;
	}
	
	
	//检查用户名是否存在
	function checkNameExists(account) {
		if(!$.trim(account))return;
		$.post("/master/checkExists", {
			"account" : account
		}, function(retVal) {
			if(retVal.result){
				$("#warn_account_exists").show();
			}else{
				$("#warn_account_exists").hide();
			}
		});
	}
</script>
</body>
</html>
</#escape>