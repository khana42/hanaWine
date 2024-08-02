$(function() {
	//메인페이지 슬라이드쇼
	setInterval(fnSlide, 4000);
	// fnSlide를 4초 단위로 반복함

	function fnSlide() {
		$('#slideShow').animate(
			{ 'margin-left': '-1000px' },
			4000,
			function() {
				$('#slideShow>a:first-child').insertAfter('#slideShow>a:last-child');
				// 넘어간 텍스트1이 텍스트3 뒤로 붙는 코드
				$(this).css({ 'margin-left': '0px' });
			}
		);
	}

	//로그인 페이지로 이동
	$("#login").click(function() {
	location.href = "/login";

	});
	
	//로그인페이지의 회원가입 버튼
	$("#joinBtn").click(function() {
<<<<<<< HEAD
		location.href = "/join";
		
=======


		window.opener.location.href = "/Join02";
		window.self.close();
>>>>>>> 44ee57d17304082306fb78077e8df7958e28e027
	});

	//메인페이지 회원가입 클릭 시
	$("#join").click(function() {
		location.href = "/join";
	});

	//메인페이지의 로그아웃 클릭
	$("#logout").click(function() {
		confirm("로그아웃 하시겠습니까?");
		location.href="/logout";
	});

	//헤더에 마우스 올릴 시 메뉴 펼쳐져지고 닫혀짐
	$('#mainMenu>li').mouseover(function() {
		$(this).children('ul.subMenu').stop().slideDown(0);
	});
	$('#mainMenu>li').mouseout(
		function() {
			$(this).children('ul.subMenu').stop().slideUp();
		});

<<<<<<< HEAD

	//헤더의 gnb 클릭시 	
=======
///////////커뮤니티////////////////
$(".qBoard").click(function(){
	location.href = "/qBoardList";
	
	
});


>>>>>>> 44ee57d17304082306fb78077e8df7958e28e027
	$("#wineCateMain").click(function() {
		location.href = "/wine";
	});
	$(".wineCate").click(function(e) {
		e.stopPropagation()
		let cate = $(this).data('cate');
		location.href = "/wine/" + cate;

	});
	//<c:url var="getBoardListURL" value="/board/getBoardList"></c:url>

	//검색
//	$("#btnSearch").click(function(e) {
//		e.preventDefault();
////		let url = "/search"; // URL을 직접 입력
//		let keyword = $('#keyword').val(); // 키워드 값을 가져옴
////		if (keyword) { // 키워드가 비어있지 않은 경우에만 추가
////			url += "?keyword=" + encodeURIComponent(keyword); // 쿼리 문자열에 추가
////		}
//		location.href = "/wineList"; // 페이지 이동
//		console.log(url); // URL 출력
//		console.log("키워드: " + keyword);
//});${pageContext.request.contextPath}
	   $(document).ready(function() {
        $("#btnSearch").click(function(event) {
            event.preventDefault(); // 기본 링크 클릭 동작 방지
            var keyword = $("#keyword").val(); // 검색어 가져오기
            
            // 검색어가 있는 경우에만 링크로 이동
            if (keyword) {
                // 검색어를 URL 쿼리 매개변수로 추가
                var url = "/search?keyword=" + encodeURIComponent(keyword);
                window.location.href = url; // 페이지 이동
            } else {
                alert("검색어를 입력하세요."); // 검색어가 없으면 경고
            }
        });

});
});



