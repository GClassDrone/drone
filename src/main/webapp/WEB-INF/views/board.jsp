<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link href="/resources/css/intro.css" rel="stylesheet" type="text/css">
    <style type="text/css">
    .navbar-default {
        width: 100%;
        z-index: 9999;
    }
    
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
    <header class="bgimage">
     <jsp:include page="./header.jsp"></jsp:include>
 <!--        <div class="row">
            <nav class="navbar navbar-default">
                <div class="container">
                    navbar-default /  navbar-fixed-top 
                    <div class="navbar-header">
                        <a href="#" class="navbar-brand">GClass</a>
                    </div>
                    <p class="navbar-text">Sharing People's Drone Life</p>
                    <ul class="nav navbar-nav">
                        <li><a href="#">드론영상</a></li>
                        <li><a href="#">카테고리</a></li>
                        <li class="active">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">정보 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">시장동향</a></li>
                                <li><a href="#">게시판</a></li>
                            </ul>
                        </li>
                        <li><a href="#">파일럿</a></li>
                    </ul>
                    <form class="navbar-form navbar-right" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search" name="">
                        </div>
                        <button type="submit" class="btn btn-default">go</button>
                    </form>
                    <button type="button" class="btn btn-default navbar-btn pull-right">sign-in</button>
                </div>
            </nav>
        </div> -->
    </header>
    <div class="container"> <br />
        <ol class="breadcrumb">
            <li><a href="#">home</a></li>
            <li class="active">자유게시판</li>
            <!-- <li><a href="#">grooming</a></li> -->
        </ol>
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
                <img class="icon img-circle" src="images/profile.jpg" alt="Icon">
                <h5><a class="nickname" href="#">APRIL</a></h5>
            </div>
            <div class="col-md-8">
                <h3>General Health <small><span style="text-align: right;">2016/10/18</span></small></h3>
                <blockquote><span style="font-size: 15px">Wellness and senior exams, ultrasound, x-ray, and dental cleanings are just a few of our general health services. Wellness and senior exams, ultrasound, x-ray, and dental cleanings are just a few of our general health services.</span> &nbsp; <a class="btn btn-success" href="#"><small>read more</small></a>
                </blockquote>
            </div>
            <div class="col-md-2 col-md-offset-1">
                <img class="icon img-circle" src="images/profile.jpg" alt="Icon">
                <h5><a class="nickname" href="#">APRIL</a></h5>
            </div>
            <div class="col-md-8">
                <h3>General Health <small><span style="text-align: right;">2016/10/18</span></small></h3>
                <blockquote><span style="font-size: 15px">Wellness and senior exams, ultrasound, x-ray, and dental cleanings are just a few of our general health services. Wellness and senior exams, ultrasound, x-ray, and dental cleanings are just a few of our general health services.</span> &nbsp; <a class="btn btn-success" href="#"><small>read more</small></a>
                </blockquote>
            </div>
            <div class="col-md-2 col-md-offset-1">
                <img class="icon img-circle" src="images/profile.jpg" alt="Icon">
                <h5><a class="nickname" href="#">APRIL</a></h5>
            </div>
            <div class="col-md-8">
                <h3>General Health <small><span style="text-align: right;">2016/10/18</span></small></h3>
                <blockquote><span style="font-size: 15px">Wellness and senior exams, ultrasound, x-ray, and dental cleanings are just a few of our general health services. Wellness and senior exams, ultrasound, x-ray, and dental cleanings are just a few of our general health services.</span> &nbsp; <a class="btn btn-success" href="#"><small>read more</small></a>
                </blockquote>
            </div>
            <div class="col-md-2 col-md-offset-1">
                <img class="icon img-circle" src="images/profile.jpg" alt="Icon">
                <h5><a class="nickname" href="#">APRIL</a></h5>
            </div>
            <div class="col-md-8">
                <h3>General Health <small><span style="text-align: right;">2016/10/18</span></small></h3>
                <blockquote><span style="font-size: 15px">Wellness and senior exams, ultrasound, x-ray, and dental cleanings are just a few of our general health services. Wellness and senior exams, ultrasound, x-ray, and dental cleanings are just a few of our general health services.</span> &nbsp; <a class="btn btn-success" href="#"><small>read more</small></a>
                </blockquote>
            </div>
            <div class="col-md-2 col-md-offset-1">
                <img class="icon img-circle" src="images/profile.jpg" alt="Icon">
                <h5><a class="nickname" href="#">APRIL</a></h5>
            </div>
            <div class="col-md-8">
                <h3>General Health <small><span style="text-align: right;">2016/10/18</span></small></h3>
                <blockquote><span style="font-size: 15px">Wellness and senior exams, ultrasound, x-ray, and dental cleanings are just a few of our general health services. Wellness and senior exams, ultrasound, x-ray, and dental cleanings are just a few of our general health services.</span> &nbsp; <a class="btn btn-success" href="#"><small>read more</small></a>
                </blockquote>
            </div>
            <div class="col-md-2 col-md-offset-1">
                <img class="icon img-circle" src="images/profile.jpg" alt="Icon">
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
<!--     <footer class="section section-info">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <h1>GClass</h1>
                    <p>Copyright ⓒ &nbsp;2016 by GClass, All rights reserved. Contact Us
                        <br>XSharing.lab@gmail.com.</p>
                </div>
                <div class="col-sm-6">
                    <p class="text-info text-right">
                        <br>
                        <br>
                    </p>
                    <div class="row">
                        <div class="col-md-12 hidden-xs text-right">
                            <a href="https://www.facebook.com/ktwibro" target="_blank"><i class="fa fa-facebook-square" style="font-size:36px; color:white"></i></a> &nbsp;
                            <a href="https://plus.google.com/u/0/+YoungKimkt" target="_blank"><i class="fa fa-google-plus-official" style="font-size:36px; color:white"></i></a> &nbsp;
                            <a href="https://twitter.com/ktm2mt" target="_blank"><i class="fa fa-twitter-square" style="font-size:36px; color:white"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer> -->
    <script src="/resources/js/jquery-2.1.4.min.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/script.js"></script>
    <jsp:include page="./footer.jsp"></jsp:include>
</body>

</html>
