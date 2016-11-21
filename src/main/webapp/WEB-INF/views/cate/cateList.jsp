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
<header class="bgimage hidden-xs">
</header>
<div class="row">
   <h1 style="text-align: center;"><strong>활용 영역별 영상</strong></h1>
   <p style="text-align: center;">분야별로 구분된 멋진 드론영상을 감상하실 수 있습니다. 왼쪽의 관심영역을 선택하거나 해제해 주세요.</p>
</div><br />
<div class="container">
<input type="hidden" name="cateno" id="cateno" value="${cateno}">
	<div class="row">
		<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2" id="cateBtn-wrap">
		
			<div class="[ form-group ]" style="padding-top: 20px">
	            <input type="checkbox" class="cateBtn" name="city" id="city" autocomplete="off" />
	            <div class="[ btn-group ]">
	                <label for="city" class="[ btn btn-default ]">
	                    <span class="[ glyphicon glyphicon-ok ]"></span>
	                    <span> </span>
	                </label>
	                <label for="city" class="[ btn btn-default active ]">
	                                     도시경관	
	                </label>
	            </div>
	        </div>
	        <div class="[ form-group ]">
	            <input type="checkbox" class="cateBtn" name="nature" id="nature" autocomplete="off" />
	            <div class="[ btn-group ]">
	                <label for="nature" class="[ btn btn-default ]">
	                    <span class="[ glyphicon glyphicon-ok ]"></span>
	                    <span> </span>
	                </label>
	                <label for="nature" class="[ btn btn-default active ]">
	                                     자연전망	
	                </label>
	            </div>
	        </div>
	        <div class="[ form-group ]">
	            <input type="checkbox" class="cateBtn" name="facility" id="facility" autocomplete="off" />
	            <div class="[ btn-group ]">
	                <label for="facility" class="[ btn btn-default ]">
	                    <span class="[ glyphicon glyphicon-ok ]"></span>
	                    <span> </span>
	                </label>
	                <label for="facility" class="[ btn btn-default active ]">
	                                     시설조망	
	                </label>
	            </div>
	        </div>
	        <div class="[ form-group ]">
	            <input type="checkbox" class="cateBtn" name="sport" id="sport" autocomplete="off" />
	            <div class="[ btn-group ]">
	                <label for="sport" class="[ btn btn-default ]">
	                    <span class="[ glyphicon glyphicon-ok ]"></span>
	                    <span> </span>
	                </label>
	                <label for="sport" class="[ btn btn-default active ]">
	                                     운동경기	
	                </label>
	            </div>
	        </div>
	        <div class="[ form-group ]">
	            <input type="checkbox" class="cateBtn" name="race" id="race" autocomplete="off" />
	            <div class="[ btn-group ]">
	                <label for="race" class="[ btn btn-default ]">
	                    <span class="[ glyphicon glyphicon-ok ]"></span>
	                    <span> </span>
	                </label>
	                <label for="race" class="[ btn btn-default active ]">
	                                     드론경주	
	                </label>
	            </div>
	        </div>
	        <div class="[ form-group ]">
	            <input type="checkbox" class="cateBtn" name="leisure" id="leisure" autocomplete="off" />
	            <div class="[ btn-group ]">
	                <label for="leisure" class="[ btn btn-default ]">
	                    <span class="[ glyphicon glyphicon-ok ]"></span>
	                    <span> </span>
	                </label>
	                <label for="leisure" class="[ btn btn-default active ]">
	                                     레저활동	
	                </label>
	            </div>
	        </div>
	        <div class="[ form-group ]">
	            <input type="checkbox" class="cateBtn" name="public" id="public" autocomplete="off" />
	            <div class="[ btn-group ]">
	                <label for="public" class="[ btn btn-default ]">
	                    <span class="[ glyphicon glyphicon-ok ]"></span>
	                    <span> </span>
	                </label>
	                <label for="public" class="[ btn btn-default active ]">
	                                     공공활용	
	                </label>
	            </div>
	        </div>
			
<!-- 		<input type="button" class="cateBtn" value="도시">
			<input type="button" class="cateBtn" value="자연">
			<input type="button" class="cateBtn" value="시설">
			<input type="button" class="cateBtn" value="스포츠">
			<input type="button" class="cateBtn" value="레이싱">
			<input type="button" class="cateBtn" value="레저">
			<input type="button" class="cateBtn" value="공공">  -->
			
		</div>
		<div class="col-xs-12 col-sm-2 col-md-10 col-lg-10" id="cateList">
		</div>
	</div>
	<div id="pageBtn-wrap">
		<p class="more">
			<button type="button" class="btn btn-default btn-sm">
				<span class="fa fa-2x fa-fw fa-angle-double-down"></span> 
			</button>
		</p>
	</div>
</div>
<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>