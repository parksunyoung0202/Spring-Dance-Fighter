<%@page import="com.spring.entity.DancerVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	.btn{
		background-color : #ff3399;
		color : white;
		width: 10rem;
		height: 4rem;
		font-size: 20px;
		border-radius: 10px;
	}
	#myform fieldset{
	    display: inline-block; /* 하위 별점 이미지들이 있는 영역만 자리를 차지함.*/
	    border: 0; /* 필드셋 테두리 제거 */
	}
	#myform input[type=radio]{
	    display: none; /* 라디오박스 감춤 */
	}
	#myform label{
	    font-size: 1.8em; /* 이모지 크기 */
	    color: transparent; /* 기존 이모지 컬러 제거 */
	    text-shadow: 0 0 0 #f0f0f0; /* 새 이모지 색상 부여 */
	}
	#myform label:hover{
	    text-shadow: 0 0 0 #ff3399; /* 마우스 호버 */
	}
	#myform label:hover ~ label{
	    text-shadow: 0 0 0 #ff3399; /* 마우스 호버 뒤에오는 이모지들 */
	}
	#myform fieldset{
	    display: inline-block; /* 하위 별점 이미지들이 있는 영역만 자리를 차지함.*/
	    direction: rtl; /* 이모지 순서 반전 */
	    border: 0; /* 필드셋 테두리 제거 */
	}
	#myform fieldset legend{
	    text-align: left;
	}
	#myform input[type=radio]:checked ~ label{
	    text-shadow: 0 0 0 #ff3399; /* 마우스 클릭 체크 */
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
		
		<!-- ========= 사진 영역 ========= -->
		<div style="background-image: linear-gradient(25deg, #a63024, #b3385c, #bb4296, #ba4ed2); display:flex; height:400px;">
			<iframe style="margin: 40px 40px 40px 320px;" width="560" height="315" src="https://www.youtube.com/embed/_AL4IwHuHlY?autoplay=1&amp;mute=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; mut  encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			<div style="position:absolute; left:1020px; bottom:560px;">
				<div>
					<span class="hashtag hashtag-red" style="font-size: 15px; right:300px;">#HOT</span>
					<span class="hashtag hashtag-magenta" style="font-size: 15px;">#애니</span>
					<span class="hashtag hashtag-orange" style="font-size: 15px;">#인싸</span>
					<span class="hashtag hashtag-blue" style="font-size: 15px;">#Easy</span>
					<span class="hashtag hashtag-sky" style="font-size: 15px;">#2022 Best</span>
				</div>
				<br>
				<h1 style="font-size:35px; font-weight:400; font-family: 'Jeju Gothic', sans-serif; color:white;">올해의 제로투 챌린지</h1>
				<br><br>
				<a href="guide.do"><button class="btn">연습 시작하기</button></a>
				<a href="guide2.do"><button class="btn" style="margin-left:30px;">대회 참가하기</button></a>
			</div>
		</div>
		<br><br>
		<div style="display:flex;">
			<h1 style="left:170px;font-size:30px; font-weight:400; font-family: 'Jeju Gothic', sans-serif; color:#444444;">&#x1F4BF 챌린지 소개</h1>
			<h1 style="left:820px; font-size:30px; font-weight:400; font-family: 'Jeju Gothic', sans-serif; color:#444444;">&#x1F4DD 한줄평</h1>
		</div>
		<br>
		<div style="display:flex; margin-left:70px; font-size:18px; font-weight:300; font-family: 'Jeju Gothic', sans-serif;">
			<div>
				<div style="margin-left:120px;">
					2019년 말에 제작된 인터넷 밈. 서로 연관성이 없는 노래와 춤,<br>
					캐릭터인 제로투가 인터넷 커뮤니티와 SNS 를 거치면서 합쳐져 인기를 끌었다.<br>
					원본이 되는 춤은 일본 애니(메이터) 견본시장에 나왔던<br>
					뮤직 비디오 ME!ME!ME!에 잠깐 등장하는 에로틱한 힙 댄스를 기반으로 한<br>
					일명 ME!ME!ME! 댄스이다.
					<br><br>
				</div>
				<h1 style="left:100px;font-size:30px; font-weight:400; font-family: 'Jeju Gothic', sans-serif; color:#444444;">&#x1F481 아티스트</h1>
				<br>
				<img style="margin-left:120px; margin-right:20px; margin-bottom:100px; width:300px; height:300px;" src="resources/images/zeroro.jpg"/>
				
			</div>
			<div>
				<form name="myform" id="myform" method="post" action="commentInsert.do?writer=<%=loginVO.getId()%>" style="position:absolute; left:1010px; top:630px;">
				    <fieldset>
				        <input type="radio" name="rating" value="5" id="rate1"><label for="rate1">⭐</label>
				        <input type="radio" name="rating" value="4" id="rate2"><label for="rate2">⭐</label>
				        <input type="radio" name="rating" value="3" id="rate3"><label for="rate3">⭐</label>
				        <input type="radio" name="rating" value="2" id="rate4"><label for="rate4">⭐</label>
				        <input type="radio" name="rating" value="1" id="rate5"><label for="rate5">⭐</label>
				    </fieldset>
				    <br>
				    <div style="display:flex; width:1000px;">
					    <textarea rows="3" cols="60" placeholder="후기를 남겨주세요." name="content"></textarea>
					    <button style="width:120px; background-color:#ff80bf; border-color:black;">후기 등록</button>
				    </div>
				</form>
				<hr>
			</div>
			
			<table style="margin-top:200px; margin-left:285px; width:800px; height:100px; position:sticky; right:93px; bottom:10px;">
				<tr>
					<td style="font-size:20px; font-weight:400; font-family: 'Jeju Gothic', sans-serif; color:#444444;">
						BJ매생이 &ensp;
						<label for="rate1" style="color: transparent; text-shadow: 0 0 0 #ff3399;">⭐</label>
					    <label for="rate2" style="color: transparent; text-shadow: 0 0 0 #ff3399;">⭐</label>
					    <label for="rate3" style="color: transparent; text-shadow: 0 0 0 #ff3399;">⭐</label>
					    <label for="rate4" style="color: transparent; text-shadow: 0 0 0 #ff3399;">⭐</label>
					    <label for="rate5" style="color: transparent; text-shadow: 0 0 0 #ff3399;">⭐</label>
					</td>
				</tr>
				<tr>
					<td>
						매생매생매생
						<hr>		
					</td>
				</tr>
				<tr>
					<td style="font-size:20px; font-weight:400; font-family: 'Jeju Gothic', sans-serif; color:#444444;">
						내로 &ensp;
						<label for="rate1" style="color: transparent; text-shadow: 0 0 0 #ff3399;">⭐</label>
					    <label for="rate2" style="color: transparent; text-shadow: 0 0 0 #ff3399;">⭐</label>
					    <label for="rate3" style="color: transparent; text-shadow: 0 0 0 #ff3399;">⭐</label>
					    <label for="rate4" style="color: transparent; text-shadow: 0 0 0 #ff3399;">⭐</label>
					    <label for="rate5" style="color: transparent; text-shadow: 0 0 0 #ff3399;">⭐</label>
					</td>
				</tr>
				<tr>
					<td>
						제로투 쉬워서 꿀잼
						<hr>		
					</td>
				</tr>
			</table>
		</div>  
</body>
</html>