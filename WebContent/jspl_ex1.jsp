<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <c:out value="${'jspl c:out example' }"/><br/>

	<c:set var="income" scope="session" value="${'hello world'}"/>  
	<p>Before Remove Value is: <c:out value="${income}"/></p>  
	<c:remove var="income"/>  
	<p>After Remove Value is: <c:out value="${income}"/></p>  
	
	<c:catch var ="catchtheException">  
   <% int x = 2/0;%>  
</c:catch>  
  
<c:if test = "${catchtheException != null}">  
   <p>The type of exception is : ${catchtheException} <br />  
   There is an exception: ${catchtheException.message}</p>  
</c:if>

<c:set var ="income" scope="session" value="${10000}"/>
<p>Your income is : <c:out value="${income}"/></p>

<c:choose>
	<c:when test = "${income > 100000 }">
		You are a rich!!!!!
	</c:when> 
	<c:otherwise>
		You are not a rich!!!!!
	</c:otherwise> 
</c:choose>
<br>
<c:forTokens items="Hailey.Emily.Anna" delims="." var="name">
	<c:out value="${name}"/><p>
</c:forTokens>
<br>
<c:url value="/index1.jsp" var="completeURL">  
 <c:param name="trackingId" value="786"/>  
 <c:param name="user" value="Nakul"/>  
</c:url>  
${completeURL}  
<br>
<c:forEach var="j" begin="2" end="5">  
   Item <c:out value="${j}"/><p>  
</c:forEach>
	 
</body>
</html>