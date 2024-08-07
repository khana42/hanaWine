 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div#wrap {
    width: 95%;

    border-radius: 6px;
    padding: 30px 6px;
    margin: 20px auto;
}

#wrap #memList{
    justify-content: center;
    margin-bottom: 20px;
}

#wrap #memList span{
   font-weight: bold;
   font-size: 35px;
   margin-top: 55px;
}

hr {
   margin: 10px 0;
}
   
table {
   width: 97%;
/*    border: 1px solid #aaa; */
   margin: 10px auto;
}

#prnArea>tr#Colarea{
   background-color: rgba(170, 170, 170, 0.1);
   display : Flex;
}

#prnArea>tr#Colarea>th {
   font-weight: bold;
   /* border: 1px solid #000; */
}

#prnArea>th td {
   text-align: center;
   padding: 7px 3px;
}


#prnArea>tr#Colarea>th {
   text-align: center;
}
#prnArea>tr#Colarea>th:nth-child(1) {
   width: 150px;
}

#prnArea>#Colarea>th:nth-child(2) {
   width: 180px;
}
#prnArea>#Colarea>th:nth-child(3) {
   width: 250px;
}
#prnArea>#Colarea>th:nth-child(4) {   
   width: 300px;
}
#prnArea>#Colarea>th:nth-child(5) {
   width: 450px;
}
#prnArea>#Colarea>th:nth-child(6) {
   width: 200px;
}
#prnArea>#Colarea>th:nth-child(7) {
   width: 90px;
}

#prnArea>div.rowArea {
   width: 55px;
}

#prnArea>div.Rowarea>td {
   font-weight: bold;
}
#prnArea>tr.Rowarea>td {
   text-align: center;
}
#prnArea>tr.Rowarea>td:nth-child(1) {
   width: 150px;
}
#prnArea>tr.Rowarea>td:nth-child(2) {
   width: 180px;
}
#prnArea>tr.Rowarea>td:nth-child(3) {
   width: 250px;
}
#prnArea>tr.Rowarea>td:nth-child(4) {
   width: 300px;
}
#prnArea>tr.Rowarea>td:nth-child(5) {
   width: 450px;
}
#prnArea>tr.Rowarea>td:nth-child(6) {
   width: 200px;
}
#prnArea>tr.Rowarea>td:nth-child(7) {
   margin-left: 20px;

   width: 55px;
}


td.Delicon:hover {
   color: #e6f9ff;
   font-weight: bold;
   cursor: pointer;
}

#prnArea>tr.Rowarea:hover {
   background-color: #aca6c7;
}


table {
   width: 850px;
   border-collapse: collapse;
}
/* th {
   width: 123px;
   text-align: center;
}  */

table th, td {
   padding: 10px;
}
table th {
   text-align: right;
}

table td>input {
   width: 300px;
   font-size: 18px;
   padding: 4px 8px;
}

table tr:nth-child(1) td>input {
   width: 700px;
}

table tr:nth-child(2) td>input {
   width: 700px;
}

table td button {
   width: 80px;
   font-size: 17px;
   font-weight: bold;
   padding: 3px 10px;
   cursor: pointer;
}
tr.regBtn button {
   width: 410px;
}

/* table tr:nth-child(5) td {
   text-align: center;
} */


div#wrap.insertWrap {
   text-align: center;
}

button#btnBack {
   font-size: 18px;
   padding: 3px 15px;
   cursor: pointer;
}

</style>
</head>
<body>
	<header id="header">
		<%@ include file="adminHeader.jsp" %>
	</header>
      <div id="wineList" class="dFlex">
         
            <<h1>회원목록</h1>
         </div>
	
		<table id="Listtable">
			<tbody id="prnArea">
				<tr id="Colarea">
						
						<th>아이디</th>
						<th>비밀번호</th>
						<th>이름</th>
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
						<td>${user.memberPhone}</td>
						
					</tr>
					</c:forEach> 
				</tbody>
			</table>
</body>
</html> 