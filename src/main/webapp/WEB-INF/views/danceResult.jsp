<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
@import url("https://fonts.googleapis.com/css?family=Abril+Fatface|Open+Sans:400,700&display=swap");

/* font-family: 'Abril Fatface', cursive;
font-family: 'Open Sans', sans-serif; */

* {
  margin: 0;
  padding: 0;
  outline: none;
  box-sizing: border-box;
  line-height: 1.5em;
  color: #747474;
  font-family: "Open Sans", sans-serif;
  font-size: 12px;
}
body {
  height: 100vh;
  display: flex;
  
}
.main {
  width: 70%;
  height: 75%;
  margin: auto;
  border-radius: 10px;
  /* display: flex; */
  /* background: rgb(249, 63, 76); */
  box-shadow: 0 0 8px rgba(0, 0, 0, 0.2);
  transition: all 0.1s ease-in 0.1s;
}
/* PAGE HOME */
.home {
  width: 100%;
  height: 100%;
  border-radius: 10px;
  color: white;
  background-image: linear-gradient(to right, #43e97b 0%, #38f9d7 100%);
  display: flex; /* flex or none */
  flex-flow: column wrap;
  justify-content: center;
  align-items: center;

  opacity: 1;
  transition: all 0.4s ease-in 0.2s;
}
.home h1 {
  margin-bottom: 80px;
  color: white;
  text-align: center;
}
.home h1 span {
  color: white;
  display: block;
  font-size: 2.5em;
  font-family: "Abril Fatface", cursive;
}
.home p {
  margin-top: 40px;
}
.home p a {
  color: white;
}
a.link-copy {
  text-decoration: none;
} 
.btn {
  background: white;
  border: 0px solid white;
  border-radius: 150px;
  align-self: center;
  width: 150px;
  padding: 8px 16px;
  margin: 10px;
  color: #1cad78;
  font-weight: bold;
  cursor: pointer;
  transition: all 0.1s ease-in-out 0.1s;
  font-family:'Jeju Gothic', sans-serif;

}


/* PAGE SING UP */
.sign-up {
  display: none; /*flex or none*/
  opacity: 1;
  width: 100%;
  height: 100%;
}
.signup-left {
  width: 40%;
  /* padding: 20px; */
  opacity: 0;
  display: flex;
  flex-flow: column wrap;
  justify-content: space-between;
  font-size: 14px;
  background: rgb(249, 63, 76);
  border-radius: 10px 0 0 10px;
  transition: all 0.5s ease-in 0.2s;
  background-image: url('resources/images/right.gif');
  background-size:cover;
}
.signup-left h1 {
  font-size: 21px;
  font-family: "Abril Fatface", cursive;
  letter-spacing: 2px;
}
.signup-left h1,
.signup-left div,
.signup-left h3,
.signup-left p {
  color: white;
}
.signup-left h3 {
  font-size: 2.2em;
}

.btn-sign {
  border: none;
  background: rgb(249, 63, 76);
  color: white;
  font-weight: bold;
  width: 100%;
  padding: 10px;
  margin-top: 20px;
  border-radius: 50px;
  cursor: pointer;
  transition: background 0.1s ease 0.1s;
}
.btn-sign:hover {
  background: rgb(230, 57, 69);
}
.signup-right {
  width: 60%;
  padding: 20px;
  background: white;
  border-radius: 0 10px 10px 0;
  display: flex;
  flex-flow: column wrap;
  justify-content: space-between;
  align-items: flex-end;
  
  background-repeat: no-repeat;
  background-position: 235% 50%;
  
  opacity: 0;
  transition: opacity 0.5s ease-in 0.2s, background-position-x 0.5s ease-in 0.2s;
}
.bars-style {
  color: rgb(249, 63, 76);
  cursor: pointer;
  font-size: 16px;
}

@media (max-width: 1023px) {
  .main {
    width: 100%;
    height: 100%;
  }
  .home, .signup-left { border-radius: 0; }
  .form-area {
    left: 35%;
    width: 30%;
    height: 70%;
  }
}
@media (max-width: 768px) {
  .form-area {
    left: 20%;
    width: 60%;
  }
  .wc_message {
/*     display: none; */
    opacity: 0;
    transition: opacity .1s;
  }
}

@media (max-width: 375px) {
  .form-area {
    left: 10%;
    width: 80%;
  }
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
  background-color: #8cffc6;
}
.circle_progress .left .bar {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  border-radius: 50%;
  clip: rect(0, 140px, 140px, 70px);
  background-color: #8cffc6;
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
  background-color: #8cffc6;
}
.circle_progress .right .bar {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  border-radius: 50%;
  clip: rect(0, 70px, 140px, 0);
  background-color: #8cffc6;
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

#progress {
	    appearance: none;
	    width:300px;
	    height:20px;
	    margin-top:30px;
	}
#progress::-webkit-progress-bar {
	    background:white;
	    border-radius:30px;
	    box-shadow: inset 1px 1px 1px #ccc;
	}
	#progress::-webkit-progress-value {
	    border-radius:30px;
	    background: #1D976C;
	    background: -webkit-linear-gradient(to right, #93F9B9, #1D976C);
	    background: linear-gradient(to top, #7028e4 0%, #e5b2ca 100%);
	
	}
	
.btn2 {
		background-color : #8cffc6;
		color : white;
		width: 12rem;
		height: 4.2rem;
		font-size: 27px;
		border-radius: 10px;
		border:1px solid #8cffc6;
	}
	
body {
	

}
</style>
</head>
<body>
	<main class="main">
  <section class="home">
    <h1> <span></span></h1>
    <button id="sign-up" class="btn" style="margin-top:300px; width:150px; height:150px; border-radius:50%; font-size:25px;">결과 확인</button>
    
  </section> 

  <section class="sign-up">
    <article class="signup-left">
      <h1> </h1>
      <div class="wc_message">
        <h3></h3>
      </div>
      <div class="btn-back">
        <i class="fas fa-2x fa-angle-left angle-left-color"></i>
       	 이전
      </div>
    </article>

    <article class="form-area" style="visibility: hidden;">
      <!-- Form area Sign Up -->
      <div class="organize-form form-area-signup">
        <h2>SIGN UP</h2>
        <form class="form">
          <div class="form-field">
            <label for="name">Name</label>
            <input type="text" id="name" />
          </div>

          <div class="form-field">
            <label for="email">Email</label>
            <input type="text" id="email" />
          </div>

          <div class="form-field">
            <label for="password">Password</label>
            <input type="text" id="password" />
          </div>

          <button class="btn-sign btn-up">Sign Up</button>
        </form>
        <p>Have an account? <a href="#" class="link-in">Sign In</a></p>

      </div>

      <!-- Form area Sign In -->
      <div class="organize-form form-area-signin">
        <h2>SIGN IN</h2>
        <form class="form">
          <div class="form-field">
            <label for="email-in">Email</label>
            <input type="text" name="email_in" id="email-in" />
          </div>

          <div class="form-field">
            <label for="password-in">Password</label>
            <input type="text" name="password_in" id="password-in" />
          </div>

          <button class="btn-sign btn-in">Sign In</button>
        </form>
        <p>Haven't an account? <a href="#" class="link-up">Sign Up</a></p>
      </div>
    </article>

    <article class="signup-right">
      <i class="fas fa-2x fa-bars bars-style"></i>
      <div style="background: whitesmoke;">
      	<div style="display:flex; position:absolute; top:120px; left:750px; font-size:40px; font-weight:600; font-family: 'Jeju Gothic', sans-serif; color:black;">
      		<br>DanceMaster님의 새삥 챌린지
      		<div class="circle_progress" style="margin-left:110px; margin-top:25px;">
				  <br>
				  <div class="left">
				    <div class="bar"></div>
				  </div>
				  <div class="right">
				    <div class="bar"></div>
				  </div>
				  <div class="value">
				  	<span style="margin-left:-48px; position:absolute; bottom:60px; font-size:24px; font-weight:590; font-family: 'Jeju Gothic', sans-serif; color:black;">&ensp;정확도</span><br>
				  	<span id="timer" style="position:absolute; bottom:10px; left:5px; font-size:40px; font-weight:590; font-family: 'Jeju Gothic', sans-serif; color:black;">&emsp;91%</span>
				  </div>
				</div>
      	</div> 
      	<div style="height: 430px; border:2px solid #f0f0f0; position:absolute; top:300px; left:750px; font-size:20px; font-weight:600; font-family: 'Jeju Gothic', sans-serif; color:#33135c;">
      		
      	</div>
      	
      	<div style="position:absolute; top:760px; left:750px; font-size:35px; font-weight:600; font-family: 'Jeju Gothic', sans-serif; color:black;">
			<video autoplay muted controls width="660" height="520" style="margin-top:-511px;">
				<source src="resources/images/taeyong.mp4" type="video/mp4">
			</video>
      	</div>
      	
      	<div style="position:absolute; top:740px; left:1450px; font-size:35px; font-weight:600; font-family: 'Jeju Gothic', sans-serif; color:black;">
			<a href="rankingList.do?idx=1"><button class="btn2" >순위 확인</button></a>
      	</div>
      </div>
	
    </article>
  </section>
  
</main>

<script>
//Elements
const el = {
  signUpHome: document.getElementById('sign-up'),
  signInHome: document.getElementById('sign-in'),
  btnHome: document.querySelector('.btn-back'),
  pageMain: document.querySelector('.main'),
  pageHome: document.querySelector('.home'),
  pageSignUp: document.querySelector('.sign-up'),
  formArea: document.querySelector('.form-area'),
  sideSignLeft: document.querySelector('.signup-left'),
  sideSignRight: document.querySelector('.signup-right'),
  formSignUp: document.querySelector('.form-area-signup'),
  formSignIn: document.querySelector('.form-area-signin'),
  linkUp: document.querySelector('.link-up'),
  linkIn: document.querySelector('.link-in'),
  btnSignUp: document.querySelector('.btn-up'),
  btnSignIn: document.querySelector('.btn-in'),
  labels: document.getElementsByTagName('label'),
  inputs: document.getElementsByTagName('input'),
};


// ADD Events
// Show the page Sign Up
el.signUpHome.addEventListener('click', function(e) {
  showSign(e, 'signup');
});
el.linkUp.addEventListener('click', function(e) {
  showSign(e, 'signup');
});

// Show the page sign in
el.signInHome.addEventListener('click', function(e) {
  showSign(e, 'signin');
});
el.linkIn.addEventListener('click', function(e) {
  showSign(e, 'signin');
});
el.btnSignUp.addEventListener('click', function(e) {
  showSign(e, 'signin');
});

// Show the page Home
el.btnHome.addEventListener('click', showHome);


// Functions Events
// function to show screen Home
function showHome(event) {
  
  
  setTimeout(function() {
    el.sideSignLeft.style.padding = '0';
    el.sideSignLeft.style.opacity = '0';
    el.sideSignRight.style.opacity = '0';
    el.sideSignRight.style.backgroundPositionX = '235%';

    el.formArea.style.opacity = '0';
    setTimeout(function() {
      el.pageSignUp.style.opacity = '0';
      el.pageSignUp.style.display = 'none';
      for (input of el.inputs)  {
        input.value = '';
      }
    }, 900);

  }, 100);

  setTimeout(function() {
    el.pageHome.style.display = 'flex';
  },1100);
  
  setTimeout(function() {
    el.pageHome.style.opacity = '1';
  }, 1200);

}
// function to show screen Sign up/Sign in
function showSign(event, sign) {

  if (sign === 'signup') {
    el.formSignUp.style.display = 'flex';
    el.formSignIn.style.opacity = '0';
    setTimeout(function() {
      el.formSignUp.style.opacity = '1';
    }, 100);
    el.formSignIn.style.display = 'none';

  } else {
    el.formSignIn.style.display = 'flex';
    el.formSignUp.style.opacity = '0';
    setTimeout(function() {
      el.formSignIn.style.opacity = '1';
    }, 100);
    el.formSignUp.style.display = 'none';
  }

  el.pageHome.style.opacity = '0';
  setTimeout(function() {
    el.pageHome.style.display = 'none';
  }, 700);
  
  setTimeout(function() {
    el.pageSignUp.style.display = 'flex';
    el.pageSignUp.style.opacity = '1';
    
    setTimeout(function() {
      el.sideSignLeft.style.padding = '20px';
      el.sideSignLeft.style.opacity = '1';
      el.sideSignRight.style.opacity = '1';
      el.sideSignRight.style.backgroundPositionX = '230%';

      el.formArea.style.opacity = '1';
    }, 10);

  }, 900);
}

// Behavior of the inputs and labels
for (input of el.inputs) {
  console.log(input)
  input.addEventListener('keydown', function() {
    this.labels[0].style.top = '10px';
  });
  input.addEventListener('blur', function() {
    if (this.value === '') {
      this.labels[0].style.top = '25px';
    }
  })
}


</script>
</body>
</html>