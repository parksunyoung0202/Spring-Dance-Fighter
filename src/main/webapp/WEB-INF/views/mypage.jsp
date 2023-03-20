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
<link rel="stylesheet" href="resources/css/mypage.css">
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
<style>
.card {
		border:2px solid #f0f0f0;
		border-radius:10px;
		width:260px;
		height:270px;
		margin:30px;	
	}
	
	.title {
		text-align: center;
		font-size:22px;
		font-weight:2em;
		font-family: 'Jeju Gothic', sans-serif;
		color:#11114e;
		top:13px;
	}
	.course {
		text-align: center;
		font-size:28px;
		font-weight:580;
		font-family: 'Jeju Gothic', sans-serif;
		color:#11114e;
		right:15px;	
	}
	.hashtag {

	}
</style>
</head>
<body>
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
									<li class="nav-item"><a class="nav-link" href="mypage.do"style="color:#11114e;">마이페이지</a></li>
									<li class="nav-item"><a class="nav-link" href="practice.do"style="color:#11114e;">코스 탐색</a></li>
									<li class="nav-item"><a class="nav-link" href="rankingList.do?idx=1"style="color:#11114e;">랭킹</a></li>
									
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
		
		<!-- ---------------------------------- -->
		
		<div id="div" style="display:flex;">
			<div id="leftdiv">
				<div id="nick">
					DanceMaster
				</div>
				<div id="report" onclick="report()">
					&emsp;&emsp;&#x1F4CA 연습리포트
				</div> 
				<div id="like" onclick="like()">
					&emsp;&emsp;&#x1F49C 좋아요
				</div>
				<div id="myreview" onclick="myreview()">
					&emsp;&emsp;&#x1F4DD 내 수강 후기
				</div>
				<div id="myreview" onclick="myreview()">
					&emsp;&emsp;&#x1F3C6 내 랭킹
				</div>
				<div id="myreview" onclick="myreview()">
					&emsp;&emsp;&#x1F64E 내 정보 변경
				</div>
			</div>
			   
			<div id="rightdiv"> 
				<div id="reportdiv">
					<div id="month">
						<select style="width:70px; margin-left:30px;"><option value="d">&emsp;11</option></select> 월의 연습 시간 (분)
						<div id="yeargraph">
							<div class="box">
								<div class="container">61</div>
							    <div class="container">42</div>
							    <div class="container">85</div>
							    <div class="container">53</div>
							    <div class="container">37</div>
							    <div class="container">79</div>
							    <div class="container">70</div>
							    <div class="skill-name"></div>
							    <div class="skill-name"></div>
							    <div class="skill-name"></div>
							    <div class="skill-name"></div>
							    <div class="skill-name"></div>
							    <div class="skill-name"></div>
							    <div class="skill-name"></div>
							    <div class="box-copy"></div>
						    </div> 
						</div>
					</div> 
					
				</div> 
				<div id="likediv" style="display:flex;">
					<div id="liketitle">
					<br>
						&emsp;&emsp;&emsp;좋아요 보관함
					
					</div> 
					<div id="likelist">
						<div style="display:flex;">

							<table class="card" style="margin-left: 190px;">
								<tr style="background-image: url('resources/images/sapping.png');"><td style="width:260px; height: 135px;"></td></tr>
		 						<tr><th><h3 class="title"><a href="sabbingComments.do">새삥 챌린지</a></h3></th></tr>
								<tr>
									<td>
										<div style="padding: -10px; margin-left:10px;">
											<span class="hashtag hashtag-green" style="margin-bottom:10px;">#힙합</span>
											<span class="hashtag hashtag-magenta">#Hard</span>
											<span class="hashtag hashtag-orange">#스맨파</span>
											<span class="hashtag hashtag-blue">#지코</span>
											<span class="hashtag hashtag-sky">#위댐보이즈</span>
											<span class="hashtag hashtag-red">#HOT</span>
											<b style="position:absolute; right:0px; top:225px;">&#x1F497</b>
										</div>
									</td>
								</tr>
							</table>
							<!-- ========================== -->
							
							<table class="card">
								<tr style="background-image: url('resources/images/zerotwo.png');"><td style="width:260px; height: 135px;"></td></tr>
								<tr><th><h3 class="title">제로투 챌린지</h3></th></tr>
								<tr>
									<td>
										<div style="padding:0px 0px 50px 0px; margin-left:10px;">
											<span class="hashtag hashtag-green" style="margin-bottom:-20px;">#인싸</span>
											<span class="hashtag hashtag-magenta">#Easy</span>					
											<span class="hashtag hashtag-sky">#베스트</span>
											<span class="hashtag hashtag-red">#HOT</span>
											<span class="hashtag hashtag-orange">#고수만</span>
											<span class="hashtag hashtag-blue">#지코</span>
											&#x1F497
										</div>
									</td>
								</tr>
							</table>
							<table class="card">
								<tr style="background-image: url('resources/images/heymama.png');"><td style="width:260px; height: 135px;"></td></tr>
								<tr><th><h3 class="title">Hey Mama 챌린지</h3></th></tr>
								<tr> 
									<td>
										<div style="padding: -15px; margin-left:10px;">
											<span class="hashtag hashtag-green" style="margin-bottom:10px;">#힙합</span>
											<span class="hashtag hashtag-magenta">#인싸</span>
											<span class="hashtag hashtag-orange">#고수만</span>
											<span class="hashtag hashtag-blue">#지코</span>
											<span class="hashtag hashtag-sky">#베스트</span>
											<span class="hashtag hashtag-red">#유튜브</span>
											<b style="position:absolute; right:0px; top:225px;">&#x1F497</b>
										</div>
									</td>
								</tr>
							</table>
							<table class="card">
								<tr style="background-image: url('resources/images/anysong.png');"><td style="width:260px; height: 135px;"></td></tr>
								<tr><th><h3 class="title">아무노래 챌린지</h3></th></tr>
								<tr>
									<td>
										<div style="padding: -15px; margin-left:10px;">
											<span class="hashtag hashtag-green" style="margin-bottom:10px;">#힙합</span>
											<span class="hashtag hashtag-magenta">#인싸</span>
											<span class="hashtag hashtag-orange">#고수만</span>
											<span class="hashtag hashtag-blue">#지코</span>
											<span class="hashtag hashtag-sky">#베스트</span>
											<span class="hashtag hashtag-red">#유튜브</span>
											<b style="position:absolute; right:0px; top:225px;">&#x1F497</b>
										</div>
									</td>
								</tr>
							</table>
						</div>	
					</div>
				</div>
				<div id="myreviewdiv">
				 	<div id="liketitle2">
					<br>
						&emsp;&emsp;&emsp;내 댓글 보관함<br>
					</div>
					<div style="margin-left:90px;">
						<br>
						<table style="border:1px solid #f0f0f0; width:800px; padding:100px;">
							<tr style="height:60px;">
								<td style="font-size:20px; font-weight:400; font-family: 'Jeju Gothic', sans-serif; color:#444444;">&emsp;
									<label for="rate1" style="color: transparent; text-shadow: 0 0 0 #1cad78;">⭐</label>
							        <label for="rate2" style="color: transparent; text-shadow: 0 0 0 #1cad78;">⭐</label>
							        <label for="rate3" style="color: transparent; text-shadow: 0 0 0 #1cad78;">⭐</label>
							        <label for="rate4" style="color: transparent; text-shadow: 0 0 0 #1cad78;">⭐</label>
							        <label for="rate5" style="color: transparent; text-shadow: 0 0 0 #1cad78;">⭐</label>
							        &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;2022년 11월 25일 18:00:01
								</td>
							</tr>
							<tr style="height:60px;">
								<td style="font-size:21px;">
									<b style="font-size:26px; color:#1cad78;">&emsp;새삥 챌린지</b>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;나는 지코가 아니였다.&ensp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&#x274E
									<hr>
								</td>
								
							</tr>
							
							<tr style="height:40px;">
								<td style="font-size:20px; font-weight:400; font-family: 'Jeju Gothic', sans-serif; color:#444444;">&emsp;
									<label for="rate1" style="color: transparent; text-shadow: 0 0 0 #ec0a82;">⭐</label>
							        <label for="rate2" style="color: transparent; text-shadow: 0 0 0 #ec0a82;">⭐</label>
							        <label for="rate3" style="color: transparent; text-shadow: 0 0 0 #ec0a82;">⭐</label>
							        <label for="rate4" style="color: transparent; text-shadow: 0 0 0 #ec0a82;">⭐</label>
							        <label for="rate5" style="color: transparent; text-shadow: 0 0 0 #ec0a82;">⭐</label>
							        &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;2022년 11월 27일 13:30:41
								</td>
							</tr>
							<tr style="height:60px;">
								<td style="font-size:21px;">
									<b style="font-size:26px; color:#ec0a82;">&emsp;제로투 챌린지</b>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;내일 다시 도전!!&ensp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&ensp;&emsp;&#x274E
									<hr>
								</td>
								
							</tr>
							
							<tr style="height:40px;">
								<td style="font-size:20px; font-weight:400; font-family: 'Jeju Gothic', sans-serif; color:#444444;">&emsp;
									<label for="rate1" style="color: transparent; text-shadow: 0 0 0 orange;">⭐</label>
							        <label for="rate2" style="color: transparent; text-shadow: 0 0 0 orange;">⭐</label>
							        <label for="rate3" style="color: transparent; text-shadow: 0 0 0 orange;">⭐</label>
							        <label for="rate4" style="color: transparent; text-shadow: 0 0 0 orange;">⭐</label>
							        <label for="rate5" style="color: transparent; text-shadow: 0 0 0 orange;">⭐</label>
							        &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;2022년 12월 1일 09:21:34
								</td>
							</tr>
							<tr style="height:60px;">
								<td style="font-size:21px;">
									<b style="font-size:26px; color:orange;">&emsp;HeyMama 챌린지</b>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;춤이 많이 어렵네요..&ensp;&emsp;&ensp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&#x274E
									
								</td>
								
							</tr>
						</table>
					
					</div>
				</div>
			</div>
		</div>
		
		<script>
			function report() {
				
				const report = document.getElementById('reportdiv');
				const like = document.getElementById('likediv');
				const myreview = document.getElementById('myreviewdiv');
				const likeback = document.getElementById('like');
				const reportback = document.getElementById('report');
				const myreviewback = document.getElementById('myreview');
				
				report.style.display = 'block';
				like.style.display = 'none';
				myreview.style.display = 'none';
				
				likeback.style.background = "white";
				reportback.style.background = "#e2b9ff";
				myreviewback.style.background = "white";
			}
			
			function like() {

				const report = document.getElementById('reportdiv');
				const like = document.getElementById('likediv');
				const myreview = document.getElementById('myreviewdiv');
				const likeback = document.getElementById('like');
				const reportback = document.getElementById('report');
				const myreviewback = document.getElementById('myreview');
				
				like.style.display = 'block';
				report.style.display = 'none';
				myreview.style.display = 'none';
				
				likeback.style.background = "#e2b9ff";
				reportback.style.background = "white";
				myreviewback.style.background = "white";
			}
			
			function myreview() {

				const report = document.getElementById('reportdiv');
				const like = document.getElementById('likediv');
				const myreview = document.getElementById('myreviewdiv');
				const likeback = document.getElementById('like');
				const reportback = document.getElementById('report');
				const myreviewback = document.getElementById('myreview');
				
				myreview.style.display = 'block';
				report.style.display = 'none';
				like.style.display = 'none';
				
				likeback.style.background = "white";
				reportback.style.background = "white";
				myreviewback.style.background = "#e2b9ff";
			}
		</script>
</body>
</html>