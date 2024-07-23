<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>글쓰기</title>
	<link rel="stylesheet" href="/style/style4.css?v">
</head>
<body>
	<div id="writeFormWrap">
		<h1>글쓰기(MyBatis)</h1>
		<hr>
		<table>
			<tbody>
				<tr>
					<td>제목</td>
					<td><input type="text" name="title" form ="formWrite" maxlength="50"></td>
				</tr>
				<tr>
					<td>작성날짜</td>
					<td><input type="text" name="writer" form ="formWrite" maxlength="20"></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea name="content" form="formWrite" cols="50" rows="5"></textarea></td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="submit" form="formWrite">저장</button>
						<button type="button" form="formWrite" onclick="location.href='/boardList'">목록</button>
					</td>
				</tr>
			</tbody>
		</table>
		
		<form action="/boardWrite" id="formWrite"></form>
		
	</div>
	<!-- div#wrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script4.js"></script>
</body>
</html>    