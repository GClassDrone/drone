<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>동영상 상세보기</title>

<!-- 페이스북 -->
<link rel="stylesheet" href="//esquireuk.cdnds.net/esquireuk/20161013132019/css/main.css" />
<script src="/resources/js/jquery-1.10.2.min.js"></script>
<script src="/resources/js/jquery-ui.min.js"></script>

<script type="text/javascript">
$(function(){
	var slideIndex = 1;
	showSlides(slideIndex);

	function plusSlides(n) {
	  showSlides(slideIndex += n);
	}
	function currentSlide(n) {
		  showSlides(slideIndex = n);
	}
	

	function showSlides(n) {
	  var i;
	  var slides = document.getElementsByClassName("mySlides");
	  if (n > slides.length) {slideIndex = 1} 
	  if (n < 1) {slideIndex = slides.length}
	  for (i = 0; i < slides.length; i++) {
	      slides[i].style.display = "none"; 
	  }
	  
	  slides[slideIndex-1].style.display = "block"; 
	}
});

</script>

<style type="text/css">
/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
 .prev, .next {
  cursor: pointer;
  position: absolute;
  z-index:10;
  top: 50%;
  width: auto;
  margin-top: -22px;
  padding: 16px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

 .active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}
</style>
<script>
$(function(){
	var form;
	var dialog;
	
	dialog = $("#dialog-form").dialog({
		autoOpen : false,
		height : 900,
		width : 900,
		modal : true,
		close: function(){
			form[0].reset();
		}
	});
	form = dialog.find("form").on("submit",function(event){
		event.preventDefault();
	});
	$( "#create-video" ).button().on( "click", function() {
		dialog.dialog( "open" );
	});
});
</script>
</head>

