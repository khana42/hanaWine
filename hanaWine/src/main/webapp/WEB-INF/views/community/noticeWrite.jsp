<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hanaWine\공지사항 입력(관리자 페이지)</title>
<link rel="stylesheet" href="/style/style4.css?v">
</head>
<body>

		<header id="header">
		<%@ include file="../adminHeader.jsp" %>
	</header>
	<div id="wrap">
		<div id="noticeWriteForm">
			<h1>공지사항 게시물 입력(관리자)</h1>
			<hr>
			<form action="/notice_reg">
				<table>
					<tbody>
						<tr>
							<td>날짜</td>
							<td><input type="date" name="notiDate" required></td>
						</tr>
						<tr>
							<td>제목</td>
							<td><textarea name="notiTit" cols="50" rows="10" required placeholder="200자 이내로 작성" maxlength="200"></textarea></td>
						</tr>
						<tr>
							<td>내용</td>
							<td><textarea name="notiCon" cols="50" rows="10" required placeholder="200자 이내로 작성" maxlength="200"></textarea></td>
						</tr>
						<tr>
							<td colspan="2">
								<button type="submit">저장</button>
								<button type="button">취소</button>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
		<!-- div#noticeWriteForm -->
	
	</div>
	<!-- div#wrap -->
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script4.js"></script>
</body>
</html>