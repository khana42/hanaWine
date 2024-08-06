<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet" href="/style/style4.css?v">

<style>
.stylessss{
border-bottom: 1px solid #888;
border-top: 1px solid #888;
font-size: 28px;
font-weight: bold;
padding: 10px 0 0 10px;


}
</style>
</head>
<body>
	<div id="wrap">
		<div class="faqListWrap">
			<div class="faqContent">
				<ul class="faqList">
					<div class="stylessss">
						<li><a href="/faq_list"><span>자주하는 질문</span></a></li>

					</div>

					<c:forEach var="faqList" items="${mtdFaqList }">
						<li><span>${faqList.faqQues }</span>
							<div class="a">
								<span>${faqList.faqAnsw}</span>
							</div></li>

					</c:forEach>

				</ul>
			</div>
			<!-- div.faqContent -->
		</div>


	</div>
	<!-- div#wrap -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script4.js"></script>
</body>
</html>
