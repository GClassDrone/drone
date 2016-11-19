$(function(){
	var nowPage=1;
	var lastPage;
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
				alert("aaa");
				$(result).each(function(i){
					if(i%4 == 0){
						str+="<div class ='row'>";
					}
					str += "<section class='col-xs-offset-3 col-xs-6 col-sm-offset-0 col-sm-6 col-md-3'>";
					str += "<div class='thumbnail'>";
					str += "<img alt='Bootstrap Thumbnail First' src="+this.upfile+">";
					str += "<div class='caption'>";
					str += "<h3>"+this.ttl+"</h3>";
					if(this.ctt.length > 20){
						str += "<p>"+this.ctt.substr(0,35)+".....</p>";
					}else{
						str += " <p>"+this.ctt+"</p>";
					}
					str += "<p><a class='btn btn-primary' href='/infoDetail'>Go</a><p>";
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
		$("#cateList").append(cateMakeList(nowPage));
	});
	
	$("#infolist").html(infolist(nowPage));
});

//<div id ="infolist"></div>
/*
   <section class="col-xs-offset-3 col-xs-6 col-sm-offset-0 col-sm-6 col-md-3">
<div class="thumbnail">
    <img alt="Bootstrap Thumbnail First" src="http://lorempixel.com/output/people-q-c-600-200-1.jpg">
    <div class="caption">
        <h3>Thumbnail label</h3>
        <p>
            Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
        </p>
        <p>
            <a class="btn btn-primary" href="/infoDetail">Go</a>
        </p>
    </div>
</div>
</section> */