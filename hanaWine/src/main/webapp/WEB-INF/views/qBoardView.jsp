<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>답변 확인</title>
	<link rel="stylesheet" href="/style/style4.css?v">
</head>
<body>
	<div id="wrap">
		<h1>답변 확인</h1>
		<hr>
		<ul>
			<li>분류 : ${mtdQboardView.qCategory }</li>
			<li>제목 : ${mtdQboardView.qTitle }</li>
			<li>내용 : ${mtdQboardView.qContent }</li>
		</ul>
		<hr>
		<button type="button" onclick="location.href='/qBoardList'">목록</button>
		
	</div>
	<!-- div#wrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script4.js"></script>
</body>
</html>    