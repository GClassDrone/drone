<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>지도 영상</title>
<jsp:include page="../common/include.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="/resources/css/map/map.css"/>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA19l1lXb7Knj6sgwTXGwnKSqfakx3laYE"></script>
<script src="/resources/js/map/markerclusterer.js"></script>
<script src="/resources/js/map/map.js"></script>
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>
 <br />
   <h1 id="pilot" style="text-align: center;"><strong>드론 촬영 영상</strong></h1>
   <p style="text-align: center;">드론으로 촬영된 입체적인 항공 영상을 보시려면 해당지역을 선택하고 위치를 클릭해주세요.</p>
	<!-- <div><input type="button" id="latlngbtn" value="등록"></div> -->
	<div id="map">
	</div><br />
 	<div class="slider">
	</div>
<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>