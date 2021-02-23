function goAbout() {
	location.href = "space"
};

function goNotice() {
	location.href = "notice"
};

function newNotice() {
	location.href = "new_notice";
};

jQuery.noConflict();

(function( $ ) {
	$(document).ready(function() {
		$('#summernote').summernote({
			tabsize : 2,
			height : 300
		});
		
		$('#gotoTOP').click(function() {
			$('html').animate({
				scrollTop : 0
			});	
		});	

	});
})( jQuery );

