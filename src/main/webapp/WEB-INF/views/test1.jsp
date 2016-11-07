<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
<form >
<table align="center" ></table>
<input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
<!-- 구글 버튼 -->
<div class="g-signin2" data-onsuccess="onSignIn"></div>
<br>
<br>
<!-- 카카오톡 -->
<a style="" id="kakao-login-btn"></a><br>
<br>
<!-- 네이버 -->
<a id="naver_id_login"></a>
<script type="text/javascript">
	var naver_id_login = new naver_id_login("CWr_84d1XvIQlD9amjdB", "http://192.168.0.23:8080/test1");
	var state = naver_id_login.getUniqState();
	naver_id_login.setButton("green", 3, 48);
	naver_id_login.setDomain(".service.com");
	naver_id_login.setState(state);
	naver_id_login.setPopup();
	naver_id_login.init_naver_id_login();
	
	function naverSignCallback(){
		alert(naver_id_login.getProfileDate('email'));
		alert(naver_id_login.getProfileDate('nickname'));
		alert(naver_id_login.getProfileDate('age'));
	}
	naver_id_login.get_naver_userprofile("naverSignCallback()");
</script>
<!-- 페이스북 -->
<div class="fb-login-button" data-max-rows="1" data-size="xlarge" data-show-faces="false" data-auto-logout-link="false"></div>
</form>
</div>

<input type ="button" id ="login-user" value = "로그인">
</body>
</html>