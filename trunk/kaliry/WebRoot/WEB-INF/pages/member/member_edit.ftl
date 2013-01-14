<#escape x as (x)!>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>无标题文档</title>

<style>
/*reset*/
html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,dd,dl,dt,li,ol,ul,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td
	{
	margin:0;
	padding:0;
}
body{
	background:#FFF;
	width:100%;
	color:#333;
	font-size:14px;
}
img{border:none; display:block;}
ul{list-style:none;}
a{text-decoration:none; color:#333;}
a:hover{color:#00819A;}
/*reset*/


.table_style{width:1006px; margin:0 auto;}
.table_style tr{line-height:30px;}
.table_style tr td{border-top:#999 solid 1px;  border-left:#999 solid 1px; border-right:#999 solid 1px;}
.table_style tr td span{}
.table_style tr td .span_null{}
.span160{float:left; width:160px;}
.span200{float:left; width:200px;}
.span300{float:left; width:300px;}
.span400{float:left; width:400px;}
.span500{float:left; width:500px;}
.span600{float:left; width:600px;}
.span700{float:left; width:700px;}
.span740{float:left; width:740px;}
.span800{float:left; width:800px;}
.table_style tr td .align_L{text-align:left;}
.table_style tr td .align_R{text-align:right;}
.table_style tr td .align_C{text-align:center;}
.table_style tr td .number{width:17px; height:16px; text-align:center;}
.table_style tr td .text100{width:100px;}
.table_style tr td .label{}
.table_style tr td .lineH50{line-height:50px;}
.pa{padding:0 10px;}
.bor_right{border-right:#999 solid 1px;}
.bor_bottom{border-bottom:#999 solid 1px;}

.logo_div img{width:100px;height:35px;margin:0 auto;}

.number_div{width:1006px; margin:0 auto; text-align:right;}
.number_h3{width:1006px; margin:0 auto; text-align:center;}
.title_div{width:1006px; margin:0 auto; text-align:center;}


.first{ background:#bdf !important;}
.odd{ background:#eee;}
.even{ background:#f8f8f8;}

</style>

<script src="/js/jquery-1.7.1.min.js" type="text/javascript"></script>
</head>
<body>

<form action="/member/edit" method="post">
<input type="hidden" id="memberId" name="id" value="${member.id!}">
<input type="hidden" id="state" name="state" value="0">
<div class="title_div"><h3>泰谷堂体验中心 - 会员卡申请表</h3></div>
<!--<div class="logo_div"><img src="/images/logo_2.jpg"></div>-->

<table class="table_style" border="0" cellspacing="0" cellpadding="0">
  <tr>
  	<td>
		<div class="number_div">编号：<input class="text100 output-body" type="text" name="number" value="${member.number!}" readonly id="_nn" msg="编号"></div>
		<div class="number_div">
			地区：<input class="text100 NOTNULL" type="text" name="province" value="${member.province!}" id="_nn" size="5" maxlength="5" msg="省">省
			<input class="text100 NOTNULL" type="text" size="5" maxlength="5" name="city" value="${member.city!}" id="_nn" msg="市">市<br>
			<input class="text100 NOTNULL" type="text" size="15" maxlength="15" name="company" value="${member.company!}" id="_nn" msg="分公司">分公司
		</div>
  	</td>
  </tr>
  <tr>
    <td>
      <span class="span200"><label class="label" for="_name">姓名：</label><input name="name" value="${member.name!}" class="text100 NOTNULL" type="text" id="_name" msg="姓名" onkeyup="document.getElementById('q_1_').value=this.value"></span>
      <span class="span800 align_C">
        <label class="label" for="_number">身份证号：</label>
        <input class="NOTNULL" type="text" name="idcard" value="${member.idcard!}" maxlength="18" id="_number" msg="身份证号">
      </span>
    </td>
  </tr>
  <tr>
    <td>
      <span class="span200">会员卡开通方式（单选）</span>
      <span class="span300">
      	<input type="hidden" name="openWay" value="1">
        <input type="radio" name="_openWay" onclick="$('input[name=openWay]').val(0);" id="r_1"><label for="r_1">凭表上门自办</label>
        <input type="radio" name="_openWay" onclick="$('input[name=openWay]').val(1);" id="r_2" checked><label for="r_2">委托代办</label>
      </span>
      <span class="span500">
        <label for="telephone">联系电话：</label><input type="text" class="NOTNULL" id="telephone" name="tel" value="${member.tel!}" msg="name" maxlength="20">
      </span>
    </td>
  </tr>
  <tr>
    <td>
      <span class="span200">取货方式(单选)</span>
      <span class="span200">
      	<input type="hidden" name="pickupWay" value="1">
        <input type="radio" name="_pickupWay" id="z_1" onclick="$('input[name=pickupWay]').val(0);"><label for="z_1">自提</label>
        <input type="radio" name="_pickupWay" id="z_2" onclick="$('input[name=pickupWay]').val(1);" checked><label for="z_2">送货</label>
      </span>
      <span class="span600">
	    <label for="address">送货地址：</label><input type="text" size="30" id="address" name="sendAddr" value="${member.sendAddr!}" msg="送货地址">
      </span>
    </td>
  </tr>
  <tr>
    <td>
      <span class="span200">意向认购（多选）</span>
      <input type="hidden" name="purchaseIntention" value="${member.purchaseIntention!}">
      <span class="span800">
        国香系列：
        <input type="checkbox" name="_purchaseIntention" id="c_1" value="1" <#if member.purchaseIntention?contains('1')>checked</#if>><label for="c_1">原香压榨</label>
        <input type="checkbox" name="_purchaseIntention" id="c_2" value="2" <#if member.purchaseIntention?contains('2')>checked</#if>><label for="c_2">有机冷榨</label>
      </span>
      <br>
      <span class="span200">&nbsp;</span>
      <span class="span800">
        国粹系列：
        <input type="checkbox" name="_purchaseIntention" id="x_1" value="3" <#if member.purchaseIntention?contains('3')>checked</#if>><label for="x_1">珍稀野生</label>
        <input type="checkbox" name="_purchaseIntention" id="x_2" value="4" <#if member.purchaseIntention?contains('4')>checked</#if>><label for="x_2">中央茶场</label>
      </span>
      <script type="text/javascript">
      	$("input[name=_purchaseIntention]").click(function(){
      		var s = '';
      		$("input[name=_purchaseIntention]").each(function(i, n){
      			if($(n).attr('checked')){
      				s+=$(this).val()+',';
      			}
      		});
      		$("input[name=purchaseIntention]").val(s);
      	});
      </script>
    </td>
  </tr>
  <tr>
    <td>
      <span class="span700 pa bor_right">
        <div style="font-size:12px;"> 特别提示：<br>本表仅为客户意向申请，是获取泰谷堂会员卡的有效凭证，申请成功后持卡会员将尊享一对一的专人服务，请务必将相关信息填写正确。凭本表首次申请办理会员卡，将免除工本费用。凭本表录入泰谷堂会员信息系统后，客户于10日内首次购买任一产品后即开通生效，否则本表自动失效。</div>
      </span>
      <span class="span200 lineH50 pa">
        <label for="q_1" style="padding-top:35px;display:block;height:20px;">客户签名：<input type="text" class="NOTNULL" name="customerSignature" value="${member.customerSignature!}" readonly id="q_1_" style="width:100px;" msg="客户签名" onkeyup="document.getElementById('_name').value=this.value"></label>
        <label for="q_2" style="display:block;height:20px;">申请日期：<input type="text" class="NOTNULL" name="_applyTime" value="${member.applyTime?string('yyyy-MM-dd')}" readonly id="q_2" style="width:100px;" msg="申请日期"></label>
      </span>
    </td>
  </tr>
  <tr>
    <td>
      <span class="span500"><label for="n_1">服务专员编号：</label><input type="text" class="NOTNULL" name="servicerId" value="${member.servicerId!}" maxlength="14" id="n_1" msg="服务专员编号"></span>
      <span class="span500"><label for="n_2">服务专员签字：</label><input type="text" class="NOTNULL" name="servicerName" value="${member.servicerName!}" id="n_2" msg="服务专员签字"></span>
    </td>
  </tr>
  <tr>
    <td>
      <span class="span500">泰谷堂体验中心受理意见：受理与否？(单选)</span>
      <span class="span500">
      	<input type="hidden" name="isAccept" value="1">
        <input name="_isAccept" type="radio" id="y_1" onclick="$('input[name=isAccept]').val(1);" checked><label for="y_1">是</label>
        <input name="_isAccept" type="radio" id="y_2" onclick="$('input[name=isAccept]').val(0);"><label for="y_2">否</label>
      </span>
    </td>
  </tr>
  <tr>
    <td>
      <span class="span300"><label for="h_1">会员信息录入日期：</label><input type="hidden" name="entryTime" id="h_1" msg="会员信息录入日期" value="${member.entryTime}">${member.entryTime?string("yyyy-MM-dd")}</span>
      <span class="span300"><label for="h_2">会员卡生效日期：</label><input type="text" name="_activateTime" value="${member.activateTime?string('yyyy-MM-dd')}" id="h_2" msg="会员卡生效日期" class="NOTNULL2"></span>
      <span class="span300"><label for="h_3">受理人签字：</label><input type="text" name="assignees" value="${member.assignees!}" id="h_3" msg="受理人签字" class="NOTNULL2"></span>
    </td>
  </tr>
  <tr>
    <td>
      <span class="span500"><label for="k_1">会员卡号：</label><input type="text" name="cardno" maxlength="14" id="k_1" msg="会员卡号" value="${member.cardno!}" class="NOTNULL2"></span>
    </td>
  </tr>
  <tr>
    <td>
      <span class="span500"><label for="t_1">签收人：</label><input type="text" class="NOTNULL2" name="signer" id="t_1" msg="签收人" value="${member.signer!}"></span>
      <span class="span500">
        <label for="n_1">签收日期：</label><input type="text" class="NOTNULL2" name="_signTime" value="${member.signTime?string('yyyy-MM-dd')}" class="NOTNULL2" id="q_2" style="width:100px;" msg="签收日期">
      </span>
    </td>
  </tr>
  <tr>
    <td>本表一式两联，第一联为公司联，第二联为客户联，其中客户联在客户领取会员卡时予以回销。</td>
  </tr>
  <tr>
    <td align="center">
    	<div class="bor_bottom">
    		<#if LOGIN_USER??&&LOGIN_USER.authority??&&(LOGIN_USER.authority==1||LOGIN_USER.authority==2)>
				<input type="submit" value="修改">&nbsp;
			</#if>
    		<#if member.state!=1>
    			<input type="submit" onclick="document.getElementById('state').value=1;" value="激活">&nbsp;
			</#if>
    		<input type="reset" value="取消" onclick="history.back();">
    	</div>
    </td>
  </tr>
</table>
</form>

<script type="text/javascript">
document.body.onload=function(){
	var table=document.getElementsByTagName('table')[0];
	var tr=table.getElementsByTagName('tr')
	for(var i=0;i<tr.length;i++){
		  if((i%2)==0){
			tr[i].className='even';
		  }else{
			tr[i].className='odd';
		  }
	}
};

var flag = "修改";
$("input[type='submit']").live("click", function(){
	flag = $(this).val();
});

$(document).ready(function(){
	$(".number").live("mouseup", function(){
		$(this).select();
	});
	$(".number").live("keyup", function(event){
		var asciicode=event.keyCode;
		//var strcode=String.fromCharCode(asciicode);
		//alert(strcode+":"+asciicode);
		var value = $(this).val();
		var index = $(".number").index(this);
		if(asciicode == 8){
			if(index-2<0){
				$(".number").eq(0).focus().select();
				return;
			}
			$(".number").eq(index-1).focus().select();
			return;
		}
		var valueRegExp = new RegExp("([0-9]|z|x)");
		if(valueRegExp.test(value) || (index == 18 && value == "x")){
			$(".number").eq(index+1).focus();
		}else{
			$(this).select();
		}
	});
	
});

$("form").live("submit", function(){
		var isEach = true;
		$(".NOTNULL").each(function(i){
			if(isEach){
				if($(this).val() == ""){
					alert("请填写： "+$(this).attr("msg"));
					$(this).focus().select();
					isEach = false;
				}
			}
		});
		if(!isEach){
			return false;	
		}
		var isCheckbox = 0;
		$("input:checkbox[checked]").each(function(i){
			isCheckbox++;
		});
		if(!isEach || isCheckbox==0){
			if(isCheckbox == 0){
				alert("请选择： 意向认购");
			}
			return false;	
		}
		var isAccept = $("input[name=isAccept]").val();
		if(isAccept=="1"){
			$(".NOTNULL2").each(function(i, n){
				if(isEach){
					if($(this).val() == ""){
						alert("请填写 "+$(this).attr("msg"));
						$(this).focus().select();
						isEach = false;
					}
				}
			});
			if(!isEach){
				return false;	
			}
			//检查身份证长度
			var idcard = $.trim($("input[name=idcard]").val());
			if(idcard.length !=15 && idcard.length !=18){
				alert($("input[name=idcard]").attr("msg")+"长度为15或18位");
				return false;
			}
			var cardno = $.trim($("input[name=cardno]").val());
			//检查会员卡号长度
			if(cardno.length<13||14<cardno.length){
				alert($("input[name=cardno]").attr("msg")+"长度为13—14位");
				return false;
			}
			$.ajax({
				url:"/member/checkCardno", 
				type: "post",
				data:{
					cardno: cardno,
					memberId: $.trim($("input[name=id]").val())
				}, 
				async: false,
				success:function(retVal){
					if(retVal.result){
						isEach = false;
						alert("会员卡号已存在~");
					}
				}
			});
		}
		if(!isEach){
			return false;	
		}
		
		//检查身份证
		var idcard = $("input[name=idcard]").val();
		$.ajax({
			url:"/member/checkIdcard", 
			type: "post",
			data:{
				idcard: idcard,
				memberId: $.trim($("input[name=id]").val())
			}, 
			async: false,
			success:function(retVal){
				if(retVal.result){
					isEach = false;
					alert("身份证已存在~");
				}
			}
		});
		if(!isEach){
			return false;	
		}
			
		if(!confirm('是否要'+flag+'此用户？')){return false;}
		if(!isEach){
			return false;	
		}else{
			return true;
		}
});


</script>
</body>
</html>
</#escape>