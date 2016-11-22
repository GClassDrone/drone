<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
<head>
 
<jsp:include page="../common/include.jsp"></jsp:include>
<link href="/resources/css/profile/profile.css" rel="stylesheet" type="text/css">
<link href="/resources/css/cate/cateList.css" rel="stylesheet" type="text/css">

<script src="/resources/js/profile/profile.js"></script>
<script type="text/javascript" src="/resources/js/cate/cateList2.js"></script>
<!-- <script type="text/javascript" src="/resources/js/profile/falist.js"></script> -->
<script>
$(document).ready(function() {
	var mno = "${memDto.mno}";
	var ctscateno = "${cts.ctscateno}";
	var ctsno = "${cts.ctsno}";
	
    $("[rel='tooltip']").tooltip();    
 
    $('.thumbnail').hover(
        function(){
            $(this).find('.caption').slideDown(250); //.fadeIn(250)
        },
        function(){
            $(this).find('.caption').slideUp(250); //.fadeOut(205)
        }
    ); 

    
    if ($("#msg").val() != '') {
    	alert($("#msg").val());
    }
    /* 콘텐츠 불러오는 부분 */
    
	var formObj = $("form[role='form']").eq(0);
	console.log(formObj);
	/* $("#reg").on("click", function(){
		formObj.attr("action", "/map/ctsInsert");
		formObj.attr("method","get");
		formObj.submit();
	}); */
	});
	
	/* 프로필에서 콘텐츠의 수정 삭제 버튼 누르는 부분 */
	
	/* $(".btn-danger").on("click",function(){
		formObj.attr("action", "/map/ctsmodify");
		formObj.attr("method","post");
		
		formObj.submit();
	});
	$("#madel").on("click",function(){
		formObj.attr("action", "/map/ctsDelete?ctscateno="+ctscateno+"&ctsno="+ctsno);
		formObj.attr("method","post");
		
		formObj.submit();
	});

	}); */
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

/* 즐겨찾기 삭제하기 버튼 */

var fdelete = function(fno){
	var formObj = $("form[role='form']").eq(0);
	var fno = "${faDto.fno}";
	var mno = "${memDto.mno}";
	
	formObj.attr("action", "/mem/faremove?mno="+mno+"&fno="+fno);
	formObj.attr("method","post");
	
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
	<input type='hidden' id="msg" value="${msg}">
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
					      	<dd>${memDto.license}</dd>
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
			                    <p class="">드론애칭 : ${droneDto.mdrnm}</p>
			                </div>
			                <img src="/resources/images/dji-mavic.jpg" alt="..." class="">
			            </div>
			        </div>
			       </c:forEach>
			        <div class="clearfix"></div>
			        
			        <c:if test="${mno eq memDto.mno}"> 
			        <a href="/mem/conregi?mno=${mno}" style="color:#616161"><i class="fa fa-3x fa-plus-square">드론추가</i></a>
			        </c:if>
		        </div>
		        
		        <div class="tab-pane fade in" id="tab4">
		          <h3>즐겨찾기 저장 목록</h3>
		          <c:if test="${mno eq memDto.mno}"> 
 		          	<c:forEach items="${falist}" var="faDto">
					            <div class="col-xs-12 col-sm-6 col-md-3">
					                <div class="embed-responsive embed-responsive-16by9">
					                		<img class="embed-responsive-item" style="max-width:100%; height: auto;" src="http://img.youtube.com/vi/${faDto.filelk}/0.jpg">
					                </div>
					                <a href="https://www.youtube.com/watch?v=${faDto.filelk}" style="color: black;"><h3 class="text-center">${faDto.ttl}</h3></a>
					                <h3 class="text-center">${faDto.ctt}</h3>
					                <input type='button' class='btn btn-primary delete-btn' value='삭제'>
					            </div>
					</c:forEach>
					</c:if>
					</div>
					<div class="clearfix"></div>
		        
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
                            <c:if test="${mno eq memDto.mno}"> 
                            <td>
                   			
                   			<div class="col-xs-12 col-sm-2 col-md-10 col-lg-10" id="faList">
							</div>
                            	
                            	<%-- <button type="submit" class="btn btn-primary" id="bup" onclick="bupdate(${MemDto.subjno})">수정</button> --%>
								<button type="submit" class="btn btn-warning" id="bdel" onclick="bdelete(${MemDto.subjno})">삭제</button>
							</td>
							</c:if>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <c:if test="${mno eq memDto.mno && memDto.levno < 4}"> 
                <a href="/mem/subregi?mno=${mno}" style="color:#616161"><i class="fa fa-3x fa-plus-square"></i></a>
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