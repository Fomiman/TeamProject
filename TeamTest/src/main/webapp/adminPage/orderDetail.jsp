<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 상세보기</title>
<link rel="stylesheet" type="text/css" href="../script/style.css">
</head>
<body>
	<form action="patment.jsp">
	<table>
		<tr>
			<th>주문번호</th>
			<td></td>
		</tr>
		<tr>
			<th>제품번호</th>
			<td></td>
		</tr>
		<tr>
			<th>아이디</th>
			<td></td>
		</tr>
		<tr>
			<th>주문수량</th>
			<td></td>
		</tr>
		<tr>
			<th>가격</th>
			<td></td>
		</tr>
		<tr>
			<th>주소</th>
			<td></td>
		</tr>
		<tr>
			<th>전화번호</th>
			<td></td>
		</tr>
		<tr>
			<th>이메일</th>
			<td></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" name="submitPay" value="주문 승인">
				<input type="button" name="orderCancel" value="주문 취소">
				
			</td>
		</tr>
	</table>
	
	</form>

</body>
</html>