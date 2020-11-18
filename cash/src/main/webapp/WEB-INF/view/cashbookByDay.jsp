<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>cashbookByDay</title>
</head>
<body id="page-top" style="margin: 90px;">
 <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="/admin/index">Main</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
			<jsp:include page="/WEB-INF/view/inc/menu.jsp"></jsp:include>
        </ul>
      </div>
    </div>
  </nav>
	<h1 class="text-center">cashbookListByDay</h1>
	<div class="container">
	<a href="/admin/addCategory">카테고리 추가</a>
	</div>
	<div class="container">
	<a href="/admin/addCashbook?currentYear=${currentYear}&currentMonth=${currentMonth}&currentDay=${currentDay}">수입/지출 입력</a>
	</div>
	<div class="container">
		<a href="/admin/cashbookByDay/pre/${currentYear}/${currentMonth}/${currentDay}">
			<< 이전
		</a>
		
		<span>${currentYear}년 ${currentMonth}월 ${currentDay}일</span>
		
		<a href="/admin/cashbookByDay/next/${currentYear}/${currentMonth}/${currentDay}">
			이후 >>
		</a>
	</div>
	
	<table class="container table-bordered" border="1">
		<thead>
			<tr class="table-Secondary">
				<th>cashbookId</th>
				<th>cashbookKind</th>
				<th>categoryName</th>
				<th>cashbookPrice</th>
				<th>cashbookContent</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="c" items="${cashbookList}">
				<tr>
					<td>${c.cashbookId}</td>
					<td>${c.cashbookKind}</td>
					<td>${c.categoryName}</td>
					<td>${c.cashbookPrice}</td>
					<td>${c.cashbookContent}</td>
					<td><a href="">수정</a></td>
					<td><a href="">삭제</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<footer class="py-5 bg-dark" style="margin: 1px -90px;">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2020</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom JavaScript for this theme -->
  <script src="js/scrolling-nav.js"></script>
</body>
</html>