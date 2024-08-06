<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hanaWine\자주하는 질문 입력(관리자 페이지)</title>
<link rel="stylesheet" href="/style/style4.css?v">
</head>
<body>

	<header id="header">
		<%@ include file="../header.jsp" %>
	</header>

	<div id="wrap">
		<div id="faqWriteForm">
			<h1>자주하는 질문 게시물 입력(관리자)</h1>
			<hr>
			<form action="/faq_reg">
				<table>
					<tbody>
						<tr>
							<td>질문</td>
							<td><textarea name="faqQues" cols="50" rows="10" required placeholder="200자 이내로 작성" maxlength="200"></textarea></td>
						</tr>
						<tr>
							<td>내용</td>
							<td><textarea name="faqAnsw" cols="50" rows="10" required placeholder="200자 이내로 작성" maxlength="200"></textarea></td>
						</tr>
<<<<<<< HEAD
						<tr class="regBtn">
							<td colspan="2">
								<button type="submit">저장</button>
								<button type="reset">취소</button>
=======
						<tr>
							<td colspan="2">
								<button type="submit">저장</button>
								<button type="button">취소</button>
>>>>>>> d6f4215777fa5b35f108a0cc15b4068abc6ded3b
							</td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
		<!-- div#qnaWriteForm -->
	
	</div>
	<!-- div#wrap -->
	
	<footer id="footer">
		<%@ include file="../footer.jsp" %>
	</footer>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script4.js"></script>
</body>
</html>