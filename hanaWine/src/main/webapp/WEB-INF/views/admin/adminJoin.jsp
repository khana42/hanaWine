<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet" href="/style/adminStyle.css?v">
</head>
<body>
	<div id="adiminJoinwrap">
		<main id="joinMain">
		<h1>관리자 회원가입</h1>
			<form action="adminJoin" method="post">
				<div id="adminId">
					<span>아이디</span> <input type="text" name="admin_id" placeholder="아이디를 입력하세요">
				</div>
				<div id="adminPw">
					<span>비밀번호</span> <input type="password" name="admin_password" placeholder="비밀번호를 입력하세요">
				</div>
				<div id="adminName">
				<span>이름</span> <input type="text" name="admin_username" placeholder="이름을 입력하세요">
				</div>
				<div id="adminEmail">
				<span>이메일</span> <input type="text" name="admin_email" placeholder="이메일을 입력하세요">
				</div>

				<button type="button" id="adminjoinbtn">관리자 회원 가입</button>
			</form>
		</main>
	</div>
	<!-- div#wrap -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/adminScript.js"></script>
</body>
</html>
