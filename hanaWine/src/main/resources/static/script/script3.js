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
		location.href = "/join";
		
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


	//헤더의 gnb 클릭시 	
	$("#wineCateMain").click(function() {
		location.href = "/wine";
	});
	$(".wineCate").click(function(e) {
		e.stopPropagation()
		let cate = $(this).data('cate');
		location.href = "/wine/" + cate;

	});


});