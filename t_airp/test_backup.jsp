<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="ssi.jsp" %>
<%@ include file="../header.jsp" %>
<script src="../js/myscript.js"></script>

<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<form action="../index.do" onsubmit="return send()">

<div style="text-align: center">

<%
String[] seata = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K",
		"L", "M", "N",	"O", "P", "Q", "R", "S", "T", "U", "V" ,"W", 
		"X", "Y", "Z"};
String[] seatb = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10"};

for(int a=0; a<=150/10-1; a++) {
	out.println("<br><br>");
	for(int b=0; b<=9; b++) {  
	out.println("<input type='button' value='예약하기' id='" + seata[a]+seatb[b] + "'onclick='seat_reser()''>");
	out.println(seata[a]+seatb[b]);
	}
}


%>
  <input type="button" value="확인" class="btn btn-primary" onclick="send()"/> 
</div>

</form>

<script>
String[] seata = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K",
		"L", "M", "N",	"O", "P", "Q", "R", "S", "T", "U", "V" ,"W", 
		"X", "Y", "Z"};
String[] seatb = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10"};
int cnt = 0;


function send(){
	for(int a=0; a<=150/10-1; a++) {
		for(int b=0; b<=9; b++) {
			String checkID = seata[a]+seatb[b];
			if(document.getElementById("\""+checkID+"\"").checked==true){
				cnt++;
				alert("현재 선택된 좌석수 : " + cnt + "</strong> 좌석")
				return true;
			}else{
				return false;
			}//if end
  		}//for end
	}//for end
}//send() end
</script>
