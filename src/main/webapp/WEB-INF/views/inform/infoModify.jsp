<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
<head>
<jsp:include page="../common/include.jsp"></jsp:include>
<script type ="text/javascript">
$(function(){
	 var formObj = $("form[role='for']").eq(0);
	 console.log(formObj);
	 alert("ss");
	 $(".btn-warning").on("click", function(){
		 formObj.attr("action", "/inform/infoModify");
		 formObj.attr("method", "get");
		 formObj.submit();
	 });
	 $(".btn-danger").on("click",function(){
		 formObj.attr("action", "/inform/infoRemove");
		 formObj.attr("method", "POST");
		 
	 	 formObj.submit();
	 });
	 $(".btn-primary").on("click",function(){
		 self.location = "/inform/info";	
	 });
});

/*  $(function(){
	 var formObj = $("form[role='form']").eq(0);
	 console.log(formObj);
	 alret("sas");
	 $(".btn-warning").on("click", function(){
		 formObj.attr("action", "/inform/infoModify");
		 formObj.attr("method", "POST");
		 formObj.submit();
	 });
	 $(".btn-danger").on("click",function(){
		 self.location = "/inform/infoModify?ino="+${InformDto.ino }+"&igubun=s";	
	 });
 }); */
</script>
<style type="text/css">
.center {
	marging : auto;
	padding : auto;
	text-align : center;
	vertical-align : center;
}
.textarea{
	width: 100%;
	height: 100%; 
	resize: none; 
	
}
</style>
</head>
<body>

    <jsp:include page="../common/header.jsp"></jsp:include>
		<form role="for" method="post">
			<input type='hidden' name='ino' value="${InformDto.ino }">
			<input type='hidden' name='igubun' value='s'>
		</form>
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
	                            <input type="text" size="50px" style="color : black" value="${InformDto.ttl }"><h2><small>&nbsp; ${InformDto.regdt } by <a href="#">${InformDto.mgid } ${InformDto.niknm } </a></small></h2>
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
	                          		<textarea rows="8" style="width: 100%;color: black;">${InformDto.ctt }
	                          		</textarea>
								</span>
	                        </div>
	                    </div>
	                    <p align="right">
	                    	<c:if test="${levno < 3 }">
	                	   	 	<button type="submit" class="btn btn-warning"> O K </button>
	 							<button type="submit" class="btn btn-danger">Cancle</button>
	                		</c:if>
	                	</p>
	                </div>
	            </div>
	        </div>
	    </div>
	   
</body>

</html>
