<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/login.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<div id="container" class="container">
    <!-- FORM SECTION -->
    <div class="row">
      <!-- SIGN UP -->
      <div class="col align-items-center flex-col sign-up">
        <div class="form-wrapper align-items-center">
          <div class="form sign-up">
          	
          	<!-- ===== 회원가입 ===== -->
          	<form action="join.do" method="post">
	          	<div class="input-group">
	              <i class='bx bxs-user'></i>
	              <input type="text" placeholder="아이디 입력" name="id">
	            </div>
	          	<div class="input-group">
	              <i class='bx bxs-lock-alt'></i>
	              <input type="password" placeholder="비밀번호 입력" name="pw">
	            </div>
	            <div class="input-group">
	              <i class='bx bxs-user'></i>
	              <input type="text" placeholder="이름을 입력하세요" name="name">
	            </div>
	            <div class="input-group">
	              <i class='bx bxs-user'></i>
	              <input type="text" placeholder="닉네임 입력하세요" name="nick">
	            </div>
	            <button type="submit">
	              	회원가입
	            </button>
            </form>
            <!-- ================ -->
            
            <p>
              <span>
                	계정이 있으신가요?
              </span>
              <b onclick="toggle()" class="pointer">
                	로그인 하러가기
              </b>
            </p>
          </div>
        </div>
      </div>
      <!-- END SIGN UP -->
      <!-- SIGN IN -->
      <div class="col align-items-center flex-col sign-in">
        <div class="form-wrapper align-items-center">
          <div class="form sign-in">
          
          	<!-- ===== 로그인 ===== -->
          	<form action="dancerLogin.do" method="post">
	            <div class="input-group">
	              <i class='bx bxs-user'></i>
	              <input type="text" placeholder="ID를 입력하세요" name="id">
	            </div>
	            <div class="input-group">
	              <i class='bx bxs-lock-alt'></i>
	              <input type="password" placeholder="비밀번호를 입력하세요" name="pw">
	            </div>
	            <button>
	            	로그인
	            </button>
            </form>
            <!-- ================ -->
            
            <p>
              <b>
                	비밀번호를 잊으셨나요?
              </b>
            </p>
            <p>
              <span>
                	계정이 없으신가요?
              </span>
              <b onclick="toggle()" class="pointer">
                	회원가입
              </b>
            </p>
          </div>
        </div>
        <div class="form-wrapper">
        </div>
      </div>
      <!-- END SIGN IN -->
    </div>
    <!-- END FORM SECTION -->
    <!-- CONTENT SECTION -->
    <div class="row content-row">
      <!-- SIGN IN CONTENT -->
      <div class="col align-items-center flex-col">
        <div class="text sign-in">
          <h2>
            Welcome
          </h2>
        </div>
        <div class="img sign-in">
        </div>
      </div>
      <!-- END SIGN IN CONTENT -->
      <!-- SIGN UP CONTENT -->
      <div class="col align-items-center flex-col">
        <div class="img sign-up">
        </div>
        <div class="text sign-up">
          <h2>
            	회원가입
          </h2>
        </div>
      </div>
      <!-- END SIGN UP CONTENT -->
    </div>
    <!-- END CONTENT SECTION -->
  </div>
  <script src="resources/js/login.js"></script>
	
</body>
</html>