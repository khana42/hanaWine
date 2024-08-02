<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

		<h1>${wineName}</h1>
		<div class="slide_wrapper">
			<ul class="slides dFlex">
				<li><img src="http://placehold.it/200x200" alt=""></li>
				<li><img src="http://placehold.it/200x200" alt=""></li>
				<li><img src="http://placehold.it/200x200" alt=""></li>
				<li><img src="http://placehold.it/200x200" alt=""></li>
				<li><img src="http://placehold.it/200x200" alt=""></li>
				<li><img src="http://placehold.it/200x200" alt=""></li>
				<li><img src="http://placehold.it/200x200" alt=""></li>
				<li><img src="http://placehold.it/200x200" alt=""></li>
				<li><img src="http://placehold.it/200x200" alt=""></li>
				<li><img src="http://placehold.it/200x200" alt=""></li>
			</ul>
			<p class="controls">
				<span class="prev">&lt;</span> <span class="next">&gt;</span>
			</p>
		</div>

		<div class="ha"></div>
		<div id="select" class="dFlex">
			<div id="priceSel">
				<input type="range" name="selecPrice" id="selecPrice">
				<button>select</button>
			</div>
			<div id="selecOp">
				<ul id="select0" class="dFlex">
					<li class="select1">인기순</li>
					<li>|</li>
					<li class="select1">가격 높은순</li>
					<li>|</li>
					<li class="select1">가격 낮은순</li>
				</ul>
			</div>
		</div>
		<!--       목록 -->
		<c:forEach var="list" items="${daoWineList}">
			<div id="main" class="dFlex">
				<div id="wine" class="dFlex" class="wine" class="winePage">
					<div class="img1">
						<img src="http://placehold.it/200x300" alt="">
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
						<div class="region">
							<span>${list.region}</span>
						</div>
						<div class="price">
							<span>${list.price}</span>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
		<!-- 		목록끝 -->
		<c:if test="${pagination.curRange ne 1 }">
			<a href="#" onClick="fn_paging(1)">[처음]</a>
		</c:if>
		<c:if test="${pagination.curPage ne 1}">
			<a href="#" onClick="fn_paging('${pagination.prevPage }')">[이전]</a>
		</c:if>
		<c:forEach var="pageNum" begin="${pagination.startPage }"
			end="${pagination.endPage }">
			<c:choose>
				<c:when test="${pageNum eq  pagination.curPage}">
					<span style="font-weight: bold;"><a href="#"
						onClick="fn_paging('${pageNum }')">${pageNum }</a></span>
				</c:when>
				<c:otherwise>
					<a href="#" onClick="fn_paging('${pageNum }')">${pageNum }</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if
			test="${pagination.curPage ne pagination.pageCnt && pagination.pageCnt > 0}">
			<a href="#" onClick="fn_paging('${pagination.nextPage }')">[다음]</a>
		</c:if>
		<c:if
			test="${pagination.curRange ne pagination.rangeCnt && pagination.rangeCnt > 0}">
			<a href="#" onClick="fn_paging('${pagination.pageCnt }')">[끝]</a>
		</c:if>

		<div>총 게시글 수 : ${pagination.listCnt } / 총 페이지 수 :
			${pagination.pageCnt } / 현재 페이지 : ${pagination.curPage } / 현재 블럭 :
			${pagination.curRange } / 총 블럭 수 : ${pagination.rangeCnt }</div>
	</div>


	<!-- div#wrap -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>

</body>
</html>