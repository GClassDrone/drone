<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
<meta charset="utf-8">
<title>Marker Clustering</title>
<link rel="stylesheet" type="text/css" href="/resources/css/map.css"/>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA19l1lXb7Knj6sgwTXGwnKSqfakx3laYE"></script>
<script src="/resources/js/jquery-2.1.4.min.js"></script>
<script src="/resources/js/markerclusterer.js"></script>
<script src="/resources/js/map.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<!-- <div id="map_wrap">
		<div id="select">
			<label>영상</label>
			<input type="radio" name="mapview" value="1">
			<label>파일럿 정보</label>
			<input type="radio" name="mapview" value="2">
		</div>
		<div id="map"></div>
	</div> -->
	<jsp:include page="test.jsp"></jsp:include>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>