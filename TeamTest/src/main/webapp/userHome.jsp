<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">
<title>전체 홈페이지 틀(유저용)</title>
</head>
<link rel="stylesheet" type="text/css" href="./script/style.css">

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
		<!-- 나중에 여기에 로그인 회원가입시에 화면 전환되게 -->

		<div class="sideFilter">
			<!-- 화면 좌측에서 필터와 정렬 선택 -->
			<%@ include file="sideFilter.jsp"%>
		</div>

		<section class="mainSection">
			<!-- 중간 상품란등 메인파트 -->
			<%@ include file="productPage.jsp"%>
		</section>

	</div>

	<div class="bottomDiv">   
		<!-- 푸터파트 -->
		<%@include file="footer.jsp"%>
	</div>

</body>
</html>