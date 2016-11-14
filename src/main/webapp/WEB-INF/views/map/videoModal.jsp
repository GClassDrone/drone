<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/resources/css/map/videoModal.css" />
<script type="text/javascript" src="/resources/js/map/videoModal.js"></script>
<!-- <script type="text/javascript" src="/resources/js/map/MediaElement.js"></script>  -->



    <!-- The Modal -->
    <div id="myModal" class="modal">
        <!-- Modal content -->
        <div class="modal-content">
            <div class="modal-header">
                <span class="close">×</span>
                <h2>영상제목<small>&nbsp; 2016/10/28 12:42 by <a href="#">PaulYoung</a></small></h2>
            </div>
            <div class="modal-body">
                <div class="container">
                    <div class="col-xs-10 text-left">
                        <br />
                        <div class="embed-responsive embed-responsive-16by9">
                            <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/w2H07DRv2_M?autoplay=0" allowfullscreen=""></iframe>
                        </div>
                        <div style="padding-top:5px; padding-bottom:10px">
                            <a class="btn btn-default btn-sm center" href="#reply"><span class="fa fa-2x fa-fw umbs-o-up -square -plus-square -square fa-comment-o"></span> 0
                            </a>
                            <button type="button" class="btn btn-default btn-sm center">
                                <span class="fa fa-2x fa-fw fa-thumbs-o-up"></span></button>
                            <button type="button" class="btn btn-default btn-sm center">
                                <span class="fa fa-2x fa-fw fa-thumbs-up"></span> 0 </button>
                            <button type="button" class="btn btn-default btn-sm center">
                                <span class="fa fa-2x fa-fw umbs-o-up -square -plus-square -square fa-heart"></span> 0 </button>
                            <button type="button" class="btn btn-default btn-sm center">
                                <span class="fa fa-2x fa-fw umbs-o-up fa-facebook-square"></span></button>
                            <button type="button" class="btn btn-default btn-sm center">
                                <span class="fa fa-2x fa-fw umbs-o-up -square fa-google-plus-square"></span></button>
                            <button type="button" class="btn btn-default btn-sm center">
                                <span class="fa fa-2x fa-fw umbs-o-up -square -plus-square fa-twitter-square"></span></button>
                            <!--                        <button type="button" class="btn btn-default btn-sm center"><span style="font-size: 16px">Share</span>
                            <span class="fa fa-2x fa-fw umbs-o-up -square -plus-square -square -o fa-share-square-o"></span></button> -->
                            <button type="button" class="btn btn-warning btn-sm center" style="width:50px; height:38px">
                                <img src="images/kakaostory.png"></button>
                            <button type="button" class="btn btn-warning btn-sm center" style="width:50px; height:38px">
                                <img src="images/band2.png"></button>
                        </div>
                        <p>Our therapeutic grooming treatments help battle fleas, allergic dermatitis, and other challenging skin conditions.</p>
                    </div>
                </div>
            </div>
            <div class="modal-footer" style="text-align:left; padding-top:10px">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-10">
                            <div id="reply" class="well text-info">
                                <h2>Reply<small>&nbsp; 2시간전 by <a href="#">matthewkim</a></small></h2>
                                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
                                <form role="form">
                                    <div class="form-group">
                                        <label class="control-label" for="inputComments">Leave a comment</label>
                                        <input class="form-control" id="inputComments" placeholder="Enter comment" type="text">
                                    </div>
                                    <button type="submit" class="btn btn-info btn-sm" data-toggle="button">답글달기</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-10">
                            <form role="form">
                                <div class="form-group">
                                    <label for="inputComments">Write reply</label>
                                    <textarea class="form-control" id="inputComments" placeholder="Enter reply"></textarea>
                                </div>
                                <button type="submit" class="btn btn-block btn-warning">댓글올리기</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


<!--  old version before replacing 
<div id="dialog-video">
	<div>
		<h3 id="modal-ttl"></h3>
		<input type="button" id="modal-close" value="닫기">
	</div>
	<div id="youtube-wrap">
	</div>
	<div class="social-byline--share">
		<div class="share-module "
			data-share-location="standard-article-social-primary-btns"> -->
			<!-- 페이스북 
			<a href="#" onclick="window.open('https://www.facebook.com/sharer/sharer.php?u='+encodeURIComponent(location.href),'facebook-share-dialog','width=626,height=436');return false;" title="페이스북 쉐어 버튼">
				<img src="/resources/images/icon/facebook.jpg" width="40" height="40" alt="페이스북 쉐어 버튼" title="페이스북 쉐어 버튼">
			</a>
			<!-- 트위터  
			<a href="#" onclick="window.open('https://twitter.com/share','twitter-share-dialog','width=626,height=436');return false;" title="트위터 쉐어 버튼">
				<img src="/resources/images/icon/twitter.jpg" width="40" height="40" alt="트위터 쉐어 버튼" title="트위터 쉐어 버튼">
			</a>
			<!-- 구글+
			<a href="#" onclick="window.open('https://plus.google.com/share?url='+encodeURIComponent(location.href),'twitter-share-dialog','width=600,height=600');return false;" title="구글+ 쉐어 버튼">
				<img src="/resources/images/icon/google-plus.jpg" width="40" height="40" alt="구글+ 쉐어 버튼" title="구글+ 쉐어 버튼">
			</a>
			<!-- 카카오 스토리  
			<a href="#" onclick="window.open('https://plus.google.com/share?url='+encodeURIComponent(location.href),'twitter-share-dialog','width=600,height=600');return false;" title="구글+ 쉐어 버튼">
				<img src="/resources/images/icon/kakao.jpg" width="40" height="40" alt="구글+ 쉐어 버튼" title="구글+ 쉐어 버튼">
			</a>
			<!-- 밴드  
			<a href="#" onclick="window.open('https://plus.google.com/share?url='+encodeURIComponent(location.href),'twitter-share-dialog','width=600,height=600');return false;"title="구글+ 쉐어 버튼">
				<img src="/resources/images/icon/band.jpg" width="40" height="40" alt="구글+ 쉐어 버튼" title="구글+ 쉐어 버튼">
			</a>
		</div>
		<div>
			조회수<p id="modal-readcnt"></p>
		</div>
	</div>
	<div>
		<p id="modal-ctt"></p>
	</div>
</div> -->

