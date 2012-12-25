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

<meta http-equiv="content-type" content="text/html; charset=gbk">
<link rel="stylesheet" type="text/css"
	href="/componets/swfupload/css/default.css">
<script type="text/javascript"
	src="/componets/swfupload/js/swfupload.js"></script>
<script type="text/javascript"
	src="/componets/swfupload/js/swfupload.queue.js"></script>
<script type="text/javascript"
	src="/componets/swfupload/js/fileprogress.js"></script>
<script type="text/javascript" src="/componets/swfupload/js/handlers.js"
	charset="utf-8"></script>
<script src="/js/hola-swfupload.js" type="text/javascript"></script>
</head>

<body>
	<div class="flash" id="fsUploadProgress"></div>
	<div style="padding-left: 5px;">
		<span id="spanButtonPlaceholder"></span> <input id="btnCancel"
			type="button" value="取消" onclick="cancelQueue(upload);"
			disabled="disabled"
			style="margin-left: 2px; height: 22px; font-size: 8pt;" />
	</div>
</body>
</html>