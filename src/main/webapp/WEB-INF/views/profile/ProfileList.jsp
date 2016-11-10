<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>
	<style type="text/css">
	   .bgimage {
	       background-image: url('/resources/images/infoboard_bg.jpg');
	       background-position: center center;
	       background-size: cover;
	       height: 320px;
	   }
	   .more {
	       text-align: center;
	   }
	   img {
	   	max-width: 100%;
	   	height: auto;
	   }
	</style>
<%-- <jsp:include page="../common/include.jsp"></jsp:include> --%>
<jsp:include page="../common/header.jsp"></jsp:include>
</head>

<body>
    <header class="bgimage hidden-xs">
    </header>

<div class="container"> <br /><br />
  <div class="row">
     <div class="col-md-12">
          <h1 class="text-center"><strong>파일럿 목록</strong></h1>
          <p class="text-center">전체 파일럿 목록 뿌려주기</p>
     </div>
  </div><br />

<br />
<!-- row -->

     <br />
      <c:forEach items="${listAll}" var="MemDto"> 
	      <div class="row">
	          <div class="col-md-1">
	          <a href="/profile/ProfileDetail?mno=${MemDto.mno }">
	          <img src="../resources/images/castleMo.png" class="center-block img-circle">
	              <h6 class="text-center">${MemDto.niknm }<p>(<span class="glyphicon glyphicon-star"></span>)</p></h6> </div>
	          </a>
	          <div class="col-md-3">
	              <div class="panel panel-success">
	                  <ul>
	                      <p class="text-left text-info">
	                          <li>지역: </li>
	                          <li>경력: </li>
	                          <li>보유장비: </li>
	                      </p>
	                  </ul>
	              </div>
	          </div>
	          <div class="col-md-1">
	         <a href="/profile/ProfileDetail?mno=${MemDto.mno }">
	          <img src="../resources/images/dcLee.png" class="center-block img-circle">
	              <h6 class="text-center">${MemDto.niknm }<p>(<span class="glyphicon glyphicon-star"></span>)</p></h6> </div>
	          </a>
	          <div class="col-md-3">
	              <div class="panel panel-success">
	                  <ul>
	                      <p class="text-left text-info">
	                          <li>지역: </li>
	                          <li>경력: </li>
	                          <li>보유장비: </li>
	                      </p>
	                  </ul>
	              </div>
	          </div>
	          <div class="col-md-1">
	          <a href="/profile/ProfileDetail?mno=${MemDto.mno }">
	          <img src="../resources/images/g9Kim.png" class="img-circle img-responsive">
	              <h6 class="text-center">${MemDto.niknm }<p>(<span class="glyphicon glyphicon-star"></span>)</p></h6></div>
	          </a>
	          <div class="col-md-3">
	              <div class="panel panel-success">
	                  <ul>
	                      <p class="text-left text-info">
	                          <li>지역: </li>
	                          <li>경력: </li>
	                          <li>보유장비: </li>
	                      </p>
	                  </ul>
	              </div>
	          </div>
	      </div>
	      <br />
	      <div class="clearfix"></div>
</c:forEach>


<%-- <c:forEach items="${listAll}" var="MemDto">
	<div class="well">
		<div class="media">
			<a class="pull-left" href="/profile/ProfileDetail?mno=${MemDto.mno }">
			 <img class="media-object" src="http://placekitten.com/121/121">
			</a>
			<div class="media-body" style="color: #424242">
				<a href="/profile/ProfileDetail?mno=${MemDto.mno }"><h4 class="media-heading">
						<strong style="color: black;">
								닉네임 : 
								${MemDto.niknm }
						</strong>
					</h4></a>
				<p>프로필 개인설명 : ${MemDto.prmsg} </p>
				<ul class="list-inline list-unstyled">
					<span>
						<i class="glyphicon glyphicon-comment"></i>
						랭킹 : ${MemDto.levnm} ,
						 ${MemDto.levnic}
					</span>
					<li>|</li>
					<li>
						<span>
							<i class="fa fa-users"></i> 
								지역 : ${MemDto.locnm}
						</span>
					</li>
				</ul>
			</div>
		</div>
	</div>
</c:forEach> --%>

</div>

<jsp:include page="../common/footer.jsp"></jsp:include>

</body>
</html>