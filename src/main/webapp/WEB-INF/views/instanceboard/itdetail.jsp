<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../common/include.jsp"/>
 <script type="text/javascript">
	$(document).ready(function(){
		var formObj = $("form[role='form']").eq(0);
		$("#modi").on("click", function(){
			formObj.attr("action", "/instanceboard/itupdate");
			formObj.attr("method","get");
			formObj.submit();
		});
		$("#remv").on("click",function(){
			formObj.attr("action", "/instanceboard/remove");
			formObj.attr("method","post");
			
			formObj.submit();
		});
		$("#goli").on("click",function(){
			self.location = "/instanceboard/itlist?subjno=${subjno}";
		});
});
 </script>
</head>

<body>
<jsp:include page="../common/header.jsp"></jsp:include>
<form role="form" method="post">
	<input type='hidden' id='bno' name='bno' value="${bno}">
	<input type='hidden' id='subjno' name='subjno' value="${subjno}">
	<input type='hidden' id='mno' name='mno' value="${mno}">
</form>

   <div class="container">
 <!--         <div class="form-group"> -->
          <div class="row">
              <div class="col-md-8">
                      <div class="caption">
                          <h2>${IBoardDto.ttl}
                          	<small>&nbsp;${IBoardDto.regdt} by 
                          		<a href="/mem/ProfileDetail?mno=${IBoardDto.mno }">${IBoardDto.niknm}</a>
                          	</small>
                          </h2>
                          <hr />
                          <span style="font-size: 16px">${IBoardDto.ctt}</span>
                      </div>
              </div>
           </div>
    	
        <div class="row">
		  	<button type="submit" class="btn btn-warning" id="modi">Modify</button>
 			<button type="submit" class="btn btn-danger" id="remv">REMOVE</button>
 			<button type="submit" class="btn btn-primary" id="goli">LIST ALL</button>
        </div>
    	<jsp:include page="../bdat/bdat.jsp"></jsp:include>
    </div>
    
<jsp:include page="../common/footer.jsp"></jsp:include>
</body>

</html>
