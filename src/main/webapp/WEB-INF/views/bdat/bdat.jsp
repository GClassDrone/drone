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
	left: 50%; /* 
	margin-top: -50%;
	margin-left: -150px; */
	padding: 10px;
	z-index: 1000;
}
</style>

<script type="text/javascript">
	/* 리스트 불러오는 부분 */
	$(function() {
		getAllList();
		function getAllList() {
			var subjno = $("#subjno").val();
			var bno = $("#bno").val();

			$.getJSON('/bdat/all/' + subjno + "/" + bno,
			function(data) {var str = "";
				$(data).each(function() {
					str += "<div data-bdatno='"+this.bdatno+"'class='replyLi'>"
					str += this.niknm
					str += ":"
					str += this.ctt
						 if ($("#mno").val() == this.mno) {
					str += "<button class='replyModBtn fa fa-2x fa-pencil-square-o' style='color:#bdbdbd'></button></div>";
							}
									});
							$("#bdat").html(str);
							});

		}
		/* 리플 등록 버튼 */

		$("#replyAddBtn").on("click", function() {
			
			var niknm = $("niknm").val();
			var ctt = $("ctt").val();

			var subjno = $("#subjno").val();
			var bno = $("#bno").val();

			var url = '/bdat/' + subjno + "/" + bno;
			$.ajax({
				type : 'post',
				url : url,
				headers : {
					"Content-Type" : "application/json",
					"X-HTTp-Method-Override" : "POST"
				},
				dataType : 'text',
				data : JSON.stringify({
					subjno : subjno,
					bno : bno,
					mno : $("#mno").val(),
					niknm : $("#niknm").val(),
					ctt : $("#ctt").val()
				}),
				success : function(result) {
					if ($("#mno").val() != null) {
						alert("등록되었습니다.")
						getAllList();
						location.reload();
					}else {
						alert("로그인부탁드립니다")
					}
				}
			});
		});

		/* 값을 모달한테 전달해주는 부분 */

		$("#bdat").on("click", ".replyLi button", function() {

			var bdat = $(this).parent();

			var bdatno = bdat.attr("data-bdatno");
			var ctt = bdat.text();


			$(".modal-title").html(bdatno);
			$("#cttmodal").val(ctt);
			$("#modDiv").show("slow");
		});

		/* 수정버튼 고치는 쪽 */

		$("#replyModBtn").on("click", function() {

			var data = $(".modal-title").html(bdatno);
			var subjno = $("#subjno").val();
			var bno = $("#bno").val();
			var bdatno = $("#modDiv").children("div").eq(0).text();
			var ctt = $("#cttmodal").val();
			var mno = $("#mno").val();
			
			alert(subjno+"sadasd"+"asd"+bno+"asd"+bdatno);
			var url = "/bdat/" + subjno + "/" + bno + "/" + bdatno;
			
			$.ajax({
				type : 'put',
				url : url,
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "PUT"
				},
				data : JSON.stringify({
					ctt : ctt
				}),
				dataType : 'text',
				success : function(result) {

					if (result == 'SUCCESS') {
						alert("수정 되었습니다.");
						$("#modDiv").hide("slow");
						getAllList();
					}
				}
			});
		});
		/* 리플 지우는 버튼 */

		$("#replyDelBtn").on("click", function() {
			var bdatno =$("#modDiv").children("div").eq(0).text();
			var ctt = $("#cttmodal").val();
			
			var subjno = $("#subjno").val();
			var bno = $("#bno").val();
			var url = "/bdat/" + subjno + "/" + bno + "/" + bdatno;
			
			$.ajax({
				type : "post",
				url : url,
				data: JSON.stringify({
					subjno : subjno, 
					bno : bno,
					bdatno : bdatno
				}),
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "POST"
				},
				dataType : 'text',
				success : function(result) {
					console.log("result :" + result);
					if (result == 'SUCCESS') {
						alert("삭제 되었습니다.");
						$("#modDiv").hide("slow");
						getAllList();
						location.reload();
					}
				}
			});
			/* 댓글 닫는 기능  */
		});
			$("#closeBtn").on("click", function() {
				$("#modDiv").hide("slow");
			});
	});
</script>

<div class='bdat' id='bdat'>
</div>
<div class="row">
	<form role="form" method="post">
		<input type='hidden' id='bno' name='bno' value="${bno}">
		<input type='hidden' id='subjno' name='subjno' value="${subjno}">
		<input type='hidden' id='mno' name='mno' value="${mno}">
	</form>
	<div class="form-group">
		<div class="col-sm-1 col-xs-12 center">
			<i class="material-icons text-right"
				style="padding-top: 15px; padding-left: 20px; font-size: 36px; color: #2e7d32">tag_faces</i>
			<h5 class="media-heading">
				<span class="niknm" id="niknm">${niknm}</span>
			</h5>
		</div>
		<div class="col-sm-6 col-xs-12 center">
			<label for="inputComments"><span style="color: #4e342e">댓글을
					써주세요</span></label>
			<textarea rows="6" class="form-control" id="ctt" name="ctt"
				placeholder="Enter reply"></textarea>
			<button type="submit" id="replyAddBtn"
				class="btn btn-block btn-warnings">댓글올리기</button>
		</div>
	</div>
</div>
<!-- 설정페이지 모달창 -->
<div id='modDiv' style="display: none; color: black;">
	<div class='modal-title'></div>
	<div>
		<input type='text' id='cttmodal' >
	</div>
	<div>
		<button type="button" class="btn btn-info" id="replyModBtn">수정</button>
		<button type="button" class="btn btn-danger" id="replyDelBtn">삭제</button>
		<button type="button" class="btn btn-defailt" id="closeBtn" data-dismiss="modal">닫기</button>
	</div>
</div>