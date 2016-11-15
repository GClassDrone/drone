<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="../common/include.jsp"%>
<%@include file="../common/header.jsp"%>
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
							<label for="Inputbcateno">글제목</label> <input type="text"
								name='ttl' class="form-control" placeholder="Enter Title">
						</div>
						<div class="form-group">
							<label for="Inputsubjttl">글내용</label>
							<textarea class="form-control" name="ctt" rows="3"
								placeholder="Enter ..."></textarea>
						</div>
						<div class="form-group">
							<label for="Inputsubjctt">삭제여부</label>
							<select>
								<option value="n">삭제하지않음</option>
								<option value="y">삭제</option>
							</select>
						</div>
					</div>
					<div class="box-footer">
						<button type="submit" class="btn btn-primary">글 등록</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>
<%@include file="../common/footer.jsp"%>

