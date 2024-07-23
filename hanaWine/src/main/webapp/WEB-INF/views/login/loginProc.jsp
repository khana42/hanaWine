<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<% 
 String uid = request.getParameter("uid");
 String upw = request.getParameter("upw");
 boolean chk = dao.mtdLogin(uid, upw, session); //어케 해야할지 생각해보기
%> 

<script>
<% if (chk) {  %>     --%> --%>
<!-- 정상 로그인 실행 -->
<!-- 1. 세션 정의 => DAO에서 정의 -->
<!-- 2. 메인페이지로 이동 -->
alert("<%=uid%> 님 로그인 되셨습니다.");
location.href="/index.jsp"; 
  
  
<% } else { %>
<!-- 로그인 정보 잘못됨 -->
alert('일치하는 정보가 없습니다.'); 
history.back(); 
<% } %> 
</script>   