<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의</title>
<link rel="stylesheet" href="/style/style4.css?v">
</head>
<body>

	<header id="header">
		<%@ include file="../header.jsp" %>
	</header>

	<div id="wrap">
		<div class="commWrap">
			<div class="commTit">
				<h1>1:1 문의</h1>
			</div>
			<!-- div.commTit -->
			<div class="commGnbArea">
				<ul class="commGnb dFlex">
					<li><a href="/notice_list"><span>공지 사항</span></a></li>
					<li><a href="/faq_list"><span>자주하는 질문</span></a></li>
					<li><a href="/qna_page"><span>1:1 문의</span></a></li>
				</ul>
			</div>
			<!-- div.commGnbArea -->
		</div>
		<!-- div.commWrap -->

		<div id="qnaWrap">
			<form action="qna_reg">
				<div class="qnaTitWrap">
					<h3>하나와인 이용 중에 생긴</h3>
					<h3>불편한 점이나 문의사항을 보내주세요.</h3>
				</div>
				<!-- div.qnaTitWrap -->
	
				<div class="qnaMain">
					<div class="qnaArticleWrap">
						<div class="qnaArticle">	
							<label>
								<p>이름</p> 
								<input type="text" name="qnaName" placeholder="이름을 입력해주세요." required maxlength="10" autofocus>
							</label>
						</div>
						<div class="qnaArticle"> 
							<label>
								<p>연락처</p> 
								<input type="text" name="qnaPhone" placeholder="연락처를 입력해주세요." required maxlength="14">
							</label>
						</div>
						<div class="qnaArticle"> 
							<label>
								<p>구분</p> 
								<select name="qnaCategory">
									<option value="상품문의">상품문의</option>
									<option value="주문/결제관련">주문/결제관련</option>
									<option value="반품/환불관련">반품/환불관련</option>
									<option value="회원/정보관리">회원/정보관리</option>
									<option value="기타">기타</option>
								</select>
							</label> 
						</div>	
						<div class="qnaArticle">	
							<label>
								<p>제목</p> <input type="text" name="qnaTit" placeholder="제목을 입력해주세요." required maxlength="50">
							</label> 
						</div>	
						<div class="qnaArticle">	
							<label>
								<p>문의내용</p> <textarea name="qnaContent" cols="30" rows="10" placeholder="문의내용을 입력해주세요."></textarea>
							</label>
						</div>
					</div>
					<!-- div.qnaMain -->
				</div>
				<!-- div.qnaArticleWrap -->
				
				<div class="commBtnArea">
					<button id="qnaBtn" type="submit">문의하기</button>
				</div>
			</form>
		</div>
		<!-- div#qnaWrap -->

	</div>
	<!-- div#wrap -->
	
	<footer id="footer">
		<%@ include file="../footer.jsp" %>
	</footer>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script4.js"></script>
</body>
</html>