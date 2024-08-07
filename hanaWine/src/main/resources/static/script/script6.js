$(function() {
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
	 $(".delIcon").click(function() {
    let chk = confirm('해당 와인 정보를 삭제하시겠습니까?');
    if (chk) {
        let num = $(this).find("input[type=hidden]").val();

        $.ajax({
            url: 
            '/adminlist/delete/'+num, // DELETE 요청할 URL
            type: 'DELETE',
            success: function(response) {
                alert(response); // 성공 메시지
               location.reload(); // 페이지 새로 고침
            },
            error: function(xhr) {
                alert('삭제에 실패했습니다: ' + xhr.responseText +num); // 에러 메시지
            }
        });
    } else {
        alert(`사용자가 취소하셨습니다.`);
    }
    });
	
	//관리자 페이지
   $("#admin-wine").click(function(){
      location.href="/upload";
   });
   $("#admin-list").click(function(){
      location.href="/Adminlist";
   });
   $("#admin-memList").click(function(){
      location.href="/memList";
   });
   $("#admin-faq_write").click(function(){
      location.href="/faq_write";
   });
   $("#admin-notice_write").click(function(){
      location.href="/notice_write";
   });
	
	
	
	
	
	
	
	
});
