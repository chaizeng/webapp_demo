<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>el 表达式</title>
</head>
<body>

  <h2> att1: ${att1} </h2>
  <h2> att2: ${att2} </h2> 
  <h2> att3: ${att3}</h2> 
  
  <%pageContext.setAttribute("repeated","page context"); %>
  
  <h2> source of repeated: ${repeated} </h2> 
  
  <h2> repeated page context : ${pageScope.repeated} </h2>
  <h2> repeated request : ${requestScope.repeated} </h2>
  <h2> repeated session : ${sessionScope.repeated} </h2>
  <h2> repeated servlet context : ${applicationScope.repeated} </h2>
   
</body>
</html>