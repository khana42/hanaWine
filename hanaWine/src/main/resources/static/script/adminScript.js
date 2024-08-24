$(function() {
	$(document).ready(function() {
		$('#adminjoinbtn').on('click', function() {
			// 유효성 검사 없이 폼 제출
			$('form').submit();
			alert("회원가입 완료되었습니다.")
		});
	});


});
$("#adminlogout").off().on("click", function(event) {
	// confirm 다이얼로그를 표시하고 사용자가 확인을 누르면 로그아웃을 진행
	if (!confirm("로그아웃 하시겠습니까?")) {
		// 사용자가 취소를 누르면 로그아웃 요청을 방지하고 이벤트 전파를 중지
		event.preventDefault(); // 기본 동작을 취소
		return false; // 핸들러 종료
	}
	// 확인을 누르면 로그아웃 요청 진행
	location.href = "/adminlogout";
});
$(".delIcon").click(function() {
	let chk = confirm('해당 와인 정보를 삭제하시겠습니까?');
	if (chk) {
		let num = $(this).find("input[type=hidden]").val();

		$.ajax({
			url:
				'/adminlist/delete/' + num, // DELETE 요청할 URL
			type: 'DELETE',
			success: function(response) {
				alert(response); // 성공 메시지
				location.reload(); // 페이지 새로 고침
			},
			error: function(xhr) {
				alert('삭제에 실패했습니다: ' + xhr.responseText + num); // 에러 메시지
			}
		});
	} else {
		alert(`사용자가 취소하셨습니다.`);
	}
});



