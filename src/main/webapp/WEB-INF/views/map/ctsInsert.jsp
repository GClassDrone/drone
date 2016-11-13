<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<div id="map"></div>
<div class="container">
	<form method="post" id="videoInsertForm">
		<div>
			<h3>영상 등록</h3>
		</div>
		<div id="input_wrap">
			<div>
				<label for="ttl">제목</label>
				<input type="text" name="ttl" id="ttl">
				<label for="ctscateno">카테고리</label>
				<select name="ctscateno" id="ctscateno"></select>
				<input type="hidden" name="mno" value="1">
			</div>
			<div>
				<label for="ctt">내용(설명)</label>
				<textarea rows="3" cols="60" name="ctt" id="ctt"></textarea>
			</div>
			<div>
				<label for="pt">촬영장소</label>
				<input type="text" name="pt" id="pt" readonly>
				<label for="lat">위도</label>
				<input type="text" name="lat" id="lat" readonly>
				<label for="lng">경도</label>
				<input type="text" name="lng" id="lng" readonly>
			</div>
			<div>
				<label for="filelk">영상 링크</label>
				<input type="text" name="filelk" id="filelk">
				<label for="makedt">영상 제작일</label>
				<input type="text" name="makedt" id="makedt" readonly>
			</div>
			<div>
				<input type="submit" value="등록">
				<input type="reset" value="초기화">
			</div>
		</div>
	</form>
</div>
<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>