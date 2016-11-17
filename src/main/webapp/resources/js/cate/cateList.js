$(function(){
	var nowPage=1;
	var lastPage;
	var cateArray = new Array;
	function cateMakeList(nowPage){
		var pagePerRow = 8;
		var data = {nowPage:nowPage, pagePerRow: pagePerRow, cateArray:cateArray};
		var str = "";
		$.ajax({
			url: "/cate/cateList",
			headers:{
				"Content-Type":"application/json",
				"X-HTTP-Method-Override":"POST"
			},
			type: "POST",
			data: JSON.stringify(data),
			datatype: "json",
			async: false,
			success: function(result){
				$(result).each(function(i){
					var image = "http://img.youtube.com/vi/"+this.filelk+"/0.jpg"
//					$.ajax({
//						dataType: "json",
//						url: "https://www.googleapis.com/youtube/v3/videos?key=AIzaSyA19l1lXb7Knj6sgwTXGwnKSqfakx3laYE&part=snippet&id="+this.filelk,
//						async: false,
//						success: function(result){
//							if(result.items.length === 0){
//								image = "/resources/images/aerial.jpg"
//							}
//						}
//					});
					if(i%4 == 0){
						str += "<div class='section'>";
					}
					str += "<div class='col-xs-12 col-sm-6 col-md-3'>";
					str += "<div class='embed-responsive embed-responsive-4by3'>";
					str += "<img src='"+image+"'>";
					str += "<span class='fa fa-2x fa-fw fa-play-circle'></span>";
					str += "</div>";
					str += "<h3>"+this.ttl+"</h3>";
					if(this.ctt.length > 20){
						str += "<p>"+this.ctt.substr(0,35)+"....</p>";
					}else{
						str += "<p>"+this.ctt+"</p>";
					}
					str += "</div>";
					if(i%4 == 3 || i == result.length){
						str += "</div>";
					}
				});
			}
		});
		return str;
	}
	$(".cateBtn").on("click", function(){
		var val = $(this).val();
		if(!($(this).hasClass("btnColor"))){
			if(val=="도시"){
				cateArray.push("1");
				$(this).addClass("btnColor");
			}else if(val=="자연"){
				cateArray.push("2");
				$(this).addClass("btnColor");
			}else if(val=="시설"){
				cateArray.push("3");
				$(this).addClass("btnColor");
			}else if(val=="스포츠"){
				cateArray.push("4");
				$(this).addClass("btnColor");
			}else if(val=="레이싱"){
				cateArray.push("5");
				$(this).addClass("btnColor");
			}else if(val=="레저"){
				cateArray.push("6");
				$(this).addClass("btnColor");
			}else if(val=="공공"){
				cateArray.push("7");
				$(this).addClass("btnColor");
			}
		}else{
			if(val=="도시"){
				for(var i=0;i<cateArray.length;i++){
					if(cateArray[i]=="1"){
						cateArray.splice(i,1);
					}
				}
				$(this).removeClass("btnColor");
			}else if(val=="자연"){
				for(var i=0;i<cateArray.length;i++){
					if(cateArray[i]=="2"){
						cateArray.splice(i,1);
					}
				}
				$(this).removeClass("btnColor");
			}else if(val=="시설"){
				for(var i=0;i<cateArray.length;i++){
					if(cateArray[i]=="3"){
						cateArray.splice(i,1);
					}
				}
				$(this).removeClass("btnColor");
			}else if(val=="스포츠"){
				for(var i=0;i<cateArray.length;i++){
					if(cateArray[i]=="4"){
						cateArray.splice(i,1);
					}
				}
				$(this).removeClass("btnColor");
			}else if(val=="레이싱"){
				for(var i=0;i<cateArray.length;i++){
					if(cateArray[i]=="5"){
						cateArray.splice(i,1);
					}
				}
				$(this).removeClass("btnColor");
			}else if(val=="레저"){
				for(var i=0;i<cateArray.length;i++){
					if(cateArray[i]=="6"){
						cateArray.splice(i,1);
					}
				}
				$(this).removeClass("btnColor");
			}else if(val=="공공"){
				for(var i=0;i<cateArray.length;i++){
					if(cateArray[i]=="7"){
						cateArray.splice(i,1);
					}
				}
				$(this).removeClass("btnColor");
			}
		}
		$("#cateList").empty();
		$("#cateList").html(cateMakeList(nowPage));
	});
	$(".embed-responsive").on("click", function(){
		
	});
	$("#pageBtn-wrap span").on("click", function(){
		nowPage = nowPage + 1;
		$("#cateList").append(cateMakeList(nowPage));
	});
	$("#cateList").html(cateMakeList(nowPage));
});