<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>

<jsp:include page="../common/include.jsp"></jsp:include>
</head>

<body>
<jsp:include page="../common/header.jsp"></jsp:include>

<div class="container"> <br /><br />
  <div class="row">
     <div class="col-md-12">
          <h1 class="text-center"><strong>파일럿 목록</strong></h1>
          <p class="text-center">전체 파일럿 목록 뿌려주기</p>
     </div>
  </div><br />
   <jsp:include page="../common/pilotList.jsp"></jsp:include>
   	<div class="well">
		<div class="media">
			<a class="pull-left" href="#"> <img class="media-object"
				src="http://placekitten.com/121/121">
			</a>
			<div class="media-body" style="color: #424242">
				<a href="#"><h4 class="media-heading">
						<strong>아이디</strong>
					</h4></a>
				<p>프로필 상세 이름</p>
				<ul class="list-inline list-unstyled">
					<span><i class="glyphicon glyphicon-comment"></i>랭킹</span>
					<li>|</li>
					<li><span><i class="fa fa-users"></i> 지역</span></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="well">
		<div class="media">
			<a class="pull-left" href="#"> <img class="media-object"
				src="http://placekitten.com/121/121">
			</a>
			<div class="media-body" style="color: #424242">
				<a href="#"><h4 class="media-heading">
						<strong>아이디</strong>
					</h4></a>
				<p>프로필 상세 이름</p>
				<ul class="list-inline list-unstyled">
					<span><i class="glyphicon glyphicon-comment"></i>랭킹</span>
					<li>|</li>
					<li><span><i class="fa fa-users"></i> 지역</span></li>
				</ul>
			</div>
		</div>
	</div>

<br />
<!-- row -->
<p class="more">
    <button type="button" class="btn btn-default btn-sm center">
        <span class="fa fa-2x fa-fw fa-angle-double-down"></span> 
    </button>
</p>

</div>


<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>