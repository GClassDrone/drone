<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/resources/js/login/registrieren.js"></script>
</head>
<body>
	<h2>닉네임 중복 확인</h2>
	<form action="idCheck.do" method="get" name="frm">
		아이디 <input type=text name="niknm">
		<input type="submit" value="중복 체크">
		<br>
		<c:if test="${result == 1 }">
			<script type="text/javascript">
				opener.document.frm.niknm.value="";
			</script>
			${niknm }은 이미 사용중인 아이디 입니다.
		</c:if>
		<c:if test="${result == -1 }">
			${niknm }은 사용 가능한 아이디입니다.
			<input type="button" value="사용" class="cancle" onclick="idok()">
		</c:if>
	</form>
</body>
</html>