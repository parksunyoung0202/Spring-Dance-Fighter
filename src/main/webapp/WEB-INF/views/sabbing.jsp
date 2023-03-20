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
		background-color : #1cad78;
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
	    text-shadow: 0 0 0 #1cad78; /* 마우스 호버 */
	}
	#myform label:hover ~ label{
	    text-shadow: 0 0 0 #1cad78; /* 마우스 호버 뒤에오는 이모지들 */
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
	    text-shadow: 0 0 0 #1cad78; /* 마우스 클릭 체크 */
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
		<div style="background-image: linear-gradient(to right, #43e97b 0%, #38f9d7 100%); display:flex; height:400px;">
			<iframe style="margin: 40px 40px 40px 320px;" width="560" height="315" src="https://www.youtube.com/embed/L8rdqzQ9n6o" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			<div style="position:absolute; left:1020px; bottom:560px;">
				<div>
					<span class="hashtag hashtag-red" style="font-size: 15px; right:300px;">#HOT</span>
					<span class="hashtag hashtag-magenta" style="font-size: 15px;">#Hard</span>
					<span class="hashtag hashtag-orange" style="font-size: 15px;">#스맨파</span>
					<span class="hashtag hashtag-blue" style="font-size: 15px;">#지코</span>
					<span class="hashtag hashtag-sky" style="font-size: 15px;">#위댐보이즈</span>
				</div>
				<br>
				<h1 style="font-size:35px; font-weight:400; font-family: 'Jeju Gothic', sans-serif; color:#444444;">화제의 새삥 챌린지</h1>
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
					<스트릿 맨 파이터> 계급 미션의 꽃, 리더 계급을 위해 지코와 호미들이 뭉쳤다.<br>
					‘프레시한 오리지널리티가 있다면 유행과 상관없이 누구보다 빛나는 개성을 갖게 될 것’이라는<br>
					메시지를 전하는 이 곡은 강렬하면서도 세련된 비트와 댐핑감 넘치는 베이스,<br>
					듣는 순간 단박에 귀를 사로잡는 훅과 함께 지코 & 호미들의 호흡이 더해져 더욱 인상적인 트랙이다.
					<br><br>
				</div>
				<h1 style="left:100px;font-size:30px; font-weight:400; font-family: 'Jeju Gothic', sans-serif; color:#444444;">&#x1F481 아티스트</h1>
				<br>
				<img style="margin-left:120px; margin-right:20px; margin-bottom:100px; width:300px; height:300px;" src="resources/images/zicoprofile.jpg"/>
				<img style="margin-bottom:100px; width:300px; height:300px;" src="resources/images/bataprofile.jpg"/>
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
					    <button style="width:120px; background-color:#8cffc6; border-color:black;">후기 등록</button>
				    </div>
				</form>
				<hr>
			</div>
			
			<table style="margin-top:200px; margin-left:85px; width:800px; height:100px; position:sticky; right:93px; bottom:10px;">
				<c:forEach items="${list}" var="sabbing">
					<tr>
						<td style="font-size:20px; font-weight:400; font-family: 'Jeju Gothic', sans-serif; color:#444444;">
							${sabbing.writer} &ensp;
							<label for="rate1" style="color: transparent; text-shadow: 0 0 0 #1cad78;">⭐</label>
					        <label for="rate2" style="color: transparent; text-shadow: 0 0 0 #1cad78;">⭐</label>
					        <label for="rate3" style="color: transparent; text-shadow: 0 0 0 #1cad78;">⭐</label>
					        <label for="rate4" style="color: transparent; text-shadow: 0 0 0 #1cad78;">⭐</label>
					        <label for="rate5" style="color: transparent; text-shadow: 0 0 0 #1cad78;">⭐</label>
						</td>
					</tr>
					<tr>
						<td>
							${sabbing.content}
							<hr>		
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>  
</body>
</html>