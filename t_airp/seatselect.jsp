<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<body>
  <div style="text-align: center">
    <h3>* 좌석선택 결과 *</h3>
    <!-- opener.frm.tar_seat.value 부분을 제외한 모든 tar_seat는 원래 seatcol -->
<%
	String tar_seat=request.getParameter("tar_seat").trim();
	out.println("선택좌석 : <strong>" + tar_seat + "</strong>"); 
	out.println("<a href='javascript:apply(\"" + tar_seat + "\")'>[적용]</a>");
%>
		<script>
			function apply(tar_seat) {
				//alert(id);
				//중복 확인된 id를 부모창(opener)에 적용				
				opener.frm.tar_seat.value=tar_seat;
				window.close();
			}//apply() end
		</script>
 
    <hr>
    <a href="javascript:history.back()">[다시선택]</a>
    &nbsp;&nbsp;
    <a href="javascript:window.close()">[창닫기]</a>

  </div>
</body>
</html>
