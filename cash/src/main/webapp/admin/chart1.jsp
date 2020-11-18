<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>chart1</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/view/inc/menu.jsp"></jsp:include>
	<div class="container">
		<jsp:include page="/WEB-INF/view/inc/chartMenu.jsp"></jsp:include>
		<h1>년도별 지출 검색</h1>
		<h4>bar 차트</h4>
		<!-- 호출 -->
		<span>년도 검색:</span>
		<input type="text" id="year">
		<button id="totalOfMonthByYearChart" type="button">Chart1</button>
	</div>
	<!-- chart -->
	<div>
		<canvas id="chart1" class="container"></canvas>
	</div>
	<!-- table -->
	<div>
		
	</div>
</body>
<script>
$('#totalOfMonthByYearChart').click(function(){
	$.ajax({
		url:'/totalOfMonthByYear/'+$('#year').val(),
		type:'get',
		success:function(data){
			console.log(data);
			let ctx = $('#chart1');
			let chart = new Chart(ctx , {
				type:'bar', // chart 종류
				data:{
					labels:['1','2','3','4','5','6','7','8','9','10','11','12'],
					datasets:[{
						label:'2019년 월별 지출',
						backgroundColor: [
			                'rgba(255, 99, 132, 0.2)',
			                'rgba(54, 162, 235, 0.2)',
			                'rgba(255, 206, 86, 0.2)',
			                'rgba(75, 192, 192, 0.2)',
			                'rgba(153, 102, 255, 0.2)',
			                'rgba(255, 159, 64, 0.2)',
			                'rgba(255, 99, 132, 0.2)',
			                'rgba(54, 162, 235, 0.2)',
			                'rgba(255, 206, 86, 0.2)',
			                'rgba(75, 192, 192, 0.2)',
			                'rgba(153, 102, 255, 0.2)',
			                'rgba(255, 159, 64, 0.2)'
			            ],
						borderColor: [
			                'rgba(255, 99, 132, 1)',
			                'rgba(54, 162, 235, 1)',
			                'rgba(255, 206, 86, 1)',
			                'rgba(75, 192, 192, 1)',
			                'rgba(153, 102, 255, 1)',
			                'rgba(255, 159, 64, 1)',
			                'rgba(255, 99, 132, 1)',
			                'rgba(54, 162, 235, 1)',
			                'rgba(255, 206, 86, 1)',
			                'rgba(75, 192, 192, 1)',
			                'rgba(153, 102, 255, 1)',
			                'rgba(255, 159, 64, 1)'
			            ],
			            // data속성의 배열값은 ajax호출 후 결과값으로 채워야 한다.
						data:[data.january, data.february, data.march, data.april,
							  data.may, data.june,data.july,data.august,
							  data.september, data.october, data.november, data.december],
						borderWidth: 1
					}]
				}, // chart안에 사용되는 모든 데이터
				options:{
					}
			});
		}
	});
});
</script>
</html>