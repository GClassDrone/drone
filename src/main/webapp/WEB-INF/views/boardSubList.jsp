<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<style type="text/css">
    .more {
        text-align: center;
    }
</style>
<jsp:include page="common/include.jsp"></jsp:include>
</head>

<body>
<jsp:include page="common/header.jsp"></jsp:include>

<div class="container"> <br /><br />
	<div class="row">
	     <div class="col-md-12">
	             <h1 class="text-center"><strong>주제별 게시판 목록</strong></h1>
	             <p class="text-center">일정 등급 이상의 전문 회원님들이 운영하는 소모임 그룹에 속한 게시판 리스트 목록입니다.</p>
	     </div>
	</div><br />
	  <div class="well">
	      <div class="media">
	      	<a class="pull-left" href="#">
	    		<img class="media-object" src="http://placekitten.com/121/121">
	  		</a>
	  		<div class="media-body" style="color: #424242">
	    		<h4 class="media-heading">게시판 제목</h4>
	          <p class="text-right">By Paul Young</p>
	          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis pharetra varius quam sit amet vulputate. 
	Quisque mauris augue, molestie tincidunt condimentum vitae, gravida a libero. Aenean sit amet felis </p>
	          <ul class="list-inline list-unstyled">
	  			<li><span><i class="glyphicon glyphicon-calendar"></i> 2 days, 8 hours </span></li>
	            <li>|</li>
	            <span><i class="glyphicon glyphicon-comment"></i> 2 posts</span>
	            <li>|</li>
	            <li>
	               <span class="glyphicon glyphicon-star"></span>
	                        <span class="glyphicon glyphicon-star"></span>
	                        <span class="glyphicon glyphicon-star"></span>
	                        <span class="glyphicon glyphicon-star"></span>
	                        <span class="glyphicon glyphicon-star-empty"></span>
	            </li>
	       		<li>|</li>
	       		<li>
				       <i class="fa fa-cog fa-spin fa-2x fa-fw" style="color: green" aria-hidden="false"></i>
				       Active
				<!--  <i class="fa fa-spinner fa-spin fa-2x fa-fw" style="color: red" aria-hidden="true"></i>  -->
				</li>
	        <!--    <li>
	             // Use Font Awesome http://fortawesome.github.io/Font-Awesome/
	              <span><i class="fa fa-facebook-square"></i></span>
	              <span><i class="fa fa-twitter-square"></i></span>
	              <span><i class="fa fa-google-plus-square"></i></span>
	            </li> -->
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
	    		<h4 class="media-heading">게시판 제목</h4>
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
	               <span class="glyphicon glyphicon-star"></span>
	                        <span class="glyphicon glyphicon-star"></span>
	                        <span class="glyphicon glyphicon-star"></span>
	                        <span class="glyphicon glyphicon-star"></span>
	                        <span class="glyphicon glyphicon-star-empty"></span>
	            </li>
	            <li>|</li>
	            <li>
	            <i class="fa fa-cog fa-spin fa-2x fa-fw" style="color: green" aria-hidden="false"></i>
				       Active
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
	    		<h4 class="media-heading">게시판 제목</h4>
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
	               <span class="glyphicon glyphicon-star"></span>
	                        <span class="glyphicon glyphicon-star"></span>
	                        <span class="glyphicon glyphicon-star"></span>
	                        <span class="glyphicon glyphicon-star"></span>
	                        <span class="glyphicon glyphicon-star-empty"></span>
	            </li>
	            <li>|</li>
	            <li>
	            <i class="fa fa-cog fa-spin fa-2x fa-fw" style="color: green" aria-hidden="false"></i>
				       Active
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


<jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>