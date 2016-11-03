<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>

    <style type="text/css">
 
    .bgimage {
        background-image: url('/resources/images/infoboard_bg.jpg');
        background-position: center center;
        background-size: cover;
        height: 320px;
    }
    
    a {
        color: white;
    }
    
    .icon {
        max-width: 50px;
        margin: 25px 0 0 100px;
    }
    
    .nickname {
        margin: 25px 0 0 107px;
    }
    
    .more {
        text-align: center;
    }
    
    .breadcrumb {
        background: rgba(23, 21, 21, 0);
        border: 0px solid rgba(245, 245, 245, 1);
        border-radius: 0px;
        display: block;
    }
    
    .breadcrumb li {
        font-size: 14px;
    }
    
    .breadcrumb a {
        color: rgba(66, 139, 202, 1);
    }
    
    .breadcrumb a:hover {
        color: rgba(42, 100, 150, 1);
    }
    
    .breadcrumb>.active {
        color: rgba(153, 153, 153, 1);
    }
    
    .breadcrumb>li+li:before {
        color: rgba(204, 204, 204, 1);
        content: "\002F\00a0";
    }
    </style>
</head>

<body>

<jsp:include page="common/header.jsp"></jsp:include>
    <header class="bgimage">
     </header>
    <div class="container"> <br />
<!--         <ol class="breadcrumb">
            <li><a href="#">home</a></li>
            <li class="active">자유게시판</li>
            <li><a href="#">grooming</a></li>
        </ol> -->
        <div class="row">
            <ul class="nav nav-tabs pull-right">
                <li><a href="P_info.html">시장동향</a></li>
                <li class="active"><a href="P_board.html">게시판</a></li>
                <li><a href="https://goo.gl/orXmEX" target="_blank">기상정보</a></li>
                <li><a href="http://spaceweather.rra.go.kr/models/kp" target="_blank">지자기수치</a></li>
            </ul>
        </div>
        <h1 style="text-align: center;"><strong>자유 게시판</strong></h1>
        <p style="text-align: center;">자유게시판 커멘트 소개 ~~~~~~~~</p>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-2  col-md-offset-1">
                <img class="icon img-circle" src="/resources/images/profile.jpg" alt="Icon">
                <h5><a class="nickname" href="#">APRIL</a></h5>
            </div>
            <div class="col-md-8">
                <h3>General Health <small><span style="text-align: right;">2016/10/18</span></small></h3>
                <blockquote><span style="font-size: 15px">Wellness and senior exams, ultrasound, x-ray, and dental cleanings are just a few of our general health services. Wellness and senior exams, ultrasound, x-ray, and dental cleanings are just a few of our general health services.</span> &nbsp; <a class="btn btn-success" href="#"><small>read more</small></a>
                </blockquote>
            </div>
            <div class="col-md-2 col-md-offset-1">
                <img class="icon img-circle" src="/resources/images/profile.jpg" alt="Icon">
                <h5><a class="nickname" href="#">APRIL</a></h5>
            </div>
            <div class="col-md-8">
                <h3>General Health <small><span style="text-align: right;">2016/10/18</span></small></h3>
                <blockquote><span style="font-size: 15px">Wellness and senior exams, ultrasound, x-ray, and dental cleanings are just a few of our general health services. Wellness and senior exams, ultrasound, x-ray, and dental cleanings are just a few of our general health services.</span> &nbsp; <a class="btn btn-success" href="#"><small>read more</small></a>
                </blockquote>
            </div>
            <div class="col-md-2 col-md-offset-1">
                <img class="icon img-circle" src="/resources/images/profile.jpg" alt="Icon">
                <h5><a class="nickname" href="#">APRIL</a></h5>
            </div>
            <div class="col-md-8">
                <h3>General Health <small><span style="text-align: right;">2016/10/18</span></small></h3>
                <blockquote><span style="font-size: 15px">Wellness and senior exams, ultrasound, x-ray, and dental cleanings are just a few of our general health services. Wellness and senior exams, ultrasound, x-ray, and dental cleanings are just a few of our general health services.</span> &nbsp; <a class="btn btn-success" href="#"><small>read more</small></a>
                </blockquote>
            </div>
            <div class="col-md-2 col-md-offset-1">
                <img class="icon img-circle" src="/resources/images/profile.jpg" alt="Icon">
                <h5><a class="nickname" href="#">APRIL</a></h5>
            </div>
            <div class="col-md-8">
                <h3>General Health <small><span style="text-align: right;">2016/10/18</span></small></h3>
                <blockquote><span style="font-size: 15px">Wellness and senior exams, ultrasound, x-ray, and dental cleanings are just a few of our general health services. Wellness and senior exams, ultrasound, x-ray, and dental cleanings are just a few of our general health services.</span> &nbsp; <a class="btn btn-success" href="#"><small>read more</small></a>
                </blockquote>
            </div>
            <div class="col-md-2 col-md-offset-1">
                <img class="icon img-circle" src="/resources/images/profile.jpg" alt="Icon">
                <h5><a class="nickname" href="#">APRIL</a></h5>
            </div>
            <div class="col-md-8">
                <h3>General Health <small><span style="text-align: right;">2016/10/18</span></small></h3>
                <blockquote><span style="font-size: 15px">Wellness and senior exams, ultrasound, x-ray, and dental cleanings are just a few of our general health services. Wellness and senior exams, ultrasound, x-ray, and dental cleanings are just a few of our general health services.</span> &nbsp; <a class="btn btn-success" href="#"><small>read more</small></a>
                </blockquote>
            </div>
            <div class="col-md-2 col-md-offset-1">
                <img class="icon img-circle" src="/resources/images/profile.jpg" alt="Icon">
                <h5><a class="nickname" href="#">APRIL</a></h5>
            </div>
            <div class="col-md-8">
                <h3>General Health <small><span style="text-align: right;">2016/10/18</span></small></h3>
                <blockquote><span style="font-size: 15px">Wellness and senior exams, ultrasound, x-ray, and dental cleanings are just a few of our general health services. Wellness and senior exams, ultrasound, x-ray, and dental cleanings are just a few of our general health services.</span> &nbsp; <a class="btn btn-success" href="#"><small>read more</small></a>
                </blockquote>
            </div>
        </div>
        <p class="more">
            <button type="button" class="btn btn-default btn-sm center">
                <span class="fa fa-2x fa-fw fa-angle-double-down"></span> 
            </button>
        </p>
    </div>
    <!-- content container -->

    <jsp:include page="common/footer.jsp"></jsp:include>
</body>

</html>
