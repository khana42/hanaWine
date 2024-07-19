<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
 
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style3.css?v">
</head>
<body>
	
	<header id="header">
		<%@ include file="header.jsp" %>
	</header>
		
	<main id="main">
		<div id="slideshowArea">
			<div id="slideShow" class="dFlex">
				<a href="#"><img src="/img/slideShow_01.jpg" alt="이미지"></a>
				<a href="#"><img src="/img/slideShow_02.jpg" alt="이미지"></a>
				<a href="#"><img src="/img/slideShow_03.jpg" alt="이미지"></a>
			</div>
		</div>
			
		<h1>BEST WINE</h1>
		
		<div id="bestWine" class="dFlex">
			<div id="img1">
				<a href="#"><img src="/img/wine1.jpg" alt="이미지"></a>
				<p>wine</p>
			</div>
			<div id="img2">
				<a href="#"><img src="/img/wine1.jpg" alt="이미지"></a>
				<p>wine</p>
			</div>
			<div id="img3">
				<a href="#"><img src="/img/wine1.jpg" alt="이미지"></a>
				<p>wine</p>
			</div>
			<div id="img4">
				<a href="#"><img src="/img/wine1.jpg" alt="이미지"></a>
				<p>wine</p>
			</div>
		</div>
	</main>
				
	<footer id="footer">
		<%@ include file="footer.jsp" %>
	</footer>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script3.js"></script>
</body>
</html>    