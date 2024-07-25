<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet" href="/style/style3.css?v">
</head>
<body>
	<div id="loginWrap">

		<h1>로그인</h1>

		<form action="/login" method="post">
			<input type="text" name="uid" required autofocus placeholder="아이디 입력">
			<input type="password" name="upw" required placeholder="비밀번호 입력">
			<button type="submit" id="loginBtn">로그인</button>
			<button type="button" id="joinBtn">회원가입</button>
			<label> <input type="checkbox"> <span>아이디 저장</span>
			</label>
		</form>
		<!-- 로그인 성공 시 팝업창 닫고 메인으로 -->
		<script>
			function loginSuccess() {
				// 부모 창으로 메시지 전송 (예: 로그인 성공)
				window.opener.postMessage('login_success', '*');
				// 팝업 창 닫기
				window.close();
			}
		</script>


		<!-- 로그인 실패 시 메시지 표시 -->
		<c:if test="${param.error != null}">
			<p style="color: red;">Invalid username or password.</p>
		</c:if>

		<div id="idSave"></div>

		<div id="find">
			<ul class="dFlex">
				<li>아이디 찾기</li>
				<li>|</li>
				<li>비밀번호 찾기</li>
			</ul>
		</div>
		<!-- div#find -->

	</div>
	<!-- div#loginWrap -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script3.js"></script>
</body>
</html>
