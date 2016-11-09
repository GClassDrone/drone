<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:forEach items="${list}" var="dto">
	<c:if test="${dto.num ne 1 && dto.num%3 eq 1}">
		<div class="clearfix">
	</c:if>
	<c:if test="${dto.num%3 eq 1}">
		<div class="row">
	</c:if>
	<div class="well">
		<div class="media">
			<a class="pull-left" href="#"> <img class="media-object"
				src="http://placekitten.com/121/121">
			</a>
			<div class="media-body" style="color: #424242">
				<a href="#"><h4 class="media-heading">
						<strong>
								닉네임
								${MemDto.niknm }
						</strong>
					</h4></a>
				<p>프로필 개인설명</p>
				<ul class="list-inline list-unstyled">
					<span>
						<i class="glyphicon glyphicon-comment"></i>
						랭킹 ${MemDto.levnm} ,
						 ${MemDto.levnic}
					</span>
					<li>|</li>
					<li>
						<span>
							<i class="fa fa-users"></i> 
								지역 ${MemDto.locnm}
						</span>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<c:if test="${dto.num%3 eq 0 || dto.num eq count}">
		</div>
	</c:if>
	<c:if test="${dto.num ne 3 && dto.num%3 eq 0 || dto.num eq count}">
		</div>
	</c:if>
</c:forEach>