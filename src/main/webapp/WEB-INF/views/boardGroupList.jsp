<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
 
<style type="text/css">
    .bgimage {
        background-image: url('/resources/images/infoboard_bg.jpg');
        background-position: center center;
        background-size: cover;
        height: 320px;
    }
    
    a {
        color: white;
    }
  
  .col-big{
    position: relative;
    min-height: 1px;
    padding-right: 15px;
    padding-left: 15px;
    width:20%;
}

.hovereffect {
  width: 100%;
  height: 100%;
  float: left;
  overflow: hidden;
  position: relative;
  text-align: center;
  cursor: default;
}

.hovereffect .overlay {
  width: 100%;
  height: 100%;
  position: absolute;
  overflow: hidden;
  top: 0;
  left: 0;
  background-color: rgba(75,75,75,0.7);
  -webkit-transition: all 0.4s ease-in-out;
  transition: all 0.4s ease-in-out;
}

.hovereffect:hover .overlay {
  background-color: rgba(48, 152, 157, 0.4);
}

.hovereffect img {
  display: block;
  position: relative;
}

.hovereffect h2 {
  text-transform: uppercase;
  color: #fff;
  text-align: center;
  position: relative;
  font-size: 17px;
  padding: 10px;
  background: rgba(0, 0, 0, 0.6);
  -webkit-transform: translateY(45px);
  -ms-transform: translateY(45px);
  transform: translateY(45px);
  -webkit-transition: all 0.4s ease-in-out;
  transition: all 0.4s ease-in-out;
}

.hovereffect:hover h2 {
  -webkit-transform: translateY(5px);
  -ms-transform: translateY(5px);
  transform: translateY(5px);
  margin:0px;
}

.hovereffect p.info {
  display: inline-block;
  text-decoration: none;
  padding: 7px 14px;
  text-transform: uppercase;
  color: #fff;
  border: 1px solid #fff;
  background-color: transparent;
  opacity: 0;
  filter: alpha(opacity=0);
  -webkit-transform: scale(0);
  -ms-transform: scale(0);
  transform: scale(0);
  -webkit-transition: all 0.4s ease-in-out;
  transition: all 0.4s ease-in-out;
  font-weight: normal;
  margin: 7px;
}

.hovereffect:hover p.info {
  opacity: 1;
  filter: alpha(opacity=100);
  -webkit-transform: scale(1);
  -ms-transform: scale(1);
  transform: scale(1);
}

.hovereffect p.info:hover {
  box-shadow: 0 0 5px #fff;
}


/*-------------------------------*/
/*      Code snippet by          */
/*      @maridlcrmn              */
/*-------------------------------*/


section {
    padding-top: 100px;
    padding-bottom: 100px;
}

.quote {
    color: rgba(0,0,0,.1);
    text-align: center;
    margin-bottom: 30px;
}

/*-------------------------------*/
/*    Carousel Fade Transition   */
/*-------------------------------*/

#fade-quote-carousel.carousel {
  padding-bottom: 60px;
}
#fade-quote-carousel.carousel .carousel-inner .item {
  opacity: 0;
  -webkit-transition-property: opacity;
      -ms-transition-property: opacity;
          transition-property: opacity;
}
#fade-quote-carousel.carousel .carousel-inner .active {
  opacity: 1;
  -webkit-transition-property: opacity;
      -ms-transition-property: opacity;
          transition-property: opacity;
}
#fade-quote-carousel.carousel .carousel-indicators {
  bottom: 10px;
}
#fade-quote-carousel.carousel .carousel-indicators > li {
  background-color: #e84a64;
  border: none;
}
#fade-quote-carousel blockquote {
    text-align: center;
    border: none;
}
#fade-quote-carousel .profile-circle {
    width: 100px;
    height: 100px;
    margin: 0 auto;
    border-radius: 100px;
}
    
</style>
<jsp:include page="common/include.jsp"></jsp:include>
</head>

<body>
    <jsp:include page="common/header.jsp"></jsp:include>
    <header class="bgimage hidden-xs">
    </header>

<div class="container">
        <div class="row">
            <br />
            <ul class="nav nav-tabs pull-right">
                <li><a href="/info">시장동향</a></li>
                <li  class="active"><a href="/boardGroupList">주제별 게시판</a></li>
                <li><a href="/inform/listNotice">공지사항</a></li>
                <li><a href="https://goo.gl/orXmEX" target="_blank">기상정보</a></li>
                <li><a href="http://spaceweather.rra.go.kr/models/kp" target="_blank">지자기수치</a></li>
            </ul>
        </div>
