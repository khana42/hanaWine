<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
String id = request.getParameter("uid");
boolean isLoggedIn = (id != null);
%>
<c:set var="sUid" scope="request">값</c:set>

<script>  
	
	<% if (여기에 sUid != null 인 값) {  %> 
 	 // 정상 로그인 실행   
	 // 1. 세션 정의 => DAO에서 정의 
 	 // 2. 메인페이지로 이동   
	
 	 alert("<%=id%>님 로그인 되셨습니다.");
	// 로그인시 팝업창 닫힘 
	function closePopupAndRedirect() {
 		// 팝업창 닫기
 		window.close();
		// 부모 창으로 이동
    	window.opener.location.href = '/'; // 메인 페이지 URL로 변경
		 }
	<% } else { %>
	// 로그인 정보 잘못됨   
	alert('일치하는 정보가 없습니다.');  
	history.back();   

	<% } %>
</script>
