<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="user.UserDao"%>  
<jsp:useBean id="u" class="user.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i= UserDao.join(u);  
if(i>0){  
	out.print("success");
}else{  
	out.print("error");
}  
%> 
</body>
</html>