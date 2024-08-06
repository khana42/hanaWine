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
	
	<header id="header">
		<%@ include file="header.jsp" %>
	</header>
		
	<main id="main">
		<div id="slideshowArea">
			<div id="slideShow" class="dFlex">
				<a href="#"><img src="/img/wineSlide1.jpg" alt="이미지"></a>
				<a href="#"><img src="/img/wineSlide2.jpg" alt="이미지"></a>
				<a href="#"><img src="/img/wineSlide3.jpg" alt="이미지"></a>
			</div>
		</div>
			
		 <div class="bestWine dFlex">

        <div id="img1" class="dFlex">
            <a href="#"><img src="/img/mainWine.jpg" alt="이미지"></a>
            <div id="txt"></div>
	            <p id="p1">Enjoy a variety of different
	                <br>
	                <span id="span1">wines at Hana Wine Shop</span>
	                <br>
	                <span id="span2">Hana Wine Shop inspects and sells only wines of the best quality.</span>
	            </p>

        </div>
   	</div>
	


    <div class="bestWine dFlex">

        <div id="img1" class="dFlex">
            <p id="p1">Enjoy a variety of different
                <span>wines at Hana Wine Shop</span>
            </p>
            <div id="txt">
                <!-- <p id="p2">wines at Hana Wine Shop </p> -->
            </div>
            <a href="#"><img src="/img/mainWine2.jpg" alt="이미지"></a>


            <!-- <div id="txt"></div> -->
        </div>
    </div>
		
	</main>
	
			
	<footer id="footer">
		<%@ include file="footer.jsp" %>
	</footer>
	
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script3.js"></script>
</body>
</html>    