$(document).ready(function() {

	// 상단메뉴 호버 
	
	$('.top_sub>li>div').mouseenter(function() {
		$('.hide_menu').slideDown();
	});
	
	$('.top_sub>li').mouseleave(function() {
		$('.hide_menu').slideUp();
	});
	
	
	//슬라이드 화살표 
	
	var left = $('#left_arrow');
	var right = $('#right_arrow');
	var event_list = $('#events>ul');	
	
	//슬라이드 도트
	
	var dots = $('#circle>div');
	var dot1 = $('#circle>div:nth-child(1)');
	var dot2 = $('#circle>div:nth-child(2)');
	var dot3 = $('#circle>div:nth-child(3)');
	var dot4 = $('#circle>div:nth-child(4)');
	
	
	function change_dot(dot) {
		dot.text('●');
		dots.not(dot).text('○');	
	};
	
	
	
	right.click(function(){
		
		var top = event_list.css('left');
		var top_var = parseInt(top.split('px'));
		
		var num;
		
		// 한 바퀴 돌고 초기화
		
		switch (top_var) {
		case 0:
			change_dot(dot2);
			break;
		case -800:
			change_dot(dot3);
			break;
		case -1600:
			change_dot(dot4);
			break;

		default:
			change_dot(dot1);
			break;

		}
		
		if(top_var<=-2400){
			num = 0;
			
		}else{
			num = top_var-800;
		}
		
		event_list.css('left', num);	
		
	});
	
	left.click(function(){
		
		var top = event_list.css('left');
		var top_var = parseInt(top.split('px'));
		var num;
		
		switch (top_var) {
			
		case -2400:
			change_dot(dot3);
			break;
		case -1600:
			change_dot(dot2);
			break;
		case -800:
			change_dot(dot1);
			break;
		
		default:
			change_dot(dot4);
			break;
		}
		
		// 한 바퀴 돌고 초기화 
		
		if(top_var>=0){
			num = -2400;
			
		}else{
			num = top_var+800;
		}
		
		
		event_list.css('left', num);
	});	
	
	dot1.click(function() {
		change_dot(dot1);
		event_list.css('left', 0); 
	});

	
	dot2.click(function() {
		change_dot(dot2);
		event_list.css('left', -800); 
	});
	
	dot3.click(function() {
		change_dot(dot3);
		event_list.css('left', -1600); 
	});
	
	dot4.click(function() {
		change_dot(dot4);
		event_list.css('left', -2400); 
	});
	
	
	//스크롤 맨 위로 올리기
	
	var goto_top = $('#goto_top>div');
	
	goto_top.click(function() {
		$('html').animate({scrollTop:0});
	});

});
