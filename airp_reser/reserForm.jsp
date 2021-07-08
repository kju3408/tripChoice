<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<script>

	$(document).ready(function() {
		
		var a = 0; // 변수설정은 함수의 바깥에 설정!
		var k = 0;
		var b=  0;
		$("#add").click(function() {
			a++; // 함수 내 하단에 증가문 설정
			$("#adultbox").append("<table class='adult"+a+"' style='text-align: center;'><input type='hidden' name='ta_code' value='${ta_code}'><input type='hidden' name='tu_id' value='${sessionScope.s_tu_id}'><tr><th>좌석번호</th><td><input type='text' name='tar_seat' size='10' placeholder='좌석번호' readonly><input type='button' value='좌석선택' onclick='seatselect()'></td></tr><tr><th>여권 이름</th><td><input type='text' name='tar_name' size='30'placeholder='여권이름'></td></tr><tr><th>여권 번호</th><td><input type='text' name='tar_passcode' size='30'placeholder='여권번호'></td></tr></table>")
			document.getElementById("adult").value = a;
		});
		
		$("#add1").click(function() {
			k++; // 함수 내 하단에 증가문 설정
			$("#kidbox").append("<table class='kid"+k+"' style='text-align: center;'><input type='hidden' name='ta_code' value='${ta_code}'><input type='hidden' name='tu_id' value='${sessionScope.s_tu_id}'><tr><th>좌석번호</th><td><input type='text' name='tar_seat' size='10' placeholder='좌석번호' readonly><input type='button' value='좌석선택' onclick='seatselect()'></td></tr><tr><th>여권 이름</th><td><input type='text' name='tar_name' size='30'placeholder='여권이름'></td></tr><tr><th>여권 번호</th><td><input type='text' name='tar_passcode' size='30'placeholder='여권번호'></td></tr></table>")
			document.getElementById("kid").value = k;
		});
		
		$("#add2").click(function() {
			b++; // 함수 내 하단에 증가문 설정
			$("#babybox").append("<table class='baby"+b+"' style='text-align: center;'><input type='hidden' name='ta_code' value='${ta_code}'><input type='hidden' name='tu_id' value='${sessionScope.s_tu_id}'><tr><th>좌석번호</th><td><input type='text' name='tar_seat' size='10' placeholder='좌석번호' readonly><input type='button' value='좌석선택' onclick='seatselect()'></td></tr><tr><th>여권 이름</th><td><input type='text' name='tar_name' size='30'placeholder='여권이름'></td></tr><tr><th>여권 번호</th><td><input type='text' name='tar_passcode' size='30'placeholder='여권번호'></td></tr></table>")
			document.getElementById("baby").value = b;
		});
		
		$("#remove").click(function() {
			
			$( "table.adult"+a+"" ).remove();
			a--; // 함수 내 상단에 감소문 설정
			if(a<0){
				a=0;
				alert("0 밑으로 내려갈수없습니다.")
			}
			document.getElementById("adult").value = a;
		});
		
		$("#remove1").click(function() {
			
			$( "table.kid"+k+"" ).remove();
			k--; // 함수 내 상단에 감소문 설정
			if(k<0){
				k=0;
				alert("0 밑으로 내려갈수없습니다.")
			}
			document.getElementById("kid").value = k;
		});
		
		$("#remove2").click(function() {
			
			$( "table.baby"+b+"" ).remove();
			b--; // 함수 내 상단에 감소문 설정
			if(b<0){
				b=0;
				alert("0 밑으로 내려갈수없습니다.")
			}
			document.getElementById("baby").value = b;
		});
		
		
	});
	function seatselect() {
		window.open("seat.do?ta_code=${ta_code}", "tar_seat", "width=500, height=800");	
	}


</script>

	<!-- 버튼 -->

	<div style="text-align: center;">어른
		<div class="btnWrap" style="text-align: center;" >
			<button id="add">+</button>
	    	<input type='text' id='adult' value='0' readonly >
			<button id="remove">-</button>
		</div>
	</div>
	
	<div style="text-align: center;">청소년
		<div class="btnWrap" style="text-align: center;" >
			<button id="add1">+</button>
	    	<input type='text' id='kid' value='0' readonly >
			<button id="remove1">-</button>
		</div>
	</div>
	
	<div style="text-align: center;">유아
		<div class="btnWrap" style="text-align: center;" >
			<button id="add2">+</button>
	    	<input type='text' id='baby' value='0' readonly >
			<button id="remove2">-</button>
		</div>
	</div>
	
    <form name='frm' id='frm' method='POST' action='reser.do' onsubmit="return airpreserCheck()" style="text-align: center;">
    
    <div>어른
    	<div id="adultbox">
    	<!-- 테이블 생성 공간 -->
    	</div>
    </div>
    
    <div>청소년
     	<div id="kidbox">
    	<!-- 테이블 생성 공간 -->
    	</div>
    </div>
    
    <div>유아
     	<div id="babybox">
    	<!-- 테이블 생성 공간 -->
    	</div>
    </div>
    
	 <input type='submit'  value='예약하기'>
	</form> 
	
	<script>
	function airpreserCheck() { //로그인 유효성 검사

		//1)여권번호가 M으로 시작하는 8글자인지 체크
	    var tar_passcode=document.getElementById("tar_passcode").value;
	    tar_passcode=tar_passcode.trim();
	    if(!(tar_passcode.length==8 && tar_passcode.charAt(0)=='M')){
	    	alert("여권번호를 M이 포함된 8글자로 입력하세요");
	    	document.getElementById("tar_passcode").focus();
	    	return false;
	    }//if end

		return true;
		alert("예약 성공");
	}//airpreserCheck() end
	</script>

	
		





<%@ include file="../footer.jsp"%>