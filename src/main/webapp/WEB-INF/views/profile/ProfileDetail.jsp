<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/resources/css/ProfileDetail.css" rel="stylesheet"
	type="text/css">
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
<%@include file="../common/include.jsp" %>
<%@include file="../common/header.jsp" %>
	<div class="section">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="#">home</a></li>
				<li><a href="#">파일럿</a></li>
				<li class="active">파일럿 상세보기</li>
			</ol>
			<div class="row">
				<div class="col-md-12">
					<h1 class="text-center">파일럿 닉네임이 들어가는 곳</h1>
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
				</div>
				<div class="form-group">		
					<p>
						닉네임<br>
						파일럿 랭킹(랭킹점수)<br>
						지역
					</p>
				</div>
				<div class="memo">
					<p>파일럿 개인 정보 설명하는 곳</p>
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
					<p>가입된 게시판 목록</p>
				</div>

				<div id="tabs-3">
					<p>즐겨찾기된 콘텐츠 목록 (20~30개 제한)</p>
				</div>

				<div id="tabs-4">
					<p>경력에 관한 내용</p>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="section">
				<div class="col-xs-12 col-sm-6 col-md-3">
					<div class="embed-responsive embed-responsive-16by9">
						<iframe class="embed-responsive-item"
							src="https://www.youtube.com/embed/w2H07DRv2_M?autoplay=0"
							allowfullscreen=""></iframe>
					</div>
					<h3>Grooming</h3>
					<p>Our therapeutic grooming treatments help battle fleas,
						allergic dermatitis, and other challenging skin conditions.</p>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-3">
					<div class="embed-responsive embed-responsive-16by9">
						<iframe class="embed-responsive-item"
							src="https://www.youtube.com/embed/w2H07DRv2_M?autoplay=0"
							allowfullscreen=""></iframe>
					</div>
					<h3>Grooming</h3>
					<p>Our therapeutic grooming treatments help battle fleas,
						allergic dermatitis, and other challenging skin conditions.</p>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-3">
					<div class="embed-responsive embed-responsive-16by9">
						<iframe class="embed-responsive-item"
							src="https://www.youtube.com/embed/w2H07DRv2_M?autoplay=0"
							allowfullscreen=""></iframe>
					</div>
					<h3>General Health</h3>
					<p>Wellness and senior exams, ultrasound, x-ray, and dental
						cleanings are just a few of our general health services.</p>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-3">
					<div class="embed-responsive embed-responsive-16by9">
						<iframe class="embed-responsive-item"
							src="https://www.youtube.com/embed/w2H07DRv2_M?autoplay=0"
							allowfullscreen=""></iframe>
					</div>
					<h3>General Health</h3>
					<p>Wellness and senior exams, ultrasound, x-ray, and dental
						cleanings are just a few of our general health services.</p>
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
<%@include file="../common/footer.jsp" %>
</body>

</html>