<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 제이쿼리 부분  -->

<div id="aside">
	<h2><a href="noticeServlet?command=notice_list_form"><input type="button" value="공지사항"></a></h2>
	<div>
		<p>프로젝트</p>
		<div id="ui_button">
	  		<a href="ProjectServlet?command=project_list_form"><input type="button" value="프로젝트 목록"></a><br/>
	    	<a href="ProjectServlet?command=project_write_form"><input type="button" value="프로젝트 등록"></a>
		</div>
	</div>
	<div >
		<p>사원</p>
		<div>
			<a href="SawonServlet?command=member_list_form"><input type="button" value="사원목록"></a><br/>
			<a href="SawonServlet?command=member_update_form"><input type="button" value="사원수정"></a><br/>
		</div>
	</div>
</div>

