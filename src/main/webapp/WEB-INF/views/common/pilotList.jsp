<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:forEach items="${list}" var="dto">
	<c:if test="${dto.num ne 1 && dto.num%3 eq 1}">
		<div class="clearfix">
	</c:if>
	<c:if test="${dto.num%3 eq 1}">
		<div class="row">
	</c:if>
			<div class="col-md-1">
				<img
					src="http://pingendo.github.io/pingendo-bootstrap/assets/user_placeholder.png"
					class="img-circle img-responsive">
				<h6 class="text-center">
					Young Kim
					<p>
						(<span class="glyphicon glyphicon-star"></span>)
					</p>
				</h6>
			</div>
			<div class="col-md-3">
				<div class="panel panel-success">
					<ul>
						<p class="text-left text-info">
						<li>지역</li>
						<li>경력</li>
						<li>보유장비</li>
						</p>
					</ul>
				</div>
			</div>
	<c:if test="${dto.num%3 eq 0 || dto.num eq count}">
		</div>
	</c:if>
	<c:if test="${dto.num ne 3 && dto.num%3 eq 0 || dto.num eq count}">
		</div>
	</c:if>
</c:forEach>