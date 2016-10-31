<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="http://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="naver_id_login"></div>
<script type="text/javascript">
	var naver_id_login = new naver_id_login("CWr_84d1XvIQlD9amjdB", "http://192.168.0.23:8080/test1");
	var state = naver_id_login.getUniqState();
	naver_id_login.setButton("white", 2, 40);
	naver_id_login.setDomain(".service.com");
	naver_id_login.setState(state);
	naver_id_login.setPopup();
	naver_id_login.init_naver_id_login();
	
	function naverSignCallback(){
		alert(naver_id_login.getProfileDate('email'));
		alert(naver_id_login.getProfileDate('nickname'));
		alert(naver_id_login.getProfileDate('age'));
	}
	naver_id_login.get_naver_userprofile("naverSignInCallback()");
</script>
<p> 안녕하세요 </p>
</body>
</html>