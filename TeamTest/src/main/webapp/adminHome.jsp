<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">
<title>전체 홈페이지 틀(관리자용)</title>
</head>
<link rel="stylesheet" type="text/css" href="./script/style.css">

<body>
	<div class="topDiv">

		<div class="topLeftDiv">
			<!-- 좌상단 -->
			<!-- 상단바 부분 사용자,관리자 로그인 시 다른 페이지 불러옴 -->
			<%@include file="/adminPage/adminLeftTopDiv.jsp"%>
		</div>

		<div class="topRightDiv">
			<!-- 우상단 -->
			<%@include file="/adminPage/adminRightTopDiv.jsp"%>
		</div>

	</div>

	<div class="middleDiv"> <!-- 관리자 로그인 시 좌측 필터 없음 -->

		<section class="adimMainSection">
			<%@ include file="/adminPage/adminWelcome.jsp"%>
		</section>

	</div>

	<div class="footer">
		<!-- 푸터파트 -->
		<%@include file="footer.jsp"%>
	</div>

</body>
</html>