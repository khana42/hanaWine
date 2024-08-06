$(function () {
	
	// 와인제품페이지
	  $(document).ready(function () {
        // 탭 클릭 이벤트
        $("#mainTab li").click(function (e) {
            e.preventDefault();

            // 모든 콘텐츠 숨기기
            $(".contents").hide();

            // 클릭한 탭의 data-target 값 가져오기
            var targetClass = $(this).data("target");

            // 해당 클래스 가진 콘텐츠 보이기
            $("." + targetClass).show();

            // 모든 탭의 스타일 초기화
            $("#mainTab li").css({
                "background-color": "",
                "color": ""
            });

            // 클릭된 탭에 스타일 적용
            $(this).css({
                "background-color": "#000",
                "color": "#fff"
            });

        });


    });

	// 게시글 삭제하기
	$(".delIcon").click(function(){
	    let chk = confirm('해당 와인 정보를 삭제하시겠습니까?');
	    
	    if (chk) {
	        let num = $(this).children("input[type=hidden]").val();
	
			 alert('삭제되었습니다');
			 location.href="/boardDelete?num="+num;
	    } else {
	        alert('사용자가 취소하셨습니다.');
	    }
	   
	});


	$(".Delicon").click(function(){
	    let chk = confirm('해당 회원 정보를 삭제하시겠습니까?');
	    
	    if (chk) {
	        let memberPhone = $(this).children("input[type=hidden]").val();
	
			 alert('삭제되었습니다');
			 location.href="/memListDelete?memberPhone="+memberPhone;
	    } else {
	        alert('사용자가 취소하셨습니다.');
	    }
	   
	});
	
	$("#modifyArea>button").click(function(){
		let modNumVal = $("#modNum").val();
		if (isNaN(modNumVal)) {
			alert('번호에는 숫자만 입력할 수 있습니다.');
			$("#modNum").val("").focus();
			return false;
		}
		
		/*let modTitleVal = $("#modTitle").val();
		if (isNaN(modTitleVal)) {
			alert('제목에는 숫자만 입력할 수 있습니다.');
			$("#modTitle").val("").focus();
			return false;
		}*/
	});
	
	$("button#wineRegBtn").click(function() {
	    // 모든 입력 필드의 값을 가져옵니다.
	    let allFieldsFilled = true;
	    
	    // 각 입력 필드를 순회하면서 비어있는지 확인합니다.
	    $("input").each(function() {
	        if ($(this).val().trim() === "") {
	            allFieldsFilled = false;
	            return false; // 반복문을 종료합니다.
	        }
	    });
	    
	    // 모든 입력 필드가 비어있지 않은 경우만 진행합니다.
	    if (!allFieldsFilled) {
	        alert("모든 정보를 입력해주세요."); // 사용자에게 알림
	        return; // 입력 필드가 비어있으면 함수 실행을 중단합니다.
	    }
	
	    // 확인 대화상자를 띄웁니다.
	    let chk = confirm('와인 정보를 등록하시겠습니까?');
	    if (chk) {
	        // 사용자가 확인을 클릭했을 때 실행할 코드
	        alert("등록되었습니다."); // 실제 동작으로 바꾸세요
	    } else {
	        // 사용자가 취소를 클릭했을 때 실행할 코드
	        $("input").val(""); // 모든 입력 필드의 값을 비웁니다
	        alert("취소하였습니다.");
	        return;
	    }
	});

});




