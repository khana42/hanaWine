$(function(){
	
	$(".delIcon").click(function(){
		
		let chk = confirm(`해당 내용을 삭제하시겠습니까?`)
		
		if(chk){
		
		let num = $(this).children("input[type=hidden]").val();
		location.href='/boardDelete?num='+num;
		
		} else {
			alert(`사용자가 취소하셨습니다.`)
		}
		
	});
	
});