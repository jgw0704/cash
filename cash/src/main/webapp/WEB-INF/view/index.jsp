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

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="css/scrolling-nav.css" rel="stylesheet">
<style type="text/css">
.sunday {
	color: #FF0000;
}

.saturday {
	color: #0000FF;
}

th {
	width: ${100/7
}

%;
}
td {
	height: 80px;
	vertical-align: top;
}
</style>
</head>
<body id="page-top"><div>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/inc/menu.jsp"></jsp:include></div>
 <header>
    <div class="container text-center">
      <h1>.</h1>
    </div>
  </header>
  
	<section id="about">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 mx-auto">
					<h2 class="text-center">공지사항</h2>
					<p class="lead">
					<div class="container">
						공지사항 <a href="/admin/noticeList">more</a>
					</div>
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
	<section id="services" class="bg-light" style="min-height: 300px; ">
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
									<td>${io["날짜"]}</td>
									<!-- io.get("날짜") -->
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
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2020</p>
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