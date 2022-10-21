<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품등록</title>

<link rel="stylesheet" type="text/css" href="../script/style.css">
</head>
<body>
	<div class="topDiv">

	</div>

	<div class="inserProductDiv">

		<section class="mainSection">

			<table>

				<tr>
					<th>제품번호</th>
					<td><input type="text" name="member_id"></td>
				</tr>
				<tr>
					<th>제품명</th>
					<td><input type="password" name="member_pw"></td>
				</tr>
				<tr>
					<th>사이즈</th>
					<td><input type="password" name="pwd_check"></td>
				</tr>
				<tr>
					<th>가격</th>
					<td><input type="text" name="member_name"></td>
				</tr>
				<tr>
					<th>사진파일명</th>
					<td><input type="text" name="member_birth"></td>
				</tr>
				<tr>
					<th>재고수량</th>
					<td><input type="text" name="member_address"></td>
				</tr>
				<tr>
					<th>상표코드</th>
					<td><input type="text" name="member_phone"></td>
				</tr>
				
				<tr>
					<td colspan="2"><input type="submit" name="submitBtn"
						value="회원가입"> <input type="reset" name="resetBtn"
						value="다시쓰기"></td>
				</tr>
			</table>
		</section>

	</div>
</body>
</html>