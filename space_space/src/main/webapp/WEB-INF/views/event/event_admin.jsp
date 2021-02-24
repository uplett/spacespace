<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="resource/js/notice.js"></script>
<meta charset="UTF-8">
<title>SPACESPACE</title>
</head>
<body>
	<div id="tablewrap">
		<div id="top_map"><span>BOARD</span><span>></span><span style="font-weight: bold;">공지사항</span> </div>
		<div id="searchmenu">
			<div id="searchbox" class= "marginR3">
				<select
					id="select_notice" style="font-size: 13px; margin-left: 3px;">
					<option id = "search_title" value="search_title" selected>제목</option>
					<option id= "search_date" value="search_date">날짜</option>
				</select>
			</div>
			<div id="tablesearch">
				<input type="text">
			</div>
			<button id="searchbutton" class="marginR3">
				<i class="fas fa-search"></i>
			</button>
			<div><button id="postbutton" onclick="newNotice()">새 글 작성</button></div>
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
								class="fas fa-trash-alt" onclick="delete()"></i></span> <span><i class="fas fa-pen" onclick="notify()"></i></span>
						</td>
					</tr>

				</tbody>
			</table>
		</div>
		<div id="page">1</div>
	</div>
	
	
</body>
</html>