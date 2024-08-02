$(function() {

	$(".faqList>li>span").click(function() {

		$(this).parent().toggleClass("on");
		$(this).parent().siblings().removeClass("on");
		$(this).parent().siblings().find(".a").slideUP();
		$(this).next(".a").stop().slideToggle();
	});

	$("#qnaBtn").click(function() {

		alert(`
		운영자에게 문의하셨습니다.
		최대한 빠른 시일 내에 답변드리겠습니다.
		메인 페이지로 돌아갑니다.`)


	});

});