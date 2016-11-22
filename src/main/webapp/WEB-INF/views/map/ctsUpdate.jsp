<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>영상 등록</title>
<jsp:include page="../common/include.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="/resources/css/map/ctsInsert.css">
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA19l1lXb7Knj6sgwTXGwnKSqfakx3laYE"></script>
<script type="text/javascript" src="/resources/js/map/ctsInsert.js"></script>
</head>

<body>
<jsp:include page="../common/header.jsp"></jsp:include>
 <br />
   <h1 id="pilot" style="text-align: center;"><strong>드론 영상 수정</strong></h1>
   <p style="text-align: center;">등록된 드론으로 촬영된 항공 영상을 수정하는 화면입니다.</p>


<div class="container">
	<div class="row"><br />
	<div class="col-md-6 col-sm-12 col-xs-12 well">
	
	<form method="post" id="videoInsertForm" class="form-horizontal">
	<input type="hidden" name="mno" value="${mno}">
		<fieldset>
			<h3>Registration Form</h3> <hr />
			<div class="form-group">
                <label class="col-md-2 control-label" for="ttl">제목</label>
                <div class="col-md-7">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="fa fa-file-word-o"></i>
                        </div>
                        <input id="ttl" name="ttl" type="text" value="${cDto.ttl}" class="form-control input-md" maxlength="30">
                    </div>
                </div>
                <div class="col-md-3">
					<select name="ctscateno" id="ctscateno" class="form-control" disabled="disabled">
					    <optgroup label="카테고리 분류">
							<option value="">분류</option>
							<c:forEach items="${ctscateList}" var="ccDto">
								<option value="${ccDto.ctscateno}" ${ccDto.ctscateno == cDto.ctscateno ? 'selected="selected"' : '' }>${ccDto.ctscatenm}</option>
							</c:forEach>
						</optgroup>
					</select>
				</div>
            </div>
			<div class="form-group">
                <label class="col-md-2 control-label" for="ctt">내용<br/><span id="wordCount">(${cDto.cttleng}/200)</span></label>
                <div class="col-md-10">
                    <textarea class="form-control" rows="3" id="ctt" name="ctt" maxlength="200">${cDto.ctt}</textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label" for="pt">촬영장소</label>
                <div class="col-md-10">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="fa fa-globe"></i>
                        </div>
                        <input id="pt" name="pt" type="text" value="${cDto.pt}" class="form-control input-md" readonly>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label" for="lat">위도값</label>
                <div class="col-md-4">
                    <div class="input-group">
                        <input id="lat" name="lat" type="text" value="${cDto.lat}" class="form-control input-md" readonly>
                    </div>
                </div>
                <label class="col-md-2 control-label" for="lng">경도값</label>
               	<div class="col-md-4">
                    <div class="input-group">
                        <input id="lng" name="lng" type="text" value="${cDto.lng}" class="form-control input-md" readonly>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label" for="filelk">영상주소</label>
                <div class="col-md-10">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="fa fa-file-video-o"></i>
                        </div>
                        <input id="filelkValid" type="text" value="https://youtu.be/${cDto.filelk}" class="form-control input-md">
                        <input id="filelk" name="filelk" type="hidden">
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label" for="tagnm">#태그추가</label>
                <div class="col-md-10">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="fa fa-tags"></i>
                        </div>
                        <input id="tagnm" name="tagnm" type="text" value="${cDto.tagnm}" class="form-control input-md">
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-4 control-label"></label>
                <div class="col-md-6">
                    <input type="submit" class="btn btn-success" value="Submit">
                    <input type="button" class="btn btn-info" value="Reset">
                    <input type="button" class="btn btn-danger" value="Back">
                </div>
            </div>
		</fieldset>
	</form>
	</div>
	<div class="col-md-6 col-sm-12 col-xs-12">
	<div class="map-responsive" id="map"></div>
	</div>
	</div>
</div><br />

<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>