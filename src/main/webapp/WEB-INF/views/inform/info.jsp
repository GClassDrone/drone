<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<!--     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link href="/resources/css/intro.css" rel="stylesheet" type="text/css">  -->
<jsp:include page="../common/include.jsp"></jsp:include>
<script src="/resources/js/inform/inform.js"></script>
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
    <jsp:include page="../common/header.jsp"></jsp:include>
    <header class="bgimage hidden-xs">
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
                <li class="active"><a href="/info">시장동향</a></li>
                <li><a href="/boardGroupList">주제별 게시판</a></li>
                <li><a href="/inform/listNotice">공지사항</a></li>
                <li><a href="https://goo.gl/orXmEX" target="_blank">기상정보</a></li>
                <li><a href="http://spaceweather.rra.go.kr/models/kp" target="_blank">지자기수치</a></li>
            </ul>
        </div><br />
        <h1 style="text-align: center;"><strong>드론 시장동향</strong></h1>
        <p style="text-align: center;">공지사항 텍스트 요약 ~~~~~~~~</p>
    </div>
    <div class="container">
        <div class="row">
          
          <div id ="infolist"></div>
			<!-- <section class="col-xs-offset-3 col-xs-6 col-sm-offset-0 col-sm-6 col-md-3">
				<div class="thumbnail">
			  	  <img alt="Bootstrap Thumbnail First" src="http://lorempixel.com/output/people-q-c-600-200-1.jpg">
			 		   <div class="caption">
			        <h3>Thumbnail label</h3>
			        <p>
			            Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
			        </p>
			        <p>
			            <a class="btn btn-primary" href="/infoDetail">Go</a>
			        </p>
			    </div>
			</div>
			</section>  -->
            
        </div>
        
        
        <br />
        <!-- row -->
        <p class="more">
            <button type="button" class="btn btn-default btn-sm center">
                <span class="fa fa-2x fa-fw fa-angle-double-down"></span> 
            </button>
        </p>
    </div>

    <jsp:include page="../common/footer.jsp"></jsp:include>
</body>

</html>
