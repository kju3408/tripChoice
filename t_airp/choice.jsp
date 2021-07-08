<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="ssi.jsp" %>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<form action="ticket.jsp" onsubmit="return send()">

<%
String[] seata = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K",
		"L", "M", "N",	"O", "P", "Q", "R", "S", "T", "U", "V" ,"W", 
		"X", "Y", "Z"};
String[] seatb = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10"};

int cnt = 0;
out.println("<strong>현재 선택된 좌석수 : " + cnt + "</strong> 좌석");

for(int a=0; a<=150/10-1; a++) {
	out.println("<br><br>");
	for(int b=0; b<=9; b++) {
	out.println("<label class='switch'>");
	out.println("<input type='checkbox' name='" + seata[a]+seatb[b] + "' id='" + seata[a]+seatb[b] + "'/>");
	out.println(seata[a]+seatb[b]);
	out.println("</label>");
	}
}

%>
<div style="text-align: center">
  <input type="submit" value="회원가입" class="btn btn-primary"/> 
</div>

</form>

<script>

function send(){
	for(int a=0; a<=150/10-1; a++) {
		for(int b=0; b<=9; b++) {
			char checkID = seata[a]+seatb[b];
			if(document.getElementById("checkID").checked==true){
				cnt++;
				return true;
				
			}else{
				  alert("약관에 동의한 후 회원가입이 가능합니다");

				return false;
			}//if end
  		}//for end
	}//for end
}//send() end
</script>

