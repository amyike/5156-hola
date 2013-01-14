<#escape x as (x)!>
<!DOCTYPE>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>会员卡申请表</title>
<style type="text/css">
body {
	background-color: #EEEEEE;
}

table {
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>

<body>
	<form action="/member/add" method="post">
		<table border="1" style="width: 760">
			<tr>
				<td>
					<table border="1"
						style="background-color: rgb(204, 232, 207); width: 100%;"
						summary="123">
						<thead>
							<tr>
								<th colspan="2" align="center" width="30%"
									style="font-family: 宋体; font-size: 20px;">会员卡申请表</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><font color="red">*</font>姓名</td>
								<td><input name="name"></td>
							</tr>
							<tr>
								<td><font color="red">*</font>身份证号码</td>
								<td><input name="idCard" maxlength="20"></td>
							</tr>
							<tr>
								<td><font color="red">*</font>会员卡开通方式</td>
								<td><input type="radio" name="openWay">凭表上门自办<input
									type="radio" name="openWay">委托代办</td>
							</tr>
							<tr>
								<td><font color="red">*</font>联系电话</td>
								<td><input name="tel" maxlength="20"></td>
							</tr>
							<tr>
								<td><font color="red">*</font>取货方式</td>
								<td><input type="radio" name="pickUpWay">自提<input
									type="radio" name="pickUpWay">送货&nbsp;<span
									style="font-size: 10pt; font-family: Arial">送货地址：</span><input
									name="sendAddr"></td>
							</tr>
							<tr>
								<td><font color="red">*</font>意向认购</td>
								<td>国香系列：<input type="checkbox" name="pickUpWay">原香压榨<input
									type="checkbox" name="pickUpWay">有机冷榨<br> 国粹系列：<input
									type="checkbox" name="pickUpWay">珍稀野生<input
									type="checkbox" name="pickUpWay">中央茶场
								</td>
							</tr>
							<tr>
								<td><font color="red">*</font>客户签名</td>
								<td><input name="customersName"></td>
							</tr>
							<tr>
								<td colspan="2"><font color="red">特别提示：</font>
									<p style="font-size: 10pt; font-family: Arial">
										本表仅为客户意向申请，是获取泰谷堂会员卡的有效凭证，<br>
										申请成功后持卡会员将尊享一对一的专人服务，请务必将相关信息填写正确。<br>
										凭本表首次申请办理会员卡，将免除工本费用。<br>
										凭本表录入泰谷堂会员信息系统后，客户于10日内首次购买任一产品后即开通生效，<br> 否则本表自动失效。
									</p></td>
							</tr>
							<tr>
								<td><font color="red">*</font>图片验证码:</td>
								<td><input name="tel" maxlength="4">&nbsp;<img
									src="http://jjidc.com/include/getcode.asp"></td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="2" align="center"><input type="submit"
									value="提交">&nbsp;<input type="reset" value="重置"></td>
							</tr>
						</tfoot>
					</table>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
</#escape>