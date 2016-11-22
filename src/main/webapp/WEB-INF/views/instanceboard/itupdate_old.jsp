<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
.fileDrop {
  width: 80%;
  height: 100px;
  border: 1px dotted gray;
  background-color: lightslategrey;
  margin: auto;
  
}
.back {
	background-color: gray;
	opacity: 0.5;
	width: 100%;
	height: 300%;
	overflow: hidden;
	z-index: 1101;
}
.front{
	z-index: 1110;
	opacity: 1;
	border: 1px;
	margin: auto;
}
.show{
	position: relative;
	max-width: 1200px;
	max-height: 800px;
	overflow: auto;
}
</style>
<jsp:include page="../common/include.jsp"/>
<jsp:include page="../common/header.jsp"/>
<div class="popup back" style="display:none;"></div>
<div id="popup_front" class="popup front" style="display:none;"> 
	<img id="popup_img" />
</div>
 	
<section class="content">
<script type="text/javascript">
	$(document).ready(function(){
	var formObj = $("form[role='form']");
	console.log(formObj);
	
	$(".btn-primary").on("click", function(){
		formObj.submit();
	});
	
	$(".btn-warning").on("click", function(){
		self.location="/instanceboard/itdetail?subjno=${subjno}&bno=${bno}";
	});
});
</script>
</section>
<div class="container">	
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<form role="form" method="post">
				<input type='hidden' id='bno' name='bno' value="${bno}">
				<input type='hidden' id='subjno' name='subjno' value="${subjno}">
				<div class="box-body">
					<div class="form-group">
						<label for="ttl">글제목</label>
						<input type="text" id="ttl" name="ttl" class="form-control" value="${IBoardDto.ttl}"/>
					</div>
					<div class="form-group">
						<label for="ctt">글내용</label>
						<input type="text" id="ctt" name="ctt" class="form-control" value="${IBoardDto.ctt}" />
					</div>
					
					<div class="form-group">
						<label for="delyn">글삭제 여부</label>
						<select name="delyn" class="form-control">
							<option value="n">삭제하지 않음</option>
						</select>
					</div>				
				</div>
			
			<div class="box-footer">
				<div>
					<hr>
				</div>
			
				<button type="submit" class="btn btn-primary">저장</button>
				<button type="submit" class="btn btn-warning">취소</button>
			</div>	
			</form>
		</div>
	</div>
</div>
<%@ include file="../common/footer.jsp" %>