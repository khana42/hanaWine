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
<header id="header">
		<%@ include file="adminHeader.jsp"%>
	</header>
	<div id="wrap">
		<div id="wineList">
				<h1>와인목록</h1>

				<table id="Listtable">
					<tbody id="prnArea">
						<tr id="colArea">
							<th>순번</th>
							<th>제품명</th>
							<th>제품영문명</th>
							<th>종류</th>
							<th>나라</th>
							<th>지역</th>
							<th>포도</th>
							<th>가격</th>

							<th>삭제</th>

						</tr>
						<c:forEach var="adminWine" items="${aminWineList}">
							<tr class="rowArea dFlex">
								<td>${adminWine.num}</td>
								<td>${adminWine.wineKrName}</td>
								<td>${adminWine.wineEgName}</td>
								<td>${adminWine.typeOfWine}</td>
								<td>${adminWine.nation}</td>
								<td>${adminWine.region}</td>
								<td>${adminWine.grape}</td>
								<td>${adminWine.price}</td>


								<td class="delIcon">&times; <input type="hidden"
									value="${adminWine.num}">
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
	</div>
	<!-- div#wrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    