<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link href="/resources/css/intro.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script src="/resources/js/jquery-2.1.4.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/script.js"></script>

<style type="text/css">
.navbar-default {
  width: 100%;
  z-index: 9999;
}
body {
	padding-top: 50px;
}
</style>
    
    <nav class="navbar navbar-default navbar-fixed-top">
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
             <!--     <p class="navbar-text">Sharing People's Drone Life</p> -->
                <ul class="nav navbar-nav">
                    <li>
                        <a href="/map/map">드론영상</a>
                    </li>
                    <li class="active">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        카테고리 <span class="caret"></span></a>
                        <ul class="dropdown-menu transparent">
                            <li><a href="#">도시전망</a></li>
                            <li><a href="#">자연경관</a></li>
                            <li><a href="#">시설조망</a></li>
                            <li><a href="#">레져</a></li>
                            <li><a href="#">스포츠</a></li>
                            <li><a href="#">공공</a></li>
                            <li><a href="#">레이싱</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="info" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">
                        정보<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">시장동향</a></li>
                            <li><a href="#">게시판</a></li>
                        </ul>
                    </li>                    
                    <li>
                        <a href="pilot">파일럿</a>
                    </li>
                </ul>
<!--                 <form class="navbar-form navbar-right" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search" name="">
                    </div>
                    <button type="submit" class="btn btn-default">go</button>
                </form> -->
                <div class="pull-right">
	                 <span class="fa fa-fw fa-search" style="padding-top: 13px; font-size: 20px;"></span>
	                 <a href="#">
	                 <i class="material-icons pull-right" style="padding-top: 7px; font-size: 34px; color: #8BC34A">tag_faces</i></a>
	                 &nbsp;
	                <button type="button" class="btn btn-default navbar-btn pull-right">sign-in</button>  
                </div>
            </div>
        </div>
    </nav>

