<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
 
$(function(){
	$("#sido").on("change",function(){
		var sido =$("#sido").val();
		$.ajax({
			url : "/Profilemodify?mno="+mno,
			headers: {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "POST"
			},
			type: "post",
			data: JSON.stringify({sido:sido}),
			dataType: 'json',
			success : function(data){
				$("#sigungu").empty();
				
				$(data).each(function(){
					$("#sigungu").append("<option value='"+this.locno +"'>"+ this.sigungu +"</option>");
				});
			}
		});
	});
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
			        <a href="/mem/ProfileDetail?mno=${memDto.mno}"><sup><i class="fa fa-2x fa-pencil-square-o" style="color:#bdbdbd">수정 완료</i></sup></a>
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
					      <dt>이메일</dt>
					      <dd><input type="text" id="email" name="email" class="form-control" value="${memDto.email}"/></dd>
					      <dt>보유 라이센스 </dt>
					      <dd><input type="text" id="mdrnm" name="mdrnm" class="form-control" value="${memDto.mdrnm}"/></dd>
					      <dt>주요 활동지역</dt>
					      <dd>
					      	<input type="text" id="locnm" name="locnm" class="form-control" value="${memDto.locnm}"/>
<%--        						<div class="col-sm-5">
								<div class="form-group">
								    <label>활동지역</label><br>
								    <select id = "sido" name="sido" class="form-control">
								        <option value="">선택하세요</option>
								     <c:forEach items="${sido}" var="LocDto" >
								<option value="${LocDto.sido }">${LocDto.sido }</option>
								</c:forEach>
								        </select>
								</div>
							</div>
							<div class="col-sm-5">
							    <div class="form-group">
							        <label>Country</label><br>
							       <select id="sigungu" name="locno" class="form-control">
							            <option value="">선택하세요</option>
							        </select>
								</div>
							</div> --%>
					      </dd>
					    </dl>
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