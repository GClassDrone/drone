<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../common/header.jsp" %> 
<script type="text/javascript" src="/resources/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<style>
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
			<form role="form" method="post">
				<input type="hidden" name="subjno" value="${board.subjno}" />
				<input type="hidden" name="bno" value="${board.bno}" />
				<input type="hidden" name="page" value="${isp.page}" />
				<input type="hidden" name="perPageNum" value="${isp.perPageNum}" />
				<input type="hidden" name="searchType" value="${isp.searchType}" />
				<input type="hidden" name="keyWord" value="${isp.keyWord}" />								
			</form>
			<div class="box-body">
				<div class="form-group">
					<label for="exampleInputEmail1">Title</label>
					<input type="text" name="title" class="form-control" value="${board.title}" readonly="readonly"/>
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Content</label>
					<textarea class="form-control" name="content" rows="3" readonly="readonly">${board.content}</textarea>
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">name</label>
					<input type="text" name="name" class="form-control" placeholder="이름" value="${board.name}" readonly="readonly"/>
				</div>
			</div>
			
			<ul class="mailbox-attachments clearfix uploadedList"></ul>
			
			<div class="box-footer">
			<c:if test="${login.id == board.name}">
			   <button type="submit" class="btn btn-warning" id="modifyBtn">Modify</button>
			   <button type="submit" class="btn btn-danger" id="removeBtn">REMOVE</button>
			</c:if>
			   <button type="submit" class="btn btn-primary" id="goListBtn">GO LIST </button>
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-12">
			<div class="box box-success">
				<div class="box-header">
					<h3 class="box-title">ADD New Reply</h3>
				</div>
				
				<c:if test="${not empty login}">
					<div class="box-body">
						<label for="newReplyWriter">Writer</label>
						<input class="form-control" type="text" placeholder="USER ID" id="newReplyWriter" value="${login.id}" readonly />
						<label for="newReplyText">ReplyText</label>
						<input class="form-control" type="text" placeholder="REPLY TEXT" id="newReplyText" />
					</div>
					<!-- /.box-body -->
					<div class="box-footer">
						<button type="submit" class="btn btn-primary" id="replyAddBtn">ADD REPLY</button>
					</div>
				</c:if>
				
				<c:if test="${empty login}">
					<div class="box-body">
						<div><a href="javascript:goLogin();">Login Please</a></div>
					</div>					
				</c:if>
			</div>
			
			<!-- The time line -->
			<ul class="timeline">
				  <!-- timeline time label -->
				<li class="time-label" id="repliesDiv">  
					<span class="bg-green">  답글리스트  
						<small id='replycntSmall'>[${board.replycnt}]</small>
					</span>	
				</li>
			</ul>
			   
			<div class="text-center">
				<ul id="pagination" class="pagination pagination-sm no-margin ">
		
				</ul>
			</div>			
		</div>
	</div>
	
	<!-- Modal -->
	<div id="modifyModal" class="modal modal-primary fade" role="dialog">
	  <div class="modal-dialog">
	    <!-- Modal content-->
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        <h4 class="modal-title"></h4>
	      </div>
	      <div class="modal-body" data-rno>
	        <p><input type="text" id="replytext" class="form-control"></p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-info" id="replyModBtn">Modify</button>
	        <button type="button" class="btn btn-danger" id="replyDelBtn">DELETE</button>
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div>  
</section>
</div>

