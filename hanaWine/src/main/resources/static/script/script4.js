$(function() {

	$(".delIcon").click(function() {

		let chk = confirm(`해당 내용을 삭제하시겠습니까?`)

		if (chk) {

			let num = $(this).children("input[type=hidden]").val();
			location.href = '/boardDelete?num=' + num;

		} else {
			alert(`사용자가 취소하셨습니다.`)
		}

	});
	
	$("#chkBtn").click(function(){
		
		let chk = confirm("글 작성을 마치시겠습니까?")
		
		if(chk){
			location.href = `/boardWrite`;
			
		}		
		
	});
	
	
	
	$("#cancelBtn").click(function(){
		
		let chk = confirm("질문을 취소하시겠습니까?\n확인을 클릭하면 목록으로 돌아갑니다.")
		
		if(chk){
			location.href = `/`;
			
		}		
		
	});
	
});