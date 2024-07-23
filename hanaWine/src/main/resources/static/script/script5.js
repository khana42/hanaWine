$(function () {





//////////////////////////////////////////////////////////////////////
// 회원가입 두번째 페이지 //
//////////////////////////////////////////////////////////////////////


// 아이디 중복확인 팝업창
const btnchkDom = document.getElementById("btnchk");
btnchkDom.addEventListener("click", function () {

    let popFile = "IDchk.html";
    let alias = "";

    let w = 460;
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
});

const Dom = document.querySelector("h1");
Dom.innerText = "가입하기";






// 이메일 도메인

function fnemailDomain() {

    let selVal = document.querySelector("#emailDomain").value;
    document.querySelectorAll("input.emailIns")[1].value = selVal;
}

const btnJoinDom = document.querySelector("button#joinbtn");
btnJoinDom.addEventListener("click", function () {


    ///아이디 유효성검사
    const regExpUid = /[^a-z|0-9|A-Z|]/g;


    let uidVal = document.querySelector("#userid").value;
    let uidLen = uidVal.length;


    //비번 유효성 검사

    const regExppass = /[^a-z|0-9|A-Z|_@]/g;

    let pwVal = document.querySelector("#userpw1").value;
    let pwLen = pwVal.length;


    //비번확인 유효성 검사
    const regExppass2 = "";
    let pw2Val = document.querySelector("#userpw2").value;




    if (regExpUid.test(uidVal) || uidLen < 6) {
        alert("id는 6~20 영어 대소문자, 숫자만 가능합니다.");
    } else if (regExppass.test(pwVal) || pwLen < 6) {
        alert("패스워드는 6~20 글자,영어 대소문자, 숫자,_@ 만 가능합니다.");
    } else if (pw2Val == "") {
        alert("비밀번호를 확인 해 주세요.");

    } else if (pwVal == pw2Val) {
        alert('비밀번호 일치.');

    } else if (pwVal != pw2Val) {
        alert('비밀번호가 일치하지 않습니다. ');

    }


    // 이메일 정규식 패턴
    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]/g;
    // 이메일 공백 및 유효성 검사 
    let email1 = document.querySelectorAll("#useremail")[0].value;

    // const regExpEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}/g;

    let email_domain = document.querySelector("#email_domain");
    let mail = "";

    // 이메일 패턴과 입력된 이메일을 비교
    return emailPattern.test(email);

    // 테스트 예제
    const testEmail = "example@example.com";
    if (validateEmail(testEmail)) {
        console.log("유효한 이메일 주소입니다.");
    } else {
        console.log("유효하지 않은 이메일 주소입니다.");
    }
});

// const uid = document.getElementById("userid");
// const upw = document.getElementById("userpw");
// const upwchk = document.getElementById("userpwchk");
// const uemail = document.getElementById("useremail");
// const uaddress = document.getElementById("useraddress");
// const uphone1 = document.getElementById("usernum1");
// const uphone2 = document.getElementById("usernum2");




//////////////////  전체 체크 동의 ////////////////////////
$('#agreeAll').click(function () {
    let allchk = $('#agreeAll').prop('checked');
    $('.chkAgree').prop('checked', allchk);

});




});





///////////////////////////////////////////////////////////////////////////////
//////////////// NARI 회원가입 첫 페이지 //////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////


