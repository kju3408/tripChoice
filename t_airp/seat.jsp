<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	String seatrow[] = {"0", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K",
			"L", "M", "N",	"O", "P", "Q", "R", "S", "T", "U", "V" ,"W", 
			"X", "Y", "Z"};
	request.setAttribute("seatrow", seatrow);

%>
		

<div>
<form action="seatselect.do" onsubmit="return button()">
<c:forEach var="a" items="${seatrow}" begin="1" end='${dto.ta_pax/10}'>
	<ul>
	<span value="${a}" class="seatNum"><c:out value="${a}열"/></span>
	<c:forEach var="b" begin="1" end="10">
		<button type="submit" value="${a}${b}" name="tar_seat"><c:out value="${a}${b}"/></button>
		
	</c:forEach>
	</ul>
</c:forEach>
</form>
</div>

<script>
function button() {
	var tar_seat=document.getElementById("tar_seat").value;
	tar_seat=tar_seat.trim();
	return true;
}


</script>

<div style="text-align: center">
    <a href="javascript:window.close()" >[창닫기]</a>
</div>