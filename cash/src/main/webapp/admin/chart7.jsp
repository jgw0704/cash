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
<title>chart7</title>
 
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
<body id="page-top"><div>
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
		<h1>년도별 카테고리 지출 검색</h1>
		<h4>horizontalBar 차트</h4>
		<div class="input-group mb-3 col-lg-8">
		<div class="input-group-prepend">
			<span class="input-group-text">년도 검색</span>
		</div>
			<input class="form-control" type="text" id="year">
			<button  class= "btn btn-primary" id="categoryOutByYearChart" type="button">검색</button>
		</div>
	<!-- chart -->
	<div>
		<canvas id="chart7" class="container"></canvas>
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

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom JavaScript for this theme -->
  <script src="js/scrolling-nav.js"></script>	
</body>
<script>
$('#categoryOutByYearChart').click(function(){
	$.ajax({
		url:'/categoryOutByYear/'+$('#year').val(),
		type:'get',
		success:function(data) {
			console.log(data);
			let ctx = $('#chart7');
			let chart = new Chart(ctx, {
				type:'horizontalBar',
				data:{
					labels:['급여','식비','용돈','생활'],
					datasets:[{
						backgroundColor:[
							'rgba(255, 99, 132, 0.2)',
							'rgba(76, 175, 80, 0.2)',
							'rgba(255, 255, 59, 0.2)',
							'rgba(33, 150, 243, 0.2)'
							],
						borderColor: [
							'rgba(255, 99, 132)',
							'rgba(76, 175, 80)',
							'rgba(255, 255, 59)',
							'rgba(33, 150, 243)'
							],
						data:[data.급여지출, data.식비지출, data.용돈지출, data.생활지출]
					}]
				},
				options:{
					legend: { // 바 정보
						display: false 
						},
				      title: {
				        display: true,
				        text: '년도별 카테고리 지출'
				      }
				}
			});
		}
	});
});
</script>
</html>