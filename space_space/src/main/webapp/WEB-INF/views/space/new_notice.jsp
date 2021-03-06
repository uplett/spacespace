<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="shortcut icon" href="resources/icon/favicon.ico">
<!-- 제이쿼리/아이콘 -->

<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<!-- 썸머노트 -->


<script src="https://kit.fontawesome.com/c945c12587.js"
	crossorigin="anonymous"></script>
<script src="resources/js/main.js"></script>
<script src="resources/js/new_notice.js"></script>
<!-- 헤더 스크립트 -->

<link rel="stylesheet" type="text/css"
	href="resources/css/maincss.css?a">
<link rel="stylesheet" type="text/css" href="resources/css/reset.css?a">
<link rel="stylesheet" type="text/css"
	href="resources/css/new_notice.css?a">

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
					<form method="post" action="new_notice" onsubmit="return goWrite()">
						<div id="main">
							<div id="title">
								<input name="title" type="text"
									placeholder="INSERT TITLE HERE">
							</div>
							<div id="notice">
								<textarea id="summernote" name="text"></textarea>
							</div>
							<div>
								<input id="submit" type="submit" value="SUBMIT">
							</div>
						</div>
					</form>
				</div>
			</div>

			<div id="gotoTOP">
				<i class="fas fa-arrow-up"></i>
			</div>
		</div>
		<%@ include file="/../footer.jsp"%>

	</div>

</body>
</html>