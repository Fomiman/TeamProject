<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>실시간 주문관리</title>
<link rel="stylesheet" type="text/css" href="../script/style.css">
</head>
<body>
	<form action="orderDetail.jsp" method="post" name="orderManagement">  
		<table>
			<tr>
				<th>주문번호</th>
				<th>제품번호</th>
				<th>아이디</th>
				<th>주문수량</th>
				<th>버튼</th>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td>
					<input type="submit" name="orderDetail" value="상세보기">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>