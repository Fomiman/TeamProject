<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

<link rel="stylesheet" type="text/css" href="./script/style.css">
</head>
<body>
	<div class="topDiv">

		<div class="topLeftDiv">
			<%@include file="/userPage/userLeftTopDiv.jsp"%>
		</div>

		<div class="topRightDiv">
			<%@include file="/userPage/userRightTopDiv.jsp"%>
		</div>

	</div>

	<div class="signUpDiv">

		<section class="signUpSection">

			<input type="hidden" name="member_code" value="">
			<table>

				<tr>
					<th>아이디</th>
					<td><input type="text" name="member_id"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="member_pw"></td>
				</tr>
				<tr>
					<th>비밀번호 확인</th>
					<td><input type="password" name="pwd_check"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" name="member_name"></td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td><input type="text" name="member_birth"></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input type="text" name="member_address"></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="text" name="member_phone"></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="email" name="member_email"></td>
				</tr>
				<tr>
					<th>성별</th>
					<td>
					<input type="radio" name="member_gender" value="M"> 남성
					<input type="radio" name="member_gender" value="F"> 여성
					</td>
				</tr>

				<tr>
					<td colspan="2"><input type="submit" name="submitBtn"
						value="회원가입"> <input type="reset" name="resetBtn"
						value="다시쓰기"></td>
				</tr>
			</table>
		</section>
	</div>
	
	<div class="bottomDiv">
		<%@ include file="footer.jsp" %>
	</div>
</body>
</html>