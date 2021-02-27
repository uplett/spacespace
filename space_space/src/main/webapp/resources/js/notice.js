function goAbout() {
	location.href = "space"
};

function goNotice() {
	location.href = "notice"
};

function newNotice() {
	location.href = "new_notice";
};

function notice_delete() {
	var confirm = confirm("정말로 삭제하시겠습니까?");
	
	if(confirm){
		var data = '<c:out value="${notice.seq}"></c:out>';
		console.log(data);
	}
	
}


$(document).ready(function() {
	
	
	
});



