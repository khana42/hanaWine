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

	//로그인 창
	$("#login").off("click").on("click", function() {

		let fName = "/login";
		let alias = "";
		let scrWidth = screen.width;
		let popWidth = 440;
		let leftPos = (scrWidth - popWidth) / 2;
		let scrHeight = screen.height;
		let popHeight = 400;
		let topPos = (scrHeight - popHeight) / 2;

		let prop = "width=" + popWidth;
		prop += " height=" + popHeight;
		prop += " left=" + leftPos;
		prop += " top=" + topPos;
		window.open(fName, alias, prop);

	});

	//로그인페이지의 회원가입 버튼
	$("#joinBtn").click(function() {
		window.opener.location.href = "/join";
		window.self.close();
	});

	//메인페이지 회원가입 클릭 시
	$("#join").click(function() {
		location.href = "/join";
	});

	//로그인 페이지의 로그인 버튼 클릭
	$("#loginBtn").click(function() {
		location.href = "/loginProc";
	});

	//메인페이지의 로그아웃 클릭
	$("#logout").click(function() {
		location.href="/logoutProc";
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