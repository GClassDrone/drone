<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="common/include.jsp"></jsp:include>
<script type="text/javascript" src="/resources/js/intro/intro.js"></script>
<style type="text/css">
    .navbar-default {
        width: 100%;
        z-index: 9999; 
}  
</style>
</head>
<body>
<jsp:include page="common/header.jsp"></jsp:include>
    <div id="carousel" data-interval="false" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carousel" data-slide-to="0" class="active"></li>
            <li data-target="#carousel" data-slide-to="1"></li>
            <li data-target="#carousel" data-slide-to="2"></li>
            <li data-target="#carousel" data-slide-to="3"></li>
            <li data-target="#carousel" data-slide-to="4"></li>
            <li data-target="#carousel" data-slide-to="5"></li>
        </ol>
        <div class="carousel-inner">
            <div class="item active">
                <img src="/resources/images/carousel/carousel01.png" alt="carousel01 Photo">
                <div class="carousel-caption">
                    <h3>Headline</h3>
                    <p>We strive to be your pet's medical experts from youth through the senior years. We build preventative health care plans for each and every one of our patients, based on breed, age, and sex, so that your pet receives the most appropriate care at crucial milestones. We want to give your pet a long and healthy life.</p>
                </div>
            </div>
            <div class="item">
                <img src="/resources/images/carousel/carousel02.png" alt="carousel02 Photo">
            </div>
            <div class="item">
                <img src="/resources/images/carousel/carousel03.png" alt="carousel03 Photo">
            </div>
            <div class="item">
                <img src="/resources/images/carousel/carousel04.png" alt="carousel04 Photo">
            </div>
            <div class="item">
                <img src="/resources/images/carousel/carousel05.png" alt="carousel05 Photo">
            </div>
            <div class="item">
                <img src="/resources/images/carousel/carousel06.png" alt="carousel06 Photo">
            </div>
        </div>
        <a class="left carousel-control" href="#carousel" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span></a>
        <a class="right carousel-control" href="#carousel" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span></a>
    </div>
    <br />
    <div class="container">
        <div class="col-md-12">
            <h1 class="text-center">Hot Clip</h1>
        </div>
    </div>
    <div class="container">
    <div id="hotVideo" class="slider"></div>
    </div>
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="text-center">Pilot</h1>
                    <p class="text-center">We are a group of skilled individuals.</p>
                </div>
            </div>
            <br />
	<!-- 파일럿 리스트 -->
            <div id="hotclipPilot"></div>
        </div>
    </div>
    <jsp:include page="common/footer.jsp"></jsp:include>
</body>

</html>
