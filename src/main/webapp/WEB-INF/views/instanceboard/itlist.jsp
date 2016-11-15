<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../common/include.jsp"></jsp:include>
<jsp:include page="../common/header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
$(document).ready(function(){
var result='${msg}';
if(result=="success"){
	alert("처리되었습니다.");	
}
	
	$("#newBtn").on("click", function(event){
		$(location).attr("href","/instanceboard/itregi");
	});
});

</script>

</head>
<body>
	
	<form role="form" method="post">
		<input type='hidden' name='subjno' value="${BsubjDto.subjno}">
	</form>
	
	<div class="container">
		<div class="section">
		<div class="row">
            <br />
            <ol class="breadcrumb" style="background: black;">
                <li><a href="#">home</a></li>
                <li><a href="#">정보</a></li>
                <li><a href="#">게시판</a></li>
                <li class="active">지금 들어와있는 게시판</li>
            </ol>
          </div>
			<div style="float: left;">
				<p>카테고리</p>
			</div>
			<div style="float: left;">
				<h1>전체 게시판 제목</h1>
			</div>
			<div>
				<h3>게시판 관리자</h3>
			</div>
				<br>
		</div>
		
<div class="box-body" style="color: black;">
	<button id="newBtn">글작성</button>
</div>		
		
		<div id="content" style="float: left; border: 1px solid white; max-width: 100%;">
			<table>
				<tr>
					<th style="width: 50px;">글번호</th>
					<th style="width: 600px;">글제목</th>
					<th style="width: 200px;">작성자</th>
					<th style="width: 200px;">등록일</th>
					<th style="width: 200px;">조회수</th>
				</tr>
			<c:forEach items="${list}" var="BoardDto">
					<tr>
						<td>${BoardDto.bno}</td>
						<td><a href="itdetail?subjno=${BoardDto.subjno}&bno=${BoardDto.bno}">${BoardDto.ttl}</a></td>
						<td>${BoardDto.mno}</td>
						<td>${BoardDto.regdt}</td>
						<td>${BoardDto.readcnt}</td>
					</tr>
			</c:forEach>
			</table>
		</div>
		<div class="text-center">
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
		</div>
	</div>
	<%@ include file="../common/footer.jsp"%>
</body>
</html>