<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<style>
* {
	padding: 10px;
	margin: 5px;
}

table {
	margin-left: auto;
	margin-right: auto;
}

table, td {
	border: 2px solid black;
	border-collapse: collapse;
}

#container {
	overflow: auto;
	min-height: 400px;
}

#content {
	overflow: auto;
	height: 400px;
}

#footer {
	font-size: 2px;
	padding: 20px;
	position: relation;
	background-color: #D0CECE
}

#header button {
	float: right;
}
#header #center{
clear:none;
}

#logo {
	left: 10px;
	top: 15px;
}

#namewelcome {
	right: 10px;
	top: 10px;
}

#logout, #login {
	right: 10px;
	top: 40px;
}

#hostcenter {
	right: 10px;
	top: 70px;
}

#guestcenter {
	right: 10px;
	top: 70px;
}

#gasan {
	margin: 0px;
	padding: 10px;
	font-size: 40px;
	float: right;
	padding: 10px;
}

#guest_resv {
	margin-top: 30px;
	margin-left: auto;
	margin-right: auto;
	padding: 20px;
}

#myfrm {
	margin-left: auto;
	margin-right: auto;
	padding: 20px;
	width: 400px;
	border: 1px solid #222;
	border-radius: 5px;
}

#hello {
	margin-top: 30px;
	margin-left: auto;
	font-size: 30px;
}

label {
	float: left;
	font-size: 13px;
	width: 80px;
}

#nav ul {
	list-style: none;
}

#nav ul li {
	display: inline-block;
}

#nav a {
	display: block;
	padding: 10px 20px;
	background-color: #ccc;
}

#nav a:link, a:active {
	color: black;
	text-decoration: none;
}

#nav a:hover {
	background-color: #000;
	color: #fff;
}

#header a:link {
	color: black;
	text-decoration: none;
}
</style>

</head>
<body>
	<c:set var="apppath" value="${pageContext.request.contextPath}"></c:set>
	<div id="header">
		<a href="${apppath}/main/searchAll"> <img id="logo"
			src="${apppath}/common/spacestore2.png" alt="로고자리">
		</a>
		<c:choose>

			<c:when test="${host_id!=null}">
				<span id="namewelcome">${host_name}님 환영합니다.</span>
				<span id="logout"><a href="${apppath}/host/hostLogout">로그아웃</a></span>
			</c:when>

			<c:otherwise>
				<span id="login"> <a href="${apppath}/host/hostInsert">회원가입</a>
					<a href="${apppath}/host/hostLogin">로그인</a>
				</span>
			</c:otherwise>
		</c:choose>
		<span id="guestcenter"><a href="${apppath}/guest/main">게스트센터</a></span>
		<span id="hostcenter"><a href="${apppath}/host/hostLogin">호스트센터</a></span>
	</div>
</body>
</html>