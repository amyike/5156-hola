<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.lang.*"%>
<%
	float fFreeMemory = Runtime.getRuntime().freeMemory();
	float fTotalMemory = Runtime.getRuntime().totalMemory();
	float fPercent = (fTotalMemory - fFreeMemory) / fTotalMemory * 100;
%>
JAVA虚拟机剩余内存：<%=fFreeMemory / 1024 / 1024%>&nbsp;M
<br>
JAVA虚拟机分配内存：<%=fTotalMemory / 1024 / 1024%>&nbsp;M
<br>
JAVA虚拟机内存使用率：<%=fPercent%>&nbsp;%
