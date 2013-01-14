<#escape x as (x)!>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv=Content-Type content=text/html;charset=UTF-8>
<title>购买记录</title>
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
			<td height="30" align="center" style="font-size:16pt" colspan="10">${member.cardno!} 会员 <a href="javascript:;" onclick="location.href='/member/edit?id=${member.id!}';return false;" title="查看详细">${member.name!}</a> 的交易记录</td>
		</tr>
		<tr bgcolor="#FFFFFF" align="left" style="font-size:14px; height: 22pt;">
			<td colspan="10">
				<a href="javascript:void(0);" onclick="location.href='/tradeRecord/add?memberId=${member.id!0}&amp;type=1';return false;">添加购买记录</a>&nbsp;
				<a href="javascript:void(0);" onclick="location.href='/tradeRecord?memberId=${member.id!0}&amp;type=0';return false;">查看全部记录</a>&nbsp;
				<a href="javascript:void(0);" onclick="location.href='/tradeRecord?memberId=${member.id!0}&amp;type=1';return false;">查看购买记录</a>&nbsp;
				<a href="javascript:void(0);" onclick="location.href='/tradeRecord?memberId=${member.id!0}&amp;type=2';return false;">查看退货记录</a>&nbsp;
				<a href="javascript:void(0);" onclick="location.href='/redeemRecord?memberId=${member.id!0}';return false;">兑换积分</a>&nbsp;
				<button onclick="location.reload();">刷新</button>
				<div style="float:right;">当前积分：${member.credits!}&nbsp;总计金额：${totalMoney!}</div>&nbsp;
			</td>
		</tr>
		<tr bgcolor="#EEEEEE" align="center">
			<td>序号ID</td>
      		<td>物品编号</td>
      		<td>物品名</td>
      		<td>数量</td>
      		<td>单价</td>
      		<td>金额</td>
      		<td>备注</td>
      		<td>日期</td>
      		<td>交易类型</td>
      		<td>管理操作</td>
		</tr>
	<#if page??&&page.elements??>
	<#list page.elements as tradeRecord>
		<tr bgcolor="#FFFFFF" align="center">
			<td>${tradeRecord.id!0}</td>
			<td>${tradeRecord.itemNo!}</td>
			<td>${tradeRecord.name!}</td>
			<td>${tradeRecord.number!}</td>
			<td>${tradeRecord.price!}</td>
			<td>${tradeRecord.money!}</td>
			<td title="${tradeRecord.desc!}"><#if tradeRecord.desc!?length gt 3>${tradeRecord.desc[0..3]}<#else>${tradeRecord.desc!}</#if></td>
			<td>${tradeRecord.time?string("yyyy-MM-dd")}</td>
			<td><#if tradeRecord.type==1>购买<#else>退货</#if></td>
			<td>
			<#if tradeRecord.type!=2>
				<#if tradeRecord.money lte member.credits>				
					<a href="javascript:void(0);" onclick="if(confirm('确认要退掉此物品？')){location.href='/tradeRecord/updType?id=${tradeRecord.id!}&amp;type=2&memberId=${member.id!}';return false;}">退货</a>&nbsp;
				<#else>
					<a href="javascript:void(0);" onclick="alert('您当前总积分少于此次退货扣除积分，无法退货~');return false;">退货</a>&nbsp;
				</#if>
			<#else>
				已退货
			</#if>
			<#if LOGIN_USER.authority == 1>
				<a href="javascript:void(0);" onclick="if(confirm('确定要删除此交易信息？')){location.href='/tradeRecord/del?id=${tradeRecord.id!}&amp;memberId=${member.id!}';return false;}">删除</a>&nbsp;
			</#if>
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