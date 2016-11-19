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
					<input type='hidden' id='mno' name='mno' value="${mno}">
						<div>
							<label for="niknm">게시판 관리자</label> <input type="text"
								id="niknm" name='niknm' class="form-control" placeholder="Enter niknm" value="${niknm}" readonly="readonly">
						</div>
					<div class="box-body">
						<div class="form-group">
							<label for="bcateno">카테고리 설정 </label>
							<select id="bcateno" name='bcateno' class="form-control">
								<option value="1">친목모임</option>
								<option value="2">드론정보</option>
								<option value="3">엔지니어</option>
								<option value="4">비행모임</option>
								<option value="5">중고거래</option>
								<option value="6">공동구매</option>
								<option value="7" disabled="disabled">드론판매(레벨부족)</option>
								<option value="8" disabled="disabled">항공촬영(레벨부족)</option>
							</select>
						</div>
						<div class="form-group">
							<label for="subjttl">게시판명</label> 
							<input type="text" id="sujbttl" name='subjttl' class="form-control" placeholder="게시판명을 적어주세요">
						</div>
						<div class="form-group">
							<label for="subjctt">게시판 설명</label>
							<textarea class="form-control" id="subjctt" name="subjctt" rows="3"
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

