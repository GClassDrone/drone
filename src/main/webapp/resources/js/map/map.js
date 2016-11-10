$(function() {
// 맵 설정용
	var map;
	var markers;
	var markerCluster;
	var map_center={lat:36.2707833, lng:127.7498591};
// 맵 생성
	function initMap() {
// 맵 초기정보
		map = new google.maps.Map(document.getElementById('map'), {
			zoom : 7,
			maxZoom : 13,
			minZoom : 7,
			center : map_center
		});
// 더블클릭 줌인 잠금
		map.set("disableDoubleClickZoom", true);

// 우측 상단 버튼
		var searchMenuDiv = document.createElement('div');
		searchMenuDiv.setAttribute('class','dropdown');
		var searchMenu = new SearchMenu(searchMenuDiv, map);
		searchMenuDiv.index = 1;
		map.controls[google.maps.ControlPosition.TOP_RIGHT].push(searchMenuDiv);
		
		$("#map-videobtn").click();
	}
	function videoCluster(map, markers){
		markerCluster = new MarkerClusterer(map, markers, {
			imagePath : '/resources/images/map/m'
		});
// 특정 줌레벨 이후 2이상 마커 크러스터 클릭 이벤트
		google.maps.event.addListener(markerCluster, 'clusterclick', function(cluster) {
			var str = "";
			var len = cluster.getMarkers().length;
			$(cluster.getMarkers()).each(function(i){
				str += "<div class='col-xs-12 col-sm-6 col-md-3'>";
				str += "<div class='video-btn embed-responsive embed-responsive-4by3' data-ctscateno='"+this.ctscateno+"' data-ctsno='"+this.ctsno+"'>";
				str += "<img src='http://img.youtube.com/vi/"+this.filelk+"/0.jpg'>";
				str += "<span class='fa fa-2x fa-fw fa-play-circle'></span>";
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
// 맵 클릭이벤트
//		google.maps.event.addListener(map, 'click', function(event) {
//			googleapisView(event.latLng.lat(), event.latLng.lng());
//		});
// 마커 모달오픈 이벤트 등록
		for(var i=0;i<markers.length;i++){
			google.maps.event.addListener(markers[i], 'click', function() {
				$("#dialog-video").data("ctscateno",this.ctscateno);
				$("#dialog-video").data("ctsno", this.ctsno);
				dialog.dialog( "open" );
			});
		}
	}
	function pilotCluster(map, markers){
		markerCluster = new MarkerClusterer(map, markers, {
			imagePath : '/resources/images/map/m'
		});
// 특정 줌레벨 이후 2이상 마커 크러스터 클릭 이벤트
		google.maps.event.addListener(markerCluster, 'clusterclick', function(cluster) {
			var str = "";
			var len = cluster.getMarkers().length;
			$(cluster.getMarkers()).each(function(i){
				if(i%3 == 0){
					str+="<div class='row'>";
				}
				str += "<div class='well'>";
				str += "<div class='media'>";
				str += "<a class='pull-left' href=''>";
				str += "<img class='media-object' src='http://placekitten.com/121/121'>";
				str += "</a>";
				str += "<div class='media-body' style='color: #424242'>";
				str += "<a href=''";
				str += "<h3>"+this.ttl+"</h3>";
				str += "<p>"+this.ctt.substring(0,50)+"...</p>";
				str += "<p>"+this.ctt+"</p>";
				str += "</div>";
				if(i%3 == 2){
					str+="</div>";
				}
			});
			$("#list_wrap").html(str);
		});
// 맵 클릭이벤트
//		google.maps.event.addListener(map, 'click', function(event) {
//			googleapisView(event.latLng.lat(), event.latLng.lng());
//		});
// 마커 모달오픈 이벤트 등록
		for(var i=0;i<markers.length;i++){
			google.maps.event.addListener(markers[i], 'click', function() {
				$("#dialog-video").data("ctscateno",this.ctscateno);
				$("#dialog-video").data("ctsno", this.ctsno);
				dialog.dialog( "open" );
			});
		}
	}
	// 동영상 정보 전환 버튼
	$(document).on("click","#map-videobtn",function(){
		if(markerCluster != null){
			markerCluster.clearMarkers();
			markers=[];
		}
// 마커 생성
		markers = videoList();
// 마커 크러스터 생성
		videoCluster(map, markers);
	});
// 파일럿 정보 전환 버튼
	$(document).on("click","#map-pilotbtn",function(){
		if(markerCluster != null){
			markerCluster.clearMarkers();
			markers=[];
		}
// 마커 생성
		markers = pilotList();
// 마커 크러스터 생성
		pilotCluster(map, markers);
	});
// 리스트에서 모달생성 이벤트	
	$(document).on("click",".video-btn",function(){
		$("#dialog-video").data("ctscateno",$(this).data("ctscateno"));
		$("#dialog-video").data("ctsno", $(this).data("ctsno"));
		dialog.dialog( "open" );
	});
// 역지오코딩 좌표 > 주소값
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
		videoMenu.id = 'map-videobtn';
		var videoMenuTextNode = document.createTextNode("영상");
		videoMenu.appendChild(videoMenuTextNode);
		dropMenu.appendChild(videoMenu);
		
		var pilotMenu = document.createElement('a');
		pilotMenu.href = '#';
		pilotMenu.id = 'map-pilotbtn';
		var pilotMenuTextNode = document.createTextNode("파일럿");
		pilotMenu.appendChild(pilotMenuTextNode);
		dropMenu.appendChild(pilotMenu);

		// 조건 버튼 이벤트 등록
		dropMenu.addEventListener('mouseover', function() {
		});
	}
// 마커 정보 저장용 배열
	var locations = new Array;
	var filelks = new Array;
	var ttls = new Array;
	var ctts = new Array;
	var ctscatenos = new Array;
	var ctsnos = new Array;
// 동영상 정보 마커 생성 ajax
	function videoList(){
		locations = [];
		$.ajax({
			url: "/map/videoList",
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
					ctscatenos.push(this.ctscateno);
					ctsnos.push(this.ctsno);
				});
			}
		});
		return locations.map(function(location, i) {
			return new google.maps.Marker({
				position : location,
				filelk : filelks[i],
				ttl : ttls[i],
				ctt : ctts[i],
				ctscateno : ctscatenos[i],
				ctsno : ctsnos[i]
			});
		});
	}
// 파일럿 정보 마커 생성 ajax
	function pilotList(){
		locations = [];
		
		$.ajax({
			url: "/map/pilotList",
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
				});
			}
		});
		return locations.map(function(location, i) {
			return new google.maps.Marker({
				position : location,
				
			});
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
	dialog = $("#dialog-video").dialog({
		autoOpen : false,
		height : 1100,
		width : 900,
		modal : true,
		open: function(){
			var data = {ctscateno:$("#dialog-video").data("ctscateno"),ctsno:$("#dialog-video").data("ctsno")};
			$.ajax({
				url: "/map/videoDetail",
				type: "POST",
				data: JSON.stringify(data),
				headers: {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "POST"
				},
				dataType: "json",
				success: function(result){
					$("#modal-ttl").text(result.ttl);
					$("#youtube-wrap").find("source").attr("src","http://www.youtube.com/watch?v="+result.filelk);
					$("#modal-ctt").text(result.ctt);
					$("#modal-readcnt").text(result.readcnt);
					$('#youtube1').mediaelementplayer();
				}
			});
			$("#dialog-video").prev().remove();
		},
		close: function(){
		}
	});
// 모달 닫기 버튼
	$("#modal-close").on("click",function(){
		dialog.dialog("close");
	});
	form = dialog.find("form").on("submit",function(event){
		event.preventDefault();
	});
})