<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

function getAllList(){
	
	$.getJSON("/bdat/all/"+bno, function(data){
		
		var str ="";
		console.log(data.length);
		
		$(data).each(function(){
			str += "<li data-bdatno='"+this.bdatno+"' class='replyLi'>"
					+ this.bdatno+":"+ this.ctt
					+ "<button>설정</button></li>";
		});
		$("#bdat").html(str);
	});

}

$("#replyAddBtn").on("click", function(){
	var mno = $("newReplyWriter").val();
	var ctt = $("newReplyText").val();
	
	$.ajax({
		type : 'post',
		url : '/bdat',
		headers : {
			"Content-Type" : "application/json",
			"X-HTTp-Method-Override" :"POST"
		},
		dataType : 'text',
		data : JSON.stringify({
			bno : bno,
			mno : mno,
			ctt : ctt
		}),
		success: function(result) {
			if(result =='SUCCESS') {
				alert("등록되었습니다.")
				getAllList();
			}
		}
	});
});

$("#boarddat").on("click", ".replyLi button", function(){
	var bdat = $(this).parent();
	
	var bdatno = bdat.attr("data-bdatno");
	var ctt = bdat.text();

	$(".modal-title").html(bdat);
	$("#bdattext").val(bdattext);
	$("#modDiv").show("slow");
});

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
</script>
	<h2>댓글 리스트</h2>
	
	<div>
		<div>
			작성자
			<input style="color: black;" type ='text' name='mno' id='newReplyWriter'>	
		</div>
		<div>
			댓글내용
			<input style="color: black;" type ='text' name='ctt' id='newReplyText'>	
		</div>
		<button id="replyAddBtn" style="color: black;">댓글등록</button>
	</div>
	
	<!-- 설정페이지 모달창 -->
	
	<div id='modDiv'>
		<div class='modal-title'></div>
		<div>
			<input type='text' id='bdattext'>
		</div>
		<div>
			<button type="button" id="replyModBtn">수정</button>
			<button type="button" id="replyDelBtn">삭제</button>
			<button type="button" id="closeBtn">닫기</button>
		</div>	
	</div>
