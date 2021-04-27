<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
$(function(){
	$("table,td").css({
		"border":"2px solid black", 
		"border-collapse":"collapse"
	})
})
</script>
</head>
<body>
	<table>
	<tr>
		<td>예약번호</td>
		<td>방번호</td>
		<td>방이름</td>
		<td>연습실이름</td>
		<td>게스트id</td>
		<td>예약일</td>
		<td>예약시간</td>
		<td>호스트id</td>
		<td>현재상태</td>
	</tr>
		<c:forEach var="reservation" items="${reservationlist}">
		<tr>
		 <td>${reservation.resv_no}</td>
		 <td><a href="adminResvDetailByRoom?room_no=${reservation.room_no}">${reservation.room_no}</a></td>
		 <td>${reservation.room_name}</td>
		 <td><a href="adminResvDetailByStudio?studio_no=${reservation.studio_no}">${reservation.studio_name}</a></td>
		 <td><a href="adminGuestDetail?guest_no=${reservation.guest_no}">${reservation.guest_id}</a></td>
		 <td>${reservation.resv_date}</td>
		 <td>${reservation.resv_time}</td>
		 <td><a href="adminHostDetail?host_id=${reservation.host_id}">${reservation.host_id}</a></td>
		 <c:choose>
			<c:when test="${reservation.resv_check==0}">
			 <td>예약</td>
			</c:when>
			<c:when test="${reservation.resv_check==1}">
			 <td>결제완료</td>
			</c:when>
			<c:when test="${reservation.resv_check==2}">
			 <td>사용완료</td>
			</c:when>
			<c:when test="${reservation.resv_check==3}">
			 <td>예약취소</td>
			</c:when>
		 </c:choose>
		</tr>
		</c:forEach>
	</table>
</body>
</html>