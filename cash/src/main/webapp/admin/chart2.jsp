<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>chart2</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/view/inc/menu.jsp"></jsp:include>
	<div class="container">
		<jsp:include page="/WEB-INF/view/inc/chartMenu.jsp"></jsp:include>
		<h1>년도별 수입/지출 검색</h1>
		<h4>pie 차트</h4>
		<span>년도 검색:</span>
		<input type="text" id="year">
		<button id="totalOutAndInByYearChart" type="button">Chart2</button>
	</div>
	<!-- chart -->
	<div>
		<canvas id="chart2" class="container"></canvas>
	</div>
	<!-- table -->
	<div>
		
	</div>
</body>
<script>
$('#totalOutAndInByYearChart').click(function(){
	$.ajax({
		url:'/totalOutAndInByYear/'+$('#year').val(),
		type:'get',
		success:function(data) {
			console.log(data);
			let ctx = $('#chart2');
			let chart = new Chart(ctx, {
				type:'pie',
				data:{
					labels:['지출', '수입'], // 항목들
					datasets:[{
						label: data.year, // 제목
						backgroundColor:[
							 'rgba(255, 99, 132, 0.2)',
				             'rgba(54, 162, 235, 0.2)',
						],
						borderColor:[
							 'rgba(255, 99, 132, 1)',
				             'rgba(54, 162, 235, 1)',
						],
						data:[data.지출, data.수입] // 데이터
					}]
				},
				options:{}
			});
		}
	});
});
</script>
</html>