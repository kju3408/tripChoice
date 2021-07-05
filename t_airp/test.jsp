<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<script src="../js/myscript.js"></script>

<form action="../index.do" onsubmit="return send()">

<div style="text-align: center">
	
<script>
/*
String[][] seat = { {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K",
	"L", "M", "N",	"O", "P", "Q", "R", "S", "T", "U", "V" ,"W", 
	"X", "Y", "Z"}, 
	{"1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}};
for(int i=0; i<26; i++){
for(int j=0; j<10; j++){
	System.out.printf(seat[0][i]+seat[1][j]);
}
}*/

{
"List": [
	{
		"1": "A",
		"11": "B",
		"21": "C",
		"31": "D",
		"41": "E",
		"51": "F",
		"61": "G",
		"71": "H",
		"81": "I",
		"91": "J",
		"101": "K",
		"111": "L",
		"121": "M",
		"131": "N",
		"141": "O",
		"151": "P",
		"161": "Q",
		"171": "R",
		"181": "S",
		"191": "T",
		"201": "U",
		"211": "V",
		"221": "W",
		"231": "X",
		"241": "Y",
		"251": "Z"
        }
	]
}

$(document).ready(function() {
	
	var seat = 0; // 변수설정은 함수의 바깥에 설정!
	$("#seatbutton").click(function() {
		seat++; // 함수 내 하단에 증가문 설정
		$("#seatbox").append("<table class='seat"+seat+"' style='text-align: center;'><input type='hidden' name='ta_code' value='${ta_code}'><input type='hidden' name='tu_id' value='${sessionScope.s_tu_id}'><tr><th>좌석번호</th><td><input type='text' name='tar_seat' size='10' placeholder='좌석번호'></td></tr><tr><th>여권 이름</th><td><input type='text' name='tar_name' size='30'placeholder='여권이름'></td></tr><tr><th>여권 번호</th><td><input type='text' name='tar_passcode' size='30'placeholder='여권번호'></td></tr></table>")
		document.getElementById("seat").value = seat;
	});

</script>
${dto.ta_code}
${dto.ta_flightnum}
${dto.ta_pax}

<input type='button' value='${dto.ta_pax}' >

<br>

<c:forEach var="a" begin="1" end='${dto.ta_pax}' step="10">
	<ul>
	<span class="seatNum"><c:out value="${a}"/></span>
	<c:forEach var="b" begin="1" end="10">
		<input type="button" value="${b}" id="seatbutton">
	</c:forEach>
	</ul>
</c:forEach>
<div>선택된좌석
    	<div id="seatbox">
    	<!-- 테이블 생성 공간 -->
    	</div>
    </div>
<!-- 
<td id="t_airpinfo_area" style="background: linear-gradient(to top, #3b3d58 0%, #5d607d 100%); color: white;">
        <div class="section_result">
 -->   
          <!-- 여행 패키지 사진
          <div id="thumb_poster" class="thumb_poster">
            <img src="${m_poster }" class="movie_poster">
            <input type="hidden" id="m_poster" name="m_poster" value="${m_poster }">
          </div> -->

		  <!-- 패키지 이름 
          <h3>
            <span id="select_m_name">${m_name }</span>
            <input type="hidden" id="m_name" name="m_name" value="${m_name }">
          </h3>
           -->
           <!-- 
          <dl class="1st_result">
            <dt>
              <span class="space">극장</span>
            </dt>
            <dd>
              <span id="select_space_txt">${cine_name }</span>
              <input type="hidden" id="cine_name" name="cine_name" value="${cine_name }">
            </dd>
 			-->
 			
            <!-- 
            <dt>
              <span class="date">날짜</span>
            </dt>
            <dd>
              <span id="wdate">${s_date }</span>
              <input type="hidden" id="s_date" name="s_date" value="${s_date }">
            </dd>
             -->
			<!-- 
            <dt>
              <span class="people">인원</span>
            </dt>
            <dd>
              <span id="select_people_txt">${auditData }</span>
              <input type="hidden" id="auditType" name="auditType" value="${auditData }">
              <input type="hidden" id="movieseat" name="movieseat" value="">
            </dd>

            <dt>
              <span class="price">금액</span>
            </dt>
            <dd>
              <span id="total">${totalprice }</span>
              <input type="hidden" id="totalprice" name="totalprice" value="${totalprice }">
            </dd>
             
          </dl>
			-->
			<!-- 
          <div id="btn_area">
            <input type="image" class="reserve" src="./img/btn_reserve.PNG" alt="예매하기" onclick="javascript:NextBtn();">
          </div>
           --><!-- 
        </div>
      </td> -->


  <input type="button" value="확인" class="btn btn-primary" onclick="send()"/> 
</div>

</form>

<%@ include file="../footer.jsp" %>