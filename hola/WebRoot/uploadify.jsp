<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<script src="/js/jquery-1.4.2.min.js" type="text/javascript"></script>
<script src="/componets/uploadify/jquery.uploadify-3.1.min.js"
	type="text/javascript"></script>
<script type="text/javascript">
	$(function() {
		$("#uploadify").uploadify({
// 			height : 30,
			swf : '/componets/uploadify/uploadify.swf',
// 			uploader : '/cos.upload',
// 			width : 120,
			
			'uploader' : '/componets/uploadify/uploadify.swf',
			'script' : '/cos.upload',
			'cancelImg' : 'images/cancel.png',
			'folder' : 'uploads',
			'queueID' : 'fileQueue',
			'auto' : false,
			'multi' : true,
			'simUploadLimit' : 2,
			'buttonText' : 'BROWSE'
		});
	});
</script>

</head>

<body>
	<div id="fileQueue"></div>
	<input type="file" name="uploadify" id="uploadify" />
	<p>
		<a href="javascript:jQuery('#uploadify').uploadifyUpload()">开始上传</a>&nbsp;
		<a href="javascript:jQuery('#uploadify').uploadifyClearQueue()">取消所有上传</a>
	</p>
</body>
</html>