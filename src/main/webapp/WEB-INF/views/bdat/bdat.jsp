<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#modDiv {
	width: 300px;
	height: 100px;
	background-color: white;
	position: absolute;
	top: 50%;
	left: 50%;
	margin-top: -50%;
	margin-left: -150px;
	padding: 10px;
	z-index: 1000;
}
</style>

<script type="text/javascript">

/* 리스트 불러오는 부분 */
$(function(){
	getAllList();
function getAllList(){
		var subjno = $("#subjno").val();
		var bno = $("#bno").val();
		
	$.getJSON('/bdat/all/'+subjno+"/"+bno, function(data){
				
		var str ="";
		
		$(data).each(function(){
			str += "<li data-bdatno='"+this.bdatno+"' class='replyLi'>"
					+ this.niknm+":"+ this.ctt
					+ "<button>설정</button></li>";
		});
		$("#bdat").html(str);
	});

}
		/* 리플 등록 버튼 */

$("#replyAddBtn").on("click", function(){
	var niknm = $("niknm").val();
	var ctt = $("ctt").val();
	
	var subjno = $("#subjno").val();
	var bno = $("#bno").val();
	
	var url = '/bdat/'+subjno+"/"+bno;
	$.ajax({
		type : 'post',
		url : url,
		headers : {
			"Content-Type" : "application/json",
			"X-HTTp-Method-Override" :"POST"
		},
		dataType : 'text',
		data : JSON.stringify({
			subjno : subjno,
			bno : bno,
			mno : $("#mno").val(),
			niknm : $("#niknm").val(),
			ctt : $("#ctt").val()
		}),
		success: function(result) {
			if(result =='SUCCESS') {
				alert("등록되었습니다.")
				getAllList();
			}
		}
	});
});

		/* 뭔지 모름 */

$("#boarddat").on("click", ".replyLi button", function(){
	var bdat = $(this).parent();
	
	var bdatno = bdat.attr("data-bdatno");
	var ctt = bdat.text();

	$(".modal-title").html(bdat);
	$("#bdattext").val(bdattext);
	$("#modDiv").show("slow");
});

 /* 리플 지우는 버튼 */

$("#replyDelBtn").on("click", function(){
	var bdatno=$(".modal-title").html();
	var bdattext = $("#bdattext").val();
	
	$.ajax({
		type :'delete',
		url : '/'+$("#bno").val()+'/'+$("#subjno").val(),
		headers : {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : "DELETE"
		},
		dataType : 'text',
		success : function(result) {
			console.log("result :" + result);
			if(result == 'SUCCESS') {
				alert("삭제 되었습니다.");
				$("#modDiv").hid("slow");
				getAllList();
			}
		}
	});
});

 /* 수정버튼 고치는 쪽 */

$("#replyModBtn").on("click", function(){
	var bdatno=$(".modal-title").html();
	var bdattext = $("#bdattext").val();
	
	$.ajax({
		type :'put',
		url : '/bdat' + bdatno ,
		headers : {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : "PUT"
		},
		dataType : 'text',
		success : function(result) {
			console.log("result :" + result);
			if(result == 'SUCCESS') {
				alert("수정 되었습니다.");
				$("#modDiv").hid("slow");
				getAllList();
			}
		}
	});
});
});
</script>

		<div id='bdat'>
		</div>
<div class="row">
    <form role="form" method="post">
    	<input type='hidden' id='bno' name='bno' value="${bno}">
		<input type='hidden' id='subjno' name='subjno' value="${subjno}">
	</form>
	<div class="form-group">
		<div class="col-sm-1 col-xs-12 center">
			<i class="material-icons text-right" style="padding-top: 15px; padding-left: 20px; font-size: 36px; color: #2e7d32">tag_faces</i>
			<h5 class="media-heading"><span class="niknm" id="niknm">${niknm}</span></h5>
		</div>
		<div class="col-sm-6 col-xs-12 center">
	           <label for="inputComments"><span style="color:#4e342e">댓글을 써주세요</span></label>
	        <textarea rows="6" class="form-control" id="ctt" name="ctt" placeholder="Enter reply"></textarea>
		        <button type="submit" id="replyAddBtn" class="btn btn-block btn-warnings">댓글올리기</button>
		</div>
	</div>
</div>
	<!-- 설정페이지 모달창 -->
	
	<div id='modDiv'>
		<div class='modal-title'></div>
		<div>
			<button type="button" id="replyModBtn">수정</button>
			<button type="button" id="replyDelBtn">삭제</button>
			<button type="button" id="closeBtn">닫기</button>
		</div>	
	</div>