<script id="template" type="text/x-handlebars-template">
{{#each.}}
<li class="replyLi" data-rno={{rno}}>
<i class="fa fa-comments bg-blue"></i>
<div class="timeline-item">
	<span class="time">
		<i class="fa fa-clock-o"></i>{{prettifyDate regdt}}
	</span>
	<h3 class="timeline-header"><strong>{{rno}}</strong>-{{replyer}}</h3>
	<div class="timeline-body">{{replytext}}</div>
	<div class="timeline-footer">
		{{#eqReplyer replyer}}
		<a class="btn btn-primary btn-xs" data-toggle="modal" data-target="#modifyModal">수정</a>
		{{/eqReplyer}}
	</div>
</div>
</li>
{{/each}}
</script>

<script id="templateAttach" type="text/x-handlebars-template">
<li data-src="{{fullName}}">
	<span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"/></span>
	<div class="mailbox-attachment-info">
		<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
	</div>
</li>
</script>

<script type="text/javascript">
$(document).ready(function(){
	var formObj = $("form[role='form']");
	//console.log(formObj);
	
	$("#modifyBtn").on("click", function(){
		formObj.attr("action", "/board/modify");
		formObj.attr("method", "get");
		formObj.submit();
	});
	
	$("#removeBtn").on("click", function(){
		var replyCnt =  $("#replycntSmall").html().replace('[','').replace(']','');

		if(replyCnt > 0 ){
			alert("댓글이 달린 게시물을 삭제할 수 없습니다.");
			return;
		}	
		
		var arr = [];
		$(".uploadedList li").each(function(index){
			 arr.push($(this).attr("data-src"));
		});
		
		if(arr.length > 0){
			$.post("/deleteAllFiles",{files:arr}, function(){
			
			});
		}
		
		formObj.attr("action", "/board/remove");
		formObj.submit();
	});		
	
	$("#goListBtn").on("click", function(){
		formObj.attr("method", "get");
		formObj.attr("action", "/board/list");
		formObj.submit();
	});
	
});
</script>

<script>
	Handlebars.registerHelper("eqReplyer", function(replyer, block){
		var accum = '';
		if(replyer == '${login.id}'){
			accum += block.fn();
		}
		return accum; 
	});
	
	Handlebars.registerHelper("prettifyDate", function(timeValue){
		var dateObj = new Date(timeValue);
		var year = dateObj.getFullYear();
		var month = dateObj.getMonth() + 1;
		var date = dateObj.getDate();
		return year+"/"+month+"/"+date;
	});
	
	var printData = function(replyArr, target, templateObject){
		var template = Handlebars.compile(templateObject.html());
		var html = template(replyArr);
		$(".replyLi").remove();
		target.after(html);
	}
	
	var num = ${board.num};
	var replyPage = 1;
	
	function getPage(pageInfo){
		$.getJSON(pageInfo, function(data){
			printData(data.list, $("#repliesDiv"), $("#template"));
			printPaging(data.pm, $(".pagination"));
			
			$("#modifyModal").modal("hide");
			$("#replycntSmall").html("["+data.pm.totalCount+"]");
		});
	}
	
	var printPaging = function(pageMaker, target){
		var str = "";
		
		if(pageMaker.prev){
			str += "<li><a href='"+(pageMaker.startPage-1)+"'> << </a></li>";
		}
		
		for(var i=pageMaker.startPage, len=pageMaker.endPage; i<= len; i++){
			var strClass=pageMaker.initPage.page == i? 'class=active':'';
			str += "<li "+strClass+"><a href='"+i+"'>"+i+"</a></li>";
		}
		
		if(pageMaker.next){
			str +="<li><a href='"+(pageMaker.endPage+1)+"'> >></a></li>";
		}
		
		target.html(str);
	}

	$("#repliesDiv").on("click", function(){
		if($(".timeline li").size() > 1){
			return;
		}
		
		getPage("/reply/"+num+"/1");
	});
	
	$(".pagination").on("click", "li a", function(event){
		event.preventDefault();
		replyPage = $(this).attr("href");
		getPage("/reply/"+num+"/"+replyPage);
	});
	
	
	$("#replyAddBtn").on("click",function(){
		 
		 var replyerObj = $("#newReplyWriter");
		 var replytextObj = $("#newReplyText");
		 var replyer = replyerObj.val();
		 var replytext = replytextObj.val();
		
		  
		  $.ajax({
				type:"post",
				url:"/reply/",
				headers: { 
				      "Content-Type": "application/json",
				      "X-HTTP-Method-Override": "POST" },
				dataType:"text",
				data: JSON.stringify({num:num, replyer:replyer, replytext:replytext}),
				success:function(result){
					console.log("result: " + result);
					if(result == "success"){
						alert("등록 되었습니다.");
						replyPage = 1;
						getPage("/reply/"+num+"/"+replyPage );
						replyerObj.val("");
						replytextObj.val("");
					}
			}});
	});


	$(".timeline").on("click", ".replyLi", function(event){
		var reply = $(this);
		alert("aa");
		$("#replytext").val(reply.find(".timeline-body").text());
		$(".modal-title").html(reply.attr("data-rno"));
		
	});
	
	

	$("#replyModBtn").on("click",function(){
		  
		  var rno = $(".modal-title").html();
		  var replytext = $("#replytext").val();
		  
		  $.ajax({
				type:"put",
				url:"/reply/"+rno,
				headers: { 
				      "Content-Type": "application/json",
				      "X-HTTP-Method-Override": "PUT" },
				data:JSON.stringify({replytext:replytext}), 
				dataType:"text", 
				success:function(result){
					console.log("result: " + result);
					if(result == "success"){
						alert("수정 되었습니다.");
						getPage("/reply/"+num+"/"+replyPage );
						$(".btn-default").click();
					}
			}});
	});

	$("#replyDelBtn").on("click",function(){
		  
		  var rno = $(".modal-title").html();
		  var replytext = $("#replytext").val();
		  
		  $.ajax({
				type:"delete",
				url:"/reply/"+rno,
				headers: { 
				      "Content-Type": "application/json",
				      "X-HTTP-Method-Override": "DELETE" },
				dataType:"text", 
				success:function(result){
					console.log("result: " + result);
					if(result == "success"){
						alert("삭제 되었습니다.");
						$(".btn-default").click();
						getPage("/reply/"+num+"/"+replyPage);
					}
			}});
	});	
	
	// upload 부분
	//var num = ${board.num};
	var template = Handlebars.compile($("#templateAttach").html());
	$.getJSON("/board/getAttach/"+num, function(list){
		$(list).each(function(){
			var fileInfo = getFileInfo(this);
			var html = template(fileInfo);
			$(".uploadedList").append(html);
		});
	});
	
	$(".uploadedList").on("click", ".mailbox-attachment-info a", function(event){
		var fileLink = $(this).attr("href");
		
		if(checkImageType(fileLink)){
			event.preventDefault();
			
			var imgTag = $("#popup_img");
			imgTag.attr("src", fileLink);
			
			console.log(imgTag.attr("src"));
			
			$(".popup").show("slow");
			imgTag.addClass("show");
		}
	});
	
	$("#popup_img").on("click", function(){
		$(".popup").hide("slow");
	});
</script>

<%@ include file="../common/footer.jsp" %>