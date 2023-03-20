<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

</style>
</head>
<body>
	<img style="margin-left:650px; margin-top:150px;" src="resources/images/loading.gif">
	
	<div style="margin-left:490px; font-size:50px; font-weight:600; font-family: 'Jeju Gothic', sans-serif;">DanceMaster님의 영상을 분석중입니다.</div>

	<span id="timer2" style="position:absolute; top:330px; right:900px; color:#d195ff; font-size:100px; font-weight:600; font-family: 'Jeju Gothic', sans-serif;"></span>
	
	<script type="text/javascript">
		var count2 = 0;
		var counter2 = setInterval(timer2,50);
		
		function timer2() {
			count2++;
			if (count2 >= 100) {
				clearInterval(counter2);
				document.getElementById("timer2").innerHTML = "100%";
				location.href='danceResult.do';
			} else {
				document.getElementById("timer2").innerHTML = count2+"%";
			}			
		}
	</script>

</body>
</html>