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
	<h2>�Խù� ��ȸ</h2><hr>
	<table>
		<tr>
			<th>��ȣ</th>
			<th>����</th>
			<th>�ۼ���</th>
			<th>�ۼ���</th>
			<th>���ڸ���</th>
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
	<p>��ȸ�� �Խù��� ${row }�� �Դϴ�.</p>
	<hr>
	<form name="form" method="post" action="editboard.jsp">
		<p><input type="submit" value="�Խõ��"></p>
	</form>
</body>
</html>