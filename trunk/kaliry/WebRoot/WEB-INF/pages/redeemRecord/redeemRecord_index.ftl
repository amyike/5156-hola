<#escape x as (x)!>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv=Content-Type content=text/html;charset=UTF-8>
<title>兑换信息管理</title>
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
	<table border="1" width="90%">
		<tr class="main_title">
			<td height="30" align="center" style="font-size:16pt" colspan="5">${member.cardno!} 会员 <a href="javascript:;" onclick="location.href='/member/edit?id=${member.id!}';return false;" title="查看详细">${member.name!}</a> 的兑换信息管理</td>
		</tr>
		<tr bgcolor="#FFFFFF" align="left" style="font-size:14px; height: 22pt;">
			<td colspan="5">
				<#if member.credits lt 3000>
					<a href="javascript:void(0);" onclick="alert('积分不足3000，无法兑换~');return false;">添加兑换记录</a>&nbsp;
				<#else>
					<a href="javascript:void(0);" onclick="location.href='/redeemRecord/add?memberId=${member.id!0}';return false;">添加兑换记录</a>&nbsp;
				</#if>
				<a href="javascript:void(0);" onclick="location.href='/tradeRecord?memberId=${member.id!0}';return false;">查看交易记录</a>&nbsp;
				<button onclick="location.reload();">刷新</button>&nbsp;
				<div style="float:right;">当前积分：${member.credits!0}</div>&nbsp;
			</td>
		</tr>
		<tr bgcolor="#EEEEEE" align="center">
			<td>编号ID</td>
			<td>物品名</td>
			<td>数量</td>
			<td>备注</td>
			<td>日期</td>
		</tr>
	<#if page??&&page.elements??>
	<#list page.elements as redeemRecord>
		<tr bgcolor="#FFFFFF" align="center">
			<td>${redeemRecord.id!0}</td>
			<td>${redeemRecord.name!}</td>
			<td>${redeemRecord.number!}</td>
			<td title="${redeemRecord.desc!}"><#if redeemRecord.desc!?length gt 3>${redeemRecord.desc[0..3]}<#else>${redeemRecord.desc!}</#if></td>
			<td>${redeemRecord.time?string("yyyy-MM-dd")}</td>
		</tr>
	</#list>
		<tr bgcolor="#EEEEEE" align="center">
			<td colspan="5">
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