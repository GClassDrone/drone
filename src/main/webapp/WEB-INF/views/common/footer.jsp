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
	<form>
	<input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
		<!-- 구글 버튼 -->
		<div align="center">
			<div class="g-signin2" data-onsuccess="onSignIn" >
			<img src="/resources/images/login/google-sign-in.png">
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