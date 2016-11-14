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
//	$("#latlngbtn").on("click",function(){
//	var sido="";
//	var sigungu="";
//	var lat="";
//	var lng="";
//	$.ajax({
//		type: 'POST',
//		headers: {
//			"Content-Type" : "application/json",
//			"X-HTTP-Method-Override" : "POST"
//		},
//		url: "addrlist",
//		dataTypy: 'text',
//		async: false,
//		success: function(result){
//			$(result).each(function(){
//				sido = this.sido;
//				sigungu = this.sigungu;
//				var geocode = "https://maps.googleapis.com/maps/api/geocode/json?address="+sido+" "+sigungu+",+KR&key=AIzaSyA19l1lXb7Knj6sgwTXGwnKSqfakx3laYE";
//				$.ajax({
//					url: geocode,
//					type: 'POST',
//					async: false,
//					success: function(myJSONResult){
//						if(myJSONResult.status == 'OK') {
//							lat = myJSONResult.results[0].geometry.location.lat
//							lng = myJSONResult.results[0].geometry.location.lng;
//						} else if(myJSONResult.status == 'ZERO_RESULTS') {
//							alert("지오코딩이 성공했지만 반환된 결과가 없음을 나타냅니다.\n\n이는 지오코딩이 존재하지 않는 address 또는 원격 지역의 latlng을 전달받는 경우 발생할 수 있습니다.")
//						} else if(myJSONResult.status == 'OVER_QUERY_LIMIT') {
//							alert("할당량이 초과되었습니다.");
//						} else if(myJSONResult.status == 'REQUEST_DENIED') {
//							alert("요청이 거부되었습니다.\n\n대부분의 경우 sensor 매개변수가 없기 때문입니다.");
//						} else if(myJSONResult.status == 'INVALID_REQUEST') {
//							alert("일반적으로 쿼리(address 또는 latlng)가 누락되었음을 나타냅니다.");
//						}
//						$.ajax({
//							type: 'POST',
//							headers: {
//								"Content-Type" : "application/json",
//								"X-HTTP-Method-Override" : "POST"
//							},
//							data: JSON.stringify({"sido":sido,"sigungu":sigungu,"lat":lat,"lng":lng}) ,
//							url: "/addrupdate",
//							dataTypy: 'text',
//							success: function(result){
//								alert(result);
//							}
//						});
//					}
//				});
//			});
//		}
//	});
//});