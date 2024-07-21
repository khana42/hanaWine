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
	<div id="logoArea" class="dFlex">
	
		<div id="logo">
			<a href="/">
				<img src="/img/logo.png" alt="로고 이미지">
			</a>
		</div>
		
		<div id="loginArea">
			<ul class="dFlex">
				<li id="login">로그인</li>
				<li id="join">회원가입</li>
				<li>장바구니</li>
			</ul>
		</div>
		
	</div>
	<!-- div#logoArea -->
	
	<div id="gnbArea" class="dFlex">
		<nav id="nav">
			<ul id="mainMenu" class="dFlex">
				<li>와인
					<ul class="subMenu">
						<li>화이트 와인</li>
						<li>레드 와인</li>
						<li>스파클링</li>
						<li>1</li>
					</ul>		
				</li>
				<li>음식
					<ul class="subMenu">
						<li>2</li>
						<li></li>
						<li></li>
						<li></li>
					</ul>			
				</li>
				<li>포도종류
					<ul class="subMenu">
						<li>3</li>
						<li></li>
						<li></li>
						<li></li>
					</ul>				
				</li>
				<li>나라
					<ul class="subMenu">
						<li>4</li>
						<li></li>
						<li></li>
						<li></li>
					</ul>			
				</li>
				<li>커뮤니티</li>
			</ul>
		</nav>
		
		<div id="search">
			<input type="text" placeholder="와인을 검색해 보세요.">
			<img src="/img/search.png" alt="검색이미지">
		</div>
		
	</div>
	<!-- div#gnbArea -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script3.js"></script>
</body>
</html>    