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
<title>addMember</title>
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="css/scrolling-nav.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$('#id').focus();
	$('#id').blur(function(){
		// 비동기요청으로 #id값을 서버에 보내고 #id값이 중복인지 아닌자...
		if($('#id').val() == '') {
			return;
		}
		$.ajax({
			url:'/admin/idCheck',
			type:'post',
			data:{id:$('#id').val()}, 
			success:function(data){
				if(data == 'yes') {
					alert($('#id').val()+'는 사용가능한 ID입니다');
					$('#pw').focus();
				} else {
					alert($('#id').val()+'는 이미 사용중인 ID입니다');
					$('#id').select;
					$('#id').focus(); 
				}
			}
		});
	});
});
</script>
</head>
<body id="page-top">
<!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="/admin/index">Main</a></a>
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
  <!-- 수입/지출 -->
	<section id="about" style="margin: 70px -40px;">
		<div class="container">
	    <div class="row">
	    <div class="col-lg-9 mx-auto">
		<h2>맴버 추가</h2>
		<p class="lead">
			<form method="post" action="/admin/addMember">
				<div class="col-lg-4">
					ID : <input class="form-control" type="text" id="id" name="id">
				</div>
				<div class="col-lg-4">
					PW : <input class="form-control" type="password" id="pw" name="pw">
				</div>
				<div>
					<button class="btn btn-primary" type="submit" id="addMember" style="margin: 13px;">addMember</button>
				</div>
			</form>
  		</p>
	</div>
    </div>
    </div>
	</section>

	<!-- Footer -->
 <footer class="py-5 bg-dark" style="margin: 0px -40px;">
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
</html>