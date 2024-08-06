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
				<h1>공지사항</h1>
			</div>
			<!-- div.commTit -->
<<<<<<< HEAD
			<div class="commGnbArea">
				<ul class="commGnb dFlex">
					<li><a href="/notice_list"><span>공지 사항</span></a></li>
					<li><a href="/faq_list"><span>자주하는 질문</span></a></li>
					<li><a href="/qna_page"><span>1:1 문의</span></a></li>
				</ul>
			</div>
			<!-- div.commGnbArea -->
=======
			<ul class="commGnb dFlex">
				<li><a href="/notice_list"><span>공지 사항</span></a></li>
				<li><a href="/faq_list"><span>자주하는 질문</span></a></li>
				<li><a href="/qna_page"><span>1:1 문의</span></a></li>
			</ul>
>>>>>>> d6f4215777fa5b35f108a0cc15b4068abc6ded3b
		</div>
		<!-- div.commWrap -->
		
		<div class="noticeListWrap">
			<table>
				<thead>
					<tr class="tblListTit">
						<th class="num">번호</th>
						<th class="title">제목</th>
						<th class="date">작성일</th>
					</tr>
				</thead>
				<tbody class="tblList">
				<c:forEach var="noticeList" items="${mtdNoticeList }">
					<tr>
						<td class="num">${noticeList.notiNum }</td>
						<td class="title"><a href="/notice_view?num=${noticeList.notiNum }">${noticeList.notiTit }</a></td>
						<td class="date">${noticeList.notiDate }</td>	
					</tr>
				</c:forEach>
				</tbody>
			</table>
		
		</div>
		<!-- div.noticeListWrap -->
		
	</div>
	<!-- div#wrap -->
	
	<footer id="footer">
		<%@ include file="../footer.jsp" %>
	</footer>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script4.js"></script>
</body>
</html>