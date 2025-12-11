<%@page import="movie.image.ImageDTO"%>
<%@page import="java.util.List"%>
<%@page import="movie.image.ImageService"%>
<%@page import="movie.detail.DetailDTO"%>
<%@page import="movie.detail.DetailDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
String movieCode = "mc002";

DetailDAO dtDAO = DetailDAO.getInstance();

//String str = dtDAO.selectDetail("mc2").toString();
DetailDTO dtDTO = dtDAO.selectDetail(movieCode);
application.setAttribute("result",dtDTO);

//ImageService 테스트
ImageService is = ImageService.getInstance();
List<ImageDTO> imagelist =is.searchImageList(movieCode);

pageContext.setAttribute("img",imagelist);

%>

${result.code}
${result.name}
${result}
<br><br><br>
--------------------------------------------------
${img}
