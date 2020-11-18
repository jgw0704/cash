<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>chart3</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/view/inc/menu.jsp"></jsp:include>
	<div class="container">
		<jsp:include page="/WEB-INF/view/inc/chartMenu.jsp"></jsp:include>
		<h1>년도별 수입 검색</h1>
		<h4>line 차트</h4>
		<span>년도 검색:</span>
		<input type="text" id="year">
		<button id = "totalOfInMoneyByYearChart" type="button">Chart3</button>
	</div>
	<!-- chart -->
	<div>
		<canvas id="chart3" class="container"></canvas>
	</div>
<script>
$('#totalOfInMoneyByYearChart').click(function(){
	$.ajax({
		url:'/totalOfInMoneyByYear/'+$('#year').val(),
		type:'get',
		success:function(data) {
			let ctx = $('#chart3');
			let chart = new Chart(ctx, {
				type: 'line', // 선 그래프
			    data: {
					labels: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
				    datasets: [{
				    	label : '2019년 월별 수입',
				    	borderColor: [
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
				    	'rgba(255, 99, 132, 0.2)'
				    	],
						backgroundColor: [
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
						'rgba(54, 162, 235, 1)'
						],
			    		data: [
				    		data.january, data.february, data.march, data.april, data.may, 
				    		data.june, data.july, data.august, data.september, data.october, 
				    		data.november, data.december
				    		],
						borderWitdh :1 ,
						fill:false
				    }]
			    },
				options: {
					response :true,
					title: {
						display: true,
						text: '2019년도 수입 차트'
						},
					 scales: {
				        yAxes: [{ // y축 설명
				        	display: true,
			                scaleLabel: {
			                    display: true,
			                    labelString: '돈의 값'
			                }
					        }]
				        },
				        xAxes: [{ // x축 설명
				        	display: true,
			                scaleLabel: {
			                    display: true,
			                    labelString: '월'
			                }
			            }]
			        }
			});
		}
	});
});
</script>
</body>
</html>