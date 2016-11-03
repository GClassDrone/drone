<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

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
    
    .more {
        text-align: center;
    }
    
.breadcrumb {
        background-color: black;
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
<<<<<<< HEAD
    <jsp:include page="./header.jsp"></jsp:include>
    <header class="bgimage hidden-xs">
=======
    <header class="bgimage hidden-xs">
    <jsp:include page="common/header.jsp"></jsp:include>
        <!-- <div class="row">
            <nav class="navbar navbar-default" role="navigation">
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
>>>>>>> 5f7d49fe82b5c8342d6ccc33f4b2779c966ab96a
    </header>

    <div class="container">
        <div class="row">
            <br />
 <!--            <ol class="breadcrumb">
                <li><a href="#">home</a></li>
                <li class="active">드론시장동향</li>
                <li><a href="#">grooming</a></li>
            </ol> -->
            <ul class="nav nav-tabs pull-right">
                <li class="active"><a href="P_info.html">시장동향</a></li>
                <li><a href="P_board.html">게시판</a></li>
                <li><a href="https://goo.gl/orXmEX" target="_blank">기상정보</a></li>
                <li><a href="http://spaceweather.rra.go.kr/models/kp" target="_blank">지자기수치</a></li>
            </ul>
        </div>
        <h1 style="text-align: center;"><strong>드론 시장동향</strong></h1>
        <p style="text-align: center;">공지사항 텍스트 요약 ~~~~~~~~</p>
    </div>
    <div class="container">
        <div class="row">
            <section class="col-xs-offset-3 col-xs-6 col-sm-offset-0 col-sm-6 col-md-3">
                <div class="thumbnail">
                    <img alt="Bootstrap Thumbnail First" src="http://lorempixel.com/output/people-q-c-600-200-1.jpg">
                    <div class="caption">
                        <h3>
                                Thumbnail label
                            </h3>
                        <p>
                            Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                        </p>
                        <p>
                            <a class="btn btn-primary" href="#">Go</a>
                        </p>
                    </div>
                </div>
            </section>
            <section class="col-xs-offset-3 col-xs-6 col-sm-offset-0 col-sm-6 col-md-3">
                <div class="thumbnail">
                    <img alt="Bootstrap Thumbnail Second" src="http://lorempixel.com/output/city-q-c-600-200-1.jpg">
                    <div class="caption">
                        <h3>
                                Thumbnail label
                            </h3>
                        <p>
                            Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                        </p>
                        <p>
                            <a class="btn btn-primary" href="#">Go</a>
                        </p>
                    </div>
                </div>
            </section>
            <section class="col-xs-offset-3 col-xs-6 col-sm-offset-0 col-sm-6 col-md-3">
                <div class="thumbnail">
                    <img alt="Bootstrap Thumbnail Third" src="http://lorempixel.com/output/sports-q-c-600-200-1.jpg">
                    <div class="caption">
                        <h3>
                                Thumbnail label
                            </h3>
                        <p>
                            Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                        </p>
                        <p>
                            <a class="btn btn-primary" href="#">Go</a>
                    </div>
                </div>
            </section>
            <section class="col-xs-offset-3 col-xs-6 col-sm-offset-0 col-sm-6 col-md-3">
                <div class="thumbnail">
                    <img alt="Bootstrap Thumbnail First" src="http://lorempixel.com/output/people-q-c-600-200-1.jpg">
                    <div class="caption">
                        <h3>
                                Thumbnail label
                            </h3>
                        <p>
                            Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                        </p>
                        <p>
                            <a class="btn btn-primary" href="#">Go</a>
                        </p>
                    </div>
                </div>
            </section>
        </div>
         <div class="row">
            <section class="col-xs-offset-3 col-xs-6 col-sm-offset-0 col-sm-6 col-md-3">
                <div class="thumbnail">
                    <img alt="Bootstrap Thumbnail First" src="http://lorempixel.com/output/people-q-c-600-200-1.jpg">
                    <div class="caption">
                        <h3>
                                Thumbnail label
                            </h3>
                        <p>
                            Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                        </p>
                        <p>
                            <a class="btn btn-primary" href="#">Go</a>
                        </p>
                    </div>
                </div>
            </section>
            <section class="col-xs-offset-3 col-xs-6 col-sm-offset-0 col-sm-6 col-md-3">
                <div class="thumbnail">
                    <img alt="Bootstrap Thumbnail Second" src="http://lorempixel.com/output/city-q-c-600-200-1.jpg">
                    <div class="caption">
                        <h3>
                                Thumbnail label
                            </h3>
                        <p>
                            Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                        </p>
                        <p>
                            <a class="btn btn-primary" href="#">Go</a>
                        </p>
                    </div>
                </div>
            </section>
            <section class="col-xs-offset-3 col-xs-6 col-sm-offset-0 col-sm-6 col-md-3">
                <div class="thumbnail">
                    <img alt="Bootstrap Thumbnail Third" src="http://lorempixel.com/output/sports-q-c-600-200-1.jpg">
                    <div class="caption">
                        <h3>
                                Thumbnail label
                            </h3>
                        <p>
                            Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                        </p>
                        <p>
                            <a class="btn btn-primary" href="#">Go</a>
                    </div>
                </div>
            </section>
            <section class="col-xs-offset-3 col-xs-6 col-sm-offset-0 col-sm-6 col-md-3">
                <div class="thumbnail">
                    <img alt="Bootstrap Thumbnail First" src="http://lorempixel.com/output/people-q-c-600-200-1.jpg">
                    <div class="caption">
                        <h3>
                                Thumbnail label
                            </h3>
                        <p>
                            Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                        </p>
                        <p>
                            <a class="btn btn-primary" href="#">Go</a>
                        </p>
                    </div>
                </div>
            </section>
        </div>
        <br />
        <!-- row -->
        <p class="more">
            <button type="button" class="btn btn-default btn-sm center">
                <span class="fa fa-2x fa-fw fa-angle-double-down"></span> 
            </button>
        </p>
    </div>

    <script src="/resources/js/jquery-2.1.4.min.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/script.js"></script>
<<<<<<< HEAD
    <jsp:include page="./footer.jsp"></jsp:include>
=======
        <jsp:include page="common/footer.jsp"></jsp:include>
>>>>>>> 5f7d49fe82b5c8342d6ccc33f4b2779c966ab96a
</body>

</html>
