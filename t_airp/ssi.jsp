<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- ssi.jsp 공통코드 --%>

<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="net.utility.*"%>

<jsp:useBean id="dao" class="kr.co.tripChoice.t_airp.T_airpDAO" scope="page"></jsp:useBean>
<jsp:useBean id="dto" class="kr.co.tripChoice.t_airp.T_airpDTO" scope="page"></jsp:useBean>

<% request.setCharacterEncoding("UTF-8"); %>