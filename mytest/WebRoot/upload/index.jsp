<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index</title>
</head>
<body>
	<form action="../upload.action" id="frm" name="frm" method="post"
		enctype="multipart/form-data">
		<input type="file" id="image" name="image" /> 
		<input type="submit" value="submit" />
	</form>
	<% 
	String s = "";
	out.println(s);
	/*
	String url =  request.getRequestURL().toString();
	String uri =  request.getRequestURI();
	out.println(url);
	out.println(uri);
	
	
	out.println(request.getLocalAddr());
	out.println(request.getLocalName());
	out.println(request.getLocalPort());
	out.println(request.getProtocol());
	out.println(request.getServletPath());
	*/
	
	%>
</body>
</html>