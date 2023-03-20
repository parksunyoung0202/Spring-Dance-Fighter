<%@page import="java.util.List"%>
<%@page import="com.spring.entity.rankingVO"%>
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
<link rel="stylesheet" href="resources/css/ranking.css">
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
	
	#nonrankdiv {
		width:250px;
		font-size:1.5em;
		font-weight: 400;
	}
	#nonnamediv {
		font-weight: 400;
		font-size:1.2em;
	}
	#nonscorediv { 
		font-weight: 400;
		font-size:1.3em;
	}
	
	#rankdiv {
		width:200px;
		font-size:2.2em;
	}
	#namediv {

		font-size:1.3em;
	} 
	#scorediv { 
		width:300px;
		font-size:1.3em;
	}
	th {
		padding:10px;
		font-size:20px;
		text-align: center;
	} 
	td {
		border-color: none;
		height:10px;
		font-weight: 600;
		text-align: center;
	}
	#slide1 > td {
		background-image: url('resources/images/ggold3.png');
		background-size: cover;
	}
	#slide2 > td{ 
		background-image: url('resources/images/silver.png');
		background-size: cover;
	}
	#slide3 > td{
		background-image: url('resources/images/bronze.png');
		background-size: cover;
	}
	.hashtag {
	    background: #fafafa;
	    border: 4px solid #d9d9d9;
	    border-radius: 5px;	    	 
	    font-size: 20px;
	    font-weight:550;
	    height: 45px;
	    width:129px;
	    margin:55px 18px 18px 12px;
	    padding:5px;
	}
	
	.left {
		margin-left:165px;
	}
	
	.hashtag-green {
		background: #f6ffed;
	    border-color: #b7eb8f;
	    color: #389e0d;
	}
	.hashtag-magenta {
			background: #fff0f6;
		    border-color: #ffadd2;
		    color: #c41d7f;
		}
	.hashtag-blue {
			background: #f0f5ff;
		    border-color: #adc6ff;
		    color: #1d39c4;
		}
	.hashtag-orange {
			background: #fff7e6;
		    border-color: #ffd591;
		    color: #d46b08;
		}
	.hashtag-sky {
			background: #e6fffb;
	    	border-color: #87e8de;
	    	color: #08979c;
		}
	.hashtag-red {
			background: #fff1f0;
		    border-color: #ffa39e;
		    color: #cf1322;
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
									<li class="nav-item"><a class="nav-link" href="mypage.do" style="color:#11114e;">마이페이지</a></li>
									<li class="nav-item"><a class="nav-link" href="practice.do" style="color:#11114e;">코스 탐색</a></li>
									<li class="nav-item"><a class="nav-link" href="rankingList.do?idx=1" style="color:#11114e;">랭킹</a></li>
									
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
		<div style="display:flex; background-image: linear-gradient(25deg, #7fc5e7, #a8cfc1, #c4d999, #d8e46d)">
			<div style="margin-right: 850px;"><h1 style="font-size:45px; font-weight:600; font-family: 'Jeju Gothic', sans-serif; color:#11114e; left:380px; top:140px;"><br>챌린지댄스 랭킹</h1></div>
			
			<img src="resources/images/aaa.png" alt="#" style="width:1000px; position:absolute; height:400px; left:830px;"/>
			<img src="resources/images/rank.png" alt="#" style="height:400px; left:350px;"/>
		</div>
		 
		<!-- ============================ -->

		<div id="select">
			<button class="hashtag hashtag-green left" onclick="location.href='rankingList.do?idx=1'">새삥</button>
			<button class="hashtag hashtag-magenta" onclick="location.href='rankingList.do?idx=2'">제로투</button>
			<button class="hashtag hashtag-sky">Hey Mama</span>
			<button class="hashtag hashtag-blue">아무노래</button> 
			<button class="hashtag hashtag-orange">치킨누들수프</button>
			<button class="hashtag hashtag-green">Law</button>
			<button class="hashtag hashtag-blue">가시나</button>
			<button class="hashtag hashtag-sky">Sweaty</button>
			<button class="hashtag hashtag-red">매생이 코카인</button>
			<button class="hashtag hashtag-orange">Whistle</button>
		</div>
		
		<div id="rank">
			<table>
			    <thead>
			    
			    </thead>
			    <tbody>
			    <% int cnt = 1;%>
			    <c:forEach items="${ranklist}" var="list" varStatus="i">
			    	<% if (cnt == 1) { %>
				    <tr id="slide${i.count}">
				        <td id="rankdiv">&#x1F947</td>
				        <td id="namediv">${list.rankid}</td>
				        <td id="scorediv">${list.score}</td>     
				    </tr>
				    
				    <tr>
				    	<td colspan="3">
				    		<div id="xslide${i.count}" style="display:none;">
								<div id="mp4" style="background-image: url('resources/images/ggold3.png'); background-size: cover;">
									<br>  
									<img style="width:180px; height:200px; position:absolute; left:315px;"src="resources/images/gt.png"/>
									<img style="width:180px; height:200px; position:absolute; left:1355px;"src="resources/images/gt.png"/>
									<video autoplay muted controls width="780" height="400" style="position:absolute; left:540px;">
										<source src="resources/images/taeyong.mp4" type="video/mp4">
									</video>
								</div> 
								<div id="cmt">
									<br>  
									<div style="display:flex; margin-left:249px;">
										<form action="#" method="post">
										    <textarea rows="3" cols="92" name="content"></textarea>
										    <button type="button" onclick="cmt()" style="position:absolute; height:87px; width:100px; font-family: 'Jeju Gothic', sans-serif; background:#d195ff; color:white;">댓글 작성</button>
								    	</form> 
								    </div>
									<table style="width:800px; font-size:17px; position:absolute; right:575px;">
										<tr>
											<td style="height:60px; background:#f1dcff;">숭어싸만코</td>
											<td style="width:600px; height:60px;">정말 잘추시네요</td>
										</tr> 
										<tr> 
											<td style="height:60px; background:#f1dcff;">연어싸만코</td>
											<td style="width:600px; height:60px;">이정도는 되야 1등이지 ㄷㄷ</td>
										</tr>
										<tr id="this">
											
										</tr>
									</table>
									
								</div>
				    		</div>
				    	</td>
				    	<script>
				    		function cmt() {
				    			var html = "<td style='height:60px; background:#f1dcff;'>DanceMaster</td>";
				    			html += "<td style='width:600px; height:60px; background: rgb(220,220,220,0.3);'>감사합니다 여러분</td>";
				    			
				    			document.getElementById('this').innerHTML = html;

				    		}
				    	</script>
				    </tr>	
				    <% cnt ++; %>
				    <% } else if (cnt == 2) { %>
				    <tr id="slide${i.count}">
				        <td id="rankdiv">&#x1F948</td>
				        <td id="namediv">${list.rankid}</td>
				        <td id="scorediv">${list.score}</td>     
				    </tr>
				    
				    <tr> 
				    	<td colspan="3">
				    		<div id="xslide${i.count}" style="display:none;">
								<div id="mp4" style="background-image: url('resources/images/silver.png'); background-size: cover;">
									<br>
									<img style="width:180px; height:200px; position:absolute; left:315px;"src="resources/images/st.png"/>
									<img style="width:180px; height:200px; position:absolute; left:1355px;"src="resources/images/st.png"/>
									<video autoplay muted controls width="780" height="400" style="position:absolute; left:540px;">
										<source src="resources/images/txt.mp4" type="video/mp4">
									</video>
								</div> 
								<div id="cmt">
									<br>  
									<div style="display:flex; margin-left:249px;">
										<form action="#" method="post">
										    <textarea rows="3" cols="92" name="content"></textarea>
										    <button style="position:absolute; height:87px; width:100px; font-family: 'Jeju Gothic', sans-serif; background:#d195ff; color:white;">댓글 작성</button>
								    	</form> 
								    </div>
									<table style="width:800px; font-size:17px; position:absolute; right:575px;">
										<tr>
											<td style="height:60px; background:#f1dcff;">긍정맨</td>
											<td style="width:600px; height:60px;">이분도 고수시네</td>
										</tr> 
										<tr> 
											<td style="height:60px; background:#f1dcff;">뇌BOX</td>
											<td style="width:600px; height:60px;">몸이 정말 유연하시네요</td>
										</tr>
										<tr>
											<td style="height:60px; background:#f1dcff;">매생이</td>
											<td style="width:600px; height:60px;">칼박자 ㄷㄷ</td>
										</tr>
									</table>
									
								</div>
				    		</div>
				    	</td>
				    </tr>
				    <% cnt ++; %>
				    <% } else if (cnt == 3) { %>
				    <tr id="slide${i.count}">
				        <td id="rankdiv">&#x1F949</td>
				        <td id="namediv">${list.rankid}</td>
				        <td id="scorediv">${list.score}</td>     
				    </tr>
				    
				    <tr>
				    	<td colspan="3">
				    		<div id="xslide${i.count}" style="display:none;">
								<div id="mp4" style="background-image: url('resources/images/bronze.png'); background-size: cover;">
									<br>
									<img style="width:180px; height:200px; position:absolute;  left:315px;"src="resources/images/bt.png"/>
									<img style="width:180px; height:200px; position:absolute; left:1355px;"src="resources/images/bt.png"/>
									<video autoplay muted controls width="780" height="400" style="position:absolute; left:540px;">
										<source src="resources/images/nct.mp4" type="video/mp4">
									</video>
								</div> 
								<div id="cmt">
									<br>  
									<div style="display:flex; margin-left:249px;">
										<form action="#" method="post">
										    <textarea rows="3" cols="92" name="content"></textarea>
										    <button style="position:absolute; height:87px; width:100px; font-family: 'Jeju Gothic', sans-serif; background:#d195ff; color:white;">댓글 작성</button>
								    	</form> 
								    </div>
									<table style="width:800px; font-size:17px; position:absolute; right:575px;">
										<tr>
											<td style="height:60px; background:#f1dcff;">용용쌤</td>
											<td style="width:600px; height:60px;">잘봤습니다!!</td>
										</tr> 
										<tr> 
											<td style="height:60px; background:#f1dcff;">하사강정우</td>
											<td style="width:600px; height:60px;">wow!!</td>
										</tr>
										<tr>
											<td style="height:60px; background:#f1dcff;">내로내로</td>
											<td style="width:600px; height:60px;">이분이 1등인데 거의?</td>
										</tr>
									</table>
									
								</div>
				    		</div>
				    	</td>
				    </tr>
				    <% cnt ++; %>
				    <% } else {%>
				    <tr id="slide${i.count}">
				        <td id="nonrankdiv">${list.rank}</td>
				        <td id="nonnamediv">${list.rankid}</td>
				        <td id="nonscorediv">${list.score}</td>     
				    </tr>
				    
				    <tr>
				    	<td colspan="3">
				    		<div id="xslide${i.count}" style="display:none;">
								<div id="mp4" style="background:rgb(220,220,220,0.3);">
									<br> 
									<video autoplay muted controls width="780" height="400" style="position:absolute; left:540px;">
										<source src="resources/images/zam.mp4" type="video/mp4">
									</video>
								</div> 
								<div id="cmt">
									<br>  
									<div style="display:flex; margin-left:249px;">
										<form action="#" method="post">
										    <textarea rows="3" cols="92" name="content"></textarea>
										    <button style="position:absolute; height:87px; width:100px; font-family: 'Jeju Gothic', sans-serif; background:#d195ff; color:white;">댓글 작성</button>
								    	</form> 
								    </div>
									<table style="width:800px; font-size:17px; position:absolute; right:575px;">
										<tr>
											<td style="height:60px; background:#f1dcff;">동동구리</td>
											<td style="width:600px; height:60px;">조금만 더 하시면 순위권이실듯</td>
										</tr> 
										<tr> 
											<td style="height:60px; background:#f1dcff;">메시우승</td>
											<td style="width:600px; height:60px;">어디서 찍으신겨?</td>
										</tr>
										<tr>
											<td style="height:60px; background:#f1dcff;">춤신춤왕</td>
											<td style="width:600px; height:60px;">잘보고갑니다~</td>
										</tr>
									</table>
									
								</div>
				    		</div>
				    	</td>
				    </tr>	
				    <% } %>
				    
			    </c:forEach>
			    </tbody>
			</table>
		</div>
	</header>
	
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script type="text/javascript">
		
    	$(function () {
    		for (let i=1; i<8; i++) {
				$("#slide"+i).on("click", function() {
					 $("#xslide"+i).slideToggle(400);	
				});
    		}
		})

	</script>
</body>
</html>