<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="brddb" class="univ.BoardDBCP" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<style>
table{
	width: 80%;
	margin-left: auto;
	margin-right: auto;
}
th {
	color: blue;
}
p{
	text-align: center;
}
.even-row{
	background-color: papayawhip;
}
.odd-row{
	background-color: white;
}
.even-row:hover, .odd-row:hover{
	background-color: SkyBlue;
}
</style>
</head>
<body>
	<h2>게시물 조회</h2><hr>
	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>전자메일</th>
		</tr>
		<c:set var="row" value="0" />
		<c:forEach var="brd" items="${brddb.getBoardList() }">
			<c:set var="new_class" value="${row % 2 == 0 ? 'even-row' : 'odd-row' }" />
			<tr class=${new_class }>
				<td><a href="editboard.jsp?id=${brd.getId() }">${brd.getId() }</a></td>
				<td>${brd.getTitle() }</td>
				<td>${brd.getName() }</td>
				<td><fmt:formatDate value="${brd.getRegdate() }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
				<td>${brd.getEmail() }</td>
			</tr>
			<c:set var="row" value="${row+1 }" />
		</c:forEach>
	</table>
	<hr>
	<p>조회된 게시물은 ${row }개 입니다.</p>
	<hr>
	<form name="form" method="post" action="editboard.jsp">
		<p><input type="submit" value="게시등록"></p>
	</form>
</body>
</html>