<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
     <jsp:include page="./header.jsp"></jsp:include>
    </header>
    <div class="section">
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="#">home</a></li>
                <li class="active">파일럿</li>
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
	<jsp:include page="./footer.jsp"></jsp:include>
</body>
</html>
