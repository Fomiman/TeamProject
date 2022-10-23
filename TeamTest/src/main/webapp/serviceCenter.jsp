<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">
<title>고객센터</title>
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
		<div class="notice">
			<!-- 공지사항 -->
			<h2>공지사항</h2>

			<input type="button" name="submitNotice" value="공지등록">
		</div>

		<div class="askList">
			<!-- 문의내역 -->
			<h2>문의내역</h2>

			<input type="button" name="" value="문의하기"> <input
				type="button" name="`" value="문의내역전체보기">
		</div>

	</div>


	<div class="bottomDiv">
		<!-- 푸터파트 -->
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>