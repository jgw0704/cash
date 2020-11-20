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
<title>chart6</title>

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
		<h1>18, 19, 20년도 용돈, 급여 수입</h1>
		<h4>bubble 차트(x:용돈, y:급여, r값은 아무거나 넣었음)</h4>
		<div class="input-group mb-3 col-lg-4">
			<button class= "btn btn-primary" id = "categoryInByYearChart" type="button">펼쳐보기</button>
		</div>
	<!-- chart -->
	<div>
		<canvas id="chart6" class="container"></canvas>
	</div>
	<!-- table -->
	<div>
	</div>
	</div>
			</div>
		</div>
	</section>
	<footer class="py-5 bg-dark" >
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
$('#categoryInByYearChart').click(function(){
	$.ajax({
		url:'/categoryInByYear',
		type:'get',
		success:function(data){
			var ctx = document.getElementById('chart6');
			var chart = new Chart(ctx , {
				type:'bubble',
				data:{
					datasets:[
						{
						label:'18년 수입',
						backgroundColor: [
			                'rgba(255, 99, 132, 0.2)'
			            ],
						borderColor: [
			                'rgba(255, 99, 132, 1)'
			            ],
						data:[{
								x : data.a1,
								y : data.a2,
								r : 20
							}]
						},{
							label:'19년 수입',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.b1,
									y : data.b2,
									r : 18
								}]
						},{
							label:'20년 수입',
							backgroundColor: [
				                'rgba(255, 99, 132, 0.2)'
				            ],
							borderColor: [
				                'rgba(255, 99, 132, 1)'
				            ],
							data:[{
									x : data.c1,
									y : data.c2,
									r : 15
								}]
							}
					]
				},
				options:{
					 title: {
					        display: true,
					        text: '18, 19 20년도의 급여, 용돈 수입'
					      }, scales: {
					        yAxes: [{ 
					          scaleLabel: {
					            display: true,
					            labelString: "급여수입"
					          }
					        }],
					        xAxes: [{
					          scaleLabel: {
					            display: true,
					            labelString: "용돈수입"
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