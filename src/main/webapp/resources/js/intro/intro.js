$(function(){
	var pilotData = new Array;
	function hotclipVideo(){
		$.ajax({
			url: "/map/hotclipVideo",
			type: "POST",
			dataType: "json",
			success: function(result){
				var str = "";
				$(result).each(function(){
					str += "<div class='slide'><img src='http://img.youtube.com/vi/"+this.filelk+"/0.jpg'></div>";
				});
				$("#hotVideo").empty();
				$("#hotVideo").html(str);
				sliderMake();
			}
		});
	}
	function sliderMake(){
		$('.slider').bxSlider({
	        slideWidth: 300,
	        minSlides: 4,
	        maxSlides: 4,
	        moveSlide: 4,
	        slideMargin: 10
	    });
	}
	function hotclipPilot(){
		$.ajax({
			url: "/map/hotclipPilot",
			type: "POST",
			dataType: "json",
			success: function(result){
				var str = "";
				$(result).each(function(i){
					if(i%3 == 0){
						str+="<div class='row'>";
					}
					str += "<div class='col-md-1'>";
					str += "<a href='/mem/ProfileDetail?mno="+this.mno+"'>";
					str += "<img src='../resources/images/castleMo2.png' class='center-block img-circle'>";
					str += "<h6 class='text-center'>"+this.niknm+"<p>(<span class='glyphicon glyphicon-star'></span>)</p></h6>";
					str += "</a>";
					str += "</div>";
					str += "<div class='col-md-3'>";
					str += "<div class='panel panel-success'>";
					str += "<ul>";
					str += "<p class='text-left text-info'>";
					str += "<li>지역 : "+this.locnm+"</li>";
					str += "<li>경력 : "+this.actnm+"</li>";
					str += "<li>보유장비 : "+this.mdrnm+"</li>";
					str += "</p>";
					str += "</ul>";
					str += "</div>";
					str += "</div>";
					if(i%3 == 2 || i == result.length){
						str+="</div>";
					}
				});
				$("#hotclipPilot").empty();
				$("#hotclipPilot").html(str);
			}
		});
	}
	hotclipVideo();
	hotclipPilot();
});