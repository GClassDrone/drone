<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../common/header.jsp"%>
<script>

</script>


<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box box-primary">
				<div class="box box-header">
					<h3 class="box-title">게시글 등록</h3>
				</div>
				<form role="form" method="post">
					<div class="box-body">
						<div class="form-group">
							<label for="Inputbcateno">주제분류 선택</label> <input type="text"
								name='bcateno' class="form-control" placeholder="Enter Title">
						</div>
						<div class="form-group">
							<label for="Inputsubjttl">주제명</label>
							<textarea class="form-control" name="subjttl" rows="3"
								placeholder="Enter ..."></textarea>
						</div>
						<div class="form-group">
							<label for="Inputsubjctt">주제내용</label> <input type="text"
								name="subjctt" class="form-control" placeholder="Enter Writer">
						</div>
					</div>
					<div class="box-footer">
						<button type="submit" class="btn btn-primary">게시판 제작</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>

<%@include file="../common/footer.jsp"%>
