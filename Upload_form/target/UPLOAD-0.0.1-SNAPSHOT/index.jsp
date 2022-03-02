<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

<h3>파일 업로드 폼 </h3>
	<form action="upload.jsp" method="post" enctype="multipart/form-data">
		올린 사람 : <input type="text" name="id"><br>
		제목 : <input type="text" name="subject"><br>
		파일명1 : <input type="file" name="file1"><br>
		<input type="submit" value="전송 ">
		<input type="reset" value="취소  ">
	</form>

</body>
</html>