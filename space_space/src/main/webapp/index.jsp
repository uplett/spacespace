<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="resources/css/maincss.css?a">
<link rel="stylesheet" type="text/css" href="resources/css/reset.css?a">
<link rel="shortcut icon" href="resources/icon/favicon.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/c945c12587.js" crossorigin="anonymous"></script>
<!-- 스크립트 영역 -->
<script type="text/javascript">
$(document).ready(function() {

	// 상단메뉴 호버 
	
	$('#topwrap').hover(
			function(){$('.hide_menu').slideDown();},
			function(){$('.hide_menu').slideUp();});
	
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
	
	


	

	
	
});

</script>
<head>
<meta charset="UTF-8">
<title>SPACE-SPACE</title>
</head>
<body>

<div id="allwrap" style="">

	<div id="topwrap">
		<div id="topmenu">
			<div id="logo">
				<img src="resources/img/logo.png">
			</div>
			<div id="submenu">
				<div id="memberpage">
						<a>회원가입</a><a>｜</a>
						<a>주문/배송</a><a>｜</a>
						<a>문의하기</a>
				</div>	
				<div id="search">
					<a>
						
					</a>
					<a>
						<i class="fas fa-search"></i>
					</a>
				</div>
				<div id="submenu_bar">
					<i class="fas fa-bars" style="font-size: 30px; color:#AB245A;"></i>
				</div>
			
			</div>
				
		</div>
			
		<div id="menubar">
		<ul class="top_sub">
			<li>
				<div>
					SPACESPACE
				</div>
				<ul class="hide_menu">
					<li>소개</li>
					<li>공지사항</li>
				</ul>
			</li>
			<li>
				<div>
					PRODUCT
				</div>
				<ul class="hide_menu">
					<li>BEST</li>
					<li>문구류</li>
					<li>소품</li>
				</ul>
			</li>
			<li>
				<div>
					EVENT
				</div>
				<ul class="hide_menu">
					<li>진행중인 이벤트</li>
					<li>종료된 이벤트</li>
				</ul>
			</li>
			<li>
				<div>
					BOARD
				</div>
				<ul class="hide_menu">
					<li>자주 묻는 질문</li>
					<li>고객센터</li>
				</ul>
			</li>
			<li>
				<div>
					LINK
				</div>
			</li>
		</ul>
				
		
		</div>
		
	</div>
	
	<div id="mainwrap">
		<div id="events">
				<ul>
					<li><img src="resources/img/event_1.png"></li>
					<li><img src="resources/img/event_2.png"></li>
					<li><img src="resources/img/event_3.png"></li>
					<li><img src="resources/img/event_4.png"></li>
				</ul>
			<i id= "left_arrow" class="fas fa-chevron-left" style="left: 20px;"></i>
			<i id= "right_arrow" class="fas fa-chevron-right" style="right: 20px;"></i>
			<div id="circle">
				<div class="circle">●</div>
				<div class="circle">○</div>
				<div class="circle">○</div>
				<div class="circle">○</div>
			</div>
		</div>
		<div id="products">
			<div id="banner">
				2021 신상 포함 어쩌구 바로가기
			</div>
			<div class="product">
				상
			</div>
			<div class="product">
				품
			</div>
			<div class="product">
				들
			</div>
		</div>
	
	</div>
	
	<div id="footwrap">
		<div id="footleft">
			<ul>
				<li>ADDRESS<br></li>
				<li>주소주소주소주소주소 주소주소 주소주소주소주소<br>
				(주소주소주소주소주소주소주소주소주소)</li>
				<li><span>대표 윤주현, 박예림</span><span>TEL 010-6252-3724</span></li>
				<li><span>사업자등록번호 21-13-112112 </span><span>통신판매업 신고 2020-묘먕묘먕-1234</span></li>
			</ul>
			<div>
				© 2021. SPACESPACE. all rights reserved.
			</div>
		</div>
		<div id="footright">
			<ul>
				<li>
					<span><img src='resources/icon/instagram.png'></span>
					<span><img src='resources/icon/facebook.png'></span>
					<span><img src='resources/icon/twitter.png'></span>
					<span><img src='resources/icon/naver.png'></span>
				</li>
				<li>openkakao.com/SPACESPACE/1241240EE1aa</li>
			</ul>
		
		</div>

	</div>
	
</div>

</body>
</html>