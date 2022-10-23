<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">
<title>주문하기</title>
<link rel="stylesheet" type="text/css" href="../script/style.css">
</head>
<body>
	<div class="order_left">
		<h2>주문하기</h2>
		<table>
			<tr>
				<th>상품사진</th>
				<th>상품명</th>
				<th>수량</th>
				<th>가격</th>
			</tr>
			<tr>
				<td colspan="4">총 가격 <input type="text" name="totalPrice" value="">원</td>
			</tr>
		</table>
	</div>
	
	<div class="order_right">
		<h2>주문자 정보</h2>
		<table>
			<tr>
				<th></th>
			</tr>
		</table>
	</div>
	<div class="order_bottom">
	<input type="submit" name="payment" value="결제하기">
	</div>
</body>
</html>