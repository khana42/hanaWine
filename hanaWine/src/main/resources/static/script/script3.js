$(function() {
<<<<<<< HEAD
	//메인페이지 슬라이드쇼
	setInterval(fnSlide, 6000);
	// fnSlide를 4초 단위로 반복함

	function fnSlide() {
		$('#slideShow').animate(
			{ 'margin-left': '-1100px' },
			6000,
			function() {
				$('#slideShow>a:first-child').insertAfter('#slideShow>a:last-child');
				// 넘어간 텍스트1이 텍스트3 뒤로 붙는 코드
				$(this).css({ 'margin-left': '0px' });
			}
		);
	}

	//로그인 페이지 모달
	$("#login").click(function() {
		$("#loginWrap").show();
	});
	
	$("#closeIcon").click(function(){  // 모달 닫기
	    $("div#loginWrap").css({
	            "display": "none"
	    });
=======
   //메인페이지 슬라이드쇼
   setInterval(fnSlide, 6000);
   // fnSlide를 4초 단위로 반복함

   function fnSlide() {
      $('#slideShow').animate(
         { 'margin-left': '-1100px' },
         6000,
         function() {
            $('#slideShow>a:first-child').insertAfter('#slideShow>a:last-child');
            // 넘어간 텍스트1이 텍스트3 뒤로 붙는 코드
            $(this).css({ 'margin-left': '0px' });
         }
      );
   }

   //로그인 페이지 모달
   $("#login").click(function() {
      $("#loginWrap").show();
   });
   
   $("#closeIcon").click(function(){  // 모달 닫기
       $("div#loginWrap").css({
               "display": "none"
       });
>>>>>>> 2b513cfa13e1efc73ccfca1ae75e28e3044ab9e4
    });
    
    // 페이지 로드 시 오류 메시지가 있으면 모달 열기
    var errorMessage = $("#error-message p").text().trim();
    if (errorMessage) {
        $("#loginWrap").show();
    }

<<<<<<< HEAD
	
	//로그인페이지의 회원가입 버튼
	$("#joinBtn").click(function() {
        location.href = "/Join02";
	});

	//메인페이지 회원가입 클릭 시
	$("#join").click(function() {
		location.href = "/Join02";
	});

	//메인페이지의 로그아웃 클릭
	$("#logout").off().click(function() {
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
=======
   
   //로그인페이지의 회원가입 버튼
   $("#joinBtn").click(function() {
        location.href = "/Join02";
   });

   //메인페이지 회원가입 클릭 시
   $("#join").click(function() {
      location.href = "/Join02";
   });

   //메인페이지의 로그아웃 클릭
   $("#logout").off().click(function() {
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
>>>>>>> 2b513cfa13e1efc73ccfca1ae75e28e3044ab9e4


///////////커뮤니티////////////////
$("#community").click(function(){

   location.href = "/noticeList";
   });


<<<<<<< HEAD
	//헤더의 gnb 클릭시 	
=======
   //헤더의 gnb 클릭시    

   $("#wineCateMain").click(function() {
      location.href = "/wine";
   });
   $(".wineCate").click(function(e) {
      e.stopPropagation()
      let cate = $(this).data('cate');
      location.href = "/wine/" + cate;

   });
   $("#wineCateFood").click(function() {
      location.href = "/food";
   });
   $(".wineFood").click(function(e) {
      e.stopPropagation()
      let cate = $(this).data('cate');
      location.href = "/food/" + cate;

   });
   $("#wineCateGrape").click(function() {
      location.href = "/grape";
   });
   $(".wineGrape").click(function(e) {
      e.stopPropagation()
      let cate = $(this).data('cate');
      location.href = "/grape/" + cate;
>>>>>>> 2b513cfa13e1efc73ccfca1ae75e28e3044ab9e4

   });
   $("#wineCateCountry").click(function() {
      location.href = "/country";
   });
   $(".wineCountry").click(function(e) {
      e.stopPropagation()
      let cate = $(this).data('cate');
      location.href = "/country/" + cate;

<<<<<<< HEAD
	});
	$("#wineCateFood").click(function() {
		location.href = "/food";
	});
	$(".wineFood").click(function(e) {
		e.stopPropagation()
		let cate = $(this).data('cate');
		location.href = "/food/" + cate;

	});
	$("#wineCateGrape").click(function() {
		location.href = "/grape";
	});
	$(".wineGrape").click(function(e) {
		e.stopPropagation()
		let cate = $(this).data('cate');
		location.href = "/grape/" + cate;

	});
	$("#wineCateCountry").click(function() {
		location.href = "/country";
	});
	$(".wineCountry").click(function(e) {
		e.stopPropagation()
		let cate = $(this).data('cate');
		location.href = "/country/" + cate;

	});
	
	///////////검색창////////////////
	$(document).ready(function() {
    	$("#btnSearch").click(function(event) {
        	event.preventDefault(); // 기본 링크 클릭 동작 방지
=======
   });
   
   ///////////검색창////////////////
   $(document).ready(function() {
       $("#btnSearch").click(function(event) {
           event.preventDefault(); // 기본 링크 클릭 동작 방지
>>>>>>> 2b513cfa13e1efc73ccfca1ae75e28e3044ab9e4
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

<<<<<<< HEAD
	});
	
	
=======
   });
   
   
>>>>>>> 2b513cfa13e1efc73ccfca1ae75e28e3044ab9e4
});



