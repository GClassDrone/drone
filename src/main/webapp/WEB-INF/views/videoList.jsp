<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:forEach items="${list}" var="dto">
	<c:if test="${dto.num%4 eq 1}">
		<div class="section">
	</c:if>
			<div class="col-xs-12 col-sm-6 col-md-3">
				<div class="embed-responsive embed-responsive-16by9">
					<img src="http://img.youtube.com/vi/${dto.filelk}/0.jpg">
					<span class="fa fa-2x fa-fw fa-play-circle"></span>
				</div>
				<h3>${dto.ttl}</h3>
				<p>${dto.ctt}</p>
			</div>
	<c:if test="${dto.num%4 eq 0 || dto.num eq count}">
		</div>
	</c:if>
</c:forEach>