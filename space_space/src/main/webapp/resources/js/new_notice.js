function goWrite() {
	
	var title = $("#title>input").val(),
	notice = $("#summernote").val();
	
	console.log(title);
	console.log(notice);
	
	if(title.trim() == ''){
		alert("제목을 입력해주세요.");
		return false;
	}else if(notice.trim() == ''){
		alert("내용을 입력해주세요.");
		return false;
	}else{
		console.log("검사완료");
		console.log(title);
		console.log(notice);
		alert("공지사항 작성을 완료하였습니다!")


		return true;
	};
	
	
	
};

jQuery.noConflict();

(function( $ ) {
	$(document).ready(function() {
		$('#summernote').summernote({
			tabsize : 2,
			height : 300,
			focus: true, 
	        lang : 'ko-KR'
		});
		
		$('#gotoTOP').click(function() {
			$('html').animate({
				scrollTop : 0
			});	
		});	

	});
})( jQuery );


