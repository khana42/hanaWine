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
				<li id="wineCateMain" data-cate="WINE">와인
					<ul class="subMenu">
						<li class="wineCate" data-cate="WHITEWINE">화이트 와인</li>
						<li class="wineCate" data-cate="REDWINE">레드 와인</li>
						<li class="wineCate" data-cate="SPARKLING">스파클링</li>
					
					</ul>		
				</li>
				<li id="wineCateFood" data-cate="Food">음식
					<ul class="subMenu" >
						<li class="wineFood" data-cate="소고기">소</li>
						<li class="wineFood" data-cate="치즈">치즈</li>
						<li class="wineFood" data-cate="양고기">양</li>
					
					</ul>			
				</li>
				<li id="wineCateGrape" data-cate="Grape">포도종류
					<ul class="subMenu">
						<li class="wineGrape" data-cate="쉬라즈">시라</li>
						<li class="wineGrape" data-cate="말벡">말벡</li>
						<li class="wineGrape" data-cate="네비올라">네비올라</li>
					</ul>				
				</li>
				<li id="wineCateCountry" data-cate="Country">나라
					<ul class="subMenu">
						<li class="wineCountry" data-cate="이탈리아">이탈리아</li>
						<li class="wineCountry" data-cate="독일">독일</li>
<!-- 						//<li class="wineCate" data-cate="PORTUGAL">포르투갈</li> -->
					</ul>			
				</li>
				<li class = qBoard>커뮤니티</li>
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