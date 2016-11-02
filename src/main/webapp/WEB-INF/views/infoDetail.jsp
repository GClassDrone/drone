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
    .thumbnail img {
        height: 600px
    }
    </style>
</head>

<body>
    <jsp:include page="common/header.jsp"></jsp:include>
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
    <div class="section">
        <div class="container">
            <br />
            <ol class="breadcrumb">
                <li><a href="#">홈</a></li>
                <li><a href="#">드론시장동향</a></li>
                <li class="active">정보상세</li>
            </ol>
            <div class="row">
                <div class="col-md-12">
                    <div class="thumbnail"><img src="https://ununsplash.imgix.net/photo-1415302199888-384f752645d0?w=1024&amp;q=50&amp;fm=jpg&amp;s=823bdcc1b7ad955f5180efd352561016" class="img-responsive">
                        <div class="caption">
                            <h2>Tittle<small>&nbsp; 2016/10/28 12:42 by <a href="#">matthewkim</a></small></h2>
                            <a class="btn btn-default btn-sm center" href="#reply"><span class="fa fa-2x fa-fw umbs-o-up -square -plus-square -square fa-comment-o"></span> 0
                            </a>
                            <button type="button" class="btn btn-default btn-sm center">
                                <span class="fa fa-2x fa-fw fa-thumbs-o-up"></span></button>
                            <button type="button" class="btn btn-default btn-sm center">
                                <span class="fa fa-2x fa-fw fa-thumbs-up"></span> 0 </button>
                            <button type="button" class="btn btn-default btn-sm center">
                                <span class="fa fa-2x fa-fw umbs-o-up -square -plus-square -square fa-heart"></span> 0 </button>
                            <button type="button" class="btn btn-default btn-sm center">
                                <span class="fa fa-2x fa-fw umbs-o-up fa-facebook-square"></span></button>
                            <button type="button" class="btn btn-default btn-sm center">
                                <span class="fa fa-2x fa-fw umbs-o-up -square fa-google-plus-square"></span></button>
                            <button type="button" class="btn btn-default btn-sm center">
                                <span class="fa fa-2x fa-fw umbs-o-up -square -plus-square fa-twitter-square"></span></button>
                            <button type="button" class="btn btn-default btn-sm center"><span style="font-size: 16px">Share</span>
                                <span class="fa fa-2x fa-fw umbs-o-up -square -plus-square -square -o fa-share-square-o"></span></button>
                            <hr />
                            <span style="font-size: 16px"> Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row pull-right">
            <button type="button" class="btn btn-warning btn-sm center">
                <span class="fa fa-3x fa-fw umbs-o-up fa-facebook-square"></span></button>
            <button type="button" class="btn btn-warning btn-sm center">
                <span class="fa fa-3x fa-fw umbs-o-up -square fa-google-plus-square"></span></button>
            <button type="button" class="btn btn-warning btn-sm center">
                <span class="fa fa-3x fa-fw umbs-o-up -square -plus-square fa-twitter-square"></span></button>
            <button type="button" class="btn btn-warning btn-sm center">
                <img src="/resources/images/kakaostory.png"></button>
            <button type="button" class="btn btn-warning btn-sm center">
                <img src="/resources/images/band2.png"></button>
        </div>
    </div>
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div id="reply" class="well text-info">
                        <h2>Reply<small>&nbsp; 2시간전 by <a href="#">matthewkim</a></small></h2>
                        <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
                        <form role="form">
                            <div class="form-group">
                                <label class="control-label" for="inputComments">Leave a comment</label>
                                <input class="form-control" id="inputComments" placeholder="Enter comment" type="text">
                            </div>
                            <button type="submit" class="btn btn-info btn-sm" data-toggle="button">답글달기</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <form role="form">
                        <div class="form-group">
                                    <label for="inputComments">Write reply</label>
                            <textarea class="form-control" id="inputComments" placeholder="Enter reply"></textarea>
                        </div>
                        <button type="submit" class="btn btn-block btn-warning">댓글올리기</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
