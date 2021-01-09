<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="resources/css/maincss.css?a">
<link rel="stylesheet" type="text/css" href="resources/css/reset.css?a">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/c945c12587.js" crossorigin="anonymous"></script>
<!-- 스크립트 영역 -->
<script type="text/javascript">
$(document).ready(function() {
	
	//슬라이드 동그라미
	
	var dots = $('#circle');
	var dot1 = $('#circle:nth-child(1)');
	var dot2 = $('#circle:nth-child(2)');
	var dot3 = $('#circle:nth-child(3)');
	var dot4 = $('#circle:nth-child(4)');
	
	dot2.click(function() {
		console.log('클릭됨');
			
		dot2.replaceWith('<i class="fas fa-circle"></i>');
		dots.not(dot2).replaceWith('<i class="far fa-circle"></i>');
				
	});
	
	// 상단메뉴 호버 
	
	$('#topwrap').mouseover(function(){$('.hide_menu').slideDown();});
	$('#topwrap').mouseleave(function(){$('.hide_menu').slideUp();});
	
	//슬라이드 화살표 
	
	var left = $('#left_arrow');
	var right = $('#right_arrow');
	var event_list = $('#events>ul');	
	
	
	
	right.click(function(){
		
		var top = event_list.css('left');
		var top_var = parseInt(top.split('px'));
		
		var num;
		
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
		
		if(top_var>=0){
			num = -2400;
			
		}else{
			num = top_var+800;
		}
		
		event_list.css('left', num);
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
				<i class="fas fa-circle"></i>
				<i class="far fa-circle"></i>
				<i class="far fa-circle"></i>
				<i class="far fa-circle"></i>
			</div>
		</div>
		<div id="products">
			<div>
				상
			</div>
			<div>
				품
			</div>
			<div>
				들
			</div>
		</div>
	
	</div>
	
	<div id="footwrap">
	
	</div>
		

</div>


</body>
</html>