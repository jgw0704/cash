<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>chart4</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/view/inc/menu.jsp"></jsp:include>
	<div class="container">
		<jsp:include page="/WEB-INF/view/inc/chartMenu.jsp"></jsp:include>
		<h1>년도별 카테고리 수입/지출 검색</h1>
		<h4>rader 차트</h4>
		<span>년도 검색:</span>
		<input type="text" id="year">
		<button id="totalCategoryByYearChart" type="button">Chart4</button>
	</div>
	<!-- chart -->
	<div>
		<canvas id="chart4" class="container"></canvas>
	</div>
	<!-- table -->
	<div>
		
	</div>
</body>
<script>
$('#totalCategoryByYearChart').click(function(){
	$.ajax({
		url:'/totalCategoryByYear/'+$('#year').val(),
		type:'get',
		success:function(data) {
			console.log(data);
			let ctx = $('#chart4');
			let chart = new Chart(ctx, {
				type:'radar',
				data:{
					labels:['급여','식비', '용돈', '생활'], // 항목들
					datasets:[{
						label: "년도 카테고리별 수입", // 제목1
						backgroundColor:"rgba(54, 162, 235,0.2)",
						borderColor:"rgba(54, 162, 235, 0.2)",
						pointBackgroundColor:"rgba(54, 162, 235)",
						pointBorderColor:"#fff",
						pointHoverBackgroundColor:"#fff",
						pointHoverBorderColor:"rgba(54, 162, 235)",
						data:[data.급여수입, data.식비수입, data.용돈수입, data.생활수입], // 데이터1
						fill:true
					}, {
						label: "년도 카테고리별 지출", // 제목2
						backgroundColor:"rgba(255, 99, 132,0.2)",
						borderColor:"rgba(255, 99, 132, 0.2)",
						pointBackgroundColor:"rgba(255, 99, 132)",
						pointBorderColor:"#fff",
						pointHoverBackgroundColor:"#fff",
						pointHoverBorderColor:"rgba(255, 99, 132)",
						data:[data.급여지출, data.식비지출, data.용돈지출, data.생활지출], // 데이터2
						fill:true
					}]
				},
				options:{}
			});
		}
	});
});
</script>
</html>