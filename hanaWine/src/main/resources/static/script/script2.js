
$(function () {


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
                "color": " "
            });

            // 클릭된 탭에 스타일 적용
            $(this).css({
                "background-color": "#000",
                "color": "#fff"
            });

        });
        
        


    });
});