<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
 
<link href="/resources/css/profile/profile.css" rel="stylesheet" type="text/css">
<script src="/resources/js/profile/profile.js"></script>
<jsp:include page="../common/include.jsp"></jsp:include>

<script>
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

</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>
<!-- <header class="bgimage hidden-xs">
 </header>  -->

<form role="form" method="post">
	<input type='hidden' name='mno' value="${memDto.mno}">

<div class="form-group">
<div class="container">
   
   <h1 id="pilot" style="text-align: center;"><strong>정보 수정 페이지</strong></h1>
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
	        <div class="card-info"> 
	        	<span class="card-title" id="niknm">${memDto.niknm}</span><br>
			        <a href="/mem/Profilemodify?mno=${memDto.mno}"><sup><i class="fa fa-2x fa-pencil-square-o" style="color:#bdbdbd">수정 완료</i></sup></a>
	        <div class="col-sm-8 col-sm-offset-2">
		        <div><p style="color: black;">${memDto.prmsg}</p></div>
		        </div>
	        </div>
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
	<div id="form-group">
	    <div class="well">
		      <div class="tab-content">
		        <div class="tab-pane fade in active" id="tab1">
		              <h3 style="display:inline-block">프로필 정보</h3> <a href="#tab1"><sup><i class="fa fa-2x fa-pencil-square-o" style="color:#bdbdbd"></i></sup></a>
					    <dl class="dl-horizontal">
					      <dt>개인 소개</dt>
					      <dd>
					      	<input type="text" id="prmsg" name="prmsg" class="form-control" value="${memDto.prmsg}"/>
					      </dd>
			              <br />		
					      <dt>이메일</dt>
					      <dd>${memDto.email}</dd>
					      <br />	
					      <dt>보유 라이센스 </dt>
					      <dd><ul>
					      	<li>${memDto.mdrnm}</li>
					      	<li>자격증에서 긁어와서 뿌려주기</li>
					      </ul></dd>
					      <br />	
					      <dt>주요 활동지역</dt>
					      <dd>${memDto.locnm} </dd>
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
		                    </ul>
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
		                    </ul>
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
		                     <h4 class="">DJI Mavic Pro</h4>
			                    <p class="">휴대가 용이한 접이식 드론. 개인용 항공촬영 목적에 적합. 휴대성과 촬영성능이 높으면서도 조작이 간편하다.
			                    2016년11월 구매</p>
			                </div>
			                <img src="/resources/images/dji-mavic.jpg" alt="..." class="">
			            </div>
			        </div>
			        <!-- TH2 -->
			        <div class="col-sm-4">
			            <div class="thumbnail">
			                <div class="caption">
			                   <h4 class="">Parrot Disco</h4>
			                    <p class="">시속 80Km, 비행시간 45분, 원버튼 자동귀환, 1인칭 비행 FPV. 2016년1월 구매</p>
			                </div>
			                <img src="/resources/images/parrot.jpg" alt="..." class="">
			            </div>
			        </div>
			        <!-- TH3 -->
			        <div class="col-sm-4">
			            <div class="thumbnail">
			                <div class="caption">
			                     <h4 class="">시마 X5</h4>
			                    <p class="">입문용 국민드론. 조립형으로 카메라 부품 장착. 구매 : 2015.05</p>
			                </div>
			                <img src="/resources/images/syma.jpg" alt="..." class="">
			            </div>
			        </div>
			        <div class="clearfix"></div>
			        <a href="#" style="color:#616161"><i class="fa fa-3x fa-plus-square"></i></a>
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
                            <th>제목</th>
                            <th>게시판 목적</th>
                            <th>개설일</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${mylist}" var="MemDto">
                        <tr class="active">
                            <td class="active"><a href="#" style="color:black;">${MemDto.subjttl}</a></td>
                            <td>${MemDto.subjctt}</td>
                            <th scope="row">${MemDto.opendt}</th>
                        </tr>
                    </c:forEach>
<!--                         <tr class="success">
                            <th scope="row">2016.10.11</th>
                            <td><a href="#" style="color:black">DJI 팬텀 최신 드론 공동구매</a></td>
                            <td>2016년 12월 새로 출시되는 ㅇㅇㅇ 모델 중국 직구 공구 게시판입니다. 많이 참여 부탁합니다. 고고고곡고곡고고고고고고고^^~~~~~~~~~~ </td>
                        </tr> -->
                    </tbody>
                </table>
                <a href="#" style="color:#616161"><i class="fa fa-3x fa-plus-square"></i></a>
		        </div>
		      </div>
	    </div>
    </div>
  </div>          
</div>
</div>
</form>
	<!--     푸터부분 -->
<%@include file="../common/footer.jsp" %>
</body>
</html>