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
				<h1>자주하는 질문</h1>
			</div>
			<!-- div.commTit -->
			<ul class="commGnb dFlex">
				<li><a href="/notice_list"><span>공지 사항</span></a></li>
				<li><a href="/faq_list"><span>자주하는 질문</span></a></li>
				<li><a href="/qna_page"><span>1:1 문의</span></a></li>
			</ul>
		</div>
		<!-- div.commWrap -->
		
		<div class="faqListWrap">
			<div class="faqContent">
				<ul class="faqList">
				
				<c:forEach var="faqList" items="${mtdFaqList }">
				
					<li>
						<span>${faqList.faqQues }</span>
						<div class="a"><span>${faqList.faqAnsw }</span></div>
					</li>
					
				</c:forEach>		
				
				</ul>
			</div>
			<!-- div.faqContent -->
			
			<div class="aside">
				<h3>자주 찾는 질문의 답변이 부족하시다면 </h3>
				<h3>상담원에게 문의해 주세요.</h3>
			</div>
			
			<div class="commBtnArea">
				<button onclick="location.href='/qna_page'">1:1 문의하기</button>
			</div>
			
		</div>
		<!-- div.qnaListWrap -->
		
	</div>
	<!-- div#wrap -->
	
	<footer id="footer">
		<%@ include file="../footer.jsp" %>
	</footer>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script4.js"></script>
</body>
</html>