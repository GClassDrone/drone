<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>
<style type="text/css">
.bg {
     background-color: #3f51b5;
     background-position: center center;
     background-size: cover;
     height: 150px;

/* h1{
    font-size:4.5em;
}

.profile {
    width: 250px;
    height: 250px;
}

p{
 font-weight:400;
 font-size:3em;   
} 

h3 {
    font-weight: 800;
    color: #f0ad4e;
    font-size: 2em;
} */

    
small {
    text-align: center;
    font-size: 2em;
    text-decoration: underline;
    color: #ffb74d;
}
</style>
<jsp:include page="common/include.jsp"></jsp:include>
</head>

<body>
<jsp:include page="common/header.jsp"></jsp:include>

<div class="container-fluid bg"> <br /><br />
  <h1>Team Member</h1>
<!-- 	  <p class="lead">Bootstrap Jumbotron to highlight speciality of your wesbites.</p>
	  <hr class="m-y-md"> -->
  <p>본 프로젝트 구축에 참여한 멤버 소개</p>
</div>

<div class="section">
    <div class="container"> 
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-center text-warning"><strong>GClass</strong></h1>
                <p class="text-center">We are a group of trained individuals from JH Bang.</p>
            </div>
        </div>
        <div class="row"><br />
            <div class="col-md-2  col-md-offset-1">
                <img src="/resources/images/castleMo.png" class="center-block img-circle">
                <h3 class="text-center">Castle Mo.
                    <br/>
                    <small class="text-warning">CAO<br />
                    (Chief of Action Officer)</small>
                    </h3>
            </div>
            <div class="col-md-2">
                <img src="/resources/images/dcLee.png" class="center-block img-circle">
                <h3 class="text-center">DC Lee.
                    <br/>
                    <small  class="text-warning">CBO<br />
                    (Chief of BU Officer)</small>
                    </h3>
            </div>
            <div class="col-md-2">
                <img src="/resources/images/g9Kim.png" class="center-block img-circle">
                <h3 class="text-center">G9 Kim.
                    <br/>
                    <small class="text-warning">CCO<br />
                    (Chief of Code Officer)</small>
                    </h3>
            </div>
            <div class="col-md-2">
                <img src="/resources/images/cbs.png" class="img-circle center-block profile">
                <h3 class="text-center">BS Choi.
                    <br/>
                    <small class="text-warning">CDO<br />
                    (Chief of DB Officer)</small>
                    </h3>
            </div>
            <div class="col-md-2">
                <img src="/resources/images/paulYoung.png" class="center-block img-circle">
                <h3 class="text-center">Paul Young.
                    <br/>
                    <small class="text-warning">CEO<br />
                    (Chief of Edit Officer)</small>
                    </h3>
            </div>
        </div>
    </div>
</div>

<jsp:include page="common/footer.jsp"></jsp:include>
</body>

</html>