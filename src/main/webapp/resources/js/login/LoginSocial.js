//모달
$(function(){
	var form;
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
	$("#login-user").button().on("click", function(){
		dialog.dialog("open");
	});
});

//카카오톡
$(function(){
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
        		alert(res.id+'aaa');
        		alert(res.properties.profile_image+'aaa');
        		location.href="http://192.168.0.23:8080/intro";
        		//location.href="./result?name="+res.properties.id;
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
			   location.href="http://192.168.0.23:8080/intro"
		   },1000);
		   });
   }
 });

//구글
$(function(){
	function signOut() {
	    var auth2 = gapi.auth2.getAuthInstance();
	    auth2.signOut().then(function () {
	      console.log('User signed out.');
	 });
	}   
	function onSignIn(googleUser) {
	var profile = googleUser.getBasicProfile();
	console.log('ID: ' + profile.getId()); 
	console.log('Name: ' + profile.getName());
	console.log('Image URL: ' + profile.getImageUrl());
	console.log('Email: ' + profile.getEmail());
	}   
});

//네이버

//페이스북
$(function(){
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
