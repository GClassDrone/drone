<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
<head>
 
<jsp:include page="../common/include.jsp"></jsp:include>
<link href="/resources/css/profile/profile.css" rel="stylesheet" type="text/css">
<script src="/resources/js/profile/profile.js"></script>
<script type="text/javascript" src="/resources/js/cate/cateList2.js"></script>
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

    /* 콘텐츠 불러오는 부분 */
    
	var formObj = $("form[role='form']").eq(0);
	console.log(formObj);
	/* $("#reg").on("click", function(){
		formObj.attr("action", "/map/ctsInsert");
		formObj.attr("method","get");
		formObj.submit();
	}); */
	/* $(".btn-danger").on("click",function(){
		formObj.attr("action", "/map/ctsmodify");
		formObj.attr("method","post");
		
		formObj.submit();
	});
	$("#maprmv").on("click",function(){
		formObj.attr("action", "/map/remove");
		formObj.attr("method","post");
		
		formObj.submit();
	}); */
 });
 	/* 프로필 ->게시판->게시판리스트에서 삭제, 업데이트하는버튼 */
 	
var bdelete = function(subjno){
	var formObj = $("form[role='form']").eq(0);
	var mno = "${memDto.mno}";
	
	formObj.attr("action", "/bsubj/subremove?subjno="+subjno+"&mno="+mno);
	formObj.attr("method","post");
	
	formObj.submit();
};

var bupdate = function(subjno) {
	/* $(location).attr("href","/bsubj/submodify?subjno="+subjno); */
	var formObj = $("form[role='form']").eq(0);
	
	alert(subjno);
	
	formObj.attr("action", "/bsubj/submodify?mno="+mno+"&subjno="+subjno);
	formObj.attr("method","get");
	alert(formObj.attr("action"));
	formObj.submit();
};

</script>

</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>
<!-- <header class="bgimage hidden-xs">
 </header>  -->

<form role="form" method="post">
	<input type='hidden' name='mno' id="mymno" value="${memDto.mno}">
	<input type='hidden' name='mno' id="himno" value="${mno}">
</form>

<div class="container">
   <div class="row">
       <br />
       <a href="ProfileList"><i class="material-icons">arrow_back</i> 
       <span style="font-size: 20px">Back</span></a>
   </div><br />
   <h1 id="pilot" style="text-align: center;"><strong>파일럿 정보</strong></h1>
   <!-- <p style="text-align: center;">회원님의 상세한 소개를 위한~~~~~~~</p> -->
   
<div class="form-group">
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
	        	<c:if test="${mno eq memDto.mno}"> 
			        <a href="/mem/Profilemodify?mno=${memDto.mno}"><sup><i class="fa fa-2x fa-pencil-square-o" style="color:#bdbdbd">정보 수정</i></sup></a>
			    </c:if>
	        <div class="col-sm-8 col-sm-offset-2">
		        <div style="color: black;">
				<c:set var="prmsg" value="${memDto.prmsg}" />
				<c:choose>
				    <c:when test="${prmsg eq null}">
				   	상태메세지를 적어주세요.
				    </c:when>
				    <c:otherwise>
				      ${memDto.prmsg}
				    </c:otherwise>
				</c:choose>
		        </div>
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
	
	    <div class="well">
		      <div class="tab-content">
		        <div class="tab-pane fade in active" id="tab1">
		              <h3 style="display:inline-block">프로필 정보</h3>
					    <dl class="dl-horizontal">
					      <dt>랭킹</dt>
					      <dd>${memDto.levnm},${memDto.levnic }<br>(점수 : ${memDto.levpoint}) </dd>
					      <br />		
					      <dt>이메일</dt>
					      <dd>${memDto.email}</dd>
					      <br />	
					      <dt>보유 라이센스 </dt>
					      <dd><ul>
					      	<dd>${memDto.mdrnm}</dd>
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
	                       <a href="#"><i class="fa fa-2x fa-pencil-square-o" style="color:#bdbdbd; float: right;"></i></a>
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
	                        <a href="#"><i class="fa fa-2x fa-pencil-square-o" style="color:#bdbdbd; float: right;"></i></a>
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
		          <c:forEach items="${dronelist}" var="droneDto">
				    <!-- TH1 -->
			        <div class="col-sm-4">
			            <div class="thumbnail">
			                <div class="caption">
		                     <h4 class="">모델명 : ${droneDto.model}</h4>
			                    <p class="">드론애칭 : ${droneDto.mdrnm} 이 드론은 9드론 으로써 해처리에서 나왔습니다.</p>
			                </div>
			                <img src="/resources/images/dji-mavic.jpg" alt="..." class="">
			            </div>
			        </div>
			       </c:forEach>
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
                            <th>설정</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${mylist}" var="MemDto">
                        <tr class="active">
                            <td class="active"><a href="/instanceboard/itlist?subjno=${MemDto.subjno}" style="color:black;">${MemDto.subjttl}</a></td>
                            <td>${MemDto.subjctt}</td>
                            <td scope="row">${MemDto.opendt}</td>
                            <td>	
                            	<%-- <button type="submit" class="btn btn-primary" id="bup" onclick="bupdate(${MemDto.subjno})">수정</button> --%>
								<button type="submit" class="btn btn-warning" id="bdel" onclick="bdelete(${MemDto.subjno})">삭제</button>
							</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <c:if test="${mno eq memDto.mno}"> 
                <a href="/mem/subregi?mno=${mno}" style="color:#616161"><i class="fa fa-3x fa-plus-square">게시판추가</i></a>
                </c:if>
		        </div>
		      </div>
	    </div>
    </div>
  </div>          
</div>



<!-- ------------------------------------콘텐츠 목록 보는쪽 -->
<div class="container">
        <div class="col-md-12">
            <h1 class="text-center">게시 컨텐츠 목록</h1>
        </div>
    </div>
    <div class="container">
        <div class="section">
        <!-- 글등록 버튼 여기잇음 -->
       <c:if test="${mno eq memDto.mno}"> 
        <div>
        	<form action="/map/ctsInsert" method="get">
        		<input type="submit"  class="btn btn-warning" value="글등록">
        	</form>
        	<!-- <button type="submit" class="btn btn-warning" id="reg">글등록</button> -->
        </div>
        </c:if>
		<div class="col-xs-12 col-sm-2 col-md-10 col-lg-10" id="cateList">
		</div>
       </div>
    </div>

    <!-- 페이지 이동버튼 -->
	<div id="pageBtn-wrap">
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