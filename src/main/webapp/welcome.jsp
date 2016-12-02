<%@page import="java.util.Date"%>
<%@page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
               "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<h2>Hello! 
<% String user = (String)request.getSession().getAttribute("user");
 /*  if(null == user || "".equals(user)){
	 response.sendRedirect("login.jsp");  
   }*/
   %>
</h2>
<h2><%=request.getSession().getAttribute("user") %></h2>
<%= new Date()%>
<a href="<%=response.encodeRedirectURL("logout.do")%>">退出</a>
<a href="<%=response.encodeRedirectURL("index.jsp")%>">首页</a>
</body>
</html>
