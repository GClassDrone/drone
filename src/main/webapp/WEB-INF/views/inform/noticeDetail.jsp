<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<style type="text/css">
.center {
	marging : auto;
	padding : auto;
	text-align : center;
	vertical-align : center;
}
</style>
<jsp:include page="../common/include.jsp"></jsp:include>
</head>

<body>

    <jsp:include page="../common/header.jsp"></jsp:include>

    <div class="section">
        <div class="container">
    <!--          <ol class="breadcrumb">
                <li><a href="#">홈</a></li>
                <li><a href="#">드론시장동향</a></li>
                <li class="active">정보상세</li>
            </ol> -->
            <div class="row">
                <div class="col-md-12">
                    <div class="thumbnail">
                    	<div class="caption">
                            <h2>Tittle<small>&nbsp; 2016/10/28 12:42 by <a href="#">matthewkim</a></small></h2>
                           
                            <hr />
                            <span style="font-size: 16px"> Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div id="reply" class="well text-info">
                        <h2>Reply<small>&nbsp; 2시간전 by <a href="#">matthewkim</a></small></h2>
                        <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
                      <!--   <form role="form">
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
            	<div class="col-md-1 center">
            	<i class="material-icons text-right" style="padding-top: 15px; padding-left: 10px; font-size: 36px; color: #8BC34A">tag_faces</i></a>
            	<h5 class="media-heading"><span>matthewkim</span></h5>
            	</div>
                <div class="col-md-11">
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
</body>

</html>
