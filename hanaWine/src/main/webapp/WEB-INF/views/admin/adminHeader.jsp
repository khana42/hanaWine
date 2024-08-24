<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String admin_id = (String) session.getAttribute("admin_id");
boolean isLoggedIn = (admin_id != null);
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet" href="/style/adminStyle.css?v">

</head>

<body>
	<div id="AdminWrap">
		<header class="dFlex">
			<div id="logo">
				<a href="/admin"> <img src="/img/logo.png" alt="로고 이미지">
				</a>
			</div>
		</header>
		<div id=adminLoginArea>
			<ul class="dFlex">
				<c:if test="${empty admin_id}">
					<li><a href="adminLogin">관리자 로그인</a></li>
					<li>|</li>
					<li><a href="adminjoin">관리자 회원가입</a></li>
				</c:if>
				<c:if test="${not empty admin_id}">
					<li id="adminlogout"><%=admin_id%>님 로그아웃</li>
				</c:if>
			</ul>
		</div>
		<div id="adminGnb">
			<ul class="dFlex">
				<c:if test="${isLoggedIn}">
					<li><a href="memList" class="menu-link">회원 목록</a>  </li>
					<li>|</li>
					<li><a href="mainupload" class="menu-link">메인 페이지 업로드</a></li>
					<li>|</li>
					<li><a href="upload" class="menu-link">상품 업로드</a></li>
					<li>|</li>
					<li><a href="adminWineList" class="menu-link">상품 목록</a></li>
					<li>|</li>
					<li class="menu-link">커뮤니티</li>
				</c:if>
			<c:if test="${!isLoggedIn}">
				<li>로그인 후 이용 가능합니다.</li>
			</c:if>
			</ul>
		</div>
	</div>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/adminScript.js"></script>

</body>
</html>
