<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
<head>
<%@ include file="/resources/css/board/sublist.css" %>
<jsp:include page="../common/include.jsp"></jsp:include>
</head>

<%@ include file="/resources/js/board/sublist.js" %>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>

<form role="form" method="post">
	<input type='hidden' name='subjno' value="${BsubjDto.bcateno}">
</form>


<div class="container"> 
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
      	<a class="pull-left" href="/board/list?bsubjno=${bsubjno}">
    		<img class="media-object" src="http://placekitten.com/121/121">
  		</a>
  		<div class="media-body" style="color: #424242">
    		<a href="/board/list?bsubjno=${bsubjno}"><h4 class="media-heading"><strong>게시판 제목 : ${bsubj.subjttl}</strong></h4></a>
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