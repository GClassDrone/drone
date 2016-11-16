<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../common/include.jsp"/>
<!--     <style type="text/css">
    .navbar-default {
        width: 100%;
        z-index: 9999;
    }
    
    .breadcrumb {
        background: rgba(23, 21, 21, 0);
        border: 0px solid rgba(245, 245, 245, 1);
        border-radius: 0px;
        display: block;
    }
    
    .breadcrumb li {
        font-size: 14px;
    }
    
    .breadcrumb a {
        color: rgba(66, 139, 202, 1);
    }
    
    .breadcrumb a:hover {
        color: rgba(42, 100, 150, 1);
    }
    
    .breadcrumb>.active {
        color: rgba(153, 153, 153, 1);
    }
    
    .breadcrumb>li+li:before {
        color: rgba(204, 204, 204, 1);
        content: "\002F\00a0";
    }
    .thumbnail img {
        height: 600px
    }
    </style> -->
    
 <script type="text/javascript">
	$(document).ready(function(){
		var formObj = $("form[role='form']").eq(0);
		console.log(formObj);
		$(".btn-warning").on("click", function(){
			formObj.attr("action", "/instanceboard/itupdate");
			formObj.attr("method","get");
			formObj.submit();
		});
		$(".btn-danger").on("click",function(){
			formObj.attr("action", "/instanceboard/remove");
			formObj.attr("method","post");
			
			formObj.submit();
		});
		$(".btn-primary").on("click",function(){
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
</form>

    <div class="section">
        <div class="container">
            <br />
            <div class="form-group">
	            <div class="row">
	                <div class="col-md-12">
	                        <div class="caption">
	                            <h2>${IBoardDto.ttl}<small>&nbsp;${IBoardDto.regdt} by <a href="#">${IBoardDto.mno}</a></small></h2>
	                                <span class="fa"></span>
	                            <hr />
	                            <span style="font-size: 16px">${IBoardDto.ctt}</span>
	                        </div>
	                    </div>
	                </div>
	            </div>
       		</div>
        </div>
   
   	<div class="container">
        <div class="row pull-right">
		  	<button type="submit" class="btn btn-warning">Modify</button>
 			<button type="submit" class="btn btn-danger">REMOVE</button>
 			<button type="submit" class="btn btn-primary">LIST ALL</button>
        </div>
    	<jsp:include page="../bdat/bdat.jsp"></jsp:include>
    </div>
    
<jsp:include page="../common/footer.jsp"></jsp:include>
</body>

</html>
