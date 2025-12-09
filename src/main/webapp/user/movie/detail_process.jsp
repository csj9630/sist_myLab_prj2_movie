<%@page import="movie.detail.DetailDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
DetailDAO dtDAO = DetailDAO.getInstance();

String str = dtDAO.selectDetail("mc1").toString();
application.setAttribute("result", str);
%>

${result}