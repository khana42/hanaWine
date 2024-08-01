<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet" href="/style/style2.css?v">
</head>
<body>

	<div id="wrap">
		<header id="header">

	</header>
		
			<div id="RouteArea">
			<span><a href="main.jsp" id="mainLink" class="routeLink">HOME</a></span>
			<span>></span>
			<span><a href="subpage1.jsp" id="subpageLink" class="routeLink">ALL WINES</a></span>
			<span>></span>
			<span><a href="productPage.jsp" id="productpageLink" class="routeLink"></a>PRODUCT</span>
		</div>


		<Main id="main" class="dFlex">

			<c:forEach var="wine" items="${wineList}">

				<div class="wineInfo">
					<div id="wineImgArea">
						<img src="${wine.goodsImg}" alt="제품이미지영역">
					</div>
					<div id="wineDetailArea">
						<h2>${wine.productNameKR}</h2>
						<p class="wineSubtitle">${wine.productNameEN}</p>
						<ul class="wineDetails">
							<li><strong>브랜드</strong> ${wine.brand}</li>
							<li><strong>종류:</strong> ${wine.typeOfWine}</li>
							<li><strong>원산지:</strong> ${wine.nation} &gt; ${wine.region}</li>
							<li><strong>포도품종:</strong> ${wine.grape}</li>
							<li><strong>도수:</strong>${wine.alcohol}</li>
						</ul>

						<div class="wineRatings">

							<div class="wineRating">
								<span>당도</span>
								<div class="ratingBar">
									<div class="ratingFill" style="width: ${wine.sweetness*20}%;"></div>
								</div>
								<!-- div.ratingBar -->
							</div>
							<!-- div.wineRating -->
							
							<div class="wineRating">
								<span>산도</span>
								<div class="ratingBar">
									<div class="ratingFill" style="width: ${wine.acidity*20}%;"></div>
								</div>
								<!-- div.ratingBar -->	
							</div>
							<!-- div.wineRating -->
							
							<div class="wineRating">
								<span>바디</span>
								<div class="ratingBar">
									<div class="ratingFill" style="width: ${wine.body*20}%;"></div>
								</div>
								<!-- div.ratingBar -->	
							</div>
							<!-- div.wineRating -->
						
						</div>
						<!--div.wineRatings -->
						
						<hr>
						<div id="priceArea">
							<span>가격 : </span> <span>${wine.price}</span>
						</div>
						<div id="btnArea">
							<button>찜</button>
							<button>장바구니</button>
							<button>구매하기</button>

						</div>
						<!-- div#btnArea -->

					</div>
					<!-- div#wineDetailArea -->
				</div>
				<!-- div#wineInfo -->
		</Main>
		<!-- Main#main -->

		</c:forEach>



		<nav id="tabArea">
			<ul id="mainTab" class="dFlex">
				<li class="mainLi" data-target="productDetail"><a href="#">상세정보</a>

				</li>
				<li class="mainLi" data-target="recommFood"><a href="#">추천음식</a>
				</li>
				<li class="mainLi" data-target="reservation"><a href="#">구매예약
						안내</a></li>

				<li class="mainLi" data-target="qa"><a href="#">Q&A</a></li>
			</ul>
		</nav>
		<div class="contents productDetail">
			<img src="${wine.Recipe}" alt="상세페이지">
		</div>
		<div class="contents recommFood" style="display: none;">
			<img src="${wine.goodsInfo}" alt="추천 페어링 음식">
		</div>
		<div class="contents reservation" style="display: none;">
			<img src="images/pickup이미지.PNG" alt="배송정보">
		</div>
		<div class="contents qa" style="display: none;">관리자페이지</div>


	<footer id="footer">

	</footer>


	</div>
	<!-- div#wrap -->

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script2.js"></script>
</body>
</html>
