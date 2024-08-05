$(function() {

	var slides = document.querySelector('.slides'),
		slide = document.querySelectorAll('.slides li'),
		currentIdx = 0,
		slideCount = slide.length,
		slideWidth = 200,
		slideMargin = 30,
		prevBtn = document.querySelector('.prev'),
		nextBtn = document.querySelector('.next');

	slides.style.width =
		(slideWidth + slideMargin) * slideCount - slideMargin + 'px';

	function moveSlide(num) {
		slides.style.left = -num * 230 + 'px';
		currentIdx = num;
	}

	nextBtn.addEventListener('click', function() {
		if (currentIdx < slideCount - 4) {
			moveSlide(currentIdx + 1);
		} else {
			moveSlide(0);
		}File(recipe, uploadDir + recipeName);
	});

	prevBtn.addEventListener('click', function() {
		if (currentIdx > 0) {
			moveSlide(currentIdx - 1);
		} else {
			moveSlide(slideCount - 4);
		}
	});

	$(".wineInfo").click(function() {
		var wineKrName = $(this).data("winekrname"); // data-num 속성에서 num 값 가져오기
		location.href = "/productPage?wineKrName=" + encodeURIComponent(wineKrName); // 상세 페이지로 이동
	});
	$(".order").click(function() {

		var order = $(this).data("order");
		location.href="/wine?order="+order;
	});






});