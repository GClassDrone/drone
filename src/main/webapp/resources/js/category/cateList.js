$(function(){
	function cateInitList(nowPage){
		var pagePerRow = 8;
		var cateArray = new Array;
		var data = {nowPage:nowPage, pagePerRow: pagePerRow, cateArray:cateArray};
		$.ajax({
			url: "/cate/cateList",
			headers:{
				"Content-Type":"application/json",
				"X-HTTP-Method-Override":"POST"
			},
			type: "post",
			data: JSON.stringify(data),
			datatype: "json",
			success: function(result){
				
			}
		});
	}
});