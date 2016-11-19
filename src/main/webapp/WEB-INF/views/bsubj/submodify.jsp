<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@include file="../common/header.jsp" %>
<%@include file="../common/include.jsp" %>

<script>
$(document).ready(function(){
	var formObj = $("form[role='form']");
	
	console.log(formObj);
	
	$(".btn-warning").on("click", function(){
		self.location = "/mem/ProfileDetail?mno=${memDto.mno}";
	});
	
	$(".btn-primary").on("click", function(){
		formObj.submit();
	});
});

</script>
<form role="form" method="post">
	<input type='text' name='subjno' value="${subjno}">
	<input type='text' name='mno' value="${mno}">
</form>
	<div class="box-body">
		<div class="form-group">
			<label for="subjttl">주제명</label> <input type="text"
				name="subjttl" class="form-control" placeholder="${subjttl }">
		</div>
		<div class="form-group">
			<label for="subjctt">주제내용</label>
			<textarea class="form-control" name="subjttl" rows="3"
				placeholder="${subjctt }"></textarea>
		</div>

	</div>


<div class="box-footer">
	<button type="submit" class="btn btn-primary">저장</button>
	<button type="submit" class="btn btn-warning">취소</button>
</div>

<%@include file="../common/footer.jsp" %>
