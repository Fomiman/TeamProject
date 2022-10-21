<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<link rel="stylesheet" type="text/css" href="./script/style.css">
</head>
<body>
	<div class="topDiv">

		<div class="topLeftDiv">
			<!-- 좌상단 -->
			<%@include file="/userPage/userLeftTopDiv.jsp"%>
		</div>

		<div class="topRightDiv">
			<!-- 우상단 -->
			<%@include file="/userPage/userRightTopDiv.jsp"%>
		</div>

	</div>
	<div class="middleDiv">
		<div class="wishListPage">
		<h3>장바구니</h3>
		<div><!-- 장바구니 상품 표시될곳 --></div>
		<div><!-- 우측 하단으로 정렬하기 -->
		선택 상품 가격 <input type="text" name="priceCheck" value="">원 <br>
		<input type="submit" name="payment" value="주문하기">
		
		</div>
	</div>

	</div>


	<div class="bottomDiv">
		<!-- 푸터파트 -->
		<%@include file="../footer.jsp"%>
	</div>






	
</body>
</html>