<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
<head>
<jsp:include page="../common/include.jsp"></jsp:include>
<jsp:include page="../common/header.jsp"></jsp:include>
</head>

<body>

<div class="container"> <br /><br />
  <div class="row">
     <div class="col-md-12">
          <h1 class="text-center"><strong>파일럿 목록</strong></h1>
          <p class="text-center">전체 파일럿 목록 뿌려주기</p>
     </div>
  </div><br />
   <jsp:include page="../common/pilotList.jsp"></jsp:include>

<br />
<!-- row -->
	<div class="well">
		<div class="media">
		
		</div>
	</div>


<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>