<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <style>
        div#wrap {
            width: 800px;
            border: 1px solid #aaa;
            padding: 20px;
            margin: 20px auto;
        }

        div#Join {
            width: 800px;
            text-align: center;
            /* border: 1px solid #c52323; */
            padding: 30px 20px;

        }

        div#Join>a {
            display: inline-block;
            width: 800px;
            /* border: 1px solid #aaa; */
            cursor: pointer;
        }

        div#N_K {
            border: 1px solid #e305f7;
            width: 800px;
            height: 250px;
            padding: 20px;
            text-align: center;
        }

        div#N_K img {
            display: inline-block;
            /* border: 2px solid #017740; */
            width: 50px;
            transform: translateY(-16px);
        }

        div#N_K>a {
            padding: 20px 1px;
            margin: 5px;
            display: inline-block;
            width: 400px;
            border: 2px solid #231b88;
            font-size: 15px;

        }

        div#N_K>a>span.nk {
            border: 1px solid #000;

        }

        div#N_K>span#text {
            display: inline-block;
            width: 400px;
            font-size: 12px;
            text-align: left;
            margin: 15px 0;
            border: 1px solid #000;
        }

        div#login_go {
            /* border: 1px solid #a56300; */
            width: 800px;
            text-align: center;
            margin: 5px 0 20px;
        }

        div#login_go>a#login_go {
            cursor: pointer;
        }

        div#login_go>span {
            color: #aaa;
        }
    </style>
</head>

<body>
    <div id="wrap">
<h1>메로옹</h1>
        <div id="Join">
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
	<script src="/script/script.js"></script>
</body>
</html>    