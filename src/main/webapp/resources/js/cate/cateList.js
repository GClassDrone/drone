$(function(){
	var nowPage=1;
	var lastPage;
	var cateArray = new Array;
	var h=$('html').height();
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
					str += "<div data-ctscateno='"+this.ctscateno+"' data-ctsno='"+this.ctsno+"' class='embed-responsive embed-responsive-4by3'>";
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
	$(".btn-group").on("click", function(){
		var checkId = $(this).prev().attr("id");
		if(!($("#"+checkId).prop("checked"))){
			if(checkId==="city"){
				cateArray.push("1");
			}else if(checkId==="nature"){
				cateArray.push("2");
			}else if(checkId==="facility"){
				cateArray.push("3");
			}else if(checkId==="sport"){
				cateArray.push("4");
			}else if(checkId==="race"){
				cateArray.push("5");
			}else if(checkId==="leisure"){
				cateArray.push("6");
			}else if(checkId==="public"){
				cateArray.push("7");
			}
		}else{
			if(checkId==="city"){
				for(var i=0;i<cateArray.length;i++){
					if(cateArray[i]=="1"){
						cateArray.splice(i,1);
					}
				}
				$(this).removeClass("btnColor");
			}else if(checkId==="nature"){
				for(var i=0;i<cateArray.length;i++){
					if(cateArray[i]=="2"){
						cateArray.splice(i,1);
					}
				}
				$(this).removeClass("btnColor");
			}else if(checkId==="facility"){
				for(var i=0;i<cateArray.length;i++){
					if(cateArray[i]=="3"){
						cateArray.splice(i,1);
					}
				}
				$(this).removeClass("btnColor");
			}else if(checkId==="sport"){
				for(var i=0;i<cateArray.length;i++){
					if(cateArray[i]=="4"){
						cateArray.splice(i,1);
					}
				}
				$(this).removeClass("btnColor");
			}else if(checkId==="race"){
				for(var i=0;i<cateArray.length;i++){
					if(cateArray[i]=="5"){
						cateArray.splice(i,1);
					}
				}
				$(this).removeClass("btnColor");
			}else if(checkId==="leisure"){
				for(var i=0;i<cateArray.length;i++){
					if(cateArray[i]=="6"){
						cateArray.splice(i,1);
					}
				}
				$(this).removeClass("btnColor");
			}else if(checkId==="public"){
				for(var i=0;i<cateArray.length;i++){
					if(cateArray[i]=="7"){
						cateArray.splice(i,1);
					}
				}
			}
		}
		$("#cateList").empty();
		$("#cateList").html(cateMakeList(1));
	});
	$(document).on("click",".embed-responsive", function(){
		var data = {ctscateno:$(this).data("ctscateno"),ctsno:$(this).data("ctsno"),mno:$("#session").data("mno")};
		ctsDetailAjax(data);
	});
	$("#pageBtn-wrap span").on("click", function(){
		nowPage = nowPage + 1;
		$("#cateList").append(cateMakeList(nowPage));
		h+= 800;
		$('html, body').animate({scrollTop: h}, 1000);
	});
	if($("#cateno").val()==""){
		$("#cateList").html(cateMakeList(nowPage));
	}else{
		if($("#cateno").val()==1){
			$(".btn-group").eq(0).click();
			$(".btn-group").eq(0).prev().prop("checked","checked");
		}else if($("#cateno").val()==2){
			$(".btn-group").eq(1).click();
			$(".btn-group").eq(1).prev().prop("checked","checked");
		}else if($("#cateno").val()==3){
			$(".btn-group").eq(2).click();
			$(".btn-group").eq(2).prev().prop("checked","checked");
		}else if($("#cateno").val()==4){
			$(".btn-group").eq(3).click();
			$(".btn-group").eq(3).prev().prop("checked","checked");
		}else if($("#cateno").val()==5){
			$(".btn-group").eq(4).click();
			$(".btn-group").eq(4).prev().prop("checked","checked");
		}else if($("#cateno").val()==6){
			$(".btn-group").eq(5).click();
			$(".btn-group").eq(5).prev().prop("checked","checked");
		}else if($("#cateno").val()==7){
			$(".btn-group").eq(6).click();
			$(".btn-group").eq(6).prev().prop("checked","checked");
		}
	}
	
	$("#navbar-ex-collapse > ul > li").eq(1).addClass('active');
	$("#navbar-ex-collapse > ul > li").eq(2).addClass('active');

});