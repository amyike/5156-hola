<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>提示信息  - 45公社</title>
<meta http-equiv="refresh" CONTENT="${redirectTime!15}; url=${redirectURL!'/'}" />
<meta name="Keywords" content="轻博客,45公社,城市轻社区,吃喝玩乐,轻社区,社区物业,同城商户,同城交友" />
<meta  name="Description" content="45公社以轻博客为载体 ，融入社区物业、同城商户、同城交友等各类价值信息服务，是城市轻社区、朋友聚集地、乐享生活站、吃喝玩乐地，它是城市信息化多功能社交平台。">
<link rel="Shortcut Icon" href="http://www.45gongshe.com/images/favicon.ico" type="image/x-icon">
<link href="/css/account.css" rel="stylesheet" type="text/css" />
</head>

<body>
<h1 class="email_logo"><a href="/" title="欢迎来到45公社">欢迎来到45公社</a></h1>
<div class="email_mian">
     <p class="email_text">
	   <em class="font18">${message!"无"}<br /></em>
	  <#--<br/>请收取您的新邮件并点击邮件内的验证链接-->
	 </p>
	 <a class="btn_a email_btn" target="_self" href="${redirectURL!'#'}"><em>回到首页</em></a>
	 <span class="email_prm"><#--如没收到邮件，请稍等片刻或到您邮箱的垃圾邮件里找找--></span>
</div>

<div class="layer_main">
  <ul class="web_info">
	<li><a href="##">关于团队</a></li>
	<li><a href="##">意见反馈</a></li>
	<li><a href="##">联络方式</a></li>
	<li class="b_none"><a href="##">加入我们</a></li>
  </ul>
  <span class="web_num">45公社&copy;浙ICP备11030864号</span>
</div>

<script src="js/jquery-1.4.2.min.js" type="text/javascript" language="javascript"></script>
<script type="text/javascript">
$(function(){
  var h=$(window).height();
  var top=h-130-160-310
  if(top>0)
  {
  $('.email_logo').css('top',top/2+'px');
  $('.email_mian').css('top',top+160+'px');
  }
  else
  {
  $('.email_logo').css('top','0px');
  $('.email_mian').css('top','170px');
  }
});
</script>
</body>
</html>
