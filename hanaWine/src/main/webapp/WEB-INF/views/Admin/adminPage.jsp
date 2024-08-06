<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<style>

div#Adminwrap {
    width: 1180px;
    padding: 20px;
    border-radius: 4px;
    margin: 20px auto;
}

#Adminwrap>header#header>h1 {
    /* border: 1px solid #000; */
    /* padding-right: 50px; */
    position: relative;
    /* right: 10px; */
    margin-bottom: 25px;
    text-align: center;
}

table {
    width: 858px;
    border-collapse: collapse;
    /* border: 1px solid #000; */
}

td.click {
    border: 1px solid #000;
    width: 207px;
}

td.exercise {
    text-align: left;
}

th,
td {
    border-bottom: 1px solid #aaa;
}

th {
    border: 1px solid none;
    padding: 10px 0;
    background-color: #ebfaff;
}

td {
    border: 1px solid none;
    text-align: center;
    padding: 8px 0;
    /* 위아래 우좌 */
}
a:hover {
	color: #08f;
}
div.btnArea {
	text-align: center;
}
div.btnArea button {
	font-size: 18px;
	padding: 3px 10px;
	cursor: pointer;
}
main#main {
	margin: 20px auto;
	width: 900px;
	border: 1px solid #000;
	height: 500px;
}
footer#footer{
     border: 1px solid #000; 
    /* padding-right: 50px; */
    position: relative;
    /* right: 10px; */
    margin-bottom: 25px;
    text-align: center;
  
}
#AdmintabArea {
    margin-top: 20px;
}

#AdminTab {
    display: flex;
    justify-content: space-around;
    list-style: none;
    padding: 0;
    border-top: 2px solid #000;
    border-bottom: 2px solid #000;
    margin: 0;
}

.adminLi {
    flex: 1;
    text-align: center;
}
.adminLi:nth-child(1) {
	border-left : 2px solid #000;
}
.adminLi:nth-child(2) {
	border-left : 2px solid #000;
}
.adminLi:nth-child(3) {
	border-left : 2px solid #000;
}
.adminLi:nth-child(4) {
	border-left: 2px solid #000;
	
}
.adminLi:nth-child(5) {
	border-left: 2px solid #000;
	border-right: 2px solid #000;
}
.adminLi a {
    display: block;
    padding: 15px 0;
    font-size: 24px;
    color: #000;
    text-decoration: none;
    font-weight: bold;
}

.adminLi a:hover {
    background-color: #aca6c7;
    color: #e6f9ff;
}
</style>


</head>
<body>
	<div id="Adminwrap">
		 <header id="header">

            	<h1><a href="/adminPage">관리자 페이지</a></h1>

            <nav id="AdmintabArea">
            	<ul id="AdminTab" class="dFlex">
                	<li class="adminLi">
                    	<a href="/">메인으로</a>
                	</li>
               		 <li class="adminLi">
                    	<a href="/winelistReg">와인 상품등록</a>
               	 	</li>
                	<li class="adminLi">
                    	<a href="memList">회원목록</a>
                	</li>
                	<li class="adminLi">
                     	<a href="/notice_write">공지사항 등록</a>
                	</li>
                	<li class="adminLi">
                     	<a href="/faq_write">자주하는 질문</a>
                	</li>
            	</ul>
            </nav>
        </header>
        <br>
	</div>
	<!-- div#wrap -->
	<script src="/lib/jquery-3.7.1.min.js"></script>
	<script src="/script/script6.js"></script>
</body>
</html>    