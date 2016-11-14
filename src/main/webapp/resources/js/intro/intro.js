$(function(){
	var videoData = new Array;
	var pilotData = new Array;
	var videoStartNum;
	var pilotStartNum;
	var videoEndnum;
	var pilotEndNum;
	var videoNowPage;
	var pilotNowPage
	var videoPageRow = 8;
	var pilotPageRow = 12;
	function hotclipVideo(){
		$.ajax({
			url: "/map/hotclipVideo",
			type: "POST",
			dataType: "json",
			success: function(result){
				videoData = [];
				$(result).each(function(){
					videoData.push({ctscateno:this.ctscateno,ctsno:this.ctsno,filelk:this.filelk,ttl:this.ttl,ctt:this.ctt});
				});
				videoNowPage=1;
				videoStartNum=0;
				videoEndNum=0;
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
	function videoPage(){
		var str = "";
		videoStartNum=(videoNowPage-1)*videoPageRow;
		if(videoNowPage!=Math.ceil(videoData.length/videoPageRow)){
			videoEndNum=(videoPageRow*videoNowPage)-1;
		}else if(videoNowPage==Math.ceil(videoData.length/videoPageRow)){
			if(videoData.length%videoPageRow != 0){
				videoEndNum=videoStartNum+videoData.length%videoPageRow-1;
			}else{
				videoEndNum=videoNowPage*videoPageRow-videoData.length%videoPageRow-1;
			}
		}
		if(videoNowPage>1){
			str+="<div><input type='button' class='prevPage video' value='prev'></div>";
		}
		for(var i=videoStartNum;i<=videoEndNum;i++){
			str += "<div class='col-xs-12 col-sm-6 col-md-3'>";
			str += "<div class='video-btn embed-responsive embed-responsive-4by3' data-ctscateno='"+videoData[i].ctscateno+"' data-ctsno='"+videoData[i].ctsno+"'>";
			str += "<img src='http://img.youtube.com/vi/"+videoData[i].filelk+"/0.jpg'>";
			str += "<span class='fa fa-2x fa-fw fa-play-circle'></span>";
			str += "</div>";
			str += "<h3>"+videoData[i].ttl+"</h3>";
			if(videoData[i].ctt.length > 50){
				str += "<p>"+videoData[i].ctt.substring(0,50)+"...</p>";
			}else{
				str += "<p>"+videoData[i].ctt+"</p>";
			}
			str += "</div>";
		}
		if(videoNowPage<Math.ceil(videoData.length/videoPageRow)){
			str += "<div><input type='button' class='nextPage video' value='next'></div>";
		}
		$("#hotclipVideo").empty();
		$("#hotclipVideo").html(str);
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