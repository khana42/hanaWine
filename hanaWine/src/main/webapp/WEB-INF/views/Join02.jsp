<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet" href="/style/style5.css?v">
</head>
<body>
	<header id="header">
		<%@ include file="header.jsp"%>
	</header>


	<div id="Join2wrap">


		<header id="header">
			<h1>JOIN</h1>

		</header>

		<main id="mainjoin">
			<form id="join_form1" method="post" action="/members/register">
				<div id="basicInfoarea">

					<div class="userInfo dFlex">
						<div class="left"></div>
						<div class="input"></div>
					</div>

					<div class="userInfo dFlex">
						<div class="left">
							<span class="req info1">이름</span>
						</div>
						<div class="input">
							<input type="text"name="memberName" class="infoInput" id="memberName" required
								minlength="2">

						</div>
					</div>
					<!-- div.userInfo -->



					<div class="userInfo dFlex">
						<div class="left">
							<span class="req info1">아이디</span>
						</div>

						<div class="input">
							<input type="text" class="infoInput" id="userid" 
							name="memberId" required
								size="11"> <span class="description">(영문소문자/숫자,
								4~16자)</span>
							<button type="button" id="btnchk">중복확인</button>
							<input type="text" value="N" id="hidChk" hidden="hidden" /> 
							<input type="text" value="N" id="btnHidChk" hidden="hidden" />
							
						</div>
					</div>


					<div class="userInfo dFlex">

						<div class="left">
							<span class="req info1">비밀번호</span>
						</div>

						<div class="input">
							<input type="password" name="memberPw" class="infoInput" id="userpw1" required>
							<span class="description">(영문 대소문자/숫자/특수문자 중 2가지 이상 조합,
								10자~16자)</span>
						</div>


					</div>


					<div class="userInfo dFlex">

						<div class="left">
							<span class="req info1">비밀번호 확인</span>
						</div>
						<div class="input">
							<input type="password" class="infoInput" id="userpw2" required>
						</div>


					</div>

					<div class="userInfo dFlex">

						<div class="left">
							<span class="req info1">이메일</span>
						</div>

						<div class="input">
							<input type="email" class="infoInput" id="useremail" required
							name="memberMail"	size="10" placeholder="직접입력">

							<!-- <span id="golbang">@</span>
                            <input type="address" class="infoInput"> -->
						</div>
						<!-- <select id="emailDomain" onchange="fnemailDomain(this.value); return false;">
                                <option value="">-선택-</option>
                                <option value="naver.com">naver.com</option>
                                <option value="gmail.com">gmail.com</option>
                                <option value="hanmail.net">hanmail.net</option>
                                <option value="hotmail.com">hotmail.com</option>
                                <option value="korea.com">korea.com</option>
                                <option value="nate.com">nate.com</option>
                                <option value="yahoo.com">yahoo.com</option>
                            </select> -->

					</div>



					<div class="userInfo dFlex">


						<div class="left">
							<span class="req info1">주소</span>
						</div>

						<div class="input">
							<input type="text" class="infoInput" id="zonecode" disabled />

							<button class="el_btn el_btn--outline hp_shrink-0" id="postbtn">우편번호
								찾기</button>

							<input type="text" placeholder="" disabled id="useraddress" /> <input
								type="text" class="infoInput" placeholder="상세주소를 입력해주세요."
								id="roadAddressDetail" />
							<button class="el_btn" id="userAdbtn">주소 등록하기</button>
							<input type="hidden" id = "addFull" name ="addFull">
						</div>

					</div>
					<!-- div.userInfo -->



					<div class="userInfo dFlex" id="phoneArea">

						<div class="left">
							<span class="req info1">휴대전화</span>
						</div>
						<div class="input" >
							<select name="memberPhone" id="phonePrefix" required>
								<option>010</option>
								<option>011</option>
								<option>017</option>
								<option>018</option>
								<option>019</option>
							</select> <span>-</span> <input type="text" class="phoneNum" id="usernum1" name="memberPhone1" 
								required> <span>-</span> <input type="text"
								class="phoneNum" id="usernum2" name="memberPhone2" required>
                         <input type="hidden" value="" name="fullNum">


						</div>

						<!--div.userInfo-->
						<!-- 휴대폰 영역 끝 <div class="userInfo" id="phoneArea"> -->


					</div>
					<!--div#basicInfoarea-->




					<!-- 전체동의 -->
					<div id="uAA">

						<div id="agreeAllarea">

							<label id="labelchkAll"> <input type="checkbox"
								id="agreeAll"> <span>전체동의</span> <span>이용약관 및
									개인정보수집 및 이용, 쇼핑정보 수신(선택)에 모두 동의합니다. </span>
							</label>


							<div class="agreeDiv">
								<p class="agreeP">[필수] 이용약관 동의</p>
								<iframe src="약관동의 텍스트/이용약관동의.txt"></iframe>

								<div class="termAgree">
									<label id="reqLable1"> <span class="agreeQSpan">이용약관에
											동의하십니까?</span> <input type="checkbox" class="chkAgree" id="reqChk1">
										<span class="agreeSpan">동의함 (필수)</span>
									</label>
								</div>

							</div>
							<!-- div.agreeDiv 이용약관동의 -->


							<div class="agreeDiv">

								<p class="agreeP">[필수] 개인정보 수집 및 이용 동의</p>
								<iframe src="약관동의 텍스트/개인정보 수집 및 이용동의.txt"></iframe>


								<div class="termAgree">
									<label id="reqLable2"> <span class="agreeQSpan">개인정보
											수집 및 이용에 동의 하십니까</span> <input type="checkbox" class="chkAgree"
										id="reqChk2"> <span class="agreeSpan">동의함 (필수)</span>
									</label>
								</div>
							</div>
							<!-- div.agreeDiv 개인정보동의 -->



							<div class="agreeDiv">

								<p class="agreeP">[선택] 쇼핑정보 수신 동의</p>
								<iframe src="약관동의 텍스트/쇼핑정보 선택동의.txt"></iframe>

								<div class="termAgree">

									<div class="agreeleftArea">
										<label> <span class="agreeQSpan">[선택] SMS 수신을
												동의하십니까?</span> <input type="checkbox" class="chkAgree">
										</label> <label> <span class="agreeQSpan">[선택] 이메일 수신을
												동의하십니까?</span> <input type="checkbox" class="chkAgree">
										</label>
									</div>



								</div>
							</div>
							<!-- div.agreeDiv 쇼핑동의 -->

						</div>
						<!-- div#"agreeAllarea"-->

						<div id="btnArea">
							<button type="button" id="joinbtn">회원 가입</button>
						</div>

					</div>
					</div>
		<!-- main#main -->
		</form>
		</main>

	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script5.js"></script>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


</body>
</html>

