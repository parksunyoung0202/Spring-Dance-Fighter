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
/* styles if JS activated */
.js .input-file-container {
	position: relative;
	
}

.js .input-file-trigger {
	display: block;
	padding: 14px 45px;
	background: #1cad78;
	color: #fff;
	font-size: 20px;
	transition: all .4s;
	cursor: pointer;
	
	border-radius: 10px;
	font-family: 'Jeju Gothic', sans-serif;
}

.js .input-file {
	width: 10rem;
	height: 4rem;
	position: absolute;
	top: 0;
	left: 0;
	width: 225px;
	padding: 14px 0;
	opacity: 0;
	cursor: pointer;
}

/* some styles for interactions 
.js .input-file:hover + .input-file-trigger,
.js .input-file:focus + .input-file-trigger,
.js .input-file-trigger:hover,
.js .input-file-trigger:focus {
	background: #34495E;
	color: #39D2B4;
}
*/
/* our visual feedback P */
.file-return {
	margin: 0;
}

.file-return:not(:empty) {
	margin: 1em 0;
}

.js .file-return {
	font-family: 'Jeju Gothic', sans-serif;
	font-size: 1.3em;
	font-weight: bold;
}

/* only if the paragraph is not empty, we complete the visual feedback with this text */
.js .file-return:not(:empty):before {
	content: "Selected file: ";
	font-style: normal;
	font-weight: normal;
}
</style>
</head>
<body>
	<div style="display:flex;">
		<div style="background-size:contain; background-image: url('resources/images/bata.gif'); width:660px; height:969px; margin-left: 220px;">
			<div style="width:660px; height:660px; border-radius:50%; opacity:0.9; background:#8cffc6; margin-top:150px;">
				<span style="font-size:50px; font-weight:600; font-family: 'Jeju Gothic', sans-serif; color:#33135c;">
					<br><br>&emsp;&emsp;&emsp;새삥 챌린지 댄스!<br>
				</span>
				<span style="font-size:30px; font-weight:600; font-family: 'Jeju Gothic', sans-serif; color:#33135c;">
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;잠시후 평가가 시작됩니다<br><br>
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;원활한 평가를 위해<br>
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;우측의 안내사항을 숙지한 뒤<br>
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;평가에 참여해 주세요
				</span>
				
			</div>
		</div>
		
		<div>
			<div style="margin-left:150px; margin-top:220px; font-size:40px; font-weight:600; font-family: 'Jeju Gothic', sans-serif; color:#1cad78;">
				<img src="resources/images/guideimg.png">
				안내사항
			</div>
			<div style="margin-left:150px; line-height:50px; font-size:20px; font-weight:600; font-family: 'Jeju Gothic', sans-serif; color:#33135c;"> 
				1.전신이 카메라에 담길 수 있는 거리에서 춤을 춰주세요.<br>
				2.영상은 40초로 설정해주세요<br>
				3.AI 모델의 유사도를 기준으로 점수를 측정합니다.<br><br>
			</div>
		
			<div class="input-file-container" style="display: flex;">
				<input class="input-file" id="my-file" type="file">
				<label for="my-file" class="input-file-trigger" tabindex="0" style="margin-left:150px; width:190px;">
					영상 업로드
				</label>
				<a href="loading.do"><button class="btn" style="margin-left:50px;">평가하기</button></a>
			</div>
			<br>
			<p class="file-return" style="margin-left:150px;"></p>
			
		</div>
	</div>

<script type="text/javascript">
	//Adds .js class to HTML
	document.querySelector("html").classList.add('js');
	
	// init our variables
	var fileInput = document.querySelector( ".input-file" ),
		button = document.querySelector( ".input-file-trigger" ),
		the_return = document.querySelector(".file-return");
	
	// Trigger when Space bar or Enter is hit
	button.addEventListener( "keydown", function( event ) {
		if ( event.keyCode == 13 || event.keyCode == 32 ) {
			fileInput.focus();
		}
	});
	
	// Trigger when the label is clicked
	button.addEventListener( "click", function( event ) {
		fileInput.focus();
		return false;
	});
	
	// Display a visual feedback
	fileInput.addEventListener( "change", function( event ) {
		the_return.innerHTML = this.value;
	});
</script>
</body>
</html>