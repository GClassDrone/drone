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
						<div>
							<label for="niknm">드론 주인</label> <input type="text"
								id="niknm" name='niknm' class="form-control"  value="${niknm}" readonly="readonly">
						</div>
				<form role="form" method="post">
					<input type='hidden' id='mno' name='mno' value="${mno}">
					<div class="box-body">
						<div class="form-group">
							<label for="model">모델명</label> 
							<input type="text" id="model" name='model' class="form-control" placeholder="드론명을 적어주세요">
						</div>
						<div class="form-group">
							<label for="mdrnm">드론애칭</label>
							<input type="text" id="mdrnm" name='mdrnm' class="form-control" placeholder="드론애칭을 적어주세요">
						</div>
					</div>
					<div class="box-footer">
						<button type="submit" class="btn btn-primary">드론 등록</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>
<%@include file="../common/footer.jsp"%>