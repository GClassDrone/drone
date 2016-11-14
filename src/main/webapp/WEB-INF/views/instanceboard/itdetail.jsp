<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../common/include.jsp" %>
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
<form role="form" method="post">
	<input type='hidden' name='bno' value="${BoardDto.bno}">
	<input type='hidden' name='subjno' value="${BoardDto.subjno}">
</form>

    <jsp:include page="../common/header.jsp"></jsp:include>
    <div class="section">
        <div class="container">
            <br />
            <ol class="breadcrumb">
                <li><a href="#">home</a></li>
                <li><a href="#">정보</a></li>
                <li><a href="#">게시판</a></li>
                <li class="active">지금 들어와있는 게시판</li>
            </ol>
            <div class="form-group">
	            <div class="row">
	                <div class="col-md-12">
	                    <div class="thumbnail"><img src="https://ununsplash.imgix.net/photo-1415302199888-384f752645d0?w=1024&amp;q=50&amp;fm=jpg&amp;s=823bdcc1b7ad955f5180efd352561016" class="img-responsive">
	                        <div class="caption">
	                            <h2>글제목${BoardDto.ttl}<small>&nbsp;${BoardDto.regdt} by <a href="#">${BoardDto.mno}</a></small></h2>
	                                <span class="fa"></span>
	                            <hr />
	                            <span style="font-size: 16px">글내용${BoardDto.ctt}</span>
	                        </div>
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
</body>

</html>
