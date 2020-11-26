<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>chart5</title>
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
		<div class="container" style="min-height: 774px;">
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
					<h1>년도별 용돈수입 확인</h1>
					<h4>polar 차트</h4>
					<div class="input-group mb-3 col-lg-8">
						<div class="input-group-prepend">
							<span class="input-group-text">년도 검색</span>
						</div>
						<input class="form-control" type="text" id="year">
						<button class="btn btn-primary" id="monthInMoneyByYearChart"
							type="button">검색</button>
					</div>
					<!-- chart -->
					<div>
						<canvas id="chart5" class="container"></canvas>
					</div>
					<!-- table -->
					<div></div>
				</div>
			</div>
		</div>
	</section>
	<footer class="py-5 bg-dark"">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2020</p>
		</div>
		<!-- /.container -->
	</footer>
</body>
<script>
	$('#monthInMoneyByYearChart').click(
			function() {
				$.ajax({
					url : '/monthInMoneyByYear/' + $('#year').val(),
					type : 'get',
					success : function(data) {
						console.log(data);
						let ctx = $('#chart5');
						let chart = new Chart(ctx,
								{
									type : 'polarArea',
									data : {
										labels : [ '1월', '2월', '3월', '4월',
												'5월', '6월', '7월', '8월', '9월',
												'10월', '11월', '12월' ],
										datasets : [ {
											label : "년도별 용돈 수입",
											backgroundColor : [
													"rgba(244, 67, 54)",
													"rgba(233, 30, 99)",
													"rgba(255, 152, 0)",
													"rgba(255, 255, 59)",
													"rgba(76, 175, 80)",
													"rgba(0, 150, 136)",
													"rgba(33, 150, 243)",
													"rgba(63, 81, 181)",
													"rgba(156, 39, 176)",
													"rgba(77, 44, 64)",
													"rgba(77, 44, 64)",
													"rgba(158, 158, 158)" ],
											data : [ data['1월'], data['2월'],
													data['3월'], data['4월'],
													data['5월'], data['6월'],
													data['7월'], data['8월'],
													data['9월'], data['10월'],
													data['11월'], data['12월'] ]
										} ]
									},
									options : {
										maintainAspectRatio : false
									}
								});
					}
				});
			});
</script>
</html>