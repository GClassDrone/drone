<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../common/header.jsp" %>  
<style>
.fileDrop{
	width: 80%;
	height: 100px;
	border: 1px dotted gray;
	background-color: lightslategrey;
	margin: auto;
}
.popup {position: absolute;}
.back {
	background-color: gray;
	opacity: 0.5;
	width: 100%;
	height: 300%;
	overflow: hidden;
	z-index: 1101;
}
.front{
	z-index: 1110;
	opacity: 1;
	border: 1px;
	margin: auto;
}
.show{
	position: relative;
	max-width: 1200px;
	max-height: 800px;
	overflow: auto;
}
</style>
 <div class='popup back' style="display:none;"></div>
 <div id="popup_front" class='popup front' style="display:none;">
  <img id="popup_img">
 </div>
	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<form id="registerForm" role="form" method="post">
					<div class="box-body">
						<div class="form-group">
							<label for="exampleInputEmail1">제목</label>
							<input type="text" name="ttl" class="form-control" placeholder="타이틀 입력" />
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Content</label>
							<textarea class="form-control" name="ctt" rows="3" placeholder="내용입력"></textarea>
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">아이디</label>
							<input type="text" name="mno" class="form-control"  vlaue="${login.id}"  readonly />
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">File Drop Here</label>
							<div class="fileDrop"></div>
						</div>
					</div>
					<div class="box-footer">
						<div>
							<hr>
						</div>
						
						<ul class="mailbox-attachments clearfix uploadedList">
						</ul>
						
						<button type="submit" class="btn btn-primary">전송</button>
					</div>	
				</form>
			</div>
		</div>
	</section>
</div>
<script  type="text/javascript" src="/resources/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<script id="template" type="text/x-handlebars-template">
<li>
	<span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment" /></span>
	<div class="mailbox-attachment-info">
		<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
		<a href="{{fullName}}" class="btn btn-default btn-xs pull-right delbtn"><i class="fa fa-fw fa-remove"></i></a>
	</div>
</li>
</script>

<script>
var template = Handlebars.compile($("#template").html());

$(".fileDrop").on("dragenter dragover", function(event){
	event.preventDefault();
});

$(".fileDrop").on("drop", function(event){
	event.preventDefault();
	
	var files = event.originalEvent.dataTransfer.files;
	var file = files[0];
	var formData = new FormData();
	
	formData.append("file", file);
	
	$.ajax({
		url: '/uploadAjax',
		data: formData,
		dataType: 'text',
		processData: false,
		contentType: false,
		type: 'POST',
		success: function(data){
			var fileInfo = getFileInfo(data);
			var html = template(fileInfo);
			$(".uploadedList").append(html);
		}
	});
});

$("#registerForm").submit(function(event){
	event.preventDefault();
	
	var that = $(this);
	
	var str ="";
	$(".uploadedList .delbtn").each(function(index){
		 str += "<input type='hidden' name='files["+index+"]' value='"+$(this).attr("href") +"'> ";
	});
	
	that.append(str);
	//alert(that.get(0));
	that.get(0).submit();
});


$(".uploadedList").on("click", ".delbtn", function(event){
	event.preventDefault();
	var that = $(this);
	var file = $(this).attr("href");
	
   	//파일 삭제
	$.ajax({
		   url:"/deleteFile",
		   type:"post",
		   data: {fileName:file},
		   dataType:"text",
		   success:function(result){
			   if(result == "deleted"){
				   that.closest("li").remove();
				   alert("파일삭제완료");
			   }
		   }
	   }); 

});

$(".uploadedList").on("click", ".mailbox-attachment-name", function(event){
	
	var fileLink = $(this).attr("href");
	
	if(checkImageType(fileLink)){
		
		event.preventDefault();
				
		var imgTag = $("#popup_img");
		imgTag.attr("src", fileLink);
		
		console.log(imgTag.attr("src"));
				
		$(".popup").show('slow');
		imgTag.addClass("show");		
	}	
});

$("#popup_img").on("click", function(){
	
	$(".popup").hide('slow');
	
});	
</script>


<%@ include file="../common/footer.jsp" %>

