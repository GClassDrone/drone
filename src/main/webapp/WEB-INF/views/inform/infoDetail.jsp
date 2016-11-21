<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
<head>
<jsp:include page="../common/include.jsp"></jsp:include>
<script type ="text/javascript">
 $(function(){
	 var formObj = $("form[role='form']").eq(0);
	
	 console.log(formObj);
	 
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
</script>

<style type="text/css">
.center {
	margin : auto;
	padding : auto;
	text-align : center;
	vertical-align : center;
}
</style>

</head>

<body>

    <jsp:include page="../common/header.jsp"></jsp:include>
	<form role="form" method="post">
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
   
    <div class="container">
        <div class="row pull-right">
            <button type="button" class="btn btn-warning btn-sm center">
                <span class="fa fa-3x fa-fw umbs-o-up fa-facebook-square"></span></button>
            <button type="button" class="btn btn-warning btn-sm center">
                <span class="fa fa-3x fa-fw umbs-o-up -square fa-google-plus-square"></span></button>
            <button type="button" class="btn btn-warning btn-sm center">
                <span class="fa fa-3x fa-fw umbs-o-up -square -plus-square fa-twitter-square"></span></button>
            <button type="button" class="btn btn-warning btn-sm center">
                <img src="/resources/images/kakaostory.png"></button>
            <button type="button" class="btn btn-warning btn-sm center">
                <img src="/resources/images/band2.png"></button>
        </div>
    </div>
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div id="reply" class="well text-info">
                        <h2>Reply<small>&nbsp; 2시간전 by <a href="#">matthewkim</a></small></h2>
                        <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
                      <!--   <form role="form">
                            <div class="form-group">
                                <label class="control-label" for="inputComments">Leave a comment</label>
                                <input class="form-control" id="inputComments" placeholder="Enter comment" type="text">
                            </div>
                            <button type="submit" class="btn btn-info btn-sm" data-toggle="button">답글달기</button>
                        </form> -->
                    </div>
                </div>
            </div>
            <div class="row">
            	<div class="col-md-1 center">
            	<i class="material-icons text-right" style="padding-top: 15px; padding-left: 10px; font-size: 36px; color: #8BC34A">tag_faces</i>
            	<h5 class="media-heading"><span>matthewkim</span></h5>
            	</div>
                <div class="col-md-11">
                    <form role="for">
                        <div class="form-group">
                                    <label for="inputComments">Write reply</label>
                            <textarea class="form-control" id="inputComments" placeholder="Enter reply"></textarea>
                        </div>
                        <button type="submit" class="btn btn-block btn-warning">댓글올리기</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
        <jsp:include page="../common/footer.jsp"></jsp:include>
    
</body>

</html>
