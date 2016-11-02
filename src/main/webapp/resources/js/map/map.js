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
			alert( "Latitude: "+lat1+" "+", longitude: "+lng1 );
			$(location).attr('href', "https://maps.googleapis.com/maps/api/geocode/json?latlng="+lat1+","+lng1+"&key=AIzaSyA19l1lXb7Knj6sgwTXGwnKSqfakx3laYE");
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
	}, {
		lat : 36.718234,
		lng : 128.363181
	}, {
		lat : 36.727111,
		lng : 128.371124
	}, {
		lat : 36.848588,
		lng : 128.209834
	}, {
		lat : 36.851702,
		lng : 128.216968
	}, {
		lat : 36.671264,
		lng : 128.863657
	}, {
		lat : 36.304724,
		lng : 128.662905
	}, {
		lat : 36.817685,
		lng : 128.699196
	}, {
		lat : 36.828611,
		lng : 128.790222
	}, {
		lat : 36.750000,
		lng : 128.116667
	}, {
		lat : 36.759859,
		lng : 128.128708
	}, {
		lat : 36.765015,
		lng : 128.133858
	}, {
		lat : 36.770104,
		lng : 128.143299
	}, {
		lat : 36.773700,
		lng : 128.145187
	}, {
		lat : 36.774785,
		lng : 128.137978
	}, {
		lat : 36.819616,
		lng : 128.968119
	}, {
		lat : 36.330766,
		lng : 128.695692
	}, {
		lat : 36.927193,
		lng : 128.053218
	}, {
		lat : 36.330162,
		lng : 128.865694
	}, {
		lat : 36.734358,
		lng : 128.439506
	}, {
		lat : 36.734358,
		lng : 128.501315
	}, {
		lat : 36.735258,
		lng : 128.438000
	}, {
		lat : 36.999792,
		lng : 128.463352
	} ];
	initMap();
})