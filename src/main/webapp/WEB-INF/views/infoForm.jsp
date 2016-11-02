<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<!-- <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css" rel="stylesheet" type="text/css">
</head> -->

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
    <jsp:include page="./header.jsp"></jsp:include>
 <!--    <nav class="navbar navbar-default" data-spy="affix" data-offset="700px">
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
    <br />
    <div class="container">
        <div class="section">
            <ol class="breadcrumb">
                <li><a href="#">홈</a></li>
                <li><a href="#">드론시장동향</a></li>
                <li class="active">작성양식</li>
            </ol>
            </section>
            <!--  second form ================================================== -->
            <section class="col-xs-12">
                <form class="form-horizontal">
                    <fieldset>
                        <legend style="text-align: center; color: white ; font-size: 35px; font-weight: bold">정보 글 작성</legend>
                        <div class="form-group form-group-md">
                            <label class="col-sm-2 control-label" for="inputTittle">제목</label>
                            <div class="col-sm-8">
                                <input class="form-control" type="text" id="inputTittle" placeholder="제목을 입력해 주세요">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="inputNick">닉네임</label>
                            <div class="col-sm-8">
                                <input class="form-control" type="text" id="inputNick" placeholder="권한 보유 작성자만 입력, 닉네임을 자동으로 출력, readonly" readonly>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="selectSite">분류</label>
                            <div class="col-sm-8">
                                <select class="form-control" id="selectSite">
                                    <option>Choose...</option>
                                    <option>정부공공</option>
                                    <option>드론시장</option>
                                    <option>이벤트</option>
                                    <option>해외시장</option>
                                    <option>기타</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="inputContent">내용</label>
                            <div class="col-sm-8">
                                <textarea class="form-control" rows="20" id="inputContent" placeholder="내용을 작성해 주세요"></textarea>
                            </div>
                        </div>
                        <!--                         <div class="form-group">
                            <div class="checkbox">
                                <div class="col-sm-10 col-sm-offset-2">
                                    <label>
                                        <input type="checkbox" id="inputAddList">Add me to e-mail blast</label>
                                </div>
                            </div>
                        </div> -->
                        <div class="form-group">
                            <div class="col-sm-8 col-sm-offset-2 form-inline">
                                <label class="sr-only" for="inputName">검색키워드</label>
                                <input class="form-control" type="text" id="inputName" placeholder="# tag">
                                <input class="form-control" type="password" id="inputPassword" placeholder="# tag">
                                <input class="form-control" type="email" id="inputEmail" placeholder="# tag">
                                <input class="form-control" type="email" id="inputEmail" placeholder="# tag">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-6 input-group ">
                                <input type="file" class="form-control" placeholder="Upload media">
                                <span class="input-group-btn">
                            <button class="btn btn-default" type="button">미디어 올리기</button>
                            </span>
                            </div>
                        </div>
                        <div class="col-sm-8 col-sm-offset-2">
                            <input class="btn btn-default pull-right" type="submit" value="submit">
                        </div>
                    </fieldset>
                </form>
            </section>
        </div>
        <script src="/resources/js/jquery-2.1.4.min.js"></script>
        <script src="/resources/js/bootstrap.min.js"></script>
        <script src="/resources/js/script.js"></script>
</body>

</html>
