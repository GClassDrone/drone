$(function() {
/**********************************************************************************************/
/******************************************* 파일럿 부분 ******************************************/
/**********************************************************************************************/
	var nowPage;
	var startNum;
	var endNum;
	var pilotPageRow = 6;

/* 파일럿 리스트 페이지 */
	function pilotPage(){
		var str = "";
		startNum=(nowPage-1)*pilotPageRow;
		if(nowPage!=Math.ceil(data.length/pilotPageRow)){
			endNum=(pilotPageRow*nowPage)-1;
		}else if(nowPage==Math.ceil(data.length/pilotPageRow)){
			if(data.length%pilotPageRow != 0){
				endNum=startNum+data.length%pilotPageRow-1;
			}else{
				endNum=nowPage*pilotPageRow-data.length%pilotPageRow-1;
			}
		}
		str += "<div class='container'>";
		if(nowPage>1){
			str+="<div><input type='button' class='prevPage' value='prev'></div>";
		}
		for(var i=startNum;i<=endNum;i++){
			if(i%3 == 0){
				str+="<div class='row'>";
			}
			str += "<div class='col-md-1'>";
			str += "<a href='/mem/ProfileDetail?mno="+data[i].mno+"'>";
			str += "<img src='../resources/images/castleMo2.png' style='width:80px' class='center-block img-circle'>";
			str += "<h6 class='text-center' style='padding-left:12px'>"+data[i].niknm+"<p>(<span class='glyphicon glyphicon-star'></span>)</p></h6>";
			str += "</a>";
			str += "</div>";
			str += "<div class='col-md-3'>";
			str += "<div class='panel panel-success'>";
			str += "<ul>";
			str += "<p class='text-left text-info'>";
			str += "<li>지역 : "+data[i].locnm+"</li>";
			str += "<li>경력 : "+data[i].actnm+"</li>";
			str += "<li>보유장비 : "+data[i].mdrnm+"</li>";
			str += "</p>";
			str += "</ul>";
			str += "</div>";
			str += "</div>";
			if(i%3 == 2 || i == data.length){
				str+="</div>";
			}
		}
		if(nowPage<Math.ceil(data.length/pilotPageRow)){
			str += "<div><input type='button' class='nextPage' value='next'></div>";
		}
		str += "</div>";
		$("#list-wrap").empty();
		$("#list-wrap").css("position","relative");
		$("#list-wrap").css("height","350px");
		$("#list-wrap").html(str);
	}
	
// 이전 다음 버튼
	$(document).on("click",".prevPage",function(){
		nowPage=nowPage-1;
		pilotPage();
	});
	$(document).on("click",".nextPage",function(){
		nowPage=nowPage+1;
		pilotPage();
	});
	
	
	function pilotList(){
		locations = [];
		
		$.ajax({
			url: "/map/pilotList",
			type: "POST",
			headers: {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "POST"
			},
			dataType: "json",
			async: false,
			success: function(result){
				$(result).each(function(){
					locations.push({lat:this.lat,lng:this.lng});
					mnos.push(this.mno);
					niknms.push(this.niknm);
					locnms.push(this.locnm);
					actnms.push(this.actnm);
					mdrnms.push(this.mdrnm);
				});
			}
		});
		return locations.map(function(location, i) {
			return new google.maps.Marker({
				position : location,
				mno: mnos[i],
				niknm : niknms[i],
				locnm : locnms[i],
				actnm : actnms[i],
				mdrnm : mdrnms[i]
			});
		});
	}
});