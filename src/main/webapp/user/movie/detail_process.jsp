<%@page import="movie.detail.DetailService"%>
<%@page import="movie.detail.DetailDTO"%>
<%@page import="movie.detail.DetailDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
String youtubeURL = "https://www.youtube.com/embed";
String thumImg1 = "https://img.youtube.com/vi";
String thumImg2 = "/mqdefault.jpg";
String movieImgPath = "resources/images/movieImg";

pageContext.setAttribute("youtubeURL",youtubeURL );
pageContext.setAttribute("thumImg1", thumImg1);
pageContext.setAttribute("thumImg2",thumImg2 );
pageContext.setAttribute("movieImgPath",movieImgPath );

String titleName = request.getParameter("name");

DetailService ds = DetailService.getInstance();
DetailDTO dtDTO = ds.searchMovieDetail(titleName);
pageContext.setAttribute("detail", dtDTO);
%>
