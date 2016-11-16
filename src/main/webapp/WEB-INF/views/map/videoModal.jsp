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
                <h2></h2>
            </div>
            <div class="modal-body">
                <div class="container">
                    <div class="col-xs-7 text-left">
                        <br />
                        <div id="modal-iframe" class="embed-responsive embed-responsive-16by9">
                        </div>
                        <div style="padding-top:5px; padding-bottom:10px">
                            <button type="button" class="btn btn-warning btn-sm center">
                                <span class="fa fa-2x fa-fw fa-comment-o"></span>0</button>
                            <button type="button" class="btn btn-warning btn-sm center">
                                <span class="fa fa-2x fa-fw fa-thumbs-up"></span> 0 </button>
                            <button type="button" class="btn btn-warning btn-sm center">
                                <span class="fa fa-2x fa-fw umbs-o-up -square -plus-square -square fa-heart"></span> 0 </button>
                            <button type="button" class="btn btn-warning btn-sm center">
                                <span class="fa fa-2x fa-fw umbs-o-up fa-facebook-square"></span></button>
                            <button type="button" class="btn btn-warning btn-sm center">
                                <span class="fa fa-2x fa-fw umbs-o-up -square fa-google-plus-square"></span></button>
                            <button type="button" class="btn btn-warning btn-sm center">
                                <span class="fa fa-2x fa-fw umbs-o-up -square -plus-square fa-twitter-square"></span></button>
                            <!--                        <button type="button" class="btn btn-default btn-sm center"><span style="font-size: 16px">Share</span>
                            <span class="fa fa-2x fa-fw umbs-o-up -square -plus-square -square -o fa-share-square-o"></span></button> -->
                            <button type="button" class="btn btn-warning btn-sm center" style="width:50px; height:38px">
                                <img src="/resources/images/kakaostory.png" style="width:100%; height:auto"></button>
                            <button type="button" class="btn btn-warning btn-sm center" style="width:50px; height:38px">
                                <img src="/resources/images/band2.png" style="width:100%; height:auto"></button>
                        </div>
                        <p id="modalCtt" style="color:#4e342e"></p>
                    </div>
                </div>
            </div>
            <div class="modal-footer" style="text-align:left; padding-top:10px">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-7">
                            <div id="reply" class="well text-info">
                                <h2>Reply<small>&nbsp; 2시간전 by <a href="#" style="color:blue">matthewkim</a></small></h2>
                                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
<!--                                 <form role="form">
                                    <div class="form-group">
                                        <label class="control-label" for="inputComments">Leave a comment</label>
                                        <input class="form-control" id="inputComments" placeholder="Enter comment" type="text">
                                    </div>
                                    <button type="submit" class="btn btn-info btn-sm" data-toggle="button">답글달기</button>
                                </form> -->
                            </div>
                        </div>
                    </div>
                    <div class="row">
		            	<div class="col-sm-1 col-xs-12 center">
		            	<i class="material-icons text-right" style="padding-top: 15px; padding-left: 20px; font-size: 36px; color: #2e7d32">tag_faces</i></a>
		            	<h5 class="media-heading"><span>matthewkim</span></h5>
		            	</div>
		                <div class="col-sm-6 col-xs-12 center">
		                    <form role="form">
		                        <div class="form-group">
		                                    <label for="inputComments"><span style="color:#4e342e">Write reply</span></label>
		                            <textarea rows="6" class="form-control" id="inputComments" placeholder="Enter reply"></textarea>
		                        </div>
		                        <button type="submit" class="btn btn-block btn-warning">댓글올리기</button>
		                    </form>
		                </div>
                    </div>
                </div>
            </div>
        </div>
    </div>




