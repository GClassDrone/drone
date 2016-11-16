<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
 
<link href="/resources/css/profile/profile.css" rel="stylesheet" type="text/css">
<jsp:include page="../common/include.jsp"></jsp:include>

 <script type="text/javascript">
	$(document).ready(function(){
		var formObj = $("form[role='form']").eq(0);
		console.log(formObj);
		$(".btn-warning").on("click", function(){
			formObj.attr("action","/inform/modify");
			formObj.attr("method","get");
			formObj.submit();
		});
		$(".btn-danger").on("click",function(){
			formObj.attr("action","/inform/remove");
			formObj.attr("method","post");
			
			formObj.submit();
		});
		$(".btn-primary").on("click",function(){
			self.location = "/inform/listNotice";
		});
	});
 </script>

</head>
<jsp:include page="../common/header.jsp"></jsp:include>
<!-- <header class="bgimage hidden-xs">
 </header>  -->



<div class="container">
   
  <h1 id="pilot" style="text-align: center;"><strong>공지 사항</strong></h1>
   <p style="text-align: center;">이 곳은 공지사항 입니다.</p>
   

   
<div class="form-group">
	<div class="col-sm-10 col-sm-offset-1">
	         <h2 color="black">${InformDto.ttl }<small>&nbsp; ${InformDto.regdt } <a href="#">${InformDto.mgid }</a></small></h2>
	    
	    <div class="btn-pref btn-group btn-group-justified btn-group-lg" role="group" aria-label="...">
	        
	    </div>
	
	    <div class="well">
		      <div class="tab-content">
		        <div class="tab-pane fade in active" id="tab1">
		              <span style="font-size: 16px"> ${InformDto.ctt }</span>
		        </div>
		       
		      </div>
		        
	    </div>
	     <div class="box-footer">
 					<button type="submit" class="btn btn-warning">Modify</button>
 					<button type="submit" class="btn btn-danger">REMOVE</button>
 					<button type="submit" class="btn btn-primary">LIST ALL</button>
 		</div>
    </div>
  </div>          
</div>
<form role="form" method="post">
	<input type ='hidden' id="igubun" name='igubun' value="${InformDto.igubun }">
	<input type ='hidden' id="ino" name='ino' value="${InformDto.ino }">
	<input type = 'hidden' name="perPageNum" value="${isp.perPageNum }">
	<input type = 'hidden' name="page" value="${isp.page }">
</form>

	<!--     푸터부분 -->
<%@include file="../common/footer.jsp" %>
