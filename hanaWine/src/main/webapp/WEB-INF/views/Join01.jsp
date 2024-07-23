<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
   <link rel="stylesheet" href="/style/style5.css?v">
</head>

<body>
    <div id="Join1wrap">
	<!-- <h1>${"회원가입 첫 페이지(join01.jsp)" }</h1> -->
        <div id="Join1">
            <a href="join_02.html">쇼핑몰 회원가입</a>
        </div>
        <hr>
        <!-- div#Join -->

        <div id="N_K">

            <a href="#">
                <img src="n_k/n.jpg" alt="">
                <span class="nk">네이버 아이디 회원가입</span>
            </a>

            <a href="#">
                <img src="n_k/kko.jpg" alt="">
                <span class="nk">카카오 아이디 회원가입</span>
            </a>
            <span id="text">！ SNS계정을 연동하여 빠르고 쉽고 안전하게 회원가입 할 수 있습니다<br>
                　이 과정에서 고객님의 데이터는 철저하게 보호됩니다.
            </span>
        </div>


        <div id="login_go">
            <span>이미 쇼핑몰 회원이세요?</span>
            <a href="#" id="login_go">로그인</a>
        </div>



	</div>
	<!-- div#wrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script5.js"></script>
</body>
</html>    