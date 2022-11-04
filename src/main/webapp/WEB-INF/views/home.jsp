<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<script type="text/javascript" src="/subway/resources/js/home.js"></script>
</head>
<body>
<div>
<input type = "text" id = "station" value = "서울">
<button type = "button" id = "btn">정보 가져오기</button>
</div>
<div id = "info">
</div>
</body>
</html>
