<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
               "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录</title>
</head>
<body>
  <%
        String userName = "";
        if (request.getCookies() != null) {
        	for (Cookie cookie : request.getCookies() ) {
            	if("username".equals(cookie.getName())){
            		userName = cookie.getValue();
            		break;
            	}
            }
        }
  %>
  <form action="login.do" method="get">
  <p>   用户名：<input type="text" name="username" value="<%=userName %>" /> </p>
  <p>  &nbsp; 密码: <input type="password" name="pass" /> </p>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="submit" value="确定"/>
  </form>
</body>
</html>