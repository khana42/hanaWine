<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원목록</h1>
		<table id="Listtable">
			<tbody id="prnArea">
				<tr id="Colarea">
						<th>이름</th>
						<th>아이디</th>
						<th>비밀번호</th>
						<th>이메일</th>
						<th>주소</th>
						<th>번호</th>
					</tr>
					<c:forEach var="Join_MEMBER" items="${mtdMemList}">
					<tr class ="Rowarea dFlex">
						<td>${Join_MEMBER.memberName}</td>
						<td>${Join_MEMBER.memberId}</td>
						<td>${Join_MEMBER.memberPw}</td>
						<td>${Join_MEMBER.memberMail}</td>
						<td>${Join_MEMBER.memberAddr1}</td>
						<th>${Join_MEMBER.memberPhone}</th>
						<td class="Delicon">
							&times;
							<input type ="hidden" value=${Community.num}>
						</td>
					</tr>
<!-- 					</c:forEach> -->
				</tbody>
			</table>
</body>
</html> --%>