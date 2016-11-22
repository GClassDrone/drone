<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<jsp:include page="../common/include.jsp"></jsp:include>
<script type="text/javascript">
$(document).on("click",function(){
	$(".pull-right").on("click", function(){
		
	});
});
</script>
</head>

<body>
<jsp:include page="../common/header.jsp"></jsp:include>

<div class="container">
        <div class="section">

         </div>
            <!--  second form ================================================== -->
            <section class="col-xs-12">
                <form class="form-horizontal">
                    <fieldset>
                        <legend style="text-align: center; color: white ; font-size: 35px; font-weight: bold">시장동향 기사 작성</legend>
                        <div class="form-group form-group-md">
                            <label class="col-sm-2 control-label" for="inputTittle">제목</label>
                            <div class="col-sm-8">
                                <input class="form-control" type="text" name="ttl" id="inputTittle" placeholder="제목을 입력해 주세요">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="inputNick">닉네임</label>
                            <div class="col-sm-8">
                                <input class="form-control" type="text" id="inputNick" placeholder="${niknm }" readonly>
                                
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="selectSite">분류</label>
                            <div class="col-sm-8">
                                <select class="form-control" id="selectSite">
                                    <option>Choose...</option>
                                    <option>정부공공</option>
                                    <option>드론시장</option>
                                    <option>이벤트</option>
                                    <option>해외시장</option>
                                    <option>기타</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="inputContent" >내용</label>
                            <div class="col-sm-8">
                                <textarea class="form-control" rows="20" name="ctt" id="inputContent" placeholder="내용을 작성해 주세요"></textarea>
                            </div>
                        </div>
                        <!--                         <div class="form-group">
                            <div class="checkbox">
                                <div class="col-sm-10 col-sm-offset-2">
                                    <label>
                                        <input type="checkbox" id="inputAddList">Add me to e-mail blast</label>
                                </div>
                            </div>
                        </div> -->
                        <div class="form-group">
                            <div class="col-sm-8 col-sm-offset-2 form-inline">
                                <label class="sr-only" for="inputName">검색키워드</label>
                                <input class="form-control" type="text" id="inputName" placeholder="# tag">
                                <input class="form-control" type="password" id="inputPassword" placeholder="# tag">
                                <input class="form-control" type="email" id="inputEmail" placeholder="# tag">
                                <input class="form-control" type="email" id="inputEmail" placeholder="# tag">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-6 input-group ">
                                <input type="file" class="form-control" placeholder="Upload media">
                                <span class="input-group-btn">
                            <button class="btn btn-default" type="button">미디어 올리기</button>
                            </span>
                            </div>
                        </div>
                        <div class="col-sm-8 col-sm-offset-2">
                            <input class="btn btn-default pull-right" type="submit" value="submit">
                        </div>
                    </fieldset>
                </form>
            </section>

        </div><br />

<script src="https://apis.google.com/js/platform.js" async defer></script>
<jsp:include page="../common/footer.jsp"></jsp:include>

</body>

</html>
