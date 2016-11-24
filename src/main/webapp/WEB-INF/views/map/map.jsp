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
<script src="/resources/js/map/jquery.xdomainajax.js"></script>
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>
 <br />
<!--  <input type="button" id="magnet" value="지자기정보">
 <input type="button" id="weather" value="날씨정보">
 <div class="vis-weather">
        <h2 class="vh_hide">날씨정보</h2>
        <p class="weather-date"></p>
        <ul>
            <li class="weather-temp"></li>
            <li id="RN1">시간당강수량 : ?</li>
            <li class="weather-state-text"></li>
        </ul>
    </div> -->
   <h1 id="pilot" style="text-align: center;"><strong>드론 촬영 영상</strong></h1>
   <p style="text-align: center;">드론으로 촬영된 입체적인 항공 영상을 보시려면 해당지역을 선택하고 위치를 클릭해주세요.</p>
	<div id="map">
	</div><br />
 	<div id="list-wrap" class="slider">
	</div>
<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>