<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <jsp:useBean id="pp" class="com.jn.bean.Person" scope="request"></jsp:useBean>
 
 name is: <jsp:getProperty property="name" name="pp"/> <br>
 age is:<jsp:getProperty property="age" name="pp"/>
 
 <jsp:setProperty property="age" name="pp" value="36"/>
 
 <h2>jsp:setProperty 之后</h2>
  name is: <jsp:getProperty property="name" name="pp"/> <br>
  age is:<jsp:getProperty property="age" name="pp"/>
 
</body>
</html>