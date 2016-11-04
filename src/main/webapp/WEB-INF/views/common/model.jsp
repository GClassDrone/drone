<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:fb="http://ogp.me/ns/fb#">
<head>
<script src="/resources/js/jquery-2.1.4.min.js"></script>
<script src="/resources/js/jquery-ui.min.js"></script>
<script src="/resources/js/login/LoginSocial.js"></script>
<script src="/resources/js/login/naverLogin_implicit-1.0.2.js" ></script>
<meta name="google-signin-client_id" content="454362485000-mvso1bhsstao8khbfvet4a5t3ibl7bfj.apps.googleusercontent.com">
<script src="/resources/js/login/platform.js" async defer></script>
<!-- 카카오 js -->
<script src="/resources/js/login/kakao.min.js"></script>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>

<title>Insert title here</title>
</head>
<body>
<div id ="dialog-login">
<form>
<input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
<!-- 구글 버튼 -->
<div align="center">
	<div class="g-signin2" data-onsuccess="onSignIn" >
	<img src="/resources/imgages/login/google-sign-in.png">
	</div>
<br>
</div>
<!-- 카카오톡 -->
<div align="center">
	<a id="kakao-login-btn"></a><br>
	<br>
</div>

<!-- 네이버 -->
<div align="center">
	<a id="naver_id_login"></a>
	<script src="/resources/js/login/naverLogin.js"></script><br>
	<br>
</div>
<!-- 페이스북 -->
<div align="center">
	<div class="fb-login-button" data-max-rows="10" data-size="xlarge" data-show-faces="false" data-auto-logout-link="false"></div>
</div>
</form>
</div>
<input type ="button" id ="login-user" value = "로그인">
</body>
</html>