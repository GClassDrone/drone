<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<style>
a {
	color: white;
}
</style>

    <footer class="section section-info">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <a href="/teamMember"><h1>GClass</h1></a>
                    <p>Copyright ⓒ &nbsp;2016 by GClass, All rights reserved. Contact Us
                        <br>XSharing.lab@gmail.com</p>
                </div>
                <div class="col-sm-6">
                    <p class="text-info text-right">
                        <br>
                        <br>
                    </p>
                    <div class="row">
                        <div class="col-md-12 hidden-xs text-right">
                            <a href="https://www.facebook.com/ktwibro" target="_blank"><i class="fa fa-facebook-square" style="font-size:36px; color:white"></i></a> &nbsp;
                            <a href="https://plus.google.com/u/0/+YoungKimkt" target="_blank"><i class="fa fa-google-plus-official" style="font-size:36px; color:white"></i></a> &nbsp;
                            <a href="https://twitter.com/ktm2mt" target="_blank"><i class="fa fa-twitter-square" style="font-size:36px; color:white"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
<jsp:include page="../map/videoModal.jsp"></jsp:include>
<div id ="dialog-login">
	<form >
	<input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
	<input type="hidden" name="siteid" value=""> 
		<!-- 구글 버튼 -->
		<div align="center">
			<div id="sns_google">
				<button class="loginBtn">
					<img src="/resources/images/login/google-sign-in.png" width="200px" height="40px">
				</button>
			</div>
		<br>
		</div>
		<!-- 카카오톡 -->
		<div align="center">
			<div id="kakao-login-btn"></div><br>
		</div>
		
		<!-- 네이버
		
		<div align="center">
			<a id="naver_id_login"></a>
			<script type="text/javascript">
			var naver_id_login = new naver_id_login("CWr_84d1XvIQID9amjdB","http://http://gclass.mooo.com:8080");
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
			<script src="/resources/js/login/naverLogin.js"></script>
			<br>
			<br>
		</div>  -->
		<!-- 페이스북 -->
		<div align="center">
			<div id="sns_facebook">
				<button class="loginBtn" onclick="faceLogin();">
					<img src="/resources/images/login/sign-in-facebook.png" width="200px" height="40px">
				</button>
			</div>
		</div>
	</form>
</div>