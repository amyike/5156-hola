<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.lang.*"%>
<%
	float fFreeMemory = Runtime.getRuntime().freeMemory();
	float fTotalMemory = Runtime.getRuntime().totalMemory();
	float fPercent = (fTotalMemory - fFreeMemory) / fTotalMemory * 100;
%>
JAVA�����ʣ���ڴ棺<%=fFreeMemory / 1024 / 1024%>&nbsp;M
<br>
JAVA����������ڴ棺<%=fTotalMemory / 1024 / 1024%>&nbsp;M
<br>
JAVA������ڴ�ʹ���ʣ�<%=fPercent%>&nbsp;%
