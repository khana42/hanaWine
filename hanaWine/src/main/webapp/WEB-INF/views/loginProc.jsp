<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
String id = request.getParameter("uid");
%>

<c:if test="${not empty sUid}">
    <!-- sUid가 null이 아닌 경우 -->
    <script>
        // 정상 로그인 실행   
        // 1. 세션 정의 => DAO에서 정의 
        // 2. 메인페이지로 이동   
        alert("${sUid}님 로그인 되셨습니다.");
        
        // 로그인시 팝업창 닫힘 
        function closePopup() {
            // 팝업창 닫기
            window.self.close();
            // 부모 창으로 이동
            opener.location.reload("/");  // 메인 페이지 URL로 변경
        }
    </script>
</c:if>
<c:if test="${empty sUid}">
    <!-- sUid가 null인 경우 -->
    <script>
        // 로그인 정보 잘못됨   
        alert('일치하는 정보가 없습니다.');  
        history.back();   
    </script>
</c:if>

