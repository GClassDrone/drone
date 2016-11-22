<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>
<head>
<jsp:include page="../common/include.jsp"></jsp:include>
<link href="/resources/css/map/weather.css" rel="stylesheet" type="text/css">
<script src="/resources/js/map/jquery.xdomainajax.js"></script>
<script src="/resources/js/inform/inform.js"></script>
<script type="text/javascript">
$(function(){
	var formObj = $("form[role='form']").eq(0);
	console.log(formObj);
	$(".btn-danger").on("click", function(){
		formObj.attr("action", "/inform/infoInsert");
		formObj.attr("method", "get");
		formObj.submit();
	});
});
</script>
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
<div class="wrapper" style="display:inline-block;float:left;margin-left:100px;">
  <section>
    <h1>Los Angeles, CA <a href="#" class="add">+</a></h1>
    <div class="temperature entypo-light-up">
      <h2>64<span class="degree-symbol">°</span>F<span class="celcius">| C</span></h2>
    </div>
    <ul>
      <li class="fontawesome-leaf left">
        <span>4 mph</span>
      </li>
      <li class="fontawesome-tint center">
        <span>65%</span>
      </li>
      <li class="fontawesome-umbrella right">
        <span>10%</span>
      </li>
    </ul> 
    <div class="bullets">
      <span class="entypo-record active"></span>
      <span class="entypo-record"></span>
      <span class="entypo-record"></span>
    </div>
    <a href="#">View on Wiki <span class="external-link fontawesome-external-link"></span></a>
    <a href="#" class="share fontawesome-share"></a>
  </section>
</div>

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
        <p style="text-align: center;">시장 동향</p>
       <c:if test="${levno < 3 }">
        <p align="right"> 
        	<input type="button" class="btn btn-danger" value="글 등록" />
        </p>
        </c:if> 
    </div>
<<<<<<< HEAD
    <div class="container">
            <div class="co-sm-12" id="infolist"></div>
=======
    <div class="container" id="infolist">

>>>>>>> b1f706c87db0e07f8cc7eff7c4ad0aba27c0fcf2
        <!-- row -->
    </div>
    <div id="pageBtn-wrap">
     <p class="more">
         <button type="button" class="btn btn-default btn-sm center">
             <span class="fa fa-2x fa-fw fa-angle-double-down"></span> 
         </button>
     </p>
    </div>

    <jsp:include page="../common/footer.jsp"></jsp:include>
</body>

</html>
