<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div>여기는 인클루드로 헤더가 들어갈 것이여</div>

	<div id="communityWrap">
		<div id="searchArea">
			<h1>공지사항</h1>
			<br> <input type="text">
			<button>검색</button>

		</div>
		<br>

		<h1>FAQ</h1>
		<hr>
		<br>
		<div id="comBbsArea">
			<table>
				<tbody>
					<tr style="background: #aaa;">
						<th>번호</th>
						<th>제목</th>
						<th>날짜</th>
					</tr>
					<tr>
						<td>n</td>
						<td>이거슨 제목이다~~</td>
						<td>2024/07/17</td>
					</tr>
					<tr>
						<td>4</td>
						<td>이거슨 제목이다~~</td>
						<td>2024/07/06</td>
					</tr>
					<tr>
						<td>3</td>
						<td>이거슨 제목이다~~</td>
						<td>2024/07/05</td>
					</tr>
					<tr>
						<td>2</td>
						<td>이거슨 제목이다~~</td>
						<td>2024/07/04</td>
					</tr>
					<tr>
						<td>1</td>
						<td>이거슨 제목이다~~</td>
						<td>2024/07/03</td>
					</tr>
				</tbody>
			</table>

		</div>
		<!-- div#comBbsArea -->

		<div id="bbsNum">
			<ul class="dFlex">
				<li>1</li>
				<li>2</li>
				<li>3</li>
				<li>4</li>
				<li>5</li>
			</ul>
		</div>
		<!-- div#bbsNum -->



	</div>
	<!-- div#wrap -->

	<div>여기는 인클루드로 푸터가 들어갈 것이여</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>
