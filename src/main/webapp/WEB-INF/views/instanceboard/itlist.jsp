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
		
		<h1 id="pilot" class="text-center"><strong>게시판 제목</strong></h1>
		<div class="col-sm-6 col-sm-offset-3">
   			<p style="text-align: center;">이 게시판은 안양 변두리에 사는 '모'군과 아이들이 드론을 미끼로 돈많고, 준수한 외모의 술 친구들을 낚시하는 목적의 친목 모임 공간입니다. 호갱님들의 많은 입질 기다립니다.<br />
   			<a href="../mem/ProfileDetail?mno=120"><span style="color: #ff8f00">-- '인성'백 (게시판 관리자명)</span></a></p>
   		</div>		
	</div>

	<div class="section">
	
	
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
		        <c:forEach items="${list}" var="BoardDto">
					<tr>
						<td>${BoardDto.bno}</td>
						<td><a href="itdetail?subjno=${BoardDto.subjno}&bno=${BoardDto.bno}" style="color: #3e2723">${BoardDto.ttl}</a></td>
						<td>${BoardDto.niknm}</td>
						<td>${BoardDto.regdt}</td>
						<td>${BoardDto.readcnt}</td>
					</tr>
				</c:forEach>
		      </tbody>
		    </table>
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

<%-- 		<div class="text-center">
			<ul class="pagination">
				<c:if test="${pageMake.first}">
					<li><a href="itlist${pageMake.makeSearch(1)}">&lt;</a></li> 
				</c:if>
				<c:if test="${pageMake.prev}">
					<li><a href="itlist${pageMake.makeSearch(pageMake.startPage-1)}">&lt;&lt;</a></li> 
				</c:if>
				<c:forEach begin="${pageMake.startPage}" end="${pageMake.endPage}" var="idx">
					<li <c:out value="${pageMake.initPage.page == idx?'class=active':''}"/> ><a href="itlist${pageMake.makeSearch(idx)}">${idx}</a></li>
				</c:forEach>
				<c:if test="${pageMake.next}">
					<li><a href="itlist${pageMake.makeSearch(pageMake.endPage+1)}">&gt;&gt;</a></li> 
				</c:if>
				<c:if test="${pageMake.last}">
					<li><a href="itlist${pageMake.makeSearch(pageMake.lastPage)}">&gt;</a></li> 
				</c:if>						
			</ul>
		</div> --%>

		<div style="color: black;">
			<button class="btn btn-success" id="newBtn"><i class="fa fa-pencil-square-o"></i>&nbsp;Write</button>
		</div>	
		
	</div>
</div>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>