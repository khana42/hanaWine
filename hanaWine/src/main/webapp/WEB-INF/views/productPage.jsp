<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
		<div id="wrap">

        <div id="RouteArea">
            <span>HOME > ALL WINES > PRODUCT</span>
        </div>

        <Main id="main" class="dFlex">
            <div class="wineInfo">
                <div id="wineImgArea">
                    <img src="images/testImg.png" alt="제품이미지영역">
                </div>
                <!-- div#wineImgArea -->
                <div id="wineDetailArea">
                    <h2>메종 르루아 부르고뉴 블랑 98</h2>
                    <p class="wineSubtitle">Maison Leroy Bourgogne Blanc 1998 Blanc</p>
                    <ul class="wineDetails">
                        <li><strong>브랜드</strong> 브랜드명 </li>
                        <li><strong>종류:</strong> WHITE</li>
                        <li><strong>원산지:</strong> 프랑스 &gt; 부르고뉴</li>
                        <li><strong>포도품종:</strong> 샤도네이</li>
                    </ul>

                    <div class="wineRatings">

                        <div class="wineRating">
                            <span>당도</span>
                            <div class="ratingBar">
                                <div class="ratingFill" style="width: 60%;"></div>
                            </div>
                        </div>
                        <!-- div#wineRating -->

                        <div class="wineRating">
                            <span>산도</span>
                            <div class="ratingBar">
                                <div class="ratingFill" style="width: 80%;"></div>
                            </div>
                        </div>
                        <!-- div#wineRating -->

                        <div class="wineRating">
                            <span>타닌</span>
                            <div class="ratingBar">
                                <div class="ratingFill" style="width: 20%;"></div>
                            </div>
                        </div>
                        <!-- div#wineRating -->

                        <div class="wineRating">
                            <span>바디</span>
                            <div class="ratingBar">
                                <div class="ratingFill" style="width: 40%;"></div>
                            </div>
                        </div>
                        <!-- div#wineRating -->
                    </div>
                    <!-- div#wineRatings -->
                    <hr>

                    <div id="priceArea">
                        <span>가격 : </span>
                        <span>10,000원</span>
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

        <nav id="tabArea">
            <ul id="mainTab" class="dFlex">
                <li class="mainLi" data-target="productDetail">
                    <a href="#">상세정보</a>

                </li>
                <li class="mainLi" data-target="recommFood">
                    <a href="#">추천음식</a>
                </li>
                <li class="mainLi" data-target="reservation">
                    <a href="#">구매예약 안내</a>
                </li>
                </li>
                <li class="mainLi" data-target="qa">
                    <a href="#">Q&A</a>

                </li>
            </ul>
        </nav>
        <div class="contents productDetail">
            <img src="images/sample상세페이지.jpg" alt="">
        </div>
        <div class="contents recommFood" style="display: none;">
            <img src="images/페어링샘플.png" alt="">
        </div>
        <div class="contents reservation" style="display: none;">
            <img src="images/pickup이미지.PNG" alt="">
        </div>
        <div class="contents qa" style="display: none;">
            관리자페이지
        </div>


        <footer id="footer">

        </footer>
        <!-- Footer#footer -->



    </div>
    <!-- div#wrap -->

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    