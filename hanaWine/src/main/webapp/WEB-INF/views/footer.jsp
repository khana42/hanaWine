푸터



<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Footer Example</title>
    <style>
 
/* 회원가입 페이지 공통 스타일 */
@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&family=IBM+Plex+Sans+KR&family=Noto+Sans+KR:wght@100..900&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&family=IBM+Plex+Sans+KR&family=Noto+Sans+KR:wght@100..900&family=Playfair+Display:ital,wght@0,400..900;1,400..900&display=swap');

/* 공통 스타일 */
body {
    background-color: #fff;
    color: #383838;
    margin: 0;
    padding: 0;
    font-family: 'IBM Plex Sans KR', sans-serif;
    font-size: 13px;
    font-weight: 700;
}

footer {
    border: 1px solid #ddd;
    display: flex;
    padding: 20px 50px;
    background-color: #fff;
     padding: 60px 0px;
      justify-content: center; /* 가운데 정렬 */
}

footer div {
    display: flex;
    flex-direction: column;
    /* 세로 방향 배치 */
    margin: 0 100px;
 
}

div.footer-section01 {
    width: 370px;
    margin-right: 50px;
    /* border: 1px solid #000; */
}

div#border {
    margin: 30px 50px 0 0px;
    height: 170px;
    border: 1px solid #ddd;
}

div.footer-section02 {
    width: 200px;
    /* border: 1px solid #000; */
    margin: 20px 0 0 20px;
}

div.footer-section03 {
    width: 200px;
    /* border: 1px solid #000; */
    margin: 20px 0 0 20px;
}

div.footer-section04 {
    width: 200px;
    /* border: 1px solid #000; */
    margin: 20px 0 0 20px;
}

div.footer-social {
    width: 200px;
    /* border: 1px solid #000; */
    margin: 20px 0 0 100px;
}

footer div h2 {
    margin-bottom: 10px;
    font-family: 'IBM Plex Sans KR', sans-serif;
    font-size: 17px;
    font-weight: 1000;

}

footer div h3 {
    margin-bottom: 10px;
    font-family: "Playfair Display", serif;
    font-optical-sizing: auto;
    font-weight: 1000;
}

footer div ul {
    list-style: none;
    padding: 0;
    margin: 0;
}

footer div ul li {
    margin-bottom: 5px;
}

footer div ul li a {
    color: #aaa;
    text-decoration: none;
    font-size: 1em;
}

footer div ul li a:hover {
    color: #696969;

}

footer .footer-logo {
    font-size: 1.5em;
    font-weight: bold;
    color: #420000;

}

footer .footer-logo span {
    color: #aaa;
}

footer .footer-copyright {

    margin-top: 40px;
    font-size: 0.9em;
    color: #aaa;
}

footer .footer-designed {
    font-size: 0.9em;
    color: #aaa;
    margin-bottom: 20px;

}

footer .footer-social ul {
    display: flex;
    gap: 10px;
    /* 아이템 간격 10px */
}

footer .footer-social ul li a {
    font-size: 1.5em;
}

footer .footer-social ul img {
    width: 20px;
    height: 20px;
    /* 아이콘 크기 */
}
    </style>
</head>

<body>
    <footer id="footer">
        <div class="footer-section01">
            <div class="footer-logo">
                <h3>HANA WINE</h3>

            </div>
            <div class="footer-copyright">
                Copyright © 2024 HANA WINE
            </div>
            <div class="footer-designed">
                Designed by Tooplate
            </div>
<!--             <div class="footer-msg"> -->
<!--                 개인정보처리방침 | 이용약관 -->
<!--             </div> -->
        </div>

        <div id="border"></div>

        <div class="footer-section02">
            <h2>Sitemap</h2>
            <ul>
                <li><a href="#!">WINE</a></li>
                <li><a href="#!">FOOD</a></li>
                <li><a href="#!">NATION</a></li>
                <li><a href="#!">GRAPES</a></li>
            </ul>
            <ul>
                <li><a href="#!">COMUNITY</a></li>
            </ul>
        </div>

        <div class="footer-section03">
            <h2>developer</h2>
            <ul>
                <li><a href="#!">Kang Hana</a></li>
                <li><a href="#!">Kwak uoosuk</a></li>
                <li><a href="#!">Park Bitnari</a></li>
                <li><a href="#!">Jeon Sookkyung</a></li>
                <li><a href="#!">Lee Seungho</a></li>
                <li><a href="#!">Jung Hyunsoo</a></li>
            </ul>
            <ul>
                <li><a href="#!"></a></li>
            </ul>
        </div>

        <div class="footer-section04">
            <h2>Sitemap</h2>
            <ul>
                <li><a href="#!">khn5963@naver.com</a></li>
                <li><a href="#!">us000000@naver.com</a></li>
                <li><a href="#!">o881black@gmail.com</a></li>
                <li><a href="#!">psjkwln1@naver.com</a></li>
                <li><a href="#!">drugsite89@naver.com</a></li>
                <li><a href="#!">amglar18@naver.com</a></li>
            </ul>
            <ul>
                <li><a href="#!"></a></li>
            </ul>
        </div>
        <div class="footer-section footer-social">
            <h2>Social</h2>
            <ul>
                <li><a href="#!"><img src="/img/free-icon-instagram-4922972.png" alt=""></a></li>
                <li><a href="#!"><img src="/img/free-icon-telephone-73552.png" alt=""></a></li>
                <li><a href="#!"><img src="/img/free-icon-youtube-logo-87421.png" alt=""></a></li>

            </ul>
        </div>
    </footer>
</body>

</html>