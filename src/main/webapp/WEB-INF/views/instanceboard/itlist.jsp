<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../common/include.jsp"></jsp:include>
<jsp:include page="../common/header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form role="form" method="post">
		<input type='hidden' name='subjno' value="${BsubjDto.subjno}">
	</form>
	
	<div class="container">
		<div class="section">
		<div class="row">
            <br />
            <ol class="breadcrumb" style="background: black;">
                <li><a href="#">home</a></li>
                <li><a href="#">정보</a></li>
                <li><a href="#">게시판</a></li>
                <li class="active">지금 들어와있는 게시판</li>
            </ol>
          </div>
			<div style="float: left;">
				<p>카테고리</p>
			</div>
			<div style="float: left;">
				<h1>전체 게시판 제목</h1>
			</div>
			<div>
				<h3>게시판 관리자</h3>
			</div>
				<br>
		</div>
		<div id="content" style="float: left; border: 1px solid white; max-width: 100%;">
			<table>
				<tr>
					<th style="width: 50px;">글번호</th>
					<th style="width: 600px;">글제목</th>
					<th style="width: 200px;">작성자</th>
					<th style="width: 200px;">등록일</th>
					<th style="width: 200px;">조회수</th>
				</tr>
			<c:forEach items="${list}" var="board">
					<tr>
						<td>${board.bno}</td>
						<td><a href="itdetail?subjno=${board.subjno}&bno=${board.bno}">${board.ttl}</a></td>
						<td>${board.mno}</td>
						<td>${board.regdt}</td>
						<td>${board.readcnt}</td>
					</tr>
					</c:forEach>
			</table>
		</div>
	</div>
	<%@ include file="../common/footer.jsp"%>
</body>
</html>