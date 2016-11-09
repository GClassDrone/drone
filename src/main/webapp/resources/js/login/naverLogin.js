var naver_id_login = new naver_id_login("CWr_84d1XvIQID9amjdB","http://192.168.0.23:8080/intro");
var state = naver_id_login.getUniqState();
naver_id_login.setButton("green", 3, 48);
naver_id_login.setDomain(".service.com");
naver_id_login.setState(state);
naver_id_login.setPopup();
naver_id_login.init_naver_id_login();

function naverSignCallback(){
	alert(naver_id_login.getProfileDate('email'));
	alert(naver_id_login.getProfileDate('nickname'));
	alert(naver_id_login.getProfileDate('age'));
}
naver_id_login.get_naver_userprofile("naverSignCallback()");
