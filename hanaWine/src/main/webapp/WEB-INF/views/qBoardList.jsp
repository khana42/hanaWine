<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style4.css?v">
</head>
<body>
	<div id="wrap">
		<h1>공지사항 & 자주하는 질문</h1>
		<hr>
		<div id="search">
			<ul class="dFlex">
				<li><a href="#">전체</a></li>
				<li>|</li>
				<li><a href="#">공지사항</a></li>
				<li>|</li>
				<li><a href="#">회원가입/정보</a></li>
				<li>|</li>
				<li><a href="#">주문/결제/픽업</a></li>
				<li>|</li>
				<li><a href="#">취소환불/반품</a></li>
				<li>|</li>
				<li><a href="#">기타</a></li>
			</ul>
		</div>
		<!-- div#search -->
		
		<hr>
		<table>
			<tbody>
				<tr>
					<th style="width: 60px">번호</th>
					<th style="width: 120px; text-align: center;">분류</th>
					<th>내용</th>
					<th style="width: 60px">삭제</th>
				</tr>
				
				<c:forEach var="qBoardList" items="${mtdQboardList }">
				<tr>
					<td>${qBoardList.num }</td>
					<td style ="text-align: center;" >${qBoardList.qCategory }</td>
					<td><a href="/qBoardView?num=${qBoardList.num }">${qBoardList.qTitle }</a></td>
					<td class="delIcon">&times; <input type="hidden" value="${qBoardList.num }"></td>
				</tr>
				</c:forEach>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="4" style="text-align: right">
							<button type="button" onclick="location.href='/qWriteForm'">글쓰기</button>
						</td>
					</tr>
				</tfoot>
		</table>
		
	</div>
	<!-- div#wrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script4.js"></script>
</body>
</html>    