<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
    @import url(http://fonts.googleapis.com/css?family=Exo+2:300);
    @import url(http://fonts.googleapis.com/css?family=Zeyada);
    body {
        margin-top: 60px;
    }
    
    .col-xs-1,.col-xs-2,.col-xs-3,.col-xs-4,.col-xs-5,.col-xs-6,.col-xs-7,.col-xs-8,.col-xs-9,.col-xs-10,.col-xs-11,.col-xs-12,.col-sm-1,.col-sm-2,.col-sm-3,.col-sm-4,.col-sm-5,
.col-sm-6,.col-sm-7,.col-sm-8,.col-sm-9,.col-sm-10,.col-sm-11,.col-sm-12,.col-md-1,.col-md-2,.col-md-3,.col-md-4,.col-md-5,.col-md-6,.col-md-7,.col-md-8,.col-md-9,.col-md-10,
.col-md-11,.col-md-12,.col-lg-1,.col-lg-2,.col-lg-3,.col-lg-4,.col-lg-5,.col-lg-6,.col-lg-7,.col-lg-8,.col-lg-9,.col-lg-10,.col-lg-11,.col-lg-12{position:relative;padding: 1px;}
    
    
    #gallery {
        height: 100%;
    }
    
    figure {
        height: 250px;
        width: 250px;
        display: block;
        overflow: hidden;
        z-index: 100;
    }
    
    figcaption {
        height: 35%;
        width: 97%;
        background-color: #ff8f00;
        text-align: center;
        position: absolute;
        bottom: 0;
        left: -500px;
        opacity: 0;
        padding: 5px;
    }
    
    a {
        color: #fff;
    }
    
    a:hover figcaption {
        opacity: 0.5;
        left: 0;
        color: #fff;
        transition: all 0.7s;
    }
    </style>
</head>
<body>
     <div>
        <figure class="col-md-3 col-sm-3 col-xs-12 ">
            <a href="#">
                <img class="img" src="http://placehold.it/350x250" alt="" />
                <figcaption>
                    <h1>
                    <i class="fa fa-play-circle"> PLAY</i>
                  </h1>
                </figcaption>
            </a>
        </figure>
        <figure class="col-md-3 col-sm-3 col-xs-12 ">
            <a href="#">
                <img class="img" src="http://placehold.it/350x250" alt="" />
                <figcaption>
                    <h1>
                    <i class="fa fa-play-circle"> PLAY</i>
                  </h1>
                </figcaption>
            </a>
        </figure>
        <figure class="col-md-3 col-sm-3 col-xs-12 ">
            <a href="#">
                <img class="img" src="http://placehold.it/350x250" alt="" />
                <figcaption>
                    <h1>
                    <i class="fa fa-play-circle"> PLAY</i>
                  </h1>
                </figcaption>
            </a>
        </figure>
        <figure class="col-md-3 col-sm-3 col-xs-12 ">
            <a href="#">
                <img class="img" src="http://placehold.it/350x250" alt="" />
                <figcaption>
                    <h1>
                    <i class="fa fa-play-circle"> PLAY</i>
                  </h1>
                </figcaption>
            </a>
        </figure>
    </div>
</body>
</html>