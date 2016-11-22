//모달
$(function(){
	var form;
	var dialog;
	dialog = $("#dialog-login").dialog({
		autoOpen : false,
		height : 400,
		width : 400,
		modal : true,
		open : function(){
			$(this).parent().css("z-index","10000");
		}
	});
	form = dialog.find("form").on("submit",function(event){
		event.preventDefault();
	});
	$("#login-user").on("click", function(){
		
		dialog.dialog("open");
	});
});
