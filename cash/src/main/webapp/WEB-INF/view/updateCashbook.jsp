<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cashbookUpdate</title>
</head>
<body>
	<jsp:include page="/WEB-INF/view/inc/menu.jsp"></jsp:include>
	<h1>cashbookUpdate</h1>
	<form method="post" action="/admin/updateCashbook/{}/{}">
		<table border="1">
			<tr>
				<td>cashbookId</td>
				<td><input type="text" name="cashbookId" value="${cashbook.cashbookId}" readonly="readonly"></td>
			</tr>
			<tr>
				<td>cashbookKind</td>
				<td>
					<input type="radio" name="cashbookKind" value="수입" checked="checked">수입
					<input type="radio" name="cashbookKind" value="지출" >지출
				</td>
				</tr>
			<tr>
				<td>categoryName</td>
				<td>
					<select name="categoryName">
						<c:forEach var="c" items="${categoryList}">https://github.com/rigizer/cash/tree/master/cash/src/main/webapp/WEB-INF
							<c:if test="${c.categoryName == cashbook.categoryName}">
								<option value="${c.categoryName}" selected="selected">${c.categoryName}</option>
							</c:if>
							<c:if test="${c.categoryName != cashbook.categoryName}">
								<option value="${c.categoryName}">${c.categoryName}</option>
							</c:if>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td>cashbookPrice</td>
				<td>
					<input type="text" name="cashbookPrice" value="${cashbook.cashbookPrice}" >
				</td>
			</tr>
			<tr>
				<td>cashbookContent</td>
				<td>
					<input type="text" name="cashbookContent" value="${cashbook.cashbookContent}">
				</td>
			</tr>
		</table>
		<button type="submit">수입/지출 수정</button>
	</form>
</body>
</html>