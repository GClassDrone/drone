<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<style type="text/css">
.media-heading {
	color : #3e2723;
}
.more {
    text-align: center;
}
.mainBody {
    padding-top: 50px;
}
.progress {
    background-color: #000000;
    border: 1px solid #7aff66;
}
.progress-bar {
    background-color: #c4ffbc;
}
.progress-bar span {
    color: #000000;
}
</style>

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
  <div class="well">
      <div class="media">
      	<a class="pull-left" href="#">
    		<img class="media-object" src="http://placekitten.com/121/121">
  		</a>
  		<div class="media-body" style="color: #424242">
    		<a href="#"><h4 class="media-heading"><strong>아이디</strong></h4></a>
          <p class="text-right">게시자</p>
          <p>프로필 상세 이름</p>
          <ul class="list-inline list-unstyled">
  			<li><span><i class="glyphicon glyphicon-calendar"></i> 2 days, 8 hours </span></li>
  			<li>|</li>
            <span><i class="glyphicon glyphicon-comment"></i> 2 posts</span>
            <li>|</li>
            <li>
			<span><i class="fa fa-users"></i> 25 persons</span> 
			</li>
       		<li>|</li>
       		<li>
		       <i class="fa fa-cog fa-spin fa-2x fa-fw" style="color: green" aria-hidden="false"></i>
		       <span class="label label-warning arrowed-in">Active</span>
			</li>
			<!-- <li>|</li> -->
		 </ul>
       </div>
    </div>
  </div>
   <div class="well">
      <div class="media">
  		<a class="pull-left" href="#">
    		<img class="media-object" src="http://placekitten.com/120/120">
  		</a>
  		<div class="media-body" style="color: #424242">
    		<a href="#"><h4 class="media-heading"><strong>게시판 제목</strong></h4></a>
          <p class="text-right">By Gclass</p>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis pharetra varius quam sit amet vulputate. 
			Quisque mauris augue, molestie tincidunt condimentum vitae, gravida a libero. Aenean sit amet felis 
			dolor, in sagittis nisi.</p>
          <ul class="list-inline list-unstyled">
  			<li><span><i class="glyphicon glyphicon-calendar"></i> 2016. 11. 01 </span></li>
            <li>|</li>
            <span><i class="glyphicon glyphicon-comment"></i> 77 posts</span>
            <li>|</li>
            <li>
            <span><i class="fa fa-users"></i> 25 persons</span>
            </li>
            <li>|</li>
            <li>
            <i class="fa fa-cog fa-spin fa-2x fa-fw" style="color: green" aria-hidden="false"></i>
			<span class="label label-warning arrowed-in">Active</span>
			</li>
	</ul>
     </div>
  </div>
</div>

<div class="well">
      <div class="media">
  		<a class="pull-left" href="#">
    		<img class="media-object" src="http://placekitten.com/120/120">
  		</a>
  		<div class="media-body" style="color: #424242">
    	  <a href="#"><h4 class="media-heading"><strong>게시판 제목</strong></h4></a>
          <p class="text-right">By Gclass</p>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis pharetra varius quam sit amet vulputate. 
			Quisque mauris augue, molestie tincidunt condimentum vitae, gravida a libero. Aenean sit amet felis 
			dolor, in sagittis nisi.</p>
          <ul class="list-inline list-unstyled">
  			<li><span><i class="glyphicon glyphicon-calendar"></i> 2016. 11. 01 </span></li>
            <li>|</li>
            <span><i class="glyphicon glyphicon-comment"></i> 77 posts</span>
            <li>|</li>
            <li>
            <span><i class="fa fa-users"></i> 25 persons</span>
            </li>
            <li>|</li>
            <li>
            <i class="fa fa-cog fa-spin fa-2x fa-fw" style="color: green" aria-hidden="false"></i>
			<span class="label label-warning arrowed-in">Active</span>
			</li>
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