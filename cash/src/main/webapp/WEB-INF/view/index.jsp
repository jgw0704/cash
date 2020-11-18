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
<title>Index</title>
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="css/scrolling-nav.css" rel="stylesheet">
</head>
<body id="page-top">
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
   
   <header class="bg-primary text-white" style="margin:55px -40px;">
    <div class="container text-center">
      <p class="lead">안녕하세요 메인페이지입니다</p>
    </div>
  </header>
  
	<section id="about">
		<div class="container">
	    <div class="row">
	    <div class="col-lg-9 mx-auto">
			<h2 class="text-center">공지사항</h2>
			<p class="lead">
				<div class="container">공지사항 <a href="/admin/noticeList">more</a></div>
				<div class="container">
					<table class="table table-striped" border="1">
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
				</div>
			</p>
	        <ul>
				<li>최신 5개의 공지사항을 보여줍니다.</li>
				<li>공지사항옆 more를 클릭하면 전체 공지목록을 확인 가능합니다.</li>
	        </ul>
	    </div>
	    </div>
	 	</div>
	</section>
	
	<!-- 수입/지출 -->
	<section id="services" class="bg-light" style="margin: 48px -40px;">
	<div class="container">
	<div class="row">
	<div class="col-lg-9 mx-auto">
		<h2 class="text-center">가계부 표</h2>
		<p class="lead">
			<table class="container table-bordered" border="1">
				<thead>
					<tr class="table-Secondary">
						<th>날짜</th>
						<th>수입</th>
						<th>지출</th>
						<th>합계</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="io" items="${inOutList}">
						<tr>
							<td>${io["날짜"]}</td> <!-- io.get("날짜") -->
							<td>${io["수입"]}</td>
							<td>${io["지출"]}</td>
							<td>${io["합계"]}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</p>
	</div>
    </div>
    </div>
	</section>
	 <!-- Footer -->
  <footer class="py-5 bg-dark" style="margin: 0px -40px;">
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