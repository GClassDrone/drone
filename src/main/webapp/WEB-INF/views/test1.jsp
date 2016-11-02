<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 네이버 js -->
<script type="text/javascript" src="http://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<!-- 카카오 js -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<title>Insert title here</title>
</head>
<body>
<div id="naver_id_login"></div>

<!-- 네이버 로그인 -->
<script type="text/javascript">
	var naver_id_login = new naver_id_login("CWr_84d1XvIQlD9amjdB", "http://192.168.0.23:8080/test1");
	var state = naver_id_login.getUniqState();
	naver_id_login.setButton("white", 2, 40);
	naver_id_login.setDomain(".service.com");
	naver_id_login.setState(state);
	naver_id_login.setPopup();
	naver_id_login.init_naver_id_login();
	
	function naverSignCallback(){
		alert(naver_id_login.getProfileDate('email'));
		alert(naver_id_login.getProfileDate('nickname'));
		alert(naver_id_login.getProfileDate('age'));
	}
	alert(naver_id_login.getProfileDate('email'));
	alert(naver_id_login.getProfileDate('nickname'));
	alert(naver_id_login.getProfileDate('age'));
	naver_id_login.get_naver_userprofile(naverSignCallback());
</script>

<!-- 페이스북 로그인 -->
<script>
  function statusChangeCallback(response) {
    console.log('statusChangeCallback');
    console.log(response);
    if (response.status === 'connected') {
      testAPI();
    } else if (response.status === 'not_authorized') {
      document.getElementById('status').innerHTML = 'Please log ' +
        'into this app.';
    } else {
      document.getElementById('status').innerHTML = 'Please log ' +
        'into Facebook.';
    }
  }
  function checkLoginState() {
    FB.getLoginStatus(function(response) {
      statusChangeCallback(response);
    });
  }

  window.fbAsyncInit = function() {
  FB.init({
    appId      : '{319535861760649}',
    cookie     : true,  // enable cookies to allow the server to access 
    xfbml      : true,  // parse social plugins on this page
    version    : 'v2.8' // use graph api version 2.5
  });

  FB.getLoginStatus(function(response) {
    statusChangeCallback(response);
  });

  };


  // Here we run a very simple test of the Graph API after login is
  // successful.  See statusChangeCallback() for when this call is made.
  function testAPI() {
    console.log('Welcome!  Fetching your information.... ');
    FB.api('/me', function(response) {
      console.log('Successful login for: ' + response.name);
      document.getElementById('status').innerHTML =
        'Thanks for logging in, ' + response.name + '!';
    });
  }
</script>

<!--
  Below we include the Login Button social plugin. This button uses
  the JavaScript SDK to present a graphical Login button that triggers
  the FB.login() function when clicked.
-->

<div id="fb-root"></div>
<script>
	(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id)) return;
		js = d.createElement(s); js.id = id;
		js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.8&appId=319535861760649";
		fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
</script>
	<div class="fb-login-button" data-max-rows="1" data-size="xlarge" data-show-faces="false" data-auto-logout-link="false"></div>

<a id="kakao-login-btn"></a>
<a href="http://alpha-developers.kakao.com/logout"></a>
<script type='text/javascript'>
	//<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('3e0f3c6fb1266462e7580703c7107575');
    // 카카오 로그인 버튼을 생성합니다.
    Kakao.Auth.createLoginButton({
      container: '#kakao-login-btn',
      success: function(authObj) {
        Kakao.API.request({
        	url: '/v1/user/me',
        	success: function(res){
        		alert(res.properties.nickname+'님 환영합니다.');
        		location.href="./result?name="+res.properties.nickname;
        	},
        	fail: function(error){
        		alert(JSON.stringify(error));
        	}
        });
      },
        fail: function(err){
        	alert(JSON.stringify(err));
        }
    });
   function ktout(){
	   Kakao.Auth.logout(function(){
		   setTimeout(function(){
			   location.href="http://192.168.0.23:8080/test1"
		   },1000);
		   });
   }
  //]]>
</script>
<script type="text/javascript">
	Twitter twitter = new TwitterFactory().getInstance();
	
	twitter.setOauthConsumer("CONSUMER_KEY","CONSUMER_SECRET");
	String oauthToken = request.getParamerter("oauth_token");
	
	String token = (String)request.getSession().getAttribute("Token");
	String secret = (String)requsest.getSesstion.getAttribute("Secret");
	
	AccessToken accessToken = null;
	
	if(token.equals(oauthToken)){
		try{
						
		}catch (e) {
		}	
	}
</script>

<%-- 로그인 --%>
<div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div>
<%-- 로그아웃 --%>
<a href="#" onclick="signOut();">Sign out</a>
<%-- 로그인 --%>
<script>
function onSignIn(googleUser) {

  gapi.client.load('plus', 'v1', function() {

         gapi.client.plus.people.get( {'userId' : 'me'} ).execute(function(profileResult) {

           // Shows profile information

           console.log(profileResult);

         })

         





         var id_token = googleUser.getAuthResponse().id_token;

         console.log("ID Token: " + id_token);

     

         $.ajax({

          url : "/getGoogleProfile",

        type : "post",

        dataType : "json",

        data :  {"id_token" : id_token},

        success : function(data) {

              

        }

         }); 

    });

 }







<%-- 로그아웃 --%>

function signOut() {

        var auth2 = gapi.auth2.getAuthInstance();

        auth2.signOut().then(function () {

          console.log('User signed out.');

        });

    }



</script>

</body>

</html>