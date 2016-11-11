<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
 
<link href="/resources/css/profile/profile.css" rel="stylesheet" type="text/css">
<script src="/resources/js/profile/profile.js"></script>

<script type="text/javascript">
$(document).ready(function() {
    $("[rel='tooltip']").tooltip();    
 
    $('.thumbnail').hover(
        function(){
            $(this).find('.caption').slideDown(250); //.fadeIn(250)
        },
        function(){
            $(this).find('.caption').slideUp(250); //.fadeOut(205)
        }
    ); 
 });
</script> 

<jsp:include page="../common/include.jsp"></jsp:include> 
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>
 <header class="bgimage hidden-xs">
 </header>
<div class="container">
   <div class="row">
       <br />
       <a href="ProfileList"><i class="material-icons">arrow_back</i> 
       <span style="font-size: 20px">Back</span></a>
   </div><br />
   <h1 style="text-align: center;"><strong>파일럿 정보</strong></h1>
   <!-- <p style="text-align: center;">회원님의 상세한 소개를 위한~~~~~~~</p> -->

	<div class="col-sm-10 col-sm-offset-1">
	    <div class="card hovercard">
	        <div class="card-background">
	            <img class="card-bkimg" alt="" src="/resources/images/castleMo.png">
	            <!-- http://lorempixel.com/850/280/people/9/ -->
	        </div>
	        <div class="useravatar">
	            <img alt="" src="/resources/images/castleMo.png">
	        </div>
	        <div class="card-info"> <span class="card-title">Castle Mo </span>
	        <a href="#"><i class="fa fa-2x fa-comments-o" style="color:#e040fb"></i></a>&nbsp; 
	        <a href="#"><sup><i class="fa fa-2x fa-pencil-square-o" style="color:#bdbdbd"></i></sup></a>
	        <section class="col-sm-8 col-sm-offset-2">
	        <div><p style="text-align: center;">저는 안양에 사는 모인성이고 ~~~~Doloremque quam porro ab ratione facilis, magni quo, velit impedit facere, error, rem obcaecati asperiores 
					      글자수 제한...</p></div>
	        </div>
	        </section>
	    </div>
	    
	    <div class="btn-pref btn-group btn-group-justified btn-group-lg" role="group" aria-label="...">
	        <div class="btn-group" role="group">
	            <button type="button" id="info" class="btn btn-default" href="#tab1" data-toggle="tab"><span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
	                <div class="hidden-xs">정보</div>
	            </button>
	        </div>
	        <div class="btn-group" role="group">
	            <button type="button" id="carrier" class="btn btn-default" href="#tab2" data-toggle="tab"><span class="fa fa-graduation-cap" aria-hidden="true"></span>
	                <div class="hidden-xs">경력</div>
	            </button>
	        </div>
	        <div class="btn-group" role="group">
	            <button type="button" id="drone" class="btn btn-default" href="#tab3" data-toggle="tab"><span class="fa fa-paper-plane-o" aria-hidden="true"></span>
	                <div class="hidden-xs">보유드론</div>
	            </button>
	        </div>
	        <div class="btn-group" role="group">
	            <button type="button" id="favorites" class="btn btn-default" href="#tab4" data-toggle="tab"><span class="fa fa-heart-o" aria-hidden="true"></span>
	                <div class="hidden-xs">즐겨찾기</div>
	            </button>
	        </div>
	        <div class="btn-group" role="group">
	            <button type="button" id="board" class="btn btn-default" href="#tab5" data-toggle="tab"><span class="fa fa-file-text-o" aria-hidden="true"></span>
	                <div class="hidden-xs">게시판</div>
	            </button>
	        </div>
	    </div>
	
	    <div class="well">
		      <div class="tab-content">
		        <div class="tab-pane fade in active" id="tab1">
		              <h3 style="display:inline-block">프로필 정보</h3> <a href="#tab1"><sup><i class="fa fa-2x fa-pencil-square-o" style="color:#bdbdbd"></i></sup></a>
					    <dl class="dl-horizontal">
					      <dt>개인 소개</dt>
					      <dd>Ipsum dolor sit amet, consectetur adipisicing elit. Esse quo ducimus dolorum dolore ipsam unde, 
					      <code>&lt;em&gt;</code>facere explicabo quae natus alias deserunt quibusdam voluptatem, 
					      <kbd>officiis</kbd> itaque rerum magni eius odio mollitia!</dd>
			              <br />		
					      <dt>랭킹</dt>
					      <dd>무당드론(아비터) </dd>
					      <br />		
					      <dt>이메일</dt>
					      <dd>Gdrone@gmail.com </dd>
					      <br />	
					      <dt>보유 라이센스 </dt>
					      <dd><ul>
					      	<li>초경량 비행장치 조종자 (2016.11.11)</li>
					      	<li>드론 지도사 자격증 (2016.11.11)</li>
					      </ul></dd>
					      <br />	
					      <dt>주요 활동지역</dt>
					      <dd>서울 구로 </dd>
					    </dl>
		        </div>
		        
		        <div class="tab-pane fade in" id="tab2">
		          <h3>주요 활동 경력</h3>
		            <div class="panel panel-warning">
           				<!--   panel-옵션 => default/ success / warning / info / danger / primary  -->
	                    <div class="panel-heading">
	                        <h3 class="panel-title" style="color:#4e342e">제1회 하천측량·하상변동조사 드론 경진대회</h3>
	                    </div>
	                    <div class="panel-body" style="background-color:white">
	                        <ul>
	                        <li>자격요건 : ~~~~~ </li>
	                        <li>DJI 팬텀4로 작품을 촬영하고, iMovie로 영상을 편집하여 장려상 수상 경력</li>
	                    </div>
	                    <div class="panel-footer">
	                        &raquo; <a href="#" style="color:#4e342e">'해당 영상 보러 가기' 링크</a>
	                    </div>
                	</div>
                	<div class="panel panel-warning">
           				<!--   panel-옵션 => default/ success / warning / info / danger / primary  -->
	                    <div class="panel-heading">
	                        <h3 class="panel-title" style="color:#4e342e">2016 대한민국 드론 영상제</h3>
	                    </div>
	                    <div class="panel-body" style="background-color:white">
	                        <ul>
	                        <li>주관 : 충청북도 (http://www.koreadrone.kr/) </li>
	                        <li>패럿 최신 ㅇㅇ모델을 활용한 시범비행 프로모션 행사 진행</li>
	                    </div>
	                    <div class="panel-footer">
	                        &raquo; <a href="#" style="color:#4e342e">'해당 영상 보러 가기' 링크</a>
	                    </div>
                	</div>
                	<a href="#" style="color:#616161"><i class="fa fa-3x fa-plus-square"></i></a>
		        </div>
		        
		        <div class="tab-pane fade in" id="tab3">
		          <h3>드론 보유 이력</h3>
	
	
				    <!-- TH1 -->
			        <div class="col-sm-4">
			            <div class="thumbnail">
			                <div class="caption">
		                     <h4 class="">Thumbnail Headline</h4>
			                    <p class="">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>
			                </div>
			                <img src="http://placehold.it/350x250" alt="..." class="">
			            </div>
			        </div>
			        <!-- TH2 -->
			        <div class="col-sm-4">
			            <div class="thumbnail">
			                <div class="caption">
			                   <h4 class="">Thumbnail Headline</h4>
			                    <p class="">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium</p>
			                </div>
			                <img src="http://placehold.it/350x250" alt="..." class="">
			            </div>
			        </div>
			        <!-- TH3 -->
			        <div class="col-sm-4">
			            <div class="thumbnail">
			                <div class="caption">
			                     <h4 class="">Thumbnail Headline</h4>
			                    <p class="">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum</p>
			                </div>
			                <img src="http://placehold.it/350x250" alt="..." class="">
			            </div>
			        </div>
			
	
	
		        </div>
		        
		        <div class="tab-pane fade in" id="tab4">
		          <h3>즐겨찾기 저장 목록</h3>
		                  <div class="section">
					            <div class="col-xs-12 col-sm-6 col-md-3">
					                <div class="embed-responsive embed-responsive-16by9">
					                    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/w2H07DRv2_M?autoplay=0" allowfullscreen=""></iframe>
					                </div>
					                <h3 class="text-center">Grooming</h3>
					            </div>
					            <div class="col-xs-12 col-sm-6 col-md-3">
					                <div class="embed-responsive embed-responsive-16by9">
					                    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/w2H07DRv2_M?autoplay=0" allowfullscreen=""></iframe>
					                </div>
					                <h3 class="text-center">Grooming</h3>
					            </div>
					            <div class="col-xs-12 col-sm-6 col-md-3">
					                <div class="embed-responsive embed-responsive-16by9">
					                    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/w2H07DRv2_M?autoplay=0" allowfullscreen=""></iframe>
					                </div>
					                <h3 class="text-center">General Health</h3>
					            </div>
					            <div class="col-xs-12 col-sm-6 col-md-3">
					                <div class="embed-responsive embed-responsive-16by9">
					                    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/w2H07DRv2_M?autoplay=0" allowfullscreen=""></iframe>
					                </div>
					                <h3 class="text-center">General Health</h3>
					            </div>
        					</div>
		        </div>
		        
		        <div class="tab-pane fade in" id="tab5">
		          <h3>소모임 게시판 운영 목록</h3>
		          	<table class="table table-hover">
                    <thead>
                        <tr>
                            <th>개설일</th>
                            <th>제목</th>
                            <th>게시판 목적</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="active">
                            <th scope="row">2016.11.11</th>
                            <td class="active"><a href="#" style="color:black">한강 고수부지 비행모임</a></td>
                            <td>서울에 거주하는 드론 보유 회원님들 눈오기 전에 같이 날려요.....</td>
                        </tr>
                        <tr class="success">
                            <th scope="row">2016.10.11</th>
                            <td><a href="#" style="color:black">DJI 팬텀 최신 드론 공동구매</a></td>
                            <td>2016년 12월 새로 출시되는 ㅇㅇㅇ 모델 중국 직구 공구 게시판입니다. 많이 참여 부탁합니다. 고고고곡고곡고고고고고고고^^~~~~~~~~~~ </td>
                        </tr>
                    </tbody>
                </table>
                <a href="#" style="color:#616161"><i class="fa fa-3x fa-plus-square"></i></a>
		        </div>
		      </div>
	    </div>
    
    </div>
            
</div>



<div class="container">
        <div class="col-md-12">
            <h1 class="text-center">게시 컨텐츠 목록</h1>
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

<<<<<<< HEAD
        <p class="more"><br />
            <button type="button" class="btn btn-default btn-sm center">
                <span class="fa fa-2x fa-fw fa-angle-double-down"></span> 
            </button>
        </p>
<jsp:include page="../common/footer.jsp"></jsp:include>
=======
				<div id="tabs-2">
					<p>가입된 게시판 목록</p>
				</div>

				<div id="tabs-3">
				
					<p>즐겨찾기된 콘텐츠 목록 (20~30개 제한)</p>
				</div>

				<div id="tabs-4">
						<label for="actnm">경력</label>
						<input type="text" name='actnm' class="form-control" value="${memDto.actnm}" readonly="readonly">
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
>>>>>>> 6feebe6908c568b0a89e04f24465079cde806334
</body>
</html>