<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:forEach items="${list}" var="list">
	<c:if test="${list.num%4 eq 1}">
		<div class="section">
	</c:if>
			<div class="col-xs-12 col-sm-6 col-md-3">
				<div class="embed-responsive embed-responsive-16by9">
					<iframe class="embed-responsive-item"
						src="https://www.youtube.com/embed/w2H07DRv2_M?autoplay=0"
						allowfullscreen=""></iframe>
				</div>
				<h3>Grooming</h3>
				<p>Our therapeutic grooming treatments help battle fleas, allergic
					dermatitis, and other challenging skin conditions.</p>
			</div>
	<c:if test="${list.num%4 eq 0 || list.num eq count}">
		</div>
	</c:if>
</c:forEach>