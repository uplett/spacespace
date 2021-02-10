<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SPACESPACE</title>
</head>
<body>
	<div id="tablewrap">
		<div id="searchmenu">
			<div id="searchbox" class= "marginR3">
				<select
					id="select_email" style="font-size: 13px; margin-left: 3px;">
					<option value="input" selected>제목</option>
					<option value="naver.com">작성자</option>
					<option value="hanmail.net">날짜</option>
				</select>
			</div>
			<div id="tablesearch">
				<input type="text">
			</div>
			<button id="searchbutton" class="marginR3">
				<i class="fas fa-search"></i>
			</button>
			<div><button id="postbutton">새 글 작성</button></div>
		</div>
		<div id="table">
			<table>
				<thead>
					<tr>
						<td>번호</td>
						<td>작성자</td>
						<td>제목</td>
						<td>날짜</td>
						<td></td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td id="index">1</td>
						<td id="admin_id">작성자1</td>
						<td id="title">제목1</td>
						<td id="date">날짜1</td>
						<td><span style="margin-right: 5px;"><i
								class="fas fa-trash-alt"></i></span> <span><i class="fas fa-pen"></i></span>
						</td>
					</tr>

				</tbody>
			</table>
		</div>
		<div id="page">1</div>
	</div>
	
	
</body>
</html>