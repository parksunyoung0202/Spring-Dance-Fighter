<%@page import="com.spring.entity.DancerVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- mobile metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- site metas -->
<title>just challenge</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<!-- bootstrap css -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet" href="resources/css/style.css">
<!-- Responsive-->
<link rel="stylesheet" href="resources/css/responsive.css">
<!-- fevicon -->
<link rel="icon" href="resources/images/fevicon.png" type="image/gif" />
<!-- Scrollbar Custom CSS -->
<link rel="stylesheet"
	href="resources/css/jquery.mCustomScrollbar.min.css">
<!-- Tweaks for older IEs-->
<link rel="stylesheet"
	href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
	media="screen">
</head>
<!-- body -->
<body class="main-layout" style="overflow: hidden;">
	<!-- loader  
	<div class="loader_bg">
		<div class="loader">
			<img src="resources/images/loading.gif" alt="#" />
		</div>
	</div>
	-->
	<!-- end loader -->
	<!-- header -->
	<header class="full_bg">
		<!-- header inner -->
		<div class="header">
			<div class="container-fluid">
				<div class="row">
					<div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
						<div class="full">
							<div class="center-desk">
								<div class="logo">
									<a href="main.do"><img src="resources/images/logo.png"
										alt="#" /></a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
						<nav class="navigation navbar navbar-expand-md navbar-dark ">
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#navbarsExample04"
								aria-controls="navbarsExample04" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>
							<div class="collapse navbar-collapse" id="navbarsExample04">
								<ul class="navbar-nav mr-auto">
									<li class="nav-item"><a class="nav-link" href="mypage.do">마이페이지</a></li>
									<li class="nav-item"><a class="nav-link" href="practice.do">코스 탐색</a></li>
									<li class="nav-item"><a class="nav-link" href="rankingList.do?idx=1">랭킹</a></li>
									
									<% DancerVO loginVO = (DancerVO)session.getAttribute("loginVO"); %>
									<% if (loginVO == null) { %>
									<li class="nav-item active"><a class="nav-link" href="login.do">로그인</a></li>
									<%}else { %>
									<li class="nav-item active"><a class="nav-link" href="logout.do">로그아웃</a></li>
									<%} %>
									
								</ul>
								
							</div>
							
						</nav>
						
					</div>
				</div>
			</div>
		</div>
		<div style="display: flex; flex-direction: row; height: 100%;">
			<div class="left_div" >
				<h1>
					<br><br><br><br><br>
					언제 어디서든<br>나만의 챌린지 댄스<br><br><br>
					<a href="practice.do"><button>코스 탐색</button></a>
				</h1>
				<h2><br><br>언제 어디서나 당신의 춤을 책임지는 AI연습 서비스,<br>저스트 챌린지<br></h2>
			</div>
			<div class="right_div"></div>
		</div>

	</header>

	<!-- Javascript files-->
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/bootstrap.bundle.min.js"></script>
	<script src="resources/js/jquery-3.0.0.min.js"></script>
	<!-- sidebar -->
	<script src="resources/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="resources/js/custom.js"></script>
</body>
</html>