<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
String cookieId = "";//★★null로 초기화 하면 안됨

Cookie[] cookies = request.getCookies();
if(cookies != null && cookies.length > 0){
	for(int i=0 ; i<cookies.length ; i++){
		if(cookies[i].getName().equals("member_id")){
			cookieId = cookies[i].getValue();//쿠키값을 얻어와
			break;
		}
	}
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인</title>

<link rel="stylesheet" type="text/css" href="./script/style.css">
</head>
<body class="loginPage">
	<div class="loginTopDiv">

		<%@include file="/userPage/userRightTopDiv.jsp"%>

	</div>

	<div class="loginDiv">

			<form action="userLoginAction.usr" method="post">
				<table class="loginTable">
					<tr>
						<th>ID</th>
						<td><input type="text" name="member_id"></td>
					</tr>
					<tr>
						<th>PassWord</th>
						<td><input type="password" name="member_pwd"></td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="checkbox" name="remember" />아이디 저장
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" name="submitBtn" value="login"> 
							<a href="signUp.jsp"> 
								<input type="button" name="signUpBtn" value="회원가입">
							</a>
						</td>
					</tr>
				</table>
			</form>

	</div>
	<div class="bottomDiv">
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>