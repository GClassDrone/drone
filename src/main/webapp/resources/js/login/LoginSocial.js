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
        		location.href="/login?siteid="+siteid+"&siteno="+siteno;
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
			   location.href="/intro"
		   },1000);
		   });
   }

//네이버

});
//구글 로그인
var googleUser = {};
var startApp = function() {
  gapi.load('auth2', function(){
    // Retrieve the singleton for the GoogleAuth library and set up the client.
    auth2 = gapi.auth2.init({
      client_id: '454362485000-4c8v5kv4ruupsef6l6716i9ulmpqe3s8.apps.googleusercontent.com',
      cookiepolicy: 'single_host_origin',
      // Request scopes in addition to 'profile' and 'email'
      //scope: 'additional_scope'
    });
    attachSignin(document.getElementById('sns_google'));
  });
};

function attachSignin(element) {
	console.log(element.id);
	auth2.attachClickHandler(element, {},
	function(googleUser) {
		var siteid = googleUser.getBasicProfile().getId();
		var siteno = 3;
		location.href="/login?siteid="+siteid+"&siteno="+siteno;
	}, function(error) {
		alert(JSON.stringify(error, undefined, 2));
	});
}




//페이스북 appid, 버전 입력
window.fbAsyncInit = function() {
	FB.init({
		appId : '{319535861760649}',
		status : true,
		cookie : true,
		xfbml : true,
		version : 'v2.8'
	});
	
//	초기화 스크립트.
	FB.getLoginStatus(function(response) {
		statusChangeCallback(response);
	});
	
};

function statusChangeCallback(response) {
	console.log('statusChangeCallback');
	console.log(response);
	
	
	
}

//페이스북 로그인 여부 체크
function checkLoginState() {
	FB.getLoginStatus(function(response) {
		statusChangeCallback(response);
	});
}



//익명 즉시실행 함수, 함수를 정의함과 동시에 실행. 이후 다시 실행되지 않음.
(function(d, s, id) {
	var js, fjs = d.getElementsByTagName(s)[0];
	if (d.getElementById(id))
		return;
	js = d.createElement(s);
	js.id = id;
	js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.8&appId=319535861760649";
	fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

function testAPI() {
	console.log('Welcome!  Fetching your information.... ');
	FB.api(
		'/me',
		function(response) {
			console.log('Successful login for: '+ response.name);
			document.getElementById('status').innerHTML 
				= 'Thanks for logging in, '	+ response.name + '!';
		});
}

function faceLogin(){
	FB.login(function(response) {
	},{scope: 'email'});
	
	
	FB.getLoginStatus(function(response) {
		faceLoginSubmit(response);				
	});
}

function faceLoginSubmit(response){
	if(response.status === 'connected'){
		
		FB.api('/me', {fields: 'name,email'}, function(result){
			var siteid = result.id;
			var siteno = 4;
			location.href="/login?siteid="+siteid+"&siteno="+siteno;
		});
	}
}

//트위터
