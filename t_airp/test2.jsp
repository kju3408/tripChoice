<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="../header.jsp" %>
<script src="../js/myscript.js"></script>

<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>항공기 좌석 선택</title>
</head>

<form action="../index.do" onsubmit="return send()">

<div style="text-align: center">
	
<%!
String[] seata = {"0", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K",
		"L", "M", "N",	"O", "P", "Q", "R", "S", "T", "U", "V" ,"W", 
		"X", "Y", "Z"};
String[] seatb = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10"};


%>
${dto.ta_code}
${dto.ta_flightnum}
${dto.ta_pax}
 <%/*
	String ta_code=(String)request.getParameter("ta_code");
	dto=dao.read(ta_code); 
	if(dto==null){
	    out.println("해당 글 없음!!");
	}else{
for(int a=1; a<=dto.getTa_pax()/10; a++) {
	out.println("<br><br>");
	for(int b=0; b<=9; b++) {  
	out.println("<input type='button' value='예약하기' id='" + seata[a]+seatb[b] + "'onclick='seat_reser()''>");
	out.println(seata[a]+seatb[b]);
	}
}
	}
*/
%>

  <input type="button" value="확인" class="btn btn-primary" onclick="send()"/> 