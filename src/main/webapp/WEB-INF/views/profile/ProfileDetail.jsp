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
<script>
	$(function() {
		$("#tabs").tabs();
	});
	$(document).ready(function(){
		var formObj = $("form[role='form']");
		
		console.log(formObj);
		
		$(".btn-warning").on("click", function(){
			formObj.attr("action","/profile/modify");
			formObj.attr("method", "get");
			formObj.submit();
		});

		$(".btn-danger").on("click", function(){
			formObj.attr("action","/profile/remove");
			formObj.submit();
		});

		$(".btn-primary").on("click", function(){
			self.location = "/profile/ProfileList";
		});
	});

</script>
</head>

<body>
<%@include file="../common/include.jsp" %>
<%@include file="../common/header.jsp" %>
<form role="form" method="post">
	<input type='hidden' name='mno' value="1">
</form>
	<div class="section">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="/intro">home</a></li>
				<li><a href="/profile/ProfileList">파일럿</a></li>
				<li class="active">파일럿 상세보기</li>
			</ol>
			<div class="row">
				<div class="col-md-12">
					<div class="form-group">
						<h1 class="text-center">
							<label for="niknm">닉네임</label>
							<input type="text" name='niknm' class="form-control" value="${memDto.niknm}">
						</h1>
					</div>
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
						<label for="niknm">닉네임</label>
						<input type="text" name='niknm' class="form-control" value="${memDto.niknm}">
						
						<label for="levnpoint">파일럿랭킹(랭킹점수)</label>
						<input type="text" name='lev' class="form-control" value="${memDto.levnm}">
						<p>(<input type="text" name='lev' class="form-control" value="${memDto.levpoint}">)</p>
						
						<label for="locnm">지역</label>
						<input type="text" name='locnm' class="form-control" value="${memDto.locnm}">
					</p>
				</div>
				<div class="memo">
					<label for="prmsg">상태메세지</label>
					<input type="text" name='prmsg' class="form-control" value="${memDto.prmsg}">
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
					<div class="form-group">
						<label for="pic">사진</label>
						<input type="text" name='pic' class="form-control" value="${memDto.pic}">
						<label for="email">이메일</label>
						<input type="text" name='email' class="form-control" value="${memDto.email}">
						<label for="license">라이센스</label>
						<input type="text" name='license' class="form-control" value="${memDto.license}">
						<label for="msgrcyn">메세지 수신여부</label>
						<input type="text" name='msgrcyn' class="form-control" value="${memDto.msgrcyn}">
						<label for="locnm">지역</label>
						<input type="text" name='locnm' class="form-control" value="${memDto.locnm}">
					</div>
				</div>

				<div id="tabs-2">
					<p>가입된 게시판 목록</p>
				</div>

				<div id="tabs-3">
					<p>즐겨찾기된 콘텐츠 목록 (20~30개 제한)</p>
				</div>

				<div id="tabs-4">
						<label for="actnm">경력</label>
						<input type="text" name='actnm' class="form-control" value="${memDto.actnm}">
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