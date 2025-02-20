<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상품 검색</title>
		<style>
			#wrap{
				margin:0 auto;
				width: 100%;
				text-align: center;
			}
			
			table{
				margin:0 auto;
				width: 800px;
			}
			
			table th{ 
				background-color: skyblue;
			}
		</style>
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/festivalSearch.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
		<h3>상품 검색</h3>
		<form id="fesSearchFrm">
			<select id="type" name="type">
				<option value="">검색 조건 선택</option>
				<option value="fesName">축제명</option>
				<option value="regionName">지역</option>
			</select>
			<input type="text" name="keyword">
			<input type="submit" value="검색">
		</form>
		
		<!-- 검색 결과 출력  -->
		<div id="searchResultBox"></div>
		</div>
	</body>
</html>





