



<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Document</title>
<style>
ul {
   /* 불릿기호 표시하지 않음 */
   list-style: none;
}

.dFlex {
   /* HTML요소의 속성으로 플렉스 레이아웃 적용 */
   display: flex;
}

#logo {
   text-align: center;
   margin: 10px auto;
}

div#gnbArea {
   justify-content: center;
   margin: 20px auto;
}

#gnbArea #nav ul#mainMenu {
   width:1200px;
   justify-content: space-around;
}

#gnbArea #nav ul#mainMenu>li {
   margin-right: 30px;
   font-size: 30px;
   text-align: center;
   display: inline-block;
   position: relative;
   z-index: 10;
}

#gnbArea #nav ul#mainMenu li:hover {
   cursor: pointer;
   font-weight: bold;
}
</style>
</head>
<body>

   <div id="logo">
      <a href="/admin"> <img src="/img/logo.png" alt="로고 이미지">
      </a>
   </div>


   <div id="gnbArea" class="dFlex">
      <nav id="nav">
         <ul id="mainMenu" class="dFlex">
            <li id="adminWineup" data-cate="WINE">와인 상품 등록</li>
            <li id="adminWinePage" data-cate="Food">와인 목록 페이지</li>
            <li id="adminMemL" data-cate="Grape">회원 목록</li>
            <li id="adminFQ" data-cate="Country">자주하는 질문 등록</li>
            <li id="adminCommunity" onclick="location.href='/notice'">공지사항 등록</li>
         </ul>
      </nav>

   </div>
   <!-- div#gnbArea -->
   
   <hr>

   <script
      src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

   <script >
   $(function() {
      $("#adminWineup").click(function(){
         location.href = "/upload";
      });
      $("#adminWinePage").click(function(){
         location.href = "/Adminlist";
      });
      $("#adminMemL").click(function(){
         location.href = "/memList";
      });
      $("#adminFQ").click(function(){
         location.href = "/faq_write";
      });
      $("#adminCommunity").click(function(){
         location.href = "/notice_write";
      });
      
   })
   
   
   </script>
</body>
</html>