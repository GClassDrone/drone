<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../common/include.jsp"></jsp:include>
<style type="text/css">
.pagination>li>a,
.pagination>li>span {
    border-radius: 10% !important;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
var result='${msg}';
if(result=="success"){
	alert("처리되었습니다.");	
}
	$("#newBtn").on("click", function(event){
		$(location).attr("href","/instanceboard/itregi?subjno=${subjno}");
	});
	
	$("#notgrade").on("click",function(){
		alert("권한이 부족합니다. 레벨업이 필요합니다.");
	});
});
</script>

	
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>	
<form role="form" method="post">
	<input type='hidden' name='subjno' value="${subjno}">
</form>
	
<div class="container">
	<div class="section">
	  <div class="col-sm-2 col-sm-offset-10 dropdown">
	    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">게시판 분류 &nbsp;
	    <span class="caret"></span></button>
	    <ul class="dropdown-menu text-right">
	      <li><a href="/bsubj/sublist?bcateno=1">친목모임</a></li>
	      <li><a href="/bsubj/sublist?bcateno=2">드론정보</a></li>
	      <li><a href="/bsubj/sublist?bcateno=3">엔지니어</a></li>
	      <li><a href="/bsubj/sublist?bcateno=4">비행모임</a></li>
	      <li><a href="/bsubj/sublist?bcateno=5">중고거래</a></li>
	      <li><a href="/bsubj/sublist?bcateno=6">공동구매</a></li>
	      <li><a id="notgrade" class="list-group-item disabled" style="border: 0">드론판매</a></li>
	      <li><a id="notgrade" class="list-group-item disabled" style="border: 0">항공촬영</a></li>
	    </ul>
	  </div>
		<h1 id="pilot" class="text-center"><strong>${listheader.subjttl}</strong></h1>
		<div class="col-sm-6 col-sm-offset-3">
   			<p style="text-align: center;">${listheader.subjctt}
   			<a href="../mem/ProfileDetail?mno=${listheader.mno }"><span style="color: #ff8f00">${listheader.niknm }</span></a></p>
   		</div>		
	</div>
		<div class="well">
		    <table class="table" style="color: #3e2723">
		      <thead>
		        <tr>
		          <th width="10%">#</th>
		          <th width="50%">Title</th>
		          <th width="15%">Writer</th>
		          <th width="15%">Date</th>
		          <th width="10%">View</th>
		          <th style="width: 36px;"></th>
		        </tr>
		      </thead>
		      <tbody>
		        <c:forEach items="${list}" var="IBoardDto">
					<tr>
						<td>${IBoardDto.bno}</td>
						<td><a href="itdetail?subjno=${IBoardDto.subjno}&bno=${IBoardDto.bno}" style="color: #3e2723">${IBoardDto.ttl}</a>
							<c:if test="${IBoardDto.newyn eq 'y'}">
								[New]
							</c:if>
						</td>
						<td>${IBoardDto.niknm}</td>
						<td>${IBoardDto.regdtout}</td>
						<td>${IBoardDto.readcnt}</td>
					</tr>
				</c:forEach>
		      </tbody>
		    </table>
		</div>
		<div>
			<button class="btn btn-success" id="newBtn"><i class="fa fa-pencil-square-o"></i>&nbsp;Write</button>
		</div>
	    <div class="text-center">
               <ul class="pagination">
                   <li class="disabled"><a href="#">«</a></li>
                   <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                   <li><a href="#">2</a></li>
                   <li><a href="#">3</a></li>
                   <li><a href="#">4</a></li>
                   <li><a href="#">5</a></li>
                   <li><a href="#">»</a></li>
               </ul>
        </div>
</div>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>