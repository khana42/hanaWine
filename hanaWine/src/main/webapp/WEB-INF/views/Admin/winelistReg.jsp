<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style6.css?v">
	<style>
	table th,td {
	border: 1px solid #aca6c7;
	}
	</style>
</head>
<body>
	<div id="regWrap">

		<a href="adminPage.jsp"><img src="/images/adminlogo.png" alt="관리자페이지로"></a>
		<h1>와인 등록</h1>
		<a href="wineList"><img src="/images/adminlogo.png" alt="와인 목록"></a>
		<form action="insert">
			<table id="Regtable">
				<tbody>
					<tr>
						<th>제품명</th>
						<td><input type="text" name="productNameKR" autofocus required></td>
					</tr>
					<tr>
						<th>제품영문명</th>
						<td><input type="text" name="productNameEN" required></td>
					</tr>
					<tr>
						<th>종류</th>
						<td><input type="text" name="typeOfWine" required></td>
					</tr>
					<tr>
						<th>포도품종</th>
						<td><input type="text" name="grape" required></td>
					</tr>
					<tr>
						<th>브랜드</th>
						<td><input type="text" name="brand"  required></td>
					</tr>
					<tr>
						<th>가격</th>
						<td><input type="text" name="price" pattern="[0-9]+" required></td>
					</tr>
					<tr>
						<th>나라</th>
						<td><input type="text" name="nation" required></td>
					</tr>
					<tr>
						<th>나라상세</th>
						<td><input type="text" name="nationDetail" required></td>
					</tr>
					<tr>
						<th>지역</th>
						<td><input type="text" name="region" required></td>
					</tr>
					<tr>
						<th>상품 이미지</th>
						<td><input type="file" name="goodsImg" required></td>
					</tr>
					<tr>
						<th>상품 상세정보</th>
						<td><input type="file" name="goodsInfo" required></td>
					</tr>
					<tr>
						<th>상품 추천음식</th>
						<td><input type="file" name="recipe" required></td>
					</tr>
					<tr class="regBtn">
						<td colspan="2">
							<button type="submit" id="wineRegBtn">등록</button>
							<button type="reset">초기화</button>
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
	<!-- div#wrap -->
	<script src="/lib/jquery-3.7.1.min.js"></script>
	<script src="/script/script6.js"></script>
</body>
</html>    