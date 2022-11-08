<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
<!-- bootstrap css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
	<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/subway.css">
<html>
<head>
<title>지하철 1호선 노선 검색</title>
<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
<script type="text/javascript" src="/subway/resources/js/subway.js"></script>
</head>
<body>
	
	<header>
		<div class = "head_wrap">
			<div>
				<img alt="" id="img_logo" src="/subway/resources/image/subway_logo.png">
			</div>		
				<h1>1호선 노선 검색</h1>
		</div>
	</header>
	
	<article>
		<div class="input-group mb-3" id = "subway_search">
			<input type="text" class="form-control" id = "station" value = "서울" placeholder="지역을 입력하세요" aria-label="지역을 입력하세요" aria-describedby="button-addon2">
			<button class="btn btn-outline-primary" type="button" id="btn_search">검색하기</button>
		</div>
	</article>
	
	<section>
		<!-- 지하철 정보가 들어갈 div영역 -->
		<div id = "info">
		</div>
	</section>
</body>
</html>
