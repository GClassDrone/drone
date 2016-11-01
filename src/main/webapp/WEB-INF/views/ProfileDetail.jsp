<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="/resources/css/intro.css" rel="stylesheet" type="text/css">
<link href="/resources/css/ProfileDetail.css" rel="stylesheet"
	type="text/css">
<script src="/resources/js/jquery-2.1.4.min.js"></script>
<script src="/resources/js/jquery-ui.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/script.js"></script>
<link rel="stylesheet" href="/resources/css/jquery-ui.css">
<style type="text/css">
.navbar-default {
	width: 100%;
	z-index: 9999;
}

.more {
	text-align: center;
}

.breadcrumb {
	background: rgba(23, 21, 21, 0);
	border: 0px solid rgba(245, 245, 245, 1);
	border-radius: 0px;
	display: block;
}

.breadcrumb li {
	font-size: 14px;
}

.breadcrumb a {
	color: rgba(66, 139, 202, 1);
}

.breadcrumb a:hover {
	color: rgba(42, 100, 150, 1);
}

.breadcrumb>.active {
	color: rgba(153, 153, 153, 1);
}

.breadcrumb>li+li:before {
	color: rgba(204, 204, 204, 1);
	content: "\002F\00a0";
}
</style>

<script>
	$(function() {
		$("#tabs").tabs();
	});
</script>
</head>

<body>
	<header class="bgimage hidden-xs"> <nav
		class="navbar navbar-default" data-spy="affix">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#navbar-ex-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"><span>GClass</span></a>
		</div>
		<div class="collapse navbar-collapse" id="navbar-ex-collapse">
			<p class="navbar-text">Sharing People's Drone Life</p>
			<ul class="nav navbar-nav">
				<li><a href="#">드론영상</a></li>
				<li><a href="#">카테고리</a></li>
				<li class="active">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">정보 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">시장동향</a></li>
						<li><a href="#">게시판</a></li>
					</ul></li>
				<li><a href="#">파일럿</a></li>
			</ul>
			<form class="navbar-form navbar-right" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search"
						name="">
				</div>
				<button type="submit" class="btn btn-default">go</button>
			</form>
			<button type="button" class="btn btn-default navbar-btn pull-right">sign-in</button>
		</div>
	</div>
	</nav> </header>
	<div class="section">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="#">home</a></li>
				<li><a href="#">파일럿</a></li>
				<li class="active">파일럿 상세보기</li>
				<!-- <li><a href="#">grooming</a></li> -->
			</ol>
			<div class="row">
				<div class="col-md-12">
					<h1 class="text-center">파일럿 닉네임이 들어가는 곳</h1>
					<p class="text-center">파일럿의 개인 소개가 들어가는 곳</p>
				</div>
			</div>
		</div>
		<div class="container">
			<br>
			<div class="row">
				<div class="col-md-3">
					<img
						src="http://pingendo.github.io/pingendo-bootstrap/assets/user_placeholder.png"
						class="img-profile">
					<h6 class="text-center">
						닉네임
						<p>
							파일럿 랭킹(랭킹점수)<br>지역
						</p>
					</h6>
				</div>

			</div>
			<div id="tabs">
				<ul>
					<li><a href="#tabs-1">기본정보</a>
					<li><a href="#tabs-2">가입된 게시판</a>
					<li><a href="#tabs-3">즐겨 찾기</a>
					<li><a href="#tabs-4">경력</a>
				</ul>
				<div id="tabs-1">
							<ul class="propro">
								<p>
								<li>사이트</li>
								<li>메일주소</li>
								<li>비번(수정시보일것)</li>
								<li>보유드론</li>
								<li>라이센스</li>
								<li>랭킹점수 상세보기(즐찾+조회수)</li>
								</p>
							</ul>
				</div>

				<div id="tabs-2">
					<p>경력사항 입력 폼</p>
				</div>

				<div id="tabs-3">
					<p>학력사항 입력 폼</p>
				</div>

				<div id="tabs-4">
					<p>자격증 입력 폼</p>
				</div>
			</div>
		</div>
		<div class="container">
		<div class="section">
			<div class="col-xs-12 col-sm-6 col-md-3">
	                <div class="embed-responsive embed-responsive-16by9">
	                    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/w2H07DRv2_M?autoplay=0" allowfullscreen=""></iframe>
	                </div>
	                <h3>Grooming</h3>
	                <p>Our therapeutic grooming treatments help battle fleas, allergic dermatitis, and other challenging skin conditions.</p>
	            </div>
	            <div class="col-xs-12 col-sm-6 col-md-3">
	                <div class="embed-responsive embed-responsive-16by9">
	                    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/w2H07DRv2_M?autoplay=0" allowfullscreen=""></iframe>
	                </div>
	                <h3>Grooming</h3>
	                <p>Our therapeutic grooming treatments help battle fleas, allergic dermatitis, and other challenging skin conditions.</p>
	            </div>
	            <div class="col-xs-12 col-sm-6 col-md-3">
	                <div class="embed-responsive embed-responsive-16by9">
	                    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/w2H07DRv2_M?autoplay=0" allowfullscreen=""></iframe>
	                </div>
	                <h3>General Health</h3>
	                <p>Wellness and senior exams, ultrasound, x-ray, and dental cleanings are just a few of our general health services.</p>
	            </div>
	         	<div class="col-xs-12 col-sm-6 col-md-3">
	                <div class="embed-responsive embed-responsive-16by9">
	                    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/w2H07DRv2_M?autoplay=0" allowfullscreen=""></iframe>
	                </div>
	                <h3>General Health</h3>
	                <p>Wellness and senior exams, ultrasound, x-ray, and dental cleanings are just a few of our general health services.</p>
	            </div>
	         </div>
          </div>
			<!-- 밑으로 페이지 내리는 부분 -->
			<p class="more">
				<button type="button" class="btn btn-default btn-sm center">
					<span class="fa fa-2x fa-fw fa-angle-double-down"></span>
				</button>
			</p>
		</div>



	<!--     푸터부분 -->




	<footer class="section section-info">
	<div class="container">
		<div class="row">
			<div class="col-sm-6">
				<h1>GClass</h1>
				<p>
					Copyright ⓒ &nbsp;2016 by GClass, All rights reserved. Contact Us <br>XSharing.lab@gmail.com.
				</p>
			</div>
			<div class="col-sm-6">
				<p class="text-info text-right">
					<br> <br>
				</p>
				<div class="row">
					<div class="col-md-12 hidden-xs text-right">
						<a href="https://www.facebook.com/ktwibro" target="_blank"><i
							class="fa fa-facebook-square"
							style="font-size: 36px; color: white"></i></a> &nbsp; <a
							href="https://plus.google.com/u/0/+YoungKimkt" target="_blank"><i
							class="fa fa-google-plus-official"
							style="font-size: 36px; color: white"></i></a> &nbsp; <a
							href="https://twitter.com/ktm2mt" target="_blank"><i
							class="fa fa-twitter-square"
							style="font-size: 36px; color: white"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</footer>
</body>

</html>