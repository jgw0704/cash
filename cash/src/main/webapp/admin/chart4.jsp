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
<title>chart4</title>

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
<body id="page-top">
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/inc/menu.jsp"></jsp:include></div>
 <header>
    <div class="container text-center">
      <h1>.</h1>
    </div>
  </header>
<section id="about">
	<div class="container">
		<div class="dropdown dropleft float-right">
			<button type="button" class="btn btn-primary dropdown-toggle"
				data-toggle="dropdown">Chart menu</button>
			<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/inc/chartMenu.jsp"></jsp:include>
		</div>
</div>
</section>
<section id="services" class="bg-light">
	<div class="container" style="min-height: 774px; ">
	<div class="row">
				<div class="col-lg-8 mx-auto">
		<h1>년도별 카테고리 수입/지출 검색</h1>
		<h4>rader 차트</h4>
		<div class="input-group mb-3 col-lg-8">
			<div class="input-group-prepend">
				<span class="input-group-text">년도 검색</span>
			</div>
			<input class="form-control" type="text" id="year">
			<button class="btn btn-primary" id="totalCategoryByYearChart"
				type="button">검색</button>
		</div>
	<!-- chart -->
	<div>
		<canvas id="chart4" class="container"></canvas>
	</div>
	<!-- table -->
	<div></div>
		</div>
			</div>
		</div>
	</section>
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
<script>
	$('#totalCategoryByYearChart')
			.click(
					function() {
						$
								.ajax({
									url : '/totalCategoryByYear/'
											+ $('#year').val(),
									type : 'get',
									success : function(data) {
										console.log(data);
										let ctx = $('#chart4');
										let chart = new Chart(
												ctx,
												{
													type : 'radar',
													data : {
														labels : [ '급여', '식비',
																'용돈', '생활' ], // 항목들
														datasets : [
																{
																	label : "년도 카테고리별 수입", // 제목1
																	backgroundColor : "rgba(54, 162, 235,0.2)",
																	borderColor : "rgba(54, 162, 235, 0.2)",
																	pointBackgroundColor : "rgba(54, 162, 235)",
																	pointBorderColor : "#fff",
																	pointHoverBackgroundColor : "#fff",
																	pointHoverBorderColor : "rgba(54, 162, 235)",
																	data : [
																			data.급여수입,
																			data.식비수입,
																			data.용돈수입,
																			data.생활수입 ], // 데이터1
																	fill : true
																},
																{
																	label : "년도 카테고리별 지출", // 제목2
																	backgroundColor : "rgba(255, 99, 132,0.2)",
																	borderColor : "rgba(255, 99, 132, 0.2)",
																	pointBackgroundColor : "rgba(255, 99, 132)",
																	pointBorderColor : "#fff",
																	pointHoverBackgroundColor : "#fff",
																	pointHoverBorderColor : "rgba(255, 99, 132)",
																	data : [
																			data.급여지출,
																			data.식비지출,
																			data.용돈지출,
																			data.생활지출 ], // 데이터2
																	fill : true
																} ]
													},
													options : {}
												});
									}
								});
					});
</script>
</html>