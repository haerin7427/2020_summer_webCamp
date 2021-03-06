<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<style>
	.centerB{
		text-align : center;
	}
</style>
</head>
<body>

<div class="container">
    <div class="col-lg-4"></div>
    <div class="col-lg-4">
        <div class="jumbotron" style="padding-top: 20px;">
        
        <form method="post" action="join_action.jsp">
        <h3 style="text-align:center;">회원가입 화면</h3>
        <div class="form-group centerB">
            <input type="text" class="form-control" placeholder="아이디" name="userID" maclength="20">
        </div>
        <div class="form-group centerB">
            <input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maclength="20">
        </div>
        <div class="form-group centerB">
            <input type="text" class="form-control" placeholder="이름" name="userName" maclength="20">
        </div>
        <div class="form-group" style="text-align:center;">
            <div class="btn-group" data-toggle="buttons">
                    <label class="btn btn-primary active">
                        <input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
                    </label>
                    <label class="btn btn-primary">
                        <input type="radio" name="userGender" autocomplete="off" value="여자" checked>여자
                    </label>
            </div>    
        </div>
        <div class="form-group centerB">
            <input type="email" class="form-control" placeholder="이메일" name="userEmail" maclength="20">
        </div >
        <div class="form-group centerB"><input type="submit" class="btn btn-primary form-control " value="회원가입"></div>
        
        </form>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>