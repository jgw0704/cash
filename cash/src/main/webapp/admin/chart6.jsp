<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>chart6</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/view/inc/menu.jsp"></jsp:include>
	<div class="container">
		<jsp:include page="/WEB-INF/view/inc/chartMenu.jsp"></jsp:include>
		<h1>18, 19, 20년도 카테고리 수입</h1>
		<h4>bubble 차트(x:용돈, y:급여, r값은 아무거나 넣었음)</h4>
		<span>차트:</span>
		<button id = "categoryInByYearChart" type="button">펼쳐보기</button>
	</div>
	<!-- chart -->
	<div>
		<canvas id="chart6" class="container"></canvas>
	</div>
	<!-- table -->
	<div>
		
	</div>
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