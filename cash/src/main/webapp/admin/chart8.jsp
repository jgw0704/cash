<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>chart8</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/view/inc/menu.jsp"></jsp:include>
	<div class="container">
		<jsp:include page="/WEB-INF/view/inc/chartMenu.jsp"></jsp:include>
		<h1>총 년도(18, 19, 20)의 월별 수입/지출</h1>
		<h4>scatter 차트</h4>
		<span>월 검색:</span>
		<input type="text" id="month">
		<button id="inAndOutByMonthChart" type="button">Chart8</button>
	</div>
	<!-- chart -->
	<div>
		<canvas id="chart8"></canvas>
	</div>
	<!-- table -->
	<div>
		
	</div>
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