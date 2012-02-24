<#escape x as (x)!>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>邀请码申请提交</title>
<link href="/css/application.css" rel="stylesheet" type="text/css">

</head>
<body>
<div class="apply_main">
   <h3 class="apply_title"><span class="apply_span1">1</span><div class="apply_div">申请邀请码的原因</div></h3>
   <textarea class="apply_text1" name="reason" cols="" rows="" focucmsg="输入邀请原因">输入邀请原因</textarea>
   <h3 class="apply_title"><span class="apply_span1">2</span><div class="apply_div">目前使用的社交网站主页链接</div></h3>
   <textarea class="apply_text2" name="link" cols="" rows="" focucmsg="填写目前使用最频繁的社交网站个人主页链接，如微博、轻博客或者博客">填写目前使用最频繁的社交网站个人主页链接，如微博、轻博客或者博客</textarea>
   <h3 class="apply_title"><span class="apply_span1">3</span><div class="apply_div">兴趣爱好</div></h3>
   <textarea class="apply_text1" name="hobby" cols="" rows="" focucmsg="填写自己的兴趣爱好，比如我喜欢摄影与搜罗商家优惠信息">填写自己的兴趣爱好，比如我喜欢摄影与搜罗商家优惠信息</textarea>
   <h3 class="apply_title"><span class="apply_span1">4</span><div class="apply_div">联系方式</div></h3>
   <textarea class="apply_text2" name="contact" cols="" rows="" focucmsg="请填写你的电子邮箱地址">请填写你的电子邮箱地址</textarea>
   <input class="apply_btn" name="" value="" type="button">
</div>
</body>

<script language="javascript" type="text/javascript" src="/js/jquery-1.4.2.min.js"></script>
<script language="javascript" type="text/javascript" src="/js/application.js"></script>
<#include "/common/common.ftl">
<script language="javascript" type="text/javascript">
$(".apply_btn").live("click",function(){
	var flag = true;
	$.each($("textarea"), function(i, n){
			if($.trim($(n).val())==$(n).attr("focucmsg")||$.trim($(n).val())==""){
				showOk({content: "请填写"+$($(".apply_div").get(i)).text()});
				flag = false;
				return false;
			}
	});
	/*if($("textarea[name='link']").val()){
				
		flag = false;
		return false;
	}else if($("textarea[name='contact']").val()){
		
		flag = false;
		return false;
	}*/
	if(flag){
		$.ajax({
			type: "POST",
			url: "/invite/get.htm",
			data: {"reason":$("textarea[name='reason']").val(), "link":$("textarea[name='link']").val(), "hobby":$("textarea[name='hobby']").val(), "contact":$("textarea[name='contact']").val()},
			success: function(data){
				if(data.result){
					if(data.result){
					  showOk({content: '恭喜您提交成功！感谢您对45公社的支持！<br>我们将审核完您的信息后尽快将邀请码发送至您的电子邮箱，请注意查收邮件！', yesFn: function(){location='/index.php?app=home&mod=Public&act=register'; }});
					//}else{
					  //showNo({content: '申请发送失败！', yesFn: function(){opener=null; window.close(); }});
					}
				}
			}
		});
	}
	return flag;
});
</script>
</html>
</#escape>