<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>와인 등록</title>
	<link rel="stylesheet" href="/style/style6.css?v">
	<style>
	table th,td {
	border: 1px solid #aca6c7;
	}
	</style>
</head>
<body>
	<div id="regWrap">

		<a href="/adminPage"><img src="/images/adminlogo.png" alt="관리자페이지로"></a>
		<h1>와인 등록</h1>
		<a href="/wineList" id="wineList"><img src="/images/Winelistlogo.png" alt="관리자페이지로"></a>
		  <form action="/winelistReg" method="post" enctype="multipart/form-data">
			<table id="Regtable">
				<tbody>
					<tr>
						<th>제품명</th>
						<td><input type="text" name="wineKrName" autofocus required></td>
					</tr>
					<tr>
						<th>제품영문명</th>
						<td><input type="text" name="wineEgName" required></td>
					</tr>
					<tr>
						<th>종류</th>
						<td>
							<!-- <input type="text" name="typeOfWine" required> -->
							<select name="typeOfWine" id="typeOfWine" required>
								<option value="T01">WhiteWine</option>
								<option value="T02">redWine</option>
								<option value="T03">sparkling</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>나라</th>
						<td>
							<!-- <input type="text" name="nation" required> -->
							<select name="nation" id="nation" required>
								<option value="N01">Italy</option>
								<option value="N02">UnitedStates</option>
								<option value="N03">New Zealand</option>
								<option value="N04">Argentina</option>
								<option value="N05">Australia</option>
								<option value="N06">France</option>
								<option value="N07">Germany</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>지역</th>
						<td><input type="text" name="region" required></td>
					</tr>
					<tr>
						<th>포도품종</th>
						<td>
							<!-- <input type="text" name="grape" required> -->
							<select name="grape" id="grape" required>
								<option value="G01">몬테풀치아노 Montepulciano</option>
								<option value="G02">샤도네이 Chardonnay</option>
								<option value="G03">피노누아 Pinot Noir</option>
								<option value="G04">말벡 Malbec</option>
								<option value="G05">소비뇽블랑 Sauvignon Blanc</option>
								<option value="G06">쉬라즈 Shiraz</option>
								<option value="G07">진판델 Zinfandel</option>
								<option value="G08">네비올로 Nebbiolo</option>
								<option value="G09">산지오베제 Sangiovese</option>
								<option value="G10">코르비나 Corvina</option>
								<option value="G11">모스카토 Moscato</option>
								<option value="G12">리슬링 Riesling</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>음식</th>
						<td>
							<select name="food" id="food" required>
								<option value="Beaf">고기</option>
								<option value="Cheese">치즈</option>
								<option value="Lamb">양</option>
								<option value="Pasta">파스타</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>가격</th>
						<td><input type="text" name="price" pattern="[0-9]+" required></td>
					</tr>
					<tr>
                        <th>도수</th>
                        <td><input type="text" name="alcohol" required></td>
                   </tr>
                   	<tr>
                       <th>당도</th>
                       <td><input type="text" name="sweetness" required></td>
                   </tr>
                  	<tr>
                        <th>산도</th>
                        <td><input type="text" name="acidity" required></td>
                  	</tr>
                    <tr>
                        <th>바디</th>
                        <td><input type="text" name="body" required></td>
                    </tr>
					<tr>
						<th>상품 이미지</th>
						<td><input type="file" name="goodsImg" required></td>
					</tr>
					<tr>
						<th>상품 추천음식</th>
						<td><input type="file" name="recipe" required></td>
					</tr>
					<tr>
						<th>상품 상세정보</th>
						<td><input type="file" name="goodsInfo" required></td>
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