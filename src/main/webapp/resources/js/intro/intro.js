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
					str += "<div data-ctsno='"+this.ctsno+"' data-ctscateno='"+this.ctscateno+"' class='slide'><img src='http://img.youtube.com/vi/"+this.filelk+"/0.jpg'></div>";
				});
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
	$(document).on("click","div[class='slide']",function(){
		var data = {ctscateno:$(this).data("ctscateno"),ctsno:$(this).data("ctsno"),mno:$("#session").data("mno")};
		ctsDetailAjax(data);
	});
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
					str += "<img src='../resources/images/castleMo2.png' style='width:80px' class='center-block img-circle'>";
					str += "<h6 class='text-center' style='padding-left:12px'>"+this.niknm+"<p>(<span class='glyphicon glyphicon-star'></span>)</p></h6>";
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