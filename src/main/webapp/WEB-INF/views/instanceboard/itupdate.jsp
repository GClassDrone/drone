<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
.fileDrop {
  width: 80%;
  height: 100px;
  border: 1px dotted gray;
  background-color: lightslategrey;
  margin: auto;
  
}
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
<jsp:include page="../common/include.jsp"/>
<jsp:include page="../common/header.jsp"/>
<div class="popup back" style="display:none;"></div>
<div id="popup_front" class="popup front" style="display:none;"> 
	<img id="popup_img" />
</div>	 	
<section class="content">
<script type="text/javascript">
/* $(document).ready(function(){
	var formObj = $("form[role='form']");
	console.log(formObj);
	
	$(".btn-warning").on("click", function(){
		self.location="/board/list?page=${isp.page}&perPageNum=${isp.perPageNum}&searchType=${isp.searchType}&keyWord=${isp.keyWord}";
	});
	
	$(".btn-primary").on("click", function(){
		formObj.submit();
	});
}); */
</script>
	<div class="row">
		<div class="col-md-12">
			<form role="form" method="post" action="modify">
				<input type='hidden' name='bno' value="${BoardDto.bno}">
				<input type='hidden' name='subjno' value="${BoardDto.subjno}">
				<div class="box-body">
					<div class="form-group">
						<label for="exampleInputttl">글제목</label>
						<input type="text" id="num" name="num" class="form-control" placeholder="${BoardDto.ttl}"/>
					</div>
					<div class="form-group">
						<label for="exampleInputctt">글내용</label>
						<input type="text" name="title" class="form-control" placeholder="${BoardDto.title}" />
					</div>
					
					<div class="form-group">
						<label for="exampleInputEmail1">글삭제 여부</label>
						<input type="text" name="name" class="form-control"  placeholder="${BoardDto.delyn}" />
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">파일업로드</label>
						<div class="fileDrop"></div>
					</div>						
				</div>
			
			<div class="box-footer">
				<div>
					<hr>
				</div>
			
				<ul class="mailbox-attachments clearfix uploadedList">
				</ul>			
				<button type="submit" class="btn btn-primary">저장</button>
				<button type="submit" class="btn btn-warning">취소</button>
			</div>	
			</form>
		</div>
	</div>
</section>
<script type="text/javascript" src="/resources/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<script id="template" type="text/x-handlebars-template">
<li>
  <span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
  <div class="mailbox-attachment-info">
	<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
	<a href="{{fullName}}" 
     class="btn btn-default btn-xs pull-right delbtn"><i class="fa fa-fw fa-remove"></i></a>
	</span>
  </div>
</li>                
</script>    

<script>
$(document).ready(function(){
		
	var formObj = $("form[role='form']");

	formObj.submit(function(event){
		event.preventDefault();
		var that = $(this);
		var str ="";
		$(".uploadedList .delbtn").each(function(index){
			 str += "<input type='hidden' name='files["+index+"]' value='"+$(this).attr("href") +"'> ";
		});
		
		that.append(str);
		console.log(str);
		that.get(0).submit();
	});
	
	
	$(".btn-warning").on("click", function(){
	  //self.location = "/board/list?page=${isp.page}&perPageNum=${isp.perPageNum}&searchType=${isp.searchType}&keyWord=${isp.keyWord}";
		formObj.attr("method", "get");
		formObj.attr("action", "/instanceboard/itlist");
		formObj.submit();	  
	});
	
});




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
		  dataType:'text',
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

$(".uploadedList").on("click", ".mailbox-attachment-name", function(event){
	event.preventDefault();
	var fileLink = $(this).attr("href");

	if(checkImageType(fileLink)){
		
		var imgTag = $("#popup_img");
		imgTag.attr("src", fileLink);
		console.log(imgTag.attr("src"));
		$(".popup").show('slow');
		imgTag.addClass("show");		
	}	
});

$(".uploadedList").on("click", ".delbtn", function(event){
	event.preventDefault();
	var that = $(this);
	var file = $(this).attr("href");
	
	$.ajax({
		type: "post",
		url: "/board/delOneAttach",
		headers: {
				 "Content-Type":"application/json",
				 "X-HTTP-Method-Override":"POST"},
		dataType: "text",
		data: JSON.stringify({fullName:file, num:$("#num").val()}),
		success: function(result){
		   if(result == "deleted"){
			   alert("DB삭제완료");
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
		   }			
		}
	});

});


var bno = ${boardDto.num};
var template = Handlebars.compile($("#template").html());

$.getJSON("/board/getAttach/"+bno,function(list){
	$(list).each(function(){
		var fileInfo = getFileInfo(this);
		var html = template(fileInfo);
		 $(".uploadedList").append(html);
		
	});
});


$("#popup_img").on("click", function(){
	$(".popup").hide('slow');
});	
</script>

<%@ include file="../common/footer.jsp" %>