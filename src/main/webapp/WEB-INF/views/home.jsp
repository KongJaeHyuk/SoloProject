<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
<title>글 목록 출력창</title>
<!-- bootstrap css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
	<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/subway.css">
<html>
<head>
<title>Home</title>
<style>
.train_info{
	border : 1px solid black;
	margin : 10px;
}
</style>
<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
<script type="text/javascript" src="/subway/resources/js/subway.js"></script>
</head>
<body>
	<header>
		<div>
			<span>
				<h1>1호선 노선 검색</h1>
			</span>	
		</div>
	</header>

<div class="input-group mb-3" id = "subway_search">
  <input type="text" class="form-control" id = "station" value = "서울" placeholder="지역을 입력하세요" aria-label="지역을 입력하세요" aria-describedby="button-addon2">
  <button class="btn btn-outline-primary" type="button" id="btn_search">검색하기</button>
</div>

<div id = "info">
</div>
</body>
</html>
