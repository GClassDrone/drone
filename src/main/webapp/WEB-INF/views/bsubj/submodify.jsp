<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@include file="../common/header.jsp" %>

<script>
$(document).ready(function(){
	var formObj = $("form[role='form']");
	
	console.log(formObj);
	
	$(".btn-warning").on("click", function(){
		self.location = "/board/sublist";
	});
	
	$(".btn-primary").on("click", function(){
		formObj.submit();
	});
});

</script>

<form role="form" method="post">
	<div class="box-body">
		<div class="form-group">
			<label for="Inputsubjttl">주제명</label>
			<textarea class="form-control" name="subjttl" rows="3"
				placeholder="Enter ..."></textarea>
		</div>
		<div class="form-group">
			<label for="Inputsubjctt">주제내용</label> <input type="text"
				name="subjctt" class="form-control" placeholder="Enter Writer">
		</div>
				<div class="form-group">
			<label for="Inputsubjctt">게시판 삭제여부</label> <input type="text"
				name="delyn" class="form-control" placeholder="Enter Writer">
		</div>
	</div>
</form>


<div class="box-footer">
	<button type="submit" class="btn btn-primary">저장</button>
	<button type="submit" class="btn btn-warning">취소</button>
</div>

<%@include file="../common/footer.jsp" %>
