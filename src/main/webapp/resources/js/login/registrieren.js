$(function() {
	function idCheck(){
		if(document.frm.niknm.value == ""){
			return;
		}
		window.open(url, "confirm",
		"toolbar=no,status=no, menubar=no, scrollbars=no,resizable=no,width=300,height=200");
	}
	function idok(){
		opener.frm.niknm.value ="${niknm}";
		self.close();
	}
});