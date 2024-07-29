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
	<div id="quesWrap">
		<h1>질문하기</h1>
		<hr>
		<table>
			<tbody>
				<tr>
					<td>분류</td>
					<td class="ques"><select name="qCategory" id="qCategory"
						form="qFormWrite">
							<option value="전체">전체</option>
							<option value="회원가입/정보">회원가입/정보</option>
							<option value="주문/결제/픽업">주문/결제/픽업</option>
							<option value="취소환불/반품">취소환불/반품</option>
							<option value="기타">기타</option>
					</select></td>
				</tr>
				<tr>
					<td>제목</td>
					<td class="ques"><input type="text" name="qTitle"
						form="qFormWrite" maxlength="50" style="width: 300px" required></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">내용</td>
					<td><textarea name="qContent" form="qFormWrite" cols="50"
							rows="5" required></textarea></td>
				</tr>
				<tr>
					<td colspan="2">
						<button id="chkBtn" form="qFormWrite">저장</button>
						<button id="cancelBtn" type="button" form="qFormWrite">취소</button>
					</td>
				</tr>
			</tbody>
		</table>

		<form action="/qBoardWrite" id="qFormWrite"></form>

	</div>
	<!-- div#wrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script4.js"></script>
</body>
</html>    