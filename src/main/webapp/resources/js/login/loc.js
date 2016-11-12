$(function(){
	$("#sido").on("change",function(){
		var sido =$("#sido").val();
		$.ajax({
			url : "/regist",
			headers: {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "POST"
			},
			type: "post",
			data: JSON.stringify({sido:sido}),
			dataType: 'json',
			success : function(data){
				alert("aaa")
				$("#sigungu").empty();
				
				$(data).each(function(){
					$("#sigungu").append("<option value='"+this.locno +"'>"+ this.sigungu +"</option>");
				});
			}
		});
	});
});
