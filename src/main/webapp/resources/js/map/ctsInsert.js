$(function(){
	var map;
	var m_center = {lat:36.2707833, lng:127.7498591};
	var map_init={ // 맵 생성 초기값
		zoom : 7,
		maxZoom : 13,
		minZoom : 7,
		center : m_center
	};
	function initMap() {// 맵  생성 함수
		map = new google.maps.Map(document.getElementById('map'), map_init);
		map.set("disableDoubleClickZoom", true); // 맵 더블클릭 이벤트 잠금
		google.maps.event.addListener(map, 'click', function(event) {
			googleapisView(event.latLng.lat(), event.latLng.lng());
		});
	}
	// 역지오코딩 좌표 > 주소값
	function googleapisView(lat, lng) {
		var geocode = "https://maps.googleapis.com/maps/api/geocode/json?latlng="+lat+","+lng+"&key=AIzaSyA19l1lXb7Knj6sgwTXGwnKSqfakx3laYE";
		$.ajax({
			url: geocode,
			type: 'POST',
			success: function(myJSONResult){
				if(myJSONResult.status == 'OK') {
					var len = myJSONResult.results[0].address_components.length;
					var add = myJSONResult.results[0].address_components;
					$("#pt").val(add[len-3].long_name+" "+add[len-4].long_name+" "+add[len-5].long_name);
					$("#lat").val(myJSONResult.results[0].geometry.location.lat);
					$("#lng").val(myJSONResult.results[0].geometry.location.lng);
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
	initMap();
	$.ajax({
		url: "/map/ctscateSelect",
		type: "POST",
		headers: {
			"Context-Type" : "application/json",
			"X-HTTP-Method-Override" : "POST"
		},
		dataType: "json",
		success: function(result){
			var str ="";
			$(result).each(function(){
				str += "<option value='"+this.ctscateno+"'>"+this.ctscatenm+"</option>"
			});
			$("#ctscateno").html(str);
		}
	});
	var DatePicker={ // datepicker 동적 생성을 위한 변수
			dateFormat: "yymmdd",
			yearRange: "1970:2020",
			changeYear: true,
			changeMonth: true,
			dayNames: ['월','화','수','목','금','토','일'],
			dayNamesMin: ['월','화','수','목','금','토','일'],
			monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
			monthNamesMin: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
			monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
			showMonthAfterYear: true,
			showButtonPanel: true,
			closeText: '닫기',
			currentText: '오늘'
	};
	$("#makedt").datepicker(DatePicker);
});