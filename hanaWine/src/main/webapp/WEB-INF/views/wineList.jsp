<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>와인 목록 편집</title>
<link rel="stylesheet" href="/style/style6.css?v">
</head>
<body>
	<div id="wrap">
		<div id="adminHeader" class="dFlex">
			<a id="adminPageLogo" href="adminPage"><img src="/images/adminlogo.png" alt="관리자페이지로"></a> 
			<div id="adminLogoArea">
				<a id="adminLogoImg" href="/"> 
					<img id="adminLogo" src="/img/logo.png" alt="메인으로"> 
				</a>
				<span>와인 목록 보기</span>
			</div>
		</div>
		
		<table id="Listtable">
			<tbody id="prnArea">
				<tr id="colArea">
					<th>제품명</th>
					<th>제품영문명</th>
					<th>종류</th>
					<th>나라</th>
					<th>지역</th>
					<th>가격</th>
					<th>나라</th>
					<th>도수</th>
					<th>당도</th>
					<th>산도</th>
					<th>바디</th>
					<th>이미지1</th>

				</tr>

				<tr class="rowArea dFlex">
					<td>조닌 벤티테레 몬테풀치아노 다부르쪼</td>
					<td>Ventiterre Montepulciano d Abruzzo</td>
					<td>T02</td>
					<td>N01</td>
					<td>아르부쪼 Abruzzo</td>
					<td>50000.0</td>
					<td>13.0</td>
					<td>1.0</td>
					<td>1.0</td>
					<td>1.0</td>
					<td>goodsImgTest.jpg</td>

					<td class="delIcon">&times; <input type="hidden"
						value=adminWine.num}>
					</td>
				</tr>

			</tbody>
		</table>

	</div>
	<script src="/lib/jquery-3.7.1.min.js"></script>
	<script src="/script/script6.js"></script>
</body>
</html>