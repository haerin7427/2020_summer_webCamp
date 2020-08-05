<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<%@ include file="header.html" %>  
	<h1>---------------------------</h1>
   <h1>Hi~ I'm directive_ex2.jsp</h1>
   
	Today is: <%= java.util.Calendar.getInstance().getTime() %> 
	

  	
</body>
</html>