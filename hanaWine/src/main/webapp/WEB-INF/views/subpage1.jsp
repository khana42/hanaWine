<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
    <header id="header">
		<%@ include file="header.jsp" %>
	</header>
	<div id="wrap">

		<h1>${wineName}</h1>
		<div class="slide_wrapper">
			<div class="ha"><span>신상품 와인</span></div>
			<ul class="slides dFlex">
				<li><img src="http://placehold.it/200x200" alt=""></li>
				<li><img src="http://placehold.it/200x200" alt=""></li>
				<li><img src="http://placehold.it/200x200" alt=""></li>
				<li><img src="http://placehold.it/200x200" alt=""></li>
				<li><img src="http://placehold.it/200x200" alt=""></li>
				<li><img src="http://placehold.it/200x200" alt=""></li>
				<li><img src="http://placehold.it/200x200" alt=""></li>
				<li><img src="http://placehold.it/200x200" alt=""></li>
				<li><img src="http://placehold.it/200x200" alt=""></li>
				<li><img src="http://placehold.it/200x200" alt=""></li>
			</ul>
			<p class="controls">
				<span class="prev">&lt;</span> <span class="next">&gt;</span>
			</p>
		</div>

	
		<div id="select" class="dFlex">
			<div id="priceSel">
				<input type="range" name="selecPrice" id="selecPrice">
				<button>select</button>
			</div>
			<div id="selecOp">
				<ul id="select0" class="dFlex">
					<li class="dateDesc">최신순</li>
					<li>|</li>
					<li class="priceUp">가격 높은순</li>
					<li>|</li>
					<li class="priceDown">가격 낮은순</li>
				</ul>
			</div>
		</div>
		<!--       목록 -->
         <c:forEach	var="list"	items="${daoWineList}">
		 <div id="main" class="dFlex">
			<div id="wine" class="dFlex">
				<div class="img1">
					<img src="http://placehold.it/200x300" alt="">
				</div>
				<div class="name">
					<div class="bdname">
						<span>${list.brand}</span>
					</div>
					<div class="winame">
						<span>${list.wineKrName}</span>
					</div>
					<div class="enWiname">
						<span>${list.wineEnName}</span>
					</div>
					<div class="con">
						<span>${list.country}</span>
					</div>
					<div class="price">
						<span>${list.price}</span>
					</div>
				</div>
			</div>
		</div>
		
	 	</c:forEach>
	
<!-- 		목록끝 -->
	</div>
<!-- div#wrap -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>
