$(function() {
	var locations = new Array;//ajax 통해 불러온 위경도값 저장배열
	var filelks = new Array;//ajax 통해 불러온 링크값 저장배열
	var ttls = new Array;
	var ctts = new Array;
	var m_filelk = "";//모달에 전달될 링크저장변수
	
	function initMap() {
		mapList();
		var map = new google.maps.Map(document.getElementById('map'), {
			zoom : 7,
			maxZoom : 13,
			minZoom : 7,
			center : {
				lat : 36.2707833,
				lng : 127.7498591
			}
		});
		var markers = locations.map(function(location, i) {
			return new google.maps.Marker({
				position : location,
				filelk : filelks[i],
				ttl : ttls[i],
				ctt : ctts[i],
//				icon: image
			});
		});
		var markerCluster = new MarkerClusterer(map, markers, {
			imagePath : '/resources/images/map/m'
		});
		google.maps.event.addListener(markerCluster, 'clusterclick', function(
				cluster) {
			var str = "";
			var len = cluster.getMarkers().length;
			$(cluster.getMarkers()).each(function(i){
				str += "<div class='col-xs-12 col-sm-6 col-md-3'>";
				str += "<div class='video-btn embed-responsive embed-responsive-4by3'>";
				str += "<img src='http://img.youtube.com/vi/"+this.filelk+"/0.jpg'>";
				str += "<span class='fa fa-2x fa-fw fa-play-circle'></span>";
				str += "<input type='hidden' value='"+this.filelk+"'>";
				str += "</div>";
				str += "<h3>"+this.ttl+"</h3>";
				if(this.ctt.length > 50){
					str += "<p>"+this.ctt.substring(0,50)+"...</p>";
				}else{
					str += "<p>"+this.ctt+"</p>";
				}
				str += "</div>";
			});
			$("#list_wrap").html(str);
		});
		google.maps.event.addListener(map, 'click', function(event) {
//			googleapisView(event.latLng.lat(), event.latLng.lng());
		});
// 마크마다 각자의 동영상 링크 저장
		for(var i=0;i<markers.length;i++){
			google.maps.event.addListener(markers[i], 'click', function() {
				m_filelk=this.filelk;
				dialog.dialog( "open" );
			});
		}
// 더블클릭 줌인 잠금
		map.set("disableDoubleClickZoom", true);
// 리사이즈 이벤트
//		google.maps.event.addDomListener(window, "resize", function() {
//			var center = map.getCenter();
//			google.maps.event.trigger(map, "resize");
//			map.setCenter(center); 
//		});
// 우측 상단 버튼
		var searchMenuDiv = document.createElement('div');
		searchMenuDiv.setAttribute('class','dropdown');
		var searchMenu = new SearchMenu(searchMenuDiv, map);

		searchMenuDiv.index = 1;
		map.controls[google.maps.ControlPosition.TOP_RIGHT].push(searchMenuDiv);
	}
	
	$(document).on("click",".video-btn",function(){
		m_filelk=$(this).find("input").val();
		dialog.dialog( "open" );
	});
// 역지오코딩
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
// 우측 상단 버튼
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
// 맵 마커 생성용 좌표값을 받아오기 위한 아직스
	function mapList(){
		$.ajax({
			url: "/map/map",
			type: "POST",
			headers: {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "POST"
			},
			dataType: "json",
			async: false,
			success: function(result){
				$(result).each(function(){
					locations.push({lat:this.lat,lng:this.lng});
					filelks.push(this.filelk);
					ttls.push(this.ttl);
					ctts.push(this.ctt);
				});
			}
		});
	}
	function addList(){
		$.ajax({
			url: "/map/map",
			type: "POST",
			headers: {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "POST"
			},
			dataType: "json",
			async: false,
			success: function(result){
				$(result).each(function(){
					locations.push({lat:this.lat,lng:this.lng});
					filelks.push(this.filelk);
				});
			}
		});
	}
//	$("#latlngbtn").on("click",function(){
//		var sido="";
//		var sigungu="";
//		var lat="";
//		var lng="";
//		$.ajax({
//			type: 'POST',
//			headers: {
//				"Content-Type" : "application/json",
//				"X-HTTP-Method-Override" : "POST"
//			},
//			url: "addrlist",
//			dataTypy: 'text',
//			async: false,
//			success: function(result){
//				$(result).each(function(){
//					sido = this.sido;
//					sigungu = this.sigungu;
//					var geocode = "https://maps.googleapis.com/maps/api/geocode/json?address="+sido+" "+sigungu+",+KR&key=AIzaSyA19l1lXb7Knj6sgwTXGwnKSqfakx3laYE";
//					$.ajax({
//						url: geocode,
//						type: 'POST',
//						async: false,
//						success: function(myJSONResult){
//							if(myJSONResult.status == 'OK') {
//								lat = myJSONResult.results[0].geometry.location.lat
//								lng = myJSONResult.results[0].geometry.location.lng;
//							} else if(myJSONResult.status == 'ZERO_RESULTS') {
//								alert("지오코딩이 성공했지만 반환된 결과가 없음을 나타냅니다.\n\n이는 지오코딩이 존재하지 않는 address 또는 원격 지역의 latlng을 전달받는 경우 발생할 수 있습니다.")
//							} else if(myJSONResult.status == 'OVER_QUERY_LIMIT') {
//								alert("할당량이 초과되었습니다.");
//							} else if(myJSONResult.status == 'REQUEST_DENIED') {
//								alert("요청이 거부되었습니다.\n\n대부분의 경우 sensor 매개변수가 없기 때문입니다.");
//							} else if(myJSONResult.status == 'INVALID_REQUEST') {
//								alert("일반적으로 쿼리(address 또는 latlng)가 누락되었음을 나타냅니다.");
//							}
//							$.ajax({
//								type: 'POST',
//								headers: {
//									"Content-Type" : "application/json",
//									"X-HTTP-Method-Override" : "POST"
//								},
//								data: JSON.stringify({"sido":sido,"sigungu":sigungu,"lat":lat,"lng":lng}) ,
//								url: "/addrupdate",
//								dataTypy: 'text',
//								success: function(result){
//									alert(result);
//								}
//							});
//						}
//					});
//				});
//			}
//		});
//	});
	initMap();
	var form;
	var dialog;
	dialog = $("#dialog-form").dialog({
		autoOpen : false,
		height : 900,
		width : 900,
		modal : true,
		open: function(){
			$("#youtube-wrap").find("source").attr("src","http://www.youtube.com/watch?v="+m_filelk);
			$('#youtube1').mediaelementplayer();
		},
		close: function(){
			form[0].reset();
		}
	});
	form = dialog.find("form").on("submit",function(event){
		event.preventDefault();
	});
})