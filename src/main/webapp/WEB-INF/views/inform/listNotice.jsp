<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../common/include.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="/resources/css/inform/inform.css"/>
<script type="text/javascript">
var result='${msg}';
if(result=="success"){
	alert("처리되었습니다.");	
}

$(document).ready(function(){
	$("#searchBtn").on("click", function(event){
		self.location = "listNotice"
					  + "${pageMake.makeQuery(1)}"
					  + "&searchType="
					  + $("select option:selected").val()
					  +"&keyWord=" + $("#keywordInput").val();
	});
	
	$("#newBtn").on("click", function(event){
		self.location = "register";
	});
});
</script>
<style>
.form-group {
	float: left;
	margin: 5px;
}
</style>
</head>

<body>
<jsp:include page="../common/header.jsp"></jsp:include>
<header class="bgimage hidden-xs">
</header>

<div class="container">
        <div class="row">
            <br />
            <ul class="nav nav-tabs pull-right">
                <li><a href="/inform/info">시장동향</a></li>
                <li><a href="/boardGroupList">주제별 게시판</a></li>
                <li class="active"><a href="#">공지사항</a></li>
                <li><a href="https://goo.gl/orXmEX" target="_blank">기상정보</a></li>
                <li><a href="http://spaceweather.rra.go.kr/models/kp" target="_blank">지자기수치</a></li>
            </ul>
        </div>
</div>  <br />
 <div class="container">
      <div class="row">
           <div class="col-md-12">
                    <h1 class="text-center"><strong>공지 사항</strong></h1>
           </div>
      </div>
       <div class="section">
	       <div style="padding-bottom: 5px">
	          <div class="row">
	            <div class="col-sm-2">
					<select name="searchType" id="searchType" class="form-control form-group">
						<option value="" <c:out value="${isp.searchType == null?'selected':''}" /> >선택</option>
						<option value="name" <c:out value="${isp.searchType eq 'name' ? 'selected':''}" /> >이름</option>					
						<option value="title" <c:out value="${isp.searchType eq 'title' ? 'selected':''}" /> >제목</option>
						<option value="content" <c:out value="${isp.searchType eq 'content' ? 'selected':''}" /> >내용</option>
					</select>
				</div>
				<div class="col-sm-4">
					<form class="form-search form-group">
			            <div class="input-append">
			                <input type="text" class="" name="keyword" id="keywordInput" value="${isp.keyWord}" />
			                <button type="submit" id="searchBtn" class="btn btn-default">검색</button>
			            </div>
			        </form>
			        <a href="#" id="newBtn" class="form-group" disabled><i class="fa fa-2x fa-pencil-square-o"></i></a>
			    </div>
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
			        <c:forEach items="${list}" var="InformDto">
						<tr>
							<td>${InformDto.ino }</td>
							<td><a style="color: #3e2723" href="noticeDetail${pageMake.makeSearch(pageMake.initPage.page)}&ino=${InformDto.ino}&igubun=g">${InformDto.ttl }</td>
							<td><strong>${InformDto.mgid }</strong></td>
							<td><fmt:formatDate pattern="yyyy-mm-dd HH:mm" value="${InformDto.regdt }"/>
							<td><span class="badge bg-red">${InformDto.readcnt }</span></td>
						</tr>
					</c:forEach>
			      </tbody>
			    </table>
	       	 </div>
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
 
<!--        <div class="row">
        	<div class="text-center">
 					<table class="table table-boradered">
					<tr>
						<td style="width: 10%">글번호</td>
						<td>제목</td>
						<td style="width: 10%">작성자</td>
						<td style="width: 10%">등록일</td>
						<td style="width: 5%">조회수</td>
					</tr>
					<c:forEach items="${list}" var="InformDto">
						<tr>
							<td>${InformDto.ino }</td>
							<td><a href="noticeDetail${pageMake.makeSearch(pageMake.initPage.page)}&ino=${InformDto.ino}&igubun=g">${InformDto.ttl }</td>
							<td><strong>${InformDto.mgid }</strong></td>
							<td><fmt:formatDate pattern="yyyy-mm-dd HH:mm" value="${InformDto.regdt }"/>
							<td><span class="badge bg-red">${InformDto.readcnt }</span></td>
						</tr>
					</c:forEach>
					</table>
					<ul class="pagination">
						<c:if test="${pageMake.first}">
							<li><a href="listNotice${pageMake.makeSearch(1)}">&lt;&lt;</a></li> 
						</c:if>
						<c:if test="${pageMake.prev}">
							<li><a href="listNotice${pageMake.makeSearch(pageMake.startPage-1)}">&lt;</a></li> 
						</c:if>
						<c:forEach begin="${pageMake.startPage}" end="${pageMake.endPage}" var="idx">
							<li <c:out value="${pageMake.initPage.page == idx?'class=active':''}"/> ><a href="listNotice${pageMake.makeSearch(idx)}">${idx}</a></li>
						</c:forEach>
						<c:if test="${pageMake.next}">
							<li><a href="listNotice${pageMake.makeSearch(pageMake.endPage+1)}">&gt;</a></li> 
						</c:if>
						<c:if test="${pageMake.last}">
							<li><a href="listNotice${pageMake.makeSearch(pageMake.lastPage)}">&gt;&gt;</a></li> 
						</c:if>						
					</ul>
 					
 				</div>
     </div>  -->
 </div>
 <br />

  	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>