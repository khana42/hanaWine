<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>글목록</title>
<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap">
		<h1>BBS 목록보기(MyBatis)</h1>
		<hr>
		<table>
			<tbody>
				<tr>
					<th style="width: 80px">번호</th>
					<th>제목</th>
					<th style="width: 100px">작성자</th>
					<th style="width: 60px">삭제</th>
				</tr>
				<c:forEach var="boardList" items="${mtdBoardList }">
				<tr>
					<td>${boardList.num }</td>
					<td><a href="/boardView?num=${boardList.num }">${boardList.title }</a></td>
					<td>${boardList.writer }</td>
					<td class="delIcon">&times;
					<input type="hidden" value="${boardList.num }">
					</td>
					
				</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="4" style="text-align: right">
						<button type="button" onclick="location.href='/writeForm'">글쓰기</button>
					</td>
				</tr>

			</tfoot>

		</table>

	</div>
	<!-- div#wrap -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>