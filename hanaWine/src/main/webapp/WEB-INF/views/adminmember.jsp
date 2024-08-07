 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
      <div id="wineList" class="dFlex">
            <a id="adminLogoImg" href="/"> <img id="adminLogo"
               src="/img/logo.png" alt="메인으로">
            </a> 
            <h1>회원목록</h1>
         </div>
	
		<table id="Listtable">
			<tbody id="prnArea">
				<tr id="colarea">
						<th>이름</th>
						<th>아이디</th>
						<th>비밀번호</th>
						<th>이메일</th>
						<th>주소</th>
						<th>번호</th>
					</tr>
					<c:forEach var="user" items="${adminmemlist}">
					<tr class ="Rowarea dFlex">
						<td>${user.memberId}</td>
						<td>${user.memberPw}</td>
						<td>${user.memberName}</td>
						<td>${user.memberMail}</td>
						<td>${user.memberAddr1}</td>
						<th>${user.memberPhone}</th>
						<td class="Delicon">
							&times;
							<input type ="hidden" value=${Community.num}>
						</td>
					</tr>
					</c:forEach> 
				</tbody>
			</table>
</body>
</html> 