<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

<link rel="stylesheet" type="text/css" href="./script/style.css">
</head>
<body>
	<div class="loginTopDiv">

		<%@include file="/userPage/userRightTopDiv.jsp"%>

	</div>

	<div class="loginDiv">

		<section class="mainSection">
			<form action="login.login" method="post">
				<table>
					<tr>
						<th>ID</th>
						<td><input type="text" name="id"></td>
					</tr>
					<tr>
						<th>PassWord</th>
						<td><input type="password" name="pwd"></td>
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
			
		</section>

	</div>
	<div>
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>