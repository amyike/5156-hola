<#escape x as (x)!>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv=Content-Type content=text/html;charset=UTF-8>
<title>会员信息管理</title>
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
			<td height="30" align="center" style="font-size:16pt" colspan="10">会员信息管理</td>
		</tr>
		<tr bgcolor="#FFFFFF" align="left" style="font-size:14px; height: 22pt;">
			<td colspan="10">
				<form action="/member" style="float:right;">
					身份证：<input name="idcard">
					会员卡号：<input name="cardno">
					<#if LOGIN_USER.authority == 1>
					分公司：<input name="company">
					</#if>
					<input type="submit" value="搜索">
				</form>
				<a href="javascript:void(0);" onclick="location.href='/member/add';return false;">添加</a>&nbsp;
				<a href="javascript:void(0);" onclick="location.href='/member';return false;">全部</a>&nbsp;
				<a href="javascript:void(0);" onclick="location.href='/member?state=1';return false;">已激活</a>&nbsp;
				<a href="javascript:void(0);" onclick="location.href='/member?state=2';return false;">已弃用</a>&nbsp;
				<a href="javascript:void(0);" onclick="location.href='/member?state=0';return false;">10天内未激活</a>&nbsp;
				<a href="javascript:void(0);" onclick="window.open('/member/exportData?type=member').focus();">会员导出Excel</a>
				<a href="javascript:void(0);" onclick="window.open('/member/exportData?type=tradeRecord').focus();">交易导出Excel</a>
				<a href="javascript:void(0);" onclick="window.open('/member/exportData?type=redeemRecord').focus();">兑换导出Excel</a>
			</td>
		</tr>
		<tr bgcolor="#EEEEEE" align="center">
			<td>序号</td>
			<td>会员卡号</td>
			<td>姓名</td>
			<td>联系方式</td>
			<td>地区</td>
			<td>身份证</td>
			<td>录入日期</td>
			<td>积分</td>
			<td>激活状态</td>
			<td>管理操作</td>
		</tr>
	<#if page??&&page.elements??>
	<#list page.elements as member>
		<tr bgcolor="#FFFFFF" align="center">
			<td>${member.id!0}</td>
			<td>${member.cardno!0}</td>
			<td>
				<#if LOGIN_USER.authority == 2 || (LOGIN_USER.authority == 3 && LOGIN_USER.company!=member.company)>
					${member.name!}
				<#else>
					<a href="javascript:;" onclick="location.href='/member/edit?id=${member.id!}';return false;" title="查看详细">${member.name!}</a>
				</#if>
			</td>
			<td>${member.tel!}</td>
			<td>${member.province!}&nbsp;${member.city!}&nbsp;${member.company!}</td>
			<td>${member.idcard!}</td>
			<td>${member.entryTime?string("yyyy-MM-dd")}</td>
		<#if LOGIN_USER.authority == 1>
			<td><input size="10" id="_credits" onblur="updCredits_${member.id!0}(this)" border="1" style="border-color:green;" value="${member.credits!}"></td>
			<script type="text/javascript">
				function updCredits_${member.id!0}(obj){
					var credits = $.trim(obj.value);
					if(credits==${member.credits!}){
						return;
					}
					if(!confirm("确认将会员 ${member.name!} 的积分修改为 "+credits)){
						return;
					}
					$.post("/member/updCredits",{
						memberId: ${member.id!0},
						credits: credits
					},function(retVal){
						if(retVal.result){
							//alert(retVal.msg);
						}
					});	
				}
			</script>
		<#else>
			<td>${member.credits!}</td>
		</#if>
			<td><#if member.state==1>已激活<#else>未激活</#if></td>
			<td class="operate_a">
			<#if LOGIN_USER.authority == 1>
				<#if member.state==1>
					<a>已激活</a>&nbsp;
				<#else>
					<a href="javascript:;" onclick="location.href='/member/edit?id=${member.id!}';return false;" title="查看详细">激活</a>&nbsp;
				</#if>
				<#if member.state==2>
					<a>已弃用</a>&nbsp;
				<#else>
					<a href="javascript:void(0);" onclick="if(confirm('确认要弃用此用户？')){location.href='/member/updState?id=${member.id!0}&amp;state=2';return false;}">弃用</a>&nbsp;
				</#if>
				<a href="javascript:void(0);" onclick="if(confirm('删除此用户后将删除此用户的购买记录和兑换记录，并且不可恢复，确认要删除此用户？')){location.href='/member/del?id=${member.id!0}';return false;}">删除</a>
			</#if>
			<a href="javascript:void(0);" onclick="location.href='/tradeRecord?memberId=${member.id!0}';return false;">交易记录</a>&nbsp;
			<a href="javascript:void(0);" onclick="location.href='/redeemRecord?memberId=${member.id!0}';return false;">兑换记录</a>&nbsp;
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