<!--[if !IE]>网页顶部logo及导航<![endif]-->
<div class="top">
    <div class="top_main">
	    <h1 class="logo"><a href="/index.php?app=home&mod=User&act=index"><img src="/images/logo.jpg" alt="45公社" title="45公社" /></a></h1>
		<div class="navigation">
		     <ul>
			    <li <#if currentModule == 'index'>class="n1_current"</#if>><a href="/index.php?app=home&mod=User&act=index">我的首页</a></li>
			    <li <#if currentModule == 'find'>class="n1_current"</#if>><a href="/index.php?app=home&mod=find&act=find">发现推荐</a></li>
				<li <#if currentModule == 'community'>class="n1_current"</#if>><a href="/community.htm">社区主页</a></li>
				<li <#if currentModule == 'city'>class="n1_current"</#if>><a href="/city.htm">精彩同城</a></li>
				<li <#if currentModule == 'job'>class="n1_current"</#if>><a href="http://45gongshe.com/public/themes/weibo/willopen.html">求职招聘</a></li>
			 </ul>
		</div>
		<div class="message">
		     <ul>
			    <li class="m1"><a href="http://45gongshe.com/index.php?app=home&mod=Account&act=index">设置</a></li>
				<li class="m2"><a href="http://45gongshe.com/public/themes/weibo/willopen.html">邀请</a></li>
				<li class="m3"><a href="http://45gongshe.com/public/themes/weibo/willopen.html">手机</a></li>
				<li class="m4"><a href="/logout.htm">退出</a></li>
			 </ul>
		</div>
	</div>
</div>
<!--[if !IE]>网页顶部logo及导航(结束)<![endif]-->