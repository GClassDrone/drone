<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>카테고리 리스트</title>
<jsp:include page="../common/include.jsp"></jsp:include>
<link href="/resources/css/cate/cateList.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/resources/js/cate/cateList.js"></script>
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>
<div id="cateBtn-wrap">
<input type="button" class="cateBtn" value="도시">
<input type="button" class="cateBtn" value="자연">
<input type="button" class="cateBtn" value="시설">
<input type="button" class="cateBtn" value="스포츠">
<input type="button" class="cateBtn" value="레이싱">
<input type="button" class="cateBtn" value="레저">
<input type="button" class="cateBtn" value="공공">
</div>
<div id="cateList" class="container">
</div>
<div id="pageBtn-wrap">
	<p class="more">
		<button type="button" class="btn btn-default btn-sm center">
			<span class="fa fa-2x fa-fw fa-angle-double-down"></span> 
		</button>
	</p>
</div>
<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>