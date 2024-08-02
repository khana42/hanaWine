$(function() {
    const $joinForm = $("#join_form1"); // 폼 요소 선택

    $("#joinbtn").click(function(event) {
        event.preventDefault(); // 기본 폼 제출 방지

         const phone1 = $("#usernum1").val();
        const phone2 = $("#usernum2").val();
        const phonePrefix = $("#phonePrefix").val(); // 선택된 전화번호 앞자리
        const phoneFull = `${phonePrefix}-${phone1}-${phone2}`;
        $("input[name='memberPhone']").val(phoneFull); // memberPhone에 저장

        const regExpUid = /[^a-z|0-9|A-Z|]/g;
        const uidVal = $("#userid").val();
        const uidLen = uidVal.length;

        const regExppass = /[^a-z|0-9|A-Z|_@]/g;
        const pwVal = $("#userpw1").val();
        const pwLen = pwVal.length;

        const pw2Val = $("#userpw2").val();

        // ID 유효성 검사
        if (regExpUid.test(uidVal) || uidLen < 4 || uidLen > 16) {
            alert("ID는 4~16 사이의 영어 대소문자와 숫자만 가능합니다.");
            return; // 유효성 검사 실패 시 함수 종료
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

     
       // const regExpEmail = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      //  if (!regExpEmail.test(emailVal + "@" + emailDomainVal)) {
        //    alert("유효한 이메일 주소를 입력해 주세요.");
      //      return; // 유효성 검사 실패 시 함수 종료
      //  }
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
});
