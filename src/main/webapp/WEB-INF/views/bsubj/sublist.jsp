<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
<head>
<jsp:include page="../common/include.jsp"></jsp:include>
<jsp:include page="../common/header.jsp"></jsp:include>
<script type="text/javascript" src="/resources/js/board/sublist.js"></script>
<link rel="stylesheet" type="text/css" href="/resources/css/board/sublist.css"/>
</head>

<body>
<div class="container"> 
<form role="form" method="post">
	<input type='hidden' name='bcateno' value="${bcateno}">
</form>
  <div class="row">
      <br />
      <a href="/boardGroupList"><i class="material-icons">arrow_back</i> 
      <span style="font-size: 20px">Back</span></a>
  </div><br />
  <div class="row">
     <div class="col-md-12">
          <h1 class="text-center"><strong>주제별 게시판 목록</strong></h1>
          <p class="text-center">일정 등급 이상의 전문 회원님들이 운영하는 소모임 그룹에 속한 게시판 리스트 목록입니다.</p>
     </div>
  </div><br />

 <c:forEach items="${sublist}" var="BsubjDto"> 
  <div class="well">
      <div class="media">
      	<a class="pull-left" href="/instanceboard/itlist?subjno=${BsubjDto.subjno}">
    		<img class="media-object" src="http://placekitten.com/121/121">
  		</a>
  		<div class="media-body" style="color: #424242">
    		<a href="/instanceboard/itlist?subjno=${BsubjDto.subjno}"><h4 class="media-heading"><strong>게시판 제목 : ${BsubjDto.subjttl}</strong></h4></a>
          <p>게시판 관리자 :${BsubjDto.mno}</p>
          <p>게시판 설명 : ${BsubjDto.subjctt}</p>
          <ul class="list-inline list-unstyled">
  			<li><span><i class="glyphicon glyphicon-calendar"></i>개설일 : ${BsubjDto.opendt}</span></li>
  			<li>|</li>
            <span><i class="glyphicon glyphicon-comment"></i>등록 글수 : ${BsubjDto.regcnt}</span>
            <li>|</li>
            <li>
			<span><i class="fa fa-users"></i>게시회원수 : ${BsubjDto.memcnt}</span> 
			</li>
       		<li>|</li>
       		<li>
		       <i class="fa fa-cog fa-spin fa-2x fa-fw" style="color: green" aria-hidden="false"></i>
		       
		       <c:if test="">
		       	<span class="label label-warning arrowed-in">활동중 ${BsubjDto.opendt}+2주후 </span>
		       </c:if>
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