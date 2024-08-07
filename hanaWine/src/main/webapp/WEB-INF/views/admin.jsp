<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Document</title>

<style>
#logo {
   text-align: center;
   margin: 20px auto;
}

div#AdminWrap {
    width: 90%;
    margin: 0 auto;
    border: 1px solid #ddd;
    padding: 20px;
    box-sizing: border-box;

}

div#AdminWrap>h1 {
    text-align: center;
    font-family: 'IBM Plex Sans KR', sans-serif;
    font-size: 13px;
    font-weight: 300;
    margin-top: 100px;
    margin-bottom: 100px;
    color: #333131;

}



.Admin-header {
/*     width: 1500px; */

    height: 500px;
    text-align: center;

}

.Admin-header,
.Admin-item {
    display: flex;
    align-items: center;
    padding: 10px;
    font-family: 'IBM Plex Sans KR', sans-serif;
    font-size: 15px;
    font-weight: 300;
}



.Admin-item {
    width: 550px;
    height: 200px;
    line-height: 200px;
    margin: 5px;
    border: 1px solid #ddd;
    flex: unset;
    font-weight: bold;
    font-family: 'IBM Plex Sans KR', sans-serif;
    padding-left: 100px;
}

</style>


</head>
<body>
   <head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="/style/style10.css">
</head>

<body>

    <div id="AdminWrap">
        <div id="logo">
         <a href="/admin"> <img src="/img/logo.png" alt="로고 이미지"></a>
      </div>
        <hr>

        <form action="/payProc" method="post" id="payProc">

            <div class="Admin-header">

                <div id="admin-wine" class="Admin-item">와인 상품등록</div>
                <div id="admin-list" class="Admin-item">와인 목록 페이지</div>
                <div id="admin-memList" class="Admin-item">회원목록</div>
                <div id="admin-faq_write" class="Admin-item">자주하는 질문 등록</div>
                <div id="admin-notice_write" class="Admin-item">공지사항 등록</div>
            </div>
            <hr>
        </form>
   
   
   
   
   <script src="/lib/jquery-3.7.1.min.js"></script>
   <script src="/script/script6.js"></script>

</body>
</html>    