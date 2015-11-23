<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<!-- 상단 네비게이션 ================================================== -->
	<div class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
			
				<!-- 프로젝트 이름 -->
				<a href="/railway999/views/main/main.jsp" class="navbar-brand">은하철도999</a>
				<button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
					<span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
				</button>
			</div>
			<div class="navbar-collapse collapse" id="navbar-main">			
				<ul class="nav navbar-nav">
					<!-- 첫번째 메뉴 -->
					<li class="dropdown"><a class="dropdown-toggle btn" data-toggle="dropdown" href="#" id="themes">은하철도999<span class="caret"></span></a>
						<ul class="dropdown-menu" aria-labelledby="themes">
							<li><a href="#intro" class="btn">999 소개</a></li>
							<li><a href="#howtouse" class="btn">999 사용법</a></li>
						</ul></li>
						
					<!-- 두번째 메뉴 -->	
					<li><a href="/railway999/views/schedule/addschedule.jsp" class="btn">검색 및 추가</a></li>
					
					<!-- 세번째 메뉴 -->
					<li><a href="http://news.bootswatch.com" class="btn">나의 여행스케줄</a></li>
					
					<!-- 네번째 메뉴 -->
					<li class="dropdown"><a class="dropdown-toggle btn" data-toggle="dropdown" href="#" id="download">게시판 <span class="caret"></span></a>
						<ul class="dropdown-menu" aria-labelledby="time-search">
							<li><a href="/railway999/views/board/qboard.jsp"  class="btn">Q & A</a></li>
							<li><a href="/railway999/views/board/travelboard.jsp" class="btn">지금은 여행중</a></li>
							<li><a href="/railway999/views/board/freeboard.jsp" class="btn">자유게시판</a></li>
						</ul></li>
				</ul>
			<c:choose>
			<c:when test="${empty authUser}">
				<!-- 로그인, 회원가입 -->
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#modalLogin" class="btn" data-toggle="modal">로그인</a></li>
					<li><a href="/railway999/views/member/joinform.jsp" class="btn" >회원가입</a></li>
				</ul>
			</c:when>
			<c:otherwise>
				<!-- 로그아웃, 회원정보수정 -->
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">로그아웃</a></li>
					<li><a href="/railway999/views/member/joinform.jsp">회원정보수정</a></li>
				</ul>
			</c:otherwise>
		</c:choose>
			</div>
		</div>
	</div>
	
<!-- 로그인 팝업 -->
<div id="modalLogin" class="modal fade">
	<div class="modal-dialog"><div class="modal-content">
		<!-- header -->
		<div class="modal-header">
			<!-- 닫기(x) 버튼 -->
			<button type="button" class="close" data-dismiss="modal">×</button>
			<!-- header title -->
			<h4 class="modal-title">로그인</h4>
		</div>
		<!-- body -->
		<form class="form-horizontal">
			<div class="modal-body">
				<div class="form-group"><label for="inputEmail" class="col-lg-2 control-label">ID</label>
					<div class="col-lg-10">
						<input type="text" class="form-control" id="inputEmail" placeholder="Email">
					</div>
				</div>
				<div class="form-group"><label for="inputPassword" class="col-lg-2 control-label">Password</label>
					<div class="col-lg-10">
						<input type="password" class="form-control" id="inputPassword" placeholder="Password">
					</div>
				</div>
				<div class="form-group"><label for="facebook" class="col-lg-2 control-label"></label>
					<div class="col-lg-10">
						<a href="#" class="btn btn-info btn-block">facebook으로 로그인하기</a>
					</div>
				</div>
			</div>
		</form>
		<!-- footer -->
			<div class="modal-footer">
                 <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                 <button type="button" class="btn btn-primary">로그인</button>
            </div>
	</div></div>
</div>
</body>
</html>