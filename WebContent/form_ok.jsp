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
	String[] hobbies = request.getParameterValues("hobby"); 
	out.print("My hobby : " );
	
	for(int i = 0; i < hobbies.length; i++){
		out.print( hobbies[i]  + " ");
	}
%>  
</body>
</html>