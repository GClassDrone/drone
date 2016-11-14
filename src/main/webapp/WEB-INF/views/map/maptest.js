	function hotclipVideo(){
		$.ajax({
			url: "/map/hotclipVideo",
			type: "POST",
			dataType: "json",
			success: function(result){
				data = [];
				$(result).each(function(){
					data.push({ctscateno:this.ctscateno,ctsno:this.ctsno,filelk:this.filelk,ttl:this.ttl,ctt:this.ctt});
				});
				nowPage=1;
				startNum=0;
				endNum=0;
				videoPage();
			}
		});
	}
	function hotclipPilot(){
		$.ajax({
			url: "/map/hotclipPilot",
			type: "POST",
			dataType: "json",
			success: function(result){
				data = [];
				$(result).each(function(){
					data.push({mno:this.mno,niknm:this.niknm,locnm:this.locnm,actnm:this.actnm,mdrnm:this.mdrnm});
				});
				nowPage=1;
				startNum=0;
				endNum=0;
				pilotPage();
			}
		});
	}
