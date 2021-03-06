<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SPACESTORE-호스트센터</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(function(){
  $("#image").on("click",function(){
	$(location).attr("href","studioDetail");
  })
});
</script>
<style>
#imageTD{
  margin:0px;
  padding:0px !important;
  text-align:center;
  width:300px;
  height:250px;
}
#image{
  margin:0px;
  padding:0px;
  width:400px;
  height:250px;
  float:left;
  display:block;
}
#imageClick{
  margin:0px;
  padding:0px;
  display:block;
  height:250px;
}
#imgHidden{
  display:none;
}
.studio_approve{
  color:#ac0d0d;
}
tr td{
  border:none;
}
tr td:last-child {
    text-align: center;
	width:400px;
    border:none;
    border-left: 1px solid black;
}
.fstTd{
  padding-top:15px;
  padding-bottom:0px;
}
.midTd{
  padding-top:2px;
  padding-bottom:2px;
}
.finTd{
  padding-top: 2px;
  padding-bottom: 15px;
}
#studioNo{
  text-align: center;
}
</style>
</head>
<body>
  <jsp:include page="../common/hostHeader.jsp"></jsp:include>
  <div id="container">
  <table>
    <c:set var="number" value="1"/>
    <c:forEach var="studio" items="${studiolist}">
    <tr>
      <td id="studioNo" rowspan="5">${studio.studio_no}</td>
      <td rowspan="5" id="imageTD">
        <a id="imageClick" href="javascript:document.getElementById('studiodetail${number}').submit()">
        <c:set var="pPath" value="${pageContext.request.contextPath }" />
        <img id="image" src="${pPath }/imageUpload/${studio.studio_picture}">
        </a>
        <div id="imgHidden">
        <form id="studiodetail${number}" action="studioDetail" method="get">
          <input type="hidden" name="studio_no" value="${studio.studio_no}">
        </form>
      </div>
      </td>
      <td class="fstTd">${studio.studio_name }</td>
    </tr>
    <tr>
      <td class="midTd">방개수 - ${studio.room_count}개</td>
    </tr>
    <tr>
      <td class="midTd">${studio.studio_address}</td>
    </tr>
    <tr>
      <td class="midTd">주변지하철 - ${studio.studio_subway }</td>
    </tr>
    <tr>
      <c:choose>
        <c:when test="${studio.studio_check==0}">
          <td class="finTd">연습실 승인 <span class="studio_approve">대기 중</span></td>
        </c:when>
        <c:when test="${studio.studio_check==1}">
          <td class="finTd">연습실 승인 <span class="studio_approve">완료</span></td>
        </c:when>
      </c:choose>
    </tr>
  <div style="display:none">${number = number + 1}</div>
  </c:forEach>
  </table>
  </div>
</body>
</html>