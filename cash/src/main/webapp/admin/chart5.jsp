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
<title>chart5</title>

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
	.sunday {color : #FF0000;}
	.saturday {color: #0000FF;}
	th {width:${100/7}%;}
	td{height:80px; vertical-align:top;}
</style>
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
  
  <div class="container">
		<div class="dropdown dropleft float-right">
			<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
				Chart menu
			</button>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="/admin/chart1.jsp">chart1</a>
				<a class="dropdown-item" href="/admin/chart2.jsp">chart2</a>
				<a class="dropdown-item" href="/admin/chart3.jsp">chart3</a>
				<a class="dropdown-item" href="/admin/chart4.jsp">chart4</a>
				<a class="dropdown-item" href="/admin/chart5.jsp">chart5</a>
				<a class="dropdown-item" href="/admin/chart6.jsp">chart6</a>
				<a class="dropdown-item" href="/admin/chart7.jsp">chart7</a>
				<a class="dropdown-item" href="/admin/chart8.jsp">chart8</a>
				<a class="dropdown-item" href="/admin/chart9.jsp">chart9</a>
			</div>
		</div>
	</div>
  
	<div class="container">
		<h1>년도별 용돈수입 확인</h1>
		<h4>polar 차트</h4>
		<div class="input-group mb-3 col-lg-4">
		<div class="input-group-prepend">
			<span class="input-group-text">년도 검색</span>
		</div>
			<input class="form-control" type="text" id="year">
			<button class= "btn btn-primary" id="monthInMoneyByYearChart" type="button">검색</button>
		</div>
	</div>
	<!-- chart -->
	<div>
		<canvas id="chart5" class="container"></canvas>
	</div>
	<!-- table -->
	<div>
	</div>
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
<script>
	$('#monthInMoneyByYearChart').click(function(){
			$.ajax({
				url:'/monthInMoneyByYear/'+$('#year').val(),
				type:'get',
				success:function(data) {
					console.log(data);
					let ctx = $('#chart5');
					let chart = new Chart(ctx, {
						type:'polarArea',
						data:{
							labels:['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
							datasets:[{
								label: "년도별 용돈 수입",
								backgroundColor:[
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
									"rgba(158, 158, 158)"
								],
								data:[data['1월'], data['2월'], data['3월'], data['4월'], data['5월'], data['6월'], data['7월'], data['8월'], data['9월'], data['10월'], data['11월'] ,data['12월']]
							}]
						},
						options:{
							maintainAspectRatio: false
							}
					});
				}
			});
	});
</script>
</html>