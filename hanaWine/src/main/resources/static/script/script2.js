
$(function() {

	// // 상세페이지 시작//  //

	$(document).ready(function() {
		// 탭 클릭 이벤트
		$("#mainTab li").click(function(e) {
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
				"color": " "
			});

			// 클릭된 탭에 스타일 적용
			$(this).css({
				"background-color": "#000",
				"color": "#fff"
			});


        // 해당 섹션으로 스크롤 포커스 이동
        $('html, body').animate({
          scrollTop: $("." + targetClass).offset().top
        }, 'fast');



		});

	});

	// // 상세페이지 종료 // //


	// // 상품목록 시작 // //
	$(".delIcon").click(function() {

		let chk = confirm(`해당 내용을 삭제하시겠습니다.`)
		if (chk) {
			let num = $(this).children("input[type=hidden]").val();
			location.href = 'boardDelete?num=' + num;
		} else {
			alert(`사용자가 취소했습니다`)
		}

	});
	
	// // 상품목록 종료 // //

});