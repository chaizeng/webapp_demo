<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h2>test request param: ${param.test} </h2>
   <h2>hobby request param value: ${paramValues.hobby} </h2>
   <h2>user-agent header: ${header["user-agent"]}</h2>
   <h2>session id in cookie: ${cookie.JSESSIONID.value}</h2>
   <h2>init param DefaultColor: ${initParam.DefaultColor}</h2>
   
</body>
</html>