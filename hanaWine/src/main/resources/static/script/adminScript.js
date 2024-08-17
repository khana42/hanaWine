$(function() {
	 $(document).ready(function() {
            $('#adminjoinbtn').on('click', function() {
                // 유효성 검사 없이 폼 제출
                $('form').submit();
                alert("회원가입 완료되었습니다.")
            });
        });

	
	});
		$("#adminlogout").off().on().click(function() {
		confirm("로그아웃 하시겠습니까?");
		location.href="/adminlogout";
	});

	
	
	
	
