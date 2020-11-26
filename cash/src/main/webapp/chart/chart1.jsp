<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>chart1</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>

<!-- 차트메뉴 css, js  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<%-- CSS --%>
<link type="text/css" rel="stylesheet" href="/Content/bootstrap.css" />
<%-- JS --%>
<script type="text/javascript" src="/Scripts/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="/Scripts/bootstrap.bundle.min.js"></script>
  
<!-- Bootstrap core JavaScript -->
<script src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Plugin JavaScript -->
<script src="${pageContext.request.contextPath}/vendor/jquery-easing/jquery.easing.min.js"></script>
<!-- Custom JavaScript for this theme -->
<script src="${pageContext.request.contextPath}/js/scrolling-nav.js"></script>
<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/css/scrolling-nav.css" rel="stylesheet">
<style type="text/css">
	.sunday {color : #FF0000;}
	.saturday {color: #0000FF;}
	th {width:${100/7}%;}
	td{height:80px; vertical-align:top;}
</style>
</head>
<body id="page-top">
<jsp:include page="/WEB-INF/view/inc/menu.jsp"></jsp:include>

	<section id="services" class="bg-light">
		<div class="container" style="min-height: 774px; ">
			<div class="row">
				<div class="col-lg-8 mx-auto">
					<div class="dropdown dropleft float-right">
						<button type="button" class="btn btn-primary dropdown-toggle" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Chart menu
						</button>
						<div aria-labelledby="dropdownMenuButton">
						<jsp:include page="/WEB-INF/view/inc/chartMenu.jsp"></jsp:include>
						</div>
					</div>
					<h2>년도별 지출 검색</h2>
					<h4>bar 차트</h4>
					<div class="input-group mb-3 col-lg-8">
					<div class="input-group-prepend">
							<span class="input-group-text">년도 검색</span>
						</div>
						<input class="form-control" type="text" id="year">
						<button class="btn btn-primary" id="totalOfMonthByYearChart" type="button">검색</button>
					</div>
				<!-- chart -->
				<div>
					<canvas id="chart1"></canvas>
				</div>
				<!-- table -->
				<div>
				</div>
				</div>
			</div>
		</div>
	</section>
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your Website 2020</p>
		</div>
		<!-- /.container -->
	</footer>
</body>
<script>
	$('#totalOfMonthByYearChart').click(
			function() {
				$.ajax({
					url : '/totalOfMonthByYear/' + $('#year').val(),
					type : 'get',
					success : function(data) {
						console.log(data);
						let ctx = $('#chart1');
						let chart = new Chart(ctx, {
							type : 'bar', // chart 종류
							data : {
								labels : [ '1', '2', '3', '4', '5', '6', '7',
										'8', '9', '10', '11', '12' ],
								datasets : [ {
									label : '2019년 월별 지출',
									backgroundColor : [
											'rgba(255, 99, 132, 0.2)',
											'rgba(54, 162, 235, 0.2)',
											'rgba(255, 206, 86, 0.2)',
											'rgba(75, 192, 192, 0.2)',
											'rgba(153, 102, 255, 0.2)',
											'rgba(255, 159, 64, 0.2)',
											'rgba(255, 99, 132, 0.2)',
											'rgba(54, 162, 235, 0.2)',
											'rgba(255, 206, 86, 0.2)',
											'rgba(75, 192, 192, 0.2)',
											'rgba(153, 102, 255, 0.2)',
											'rgba(255, 159, 64, 0.2)' ],
									borderColor : [ 'rgba(255, 99, 132, 1)',
											'rgba(54, 162, 235, 1)',
											'rgba(255, 206, 86, 1)',
											'rgba(75, 192, 192, 1)',
											'rgba(153, 102, 255, 1)',
											'rgba(255, 159, 64, 1)',
											'rgba(255, 99, 132, 1)',
											'rgba(54, 162, 235, 1)',
											'rgba(255, 206, 86, 1)',
											'rgba(75, 192, 192, 1)',
											'rgba(153, 102, 255, 1)',
											'rgba(255, 159, 64, 1)' ],
									// data속성의 배열값은 ajax호출 후 결과값으로 채워야 한다.
									data : [ data.january, data.february,
											data.march, data.april, data.may,
											data.june, data.july, data.august,
											data.september, data.october,
											data.november, data.december ],
									borderWidth : 1
								} ]
							}, // chart안에 사용되는 모든 데이터
							options : {}
						});
					}
				});
			});
</script>
</html>