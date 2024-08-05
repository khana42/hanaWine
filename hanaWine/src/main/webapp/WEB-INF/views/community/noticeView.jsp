<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="/style/style4.css?v">
</head>
<body>

	<header id="header">
		<%@ include file="../header.jsp" %>
	</header>

	<div id="wrap">
		<div class="commWrap">
			<div class="commTit">
				<h1>공지 사항</h1>
			</div>
			<!-- div.commTit -->
			<ul class="commGnb dFlex">
				<li><a href="/notice_list"><span>공지 사항</span></a></li>
				<li><a href="/faq_list"><span>자주하는 질문</span></a></li>
				<li><a href="/qna_page"><span>1:1 문의</span></a></li>
			</ul>
		</div>
		<!-- div.commWrap -->
		
		<div id="noticeListView">
			<div class="notiTitWrap">
				<h3> ${mtdNoticeView.notiTit }</h3>
			</div>
			<!-- div.viewTitWrap -->
			
			<div class="notiConWrap">
				<p>${mtdNoticeView.notiCon }</p>
			</div>
			<!-- div.conWrap -->
			
			<div class="commBtnArea">
				<button onclick="history.back()">목록</button>
			</div>
			
		</div>
		<!-- div#noticeListView -->
					
	
	</div>
	<!-- div#wrap -->
	
	<footer id="footer">
		<%@ include file="../footer.jsp" %>
	</footer>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script4.js"></script>
</body>
</html>