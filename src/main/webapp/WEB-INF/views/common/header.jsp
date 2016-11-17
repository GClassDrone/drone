<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript">
	$(function(){
		$("#logout-user").on("click", function(){
		$.ajax({
			url: "/sesout",
			type: "post",
			
			success: function(){
				alert("로그아웃");
		}
		});
	});
});
</script>
  
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-ex-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/intro"><span>GClass</span></a>
            </div>
            <div class="collapse navbar-collapse" id="navbar-ex-collapse">
             <!--     <p class="navbar-text">Sharing People's Drone Life</p> -->
                <ul class="nav navbar-nav">
                    <li>
                        <a href="/map/map">드론영상</a>
                    </li>
                    <li class="dropdonw-split-left">
                        <a href="/cate/cateList">분류</a>
                    </li>
                    <li class="dropdown dropdown-split-right hidden-xs">
                    	<a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    		<i class="fa fa-caret-down" aria-hidden="true" title="Toggle dropdown menu"></i>
                    		<span class="sr-only">Toggle dropdown menu</span>
                    		<span class="toggle drop down"></span>
                    	</a>
                        <ul class="dropdown-menu pull-right">
                            <li><a href="/#">도시전망</a></li>
                            <li><a href="#">자연경관</a></li>
                            <li><a href="#">시설조망</a></li>
                            <li><a href="#">레져</a></li>
                            <li><a href="#">스포츠</a></li>
                            <li><a href="#">공공</a></li>
                            <li><a href="#">레이싱</a></li>
                        </ul>
                    </li>
                    <li class="dropdonw-split-left active">
                        <a href="/inform/info">정보</a>
                    </li>
                    <li class="dropdown dropdown-split-right hidden-xs active">
                    	<a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    		<i class="fa fa-caret-down" aria-hidden="true" title="Toggle dropdown menu"></i>
                    		<span class="sr-only">Toggle dropdown menu</span>
                    		<span class="toggle drop down"></span>
                    	</a>
                        <ul class="dropdown-menu pull-right">
                            <li><a href="/inform/info">시장동향</a></li>
                            <li><a href="/boardGroupList">주제별 게시판</a></li>
                            <li><a href="/inform/listNotice">공지사항</a></li>
                            <li><a href="https://goo.gl/orXmEX" target="_blank">기상정보</a></li>
                            <li><a href="http://spaceweather.rra.go.kr/models/kp" target="_blank">지자기수치</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="/mem/ProfileList">파일럿</a>
                    </li>
                </ul>
                <div class="pull-right">
<!-- 	                 <span class="fa fa-fw fa-search" style="padding-top: 13px; font-size: 20px;"></span> -->
				<c:choose>
					<c:when test="${empty mno }">
						<button type="button" id="login-user" class="btn btn-default navbar-btn pull-right">sign-in</button>
					</c:when>
					<c:otherwise>
						<button type="button" id="logout-user" name="out" class="btn btn-default navbar-btn pull-right">sign-out</button>
					</c:otherwise>
				</c:choose>
				
	                
		         	<a href="#">
	                	<i class="material-icons pull-right" style="padding-top: 7px; font-size: 34px; color: #8BC34A">tag_faces</i></a>
                </div>
            
             <div class="col-sm-3 col-md-3 pull-right">
			        <form class="navbar-form" role="search">
				        <div class="input-group">
				            <input type="text" class="form-control" placeholder="Search" name="q">
				            <div class="input-group-btn">
				                <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
				            </div>
				        </div>
			        </form>
			  </div>
            </div>
        </div>
    </nav>

