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

<style>
	@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
	
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
	
	
	.btn_like {
	  position: absolute;
	  right:10px;
	  top:215px;
	  margin: 0px auto;
	  display: block;
	  width: 44px;
	  height: 44px;
	  border: 1px solid #e8e8e8;
	  border-radius: 44px;
	  font-family: notokr-bold,sans-serif;
	  font-size: 14px;
	  line-height: 16px;
	  background-color: #fff;
	  color: #DD5D54;
	  box-shadow: 0 2px 2px 0 rgba(0,0,0,0.03);
	  transition: border .2s ease-out,box-shadow .1s ease-out,background-color .4s ease-out;
	  cursor: pointer;
	}
	
	.btn_like:hover {
	  border: 1px solid rgba(228,89,89,0.3);
	  background-color: rgba(228,89,89,0.02);
	  box-shadow: 0 2px 4px 0 rgba(228,89,89,0.2);
	}
	
	.btn_unlike .img_emoti {
	    background-position: -30px -120px;
	}
	
	.img_emoti {
	    display: inline-block;
	    overflow: hidden;
	    font-size: 0;
	    line-height: 0;
	    background: url(https://mk.kakaocdn.net/dn/emoticon/static/images/webstore/img_emoti.png?v=20180410) no-repeat;
	    text-indent: -9999px;
	    vertical-align: top;
	    width: 20px;
	    height: 17px;
	    margin-top: 1px;
	    background-position: 0px -120px;
	    text-indent: 0;
	}
	
	.btn_like .ani_heart_m {
	    margin: -63px 0 0 -63px;
	}
	
	.ani_heart_m {
	    display: block;
	    position: absolute;
	    top: 50%;
	    left: 50%;
	    width: 125px;
	    height: 125px;
	    margin: -63px 0 0 -63px;
	    pointer-events: none;
	}
	
	.ani_heart_m.hi {
	    background-image: url(https://mk.kakaocdn.net/dn/emoticon/static/images/webstore/retina/zzim_on_m.png);
	    -webkit-background-size: 9000px 125px;
	    background-size: 9000px 125px;
	    animation: on_m 1.06s steps(72);
	}
	
	.ani_heart_m.bye {
	    background-image: url(https://mk.kakaocdn.net/dn/emoticon/static/images/webstore/retina/zzim_off_m.png);
	    -webkit-background-size: 8250px 125px;
	    background-size: 8250px 125px;
	    animation: off_m 1.06s steps(66);
	}
	
	@keyframes on_m {
	  from { background-position: 0 }
	  to { background-position: -9000px }
	}
	
	@keyframes off_m {
	  from { background-position: 0 }
	  to { background-position: -8250px }
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
		
		<!-- ================================= -->
		
		<!-- ========= 사진 영역 ========= -->
		<div style="background-image: linear-gradient(to top, #7028e4 0%, #e5b2ca 100%); display:flex;">
			<div style="margin-right: 750px;"><h1 style="font-size:40px; font-weight:600; font-family: 'Jeju Gothic', sans-serif; color:#11114e; left:400px; top:160px;">당신을 위한<br>1:1 AI 댄스 트레이닝 코스</h1></div>
			<img src="resources/images/hoho.png" alt="#" style="height:400px; width:350px; left:100px;"/>
		</div>
		
		<!-- ======== 코스 탐색 ======== -->
		<br><h1 class="course">코스 탐색</h1>
		
		<div style="display:flex;">
		
			<!-- ========== 새삥 챌린지 ========== -->
			<table class="card" style="margin-left: 190px;">
				<tr style="background-image: url('resources/images/sapping.png');"><td style="width:260px; height: 135px;"></td></tr>
				<tr><th><h3 class="title"><a href="sabbingComments.do">새삥 챌린지</a></h3></th></tr>
				<tr>
					<td>
						<div style="padding: 15px;">
							<span class="hashtag hashtag-red" style="margin-bottom:10px;">#HOT</span>
							<span class="hashtag hashtag-magenta">#Hard</span>
							<span class="hashtag hashtag-orange">#스맨파</span>
							<span class="hashtag hashtag-blue">#지코</span>
							<span class="hashtag hashtag-sky">#위댐보이즈</span>
							<button type="button" class="btn_like">
							  <span class="img_emoti">좋아요</span>
							  <span class="ani_heart_m"></span>
							</button>
						</div>
					</td>
				</tr>
			</table>
			<!-- ========================== -->
			 
			<table class="card">
				<tr style="background-image: url('resources/images/zerotwo.png');"><td style="width:260px; height: 135px;"></td></tr>
				<tr><th><h3 class="title"><a href="zerotwo.do">제로투 챌린지</a></h3></th></tr>
				<tr>
					<td>
						<div style="padding: 15px;">
							<span class="hashtag hashtag-green" style="margin-bottom:10px;">#인싸</span>
							<span class="hashtag hashtag-blue">#애니</span>
							
							<span class="hashtag hashtag-sky">#2022 Best</span>
							<span class="hashtag hashtag-red">#HOT</span>
							<span class="hashtag hashtag-orange">#Easy</span>
							<button type="button" class="btn_like">
							  <span class="img_emoti">좋아요</span>
							  <span class="ani_heart_m"></span>
							</button>
						</div>
					</td>
				</tr>
			</table>
			<table class="card">
				<tr style="background-image: url('resources/images/heymama.png');"><td style="width:260px; height: 135px;"></td></tr>
				<tr><th><h3 class="title">Hey Mama 챌린지</h3></th></tr>
				<tr>
					<td>
						<div style="padding: 15px;">
							<span class="hashtag hashtag-green" style="margin-bottom:10px;">#절도</span>
							<span class="hashtag hashtag-magenta">#Hard</span>
							<span class="hashtag hashtag-orange">#트월킹</span>
							<span class="hashtag hashtag-blue">#노제</span>
							<span class="hashtag hashtag-sky">#스우파</span>
							<button type="button" class="btn_like">
							  <span class="img_emoti">좋아요</span>
							  <span class="ani_heart_m"></span>
							</button>
						</div>
					</td>
				</tr>
			</table>
			<table class="card">
				<tr style="background-image: url('resources/images/anysong.png');"><td style="width:260px; height: 135px;"></td></tr>
				<tr><th><h3 class="title">아무노래 챌린지</h3></th></tr>
				<tr>
					<td>
						<div style="padding: 15px;">
							<span class="hashtag hashtag-green" style="margin-bottom:10px;">#신남</span>
							<span class="hashtag hashtag-magenta">#남여</span>
							<span class="hashtag hashtag-orange">#Easy</span>
							<span class="hashtag hashtag-blue">#지코</span>
							<span class="hashtag hashtag-sky">#2020 Best</span>
							<button type="button" class="btn_like">
							  <span class="img_emoti">좋아요</span>
							  <span class="ani_heart_m"></span>
							</button>
						</div>
					</td>
				</tr>
			</table>
			<table class="card">
				<tr style="background-image: url('resources/images/soop.png');"><td style="width:260px; height: 135px;"></td></tr>
				<tr><th><h3 class="title">치킨누들수프 챌린지</h3></th></tr>
				<tr>
					<td>
						<div style="padding: 15px;">
							<span class="hashtag hashtag-green" style="margin-bottom:10px;">#Normal</span>
							<span class="hashtag hashtag-magenta">#힙합</span>
							<span class="hashtag hashtag-orange">#제이홉</span>
							<span class="hashtag hashtag-blue">#BTS</span>
							<span class="hashtag hashtag-sky">#월드클래스</span>
							<button type="button" class="btn_like">
							  <span class="img_emoti">좋아요</span>
							  <span class="ani_heart_m"></span>
							</button>
						</div>
					</td>
				</tr>
			</table>
		</div>
		
		<div style="display:flex;">
			<table class="card" style="margin-left: 190px;">
				<tr style="background-image: url('resources/images/law.png');"><td style="width:260px; height: 135px;"></td></tr>
				<tr><th><h3 class="title">Law 챌린지</h3></th></tr>
				<tr>
					<td>
						<div style="padding: 15px;">
							<span class="hashtag hashtag-green" style="margin-bottom:10px;">#고수만</span>
							<span class="hashtag hashtag-magenta">#Hard</span>
							<span class="hashtag hashtag-orange">#칼각</span>
							<span class="hashtag hashtag-blue">#엠비셔스</span>
							<span class="hashtag hashtag-sky">#윤미래</span>
							<button type="button" class="btn_like">
							  <span class="img_emoti">좋아요</span>
							  <span class="ani_heart_m"></span>
							</button>
						</div>
					</td>
				</tr>
			</table>
			<table class="card">
				<tr style="background-image: url('resources/images/gasina.png');"><td style="width:260px; height: 135px;"></td></tr>
				<tr><th><h3 class="title">가시나 챌린지</h3></th></tr>
				<tr>
					<td>
						<div style="padding: 15px;">
							<span class="hashtag hashtag-green" style="margin-bottom:10px;">#Normal</span>
							<span class="hashtag hashtag-magenta">#여성</span>
							<span class="hashtag hashtag-orange">#Sexy</span>
							<span class="hashtag hashtag-blue">#선미</span>
							<span class="hashtag hashtag-sky">#코레오</span>
							<button type="button" class="btn_like">
							  <span class="img_emoti">좋아요</span>
							  <span class="ani_heart_m"></span>
							</button>
						</div>
					</td>
				</tr>
			</table>
			<table class="card">
				<tr style="background-image: url('resources/images/sweaty.png');"><td style="width:260px; height: 135px;"></td></tr>
				<tr><th><h3 class="title">Sweaty 챌린지</h3></th></tr>
				<tr>
					<td>
						<div style="padding: 15px;">
							<span class="hashtag hashtag-green" style="margin-bottom:10px;">#왁킹</span>
							<span class="hashtag hashtag-magenta">#Hard</span>
							<span class="hashtag hashtag-orange">#Gray</span>
							<span class="hashtag hashtag-blue">#원밀리언</span>
							<span class="hashtag hashtag-sky">#미들계급</span>
							<button type="button" class="btn_like">
							  <span class="img_emoti">좋아요</span>
							  <span class="ani_heart_m"></span>
							</button>
						</div>
					</td>
				</tr>
			</table>
			<table class="card">
				<tr style="background-image: url('resources/images/kokain.png');"><td style="width:260px; height: 135px;"></td></tr>
				<tr><th><h3 class="title">코카인 챌린지</h3></th></tr>
				<tr> 
					<td>
						<div style="padding: 15px;">
							<span class="hashtag hashtag-green" style="margin-bottom:10px;">#허성태</span>
							<span class="hashtag hashtag-magenta">#성인</span>
							<span class="hashtag hashtag-orange">#Easy</span>
							<span class="hashtag hashtag-blue">#오까인</span>
							<span class="hashtag hashtag-sky">#매생이</span>
							<button type="button" class="btn_like">
							  <span class="img_emoti">좋아요</span>
							  <span class="ani_heart_m"></span>
							</button>
						</div>
					</td>
				</tr>
			</table>
			<table class="card">
				<tr style="background-image: url('resources/images/whistle.png');"><td style="width:260px; height: 135px;"></td></tr>
				<tr><th><h3 class="title">Whistle 챌린지</h3></th></tr>
				<tr>
					<td>
						<div style="padding: 15px;">
							<span class="hashtag hashtag-green" style="margin-bottom:10px;">#힙합</span>
							<span class="hashtag hashtag-magenta">#Hard</span>
							<span class="hashtag hashtag-orange">#고수만</span>
							<span class="hashtag hashtag-blue">#YGX</span>
							<span class="hashtag hashtag-sky">#루키계급</span>
							<button type="button" class="btn_like">
							  <span class="img_emoti">좋아요</span>
							  <span class="ani_heart_m"></span>
							</button>
						</div>
					</td>
				</tr>
			</table>
		</div>
		
		<script src="http://code.jquery.com/jquery-latest.js"></script>
		<script>
			$('button').click(function(){
				  if($(this).hasClass('btn_unlike')){
				    $(this).removeClass('btn_unlike');
				    $('.ani_heart_m').removeClass('hi');
				    $('.ani_heart_m').addClass('bye');
				  }
				  else{
				    $(this).addClass('btn_unlike');
				    $('.ani_heart_m').addClass('hi');
				    $('.ani_heart_m').removeClass('bye');
				  }
				});
		</script>
		
		
</body>
</html>