<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file = "../inc/Header.jsp" %>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>CoronaSpot</title>
     <style>
@import url("http://fonts.googleapis.com/earlyaccess/nanumgothic.css");
	
	html {
		height: 100%;
	}
	
	body {
	    width:100%;
	    height:100%;
	    margin: 0;
  		padding-top: 0;
  		padding-bottom: 0;
  		font-family: "Nanum Gothic", arial, helvetica, sans-serif;
  		background-repeat: no-repeat;
  		background:linear-gradient(to bottom right, #63ad2a, #88b06a);
	}
	
    .card {
        margin: 0 auto; /* Added */
        float: none; /* Added */
        margin-top: 150px; /* Added */
        margin-bottom: 200px; /* Added */
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
	}
	
	.form-signin .form-control {
  		position: relative;
  		height: auto;
  		-webkit-box-sizing: border-box;
     	-moz-box-sizing: border-box;
        	 box-sizing: border-box;
  		padding: 10px;
  		font-size: 16px;
	}
    </style>
    
  <body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%" align="center">
	<form method="post" action="checkLogin.jsp">
	<div class="card align-middle" style="width:20rem; border-radius:20px;">
		<div class="card-title" style="margin-top:30px;">
			<p><img src="로고3.png" align="center"></p>
		</div>
		<div class="card-body">
      <form class="form-signin" method="POST" onSubmit="logincall();return false">
        <div class="form-group">
	                <input type="text" class="form-control" id="email" name="email" placeholder="Your Email *" value="" />
	              	<div class="invalid-feedback" id="errorEmail">
				       이메일을 입력하세요.
				    </div>
				    <div class="valid-feedback">
				        Looks good!
				    </div>
	              </div>
	              <div class="form-group">
	                <input type="password" class="form-control" id="pwd" name="pwd"  placeholder="Your Password *" value="" />
	              	<div class="invalid-feedback" id="errorPwd">
				    	비밀번호를 입력하세요.
				    </div>
				    <div class="valid-feedback">
				        Looks good!
				    </div>
	              </div>
        <button id="btn-Yes" class="btn btn-lg btn-primary btn-block" type="submit">로 그 인</button>
      </form>
      
		</div>
	</div>
	


	<div class="modal">
	</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 
    <script>
		$(function(){
			const email = $("#email");
			const pwd = $("#pwd");
			$("#loginMember").click(function(e){
				e.preventDefault();
				if(!email.val()){
					email.addClass("is-invalid");
					email.focus();
					return;
				}
				if(validateEmail(email.val())){
					email.addClass("is-valid");
				}else{
					$("#errorEmail").text('이메일 주소 형식이 맞지 않습니다.');
					email.addClass("is-invalid");
					email.focus();
					return;
				}
				if(!pwd.val()){
					pwd.addClass("is-invalid");
					pwd.focus();
					return;
				}
				if(pwd.val().length >= 8 && pwd.val().length <=12){
					pwd.addClass("is-valid");
				}else{
					$("#errorPwd").text('비밀번호는 8-12자리 이어야 합니다.');
					pwd.addClass("is-invalid");
					pwd.focus();
					return;
				}
				f.submit();
			});
			
			email.keyup(function(e){
				email.removeClass("is-invalid");
				if(!email.val()){
					email.removeClass("is-invalid");
					email.removeClass("is-valid");
					return;
				}
				if(validateEmail(email.val())){
					email.addClass("is-valid");
				}else{
					$("#errorEmail").text('이메일 주소 형식이 맞지 않습니다.');
					email.addClass("is-invalid");
					return;
				}
				
			});
			pwd.keyup(function(e){
				pwd.removeClass("is-invalid");
				if(!pwd.val()){
					pwd.removeClass("is-invalid");
					pwd.removeClass("is-valid");
					return;
				}
				if(pwd.val().length >= 8 && pwd.val().length <=12){
					pwd.addClass("is-valid");
				}else{
					$("#errorPwd").text('비밀번호는 8-12자리 이어야 합니다.');
					pwd.addClass("is-invalid");
				}
				
			});
			function validateEmail(email) {
				var re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
				return re.test(email);
			}
		});
	</script>
  </body>
</html>
<%@ include file="../inc/Footer.jsp"%>