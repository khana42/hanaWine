<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/adminStyle.css?v">
</head>
<body>
	<div id="adminloginwrap">
			<h1 id="adminloginH1">관리자 로그인</h1>

		<form id="adminLoginForm" action="/adminLogin" method="post" >
			<input type="text" name="admin_id" id="adminLoginId"required autofocus placeholder="아이디 입력">
			<input type="password" name="admin_password" id="adminLoginPw" required placeholder="비밀번호 입력">
			<button type="submit" id="loginBtn">관리자 로그인</button>
			<div>
			<input type="checkbox"> <span>아이디 저장</span>
			</div>
	   </form>
	</div>
	<!-- div#wrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    