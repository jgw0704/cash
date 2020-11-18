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
<title>addCashbook</title>
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="css/scrolling-nav.css" rel="stylesheet">
</head>
<body id="page-top" style="margin: 90px;">
<!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="/admin/index">Main</a></a>
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
	<h1 class="text-center">addCashbook</h1>
	<div class ="container">
	<form method="post" action="/admin/addCashbook">
		<table class="table-hover" border="1" style="margin:10px 390px;">
			<tr>
				<td>cashbook_date</td>
				<td>
					<input type="text" name="cashbookDate" 
								value="${param.currentYear}-${param.currentMonth}-${param.currentDay}" 
								readonly="readonly">
				</td>
			</tr>
			<tr>
				<td>cashbook_kind</td>
				<td>
					<input type="radio" name="cashbookKind" value="수입">수입
					<input type="radio" name="cashbookKind" value="지출">지출
				</td>
			</tr>
			<tr>
				<td>category_name</td>
				<td>
					<select name="categoryName">
						<c:forEach var="c" items="${categoryList}">
							<option value="${c.categoryName}">${c.categoryName}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td>cashbook_price</td>
				<td>
					<input type="text" name="cashbookPrice">
				</td>
			</tr>
			<tr>
				<td>cashbook_content</td>
				<td>
					<input type="text" name="cashbookContent">
				</td>
			</tr>
		</table>
		<button type="submit" class="btn btn-primary" style="margin:10px 390px;">수입/지출 입력</button>
	</form>
	</div>
		 <!-- Footer -->
  <footer class="py-5 bg-dark" style="margin: 0px -90px;">
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