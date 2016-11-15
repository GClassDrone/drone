/*$(function(){
	
	function infolist(){
		$.ajax({
			url: "/inform/list",
			type: "GET",
			dataType: "json",
			success: function(result){
				var str = "";
				$(result).each(function(i){
					if(i%4 == 0){
						str+="<div clasa ='row'>";
					}
					str += "<section class='col-xs-offset-3 col-xs-6 col-sm-offset-0 col-sm-6 col-md-3'>";
					str += "<div class='thumbnail'>";
					str += "<img alt='Bootstrap Thumbnail First' src="+this.upfile+"";
					str += "<div class='caption'>";
					str += "<h3>+"this.ttl+"</h3>";
					str += " <p>"+this.ctt+"</p>";
					str += "<p><a class='btn btn-primary' href='/infoDetail?ino="+this.ino+"'>Go</a></p>";
					if(i%4 == 3 || result.length){
						str += "</div>";
					}
				});
				
			}
		});
	}
	infolist();
});

//<div id ="infolist"></div>

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