<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<%
	String seat[] = {"0", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K",
			"L", "M", "N",	"O", "P", "Q", "R", "S", "T", "U", "V" ,"W", 
			"X", "Y", "Z"};
	request.setAttribute("seat", seat);
%>

		

<form action="idCheckProc.do" onsubmit="return blankCheck()">

<div>
<c:forEach var="a" items="${seat}" begin="1" end='${dto.ta_pax/10}'>
	<ul>
	<span class="seatNum"><c:out value="${a}열"/></span>
	<c:forEach var="b" begin="1" end="10">
	
	-----------이부분 작성중------------
	<%/*
	String tar_code=request.getParameter("tar_code").trim();
	int cnt=dao.duplecateSeat(tar_code);
	out.println("입력ID : <strong>" + tar_code + "</strong>"); 
	if(cnt==0){
	    out.println("<p>사용 가능한 아이디입니다</p>");
	    out.println("<a href='javascript:apply(\"" + tar_code + "\")'>[적용]</a>");
	*/%>
		<!-- <script>
			function apply(tar_seat) {
				//alert(id);
				//중복 확인된 id를 부모창(opener)에 적용				
				opener.memfrm.tar_seat.value=tar_seat;
				window.close();
			}//apply() end
		</script> -->
	<%/*
	}else{
	    out.println("<p style='color:red'>해당 아이디는 사용할 수 없습니다!!</p>");
	}//if end
	*/%>
	-----------이부분 작성중------------
	
		<!--<c:if test="${b%2 == 0}"> <input type="button" value="${a}" onclick="seatbutton"> </c:if>-->
		<!-- 짝수일경우 알파벳만 출력 -->
		<!--<c:if test="${b%2 != 0}"> <input type="button" value="${b}" onclick="seatbutton"> </c:if>-->
		<!--  홀수일경우 숫자만 출력 -->
		<!-- <input type="button" value="${a}${b}" onclick="seatbutton"> -->
	</c:forEach>
	</ul>
</c:forEach>
</div>
</form>

<script>

</script>
tar_seat
${dto.ta_code}
${dto.ta_pax}
