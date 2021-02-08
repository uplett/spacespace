<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(
		
		function() {
			alert("회원가입을 환영합니다! 로그인해 주세요.");
		});

</script>
<meta charset="UTF-8">
<title>WELCOME!</title>
</head>
<body>
<div id="allwrap">
<%@ include file="/../header.jsp"%>
<div id="mainwrap">
<%@ include file="login_main.jsp"%>
</div>
<%@ include file="/../footer.jsp"%>
</div>
</body>
</html>