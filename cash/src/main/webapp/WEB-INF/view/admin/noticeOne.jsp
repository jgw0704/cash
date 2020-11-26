<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>noticeOne</title>
</head>
<body>
	<a href="${pageContext.request.contextPath}/noticeList/1">noticeList페이지로</a>
	<h1>noticeOne</h1>
	<table border="1">
		<tr>
			<td>notice_id</td>
			<td>${noticeId}</td>
		</tr>
		<tr>
			<td>notice_title</td>
			<td>${noticeTitle}</td>
		</tr>
		<tr>
			<td>notice_content</td>
			<td>${noticeContent}</td>
		</tr>
		<tr>
			<td>notice_date</td>
			<td>${noticeDate}</td>
		</tr>
	</table>
</html>