</div>  <br />
 <div class="container">
       <div class="row">
            <div class="col-md-12">
                    <h1 class="text-center"><strong>주제별 게시판 그룹</strong></h1>
                    <p class="text-center">일정 등급 이상의 전문 회원님들이 운영하는 소모임 게시판 그룹 분류 목록입니다.</p>
            </div>
       </div><br />
       
       <div class="row">
            <div class="col-xs-12">
                <div class="hovereffect col-xs-6 col-md-3">
                    <img class="img-responsive" src="/resources/images/bonding.jpg" alt="bonding photo">
		            <div class="overlay">
		               <h2>친목모임</h2>
		               <p class="info">회원들간의 친목과 정보공유를 주 목적으로 개설된 소모임 리스트 그룹<br />
		               <a class="btn btn-warning" href="/bsubj/sublist?bcateno=1">Go</a>
		            </div>
                </div>
                <div class="hovereffect col-xs-6 col-md-3">
                    <img class="img-responsive media-object" src="/resources/images/dronemarket.jpg" alt="dronemarket photo">
		            <div class="overlay">
		               <h2>드론정보</h2>
		               <p class="info">국내외 드론시장과 업계의 동향 또 입문부터 중/고급 하이엔드급 까지의 다양한 제품에 관한 정보 공유 소모임 그룹<br />
		               <a class="btn btn-warning" href="/bsubj/sublist?bcateno=2">Go</a>
		            </div>
                </div>
                <div class="hovereffect col-xs-6 col-md-3">
                    <img class="img-responsive media-object" src="/resources/images/diydrone.jpg" alt="dirdrone photo">
		            <div class="overlay">
		               <h2>엔지니어</h2>
		               <p class="info">최신 액세서리 활용 및 경주용 제품의 자가 제작 등 드론의 광범위한 응용에 필요한 기술정보를 논의하는 소모음 그룹<br />
		               <a class="btn btn-warning" href="/bsubj/sublist?bcateno=3">Go</a>
		            </div>
                </div>
                <div class="hovereffect col-xs-6 col-md-3">
                    <img class="img-responsive media-object" src="/resources/images/flyingmeeting.jpg" alt="flyingmeeting photo">
		            <div class="overlay">
		               <h2>비행모임</h2>
		               <p class="info">드론 보유 회원들 간의 비행정보 공유와 필드에서의 비행 모임을 목적으로 운영되는 소모임 그룹<br />
		               <a class="btn btn-warning" href="/bsubj/sublist?bcateno=4">Go</a>
		            </div>
                </div>
              </div>  
           <div class="col-xs-12">    
                <div class="clearfix"></div> <br />
                <div class="hovereffect col-xs-6 col-md-3">
                    <img class="img-responsive media-object" src="/resources/images/secondmarket.jpg" alt="secondmarket photo">
		            <div class="overlay">
		               <h2>중고거래</h2>
		               <p class="info">회원들이 보유중인 드론의 상호 중고거래를 위한 온라인 중개정보 제공 목적의 소모임 그룹<br />
		               <a class="btn btn-warning" href="/bsubj/sublist?bcateno=5">Go</a>
		            </div>
                </div>
				<div class="hovereffect col-xs-6 col-md-3">
                    <img class="img-responsive media-object" src="/resources/images/auction.jpg" alt="auction photo">
		            <div class="overlay">
		               <h2>공동구매</h2>
		               <p class="info">현장에서 인기있는 드론 모델이나 주변장치 또는 최신 핫아이템들의 공동구매를 위한 소모임 그룹<br />
		               <a class="btn btn-warning" href="/bsubj/sublist?bcateno=6">Go</a>
		            </div>
                </div>
                <div class="hovereffect col-xs-6 col-md-3">
                    <img class="img-responsive media-object" src="/resources/images/sales.jpg" alt="sales photo">
		            <div class="overlay">
		               <h2>드론판매</h2>
		               <p class="info">상업채널로서 제조사나 판매유통회사들의 드론 제품 판매와 홍보 마케팅을 위한 소모임 그룹<br />
		               <a class="btn btn-warning" href="/bsubj/sublist?bcateno=7" disabled>Go</a>
		            </div>
                </div>
                <div class="hovereffect col-xs-6 col-md-3">
                    <img class="img-responsive media-object" src="/resources/images/aerial.jpg" alt="aerial photo">
		            <div class="overlay">
		               <h2>항공촬영</h2>
		               <p class="info">다양한 기관에서 주관하는 항공촬영 이벤트나 개인간 드론영역의 니즈 중개를 목적으로 한 소모임 그룹<br />
		               <a class="btn btn-warning" href="/bsubj/sublist?bcateno=8" disabled>Go</a>
		            </div>
                </div>
         </div>
     </div>
 </div>
 <br />
 <section id="carousel">    				
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
                <div class="quote"><i class="fa fa-quote-left fa-4x" style="color:yellow"></i></div>
				<div class="carousel slide" id="fade-quote-carousel" data-ride="carousel" data-interval="3000">
				  <!-- Carousel indicators -->
	                  <ol class="carousel-indicators">
					    <li data-target="#fade-quote-carousel" data-slide-to="0" class="active"></li>
					    <li data-target="#fade-quote-carousel" data-slide-to="1"></li>
					    <li data-target="#fade-quote-carousel" data-slide-to="2"></li>
					  </ol>
				  <!-- Carousel items -->
				  <div class="carousel-inner">
				    <div class="active item">
				    	<blockquote>
				    		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem, veritatis nulla eum laudantium totam tempore optio doloremque laboriosam quas, quos eaque molestias odio aut eius animi. Impedit temporibus nisi accusamus.</p>
				    	</blockquote>
				    	<div class="col-sm-2 col-sm-offset-5">
				    		<img class="img-circle" src="http://www.reactiongifs.com/r/overbite.gif" style="width:100px; height:100px"></img>
				    	</div>
				    </div>
				    <div class="item">
				    	<blockquote>
				    		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem, veritatis nulla eum laudantium totam tempore optio doloremque laboriosam quas, quos eaque molestias odio aut eius animi. Impedit temporibus nisi accusamus.</p>
				    	</blockquote>
				    	<div class="col-sm-2 col-sm-offset-5 text-center">
				    		<img class="img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/mijustin/128.jpg" style="width:100px; height:100px"></img>
				    	</div>
				    </div>
				    <div class="item">
				    	<blockquote>
				    		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem, veritatis nulla eum laudantium totam tempore optio doloremque laboriosam quas, quos eaque molestias odio aut eius animi. Impedit temporibus nisi accusamus.</p>
				    	</blockquote>
				    	<div class="col-sm-2 col-sm-offset-5 text-center">
				    		<img class="img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/keizgoesboom/128.jpg" style="width:100px; height:100px"></img>
				    	</div>
				    </div>
				  </div>
  

				</div>
			</div>							
		</div>
	</div>
</section>
  	<jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>