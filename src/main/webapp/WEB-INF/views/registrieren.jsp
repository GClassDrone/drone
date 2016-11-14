<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
	<!--   Core JS Files   -->
	<script src="resources/js/login/jquery-2.2.4.min.js" type="text/javascript"></script>
	<script src="resources/js/login/bootstrap.min.js" type="text/javascript"></script>
	<script src="resources/js/login/jquery.bootstrap.wizard.js" type="text/javascript"></script>

	<!--  Plugin for the Wizard -->
	<script src="resources/js/login/paper-bootstrap-wizard.js" type="text/javascript"></script>

	<!--  More information about jquery.validate here: http://jqueryvalidation.org/	 -->
	<script src="resources/js/login/jquery.validate.min.js" type="text/javascript"></script>
	
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<link rel="apple-touch-icon" sizes="76x76" href="/resources/images/login/apple-icon.png" />
	<link rel="icon" type="image/png" href="assets/img/favicon.png" />
	<title>Paper Bootstrap Wizard by Creative Tim</title>
	
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

	<!-- CSS Files -->
    <link href="/resources/css/login/bootstrap.min.css" rel="stylesheet" />
	<link href="/resources/css/login/paper-bootstrap-wizard.css" rel="stylesheet" />

	<!-- CSS Just for demo purpose, don't include it in your project -->
	<link href="/resources/css/login/demo.css" rel="stylesheet" />

	<!-- Fonts and Icons -->
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.css" rel="stylesheet">
	<link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
	<link href="/resources/css/login/themify-icons.css" rel="stylesheet">
	<script src="resources/js/login/loc.js"></script>
</head>


<body>
	<div class="image-container set-full-height" style="background-image: url('resources/images/login/paper-1.jpeg')">
	    <!--   Big container   -->
	    <div class="container">
	        <div class="row">
		        <div class="col-sm-8 col-sm-offset-2">

		            <!--      Wizard container        -->
		            <div class="wizard-container">

		                <div class="card wizard-card" data-color="orange" id="wizardProfile">
		                    <form method="POST">
		                    <input type="hidden" name="siteid" value="${siteid }">
		                    <input type="hidden" name="siteno" value="${siteno }">
		                <!--        You can switch " data-color="orange" "  with one of the next bright colors: "blue", "green", "orange", "red", "azure"          -->

		                    	<div class="wizard-header text-center">
		                        	<h3 class="wizard-title">회원 가입</h3>
		                    	</div>

								<div class="wizard-navigation">
									<div class="progress-with-circle">
									     <div class="progress-bar" role="progressbar" aria-valuenow="1" aria-valuemin="1" aria-valuemax="3" style="width: 21%;"></div>
									</div>
									<ul>
			                            <li>
											<a href="#about" data-toggle="tab">
												<div class="icon-circle">
													<i class="ti-user"></i>
												</div>
											</a>
										</li>
			                            <li>
											<a href="#address" data-toggle="tab">
												<div class="icon-circle">
													<i class="ti-map"></i>
												</div>
											</a>
										</li>
			                            <li>
											<a href="#account" data-toggle="tab">
												<div class="icon-circle">
													<i class="ti-settings"></i>
												</div>
											</a>
										</li>
			                        </ul>
								</div>
								
								<!-- 프로필정보 -->
		                        <div class="tab-content">
		                            <div class="tab-pane" id="about">
		                            	<div class="row">
											<h5 class="info-text"> Please tell us more about yourself.</h5>
											<div class="col-sm-4 col-sm-offset-1">
												<div class="picture-container">
													<div class="picture">
														<img src="resources/images/login/default-avatar.jpg" class="picture-src" id="wizardPicturePreview" title="" />
														<input type="file" id="wizard-picture">
													</div>
													<h6>Choose Picture</h6>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="form-group">
													<label>닉네임 <small>(필수)${sideid }</small></label>
													<input name="niknm" type="text" class="form-control" placeholder="닉네임을 적어주세요">
												</div>
												
											</div>
											<div class="col-sm-1">
													 <input type='button' class='btn btn-fill btn-warning btn-wd' name='check' value='중복확인' onclick="idChek()" />
												</div>
											<div class="col-sm-10 col-sm-offset-1">
												<div class="form-group">
													<label>Email <small>(필수)</small></label>
													<input name="email" type="email" class="form-control" placeholder="이메일을 적어주세요">
												</div>
											</div>
										</div>
		                            </div>
		                            
		                           
		                            
		                          <!-- 주소탭 -->
		                            <div class="tab-pane" id="address">
		                                <div class="row">
		                                    <div class="col-sm-12">
		                                        <h5 class="info-text"> 사는 지역은?  </h5>
		                                    </div>
			                                   <div class="col-sm-5">
			                                        <div class="form-group">
			                                            <label>Country</label><br>
			                                            <select id = "sido" name="sido" class="form-control">
			                                                <option value="">선택하세요</option>
				                                            <c:forEach items="${sido}" var="LocDto" >
				                                            	<option value="${LocDto.sido }">${LocDto.sido }</option>
				                                            </c:forEach>
			                                            </select>
			                                            
			                                        </div>
			                                    </div>
			                                    <div class="col-sm-5">
			                                        <div class="form-group">
			                                            <label>Country</label><br>
			                                           <select id="sigungu" name="locno" class="form-control">
			                                                <option value="">선택하세요</option>
			                                            </select>
			                                        </div>
			                                    </div>
		                                </div>
		                            </div>
		                            
		                            <!-- 가입목적 -->
		                            <div class="tab-pane" id="account">
		                                <h5 class="info-text"> 가입하신 목적은? </h5>
		                                <div class="row">
		                                    <div class="col-sm-8 col-sm-offset-2">
		                                        
		                                        <div class="col-sm-4">
		                                            <div class="choice" data-toggle="wizard-radio">
		                                                <input type="radio" name="ppose" value="a">
		                                                <div class="card card-checkboxes card-hover-effect">
		                                                    <i class="ti-paint-roller"></i>
															<p>Design</p>
		                                                </div>
		                                            </div>
		                                        </div>
		                                        
		                                        <div class="col-sm-4">
		                                            <div class="choice" data-toggle="wizard-radio">
		                                                <input type="radio" name="ppose" value="b">
		                                                <div class="card card-checkboxes card-hover-effect">
		                                                    <i class="ti-pencil-alt"></i>
															<p>Code</p>
		                                                </div>
		                                            </div>
		                                        </div>
		                                        
		                                        <div class="col-sm-4">
		                                            <div class="choice" data-toggle="wizard-radio"> 
		                                                <input type="radio" name="ppose" value="c">
		                                                <div class="card card-checkboxes card-hover-effect">
		                                                    <i class="ti-star"></i>
															<p>Develop</p>
		                                                </div>
		                                            </div>
		                                        </div>
		                                        
		                                    </div>
		                                </div>
		                            </div>
		                            
		                        </div>
		                        <div class="wizard-footer">
		                            <div class="pull-right">
		                                <input type='button' class='btn btn-next btn-fill btn-warning btn-wd' name='next' value='Next' />
		                                <button type='submit' class='btn btn-finish btn-fill btn-warning btn-wd'>submit</button>
		                            </div>

		                            <div class="pull-left">
		                                <input type='button' class='btn btn-previous btn-default btn-wd' name='previous' value='Previous' />
		                            </div>
		                            <div class="clearfix"></div>
		                        </div>
		                    </form>
		                </div>
		            </div> <!-- wizard container -->
		        </div>
	    	</div><!-- end row -->
		</div> <!--  big container -->
	   
	</div>

</body>

	

</html>
