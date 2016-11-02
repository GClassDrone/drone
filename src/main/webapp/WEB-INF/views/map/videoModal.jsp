<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="/resources/js/jquery-ui.min.js"></script>
<link rel="stylesheet" href="/resources/css/map/videoModal.css" />
<script type="text/javascript" src="/resources/js/map/videoModal.js"></script>
<script type="text/javascript" src="/resources/js/map/MediaElement.js"></script>
<div id="dialog-form" title="영상">
	<div id="youtube-wrap">
		<video id="youtube1">
			<source src="http://www.youtube.com/watch?v=nOEw9iiopwI" type="video/youtube">
		</video>
	</div>
	<div class="social-byline--share">
		<div class="share-module "
			data-share-location="standard-article-social-primary-btns">
			<!-- 페이스북 -->
			<a href="#" onclick="window.open('https://www.facebook.com/sharer/sharer.php?u='+encodeURIComponent(location.href),'facebook-share-dialog','width=626,height=436');return false;" title="페이스북 쉐어 버튼">
				<img src="/resources/images/icon/facebook.jpg" width="40" height="40" alt="페이스북 쉐어 버튼" title="페이스북 쉐어 버튼">
			</a>
			<!-- 트위터  -->
			<a href="#" onclick="window.open('https://twitter.com/share','twitter-share-dialog','width=626,height=436');return false;" title="트위터 쉐어 버튼">
				<img src="/resources/images/icon/twitter.jpg" width="40" height="40" alt="트위터 쉐어 버튼" title="트위터 쉐어 버튼">
			</a>
			<!-- 구글+ -->
			<a href="#" onclick="window.open('https://plus.google.com/share?url='+encodeURIComponent(location.href),'twitter-share-dialog','width=600,height=600');return false;" title="구글+ 쉐어 버튼">
				<img src="/resources/images/icon/google-plus.jpg" width="40" height="40" alt="구글+ 쉐어 버튼" title="구글+ 쉐어 버튼">
			</a>
			<!-- 카카오 스토리  -->
			<a href="#" onclick="window.open('https://plus.google.com/share?url='+encodeURIComponent(location.href),'twitter-share-dialog','width=600,height=600');return false;" title="구글+ 쉐어 버튼">
				<img src="/resources/images/icon/kakao.jpg" width="40" height="40" alt="구글+ 쉐어 버튼" title="구글+ 쉐어 버튼">
			</a>
			<!-- 밴드  -->
			<a href="#" onclick="window.open('https://plus.google.com/share?url='+encodeURIComponent(location.href),'twitter-share-dialog','width=600,height=600');return false;"title="구글+ 쉐어 버튼">
				<img src="/resources/images/icon/band.jpg" width="40" height="40" alt="구글+ 쉐어 버튼" title="구글+ 쉐어 버튼">
			</a>
		</div>
	</div>
</div>
