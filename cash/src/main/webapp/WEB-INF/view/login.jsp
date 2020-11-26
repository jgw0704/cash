<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
	<h1 class="text-center">공지</h1>
		<table border="1" class="table table-striped" style="margin: auto; text-align: center; width: 50%;">
			<thead>
				<tr>
					<th>notice_id</th>
					<th>notice_title</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="n" items="${noticeList}">
					<tr>
						<td>${n.noticeId}</td>
						<td>${n.noticeTitle}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	<h1 class="text-center">로그인</h1>
	<form action="${pageContext.request.contextPath}/login" method="post" style="margin: auto; text-align: center; width: 50%;">
		<div class="container">
			ID : <input type="text" class="form-control" name="id">
		</div>
		<div class="container">
			PW : <input type="password" class="form-control" name="pw">
		</div>
		<div class="container">
			<button type="submit" class="btn btn-primary">로그인</button>
		</div>
	</form>
	</div>
</body>
</html>