<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%
String memberId = (String)session.getAttribute("memberId");
%>   

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
			<a href="/"> <img src="/img/logo.png" alt="로고 이미지">
			</a>
		</div>

		<div id="loginArea">
			<ul class="dFlex">
 			<% if (memberId == null) { %> 
				<li id="login">로그인</li>
				<li id="join">회원가입</li>
			<% } else { %>	
				<li id="logout" ><%=memberId  %>님 로그아웃</li>
 			<% } %> 
				<li>장바구니</li>
			</ul>
		</div>

	</div>
	<!-- div#logoArea -->
	
	<!-- modal -->
	<div id="loginWrap">		
		<div id="loginModal" class="modal">
			<div class="modal-content">
				<div id="modalCloseIconArea">
	            	<span id="closeIcon">&times;</span>
	       		</div>
	       	</div>
	       	
			<h1>로그인</h1>
			
			<form action="/login" method="post">
				<input type="text" name="memberId" required autofocus placeholder="아이디 입력"> 
				<input type="password" name="memberPw" required placeholder="비밀번호 입력">
				<button type="submit" id="loginBtn">로그인</button>
				<button type="button" id="joinBtn">회원가입</button>
			</form>
			
			<div id="find">
				<ul class="dFlex">
					<li>아이디 찾기</li>
					<li>|</li>
					<li>비밀번호 찾기</li>
				</ul>
			</div>
			<!-- div#find -->
					
		</div>
		<!-- div#loginModal -->
	</div>	
	<!-- div#loginWrap -->

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
					<ul class="subMenu">
						<li class="wineFood" data-cate="Beaf">소</li>
						<li class="wineFood" data-cate="Cheese">치즈</li>
						<li class="wineFood" data-cate="Lamb">양</li>
						<li class="wineFood" data-cate="Pasta">파스타</li>
					</ul>
				</li>
				<li id="wineCateGrape" data-cate="Grape">포도종류
					<ul class="subMenu">
						<li class="wineGrape" data-cate="몬테풀치아노 Montepulciano">몬테풀치아노</li>
						<li class="wineGrape" data-cate="샤도네이 Chardonnay">샤도네이</li>
						<li class="wineGrape" data-cate="피노누아 Pinot Noir">피노누아</li>
						<li class="wineGrape" data-cate="말벡 Malbec">말벡</li>
						<li class="wineGrape" data-cate="소비뇽블랑 Sauvignon Blanc">소비뇽블랑</li>
						<li class="wineGrape" data-cate="쉬라즈 Shiraz">쉬라즈</li>
						<li class="wineGrape" data-cate="진판델 Zinfandel">진판델</li>
						<li class="wineGrape" data-cate="네비올로 Nebbiolo">네비올로</li>
						<li class="wineGrape" data-cate="산지오베제 Sangiovese">산지오베제</li>
						<li class="wineGrape" data-cate="코르비나 Corvina">코르비나</li>
						<li class="wineGrape" data-cate="모스카토 Moscato">모스카토</li>
						<li class="wineGrape" data-cate="리슬링 Riesling">리슬링</li>
					</ul>
				</li>
				<li id="wineCateCountry" data-cate="Country">나라
					<ul class="subMenu">
						<li class="wineCountry" data-cate="Italy">이탈리아</li>
						<li class="wineCountry" data-cate="UnitedStates">미국</li>
						<li class="wineCountry" data-cate="NewZealand">뉴질랜드</li>
						<li class="wineCountry" data-cate="Argentina">아르헨티나</li>
						<li class="wineCountry" data-cate="Australia">호주</li>
						<li class="wineCountry" data-cate="France">프랑스</li>
						<li class="wineCountry" data-cate="Germany">독일</li>
						<!-- 						//<li class="wineCate" data-cate="PORTUGAL">포르투갈</li> -->
					</ul>
				</li>

				

				<li class="qBoard" id="community">커뮤니티
				
				</li>

			</ul>
		</nav>

		<div id="search">

			<form action="/search" method="GET">
				<input type="text" id="keyword" name="keyword" placeholder="와인을 검색해 보세요.">
				<a id="btnSearch" href="/search">
				
					<img src="/img/btn_search.png" alt="검색">
				</a>
				
			</form>

		</div>

	</div>
	<!-- div#gnbArea -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

	<script src="/script/script3.js"></script>
</body>
</html>