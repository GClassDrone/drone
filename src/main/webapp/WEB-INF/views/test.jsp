<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/resources/css/main.css" />
<script src="/resources/js/jquery-2.1.4.min.js"></script>
<script src="/resources/js/jquery-ui.min.js"></script>
<link rel="stylesheet" href="/resources/css/test1.css" />
<script type="text/javascript" src="/resources/js/test.js"></script>
<script type="text/javascript" src="/resources/js/test1.js"></script>
<div id="dialog-form" title="영상">
	<div id="site-wrapper">
		<form>
			<header class="content-header standard-article-header">
				<div class="content-header--info">
					<h1 class="content-header--title standard-article--title">영상
						이름</h1>
					<h2 class="content-header--dek">조회수​</h2>
				</div>
			</header>
			<div class="standard-article">
				<div class="standard-article-body--container">
					<div id="youtube-wrap">
						<video id="youtube1">
							<source src="http://www.youtube.com/watch?v=nOEw9iiopwI" type="video/youtube" >
						</video>
					</div>
					<div class="social-byline standard-article-social-byline">
						<div class="social-byline--pub-info">
							<div class="byline ">
								<div class="byline--image">

									<!-- 회원프로필 이동  -->
									<a> <img class="icon img-circle"
										src="/resources/images/profile.jpg" />
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
								<a href="#"
									onclick="
										    window.open(
										      'https://www.facebook.com/sharer/sharer.php?u='+encodeURIComponent(location.href), 
										      'facebook-share-dialog', 
										      'width=626,height=436'); 
										    return false;"
									title="페이스북 쉐어 버튼"> <img
									src="/resources/images/icon/facebook.jpg" width="40"
									height="40" alt="페이스북 쉐어 버튼" title="페이스북 쉐어 버튼">
								</a>

								<!-- 트위터  -->
								<a href="#"
									onclick="
										    window.open(
										      'https://twitter.com/share', 
										      'twitter-share-dialog', 
										      'width=626,height=436'); 
										    return false;"
									title="트위터 쉐어 버튼"> <img
									src="/resources/images/icon/twitter.jpg" width="40" height="40"
									alt="트위터 쉐어 버튼" title="트위터 쉐어 버튼">
								</a>

								<!-- 구글+ -->
								<a href="#"
									onclick="
										    window.open(
										      'https://plus.google.com/share?url='+encodeURIComponent(location.href), 
										      'twitter-share-dialog', 
										      'width=600,height=600'); 
										    return false;"
									title="구글+ 쉐어 버튼"> <img
									src="/resources/images/icon/google-plus.jpg" width="40"
									height="40" alt="구글+ 쉐어 버튼" title="구글+ 쉐어 버튼">
								</a>

								<!-- 카카오 스토리  -->
								<a href="#"
									onclick="
										    window.open(
										      'https://plus.google.com/share?url='+encodeURIComponent(location.href), 
										      'twitter-share-dialog', 
										      'width=600,height=600'); 
										    return false;"
									title="구글+ 쉐어 버튼"> <img
									src="/resources/images/icon/kakao.jpg" width="40" height="40"
									alt="구글+ 쉐어 버튼" title="구글+ 쉐어 버튼">
								</a>

								<!-- 밴드  -->
								<a href="#"
									onclick="
										    window.open(
										      'https://plus.google.com/share?url='+encodeURIComponent(location.href), 
										      'twitter-share-dialog', 
										      'width=600,height=600'); 
										    return false;"
									title="구글+ 쉐어 버튼"> <img
									src="/resources/images/icon/band.jpg" width="40" height="40"
									alt="구글+ 쉐어 버튼" title="구글+ 쉐어 버튼">
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
								<div class="embed--inner"></div>
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
			<div
				class="module module-recommended norewrite standard-article-module-recommended">
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
										<img src="/resources/images/drchase.jpg" width="640"
											height="320" />
									</div>
								</div>
								<div class="module-story--inner">
									<span class="module-story--title link-txt"> Sacha Baron
										Cohen: What I've Learned</span>
								</div>
							</div>
							<!-- 2222222222222222 -->
							<div class="module-story " data-uid="content.10996">

								<div class="module-story--image">
									<div class="module-story--image-inner">
										<img src="/resources/images/drchase.jpg" width="640"
											height="320" />
									</div>
								</div>
								<div class="module-story--inner">
									<span class="module-story--title link-txt"> Sacha
										Learned</span>
								</div>
							</div>

							<!-- 3333333333333333 -->
							<div class="module-story " data-uid="content.10996">

								<div class="module-story--image">
									<div class="module-story--image-inner">
										<img src="/resources/images/drchase.jpg" width="640"
											height="320" />
									</div>
								</div>
								<div class="module-story--inner">
									<span class="module-story--title link-txt"> Sacha Baron
										Cohen: What I've Learned</span>
								</div>
							</div>

							<!-- 444444444444444 -->
							<div class="module-story " data-uid="content.10996">

								<div class="module-story--image">
									<div class="module-story--image-inner">
										<img src="/resources/images/drchase.jpg" width="640"
											height="320" />
									</div>
								</div>
								<div class="module-story--inner">
									<span class="module-story--title link-txt"> Sacha Baron
										Cohen: What I've Learned</span>
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
										<img src="/resources/images/exoticpets.jpg" width="640"
											height="320" />
									</div>
								</div>
								<div class="module-story--inner">
									<span class="module-story--title link-txt"> What I've
										Learned</span>
								</div>
							</div>
							<!-- 666666666 -->
							<div class="module-story " data-uid="content.10996">
								<div class="module-story--image">
									<div class="module-story--image-inner">
										<img src="/resources/images/exoticpets.jpg" width="640"
											height="320" />
									</div>
								</div>
								<div class="module-story--inner">
									<span class="module-story--title link-txt"> Sacha Baron
										Cohen: What I've Learned</span>
								</div>
							</div>

							<!-- 777777777 -->
							<div class="module-story " data-uid="content.10996">
								<div class="module-story--image">
									<div class="module-story--image-inner">
										<img src="/resources/images/exoticpets.jpg" width="640"
											height="320" />
									</div>
								</div>
								<div class="module-story--inner">
									<span class="module-story--title link-txt"> Sacha Baron
										Cohen: What I've Learned</span>
								</div>
							</div>

							<!-- 88888 -->
							<div class="module-story " data-uid="content.10996">
								<div class="module-story--image">
									<div class="module-story--image-inner">
										<img src="/resources/images/exoticpets.jpg" width="640"
											height="320" />
									</div>
								</div>
								<div class="module-story--inner">
									<span class="module-story--title link-txt"> Sacha Baron
										Cohen: What I've Learned</span>
								</div>
							</div>
						</div>

						<a class="next" onclick="plusSlides(1)">&#10095;</a>
					</div>
					<br>
				</div>
			</div>

			<div class="load-more static transporter"
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
