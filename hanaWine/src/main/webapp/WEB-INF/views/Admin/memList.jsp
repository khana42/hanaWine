<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
<link rel="stylesheet" href="/style/style6.css?v">
</head>
<body>
	<a href="/adminPage"><img src="/images/adminlogo.png" alt="관리자페이지로"></a>
	<h1>회원목록</h1>
	<br>
		<table id="listTable">
			<tbody id="prnArea">
				<tr id="Colarea">
						<th>이름</th>
						<th>아이디</th>
						<th>비밀번호</th>
						<th>이메일</th>
						<th>주소</th>
						<th>번호</th>
						<th>삭제</th>
					</tr>
					<c:forEach var="Join_MEMBER" items="${memBoardList}">
					<tr class ="Rowarea dFlex">
						<td>${Join_MEMBER.memberName}</td>
						<td>${Join_MEMBER.memberId}</td>
						<td>${Join_MEMBER.memberPw}</td>
						<td>${Join_MEMBER.memberMail}</td>
						<td>${Join_MEMBER.memberAddr1}</td>
						<td>${Join_MEMBER.memberPhone}</td>
						<td class="Delicon">
							&times;
							<input type ="hidden" value=${Join_MEMBER.memberPhone}>
						</td>
					</tr>
					</c:forEach> 
				</tbody>
			</table>
		<script src="/lib/jquery-3.7.1.min.js"></script>
   		<script src="/script/script6.js"></script>
</body>
</html>