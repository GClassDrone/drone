$(function(){
	var map;
	var m_center = {lat:36.2707833, lng:127.7498591};
	var map_init={ // 맵 생성 초기값
		zoom : 7,
		maxZoom : 13,
		minZoom : 3,
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
					var add = myJSONResult.results[0].address_components;
					var len = add.length;
					var str = "";
					if(add.length==1){
						str +=add[len-1].long_name;
					}else{
						str += add[len-2].long_name;
						if(add[len-3] != null){
							str += " "+add[len-3].long_name;
						}
						if(add[len-4] != null){
							str += " "+add[len-4].long_name;
						}
						if(add[len-5] != null){
							str += " "+add[len-5].long_name;
						}
					}
					$("#pt").val(str);
					$("#lat").val(myJSONResult.results[0].geometry.location.lat);
					$("#lng").val(myJSONResult.results[0].geometry.location.lng);
				} else if(myJSONResult.status == 'ZERO_RESULTS') {
					alert("국가를 선택해 주세요.");
					$("#pt").val("");
					$("#lat").val("");
					$("#lng").val("");
//					alert("지오코딩이 성공했지만 반환된 결과가 없음을 나타냅니다.\n\n이는 지오코딩이 존재하지 않는 address 또는 원격 지역의 latlng을 전달받는 경우 발생할 수 있습니다.")
				}
//				else if(myJSONResult.status == 'OVER_QUERY_LIMIT') {
//					alert("할당량이 초과되었습니다.");
//				} else if(myJSONResult.status == 'REQUEST_DENIED') {
//					alert("요청이 거부되었습니다.\n\n대부분의 경우 sensor 매개변수가 없기 때문입니다.");
//				} else if(myJSONResult.status == 'INVALID_REQUEST') {
//					alert("일반적으로 쿼리(address 또는 latlng)가 누락되었음을 나타냅니다.");
//				}
			}
		});
	}
	initMap();
	$("input[type='submit']").on("click",function(e){
		e.preventDefault();
		var filelk = $("#filelkValid").val();
		var links = ["https://www.youtube.com/watch?v=","https://youtu.be/"," ","/"];
		var valid = true;
		$(links).each(function(){
			filelk = filelk.replace(this,"");
		});
		valid = valid && lengthCheck($("#ttl").val(), "제목을 입력해주세요.");
		valid = valid && lengthCheck($("#ctscateno").val(),"분류를 선택하세요.");
		valid = valid && lengthCheck($("#pt").val(), "지도에서 장소를 선택해주세요.");
		valid = valid && lengthCheck(filelk, "영상 링크를 입력해주세요.");
		valid = valid && linkCheck(filelk);
		valid = valid && lengthCheck($("#tagnm").val(), "해쉬테그를 입력해주세요.");
		valid = valid && tagCheck($("#tagnm"));
		if(valid){
			$("#videoInsertForm").submit();
		}
	});
	function tagCheck(tagnm){
		var reg = /^[#][^]+$/;
		if(!(reg.test(tagnm.val()))){
			alert("해쉬테그 형식이 잘못되었습니다.");
			tagnm.val("");
			return false;
		}
		return true;
	}
	function linkCheck(filelk){
		$.ajax({
			dataType: "json",
			url: "https://www.googleapis.com/youtube/v3/videos?key=AIzaSyA19l1lXb7Knj6sgwTXGwnKSqfakx3laYE&part=snippet&id="+filelk,
			async: false,
			success: function(result){
				if(result.items.length === 0){
					alert("올바른 링크가 아닙니다.");
					$("#filelkValid").val("");
					return false;
				}else{
					$("#filelk").val(filelk);
				}
			}
		});
		return true;
	}
	function lengthCheck(that, msg){
		if(that.length == 0){
			alert(msg);
			return false;
		}
		return true;
	}
	$("#ctt").keyup(function(){
		$("#wordCount").text("("+$(this).val().length+"/200)");
	});
	$("input[value='Back']").on("click",function(e){
		e.preventDefault();
		$(location).attr("href","/mem/ProfileDetail?mno="+$("#session").data("mno"));
	});
	var reset_ttl = $("#ttl").val();
	var reset_ctt = $("#ctt").val();
	var reset_pt = $("#pt").val();
	var reset_lat = $("#lat").val();
	var reset_lng = $("#lng").val();
	var reset_filelk = $("#filelkValid").val();
	var reset_tagnm = $("#tagnm").val();
	$("input[value='Reset']").on("click",function(e){
		e.preventDefault();
		$("#ttl").val(reset_ttl);
		$("#ctt").val(reset_ctt);
		$("#pt").val(reset_pt);
		$("#lat").val(reset_lat);
		$("#lng").val(reset_lng);
		$("#filelkValid").val(reset_filelk);
		$("#tagnm").val(reset_tagnm);
	});
});