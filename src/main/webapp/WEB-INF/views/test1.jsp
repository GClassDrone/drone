<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--
/*
 *
 * Copyright 2015 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
-->

<!DOCTYPE html>
<html>
<head>
  <title>Google+ JavaScript Quickstart</title>
  <!-- JavaScript specific to this application that is not related to API
     calls -->
  <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js" ></script>
  <meta name="google-signin-client_id" content="454362485000-4c8v5kv4ruupsef6l6716i9ulmpqe3s8.apps.googleusercontent.com"></meta>
</head>
<body>
 <div id="sns_google">
	<button class="loginBtn" onclick="onSignIn">
	<span class="icon"></span>
	<span class="buttonText">구글 로그인</span>	
	</button>
<div>
 
<script type="text/javascript">

var googleUser = {};
  var startApp = function() {
    gapi.load('auth2', function(){
      // Retrieve the singleton for the GoogleAuth library and set up the client.
      auth2 = gapi.auth2.init({
        client_id: '516768670649-csqp0komrhs8q8iocbtf9c2hmulfeqq8.apps.googleusercontent.com',
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
		document.getElementById('name').innerText = "Signed in: " +
		googleUser.getBasicProfile().getName();
		var frm = document.frm;
		$("#mid").val("");
		$("#mpw").val("");
		$("#mnm").val(googleUser.getBasicProfile().getName());
		$("#memail").val(googleUser.getBasicProfile().getEmail());
		$("#muuid").val(googleUser.getBasicProfile().getId());
		$("#mmanyn").val("4");
		frm.submit();
	}, function(error) {
		alert(JSON.stringify(error, undefined, 2));
	});
}
</script>
<script src="https://apis.google.com/js/client:platform.js?onload=startApp"></script>
</body>
</html>
