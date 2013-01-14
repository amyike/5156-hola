<#escape x as (x)!>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv=Content-Type content=text/html;charset=UTF-8>
<title>添加兑换记录</title>
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
<script src="/js/jquery-1.7.1.min.js" type="text/javascript"></script>
</head>

<body>
<form name="mainForm" action="/redeemRecord/add" method="post" autocomplete = "off">
	<input type="hidden" name="member.id" value="${member.id!}">
	<table border="0" width="800pt;">
		<tr class="main_title">
			<td height="30" align="center" style="font-size:16px" colspan="3">添加会员 ${member.name!} 的兑换记录(可兑换积分 ${member.credits!0})</td>
		</tr>
		<tr bgcolor="#EEEEEE" align="center">
			<td><font color="red">*</font>物品名称</td>
			<td><input name="name" autocomplete="off" msg="物品名称" value="国香原香压榨茶叶籽油500ml" readonly size="25"></td>
		</tr>
		<tr bgcolor="#EEEEEE" align="center">
			<td><font color="red">*</font>数量</td>
			<td><input name="number" msg="数量"></td>
		</tr>
		<tr bgcolor="#EEEEEE" align="center">
			<td><font color="red">*</font>日期 <lable style="color: red; font-size: 13px;">格式：2012-12-12</lable></td>
			<td><input name="_time" msg="日期" value="${currentDate?string("yyyy-MM-dd")}"></td>
		</tr>
		<tr bgcolor="#EEEEEE" align="center">
			<td><font color="red">*</font>备注</td>
			<td><textarea name="desc" autocomplete="off" msg="备注"></textarea></td>
		</tr>
		<tr bgcolor="#EEEEEE" align="center">
			<td colspan="4">
				<input type="button" onclick="checkSubmit(this);" value="提交">&nbsp;
				<input type="reset" value="返回" onclick="history.back();">
			</td>
		</tr>
	</table>
</form>

<script src="/js/edit.js" type="text/javascript"></script>
<script type="text/javascript">
	//检查表单
	function checkSubmit(obj){
		
		var flag = true;
		$("form input:text").each(function(i, n){
			if(!$.trim($(n).val())){
				alert("请填写"+$(n).attr("msg"));
				$(n).focus();
				return flag = false;
			}
			if(($(n).val()*3000)>${member.credits!0}){
				//alert('积分不足以兑换该数量物品')
				alert("最多能兑换 "+Math.floor(${member.credits!0}/3000)+" 件该物品");
				return flag = false;
			}
		});
		if(flag){
			obj.disabled = !obj.disabled;
			obj.value = "提交中...";
			$("form").submit();
		}
	}
	
</script>
</body>
</html>
</#escape>