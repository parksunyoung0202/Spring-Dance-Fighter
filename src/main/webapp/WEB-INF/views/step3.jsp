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
	.btn {
		background-color : #1cad78;
		color : white;
		width: 10rem;
		height: 3rem;
		font-size: 20px;
		border-radius: 5px;
	}
	 #progress {
	    appearance: none;
	    width:550px;
	    height:15px;
	    margin-top:30px;
	}
	#progress::-webkit-progress-bar {
	    background:#f0f0f0;
	    border-radius:30px;
	    box-shadow: inset 1px 1px 1px #ccc;
	}
	#progress::-webkit-progress-value {
	    border-radius:30px;
	    background: #1D976C;
	    background: -webkit-linear-gradient(to right, #93F9B9, #1D976C);
	    background: linear-gradient(to right, #93F9B9, #1D976C);
	
	}



.circle_progress {
  position: relative;
  width: 140px;
  height: 140px;
  background-color: gray;
  border-radius: 50%;
}
.circle_progress .left {
  position: absolute;
  top: 0;
  left: 0;
  width: 140px;
  height: 140px;
  border-radius: 50%;
  clip: rect(0, 70px, 140px, 0);
  background-color: #f5f5f5;
}
.circle_progress .left .bar {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  border-radius: 50%;
  clip: rect(0, 140px, 140px, 70px);
  background-color: #03c75a;
  animation: left 5s linear 0s infinite;
}
.circle_progress .right {
  position: absolute;
  top: 0;
  left: 0;
  width: 140px;
  height: 140px;
  border-radius: 50%;
  border:0;
  clip: rect(0, 140px, 140px, 70px);
  background-color: #f5f5f5;
}
.circle_progress .right .bar {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  border-radius: 50%;
  clip: rect(0, 70px, 140px, 0);
  background-color: #03c75a;
  animation: right 5s linear 0s infinite;
}
.circle_progress .value {
  position: absolute;
  top: 14px;
  left: 14px;
  right: 14px;
  bottom: 14px;
  line-height: 128px;
  font-size: 14px;
  color: blue;
  text-align: center;
  border-radius: 50%;
  background-color: white;
}

@keyframes left {
  0% {
    transform: rotate(0);
  }
  25% {
    transform: rotate(0);
  }
  50% {
    transform: rotate(180deg);
  }
  75% {
    transform: rotate(180deg);
  }
  100% {
    transform: rotate(360deg);
  }
}
@keyframes right {
  0% {
    transform: rotate(0);
  }
  25% {
    transform: rotate(180deg);
  }
  50% {
    transform: rotate(180deg);
  }
  75% {
    transform: rotate(360deg);
  }
  100% {
    transform: rotate(360deg);
  }
}
</style>
</head>
<body>
	<div style="display:flex; height:260px;">
		<div style="width:800px;">
			<br>&emsp;<a href="practiceResult.do"><button class="btn">연습 종료</button></a>&emsp;&emsp;
			
			<br><span style="margin-left:470px; font-size:38px; font-weight:600; font-family: 'Jeju Gothic', sans-serif; color:#1cad78;">Step 3</span><br>
			<span style="margin-left:50px; font-size:18px; font-weight:590; font-family: 'Jeju Gothic', sans-serif; color:black;">
				1.전신이 카메라에 담길 수 있는 거리에서 연습을 시작해 주세요<br>
				&emsp;&emsp;&ensp;&nbsp;2.정확한 자세로 연습을 하실 때는 카메라 화면 속 연습 자세가 초록색으로 보이게 됩니다<br>
				&emsp;&emsp;&ensp;&nbsp;3.연습이 끝나면 다음 스텝으로 이동하세요
			</span>
		</div>
		<div style="font-size:25px; font-weight:590; font-family: 'Jeju Gothic', sans-serif; color:black; width:1200px;">
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;코스진행&emsp;
			<progress id="progress" value="99" min="0" max="100"></progress>
			99%
			
			<div style="display:flex">
				<div class="circle_progress" style="margin-left:300px; margin-top:25px;">
				  <br>
				  <div class="left">
				    <div class="bar"></div>
				  </div>
				  <div class="right">
				    <div class="bar"></div>
				  </div>
				  <div class="value">
				  	<span style="margin-left:-48px; position:absolute; bottom:10px; font-size:24px; font-weight:500; font-family: 'Jeju Gothic', sans-serif; color:black;">제한 시간</span><br>
				  	<span id="timer" style="position:absolute; bottom:-30px; left:25px; font-size:40px; font-weight:590; font-family: 'Jeju Gothic', sans-serif; color:black;"></span>
				  </div>
				</div>
				
				<div class="circle_progress" style="margin-left:120px; margin-top:25px;">
				  <br>
				  <div class="left">
				    <div class="bar"></div>
				  </div>
				  <div class="right">
				    <div class="bar"></div>
				  </div>
				  <div class="value">
				  	<span style="margin-left:-48px; position:absolute; bottom:10px; font-size:24px; font-weight:500; font-family: 'Jeju Gothic', sans-serif; color:black;">연습 시간</span><br>
				  	<span id="timer2" style="position:absolute; bottom:-30px; left:40px; font-size:40px; font-weight:590; font-family: 'Jeju Gothic', sans-serif; color:black;"></span>
				  </div>
				</div>
				
				<div class="circle_progress" style="margin-left:120px; margin-top:25px;">
				  <br>
				  <div class="left">
				    <div class="bar"></div>
				  </div>
				  <div class="right">
				    <div class="bar"></div>
				  </div>
				  <div class="value">
				  	<span style="margin-left:-53px; position:absolute; bottom:10px; font-size:20px; font-weight:500; font-family: 'Jeju Gothic', sans-serif; color:black;">총 연습 시간</span><br>
				  	<span id="timer3" style="position:absolute; bottom:-30px; left:20px; font-size:40px; font-weight:590; font-family: 'Jeju Gothic', sans-serif; color:black;"></span>
				  </div>
				</div>
			</div>
			
		</div>
	</div>
	
	<div style="display:flex; height:650px;">
		<div>
			<video muted controls autoplay width="960" height="760" style="margin-top:-111px;">
				<source src="resources/images/step3.mp4" type="video/mp4">
			</video>
		</div>
		<div>
			<iframe style="margin-left:-8px; margin-top:-9px;" width="968" height="690" src="http://127.0.0.1:8087" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		</div>
	</div>
	
	<script>
		var count = 161;
		var counter = setInterval(timer,1000);
		
		function timer() {
			count--;
			if (count <= 0) {
				clearInterval(counter);
				document.getElementById("timer").innerHTML = "&nbsp;0";
				return;
			} else {
				document.getElementById("timer").innerHTML = count;
			}
			
		}
		
		var count2 = 0;
		var counter2 = setInterval(timer2,1000);
		
		function timer2() {
			count2++;
			document.getElementById("timer2").innerHTML = count2;			
		}
		
		var count3 = 182;
		var counter3 = setInterval(timer3,1000);
		
		function timer3() {
			count3++;
			document.getElementById("timer3").innerHTML = count3;			
		}
	</script>
</body>
</html>