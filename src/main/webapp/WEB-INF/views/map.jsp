<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/resources/css/map.css"/>
<script type="text/javascript" src="/resources/js/jquery-2.1.4.min.js"></script>
<script async defer type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA19l1lXb7Knj6sgwTXGwnKSqfakx3laYE&callback=initMap"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/d3/3.5.5/d3.min.js"></script>
<script type="text/javascript" src="/resources/js/markerclusterer.js"></script>
<script type="text/javascript" src="/resources/js/map1.js"></script>
</head>
<body>
	<div id="select">
		<label>영상</label>
		<input type="radio" name="mapview" value="1">
		<label>파일럿 정보</label>
		<input type="radio" name="mapview" value="2">
	</div>
	<div id="map"></div>
</body>
</html>