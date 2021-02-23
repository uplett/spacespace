<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
	<div id="tablewrap">
		<div id="top_map"><span>BOARD</span><span>></span><span style="font-weight: bold;">문의게시판</span> </div>
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
						<td>답변여부</td>
						<td>날짜</td>
						<td></td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td id="index">1</td>
						<td id="admin_id">작성자1</td>
						<td id="title">제목1</td>
						<td id="answer">미답변</td>
						<td id="date">2021-02-15</td>		
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