<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${empty empnm }">
<jsp:forward page="ls"/>
    </c:if>
<!-- 제이쿼리 부분  -->
<header>
	<div id="header">
		<a href="Main.jsp">헤더</a>
			<div id="headlogin">
				${loginUser.empnm }(${loginUser.empno })님 로그인 중 |
			</div>
		<div id="logout">
				<a href="Logout">로그아웃</a>
		</div>
	</div>
</header>