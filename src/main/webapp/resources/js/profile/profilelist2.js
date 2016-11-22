$(function(){
	var nowPage=1;
	var lastPage;
	var cateArray = new Array;
	function cateMakeList(nowPage){
		var pagePerRow = 9;
		var data = {nowPage:nowPage, pagePerRow: pagePerRow, cateArray:cateArray};
		var str = "";
		$.ajax({
			url: "/mem/ProfileList",
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
							str += "</div>";
					}
				});
			}
		});
		return str;
	}

	$("#pageBtn-wrap span").on("click", function(){
		nowPage = nowPage + 1;
		$("#ProfileList").append(cateMakeList(nowPage));
	});
	$("#ProfileList").html(cateMakeList(nowPage));
	
});