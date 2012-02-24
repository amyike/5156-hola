<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>45公社 - 乐享城市轻社区</title>
<link rel="shortcut icon" href="favicon.ico" />
<meta name="keywords" content="轻社区|轻博客|社区物业" />
<meta name="description" content="最热门的城市社交信息服务平台" />
<!--[if IE 6]>
<script type="text/javascript" src="js/DD_belatedPNG_0.0.8a-min.js"></script>
<![endif]-->
<link href="css/public.css" rel="stylesheet" type="text/css" />
<style>
.fb_body{ padding-bottom:50px;}
.feedback{
 width:642px;
 height:auto;
 overflow:hidden;
 border:#e5ecec 1px solid;
 background:#fff;
 margin:31px auto 0px;
 padding-bottom:24px;
}
.feedb_top{
 float:left;
 width:202px;
 height:49px;
 background:url(images/user_bg.png) no-repeat;
 color:#fff;
 font-size:20px;
 font-weight:500;
 padding:6px 0px 0px 22px;
}
.feedb_h3{
 float:left;
 width:556px;
 height:24px;
 font-size:15px;
 color:#6c6c6c;
 font-weight:500;
 padding:11px 0px 0px 44px;
}
.feedb_input{
 float:left;
 width:549px;
 height:36px;
 line-height:36px;
 font-size:14px;
 border:#bbbbbb 1px solid;
 padding:4px;
 margin:0px 0px 5px 44px;
 _display:inline;
 background:#fff;
}
.feedb_textarea{
 height:108px;
 overflow-y:auto;
 line-height:20px;
 font-size:13px;
}
.fb_input{
 float:left;
 background:url(images/share_but02.jpg) no-repeat;
 border:none;
 color:#FFFFFF;
 cursor:pointer;
 height:30px;
 width:70px;
 margin:10px 0px 0px 44px;
 font-size:15px;
}
.fb_input:hover{
 background:url(images/share_but02.jpg) no-repeat -70px 0px;
}
</style>
</head>
<body class="fb_body">
<!--[if !IE]>网页顶部logo及导航<![endif]-->
<#--<#include "/public/top.ftl">-->
<!--[if !IE]>网页顶部logo及导航(结束)<![endif]-->

<div class="feedback">
  <h2 class="feedb_top">在线问题反馈</h2>
  <h3 class="feedb_h3">问题</h3>
  <input class="feedb_input" name="issue" title="问题" type="text" />
  <h3 class="feedb_h3">描述</h3>
  <textarea id="txtContent" name="description" cols="" rows="" class="feedb_input feedb_textarea" title="描述"></textarea>
  <h3 class="feedb_h3">问题页面网址</h3>
  <input class="feedb_input" name="link" type="text" title="问题页面网址" />
  <h3 class="feedb_h3">联系人（会员名称）</h3>
  <input class="feedb_input" name="uname" type="text" title="联系人（会员名称）" />
  <h3 class="feedb_h3">联系邮箱</h3>
  <input class="feedb_input" name="email" type="text" title="联系邮箱" />
  <input class="fb_input" name="" onclick="submit();" type="submit" value="提交" />
</div>
</body>

<script language="javascript" type="text/javascript" src="/js/jquery-1.4.2.min.js"></script>
<#include "/common/common.ftl">
<script type="text/javascript">
 // 最小高度
//var minHeight = 108;
 // 最大高度，超过则出现滚动条
 //var maxHeight = 400;
 //function ResizeTextarea(){
	//	var t = document.getElementById('txtContent');
		//h = t.scrollHeight;
		//h = h > minHeight ? h : minHeight;
	//	h = h > maxHeight ? maxHeight : h;
	//	t.style.height = h + "px";
// }
 
function submit(){
	var flag = true;
	$.each($(".feedb_input"), function(i, n){
		if($.trim($(n).val())==""){
			showOk({content:"请填写"+$(n).attr("title")});
			flag = false;
			return false;
		}
	});
	if(flag){	
		$.post("/feedback/commit.htm",{
			"issue": $("input[name='issue']").val(), 
			"description": $("textarea[name='description']").val(), 
			"link": $("input[name='link']").val(), 
			"uname": $("input[name='uname']").val(), 
			"email": $("input[name='email']").val()
		}, function(data){
			if(data.result){			
				showOk({content:"感谢您对45公社的支持，我们将尽快改进！有您在，我们会做得更好！", yesFn: function(){opener=null; window.close(); }});
			}else{
				showOk("反馈信息发送失败！");			
			}
		});
	}
}
</script>
</html>
