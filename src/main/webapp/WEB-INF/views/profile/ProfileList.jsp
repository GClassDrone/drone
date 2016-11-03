<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link href="/resources/css/intro.css" rel="stylesheet" type="text/css">
        <script src="/resources/js/jquery-2.1.4.min.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/script.js"></script>
    <style type="text/css">
    .navbar-default {
        width: 100%;
        z-index: 9999;
    }
    
    .bgimage {
        background-image: url('./images/infoboard_bg.jpg');
        background-position: center center;
        background-size: cover;
        height: 320px;
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
    <header class="bgimage hidden-xs">
        <nav class="navbar navbar-default" data-spy="affix" data-offset="700px">
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
        </nav>
    </header>
    <div class="section">
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="#">home</a></li>
                <li class="active">파일럿</li>
                <!-- <li><a href="#">grooming</a></li> -->
            </ol>
            <div class="row">
                <div class="col-md-12">
                    <h1 class="text-center">Pilot</h1>
                    <p class="text-center">We are a group of skilled individuals.</p>
                </div>
            </div>
        </div>
        <div class="container">
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
            <br />
            <div class="clearfix"></div>
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
            <br />
            <div class="clearfix"></div>
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
            <br />
            <div class="clearfix"></div>
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
        <p class="more">
            <button type="button" class="btn btn-default btn-sm center">
                <span class="fa fa-2x fa-fw fa-angle-double-down"></span>
            </button>
        </p>
    </div>
    <footer class="section section-info">
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
    </footer>
</body>

</html>