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
					<input type='hidden' id='subjno' name='subjno' value="${subjno}">
					<input type='hidden' id='mno' name='mno' value="${mno}">
						<div>
							<label for="niknm">작성자</label> <input type="text"
								id="niknm" name='niknm' class="form-control" placeholder="Enter Title" value="${niknm}" readonly="readonly">
						</div>
					<div class="box-body">
						<div class="form-group">
							<label for="ttl">글제목</label> <input type="text"
								id="ttl" name='ttl' class="form-control" placeholder="Enter Title">
						</div>
						<div class="form-group">
							<label for="ctt">글내용</label>
							<textarea class="form-control" id="ctt" name="ctt" rows="3"
								placeholder="Enter ..."></textarea>
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

