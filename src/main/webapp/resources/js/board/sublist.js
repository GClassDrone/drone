$(function() {
var result='${msg}';
if(result=="success"){
	alert("처리되었습니다.");	
}
});

$(document).ready(function(){
	$("#searchBtn").on("click", function(event){
		self.location = "list"
					  + "${pageMake.makeQuery(1)}"
					  + "&searchType="
					  + $("select option:selected").val()
					  +"&keyWord=" + $("#keywordInput").val();
	});
	
	$("#newBtn").on("click", function(event){
		self.location = "register";
	});

	
	var formObj = $("form[role='form']");
	
	console.log(formObj);
	});