<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style6.css?v">
</head>

<body>

	<div id="Revisewrap">
		<a href="/Admin/adminPage"><img src="/images/adminlogo.png" alt="관리자페이지로"></a>
		<h1>커뮤니티 수정</h1>
		
			<table id="Listtable">
				<tbody id="prnArea">
					<tr id="Colarea">
						<th>번호</th>
						<th>제목</th>
						<th>날짜</th>
						<th>삭제</th>
					</tr>
					<c:forEach var="Community" items="${mtdMemList}">
					<tr class ="Rowarea dFlex">
						<td>${Community.num}</td>
						<td>${Community.title}</td>
						<td>${Community.date}</td>
						<td class="Delicon">
							&times;
							<input type ="hidden" value=${Community.num}>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			<div id="modifyIns" class="dFlex">
				<label>
					<span>수정할 번호</span>
					<input type="text" name="modNum" maxlength="4"
					id="modNum" form="updateForm" required>
				</label>
				<label>
					<span>수정할 제목</span>
					<input type="text" name="modTitle" maxlength="20"
					id="modTitle" form="updateForm" required>
				</label>
			</div>
				
			<div id="modifyArea">
				<button form="updateForm">수정하기</button>
			</div>
				
			<form id="updateForm" action="updateProc.jsp"></form>
		</div>
	<!-- div#wrap -->
	<script src="/lib/jquery-3.7.1.min.js"></script>
	<script src="/script/script6.js"></script>
</body>
</html>    