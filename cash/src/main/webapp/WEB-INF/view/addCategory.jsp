<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addCategory</title>
</head>
<body>
	<jsp:include page="/WEB-INF/view/inc/menu.jsp"></jsp:include>
<h1 class="text-center">addCategory</h1>
	<div class ="container">
	<form method="post" action="/admin/addCategory">
		<table class="table-bordered" border="1">
			<tr>
				<td>category_name</td>
				<td>
					<input type="text" name="categoryName">
				</td>
			</tr>
			<tr>
				<td>cashbook_kind</td>
				<td>
					<input type="radio" name="categoryKind" value="수입">수입
					<input type="radio" name="categoryKind" value="지출">지출
				</td>
			</tr>
		</table>
		<button type="submit" class="btn btn-primary">카테고리 추가</button>
	</form>
	</div>
</body>
</html>