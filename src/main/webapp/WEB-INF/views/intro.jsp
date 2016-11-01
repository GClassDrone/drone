<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

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
    </style>
</head>

<body>
<jsp:include page="./header.jsp"></jsp:include>

<!--     <nav class="navbar navbar-default" data-spy="affix" data-offset="700px">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-ex-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><span>GClass</span></a>
            </div>
            <div class="collapse navbar-collapse" id="navbar-ex-collapse">
                <p class="navbar-text">Sharing People's Drone Life</p>
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">드론영상</a>
                    </li>
                    <li>
                        <a href="#">카테고리</a>
                    </li>
                    <li class="active">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">정보 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="#">시장동향</a>
                            </li>
                            <li>
                                <a href="#">게시판</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">파일럿</a>
                    </li>
                </ul>
                <form class="navbar-form navbar-right" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search" name="">
                    </div>
                    <button type="submit" class="btn btn-default">go</button>
                </form>
                <button type="button" class="btn btn-default navbar-btn pull-right">sign-in</button>
            </div>
        </div>
    </nav> -->
    
    
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
                <img src="/resources/images/carousel/carousel01.png" alt="carousel02 Photo">
                <div class="carousel-caption">
                    <h3>Headline</h3>
                    <p>We strive to be your pet's medical experts from youth through the senior years. We build preventative health care plans for each and every one of our patients, based on breed, age, and sex, so that your pet receives the most appropriate care at crucial milestones. We want to give your pet a long and healthy life.</p>
                </div>
            </div>
            <div class="item">
                <img src="/resources/images/carousel/carousel02.png" alt="carousel01 Photo">
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
        <div class="section">
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/w2H07DRv2_M?autoplay=0" allowfullscreen=""></iframe>
                </div>
                <h3>Grooming</h3>
                <p>Our therapeutic grooming treatments help battle fleas, allergic dermatitis, and other challenging skin conditions.</p>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/w2H07DRv2_M?autoplay=0" allowfullscreen=""></iframe>
                </div>
                <h3>Grooming</h3>
                <p>Our therapeutic grooming treatments help battle fleas, allergic dermatitis, and other challenging skin conditions.</p>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/w2H07DRv2_M?autoplay=0" allowfullscreen=""></iframe>
                </div>
                <h3>General Health</h3>
                <p>Wellness and senior exams, ultrasound, x-ray, and dental cleanings are just a few of our general health services.</p>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/w2H07DRv2_M?autoplay=0" allowfullscreen=""></iframe>
                </div>
                <h3>General Health</h3>
                <p>Wellness and senior exams, ultrasound, x-ray, and dental cleanings are just a few of our general health services.</p>
            </div>
        </div>
        <div class="section">
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/w2H07DRv2_M?autoplay=0" allowfullscreen=""></iframe>
                </div>
                <h3>Grooming</h3>
                <p>Our therapeutic grooming treatments help battle fleas, allergic dermatitis, and other challenging skin conditions.</p>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/w2H07DRv2_M?autoplay=0" allowfullscreen=""></iframe>
                </div>
                <h3>Grooming</h3>
                <p>Our therapeutic grooming treatments help battle fleas, allergic dermatitis, and other challenging skin conditions.</p>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/w2H07DRv2_M?autoplay=0" allowfullscreen=""></iframe>
                </div>
                <h3>General Health</h3>
                <p>Wellness and senior exams, ultrasound, x-ray, and dental cleanings are just a few of our general health services.</p>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/w2H07DRv2_M?autoplay=0" allowfullscreen=""></iframe>
                </div>
                <h3>General Health</h3>
                <p>Wellness and senior exams, ultrasound, x-ray, and dental cleanings are just a few of our general health services.</p>
            </div>
        </div>
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
            <div class="row">
                <div class="col-md-1"> <img src="http://pingendo.github.io/pingendo-bootstrap/assets/user_placeholder.png" class="img-circle img-responsive">
                    <h6 class="text-center">Young Kim <p>(<span class="glyphicon glyphicon-star"></span>)</p></h6> </div>
                <div class="col-md-3">
                    <div class="panel panel-success">
                        <ul>
                            <p class="text-left text-info">
                                <li>지역</li>
                                <li>경력</li>
                                <li>보유장비</li>
                            </p>
                        </ul>
                    </div>
                </div>
                <div class="col-md-1"> <img src="http://pingendo.github.io/pingendo-bootstrap/assets/user_placeholder.png" class="img-circle img-responsive">
                    <h6 class="text-center">MatthewKim <p>(<span class="glyphicon glyphicon-star"></span>)</p></h6> </div>
                <div class="col-md-3">
                    <div class="panel panel-success">
                        <ul>
                            <p class="text-left text-info">
                                <li>지역</li>
                                <li>경력</li>
                                <li>보유장비</li>
                            </p>
                        </ul>
                    </div>
                </div>
                <div class="col-md-1"> <img src="http://pingendo.github.io/pingendo-bootstrap/assets/user_placeholder.png" class="img-circle img-responsive">
                    <h6 class="text-center">John Doe <p>(<span class="glyphicon glyphicon-star"></span>)</p></h6></div>
                <div class="col-md-3">
                    <div class="panel panel-success">
                        <ul>
                            <p class="text-left text-info">
                                <li>지역</li>
                                <li>경력</li>
                                <li>보유장비</li>
                            </p>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="clearfix">
                <div class="row">
                    <div class="col-md-1"> <img src="http://pingendo.github.io/pingendo-bootstrap/assets/user_placeholder.png" class="img-circle img-responsive">
                        <h6 class="text-center">Young Kim <p>(<span class="glyphicon glyphicon-star"></span>)</p></h6> </div>
                    <div class="col-md-3">
                        <div class="panel panel-success">
                            <ul>
                                <p class="text-left text-info">
                                    <li>지역</li>
                                    <li>경력</li>
                                    <li>보유장비</li>
                                </p>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-1"> <img src="http://pingendo.github.io/pingendo-bootstrap/assets/user_placeholder.png" class="img-circle img-responsive">
                        <h6 class="text-center">MatthewKim<p>(<span class="glyphicon glyphicon-star"></span>)</p></h6> </div>
                    <div class="col-md-3">
                        <div class="panel panel-success">
                            <ul>
                                <p class="text-left text-info">
                                    <li>지역</li>
                                    <li>경력</li>
                                    <li>보유장비</li>
                                </p>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-1"> <img src="http://pingendo.github.io/pingendo-bootstrap/assets/user_placeholder.png" class="img-circle img-responsive">
                        <h6 class="text-center">John Doe <p>(<span class="glyphicon glyphicon-star"></span>)</p></h6></div>
                    <div class="col-md-3">
                        <div class="panel panel-success">
                            <ul>
                                <p class="text-left text-info">
                                    <li>지역</li>
                                    <li>경력</li>
                                    <li>보유장비</li>
                                </p>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 <!--    <footer class="section section-info">
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
