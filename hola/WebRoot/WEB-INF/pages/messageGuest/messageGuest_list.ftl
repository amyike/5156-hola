<#escape x as (x)!>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv=Content-Type content=text/html;charset=UTF-8>
<title>嘉宾留言管理</title>
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

.operate_a a{
    font-family: Verdana,Arial,Helvetica,sans-serif;
    font-size: 13px;
}
</style>
<script src="/js/jquery-1.7.1.min.js" type="text/javascript"></script>

</head>

<body>
	<table border="1" width="100%" summary="123">
		<tr class="main_title">
			<td height="30" align="center" style="font-size:16pt" colspan="10">嘉宾留言管理</td>
		</tr>
		<tr bgcolor="#FFFFFF" align="left" style="font-size:14px; height: 22pt;">
			<td colspan="10">
				<form action="/messageGuest/list" style="float:right;" method="post">
					手机：<input name="tel">
					QQ：<input name="qq">
					<input type="submit" value="搜索">
				</form>
				<a href="javascript:void(0);" onclick="location.href='/messageGuest/list';return false;">全部</a>&nbsp;
			</td>
		</tr>
		<tr bgcolor="#EEEEEE" align="center">
			<td>姓名</td>
			<td>编号</td>
			<td>手机</td>
			<td>QQ</td>
			<td>节目类型</td>
			<td>留言内容</td>
			<td>时间</td>
			<td class="operate_a">管理操作</td>
		</tr>
	<#if page??&&page.elements??>
	<#list page.elements as messageGuest>
		<tr bgcolor="#FFFFFF" align="center">
			<td>${messageGuest.name!}</td>
			<td>${messageGuest.number!0}</td>
			<td>${messageGuest.tel!}</td>
			<td>${messageGuest.qq!}</td>
			<td>${messageGuest.style!}</td>
			<td>${messageGuest.content!}</td>
			<td>${messageGuest.time?string("yyyy-MM-dd HH:mm:ss")}</td>
			<td class="operate_a">
				<a href="javascript:void(0);" onclick="if(confirm('确认要删除此信息？')){location.href='/messageGuest/del?id=${messageGuest.id!0}';return false;}">删除</a>
			</td>
		</tr>
	</#list>
		<tr bgcolor="#EEEEEE" align="center">
			<td colspan="10">
				<style type="text/css">
					.pageString ul{list-style:none;width:570px;height:30px;margin-left:10px;}
					.pageString ul li{float:left;padding:4px 8px; margin-left:2px; background:#fff;}
					.pageString ul li a{ color:#000;}
					.pageString ul li a:hover{ color:#000;}
					.pageString ul li.page_current{background:#666;}
					.pageString ul li.page_current a{color:#fff;}
					.pageString ul li.page_current a:hover{color:#fff;}
				</style>
				<div id="pageString" class="pageString">${page.pageString}</div>
			</td>
		</tr>
	</#if>
	</table>
</body>
</html>
</#escape>