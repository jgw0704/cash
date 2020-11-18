<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>chart5</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/view/inc/menu.jsp"></jsp:include>
	<div class="container">
		<jsp:include page="/WEB-INF/view/inc/chartMenu.jsp"></jsp:include>
		<h1>년도별 용돈수입 확인</h1>
		<h4>polar 차트</h4>
		<span>년도 검색:</span>
		<input type="text" id="year">
		<button id="monthInMoneyByYearChart" type="button">Chart5</button>
	</div>
	<!-- chart -->
	<div>
		<canvas id="chart5" class="container"></canvas>
	</div>
	<!-- table -->
	<div>
	</div>
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