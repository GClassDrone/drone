<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>
<jsp:include page="../common/include.jsp"></jsp:include>
<jsp:include page="../common/header.jsp"></jsp:include>
</head>

<body>

<div class="container"> <br /><br />
  <div class="row">
     <div class="col-md-12">
          <h1 class="text-center"><strong>파일럿 목록</strong></h1>
          <p class="text-center">전체 파일럿 목록 뿌려주기</p>
     </div>
  </div><br />

<br />
<!-- row -->
<c:forEach items="${listAll}" var="MemDto">
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
</c:forEach>

<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>