//모달
$(function(){
	/*var form;
	var dialog;
	dialog = $("#dialog-login").dialog({
		autoOpen : false,
		height : 400,
		width : 400,
		modal : true,
	});
	form = dialog.find("form").on("submit",function(event){
		event.preventDefault();
	});
	$("#login-user").on("click", function(){
		dialog.dialog("open");
	});*/

	//카카오톡
	var siteid;
	var siteno = 2;
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('3e0f3c6fb1266462e7580703c7107575');
    // 카카오 로그인 버튼을 생성합니다.
    Kakao.Auth.createLoginButton({
      container: '#kakao-login-btn',
      success: function(authObj) {
        Kakao.API.request({
        	url: '/v1/user/me',
        	success: function(res){
        		siteid = res.id;
        		location.href="http://localhost:8080/login?siteid="+siteid+"&siteno="+siteno;
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
			   location.href="http://localhost:8080/intro"
		   },1000);
		   });
   }

//구글
   function login(){
	   hello('google').login({scope: 'email'}).then(function(auth) {
		   hello(auth.network).api('/me').then(function(r) {
			   console.log(JSON.stringify(auth));
			   accessToken = auth.authResponse.access_token;
			   console.log(accessToken);
			   getGoogleMe(); // 로그인 하자마자 바로 사용자 정보 호출한다.
		   });
	   });
   }
   function getGoogleMe(){
	   hello('google').api('me').then(
	   function(json) {
	   console.log(JSON.stringify(json));
	   name = json.name;
	   email = json.email;
	   domain = json.domain;
	   thumbnail = json.thumbnail;
	   console.log('name   : ' + name);
	   console.log('email  : ' + email);
	   console.log('domain : ' + domain);
	   console.log('thumbnail : ' + thumbnail);
	   loginComplete();// JSNI에 정의 되어있다.
	   },
	   function(e) {
	   console.log('me error : ' + e.error.message);
	   });
   }
//네이버

//페이스북
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
	(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id)) return;
		js = d.createElement(s); js.id = id;
		js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.8&appId=319535861760649";
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
});
//트위터
