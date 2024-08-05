$(function() {
	const $joinForm = $("#join_form1"); // 폼 요소 선택

	$("#joinbtn").click(function(event) {
		event.preventDefault(); // 기본 폼 제출 방지

		const phone1 = $("#usernum1").val();
		const phone2 = $("#usernum2").val();
		const phonePrefix = $("#phonePrefix").val(); // 선택된 전화번호 앞자리
		const phoneFull = `${phonePrefix}-${phone1}-${phone2}`;
		$("input[name='fullNum']").val(phoneFull); // memberPhone에 저장

		const regExpUid = /[^a-z|0-9|A-Z|]/g;
		const uidVal = $("#userid").val();
		const uidLen = uidVal.length;

		const regExppass = /[^a-z|0-9|A-Z|_@]/g;
		const pwVal = $("#userpw1").val();
		const pwLen = pwVal.length;

		const pw2Val = $("#userpw2").val();
        var hidChk = $("#hidChk").val();
        var btnHidChk = $("#btnHidChk").val();
        
		// ID 유효성 검사
		if (regExpUid.test(uidVal) || uidLen < 4 || uidLen > 16) {
			alert("ID는 4~16 사이의 영어 대소문자와 숫자만 가능합니다.");
			return; // 유효성 검사 실패 시 함수 종료
		}
		if(btnHidChk == 'N'){
			alert("ID 중복체크 바랍니다.");
			return;	
		}
		
		if(hidChk == 'N'){
			alert("존재하는 ID 입니다.");
			return;	
		}
		

		// 비밀번호 유효성 검사
		if (regExppass.test(pwVal) || pwLen < 6 || pwLen > 20) {
			alert("비밀번호는 6~20 사이의 글자, 영어 대소문자, 숫자, _@ 만 가능합니다.");
			return; // 유효성 검사 실패 시 함수 종료
		}

		// 비밀번호 확인
		if (pw2Val === "") {
			alert("비밀번호를 확인해 주세요.");
			return; // 유효성 검사 실패 시 함수 종료
		} else if (pwVal !== pw2Val) {
			alert('비밀번호가 일치하지 않습니다.');
			return; // 유효성 검사 실패 시 함수 종료
		}

          const emailVal = $("#useremail").val();  
		 const regExpEmail = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
		  if (!regExpEmail.test(emailVal)) {
		    alert("유효한 이메일 주소를 입력해 주세요.");
		      return; // 유효성 검사 실패 시 함수 종료
		  }
		// 이름 유효성 검사
		const nameVal = $("#memberName").val();
		if (nameVal.length < 2) {
			alert("이름은 2자 이상이어야 합니다.");
			return; // 유효성 검사 실패 시 함수 종료
		}

		// 주소 유효성 검사
		const addressVal = $("#useraddress").val();
		if (addressVal === "") {
			alert("주소를 입력해 주세요.");
			return; // 유효성 검사 실패 시 함수 종료
		}

		// 전화번호 유효성 검사
		const phoneFullVal = $("input[name='memberPhone1']").val();
		if (phoneFullVal === "") {
			alert("전화번호를 입력해 주세요.");
			return; // 유효성 검사 실패 시 함수 종료
		}

		const phone1Val = $("#usernum1").val();
		const phone2Val = $("#usernum2").val();
		if (!/^\d+$/.test(phone1Val) || !/^\d+$/.test(phone2Val)) {
			alert("전화번호는 숫자만 포함해야 합니다.");
			return; // 유효성 검사 실패 시 함수 종료
		}

		// 동의 체크 박스 검사
		const isTermsAccepted = $("#reqChk1").is(":checked");
		const isPrivacyAccepted = $("#reqChk2").is(":checked");
		if (!isTermsAccepted || !isPrivacyAccepted) {
			alert("이용약관 및 개인정보 수집 및 이용에 동의해야 합니다.");
			return; // 유효성 검사 실패 시 함수 종료
		}

		// 모든 유효성 검사를 통과한 경우
		alert("회원가입을 진행합니다.");
		$joinForm.submit(); // 폼 제출
	});
	const elZonecode = document.querySelector("#zonecode");
	const elRoadAddress = document.querySelector("#useraddress");
	const elRoadAddressDetail = document.querySelector("#roadAddressDetail");

	// 주소검색창 열기 함수
	const onClickSearch = () => {
		new daum.Postcode({
			oncomplete: function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
				// 예제를 참고하여 다양한 활용법을 확인해 보세요.

				elZonecode.setAttribute("value", data.zonecode);
				elRoadAddress.setAttribute("value", data.address);
			},
		}).open();
	};

	const register = () => {
		console.log(`우편번호: ${elZonecode.getAttribute("value")}`);
		console.log(`주소: ${elRoadAddress.getAttribute("value")}`);
		console.log(`상세주소: ${elRoadAddressDetail.getAttribute("value")}`);

	};

	// 이벤트 추가
	document.querySelector("#postbtn").addEventListener("click", onClickSearch);
	document.querySelector("#userAdbtn").addEventListener("click", register);

	elRoadAddressDetail.addEventListener("change", (e) => {
		elRoadAddressDetail.setAttribute("value", e.target.value);
	});


	// 전체 동의 체크박스 클릭 시
	$('#agreeAll').change(function() {
		// 전체 동의 체크박스가 체크되면 모든 필수 체크박스 체크
		$('.chkAgree').prop('checked', this.checked);
	});

	// 개별 체크박스 클릭 시
	$('.chkAgree').change(function() {
		// 모든 필수 체크박스가 체크된 경우 전체 동의 체크박스 체크
		if ($('.chkAgree:checked').length === $('.chkAgree').length) {
			$('#agreeAll').prop('checked', true);
		} else {
			$('#agreeAll').prop('checked', false);
		}
	});

	//아이디 중복체크
	$("#btnchk").click(function() {
		var idchk = $("#userid").val();

		$.ajax({
			url: '/idChk',
			method: 'post',
			data: { "idchk": idchk },
			dataType: 'text',
			success: function(data, status, xhr) {
				$("#btnHidChk").val('Y');			
				if ("ok" == data) {
					$("#hidChk").val('Y');//가입유효성 체크 위해
					alert("사용 가능한 아이디입니다.");
				} else {
					alert("사용 불가한 아이디입니다.");
				}

			},
			error: function(data, status, err) {
				alert("일시적 오류입니다.");
			}

		});





	});


<<<<<<< HEAD
        // 모든 유효성 검사를 통과한 경우
        alert("회원가입을 진행합니다.");
        $joinForm.submit(); // 폼 제출
    });
    
    ////////////////// 주소 영역 ////////////////////////

 const elZonecode = document.querySelector("#zonecode");
      const elRoadAddress = document.querySelector("#useraddress");
      const elRoadAddressDetail = document.querySelector("#roadAddressDetail");

      // 주소검색창 열기 함수
      const onClickSearch = () => {
        new daum.Postcode({
          oncomplete: function (data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
            
            elZonecode.setAttribute("value", data.zonecode);
            elRoadAddress.setAttribute("value", data.address);
          },
        }).open();
      };
      
      const register = () => {
        console.log(`우편번호: ${elZonecode.getAttribute("value")}`);
        console.log(`주소: ${elRoadAddress.getAttribute("value")}`);
        console.log(`상세주소: ${elRoadAddressDetail.getAttribute("value")}`);

      };
      
      // 이벤트 추가
      document.querySelector("#postbtn").addEventListener("click",onClickSearch);
      document.querySelector("#userAdbtn").addEventListener("click", register);

      elRoadAddressDetail.addEventListener("change", (e) => {
        elRoadAddressDetail.setAttribute("value", e.target.value);
      });
 
//////////////// NARI 아이디중복 체크 페이지 //////////////////////

   // 아이디 중복확인 팝업창
const btnchkDom = document.getElementById("btnchk");
btnchkDom.addEventListener("click", function () {

    let popFile = "/IDchk";
    let alias = "";

    let w = 550;
    let h = 400;
    let lPos = (screen.width - w) / 2;
    // (모니터 전체 가로폭 - 팝업 가로폭)％2  
    let tPos = (screen.height - h) / 2;
    // (모니터 전체 세로폭 - 팝업 세로폭)％2  

    let prop = "";          // 폭 , 높이 ., 가로 ,세로 
    prop = "width=" + w + "px, ";
    prop += "height=" + h + "px, ";
    prop += "left=" + lPos + "px,";
    prop += "top=" + tPos + "px";

    window.open(popFile, alias, prop);
=======
>>>>>>> f8c1430d7a349a1d99aaf55b56f2b3be36022ac2
});

const Dom = document.querySelector("h1");
Dom.innerText = "가입하기";

		
});