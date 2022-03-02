<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@page import="bean.RegisterDao" %>
<jsp:useBean id="obj" class="bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="obj"/>

<%
	int status=RegisterDao.register(obj);

	if(status > 0)
		out.print("You are sucessfully registered");
	else
		out.print("You are not sucessfully registered");
%>
</body>
</html>