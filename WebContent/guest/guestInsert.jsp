<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SPACESTORE-Guest-Insert</title>
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>
<div id="container">
<form id="myfrm" action="insert" method="post">
<fieldset>
<legend>회원가입 정보</legend>
<label> 아이디 </label>
<input type="text" name="guest_id"><br>
<label>비밀번호</label>
<input type="password" name="guest_pw"><br>
<label>이름</label>
<input type="text" name="guest_name"><br>
<label>Phone</label>
<input type="text" name="guest_phone"><br>
<label>Email</label>
<input type="text" name="guest_email"><br>
<div id="inputBtn">
<input type="submit" value="입력하기">
</div>
</fieldset>
</form>
</div>
<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>