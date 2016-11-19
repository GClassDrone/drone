/* 아작스 호출시 전달받을 파라메터 데이터 형태(필수값) */
/*  var data = {ctscateno: 카테고리번호 , ctsno: 컨텐츠게시글번호, mno: 현재 로그인 되어있는 회원번호 };  */
/* 모달 오픈시 호출해야하는 함수 */
function ctsDetailAjax(data){
	$.ajax({
		url: "/map/videoDetail",
		type: "POST",
		data: JSON.stringify(data),
		headers: {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : "POST"
		},
		dataType: "json",
		success: function(result){
			var cDto = result.cDto;
			var cdList = result.cdList;
			var favCheck = result.favCheck;
			var dateString;
			if(cDto.regtime==null){
				var date = new Date(cDto.regdt);
				dateString = date.getFullYear()+"/"+(date.getMonth()+1)+"/"+date.getDate()+" "+date.getHours()+":"+date.getMinutes()+":"+date.getSeconds();
			}else{
				dateString = cDto.regtime;
			}
			/* 본문 내용 */
			$(".modal-header > h2").text(cDto.ttl);
			$(".modal-header > h2").append("<small>&nbsp;"+dateString+"<a href='/mem/ProfileDetail?mno="+cDto.mno+"'>"+cDto.niknm+"</a></small>");
			$("#modal-iframe").html("<iframe class='embed-responsive-item' src='https://www.youtube.com/embed/"+cDto.filelk+"?autoplay=0' allowfullscreen=''></iframe>");
			$("#modalCtt").text(cDto.ctt);
			$("#modalCtt").data("ctscateno",cDto.ctscateno);
			$("#modalCtt").data("ctsno",cDto.ctsno);
			
			/* 버튼값 */
			$(".modal-body button:eq(0) small").text(" "+cDto.datcnt+" ");
			$(".modal-body button:eq(1) small").text(" "+cDto.joacnt+" ");
			$(".modal-body button:eq(2) small").text(" "+cDto.favcnt+" ");
			
			/* 버튼 이미지 변경 */
			if(favCheck.length==0){
				$(".modal-body button").eq(1).children("span").removeClass("fa-thumbs-up");
				$(".modal-body button").eq(1).children("span").addClass("fa-thumbs-o-up");
				$(".modal-body button").eq(2).children("span").removeClass("fa-heart");
				$(".modal-body button").eq(2).children("span").addClass("fa-heart-o");
			}else if(favCheck.length>0){
				$(favCheck).each(function(){
					if(this.fgubun==='j'){
						$(".modal-body button").eq(1).children("span").removeClass("fa-thumbs-o-up");
						$(".modal-body button").eq(1).children("span").addClass("fa-thumbs-up");
					}else if(this.fgubun==='f'&&this.length==1){
						$(".modal-body button").eq(1).children("span").removeClass("fa-thumbs-up");
						$(".modal-body button").eq(1).children("span").addClass("fa-thumbs-o-up");
					}
					if(this.fgubun==='f'){
						$(".modal-body button").eq(2).children("span").removeClass("fa-heart-o");
						$(".modal-body button").eq(2).children("span").addClass("fa-heart");
					}else if(this.fgubun==='j'&&this.length == 1){
						$(".modal-body button").eq(2).children("span").removeClass("fa-heart");
						$(".modal-body button").eq(2).children("span").addClass("fa-heart-o");
					}
				});
			}
			
			/* 댓글 리스트 */
			datList(cdList);
			
			$("body").css("overflow-y","hidden");
			$("#myModal").show();
		}
	});
}
function datList(cdList){
	var str = "";
	$(cdList).each(function(){
		var regdt;
		if(this.regtime==null){
			var date = new Date(this.regdt);
			regdt = date.getFullYear()+"/"+(date.getMonth()+1)+"/"+date.getDate()+" "+date.getHours()+":"+date.getMinutes()+":"+date.getSeconds();
		}else{
			regdt = this.regtime;
		}
		str += "<div class='row'>";
		str += "<div class='col-xs-7'>";
		str += "<div id='reply' class='well text-info'>";
		str += "<h2>Reply<small>&nbsp; "+regdt+" <a href='/mem/Profiledetail?mno="+this.mno+"' style='color:blue'>"+this.niknm+"</a></small>"
		if($("#session").data("mno")==this.mno){
			str += "<i class='fa fa-pencil' data-ctsdatno='"+this.ctsdatno+"'></i><i class='fa fa-times-circle-o' data-ctsdatno='"+this.ctsdatno+"'></i>";
		}
		str += "</h2>";
		str += "<p>"+this.ctt+"</p>";
		str += "</div>";
		str += "</div>";
		str += "</div>";
	});
	$(".modal-footer>div").find("div[class='row']").not(":last").remove();
	$(".modal-footer>div").prepend(str);
}
$(function(){
	/* 모달 닫기 버튼 */
	$("span[class='close']").on("click",function(){
		$("#modal-iframe").empty();
		$("body").css("overflow-y","auto");
		$("#myModal").hide();
	});
	/* 모달 버튼 이벤트 모음 */
	$(".modal-body button[type='button']").on("click",function(){
		var url="/map/favInsert";
		var idx = $(this).index();
		var span=$(this).children("span");
		var check="n";
		if(idx===1){
			if(span.hasClass("fa-thumbs-up")){
				url="/map/favDelete";
				check = "y"
			}
			fav_joa_btn(url, "j", span, check);
		}else if(idx===2){
			if(span.hasClass("fa-heart")){
				url="/map/favDelete";
				check = "y"
			}
			fav_joa_btn(url, "f", span, check);
		}else if(idx===3){
			
		}else if(idx===4){
			
		}else if(idx===5){
			
		}else if(idx===6){
			
		}else if(idx===7){
			
		}
	});
	/* 좋아요 즐겨찾기 버튼 이벤트 함수 */
	function fav_joa_btn(url, fgubun, span, check){
		var data={
			ctscateno:$("#modalCtt").data("ctscateno")
		  , ctsno:$("#modalCtt").data("ctsno")
		  , mno:$("#session").data("mno")
		  , fgubun: fgubun
		  , check: check
		};
		$.ajax({
			url: url,
			headers:{
				"Content-Type":"application/json",
				"X-HTTP-Method-Override":"POST"
			},
			type: "post",
			data: JSON.stringify(data),
			dataType:"json",
			success: function(result){
				var joacnt = result.cnt.joacnt;
				var favcnt = result.cnt.favcnt;
				if(result.msg==="favInsert"){
					span.removeClass("fa-heart-o");
					span.addClass("fa-heart");
					$(".modal-body button:eq(2) small").text(" "+favcnt+" ");
				}else if(result.msg==="favDelete"){
					span.removeClass("fa-heart");
					span.addClass("fa-heart-o");
					$(".modal-body button:eq(2) small").text(" "+favcnt+" ");
				}else if(result.msg==="joaInsert"){
					span.removeClass("fa-thumbs-o-up");
					span.addClass("fa-thumbs-up");
					$(".modal-body button:eq(1) small").text(" "+joacnt+" ");
				}else if(result.msg==="joaDelete"){
					span.removeClass("fa-thumbs-up");
					span.addClass("fa-thumbs-o-up");
					$(".modal-body button:eq(1) small").text(" "+joacnt+" ");
				}else if(result.msg==="joaFailed" || result.msg==="favFailed"){
					alert("작업을 실패하였습니다.");
				}
			}
		});
	}
	$("#myModal button:last").on("click",function(){
		var data = {
			ctscateno:$("#modalCtt").data("ctscateno")
		  , ctsno:$("#modalCtt").data("ctsno")
		  , mno:$("#session").data("mno")
		  , ctt:$("#ctsdatctt").val()
		};
		$.ajax({
			url: "/map/ctsdatInsert",
			headers: {
				"Content-Type":"application/json",
				"X-HTTP-Method-Override":"POST"
			},
			type:"post",
			data:JSON.stringify(data),
			jdataType:"json",
			success: function(result){
				datList(result);
			}
		});
	});
	var updateCtt;
	$(document).on("click",".fa-pencil",function(){
		$(this).removeClass("fa-pencil");
		$(this).addClass("fa-floppy-o");
		updateCtt = $(this).parent().next().text();
		$(this).parent("h2").next().remove();
		$(this).parent("h2").parent().append("<textarea rows='3'  class='form-control'>"+updateCtt+"</textarea>");
	});
	$(document).on("click",".fa-floppy-o",function(){
		var data = {
				ctscateno:$("#modalCtt").data("ctscateno")
				, ctsno:$("#modalCtt").data("ctsno")
				, ctsdatno:$(this).data("ctsdatno")
				, mno:$("#session").data("mno")
				, ctt:$(this).parent("h2").next().val()
		};
		$(this).removeClass("fa-floppy-o");
		$(this).addClass("fa-pencil");
		$.ajax({
			url: "/map/ctsdatUpdate",
			headers: {
				"Content-Type":"application/json",
				"X-HTTP-Method-Override":"POST"
			},
			type: "post",
			data: JSON.stringify(data),
			dataType: "json",
			success: function(result){
				datList(result);
			}
		});
	});
	$(document).on("click",".fa-times-circle-o",function(){
		if($(this).prev().hasClass("fa-pencil")){
			var data = {
				ctscateno:$("#modalCtt").data("ctscateno")
			  , ctsno:$("#modalCtt").data("ctsno")
			  , ctsdatno:$(this).data("ctsdatno")
			  , mno:$("#session").data("mno")
			};
			if(confirm("삭제하시겠습니까?")){
				$.ajax({
					url: "/map/ctsdatDelete",
					headers: {
						"Content-Type":"application/json",
						"X-HTTP-Method-Override":"POST"
					},
					data: JSON.stringify(data),
					type: "post",
					dataType: "json",
					success: function(result){
						datList(result);
					}
				})
			}
		}else if($(this).prev().hasClass("fa-floppy-o")){
			$(this).prev().removeClass("fa-floppy-o");
			$(this).prev().addClass("fa-pencil");
			$(this).parent("h2").next().remove();
			$(this).parent("h2").parent().append("<p>"+updateCtt+"</p>");
		}
	});
});