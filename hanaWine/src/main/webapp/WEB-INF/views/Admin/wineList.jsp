<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>와인 목록 편집</title>
<link rel="stylesheet" href="/style/style6.css?v">
</head>
<body>
	<div id="wrap">
		<a href="adminPage"><img src="/images/adminlogo.png" alt="관리자페이지로"></a>
		<h1>와인 목록 보기</h1>
		<a href="winelistReg"><img src="/images/adminlogo.png" alt="관리자페이지로"></a>
 		<table id="Listtable">
			<tbody id="prnArea">
				<tr id="colArea">
					<th>제품명</th>
					<th>제품영문명</th>
					<th>종류</th>
					<th>포도품종</th>
					<th>브랜드</th>
					<th>가격</th>
					<th>나라</th>
					<th>나라상세</th>
					<th>지역</th>
					<th>이미지</th>
					<th>상세정보</th>
					<th>추천음식</th>	
					<th>삭제</th>
				</tr>
				<c:forEach var="boardList" items="${mtdBoardList}">
				<tr class ="rowArea dFlex">
					<td>${boardList.productNameKR}</td>
					<td>${boardList.productNameEN}</td>
					<td>${boardList.typeOfWine}</td>
					<td>${boardList.grape}</td>
					<td>${boardList.brand}</td>
					<td>${boardList.price}</td>
					<td>${boardList.nation}</td>
					<td>${boardList.nationDetail}</td>
					<td>${boardList.region}</td>
					<td>${boardList.goodsImg}</td>
					<td>${boardList.goodsInfo}</td>
					<td>${boardList.recipe}</td>
					<td class="delIcon">
						&times;
						<input type ="hidden" value=${boardList.num}>
					</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
<%-- 	<div id="prnArea">
		
			<div id="colArea">
				<span>번호</span>
				<span>제품명</span>
				<span>제품영문명</span>
				<span>종류</span>
				<span>포도품종</span>
				<span>브랜드</span>
				<span>가격</span>
				<span>나라</span>
				<span>나라상세</span>
				<span>지역</span>
				<span>이미지</span>
				<span>상세정보</span>
				<span>추천음식</span>
			</div>
			<c:forEach var="boardList" items="${mtdBoardList}">
			<div class="rowArea dFlex">
				<span>${boardList.num}</span>
				<span>${boardList.productNameKR}</span>
				<span>${boardList.productNameEN}</span>
				<span>${boardList.typeOfWine}</span>
				<span>${boardList.grape}</span>
				<span>${boardList.brand}</span>
				<span>${boardList.price}</span>
				<span>${boardList.nation}</span>
				<span>${boardList.nationDetail}</span>
				<span>${boardList.region}</span>
				<span>${boardList.goodsImg}</span>
				<span>${boardList.goodsInfo}</span>
				<span>${boardList.recipe}</span>
				<span class="delIcon">&times;</span>
				<input type="hidden" value="${boardList.num}">
			</div>
			</c:forEach>
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
		</div> --%>
	</div>
	<script src="/lib/jquery-3.7.1.min.js"></script>
	<script src="/script/script6.js"></script>
</body>
</html>