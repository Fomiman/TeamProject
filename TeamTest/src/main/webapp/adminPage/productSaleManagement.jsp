<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월별 일별 매출관리</title>
<link rel="stylesheet" type="text/css" href="../script/style.css">
</head>
<body>
	<div class=""><!-- 매출관리 -->
	 <h2>매출관리</h2>
		<input type="date" name="date" value=""><input type="button" name="monthSalseBtn" value="월매출 조회">
		<select>
			<option>전체</option>
			<option>1~31일 반복문으로 출력</option>
		</select>
	 
	 <input type="text" name="sales" value="<%= %>">
	</div>
	
	<div class="askList"><!-- 상품관리 -->
	 <h2>상품관리</h2>
	 
	 <input type="button" name="" value="상품등록">
	 <input type="button" name="`" value="상품목록보기">

	 <div>등록 또는 목록 페이지 불러올 공간</div>
	</div>
</body>
</html>