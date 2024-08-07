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
<header id="header">
		<%@ include file="adminHeader.jsp" %>
	</header>
	<div id="wrap">
		
		  <div id="adminLogoArea" class="dFlex">

         <div id="wineList" class="dFlex">
         
            <span>와인 목록 보기</span>
         </div>

         <div id="wineListCode" class="dFlex">
            <ul>
                <span>종류</span>
               <li>T01 : WhiteWine</li>
               <li>T02 : redWine</li>
               <li>T03 : sparkling</li>
            </ul>
            <ul>
               <span>나라</span>
               <li>N01 : Italy</li>
               <li>N02 : UnitedStates</li>
               <li>N03 : NewZealand</li>
               <li>N04 : Argentina</li>
               <li>N05 : Australia</li>
               <li>N06 : France</li>
               <li>N07 : Germany</li>
            </ul>
            <ul>
               <span>종류</span>
               <li>G1 : 몬테풀치아노 Montepulciano</li>
               <li>G2 : 샤도네이 Chardonnay</li>
               <li>G3 : 피노누아 Pinot Noir</li>
               <li>G4 : 말벡 Malbec</li>
               <li>G5 : 소비뇽블랑 Sauvignon Blanc</li>
               <li>G6 : 쉬라즈 Shiraz</li>
               <li>G7 : 진판델 Zinfandel</li>
               <li>G8 : 네비올로 Nebbiolo</li>
               <li>G9 : 산지오베제 Sangiovese</li>
               <li>G10 : 코르비나 Corvina</li>
               <li>G11 : 모스카토 Moscato</li>
               <li>G12 : 리슬링 Riesling</li>
            </ul>
         </div>
      </div>


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
	<script src="/lib/jquery-3.7.1.min.js"></script>
	<script src="/script/script6.js"></script>
</body>
</html>