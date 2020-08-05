<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Hi here is action_ex3.jsp</h2>
<% out.print("Today is:"+java.util.Calendar.getInstance().getTime()); %>  

<jsp:useBean id="obj" class="com.example.ex1"/><br>  
  
<%  
int m=obj.cube(5);  
out.print("cube of 5 is "+m);  
%>

</body>
</html>