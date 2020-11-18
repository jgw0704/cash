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
<title>chart8</title>

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
		<jsp:include page="/WEB-INF/view/inc/chartMenu.jsp"></jsp:include>
		<h1>총 년도(18, 19, 20)의 월별 수입/지출</h1>
		<h4>scatter 차트</h4>
		<div class="input-group mb-3 col-lg-4">
		<div class="input-group-prepend">
			<span class="input-group-text">년도 검색</span>
		</div>
			<input class="form-control" type="text" id="month">
			<button class= "btn btn-primary" id="inAndOutByMonthChart" type="button">검색</button>
		</div>
	</div>
	<!-- chart -->
	<div>
		<canvas id="chart8" class="container"></canvas>
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
$('#inAndOutByMonthChart').click(function(){
	$.ajax({
		url:'/inAndOutByMonth/'+$('#month').val(),
		type:'get',
		success:function(data) {
			var ctx = document.getElementById('chart8');
			var chart = new Chart(ctx , {
				type:'scatter',
				data:{
					datasets:[
						{
						label:'1일 수입/지출',
						backgroundColor: [
			                'rgba(255, 99, 132, 0.2)'
			            ],
						borderColor: [
			                'rgba(255, 99, 132, 1)'
			            ],
						data:[{
								x : data.a1,
								y : data.b1
							}]
						},
						{
							label:'2일 수입/지출',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.a2,
									y : data.b2
								}]
						},
						{
							label:'3일 수입/지출',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.a3,
									y : data.b3
								}]
						}, 
						{
							label:'4일 수입/지출',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.a4,
									y : data.b4
								}]
						}, 
						{
							label:'5일 수입/지출',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.a5,
									y : data.b5
								}]
						}, 
						{
							label:'6일 수입/지출',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.a6,
									y : data.b6
								}]
						}, 
						{
							label:'7일 수입/지출',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.a7,
									y : data.b7
								}]
						}, 
						{
							label:'8일 수입/지출',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.a8,
									y : data.b8
								}]
						}, 
						{
							label:'9일 수입/지출',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.a9,
									y : data.b9
								}]
						}, 
						{
							label:'10일 수입/지출',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.a10,
									y : data.b10
								}]
						}, 
						{
							label:'11일 수입/지출',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.a11,
									y : data.b11
								}]
						}, 
						{
							label:'12일 수입/지출',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.a12,
									y : data.b12
								}]
						}, 
						{
							label:'13일 수입/지출',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.a13,
									y : data.b13
								}]
						}, 
						{
							label:'14일 수입/지출',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.a14,
									y : data.b14
								}]
						}, 
						{
							label:'15일 수입/지출',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.a15,
									y : data.b15
								}]
						}, 
						{
							label:'16일 수입/지출',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.a16,
									y : data.b16
								}]
						}, 
						{
							label:'17일 수입/지출',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.a17,
									y : data.b17
								}]
						}, 
						{
							label:'18일 수입/지출',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.a18,
									y : data.b18
								}]
						}, 
						{
							label:'19일 수입/지출',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.a19,
									y : data.b19
								}]
						}, 
						{
							label:'20일 수입/지출',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.a20,
									y : data.b20
								}]
						}, 
						{
							label:'21일 수입/지출',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.a21,
									y : data.b21
								}]
						}, 
						{
							label:'2일 수입/지출',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.a22,
									y : data.b22
								}]
						}, 
						{
							label:'23일 수입/지출',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.a23,
									y : data.b23
								}]
						}, 
						{
							label:'24일 수입/지출',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.a24,
									y : data.b24
								}]
						}, 
						{
							label:'25일 수입/지출',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.a25,
									y : data.b25
								}]
						}, 
						{
							label:'26일 수입/지출',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.a26,
									y : data.b26
								}]
						}, 
						{
							label:'27일 수입/지출',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.a27,
									y : data.b27
								}]
						}, 
						{
							label:'28일 수입/지출',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.a28,
									y : data.b28
								}]
						}, 
						{
							label:'29일 수입/지출',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.a29,
									y : data.b29
								}]
						}, 
						{
							label:'30일 수입/지출',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.a30,
									y : data.b30
								}]
						}, 
						{
							label:'31일 수입/지출',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.a31,
									y : data.b31
								}]
						}
					]
				},
				options:{
					legend: { // 바 정보
						display: false 
						},
					 title: {
					        display: true,
					        text: '년도 수입/지출'
					      }, scales: {
					        yAxes: [{ 
					          scaleLabel: {
					            display: true,
					            labelString: "지출"
					          }
					        }],
					        xAxes: [{
					          scaleLabel: {
					            display: true,
					            labelString: "수입"
						            }
					        }]
					      }
				}
			});
		}
	});
});
</script>
</html>