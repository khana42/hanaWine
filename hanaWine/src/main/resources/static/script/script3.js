$(function() {
	//메인페이지 슬라이드쇼
	setInterval(fnSlide, 4000);
	// fnSlide를 3초 단위로 반복함

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

	//로그인 클릭시 회원가입 버튼
	$("#joinBtn").click(function() {


		window.opener.location.href = "/join";
		window.self.close();
	});

	//메인페이지 회원가입 클릭 시
	$("#join").click(function() {
		location.href = "/join";
	});

	$('#mainMenu>li').mouseover(function() {
		$(this).children('ul.subMenu').stop().slideDown(0);
	});
	
	$('#mainMenu>li').mouseout(
		function() {
			$(this).children('ul.subMenu').stop().slideUp();
		});
		
$("#wineCateMain").click(function() {
   
	location.href = "/wine";
	});
$("#wineCateFood").click(function() {
   
	location.href = "/food";
	});
$("#wineCateGrape").click(function() {
   
	location.href = "/grape";
	});	
	$("#wineCateCountry").click(function() {
   
	location.href = "/country";
	});	

	$(".wineCate").click(function(e) {
     e.stopPropagation()
     let cate = $(this).data('cate');
	location.href = "/wine/" + cate;
   
	});

	
});