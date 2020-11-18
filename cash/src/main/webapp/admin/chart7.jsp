<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>chart7</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/view/inc/menu.jsp"></jsp:include>
	<div class="container">
		<jsp:include page="/WEB-INF/view/inc/chartMenu.jsp"></jsp:include>
		<h1>년도별 카테고리 지출 검색</h1>
		<h4>horizontalBar 차트</h4>
		<span>년도 검색:</span>
		<input type="text" id="year">
		<button id="categoryOutByYearChart" type="button">Chart7</button>
	</div>
	<!-- chart -->
	<div>
		<canvas id="chart7" class="container"></canvas>
	</div>
	<!-- table -->
	<div>
		
	</div>
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