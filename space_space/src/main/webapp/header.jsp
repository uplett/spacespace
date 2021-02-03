<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/maintab.js"></script>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div id="topwrap">
		<div id="topmenu">
			<div id="logo" onclick="mainTab(0)">
				<img src="resources/img/logo.png">
			</div>
			<div id="submenu">
				<div id="memberpage">
					<a onclick="memberTab(0)">회원가입</a><a>｜</a>
					<a onclick="memberTab(1)">로그인</a><a>｜</a>
					<a onclick="memberTab(2)">주문/배송</a><a>｜</a>
					<a onclick="memberTab(3)">1:1문의</a>
				</div>
				<div id="search">
					<a><i class="fas fa-search"></i></a>
				</div>
				<div id="submenu_bar">
					<i class="fas fa-bars" style="font-size: 30px; color: #AB245A;"></i>
				</div>
			</div>

		</div>

		<div id="menubar">
			<ul class="top_sub">
				<li>
					<div id="space" onclick="mainTab(1)">SPACESPACE</div>
					<ul class="hide_menu">
						<li onclick="spaceTab(0)">소개</li>
						<li onclick="spaceTab(1)">공지사항</li>
					</ul>
				</li>
				<li>
					<div id="product" onclick="mainTab(2)">PRODUCT</div>
					<ul class="hide_menu">
						<li onclick="productTab(0)">전체상품</li>
						<li onclick="productTab(1)">의류</li>
						<li onclick="productTab(2)">문구류</li>
						<li onclick="productTab(3)">소품</li>
					</ul>
				</li>
				<li>
					<div id="event" onclick="mainTab(3)">EVENT</div>
					<ul class="hide_menu">
						<li onclick="eventTab(0)">진행중인 이벤트</li>
						<li onclick="eventTab(1)">종료된 이벤트</li>
					</ul>
				</li>
				<li>
					<div id="board" onclick="mainTab(4)">BOARD</div>
					<ul class="hide_menu">
						<li onclick="boardTab(0)">자주 묻는 질문</li>
						<li onclick="boardTab(2)">문의게시판</li>
					</ul>
				</li>
				<li>
					<div id="link" onclick="mainTab(5)">LINK</div>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>