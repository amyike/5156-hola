<% 
	if(session.getAttribute("LOGIN_USER")==null){
		response.sendRedirect("/login");
	}else{
		response.sendRedirect("/admin");
	}
%>