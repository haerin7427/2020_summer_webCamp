<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
		String id = "";
		String subject = "";
		String fileName1 = "";
		String orgfileName1 = "";
		String uploadPath = application.getRealPath("uploadFile");

		out.println("절대경로 : " + uploadPath + "<br/>");

		try {
			MultipartRequest multi = new MultipartRequest(request, uploadPath, 10 * 1024 * 1024, "utf-8",
			new DefaultFileRenamePolicy());
	
			id = multi.getParameter("id"); // form의 name="id"인 값
			subject = multi.getParameter("subject");
			fileName1 = multi.getFilesystemName("file1");
			orgfileName1 = multi.getOriginalFileName("file1");

		} catch (Exception e) {
			e.getStackTrace();
		} // 업로드 종료

		StringBuilder path = new StringBuilder(uploadPath);
		path.append("/");
		path.append(fileName1);
		out.println("경로  : " + path + "<br/>");
	%>
	
	<img alt="업로드 이미지 " src=<%=path%>>
	<p><%=fileName1%></p>
</body>
</html>