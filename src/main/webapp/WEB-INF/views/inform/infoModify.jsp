<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
<head>
<style type="text/css">
.center {
	marging : auto;
	padding : auto;
	text-align : center;
	vertical-align : center;
}
</style>


<jsp:include page="../common/include.jsp"></jsp:include>
</head>

<body>

    <jsp:include page="../common/header.jsp"></jsp:include>

	    <div class="section">
	        <div class="container">
	    <!--          <ol class="breadcrumb">
	                <li><a href="#">홈</a></li>
	                <li><a href="#">드론시장동향</a></li>
	                <li class="active">정보상세</li>
	            </ol> -->
	            <div class="row">
	                <div class="col-md-12">
	                    <div class="thumbnail"><img src="https://ununsplash.imgix.net/photo-1415302199888-384f752645d0?w=1024&amp;q=50&amp;fm=jpg&amp;s=823bdcc1b7ad955f5180efd352561016" class="img-responsive">
	                        <div class="caption">
	                            <h2>${InformDto.ttl }<small>&nbsp; ${InformDto.regdt } by <a href="#">${InformDto.mgid } ${InformDto.niknm } </a></small></h2>
	                            <a class="btn btn-default btn-sm center" href="#reply">
	                            	<span class="fa fa-2x fa-fw umbs-o-up -square -plus-square -square fa-comment-o"></span> 0
	                            </a>
	                            <button type="button" class="btn btn-default btn-sm center">
	                                <span class="fa fa-2x fa-fw fa-thumbs-o-up"></span></button>
	                            <button type="button" class="btn btn-default btn-sm center">
	                                <span class="fa fa-2x fa-fw fa-thumbs-up"></span> 0 </button>
	                            <button type="button" class="btn btn-default btn-sm center">
	                                <span class="fa fa-2x fa-fw umbs-o-up -square -plus-square -square fa-heart"></span> 0 </button>
	                            <button type="button" class="btn btn-default btn-sm center">
	                                <span class="fa fa-2x fa-fw umbs-o-up fa-facebook-square"></span></button>
	                            <button type="button" class="btn btn-default btn-sm center">
	                                <span class="fa fa-2x fa-fw umbs-o-up -square fa-google-plus-square"></span></button>
	                            <button type="button" class="btn btn-default btn-sm center">
	                                <span class="fa fa-2x fa-fw umbs-o-up -square -plus-square fa-twitter-square"></span></button>
	                            <button type="button" class="btn btn-default btn-sm center"><span style="font-size: 16px">Share</span>
	                                <span class="fa fa-2x fa-fw umbs-o-up -square -plus-square -square -o fa-share-square-o"></span></button>
	                            <hr />
	                            <span style="font-size: 16px"> 
	                          		${InformDto.ctt }
								 </span>
	                        </div>
	                    </div>
	                    <c:if test="${levno < 3 }">
	                	   	 <button type="submit" class="btn btn-warning">Modify</button>
	 						<button type="submit" class="btn btn-danger">REMOVE</button>
	 						<button type="submit" class="btn btn-primary">LIST ALL</button>
	                	</c:if>
	                </div>
	            </div>
	        </div>
	    </div>
	   
</body>

</html>
