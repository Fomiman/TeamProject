<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>좌측 필터&정렬</title>
<link rel="stylesheet" type="text/css" href="./script/style.css">
</head>
<body>
	<div class="sidebar">
	<h3>필터</h3>
	<input type="checkbox" name="sizeCheckBox" class="sizeCheckBox"
		value="250">250 <br>
	<input type="checkbox" name="sizeCheckBox" class="sizeCheckBox"
		value="260">260 <br>
	<input type="checkbox" name="sizeCheckBox" class="sizeCheckBox"
		value="270">270 <br>
	<input type="checkbox" name="sizeCheckBox" class="sizeCheckBox"
		value="280">280 <br>

	<h3>정렬</h3>

	<select>
		<optgroup label="정렬">
			<option value="priceSort">가격순</option>
			<option value="sizeSort">사이즈순</option>
		</optgroup>
	</select>
	</div>
</body>
</html>