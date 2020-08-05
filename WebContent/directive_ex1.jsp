<%@ page language="java" contentType="text/html ;charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@ page import="java.util.Date" %>
	<%@ page info="composed by HR" %>
	<%@ page isELIgnored="true" %> <!--  Now EL will be ignored --> 
	
	<%@ page buffer="16kb" %>     
	Today is: <%= new Date() %>
</body>
</html>