<body>
	<div>
		<input type ="button" id="create-video" value="검색">
	</div>
	
	<div id="dialog-form" title="영상">
	<div id="site-wrapper" >
	<form>
			<header class="content-header standard-article-header">
				<div class="content-header--info">
					<h1 class="content-header--title standard-article--title">
					영상 이름</h1>
					<h2 class="content-header--dek">조회수​ </h2>
				</div>
			</header>
			<div class="standard-article" >
				<div class="standard-article-body--container">
									<img src="/resources/images/drone1.jpeg" width="1200" height="490"/>
						<div class="social-byline standard-article-social-byline">
							<div class="social-byline--pub-info">
								<div class="byline ">
									<div class="byline--image">
									
									<!-- 회원프로필 이동  -->
										<a>
											<img class="icon img-circle" src="/resources/images/profile.jpg" />
										</a>
									</div>
									
									<div class="byline--info ">
										<div class="byline--author byline--author-block">
											By <span>닉네임</span>
										</div>
									</div>
								</div>
								<div class="byline--date">
									<div class="publish-date">
										<i class="icon icon-clock"></i>
										<time datetime="2016-10-18T17:35:21+0100">10/20, 2016</time>
									</div>
								</div>
							</div>
							<div class="social-byline--share">
								<div class="share-module "
									data-share-location="standard-article-social-primary-btns">
										
										<!-- 페이스북 -->
										 <a href="#" onclick="
										    window.open(
										      'https://www.facebook.com/sharer/sharer.php?u='+encodeURIComponent(location.href), 
										      'facebook-share-dialog', 
										      'width=626,height=436'); 
										    return false;" title="페이스북 쉐어 버튼">
										<img src="/resources/images/facebook.jpg" width="40" height="40" alt="페이스북 쉐어 버튼" title="페이스북 쉐어 버튼">
										</a>
										
										<!-- 트위터  -->
										<a href="#" onclick="
										    window.open(
										      'https://twitter.com/share', 
										      'twitter-share-dialog', 
										      'width=626,height=436'); 
										    return false;" title="트위터 쉐어 버튼">
										<img src="/resources/images/twitter.jpg" width="40" height="40" alt="트위터 쉐어 버튼" title="트위터 쉐어 버튼">
										</a>
										
										<!-- 구글+ -->
										<a href="#" onclick="
										    window.open(
										      'https://plus.google.com/share?url='+encodeURIComponent(location.href), 
										      'twitter-share-dialog', 
										      'width=600,height=600'); 
										    return false;" title="구글+ 쉐어 버튼">
										<img src="/resources/images/google-plus.jpg" width="40" height="40" alt="구글+ 쉐어 버튼" title="구글+ 쉐어 버튼">
										</a>
										
										<!-- 카카오 스토리  -->
										<a href="#" onclick="
										    window.open(
										      'https://plus.google.com/share?url='+encodeURIComponent(location.href), 
										      'twitter-share-dialog', 
										      'width=600,height=600'); 
										    return false;" title="구글+ 쉐어 버튼">
										<img src="/resources/images/kakao.jpg" width="40" height="40" alt="구글+ 쉐어 버튼" title="구글+ 쉐어 버튼">
										</a>
										
										<!-- 밴드  -->
										<a href="#" onclick="
										    window.open(
										      'https://plus.google.com/share?url='+encodeURIComponent(location.href), 
										      'twitter-share-dialog', 
										      'width=600,height=600'); 
										    return false;" title="구글+ 쉐어 버튼">
										<img src="/resources/images/band.jpg" width="40" height="40" alt="구글+ 쉐어 버튼" title="구글+ 쉐어 버튼">
										</a>
								</div>
							</div>
						</div>
				</div>
				
				<div
					class="standard-article-body--container standard-article-body--container-main">
					<div class="standard-article-body--content">
						<div class="standard-article-body--text">
							<p class="body-el-text standard-body-el-text">As the two men
								become increasingly pissed, they both realise the inevitable
								paradox that the game provokes: the better a player does, the
								drunker they get, diminishing their chances of winning. They
								can't see a way out of this conflict &ndash; besides testing
								their tolerance to the limit.</p>
							<div
								class="embed embed--center embed--youtube embed--lazy-iframe">
								<div class="embed--inner">
								</div>
							</div>
							<div class="module module-story-list recirc-standard-primary  "
								data-tracking-id="recirc-standard-primary"
								data-tracking-label="Most Popular ">
								<div class="module-story-list--header">
									<div class="module-story-list--title">Most Popular</div>
								</div>
							</div>
						</div>
						<div class="ad-article-breaker standard-article-body-el-breaker">
							<div class="ad-gpt-breaker-container">
								<div class="ad-gpt-breaker ">
									<div class="ad-article-breaker-text">댓글</div>
									<div class="gpt-tag" id="ad-article-breaker-leaderboard-1"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
			</div>
			<div class="module module-recommended norewrite standard-article-module-recommended">
				<div class="module-label module-label--recommended">
							<div class="module-label--title">다른 영상 보기</div>
				</div>
				
				<div class="module-recommended--stories">
				<div class="slideshow-container">	
				<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
					<div class="mySlides fade">
					    <div class="numbertext">1 / 2</div>	
						<!--111111111111111  -->
						<div class="module-story " data-uid="content.10996">
								<div class="module-story--image">
									<div class="module-story--image-inner">
										<img src="/resources/images/drchase.jpg" width="640" height="320" />
									</div>
								</div>
								<div class="module-story--inner">
									<span class="module-story--title link-txt">
									Sacha Baron Cohen: What I've Learned</span>
								</div>
						</div>
						<!-- 2222222222222222 -->
						<div class="module-story " data-uid="content.10996">
						
								<div class="module-story--image">
									<div class="module-story--image-inner">
										<img src="/resources/images/drchase.jpg" width="640" height="320" />
									</div>
								</div>
								<div class="module-story--inner">
									<span class="module-story--title link-txt">
									Sacha Learned</span>
								</div>
						</div>
						
						<!-- 3333333333333333 -->
						<div class="module-story " data-uid="content.10996">
						
								<div class="module-story--image">
									<div class="module-story--image-inner">
										<img src="/resources/images/drchase.jpg" width="640" height="320" />
									</div>
								</div>
								<div class="module-story--inner">
									<span class="module-story--title link-txt">
									Sacha Baron Cohen: What I've Learned</span>
								</div>
						</div>
						
						<!-- 444444444444444 -->
						<div class="module-story " data-uid="content.10996">
						
								<div class="module-story--image">
									<div class="module-story--image-inner">
										<img src="/resources/images/drchase.jpg" width="640" height="320" />
									</div>
								</div>
								<div class="module-story--inner">
									<span class="module-story--title link-txt">
									Sacha Baron Cohen: What I've Learned</span>
								</div>
						</div>
					</div>
					<!-- 핫클립 2번째  -->
					<div class="mySlides fade">
   						<div class="numbertext">2 / 2</div>
						<!--5555555555  -->
						<div class="module-story " data-uid="content.10996">
								<div class="module-story--image">
									<div class="module-story--image-inner">
										<img src="/resources/images/exoticpets.jpg" width="640" height="320" />
									</div>
								</div>
								<div class="module-story--inner">
									<span class="module-story--title link-txt">
									What I've Learned</span>
								</div>
						</div>
						<!-- 666666666 -->
						<div class="module-story " data-uid="content.10996">
								<div class="module-story--image">
									<div class="module-story--image-inner">
										<img src="/resources/images/exoticpets.jpg" width="640" height="320" />
									</div>
								</div>
								<div class="module-story--inner">
									<span class="module-story--title link-txt">
									Sacha Baron Cohen: What I've Learned</span>
								</div>
						</div>
						
						<!-- 777777777 -->
						<div class="module-story " data-uid="content.10996">
								<div class="module-story--image">
									<div class="module-story--image-inner">
										<img src="/resources/images/exoticpets.jpg" width="640" height="320" />
									</div>
								</div>
								<div class="module-story--inner">
									<span class="module-story--title link-txt">
									Sacha Baron Cohen: What I've Learned</span>
								</div>
						</div>
						
						<!-- 88888 -->
						<div class="module-story " data-uid="content.10996">
								<div class="module-story--image">
									<div class="module-story--image-inner">
										<img src="/resources/images/exoticpets.jpg" width="640" height="320" />
									</div>
								</div>
								<div class="module-story--inner">
									<span class="module-story--title link-txt">
									Sacha Baron Cohen: What I've Learned</span>
								</div>
						</div>
					</div>
					
  					<a class="next" onclick="plusSlides(1)">&#10095;</a>
					</div>
					<br>
				</div>
			</div>
			
				<div
					class="load-more static transporter"
					data-tracking-id="load-more-bar">
					<div class="load-more--icons">
						<i class="icon icon-m icon-arrow-down01 link-icon"></i> <i
							class="icon icon-m icon-arrow-down01 link-icon"></i> <i
							class="icon icon-m icon-loader link-icon"></i>
					</div>
				</div> 
		<div class="amazon-shop-product-modal">
			<div class="product-modal-overlay modal-overlay">
				<div id="modal-product-reviews" class="modal">
					<header class="modal-header">
						<button class="modal-close">
							<i class="icon icon-close01"></i>
						</button>
					</header>
					<div class="modal-content"></div>
				</div>
			</div>
		</div>
	</form>
	</div>
	</div>
</body>
</html>