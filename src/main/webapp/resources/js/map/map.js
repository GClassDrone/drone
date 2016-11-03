$(function() {
	function initMap() {
		var map = new google.maps.Map(document.getElementById('map'), {
			zoom : 7,
			maxZoom : 13,
			minZoom : 7,
			center : {
				lat : 36.024,
				lng : 128.887
			}
		});
		var markers = locations.map(function(location, i) {
			return new google.maps.Marker({
				position : location
//				icon: image
			});
		});
		var markerCluster = new MarkerClusterer(map, markers, {
			imagePath : '/resources/images/map/m'
		});
		google.maps.event.addListener(markerCluster, 'clusterclick', function(
				cluster) {
			alert("리스트");
		});
		google.maps.event.addListener(map, 'click', function(event) {
			var lat1 = event.latLng.lat();
			var lng1 = event.latLng.lng();
			googleapisView(lat1, lng1);
		});
		for(var i=0;i<markers.length;i++){
			google.maps.event.addListener(markers[i], 'click', function() {
				dialog.dialog( "open" );
			});
		}
		map.set("disableDoubleClickZoom", true);
		google.maps.event.addDomListener(window, "resize", function() {
			var center = map.getCenter();
			google.maps.event.trigger(map, "resize");
			map.setCenter(center); 
		});
		var searchMenuDiv = document.createElement('div');
		searchMenuDiv.setAttribute('class','dropdown');
		var searchMenu = new SearchMenu(searchMenuDiv, map);

		searchMenuDiv.index = 1;
		map.controls[google.maps.ControlPosition.TOP_RIGHT].push(searchMenuDiv);
	}
	function googleapisView(lat, lng) {
		var geocode = "https://maps.googleapis.com/maps/api/geocode/json?latlng="+lat+","+lng+"&key=AIzaSyA19l1lXb7Knj6sgwTXGwnKSqfakx3laYE";
		$.ajax({
			url: geocode,
			type: 'POST',
			success: function(myJSONResult){
				if(myJSONResult.status == 'OK') {
					alert("주소 : " +myJSONResult.results[0].formatted_address);
					alert("위도 : " +myJSONResult.results[0].geometry.location.lat);
					alert("경도 : " +myJSONResult.results[0].geometry.location.lng);
				} else if(myJSONResult.status == 'ZERO_RESULTS') {
					alert("지오코딩이 성공했지만 반환된 결과가 없음을 나타냅니다.\n\n이는 지오코딩이 존재하지 않는 address 또는 원격 지역의 latlng을 전달받는 경우 발생할 수 있습니다.")
				} else if(myJSONResult.status == 'OVER_QUERY_LIMIT') {
					alert("할당량이 초과되었습니다.");
				} else if(myJSONResult.status == 'REQUEST_DENIED') {
					alert("요청이 거부되었습니다.\n\n대부분의 경우 sensor 매개변수가 없기 때문입니다.");
				} else if(myJSONResult.status == 'INVALID_REQUEST') {
					alert("일반적으로 쿼리(address 또는 latlng)가 누락되었음을 나타냅니다.");
				}
			}
		});
	}
	
	function SearchMenu(buttonDiv, map) {

		// 조건버튼
		var buttonUI = document.createElement('button');
		var buttonTextNode = document.createTextNode("조건");
		buttonUI.setAttribute('class','dropbtn');
		buttonUI.appendChild(buttonTextNode);
		buttonDiv.appendChild(buttonUI);
		
		// 하위 메뉴 DIV
		var dropMenu = document.createElement('div');
		dropMenu.setAttribute('class','dropdown-content');
		buttonDiv.appendChild(dropMenu);
		
		// 하위 메뉴
		var videoMenu = document.createElement('a');
		videoMenu.href = '#';
		var videoMenuTextNode = document.createTextNode("영상");
		videoMenu.appendChild(videoMenuTextNode);
		dropMenu.appendChild(videoMenu);
		
		var pilotMenu = document.createElement('a');
		pilotMenu.href = '#';
		var pilotMenuTextNode = document.createTextNode("파일럿");
		pilotMenu.appendChild(pilotMenuTextNode);
		dropMenu.appendChild(pilotMenu);

		// 조건 버튼 이벤트 등록
		dropMenu.addEventListener('mouseover', function() {
			
		});
	}
	
	var form;
	var dialog;
	dialog = $("#dialog-form").dialog({
		autoOpen : false,
		height : 900,
		width : 900,
		modal : true,
		close: function(){
			form[0].reset();
		}
	});
	form = dialog.find("form").on("submit",function(event){
		event.preventDefault();
	});
	var locations = [ {
		lat : 36.563910,
		lng : 128.154312
	}];
	initMap();
})