<#escape x as (x)!>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv=Content-Type content=text/html;charset=UTF-8>
<title>添加经验交流</title>
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
<form name="mainForm" action="/experience/add" method="post" autocomplete = "off">
	<table border="0" width="800px;">
		<tr class="main_title">
			<td height="30" align="center" style="font-size:16px" colspan="3">添加经验交流</td>
		</tr>
		<tr bgcolor="#EEEEEE" align="center">
			<td><font color="red">*</font>标题</td>
			<td><input name="title" style="width:600px;"></td>
		</tr>
		<tr bgcolor="#EEEEEE" align="center">
			<td><font color="red">*</font>内容</td>
			<td>
				<textarea id="content" name="content" style="width:700px;height:300px;" msg="经验交流内容">
					经验交流内容
				</textarea>
			</td>
		</tr>
		<tr bgcolor="#EEEEEE" align="center">
			<td colspan="4">
				<input type="submit" value="提交">&nbsp;
				<input type="reset" value="返回" onclick="history.back();">
			</td>
		</tr>
	</table>
</form>

<link rel="stylesheet" href="/componets/kindeditor/themes/default/default.css" />
<link rel="stylesheet" href="/componets/kindeditor/themes/simple/simple.css" />
<script src="/js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script src="/js/edit.js" type="text/javascript"></script>
<script charset="utf-8" src="/componets/kindeditor/kindeditor-min.js"></script>
<script charset="utf-8" src="/componets/kindeditor/lang/zh_CN.js"></script>
<script type="text/javascript">
	KindEditor.ready(function(K) {
		var editor = K.create('textarea[name="content"]', {
        	//cssPath : '/css/index.css',
        	//filterMode : true,
        	themeType : 'simple',
        	allowFileManager : true
		});
		//.sync();
	});
	
	//检查表单
	$("form").live("submit", function(){
		var content = $.trim($("textarea").text());
		if(content.length <= 0){
			alert("请填写内容");
			return false;
		}
		return true;
	});
</script>
</body>
</html>
</#escape>