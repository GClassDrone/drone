<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>
	<style type="text/css">
	   .bgimage {
	       background-image: url('/resources/images/infoboard_bg.jpg');
	       background-position: center center;
	       background-size: cover;
	       height: 320px;
	   }
	   .more {
	       text-align: center;
	   }
	   img {
	   	max-width: 100%;
	   	height: auto;
	   }
	</style>
<jsp:include page="../common/include.jsp"></jsp:include>
<jsp:include page="../common/header.jsp"></jsp:include>
</head>

<body>
    <header class="bgimage hidden-xs">
    </header>

<div class="container"> <br /><br />
  <div class="row">
     <div class="col-md-12">
          <h1 class="text-center"><strong>파일럿 목록</strong></h1>
          <p class="text-center">전체 파일럿 목록 뿌려주기</p>
     </div>
  </div><br />

<br />
<!-- row -->

 <br />
<c:forEach items="${listAll}" var="MemDto"> 
     <div class="row">
         <div class="col-md-1">
	         <a href="/mem/ProfileDetail?mno=${MemDto.mno}">
	         <img src="../resources/images/castleMo2.png" class="center-block img-circle">
	             <h6 class="text-center">${MemDto.niknm }<p>(${MemDto.levnm})</p></h6> 
	         </a>
         </div>
         <div class="col-md-3">
             <div class="panel panel-success">
                 <ul>
                     <p class="text-left text-info">
                         <li>지역: ${MemDto.locnm}</li>
                         <li>경력: ${MemDto.actnm}</li>
                         <li>보유장비: ${MemDto.mdrnm}</li>
                     </p>
                 </ul>
             </div>
         </div>
      </div>
      <div id="clearfix"></div>
      </br>
</c:forEach>

</div>

<jsp:include page="../common/footer.jsp"></jsp:include>

</body>
</html>