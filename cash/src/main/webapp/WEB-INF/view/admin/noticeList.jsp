<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>boardList</h1>
	<a href="${pageContext.request.contextPath}/addNotice">추가</a>
	<table border="1">
		<tr>
			<th>notice_id</th>
			<th>notice_title</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<c:forEach var="notice" items="${noticeList}">
			<tr>
				<td>
					<a href="${pageContext.request.contextPath}/admin/noticeOne?noticeId=${notice.noticeId}">${notice.noticeId}</a>
				</td>
				<td>
					${notice.noticeTitle}
				</td>
				<td>
					<a href="${pageContext.request.contextPath}/admin/updateNotice?noticeId=${notice.noticeId}">수정</a>
				</td>
				<td>
					<a href="${pageContext.request.contextPath}/admin/removeNotice?noticeId=${notice.noticeId}">삭제</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>