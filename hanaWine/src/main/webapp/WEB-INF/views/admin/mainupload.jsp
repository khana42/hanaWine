<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/adminStyle.css?v">
</head>
<body>
<c:choose>
        <c:when test="${not empty sessionScope.admin_id}">
<header id="header">
		<%@ include file="adminHeader.jsp"%>
	</header>
	<div id="wrap">
		
	</div>
	
</c:when>
 <c:otherwise>
            <%-- 로그인되지 않은 사용자를 위한 메시지 및 로그인 페이지로 리다이렉트 --%>
            <h2>로그인 해주세요!</h2>
            <a href="/adminLogin">로그인 페이지로 이동</a>
        </c:otherwise>
    </c:choose>
	<!-- div#wrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/adminScript.js"></script>
</body>
</html>    