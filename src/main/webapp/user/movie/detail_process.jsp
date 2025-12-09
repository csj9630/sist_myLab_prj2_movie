<%@page import="movie.detail.DetailDTO"%>
<%@page import="movie.detail.DetailDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
DetailDAO dtDAO = DetailDAO.getInstance();

//String str = dtDAO.selectDetail("mc2").toString();
DetailDTO dtDTO = dtDAO.selectDetail("mc2");
//application.setAttribute("result", str);
//out.print(dtDTO);
application.setAttribute("result",dtDTO);

%>

${result.code}
${result.name}
${result}