<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%

%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<header id="header">
		<%@ include file="header.jsp"%>
	</header>
	<div id="wrap">
	
	<h1 id="keywordH"><%=request.getParameter("keyword") %></h1>
	<hr>
		<c:forEach var="list" items="${wines}">
			<div id="main" class="dFlex">
				<div id="wine" class="dFlex wineInfo" name="winePage"  data-winekrname="${list.wineKrName}" >
					<div class="img1">
							<img style="width: 110px" src="<c:url value='/wineimg/${list.goodsImg}' />" alt="">
					</div>
					<div class="name">

						<div class="winame">
							<span>${list.wineKrName}</span>
						</div>
						<div class="enWiname">
							<span>${list.wineEgName}</span>
						</div>
						<div class="con">
							<span>${list.nation}</span>
						</div>
						<div class="bdname">
							<span>${list.region}</span>
						</div>
						<div class="price">
							<span>${list.price}</span>
						</div>
					</div>
				</div>
			</div>

		</c:forEach>
		<c:if test="${empty wines}">
			<p class="no-results"> 검색 결과가 없습니다. </p>
		</c:if>
			</div>

		<!-- 		목록끝 -->
		<!-- 페이징 작업 -->
		<div></div>
		<!-- div#wrap -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
		<script src="/script/script.js"></script>
</body>
</html>
