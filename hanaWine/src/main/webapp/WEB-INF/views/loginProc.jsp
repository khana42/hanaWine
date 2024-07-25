<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
//사용자가 적은 id
String uid = request.getParameter("uid");
//사용자가 적은 pw
String upw = request.getParameter("upw");

session.setAttribute("uid", "hana");
String id = (String)session.getAttribute("uid");
out.print("uid : " + uid);
out.print("-------");
out.print("upw : " + upw);
out.print("session uid : " + id);

%>

<script>  
<c:choose>
	
	<c:when test="${uid eq true}">
  // 정상 로그인 실행   
 // 1. 세션 정의 => DAO에서 정의 
  // 2. 메인페이지로 이동   
	alert("<%=uid%>님 로그인 되셨습니다."); 
location.href = "/";   
 	</c:when> 
	
	<c:otherwise> 
 	// 로그인 정보 잘못됨   
	alert('일치하는 정보가 없습니다.');  
 	history.back();   
	</c:otherwise> 
	
 </c:choose> 
  </script>   
