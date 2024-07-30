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
		if(chk) {
			let num = $(this).children("input[type=hidden]").val();
			location.href="/boardDelete?num=" + num;
		} else {
			alert(`사용자가 취소하셨습니다.`);
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
	
	$("button#wineRegBtn").click(function(){
		alert("입력되었습니다!");
	});
	
});




