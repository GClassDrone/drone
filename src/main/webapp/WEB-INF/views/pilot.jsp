<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<!--   <meta charset="utf-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1"> -->
 
<style type="text/css">
    
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
    
    <jsp:include page="common/include.jsp"></jsp:include>
</head>


<body>
 <jsp:include page="common/header.jsp"></jsp:include>
    <header class="bgimage hidden-xs">
    </header>

    <div class="section">
        <div class="container">
           <!--  <ol class="breadcrumb">
                <li><a href="#">home</a></li>
                <li class="active">파일럿</li>
            </ol> -->
            <div class="row">
                <div class="col-md-12">
                    <h1 class="text-center">Pilot</h1>
                    <p class="text-center">We are a group of skilled individuals.</p>
                </div>
            </div>
        </div>
        <div class="container">
            <br />
            <jsp:include page="common/pilotList.jsp"></jsp:include>
        </div>
        <p class="more">
            <button type="button" class="btn btn-default btn-sm center">
                <span class="fa fa-2x fa-fw fa-angle-double-down"></span>
            </button>
        </p>
    </div>
	<jsp:include page="common/footer.jsp"></jsp:include>
</body>

</html>
