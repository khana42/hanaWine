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
<<<<<<< HEAD
=======
	<div id="loginPage">
>>>>>>> 2b513cfa13e1efc73ccfca1ae75e28e3044ab9e4

	<div id="loginModal" class="modal" >
		<div class="modal-content">
			<div id="modalCloseIconArea">
            <span id="closeIcon">&times;</span>
        </div>
			<h1>로그인</h1>
			<form action="/main" method="post">
				<input type="text" name="memberId" required autofocus
					placeholder="아이디 입력"> <input type="password"
					name="memberPw" required placeholder="비밀번호 입력">
				<button type="submit" id="loginBtn">로그인</button>
				<button type="button" id="joinBtn">회원가입</button>
			</form>
			<div>
				<p>${error}</p>
			</div>
			
			<div id="find">
				<ul class="dFlex">
					<li>아이디 찾기</li>
					<li>|</li>
					<li>비밀번호 찾기</li>
				</ul>
			</div>
			<!-- div#find -->
		</div>
<<<<<<< HEAD
		<!-- div.modal-content -->
=======
		
		<h1>로그인</h1>

		<form action="/login" method="post" >
			<input type="text" name="memberId" required autofocus placeholder="아이디 입력">
			<input type="password" name="memberPw" required placeholder="비밀번호 입력">
			<button type="submit" id="loginBtn">로그인</button>
			<button type="button" id="joinBtn">회원가입</button>
			<label> <input type="checkbox"> <span>아이디 저장</span>
			</label>
		</form>
		
		<div id="errorMessage">
			${error}
		</div> <!-- 오류 메시지 -->
		
		<div id="idSave"></div>

		<div id="find">
			<ul class="dFlex">
				<li>아이디 찾기</li>
				<li>|</li>
				<li>비밀번호 찾기</li>
			</ul>
		</div>
		<!-- div#find -->

>>>>>>> 2b513cfa13e1efc73ccfca1ae75e28e3044ab9e4
	</div>
	<!-- div#loginModal -->

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script3.js"></script>
</body>
</html>
