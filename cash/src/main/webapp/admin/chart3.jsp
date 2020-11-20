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
<title>chart3</title>

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
		<h1>년도별 수입 검색</h1>
		<h4>line 차트</h4>
		<div class="input-group mb-3 col-lg-8">
			<div class="input-group-prepend">
				<span class="input-group-text">년도 검색</span>
			</div>
			<input class="form-control" type="text" id="year">
			<button class="btn btn-primary" id="totalOfInMoneyByYearChart"
				type="button">검색</button>
		</div>
	<!-- chart -->
	<div>
		<canvas id="chart3" class="container"></canvas></div>
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
	<script>
		$('#totalOfInMoneyByYearChart').click(
				function() {
					$.ajax({
						url : '/totalOfInMoneyByYear/' + $('#year').val(),
						type : 'get',
						success : function(data) {
							let ctx = $('#chart3');
							let chart = new Chart(ctx, {
								type : 'line', // 선 그래프
								data : {
									labels : [ '1월', '2월', '3월', '4월', '5월',
											'6월', '7월', '8월', '9월', '10월',
											'11월', '12월' ],
									datasets : [ {
										label : '2019년 월별 수입',
										borderColor : [
												'rgba(255, 99, 132, 0.2)',
												'rgba(255, 99, 132, 0.2)',
												'rgba(255, 99, 132, 0.2)',
												'rgba(255, 99, 132, 0.2)',
												'rgba(255, 99, 132, 0.2)',
												'rgba(255, 99, 132, 0.2)',
												'rgba(255, 99, 132, 0.2)',
												'rgba(255, 99, 132, 0.2)',
												'rgba(255, 99, 132, 0.2)',
												'rgba(255, 99, 132, 0.2)',
												'rgba(255, 99, 132, 0.2)',
												'rgba(255, 99, 132, 0.2)' ],
										backgroundColor : [
												'rgba(54, 162, 235, 1)',
												'rgba(54, 162, 235, 1)',
												'rgba(54, 162, 235, 1)',
												'rgba(54, 162, 235, 1)',
												'rgba(54, 162, 235, 1)',
												'rgba(54, 162, 235, 1)',
												'rgba(54, 162, 235, 1)',
												'rgba(54, 162, 235, 1)',
												'rgba(54, 162, 235, 1)',
												'rgba(54, 162, 235, 1)',
												'rgba(54, 162, 235, 1)',
												'rgba(54, 162, 235, 1)' ],
										data : [ data.january, data.february,
												data.march, data.april,
												data.may, data.june, data.july,
												data.august, data.september,
												data.october, data.november,
												data.december ],
										borderWitdh : 1,
										fill : false
									} ]
								},
								options : {
									response : true,
									title : {
										display : true,
										text : '2019년도 수입 차트'
									},
									scales : {
										yAxes : [ { // y축 설명
											display : true,
											scaleLabel : {
												display : true,
												labelString : '돈의 값'
											}
										} ]
									},
									xAxes : [ { // x축 설명
										display : true,
										scaleLabel : {
											display : true,
											labelString : '월'
										}
									} ]
								}
							});
						}
					});
				});
	</script>
</body>
</html>