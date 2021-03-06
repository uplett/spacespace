<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="resources/css/maincss.css?a">
<link rel="stylesheet" type="text/css" href="resources/css/reset.css?a">
<link rel="stylesheet" type="text/css" href="resources/css/event.css?a">
<link rel="shortcut icon" href="resources/icon/favicon.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/c945c12587.js" crossorigin="anonymous"></script>
<!-- 헤더 스크립트 -->
<script src="resources/js/main.js"></script>
<script src="resource/js/maintab.js"></script>
<script type="text/javascript">
function goEvent() {
	location.href = "event"
};

function goCEvent() {
	location.href = "closedevent"
};

$(document).ready(function() {
	var gotoTOP = $("#gotoTOP");
	gotoTOP.click(function() {
		$('html').animate({scrollTop:0});
	});

});

</script>
<head>
<meta charset="UTF-8">
<title>SPACESPACE</title>
</head>
<body>
<div id="allwrap">
<%@ include file="/../header.jsp"%>
<div id="mainwrap">
		<div id="mainbox">
			<div>
				<div id="main">
					<%@ include file="event_main.jsp"%>
				</div>
			</div>
		</div>
		
		<div id="gotoTOP"><i class="fas fa-arrow-up"></i></div>
</div>
<%@ include file="/../footer.jsp"%>

</div>


</body>
</html>