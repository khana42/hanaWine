$(function() {

	$(".faqList>li>span").click(function() {

		$(this).parent().toggleClass("on");
		$(this).parent().siblings().removeClass("on");
		$(this).parent().siblings().find(".a").slideUP();
		$(this).next(".a").stop().slideToggle();
	});
	
});