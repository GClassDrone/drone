<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="772358182499-5r2d2l2ue8oob79q68dfdbr1c0lplmss.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <jsp:include page="common/include.jsp"></jsp:include>
  </head>
  <body>
    <div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div>
    <script>
      function onSignIn(googleUser) {
        // Useful data for your client-side scripts:
        var profile = googleUser.getBasicProfile();
        console.log("ID: " + profile.getId()); // Don't send this directly to your server!
        console.log('Full Name: ' + profile.getName());
        console.log('Given Name: ' + profile.getGivenName());
        console.log('Family Name: ' + profile.getFamilyName());
        console.log("Image URL: " + profile.getImageUrl());
        console.log("Email: " + profile.getEmail());

        // The ID token you need to pass to your backend:
        var id_token = googleUser.getAuthResponse().id_token;
        console.log("ID Token: " + id_token);
      };
    </script>
  
  <div class="container">
	<div class="row">
		<div class="col-lg-4 col-lg-offset-4 col-sm-6 text-center">
			<div class="well">
				<h2 style="color: black;">
					소셜 계정으로 로그인 연동 리스트
				</h2>
				<p>	</p>
				<p class="center">
					 <a href="#" class="btn btn-primary btn-responsive btn-primary"><span class="glyphicon glyphicon-search"></span> 페이스북 계정으로 로그인</a>
				</p>
				
				  <a class="btn btn-block btn-social btn-google">
    				<span class="fa fa-google"></span> 구글계정으로 로그인 하기  </a>
    			  <a class="btn btn-block btn-social btn-facebook">
    				<span class="fa fa-facebook"></span> 페이스북으로 로그인 하기  </a>
    			  <a class="btn btn-block btn-social btn-twitter">
    				<span class="fa fa-twitter"></span> 트위터로 로그인 하기  </a>
			</div>
		</div>
	</div>
</div>
    
   
  </body>
</html>