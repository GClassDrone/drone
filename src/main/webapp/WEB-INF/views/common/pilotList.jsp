<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:forEach items="${listAll}" var="Memdto">
	<c:if test="${Memdto.mno ne 1 && Memdto.mno%3 eq 1}">
	</c:if>
	<c:if test="${Memdto.mno%3 eq 1}">
	</c:if>
	<div class="well">
		<div class="media">
			<a class="pull-left" href="/profile/ProfileDetail?mno=${MemDto.mno }"> <img class="media-object"
				src="http://placekitten.com/121/121">
			</a>
			<div class="media-body" style="color: #424242">
				<a href="/profile/ProfileDetail?mno=${MemDto.mno }"><h4 class="media-heading">
						<strong style="color: black;">
								닉네임 : 
								${MemDto.mno }
								${MemDto.niknm }
						</strong>
					</h4></a>
				<p>프로필 개인설명 : </p>
				<ul class="list-inline list-unstyled">
					<span>
						<i class="glyphicon glyphicon-comment"></i>
						랭킹 : ${MemDto.levnm} ,
						 ${MemDto.levnic}
					</span>
					<li>|</li>
					<li>
						<span>
							<i class="fa fa-users"></i> 
								지역 : ${MemDto.locnm}
						</span>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<c:if test="${Memdto.mno%3 eq 0 || Memdto.mno eq count}">
	</c:if>
	<c:if test="${Memdto.mno ne 3 && Memdto.mno%3 eq 0 || Memdto.mno eq count}">
	</c:if>
</c:forEach>