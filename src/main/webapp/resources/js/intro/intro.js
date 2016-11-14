$(function(){
	var pilotData = new Array;
	var pilotStartNum;
	var pilotEndNum;
	var pilotNowPage
	var pilotPageRow = 9;
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
				pilotData = [];
				$(result).each(function(){
					pilotData.push({mno:this.mno,niknm:this.niknm,locnm:this.locnm,actnm:this.actnm,mdrnm:this.mdrnm});
				});
				pilotNowPage=1;
				pilotStartNum=0;
				pilotEndNum=0;
				pilotPage();
			}
		});
	}
	function pilotPage(){
		var str = "";
		pilotStartNum=(pilotNowPage-1)*pilotPageRow;
		if(pilotNowPage!=Math.ceil(pilotData.length/pilotPageRow)){
			pilotEndNum=(pilotPageRow*pilotNowPage)-1;
		}else if(pilotNowPage==Math.ceil(pilotData.length/pilotPageRow)){
			if(pilotData.length%pilotPageRow != 0){
				pilotEndNum=pilotStartNum+pilotData.length%pilotPageRow-1;
			}else{
				pilotEndNum=pilotNowPage*pilotPageRow-pilotData.length%pilotPageRow-1;
			}
		}
		if(pilotNowPage>1){
			str+="<div><input type='button' class='prevPage pilot' value='prev'></div>";
		}
		for(var i=pilotStartNum;i<=pilotEndNum;i++){
			if(i%3 == 0){
				str+="<div class='row'>";
			}
			str += "<div class='col-md-1'>";
			str += "<a href='/mem/ProfileDetail?mno="+pilotData[i].mno+"'>";
			str += "<img src='../resources/images/castleMo2.png' class='center-block img-circle'>";
			str += "<h6 class='text-center'>"+pilotData[i].niknm+"<p>(<span class='glyphicon glyphicon-star'></span>)</p></h6>";
			str += "</a>";
			str += "</div>";
			str += "<div class='col-md-3'>";
			str += "<div class='panel panel-success'>";
			str += "<ul>";
			str += "<p class='text-left text-info'>";
			str += "<li>지역 : "+pilotData[i].locnm+"</li>";
			str += "<li>경력 : "+pilotData[i].actnm+"</li>";
			str += "<li>보유장비 : "+pilotData[i].mdrnm+"</li>";
			str += "</p>";
			str += "</ul>";
			str += "</div>";
			str += "</div>";
			if(i%3 == 2 || i == pilotPageRow){
				str+="</div>";
			}
		}
		if(pilotNowPage<Math.ceil(pilotData.length/pilotPageRow)){
			str += "<div><input type='button' class='nextPage pilot' value='next'></div>";
		}
		$("#hotclipPilot").empty();
		$("#hotclipPilot").html(str);
	}
	$(document).on("click",".prevPage",function(){
		if($(this).hasClass("video")){
			videoNowPage=videoNowPage-1;
			videoPage();
		}else{
			pilotNowPage=pilotNowPage-1;
			pilotPage();
		}
	});
	$(document).on("click",".nextPage",function(){
		if($(this).hasClass("video")){
			videoNowPage=videoNowPage+1;
			videoPage();
		}else{
			pilotNowPage=pilotNowPage+1;
			pilotPage();
		}
	});
	hotclipVideo();
	hotclipPilot();
});