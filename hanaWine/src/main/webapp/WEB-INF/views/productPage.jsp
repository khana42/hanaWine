<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet" href="/style/style2.css?v">
<style>
@charset "UTF-8";
@import url(style.style.reset2.css);

div#wrap {
    width: 1200px;
    border: 1px solid #000;
    margin: 0px auto;
    padding: 20px;
}

/* RouteArea 시작 */
#RouteArea {
    margin-bottom: 20px;
    text-align: right;
}

#RouteArea span {
    font-size: 14px;
    color: #666;
}

#RouteArea span>a {
    text-decoration: none;
    color: inherit;
}

#RouteArea span>a:hover {
    font-weight: bold;
    color: #000;
}

.bold {
    font-weight: bold;
    color: #000;
}
/* RouteArea 끝 */



/* Main#main 시작  */

#main {
    display: flex;
    justify-content: space-between;
}

#main .wineInfo {
    display: flex;
    width: 100%;
    margin: 50px;
    /* border: 1px solid #000; */
}

#wineImgArea img {
    max-width: 300px;
    height: auto;
    padding: 20px;
    margin: 30px;
    /* border: 1px solid #000; */
}



/* wine 제품 디테일 영역 시작 */

#wineDetailArea {
    margin-left: 20px;
    flex: 1;
    padding: 20px;
    margin: 30px;
    /* border: 1px solid #000; */
}

#wineDetailArea h2 {
    margin-top: 100px;
    font-size: 24px;
}

.wineSubtitle {
    font-size: 16px;
    color: #999;
    margin-bottom: 20px;

}

.wineDetails {
    list-style: none;
    padding: 0;
    margin-bottom: 20px;
}


.wineDetails li {
    margin-bottom: 5px;
    /* border: 1px solid #000; */
}


.wineRatings {
    margin-bottom: 20px;

}

.wineRating {
    display: flex;
    align-items: center;
    margin-bottom: 10px;

}

.wineRating span {
    width: 50px;
    font-size: 14px;
}

.ratingBar {
    width: 200px;
    height: 10px;
    background-color: #ddd;
    margin-left: 10px;
    position: relative;
}

.ratingFill {
    height: 100%;
    background-color: #000;
    position: absolute;
    top: 0;
    left: 0;
}

#priceArea {
    display: flex;
    flex-flow: row nowrap;
    justify-content: flex-end;
    margin-bottom: 20px;
}

#priceArea span:first-child {
    font-size: 28px;
    margin-right: 10px;
}

#priceArea span:last-child {
    font-size: 28px;
    font-weight: bold;
}

#btnArea {
    display: flex;
    justify-content: space-between;
    gap: 10px;
}

#btnArea button {
    flex: 1;
    padding: 10px;
    font-size: 16px;
    border: 1px solid #000;
    background-color: #fff;
    cursor: pointer;
}

#btnArea button:hover {
    background-color: #000;
    color: #fff;
}

/* wine 제품 디테일 영역 끝 */


/* 상세정보 탭메뉴 시작 */
#tabArea {
    margin-top: 20px;
}

#mainTab {
    display: flex;
    justify-content: space-around;
    list-style: none;
    padding: 0;
    border-top: 2px solid #000;
    border-bottom: 2px solid #000;
    margin: 0;
}

.mainLi {
    flex: 1;
    text-align: center;
}

.mainLi a {
    display: block;
    padding: 15px 0;
    font-size: 24px;
	font-weight: bold;
    text-decoration: none;
    font-weight: bold;
}

.mainLi a:hover {
    background-color: #000;
    color: #fff;
}



/* 상세정보 탭메뉴 끝 */


</style>
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
