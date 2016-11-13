$(function() {
// 맵 설정용 변수
	var map;
	var markers;
	var markerCluster;
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

		// 우측 상단 버튼
		var searchMenuDiv = document.createElement('div');
		searchMenuDiv.setAttribute('class','dropdown');
		var searchMenu = new SearchMenu(searchMenuDiv, map);
		searchMenuDiv.index = 1;
		map.controls[google.maps.ControlPosition.TOP_RIGHT].push(searchMenuDiv);
		
		// 지도에 표시된 마커 초기화
		if(markerCluster != null){
			markerCluster.clearMarkers();
			markers=[];
		}
		
		markers = videoList(); // 동영상 마커 생성

		videoCluster(map, markers); // 지도에 마커 크러스터 표시
		hotclipVideo();
	}
	function hotclipVideo(){
		$.ajax({
			url: "/map/hotclipVideo",
			type: "POST",
			dataType: "json",
			success: function(result){
				data = [];
				$(result).each(function(){
					data.push({ctscateno:this.ctscateno,ctsno:this.ctsno,filelk:this.filelk,ttl:this.ttl,ctt:this.ctt});
				});
				nowPage=1;
				startNum=0;
				endNum=0;
				videoPage();
			}
		});
	}
	function hotclipPilot(){
		$.ajax({
			url: "/map/hotclipPilot",
			type: "POST",
			dataType: "json",
			success: function(result){
				data = [];
				$(result).each(function(){
					data.push({mno:this.mno,niknm:this.niknm,locnm:this.locnm,actnm:this.actnm,mdrnm:this.mdrnm});
				});
				nowPage=1;
				startNum=0;
				endNum=0;
				pilotPage();
			}
		});
	}
// 동영상 리스튼
//페이징용 변수
	var data = new Array;
	var startNum;
	var endNum;
	var nowPage;
	var videoPageRow = 8;
	var pilotPageRow = 12;
	var p_cluster;
//페이징용 변수
	function videoCluster(map, markers){
		markerCluster = new MarkerClusterer(map, markers, {
			imagePath : '/resources/images/map/m'
		});
// 특정 줌레벨 이후 2이상 마커 크러스터 클릭 이벤트
		google.maps.event.addListener(markerCluster, 'clusterclick', function(cluster) {
			data=[];
			$(cluster.getMarkers()).each(function(i){
				data.push({ctscateno:this.ctscateno,ctsno:this.ctsno,filelk:this.filelk,ttl:this.ttl,ctt:this.ctt});
			});
			nowPage=1;
			startNum=0;
			endNum=0;
			videoPage();
		});
// 마커 모달오픈 이벤트 등록
		for(var i=0;i<markers.length;i++){
			google.maps.event.addListener(markers[i], 'click', function() {
				$("#dialog-video").data("ctscateno",this.ctscateno);
				$("#dialog-video").data("ctsno", this.ctsno);
				dialog.dialog( "open" );
			});
		}
	}
	function videoPage(){
		var str = "";
		startNum=(nowPage-1)*videoPageRow;
		if(nowPage!=Math.ceil(data.length/videoPageRow)){
			endNum=(videoPageRow*nowPage)-1;
		}else if(nowPage==Math.ceil(data.length/videoPageRow)){
			if(data.length%videoPageRow != 0){
				endNum=startNum+data.length%videoPageRow-1;
			}else{
				endNum=nowPage*videoPageRow-data.length%videoPageRow-1;
			}
		}
		if(nowPage>1){
			str+="<div><input type='button' class='prevPage video' value='prev'></div>";
		}
		for(var i=startNum;i<=endNum;i++){
			str += "<div class='col-xs-12 col-sm-6 col-md-3'>";
			str += "<div class='video-btn embed-responsive embed-responsive-4by3' data-ctscateno='"+data[i].ctscateno+"' data-ctsno='"+data[i].ctsno+"'>";
			str += "<img src='http://img.youtube.com/vi/"+data[i].filelk+"/0.jpg'>";
			str += "<span class='fa fa-2x fa-fw fa-play-circle'></span>";
			str += "</div>";
			str += "<h3>"+data[i].ttl+"</h3>";
			if(data[i].ctt.length > 50){
				str += "<p>"+data[i].ctt.substring(0,50)+"...</p>";
			}else{
				str += "<p>"+data[i].ctt+"</p>";
			}
			str += "</div>";
		}
		if(nowPage<Math.ceil(data.length/videoPageRow)){
			str += "<div><input type='button' class='nextPage video' value='next'></div>";
		}
		$("#list_wrap").empty();
		$("#list_wrap").html(str);
	}
	$(document).on("click",".prevPage",function(){
		nowPage=nowPage-1;
		if($(this).hasClass("video")){
			videoPage();
		}else{
			pilotPage();
		}
	});
	$(document).on("click",".nextPage",function(){
		nowPage=nowPage+1;
		if($(this).hasClass("video")){
			videoPage();
		}else{
			pilotPage();
		}
	});
// 파일럿 리스트
	function pilotCluster(map, markers){
		markerCluster = new MarkerClusterer(map, markers, {
			imagePath : '/resources/images/map/m'
		});
// 맥스 줌인 이후 아이템 숫자가 2이상인 마커 크러스터 클릭 이벤트
		google.maps.event.addListener(markerCluster, 'clusterclick', function(cluster) {
			data=[];
			$(cluster.getMarkers()).each(function(i){
				data.push({mno:this.mno,niknm:this.niknm,locnm:this.locnm,actnm:this.actnm,mdrnm:this.mdrnm});
			});
			nowPage=1;
			startNum=0;
			endNum=0;
			pilotPage();
		});
// 마커 모달오픈 이벤트 등록
		for(var i=0;i<markers.length;i++){
			google.maps.event.addListener(markers[i], 'click', function() {
				$(location).attr("href","/mem/ProfileDetail?mno="+this.mno);
			});
		}
	}
	function pilotPage(){
		var str = "";
		startNum=(nowPage-1)*pilotPageRow;
		if(nowPage!=Math.ceil(data.length/pilotPageRow)){
			endNum=(pilotPageRow*nowPage)-1;
		}else if(nowPage==Math.ceil(data.length/pilotPageRow)){
			if(data.length%pilotPageRow != 0){
				endNum=startNum+data.length%pilotPageRow-1;
			}else{
				endNum=nowPage*pilotPageRow-data.length%pilotPageRow-1;
			}
		}
		if(nowPage>1){
			str+="<div><input type='button' class='prevPage pilot' value='prev'></div>";
		}
		for(var i=startNum;i<=endNum;i++){
			if(i%3 == 0){
				str+="<div class='row'>";
			}
			str += "<div class='col-md-1'>";
			str += "<a href='/mem/ProfileDetail?mno="+data[i].mno+"'>";
			str += "<img src='../resources/images/castleMo2.png' class='center-block img-circle'>";
			str += "<h6 class='text-center'>"+data[i].niknm+"<p>(<span class='glyphicon glyphicon-star'></span>)</p></h6>";
			str += "</a>";
			str += "</div>";
			str += "<div class='col-md-3'>";
			str += "<div class='panel panel-success'>";
			str += "<ul>";
			str += "<p class='text-left text-info'>";
			str += "<li>지역 : "+data[i].locnm+"</li>";
			str += "<li>경력 : "+data[i].actnm+"</li>";
			str += "<li>보유장비 : "+data[i].mdrnm+"</li>";
			str += "</p>";
			str += "</ul>";
			str += "</div>";
			str += "</div>";
			if(i%3 == 2 || i == pilotPageRow){
				str+="</div>";
			}
		}
		if(nowPage<Math.ceil(data.length/pilotPageRow)){
			str += "<div><input type='button' class='nextPage pilot' value='next'></div>";
		}
		$("#list_wrap").empty();
		$("#list_wrap").html(str);
	}
	// 동영상 정보 전환 버튼
	$(document).on("click","#map-videobtn",function(){
		$("#list_wrap").empty();
		map.setZoom(map_init.zoom);
		map.setCenter(m_center);
		if(markerCluster != null){
			markerCluster.clearMarkers();
			markers=[];
		}
// 마커 생성
		markers = videoList();
// 마커 크러스터 생성
		videoCluster(map, markers);
		hotclipVideo();
	});
// 파일럿 정보 전환 버튼
	$(document).on("click","#map-pilotbtn",function(){
		$("#list_wrap").empty();
		map.setZoom(map_init.zoom);
		map.setCenter(m_center);
		if(markerCluster != null){
			markerCluster.clearMarkers();
			markers=[];
		}
// 마커 생성
		markers = pilotList();
// 마커 크러스터 생성
		pilotCluster(map, markers);
		hotclipPilot();
	});
// 리스트에서 모달생성 이벤트	
	$(document).on("click",".video-btn",function(){
		$("#dialog-video").data("ctscateno",$(this).data("ctscateno"));
		$("#dialog-video").data("ctsno", $(this).data("ctsno"));
		dialog.dialog( "open" );
	});
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
	var mnos = [];
	var niknms = [];
	var locnms = [];
	var actnms = [];
	var mdrnms = [];
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
					mnos.push(this.mno);
					niknms.push(this.niknm);
					locnms.push(this.locnm);
					actnms.push(this.actnm);
					mdrnms.push(this.mdrnm);
				});
			}
		});
		return locations.map(function(location, i) {
			return new google.maps.Marker({
				position : location,
				mno: mnos[i],
				niknm : niknms[i],
				locnm : locnms[i],
				actnm : actnms[i],
				mdrnm : mdrnms[i]
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
					var str = "<video id='youtube1'><source src='' type='video/youtube'></video>";
					$("#youtube-wrap").html(str);
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
			$('#youtube-wrap').empty();
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