<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 우상단</title>
<link rel="stylesheet" type="text/css" href="../script/style.css">
</head>
<body>
			<c:choose>
		    	
		    	<c:when test="${sessionScope.u_id eq null}">
			    	<a href="${pageContext.request.contextPath}/userLogin.usr">로그인</a>
				    <a href="${pageContext.request.contextPath}/userJoin.usr">회원가입</a>
			    </c:when>
			    
		    	<c:otherwise>
			    	${sessionScope.u_name}관리자님 환영합니다.<br>
			    	<a href="${pageContext.request.contextPath}/userLogout.usr">로그아웃</a>
			    	<a href="#">고객문의</a>
		    	</c:otherwise>
		    	
		    </c:choose>
			<a href="">고객센터</a>
			<a href="">홈으로</a>
		
</body>
</html>