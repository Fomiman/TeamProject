<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">
<title>사용자 우상단</title>
<link rel="stylesheet" type="text/css" href="./script/style.css">
</head>
<body>	
		<div class="userRightTopDiv">
			<c:choose>
		    	
		    	<c:when test="${sessionScope.member_id eq null}">
			    	<a href="${pageContext.request.contextPath}/userLogin.usr">로그인</a>
			    </c:when>
			    
		    	<c:otherwise>
			    	${sessionScope.member_id}님 환영합니다.<br>
			    	<a href="${pageContext.request.contextPath}/userLogout.usr">로그아웃</a>
		    	</c:otherwise>
		    	
		    </c:choose>
		    
			<a href="cart.usr">장바구니</a>
			<!-- <a href="">마이페이지</a> -->
			<a href="serviceCenter.usr">고객센터</a>
			<a href="userHome.usr">홈으로</a>
		</div>
</body>
</html>