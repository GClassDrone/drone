$(function(){
	var nowPage=1;
	var lastPage;
	var h =$('html').height();
	function infolist(nowPage){
		var pagePerRow = 8;
		var data = {nowPage:nowPage, pagePerRow: pagePerRow};
		var str = "";
		$.ajax({
			type: "POST",
			url: "/inform/info",
			headers:{
				"Content-Type":"application/json",
				"X-HTTP-Method-Override":"POST"
			},
			data: JSON.stringify(data),
			datatype: "json",
			async: false,
			success: function(result){
				$(result).each(function(i){
					if(i%4 == 0){
						str+="<div class ='row'>";
					}
					str += "<section class='col-xs-offset-3 col-xs-6 col-sm-offset-0 col-sm-6 col-md-3'>";
					str += "<div class='thumbnail'>";
					str += "<img alt='Bootstrap Thumbnail First' src='http://lorempixel.com/output/people-q-c-600-200-1.jpg'>";
					str += "<div class='caption'>";
					str += "<h3>"+this.ttl+"</h3>";
					if(this.ctt.length > 20){
						str += "<p>"+this.ctt.substr(0,35)+".....</p>";
					}else{
						str += " <p>"+this.ctt+"</p>";
					}
					str += "<p><a class='btn btn-primary' href='/inform/infoDetail?ino="+ this.ino + "&igubun=s'>Go</a></p>";
					str +="</div>";
					str += "</div>";
					str += "</section>";
					
					if(i%4 == 3 || i == result.length){
						str += "</div>";
					}
				});
			}
		});
		return str;
	}
	$("#pageBtn-wrap span").on("click", function(){
		nowPage = nowPage + 1;
		$("#infolist").append(infolist(nowPage));
		h += 800;
		$('html , body').animate({scrollTop: h}, 1000);
	});
	
	$("#infolist").html(infolist(1));
	

	$("#navbar-ex-collapse > ul > li").eq(3).addClass('active');
	$("#navbar-ex-collapse > ul > li").eq(4).addClass('active');
	
	function weather(){
		$.ajax({
			url: "/map/weather",
			data: JSON.stringify({mno:$("#session").data("mno")}),
			headers: {
				"Content-Type":"application/json",
				"X-HTTP-Method-Override":"POST"
			},
			type: "post",
			dataType: "json",
			success: function(result){
				weaterInit(result);
			}
		});
	}
	
	function weaterInit(){
		var today = new Date();
	    var week = new Array('일','월','화','수','목','금','토');
	    var year = today.getFullYear();
	    var month = today.getMonth()+1;
	    var day = today.getDate();
	    var hours = today.getHours();
	    var minutes = today.getMinutes();
	 
//	    $('.weather-date').html(month +"월 " + day + "일 " + week[today.getDay()]+"요일");
	 
	    /*
	     * 기상청 30분마다 발표
	     * 30분보다 작으면, 한시간 전 hours 값
	     */
	    if(minutes < 30){
	        hours = hours - 1;
	        if(hours < 0){
	            // 자정 이전은 전날로 계산
	            today.setDate(today.getDate() - 1);
	            day = today.getDate();
	            month = today.getMonth()+1;
	            year = today.getFullYear();
	            hours = 23;
	        }
	    }
	    
	    /* example
	     * 9시 -> 09시 변경 필요
	     */
	    
	    if(hours < 10) {
	        hours = '0'+hours;
	    }
	    if(month < 10) {
	        month = '0' + month;
	    }    
	    if(day < 10) {
	        day = '0' + day;
	    } 
	 
	    today = year+""+month+""+day;
		
		var url = 'http://newsky2.kma.go.kr/service/SecndSrtpdFrcstInfoService2/ForecastSpaceData'; /*URL*/
		url += '?ServiceKey=lJdm%2FWX%2BAQRJm608rN4l81fXS91%2B6eCjfxsPwXepTQR05zq7H%2FykYqQaiFrPeSUHvw005xtxsXkZ7OtR6yoESA%3D%3D'; /*Service Key*/
		url += '&base_date=20161123';
		url += '&base_time=1400';
		url += '&nx=60&ny=127';
		url += '&pageNo=1&numOfRows=20';
		url += '&_type=json';
		$.ajax({
			url: url,
			type: "get",
			success: function(msg){
				var text = msg.responseText,
					text = text.replace(/(<([^>]+)>)/ig,"");
					text = '[' + text + ']';
				var json = $.parseJSON(text);
				var start = json[0].response.body.items.item[0].fcstTime;
				var pop, pty, r06, reh, s06, sky, t3h, tmn, tmx, uuu, vvv, wav, vec, wsd
				$(json[0].response.body.items.item).each(function(){
					if(start!=this.fcstTime){
						return false;
					}
					if(this.category=="POP"){
						pop=this.fcstValue;
					}else if(this.category=="PTY"){
						pty=this.fcstValue;
					}else if(this.category=="R06"){
						r06=this.fcstValue;
					}else if(this.category=="REH"){
						reh=this.fcstValue;
					}else if(this.category=="S06"){
						s06=this.fcstValue;
					}else if(this.category=="SKY"){
						sky=this.fcstValue;
					}else if(this.category=="T3H"){
						t3h=this.fcstValue;
					}else if(this.category=="TMN"){
						tmn=this.fcstValue;
					}else if(this.category=="TMX"){
						tmx=this.fcstValue;
					}else if(this.category=="UUU"){
						uuu=this.fcstValue;
					}else if(this.category=="VVV"){
						vvv=this.fcstValue;
					}else if(this.category=="WAV"){
						wav=this.fcstValue;
					}else if(this.category=="VEC"){
						vec=this.fcstValue;
					}else if(this.category=="WDS"){
						wsd=this.fcstValue;
					}
				});
				$('.temp').html(toFixed(t3h,1) + " ℃");
//				$('#RN1').html("시간당강수량 : "+ Math.round(r06/6) +"mm");
				if(pty != 0) {
					switch(pty) {
						case 1:
							$('.night').html("비");
							break;
						case 2:
							$('.night').html("비/눈");
							break;
						case 3:
							$('.night').html("눈");
							break;
					}
				}else {
					switch(sky) {
						case 1:
							$('.night').html("맑음");
							break;
						case 2:
							$('.night').html("구름조금");
							break;
						case 3:
							$('.night').html("구름많음");
							break;
						case 4:
							$('.night').html("흐림");    
							break;
					}    
				}
				var aa="";
				if(uuu>0){
					aa+="북";
				}else if(uuu<0){
					aa+="남";
				}else{
					aa+="";
				}
				if(vvv>0){
					aa+="동";
				}else if(vvv<0){
					aa+="서";
				}else{
					aa+="";
				}
				if(wsd==null){
					aa+=Math.round((uuu+vvv),-1);
				}else{
					aa+=wsd;
				}
				$(".wind").html("풍향 풍속 : "+aa + "m/s");
			}
		});
	}
	function toFixed( num, precision ) {
	    return (+(Math.round(+(num + 'e' + precision)) + 'e' + -precision)).toFixed(precision);
	}
	function magnet(){
		$.ajax({
			url: "http://spaceweather.rra.go.kr/api/kindex",
			type: "post",
			dataType: "jsonp",
			success: function(result){
				if(result.errorCode=='NOERR'){
					$(".quote-badge").text(result.kindex.currentP);
				}
			}
		});
	}
	weaterInit();
	
	magnet();
});


