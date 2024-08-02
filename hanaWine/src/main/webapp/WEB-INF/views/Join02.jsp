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
	<div id="Join2wrap">
		<header id="header">
			<h1>회원 가입</h1>
		</header>
		<hr>
		<main id="mainjoin">
			<form id="join_form1" method="post" action="/members/register">
				<div id="basicInfoarea">
					<div class="userInfo">
						<label id="username"> <span class="req info1">이름</span> <input
							type="text" class="infoInput" id="memberName" required
							name="memberName" minlength="2">
						</label>
					</div>

					<div id="msg-userid"></div>

					<div class="userInfo">
						<label> <span class="req info1">아이디</span> <input
							type="text" name="memberId" class="infoInput" id="userid"
							placeholder="(영문소문자/숫자,4~16자)" required size="11">
						</label>
						<button type="button" id="btnchk">중복확인</button>
					</div>

					<div class="userInfo">
						<label> <span class="req info1">비밀번호</span> <input
							type="password" class="infoInput" id="userpw1" name="memberPw"
							required>
						</label>
					</div>

					<div class="userInfo">
						<label> <span class="req info1">비밀번호 확인</span> <input
							type="password" class="infoInput" id="userpw2" required>
						</label>
					</div>


					<div class="userInfo">
						<label> <span class="req info1">이메일</span> <input
							type="email" name="memberMail" class="infoInput" id="useremail"
							required placeholder="이메일 주소를 입력해 주세요.">
						</label>
					</div>

					<div class="userInfo">

						<label> <span class="req info1">주소</span> 
							<input type="text" class="infoInput" id="zonecode" placeholder="" disabled  />								
							<button class="el_btn el_btn--outline hp_shrink-0"
								id="postbtn">우편번호 찾기</button>				
				
				
						
						<input type="text" class="infoInput" placeholder="" disabled id="useraddress"/>
						<input type="text" class="el_input"
							placeholder="상세주소를 입력해주세요." id="roadAddressDetail" />
						
						<button class="el_btn" id="userAdbtn">주소 등록하기</button>
						</label>
					</div>

					<div class="userInfo" id="phoneArea">
						<label> <span class="req info1" id="phone">휴대전화</span> <select
							name="memberPhone" id="phonePrefix" required>
								<option value="">-선택-</option>
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
						</select> <span>-</span> <input type="text" class="phoneNum" id="usernum1"
							required name="memberPhone1" maxlength="4" placeholder="4자리">
							<span>-</span> <input type="text" class="phoneNum" id="usernum2"
							required name="memberPhone2" maxlength="4" placeholder="4자리">
						</label>
						<button type="button" id="codenum">인증번호받기</button>
					</div>
				</div>
				<div class="userInfo">
					<label> <span class="req info1">인증번호입력</span> <input
						type="text" class="infoInput" id="usercode">
					</label>
				</div>



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
					</div>

					<div id="btnArea">
						<button type="button" id="joinbtn">회원 가입</button>
					</div>
				</div>

			</form>
		</main>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script5.js"></script>
</body>
</html>

