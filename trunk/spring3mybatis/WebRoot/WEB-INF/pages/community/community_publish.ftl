<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>发布小区信息</title>
<link href="/css/public.css" rel="stylesheet" type="text/css" />
<link href="/css/share.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="/js/jquery-1.4.2.min.js"></script>
<script charset="utf-8" src="/componets/editor/kindeditor-min.js"></script>
<script charset="utf-8" src="/componets/editor/lang/zh_CN.js"></script>
<script>
			var editor;
			KindEditor.ready(function(K) {
				editor = K.create('textarea[name="content"]', {
					resizeType : 1,
					allowPreviewEmoticons : false,
					//allowImageUpload : false,
					themeType : 'simple',
					items : [
						//'fontname','fontsize', '|', 'forecolor', 'hilitecolor', 'italic', 'removeformat',
						'bold', 'underline','strikethrough','|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
						'insertunorderedlist', '|', 'emoticons', 'image', 'link','unlink','pagebreak','source','fullscreen']
				});
				
				
				$("form").submit(function(){
				var html = editor.html();
	if(!$.trim($("#title").val())){
		showOk({content: "请填写标题！"});
		return false;
	}else if(!$.trim(html)){
		showOk({content: "请填写内容！"});
		return false;
	}else{
		return true;
	}
});
				
			});
		</script>
</head>
<body>
<!--[if !IE]>网页顶部logo及导航<![endif]-->
<#include "/public/top.ftl">
<!--[if !IE]>网页顶部logo及导航(结束)<![endif]-->

<!--[if !IE]>大框架<![endif]-->
<div class="all_frame">

<div class="publish_left">
<!--[if !IE]>分享页框架<![endif]-->
<div class="share_frame width649 ">

    <!--[if !IE]>输入框<![endif]-->
    <h2 class="paddingl45">发布小区信息</h2>
  <form action="/community/publish.htm" method="post">
  <#if xqtopic??><input type="hidden" name="id"  value="${xqtopic.id}" /></#if>
	<div class="share_textone">
	    <dl>
		   <dt class="paddingl45">标题</dt>
		   <dd><input id="title" name="title" type="text" class="input_class width546 marginl45" value="<#if xqtopic??>${xqtopic.title}</#if>" /></dd>
		</dl>
	</div>
    <!--[if !IE]>输入框（结束）<![endif]-->
	
	<!--[if !IE]>编辑器<![endif]-->
	<div class="editor_e marginl45">
	    <h4>内容</h4>
		<textarea id="content" name="content" style="width:562px;height:202px;visibility:hidden; display: block;"><#if xqtopic??>${xqtopic.content}</#if></textarea>
	</div>
	<!--[if !IE]>编辑器(结束)<![endif]-->
	
	<!--[if !IE]>三个按钮<![endif]-->
	<div class="share_button marginl45">
		<a class="s_but1" href="javascript:void(0);" onclick="history.back();">取消</a>
		 <!--
		 <div id="edui43">
		   <div onMouseOut="" onMouseOver="" onMouseUp="" onMouseDown="" id="edui43_state" class="">
		       <a class="s_but1" href="#" onClick="" onMouseDown="return false;"  title="预览" unselectable="on" id="edui43_body">预览</a>
		   </div>
		</div>
		<a class="s_but2" href="javascript:void(0);" onclick="alert(this.parent);">发布</a>
		-->
		<input type="submit" class="s_but2" value="发布" />
	</div>
</form>
</div>
<!--[if !IE]>分享页框架(结束)<![endif]-->
</div>

<!--[if !IE]>右边<![endif]-->
<#include "publish_right.ftl">
<!--[if !IE]>右边(结束)<![endif]-->

</div>
<!--[if !IE]>大框架(结束)<![endif]-->

<#include "/common/common.ftl">
</body>
</html>