<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css"
	href="resources/css/maincss.css?a">
<link rel="stylesheet" type="text/css" href="resources/css/reset.css?a">
<link rel="stylesheet" type="text/css" href="resources/css/login.css?a">
<link rel="shortcut icon" href="resources/icon/favicon.ico">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/c945c12587.js"
	crossorigin="anonymous"></script>
<!-- 헤더 스크립트 -->
<script src="resources/js/main.js"></script>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div id="mainwrap">
		<div id="mainbox">
			<div id="loginbox">
				<div id="in_loginbox">
					<div id="login_right">
						<div id="login_left">
							<div id="logo">
								<i class="fas fa-lock"></i>
							</div>
							<div id="logo_text">
								<a>LOGIN</a>
							</div>
						</div>
						<form name="login" method="post" onsubmit="login()">
							<div id="idpw">
								<div class="idpw">
									<i class="fas fa-user"></i> <input id="id" name="id"
										type="text" placeholder="ID">
								</div>
								<div class="idpw">
									<i class="fas fa-key"></i> <input id="pw" name="pw" type="text"
										placeholder="PASSWORD">
								</div>
								<div id="login_submit">
						<input id="submit" type="submit" value="LOGIN">
					</div>
							</div>
						</form>
						<div id="loginsub">
							<div>
								<span>계정정보를 분실하셨나요?</span> <span>｜</span> <span class="cursor">아이디 찾기</span> <span>/</span>
								<span class="cursor">비밀번호 찾기</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>