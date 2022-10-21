<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 우상단</title>
<link rel="stylesheet" type="text/css" href="../script/style.css">
</head>
<body>
		<c:set var="loginYN" value="${cookiedId} %>"></c:set>
			<!-- 로그인 구현후 로그인 상태에 따라 로그인 로그아웃 버튼 표시 -->
			<c:choose>
				<c:when test="${loginYN eq 'Y'}">
					<a href="">로그인</a>
				</c:when>
				<c:when test="${loginYN not eq 'Y'}">
					<a href="">로그아웃</a>
				</c:when>
			</c:choose>
			<a href="">장바구니</a>
			<a href="">마이페이지</a>
			<a href="">고객센터</a>
		
</body>
</html>