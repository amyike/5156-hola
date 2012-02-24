<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>发布修改同城信息</title>
<link href="/css/public.css" rel="stylesheet" type="text/css" />
<link href="/css/share.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="/js/jquery-1.4.2.min.js"></script>
<script language="javascript" type="text/javascript" src="/js/public.js"></script>
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
<!--[if IE 6]>
<script type="text/javascript" src="js/DD_belatedPNG_0.0.8a-min.js"></script>
<![endif]-->
</head>

<body>
<!--[if !IE]>网页顶部logo及导航<![endif]-->
<#include "/public/top.ftl">
<!--[if !IE]>网页顶部logo及导航(结束)<![endif]-->

<!--[if !IE]>大框架<![endif]-->
<div class="all_frame width904">

<div class="publish_left">
<!--[if !IE]>分享页框架<![endif]-->
<div class="share_frame width649 ">

<form action="/city/publish.htm" method="post">
<#if cityTopic??><input type="hidden" name="id"  value="${cityTopic.id}" /></#if>
    <!--[if !IE]>输入框<![endif]-->
    <h2 class="paddingl45">发布/修改同城信息</h2>
	<div class="share_textone">
	    <dl>
		   <dt class="paddingl45">标题</dt>
		   <dd><input id="title" name="title" type="text" value="<#if cityTopic??>${cityTopic.title}</#if>" class="input_class width546 marginl45" /></dd>
		</dl>
	</div>
    <!--[if !IE]>输入框（结束）<![endif]-->
	
	<!--[if !IE]>下拉菜单<![endif]-->
	<div class="info_sort">
	    <dl>
		   <dt>分类</dt>
		   <dd>
		   		<select name="cityCategory.id" class="select_sort">
			        <#if cityCategories??>
			        	<#list cityCategories?sort_by("id") as cate>
				        	<option <#if cityTopic??&&cityTopic.cityCategory.id==cate.id>selected=true</#if> value="${cate.id}">${cate.title}</option>
			        	</#list>
			        </#if>
		        </select>
		   </dd>
		</dl>
	</div>
	<!--[if !IE]>下拉菜单（结束）<![endif]-->
	
	<!--[if !IE]>编辑器<![endif]-->
	<div class="editor_e marginl45">
	    <h4>内容</h4>
	    <textarea id="content" name="content" style="width:562px;height:202px;visibility:hidden; display: block;"><#if cityTopic??>${cityTopic.content}</#if></textarea>
	</div>
	<!--[if !IE]>编辑器(结束)<![endif]-->
	
	<!--[if !IE]>三个按钮<![endif]-->
	<div class="share_button marginl45">
		<a class="s_but1" href="javascript:;" onclick="history.back();">取消</a>
		<input class="s_but2" type="submit" value="发布" />
	</div>
</form>
</div>
<!--[if !IE]>分享页框架(结束)<![endif]-->
</div>

<!--[if !IE]>右边<![endif]-->
<div class="info_right">
   <h3 class="info_rtop">我的发布</h3>
   <ul>
      <#if myPublish??>
      <#list myPublish as cityTopic>
      	<#if cityTopic_index==3><#break></#if>
	      <li>
		    <em><a href="#none">${cityTopic.title}</a></em>
			<span><a class="public_del" href="/city/delete.htm?id=${cityTopic.id}">删除</a><a href="/city/publish.htm?id=${cityTopic.id}">编辑</a><a href="#none">热度(0)</a></span>
		  </li>
	  </#list>
	  </#if>
   </ul>
   <div class="info_rbottom"></div>
   
</div>
<!--[if !IE]>右边(结束)<![endif]-->

</div>
<!--[if !IE]>大框架(结束)<![endif]-->

<#include "/common/common.ftl">
</body>
</html>
