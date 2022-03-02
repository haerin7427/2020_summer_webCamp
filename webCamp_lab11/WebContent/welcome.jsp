<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%   
out.print("Welcome "+request.getParameter("uname"));  
%>
<br>
<% 
String driver=config.getInitParameter("dname");  
out.print("driver name is="+driver);  
%>  
My hobby is  ${param.hobby }
<br>
<%  
Cookie ck=new Cookie("name","abhishek");  
response.addCookie(ck);  
%>  
<a href="index_process.jsp">click</a>
</body>
</html>