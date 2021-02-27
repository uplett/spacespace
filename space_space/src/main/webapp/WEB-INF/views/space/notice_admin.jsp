<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

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
						<td>제목</td>
						<td>날짜</td>
						<td></td>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${notice}" var="notice" >
					<tr>
						<td id="index"><c:out value="${notice.seq}"></c:out></td>
						<td id="title"><c:out value="${notice.title}"></c:out></td>
						<td id="date"><c:out value="${notice.reg_date}"></c:out></td>
						<td><span style="margin-right: 5px;" onclick="notice_delete()"><i
								class="fas fa-trash-alt"></i></span> <span><i class="fas fa-pen" onclick="notify()"></i></span>
						</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
		<div id="page">
			 <ul>
    <c:if test="${pagination.prev}">
    	<li><a href="notice${pagination.makeQuery(pagination.startPage - 1)}">&lt;</a></li>
    </c:if> 

    <c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">
    	<li><a href="notice${pagination.makeQuery(idx)}">${idx}</a></li>
    </c:forEach>

    <c:if test="${pagination.next && pagination.endPage > 0}">
    	<li><a href="notice${pagination.makeQuery(pagination.endPage + 1)}">></a></li>
    </c:if> 
  </ul>
		</div>
	</div>
	
	
</body>
</html>