$(function(){
	var nowPage=1;
	var lastPage;
	var cateArray = new Array;
	var mno = $("#mymno").val();
	function cateMakeList(nowPage){
		var pagePerRow = 8;
		var data = {nowPage:nowPage, pagePerRow: pagePerRow, cateArray:cateArray, mno : mno};
		var str = "";
		$.ajax({
			url: "/mem/mnoctsList",
			headers:{
				"Content-Type":"application/json",
				"X-HTTP-Method-Override":"POST"
			},
			type: "POST",
			data: JSON.stringify(data),
			dataType: "json",
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
					if ($("#himno").val() == $("#mymno").val()) {
						str += "<form method='get'>";
						str += "<input type='hidden' name='mno' value='"+$("#session").data("mno")+"'>";
						str += "<input type='hidden' name='ctscateno' value='"+this.ctscateno+"'>";
						str += "<input type='hidden' name='ctsno' value='"+this.ctsno+"'>";
						str += "<input type='button' class='btn btn-danger update-btn' value='수정'>";
						str += "<input type='button' class='btn btn-primary delete-btn' value='삭제'>";
						str += "</form>";
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
	$(document).on("click",".update-btn",function(e){
		e.preventDefault();;
		$(this).parent("form").attr("action","/map/ctsUpdate");
		$(this).parent("form").submit();
	});
	$(document).on("click",".delete-btn",function(e){
		e.preventDefault();
		var data = {ctscateno:$(this).prev().prev().prev().val(),ctsno:$(this).prev().prev().val(),mno:$("#session").data("mno")};
		$.ajax({
			url: "/map/ctsDelete",
			data: JSON.stringify(data),
			headers: {
				"Content-Type":"application/json",
				"X-HTTP-Method-Override":"POST"
			},
			type: "post",
			dataType: "text",
			success: function(result){
				alert(result);
				$("#cateList").html(cateMakeList(nowPage));
			}
		});
	});
	$(document).on("click",".embed-responsive", function(){
		var data = {ctscateno:$(this).data("ctscateno"),ctsno:$(this).data("ctsno"),mno:$("#session").data("mno")};
		ctsDetailAjax(data);
	});
	$("#pageBtn-wrap span").on("click", function(){
		nowPage = nowPage + 1;
		$("#cateList").append(cateMakeList(nowPage));
	});
	$("#cateList").html(cateMakeList(nowPage));
});