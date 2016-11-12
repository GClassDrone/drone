<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<%@ include file="../common/header.jsp" %>
<%@ include file="../common/include.jsp" %>
<section class="content">
<script type="text/javascript">
var result='${msg}';
if(result=="success"){
	alert("처리되었습니다.");	
}

$(document).ready(function(){
	$("#searchBtn").on("click", function(event){
		self.location = "list"
					  + "${pageMake.makeQuery(1)}"
					  + "&searchType="
					  + $("select option:selected").val()
					  +"&keyWord=" + $("#keywordInput").val();
	});
	
	$("#newBtn").on("click", function(event){
		self.location = "register";
	});
	
	var formObj = $("form[role='form']");
	
	console.log(formObj);
});
</script>

<form role="form" method="post">
	<input type='hidden' name='bcateno' value="${BsubjDto.bcateno}">
	<input type='hidden' name='subjno' value="${BsubjDto.subjno}">
</form>
	<div class="row">
		<div class="col-md-12">
			<div class="box">
				<div class="box-header width-border">
					<h3 class="box-title">List Page</h3>
				</div>
				<div class="box-body" style="color: black;">
					<select name="searchType">
						<option value="" <c:out value="${isp.searchType == null?'selected':''}" /> >선택</option>
						<option value="niknm" <c:out value="${isp.searchType eq 'niknm' ? 'selected':''}" /> >닉네임</option>					
						<option value="title" <c:out value="${isp.searchType eq 'ttl' ? 'selected':''}" /> >제목</option>
						<option value="content" <c:out value="${isp.searchType eq 'ctt' ? 'selected':''}" /> >내용</option>
					</select>
					<input type="text" name="keyWord" id="keywordInput" value="${isp.keyWord}" />
					<button id="searchBtn">검색</button>
					<button id="newBtn">글작성</button>
				</div>
				<table class="table table-bordered">
					<tr>
						<th style="width:10px">글번호</th>
						<th>제목</th>
						<th>이름</th>
						<th>내용</th>
						<th>등록일</th>
						<th style="width:40px">조회수</th>
					</tr>
					<c:forEach items="${list}" var="BoardDto">
					<tr>
						<td>${board.bno}</td>
						<td><a href="read${pageMake.makeSearch(pageMake.initPage.page)}&bno=${board.bno} ">${board.ttl}</a></td>
						<td>${board.mno}</td>
						<td>${board.ctt}</td>
						<td>${board.regdt}</td>
						<td>${board.readcnt}</td>
					</tr>
					</c:forEach>
				</table>
				<div class="text-center">
					<ul class="pagination">
						<c:if test="${pageMake.first}">
							<li><a href="list${pageMake.makeSearch(1)}">&lt;</a></li> 
						</c:if>
						<c:if test="${pageMake.prev}">
							<li><a href="list${pageMake.makeSearch(pageMake.startPage-1)}">&lt;&lt;</a></li> 
						</c:if>
						<c:forEach begin="${pageMake.startPage}" end="${pageMake.endPage}" var="idx">
							<li <c:out value="${pageMake.initPage.page == idx?'class=active':''}"/> ><a href="list${pageMake.makeSearch(idx)}">${idx}</a></li>
						</c:forEach>
						<c:if test="${pageMake.next}">
							<li><a href="list${pageMake.makeSearch(pageMake.endPage+1)}">&gt;&gt;</a></li> 
						</c:if>
						<c:if test="${pageMake.last}">
							<li><a href="list${pageMake.makeSearch(pageMake.lastPage)}">&gt;</a></li> 
						</c:if>						
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>
<%@ include file="../common/footer.jsp" %>