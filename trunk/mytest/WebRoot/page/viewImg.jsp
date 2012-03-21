<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.j2ee.fel.util.*"%>
<%
ImagePreview img = new ImagePreview();
out.write(img.ProcessRequest(request));
%>

