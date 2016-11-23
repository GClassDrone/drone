<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>
<head>
<jsp:include page="../common/include.jsp"></jsp:include>
<!-- <link href="/resources/css/map/weather.css" rel="stylesheet" type="text/css"> -->
<link href="/resources/css/inform/info.css" rel="stylesheet" type="text/css">
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
</head>

<body>
    <jsp:include page="../common/header.jsp"></jsp:include>
    <header class="bgimage hidden-xs">
    </header>
<!-- <div class="wrapper" style="display:inline-block;float:left;margin-left:100px;">
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
</div> -->

    <div class="container" id="infolist">
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
    
    <div class="container-fluid">
        <div class="col-xs-12 col-md-9" id="infolist"></div>
        <div class="col-xs-12 col-md-3">
        

        <div class="row">
            <div class="col-md-12">
                <div id="card" class="weater">
                    <div class="city-selected">
                        <article>
                            <div class="info">
                                <div class="city"><span>City:</span> Skopje</div>
                                <div class="night">Night - 22:07 PM</div>

                                <div class="temp">3°</div>

                                <div class="wind">
                                    <svg version="1.1" id="wind" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                         viewBox="0 0 300.492 300.492" style="enable-background:new 0 0 300.492 300.492;" xml:space="preserve">
                                    <g>
                                        <g>
                                            <g>
                                                <path style="fill:#FFFFFF;" d="M287.166,100.421c-9.502-13.217-24.046-23.034-39.868-26.945
                                                    c-5.309-1.365-10.845-2.061-16.453-2.061c-11.531,0-22.257,3.035-30.981,8.746c-14.076,8.86-23.709,23.91-25.759,40.157
                                                    c-2.698,16.644,4.357,34.315,17.519,43.959c7.555,5.716,17.47,8.991,27.201,8.991c7.332,0,14.109-1.811,19.575-5.216
                                                    c14.936-8.991,21.495-28.577,14.626-43.665c-3.525-7.669-10.427-13.647-18.455-15.975c-2.361-0.696-4.754-1.082-7.131-1.164
                                                    l-0.288,5.434c1.974,0.141,3.916,0.544,5.782,1.202c6.288,2.143,11.536,7.093,14.044,13.288c1.256,2.975,1.893,6.211,1.822,9.355
                                                    c-0.071,3.421-0.658,6.565-1.855,9.861c-2.366,6.222-6.967,11.667-12.678,14.968c-10.269,6.233-26.624,4.329-37.171-4.172
                                                    c-10.405-8.278-15.529-21.87-13.364-35.528c1.8-13.413,9.85-25.71,21.56-32.912c5.553-3.514,12.069-5.803,18.868-6.636
                                                    c2.823-0.359,6.619-0.413,10.285-0.131c3.497,0.31,7.033,0.903,10.231,1.713c13.358,3.437,25.623,11.863,33.668,23.154
                                                    c8.365,11.324,12.325,24.96,11.438,39.477c-0.587,14.098-5.423,28.305-13.619,40.021c-8.159,11.759-19.907,21.354-33.108,27.027
                                                    c-6.059,2.654-13.07,4.574-20.832,5.695c-4.803,0.68-9.959,0.8-16.203,0.892l-176.09,2.339l-29.817,1.164l0.109,5.439
                                                    l199.015,0.131c2.295,0,4.596,0,6.88,0.022l4.253,0.027c3.835,0,8.376-0.071,12.988-0.593c8.36-1.033,16.263-3.111,23.464-6.168
                                                    c14.925-6.206,28.283-16.905,37.606-30.127c9.426-13.206,15.072-29.36,15.893-45.438
                                                    C301.476,130.293,296.679,113.399,287.166,100.421z"></path>
                                            </g>
                                            <g>
                                                <path style="fill:#FFFFFF;" d="M106.617,209.839c0.664-0.027,1.463-0.038,2.23-0.038l5.445,0.065
                                                    c1.528,0.027,2.959,0.049,4.395,0.049c2.801,0,6.511-0.076,10.438-0.647c7.626-1.246,14.849-4.471,20.864-9.312
                                                    c12.374-9.752,18.874-25.999,16.562-41.391c-2.371-15.648-15.953-28.697-31.547-30.35c-8.539-1.05-16.421,0.979-22.404,5.619
                                                    c-6.451,4.824-10.688,12.091-11.612,19.842c-1.229,8.077,1.806,16.589,7.664,21.637c5.803,5.287,15.431,7.43,22.387,5.037
                                                    c5.102-1.702,9.42-5.798,11.563-10.971l-4.928-2.284c-1.817,3.519-5.096,6.124-8.762,6.957c-1.218,0.277-2.317,0.408-3.367,0.408
                                                    c-4.329,0-8.762-1.866-11.591-4.89c-3.835-4.003-5.249-9.11-4.096-14.762c1.044-5.08,4.308-10.106,8.496-13.124
                                                    c4.449-3.176,9.284-4.286,15.349-3.405c11.123,1.441,20.603,10.943,22.077,22.229c1.996,11.335-2.877,24.013-12.173,31.585
                                                    c-4.585,3.867-10.193,6.494-16.236,7.604c-2.469,0.479-4.922,0.571-7.647,0.642l-104.506,2.752
                                                    C10.264,203.524,5.134,203.9,0,204.275l0.19,5.434L106.617,209.839z"></path>
                                            </g>
                                        </g>
                                    </g>
									</svg>
                                    <span>25 km/h</span>
                                </div>
                            </div>
                            <div class="icon">
                                <svg version="1.1" id="icon" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                     viewBox="0 0 59.077 59.077" style="enable-background:new 0 0 59.077 59.077;" xml:space="preserve">
                                <g>
                                    <path d="M55.906,28.463c-0.235,0.129-0.469,0.258-0.711,0.379c-11.339,5.68-25.186,1.072-30.864-10.268
                                        C21.8,13.517,21.22,7.726,22.699,2.268L23.315,0l-2.061,1.129C9.807,7.402,5.107,21.605,10.554,33.464
                                        c0.231,0.501,0.826,0.722,1.326,0.491c0.502-0.23,0.723-0.824,0.492-1.326C7.684,22.424,11.164,10.333,20.253,4.09
                                        c-0.891,5.221-0.102,10.602,2.289,15.379c5.952,11.884,20.155,16.965,32.216,11.78c-2.045,5.346-6.026,9.775-11.183,12.357
                                        c-3.167,1.586-6.557,2.407-10.074,2.438c-0.638,0.007-1.285-0.016-1.917-0.063c-0.551-0.05-1.031,0.371-1.072,0.922
                                        c-0.041,0.551,0.371,1.031,0.922,1.072c0.617,0.046,1.244,0.07,1.867,0.07c0.073,0,0.146,0,0.218-0.001
                                        c3.825-0.034,7.51-0.926,10.952-2.65c6.357-3.183,11.071-8.95,12.935-15.822l0.562-2.239L55.906,28.463z"></path>
                                    <path d="M31.271,43.412c0.157,0.091,0.329,0.134,0.499,0.134c0.346,0,0.682-0.179,0.867-0.5c0.276-0.479,0.112-1.09-0.366-1.366
                                        l-2.83-1.634l2.83-1.634c0.479-0.276,0.643-0.888,0.366-1.366c-0.277-0.479-0.89-0.642-1.366-0.366l-2.83,1.634v-3.268
                                        c0-0.552-0.447-1-1-1s-1,0.448-1,1v3.268l-2.83-1.634c-0.478-0.276-1.09-0.113-1.366,0.366c-0.276,0.479-0.112,1.09,0.366,1.366
                                        l2.83,1.634l-2.83,1.634c-0.479,0.276-0.643,0.888-0.366,1.366c0.186,0.321,0.521,0.5,0.867,0.5c0.17,0,0.342-0.043,0.499-0.134
                                        l2.83-1.634v3.268c0,0.552,0.447,1,1,1s1-0.448,1-1v-3.268L31.271,43.412z"></path>
                                    <path d="M11.637,37.046c-0.277-0.479-0.89-0.642-1.366-0.366l-2.83,1.634v-3.268c0-0.552-0.447-1-1-1s-1,0.448-1,1v3.268
                                        l-2.83-1.634c-0.478-0.276-1.09-0.113-1.366,0.366c-0.276,0.479-0.112,1.09,0.366,1.366l2.83,1.634l-2.83,1.634
                                        c-0.479,0.276-0.643,0.888-0.366,1.366c0.186,0.321,0.521,0.5,0.867,0.5c0.17,0,0.342-0.043,0.499-0.134l2.83-1.634v3.268
                                        c0,0.552,0.447,1,1,1s1-0.448,1-1v-3.268l2.83,1.634c0.157,0.091,0.329,0.134,0.499,0.134c0.346,0,0.682-0.179,0.867-0.5
                                        c0.276-0.479,0.112-1.09-0.366-1.366l-2.83-1.634l2.83-1.634C11.749,38.136,11.913,37.524,11.637,37.046z"></path>
                                    <path d="M22.637,50.077c-0.277-0.479-0.89-0.642-1.366-0.366l-2.83,1.634v-3.268c0-0.552-0.447-1-1-1s-1,0.448-1,1v3.268
                                        l-2.83-1.634c-0.478-0.276-1.09-0.112-1.366,0.366s-0.112,1.09,0.366,1.366l2.83,1.634l-2.83,1.634
                                        c-0.479,0.276-0.643,0.888-0.366,1.366c0.186,0.321,0.521,0.5,0.867,0.5c0.17,0,0.342-0.043,0.499-0.134l2.83-1.634v3.268
                                        c0,0.552,0.447,1,1,1s1-0.448,1-1v-3.268l2.83,1.634c0.157,0.091,0.329,0.134,0.499,0.134c0.346,0,0.682-0.179,0.867-0.5
                                        c0.276-0.479,0.112-1.09-0.366-1.366l-2.83-1.634l2.83-1.634C22.749,51.167,22.913,50.556,22.637,50.077z"></path>
                                </svg>
                            </div>

                        </article>
                        
                        <figure style="background-image: url(http://136.243.1.253/~creolitic/bootsnipp/home.jpg)"></figure>
                    </div>
                    <div class="days">
                        <div class="row row-no-gutter">
                            <div class="col-md-4">
                                <div class="day">
                                    <h1>Monday</h1>
                                    <svg version="1.1" id="icon" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 59.077 59.077" style="enable-background:new 0 0 59.077 59.077;" xml:space="preserve">
                                        <g>
                                            <path d="M55.906,28.463c-0.235,0.129-0.469,0.258-0.711,0.379c-11.339,5.68-25.186,1.072-30.864-10.268
                                                C21.8,13.517,21.22,7.726,22.699,2.268L23.315,0l-2.061,1.129C9.807,7.402,5.107,21.605,10.554,33.464
                                                c0.231,0.501,0.826,0.722,1.326,0.491c0.502-0.23,0.723-0.824,0.492-1.326C7.684,22.424,11.164,10.333,20.253,4.09
                                                c-0.891,5.221-0.102,10.602,2.289,15.379c5.952,11.884,20.155,16.965,32.216,11.78c-2.045,5.346-6.026,9.775-11.183,12.357
                                                c-3.167,1.586-6.557,2.407-10.074,2.438c-0.638,0.007-1.285-0.016-1.917-0.063c-0.551-0.05-1.031,0.371-1.072,0.922
                                                c-0.041,0.551,0.371,1.031,0.922,1.072c0.617,0.046,1.244,0.07,1.867,0.07c0.073,0,0.146,0,0.218-0.001
                                                c3.825-0.034,7.51-0.926,10.952-2.65c6.357-3.183,11.071-8.95,12.935-15.822l0.562-2.239L55.906,28.463z"></path>
                                            <path d="M31.271,43.412c0.157,0.091,0.329,0.134,0.499,0.134c0.346,0,0.682-0.179,0.867-0.5c0.276-0.479,0.112-1.09-0.366-1.366
                                                l-2.83-1.634l2.83-1.634c0.479-0.276,0.643-0.888,0.366-1.366c-0.277-0.479-0.89-0.642-1.366-0.366l-2.83,1.634v-3.268
                                                c0-0.552-0.447-1-1-1s-1,0.448-1,1v3.268l-2.83-1.634c-0.478-0.276-1.09-0.113-1.366,0.366c-0.276,0.479-0.112,1.09,0.366,1.366
                                                l2.83,1.634l-2.83,1.634c-0.479,0.276-0.643,0.888-0.366,1.366c0.186,0.321,0.521,0.5,0.867,0.5c0.17,0,0.342-0.043,0.499-0.134
                                                l2.83-1.634v3.268c0,0.552,0.447,1,1,1s1-0.448,1-1v-3.268L31.271,43.412z"></path>
                                            <path d="M11.637,37.046c-0.277-0.479-0.89-0.642-1.366-0.366l-2.83,1.634v-3.268c0-0.552-0.447-1-1-1s-1,0.448-1,1v3.268
                                                l-2.83-1.634c-0.478-0.276-1.09-0.113-1.366,0.366c-0.276,0.479-0.112,1.09,0.366,1.366l2.83,1.634l-2.83,1.634
                                                c-0.479,0.276-0.643,0.888-0.366,1.366c0.186,0.321,0.521,0.5,0.867,0.5c0.17,0,0.342-0.043,0.499-0.134l2.83-1.634v3.268
                                                c0,0.552,0.447,1,1,1s1-0.448,1-1v-3.268l2.83,1.634c0.157,0.091,0.329,0.134,0.499,0.134c0.346,0,0.682-0.179,0.867-0.5
                                                c0.276-0.479,0.112-1.09-0.366-1.366l-2.83-1.634l2.83-1.634C11.749,38.136,11.913,37.524,11.637,37.046z"></path>
                                            <path d="M22.637,50.077c-0.277-0.479-0.89-0.642-1.366-0.366l-2.83,1.634v-3.268c0-0.552-0.447-1-1-1s-1,0.448-1,1v3.268
                                                l-2.83-1.634c-0.478-0.276-1.09-0.112-1.366,0.366s-0.112,1.09,0.366,1.366l2.83,1.634l-2.83,1.634
                                                c-0.479,0.276-0.643,0.888-0.366,1.366c0.186,0.321,0.521,0.5,0.867,0.5c0.17,0,0.342-0.043,0.499-0.134l2.83-1.634v3.268
                                                c0,0.552,0.447,1,1,1s1-0.448,1-1v-3.268l2.83,1.634c0.157,0.091,0.329,0.134,0.499,0.134c0.346,0,0.682-0.179,0.867-0.5
                                                c0.276-0.479,0.112-1.09-0.366-1.366l-2.83-1.634l2.83-1.634C22.749,51.167,22.913,50.556,22.637,50.077z"></path>
                                        </g>
                                    </svg>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="day">
                                    <h1>Tuesday</h1>
                                    <svg version="1.1" id="icon" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 59.077 59.077" style="enable-background:new 0 0 59.077 59.077;" xml:space="preserve">
                                        <g>
                                            <path d="M55.906,28.463c-0.235,0.129-0.469,0.258-0.711,0.379c-11.339,5.68-25.186,1.072-30.864-10.268
                                                C21.8,13.517,21.22,7.726,22.699,2.268L23.315,0l-2.061,1.129C9.807,7.402,5.107,21.605,10.554,33.464
                                                c0.231,0.501,0.826,0.722,1.326,0.491c0.502-0.23,0.723-0.824,0.492-1.326C7.684,22.424,11.164,10.333,20.253,4.09
                                                c-0.891,5.221-0.102,10.602,2.289,15.379c5.952,11.884,20.155,16.965,32.216,11.78c-2.045,5.346-6.026,9.775-11.183,12.357
                                                c-3.167,1.586-6.557,2.407-10.074,2.438c-0.638,0.007-1.285-0.016-1.917-0.063c-0.551-0.05-1.031,0.371-1.072,0.922
                                                c-0.041,0.551,0.371,1.031,0.922,1.072c0.617,0.046,1.244,0.07,1.867,0.07c0.073,0,0.146,0,0.218-0.001
                                                c3.825-0.034,7.51-0.926,10.952-2.65c6.357-3.183,11.071-8.95,12.935-15.822l0.562-2.239L55.906,28.463z"></path>
                                            <path d="M31.271,43.412c0.157,0.091,0.329,0.134,0.499,0.134c0.346,0,0.682-0.179,0.867-0.5c0.276-0.479,0.112-1.09-0.366-1.366
                                                l-2.83-1.634l2.83-1.634c0.479-0.276,0.643-0.888,0.366-1.366c-0.277-0.479-0.89-0.642-1.366-0.366l-2.83,1.634v-3.268
                                                c0-0.552-0.447-1-1-1s-1,0.448-1,1v3.268l-2.83-1.634c-0.478-0.276-1.09-0.113-1.366,0.366c-0.276,0.479-0.112,1.09,0.366,1.366
                                                l2.83,1.634l-2.83,1.634c-0.479,0.276-0.643,0.888-0.366,1.366c0.186,0.321,0.521,0.5,0.867,0.5c0.17,0,0.342-0.043,0.499-0.134
                                                l2.83-1.634v3.268c0,0.552,0.447,1,1,1s1-0.448,1-1v-3.268L31.271,43.412z"></path>
                                            <path d="M11.637,37.046c-0.277-0.479-0.89-0.642-1.366-0.366l-2.83,1.634v-3.268c0-0.552-0.447-1-1-1s-1,0.448-1,1v3.268
                                                l-2.83-1.634c-0.478-0.276-1.09-0.113-1.366,0.366c-0.276,0.479-0.112,1.09,0.366,1.366l2.83,1.634l-2.83,1.634
                                                c-0.479,0.276-0.643,0.888-0.366,1.366c0.186,0.321,0.521,0.5,0.867,0.5c0.17,0,0.342-0.043,0.499-0.134l2.83-1.634v3.268
                                                c0,0.552,0.447,1,1,1s1-0.448,1-1v-3.268l2.83,1.634c0.157,0.091,0.329,0.134,0.499,0.134c0.346,0,0.682-0.179,0.867-0.5
                                                c0.276-0.479,0.112-1.09-0.366-1.366l-2.83-1.634l2.83-1.634C11.749,38.136,11.913,37.524,11.637,37.046z"></path>
                                            <path d="M22.637,50.077c-0.277-0.479-0.89-0.642-1.366-0.366l-2.83,1.634v-3.268c0-0.552-0.447-1-1-1s-1,0.448-1,1v3.268
                                                l-2.83-1.634c-0.478-0.276-1.09-0.112-1.366,0.366s-0.112,1.09,0.366,1.366l2.83,1.634l-2.83,1.634
                                                c-0.479,0.276-0.643,0.888-0.366,1.366c0.186,0.321,0.521,0.5,0.867,0.5c0.17,0,0.342-0.043,0.499-0.134l2.83-1.634v3.268
                                                c0,0.552,0.447,1,1,1s1-0.448,1-1v-3.268l2.83,1.634c0.157,0.091,0.329,0.134,0.499,0.134c0.346,0,0.682-0.179,0.867-0.5
                                                c0.276-0.479,0.112-1.09-0.366-1.366l-2.83-1.634l2.83-1.634C22.749,51.167,22.913,50.556,22.637,50.077z"></path>
                                        </g>
                                    </svg>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="day">
                                    <h1>Wednesday</h1>
                                    <svg version="1.1" id="icon" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 59.077 59.077" style="enable-background:new 0 0 59.077 59.077;" xml:space="preserve">
                                        <g>
                                            <path d="M55.906,28.463c-0.235,0.129-0.469,0.258-0.711,0.379c-11.339,5.68-25.186,1.072-30.864-10.268
                                                C21.8,13.517,21.22,7.726,22.699,2.268L23.315,0l-2.061,1.129C9.807,7.402,5.107,21.605,10.554,33.464
                                                c0.231,0.501,0.826,0.722,1.326,0.491c0.502-0.23,0.723-0.824,0.492-1.326C7.684,22.424,11.164,10.333,20.253,4.09
                                                c-0.891,5.221-0.102,10.602,2.289,15.379c5.952,11.884,20.155,16.965,32.216,11.78c-2.045,5.346-6.026,9.775-11.183,12.357
                                                c-3.167,1.586-6.557,2.407-10.074,2.438c-0.638,0.007-1.285-0.016-1.917-0.063c-0.551-0.05-1.031,0.371-1.072,0.922
                                                c-0.041,0.551,0.371,1.031,0.922,1.072c0.617,0.046,1.244,0.07,1.867,0.07c0.073,0,0.146,0,0.218-0.001
                                                c3.825-0.034,7.51-0.926,10.952-2.65c6.357-3.183,11.071-8.95,12.935-15.822l0.562-2.239L55.906,28.463z"></path>
                                            <path d="M31.271,43.412c0.157,0.091,0.329,0.134,0.499,0.134c0.346,0,0.682-0.179,0.867-0.5c0.276-0.479,0.112-1.09-0.366-1.366
                                                l-2.83-1.634l2.83-1.634c0.479-0.276,0.643-0.888,0.366-1.366c-0.277-0.479-0.89-0.642-1.366-0.366l-2.83,1.634v-3.268
                                                c0-0.552-0.447-1-1-1s-1,0.448-1,1v3.268l-2.83-1.634c-0.478-0.276-1.09-0.113-1.366,0.366c-0.276,0.479-0.112,1.09,0.366,1.366
                                                l2.83,1.634l-2.83,1.634c-0.479,0.276-0.643,0.888-0.366,1.366c0.186,0.321,0.521,0.5,0.867,0.5c0.17,0,0.342-0.043,0.499-0.134
                                                l2.83-1.634v3.268c0,0.552,0.447,1,1,1s1-0.448,1-1v-3.268L31.271,43.412z"></path>
                                            <path d="M11.637,37.046c-0.277-0.479-0.89-0.642-1.366-0.366l-2.83,1.634v-3.268c0-0.552-0.447-1-1-1s-1,0.448-1,1v3.268
                                                l-2.83-1.634c-0.478-0.276-1.09-0.113-1.366,0.366c-0.276,0.479-0.112,1.09,0.366,1.366l2.83,1.634l-2.83,1.634
                                                c-0.479,0.276-0.643,0.888-0.366,1.366c0.186,0.321,0.521,0.5,0.867,0.5c0.17,0,0.342-0.043,0.499-0.134l2.83-1.634v3.268
                                                c0,0.552,0.447,1,1,1s1-0.448,1-1v-3.268l2.83,1.634c0.157,0.091,0.329,0.134,0.499,0.134c0.346,0,0.682-0.179,0.867-0.5
                                                c0.276-0.479,0.112-1.09-0.366-1.366l-2.83-1.634l2.83-1.634C11.749,38.136,11.913,37.524,11.637,37.046z"></path>
                                            <path d="M22.637,50.077c-0.277-0.479-0.89-0.642-1.366-0.366l-2.83,1.634v-3.268c0-0.552-0.447-1-1-1s-1,0.448-1,1v3.268
                                                l-2.83-1.634c-0.478-0.276-1.09-0.112-1.366,0.366s-0.112,1.09,0.366,1.366l2.83,1.634l-2.83,1.634
                                                c-0.479,0.276-0.643,0.888-0.366,1.366c0.186,0.321,0.521,0.5,0.867,0.5c0.17,0,0.342-0.043,0.499-0.134l2.83-1.634v3.268
                                                c0,0.552,0.447,1,1,1s1-0.448,1-1v-3.268l2.83,1.634c0.157,0.091,0.329,0.134,0.499,0.134c0.346,0,0.682-0.179,0.867-0.5
                                                c0.276-0.479,0.112-1.09-0.366-1.366l-2.83-1.634l2.83-1.634C22.749,51.167,22.913,50.556,22.637,50.077z"></path>
                                        </g>
                                    </svg>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		
			<section>
				<blockquote class="quote-box">
			      <p class="quotation-mark">
			        “
			      </p>
			      <p class="quote-text">
			     	오늘은 비행하기 최적의 날씨 입니다. 안전한 드론 라이프^^ ❤  
			      </p>
			      <hr>
			      <div class="blog-post-actions">
			        <p class="blog-post-bottom pull-left">
			        KP지수 &nbsp;  
			        </p>
			        <p class="blog-post-bottom">
			          <span class="badge quote-badge">896</span>  
			        </p>
			      </div>
		        </blockquote>
	        </section>
	        
        </div>
    </div>
    
    <div id="pageBtn-wrap">
     <p class="more">
         <button type="button" class="btn btn-default btn-sm center">
             <span class="fa fa-2x fa-fw fa-angle-double-down"></span> 
         </button>
     </p>
    </div>
    수정 테스트를 위한 문구
    <jsp:include page="../common/footer.jsp"></jsp:include>
</body>

</html>
