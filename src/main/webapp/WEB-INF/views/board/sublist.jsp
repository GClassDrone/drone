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

<body>
<jsp:include page="../common/header.jsp"></jsp:include>

<form role="form" method="post">
	<input type='hidden' name='subjno' value="${BsubjDto.bcateno}">
</form>


<div class="container"> <br /><br />
  <div class="row">
     <div class="col-md-12">
          <h1 class="text-center"><strong>주제별 게시판 목록</strong></h1>
          <p class="text-center">일정 등급 이상의 전문 회원님들이 운영하는 소모임 그룹에 속한 게시판 리스트 목록입니다.</p>
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
	</div>
  </div><br />
 <c:forEach items="${sublist}" var="BsubjDto"> 
  <div class="well">
      <div class="media">
      	<a class="pull-left" href="#">
    		<img class="media-object" src="http://placekitten.com/121/121">
  		</a>
  		<div class="media-body" style="color: #424242">
    		<a href="#"><h4 class="media-heading"><strong>게시판 제목 : ${bsubj.subjttl}</strong></h4></a>
          <p class="text-right">${bsubj.mno}</p>
          <p>게시판 설명 : ${bsubj.subjctt}</p>
          <ul class="list-inline list-unstyled">
  			<li><span><i class="glyphicon glyphicon-calendar"></i>개설일 : ${bsubj.opendt}</span></li>
  			<li>|</li>
            <span><i class="glyphicon glyphicon-comment"></i>등록 글수 : ${bsubj.regcnt}</span>
            <li>|</li>
            <li>
			<span><i class="fa fa-users"></i>게시회원수 : ${bsubj.memcnt}</span> 
			</li>
       		<li>|</li>
       		<li>
		       <i class="fa fa-cog fa-spin fa-2x fa-fw" style="color: green" aria-hidden="false"></i>
		       <span class="label label-warning arrowed-in">활동중 (opendt + 2주)</span>
			</li>
			<!-- <li>|</li> -->
		 </ul>
       </div>
    </div>
  </div>
 <div class="clearfix"></div>
</c:forEach>
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