<#escape x as (x)!>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv=Content-Type content=text/html;charset=UTF-8>
<title>添加购物记录</title>
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
<form name="mainForm" action="/tradeRecord/add" method="post" autocomplete = "off">
	<input type="hidden" name="member.id" value="${member.id!}">
	<input type="hidden" name="type" value="${type!}">
	<table border="0" width="800pt;">
		<tr class="main_title">
			<td height="30" align="center" style="font-size:16px" colspan="3">添加会员 ${member.name!} 的购物记录</td>
		</tr>
		<tr bgcolor="#EEEEEE" align="center">
			<td><font color="red">*</font>物品编号</td>
			<td><input name="itemNo" autocomplete="off" msg="物品编号"></td>
		</tr>
		<tr bgcolor="#EEEEEE" align="center">
			<td><font color="red">*</font>物品名称</td>
			<td><input name="name" autocomplete="off" msg="物品名称"></td>
		</tr>
		<tr bgcolor="#EEEEEE" align="center">
			<td><font color="red">*</font>数量</td>
			<td><input name="number" msg="数量"></td>
		</tr>
		<tr bgcolor="#EEEEEE" align="center">
			<td><font color="red">*</font>单价</td>
			<td><input name="price" msg="单价"></td>
		</tr>
		<tr bgcolor="#EEEEEE" align="center">
			<td><font color="red">*</font>总计金额</td>
			<td><input name="money" readonly msg="总计金额"></td>
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
<script src="/js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script src="/js/edit.js" type="text/javascript"></script>
<script type="text/javascript">

	$("input[name=number]").keyup(function(){
		var number = $.trim($(this).val());
		var price = $.trim($("input[name=price]").val());
		if(number&&price){
			$("input[name=money]").val(number*price);
		}else{		
			$("input[name=money]").val(0);
		}
	});
	$("input[name=price]").keyup(function(){
		var price = $.trim($(this).val());
		var number = $.trim($("input[name=number]").val());
		if(price&&number){
			$("input[name=money]").val(number*price);
		}else{		
			$("input[name=money]").val(0);
		}
	});
	
	//检查表单
	function checkSubmit(obj){
	
		var flag = true;
		$("form input:text").each(function(i, n){
			if(!$.trim($(n).val())){
				alert("请填写"+$(n).attr("msg"));
				$(n).focus();
				flag = false
				return false;
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